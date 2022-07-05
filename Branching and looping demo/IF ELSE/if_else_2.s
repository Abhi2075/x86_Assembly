.section .rodata
    
    assembly_tag:
    .string     "This assembly code is written by Abhi"

    if_puts:
    .string     "True"

    else_puts:
    .string     "False"

.section .data

    AS_a:
    .int    100

    AS_b:
    .int    50

    AS_c:
    .int    20

    AS_d:
    .int    80

.section .text
.global     main
main:

    # Prologue foe main
    pushl   %ebp
    movl    %esp, %ebp

    pushl   $assembly_tag
    call    puts
    addl    $4, %esp

    movl    AS_a, %eax
    movl    AS_b, %ebx
    cmpl    %ebx, %eax

    jle     else_block

    movl    AS_c, %eax
    movl    AS_d, %ebx
    cmpl    %ebx, %eax

    jge     else_block

    pushl   $if_puts
    call    puts
    addl    $4, %esp

    jmp     end_of_else

else_block :
    pushl   $else_puts
    call    puts
    addl    $4, %esp

end_of_else :
    # Epilogue for main
    pushl   $0
    call    exit

