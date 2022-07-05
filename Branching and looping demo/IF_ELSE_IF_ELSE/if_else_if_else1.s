.section .rodata

    assembly_tag :
    .string "This assembly code is written by Abhi"

    enter_string :
    .string "Enter integer value :"

    scan_string :
    .string "%d"

    if_block_string :
    .string "Given number is positive"

    else_if_block_string :
    .string "Given number is negative"

    else_block_string :
    .string "Given number is ZERO"

.section .bss

    .comm   AS_number, 4, 4

.section .text
.global   main
main :

    # Prologue for main
    pushl   %ebp
    movl    %esp, %ebp

    pushl   $assembly_tag
    call    puts
    addl    $4, %esp

    pushl   $enter_string
    call    puts 
    addl    $4, %esp

    pushl   $AS_number
    pushl   $scan_string
    call    scanf
    addl    $8, %esp

    movl    AS_number, %eax
    cmpl    $0, %eax

    jg      if_block
    jl      else_if_block
    je      else_block

if_block :
    pushl   $if_block_string 
    call    puts
    addl    $4, %esp

    jmp     end_of_program

else_if_block :
    pushl   $else_if_block_string
    call    puts
    addl    $4, %esp

    jmp     end_of_program

else_block :
    pushl   $else_block_string
    call    puts
    addl    $4, %esp

    jmp end_of_program

end_of_program :
    # Epilogue for main
    pushl   $0
    call    exit

