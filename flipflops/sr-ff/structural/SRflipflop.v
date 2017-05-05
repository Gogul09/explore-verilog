///////////////////////////////////////////
/// Design  : SR Flipflop - Structural
/// Author	: I.Gogul
/// College	: Anna University, MIT campus
///////////////////////////////////////////

module SRflipflop(clock,reset,s,r,q,qbar);
input clock,reset,s,r;
output q,qbar;
wire d1,d2;
nand n1(d1,clock,s,reset);
nand n2(d2,clock,r,reset);
nand n3(q,qbar,d1);
nand n4(qbar,q,d2);	
endmodule
