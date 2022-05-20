Proceso cicloRepetirArbol	
	Definir f Como Entero;
	Definir c Como Entero;
	Definir i Como Entero;
	Definir j Como Entero;
	
	f <- 1;
	j <- 2;
	
	Repetir
		c <- 0;
		
		
		Si f < 12 Entonces
			Repetir
				c <- c + 1;
				
				Si (c <= (20/2)- f + 1) o (c >= (20/2)+ f + 1) Entonces
					Escribir Sin Saltar " ";
				FinSi
				
				Si (c > (20/2)- f + 1) Y (c < (20/2)+ f + 1) Entonces
					Escribir Sin Saltar "*";
				FinSi
				
				Si c = 21 Entonces
					Escribir " ";
				FinSi
				
			Hasta Que c = 21;
			
		FinSi
		
		Si f = 12 Entonces
			i <- 2;
			
			Repetir
				c <- c + 1;
				
				Si (c <= (20/2)- i + 1) o (c >= (20/2)+ i + 1) Entonces
					Escribir Sin Saltar " ";
				FinSi
				
				Si (c > (20/2)- i + 1) Y (c < (20/2)+ i + 1) Entonces
					Escribir Sin Saltar "*";
				FinSi
				
				Si c = 21 Entonces
					Escribir " ";
				FinSi
				
			Hasta Que c = 21;
			
		FinSi
		
		Si f > 12 Entonces
			
			Repetir
				c <- c + 1;
				
				Si (c <= (20/2)- j + 1) o (c >= (20/2)+ j + 1) Entonces
					Escribir Sin Saltar " ";
				FinSi
				
				Si (c > (20/2)- j + 1) Y (c < (20/2)+ j + 1) Entonces
					Escribir Sin Saltar "*";
				FinSi
				
				Si c = 21 Entonces
					Escribir " ";
				FinSi
				
			Hasta Que c = 21
			
			j <- j + 1;
		FinSi
		
		f <- f + 1;
	Hasta Que f = 16;	
FinProceso
