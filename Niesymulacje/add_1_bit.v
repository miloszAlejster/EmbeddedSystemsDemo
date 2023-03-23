module add_1_bit (
	input cin, a, b, 
	output s, cout);
	
	assign s = a ^ b ^ cin;
	assign cout = a & b | (a ^ b) & cin; 
endmodule