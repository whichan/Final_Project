`timescale 1ns / 1ps

// ============================================================
//  lidar_serializer.sv
//  파싱된 라이다 데이터 → ASCII 변환 → uart_tx_fifo push
//
//  출력 포맷 (Comfort Master 확인용):
//  "A:ddd D:ddddd\r\n"
//   A = 각도 정수 (raw >> 6)
//   D = 거리 mm
// ============================================================

module lidar_serializer (
    input  logic        clk,
    input  logic        reset,

    // lidar_parser 연결
    input  logic [15:0] i_angle_raw,  // 각도 × 64
    input  logic [15:0] i_distance,   // 거리 mm
    input  logic        i_valid,      // 유효 펄스

    // uart_tx_fifo 연결
    input  logic        fifo_full,
    output logic [7:0]  fifo_wdata,
    output logic        fifo_wr_en
);

    // ── 상태 정의 ─────────────────────────────────────────
    typedef enum logic [3:0] {
        S_IDLE    = 4'd0,
        S_A       = 4'd1,   // 'A'
        S_COLON1  = 4'd2,   // ':'
        S_ANGLE   = 4'd3,   // 각도 숫자
        S_SPACE   = 4'd4,   // ' '
        S_D       = 4'd5,   // 'D'
        S_COLON2  = 4'd6,   // ':'
        S_DIST    = 4'd7,   // 거리 숫자
        S_CR      = 4'd8,   // '\r'
        S_LF      = 4'd9    // '\n'
    } state_t;

    state_t r_state;

    // ── 숫자 버퍼 (5자리 ASCII) ───────────────────────────
    logic [7:0]  r_buf [0:4];   // 최대 5자리
    logic [2:0]  r_buf_len;     // 유효 자리 수
    logic [2:0]  r_buf_idx;     // 현재 전송 인덱스

    // ── 캡처된 값 ─────────────────────────────────────────
    logic [15:0] r_angle_int;   // 각도 정수 (raw >> 6)
    logic [15:0] r_distance;

    // ── 출력 ──────────────────────────────────────────────
    logic        r_wr_en;
    logic [7:0]  r_wdata;

    assign fifo_wr_en = r_wr_en;
    assign fifo_wdata = r_wdata;

    // ── uint16 → 5자리 ASCII 변환 태스크 ─────────────────
    // 호출 후 r_buf, r_buf_len 세팅
    task automatic conv_uint;
        input  [15:0] val;
        output [7:0]  buf0, buf1, buf2, buf3, buf4;
        output [2:0]  len;
        logic [15:0]  tmp;
        logic [7:0]   d[0:4];
        integer i;
        begin
            tmp  = val;
            d[4] = (tmp % 10) + 8'h30; tmp = tmp / 10;
            d[3] = (tmp % 10) + 8'h30; tmp = tmp / 10;
            d[2] = (tmp % 10) + 8'h30; tmp = tmp / 10;
            d[1] = (tmp % 10) + 8'h30; tmp = tmp / 10;
            d[0] = (tmp % 10) + 8'h30;

            // 앞 0 제거, 최소 1자리 보장
            if      (d[0] != "0") begin buf0=d[0]; buf1=d[1]; buf2=d[2]; buf3=d[3]; buf4=d[4]; len=5; end
            else if (d[1] != "0") begin buf0=d[1]; buf1=d[2]; buf2=d[3]; buf3=d[4]; buf4="0"; len=4; end
            else if (d[2] != "0") begin buf0=d[2]; buf1=d[3]; buf2=d[4]; buf3="0";  buf4="0"; len=3; end
            else if (d[3] != "0") begin buf0=d[3]; buf1=d[4]; buf2="0";  buf3="0";  buf4="0"; len=2; end
            else                  begin buf0=d[4]; buf1="0";  buf2="0";  buf3="0";  buf4="0"; len=1; end
        end
    endtask

    // ── FSM ───────────────────────────────────────────────
    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            r_state    <= S_IDLE;
            r_wr_en    <= 1'b0;
            r_wdata    <= 8'd0;
            r_buf_len  <= 3'd0;
            r_buf_idx  <= 3'd0;
            r_angle_int<= 16'd0;
            r_distance <= 16'd0;
            for (int i=0; i<5; i++) r_buf[i] <= 8'd0;
        end else begin
            r_wr_en <= 1'b0;

            case (r_state)

                S_IDLE: begin
                    if (i_valid && !fifo_full) begin
                        r_angle_int <= i_angle_raw >> 6;  // /64 → 실제 각도
                        r_distance  <= i_distance;
                        r_state     <= S_A;
                    end
                end

                S_A: begin
                    if (!fifo_full) begin
                        r_wr_en <= 1'b1;
                        r_wdata <= "A";
                        r_state <= S_COLON1;
                    end
                end

                S_COLON1: begin
                    if (!fifo_full) begin
                        r_wr_en <= 1'b1;
                        r_wdata <= ":";
                        // 각도 변환 후 버퍼 세팅
                        conv_uint(r_angle_int,
                                  r_buf[0], r_buf[1], r_buf[2], r_buf[3], r_buf[4],
                                  r_buf_len);
                        r_buf_idx <= 3'd0;
                        r_state   <= S_ANGLE;
                    end
                end

                S_ANGLE: begin
                    if (!fifo_full) begin
                        r_wr_en   <= 1'b1;
                        r_wdata   <= r_buf[r_buf_idx];
                        r_buf_idx <= r_buf_idx + 1'b1;
                        if (r_buf_idx == r_buf_len - 1'b1)
                            r_state <= S_SPACE;
                    end
                end

                S_SPACE: begin
                    if (!fifo_full) begin
                        r_wr_en <= 1'b1;
                        r_wdata <= " ";
                        r_state <= S_D;
                    end
                end

                S_D: begin
                    if (!fifo_full) begin
                        r_wr_en <= 1'b1;
                        r_wdata <= "D";
                        r_state <= S_COLON2;
                    end
                end

                S_COLON2: begin
                    if (!fifo_full) begin
                        r_wr_en <= 1'b1;
                        r_wdata <= ":";
                        // 거리 변환 후 버퍼 세팅
                        conv_uint(r_distance,
                                  r_buf[0], r_buf[1], r_buf[2], r_buf[3], r_buf[4],
                                  r_buf_len);
                        r_buf_idx <= 3'd0;
                        r_state   <= S_DIST;
                    end
                end

                S_DIST: begin
                    if (!fifo_full) begin
                        r_wr_en   <= 1'b1;
                        r_wdata   <= r_buf[r_buf_idx];
                        r_buf_idx <= r_buf_idx + 1'b1;
                        if (r_buf_idx == r_buf_len - 1'b1)
                            r_state <= S_CR;
                    end
                end

                S_CR: begin
                    if (!fifo_full) begin
                        r_wr_en <= 1'b1;
                        r_wdata <= 8'h0D;  // \r
                        r_state <= S_LF;
                    end
                end

                S_LF: begin
                    if (!fifo_full) begin
                        r_wr_en <= 1'b1;
                        r_wdata <= 8'h0A;  // \n
                        r_state <= S_IDLE;
                    end
                end

                default: r_state <= S_IDLE;
            endcase
        end
    end

endmodule
