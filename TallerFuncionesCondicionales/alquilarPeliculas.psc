SubProceso res<-captura(mensaje) 
	Definir res Como Caracter;
	Escribir mensaje;
	res<-mensaje;
FinSubProceso

SubProceso pelis(res Por Referencia)
	Definir p1,p2,p3 Como Caracter;
	p1<-'Matrix';
	p2<-'Lucy';
	p3<-'Fenix';	
	res[0]<-captura(p1);
	res[1]<-captura(p2);
	res[2]<-captura(p3);
FinSubProceso

SubProceso alquilarPelicula(nombrePelicula, nombreCliente, numeroContacto, numeroTarjeta)
	Definir p Como Caracter;
	Dimension p[3];
	pelis(p);
	Limpiar Pantalla;
	
	Si ((nombrePelicula = p[0]) O (nombrePelicula = p[1]) O (nombrePelicula = p[2])) Entonces
		
		Escribir 'Los datos nombre de la pel�cula: ', nombrePelicula,', nombre: ', nombreCliente, ', n�mero de contacto: ', numeroContacto, ', n�mero de tarjeta: ', numeroTarjeta, ' se registraron satisfactoriamente.';
	SiNo
		Escribir 'Lo sentimos, la pel�cula no esta disponible en el momento.';
	FinSi
FinSubProceso

SubProceso devolverPelicula(nombrePelicula, novedad)
	Definir p Como Caracter;
	Dimension p[3];
	pelis(p);
	Limpiar Pantalla;
	Si ((nombrePelicula = p[0]) O (nombrePelicula = p[1]) O (nombrePelicula = p[2])) Entonces		
		Escribir 'La pel�cula ', nombrePelicula,' con novedad ','�', novedad,'�',' a sido devuelta satisfactoriamente';
	SiNo
		Escribir 'La pel�cula no fue alquilada en nuestra tienda';
	FinSi
FinSubProceso


Proceso alquilerPeliculas
	Definir nombrePelicula Como Caracter;
	Definir novedad Como Caracter;
	Definir nombreCliente Como Caracter;
	Definir numeroContacto Como Entero;
	Definir numeroTarjeta Como Real;
	Definir opcion Como Entero;
	
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
				Definir p Como Caracter;
				Dimension p[3];
				Escribir 'Estas son las pel�culas disponibles: ';				
				pelis(p);
				Escribir ' ';
			2:	
				Escribir 'Nombre de la pel�cula:';
				Leer nombrePelicula;
				
				Escribir 'Digita tu nombre:';
				leer nombreCliente;
				
				Escribir 'Digita tu n�mero de contacto';
				leer numeroContacto;
				
				Escribir 'Digita tu n�mero de tarjeta';
				leer numeroTarjeta;
				alquilarPelicula(nombrePelicula, nombreCliente, numeroContacto, numeroTarjeta);
			3:
				Escribir 'Por favor ingresa el nombre de la pel�cula a devolver: ' Sin Saltar;
				Leer nombrePelicula;
				
				Escribir 'Indica si la pel�cula presenta da�os u otra novedad: ' Sin Saltar;
				leer novedad;
				devolverPelicula(nombrePelicula, novedad);
			4:
				Escribir 'La pel�cula ',nombrePelicula, ' a sido alquilada satisfactoriamente';			
				
			De Otro Modo:
				Escribir 'No es una opci�n valida';
		FinSegun
		Escribir 'Presiona enter para continuar';
		Esperar Tecla;
	Hasta Que opcion = 4;
	
FinProceso