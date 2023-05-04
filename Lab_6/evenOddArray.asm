.data
orginalarray : .word 10, 20 , 40 , 1 , 5 , 7 , 12
evenarray: .space 80 
oddrray: .space 80 
.text
.globl main
main:
     la $s0,orginalarray
     li $s1,0
     li $s2,0 
     li $t0,7 
     li $t1,0 
loop:
     beq $t0,$t1,endloop 
     lw $t5,($s0)
     andi $t2,$t5,1
     addi $t1,$t1,1
     addi $s0,$s0,4
     beq $t2,$zero,ea 
     sw $t5,oddrray($s2)
     addi $s2,$s2,4
     j loop 
ea:
     sw $t5,evenarray($s1)
     addi $s1,$s1,4 
     j loop 
endloop:

