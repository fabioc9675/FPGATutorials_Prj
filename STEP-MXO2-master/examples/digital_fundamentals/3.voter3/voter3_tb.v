//********************************************************
//   Copyright(c)2018, STEP FPGA 
//   All rights reserved
//   File name       :   voter3_tb.v
//   Module name     :   voter3_tb
//   Author          :   STEP
//   Email           :   info@stepfpga.com
//   Data            :   2018/08/01
//   Version         :   V1.0
//   Description     :   3��������Testbench
//********************************************************
`timescale 1ns/100ps    //����ʱ�䵥λ/ʱ�侫��
 
module voter3_tb();       
 
reg    a,b,c;         	//��Ҫ�����ļ����źŶ���
wire   led;      	  //��Ҫ�۲������źŶ���
 
//��ʼ�����̿�
initial
begin
	a = 0;
	b = 0;
	c = 0;
end
always #10 a = ~a;      //��������a����10ns��ת
always #15 b = ~b;
always #20 c = ~c;
 
//module����������ʽ
voter3  u1 (      //voter3��ʾ��Ҫ������module���ƣ�u1�����Ƕ������������
		.a(a),     //��������ź����ӡ�
		.b(b),
		.c(c), 
		.led(led)   //����ź�����
);
endmodule