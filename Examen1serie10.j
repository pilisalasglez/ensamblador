.class Examen1serie10
.super java/lang/Object
; serie 2,5,7,10,12,15,17

.method public static main([Ljava/lang/String;)V
.limit stack 9
.limit locals 9

  ldc 2 ;inicio de la serie
	istore_1 ;almacenamos

  ldc 1 ;contador
  istore_2

  ldc 0
  istore_3 ; donde se almacena la suma


ciclo:
  ; condicion de terminar, cunado sea 10
  iload_2
  ldc 10
  if_icmpeq terminar

seguir:
  iload_3
  iload_1
  iadd
  istore_3

serie:
; verificamos si el contador es par o impar
  iload_2
  iconst_2
  irem
  iconst_0
  if_icmpeq par

impar:
  iload_1
  iconst_3
  iadd
  istore_1
  goto finCaso

par:
  iload_1
  iconst_2
  iadd
  istore_1
  goto finCaso

finCaso:
; incrementamos contador
  iload_2
  iconst_1
  iadd
  istore_2

  iload_1
  jsr imprimir
  goto ciclo

terminar:
; imprimimos la suma
  iload_3
  jsr imprimir
  return

imprimir:
  astore 5
  getstatic java/lang/System/out Ljava/io/PrintStream;
  swap
  invokevirtual java/io/PrintStream/println(I)V
  ret 5
.end method