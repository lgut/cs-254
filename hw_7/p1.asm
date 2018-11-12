  .text
  .globl main

main:
  lui $t0, 0x1000 # base register
  lw $t1, 0($t0)
  addi $0, 0
  bgez $t1, sqr
  addi $0, 0
  ori $t2, 2
  mult	$t1, $t2
  mflo	$t1
  sw $t1, 0($t0)
  j done
  addi $0, 0

sqr:
  mult $t1, $t1
  mflo $t1
  sw $t1, 0($t0)
done:
  addi $0, 0

  .data
x: .word 2