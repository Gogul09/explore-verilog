///////////////////////////////////////////
/// Design  : T Flipflop - Structural
/// Author	: I.Gogul
/// College	: Anna University, MIT campus
///////////////////////////////////////////

module Tflipflop(clock,t,q,qbar);
input clock,t;
output q,qbar;
wire t1,t2;
nand n1 (t1,clock,t,q);
nand n2 (t2,clock,t,qbar);
nand n3 (q,qbar,t1);
nand n4 (qbar,q,t2);
endmodule