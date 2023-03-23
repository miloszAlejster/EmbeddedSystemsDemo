module binary_BCD_4_bits (
	input [3:0] SW,
	output [6:0] HEX0,
	output [6:0] HEX1,
	output [3:0] LEDR);
	
	wire in_grater_than_9;
	wire [3:0] in_minus_10;
	wire [3:0] in_0;
	wire [3:0] in_1;
	
	assign LEDR = SW;
	assign in_1 = in_greater_than_9;
	
	compare_4bit compare (SW, 9, in_greater_than_9);
	subtract_4bit sub (SW, 10, in_minus_10);
	mux_2_1_4_bits mux (in_minus_10, SW, in_greater_than_9, in_0);
	decoder_hex_10 out_0 (in_0, HEX0);
	decoder_hex_10 out_1 (in_1, HEX1);
endmodule