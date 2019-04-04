.data
	msg1: .asciiz"\nDigite um num. int.: "
	msg2: .asciiz"\nArea: "
.text
main:
	#inicio
	li $v0, 4				#atribuicao de cadeia de caracteres $v0 = 4
	la $a0, msg1 			#atribuicao de cadeia de caracteres $a0 = msg1
	syscall					#chamada de sistema 
	
	li $v0, 5
	syscall
	add $t0, $v0, 0
	
	li $v0, 4
	syscall
	
	li $v0, 5
	syscall
	add $t1, $v0, 0
	
	mul $t2, $t1, $t0
	li $v0, 4
	la $a0, msg2
	syscall
	li $v0, 1
	add $a0, $t2, 0
	syscall