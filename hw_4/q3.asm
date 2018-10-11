    .text
    .globl main

main:
    ## or are followed by left shift, each
    ## shift is double the amount of last shift until 16 is reached
    ori $1, $0, 0x01
    sll $2, $1, 1
    or $1, $1, $2
    sll $2, $1, 2
    or $1, $1, $2
    sll $2, $1, 4
    or $1, $1, $2
    sll $2, $1, 8
    or $1, $1, $2
    sll $2, $1, 16
    or $1, $1, $2
