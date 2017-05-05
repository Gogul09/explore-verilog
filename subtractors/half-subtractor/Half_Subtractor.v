///////////////////////////////////////////
/// Design  : Half Subtractor
/// Author	: I.Gogul
/// College	: Anna University, MIT campus
///////////////////////////////////////////

module Half_Subtractor(a,b,difference,borrow);
input a,b;
output difference,borrow;
assign difference = a ^ b;
assign borrow = (~a)&b;
endmodule
