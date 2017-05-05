module Comparator(a,b,x,y,z);
input [1:0]a,b;
output x,y,z;
assign x = ((~a[1])&(~a[0])&(b[0])) | ((~a[1])&(b[1])) | ((~a[0])&(b[1])&(b[0])); 
assign y = ((a[1])^~(b[1])) | ((a[0])^~(b[0]));
assign z = ((a[1])&(a[0])&(~b[0])) | ((a[1])&(~b[1])) | ((a[0])&(~b[1])&(~b[0])); 
endmodule
