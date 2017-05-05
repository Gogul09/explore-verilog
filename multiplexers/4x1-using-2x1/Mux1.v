///////////////////////////////////////////
/// Design  : 2x1 Multiplexer
/// Author	: I.Gogul
/// College	: Anna University, MIT campus
///////////////////////////////////////////

module Mux1(y,s,a,b);
input a,b,s;
output y;
assign y = ((~s)&a) | (s&b);
endmodule
