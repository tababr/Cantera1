Proceso edadPersona
	Definir nombre Como Caracter;
	Definir edad Como Entero;
	
	Escribir 'Ingresa tu nombre:';
	leer nombre;
	Escribir 'Ingresa tu edad:';
	leer edad;
	
	Si edad >= 18 Entonces
		Escribir nombre,' usted es mayor de edad';
	SiNo
		Escribir nombre,' usted es menor de edad';
	FinSi
FinProceso
