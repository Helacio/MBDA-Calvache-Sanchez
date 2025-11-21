/* SQL PROYECTO
    Felipe Calvache - Hernan Sanchez
*/


-- ActoresI

-- PKG ADMINISTRADOR

CREATE OR REPLACE PACKAGE BODY PKG_ADMINISTRADOR IS
    PROCEDURE ad_proveedor(nombre VARCHAR, direccion VARCHAR, telefono VARCHAR, correo VARCHAR)
    IS
    BEGIN 
        PKG_Proveedores.adicionarProveedor(nombre, direccion, telefono, correo);
    END;
    --
    FUNCTION co_ventas_totales_mes RETURN SYS_REFCURSOR
    AS
        co_ventas_totales_mes SYS_REFCURSOR;
    BEGIN
        co_ventas_totales_mes := PKG_Ventas.consultarVentasMes;
        RETURN co_ventas_totales_mes;
    END;
    --
    FUNCTION co_mejor_proovedor_producto(XidProducto VARCHAR) RETURN SYS_REFCURSOR
    AS
        co_mejor_proovedor_producto SYS_REFCURSOR;
    BEGIN
        co_mejor_proovedor_producto := PKG_Proveedores.consultarMejorProveedorProducto(XidProducto);
        RETURN co_mejor_proovedor_producto;
    END;
    --
    FUNCTION co_lista_empleados(XidSede VARCHAR) RETURN SYS_REFCURSOR
    AS
        co_lista_empleados SYS_REFCURSOR;
    BEGIN
        co_lista_empleados := PKG_Empleados.consultarEmpleados(XidSede);
        RETURN co_lista_empleados;
    END;
    --
    FUNCTION co_lista_valoraciones_bajas RETURN SYS_REFCURSOR
    AS
        co_lista_valoraciones_bajas SYS_REFCURSOR;
    BEGIN
        co_lista_valoraciones_bajas := PKG_Clientes.ConsultarValoracionesBajas;
        RETURN co_lista_valoraciones_bajas;
    END;
    --
    FUNCTION co_proveedores RETURN SYS_REFCURSOR
    AS
        co_proveedores SYS_REFCURSOR;
    BEGIN
        co_proveedores := PKG_Proveedores.consultarProveedores;
        RETURN co_proveedores;
    END;
    --
    PROCEDURE mo_proveedor(XidProveedor INTEGER, Xnombre VARCHAR, Xdireccion VARCHAR, Xtelefono VARCHAR, Xcorreo VARCHAR)
    IS
    BEGIN
        PKG_Proveedores.modificarProveedor(XidProveedor, Xnombre, Xdireccion, Xtelefono, Xcorreo);
    END;
END;
/

