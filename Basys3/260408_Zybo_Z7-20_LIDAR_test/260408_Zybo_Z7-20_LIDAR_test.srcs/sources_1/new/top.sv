`timescale 1ns / 1ps

module top (
    input  logic clk,       // Zybo 125MHz
    input  logic reset,     // BTN3
    input  logic lidar_rx,  // JB2 (이번 테스트에선 미사용)
    output logic pc_tx,     // JB1 (CP2102 RX로 전송)
    output logic led0,
    output logic led1
);

    // 1초 생성을 위한 카운터 (125,000,000번 진동 = 1초)
    logic [26:0] tick_count;
    logic        one_sec_tick;
    logic [ 7:0] char_count = 8'h30;  // ASCII '0' 부터 시작

    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            tick_count   <= 0;
            one_sec_tick <= 0;
            char_count   <= 8'h30;
        end else begin
            if (tick_count == 125_000_000 - 1) begin
                tick_count   <= 0;
                one_sec_tick <= 1;
                // 0~9까지 반복
                if (char_count == 8'h39) char_count <= 8'h30;
                else char_count <= char_count + 1;
            end else begin
                one_sec_tick <= 0;
                tick_count   <= tick_count + 1;
            end
        end
    end

    // UART TX FIFO 인스턴스 (보내주신 코드)
    uart_tx_fifo #(
        .BPS(115200)  // 컴포트 마스터 설정과 맞출 것
    ) u_uart_tx_fifo (
        .clk  (clk),
        .reset(reset),
        .wdata(char_count),    // 보낼 데이터 ('0', '1', '2'...)
        .wr   (one_sec_tick),  // 1초마다 push
        .full (),              // 상태 확인용 (생략 가능)
        .tx   (pc_tx)          // 실제 JB1 핀으로 나감
    );

    // 상태 확인용 LED (1초마다 깜빡임)
    assign led0 = one_sec_tick;
    assign led1 = (char_count[0]);  // 전송 데이터 하위 비트 표시

endmodule
