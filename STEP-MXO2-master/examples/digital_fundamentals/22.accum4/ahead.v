//********************************************************
//   Copyright(c)2018, STEP FPGA 
//   All rights reserved
//   File name       :   ahead.v,jk_ff.v
//   Module name     :   ahead
//   Author          :   STEP
//   Email           :   info@stepfpga.com
//   Data            :   2018/08/01
//   Version         :   V1.0
//   Description     :   ��ǰ��λ�߼����� 
//				JK��������Qi+1=J!Qi+!KQi
//				ȫ������λ��Ci+1=AiBi+(Ai+Bi)Ci=AiBi!Ci+!(Ai+Bi)Ci
//				�Ƶ��ó���J=AiBi��K=!(Ai+Bi)
//********************************************************
module ahead
(
input wire a,b,clk,rst,
output wire q
);

wire j,k;

jk_ff  u1              //����JK������
(						
.clk(clk),.j(j),.k(k),.rst(rst),.set(),	
.q(q),
.qb()
);

assign j = a&b;        //�����Ƶ��õ�J,K��ӷ��������ź��߼���ϵ
assign k = ~(a|b);

endmodule