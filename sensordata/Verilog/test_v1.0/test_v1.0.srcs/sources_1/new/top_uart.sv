`timescale 1ns / 1ps

module top_uart (
    input  logic clk,
    input  logic rst,
    input  logic rx,
    output logic tx
);
    logic        rx_done;
    logic        rx_fifo_empty;
    logic [ 7:0] rx_fifo_data;
    logic        parser_rd_en;
    logic        parsed_tick;
    logic [15:0] mpu_z_raw;
    logic [15:0] filtered_z;

    logic        fifo_not_empty_d;
    logic        rx_data_ready;
    logic        parser_rd_en_d;

    logic [ 7:0] w_tx_data;
    logic        w_tx_start;
    logic        w_tx_done;
    logic        w_tx_busy;
    logic        pc_rx;

    logic [9:0] sample_cnt;
    logic [15:0] fft_out;
    logic fft_last, fft_valid;

    assign pc_rx = rx;

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

    uart_pulse u_uart_pulse (
        .clk(clk),
        .rst(rst),
        .rx_fifo_empty(rx_fifo_empty),
        .parser_rd_en(parser_rd_en),
        .rx_data_ready(rx_data_ready)
    );

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

    // tx_packet u_tx_packet (
    //     .clk        (clk),
    //     .rst        (rst),
    //     .mpu_z_raw  (mpu_z_raw),
    //     .filtered_z (filtered_z),
    //     .parsed_tick(parsed_tick),
    //     .tx_data    (w_tx_data),
    //     .tx_start   (w_tx_start),
    //     .tx_done    (w_tx_done),
    //     .tx_busy    (w_tx_busy)
    // );

    tx_packet u_tx_packet (
        .clk        (clk),
        .rst        (rst),
        .mpu_z_raw  (mpu_z_raw),
        .filtered_z (filtered_z),
        .parsed_tick(parsed_tick),
        .fft_data   (fft_out),  
        .fft_valid  (fft_valid),
        .fft_ready  (fft_ready),
        .tx_data    (w_tx_data),
        .tx_start   (w_tx_start),
        .tx_done    (w_tx_done),
        .tx_busy    (w_tx_busy)
    );

    uart_tx #(
        .BPS(115200)
    ) u_uart_tx (
        .clk     (clk),
        .reset   (rst),
        .tx_data (w_tx_data),
        .tx_start(w_tx_start),
        .tx      (tx),
        .tx_done (w_tx_done),
        .tx_busy (w_tx_busy)
    );

    always_ff @(posedge clk) begin
        if (rst) begin
            sample_cnt <= 0;
            fft_last <= 0;
        end else if (parsed_tick) begin
            if (sample_cnt == 1023) begin
                sample_cnt <= 0;
                fft_last <= 1;
            end else begin
                sample_cnt <= sample_cnt + 1;
                fft_last <= 0;
            end
        end else begin
            fft_last <= 0;
        end
    end

    xfft_0 u_fft (
        .aclk              (clk),
        .aresetn           (~rst),         // active low
        .s_axis_config_tdata(16'd1),      // Forward FFT 설정
        .s_axis_config_tvalid(1'b1),   
        .s_axis_data_tdata (filtered_z),   // 16bit FIR 출력
        .s_axis_data_tvalid(parsed_tick),  // 데이터 유효 신호
        .s_axis_data_tlast (fft_last),     // 1024번째 샘플에서 1
        .m_axis_data_tdata (fft_out),      // 복소수 출력
        .m_axis_data_tvalid(fft_valid),
        .m_axis_data_tready (1'b1)         // 데이터 받을 준비 완료
    );

    //     ila_0 u_debug_tool (
    //     .clk   (clk),
    //     .probe0(mpu_z_raw),
    //     .probe1(filtered_z),
    //     .probe2(parsed_tick),
    //     .probe3(pc_rx),
    //     .probe4(rx_fifo_empty),  // FIFO 비어있는지
    //     .probe5(rx_fifo_data),   // 실제 수신 바이트 내용
    //     .probe6(rx_data_ready),  // pulse 모듈 출력
    //     .probe7(parser_rd_en)    // parser가 rd_en 주는지
    // );

endmodule
