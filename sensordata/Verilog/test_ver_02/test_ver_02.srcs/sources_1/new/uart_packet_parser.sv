`timescale 1ns / 1ps
module uart_packet_parser (
    input  logic               clk,            // Basys3 System Clock (100MHz)
    input  logic               reset,
    input  logic               rx_data_ready,  // UART RX Module에서 1바이트 수신 신호
    input  logic        [ 7:0] rx_byte,        // 수신된 8비트 데이터
    output logic               rd_en,          // FIFO의 rd 신호 (parser_rd_en 연결)
    output logic signed [15:0] mpu_z_data,     // 최종 복원된 Z축 가속도
    output logic               data_valid      // 새 데이터 업데이트 완료 신호
);

    // FSM States
    typedef enum logic [2:0] {
        STATE_SOF,
        STATE_LEN,
        STATE_CMD,
        STATE_PAYLOAD,
        STATE_CRC
    } state_t;

    state_t state, n_state;
    logic [7:0] packet_len, n_packet_len;
    logic [7:0] packet_cmd, n_packet_cmd;
    logic [3:0] byte_cnt, n_byte_cnt;
    logic [7:0] temp_payload[0:31], n_temp_payload[0:31];
    logic [7:0] calculated_crc, n_calculated_crc;
    logic n_data_valid;
    logic signed [15:0] n_mpu_z_data;

    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            state          <= STATE_SOF;
            packet_len     <= 8'd0;
            packet_cmd     <= 8'd0;
            byte_cnt       <= 4'd0;
            calculated_crc <= 8'd0;
            mpu_z_data     <= 16'd0;
            data_valid     <= 1'b0;
            for (int i = 0; i < 32; i++) temp_payload[i] <= 8'd0;
        end else begin
            state          <= n_state;
            packet_len     <= n_packet_len;
            packet_cmd     <= n_packet_cmd;
            byte_cnt       <= n_byte_cnt;
            calculated_crc <= n_calculated_crc;
            temp_payload   <= n_temp_payload;
            // data_valid와 mpu_z_data는 n_ 신호를 통해 업데이트
            data_valid     <= n_data_valid;
            mpu_z_data     <= n_mpu_z_data;
        end
    end

    always_comb begin
        n_state          = state;
        n_packet_len     = packet_len;
        n_packet_cmd     = packet_cmd;
        n_byte_cnt       = byte_cnt;
        n_calculated_crc = calculated_crc;
        n_temp_payload   = temp_payload;
        n_mpu_z_data     = mpu_z_data;
        n_data_valid     = 1'b0;  // Pulse 신호이므로 기본값 0
        rd_en            = 1'b0;

        if (rx_data_ready) begin
            rd_en = 1'b1;
            case (state)
                STATE_SOF: begin
                    if (rx_byte == 8'hAA) n_state = STATE_LEN;
                end

                STATE_LEN: begin
                    n_packet_len = rx_byte;
                    n_calculated_crc = rx_byte;  // STM32와 동일하게 LEN부터 계산 시작
                    n_state = STATE_CMD;
                end

                STATE_CMD: begin
                    n_packet_cmd = rx_byte;
                    n_calculated_crc = calculated_crc ^ rx_byte;
                    n_byte_cnt = 0;
                    if (packet_len == 0) n_state = STATE_CRC;
                    else n_state = STATE_PAYLOAD;
                end

                STATE_PAYLOAD: begin
                    n_temp_payload[byte_cnt] = rx_byte;
                    n_calculated_crc = calculated_crc ^ rx_byte;
                    if (byte_cnt == packet_len - 1) n_state = STATE_CRC;
                    else n_byte_cnt = byte_cnt + 1;
                end

                STATE_CRC: begin
                    if (rx_byte == calculated_crc) begin
                        if (packet_cmd == 8'h50) begin
                            n_data_valid = 1;
                            n_mpu_z_data = {temp_payload[0], temp_payload[1]};
                        end
                    end
                    n_state = STATE_SOF;
                end
            endcase
        end
    end
endmodule
