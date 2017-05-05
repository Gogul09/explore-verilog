///////////////////////////////////////////
/// Design  : Moore Machine to detect 010
/// Author	: I.Gogul
/// College	: Anna University, MIT campus
///////////////////////////////////////////

module Moore_Machine(clock,reset,x,y);
input clock,reset,x;
output reg y;
reg [1:0]state;

parameter S0 = 2'b00;
parameter S1 = 2'b01;
parameter S2 = 2'b10;
parameter S3 = 2'b11;

always @ (posedge clock)
	begin
		if(reset)
			state = S0;
		else 
			case (state)
				S0:
					if(x)
						state = S0;
					else
						state = S1;
				S1:
					if(x)
						state = S2;
					else
						state = S1;
				S2:
					if(x)
						state = S0;
					else
						state = S3;
				S3:
					if(x)
						state = S2;
					else
						state = S1;
			endcase
	end

always @ (*)
	begin
		if(reset)
			y = 0;
		else if (state == S3)
			y = 1;
		else 
			y = 0;
	end
endmodule
