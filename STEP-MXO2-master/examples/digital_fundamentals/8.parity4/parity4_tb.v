//********************************************************
//   Copyright(c)2018, STEP FPGA 
//   All rights reserved
//   File name       :   parity4_tb.v
//   Module name     :   parity4_tb
//   Author          :   STEP
//   Email           :   info@stepfpga.com
//   Data            :   2018/08/01
//   Version         :   V1.0
//   Description     :   4λ��żУ������·Testbench
//********************************************************
`timescale 1ns/100ps    //����ʱ�䵥λ/ʱ�侫��
 
module parity4_tb();       
 
reg    a,b,c,d;         	//��Ҫ�����ļ����źŶ���
wire   led;      	  //��Ҫ�۲������źŶ���
 
//��ʼ�����̿�
initial
begin
	a = 0;
	b = 0;
	c = 0;
	d = 0;
end
always #10 a = ~a;      //��������a����10ns��ת
always #20 b = ~b;
always #25 c = ~c;
always #15 d = ~d;
 
//module����������ʽ
parity4  u1 (      //parity4��ʾ��Ҫ������module���ƣ�u1�����Ƕ������������
		.a(a),     //��������ź����ӡ�
		.b(b),
		.c(c),
		.d(d),
		.led(led)   //����ź�����
);
endmodule