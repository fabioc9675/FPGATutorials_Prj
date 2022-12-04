//********************************************************
//   Copyright(c)2018, STEP FPGA 
//   All rights reserved
//   File name       :   mult4_tb.v
//   Module name     :   mult4_tb
//   Author          :   STEP
//   Email           :   info@stepfpga.com
//   Data            :   2018/08/01
//   Version         :   V1.0
//   Description     :   4ѡ1��·ѡ����Testbench
//********************************************************
`timescale 1ns/100ps    //����ʱ�䵥λ/ʱ�侫��
 
module mult4_tb();       
 
reg    a,b,c,d;         	//��Ҫ�����ļ����źŶ���
reg [1:0] sel;
wire   led;      	  //��Ҫ�۲������źŶ���
 
//��ʼ�����̿�
initial
begin
	a = 1;
	b = 0;
	c = 1;
	d = 0;
	sel = 2'b00;
	#50
	sel = 2'b10;
	#50
	sel = 2'b01;
	#50
	sel = 2'b11;
end

 
//module����������ʽ
mult4  u1 (      //mult4��ʾ��Ҫ������module���ƣ�u1�����Ƕ������������
		.a(a),     //��������ź����ӡ�
		.b(b),
		.c(c),
		.d(d),
		.sel(sel),
		.led(led)   //����ź�����
);
endmodule