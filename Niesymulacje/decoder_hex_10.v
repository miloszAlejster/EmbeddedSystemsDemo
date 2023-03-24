module decoder_hex_10 (input [3:0]x, output reg [6:0]h);
	always @(x)
		begin
			case (x)
				0: h = 7'b1000000;
				1: h = 7'b1111001;
				2: h = 7'b0100100;
				3: h = 7'b0110000;
				4: h = 7'b0011001; 
				5: h = 7'b0010010;
				6: h = 7'b0000010;
				7: h = 7'b1111000;
				8: h = 7'b0000000;
				9: h = 7'b0010000;
				default: 
					h = 7'b0111111;
			endcase
		end
endmodule

         