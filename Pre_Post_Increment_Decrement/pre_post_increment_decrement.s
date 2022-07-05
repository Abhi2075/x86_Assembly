.section .rodata

    assembly_tag:
    .string "This assembly code is written by Abhi"

    PreIncrement:
    .string "Pre-Increment"

    PostIncrement:
    .string "Post-Increment"

    PreDecrement:
    .string "Pre-Decrement"

    PostDecrement:
    .string "Post-Decrement"

    ValueString:
    .string "AS_m : %d\tAS_n : %d\n"

.section .data

    AS_n:
    .int 10

.section .bss

    .comm   AS_m, 4, 4

.section .text
.global main
main:

    #Prologue for main
    pushl   %ebp
    movl    %esp, %ebp
    
    # Assembly Tag
    pushl   $assembly_tag
    call    puts
    addl    $4, %esp

    #Pre-Increment
    pushl   $PreIncrement
    call    puts
    addl    $4, %esp

    movl    AS_n, %eax
    addl    $1, %eax
    movl    %eax, AS_n

    movl    AS_n, %eax  # This line for debug purpose so i wrote it as it is
    movl    %eax, AS_m

    pushl   AS_n
    pushl   AS_m
    pushl   $ValueString
    call    printf
    addl    $12, %esp

    #PostIncrement
    pushl   $PostIncrement
    call    puts
    addl    $4, %esp

    movl    $10,%eax
    movl    %eax, AS_n

    movl    AS_n, %eax
    movl    %eax, AS_m
    addl    $1, %eax
    movl    %eax, AS_n

    pushl   AS_n
    pushl   AS_m
    pushl   $ValueString
    call    printf
    addl    $12, %esp

    #PreDecrement
    pushl   $PreDecrement
    call    puts
    addl    $4, %esp

    movl    $10, %eax
    movl    %eax, AS_n

    movl    AS_n, %eax
    subl    $1, %eax
    movl    %eax, AS_n

    movl    AS_n, %eax
    movl    %eax, AS_m

    pushl   AS_n
    pushl   AS_m
    pushl   $ValueString
    call    printf
    addl    $12, %esp

    #PostDecrement
    pushl   $PostDecrement
    call    puts
    addl    $4, %esp

    movl    $10, %eax
    movl    %eax, AS_n

    movl    AS_n, %eax
    movl    %eax, AS_m
    subl    $1, %eax
    movl    %eax,AS_n

    pushl   AS_n
    pushl   AS_m
    pushl   $ValueString
    call    printf
    addl    $12, %esp

    #Epilogue for main
    pushl   $0
    call    exit


