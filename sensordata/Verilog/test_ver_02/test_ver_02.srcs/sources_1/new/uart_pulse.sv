`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/04/08 15:40:57
// Design Name: 
// Module Name: uart_pulse
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module uart_pulse (
    input  logic clk,
    input  logic rst,
    input  logic rx_fifo_empty,
    input  logic parser_rd_en,
    output logic rx_data_ready
);

    logic fifo_not_empty_d;
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

endmodule
