Proceso llenarVector
	Definir dato, indice Como Entero;
	Dimension dato[5];
	
	Para indice <- 0 Hasta 4 Con Paso 1 Hacer
		Escribir 'Ingresar número' Sin Saltar;
		Leer dato[indice];
	FinPara
	
	Para indice <- 0 Hasta 4 Con Paso 1 Hacer
		Escribir '[',indice,']',' = ', dato[indice];
	FinPara
FinProceso