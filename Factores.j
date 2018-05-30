;  para calcular los factores menores o iguales a 50
; los factores deben ser: 50, 25, 10, 5, 2, 1
; imprime 2, 5, 10, 25
.class Factores
.super java/lang/Object

.method public static main([Ljava/lang/String;)V
.limit stack 10
.limit locals 10

	iconst_2 ; contador de terminos
	istore_1 ; guardamos en las locales posicion 1
	
	sipush 50 ; Primer elemento
	istore_2 ; guardamos en la posicion 2
	
	CicloSerie:
		iload_2 ; obtenemos el termino actual 
		iload_1  ; comparar con el 1 para ver si termina la serie
		
		if_icmpeq salir
		
		iload_2
		iload_1
		irem ; devuelve residuo de la division
		iconst_0
		
		
		if_icmpeq esPar
		
		esImpar:
		iload_1
		iconst_1  ;sumarle 1
		iadd
		istore_1
		
		goto CicloSerie
		
		esPar:
		
		getstatic java/lang/System/out Ljava/io/PrintStream;
		ldc " FACTOR: "
		invokevirtual  java/io/PrintStream/print(Ljava/lang/String;)V
		getstatic java/lang/System/out Ljava/io/PrintStream;
		iload_1
		invokevirtual java/io/PrintStream/println(I)V
		iload_1
		iconst_1
		iadd
		istore_1
		goto CicloSerie
	salir:
		
	return
.end method