////////////////////////////////////////////////
/// Design  : Full Adder using 4x1 Multiplexer
/// Author	: I.Gogul
/// College	: Anna University, MIT campus
///////////////////////////////////////////////

module Full_Adder(sum,cout,a,b,cin);
input a,b,cin;
output sum,cout;
Mux m1(sum,a,b,cin,~cin,~cin,cin);
Mux m2(cout,a,b,0,cin,cin,1);
endmodule
