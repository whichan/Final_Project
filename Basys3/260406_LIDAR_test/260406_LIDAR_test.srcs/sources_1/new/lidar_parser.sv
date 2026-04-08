`timescale 1ns / 1ps

module lidar_parser (
    input logic clk,
    input logic reset,

    input logic [7:0] rx_data,
    input logic       rx_done,

    output logic [15:0] o_distance,
    output logic [15:0] o_angle_raw,
    output logic        o_valid,

    output logic o_header_ok,
    output logic o_checksum_err
);

    // ── 상태 정의 ────────────────────────────────────────
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

    state_t r_state;

    // ── 상수 정의 ────────────────────────────────────────
    // 1/39 ≈ 1681/2^16  (Q16 역수)
    localparam logic [16:0] RECIP_39 = 17'd1681;

    // ── 내부 레지스터 ────────────────────────────────────
    logic [ 7:0] r_sample_num;
    logic [ 7:0] r_sample_cnt;
    logic [15:0] r_start_angle;
    logic [15:0] r_end_angle;
    logic [ 7:0] r_dist_l;
    logic [15:0] r_angle_accum;
    logic [15:0] r_angle_step;

    // ── 조합 논리 신호 ───────────────────────────────────
    logic [15:0] w_fsa;  // start angle, bit[0] 제거
    logic [15:0] w_lsa;  // end angle,   bit[0] 제거
    logic [15:0] w_diff;  // 각도 차이
    logic [32:0] w_step_full;  // 곱셈 중간값 (16 + 17비트)
    logic [15:0] w_angle_step;

    // ── 출력 레지스터 ────────────────────────────────────
    logic [15:0] r_distance;
    logic [15:0] r_angle_raw;
    logic        r_valid;
    logic        r_header_ok;
    logic        r_checksum_err;

    assign o_distance     = r_distance;
    assign o_angle_raw    = r_angle_raw;
    assign o_valid        = r_valid;
    assign o_header_ok    = r_header_ok;
    assign o_checksum_err = r_checksum_err;

    // ── 조합 논리: 각도 스텝 계산 ────────────────────────
    // 나눗셈 없이 곱셈 + shift만 사용
    // angle_step = diff × (1/39) = diff × 1681 >> 16
    always_comb begin
        w_fsa = r_start_angle >> 1;  // bit[0] 플래그 제거
        w_lsa = {rx_data, r_end_angle[7:0]} >> 1;

        // 360° 경계 래핑
        if (w_lsa >= w_fsa) w_diff = w_lsa - w_fsa;
        else w_diff = 16'd23040 + w_lsa - w_fsa;  // 23040 = 360 × 64

        w_step_full  = w_diff * RECIP_39;  // 곱셈 → DSP 블록
        w_angle_step = w_step_full[31:16];  // >> 16 (상위 16비트)
    end

    // ── FSM ─────────────────────────────────────────────
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

                    S_IDLE: begin
                        r_header_ok <= 1'b0;
                        if (rx_data == 8'hAA) r_state <= S_HEADER2;
                    end

                    S_HEADER2: begin
                        if (rx_data == 8'h55) r_state <= S_PKT_TYPE;
                        else r_state <= S_IDLE;
                    end

                    S_PKT_TYPE: begin
                        r_state <= S_SAMPLE_NUM;
                    end

                    S_SAMPLE_NUM: begin
                        r_sample_num <= rx_data;
                        r_sample_cnt <= 8'd0;
                        r_header_ok  <= 1'b1;
                        r_state      <= S_START_ANG_L;
                    end

                    S_START_ANG_L: begin
                        r_start_angle[7:0] <= rx_data;
                        r_state            <= S_START_ANG_H;
                    end

                    S_START_ANG_H: begin
                        r_start_angle[15:8] <= rx_data;
                        r_angle_accum <= {rx_data, r_start_angle[7:0]} >> 1;
                        r_state <= S_END_ANG_L;
                    end

                    S_END_ANG_L: begin
                        r_end_angle[7:0] <= rx_data;
                        r_state          <= S_END_ANG_H;
                    end

                    // 핵심: 곱셈+shift로 angle_step 계산
                    // w_angle_step은 always_comb에서 이미 계산됨
                    // rx_data(end_H)가 유효한 이 사이클에 바로 등록
                    S_END_ANG_H: begin
                        r_end_angle[15:8] <= rx_data;
                        r_angle_step      <= w_angle_step;
                        r_state           <= S_CHECK_L;
                    end

                    S_CHECK_L: begin
                        r_state <= S_CHECK_H;
                    end

                    S_CHECK_H: begin
                        r_state <= S_DATA_L;
                    end

                    S_DATA_L: begin
                        r_dist_l <= rx_data;
                        r_state  <= S_DATA_H;
                    end

                    S_DATA_H: begin
                        // [수정 전]
                        // r_distance    <= {rx_data, r_dist_l}; 

                        // [수정 후] mm 단위로 보정 (0.25mm 단위를 1mm로 변환)
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
