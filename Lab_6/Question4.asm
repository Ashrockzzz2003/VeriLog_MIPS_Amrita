.data
array:  .word   1, 2, 3, 4, 5, 6, 7, 8, 9, 10   

.text
.globl  main

main:
        la      $t0, array                     
        li      $t1, 0                          
        li      $t2, 2                          
        li      $t3, 1                          
        li      $t4, 10                         
        
loop:
        beq     $t1, $t4, end_loop             
        lw      $t5, ($t0)                      
        add     $t5, $t5, $t2                   
        addi    $t2, $t2, 2                     
        bnez    $t1, increment_odd             
        add     $t5, $t5, $t3                   
        addi    $t3, $t3, 2                    
        
increment_odd:
        addi    $t1, $t1, 1                    
        sw      $t5, ($t0)                     
        addi    $t0, $t0, 4                     
        j       loop                            
        
end_loop:
       li      $v0, 10                         
        syscall