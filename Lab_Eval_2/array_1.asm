.data
    input_msg: .asciiz "Enter the number of elements in the array: "
    element_input_msg: .asciiz "Enter element: "
    output_msg: .asciiz "Array Elements:"
    _space: .asciiz " "
    arr: .word 0:100

.text
.globl main

# n -> $s0
# i -> $t0
# &array -> $s1
# array[i] -> $t1

main:
    la $a0, input_msg
    li $v0, 4
    syscall

    li $v0, 5
    syscall
    move $s0, $v0
    
    li $t0, 0
    la $s1, arr

inputLoop:
    beq $t0, $s0, endInputLoop

    la $a0, element_input_msg
    li $v0, 4
    syscall

    li $v0, 5
    syscall
    move $t1, $v0

    sw $t1, ($s1)
    addi $s1, $s1, 4
    addi $t0, $t0, 1
    j inputLoop

endInputLoop:
    li $t0, 0
    la $s1, arr

    la $a0, output_msg
    li $v0, 4
    syscall

    traverse:
        beq $t0, $s0, endTraverse

        lw $t1, ($s1)

        # i & 1 == 1 ? Odd : Even

        andi $t2, $t0, 1
        checkEven:
            beq $t2, 0, isEven
            addi $s1, $s1, 4
            addi $t0, $t0, 1
            j traverse

        
        isEven:
            la $a0, _space
            li $v0, 4
            syscall

            move $a0, $t1
            li $v0, 1
            syscall

            addi $s1, $s1, 4
            addi $t0, $t0, 1
            j traverse

    endTraverse:
        li $v0, 10
        syscall