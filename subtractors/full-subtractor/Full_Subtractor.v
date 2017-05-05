///////////////////////////////////////////
/// Design  : Full Subtractor
/// Author	: I.Gogul
/// College	: Anna University, MIT campus
///////////////////////////////////////////

module Full_Subtractor(a,b,c,difference,borrow);
input a,b,c;
output difference,borrow;
wire b1,b2,b3;
xor x1(difference,a,b,c);
and a1(b1,b,c);
and a2(b2,c,(~a));
and a3(b3,b,(~a));
or o1(borrow,b1,b2,b3);
endmodule
