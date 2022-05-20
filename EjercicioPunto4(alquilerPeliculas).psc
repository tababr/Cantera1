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
		Escribir '1. Películas disponibles';
		Escribir '2. Alquilar película';
		Escribir '3. Devolver película en la video tienda';
		Escribir '4. Confirmar alquiler de la película';
		Leer opcion;
		
		Segun opcion Hacer
			1:
				Escribir 'Actualmente tenemos 3 películas disponibles:';
				Escribir '1.', pelicula0;
				Escribir '2.', pelicula1;
				Escribir '3.', pelicula2;
				Escribir '';
				Escribir 'Ingresa en Alquilar película para continuar con el proceso';
			2:	
				Escribir 'Nombre de la película:';
				Leer nombrePelicula;
				Si ((nombrePelicula = pelicula0) O (nombrePelicula = pelicula1) O (nombrePelicula = pelicula2)) Entonces
					
					Escribir 'Digita tu nombre:';
					leer nombreCliente;
					
					Escribir 'Digita tu número de contacto';
					leer numeroContacto;
					
					Escribir 'Digita tu número de tarjeta';
					leer numeroTarjeta;
					
					Escribir 'Los datos nombre de la película: ', nombrePelicula,', nombre: ', nombreCliente, ', número de contacto: ', numeroContacto, ', número de tarjeta: ', numeroTarjeta, ' se registraron satisfactoriamente.';
				SiNo
					Escribir 'Lo sentimos, la película no esta disponible en el momento.';
				FinSi
			3:
				Escribir 'Por favor ingresa el nombre de la película a devolver:';
				Leer nombrePelicula;
				
				Si ((nombrePelicula = pelicula0) O (nombrePelicula = pelicula1) O (nombrePelicula = pelicula2)) Entonces
					
					Escribir 'Indica si la película presenta daños u otra novedad';
					leer novedad;
					
					Escribir 'La película ', nombrePelicula,' a sido devuelta satisfactoriamente';
				SiNo
					Escribir 'La película no fue alquilada en nuestra tienda';
				FinSi
			4:
				Escribir 'La película ',nombrePelicula, ' a sido alquilada satisfactoriamente';			
				
			De Otro Modo:
				Escribir 'No es una opción valida';
		FinSegun
		Escribir 'Presiona enter para continuar';
		Esperar Tecla;
	Hasta Que opcion = 4;	
FinProceso
