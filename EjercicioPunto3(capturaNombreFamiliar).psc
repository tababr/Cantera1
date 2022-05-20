Proceso capturaNombreFamiliar
	Definir nombre Como Caracter;
	Definir nombreP Como Caracter;
	Definir nombreM Como Caracter;
	Definir apellido1 Como Caracter;
	Definir apellido2 Como Caracter;
	Definir apellidoP1 Como Caracter;
	Definir apellidoP2 Como Caracter;
	Definir apellidoM1 Como Caracter;
	Definir apellidoM2 Como Caracter;
	
	Escribir 'Ingresa nombre: ';
	Leer nombre;
	Escribir 'Ingresa primer apellido: ';
	Leer apellido1;
	Escribir 'Ingresa segundo apellido: ';
	Leer apellido2;
	
	Escribir 'Ingresa el nombre de su padre: ';
	Leer nombreP;
	Escribir 'Ingresa primer apellido: ';
	Leer apellidoP1;
	Escribir 'Ingresa segundo apellido: ';
	Leer apellidoP2;
	
	Escribir 'Ingresa el nombre de su madre: ';
	Leer nombreM;
	Escribir 'Ingresa primer apellido: ';
	Leer apellidoM1;
	Escribir 'Ingresa segundo apellido: ';
	Leer apellidoM2;
	
	Limpiar Pantalla;
	
	Escribir 'Yo ', nombre,' ',apellido1,' ',apellido2, ' soy hijo de ', nombreP,' ', apellidoP1,' ', apellidoP2,' y ', nombreM,' ', apellidoM1,' ', apellidoM2;
FinProceso
