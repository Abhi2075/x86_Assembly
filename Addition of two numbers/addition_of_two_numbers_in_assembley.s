# Prepare string for printf and puts

.section .rodata

    msg:
    .string "rs : %d\n"

    proof:
    .string "Proof of assembly source"

.section .data
    
    n1:
    .int 10

    n2:
    .int 20

.section .bss

    .comm rs, 4, 4

# Start of main function
.section .text
.global main

main:

    # Prologue
    pushl %ebp
    movl  %esp,%ebp

    # Body start
    # rs = n1 + n2;
    movl n1, %eax
    movl n2, %edx
    addl %edx, %eax
    movl %eax, rs

    # End of rs = n1 + n2;
    
    # Start printf("rs : %d\n")
    pushl rs 
    pushl $msg
    call printf 
    addl $8, %esp

    # End of Printf

    # Start of puts
    pushl $proof
    call puts
    addl $4, %esp
    
    # Exit(0);
    pushl $0
    call exit

