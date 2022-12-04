//********************************************************
//   Copyright(c)2018, STEP FPGA 
//   All rights reserved
//   File name       :   answer.v,judge.v,score.v,debounce.v
//						 dseg.v,segment_led.v,divide.v
//   Module name     :   answer
//   Author          :   STEP
//   Email           :   info@stepfpga.com
//   Data            :   2018/08/01
//   Version         :   V1.0
//   Description     :   ����������
//			1��һ��4��ѡ�֣��ÿ���k1,k2,k3,k4��ʾ��			
//			2�������˸�λ��ʼ���𣬻�������ѡ����ʾ��Ӧled������ʱ�䳬��30�뱨��
//	        3��ÿλѡ�ֳ�ʼ����5�֣�RESET��λ���������˿��Ƽӷּ��ְ�����ÿ������
//			�����1�֣����9�֣�������ѡ�ַ�����ʾ�������
                                       
//********************************************************
module answer
(
input wire clk,rst,             //ʱ�Ӻ͸�λ�ź�
input wire k1,k2,k3,k4,         //ѡ�ֿ���
input wire reset,add,sub,       //��λ�������ӷ֣����ְ���
output wire led1,led2,led3,led4,//ѡ�ֶ�Ӧled
output wire buzz,               //�����ź�
output wire [8:0] segment_led   //������ź�
);

wire clk1h;
divide #(					//����1��ʱ���ź�
.WIDTH(24),
.N(12000000)
) u1
(
.clk(clk),
.rst_n(rst),
.clkout(clk1h)
);

judge u2                    //�ж�����ѡ�֣����ⳬʱ����
(
.clk(clk1h),					
.k1(k1),.k2(k2),.k3(k3),.k4(k4),			
.start(rst),				
.out1(led1),.out2(led2),.out3(led3),.out4(led4),	
.buzz(buzz)					
);

wire [3:0] score1,score2,score3,score4;
score u3                      //�����˿��ƴ���ѡ�ַ���
(
.clk(clk),.rst(rst),
.add(add),.sub(sub),
.reset(reset),
.c1(led1),.c2(led2),.c3(led3),.c4(led4),
.score1(score1),.score2(score2),.score3(score3),.score4(score4)
);

dseg u4                       //�����������ʾ����ѡ�ַ���
(
.rst(rst),
.c1(led1),.c2(led2),.c3(led3),.c4(led4),
.score1(score1),.score2(score2),.score3(score3),.score4(score4),
.segment_led(segment_led)
);

endmodule