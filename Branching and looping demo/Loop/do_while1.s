.section .rodata

    assembly_tag :
    .string "This assembly code is written by Abhi"

    list_string :
    .string "[1] Insert [2] Delete [3] Search"

    scan_string :
    .string "%d"

    insert_string :
    .string "Insert was selected"

    delete_string :
    .string "Delete was selected"

    search_string :
    .string "Search was selected"

    wrong_string :
    .string "Wrong choise"

    question_string :
    .string "Do you want to continue? Yes - [1] No - [0]"

.section .bss

    .comm   AS_choise, 4, 4
    .comm   AS_should_continue, 4, 4

.section .text
.global main
main :
    
    # Prologue for main
    pushl   %ebp
    movl    %esp, %ebp

    pushl   $assembly_tag
    call    puts
    addl    $4, %esp

do_while_body :
    pushl   $list_string 
    call    puts 
    addl    $4, %esp

    pushl   $AS_choise
    pushl   $scan_string 
    call    scanf
    addl    $8, %esp

    #Switch case translation
    movl    AS_choise, %eax
    cmpl    $1, %eax
    je      case1

    movl    AS_choise, %eax
    cmpl    $2, %eax
    je      case2

    movl    AS_choise, %eax
    cmpl    $3, %eax
    je      case3

    #default statement in switch
    pushl   $wrong_string
    call    puts
    addl    $4, %esp
    jmp     out_of_switch

case1 :
    pushl   $insert_string
    call    puts
    addl    $4, %esp
    jmp     out_of_switch

case2 :
    pushl   $delete_string
    call    puts
    addl    $4, %esp
    jmp     out_of_switch

case3 :
    pushl   $search_string
    call    puts
    addl    $4, %esp
    #jmp     out_of_switch  This statement is optional

out_of_switch :
    pushl   $question_string
    call    puts
    addl    $4, %esp

    pushl   $AS_should_continue
    pushl   $scan_string
    call    scanf
    addl    $8, %esp

    movl    AS_should_continue, %eax
    cmpl    $1, %eax
    je      while_condition

    movl    AS_should_continue, %eax
    cmpl    $0, %eax
    je     while_condition

    #if_block
    movl    $0, AS_should_continue

while_condition :
    movl    AS_should_continue, %eax
    cmpl    $1, %eax
    je      do_while_body

    # Epilogue for main
    pushl   $0
    call    exit

