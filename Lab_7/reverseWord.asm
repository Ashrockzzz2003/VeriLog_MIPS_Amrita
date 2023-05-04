.text
.globl main

main:
    la $t0, toReverse
    lw $t1, 0($t0)
    sll $t2, $t1, 16
    srl $t1, $t1, 16
    or $t1, $t1, $t2
    sw $t1, 0($t0)


.data
    toReverse: .word 6