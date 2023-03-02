module Nand_or(A,B,Y);

output Y;
input A, B;
wire YA,YB,Y;
NAND_2 a_comp(A,A,YA);
NAND_2 b_comp(B,B,YB);
NAND_2 or_out(YA,YB,Y);
endmodule