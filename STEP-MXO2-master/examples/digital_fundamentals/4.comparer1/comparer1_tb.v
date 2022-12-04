//********************************************************
//   Copyright(c)2018, STEP FPGA 
//   All rights reserved
//   File name       :   comparer1_tb.v
//   Module name     :   comparer1_tb
//   Author          :   STEP
//   Email           :   info@stepfpga.com
//   Data            :   2018/08/01
//   Version         :   V1.0
//   Description     :   �Ƚ���Testbench
//********************************************************
`timescale 1ns/100ps    //����ʱ�䵥λ/ʱ�侫��
 
module halfadder_tb();       
 
reg    a,b;         	//��Ҫ�����ļ����źŶ���
wire   led1,led2,led3;  //��Ҫ�۲������źŶ���
 
//��ʼ�����̿�
initial
begin
	a = 0;
	b = 0;
end
always #10 a = ~a;      //��������a����10ns��ת
always #15 b = ~b;
 
//module����������ʽ
comparer1  u1 (      //comparer1��ʾ��Ҫ������module���ƣ�u1�����Ƕ�����������ƣ���������ĸ��ͷ
		.a(a),     //��������ź����ӡ�
		.b(b),
		.led1(led1), //����ź�����
		.led2(led2),
		.led3(led3)
);
endmodule