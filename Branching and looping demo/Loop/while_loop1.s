.section .rodata

    assembly_tag :
    .string "This assembly code is written by Abhi"

    while_statement :
    .string "While loop 1"

.section .bss

    .comm AS_i, 4, 4

.section .text
.global main
main :

    # Prologue for main
    pushl   %ebp
    movl    %esp, %ebp

    pushl   $assembly_tag
    call    puts
    addl    $4, %esp

    movl    $0, AS_i
    
    jmp     While_condition


while_body :
    pushl   $while_statement
    call    puts
    addl    $4, %esp

    #increment
    addl    $1,AS_i

While_condition :
    movl    AS_i, %eax
    cmpl    $5, %eax
    jl      while_body

    # Epiloge for main
    pushl   $0
    call    exit

