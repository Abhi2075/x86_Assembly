.section .rodata
    
    assembly_tag :
    .string "This assembly code is written by Abhi"

    print_string :
    .string "AS_n : %d\n"

.section .bss
    
    .comm   AS_i, 4, 4
    .comm   AS_n, 4, 4

.section .text
.global main
main  :

    # Prologue for main
    pushl   %ebp
    movl    %esp, %ebp

    pushl   $assembly_tag
    call    puts
    addl    $4, %esp

    movl    $0, AS_i
    jmp     loop_condition

loop_body :
    call rand
    movl    %eax, AS_n

    movl    AS_n, %eax
    movl    $7, %ebx

    movl    $0, %edx
    idiv    %ebx
    cmpl    $0, %edx
    je      out_of_loop

    pushl   AS_n
    pushl   $print_string 
    call    printf 
    addl    $8, %esp

loop_condition :
    movl    AS_i, %eax
    cmpl    $100, %eax
    jl      loop_body

out_of_loop :
    # Epilogue for main
    pushl   $0
    call    exit

