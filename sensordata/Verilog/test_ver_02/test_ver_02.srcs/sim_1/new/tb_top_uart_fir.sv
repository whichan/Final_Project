
`timescale 1ns / 1ps

module tb_top_uart_fir ();
    reg clk;
    reg rst;
    reg rx;

    // 115200 Baud @ 100MHz → 1비트 = 8680ns
    localparam BIT_PERIOD = 8680;

    // DUT
    top_uart dut (
        .clk(clk),
        .rst(rst),
        .rx (rx)
    );

    // 100MHz 클럭
    always #5 clk = ~clk;

    // ────────────────────────────────────────────
    // 내부 신호 접근 (계층 경로 - Vivado sim 기준)
    // ────────────────────────────────────────────
    wire        [ 2:0] parser_state = dut.u_parser.state;
    wire        [ 7:0] parser_cmd = dut.u_parser.packet_cmd;
    wire        [ 7:0] parser_len = dut.u_parser.packet_len;
    wire        [ 7:0] parser_crc = dut.u_parser.calculated_crc;
    wire               data_valid = dut.u_parser.data_valid;
    wire signed [15:0] mpu_z = dut.u_parser.mpu_z_data;
    wire               fifo_empty = dut.rx_fifo_empty;
    wire               rd_en = dut.parser_rd_en;
    // ────────────────────────────────────────────
    // 내부 신호 접근 보완 (FIR 출력 추가)
    // ────────────────────────────────────────────
    wire signed [15:0] filtered_z = dut.u_fir.data_out;  // FIR 출력값
    // wire [2:0]  parser_state = dut.u_parser.state;

    // ────────────────────────────────────────────
    // 패킷 전송 태스크
    // ────────────────────────────────────────────
    task send_byte(input [7:0] data);
        integer i;
        begin
            rx = 0;
            #(BIT_PERIOD);  // Start bit
            for (i = 0; i < 8; i = i + 1) begin
                rx = data[i];
                #(BIT_PERIOD);  // Data bits (LSB first)
            end
            rx = 1;
            #(BIT_PERIOD);  // Stop bit
            #(BIT_PERIOD);  // inter-byte gap
        end
    endtask

    // CRC 계산 함수 (XOR: LEN ^ CMD ^ PAYLOAD...)
    function [7:0] calc_crc;
        input [7:0] len;
        input [7:0] cmd;
        input [7:0] p0, p1;
        begin
            calc_crc = len ^ cmd ^ p0 ^ p1;
        end
    endfunction

    task send_mpu_packet(input [15:0] z_value);
        reg [7:0] crc;
        begin
            crc = calc_crc(8'h02, 8'h50, z_value[15:8], z_value[7:0]);
            $display("[%0t ns] >> SEND PACKET: Z=0x%04X (%0d), CRC=0x%02X", $time, z_value, $signed(z_value), crc);
            send_byte(8'hAA);
            send_byte(8'h02);
            send_byte(8'h50);
            send_byte(z_value[15:8]);
            send_byte(z_value[7:0]);
            send_byte(crc);
        end
    endtask

    // data_valid 감지 → 결과 출력
    always @(posedge clk) begin
        if (data_valid) begin
            $display("[%0t ns] << PARSED OK : mpu_z_data = 0x%04X (%0d)", $time, mpu_z, $signed(mpu_z));
            //FIR 데이터 감지용
            #1;
            $display("[%0t ns] << FIR FILTERED : raw = %d -> filtered = %d", $time, $signed(mpu_z), $signed(
                                                                                                        filtered_z));
        end
    end

    // ────────────────────────────────────────────
    // 테스트 시나리오
    // ────────────────────────────────────────────
    integer test_num;
    initial begin
        clk = 0;
        rst = 1;
        rx  = 1;
        #200;
        rst = 0;
        #200;

        $display("============================================");
        $display("  UART Packet Parser FIR Testbench Start");
        $display("============================================");


        // ── 시나리오 10: FIR 수렴 테스트 (Step Response) ──
        $display("\n[TEST 10] FIR Step Response: Sending same value 10 times");
        repeat(10) begin
            send_mpu_packet(16'h1000); // 4096 입력
            #(BIT_PERIOD * 10); // 패킷 간 약간의 간격
        end
        #100000;

        // ── 시나리오 11: 진동(Noise) 제거 테스트 ──
        $display("\n[TEST 11] Noise Filtering: High frequency oscillation");
        // +2000, -2000을 번갈아 보내며 출력이 0 근처에서 안정되는지 확인
        repeat(5) begin
            send_mpu_packet(16'h07D0); // +2000
            send_mpu_packet(16'hF830); // -2000
        end
        #100000;

        // ── 시나리오 12: 임펄스 응답 (Impulse Response) ──
        $display("\n[TEST 12] Impulse Response: One sharp spike");
        send_mpu_packet(16'h2000); // 8192 스파이크 입력
        repeat(8) begin
            send_mpu_packet(16'h0000); // 이후 0만 입력하여 필터가 빠져나가는 모양 확인
            #(BIT_PERIOD * 10);
        end
        #100000;

        // ── 시나리오 13: 진동 모사 (Low Frequency + High Frequency Noise) ──
        $display("\n[TEST 13] Vibration Simulation: Sine wave trend with noise");
        // 1000 -> 2000 -> 3000 -> 2000 -> 1000 순서의 흐름에 +-500 노이즈 추가
        send_mpu_packet(16'd1000 + 16'd500);  // 1500
        send_mpu_packet(16'd2000 - 16'd500);  // 1500
        send_mpu_packet(16'd3000 + 16'd500);  // 3500
        send_mpu_packet(16'd2000 - 16'd500);  // 1500
        send_mpu_packet(16'd1000 + 16'd500);  // 1500
        #100000;

        // ── 시나리오 14: 포화 및 부호 변환 테스트 ──
        $display("\n[TEST 14] Max range transition");
        send_mpu_packet(16'h7FFF); // 최대 양수
        #(BIT_PERIOD * 10);
        send_mpu_packet(16'h8000); // 최대 음수
        #(BIT_PERIOD * 10);
        #100000;

        $display("\n============================================");
        $display("  Simulation Finished.");
        $display("============================================");
        $finish;
    end

    // ────────────────────────────────────────────
    // 타임아웃 감시 (무한 루프 방지)
    // ────────────────────────────────────────────
    initial begin
        #50_000_000;
        $display("[TIMEOUT] Simulation exceeded time limit!");
        $finish;
    end

endmodule
