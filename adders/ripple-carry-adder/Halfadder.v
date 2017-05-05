///////////////////////////////////////////
/// Design  : Half Adder
/// Author	: I.Gogul
/// College	: Anna University, MIT campus
///////////////////////////////////////////

module Halfadder(a,b,sum,cout);
input a,b;
output sum,cout;
xor x1(sum,a,b);
and a1(cout,a,b);
endmodule