-- PK VENDEDOR
CREATE OR REPLACE PACKAGE BODY PKG_VENDEDOR IS
    PROCEDURE ad_venta(fecha DATE, idCliente INTEGER, idEmpleado INTEGER, idFactura INTEGER, idEnvio INTEGER)
    IS
    BEGIN
        PKG_Ventas.adicionarVenta(fecha, idCliente, idEmpleado, idFactura, idEnvio);
    END;
    --
    PROCEDURE ad_detalle_venta(idProducto VARCHAR, cantidad INTEGER, precio INTEGER, idVenta INTEGER)
    IS
    BEGIN
        PKG_Ventas.adicionarDetalleVenta(idProducto, cantidad, precio, idVenta);
    END;
    --
    PROCEDURE ad_factura(fecha DATE)
    IS
    BEGIN
        PKG_Ventas.adicionarFactura(fecha);
    END;
    --
    PROCEDURE ad_producto(descripcion VARCHAR, precioCompra INTEGER, precioVenta INTEGER)
    IS
    BEGIN
        PKG_Productos.adicionarProducto(descripcion, precioCompra, precioVenta);
    END;
    --
    PROCEDURE ad_pedido(fecha DATE, idProveedor INTEGER, idEmpleado INTEGER)
    IS
    BEGIN
        PKG_Pedidos.adicionarPedido(fecha, idProveedor, idEmpleado);
    END;
    --
    PROCEDURE ad_detale_pedido(cantidad INTEGER, precio INTEGER, idPedido INTEGER, idProducto VARCHAR)
    IS
    BEGIN
        PKG_Pedidos.adicionarDetallePedido(cantidad, precio, idPedido, idProducto);
    END;
    --
    PROCEDURE ad_cliente(tipo VARCHAR, numero INTEGER, nombre VARCHAR, direccion VARCHAR, telefono VARCHAR, correo VARCHAR, fechaNacimiento DATE)
    IS
    BEGIN
        PKG_Clientes.adicionarCliente(tipo, numero, nombre, direccion, telefono, correo, fechaNacimiento);
    END;
    --
    PROCEDURE ad_envio(fechaEnvio DATE, empresaTransporte VARCHAR, estado CHAR, direccionEnvio VARCHAR)
    IS
    BEGIN
        PKG_Ventas.adicionarEnvio(fechaEnvio, empresaTransporte, estado, direccionEnvio);
    END;
    --
    FUNCTION co_precio_producto(XidProducto VARCHAR) RETURN SYS_REFCURSOR
    AS
        co_precio_producto SYS_REFCURSOR;
    BEGIN
        co_precio_producto := PKG_Proveedores.consultarPrecioProducto(XidProducto);
        RETURN co_precio_producto;
    END;
    --
    FUNCTION co_venta(XidVenta INTEGER) RETURN SYS_REFCURSOR
    AS
        co_venta SYS_REFCURSOR;
    BEGIN
        co_venta := PKG_Ventas.consultarVenta(XidVenta);
        RETURN co_venta;
    END;
    --
    FUNCTION co_productos RETURN SYS_REFCURSOR
    AS
        co_productos SYS_REFCURSOR;
    BEGIN
        co_productos := PKG_Productos.consultarProductos;
        RETURN co_productos;
    END;
    --
    FUNCTION co_cliente(Xnumero INTEGER) RETURN SYS_REFCURSOR
    AS
        co_cliente SYS_REFCURSOR;
    BEGIN
        co_cliente := PKG_Clientes.consultarCliente(Xnumero);
        return co_cliente;
    END;
    --
    PROCEDURE mo_producto(XidProducto VARCHAR, XprecioCompra INTEGER , XprecioVenta INTEGER)
    IS
    BEGIN
        PKG_Productos.modificarProducto(XidProducto, XprecioCompra, XprecioVenta);
    END;
    --
    PROCEDURE mo_cliente(Xcedula INTEGER, Xtipo VARCHAR, Xtelefono VARCHAR, Xdireccion VARCHAR, Xcorreo VARCHAR)
    IS
    BEGIN
        PKG_Clientes.modificarCliente(Xcedula, Xtipo, Xtelefono, Xdireccion, Xcorreo);
    END;
    --
    PROCEDURE mo_pedido(XidPedido INTEGER, estado CHAR)
    IS
    BEGIN
        PKG_Pedidos.modificarPedido(XidPedido, estado);
    END;
    --
    PROCEDURE mo_detalle_pedido(xidDetalle INTEGER, XidProducto VARCHAR, Xcantidad INTEGER, Xprecio INTEGER)
    IS
    BEGIN
        PKG_Pedidos.modificarDetallePedido(xidDetalle, XidProducto, Xcantidad, Xprecio);
    END;
END;
/


