module pr_1_nand(A, B, C, D, F);

    output F;
    input A, B, C, D;

    wire out_AB, out_CD;

    nand nand_ab(out_AB, A, B);
    nand nand_cd(out_CD, C, D);
    nand nand_out_ab_cd(F, out_AB, out_CD);

endmodule