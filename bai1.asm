.data
		cArray: .asciiz "Computer Architecture 2020"
		cArray_size: .byte 26
.text
		j main
reverse:	addi $sp, $sp, -8
		li $t0, 0
		div $t1, $a1, 2
Bfor:		slt $t2, $t0, $t1
		beqz $t2, Efor
		add $t2, $a0, $t0
		add $t3, $a0, $a1
		sub $t3, $t3, 1
		sub $t3, $t3, $t0
		lb $t4, 0($t2)
		sb $t3 
		add $t0, $t0, 1
Efor:		
