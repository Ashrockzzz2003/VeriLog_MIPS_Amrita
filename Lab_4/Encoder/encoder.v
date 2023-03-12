module encoder();
	reg x,y,z;
	wire o1,o2,o3,o4,o5,o6,o7,o8;
	wire notx,noty,notz;
	not n1(notx,x);
	not n2(noty,y);
	not n3(notz,z);
	and g1(o1,notx,noty,notz);
	and g2(o2,notx,noty,z);
	and g3(o3,notx,y,notz);
	and g4(o4,notx,y,z);
	and g5(o5,x,noty,notz);
	and g6(o6,x,noty,z);
	and g7(o7,x,y,notz);
	and g8(o8,x,y,z);
	initial begin
		$display("x y z | F0 F1 F2 F3 F4 F5 F6 F7");
		$display("------|------------------------");
		for (integer i = 0; i<8; i = i + 1) begin
			x = i[2];
			y = i[1];
			z = i[0];
			#10 $display("%b %b %b | %b  %b  %b  %b  %b  %b  %b  %b",x,y,z,o1,o2,o3,o4,o5,o6,o7,o8);
		end

		$finish;
	end
endmodule