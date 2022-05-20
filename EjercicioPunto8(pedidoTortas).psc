Proceso pedidoTortas
	Definir nombrePedido Como Caracter;
	Definir nombre0 Como Caracter;
	Definir nombre1 Como Caracter;
	Definir precio0 Como Entero;
	Definir precio1 Como Entero;
	Definir sabor0 Como Caracter;
	Definir sabor1 Como Caracter;
	Definir cantidadPorciones0 Como Entero;
	Definir cantidadPorciones1 Como Entero;
	Definir decoracion0 Como Caracter;
	Definir decoracion1 Como Caracter;
	Definir opcion Como Entero;
	Definir cantidadPedido Como Entero;
	Definir nombreCliente Como Caracter;
	Definir total Como Entero;
	
	nombre0 <- 'Torta remojada';
	precio0 <- 47700;
	sabor0 <- 'Tres leches';
	cantidadPorciones0 <- 20;
	decoracion0 <- 'Decoración infantil (marvel o disney)';
	
	nombre1 <- 'Torta fría';
	precio1 <- 24800;
	sabor1 <- 'Maracuya';
	cantidadPorciones1 <- 12;
	decoracion1 <- 'Decoración redes sociales o familiar';
	
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
				Escribir 'Tortas disponibles';
				Escribir '';
				Escribir 'Descripción: ',nombre0;
				Escribir 'Precio: ',precio0;
				Escribir 'Sabor: ', sabor0;
				Escribir 'Porciones: ',cantidadPorciones0;
				Escribir 'Decoración: ', decoracion0;
				Escribir '';
				Escribir 'Descripción: ',nombre1;
				Escribir 'Precio: ',precio1;
				Escribir 'Sabor: ', sabor1;
				Escribir 'Porciones: ',cantidadPorciones1;
				Escribir 'Decoración: ', decoracion1;
				Escribir '';
				Escribir 'En la opción dos puede realizar el pedido';
			2:
				Escribir Sin Saltar '¿Cuantas tortas se añadiran al pedido?, solo dos por pedido';
				Leer cantidadPedido;
				Escribir Sin Saltar 'Ingresa el nombre de la torta que quiere llevar';
				leer nombrePedido;
				
				Si nombrePedido = nombre0 Y cantidadPedido = 1 Entonces
					Escribir Sin Saltar 'Nombre del cliente:';
					Leer nombreCliente;
					total <- precio0;
					Escribir 'El total del pedido es de: ', total,' pesos ';
				SiNo
					Si nombrePedido = nombre1 Y cantidadPedido = 2 Entonces
						Escribir Sin Saltar 'Nombre del cliente:';
						Leer nombreCliente;
						total <- precio1+precio1;
						Escribir'El total del pedido es de: ', total,' pesos ';
					SiNo
						Escribir 'El nombre de torta ingresada no esta disponible';
					FinSi
				FinSi
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
