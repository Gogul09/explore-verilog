///////////////////////////////////////////
/// Design  : Ripple Carry Adder - 4bit
/// Author	: I.Gogul
/// College	: Anna University, MIT campus
///////////////////////////////////////////

module Rca(a,b,cin,sum,cout);
input [3:0]a,b;
input cin;
output [3:0]sum;
output cout;
wire c1,c2,c3;
Fulladder f1(a[0],b[0],cin,sum[0],c1);
Fulladder f2(a[1],b[1],c1,sum[1],c2);
Fulladder f3(a[2],b[2],c2,sum[2],c3);
Fulladder f4(a[3],b[3],c3,sum[3],cout);
endmodule
