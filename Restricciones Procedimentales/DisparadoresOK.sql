/* SQL PROYECTO
    Felipe Calvache - Hernan Sanchez
*/


-- DisparadoresOK

-- 1) Se genera el ID de PRODUCTOS de manera automática
SELECT *
FROM PRODUCTOS;

INSERT INTO PRODUCTOS (descripcion, precioCompra, precioVenta) VALUES ('Bacardi Toronja 250 ml', 60000, 67000);

-- 2) El precio de venta es el correcto en DetalleDeVentas
SELECT *
FROM DetalleDeVentas;

SELECT *
FROM PRODUCTOS;

INSERT INTO DetalleDeVentas VALUES (6, 1, 27500, 'UAC22', 5);

-- 3) Ventas a mayores de edad
SELECT *
FROM VENTAS;

SELECT *
FROM CLIENTES;

INSERT INTO VENTAS VALUES (5, TO_DATE('2025-04-01', 'YYYY-MM-DD'), 3, 10000, 1, NULL);

-- 4) Insertar pedido estado por defecto = 'p'
SELECT *
FROM PEDIDOS;

INSERT INTO PEDIDOS VALUES (1, TO_DATE('2025-03-15', 'YYYY-MM-DD'), NULL, 2, 10001);

-- 5) Insertar envio se genera un costo aleatorio
SELECT *
FROM ENVIOS;

INSERT INTO ENVIOS VALUES (1, TO_DATE('2025-01-01', 'YYYY-MM-DD'), 'Envia', 0, 'P', 'Calle 13 #12-23');

