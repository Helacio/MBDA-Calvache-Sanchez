/* SQL PROYECTO
    Felipe Calvache - Hernan Sanchez
*/


-- XForaneas

ALTER TABLE DetalleDeVentas DROP CONSTRAINT FK_DetalleDeVentas_ventas;
ALTER TABLE DetalleDePedidos DROP CONSTRAINT FK_DetalleDePedidos_pedidos;
ALTER TABLE VALORACIONES DROP CONSTRAINT FK_valoraciones_clientes;
ALTER TABLE PEDIDOS DROP CONSTRAINT FK_pedidos_proveedores;
ALTER TABLE VENTAS DROP CONSTRAINT FK_ventas_envios;


-- Acciones

-- Si eliminamos ventas, tambien se deben eliminar los detalles de ventas asociados
ALTER TABLE DetalleDeVentas
ADD CONSTRAINT FK_DetalleDeVentas_ventas FOREIGN KEY (idVenta) REFERENCES VENTAS(idVenta) ON DELETE CASCADE;

-- Si eliminamos un pedido, tambien se deben eliminar los detalles de pedido asociados
ALTER TABLE DetalleDePedidos
ADD CONSTRAINT FK_DetalleDePedidos_pedidos FOREIGN KEY (idPedido) REFERENCES PEDIDOS(idPedido) ON DELETE CASCADE;

-- Si eliminamos un cliente queremos que su valoracion asociada quede desconocida
ALTER TABLE VALORACIONES
ADD CONSTRAINT FK_valoraciones_clientes FOREIGN KEY (idCliente) REFERENCES CLIENTES(idCliente) ON DELETE CASCADE;

-- Si eliminamos a un proveedor tambien se tienen que eliminar los pedidos asociados
ALTER TABLE PEDIDOS
ADD CONSTRAINT FK_pedidos_proveedores FOREIGN KEY (idProveedor) REFERENCES PROVEEDORES(idProveedor) ON DELETE CASCADE;

-- Si eliminamos un envio, también se tienen que eliminar sus ventas asociadas
ALTER TABLE VENTAS
ADD CONSTRAINT FK_ventas_envios FOREIGN KEY (idEnvio) REFERENCES ENVIOS(idEnvio);

