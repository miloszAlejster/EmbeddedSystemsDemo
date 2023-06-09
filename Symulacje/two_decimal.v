module two_decimal(
	input [3:0]a1In, 
	input [3:0]a0In, 
	output reg errora1, 
	output reg errora0, 
	output [6:0]a1Out, 
	output [6:0]a0Out);
	
	wire [6:0]a1;
	wire [6:0]a0;

	decoder_hex_10 d1(.x(a1In), .h(a1));
	decoder_hex_10 d0(.x(a0In), .h(a0));
	
	assign a1Out = a1;
	assign a0Out = a0;
	
	always @(*) begin
	
		if (a1 == 7'b1000000)
			errora1 = 1'b1;
		else
			errora1 = 1'b0;

		if (a0 == 7'b1000000)
			errora0 = 1'b1;
		else
			errora0 = 1'b0;
	end
endmodule