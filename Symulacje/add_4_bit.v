module add_4_bit (
	input [3:0] a, b, 
	input cin, 
	output [3:0] s, 
	output cout);
	
	wire [2:0] t;
	add_1_bit Add1 (.cin(cin), .a(a[0]), .b(b[0]), .s(s[0]), .cout(t[0]));
	add_1_bit Add2 (.cin(t[0]), .a(a[1]), .b(b[1]), .s(s[1]), .cout(t[1]));
	add_1_bit Add3 (.cin(t[1]), .a(a[2]), .b(b[2]), .s(s[2]), .cout(t[2]));
	add_1_bit Add4 (.cin(t[2]), .a(a[3]), .b(b[3]), .s(s[3]), .cout(cout));
endmodule