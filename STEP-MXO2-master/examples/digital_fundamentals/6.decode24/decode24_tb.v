//********************************************************
//   Copyright(c)2018, STEP FPGA 
//   All rights reserved
//   File name       :   decode24_tb.v
//   Module name     :   decode24_tb
//   Author          :   STEP
//   Email           :   info@stepfpga.com
//   Data            :   2018/08/01
//   Version         :   V1.0
//   Description     :   24������Testbench
//********************************************************
`timescale 1ns/100ps    //����ʱ�䵥λ/ʱ�侫��
 
module decode24_tb();       
 
reg    [1:0] a;         	//��Ҫ�����ļ����źŶ���
wire   [3:0] led;      	  //��Ҫ�۲������źŶ���
 
//��ʼ�����̿�
initial
begin
	a = 2'b00;
	#20
	a = 2'b01;
	#20
	a = 2'b10;
	#20
	a = 2'b11;
	#20
	a = 2'b00;
end

 
//module����������ʽ
decode24  u1 (      //decode24��ʾ��Ҫ������module���ƣ�u1�����Ƕ������������
		.a(a),     //��������ź����ӡ�
		.led(led)   //����ź�����
);
endmodule