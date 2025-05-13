/* SQL PROYECTO
    Felipe Calvache - Hernan Sanchez
*/


-- DisparadoresNoOK

-- 1) Envio sin dirección
INSERT INTO ENVIOS (fechaEnvio, empresaTransporte, estado) VALUES (TO_DATE('2023-12-01', 'YYYY-MM-DD'), 'Envia', 'P');

-- 2) Precio de venta no coincide con el precio venta del producto
INSERT INTO DetalleDeVentas VALUES (3, 1, 5000, 'UAC22', 1);

-- 3) El producto a insertar debe existir en PRODUCTOS
INSERT INTO DetalleDeVentas VALUES (3, 1, 40000, 'XLR03', 1);