// ********************************************************************
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// ********************************************************************
// File name    : traffic.v
// Module name  : traffic
// Author       : STEP
// Description  : 
// Web          : www.stepfpga.com
// 
// --------------------------------------------------------------------
// Code Revision History : 
// --------------------------------------------------------------------
// Version: |Mod. Date:   |Changes Made:
// V1.0     |2017/03/02   |Initial ver
// --------------------------------------------------------------------
// Module Function:���׽�ͨ��


module traffic
(
	clk			,    //ʱ��
	rst_n		,    //��λ
	out			     //��ɫled����ͨ��
);

	input 	clk,rst_n;     
	output	reg[5:0]	out;
 
	parameter      	S1 = 4'b00,    //״̬��״̬����
					S2 = 4'b01,
					S3 = 4'b10,
					S4 = 4'b11;
	
	parameter		time_s1 = 4'd15, //��ʱ����
					time_s2 = 4'd3,
					time_s3 = 4'd10,
					time_s4 = 4'd3;
	//��ͨ�ƵĿ���
	parameter		led_s1 = 6'b101011, // LED2 ��ɫ LED1 ��ɫ
					led_s2 = 6'b110011, // LED2 ��ɫ LED1 ��ɫ
					led_s3 = 6'b011101, // LED2 ��ɫ LED1 ��ɫ
					led_s4 = 6'b011110; // LED2 ��ɫ LED1 ��ɫ
 
	reg 	[3:0] 	timecont;
	reg 	[1:0] 	cur_state,next_state;  //��̬����̬
 
	wire			clk1h;  //1Hzʱ��
	
	//����1���ʱ������
	divide #(.WIDTH(32),.N(12000000)) CLK1H (
								.clk(clk),
								.rst_n(rst_n),
								.clkout(clk1h));

	//��һ�� ͬ���߼� ������̬����̬��ת��
	always @ (posedge clk1h or negedge rst_n)
	begin
		if(!rst_n) 
			cur_state <= S1;
        else 
			cur_state <= next_state;
	end
	//�ڶ��� ����߼�����״̬ת�Ƶ��ж�
	always @ (cur_state or rst_n or timecont)
	begin
		if(!rst_n) begin
			next_state = S1;
			end
		else begin
			case(cur_state)
				S1:begin
					if(timecont==1) 
						next_state = S2;
					else 
						next_state = S1;
				end
 
                S2:begin
					if(timecont==1) 
						next_state = S3;
					else 
						next_state = S2;
				end
 
                S3:begin
					if(timecont==1) 
						next_state = S4;
					else 
						next_state = S3;
				end
 
                S4:begin
					if(timecont==1) 
						next_state = S1;
					else 
						next_state = S4;
				end
 
				default: next_state = S1;
			endcase
		end
	end
	//������  ͬ���߼� ������̬���������
	always @ (posedge clk1h or negedge rst_n)
	begin
		if(!rst_n==1) begin
			out <= led_s1;
			timecont <= time_s1;
			end 
		else begin
			case(next_state)
				S1:begin
					out <= led_s1;
					if(timecont == 1) 
						timecont <= time_s1;
					else 
						timecont <= timecont - 1;
				end
 
				S2:begin
					out <= led_s2;
					if(timecont == 1) 
						timecont <= time_s2;
					else 
						timecont <= timecont - 1;
				end
 
				S3:begin
					out <= led_s3;
					if(timecont == 1) 
						timecont <= time_s3;
					else 
						timecont <= timecont - 1;
				end
 
				S4:begin
					out <= led_s4;
					if(timecont == 1) 
						timecont <= time_s4;
					else 
						timecont <= timecont - 1;
				end
 
				default:begin
					out <= led_s1;
					end
			endcase
		end
	end
endmodule