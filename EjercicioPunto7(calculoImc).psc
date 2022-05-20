Proceso calculoImc
	Definir peso Como Real;
	Definir altura Como Real;
	Definir resultado Como Real;
	Definir bajoPeso Como Real;
	Definir normal Como Real;
	Definir sobrepeso Como Real;
	Definir obeso Como Real;

	bajoPeso <- 18.5;
	normal <- 24.9;
	sobrepeso <- 29.9;
	obeso <- 30;
	
	Escribir 'Bienvenido al IMC de la secretaría de salud';
	Escribir Sin Saltar 'Ingresa tu peso:';
	Leer peso;
	Escribir Sin Saltar 'Ingresa tu altura:';
	Leer altura;
	resultado <-(peso/(altura^2));
	Escribir 'Su indice de masa corporal es: ',resultado;
	;
	
	Si resultado < bajoPeso Entonces
		Escribir 'Esta bajo de peso';
	SiNo
		Si resultado > bajoPeso Y resultado < normal Entonces
			Escribir 'Tu peso es normal';
		SiNo
			Si resultado > normal Y resultado < sobrepeso Entonces
				Escribir 'Tienes sobrepeso';
			SiNo
				Escribir 'Tienes obesidad';
			FinSi
		FinSi
	FinSi	
FinProceso
