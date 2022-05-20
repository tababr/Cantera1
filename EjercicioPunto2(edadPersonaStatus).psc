Proceso edadPersonaStatus
	Definir nombre Como Caracter;
	Definir edad Como Entero;
	
	Escribir 'Ingresa tu nombre:';
	leer nombre;
	Escribir 'Ingresa tu edad:';
	leer edad;
	
	Si edad < 18 Entonces
		Escribir nombre,' usted es un(a) niño(a)';
	SiNo
		Escribir nombre,' usted es un(a) adulto(a)';
	FinSi
FinProceso
