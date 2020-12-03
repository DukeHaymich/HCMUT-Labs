.data
	pi: .double 3.141592653589793
	endl: .asciiz "\n"
.text
main:
	li $v0, 7
	syscall
	mtc1 $zero, $f2
	c.lt.d $f0, $f2
	bc1t End
	ldc1 $f2, pi
	mul.d $f4, $f0, $f0
	add.d $f6, $f0, $f0
	mul.d $f12, $f6, $f2
	li $v0, 3
	syscall
	la $a0, endl
	li $v0, 4
	syscall
	mul.d $f12, $f4, $f2
	li $v0, 3
	syscall
	End: