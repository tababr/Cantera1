SubProceso res<-captura(mensaje) 
	Definir res Como Caracter;
	Escribir mensaje;
	Leer res;
FinSubProceso

SubProceso enviaDatos(res Por Referencia)
	res[0]<-captura('Fecha de ingreso: ');
	res[1]<-captura('Marca de la motocicleta: ');
	res[2]<-captura('Ingresa nombre del propietario: ');
	res[3]<-captura('Id del propietario: ');
	res[4]<-captura('Número de contacto del propietario: ');
	res[5]<-captura('Observaciones del propietario: ');
FinSubProceso

SubProceso registroMt(cantidadMotocicletas)
	Definir p Como Caracter;
	Dimension p[6];
	Si ConvertirANumero(cantidadMotocicletas) = 1 Entonces
		enviaDatos(p);
		Limpiar Pantalla;
		Escribir 'La motocicleta a sido ingresada al taller el día: ', p[0];
	SiNo
		Escribir 'La cantidad de motos a ingresar supera el limite establecido';
	FinSi	
FinSubProceso
	
SubProceso salidaMt(marcaRetiro)
	Definir fechaSalida, novedades, m1, m2, m3, m4 Como Caracter;
	m1<-'Akt';
	m2<-'Suzuki';
	m3<-'Honda';
	m4<-'Yamaha';
		
	Si marcaRetiro = m1 O marcaRetiro = m2 O  marcaRetiro = m3 O  marcaRetiro = m4  Entonces
		Escribir Sin Saltar 'Indica la fecha de salida:';
		Leer fechaSalida;
		Escribir Sin Saltar 'Digita las novedades si existen:';
		Leer novedades;
		Escribir '';
		Escribir Sin Saltar 'La motocicleta ', marcaRetiro, ' a sido retirada del taller el día ',fechaSalida,' con novedad de: ', novedades;
	
	SiNo
		Escribir 'La motocicleta no se ingreso a nuestro taller';
	FinSi
FinSubProceso

Proceso historialMotocicletas
	Definir novedades Como Caracter;
	Definir cantidadMotocicletas Como Caracter;
	Definir opcion Como Entero;
	Definir mecanico Como Caracter;
	Definir nombrePropietario Como Caracter;
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
				registroMt(cantidadMotocicletas);
			2:
				Escribir 'Indica la marca de la motocicleta a retirar:';
				Leer marcaRetiro;
				salidaMt(marcaRetiro);
			3:
				Si ConvertirANumero(cantidadMotocicletas) = 1 Entonces
					Escribir ' Él mecánico ',mecanico, ' reparo ', cantidadMotocicletas, ' motocicleta(s) el día de hoy.';
					Escribir '';
					Escribir 'Arreglos echo por el mecánico: ', mecanico;
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
