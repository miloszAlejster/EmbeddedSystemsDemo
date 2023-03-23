module mux_2_1_4_bits (input [3:0] A, input [3:0] B, input Key, output [3:0] Out);
	mux_2_1_1_bit M1 (.In({A[0], B[0]}), .Key(Key), .Out(Out[0]));
	mux_2_1_1_bit M2 (.In({A[1], B[1]}), .Key(Key), .Out(Out[1]));
	mux_2_1_1_bit M3 (.In({A[2], B[2]}), .Key(Key), .Out(Out[2]));
	mux_2_1_1_bit M4 (.In({A[3], B[3]}), .Key(Key), .Out(Out[3]));
endmodule