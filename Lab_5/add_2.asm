#sample example 'add two numbersâ€™
	.text	 # text section
	.globl main 	#call main by SPIM
main:	la $t0, value	#load address â€˜valueâ€™ into $t0
		lw $t1, 0($t0)	#load word 0(value) into $t1
		lw $t2, 4($t0)	#load word 4(value) into $t2
		add $t3, $t1, $t2	# add two numbers into $t3
		sw $t3, 8($t0)	 #store word $t3 into 8($t0)
	.data # data section
value: .word 10, 20, 0	#data for addition