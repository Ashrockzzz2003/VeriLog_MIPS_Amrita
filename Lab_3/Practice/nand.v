module NAND_2(A,B,Y);
wire Yd;
output Y;
input A, B;
assign Yd=A&B;
assign Y=!Yd;
//and(Yd, A, B);
//not(Y, Yd);
endmodule 
