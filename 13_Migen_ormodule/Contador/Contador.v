/* Machine-generated using Migen */
module top(
        input a,
        input b,
        output x
);


// synthesis translate_off
reg dummy_s;
initial dummy_s <= 1'd0;
// synthesis translate_on

assign x = ((~a) | (~b));

endmodule