.method public static main([Ljava/lang/String;)V
.limit stack 8
.limit locals 8

    ldc 0
	istore_1 ;bajo
    ldc 1
	istore_2 ;alto
	ldc 1
	istore_3
	ldc 21  ;ultimo termino
	istore 4

	iload_1
	jsr imprimeme
	iload_2
	jsr imprimeme

ciclo:
    ;Checar si ya terminó la serie
	iload_2
	iload 4
	if_icmpge terminar

	iload_1
	iload_2
	iadd
	istore_3 ;siguiente alto
	iload_3
	jsr imprimeme

	;reorganizar las variables
	;bajo = alto
	;alto = siguiente alto

	iload_2
	istore_1

	iload_3
	istore_2

	goto ciclo

terminar:
    return

imprimeme:
     astore 5
	 getstatic java/lang/System/out Ljava/io/PrintStream;
	 swap
	 invokevirtual java/io/PrintStream/println(I)V
	 ret 5

.end method
