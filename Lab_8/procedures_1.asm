.text
.globl main
.ent main

main:
    # Print input message
    li $v0, 4
    la $a0, input
    syscall

    # Read input
    li $v0, 5
    syscall

    # Move input to $a1
    move $a1, $v0

    # Print input message
    li $v0, 4
    la $a0, input
    syscall

    # Read input
    li $v0, 5
    syscall

    # Move input to $a2
    move $a2, $v0

    # Call add_numbers
    jal add_numbers

    # Move result to $t0
    sw $t0, result
    
    # Print result
    lw $a0, result
    li $v0, 1
    move $a0, $t0
    syscall

    # Print output message
    li $v0, 4
    la $a0, output
    syscall

    # Print result
    li $v0, 10
    syscall
.end main

.globl add_numbers
.ent add_numbers

add_numbers:
    add $t0, $a1, $a2
    jr $ra
.end add_numbers


.data
    input: .asciiz "Enter a number: "
    output: .asciiz "The result is: "
    result: .word 0