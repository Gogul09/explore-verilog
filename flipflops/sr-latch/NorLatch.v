///////////////////////////////////////////
/// Design  : NOR Latch - Structural
/// Author	: I.Gogul
/// College	: Anna University, MIT campus
///////////////////////////////////////////

module NorLatch(s,r,q,qbar);
input s,r;
output q,qbar;
nor n1 (q,qbar,r);
nor n2 (qbar,q,s);
endmodule
