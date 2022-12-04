//********************************************************
//   Copyright(c)2018, STEP FPGA 
//   All rights reserved
//   File name       :   voter4.v
//   Module name     :   voter4
//   Author          :   STEP
//   Email           :   info@stepfpga.com
//   Data            :   2018/08/01
//   Version         :   V1.0
//   Description     :   4������A��B��C��D�������������4��������A����2��B��C��D�ֱ�
//						����1����������ֵ���ڻ��ߵ���3ʱ������ߵ�ƽ����������͵�ƽ��
//********************************************************

module voter4
(
input wire a,           //��������ĵ�λ��λ����������a��b��c��d
input wire b,
input wire c,
input wire d,
output wire led        //������ʾ��������led
);
          
assign led = (a&b)|(a&c)|(a&d)|(b&c&d);    //�����߼����ʽ��ֵ

endmodule