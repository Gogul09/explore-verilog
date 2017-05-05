module Division(q,r,a,b);
output reg[3:0]q,r;   
input [3:0]a,b;

reg[3:0] A;
reg[3:0] Q;
reg[3:0] M;
reg[7:0] K;

integer i;
integer count;

always @ (a or b)
	begin
		A = 4'b0000;
		count = 0;
		Q = a;
		M = b;
		K = {A,Q};
		for(i=0;i<4;i=i+1)
			begin
				if(A[3] == 1)
					begin
						K = K<<1;
						A = K[7:4] + M;
						Q = K[3:0];
						if(A[3] == 1) Q[0] = 0;
						else Q[0] = 1;
					end	
				else 
					begin
						K = K<<1;
						A = K[7:4] - M;
						Q = K[3:0];
						if(A[3] == 1) Q[0] = 0;
						else Q[0] = 1;
					end
				count = count + 1;
				K = {A,Q};
			end
		if(count == 4)
			begin
				if(A[3] == 1)
					A = K[7:4] + M;
			end
		if((a==3'b000)|(b==3'b000))
			begin
				q = 0;
				r = 0;
			end
		else
			begin
				q = Q;
				r = A;
			end
	end
endmodule
