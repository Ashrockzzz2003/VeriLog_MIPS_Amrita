module pr_2();

    wire F;
    reg A, B, C, D;

    wire w1, w2, w3, w4, notc;

    and(w1, C, D);
    or(w2, w1, B);
    not(notc, C);
    and(w3, notc, B);
    and(w4, w2, A);
    or(F, w4, w3);

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