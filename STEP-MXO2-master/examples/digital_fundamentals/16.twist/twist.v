//********************************************************
//   Copyright(c)2018, STEP FPGA 
//   All rights reserved
//   File name       :   twist.v
//   Module name     :   twist
//   Author          :   STEP
//   Email           :   info@stepfpga.com
//   Data            :   2018/08/01
//   Version         :   V1.0
//   Description     :   ����Ť�μ�����
//********************************************************

module twist #
(
parameter  CNT_SIZE = 8
)
(
input clk,rst,           //ʱ�Ӻ͸�λ����
output reg [CNT_SIZE-1:0] cnt    	  //���������
);

always@(posedge clk)
	if(!rst)
		cnt <= 8'b0000_0001;        //��λ��ֵ
	else
		cnt <= {~cnt[0],cnt[CNT_SIZE-1:1]};  //����ѭ������
		
endmodule