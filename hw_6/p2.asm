  .text
  .globl main

main:

  lui $t0, 0x1000 # set base address
  lw $t1, 0($t0) # x value
  lw $t7, 0x04($t0) # a $15 is accumalator
  lw $t3, 0x08($t0) # b
  lw $t4, 0xc($t0) # c
  lw $t5, 0x10($t0) # d
  addi $0, 0
  
  or $t7, $0, $t2
  mult $t1, $t2 # ax
  mflo $t7 # $15 is accumalator

  add $t7, $t7, $t3 # ax + b

#multByX:
#  mult 




  .data
x: .word 2
a: .word -5
b: .word -6
c: .word 10
d: .word -12
poly: .word 0
