.text
    la $s0, LENGTH_arr;
    lw $s0, 0($s0);

    addi $t0, $zero, 0;
    la $t1, arr;

    NEXT_ARRAY_PRINT:
        beq $t0, $s0, DONE_PRINTING;
        addi $v0, $zero, 1;
        lw $a0, 0($t1);
        syscall

        addiu $t1, $t1, 4;
        addiu $t0, $t0, 1;

        beq		$t0, $s0, DONE_PRINTING	# if $t0 == $s0 then goto DONE_PRINTING
        la		$a0, SEPARATOR		# load SEPARATOR into $a0
        syscall

    j NEXT_ARRAY_PRINT;

    DONE_PRINTING:
        addi $v0, $zero, 10;
        syscall
        

.data
    SEPARATOR: .asciiz ", "
    arr:
        .word 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
    LENGTH_arr: .word 10