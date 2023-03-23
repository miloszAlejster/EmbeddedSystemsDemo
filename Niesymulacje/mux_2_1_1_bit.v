module mux_2_1_1_bit (input [1:0] In, input Key, output reg Out);
	always @(*)begin
		case(Key)
			1'b0: Out  = In[0];
			1'b1: Out  = In[1];
		endcase
	end
endmodule