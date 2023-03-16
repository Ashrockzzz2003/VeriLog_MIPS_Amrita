module pr_2();
    reg A, B, C;
    wire Y, w1, w2, w3, not_b, not_c;

    not(not_b, B);
    not(not_c, C);

    // Y
    and(w1, A, B, C);
    or(w3, not_b, not_c);
    and(w2, A, w3);
    or(Y, w1, w2);

    // Test Bench
    initial begin
        $display("A B C | Y");
        $display("------|--");

        for(integer i = 0; i < 8; i++) begin
            A = i[2];
            B = i[1];
            C = i[0];

            #10 $display("%b %b %b | %b", A, B, C, Y);

        end
        $finish;
    end
endmodule