`timescale 1ns / 1ps

module lidar_parser (
    input  logic        clk,
    input  logic        reset,
    // uart_rx 인터페이스
    input  logic        rx_valid,       // 1클럭 펄스: 수신 완료
    input  logic [ 7:0] rx_data,        // 수신된 바이트
    // 파싱 결과 출력
    output logic [15:0] o_distance_q2,  // distance_q2 raw값 (실제거리 = /4.0 mm)
    output logic [14:0] o_angle_q6,     // angle_q6 raw값    (실제각도 = /64.0 deg)
    output logic [ 5:0] o_quality,      // 측정 품질
    output logic        o_start_flag,   // S=1: 새 360도 스캔 시작
    output logic        o_data_valid    // 1클럭 펄스: 파싱 완료
);

  // -------------------------------------------------------------------------
  // FSM 상태 정의
  // -------------------------------------------------------------------------
  typedef enum logic [2:0] {
    WAIT_BYTE0 = 3'd0,  // Byte0 동기화 대기
    WAIT_BYTE1 = 3'd1,  // Byte1 대기 (C bit 검증)
    WAIT_BYTE2 = 3'd2,  // Byte2 대기
    WAIT_BYTE3 = 3'd3,  // Byte3 대기
    WAIT_BYTE4 = 3'd4   // Byte4 대기 → 파싱 완료
  } state_t;

  state_t r_state;

  // -------------------------------------------------------------------------
  // 바이트 저장 레지스터
  // -------------------------------------------------------------------------
  logic [7:0] r_byte0;
  logic [7:0] r_byte1;
  logic [7:0] r_byte2;
  logic [7:0] r_byte3;
  // Byte4는 도착 즉시 조합하므로 별도 레지스터 불필요

  // -------------------------------------------------------------------------
  // FSM
  // -------------------------------------------------------------------------
  always_ff @(posedge clk or posedge reset) begin
    if (!reset) begin
      r_state       <= WAIT_BYTE0;
      r_byte0       <= 8'h00;
      r_byte1       <= 8'h00;
      r_byte2       <= 8'h00;
      r_byte3       <= 8'h00;
      o_distance_q2 <= 16'h0000;
      o_angle_q6    <= 15'h0000;
      o_quality     <= 6'h00;
      o_start_flag  <= 1'b0;
      o_data_valid  <= 1'b0;
    end else begin
      // data_valid는 1클럭 펄스
      o_data_valid <= 1'b0;
      if (rx_valid) begin
        case (r_state)
          //이 조건이 깨지면 해당 바이트는 Byte0이 아님
          WAIT_BYTE0: begin
            if (rx_data[1] != rx_data[0]) begin
              r_byte0 <= rx_data;
              r_state <= WAIT_BYTE1;
            end
          end

          // WAIT_BYTE1: C bit 검증
          // C=0이면 패킷 오류 → Byte0부터 재동기화
          WAIT_BYTE1: begin
            if (rx_data[0] == 1'b1) begin
              r_byte1 <= rx_data;
              r_state <= WAIT_BYTE2;
            end else begin
              // C bit 오류: 재동기화
              // 현재 바이트가 Byte0일 수도 있으므로 검사
              if (rx_data[1] != rx_data[0]) begin
                r_byte0 <= rx_data;
                r_state <= WAIT_BYTE1;
              end else begin
                r_state <= WAIT_BYTE0;
              end
            end
          end

          // WAIT_BYTE2: angle_q6[14:7] 저장
          WAIT_BYTE2: begin
            r_byte2 <= rx_data;
            r_state <= WAIT_BYTE3;
          end

          // WAIT_BYTE3: distance_q2[7:0] 저장
          WAIT_BYTE3: begin
            r_byte3 <= rx_data;
            r_state <= WAIT_BYTE4;
          end

          // WAIT_BYTE4: distance_q2[15:8] 저장 → 파싱 완료
          WAIT_BYTE4: begin
            // --- 필드 조합 ---
            // distance_q2: Byte4[7:0] = [15:8], Byte3[7:0] = [7:0]
            o_distance_q2 <= {rx_data[7:0], r_byte3[7:0]};
            // angle_q6: Byte2[7:0] = [14:7], Byte1[7:1] = [6:0]
            o_angle_q6    <= {r_byte2[7:0], r_byte1[7:1]};
            // quality: Byte0[7:2]
            o_quality     <= r_byte0[7:2];
            // start_flag: Byte0[0] (S)
            o_start_flag  <= r_byte0[0];
            // 파싱 완료 펄스
            o_data_valid  <= 1'b1;
            // 다음 패킷 대기
            r_state       <= WAIT_BYTE0;
          end

          default: r_state <= WAIT_BYTE0;
        endcase
      end
    end
  end

endmodule
