-- PAQUETE DE PRODUCTOS

-- Adicionar producto
BEGIN
    PKG_Productos.adicionarProducto('Vino Las Moras', 30000, 40000);   
END;

SELECT *
FROM PRODUCTOS;

-- Modificar producto
BEGIN
    PKG_Productos.modificarProducto('RMA78', 72000, 78000);
END;

SELECT *
FROM PRODUCTOS;

-- Consultar productos NO CAMELLA
VARIABLE elCursor REFCURSOR;
EXECUTE :elCursor := PKG_Productos.consultarProductos; 
PRINT elCursor;

-- PAQUETE DE VENTAS

-- Adicionar venta
BEGIN
    PKG_Ventas.adicionarVenta(SYSDATE, 2, 10000, 4 , NULL);
END;
SELECT * FROM VENTAS;
-- Adicionar Detalle Venta
BEGIN
    PKG_Ventas.adicionarDetalleVenta('RMA78', 2, 78000, 4);
END;

-- Adicionar factura
BEGIN
    PKG_Ventas.adicionarFactura(SYSDATE);
END;

-- Adicionar factura electronica
BEGIN
    PKG_Ventas.adicionarFacturaElectronica('juachitohermosito@gmail.com', 'Alpina', 32);
END;

-- Adicionar factura fisica
BEGIN
    PKG_Ventas.adicionarFacturaFisica('312487265', 33);
END;

-- Adicionar envio
BEGIN
    PKG_Ventas.adicionarEnvio(SYSDATE, 'Servientrega', 'P', 'Carrera 7 # 8-9');
END;

-- Modificar Detalle venta
BEGIN
    PKG_Ventas.modificarDetalleVenta(2, 'RMA78', 4, 78000, 4);
END;

-- Modificar Envio
BEGIN
    PKG_Ventas.modificarEnvio(1, 'E');
END;

-- Eliminar Detalle venta
BEGIN
    PKG_Ventas.eliminarDetalleVenta(2);
END;

-- Eliminar Envio
BEGIN
    PKG_Ventas.eliminarEnvio(4);
END;

-- Consultar venta
VARIABLE elCursor REFCURSOR;
EXECUTE :elCursor := PKG_Ventas.consultarVenta(1);
PRINT elCursor;

-- Consultar detalle venta
VARIABLE elCursor REFCURSOR;
EXECUTE :elCursor := PKG_Ventas.consultarDetalleVenta(1);
PRINT elCursor;

-- Consultar factura
VARIABLE elCursor REFCURSOR;
EXECUTE :elCursor := PKG_Ventas.consultarFactura(1);
PRINT elCursor;


-- PAQUETE DE PEDIDOS

-- Adicionar pedido
BEGIN
    PKG_Pedidos.adicionarPedido(SYSDATE, 1, 10001);
END;

-- Adicionar detalle pedido
BEGIN
    PKG_Pedidos.adicionarDetallePedido(100, 78000, 1, 'RMA78');
END;

-- Modificar pedido
BEGIN
    PKG_Pedidos.modificarPedido(1, 'E');
END;

-- Modificar detalle pedido
BEGIN
    PKG_Pedidos.modificarDetallePedido(1, 'RMA78', 99, 78000 );
END;

-- Consultar pedido
VARIABLE elCursor REFCURSOR;
EXECUTE :elCursor := PKG_Pedidos.consultarPedido(1);
PRINT elCursor;

-- Consultar detalle pedido
VARIABLE elCursor REFCURSOR;
EXECUTE :elCursor := PKG_Pedidos.consultarDetallesPedidos(1);
PRINT elCursor;


-- PAQUETE DE PROVEEDORES

-- Adicionar proveedor
BEGIN
    PKG_Proveedores.adicionarProveedor('Bruder', 'Calle 7 # 8-9', '312487265', 'brudercerveza@companiesbeer.com');
END;

-- Adicionar precios
BEGIN
    PKG_Proveedores.adicionarPrecios(1, 'RMA78', 77000);
END;

-- Modificar proveedor
BEGIN
    PKG_Proveedores.modificarProveedor(6, 'Bruder', 'Calle 177 # 18-2', '312487265', 'brudercerveza@companiesbeer.com');
END;

-- Modificar precios
BEGIN
    PKG_Proveedores.modificarPrecios(2, 'RMA78', 75000);
END;

-- Consultar precios
VARIABLE elCursor REFCURSOR;
EXECUTE :elCursor := PKG_Proveedores.consultarPrecios('RMA78');
PRINT elCursor;


-- PAQUETE DE CLIENTES

-- Adicionar cliente
BEGIN
    PKG_Clientes.adicionarCliente('CC', 123456669, 'Juan Bodegon', 'Calle 17 # 18-9', '312487265', 'juanbodeg@gmail.com', TO_DATE('1990-01-05', 'YYYY-MM-DD'));
END;

-- Adicionar valoracion
BEGIN
    PKG_Clientes.adicionarValoracion(10, 'Muy bueno todo pero podría mejorar', SYSDATE, 1, 'RMA78');
END;

-- Modificar cliente
BEGIN
    PKG_Clientes.modificarCliente(1001064920, 'CC', '322778998', 'Calle 17 # 18-9', 'hernansanchez@hotmail.com');
END;

-- Consultar valoraciones bajas
VARIABLE elCursor REFCURSOR;
EXECUTE :elCursor := PKG_Clientes.ConsultarValoracionesBajas;
PRINT elCursor;


-- PAQUETE DE EMPLEADOS

-- Adicionar empleado
BEGIN
    PKG_Empleados.adicionarEmpleado(10111, 'Roberto Ojeda', 'A', '312487265', 'robertjda@gmail.com', 'Cali', 1);
END;

-- Adicionar sede
BEGIN
    PKG_Empleados.adicionarSede('Carrera 7 # 8-19');
END;

-- Modificar empleado
BEGIN
    PKG_Empleados.modificarEmpleado(10111, 'D', '312487265', 'robertjda@gmail.com', 'Cali', 1);
END;

-- Modificar sede
BEGIN
    PKG_Empleados.modificarSede(1, 'Avenida turbo # 3f');
END;

-- Eliminar empleado
BEGIN
    PKG_Empleados.eliminarEmpleado(10111);
END;
 
 -- Consultar empleados
VARIABLE elCursor REFCURSOR;
EXECUTE :elCursor := PKG_Empleados.consultarEmpleados(1);
PRINT elCursor;

-- Consultar sedes
VARIABLE elCursor REFCURSOR;
EXECUTE :elCursor := PKG_Empleados.ConsultarSedes(2);
PRINT elCursor;

