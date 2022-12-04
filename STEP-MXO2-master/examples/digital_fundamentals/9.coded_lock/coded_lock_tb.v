//********************************************************
//   Copyright(c)2018, STEP FPGA 
//   All rights reserved
//   File name       :   coded_lock_tb.v
//   Module name     :   coded_lock_tb
//   Author          :   STEP
//   Email           :   info@stepfpga.com
//   Data            :   2018/08/01
//   Version         :   V1.0
//   Description     :   ������Testbench
//********************************************************
`timescale 1ns/100ps    //����ʱ�䵥λ/ʱ�侫��
 
module coded_lock_tb();       
 
reg    q,u,n,b,d;         	//��Ҫ�����ļ����źŶ���
wire   led1,led2;      	  //��Ҫ�۲������źŶ���
 
//��ʼ�����̿�
initial
begin
	{q,u,n,b} = 0;
	d = 0 ;
	#100
	d = 1 ;
end
always #10 q = ~q;      //��������a����10ns��ת
always #20 u = ~u;
always #25 n = ~n;
always #15 b = ~b;
 
//module����������ʽ
coded_lock  u1 (      //coded_lock��ʾ��Ҫ������module���ƣ�u1�����Ƕ������������
		.q(q),     //��������ź����ӡ�
		.u(u),
		.n(n),
		.b(b),
		.d(d),
		.led1(led1),
		.led2(led2)   //����ź�����
);
endmodule