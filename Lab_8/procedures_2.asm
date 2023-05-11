.text

.globl main
.ent main

main:
    # Prompt user for number of integers to sum
    li $v0, 4
    la $a0, n_input
    syscall

    # Get number of integers to sum
    li $v0, 5
    syscall

    move $s0, $v0

    la $t0, 0
    la $s1, 0

    loop:
        beq $t0, $s0, exit
        addi $t0, $t0, 1
        jal get_and_add
        j loop

    exit:
        li $v0, 4
        la $a0, sum_output
        syscall

        li $v0, 1
        move $a0, $s1
        syscall

        li $v0, 10
        syscall

.end main

.globl get_and_add
.ent get_and_add

get_and_add:
    li $v0, 4
    la $a0, int_input
    syscall

    li $v0, 5
    syscall
    move $t1, $v0
    add $s1, $s1, $t1
    jr $ra
.end get_and_add

.data
    n_input: .asciiz "Enter the number of integers to sum: "
    int_input: .asciiz "Enter integer: "
    sum_output: .asciiz "The sum is: "
    n: .word 0