SubProceso pro0<-captura0(mensaje) 
	Definir pro0 Como Caracter;
	Escribir mensaje;
	Leer pro0;
FinSubProceso

SubProceso agregarContacto(dato)
	Definir telefono3, telefono4, telefono5 Como Caracter;
	telefono3 <- '3156550740';	
	telefono4 <- '3116456930';
	telefono5 <- '3204502189';
	
	Limpiar Pantalla;
	Si dato[1] = telefono3 O dato[1] = telefono4 O dato[1] = telefono5 Entonces
		Escribir 'El n�mero tel�fonico de ',dato[0],' ya existe';
	SiNo
		Escribir 'Contacto creado';
		Escribir '';
		Si dato[4] = telefono3 O dato[4] = telefono4 O dato[4]= telefono5 Entonces
			Escribir 'El n�mero tel�fonico de ',dato[3],' ya existe';
		SiNo
			Escribir 'Contacto creado';
			Escribir '';
			Si dato[7] = telefono3 O dato[7] = telefono4 O dato[7] = telefono5 Entonces
				Escribir 'El n�mero tel�fonico de ',dato[6],' ya existe';
			SiNo
				Escribir 'Contacto creado';
				Escribir '';
			FinSi
		FinSi
	FinSi
FinSubProceso

SubProceso buscarContacto(dato)
	Definir buscar Como Caracter;
	Escribir Sin Saltar'Nombre del contacto a buscar:';	
	Leer buscar;
	
	Si buscar = dato[0] Entonces
		Escribir 'Nombre del contacto: ',dato[0];
		Escribir 'N�mero del contacto: ',dato[1];
		Escribir 'Organizaci�n del contacto: ',dato[2];
		Escribir '';
	SiNo
		Si buscar = dato[3] Entonces
			Escribir 'Nombre del contacto: ',dato[3];
			Escribir 'N�mero del contacto: ',dato[4];
			Escribir 'Organizaci�n del contacto: ',dato[5];
			Escribir '';
		SiNo
			Si buscar = dato[6] Entonces
				Escribir 'Nombre del contacto: ',dato[6];
				Escribir 'N�mero del contacto: ',dato[7];
				Escribir 'Organizaci�n del contacto: ',dato[8];
				Escribir '';
			SiNo
				Escribir 'Nombre no existe';
				Escribir '';
			FinSi
		FinSi
	FinSi
FinSubProceso

SubProceso imprimirContacto(cont)
	Escribir 'Nombre del contacto: ',cont[0];
	Escribir 'N�mero del contacto: ',cont[1];;
	Escribir 'Organizaci�n del contacto: ', cont[2];;
	Escribir '';
	
	Escribir 'Nombre del contacto: ',cont[3];;
	Escribir 'N�mero del contacto: ',cont[4];;
	Escribir 'Organizaci�n del contacto: ', cont[5];;
	Escribir '';
	
	Escribir 'Nombre del contacto: ',cont[6];;
	Escribir 'N�mero del contacto: ',cont[7];;
	Escribir 'Organizaci�n del contacto: ', cont[8];;
	Escribir '';
FinSubProceso

SubProceso eliminarContacto(dato)
	Definir telBorrar Como Caracter;
	Escribir Sin Saltar 'Ingresa el n�mero del contacto a eliminar:';
	Leer telBorrar;
	
	Si telBorrar = dato[1] Entonces
		dato[0] <- 'Dato eliminado';
		dato[1] <- 'null';
		dato[2] <- 'Dato liminado';
		Escribir 'Nombre del contacto: ',dato[0];
		Escribir 'N�mero del contacto: ',dato[1];
		Escribir 'Organizaci�n del contacto: ',dato[2];
		Escribir '';
	SiNo
		Si telBorrar = dato[4] Entonces
			dato[3] <- 'Dato eliminado';
			dato[4] <- 'null';
			dato[5] <- 'Dato liminado';
			Escribir 'Nombre del contacto: ',dato[3];
			Escribir 'N�mero del contacto: ',dato[4];
			Escribir 'Organizaci�n del contacto: ',dato[5];
			Escribir '';
		SiNo
			Si telBorrar = dato[7] Entonces
				dato[6] <- 'Dato eliminado';
				dato[7] <- 'null';
				dato[8] <- 'Dato liminado';
				Escribir 'Nombre del contacto: ',dato[6];
				Escribir 'N�mero del contacto: ',dato[7];
				Escribir 'Organizaci�n del contacto: ',dato[8];
				Escribir '';
			SiNo					
				Escribir 'N�mero no existe';
				Escribir '';
			FinSi
		FinSi
	FinSi
FinSubProceso

Proceso contactosTelefonicos
	Definir nombre0, nombre1, nombre2, buscar Como Caracter;
	Definir organizacion0, organizacion1, organizacion2 Como Caracter;
	Definir telefono0, telefono1, telefono2, telefono3, telefono4, telefono5, telBorrar Como Real;	
	Definir opcion Como Entero;
	
	telefono3 <- 3156;
	telefono4 <- 3116;
	telefono5 <- 3204;
	
	Repetir
		Limpiar Pantalla;
		Escribir 'Contactos tel�fonicos';
		Escribir '';
		Escribir '1. Agregar contactos';
		Escribir '2. Consultar contactos';
		Escribir '3. Eliminar contactos';
		Escribir '4. Salir de la app';
		Leer opcion;
		
		Segun opcion Hacer
			1:	
				Definir pro Como Caracter;
				Dimension pro[9];
				pro[0]<-captura0('Nombre: ');
				pro[1]<-captura0('Tel�fono: ');
				pro[2]<-captura0('Empresa: ');
				pro[3]<-captura0('Nombre: ');
				pro[4]<-captura0('Tel�fono: ');
				pro[5]<-captura0('Empresa: ');
				pro[6]<-captura0('Nombre: ');
				pro[7]<-captura0('Tel�fono: ');
				pro[8]<-captura0('Empresa: ');
				agregarContacto(pro);
			2:				
				Repetir
					Escribir 'Escoje una opci�n de busqueda';
					Escribir '1. Buscar por nombre';
					Escribir '2. Mostrar todos';
					Escribir '3. Volver al men� principal';
					Escribir '';
					Leer opcion;
					
					Segun opcion Hacer
						1:
							buscarContacto(pro);							
						2:
							imprimirContacto(pro);
						3:
							Escribir '�Volver al men� principal?';
						De Otro Modo:
							Escribir 'No es una opci�n valida';
					FinSegun
				Hasta Que opcion = 3; 
			3:	
				eliminarContacto(pro);
			4:
				Escribir '�Desea salir del sistema?';
			De Otro Modo:
				Escribir 'No es una opci�n valida';
		FinSegun
		Escribir 'Presiona enter para continuar';
		Esperar Tecla;
	Hasta Que opcion = 4;
	
FinProceso
