module Nand_or_tb;
wire t_y;
reg t_a,t_b;
Nand_or my_gate(t_a,t_b,t_y);
initial
begin
$monitor(t_a,"&" ,t_b, "=" ,t_y);
$display("the output is");
t_a=1'b0;
t_b=1'b0;
#5
t_a=1'b0;
t_b=1'b1;
#5
t_a=1'b1;
t_b=1'b0;
#5
t_a=1'b1;
t_b=1'b1;
#5
$finish;
end 
endmodule