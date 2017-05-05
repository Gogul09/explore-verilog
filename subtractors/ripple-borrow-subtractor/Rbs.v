////////////////////////////////////////////////
/// Design  : 8 - bit Ripple Borrow Subtractor
/// Author	: I.Gogul
/// College	: Anna University, MIT campus
///////////////////////////////////////////////

module Rbs(a,b,c,difference,borrow);
input [7:0]a,b;
input c;
output [7:0]difference;
output borrow;
wire b1,b2,b3,b4,b5,b6,b7;
Full_Subtractor fs1(a[0],b[0],c,difference[0],b1);
Full_Subtractor fs2(a[1],b[1],b1,difference[1],b2);
Full_Subtractor fs3(a[2],b[2],b2,difference[2],b3);
Full_Subtractor fs4(a[3],b[3],b3,difference[3],b4);
Full_Subtractor fs5(a[4],b[4],b4,difference[4],b5);
Full_Subtractor fs6(a[5],b[5],b5,difference[5],b6);
Full_Subtractor fs7(a[6],b[6],b6,difference[6],b7);
Full_Subtractor fs8(a[7],b[7],b7,difference[7],borrow);
endmodule
