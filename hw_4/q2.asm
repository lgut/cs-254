    .text
    .globl main

main:
    ori $1, $1, 0xdeff
    sll $1, $1, 16
    ori $1, 0x1234