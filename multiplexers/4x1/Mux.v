///////////////////////////////////////////
/// Design  : 4x1 Multiplexer
/// Author	: I.Gogul
/// College	: Anna University, MIT campus
///////////////////////////////////////////

module Mux(y,s0,s1,in1,in2,in3,in4);
input in1,in2,in3,in4,s0,s1;
output y;
assign y = ((~s1)&(~s0)& in1) | ((~s1)&(s0)& in2) | ((s1)&(~s0)& in3) | ((s1)&(s0)& in4);
endmodule
