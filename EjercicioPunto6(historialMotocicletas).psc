Proceso historialMotocicletas
	Definir fechaEntrada Como Caracter;
	Definir fechaSalida Como Caracter;
	Definir observacion0 Como Caracter;
	Definir novedades Como Caracter;
	Definir marcaM0 Como Caracter;
	Definir cantidadMotocicletas Como Entero;
	Definir opcion Como Entero;
	Definir mecanico Como Caracter;
	Definir nombrePropietario Como Caracter;
	Definir idPropietario Como Entero;
	Definir numeroContactoPro Como Entero;
	Definir marcaRetiro Como Caracter;
	
	mecanico <- 'Jorge Robledo';
	
	Repetir
		Limpiar Pantalla;
		Escribir 'Bienvenido al taller [El maquinista]';
		Escribir '';
		Escribir 'Elige una opcion';
		Escribir '1. Registro ingreso motocicleta';
		Escribir '2. Registro salida motocicleta';
		Escribir '3. Historial arreglo por mecánico';
		Escribir '4. Confirmar salida del sistema';
		Leer opcion;
		
		Segun opcion Hacer
			1:
				Escribir 'Solo se pueden ingresar una moto por persona';
				Escribir 'Ingresa la cantidad de motos a ingresar al taller:';
				Leer cantidadMotocicletas;
				
				Si cantidadMotocicletas = 1 Entonces
					Escribir Sin Saltar 'Fecha de ingreso:';
					Leer fechaEntrada;
					
					Escribir Sin Saltar 'Marca de la motocicleta:';
					Leer marcaM0;
					
					Escribir Sin Saltar 'Ingresa nombre del propietario:';
					Leer nombrePropietario;
					
					Escribir Sin Saltar 'Id del propietario:';
					Leer idPropietario;
					
					Escribir Sin Saltar 'Número de contacto del propietario:';
					Leer numeroContactoPro;
					
					Escribir Sin Saltar 'Observaciones del propietario:';
					Leer observacion0;
					Escribir '';
					Escribir 'La motocicleta a sido ingresada al taller el día: ', fechaEntrada;
				SiNo
						Escribir 'La cantidad de motos a ingresar supera el limite establecido';
				FinSi				
			2:
				Escribir 'Indica la marca de la motocicleta a retirar:';
				Leer marcaRetiro;
				Si marcaRetiro = marcaM0 Entonces
					Escribir Sin Saltar 'Indica la fecha de salida:';
					Leer fechaSalida;
					Escribir Sin Saltar 'Digita las novedades si existen:';
					Leer novedades;
					Escribir '';
					Escribir Sin Saltar 'La motocicleta ', marcaRetiro, ' a sido retirada del taller el día ',fechaSalida,' con novedad de: ', novedades;
				SiNo
					Escribir 'La motocicleta no se ingreso a nuestro taller';
				FinSi
			3:
				Si cantidadMotocicletas = 1 Entonces
					Escribir ' Él mecánico ',mecanico, ' reparo ', cantidadMotocicletas, ' motocicleta(s) el día de hoy.';
					Escribir '';
					Escribir 'Arreglos echo por el mecánico: ', mecanico;
					Escribir novedades;
				FinSi
				
			4:	
				Escribir '¿Desea salir del sistema?';
			De Otro Modo:
				Escribir 'No es una opción valida';
		FinSegun
		Escribir 'Presiona enter para continuar';
		Esperar Tecla;
	Hasta Que opcion = 4;
	
FinProceso
