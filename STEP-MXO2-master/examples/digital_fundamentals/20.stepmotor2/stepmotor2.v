//********************************************************
//   Copyright(c)2018, STEP FPGA 
//   All rights reserved
//   File name       :   stepmotor2.v,divide.v
//   Module name     :   stepmotor2
//   Author          :   STEP
//   Email           :   info@stepfpga.com
//   Data            :   2018/08/01
//   Version         :   V1.0
//   Description     :   ����������п��Ƶ�·��A��B��C��D�ֱ��ʾ����������������飬
//						�������������˫���ķ�ʽ���С�
//							���ƶ�T��1����������������ͨ��˳��ΪAC��DA��BD��CB��AC����
//							���ƶ�T��0����������������ͨ��˳��ΪAC��CB��BD��DA��AC����
//********************************************************
module stepmotor2
(
input wire clk,rst,
input wire dir,					//���ƶ� 1����ת 0����ת
output wire [3:0] led			//������ƶ�Ӧ��led,A(led[0]),B(led[1]),C(led[2]),D(led[3])
);

wire 	clk1h;				//1��ʱ��
reg	[3:0] ctrl;				//DCBA�������

parameter 	S1 = 2'b00,		//�������״̬ AC
			S2 = 2'b01,		//DA
			S3 = 2'b10,		//BD
			S4 = 2'b11;		//CB
			
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

always@(cur_state or rst or dir)        //�ڶ��Σ�״̬ת��,dir���Ʒ���
	if(!rst)
		begin
			next_state = S1;
		end
	else
		begin
			if(dir)                         //�����ƶ�Ϊ1����ת
				case(cur_state)
					S1:next_state = S2;     //��תS1-S2-S3-S4-S1
					S2:next_state = S3;
					S3:next_state = S4;
					S4:next_state = S1;
				endcase
			else                             //�����ƶ�Ϊ0����ת
				case(cur_state)
					S1:next_state = S4;      //��תS1-S4-S3-S2-S1
					S2:next_state = S1;
					S3:next_state = S2;
					S4:next_state = S3;
				endcase
		end

always@(posedge clk1h or negedge rst)			//�����Σ���ǰ״̬���
	if(!rst)
		begin
			ctrl <= 4'b0101;
		end
	else
		begin
			case(next_state)
				S1: ctrl <= 4'b0101;           //AC
				S2: ctrl <= 4'b1001;		   //DA
				S3: ctrl <= 4'b1010;		   //DB
				S4: ctrl <= 4'b0110;		   //CB
				default: ctrl <= 4'b0101;
			endcase
		end
assign 	led = ctrl;		             //״̬���������Ӧ��led

endmodule
			
		
					
		

