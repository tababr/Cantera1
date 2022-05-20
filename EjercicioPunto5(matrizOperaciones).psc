Proceso matrizOperaciones	
	Definir fila, columna, i, j,f,c Como Entero;
	Definir matriz, opcion Como Entero;
	Dimension matriz[10,10];
	Definir celda Como Caracter;
	
	Repetir
		Limpiar Pantalla;
		Escribir '                                ','COLUMNAS';
		Escribir '         ','0','     ','1','     ','2','     ','3','     ','4','     ','5','     ','6','     ','7','     ','8','     ','9';
		Escribir '==================================================================';
		Escribir 'F','   ','0','|','  ','1x1','   ','2x1','   ','3x1','   ','4x1','   ','5x1','   ','6x1','   ','7x1','   ','8x1','   ','9x1','  ','10x1';
		Escribir 'I','   ','1','|','  ','1x2','   ','2x2','   ','3x2','   ','4x2','   ','5x2','   ','6x2','   ','7x2','   ','8x2','   ','9x2','  ','10x2';
		Escribir 'L','   ','2','|','  ','1x3','   ','2x3','   ','3x3','   ','4x3','   ','5x3','   ','6x3','   ','7x3','   ','8x3','   ','9x3','  ','10x3';
		Escribir 'A','   ','3','|','  ','1x4','   ','2x4','   ','3x4','   ','4x4','   ','5x4','   ','6x4','   ','7x4','   ','8x4','   ','9x4','  ','10x4';
		Escribir 'S','   ','4','|','  ','1x5','   ','2x5','   ','3x5','   ','4x5','   ','5x5','   ','6x5','   ','7x5','   ','8x5','   ','9x5','  ','10x5';
		Escribir ' ','   ','5','|','  ','1x6','   ','2x6','   ','3x6','   ','4x6','   ','5x6','   ','6x6','   ','7x6','   ','8x6','   ','9x6','  ','10x6';
		Escribir ' ','   ','6','|','  ','1x7','   ','2x7','   ','3x7','   ','4x7','   ','5x7','   ','6x7','   ','7x7','   ','8x7','   ','9x7','  ','10x7';
		Escribir ' ','   ','7','|','  ','1x8','   ','2x8','   ','3x8','   ','4x8','   ','5x8','   ','6x8','   ','7x8','   ','8x8','   ','9x8','  ','10x8';
		Escribir ' ','   ','8','|','  ','1x9','   ','2x9','   ','3x9','   ','4x9','   ','5x9','   ','6x9','   ','7x9','   ','8x9','   ','9x9','  ','10x9';
		Escribir ' ','   ','9','|','  ','1x10','  ','2x10','  ','3x10','  ','4x10','  ','5x10','  ','6x10','  ','7x10','  ','8x10','  ','9x10',' ','10x10';
		Escribir '';
		Escribir 'Ingresa una posición para saber el resultado de la operación';
		Escribir 'Ejemplo: la posicíon [fila, columna]=2,5 donde seria la operacion 6x3 y el resultado 18';
		Escribir '';
		Escribir '1. Ingresar posición';
		Escribir '2. Salir del sistema';
		leer opcion;
		
		Segun opcion Hacer
			1:
				celda <- " x ";	
				Para i <- 0 Hasta 9 Con Paso 1 Hacer
					Para j <- 0 hasta 9 Con Paso 1 Hacer
						celda <- Concatenar(ConvertirATexto(j+1),celda);
						celda <- Concatenar(celda , ConvertirATexto(i+1));
						celda <- " x ";
					FinPara
				FinPara
				
				Para i <- 0 hasta 9 Con Paso 1 Hacer
					Para j <- 0 hasta 9 Con Paso 1 Hacer
						matriz[i,j] <- (i + 1) * (j + 1);
					FinPara		
				FinPara
				
				Escribir "";
				Escribir 'Ingrese el número de la fila:';
				Leer f;
				Escribir 'Ingrese el número de la columna:';
				Leer c;
				
				Para fila<-f Hasta 9 Con Paso 1 Hacer
					Para columna<-c Hasta 9 Con Paso 1 Hacer
						Limpiar Pantalla;
						Escribir 'El resultado es: ', matriz[f,c], '' Sin Saltar;
					FinPara
					Escribir '';
				FinPara				
			2:
				Escribir '¿Desea salir del sistema?';
			De Otro Modo:
				Escribir 'No es una opción valida';
		FinSegun
		Escribir 'Presiona enter para continuar';
		Esperar Tecla;		
	Hasta Que opcion=2;	
FinProceso
