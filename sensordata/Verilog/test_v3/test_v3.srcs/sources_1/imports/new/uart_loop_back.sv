`timescale 1ns / 1ps

module uart_loop_back (
    //loopback i/o
    input              clk,
    input              rst,
    input              rx,
    //fifo rx
    output logic       fifo_rx_empty,
    output logic       fifo_rx_full,
    output logic [7:0] fifo_rx_rdata,
    input  logic       rx_rd,
    output logic       rx_done
);

    logic [7:0] fifo_rx_wdata;

    uart_rx #(
        .BPS(115200)
    ) u_uart_rx (
        .clk(clk),
        .reset(rst),
        .rx(rx),
        .data_out(fifo_rx_wdata),
        .rx_done(rx_done)
    );

    //rx fifo read 조건 : tx fifo의 !full
    fifo u_fifo_rx (
        .clk(clk),
        .rst(rst),
        .we(rx_done),
        .rd(rx_rd),
        .wdata(fifo_rx_wdata),
        .rdata(fifo_rx_rdata),
        .empty(fifo_rx_empty),
        .full(fifo_rx_full)
    );

endmodule
