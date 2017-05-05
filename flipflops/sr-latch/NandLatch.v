///////////////////////////////////////////
/// Design  : NAND Latch - Structural
/// Author	: I.Gogul
/// College	: Anna University, MIT campus
///////////////////////////////////////////

module NandLatch(s,r,q,qbar);
input s,r;
output q,qbar;
nand n1 (q,qbar,s);
nand n2 (qbar,q,r);
endmodule
