Proceso areaGeometrica
	Definir base0 Como Real;
	Definir base1 Como Real;
	Definir altura Como Real;
	Definir area Como Real;
	Definir opcion Como Entero;
	
	Repetir
		Limpiar Pantalla;
		Escribir 'Bienvenido a geometr�a';
		Escribir '';
		Escribir 'Elige una opcion';
		Escribir '1. Calcular �rea de un rect�ngulo';
		Escribir '2. Calcular �rea de un tri�ngulo';
		Escribir '3. Calcular �rea de un trapecio';
		Escribir '4. Confirmar salida del sistema';
		Leer opcion;
		
		Segun opcion Hacer
			1:	
				Escribir 'Rect�ngulo: ';
				Escribir Sin Saltar 'Ingrese la base:';
				Leer base0;
				Escribir Sin Saltar 'Ingrese la altura';
				Leer altura;
				area <- base0*altura;
				Escribir '';
				Escribir 'El �rea del rect�ngulo es de: ', area,' cm^2';
			2:
				Escribir 'Tri�ngulo: ';
				Escribir Sin Saltar 'Ingrese la base:';
				Leer base0;
				Escribir Sin Saltar 'Ingrese la altura';
				Leer altura;
				area <- (base0*altura)/2;
				Escribir '';
				Escribir 'El �rea del tri�ngulo es de: ', area,' cm^2';
			3:
				Escribir 'Trapecio: ';
				Escribir Sin Saltar 'Ingrese la primer base:';
				Leer base0;
				Escribir Sin Saltar 'Ingrese la segunda base:';
				Leer base1;
				Escribir Sin Saltar 'Ingrese la altura';
				Leer altura;
				area <- ((base0+base1)*altura)/2;
				Escribir '';
				Escribir 'El �rea del rect�ngulo es de: ', area,' cm^2';
			4:	
				Escribir '�Desea salir del sistema?';
			De Otro Modo:
				Escribir 'No es una opci�n valida';
		FinSegun
		Escribir 'Presiona enter para continuar';
		Esperar Tecla;
	Hasta Que opcion = 4;
FinProceso
