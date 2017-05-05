module dff(clock,d,q,qbar);
input clock,d;
output wire q,qbar;
wire d1,d2;
nand n1 (d1,clock,d);
nand n2 (d2,clock,(~d));
nand n3 (q,qbar,d1);
nand n4 (qbar,q,d2);
endmodule 
