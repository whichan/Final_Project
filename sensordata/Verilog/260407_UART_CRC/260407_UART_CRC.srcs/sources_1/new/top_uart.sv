`timescale 1ns / 1ps


module top_uart (
    input logic clk,  // Basys3 100MHz
    input logic rst,  // 버튼 등
    input logic rx    // STM32 TX핀과 연결된 Basys3 RX핀 (예: J3)
);
    logic rx_done;
    logic rx_fifo_empty;
    logic [7:0] rx_fifo_data;
    logic parser_rd_en;
    logic parsed_tick;
    logic [15:0] mpu_z_raw;
    logic [15:0] filtered_z;

    uart_loop_back u_uart_loop_back (
        .clk(clk),
        .rst(rst),
        .rx(rx),
        .fifo_rx_empty(rx_fifo_empty),
        .fifo_rx_full(),
        .fifo_rx_rdata(rx_fifo_data),
        .rx_rd(parser_rd_en),  // Parser가 읽고 싶을 때 신호 발생
        .rx_done(rx_done)
    );

    // ★ 핵심 수정: rx_data_ready를 ~empty의 1클럭 지연 pulse로 만들기
    logic fifo_not_empty_d;  // 1클럭 지연
    logic rx_data_ready;
    logic parser_rd_en_d;

    always_ff @(posedge clk or posedge rst) begin
        if (rst) begin
            fifo_not_empty_d <= 1'b0;
            parser_rd_en_d   <= 1'b0;
        end else begin
            fifo_not_empty_d <= ~rx_fifo_empty;
            parser_rd_en_d   <= parser_rd_en;
        end
    end

    // empty였다가 not_empty가 된 순간 + rd_en 이후 다음 데이터 준비 시점
    assign rx_data_ready = (~rx_fifo_empty) & (~fifo_not_empty_d | parser_rd_en_d);


    uart_packet_parser u_parser (
        .clk          (clk),
        .reset        (rst),
        .rx_data_ready(rx_data_ready),  // FIFO에 데이터가 있으면 바로 실행 시도
        .rx_byte      (rx_fifo_data),
        .rd_en        (parser_rd_en),   // FIFO에서 데이터를 꺼내오기 위한 신호
        .mpu_z_data   (mpu_z_raw),      // 복원된 16비트 데이터
        .data_valid   (parsed_tick)     // 패킷 한 개 해석 완료 (Pulse)
    );

    FIR_filter u_fir (
        .clk(clk),
        .reset(rst),
        .data_in(mpu_z_raw),  // Parser가 준 16비트 값
        .data_valid(parsed_tick),  // 패킷 완료 신호를 FIR의 Start 신호로 사용
        .data_out(filtered_z)
    );
endmodule
