.section .rodata

    assembly_tag :
    .string "This assembly code is written by Abhi"

    ValueString :
    .string "AS_n : %d\n"

.section .data

    AS_n :
    .int 0x0a

.section .bss

    # There is no data for bss

.section .text
.global main
main :

    # Prologue for main
    pushl   %ebp
    movl    %esp, %ebp
    
    pushl   $assembly_tag
    call    puts
    addl    $4, %esp

    pushl   AS_n
    pushl   $ValueString
    call    printf
    addl    $8, %esp

    movl    AS_n, %eax
    sall    $1, %eax
    movl    %eax, AS_n

    pushl   AS_n
    pushl   $ValueString
    call    printf
    addl    $8, %esp

    movl    AS_n, %eax
    sall    $2, %eax
    movl    %eax, AS_n

    pushl   AS_n
    pushl   $ValueString
    call    printf
    addl    $8, %esp

    #Right shift
    movl    $0x18, AS_n

    movl    AS_n, %eax
    sarl    $1, %eax
    movl    %eax, AS_n

    pushl   AS_n
    pushl   $ValueString
    call    printf
    addl    $8, %esp

    movl    AS_n, %eax
    sarl    $2, %eax
    movl   %eax, AS_n

    pushl   AS_n
    pushl   $ValueString
    call    printf
    addl    $8, %esp

    # Epilogue for main
    pushl   $0
    call    exit


