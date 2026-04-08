`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/04/07 20:35:11
// Design Name: 
// Module Name: tb_top_uart
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


module tb_top_uart ();
    // 신호 선언
    reg  clk;
    reg  rst;
    reg  rx;
    wire tx;

    // 115200 Baudrate를 위한 비트 주기 계산 (100MHz 기준)
    // 1 / 115200 = 약 8680.5 ns
    localparam BIT_PERIOD = 8680;

    // DUT (Device Under Test) 인스턴스
    // 포트 리스트를 top_uart 선언에 맞춰 연결하세요.
    top_uart dut (
        .clk(clk),
        .rst(rst),
        .rx (rx)
    );

    // 100MHz 클럭 생성 (10ns 주기)
    always #5 clk = ~clk;

    // UART 1바이트 전송 태스크 (STM32의 동작 모사)
    task send_byte(input [7:0] data);
        integer i;
        begin
            rx = 0;  // Start Bit
            #(BIT_PERIOD);
            for (i = 0; i < 8; i = i + 1) begin
                rx = data[i];  // Data Bits (LSB First)
                #(BIT_PERIOD);
            end
            rx = 1;  // Stop Bit
            #(BIT_PERIOD);
            #(BIT_PERIOD);  // 바이트 간 여유 간격
        end
    endtask

    // 시나리오 시작
    initial begin
        // 초기화
        clk = 0;
        rst = 1;
        rx  = 1;  // UART Idle 상태는 High

        #100;
        rst = 0;
        #100;

        // --- 패킷 전송 시나리오 ---
        // SOF(AA) + LEN(02) + CMD(50) + DATA(12 34) + CRC(XOR 결과)
        // CRC 계산: 02 ^ 50 ^ 12 ^ 34 = 76 (XOR 방식 가정)

        $display("Sending MPU Z-axis Packet: 0x1234...");
        send_byte(8'hAA);  // SOF
        send_byte(8'h02);  // LEN
        send_byte(8'h50);  // CMD
        send_byte(8'h12);  // DATA High (0x12)
        send_byte(8'h34);  // DATA Low  (0x34)
        send_byte(8'h76);  // CRC

        #50000;  // 파싱 및 FIR 연산 대기 시간

        // 다른 값 전송 테스트 (0xABCD)
        // CRC: 02 ^ 50 ^ AB ^ CD = 1E
        $display("Sending MPU Z-axis Packet: 0xABCD...");
        send_byte(8'hAA);
        send_byte(8'h02);
        send_byte(8'h50);
        send_byte(8'hAB);
        send_byte(8'hCD);
        send_byte(8'h1E);

        #100000;
        $display("Simulation Finished.");
        $finish;
    end
endmodule
