////////////////////////////////////////////////////////
/// Design  : 4x1 Multiplexer using two 2x1 Multiplexer
/// Author	: I.Gogul
/// College	: Anna University, MIT campus
////////////////////////////////////////////////////////

module Mux(y,s1,s0,in1,in2,in3,in4);
input in1,in2,in3,in4,s1,s0;
output y;
wire t1,t2;
Mux1 m1(t1,s0,in1,in2);
Mux1 m2(t2,s0,in3,in4);
Mux1 m3(y,s1,t1,t2);
endmodule
