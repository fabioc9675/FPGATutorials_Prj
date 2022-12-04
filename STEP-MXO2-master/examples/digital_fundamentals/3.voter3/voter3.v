//********************************************************
//   Copyright(c)2018, STEP FPGA 
//   All rights reserved
//   File name       :   voter3.v
//   Module name     :   voter3
//   Author          :   STEP
//   Email           :   info@stepfpga.com
//   Data            :   2018/08/01
//   Version         :   V1.0
//   Description     :   3�����Ķ��������·
//						��3�����������2������������1ʱ������˲�Ϊ��1��
//********************************************************

module voter3
(
input wire a,           //3���������a��b��c
input wire b,
input wire c,
output wire led         //��ʾ������led
);
          
assign 	led = (a&b)|(b&c)|(a&c);   //�����߼����ʽ�õ�������

endmodule