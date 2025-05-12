/* SQL PROYECTO
    Felipe Calvache - Hernan Sanchez
*/


-- PoblarNoOK

/*  Al intentar insertar al mismo cliente no nos deja porque ya existe
    PK_clientes */
INSERT INTO CLIENTES VALUES (1, 'CE', '1001064920', 'Hernan Sanchez', NULL, '322778998', 'hernansanchez@hotmail.com', TO_DATE('2003-03-01', 'YYYY-MM-DD'));

/*  Al intentar ingresar un empleado sin un nombre no no lo permitirá
    NULIDAD */
INSERT INTO EMPLEADOS VALUES (10000, NULL, 'A', '3233919833', 'felipecalvache@gmail.com', 'Bogotá', 1);

/*  Al ingresar un precio negativo no lo permite
    CK_Tmoneda_precios  */
INSERT INTO PRECIOS VALUES (1, 'UAC22', -800);

/*  Al ingresar un estado no definido nos lanza un error
    CK_Testado_pedidos */
INSERT INTO PEDIDOS VALUES (1, TO_DATE('2024-01-02', 'YYYY-MM-DD'), 'H', 1, 10000);

/* Un cliente no puede dar una calificacion mayor a 10
    CK_puntaje  */
INSERT INTO VALORACIONES VALUES (1, 100, 'EXCELENTEEE', TO_DATE('2024-01-02', 'YYYY-MM-DD'), 1, 'UAC22');