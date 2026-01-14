----------------------------------------------------------------------------------
-- Latency Calculator for Project 13 (Arty A7)
-- Computes FPGA latency from 4-point timestamps and tracks min/max/last
--
-- Timestamps are 25 MHz cycle counts (40 ns per cycle):
--   T1: ITCH parse start (25 MHz RGMII RX domain)
--   T2: BBO update ready (25 MHz RX domain, after order book processing)
--   T3: BBO formatter start (100 MHz TX domain, after CDC)
--   T4: UDP TX start (100 MHz TX domain)
--
-- For P13, we simplify to T1-T2 in 25 MHz and T3-T4 in 100 MHz
-- Latency = (T2 - T1) * 40 + (T4 - T3) * 10 in nanoseconds
--
-- Clock Domain: 100 MHz system clock
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity latency_calculator is
    Generic (
        RX_CLK_PERIOD_NS : integer := 40;  -- 25 MHz = 40 ns per cycle
        TX_CLK_PERIOD_NS : integer := 10   -- 100 MHz = 10 ns per cycle
    );
    Port (
        clk            : in  STD_LOGIC;
        rst            : in  STD_LOGIC;

        -- Timestamp inputs (valid with update pulse)
        ts_valid       : in  STD_LOGIC;
        ts_t1          : in  STD_LOGIC_VECTOR(31 downto 0);  -- RX domain counter at ITCH start
        ts_t2          : in  STD_LOGIC_VECTOR(31 downto 0);  -- RX domain counter at BBO ready
        ts_t3          : in  STD_LOGIC_VECTOR(31 downto 0);  -- TX domain counter at formatter start
        ts_t4          : in  STD_LOGIC_VECTOR(31 downto 0);  -- TX domain counter at UDP TX start

        -- Reset statistics
        stats_reset    : in  STD_LOGIC;

        -- Latency outputs (in nanoseconds)
        last_latency_ns: out STD_LOGIC_VECTOR(31 downto 0);
        max_latency_ns : out STD_LOGIC_VECTOR(31 downto 0);
        min_latency_ns : out STD_LOGIC_VECTOR(31 downto 0);

        -- Last timestamps (for register readback)
        last_rx_ts     : out STD_LOGIC_VECTOR(31 downto 0);  -- T1
        last_tx_ts     : out STD_LOGIC_VECTOR(31 downto 0)   -- T4
    );
end latency_calculator;

architecture Behavioral of latency_calculator is

    -- Internal registers
    signal last_latency_reg : unsigned(31 downto 0) := (others => '0');
    signal max_latency_reg  : unsigned(31 downto 0) := (others => '0');
    signal min_latency_reg  : unsigned(31 downto 0) := (others => '1');  -- Start at max
    signal last_rx_ts_reg   : STD_LOGIC_VECTOR(31 downto 0) := (others => '0');
    signal last_tx_ts_reg   : STD_LOGIC_VECTOR(31 downto 0) := (others => '0');

    -- Calculation pipeline
    signal calc_valid_p1    : STD_LOGIC := '0';
    signal latency_rx_p1    : unsigned(31 downto 0) := (others => '0');  -- (T2 - T1) in RX cycles
    signal latency_tx_p1    : unsigned(31 downto 0) := (others => '0');  -- (T4 - T3) in TX cycles
    signal t1_latched       : STD_LOGIC_VECTOR(31 downto 0) := (others => '0');
    signal t4_latched       : STD_LOGIC_VECTOR(31 downto 0) := (others => '0');

    signal calc_valid_p2    : STD_LOGIC := '0';
    signal total_latency_p2 : unsigned(31 downto 0) := (others => '0');
    signal t1_latched_p2    : STD_LOGIC_VECTOR(31 downto 0) := (others => '0');
    signal t4_latched_p2    : STD_LOGIC_VECTOR(31 downto 0) := (others => '0');

