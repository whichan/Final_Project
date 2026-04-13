`timescale 1ns / 1ps

module tx_packet (
    input  logic        clk,
    input  logic        rst,
    input  logic [15:0] mpu_z_raw,
    input  logic [15:0] filtered_z,
    input  logic        parsed_tick,
    // FFT 포트 추가
    input  logic [31:0] fft_data,    // [31:16] 실수부, [15:0] 허수부
    input  logic        fft_valid,
    output logic        fft_ready,
    // uart_tx 제어
    output logic [ 7:0] tx_data,
    output logic        tx_start,
    input  logic        tx_done,
    input  logic        tx_busy
);

    logic [15:0] raw_reg, filt_reg;
    logic [15:0] mag_reg;     // magnitude 저장
    logic [ 9:0] fft_idx;     // 현재 전송 중인 FFT bin 인덱스

    // Magnitude 계산 (Power = 실수² + 허수², 상위 16bit 사용)
    logic signed [15:0] re, im;
    logic        [31:0] power;
    assign re    = fft_data[31:16];
    assign im    = fft_data[15:0];
    assign power = (re * re + im * im) >> 16;  // 상위 16bit

    typedef enum logic [3:0] {
        S_IDLE,
        // Raw/Filtered 전송 (기존)
        S_SEND_HDR,
        S_SEND_RAW_H,
        S_SEND_RAW_L,
        S_SEND_FILT_H,
        S_SEND_FILT_L,
        // FFT Magnitude 전송 (추가)
        S_FFT_WAIT,    // fft_valid 대기
        S_FFT_HDR,     // 0xFF 헤더
        S_FFT_IDX_H,   // bin 인덱스 상위
        S_FFT_IDX_L,   // bin 인덱스 하위
        S_FFT_MAG_H,   // magnitude 상위
        S_FFT_MAG_L    // magnitude 하위
    } tx_state_t;
    tx_state_t tx_curr_state;

    always_ff @(posedge clk or posedge rst) begin
        if (rst) begin
            tx_curr_state <= S_IDLE;
            tx_start      <= 1'b0;
            tx_data       <= 8'h00;
            raw_reg       <= 16'h00;
            filt_reg      <= 16'h00;
            mag_reg       <= 16'h00;
            fft_idx       <= 10'd0;
            fft_ready     <= 1'b0;
        end else begin
            tx_start  <= 1'b0;
            fft_ready <= 1'b0;

            case (tx_curr_state)
                // ─────────────────────────────────────────
                // 기존: Raw/Filtered 전송
                // ─────────────────────────────────────────
                S_IDLE: begin
                    if (parsed_tick) begin
                        raw_reg       <= mpu_z_raw;
                        filt_reg      <= filtered_z;
                        tx_curr_state <= S_SEND_HDR;
                    end
                end

                S_SEND_HDR: begin
                    if (!tx_busy) begin
                        tx_data       <= 8'hFE;
                        tx_start      <= 1'b1;
                        tx_curr_state <= S_SEND_RAW_H;
                    end
                end

                S_SEND_RAW_H: begin
                    if (tx_done) begin
                        tx_data       <= raw_reg[15:8];
                        tx_start      <= 1'b1;
                        tx_curr_state <= S_SEND_RAW_L;
                    end
                end

                S_SEND_RAW_L: begin
                    if (tx_done) begin
                        tx_data       <= raw_reg[7:0];
                        tx_start      <= 1'b1;
                        tx_curr_state <= S_SEND_FILT_H;
                    end
                end

                S_SEND_FILT_H: begin
                    if (tx_done) begin
                        tx_data       <= filt_reg[15:8];
                        tx_start      <= 1'b1;
                        tx_curr_state <= S_SEND_FILT_L;
                    end
                end

                S_SEND_FILT_L: begin
                    if (tx_done) begin
                        tx_data       <= filt_reg[7:0];
                        tx_start      <= 1'b1;
                        // Raw/Filtered 전송 완료 → FFT 대기로 전환
                        tx_curr_state <= S_FFT_WAIT;
                        fft_idx       <= 10'd0;
                    end
                end

                // ─────────────────────────────────────────
                // 추가: FFT Magnitude 전송 (512포인트)
                // ─────────────────────────────────────────
                S_FFT_WAIT: begin
                    if (tx_done || tx_curr_state == S_FFT_WAIT) begin
                        tx_start <= 1'b0;
                        if (fft_valid) begin
                            // magnitude 캡처
                            mag_reg       <= power[15:0];
                            fft_ready     <= 1'b1;  // FFT IP에 읽었다고 알림
                            tx_curr_state <= S_FFT_HDR;
                        end
                        // 512포인트 다 보내면 IDLE로
                        if (fft_idx >= 10'd512) begin
                            tx_curr_state <= S_IDLE;
                        end
                    end
                end

                S_FFT_HDR: begin
                    if (!tx_busy) begin
                        tx_data       <= 8'hFF;
                        tx_start      <= 1'b1;
                        tx_curr_state <= S_FFT_IDX_H;
                    end
                end

                S_FFT_IDX_H: begin
                    if (tx_done) begin
                        tx_data       <= fft_idx[9:8];  // 상위 2bit
                        tx_start      <= 1'b1;
                        tx_curr_state <= S_FFT_IDX_L;
                    end
                end

                S_FFT_IDX_L: begin
                    if (tx_done) begin
                        tx_data       <= fft_idx[7:0];  // 하위 8bit
                        tx_start      <= 1'b1;
                        tx_curr_state <= S_FFT_MAG_H;
                    end
                end

                S_FFT_MAG_H: begin
                    if (tx_done) begin
                        tx_data       <= mag_reg[15:8];
                        tx_start      <= 1'b1;
                        tx_curr_state <= S_FFT_MAG_L;
                    end
                end

                S_FFT_MAG_L: begin
                    if (tx_done) begin
                        tx_data       <= mag_reg[7:0];
                        tx_start      <= 1'b1;
                        fft_idx       <= fft_idx + 1;
                        tx_curr_state <= S_FFT_WAIT;  // 다음 포인트
                    end
                end

                default: tx_curr_state <= S_IDLE;
            endcase
        end
    end
endmodule

// `timescale 1ns / 1ps

