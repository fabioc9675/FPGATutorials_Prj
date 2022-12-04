// prueba de un circuito independiente


module crt_2(sw2, led2);
	
	input wire sw2;
	output wire led2;
	
	assign led2 = ~sw2;
	
endmodule