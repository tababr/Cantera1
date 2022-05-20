Proceso escuelaElMaestro
	Definir prueba0, prueba1, prueba2, prueba3, prueba4, prueba5, prueba6, prueba7, i Como Caracter;
	Definir nombre0, nombre1, nombre2, nombre3, nombre4, nombre5, nombre6, nombre7 Como Caracter;
	Definir exa0, exa1, exa2, exa3, exa4, exa5, exa6, exa7 Como Caracter;
	Definir opcion Como Entero;
	
	prueba0<-''; prueba1<-'';
	prueba2<-''; prueba3<-'';
	prueba4<-''; prueba5<-'';
	prueba6<-''; prueba7<-'';
	nombre0<-''; nombre1<-'';
	nombre2<-''; nombre3<-'';
	nombre4<-''; nombre5<-'';
	nombre6<-''; nombre7<-'';
	exa0<-''; exa1<-''; exa2<-'';
	exa3<-''; exa4<-''; exa5<-'';
	exa6<-''; exa7<-'';
	i<-'';
	
	Mientras i<>'3' Hacer
		Escribir 'Escuela automovilística El Maestro';
		Escribir '1. Ingresar usuario';
		Escribir '2. Consultar resultados';
		Escribir '3. Salir del sistema';
		Leer i;
		Limpiar Pantalla;
		Si i='1' Entonces
			Escribir 'Solo puede ingresar 8 usuarios';
			Escribir 'Ingresa el número en el cual desea guardar el usuario';
			Escribir Sin Saltar '1-2-3-4-5-6-7-8: ';
			Leer opcion;
			Limpiar Pantalla;
			Segun opcion Hacer
				1:
					Escribir Sin Saltar 'Nombre: ';
					Leer nombre0;
					Escribir Sin Saltar '¿Presento prueba?, ingresa si o no ';
					Leer prueba0;
					si prueba0='si' Entonces
						Escribir Sin Saltar 'Resultado del exámen ','ingresa Aprobado o No aprobado: ';						
						Leer exa0;
					FinSi
				2:
					Escribir Sin Saltar 'Nombre: ';
					Leer nombre1;
					Escribir Sin Saltar '¿Presento prueba?, ingresa si o no ';
					Leer prueba1;
					si prueba1='si' Entonces
						Escribir Sin Saltar 'Resultado del exámen ','ingresa Aprobado o No aprobado: ';	
						Leer exa1;
					FinSi
				3:
					Escribir Sin Saltar 'Nombre: ';
					Leer nombre2;
					Escribir Sin Saltar '¿Presento prueba?, ingresa si o no ';
					Leer prueba2;
					si prueba2='si' Entonces
						Escribir Sin Saltar 'Resultado del exámen ','ingresa Aprobado o No aprobado: ';	
						Leer exa2;
					FinSi
				4:
					Escribir Sin Saltar 'Nombre: ';
					Leer nombre3;
					Escribir Sin Saltar '¿Presento prueba?, ingresa si o no ';
					Leer prueba3;
					si prueba3='si' Entonces
						Escribir Sin Saltar 'Resultado del exámen ','ingresa Aprobado o No aprobado: ';	
						Leer exa3;
					FinSi
				5:
					Escribir Sin Saltar 'Nombre: ';
					Leer nombre4;
					Escribir Sin Saltar '¿Presento prueba?, ingresa si o no ';
					Leer prueba4;
					si prueba4='si' Entonces
						Escribir Sin Saltar 'Resultado del exámen ','ingresa Aprobado o No aprobado: ';	
						Leer exa4;
					FinSi
				6:
					Escribir Sin Saltar 'Nombre: ';
					Leer nombre5;
					Escribir Sin Saltar '¿Presento prueba?, ingresa si o no ';
					Leer prueba5;
					si prueba5='si' Entonces
						Escribir Sin Saltar 'Resultado del exámen ','ingresa Aprobado o No aprobado: ';	
						Leer exa5;
					FinSi
				7:
					Escribir Sin Saltar 'Nombre: ';
					Leer nombre6;
					Escribir Sin Saltar '¿Presento prueba?, ingresa si o no ';
					Leer prueba6;
					si prueba6='1' Entonces
						Escribir Sin Saltar 'Resultado del exámen ','ingresa Aprobado o No aprobado: ';	
						Leer exa6;
					FinSi
				8:
					Escribir Sin Saltar 'Nombre: ';
					Leer nombre7;
					Escribir Sin Saltar '¿Presento prueba?, ingresa si o no ';
					Leer prueba7;
					si prueba7='si' Entonces
						Escribir Sin Saltar 'Resultado del exámen ','ingresa Aprobado o No aprobado: ';	
						Leer exa7;
					FinSi
				De Otro Modo:
					Escribir 'Opción seleccionada no existe.';
					Escribir '';
			FinSegun
		FinSi
		Si i='2' Entonces
			Si prueba0='si' Entonces
				Escribir nombre0,', ',' el resultado es: ',exa0;
			FinSi
			Si prueba1='si' Entonces
				Escribir nombre1,', ',' el resultado es: ',exa1;
			FinSi
			Si prueba2='si' Entonces
				Escribir nombre2,', ',' el resultado es: ',exa2;
			FinSi
			Si prueba3='si' Entonces
				Escribir nombre3,', ',' el resultado es: ',exa3;
			FinSi
			Si prueba4='si' Entonces
				Escribir nombre4,', ',' el resultado es: ',exa4;
			FinSi
			Si prueba5='si' Entonces
				Escribir nombre5,', ',' el resultado es: ',exa5;
			FinSi
			Si prueba6='si' Entonces
				Escribir nombre6,', ',' el resultado es: ',exa6;
			FinSi
			Si prueba7='si' Entonces
				Escribir nombre7,', ',' el resultado es: ',exa7;
			FinSi
		FinSi
	FinMientras
FinProceso
