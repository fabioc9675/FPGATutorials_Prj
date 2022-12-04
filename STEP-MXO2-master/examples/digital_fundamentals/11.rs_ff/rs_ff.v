//********************************************************
//   Copyright(c)2018, STEP FPGA 
//   All rights reserved
//   File name       :   rs_ff.v
//   Module name     :   rs_ff
//   Author          :   STEP
//   Email           :   info@stepfpga.com
//   Data            :   2018/08/01
//   Version         :   V1.0
//   Description     :   RS������
//********************************************************

module rs_ff
( 
input wire clk,r,s,			//rs�����������ź�		
output reg q,				//����˿�q����always���︳ֵ������Ϊreg��
output wire qb				//����˿ڷ�q
);

assign qb = ~q;

always@(posedge clk)
	begin
		case({r,s})
			2'b00:  q <= q;        //r,sͬʱΪ�͵�ƽ������������״̬����
			2'b01:  q <= 1'b1;	   //��������1״̬
			2'b10:  q <= 1'b0;     //��������0״̬
			2'b11:  q <= 1'bx;     //r,sͬʱΪ�ߵ�ƽ��Ч���߼�ì�ܣ�������Ϊ����̬
		endcase
	end
endmodule