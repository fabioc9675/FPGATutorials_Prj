// ********************************************************************
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// ********************************************************************
// File name    : flashled.v
// Module name  : flashled
// Author       : STEP
// Description  : segment initial
// Web          : www.stepfpga.com
// 
// --------------------------------------------------------------------
// Code Revision History : 
// --------------------------------------------------------------------
// Version: |Mod. Date:   |Changes Made:
// V1.0     |2017/03/02   |Initial ver
// --------------------------------------------------------------------
// Module Function:��ˮ�Ƶ�ģ�黯���
 
module flashled (clk,rst,led);
 
	input clk,rst;						
	output [7:0] led;				
 
 
	reg   [2:0] cnt ;         //������һ��3λ�ļ����������������Ϊ3-8������������
 
	wire clk1h;               //����һ���м��������ʾ��Ƶ�õ���ʱ�ӣ������������Ĵ���        
 
	//����module decode38���൱�ڵ���
	decode38 u1 (                                   
			.sw(cnt),         //����������˿����ӵ�cnt������˿����ӵ�led  
			.led(led)
			);
 
	//������Ƶ��ģ�飬����һ��1Hzʱ���ź�		
	divide #(.WIDTH(32),.N(12000000)) u2 (         //���ݲ���
			.clk(clk),
			.rst_n(rst),      //�����Ķ˿��źŶ����ӵ�����õ��ź�
			.clkout(clk1h)
			);                             
 
	//1Hzʱ�������ش�����������ѭ������		
	always @(posedge clk1h or negedge rst)
		if (!rst)
			cnt <= 0;
		else
			cnt <= cnt +1;
 
	endmodule