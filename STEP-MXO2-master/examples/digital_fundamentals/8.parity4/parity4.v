//********************************************************
//   Copyright(c)2018, STEP FPGA 
//   All rights reserved
//   File name       :   parity4.v
//   Module name     :   parity4
//   Author          :   STEP
//   Email           :   info@stepfpga.com
//   Data            :   2018/08/01
//   Version         :   V1.0
//   Description     :   4λ��żУ������·��Ҫ�������4λ��������
//						������������1��ʱ�����Ϊ��1�����������Ϊ��0��
//********************************************************

module parity4
(
input wire a,b,c,d,           //����4������
output wire led    	  		//������żУ����������Ӧ��led
);
          
assign led = a^b^c^d;		//�����߼����ʽ��ֵ

endmodule