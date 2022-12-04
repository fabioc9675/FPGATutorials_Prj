// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.11.0.396.4
// Netlist written on Sun Dec 06 22:09:53 2020
//
// Verilog Description of module LED_shining
//

module LED_shining (clk_in, rst_n_in, led1, led2) /* synthesis syn_module_defined=1 */ ;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/useoffpga/codesrc.v(19[8:19])
    input clk_in;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/useoffpga/codesrc.v(21[8:14])
    input rst_n_in;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/useoffpga/codesrc.v(22[8:16])
    output led1;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/useoffpga/codesrc.v(23[9:13])
    output led2;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/useoffpga/codesrc.v(24[9:13])
    
    wire clk_in_c /* synthesis SET_AS_NETWORK=clk_in_c, is_clock=1 */ ;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/useoffpga/codesrc.v(21[8:14])
    
    wire GND_net, VCC_net, rst_n_in_c, led1_c, led2_c;
    wire [23:0]cnt;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/useoffpga/codesrc.v(32[13:16])
    
    wire n344, n13, n24, n12, n354, n14, n9, n2, n23, n343, 
        n162, n22, n21, n353, n20, n19, n18, led1_N_52, n14_adj_1, 
        n359, n13_adj_2, n78, n79, n80, n81, n82, n83, n84, 
        n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, 
        n95, n96, n97, n98, n99, n100, n101, n4, n352, n351, 
        n347, n346, n381, n362, n13_adj_3, n350, n349, n348, 
        n345;
    
    VHI i308 (.Z(VCC_net));
    LUT4 i5_4_lut (.A(n24), .B(n18), .C(cnt[9]), .D(cnt[12]), .Z(n13_adj_3)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i5_4_lut.init = 16'h8000;
    TSALL TSALL_INST (.TSALL(GND_net));
    CCU2D cnt_23_add_4_3 (.A0(n23), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n22), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n343), 
          .COUT(n344), .S0(n100), .S1(n99));   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/useoffpga/codesrc.v(49[16:26])
    defparam cnt_23_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_23_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_23_add_4_3.INJECT1_0 = "NO";
    defparam cnt_23_add_4_3.INJECT1_1 = "NO";
    CCU2D cnt_23_add_4_9 (.A0(cnt[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n346), 
          .COUT(n347), .S0(n94), .S1(n93));   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/useoffpga/codesrc.v(49[16:26])
    defparam cnt_23_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_23_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_23_add_4_9.INJECT1_0 = "NO";
    defparam cnt_23_add_4_9.INJECT1_1 = "NO";
    VLO i1 (.Z(GND_net));
    CCU2D cnt_23_add_4_23 (.A0(cnt[21]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[22]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n353), 
          .COUT(n354), .S0(n80), .S1(n79));   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/useoffpga/codesrc.v(49[16:26])
    defparam cnt_23_add_4_23.INIT0 = 16'hfaaa;
    defparam cnt_23_add_4_23.INIT1 = 16'hfaaa;
    defparam cnt_23_add_4_23.INJECT1_0 = "NO";
    defparam cnt_23_add_4_23.INJECT1_1 = "NO";
    OB led2_pad (.I(led2_c), .O(led2));   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/useoffpga/codesrc.v(24[9:13])
    OB led1_pad (.I(led1_c), .O(led1));   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/useoffpga/codesrc.v(23[9:13])
    CCU2D cnt_23_add_4_7 (.A0(n19), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n18), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n345), 
          .COUT(n346), .S0(n96), .S1(n95));   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/useoffpga/codesrc.v(49[16:26])
    defparam cnt_23_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_23_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_23_add_4_7.INJECT1_0 = "NO";
    defparam cnt_23_add_4_7.INJECT1_1 = "NO";
    CCU2D cnt_23_add_4_21 (.A0(cnt[19]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n352), 
          .COUT(n353), .S0(n82), .S1(n81));   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/useoffpga/codesrc.v(49[16:26])
    defparam cnt_23_add_4_21.INIT0 = 16'hfaaa;
    defparam cnt_23_add_4_21.INIT1 = 16'hfaaa;
    defparam cnt_23_add_4_21.INJECT1_0 = "NO";
    defparam cnt_23_add_4_21.INJECT1_1 = "NO";
    CCU2D cnt_23_add_4_19 (.A0(cnt[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n351), 
          .COUT(n352), .S0(n84), .S1(n83));   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/useoffpga/codesrc.v(49[16:26])
    defparam cnt_23_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt_23_add_4_19.INIT1 = 16'hfaaa;
    defparam cnt_23_add_4_19.INJECT1_0 = "NO";
    defparam cnt_23_add_4_19.INJECT1_1 = "NO";
    CCU2D cnt_23_add_4_17 (.A0(cnt[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n350), 
          .COUT(n351), .S0(n86), .S1(n85));   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/useoffpga/codesrc.v(49[16:26])
    defparam cnt_23_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_23_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_23_add_4_17.INJECT1_0 = "NO";
    defparam cnt_23_add_4_17.INJECT1_1 = "NO";
    CCU2D cnt_23_add_4_5 (.A0(n21), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n20), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n344), 
          .COUT(n345), .S0(n98), .S1(n97));   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/useoffpga/codesrc.v(49[16:26])
    defparam cnt_23_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_23_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_23_add_4_5.INJECT1_0 = "NO";
    defparam cnt_23_add_4_5.INJECT1_1 = "NO";
    CCU2D cnt_23_add_4_15 (.A0(cnt[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n349), 
          .COUT(n350), .S0(n88), .S1(n87));   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/useoffpga/codesrc.v(49[16:26])
    defparam cnt_23_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_23_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_23_add_4_15.INJECT1_0 = "NO";
    defparam cnt_23_add_4_15.INJECT1_1 = "NO";
    CCU2D cnt_23_add_4_13 (.A0(cnt[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n348), 
          .COUT(n349), .S0(n90), .S1(n89));   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/useoffpga/codesrc.v(49[16:26])
    defparam cnt_23_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_23_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_23_add_4_13.INJECT1_0 = "NO";
    defparam cnt_23_add_4_13.INJECT1_1 = "NO";
    FD1S3AX clk_div_15 (.D(led1_N_52), .CK(clk_in_c), .Q(led1_c)) /* synthesis lse_init_val=0 */ ;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/useoffpga/codesrc.v(47[3] 52[6])
    defparam clk_div_15.GSR = "ENABLED";
    FD1S3IX cnt_23__i23 (.D(n78), .CK(clk_in_c), .CD(n162), .Q(cnt[23])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/useoffpga/codesrc.v(49[16:26])
    defparam cnt_23__i23.GSR = "ENABLED";
    LUT4 i5_4_lut_adj_1 (.A(cnt[14]), .B(cnt[22]), .C(n13_adj_3), .D(n14), 
         .Z(n14_adj_1)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i5_4_lut_adj_1.init = 16'h1000;
    LUT4 i1_2_lut (.A(cnt[8]), .B(cnt[7]), .Z(n4)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i6_4_lut (.A(n23), .B(n21), .C(cnt[18]), .D(n20), .Z(n14)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i6_4_lut.init = 16'h8000;
    CCU2D cnt_23_add_4_11 (.A0(cnt[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n347), 
          .COUT(n348), .S0(n92), .S1(n91));   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/useoffpga/codesrc.v(49[16:26])
    defparam cnt_23_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_23_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_23_add_4_11.INJECT1_0 = "NO";
    defparam cnt_23_add_4_11.INJECT1_1 = "NO";
    CCU2D cnt_23_add_4_25 (.A0(cnt[23]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n354), 
          .S0(n78));   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/useoffpga/codesrc.v(49[16:26])
    defparam cnt_23_add_4_25.INIT0 = 16'hfaaa;
    defparam cnt_23_add_4_25.INIT1 = 16'h0000;
    defparam cnt_23_add_4_25.INJECT1_0 = "NO";
    defparam cnt_23_add_4_25.INJECT1_1 = "NO";
    FD1S3IX cnt_23__i0 (.D(n101), .CK(clk_in_c), .CD(n162), .Q(n24)) /* synthesis syn_use_carry_chain=1 */ ;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/useoffpga/codesrc.v(49[16:26])
    defparam cnt_23__i0.GSR = "ENABLED";
    GSR GSR_INST (.GSR(rst_n_in_c));
    LUT4 i7_4_lut (.A(n13), .B(cnt[21]), .C(n12), .D(cnt[16]), .Z(n162)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i7_4_lut.init = 16'h8000;
    LUT4 i5_4_lut_adj_2 (.A(n22), .B(cnt[11]), .C(n19), .D(cnt[23]), 
         .Z(n13)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i5_4_lut_adj_2.init = 16'h8000;
    FD1S3IX cnt_23__i22 (.D(n79), .CK(clk_in_c), .CD(n162), .Q(cnt[22])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/useoffpga/codesrc.v(49[16:26])
    defparam cnt_23__i22.GSR = "ENABLED";
    FD1S3IX cnt_23__i21 (.D(n80), .CK(clk_in_c), .CD(n162), .Q(cnt[21])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/useoffpga/codesrc.v(49[16:26])
    defparam cnt_23__i21.GSR = "ENABLED";
    FD1S3IX cnt_23__i20 (.D(n81), .CK(clk_in_c), .CD(n162), .Q(cnt[20])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/useoffpga/codesrc.v(49[16:26])
    defparam cnt_23__i20.GSR = "ENABLED";
    FD1S3IX cnt_23__i19 (.D(n82), .CK(clk_in_c), .CD(n162), .Q(cnt[19])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/useoffpga/codesrc.v(49[16:26])
    defparam cnt_23__i19.GSR = "ENABLED";
    FD1S3IX cnt_23__i18 (.D(n83), .CK(clk_in_c), .CD(n162), .Q(cnt[18])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/useoffpga/codesrc.v(49[16:26])
    defparam cnt_23__i18.GSR = "ENABLED";
    FD1S3IX cnt_23__i17 (.D(n84), .CK(clk_in_c), .CD(n162), .Q(cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/useoffpga/codesrc.v(49[16:26])
    defparam cnt_23__i17.GSR = "ENABLED";
    FD1S3IX cnt_23__i16 (.D(n85), .CK(clk_in_c), .CD(n162), .Q(cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/useoffpga/codesrc.v(49[16:26])
    defparam cnt_23__i16.GSR = "ENABLED";
    FD1S3IX cnt_23__i15 (.D(n86), .CK(clk_in_c), .CD(n162), .Q(cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/useoffpga/codesrc.v(49[16:26])
    defparam cnt_23__i15.GSR = "ENABLED";
    FD1S3IX cnt_23__i14 (.D(n87), .CK(clk_in_c), .CD(n162), .Q(cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/useoffpga/codesrc.v(49[16:26])
    defparam cnt_23__i14.GSR = "ENABLED";
    FD1S3IX cnt_23__i13 (.D(n88), .CK(clk_in_c), .CD(n162), .Q(cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/useoffpga/codesrc.v(49[16:26])
    defparam cnt_23__i13.GSR = "ENABLED";
    FD1S3IX cnt_23__i12 (.D(n89), .CK(clk_in_c), .CD(n162), .Q(cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/useoffpga/codesrc.v(49[16:26])
    defparam cnt_23__i12.GSR = "ENABLED";
    FD1S3IX cnt_23__i11 (.D(n90), .CK(clk_in_c), .CD(n162), .Q(cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/useoffpga/codesrc.v(49[16:26])
    defparam cnt_23__i11.GSR = "ENABLED";
    FD1S3IX cnt_23__i10 (.D(n91), .CK(clk_in_c), .CD(n162), .Q(cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/useoffpga/codesrc.v(49[16:26])
    defparam cnt_23__i10.GSR = "ENABLED";
    FD1S3IX cnt_23__i9 (.D(n92), .CK(clk_in_c), .CD(n162), .Q(cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/useoffpga/codesrc.v(49[16:26])
    defparam cnt_23__i9.GSR = "ENABLED";
    FD1S3IX cnt_23__i8 (.D(n93), .CK(clk_in_c), .CD(n162), .Q(cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/useoffpga/codesrc.v(49[16:26])
    defparam cnt_23__i8.GSR = "ENABLED";
    FD1S3IX cnt_23__i7 (.D(n94), .CK(clk_in_c), .CD(n162), .Q(cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/useoffpga/codesrc.v(49[16:26])
    defparam cnt_23__i7.GSR = "ENABLED";
    FD1S3IX cnt_23__i6 (.D(n95), .CK(clk_in_c), .CD(n162), .Q(n18)) /* synthesis syn_use_carry_chain=1 */ ;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/useoffpga/codesrc.v(49[16:26])
    defparam cnt_23__i6.GSR = "ENABLED";
    FD1S3IX cnt_23__i5 (.D(n96), .CK(clk_in_c), .CD(n162), .Q(n19)) /* synthesis syn_use_carry_chain=1 */ ;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/useoffpga/codesrc.v(49[16:26])
    defparam cnt_23__i5.GSR = "ENABLED";
    FD1S3IX cnt_23__i4 (.D(n97), .CK(clk_in_c), .CD(n162), .Q(n20)) /* synthesis syn_use_carry_chain=1 */ ;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/useoffpga/codesrc.v(49[16:26])
    defparam cnt_23__i4.GSR = "ENABLED";
    FD1S3IX cnt_23__i3 (.D(n98), .CK(clk_in_c), .CD(n162), .Q(n21)) /* synthesis syn_use_carry_chain=1 */ ;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/useoffpga/codesrc.v(49[16:26])
    defparam cnt_23__i3.GSR = "ENABLED";
    FD1S3IX cnt_23__i2 (.D(n99), .CK(clk_in_c), .CD(n162), .Q(n22)) /* synthesis syn_use_carry_chain=1 */ ;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/useoffpga/codesrc.v(49[16:26])
    defparam cnt_23__i2.GSR = "ENABLED";
    FD1S3IX cnt_23__i1 (.D(n100), .CK(clk_in_c), .CD(n162), .Q(n23)) /* synthesis syn_use_carry_chain=1 */ ;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/useoffpga/codesrc.v(49[16:26])
    defparam cnt_23__i1.GSR = "ENABLED";
    IB clk_in_pad (.I(clk_in), .O(clk_in_c));   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/useoffpga/codesrc.v(21[8:14])
    IB rst_n_in_pad (.I(rst_n_in), .O(rst_n_in_c));   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/useoffpga/codesrc.v(22[8:16])
    LUT4 led1_I_0_1_lut (.A(led1_c), .Z(led2_c)) /* synthesis lut_function=(!(A)) */ ;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/useoffpga/codesrc.v(31[15:24])
    defparam led1_I_0_1_lut.init = 16'h5555;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 i1_4_lut (.A(cnt[23]), .B(cnt[22]), .C(cnt[21]), .D(n9), .Z(led1_N_52)) /* synthesis lut_function=(A+(B (C+(D)))) */ ;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/useoffpga/codesrc.v(32[13:16])
    defparam i1_4_lut.init = 16'heeea;
    LUT4 i2_4_lut (.A(n2), .B(cnt[19]), .C(cnt[18]), .D(cnt[20]), .Z(n9)) /* synthesis lut_function=(A (B (D))+!A (B (C (D)))) */ ;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/useoffpga/codesrc.v(32[13:16])
    defparam i2_4_lut.init = 16'hc800;
    LUT4 i2_4_lut_adj_3 (.A(cnt[11]), .B(cnt[9]), .C(cnt[10]), .D(n4), 
         .Z(n359)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/useoffpga/codesrc.v(32[13:16])
    defparam i2_4_lut_adj_3.init = 16'ha080;
    LUT4 i3_4_lut (.A(n362), .B(cnt[17]), .C(cnt[16]), .D(cnt[15]), 
         .Z(n2)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/useoffpga/codesrc.v(32[13:16])
    defparam i3_4_lut.init = 16'h8000;
    LUT4 i4_4_lut (.A(cnt[7]), .B(n381), .C(n13_adj_2), .D(n14_adj_1), 
         .Z(n12)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i4_4_lut.init = 16'h2000;
    LUT4 i3_4_lut_adj_4 (.A(cnt[12]), .B(n359), .C(cnt[13]), .D(cnt[14]), 
         .Z(n362)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut_adj_4.init = 16'hfffe;
    LUT4 i284_4_lut (.A(cnt[19]), .B(cnt[10]), .C(cnt[8]), .D(cnt[13]), 
         .Z(n381)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i284_4_lut.init = 16'hfffe;
    LUT4 i4_3_lut (.A(cnt[15]), .B(cnt[17]), .C(cnt[20]), .Z(n13_adj_2)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i4_3_lut.init = 16'h4040;
    CCU2D cnt_23_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n24), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n343), 
          .S1(n101));   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/useoffpga/codesrc.v(49[16:26])
    defparam cnt_23_add_4_1.INIT0 = 16'hF000;
    defparam cnt_23_add_4_1.INIT1 = 16'h0555;
    defparam cnt_23_add_4_1.INJECT1_0 = "NO";
    defparam cnt_23_add_4_1.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

