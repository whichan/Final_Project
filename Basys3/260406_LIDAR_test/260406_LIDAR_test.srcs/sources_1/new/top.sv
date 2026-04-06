`timescale 1ns / 1ps

// ============================================================
//  top.sv  —  Basys3 X4 Pro 라이다 수신 검증 Top
//
//  전체 흐름:
//  X4Pro(TX) ─128000bps─► uart_rx_fifo
//                               │ rx_data / rx_done
//                          lidar_parser
//                               │ o_angle_raw / o_distance / o_valid
//                        lidar_serializer
//                               │ fifo_wdata / fifo_wr_en
//                          uart_tx_fifo ─115200bps─► PC (Comfort Master)
//
//  사용 모듈 (기존 그대로):
//    FIFO.sv, uart_rx.sv, uart_tx.sv
//    uart_rx_fifo.sv, uart_tx_fifo.sv
//
//  신규 모듈:
//    lidar_parser.sv, lidar_serializer.sv
// ============================================================

module top (
    input  logic clk,       // 100MHz (Basys3 W5)
    input  logic reset,     // active HIGH (Basys3 btnC U18)

    // X4 Pro UART 수신 핀
    input  logic lidar_rx,

    // PC Comfort Master 송신 핀 (USB-UART)
    output logic pc_tx
);

    // ── 내부 와이어 ───────────────────────────────────────

    // uart_rx_fifo → lidar_parser
    logic [7:0]  w_rx_data;
    logic        w_rx_empty;
    logic        w_rx_full;
    logic        w_rx_rd;
    logic        w_rx_done;

    // lidar_parser → lidar_serializer
    logic [15:0] w_angle_raw;
    logic [15:0] w_distance;
    logic        w_valid;
    logic        w_header_ok;
    logic        w_checksum_err;

    // lidar_serializer → uart_tx_fifo
    logic [7:0]  w_tx_wdata;
    logic        w_tx_wr_en;
    logic        w_tx_full;

    // ── rx_done 생성 ──────────────────────────────────────
    // uart_rx_fifo 에서 pop 시 rx_done 펄스 생성
    // empty 하강엣지 = 새 데이터가 FIFO에서 나왔음
    logic r_empty_d;

    always_ff @(posedge clk or posedge reset) begin
        if (reset) r_empty_d <= 1'b1;
        else       r_empty_d <= w_rx_empty;
    end

    // FIFO에 데이터 있으면 계속 pop
    assign w_rx_rd   = ~w_rx_empty;
    // empty 하강엣지 → rx_done 펄스
    assign w_rx_done = r_empty_d & ~w_rx_empty;

    // ── uart_rx_fifo : X4 Pro 수신 (128000 bps) ──────────
    uart_rx_fifo #(
        .BPS(128000)
    ) u_lidar_rx_fifo (
        .rclk (clk),
        .clk  (clk),
        .reset(reset),
        .rx   (lidar_rx),
        .rd   (w_rx_rd),
        .rdata(w_rx_data),
        .empty(w_rx_empty),
        .full (w_rx_full)
    );

    // ── lidar_parser : X4 Pro 패킷 파싱 ─────────────────
    lidar_parser u_lidar_parser (
        .clk           (clk),
        .reset         (reset),
        .rx_data       (w_rx_data),
        .rx_done       (w_rx_done),
        .o_distance    (w_distance),
        .o_angle_raw   (w_angle_raw),
        .o_valid       (w_valid),
        .o_header_ok   (w_header_ok),
        .o_checksum_err(w_checksum_err)
    );

    // ── lidar_serializer : ASCII 변환 → TX FIFO push ─────
    lidar_serializer u_lidar_serializer (
        .clk        (clk),
        .reset      (reset),
        .i_angle_raw(w_angle_raw),
        .i_distance (w_distance),
        .i_valid    (w_valid),
        .fifo_full  (w_tx_full),
        .fifo_wdata (w_tx_wdata),
        .fifo_wr_en (w_tx_wr_en)
    );

    // ── uart_tx_fifo : PC 송신 (115200 bps) ──────────────
    uart_tx_fifo #(
        .BPS(115200)
    ) u_pc_tx_fifo (
        .clk  (clk),
        .reset(reset),
        .wdata(w_tx_wdata),
        .wr   (w_tx_wr_en),
        .full (w_tx_full),
        .tx   (pc_tx)
    );

endmodule
