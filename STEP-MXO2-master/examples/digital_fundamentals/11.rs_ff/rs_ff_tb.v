//********************************************************
//   Copyright(c)2018, STEP FPGA 
//   All rights reserved
//   File name       :   rs_ff_tb.v
//   Module name     :   rs_ff_tb
//   Author          :   STEP
//   Email           :   info@stepfpga.com
//   Data            :   2018/08/01
//   Version         :   V1.0
//   Description     :   RS������Testbench
//********************************************************
`timescale 1ns/100ps    //����ʱ�䵥λ/ʱ�侫��
 
module rs_ff_tb();       
 
reg    clk,r,s;         	//��Ҫ�����ļ����źŶ���
wire   q,qb;      	  //��Ҫ�۲������źŶ���
 
//��ʼ�����̿�
initial
begin
	clk = 0;
	r = 0;
	s = 0;
	#50
	r = 0;
	s = 1;
	#50
	r = 1;
	s = 0;
	#50
	r = 1;
	s = 1;
	#50
	r = 0;
	s = 1;
end
always #10 clk = ~clk;      //��������clk��Ƶ��50MHz

 
//module����������ʽ
rs_ff  u1 (      //rs_ff��ʾ��Ҫ������module���ƣ�u1�����Ƕ������������
		.clk(clk),     //��������ź����ӡ�
		.r(r),
		.s(s),
		.q(q),    //����ź�����
		.qb(qb)   
);
endmodule