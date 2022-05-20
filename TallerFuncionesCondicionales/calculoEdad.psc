SubProceso validacion(nombre, edad)
	Si ConvertirANumero(edad) >= 18 Entonces
		Escribir nombre,' usted es mayor de edad';
	SiNo
		Escribir nombre,' usted es menor de edad';
	FinSi
FinSubProceso

Proceso calculoEdad
	Definir nombre, edad Como Caracter;
	Escribir 'Nombre';
	leer nombre;
	Escribir 'Edad';
	Leer edad;
	validacion(nombre, edad);
	
FinProceso
