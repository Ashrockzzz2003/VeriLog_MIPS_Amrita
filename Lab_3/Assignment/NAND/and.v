module nand_and();
    reg A, B;
    wire w1;

    nand(w1, A, B);
    nand(F, w1, w1);

    initial begin
        $display("A B | F");
        $display("----|--");

        for (integer i = 0; i < 4; i = i + 1) begin
            
            A = i[1];
            B = i[0];

            #10 $display("%b %b | %b", A, B, F);
        end

        $finish;
    end

endmodule