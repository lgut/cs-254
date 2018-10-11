    .text
    .globl main

main:

    ori $8, $0, 42
    sll $9, $8, 4
    add $9, $9, $8
    add $9, $9, $8
    add $9, $9, $8
    add $9, $9, $8
    addi $9, $9, -155