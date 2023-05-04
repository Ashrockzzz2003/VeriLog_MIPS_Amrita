.data
array1:  .word   1, 2, 3, 4, 5        
array2:  .word   6, 7, 8, 9, 10       
result:  .word   0, 0, 0, 0, 0        

.text
.globl  main

main:
        la      $t0, array1             
        la      $t1, array2             
        la      $t2, result             
        li      $t3, 20                 
        li      $t4, 0                  
        
loop:
        beq     $t4, $t3, end_loop     
        lw      $t5, ($t0)              
        lw      $t6, ($t1)              
        add     $t7, $t5, $t6           
        sw      $t7, ($t2)              
        addi    $t0, $t0, 4             
        addi    $t1, $t1, 4             
        addi    $t2, $t2, 4            
        addi    $t4, $t4, 1            
        
        j       loop                  
end_loop:
        li      $v0, 10                
        syscall