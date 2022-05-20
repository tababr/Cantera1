SubProceso pro<-captura(mensaje) 
	Definir pro Como Caracter;
	Escribir mensaje;
	pro<-mensaje;
FinSubProceso

SubProceso listaProductos(pro Por Referencia)	
	pro[0]<-captura('Calmidol');
	pro[1]<-captura('6500');
	pro[2]<-captura('Analgesico que actúa en contra de los dolores y cólicos menstruales.');
	pro[3]<-captura('Dulcolax');
	pro[4]<-captura('22300');
	pro[5]<-captura('Laxante y estimulante en el tratamiento del estreñimiento y la evacuación del colon.');
	pro[6]<-captura('Preservativo');
	pro[7]<-captura('12900');
	pro[8]<-captura('Preservativo ayuda a prevenir el embarazo y reducir el riesgo de infecciones de transmicion sexual.');
FinSubProceso

SubProceso compraPro(nombreProducto, nombreCliente, numeroContacto, numeroTarjeta)
	Definir p Como Caracter;
	Dimension p[9];
	listaProductos(p);
	Limpiar Pantalla;
	Si ((nombreProducto = p[0]) O (nombreProducto = p[3]) O (nombreProducto = p[6])) Entonces
		
		Escribir 'Los datos han sido registrados: ', nombreProducto,', A nombre de: ', nombreCliente, ', número de contacto: ', numeroContacto, ', número de tarjeta: ', numeroTarjeta;
	SiNo
		Escribir 'Lo sentimos, el producto ingresado no esta disponible.';
	FinSi
FinSubProceso

SubProceso devolucionPro(nombreProducto, novedad)
	Definir p Como Caracter;
	Dimension p[9];
	listaProductos(p);
	Limpiar Pantalla;
	Si ((nombreProducto = p[0]) O (nombreProducto = p[3]) O (nombreProducto = p[6])) Entonces		
		Escribir 'El producto ', nombreProducto,' a sido devuelto satisfactoriamente ', ' con novedad: ', novedad;
	SiNo
		Escribir 'No se registra compra del producto ingresado';
	FinSi
FinSubProceso

Proceso productosDrogueria
	Definir nombreProducto Como Caracter;
	Definir nombreCliente Como Caracter;
	Definir novedad Como Caracter;
	Definir numeroContacto Como Entero;
	Definir numeroTarjeta Como Entero;
	Definir opcion Como Entero;
	
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
				Definir p Como Caracter;
				Dimension p[9];
				Escribir 'Productos disponibles: ';				
				listaProductos(p);
				Escribir ' ';
			2:
				Escribir Sin Saltar 'Digite el producto a comprar:';
				Leer nombreProducto;
					
				Escribir Sin Saltar'Digita tu nombre:';
				leer nombreCliente;
					
				Escribir Sin Saltar'Digita tu número de contacto';
				leer numeroContacto;
					
				Escribir Sin Saltar'Digita tu número de tarjeta';
				leer numeroTarjeta;
				compraPro(nombreProducto, nombreCliente, numeroContacto, numeroTarjeta);
			3:
				Escribir Sin Saltar 'Por favor ingresa el nombre del producto a devolver:';
				Leer nombreProducto;
					
				Escribir Sin Saltar 'Indica la novedad de la devolución';
				leer novedad;
				devolucionPro(nombreProducto, novedad);
			4:
				Escribir 'El pago del producto ',nombreProducto, ' se realizo correctamente';			
				
			De Otro Modo:
				Escribir 'No es una opción valida';
		FinSegun
		Escribir 'Presiona enter para continuar';
		Esperar Tecla;
	Hasta Que opcion = 4;
FinProceso