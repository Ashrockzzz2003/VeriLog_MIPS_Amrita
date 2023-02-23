module pr_4_nand_nor();

    wire F;
    reg x, y;

    wire w1, w2, w3;

    nand(w1, x, y);
    nand(w2, w1, x);
    nand(w3, w1, y);
    nand(F, w3, w2);   

    initial begin
        $display("X Y | F");
        $display("----|--");

        for (integer i = 0; i < 4; i = i + 1) begin
            
            x = i[1];
            y = i[0];

            #10 $display("%b %b | %b", x, y, F);
        end

        $finish;
    end

endmodule