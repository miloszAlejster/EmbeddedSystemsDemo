module decoder_hex_16(
	input [3:0] x,
	output reg [0:6] h);
	
	always @(*) begin
		case(x)
			4'h0: h = 7'b0000001;
			4'h1: h = 7'b1001111;
			4'h2: h = 7'b0010010;
			4'h3: h = 7'b0000110;
			4'h4: h = 7'b1001100;
			4'h5: h = 7'b0100100;
			4'h6: h = 7'b0100000;
			4'h7: h = 7'b0001111;
			4'h8: h = 7'b0000000;
			4'h9: h = 7'b0000100;
			4'hA: h = 7'b0001000;
			4'hB: h = 7'b1100000;
			4'hC: h = 7'b0110001;
			4'hD: h = 7'b1000010;
			4'hE: h = 7'b0110000;
			4'hF: h = 7'b0111000;
		endcase
	end
	
endmodule