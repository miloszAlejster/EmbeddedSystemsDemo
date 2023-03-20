module adder_BCD_2_digits(
	input [3:0]X, 
	input [3:0]Y,
	input cin,
	output [6:0]S0,
	output [6:0]S1,
	output reg error);
	// wires
	wire [6:0]S0Out;
	wire [6:0]S1Out;
	wire adderCout;
	wire [3:0]adderSum;
	wire [6:0]xDecNumber;
	wire [6:0]yDecNumber;
	// get numbers and validate them
	decoder_hex_10 dec_10_x (.x(X), .h(xDecNumber));
	decoder_hex_10 dec_10_y (.x(Y), .h(yDecNumber));
	add_4_bit adder (.a(X), .b(Y), .cin(cin),	.s(adderSum), .cout(adderCout));
	decoder_hex_16 decoder (.x(adderSum), .h0(S0Out), .h1(S1Out));
	// error
	always @(*) begin
		if (xDecNumber == 7'b1000000 || yDecNumber == 7'b1000000)
			begin
				error = 1'b1;
			end
		else
			begin
				error = 1'b0;	
			end
	end
	// output
	assign S0 = (error==1'b0) ? S0Out : 7'b1000000;
	assign S1 = (error==1'b0) ? S1Out : 7'b1000000;
endmodule
