module compare_4bit(
	input [3:0] A,
	input [3:0] B,
	output Out);
	
	assign Out = A > B;
endmodule