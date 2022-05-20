Proceso productosDrogueria
	Definir descripcionPro0 Como Caracter;
	Definir descripcionPro1 Como Caracter;
	Definir descripcionPro2 Como Caracter;
	Definir nombreProducto Como Caracter;
	Definir nombreCliente Como Caracter;
	Definir producto0 Como Caracter;
	Definir producto1 Como Caracter;
	Definir producto2 Como Caracter;
	Definir novedad Como Caracter;
	Definir numeroContacto Como Entero;
	Definir numeroTarjeta Como Entero;
	Definir opcion Como Entero;	
	Definir precioPro0 Como Real;
	Definir precioPro1 Como Real;
	Definir precioPro2 Como Real;	
	
	
	producto0 <- 'Calmidol';
	precioPro0 <- 6500;
	descripcionPro0 <- 'Analgesico que actúa en contra de los dolores y cólicos menstruales.';
	
	producto1 <- 'Dulcolax';
	precioPro1 <- 22300;
	descripcionPro1 <- 'Laxante y estimulante en el tratamiento del estreñimiento y la evacuación del colon.';
	
	producto2 <- 'Preservativo';
	precioPro2 <- 12900;
	descripcionPro2 <- 'Preservativo ayuda a prevenir el embarazo y reducir el riesgo de infecciones de transmicion sexual.';
	
	Repetir
		Limpiar Pantalla;
		Escribir 'Bienvenido a Drogueria Mi Salud';
		Escribir '';
		Escribir 'Elige una opcion';
		Escribir '1. Consulta productos';
		Escribir '2. Compra producto';
		Escribir '3. Devolución de producto';
		Escribir '4. Confirmar pago del producto';
		Leer opcion;
		
		Segun opcion Hacer
			1:			
				Escribir 'Productos disponibles:';
				Escribir '1.', producto0,', Precio: ', precioPro0,', Descripción: ', descripcionPro0;
				Escribir '';
				Escribir '2.', producto1,', Precio: ', precioPro1,', Descripción: ', descripcionPro1;
				Escribir '';
				Escribir '3.', producto2,', Precio: ', precioPro2,', Descripción: ', descripcionPro2;
				Escribir '';
			2:
				Escribir Sin Saltar 'Digite el producto a comprar:';
				Leer nombreProducto;
				Si ((nombreProducto = producto0) O (nombreProducto = producto1) O (nombreProducto = producto2)) Entonces
					
						Escribir Sin Saltar'Digita tu nombre:';
						leer nombreCliente;
					
						Escribir Sin Saltar'Digita tu número de contacto';
						leer numeroContacto;
					
						Escribir Sin Saltar'Digita tu número de tarjeta';
						leer numeroTarjeta;
					
						Escribir 'Los datos han sido registrados: ', nombreProducto,', A nombre de: ', nombreCliente, ', número de contacto: ', numeroContacto, ', número de tarjeta: ', numeroTarjeta;
					SiNo
						Escribir 'Lo sentimos, el producto ingresado no esta disponible.';
				FinSi
			3:
				Escribir Sin Saltar 'Por favor ingresa el nombre del producto a devolver:';
				Leer nombreProducto;
				
				Si ((nombreProducto = producto0) O (nombreProducto = producto1) O (nombreProducto = producto2)) Entonces
					
					Escribir Sin Saltar 'Indica la novedad de la devolución';
					leer novedad;
					
					Escribir 'El producto ', nombreProducto,' a sido devuelto satisfactoriamente ', ' con novedad: ', novedad;
				SiNo
					Escribir 'No se registra compra del producto ingresado';
				FinSi
			4:
				Escribir 'El pago del producto ',nombreProducto, ' se realizo correctamente';			
				
			De Otro Modo:
				Escribir 'No es una opción valida';
		FinSegun
		Escribir 'Presiona enter para continuar';
		Esperar Tecla;
	Hasta Que opcion = 4;
FinProceso
