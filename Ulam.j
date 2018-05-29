.class public Ulam
.super java/lang/Object

.method public static main([Ljava/lang/String;)V
.limit stack 8
.limit locals 8

	iconst_0
	istore_1 ; mi contador
	
	ldc 2
	istore_2 ; numero inicial
	
CicloSerie:
		; ya termino de llegar al numero 1?
	iload_2
	iconst_1
	if_icmpeq terminar
	
Seguir:
	
	iload_2
	iconst_2
	irem
	iconst_0
	if_icmpeq esPar

esImpar:  ;si es, multiplica  3n +1
	iload_2
	iconst_3
	imul
	iconst_1
	iadd
	istore_2
	goto finCaso
	
esPar:  ;dividir n/2|
	iload_2
	iconst_2
	idiv
	istore_2
	goto  finCaso
	
finCaso:
	iload_1
	iconst_1
	iadd
	istore_1 ; actualiza mi contador de numeros
	iload_1
	jsr PrintEntero
	iload_2
	jsr PrintEntero
	
	goto CicloSerie

terminar:
	
return	
;esto es la subrutina
PrintEntero:
	astore 5	; store return-address in local variable 1
	; call System.out.println()
	getstatic java/lang/System/out Ljava/io/PrintStream;
	swap
	invokevirtual java/io/PrintStream/println(I)V
	
	ret 5		;return to the return-address in local variable 1	
	

.end method