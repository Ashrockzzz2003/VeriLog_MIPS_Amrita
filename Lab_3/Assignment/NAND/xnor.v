module nand_xnor();
    reg A, B;
    wire w1, w2, w3, w4;

    nand(w1, A, B);
    nand(w2, A, w1);
    nand(w3, B, w1);
    nand(w4, w2, w3);
    not(F, w4);

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