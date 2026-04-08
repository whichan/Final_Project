`timescale 1ns / 1ps

module lidar_top (
    input  logic               clk,
    input  logic               reset,
    // LiDAR UART 입력
    input  logic               lidar1_rx,
    input  logic               lidar2_rx,
    // 적외선 센서
    input  logic               i_trigger,
    // AXI Timer 카운터값 (PS → PL)
    input  logic        [31:0] timer_val,
    // 최종 불량 판정 출력
    output logic               o_defect,
    output logic               o_defect_valid,
    output logic signed [31:0] o_x1,
    output logic signed [31:0] o_y1,
    output logic signed [31:0] o_z1,
    output logic signed [31:0] o_x2,
    output logic signed [31:0] o_y2,
    output logic signed [31:0] o_z2,
    output logic signed        o_coord_valid1,
    output logic signed        o_coord_valid2
);


  // LiDAR1

  // uart_rx
  logic [ 7:0] w_rx_data1;
  logic        w_rx_done1;
  // --- lidar_parser ---
  logic [15:0] w_dist1;
  logic [14:0] w_angle1;
  logic [ 5:0] w_quality1;
  logic        w_start1;
  logic        w_parser_valid1;
  // --- coord_transform1 ---
  logic signed [31:0] w_x1, w_y1, w_z1;
  logic        w_coord_valid1;
  // --- defect_detector1 ---
  logic        w_defect1;
  logic        w_defect_valid1;
  // LiDAR2 파이프라인

  // --- uart_rx2 ---
  logic [ 7:0] w_rx_data2;
  logic        w_rx_done2;
  // --- lidar_parser2 ---
  logic [15:0] w_dist2;
  logic [14:0] w_angle2;
  logic [ 5:0] w_quality2;
  logic        w_start2;
  logic        w_parser_valid2;
  // --- coord_transform2 ---
  logic signed [31:0] w_x2, w_y2, w_z2;
  logic w_coord_valid2;
  // --- defect_detector② ---
  logic w_defect2;
  logic w_defect_valid2;


  assign o_coord_valid1 = w_coord_valid1;
  assign o_coord_valid2 = w_coord_valid2;
  assign o_x1 = w_x1;
  assign o_y1 = w_y1;
  assign o_z1 = w_z1;
  assign o_x2 = w_x2;
  assign o_y2 = w_y2;
  assign o_z2 = w_z2;



  uart_rx #(
      .BPS(115200)
  ) u_uart_rx1 (
      .clk    (clk),
      .reset  (reset),
      .rx     (lidar1_rx),
      .rx_data(w_rx_data1),
      .rx_done(w_rx_done1)
  );


  lidar_parser u_parser1 (
      .clk          (clk),
      .reset        (reset),
      .rx_valid     (w_rx_done1),
      .rx_data      (w_rx_data1),
      .o_distance_q2(w_dist1),
      .o_angle_q6   (w_angle1),
      .o_quality    (w_quality1),
      .o_start_flag (w_start1),
      .o_data_valid (w_parser_valid1)
  );


  coord_transform U_COORD1 (
      .clk        (clk),
      .reset      (reset),
      .distance_q2(w_dist1),
      .angle_q6   (w_angle1),
      .data_valid (w_parser_valid1),
      .timer_val  (timer_val),
      .o_x        (w_x1),
      .o_y        (w_y1),
      .o_z        (w_z1),
      .o_valid    (w_coord_valid1)
  );



  defect_detector u_defect1 (
      .clk           (clk),
      .reset         (reset),
      .i_x           (w_x1),
      .i_y           (w_y1),
      .i_z           (w_z1),
      .i_valid       (w_coord_valid1),
      .i_trigger     (i_trigger),
      .o_defect      (w_defect1),
      .o_defect_valid(w_defect_valid1)
  );



  uart_rx #(
      .BPS(115200)
  ) u_uart_rx2 (
      .clk    (clk),
      .reset  (reset),
      .rx     (lidar2_rx),
      .rx_data(w_rx_data2),
      .rx_done(w_rx_done2)
  );



  lidar_parser u_parser2 (
      .clk          (clk),
      .reset        (reset),
      .rx_valid     (w_rx_done2),
      .rx_data      (w_rx_data2),
      .o_distance_q2(w_dist2),
      .o_angle_q6   (w_angle2),
      .o_quality    (w_quality2),
      .o_start_flag (w_start2),
      .o_data_valid (w_parser_valid2)
  );



  coord_transform u_coord2 (
      .clk        (clk),
      .reset      (reset),
      .distance_q2(w_dist2),
      .angle_q6   (w_angle2),
      .data_valid (w_parser_valid2),
      .timer_val  (timer_val),
      .o_x        (w_x2),
      .o_y        (w_y2),
      .o_z        (w_z2),
      .o_valid    (w_coord_valid2)
  );


  defect_detector u_defect2 (
      .clk           (clk),
      .reset         (reset),
      .i_x           (w_x2),
      .i_y           (w_y2),
      .i_z           (w_z2),
      .i_valid       (w_coord_valid2),
      .i_trigger     (i_trigger),
      .o_defect      (w_defect2),
      .o_defect_valid(w_defect_valid2)
  );

  // 최종 불량 판정
  // LiDAR1 OR LiDAR2 중 하나라도 불량이면 최종 불량
  always_ff @(posedge clk or posedge reset) begin
    if (reset) begin
      o_defect       <= 1'b0;
      o_defect_valid <= 1'b0;
    end else begin
      o_defect_valid <= 1'b0;
      if (w_defect_valid1 || w_defect_valid2) begin
        o_defect       <= w_defect1 | w_defect2;
        o_defect_valid <= 1'b1;
      end
    end
  end

endmodule
