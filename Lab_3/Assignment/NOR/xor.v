module nor_xor();
    reg A, B;
    wire w1, w2, w3, w4;

    nor(w1, A, B);
    nor(w2, A, w1);
    nor(w3, B, w1);
    nor(w4, w2, w3);
    nor(F, w4, w4);

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