module pr_3_nand();

    wire F;
    reg A, B, C, D, E;

    wire w1, w2;

    nand(w1, A, B);
    nand(w2, C, D);
    not(note ,E);
    and(F, w1, w2, note);


    initial begin
        $display("A B C D E | F");
        $display("----------|--");

        for (integer i = 0; i < 32; i = i + 1) begin
            
            A = i[4];
            B = i[3];
            C = i[2];
            D = i[1];
            E = i[0];

            #20 $display("%b %b %b %b %b | %b", A, B, C, D, E, F);
        end

        $finish;
    end

endmodule