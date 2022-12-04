// ********************************************************************
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// ********************************************************************
// File name    : rgbled.v
// Module name  : rgbled
// Author       : STEP
// Description  : control RGB LED
// Web          : www.stepfpga.com
// 
// --------------------------------------------------------------------
// Code Revision History : 
// --------------------------------------------------------------------
// Version: |Mod. Date:   |Changes Made:
// V1.0     |2017/03/02   |Initial ver
// --------------------------------------------------------------------
// Module Function:���ÿ��ص�״̬������RGB LED�Ƶ���ʾ����ɫ��
 
module rgbled (sw,led);
 
	input [2:0] sw;			//���������źţ�����������3������
	output [2:0] led;		//����źŵ�RGB LED
 
	assign led = sw;        //assign������ֵ��
 
endmodule