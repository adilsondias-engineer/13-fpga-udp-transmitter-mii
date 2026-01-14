----------------------------------------------------------------------------------
-- BBO UDP Formatter (with 4-Point FPGA Latency Timestamps)
-- Converts BBO updates to UDP payload format and writes nibbles to UDP TX
--
-- Packet format (binary, big-endian / network byte order):
-- - Symbol (8 bytes, ASCII space-padded)
-- - BID Price (4 bytes, unsigned 32-bit, big-endian)
-- - BID Shares (4 bytes, unsigned 32-bit, big-endian)
-- - ASK Price (4 bytes, unsigned 32-bit, big-endian)
-- - ASK Shares (4 bytes, unsigned 32-bit, big-endian)
-- - Spread (4 bytes, unsigned 32-bit, big-endian)
-- - T1: ITCH parse start timestamp (4 bytes, 25 MHz RX domain, big-endian)
-- - T2: BBO ready timestamp (4 bytes, 25 MHz RX domain, big-endian)
-- - T3: Formatter start timestamp (4 bytes, 100 MHz TX domain, big-endian)
-- - T4: UDP TX start timestamp (4 bytes, 100 MHz TX domain, big-endian)
-- Total: 44 bytes minimum, padded to 256 bytes to match eth_udp_send MIN_DATA_BYTES
--
-- Latency Calculation:
--   Latency RX = (T2 - T1) * 40 ns  (25 MHz domain, ITCH parse + order book)
--   Latency TX = (T4 - T3) * 10 ns  (100 MHz domain, CDC + formatter + TX)
--   Total FPGA Latency = Latency RX + Latency TX
--
-- Nibble Order: Low nibble first, then high nibble (within each byte)
-- Byte Order: Byte 0 first, Byte 255 last (network byte order)
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.order_book_pkg.all;

entity bbo_udp_formatter is
    Port (
        clk : in STD_LOGIC;
        rst : in STD_LOGIC;

        -- BBO input (from multi_symbol_order_book, synchronized to 100 MHz)
        bbo : in bbo_t;
        bbo_update : in STD_LOGIC;  -- Pulse when BBO changes
        bbo_symbol : in STD_LOGIC_VECTOR(63 downto 0);  -- Symbol name

        -- 4-point timestamp inputs for FPGA latency measurement
        ts_t1 : in STD_LOGIC_VECTOR(31 downto 0);  -- T1: ITCH parse start (25 MHz RX)
        ts_t2 : in STD_LOGIC_VECTOR(31 downto 0);  -- T2: BBO ready (25 MHz RX)
        tx_cycle_counter : in STD_LOGIC_VECTOR(31 downto 0);  -- 100 MHz TX counter

        -- UDP TX FIFO interface (nibble write)
        wr_en : out STD_LOGIC;
        wr_d : out STD_LOGIC_VECTOR(3 downto 0);
        wr_busy : in STD_LOGIC;  -- When '1', FIFO is full or module is busy

        -- Status
        packets_sent : out STD_LOGIC_VECTOR(31 downto 0);

        -- Latency outputs (captured timestamps for latency_calculator)
        ts_t3_out : out STD_LOGIC_VECTOR(31 downto 0);  -- T3 captured at formatter start
        ts_t4_out : out STD_LOGIC_VECTOR(31 downto 0);  -- T4 captured at TX start
        ts_valid_out : out STD_LOGIC  -- Pulse when T3/T4 are valid
    );
end bbo_udp_formatter;

