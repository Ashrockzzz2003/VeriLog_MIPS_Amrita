module nor_and();
    reg A, B;
    wire w1, w2, w3;

    nor(w1, A, A);
    nor(w2, B, B);
    nor(F, w2, w1);

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