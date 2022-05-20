SubProceso validacion(nombre, edad)
	Si ConvertirANumero(edad) < 18 Entonces
		Escribir nombre,' usted es un(a) niñ(o)';
	SiNo
		Escribir nombre,' usted es un(a) adulto(a)';
	FinSi
FinSubProceso

Proceso edadPersonaStatus
	Definir nombre, edad Como Caracter;
	
	Escribir 'Ingresa tu nombre:';
	leer nombre;
	Escribir 'Ingresa tu edad:';
	leer edad;
	validacion(nombre, edad);
FinProceso