architecture Behavioral of bbo_udp_formatter is

    -- Packet data (44 bytes of actual data, pad to 256 bytes)
    constant DATA_BYTES : integer := 256;
    constant TOTAL_NIBBLES : integer := 2 * DATA_BYTES;  -- 512 nibbles

    -- Packet buffer organized for big-endian output
    -- Each 32-bit field stored with MSB at highest byte address
    type packet_bytes_t is array(0 to DATA_BYTES-1) of std_logic_vector(7 downto 0);
    signal packet_bytes : packet_bytes_t := (others => (others => '0'));

    -- State machine
    type state_type is (IDLE, PREPARE, CALC_NIBBLE, WRITE_NIBBLE, DONE);
    signal state : state_type := IDLE;

    -- Nibble write counter (counts UP: 0 to 511)
    signal wr_i : integer range 0 to TOTAL_NIBBLES := 0;
    signal packet_counter : unsigned(31 downto 0) := (others => '0');

    -- Pre-registered nibble to improve timing (pipelined)
    signal nibble_to_write : std_logic_vector(3 downto 0) := (others => '0');

    -- Latched timestamps
    signal t1_latched : std_logic_vector(31 downto 0) := (others => '0');
    signal t2_latched : std_logic_vector(31 downto 0) := (others => '0');
    signal t3_latched : std_logic_vector(31 downto 0) := (others => '0');
    signal t4_latched : std_logic_vector(31 downto 0) := (others => '0');

