Proceso cicloMientrasFiguraInvertida
	Definir global Como Entero;
	Definir espacio Como Entero;
	Definir asterisco Como Entero;
	
	global <- 10;
	
	Mientras global >= 1 Hacer
		espacio <- 1;
		//Se pintan los espacios en blanco, siempre y cuando se cumpla la condición
		Mientras espacio <= global hacer			
			Escribir Sin Saltar " " ;
			espacio <- espacio+1;
		FinMientras
		
		asterisco <- 10;
		//Se pintan los astericos para formar la figura, siempre y cuando se cumpla la condición
		Mientras asterisco >= global Hacer
			Escribir  "*" Sin Saltar;
			asterisco <- asterisco-1;
		FinMientras
		
		Escribir "";
		//Se le resta a global uno en cada ejecución
		global <- global - 1;		
	FinMientras	
FinProceso
