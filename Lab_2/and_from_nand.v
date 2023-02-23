module and_from_nand();
    reg X, Y;
    wire F, W;
    
    // Create NAND gates
    nand U1(W, X, Y);
    nand U2(F, W, W);

    // Test
    initial begin
        $monitor("X = %b | Y = %b | F = %b", X, Y, F);
        X = 0;
        Y = 0;
        #1 X = 1;
        #1 Y = 1;
        #1 X = 0;
        #1 $finish;
    end
endmodule