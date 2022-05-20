Proceso tablaMultiplicar
	Definir digito Como Entero;
	Definir multiplicador Como Entero;
	Definir resultado Como Entero;
	Definir i Como Entero;
	
	Escribir 'Ingrese el digito de la tabla de multiplicar que quiere crear: ';
	Leer digito;
	
	Para i <- 1 Hasta 10 Hacer
		resultado <- i*digito;
		Escribir digito,' x ', i,' = ', resultado;
	FinPara
FinProceso
