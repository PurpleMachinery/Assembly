.data
	msg1: .asciiz"\nDigite um num. int.: "
	msg2: .asciiz"\nPar"
	msg3: .asciiz"\nImpar"
.text
main:
	#inicio
	li $v0, 4				#atribuicao de cadeia de caracteres $v0 = 4
	la $a0, msg1 			#atribuicao de cadeia de caracteres $a0 = msg1
	syscall					#chamada de sistema 
	li $v0, 5				#leitura de inteiro
	syscall					#chamada de sistema 
	add $t0, $v0, $zero		#coloca o valor de $v0 usando $t0 = $v0 + 0
	rem $t1, $t0, 2			#$t1 = $t0 mod 2
	
	#testes
	beq $t1, 0, se			#braches equals ##t1 == 0 pula para se
	bne $t1, 0, senao		#branches not equals ##t1 != 0 pula para senao
	
	#processos
	se:						#label se
		li $v0, 4				#atribui a $v0 = 4
		la $a0, msg2			#atribui a $a0 = msg2
		syscall					#chamada do sistema 
	j fim					#pula pro fim
	senao:					#label senao
		li $v0, 4				#atribui a $v0 = 4
		la $a0, msg3			#atribui a $a0 = msg3
		syscall					#chamada do sistema
	j fim					#pula pro fim
	fim:					#famoso fim	
	j main					#ou sera que nao