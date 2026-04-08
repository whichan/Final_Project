`timescale 1ns / 1ps

module tb_FIR_filter();

    // 파라미터 정의
    parameter TAP = 8;
    parameter CLK_PERIOD = 10; // 100MHz (Basys3 기본 클락)

    // 신호 선언
    logic clk;
    logic reset;
    logic signed [15:0] data_in;
    logic signed [15:0] data_out;

    // DUT (Device Under Test) 인스턴스화
    FIR_filter #(
        .TAP(TAP),
        .COEFF_WIDTH(10)
    ) dut (
        .clk(clk),
        .reset(reset),
        .data_in(data_in),
        .data_out(data_out)
    );

    // 클락 생성
    always #(CLK_PERIOD/2) clk = ~clk;

    // 시뮬레이션 시나리오
    initial begin
        // 초기화
        clk = 0;
        reset = 1;
        data_in = 0;

        // 1. 리셋 해제 (100ns 후)
        #(CLK_PERIOD * 10);
        reset = 0;
        $display("--- Simulation Start: Reset Released ---");

        // 2. 임펄스 응답 테스트 (Impulse Response)
        // 입력에 1024(Scale된 1.0)를 한 번만 넣으면 출력으로 필터 계수가 순차적으로 나와야 함
        #(CLK_PERIOD);
        data_in = 16'd1024; 
        #(CLK_PERIOD);
        data_in = 16'd0;

        // 계수만큼(8-tap) 출력 확인을 위해 대기
        #(CLK_PERIOD * 10);
        $display("--- Impulse Response Test Finished ---");

        // 3. DC 성분 테스트 (모든 입력을 일정하게 유지)
        // 모든 계수의 합이 출력으로 수렴하는지 확인
        data_in = 16'd512; // 0.5 값 주입
        #(CLK_PERIOD * 20);
        $display("--- DC Step Test Finished ---");

        // 4. 노이즈 신호 시뮬레이션 (랜덤 신호)
        repeat(50) begin
            #(CLK_PERIOD);
            data_in = $signed($urandom_range(0, 2000)) - 1000;
        end

        #(CLK_PERIOD * 10);
        $display("--- All Tests Finished ---");
        $finish;
    end

    // 모니터링 (필요 시 파동 창 외에 텍스트로 확인)
    initial begin
        $monitor("Time: %0t | In: %d | Out: %d", $time, data_in, data_out);
    end

endmodule