Proceso capturaMascota
	Definir nombreMascota Como Caracter;
	Definir edadMascota Como Entero;
	Definir tipoMascota Como Caracter;
	Definir nombreCompleto Como Caracter;
	
	Escribir 'Bienvenido a la veterinaria HappyAnimal !';
	
	Escribir 'Ingresa el nombre de la mascota:';
	leer nombreMascota;
	
	Escribir 'Ingresa la edad de la mascota:';
	Leer edadMascota;
	
	Escribir 'Ingresa el tipo de mascota (perro, gato, ave, etc...)';
	Leer tipoMascota;
	
	Escribir 'Por favor ingresa tu nombre completo:';
	Leer nombreCompleto;
	
	Escribir nombreMascota,' es un(a) ', tipoMascota,', el cual tiene ', edadMascota,' años de edad y ', nombreCompleto,' es actualmente su dueño(a) ';
FinProceso
