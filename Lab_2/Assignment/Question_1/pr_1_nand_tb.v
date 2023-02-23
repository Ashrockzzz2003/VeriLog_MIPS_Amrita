`include "pr_1_nand.v"

module pr_1_nand_tb;
    reg A, B, C, D;
    wire F;

    pr_1_nand question_1(A, B, C, D, F);

    initial begin
        $display("A B C D | F");
        $display("--------|---");

        for (integer i = 0; i < 16; i = i + 1) begin
            A = i[3];
            B = i[2];
            C = i[1];
            D = i[0];

            #10 $display("%b %b %b %b | %b", A, B, C, D, F);
        end

        $finish;
    end    
endmodule