//////////////////////////////////////////////////////////////////////////////
// Author    : I.Gogul
// Algorithm : SHIFT & ADD MULTIPLICATION
// 
// Procedure:
// * A m-bit multiplicand and n-bit multiplier is the input. 
// * (m+n) bit product is the output.
// 1. Load Multiplicand and Multiplier into registers M and Q, respectively.
// 2. Clear register A and set loop count to n.
// 3. Repeat
//		* If Q[0]==1, then A = A+M;
// 		* Right shift register pair A : Q by one bit;
//		* COUNT = COUNT - 1;
//    until COUNT = 0;
//
//////////////////////////////////////////////////////////////////////////////

module Multiply(y,a,b);
input [7:0]a,b;
output reg [15:0]y;
reg [7:0]A, M, Q;
reg [15:0]K;

integer i;
integer count;


always @(*)
	begin
		M = a;
		Q = b;
		A = 0;
		K = {A,Q};
		count = 1;
		for (i=1;i<=8;i=i+1)
			begin
				if(Q[0]==1'b1)
					A = A + M;
				K = {A,Q} >> 1;
				A = K[15:8];
				Q = K[7:0];
				K = {A,Q};
				count = count + 1;
			end
		y = K;
	end
endmodule
