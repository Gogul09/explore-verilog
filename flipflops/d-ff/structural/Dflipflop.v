///////////////////////////////////////////
/// Design  : D Flipflop - Structural
/// Author	: I.Gogul
/// College	: Anna University, MIT campus
///////////////////////////////////////////

module Dflipflop(clock,reset,d,q,qbar);
input clock, reset, d;
output q,qbar;
wire d1,d2,dbar;
not a1 (dbar,d);
nand n1 (d1,clock,reset,d);
nand n2 (d2,clock,reset,dbar);
nand n3 (q,qbar,d1);
nand n4 (qbar,q,d2);
endmodule
