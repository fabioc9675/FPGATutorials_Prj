//********************************************************
//   Copyright(c)2018, STEP FPGA 
//   All rights reserved
//   File name       :   jk_ff.v
//   Module name     :   jk_ff
//   Author          :   STEP
//   Email           :   info@stepfpga.com
//   Data            :   2018/08/01
//   Version         :   V1.0
//   Description     :   ͬ��jk�����������첽��λ����λ
//********************************************************
module jk_ff
(						//ģ��������������
input clk,j,k,rst,set,	
output reg q,
output wire qb
);

assign qb = ~q;
//clk�������Լ���λ����λ�½���ʱ����������
always@(posedge clk or negedge rst or negedge set)
	begin
		if(!rst)
			q <= 1'b0;			// �첽����
		else if (!set)
			q <= 1'b1;  		// �첽��1
		else
			case({j,k})
				2'b00:		q <= q;		//����
				2'b01:		q <= 0;		//��0
				2'b10:		q <= 1;		//��1
				2'b11:		q <= ~q;	//��ת
			endcase
	end
endmodule