module adder_BCD_2_digits_b(
	input [3:0]A,
	input [3:0]B,
	input c0,
	output reg [3:0]S1,
	output reg [3:0]S0,
	output reg error);
	
	reg [4:0] T0;
	reg [3:0] Z0;
	reg [3:0] C1;
	always @(*) begin
		if(A > 9 || B > 9) begin
			error = 1;
		end else begin
			error = 0;
			T0 = A + B + c0;
			
			if(T0 > 9)begin
				Z0 = 10;
				C1 = 1;
			end else begin
				Z0 = 0;
				C1 = 0;
			end
			
			S0 = T0 - Z0;
			S1 = C1;
		end
	end
endmodule
