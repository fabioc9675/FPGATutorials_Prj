// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.11.0.396.4
// Netlist written on Fri Jul 30 21:15:30 2021
//
// Verilog Description of module contador
//

module contador (clk, rst_n, clkout) /* synthesis syn_module_defined=1 */ ;   // c:/users/asus/desktop/contador/contador.v(1[8:16])
    input clk;   // c:/users/asus/desktop/contador/contador.v(3[8:11])
    input rst_n;   // c:/users/asus/desktop/contador/contador.v(3[13:18])
    output clkout;   // c:/users/asus/desktop/contador/contador.v(4[9:15])
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/asus/desktop/contador/contador.v(3[8:11])
    
    wire GND_net, VCC_net, rst_n_c, clkout_c;
    wire [13:0]cnt_p;   // c:/users/asus/desktop/contador/contador.v(9[18:23])
    
    wire n252, n251, n250, clkout_N_32, n48, n49, n50, n51, 
        n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, 
        n262, n239, n249, n248, n247, n226, n246, n229, n17, 
        n16;
    
    VHI i103 (.Z(VCC_net));
    LUT4 i80_2_lut (.A(cnt_p[0]), .B(cnt_p[1]), .Z(n239)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i80_2_lut.init = 16'heeee;
    CCU2D cnt_p_39_add_4_15 (.A0(cnt_p[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n252), .S0(n48));   // c:/users/asus/desktop/contador/contador.v(20[14:21])
    defparam cnt_p_39_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_p_39_add_4_15.INIT1 = 16'h0000;
    defparam cnt_p_39_add_4_15.INJECT1_0 = "NO";
    defparam cnt_p_39_add_4_15.INJECT1_1 = "NO";
    OB clkout_pad (.I(clkout_c), .O(clkout));   // c:/users/asus/desktop/contador/contador.v(4[9:15])
    CCU2D cnt_p_39_add_4_13 (.A0(cnt_p[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n251), .COUT(n252), .S0(n50), .S1(n49));   // c:/users/asus/desktop/contador/contador.v(20[14:21])
    defparam cnt_p_39_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_p_39_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_p_39_add_4_13.INJECT1_0 = "NO";
    defparam cnt_p_39_add_4_13.INJECT1_1 = "NO";
    CCU2D cnt_p_39_add_4_11 (.A0(cnt_p[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n250), .COUT(n251), .S0(n52), .S1(n51));   // c:/users/asus/desktop/contador/contador.v(20[14:21])
    defparam cnt_p_39_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_p_39_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_p_39_add_4_11.INJECT1_0 = "NO";
    defparam cnt_p_39_add_4_11.INJECT1_1 = "NO";
    CCU2D cnt_p_39_add_4_9 (.A0(cnt_p[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n249), .COUT(n250), .S0(n54), .S1(n53));   // c:/users/asus/desktop/contador/contador.v(20[14:21])
    defparam cnt_p_39_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_p_39_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_p_39_add_4_9.INJECT1_0 = "NO";
    defparam cnt_p_39_add_4_9.INJECT1_1 = "NO";
    LUT4 i97_2_lut (.A(cnt_p[0]), .B(cnt_p[3]), .Z(n262)) /* synthesis lut_function=(A (B)) */ ;
    defparam i97_2_lut.init = 16'h8888;
    IB clk_pad (.I(clk), .O(clk_c));   // c:/users/asus/desktop/contador/contador.v(3[8:11])
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 i9_4_lut (.A(n17), .B(cnt_p[10]), .C(n16), .D(cnt_p[5]), .Z(n226)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/asus/desktop/contador/contador.v(20[14:21])
    defparam i9_4_lut.init = 16'hfffe;
    LUT4 i7_4_lut (.A(cnt_p[7]), .B(cnt_p[9]), .C(cnt_p[13]), .D(cnt_p[8]), 
         .Z(n17)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/asus/desktop/contador/contador.v(20[14:21])
    defparam i7_4_lut.init = 16'hfffe;
    VLO i1 (.Z(GND_net));
    LUT4 i6_4_lut (.A(cnt_p[4]), .B(cnt_p[11]), .C(cnt_p[6]), .D(cnt_p[12]), 
         .Z(n16)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/asus/desktop/contador/contador.v(20[14:21])
    defparam i6_4_lut.init = 16'hfffe;
    FD1S3AX clk_p_29 (.D(clkout_N_32), .CK(clk_c), .Q(clkout_c));   // c:/users/asus/desktop/contador/contador.v(27[9] 30[16])
    defparam clk_p_29.GSR = "ENABLED";
    FD1S3IX cnt_p_39__i13 (.D(n48), .CK(clk_c), .CD(n229), .Q(cnt_p[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/asus/desktop/contador/contador.v(20[14:21])
    defparam cnt_p_39__i13.GSR = "ENABLED";
    FD1S3IX cnt_p_39__i0 (.D(n61), .CK(clk_c), .CD(n229), .Q(cnt_p[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/asus/desktop/contador/contador.v(20[14:21])
    defparam cnt_p_39__i0.GSR = "ENABLED";
    LUT4 i102_4_lut (.A(cnt_p[1]), .B(cnt_p[2]), .C(n226), .D(n262), 
         .Z(n229)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/asus/desktop/contador/contador.v(20[14:21])
    defparam i102_4_lut.init = 16'h0100;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 i2_4_lut (.A(n226), .B(n239), .C(cnt_p[3]), .D(cnt_p[2]), .Z(clkout_N_32)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i2_4_lut.init = 16'hfefa;
    CCU2D cnt_p_39_add_4_7 (.A0(cnt_p[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n248), .COUT(n249), .S0(n56), .S1(n55));   // c:/users/asus/desktop/contador/contador.v(20[14:21])
    defparam cnt_p_39_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_p_39_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_p_39_add_4_7.INJECT1_0 = "NO";
    defparam cnt_p_39_add_4_7.INJECT1_1 = "NO";
    CCU2D cnt_p_39_add_4_5 (.A0(cnt_p[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n247), .COUT(n248), .S0(n58), .S1(n57));   // c:/users/asus/desktop/contador/contador.v(20[14:21])
    defparam cnt_p_39_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_p_39_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_p_39_add_4_5.INJECT1_0 = "NO";
    defparam cnt_p_39_add_4_5.INJECT1_1 = "NO";
    CCU2D cnt_p_39_add_4_3 (.A0(cnt_p[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n246), .COUT(n247), .S0(n60), .S1(n59));   // c:/users/asus/desktop/contador/contador.v(20[14:21])
    defparam cnt_p_39_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_p_39_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_p_39_add_4_3.INJECT1_0 = "NO";
    defparam cnt_p_39_add_4_3.INJECT1_1 = "NO";
    CCU2D cnt_p_39_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_p[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n246), .S1(n61));   // c:/users/asus/desktop/contador/contador.v(20[14:21])
    defparam cnt_p_39_add_4_1.INIT0 = 16'hF000;
    defparam cnt_p_39_add_4_1.INIT1 = 16'h0555;
    defparam cnt_p_39_add_4_1.INJECT1_0 = "NO";
    defparam cnt_p_39_add_4_1.INJECT1_1 = "NO";
    FD1S3IX cnt_p_39__i12 (.D(n49), .CK(clk_c), .CD(n229), .Q(cnt_p[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/asus/desktop/contador/contador.v(20[14:21])
    defparam cnt_p_39__i12.GSR = "ENABLED";
    FD1S3IX cnt_p_39__i11 (.D(n50), .CK(clk_c), .CD(n229), .Q(cnt_p[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/asus/desktop/contador/contador.v(20[14:21])
    defparam cnt_p_39__i11.GSR = "ENABLED";
    FD1S3IX cnt_p_39__i10 (.D(n51), .CK(clk_c), .CD(n229), .Q(cnt_p[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/asus/desktop/contador/contador.v(20[14:21])
    defparam cnt_p_39__i10.GSR = "ENABLED";
    FD1S3IX cnt_p_39__i9 (.D(n52), .CK(clk_c), .CD(n229), .Q(cnt_p[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/asus/desktop/contador/contador.v(20[14:21])
    defparam cnt_p_39__i9.GSR = "ENABLED";
    FD1S3IX cnt_p_39__i8 (.D(n53), .CK(clk_c), .CD(n229), .Q(cnt_p[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/asus/desktop/contador/contador.v(20[14:21])
    defparam cnt_p_39__i8.GSR = "ENABLED";
    FD1S3IX cnt_p_39__i7 (.D(n54), .CK(clk_c), .CD(n229), .Q(cnt_p[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/asus/desktop/contador/contador.v(20[14:21])
    defparam cnt_p_39__i7.GSR = "ENABLED";
    FD1S3IX cnt_p_39__i6 (.D(n55), .CK(clk_c), .CD(n229), .Q(cnt_p[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/asus/desktop/contador/contador.v(20[14:21])
    defparam cnt_p_39__i6.GSR = "ENABLED";
    FD1S3IX cnt_p_39__i5 (.D(n56), .CK(clk_c), .CD(n229), .Q(cnt_p[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/asus/desktop/contador/contador.v(20[14:21])
    defparam cnt_p_39__i5.GSR = "ENABLED";
    FD1S3IX cnt_p_39__i4 (.D(n57), .CK(clk_c), .CD(n229), .Q(cnt_p[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/asus/desktop/contador/contador.v(20[14:21])
    defparam cnt_p_39__i4.GSR = "ENABLED";
    FD1S3IX cnt_p_39__i3 (.D(n58), .CK(clk_c), .CD(n229), .Q(cnt_p[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/asus/desktop/contador/contador.v(20[14:21])
    defparam cnt_p_39__i3.GSR = "ENABLED";
    FD1S3IX cnt_p_39__i2 (.D(n59), .CK(clk_c), .CD(n229), .Q(cnt_p[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/asus/desktop/contador/contador.v(20[14:21])
    defparam cnt_p_39__i2.GSR = "ENABLED";
    FD1S3IX cnt_p_39__i1 (.D(n60), .CK(clk_c), .CD(n229), .Q(cnt_p[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/asus/desktop/contador/contador.v(20[14:21])
    defparam cnt_p_39__i1.GSR = "ENABLED";
    IB rst_n_pad (.I(rst_n), .O(rst_n_c));   // c:/users/asus/desktop/contador/contador.v(3[13:18])
    GSR GSR_INST (.GSR(rst_n_c));
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

