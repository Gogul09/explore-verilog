////////////////////////////////////////////////
/// Design  : Sequence Detector to detect 1011
/// Author	: I.Gogul
/// College	: Anna University, MIT campus
///////////////////////////////////////////////

module Sequence_Detector(clock,reset,x,y);
input clock,reset,x;
output reg y;
reg [2:0]state;

parameter S0 = 3'b000;
parameter S1 = 3'b001;
parameter S2 = 3'b010;
parameter S3 = 3'b011;
parameter S4 = 3'b100;

always @ (posedge clock)
	begin
		if(reset)
			state = S0;
		else 
			case (state)
				S0:
					begin
						if(x)
							begin
								state = S1;
								y = 0;
							end
						else
							begin
								state = S0;
								y = 0;
							end
					end
				S1:
					begin
						if(x)
							begin
								state = S1;
								y = 0;
							end
						else
							begin
								state = S2;
								y = 0;
							end
					end
				S2:
					begin
						if(x)
							begin
								state = S3;
								y = 0;
							end
						else
							begin
								state = S0;
								y = 0;
							end
					end
				S3:
					begin
						if(x)
							begin
								state = S4;
								y = 1;
							end
						else
							begin
								state = S2;
								y = 0;
							end
					end
				S4:
					begin
						if(x)
							begin
								state = S1;
								y = 0;
							end
						else
							begin
								state = S2;
								y = 0;
							end
					end
			endcase
	end

endmodule
