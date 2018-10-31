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
   
  jal multByX # ax
  addi $0, 0

  addu $t7, $t7, $t3 # ax + b
  jal multByX # ax^2 + bx
  addi $0, 0

  addu $t7, $t7, $t4 # ax^2 + bx + c
  jal multByX
  addi $0, 0

  addu $t7, $t7, $t5 # ax^3 + bx^2 + cx + d
  sw $t7, 0x14($t0)
  j done

multByX:
  mult $t7, $t1
  mflo $t7
  jr $ra

done:
  ori $v0 10
  syscall

  .data
x: .word 2
a: .word -5
b: .word -6
c: .word 10
d: .word -12
poly: .word 0
