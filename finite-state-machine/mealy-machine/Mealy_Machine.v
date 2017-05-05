///////////////////////////////////////////
/// Design  : Mealy Machine to find 010
/// Author	: I.Gogul
/// College	: Anna University, MIT campus
///////////////////////////////////////////

module Mealy_Machine(clock,reset,x,y);
input clock,reset,x;
output reg y;
reg [1:0]state;

parameter S0 = 2'b00;
parameter S1 = 2'b01;
parameter S2 = 2'b10;

always @ (posedge clock)
	begin
		if(reset)
			state = S0;
		else 
			case (state)
				S0:
					if(x)
						begin
							state = S0;
							y = 0;
						end
					else
						begin
							state = S1;
							y = 0;
						end
				S1:
					if(x)
						begin
							state = S2;
							y = 0;
						end
					else
						begin
							state = S1;
							y = 0;
						end
				S2:
					if(x)
						begin
							state = S0;
							y = 0;
						end
					else
						begin
							state = S1;
							y = 1;
						end
							
			endcase
	end

endmodule
