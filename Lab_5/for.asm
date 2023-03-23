.text
.globl main
main:
	li $t0, 10
	li $t1, 0
	li $t2, 17
loop:
	beq $0, $t1, end
	add $t2, $t2, $t1
	addi $t1,$t1,1
	bne $t1, $t0, loop	
end:
    add $s2, $s2, $s1
	li $v0,10
	syscall