`timescale 1ns / 1ps

module lidar_parser (
    input             clk,
    input             reset,
    // uart_rx로부터 입력
    input      [ 7:0] rx_data,
    input             rx_done,
    // 파싱된 출력값
    output reg [15:0] distance,   // r (mm)
    output reg [15:0] angle,      // φ (0.1도 단위)
    output reg [ 5:0] quality,    // 품질
    output reg        data_valid  // 유효한 데이터 플래그
);

  // 상태 정의
  parameter WAIT_BYTE0 = 3'd0;
  parameter WAIT_BYTE1 = 3'd1;
  parameter WAIT_BYTE2 = 3'd2;
  parameter WAIT_BYTE3 = 3'd3;
  parameter WAIT_BYTE4 = 3'd4;

  reg [2:0] r_state;
  reg [7:0] r_byte0, r_byte1, r_byte2, r_byte3, r_byte4;

  always @(posedge clk or posedge reset) begin
    if (reset) begin
      r_state    <= WAIT_BYTE0;
      distance   <= 16'd0;
      angle      <= 16'd0;
      quality    <= 6'd0;
      data_valid <= 1'b0;
      r_byte0    <= 8'd0;
      r_byte1    <= 8'd0;
      r_byte2    <= 8'd0;
      r_byte3    <= 8'd0;
      r_byte4    <= 8'd0;
    end else begin
      data_valid <= 1'b0;

      if (rx_done) begin
        case (r_state)

          WAIT_BYTE0: begin
            // Start Flag 확인
            // Byte0의 비트0(S)와 비트1(~S)이 서로 반대여야 함
            if (rx_data[0] != rx_data[1]) begin
              r_byte0 <= rx_data;
              r_state <= WAIT_BYTE1;
            end
            // 아니면 동기화 안된거니까 계속 대기
          end

          WAIT_BYTE1: begin
            r_byte1 <= rx_data;
            r_state <= WAIT_BYTE2;
          end

          WAIT_BYTE2: begin
            r_byte2 <= rx_data;
            r_state <= WAIT_BYTE3;
          end

          WAIT_BYTE3: begin
            r_byte3 <= rx_data;
            r_state <= WAIT_BYTE4;
          end

          WAIT_BYTE4: begin
            r_byte4 <= rx_data;
            r_state <= WAIT_BYTE0;

            // 5바이트 다 모였으면 파싱
            // Quality 추출 (Byte0 상위 6비트)
            quality <= r_byte0[7:2];

            // Angle 추출 (Byte1, Byte2)
            // Byte1의 상위 7비트 + Byte2 전체
            angle <= {r_byte2, r_byte1[7:1]};

            // Distance 추출 (Byte3, Byte4)
            // Byte3 전체 + Byte4 전체
            distance <= {r_byte4, r_byte3};

            // Quality > 0 이고 Distance > 0 이면 유효
            if (r_byte0[7:2] > 0 && {r_byte4, r_byte3} > 0) begin
              data_valid <= 1'b1;
            end
          end

          default: r_state <= WAIT_BYTE0;
        endcase
      end
    end
  end

endmodule
