SubProceso vehiculo()
	Definir placa0, placa1 Como Caracter;
	Definir marca0 Como Caracter;
	Definir nombre0 Como Caracter;
	Definir retirar Como Caracter;
	Definir telefono0 Como Real;
	Definir opcion Como Entero;
	Definir cantidad Como Entero;
	Definir i Como Entero;
	
	Repetir
		Limpiar Pantalla;
		Escribir 'Bienvenido al parqueadero El Guardi�n';
		Escribir '';
		Escribir '1. Ingresar veh�culo';
		Escribir '2. Consultar veh�culo';
		Escribir '3. Retirar veh�culo';
		Escribir '4. Salir del sistema';
		Leer opcion;
		
		Segun opcion Hacer
			1:	
				Escribir '�Cuantos vehiculos va a ingresar?';
				Leer cantidad;
				
				Si cantidad <= 5 Entonces
					Para i<-1 Hasta cantidad Con Paso 1 Hacer
						Escribir Sin Saltar 'Placa: ';
						Leer placa0;
						Escribir Sin Saltar 'Marca: ';
						Leer marca0;
						Escribir Sin Saltar 'Nombre propietario: ';
						Leer nombre0;
						Escribir Sin Saltar'Telefono: ';
						Leer telefono0;
						Escribir 'Se ingreso el veh�culo';
					FinPara
				SiNo
					Escribir 'Solo se pueden ingresar 5 veh�culos';
				FinSi			
			2:				
				Escribir 'Ingrese la placa del veh�culo para validar si se encuentra en el parqueadero';
				Escribir 'Placa: ';
				Leer placa1;
				
				Si placa0 = placa1 Entonces
					Escribir 'El veh�culo ', marca0,' a nombre de ', nombre0,' se encuentra en el parqueadero';
				SiNo
					Escribir 'El veh�culo con placa ', placa1,' no se encuentra en el parqueadero';
				FinSi
			3:	
				Escribir Sin Saltar 'Ingresa la placa del veh�culo a retirar: ';
				Leer placa1;
				
				Si placa1 = placa0 Entonces
					placa0 <- 'Retirado';
					Escribir 'El vehiculo ', marca0,' a sido retirado';
				SiNo
					Escribir 'Error, la placa no coincide con los registros';
				FinSi
			4:
				Escribir '�Desea salir del sistema?';
			De Otro Modo:
				Escribir 'No es una opci�n valida';
		FinSegun
		Escribir 'Presiona enter para continuar';
		Esperar Tecla;
	Hasta Que opcion = 4;
FinSubProceso

Proceso parqueaderoElGuardian
	vehiculo();
FinProceso
