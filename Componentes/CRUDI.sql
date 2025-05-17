-- Paquete de Productos
CREATE OR REPLACE PACKAGE BODY PKG_Productos IS
    PROCEDURE adicionarProducto(descripcion VARCHAR, precioCompra INTEGER, precioVenta INTEGER)
    IS
    BEGIN
        INSERT INTO PRODUCTOS(descripcion, precioCompra, precioVenta)
        VALUES (descripcion, precioCompra, precioVenta);
        COMMIT;
    EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20029, 'Error al adicionar el producto');
    END;
    --
    PROCEDURE modificarProducto(XidProducto VARCHAR, XprecioCompra INTEGER , XprecioVenta INTEGER)
    IS
    BEGIN
        UPDATE PRODUCTOS
        SET precioCompra = XprecioCompra, precioVenta = XprecioVenta
        WHERE idProducto = XidProducto;
        COMMIT;
    EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20030, 'Error al modificar el producto');
    END;
    --
    FUNCTION consultarProductos(EMPTY VARCHAR) RETURN SYS_REFCURSOR
    AS
        CURSOR_PRODUCTOS SYS_REFCURSOR;
    BEGIN
        OPEN CURSOR_PRODUCTOS FOR
            SELECT *
            FROM PRODUCTOS;
        RETURN CURSOR_PRODUCTOS;
    END;
END;
/

-- Paquete de ventas
CREATE OR REPLACE PACKAGE BODY PKG_Ventas
IS
    PROCEDURE adicionarVenta(fecha DATE, idCliente INTEGER, idEmpleado INTEGER, idFactura INTEGER, idEnvio INTEGER)
    IS
    BEGIN
        INSERT INTO VENTAS(fecha, idCliente, idEmpleado, idFactura, idEnvio)
        VALUES (fecha, idCliente, idEmpleado, idFactura, idEnvio);
        COMMIT;
    EXCEPTION
    WHEN OTHERS THEN    
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20001, 'Error al adicionar la venta.');
    END;
    --
    PROCEDURE adicionarDetalleVenta(idProducto VARCHAR, cantidad INTEGER,precio INTEGER, idVenta INTEGER)
    IS
    BEGIN
        INSERT INTO DetalleDeVentas(idProducto, cantidad, precio, idVenta)
        VALUES (idProducto, cantidad, precio, idVenta);
        COMMIT;
    EXCEPTION
    WHEN OTHERS THEN    
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20002, 'Error al adicionar el detalle de la venta.');
    END;
    --
    PROCEDURE adicionarFactura(fecha DATE)
    IS
    BEGIN
        INSERT INTO FACTURAS (fecha)
        VALUES (fecha);
        COMMIT;
    EXCEPTION
    WHEN OTHERS THEN    
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20003, 'Error al adicionar la factura.');
    END;
    --
    PROCEDURE adicionarFacturaElectronica(correo VARCHAR, nombreEmpresa VARCHAR, idFactura INTEGER)
    IS
    BEGIN
        INSERT INTO ELECTRONICAS(correo, nombreEmpresa, idFactura)
        VALUES (correo, nombreEmpresa, idFactura);
        COMMIT;
    EXCEPTION
    WHEN OTHERS THEN    
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20004, 'Error al adicionar la factura electronica.');
    END;
    --
    PROCEDURE adicionarFacturaFisica(telefono VARCHAR, idFactura INTEGER)
    IS
    BEGIN
        INSERT INTO FISICAS(telefono, idFactura)
        VALUES(telefono, idFactura);
        COMMIT;
    EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20005, 'Error al adicionar la factura fisica.');
    END;
    --
    PROCEDURE adicionarEnvio(fechaEnvio DATE, empresaTransporte VARCHAR, estado CHAR, direccionEnvio VARCHAR)
    IS
    BEGIN
        INSERT INTO ENVIOS(fechaEnvio, empresaTransporte, estado, direccionEnvio)
        VALUES (fechaEnvio, empresaTransporte, estado, direccionEnvio);
        COMMIT;
    EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20006, 'Error al adicionar envio');
    END;
    --
    PROCEDURE modificarDetalleVenta(XidDetalle INTEGER, XidProducto VARCHAR,Xcantidad INTEGER, Xprecio INTEGER, XidVenta INTEGER)
    IS
    BEGIN
        UPDATE DetalleDeVentas
        SET idProducto = XidProducto, cantidad = Xcantidad, precio = Xprecio, idVenta = XidVenta
        WHERE idDetalleVenta = XidDetalle;
        COMMIT;
    EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20007, 'Error al modificar el detalle de la venta');
    END;
    --
    PROCEDURE modificarEnvio(XidEnvio INTEGER,xEstado CHAR)
    IS
    BEGIN
        UPDATE ENVIOS
        SET estado = xEstado
        WHERE idEnvio = XidEnvio;
        COMMIT;
    EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20008, 'Error al modificar el envio');
    END;
    --
    PROCEDURE eliminarDetalleVenta(XidDetalle INTEGER)
    IS
    BEGIN
        DELETE FROM DetalleDeVentas
        WHERE idDetalleVenta = XidDetalle;
        COMMIT;
    EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20010, 'Error al eliminar el detalle de la venta');
    END;
    --
    PROCEDURE eliminarEnvio(XidEnvio INTEGER)
    IS
    BEGIN
        DELETE FROM ENVIOS
        WHERE idEnvio = XidEnvio;
        COMMIT;
    EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20011, 'Error al eliminar el envio');
    END;
    --
    FUNCTION consultarVenta(XidVenta INTEGER) RETURN SYS_REFCURSOR
    AS 
        CURSOR_VENTA SYS_REFCURSOR;
    BEGIN
        OPEN CURSOR_VENTA FOR
            SELECT * FROM VENTAS
            WHERE idVenta = XidVenta;
        RETURN CURSOR_VENTA;
    END;
    --
    FUNCTION consultarDetalleVenta(xidDetalle INTEGER) RETURN SYS_REFCURSOR
    AS
        CURSOR_DETALLE SYS_REFCURSOR;
    BEGIN
        OPEN CURSOR_DETALLE FOR
            SELECT *
            FROM DetalleDeVentas
            WHERE idDetalleVenta = XidDetalle;
        RETURN CURSOR_DETALLE;
    END;
    --
    FUNCTION consultarFactura(XidFactura INTEGER) RETURN SYS_REFCURSOR
    AS
	    CURSOR_FACTURA SYS_REFCURSOR;
    BEGIN
	    OPEN CURSOR_FACTURA FOR
		    SELECT *
		    FROM FACTURAS
		    WHERE idFactura = XidFactura;
	    RETURN CURSOR_FACTURA;
    END;
