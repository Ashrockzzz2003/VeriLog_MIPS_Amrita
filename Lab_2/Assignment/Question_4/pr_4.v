module pr_4();

    wire F;
    reg X, Y;

    wire w1, w2, notx, noty;

    not(notx, X);
    not(noty, Y);
    and(w1, X, noty);
    and(w2, Y, notx);
    or(F, w1, w2);

    initial begin
        $display("X Y | F");
        $display("----|--");

        for (integer i = 0; i < 4; i = i + 1) begin
            
            X = i[1];
            Y = i[0];

            #10 $display("%b %b | %b", X, Y, F);
        end

        $finish;
    end

endmodule