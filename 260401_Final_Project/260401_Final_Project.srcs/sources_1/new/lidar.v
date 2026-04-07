`timescale 1ns / 1ps

module lidar (
    input clk,
    input reset,  // active high
    input lidar1_rx,
    input lidar2_rx,
    inout [14:0] DDR_addr,
    inout [2:0] DDR_ba,
    inout DDR_cas_n,
    inout DDR_ck_n,
    inout DDR_ck_p
);

  lidar_top U_LIDAR_TOP (
      .clk(clk),
      .reset(reset),
      .lidar1_rx(lidar1_rx),
      .lidar2_rx(lidar2_rx)
  );

  lidar_sytem_wrapper U_LIDAR_SYSTEM_WRAPPER (
      .DDR_addr         (DDR_addr),
      .DDR_ba           (DDR_ba),
      .DDR_cas_n        (DDR_cas_n),
      .DDR_ck_n         (DDR_ck_n),
      .DDR_ck_p         (DDR_ck_p),
      .DDR_cke          (DDR_cke),
      .DDR_cs_n         (DDR_cs_n),
      .DDR_dm           (DDR_dm),
      .DDR_dq           (DDR_dq),
      .DDR_dqs_n        (DDR_dqs_n),
      .DDR_dqs_p        (DDR_dqs_p),
      .DDR_odt          (DDR_odt),
      .DDR_ras_n        (DDR_ras_n),
      .DDR_reset_n      (DDR_reset_n),
      .DDR_we_n         (DDR_we_n),
      .FIXED_IO_ddr_vrn (FIXED_IO_ddr_vrn),
      .FIXED_IO_ddr_vrp (FIXED_IO_ddr_vrp),
      .FIXED_IO_mio     (FIXED_IO_mio),
      .FIXED_IO_ps_clk  (FIXED_IO_ps_clk),
      .FIXED_IO_ps_porb (FIXED_IO_ps_porb),
      .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb)
  );
endmodule
