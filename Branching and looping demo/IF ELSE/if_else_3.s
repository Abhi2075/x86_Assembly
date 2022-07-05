.section .rodata

    assembly_tag:
    .string     "This assembly code is written by Abhi"
    
    var_a:
    .string     "Enter number for a :"

    var_b:
    .string     "Enter number for b :"

    var_c:
    .string     "Enter number for c :"
    
    var_d:
    .string     "Enter number for d :"

    scan_string_signed:
    .string     "%d"

    scan_string_unsigned:
    .string     "%u"

    if_string:
    .string "True"

    else_string:
    .string "False"

.section .bss

    .comm   AS_a, 4, 4
    .comm   AS_b, 4, 4
    .comm   AS_c, 4, 4
    .comm   AS_d, 4, 4

.section .text
.global main
main :

    # Prologue for main
    
    pushl   %ebp
    movl    %esp, %ebp

    pushl   $assembly_tag
    call    puts
    addl    $4, %esp

    pushl   $var_a
    call    puts
    addl    $4, %esp

    pushl   $AS_a
    pushl   $scan_string_signed
    call    scanf
    addl    $8, %esp

    pushl   $var_b
    call    puts
    addl    $4, %esp

    pushl   $AS_b
    pushl   $scan_string_signed
    call    scanf
    addl    $8, %esp

    pushl   $var_c
    call    puts
    addl    $4, %esp

    pushl   $AS_c
    pushl   $scan_string_unsigned
    call    scanf
    addl    $8, %esp

    pushl   $var_d
    call    puts
    addl    $4, %esp

    pushl   $AS_d
    pushl   $scan_string_unsigned
    call    scanf
    addl    $8, %esp

    movl    AS_a, %eax
    movl    AS_b, %ebx
    cmpl    %ebx, %eax

    jg      if_block

    movl    AS_c, %eax
    movl    AS_d, %ebx
    cmpl    %ebx, %eax

    jae     else_block

if_block :
    
    pushl   $if_string
    call    puts
    addl    $4, %esp

    jmp     else_end_block

else_block :

    pushl   $else_string
    call    puts
    addl    $4, %esp

else_end_block :

    # Epilogue for main
    pushl $0
    call    exit


