.class PromParSumImpar
.super java/lang/Object

.method public static main([Ljava/lang/String;)V

.limit stack  10
.limit locals 10

ldc 1
istore_1 ;se almacena la primera

ldc 100
istore_2 ; se almacena la segunda

;guarda la suma de los numeros impares
ldc 0
istore_3

;guarda la sumatoria de los numero pares-
fconst_0 ;fcons porque saca promedio
fstore 4

;guarda el contador de los numeros pares-
ldc 0
istore 5

;guarda el promedio de los numero pares-
fconst_0 ;declaras una constste en stack 0
fstore 6 ;guardo en el 6

ciclo:
	iload_1

numeroImpar:
	iconst_2 ; ;cargo constante
	irem   ;divide 2 enteros y toma el residuo
	ifgt sumaImpar ;ifgt= si es mayor
	goto sumaPar
  ;1/2 = 0.5 es menor por lo que es impar
	;2/2 = 1 = es mayor por lo que es par
sumaImpar:
	iload_1  ;1
	iload_3  ;aqui se guarda impares
	iadd     ;suma
	istore_3 ;se guarda el resultado
	goto inc

sumaPar:
	iload_1
	 i2f
	fload 4
	fadd
	fstore 4
	goto promedioPar

promedioPar:
	fload 4
	 iinc 5 1
	 iload 5
	 i2f
	 fdiv
	 fstore 6

inc:
	iinc 1 1 ;incrementar el contador en 1
	iload_1
	iload_2
	if_icmple ciclo
	goto terminar

terminar:

	getstatic java/lang/System/out Ljava/io/PrintStream;
	iload_3
    invokevirtual java/io/PrintStream/println(I)V

    getstatic java/lang/System/out Ljava/io/PrintStream;
	fload 4
    invokevirtual java/io/PrintStream/println(F)V

    getstatic java/lang/System/out Ljava/io/PrintStream;
	iload 5
    invokevirtual java/io/PrintStream/println(I)V

    getstatic java/lang/System/out Ljava/io/PrintStream;
	fload 6
    invokevirtual java/io/PrintStream/println(F)V

return
.end method
