    .text
    .globl main

main:
    ori $8, $0, 25
    ori $9, $0, 15
    sll $12, $9, 2
    addu $12, $12, $9
    sll $11, $8, 1
    addu $11, $11, $8
    subu $10, $11, $12
