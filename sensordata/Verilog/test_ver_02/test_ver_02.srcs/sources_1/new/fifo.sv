`timescale 1ns / 1ps

module fifo (
    input        clk,
    input        rst,
    input        we,
    input        rd,
    input  [7:0] wdata,
    output [7:0] rdata,
    output       full,
    output       empty
);

    logic [3:0] wptr, rptr;

    register_FIFO u_register_FIFO (
        .clk(clk),
        .wdata(wdata),
        .wr(we & !full),
        .wptr(wptr),
        .rptr(rptr),
        .rdata(rdata)
    );

    fifo_controller u_fifo_controller (
        .clk(clk),
        .rst(rst),
        .wr(we),
        .rd(rd),
        .wptr(wptr),
        .rptr(rptr),
        .full(full),
        .empty(empty)
    );


endmodule


module register_FIFO (
    input        clk,
    input  [7:0] wdata,
    input        wr,
    input  [3:0] wptr,
    input  [3:0] rptr,
    output [7:0] rdata
);
    logic [7:0] ram[0:15];
    always @(posedge clk) begin
        if (wr) begin
            ram[wptr] <= wdata;
        end
    end
    assign rdata = ram[rptr];
endmodule

module fifo_controller (
    input clk,
    input rst,
    input wr,
    input rd,
    output [3:0] wptr,
    output [3:0] rptr,
    output full,
    output empty
);
    logic [3:0] n_wptr, n_rptr;
    logic [3:0] c_wptr, c_rptr;
    logic n_full, n_empty;
    logic c_full, c_empty;

    assign wptr  = c_wptr;
    assign rptr  = c_rptr;
    assign full  = c_full;
    assign empty = c_empty;

    always_ff @(posedge clk, posedge rst) begin : blockName
        if (rst) begin
            c_wptr  <= 4'd0;
            c_rptr  <= 4'd0;
            c_full  <= 1'b0;
            c_empty <= 1'b1;
        end else begin
            c_wptr  <= n_wptr;
            c_rptr  <= n_rptr;
            c_full  <= n_full;
            c_empty <= n_empty;
        end
    end

    always_comb begin
        n_full  = c_full;
        n_empty = c_empty;
        n_wptr  = c_wptr;
        n_rptr  = c_rptr;
        case ({
            wr, rd
        })
            2'b10: begin
                n_empty = 1'b0;
                if (!c_full) begin
                    n_wptr = c_wptr + 1;
                    if (n_wptr == rptr) n_full = 1'b1;
                end
            end
            2'b01: begin
                n_full = 1'b0;
                if (!c_empty) begin
                    n_rptr = c_rptr + 1;
                    if (n_rptr == wptr) n_empty = 1'b1;
                end
            end
            2'b11: begin
                if (c_full) begin
                    n_full = 1'b0;
                    n_rptr = c_rptr + 1;
                end else if (c_empty) begin
                    n_empty = 1'b0;
                    n_wptr  = c_wptr + 1;
                end else begin
                    n_wptr = c_wptr + 1;
                    n_rptr = c_rptr + 1;
                end
            end
        endcase
    end

endmodule
