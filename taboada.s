.data
	msg1: .asciiz"\nDigite um num. int.: "
	msg2: .asciiz"\n"
.text
main:
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	add $t0, $v0, $zero
	
	li $t2, 0
	enquanto:
		mul $t1, $t0, $t2
		add $t2, $t2, 1
		
	li $v0, 1
	add $a0, $t1, $zero
	syscall
	li $v0, 4
	la $a0, msg2
	syscall
	
	ble $t2, 10, enquanto
	