.section .rodata
    
    assembly_tag:
    .string "This assembly code is written by Abhi"

    ValueString:
    .string "AS_rs : %x\n"

    NOT:
    .string "Bitwise NOT (~)"

    OR:
    .string "Bitwise OR (|)"

    AND :
    .string "Bitwise AND (&)"

    XOR :
    .string "Bitwise XOR (^)"

.section .data

    AS_n1 :
    .int 0x0f0f0f0f

    AS_n2 :
    .int 0xf0f0f0f0

.section .bss

    .comm   AS_rs, 4, 4

.section .text
.global main
main:

    #Prologue for main
    pushl   %ebp
    movl    %esp, %ebp

    pushl   $assembly_tag
    call    puts
    addl    $4, %esp

    movl    AS_n1, %eax
    negl    %eax        #2's compliment
    subl    $1, %eax    #1's compliment
    movl    %eax, AS_rs

    pushl   $NOT
    call    puts
    addl    $4, %esp

    pushl   AS_rs
    pushl   $ValueString
    call    printf 
    addl    $8, %esp

    movl    AS_n1, %eax
    movl    AS_n2, %ebx
    andl    %ebx, %eax
    movl    %eax, AS_rs

    pushl   $AND
    call    puts
    addl    $4, %esp

    pushl   AS_rs
    pushl   $ValueString
    call    printf 
    addl    $8, %esp

    movl    AS_n1, %eax
    movl    AS_n2, %ebx
    orl     %ebx, %eax
    movl    %eax, AS_rs

    pushl   $OR
    call    puts
    addl    $4, %esp

    pushl   AS_rs
    pushl   $ValueString
    call    printf
    addl    $8, %esp

    movl    AS_n1, %eax
    movl    AS_n2, %ebx
    xorl    %ebx, %eax
    movl    %eax, AS_rs

    pushl   $XOR
    call    puts
    addl    $4, %esp

    pushl   AS_rs
    pushl   $ValueString
    call    printf 
    addl    $8, %esp

    #EpiLogue for main
    pushl   $0
    call    exit




