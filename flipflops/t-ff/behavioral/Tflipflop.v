///////////////////////////////////////////
/// Design  : T Flipflop - Behavioral
/// Author	: I.Gogul
/// College	: Anna University, MIT campus
///////////////////////////////////////////

module Tflipflop(clock,reset,t,q);
input clock,reset,t;
output reg q;
always @ (posedge clock)
	begin
		if(reset)
			q = 0;
		else 
			q = ~t;
	end
endmodule
