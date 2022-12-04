//********************************************************
//   Copyright(c)2018, STEP FPGA 
//   All rights reserved
//   File name       :   dff.v
//   Module name     :   dff
//   Author          :   STEP
//   Email           :   info@stepfpga.com
//   Data            :   2018/08/01
//   Version         :   V1.0
//   Description     :   D����������ͬ����λ
//********************************************************
module dff
(						//ģ��������������
input clk,rst,d,	
output reg q,
output wire qb
);

assign qb = ~q;

always @( posedge clk )   //ֻ��clk������ʱ�̴���
	if(!rst)				  //��λ�ź��жϣ�����Ч
		q <= 1'b0;        //��λ��Чʱ����
	else
		q <= d;           //����ʱ���qֵΪ����d

endmodule 