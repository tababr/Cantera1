Proceso validacionFiesta
	Definir nombre Como Caracter;
	Definir apellido1 Como Caracter;
	Definir apellido2 Como Caracter;
	Definir edad Como Entero;
	
	Escribir 'Ingresa tu nombre:';
	Leer nombre;
	Escribir 'Ingresa tu primer apellido:';
	Leer apellido1;
	Escribir 'Ingresa tu segundo apellido:';
	Leer apellido2;
	Escribir 'Ingresa tu edad:';
	Leer edad;
	
	Si edad >= 18 Entonces
		Escribir nombre,' ',apellido1,' ', apellido2,' usted es mayor de edad, puede entrar a la fiesta';
	SiNo
		Escribir nombre,' ',apellido1,' ', apellido2,' usted es menor de edad, no puede entrar a la fiesta';
	FinSi
FinProceso
