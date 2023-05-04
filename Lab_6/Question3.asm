.data
array: .word 1, 2, 3, 4, 5   
length: .word 5             

.text
.globl main
main:
    la $s0, array          
    lw $t0, length
    li $t1, 0               
loop:
    bge $t1, $t0, exit     
    lw $t2, ($s0)           
    addi $t2, $t2, 1        
    sw $t2, ($s0)           
    addi $s0, $s0, 4        
    addi $t1, $t1, 1        
    j loop                  
exit: