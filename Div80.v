module Div80(
	input	reset,
	input	clk,
	output	reg div80,
	inout	VDD,
	inout	VSS
);

	reg [5:0] count;

	always @(posedge clk) begin
		if (~reset) begin
			count <= 0;
			div80 <= 0;
		end else begin
			count[0] <= count[2] & ~count[1];
			count[1] <= count[0];
			count[2] <= count[0] | ~count[1];
			if(~count[2])
				count[3] <= ~count[3];
			if(~count[3] & ~count[2])
				count[4] <= ~count[4];
			if(~count[4] & ~count[3] & ~count[2])
				count[5] <= ~count[5];
			if(~count[5] & ~count[4] & ~count[3] & ~count[2])
				div80 <= ~div80;
		end
	end

	
endmodule