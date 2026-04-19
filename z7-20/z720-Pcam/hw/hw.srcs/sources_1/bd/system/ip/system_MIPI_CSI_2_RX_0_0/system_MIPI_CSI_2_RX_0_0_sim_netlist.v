// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Apr 19 12:20:15 2026
// Host        : DESKTOP-7CFQ9ND running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/project/PROJECT/4.Final_Project/Final_Project/z7-20/z720-Pcam/hw/hw.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/system_MIPI_CSI_2_RX_0_0_sim_netlist.v
// Design      : system_MIPI_CSI_2_RX_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_MIPI_CSI_2_RX_0_0,mipi_csi2_rx_top,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mipi_csi2_rx_top,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module system_MIPI_CSI_2_RX_0_0
   (RxByteClkHS,
    aClkStopstate,
    aRxClkActiveHS,
    RxDataHSD0,
    RxSyncHSD0,
    RxValidHSD0,
    RxActiveHSD0,
    aD0Enable,
    RxDataHSD1,
    RxSyncHSD1,
    RxValidHSD1,
    RxActiveHSD1,
    aD1Enable,
    RxDataHSD2,
    RxSyncHSD2,
    RxValidHSD2,
    RxActiveHSD2,
    aD2Enable,
    RxDataHSD3,
    RxSyncHSD3,
    RxValidHSD3,
    RxActiveHSD3,
    aD3Enable,
    aClkEnable,
    m_axis_video_tdata,
    m_axis_video_tvalid,
    m_axis_video_tready,
    m_axis_video_tlast,
    m_axis_video_tuser,
    video_aclk,
    s_axi_lite_awaddr,
    s_axi_lite_awprot,
    s_axi_lite_awvalid,
    s_axi_lite_awready,
    s_axi_lite_wdata,
    s_axi_lite_wstrb,
    s_axi_lite_wvalid,
    s_axi_lite_wready,
    s_axi_lite_bresp,
    s_axi_lite_bvalid,
    s_axi_lite_bready,
    s_axi_lite_araddr,
    s_axi_lite_arprot,
    s_axi_lite_arvalid,
    s_axi_lite_arready,
    s_axi_lite_rdata,
    s_axi_lite_rresp,
    s_axi_lite_rvalid,
    s_axi_lite_rready,
    s_axi_lite_aclk,
    s_axi_lite_aresetn);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 RxByteClkHS CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME RxByteClkHS, ASSOCIATED_BUSIF rx_mipi_ppi, FREQ_HZ 84000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN system_MIPI_D_PHY_RX_0_0_RxByteClkHS, INSERT_VIP 0" *) input RxByteClkHS;
  (* x_interface_info = "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi CL_STOPSTATE" *) input aClkStopstate;
  (* x_interface_info = "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi CL_RXCLKACTIVEHS" *) input aRxClkActiveHS;
  (* x_interface_info = "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL0_RXDATAHS" *) input [7:0]RxDataHSD0;
  (* x_interface_info = "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL0_RXSYNCHS" *) input RxSyncHSD0;
  (* x_interface_info = "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL0_RXVALIDHS" *) input RxValidHSD0;
  (* x_interface_info = "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL0_RXACTIVEHS" *) input RxActiveHSD0;
  (* x_interface_info = "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL0_ENABLE" *) output aD0Enable;
  (* x_interface_info = "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL1_RXDATAHS" *) input [7:0]RxDataHSD1;
  (* x_interface_info = "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL1_RXSYNCHS" *) input RxSyncHSD1;
  (* x_interface_info = "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL1_RXVALIDHS" *) input RxValidHSD1;
  (* x_interface_info = "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL1_RXACTIVEHS" *) input RxActiveHSD1;
  (* x_interface_info = "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL1_ENABLE" *) output aD1Enable;
  (* x_interface_info = "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL2_RXDATAHS" *) input [7:0]RxDataHSD2;
  (* x_interface_info = "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL2_RXSYNCHS" *) input RxSyncHSD2;
  (* x_interface_info = "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL2_RXVALIDHS" *) input RxValidHSD2;
  (* x_interface_info = "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL2_RXACTIVEHS" *) input RxActiveHSD2;
  (* x_interface_info = "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL2_ENABLE" *) output aD2Enable;
  (* x_interface_info = "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL3_RXDATAHS" *) input [7:0]RxDataHSD3;
  (* x_interface_info = "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL3_RXSYNCHS" *) input RxSyncHSD3;
  (* x_interface_info = "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL3_RXVALIDHS" *) input RxValidHSD3;
  (* x_interface_info = "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL3_RXACTIVEHS" *) input RxActiveHSD3;
  (* x_interface_info = "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL3_ENABLE" *) output aD3Enable;
  (* x_interface_info = "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi CL_ENABLE" *) output aClkEnable;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis_video TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME m_axis_video, TDATA_NUM_BYTES 5, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 150000000, PHASE 0.0, CLK_DOMAIN system_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output [39:0]m_axis_video_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis_video TVALID" *) output m_axis_video_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis_video TREADY" *) input m_axis_video_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis_video TLAST" *) output m_axis_video_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis_video TUSER" *) output [0:0]m_axis_video_tuser;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 video_aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME video_aclk, ASSOCIATED_RESET video_aresetn, ASSOCIATED_BUSIF m_axis_video, FREQ_HZ 150000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_clk_wiz_0_0_clk_out1, INSERT_VIP 0" *) input video_aclk;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI_LITE, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN system_clk_wiz_0_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [3:0]s_axi_lite_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWPROT" *) input [2:0]s_axi_lite_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWVALID" *) input s_axi_lite_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWREADY" *) output s_axi_lite_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE WDATA" *) input [31:0]s_axi_lite_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE WSTRB" *) input [3:0]s_axi_lite_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE WVALID" *) input s_axi_lite_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE WREADY" *) output s_axi_lite_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE BRESP" *) output [1:0]s_axi_lite_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE BVALID" *) output s_axi_lite_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE BREADY" *) input s_axi_lite_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARADDR" *) input [3:0]s_axi_lite_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARPROT" *) input [2:0]s_axi_lite_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARVALID" *) input s_axi_lite_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARREADY" *) output s_axi_lite_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE RDATA" *) output [31:0]s_axi_lite_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE RRESP" *) output [1:0]s_axi_lite_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE RVALID" *) output s_axi_lite_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE RREADY" *) input s_axi_lite_rready;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 s_axi_lite_aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axi_lite_aclk, ASSOCIATED_BUSIF S_AXI_LITE, ASSOCIATED_RESET s_axi_lite_aresetn, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_clk_wiz_0_0_clk_out1, INSERT_VIP 0" *) input s_axi_lite_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 s_axi_lite_aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axi_lite_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_lite_aresetn;

  wire \<const0> ;
  wire RxActiveHSD0;
  wire RxActiveHSD1;
  wire RxByteClkHS;
  wire [7:0]RxDataHSD0;
  wire [7:0]RxDataHSD1;
  wire RxSyncHSD0;
  wire RxSyncHSD1;
  wire RxValidHSD0;
  wire RxValidHSD1;
  wire aClkEnable;
  wire aD0Enable;
  wire aD1Enable;
  wire [39:0]m_axis_video_tdata;
  wire m_axis_video_tlast;
  wire m_axis_video_tready;
  wire [0:0]m_axis_video_tuser;
  wire m_axis_video_tvalid;
  wire s_axi_lite_aclk;
  wire [3:0]s_axi_lite_araddr;
  wire s_axi_lite_aresetn;
  wire s_axi_lite_arready;
  wire s_axi_lite_arvalid;
  wire [3:0]s_axi_lite_awaddr;
  wire s_axi_lite_awready;
  wire s_axi_lite_awvalid;
  wire s_axi_lite_bready;
  wire s_axi_lite_bvalid;
  wire [31:0]s_axi_lite_rdata;
  wire s_axi_lite_rready;
  wire s_axi_lite_rvalid;
  wire [31:0]s_axi_lite_wdata;
  wire s_axi_lite_wready;
  wire [3:0]s_axi_lite_wstrb;
  wire s_axi_lite_wvalid;
  wire video_aclk;
  wire NLW_U0_aD2Enable_UNCONNECTED;
  wire NLW_U0_aD3Enable_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_lite_bresp_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_lite_rresp_UNCONNECTED;

  assign aD2Enable = \<const0> ;
  assign aD3Enable = \<const0> ;
  assign s_axi_lite_bresp[1] = \<const0> ;
  assign s_axi_lite_bresp[0] = \<const0> ;
  assign s_axi_lite_rresp[1] = \<const0> ;
  assign s_axi_lite_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_M_AXIS_COMPONENT_WIDTH = "10" *) 
  (* C_M_AXIS_TDATA_WIDTH = "40" *) 
  (* C_M_MAX_SAMPLES_PER_CLOCK = "4" *) 
  (* C_S_AXI_LITE_ADDR_WIDTH = "4" *) 
  (* C_S_AXI_LITE_DATA_WIDTH = "32" *) 
  (* kDebug = "FALSE" *) 
  (* kGenerateAXIL = "TRUE" *) 
  (* kLaneCount = "2" *) 
  (* kTargetDT = "RAW10" *) 
  (* kVersionMajor = "1" *) 
  (* kVersionMinor = "2" *) 
  system_MIPI_CSI_2_RX_0_0_mipi_csi2_rx_top U0
       (.RxActiveHSD0(RxActiveHSD0),
        .RxActiveHSD1(RxActiveHSD1),
        .RxActiveHSD2(1'b0),
        .RxActiveHSD3(1'b0),
        .RxByteClkHS(RxByteClkHS),
        .RxDataHSD0(RxDataHSD0),
        .RxDataHSD1(RxDataHSD1),
        .RxDataHSD2({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .RxDataHSD3({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .RxSyncHSD0(RxSyncHSD0),
        .RxSyncHSD1(RxSyncHSD1),
        .RxSyncHSD2(1'b0),
        .RxSyncHSD3(1'b0),
        .RxValidHSD0(RxValidHSD0),
        .RxValidHSD1(RxValidHSD1),
        .RxValidHSD2(1'b0),
        .RxValidHSD3(1'b0),
        .aClkEnable(aClkEnable),
        .aClkStopstate(1'b0),
        .aD0Enable(aD0Enable),
        .aD1Enable(aD1Enable),
        .aD2Enable(NLW_U0_aD2Enable_UNCONNECTED),
        .aD3Enable(NLW_U0_aD3Enable_UNCONNECTED),
        .aRxClkActiveHS(1'b0),
        .m_axis_video_tdata(m_axis_video_tdata),
        .m_axis_video_tlast(m_axis_video_tlast),
        .m_axis_video_tready(m_axis_video_tready),
        .m_axis_video_tuser(m_axis_video_tuser),
        .m_axis_video_tvalid(m_axis_video_tvalid),
        .s_axi_lite_aclk(s_axi_lite_aclk),
        .s_axi_lite_araddr({s_axi_lite_araddr[3:2],1'b0,1'b0}),
        .s_axi_lite_aresetn(s_axi_lite_aresetn),
        .s_axi_lite_arprot({1'b0,1'b0,1'b0}),
        .s_axi_lite_arready(s_axi_lite_arready),
        .s_axi_lite_arvalid(s_axi_lite_arvalid),
        .s_axi_lite_awaddr({s_axi_lite_awaddr[3:2],1'b0,1'b0}),
        .s_axi_lite_awprot({1'b0,1'b0,1'b0}),
        .s_axi_lite_awready(s_axi_lite_awready),
        .s_axi_lite_awvalid(s_axi_lite_awvalid),
        .s_axi_lite_bready(s_axi_lite_bready),
        .s_axi_lite_bresp(NLW_U0_s_axi_lite_bresp_UNCONNECTED[1:0]),
        .s_axi_lite_bvalid(s_axi_lite_bvalid),
        .s_axi_lite_rdata(s_axi_lite_rdata),
        .s_axi_lite_rready(s_axi_lite_rready),
        .s_axi_lite_rresp(NLW_U0_s_axi_lite_rresp_UNCONNECTED[1:0]),
        .s_axi_lite_rvalid(s_axi_lite_rvalid),
        .s_axi_lite_wdata(s_axi_lite_wdata),
        .s_axi_lite_wready(s_axi_lite_wready),
        .s_axi_lite_wstrb(s_axi_lite_wstrb),
        .s_axi_lite_wvalid(s_axi_lite_wvalid),
        .video_aclk(video_aclk),
        .video_aresetn(1'b1));
endmodule

(* ORIG_REF_NAME = "ECC" *) 
module system_MIPI_CSI_2_RX_0_0_ECC
   (sValid_reg_0,
    sError_reg_0,
    Q,
    \FSM_onehot_sState_reg[3]_0 ,
    \sHeaderOut_reg[5]_0 ,
    mReg_Tuser0,
    m_axis_tready,
    \goreg_dm.dout_i_reg[0] ,
    mIsHeader0,
    mKeep0_out,
    O,
    sValid_reg_1,
    sValid_reg_2,
    sValid_reg_3,
    \sErrSyndrome_reg[0]_0 ,
    \sErrSyndrome_reg[4]_0 ,
    sValid_reg_4,
    video_aclk,
    sError_reg_1,
    \mWordCount_reg[3] ,
    \mWordCount_reg[3]_0 ,
    \mWordCount_reg[7] ,
    \mWordCount_reg[7]_0 ,
    \mWordCount_reg[7]_1 ,
    \mWordCount_reg[7]_2 ,
    \mWordCount_reg[11] ,
    \mWordCount_reg[11]_0 ,
    \mWordCount_reg[11]_1 ,
    \mWordCount_reg[11]_2 ,
    \mWordCount_reg[15] ,
    \mWordCount_reg[15]_0 ,
    \mWordCount_reg[15]_1 ,
    m_axis_tkeep,
    m_axis_tvalid,
    \sECCIn_reg[0]_0 ,
    \mWordCount_reg[0] ,
    s_axis_tready,
    mFlush_reg,
    mFlush_reg_0,
    m_axis_tlast,
    out,
    \mWordCount_reg[15]_2 ,
    \mWordCount_reg[3]_1 ,
    \mWordCount_reg[3]_2 ,
    D);
  output sValid_reg_0;
  output sError_reg_0;
  output [3:0]Q;
  output [0:0]\FSM_onehot_sState_reg[3]_0 ;
  output \sHeaderOut_reg[5]_0 ;
  output mReg_Tuser0;
  output m_axis_tready;
  output \goreg_dm.dout_i_reg[0] ;
  output mIsHeader0;
  output mKeep0_out;
  output [3:0]O;
  output [3:0]sValid_reg_1;
  output [3:0]sValid_reg_2;
  output [3:0]sValid_reg_3;
  output \sErrSyndrome_reg[0]_0 ;
  output \sErrSyndrome_reg[4]_0 ;
  input sValid_reg_4;
  input video_aclk;
  input sError_reg_1;
  input \mWordCount_reg[3] ;
  input \mWordCount_reg[3]_0 ;
  input \mWordCount_reg[7] ;
  input \mWordCount_reg[7]_0 ;
  input \mWordCount_reg[7]_1 ;
  input \mWordCount_reg[7]_2 ;
  input \mWordCount_reg[11] ;
  input \mWordCount_reg[11]_0 ;
  input \mWordCount_reg[11]_1 ;
  input \mWordCount_reg[11]_2 ;
  input \mWordCount_reg[15] ;
  input \mWordCount_reg[15]_0 ;
  input \mWordCount_reg[15]_1 ;
  input [3:0]m_axis_tkeep;
  input m_axis_tvalid;
  input \sECCIn_reg[0]_0 ;
  input \mWordCount_reg[0] ;
  input s_axis_tready;
  input mFlush_reg;
  input mFlush_reg_0;
  input m_axis_tlast;
  input [0:0]out;
  input \mWordCount_reg[15]_2 ;
  input \mWordCount_reg[3]_1 ;
  input \mWordCount_reg[3]_2 ;
  input [29:0]D;

  wire [29:0]D;
  wire \FSM_onehot_sState[1]_i_1_n_0 ;
  wire \FSM_onehot_sState[3]_i_1_n_0 ;
  wire [0:0]\FSM_onehot_sState_reg[3]_0 ;
  wire \FSM_onehot_sState_reg_n_0_[0] ;
  wire \FSM_onehot_sState_reg_n_0_[1] ;
  wire [3:0]O;
  wire [3:0]Q;
  wire \goreg_dm.dout_i_reg[0] ;
  wire mFlush_i_2_n_0;
  wire mFlush_reg;
  wire mFlush_reg_0;
  wire mIsHeader0;
  wire mKeep0_out;
  wire mKeep_i_3_n_0;
  wire mReg_Tuser0;
  wire \mReg_Tuser[0]_i_3_n_0 ;
  wire \mWordCount[0]_i_10_n_0 ;
  wire \mWordCount[0]_i_11_n_0 ;
  wire \mWordCount[0]_i_4_n_0 ;
  wire \mWordCount[0]_i_5_n_0 ;
  wire \mWordCount[0]_i_6_n_0 ;
  wire \mWordCount[0]_i_7_n_0 ;
  wire \mWordCount[0]_i_8_n_0 ;
  wire \mWordCount[0]_i_9_n_0 ;
  wire \mWordCount[12]_i_2_n_0 ;
  wire \mWordCount[12]_i_3_n_0 ;
  wire \mWordCount[12]_i_4_n_0 ;
  wire \mWordCount[12]_i_5_n_0 ;
  wire \mWordCount[12]_i_6_n_0 ;
  wire \mWordCount[12]_i_7_n_0 ;
  wire \mWordCount[12]_i_8_n_0 ;
  wire \mWordCount[4]_i_2_n_0 ;
  wire \mWordCount[4]_i_3_n_0 ;
  wire \mWordCount[4]_i_4_n_0 ;
  wire \mWordCount[4]_i_5_n_0 ;
  wire \mWordCount[4]_i_6_n_0 ;
  wire \mWordCount[4]_i_7_n_0 ;
  wire \mWordCount[4]_i_8_n_0 ;
  wire \mWordCount[4]_i_9_n_0 ;
  wire \mWordCount[8]_i_2_n_0 ;
  wire \mWordCount[8]_i_3_n_0 ;
  wire \mWordCount[8]_i_4_n_0 ;
  wire \mWordCount[8]_i_5_n_0 ;
  wire \mWordCount[8]_i_6_n_0 ;
  wire \mWordCount[8]_i_7_n_0 ;
  wire \mWordCount[8]_i_8_n_0 ;
  wire \mWordCount[8]_i_9_n_0 ;
  wire \mWordCount_reg[0] ;
  wire \mWordCount_reg[0]_i_2_n_0 ;
  wire \mWordCount_reg[0]_i_2_n_1 ;
  wire \mWordCount_reg[0]_i_2_n_2 ;
  wire \mWordCount_reg[0]_i_2_n_3 ;
  wire \mWordCount_reg[11] ;
  wire \mWordCount_reg[11]_0 ;
  wire \mWordCount_reg[11]_1 ;
  wire \mWordCount_reg[11]_2 ;
  wire \mWordCount_reg[12]_i_1_n_1 ;
  wire \mWordCount_reg[12]_i_1_n_2 ;
  wire \mWordCount_reg[12]_i_1_n_3 ;
  wire \mWordCount_reg[15] ;
  wire \mWordCount_reg[15]_0 ;
  wire \mWordCount_reg[15]_1 ;
  wire \mWordCount_reg[15]_2 ;
  wire \mWordCount_reg[3] ;
  wire \mWordCount_reg[3]_0 ;
  wire \mWordCount_reg[3]_1 ;
  wire \mWordCount_reg[3]_2 ;
  wire \mWordCount_reg[4]_i_1_n_0 ;
  wire \mWordCount_reg[4]_i_1_n_1 ;
  wire \mWordCount_reg[4]_i_1_n_2 ;
  wire \mWordCount_reg[4]_i_1_n_3 ;
  wire \mWordCount_reg[7] ;
  wire \mWordCount_reg[7]_0 ;
  wire \mWordCount_reg[7]_1 ;
  wire \mWordCount_reg[7]_2 ;
  wire \mWordCount_reg[8]_i_1_n_0 ;
  wire \mWordCount_reg[8]_i_1_n_1 ;
  wire \mWordCount_reg[8]_i_1_n_2 ;
  wire \mWordCount_reg[8]_i_1_n_3 ;
  wire [3:0]m_axis_tkeep;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [0:0]out;
  wire [29:0]p_1_in;
  wire \sDataIn[23]_i_1_n_0 ;
  wire \sECCIn_reg[0]_0 ;
  wire sErrSyndrome;
  wire [5:0]sErrSyndrome0;
  wire \sErrSyndrome[0]_i_2_n_0 ;
  wire \sErrSyndrome[1]_i_2_n_0 ;
  wire \sErrSyndrome[1]_i_3_n_0 ;
  wire \sErrSyndrome[2]_i_2_n_0 ;
  wire \sErrSyndrome[2]_i_3_n_0 ;
  wire \sErrSyndrome[3]_i_2_n_0 ;
  wire \sErrSyndrome[3]_i_3_n_0 ;
  wire \sErrSyndrome[4]_i_2_n_0 ;
  wire \sErrSyndrome[4]_i_3_n_0 ;
  wire \sErrSyndrome[5]_i_2_n_0 ;
  wire \sErrSyndrome[5]_i_3_n_0 ;
  wire \sErrSyndrome_reg[0]_0 ;
  wire \sErrSyndrome_reg[4]_0 ;
  wire \sErrSyndrome_reg_n_0_[4] ;
  wire \sErrSyndrome_reg_n_0_[5] ;
  wire sError_reg_0;
  wire sError_reg_1;
  wire \sHeaderOut[0]_i_1_n_0 ;
  wire \sHeaderOut[10]_i_1_n_0 ;
  wire \sHeaderOut[11]_i_1_n_0 ;
  wire \sHeaderOut[12]_i_1_n_0 ;
  wire \sHeaderOut[13]_i_1_n_0 ;
  wire \sHeaderOut[14]_i_1_n_0 ;
  wire \sHeaderOut[15]_i_1_n_0 ;
  wire \sHeaderOut[16]_i_1_n_0 ;
  wire \sHeaderOut[17]_i_1_n_0 ;
  wire \sHeaderOut[18]_i_1_n_0 ;
  wire \sHeaderOut[19]_i_1_n_0 ;
  wire \sHeaderOut[1]_i_1_n_0 ;
  wire \sHeaderOut[20]_i_1_n_0 ;
  wire \sHeaderOut[21]_i_1_n_0 ;
  wire \sHeaderOut[22]_i_1_n_0 ;
  wire \sHeaderOut[23]_i_1_n_0 ;
  wire \sHeaderOut[23]_i_2_n_0 ;
  wire \sHeaderOut[23]_i_3_n_0 ;
  wire \sHeaderOut[23]_i_4_n_0 ;
  wire \sHeaderOut[23]_i_5_n_0 ;
  wire \sHeaderOut[23]_i_6_n_0 ;
  wire \sHeaderOut[2]_i_1_n_0 ;
  wire \sHeaderOut[3]_i_1_n_0 ;
  wire \sHeaderOut[4]_i_1_n_0 ;
  wire \sHeaderOut[5]_i_1_n_0 ;
  wire \sHeaderOut[8]_i_1_n_0 ;
  wire \sHeaderOut[9]_i_1_n_0 ;
  wire \sHeaderOut[9]_i_2_n_0 ;
  wire \sHeaderOut[9]_i_3_n_0 ;
  wire \sHeaderOut_reg[5]_0 ;
  wire \sHeaderOut_reg_n_0_[0] ;
  wire \sHeaderOut_reg_n_0_[10] ;
  wire \sHeaderOut_reg_n_0_[11] ;
  wire \sHeaderOut_reg_n_0_[12] ;
  wire \sHeaderOut_reg_n_0_[13] ;
  wire \sHeaderOut_reg_n_0_[14] ;
  wire \sHeaderOut_reg_n_0_[15] ;
  wire \sHeaderOut_reg_n_0_[16] ;
  wire \sHeaderOut_reg_n_0_[17] ;
  wire \sHeaderOut_reg_n_0_[18] ;
  wire \sHeaderOut_reg_n_0_[19] ;
  wire \sHeaderOut_reg_n_0_[1] ;
  wire \sHeaderOut_reg_n_0_[20] ;
  wire \sHeaderOut_reg_n_0_[21] ;
  wire \sHeaderOut_reg_n_0_[22] ;
  wire \sHeaderOut_reg_n_0_[23] ;
  wire \sHeaderOut_reg_n_0_[2] ;
  wire \sHeaderOut_reg_n_0_[3] ;
  wire \sHeaderOut_reg_n_0_[4] ;
  wire \sHeaderOut_reg_n_0_[5] ;
  wire \sHeaderOut_reg_n_0_[8] ;
  wire \sHeaderOut_reg_n_0_[9] ;
  wire sValid_reg_0;
  wire [3:0]sValid_reg_1;
  wire [3:0]sValid_reg_2;
  wire [3:0]sValid_reg_3;
  wire sValid_reg_4;
  wire s_axis_tready;
  wire video_aclk;
  wire [3:3]\NLW_mWordCount_reg[12]_i_1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFF80FFFFFF808080)) 
    DataFIFO_i_2
       (.I0(\FSM_onehot_sState_reg_n_0_[1] ),
        .I1(\sECCIn_reg[0]_0 ),
        .I2(m_axis_tvalid),
        .I3(s_axis_tready),
        .I4(mFlush_reg),
        .I5(mFlush_reg_0),
        .O(m_axis_tready));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_sState[1]_i_1 
       (.I0(\FSM_onehot_sState_reg[3]_0 ),
        .I1(\FSM_onehot_sState_reg_n_0_[0] ),
        .O(\FSM_onehot_sState[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF80)) 
    \FSM_onehot_sState[3]_i_1 
       (.I0(m_axis_tvalid),
        .I1(\sECCIn_reg[0]_0 ),
        .I2(\FSM_onehot_sState_reg_n_0_[1] ),
        .I3(\FSM_onehot_sState_reg[3]_0 ),
        .I4(\FSM_onehot_sState_reg_n_0_[0] ),
        .I5(sErrSyndrome),
        .O(\FSM_onehot_sState[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "streset:0001,stidle:0010,stgenparity:0100,stcorrect:1000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_sState_reg[0] 
       (.C(video_aclk),
        .CE(\FSM_onehot_sState[3]_i_1_n_0 ),
        .D(1'b0),
        .Q(\FSM_onehot_sState_reg_n_0_[0] ),
        .S(out));
  (* FSM_ENCODED_STATES = "streset:0001,stidle:0010,stgenparity:0100,stcorrect:1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_sState_reg[1] 
       (.C(video_aclk),
        .CE(\FSM_onehot_sState[3]_i_1_n_0 ),
        .D(\FSM_onehot_sState[1]_i_1_n_0 ),
        .Q(\FSM_onehot_sState_reg_n_0_[1] ),
        .R(out));
  (* FSM_ENCODED_STATES = "streset:0001,stidle:0010,stgenparity:0100,stcorrect:1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_sState_reg[2] 
       (.C(video_aclk),
        .CE(\FSM_onehot_sState[3]_i_1_n_0 ),
        .D(\FSM_onehot_sState_reg_n_0_[1] ),
        .Q(sErrSyndrome),
        .R(out));
  (* FSM_ENCODED_STATES = "streset:0001,stidle:0010,stgenparity:0100,stcorrect:1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_sState_reg[3] 
       (.C(video_aclk),
        .CE(\FSM_onehot_sState[3]_i_1_n_0 ),
        .D(sErrSyndrome),
        .Q(\FSM_onehot_sState_reg[3]_0 ),
        .R(out));
  LUT6 #(
    .INIT(64'h0000000077770007)) 
    mFlush_i_1
       (.I0(mIsHeader0),
        .I1(m_axis_tlast),
        .I2(mFlush_i_2_n_0),
        .I3(\sECCIn_reg[0]_0 ),
        .I4(mFlush_reg_0),
        .I5(out),
        .O(\goreg_dm.dout_i_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h1)) 
    mFlush_i_2
       (.I0(sValid_reg_0),
        .I1(sError_reg_0),
        .O(mFlush_i_2_n_0));
  LUT6 #(
    .INIT(64'hF080F0F0F0808080)) 
    mIsHeader_i_2
       (.I0(\FSM_onehot_sState_reg_n_0_[1] ),
        .I1(\sECCIn_reg[0]_0 ),
        .I2(m_axis_tvalid),
        .I3(s_axis_tready),
        .I4(mFlush_reg),
        .I5(mFlush_reg_0),
        .O(mIsHeader0));
  LUT4 #(
    .INIT(16'h0010)) 
    mKeep_i_2
       (.I0(\sHeaderOut_reg_n_0_[4] ),
        .I1(\sHeaderOut_reg_n_0_[2] ),
        .I2(\sHeaderOut_reg_n_0_[0] ),
        .I3(mKeep_i_3_n_0),
        .O(mKeep0_out));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    mKeep_i_3
       (.I0(\sHeaderOut_reg_n_0_[5] ),
        .I1(sValid_reg_0),
        .I2(\sHeaderOut_reg_n_0_[3] ),
        .I3(\sHeaderOut_reg_n_0_[1] ),
        .O(mKeep_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \mReg_Tuser[0]_i_2 
       (.I0(\sHeaderOut_reg_n_0_[2] ),
        .I1(sValid_reg_0),
        .I2(\sHeaderOut_reg_n_0_[0] ),
        .I3(\sHeaderOut_reg_n_0_[1] ),
        .I4(\sHeaderOut_reg_n_0_[3] ),
        .I5(\mReg_Tuser[0]_i_3_n_0 ),
        .O(mReg_Tuser0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \mReg_Tuser[0]_i_3 
       (.I0(\sHeaderOut_reg_n_0_[5] ),
        .I1(\sHeaderOut_reg_n_0_[4] ),
        .O(\mReg_Tuser[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hE0E0EFE0)) 
    \mWordCount[0]_i_1 
       (.I0(\sHeaderOut_reg_n_0_[5] ),
        .I1(\sHeaderOut_reg_n_0_[4] ),
        .I2(sValid_reg_0),
        .I3(m_axis_tkeep[0]),
        .I4(\mWordCount_reg[0] ),
        .O(\sHeaderOut_reg[5]_0 ));
  LUT6 #(
    .INIT(64'hFFFF807F0000807F)) 
    \mWordCount[0]_i_10 
       (.I0(m_axis_tkeep[2]),
        .I1(m_axis_tkeep[1]),
        .I2(m_axis_tkeep[0]),
        .I3(\mWordCount_reg[3]_2 ),
        .I4(sValid_reg_0),
        .I5(\sHeaderOut_reg_n_0_[9] ),
        .O(\mWordCount[0]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \mWordCount[0]_i_11 
       (.I0(\mWordCount[0]_i_7_n_0 ),
        .I1(\mWordCount_reg[3]_1 ),
        .I2(sValid_reg_0),
        .I3(\sHeaderOut_reg_n_0_[8] ),
        .O(\mWordCount[0]_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mWordCount[0]_i_4 
       (.I0(sValid_reg_0),
        .O(\mWordCount[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mWordCount[0]_i_5 
       (.I0(sValid_reg_0),
        .O(\mWordCount[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h1555)) 
    \mWordCount[0]_i_6 
       (.I0(sValid_reg_0),
        .I1(m_axis_tkeep[0]),
        .I2(m_axis_tkeep[1]),
        .I3(m_axis_tkeep[2]),
        .O(\mWordCount[0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h04555555)) 
    \mWordCount[0]_i_7 
       (.I0(sValid_reg_0),
        .I1(m_axis_tkeep[2]),
        .I2(m_axis_tkeep[3]),
        .I3(m_axis_tkeep[0]),
        .I4(m_axis_tkeep[1]),
        .O(\mWordCount[0]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \mWordCount[0]_i_8 
       (.I0(\mWordCount_reg[3]_0 ),
        .I1(\sHeaderOut_reg_n_0_[11] ),
        .I2(sValid_reg_0),
        .O(\mWordCount[0]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \mWordCount[0]_i_9 
       (.I0(\mWordCount_reg[3] ),
        .I1(\sHeaderOut_reg_n_0_[10] ),
        .I2(sValid_reg_0),
        .O(\mWordCount[0]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mWordCount[12]_i_2 
       (.I0(sValid_reg_0),
        .O(\mWordCount[12]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mWordCount[12]_i_3 
       (.I0(sValid_reg_0),
        .O(\mWordCount[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mWordCount[12]_i_4 
       (.I0(sValid_reg_0),
        .O(\mWordCount[12]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hA3)) 
    \mWordCount[12]_i_5 
       (.I0(\sHeaderOut_reg_n_0_[23] ),
        .I1(\mWordCount_reg[15]_2 ),
        .I2(sValid_reg_0),
        .O(\mWordCount[12]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \mWordCount[12]_i_6 
       (.I0(\mWordCount_reg[15]_1 ),
        .I1(\sHeaderOut_reg_n_0_[22] ),
        .I2(sValid_reg_0),
        .O(\mWordCount[12]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \mWordCount[12]_i_7 
       (.I0(\mWordCount_reg[15]_0 ),
        .I1(\sHeaderOut_reg_n_0_[21] ),
        .I2(sValid_reg_0),
        .O(\mWordCount[12]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \mWordCount[12]_i_8 
       (.I0(\mWordCount_reg[15] ),
        .I1(\sHeaderOut_reg_n_0_[20] ),
        .I2(sValid_reg_0),
        .O(\mWordCount[12]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mWordCount[4]_i_2 
       (.I0(sValid_reg_0),
        .O(\mWordCount[4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mWordCount[4]_i_3 
       (.I0(sValid_reg_0),
        .O(\mWordCount[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mWordCount[4]_i_4 
       (.I0(sValid_reg_0),
        .O(\mWordCount[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mWordCount[4]_i_5 
       (.I0(sValid_reg_0),
        .O(\mWordCount[4]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \mWordCount[4]_i_6 
       (.I0(\mWordCount_reg[7]_2 ),
        .I1(\sHeaderOut_reg_n_0_[15] ),
        .I2(sValid_reg_0),
        .O(\mWordCount[4]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \mWordCount[4]_i_7 
       (.I0(\mWordCount_reg[7]_1 ),
        .I1(\sHeaderOut_reg_n_0_[14] ),
        .I2(sValid_reg_0),
        .O(\mWordCount[4]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \mWordCount[4]_i_8 
       (.I0(\mWordCount_reg[7]_0 ),
        .I1(\sHeaderOut_reg_n_0_[13] ),
        .I2(sValid_reg_0),
        .O(\mWordCount[4]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \mWordCount[4]_i_9 
       (.I0(\mWordCount_reg[7] ),
        .I1(\sHeaderOut_reg_n_0_[12] ),
        .I2(sValid_reg_0),
        .O(\mWordCount[4]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mWordCount[8]_i_2 
       (.I0(sValid_reg_0),
        .O(\mWordCount[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mWordCount[8]_i_3 
       (.I0(sValid_reg_0),
        .O(\mWordCount[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mWordCount[8]_i_4 
       (.I0(sValid_reg_0),
        .O(\mWordCount[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mWordCount[8]_i_5 
       (.I0(sValid_reg_0),
        .O(\mWordCount[8]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \mWordCount[8]_i_6 
       (.I0(\mWordCount_reg[11]_2 ),
        .I1(\sHeaderOut_reg_n_0_[19] ),
        .I2(sValid_reg_0),
        .O(\mWordCount[8]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \mWordCount[8]_i_7 
       (.I0(\mWordCount_reg[11]_1 ),
        .I1(\sHeaderOut_reg_n_0_[18] ),
        .I2(sValid_reg_0),
        .O(\mWordCount[8]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \mWordCount[8]_i_8 
       (.I0(\mWordCount_reg[11]_0 ),
        .I1(\sHeaderOut_reg_n_0_[17] ),
        .I2(sValid_reg_0),
        .O(\mWordCount[8]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \mWordCount[8]_i_9 
       (.I0(\mWordCount_reg[11] ),
        .I1(\sHeaderOut_reg_n_0_[16] ),
        .I2(sValid_reg_0),
        .O(\mWordCount[8]_i_9_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \mWordCount_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\mWordCount_reg[0]_i_2_n_0 ,\mWordCount_reg[0]_i_2_n_1 ,\mWordCount_reg[0]_i_2_n_2 ,\mWordCount_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\mWordCount[0]_i_4_n_0 ,\mWordCount[0]_i_5_n_0 ,\mWordCount[0]_i_6_n_0 ,\mWordCount[0]_i_7_n_0 }),
        .O(O),
        .S({\mWordCount[0]_i_8_n_0 ,\mWordCount[0]_i_9_n_0 ,\mWordCount[0]_i_10_n_0 ,\mWordCount[0]_i_11_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \mWordCount_reg[12]_i_1 
       (.CI(\mWordCount_reg[8]_i_1_n_0 ),
        .CO({\NLW_mWordCount_reg[12]_i_1_CO_UNCONNECTED [3],\mWordCount_reg[12]_i_1_n_1 ,\mWordCount_reg[12]_i_1_n_2 ,\mWordCount_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\mWordCount[12]_i_2_n_0 ,\mWordCount[12]_i_3_n_0 ,\mWordCount[12]_i_4_n_0 }),
        .O(sValid_reg_3),
        .S({\mWordCount[12]_i_5_n_0 ,\mWordCount[12]_i_6_n_0 ,\mWordCount[12]_i_7_n_0 ,\mWordCount[12]_i_8_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \mWordCount_reg[4]_i_1 
       (.CI(\mWordCount_reg[0]_i_2_n_0 ),
        .CO({\mWordCount_reg[4]_i_1_n_0 ,\mWordCount_reg[4]_i_1_n_1 ,\mWordCount_reg[4]_i_1_n_2 ,\mWordCount_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\mWordCount[4]_i_2_n_0 ,\mWordCount[4]_i_3_n_0 ,\mWordCount[4]_i_4_n_0 ,\mWordCount[4]_i_5_n_0 }),
        .O(sValid_reg_1),
        .S({\mWordCount[4]_i_6_n_0 ,\mWordCount[4]_i_7_n_0 ,\mWordCount[4]_i_8_n_0 ,\mWordCount[4]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \mWordCount_reg[8]_i_1 
       (.CI(\mWordCount_reg[4]_i_1_n_0 ),
        .CO({\mWordCount_reg[8]_i_1_n_0 ,\mWordCount_reg[8]_i_1_n_1 ,\mWordCount_reg[8]_i_1_n_2 ,\mWordCount_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\mWordCount[8]_i_2_n_0 ,\mWordCount[8]_i_3_n_0 ,\mWordCount[8]_i_4_n_0 ,\mWordCount[8]_i_5_n_0 }),
        .O(sValid_reg_2),
        .S({\mWordCount[8]_i_6_n_0 ,\mWordCount[8]_i_7_n_0 ,\mWordCount[8]_i_8_n_0 ,\mWordCount[8]_i_9_n_0 }));
  LUT3 #(
    .INIT(8'h80)) 
    \sDataIn[23]_i_1 
       (.I0(\FSM_onehot_sState_reg_n_0_[1] ),
        .I1(\sECCIn_reg[0]_0 ),
        .I2(m_axis_tvalid),
        .O(\sDataIn[23]_i_1_n_0 ));
  FDRE \sDataIn_reg[0] 
       (.C(video_aclk),
        .CE(\sDataIn[23]_i_1_n_0 ),
        .D(D[0]),
        .Q(p_1_in[0]),
        .R(1'b0));
  FDRE \sDataIn_reg[10] 
       (.C(video_aclk),
        .CE(\sDataIn[23]_i_1_n_0 ),
        .D(D[10]),
        .Q(p_1_in[10]),
        .R(1'b0));
  FDRE \sDataIn_reg[11] 
       (.C(video_aclk),
        .CE(\sDataIn[23]_i_1_n_0 ),
        .D(D[11]),
        .Q(p_1_in[11]),
        .R(1'b0));
  FDRE \sDataIn_reg[12] 
       (.C(video_aclk),
        .CE(\sDataIn[23]_i_1_n_0 ),
        .D(D[12]),
        .Q(p_1_in[12]),
        .R(1'b0));
  FDRE \sDataIn_reg[13] 
       (.C(video_aclk),
        .CE(\sDataIn[23]_i_1_n_0 ),
        .D(D[13]),
        .Q(p_1_in[13]),
        .R(1'b0));
  FDRE \sDataIn_reg[14] 
       (.C(video_aclk),
        .CE(\sDataIn[23]_i_1_n_0 ),
        .D(D[14]),
        .Q(p_1_in[14]),
        .R(1'b0));
  FDRE \sDataIn_reg[15] 
       (.C(video_aclk),
        .CE(\sDataIn[23]_i_1_n_0 ),
        .D(D[15]),
        .Q(p_1_in[15]),
        .R(1'b0));
  FDRE \sDataIn_reg[16] 
       (.C(video_aclk),
        .CE(\sDataIn[23]_i_1_n_0 ),
        .D(D[16]),
        .Q(p_1_in[16]),
        .R(1'b0));
  FDRE \sDataIn_reg[17] 
       (.C(video_aclk),
        .CE(\sDataIn[23]_i_1_n_0 ),
        .D(D[17]),
        .Q(p_1_in[17]),
        .R(1'b0));
  FDRE \sDataIn_reg[18] 
       (.C(video_aclk),
        .CE(\sDataIn[23]_i_1_n_0 ),
        .D(D[18]),
        .Q(p_1_in[18]),
        .R(1'b0));
  FDRE \sDataIn_reg[19] 
       (.C(video_aclk),
        .CE(\sDataIn[23]_i_1_n_0 ),
        .D(D[19]),
        .Q(p_1_in[19]),
        .R(1'b0));
  FDRE \sDataIn_reg[1] 
       (.C(video_aclk),
        .CE(\sDataIn[23]_i_1_n_0 ),
        .D(D[1]),
        .Q(p_1_in[1]),
        .R(1'b0));
  FDRE \sDataIn_reg[20] 
       (.C(video_aclk),
        .CE(\sDataIn[23]_i_1_n_0 ),
        .D(D[20]),
        .Q(p_1_in[20]),
        .R(1'b0));
  FDRE \sDataIn_reg[21] 
       (.C(video_aclk),
        .CE(\sDataIn[23]_i_1_n_0 ),
        .D(D[21]),
        .Q(p_1_in[21]),
        .R(1'b0));
  FDRE \sDataIn_reg[22] 
       (.C(video_aclk),
        .CE(\sDataIn[23]_i_1_n_0 ),
        .D(D[22]),
        .Q(p_1_in[22]),
        .R(1'b0));
  FDRE \sDataIn_reg[23] 
       (.C(video_aclk),
        .CE(\sDataIn[23]_i_1_n_0 ),
        .D(D[23]),
        .Q(p_1_in[23]),
        .R(1'b0));
  FDRE \sDataIn_reg[2] 
       (.C(video_aclk),
        .CE(\sDataIn[23]_i_1_n_0 ),
        .D(D[2]),
        .Q(p_1_in[2]),
        .R(1'b0));
  FDRE \sDataIn_reg[3] 
       (.C(video_aclk),
        .CE(\sDataIn[23]_i_1_n_0 ),
        .D(D[3]),
        .Q(p_1_in[3]),
        .R(1'b0));
  FDRE \sDataIn_reg[4] 
       (.C(video_aclk),
        .CE(\sDataIn[23]_i_1_n_0 ),
        .D(D[4]),
        .Q(p_1_in[4]),
        .R(1'b0));
  FDRE \sDataIn_reg[5] 
       (.C(video_aclk),
        .CE(\sDataIn[23]_i_1_n_0 ),
        .D(D[5]),
        .Q(p_1_in[5]),
        .R(1'b0));
  FDRE \sDataIn_reg[6] 
       (.C(video_aclk),
        .CE(\sDataIn[23]_i_1_n_0 ),
        .D(D[6]),
        .Q(p_1_in[6]),
        .R(1'b0));
  FDRE \sDataIn_reg[7] 
       (.C(video_aclk),
        .CE(\sDataIn[23]_i_1_n_0 ),
        .D(D[7]),
        .Q(p_1_in[7]),
        .R(1'b0));
  FDRE \sDataIn_reg[8] 
       (.C(video_aclk),
        .CE(\sDataIn[23]_i_1_n_0 ),
        .D(D[8]),
        .Q(p_1_in[8]),
        .R(1'b0));
  FDRE \sDataIn_reg[9] 
       (.C(video_aclk),
        .CE(\sDataIn[23]_i_1_n_0 ),
        .D(D[9]),
        .Q(p_1_in[9]),
        .R(1'b0));
  FDRE \sECCIn_reg[0] 
       (.C(video_aclk),
        .CE(\sDataIn[23]_i_1_n_0 ),
        .D(D[24]),
        .Q(p_1_in[24]),
        .R(1'b0));
  FDRE \sECCIn_reg[1] 
       (.C(video_aclk),
        .CE(\sDataIn[23]_i_1_n_0 ),
        .D(D[25]),
        .Q(p_1_in[25]),
        .R(1'b0));
  FDRE \sECCIn_reg[2] 
       (.C(video_aclk),
        .CE(\sDataIn[23]_i_1_n_0 ),
        .D(D[26]),
        .Q(p_1_in[26]),
        .R(1'b0));
  FDRE \sECCIn_reg[3] 
       (.C(video_aclk),
        .CE(\sDataIn[23]_i_1_n_0 ),
        .D(D[27]),
        .Q(p_1_in[27]),
        .R(1'b0));
  FDRE \sECCIn_reg[4] 
       (.C(video_aclk),
        .CE(\sDataIn[23]_i_1_n_0 ),
        .D(D[28]),
        .Q(p_1_in[28]),
        .R(1'b0));
  FDRE \sECCIn_reg[5] 
       (.C(video_aclk),
        .CE(\sDataIn[23]_i_1_n_0 ),
        .D(D[29]),
        .Q(p_1_in[29]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \sErrSyndrome[0]_i_1 
       (.I0(\sErrSyndrome[1]_i_2_n_0 ),
        .I1(\sErrSyndrome[0]_i_2_n_0 ),
        .I2(p_1_in[11]),
        .I3(p_1_in[24]),
        .I4(p_1_in[2]),
        .O(sErrSyndrome0[0]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \sErrSyndrome[0]_i_2 
       (.I0(p_1_in[13]),
        .I1(p_1_in[7]),
        .I2(p_1_in[21]),
        .I3(p_1_in[22]),
        .I4(p_1_in[16]),
        .I5(p_1_in[5]),
        .O(\sErrSyndrome[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \sErrSyndrome[1]_i_1 
       (.I0(\sErrSyndrome[1]_i_2_n_0 ),
        .I1(\sErrSyndrome[1]_i_3_n_0 ),
        .I2(p_1_in[14]),
        .I3(p_1_in[25]),
        .I4(p_1_in[12]),
        .O(sErrSyndrome0[1]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \sErrSyndrome[1]_i_2 
       (.I0(p_1_in[20]),
        .I1(p_1_in[1]),
        .I2(p_1_in[0]),
        .I3(p_1_in[10]),
        .I4(p_1_in[23]),
        .I5(p_1_in[4]),
        .O(\sErrSyndrome[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \sErrSyndrome[1]_i_3 
       (.I0(p_1_in[17]),
        .I1(p_1_in[8]),
        .I2(p_1_in[21]),
        .I3(p_1_in[22]),
        .I4(p_1_in[6]),
        .I5(p_1_in[3]),
        .O(\sErrSyndrome[1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \sErrSyndrome[2]_i_1 
       (.I0(\sErrSyndrome[2]_i_2_n_0 ),
        .I1(\sErrSyndrome[2]_i_3_n_0 ),
        .I2(p_1_in[26]),
        .I3(p_1_in[21]),
        .O(sErrSyndrome0[2]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \sErrSyndrome[2]_i_2 
       (.I0(p_1_in[18]),
        .I1(p_1_in[15]),
        .I2(p_1_in[0]),
        .I3(p_1_in[2]),
        .I4(p_1_in[22]),
        .I5(p_1_in[20]),
        .O(\sErrSyndrome[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \sErrSyndrome[2]_i_3 
       (.I0(p_1_in[11]),
        .I1(p_1_in[12]),
        .I2(p_1_in[3]),
        .I3(p_1_in[9]),
        .I4(p_1_in[5]),
        .I5(p_1_in[6]),
        .O(\sErrSyndrome[2]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \sErrSyndrome[3]_i_1 
       (.I0(\sErrSyndrome[3]_i_2_n_0 ),
        .I1(\sErrSyndrome[3]_i_3_n_0 ),
        .I2(p_1_in[27]),
        .I3(p_1_in[19]),
        .O(sErrSyndrome0[3]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \sErrSyndrome[3]_i_2 
       (.I0(p_1_in[20]),
        .I1(p_1_in[1]),
        .I2(p_1_in[7]),
        .I3(p_1_in[14]),
        .I4(p_1_in[23]),
        .I5(p_1_in[2]),
        .O(\sErrSyndrome[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \sErrSyndrome[3]_i_3 
       (.I0(p_1_in[13]),
        .I1(p_1_in[8]),
        .I2(p_1_in[21]),
        .I3(p_1_in[15]),
        .I4(p_1_in[3]),
        .I5(p_1_in[9]),
        .O(\sErrSyndrome[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \sErrSyndrome[4]_i_1 
       (.I0(\sErrSyndrome[4]_i_2_n_0 ),
        .I1(\sErrSyndrome[4]_i_3_n_0 ),
        .I2(p_1_in[28]),
        .I3(p_1_in[20]),
        .O(sErrSyndrome0[4]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \sErrSyndrome[4]_i_2 
       (.I0(p_1_in[4]),
        .I1(p_1_in[23]),
        .I2(p_1_in[16]),
        .I3(p_1_in[5]),
        .I4(p_1_in[7]),
        .I5(p_1_in[8]),
        .O(\sErrSyndrome[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \sErrSyndrome[4]_i_3 
       (.I0(p_1_in[6]),
        .I1(p_1_in[17]),
        .I2(p_1_in[22]),
        .I3(p_1_in[19]),
        .I4(p_1_in[9]),
        .I5(p_1_in[18]),
        .O(\sErrSyndrome[4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \sErrSyndrome[5]_i_1 
       (.I0(\sErrSyndrome[5]_i_2_n_0 ),
        .I1(\sErrSyndrome[5]_i_3_n_0 ),
        .I2(p_1_in[29]),
        .I3(p_1_in[23]),
        .O(sErrSyndrome0[5]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \sErrSyndrome[5]_i_2 
       (.I0(p_1_in[12]),
        .I1(p_1_in[10]),
        .I2(p_1_in[13]),
        .I3(p_1_in[16]),
        .I4(p_1_in[11]),
        .I5(p_1_in[14]),
        .O(\sErrSyndrome[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \sErrSyndrome[5]_i_3 
       (.I0(p_1_in[21]),
        .I1(p_1_in[17]),
        .I2(p_1_in[22]),
        .I3(p_1_in[19]),
        .I4(p_1_in[15]),
        .I5(p_1_in[18]),
        .O(\sErrSyndrome[5]_i_3_n_0 ));
  FDRE \sErrSyndrome_reg[0] 
       (.C(video_aclk),
        .CE(sErrSyndrome),
        .D(sErrSyndrome0[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \sErrSyndrome_reg[1] 
       (.C(video_aclk),
        .CE(sErrSyndrome),
        .D(sErrSyndrome0[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \sErrSyndrome_reg[2] 
       (.C(video_aclk),
        .CE(sErrSyndrome),
        .D(sErrSyndrome0[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \sErrSyndrome_reg[3] 
       (.C(video_aclk),
        .CE(sErrSyndrome),
        .D(sErrSyndrome0[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \sErrSyndrome_reg[4] 
       (.C(video_aclk),
        .CE(sErrSyndrome),
        .D(sErrSyndrome0[4]),
        .Q(\sErrSyndrome_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \sErrSyndrome_reg[5] 
       (.C(video_aclk),
        .CE(sErrSyndrome),
        .D(sErrSyndrome0[5]),
        .Q(\sErrSyndrome_reg_n_0_[5] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h1)) 
    sError_i_2
       (.I0(\sErrSyndrome_reg_n_0_[4] ),
        .I1(\sErrSyndrome_reg_n_0_[5] ),
        .O(\sErrSyndrome_reg[4]_0 ));
  FDRE sError_reg
       (.C(video_aclk),
        .CE(1'b1),
        .D(sError_reg_1),
        .Q(sError_reg_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFEFFFFFF01000000)) 
    \sHeaderOut[0]_i_1 
       (.I0(\sHeaderOut[9]_i_3_n_0 ),
        .I1(\sHeaderOut[23]_i_3_n_0 ),
        .I2(\sHeaderOut[23]_i_4_n_0 ),
        .I3(\sHeaderOut[23]_i_2_n_0 ),
        .I4(\sHeaderOut[9]_i_2_n_0 ),
        .I5(p_1_in[0]),
        .O(\sHeaderOut[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF7FFF00008000)) 
    \sHeaderOut[10]_i_1 
       (.I0(\sHeaderOut[23]_i_2_n_0 ),
        .I1(\sHeaderOut[23]_i_3_n_0 ),
        .I2(\sHeaderOut[23]_i_4_n_0 ),
        .I3(\sHeaderOut[23]_i_5_n_0 ),
        .I4(\sHeaderOut[23]_i_6_n_0 ),
        .I5(p_1_in[10]),
        .O(\sHeaderOut[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00004000)) 
    \sHeaderOut[11]_i_1 
       (.I0(\sHeaderOut[23]_i_2_n_0 ),
        .I1(\sHeaderOut[23]_i_3_n_0 ),
        .I2(\sHeaderOut[23]_i_4_n_0 ),
        .I3(\sHeaderOut[23]_i_5_n_0 ),
        .I4(\sHeaderOut[23]_i_6_n_0 ),
        .I5(p_1_in[11]),
        .O(\sHeaderOut[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00004000)) 
    \sHeaderOut[12]_i_1 
       (.I0(\sHeaderOut[23]_i_3_n_0 ),
        .I1(\sHeaderOut[23]_i_2_n_0 ),
        .I2(\sHeaderOut[23]_i_4_n_0 ),
        .I3(\sHeaderOut[23]_i_5_n_0 ),
        .I4(\sHeaderOut[23]_i_6_n_0 ),
        .I5(p_1_in[12]),
        .O(\sHeaderOut[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFF00001000)) 
    \sHeaderOut[13]_i_1 
       (.I0(\sHeaderOut[23]_i_3_n_0 ),
        .I1(\sHeaderOut[23]_i_2_n_0 ),
        .I2(\sHeaderOut[23]_i_4_n_0 ),
        .I3(\sHeaderOut[23]_i_5_n_0 ),
        .I4(\sHeaderOut[23]_i_6_n_0 ),
        .I5(p_1_in[13]),
        .O(\sHeaderOut[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF7FF00000800)) 
    \sHeaderOut[14]_i_1 
       (.I0(\sHeaderOut[23]_i_2_n_0 ),
        .I1(\sHeaderOut[23]_i_3_n_0 ),
        .I2(\sHeaderOut[23]_i_4_n_0 ),
        .I3(\sHeaderOut[23]_i_5_n_0 ),
        .I4(\sHeaderOut[23]_i_6_n_0 ),
        .I5(p_1_in[14]),
        .O(\sHeaderOut[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000400)) 
    \sHeaderOut[15]_i_1 
       (.I0(\sHeaderOut[23]_i_2_n_0 ),
        .I1(\sHeaderOut[23]_i_3_n_0 ),
        .I2(\sHeaderOut[23]_i_4_n_0 ),
        .I3(\sHeaderOut[23]_i_5_n_0 ),
        .I4(\sHeaderOut[23]_i_6_n_0 ),
        .I5(p_1_in[15]),
        .O(\sHeaderOut[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000400)) 
    \sHeaderOut[16]_i_1 
       (.I0(\sHeaderOut[23]_i_3_n_0 ),
        .I1(\sHeaderOut[23]_i_2_n_0 ),
        .I2(\sHeaderOut[23]_i_4_n_0 ),
        .I3(\sHeaderOut[23]_i_5_n_0 ),
        .I4(\sHeaderOut[23]_i_6_n_0 ),
        .I5(p_1_in[16]),
        .O(\sHeaderOut[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000100)) 
    \sHeaderOut[17]_i_1 
       (.I0(\sHeaderOut[23]_i_3_n_0 ),
        .I1(\sHeaderOut[23]_i_2_n_0 ),
        .I2(\sHeaderOut[23]_i_4_n_0 ),
        .I3(\sHeaderOut[23]_i_5_n_0 ),
        .I4(\sHeaderOut[23]_i_6_n_0 ),
        .I5(p_1_in[17]),
        .O(\sHeaderOut[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF7F00000080)) 
    \sHeaderOut[18]_i_1 
       (.I0(\sHeaderOut[23]_i_2_n_0 ),
        .I1(\sHeaderOut[23]_i_3_n_0 ),
        .I2(\sHeaderOut[23]_i_4_n_0 ),
        .I3(\sHeaderOut[23]_i_5_n_0 ),
        .I4(\sHeaderOut[23]_i_6_n_0 ),
        .I5(p_1_in[18]),
        .O(\sHeaderOut[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000040)) 
    \sHeaderOut[19]_i_1 
       (.I0(\sHeaderOut[23]_i_2_n_0 ),
        .I1(\sHeaderOut[23]_i_3_n_0 ),
        .I2(\sHeaderOut[23]_i_4_n_0 ),
        .I3(\sHeaderOut[23]_i_5_n_0 ),
        .I4(\sHeaderOut[23]_i_6_n_0 ),
        .I5(p_1_in[19]),
        .O(\sHeaderOut[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFF00010000)) 
    \sHeaderOut[1]_i_1 
       (.I0(\sHeaderOut[9]_i_3_n_0 ),
        .I1(\sHeaderOut[23]_i_3_n_0 ),
        .I2(\sHeaderOut[23]_i_4_n_0 ),
        .I3(\sHeaderOut[23]_i_2_n_0 ),
        .I4(\sHeaderOut[9]_i_2_n_0 ),
        .I5(p_1_in[1]),
        .O(\sHeaderOut[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000040)) 
    \sHeaderOut[20]_i_1 
       (.I0(\sHeaderOut[23]_i_3_n_0 ),
        .I1(\sHeaderOut[23]_i_2_n_0 ),
        .I2(\sHeaderOut[23]_i_4_n_0 ),
        .I3(\sHeaderOut[23]_i_5_n_0 ),
        .I4(\sHeaderOut[23]_i_6_n_0 ),
        .I5(p_1_in[20]),
        .O(\sHeaderOut[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000010)) 
    \sHeaderOut[21]_i_1 
       (.I0(\sHeaderOut[23]_i_3_n_0 ),
        .I1(\sHeaderOut[23]_i_2_n_0 ),
        .I2(\sHeaderOut[23]_i_4_n_0 ),
        .I3(\sHeaderOut[23]_i_5_n_0 ),
        .I4(\sHeaderOut[23]_i_6_n_0 ),
        .I5(p_1_in[21]),
        .O(\sHeaderOut[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF700000008)) 
    \sHeaderOut[22]_i_1 
       (.I0(\sHeaderOut[23]_i_2_n_0 ),
        .I1(\sHeaderOut[23]_i_3_n_0 ),
        .I2(\sHeaderOut[23]_i_4_n_0 ),
        .I3(\sHeaderOut[23]_i_5_n_0 ),
        .I4(\sHeaderOut[23]_i_6_n_0 ),
        .I5(p_1_in[22]),
        .O(\sHeaderOut[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000004)) 
    \sHeaderOut[23]_i_1 
       (.I0(\sHeaderOut[23]_i_2_n_0 ),
        .I1(\sHeaderOut[23]_i_3_n_0 ),
        .I2(\sHeaderOut[23]_i_4_n_0 ),
        .I3(\sHeaderOut[23]_i_5_n_0 ),
        .I4(\sHeaderOut[23]_i_6_n_0 ),
        .I5(p_1_in[23]),
        .O(\sHeaderOut[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0092044984492196)) 
    \sHeaderOut[23]_i_2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(\sErrSyndrome_reg_n_0_[4] ),
        .I5(\sErrSyndrome_reg_n_0_[5] ),
        .O(\sHeaderOut[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9FEDEBD6FDBEDE68)) 
    \sHeaderOut[23]_i_3 
       (.I0(\sErrSyndrome_reg_n_0_[4] ),
        .I1(\sErrSyndrome_reg_n_0_[5] ),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(Q[0]),
        .O(\sHeaderOut[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0810120886206080)) 
    \sHeaderOut[23]_i_4 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\sErrSyndrome_reg_n_0_[5] ),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(\sErrSyndrome_reg_n_0_[4] ),
        .O(\sHeaderOut[23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h977DFF96FF96D668)) 
    \sHeaderOut[23]_i_5 
       (.I0(\sErrSyndrome_reg_n_0_[4] ),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(\sErrSyndrome_reg_n_0_[5] ),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\sHeaderOut[23]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hD77B7BB6FBB6B668)) 
    \sHeaderOut[23]_i_6 
       (.I0(Q[0]),
        .I1(\sErrSyndrome_reg_n_0_[5] ),
        .I2(Q[3]),
        .I3(\sErrSyndrome_reg_n_0_[4] ),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(\sHeaderOut[23]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF4000)) 
    \sHeaderOut[2]_i_1 
       (.I0(\sHeaderOut[9]_i_2_n_0 ),
        .I1(\sHeaderOut[23]_i_2_n_0 ),
        .I2(\sHeaderOut[23]_i_3_n_0 ),
        .I3(\sHeaderOut[9]_i_3_n_0 ),
        .I4(p_1_in[2]),
        .O(\sHeaderOut[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF1000)) 
    \sHeaderOut[3]_i_1 
       (.I0(\sHeaderOut[9]_i_2_n_0 ),
        .I1(\sHeaderOut[23]_i_2_n_0 ),
        .I2(\sHeaderOut[23]_i_3_n_0 ),
        .I3(\sHeaderOut[9]_i_3_n_0 ),
        .I4(p_1_in[3]),
        .O(\sHeaderOut[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF1000)) 
    \sHeaderOut[4]_i_1 
       (.I0(\sHeaderOut[9]_i_2_n_0 ),
        .I1(\sHeaderOut[23]_i_3_n_0 ),
        .I2(\sHeaderOut[23]_i_2_n_0 ),
        .I3(\sHeaderOut[9]_i_3_n_0 ),
        .I4(p_1_in[4]),
        .O(\sHeaderOut[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF0100)) 
    \sHeaderOut[5]_i_1 
       (.I0(\sHeaderOut[9]_i_2_n_0 ),
        .I1(\sHeaderOut[23]_i_3_n_0 ),
        .I2(\sHeaderOut[23]_i_2_n_0 ),
        .I3(\sHeaderOut[9]_i_3_n_0 ),
        .I4(p_1_in[5]),
        .O(\sHeaderOut[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF0100)) 
    \sHeaderOut[8]_i_1 
       (.I0(\sHeaderOut[9]_i_2_n_0 ),
        .I1(\sHeaderOut[9]_i_3_n_0 ),
        .I2(\sHeaderOut[23]_i_3_n_0 ),
        .I3(\sHeaderOut[23]_i_2_n_0 ),
        .I4(p_1_in[8]),
        .O(\sHeaderOut[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    \sHeaderOut[9]_i_1 
       (.I0(\sHeaderOut[9]_i_2_n_0 ),
        .I1(\sHeaderOut[9]_i_3_n_0 ),
        .I2(\sHeaderOut[23]_i_3_n_0 ),
        .I3(\sHeaderOut[23]_i_2_n_0 ),
        .I4(p_1_in[9]),
        .O(\sHeaderOut[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEB9FFFFF977F)) 
    \sHeaderOut[9]_i_2 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(\sErrSyndrome_reg_n_0_[4] ),
        .I3(Q[3]),
        .I4(\sErrSyndrome_reg_n_0_[5] ),
        .I5(Q[0]),
        .O(\sHeaderOut[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0890926996616197)) 
    \sHeaderOut[9]_i_3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\sErrSyndrome_reg_n_0_[5] ),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(\sErrSyndrome_reg_n_0_[4] ),
        .O(\sHeaderOut[9]_i_3_n_0 ));
  FDRE \sHeaderOut_reg[0] 
       (.C(video_aclk),
        .CE(\FSM_onehot_sState_reg[3]_0 ),
        .D(\sHeaderOut[0]_i_1_n_0 ),
        .Q(\sHeaderOut_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \sHeaderOut_reg[10] 
       (.C(video_aclk),
        .CE(\FSM_onehot_sState_reg[3]_0 ),
        .D(\sHeaderOut[10]_i_1_n_0 ),
        .Q(\sHeaderOut_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \sHeaderOut_reg[11] 
       (.C(video_aclk),
        .CE(\FSM_onehot_sState_reg[3]_0 ),
        .D(\sHeaderOut[11]_i_1_n_0 ),
        .Q(\sHeaderOut_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \sHeaderOut_reg[12] 
       (.C(video_aclk),
        .CE(\FSM_onehot_sState_reg[3]_0 ),
        .D(\sHeaderOut[12]_i_1_n_0 ),
        .Q(\sHeaderOut_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \sHeaderOut_reg[13] 
       (.C(video_aclk),
        .CE(\FSM_onehot_sState_reg[3]_0 ),
        .D(\sHeaderOut[13]_i_1_n_0 ),
        .Q(\sHeaderOut_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \sHeaderOut_reg[14] 
       (.C(video_aclk),
        .CE(\FSM_onehot_sState_reg[3]_0 ),
        .D(\sHeaderOut[14]_i_1_n_0 ),
        .Q(\sHeaderOut_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \sHeaderOut_reg[15] 
       (.C(video_aclk),
        .CE(\FSM_onehot_sState_reg[3]_0 ),
        .D(\sHeaderOut[15]_i_1_n_0 ),
        .Q(\sHeaderOut_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \sHeaderOut_reg[16] 
       (.C(video_aclk),
        .CE(\FSM_onehot_sState_reg[3]_0 ),
        .D(\sHeaderOut[16]_i_1_n_0 ),
        .Q(\sHeaderOut_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \sHeaderOut_reg[17] 
       (.C(video_aclk),
        .CE(\FSM_onehot_sState_reg[3]_0 ),
        .D(\sHeaderOut[17]_i_1_n_0 ),
        .Q(\sHeaderOut_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \sHeaderOut_reg[18] 
       (.C(video_aclk),
        .CE(\FSM_onehot_sState_reg[3]_0 ),
        .D(\sHeaderOut[18]_i_1_n_0 ),
        .Q(\sHeaderOut_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \sHeaderOut_reg[19] 
       (.C(video_aclk),
        .CE(\FSM_onehot_sState_reg[3]_0 ),
        .D(\sHeaderOut[19]_i_1_n_0 ),
        .Q(\sHeaderOut_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \sHeaderOut_reg[1] 
       (.C(video_aclk),
        .CE(\FSM_onehot_sState_reg[3]_0 ),
        .D(\sHeaderOut[1]_i_1_n_0 ),
        .Q(\sHeaderOut_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \sHeaderOut_reg[20] 
       (.C(video_aclk),
        .CE(\FSM_onehot_sState_reg[3]_0 ),
        .D(\sHeaderOut[20]_i_1_n_0 ),
        .Q(\sHeaderOut_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \sHeaderOut_reg[21] 
       (.C(video_aclk),
        .CE(\FSM_onehot_sState_reg[3]_0 ),
        .D(\sHeaderOut[21]_i_1_n_0 ),
        .Q(\sHeaderOut_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \sHeaderOut_reg[22] 
       (.C(video_aclk),
        .CE(\FSM_onehot_sState_reg[3]_0 ),
        .D(\sHeaderOut[22]_i_1_n_0 ),
        .Q(\sHeaderOut_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \sHeaderOut_reg[23] 
       (.C(video_aclk),
        .CE(\FSM_onehot_sState_reg[3]_0 ),
        .D(\sHeaderOut[23]_i_1_n_0 ),
        .Q(\sHeaderOut_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \sHeaderOut_reg[2] 
       (.C(video_aclk),
        .CE(\FSM_onehot_sState_reg[3]_0 ),
        .D(\sHeaderOut[2]_i_1_n_0 ),
        .Q(\sHeaderOut_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \sHeaderOut_reg[3] 
       (.C(video_aclk),
        .CE(\FSM_onehot_sState_reg[3]_0 ),
        .D(\sHeaderOut[3]_i_1_n_0 ),
        .Q(\sHeaderOut_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \sHeaderOut_reg[4] 
       (.C(video_aclk),
        .CE(\FSM_onehot_sState_reg[3]_0 ),
        .D(\sHeaderOut[4]_i_1_n_0 ),
        .Q(\sHeaderOut_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \sHeaderOut_reg[5] 
       (.C(video_aclk),
        .CE(\FSM_onehot_sState_reg[3]_0 ),
        .D(\sHeaderOut[5]_i_1_n_0 ),
        .Q(\sHeaderOut_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \sHeaderOut_reg[8] 
       (.C(video_aclk),
        .CE(\FSM_onehot_sState_reg[3]_0 ),
        .D(\sHeaderOut[8]_i_1_n_0 ),
        .Q(\sHeaderOut_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \sHeaderOut_reg[9] 
       (.C(video_aclk),
        .CE(\FSM_onehot_sState_reg[3]_0 ),
        .D(\sHeaderOut[9]_i_1_n_0 ),
        .Q(\sHeaderOut_reg_n_0_[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0996966996696997)) 
    sValid_i_2
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(\sErrSyndrome_reg_n_0_[4] ),
        .I5(\sErrSyndrome_reg_n_0_[5] ),
        .O(\sErrSyndrome_reg[0]_0 ));
  FDRE sValid_reg
       (.C(video_aclk),
        .CE(1'b1),
        .D(sValid_reg_4),
        .Q(sValid_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "LLP" *) 
module system_MIPI_CSI_2_RX_0_0_LLP
   (out,
    \oSyncStages_reg[1] ,
    m_axis_tvalid,
    m_axis_tlast,
    s_axis_tready,
    m_axis_video_tvalid,
    m_axis_video_tdata,
    m_axis_video_tlast,
    m_axis_video_tuser,
    mFmt_Tvalid_reg_0,
    mFmt_Tlast_reg_0,
    mReg_Tlast_reg_0,
    \goreg_dm.dout_i_reg[0] ,
    sValid_reg,
    sError_reg,
    mKeep_reg_0,
    mIsHeader_reg_0,
    mReg_Tvalid_reg_0,
    \mReg_Tuser_reg[0]_0 ,
    \sErrSyndrome_reg[3] ,
    \FSM_onehot_sState_reg[3] ,
    \delay_reg[1]_0 ,
    \RAW10Formatter.cnt_reg[2]_0 ,
    \RAW10Formatter.cnt_reg[1]_0 ,
    \RAW10Formatter.cnt_reg[0]_0 ,
    \sErrSyndrome_reg[0] ,
    \sErrSyndrome_reg[4] ,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg ,
    mReg_Tuser0,
    mIsHeader0,
    mKeep0_out,
    video_aclk,
    RxByteClkHS,
    s_aresetn,
    s_axis_tvalid,
    Q,
    \gpr1.dout_i_reg[1] ,
    s_axis_tlast,
    m_axis_video_tready,
    sValid_reg_0,
    sError_reg_0,
    mKeep_reg_1,
    mIsHeader_reg_1,
    mReg_Tvalid_reg_1,
    \mReg_Tuser_reg[0]_1 ,
    mFmt_Tvalid_reg_1,
    mFmt_Tlast_reg_1,
    AS);
  output [0:0]out;
  output [0:0]\oSyncStages_reg[1] ;
  output m_axis_tvalid;
  output m_axis_tlast;
  output s_axis_tready;
  output m_axis_video_tvalid;
  output [39:0]m_axis_video_tdata;
  output m_axis_video_tlast;
  output [0:0]m_axis_video_tuser;
  output mFmt_Tvalid_reg_0;
  output mFmt_Tlast_reg_0;
  output mReg_Tlast_reg_0;
  output \goreg_dm.dout_i_reg[0] ;
  output sValid_reg;
  output sError_reg;
  output mKeep_reg_0;
  output mIsHeader_reg_0;
  output mReg_Tvalid_reg_0;
  output \mReg_Tuser_reg[0]_0 ;
  output [3:0]\sErrSyndrome_reg[3] ;
  output [0:0]\FSM_onehot_sState_reg[3] ;
  output [0:0]\delay_reg[1]_0 ;
  output \RAW10Formatter.cnt_reg[2]_0 ;
  output \RAW10Formatter.cnt_reg[1]_0 ;
  output \RAW10Formatter.cnt_reg[0]_0 ;
  output \sErrSyndrome_reg[0] ;
  output \sErrSyndrome_reg[4] ;
  output \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg ;
  output mReg_Tuser0;
  output mIsHeader0;
  output mKeep0_out;
  input video_aclk;
  input RxByteClkHS;
  input s_aresetn;
  input s_axis_tvalid;
  input [31:0]Q;
  input [3:0]\gpr1.dout_i_reg[1] ;
  input s_axis_tlast;
  input m_axis_video_tready;
  input sValid_reg_0;
  input sError_reg_0;
  input mKeep_reg_1;
  input mIsHeader_reg_1;
  input mReg_Tvalid_reg_1;
  input \mReg_Tuser_reg[0]_1 ;
  input mFmt_Tvalid_reg_1;
  input mFmt_Tlast_reg_1;
  input [0:0]AS;

  wire [0:0]AS;
  wire DataFIFO_n_10;
  wire DataFIFO_n_11;
  wire DataFIFO_n_12;
  wire DataFIFO_n_13;
  wire DataFIFO_n_14;
  wire DataFIFO_n_15;
  wire DataFIFO_n_16;
  wire DataFIFO_n_17;
  wire DataFIFO_n_18;
  wire DataFIFO_n_19;
  wire DataFIFO_n_2;
  wire DataFIFO_n_20;
  wire DataFIFO_n_21;
  wire DataFIFO_n_22;
  wire DataFIFO_n_23;
  wire DataFIFO_n_24;
  wire DataFIFO_n_25;
  wire DataFIFO_n_26;
  wire DataFIFO_n_27;
  wire DataFIFO_n_28;
  wire DataFIFO_n_29;
  wire DataFIFO_n_3;
  wire DataFIFO_n_30;
  wire DataFIFO_n_31;
  wire DataFIFO_n_32;
  wire DataFIFO_n_33;
  wire DataFIFO_n_34;
  wire DataFIFO_n_35;
  wire DataFIFO_n_36;
  wire DataFIFO_n_37;
  wire DataFIFO_n_4;
  wire DataFIFO_n_5;
  wire DataFIFO_n_6;
  wire DataFIFO_n_7;
  wire DataFIFO_n_8;
  wire DataFIFO_n_9;
  wire ECCx_n_10;
  wire ECCx_n_13;
  wire ECCx_n_14;
  wire ECCx_n_15;
  wire ECCx_n_16;
  wire ECCx_n_17;
  wire ECCx_n_18;
  wire ECCx_n_19;
  wire ECCx_n_20;
  wire ECCx_n_21;
  wire ECCx_n_22;
  wire ECCx_n_23;
  wire ECCx_n_24;
  wire ECCx_n_25;
  wire ECCx_n_26;
  wire ECCx_n_27;
  wire ECCx_n_28;
  wire ECCx_n_7;
  wire ECCx_n_9;
  wire [0:0]\FSM_onehot_sState_reg[3] ;
  wire [31:0]Q;
  wire \RAW10Formatter.cnt[2]_i_2_n_0 ;
  wire \RAW10Formatter.cnt_reg[0]_0 ;
  wire \RAW10Formatter.cnt_reg[1]_0 ;
  wire \RAW10Formatter.cnt_reg[2]_0 ;
  wire \RAW10Formatter.pix_mux[1][2]_i_2_n_0 ;
  wire \RAW10Formatter.pix_mux[1][3]_i_2_n_0 ;
  wire \RAW10Formatter.pix_mux[1][4]_i_2_n_0 ;
  wire \RAW10Formatter.pix_mux[1][5]_i_2_n_0 ;
  wire \RAW10Formatter.pix_mux[1][6]_i_2_n_0 ;
  wire \RAW10Formatter.pix_mux[1][7]_i_2_n_0 ;
  wire \RAW10Formatter.pix_mux[1][8]_i_2_n_0 ;
  wire \RAW10Formatter.pix_mux[1][9]_i_3_n_0 ;
  wire \RAW10Formatter.pix_mux[2][2]_i_2_n_0 ;
  wire \RAW10Formatter.pix_mux[2][3]_i_2_n_0 ;
  wire \RAW10Formatter.pix_mux[2][4]_i_2_n_0 ;
  wire \RAW10Formatter.pix_mux[2][5]_i_2_n_0 ;
  wire \RAW10Formatter.pix_mux[2][6]_i_2_n_0 ;
  wire \RAW10Formatter.pix_mux[2][7]_i_2_n_0 ;
  wire \RAW10Formatter.pix_mux[2][8]_i_2_n_0 ;
  wire \RAW10Formatter.pix_mux[2][9]_i_3_n_0 ;
  wire \RAW10Formatter.pix_mux[3][2]_i_2_n_0 ;
  wire \RAW10Formatter.pix_mux[3][3]_i_2_n_0 ;
  wire \RAW10Formatter.pix_mux[3][4]_i_2_n_0 ;
  wire \RAW10Formatter.pix_mux[3][5]_i_2_n_0 ;
  wire \RAW10Formatter.pix_mux[3][6]_i_2_n_0 ;
  wire \RAW10Formatter.pix_mux[3][7]_i_2_n_0 ;
  wire \RAW10Formatter.pix_mux[3][8]_i_2_n_0 ;
  wire \RAW10Formatter.pix_mux[3][9]_i_3_n_0 ;
  wire \RAW10Formatter.pix_mux_reg_n_0_[3][2] ;
  wire \RAW10Formatter.pix_mux_reg_n_0_[3][3] ;
  wire \RAW10Formatter.pix_mux_reg_n_0_[3][4] ;
  wire \RAW10Formatter.pix_mux_reg_n_0_[3][5] ;
  wire \RAW10Formatter.pix_mux_reg_n_0_[3][6] ;
  wire \RAW10Formatter.pix_mux_reg_n_0_[3][7] ;
  wire \RAW10Formatter.pix_mux_reg_n_0_[3][8] ;
  wire \RAW10Formatter.pix_mux_reg_n_0_[3][9] ;
  wire RxByteClkHS;
  wire SyncMReset_n_1;
  wire SyncMReset_n_11;
  wire SyncMReset_n_2;
  wire SyncMReset_n_3;
  wire SyncMReset_n_4;
  wire SyncMReset_n_5;
  wire SyncMReset_n_6;
  wire SyncMReset_n_7;
  wire SyncMReset_n_8;
  wire SyncMReset_n_9;
  wire cnt;
  wire [29:2]data1;
  wire [0:0]delay;
  wire [0:0]\delay_reg[1]_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg ;
  wire \goreg_dm.dout_i_reg[0] ;
  wire [3:0]\gpr1.dout_i_reg[1] ;
  wire mFlush_reg_n_0;
  wire [39:0]mFmt_Tdata;
  wire \mFmt_Tdata[39]_i_3_n_0 ;
  wire \mFmt_Tdata[39]_i_4_n_0 ;
  wire \mFmt_Tdata_reg_n_0_[0] ;
  wire \mFmt_Tdata_reg_n_0_[10] ;
  wire \mFmt_Tdata_reg_n_0_[11] ;
  wire \mFmt_Tdata_reg_n_0_[12] ;
  wire \mFmt_Tdata_reg_n_0_[13] ;
  wire \mFmt_Tdata_reg_n_0_[14] ;
  wire \mFmt_Tdata_reg_n_0_[15] ;
  wire \mFmt_Tdata_reg_n_0_[16] ;
  wire \mFmt_Tdata_reg_n_0_[17] ;
  wire \mFmt_Tdata_reg_n_0_[18] ;
  wire \mFmt_Tdata_reg_n_0_[19] ;
  wire \mFmt_Tdata_reg_n_0_[1] ;
  wire \mFmt_Tdata_reg_n_0_[20] ;
  wire \mFmt_Tdata_reg_n_0_[21] ;
  wire \mFmt_Tdata_reg_n_0_[22] ;
  wire \mFmt_Tdata_reg_n_0_[23] ;
  wire \mFmt_Tdata_reg_n_0_[24] ;
  wire \mFmt_Tdata_reg_n_0_[25] ;
  wire \mFmt_Tdata_reg_n_0_[26] ;
  wire \mFmt_Tdata_reg_n_0_[27] ;
  wire \mFmt_Tdata_reg_n_0_[28] ;
  wire \mFmt_Tdata_reg_n_0_[29] ;
  wire \mFmt_Tdata_reg_n_0_[2] ;
  wire \mFmt_Tdata_reg_n_0_[30] ;
  wire \mFmt_Tdata_reg_n_0_[31] ;
  wire \mFmt_Tdata_reg_n_0_[32] ;
  wire \mFmt_Tdata_reg_n_0_[33] ;
  wire \mFmt_Tdata_reg_n_0_[34] ;
  wire \mFmt_Tdata_reg_n_0_[35] ;
  wire \mFmt_Tdata_reg_n_0_[36] ;
  wire \mFmt_Tdata_reg_n_0_[37] ;
  wire \mFmt_Tdata_reg_n_0_[38] ;
  wire \mFmt_Tdata_reg_n_0_[39] ;
  wire \mFmt_Tdata_reg_n_0_[3] ;
  wire \mFmt_Tdata_reg_n_0_[4] ;
  wire \mFmt_Tdata_reg_n_0_[5] ;
  wire \mFmt_Tdata_reg_n_0_[6] ;
  wire \mFmt_Tdata_reg_n_0_[7] ;
  wire \mFmt_Tdata_reg_n_0_[8] ;
  wire \mFmt_Tdata_reg_n_0_[9] ;
  wire mFmt_Tlast_reg_0;
  wire mFmt_Tlast_reg_1;
  wire \mFmt_Tuser_reg_n_0_[0] ;
  wire mFmt_Tvalid_reg_0;
  wire mFmt_Tvalid_reg_1;
  wire mIsHeader0;
  wire mIsHeader_reg_0;
  wire mIsHeader_reg_1;
  wire mKeep0_out;
  wire mKeep_reg_0;
  wire mKeep_reg_1;
  wire \mReg_Tdata_reg_n_0_[0] ;
  wire \mReg_Tdata_reg_n_0_[10] ;
  wire \mReg_Tdata_reg_n_0_[11] ;
  wire \mReg_Tdata_reg_n_0_[12] ;
  wire \mReg_Tdata_reg_n_0_[13] ;
  wire \mReg_Tdata_reg_n_0_[14] ;
  wire \mReg_Tdata_reg_n_0_[15] ;
  wire \mReg_Tdata_reg_n_0_[16] ;
  wire \mReg_Tdata_reg_n_0_[17] ;
  wire \mReg_Tdata_reg_n_0_[18] ;
  wire \mReg_Tdata_reg_n_0_[19] ;
  wire \mReg_Tdata_reg_n_0_[1] ;
  wire \mReg_Tdata_reg_n_0_[20] ;
  wire \mReg_Tdata_reg_n_0_[21] ;
  wire \mReg_Tdata_reg_n_0_[22] ;
  wire \mReg_Tdata_reg_n_0_[23] ;
  wire \mReg_Tdata_reg_n_0_[24] ;
  wire \mReg_Tdata_reg_n_0_[25] ;
  wire \mReg_Tdata_reg_n_0_[26] ;
  wire \mReg_Tdata_reg_n_0_[27] ;
  wire \mReg_Tdata_reg_n_0_[28] ;
  wire \mReg_Tdata_reg_n_0_[29] ;
  wire \mReg_Tdata_reg_n_0_[2] ;
  wire \mReg_Tdata_reg_n_0_[30] ;
  wire \mReg_Tdata_reg_n_0_[31] ;
  wire \mReg_Tdata_reg_n_0_[3] ;
  wire \mReg_Tdata_reg_n_0_[4] ;
  wire \mReg_Tdata_reg_n_0_[5] ;
  wire \mReg_Tdata_reg_n_0_[6] ;
  wire \mReg_Tdata_reg_n_0_[7] ;
  wire \mReg_Tdata_reg_n_0_[8] ;
  wire \mReg_Tdata_reg_n_0_[9] ;
  wire mReg_Tlast_i_2_n_0;
  wire mReg_Tlast_i_3_n_0;
  wire mReg_Tlast_i_4_n_0;
  wire mReg_Tlast_i_5_n_0;
  wire mReg_Tlast_reg_0;
  wire mReg_Tuser0;
  wire \mReg_Tuser_reg[0]_0 ;
  wire \mReg_Tuser_reg[0]_1 ;
  wire mReg_Tvalid_reg_0;
  wire mReg_Tvalid_reg_1;
  wire \mWordCount_reg_n_0_[0] ;
  wire \mWordCount_reg_n_0_[10] ;
  wire \mWordCount_reg_n_0_[11] ;
  wire \mWordCount_reg_n_0_[12] ;
  wire \mWordCount_reg_n_0_[13] ;
  wire \mWordCount_reg_n_0_[14] ;
  wire \mWordCount_reg_n_0_[15] ;
  wire \mWordCount_reg_n_0_[1] ;
  wire \mWordCount_reg_n_0_[2] ;
  wire \mWordCount_reg_n_0_[3] ;
  wire \mWordCount_reg_n_0_[4] ;
  wire \mWordCount_reg_n_0_[5] ;
  wire \mWordCount_reg_n_0_[6] ;
  wire \mWordCount_reg_n_0_[7] ;
  wire \mWordCount_reg_n_0_[8] ;
  wire \mWordCount_reg_n_0_[9] ;
  wire m_axis_tlast;
  wire m_axis_tvalid;
  wire [39:0]m_axis_video_tdata;
  wire m_axis_video_tlast;
  wire m_axis_video_tready;
  wire [0:0]m_axis_video_tuser;
  wire m_axis_video_tvalid;
  wire [0:0]\oSyncStages_reg[1] ;
  wire [0:0]out;
  wire [9:2]\pix_mux[0]_1 ;
  wire [9:2]\pix_mux[1]_0 ;
  wire [9:2]\pix_mux[2]_2 ;
  wire [9:2]\pix_mux[3]_3 ;
  wire sAxisTreadyInt;
  wire \sErrSyndrome_reg[0] ;
  wire [3:0]\sErrSyndrome_reg[3] ;
  wire \sErrSyndrome_reg[4] ;
  wire sError_reg;
  wire sError_reg_0;
  wire sValid_reg;
  wire sValid_reg_0;
  wire s_aresetn;
  wire s_axis_aresetn;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire video_aclk;
  wire [31:0]NLW_LineBufferFIFO_axis_rd_data_count_UNCONNECTED;
  wire [31:0]NLW_LineBufferFIFO_axis_wr_data_count_UNCONNECTED;

  (* CHECK_LICENSE_TYPE = "cdc_fifo,fifo_generator_v13_2_5,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.2" *) 
  system_MIPI_CSI_2_RX_0_0_cdc_fifo DataFIFO
       (.m_aclk(video_aclk),
        .m_axis_tdata({DataFIFO_n_2,DataFIFO_n_3,DataFIFO_n_4,DataFIFO_n_5,DataFIFO_n_6,DataFIFO_n_7,DataFIFO_n_8,DataFIFO_n_9,DataFIFO_n_10,DataFIFO_n_11,DataFIFO_n_12,DataFIFO_n_13,DataFIFO_n_14,DataFIFO_n_15,DataFIFO_n_16,DataFIFO_n_17,DataFIFO_n_18,DataFIFO_n_19,DataFIFO_n_20,DataFIFO_n_21,DataFIFO_n_22,DataFIFO_n_23,DataFIFO_n_24,DataFIFO_n_25,DataFIFO_n_26,DataFIFO_n_27,DataFIFO_n_28,DataFIFO_n_29,DataFIFO_n_30,DataFIFO_n_31,DataFIFO_n_32,DataFIFO_n_33}),
        .m_axis_tkeep({DataFIFO_n_34,DataFIFO_n_35,DataFIFO_n_36,DataFIFO_n_37}),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(ECCx_n_9),
        .m_axis_tvalid(m_axis_tvalid),
        .s_aclk(RxByteClkHS),
        .s_aresetn(s_aresetn),
        .s_axis_tdata(Q),
        .s_axis_tkeep(\gpr1.dout_i_reg[1] ),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(sAxisTreadyInt),
        .s_axis_tvalid(s_axis_tvalid));
  system_MIPI_CSI_2_RX_0_0_ECC ECCx
       (.D({DataFIFO_n_4,DataFIFO_n_5,DataFIFO_n_6,DataFIFO_n_7,DataFIFO_n_8,DataFIFO_n_9,DataFIFO_n_10,DataFIFO_n_11,DataFIFO_n_12,DataFIFO_n_13,DataFIFO_n_14,DataFIFO_n_15,DataFIFO_n_16,DataFIFO_n_17,DataFIFO_n_18,DataFIFO_n_19,DataFIFO_n_20,DataFIFO_n_21,DataFIFO_n_22,DataFIFO_n_23,DataFIFO_n_24,DataFIFO_n_25,DataFIFO_n_26,DataFIFO_n_27,DataFIFO_n_28,DataFIFO_n_29,DataFIFO_n_30,DataFIFO_n_31,DataFIFO_n_32,DataFIFO_n_33}),
        .\FSM_onehot_sState_reg[3]_0 (\FSM_onehot_sState_reg[3] ),
        .O({ECCx_n_13,ECCx_n_14,ECCx_n_15,ECCx_n_16}),
        .Q(\sErrSyndrome_reg[3] ),
        .\goreg_dm.dout_i_reg[0] (ECCx_n_10),
        .mFlush_reg(mKeep_reg_0),
        .mFlush_reg_0(mFlush_reg_n_0),
        .mIsHeader0(mIsHeader0),
        .mKeep0_out(mKeep0_out),
        .mReg_Tuser0(mReg_Tuser0),
        .\mWordCount_reg[0] (\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg ),
        .\mWordCount_reg[11] (\mWordCount_reg_n_0_[8] ),
        .\mWordCount_reg[11]_0 (\mWordCount_reg_n_0_[9] ),
        .\mWordCount_reg[11]_1 (\mWordCount_reg_n_0_[10] ),
        .\mWordCount_reg[11]_2 (\mWordCount_reg_n_0_[11] ),
        .\mWordCount_reg[15] (\mWordCount_reg_n_0_[12] ),
        .\mWordCount_reg[15]_0 (\mWordCount_reg_n_0_[13] ),
        .\mWordCount_reg[15]_1 (\mWordCount_reg_n_0_[14] ),
        .\mWordCount_reg[15]_2 (\mWordCount_reg_n_0_[15] ),
        .\mWordCount_reg[3] (\mWordCount_reg_n_0_[2] ),
        .\mWordCount_reg[3]_0 (\mWordCount_reg_n_0_[3] ),
        .\mWordCount_reg[3]_1 (\mWordCount_reg_n_0_[0] ),
        .\mWordCount_reg[3]_2 (\mWordCount_reg_n_0_[1] ),
        .\mWordCount_reg[7] (\mWordCount_reg_n_0_[4] ),
        .\mWordCount_reg[7]_0 (\mWordCount_reg_n_0_[5] ),
        .\mWordCount_reg[7]_1 (\mWordCount_reg_n_0_[6] ),
        .\mWordCount_reg[7]_2 (\mWordCount_reg_n_0_[7] ),
        .m_axis_tkeep({DataFIFO_n_34,DataFIFO_n_35,DataFIFO_n_36,DataFIFO_n_37}),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(ECCx_n_9),
        .m_axis_tvalid(m_axis_tvalid),
        .out(out),
        .\sECCIn_reg[0]_0 (mIsHeader_reg_0),
        .\sErrSyndrome_reg[0]_0 (\sErrSyndrome_reg[0] ),
        .\sErrSyndrome_reg[4]_0 (\sErrSyndrome_reg[4] ),
        .sError_reg_0(sError_reg),
        .sError_reg_1(sError_reg_0),
        .\sHeaderOut_reg[5]_0 (ECCx_n_7),
        .sValid_reg_0(sValid_reg),
        .sValid_reg_1({ECCx_n_17,ECCx_n_18,ECCx_n_19,ECCx_n_20}),
        .sValid_reg_2({ECCx_n_21,ECCx_n_22,ECCx_n_23,ECCx_n_24}),
        .sValid_reg_3({ECCx_n_25,ECCx_n_26,ECCx_n_27,ECCx_n_28}),
        .sValid_reg_4(sValid_reg_0),
        .s_axis_tready(s_axis_tready),
        .video_aclk(video_aclk));
  (* CHECK_LICENSE_TYPE = "line_buffer,axis_data_fifo_v2_0_4_top,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "axis_data_fifo_v2_0_4_top,Vivado 2020.2" *) 
  system_MIPI_CSI_2_RX_0_0_line_buffer LineBufferFIFO
       (.axis_rd_data_count(NLW_LineBufferFIFO_axis_rd_data_count_UNCONNECTED[31:0]),
        .axis_wr_data_count(NLW_LineBufferFIFO_axis_wr_data_count_UNCONNECTED[31:0]),
        .m_axis_tdata(m_axis_video_tdata),
        .m_axis_tlast(m_axis_video_tlast),
        .m_axis_tready(m_axis_video_tready),
        .m_axis_tuser(m_axis_video_tuser),
        .m_axis_tvalid(m_axis_video_tvalid),
        .s_axis_aclk(video_aclk),
        .s_axis_aresetn(s_axis_aresetn),
        .s_axis_tdata({\mFmt_Tdata_reg_n_0_[39] ,\mFmt_Tdata_reg_n_0_[38] ,\mFmt_Tdata_reg_n_0_[37] ,\mFmt_Tdata_reg_n_0_[36] ,\mFmt_Tdata_reg_n_0_[35] ,\mFmt_Tdata_reg_n_0_[34] ,\mFmt_Tdata_reg_n_0_[33] ,\mFmt_Tdata_reg_n_0_[32] ,\mFmt_Tdata_reg_n_0_[31] ,\mFmt_Tdata_reg_n_0_[30] ,\mFmt_Tdata_reg_n_0_[29] ,\mFmt_Tdata_reg_n_0_[28] ,\mFmt_Tdata_reg_n_0_[27] ,\mFmt_Tdata_reg_n_0_[26] ,\mFmt_Tdata_reg_n_0_[25] ,\mFmt_Tdata_reg_n_0_[24] ,\mFmt_Tdata_reg_n_0_[23] ,\mFmt_Tdata_reg_n_0_[22] ,\mFmt_Tdata_reg_n_0_[21] ,\mFmt_Tdata_reg_n_0_[20] ,\mFmt_Tdata_reg_n_0_[19] ,\mFmt_Tdata_reg_n_0_[18] ,\mFmt_Tdata_reg_n_0_[17] ,\mFmt_Tdata_reg_n_0_[16] ,\mFmt_Tdata_reg_n_0_[15] ,\mFmt_Tdata_reg_n_0_[14] ,\mFmt_Tdata_reg_n_0_[13] ,\mFmt_Tdata_reg_n_0_[12] ,\mFmt_Tdata_reg_n_0_[11] ,\mFmt_Tdata_reg_n_0_[10] ,\mFmt_Tdata_reg_n_0_[9] ,\mFmt_Tdata_reg_n_0_[8] ,\mFmt_Tdata_reg_n_0_[7] ,\mFmt_Tdata_reg_n_0_[6] ,\mFmt_Tdata_reg_n_0_[5] ,\mFmt_Tdata_reg_n_0_[4] ,\mFmt_Tdata_reg_n_0_[3] ,\mFmt_Tdata_reg_n_0_[2] ,\mFmt_Tdata_reg_n_0_[1] ,\mFmt_Tdata_reg_n_0_[0] }),
        .s_axis_tlast(mFmt_Tlast_reg_0),
        .s_axis_tready(s_axis_tready),
        .s_axis_tuser(\mFmt_Tuser_reg_n_0_[0] ),
        .s_axis_tvalid(mFmt_Tvalid_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \RAW10Formatter.cnt[1]_i_2 
       (.I0(s_axis_tready),
        .I1(mReg_Tvalid_reg_0),
        .O(cnt));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \RAW10Formatter.cnt[2]_i_2 
       (.I0(\RAW10Formatter.cnt_reg[0]_0 ),
        .I1(\RAW10Formatter.cnt_reg[1]_0 ),
        .O(\RAW10Formatter.cnt[2]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \RAW10Formatter.cnt_reg[0] 
       (.C(video_aclk),
        .CE(1'b1),
        .D(SyncMReset_n_4),
        .Q(\RAW10Formatter.cnt_reg[0]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAW10Formatter.cnt_reg[1] 
       (.C(video_aclk),
        .CE(1'b1),
        .D(SyncMReset_n_3),
        .Q(\RAW10Formatter.cnt_reg[1]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAW10Formatter.cnt_reg[2] 
       (.C(video_aclk),
        .CE(1'b1),
        .D(SyncMReset_n_2),
        .Q(\RAW10Formatter.cnt_reg[2]_0 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RAW10Formatter.pix_mux[0][2]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[24] ),
        .I1(\mReg_Tdata_reg_n_0_[8] ),
        .I2(\RAW10Formatter.cnt_reg[0]_0 ),
        .I3(\mReg_Tdata_reg_n_0_[16] ),
        .I4(\RAW10Formatter.cnt_reg[1]_0 ),
        .I5(\mReg_Tdata_reg_n_0_[0] ),
        .O(\pix_mux[0]_1 [2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RAW10Formatter.pix_mux[0][3]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[25] ),
        .I1(\mReg_Tdata_reg_n_0_[9] ),
        .I2(\RAW10Formatter.cnt_reg[0]_0 ),
        .I3(\mReg_Tdata_reg_n_0_[17] ),
        .I4(\RAW10Formatter.cnt_reg[1]_0 ),
        .I5(\mReg_Tdata_reg_n_0_[1] ),
        .O(\pix_mux[0]_1 [3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RAW10Formatter.pix_mux[0][4]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[26] ),
        .I1(\mReg_Tdata_reg_n_0_[10] ),
        .I2(\RAW10Formatter.cnt_reg[0]_0 ),
        .I3(\mReg_Tdata_reg_n_0_[18] ),
        .I4(\RAW10Formatter.cnt_reg[1]_0 ),
        .I5(\mReg_Tdata_reg_n_0_[2] ),
        .O(\pix_mux[0]_1 [4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RAW10Formatter.pix_mux[0][5]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[27] ),
        .I1(\mReg_Tdata_reg_n_0_[11] ),
        .I2(\RAW10Formatter.cnt_reg[0]_0 ),
        .I3(\mReg_Tdata_reg_n_0_[19] ),
        .I4(\RAW10Formatter.cnt_reg[1]_0 ),
        .I5(\mReg_Tdata_reg_n_0_[3] ),
        .O(\pix_mux[0]_1 [5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RAW10Formatter.pix_mux[0][6]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[28] ),
        .I1(\mReg_Tdata_reg_n_0_[12] ),
        .I2(\RAW10Formatter.cnt_reg[0]_0 ),
        .I3(\mReg_Tdata_reg_n_0_[20] ),
        .I4(\RAW10Formatter.cnt_reg[1]_0 ),
        .I5(\mReg_Tdata_reg_n_0_[4] ),
        .O(\pix_mux[0]_1 [6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RAW10Formatter.pix_mux[0][7]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[29] ),
        .I1(\mReg_Tdata_reg_n_0_[13] ),
        .I2(\RAW10Formatter.cnt_reg[0]_0 ),
        .I3(\mReg_Tdata_reg_n_0_[21] ),
        .I4(\RAW10Formatter.cnt_reg[1]_0 ),
        .I5(\mReg_Tdata_reg_n_0_[5] ),
        .O(\pix_mux[0]_1 [7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RAW10Formatter.pix_mux[0][8]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[30] ),
        .I1(\mReg_Tdata_reg_n_0_[14] ),
        .I2(\RAW10Formatter.cnt_reg[0]_0 ),
        .I3(\mReg_Tdata_reg_n_0_[22] ),
        .I4(\RAW10Formatter.cnt_reg[1]_0 ),
        .I5(\mReg_Tdata_reg_n_0_[6] ),
        .O(\pix_mux[0]_1 [8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RAW10Formatter.pix_mux[0][9]_i_2 
       (.I0(\mReg_Tdata_reg_n_0_[31] ),
        .I1(\mReg_Tdata_reg_n_0_[15] ),
        .I2(\RAW10Formatter.cnt_reg[0]_0 ),
        .I3(\mReg_Tdata_reg_n_0_[23] ),
        .I4(\RAW10Formatter.cnt_reg[1]_0 ),
        .I5(\mReg_Tdata_reg_n_0_[7] ),
        .O(\pix_mux[0]_1 [9]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hAACFAAC0)) 
    \RAW10Formatter.pix_mux[1][2]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[24] ),
        .I1(\mReg_Tdata_reg_n_0_[0] ),
        .I2(\RAW10Formatter.cnt_reg[2]_0 ),
        .I3(\RAW10Formatter.cnt_reg[1]_0 ),
        .I4(\RAW10Formatter.pix_mux[1][2]_i_2_n_0 ),
        .O(\pix_mux[1]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \RAW10Formatter.pix_mux[1][2]_i_2 
       (.I0(\mReg_Tdata_reg_n_0_[16] ),
        .I1(\RAW10Formatter.cnt_reg[0]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[8] ),
        .O(\RAW10Formatter.pix_mux[1][2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAACFAAC0)) 
    \RAW10Formatter.pix_mux[1][3]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[25] ),
        .I1(\mReg_Tdata_reg_n_0_[1] ),
        .I2(\RAW10Formatter.cnt_reg[2]_0 ),
        .I3(\RAW10Formatter.cnt_reg[1]_0 ),
        .I4(\RAW10Formatter.pix_mux[1][3]_i_2_n_0 ),
        .O(\pix_mux[1]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \RAW10Formatter.pix_mux[1][3]_i_2 
       (.I0(\mReg_Tdata_reg_n_0_[17] ),
        .I1(\RAW10Formatter.cnt_reg[0]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[9] ),
        .O(\RAW10Formatter.pix_mux[1][3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAACFAAC0)) 
    \RAW10Formatter.pix_mux[1][4]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[26] ),
        .I1(\mReg_Tdata_reg_n_0_[2] ),
        .I2(\RAW10Formatter.cnt_reg[2]_0 ),
        .I3(\RAW10Formatter.cnt_reg[1]_0 ),
        .I4(\RAW10Formatter.pix_mux[1][4]_i_2_n_0 ),
        .O(\pix_mux[1]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \RAW10Formatter.pix_mux[1][4]_i_2 
       (.I0(\mReg_Tdata_reg_n_0_[18] ),
        .I1(\RAW10Formatter.cnt_reg[0]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[10] ),
        .O(\RAW10Formatter.pix_mux[1][4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAACFAAC0)) 
    \RAW10Formatter.pix_mux[1][5]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[27] ),
        .I1(\mReg_Tdata_reg_n_0_[3] ),
        .I2(\RAW10Formatter.cnt_reg[2]_0 ),
        .I3(\RAW10Formatter.cnt_reg[1]_0 ),
        .I4(\RAW10Formatter.pix_mux[1][5]_i_2_n_0 ),
        .O(\pix_mux[1]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \RAW10Formatter.pix_mux[1][5]_i_2 
       (.I0(\mReg_Tdata_reg_n_0_[19] ),
        .I1(\RAW10Formatter.cnt_reg[0]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[11] ),
        .O(\RAW10Formatter.pix_mux[1][5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAACFAAC0)) 
    \RAW10Formatter.pix_mux[1][6]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[28] ),
        .I1(\mReg_Tdata_reg_n_0_[4] ),
        .I2(\RAW10Formatter.cnt_reg[2]_0 ),
        .I3(\RAW10Formatter.cnt_reg[1]_0 ),
        .I4(\RAW10Formatter.pix_mux[1][6]_i_2_n_0 ),
        .O(\pix_mux[1]_0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \RAW10Formatter.pix_mux[1][6]_i_2 
       (.I0(\mReg_Tdata_reg_n_0_[20] ),
        .I1(\RAW10Formatter.cnt_reg[0]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[12] ),
        .O(\RAW10Formatter.pix_mux[1][6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAACFAAC0)) 
    \RAW10Formatter.pix_mux[1][7]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[29] ),
        .I1(\mReg_Tdata_reg_n_0_[5] ),
        .I2(\RAW10Formatter.cnt_reg[2]_0 ),
        .I3(\RAW10Formatter.cnt_reg[1]_0 ),
        .I4(\RAW10Formatter.pix_mux[1][7]_i_2_n_0 ),
        .O(\pix_mux[1]_0 [7]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \RAW10Formatter.pix_mux[1][7]_i_2 
       (.I0(\mReg_Tdata_reg_n_0_[21] ),
        .I1(\RAW10Formatter.cnt_reg[0]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[13] ),
        .O(\RAW10Formatter.pix_mux[1][7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAACFAAC0)) 
    \RAW10Formatter.pix_mux[1][8]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[30] ),
        .I1(\mReg_Tdata_reg_n_0_[6] ),
        .I2(\RAW10Formatter.cnt_reg[2]_0 ),
        .I3(\RAW10Formatter.cnt_reg[1]_0 ),
        .I4(\RAW10Formatter.pix_mux[1][8]_i_2_n_0 ),
        .O(\pix_mux[1]_0 [8]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \RAW10Formatter.pix_mux[1][8]_i_2 
       (.I0(\mReg_Tdata_reg_n_0_[22] ),
        .I1(\RAW10Formatter.cnt_reg[0]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[14] ),
        .O(\RAW10Formatter.pix_mux[1][8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAACFAAC0)) 
    \RAW10Formatter.pix_mux[1][9]_i_2 
       (.I0(\mReg_Tdata_reg_n_0_[31] ),
        .I1(\mReg_Tdata_reg_n_0_[7] ),
        .I2(\RAW10Formatter.cnt_reg[2]_0 ),
        .I3(\RAW10Formatter.cnt_reg[1]_0 ),
        .I4(\RAW10Formatter.pix_mux[1][9]_i_3_n_0 ),
        .O(\pix_mux[1]_0 [9]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \RAW10Formatter.pix_mux[1][9]_i_3 
       (.I0(\mReg_Tdata_reg_n_0_[23] ),
        .I1(\RAW10Formatter.cnt_reg[0]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[15] ),
        .O(\RAW10Formatter.pix_mux[1][9]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \RAW10Formatter.pix_mux[2][2]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[0] ),
        .I1(\RAW10Formatter.cnt_reg[1]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[24] ),
        .I3(\RAW10Formatter.cnt_reg[0]_0 ),
        .I4(\RAW10Formatter.pix_mux[2][2]_i_2_n_0 ),
        .O(\pix_mux[2]_2 [2]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \RAW10Formatter.pix_mux[2][2]_i_2 
       (.I0(\mReg_Tdata_reg_n_0_[8] ),
        .I1(\RAW10Formatter.cnt_reg[2]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[16] ),
        .O(\RAW10Formatter.pix_mux[2][2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \RAW10Formatter.pix_mux[2][3]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[1] ),
        .I1(\RAW10Formatter.cnt_reg[1]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[25] ),
        .I3(\RAW10Formatter.cnt_reg[0]_0 ),
        .I4(\RAW10Formatter.pix_mux[2][3]_i_2_n_0 ),
        .O(\pix_mux[2]_2 [3]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \RAW10Formatter.pix_mux[2][3]_i_2 
       (.I0(\mReg_Tdata_reg_n_0_[9] ),
        .I1(\RAW10Formatter.cnt_reg[2]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[17] ),
        .O(\RAW10Formatter.pix_mux[2][3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \RAW10Formatter.pix_mux[2][4]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[2] ),
        .I1(\RAW10Formatter.cnt_reg[1]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[26] ),
        .I3(\RAW10Formatter.cnt_reg[0]_0 ),
        .I4(\RAW10Formatter.pix_mux[2][4]_i_2_n_0 ),
        .O(\pix_mux[2]_2 [4]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \RAW10Formatter.pix_mux[2][4]_i_2 
       (.I0(\mReg_Tdata_reg_n_0_[10] ),
        .I1(\RAW10Formatter.cnt_reg[2]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[18] ),
        .O(\RAW10Formatter.pix_mux[2][4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \RAW10Formatter.pix_mux[2][5]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[3] ),
        .I1(\RAW10Formatter.cnt_reg[1]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[27] ),
        .I3(\RAW10Formatter.cnt_reg[0]_0 ),
        .I4(\RAW10Formatter.pix_mux[2][5]_i_2_n_0 ),
        .O(\pix_mux[2]_2 [5]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \RAW10Formatter.pix_mux[2][5]_i_2 
       (.I0(\mReg_Tdata_reg_n_0_[11] ),
        .I1(\RAW10Formatter.cnt_reg[2]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[19] ),
        .O(\RAW10Formatter.pix_mux[2][5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \RAW10Formatter.pix_mux[2][6]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[4] ),
        .I1(\RAW10Formatter.cnt_reg[1]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[28] ),
        .I3(\RAW10Formatter.cnt_reg[0]_0 ),
        .I4(\RAW10Formatter.pix_mux[2][6]_i_2_n_0 ),
        .O(\pix_mux[2]_2 [6]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \RAW10Formatter.pix_mux[2][6]_i_2 
       (.I0(\mReg_Tdata_reg_n_0_[12] ),
        .I1(\RAW10Formatter.cnt_reg[2]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[20] ),
        .O(\RAW10Formatter.pix_mux[2][6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \RAW10Formatter.pix_mux[2][7]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[5] ),
        .I1(\RAW10Formatter.cnt_reg[1]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[29] ),
        .I3(\RAW10Formatter.cnt_reg[0]_0 ),
        .I4(\RAW10Formatter.pix_mux[2][7]_i_2_n_0 ),
        .O(\pix_mux[2]_2 [7]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \RAW10Formatter.pix_mux[2][7]_i_2 
       (.I0(\mReg_Tdata_reg_n_0_[13] ),
        .I1(\RAW10Formatter.cnt_reg[2]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[21] ),
        .O(\RAW10Formatter.pix_mux[2][7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \RAW10Formatter.pix_mux[2][8]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[6] ),
        .I1(\RAW10Formatter.cnt_reg[1]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[30] ),
        .I3(\RAW10Formatter.cnt_reg[0]_0 ),
        .I4(\RAW10Formatter.pix_mux[2][8]_i_2_n_0 ),
        .O(\pix_mux[2]_2 [8]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \RAW10Formatter.pix_mux[2][8]_i_2 
       (.I0(\mReg_Tdata_reg_n_0_[14] ),
        .I1(\RAW10Formatter.cnt_reg[2]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[22] ),
        .O(\RAW10Formatter.pix_mux[2][8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \RAW10Formatter.pix_mux[2][9]_i_2 
       (.I0(\mReg_Tdata_reg_n_0_[7] ),
        .I1(\RAW10Formatter.cnt_reg[1]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[31] ),
        .I3(\RAW10Formatter.cnt_reg[0]_0 ),
        .I4(\RAW10Formatter.pix_mux[2][9]_i_3_n_0 ),
        .O(\pix_mux[2]_2 [9]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \RAW10Formatter.pix_mux[2][9]_i_3 
       (.I0(\mReg_Tdata_reg_n_0_[15] ),
        .I1(\RAW10Formatter.cnt_reg[2]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[23] ),
        .O(\RAW10Formatter.pix_mux[2][9]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \RAW10Formatter.pix_mux[3][2]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[8] ),
        .I1(\RAW10Formatter.cnt_reg[0]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[0] ),
        .I3(\RAW10Formatter.cnt_reg[1]_0 ),
        .I4(\RAW10Formatter.pix_mux[3][2]_i_2_n_0 ),
        .O(\pix_mux[3]_3 [2]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \RAW10Formatter.pix_mux[3][2]_i_2 
       (.I0(\mReg_Tdata_reg_n_0_[16] ),
        .I1(\RAW10Formatter.cnt_reg[2]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[24] ),
        .O(\RAW10Formatter.pix_mux[3][2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \RAW10Formatter.pix_mux[3][3]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[9] ),
        .I1(\RAW10Formatter.cnt_reg[0]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[1] ),
        .I3(\RAW10Formatter.cnt_reg[1]_0 ),
        .I4(\RAW10Formatter.pix_mux[3][3]_i_2_n_0 ),
        .O(\pix_mux[3]_3 [3]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \RAW10Formatter.pix_mux[3][3]_i_2 
       (.I0(\mReg_Tdata_reg_n_0_[17] ),
        .I1(\RAW10Formatter.cnt_reg[2]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[25] ),
        .O(\RAW10Formatter.pix_mux[3][3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \RAW10Formatter.pix_mux[3][4]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[10] ),
        .I1(\RAW10Formatter.cnt_reg[0]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[2] ),
        .I3(\RAW10Formatter.cnt_reg[1]_0 ),
        .I4(\RAW10Formatter.pix_mux[3][4]_i_2_n_0 ),
        .O(\pix_mux[3]_3 [4]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \RAW10Formatter.pix_mux[3][4]_i_2 
       (.I0(\mReg_Tdata_reg_n_0_[18] ),
        .I1(\RAW10Formatter.cnt_reg[2]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[26] ),
        .O(\RAW10Formatter.pix_mux[3][4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \RAW10Formatter.pix_mux[3][5]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[11] ),
        .I1(\RAW10Formatter.cnt_reg[0]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[3] ),
        .I3(\RAW10Formatter.cnt_reg[1]_0 ),
        .I4(\RAW10Formatter.pix_mux[3][5]_i_2_n_0 ),
        .O(\pix_mux[3]_3 [5]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \RAW10Formatter.pix_mux[3][5]_i_2 
       (.I0(\mReg_Tdata_reg_n_0_[19] ),
        .I1(\RAW10Formatter.cnt_reg[2]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[27] ),
        .O(\RAW10Formatter.pix_mux[3][5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \RAW10Formatter.pix_mux[3][6]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[12] ),
        .I1(\RAW10Formatter.cnt_reg[0]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[4] ),
        .I3(\RAW10Formatter.cnt_reg[1]_0 ),
        .I4(\RAW10Formatter.pix_mux[3][6]_i_2_n_0 ),
        .O(\pix_mux[3]_3 [6]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \RAW10Formatter.pix_mux[3][6]_i_2 
       (.I0(\mReg_Tdata_reg_n_0_[20] ),
        .I1(\RAW10Formatter.cnt_reg[2]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[28] ),
        .O(\RAW10Formatter.pix_mux[3][6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \RAW10Formatter.pix_mux[3][7]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[13] ),
        .I1(\RAW10Formatter.cnt_reg[0]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[5] ),
        .I3(\RAW10Formatter.cnt_reg[1]_0 ),
        .I4(\RAW10Formatter.pix_mux[3][7]_i_2_n_0 ),
        .O(\pix_mux[3]_3 [7]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \RAW10Formatter.pix_mux[3][7]_i_2 
       (.I0(\mReg_Tdata_reg_n_0_[21] ),
        .I1(\RAW10Formatter.cnt_reg[2]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[29] ),
        .O(\RAW10Formatter.pix_mux[3][7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \RAW10Formatter.pix_mux[3][8]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[14] ),
        .I1(\RAW10Formatter.cnt_reg[0]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[6] ),
        .I3(\RAW10Formatter.cnt_reg[1]_0 ),
        .I4(\RAW10Formatter.pix_mux[3][8]_i_2_n_0 ),
        .O(\pix_mux[3]_3 [8]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \RAW10Formatter.pix_mux[3][8]_i_2 
       (.I0(\mReg_Tdata_reg_n_0_[22] ),
        .I1(\RAW10Formatter.cnt_reg[2]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[30] ),
        .O(\RAW10Formatter.pix_mux[3][8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \RAW10Formatter.pix_mux[3][9]_i_2 
       (.I0(\mReg_Tdata_reg_n_0_[15] ),
        .I1(\RAW10Formatter.cnt_reg[0]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[7] ),
        .I3(\RAW10Formatter.cnt_reg[1]_0 ),
        .I4(\RAW10Formatter.pix_mux[3][9]_i_3_n_0 ),
        .O(\pix_mux[3]_3 [9]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \RAW10Formatter.pix_mux[3][9]_i_3 
       (.I0(\mReg_Tdata_reg_n_0_[23] ),
        .I1(\RAW10Formatter.cnt_reg[2]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[31] ),
        .O(\RAW10Formatter.pix_mux[3][9]_i_3_n_0 ));
  FDRE \RAW10Formatter.pix_mux_reg[0][2] 
       (.C(video_aclk),
        .CE(SyncMReset_n_6),
        .D(\pix_mux[0]_1 [2]),
        .Q(data1[2]),
        .R(1'b0));
  FDRE \RAW10Formatter.pix_mux_reg[0][3] 
       (.C(video_aclk),
        .CE(SyncMReset_n_6),
        .D(\pix_mux[0]_1 [3]),
        .Q(data1[3]),
        .R(1'b0));
  FDRE \RAW10Formatter.pix_mux_reg[0][4] 
       (.C(video_aclk),
        .CE(SyncMReset_n_6),
        .D(\pix_mux[0]_1 [4]),
        .Q(data1[4]),
        .R(1'b0));
  FDRE \RAW10Formatter.pix_mux_reg[0][5] 
       (.C(video_aclk),
        .CE(SyncMReset_n_6),
        .D(\pix_mux[0]_1 [5]),
        .Q(data1[5]),
        .R(1'b0));
  FDRE \RAW10Formatter.pix_mux_reg[0][6] 
       (.C(video_aclk),
        .CE(SyncMReset_n_6),
        .D(\pix_mux[0]_1 [6]),
        .Q(data1[6]),
        .R(1'b0));
  FDRE \RAW10Formatter.pix_mux_reg[0][7] 
       (.C(video_aclk),
        .CE(SyncMReset_n_6),
        .D(\pix_mux[0]_1 [7]),
        .Q(data1[7]),
        .R(1'b0));
  FDRE \RAW10Formatter.pix_mux_reg[0][8] 
       (.C(video_aclk),
        .CE(SyncMReset_n_6),
        .D(\pix_mux[0]_1 [8]),
        .Q(data1[8]),
        .R(1'b0));
  FDRE \RAW10Formatter.pix_mux_reg[0][9] 
       (.C(video_aclk),
        .CE(SyncMReset_n_6),
        .D(\pix_mux[0]_1 [9]),
        .Q(data1[9]),
        .R(1'b0));
  FDRE \RAW10Formatter.pix_mux_reg[1][2] 
       (.C(video_aclk),
        .CE(SyncMReset_n_7),
        .D(\pix_mux[1]_0 [2]),
        .Q(data1[12]),
        .R(1'b0));
  FDRE \RAW10Formatter.pix_mux_reg[1][3] 
       (.C(video_aclk),
        .CE(SyncMReset_n_7),
        .D(\pix_mux[1]_0 [3]),
        .Q(data1[13]),
        .R(1'b0));
  FDRE \RAW10Formatter.pix_mux_reg[1][4] 
       (.C(video_aclk),
        .CE(SyncMReset_n_7),
        .D(\pix_mux[1]_0 [4]),
        .Q(data1[14]),
        .R(1'b0));
  FDRE \RAW10Formatter.pix_mux_reg[1][5] 
       (.C(video_aclk),
        .CE(SyncMReset_n_7),
        .D(\pix_mux[1]_0 [5]),
        .Q(data1[15]),
        .R(1'b0));
  FDRE \RAW10Formatter.pix_mux_reg[1][6] 
       (.C(video_aclk),
        .CE(SyncMReset_n_7),
        .D(\pix_mux[1]_0 [6]),
        .Q(data1[16]),
        .R(1'b0));
  FDRE \RAW10Formatter.pix_mux_reg[1][7] 
       (.C(video_aclk),
        .CE(SyncMReset_n_7),
        .D(\pix_mux[1]_0 [7]),
        .Q(data1[17]),
        .R(1'b0));
  FDRE \RAW10Formatter.pix_mux_reg[1][8] 
       (.C(video_aclk),
        .CE(SyncMReset_n_7),
        .D(\pix_mux[1]_0 [8]),
        .Q(data1[18]),
        .R(1'b0));
  FDRE \RAW10Formatter.pix_mux_reg[1][9] 
       (.C(video_aclk),
        .CE(SyncMReset_n_7),
        .D(\pix_mux[1]_0 [9]),
        .Q(data1[19]),
        .R(1'b0));
  FDRE \RAW10Formatter.pix_mux_reg[2][2] 
       (.C(video_aclk),
        .CE(SyncMReset_n_8),
        .D(\pix_mux[2]_2 [2]),
        .Q(data1[22]),
        .R(1'b0));
  FDRE \RAW10Formatter.pix_mux_reg[2][3] 
       (.C(video_aclk),
        .CE(SyncMReset_n_8),
        .D(\pix_mux[2]_2 [3]),
        .Q(data1[23]),
        .R(1'b0));
  FDRE \RAW10Formatter.pix_mux_reg[2][4] 
       (.C(video_aclk),
        .CE(SyncMReset_n_8),
        .D(\pix_mux[2]_2 [4]),
        .Q(data1[24]),
        .R(1'b0));
  FDRE \RAW10Formatter.pix_mux_reg[2][5] 
       (.C(video_aclk),
        .CE(SyncMReset_n_8),
        .D(\pix_mux[2]_2 [5]),
        .Q(data1[25]),
        .R(1'b0));
  FDRE \RAW10Formatter.pix_mux_reg[2][6] 
       (.C(video_aclk),
        .CE(SyncMReset_n_8),
        .D(\pix_mux[2]_2 [6]),
        .Q(data1[26]),
        .R(1'b0));
  FDRE \RAW10Formatter.pix_mux_reg[2][7] 
       (.C(video_aclk),
        .CE(SyncMReset_n_8),
        .D(\pix_mux[2]_2 [7]),
        .Q(data1[27]),
        .R(1'b0));
  FDRE \RAW10Formatter.pix_mux_reg[2][8] 
       (.C(video_aclk),
        .CE(SyncMReset_n_8),
        .D(\pix_mux[2]_2 [8]),
        .Q(data1[28]),
        .R(1'b0));
  FDRE \RAW10Formatter.pix_mux_reg[2][9] 
       (.C(video_aclk),
        .CE(SyncMReset_n_8),
        .D(\pix_mux[2]_2 [9]),
        .Q(data1[29]),
        .R(1'b0));
  FDRE \RAW10Formatter.pix_mux_reg[3][2] 
       (.C(video_aclk),
        .CE(SyncMReset_n_9),
        .D(\pix_mux[3]_3 [2]),
        .Q(\RAW10Formatter.pix_mux_reg_n_0_[3][2] ),
        .R(1'b0));
  FDRE \RAW10Formatter.pix_mux_reg[3][3] 
       (.C(video_aclk),
        .CE(SyncMReset_n_9),
        .D(\pix_mux[3]_3 [3]),
        .Q(\RAW10Formatter.pix_mux_reg_n_0_[3][3] ),
        .R(1'b0));
  FDRE \RAW10Formatter.pix_mux_reg[3][4] 
       (.C(video_aclk),
        .CE(SyncMReset_n_9),
        .D(\pix_mux[3]_3 [4]),
        .Q(\RAW10Formatter.pix_mux_reg_n_0_[3][4] ),
        .R(1'b0));
  FDRE \RAW10Formatter.pix_mux_reg[3][5] 
       (.C(video_aclk),
        .CE(SyncMReset_n_9),
        .D(\pix_mux[3]_3 [5]),
        .Q(\RAW10Formatter.pix_mux_reg_n_0_[3][5] ),
        .R(1'b0));
  FDRE \RAW10Formatter.pix_mux_reg[3][6] 
       (.C(video_aclk),
        .CE(SyncMReset_n_9),
        .D(\pix_mux[3]_3 [6]),
        .Q(\RAW10Formatter.pix_mux_reg_n_0_[3][6] ),
        .R(1'b0));
  FDRE \RAW10Formatter.pix_mux_reg[3][7] 
       (.C(video_aclk),
        .CE(SyncMReset_n_9),
        .D(\pix_mux[3]_3 [7]),
        .Q(\RAW10Formatter.pix_mux_reg_n_0_[3][7] ),
        .R(1'b0));
  FDRE \RAW10Formatter.pix_mux_reg[3][8] 
       (.C(video_aclk),
        .CE(SyncMReset_n_9),
        .D(\pix_mux[3]_3 [8]),
        .Q(\RAW10Formatter.pix_mux_reg_n_0_[3][8] ),
        .R(1'b0));
  FDRE \RAW10Formatter.pix_mux_reg[3][9] 
       (.C(video_aclk),
        .CE(SyncMReset_n_9),
        .D(\pix_mux[3]_3 [9]),
        .Q(\RAW10Formatter.pix_mux_reg_n_0_[3][9] ),
        .R(1'b0));
  system_MIPI_CSI_2_RX_0_0_ResetBridge__parameterized0_3 SyncMReset
       (.AS(AS),
        .E(SyncMReset_n_1),
        .\RAW10Formatter.cnt_reg[0] (SyncMReset_n_4),
        .\RAW10Formatter.cnt_reg[1] (SyncMReset_n_3),
        .\RAW10Formatter.cnt_reg[1]_0 (\RAW10Formatter.cnt_reg[1]_0 ),
        .\RAW10Formatter.cnt_reg[1]_1 (\RAW10Formatter.cnt_reg[0]_0 ),
        .\RAW10Formatter.cnt_reg[2] (\RAW10Formatter.cnt[2]_i_2_n_0 ),
        .\RAW10Formatter.cnt_reg[2]_0 (mReg_Tvalid_reg_0),
        .\RAW10Formatter.cnt_reg[2]_1 (mReg_Tlast_reg_0),
        .\RAW10Formatter.cnt_reg[2]_2 (\RAW10Formatter.cnt_reg[2]_0 ),
        .cnt(cnt),
        .\mFmt_Tuser_reg[0] (mFmt_Tvalid_reg_0),
        .\mFmt_Tuser_reg[0]_0 (\mReg_Tuser_reg[0]_0 ),
        .mFmt_Tvalid_reg(SyncMReset_n_11),
        .\mReg_Tdata_reg[31] (mKeep_reg_0),
        .mReg_Tvalid_reg(SyncMReset_n_2),
        .m_axis_tvalid(m_axis_tvalid),
        .\oSyncStages_reg[1] (SyncMReset_n_5),
        .\oSyncStages_reg[1]_0 (SyncMReset_n_6),
        .\oSyncStages_reg[1]_1 (SyncMReset_n_7),
        .\oSyncStages_reg[1]_2 (SyncMReset_n_8),
        .\oSyncStages_reg[1]_3 (SyncMReset_n_9),
        .out(out),
        .s_axis_aresetn(s_axis_aresetn),
        .s_axis_tready(s_axis_tready),
        .s_axis_tuser(\mFmt_Tuser_reg_n_0_[0] ),
        .video_aclk(video_aclk));
  system_MIPI_CSI_2_RX_0_0_ResetBridge__parameterized0_4 SyncSReset
       (.AS(AS),
        .RxByteClkHS(RxByteClkHS),
        .\oSyncStages_reg[1] (\oSyncStages_reg[1] ));
  FDCE \delay_reg[0] 
       (.C(RxByteClkHS),
        .CE(1'b1),
        .CLR(\oSyncStages_reg[1] ),
        .D(sAxisTreadyInt),
        .Q(delay));
  FDCE \delay_reg[1] 
       (.C(RxByteClkHS),
        .CE(1'b1),
        .CLR(\oSyncStages_reg[1] ),
        .D(delay),
        .Q(\delay_reg[1]_0 ));
  FDRE mFlush_reg
       (.C(video_aclk),
        .CE(1'b1),
        .D(ECCx_n_10),
        .Q(mFlush_reg_n_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hCFCAC0CA)) 
    \mFmt_Tdata[0]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[0] ),
        .I1(\mReg_Tdata_reg_n_0_[24] ),
        .I2(\RAW10Formatter.cnt_reg[2]_0 ),
        .I3(\RAW10Formatter.cnt_reg[1]_0 ),
        .I4(\RAW10Formatter.pix_mux[1][2]_i_2_n_0 ),
        .O(mFmt_Tdata[0]));
  LUT5 #(
    .INIT(32'hCFCAC0CA)) 
    \mFmt_Tdata[10]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[2] ),
        .I1(\mReg_Tdata_reg_n_0_[26] ),
        .I2(\RAW10Formatter.cnt_reg[2]_0 ),
        .I3(\RAW10Formatter.cnt_reg[1]_0 ),
        .I4(\RAW10Formatter.pix_mux[1][4]_i_2_n_0 ),
        .O(mFmt_Tdata[10]));
  LUT5 #(
    .INIT(32'hCFCAC0CA)) 
    \mFmt_Tdata[11]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[3] ),
        .I1(\mReg_Tdata_reg_n_0_[27] ),
        .I2(\RAW10Formatter.cnt_reg[2]_0 ),
        .I3(\RAW10Formatter.cnt_reg[1]_0 ),
        .I4(\RAW10Formatter.pix_mux[1][5]_i_2_n_0 ),
        .O(mFmt_Tdata[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    \mFmt_Tdata[12]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[0] ),
        .I1(\RAW10Formatter.cnt_reg[2]_0 ),
        .I2(data1[12]),
        .O(mFmt_Tdata[12]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mFmt_Tdata[13]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[1] ),
        .I1(\RAW10Formatter.cnt_reg[2]_0 ),
        .I2(data1[13]),
        .O(mFmt_Tdata[13]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mFmt_Tdata[14]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[2] ),
        .I1(\RAW10Formatter.cnt_reg[2]_0 ),
        .I2(data1[14]),
        .O(mFmt_Tdata[14]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mFmt_Tdata[15]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[3] ),
        .I1(\RAW10Formatter.cnt_reg[2]_0 ),
        .I2(data1[15]),
        .O(mFmt_Tdata[15]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mFmt_Tdata[16]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[4] ),
        .I1(\RAW10Formatter.cnt_reg[2]_0 ),
        .I2(data1[16]),
        .O(mFmt_Tdata[16]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mFmt_Tdata[17]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[5] ),
        .I1(\RAW10Formatter.cnt_reg[2]_0 ),
        .I2(data1[17]),
        .O(mFmt_Tdata[17]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mFmt_Tdata[18]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[6] ),
        .I1(\RAW10Formatter.cnt_reg[2]_0 ),
        .I2(data1[18]),
        .O(mFmt_Tdata[18]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mFmt_Tdata[19]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[7] ),
        .I1(\RAW10Formatter.cnt_reg[2]_0 ),
        .I2(data1[19]),
        .O(mFmt_Tdata[19]));
  LUT5 #(
    .INIT(32'hCFCAC0CA)) 
    \mFmt_Tdata[1]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[1] ),
        .I1(\mReg_Tdata_reg_n_0_[25] ),
        .I2(\RAW10Formatter.cnt_reg[2]_0 ),
        .I3(\RAW10Formatter.cnt_reg[1]_0 ),
        .I4(\RAW10Formatter.pix_mux[1][3]_i_2_n_0 ),
        .O(mFmt_Tdata[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mFmt_Tdata[20]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[4] ),
        .I1(\mReg_Tdata_reg_n_0_[28] ),
        .I2(\mFmt_Tdata[39]_i_3_n_0 ),
        .I3(\mReg_Tdata_reg_n_0_[12] ),
        .I4(\mFmt_Tdata[39]_i_4_n_0 ),
        .I5(\mReg_Tdata_reg_n_0_[20] ),
        .O(mFmt_Tdata[20]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mFmt_Tdata[21]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[5] ),
        .I1(\mReg_Tdata_reg_n_0_[29] ),
        .I2(\mFmt_Tdata[39]_i_3_n_0 ),
        .I3(\mReg_Tdata_reg_n_0_[13] ),
        .I4(\mFmt_Tdata[39]_i_4_n_0 ),
        .I5(\mReg_Tdata_reg_n_0_[21] ),
        .O(mFmt_Tdata[21]));
  LUT6 #(
    .INIT(64'hB8BBBBBBB8888888)) 
    \mFmt_Tdata[22]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[8] ),
        .I1(\RAW10Formatter.cnt_reg[2]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[0] ),
        .I3(\RAW10Formatter.cnt_reg[0]_0 ),
        .I4(\RAW10Formatter.cnt_reg[1]_0 ),
        .I5(data1[22]),
        .O(mFmt_Tdata[22]));
  LUT6 #(
    .INIT(64'hB8BBBBBBB8888888)) 
    \mFmt_Tdata[23]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[9] ),
        .I1(\RAW10Formatter.cnt_reg[2]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[1] ),
        .I3(\RAW10Formatter.cnt_reg[0]_0 ),
        .I4(\RAW10Formatter.cnt_reg[1]_0 ),
        .I5(data1[23]),
        .O(mFmt_Tdata[23]));
  LUT6 #(
    .INIT(64'hB8BBBBBBB8888888)) 
    \mFmt_Tdata[24]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[10] ),
        .I1(\RAW10Formatter.cnt_reg[2]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[2] ),
        .I3(\RAW10Formatter.cnt_reg[0]_0 ),
        .I4(\RAW10Formatter.cnt_reg[1]_0 ),
        .I5(data1[24]),
        .O(mFmt_Tdata[24]));
  LUT6 #(
    .INIT(64'hB8BBBBBBB8888888)) 
    \mFmt_Tdata[25]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[11] ),
        .I1(\RAW10Formatter.cnt_reg[2]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[3] ),
        .I3(\RAW10Formatter.cnt_reg[0]_0 ),
        .I4(\RAW10Formatter.cnt_reg[1]_0 ),
        .I5(data1[25]),
        .O(mFmt_Tdata[25]));
  LUT6 #(
    .INIT(64'hB8BBBBBBB8888888)) 
    \mFmt_Tdata[26]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[12] ),
        .I1(\RAW10Formatter.cnt_reg[2]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[4] ),
        .I3(\RAW10Formatter.cnt_reg[0]_0 ),
        .I4(\RAW10Formatter.cnt_reg[1]_0 ),
        .I5(data1[26]),
        .O(mFmt_Tdata[26]));
  LUT6 #(
    .INIT(64'hB8BBBBBBB8888888)) 
    \mFmt_Tdata[27]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[13] ),
        .I1(\RAW10Formatter.cnt_reg[2]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[5] ),
        .I3(\RAW10Formatter.cnt_reg[0]_0 ),
        .I4(\RAW10Formatter.cnt_reg[1]_0 ),
        .I5(data1[27]),
        .O(mFmt_Tdata[27]));
  LUT6 #(
    .INIT(64'hB8BBBBBBB8888888)) 
    \mFmt_Tdata[28]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[14] ),
        .I1(\RAW10Formatter.cnt_reg[2]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[6] ),
        .I3(\RAW10Formatter.cnt_reg[0]_0 ),
        .I4(\RAW10Formatter.cnt_reg[1]_0 ),
        .I5(data1[28]),
        .O(mFmt_Tdata[28]));
  LUT6 #(
    .INIT(64'hB8BBBBBBB8888888)) 
    \mFmt_Tdata[29]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[15] ),
        .I1(\RAW10Formatter.cnt_reg[2]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[7] ),
        .I3(\RAW10Formatter.cnt_reg[0]_0 ),
        .I4(\RAW10Formatter.cnt_reg[1]_0 ),
        .I5(data1[29]),
        .O(mFmt_Tdata[29]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mFmt_Tdata[30]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[6] ),
        .I1(\mReg_Tdata_reg_n_0_[30] ),
        .I2(\mFmt_Tdata[39]_i_3_n_0 ),
        .I3(\mReg_Tdata_reg_n_0_[14] ),
        .I4(\mFmt_Tdata[39]_i_4_n_0 ),
        .I5(\mReg_Tdata_reg_n_0_[22] ),
        .O(mFmt_Tdata[30]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mFmt_Tdata[31]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[7] ),
        .I1(\mReg_Tdata_reg_n_0_[31] ),
        .I2(\mFmt_Tdata[39]_i_3_n_0 ),
        .I3(\mReg_Tdata_reg_n_0_[15] ),
        .I4(\mFmt_Tdata[39]_i_4_n_0 ),
        .I5(\mReg_Tdata_reg_n_0_[23] ),
        .O(mFmt_Tdata[31]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mFmt_Tdata[32]_i_1 
       (.I0(\RAW10Formatter.pix_mux_reg_n_0_[3][2] ),
        .I1(\mReg_Tdata_reg_n_0_[16] ),
        .I2(\mFmt_Tdata[39]_i_3_n_0 ),
        .I3(\mReg_Tdata_reg_n_0_[0] ),
        .I4(\mFmt_Tdata[39]_i_4_n_0 ),
        .I5(\mReg_Tdata_reg_n_0_[8] ),
        .O(mFmt_Tdata[32]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mFmt_Tdata[33]_i_1 
       (.I0(\RAW10Formatter.pix_mux_reg_n_0_[3][3] ),
        .I1(\mReg_Tdata_reg_n_0_[17] ),
        .I2(\mFmt_Tdata[39]_i_3_n_0 ),
        .I3(\mReg_Tdata_reg_n_0_[1] ),
        .I4(\mFmt_Tdata[39]_i_4_n_0 ),
        .I5(\mReg_Tdata_reg_n_0_[9] ),
        .O(mFmt_Tdata[33]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mFmt_Tdata[34]_i_1 
       (.I0(\RAW10Formatter.pix_mux_reg_n_0_[3][4] ),
        .I1(\mReg_Tdata_reg_n_0_[18] ),
        .I2(\mFmt_Tdata[39]_i_3_n_0 ),
        .I3(\mReg_Tdata_reg_n_0_[2] ),
        .I4(\mFmt_Tdata[39]_i_4_n_0 ),
        .I5(\mReg_Tdata_reg_n_0_[10] ),
        .O(mFmt_Tdata[34]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mFmt_Tdata[35]_i_1 
       (.I0(\RAW10Formatter.pix_mux_reg_n_0_[3][5] ),
        .I1(\mReg_Tdata_reg_n_0_[19] ),
        .I2(\mFmt_Tdata[39]_i_3_n_0 ),
        .I3(\mReg_Tdata_reg_n_0_[3] ),
        .I4(\mFmt_Tdata[39]_i_4_n_0 ),
        .I5(\mReg_Tdata_reg_n_0_[11] ),
        .O(mFmt_Tdata[35]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mFmt_Tdata[36]_i_1 
       (.I0(\RAW10Formatter.pix_mux_reg_n_0_[3][6] ),
        .I1(\mReg_Tdata_reg_n_0_[20] ),
        .I2(\mFmt_Tdata[39]_i_3_n_0 ),
        .I3(\mReg_Tdata_reg_n_0_[4] ),
        .I4(\mFmt_Tdata[39]_i_4_n_0 ),
        .I5(\mReg_Tdata_reg_n_0_[12] ),
        .O(mFmt_Tdata[36]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mFmt_Tdata[37]_i_1 
       (.I0(\RAW10Formatter.pix_mux_reg_n_0_[3][7] ),
        .I1(\mReg_Tdata_reg_n_0_[21] ),
        .I2(\mFmt_Tdata[39]_i_3_n_0 ),
        .I3(\mReg_Tdata_reg_n_0_[5] ),
        .I4(\mFmt_Tdata[39]_i_4_n_0 ),
        .I5(\mReg_Tdata_reg_n_0_[13] ),
        .O(mFmt_Tdata[37]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mFmt_Tdata[38]_i_1 
       (.I0(\RAW10Formatter.pix_mux_reg_n_0_[3][8] ),
        .I1(\mReg_Tdata_reg_n_0_[22] ),
        .I2(\mFmt_Tdata[39]_i_3_n_0 ),
        .I3(\mReg_Tdata_reg_n_0_[6] ),
        .I4(\mFmt_Tdata[39]_i_4_n_0 ),
        .I5(\mReg_Tdata_reg_n_0_[14] ),
        .O(mFmt_Tdata[38]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mFmt_Tdata[39]_i_2 
       (.I0(\RAW10Formatter.pix_mux_reg_n_0_[3][9] ),
        .I1(\mReg_Tdata_reg_n_0_[23] ),
        .I2(\mFmt_Tdata[39]_i_3_n_0 ),
        .I3(\mReg_Tdata_reg_n_0_[7] ),
        .I4(\mFmt_Tdata[39]_i_4_n_0 ),
        .I5(\mReg_Tdata_reg_n_0_[15] ),
        .O(mFmt_Tdata[39]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \mFmt_Tdata[39]_i_3 
       (.I0(\RAW10Formatter.cnt_reg[2]_0 ),
        .I1(\RAW10Formatter.cnt_reg[1]_0 ),
        .O(\mFmt_Tdata[39]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h15)) 
    \mFmt_Tdata[39]_i_4 
       (.I0(\RAW10Formatter.cnt_reg[2]_0 ),
        .I1(\RAW10Formatter.cnt_reg[1]_0 ),
        .I2(\RAW10Formatter.cnt_reg[0]_0 ),
        .O(\mFmt_Tdata[39]_i_4_n_0 ));
  FDRE \mFmt_Tdata_reg[0] 
       (.C(video_aclk),
        .CE(SyncMReset_n_5),
        .D(mFmt_Tdata[0]),
        .Q(\mFmt_Tdata_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \mFmt_Tdata_reg[10] 
       (.C(video_aclk),
        .CE(SyncMReset_n_5),
        .D(mFmt_Tdata[10]),
        .Q(\mFmt_Tdata_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \mFmt_Tdata_reg[11] 
       (.C(video_aclk),
        .CE(SyncMReset_n_5),
        .D(mFmt_Tdata[11]),
        .Q(\mFmt_Tdata_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \mFmt_Tdata_reg[12] 
       (.C(video_aclk),
        .CE(SyncMReset_n_5),
        .D(mFmt_Tdata[12]),
        .Q(\mFmt_Tdata_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \mFmt_Tdata_reg[13] 
       (.C(video_aclk),
        .CE(SyncMReset_n_5),
        .D(mFmt_Tdata[13]),
        .Q(\mFmt_Tdata_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \mFmt_Tdata_reg[14] 
       (.C(video_aclk),
        .CE(SyncMReset_n_5),
        .D(mFmt_Tdata[14]),
        .Q(\mFmt_Tdata_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \mFmt_Tdata_reg[15] 
       (.C(video_aclk),
        .CE(SyncMReset_n_5),
        .D(mFmt_Tdata[15]),
        .Q(\mFmt_Tdata_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \mFmt_Tdata_reg[16] 
       (.C(video_aclk),
        .CE(SyncMReset_n_5),
        .D(mFmt_Tdata[16]),
        .Q(\mFmt_Tdata_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \mFmt_Tdata_reg[17] 
       (.C(video_aclk),
        .CE(SyncMReset_n_5),
        .D(mFmt_Tdata[17]),
        .Q(\mFmt_Tdata_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \mFmt_Tdata_reg[18] 
       (.C(video_aclk),
        .CE(SyncMReset_n_5),
        .D(mFmt_Tdata[18]),
        .Q(\mFmt_Tdata_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \mFmt_Tdata_reg[19] 
       (.C(video_aclk),
        .CE(SyncMReset_n_5),
        .D(mFmt_Tdata[19]),
        .Q(\mFmt_Tdata_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \mFmt_Tdata_reg[1] 
       (.C(video_aclk),
        .CE(SyncMReset_n_5),
        .D(mFmt_Tdata[1]),
        .Q(\mFmt_Tdata_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \mFmt_Tdata_reg[20] 
       (.C(video_aclk),
        .CE(SyncMReset_n_5),
        .D(mFmt_Tdata[20]),
        .Q(\mFmt_Tdata_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \mFmt_Tdata_reg[21] 
       (.C(video_aclk),
        .CE(SyncMReset_n_5),
        .D(mFmt_Tdata[21]),
        .Q(\mFmt_Tdata_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \mFmt_Tdata_reg[22] 
       (.C(video_aclk),
        .CE(SyncMReset_n_5),
        .D(mFmt_Tdata[22]),
        .Q(\mFmt_Tdata_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \mFmt_Tdata_reg[23] 
       (.C(video_aclk),
        .CE(SyncMReset_n_5),
        .D(mFmt_Tdata[23]),
        .Q(\mFmt_Tdata_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \mFmt_Tdata_reg[24] 
       (.C(video_aclk),
        .CE(SyncMReset_n_5),
        .D(mFmt_Tdata[24]),
        .Q(\mFmt_Tdata_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \mFmt_Tdata_reg[25] 
       (.C(video_aclk),
        .CE(SyncMReset_n_5),
        .D(mFmt_Tdata[25]),
        .Q(\mFmt_Tdata_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \mFmt_Tdata_reg[26] 
       (.C(video_aclk),
        .CE(SyncMReset_n_5),
        .D(mFmt_Tdata[26]),
        .Q(\mFmt_Tdata_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \mFmt_Tdata_reg[27] 
       (.C(video_aclk),
        .CE(SyncMReset_n_5),
        .D(mFmt_Tdata[27]),
        .Q(\mFmt_Tdata_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \mFmt_Tdata_reg[28] 
       (.C(video_aclk),
        .CE(SyncMReset_n_5),
        .D(mFmt_Tdata[28]),
        .Q(\mFmt_Tdata_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \mFmt_Tdata_reg[29] 
       (.C(video_aclk),
        .CE(SyncMReset_n_5),
        .D(mFmt_Tdata[29]),
        .Q(\mFmt_Tdata_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \mFmt_Tdata_reg[2] 
       (.C(video_aclk),
        .CE(SyncMReset_n_5),
        .D(data1[2]),
        .Q(\mFmt_Tdata_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \mFmt_Tdata_reg[30] 
       (.C(video_aclk),
        .CE(SyncMReset_n_5),
        .D(mFmt_Tdata[30]),
        .Q(\mFmt_Tdata_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \mFmt_Tdata_reg[31] 
       (.C(video_aclk),
        .CE(SyncMReset_n_5),
        .D(mFmt_Tdata[31]),
        .Q(\mFmt_Tdata_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \mFmt_Tdata_reg[32] 
       (.C(video_aclk),
        .CE(SyncMReset_n_5),
        .D(mFmt_Tdata[32]),
        .Q(\mFmt_Tdata_reg_n_0_[32] ),
        .R(1'b0));
  FDRE \mFmt_Tdata_reg[33] 
       (.C(video_aclk),
        .CE(SyncMReset_n_5),
        .D(mFmt_Tdata[33]),
        .Q(\mFmt_Tdata_reg_n_0_[33] ),
        .R(1'b0));
  FDRE \mFmt_Tdata_reg[34] 
       (.C(video_aclk),
        .CE(SyncMReset_n_5),
        .D(mFmt_Tdata[34]),
        .Q(\mFmt_Tdata_reg_n_0_[34] ),
        .R(1'b0));
  FDRE \mFmt_Tdata_reg[35] 
       (.C(video_aclk),
        .CE(SyncMReset_n_5),
        .D(mFmt_Tdata[35]),
        .Q(\mFmt_Tdata_reg_n_0_[35] ),
        .R(1'b0));
  FDRE \mFmt_Tdata_reg[36] 
       (.C(video_aclk),
        .CE(SyncMReset_n_5),
        .D(mFmt_Tdata[36]),
        .Q(\mFmt_Tdata_reg_n_0_[36] ),
        .R(1'b0));
  FDRE \mFmt_Tdata_reg[37] 
       (.C(video_aclk),
        .CE(SyncMReset_n_5),
        .D(mFmt_Tdata[37]),
        .Q(\mFmt_Tdata_reg_n_0_[37] ),
        .R(1'b0));
  FDRE \mFmt_Tdata_reg[38] 
       (.C(video_aclk),
        .CE(SyncMReset_n_5),
        .D(mFmt_Tdata[38]),
        .Q(\mFmt_Tdata_reg_n_0_[38] ),
        .R(1'b0));
  FDRE \mFmt_Tdata_reg[39] 
       (.C(video_aclk),
        .CE(SyncMReset_n_5),
        .D(mFmt_Tdata[39]),
        .Q(\mFmt_Tdata_reg_n_0_[39] ),
        .R(1'b0));
  FDRE \mFmt_Tdata_reg[3] 
       (.C(video_aclk),
        .CE(SyncMReset_n_5),
        .D(data1[3]),
        .Q(\mFmt_Tdata_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \mFmt_Tdata_reg[4] 
       (.C(video_aclk),
        .CE(SyncMReset_n_5),
        .D(data1[4]),
        .Q(\mFmt_Tdata_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \mFmt_Tdata_reg[5] 
       (.C(video_aclk),
        .CE(SyncMReset_n_5),
        .D(data1[5]),
        .Q(\mFmt_Tdata_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \mFmt_Tdata_reg[6] 
       (.C(video_aclk),
        .CE(SyncMReset_n_5),
        .D(data1[6]),
        .Q(\mFmt_Tdata_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \mFmt_Tdata_reg[7] 
       (.C(video_aclk),
        .CE(SyncMReset_n_5),
        .D(data1[7]),
        .Q(\mFmt_Tdata_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \mFmt_Tdata_reg[8] 
       (.C(video_aclk),
        .CE(SyncMReset_n_5),
        .D(data1[8]),
        .Q(\mFmt_Tdata_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \mFmt_Tdata_reg[9] 
       (.C(video_aclk),
        .CE(SyncMReset_n_5),
        .D(data1[9]),
        .Q(\mFmt_Tdata_reg_n_0_[9] ),
        .R(1'b0));
  FDRE mFmt_Tlast_reg
       (.C(video_aclk),
        .CE(1'b1),
        .D(mFmt_Tlast_reg_1),
        .Q(mFmt_Tlast_reg_0),
        .R(1'b0));
  FDRE \mFmt_Tuser_reg[0] 
       (.C(video_aclk),
        .CE(1'b1),
        .D(SyncMReset_n_11),
        .Q(\mFmt_Tuser_reg_n_0_[0] ),
        .R(1'b0));
  FDRE mFmt_Tvalid_reg
       (.C(video_aclk),
        .CE(1'b1),
        .D(mFmt_Tvalid_reg_1),
        .Q(mFmt_Tvalid_reg_0),
        .R(out));
  FDSE mIsHeader_reg
       (.C(video_aclk),
        .CE(1'b1),
        .D(mIsHeader_reg_1),
        .Q(mIsHeader_reg_0),
        .S(out));
  FDRE mKeep_reg
       (.C(video_aclk),
        .CE(1'b1),
        .D(mKeep_reg_1),
        .Q(mKeep_reg_0),
        .R(out));
  FDRE \mReg_Tdata_reg[0] 
       (.C(video_aclk),
        .CE(SyncMReset_n_1),
        .D(DataFIFO_n_33),
        .Q(\mReg_Tdata_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \mReg_Tdata_reg[10] 
       (.C(video_aclk),
        .CE(SyncMReset_n_1),
        .D(DataFIFO_n_23),
        .Q(\mReg_Tdata_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \mReg_Tdata_reg[11] 
       (.C(video_aclk),
        .CE(SyncMReset_n_1),
        .D(DataFIFO_n_22),
        .Q(\mReg_Tdata_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \mReg_Tdata_reg[12] 
       (.C(video_aclk),
        .CE(SyncMReset_n_1),
        .D(DataFIFO_n_21),
        .Q(\mReg_Tdata_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \mReg_Tdata_reg[13] 
       (.C(video_aclk),
        .CE(SyncMReset_n_1),
        .D(DataFIFO_n_20),
        .Q(\mReg_Tdata_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \mReg_Tdata_reg[14] 
       (.C(video_aclk),
        .CE(SyncMReset_n_1),
        .D(DataFIFO_n_19),
        .Q(\mReg_Tdata_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \mReg_Tdata_reg[15] 
       (.C(video_aclk),
        .CE(SyncMReset_n_1),
        .D(DataFIFO_n_18),
        .Q(\mReg_Tdata_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \mReg_Tdata_reg[16] 
       (.C(video_aclk),
        .CE(SyncMReset_n_1),
        .D(DataFIFO_n_17),
        .Q(\mReg_Tdata_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \mReg_Tdata_reg[17] 
       (.C(video_aclk),
        .CE(SyncMReset_n_1),
        .D(DataFIFO_n_16),
        .Q(\mReg_Tdata_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \mReg_Tdata_reg[18] 
       (.C(video_aclk),
        .CE(SyncMReset_n_1),
        .D(DataFIFO_n_15),
        .Q(\mReg_Tdata_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \mReg_Tdata_reg[19] 
       (.C(video_aclk),
        .CE(SyncMReset_n_1),
        .D(DataFIFO_n_14),
        .Q(\mReg_Tdata_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \mReg_Tdata_reg[1] 
       (.C(video_aclk),
        .CE(SyncMReset_n_1),
        .D(DataFIFO_n_32),
        .Q(\mReg_Tdata_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \mReg_Tdata_reg[20] 
       (.C(video_aclk),
        .CE(SyncMReset_n_1),
        .D(DataFIFO_n_13),
        .Q(\mReg_Tdata_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \mReg_Tdata_reg[21] 
       (.C(video_aclk),
        .CE(SyncMReset_n_1),
        .D(DataFIFO_n_12),
        .Q(\mReg_Tdata_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \mReg_Tdata_reg[22] 
       (.C(video_aclk),
        .CE(SyncMReset_n_1),
        .D(DataFIFO_n_11),
        .Q(\mReg_Tdata_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \mReg_Tdata_reg[23] 
       (.C(video_aclk),
        .CE(SyncMReset_n_1),
        .D(DataFIFO_n_10),
        .Q(\mReg_Tdata_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \mReg_Tdata_reg[24] 
       (.C(video_aclk),
        .CE(SyncMReset_n_1),
        .D(DataFIFO_n_9),
        .Q(\mReg_Tdata_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \mReg_Tdata_reg[25] 
       (.C(video_aclk),
        .CE(SyncMReset_n_1),
        .D(DataFIFO_n_8),
        .Q(\mReg_Tdata_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \mReg_Tdata_reg[26] 
       (.C(video_aclk),
        .CE(SyncMReset_n_1),
        .D(DataFIFO_n_7),
        .Q(\mReg_Tdata_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \mReg_Tdata_reg[27] 
       (.C(video_aclk),
        .CE(SyncMReset_n_1),
        .D(DataFIFO_n_6),
        .Q(\mReg_Tdata_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \mReg_Tdata_reg[28] 
       (.C(video_aclk),
        .CE(SyncMReset_n_1),
        .D(DataFIFO_n_5),
        .Q(\mReg_Tdata_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \mReg_Tdata_reg[29] 
       (.C(video_aclk),
        .CE(SyncMReset_n_1),
        .D(DataFIFO_n_4),
        .Q(\mReg_Tdata_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \mReg_Tdata_reg[2] 
       (.C(video_aclk),
        .CE(SyncMReset_n_1),
        .D(DataFIFO_n_31),
        .Q(\mReg_Tdata_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \mReg_Tdata_reg[30] 
       (.C(video_aclk),
        .CE(SyncMReset_n_1),
        .D(DataFIFO_n_3),
        .Q(\mReg_Tdata_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \mReg_Tdata_reg[31] 
       (.C(video_aclk),
        .CE(SyncMReset_n_1),
        .D(DataFIFO_n_2),
        .Q(\mReg_Tdata_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \mReg_Tdata_reg[3] 
       (.C(video_aclk),
        .CE(SyncMReset_n_1),
        .D(DataFIFO_n_30),
        .Q(\mReg_Tdata_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \mReg_Tdata_reg[4] 
       (.C(video_aclk),
        .CE(SyncMReset_n_1),
        .D(DataFIFO_n_29),
        .Q(\mReg_Tdata_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \mReg_Tdata_reg[5] 
       (.C(video_aclk),
        .CE(SyncMReset_n_1),
        .D(DataFIFO_n_28),
        .Q(\mReg_Tdata_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \mReg_Tdata_reg[6] 
       (.C(video_aclk),
        .CE(SyncMReset_n_1),
        .D(DataFIFO_n_27),
        .Q(\mReg_Tdata_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \mReg_Tdata_reg[7] 
       (.C(video_aclk),
        .CE(SyncMReset_n_1),
        .D(DataFIFO_n_26),
        .Q(\mReg_Tdata_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \mReg_Tdata_reg[8] 
       (.C(video_aclk),
        .CE(SyncMReset_n_1),
        .D(DataFIFO_n_25),
        .Q(\mReg_Tdata_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \mReg_Tdata_reg[9] 
       (.C(video_aclk),
        .CE(SyncMReset_n_1),
        .D(DataFIFO_n_24),
        .Q(\mReg_Tdata_reg_n_0_[9] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAAABAAAA)) 
    mReg_Tlast_i_1
       (.I0(m_axis_tlast),
        .I1(mReg_Tlast_i_2_n_0),
        .I2(mReg_Tlast_i_3_n_0),
        .I3(mReg_Tlast_i_4_n_0),
        .I4(mReg_Tlast_i_5_n_0),
        .O(\goreg_dm.dout_i_reg[0] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    mReg_Tlast_i_2
       (.I0(\mWordCount_reg_n_0_[15] ),
        .I1(\mWordCount_reg_n_0_[11] ),
        .I2(\mWordCount_reg_n_0_[7] ),
        .I3(\mWordCount_reg_n_0_[9] ),
        .I4(\mWordCount_reg_n_0_[8] ),
        .I5(\mWordCount_reg_n_0_[10] ),
        .O(mReg_Tlast_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    mReg_Tlast_i_3
       (.I0(\mWordCount_reg_n_0_[5] ),
        .I1(\mWordCount_reg_n_0_[3] ),
        .I2(\mWordCount_reg_n_0_[13] ),
        .I3(\mWordCount_reg_n_0_[4] ),
        .O(mReg_Tlast_i_3_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    mReg_Tlast_i_4
       (.I0(\mWordCount_reg_n_0_[12] ),
        .I1(\mWordCount_reg_n_0_[14] ),
        .I2(\mWordCount_reg_n_0_[6] ),
        .O(mReg_Tlast_i_4_n_0));
  LUT3 #(
    .INIT(8'h56)) 
    mReg_Tlast_i_5
       (.I0(\mWordCount_reg_n_0_[2] ),
        .I1(\mWordCount_reg_n_0_[1] ),
        .I2(\mWordCount_reg_n_0_[0] ),
        .O(mReg_Tlast_i_5_n_0));
  FDRE mReg_Tlast_reg
       (.C(video_aclk),
        .CE(SyncMReset_n_1),
        .D(\goreg_dm.dout_i_reg[0] ),
        .Q(mReg_Tlast_reg_0),
        .R(1'b0));
  FDRE \mReg_Tuser_reg[0] 
       (.C(video_aclk),
        .CE(1'b1),
        .D(\mReg_Tuser_reg[0]_1 ),
        .Q(\mReg_Tuser_reg[0]_0 ),
        .R(out));
  FDRE mReg_Tvalid_reg
       (.C(video_aclk),
        .CE(1'b1),
        .D(mReg_Tvalid_reg_1),
        .Q(mReg_Tvalid_reg_0),
        .R(out));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \mWordCount[0]_i_3 
       (.I0(s_axis_tready),
        .I1(mKeep_reg_0),
        .I2(m_axis_tvalid),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg ));
  FDRE \mWordCount_reg[0] 
       (.C(video_aclk),
        .CE(ECCx_n_7),
        .D(ECCx_n_16),
        .Q(\mWordCount_reg_n_0_[0] ),
        .R(out));
  FDRE \mWordCount_reg[10] 
       (.C(video_aclk),
        .CE(ECCx_n_7),
        .D(ECCx_n_22),
        .Q(\mWordCount_reg_n_0_[10] ),
        .R(out));
  FDRE \mWordCount_reg[11] 
       (.C(video_aclk),
        .CE(ECCx_n_7),
        .D(ECCx_n_21),
        .Q(\mWordCount_reg_n_0_[11] ),
        .R(out));
  FDRE \mWordCount_reg[12] 
       (.C(video_aclk),
        .CE(ECCx_n_7),
        .D(ECCx_n_28),
        .Q(\mWordCount_reg_n_0_[12] ),
        .R(out));
  FDRE \mWordCount_reg[13] 
       (.C(video_aclk),
        .CE(ECCx_n_7),
        .D(ECCx_n_27),
        .Q(\mWordCount_reg_n_0_[13] ),
        .R(out));
  FDRE \mWordCount_reg[14] 
       (.C(video_aclk),
        .CE(ECCx_n_7),
        .D(ECCx_n_26),
        .Q(\mWordCount_reg_n_0_[14] ),
        .R(out));
  FDRE \mWordCount_reg[15] 
       (.C(video_aclk),
        .CE(ECCx_n_7),
        .D(ECCx_n_25),
        .Q(\mWordCount_reg_n_0_[15] ),
        .R(out));
  FDRE \mWordCount_reg[1] 
       (.C(video_aclk),
        .CE(ECCx_n_7),
        .D(ECCx_n_15),
        .Q(\mWordCount_reg_n_0_[1] ),
        .R(out));
  FDRE \mWordCount_reg[2] 
       (.C(video_aclk),
        .CE(ECCx_n_7),
        .D(ECCx_n_14),
        .Q(\mWordCount_reg_n_0_[2] ),
        .R(out));
  FDRE \mWordCount_reg[3] 
       (.C(video_aclk),
        .CE(ECCx_n_7),
        .D(ECCx_n_13),
        .Q(\mWordCount_reg_n_0_[3] ),
        .R(out));
  FDRE \mWordCount_reg[4] 
       (.C(video_aclk),
        .CE(ECCx_n_7),
        .D(ECCx_n_20),
        .Q(\mWordCount_reg_n_0_[4] ),
        .R(out));
  FDRE \mWordCount_reg[5] 
       (.C(video_aclk),
        .CE(ECCx_n_7),
        .D(ECCx_n_19),
        .Q(\mWordCount_reg_n_0_[5] ),
        .R(out));
  FDRE \mWordCount_reg[6] 
       (.C(video_aclk),
        .CE(ECCx_n_7),
        .D(ECCx_n_18),
        .Q(\mWordCount_reg_n_0_[6] ),
        .R(out));
  FDRE \mWordCount_reg[7] 
       (.C(video_aclk),
        .CE(ECCx_n_7),
        .D(ECCx_n_17),
        .Q(\mWordCount_reg_n_0_[7] ),
        .R(out));
  FDRE \mWordCount_reg[8] 
       (.C(video_aclk),
        .CE(ECCx_n_7),
        .D(ECCx_n_24),
        .Q(\mWordCount_reg_n_0_[8] ),
        .R(out));
  FDRE \mWordCount_reg[9] 
       (.C(video_aclk),
        .CE(ECCx_n_7),
        .D(ECCx_n_23),
        .Q(\mWordCount_reg_n_0_[9] ),
        .R(out));
endmodule

(* ORIG_REF_NAME = "LM" *) 
module system_MIPI_CSI_2_RX_0_0_LM
   (s_axis_tvalid,
    s_axis_tlast,
    Q,
    \rbMAxisTkeep_reg[3]_0 ,
    RxByteClkHS,
    rbRst,
    out,
    rbEnInt_reg_0,
    D,
    iDataIn,
    I62);
  output s_axis_tvalid;
  output s_axis_tlast;
  output [31:0]Q;
  output [3:0]\rbMAxisTkeep_reg[3]_0 ;
  input RxByteClkHS;
  input rbRst;
  input [0:0]out;
  input [0:0]rbEnInt_reg_0;
  input [0:0]D;
  input [10:0]iDataIn;
  input [10:0]I62;

  wire [0:0]D;
  wire \DeskewFIFOs[0].DeskewFIFOx_n_0 ;
  wire \DeskewFIFOs[0].DeskewFIFOx_n_1 ;
  wire \DeskewFIFOs[0].DeskewFIFOx_n_16 ;
  wire \DeskewFIFOs[0].DeskewFIFOx_n_17 ;
  wire \DeskewFIFOs[0].DeskewFIFOx_n_18 ;
  wire \DeskewFIFOs[0].DeskewFIFOx_n_19 ;
  wire \DeskewFIFOs[0].DeskewFIFOx_n_2 ;
  wire \DeskewFIFOs[0].DeskewFIFOx_n_3 ;
  wire \DeskewFIFOs[0].DeskewFIFOx_n_5 ;
  wire \DeskewFIFOs[0].DeskewFIFOx_n_6 ;
  wire \DeskewFIFOs[1].DeskewFIFOx_n_0 ;
  wire \DeskewFIFOs[1].DeskewFIFOx_n_1 ;
  wire \DeskewFIFOs[1].DeskewFIFOx_n_10 ;
  wire \DeskewFIFOs[1].DeskewFIFOx_n_11 ;
  wire \DeskewFIFOs[1].DeskewFIFOx_n_12 ;
  wire \DeskewFIFOs[1].DeskewFIFOx_n_13 ;
  wire \DeskewFIFOs[1].DeskewFIFOx_n_14 ;
  wire \DeskewFIFOs[1].DeskewFIFOx_n_16 ;
  wire \DeskewFIFOs[1].DeskewFIFOx_n_3 ;
  wire \DeskewFIFOs[1].DeskewFIFOx_n_4 ;
  wire \DeskewFIFOs[1].DeskewFIFOx_n_5 ;
  wire \DeskewFIFOs[1].DeskewFIFOx_n_6 ;
  wire \DeskewFIFOs[1].DeskewFIFOx_n_7 ;
  wire \DeskewFIFOs[1].DeskewFIFOx_n_8 ;
  wire \DeskewFIFOs[1].DeskewFIFOx_n_9 ;
  wire [10:0]I62;
  wire [31:0]Q;
  wire RxByteClkHS;
  wire andv__0;
  wire [10:0]iDataIn;
  wire iRdA0;
  wire orv2_out;
  wire orv4_out;
  wire [0:0]out;
  wire [1:0]p_0_in4_in;
  wire \rbByteCnt_reg_n_0_[1] ;
  wire rbEnInt;
  wire rbEnInt_i_1_n_0;
  wire [0:0]rbEnInt_reg_0;
  wire [3:0]\rbMAxisTkeep_reg[3]_0 ;
  wire rbNstate;
  wire rbRst;
  wire \rbState[0]_i_1_n_0 ;
  wire \rbState[1]_i_1_n_0 ;
  wire \rbState[2]_i_1_n_0 ;
  wire \rbState_reg_n_0_[0] ;
  wire \rbState_reg_n_0_[1] ;
  wire \rbState_reg_n_0_[2] ;
  wire [31:0]rbTdataInt;
  wire [23:16]rbTdataInt1__0;
  wire \rbTkeepInt[0]_i_1_n_0 ;
  wire \rbTkeepInt[1]_i_1_n_0 ;
  wire \rbTkeepInt[2]_i_1_n_0 ;
  wire \rbTkeepInt[3]_i_1_n_0 ;
  wire \rbTkeepInt[3]_i_2_n_0 ;
  wire \rbTkeepInt_reg_n_0_[0] ;
  wire \rbTkeepInt_reg_n_0_[1] ;
  wire \rbTkeepInt_reg_n_0_[2] ;
  wire \rbTkeepInt_reg_n_0_[3] ;
  wire rbTlastInt;
  wire s_axis_tlast;
  wire s_axis_tvalid;

  system_MIPI_CSI_2_RX_0_0_SimpleFIFO \DeskewFIFOs[0].DeskewFIFOx 
       (.D(D),
        .E(\DeskewFIFOs[0].DeskewFIFOx_n_2 ),
        .RxByteClkHS(RxByteClkHS),
        .andv__0(andv__0),
        .iDataIn(iDataIn),
        .iDataOut({\DeskewFIFOs[0].DeskewFIFOx_n_5 ,\DeskewFIFOs[0].DeskewFIFOx_n_6 ,rbTdataInt1__0}),
        .iEmptyInt_reg_0(\DeskewFIFOs[0].DeskewFIFOx_n_0 ),
        .iEmptyInt_reg_1(\DeskewFIFOs[1].DeskewFIFOx_n_3 ),
        .iFullInt_reg_0(\DeskewFIFOs[0].DeskewFIFOx_n_1 ),
        .iRdA0(iRdA0),
        .out(out),
        .\rbByteCnt_reg[1] (\DeskewFIFOs[0].DeskewFIFOx_n_3 ),
        .rbEnInt(rbEnInt),
        .rbMAxisTvalidInt_reg(\rbState_reg_n_0_[2] ),
        .rbMAxisTvalidInt_reg_0(\rbState_reg_n_0_[1] ),
        .rbMAxisTvalidInt_reg_1(\rbState_reg_n_0_[0] ),
        .rbMAxisTvalidInt_reg_2(\rbByteCnt_reg_n_0_[1] ),
        .rbNstate(rbNstate),
        .rbRst(rbRst),
        .\rbState[2]_i_4_0 ({\DeskewFIFOs[1].DeskewFIFOx_n_4 ,\DeskewFIFOs[1].DeskewFIFOx_n_5 }),
        .\rbState[2]_i_4_1 (\DeskewFIFOs[1].DeskewFIFOx_n_0 ),
        .\rbState_reg[0] ({\DeskewFIFOs[0].DeskewFIFOx_n_16 ,\DeskewFIFOs[0].DeskewFIFOx_n_17 ,\DeskewFIFOs[0].DeskewFIFOx_n_18 ,\DeskewFIFOs[0].DeskewFIFOx_n_19 }),
        .\rbState_reg[0]_0 (\DeskewFIFOs[1].DeskewFIFOx_n_14 ));
  FDRE \DeskewFIFOs[0].rbActiveHS_q_reg[0] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[1].DeskewFIFOx_n_3 ),
        .D(\DeskewFIFOs[0].DeskewFIFOx_n_5 ),
        .Q(p_0_in4_in[0]),
        .R(1'b0));
  system_MIPI_CSI_2_RX_0_0_SimpleFIFO_2 \DeskewFIFOs[1].DeskewFIFOx 
       (.\DeskewFIFOs[1].rbActiveHS_q_reg[1] ({\DeskewFIFOs[0].DeskewFIFOx_n_5 ,\DeskewFIFOs[0].DeskewFIFOx_n_6 }),
        .\DeskewFIFOs[1].rbActiveHS_q_reg[1]_0 (\rbState_reg_n_0_[2] ),
        .\DeskewFIFOs[1].rbActiveHS_q_reg[1]_1 (\rbState_reg_n_0_[0] ),
        .\DeskewFIFOs[1].rbActiveHS_q_reg[1]_2 (\rbState_reg_n_0_[1] ),
        .I62(I62),
        .RxByteClkHS(RxByteClkHS),
        .iDataOut({\DeskewFIFOs[1].DeskewFIFOx_n_4 ,\DeskewFIFOs[1].DeskewFIFOx_n_5 ,\DeskewFIFOs[1].DeskewFIFOx_n_6 ,\DeskewFIFOs[1].DeskewFIFOx_n_7 ,\DeskewFIFOs[1].DeskewFIFOx_n_8 ,\DeskewFIFOs[1].DeskewFIFOx_n_9 ,\DeskewFIFOs[1].DeskewFIFOx_n_10 ,\DeskewFIFOs[1].DeskewFIFOx_n_11 ,\DeskewFIFOs[1].DeskewFIFOx_n_12 ,\DeskewFIFOs[1].DeskewFIFOx_n_13 }),
        .iFullInt_reg_0(\DeskewFIFOs[1].DeskewFIFOx_n_0 ),
        .iRdA0(iRdA0),
        .\iRdA_reg[0]_0 (\DeskewFIFOs[0].DeskewFIFOx_n_0 ),
        .orv2_out(orv2_out),
        .orv4_out(orv4_out),
        .p_0_in4_in(p_0_in4_in),
        .\rbByteCnt_reg[1] (\DeskewFIFOs[1].DeskewFIFOx_n_16 ),
        .\rbByteCnt_reg[1]_0 (\rbByteCnt_reg_n_0_[1] ),
        .rbEnInt(rbEnInt),
        .rbRst(rbRst),
        .\rbState_reg[0] (\DeskewFIFOs[1].DeskewFIFOx_n_14 ),
        .\rbState_reg[0]_0 (\DeskewFIFOs[0].DeskewFIFOx_n_1 ),
        .\rbState_reg[2] (\DeskewFIFOs[1].DeskewFIFOx_n_1 ),
        .\rbState_reg[2]_0 (\DeskewFIFOs[1].DeskewFIFOx_n_3 ),
        .rbTlastInt(rbTlastInt));
  FDRE \DeskewFIFOs[1].rbActiveHS_q_reg[1] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[1].DeskewFIFOx_n_1 ),
        .D(\DeskewFIFOs[1].DeskewFIFOx_n_4 ),
        .Q(p_0_in4_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rbByteCnt_reg[1] 
       (.C(RxByteClkHS),
        .CE(1'b1),
        .D(\DeskewFIFOs[1].DeskewFIFOx_n_16 ),
        .Q(\rbByteCnt_reg_n_0_[1] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    rbEnInt_i_1
       (.I0(\rbState_reg_n_0_[2] ),
        .I1(\rbState_reg_n_0_[0] ),
        .I2(\rbState_reg_n_0_[1] ),
        .I3(rbEnInt_reg_0),
        .O(rbEnInt_i_1_n_0));
  FDRE rbEnInt_reg
       (.C(RxByteClkHS),
        .CE(1'b1),
        .D(rbEnInt_i_1_n_0),
        .Q(rbEnInt),
        .R(1'b0));
  FDRE \rbMAxisTdata_reg[0] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_2 ),
        .D(rbTdataInt[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \rbMAxisTdata_reg[10] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_2 ),
        .D(rbTdataInt[10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \rbMAxisTdata_reg[11] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_2 ),
        .D(rbTdataInt[11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \rbMAxisTdata_reg[12] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_2 ),
        .D(rbTdataInt[12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \rbMAxisTdata_reg[13] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_2 ),
        .D(rbTdataInt[13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \rbMAxisTdata_reg[14] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_2 ),
        .D(rbTdataInt[14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \rbMAxisTdata_reg[15] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_2 ),
        .D(rbTdataInt[15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \rbMAxisTdata_reg[16] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_2 ),
        .D(rbTdataInt[16]),
        .Q(Q[16]),
        .R(1'b0));
  FDRE \rbMAxisTdata_reg[17] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_2 ),
        .D(rbTdataInt[17]),
        .Q(Q[17]),
        .R(1'b0));
  FDRE \rbMAxisTdata_reg[18] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_2 ),
        .D(rbTdataInt[18]),
        .Q(Q[18]),
        .R(1'b0));
  FDRE \rbMAxisTdata_reg[19] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_2 ),
        .D(rbTdataInt[19]),
        .Q(Q[19]),
        .R(1'b0));
  FDRE \rbMAxisTdata_reg[1] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_2 ),
        .D(rbTdataInt[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \rbMAxisTdata_reg[20] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_2 ),
        .D(rbTdataInt[20]),
        .Q(Q[20]),
        .R(1'b0));
  FDRE \rbMAxisTdata_reg[21] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_2 ),
        .D(rbTdataInt[21]),
        .Q(Q[21]),
        .R(1'b0));
  FDRE \rbMAxisTdata_reg[22] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_2 ),
        .D(rbTdataInt[22]),
        .Q(Q[22]),
        .R(1'b0));
  FDRE \rbMAxisTdata_reg[23] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_2 ),
        .D(rbTdataInt[23]),
        .Q(Q[23]),
        .R(1'b0));
  FDRE \rbMAxisTdata_reg[24] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_2 ),
        .D(rbTdataInt[24]),
        .Q(Q[24]),
        .R(1'b0));
  FDRE \rbMAxisTdata_reg[25] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_2 ),
        .D(rbTdataInt[25]),
        .Q(Q[25]),
        .R(1'b0));
  FDRE \rbMAxisTdata_reg[26] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_2 ),
        .D(rbTdataInt[26]),
        .Q(Q[26]),
        .R(1'b0));
  FDRE \rbMAxisTdata_reg[27] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_2 ),
        .D(rbTdataInt[27]),
        .Q(Q[27]),
        .R(1'b0));
  FDRE \rbMAxisTdata_reg[28] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_2 ),
        .D(rbTdataInt[28]),
        .Q(Q[28]),
        .R(1'b0));
  FDRE \rbMAxisTdata_reg[29] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_2 ),
        .D(rbTdataInt[29]),
        .Q(Q[29]),
        .R(1'b0));
  FDRE \rbMAxisTdata_reg[2] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_2 ),
        .D(rbTdataInt[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \rbMAxisTdata_reg[30] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_2 ),
        .D(rbTdataInt[30]),
        .Q(Q[30]),
        .R(1'b0));
  FDRE \rbMAxisTdata_reg[31] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_2 ),
        .D(rbTdataInt[31]),
        .Q(Q[31]),
        .R(1'b0));
  FDRE \rbMAxisTdata_reg[3] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_2 ),
        .D(rbTdataInt[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \rbMAxisTdata_reg[4] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_2 ),
        .D(rbTdataInt[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \rbMAxisTdata_reg[5] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_2 ),
        .D(rbTdataInt[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \rbMAxisTdata_reg[6] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_2 ),
        .D(rbTdataInt[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \rbMAxisTdata_reg[7] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_2 ),
        .D(rbTdataInt[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \rbMAxisTdata_reg[8] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_2 ),
        .D(rbTdataInt[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \rbMAxisTdata_reg[9] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_2 ),
        .D(rbTdataInt[9]),
        .Q(Q[9]),
        .R(1'b0));
  FDRE \rbMAxisTkeep_reg[0] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_2 ),
        .D(\rbTkeepInt_reg_n_0_[0] ),
        .Q(\rbMAxisTkeep_reg[3]_0 [0]),
        .R(1'b0));
  FDRE \rbMAxisTkeep_reg[1] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_2 ),
        .D(\rbTkeepInt_reg_n_0_[1] ),
        .Q(\rbMAxisTkeep_reg[3]_0 [1]),
        .R(1'b0));
  FDRE \rbMAxisTkeep_reg[2] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_2 ),
        .D(\rbTkeepInt_reg_n_0_[2] ),
        .Q(\rbMAxisTkeep_reg[3]_0 [2]),
        .R(1'b0));
  FDRE \rbMAxisTkeep_reg[3] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_2 ),
        .D(\rbTkeepInt_reg_n_0_[3] ),
        .Q(\rbMAxisTkeep_reg[3]_0 [3]),
        .R(1'b0));
  FDRE rbMAxisTlast_reg
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_2 ),
        .D(rbTlastInt),
        .Q(s_axis_tlast),
        .R(1'b0));
  FDRE rbMAxisTvalidInt_reg
       (.C(RxByteClkHS),
        .CE(1'b1),
        .D(\DeskewFIFOs[0].DeskewFIFOx_n_3 ),
        .Q(s_axis_tvalid),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF5F3FFFFF3F00000)) 
    \rbState[0]_i_1 
       (.I0(andv__0),
        .I1(orv4_out),
        .I2(\rbState_reg_n_0_[2] ),
        .I3(\rbState_reg_n_0_[1] ),
        .I4(rbNstate),
        .I5(\rbState_reg_n_0_[0] ),
        .O(\rbState[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0054FFFF00FF0000)) 
    \rbState[1]_i_1 
       (.I0(\rbState_reg_n_0_[0] ),
        .I1(\DeskewFIFOs[1].DeskewFIFOx_n_0 ),
        .I2(\DeskewFIFOs[0].DeskewFIFOx_n_1 ),
        .I3(\rbState_reg_n_0_[2] ),
        .I4(rbNstate),
        .I5(\rbState_reg_n_0_[1] ),
        .O(\rbState[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0030FFFFEE880000)) 
    \rbState[2]_i_1 
       (.I0(orv4_out),
        .I1(\rbState_reg_n_0_[1] ),
        .I2(orv2_out),
        .I3(\rbState_reg_n_0_[0] ),
        .I4(rbNstate),
        .I5(\rbState_reg_n_0_[2] ),
        .O(\rbState[2]_i_1_n_0 ));
  FDRE \rbState_reg[0] 
       (.C(RxByteClkHS),
        .CE(1'b1),
        .D(\rbState[0]_i_1_n_0 ),
        .Q(\rbState_reg_n_0_[0] ),
        .R(rbRst));
  FDRE \rbState_reg[1] 
       (.C(RxByteClkHS),
        .CE(1'b1),
        .D(\rbState[1]_i_1_n_0 ),
        .Q(\rbState_reg_n_0_[1] ),
        .R(rbRst));
  FDRE \rbState_reg[2] 
       (.C(RxByteClkHS),
        .CE(1'b1),
        .D(\rbState[2]_i_1_n_0 ),
        .Q(\rbState_reg_n_0_[2] ),
        .R(rbRst));
  FDRE \rbTdataInt_reg[0] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_19 ),
        .D(rbTdataInt1__0[16]),
        .Q(rbTdataInt[0]),
        .R(rbRst));
  FDRE \rbTdataInt_reg[10] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_18 ),
        .D(\DeskewFIFOs[1].DeskewFIFOx_n_11 ),
        .Q(rbTdataInt[10]),
        .R(rbRst));
  FDRE \rbTdataInt_reg[11] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_18 ),
        .D(\DeskewFIFOs[1].DeskewFIFOx_n_10 ),
        .Q(rbTdataInt[11]),
        .R(rbRst));
  FDRE \rbTdataInt_reg[12] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_18 ),
        .D(\DeskewFIFOs[1].DeskewFIFOx_n_9 ),
        .Q(rbTdataInt[12]),
        .R(rbRst));
  FDRE \rbTdataInt_reg[13] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_18 ),
        .D(\DeskewFIFOs[1].DeskewFIFOx_n_8 ),
        .Q(rbTdataInt[13]),
        .R(rbRst));
  FDRE \rbTdataInt_reg[14] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_18 ),
        .D(\DeskewFIFOs[1].DeskewFIFOx_n_7 ),
        .Q(rbTdataInt[14]),
        .R(rbRst));
  FDRE \rbTdataInt_reg[15] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_18 ),
        .D(\DeskewFIFOs[1].DeskewFIFOx_n_6 ),
        .Q(rbTdataInt[15]),
        .R(rbRst));
  FDRE \rbTdataInt_reg[16] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_17 ),
        .D(rbTdataInt1__0[16]),
        .Q(rbTdataInt[16]),
        .R(rbRst));
  FDRE \rbTdataInt_reg[17] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_17 ),
        .D(rbTdataInt1__0[17]),
        .Q(rbTdataInt[17]),
        .R(rbRst));
  FDRE \rbTdataInt_reg[18] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_17 ),
        .D(rbTdataInt1__0[18]),
        .Q(rbTdataInt[18]),
        .R(rbRst));
  FDRE \rbTdataInt_reg[19] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_17 ),
        .D(rbTdataInt1__0[19]),
        .Q(rbTdataInt[19]),
        .R(rbRst));
  FDRE \rbTdataInt_reg[1] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_19 ),
        .D(rbTdataInt1__0[17]),
        .Q(rbTdataInt[1]),
        .R(rbRst));
  FDRE \rbTdataInt_reg[20] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_17 ),
        .D(rbTdataInt1__0[20]),
        .Q(rbTdataInt[20]),
        .R(rbRst));
  FDRE \rbTdataInt_reg[21] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_17 ),
        .D(rbTdataInt1__0[21]),
        .Q(rbTdataInt[21]),
        .R(rbRst));
  FDRE \rbTdataInt_reg[22] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_17 ),
        .D(rbTdataInt1__0[22]),
        .Q(rbTdataInt[22]),
        .R(rbRst));
  FDRE \rbTdataInt_reg[23] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_17 ),
        .D(rbTdataInt1__0[23]),
        .Q(rbTdataInt[23]),
        .R(rbRst));
  FDRE \rbTdataInt_reg[24] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_16 ),
        .D(\DeskewFIFOs[1].DeskewFIFOx_n_13 ),
        .Q(rbTdataInt[24]),
        .R(rbRst));
  FDRE \rbTdataInt_reg[25] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_16 ),
        .D(\DeskewFIFOs[1].DeskewFIFOx_n_12 ),
        .Q(rbTdataInt[25]),
        .R(rbRst));
  FDRE \rbTdataInt_reg[26] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_16 ),
        .D(\DeskewFIFOs[1].DeskewFIFOx_n_11 ),
        .Q(rbTdataInt[26]),
        .R(rbRst));
  FDRE \rbTdataInt_reg[27] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_16 ),
        .D(\DeskewFIFOs[1].DeskewFIFOx_n_10 ),
        .Q(rbTdataInt[27]),
        .R(rbRst));
  FDRE \rbTdataInt_reg[28] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_16 ),
        .D(\DeskewFIFOs[1].DeskewFIFOx_n_9 ),
        .Q(rbTdataInt[28]),
        .R(rbRst));
  FDRE \rbTdataInt_reg[29] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_16 ),
        .D(\DeskewFIFOs[1].DeskewFIFOx_n_8 ),
        .Q(rbTdataInt[29]),
        .R(rbRst));
  FDRE \rbTdataInt_reg[2] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_19 ),
        .D(rbTdataInt1__0[18]),
        .Q(rbTdataInt[2]),
        .R(rbRst));
  FDRE \rbTdataInt_reg[30] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_16 ),
        .D(\DeskewFIFOs[1].DeskewFIFOx_n_7 ),
        .Q(rbTdataInt[30]),
        .R(rbRst));
  FDRE \rbTdataInt_reg[31] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_16 ),
        .D(\DeskewFIFOs[1].DeskewFIFOx_n_6 ),
        .Q(rbTdataInt[31]),
        .R(rbRst));
  FDRE \rbTdataInt_reg[3] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_19 ),
        .D(rbTdataInt1__0[19]),
        .Q(rbTdataInt[3]),
        .R(rbRst));
  FDRE \rbTdataInt_reg[4] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_19 ),
        .D(rbTdataInt1__0[20]),
        .Q(rbTdataInt[4]),
        .R(rbRst));
  FDRE \rbTdataInt_reg[5] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_19 ),
        .D(rbTdataInt1__0[21]),
        .Q(rbTdataInt[5]),
        .R(rbRst));
  FDRE \rbTdataInt_reg[6] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_19 ),
        .D(rbTdataInt1__0[22]),
        .Q(rbTdataInt[6]),
        .R(rbRst));
  FDRE \rbTdataInt_reg[7] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_19 ),
        .D(rbTdataInt1__0[23]),
        .Q(rbTdataInt[7]),
        .R(rbRst));
  FDRE \rbTdataInt_reg[8] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_18 ),
        .D(\DeskewFIFOs[1].DeskewFIFOx_n_13 ),
        .Q(rbTdataInt[8]),
        .R(rbRst));
  FDRE \rbTdataInt_reg[9] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_18 ),
        .D(\DeskewFIFOs[1].DeskewFIFOx_n_12 ),
        .Q(rbTdataInt[9]),
        .R(rbRst));
  LUT5 #(
    .INIT(32'h77F700A0)) 
    \rbTkeepInt[0]_i_1 
       (.I0(\rbTkeepInt[3]_i_2_n_0 ),
        .I1(\DeskewFIFOs[0].DeskewFIFOx_n_3 ),
        .I2(\DeskewFIFOs[0].DeskewFIFOx_n_6 ),
        .I3(\rbByteCnt_reg_n_0_[1] ),
        .I4(\rbTkeepInt_reg_n_0_[0] ),
        .O(\rbTkeepInt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7777F7770000A000)) 
    \rbTkeepInt[1]_i_1 
       (.I0(\rbTkeepInt[3]_i_2_n_0 ),
        .I1(\DeskewFIFOs[0].DeskewFIFOx_n_3 ),
        .I2(\DeskewFIFOs[0].DeskewFIFOx_n_6 ),
        .I3(\DeskewFIFOs[1].DeskewFIFOx_n_5 ),
        .I4(\rbByteCnt_reg_n_0_[1] ),
        .I5(\rbTkeepInt_reg_n_0_[1] ),
        .O(\rbTkeepInt[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF777A000)) 
    \rbTkeepInt[2]_i_1 
       (.I0(\rbTkeepInt[3]_i_2_n_0 ),
        .I1(\DeskewFIFOs[0].DeskewFIFOx_n_3 ),
        .I2(\DeskewFIFOs[0].DeskewFIFOx_n_6 ),
        .I3(\rbByteCnt_reg_n_0_[1] ),
        .I4(\rbTkeepInt_reg_n_0_[2] ),
        .O(\rbTkeepInt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF7777777A0000000)) 
    \rbTkeepInt[3]_i_1 
       (.I0(\rbTkeepInt[3]_i_2_n_0 ),
        .I1(\DeskewFIFOs[0].DeskewFIFOx_n_3 ),
        .I2(\DeskewFIFOs[0].DeskewFIFOx_n_6 ),
        .I3(\DeskewFIFOs[1].DeskewFIFOx_n_5 ),
        .I4(\rbByteCnt_reg_n_0_[1] ),
        .I5(\rbTkeepInt_reg_n_0_[3] ),
        .O(\rbTkeepInt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h24)) 
    \rbTkeepInt[3]_i_2 
       (.I0(\rbState_reg_n_0_[1] ),
        .I1(\rbState_reg_n_0_[2] ),
        .I2(\rbState_reg_n_0_[0] ),
        .O(\rbTkeepInt[3]_i_2_n_0 ));
  FDRE \rbTkeepInt_reg[0] 
       (.C(RxByteClkHS),
        .CE(1'b1),
        .D(\rbTkeepInt[0]_i_1_n_0 ),
        .Q(\rbTkeepInt_reg_n_0_[0] ),
        .R(rbRst));
  FDRE \rbTkeepInt_reg[1] 
       (.C(RxByteClkHS),
        .CE(1'b1),
        .D(\rbTkeepInt[1]_i_1_n_0 ),
        .Q(\rbTkeepInt_reg_n_0_[1] ),
        .R(rbRst));
  FDRE \rbTkeepInt_reg[2] 
       (.C(RxByteClkHS),
        .CE(1'b1),
        .D(\rbTkeepInt[2]_i_1_n_0 ),
        .Q(\rbTkeepInt_reg_n_0_[2] ),
        .R(rbRst));
  FDRE \rbTkeepInt_reg[3] 
       (.C(RxByteClkHS),
        .CE(1'b1),
        .D(\rbTkeepInt[3]_i_1_n_0 ),
        .Q(\rbTkeepInt_reg_n_0_[3] ),
        .R(rbRst));
endmodule

(* ORIG_REF_NAME = "MIPI_CSI2_Rx" *) 
module system_MIPI_CSI_2_RX_0_0_MIPI_CSI2_Rx
   (aD1Enable,
    m_axis_video_tvalid,
    m_axis_video_tdata,
    m_axis_video_tlast,
    m_axis_video_tuser,
    RxByteClkHS,
    video_aclk,
    \aDEnableInt_reg[0]_0 ,
    D,
    vRst_n,
    iDataIn,
    I62,
    m_axis_video_tready);
  output aD1Enable;
  output m_axis_video_tvalid;
  output [39:0]m_axis_video_tdata;
  output m_axis_video_tlast;
  output [0:0]m_axis_video_tuser;
  input RxByteClkHS;
  input video_aclk;
  input \aDEnableInt_reg[0]_0 ;
  input [0:0]D;
  input vRst_n;
  input [10:0]iDataIn;
  input [10:0]I62;
  input m_axis_video_tready;

  wire [0:0]D;
  wire DataFIFO_i_1_n_0;
  wire [10:0]I62;
  wire LLP_inst_n_0;
  wire LLP_inst_n_1;
  wire LLP_inst_n_2;
  wire LLP_inst_n_3;
  wire LLP_inst_n_4;
  wire LLP_inst_n_48;
  wire LLP_inst_n_49;
  wire LLP_inst_n_50;
  wire LLP_inst_n_51;
  wire LLP_inst_n_52;
  wire LLP_inst_n_53;
  wire LLP_inst_n_54;
  wire LLP_inst_n_55;
  wire LLP_inst_n_56;
  wire LLP_inst_n_57;
  wire LLP_inst_n_58;
  wire LLP_inst_n_59;
  wire LLP_inst_n_60;
  wire LLP_inst_n_61;
  wire LLP_inst_n_62;
  wire LLP_inst_n_64;
  wire LLP_inst_n_65;
  wire LLP_inst_n_66;
  wire LLP_inst_n_67;
  wire LLP_inst_n_68;
  wire LLP_inst_n_69;
  wire RxByteClkHS;
  wire SyncAsyncTready_n_0;
  wire aD1Enable;
  wire \aDEnableInt_reg[0]_0 ;
  wire [10:0]iDataIn;
  wire mFmt_Tlast_i_1_n_0;
  wire mFmt_Tvalid_i_1_n_0;
  wire mIsHeader0;
  wire mIsHeader_i_1_n_0;
  wire mKeep0_out;
  wire mKeep_i_1_n_0;
  wire mReg_Tuser0;
  wire \mReg_Tuser[0]_i_1_n_0 ;
  wire mReg_Tvalid_i_1_n_0;
  wire [39:0]m_axis_video_tdata;
  wire m_axis_video_tlast;
  wire m_axis_video_tready;
  wire [0:0]m_axis_video_tuser;
  wire m_axis_video_tvalid;
  wire rbEn;
  wire rbLLPAxisTready;
  wire [31:0]rbLMAxisTdata;
  wire [3:0]rbLMAxisTkeep;
  wire rbLMAxisTlast;
  wire rbLMAxisTvalid;
  wire rbRst;
  wire rbRst_n;
  wire sError_i_1_n_0;
  wire sValid_i_1_n_0;
  wire vRst;
  wire vRst_n;
  wire video_aclk;

  LUT1 #(
    .INIT(2'h1)) 
    DataFIFO_i_1
       (.I0(LLP_inst_n_1),
        .O(DataFIFO_i_1_n_0));
  system_MIPI_CSI_2_RX_0_0_LLP LLP_inst
       (.AS(vRst),
        .\FSM_onehot_sState_reg[3] (LLP_inst_n_62),
        .Q(rbLMAxisTdata),
        .\RAW10Formatter.cnt_reg[0]_0 (LLP_inst_n_66),
        .\RAW10Formatter.cnt_reg[1]_0 (LLP_inst_n_65),
        .\RAW10Formatter.cnt_reg[2]_0 (LLP_inst_n_64),
        .RxByteClkHS(RxByteClkHS),
        .\delay_reg[1]_0 (rbLLPAxisTready),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg (LLP_inst_n_69),
        .\goreg_dm.dout_i_reg[0] (LLP_inst_n_51),
        .\gpr1.dout_i_reg[1] (rbLMAxisTkeep),
        .mFmt_Tlast_reg_0(LLP_inst_n_49),
        .mFmt_Tlast_reg_1(mFmt_Tlast_i_1_n_0),
        .mFmt_Tvalid_reg_0(LLP_inst_n_48),
        .mFmt_Tvalid_reg_1(mFmt_Tvalid_i_1_n_0),
        .mIsHeader0(mIsHeader0),
        .mIsHeader_reg_0(LLP_inst_n_55),
        .mIsHeader_reg_1(mIsHeader_i_1_n_0),
        .mKeep0_out(mKeep0_out),
        .mKeep_reg_0(LLP_inst_n_54),
        .mKeep_reg_1(mKeep_i_1_n_0),
        .mReg_Tlast_reg_0(LLP_inst_n_50),
        .mReg_Tuser0(mReg_Tuser0),
        .\mReg_Tuser_reg[0]_0 (LLP_inst_n_57),
        .\mReg_Tuser_reg[0]_1 (\mReg_Tuser[0]_i_1_n_0 ),
        .mReg_Tvalid_reg_0(LLP_inst_n_56),
        .mReg_Tvalid_reg_1(mReg_Tvalid_i_1_n_0),
        .m_axis_tlast(LLP_inst_n_3),
        .m_axis_tvalid(LLP_inst_n_2),
        .m_axis_video_tdata(m_axis_video_tdata),
        .m_axis_video_tlast(m_axis_video_tlast),
        .m_axis_video_tready(m_axis_video_tready),
        .m_axis_video_tuser(m_axis_video_tuser),
        .m_axis_video_tvalid(m_axis_video_tvalid),
        .\oSyncStages_reg[1] (LLP_inst_n_1),
        .out(LLP_inst_n_0),
        .\sErrSyndrome_reg[0] (LLP_inst_n_67),
        .\sErrSyndrome_reg[3] ({LLP_inst_n_58,LLP_inst_n_59,LLP_inst_n_60,LLP_inst_n_61}),
        .\sErrSyndrome_reg[4] (LLP_inst_n_68),
        .sError_reg(LLP_inst_n_53),
        .sError_reg_0(sError_i_1_n_0),
        .sValid_reg(LLP_inst_n_52),
        .sValid_reg_0(sValid_i_1_n_0),
        .s_aresetn(DataFIFO_i_1_n_0),
        .s_axis_tlast(rbLMAxisTlast),
        .s_axis_tready(LLP_inst_n_4),
        .s_axis_tvalid(rbLMAxisTvalid),
        .video_aclk(video_aclk));
  system_MIPI_CSI_2_RX_0_0_LM LM_inst
       (.D(rbLLPAxisTready),
        .I62(I62),
        .Q(rbLMAxisTdata),
        .RxByteClkHS(RxByteClkHS),
        .iDataIn(iDataIn),
        .out(rbRst_n),
        .rbEnInt_reg_0(rbEn),
        .\rbMAxisTkeep_reg[3]_0 (rbLMAxisTkeep),
        .rbRst(rbRst),
        .s_axis_tlast(rbLMAxisTlast),
        .s_axis_tvalid(rbLMAxisTvalid));
  system_MIPI_CSI_2_RX_0_0_SyncAsync SyncAsyncEnable
       (.D(D),
        .RxByteClkHS(RxByteClkHS),
        .out(rbEn),
        .rbRst(rbRst));
  system_MIPI_CSI_2_RX_0_0_SyncAsync_0 SyncAsyncTready
       (.D(rbLLPAxisTready),
        .\YesAXILITE.vRst_n_reg (SyncAsyncTready_n_0),
        .vRst_n(vRst_n),
        .video_aclk(video_aclk));
  system_MIPI_CSI_2_RX_0_0_ResetBridge SyncReset
       (.RxByteClkHS(RxByteClkHS),
        .\oSyncStages_reg[1] (SyncAsyncTready_n_0),
        .out(rbRst_n),
        .rbRst(rbRst));
  FDRE \aDEnableInt_reg[0] 
       (.C(video_aclk),
        .CE(1'b1),
        .D(\aDEnableInt_reg[0]_0 ),
        .Q(aD1Enable),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    mFmt_Tlast_i_1
       (.I0(LLP_inst_n_50),
        .I1(LLP_inst_n_56),
        .I2(LLP_inst_n_4),
        .I3(LLP_inst_n_0),
        .I4(LLP_inst_n_49),
        .O(mFmt_Tlast_i_1_n_0));
  LUT6 #(
    .INIT(64'hAAA8FFFFAAA80000)) 
    mFmt_Tvalid_i_1
       (.I0(LLP_inst_n_56),
        .I1(LLP_inst_n_64),
        .I2(LLP_inst_n_65),
        .I3(LLP_inst_n_66),
        .I4(LLP_inst_n_4),
        .I5(LLP_inst_n_48),
        .O(mFmt_Tvalid_i_1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    mIsHeader_i_1
       (.I0(LLP_inst_n_3),
        .I1(mIsHeader0),
        .I2(LLP_inst_n_55),
        .O(mIsHeader_i_1_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAEFAAAAAA20)) 
    mKeep_i_1
       (.I0(mKeep0_out),
        .I1(LLP_inst_n_69),
        .I2(LLP_inst_n_51),
        .I3(LLP_inst_n_53),
        .I4(LLP_inst_n_52),
        .I5(LLP_inst_n_54),
        .O(mKeep_i_1_n_0));
  LUT4 #(
    .INIT(16'hF7F0)) 
    \mReg_Tuser[0]_i_1 
       (.I0(LLP_inst_n_56),
        .I1(LLP_inst_n_4),
        .I2(mReg_Tuser0),
        .I3(LLP_inst_n_57),
        .O(\mReg_Tuser[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    mReg_Tvalid_i_1
       (.I0(LLP_inst_n_54),
        .I1(LLP_inst_n_2),
        .I2(LLP_inst_n_4),
        .I3(LLP_inst_n_56),
        .O(mReg_Tvalid_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000000)) 
    sError_i_1
       (.I0(LLP_inst_n_68),
        .I1(LLP_inst_n_59),
        .I2(LLP_inst_n_58),
        .I3(LLP_inst_n_61),
        .I4(LLP_inst_n_60),
        .I5(LLP_inst_n_62),
        .O(sError_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    sValid_i_1
       (.I0(LLP_inst_n_67),
        .I1(LLP_inst_n_62),
        .O(sValid_i_1_n_0));
  FDRE vRst_reg
       (.C(video_aclk),
        .CE(1'b1),
        .D(SyncAsyncTready_n_0),
        .Q(vRst),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "MIPI_CSI_2_RX_S_AXI_LITE" *) 
module system_MIPI_CSI_2_RX_0_0_MIPI_CSI_2_RX_S_AXI_LITE
   (axi_awready_reg_0,
    axi_wready_reg_0,
    axi_arready_reg_0,
    s_axi_lite_bvalid,
    s_axi_lite_rvalid,
    Q,
    s_axi_lite_rdata,
    s_axi_lite_aclk,
    s_axi_lite_aresetn,
    s_axi_lite_wvalid,
    s_axi_lite_awvalid,
    s_axi_lite_bready,
    s_axi_lite_arvalid,
    s_axi_lite_rready,
    s_axi_lite_araddr,
    s_axi_lite_awaddr,
    s_axi_lite_wdata,
    s_axi_lite_wstrb);
  output axi_awready_reg_0;
  output axi_wready_reg_0;
  output axi_arready_reg_0;
  output s_axi_lite_bvalid;
  output s_axi_lite_rvalid;
  output [1:0]Q;
  output [31:0]s_axi_lite_rdata;
  input s_axi_lite_aclk;
  input s_axi_lite_aresetn;
  input s_axi_lite_wvalid;
  input s_axi_lite_awvalid;
  input s_axi_lite_bready;
  input s_axi_lite_arvalid;
  input s_axi_lite_rready;
  input [1:0]s_axi_lite_araddr;
  input [1:0]s_axi_lite_awaddr;
  input [31:0]s_axi_lite_wdata;
  input [3:0]s_axi_lite_wstrb;

  wire [1:0]Q;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready0;
  wire axi_arready_reg_0;
  wire [3:2]axi_awaddr;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_awready_i_1_n_0;
  wire axi_awready_reg_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire axi_wready_reg_0;
  wire \control_reg[15]_i_1_n_0 ;
  wire \control_reg[23]_i_1_n_0 ;
  wire \control_reg[31]_i_1_n_0 ;
  wire \control_reg[7]_i_1_n_0 ;
  wire \control_reg_reg_n_0_[10] ;
  wire \control_reg_reg_n_0_[11] ;
  wire \control_reg_reg_n_0_[12] ;
  wire \control_reg_reg_n_0_[13] ;
  wire \control_reg_reg_n_0_[14] ;
  wire \control_reg_reg_n_0_[15] ;
  wire \control_reg_reg_n_0_[16] ;
  wire \control_reg_reg_n_0_[17] ;
  wire \control_reg_reg_n_0_[18] ;
  wire \control_reg_reg_n_0_[19] ;
  wire \control_reg_reg_n_0_[20] ;
  wire \control_reg_reg_n_0_[21] ;
  wire \control_reg_reg_n_0_[22] ;
  wire \control_reg_reg_n_0_[23] ;
  wire \control_reg_reg_n_0_[24] ;
  wire \control_reg_reg_n_0_[25] ;
  wire \control_reg_reg_n_0_[26] ;
  wire \control_reg_reg_n_0_[27] ;
  wire \control_reg_reg_n_0_[28] ;
  wire \control_reg_reg_n_0_[29] ;
  wire \control_reg_reg_n_0_[2] ;
  wire \control_reg_reg_n_0_[30] ;
  wire \control_reg_reg_n_0_[31] ;
  wire \control_reg_reg_n_0_[3] ;
  wire \control_reg_reg_n_0_[4] ;
  wire \control_reg_reg_n_0_[5] ;
  wire \control_reg_reg_n_0_[6] ;
  wire \control_reg_reg_n_0_[7] ;
  wire \control_reg_reg_n_0_[8] ;
  wire \control_reg_reg_n_0_[9] ;
  wire [31:0]reg_data_out;
  wire s_axi_lite_aclk;
  wire [1:0]s_axi_lite_araddr;
  wire s_axi_lite_aresetn;
  wire s_axi_lite_arvalid;
  wire [1:0]s_axi_lite_awaddr;
  wire s_axi_lite_awvalid;
  wire s_axi_lite_bready;
  wire s_axi_lite_bvalid;
  wire [31:0]s_axi_lite_rdata;
  wire s_axi_lite_rready;
  wire s_axi_lite_rvalid;
  wire [31:0]s_axi_lite_wdata;
  wire [3:0]s_axi_lite_wstrb;
  wire s_axi_lite_wvalid;
  wire slv_reg_rden;
  wire slv_reg_wren__0;

  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s_axi_lite_araddr[0]),
        .I1(s_axi_lite_arvalid),
        .I2(axi_arready_reg_0),
        .I3(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s_axi_lite_araddr[1]),
        .I1(s_axi_lite_arvalid),
        .I2(axi_arready_reg_0),
        .I3(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  FDSE \axi_araddr_reg[2] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .S(axi_awready_i_1_n_0));
  FDSE \axi_araddr_reg[3] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .S(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s_axi_lite_arvalid),
        .I1(axi_arready_reg_0),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(axi_arready_reg_0),
        .R(axi_awready_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \axi_awaddr[2]_i_1 
       (.I0(s_axi_lite_awaddr[0]),
        .I1(s_axi_lite_wvalid),
        .I2(s_axi_lite_awvalid),
        .I3(axi_awready_reg_0),
        .I4(axi_awaddr[2]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \axi_awaddr[3]_i_1 
       (.I0(s_axi_lite_awaddr[1]),
        .I1(s_axi_lite_wvalid),
        .I2(s_axi_lite_awvalid),
        .I3(axi_awready_reg_0),
        .I4(axi_awaddr[3]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(axi_awaddr[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(axi_awaddr[3]),
        .R(axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s_axi_lite_aresetn),
        .O(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_awready_i_2
       (.I0(s_axi_lite_wvalid),
        .I1(s_axi_lite_awvalid),
        .I2(axi_awready_reg_0),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(axi_awready_reg_0),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s_axi_lite_wvalid),
        .I1(s_axi_lite_awvalid),
        .I2(axi_wready_reg_0),
        .I3(axi_awready_reg_0),
        .I4(s_axi_lite_bready),
        .I5(s_axi_lite_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s_axi_lite_bvalid),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[0]_i_1 
       (.I0(Q[0]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[10]_i_1 
       (.I0(\control_reg_reg_n_0_[10] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[10]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[11]_i_1 
       (.I0(\control_reg_reg_n_0_[11] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[11]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[12]_i_1 
       (.I0(\control_reg_reg_n_0_[12] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[12]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[13]_i_1 
       (.I0(\control_reg_reg_n_0_[13] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[13]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[14]_i_1 
       (.I0(\control_reg_reg_n_0_[14] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[14]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[15]_i_1 
       (.I0(\control_reg_reg_n_0_[15] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[15]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hA4)) 
    \axi_rdata[16]_i_1 
       (.I0(axi_araddr[2]),
        .I1(\control_reg_reg_n_0_[16] ),
        .I2(axi_araddr[3]),
        .O(reg_data_out[16]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[17]_i_1 
       (.I0(\control_reg_reg_n_0_[17] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[17]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[18]_i_1 
       (.I0(\control_reg_reg_n_0_[18] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[18]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[19]_i_1 
       (.I0(\control_reg_reg_n_0_[19] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[19]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hA4)) 
    \axi_rdata[1]_i_1 
       (.I0(axi_araddr[2]),
        .I1(Q[1]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[20]_i_1 
       (.I0(\control_reg_reg_n_0_[20] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[20]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[21]_i_1 
       (.I0(\control_reg_reg_n_0_[21] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[21]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[22]_i_1 
       (.I0(\control_reg_reg_n_0_[22] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[22]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[23]_i_1 
       (.I0(\control_reg_reg_n_0_[23] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[23]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[24]_i_1 
       (.I0(\control_reg_reg_n_0_[24] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[24]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[25]_i_1 
       (.I0(\control_reg_reg_n_0_[25] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[25]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[26]_i_1 
       (.I0(\control_reg_reg_n_0_[26] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[26]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[27]_i_1 
       (.I0(\control_reg_reg_n_0_[27] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[27]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[28]_i_1 
       (.I0(\control_reg_reg_n_0_[28] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[28]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[29]_i_1 
       (.I0(\control_reg_reg_n_0_[29] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[29]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[2]_i_1 
       (.I0(\control_reg_reg_n_0_[2] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[30]_i_1 
       (.I0(\control_reg_reg_n_0_[30] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[30]));
  LUT3 #(
    .INIT(8'h08)) 
    \axi_rdata[31]_i_1 
       (.I0(axi_arready_reg_0),
        .I1(s_axi_lite_arvalid),
        .I2(s_axi_lite_rvalid),
        .O(slv_reg_rden));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[31]_i_2 
       (.I0(\control_reg_reg_n_0_[31] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[31]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[3]_i_1 
       (.I0(\control_reg_reg_n_0_[3] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[4]_i_1 
       (.I0(\control_reg_reg_n_0_[4] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[5]_i_1 
       (.I0(\control_reg_reg_n_0_[5] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[6]_i_1 
       (.I0(\control_reg_reg_n_0_[6] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[7]_i_1 
       (.I0(\control_reg_reg_n_0_[7] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[8]_i_1 
       (.I0(\control_reg_reg_n_0_[8] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[8]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[9]_i_1 
       (.I0(\control_reg_reg_n_0_[9] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[9]));
  FDRE \axi_rdata_reg[0] 
       (.C(s_axi_lite_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[0]),
        .Q(s_axi_lite_rdata[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[10] 
       (.C(s_axi_lite_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[10]),
        .Q(s_axi_lite_rdata[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[11] 
       (.C(s_axi_lite_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[11]),
        .Q(s_axi_lite_rdata[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[12] 
       (.C(s_axi_lite_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[12]),
        .Q(s_axi_lite_rdata[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[13] 
       (.C(s_axi_lite_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[13]),
        .Q(s_axi_lite_rdata[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[14] 
       (.C(s_axi_lite_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[14]),
        .Q(s_axi_lite_rdata[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[15] 
       (.C(s_axi_lite_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[15]),
        .Q(s_axi_lite_rdata[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[16] 
       (.C(s_axi_lite_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[16]),
        .Q(s_axi_lite_rdata[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[17] 
       (.C(s_axi_lite_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[17]),
        .Q(s_axi_lite_rdata[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[18] 
       (.C(s_axi_lite_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[18]),
        .Q(s_axi_lite_rdata[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[19] 
       (.C(s_axi_lite_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[19]),
        .Q(s_axi_lite_rdata[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[1] 
       (.C(s_axi_lite_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[1]),
        .Q(s_axi_lite_rdata[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[20] 
       (.C(s_axi_lite_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[20]),
        .Q(s_axi_lite_rdata[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[21] 
       (.C(s_axi_lite_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[21]),
        .Q(s_axi_lite_rdata[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[22] 
       (.C(s_axi_lite_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[22]),
        .Q(s_axi_lite_rdata[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[23] 
       (.C(s_axi_lite_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[23]),
        .Q(s_axi_lite_rdata[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[24] 
       (.C(s_axi_lite_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[24]),
        .Q(s_axi_lite_rdata[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[25] 
       (.C(s_axi_lite_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[25]),
        .Q(s_axi_lite_rdata[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[26] 
       (.C(s_axi_lite_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[26]),
        .Q(s_axi_lite_rdata[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[27] 
       (.C(s_axi_lite_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[27]),
        .Q(s_axi_lite_rdata[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[28] 
       (.C(s_axi_lite_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[28]),
        .Q(s_axi_lite_rdata[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[29] 
       (.C(s_axi_lite_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[29]),
        .Q(s_axi_lite_rdata[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[2] 
       (.C(s_axi_lite_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[2]),
        .Q(s_axi_lite_rdata[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[30] 
       (.C(s_axi_lite_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[30]),
        .Q(s_axi_lite_rdata[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[31] 
       (.C(s_axi_lite_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[31]),
        .Q(s_axi_lite_rdata[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[3] 
       (.C(s_axi_lite_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[3]),
        .Q(s_axi_lite_rdata[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[4] 
       (.C(s_axi_lite_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[4]),
        .Q(s_axi_lite_rdata[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[5] 
       (.C(s_axi_lite_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[5]),
        .Q(s_axi_lite_rdata[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[6] 
       (.C(s_axi_lite_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[6]),
        .Q(s_axi_lite_rdata[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[7] 
       (.C(s_axi_lite_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[7]),
        .Q(s_axi_lite_rdata[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[8] 
       (.C(s_axi_lite_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[8]),
        .Q(s_axi_lite_rdata[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[9] 
       (.C(s_axi_lite_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[9]),
        .Q(s_axi_lite_rdata[9]),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(s_axi_lite_arvalid),
        .I1(axi_arready_reg_0),
        .I2(s_axi_lite_rvalid),
        .I3(s_axi_lite_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s_axi_lite_rvalid),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_wready_i_1
       (.I0(s_axi_lite_wvalid),
        .I1(s_axi_lite_awvalid),
        .I2(axi_wready_reg_0),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(axi_wready_reg_0),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h0200)) 
    \control_reg[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(s_axi_lite_wstrb[1]),
        .O(\control_reg[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \control_reg[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(s_axi_lite_wstrb[2]),
        .O(\control_reg[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \control_reg[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(s_axi_lite_wstrb[3]),
        .O(\control_reg[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \control_reg[31]_i_2 
       (.I0(axi_awready_reg_0),
        .I1(axi_wready_reg_0),
        .I2(s_axi_lite_wvalid),
        .I3(s_axi_lite_awvalid),
        .O(slv_reg_wren__0));
  LUT4 #(
    .INIT(16'h0200)) 
    \control_reg[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(s_axi_lite_wstrb[0]),
        .O(\control_reg[7]_i_1_n_0 ));
  FDRE \control_reg_reg[0] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[7]_i_1_n_0 ),
        .D(s_axi_lite_wdata[0]),
        .Q(Q[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[10] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[15]_i_1_n_0 ),
        .D(s_axi_lite_wdata[10]),
        .Q(\control_reg_reg_n_0_[10] ),
        .R(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[11] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[15]_i_1_n_0 ),
        .D(s_axi_lite_wdata[11]),
        .Q(\control_reg_reg_n_0_[11] ),
        .R(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[12] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[15]_i_1_n_0 ),
        .D(s_axi_lite_wdata[12]),
        .Q(\control_reg_reg_n_0_[12] ),
        .R(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[13] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[15]_i_1_n_0 ),
        .D(s_axi_lite_wdata[13]),
        .Q(\control_reg_reg_n_0_[13] ),
        .R(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[14] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[15]_i_1_n_0 ),
        .D(s_axi_lite_wdata[14]),
        .Q(\control_reg_reg_n_0_[14] ),
        .R(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[15] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[15]_i_1_n_0 ),
        .D(s_axi_lite_wdata[15]),
        .Q(\control_reg_reg_n_0_[15] ),
        .R(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[16] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[23]_i_1_n_0 ),
        .D(s_axi_lite_wdata[16]),
        .Q(\control_reg_reg_n_0_[16] ),
        .R(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[17] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[23]_i_1_n_0 ),
        .D(s_axi_lite_wdata[17]),
        .Q(\control_reg_reg_n_0_[17] ),
        .R(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[18] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[23]_i_1_n_0 ),
        .D(s_axi_lite_wdata[18]),
        .Q(\control_reg_reg_n_0_[18] ),
        .R(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[19] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[23]_i_1_n_0 ),
        .D(s_axi_lite_wdata[19]),
        .Q(\control_reg_reg_n_0_[19] ),
        .R(axi_awready_i_1_n_0));
  FDSE \control_reg_reg[1] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[7]_i_1_n_0 ),
        .D(s_axi_lite_wdata[1]),
        .Q(Q[1]),
        .S(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[20] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[23]_i_1_n_0 ),
        .D(s_axi_lite_wdata[20]),
        .Q(\control_reg_reg_n_0_[20] ),
        .R(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[21] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[23]_i_1_n_0 ),
        .D(s_axi_lite_wdata[21]),
        .Q(\control_reg_reg_n_0_[21] ),
        .R(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[22] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[23]_i_1_n_0 ),
        .D(s_axi_lite_wdata[22]),
        .Q(\control_reg_reg_n_0_[22] ),
        .R(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[23] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[23]_i_1_n_0 ),
        .D(s_axi_lite_wdata[23]),
        .Q(\control_reg_reg_n_0_[23] ),
        .R(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[24] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[31]_i_1_n_0 ),
        .D(s_axi_lite_wdata[24]),
        .Q(\control_reg_reg_n_0_[24] ),
        .R(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[25] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[31]_i_1_n_0 ),
        .D(s_axi_lite_wdata[25]),
        .Q(\control_reg_reg_n_0_[25] ),
        .R(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[26] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[31]_i_1_n_0 ),
        .D(s_axi_lite_wdata[26]),
        .Q(\control_reg_reg_n_0_[26] ),
        .R(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[27] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[31]_i_1_n_0 ),
        .D(s_axi_lite_wdata[27]),
        .Q(\control_reg_reg_n_0_[27] ),
        .R(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[28] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[31]_i_1_n_0 ),
        .D(s_axi_lite_wdata[28]),
        .Q(\control_reg_reg_n_0_[28] ),
        .R(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[29] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[31]_i_1_n_0 ),
        .D(s_axi_lite_wdata[29]),
        .Q(\control_reg_reg_n_0_[29] ),
        .R(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[2] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[7]_i_1_n_0 ),
        .D(s_axi_lite_wdata[2]),
        .Q(\control_reg_reg_n_0_[2] ),
        .R(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[30] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[31]_i_1_n_0 ),
        .D(s_axi_lite_wdata[30]),
        .Q(\control_reg_reg_n_0_[30] ),
        .R(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[31] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[31]_i_1_n_0 ),
        .D(s_axi_lite_wdata[31]),
        .Q(\control_reg_reg_n_0_[31] ),
        .R(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[3] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[7]_i_1_n_0 ),
        .D(s_axi_lite_wdata[3]),
        .Q(\control_reg_reg_n_0_[3] ),
        .R(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[4] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[7]_i_1_n_0 ),
        .D(s_axi_lite_wdata[4]),
        .Q(\control_reg_reg_n_0_[4] ),
        .R(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[5] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[7]_i_1_n_0 ),
        .D(s_axi_lite_wdata[5]),
        .Q(\control_reg_reg_n_0_[5] ),
        .R(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[6] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[7]_i_1_n_0 ),
        .D(s_axi_lite_wdata[6]),
        .Q(\control_reg_reg_n_0_[6] ),
        .R(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[7] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[7]_i_1_n_0 ),
        .D(s_axi_lite_wdata[7]),
        .Q(\control_reg_reg_n_0_[7] ),
        .R(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[8] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[15]_i_1_n_0 ),
        .D(s_axi_lite_wdata[8]),
        .Q(\control_reg_reg_n_0_[8] ),
        .R(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[9] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[15]_i_1_n_0 ),
        .D(s_axi_lite_wdata[9]),
        .Q(\control_reg_reg_n_0_[9] ),
        .R(axi_awready_i_1_n_0));
endmodule

(* ORIG_REF_NAME = "ResetBridge" *) 
module system_MIPI_CSI_2_RX_0_0_ResetBridge
   (out,
    rbRst,
    RxByteClkHS,
    \oSyncStages_reg[1] );
  output [0:0]out;
  output rbRst;
  input RxByteClkHS;
  input \oSyncStages_reg[1] ;

  wire RxByteClkHS;
  wire \oSyncStages_reg[1] ;
  wire [0:0]out;
  wire rbRst;

  system_MIPI_CSI_2_RX_0_0_SyncAsync_1 SyncAsyncx
       (.RxByteClkHS(RxByteClkHS),
        .\oSyncStages_reg[1]_0 (\oSyncStages_reg[1] ),
        .out(out),
        .rbRst(rbRst));
endmodule

(* ORIG_REF_NAME = "ResetBridge" *) 
module system_MIPI_CSI_2_RX_0_0_ResetBridge__parameterized0
   (\oSyncStages_reg[1] ,
    video_aclk,
    AS);
  output \oSyncStages_reg[1] ;
  input video_aclk;
  input [0:0]AS;

  wire [0:0]AS;
  wire \oSyncStages_reg[1] ;
  wire video_aclk;

  system_MIPI_CSI_2_RX_0_0_SyncAsync__parameterized0 SyncAsyncx
       (.AS(AS),
        .\oSyncStages_reg[1]_0 (\oSyncStages_reg[1] ),
        .video_aclk(video_aclk));
endmodule

(* ORIG_REF_NAME = "ResetBridge" *) 
module system_MIPI_CSI_2_RX_0_0_ResetBridge__parameterized0_3
   (out,
    E,
    mReg_Tvalid_reg,
    \RAW10Formatter.cnt_reg[1] ,
    \RAW10Formatter.cnt_reg[0] ,
    \oSyncStages_reg[1] ,
    \oSyncStages_reg[1]_0 ,
    \oSyncStages_reg[1]_1 ,
    \oSyncStages_reg[1]_2 ,
    \oSyncStages_reg[1]_3 ,
    s_axis_aresetn,
    mFmt_Tvalid_reg,
    m_axis_tvalid,
    \mReg_Tdata_reg[31] ,
    s_axis_tready,
    \RAW10Formatter.cnt_reg[2] ,
    \RAW10Formatter.cnt_reg[2]_0 ,
    \RAW10Formatter.cnt_reg[2]_1 ,
    \RAW10Formatter.cnt_reg[2]_2 ,
    \RAW10Formatter.cnt_reg[1]_0 ,
    \RAW10Formatter.cnt_reg[1]_1 ,
    cnt,
    \mFmt_Tuser_reg[0] ,
    \mFmt_Tuser_reg[0]_0 ,
    s_axis_tuser,
    video_aclk,
    AS);
  output [0:0]out;
  output [0:0]E;
  output mReg_Tvalid_reg;
  output \RAW10Formatter.cnt_reg[1] ;
  output \RAW10Formatter.cnt_reg[0] ;
  output [0:0]\oSyncStages_reg[1] ;
  output [0:0]\oSyncStages_reg[1]_0 ;
  output [0:0]\oSyncStages_reg[1]_1 ;
  output [0:0]\oSyncStages_reg[1]_2 ;
  output [0:0]\oSyncStages_reg[1]_3 ;
  output s_axis_aresetn;
  output mFmt_Tvalid_reg;
  input m_axis_tvalid;
  input \mReg_Tdata_reg[31] ;
  input s_axis_tready;
  input \RAW10Formatter.cnt_reg[2] ;
  input \RAW10Formatter.cnt_reg[2]_0 ;
  input \RAW10Formatter.cnt_reg[2]_1 ;
  input \RAW10Formatter.cnt_reg[2]_2 ;
  input \RAW10Formatter.cnt_reg[1]_0 ;
  input \RAW10Formatter.cnt_reg[1]_1 ;
  input cnt;
  input \mFmt_Tuser_reg[0] ;
  input \mFmt_Tuser_reg[0]_0 ;
  input [0:0]s_axis_tuser;
  input video_aclk;
  input [0:0]AS;

  wire [0:0]AS;
  wire [0:0]E;
  wire \RAW10Formatter.cnt_reg[0] ;
  wire \RAW10Formatter.cnt_reg[1] ;
  wire \RAW10Formatter.cnt_reg[1]_0 ;
  wire \RAW10Formatter.cnt_reg[1]_1 ;
  wire \RAW10Formatter.cnt_reg[2] ;
  wire \RAW10Formatter.cnt_reg[2]_0 ;
  wire \RAW10Formatter.cnt_reg[2]_1 ;
  wire \RAW10Formatter.cnt_reg[2]_2 ;
  wire cnt;
  wire \mFmt_Tuser_reg[0] ;
  wire \mFmt_Tuser_reg[0]_0 ;
  wire mFmt_Tvalid_reg;
  wire \mReg_Tdata_reg[31] ;
  wire mReg_Tvalid_reg;
  wire m_axis_tvalid;
  wire [0:0]\oSyncStages_reg[1] ;
  wire [0:0]\oSyncStages_reg[1]_0 ;
  wire [0:0]\oSyncStages_reg[1]_1 ;
  wire [0:0]\oSyncStages_reg[1]_2 ;
  wire [0:0]\oSyncStages_reg[1]_3 ;
  wire [0:0]out;
  wire s_axis_aresetn;
  wire s_axis_tready;
  wire [0:0]s_axis_tuser;
  wire video_aclk;

  system_MIPI_CSI_2_RX_0_0_SyncAsync__parameterized0_6 SyncAsyncx
       (.AS(AS),
        .E(E),
        .\RAW10Formatter.cnt_reg[0] (\RAW10Formatter.cnt_reg[0] ),
        .\RAW10Formatter.cnt_reg[1] (\RAW10Formatter.cnt_reg[1] ),
        .\RAW10Formatter.cnt_reg[1]_0 (\RAW10Formatter.cnt_reg[1]_0 ),
        .\RAW10Formatter.cnt_reg[1]_1 (\RAW10Formatter.cnt_reg[1]_1 ),
        .\RAW10Formatter.cnt_reg[2] (\RAW10Formatter.cnt_reg[2] ),
        .\RAW10Formatter.cnt_reg[2]_0 (\RAW10Formatter.cnt_reg[2]_0 ),
        .\RAW10Formatter.cnt_reg[2]_1 (\RAW10Formatter.cnt_reg[2]_1 ),
        .\RAW10Formatter.cnt_reg[2]_2 (\RAW10Formatter.cnt_reg[2]_2 ),
        .cnt(cnt),
        .\mFmt_Tuser_reg[0] (\mFmt_Tuser_reg[0] ),
        .\mFmt_Tuser_reg[0]_0 (\mFmt_Tuser_reg[0]_0 ),
        .mFmt_Tvalid_reg(mFmt_Tvalid_reg),
        .\mReg_Tdata_reg[31] (\mReg_Tdata_reg[31] ),
        .mReg_Tvalid_reg(mReg_Tvalid_reg),
        .m_axis_tvalid(m_axis_tvalid),
        .\oSyncStages_reg[1]_0 (\oSyncStages_reg[1] ),
        .\oSyncStages_reg[1]_1 (\oSyncStages_reg[1]_0 ),
        .\oSyncStages_reg[1]_2 (\oSyncStages_reg[1]_1 ),
        .\oSyncStages_reg[1]_3 (\oSyncStages_reg[1]_2 ),
        .\oSyncStages_reg[1]_4 (\oSyncStages_reg[1]_3 ),
        .out(out),
        .s_axis_aresetn(s_axis_aresetn),
        .s_axis_tready(s_axis_tready),
        .s_axis_tuser(s_axis_tuser),
        .video_aclk(video_aclk));
endmodule

(* ORIG_REF_NAME = "ResetBridge" *) 
module system_MIPI_CSI_2_RX_0_0_ResetBridge__parameterized0_4
   (\oSyncStages_reg[1] ,
    RxByteClkHS,
    AS);
  output [0:0]\oSyncStages_reg[1] ;
  input RxByteClkHS;
  input [0:0]AS;

  wire [0:0]AS;
  wire RxByteClkHS;
  wire [0:0]\oSyncStages_reg[1] ;

  system_MIPI_CSI_2_RX_0_0_SyncAsync__parameterized0_5 SyncAsyncx
       (.AS(AS),
        .RxByteClkHS(RxByteClkHS),
        .\oSyncStages_reg[1]_0 (\oSyncStages_reg[1] ));
endmodule

(* ORIG_REF_NAME = "SimpleFIFO" *) 
module system_MIPI_CSI_2_RX_0_0_SimpleFIFO
   (iEmptyInt_reg_0,
    iFullInt_reg_0,
    E,
    \rbByteCnt_reg[1] ,
    rbNstate,
    iDataOut,
    andv__0,
    \rbState_reg[0] ,
    rbRst,
    iRdA0,
    RxByteClkHS,
    rbEnInt,
    iEmptyInt_reg_1,
    out,
    rbMAxisTvalidInt_reg,
    rbMAxisTvalidInt_reg_0,
    \rbState_reg[0]_0 ,
    \rbState[2]_i_4_0 ,
    rbMAxisTvalidInt_reg_1,
    \rbState[2]_i_4_1 ,
    D,
    rbMAxisTvalidInt_reg_2,
    iDataIn);
  output iEmptyInt_reg_0;
  output iFullInt_reg_0;
  output [0:0]E;
  output \rbByteCnt_reg[1] ;
  output rbNstate;
  output [9:0]iDataOut;
  output andv__0;
  output [3:0]\rbState_reg[0] ;
  input rbRst;
  input iRdA0;
  input RxByteClkHS;
  input rbEnInt;
  input iEmptyInt_reg_1;
  input [0:0]out;
  input rbMAxisTvalidInt_reg;
  input rbMAxisTvalidInt_reg_0;
  input \rbState_reg[0]_0 ;
  input [1:0]\rbState[2]_i_4_0 ;
  input rbMAxisTvalidInt_reg_1;
  input \rbState[2]_i_4_1 ;
  input [0:0]D;
  input rbMAxisTvalidInt_reg_2;
  input [10:0]iDataIn;

  wire [0:0]D;
  wire [0:0]E;
  wire FIFO_reg_0_31_6_10_n_2;
  wire RxByteClkHS;
  wire andv__0;
  wire [10:0]iDataIn;
  wire [9:0]iDataOut;
  wire iEmptyInt1__8;
  wire iEmptyInt_i_1_n_0;
  wire iEmptyInt_i_3_n_0;
  wire iEmptyInt_i_4_n_0;
  wire iEmptyInt_reg_0;
  wire iEmptyInt_reg_1;
  wire iFullInt2__8;
  wire iFullInt_i_1_n_0;
  wire iFullInt_i_3_n_0;
  wire iFullInt_i_4_n_0;
  wire iFullInt_reg_0;
  wire [4:0]iRdA;
  wire iRdA0;
  wire \iRdA[0]_i_1_n_0 ;
  wire \iRdA[1]_i_1_n_0 ;
  wire \iRdA[2]_i_1_n_0 ;
  wire \iRdA[3]_i_2_n_0 ;
  wire \iRdA[4]_i_1_n_0 ;
  wire [4:0]iWrA;
  wire \iWrA[0]_i_1_n_0 ;
  wire \iWrA[1]_i_1_n_0 ;
  wire \iWrA[2]_i_1_n_0 ;
  wire \iWrA[3]_i_1_n_0 ;
  wire \iWrA[4]_i_2_n_0 ;
  wire \iWrA[4]_i_3_n_0 ;
  wire [0:0]out;
  wire \rbByteCnt_reg[1] ;
  wire rbEnInt;
  wire rbMAxisTvalidInt_reg;
  wire rbMAxisTvalidInt_reg_0;
  wire rbMAxisTvalidInt_reg_1;
  wire rbMAxisTvalidInt_reg_2;
  wire rbNstate;
  wire rbRst;
  wire [1:0]\rbState[2]_i_4_0 ;
  wire \rbState[2]_i_4_1 ;
  wire \rbState[2]_i_5_n_0 ;
  wire \rbState[2]_i_6_n_0 ;
  wire [3:0]\rbState_reg[0] ;
  wire \rbState_reg[0]_0 ;
  wire [1:0]NLW_FIFO_reg_0_31_0_5_DOD_UNCONNECTED;
  wire [1:1]NLW_FIFO_reg_0_31_6_10_DOC_UNCONNECTED;
  wire [1:0]NLW_FIFO_reg_0_31_6_10_DOD_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "352" *) 
  (* RTL_RAM_NAME = "MIPI_CSI2_Rx_inst/LM_inst/DeskewFIFOs[0].DeskewFIFOx/FIFO" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M FIFO_reg_0_31_0_5
       (.ADDRA(iRdA),
        .ADDRB(iRdA),
        .ADDRC(iRdA),
        .ADDRD(iWrA),
        .DIA(iDataIn[1:0]),
        .DIB(iDataIn[3:2]),
        .DIC(iDataIn[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(iDataOut[1:0]),
        .DOB(iDataOut[3:2]),
        .DOC(iDataOut[5:4]),
        .DOD(NLW_FIFO_reg_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(RxByteClkHS),
        .WE(rbEnInt));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "352" *) 
  (* RTL_RAM_NAME = "MIPI_CSI2_Rx_inst/LM_inst/DeskewFIFOs[0].DeskewFIFOx/FIFO" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "10" *) 
  RAM32M FIFO_reg_0_31_6_10
       (.ADDRA(iRdA),
        .ADDRB(iRdA),
        .ADDRC(iRdA),
        .ADDRD(iWrA),
        .DIA(iDataIn[7:6]),
        .DIB(iDataIn[9:8]),
        .DIC({1'b0,iDataIn[10]}),
        .DID({1'b0,1'b0}),
        .DOA(iDataOut[7:6]),
        .DOB({FIFO_reg_0_31_6_10_n_2,iDataOut[8]}),
        .DOC({NLW_FIFO_reg_0_31_6_10_DOC_UNCONNECTED[1],iDataOut[9]}),
        .DOD(NLW_FIFO_reg_0_31_6_10_DOD_UNCONNECTED[1:0]),
        .WCLK(RxByteClkHS),
        .WE(rbEnInt));
  LUT4 #(
    .INIT(16'h5540)) 
    iEmptyInt_i_1
       (.I0(rbEnInt),
        .I1(iEmptyInt_reg_1),
        .I2(iEmptyInt1__8),
        .I3(iEmptyInt_reg_0),
        .O(iEmptyInt_i_1_n_0));
  LUT6 #(
    .INIT(64'h0440800880084004)) 
    iEmptyInt_i_2
       (.I0(iWrA[3]),
        .I1(iEmptyInt_i_3_n_0),
        .I2(iWrA[4]),
        .I3(iRdA[4]),
        .I4(iRdA[3]),
        .I5(iEmptyInt_i_4_n_0),
        .O(iEmptyInt1__8));
  LUT6 #(
    .INIT(64'h0082410014000082)) 
    iEmptyInt_i_3
       (.I0(iWrA[0]),
        .I1(iWrA[2]),
        .I2(iRdA[2]),
        .I3(iRdA[0]),
        .I4(iRdA[1]),
        .I5(iWrA[1]),
        .O(iEmptyInt_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h80)) 
    iEmptyInt_i_4
       (.I0(iRdA[2]),
        .I1(iRdA[1]),
        .I2(iRdA[0]),
        .O(iEmptyInt_i_4_n_0));
  FDSE #(
    .INIT(1'b1)) 
    iEmptyInt_reg
       (.C(RxByteClkHS),
        .CE(1'b1),
        .D(iEmptyInt_i_1_n_0),
        .Q(iEmptyInt_reg_0),
        .S(rbRst));
  LUT5 #(
    .INIT(32'h05050400)) 
    iFullInt_i_1
       (.I0(iEmptyInt_reg_0),
        .I1(iFullInt2__8),
        .I2(iEmptyInt_reg_1),
        .I3(rbEnInt),
        .I4(iFullInt_reg_0),
        .O(iFullInt_i_1_n_0));
  LUT6 #(
    .INIT(64'h0440800880084004)) 
    iFullInt_i_2
       (.I0(iRdA[3]),
        .I1(iFullInt_i_3_n_0),
        .I2(iRdA[4]),
        .I3(iWrA[4]),
        .I4(iWrA[3]),
        .I5(iFullInt_i_4_n_0),
        .O(iFullInt2__8));
  LUT6 #(
    .INIT(64'h0041820014000082)) 
    iFullInt_i_3
       (.I0(iRdA[0]),
        .I1(iRdA[2]),
        .I2(iWrA[2]),
        .I3(iWrA[1]),
        .I4(iWrA[0]),
        .I5(iRdA[1]),
        .O(iFullInt_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h80)) 
    iFullInt_i_4
       (.I0(iWrA[2]),
        .I1(iWrA[0]),
        .I2(iWrA[1]),
        .O(iFullInt_i_4_n_0));
  FDSE #(
    .INIT(1'b1)) 
    iFullInt_reg
       (.C(RxByteClkHS),
        .CE(1'b1),
        .D(iFullInt_i_1_n_0),
        .Q(iFullInt_reg_0),
        .S(rbRst));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \iRdA[0]_i_1 
       (.I0(iRdA[0]),
        .O(\iRdA[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \iRdA[1]_i_1 
       (.I0(iRdA[1]),
        .I1(iRdA[0]),
        .O(\iRdA[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \iRdA[2]_i_1 
       (.I0(iRdA[2]),
        .I1(iRdA[1]),
        .I2(iRdA[0]),
        .O(\iRdA[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \iRdA[3]_i_2 
       (.I0(iRdA[3]),
        .I1(iRdA[2]),
        .I2(iRdA[1]),
        .I3(iRdA[0]),
        .O(\iRdA[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \iRdA[4]_i_1 
       (.I0(iRdA[4]),
        .I1(iRdA[3]),
        .I2(iRdA[2]),
        .I3(iRdA[1]),
        .I4(iRdA[0]),
        .O(\iRdA[4]_i_1_n_0 ));
  FDRE \iRdA_reg[0] 
       (.C(RxByteClkHS),
        .CE(iRdA0),
        .D(\iRdA[0]_i_1_n_0 ),
        .Q(iRdA[0]),
        .R(rbRst));
  FDRE \iRdA_reg[1] 
       (.C(RxByteClkHS),
        .CE(iRdA0),
        .D(\iRdA[1]_i_1_n_0 ),
        .Q(iRdA[1]),
        .R(rbRst));
  FDRE \iRdA_reg[2] 
       (.C(RxByteClkHS),
        .CE(iRdA0),
        .D(\iRdA[2]_i_1_n_0 ),
        .Q(iRdA[2]),
        .R(rbRst));
  FDRE \iRdA_reg[3] 
       (.C(RxByteClkHS),
        .CE(iRdA0),
        .D(\iRdA[3]_i_2_n_0 ),
        .Q(iRdA[3]),
        .R(rbRst));
  FDRE \iRdA_reg[4] 
       (.C(RxByteClkHS),
        .CE(iRdA0),
        .D(\iRdA[4]_i_1_n_0 ),
        .Q(iRdA[4]),
        .R(rbRst));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \iWrA[0]_i_1 
       (.I0(iWrA[0]),
        .O(\iWrA[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \iWrA[1]_i_1 
       (.I0(iWrA[0]),
        .I1(iWrA[1]),
        .O(\iWrA[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \iWrA[2]_i_1 
       (.I0(iWrA[2]),
        .I1(iWrA[0]),
        .I2(iWrA[1]),
        .O(\iWrA[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \iWrA[3]_i_1 
       (.I0(iWrA[3]),
        .I1(iWrA[2]),
        .I2(iWrA[0]),
        .I3(iWrA[1]),
        .O(\iWrA[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \iWrA[4]_i_2 
       (.I0(rbEnInt),
        .I1(iFullInt_reg_0),
        .O(\iWrA[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \iWrA[4]_i_3 
       (.I0(iWrA[4]),
        .I1(iWrA[3]),
        .I2(iWrA[2]),
        .I3(iWrA[0]),
        .I4(iWrA[1]),
        .O(\iWrA[4]_i_3_n_0 ));
  FDRE \iWrA_reg[0] 
       (.C(RxByteClkHS),
        .CE(\iWrA[4]_i_2_n_0 ),
        .D(\iWrA[0]_i_1_n_0 ),
        .Q(iWrA[0]),
        .R(rbRst));
  FDRE \iWrA_reg[1] 
       (.C(RxByteClkHS),
        .CE(\iWrA[4]_i_2_n_0 ),
        .D(\iWrA[1]_i_1_n_0 ),
        .Q(iWrA[1]),
        .R(rbRst));
  FDRE \iWrA_reg[2] 
       (.C(RxByteClkHS),
        .CE(\iWrA[4]_i_2_n_0 ),
        .D(\iWrA[2]_i_1_n_0 ),
        .Q(iWrA[2]),
        .R(rbRst));
  FDRE \iWrA_reg[3] 
       (.C(RxByteClkHS),
        .CE(\iWrA[4]_i_2_n_0 ),
        .D(\iWrA[3]_i_1_n_0 ),
        .Q(iWrA[3]),
        .R(rbRst));
  FDRE \iWrA_reg[4] 
       (.C(RxByteClkHS),
        .CE(\iWrA[4]_i_2_n_0 ),
        .D(\iWrA[4]_i_3_n_0 ),
        .Q(iWrA[4]),
        .R(rbRst));
  LUT2 #(
    .INIT(4'hB)) 
    \rbMAxisTdata[31]_i_1 
       (.I0(\rbByteCnt_reg[1] ),
        .I1(out),
        .O(E));
  LUT6 #(
    .INIT(64'h0000FF0000005700)) 
    rbMAxisTvalidInt_i_1
       (.I0(rbMAxisTvalidInt_reg_2),
        .I1(iDataOut[8]),
        .I2(\rbState[2]_i_4_0 [0]),
        .I3(rbMAxisTvalidInt_reg),
        .I4(rbMAxisTvalidInt_reg_0),
        .I5(rbMAxisTvalidInt_reg_1),
        .O(\rbByteCnt_reg[1] ));
  LUT2 #(
    .INIT(4'h8)) 
    \rbState[0]_i_2 
       (.I0(iDataOut[8]),
        .I1(\rbState[2]_i_4_0 [0]),
        .O(andv__0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \rbState[2]_i_4 
       (.I0(\rbState[2]_i_5_n_0 ),
        .I1(rbMAxisTvalidInt_reg),
        .I2(\rbState[2]_i_6_n_0 ),
        .I3(rbMAxisTvalidInt_reg_0),
        .I4(\rbState_reg[0]_0 ),
        .O(rbNstate));
  LUT6 #(
    .INIT(64'hFF10FF1FFF1FFF1F)) 
    \rbState[2]_i_5 
       (.I0(iDataOut[9]),
        .I1(\rbState[2]_i_4_0 [1]),
        .I2(rbMAxisTvalidInt_reg_0),
        .I3(rbMAxisTvalidInt_reg_1),
        .I4(iDataOut[8]),
        .I5(\rbState[2]_i_4_0 [0]),
        .O(\rbState[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEFEFEFEFEFEFEFE0)) 
    \rbState[2]_i_6 
       (.I0(iDataOut[8]),
        .I1(\rbState[2]_i_4_0 [0]),
        .I2(rbMAxisTvalidInt_reg_1),
        .I3(iFullInt_reg_0),
        .I4(\rbState[2]_i_4_1 ),
        .I5(D),
        .O(\rbState[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000024000000)) 
    \rbTdataInt[15]_i_1 
       (.I0(rbMAxisTvalidInt_reg_1),
        .I1(rbMAxisTvalidInt_reg),
        .I2(rbMAxisTvalidInt_reg_0),
        .I3(iDataOut[8]),
        .I4(\rbState[2]_i_4_0 [0]),
        .I5(rbMAxisTvalidInt_reg_2),
        .O(\rbState_reg[0] [1]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h24000000)) 
    \rbTdataInt[23]_i_1 
       (.I0(rbMAxisTvalidInt_reg_1),
        .I1(rbMAxisTvalidInt_reg),
        .I2(rbMAxisTvalidInt_reg_0),
        .I3(iDataOut[8]),
        .I4(rbMAxisTvalidInt_reg_2),
        .O(\rbState_reg[0] [2]));
  LUT6 #(
    .INIT(64'h2400000000000000)) 
    \rbTdataInt[31]_i_1 
       (.I0(rbMAxisTvalidInt_reg_1),
        .I1(rbMAxisTvalidInt_reg),
        .I2(rbMAxisTvalidInt_reg_0),
        .I3(iDataOut[8]),
        .I4(\rbState[2]_i_4_0 [0]),
        .I5(rbMAxisTvalidInt_reg_2),
        .O(\rbState_reg[0] [3]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h00002400)) 
    \rbTdataInt[7]_i_1 
       (.I0(rbMAxisTvalidInt_reg_1),
        .I1(rbMAxisTvalidInt_reg),
        .I2(rbMAxisTvalidInt_reg_0),
        .I3(iDataOut[8]),
        .I4(rbMAxisTvalidInt_reg_2),
        .O(\rbState_reg[0] [0]));
endmodule

(* ORIG_REF_NAME = "SimpleFIFO" *) 
module system_MIPI_CSI_2_RX_0_0_SimpleFIFO_2
   (iFullInt_reg_0,
    \rbState_reg[2] ,
    iRdA0,
    \rbState_reg[2]_0 ,
    iDataOut,
    \rbState_reg[0] ,
    rbTlastInt,
    \rbByteCnt_reg[1] ,
    orv2_out,
    orv4_out,
    rbRst,
    RxByteClkHS,
    rbEnInt,
    \iRdA_reg[0]_0 ,
    \DeskewFIFOs[1].rbActiveHS_q_reg[1] ,
    \DeskewFIFOs[1].rbActiveHS_q_reg[1]_0 ,
    \DeskewFIFOs[1].rbActiveHS_q_reg[1]_1 ,
    \DeskewFIFOs[1].rbActiveHS_q_reg[1]_2 ,
    p_0_in4_in,
    \rbState_reg[0]_0 ,
    \rbByteCnt_reg[1]_0 ,
    I62);
  output iFullInt_reg_0;
  output \rbState_reg[2] ;
  output iRdA0;
  output \rbState_reg[2]_0 ;
  output [9:0]iDataOut;
  output \rbState_reg[0] ;
  output rbTlastInt;
  output \rbByteCnt_reg[1] ;
  output orv2_out;
  output orv4_out;
  input rbRst;
  input RxByteClkHS;
  input rbEnInt;
  input \iRdA_reg[0]_0 ;
  input [1:0]\DeskewFIFOs[1].rbActiveHS_q_reg[1] ;
  input \DeskewFIFOs[1].rbActiveHS_q_reg[1]_0 ;
  input \DeskewFIFOs[1].rbActiveHS_q_reg[1]_1 ;
  input \DeskewFIFOs[1].rbActiveHS_q_reg[1]_2 ;
  input [1:0]p_0_in4_in;
  input \rbState_reg[0]_0 ;
  input \rbByteCnt_reg[1]_0 ;
  input [10:0]I62;

  wire \DeskewFIFOs[0].rbActiveHS_q[0]_i_2_n_0 ;
  wire [1:0]\DeskewFIFOs[1].rbActiveHS_q_reg[1] ;
  wire \DeskewFIFOs[1].rbActiveHS_q_reg[1]_0 ;
  wire \DeskewFIFOs[1].rbActiveHS_q_reg[1]_1 ;
  wire \DeskewFIFOs[1].rbActiveHS_q_reg[1]_2 ;
  wire FIFO_reg_0_31_6_10_n_2;
  wire [10:0]I62;
  wire RxByteClkHS;
  wire [9:0]iDataOut;
  wire iEmptyInt1__8;
  wire iEmptyInt_i_1__0_n_0;
  wire iEmptyInt_i_3__0_n_0;
  wire iEmptyInt_i_4__0_n_0;
  wire iEmptyInt_reg_n_0;
  wire iFullInt2__8;
  wire iFullInt_i_1__0_n_0;
  wire iFullInt_i_3__0_n_0;
  wire iFullInt_i_4__0_n_0;
  wire iFullInt_reg_0;
  wire [4:0]iRdA;
  wire iRdA0;
  wire iRdA0_0;
  wire \iRdA[0]_i_1__0_n_0 ;
  wire \iRdA[1]_i_1__0_n_0 ;
  wire \iRdA[2]_i_1__0_n_0 ;
  wire \iRdA[3]_i_2__0_n_0 ;
  wire \iRdA[4]_i_1__0_n_0 ;
  wire \iRdA_reg[0]_0 ;
  wire [4:0]iWrA;
  wire \iWrA[0]_i_1__0_n_0 ;
  wire \iWrA[1]_i_1__0_n_0 ;
  wire \iWrA[2]_i_1__0_n_0 ;
  wire \iWrA[3]_i_1__0_n_0 ;
  wire \iWrA[4]_i_1_n_0 ;
  wire \iWrA[4]_i_2__0_n_0 ;
  wire orv2_out;
  wire orv4_out;
  wire [1:0]p_0_in4_in;
  wire \rbByteCnt_reg[1] ;
  wire \rbByteCnt_reg[1]_0 ;
  wire rbEnInt;
  wire rbRst;
  wire \rbState_reg[0] ;
  wire \rbState_reg[0]_0 ;
  wire \rbState_reg[2] ;
  wire \rbState_reg[2]_0 ;
  wire rbTlastInt;
  wire [1:0]NLW_FIFO_reg_0_31_0_5_DOD_UNCONNECTED;
  wire [1:1]NLW_FIFO_reg_0_31_6_10_DOC_UNCONNECTED;
  wire [1:0]NLW_FIFO_reg_0_31_6_10_DOD_UNCONNECTED;

  LUT6 #(
    .INIT(64'h7777773777777700)) 
    \DeskewFIFOs[0].rbActiveHS_q[0]_i_1 
       (.I0(\DeskewFIFOs[0].rbActiveHS_q[0]_i_2_n_0 ),
        .I1(\DeskewFIFOs[1].rbActiveHS_q_reg[1] [1]),
        .I2(iDataOut[9]),
        .I3(\DeskewFIFOs[1].rbActiveHS_q_reg[1]_0 ),
        .I4(\DeskewFIFOs[1].rbActiveHS_q_reg[1]_1 ),
        .I5(\DeskewFIFOs[1].rbActiveHS_q_reg[1]_2 ),
        .O(\rbState_reg[2]_0 ));
  LUT4 #(
    .INIT(16'h0777)) 
    \DeskewFIFOs[0].rbActiveHS_q[0]_i_2 
       (.I0(p_0_in4_in[1]),
        .I1(p_0_in4_in[0]),
        .I2(iDataOut[9]),
        .I3(\DeskewFIFOs[1].rbActiveHS_q_reg[1] [1]),
        .O(\DeskewFIFOs[0].rbActiveHS_q[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7777773777777700)) 
    \DeskewFIFOs[1].rbActiveHS_q[1]_i_1 
       (.I0(\DeskewFIFOs[0].rbActiveHS_q[0]_i_2_n_0 ),
        .I1(iDataOut[9]),
        .I2(\DeskewFIFOs[1].rbActiveHS_q_reg[1] [1]),
        .I3(\DeskewFIFOs[1].rbActiveHS_q_reg[1]_0 ),
        .I4(\DeskewFIFOs[1].rbActiveHS_q_reg[1]_1 ),
        .I5(\DeskewFIFOs[1].rbActiveHS_q_reg[1]_2 ),
        .O(\rbState_reg[2] ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "352" *) 
  (* RTL_RAM_NAME = "MIPI_CSI2_Rx_inst/LM_inst/DeskewFIFOs[1].DeskewFIFOx/FIFO" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M FIFO_reg_0_31_0_5
       (.ADDRA(iRdA),
        .ADDRB(iRdA),
        .ADDRC(iRdA),
        .ADDRD(iWrA),
        .DIA(I62[1:0]),
        .DIB(I62[3:2]),
        .DIC(I62[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(iDataOut[1:0]),
        .DOB(iDataOut[3:2]),
        .DOC(iDataOut[5:4]),
        .DOD(NLW_FIFO_reg_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(RxByteClkHS),
        .WE(rbEnInt));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "352" *) 
  (* RTL_RAM_NAME = "MIPI_CSI2_Rx_inst/LM_inst/DeskewFIFOs[1].DeskewFIFOx/FIFO" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "10" *) 
  RAM32M FIFO_reg_0_31_6_10
       (.ADDRA(iRdA),
        .ADDRB(iRdA),
        .ADDRC(iRdA),
        .ADDRD(iWrA),
        .DIA(I62[7:6]),
        .DIB(I62[9:8]),
        .DIC({1'b0,I62[10]}),
        .DID({1'b0,1'b0}),
        .DOA(iDataOut[7:6]),
        .DOB({FIFO_reg_0_31_6_10_n_2,iDataOut[8]}),
        .DOC({NLW_FIFO_reg_0_31_6_10_DOC_UNCONNECTED[1],iDataOut[9]}),
        .DOD(NLW_FIFO_reg_0_31_6_10_DOD_UNCONNECTED[1:0]),
        .WCLK(RxByteClkHS),
        .WE(rbEnInt));
  LUT4 #(
    .INIT(16'h5540)) 
    iEmptyInt_i_1__0
       (.I0(rbEnInt),
        .I1(\rbState_reg[2] ),
        .I2(iEmptyInt1__8),
        .I3(iEmptyInt_reg_n_0),
        .O(iEmptyInt_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h0440800880084004)) 
    iEmptyInt_i_2__0
       (.I0(iWrA[3]),
        .I1(iEmptyInt_i_3__0_n_0),
        .I2(iWrA[4]),
        .I3(iRdA[4]),
        .I4(iRdA[3]),
        .I5(iEmptyInt_i_4__0_n_0),
        .O(iEmptyInt1__8));
  LUT6 #(
    .INIT(64'h0082410014000082)) 
    iEmptyInt_i_3__0
       (.I0(iWrA[0]),
        .I1(iWrA[2]),
        .I2(iRdA[2]),
        .I3(iRdA[0]),
        .I4(iRdA[1]),
        .I5(iWrA[1]),
        .O(iEmptyInt_i_3__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h80)) 
    iEmptyInt_i_4__0
       (.I0(iRdA[2]),
        .I1(iRdA[1]),
        .I2(iRdA[0]),
        .O(iEmptyInt_i_4__0_n_0));
  FDSE #(
    .INIT(1'b1)) 
    iEmptyInt_reg
       (.C(RxByteClkHS),
        .CE(1'b1),
        .D(iEmptyInt_i_1__0_n_0),
        .Q(iEmptyInt_reg_n_0),
        .S(rbRst));
  LUT5 #(
    .INIT(32'h05050400)) 
    iFullInt_i_1__0
       (.I0(iEmptyInt_reg_n_0),
        .I1(iFullInt2__8),
        .I2(\rbState_reg[2] ),
        .I3(rbEnInt),
        .I4(iFullInt_reg_0),
        .O(iFullInt_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h0440800880084004)) 
    iFullInt_i_2__0
       (.I0(iRdA[3]),
        .I1(iFullInt_i_3__0_n_0),
        .I2(iRdA[4]),
        .I3(iWrA[4]),
        .I4(iWrA[3]),
        .I5(iFullInt_i_4__0_n_0),
        .O(iFullInt2__8));
  LUT6 #(
    .INIT(64'h0041820014000082)) 
    iFullInt_i_3__0
       (.I0(iRdA[0]),
        .I1(iRdA[2]),
        .I2(iWrA[2]),
        .I3(iWrA[1]),
        .I4(iWrA[0]),
        .I5(iRdA[1]),
        .O(iFullInt_i_3__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h80)) 
    iFullInt_i_4__0
       (.I0(iWrA[2]),
        .I1(iWrA[0]),
        .I2(iWrA[1]),
        .O(iFullInt_i_4__0_n_0));
  FDSE #(
    .INIT(1'b1)) 
    iFullInt_reg
       (.C(RxByteClkHS),
        .CE(1'b1),
        .D(iFullInt_i_1__0_n_0),
        .Q(iFullInt_reg_0),
        .S(rbRst));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \iRdA[0]_i_1__0 
       (.I0(iRdA[0]),
        .O(\iRdA[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \iRdA[1]_i_1__0 
       (.I0(iRdA[1]),
        .I1(iRdA[0]),
        .O(\iRdA[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \iRdA[2]_i_1__0 
       (.I0(iRdA[2]),
        .I1(iRdA[1]),
        .I2(iRdA[0]),
        .O(\iRdA[2]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \iRdA[3]_i_1 
       (.I0(\rbState_reg[2]_0 ),
        .I1(\iRdA_reg[0]_0 ),
        .O(iRdA0));
  LUT2 #(
    .INIT(4'h2)) 
    \iRdA[3]_i_1__0 
       (.I0(\rbState_reg[2] ),
        .I1(iEmptyInt_reg_n_0),
        .O(iRdA0_0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \iRdA[3]_i_2__0 
       (.I0(iRdA[3]),
        .I1(iRdA[2]),
        .I2(iRdA[1]),
        .I3(iRdA[0]),
        .O(\iRdA[3]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \iRdA[4]_i_1__0 
       (.I0(iRdA[4]),
        .I1(iRdA[3]),
        .I2(iRdA[2]),
        .I3(iRdA[1]),
        .I4(iRdA[0]),
        .O(\iRdA[4]_i_1__0_n_0 ));
  FDRE \iRdA_reg[0] 
       (.C(RxByteClkHS),
        .CE(iRdA0_0),
        .D(\iRdA[0]_i_1__0_n_0 ),
        .Q(iRdA[0]),
        .R(rbRst));
  FDRE \iRdA_reg[1] 
       (.C(RxByteClkHS),
        .CE(iRdA0_0),
        .D(\iRdA[1]_i_1__0_n_0 ),
        .Q(iRdA[1]),
        .R(rbRst));
  FDRE \iRdA_reg[2] 
       (.C(RxByteClkHS),
        .CE(iRdA0_0),
        .D(\iRdA[2]_i_1__0_n_0 ),
        .Q(iRdA[2]),
        .R(rbRst));
  FDRE \iRdA_reg[3] 
       (.C(RxByteClkHS),
        .CE(iRdA0_0),
        .D(\iRdA[3]_i_2__0_n_0 ),
        .Q(iRdA[3]),
        .R(rbRst));
  FDRE \iRdA_reg[4] 
       (.C(RxByteClkHS),
        .CE(iRdA0_0),
        .D(\iRdA[4]_i_1__0_n_0 ),
        .Q(iRdA[4]),
        .R(rbRst));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \iWrA[0]_i_1__0 
       (.I0(iWrA[0]),
        .O(\iWrA[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \iWrA[1]_i_1__0 
       (.I0(iWrA[0]),
        .I1(iWrA[1]),
        .O(\iWrA[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \iWrA[2]_i_1__0 
       (.I0(iWrA[2]),
        .I1(iWrA[0]),
        .I2(iWrA[1]),
        .O(\iWrA[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \iWrA[3]_i_1__0 
       (.I0(iWrA[3]),
        .I1(iWrA[2]),
        .I2(iWrA[0]),
        .I3(iWrA[1]),
        .O(\iWrA[3]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \iWrA[4]_i_1 
       (.I0(rbEnInt),
        .I1(iFullInt_reg_0),
        .O(\iWrA[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \iWrA[4]_i_2__0 
       (.I0(iWrA[4]),
        .I1(iWrA[3]),
        .I2(iWrA[2]),
        .I3(iWrA[0]),
        .I4(iWrA[1]),
        .O(\iWrA[4]_i_2__0_n_0 ));
  FDRE \iWrA_reg[0] 
       (.C(RxByteClkHS),
        .CE(\iWrA[4]_i_1_n_0 ),
        .D(\iWrA[0]_i_1__0_n_0 ),
        .Q(iWrA[0]),
        .R(rbRst));
  FDRE \iWrA_reg[1] 
       (.C(RxByteClkHS),
        .CE(\iWrA[4]_i_1_n_0 ),
        .D(\iWrA[1]_i_1__0_n_0 ),
        .Q(iWrA[1]),
        .R(rbRst));
  FDRE \iWrA_reg[2] 
       (.C(RxByteClkHS),
        .CE(\iWrA[4]_i_1_n_0 ),
        .D(\iWrA[2]_i_1__0_n_0 ),
        .Q(iWrA[2]),
        .R(rbRst));
  FDRE \iWrA_reg[3] 
       (.C(RxByteClkHS),
        .CE(\iWrA[4]_i_1_n_0 ),
        .D(\iWrA[3]_i_1__0_n_0 ),
        .Q(iWrA[3]),
        .R(rbRst));
  FDRE \iWrA_reg[4] 
       (.C(RxByteClkHS),
        .CE(\iWrA[4]_i_1_n_0 ),
        .D(\iWrA[4]_i_2__0_n_0 ),
        .Q(iWrA[4]),
        .R(rbRst));
  LUT6 #(
    .INIT(64'hAAAAAA555600AAAA)) 
    \rbByteCnt[1]_i_1 
       (.I0(\rbByteCnt_reg[1]_0 ),
        .I1(iDataOut[8]),
        .I2(\DeskewFIFOs[1].rbActiveHS_q_reg[1] [0]),
        .I3(\DeskewFIFOs[1].rbActiveHS_q_reg[1]_2 ),
        .I4(\DeskewFIFOs[1].rbActiveHS_q_reg[1]_1 ),
        .I5(\DeskewFIFOs[1].rbActiveHS_q_reg[1]_0 ),
        .O(\rbByteCnt_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h00F00010)) 
    rbMAxisTlast_i_1
       (.I0(iDataOut[8]),
        .I1(\DeskewFIFOs[1].rbActiveHS_q_reg[1] [0]),
        .I2(\DeskewFIFOs[1].rbActiveHS_q_reg[1]_0 ),
        .I3(\DeskewFIFOs[1].rbActiveHS_q_reg[1]_2 ),
        .I4(\DeskewFIFOs[1].rbActiveHS_q_reg[1]_1 ),
        .O(rbTlastInt));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \rbState[2]_i_2 
       (.I0(iFullInt_reg_0),
        .I1(\rbState_reg[0]_0 ),
        .O(orv4_out));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \rbState[2]_i_3 
       (.I0(iDataOut[8]),
        .I1(\DeskewFIFOs[1].rbActiveHS_q_reg[1] [0]),
        .O(orv2_out));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'hF0F0F08F)) 
    \rbState[2]_i_7 
       (.I0(iDataOut[9]),
        .I1(\DeskewFIFOs[1].rbActiveHS_q_reg[1] [1]),
        .I2(\DeskewFIFOs[1].rbActiveHS_q_reg[1]_1 ),
        .I3(\rbState_reg[0]_0 ),
        .I4(iFullInt_reg_0),
        .O(\rbState_reg[0] ));
endmodule

(* ORIG_REF_NAME = "SyncAsync" *) 
module system_MIPI_CSI_2_RX_0_0_SyncAsync
   (out,
    RxByteClkHS,
    rbRst,
    D);
  output [0:0]out;
  input RxByteClkHS;
  input rbRst;
  input [0:0]D;

  wire [0:0]D;
  wire RxByteClkHS;
  (* async_reg = "true" *) wire [1:0]oSyncStages;
  wire rbRst;

  assign out[0] = oSyncStages[1];
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \oSyncStages_reg[0] 
       (.C(RxByteClkHS),
        .CE(1'b1),
        .CLR(rbRst),
        .D(D),
        .Q(oSyncStages[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \oSyncStages_reg[1] 
       (.C(RxByteClkHS),
        .CE(1'b1),
        .CLR(rbRst),
        .D(oSyncStages[0]),
        .Q(oSyncStages[1]));
endmodule

(* ORIG_REF_NAME = "SyncAsync" *) 
module system_MIPI_CSI_2_RX_0_0_SyncAsync_0
   (\YesAXILITE.vRst_n_reg ,
    video_aclk,
    D,
    vRst_n);
  output \YesAXILITE.vRst_n_reg ;
  input video_aclk;
  input [0:0]D;
  input vRst_n;

  wire [0:0]D;
  wire \YesAXILITE.vRst_n_reg ;
  (* async_reg = "true" *) wire [1:0]oSyncStages;
  wire vRst_n;
  wire video_aclk;

  LUT1 #(
    .INIT(2'h1)) 
    \oSyncStages[1]_i_1 
       (.I0(vRst_n),
        .O(\YesAXILITE.vRst_n_reg ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \oSyncStages_reg[0] 
       (.C(video_aclk),
        .CE(1'b1),
        .CLR(\YesAXILITE.vRst_n_reg ),
        .D(D),
        .Q(oSyncStages[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \oSyncStages_reg[1] 
       (.C(video_aclk),
        .CE(1'b1),
        .CLR(\YesAXILITE.vRst_n_reg ),
        .D(oSyncStages[0]),
        .Q(oSyncStages[1]));
endmodule

(* ORIG_REF_NAME = "SyncAsync" *) 
module system_MIPI_CSI_2_RX_0_0_SyncAsync_1
   (out,
    rbRst,
    RxByteClkHS,
    \oSyncStages_reg[1]_0 );
  output [0:0]out;
  output rbRst;
  input RxByteClkHS;
  input \oSyncStages_reg[1]_0 ;

  wire RxByteClkHS;
  (* async_reg = "true" *) wire [1:0]oSyncStages;
  wire \oSyncStages_reg[1]_0 ;
  wire rbRst;

  assign out[0] = oSyncStages[1];
  LUT1 #(
    .INIT(2'h1)) 
    \iWrA[4]_i_1__0 
       (.I0(oSyncStages[1]),
        .O(rbRst));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \oSyncStages_reg[0] 
       (.C(RxByteClkHS),
        .CE(1'b1),
        .CLR(\oSyncStages_reg[1]_0 ),
        .D(1'b1),
        .Q(oSyncStages[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \oSyncStages_reg[1] 
       (.C(RxByteClkHS),
        .CE(1'b1),
        .CLR(\oSyncStages_reg[1]_0 ),
        .D(oSyncStages[0]),
        .Q(oSyncStages[1]));
endmodule

(* ORIG_REF_NAME = "SyncAsync" *) 
module system_MIPI_CSI_2_RX_0_0_SyncAsync__parameterized0
   (\oSyncStages_reg[1]_0 ,
    video_aclk,
    AS);
  output \oSyncStages_reg[1]_0 ;
  input video_aclk;
  input [0:0]AS;

  wire [0:0]AS;
  (* async_reg = "true" *) wire [1:0]oSyncStages;
  wire \oSyncStages_reg[1]_0 ;
  wire video_aclk;

  LUT1 #(
    .INIT(2'h1)) 
    \YesAXILITE.vRst_n_i_1 
       (.I0(oSyncStages[1]),
        .O(\oSyncStages_reg[1]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \oSyncStages_reg[0] 
       (.C(video_aclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(AS),
        .Q(oSyncStages[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \oSyncStages_reg[1] 
       (.C(video_aclk),
        .CE(1'b1),
        .D(oSyncStages[0]),
        .PRE(AS),
        .Q(oSyncStages[1]));
endmodule

(* ORIG_REF_NAME = "SyncAsync" *) 
module system_MIPI_CSI_2_RX_0_0_SyncAsync__parameterized0_5
   (\oSyncStages_reg[1]_0 ,
    RxByteClkHS,
    AS);
  output [0:0]\oSyncStages_reg[1]_0 ;
  input RxByteClkHS;
  input [0:0]AS;

  wire [0:0]AS;
  wire RxByteClkHS;
  (* async_reg = "true" *) wire [1:0]oSyncStages;

  assign \oSyncStages_reg[1]_0 [0] = oSyncStages[1];
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \oSyncStages_reg[0] 
       (.C(RxByteClkHS),
        .CE(1'b1),
        .D(1'b0),
        .PRE(AS),
        .Q(oSyncStages[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \oSyncStages_reg[1] 
       (.C(RxByteClkHS),
        .CE(1'b1),
        .D(oSyncStages[0]),
        .PRE(AS),
        .Q(oSyncStages[1]));
endmodule

(* ORIG_REF_NAME = "SyncAsync" *) 
module system_MIPI_CSI_2_RX_0_0_SyncAsync__parameterized0_6
   (out,
    E,
    mReg_Tvalid_reg,
    \RAW10Formatter.cnt_reg[1] ,
    \RAW10Formatter.cnt_reg[0] ,
    \oSyncStages_reg[1]_0 ,
    \oSyncStages_reg[1]_1 ,
    \oSyncStages_reg[1]_2 ,
    \oSyncStages_reg[1]_3 ,
    \oSyncStages_reg[1]_4 ,
    s_axis_aresetn,
    mFmt_Tvalid_reg,
    m_axis_tvalid,
    \mReg_Tdata_reg[31] ,
    s_axis_tready,
    \RAW10Formatter.cnt_reg[2] ,
    \RAW10Formatter.cnt_reg[2]_0 ,
    \RAW10Formatter.cnt_reg[2]_1 ,
    \RAW10Formatter.cnt_reg[2]_2 ,
    \RAW10Formatter.cnt_reg[1]_0 ,
    \RAW10Formatter.cnt_reg[1]_1 ,
    cnt,
    \mFmt_Tuser_reg[0] ,
    \mFmt_Tuser_reg[0]_0 ,
    s_axis_tuser,
    video_aclk,
    AS);
  output [0:0]out;
  output [0:0]E;
  output mReg_Tvalid_reg;
  output \RAW10Formatter.cnt_reg[1] ;
  output \RAW10Formatter.cnt_reg[0] ;
  output [0:0]\oSyncStages_reg[1]_0 ;
  output [0:0]\oSyncStages_reg[1]_1 ;
  output [0:0]\oSyncStages_reg[1]_2 ;
  output [0:0]\oSyncStages_reg[1]_3 ;
  output [0:0]\oSyncStages_reg[1]_4 ;
  output s_axis_aresetn;
  output mFmt_Tvalid_reg;
  input m_axis_tvalid;
  input \mReg_Tdata_reg[31] ;
  input s_axis_tready;
  input \RAW10Formatter.cnt_reg[2] ;
  input \RAW10Formatter.cnt_reg[2]_0 ;
  input \RAW10Formatter.cnt_reg[2]_1 ;
  input \RAW10Formatter.cnt_reg[2]_2 ;
  input \RAW10Formatter.cnt_reg[1]_0 ;
  input \RAW10Formatter.cnt_reg[1]_1 ;
  input cnt;
  input \mFmt_Tuser_reg[0] ;
  input \mFmt_Tuser_reg[0]_0 ;
  input [0:0]s_axis_tuser;
  input video_aclk;
  input [0:0]AS;

  wire [0:0]AS;
  wire [0:0]E;
  wire \RAW10Formatter.cnt_reg[0] ;
  wire \RAW10Formatter.cnt_reg[1] ;
  wire \RAW10Formatter.cnt_reg[1]_0 ;
  wire \RAW10Formatter.cnt_reg[1]_1 ;
  wire \RAW10Formatter.cnt_reg[2] ;
  wire \RAW10Formatter.cnt_reg[2]_0 ;
  wire \RAW10Formatter.cnt_reg[2]_1 ;
  wire \RAW10Formatter.cnt_reg[2]_2 ;
  wire cnt;
  wire \mFmt_Tuser_reg[0] ;
  wire \mFmt_Tuser_reg[0]_0 ;
  wire mFmt_Tvalid_reg;
  wire \mReg_Tdata_reg[31] ;
  wire mReg_Tvalid_reg;
  wire m_axis_tvalid;
  (* async_reg = "true" *) wire [1:0]oSyncStages;
  wire [0:0]\oSyncStages_reg[1]_0 ;
  wire [0:0]\oSyncStages_reg[1]_1 ;
  wire [0:0]\oSyncStages_reg[1]_2 ;
  wire [0:0]\oSyncStages_reg[1]_3 ;
  wire [0:0]\oSyncStages_reg[1]_4 ;
  wire s_axis_aresetn;
  wire s_axis_tready;
  wire [0:0]s_axis_tuser;
  wire video_aclk;

  assign out[0] = oSyncStages[1];
  LUT1 #(
    .INIT(2'h1)) 
    LineBufferFIFO_i_1
       (.I0(oSyncStages[1]),
        .O(s_axis_aresetn));
  LUT6 #(
    .INIT(64'h000000002A2A2A6A)) 
    \RAW10Formatter.cnt[0]_i_1 
       (.I0(\RAW10Formatter.cnt_reg[1]_1 ),
        .I1(\RAW10Formatter.cnt_reg[2]_0 ),
        .I2(s_axis_tready),
        .I3(\RAW10Formatter.cnt_reg[2]_1 ),
        .I4(\RAW10Formatter.cnt_reg[2]_2 ),
        .I5(oSyncStages[1]),
        .O(\RAW10Formatter.cnt_reg[0] ));
  LUT6 #(
    .INIT(64'h000000000A0A0A6A)) 
    \RAW10Formatter.cnt[1]_i_1 
       (.I0(\RAW10Formatter.cnt_reg[1]_0 ),
        .I1(\RAW10Formatter.cnt_reg[1]_1 ),
        .I2(cnt),
        .I3(\RAW10Formatter.cnt_reg[2]_1 ),
        .I4(\RAW10Formatter.cnt_reg[2]_2 ),
        .I5(oSyncStages[1]),
        .O(\RAW10Formatter.cnt_reg[1] ));
  LUT6 #(
    .INIT(64'h000000003F3F0080)) 
    \RAW10Formatter.cnt[2]_i_1 
       (.I0(\RAW10Formatter.cnt_reg[2] ),
        .I1(\RAW10Formatter.cnt_reg[2]_0 ),
        .I2(s_axis_tready),
        .I3(\RAW10Formatter.cnt_reg[2]_1 ),
        .I4(\RAW10Formatter.cnt_reg[2]_2 ),
        .I5(oSyncStages[1]),
        .O(mReg_Tvalid_reg));
  LUT4 #(
    .INIT(16'h0040)) 
    \RAW10Formatter.pix_mux[0][9]_i_1 
       (.I0(oSyncStages[1]),
        .I1(s_axis_tready),
        .I2(\RAW10Formatter.cnt_reg[2]_0 ),
        .I3(\RAW10Formatter.cnt_reg[2]_2 ),
        .O(\oSyncStages_reg[1]_1 ));
  LUT5 #(
    .INIT(32'h00404040)) 
    \RAW10Formatter.pix_mux[1][9]_i_1 
       (.I0(oSyncStages[1]),
        .I1(s_axis_tready),
        .I2(\RAW10Formatter.cnt_reg[2]_0 ),
        .I3(\RAW10Formatter.cnt_reg[1]_0 ),
        .I4(\RAW10Formatter.cnt_reg[1]_1 ),
        .O(\oSyncStages_reg[1]_2 ));
  LUT5 #(
    .INIT(32'h40004040)) 
    \RAW10Formatter.pix_mux[2][9]_i_1 
       (.I0(oSyncStages[1]),
        .I1(s_axis_tready),
        .I2(\RAW10Formatter.cnt_reg[2]_0 ),
        .I3(\RAW10Formatter.cnt_reg[1]_1 ),
        .I4(\RAW10Formatter.cnt_reg[1]_0 ),
        .O(\oSyncStages_reg[1]_3 ));
  LUT5 #(
    .INIT(32'h40004040)) 
    \RAW10Formatter.pix_mux[3][9]_i_1 
       (.I0(oSyncStages[1]),
        .I1(s_axis_tready),
        .I2(\RAW10Formatter.cnt_reg[2]_0 ),
        .I3(\RAW10Formatter.cnt_reg[1]_0 ),
        .I4(\RAW10Formatter.cnt_reg[1]_1 ),
        .O(\oSyncStages_reg[1]_4 ));
  LUT6 #(
    .INIT(64'h4040404040404000)) 
    \mFmt_Tdata[39]_i_1 
       (.I0(oSyncStages[1]),
        .I1(s_axis_tready),
        .I2(\RAW10Formatter.cnt_reg[2]_0 ),
        .I3(\RAW10Formatter.cnt_reg[2]_2 ),
        .I4(\RAW10Formatter.cnt_reg[1]_0 ),
        .I5(\RAW10Formatter.cnt_reg[1]_1 ),
        .O(\oSyncStages_reg[1]_0 ));
  LUT5 #(
    .INIT(32'h00005F40)) 
    \mFmt_Tuser[0]_i_1 
       (.I0(\mFmt_Tuser_reg[0] ),
        .I1(\mFmt_Tuser_reg[0]_0 ),
        .I2(s_axis_tready),
        .I3(s_axis_tuser),
        .I4(oSyncStages[1]),
        .O(mFmt_Tvalid_reg));
  LUT4 #(
    .INIT(16'h4000)) 
    \mReg_Tdata[31]_i_1 
       (.I0(oSyncStages[1]),
        .I1(m_axis_tvalid),
        .I2(\mReg_Tdata_reg[31] ),
        .I3(s_axis_tready),
        .O(E));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \oSyncStages_reg[0] 
       (.C(video_aclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(AS),
        .Q(oSyncStages[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \oSyncStages_reg[1] 
       (.C(video_aclk),
        .CE(1'b1),
        .D(oSyncStages[0]),
        .PRE(AS),
        .Q(oSyncStages[1]));
endmodule

(* ORIG_REF_NAME = "SyncAsync" *) 
module system_MIPI_CSI_2_RX_0_0_SyncAsync__parameterized1
   (out,
    \oSyncStages_reg[1]_0 ,
    vRst_n,
    video_aclk,
    D);
  output [0:0]out;
  output \oSyncStages_reg[1]_0 ;
  input vRst_n;
  input video_aclk;
  input [0:0]D;

  wire [0:0]D;
  (* async_reg = "true" *) wire [1:0]oSyncStages;
  wire \oSyncStages_reg[1]_0 ;
  wire vRst_n;
  wire video_aclk;

  assign out[0] = oSyncStages[1];
  LUT2 #(
    .INIT(4'h8)) 
    \aDEnableInt[0]_i_1 
       (.I0(oSyncStages[1]),
        .I1(vRst_n),
        .O(\oSyncStages_reg[1]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \oSyncStages_reg[0] 
       (.C(video_aclk),
        .CE(1'b1),
        .D(D),
        .Q(oSyncStages[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \oSyncStages_reg[1] 
       (.C(video_aclk),
        .CE(1'b1),
        .D(oSyncStages[0]),
        .Q(oSyncStages[1]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axis_data_fifo_v2_0_4_top" *) 
module system_MIPI_CSI_2_RX_0_0_axis_data_fifo_v2_0_4_top
   (s_axis_tready,
    m_axis_tvalid,
    m_axis_tdata,
    m_axis_tlast,
    m_axis_tuser,
    s_axis_aresetn,
    s_axis_aclk,
    s_axis_tvalid,
    s_axis_tdata,
    s_axis_tlast,
    s_axis_tuser,
    m_axis_tready);
  output s_axis_tready;
  output m_axis_tvalid;
  output [39:0]m_axis_tdata;
  output m_axis_tlast;
  output [0:0]m_axis_tuser;
  input s_axis_aresetn;
  input s_axis_aclk;
  input s_axis_tvalid;
  input [39:0]s_axis_tdata;
  input s_axis_tlast;
  input [0:0]s_axis_tuser;
  input m_axis_tready;

  wire \gen_fifo.xpm_fifo_axis_inst_n_56 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_57 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_58 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_59 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_60 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_61 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_62 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_63 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_64 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_65 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_66 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_67 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_68 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_69 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_70 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_71 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_72 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_73 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_74 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_75 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_76 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_77 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_78 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_79 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_80 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_81 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_82 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_83 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_84 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_85 ;
  wire [39:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire [0:0]m_axis_tuser;
  wire m_axis_tvalid;
  wire s_axis_aclk;
  wire s_axis_aresetn;
  wire [39:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire [0:0]s_axis_tuser;
  wire s_axis_tvalid;
  wire [0:0]\NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tdest_UNCONNECTED ;
  wire [0:0]\NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tid_UNCONNECTED ;
  wire [4:0]\NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tkeep_UNCONNECTED ;
  wire [4:0]\NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tstrb_UNCONNECTED ;

  (* AXIS_DATA_WIDTH = "54" *) 
  (* AXIS_FINAL_DATA_WIDTH = "54" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CDC_SYNC_STAGES = "3" *) 
  (* CLOCKING_MODE = "common_clock" *) 
  (* ECC_MODE = "no_ecc" *) 
  (* EN_ADV_FEATURE_AXIS = "16'b0001010000000100" *) 
  (* EN_ADV_FEATURE_AXIS_INT = "16'b0001010000000100" *) 
  (* EN_ALMOST_EMPTY_INT = "1'b0" *) 
  (* EN_ALMOST_FULL_INT = "1'b0" *) 
  (* EN_DATA_VALID_INT = "1'b1" *) 
  (* FIFO_DEPTH = "2048" *) 
  (* FIFO_MEMORY_TYPE = "auto" *) 
  (* LOG_DEPTH_AXIS = "11" *) 
  (* PACKET_FIFO = "false" *) 
  (* PKT_SIZE_LT8 = "1'b0" *) 
  (* PROG_EMPTY_THRESH = "5" *) 
  (* PROG_FULL_THRESH = "11" *) 
  (* P_COMMON_CLOCK = "1" *) 
  (* P_ECC_MODE = "0" *) 
  (* P_FIFO_MEMORY_TYPE = "0" *) 
  (* P_PKT_MODE = "0" *) 
  (* RD_DATA_COUNT_WIDTH = "12" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* TDATA_OFFSET = "40" *) 
  (* TDATA_WIDTH = "40" *) 
  (* TDEST_OFFSET = "52" *) 
  (* TDEST_WIDTH = "1" *) 
  (* TID_OFFSET = "51" *) 
  (* TID_WIDTH = "1" *) 
  (* TKEEP_OFFSET = "50" *) 
  (* TSTRB_OFFSET = "45" *) 
  (* TUSER_MAX_WIDTH = "4043" *) 
  (* TUSER_OFFSET = "53" *) 
  (* TUSER_WIDTH = "1" *) 
  (* USE_ADV_FEATURES = "825503796" *) 
  (* USE_ADV_FEATURES_INT = "825503796" *) 
  (* WR_DATA_COUNT_WIDTH = "12" *) 
  (* XPM_MODULE = "TRUE" *) 
  system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis \gen_fifo.xpm_fifo_axis_inst 
       (.almost_empty_axis(\gen_fifo.xpm_fifo_axis_inst_n_83 ),
        .almost_full_axis(\gen_fifo.xpm_fifo_axis_inst_n_69 ),
        .dbiterr_axis(\gen_fifo.xpm_fifo_axis_inst_n_85 ),
        .injectdbiterr_axis(1'b0),
        .injectsbiterr_axis(1'b0),
        .m_aclk(s_axis_aclk),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tdest(\NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tdest_UNCONNECTED [0]),
        .m_axis_tid(\NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tid_UNCONNECTED [0]),
        .m_axis_tkeep(\NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tkeep_UNCONNECTED [4:0]),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tstrb(\NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tstrb_UNCONNECTED [4:0]),
        .m_axis_tuser(m_axis_tuser),
        .m_axis_tvalid(m_axis_tvalid),
        .prog_empty_axis(\gen_fifo.xpm_fifo_axis_inst_n_70 ),
        .prog_full_axis(\gen_fifo.xpm_fifo_axis_inst_n_56 ),
        .rd_data_count_axis({\gen_fifo.xpm_fifo_axis_inst_n_71 ,\gen_fifo.xpm_fifo_axis_inst_n_72 ,\gen_fifo.xpm_fifo_axis_inst_n_73 ,\gen_fifo.xpm_fifo_axis_inst_n_74 ,\gen_fifo.xpm_fifo_axis_inst_n_75 ,\gen_fifo.xpm_fifo_axis_inst_n_76 ,\gen_fifo.xpm_fifo_axis_inst_n_77 ,\gen_fifo.xpm_fifo_axis_inst_n_78 ,\gen_fifo.xpm_fifo_axis_inst_n_79 ,\gen_fifo.xpm_fifo_axis_inst_n_80 ,\gen_fifo.xpm_fifo_axis_inst_n_81 ,\gen_fifo.xpm_fifo_axis_inst_n_82 }),
        .s_aclk(s_axis_aclk),
        .s_aresetn(s_axis_aresetn),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tstrb({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tuser(s_axis_tuser),
        .s_axis_tvalid(s_axis_tvalid),
        .sbiterr_axis(\gen_fifo.xpm_fifo_axis_inst_n_84 ),
        .wr_data_count_axis({\gen_fifo.xpm_fifo_axis_inst_n_57 ,\gen_fifo.xpm_fifo_axis_inst_n_58 ,\gen_fifo.xpm_fifo_axis_inst_n_59 ,\gen_fifo.xpm_fifo_axis_inst_n_60 ,\gen_fifo.xpm_fifo_axis_inst_n_61 ,\gen_fifo.xpm_fifo_axis_inst_n_62 ,\gen_fifo.xpm_fifo_axis_inst_n_63 ,\gen_fifo.xpm_fifo_axis_inst_n_64 ,\gen_fifo.xpm_fifo_axis_inst_n_65 ,\gen_fifo.xpm_fifo_axis_inst_n_66 ,\gen_fifo.xpm_fifo_axis_inst_n_67 ,\gen_fifo.xpm_fifo_axis_inst_n_68 }));
endmodule

(* CHECK_LICENSE_TYPE = "cdc_fifo,fifo_generator_v13_2_5,{}" *) (* ORIG_REF_NAME = "cdc_fifo" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.2" *) 
module system_MIPI_CSI_2_RX_0_0_cdc_fifo
   (m_aclk,
    s_aclk,
    s_aresetn,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tkeep,
    s_axis_tlast,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tkeep,
    m_axis_tlast);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 master_aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME master_aclk, ASSOCIATED_BUSIF M_AXIS:M_AXI, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input m_aclk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 slave_aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME slave_aclk, ASSOCIATED_BUSIF S_AXIS:S_AXI, ASSOCIATED_RESET s_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input s_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 slave_aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME slave_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_aresetn;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) output s_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *) input [31:0]s_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TKEEP" *) input [3:0]s_axis_tkeep;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TLAST" *) input s_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) input m_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) output [31:0]m_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TKEEP" *) output [3:0]m_axis_tkeep;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TLAST" *) output m_axis_tlast;

  wire m_aclk;
  wire [31:0]m_axis_tdata;
  wire [3:0]m_axis_tkeep;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire s_aclk;
  wire s_aresetn;
  wire [31:0]s_axis_tdata;
  wire [3:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tvalid;
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
  wire NLW_U0_empty_UNCONNECTED;
  wire NLW_U0_full_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
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
  wire [5:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [5:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [5:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [9:0]NLW_U0_data_count_UNCONNECTED;
  wire [17:0]NLW_U0_dout_UNCONNECTED;
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
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [9:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [9:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "32" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "4" *) 
  (* C_AXIS_TSTRB_WIDTH = "4" *) 
  (* C_AXIS_TUSER_WIDTH = "1" *) 
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
  (* C_DATA_COUNT_WIDTH = "10" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "18" *) 
  (* C_DIN_WIDTH_AXIS = "37" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "32" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "18" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_FULL_FLAGS_RST_VAL = "1" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "1" *) 
  (* C_HAS_AXIS_TLAST = "1" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "0" *) 
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
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "0" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "12" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "12" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "11" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "12" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "11" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "12" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "1" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "4kx4" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "512x72" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "29" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "13" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1021" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "13" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1021" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "13" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "1022" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "31" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "15" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "15" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "15" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "1021" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "10" *) 
  (* C_RD_DEPTH = "1024" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "10" *) 
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
  (* C_WR_DATA_COUNT_WIDTH = "10" *) 
  (* C_WR_DEPTH = "1024" *) 
  (* C_WR_DEPTH_AXIS = "32" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "10" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "5" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  system_MIPI_CSI_2_RX_0_0_fifo_generator_v13_2_5 U0
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
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[5:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[5:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[5:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[9:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dout(NLW_U0_dout_UNCONNECTED[17:0]),
        .empty(NLW_U0_empty_UNCONNECTED),
        .full(NLW_U0_full_UNCONNECTED),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(m_aclk),
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
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(m_axis_tkeep),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[3:0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[0]),
        .m_axis_tvalid(m_axis_tvalid),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(1'b0),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[9:0]),
        .rd_en(1'b0),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(1'b0),
        .s_aclk(s_aclk),
        .s_aclk_en(1'b0),
        .s_aresetn(s_aresetn),
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
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(s_axis_tkeep),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tuser(1'b0),
        .s_axis_tvalid(s_axis_tvalid),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(1'b0),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[9:0]),
        .wr_en(1'b0),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule

(* CHECK_LICENSE_TYPE = "line_buffer,axis_data_fifo_v2_0_4_top,{}" *) (* ORIG_REF_NAME = "line_buffer" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "axis_data_fifo_v2_0_4_top,Vivado 2020.2" *) 
module system_MIPI_CSI_2_RX_0_0_line_buffer
   (s_axis_aresetn,
    s_axis_aclk,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tlast,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tlast,
    m_axis_tuser,
    axis_wr_data_count,
    axis_rd_data_count);
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S_RSTIF RST" *) (* x_interface_parameter = "XIL_INTERFACENAME S_RSTIF, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axis_aresetn;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S_CLKIF CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S_CLKIF, ASSOCIATED_BUSIF S_AXIS, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input s_axis_aclk;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) input s_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) output s_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *) input [39:0]s_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TLAST" *) input s_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TUSER" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 5, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) input [0:0]s_axis_tuser;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) output m_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) input m_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) output [39:0]m_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TLAST" *) output m_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TUSER" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 5, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) output [0:0]m_axis_tuser;
  output [31:0]axis_wr_data_count;
  output [31:0]axis_rd_data_count;

  wire \<const0> ;
  wire [39:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire [0:0]m_axis_tuser;
  wire m_axis_tvalid;
  wire s_axis_aclk;
  wire s_axis_aresetn;
  wire [39:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire [0:0]s_axis_tuser;
  wire s_axis_tvalid;

  assign axis_rd_data_count[31] = \<const0> ;
  assign axis_rd_data_count[30] = \<const0> ;
  assign axis_rd_data_count[29] = \<const0> ;
  assign axis_rd_data_count[28] = \<const0> ;
  assign axis_rd_data_count[27] = \<const0> ;
  assign axis_rd_data_count[26] = \<const0> ;
  assign axis_rd_data_count[25] = \<const0> ;
  assign axis_rd_data_count[24] = \<const0> ;
  assign axis_rd_data_count[23] = \<const0> ;
  assign axis_rd_data_count[22] = \<const0> ;
  assign axis_rd_data_count[21] = \<const0> ;
  assign axis_rd_data_count[20] = \<const0> ;
  assign axis_rd_data_count[19] = \<const0> ;
  assign axis_rd_data_count[18] = \<const0> ;
  assign axis_rd_data_count[17] = \<const0> ;
  assign axis_rd_data_count[16] = \<const0> ;
  assign axis_rd_data_count[15] = \<const0> ;
  assign axis_rd_data_count[14] = \<const0> ;
  assign axis_rd_data_count[13] = \<const0> ;
  assign axis_rd_data_count[12] = \<const0> ;
  assign axis_rd_data_count[11] = \<const0> ;
  assign axis_rd_data_count[10] = \<const0> ;
  assign axis_rd_data_count[9] = \<const0> ;
  assign axis_rd_data_count[8] = \<const0> ;
  assign axis_rd_data_count[7] = \<const0> ;
  assign axis_rd_data_count[6] = \<const0> ;
  assign axis_rd_data_count[5] = \<const0> ;
  assign axis_rd_data_count[4] = \<const0> ;
  assign axis_rd_data_count[3] = \<const0> ;
  assign axis_rd_data_count[2] = \<const0> ;
  assign axis_rd_data_count[1] = \<const0> ;
  assign axis_rd_data_count[0] = \<const0> ;
  assign axis_wr_data_count[31] = \<const0> ;
  assign axis_wr_data_count[30] = \<const0> ;
  assign axis_wr_data_count[29] = \<const0> ;
  assign axis_wr_data_count[28] = \<const0> ;
  assign axis_wr_data_count[27] = \<const0> ;
  assign axis_wr_data_count[26] = \<const0> ;
  assign axis_wr_data_count[25] = \<const0> ;
  assign axis_wr_data_count[24] = \<const0> ;
  assign axis_wr_data_count[23] = \<const0> ;
  assign axis_wr_data_count[22] = \<const0> ;
  assign axis_wr_data_count[21] = \<const0> ;
  assign axis_wr_data_count[20] = \<const0> ;
  assign axis_wr_data_count[19] = \<const0> ;
  assign axis_wr_data_count[18] = \<const0> ;
  assign axis_wr_data_count[17] = \<const0> ;
  assign axis_wr_data_count[16] = \<const0> ;
  assign axis_wr_data_count[15] = \<const0> ;
  assign axis_wr_data_count[14] = \<const0> ;
  assign axis_wr_data_count[13] = \<const0> ;
  assign axis_wr_data_count[12] = \<const0> ;
  assign axis_wr_data_count[11] = \<const0> ;
  assign axis_wr_data_count[10] = \<const0> ;
  assign axis_wr_data_count[9] = \<const0> ;
  assign axis_wr_data_count[8] = \<const0> ;
  assign axis_wr_data_count[7] = \<const0> ;
  assign axis_wr_data_count[6] = \<const0> ;
  assign axis_wr_data_count[5] = \<const0> ;
  assign axis_wr_data_count[4] = \<const0> ;
  assign axis_wr_data_count[3] = \<const0> ;
  assign axis_wr_data_count[2] = \<const0> ;
  assign axis_wr_data_count[1] = \<const0> ;
  assign axis_wr_data_count[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  system_MIPI_CSI_2_RX_0_0_axis_data_fifo_v2_0_4_top inst
       (.m_axis_tdata(m_axis_tdata),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tuser(m_axis_tuser),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_aclk(s_axis_aclk),
        .s_axis_aresetn(s_axis_aresetn),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tuser(s_axis_tuser),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* C_M_AXIS_COMPONENT_WIDTH = "10" *) (* C_M_AXIS_TDATA_WIDTH = "40" *) (* C_M_MAX_SAMPLES_PER_CLOCK = "4" *) 
(* C_S_AXI_LITE_ADDR_WIDTH = "4" *) (* C_S_AXI_LITE_DATA_WIDTH = "32" *) (* ORIG_REF_NAME = "mipi_csi2_rx_top" *) 
(* kDebug = "FALSE" *) (* kGenerateAXIL = "TRUE" *) (* kLaneCount = "2" *) 
(* kTargetDT = "RAW10" *) (* kVersionMajor = "1" *) (* kVersionMinor = "2" *) 
module system_MIPI_CSI_2_RX_0_0_mipi_csi2_rx_top
   (RxByteClkHS,
    aClkStopstate,
    aRxClkActiveHS,
    RxDataHSD0,
    RxSyncHSD0,
    RxValidHSD0,
    RxActiveHSD0,
    aD0Enable,
    RxDataHSD1,
    RxSyncHSD1,
    RxValidHSD1,
    RxActiveHSD1,
    aD1Enable,
    RxDataHSD2,
    RxSyncHSD2,
    RxValidHSD2,
    RxActiveHSD2,
    aD2Enable,
    RxDataHSD3,
    RxSyncHSD3,
    RxValidHSD3,
    RxActiveHSD3,
    aD3Enable,
    aClkEnable,
    m_axis_video_tdata,
    m_axis_video_tvalid,
    m_axis_video_tready,
    m_axis_video_tlast,
    m_axis_video_tuser,
    video_aresetn,
    video_aclk,
    s_axi_lite_aclk,
    s_axi_lite_aresetn,
    s_axi_lite_awaddr,
    s_axi_lite_awprot,
    s_axi_lite_awvalid,
    s_axi_lite_awready,
    s_axi_lite_wdata,
    s_axi_lite_wstrb,
    s_axi_lite_wvalid,
    s_axi_lite_wready,
    s_axi_lite_bresp,
    s_axi_lite_bvalid,
    s_axi_lite_bready,
    s_axi_lite_araddr,
    s_axi_lite_arprot,
    s_axi_lite_arvalid,
    s_axi_lite_arready,
    s_axi_lite_rdata,
    s_axi_lite_rresp,
    s_axi_lite_rvalid,
    s_axi_lite_rready);
  input RxByteClkHS;
  input aClkStopstate;
  input aRxClkActiveHS;
  input [7:0]RxDataHSD0;
  input RxSyncHSD0;
  input RxValidHSD0;
  input RxActiveHSD0;
  output aD0Enable;
  input [7:0]RxDataHSD1;
  input RxSyncHSD1;
  input RxValidHSD1;
  input RxActiveHSD1;
  output aD1Enable;
  input [7:0]RxDataHSD2;
  input RxSyncHSD2;
  input RxValidHSD2;
  input RxActiveHSD2;
  output aD2Enable;
  input [7:0]RxDataHSD3;
  input RxSyncHSD3;
  input RxValidHSD3;
  input RxActiveHSD3;
  output aD3Enable;
  output aClkEnable;
  output [39:0]m_axis_video_tdata;
  output m_axis_video_tvalid;
  input m_axis_video_tready;
  output m_axis_video_tlast;
  output [0:0]m_axis_video_tuser;
  input video_aresetn;
  input video_aclk;
  input s_axi_lite_aclk;
  input s_axi_lite_aresetn;
  input [3:0]s_axi_lite_awaddr;
  input [2:0]s_axi_lite_awprot;
  input s_axi_lite_awvalid;
  output s_axi_lite_awready;
  input [31:0]s_axi_lite_wdata;
  input [3:0]s_axi_lite_wstrb;
  input s_axi_lite_wvalid;
  output s_axi_lite_wready;
  output [1:0]s_axi_lite_bresp;
  output s_axi_lite_bvalid;
  input s_axi_lite_bready;
  input [3:0]s_axi_lite_araddr;
  input [2:0]s_axi_lite_arprot;
  input s_axi_lite_arvalid;
  output s_axi_lite_arready;
  output [31:0]s_axi_lite_rdata;
  output [1:0]s_axi_lite_rresp;
  output s_axi_lite_rvalid;
  input s_axi_lite_rready;

  wire \<const0> ;
  wire RxActiveHSD0;
  wire RxActiveHSD1;
  wire RxByteClkHS;
  wire [7:0]RxDataHSD0;
  wire [7:0]RxDataHSD1;
  wire RxSyncHSD0;
  wire RxSyncHSD1;
  wire RxValidHSD0;
  wire RxValidHSD1;
  wire \YesAXILITE.AXI_Lite_Control_n_5 ;
  wire \YesAXILITE.CoreSoftReset_n_0 ;
  wire \YesAXILITE.SyncAsyncClkEnable_n_1 ;
  wire aD1Enable;
  wire aReset;
  wire [39:0]m_axis_video_tdata;
  wire m_axis_video_tlast;
  wire m_axis_video_tready;
  wire [0:0]m_axis_video_tuser;
  wire m_axis_video_tvalid;
  wire s_axi_lite_aclk;
  wire [3:0]s_axi_lite_araddr;
  wire s_axi_lite_aresetn;
  wire s_axi_lite_arready;
  wire s_axi_lite_arvalid;
  wire [3:0]s_axi_lite_awaddr;
  wire s_axi_lite_awready;
  wire s_axi_lite_awvalid;
  wire s_axi_lite_bready;
  wire s_axi_lite_bvalid;
  wire [31:0]s_axi_lite_rdata;
  wire s_axi_lite_rready;
  wire s_axi_lite_rvalid;
  wire [31:0]s_axi_lite_wdata;
  wire s_axi_lite_wready;
  wire [3:0]s_axi_lite_wstrb;
  wire s_axi_lite_wvalid;
  wire vRst_n;
  wire vSoftEnable;
  wire video_aclk;

  assign aClkEnable = aD1Enable;
  assign aD0Enable = aD1Enable;
  assign aD2Enable = \<const0> ;
  assign aD3Enable = \<const0> ;
  assign s_axi_lite_bresp[1] = \<const0> ;
  assign s_axi_lite_bresp[0] = \<const0> ;
  assign s_axi_lite_rresp[1] = \<const0> ;
  assign s_axi_lite_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  system_MIPI_CSI_2_RX_0_0_MIPI_CSI2_Rx MIPI_CSI2_Rx_inst
       (.D(vSoftEnable),
        .I62({RxActiveHSD1,RxSyncHSD1,RxValidHSD1,RxDataHSD1}),
        .RxByteClkHS(RxByteClkHS),
        .aD1Enable(aD1Enable),
        .\aDEnableInt_reg[0]_0 (\YesAXILITE.SyncAsyncClkEnable_n_1 ),
        .iDataIn({RxActiveHSD0,RxSyncHSD0,RxValidHSD0,RxDataHSD0}),
        .m_axis_video_tdata(m_axis_video_tdata),
        .m_axis_video_tlast(m_axis_video_tlast),
        .m_axis_video_tready(m_axis_video_tready),
        .m_axis_video_tuser(m_axis_video_tuser),
        .m_axis_video_tvalid(m_axis_video_tvalid),
        .vRst_n(vRst_n),
        .video_aclk(video_aclk));
  system_MIPI_CSI_2_RX_0_0_MIPI_CSI_2_RX_S_AXI_LITE \YesAXILITE.AXI_Lite_Control 
       (.Q({\YesAXILITE.AXI_Lite_Control_n_5 ,aReset}),
        .axi_arready_reg_0(s_axi_lite_arready),
        .axi_awready_reg_0(s_axi_lite_awready),
        .axi_wready_reg_0(s_axi_lite_wready),
        .s_axi_lite_aclk(s_axi_lite_aclk),
        .s_axi_lite_araddr(s_axi_lite_araddr[3:2]),
        .s_axi_lite_aresetn(s_axi_lite_aresetn),
        .s_axi_lite_arvalid(s_axi_lite_arvalid),
        .s_axi_lite_awaddr(s_axi_lite_awaddr[3:2]),
        .s_axi_lite_awvalid(s_axi_lite_awvalid),
        .s_axi_lite_bready(s_axi_lite_bready),
        .s_axi_lite_bvalid(s_axi_lite_bvalid),
        .s_axi_lite_rdata(s_axi_lite_rdata),
        .s_axi_lite_rready(s_axi_lite_rready),
        .s_axi_lite_rvalid(s_axi_lite_rvalid),
        .s_axi_lite_wdata(s_axi_lite_wdata),
        .s_axi_lite_wstrb(s_axi_lite_wstrb),
        .s_axi_lite_wvalid(s_axi_lite_wvalid));
  system_MIPI_CSI_2_RX_0_0_ResetBridge__parameterized0 \YesAXILITE.CoreSoftReset 
       (.AS(aReset),
        .\oSyncStages_reg[1] (\YesAXILITE.CoreSoftReset_n_0 ),
        .video_aclk(video_aclk));
  system_MIPI_CSI_2_RX_0_0_SyncAsync__parameterized1 \YesAXILITE.SyncAsyncClkEnable 
       (.D(\YesAXILITE.AXI_Lite_Control_n_5 ),
        .\oSyncStages_reg[1]_0 (\YesAXILITE.SyncAsyncClkEnable_n_1 ),
        .out(vSoftEnable),
        .vRst_n(vRst_n),
        .video_aclk(video_aclk));
  FDRE \YesAXILITE.vRst_n_reg 
       (.C(video_aclk),
        .CE(1'b1),
        .D(\YesAXILITE.CoreSoftReset_n_0 ),
        .Q(vRst_n),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "ASYNC_RST" *) 
module system_MIPI_CSI_2_RX_0_0_xpm_cdc_async_rst
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "ASYNC_RST" *) 
module system_MIPI_CSI_2_RX_0_0_xpm_cdc_async_rst__1
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "5" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module system_MIPI_CSI_2_RX_0_0_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [4:0]src_in_bin;
  input dest_clk;
  output [4:0]dest_out_bin;

  wire [4:0]async_path;
  wire [3:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[1] ;
  wire [4:0]dest_out_bin;
  wire [3:0]gray_enc;
  wire src_clk;
  wire [4:0]src_in_bin;

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
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
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
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(\dest_graysync_ff[1] [3]),
        .I4(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
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
        .D(\dest_graysync_ff[1] [4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
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
        .D(src_in_bin[4]),
        .Q(async_path[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "5" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module system_MIPI_CSI_2_RX_0_0_xpm_cdc_gray__2
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [4:0]src_in_bin;
  input dest_clk;
  output [4:0]dest_out_bin;

  wire [4:0]async_path;
  wire [3:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[1] ;
  wire [4:0]dest_out_bin;
  wire [3:0]gray_enc;
  wire src_clk;
  wire [4:0]src_in_bin;

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
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
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
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(\dest_graysync_ff[1] [3]),
        .I4(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
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
        .D(\dest_graysync_ff[1] [4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
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
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
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
        .D(src_in_bin[4]),
        .Q(async_path[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module system_MIPI_CSI_2_RX_0_0_xpm_cdc_single
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
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
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
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module system_MIPI_CSI_2_RX_0_0_xpm_cdc_single__2
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
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
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
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "4" *) (* INIT = "0" *) 
(* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SYNC_RST" *) 
module system_MIPI_CSI_2_RX_0_0_xpm_cdc_sync_rst
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [3:0]syncstages_ff;

  assign dest_rst = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
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
    .INIT(1'b0)) 
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
    .INIT(1'b0)) 
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
    .INIT(1'b0)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module system_MIPI_CSI_2_RX_0_0_xpm_counter_updn
   (S,
    DI,
    \count_value_i_reg[1]_0 ,
    Q,
    \grdc.rd_data_count_i_reg[3] ,
    \count_value_i_reg[0]_0 ,
    rd_en,
    ram_empty_i,
    \count_value_i_reg[0]_1 ,
    wr_clk);
  output [1:0]S;
  output [0:0]DI;
  output [0:0]\count_value_i_reg[1]_0 ;
  input [1:0]Q;
  input [1:0]\grdc.rd_data_count_i_reg[3] ;
  input [1:0]\count_value_i_reg[0]_0 ;
  input rd_en;
  input ram_empty_i;
  input [0:0]\count_value_i_reg[0]_1 ;
  input wr_clk;

  wire [0:0]DI;
  wire [1:0]Q;
  wire [1:0]S;
  wire [0:0]count_value_i;
  wire \count_value_i[0]_i_1_n_0 ;
  wire \count_value_i[1]_i_1_n_0 ;
  wire \count_value_i[1]_i_2_n_0 ;
  wire [1:0]\count_value_i_reg[0]_0 ;
  wire [0:0]\count_value_i_reg[0]_1 ;
  wire [0:0]\count_value_i_reg[1]_0 ;
  wire [1:0]\grdc.rd_data_count_i_reg[3] ;
  wire ram_empty_i;
  wire rd_en;
  wire wr_clk;

  LUT6 #(
    .INIT(64'h000000005A88A655)) 
    \count_value_i[0]_i_1 
       (.I0(count_value_i),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(rd_en),
        .I3(\count_value_i_reg[0]_0 [1]),
        .I4(ram_empty_i),
        .I5(\count_value_i_reg[0]_1 ),
        .O(\count_value_i[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000A8AA)) 
    \count_value_i[1]_i_1 
       (.I0(\count_value_i[1]_i_2_n_0 ),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(\count_value_i_reg[0]_0 [1]),
        .I3(ram_empty_i),
        .I4(\count_value_i_reg[0]_1 ),
        .O(\count_value_i[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFFFF755500008AA)) 
    \count_value_i[1]_i_2 
       (.I0(count_value_i),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(rd_en),
        .I3(\count_value_i_reg[0]_0 [1]),
        .I4(ram_empty_i),
        .I5(\count_value_i_reg[1]_0 ),
        .O(\count_value_i[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\count_value_i[0]_i_1_n_0 ),
        .Q(count_value_i),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\count_value_i[1]_i_1_n_0 ),
        .Q(\count_value_i_reg[1]_0 ),
        .R(1'b0));
  (* HLUTNM = "lutpair0" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \gwdc.wr_data_count_i[3]_i_4 
       (.I0(count_value_i),
        .I1(Q[0]),
        .O(DI));
  LUT4 #(
    .INIT(16'h9669)) 
    \gwdc.wr_data_count_i[3]_i_7 
       (.I0(DI),
        .I1(Q[1]),
        .I2(\count_value_i_reg[1]_0 ),
        .I3(\grdc.rd_data_count_i_reg[3] [1]),
        .O(S[1]));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \gwdc.wr_data_count_i[3]_i_8 
       (.I0(count_value_i),
        .I1(Q[0]),
        .I2(\grdc.rd_data_count_i_reg[3] [0]),
        .O(S[0]));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module system_MIPI_CSI_2_RX_0_0_xpm_counter_updn__parameterized0
   (Q,
    DI,
    S,
    CO,
    \count_value_i_reg[2]_0 ,
    \count_value_i_reg[6]_0 ,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ,
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ,
    \grdc.rd_data_count_i_reg[11] ,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_0 ,
    \grdc.rd_data_count_i_reg[3] ,
    ram_empty_i,
    rd_en,
    \count_value_i_reg[0]_0 ,
    ram_wr_en_i,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ,
    clr_full,
    \count_value_i_reg[11]_0 ,
    wr_clk);
  output [10:0]Q;
  output [0:0]DI;
  output [3:0]S;
  output [0:0]CO;
  output [0:0]\count_value_i_reg[2]_0 ;
  output [3:0]\count_value_i_reg[6]_0 ;
  output \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ;
  output \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ;
  output \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ;
  input [11:0]\grdc.rd_data_count_i_reg[11] ;
  input [10:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_0 ;
  input [0:0]\grdc.rd_data_count_i_reg[3] ;
  input ram_empty_i;
  input rd_en;
  input [1:0]\count_value_i_reg[0]_0 ;
  input ram_wr_en_i;
  input \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ;
  input clr_full;
  input [0:0]\count_value_i_reg[11]_0 ;
  input wr_clk;

  wire [0:0]CO;
  wire [0:0]DI;
  wire \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ;
  wire [10:0]Q;
  wire [3:0]S;
  wire clr_full;
  wire \count_value_i[3]_i_2__0_n_0 ;
  wire [1:0]\count_value_i_reg[0]_0 ;
  wire [0:0]\count_value_i_reg[11]_0 ;
  wire \count_value_i_reg[11]_i_1__0_n_1 ;
  wire \count_value_i_reg[11]_i_1__0_n_2 ;
  wire \count_value_i_reg[11]_i_1__0_n_3 ;
  wire \count_value_i_reg[11]_i_1__0_n_4 ;
  wire \count_value_i_reg[11]_i_1__0_n_5 ;
  wire \count_value_i_reg[11]_i_1__0_n_6 ;
  wire \count_value_i_reg[11]_i_1__0_n_7 ;
  wire [0:0]\count_value_i_reg[2]_0 ;
  wire \count_value_i_reg[3]_i_1__0_n_0 ;
  wire \count_value_i_reg[3]_i_1__0_n_1 ;
  wire \count_value_i_reg[3]_i_1__0_n_2 ;
  wire \count_value_i_reg[3]_i_1__0_n_3 ;
  wire \count_value_i_reg[3]_i_1__0_n_4 ;
  wire \count_value_i_reg[3]_i_1__0_n_5 ;
  wire \count_value_i_reg[3]_i_1__0_n_6 ;
  wire \count_value_i_reg[3]_i_1__0_n_7 ;
  wire [3:0]\count_value_i_reg[6]_0 ;
  wire \count_value_i_reg[7]_i_1__0_n_0 ;
  wire \count_value_i_reg[7]_i_1__0_n_1 ;
  wire \count_value_i_reg[7]_i_1__0_n_2 ;
  wire \count_value_i_reg[7]_i_1__0_n_3 ;
  wire \count_value_i_reg[7]_i_1__0_n_4 ;
  wire \count_value_i_reg[7]_i_1__0_n_5 ;
  wire \count_value_i_reg[7]_i_1__0_n_6 ;
  wire \count_value_i_reg[7]_i_1__0_n_7 ;
  wire \count_value_i_reg_n_0_[11] ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_10_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_11_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_12_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_7_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_8_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_9_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_3_n_1 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_3_n_2 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_3_n_3 ;
  wire [10:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_n_1 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_n_2 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_n_3 ;
  wire going_full1;
  wire [11:0]\grdc.rd_data_count_i_reg[11] ;
  wire [0:0]\grdc.rd_data_count_i_reg[3] ;
  wire ram_empty_i;
  wire ram_wr_en_i;
  wire rd_en;
  wire wr_clk;
  wire [3:3]\NLW_count_value_i_reg[11]_i_1__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_O_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hABAA5455)) 
    \count_value_i[3]_i_2__0 
       (.I0(ram_empty_i),
        .I1(rd_en),
        .I2(\count_value_i_reg[0]_0 [0]),
        .I3(\count_value_i_reg[0]_0 [1]),
        .I4(Q[0]),
        .O(\count_value_i[3]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i_reg[3]_i_1__0_n_7 ),
        .Q(Q[0]),
        .R(\count_value_i_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[10] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i_reg[11]_i_1__0_n_5 ),
        .Q(Q[10]),
        .R(\count_value_i_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[11] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i_reg[11]_i_1__0_n_4 ),
        .Q(\count_value_i_reg_n_0_[11] ),
        .R(\count_value_i_reg[11]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \count_value_i_reg[11]_i_1__0 
       (.CI(\count_value_i_reg[7]_i_1__0_n_0 ),
        .CO({\NLW_count_value_i_reg[11]_i_1__0_CO_UNCONNECTED [3],\count_value_i_reg[11]_i_1__0_n_1 ,\count_value_i_reg[11]_i_1__0_n_2 ,\count_value_i_reg[11]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_value_i_reg[11]_i_1__0_n_4 ,\count_value_i_reg[11]_i_1__0_n_5 ,\count_value_i_reg[11]_i_1__0_n_6 ,\count_value_i_reg[11]_i_1__0_n_7 }),
        .S({\count_value_i_reg_n_0_[11] ,Q[10:8]}));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i_reg[3]_i_1__0_n_6 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i_reg[3]_i_1__0_n_5 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i_reg[3]_i_1__0_n_4 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[11]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \count_value_i_reg[3]_i_1__0 
       (.CI(1'b0),
        .CO({\count_value_i_reg[3]_i_1__0_n_0 ,\count_value_i_reg[3]_i_1__0_n_1 ,\count_value_i_reg[3]_i_1__0_n_2 ,\count_value_i_reg[3]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,Q[0]}),
        .O({\count_value_i_reg[3]_i_1__0_n_4 ,\count_value_i_reg[3]_i_1__0_n_5 ,\count_value_i_reg[3]_i_1__0_n_6 ,\count_value_i_reg[3]_i_1__0_n_7 }),
        .S({Q[3:1],\count_value_i[3]_i_2__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i_reg[7]_i_1__0_n_7 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i_reg[7]_i_1__0_n_6 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i_reg[7]_i_1__0_n_5 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i_reg[7]_i_1__0_n_4 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[11]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \count_value_i_reg[7]_i_1__0 
       (.CI(\count_value_i_reg[3]_i_1__0_n_0 ),
        .CO({\count_value_i_reg[7]_i_1__0_n_0 ,\count_value_i_reg[7]_i_1__0_n_1 ,\count_value_i_reg[7]_i_1__0_n_2 ,\count_value_i_reg[7]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_value_i_reg[7]_i_1__0_n_4 ,\count_value_i_reg[7]_i_1__0_n_5 ,\count_value_i_reg[7]_i_1__0_n_6 ,\count_value_i_reg[7]_i_1__0_n_7 }),
        .S(Q[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i_reg[11]_i_1__0_n_7 ),
        .Q(Q[8]),
        .R(\count_value_i_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i_reg[11]_i_1__0_n_6 ),
        .Q(Q[9]),
        .R(\count_value_i_reg[11]_0 ));
  LUT6 #(
    .INIT(64'h000000000FFF0088)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_1 
       (.I0(ram_wr_en_i),
        .I1(going_full1),
        .I2(CO),
        .I3(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ),
        .I5(clr_full),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ));
  LUT6 #(
    .INIT(64'hFABAFBBBFBBBFBBB)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_1 
       (.I0(clr_full),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ),
        .I2(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .I3(CO),
        .I4(going_full1),
        .I5(ram_wr_en_i),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_10 
       (.I0(Q[6]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_0 [6]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_0 [8]),
        .I3(Q[8]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_0 [7]),
        .I5(Q[7]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_11 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_0 [3]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_0 [5]),
        .I3(Q[5]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_0 [4]),
        .I5(Q[4]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_12 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_0 [0]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_0 [2]),
        .I3(Q[2]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_0 [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5 
       (.I0(Q[9]),
        .I1(\grdc.rd_data_count_i_reg[11] [9]),
        .I2(Q[10]),
        .I3(\grdc.rd_data_count_i_reg[11] [10]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6 
       (.I0(Q[6]),
        .I1(\grdc.rd_data_count_i_reg[11] [6]),
        .I2(\grdc.rd_data_count_i_reg[11] [8]),
        .I3(Q[8]),
        .I4(\grdc.rd_data_count_i_reg[11] [7]),
        .I5(Q[7]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_7 
       (.I0(Q[3]),
        .I1(\grdc.rd_data_count_i_reg[11] [3]),
        .I2(\grdc.rd_data_count_i_reg[11] [5]),
        .I3(Q[5]),
        .I4(\grdc.rd_data_count_i_reg[11] [4]),
        .I5(Q[4]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_8 
       (.I0(Q[0]),
        .I1(\grdc.rd_data_count_i_reg[11] [0]),
        .I2(\grdc.rd_data_count_i_reg[11] [2]),
        .I3(Q[2]),
        .I4(\grdc.rd_data_count_i_reg[11] [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_9 
       (.I0(Q[9]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_0 [9]),
        .I2(Q[10]),
        .I3(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_0 [10]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_9_n_0 ));
  CARRY4 \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_3 
       (.CI(1'b0),
        .CO({CO,\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_3_n_1 ,\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_3_n_2 ,\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_3_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_3_O_UNCONNECTED [3:0]),
        .S({\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5_n_0 ,\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6_n_0 ,\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_7_n_0 ,\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_8_n_0 }));
  CARRY4 \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4 
       (.CI(1'b0),
        .CO({going_full1,\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_n_1 ,\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_n_2 ,\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_O_UNCONNECTED [3:0]),
        .S({\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_9_n_0 ,\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_10_n_0 ,\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_11_n_0 ,\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_12_n_0 }));
  LUT4 #(
    .INIT(16'h00FD)) 
    \gen_sdpram.xpm_memory_base_inst_i_2 
       (.I0(\count_value_i_reg[0]_0 [1]),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(rd_en),
        .I3(ram_empty_i),
        .O(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gwdc.wr_data_count_i[11]_i_5 
       (.I0(Q[10]),
        .I1(\grdc.rd_data_count_i_reg[11] [10]),
        .I2(\count_value_i_reg_n_0_[11] ),
        .I3(\grdc.rd_data_count_i_reg[11] [11]),
        .O(S[3]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gwdc.wr_data_count_i[11]_i_6 
       (.I0(Q[9]),
        .I1(\grdc.rd_data_count_i_reg[11] [9]),
        .I2(Q[10]),
        .I3(\grdc.rd_data_count_i_reg[11] [10]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gwdc.wr_data_count_i[11]_i_7 
       (.I0(Q[8]),
        .I1(\grdc.rd_data_count_i_reg[11] [8]),
        .I2(Q[9]),
        .I3(\grdc.rd_data_count_i_reg[11] [9]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gwdc.wr_data_count_i[11]_i_8 
       (.I0(Q[7]),
        .I1(\grdc.rd_data_count_i_reg[11] [7]),
        .I2(Q[8]),
        .I3(\grdc.rd_data_count_i_reg[11] [8]),
        .O(S[0]));
  LUT3 #(
    .INIT(8'hD4)) 
    \gwdc.wr_data_count_i[3]_i_3 
       (.I0(Q[1]),
        .I1(\grdc.rd_data_count_i_reg[3] ),
        .I2(\grdc.rd_data_count_i_reg[11] [1]),
        .O(DI));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gwdc.wr_data_count_i[3]_i_5 
       (.I0(Q[2]),
        .I1(\grdc.rd_data_count_i_reg[11] [2]),
        .I2(Q[3]),
        .I3(\grdc.rd_data_count_i_reg[11] [3]),
        .O(\count_value_i_reg[2]_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gwdc.wr_data_count_i[7]_i_6 
       (.I0(Q[6]),
        .I1(\grdc.rd_data_count_i_reg[11] [6]),
        .I2(Q[7]),
        .I3(\grdc.rd_data_count_i_reg[11] [7]),
        .O(\count_value_i_reg[6]_0 [3]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gwdc.wr_data_count_i[7]_i_7 
       (.I0(Q[5]),
        .I1(\grdc.rd_data_count_i_reg[11] [5]),
        .I2(Q[6]),
        .I3(\grdc.rd_data_count_i_reg[11] [6]),
        .O(\count_value_i_reg[6]_0 [2]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gwdc.wr_data_count_i[7]_i_8 
       (.I0(Q[4]),
        .I1(\grdc.rd_data_count_i_reg[11] [4]),
        .I2(Q[5]),
        .I3(\grdc.rd_data_count_i_reg[11] [5]),
        .O(\count_value_i_reg[6]_0 [1]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gwdc.wr_data_count_i[7]_i_9 
       (.I0(Q[3]),
        .I1(\grdc.rd_data_count_i_reg[11] [3]),
        .I2(Q[4]),
        .I3(\grdc.rd_data_count_i_reg[11] [4]),
        .O(\count_value_i_reg[6]_0 [0]));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module system_MIPI_CSI_2_RX_0_0_xpm_counter_updn__parameterized0_7
   (ram_empty_i0,
    Q,
    D,
    \gen_pntr_flags_cc.ram_empty_i_reg ,
    CO,
    E,
    ram_empty_i,
    \gen_pntr_flags_cc.ram_empty_i_reg_i_2_0 ,
    S,
    DI,
    \grdc.rd_data_count_i_reg[3] ,
    \grdc.rd_data_count_i_reg[7] ,
    \grdc.rd_data_count_i_reg[11] ,
    \grdc.rd_data_count_i_reg[3]_0 ,
    \grdc.rd_data_count_i_reg[11]_0 ,
    \count_value_i_reg[0]_0 ,
    wr_clk);
  output ram_empty_i0;
  output [11:0]Q;
  output [11:0]D;
  input \gen_pntr_flags_cc.ram_empty_i_reg ;
  input [0:0]CO;
  input [0:0]E;
  input ram_empty_i;
  input [10:0]\gen_pntr_flags_cc.ram_empty_i_reg_i_2_0 ;
  input [0:0]S;
  input [1:0]DI;
  input [2:0]\grdc.rd_data_count_i_reg[3] ;
  input [3:0]\grdc.rd_data_count_i_reg[7] ;
  input [3:0]\grdc.rd_data_count_i_reg[11] ;
  input [0:0]\grdc.rd_data_count_i_reg[3]_0 ;
  input [8:0]\grdc.rd_data_count_i_reg[11]_0 ;
  input [0:0]\count_value_i_reg[0]_0 ;
  input wr_clk;

  wire [0:0]CO;
  wire [11:0]D;
  wire [1:0]DI;
  wire [0:0]E;
  wire [11:0]Q;
  wire [0:0]S;
  wire [0:0]\count_value_i_reg[0]_0 ;
  wire \count_value_i_reg[11]_i_1_n_1 ;
  wire \count_value_i_reg[11]_i_1_n_2 ;
  wire \count_value_i_reg[11]_i_1_n_3 ;
  wire \count_value_i_reg[11]_i_1_n_4 ;
  wire \count_value_i_reg[11]_i_1_n_5 ;
  wire \count_value_i_reg[11]_i_1_n_6 ;
  wire \count_value_i_reg[11]_i_1_n_7 ;
  wire \count_value_i_reg[3]_i_1_n_0 ;
  wire \count_value_i_reg[3]_i_1_n_1 ;
  wire \count_value_i_reg[3]_i_1_n_2 ;
  wire \count_value_i_reg[3]_i_1_n_3 ;
  wire \count_value_i_reg[3]_i_1_n_4 ;
  wire \count_value_i_reg[3]_i_1_n_5 ;
  wire \count_value_i_reg[3]_i_1_n_6 ;
  wire \count_value_i_reg[3]_i_1_n_7 ;
  wire \count_value_i_reg[7]_i_1_n_0 ;
  wire \count_value_i_reg[7]_i_1_n_1 ;
  wire \count_value_i_reg[7]_i_1_n_2 ;
  wire \count_value_i_reg[7]_i_1_n_3 ;
  wire \count_value_i_reg[7]_i_1_n_4 ;
  wire \count_value_i_reg[7]_i_1_n_5 ;
  wire \count_value_i_reg[7]_i_1_n_6 ;
  wire \count_value_i_reg[7]_i_1_n_7 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_4_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_5_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_6_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_reg ;
  wire [10:0]\gen_pntr_flags_cc.ram_empty_i_reg_i_2_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_reg_i_2_n_1 ;
  wire \gen_pntr_flags_cc.ram_empty_i_reg_i_2_n_2 ;
  wire \gen_pntr_flags_cc.ram_empty_i_reg_i_2_n_3 ;
  wire going_empty1;
  wire [3:0]\grdc.rd_data_count_i_reg[11] ;
  wire [8:0]\grdc.rd_data_count_i_reg[11]_0 ;
  wire [2:0]\grdc.rd_data_count_i_reg[3] ;
  wire [0:0]\grdc.rd_data_count_i_reg[3]_0 ;
  wire [3:0]\grdc.rd_data_count_i_reg[7] ;
  wire \gwdc.wr_data_count_i[11]_i_2_n_0 ;
  wire \gwdc.wr_data_count_i[11]_i_3_n_0 ;
  wire \gwdc.wr_data_count_i[11]_i_4_n_0 ;
  wire \gwdc.wr_data_count_i[3]_i_2_n_0 ;
  wire \gwdc.wr_data_count_i[3]_i_6_n_0 ;
  wire \gwdc.wr_data_count_i[7]_i_2_n_0 ;
  wire \gwdc.wr_data_count_i[7]_i_3_n_0 ;
  wire \gwdc.wr_data_count_i[7]_i_4_n_0 ;
  wire \gwdc.wr_data_count_i[7]_i_5_n_0 ;
  wire \gwdc.wr_data_count_i_reg[11]_i_1_n_1 ;
  wire \gwdc.wr_data_count_i_reg[11]_i_1_n_2 ;
  wire \gwdc.wr_data_count_i_reg[11]_i_1_n_3 ;
  wire \gwdc.wr_data_count_i_reg[3]_i_1_n_0 ;
  wire \gwdc.wr_data_count_i_reg[3]_i_1_n_1 ;
  wire \gwdc.wr_data_count_i_reg[3]_i_1_n_2 ;
  wire \gwdc.wr_data_count_i_reg[3]_i_1_n_3 ;
  wire \gwdc.wr_data_count_i_reg[7]_i_1_n_0 ;
  wire \gwdc.wr_data_count_i_reg[7]_i_1_n_1 ;
  wire \gwdc.wr_data_count_i_reg[7]_i_1_n_2 ;
  wire \gwdc.wr_data_count_i_reg[7]_i_1_n_3 ;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire wr_clk;
  wire [3:3]\NLW_count_value_i_reg[11]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_gen_pntr_flags_cc.ram_empty_i_reg_i_2_O_UNCONNECTED ;
  wire [3:3]\NLW_gwdc.wr_data_count_i_reg[11]_i_1_CO_UNCONNECTED ;

  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i_reg[3]_i_1_n_7 ),
        .Q(Q[0]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[10] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i_reg[11]_i_1_n_5 ),
        .Q(Q[10]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[11] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i_reg[11]_i_1_n_4 ),
        .Q(Q[11]),
        .R(\count_value_i_reg[0]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \count_value_i_reg[11]_i_1 
       (.CI(\count_value_i_reg[7]_i_1_n_0 ),
        .CO({\NLW_count_value_i_reg[11]_i_1_CO_UNCONNECTED [3],\count_value_i_reg[11]_i_1_n_1 ,\count_value_i_reg[11]_i_1_n_2 ,\count_value_i_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_value_i_reg[11]_i_1_n_4 ,\count_value_i_reg[11]_i_1_n_5 ,\count_value_i_reg[11]_i_1_n_6 ,\count_value_i_reg[11]_i_1_n_7 }),
        .S(Q[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i_reg[3]_i_1_n_6 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i_reg[3]_i_1_n_5 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i_reg[3]_i_1_n_4 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[0]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \count_value_i_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\count_value_i_reg[3]_i_1_n_0 ,\count_value_i_reg[3]_i_1_n_1 ,\count_value_i_reg[3]_i_1_n_2 ,\count_value_i_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,Q[0]}),
        .O({\count_value_i_reg[3]_i_1_n_4 ,\count_value_i_reg[3]_i_1_n_5 ,\count_value_i_reg[3]_i_1_n_6 ,\count_value_i_reg[3]_i_1_n_7 }),
        .S({Q[3:1],S}));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i_reg[7]_i_1_n_7 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i_reg[7]_i_1_n_6 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i_reg[7]_i_1_n_5 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i_reg[7]_i_1_n_4 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[0]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \count_value_i_reg[7]_i_1 
       (.CI(\count_value_i_reg[3]_i_1_n_0 ),
        .CO({\count_value_i_reg[7]_i_1_n_0 ,\count_value_i_reg[7]_i_1_n_1 ,\count_value_i_reg[7]_i_1_n_2 ,\count_value_i_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_value_i_reg[7]_i_1_n_4 ,\count_value_i_reg[7]_i_1_n_5 ,\count_value_i_reg[7]_i_1_n_6 ,\count_value_i_reg[7]_i_1_n_7 }),
        .S(Q[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i_reg[11]_i_1_n_7 ),
        .Q(Q[8]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i_reg[11]_i_1_n_6 ),
        .Q(Q[9]),
        .R(\count_value_i_reg[0]_0 ));
  LUT5 #(
    .INIT(32'h0FFF0088)) 
    \gen_pntr_flags_cc.ram_empty_i_i_1 
       (.I0(\gen_pntr_flags_cc.ram_empty_i_reg ),
        .I1(going_empty1),
        .I2(CO),
        .I3(E),
        .I4(ram_empty_i),
        .O(ram_empty_i0));
  LUT4 #(
    .INIT(16'h9009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_3 
       (.I0(Q[9]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_reg_i_2_0 [9]),
        .I2(Q[10]),
        .I3(\gen_pntr_flags_cc.ram_empty_i_reg_i_2_0 [10]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_4 
       (.I0(Q[6]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_reg_i_2_0 [6]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_reg_i_2_0 [8]),
        .I3(Q[8]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_reg_i_2_0 [7]),
        .I5(Q[7]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_5 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_reg_i_2_0 [3]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_reg_i_2_0 [5]),
        .I3(Q[5]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_reg_i_2_0 [4]),
        .I5(Q[4]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_6 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_reg_i_2_0 [0]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_reg_i_2_0 [2]),
        .I3(Q[2]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_reg_i_2_0 [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_6_n_0 ));
  CARRY4 \gen_pntr_flags_cc.ram_empty_i_reg_i_2 
       (.CI(1'b0),
        .CO({going_empty1,\gen_pntr_flags_cc.ram_empty_i_reg_i_2_n_1 ,\gen_pntr_flags_cc.ram_empty_i_reg_i_2_n_2 ,\gen_pntr_flags_cc.ram_empty_i_reg_i_2_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gen_pntr_flags_cc.ram_empty_i_reg_i_2_O_UNCONNECTED [3:0]),
        .S({\gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ,\gen_pntr_flags_cc.ram_empty_i_i_4_n_0 ,\gen_pntr_flags_cc.ram_empty_i_i_5_n_0 ,\gen_pntr_flags_cc.ram_empty_i_i_6_n_0 }));
  LUT2 #(
    .INIT(4'h2)) 
    \gwdc.wr_data_count_i[11]_i_2 
       (.I0(Q[9]),
        .I1(\grdc.rd_data_count_i_reg[11]_0 [8]),
        .O(\gwdc.wr_data_count_i[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gwdc.wr_data_count_i[11]_i_3 
       (.I0(Q[8]),
        .I1(\grdc.rd_data_count_i_reg[11]_0 [7]),
        .O(\gwdc.wr_data_count_i[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gwdc.wr_data_count_i[11]_i_4 
       (.I0(Q[7]),
        .I1(\grdc.rd_data_count_i_reg[11]_0 [6]),
        .O(\gwdc.wr_data_count_i[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gwdc.wr_data_count_i[3]_i_2 
       (.I0(Q[2]),
        .I1(\grdc.rd_data_count_i_reg[11]_0 [1]),
        .O(\gwdc.wr_data_count_i[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h718E8E71)) 
    \gwdc.wr_data_count_i[3]_i_6 
       (.I0(Q[1]),
        .I1(\grdc.rd_data_count_i_reg[3]_0 ),
        .I2(\grdc.rd_data_count_i_reg[11]_0 [0]),
        .I3(\grdc.rd_data_count_i_reg[11]_0 [1]),
        .I4(Q[2]),
        .O(\gwdc.wr_data_count_i[3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gwdc.wr_data_count_i[7]_i_2 
       (.I0(Q[6]),
        .I1(\grdc.rd_data_count_i_reg[11]_0 [5]),
        .O(\gwdc.wr_data_count_i[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gwdc.wr_data_count_i[7]_i_3 
       (.I0(Q[5]),
        .I1(\grdc.rd_data_count_i_reg[11]_0 [4]),
        .O(\gwdc.wr_data_count_i[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gwdc.wr_data_count_i[7]_i_4 
       (.I0(Q[4]),
        .I1(\grdc.rd_data_count_i_reg[11]_0 [3]),
        .O(\gwdc.wr_data_count_i[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gwdc.wr_data_count_i[7]_i_5 
       (.I0(Q[3]),
        .I1(\grdc.rd_data_count_i_reg[11]_0 [2]),
        .O(\gwdc.wr_data_count_i[7]_i_5_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gwdc.wr_data_count_i_reg[11]_i_1 
       (.CI(\gwdc.wr_data_count_i_reg[7]_i_1_n_0 ),
        .CO({\NLW_gwdc.wr_data_count_i_reg[11]_i_1_CO_UNCONNECTED [3],\gwdc.wr_data_count_i_reg[11]_i_1_n_1 ,\gwdc.wr_data_count_i_reg[11]_i_1_n_2 ,\gwdc.wr_data_count_i_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\gwdc.wr_data_count_i[11]_i_2_n_0 ,\gwdc.wr_data_count_i[11]_i_3_n_0 ,\gwdc.wr_data_count_i[11]_i_4_n_0 }),
        .O(D[11:8]),
        .S(\grdc.rd_data_count_i_reg[11] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gwdc.wr_data_count_i_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\gwdc.wr_data_count_i_reg[3]_i_1_n_0 ,\gwdc.wr_data_count_i_reg[3]_i_1_n_1 ,\gwdc.wr_data_count_i_reg[3]_i_1_n_2 ,\gwdc.wr_data_count_i_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\gwdc.wr_data_count_i[3]_i_2_n_0 ,DI,Q[0]}),
        .O(D[3:0]),
        .S({\grdc.rd_data_count_i_reg[3] [2],\gwdc.wr_data_count_i[3]_i_6_n_0 ,\grdc.rd_data_count_i_reg[3] [1:0]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gwdc.wr_data_count_i_reg[7]_i_1 
       (.CI(\gwdc.wr_data_count_i_reg[3]_i_1_n_0 ),
        .CO({\gwdc.wr_data_count_i_reg[7]_i_1_n_0 ,\gwdc.wr_data_count_i_reg[7]_i_1_n_1 ,\gwdc.wr_data_count_i_reg[7]_i_1_n_2 ,\gwdc.wr_data_count_i_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\gwdc.wr_data_count_i[7]_i_2_n_0 ,\gwdc.wr_data_count_i[7]_i_3_n_0 ,\gwdc.wr_data_count_i[7]_i_4_n_0 ,\gwdc.wr_data_count_i[7]_i_5_n_0 }),
        .O(D[7:4]),
        .S(\grdc.rd_data_count_i_reg[7] ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module system_MIPI_CSI_2_RX_0_0_xpm_counter_updn__parameterized1
   (Q,
    ram_empty_i,
    rd_en,
    \count_value_i_reg[3]_0 ,
    \count_value_i_reg[1]_0 ,
    E,
    wr_clk);
  output [10:0]Q;
  input ram_empty_i;
  input rd_en;
  input [1:0]\count_value_i_reg[3]_0 ;
  input [0:0]\count_value_i_reg[1]_0 ;
  input [0:0]E;
  input wr_clk;

  wire [0:0]E;
  wire [10:0]Q;
  wire \count_value_i[3]_i_2__1_n_0 ;
  wire \count_value_i_reg[10]_i_1_n_2 ;
  wire \count_value_i_reg[10]_i_1_n_3 ;
  wire \count_value_i_reg[10]_i_1_n_5 ;
  wire \count_value_i_reg[10]_i_1_n_6 ;
  wire \count_value_i_reg[10]_i_1_n_7 ;
  wire [0:0]\count_value_i_reg[1]_0 ;
  wire [1:0]\count_value_i_reg[3]_0 ;
  wire \count_value_i_reg[3]_i_1__1_n_0 ;
  wire \count_value_i_reg[3]_i_1__1_n_1 ;
  wire \count_value_i_reg[3]_i_1__1_n_2 ;
  wire \count_value_i_reg[3]_i_1__1_n_3 ;
  wire \count_value_i_reg[3]_i_1__1_n_4 ;
  wire \count_value_i_reg[3]_i_1__1_n_5 ;
  wire \count_value_i_reg[3]_i_1__1_n_6 ;
  wire \count_value_i_reg[3]_i_1__1_n_7 ;
  wire \count_value_i_reg[7]_i_1__1_n_0 ;
  wire \count_value_i_reg[7]_i_1__1_n_1 ;
  wire \count_value_i_reg[7]_i_1__1_n_2 ;
  wire \count_value_i_reg[7]_i_1__1_n_3 ;
  wire \count_value_i_reg[7]_i_1__1_n_4 ;
  wire \count_value_i_reg[7]_i_1__1_n_5 ;
  wire \count_value_i_reg[7]_i_1__1_n_6 ;
  wire \count_value_i_reg[7]_i_1__1_n_7 ;
  wire ram_empty_i;
  wire rd_en;
  wire wr_clk;
  wire [3:2]\NLW_count_value_i_reg[10]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_count_value_i_reg[10]_i_1_O_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hABAA5455)) 
    \count_value_i[3]_i_2__1 
       (.I0(ram_empty_i),
        .I1(rd_en),
        .I2(\count_value_i_reg[3]_0 [0]),
        .I3(\count_value_i_reg[3]_0 [1]),
        .I4(Q[0]),
        .O(\count_value_i[3]_i_2__1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i_reg[3]_i_1__1_n_7 ),
        .Q(Q[0]),
        .S(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[10] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i_reg[10]_i_1_n_5 ),
        .Q(Q[10]),
        .R(\count_value_i_reg[1]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \count_value_i_reg[10]_i_1 
       (.CI(\count_value_i_reg[7]_i_1__1_n_0 ),
        .CO({\NLW_count_value_i_reg[10]_i_1_CO_UNCONNECTED [3:2],\count_value_i_reg[10]_i_1_n_2 ,\count_value_i_reg[10]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_value_i_reg[10]_i_1_O_UNCONNECTED [3],\count_value_i_reg[10]_i_1_n_5 ,\count_value_i_reg[10]_i_1_n_6 ,\count_value_i_reg[10]_i_1_n_7 }),
        .S({1'b0,Q[10:8]}));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i_reg[3]_i_1__1_n_6 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i_reg[3]_i_1__1_n_5 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i_reg[3]_i_1__1_n_4 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[1]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \count_value_i_reg[3]_i_1__1 
       (.CI(1'b0),
        .CO({\count_value_i_reg[3]_i_1__1_n_0 ,\count_value_i_reg[3]_i_1__1_n_1 ,\count_value_i_reg[3]_i_1__1_n_2 ,\count_value_i_reg[3]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,Q[0]}),
        .O({\count_value_i_reg[3]_i_1__1_n_4 ,\count_value_i_reg[3]_i_1__1_n_5 ,\count_value_i_reg[3]_i_1__1_n_6 ,\count_value_i_reg[3]_i_1__1_n_7 }),
        .S({Q[3:1],\count_value_i[3]_i_2__1_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i_reg[7]_i_1__1_n_7 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i_reg[7]_i_1__1_n_6 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i_reg[7]_i_1__1_n_5 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i_reg[7]_i_1__1_n_4 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[1]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \count_value_i_reg[7]_i_1__1 
       (.CI(\count_value_i_reg[3]_i_1__1_n_0 ),
        .CO({\count_value_i_reg[7]_i_1__1_n_0 ,\count_value_i_reg[7]_i_1__1_n_1 ,\count_value_i_reg[7]_i_1__1_n_2 ,\count_value_i_reg[7]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_value_i_reg[7]_i_1__1_n_4 ,\count_value_i_reg[7]_i_1__1_n_5 ,\count_value_i_reg[7]_i_1__1_n_6 ,\count_value_i_reg[7]_i_1__1_n_7 }),
        .S(Q[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i_reg[10]_i_1_n_7 ),
        .Q(Q[8]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i_reg[10]_i_1_n_6 ),
        .Q(Q[9]),
        .R(\count_value_i_reg[1]_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module system_MIPI_CSI_2_RX_0_0_xpm_counter_updn__parameterized1_8
   (Q,
    \count_value_i_reg[3]_0 ,
    \count_value_i_reg[1]_0 ,
    E,
    wr_clk);
  output [10:0]Q;
  input [0:0]\count_value_i_reg[3]_0 ;
  input [0:0]\count_value_i_reg[1]_0 ;
  input [0:0]E;
  input wr_clk;

  wire [0:0]E;
  wire [10:0]Q;
  wire \count_value_i_reg[10]_i_1__0_n_2 ;
  wire \count_value_i_reg[10]_i_1__0_n_3 ;
  wire \count_value_i_reg[10]_i_1__0_n_5 ;
  wire \count_value_i_reg[10]_i_1__0_n_6 ;
  wire \count_value_i_reg[10]_i_1__0_n_7 ;
  wire [0:0]\count_value_i_reg[1]_0 ;
  wire [0:0]\count_value_i_reg[3]_0 ;
  wire \count_value_i_reg[3]_i_1__2_n_0 ;
  wire \count_value_i_reg[3]_i_1__2_n_1 ;
  wire \count_value_i_reg[3]_i_1__2_n_2 ;
  wire \count_value_i_reg[3]_i_1__2_n_3 ;
  wire \count_value_i_reg[3]_i_1__2_n_4 ;
  wire \count_value_i_reg[3]_i_1__2_n_5 ;
  wire \count_value_i_reg[3]_i_1__2_n_6 ;
  wire \count_value_i_reg[3]_i_1__2_n_7 ;
  wire \count_value_i_reg[7]_i_1__2_n_0 ;
  wire \count_value_i_reg[7]_i_1__2_n_1 ;
  wire \count_value_i_reg[7]_i_1__2_n_2 ;
  wire \count_value_i_reg[7]_i_1__2_n_3 ;
  wire \count_value_i_reg[7]_i_1__2_n_4 ;
  wire \count_value_i_reg[7]_i_1__2_n_5 ;
  wire \count_value_i_reg[7]_i_1__2_n_6 ;
  wire \count_value_i_reg[7]_i_1__2_n_7 ;
  wire wr_clk;
  wire [3:2]\NLW_count_value_i_reg[10]_i_1__0_CO_UNCONNECTED ;
  wire [3:3]\NLW_count_value_i_reg[10]_i_1__0_O_UNCONNECTED ;

  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i_reg[3]_i_1__2_n_7 ),
        .Q(Q[0]),
        .S(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[10] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i_reg[10]_i_1__0_n_5 ),
        .Q(Q[10]),
        .R(\count_value_i_reg[1]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \count_value_i_reg[10]_i_1__0 
       (.CI(\count_value_i_reg[7]_i_1__2_n_0 ),
        .CO({\NLW_count_value_i_reg[10]_i_1__0_CO_UNCONNECTED [3:2],\count_value_i_reg[10]_i_1__0_n_2 ,\count_value_i_reg[10]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_value_i_reg[10]_i_1__0_O_UNCONNECTED [3],\count_value_i_reg[10]_i_1__0_n_5 ,\count_value_i_reg[10]_i_1__0_n_6 ,\count_value_i_reg[10]_i_1__0_n_7 }),
        .S({1'b0,Q[10:8]}));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i_reg[3]_i_1__2_n_6 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i_reg[3]_i_1__2_n_5 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i_reg[3]_i_1__2_n_4 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[1]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \count_value_i_reg[3]_i_1__2 
       (.CI(1'b0),
        .CO({\count_value_i_reg[3]_i_1__2_n_0 ,\count_value_i_reg[3]_i_1__2_n_1 ,\count_value_i_reg[3]_i_1__2_n_2 ,\count_value_i_reg[3]_i_1__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,Q[0]}),
        .O({\count_value_i_reg[3]_i_1__2_n_4 ,\count_value_i_reg[3]_i_1__2_n_5 ,\count_value_i_reg[3]_i_1__2_n_6 ,\count_value_i_reg[3]_i_1__2_n_7 }),
        .S({Q[3:1],\count_value_i_reg[3]_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i_reg[7]_i_1__2_n_7 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i_reg[7]_i_1__2_n_6 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i_reg[7]_i_1__2_n_5 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i_reg[7]_i_1__2_n_4 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[1]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \count_value_i_reg[7]_i_1__2 
       (.CI(\count_value_i_reg[3]_i_1__2_n_0 ),
        .CO({\count_value_i_reg[7]_i_1__2_n_0 ,\count_value_i_reg[7]_i_1__2_n_1 ,\count_value_i_reg[7]_i_1__2_n_2 ,\count_value_i_reg[7]_i_1__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_value_i_reg[7]_i_1__2_n_4 ,\count_value_i_reg[7]_i_1__2_n_5 ,\count_value_i_reg[7]_i_1__2_n_6 ,\count_value_i_reg[7]_i_1__2_n_7 }),
        .S(Q[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i_reg[10]_i_1__0_n_7 ),
        .Q(Q[8]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i_reg[10]_i_1__0_n_6 ),
        .Q(Q[9]),
        .R(\count_value_i_reg[1]_0 ));
endmodule

(* AXIS_DATA_WIDTH = "54" *) (* AXIS_FINAL_DATA_WIDTH = "54" *) (* CASCADE_HEIGHT = "0" *) 
(* CDC_SYNC_STAGES = "3" *) (* CLOCKING_MODE = "common_clock" *) (* ECC_MODE = "no_ecc" *) 
(* EN_ADV_FEATURE_AXIS = "16'b0001010000000100" *) (* EN_ADV_FEATURE_AXIS_INT = "16'b0001010000000100" *) (* EN_ALMOST_EMPTY_INT = "1'b0" *) 
(* EN_ALMOST_FULL_INT = "1'b0" *) (* EN_DATA_VALID_INT = "1'b1" *) (* FIFO_DEPTH = "2048" *) 
(* FIFO_MEMORY_TYPE = "auto" *) (* LOG_DEPTH_AXIS = "11" *) (* ORIG_REF_NAME = "xpm_fifo_axis" *) 
(* PACKET_FIFO = "false" *) (* PKT_SIZE_LT8 = "1'b0" *) (* PROG_EMPTY_THRESH = "5" *) 
(* PROG_FULL_THRESH = "11" *) (* P_COMMON_CLOCK = "1" *) (* P_ECC_MODE = "0" *) 
(* P_FIFO_MEMORY_TYPE = "0" *) (* P_PKT_MODE = "0" *) (* RD_DATA_COUNT_WIDTH = "12" *) 
(* RELATED_CLOCKS = "0" *) (* SIM_ASSERT_CHK = "0" *) (* TDATA_OFFSET = "40" *) 
(* TDATA_WIDTH = "40" *) (* TDEST_OFFSET = "52" *) (* TDEST_WIDTH = "1" *) 
(* TID_OFFSET = "51" *) (* TID_WIDTH = "1" *) (* TKEEP_OFFSET = "50" *) 
(* TSTRB_OFFSET = "45" *) (* TUSER_MAX_WIDTH = "4043" *) (* TUSER_OFFSET = "53" *) 
(* TUSER_WIDTH = "1" *) (* USE_ADV_FEATURES = "825503796" *) (* USE_ADV_FEATURES_INT = "825503796" *) 
(* WR_DATA_COUNT_WIDTH = "12" *) (* XPM_MODULE = "TRUE" *) (* dont_touch = "true" *) 
module system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis
   (s_aresetn,
    s_aclk,
    m_aclk,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    prog_full_axis,
    wr_data_count_axis,
    almost_full_axis,
    prog_empty_axis,
    rd_data_count_axis,
    almost_empty_axis,
    injectsbiterr_axis,
    injectdbiterr_axis,
    sbiterr_axis,
    dbiterr_axis);
  input s_aresetn;
  input s_aclk;
  input m_aclk;
  input s_axis_tvalid;
  output s_axis_tready;
  input [39:0]s_axis_tdata;
  input [4:0]s_axis_tstrb;
  input [4:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [0:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [39:0]m_axis_tdata;
  output [4:0]m_axis_tstrb;
  output [4:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [0:0]m_axis_tuser;
  output prog_full_axis;
  output [11:0]wr_data_count_axis;
  output almost_full_axis;
  output prog_empty_axis;
  output [11:0]rd_data_count_axis;
  output almost_empty_axis;
  input injectsbiterr_axis;
  input injectdbiterr_axis;
  output sbiterr_axis;
  output dbiterr_axis;

  wire \<const0> ;
  wire \gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1_n_0 ;
  wire [39:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire [0:0]m_axis_tuser;
  wire m_axis_tvalid;
  wire [11:0]rd_data_count_axis;
  wire rst_axis;
  wire s_aclk;
  wire s_aresetn;
  wire [39:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire [0:0]s_axis_tuser;
  wire s_axis_tvalid;
  wire [11:0]wr_data_count_axis;
  wire xpm_fifo_base_inst_i_1_n_0;
  wire NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_full_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_overflow_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_prog_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_prog_full_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_underflow_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED;
  wire [51:40]NLW_xpm_fifo_base_inst_dout_UNCONNECTED;

  assign almost_empty_axis = \<const0> ;
  assign almost_full_axis = \<const0> ;
  assign dbiterr_axis = \<const0> ;
  assign m_axis_tdest[0] = \<const0> ;
  assign m_axis_tid[0] = \<const0> ;
  assign m_axis_tkeep[4] = \<const0> ;
  assign m_axis_tkeep[3] = \<const0> ;
  assign m_axis_tkeep[2] = \<const0> ;
  assign m_axis_tkeep[1] = \<const0> ;
  assign m_axis_tkeep[0] = \<const0> ;
  assign m_axis_tstrb[4] = \<const0> ;
  assign m_axis_tstrb[3] = \<const0> ;
  assign m_axis_tstrb[2] = \<const0> ;
  assign m_axis_tstrb[1] = \<const0> ;
  assign m_axis_tstrb[0] = \<const0> ;
  assign prog_empty_axis = \<const0> ;
  assign prog_full_axis = \<const0> ;
  assign sbiterr_axis = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "4" *) 
  (* INIT = "0" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  system_MIPI_CSI_2_RX_0_0_xpm_cdc_sync_rst \gaxis_rst_sync.xpm_cdc_sync_rst_inst 
       (.dest_clk(s_aclk),
        .dest_rst(rst_axis),
        .src_rst(\gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1 
       (.I0(s_aresetn),
        .O(\gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1_n_0 ));
  (* CASCADE_HEIGHT = "0" *) 
  (* CDC_DEST_SYNC_FF = "3" *) 
  (* COMMON_CLOCK = "1" *) 
  (* DOUT_RESET_VALUE = "" *) 
  (* ECC_MODE = "0" *) 
  (* ENABLE_ECC = "0" *) 
  (* EN_ADV_FEATURE = "16'b0001010000000100" *) 
  (* EN_AE = "1'b0" *) 
  (* EN_AF = "1'b0" *) 
  (* EN_DVLD = "1'b1" *) 
  (* EN_OF = "1'b0" *) 
  (* EN_PE = "1'b0" *) 
  (* EN_PF = "1'b0" *) 
  (* EN_RDC = "1'b1" *) 
  (* EN_UF = "1'b0" *) 
  (* EN_WACK = "1'b0" *) 
  (* EN_WDC = "1'b1" *) 
  (* FG_EQ_ASYM_DOUT = "1'b0" *) 
  (* FIFO_MEMORY_TYPE = "0" *) 
  (* FIFO_MEM_TYPE = "0" *) 
  (* FIFO_READ_DEPTH = "2048" *) 
  (* FIFO_READ_LATENCY = "0" *) 
  (* FIFO_SIZE = "110592" *) 
  (* FIFO_WRITE_DEPTH = "2048" *) 
  (* FULL_RESET_VALUE = "1" *) 
  (* FULL_RST_VAL = "1'b1" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* PE_THRESH_ADJ = "3" *) 
  (* PE_THRESH_MAX = "2043" *) 
  (* PE_THRESH_MIN = "5" *) 
  (* PF_THRESH_ADJ = "9" *) 
  (* PF_THRESH_MAX = "2043" *) 
  (* PF_THRESH_MIN = "5" *) 
  (* PROG_EMPTY_THRESH = "5" *) 
  (* PROG_FULL_THRESH = "11" *) 
  (* RD_DATA_COUNT_WIDTH = "12" *) 
  (* RD_DC_WIDTH_EXT = "12" *) 
  (* RD_LATENCY = "2" *) 
  (* RD_MODE = "1" *) 
  (* RD_PNTR_WIDTH = "11" *) 
  (* READ_DATA_WIDTH = "54" *) 
  (* READ_MODE = "1" *) 
  (* READ_MODE_LL = "1" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* REMOVE_WR_RD_PROT_LOGIC = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "825503796" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WIDTH_RATIO = "1" *) 
  (* WRITE_DATA_WIDTH = "54" *) 
  (* WR_DATA_COUNT_WIDTH = "12" *) 
  (* WR_DC_WIDTH_EXT = "12" *) 
  (* WR_DEPTH_LOG = "11" *) 
  (* WR_PNTR_WIDTH = "11" *) 
  (* WR_RD_RATIO = "0" *) 
  (* WR_WIDTH_LOG = "6" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* both_stages_valid = "3" *) 
  (* invalid = "0" *) 
  (* stage1_valid = "2" *) 
  (* stage2_valid = "1" *) 
  system_MIPI_CSI_2_RX_0_0_xpm_fifo_base xpm_fifo_base_inst
       (.almost_empty(NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED),
        .almost_full(NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED),
        .data_valid(m_axis_tvalid),
        .dbiterr(NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED),
        .din({s_axis_tlast,s_axis_tuser,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axis_tdata}),
        .dout({m_axis_tlast,m_axis_tuser,NLW_xpm_fifo_base_inst_dout_UNCONNECTED[51:40],m_axis_tdata}),
        .empty(NLW_xpm_fifo_base_inst_empty_UNCONNECTED),
        .full(NLW_xpm_fifo_base_inst_full_UNCONNECTED),
        .full_n(s_axis_tready),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(NLW_xpm_fifo_base_inst_overflow_UNCONNECTED),
        .prog_empty(NLW_xpm_fifo_base_inst_prog_empty_UNCONNECTED),
        .prog_full(NLW_xpm_fifo_base_inst_prog_full_UNCONNECTED),
        .rd_clk(1'b0),
        .rd_data_count(rd_data_count_axis),
        .rd_en(xpm_fifo_base_inst_i_1_n_0),
        .rd_rst_busy(NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED),
        .rst(rst_axis),
        .sbiterr(NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .underflow(NLW_xpm_fifo_base_inst_underflow_UNCONNECTED),
        .wr_ack(NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED),
        .wr_clk(s_aclk),
        .wr_data_count(wr_data_count_axis),
        .wr_en(s_axis_tvalid),
        .wr_rst_busy(NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED));
  LUT2 #(
    .INIT(4'h8)) 
    xpm_fifo_base_inst_i_1
       (.I0(m_axis_tvalid),
        .I1(m_axis_tready),
        .O(xpm_fifo_base_inst_i_1_n_0));
endmodule

(* CASCADE_HEIGHT = "0" *) (* CDC_DEST_SYNC_FF = "3" *) (* COMMON_CLOCK = "1" *) 
(* DOUT_RESET_VALUE = "" *) (* ECC_MODE = "0" *) (* ENABLE_ECC = "0" *) 
(* EN_ADV_FEATURE = "16'b0001010000000100" *) (* EN_AE = "1'b0" *) (* EN_AF = "1'b0" *) 
(* EN_DVLD = "1'b1" *) (* EN_OF = "1'b0" *) (* EN_PE = "1'b0" *) 
(* EN_PF = "1'b0" *) (* EN_RDC = "1'b1" *) (* EN_UF = "1'b0" *) 
(* EN_WACK = "1'b0" *) (* EN_WDC = "1'b1" *) (* FG_EQ_ASYM_DOUT = "1'b0" *) 
(* FIFO_MEMORY_TYPE = "0" *) (* FIFO_MEM_TYPE = "0" *) (* FIFO_READ_DEPTH = "2048" *) 
(* FIFO_READ_LATENCY = "0" *) (* FIFO_SIZE = "110592" *) (* FIFO_WRITE_DEPTH = "2048" *) 
(* FULL_RESET_VALUE = "1" *) (* FULL_RST_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_fifo_base" *) 
(* PE_THRESH_ADJ = "3" *) (* PE_THRESH_MAX = "2043" *) (* PE_THRESH_MIN = "5" *) 
(* PF_THRESH_ADJ = "9" *) (* PF_THRESH_MAX = "2043" *) (* PF_THRESH_MIN = "5" *) 
(* PROG_EMPTY_THRESH = "5" *) (* PROG_FULL_THRESH = "11" *) (* RD_DATA_COUNT_WIDTH = "12" *) 
(* RD_DC_WIDTH_EXT = "12" *) (* RD_LATENCY = "2" *) (* RD_MODE = "1" *) 
(* RD_PNTR_WIDTH = "11" *) (* READ_DATA_WIDTH = "54" *) (* READ_MODE = "1" *) 
(* READ_MODE_LL = "1" *) (* RELATED_CLOCKS = "0" *) (* REMOVE_WR_RD_PROT_LOGIC = "0" *) 
(* SIM_ASSERT_CHK = "0" *) (* USE_ADV_FEATURES = "825503796" *) (* VERSION = "0" *) 
(* WAKEUP_TIME = "0" *) (* WIDTH_RATIO = "1" *) (* WRITE_DATA_WIDTH = "54" *) 
(* WR_DATA_COUNT_WIDTH = "12" *) (* WR_DC_WIDTH_EXT = "12" *) (* WR_DEPTH_LOG = "11" *) 
(* WR_PNTR_WIDTH = "11" *) (* WR_RD_RATIO = "0" *) (* WR_WIDTH_LOG = "6" *) 
(* XPM_MODULE = "TRUE" *) (* both_stages_valid = "3" *) (* invalid = "0" *) 
(* keep_hierarchy = "soft" *) (* stage1_valid = "2" *) (* stage2_valid = "1" *) 
module system_MIPI_CSI_2_RX_0_0_xpm_fifo_base
   (sleep,
    rst,
    wr_clk,
    wr_en,
    din,
    full,
    full_n,
    prog_full,
    wr_data_count,
    overflow,
    wr_rst_busy,
    almost_full,
    wr_ack,
    rd_clk,
    rd_en,
    dout,
    empty,
    prog_empty,
    rd_data_count,
    underflow,
    rd_rst_busy,
    almost_empty,
    data_valid,
    injectsbiterr,
    injectdbiterr,
    sbiterr,
    dbiterr);
  input sleep;
  input rst;
  input wr_clk;
  input wr_en;
  input [53:0]din;
  output full;
  output full_n;
  output prog_full;
  output [11:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_clk;
  input rd_en;
  output [53:0]dout;
  output empty;
  output prog_empty;
  output [11:0]rd_data_count;
  output underflow;
  output rd_rst_busy;
  output almost_empty;
  output data_valid;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;

  wire \<const0> ;
  wire clr_full;
  wire [1:1]count_value_i;
  wire [1:0]curr_fwft_state;
  wire data_valid;
  wire data_valid_fwft1;
  wire [53:0]din;
  wire [53:0]\^dout ;
  wire full_n;
  wire \gen_fwft.empty_fwft_i_reg_n_0 ;
  wire \gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0 ;
  wire \gen_fwft.ram_regout_en ;
  wire \gen_fwft.rdpp1_inst_n_0 ;
  wire \gen_fwft.rdpp1_inst_n_1 ;
  wire \gen_fwft.rdpp1_inst_n_2 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ;
  wire [11:0]\grdc.diff_wr_rd_pntr_rdc ;
  wire \grdc.rd_data_count_i0 ;
  wire leaving_empty0;
  wire [1:0]next_fwft_state__0;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire ram_wr_en_i;
  wire [11:0]rd_data_count;
  wire rd_en;
  wire [10:0]rd_pntr_ext;
  wire rdp_inst_n_11;
  wire rdp_inst_n_12;
  wire rdp_inst_n_13;
  wire rdp_inst_n_14;
  wire rdp_inst_n_15;
  wire rdp_inst_n_17;
  wire rdp_inst_n_18;
  wire rdp_inst_n_19;
  wire rdp_inst_n_20;
  wire rdp_inst_n_21;
  wire rdp_inst_n_22;
  wire rdp_inst_n_23;
  wire rdp_inst_n_24;
  wire rdpp1_inst_n_0;
  wire rdpp1_inst_n_1;
  wire rdpp1_inst_n_10;
  wire rdpp1_inst_n_2;
  wire rdpp1_inst_n_3;
  wire rdpp1_inst_n_4;
  wire rdpp1_inst_n_5;
  wire rdpp1_inst_n_6;
  wire rdpp1_inst_n_7;
  wire rdpp1_inst_n_8;
  wire rdpp1_inst_n_9;
  wire rst;
  wire rst_d1;
  wire rst_d1_inst_n_2;
  wire rst_d1_inst_n_3;
  wire sleep;
  wire wr_clk;
  wire [11:0]wr_data_count;
  wire wr_en;
  wire [10:0]wr_pntr_ext;
  wire wrp_inst_n_1;
  wire wrpp1_inst_n_0;
  wire wrpp1_inst_n_1;
  wire wrpp1_inst_n_10;
  wire wrpp1_inst_n_2;
  wire wrpp1_inst_n_3;
  wire wrpp1_inst_n_4;
  wire wrpp1_inst_n_5;
  wire wrpp1_inst_n_6;
  wire wrpp1_inst_n_7;
  wire wrpp1_inst_n_8;
  wire wrpp1_inst_n_9;
  wire xpm_fifo_rst_inst_n_1;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ;
  wire [53:0]\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED ;
  wire [51:40]\NLW_gen_sdpram.xpm_memory_base_inst_doutb_UNCONNECTED ;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign dbiterr = \<const0> ;
  assign dout[53:52] = \^dout [53:52];
  assign dout[51] = \<const0> ;
  assign dout[50] = \<const0> ;
  assign dout[49] = \<const0> ;
  assign dout[48] = \<const0> ;
  assign dout[47] = \<const0> ;
  assign dout[46] = \<const0> ;
  assign dout[45] = \<const0> ;
  assign dout[44] = \<const0> ;
  assign dout[43] = \<const0> ;
  assign dout[42] = \<const0> ;
  assign dout[41] = \<const0> ;
  assign dout[40] = \<const0> ;
  assign dout[39:0] = \^dout [39:0];
  assign empty = \<const0> ;
  assign full = \<const0> ;
  assign overflow = \<const0> ;
  assign prog_empty = \<const0> ;
  assign prog_full = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign sbiterr = \<const0> ;
  assign underflow = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_rst_busy = \<const0> ;
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h6A85)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1 
       (.I0(curr_fwft_state[0]),
        .I1(rd_en),
        .I2(curr_fwft_state[1]),
        .I3(ram_empty_i),
        .O(next_fwft_state__0[0]));
  LUT3 #(
    .INIT(8'h7C)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1 
       (.I0(rd_en),
        .I1(curr_fwft_state[1]),
        .I2(curr_fwft_state[0]),
        .O(next_fwft_state__0[1]));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(next_fwft_state__0[0]),
        .Q(curr_fwft_state[0]),
        .R(xpm_fifo_rst_inst_n_1));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(next_fwft_state__0[1]),
        .Q(curr_fwft_state[1]),
        .R(xpm_fifo_rst_inst_n_1));
  GND GND
       (.G(\<const0> ));
  LUT4 #(
    .INIT(16'hF380)) 
    \gen_fwft.empty_fwft_i_i_1 
       (.I0(rd_en),
        .I1(curr_fwft_state[0]),
        .I2(curr_fwft_state[1]),
        .I3(\gen_fwft.empty_fwft_i_reg_n_0 ),
        .O(data_valid_fwft1));
  FDSE #(
    .INIT(1'b1)) 
    \gen_fwft.empty_fwft_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(data_valid_fwft1),
        .Q(\gen_fwft.empty_fwft_i_reg_n_0 ),
        .S(xpm_fifo_rst_inst_n_1));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h3575)) 
    \gen_fwft.gdvld_fwft.data_valid_fwft_i_1 
       (.I0(\gen_fwft.empty_fwft_i_reg_n_0 ),
        .I1(curr_fwft_state[1]),
        .I2(curr_fwft_state[0]),
        .I3(rd_en),
        .O(\gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fwft.gdvld_fwft.data_valid_fwft_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0 ),
        .Q(data_valid),
        .R(xpm_fifo_rst_inst_n_1));
  system_MIPI_CSI_2_RX_0_0_xpm_counter_updn \gen_fwft.rdpp1_inst 
       (.DI(\gen_fwft.rdpp1_inst_n_2 ),
        .Q(rd_pntr_ext[1:0]),
        .S({\gen_fwft.rdpp1_inst_n_0 ,\gen_fwft.rdpp1_inst_n_1 }),
        .\count_value_i_reg[0]_0 (curr_fwft_state),
        .\count_value_i_reg[0]_1 (xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[1]_0 (count_value_i),
        .\grdc.rd_data_count_i_reg[3] (wr_pntr_ext[1:0]),
        .ram_empty_i(ram_empty_i),
        .rd_en(rd_en),
        .wr_clk(wr_clk));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rdp_inst_n_22),
        .Q(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .S(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rdp_inst_n_24),
        .Q(full_n),
        .R(xpm_fifo_rst_inst_n_1));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pntr_flags_cc.ram_empty_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(ram_empty_i0),
        .Q(ram_empty_i),
        .S(xpm_fifo_rst_inst_n_1));
  (* ADDR_WIDTH_A = "11" *) 
  (* ADDR_WIDTH_B = "11" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "54" *) 
  (* BYTE_WRITE_WIDTH_B = "54" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CLOCKING_MODE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* MAX_NUM_CHAR = "0" *) 
  (* \MEM.ADDRESS_SPACE  *) 
  (* \MEM.ADDRESS_SPACE_BEGIN  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_LSB  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_MSB  = "41" *) 
  (* \MEM.ADDRESS_SPACE_END  = "2047" *) 
  (* \MEM.CORE_MEMORY_WIDTH  = "42" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "" *) 
  (* MEMORY_OPTIMIZATION = "true" *) 
  (* MEMORY_PRIMITIVE = "0" *) 
  (* MEMORY_SIZE = "110592" *) 
  (* MEMORY_TYPE = "1" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* NUM_CHAR_LOC = "0" *) 
  (* P_ECC_MODE = "no_ecc" *) 
  (* P_ENABLE_BYTE_WRITE_A = "0" *) 
  (* P_ENABLE_BYTE_WRITE_B = "0" *) 
  (* P_MAX_DEPTH_DATA = "2048" *) 
  (* P_MEMORY_OPT = "yes" *) 
  (* P_MEMORY_PRIMITIVE = "auto" *) 
  (* P_MIN_WIDTH_DATA = "54" *) 
  (* P_MIN_WIDTH_DATA_A = "54" *) 
  (* P_MIN_WIDTH_DATA_B = "54" *) 
  (* P_MIN_WIDTH_DATA_ECC = "54" *) 
  (* P_MIN_WIDTH_DATA_LDW = "4" *) 
  (* P_MIN_WIDTH_DATA_SHFT = "54" *) 
  (* P_NUM_COLS_WRITE_A = "1" *) 
  (* P_NUM_COLS_WRITE_B = "1" *) 
  (* P_NUM_ROWS_READ_A = "1" *) 
  (* P_NUM_ROWS_READ_B = "1" *) 
  (* P_NUM_ROWS_WRITE_A = "1" *) 
  (* P_NUM_ROWS_WRITE_B = "1" *) 
  (* P_SDP_WRITE_MODE = "yes" *) 
  (* P_WIDTH_ADDR_LSB_READ_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_READ_B = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) 
  (* P_WIDTH_ADDR_READ_A = "11" *) 
  (* P_WIDTH_ADDR_READ_B = "11" *) 
  (* P_WIDTH_ADDR_WRITE_A = "11" *) 
  (* P_WIDTH_ADDR_WRITE_B = "11" *) 
  (* P_WIDTH_COL_WRITE_A = "54" *) 
  (* P_WIDTH_COL_WRITE_B = "54" *) 
  (* READ_DATA_WIDTH_A = "54" *) 
  (* READ_DATA_WIDTH_B = "54" *) 
  (* READ_LATENCY_A = "2" *) 
  (* READ_LATENCY_B = "2" *) 
  (* READ_RESET_VALUE_A = "0" *) 
  (* READ_RESET_VALUE_B = "" *) 
  (* RST_MODE_A = "SYNC" *) 
  (* RST_MODE_B = "SYNC" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_EMBEDDED_CONSTRAINT = "0" *) 
  (* USE_MEM_INIT = "0" *) 
  (* USE_MEM_INIT_MMI = "0" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH_A = "54" *) 
  (* WRITE_DATA_WIDTH_B = "54" *) 
  (* WRITE_MODE_A = "2" *) 
  (* WRITE_MODE_B = "2" *) 
  (* WRITE_PROTECT = "1" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* rsta_loop_iter = "56" *) 
  (* rstb_loop_iter = "56" *) 
  system_MIPI_CSI_2_RX_0_0_xpm_memory_base \gen_sdpram.xpm_memory_base_inst 
       (.addra(wr_pntr_ext),
        .addrb(rd_pntr_ext),
        .clka(wr_clk),
        .clkb(1'b0),
        .dbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ),
        .dbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ),
        .dina({din[53:52],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,din[39:0]}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED [53:0]),
        .doutb(\^dout ),
        .ena(1'b0),
        .enb(rdp_inst_n_23),
        .injectdbiterra(1'b0),
        .injectdbiterrb(1'b0),
        .injectsbiterra(1'b0),
        .injectsbiterrb(1'b0),
        .regcea(1'b0),
        .regceb(\gen_fwft.ram_regout_en ),
        .rsta(1'b0),
        .rstb(xpm_fifo_rst_inst_n_1),
        .sbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ),
        .sbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ),
        .sleep(sleep),
        .wea(ram_wr_en_i),
        .web(1'b0));
  LUT3 #(
    .INIT(8'h62)) 
    \gen_sdpram.xpm_memory_base_inst_i_3 
       (.I0(curr_fwft_state[0]),
        .I1(curr_fwft_state[1]),
        .I2(rd_en),
        .O(\gen_fwft.ram_regout_en ));
  FDRE \grdc.rd_data_count_i_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [0]),
        .Q(rd_data_count[0]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[10] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [10]),
        .Q(rd_data_count[10]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[11] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [11]),
        .Q(rd_data_count[11]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [1]),
        .Q(rd_data_count[1]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [2]),
        .Q(rd_data_count[2]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [3]),
        .Q(rd_data_count[3]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [4]),
        .Q(rd_data_count[4]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[5] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [5]),
        .Q(rd_data_count[5]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[6] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [6]),
        .Q(rd_data_count[6]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[7] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [7]),
        .Q(rd_data_count[7]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[8] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [8]),
        .Q(rd_data_count[8]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[9] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [9]),
        .Q(rd_data_count[9]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \gwdc.wr_data_count_i_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [0]),
        .Q(wr_data_count[0]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE \gwdc.wr_data_count_i_reg[10] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [10]),
        .Q(wr_data_count[10]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE \gwdc.wr_data_count_i_reg[11] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [11]),
        .Q(wr_data_count[11]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE \gwdc.wr_data_count_i_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [1]),
        .Q(wr_data_count[1]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE \gwdc.wr_data_count_i_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [2]),
        .Q(wr_data_count[2]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE \gwdc.wr_data_count_i_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [3]),
        .Q(wr_data_count[3]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE \gwdc.wr_data_count_i_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [4]),
        .Q(wr_data_count[4]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE \gwdc.wr_data_count_i_reg[5] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [5]),
        .Q(wr_data_count[5]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE \gwdc.wr_data_count_i_reg[6] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [6]),
        .Q(wr_data_count[6]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE \gwdc.wr_data_count_i_reg[7] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [7]),
        .Q(wr_data_count[7]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE \gwdc.wr_data_count_i_reg[8] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [8]),
        .Q(wr_data_count[8]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE \gwdc.wr_data_count_i_reg[9] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [9]),
        .Q(wr_data_count[9]),
        .R(xpm_fifo_rst_inst_n_1));
  system_MIPI_CSI_2_RX_0_0_xpm_counter_updn__parameterized0 rdp_inst
       (.CO(leaving_empty0),
        .DI(rdp_inst_n_11),
        .\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] (rdp_inst_n_23),
        .Q(rd_pntr_ext),
        .S({rdp_inst_n_12,rdp_inst_n_13,rdp_inst_n_14,rdp_inst_n_15}),
        .clr_full(clr_full),
        .\count_value_i_reg[0]_0 (curr_fwft_state),
        .\count_value_i_reg[11]_0 (xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[2]_0 (rdp_inst_n_17),
        .\count_value_i_reg[6]_0 ({rdp_inst_n_18,rdp_inst_n_19,rdp_inst_n_20,rdp_inst_n_21}),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg (rdp_inst_n_22),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 (rdp_inst_n_24),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 (\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_0 ({wrpp1_inst_n_0,wrpp1_inst_n_1,wrpp1_inst_n_2,wrpp1_inst_n_3,wrpp1_inst_n_4,wrpp1_inst_n_5,wrpp1_inst_n_6,wrpp1_inst_n_7,wrpp1_inst_n_8,wrpp1_inst_n_9,wrpp1_inst_n_10}),
        .\grdc.rd_data_count_i_reg[11] ({wrp_inst_n_1,wr_pntr_ext}),
        .\grdc.rd_data_count_i_reg[3] (count_value_i),
        .ram_empty_i(ram_empty_i),
        .ram_wr_en_i(ram_wr_en_i),
        .rd_en(rd_en),
        .wr_clk(wr_clk));
  system_MIPI_CSI_2_RX_0_0_xpm_counter_updn__parameterized1 rdpp1_inst
       (.E(rdp_inst_n_23),
        .Q({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3,rdpp1_inst_n_4,rdpp1_inst_n_5,rdpp1_inst_n_6,rdpp1_inst_n_7,rdpp1_inst_n_8,rdpp1_inst_n_9,rdpp1_inst_n_10}),
        .\count_value_i_reg[1]_0 (xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[3]_0 (curr_fwft_state),
        .ram_empty_i(ram_empty_i),
        .rd_en(rd_en),
        .wr_clk(wr_clk));
  system_MIPI_CSI_2_RX_0_0_xpm_fifo_reg_bit rst_d1_inst
       (.Q(xpm_fifo_rst_inst_n_1),
        .S(rst_d1_inst_n_2),
        .clr_full(clr_full),
        .\count_value_i_reg[3] (\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .\count_value_i_reg[3]_0 (wr_pntr_ext[0]),
        .\count_value_i_reg[3]_1 (wrpp1_inst_n_10),
        .d_out_reg_0(rst_d1_inst_n_3),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
  system_MIPI_CSI_2_RX_0_0_xpm_counter_updn__parameterized0_7 wrp_inst
       (.CO(leaving_empty0),
        .D(\grdc.diff_wr_rd_pntr_rdc ),
        .DI({rdp_inst_n_11,\gen_fwft.rdpp1_inst_n_2 }),
        .E(ram_wr_en_i),
        .Q({wrp_inst_n_1,wr_pntr_ext}),
        .S(rst_d1_inst_n_2),
        .\count_value_i_reg[0]_0 (xpm_fifo_rst_inst_n_1),
        .\gen_pntr_flags_cc.ram_empty_i_reg (rdp_inst_n_23),
        .\gen_pntr_flags_cc.ram_empty_i_reg_i_2_0 ({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3,rdpp1_inst_n_4,rdpp1_inst_n_5,rdpp1_inst_n_6,rdpp1_inst_n_7,rdpp1_inst_n_8,rdpp1_inst_n_9,rdpp1_inst_n_10}),
        .\grdc.rd_data_count_i_reg[11] ({rdp_inst_n_12,rdp_inst_n_13,rdp_inst_n_14,rdp_inst_n_15}),
        .\grdc.rd_data_count_i_reg[11]_0 (rd_pntr_ext[9:1]),
        .\grdc.rd_data_count_i_reg[3] ({rdp_inst_n_17,\gen_fwft.rdpp1_inst_n_0 ,\gen_fwft.rdpp1_inst_n_1 }),
        .\grdc.rd_data_count_i_reg[3]_0 (count_value_i),
        .\grdc.rd_data_count_i_reg[7] ({rdp_inst_n_18,rdp_inst_n_19,rdp_inst_n_20,rdp_inst_n_21}),
        .ram_empty_i(ram_empty_i),
        .ram_empty_i0(ram_empty_i0),
        .wr_clk(wr_clk));
  system_MIPI_CSI_2_RX_0_0_xpm_counter_updn__parameterized1_8 wrpp1_inst
       (.E(ram_wr_en_i),
        .Q({wrpp1_inst_n_0,wrpp1_inst_n_1,wrpp1_inst_n_2,wrpp1_inst_n_3,wrpp1_inst_n_4,wrpp1_inst_n_5,wrpp1_inst_n_6,wrpp1_inst_n_7,wrpp1_inst_n_8,wrpp1_inst_n_9,wrpp1_inst_n_10}),
        .\count_value_i_reg[1]_0 (xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[3]_0 (rst_d1_inst_n_3),
        .wr_clk(wr_clk));
  system_MIPI_CSI_2_RX_0_0_xpm_fifo_rst xpm_fifo_rst_inst
       (.E(ram_wr_en_i),
        .Q(xpm_fifo_rst_inst_n_1),
        .SR(\grdc.rd_data_count_i0 ),
        .\count_value_i_reg[10] (\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .\grdc.rd_data_count_i_reg[0] (curr_fwft_state),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_bit" *) 
module system_MIPI_CSI_2_RX_0_0_xpm_fifo_reg_bit
   (rst_d1,
    clr_full,
    S,
    d_out_reg_0,
    Q,
    wr_clk,
    rst,
    \count_value_i_reg[3] ,
    wr_en,
    \count_value_i_reg[3]_0 ,
    \count_value_i_reg[3]_1 );
  output rst_d1;
  output clr_full;
  output [0:0]S;
  output [0:0]d_out_reg_0;
  input [0:0]Q;
  input wr_clk;
  input rst;
  input \count_value_i_reg[3] ;
  input wr_en;
  input [0:0]\count_value_i_reg[3]_0 ;
  input [0:0]\count_value_i_reg[3]_1 ;

  wire [0:0]Q;
  wire [0:0]S;
  wire clr_full;
  wire \count_value_i_reg[3] ;
  wire [0:0]\count_value_i_reg[3]_0 ;
  wire [0:0]\count_value_i_reg[3]_1 ;
  wire [0:0]d_out_reg_0;
  wire rst;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;

  LUT5 #(
    .INIT(32'hFEFF0100)) 
    \count_value_i[3]_i_2 
       (.I0(rst_d1),
        .I1(Q),
        .I2(\count_value_i_reg[3] ),
        .I3(wr_en),
        .I4(\count_value_i_reg[3]_0 ),
        .O(S));
  LUT5 #(
    .INIT(32'hFEFF0100)) 
    \count_value_i[3]_i_2__2 
       (.I0(rst_d1),
        .I1(Q),
        .I2(\count_value_i_reg[3] ),
        .I3(wr_en),
        .I4(\count_value_i_reg[3]_1 ),
        .O(d_out_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    d_out_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(Q),
        .Q(rst_d1),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h04)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_2 
       (.I0(rst),
        .I1(rst_d1),
        .I2(Q),
        .O(clr_full));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_rst" *) 
module system_MIPI_CSI_2_RX_0_0_xpm_fifo_rst
   (E,
    Q,
    SR,
    rst,
    wr_en,
    \count_value_i_reg[10] ,
    rst_d1,
    \grdc.rd_data_count_i_reg[0] ,
    wr_clk);
  output [0:0]E;
  output [0:0]Q;
  output [0:0]SR;
  input rst;
  input wr_en;
  input \count_value_i_reg[10] ;
  input rst_d1;
  input [1:0]\grdc.rd_data_count_i_reg[0] ;
  input wr_clk;

  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire \count_value_i_reg[10] ;
  wire [1:0]\gen_rst_cc.fifo_wr_rst_cc ;
  wire [1:0]\grdc.rd_data_count_i_reg[0] ;
  wire p_0_in;
  wire \power_on_rst_reg_n_0_[0] ;
  wire rst;
  wire rst_d1;
  wire rst_i;
  wire wr_clk;
  wire wr_en;

  LUT2 #(
    .INIT(4'hE)) 
    \gen_rst_cc.fifo_wr_rst_cc[2]_i_1 
       (.I0(p_0_in),
        .I1(rst),
        .O(rst_i));
  FDSE #(
    .INIT(1'b0)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\gen_rst_cc.fifo_wr_rst_cc [0]),
        .S(rst_i));
  FDSE #(
    .INIT(1'b0)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_cc.fifo_wr_rst_cc [0]),
        .Q(\gen_rst_cc.fifo_wr_rst_cc [1]),
        .S(rst_i));
  FDSE #(
    .INIT(1'b0)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_cc.fifo_wr_rst_cc [1]),
        .Q(Q),
        .S(rst_i));
  LUT4 #(
    .INIT(16'h0002)) 
    \gen_sdpram.xpm_memory_base_inst_i_1 
       (.I0(wr_en),
        .I1(\count_value_i_reg[10] ),
        .I2(Q),
        .I3(rst_d1),
        .O(E));
  LUT3 #(
    .INIT(8'hAB)) 
    \grdc.rd_data_count_i[11]_i_1 
       (.I0(Q),
        .I1(\grdc.rd_data_count_i_reg[0] [0]),
        .I2(\grdc.rd_data_count_i_reg[0] [1]),
        .O(SR));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\power_on_rst_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\power_on_rst_reg_n_0_[0] ),
        .Q(p_0_in),
        .R(1'b0));
endmodule

(* ADDR_WIDTH_A = "11" *) (* ADDR_WIDTH_B = "11" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "54" *) (* BYTE_WRITE_WIDTH_B = "54" *) (* CASCADE_HEIGHT = "0" *) 
(* CLOCKING_MODE = "0" *) (* ECC_MODE = "0" *) (* MAX_NUM_CHAR = "0" *) 
(* MEMORY_INIT_FILE = "none" *) (* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) 
(* MEMORY_PRIMITIVE = "0" *) (* MEMORY_SIZE = "110592" *) (* MEMORY_TYPE = "1" *) 
(* MESSAGE_CONTROL = "0" *) (* NUM_CHAR_LOC = "0" *) (* ORIG_REF_NAME = "xpm_memory_base" *) 
(* P_ECC_MODE = "no_ecc" *) (* P_ENABLE_BYTE_WRITE_A = "0" *) (* P_ENABLE_BYTE_WRITE_B = "0" *) 
(* P_MAX_DEPTH_DATA = "2048" *) (* P_MEMORY_OPT = "yes" *) (* P_MEMORY_PRIMITIVE = "auto" *) 
(* P_MIN_WIDTH_DATA = "54" *) (* P_MIN_WIDTH_DATA_A = "54" *) (* P_MIN_WIDTH_DATA_B = "54" *) 
(* P_MIN_WIDTH_DATA_ECC = "54" *) (* P_MIN_WIDTH_DATA_LDW = "4" *) (* P_MIN_WIDTH_DATA_SHFT = "54" *) 
(* P_NUM_COLS_WRITE_A = "1" *) (* P_NUM_COLS_WRITE_B = "1" *) (* P_NUM_ROWS_READ_A = "1" *) 
(* P_NUM_ROWS_READ_B = "1" *) (* P_NUM_ROWS_WRITE_A = "1" *) (* P_NUM_ROWS_WRITE_B = "1" *) 
(* P_SDP_WRITE_MODE = "yes" *) (* P_WIDTH_ADDR_LSB_READ_A = "0" *) (* P_WIDTH_ADDR_LSB_READ_B = "0" *) 
(* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) (* P_WIDTH_ADDR_READ_A = "11" *) 
(* P_WIDTH_ADDR_READ_B = "11" *) (* P_WIDTH_ADDR_WRITE_A = "11" *) (* P_WIDTH_ADDR_WRITE_B = "11" *) 
(* P_WIDTH_COL_WRITE_A = "54" *) (* P_WIDTH_COL_WRITE_B = "54" *) (* READ_DATA_WIDTH_A = "54" *) 
(* READ_DATA_WIDTH_B = "54" *) (* READ_LATENCY_A = "2" *) (* READ_LATENCY_B = "2" *) 
(* READ_RESET_VALUE_A = "0" *) (* READ_RESET_VALUE_B = "" *) (* RST_MODE_A = "SYNC" *) 
(* RST_MODE_B = "SYNC" *) (* SIM_ASSERT_CHK = "0" *) (* USE_EMBEDDED_CONSTRAINT = "0" *) 
(* USE_MEM_INIT = "0" *) (* USE_MEM_INIT_MMI = "0" *) (* VERSION = "0" *) 
(* WAKEUP_TIME = "0" *) (* WRITE_DATA_WIDTH_A = "54" *) (* WRITE_DATA_WIDTH_B = "54" *) 
(* WRITE_MODE_A = "2" *) (* WRITE_MODE_B = "2" *) (* WRITE_PROTECT = "1" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "soft" *) (* rsta_loop_iter = "56" *) 
(* rstb_loop_iter = "56" *) 
module system_MIPI_CSI_2_RX_0_0_xpm_memory_base
   (sleep,
    clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    injectsbiterra,
    injectdbiterra,
    douta,
    sbiterra,
    dbiterra,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    injectsbiterrb,
    injectdbiterrb,
    doutb,
    sbiterrb,
    dbiterrb);
  input sleep;
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [10:0]addra;
  input [53:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [53:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [10:0]addrb;
  input [53:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [53:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [10:0]addra;
  wire [10:0]addrb;
  wire clka;
  wire [53:0]dina;
  wire [53:0]\^doutb ;
  wire enb;
  wire regceb;
  wire rstb;
  wire sleep;
  wire [0:0]wea;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_DBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_INJECTDBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_INJECTSBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_DOADO_UNCONNECTED ;
  wire [31:16]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_DOPADOP_UNCONNECTED ;
  wire [3:2]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_RDADDRECC_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_INJECTDBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_INJECTSBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DOADO_UNCONNECTED ;
  wire [31:16]\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DOPADOP_UNCONNECTED ;
  wire [3:2]\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_RDADDRECC_UNCONNECTED ;
  wire [15:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_DOADO_UNCONNECTED ;
  wire [15:6]\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_DOPBDOP_UNCONNECTED ;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign douta[53] = \<const0> ;
  assign douta[52] = \<const0> ;
  assign douta[51] = \<const0> ;
  assign douta[50] = \<const0> ;
  assign douta[49] = \<const0> ;
  assign douta[48] = \<const0> ;
  assign douta[47] = \<const0> ;
  assign douta[46] = \<const0> ;
  assign douta[45] = \<const0> ;
  assign douta[44] = \<const0> ;
  assign douta[43] = \<const0> ;
  assign douta[42] = \<const0> ;
  assign douta[41] = \<const0> ;
  assign douta[40] = \<const0> ;
  assign douta[39] = \<const0> ;
  assign douta[38] = \<const0> ;
  assign douta[37] = \<const0> ;
  assign douta[36] = \<const0> ;
  assign douta[35] = \<const0> ;
  assign douta[34] = \<const0> ;
  assign douta[33] = \<const0> ;
  assign douta[32] = \<const0> ;
  assign douta[31] = \<const0> ;
  assign douta[30] = \<const0> ;
  assign douta[29] = \<const0> ;
  assign douta[28] = \<const0> ;
  assign douta[27] = \<const0> ;
  assign douta[26] = \<const0> ;
  assign douta[25] = \<const0> ;
  assign douta[24] = \<const0> ;
  assign douta[23] = \<const0> ;
  assign douta[22] = \<const0> ;
  assign douta[21] = \<const0> ;
  assign douta[20] = \<const0> ;
  assign douta[19] = \<const0> ;
  assign douta[18] = \<const0> ;
  assign douta[17] = \<const0> ;
  assign douta[16] = \<const0> ;
  assign douta[15] = \<const0> ;
  assign douta[14] = \<const0> ;
  assign douta[13] = \<const0> ;
  assign douta[12] = \<const0> ;
  assign douta[11] = \<const0> ;
  assign douta[10] = \<const0> ;
  assign douta[9] = \<const0> ;
  assign douta[8] = \<const0> ;
  assign douta[7] = \<const0> ;
  assign douta[6] = \<const0> ;
  assign douta[5] = \<const0> ;
  assign douta[4] = \<const0> ;
  assign douta[3] = \<const0> ;
  assign douta[2] = \<const0> ;
  assign douta[1] = \<const0> ;
  assign douta[0] = \<const0> ;
  assign doutb[53:52] = \^doutb [53:52];
  assign doutb[51] = \<const0> ;
  assign doutb[50] = \<const0> ;
  assign doutb[49] = \<const0> ;
  assign doutb[48] = \<const0> ;
  assign doutb[47] = \<const0> ;
  assign doutb[46] = \<const0> ;
  assign doutb[45] = \<const0> ;
  assign doutb[44] = \<const0> ;
  assign doutb[43] = \<const0> ;
  assign doutb[42] = \<const0> ;
  assign doutb[41] = \<const0> ;
  assign doutb[40] = \<const0> ;
  assign doutb[39:0] = \^doutb [39:0];
  assign sbiterra = \<const0> ;
  assign sbiterrb = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "2047" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p2_d16" *) 
  (* \MEM.PORTA.DATA_LSB  = "0" *) 
  (* \MEM.PORTA.DATA_MSB  = "17" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "2047" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p2_d16" *) 
  (* \MEM.PORTB.DATA_LSB  = "0" *) 
  (* \MEM.PORTB.DATA_MSB  = "17" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "110592" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "2047" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "17" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0 
       (.ADDRARDADDR({1'b1,addra,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,addrb,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[15:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,dina[17:16]}),
        .DIPBDIP({1'b0,1'b0,1'b1,1'b1}),
        .DOADO(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_DOBDO_UNCONNECTED [31:16],\^doutb [15:0]}),
        .DOPADOP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_DOPBDOP_UNCONNECTED [3:2],\^doutb [17:16]}),
        .ECCPARITY(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(wea),
        .ENBWREN(enb),
        .INJECTDBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_INJECTDBITERR_UNCONNECTED ),
        .INJECTSBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_INJECTSBITERR_UNCONNECTED ),
        .RDADDRECC(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(regceb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(rstb),
        .SBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,1'b1,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "2047" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p2_d16" *) 
  (* \MEM.PORTA.DATA_LSB  = "18" *) 
  (* \MEM.PORTA.DATA_MSB  = "35" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "2047" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p2_d16" *) 
  (* \MEM.PORTB.DATA_LSB  = "18" *) 
  (* \MEM.PORTB.DATA_MSB  = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "110592" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "2047" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "35" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \gen_wr_a.gen_word_narrow.mem_reg_1 
       (.ADDRARDADDR({1'b1,addra,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,addrb,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[33:18]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,dina[35:34]}),
        .DIPBDIP({1'b0,1'b0,1'b1,1'b1}),
        .DOADO(\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DOBDO_UNCONNECTED [31:16],\^doutb [33:18]}),
        .DOPADOP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DOPBDOP_UNCONNECTED [3:2],\^doutb [35:34]}),
        .ECCPARITY(\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(wea),
        .ENBWREN(enb),
        .INJECTDBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_INJECTDBITERR_UNCONNECTED ),
        .INJECTSBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_INJECTSBITERR_UNCONNECTED ),
        .RDADDRECC(\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(regceb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(rstb),
        .SBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,1'b1,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "2047" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d6" *) 
  (* \MEM.PORTA.DATA_LSB  = "36" *) 
  (* \MEM.PORTA.DATA_MSB  = "41" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "2047" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d6" *) 
  (* \MEM.PORTB.DATA_LSB  = "36" *) 
  (* \MEM.PORTB.DATA_MSB  = "41" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "110592" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "2047" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "36" *) 
  (* ram_slice_end = "41" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(1),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \gen_wr_a.gen_word_narrow.mem_reg_2 
       (.ADDRARDADDR({addra,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({addrb,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[53:52],dina[39:36]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_DOADO_UNCONNECTED [15:0]),
        .DOBDO({\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_DOBDO_UNCONNECTED [15:6],\^doutb [53:52],\^doutb [39:36]}),
        .DOPADOP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(wea),
        .ENBWREN(enb),
        .REGCEAREGCE(1'b0),
        .REGCEB(regceb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(rstb),
        .WEA({wea,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
SFoQ2tXDMrL2nCJbfpmHXuteJlKaWDWl3o9OY1miFvmYb8EDywmDpLUHQktJ/VoW+17fK5WHgFVI
FZV1B91GDQ==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
mxGWDRjEAsKmBqldxevT1RKZvqK7vn0KlTODVXNGlRcGf9zOAmj0Z7Ppu79POBDb8oNQyCY+2q1q
BddzhQfh5WLIVX9BNUMIF6M6IF0elM4GMSLHGeYEwqSaMPC+thuR8FGj1J7z6rH+43gDYhtIeyY+
ZuZUz/Pqg8Lu63Xwe+0=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
HLwPjQzkuqv5FEDBriEJS2DikBeIHB/bWuVWooHY5ChdoHatcmqCHpSvnGxVzLwObZWHFys2nR9y
P3zxywjtgtOWq/n3cYVa5li6eyiUmGXv2OE8nw1nLnAY1kzBvGd6VwQ45t6l4Hx5+oqpIfuU2KI2
7/Qpj2atiTN3Y+q5He/BMXLIxF9vWuU6XL/+HsxriGAumcZDuESdidlxOztbW1bFhYr1/qWwou2q
wynnRVKYHL41aWycgFdkDoDEFFxv8ft8+F5Ux+J5Hg5XdgRULJc6uUQE/lDG3zOqzPftlODB52zU
d0cm8gFOvSZ2nO8ZB8THnxoAGe33iIZJfMcefA==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jlR0iZ4fp9QXiFgaT07DMAK1YFLyBpsOGOOR9j2PWImFEh8oTBt4cvmGo+2z1Umbt9OMQwOhyepO
QIsKLFzUXYUba+SFFLBoCiaww24KICecbUfd3VV5sg2bEJjAdtYTT6mJqyc3vQRvBlONeBFdIGy2
AXqdK7QtXGLsLAIF/z4FG8cfG6nSD6e16gccBC6+kl5MoShdnmebKLyoo6UKFdMbDK88sHvTcD9S
LNCau6RK7FkTZg23FV0tf6cTP9Rray9YEcowm2AAh51Wldo2lGJ2W5iiDatRKH/W1bu7FGWZG+OT
+VZE+Ckiuf4T6cuu+G5IbrtMv6a4U93R0gtxXQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
p/kq+JjPPJbOTWT2SRiPJ99/iH6kkVGEiluRRXpuRN+j+cVPgJD1v4QVjw3zMWLlvTGB7OOqC+JG
Lc62Wiizd/BFfGj2JYkTZMatcOWok7A87HK+vRTjr4nZMApD2jKaneJdU1279KsIEeRfImCQ2uRl
QRNMH3PPdNGYCnOGgNk=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kyyI/O29YYc5VBwhz19i7AV7MC75r43hHVKAOTBiGBhRu8zZxCwGGcNFqc2HgHcWC6nq4jCIbIXf
S3FDzPdasegnERlWvoob9/SXM88zKsyeTbUf+DRu5lB8SPROBMaIhnj375C5XLowL17MXZdmB6fV
X5ukCg7cNhCjssKt/bIJibWkfna7hvj4ye+CLWmi3LdEiix8KTwRoBS3ZJrjM4/N6FfZkXerVxs+
txkhdsmG9ga1g/xErhTRilhqrV2WetlpX86qH/64sRGVxrWeEfNoHhMZsqEK0jWDx4WavKt8XY7W
NDzMXLZ2m5Dv5HMiJWgFG+ntPwgiYYtBuwu7Eg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
tv6UL1ZWqo3dAIlhN5UTNGzJyqzdHpCqh217JPvIvHiWJgcFh2tw1n7HWnOPcK3VhCt31AGnCEFe
HpTiinXvHna65L2X2HhtNUrsgvZlUuh/oQR273wp5JPFDPD97NQ4ELkGI+w26HTYLgZ70K5rQo87
D4AkQNRuzTRS5G12yb4RU7ZYgmkYLuq1UyqjlxyN62Del4XoqZyivOGw5H+7wlfkNRu98iQwqq12
jthZbH/ue5wxZJUcb7NmEwL+3abpyDNmWs1qORHOFoE3t97/9XMmeSCpM2+KnSKJvsV5VbuoTCOT
964fsEh7ey4IVb4aum095gQjLCqTmDm8DWFmaw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Oxo3AgNmVWgrXtMKDIThYfXr0YJfyFr7Bsjn2ge/G72mb25MA8Dbkd9ZZPtwqU1poazNnTng5Cx5
s8C1zMNEoo38jNY8zEUBjCCuasJgeMo5xsiha+3ZIBiuHS0KLrjLaPFIQZdsYevb44fg6J5YQLn5
jd1M6YdNMd1VwSezDxtbk9sN8ExPrmtwum/6L1ia9j9UlIzPTEaJ60Xz7tloPsgsbkborO2JLiIk
kIAY2q1b8tuhHzJ5DoXlvIo49wSDj75ncLrkwbAd26huob7aOmX1bS34pJLF17JzqYH0MoPJbHxb
RPdD+qUawXFsMSs2fOLnZrNxeG8L+TyAT0N8tQ==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
CIR/vwxo0IBrPr5+bMp2YuBCQTNBRIIbqgEB18Oewkc8CuHzGCAgPyQUBUKaUG3bBy+KDOPVxBP5
cE/d3QYZAT11fyB1OMMTrjmEIZcr0Vk3nVTAnivoxxxkmdzPjkj0OcGcU9fMArPi3dfTgIsKdtCq
94+mV/70WeprgijzuZFWD7uH+gVioY/+rq/Wc1O6x1n949w8YGgSCTurUvhsobx2bonoC317J0Wm
IX17XRkSBIFgzqA8iC+GV5oCfxIGkihKmXxjIJbMamlOdCOycEkjkh3JYmm7TLNxmI65iffsabR0
t5+iI0l8eJxFhElzWeREqE43cnJYLaKZBUA+DA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 101472)
`pragma protect data_block
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
gfez8726iIVHKT/N
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
