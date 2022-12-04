//********************************************************
//   Copyright(c)2018, STEP FPGA 
//   All rights reserved
//   File name       :   stepmotor1.v,divide.v
//   Module name     :   stepmotor1
//   Author          :   STEP
//   Email           :   info@stepfpga.com
//   Data            :   2018/08/01
//   Version         :   V1.0
//   Description     :   ������������Ĳ�����������ת����ת��ֹͣ�Ŀ��Ƶ�·��
//						�����ת����Ϊ����ת30s��ͣ10s����ת30s��ͣ10s����ת30s����
//						��ɫled��ʾת��״̬����ת��RGBLED1��
//										  ��ת��RGBLED2��
//                                        ֹͣ��ͬʱ��

//********************************************************
module stepmotor1
(
input wire clk,rst,
output wire [5:0] led
);

wire 	clk1h;				//1��ʱ��
reg	[5:0] dir;				//���ת��������ơ���ת000111����ת111000��ֹͣ000000
reg	[5:0] timecont;			//��ʱ

parameter 	S1 = 2'b00,		//�������״̬ ��ת
			S2 = 2'b01,		//ֹͣ
			S3 = 2'b10,		//��ת
			S4 = 2'b11;		//ֹͣ
			
			
parameter	TIME_S1 = 6'd30,	//��ת��ʱ30��
			TIME_S2 = 6'd10, 	//ֹͣ��ʱ10��
			TIME_S3 = 6'd30;	//��ת��ʱ30��
			
reg [1:0] cur_state,next_state;	
			
divide #(					//����1��ʱ���ź�
.WIDTH(24),
.N(12000000)
) u1
(
.clk(clk),
.rst_n(rst),
.clkout(clk1h)
);

always@(posedge clk1h or negedge rst)        //��һ��
	if(!rst)
		cur_state <= S1;
    else 
	    cur_state <= next_state;

always@(cur_state or rst or timecont)        //�ڶ��Σ�״̬ת��
	if(!rst)
		begin
			next_state = S1;
		end
	else
		begin
			case(cur_state)				     //�жϵ�ǰ״̬
				S1:begin
					if(timecont == 1)        //��ʱ������ת��S2�����򱣳�S1
						next_state = S2;
					else
						next_state = S1;
					end
				S2:begin
					if(timecont == 1)		//��ʱ������ת��S3�����򱣳�S2
						next_state = S3;
					else
						next_state = S2;
					end
				S3:begin
					if(timecont == 1)        //��ʱ������ת��S4�����򱣳�S3
						next_state = S4;
					else
						next_state = S3;
					end
				S4:begin
					if(timecont == 1)        //��ʱ������ת��S1�����򱣳�S4
						next_state = S1;
					else
						next_state = S4;
					end
				default:next_state = next_state;
			endcase
		end

always@(posedge clk1h or negedge rst)			//�����Σ���ǰ״̬���
	if(!rst)
		begin
			timecont <= TIME_S1;
			dir <= 6'b000111;
		end
	else
		begin
			case(next_state)
				S1:begin
					dir <= 6'b000111;           //��ת״̬���
					if(timecont == 1)			//��ʱ����		
						timecont <= TIME_S1;    //��ʱ�������µ�ֵ
					else
						timecont <= timecont - 1;//��ʱ��1
					end
				S2:begin
					dir <= 6'b000000;
					if(timecont == 1)
						timecont <= TIME_S2;
					else
						timecont <= timecont - 1;
					end
				S3:begin
					dir <= 6'b111000;
					if(timecont == 1)
						timecont <= TIME_S3;
					else
						timecont <= timecont - 1;
					end
				S4:begin
					dir <= 6'b111000;
					if(timecont == 1)
						timecont <= TIME_S2;
					else
						timecont <= timecont - 1;
					end
				default:begin
							dir <= 6'b000111;
							timecont <= TIME_S1;
						end
			endcase
		end
assign 	led = dir;		             //״̬���������Ӧ��led

endmodule
			
		
					
		

