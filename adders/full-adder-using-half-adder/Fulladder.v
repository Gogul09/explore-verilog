///////////////////////////////////////////
/// Design  : Full Adder using Half Adders
/// Author	: I.Gogul
/// College	: Anna University, MIT campus
///////////////////////////////////////////

module Fulladder(a,b,cin,sum,cout);
input a,b,cin;
output sum,cout;
wire s1,c1,c2;
Halfadder h1(a,b,s1,c1);
Halfadder h2(s1,cin,sum,c2);
or o1(cout,c1,c2);
endmodule
