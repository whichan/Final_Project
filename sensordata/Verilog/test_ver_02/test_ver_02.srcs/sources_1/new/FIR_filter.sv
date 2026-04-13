`timescale 1ns / 1ps

module FIR_filter #(
    parameter TAP = 8,
    parameter COEFF_WIDTH = 10  // 계수 스케일링 비트 (2^10 = 1024)
) (
    input                      clk,
    input                      reset,       // 리셋 (Active High)
    input  logic               data_valid,
    input  logic signed [15:0] data_in,     // 16-bit 입력 신호 (ADC 결과값)
    output logic signed [15:0] data_out     // 16-bit 필터링된 출력
);

    // FIR 필터 계수 (Low Pass Filter 예시, 8-Tap)  
    // 실제 설계 시 MATLAB이나 Python으로 산출한 계수를 적용하세요.
    // 계수는 정밀도를 위해 2^10(1024)을 곱한 정수값입니다.

    logic signed [15:0] coeff[0:TAP-1];
    assign coeff[0] = 16'd40;
    assign coeff[1] = 16'd90;
    assign coeff[2] = 16'd150;
    assign coeff[3] = 16'd232;  // 합계를 1024로 맞춤
    assign coeff[4] = 16'd232;
    assign coeff[5] = 16'd150;
    assign coeff[6] = 16'd90;
    assign coeff[7] = 16'd40;
    // assign coeff[0] = 16'd50;
    // assign coeff[1] = 16'd120;
    // assign coeff[2] = 16'd200;
    // assign coeff[3] = 16'd300;
    // assign coeff[4] = 16'd300;
    // assign coeff[5] = 16'd200;
    // assign coeff[6] = 16'd120;
    // assign coeff[7] = 16'd50;


    logic signed [15:0] delay_pipeline[0:TAP-1];  // Delay Line (Shift Register)
    logic signed [31:0] prod[0:TAP-1];  // Multiplication Results (32-bit로 확장하여 Overflow 방지)
    logic signed [31:0] sum_reg;  // Sum of products

    // 1. Shift Register & Multipliers (Parallel Structure)
    // generate 문을 사용하여 TAP 수만큼 병렬 회로 생성
    genvar k;
    generate
        for (k = 0; k < TAP; k = k + 1) begin : gen_fir_core
            always_ff @(posedge clk or posedge reset) begin
                if (reset) begin
                    delay_pipeline[k] <= 16'd0;
                    prod[k] <= 32'd0;
                end else if (data_valid) begin  // 데이터가 새로 들어왔을 때 동작
                    // 데이터 시프트
                    if (k == 0) delay_pipeline[0] <= data_in;
                    else delay_pipeline[k] <= delay_pipeline[k-1];

                    // 곱셈 연산
                    prod[k] <= delay_pipeline[k] * coeff[k];
                end
            end
        end
    endgenerate

    // 2. Accumulate (Combinational Sum)
    // 항상 고정된 TAP 수가 아니므로 for 루프를 사용하여 합산
    integer i;
    logic signed [31:0] current_sum;

    always_comb begin
        current_sum = 32'd0;
        for (i = 0; i < TAP; i = i + 1) begin
            current_sum = current_sum + prod[i];
        end
    end

    // 3. Final Output Scaling
    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            data_out <= 16'd0;
        end else if (data_valid) begin  //출력 업데이트 동기화
            data_out <= current_sum >>> COEFF_WIDTH;
        end
    end

endmodule
