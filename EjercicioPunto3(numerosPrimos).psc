Proceso numerosPrimos
	Definir x, contador, dato Como Entero;
	
	Para dato <- 1 hasta 1000 Hacer
		x<-1;
		contador<-0;
		
		Mientras x <= dato Hacer
			Si dato % x = 0 Entonces
				contador<-contador+1;
			FinSi
			x<-x+1;
		FinMientras
		
		Si contador = 2 Entonces
			Escribir dato, ' es primo';
		FinSi
		
	FinPara
FinProceso
