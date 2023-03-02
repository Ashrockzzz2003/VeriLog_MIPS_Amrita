module nand_not();
    reg A;
    wire w1;

    nand(F, A, A);

    initial begin
        $display("A | F");
        $display("--|--");

        for (integer i = 0; i < 2; i = i + 1) begin
            
            A = i[0];

            #10 $display("%b | %b", A, F);
        end

        $finish;
    end

endmodule