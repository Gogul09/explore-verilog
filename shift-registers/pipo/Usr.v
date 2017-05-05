///////////////////////////////////////////
/// Design  : Universal Shift Register
/// Author	: I.Gogul
/// College	: Anna University, MIT campus
///////////////////////////////////////////

module Usr(in,out,msb_in,lsb_in,msb_out,lsb_out,s1,s0,clock,reset);
input s1,s0,clock,reset,msb_in,lsb_in;
output msb_out,lsb_out;
input [3:0]in;
output reg [3:0]out;

assign msb_out = out[3];
assign lsb_out = out[0];

always @ (posedge clock)
	begin
		if(reset)
			out = 0;
		else 
			begin
				case ({s1,s0})
					2'b00: out = out;               // No change
					2'b01: out = {msb_in,out[3:1]}; // Right Shift
					2'b10: out = {out[2:0],lsb_in}; // Left Shift
					2'b11: out = in;                // Parallel Loading
				endcase
			end
	end
endmodule
