module pr_1();
    reg B3, B2, B1, B0;
    wire D3, D2, D1, D0, w1, w2, w3, w4, w5, w6, not_b0, not_b1, not_b2, not_b3;

    // D3
    assign D3 = B3;

    // D2, D1, D0, Approach 2, Optimized
    xor(D2, B3, B2);
    xor(D1, B2, B1);
    xor(D0, B1, B0);

/* Approach 1, Naive

    not(not_b3, B3);
    not(not_b2, B2);
    not(not_b1, B1);
    not(not_b0, B0);
    // D3
    assign D3 = B3;
    // D2
    and(w1, not_b3, B2);
    and(w2, B3, not_b2);
    or(D2, w1, w2);

    // D1
    and(w3, not_b2, B1);
    and(w4, B2, not_b1);
    or(D1, w3, w4);

    // D0
    and(w5, not_b1, B0);
    and(w6, B1, not_b0);
    or(D0, w5, w6);
    
*/

    // Test Bench
    initial begin
        $display("B3 B2 B1 B0 | D3 D2 D1 D0");
        $display("------------|------------");

        for(integer i = 0; i < 16; i++) begin
            B3 = i[3];
            B2 = i[2];
            B1 = i[1];
            B0 = i[0];

            #12 $display("%b  %b  %b  %b  | %b  %b  %b  %b", B3, B2, B1, B0, D3, D2, D1, D0);

        end
        $finish;
    end
endmodule