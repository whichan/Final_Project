`timescale 1 ns / 1 ps

module LiDAR_v1_0 #(
    // Users to add parameters here

    // User parameters ends
    // Do not modify the parameters beyond this line


    // Parameters of Axi Slave Bus Interface S00_AXI
    parameter integer C_S00_AXI_DATA_WIDTH = 32,
    parameter integer C_S00_AXI_ADDR_WIDTH = 6
) (
    // Users to add ports here
    input wire lidar1_rx,
    input wire lidar2_rx,
    input wire i_trigger,
    // User ports ends
    // Do not modify the ports beyond this line


    // Ports of Axi Slave Bus Interface S00_AXI
    input  wire                                  s00_axi_aclk,
    input  wire                                  s00_axi_aresetn,
    input  wire [    C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_awaddr,
    input  wire [                         2 : 0] s00_axi_awprot,
    input  wire                                  s00_axi_awvalid,
    output wire                                  s00_axi_awready,
    input  wire [    C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_wdata,
    input  wire [(C_S00_AXI_DATA_WIDTH/8)-1 : 0] s00_axi_wstrb,
    input  wire                                  s00_axi_wvalid,
    output wire                                  s00_axi_wready,
    output wire [                         1 : 0] s00_axi_bresp,
    output wire                                  s00_axi_bvalid,
    input  wire                                  s00_axi_bready,
    input  wire [    C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_araddr,
    input  wire [                         2 : 0] s00_axi_arprot,
    input  wire                                  s00_axi_arvalid,
    output wire                                  s00_axi_arready,
    output wire [    C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_rdata,
    output wire [                         1 : 0] s00_axi_rresp,
    output wire                                  s00_axi_rvalid,
    input  wire                                  s00_axi_rready
);

  wire               w_defect;
  wire               w_defect_valid;
  wire signed [31:0] w_x1;
  wire signed [31:0] w_y1;
  wire signed [31:0] w_z1;
  wire signed [31:0] w_x2;
  wire signed [31:0] w_y2;
  wire signed [31:0] w_z2;
  wire               w_coord_valid1;
  wire               w_coord_valid2;

  // Instantiation of Axi Bus Interface S00_AXI
  LiDAR_v1_0_S00_AXI #(
      .C_S_AXI_DATA_WIDTH(C_S00_AXI_DATA_WIDTH),
      .C_S_AXI_ADDR_WIDTH(C_S00_AXI_ADDR_WIDTH)
  ) LiDAR_v1_0_S00_AXI_inst (
      .x1           (w_x1),
      .y1           (w_y1),
      .z1           (w_z1),
      .valid1       (w_coord_valid1),
      .x2           (w_x2),
      .y2           (w_y2),
      .z2           (w_z2),
      .valid2       (w_coord_valid2),
      .defect       (w_defect),
      .defect_valid (w_defect_valid),
      .S_AXI_ACLK   (s00_axi_aclk),
      .S_AXI_ARESETN(s00_axi_aresetn),
      .S_AXI_AWADDR (s00_axi_awaddr),
      .S_AXI_AWPROT (s00_axi_awprot),
      .S_AXI_AWVALID(s00_axi_awvalid),
      .S_AXI_AWREADY(s00_axi_awready),
      .S_AXI_WDATA  (s00_axi_wdata),
      .S_AXI_WSTRB  (s00_axi_wstrb),
      .S_AXI_WVALID (s00_axi_wvalid),
      .S_AXI_WREADY (s00_axi_wready),
      .S_AXI_BRESP  (s00_axi_bresp),
      .S_AXI_BVALID (s00_axi_bvalid),
      .S_AXI_BREADY (s00_axi_bready),
      .S_AXI_ARADDR (s00_axi_araddr),
      .S_AXI_ARPROT (s00_axi_arprot),
      .S_AXI_ARVALID(s00_axi_arvalid),
      .S_AXI_ARREADY(s00_axi_arready),
      .S_AXI_RDATA  (s00_axi_rdata),
      .S_AXI_RRESP  (s00_axi_rresp),
      .S_AXI_RVALID (s00_axi_rvalid),
      .S_AXI_RREADY (s00_axi_rready)
  );

  // Add user logic here
  lidar_top U_LIDAR_TOP (
      .clk           (s00_axi_aclk),
      .reset         (~s00_axi_aresetn),  //active high reset
      .lidar1_rx     (lidar1_rx),
      .lidar2_rx     (lidar2_rx),
      .i_trigger     (i_trigger),
      .o_defect      (w_defect),
      .o_defect_valid(w_defect_valid),
      .o_x1          (w_x1),
      .o_y1          (w_y1),
      .o_z1          (w_z1),
      .o_x2          (w_x2),
      .o_y2          (w_y2),
      .o_z2          (w_z2),
      .o_coord_valid1(w_coord_valid1),
      .o_coord_valid2(w_coord_valid2)
  );
  // User logic ends

endmodule
