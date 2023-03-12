module comparator();
    reg[1:0] i1;
    reg[1:0] i2;
    wire[2:0] o;
    wire[1:0] not_i1;
    wire[1:0] not_i2;
    wire[9:0] w;
    assign not_i1[0] = ~i1[0];
    assign not_i1[1] = ~i1[1];
    assign not_i2[0] = ~i2[0];
    assign not_i2[1] = ~i2[1];
    assign w[0] = i1[0] & not_i2[0];
    assign w[1] = i1[1] & not_i2[0];
    assign w[2] = i1[0] & i1[1];
    assign w[3] = w[1] | w[2];
    assign w[4] = w[3] & not_i2[1];
    assign o[0] = w[0] | w[4];
    assign w[5] = i2[0] & not_i1[0];
    assign w[6] = i2[0] & not_i1[1] & i2[1];
    assign w[7] = i2[1] & not_i1[0] & not_i1[1];
    assign o[1] = w[5] | w[6] | w[7];
    assign w[8] = i1[0] ~^ i2[0];
    assign w[9] = i1[1] ~^ i2[1];
    assign o[2] = w[8] & w[9];
    initial begin
        $display("A1 A0 B1 B0 | A>B A<B A=B");
		$display("------------|-------------");
		for (integer i = 0; i<16; i = i + 1) begin
			i1[0] = i[3];
			i1[1] = i[2];
			i2[0] = i[1];
            i2[1] = i[0];
			#10 $display("%b  %b  %b  %b  | %b   %b   %b",i1[0],i1[1],i2[0],i2[1],o[0],o[1],o[2]);
		end

		$finish;
	end
endmodule