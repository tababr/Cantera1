SubProceso res<-captura(mensaje) 
	Definir res Como Caracter;
	Escribir mensaje;
	res<-mensaje;
FinSubProceso

SubProceso existencia(res Por Referencia)		
	res[0]<-captura('Torta remojada');
	res[1]<-captura('47700');
	res[2]<-captura('Tres leches');
	res[3]<-captura('20');
	res[4]<-captura('Decoración infantil (marvel o disney)');
	res[5]<-captura('Torta fría');
	res[6]<-captura('24800');
	res[7]<-captura('Maracuya');
	res[8]<-captura('12');
	res[9]<-captura('Decoración redes sociales o familiar');
FinSubProceso

SubProceso pedido(cantidadPedido, nombrePedido)
	Definir p, nombreCliente Como Caracter;
	Definir total Como Entero;
	Dimension p[10];				
	existencia(p);
	Limpiar Pantalla;
	Si nombrePedido = p[0] Y cantidadPedido = 1 Entonces
		Escribir Sin Saltar 'Nombre del cliente:';
		Leer nombreCliente;
		total <- ConvertirANumero(p[1]);
		Escribir 'El total del pedido es de: ', total,' pesos ';
	SiNo
		Si nombrePedido = p[5] Y cantidadPedido = 2 Entonces
			Escribir Sin Saltar 'Nombre del cliente:';
			Leer nombreCliente;
			total <- ConvertirANumero(p[6])+ConvertirANumero(p[6]);
			Escribir'El total del pedido es de: ', total,' pesos ';
		SiNo
			Escribir 'El nombre de torta ingresada no esta disponible';
		FinSi
	FinSi
FinSubProceso

Proceso pedidoTortas
	Definir nombrePedido Como Caracter;
	Definir opcion Como Entero;
	Definir cantidadPedido Como Entero;
	
	Repetir
		Limpiar Pantalla;
		Escribir 'Bienvenido a la panaderia de Don Carlos';
		Escribir '';
		Escribir 'Elige una opcion';
		Escribir '1. Catálogo de tortas';
		Escribir '2. Hacer pedido';
		Escribir '3. Ventas del día';
		Escribir '4. Confirmar salida del sistema';
		Leer opcion;
		
		Segun opcion Hacer
			1:	
				Definir p Como Caracter;
				Dimension p[10];
				Escribir 'Estas son las tortas disponibles: ';
				Escribir ' ';
				existencia(p);
				
			2:
				Escribir Sin Saltar '¿Cuantas tortas se añadiran al pedido?, solo dos por pedido';
				Leer cantidadPedido;
				Escribir Sin Saltar 'Ingresa el nombre de la torta que quiere llevar';
				leer nombrePedido;
				pedido(cantidadPedido, nombrePedido);
			3:
				Escribir 'Hoy se vendieron ', cantidadPedido,' torta(s)';
			4:	
				Escribir '¿Desea salir del sistema?';
			De Otro Modo:
				Escribir 'No es una opción valida';
		FinSegun
		Escribir 'Presiona enter para continuar';
		Esperar Tecla;
	Hasta Que opcion = 4;
FinProceso
