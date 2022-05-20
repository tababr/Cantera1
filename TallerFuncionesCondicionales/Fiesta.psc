SubProceso validacion(nombre,apellido1,apellido2,edad)
	Si ConvertirANumero(edad) > 18 Entonces
		Escribir nombre,' ',apellido1,' ', apellido2,' usted es mayor de edad, puede entrar a la fiesta';
	SiNo
		Escribir nombre,' ',apellido1,' ', apellido2,' usted es menor de edad, no puede entrar a la fiesta';
	FinSi
FinSubProceso


Proceso Fiesta
	Definir nombre, apellido1, apellido2, edad Como Caracter;
	
	Escribir 'Ingresa tu nombre:';
	Leer nombre;
	Escribir 'Ingresa tu primer apellido:';
	Leer apellido1;
	Escribir 'Ingresa tu segundo apellido:';
	Leer apellido2;
	Escribir 'Ingresa tu edad:';
	Leer edad;
	validacion(nombre,apellido1,apellido2,edad);
	
FinProceso
