module binary_BCD_4_bits(
	input[3:0]SW, 
	output reg [0:6]HEX0, 
	output reg [0:6]HEX1);
	
	always @(*)
		begin
			case (SW)
				0: 
					begin
					HEX1 = 7'b0111111;
					HEX0 = 7'b0111111;
					end
				1: 
					begin
					HEX1 = 7'b0111111;
					HEX0 = 7'b0000110;
					end
				2: 
					begin
					HEX1 = 7'b0111111;
					HEX0 = 7'b1011011;
					end
				3: 
					begin
					HEX1 = 7'b0111111;
					HEX0 = 7'b1001111;
					end
				4: 
					begin
					HEX1 = 7'b0111111;
					HEX0 = 7'b1100110;
					end
				5: 
					begin
					HEX1 = 7'b0111111;
					HEX0 = 7'b1101101;
					end
				6: 
					begin
					HEX1 = 7'b0111111;
					HEX0 = 7'b1111101;
					end
				7: 
					begin
					HEX1 = 7'b0111111;
					HEX0 = 7'b0000111;
					end
				8: 
					begin
					HEX1 = 7'b0111111;
					HEX0 = 7'b1111111;
					end
				9: 
					begin
					HEX1 = 7'b0111111;
					HEX0 = 7'b1101111;
					end
				10: 
					begin
					HEX1 = 7'b0000110;
					HEX0 = 7'b0111111;
					end
				11: 
					begin
					HEX1 = 7'b0000110;
					HEX0 = 7'b0000110;
					end
				12: 
					begin
					HEX1 = 7'b0000110;
					HEX0 = 7'b1011011;
					end
				13: 
					begin
					HEX1 = 7'b0000110;
					HEX0 = 7'b1001111;
					end
				14: 
					begin
					HEX1 = 7'b0000110;
					HEX0 = 7'b1100110;
					end
				15: 
					begin
					HEX1 = 7'b0000110;
					HEX0 = 7'b1101101;
					end
				default: 
					begin
					HEX1 = 7'b1000000;
					HEX0 = 7'b1000000;
					end
			endcase
		end
	
endmodule
