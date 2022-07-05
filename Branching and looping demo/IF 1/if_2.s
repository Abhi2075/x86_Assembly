.section .rodata

    assembly_tag:
    .string "This assembly code is written by Abhi"

    start:
    .string "Start of program"

    end:
    .string "End of program"

    scan_string:
    .string "%d"

    condition_valid:
    .string "This message is print because number 1 is less then or equal to number 2"

    input_number1:
    .string "Enter number 1"

    input_number2:
    .string "Enter number 2"

.section .bss

    .comm AS_n1, 4, 4
    .comm AS_n2, 4, 4

.section .text
.global main
main:

    #Prologue for main
    pushl   %ebp
    movl    %esp, %ebp

    pushl   $assembly_tag
    call    puts
    addl    $4, %esp

    pushl   $start
    call    puts
    addl    $4, %esp

    pushl   $input_number1
    call    puts
    addl    $4, %esp

    pushl   $AS_n1
    pushl   $scan_string
    call    scanf
    addl    $8, %esp

    pushl   $input_number2
    call    puts
    addl    $4, %esp

    pushl   $AS_n2
    pushl   $scan_string
    call    scanf
    addl    $8, %esp

    movl    AS_n1, %eax
    movl    AS_n2, %ebx
    
    cmpl    %ebx, %eax

    jg  out

    pushl   $condition_valid
    call    puts
    addl    $4, %esp

out:
    pushl   $end
    call    puts
    addl    $4, %esp

    # Epilogue for main
    pushl   $0
    call    exit


