///////////////////////////////////////////
/// Design  : Full Adder
/// Author	: I.Gogul
/// College	: Anna University, MIT campus
///////////////////////////////////////////

module Fulladder(a,b,cin,sum,cout);
input a,b,cin;
output sum,cout;
wire c1,c2,c3;
xor x1(sum,a,b,cin);
and a1(c1,a,b);
and a2(c2,b,cin);
and a3(c3,a,cin);
or o1(cout,c1,c2,c3);
endmodule
