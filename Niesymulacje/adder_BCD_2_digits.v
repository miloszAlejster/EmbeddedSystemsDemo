module adder_BCD_2_digits(
	input [8:0]SW,
	output [9:0]LEDR,
	output [6:0]HEX0,
	output [6:0]HEX1,
	output [6:0]HEX3,
	output [6:0]HEX5);
	// input
	decoder_hex_10 input_1 (SW[3:0], HEX3);
	decoder_hex_10 input_2 (SW[7:4], HEX5);
	assign LEDR[7:0] = SW[7:0];
	// wires
	wire in_grater_than_9;
	wire [3:0] in_minus_10;
	wire [3:0] in_0;
	wire [3:0] in_1;
	wire [3:0] sum;
	// addition
	assign sum = SW[3:0] + SW[7:4] + SW[8];
	assign in_1 = in_greater_than_9;
	// output
	compare_4bit compare (sum, 9, in_greater_than_9);
	subtract_4bit sub (sum, 10, in_minus_10);
	mux_2_1_4_bits mux (in_minus_10, sum, in_greater_than_9, in_0);
	decoder_hex_10 out_1 (in_0, HEX0);
	decoder_hex_10 out_2 (in_1, HEX1);
	// error
	reg error;
	assign LEDR[9] = error;
	always @(*)
		if(HEX3 == 7'b0111111 || HEX5 == 7'b0111111)
			error = 1'b1;
		else
			error = 1'b0;
endmodule