END;
/

--Paquete de Pedidos
CREATE OR REPLACE PACKAGE BODY PKG_Pedidos IS
    PROCEDURE adicionarPedido(fecha DATE, idProveedor INTEGER, idEmpleado INTEGER)
    IS
    BEGIN
        INSERT INTO PEDIDOS(fecha, idProveedor, idEmpleado)
        VALUES (fecha, idProveedor, idEmpleado);
        COMMIT;
    EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20012, 'Error al adicionar el pedido');
    END;
    --
    PROCEDURE adicionarDetallePedido(cantidad INTEGER, precio INTEGER, idPedido INTEGER, idProducto VARCHAR)
    IS
    BEGIN
        INSERT INTO DetalleDePedidos(cantidad, precio, idPedido, idProducto)
        VALUES (cantidad, precio, idPedido, idProducto);
        COMMIT;
    EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20013, 'Error al adicionar el detalle del pedido');
    END;
    --
    PROCEDURE modificarPedido(XidPedido INTEGER, estado CHAR)
    IS
    BEGIN
        UPDATE PEDIDOS
        SET estado = estado
        WHERE idPedido = XidPedido;
        COMMIT;
    EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20014, 'Error al modificar el pedido');
    END;
    --
    PROCEDURE modificarDetallePedido(xidDetalle INTEGER, XidProducto VARCHAR, Xcantidad INTEGER, Xprecio INTEGER)
    IS
    BEGIN
        UPDATE DetalleDePedidos
        SET idProducto = XidProducto, cantidad = Xcantidad, precio = Xprecio
        WHERE idDetalle = xidDetalle;
        COMMIT;
    EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20015, 'Error al modificar el detalle del pedido');
    END;
    --
    FUNCTION consultarPedido(XidPedido INTEGER) RETURN SYS_REFCURSOR
    AS
        CURSOR_PEDIDO SYS_REFCURSOR;
        BEGIN
            OPEN CURSOR_PEDIDO FOR
                SELECT *
                FROM PEDIDOS
                WHERE idPedido = XidPedido;
            RETURN CURSOR_PEDIDO;
        END;
    --
    FUNCTION consultarDetallesPedidos(xidPedido INTEGER) RETURN SYS_REFCURSOR
    AS
        CURSOR_DETALLE_PEDIDO SYS_REFCURSOR;
    BEGIN
        OPEN CURSOR_DETALLE_PEDIDO FOR
            SELECT idDetalle, idProducto, cantidad, precio
            FROM DetalleDePedidos
            WHERE idPedido = xidPedido;
        RETURN CURSOR_DETALLE_PEDIDO;
    END;
