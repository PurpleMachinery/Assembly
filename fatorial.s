.data
	msg1: .asciiz"\nDigite um num. int.: "
	msg2: .asciiz"\n"
.text
main:
	li $v0, 4 				#$v0=4 APRESENTA MENSAGEM STRING
	la $a0, msg1			#$a0=msg1 COLOCA QUE MENSAGEM SERA APRESENTADA
	syscall					#CHAMA SYSTEMA
	
	li $v0, 5				#$v0=5 RECEBE MENSAGEM INTEIRA
	syscall					#CAHAM SYSTEMA
	
	blt $v0, 0, main 		#Loop até ser maior ou igual a zero
	bgt $v0, 10, main
	
	add $t0, $v0, 0			#$t0 = $v0
	add $t1, $t1, 1
	
	enquanto: 				#loop
	mul $t1, $t0, $t1
	sub $t0, $t0, 1 	
	bgt	$t0, 1, enquanto
	
	
	
	bne $t1, 0, one
	add $t1, $t1, 1
	one:
	
	
	
	#presentation
	li $v0, 1
	add $a0, $t1, 0
	syscall