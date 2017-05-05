module Booth_Multiplier(clock,a,b,product);
input [7:0]a,b;
input clock;
output reg[15:0]product;
reg [15:0]answer;
reg [7:0]a1,b1;

integer i;
integer operate;

initial
	begin
		product = 16'b0;
		answer = 16'b0;
	end

always @ (*)
	begin
		if(a[7]==1'b1)
			a1 = ~a + 1;
		else
			begin
				a1 = a;
				b1 = b;
			end
	end
	
always @ (posedge clock)
	begin	
		product = 16'b0;
		for(i=1;i<7;i=i+1)
			begin
				if(i==1)
					operate = b1[0]-b1[1]-b1[1];
				else
					operate = b1[i-1]+b1[i+1]-b1[0]-b1[0];
				
				case(operate)
					1:
						begin
							answer = a1;
							answer = answer << (i-1);
							product = product + answer;
						end
					2:
						begin
							answer = a1 << 1;
							answer = answer << (i-1);
							product = product + answer;
						end
					-1:
						begin
							answer = ~a1 + 1;
							answer = answer << (i-1);
							product = product + answer;
						end
					-2:
						begin
							answer = a1 << 1;
							answer = ~answer + 1;
							answer = answer << (i-1);
							product = product + answer;
						end
				endcase
			end
		if(a[7]==1'b1)
			product = ~product + 1;
	end
endmodule
