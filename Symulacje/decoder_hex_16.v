module decoder_hex_16 (
	input[3:0]x, 
	output reg [0:6]h0, 
	output reg [0:6]h1);
	always @(x)
		begin
			case (x)
				0: 
					begin
					h1 = 7'b0111111;
					h0 = 7'b0111111;
					end
				1: 
					begin
					h1 = 7'b0111111;
					h0 = 7'b0000110;
					end
				2: 
					begin
					h1 = 7'b0111111;
					h0 = 7'b1011011;
					end
				3: 
					begin
					h1 = 7'b0111111;
					h0 = 7'b1001111;
					end
				4: 
					begin
					h1 = 7'b0111111;
					h0 = 7'b1100110;
					end
				5: 
					begin
					h1 = 7'b0111111;
					h0 = 7'b1101101;
					end
				6: 
					begin
					h1 = 7'b0111111;
					h0 = 7'b1111101;
					end
				7: 
					begin
					h1 = 7'b0111111;
					h0 = 7'b0000111;
					end
				8: 
					begin
					h1 = 7'b0111111;
					h0 = 7'b1111111;
					end
				9: 
					begin
					h1 = 7'b0111111;
					h0 = 7'b1101111;
					end
				10: 
					begin
					h1 = 7'b0111111;
					h0 = 7'b0111111;
					end
				11: 
					begin
					h1 = 7'b0000110;
					h0 = 7'b0111111;
					end
				12: 
					begin
					h1 = 7'b0000110;
					h0 = 7'b1011011;
					end
				13: 
					begin
					h1 = 7'b0000110;
					h0 = 7'b1001111;
					end
				14: 
					begin
					h1 = 7'b0000110;
					h0 = 7'b1100110;
					end
				15: 
					begin
					h1 = 7'b0000110;
					h0 = 7'b1101101;
					end
				default: 
					begin
					h1 = 7'b1000000;
					h0 = 7'b1000000;
					end
			endcase
		end
endmodule