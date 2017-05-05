///////////////////////////////////////////
/// Design  : Parallel In Parallel Out(PIPO)
/// Author	: I.Gogul
/// College	: Anna University, MIT campus
///////////////////////////////////////////

module ShiftPipo(clock,in,out);
input clock;
input [3:0]in;
output reg[3:0]out;
always @ (posedge clock)
	begin
		out = in;
	end
endmodule
