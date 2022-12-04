// Description: Segment_led//********************************************************
//   Copyright(c)2018, STEP FPGA 
//   All rights reserved
//   File name       :   segment.v
//   Module name     :   segment
//   Author          :   STEP
//   Email           :   info@stepfpga.com
//   Data            :   2018/08/01
//   Version         :   V1.0
//   Description     :   �����������ʾ��
//						MSB~LSB = SEG,DP,G,F,E,D,C,B,A
//						seg�������ˣ�DPС���㣬G,F,E,D,C,B,A �߶�LED
//********************************************************

module segment
(
input  wire [3:0] seg_data_1,  //��λ���������ź�
input  wire [3:0] seg_data_2,  //��λ���������ź�
output wire [8:0] segment_led_1,  //�����1��MSB~LSB = SEG,DP,G,F,E,D,C,B,A
output wire [8:0] segment_led_2   //�����2��MSB~LSB = SEG,DP,G,F,E,D,C,B,A
);

reg[8:0] seg [15:0];           //�洢7���������������
initial 
	begin
		seg[0] = 9'h3f;   //  0
		seg[1] = 9'h06;   //  1
		seg[2] = 9'h5b;   //  2
		seg[3] = 9'h4f;   //  3
		seg[4] = 9'h66;   //  4
		seg[5] = 9'h6d;   //  5
		seg[6] = 9'h7d;   //  6
		seg[7] = 9'h07;   //  7
		seg[8] = 9'h7f;   //  8
		seg[9] = 9'h6f;   //  9
		seg[10]= 9'h77;   //  A
		seg[11]= 9'h7C;   //  b
		seg[12]= 9'h39;   //  C
		seg[13]= 9'h5e;   //  d
		seg[14]= 9'h79;   //  E
		seg[15]= 9'h71;   //  F
	end

assign segment_led_1 = seg[seg_data_1];
assign segment_led_2 = seg[seg_data_2];

endmodule
