//********************************************************
//   Copyright(c)2018, STEP FPGA 
//   All rights reserved
//   File name       :   mult4.v
//   Module name     :   mult4
//   Author          :   STEP
//   Email           :   info@stepfpga.com
//   Data            :   2018/08/01
//   Version         :   V1.0
//   Description     :   4ѡ1��·ѡ����
//********************************************************

module mult4
(
input wire a,           //������λ����
input wire b,
input wire c,
input wire d,
input wire [1:0]  sel,  //���������ѡ�����
output reg  led    	   //����ѡ������������Ӧ��led
);

always@(sel)           //����sel���ѡ���������sel�仯ʱִ��
	begin
		case(sel)
			2'b00: led = a;
			2'b01: led = b;
			2'b10: led = c;
			2'b11: led = d;
		endcase
	end

endmodule