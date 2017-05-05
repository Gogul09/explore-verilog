///////////////////////////////////////////
/// Design  : SR Flipflop - Behavioral
/// Author	: I.Gogul
/// College	: Anna University, MIT campus
///////////////////////////////////////////

module SRflipflop(clock,reset,s,r,q,qbar);
input clock,reset,s,r;
output reg q,qbar;
initial 
	begin
		q = 1'b1;
		qbar = 1'b0;
	end
always @ (posedge clock)
	begin
		if(reset)
			begin
				q = 0;
				qbar = 1'b1;
			end
		else	
			begin	
				case({s,r})
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
							q = 1'bx; 
							qbar = 1'bx;
						end
				endcase
			end
	end
endmodule
