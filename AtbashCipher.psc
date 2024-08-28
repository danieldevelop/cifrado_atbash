Funcion texto_encriptrar <- encriptar(cadena_usuario, alfabetoX, alfabetoY)
	texto_encriptrar <- ""
	
	para i <- 0 hasta Longitud(cadena_usuario) con paso 1 hacer
		letra_actual <- Subcadena(cadena_usuario, i, i)
		
		si (letra_actual >= "A" Y letra_actual <= "Z") Entonces
			para j <- 0 hasta Longitud(alfabetoX) con paso 1 Hacer
				si (letra_actual = subcadena(alfabetoX, j, j)) Entonces
					texto_encriptrar <- Concatenar(texto_encriptrar, subcadena(alfabetoY, j, j))
					j <- Longitud(alfabetoX) // Para salir del bucle
				FinSi
			FinPara
		SiNo
			texto_encriptrar <- Concatenar(texto_encriptrar, letra_actual)
		FinSi
 	FinPara

FinFuncion

Funcion texto_desencriptado <- desencriptar(cadena_usuario, alfabetoX, alfabetoY)
	texto_desencriptado <- ""
	
	para i <- 0 hasta Longitud(cadena_usuario) con paso 1 hacer
		letra_actual <- Subcadena(cadena_usuario, i, i)
		
		si (letra_actual >= "A" Y letra_actual <= "Z") Entonces
			para j <- 0 hasta Longitud(alfabetoY) con paso 1 Hacer
				si (letra_actual = subcadena(alfabetoY, j, j)) Entonces
					texto_desencriptado <- Concatenar(texto_desencriptado, subcadena(alfabetoX, j, j))
					j <- Longitud(alfabetoY) // Para salir del bucle
				FinSi
			FinPara
		SiNo
			texto_encriptrar <- Concatenar(texto_desencriptado, letra_actual)
		FinSi
 	FinPara
	
FinFuncion


Algoritmo AtbashCipher
	
	alfabetoX <- "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
	alfabetoY <- "ZYXWVUTSRQPONMLKJIHGFEDCBA"
	
	escribir sin saltar "Ingrese un texto cualquiera: "
	leer txt
	txt <- Mayusculas(txt)
	
	Escribir "" // salto de linea
	escribir "Texto ", txt, " encriptado: ", encriptar(txt, alfabetoX, alfabetoY)
	escribir "Texto ", encriptar(txt, alfabetoX, alfabetoY), " desencriptado: ", desencriptar(encriptar(txt, alfabetoX, alfabetoY), alfabetoX, alfabetoY)
	
	
FinAlgoritmo
