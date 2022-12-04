// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.11.0.396.4
// Netlist written on Fri Jul 30 21:31:25 2021
//
// Verilog Description of module breath_led
//

module breath_led (clk, rst, led) /* synthesis syn_module_defined=1 */ ;   // c:/users/asus/desktop/contador/contador.v(1[8:18])
    input clk;   // c:/users/asus/desktop/contador/contador.v(3[8:11])
    input rst;   // c:/users/asus/desktop/contador/contador.v(4[8:11])
    output [7:0]led;   // c:/users/asus/desktop/contador/contador.v(5[15:18])
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/asus/desktop/contador/contador.v(3[8:11])
    
    wire GND_net, VCC_net, rst_c, led_c, n763, n762;
    wire [24:0]cnt1;   // c:/users/asus/desktop/contador/contador.v(7[13:17])
    wire [24:0]cnt2;   // c:/users/asus/desktop/contador/contador.v(8[13:17])
    
    wire flag, cnt1_24__N_79, n30, n32, n776, n691, n22, n18, 
        n19, n20, n22_adj_1, n24, n26, n28, flag_N_111, n761, 
        n34, n760, n4, n5, n6, n8, n9, n36, n38, n40, n42, 
        n10, n11, n10_adj_2, n12, n20_adj_3, n14, n14_adj_4, n775, 
        n8_adj_5, n16, n503, n504, n505, n506, n507, n508, n509, 
        n510, n511, n512, n513, n514, n515, n516, n517, n518, 
        n519, n520, n521, n522, n523, n524, n500, n759, n758, 
        n757, n756, n755, n754, n753, n1031, led_7__N_1, n48, 
        n1106, n46, n44, n622, n384, n752, n502, clk_c_enable_25, 
        n501, n1027, n1231, n751, n750, n749, n748, n747, n1024, 
        n18_adj_6, n1097, n692, n1022, n961, n688, n106, n107, 
        n108, n109, n110, n111, n112, n113, n114, n115, n116, 
        n117, n118, n119, n120, n121, n122, n123, n124, n125, 
        n126, n127, n128, n129, n130, n771, n770, n769, n768, 
        n767, n766, n765, n764, n779, n1230, n17, n16_adj_7, 
        n1099, n1086, n1008, n26_adj_8, n15, n1084, n1006, n1103, 
        n1000, n24_adj_9, n1229, n998, n1076, n1228, n22_adj_10, 
        n1227, n989, n1068, n1226, n984, n18_adj_11, n1225, n974, 
        n26_adj_12, n1108, n1056, n1243, n1242, n1054, n1241, 
        n1224, n1052, n1240, n1239, n24_adj_13, n949, n1238, n1049, 
        n945, n1237, n1236, n1235, n1234, n1233, n1232;
    
    VHI i724 (.Z(VCC_net));
    LUT4 i583_2_lut_3_lut_4_lut (.A(cnt1[16]), .B(cnt2[16]), .C(cnt2[7]), 
         .D(cnt1[7]), .Z(n1031)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/users/asus/desktop/contador/contador.v(53[21:34])
    defparam i583_2_lut_3_lut_4_lut.init = 16'h9009;
    CCU2D cnt1_129_add_4_7 (.A0(cnt1[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt1[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n762), .COUT(n763), .S0(n125), .S1(n124));   // c:/users/asus/desktop/contador/contador.v(22[13:24])
    defparam cnt1_129_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt1_129_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt1_129_add_4_7.INJECT1_0 = "NO";
    defparam cnt1_129_add_4_7.INJECT1_1 = "NO";
    LUT4 i648_4_lut_4_lut (.A(n1232), .B(n1049), .C(n34), .D(n10), .Z(n36)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/asus/desktop/contador/contador.v(53[21:34])
    defparam i648_4_lut_4_lut.init = 16'hf4b0;
    CCU2D cnt1_129_add_4_5 (.A0(cnt1[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt1[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n761), .COUT(n762), .S0(n127), .S1(n126));   // c:/users/asus/desktop/contador/contador.v(22[13:24])
    defparam cnt1_129_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt1_129_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt1_129_add_4_5.INJECT1_0 = "NO";
    defparam cnt1_129_add_4_5.INJECT1_1 = "NO";
    CCU2D cnt1_129_add_4_3 (.A0(cnt1[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt1[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n760), .COUT(n761), .S0(n129), .S1(n128));   // c:/users/asus/desktop/contador/contador.v(22[13:24])
    defparam cnt1_129_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt1_129_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt1_129_add_4_3.INJECT1_0 = "NO";
    defparam cnt1_129_add_4_3.INJECT1_1 = "NO";
    LUT4 cnt1_24__I_0_33_i14_3_lut_3_lut (.A(cnt1[14]), .B(cnt2[14]), .C(cnt2[13]), 
         .Z(n14)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/asus/desktop/contador/contador.v(53[21:34])
    defparam cnt1_24__I_0_33_i14_3_lut_3_lut.init = 16'hd4d4;
    LUT4 cnt1_24__I_0_33_i7_2_lut_rep_39 (.A(cnt1[3]), .B(cnt2[3]), .Z(n1228)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/asus/desktop/contador/contador.v(53[21:34])
    defparam cnt1_24__I_0_33_i7_2_lut_rep_39.init = 16'h6666;
    CCU2D cnt1_129_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt1[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n760), .S1(n130));   // c:/users/asus/desktop/contador/contador.v(22[13:24])
    defparam cnt1_129_add_4_1.INIT0 = 16'hF000;
    defparam cnt1_129_add_4_1.INIT1 = 16'h0555;
    defparam cnt1_129_add_4_1.INJECT1_0 = "NO";
    defparam cnt1_129_add_4_1.INJECT1_1 = "NO";
    FD1S3AX flag_32 (.D(n622), .CK(clk_c), .Q(flag));   // c:/users/asus/desktop/contador/contador.v(32[9] 50[18])
    defparam flag_32.GSR = "ENABLED";
    LUT4 i658_4_lut (.A(n1068), .B(n1234), .C(n1233), .D(n19), .Z(n1097)) /* synthesis lut_function=(!(A (B+(C+(D))))) */ ;   // c:/users/asus/desktop/contador/contador.v(53[21:34])
    defparam i658_4_lut.init = 16'h5557;
    LUT4 i601_2_lut_3_lut_4_lut (.A(cnt1[19]), .B(cnt2[19]), .C(cnt2[18]), 
         .D(cnt1[18]), .Z(n1049)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/users/asus/desktop/contador/contador.v(53[21:34])
    defparam i601_2_lut_3_lut_4_lut.init = 16'h9009;
    OB led_pad_7 (.I(led_c), .O(led[7]));   // c:/users/asus/desktop/contador/contador.v(5[15:18])
    CCU2D add_100_27 (.A0(cnt2[24]), .B0(n691), .C0(n1225), .D0(flag), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n759), 
          .S0(n500));   // c:/users/asus/desktop/contador/contador.v(42[7] 47[10])
    defparam add_100_27.INIT0 = 16'h5556;
    defparam add_100_27.INIT1 = 16'h0000;
    defparam add_100_27.INJECT1_0 = "NO";
    defparam add_100_27.INJECT1_1 = "NO";
    OB led_pad_6 (.I(led_c), .O(led[6]));   // c:/users/asus/desktop/contador/contador.v(5[15:18])
    LUT4 i661_2_lut_3_lut (.A(cnt1[24]), .B(cnt2[24]), .C(n1099), .Z(n1084)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/users/asus/desktop/contador/contador.v(53[21:34])
    defparam i661_2_lut_3_lut.init = 16'hf6f6;
    CCU2D add_100_25 (.A0(cnt2[22]), .B0(n691), .C0(n1225), .D0(flag), 
          .A1(cnt2[23]), .B1(n691), .C1(n1225), .D1(flag), .CIN(n758), 
          .COUT(n759), .S0(n502), .S1(n501));   // c:/users/asus/desktop/contador/contador.v(42[7] 47[10])
    defparam add_100_25.INIT0 = 16'h5556;
    defparam add_100_25.INIT1 = 16'h5556;
    defparam add_100_25.INJECT1_0 = "NO";
    defparam add_100_25.INJECT1_1 = "NO";
    LUT4 cnt1_24__I_0_33_i32_3_lut_3_lut (.A(cnt1[19]), .B(cnt2[19]), .C(cnt2[18]), 
         .Z(n32)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/asus/desktop/contador/contador.v(53[21:34])
    defparam cnt1_24__I_0_33_i32_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i659_2_lut_3_lut (.A(cnt1[24]), .B(cnt2[24]), .C(n1097), .Z(n1086)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/users/asus/desktop/contador/contador.v(53[21:34])
    defparam i659_2_lut_3_lut.init = 16'hf6f6;
    CCU2D add_100_23 (.A0(cnt2[20]), .B0(n691), .C0(n1225), .D0(flag), 
          .A1(cnt2[21]), .B1(n691), .C1(n1225), .D1(flag), .CIN(n757), 
          .COUT(n758), .S0(n504), .S1(n503));   // c:/users/asus/desktop/contador/contador.v(42[7] 47[10])
    defparam add_100_23.INIT0 = 16'h5556;
    defparam add_100_23.INIT1 = 16'h5556;
    defparam add_100_23.INJECT1_0 = "NO";
    defparam add_100_23.INJECT1_1 = "NO";
    LUT4 i282_3_lut (.A(flag), .B(n1224), .C(n384), .Z(n622)) /* synthesis lut_function=(A (B+!(C))+!A !(B+!(C))) */ ;   // c:/users/asus/desktop/contador/contador.v(32[9] 50[18])
    defparam i282_3_lut.init = 16'h9a9a;
    CCU2D add_100_21 (.A0(cnt2[18]), .B0(n691), .C0(n1225), .D0(flag), 
          .A1(cnt2[19]), .B1(n691), .C1(n1225), .D1(flag), .CIN(n756), 
          .COUT(n757), .S0(n506), .S1(n505));   // c:/users/asus/desktop/contador/contador.v(42[7] 47[10])
    defparam add_100_21.INIT0 = 16'h5556;
    defparam add_100_21.INIT1 = 16'h5556;
    defparam add_100_21.INJECT1_0 = "NO";
    defparam add_100_21.INJECT1_1 = "NO";
    LUT4 cnt1_24__I_0_33_i30_3_lut_3_lut (.A(cnt1[17]), .B(cnt2[17]), .C(n12), 
         .Z(n30)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/asus/desktop/contador/contador.v(53[21:34])
    defparam cnt1_24__I_0_33_i30_3_lut_3_lut.init = 16'hd4d4;
    CCU2D add_100_19 (.A0(cnt2[16]), .B0(n691), .C0(n1225), .D0(flag), 
          .A1(cnt2[17]), .B1(n691), .C1(n1225), .D1(flag), .CIN(n755), 
          .COUT(n756), .S0(n508), .S1(n507));   // c:/users/asus/desktop/contador/contador.v(42[7] 47[10])
    defparam add_100_19.INIT0 = 16'h5556;
    defparam add_100_19.INIT1 = 16'h5556;
    defparam add_100_19.INJECT1_0 = "NO";
    defparam add_100_19.INJECT1_1 = "NO";
    CCU2D add_100_17 (.A0(cnt2[14]), .B0(n691), .C0(n1225), .D0(flag), 
          .A1(cnt2[15]), .B1(n691), .C1(n1225), .D1(flag), .CIN(n754), 
          .COUT(n755), .S0(n510), .S1(n509));   // c:/users/asus/desktop/contador/contador.v(42[7] 47[10])
    defparam add_100_17.INIT0 = 16'h5556;
    defparam add_100_17.INIT1 = 16'h5556;
    defparam add_100_17.INJECT1_0 = "NO";
    defparam add_100_17.INJECT1_1 = "NO";
    LUT4 i496_3_lut (.A(cnt1[5]), .B(cnt1[2]), .C(cnt1[7]), .Z(n945)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i496_3_lut.init = 16'h8080;
    LUT4 i669_4_lut (.A(n1231), .B(n1230), .C(n1237), .D(n1024), .Z(n1108)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/asus/desktop/contador/contador.v(53[21:34])
    defparam i669_4_lut.init = 16'hfeff;
    CCU2D add_100_15 (.A0(cnt2[12]), .B0(n691), .C0(n1225), .D0(flag), 
          .A1(cnt2[13]), .B1(n691), .C1(n1225), .D1(flag), .CIN(n753), 
          .COUT(n754), .S0(n512), .S1(n511));   // c:/users/asus/desktop/contador/contador.v(42[7] 47[10])
    defparam add_100_15.INIT0 = 16'h5556;
    defparam add_100_15.INIT1 = 16'h5556;
    defparam add_100_15.INJECT1_0 = "NO";
    defparam add_100_15.INJECT1_1 = "NO";
    FD1S3IX cnt1_129__i0 (.D(n130), .CK(clk_c), .CD(cnt1_24__N_79), .Q(cnt1[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/asus/desktop/contador/contador.v(22[13:24])
    defparam cnt1_129__i0.GSR = "ENABLED";
    LUT4 i576_4_lut (.A(n1236), .B(n1235), .C(n1240), .D(n1008), .Z(n1024)) /* synthesis lut_function=(!(A+!(B+(C+!(D))))) */ ;   // c:/users/asus/desktop/contador/contador.v(53[21:34])
    defparam i576_4_lut.init = 16'h5455;
    LUT4 cnt1_24__I_0_33_i25_2_lut_rep_49 (.A(cnt1[12]), .B(cnt2[12]), .Z(n1238)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/asus/desktop/contador/contador.v(53[21:34])
    defparam cnt1_24__I_0_33_i25_2_lut_rep_49.init = 16'h6666;
    CCU2D add_100_13 (.A0(cnt2[10]), .B0(n691), .C0(n1225), .D0(flag), 
          .A1(cnt2[11]), .B1(n691), .C1(n1225), .D1(flag), .CIN(n752), 
          .COUT(n753), .S0(n514), .S1(n513));   // c:/users/asus/desktop/contador/contador.v(42[7] 47[10])
    defparam add_100_13.INIT0 = 16'h5556;
    defparam add_100_13.INIT1 = 16'h5556;
    defparam add_100_13.INJECT1_0 = "NO";
    defparam add_100_13.INJECT1_1 = "NO";
    LUT4 i560_4_lut (.A(n1239), .B(n1226), .C(n1243), .D(n11), .Z(n1008)) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;   // c:/users/asus/desktop/contador/contador.v(53[21:34])
    defparam i560_4_lut.init = 16'h5554;
    LUT4 cnt1_24__I_0_33_i37_2_lut_rep_41 (.A(cnt1[18]), .B(cnt2[18]), .Z(n1230)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/asus/desktop/contador/contador.v(53[21:34])
    defparam cnt1_24__I_0_33_i37_2_lut_rep_41.init = 16'h6666;
    CCU2D add_100_11 (.A0(cnt2[8]), .B0(n691), .C0(n1225), .D0(flag), 
          .A1(cnt2[9]), .B1(n691), .C1(n1225), .D1(flag), .CIN(n751), 
          .COUT(n752), .S0(n516), .S1(n515));   // c:/users/asus/desktop/contador/contador.v(42[7] 47[10])
    defparam add_100_11.INIT0 = 16'h5556;
    defparam add_100_11.INIT1 = 16'h5556;
    defparam add_100_11.INJECT1_0 = "NO";
    defparam add_100_11.INJECT1_1 = "NO";
    LUT4 cnt1_24__I_0_33_i20_3_lut_3_lut (.A(cnt1[12]), .B(cnt2[12]), .C(n18), 
         .Z(n20)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/asus/desktop/contador/contador.v(53[21:34])
    defparam cnt1_24__I_0_33_i20_3_lut_3_lut.init = 16'hd4d4;
    GSR GSR_INST (.GSR(rst_c));
    FD1S3IX cnt1_129__i24 (.D(n106), .CK(clk_c), .CD(cnt1_24__N_79), .Q(cnt1[24])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/asus/desktop/contador/contador.v(22[13:24])
    defparam cnt1_129__i24.GSR = "ENABLED";
    FD1S3IX cnt1_129__i23 (.D(n107), .CK(clk_c), .CD(cnt1_24__N_79), .Q(cnt1[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/asus/desktop/contador/contador.v(22[13:24])
    defparam cnt1_129__i23.GSR = "ENABLED";
    FD1S3IX cnt1_129__i22 (.D(n108), .CK(clk_c), .CD(cnt1_24__N_79), .Q(cnt1[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/asus/desktop/contador/contador.v(22[13:24])
    defparam cnt1_129__i22.GSR = "ENABLED";
    FD1S3IX cnt1_129__i21 (.D(n109), .CK(clk_c), .CD(cnt1_24__N_79), .Q(cnt1[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/asus/desktop/contador/contador.v(22[13:24])
    defparam cnt1_129__i21.GSR = "ENABLED";
    FD1S3IX cnt1_129__i20 (.D(n110), .CK(clk_c), .CD(cnt1_24__N_79), .Q(cnt1[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/asus/desktop/contador/contador.v(22[13:24])
    defparam cnt1_129__i20.GSR = "ENABLED";
    FD1S3IX cnt1_129__i19 (.D(n111), .CK(clk_c), .CD(cnt1_24__N_79), .Q(cnt1[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/asus/desktop/contador/contador.v(22[13:24])
    defparam cnt1_129__i19.GSR = "ENABLED";
    FD1S3IX cnt1_129__i18 (.D(n112), .CK(clk_c), .CD(cnt1_24__N_79), .Q(cnt1[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/asus/desktop/contador/contador.v(22[13:24])
    defparam cnt1_129__i18.GSR = "ENABLED";
    FD1S3IX cnt1_129__i17 (.D(n113), .CK(clk_c), .CD(cnt1_24__N_79), .Q(cnt1[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/asus/desktop/contador/contador.v(22[13:24])
    defparam cnt1_129__i17.GSR = "ENABLED";
    FD1S3IX cnt1_129__i16 (.D(n114), .CK(clk_c), .CD(cnt1_24__N_79), .Q(cnt1[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/asus/desktop/contador/contador.v(22[13:24])
    defparam cnt1_129__i16.GSR = "ENABLED";
    FD1S3IX cnt1_129__i15 (.D(n115), .CK(clk_c), .CD(cnt1_24__N_79), .Q(cnt1[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/asus/desktop/contador/contador.v(22[13:24])
    defparam cnt1_129__i15.GSR = "ENABLED";
    FD1S3IX cnt1_129__i14 (.D(n116), .CK(clk_c), .CD(cnt1_24__N_79), .Q(cnt1[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/asus/desktop/contador/contador.v(22[13:24])
    defparam cnt1_129__i14.GSR = "ENABLED";
    FD1S3IX cnt1_129__i13 (.D(n117), .CK(clk_c), .CD(cnt1_24__N_79), .Q(cnt1[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/asus/desktop/contador/contador.v(22[13:24])
    defparam cnt1_129__i13.GSR = "ENABLED";
    FD1S3IX cnt1_129__i12 (.D(n118), .CK(clk_c), .CD(cnt1_24__N_79), .Q(cnt1[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/asus/desktop/contador/contador.v(22[13:24])
    defparam cnt1_129__i12.GSR = "ENABLED";
    FD1S3IX cnt1_129__i11 (.D(n119), .CK(clk_c), .CD(cnt1_24__N_79), .Q(cnt1[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/asus/desktop/contador/contador.v(22[13:24])
    defparam cnt1_129__i11.GSR = "ENABLED";
    FD1S3IX cnt1_129__i10 (.D(n120), .CK(clk_c), .CD(cnt1_24__N_79), .Q(cnt1[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/asus/desktop/contador/contador.v(22[13:24])
    defparam cnt1_129__i10.GSR = "ENABLED";
    FD1S3IX cnt1_129__i9 (.D(n121), .CK(clk_c), .CD(cnt1_24__N_79), .Q(cnt1[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/asus/desktop/contador/contador.v(22[13:24])
    defparam cnt1_129__i9.GSR = "ENABLED";
    FD1S3IX cnt1_129__i8 (.D(n122), .CK(clk_c), .CD(cnt1_24__N_79), .Q(cnt1[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/asus/desktop/contador/contador.v(22[13:24])
    defparam cnt1_129__i8.GSR = "ENABLED";
    FD1S3IX cnt1_129__i7 (.D(n123), .CK(clk_c), .CD(cnt1_24__N_79), .Q(cnt1[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/asus/desktop/contador/contador.v(22[13:24])
    defparam cnt1_129__i7.GSR = "ENABLED";
    FD1S3IX cnt1_129__i6 (.D(n124), .CK(clk_c), .CD(cnt1_24__N_79), .Q(cnt1[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/asus/desktop/contador/contador.v(22[13:24])
    defparam cnt1_129__i6.GSR = "ENABLED";
    FD1S3IX cnt1_129__i5 (.D(n125), .CK(clk_c), .CD(cnt1_24__N_79), .Q(cnt1[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/asus/desktop/contador/contador.v(22[13:24])
    defparam cnt1_129__i5.GSR = "ENABLED";
    FD1S3IX cnt1_129__i4 (.D(n126), .CK(clk_c), .CD(cnt1_24__N_79), .Q(cnt1[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/asus/desktop/contador/contador.v(22[13:24])
    defparam cnt1_129__i4.GSR = "ENABLED";
    FD1S3IX cnt1_129__i3 (.D(n127), .CK(clk_c), .CD(cnt1_24__N_79), .Q(cnt1[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/asus/desktop/contador/contador.v(22[13:24])
    defparam cnt1_129__i3.GSR = "ENABLED";
    FD1S3IX cnt1_129__i2 (.D(n128), .CK(clk_c), .CD(cnt1_24__N_79), .Q(cnt1[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/asus/desktop/contador/contador.v(22[13:24])
    defparam cnt1_129__i2.GSR = "ENABLED";
    FD1S3IX cnt1_129__i1 (.D(n129), .CK(clk_c), .CD(cnt1_24__N_79), .Q(cnt1[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/asus/desktop/contador/contador.v(22[13:24])
    defparam cnt1_129__i1.GSR = "ENABLED";
    FD1P3AX cnt2_i0_i24 (.D(n500), .SP(clk_c_enable_25), .CK(clk_c), .Q(cnt2[24]));   // c:/users/asus/desktop/contador/contador.v(32[9] 50[18])
    defparam cnt2_i0_i24.GSR = "ENABLED";
    LUT4 i4_4_lut (.A(cnt1[9]), .B(n688), .C(cnt1[0]), .D(cnt1[6]), 
         .Z(n10_adj_2)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i4_4_lut.init = 16'hffef;
    CCU2D cnt1_129_add_4_25 (.A0(cnt1[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt1[24]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n771), .S0(n107), .S1(n106));   // c:/users/asus/desktop/contador/contador.v(22[13:24])
    defparam cnt1_129_add_4_25.INIT0 = 16'hfaaa;
    defparam cnt1_129_add_4_25.INIT1 = 16'hfaaa;
    defparam cnt1_129_add_4_25.INJECT1_0 = "NO";
    defparam cnt1_129_add_4_25.INJECT1_1 = "NO";
    CCU2D cnt1_129_add_4_23 (.A0(cnt1[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt1[22]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n770), .COUT(n771), .S0(n109), .S1(n108));   // c:/users/asus/desktop/contador/contador.v(22[13:24])
    defparam cnt1_129_add_4_23.INIT0 = 16'hfaaa;
    defparam cnt1_129_add_4_23.INIT1 = 16'hfaaa;
    defparam cnt1_129_add_4_23.INJECT1_0 = "NO";
    defparam cnt1_129_add_4_23.INJECT1_1 = "NO";
    CCU2D cnt1_129_add_4_21 (.A0(cnt1[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt1[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n769), .COUT(n770), .S0(n111), .S1(n110));   // c:/users/asus/desktop/contador/contador.v(22[13:24])
    defparam cnt1_129_add_4_21.INIT0 = 16'hfaaa;
    defparam cnt1_129_add_4_21.INIT1 = 16'hfaaa;
    defparam cnt1_129_add_4_21.INJECT1_0 = "NO";
    defparam cnt1_129_add_4_21.INJECT1_1 = "NO";
    CCU2D cnt1_129_add_4_19 (.A0(cnt1[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt1[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n768), .COUT(n769), .S0(n113), .S1(n112));   // c:/users/asus/desktop/contador/contador.v(22[13:24])
    defparam cnt1_129_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt1_129_add_4_19.INIT1 = 16'hfaaa;
    defparam cnt1_129_add_4_19.INJECT1_0 = "NO";
    defparam cnt1_129_add_4_19.INJECT1_1 = "NO";
    CCU2D cnt1_129_add_4_17 (.A0(cnt1[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt1[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n767), .COUT(n768), .S0(n115), .S1(n114));   // c:/users/asus/desktop/contador/contador.v(22[13:24])
    defparam cnt1_129_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt1_129_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt1_129_add_4_17.INJECT1_0 = "NO";
    defparam cnt1_129_add_4_17.INJECT1_1 = "NO";
    CCU2D cnt1_129_add_4_15 (.A0(cnt1[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt1[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n766), .COUT(n767), .S0(n117), .S1(n116));   // c:/users/asus/desktop/contador/contador.v(22[13:24])
    defparam cnt1_129_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt1_129_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt1_129_add_4_15.INJECT1_0 = "NO";
    defparam cnt1_129_add_4_15.INJECT1_1 = "NO";
    CCU2D cnt1_129_add_4_13 (.A0(cnt1[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt1[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n765), .COUT(n766), .S0(n119), .S1(n118));   // c:/users/asus/desktop/contador/contador.v(22[13:24])
    defparam cnt1_129_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt1_129_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt1_129_add_4_13.INJECT1_0 = "NO";
    defparam cnt1_129_add_4_13.INJECT1_1 = "NO";
    CCU2D cnt1_129_add_4_11 (.A0(cnt1[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt1[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n764), .COUT(n765), .S0(n121), .S1(n120));   // c:/users/asus/desktop/contador/contador.v(22[13:24])
    defparam cnt1_129_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt1_129_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt1_129_add_4_11.INJECT1_0 = "NO";
    defparam cnt1_129_add_4_11.INJECT1_1 = "NO";
    CCU2D cnt1_129_add_4_9 (.A0(cnt1[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt1[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n763), .COUT(n764), .S0(n123), .S1(n122));   // c:/users/asus/desktop/contador/contador.v(22[13:24])
    defparam cnt1_129_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt1_129_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt1_129_add_4_9.INJECT1_0 = "NO";
    defparam cnt1_129_add_4_9.INJECT1_1 = "NO";
    LUT4 i663_2_lut_3_lut_4_lut (.A(cnt1[12]), .B(cnt2[12]), .C(n1241), 
         .D(n1242), .Z(n1000)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (B+(C+(D)))) */ ;   // c:/users/asus/desktop/contador/contador.v(53[21:34])
    defparam i663_2_lut_3_lut_4_lut.init = 16'hfff6;
    LUT4 cnt1_24__I_0_33_i27_2_lut_rep_50 (.A(cnt1[13]), .B(cnt2[13]), .Z(n1239)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/asus/desktop/contador/contador.v(53[21:34])
    defparam cnt1_24__I_0_33_i27_2_lut_rep_50.init = 16'h6666;
    FD1P3AX cnt2_i0_i23 (.D(n501), .SP(clk_c_enable_25), .CK(clk_c), .Q(cnt2[23]));   // c:/users/asus/desktop/contador/contador.v(32[9] 50[18])
    defparam cnt2_i0_i23.GSR = "ENABLED";
    FD1P3AX cnt2_i0_i22 (.D(n502), .SP(clk_c_enable_25), .CK(clk_c), .Q(cnt2[22]));   // c:/users/asus/desktop/contador/contador.v(32[9] 50[18])
    defparam cnt2_i0_i22.GSR = "ENABLED";
    FD1P3AX cnt2_i0_i21 (.D(n503), .SP(clk_c_enable_25), .CK(clk_c), .Q(cnt2[21]));   // c:/users/asus/desktop/contador/contador.v(32[9] 50[18])
    defparam cnt2_i0_i21.GSR = "ENABLED";
    FD1P3AX cnt2_i0_i20 (.D(n504), .SP(clk_c_enable_25), .CK(clk_c), .Q(cnt2[20]));   // c:/users/asus/desktop/contador/contador.v(32[9] 50[18])
    defparam cnt2_i0_i20.GSR = "ENABLED";
    FD1P3AX cnt2_i0_i19 (.D(n505), .SP(clk_c_enable_25), .CK(clk_c), .Q(cnt2[19]));   // c:/users/asus/desktop/contador/contador.v(32[9] 50[18])
    defparam cnt2_i0_i19.GSR = "ENABLED";
    FD1P3AX cnt2_i0_i18 (.D(n506), .SP(clk_c_enable_25), .CK(clk_c), .Q(cnt2[18]));   // c:/users/asus/desktop/contador/contador.v(32[9] 50[18])
    defparam cnt2_i0_i18.GSR = "ENABLED";
    FD1P3AX cnt2_i0_i17 (.D(n507), .SP(clk_c_enable_25), .CK(clk_c), .Q(cnt2[17]));   // c:/users/asus/desktop/contador/contador.v(32[9] 50[18])
    defparam cnt2_i0_i17.GSR = "ENABLED";
    FD1P3AX cnt2_i0_i16 (.D(n508), .SP(clk_c_enable_25), .CK(clk_c), .Q(cnt2[16]));   // c:/users/asus/desktop/contador/contador.v(32[9] 50[18])
    defparam cnt2_i0_i16.GSR = "ENABLED";
    FD1P3AX cnt2_i0_i15 (.D(n509), .SP(clk_c_enable_25), .CK(clk_c), .Q(cnt2[15]));   // c:/users/asus/desktop/contador/contador.v(32[9] 50[18])
    defparam cnt2_i0_i15.GSR = "ENABLED";
    FD1P3AX cnt2_i0_i14 (.D(n510), .SP(clk_c_enable_25), .CK(clk_c), .Q(cnt2[14]));   // c:/users/asus/desktop/contador/contador.v(32[9] 50[18])
    defparam cnt2_i0_i14.GSR = "ENABLED";
    FD1P3AX cnt2_i0_i13 (.D(n511), .SP(clk_c_enable_25), .CK(clk_c), .Q(cnt2[13]));   // c:/users/asus/desktop/contador/contador.v(32[9] 50[18])
    defparam cnt2_i0_i13.GSR = "ENABLED";
    FD1P3AX cnt2_i0_i12 (.D(n512), .SP(clk_c_enable_25), .CK(clk_c), .Q(cnt2[12]));   // c:/users/asus/desktop/contador/contador.v(32[9] 50[18])
    defparam cnt2_i0_i12.GSR = "ENABLED";
    FD1P3AX cnt2_i0_i11 (.D(n513), .SP(clk_c_enable_25), .CK(clk_c), .Q(cnt2[11]));   // c:/users/asus/desktop/contador/contador.v(32[9] 50[18])
    defparam cnt2_i0_i11.GSR = "ENABLED";
    FD1P3AX cnt2_i0_i10 (.D(n514), .SP(clk_c_enable_25), .CK(clk_c), .Q(cnt2[10]));   // c:/users/asus/desktop/contador/contador.v(32[9] 50[18])
    defparam cnt2_i0_i10.GSR = "ENABLED";
    FD1P3AX cnt2_i0_i9 (.D(n515), .SP(clk_c_enable_25), .CK(clk_c), .Q(cnt2[9]));   // c:/users/asus/desktop/contador/contador.v(32[9] 50[18])
    defparam cnt2_i0_i9.GSR = "ENABLED";
    FD1P3AX cnt2_i0_i8 (.D(n516), .SP(clk_c_enable_25), .CK(clk_c), .Q(cnt2[8]));   // c:/users/asus/desktop/contador/contador.v(32[9] 50[18])
    defparam cnt2_i0_i8.GSR = "ENABLED";
    FD1P3AX cnt2_i0_i7 (.D(n517), .SP(clk_c_enable_25), .CK(clk_c), .Q(cnt2[7]));   // c:/users/asus/desktop/contador/contador.v(32[9] 50[18])
    defparam cnt2_i0_i7.GSR = "ENABLED";
    FD1P3AX cnt2_i0_i6 (.D(n518), .SP(clk_c_enable_25), .CK(clk_c), .Q(cnt2[6]));   // c:/users/asus/desktop/contador/contador.v(32[9] 50[18])
    defparam cnt2_i0_i6.GSR = "ENABLED";
    FD1P3AX cnt2_i0_i5 (.D(n519), .SP(clk_c_enable_25), .CK(clk_c), .Q(cnt2[5]));   // c:/users/asus/desktop/contador/contador.v(32[9] 50[18])
    defparam cnt2_i0_i5.GSR = "ENABLED";
    FD1P3AX cnt2_i0_i4 (.D(n520), .SP(clk_c_enable_25), .CK(clk_c), .Q(cnt2[4]));   // c:/users/asus/desktop/contador/contador.v(32[9] 50[18])
    defparam cnt2_i0_i4.GSR = "ENABLED";
    FD1P3AX cnt2_i0_i3 (.D(n521), .SP(clk_c_enable_25), .CK(clk_c), .Q(cnt2[3]));   // c:/users/asus/desktop/contador/contador.v(32[9] 50[18])
    defparam cnt2_i0_i3.GSR = "ENABLED";
    FD1P3AX cnt2_i0_i2 (.D(n522), .SP(clk_c_enable_25), .CK(clk_c), .Q(cnt2[2]));   // c:/users/asus/desktop/contador/contador.v(32[9] 50[18])
    defparam cnt2_i0_i2.GSR = "ENABLED";
    FD1P3AX cnt2_i0_i1 (.D(n523), .SP(clk_c_enable_25), .CK(clk_c), .Q(cnt2[1]));   // c:/users/asus/desktop/contador/contador.v(32[9] 50[18])
    defparam cnt2_i0_i1.GSR = "ENABLED";
    FD1P3AX cnt2_i0_i0 (.D(n524), .SP(clk_c_enable_25), .CK(clk_c), .Q(cnt2[0]));   // c:/users/asus/desktop/contador/contador.v(32[9] 50[18])
    defparam cnt2_i0_i0.GSR = "ENABLED";
    OB led_pad_5 (.I(led_c), .O(led[5]));   // c:/users/asus/desktop/contador/contador.v(5[15:18])
    OB led_pad_4 (.I(led_c), .O(led[4]));   // c:/users/asus/desktop/contador/contador.v(5[15:18])
    OB led_pad_3 (.I(led_c), .O(led[3]));   // c:/users/asus/desktop/contador/contador.v(5[15:18])
    OB led_pad_2 (.I(led_c), .O(led[2]));   // c:/users/asus/desktop/contador/contador.v(5[15:18])
    OB led_pad_1 (.I(led_c), .O(led[1]));   // c:/users/asus/desktop/contador/contador.v(5[15:18])
    OB led_pad_0 (.I(led_c), .O(led[0]));   // c:/users/asus/desktop/contador/contador.v(5[15:18])
    IB clk_pad (.I(clk), .O(clk_c));   // c:/users/asus/desktop/contador/contador.v(3[8:11])
    IB rst_pad (.I(rst), .O(rst_c));   // c:/users/asus/desktop/contador/contador.v(4[8:11])
    LUT4 cnt1_24__I_0_33_i21_2_lut_rep_52 (.A(cnt1[10]), .B(cnt2[10]), .Z(n1241)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/asus/desktop/contador/contador.v(53[21:34])
    defparam cnt1_24__I_0_33_i21_2_lut_rep_52.init = 16'h6666;
    CCU2D add_100_9 (.A0(cnt2[6]), .B0(n691), .C0(n1225), .D0(flag), 
          .A1(cnt2[7]), .B1(n691), .C1(n1225), .D1(flag), .CIN(n750), 
          .COUT(n751), .S0(n518), .S1(n517));   // c:/users/asus/desktop/contador/contador.v(42[7] 47[10])
    defparam add_100_9.INIT0 = 16'h5556;
    defparam add_100_9.INIT1 = 16'h5556;
    defparam add_100_9.INJECT1_0 = "NO";
    defparam add_100_9.INJECT1_1 = "NO";
    CCU2D add_100_7 (.A0(cnt2[4]), .B0(n691), .C0(n1225), .D0(flag), 
          .A1(cnt2[5]), .B1(n691), .C1(n1225), .D1(flag), .CIN(n749), 
          .COUT(n750), .S0(n520), .S1(n519));   // c:/users/asus/desktop/contador/contador.v(42[7] 47[10])
    defparam add_100_7.INIT0 = 16'h5556;
    defparam add_100_7.INIT1 = 16'h5556;
    defparam add_100_7.INJECT1_0 = "NO";
    defparam add_100_7.INJECT1_1 = "NO";
    CCU2D add_100_5 (.A0(cnt2[2]), .B0(n691), .C0(n1225), .D0(flag), 
          .A1(cnt2[3]), .B1(n691), .C1(n1225), .D1(flag), .CIN(n748), 
          .COUT(n749), .S0(n522), .S1(n521));   // c:/users/asus/desktop/contador/contador.v(42[7] 47[10])
    defparam add_100_5.INIT0 = 16'h5556;
    defparam add_100_5.INIT1 = 16'h5556;
    defparam add_100_5.INJECT1_0 = "NO";
    defparam add_100_5.INJECT1_1 = "NO";
    CCU2D add_100_3 (.A0(flag), .B0(flag_N_111), .C0(cnt2[0]), .D0(GND_net), 
          .A1(cnt2[1]), .B1(n691), .C1(n1225), .D1(flag), .CIN(n747), 
          .COUT(n748), .S0(n524), .S1(n523));   // c:/users/asus/desktop/contador/contador.v(42[7] 47[10])
    defparam add_100_3.INIT0 = 16'he1e1;
    defparam add_100_3.INIT1 = 16'h5556;
    defparam add_100_3.INJECT1_0 = "NO";
    defparam add_100_3.INJECT1_1 = "NO";
    CCU2D add_100_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt2[10]), .B1(n20_adj_3), .C1(n691), .D1(flag), .COUT(n747));   // c:/users/asus/desktop/contador/contador.v(42[7] 47[10])
    defparam add_100_1.INIT0 = 16'hF000;
    defparam add_100_1.INIT1 = 16'h0007;
    defparam add_100_1.INJECT1_0 = "NO";
    defparam add_100_1.INJECT1_1 = "NO";
    LUT4 i197_2_lut_rep_36 (.A(n20_adj_3), .B(cnt2[10]), .Z(n1225)) /* synthesis lut_function=(A (B)) */ ;
    defparam i197_2_lut_rep_36.init = 16'h8888;
    LUT4 cnt1_24__I_0_33_i23_2_lut_rep_53 (.A(cnt1[11]), .B(cnt2[11]), .Z(n1242)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/asus/desktop/contador/contador.v(53[21:34])
    defparam cnt1_24__I_0_33_i23_2_lut_rep_53.init = 16'h6666;
    LUT4 i660_4_lut (.A(n1068), .B(n1234), .C(n1233), .D(n998), .Z(n1099)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/asus/desktop/contador/contador.v(53[21:34])
    defparam i660_4_lut.init = 16'hfffd;
    LUT4 i550_4_lut (.A(n1238), .B(n1242), .C(n1241), .D(n984), .Z(n998)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/asus/desktop/contador/contador.v(53[21:34])
    defparam i550_4_lut.init = 16'h0001;
    LUT4 i665_2_lut_3_lut (.A(cnt1[24]), .B(cnt2[24]), .C(n1103), .Z(n1076)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/users/asus/desktop/contador/contador.v(53[21:34])
    defparam i665_2_lut_3_lut.init = 16'hf6f6;
    LUT4 i536_3_lut_4_lut (.A(cnt1[8]), .B(cnt2[8]), .C(n9), .D(n19), 
         .Z(n984)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B+(C+(D))))) */ ;   // c:/users/asus/desktop/contador/contador.v(53[21:34])
    defparam i536_3_lut_4_lut.init = 16'h0009;
    LUT4 cnt1_24__I_0_33_i39_2_lut_rep_42 (.A(cnt1[19]), .B(cnt2[19]), .Z(n1231)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/asus/desktop/contador/contador.v(53[21:34])
    defparam cnt1_24__I_0_33_i39_2_lut_rep_42.init = 16'h6666;
    LUT4 cnt1_24__I_0_33_i42_3_lut_3_lut (.A(cnt1[24]), .B(cnt2[24]), .C(cnt2[23]), 
         .Z(n42)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/asus/desktop/contador/contador.v(53[21:34])
    defparam cnt1_24__I_0_33_i42_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i500_4_lut (.A(cnt1[1]), .B(cnt1[10]), .C(cnt1[8]), .D(cnt1[4]), 
         .Z(n949)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i500_4_lut.init = 16'h8000;
    LUT4 cnt1_24__I_0_33_i29_2_lut_rep_51 (.A(cnt1[14]), .B(cnt2[14]), .Z(n1240)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/asus/desktop/contador/contador.v(53[21:34])
    defparam cnt1_24__I_0_33_i29_2_lut_rep_51.init = 16'h6666;
    LUT4 cnt1_24__I_0_33_i41_2_lut_rep_43 (.A(cnt1[20]), .B(cnt2[20]), .Z(n1232)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/asus/desktop/contador/contador.v(53[21:34])
    defparam cnt1_24__I_0_33_i41_2_lut_rep_43.init = 16'h6666;
    LUT4 cnt1_24__I_0_33_i18_3_lut_3_lut (.A(cnt1[11]), .B(cnt2[11]), .C(cnt2[10]), 
         .Z(n18)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/asus/desktop/contador/contador.v(53[21:34])
    defparam cnt1_24__I_0_33_i18_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i127_4_lut (.A(flag_N_111), .B(cnt2[0]), .C(flag), .D(n692), 
         .Z(n384)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A (B+((D)+!C)))) */ ;   // c:/users/asus/desktop/contador/contador.v(42[7] 47[10])
    defparam i127_4_lut.init = 16'h0a3a;
    LUT4 i667_4_lut (.A(n1231), .B(n1230), .C(n1237), .D(n1031), .Z(n1106)) /* synthesis lut_function=(A+(B+!(C+!(D)))) */ ;   // c:/users/asus/desktop/contador/contador.v(53[21:34])
    defparam i667_4_lut.init = 16'hefee;
    LUT4 cnt1_24__I_0_33_i15_2_lut_rep_37 (.A(cnt1[7]), .B(cnt2[7]), .Z(n1226)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/asus/desktop/contador/contador.v(53[21:34])
    defparam cnt1_24__I_0_33_i15_2_lut_rep_37.init = 16'h6666;
    L6MUX21 cnt1_24__I_0_33_i50 (.D0(n40), .D1(n48), .SD(n1076), .Z(led_7__N_1));
    L6MUX21 cnt1_24__I_0_33_i40 (.D0(n28), .D1(n38), .SD(n1054), .Z(n40));
    L6MUX21 cnt1_24__I_0_33_i48 (.D0(n22_adj_1), .D1(n46), .SD(n1084), 
            .Z(n48));
    PFUMX cnt1_24__I_0_33_i38 (.BLUT(n30), .ALUT(n36), .C0(n1056), .Z(n38));
    LUT4 i1_2_lut_3_lut (.A(n20_adj_3), .B(cnt2[10]), .C(n691), .Z(flag_N_111)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;
    defparam i1_2_lut_3_lut.init = 16'hf8f8;
    LUT4 i1_4_lut (.A(n17), .B(n691), .C(n15), .D(n16_adj_7), .Z(n692)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/asus/desktop/contador/contador.v(43[12:21])
    defparam i1_4_lut.init = 16'hfffe;
    LUT4 i7_4_lut (.A(cnt2[10]), .B(cnt2[3]), .C(cnt2[1]), .D(cnt2[8]), 
         .Z(n17)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/asus/desktop/contador/contador.v(43[12:21])
    defparam i7_4_lut.init = 16'hfffe;
    PFUMX cnt1_24__I_0_33_i46 (.BLUT(n24), .ALUT(n44), .C0(n1086), .Z(n46));
    LUT4 cnt1_24__I_0_33_i34_3_lut_3_lut (.A(cnt1[20]), .B(cnt2[20]), .C(n32), 
         .Z(n34)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/asus/desktop/contador/contador.v(53[21:34])
    defparam cnt1_24__I_0_33_i34_3_lut_3_lut.init = 16'hd4d4;
    LUT4 cnt1_24__I_0_33_i13_2_lut_rep_54 (.A(cnt1[6]), .B(cnt2[6]), .Z(n1243)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/asus/desktop/contador/contador.v(53[21:34])
    defparam cnt1_24__I_0_33_i13_2_lut_rep_54.init = 16'h6666;
    LUT4 cnt1_24__I_0_33_i10_3_lut_3_lut (.A(cnt1[6]), .B(cnt2[6]), .C(cnt2[5]), 
         .Z(n10)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/asus/desktop/contador/contador.v(53[21:34])
    defparam cnt1_24__I_0_33_i10_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i1_4_lut_adj_1 (.A(n775), .B(n688), .C(cnt1[10]), .D(cnt1[9]), 
         .Z(cnt1_24__N_79)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i1_4_lut_adj_1.init = 16'hfcec;
    LUT4 i2_4_lut (.A(cnt1[8]), .B(cnt1[7]), .C(n776), .D(cnt1[6]), 
         .Z(n775)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i2_4_lut.init = 16'h8880;
    PFUMX cnt1_24__I_0_33_i22 (.BLUT(n6), .ALUT(n20), .C0(n1000), .Z(n22_adj_1));
    LUT4 i5_2_lut (.A(cnt2[9]), .B(cnt2[7]), .Z(n15)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/asus/desktop/contador/contador.v(43[12:21])
    defparam i5_2_lut.init = 16'heeee;
    LUT4 i2_4_lut_adj_2 (.A(cnt1[5]), .B(cnt1[4]), .C(n779), .D(cnt1[3]), 
         .Z(n776)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i2_4_lut_adj_2.init = 16'h8880;
    LUT4 i6_4_lut (.A(cnt2[6]), .B(cnt2[4]), .C(cnt2[2]), .D(cnt2[5]), 
         .Z(n16_adj_7)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/asus/desktop/contador/contador.v(43[12:21])
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i2_3_lut (.A(cnt1[2]), .B(cnt1[1]), .C(cnt1[0]), .Z(n779)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut.init = 16'h8080;
    LUT4 i13_4_lut (.A(cnt1[13]), .B(n26_adj_12), .C(n22), .D(cnt1[17]), 
         .Z(n688)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/asus/desktop/contador/contador.v(32[13:32])
    defparam i13_4_lut.init = 16'hfffe;
    LUT4 i670_2_lut_3_lut (.A(cnt1[20]), .B(cnt2[20]), .C(n1108), .Z(n1054)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/users/asus/desktop/contador/contador.v(53[21:34])
    defparam i670_2_lut_3_lut.init = 16'hf6f6;
    LUT4 i12_4_lut (.A(cnt1[23]), .B(n24_adj_13), .C(n18_adj_6), .D(cnt1[16]), 
         .Z(n26_adj_12)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/asus/desktop/contador/contador.v(32[13:32])
    defparam i12_4_lut.init = 16'hfffe;
    LUT4 i668_2_lut_3_lut (.A(cnt1[20]), .B(cnt2[20]), .C(n1106), .Z(n1056)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/users/asus/desktop/contador/contador.v(53[21:34])
    defparam i668_2_lut_3_lut.init = 16'hf6f6;
    LUT4 cnt1_24__I_0_33_i43_2_lut_rep_44 (.A(cnt1[21]), .B(cnt2[21]), .Z(n1233)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/asus/desktop/contador/contador.v(53[21:34])
    defparam cnt1_24__I_0_33_i43_2_lut_rep_44.init = 16'h6666;
    LUT4 cnt1_24__I_0_33_i16_3_lut_3_lut (.A(cnt1[21]), .B(cnt2[21]), .C(cnt2[9]), 
         .Z(n16)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/asus/desktop/contador/contador.v(53[21:34])
    defparam cnt1_24__I_0_33_i16_3_lut_3_lut.init = 16'hd4d4;
    PFUMX cnt1_24__I_0_33_i28 (.BLUT(n4), .ALUT(n26), .C0(n1022), .Z(n28));
    LUT4 i8_4_lut (.A(cnt1[11]), .B(cnt1[12]), .C(cnt1[21]), .D(cnt1[24]), 
         .Z(n22)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/asus/desktop/contador/contador.v(32[13:32])
    defparam i8_4_lut.init = 16'hfffe;
    LUT4 i10_4_lut (.A(cnt1[18]), .B(cnt1[22]), .C(cnt1[20]), .D(cnt1[14]), 
         .Z(n24_adj_13)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/asus/desktop/contador/contador.v(32[13:32])
    defparam i10_4_lut.init = 16'hfffe;
    LUT4 cnt1_24__I_0_33_i45_2_lut_rep_45 (.A(cnt1[22]), .B(cnt2[22]), .Z(n1234)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/asus/desktop/contador/contador.v(53[21:34])
    defparam cnt1_24__I_0_33_i45_2_lut_rep_45.init = 16'h6666;
    LUT4 cnt1_24__I_0_33_i8_3_lut_3_lut (.A(cnt1[8]), .B(cnt2[8]), .C(cnt2[4]), 
         .Z(n8)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/asus/desktop/contador/contador.v(53[21:34])
    defparam cnt1_24__I_0_33_i8_3_lut_3_lut.init = 16'hd4d4;
    LUT4 cnt1_24__I_0_33_i49_2_lut_rep_40 (.A(cnt1[24]), .B(cnt2[24]), .Z(n1229)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/asus/desktop/contador/contador.v(53[21:34])
    defparam cnt1_24__I_0_33_i49_2_lut_rep_40.init = 16'h6666;
    LUT4 i664_4_lut (.A(n1068), .B(n1234), .C(n1233), .D(n1052), .Z(n1103)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/asus/desktop/contador/contador.v(53[21:34])
    defparam i664_4_lut.init = 16'hfffd;
    LUT4 cnt1_24__I_0_33_i26_3_lut_3_lut (.A(cnt1[15]), .B(cnt2[15]), .C(n14), 
         .Z(n26)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/asus/desktop/contador/contador.v(53[21:34])
    defparam cnt1_24__I_0_33_i26_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i513_4_lut (.A(n11), .B(n9), .C(n1228), .D(n5), .Z(n961)) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;   // c:/users/asus/desktop/contador/contador.v(53[21:34])
    defparam i513_4_lut.init = 16'h5554;
    LUT4 i526_4_lut (.A(n1227), .B(n1226), .C(n1243), .D(n961), .Z(n974)) /* synthesis lut_function=(!(A+!(B+(C+!(D))))) */ ;   // c:/users/asus/desktop/contador/contador.v(53[21:34])
    defparam i526_4_lut.init = 16'h5455;
    LUT4 i657_2_lut_3_lut_4_lut (.A(cnt1[15]), .B(cnt2[15]), .C(n1239), 
         .D(n1240), .Z(n1022)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (B+(C+(D)))) */ ;   // c:/users/asus/desktop/contador/contador.v(53[21:34])
    defparam i657_2_lut_3_lut_4_lut.init = 16'hfff6;
    LUT4 cnt1_24__I_0_33_i5_2_lut (.A(cnt1[2]), .B(cnt2[2]), .Z(n5)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/asus/desktop/contador/contador.v(53[21:34])
    defparam cnt1_24__I_0_33_i5_2_lut.init = 16'h6666;
    LUT4 cnt1_24__I_0_33_i11_2_lut (.A(cnt1[5]), .B(cnt2[5]), .Z(n11)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/asus/desktop/contador/contador.v(53[21:34])
    defparam cnt1_24__I_0_33_i11_2_lut.init = 16'h6666;
    LUT4 i541_4_lut (.A(n1242), .B(n1241), .C(n19), .D(n974), .Z(n989)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/asus/desktop/contador/contador.v(53[21:34])
    defparam i541_4_lut.init = 16'h0100;
    LUT4 i646_4_lut_4_lut (.A(n1229), .B(n1068), .C(n42), .D(n8), .Z(n44)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/asus/desktop/contador/contador.v(53[21:34])
    defparam i646_4_lut_4_lut.init = 16'hf4b0;
    LUT4 cnt1_24__I_0_33_i33_2_lut_rep_47 (.A(cnt1[16]), .B(cnt2[16]), .Z(n1236)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/asus/desktop/contador/contador.v(53[21:34])
    defparam cnt1_24__I_0_33_i33_2_lut_rep_47.init = 16'h6666;
    LUT4 i558_4_lut (.A(n1240), .B(n1239), .C(n1238), .D(n989), .Z(n1006)) /* synthesis lut_function=(!(A+(B+!(C+!(D))))) */ ;   // c:/users/asus/desktop/contador/contador.v(53[21:34])
    defparam i558_4_lut.init = 16'h1011;
    LUT4 cnt1_24__I_0_33_i19_2_lut (.A(cnt1[9]), .B(cnt2[9]), .Z(n19)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/asus/desktop/contador/contador.v(53[21:34])
    defparam cnt1_24__I_0_33_i19_2_lut.init = 16'h6666;
    LUT4 i13_4_lut_adj_3 (.A(cnt2[21]), .B(n26_adj_8), .C(n22_adj_10), 
         .D(cnt2[13]), .Z(n691)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i13_4_lut_adj_3.init = 16'hfffe;
    LUT4 cnt1_24__I_0_33_i4_4_lut_4_lut (.A(cnt1[0]), .B(cnt1[1]), .C(cnt2[1]), 
         .D(cnt2[0]), .Z(n4)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C (D))+!B (C+(D))))) */ ;   // c:/users/asus/desktop/contador/contador.v(32[13:32])
    defparam cnt1_24__I_0_33_i4_4_lut_4_lut.init = 16'h7130;
    LUT4 cnt1_24__I_0_33_i6_3_lut_3_lut (.A(cnt1[3]), .B(cnt2[3]), .C(cnt2[2]), 
         .Z(n6)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/asus/desktop/contador/contador.v(53[21:34])
    defparam cnt1_24__I_0_33_i6_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i655_2_lut_2_lut (.A(n1224), .B(n384), .Z(clk_c_enable_25)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i655_2_lut_2_lut.init = 16'h1111;
    LUT4 i579_4_lut (.A(n1237), .B(n1236), .C(n1235), .D(n1006), .Z(n1027)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/asus/desktop/contador/contador.v(53[21:34])
    defparam i579_4_lut.init = 16'h0100;
    LUT4 cnt1_24__I_0_33_i24_3_lut_3_lut (.A(cnt1[22]), .B(cnt2[22]), .C(n16), 
         .Z(n24)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/asus/desktop/contador/contador.v(53[21:34])
    defparam cnt1_24__I_0_33_i24_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i604_4_lut (.A(n1232), .B(n1231), .C(n1230), .D(n1027), .Z(n1052)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/asus/desktop/contador/contador.v(53[21:34])
    defparam i604_4_lut.init = 16'h0100;
    LUT4 i12_4_lut_adj_4 (.A(cnt2[16]), .B(n24_adj_9), .C(n18_adj_11), 
         .D(cnt2[18]), .Z(n26_adj_8)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i12_4_lut_adj_4.init = 16'hfffe;
    LUT4 i8_4_lut_adj_5 (.A(cnt2[12]), .B(cnt2[24]), .C(cnt2[20]), .D(cnt2[11]), 
         .Z(n22_adj_10)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i8_4_lut_adj_5.init = 16'hfffe;
    LUT4 cnt1_24__I_0_33_i9_2_lut (.A(cnt1[4]), .B(cnt2[4]), .Z(n9)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/asus/desktop/contador/contador.v(53[21:34])
    defparam cnt1_24__I_0_33_i9_2_lut.init = 16'h6666;
    LUT4 i10_4_lut_adj_6 (.A(cnt2[23]), .B(cnt2[15]), .C(cnt2[14]), .D(cnt2[17]), 
         .Z(n24_adj_9)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i10_4_lut_adj_6.init = 16'hfffe;
    LUT4 i4_2_lut (.A(cnt2[19]), .B(cnt2[22]), .Z(n18_adj_11)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4_2_lut.init = 16'heeee;
    LUT4 cnt1_24__I_0_33_i47_2_lut (.A(cnt1[23]), .B(cnt2[23]), .Z(n1068)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // c:/users/asus/desktop/contador/contador.v(53[21:34])
    defparam cnt1_24__I_0_33_i47_2_lut.init = 16'h9999;
    LUT4 cnt1_24__I_0_33_i12_3_lut_3_lut (.A(cnt1[16]), .B(cnt2[16]), .C(cnt2[7]), 
         .Z(n12)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/asus/desktop/contador/contador.v(53[21:34])
    defparam cnt1_24__I_0_33_i12_3_lut_3_lut.init = 16'hd4d4;
    LUT4 cnt1_24__I_0_33_i35_2_lut_rep_48 (.A(cnt1[17]), .B(cnt2[17]), .Z(n1237)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/asus/desktop/contador/contador.v(53[21:34])
    defparam cnt1_24__I_0_33_i35_2_lut_rep_48.init = 16'h6666;
    LUT4 i4_2_lut_adj_7 (.A(cnt1[19]), .B(cnt1[15]), .Z(n18_adj_6)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/asus/desktop/contador/contador.v(32[13:32])
    defparam i4_2_lut_adj_7.init = 16'heeee;
    LUT4 i165_4_lut (.A(cnt2[8]), .B(cnt2[9]), .C(cnt2[7]), .D(n14_adj_4), 
         .Z(n20_adj_3)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i165_4_lut.init = 16'heccc;
    LUT4 i162_4_lut (.A(cnt2[5]), .B(cnt2[6]), .C(cnt2[4]), .D(n8_adj_5), 
         .Z(n14_adj_4)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i162_4_lut.init = 16'heccc;
    LUT4 i5_4_lut_rep_35 (.A(cnt1[3]), .B(n10_adj_2), .C(n945), .D(n949), 
         .Z(n1224)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;
    defparam i5_4_lut_rep_35.init = 16'hefff;
    LUT4 cnt1_24__I_0_33_i17_2_lut_rep_38 (.A(cnt1[8]), .B(cnt2[8]), .Z(n1227)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/asus/desktop/contador/contador.v(53[21:34])
    defparam cnt1_24__I_0_33_i17_2_lut_rep_38.init = 16'h6666;
    LUT4 i50_1_lut (.A(led_7__N_1), .Z(led_c)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/asus/desktop/contador/contador.v(53[21:63])
    defparam i50_1_lut.init = 16'h5555;
    LUT4 cnt1_24__I_0_33_i31_2_lut_rep_46 (.A(cnt1[15]), .B(cnt2[15]), .Z(n1235)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/asus/desktop/contador/contador.v(53[21:34])
    defparam cnt1_24__I_0_33_i31_2_lut_rep_46.init = 16'h6666;
    LUT4 i159_4_lut (.A(cnt2[2]), .B(cnt2[3]), .C(cnt2[1]), .D(cnt2[0]), 
         .Z(n8_adj_5)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i159_4_lut.init = 16'heccc;
    VLO i1 (.Z(GND_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

