`timescale 1ns / 1ps

// ============================================================
//  lidar_parser.sv
//  YDLIDAR X4 Pro 패킷 파서
//
//  패킷 구조:
//  [0xAA][0x55][PacketType][SampleNum]
//  [StartAngle_L][StartAngle_H]
//  [EndAngle_L][EndAngle_H]
//  [CheckCode_L][CheckCode_H]
//  [Dist0_L][Dist0_H] ... [DistN_L][DistN_H]
//
//  각도: raw_angle / 64 = 실제 각도(degree)
// ============================================================

module lidar_parser (
    input logic clk,
    input logic reset,

    // uart_rx_fifo pop 인터페이스
    input logic [7:0] rx_data,
    input logic       rx_done,  // 1바이트 수신 완료 펄스

    // 파싱 결과 출력
    output logic [15:0] o_distance,   // 거리 (mm)
    output logic [15:0] o_angle_raw,  // 각도 × 64 (raw)
    output logic        o_valid,      // 유효 데이터 펄스 (1클럭)

    // 디버그용
    output logic o_header_ok,    // 헤더 정상 감지
    output logic o_checksum_err  // 체크섬 오류 (추후 확장)
);

    // ── 상태 정의 ─────────────────────────────────────────
    typedef enum logic [3:0] {
        S_IDLE        = 4'd0,
        S_HEADER2     = 4'd1,
        S_PKT_TYPE    = 4'd2,
        S_SAMPLE_NUM  = 4'd3,
        S_START_ANG_L = 4'd4,
        S_START_ANG_H = 4'd5,
        S_END_ANG_L   = 4'd6,
        S_END_ANG_H   = 4'd7,
        S_CHECK_L     = 4'd8,
        S_CHECK_H     = 4'd9,
        S_DATA_L      = 4'd10,
        S_DATA_H      = 4'd11
    } state_t;

    state_t        r_state;

    // ── 내부 레지스터 ─────────────────────────────────────
    logic   [ 7:0] r_sample_num;  // 패킷 내 총 샘플 수
    logic   [ 7:0] r_sample_cnt;  // 현재 처리 중인 샘플 인덱스
    logic   [15:0] r_start_angle;  // 시작 각도 raw
    logic   [15:0] r_end_angle;  // 끝 각도 raw
    logic   [ 7:0] r_dist_l;  // 거리 하위 바이트 임시
    logic   [15:0] r_angle_accum;  // 각도 누산기
    logic   [15:0] r_angle_step;  // 샘플 간 각도 스텝
    logic   [15:0] w_end_angle;

    // ── 출력 레지스터 ─────────────────────────────────────
    logic   [15:0] r_distance;
    logic   [15:0] r_angle_raw;
    logic          r_valid;
    logic          r_header_ok;
    logic          r_checksum_err;
    logic [15:0] w_start, w_end, w_diff;


    assign o_distance     = r_distance;
    assign o_angle_raw    = r_angle_raw;
    assign o_valid        = r_valid;
    assign o_header_ok    = r_header_ok;
    assign o_checksum_err = r_checksum_err;
    assign w_end_angle    = {rx_data, r_end_angle[7:0]};

    // ── FSM ───────────────────────────────────────────────
    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            r_state        <= S_IDLE;
            r_sample_num   <= 8'd0;
            r_sample_cnt   <= 8'd0;
            r_start_angle  <= 16'd0;
            r_end_angle    <= 16'd0;
            r_dist_l       <= 8'd0;
            r_distance     <= 16'd0;
            r_angle_raw    <= 16'd0;
            r_angle_accum  <= 16'd0;
            r_angle_step   <= 16'd0;
            r_valid        <= 1'b0;
            r_header_ok    <= 1'b0;
            r_checksum_err <= 1'b0;
        end else begin
            r_valid        <= 1'b0;
            r_checksum_err <= 1'b0;

            if (rx_done) begin
                case (r_state)

                    // 헤더 첫 번째 바이트 대기
                    S_IDLE: begin
                        r_header_ok <= 1'b0;
                        if (rx_data == 8'hAA) r_state <= S_HEADER2;
                    end

                    // 헤더 두 번째 바이트 확인
                    S_HEADER2: begin
                        if (rx_data == 8'h55) r_state <= S_PKT_TYPE;
                        else r_state <= S_IDLE;
                    end

                    // 패킷 타입 (0x00 = 스캔)
                    S_PKT_TYPE: begin
                        r_state <= S_SAMPLE_NUM;
                    end

                    // 샘플 수
                    S_SAMPLE_NUM: begin
                        r_sample_num <= rx_data;
                        r_sample_cnt <= 8'd0;
                        r_header_ok  <= 1'b1;
                        r_state      <= S_START_ANG_L;
                    end

                    // 시작 각도 하위
                    S_START_ANG_L: begin
                        r_start_angle[7:0] <= rx_data;
                        r_state            <= S_START_ANG_H;
                    end

                    // 시작 각도 상위
                    S_START_ANG_H: begin
                        r_start_angle[15:8] <= rx_data;
                        // 수정 — bit[0] 제거
                        r_angle_accum <= {rx_data, r_start_angle[7:0]} >> 1;
                        // 수정전
                        // r_angle_accum       <= {rx_data, r_start_angle[7:0]};
                        r_state <= S_END_ANG_L;
                    end

                    // 끝 각도 하위
                    S_END_ANG_L: begin
                        r_end_angle[7:0] <= rx_data;
                        r_state          <= S_END_ANG_H;
                    end

                    // 끝 각도 상위 + 스텝 계산 --> 수정후
                    S_END_ANG_H: begin
                        r_end_angle[15:8] <= rx_data;

                        // end/start 각도 bit[0] 플래그 제거 후 실제 각도 계산
                        begin
                            w_start = r_start_angle >> 1;
                            w_end   = {rx_data, r_end_angle[7:0]} >> 1;

                            // 360° 경계 래핑 처리
                            if (w_end >= w_start) w_diff = w_end - w_start;
                            else
                                w_diff = 16'd23040 - w_start + w_end;  // 23040 = 360 × 64
                            r_angle_step  <= (r_sample_num > 1) ? w_diff / (r_sample_num - 1) : 16'd0;
                        end

                        r_state <= S_CHECK_L;
                    end

                    // // 끝 각도 상위 + 스텝 계산 --> 수정전
                    // S_END_ANG_H: begin
                    //     r_end_angle[15:8] <= rx_data;
                    //     // step = (end - start) / sample_num
                    //     // sample_num 보통 40 → /40 ≈ >>6 (64) 근사
                    //     // 더 정확하려면 나눗셈 IP 필요
                    //     r_angle_step <= ({rx_data, r_end_angle[7:0]} - r_start_angle) >> 6;
                    //     r_state <= S_CHECK_L;
                    // end

                    // 체크코드 (수신만 하고 패스)
                    S_CHECK_L: begin
                        r_state <= S_CHECK_H;
                    end

                    S_CHECK_H: begin
                        r_state <= S_DATA_L;
                    end

                    // 거리 하위 바이트
                    S_DATA_L: begin
                        r_dist_l <= rx_data;
                        r_state  <= S_DATA_H;
                    end

                    // 거리 상위 바이트 → 출력
                    S_DATA_H: begin
                        r_distance    <= {rx_data, r_dist_l} >> 2;
                        r_angle_raw   <= r_angle_accum;
                        r_angle_accum <= r_angle_accum + r_angle_step;
                        r_valid       <= 1'b1;
                        r_sample_cnt  <= r_sample_cnt + 1'b1;

                        if (r_sample_cnt == r_sample_num - 1'b1)
                            r_state <= S_IDLE;
                        else r_state <= S_DATA_L;
                    end

                    default: r_state <= S_IDLE;
                endcase
            end
        end
    end

endmodule