begin

    -- Output assignments
    last_latency_ns <= std_logic_vector(last_latency_reg);
    max_latency_ns  <= std_logic_vector(max_latency_reg);
    min_latency_ns  <= std_logic_vector(min_latency_reg);
    last_rx_ts      <= last_rx_ts_reg;
    last_tx_ts      <= last_tx_ts_reg;

    -- Pipeline process
    process(clk)
        variable delta_rx   : unsigned(31 downto 0);
        variable delta_tx   : unsigned(31 downto 0);
        variable rx_ns      : unsigned(31 downto 0);
        variable tx_ns      : unsigned(31 downto 0);
        variable total_ns   : unsigned(31 downto 0);
    begin
        if rising_edge(clk) then
            if rst = '1' then
                calc_valid_p1 <= '0';
                calc_valid_p2 <= '0';
                latency_rx_p1 <= (others => '0');
                latency_tx_p1 <= (others => '0');
                total_latency_p2 <= (others => '0');
                last_latency_reg <= (others => '0');
                max_latency_reg <= (others => '0');
                min_latency_reg <= (others => '1');
                last_rx_ts_reg <= (others => '0');
                last_tx_ts_reg <= (others => '0');
                t1_latched <= (others => '0');
                t4_latched <= (others => '0');
                t1_latched_p2 <= (others => '0');
                t4_latched_p2 <= (others => '0');
            else
                -- Statistics reset
                if stats_reset = '1' then
                    max_latency_reg <= (others => '0');
                    min_latency_reg <= (others => '1');
                end if;

                -- Pipeline stage 1: Calculate deltas (handle wrap-around)
                calc_valid_p1 <= ts_valid;
                if ts_valid = '1' then
                    -- Latency RX = T2 - T1 (ITCH parse + order book time in 25 MHz domain)
                    delta_rx := unsigned(ts_t2) - unsigned(ts_t1);
                    latency_rx_p1 <= delta_rx;

                    -- Latency TX = T4 - T3 (CDC + formatter + TX time in 100 MHz domain)
                    delta_tx := unsigned(ts_t4) - unsigned(ts_t3);
                    latency_tx_p1 <= delta_tx;

                    -- Latch timestamps for register output
                    t1_latched <= ts_t1;
                    t4_latched <= ts_t4;
                end if;

                -- Pipeline stage 2: Convert to nanoseconds and sum
                calc_valid_p2 <= calc_valid_p1;
                if calc_valid_p1 = '1' then
                    -- RX latency: cycles * 40 ns (25 MHz)
                    -- Multiply by 40 = multiply by 8 * 5 = (shift left 3) * 5
                    -- Or simpler: * 32 + * 8 = (sll 5) + (sll 3)
                    rx_ns := (latency_rx_p1 sll 5) + (latency_rx_p1 sll 3);

                    -- TX latency: cycles * 10 ns (100 MHz)
                    -- Multiply by 10 = multiply by 8 + 2 = (sll 3) + (sll 1)
                    tx_ns := (latency_tx_p1 sll 3) + (latency_tx_p1 sll 1);

                    -- Total latency in nanoseconds
                    total_ns := rx_ns + tx_ns;
                    total_latency_p2 <= total_ns;
                    t1_latched_p2 <= t1_latched;
                    t4_latched_p2 <= t4_latched;
                end if;

                -- Pipeline stage 3: Update statistics
                if calc_valid_p2 = '1' then
                    -- Update last latency
                    last_latency_reg <= total_latency_p2;
                    last_rx_ts_reg <= t1_latched_p2;
                    last_tx_ts_reg <= t4_latched_p2;

                    -- Update max (ignore obviously invalid values > 1 second)
                    if total_latency_p2 > max_latency_reg and total_latency_p2 < 1_000_000_000 then
                        max_latency_reg <= total_latency_p2;
                    end if;

                    -- Update min (ignore zero values)
                    if total_latency_p2 < min_latency_reg and total_latency_p2 > 0 then
                        min_latency_reg <= total_latency_p2;
                    end if;
                end if;
            end if;
        end if;
    end process;

end Behavioral;
