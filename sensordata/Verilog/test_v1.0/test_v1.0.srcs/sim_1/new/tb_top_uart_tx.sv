`timescale 1ns / 1ps

module tb_top_uart_tx ();

    // 신호 선언
    logic clk;
    logic rst;
    logic rx;
    logic tx;

    // 클럭 주기 설정 (100MHz = 10ns)
    localparam CLK_PERIOD = 10;
    // UART 비트 주기 설정 (115200bps ≈ 8680ns)
    localparam BIT_PERIOD = 8680;

    // DUT (Design Under Test) 인스턴스
    top_uart dut (
        .clk(clk),
        .rst(rst),
        .rx (rx),
        .tx (tx)
    );

    // 100MHz 클럭 생성
    initial begin
        clk = 0;
        forever #(CLK_PERIOD / 2) clk = ~clk;
    end

    // UART 바이트 송신 태스크
    task send_uart_byte(input [7:0] data);
        integer i;
        begin
            rx = 0;  // Start bit
            #(BIT_PERIOD);
            for (i = 0; i < 8; i = i + 1) begin
                rx = data[i];  // Data bits
                #(BIT_PERIOD);
            end
            rx = 1;  // Stop bit
            #(BIT_PERIOD);
            #(BIT_PERIOD);  // 바이트 간 여유
        end
    endtask

    // CRC 계산 함수
    function [7:0] calc_crc;
        input [7:0] len, cmd, p0, p1;
        begin
            calc_crc = len ^ cmd ^ p0 ^ p1;
        end
    endfunction

    // 패킷 전송 통합 태스크 (필터 탭 채우기용)
    task send_mpu_packet(input [15:0] z_val);
        begin
            send_uart_byte(8'hAA); // SOF
            send_uart_byte(8'h02); // LEN
            send_uart_byte(8'h50); // CMD
            send_uart_byte(z_val[15:8]); // DATA_H
            send_uart_byte(z_val[7:0]);  // DATA_L
            send_uart_byte(calc_crc(8'h02, 8'h50, z_val[15:8], z_val[7:0])); // CRC
            #(BIT_PERIOD * 60); // Basys3가 TX로 5바이트를 다 쏠 때까지 충분히 대기
        end
    endtask

    // 시나리오 시작
    initial begin
        // 초기화
        rst = 1;
        rx  = 1;
        #100;
        rst = 0;
        #200;

        $display("====================================================");
        $display("  STARTING FIR FILTER TAP-FILL TEST (10 Packets)");
        $display("====================================================");

        // --- 시나리오: 동일한 값을 10번 전송하여 필터 탭을 채움 ---
        // 8-Tap 필터이므로 8번 이상 들어와야 출력이 입력값에 수렴함
        repeat(10) begin
            send_mpu_packet(16'h1234); // 4660 입력
        end

        // --- 시나리오: 음수 값으로 변경하여 필터 반응 확인 ---
        $display("\nSending Negative Values to see filter response...");
        repeat(5) begin
            send_mpu_packet(16'hEDCC); // -4660 입력
        end

        $display("Simulation Finished.");
        $finish;
    end

    // --- 콘솔 가독성을 위한 수신 데이터 복원 로직 ---
    logic [7:0] captured_bytes[5];
    integer byte_idx = 0;

    initial begin
        forever begin
            @(negedge tx);  // Start bit 감지
            #(BIT_PERIOD * 1.5);  // 데이터 비트 중간으로 이동

            for (integer i = 0; i < 8; i = i + 1) begin
                captured_bytes[byte_idx][i] = tx;
                #(BIT_PERIOD);
            end

            byte_idx = byte_idx + 1;

            if (byte_idx == 5) begin
                $display("\n[TIME: %0t ns] ====================================", $time);
                $display("  BASYS3 -> PC PACKET DETECTED");
                $display("  ------------------------------------");
                $display("  Header   : 0x%02X", captured_bytes[0]);
                $display("  RAW_Z    : 0x%04X (%0d)", 
                         {captured_bytes[1], captured_bytes[2]},
                         $signed({captured_bytes[1], captured_bytes[2]}));
                $display("  FILTERED : 0x%04X (%0d)", 
                         {captured_bytes[3], captured_bytes[4]},
                         $signed({captured_bytes[3], captured_bytes[4]}));
                $display("====================================================\n");
                byte_idx = 0;
            end
        end
    end

    // initial begin
    //     $monitor("Time=%0t | TX_OUT=%b", $time, tx);
    // end

endmodule