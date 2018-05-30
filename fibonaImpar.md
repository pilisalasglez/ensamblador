.class public FibonacciImpar ;0,1,1,2,3,5,8....N
.super java/lang/Object

.method public static main([Ljava/lang/String;)V
.limit stack 8
.limit locals 8

	ldc 0 ;cargamos el 0
	istore_1 ;guardamos el bajo
	ldc 1
	istore_2 ;alto
	ldc 34 ;ultimo termino para terminar el  programa(mayor o igual a N)
	istore 4

	iload_1
	jsr imprimir
	iload_2
	jsr imprimir

	ciclo:

		;condicion de terminacion
		iload_2
		iload 4
		if_icmpge terminar



		iload_1
		iload_2
		iadd
		istore_3 ;siguiente alto

seguir:
		iload_3
		; jsr imprimir
		iconst_2
		irem
		iconst_0
		if_icmpeq esPar

		esImpar:
			 iload_3
			 jsr imprimir
			 ; jsr esPar


		;Reorganizar las variables
		;bajo = alto anterior
		;alto = siguiente alto
		esPar:
		iload_2
		istore_1
		iload_3
		istore_2

	goto ciclo

	terminar:
		return

	imprimir:
		astore 5
		getstatic java/lang/System/out Ljava/io/PrintStream;
		swap
		invokevirtual java/io/PrintStream/println(I)V
		ret 5


.end method
