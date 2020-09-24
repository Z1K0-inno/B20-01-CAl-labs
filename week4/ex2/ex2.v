module ex2 
(
		input [1:0] KEY,
		output [9:0] LED,
		output [47:0] HEX
);
genvar j;
generate 
			for ( j=0; j<6; j=j+1)
			begin: gen2
					case(j)
					0: assign HEX[6]=~KEY[0],
								 HEX[7]=~KEY[0];
					1: assign HEX[11]=~KEY[0],
								 HEX[12]=~KEY[0],
								 HEX[14]=~KEY[0];
					2: assign HEX[22]=~KEY[0],
								 HEX[23]=~KEY[0];
					3: assign HEX[27]=~KEY[0],
								 HEX[28]=~KEY[0],
								 HEX[30]=~KEY[0];
					4: assign HEX[38]=~KEY[0],
								 HEX[39]=~KEY[0];
					5: assign HEX[44]=~KEY[0],
								 HEX[45]=~KEY[0],
								 HEX[47]=~KEY[0];
			endcase 
		end
	endgenerate 
	endmodule 