module Mod_Ten(clock,d,qa,qb,qc,qd);
input clock,d;
output qa,qb,qc,qd;
wire qa,qabar,qb,qbbar,qc,qcbar,qd,qdbar;
dff d1(clock,d,qa,qabar);
dff d2(qabar,d,qb,qbbar);
dff d3(qbbar,d,qc,qcbar);
dff d4(qcbar,d,qd,qdbar);
endmodule
