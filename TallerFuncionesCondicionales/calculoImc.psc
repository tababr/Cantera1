SubProceso imc<-captura(mensaje) 
	Definir imc Como Caracter;
	Escribir mensaje;
	Leer imc;
FinSubProceso

SubProceso datos(imc Por Referencia)	
	imc[0]<-captura('Ingresa tu peso en Kg: ');
	imc[1]<-captura('Ingresa tu altura en mts: ');
FinSubProceso

SubProceso datosImc()
	Definir bajoPeso, normal, sobrepeso, obeso, resultado Como Real;
	Definir p Como Caracter;
	Dimension p[2];
	bajoPeso <- 18.5;
	normal <- 24.9;
	sobrepeso <- 29.9;
	obeso <- 30;
	
	datos(p);
	Limpiar Pantalla;
	resultado <-(ConvertirANumero(p[0])/ConvertirANumero(p[1])^2);
	Escribir 'Su indice de masa corporal es: ',resultado;
	
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
FinSubProceso

Proceso calculoImc
	datosImc();	
FinProceso
