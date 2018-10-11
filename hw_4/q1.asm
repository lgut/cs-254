    .text
    .globl main

main: 
    
    # A
    ori $5, $0, 0xf
    # B
    ori $6, $0, 0x2

    # not B in R2
    nor $2, $6, $0
    # not A in R1
    nor $1, $5, $0

    # A or not B in R8
    or $8, $5, $2
    # Not A or B in R9
    or $9, $1, $6

    # AND of previous two calculations in R7
    and $7, $8, $9