// module tx_packet (
//     input  logic        clk,
//     input  logic        rst,
//     // 데이터 입력 추가
//     input  logic [15:0] mpu_z_raw,
//     input  logic [15:0] filtered_z,
//     input  logic        parsed_tick,
//     // uart_tx 제어용 출력
//     output logic [7:0]  tx_data,
//     output logic        tx_start,
//     input  logic        tx_done,
//     input  logic        tx_busy
// );
//     logic [15:0] raw_reg, filt_reg;

//     typedef enum logic [2:0] {
//         S_IDLE, S_SEND_HDR, S_SEND_RAW_H, S_SEND_RAW_L, S_SEND_FILT_H, S_SEND_FILT_L
//     } tx_state_t;
//     tx_state_t tx_curr_state;

//     always_ff @(posedge clk or posedge rst) begin
//         if (rst) begin
//             tx_curr_state <= S_IDLE;
//             tx_start      <= 1'b0;
//             tx_data       <= 8'h00;
//             raw_reg       <= 16'h00;
//             filt_reg      <= 16'h00;
//         end else begin
//             case (tx_curr_state)
//                 S_IDLE: begin
//                     tx_start <= 1'b0;
//                     if (parsed_tick) begin
//                         raw_reg <= mpu_z_raw;
//                         filt_reg <= filtered_z;
//                         tx_curr_state <= S_SEND_HDR;
//                     end
//                 end
//                 // ... (나머지 S_SEND_HDR ~ S_SEND_FILT_L 로직은 동일) ...
//                 S_SEND_HDR: begin
//                     if (!tx_busy) begin
//                         tx_data <= 8'hFE;
//                         tx_start <= 1'b1;
//                         tx_curr_state <= S_SEND_RAW_H;
//                     end else tx_start <= 1'b0;
//                 end
//                 S_SEND_RAW_H: begin
//                     if (tx_done) begin
//                         tx_data <= raw_reg[15:8];
//                         tx_start <= 1'b1;
//                         tx_curr_state <= S_SEND_RAW_L;
//                     end else tx_start <= 1'b0;
//                 end
//                 S_SEND_RAW_L: begin
//                     if (tx_done) begin
//                         tx_data <= raw_reg[7:0];
//                         tx_start <= 1'b1;
//                         tx_curr_state <= S_SEND_FILT_H;
//                     end else tx_start <= 1'b0;
//                 end
//                 S_SEND_FILT_H: begin
//                     if (tx_done) begin
//                         tx_data <= filt_reg[15:8];
//                         tx_start <= 1'b1;
//                         tx_curr_state <= S_SEND_FILT_L;
//                     end else tx_start <= 1'b0;
//                 end
//                 S_SEND_FILT_L: begin
//                     if (tx_done) begin
//                         tx_data <= filt_reg[7:0];
//                         tx_start <= 1'b1;
//                         tx_curr_state <= S_IDLE;
//                     end else tx_start <= 1'b0;
//                 end
//             endcase
//         end
//     end
// endmodule