begin

    packets_sent <= std_logic_vector(packet_counter);
    ts_t3_out <= t3_latched;
    ts_t4_out <= t4_latched;

    -- State machine to format BBO and write to UDP FIFO
    process(clk)
        variable byte_index : integer;
        variable is_low_nibble : boolean;
    begin
        if rising_edge(clk) then
            if rst = '1' then
                state <= IDLE;
                wr_en <= '0';
                wr_d <= (others => '0');
                wr_i <= 0;
                packet_counter <= (others => '0');
                packet_bytes <= (others => (others => '0'));
                nibble_to_write <= (others => '0');
                t1_latched <= (others => '0');
                t2_latched <= (others => '0');
                t3_latched <= (others => '0');
                t4_latched <= (others => '0');
                ts_valid_out <= '0';

            else
                -- Default: no write, no timestamp valid
                wr_en <= '0';
                ts_valid_out <= '0';

                case state is
                    when IDLE =>
                        -- Wait for BBO update
                        if bbo_update = '1' and bbo.valid = '1' then
                            -- Capture T3: Formatter start time (100 MHz domain)
                            t3_latched <= tx_cycle_counter;
                            -- Latch T1 and T2 from inputs
                            t1_latched <= ts_t1;
                            t2_latched <= ts_t2;
                            state <= PREPARE;
                        end if;

                    when PREPARE =>
                        -- Pack BBO data into byte array (big-endian / network byte order)
                        -- Symbol (8 bytes) - bytes 0-7, ASCII (no byte swap needed)
                        packet_bytes(0) <= bbo_symbol(63 downto 56);  -- First char
                        packet_bytes(1) <= bbo_symbol(55 downto 48);
                        packet_bytes(2) <= bbo_symbol(47 downto 40);
                        packet_bytes(3) <= bbo_symbol(39 downto 32);
                        packet_bytes(4) <= bbo_symbol(31 downto 24);
                        packet_bytes(5) <= bbo_symbol(23 downto 16);
                        packet_bytes(6) <= bbo_symbol(15 downto 8);
                        packet_bytes(7) <= bbo_symbol(7 downto 0);    -- Last char

                        -- BID Price (4 bytes) - bytes 8-11, big-endian
                        packet_bytes(8)  <= bbo.bid_price(31 downto 24);  -- MSB
                        packet_bytes(9)  <= bbo.bid_price(23 downto 16);
                        packet_bytes(10) <= bbo.bid_price(15 downto 8);
                        packet_bytes(11) <= bbo.bid_price(7 downto 0);   -- LSB

                        -- BID Shares (4 bytes) - bytes 12-15, big-endian
                        packet_bytes(12) <= bbo.bid_shares(31 downto 24);
                        packet_bytes(13) <= bbo.bid_shares(23 downto 16);
                        packet_bytes(14) <= bbo.bid_shares(15 downto 8);
                        packet_bytes(15) <= bbo.bid_shares(7 downto 0);

                        -- ASK Price (4 bytes) - bytes 16-19, big-endian
                        packet_bytes(16) <= bbo.ask_price(31 downto 24);
                        packet_bytes(17) <= bbo.ask_price(23 downto 16);
                        packet_bytes(18) <= bbo.ask_price(15 downto 8);
                        packet_bytes(19) <= bbo.ask_price(7 downto 0);

                        -- ASK Shares (4 bytes) - bytes 20-23, big-endian
                        packet_bytes(20) <= bbo.ask_shares(31 downto 24);
                        packet_bytes(21) <= bbo.ask_shares(23 downto 16);
                        packet_bytes(22) <= bbo.ask_shares(15 downto 8);
                        packet_bytes(23) <= bbo.ask_shares(7 downto 0);

                        -- Spread (4 bytes) - bytes 24-27, big-endian
                        packet_bytes(24) <= bbo.spread(31 downto 24);
                        packet_bytes(25) <= bbo.spread(23 downto 16);
                        packet_bytes(26) <= bbo.spread(15 downto 8);
                        packet_bytes(27) <= bbo.spread(7 downto 0);

                        -- T1: ITCH parse start timestamp (4 bytes) - bytes 28-31, big-endian
                        packet_bytes(28) <= t1_latched(31 downto 24);
                        packet_bytes(29) <= t1_latched(23 downto 16);
                        packet_bytes(30) <= t1_latched(15 downto 8);
                        packet_bytes(31) <= t1_latched(7 downto 0);

                        -- T2: BBO ready timestamp (4 bytes) - bytes 32-35, big-endian
                        packet_bytes(32) <= t2_latched(31 downto 24);
                        packet_bytes(33) <= t2_latched(23 downto 16);
                        packet_bytes(34) <= t2_latched(15 downto 8);
                        packet_bytes(35) <= t2_latched(7 downto 0);

                        -- T3: Formatter start timestamp (4 bytes) - bytes 36-39, big-endian
                        packet_bytes(36) <= t3_latched(31 downto 24);
                        packet_bytes(37) <= t3_latched(23 downto 16);
                        packet_bytes(38) <= t3_latched(15 downto 8);
                        packet_bytes(39) <= t3_latched(7 downto 0);

                        -- T4: UDP TX start timestamp (4 bytes) - bytes 40-43, big-endian
                        -- Capture T4 NOW as we're about to start TX
                        t4_latched <= tx_cycle_counter;
                        packet_bytes(40) <= tx_cycle_counter(31 downto 24);
                        packet_bytes(41) <= tx_cycle_counter(23 downto 16);
                        packet_bytes(42) <= tx_cycle_counter(15 downto 8);
                        packet_bytes(43) <= tx_cycle_counter(7 downto 0);

                        -- Padding (bytes 44-255) - already initialized to zero

                        wr_i <= 0;  -- Start from first nibble
                        state <= CALC_NIBBLE;

                    when CALC_NIBBLE =>
                        -- Pipeline stage 1: Calculate nibble index and extract to register
                        -- Nibble order: low nibble first (even wr_i), then high nibble (odd wr_i)
                        -- This matches eth_udp_send expectation

                        if wr_i < TOTAL_NIBBLES then
                            -- Calculate byte index and nibble position
                            byte_index := wr_i / 2;
                            is_low_nibble := (wr_i mod 2) = 0;

                            -- Extract nibble (low nibble for even wr_i, high for odd)
                            if is_low_nibble then
                                nibble_to_write <= packet_bytes(byte_index)(3 downto 0);  -- Low nibble
                            else
                                nibble_to_write <= packet_bytes(byte_index)(7 downto 4);  -- High nibble
                            end if;

                            state <= WRITE_NIBBLE;
                        else
                            -- All nibbles written
                            state <= DONE;
                        end if;

                    when WRITE_NIBBLE =>
                        -- Pipeline stage 2: Write pre-registered nibble if FIFO not busy
                        if wr_busy = '0' then
                            wr_d <= nibble_to_write;
                            wr_en <= '1';
                            wr_i <= wr_i + 1;  -- Count UP
                            state <= CALC_NIBBLE;  -- Calculate next nibble
                        end if;

                    when DONE =>
                        packet_counter <= packet_counter + 1;
                        wr_i <= 0;
                        -- Signal that T3/T4 timestamps are valid for latency calculation
                        ts_valid_out <= '1';
                        state <= IDLE;

                end case;
            end if;
        end if;
    end process;

end Behavioral;
