SubProceso transaccionIng(ingresos)
	Si ingresos < 0 Entonces
		Escribir 'El ingreso no puede ser negativo';
	SiNo
		Escribir 'Transacción exitosa';					
	FinSi
FinSubProceso

SubProceso transaccionRet(retiros)
	Definir titular Como Caracter;
	Definir cantidad Como Entero;
	titular <- 'Guillermo López';
	cantidad <- 500000;
	
	Si retiros > cantidad Entonces
		Escribir 'Lo sentimos, su cuenta no puede quedar en 0';
	FinSi
FinSubProceso

Proceso cuentaBanco
	Definir titularConsulta Como Caracter;
	Definir titular Como Caracter;
	Definir cantidad Como Entero;
	Definir ingresos Como Entero;
	Definir retiros Como Entero;
	Definir saldo Como Entero;
	Definir opcion Como Entero;
	
	titular <- 'Guillermo López';
	cantidad <- 500000;
	
	Repetir
		Limpiar Pantalla;
		Escribir 'Bienvenido a Su Banco Fiel';
		Escribir '';
		Escribir 'Elige una opcion';
		Escribir '1. Realizar ingresos';
		Escribir '2. Realizar retiros';
		Escribir '3. Realizar consultas de valor';
		Escribir '4. Confirmar salida del sistema';
		Leer opcion;
		Segun opcion Hacer
			1:
				Escribir 'Su saldo actual es de: ', cantidad;
				Escribir '';
				Escribir Sin Saltar 'Digitá el valor a ingresar:';
				Leer ingresos;
				transaccionIng(ingresos);
			
			2:
				Escribir Sin Saltar 'Digitá el valor a retirar:';
				Leer retiros;
				transaccionRet(retiros);
			3:
				Escribir 'Saldo disponible: ', cantidad;
				saldo <- ingresos+cantidad;
				Escribir 'Saldo disponible con ingresos: ', saldo;
				Escribir '';
				saldo <- (cantidad-retiros);
				Escribir 'Saldo disponible con retiros: ',saldo;
			4:
				Escribir '¿Desea salir del sistema?';
			De Otro Modo:
				Escribir 'No es una opción valida';
		FinSegun
		Escribir 'Presiona enter para continuar';
		Esperar Tecla;
	Hasta Que opcion = 4;
	
FinProceso
