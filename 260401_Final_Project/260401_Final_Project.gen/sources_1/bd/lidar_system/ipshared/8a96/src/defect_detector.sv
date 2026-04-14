`timescale 1ns / 1ps

module defect_detector #(
    // 단위: Q8 고정소수점 (실제값 * 256)
    // 예: 실제 50mm → 50 * 256 = 12800

    // 정상 높이 범위 (z축)
    parameter signed [31:0] Z_MIN = 32'sd5120,  // 20mm * 256
    parameter signed [31:0] Z_MAX = 32'sd25600, // 100mm * 256

    // 정상 폭 범위 (y축)
    parameter signed [31:0] Y_MIN = 32'sd5120,  // 20mm * 256
    parameter signed [31:0] Y_MAX = 32'sd51200, // 200mm * 256

    // 스웰링 감지: 최대 허용 z 편차 (양쪽 대칭 비교용)
    parameter signed [31:0] Z_SWELL_THRESH = 32'sd2560  // 10mm * 256
) (
    input logic clk,
    input logic reset,

    // coord_transform 인터페이스
    input logic signed [31:0] i_x,
    input logic signed [31:0] i_y,
    input logic signed [31:0] i_z,
    input logic               i_valid,

    // 적외선 센서: 물품 진입/이탈 감지
    // 1 = 물품 있음, 0 = 물품 없음
    input logic i_trigger,

    // 불량 판정 출력
    output logic o_defect,       // 1 = 불량
    output logic o_defect_valid  // 1클럭 펄스: 판정 완료
);

  // =========================================================================
  // 물품 통과 감지 (trigger 하강엣지 = 물품 이탈)
  // =========================================================================
  logic r_trigger_prev;
  logic w_item_exit;  // 물품 이탈 펄스 (판정 트리거)
  logic w_item_enter;  // 물품 진입 펄스

  always_ff @(posedge clk or posedge reset) begin
    if (reset) r_trigger_prev <= 1'b0;
    else r_trigger_prev <= i_trigger;
  end

  assign w_item_enter = (i_trigger & ~r_trigger_prev);  // 상승엣지
  assign w_item_exit  = (~i_trigger & r_trigger_prev);  // 하강엣지

  // =========================================================================
  // 물품 통과 중 z, y 최대/최솟값 누적
  // =========================================================================
  logic signed [31:0] r_z_max;
  logic signed [31:0] r_z_min;
  logic signed [31:0] r_y_max;
  logic signed [31:0] r_y_min;

  always_ff @(posedge clk or posedge reset) begin
    if (reset) begin
      r_z_max <= 32'sd0;
      r_z_min <= 32'sh7FFFFFFF;
      r_y_max <= 32'sd0;
      r_y_min <= 32'sh7FFFFFFF;
    end else begin
      // 물품 진입 시 누적값 초기화
      if (w_item_enter) begin
        r_z_max <= 32'sd0;
        r_z_min <= 32'sh7FFFFFFF;
        r_y_max <= 32'sd0;
        r_y_min <= 32'sh7FFFFFFF;
      end  // 물품 통과 중 좌표 누적
      else if (i_valid && i_trigger) begin
        // z 최대/최솟값 갱신
        if (i_z > r_z_max) r_z_max <= i_z;
        if (i_z < r_z_min) r_z_min <= i_z;

        // y 최대/최솟값 갱신 (절댓값 기준)
        if (i_y > r_y_max) r_y_max <= i_y;
        if (i_y < r_y_min) r_y_min <= i_y;
      end
    end
  end

  // =========================================================================
  // 물품 이탈 시 불량 판정
  // =========================================================================
  always_ff @(posedge clk or posedge reset) begin
    if (reset) begin
      o_defect       <= 1'b0;
      o_defect_valid <= 1'b0;
    end else begin
      o_defect_valid <= 1'b0;

      if (w_item_exit) begin
        // 높이 판정: z_max가 정상 범위 벗어나면 불량
        // 폭 판정:   y 범위(y_max - y_min)가 정상 범위 벗어나면 불량
        // 스웰링 판정: z 편차(z_max - z_min)가 임계값 초과하면 불량
        if ((r_z_max > Z_MAX) ||  // 높이 초과
            (r_z_max < Z_MIN) ||  // 높이 미달
            ((r_y_max - r_y_min) > (Y_MAX - Y_MIN)) ||  // 폭 초과
            ((r_y_max - r_y_min) < (Y_MAX - Y_MIN) / 4) ||  // 폭 미달
            ((r_z_max - r_z_min) > Z_SWELL_THRESH)  // 스웰링 의심
            ) begin
          o_defect <= 1'b1;
        end else begin
          o_defect <= 1'b0;
        end

        o_defect_valid <= 1'b1;
      end
    end
  end

endmodule
