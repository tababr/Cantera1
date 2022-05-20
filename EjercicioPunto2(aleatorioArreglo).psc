Proceso aleatortioArreglo
	Definir dato, num, i Como Entero;
	Dimension dato[20];
	
	num<-0;
	Escribir 'Datos generados de 1-100 aleatoriamente:';
	Mientras  num <= 19 Hacer
		dato[num]<-azar(100)+1;
		Escribir dato[num],',' Sin Saltar;
		num <- num+1;
	FinMientras
	Escribir '';
	Escribir  '------------------------------------------------------------';
	Escribir 'Números pares:';
	Para num<-0 Hasta 19 Con Paso 1 Hacer
		Si dato[num] % 2 = 0 Entonces
			Escribir dato[num],',' Sin Saltar;
		FinSi		
	FinPara
	Escribir '';
	Escribir  '------------------------------------------------------------';
	Escribir 'Números impares:';
	Para num<-0 Hasta 19 Con Paso 1 Hacer
		Si dato[num] % 2 = 1 Entonces
			Escribir dato[num],',' Sin Saltar;
		FinSi		
	FinPara
	Escribir '';	
FinProceso