END;
/

-- Paquete de Proveedores
CREATE OR REPLACE PACKAGE BODY PKG_Proveedores IS
    PROCEDURE adicionarProveedor(nombre VARCHAR, direccion VARCHAR, telefono VARCHAR, correo VARCHAR)
    IS
    BEGIN
        INSERT INTO PROVEEDORES(nombre, direccion, telefono, correo)
        VALUES (nombre, direccion, telefono, correo);
        COMMIT;
    EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20016, 'Error al adicionar el proveedor');
    END;
    --
    PROCEDURE adicionarPrecios(idProveedor INTEGER, idProducto VARCHAR, precio INTEGER)
    IS
    BEGIN
        INSERT INTO PRECIOS(idProveedor, idProducto, precio)
        VALUES (idProveedor, idProducto, precio);
        COMMIT;
    EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20017, 'Error al adicionar los precios');
    END;
    --
    PROCEDURE modificarProveedor(XidProveedor INTEGER, Xnombre VARCHAR, Xdireccion VARCHAR, Xtelefono VARCHAR, Xcorreo VARCHAR)
    IS
    BEGIN
        UPDATE PROVEEDORES
        SET nombre = Xnombre, direccion = Xdireccion, telefono = Xtelefono, correo = Xcorreo
        WHERE idProveedor = XidProveedor;
        COMMIT;
    EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20018, 'Error al modificar el proveedor');
    END;
    --
    PROCEDURE modificarPrecios(XidProveedor INTEGER, XidProducto VARCHAR, Xprecio INTEGER)
    IS
    BEGIN
        UPDATE PRECIOS
        SET idProducto = XidProducto, precio = Xprecio
        WHERE idProveedor = XidProveedor;
        COMMIT;
    EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20019, 'Error al modificar los precios');
    END;
    --
    FUNCTION consultarPrecios(XidProducto VARCHAR) RETURN SYS_REFCURSOR
    AS
        CURSOR_PRECIOS SYS_REFCURSOR;
    BEGIN
        OPEN CURSOR_PRECIOS FOR
            SELECT idProveedor, idProducto, precio
            FROM PRECIOS
            WHERE idProducto = XidProducto;
        RETURN CURSOR_PRECIOS;
    END;
END;
/

-- Paquete de Clientes
CREATE OR REPLACE PACKAGE BODY PKG_Clientes IS
    PROCEDURE adicionarCliente(tipo VARCHAR, numero INTEGER, nombre VARCHAR, direccion VARCHAR, telefono VARCHAR, correo VARCHAR, fechaNacimiento DATE)
    IS
    BEGIN
        INSERT INTO CLIENTES(tipo, numero, nombre, direccion, telefono, correo, fechaNacimiento)
        VALUES (tipo, numero, nombre, direccion, telefono, correo, fechaNacimiento);
        COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20020, 'Error al adicionar el cliente');
    END;
    --
    PROCEDURE adicionarValoracion(calificacion INTEGER, comentario VARCHAR, fecha DATE, idCliente INTEGER, idProducto VARCHAR)
    IS
    BEGIN
        INSERT INTO VALORACIONES(calificacion, comentario, fecha,idCliente,idProducto)
        VALUES (calificacion, comentario, fecha,idCliente,idProducto);
        COMMIT;
    EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20021, 'Error al adicionar la valoracion');
    END;
    PROCEDURE modificarCliente(Xcedula INTEGER, Xtipo VARCHAR, Xtelefono VARCHAR, Xdireccion VARCHAR, Xcorreo VARCHAR)
    IS
    BEGIN
        UPDATE CLIENTES
        SET tipo = Xtipo, telefono = Xtelefono, correo = Xcorreo, direccion = Xdireccion
        WHERE numero = Xcedula;
        COMMIT;
    EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20022, 'Error al modificar el cliente');
    END;
    FUNCTION ConsultarValoracionesBajas(EMPTY VARCHAR) RETURN SYS_REFCURSOR
    AS
        CURSOR_VALORACIONES SYS_REFCURSOR;
    BEGIN
        OPEN CURSOR_VALORACIONES FOR
            SELECT idValoracion, calificacion, comentario, descripcion, fecha
            FROM VALORACIONES V
            JOIN PRODUCTOS PRO ON PRO.idProducto = V.idProducto
            ORDER BY calificacion ASC;
        RETURN CURSOR_VALORACIONES;
    END;
