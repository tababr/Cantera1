Proceso menuInfinito
	Definir opcion Como Entero;
	Definir nombre Como Caracter;
	
	Repetir
		Limpiar Pantalla;
		Escribir 'Menú de usuario';
		Escribir '';
		Escribir '1. Captura nombre';
		Escribir '2. Saludar persona';
		Escribir '3. Confirmar salida del sistema';
		Leer opcion;
		
		Segun opcion Hacer
			1:	
				Escribir Sin Saltar 'Escribe nombre: ';
				Leer nombre;
			2:				
				Escribir 'Hola ', nombre;
			3:	
				Escribir '¿Desea salir del sistema?';
			    De Otro Modo:
				Escribir 'No es una opción valida';
		FinSegun
		Escribir 'Presiona enter para continuar';
		Esperar Tecla;
	Hasta Que opcion = 3;
FinProceso
