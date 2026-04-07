// =============================================================================
// coord_transform.sv
// LiDAR 극좌표 → 직교좌표 변환
//
// 입력:
//   distance_q2 : RPLiDAR 거리값 raw (실제거리 = distance_q2 / 4.0 mm)
//   angle_q6    : RPLiDAR 각도값 raw (실제각도 = angle_q6 / 64.0 degree)
//   timer_val   : AXI Timer 32bit 카운터값 (x좌표 계산용)
//   data_valid  : lidar_parser의 o_data_valid (1클럭 펄스)
//
// 출력:
//   o_x : 벨트 이동 방향 좌표 (mm 단위 고정소수점 Q8)
//   o_y : 벨트 폭 방향 좌표   (mm 단위 고정소수점 Q8)
//   o_z : 높이 방향 좌표       (mm 단위 고정소수점 Q8)
//   o_valid : 좌표 출력 유효 펄스
//
// 변환 수식:
//   x = BELT_SPEED_Q8 * timer_val / TIMER_FREQ
//   y = (distance_q2 / 4) * cos(angle_q6 / 64 * π/180)
//   z = (distance_q2 / 4) * sin(angle_q6 / 64 * π/180)
//
// CORDIC IP 설정:
//   Functional Selection : Sin and Cos
//   Phase Format         : Scaled Radians
//                          → 입력 범위: -1.0 ~ +1.0 이 -π ~ +π에 대응
//                          → 1.0 = 2^15 - 1 = 32767 (16bit signed)
//   Input Width          : 16bit
//   Output Width         : 16bit (상위 8bit = cos, 하위 8bit = sin) -- Vivado 실제 출력은 32bit tdata로 묶임
//   Pipelining Mode      : Maximum
// =============================================================================
`timescale 1ns / 1ps
module coord_transform #(
    // 벨트 속도 (mm/s), Q8 고정소수점
    // 예: 실제 속도 100mm/s → BELT_SPEED_Q8 = 100 * 256 = 25600
    parameter integer BELT_SPEED_Q8 = 25600,

    // AXI Timer 클럭 주파수 (Hz)
    // Zybo Z7-20 기본 FCLK_CLK0 = 100MHz
    parameter integer TIMER_FREQ = 100_000_000
) (
    input logic clk,
    input logic reset,

    // lidar_parser 인터페이스
    input logic [15:0] distance_q2,
    input logic [14:0] angle_q6,
    input logic        data_valid,

    // AXI Timer 카운터값
    input logic [31:0] timer_val,

    // 좌표 출력 (Q8 고정소수점, 단위 mm)
    output logic signed [31:0] o_x,
    output logic signed [31:0] o_y,
    output logic signed [31:0] o_z,
    output logic               o_valid
);

  // =========================================================================
  // 1단계: angle_q6 → CORDIC 입력값 변환
  //
  // RPLiDAR angle_q6: 0 ~ 23040 (0 ~ 360도, 64배 스케일)
  // CORDIC Scaled Radians: -32768 ~ +32767 이 -π ~ +π 에 대응
  //
  // 변환:
  //   angle_deg = angle_q6 / 64.0
  //   angle_rad = angle_deg * π / 180
  //   cordic_in = angle_rad / π * 32767
  //             = angle_q6 / 64.0 / 180 * 32767
  //             = angle_q6 * 32767 / 11520
  //
  // 11520 = 64 * 180
  // =========================================================================

  // angle_q6 → cordic 입력 변환 (파이프라인 1단계)
  logic signed [15:0] r_cordic_phase;
  logic               r_cordic_valid;
  logic        [31:0] r_timer_snap;  // timer 스냅샷 (data_valid 시점)
  logic        [15:0] r_distance_q2;  // distance 스냅샷

  always_ff @(posedge clk or posedge reset) begin
    if (reset) begin
      r_cordic_phase <= 16'sd0;
      r_cordic_valid <= 1'b0;
      r_timer_snap   <= 32'h0;
      r_distance_q2  <= 16'h0;
    end else begin
      r_cordic_valid <= 1'b0;
      if (data_valid) begin
        // angle_q6 * 32767 / 11520
        // 오버플로우 방지: 32bit 중간 계산
        r_cordic_phase <= $signed((32'(angle_q6) * 32'd32767) / 32'd11520);
        r_cordic_valid <= 1'b1;
        r_timer_snap   <= timer_val;
        r_distance_q2  <= distance_q2;
      end
    end
  end

  // =========================================================================
  // 2단계: CORDIC IP 인스턴스화
  //
  // Vivado CORDIC IP (AXI4-Stream 인터페이스):
  //   s_axis_phase_tdata  [15:0] : 입력 각도 (Scaled Radians, signed)
  //   s_axis_phase_tvalid        : 입력 유효
  //   m_axis_dout_tdata   [31:0] : 출력 {cos[15:0], sin[15:0]} 또는 반대
  //                                 Vivado 기본: [31:16]=cos, [15:0]=sin
  //   m_axis_dout_tvalid         : 출력 유효 (Maximum pipeline 지연 후)
  // =========================================================================

  logic [31:0] w_sincos_data;
  logic        w_sincos_valid;

  cordic_0 U_CORDIC_0 (
      .aclk               (clk),
      .s_axis_phase_tdata (r_cordic_phase),
      .s_axis_phase_tvalid(r_cordic_valid),
      .m_axis_dout_tdata  (w_sincos_data),
      .m_axis_dout_tvalid (w_sincos_valid)
  );

  // sin, cos 분리
  // Vivado CORDIC 출력: tdata[31:16] = cos, tdata[15:0] = sin
  logic signed [15:0] w_cos;
  logic signed [15:0] w_sin;
  assign w_cos = $signed(w_sincos_data[31:16]);
  assign w_sin = $signed(w_sincos_data[15:0]);

  // =========================================================================
  // 3단계: CORDIC 파이프라인 지연 동안 distance, timer 지연 맞추기
  //
  // Maximum pipeline 모드에서 지연 사이클 수는 Vivado IP Report에서 확인
  // 여기서는 CORDIC_LATENCY 파라미터로 조정 가능하도록 시프트 레지스터 사용
  // =========================================================================

  parameter integer CORDIC_LATENCY = 16;  // Vivado IP Report에서 확인 후 수정

  logic [15:0] r_dist_pipe [0:CORDIC_LATENCY-1];
  logic [31:0] r_timer_pipe[0:CORDIC_LATENCY-1];

  always_ff @(posedge clk or posedge reset) begin
    if (reset) begin
      for (int i = 0; i < CORDIC_LATENCY; i++) begin
        r_dist_pipe[i]  <= 16'h0;
        r_timer_pipe[i] <= 32'h0;
      end
    end else begin
      r_dist_pipe[0]  <= r_distance_q2;
      r_timer_pipe[0] <= r_timer_snap;
      for (int i = 1; i < CORDIC_LATENCY; i++) begin
        r_dist_pipe[i]  <= r_dist_pipe[i-1];
        r_timer_pipe[i] <= r_timer_pipe[i-1];
      end
    end
  end

  // CORDIC 출력과 타이밍이 맞춰진 distance, timer
  logic [15:0] w_dist_aligned;
  logic [31:0] w_timer_aligned;
  assign w_dist_aligned  = r_dist_pipe[CORDIC_LATENCY-1];
  assign w_timer_aligned = r_timer_pipe[CORDIC_LATENCY-1];

  // =========================================================================
  // 4단계: 좌표 계산
  //
  // y = (distance_q2 / 4) * cos  → distance_q2 * cos / 4
  // z = (distance_q2 / 4) * sin  → distance_q2 * sin / 4
  // x = BELT_SPEED_Q8 * timer_val / TIMER_FREQ / 256  (Q8 → 실제값)
  //
  // CORDIC 출력은 Q15 고정소수점 (1.0 = 32767)
  // distance_q2 / 4 = 실제 거리 (mm)
  // y = dist_mm * cos_q15 / 32767
  //   = (distance_q2 / 4) * cos_q15 / 32767
  //   = distance_q2 * cos_q15 / (4 * 32767)
  // =========================================================================

  always_ff @(posedge clk or posedge reset) begin
    if (reset) begin
      o_x     <= 32'sd0;
      o_y     <= 32'sd0;
      o_z     <= 32'sd0;
      o_valid <= 1'b0;
    end else begin
      o_valid <= 1'b0;
      if (w_sincos_valid) begin
        // y = distance_q2 * cos / (4 * 32767)  [Q8]
        o_y <= $signed(($signed(32'(w_dist_aligned)) * $signed(32'(w_cos))) / 32'sd131068);

        // z = distance_q2 * sin / (4 * 32767)  [Q8]
        o_z <= $signed(($signed(32'(w_dist_aligned)) * $signed(32'(w_sin))) / 32'sd131068);

        // x = BELT_SPEED_Q8 * timer_val / TIMER_FREQ / 256
        // = BELT_SPEED_Q8 * timer_val / (TIMER_FREQ * 256)
        o_x <= $signed((64'(BELT_SPEED_Q8) * 64'(w_timer_aligned)) / 64'(TIMER_FREQ * 256));

        o_valid <= 1'b1;
      end
    end
  end

endmodule
