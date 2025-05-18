-- PK ADMINISTRADOR
CREATE OR REPLACE PACKAGE PKG_ADMINISTRADOR IS
    PROCEDURE ad_proveedor(nombre VARCHAR, direccion VARCHAR, telefono VARCHAR, correo VARCHAR);
    FUNCTION co_ventas_totales_mes;
    FUNCTION co_mejor_proovedor_producto;
    FUNCTION co_lista_empleados(XidSede VARCHAR) RETURN SYS_REFCURSOR;
    FUNCTION co_lista_valoraciones_bajas RETURN SYS_REFCURSOR;
    FUNCTION co_proveedores RETURN SYS_REFCURSOR;
    PROCEDURE mo_proveedor(XidProveedor INTEGER, Xnombre VARCHAR, Xdireccion VARCHAR, Xtelefono VARCHAR, Xcorreo VARCHAR);
END PKG_ADMINISTRADOR;

-- PK VENDEDOR
CREATE OR REPLACE PACKAGE PKG_VENDEDOR IS
    PROCEDURE ad_venta(fecha DATE, idCliente INTEGER, idEmpleado INTEGER, idFactura INTEGER, idEnvio INTEGER);
    PROCEDURE ad_detalle_venta(idProducto VARCHAR, cantidad INTEGER,precio INTEGER, idVenta INTEGER);
    PROCEDURE ad_factura(fecha DATE);
    PROCEDURE ad_producto(descripcion VARCHAR, precioCompra INTEGER, precioVenta INTEGER);
    PROCEDURE ad_pedido(fecha DATE, idProveedor INTEGER, idEmpleado INTEGER);
    PROCEDURE ad_detale_pedido(cantidad INTEGER, precio INTEGER, idPedido INTEGER, idProducto VARCHAR);
    PROCEDURE ad_cliente(tipo VARCHAR, numero INTEGER, nombre VARCHAR, direccion VARCHAR, telefono VARCHAR, correo VARCHAR,fechaNacimiento DATE);
    PROCEDURE ad_envio(fechaEnvio DATE, empresaTransporte VARCHAR, estado CHAR, direccionEnvio VARCHAR);
    PROCEDURE co_precios RETURN SYS_REFCURSOR;
    PROCEDURE co_venta RETURN SYS_REFCURSOR;
    PROCEDURE co_producto RETURN SYS_REFCURSOR;
    PROCEDURE co_cliente(n in varchar);
    PROCEDURE mo_producto(XidProducto VARCHAR, XprecioCompra INTEGER , XprecioVenta INTEGER);
    PROCEDURE mo_cliente(Xcedula INTEGER, Xtipo VARCHAR, Xtelefono VARCHAR, Xdireccion VARCHAR, Xcorreo VARCHAR);
    PROCEDURE mo_pedido(XidPedido INTEGER, estado CHAR);
    PROCEDURE mo_detalle_pedido(xidDetalle INTEGER, XidProducto VARCHAR, Xcantidad INTEGER, Xprecio INTEGER);
END PKG_VENDEDOR;

-- PK ALAMACENISTA
CREATE OR REPLACE PACKAGE PKG_ALMACENISTA IS
    PROCEDURE co_pedidos_pend_proveedor();
    PROCEDURE co_pedido(XidPedido INTEGER) RETURN SYS_REFCURSOR;
    procedure co_detalle_pedido(xidPedido INTEGER) RETURN SYS_REFCURSOR;
    PROCEDURE ad_envio(fechaEnvio DATE, empresaTransporte VARCHAR, estado CHAR, direccionEnvio VARCHAR);
    PROCEDURE co_envio();
    PROCEDURE mo_envio();
END PKG_ALMACENISTA;

-- PK CLIENTE
CREATE OR REPLACE PACKAGE PKG_CLIENTE IS
    PROCEDURE ad_envio(fechaEnvio DATE, empresaTransporte VARCHAR, estado CHAR, direccionEnvio VARCHAR);
    PROCEDURE co_productos(EMPTY VARCHAR) RETURN SYS_REFCURSOR;
    PROCEDURE co_envio();
END PKG_CLIENTE;

-- PK ANALISTA DE NEGOCIOS
CREATE OR REPLACE PACKAGE PKG_ANALISTA_NEGOCIOS IS
    PROCEDURE co_ventas_totales_mes();
    PROCEDURE co_mejor_proovedor_producto(EMPTY VARCHAR);
    PROCEDURE co_lista_empleados_sede(XidSede VARCHAR) RETURN SYS_REFCURSOR;
    PROCEDURE co_lista_valoraciones_bajas(EMPTY VARCHAR) RETURN SYS_REFCURSOR;
    PROCEDURE co_productos_mas_vendidos();
END PKG_ANALISTA_NEGOCIOS;