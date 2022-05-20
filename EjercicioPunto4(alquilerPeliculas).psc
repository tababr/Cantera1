Proceso alquilerPeliculas
	Definir nombrePelicula Como Caracter;
	Definir pelicula0 Como Caracter;
	Definir pelicula1 Como Caracter;
	Definir pelicula2 Como Caracter;
	Definir novedad Como Caracter;
	Definir nombreCliente Como Caracter;
	Definir numeroContacto Como Entero;
	Definir numeroTarjeta Como Real;
	Definir opcion Como Entero;
	
	pelicula0 <- 'Fenix';
	pelicula1 <- 'Matrix';
	pelicula2 <- 'Lucy';
	
	Repetir
		Limpiar Pantalla;
		Escribir 'Bienvenido a PelisPorvenir';
		Escribir 'Elige una opcion';
		Escribir '1. Pel�culas disponibles';
		Escribir '2. Alquilar pel�cula';
		Escribir '3. Devolver pel�cula en la video tienda';
		Escribir '4. Confirmar alquiler de la pel�cula';
		Leer opcion;
		
		Segun opcion Hacer
			1:
				Escribir 'Actualmente tenemos 3 pel�culas disponibles:';
				Escribir '1.', pelicula0;
				Escribir '2.', pelicula1;
				Escribir '3.', pelicula2;
				Escribir '';
				Escribir 'Ingresa en Alquilar pel�cula para continuar con el proceso';
			2:	
				Escribir 'Nombre de la pel�cula:';
				Leer nombrePelicula;
				Si ((nombrePelicula = pelicula0) O (nombrePelicula = pelicula1) O (nombrePelicula = pelicula2)) Entonces
					
					Escribir 'Digita tu nombre:';
					leer nombreCliente;
					
					Escribir 'Digita tu n�mero de contacto';
					leer numeroContacto;
					
					Escribir 'Digita tu n�mero de tarjeta';
					leer numeroTarjeta;
					
					Escribir 'Los datos nombre de la pel�cula: ', nombrePelicula,', nombre: ', nombreCliente, ', n�mero de contacto: ', numeroContacto, ', n�mero de tarjeta: ', numeroTarjeta, ' se registraron satisfactoriamente.';
				SiNo
					Escribir 'Lo sentimos, la pel�cula no esta disponible en el momento.';
				FinSi
			3:
				Escribir 'Por favor ingresa el nombre de la pel�cula a devolver:';
				Leer nombrePelicula;
				
				Si ((nombrePelicula = pelicula0) O (nombrePelicula = pelicula1) O (nombrePelicula = pelicula2)) Entonces
					
					Escribir 'Indica si la pel�cula presenta da�os u otra novedad';
					leer novedad;
					
					Escribir 'La pel�cula ', nombrePelicula,' a sido devuelta satisfactoriamente';
				SiNo
					Escribir 'La pel�cula no fue alquilada en nuestra tienda';
				FinSi
			4:
				Escribir 'La pel�cula ',nombrePelicula, ' a sido alquilada satisfactoriamente';			
				
			De Otro Modo:
				Escribir 'No es una opci�n valida';
		FinSegun
		Escribir 'Presiona enter para continuar';
		Esperar Tecla;
	Hasta Que opcion = 4;	
FinProceso
