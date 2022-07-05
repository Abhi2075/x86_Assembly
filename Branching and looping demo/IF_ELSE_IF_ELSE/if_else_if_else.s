.section .rodata

    assembly_tag :
    .string "This assembly code is written by Abhi"

    var_a :
    .string "Enter integer value for a :"

    var_b :
    .string "Enter integer value for b :"

    var_c :
    .string "Enter integer value for c :"

    var_d :
    .string "Enter integer value for d :"

    var_e :
    .string "Enter integer value for e :"

    var_f :
    .string "Enter integer value for f :"

    scan_string :
    .string "%d"

    if_block_string :
    .string "if block is executed"

    else_if1_block_string :
    .string "else if 1 block is executed"

    else_if2_block_string :
    .string "else if 2 block is executed"

    else_block_string :
    .string "all conditions are false"

.section .bss 

    .comm   AS_a, 4, 4
    .comm   AS_b, 4, 4
    .comm   AS_c, 4, 4
    .comm   AS_d, 4, 4
    .comm   AS_e, 4, 4
    .comm   AS_f, 4, 4

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
    pushl   $scan_string 
    call    scanf
    addl    $8, %esp

    pushl   $var_b
    call    puts
    addl    $4, %esp

    pushl   $AS_b
    pushl   $scan_string
    call    scanf
    addl    $8, %esp

    pushl   $var_c
    call    puts
    addl    $4, %esp

    pushl   $AS_c
    pushl   $scan_string
    call    scanf
    addl    $8, %esp

    pushl   $var_d
    call    puts
    addl    $4, %esp

    pushl   $AS_d
    pushl   $scan_string 
    call    scanf
    addl    $8, %esp 

    pushl   $var_e
    call    puts
    addl    $4, %esp

    pushl   $AS_e
    pushl   $scan_string 
    call    scanf
    addl    $8, %esp

    pushl   $var_f
    call    puts
    addl    $4, %esp

    pushl   $AS_f
    pushl   $scan_string
    call    scanf
    addl    $8, %esp

    movl    AS_a, %eax
    movl    AS_b, %ebx

    cmpl    %ebx, %eax
    jle     if_block

    movl    AS_c, %eax
    movl    AS_d, %ebx

    cmpl    %ebx, %eax
    jge     else_if1_block

    movl    AS_e, %eax
    movl    AS_f, %ebx

    cmpl    %ebx, %eax
    je      else_if2_block

    #else block
    pushl   $else_block_string
    call    puts
    addl    $4, %esp

    jmp     end_of_program

if_block :
    pushl   $if_block_string
    call    puts
    addl    $4, %esp

    jmp     end_of_program

else_if1_block :
    pushl   $else_if1_block_string
    call    puts
    addl    $4, %esp
    
    jmp     end_of_program

else_if2_block :
    pushl   $else_if2_block_string
    call    puts
    addl    $4, %esp

    jmp     end_of_program

end_of_program :
    # Epilogue for main
    pushl   $0
    call    exit

