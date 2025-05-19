/* SQL PROYECTO
    Felipe Calvache - Hernan Sanchez
*/


-- PoblarNoOK

/*  Al intentar ingresar un empleado con un cargo diferente a los estipulados no nos dejara
    CK_cargo    */
INSERT INTO EMPLEADOS VALUES (10059, 'Felipe Calvache', 'J', '3233333333', 'fecalvache@gmail.com', 'Bogotá', 1);

/*  Para mayor orden no se permiten puntajes mayores a 10
    CK_puntaje  */
INSERT INTO VALORACIONES VALUES (99, 1000, 'Vodka aceptable', TO_DATE('2024-02-04', 'YYYY-MM-DD'), 5, 'VAA64');

/*  Al intentar ingresar un cliente con otro tipo de documento no lo permitira
    CK_cedula   */
INSERT INTO CLIENTES VALUES (99, 'CCC', 1001057420, 'Hernan Sanchez', NULL, '322778998', 'hernachosanchez@hotmail.com', TO_DATE('2003-01-01', 'YYYY-MM-DD'));

/*  No se permite ingresar consecutivos negativos
    CK_consecutivo  */
INSERT INTO SEDES VALUES (-1, 'Calle 140 #4-19');

/*  No se permite ingresar consecutivos negativos
    CK_correo   */
INSERT INTO ELECTRONICAS VALUES ('asic@gmail', 'ASIC Limitada SAS', 1);

/*  Se definio que el id de los empleados debe estar dentro de un rango
    CK_empleado  */
INSERT INTO EMPLEADOS VALUES (100, 'Diego Santos', 'A', '3032345678', 'diegoHsantos@empresa.com', 'Cali', 5);

/*  Al ingresar un estado no definido nos lanza un error
    CK_estado */
INSERT INTO PEDIDOS VALUES (99, TO_DATE('2024-01-02', 'YYYY-MM-DD'), 'H', 1, 10000);

/*  Al ingresar un precio negativo no lo permite
    CK_moneda  */
INSERT INTO PRECIOS VALUES (99, 'UAC22', -800);

/*  Al ingresar un valor negativo no lo permite
    CK_positivo  */
INSERT INTO DetalleDePedidos VALUES (99, -100, 25000, 1, 'UAC22');

/*  No se puede utilizar una empresa transportadora con la que no se tenga convenio
    CK_transporte  */
INSERT INTO ENVIOS VALUES (5, TO_DATE('2025-04-05', 'YYYY-MM-DD'), 'Rappi', 6500, 'C', 'Calle 129 #13-23');

/*  Al intentar ingresar un empleado sin un nombre no no lo permitirá
    NULIDAD */
INSERT INTO EMPLEADOS VALUES (10000, NULL, 'A', '3233919833', 'felipecalvache@gmail.com', 'Bogotá', 1);

