///////////////////////////////////////////
/// Design  : JK Flipflop - Behavioral
/// Author	: I.Gogul
/// College	: Anna University, MIT campus
///////////////////////////////////////////

module JKflipflop(clock,reset,j,k,q,qbar);
input clock,reset,j,k;
output reg q,qbar;
initial 
	begin
		q = 1'b0;
		qbar = 1'b1;
	end
always @ (posedge clock)
	begin
		if (reset)
			begin
				q = 1'b0;
				qbar = 1'b1;
			end
		else 
			begin
				case({j,k})
					2'b00:
						begin
							q = q;
							qbar = qbar;
						end
					2'b01:
						begin
							q = 1'b0;
							qbar = 1'b1;
						end
					2'b10:
						begin
							q = 1'b1;
							qbar = 1'b0;
						end
					2'b11:
						begin
							q = qbar;
							qbar = q;
						end
				endcase
			end
	end
endmodule
