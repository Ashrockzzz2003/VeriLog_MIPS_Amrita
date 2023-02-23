module pr_1(A, B, C, D, F);

    output F;
    input A, B, C, D;

    wire out_AB, out_CD;

    and and_ab(out_AB, A, B);
    and and_cd(out_CD, C, D);
    or or_out_ab_cd(F, out_AB, out_CD);

endmodule