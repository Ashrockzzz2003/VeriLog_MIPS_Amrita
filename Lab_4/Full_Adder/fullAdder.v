module fullAdder();
    reg A, B, C_in;
    wire S, C_out, w1, w2;

    xor(S, A, B, C_in);
    and(w1, A, B);
    and(w2, B, C_in);
    or(C_out, w1, w2);

    // Test Bench
    initial begin
        $display("A B C_in | S C_out");
        $display("---------|--------");

        for(integer i = 0; i < 8; i++) begin
            A = i[2];
            B = i[1];
            C_in = i[0];

            #10 $display("%b %b   %b  | %b %b", A, B, C_in, S, C_out);

        end
        $finish;
    end

endmodule