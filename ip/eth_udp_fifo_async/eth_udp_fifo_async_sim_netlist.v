// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Sun Jan  4 10:25:45 2026
// Host        : Saturn running 64-bit Ubuntu 25.10
// Command     : write_verilog -force -mode funcsim
//               /work/projects/fpga-trading-systems/13-udp-trasmitter-mii/ip/eth_udp_fifo_async/eth_udp_fifo_async_sim_netlist.v
// Design      : eth_udp_fifo_async
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "eth_udp_fifo_async,fifo_generator_v13_2_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_14,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module eth_udp_fifo_async
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty,
    rd_data_count,
    wr_rst_busy,
    rd_rst_busy);
  input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_mode = "slave write_clk" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_mode = "slave read_clk" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) (* x_interface_mode = "slave FIFO_WRITE" *) input [3:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) (* x_interface_mode = "slave FIFO_READ" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [3:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output [11:0]rd_data_count;
  output wr_rst_busy;
  output rd_rst_busy;

  wire [3:0]din;
  wire [3:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire [11:0]rd_data_count;
  wire rd_en;
  wire rd_rst_busy;
  wire rst;
  wire wr_clk;
  wire wr_en;
  wire wr_rst_busy;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [11:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [11:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "12" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "4" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "4" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_FULL_FLAGS_RST_VAL = "1" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "1" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "2" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "4kx4" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "4093" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "4092" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "12" *) 
  (* C_RD_DEPTH = "4096" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "12" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "12" *) 
  (* C_WR_DEPTH = "4096" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "12" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  eth_udp_fifo_async_fifo_generator_v13_2_14 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[11:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(rd_data_count),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(rd_rst_busy),
        .rst(rst),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[11:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "12" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "soft" *) (* xpm_cdc = "GRAY" *) 
module eth_udp_fifo_async_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [11:0]src_in_bin;
  input dest_clk;
  output [11:0]dest_out_bin;

  wire [11:0]async_path;
  wire [10:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [11:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [11:0]\dest_graysync_ff[1] ;
  wire [11:0]dest_out_bin;
  wire [10:0]gray_enc;
  wire src_clk;
  wire [11:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[10]),
        .Q(\dest_graysync_ff[0] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[11]),
        .Q(\dest_graysync_ff[0] [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [10]),
        .Q(\dest_graysync_ff[1] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [11]),
        .Q(\dest_graysync_ff[1] [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(binval[1]),
        .O(binval[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[10]_i_1 
       (.I0(\dest_graysync_ff[1] [10]),
        .I1(\dest_graysync_ff[1] [11]),
        .O(binval[10]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [5]),
        .I3(binval[6]),
        .I4(\dest_graysync_ff[1] [4]),
        .I5(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(binval[6]),
        .I3(\dest_graysync_ff[1] [5]),
        .I4(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(binval[6]),
        .I3(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(binval[6]),
        .I2(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(binval[6]),
        .O(binval[5]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [8]),
        .I2(\dest_graysync_ff[1] [10]),
        .I3(\dest_graysync_ff[1] [11]),
        .I4(\dest_graysync_ff[1] [9]),
        .I5(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[7]_i_1 
       (.I0(\dest_graysync_ff[1] [7]),
        .I1(\dest_graysync_ff[1] [9]),
        .I2(\dest_graysync_ff[1] [11]),
        .I3(\dest_graysync_ff[1] [10]),
        .I4(\dest_graysync_ff[1] [8]),
        .O(binval[7]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[8]_i_1 
       (.I0(\dest_graysync_ff[1] [8]),
        .I1(\dest_graysync_ff[1] [10]),
        .I2(\dest_graysync_ff[1] [11]),
        .I3(\dest_graysync_ff[1] [9]),
        .O(binval[8]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[9]_i_1 
       (.I0(\dest_graysync_ff[1] [9]),
        .I1(\dest_graysync_ff[1] [11]),
        .I2(\dest_graysync_ff[1] [10]),
        .O(binval[9]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[10]),
        .Q(dest_out_bin[10]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [11]),
        .Q(dest_out_bin[11]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[8]),
        .Q(dest_out_bin[8]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[9]),
        .Q(dest_out_bin[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[10]_i_1 
       (.I0(src_in_bin[11]),
        .I1(src_in_bin[10]),
        .O(gray_enc[10]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[9]_i_1 
       (.I0(src_in_bin[10]),
        .I1(src_in_bin[9]),
        .O(gray_enc[9]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[10] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[10]),
        .Q(async_path[10]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[11] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[11]),
        .Q(async_path[11]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "12" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "soft" *) (* xpm_cdc = "GRAY" *) 
module eth_udp_fifo_async_xpm_cdc_gray__1
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [11:0]src_in_bin;
  input dest_clk;
  output [11:0]dest_out_bin;

  wire [11:0]async_path;
  wire [10:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [11:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [11:0]\dest_graysync_ff[1] ;
  wire [11:0]dest_out_bin;
  wire [10:0]gray_enc;
  wire src_clk;
  wire [11:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[10]),
        .Q(\dest_graysync_ff[0] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[11]),
        .Q(\dest_graysync_ff[0] [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [10]),
        .Q(\dest_graysync_ff[1] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [11]),
        .Q(\dest_graysync_ff[1] [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(binval[1]),
        .O(binval[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[10]_i_1 
       (.I0(\dest_graysync_ff[1] [10]),
        .I1(\dest_graysync_ff[1] [11]),
        .O(binval[10]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [5]),
        .I3(binval[6]),
        .I4(\dest_graysync_ff[1] [4]),
        .I5(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(binval[6]),
        .I3(\dest_graysync_ff[1] [5]),
        .I4(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(binval[6]),
        .I3(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(binval[6]),
        .I2(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(binval[6]),
        .O(binval[5]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [8]),
        .I2(\dest_graysync_ff[1] [10]),
        .I3(\dest_graysync_ff[1] [11]),
        .I4(\dest_graysync_ff[1] [9]),
        .I5(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[7]_i_1 
       (.I0(\dest_graysync_ff[1] [7]),
        .I1(\dest_graysync_ff[1] [9]),
        .I2(\dest_graysync_ff[1] [11]),
        .I3(\dest_graysync_ff[1] [10]),
        .I4(\dest_graysync_ff[1] [8]),
        .O(binval[7]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[8]_i_1 
       (.I0(\dest_graysync_ff[1] [8]),
        .I1(\dest_graysync_ff[1] [10]),
        .I2(\dest_graysync_ff[1] [11]),
        .I3(\dest_graysync_ff[1] [9]),
        .O(binval[8]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[9]_i_1 
       (.I0(\dest_graysync_ff[1] [9]),
        .I1(\dest_graysync_ff[1] [11]),
        .I2(\dest_graysync_ff[1] [10]),
        .O(binval[9]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[10]),
        .Q(dest_out_bin[10]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [11]),
        .Q(dest_out_bin[11]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[8]),
        .Q(dest_out_bin[8]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[9]),
        .Q(dest_out_bin[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[10]_i_1 
       (.I0(src_in_bin[11]),
        .I1(src_in_bin[10]),
        .O(gray_enc[10]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[9]_i_1 
       (.I0(src_in_bin[10]),
        .I1(src_in_bin[9]),
        .O(gray_enc[9]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[10] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[10]),
        .Q(async_path[10]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[11] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[11]),
        .Q(async_path[11]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "soft" *) 
(* xpm_cdc = "SINGLE" *) 
module eth_udp_fifo_async_xpm_cdc_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "soft" *) 
(* xpm_cdc = "SINGLE" *) 
module eth_udp_fifo_async_xpm_cdc_single__1
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "5" *) (* INIT = "1" *) 
(* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "soft" *) (* xpm_cdc = "SYNC_RST" *) 
module eth_udp_fifo_async_xpm_cdc_sync_rst
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [4:0]syncstages_ff;

  assign dest_rst = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "5" *) (* INIT = "1" *) 
(* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "soft" *) (* xpm_cdc = "SYNC_RST" *) 
module eth_udp_fifo_async_xpm_cdc_sync_rst__1
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [4:0]syncstages_ff;

  assign dest_rst = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
YqH9kwIC39+qbZg4PSfFsXuB9k9wnuxNryS/CfnEri6Ci9fSC6fsrQ/T/hnt3u/yolbJ8DJa1Qu6
Qnm24A9jLbA+fu3Nsmm6/rM6a4vU6OfVl/gTFd/CiWDutv6Dhn6Lim4uUNPahoOR/A2Yc4Zo2tdI
kMLO9gn9WlH2l3O2oXs=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XJYO2VHd/cnMxQd3i7/2qRhl57dl+doEKuhAunQyv3vpGRG/jlNxj8PqrgLoF0HMdqE3qJUVE/oq
kBSapqjVjLDMOrNGQ+Tc6VGsKMZH8FE/TXHQJ/IM5Iuiu2eozEwwVUomF+7cfqn+9OsVsqCONQ1M
g0oRlangiqasJDhhMfnlGGqwAwmgWRGQA6dmhTuua1s8zdvIv540zY6p5au8cAKVhqyyKK7wbxEE
SGuFqX+NYoyRV+rfWCcWM+hJEmnWS8LNAKkd13YE2+17sPYzUdZ23DmTxXK6KlAxKFW27CBySUfg
qdNXp2DSs2KAQYih27pBNMuHfGbM/ATFPWFvxg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
lYoEi/e8HsDTz6N11EDe/B/iitERmeYndlCklmCluwgb0N4W80JUGVlkd7NlRZHRNhxaNBJPkcjC
n61nO0tb17NwsMwjbY5TF8JWRYTNw1JXCFacvQYrdKv4/7QNQEtwVGiCLxFhOA8aHlWMZIrc2fri
VRMVWaEBcPwCGorlVIM=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QEw9fEsWFbdX0OQLvYs/gl+zyEOW3ak9TdQVaq+0AXXOT3LIqF7wDxJ6ZBnlf9mNbdsUVH5tAz1o
H8u7ihJl1L3THEvugW+TS8hkvVbEA9rKO2vV15KAj4Lla7UdFT/xDfe79RFarlLI7yGrubjgdoRi
QWy//UKsffG7IWNwmoSuppWiWB4ZHJtkunNyIkm70JPGyZF62VxJg1MTT+5LUbZG5vZjjuHZud9w
xJaKv1tFP/x8RVqLU5gPOqGqTW7/nKO2S+450Vo4D9vAmBVVcXpaL1EbSmCvQ+qJmcQKtf9qYFRV
Zko08hbpHjPxstqvTDro01jRzB8592m4xU2TWA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TC7q853CWBPPJgbRfgDV1lmjUwSAtliljShAyNFg8sfRfwDzchthzoSPH1UCHV++E2JXacEKq1lB
UWsNP92U4Xh0/Gu+6esOI0pJb8I+TRTxyBN1I4cRQEfQHcwfhbSdeH3yX9OV3opLEqYmT37hWU+J
zCawYnxVESI0FtRzEXve9gdEWlrKKckrT/hp4mvxxOjvOkOSQBvy0elgUOqh6mEOZl+JnUbsR+Wm
CoZLE1eefMZy3FnVmyDNPv3JPXi88aLXMyimal0MYFkTiS4XJiGT3eAIMIbksehXY+eYi/KFpZWQ
GHpX+lG3UmiWWLwyPakFwKEHbrBc70AlJ2eV9g==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
j9nmCKgjPWNChPbpSW6EWLrMA6oCG2JGPoum8px09v0PEAh0DRXZi0J8HPzXUsZgOEMcKpA7X54u
YFcDDCLAQ+urha/eSPbQYHQh4yGCursxAQ1C6LEyNQ2wJ0eLlO2bJeAl/gof06zqsYVM2lLJVNv5
wao1k2bmgPdfpfY3c9vPD0fSMuZPS41EoRS0cQhO5GTZnKdjxm6tEUL3GnTjB8ynSCIbCJUsMtAX
4FRHNa52gudx5B5fagR+lXgFhE7e++rWTJELr7SYB+r5Es8qZLTpCH8TrQxEkV0rY/+e4sAjNE2D
gHw8GD7VcUtc15B8y1BbVmh29qc8Nd3V2i/miA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UkCD6I/Vye4qNoNoa3hIexBXG3xyKUJPAHAjIo7UcNVCDXpMQiYEtPDqExZMfiPlJn2nswCYIfIJ
FYWqMCloKSQyyI/7yZ2EtbyWEklb/P5IyZyvGi6hhFUo/JFTb12b4bK0gZPr+bCDdlVQKTx5GVHz
wptdUJO2omSj8axVMPbLRRtVzlJIZ29dTJ2ATXVXAcBxPnFfHRAMnYYKLeeLExX61vQvpqrkLQHm
XG7hpVzJi56gYKAzxa2BLq072OCVpVS70bfWlhlSTVcSlCrUf+EcarEk4FD8+Ih2NCvrqremG6yn
TtcBn8Xr8M/6zhOYvLi6AD6eArDMKA8n+Ccv8A==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
A5y5QVZU8yjPexRVPioSiAGohCHD5DX5FVobuMyhcgQRExLUhPvnnS8HOtxTj/2IapEcz68gFMGG
Hpi+m725u85/om/Vze9pGIW9Mn328Kz2FIg3W5EvGstfGwY+48LiAGAmTR269JS4lJGVYWYOz7Xk
S8cEsFd2m7j8iyKtARJzD90+UdXq/cIIh725jC9i8nbgxB364zddvm1Z/DF3JRw1qFp6GGcuRai1
KNcJ1j8c9wtIgktpsteU3e5+bxHEw8NT3gWXUFYjm00NDq97Jals8Jjktmum2nQxoF7ivPacfEey
gnSF6jRMkTsZObzc30hAhs0CEtc33hZLhPLHSn8pQ0WyvKJLHdd5s2yckgTZtqxC1Sbwe7WEgNXe
ZMX3pIkz+aoXsAL7GBLyVBMVQcyMoF0w8QGAaTe8sqatABwPqXidYRqNROTf62IYcMpV89XYgaTv
EwIn/oni9KOFd2BFVxRZbFGGC4IjvigsTBUijI+Dk6kVnDh240clGcc4

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Omtp+lCaqUx7Z4qdFj2zrN8LpCkit2eX4hlMtig+ielGm/x4FSZkpjoFmiqdKFPi2eg0pg09MSai
XyGH68UzAR7Xrj8f1jlIoUmMKp4GcxfdqfTeuu7kWGOJEP6cvgTjSJFj2gawDv7f4yZcltnK2x0L
e4GW/rBTmGvZtKWb2ahjINLxPuh3dDaSaWdb+zVgbtyrI5FrjxBkq+aOxSjyNsqnCx1L0uWbxnkl
88NbXN3dTaECXHNm/fsleayM5hKis7kTv9BFajJMGy+BhQlmIYpE+F5zchnTTFUFJZCz1sX9Fc8e
HcY7irB8mR3ajdzjUZLBQEMktp096Nheq3U75A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hpeBLwN9x2ZFDwroYLlUe5GjjDepHik2l0c2s3/6S7JPCRkzQSyt2V1Ad/JewAs/QNp5SXSbYYB4
rQl0My1LDMF3xw43r0g2IbcyHVpPhGp0W5msuQdF67afnsRv90iJYWLMI3QkYGCTWAzl4HrLxFSg
3z8XZRK670IcxznOrlvgHmIKsvubZrBkuc1EynrVb9Nw16QnIx2rc4WgcEXeFf+4i1RoYLDd3gXK
NFCNMdtaRYUThunFP6Z4ViZ5UnDmKq+IMhd31jTaqIlWOBDxPI1+v5RJYxIyTbn4rxlKR2fNbl5/
z4OUjBTd+1GH3I2OXlqmAOvIhpe2Z2HH7nZu/A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Mt2RhTSUwEIEWeNARbyL+EdfS1UF6nPaL/fKl/7oO2gina93egwCWDLl1fbBtkfaPco0cu4MJ9K3
OraAsyHRlY+MNShmJ1LzAIA1LjZx4y55lu9dlQqSUXR7AW7wVbkg1864mK+hM/1XygU0jvebKNW9
B7xSER+asLO6pxi0mt7uC2PHxLPAYEszFhmnap82TtbDGdQ2qtyekY+ngs+N2fAdsblxVwJruiMl
e6XJ127M8N1mYwhWU2HtRpBOSnnKoHgD9fG51XK/rhk8DxT66QnX9uLPB+H25eDupBJGi1Y5o6x8
hOwZiSUVlBLh7brfzevh7+eRn+7es6wBas0+3w==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 130496)
`pragma protect data_block
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
cjabsE6YwWV/ukiJeyLcPcmCCQfO7+U=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
