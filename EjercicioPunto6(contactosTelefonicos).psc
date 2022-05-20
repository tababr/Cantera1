Proceso contactosTelefonicos
	
	Definir nombre, nombre1, nombre2, nombre3 Como Caracter;;
	Definir organizacion, organizacion1, organizacion2, organizacion3 Como Caracter;
	Definir tel, tel1, tel2, tel3, opcion Como Entero;
	
	tel1 <- 0;
	tel2 <- 0;
	tel3 <- 0;
	
	Repetir
		Escribir "Bienvenido, Seleccione una opción:";
		Escribir "1. Añadir contacto";
		Escribir "2. Consultar contactos";
		Escribir "3. Eliminar contacto";
		Escribir "4. Salir del sistema";
		Leer opcion;
		
		Limpiar Pantalla;
		
		Segun opcion Hacer
			1:
				Escribir sin saltar "Número de telefono:";
				Leer tel;
				Si tel <> tel1 Y tel <> tel2 Y tel <> tel3 Entonces
					Si tel1 = 0 Entonces
						tel1 <- tel;
						Escribir sin saltar "Nombre del contacto";
						Leer nombre;
						nombre1 <- nombre;
						Escribir sin saltar "Organización del contacto";
						Leer organizacion;
						organizacion1 <- organizacion;
						Limpiar Pantalla;
						Escribir "Contacto almacenado correctamente";
						Escribir "";
					Sino Si tel2 = 0 Entonces
							tel2 <- tel;
							Escribir sin saltar "Nombre del contacto";
							Leer nombre;
							nombre2 <- nombre;
							Escribir sin saltar "Organización del contacto";
							Leer organizacion;
							organizacion2 <- organizacion;
							Limpiar Pantalla;
							Escribir "Contacto almacenado correctamente";
							Escribir "";
						SiNo Si tel3 = 0 Entonces
								tel3 <- tel;
								Escribir sin saltar "Nombre del contacto";
								Leer nombre;
								nombre3 <- nombre;
								Escribir sin saltar "Organización del contacto";
								Leer organizacion;
								organizacion3 <- organizacion;
								Limpiar Pantalla;
								Escribir "Contacto almacenado correctamente";
								Escribir "";
							SiNo
								Escribir "Solo se permite agregar (3) contactos, elimine alguno para poder ingresar uno nuevo";
							FinSi
						FinSi
					FinSi
				SiNo
					Escribir "El numero de contacto ya existe";
					Escribir "";
				FinSi
				
			2: 
				Si tel1 <> 0 Entonces
					Escribir "Contacto 1:";
					Escribir "   ", "- Teléfono: " , tel1;
					Escribir "   ", "- Nombre: " , nombre1;
					Escribir "   ", "- Organización: " , organizacion1;
				SiNo
					Escribir "Contacto 1: Vacio";
				FinSi
				Si tel2 <> 0 Entonces
					Escribir "Contacto 2:";
					Escribir "   ", "- Teléfono: " , tel2;
					Escribir "   ", "- Nombre: " , nombre2;
					Escribir "   ", "- Organización: " , organizacion2;
				SiNo
					Escribir "Contacto 2: Vacio";
				FinSi
				Si tel3 <> 0 Entonces
					Escribir "Contacto 3:";
					Escribir "   ", "- Teléfono: " , tel3;
					Escribir "   ", "- Nombre: " , nombre3;
					Escribir "   ", "- Organización: " , organizacion3;
				SiNo
					Escribir "Contacto 3: Vacio";
				FinSi
				Escribir "";
			3: 
				Escribir "Ingrese el número a eliminar";
				Leer tel;
				Si tel = tel1 Entonces
					tel1 <- 0;
					nombre1 <- "";
					organizacion1 <- "";
					Escribir "Contacto eliminado";
					Escribir "";
				SiNo Si tel = tel2  Entonces
						tel2 <- 0;
						nombre2 <- "";
						organizacion2 <- "";
						Escribir "Contacto eliminado";
						Escribir "";
					SiNo Si tel = tel3 Entonces
							tel3 <- 0;
							nombre3 <- "";
							organizacion3 <- "";
							Escribir "Contacto eliminado";
							Escribir "";
						SiNo
							Escribir "El número ingresado no existe";
							Escribir "";
						FinSi
					FinSi
				FinSi
			4:
				Escribir "¿Desea salir del sistema?";
			De Otro Modo:
				Escribir "No es una opción valida";				
		FinSegun		
	Hasta Que 	opcion = 4;	
FinProceso