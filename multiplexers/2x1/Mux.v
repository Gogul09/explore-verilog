///////////////////////////////////////////
/// Design  : 2x1 Multiplexer
/// Author	: I.Gogul
/// College	: Anna University, MIT campus
///////////////////////////////////////////

module Mux(out,in1,in2,select);
input in1,in2,select;
output out;
wire s1,s2,selectbar;
not(selectbar,select);
and(s1,selectbar,in1);
and(s2,select,in2);
or(out,s1,s2);
endmodule
