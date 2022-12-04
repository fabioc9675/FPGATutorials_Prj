// prueba de un circuito independiente


module crt_1(sw1, led1);
	
	input wire sw1;
	output wire led1;
	
	assign led1 = sw1;
	
endmodule