// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.11.0.396.4
// Netlist written on Fri Jul 30 23:49:46 2021
//
// Verilog Description of module top
//

module top (a, b, x) /* synthesis syn_module_defined=1 */ ;   // c:/users/asus/desktop/contador/contador.v(2[8:11])
    input a;   // c:/users/asus/desktop/contador/contador.v(3[15:16])
    input b;   // c:/users/asus/desktop/contador/contador.v(4[15:16])
    output x;   // c:/users/asus/desktop/contador/contador.v(5[16:17])
    
    
    wire a_c, b_c, x_c, VCC_net, GND_net;
    
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 i30_2_lut (.A(a_c), .B(b_c), .Z(x_c)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i30_2_lut.init = 16'h7777;
    VLO i31 (.Z(GND_net));
    OB x_pad (.I(x_c), .O(x));   // c:/users/asus/desktop/contador/contador.v(5[16:17])
    IB a_pad (.I(a), .O(a_c));   // c:/users/asus/desktop/contador/contador.v(3[15:16])
    IB b_pad (.I(b), .O(b_c));   // c:/users/asus/desktop/contador/contador.v(4[15:16])
    GSR GSR_INST (.GSR(VCC_net));
    VHI i32 (.Z(VCC_net));
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

