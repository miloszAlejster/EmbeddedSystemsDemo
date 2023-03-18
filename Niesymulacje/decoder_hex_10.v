module decoder_hex_10 (input [3:0]x, output reg [6:0]h);
	always @(x)
		begin
			case (x)
				0: h = 7'b0111111;
				1: h = 7'b0000110;
				2: h = 7'b1011011;
				3: h = 7'b1001111;
				4: h = 7'b1100110;
				5: h = 7'b1101101;
				6: h = 7'b1111101;
				7: h = 7'b0000111;
				8: h = 7'b1111111;
				9: h = 7'b1101111;
				default: 
					h = 7'b1000000;
			endcase
		end
endmodule

         