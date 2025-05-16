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
EXECUTE :elCursor := consultarProductos; 
PRINT elCursor;


-- PAQUETE DE VENTAS

-- Adicionar venta (Para que camelle el segundo atributo debe estar en la tabla de clientes)
BEGIN
    PKG_Ventas.adicionarVenta(SYSDATE, 4, 10000, 7, NULL);
END;

SELECT *
FROM VENTAS;
-- Adicionar Detalle Venta
BEGIN
    PKG_Ventas.adicionarDetalleVenta('RMA78', 2, 78000, 9);
END;

-- Adicionar factura
BEGIN
    PKG_Ventas.adicionarFactura(SYSDATE);
END;

-- Adicionar factura electronica(ESTARIA BIEN CREAR EL IDFACTURA AUTOMAT)
BEGIN
    PKG_Ventas.adicionarFacturaElectronica('juachitohermosito@gmail.com', 'Alpina', 4);
END;
SELECT *
FROM ELECTRONICAS;