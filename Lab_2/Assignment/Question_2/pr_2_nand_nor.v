module pr_2_nand_nor();

    wire F;
    reg A, B, C, D;

    wire w1, w2, w3, w4, notc, notb;

    nand(w1, C, D);
    not(notb, B);
    nor(w2, w1, notb);
    not(notc, C);
    nand(w3, notc, B);
    nand(w4, w2, A);
    nor(F, w4, w3);

    initial begin
        $display("A B C D | F");
        $display("--------|---");

        for (integer i = 0; i < 16; i = i + 1) begin
            A = i[3];
            B = i[2];
            C = i[1];
            D = i[0];

            #20 $display("%b %b %b %b | %b", A, B, C, D, F);
        end

        $finish;
    end

endmodule