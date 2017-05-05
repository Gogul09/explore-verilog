///////////////////////////////////////////
/// Design  : Serial In Serial Out (SISO)
/// Author	: I.Gogul
/// College	: Anna University, MIT campus
///////////////////////////////////////////

module ShiftSISO(clock,in,out);
input clock,in;
output reg[3:0]out;
always @ (posedge clock)
	begin
		out = {in,out[3:1]};
	end
endmodule
