
    .text
    .globl main
main:
    lw $s0, arraySize       # arraySize = 250
    la $s1, array           # s1 = &array
    li $t0, 0               # i = 0

initArray:
    beq $t0, $s0, initDone  # while(i != arraySize)
    sw $t0, 0($s1)          # array[i] = i
    addi $s1, $s1, 4        # s1 = &(array) + 4
    addi $t0, $t0, 1        # i = i + 1
    j initArray

initDone:
    li $v0, 10              # return 0
    syscall

    .data
array: .space 1000          # 250*4 = 1000 => 250 words
arraySize: .word 250        # arraySize = 250 words