// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.11.0.396.4
// Netlist written on Sat Jul 31 10:37:36 2021
//
// Verilog Description of module top
//

module top (led, sys_clk, sys_rst) /* synthesis syn_module_defined=1 */ ;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(2[8:11])
    output [7:0]led;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(3[19:22])
    input sys_clk;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(4[8:15])
    input sys_rst;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(5[8:15])
    
    wire sys_clk_c /* synthesis is_clock=1, SET_AS_NETWORK=sys_clk_c */ ;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(4[8:15])
    
    wire GND_net, VCC_net, led_c_7, led_c_6, led_c_5, led_c_4, led_c_3, 
        led_c_2, led_c_1, led_c_0, sys_rst_c;
    wire [22:0]counter;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(8[12:19])
    
    wire n44, n42, n13, n14, n15, n16, n17, n18, n19, n20, 
        n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, 
        n31, n32, n33, n34, n35;
    wire [7:0]led_7__N_32;
    wire [22:0]counter_22__N_42;
    
    wire n40, n257, n256, n255, n254, n253, n252, n251, n250, 
        n249, n248, n247, n38, n36, n235, n234, n32_adj_1, n31_adj_2, 
        n28_adj_3, n24_adj_4, n45;
    
    VHI i2 (.Z(VCC_net));
    OB led_pad_7 (.I(led_c_7), .O(led[7]));   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(3[19:22])
    LUT4 i80_1_lut (.A(sys_rst_c), .Z(n234)) /* synthesis lut_function=(!(A)) */ ;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(5[8:15])
    defparam i80_1_lut.init = 16'h5555;
    FD1S3JX led_i2 (.D(led_7__N_32[1]), .CK(sys_clk_c), .PD(n234), .Q(led_c_1));   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(18[8] 29[4])
    defparam led_i2.GSR = "ENABLED";
    LUT4 i88_2_lut (.A(n28), .B(n45), .Z(counter_22__N_42[7])) /* synthesis lut_function=(A+!(B)) */ ;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(22[11] 24[5])
    defparam i88_2_lut.init = 16'hbbbb;
    LUT4 i13_4_lut (.A(counter[21]), .B(counter[9]), .C(counter[7]), .D(counter[14]), 
         .Z(n36)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(19[6:23])
    defparam i13_4_lut.init = 16'hfffe;
    LUT4 i87_2_lut (.A(n27), .B(n45), .Z(counter_22__N_42[8])) /* synthesis lut_function=(A+!(B)) */ ;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(22[11] 24[5])
    defparam i87_2_lut.init = 16'hbbbb;
    LUT4 i106_2_lut (.A(led_c_1), .B(n45), .Z(led_7__N_32[1])) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(22[11] 24[5])
    defparam i106_2_lut.init = 16'h9999;
    LUT4 i112_2_lut (.A(n45), .B(sys_rst_c), .Z(n235)) /* synthesis lut_function=(!(A (B))) */ ;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(18[8] 29[4])
    defparam i112_2_lut.init = 16'h7777;
    LUT4 i86_2_lut (.A(n25), .B(n45), .Z(counter_22__N_42[10])) /* synthesis lut_function=(A+!(B)) */ ;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(22[11] 24[5])
    defparam i86_2_lut.init = 16'hbbbb;
    LUT4 i85_2_lut (.A(n24), .B(n45), .Z(counter_22__N_42[11])) /* synthesis lut_function=(A+!(B)) */ ;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(22[11] 24[5])
    defparam i85_2_lut.init = 16'hbbbb;
    LUT4 i84_2_lut (.A(n20), .B(n45), .Z(counter_22__N_42[15])) /* synthesis lut_function=(A+!(B)) */ ;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(22[11] 24[5])
    defparam i84_2_lut.init = 16'hbbbb;
    LUT4 i22_4_lut (.A(n31_adj_2), .B(n44), .C(n40), .D(n32_adj_1), 
         .Z(n45)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(19[6:23])
    defparam i22_4_lut.init = 16'hfffe;
    LUT4 i8_2_lut (.A(counter[1]), .B(counter[2]), .Z(n31_adj_2)) /* synthesis lut_function=(A+(B)) */ ;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(19[6:23])
    defparam i8_2_lut.init = 16'heeee;
    LUT4 i21_4_lut (.A(counter[15]), .B(n42), .C(n36), .D(n24_adj_4), 
         .Z(n44)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(19[6:23])
    defparam i21_4_lut.init = 16'hfffe;
    LUT4 i17_4_lut (.A(counter[18]), .B(counter[6]), .C(counter[20]), 
         .D(counter[17]), .Z(n40)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(19[6:23])
    defparam i17_4_lut.init = 16'hfffe;
    LUT4 i83_2_lut (.A(n19), .B(n45), .Z(counter_22__N_42[16])) /* synthesis lut_function=(A+!(B)) */ ;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(22[11] 24[5])
    defparam i83_2_lut.init = 16'hbbbb;
    LUT4 i94_2_lut (.A(led_c_7), .B(n45), .Z(led_7__N_32[7])) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(22[11] 24[5])
    defparam i94_2_lut.init = 16'h9999;
    FD1S3IX counter__i0 (.D(n35), .CK(sys_clk_c), .CD(n235), .Q(counter[0])) /* synthesis lse_init_val=0 */ ;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(18[8] 29[4])
    defparam counter__i0.GSR = "ENABLED";
    VLO i1 (.Z(GND_net));
    LUT4 i102_2_lut (.A(led_c_3), .B(n45), .Z(led_7__N_32[3])) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(22[11] 24[5])
    defparam i102_2_lut.init = 16'h9999;
    LUT4 i104_2_lut (.A(led_c_2), .B(n45), .Z(led_7__N_32[2])) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(22[11] 24[5])
    defparam i104_2_lut.init = 16'h9999;
    LUT4 i108_2_lut (.A(led_c_0), .B(n45), .Z(led_7__N_32[0])) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(22[11] 24[5])
    defparam i108_2_lut.init = 16'h9999;
    FD1S3IX led_i1 (.D(led_7__N_32[0]), .CK(sys_clk_c), .CD(n234), .Q(led_c_0));   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(18[8] 29[4])
    defparam led_i1.GSR = "ENABLED";
    OB led_pad_6 (.I(led_c_6), .O(led[6]));   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(3[19:22])
    OB led_pad_5 (.I(led_c_5), .O(led[5]));   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(3[19:22])
    OB led_pad_4 (.I(led_c_4), .O(led[4]));   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(3[19:22])
    OB led_pad_3 (.I(led_c_3), .O(led[3]));   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(3[19:22])
    OB led_pad_2 (.I(led_c_2), .O(led[2]));   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(3[19:22])
    OB led_pad_1 (.I(led_c_1), .O(led[1]));   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(3[19:22])
    OB led_pad_0 (.I(led_c_0), .O(led[0]));   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(3[19:22])
    IB sys_clk_pad (.I(sys_clk), .O(sys_clk_c));   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(4[8:15])
    IB sys_rst_pad (.I(sys_rst), .O(sys_rst_c));   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(5[8:15])
    LUT4 i96_2_lut (.A(led_c_6), .B(n45), .Z(led_7__N_32[6])) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(22[11] 24[5])
    defparam i96_2_lut.init = 16'h9999;
    CCU2D sub_5_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(counter[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n247), .S1(n35));   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(23[14:30])
    defparam sub_5_add_2_1.INIT0 = 16'hF000;
    defparam sub_5_add_2_1.INIT1 = 16'h5555;
    defparam sub_5_add_2_1.INJECT1_0 = "NO";
    defparam sub_5_add_2_1.INJECT1_1 = "NO";
    LUT4 i5_2_lut (.A(counter[16]), .B(counter[19]), .Z(n28_adj_3)) /* synthesis lut_function=(A+(B)) */ ;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(19[6:23])
    defparam i5_2_lut.init = 16'heeee;
    LUT4 i15_4_lut (.A(counter[4]), .B(counter[8]), .C(counter[3]), .D(counter[12]), 
         .Z(n38)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(19[6:23])
    defparam i15_4_lut.init = 16'hfffe;
    LUT4 i98_2_lut (.A(led_c_5), .B(n45), .Z(led_7__N_32[5])) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(22[11] 24[5])
    defparam i98_2_lut.init = 16'h9999;
    LUT4 i100_2_lut (.A(led_c_4), .B(n45), .Z(led_7__N_32[4])) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(22[11] 24[5])
    defparam i100_2_lut.init = 16'h9999;
    TSALL TSALL_INST (.TSALL(GND_net));
    CCU2D sub_5_add_2_23 (.A0(counter[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n257), .S0(n14), .S1(n13));   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(23[14:30])
    defparam sub_5_add_2_23.INIT0 = 16'h5555;
    defparam sub_5_add_2_23.INIT1 = 16'h5555;
    defparam sub_5_add_2_23.INJECT1_0 = "NO";
    defparam sub_5_add_2_23.INJECT1_1 = "NO";
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    CCU2D sub_5_add_2_21 (.A0(counter[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n256), .COUT(n257), .S0(n16), .S1(n15));   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(23[14:30])
    defparam sub_5_add_2_21.INIT0 = 16'h5555;
    defparam sub_5_add_2_21.INIT1 = 16'h5555;
    defparam sub_5_add_2_21.INJECT1_0 = "NO";
    defparam sub_5_add_2_21.INJECT1_1 = "NO";
    CCU2D sub_5_add_2_19 (.A0(counter[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n255), .COUT(n256), .S0(n18), .S1(n17));   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(23[14:30])
    defparam sub_5_add_2_19.INIT0 = 16'h5555;
    defparam sub_5_add_2_19.INIT1 = 16'h5555;
    defparam sub_5_add_2_19.INJECT1_0 = "NO";
    defparam sub_5_add_2_19.INJECT1_1 = "NO";
    GSR GSR_INST (.GSR(VCC_net));
    CCU2D sub_5_add_2_17 (.A0(counter[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n254), .COUT(n255), .S0(n20), .S1(n19));   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(23[14:30])
    defparam sub_5_add_2_17.INIT0 = 16'h5555;
    defparam sub_5_add_2_17.INIT1 = 16'h5555;
    defparam sub_5_add_2_17.INJECT1_0 = "NO";
    defparam sub_5_add_2_17.INJECT1_1 = "NO";
    FD1S3IX led_i3 (.D(led_7__N_32[2]), .CK(sys_clk_c), .CD(n234), .Q(led_c_2));   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(18[8] 29[4])
    defparam led_i3.GSR = "ENABLED";
    FD1S3JX led_i4 (.D(led_7__N_32[3]), .CK(sys_clk_c), .PD(n234), .Q(led_c_3));   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(18[8] 29[4])
    defparam led_i4.GSR = "ENABLED";
    FD1S3IX led_i5 (.D(led_7__N_32[4]), .CK(sys_clk_c), .CD(n234), .Q(led_c_4));   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(18[8] 29[4])
    defparam led_i5.GSR = "ENABLED";
    FD1S3JX led_i6 (.D(led_7__N_32[5]), .CK(sys_clk_c), .PD(n234), .Q(led_c_5));   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(18[8] 29[4])
    defparam led_i6.GSR = "ENABLED";
    FD1S3IX led_i7 (.D(led_7__N_32[6]), .CK(sys_clk_c), .CD(n234), .Q(led_c_6));   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(18[8] 29[4])
    defparam led_i7.GSR = "ENABLED";
    FD1S3JX led_i8 (.D(led_7__N_32[7]), .CK(sys_clk_c), .PD(n234), .Q(led_c_7));   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(18[8] 29[4])
    defparam led_i8.GSR = "ENABLED";
    FD1S3IX counter__i1 (.D(n34), .CK(sys_clk_c), .CD(n235), .Q(counter[1])) /* synthesis lse_init_val=0 */ ;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(18[8] 29[4])
    defparam counter__i1.GSR = "ENABLED";
    FD1S3IX counter__i2 (.D(n33), .CK(sys_clk_c), .CD(n235), .Q(counter[2])) /* synthesis lse_init_val=0 */ ;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(18[8] 29[4])
    defparam counter__i2.GSR = "ENABLED";
    FD1S3IX counter__i3 (.D(n32), .CK(sys_clk_c), .CD(n235), .Q(counter[3])) /* synthesis lse_init_val=0 */ ;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(18[8] 29[4])
    defparam counter__i3.GSR = "ENABLED";
    FD1S3IX counter__i4 (.D(n31), .CK(sys_clk_c), .CD(n235), .Q(counter[4])) /* synthesis lse_init_val=0 */ ;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(18[8] 29[4])
    defparam counter__i4.GSR = "ENABLED";
    FD1S3IX counter__i5 (.D(n30), .CK(sys_clk_c), .CD(n235), .Q(counter[5])) /* synthesis lse_init_val=0 */ ;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(18[8] 29[4])
    defparam counter__i5.GSR = "ENABLED";
    FD1S3IX counter__i6 (.D(n29), .CK(sys_clk_c), .CD(n235), .Q(counter[6])) /* synthesis lse_init_val=0 */ ;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(18[8] 29[4])
    defparam counter__i6.GSR = "ENABLED";
    FD1S3IX counter__i7 (.D(counter_22__N_42[7]), .CK(sys_clk_c), .CD(n234), 
            .Q(counter[7])) /* synthesis lse_init_val=0 */ ;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(18[8] 29[4])
    defparam counter__i7.GSR = "ENABLED";
    FD1S3IX counter__i8 (.D(counter_22__N_42[8]), .CK(sys_clk_c), .CD(n234), 
            .Q(counter[8])) /* synthesis lse_init_val=0 */ ;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(18[8] 29[4])
    defparam counter__i8.GSR = "ENABLED";
    FD1S3IX counter__i9 (.D(n26), .CK(sys_clk_c), .CD(n235), .Q(counter[9])) /* synthesis lse_init_val=0 */ ;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(18[8] 29[4])
    defparam counter__i9.GSR = "ENABLED";
    FD1S3IX counter__i10 (.D(counter_22__N_42[10]), .CK(sys_clk_c), .CD(n234), 
            .Q(counter[10])) /* synthesis lse_init_val=0 */ ;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(18[8] 29[4])
    defparam counter__i10.GSR = "ENABLED";
    FD1S3IX counter__i11 (.D(counter_22__N_42[11]), .CK(sys_clk_c), .CD(n234), 
            .Q(counter[11])) /* synthesis lse_init_val=0 */ ;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(18[8] 29[4])
    defparam counter__i11.GSR = "ENABLED";
    FD1S3IX counter__i12 (.D(n23), .CK(sys_clk_c), .CD(n235), .Q(counter[12])) /* synthesis lse_init_val=0 */ ;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(18[8] 29[4])
    defparam counter__i12.GSR = "ENABLED";
    FD1S3IX counter__i13 (.D(n22), .CK(sys_clk_c), .CD(n235), .Q(counter[13])) /* synthesis lse_init_val=0 */ ;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(18[8] 29[4])
    defparam counter__i13.GSR = "ENABLED";
    FD1S3IX counter__i14 (.D(n21), .CK(sys_clk_c), .CD(n235), .Q(counter[14])) /* synthesis lse_init_val=0 */ ;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(18[8] 29[4])
    defparam counter__i14.GSR = "ENABLED";
    FD1S3IX counter__i15 (.D(counter_22__N_42[15]), .CK(sys_clk_c), .CD(n234), 
            .Q(counter[15])) /* synthesis lse_init_val=0 */ ;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(18[8] 29[4])
    defparam counter__i15.GSR = "ENABLED";
    FD1S3IX counter__i16 (.D(counter_22__N_42[16]), .CK(sys_clk_c), .CD(n234), 
            .Q(counter[16])) /* synthesis lse_init_val=0 */ ;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(18[8] 29[4])
    defparam counter__i16.GSR = "ENABLED";
    FD1S3IX counter__i17 (.D(counter_22__N_42[17]), .CK(sys_clk_c), .CD(n234), 
            .Q(counter[17])) /* synthesis lse_init_val=0 */ ;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(18[8] 29[4])
    defparam counter__i17.GSR = "ENABLED";
    FD1S3IX counter__i18 (.D(n17), .CK(sys_clk_c), .CD(n235), .Q(counter[18])) /* synthesis lse_init_val=0 */ ;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(18[8] 29[4])
    defparam counter__i18.GSR = "ENABLED";
    FD1S3IX counter__i19 (.D(counter_22__N_42[19]), .CK(sys_clk_c), .CD(n234), 
            .Q(counter[19])) /* synthesis lse_init_val=0 */ ;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(18[8] 29[4])
    defparam counter__i19.GSR = "ENABLED";
    FD1S3IX counter__i20 (.D(counter_22__N_42[20]), .CK(sys_clk_c), .CD(n234), 
            .Q(counter[20])) /* synthesis lse_init_val=0 */ ;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(18[8] 29[4])
    defparam counter__i20.GSR = "ENABLED";
    FD1S3IX counter__i21 (.D(n14), .CK(sys_clk_c), .CD(n235), .Q(counter[21])) /* synthesis lse_init_val=0 */ ;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(18[8] 29[4])
    defparam counter__i21.GSR = "ENABLED";
    FD1S3IX counter__i22 (.D(counter_22__N_42[22]), .CK(sys_clk_c), .CD(n234), 
            .Q(counter[22])) /* synthesis lse_init_val=0 */ ;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(18[8] 29[4])
    defparam counter__i22.GSR = "ENABLED";
    CCU2D sub_5_add_2_15 (.A0(counter[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n253), .COUT(n254), .S0(n22), .S1(n21));   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(23[14:30])
    defparam sub_5_add_2_15.INIT0 = 16'h5555;
    defparam sub_5_add_2_15.INIT1 = 16'h5555;
    defparam sub_5_add_2_15.INJECT1_0 = "NO";
    defparam sub_5_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_5_add_2_13 (.A0(counter[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n252), .COUT(n253), .S0(n24), .S1(n23));   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(23[14:30])
    defparam sub_5_add_2_13.INIT0 = 16'h5555;
    defparam sub_5_add_2_13.INIT1 = 16'h5555;
    defparam sub_5_add_2_13.INJECT1_0 = "NO";
    defparam sub_5_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_5_add_2_11 (.A0(counter[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n251), .COUT(n252), .S0(n26), .S1(n25));   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(23[14:30])
    defparam sub_5_add_2_11.INIT0 = 16'h5555;
    defparam sub_5_add_2_11.INIT1 = 16'h5555;
    defparam sub_5_add_2_11.INJECT1_0 = "NO";
    defparam sub_5_add_2_11.INJECT1_1 = "NO";
    LUT4 i92_2_lut (.A(n13), .B(n45), .Z(counter_22__N_42[22])) /* synthesis lut_function=(A+!(B)) */ ;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(22[11] 24[5])
    defparam i92_2_lut.init = 16'hbbbb;
    CCU2D sub_5_add_2_9 (.A0(counter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n250), .COUT(n251), .S0(n28), .S1(n27));   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(23[14:30])
    defparam sub_5_add_2_9.INIT0 = 16'h5555;
    defparam sub_5_add_2_9.INIT1 = 16'h5555;
    defparam sub_5_add_2_9.INJECT1_0 = "NO";
    defparam sub_5_add_2_9.INJECT1_1 = "NO";
    LUT4 i9_2_lut (.A(counter[11]), .B(counter[10]), .Z(n32_adj_1)) /* synthesis lut_function=(A+(B)) */ ;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(19[6:23])
    defparam i9_2_lut.init = 16'heeee;
    CCU2D sub_5_add_2_7 (.A0(counter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n249), .COUT(n250), .S0(n30), .S1(n29));   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(23[14:30])
    defparam sub_5_add_2_7.INIT0 = 16'h5555;
    defparam sub_5_add_2_7.INIT1 = 16'h5555;
    defparam sub_5_add_2_7.INJECT1_0 = "NO";
    defparam sub_5_add_2_7.INJECT1_1 = "NO";
    LUT4 i89_2_lut (.A(n18), .B(n45), .Z(counter_22__N_42[17])) /* synthesis lut_function=(A+!(B)) */ ;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(22[11] 24[5])
    defparam i89_2_lut.init = 16'hbbbb;
    CCU2D sub_5_add_2_5 (.A0(counter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n248), .COUT(n249), .S0(n32), .S1(n31));   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(23[14:30])
    defparam sub_5_add_2_5.INIT0 = 16'h5555;
    defparam sub_5_add_2_5.INIT1 = 16'h5555;
    defparam sub_5_add_2_5.INJECT1_0 = "NO";
    defparam sub_5_add_2_5.INJECT1_1 = "NO";
    LUT4 i90_2_lut (.A(n16), .B(n45), .Z(counter_22__N_42[19])) /* synthesis lut_function=(A+!(B)) */ ;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(22[11] 24[5])
    defparam i90_2_lut.init = 16'hbbbb;
    CCU2D sub_5_add_2_3 (.A0(counter[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n247), .COUT(n248), .S0(n34), .S1(n33));   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(23[14:30])
    defparam sub_5_add_2_3.INIT0 = 16'h5555;
    defparam sub_5_add_2_3.INIT1 = 16'h5555;
    defparam sub_5_add_2_3.INJECT1_0 = "NO";
    defparam sub_5_add_2_3.INJECT1_1 = "NO";
    LUT4 i1_2_lut (.A(counter[13]), .B(counter[22]), .Z(n24_adj_4)) /* synthesis lut_function=(A+(B)) */ ;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(19[6:23])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i91_2_lut (.A(n15), .B(n45), .Z(counter_22__N_42[20])) /* synthesis lut_function=(A+!(B)) */ ;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(22[11] 24[5])
    defparam i91_2_lut.init = 16'hbbbb;
    LUT4 i19_4_lut (.A(counter[5]), .B(n38), .C(n28_adj_3), .D(counter[0]), 
         .Z(n42)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/asus/documents/google drive - udea.edu.co/fabian_documentos/proyectos/tutorialesfpga/migenblinkled/my_design.v(19[6:23])
    defparam i19_4_lut.init = 16'hfffe;
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

