  .text
  .globl main

main:

  lui $t0, 0x1000 # set up base reg
  ori $t1, 30	# $9 is acumalator
  lw $t2, 0x0($t0) # x value
  add $0, $0, $0
  # 30x
  jal multByX
  add $0, $0, $0

  # 30x - 45
  addi $t1, $t1, -45

  # 30x^2 - 45x
  jal multByX
  add $0, $0, $0
  
  # add 28
  addi $t1, $t1, 28

  jal multByX
  add $0, $0, $0
  addi $t1, $t1, -15

  # store result
  sw $t1, 0x04($t0)
  j done

done:
  ori $v0 10
  syscall

multByX:
  mult $t1, $t2 
  mflo $t1
  jr $ra

  .data
x: .word 10
poly: .word 0
