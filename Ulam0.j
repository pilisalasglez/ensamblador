;dado un numero entero, si es par divide entre 2
;si es impar se multiplica por 3 y adiciona 1
debe terminar en 1
.class Ulam0
.super java/lang/Object

.method public static main (Ljava/lang/String;)V
.limit stack 10
.limit locals 10
   ldc 26
   istore_2

comienzo:
   
  iload_2 ; cargamos el 26
   
  iconst_1 ; constante 1
   
  if_icmpeq Terminar 
  ;si es igual vamos a terminar

   

  iload_2 ;cargamos 26
   
  iconst_2 ; constante 2
   
  irem  ;dividimos y tomamos el residuo

   

  iconst_0   ;cargamos para comparar
   
  if_icmpeq par ; si el residuo es igual a la constante vamos a par
   
 
impar:
  
  iload_2 ;cargamos lo que está en localidad 2(este caso es 26 es par, no entra aqui)
   
  iconst_3 ; constante = 3
   
  imul ;multiplicamos el numero impar x3
     
  iconst_1 ; constante=1
   
  iadd ;sumamos (practicamente es numero*3+1
     
  istore_2 ;almacenamos en la salida
    
   goto Salida ;vamos a salida
 


par:
     
  iload_2 ;cargamos el numero par 
   
  iconst_2 ; constante =2
   
  idiv ;   dividimos
   
  istore_2 ;almacenamos en la pila
   
   goto Salida ;vamos a salida


   
Salida:
      
    getstatic java/lang/System/out Ljava/io/PrintStream;
	iload_2
	invokevirtual java/io/PrintStream/println(I)V
	
	goto comienzo
   
Terminar:

	return 
	
   
.end method
   