END;
/

-- Paquete de Empleados
CREATE OR REPLACE PACKAGE BODY PKG_Empleados IS
    PROCEDURE adicionarEmpleado(idEmpleado INTEGER, nombre VARCHAR, cargo VARCHAR, telefono VARCHAR, correo VARCHAR, ciudad VARCHAR, idSede INTEGER)
    IS
    BEGIN
        INSERT INTO EMPLEADOS(idEmpleado, nombre, cargo, telefono, correo, ciudad, idSede)
        VALUES (idEmpleado, nombre, cargo, telefono, correo, ciudad, idSede);
        COMMIT;
    EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20023, 'Error al adicionar el empleado');
    END;
    --
    PROCEDURE adicionarSede(direccion VARCHAR)
    IS
    BEGIN
        INSERT INTO SEDES(direccion)
        VALUES (direccion);
        COMMIT;
    EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20024, 'Error al adicionar la sede');
    END;
    PROCEDURE modificarEmpleado(XidEmpleado INTEGER, Xcargo VARCHAR, Xtelefono VARCHAR, Xcorreo VARCHAR, Xciudad VARCHAR, XidSede INTEGER)
    IS
    BEGIN
        UPDATE EMPLEADOS
        SET cargo = Xcargo, telefono = Xtelefono, correo = Xcorreo, ciudad = Xciudad, idSede = XidSede
        WHERE idEmpleado = XidEmpleado;
        COMMIT;
    EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20025, 'Error al modificar el empleado');
    END;
    --
    PROCEDURE modificarSede(XidSede INTEGER, Xdireccion VARCHAR)
    IS
    BEGIN
        UPDATE SEDES
        SET direccion = Xdireccion
        WHERE idSede = XidSede;
        COMMIT;
    EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20026, 'Error al modificar la sede');
    END;
    --
    PROCEDURE eliminarEmpleado(XidEmpleado INTEGER)
    IS
    BEGIN
        DELETE FROM EMPLEADOS
        WHERE idEmpleado = XidEmpleado;
        COMMIT;
    EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20027, 'Error al eliminar el empleado');
    END;
    --
    PROCEDURE eliminarSede(XidSede INTEGER)
    IS
    BEGIN
        DELETE FROM SEDES
        WHERE idSede = XidSede;
        COMMIT;
    EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20028, 'Error al eliminar la sede');
    END;
    --
    FUNCTION consultarEmpleados(XidSede VARCHAR) RETURN SYS_REFCURSOR
    AS
        CURSOR_EKMPLEADOS SYS_REFCURSOR;
    BEGIN
        OPEN CURSOR_EKMPLEADOS FOR
            SELECT idEmpleado, nombre, cargo, telefono, correo, ciudad, idSede
            FROM EMPLEADOS
            WHERE idSede = XidSede;
        RETURN CURSOR_EKMPLEADOS;
    END;
    --
    FUNCTION consultarSedes(XidSede INTEGER) RETURN SYS_REFCURSOR
    AS
        CURSOR_SEDES SYS_REFCURSOR;
    BEGIN
        OPEN CURSOR_SEDES FOR
            SELECT idSede, direccion
            FROM SEDES
            WHERE idSede = XidSede;
        RETURN CURSOR_SEDES;
    END;
END;
/
