`timescale 1ns / 1ps

module coord_transform #(
    parameter integer BELT_SPEED_Q8 = 25600,  //1초에 몇 mm 이동하는지
    parameter integer TIMER_FREQ = 100_000_000, //x좌표를 시간 기준으로 계산할 때 사용
    parameter integer CORDIC_LATENCY = 20 //CORDIC IP가 sin, cos을 내보내기까지 걸리는 시간
) (
    input logic clk,
    input logic reset,
    input logic i_trigger,  //적외선 센서 신호
    input logic [15:0] distance_q2,  //4배 스케일링 된 거리 데이터
    input logic [14:0] angle_q6,  //64배 스케일링 된 각도 데이터
    input logic                 data_valid,  //새로운 데이터 한 점이 들어왔다는 신호(라이다가 보내줌)
    //음수 표현이 가능하도록 signed로 선언
    output logic signed [31:0] o_x,  // Q8 mm
    output logic signed [31:0] o_y,  // Q8 mm
    output logic signed [31:0] o_z,  // Q8 mm
    output logic               o_valid //모든 CORDIC 연산이 끝났으니 이 좌표값을 읽어가도 좋다는 신호.
                                       //PS가 이 신호를 읽음
);

  logic [31:0] internal_timer;
  logic [31:0] r_timer_snap;  //찰나의 internal_timer를 레지스터에 저장
  logic [15:0] r_dist_snap;  //찰나의 거리값(distance_q2)를 레지스터에 저장
  logic signed [15:0] r_cordic_phase; //라이다 각도(0~360도)를 CORDIC IP가 이해할 수 있도록 숫자로 변환한 값
  logic               r_cordic_valid; //각도 변환이 끝났으니 CORDIC IP에게 일하라고 알려주는 신호(1클럭 지연)

  logic [31:0] w_sincos_tdata;  //CORDIC IP가 뱉어낸 {cos, sin} 데이터가 합쳐진 묶음
  logic w_sincos_tvalid;  //CORDIC 연산이 끝났다는 플래그 신호

  logic signed [15:0] w_cos = $signed(w_sincos_tdata[31:16]);
  logic signed [15:0] w_sin = $signed(w_sincos_tdata[15:0]);

  //CORDIC  지연만큼 거리/타이머 데이터 밀어주기
  logic [15:0] r_dist_pipe[0:CORDIC_LATENCY-1];
  logic [31:0] r_timer_pipe[0:CORDIC_LATENCY-1];

  always_ff @(posedge clk or posedge reset) begin
    if (reset) begin
      internal_timer <= 0;
    end else if (i_trigger) begin
      internal_timer <= 0;
    end else begin
      internal_timer <= internal_timer + 1'b1;
    end
  end

  //1. 라이다가 점을 찍은 순간을 찍기
  //2. 계산기용 각도로 변환하기
  always_ff @(posedge clk or posedge reset) begin
    if (reset) begin
      r_cordic_phase <= 16'sd0;
      r_cordic_valid <= 1'b0;
    end else begin
      r_cordic_valid <= data_valid;
      if (data_valid) begin
        r_cordic_phase <= $signed(
            (32'(angle_q6) * 32'd32767) / 32'd11520
        );  //라이다 -> CORDIC 각도 변환
        r_timer_snap <= internal_timer;
        r_dist_snap <= distance_q2;
      end
    end
  end

  cordic_0 U_CORDIC (
      .aclk               (clk),
      .s_axis_phase_tdata (r_cordic_phase),
      .s_axis_phase_tvalid(r_cordic_valid),
      .m_axis_dout_tdata  (w_sincos_tdata),
      .m_axis_dout_tvalid (w_sincos_tvalid)
  );

  //20클럭 지연
  always_ff @(posedge clk) begin
    r_dist_pipe[0]  <= r_dist_snap;
    r_timer_pipe[0] <= r_timer_snap;
    for (int i = 1; i < CORDIC_LATENCY; i++) begin
      r_dist_pipe[i]  <= r_dist_pipe[i-1];
      r_timer_pipe[i] <= r_timer_pipe[i-1];
    end
  end


  //최종 좌표 연산
  always_ff @(posedge clk or posedge reset) begin
    if (reset) begin
      o_valid <= 1'b0;
    end else begin
      o_valid <= w_sincos_tvalid;
      if (w_sincos_tvalid) begin
        //y,z연산 (dist*cos/sin)
        o_y <= $signed(($signed(32'(r_dist_pipe[CORDIC_LATENCY-1])) * w_cos) / 32'sd131068);
        o_z <= $signed(($signed(32'(r_dist_pipe[CORDIC_LATENCY-1])) * w_sin) / 32'sd131068);
        //x연산 (speed*time)
        o_x <= $signed(
            (64'(BELT_SPEED_Q8) * 64'(r_timer_pipe[CORDIC_LATENCY-1])) / 64'(TIMER_FREQ * 256)
        );
      end
    end
  end

endmodule
