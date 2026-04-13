`timescale 1ns / 1ps

module tx_packet (
    input  logic        clk,
    input  logic        rst,
    // 데이터 입력 추가
    input  logic [15:0] mpu_z_raw,
    input  logic [15:0] filtered_z,
    input  logic        parsed_tick,
    // uart_tx 제어용 출력
    output logic [7:0]  tx_data,
    output logic        tx_start,
    input  logic        tx_done,
    input  logic        tx_busy
);
    logic [15:0] raw_reg, filt_reg;

    typedef enum logic [2:0] {
        S_IDLE, S_SEND_HDR, S_SEND_RAW_H, S_SEND_RAW_L, S_SEND_FILT_H, S_SEND_FILT_L
    } tx_state_t;
    tx_state_t tx_curr_state;

    always_ff @(posedge clk or posedge rst) begin
        if (rst) begin
            tx_curr_state <= S_IDLE;
            tx_start      <= 1'b0;
            tx_data       <= 8'h00;
            raw_reg       <= 16'h00;
            filt_reg      <= 16'h00;
        end else begin
            case (tx_curr_state)
                S_IDLE: begin
                    tx_start <= 1'b0;
                    if (parsed_tick) begin
                        raw_reg <= mpu_z_raw;
                        filt_reg <= filtered_z;
                        tx_curr_state <= S_SEND_HDR;
                    end
                end
                // ... (나머지 S_SEND_HDR ~ S_SEND_FILT_L 로직은 동일) ...
                S_SEND_HDR: begin
                    if (!tx_busy) begin
                        tx_data <= 8'hFE;
                        tx_start <= 1'b1;
                        tx_curr_state <= S_SEND_RAW_H;
                    end else tx_start <= 1'b0;
                end
                S_SEND_RAW_H: begin
                    if (tx_done) begin
                        tx_data <= raw_reg[15:8];
                        tx_start <= 1'b1;
                        tx_curr_state <= S_SEND_RAW_L;
                    end else tx_start <= 1'b0;
                end
                S_SEND_RAW_L: begin
                    if (tx_done) begin
                        tx_data <= raw_reg[7:0];
                        tx_start <= 1'b1;
                        tx_curr_state <= S_SEND_FILT_H;
                    end else tx_start <= 1'b0;
                end
                S_SEND_FILT_H: begin
                    if (tx_done) begin
                        tx_data <= filt_reg[15:8];
                        tx_start <= 1'b1;
                        tx_curr_state <= S_SEND_FILT_L;
                    end else tx_start <= 1'b0;
                end
                S_SEND_FILT_L: begin
                    if (tx_done) begin
                        tx_data <= filt_reg[7:0];
                        tx_start <= 1'b1;
                        tx_curr_state <= S_IDLE;
                    end else tx_start <= 1'b0;
                end
            endcase
        end
    end
endmodule