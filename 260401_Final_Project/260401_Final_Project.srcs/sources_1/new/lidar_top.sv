`timescale 1ns / 1ps

module lidar_top (
    input  logic               clk,
    input  logic               reset,
    // LiDAR UART 입력
    input  logic               lidar1_rx,
    input  logic               lidar2_rx,
    // 적외선 센서
    input  logic               i_trigger,
    // 최종 불량 판정 출력
    output logic               o_defect,
    output logic               o_defect_valid,
    output logic signed [31:0] o_x1,
    output logic signed [31:0] o_y1,
    output logic signed [31:0] o_z1,
    output logic signed [31:0] o_x2,
    output logic signed [31:0] o_y2,
    output logic signed [31:0] o_z2,
    output logic               o_coord_valid1,
    output logic               o_coord_valid2
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
  ) U_UART_RX1 (
      .clk    (clk),
      .reset  (reset),
      .rx     (lidar1_rx),
      .rx_data(w_rx_data1),
      .rx_done(w_rx_done1)
  );


  lidar_parser U_PARSER1 (
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


  coord_transform #(
      .BELT_SPEED_Q8(25600),  //1초에 몇 mm 이동하는지
      .TIMER_FREQ(100_000_000),  //x좌표를 시간 기준으로 계산할 때 사용
      .CORDIC_LATENCY(20)  //CORDIC IP가 sin, cos을 내보내기까지 걸리는 시간
  ) U_COORD_TRANSFORM1 (
      .clk(clk),
      .reset(reset),
      .i_trigger(i_trigger),  //적외선 센서 신호
      .distance_q2(w_dist1),  //4배 스케일링 된 거리 데이터
      .angle_q6(w_angle1),  //64배 스케일링 된 각도 데이터
      .data_valid(w_parser_valid1),  //새로운 데이터 한 점이 들어왔다는 신호(라이다가 보내줌)
      .o_x(w_x1),  // Q8 mm
      .o_y(w_y1),  // Q8 mm
      .o_z(w_z1),  // Q8 mm
      .o_valid(w_coord_valid1)  //모든 CORDIC 연산이 끝났으니 이 좌표값을 읽어가도 좋다는 신호.
      //PS가 이 신호를 읽음
  );



  defect_detector U_DEFECT1 (
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
  ) U_UART_RX2 (
      .clk    (clk),
      .reset  (reset),
      .rx     (lidar2_rx),
      .rx_data(w_rx_data2),
      .rx_done(w_rx_done2)
  );



  lidar_parser U_PARSER2 (
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



  coord_transform #(
      .BELT_SPEED_Q8 (25600),        //1초에 몇 mm 이동하는지
      .TIMER_FREQ    (100_000_000),  //x좌표를 시간 기준으로 계산할 때 사용
      .CORDIC_LATENCY(20)            //CORDIC IP가 sin, cos을 내보내기까지 걸리는 시간
  ) U_COORD_TRANSFORM2 (
      .clk(clk),
      .reset(reset),
      .i_trigger(i_trigger),  //적외선 센서 신호
      .distance_q2(w_dist2),  //4배 스케일링 된 거리 데이터
      .angle_q6(w_angle2),  //64배 스케일링 된 각도 데이터
      .data_valid(w_parser_valid2),  //새로운 데이터 한 점이 들어왔다는 신호(라이다가 보내줌)
      .o_x(w_x2),  // Q8 mm
      .o_y(w_y2),  // Q8 mm
      .o_z(w_z2),  // Q8 mm
      .o_valid(w_coord_valid2)  //모든 CORDIC 연산이 끝났으니 이 좌표값을 읽어가도 좋다는 신호.
  );


  defect_detector U_DEFECT2 (
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
