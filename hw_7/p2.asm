  .text
  .globl main

main:
  lui $t0, 0x1000
  lw $t1, 0($t0) # x
  lw $t2 4($t0) # y
  addi $0, 0
  slt $t3, $t1, $t2
  addi $0, 0
  beq		$0 , $t3, storeY
  addi $0, 0
  sw	$t1, 8($t0)
  j done
  addi $0, 0

storeY:	
  sw	$t2, 8($t0)
done:
  addi $0, 0

  .data
x: .word 10
y: .word 5
min: .word 0