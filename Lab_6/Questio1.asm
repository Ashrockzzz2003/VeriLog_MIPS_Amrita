.data
arr: .word 1,2,3,4,5,6,7,8,9,10
arr_size: .word 10
arr1: .space 40
arr2: .space 40

newline: .asciiz "\n"

.globl main
.text

main:
    lw $a0,arr_size
    la $a1,arr
    li $t3,0
loop:
    beq $a0,$zero,print
    lw $t1,($a1)
    andi $t2,$t1,1
    addi $a0,$a0,-1
    addi $a1,$a1,4
    beq $t2,$zero,even
    odd:
        sw $t1 , arr1($t3)
        addi $t3,$t3,4
        j loop
    even:
        sw $t1 , arr2($t3) 
        addi $t3,$t3,4
        j loop

print:
    li $t4,0
    loop1:
        lw $a0, arr1($t4)
        beq $a0,$zero,normal
        li $v0, 1
        addi $t4,$t4,4
        syscall
        li $v0,4
        la $a0,newline
        syscall
        j loop1
    normal:
        li $t4,0
    loop2:
        lw $a0, arr2($t4)
        beq $a0,$zero,exit
        li $v0, 1
        addi $t4,$t4,4
        syscall
        li $v0,4
        la $a0,newline
        syscall
        j loop2

        
exit:
    li $v0,10
    syscall