module two_decimal(
	input [7:0]SW, 
	output reg [9:0]LEDR, 
	output [6:0]HEX1, 
	output [6:0]HEX0);
	
	wire [6:0]number1;
	wire [6:0]number0;

	decoder_hex_10 d1(.x(SW[7:4]), .h(number1));
	decoder_hex_10 d0(.x(SW[3:0]), .h(number0));
	
	assign HEX1 = number1;
	assign HEX0 = number0;
	
	always @(*) begin
		LEDR[7:0] = SW[7:0];
		if (number1 == 7'b1000000)
			LEDR[9] = 1'b1;
		else
			LEDR[9] = 1'b0;

		if (number0 == 7'b1000000)
			LEDR[8] = 1'b1;
		else
			LEDR[8] = 1'b0;
	end
endmodule