-- ALMACENISTA
CREATE OR REPLACE PACKAGE BODY PKG_ALMACENISTA IS
    PROCEDURE ad_envio(fechaEnvio DATE, empresaTransporte VARCHAR, estado CHAR, direccionEnvio VARCHAR)
    IS
    BEGIN
        PKG_Ventas.adicionarEnvio(fechaEnvio, empresaTransporte, estado, direccionEnvio);
    END;
    --
    PROCEDURE mo_envio(XidEnvio INTEGER,xEstado CHAR)
    IS
    BEGIN
        PKG_Ventas.modificarEnvio(XidEnvio, xEstado);
    END;
    --
    FUNCTION co_envio(XidEnvio INTEGER) RETURN SYS_REFCURSOR
    AS
        co_envio SYS_REFCURSOR;
    BEGIN
        co_envio := PKG_Ventas.consultarEnvio(XidEnvio);
        RETURN co_envio;
    END;
    --
    FUNCTION co_pedidos_pend_proveedor RETURN SYS_REFCURSOR
    AS
        co_pedidos_pend_proveedor SYS_REFCURSOR;
    BEGIN
        co_pedidos_pend_proveedor := PKG_Pedidos.consultarPedidosPendientesProveedor;
        RETURN co_pedidos_pend_proveedor;
    END;
    --
    FUNCTION co_pedido(XidPedido INTEGER) RETURN SYS_REFCURSOR
    AS
        co_pedido SYS_REFCURSOR;
    BEGIN
        co_pedido := PKG_Pedidos.consultarPedido(XidPedido);
        RETURN co_pedido;
    END;
    --
    FUNCTION co_detalle_pedido(XidPedido INTEGER) RETURN SYS_REFCURSOR
    AS
        co_detalle_pedido SYS_REFCURSOR;
    BEGIN
        co_detalle_pedido := PKG_Pedidos.consultarDetallesPedidos(XidPedido);
        RETURN co_detalle_pedido;
    END;
END;
/

-- CLIENTE
CREATE OR REPLACE PACKAGE BODY PKG_CLIENTE IS
    PROCEDURE ad_envio(fechaEnvio DATE, empresaTransporte VARCHAR, estado CHAR, direccionEnvio VARCHAR)
    IS
    BEGIN
        ad_envio(fechaEnvio, empresaTransporte, estado, direccionEnvio);
    END;
    --
    FUNCTION co_productos RETURN SYS_REFCURSOR
    AS
        co_productos SYS_REFCURSOR;
    BEGIN
        co_productos := PKG_Productos.consultarProductos;
        RETURN co_productos;
    END;
    --
    FUNCTION co_envio(XidEnvio INTEGER) RETURN SYS_REFCURSOR
    AS
        co_envio SYS_REFCURSOR;
    BEGIN
        co_envio := PKG_Ventas.consultarEnvio(XidEnvio);
        RETURN co_envio;
    END;
END;
/

-- ANALISTA DE NEGOCIOS
CREATE OR REPLACE PACKAGE BODY PKG_ANALISTA_NEGOCIOS IS
    FUNCTION co_ventas_totales_mes RETURN SYS_REFCURSOR
    AS
        co_ventas_totales_mes SYS_REFCURSOR;
    BEGIN
        co_ventas_totales_mes := PKG_Ventas.consultarVentasMes;
        RETURN co_ventas_totales_mes;
    END;
    --
    FUNCTION co_mejor_proovedor_producto(XidProducto VARCHAR) RETURN SYS_REFCURSOR
    AS
        co_mejor_proovedor_producto SYS_REFCURSOR;
    BEGIN
        co_mejor_proovedor_producto := PKG_Proveedores.consultarMejorProveedorProducto(XidProducto);
        RETURN co_mejor_proovedor_producto;
    END;
    --
    FUNCTION co_lista_empleados_sede(XidSede VARCHAR) RETURN SYS_REFCURSOR
    AS
        co_lista_empleados_sede SYS_REFCURSOR;
    BEGIN
        co_lista_empleados_sede := PKG_Empleados.consultarEmpleados(XidSede);
        RETURN co_lista_empleados_sede;
    END;
    --
    FUNCTION co_lista_valoraciones_bajas RETURN SYS_REFCURSOR
    AS
        co_lista_valoraciones_bajas SYS_REFCURSOR;
    BEGIN
        co_lista_valoraciones_bajas := PKG_Clientes.ConsultarValoracionesBajas;
        RETURN co_lista_valoraciones_bajas;
    END;
    --
    FUNCTION co_productos_mas_vendidos RETURN SYS_REFCURSOR
    AS
        co_productos_mas_vendidos SYS_REFCURSOR;
    BEGIN
        co_productos_mas_vendidos := PKG_Productos.consultarProductosMasVendidos;
        RETURN co_productos_mas_vendidos;
    END;
END;
/

