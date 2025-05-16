/* SQL PROYECTO
    Felipe Calvache - Hernan Sanchez
*/


-- TuplasNoOK

/* 1) Definimos que si el estado del envio = 'C', entonces la empresaTransporte debe ser NULL
    CK_estado_transporte    */
INSERT INTO ENVIOS VALUES (3, TO_DATE('2024-02-24', 'YYYY-MM-DD'), 'Servientrega', 100000, 'C', 'Calle 1 #7-39');

/* 2) Definimos que si el cliente tiene cedula, entonces el numero debe empezar por '1'
    CK_tipo_numero  */
INSERT INTO CLIENTES VALUES (4, 'CC', '2001064920', 'Cesar Ramos', NULL, '322778998', 'cesarramos@hotmail.com', TO_DATE('2003-03-01', 'YYYY-MM-DD'));

/* 3) Definimos que si el cliente es una empresa la direccion no puede ser NULA
    CK_tipo_direccion   */
INSERT INTO CLIENTES VALUES (5, 'NIT', '3001562920', 'Sara Gomez', NULL, '322778998', 'saragomez@hotmail.com', TO_DATE('2003-03-01', 'YYYY-MM-DD'));

/* 4) Definimos que el precio de compra debe ser menor al precio de venta
    CK_compra_venta    */
INSERT INTO PRODUCTOS VALUES ('VAH64', 'Vodka Absolut Azul 700 ml', 10000, 7000);

