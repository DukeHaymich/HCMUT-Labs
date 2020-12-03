.data
	fArr: .float 12.12, 13.13, 17.17, 18.18, 19.19, 14.14, 15.15, 16.16, 0.0, 1.1, 2.2, 3.3, 4.4, 5.5, 6.6, 7.7, 8.8, 9.9, 10.1, 11.11
	endl: .asciiz "\n"
	zero: .float 0
.text
main:
	li $t0, 4
	li $t1, 80
	la $t2, fArr
	l.s $f11, zero
	l.s $f0, 0($t2)
	l.s $f1, 0($t2)
	Bfor:
	slt $t3, $t0, $t1
	beqz $t3, Efor
	add $t4, $t2, $t0
	l.s $f2, 0($t4)
	c.le.s $f2, $f0
	bc1f minElse
	add.s $f0, $f2, $f11
	minElse:
	c.le.s $f1, $f2
	bc1f maxElse
	add.s $f1, $f2, $f11
	maxElse:
	addi $t0, $t0, 4
	j Bfor
	Efor:
	add.s $f12, $f0, $f11
	li $v0, 2
	syscall
	la $a0, endl
	li $v0, 4
	syscall
	add.s $f12, $f1, $f11
	li $v0, 2
	syscall