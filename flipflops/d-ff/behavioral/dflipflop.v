///////////////////////////////////////////
/// Design  : D-Flipflop (Behavioral)
/// Author	: I.Gogul
/// College	: Anna University, MIT campus
///////////////////////////////////////////

module dflipflop(clock,reset,d,q);
input clock, reset, d;
output reg q;
always @ (posedge clock)
	begin
		if(reset)
			q = 0;
		else 
			q = d;
	end
endmodule
