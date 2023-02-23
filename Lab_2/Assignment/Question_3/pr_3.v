module pr_3();

    wire F;
    reg A, B, C, D, E;

    wire w1, w2;

    and(w1, A, B);
    and(w2, C, D);
    nor(F, w1, w2, E);


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