.section .rodata
    
    assembly_tag :
    .string "This assembly code is written by Abhi"

    print_string :
    .string "AS_i : %d\n"

.section .bss

    .comm   AS_i, 4, 4

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

        jmp     loop_condition

loop_body :
        movl    AS_i, %eax
        movl    $7, %ebx
        movl    $0, %edx

        idiv    %ebx
        cmpl    $0, %edx
        je      loop_increment

        pushl   AS_i
        pushl   $print_string
        call    printf
        addl    $8, %esp

loop_increment :
        addl    $1, AS_i

loop_condition :
        movl    AS_i, %eax
        cmpl    $100, %eax
        jl      loop_body

        # Epilogue for main
        pushl   $0
        call    exit

