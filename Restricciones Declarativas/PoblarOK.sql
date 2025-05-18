/* SQL PROYECTO
    Felipe Calvache - Hernan Sanchez
*/


-- PoblarOK

-- FACTURAS
INSERT INTO FACTURAS VALUES (1, TO_DATE('2024-03-01', 'YYYY-MM-DD'));
INSERT INTO FACTURAS VALUES (2, TO_DATE('2024-03-03', 'YYYY-MM-DD'));
INSERT INTO FACTURAS VALUES (3, TO_DATE('2024-03-04', 'YYYY-MM-DD'));
INSERT INTO FACTURAS VALUES (4, TO_DATE('2024-03-05', 'YYYY-MM-DD'));
INSERT INTO FACTURAS VALUES (5, TO_DATE('2024-03-05', 'YYYY-MM-DD'));
INSERT INTO FACTURAS VALUES (6, TO_DATE('2025-05-01', 'YYYY-MM-DD'));
INSERT INTO FACTURAS VALUES (7, TO_DATE('2025-05-02', 'YYYY-MM-DD'));
INSERT INTO FACTURAS VALUES (8, TO_DATE('2025-05-03', 'YYYY-MM-DD'));
INSERT INTO FACTURAS VALUES (9, TO_DATE('2025-05-04', 'YYYY-MM-DD'));
INSERT INTO FACTURAS VALUES (10, TO_DATE('2025-05-05', 'YYYY-MM-DD'));
INSERT INTO FACTURAS VALUES (11, TO_DATE('2025-05-06', 'YYYY-MM-DD'));
INSERT INTO FACTURAS VALUES (12, TO_DATE('2025-05-07', 'YYYY-MM-DD'));
INSERT INTO FACTURAS VALUES (13, TO_DATE('2025-05-08', 'YYYY-MM-DD'));
INSERT INTO FACTURAS VALUES (14, TO_DATE('2025-05-09', 'YYYY-MM-DD'));
INSERT INTO FACTURAS VALUES (15, TO_DATE('2025-05-10', 'YYYY-MM-DD'));
INSERT INTO FACTURAS VALUES (16, TO_DATE('2025-05-11', 'YYYY-MM-DD'));
INSERT INTO FACTURAS VALUES (17, TO_DATE('2025-05-12', 'YYYY-MM-DD'));
INSERT INTO FACTURAS VALUES (18, TO_DATE('2025-05-13', 'YYYY-MM-DD'));
INSERT INTO FACTURAS VALUES (19, TO_DATE('2025-05-14', 'YYYY-MM-DD'));
INSERT INTO FACTURAS VALUES (20, TO_DATE('2025-05-15', 'YYYY-MM-DD'));
INSERT INTO FACTURAS VALUES (21, TO_DATE('2025-05-16', 'YYYY-MM-DD'));
INSERT INTO FACTURAS VALUES (22, TO_DATE('2025-05-17', 'YYYY-MM-DD'));
INSERT INTO FACTURAS VALUES (23, TO_DATE('2025-05-18', 'YYYY-MM-DD'));
INSERT INTO FACTURAS VALUES (24, TO_DATE('2025-05-19', 'YYYY-MM-DD'));
INSERT INTO FACTURAS VALUES (25, TO_DATE('2025-05-20', 'YYYY-MM-DD'));
INSERT INTO FACTURAS VALUES (26, TO_DATE('2025-05-21', 'YYYY-MM-DD'));
INSERT INTO FACTURAS VALUES (27, TO_DATE('2025-05-22', 'YYYY-MM-DD'));
INSERT INTO FACTURAS VALUES (28, TO_DATE('2025-05-23', 'YYYY-MM-DD'));
INSERT INTO FACTURAS VALUES (29, TO_DATE('2025-05-24', 'YYYY-MM-DD'));
INSERT INTO FACTURAS VALUES (30, TO_DATE('2025-05-25', 'YYYY-MM-DD'));

-- ENVIOS
INSERT INTO ENVIOS VALUES (1, TO_DATE('2025-04-26', 'YYYY-MM-DD'), 'Envia', 14000, 'P', 'Carrera 15 #45-67');
INSERT INTO ENVIOS VALUES (2, TO_DATE('2025-04-27', 'YYYY-MM-DD'), 'Deprisa', 12500, 'D', 'Avenida 10 #23-89');
INSERT INTO ENVIOS VALUES (3, TO_DATE('2025-04-28', 'YYYY-MM-DD'), 'Servientrega', 17000, 'E', 'Calle 7 #12-34');
INSERT INTO ENVIOS VALUES (4, TO_DATE('2025-04-29', 'YYYY-MM-DD'), NULL, 9800, 'C', 'Transversal 16 #78-56');
INSERT INTO ENVIOS VALUES (5, TO_DATE('2025-04-30', 'YYYY-MM-DD'), 'Envia', 11200, 'P', 'Diagonal 32 #5-99');
INSERT INTO ENVIOS VALUES (6, TO_DATE('2025-05-01', 'YYYY-MM-DD'), 'Envia', 12800, 'P', 'Calle 123 #45-67');
INSERT INTO ENVIOS VALUES (7, TO_DATE('2025-05-02', 'YYYY-MM-DD'), 'Deprisa', 15200, 'D', 'Carrera 25 #10-02');
INSERT INTO ENVIOS VALUES (8, TO_DATE('2025-05-03', 'YYYY-MM-DD'), 'Servientrega', 9800, 'E', 'Avenida 7 #58-19');
INSERT INTO ENVIOS VALUES (9, TO_DATE('2025-05-04', 'YYYY-MM-DD'), NULL, 13450, 'C', 'Calle 87 #21-15');
INSERT INTO ENVIOS VALUES (10, TO_DATE('2025-05-05', 'YYYY-MM-DD'), 'Envia', 10100, 'P', 'Carrera 12 #33-40');
INSERT INTO ENVIOS VALUES (11, TO_DATE('2025-05-06', 'YYYY-MM-DD'), 'Deprisa', 14500, 'D', 'Transversal 5 #78-56');
INSERT INTO ENVIOS VALUES (12, TO_DATE('2025-05-07', 'YYYY-MM-DD'), 'Servientrega', 16500, 'E', 'Diagonal 23 #4-99');
INSERT INTO ENVIOS VALUES (13, TO_DATE('2025-05-08', 'YYYY-MM-DD'), NULL, 11900, 'C', 'Calle 56 #80-30');
INSERT INTO ENVIOS VALUES (14, TO_DATE('2025-05-09', 'YYYY-MM-DD'), 'Envia', 13550, 'P', 'Carrera 67 #2-17');
INSERT INTO ENVIOS VALUES (15, TO_DATE('2025-05-10', 'YYYY-MM-DD'), 'Deprisa', 11200, 'D', 'Avenida 90 #12-22');
INSERT INTO ENVIOS VALUES (16, TO_DATE('2025-05-11', 'YYYY-MM-DD'), 'Servientrega', 15600, 'E', 'Calle 22 #45-09');
INSERT INTO ENVIOS VALUES (17, TO_DATE('2025-05-12', 'YYYY-MM-DD'), NULL, 12100, 'C', 'Carrera 30 #11-88');
INSERT INTO ENVIOS VALUES (18, TO_DATE('2025-05-13', 'YYYY-MM-DD'), 'Envia', 14000, 'P', 'Calle 19 #63-44');
INSERT INTO ENVIOS VALUES (19, TO_DATE('2025-05-14', 'YYYY-MM-DD'), 'Deprisa', 9900, 'D', 'Carrera 52 #9-11');
INSERT INTO ENVIOS VALUES (20, TO_DATE('2025-05-15', 'YYYY-MM-DD'), 'Servientrega', 17200, 'E', 'Avenida 83 #71-36');
INSERT INTO ENVIOS VALUES (21, TO_DATE('2025-05-16', 'YYYY-MM-DD'), NULL, 12300, 'C', 'Calle 37 #25-62');
INSERT INTO ENVIOS VALUES (22, TO_DATE('2025-05-17', 'YYYY-MM-DD'), 'Envia', 14400, 'P', 'Carrera 15 #66-29');
INSERT INTO ENVIOS VALUES (23, TO_DATE('2025-05-18', 'YYYY-MM-DD'), 'Deprisa', 13050, 'D', 'Avenida 78 #39-14');
INSERT INTO ENVIOS VALUES (24, TO_DATE('2025-05-19', 'YYYY-MM-DD'), 'Servientrega', 10700, 'E', 'Calle 41 #72-06');
INSERT INTO ENVIOS VALUES (25, TO_DATE('2025-05-20', 'YYYY-MM-DD'), NULL, 15800, 'C', 'Carrera 24 #84-55');
INSERT INTO ENVIOS VALUES (26, TO_DATE('2025-05-21', 'YYYY-MM-DD'), 'Envia', 12550, 'P', 'Transversal 9 #58-38');
INSERT INTO ENVIOS VALUES (27, TO_DATE('2025-05-22', 'YYYY-MM-DD'), 'Deprisa', 9900, 'D', 'Diagonal 88 #45-91');
INSERT INTO ENVIOS VALUES (28, TO_DATE('2025-05-23', 'YYYY-MM-DD'), 'Servientrega', 13900, 'E', 'Calle 73 #22-17');
INSERT INTO ENVIOS VALUES (29, TO_DATE('2025-05-24', 'YYYY-MM-DD'), NULL, 11000, 'C', 'Carrera 19 #80-31');
INSERT INTO ENVIOS VALUES (30, TO_DATE('2025-05-25', 'YYYY-MM-DD'), 'Envia', 15300, 'P', 'Calle 64 #8-55');

-- SEDES
INSERT INTO SEDES VALUES (1, 'Calle 142 #9-19');
INSERT INTO SEDES VALUES (2, 'Cra 5 #10-20');
INSERT INTO SEDES VALUES (3, 'Calle 8 #12-25');
INSERT INTO SEDES VALUES (4, 'Av 30 #45-60');
INSERT INTO SEDES VALUES (5, 'Transv 12 #34-56');
INSERT INTO SEDES VALUES (6, 'Calle 45 #12-34, Bogota');
INSERT INTO SEDES VALUES (7, 'Carrera 10 #45-67, Medellin');
INSERT INTO SEDES VALUES (8, 'Avenida 7 #23-89, Cali');
INSERT INTO SEDES VALUES (9, 'Transversal 16 #78-56, Bucaramanga');
INSERT INTO SEDES VALUES (10, 'Diagonal 32 #5-99, Barranquilla');
INSERT INTO SEDES VALUES (11, 'Calle 67 #2-17, Cartagena');
INSERT INTO SEDES VALUES (12, 'Carrera 14 #71-36, Pereira');
INSERT INTO SEDES VALUES (13, 'Avenida 56 #80-30, Manizales');
INSERT INTO SEDES VALUES (14, 'Calle 22 #45-09, Armenia');
INSERT INTO SEDES VALUES (15, 'Carrera 30 #11-88, Cucuta');
INSERT INTO SEDES VALUES (16, 'Transversal 9 #58-38, Santa Marta');
INSERT INTO SEDES VALUES (17, 'Diagonal 88 #45-91, Ibague');
INSERT INTO SEDES VALUES (18, 'Calle 73 #22-17, Villavicencio');
INSERT INTO SEDES VALUES (19, 'Carrera 19 #80-31, Neiva');
INSERT INTO SEDES VALUES (20, 'Avenida 83 #71-36, Pasto');
INSERT INTO SEDES VALUES (21, 'Calle 37 #25-62, Popayan');
INSERT INTO SEDES VALUES (22, 'Carrera 15 #66-29, Monteria');
INSERT INTO SEDES VALUES (23, 'Calle 41 #72-06, Valledupar');
INSERT INTO SEDES VALUES (24, 'Carrera 24 #84-55, Tunja');
INSERT INTO SEDES VALUES (25, 'Avenida 11 #70-24, Sincelejo');
INSERT INTO SEDES VALUES (26, 'Calle 97 #43-10, Florencia');
INSERT INTO SEDES VALUES (27, 'Carrera 53 #79-46, Riohacha');
INSERT INTO SEDES VALUES (28, 'Avenida 42 #69-32, Leticia');
INSERT INTO SEDES VALUES (29, 'Calle 64 #8-55, San Andres');
INSERT INTO SEDES VALUES (30, 'Carrera 38 #21-98, Yopal');

-- EMPLEADOS
INSERT INTO EMPLEADOS VALUES (10000, 'Felipe Calvache', 'A', '3233919833', 'felipecalvache@gmail.com', 'Bogotá', 1);
INSERT INTO EMPLEADOS VALUES (10001, 'Manuel Pinzón', 'V', '3001234567', 'manuelp@empresa.com', 'Bogotá', 2);
INSERT INTO EMPLEADOS VALUES (10002, 'Jeider Rodriguez', 'C', '3017654321', 'jeiderrodriguez@empresa.com', 'Cali', 3);
INSERT INTO EMPLEADOS VALUES (10003, 'Juan Caina', 'D', '3024567890', 'juancaina@empresa.com', 'Medellín', 4);
INSERT INTO EMPLEADOS VALUES (10004, 'Diego Santos', 'A', '3032345678', 'diegosantos@empresa.com', 'Cali', 5);
INSERT INTO EMPLEADOS VALUES (10234, 'Carlos Perez', 'A', '3208456712', 'carlosperez@empresa.com', 'Bogota', 6);
INSERT INTO EMPLEADOS VALUES (15879, 'Ana Rodriguez', 'C', '3017864532', 'anarodriguez@correo.com', NULL, 7);
INSERT INTO EMPLEADOS VALUES (19450, 'Luis Gomez', 'D', '3159023471', 'luisgomez@negocio.net', 'Medellin', 8);
INSERT INTO EMPLEADOS VALUES (23987, 'Sofia Martinez', 'L', '3187654012', 'sofiamartinez@trabajo.org', 'Cali', 9);
INSERT INTO EMPLEADOS VALUES (27456, 'Javier Castillo', 'V', '3109872345', 'javiercastillo@empresa.com', NULL, 10);
INSERT INTO EMPLEADOS VALUES (31589, 'Gabriela Herrera', 'AL', '3045678901', 'gabrielaherrera@correo.com', 'Bucaramanga', 11);
INSERT INTO EMPLEADOS VALUES (36941, 'Eduardo Sanchez', 'A', '3178902345', 'eduardosanchez@negocio.net', 'Barranquilla', 12);
INSERT INTO EMPLEADOS VALUES (40218, 'Patricia Lopez', 'C', '3112346789', 'patricialopez@trabajo.org', NULL, 13);
INSERT INTO EMPLEADOS VALUES (45321, 'Ricardo Torres', 'D', '3009876543', 'ricardotorres@empresa.com', 'Cartagena', 14);
INSERT INTO EMPLEADOS VALUES (49876, 'Maria Fernandez', 'L', '3198765432', 'mariafernandez@correo.com', 'Pereira', 15);
INSERT INTO EMPLEADOS VALUES (53892, 'Fernando Rios', 'V', '3123456780', 'fernandorios@negocio.net', NULL, 16);
INSERT INTO EMPLEADOS VALUES (58321, 'Andrea Chavez', 'AL', '3224567890', 'andreachavez@trabajo.org', 'Manizales', 17);
INSERT INTO EMPLEADOS VALUES (61239, 'Sebastian Velez', 'A', '3167890123', 'sebastianvelez@empresa.com', 'Armenia', 18);
INSERT INTO EMPLEADOS VALUES (65487, 'Valentina Duarte', 'C', '3023456789', 'valentinaduarte@correo.com', NULL, 19);
INSERT INTO EMPLEADOS VALUES (69854, 'Daniel Mora', 'D', '3098765432', 'danielmora@negocio.net', 'Cucuta', 20);
INSERT INTO EMPLEADOS VALUES (74362, 'Camila Vargas', 'L', '3256789012', 'camilavargas@trabajo.org', 'Santa Marta', 21);
INSERT INTO EMPLEADOS VALUES (78695, 'Alejandro Navarro', 'V', '3145678901', 'alejandronavarro@empresa.com', NULL, 22);
INSERT INTO EMPLEADOS VALUES (81934, 'Natalia Paredes', 'AL', '3009871234', 'nataliaparedes@correo.com', 'Ibague', 23);
INSERT INTO EMPLEADOS VALUES (85972, 'Felipe Correa', 'A', '3289012345', 'felipecorrea@negocio.net', 'Villavicencio', 24);
INSERT INTO EMPLEADOS VALUES (90458, 'Lorena Salazar', 'C', '3034567890', 'lorenasalazar@trabajo.org', NULL, 25);
INSERT INTO EMPLEADOS VALUES (94876, 'Rodrigo Quintero', 'D', '3187654321', 'rodrigoquintero@empresa.com', 'Neiva', 26);
INSERT INTO EMPLEADOS VALUES (98723, 'Esteban Montes', 'L', '3078901234', 'estebanmontes@correo.com', 'Pasto', 27);
INSERT INTO EMPLEADOS VALUES (10345, 'Paola Guzman', 'V', '3298765432', 'paolaguzman@negocio.net', NULL, 28);
INSERT INTO EMPLEADOS VALUES (14567, 'Oscar Rincon', 'AL', '3156789012', 'oscarrincon@trabajo.org', 'Popayan', 29);
INSERT INTO EMPLEADOS VALUES (18794, 'Gabriela Rivera', 'A', '3212345678', 'gabrielarivera@empresa.com', 'Monteria', 30);
INSERT INTO EMPLEADOS VALUES (23981, 'Juan Suarez', 'C', '3023456780', 'juansuarez@correo.com', NULL, 6);
INSERT INTO EMPLEADOS VALUES (27845, 'Liliana Castro', 'D', '3134567890', 'lilianacastro@negocio.net', 'Valledupar', 7);
INSERT INTO EMPLEADOS VALUES (32691, 'Mateo Leon', 'L', '3278901234', 'mateoleon@trabajo.org', 'Tunja', 8);
INSERT INTO EMPLEADOS VALUES (37412, 'Carolina Arias', 'V', '3112345678', 'carolinaarias@empresa.com', NULL, 9);
INSERT INTO EMPLEADOS VALUES (97222, 'Daniel Araujo', 'V', '3233999660', 'danielaraujo@hotmail.com', 'Bogota', 6);

-- CLIENTES
INSERT INTO CLIENTES VALUES (1, 'CC', 11234567, 'Juan Perez', 'Calle 10 #23-45, Bogota', '3208456712', 'juanperez@servicio.com', TO_DATE('1990-01-15', 'YYYY-MM-DD'));
INSERT INTO CLIENTES VALUES (2, 'CE', 87624321, 'Ana Rodriguez', NULL, '3017864532', 'anaaodriguez@empresa.org', TO_DATE('1985-04-23', 'YYYY-MM-DD'));
INSERT INTO CLIENTES VALUES (3, 'NIT', 36543218, 'Distribuidora Gomez', 'Carrera 15 #10-67, Medellin', '3159023471', 'bebidassgomez@correo.net', TO_DATE('1978-11-05', 'YYYY-MM-DD'));
INSERT INTO CLIENTES VALUES (4, 'P', 60432189, 'Sofia Martinez', 'Avenida 9 #45-89, Cali', '3187654012', 'sofiaamartinez@negocio.com', TO_DATE('1995-02-12', 'YYYY-MM-DD'));
INSERT INTO CLIENTES VALUES (5, 'CC', 19800543, 'Carlos Herrera', NULL, '3109872345', 'carlosherrera@trabajo.net', TO_DATE('1987-09-29', 'YYYY-MM-DD'));
INSERT INTO CLIENTES VALUES (6, 'CC', 18765432, 'Carlos Perez', 'Calle 45 #12-34, Bogota', '3208456712', 'carlosperez@servicio.com', TO_DATE('1985-06-15', 'YYYY-MM-DD'));
INSERT INTO CLIENTES VALUES (7, 'CE', 87654321, 'Ana Rodriguez', NULL, '3017864532', 'anarodriguez@empresa.org', TO_DATE('1992-04-23', 'YYYY-MM-DD'));
INSERT INTO CLIENTES VALUES (8, 'NIT', 76543218, 'Distribuidora Gomez', 'Carrera 10 #45-67, Medellin', '3159023471', 'bebidasgomez@correo.net', TO_DATE('1980-11-05', 'YYYY-MM-DD'));
INSERT INTO CLIENTES VALUES (9, 'P', 65432189, 'Sofia Martinez', 'Avenida 7 #23-89, Cali', '3187654012', 'sofiamartinez@negocio.com', TO_DATE('1995-02-12', 'YYYY-MM-DD'));
INSERT INTO CLIENTES VALUES (10, 'CC', 14321876, 'Javier Castillo', NULL, '3109872345', 'javiercastillo@trabajo.net', TO_DATE('1987-09-29', 'YYYY-MM-DD'));
INSERT INTO CLIENTES VALUES (11, 'CE', 43218765, 'Gabriela Herrera', 'Transversal 16 #78-56, Bucaramanga', '3045678901', 'gabrielaherrera@empresa.org', TO_DATE('1998-01-30', 'YYYY-MM-DD'));
INSERT INTO CLIENTES VALUES (12, 'NIT', 32187654, 'Licores Sanchez', 'Diagonal 32 #5-99, Barranquilla', '3178902345', 'licoresanchez@correo.net', TO_DATE('1983-07-20', 'YYYY-MM-DD'));
INSERT INTO CLIENTES VALUES (13, 'P', 21876543, 'Patricia Lopez', NULL, '3112346789', 'patricialopez@negocio.com', TO_DATE('2000-06-02', 'YYYY-MM-DD'));
INSERT INTO CLIENTES VALUES (14, 'CC', 13654321, 'Ricardo Torres', 'Calle 67 #2-17, Cartagena', '3009876543', 'ricardotorres@servicio.org', TO_DATE('1991-12-15', 'YYYY-MM-DD'));
INSERT INTO CLIENTES VALUES (15, 'CE', 17654328, 'Maria Fernandez', 'Carrera 14 #71-36, Pereira', '3198765432', 'mariafernandez@trabajo.net', TO_DATE('1986-03-21', 'YYYY-MM-DD'));
INSERT INTO CLIENTES VALUES (16, 'NIT', 16543287, 'Distribuciones Rios', 'Avenida 83 #71-36, Pasto', '3123456780', 'distribucionesrios@empresa.com', TO_DATE('1979-09-08', 'YYYY-MM-DD'));
INSERT INTO CLIENTES VALUES (17, 'P', 15432876, 'Andrea Chavez', 'Calle 37 #25-62, Popayan', '3224567890', 'andreachavez@negocio.org', TO_DATE('2002-07-13', 'YYYY-MM-DD'));
INSERT INTO CLIENTES VALUES (18, 'CC', 11287654, 'Sebastian Velez', 'Calle 22 #45-09, Armenia', '3167890123', 'sebastianvelez@correo.net', TO_DATE('1994-04-05', 'YYYY-MM-DD'));
INSERT INTO CLIENTES VALUES (19, 'CE', 13287654, 'Valentina Duarte', NULL, '3023456789', 'valentinaduarte@servicio.com', TO_DATE('1988-11-18', 'YYYY-MM-DD'));
INSERT INTO CLIENTES VALUES (20, 'NIT', 12176543, 'Suministros Mora', 'Carrera 30 #11-88, Cucuta', '3098765432', 'suministrosmora@trabajo.org', TO_DATE('1996-05-09', 'YYYY-MM-DD'));
INSERT INTO CLIENTES VALUES (21, 'P', 11065432, 'Camila Vargas', 'Transversal 9 #58-38, Santa Marta', '3256789012', 'camilavargas@negocio.net', TO_DATE('1982-10-26', 'YYYY-MM-DD'));
INSERT INTO CLIENTES VALUES (22, 'CC', 12543289, 'Alejandro Navarro', NULL, '3145678901', 'alejandronavarro@correo.com', TO_DATE('2001-02-03', 'YYYY-MM-DD'));
INSERT INTO CLIENTES VALUES (23, 'CE', 98765420, 'Natalia Paredes', 'Calle 73 #22-17, Ibague', '3009871234', 'nataliaparedes@servicio.org', TO_DATE('1993-12-07', 'YYYY-MM-DD'));
INSERT INTO CLIENTES VALUES (24, 'NIT', 87654329, 'Distribuidora Correa', 'Carrera 19 #80-31, Villavicencio', '3289012345', 'distribuidoracorrea@trabajo.net', TO_DATE('1981-08-14', 'YYYY-MM-DD'));
INSERT INTO CLIENTES VALUES (25, 'P', 76543298, 'Lorena Salazar', NULL, '3034567890', 'lorenasalazar@empresa.com', TO_DATE('1999-09-30', 'YYYY-MM-DD'));
INSERT INTO CLIENTES VALUES (26, 'CC', 19876543, 'Rodrigo Quintero', 'Carrera 24 #84-55, Neiva', '3187654321', 'rodrigoquintero@negocio.org', TO_DATE('1985-01-12', 'YYYY-MM-DD'));
INSERT INTO CLIENTES VALUES (27, 'CE', 54329876, 'Esteban Montes', 'Avenida 11 #70-24, Pasto', '3078901234', 'estebanmontes@correo.net', TO_DATE('1997-03-25', 'YYYY-MM-DD'));
INSERT INTO CLIENTES VALUES (28, 'NIT', 43298765, 'ElectroTienda Guzman', 'Carrera 9 #34-12, Cali', '3298765432', 'electrotiendaguzman@servicio.com', TO_DATE('1990-07-05', 'YYYY-MM-DD'));
INSERT INTO CLIENTES VALUES (29, 'P', 32187659, 'Oscar Rincon', 'Calle 97 #43-10, Florencia', '3156789012', 'oscarrincon@trabajo.net', TO_DATE('1983-11-30', 'YYYY-MM-DD'));
INSERT INTO CLIENTES VALUES (30, 'CC', 11876548, 'Gabriela Rivera', 'Carrera 53 #79-46, Riohacha', '3212345678', 'gabrielarivera@negocio.org', TO_DATE('2000-05-15', 'YYYY-MM-DD'));

-- PRODUCTOS
INSERT INTO PRODUCTOS VALUES ('UAC22', 'Aguardiente Antioqueño 375ml', 25000, 27500,
  XMLTYPE(
    '<detalle_xml>
      <paisOrigen>Colombia</paisOrigen>
      <alcohol>29</alcohol>
      <lote>AG-001</lote>
      <fechaElaboracion fecha="2023-03-15" hora="08:00"/>
    </detalle_xml>'
  ));
INSERT INTO PRODUCTOS VALUES ('RMA78', 'Ron Medellín 8 años 750ml', 70000, 77000, 
  XMLTYPE(
    '<detalle_xml>
      <paisOrigen>Colombia</paisOrigen>
      <alcohol>35</alcohol>
      <lote>RM-208</lote>
      <fechaElaboracion fecha="2022-11-20" hora="10:30"/>
    </detalle_xml>'
  ));
INSERT INTO PRODUCTOS VALUES ('TDJ12', 'Tequila Don Julio Reposado Reserva700 ml', 270000, 297000,
  XMLTYPE(
    '<detalle_xml>
      <paisOrigen>México</paisOrigen>
      <alcohol>38</alcohol>
      <lote>TJ-777</lote>
      <fechaElaboracion fecha="2023-01-10" hora="14:45"/>
    </detalle_xml>'
  ));
INSERT INTO PRODUCTOS VALUES ('WOP23', 'Whisky Old Parr 12 Años 750 ml', 140000, 154000,
  XMLTYPE(
    '<detalle_xml>
      <paisOrigen>Escocia</paisOrigen>
      <alcohol>40</alcohol>
      <lote>WP-456</lote>
      <fechaElaboracion fecha="2021-12-05" hora="09:15"/>
    </detalle_xml>'
  ));
INSERT INTO PRODUCTOS VALUES ('VAA64', 'Vodka Absolut Azul 700 ml', 80000, 88000,
  XMLTYPE(
    '<detalle_xml>
      <paisOrigen>Suecia</paisOrigen>
      <alcohol>40</alcohol>
      <lote>VA-321</lote>
      <fechaElaboracion fecha="2023-07-18" hora="16:20"/>
    </detalle_xml>'
  ));
INSERT INTO PRODUCTOS VALUES ('ABC12', 'Cerveza artesanal rubia 330ml', 3500, 7000, XMLTYPE('<detalle_xml><paisOrigen>Colombia</paisOrigen><alcohol>5</alcohol><lote>CB-101</lote><fechaElaboracion fecha="2024-06-01" hora="09:00"/></detalle_xml>'));
INSERT INTO PRODUCTOS VALUES ('XYZ45', 'Whisky escoces 12 años 750ml', 75000, 130000, XMLTYPE('<detalle_xml><paisOrigen>Escocia</paisOrigen><alcohol>40</alcohol><lote>WH-204</lote><fechaElaboracion fecha="2022-12-15" hora="11:30"/></detalle_xml>'));
INSERT INTO PRODUCTOS VALUES ('JHK87', 'Gin London Dry 700ml', 48000, 90000, XMLTYPE('<detalle_xml><paisOrigen>Inglaterra</paisOrigen><alcohol>37</alcohol><lote>GN-311</lote><fechaElaboracion fecha="2023-08-20" hora="14:00"/></detalle_xml>'));
INSERT INTO PRODUCTOS VALUES ('LMN23', 'Ron añejo reserva especial 750ml', 56000, 95000, XMLTYPE('<detalle_xml><paisOrigen>Colombia</paisOrigen><alcohol>35</alcohol><lote>RA-054</lote><fechaElaboracion fecha="2023-04-10" hora="10:45"/></detalle_xml>'));
INSERT INTO PRODUCTOS VALUES ('QRS09', 'Vodka premium 1L', 62000, 105000, XMLTYPE('<detalle_xml><paisOrigen>Rusia</paisOrigen><alcohol>40</alcohol><lote>VD-877</lote><fechaElaboracion fecha="2023-05-18" hora="16:20"/></detalle_xml>'));
INSERT INTO PRODUCTOS VALUES ('TUV34', 'Tequila reposado 750ml', 58000, 98000, XMLTYPE('<detalle_xml><paisOrigen>México</paisOrigen><alcohol>38</alcohol><lote>TQ-600</lote><fechaElaboracion fecha="2022-11-09" hora="12:10"/></detalle_xml>'));
INSERT INTO PRODUCTOS VALUES ('WXY78', 'Cerveza negra stout 500ml', 4200, 8500, XMLTYPE('<detalle_xml><paisOrigen>Alemania</paisOrigen><alcohol>6</alcohol><lote>CN-309</lote><fechaElaboracion fecha="2024-03-25" hora="07:30"/></detalle_xml>'));
INSERT INTO PRODUCTOS VALUES ('ZAB56', 'Vino tinto reserva cabernet sauvignon 750ml', 45000, 85000, XMLTYPE('<detalle_xml><paisOrigen>Chile</paisOrigen><alcohol>13</alcohol><lote>VT-120</lote><fechaElaboracion fecha="2021-10-01" hora="10:00"/></detalle_xml>'));
INSERT INTO PRODUCTOS VALUES ('BCD91', 'Brandy español 1L', 67000, 115000, XMLTYPE('<detalle_xml><paisOrigen>España</paisOrigen><alcohol>36</alcohol><lote>BY-203</lote><fechaElaboracion fecha="2022-07-07" hora="09:15"/></detalle_xml>'));
INSERT INTO PRODUCTOS VALUES ('EFG02', 'Licor de hierbas 750ml', 53000, 94000, XMLTYPE('<detalle_xml><paisOrigen>Alemania</paisOrigen><alcohol>30</alcohol><lote>LH-514</lote><fechaElaboracion fecha="2023-01-19" hora="08:45"/></detalle_xml>'));
INSERT INTO PRODUCTOS VALUES ('HIJ33', 'Cerveza lager 355ml', 3200, 6500, XMLTYPE('<detalle_xml><paisOrigen>México</paisOrigen><alcohol>4</alcohol><lote>CL-778</lote><fechaElaboracion fecha="2024-02-15" hora="06:30"/></detalle_xml>'));
INSERT INTO PRODUCTOS VALUES ('KLM88', 'Champaña francesa brut 750ml', 95000, 170000, XMLTYPE('<detalle_xml><paisOrigen>Francia</paisOrigen><alcohol>12</alcohol><lote>CF-390</lote><fechaElaboracion fecha="2022-10-10" hora="15:00"/></detalle_xml>'));
INSERT INTO PRODUCTOS VALUES ('NOP72', 'Whisky bourbon 750ml', 69000, 120000, XMLTYPE('<detalle_xml><paisOrigen>EEUU</paisOrigen><alcohol>43</alcohol><lote>WB-142</lote><fechaElaboracion fecha="2023-06-11" hora="13:20"/></detalle_xml>'));
INSERT INTO PRODUCTOS VALUES ('RST51', 'Ron blanco ligero 1L', 43000, 75000, XMLTYPE('<detalle_xml><paisOrigen>Cuba</paisOrigen><alcohol>35</alcohol><lote>RL-200</lote><fechaElaboracion fecha="2022-05-03" hora="11:00"/></detalle_xml>'));
INSERT INTO PRODUCTOS VALUES ('UVW60', 'Crema de whisky 750ml', 61000, 105000, XMLTYPE('<detalle_xml><paisOrigen>Irlanda</paisOrigen><alcohol>17</alcohol><lote>CW-330</lote><fechaElaboracion fecha="2023-09-27" hora="10:10"/></detalle_xml>'));
INSERT INTO PRODUCTOS VALUES ('XYZ37', 'Cerveza IPA 330ml', 3900, 7200, XMLTYPE('<detalle_xml><paisOrigen>EEUU</paisOrigen><alcohol>6</alcohol><lote>CI-314</lote><fechaElaboracion fecha="2024-04-05" hora="08:00"/></detalle_xml>'));
INSERT INTO PRODUCTOS VALUES ('ABC28', 'Mezcal joven 750ml', 56000, 97000, XMLTYPE('<detalle_xml><paisOrigen>México</paisOrigen><alcohol>45</alcohol><lote>MZ-620</lote><fechaElaboracion fecha="2023-08-22" hora="14:50"/></detalle_xml>'));
INSERT INTO PRODUCTOS VALUES ('JHK95', 'Vermut rojo italiano 1L', 48000, 88000, XMLTYPE('<detalle_xml><paisOrigen>Italia</paisOrigen><alcohol>16</alcohol><lote>VR-111</lote><fechaElaboracion fecha="2022-06-30" hora="12:30"/></detalle_xml>'));
INSERT INTO PRODUCTOS VALUES ('LMN42', 'Ginebra afrutada 700ml', 51000, 92000, XMLTYPE('<detalle_xml><paisOrigen>España</paisOrigen><alcohol>37</alcohol><lote>GF-998</lote><fechaElaboracion fecha="2023-02-10" hora="13:45"/></detalle_xml>'));
INSERT INTO PRODUCTOS VALUES ('QRS17', 'Sidra de manzana espumosa 750ml', 39000, 72000, XMLTYPE('<detalle_xml><paisOrigen>Francia</paisOrigen><alcohol>7</alcohol><lote>SD-404</lote><fechaElaboracion fecha="2023-10-05" hora="15:10"/></detalle_xml>'));
INSERT INTO PRODUCTOS VALUES ('TUV79', 'Vodka saborizado 1L', 58000, 99000, XMLTYPE('<detalle_xml><paisOrigen>Suecia</paisOrigen><alcohol>35</alcohol><lote>VS-909</lote><fechaElaboracion fecha="2022-09-09" hora="17:20"/></detalle_xml>'));
INSERT INTO PRODUCTOS VALUES ('WXY24', 'Whisky canadiense 750ml', 66000, 112000, XMLTYPE('<detalle_xml><paisOrigen>Canadá</paisOrigen><alcohol>40</alcohol><lote>WC-671</lote><fechaElaboracion fecha="2023-03-12" hora="11:50"/></detalle_xml>'));
INSERT INTO PRODUCTOS VALUES ('ZAB53', 'Cerveza roja ambar 500ml', 4100, 8200, XMLTYPE('<detalle_xml><paisOrigen>Argentina</paisOrigen><alcohol>5</alcohol><lote>CR-565</lote><fechaElaboracion fecha="2024-01-10" hora="09:10"/></detalle_xml>'));
INSERT INTO PRODUCTOS VALUES ('BCD80', 'Vino blanco seco 750ml', 42000, 78000, XMLTYPE('<detalle_xml><paisOrigen>Italia</paisOrigen><alcohol>13</alcohol><lote>VB-240</lote><fechaElaboracion fecha="2023-05-05" hora="12:40"/></detalle_xml>'));
INSERT INTO PRODUCTOS VALUES ('EFG29', 'Licor de cafe 700ml', 59000, 101000, XMLTYPE('<detalle_xml><paisOrigen>Colombia</paisOrigen><alcohol>28</alcohol><lote>LC-838</lote><fechaElaboracion fecha="2022-08-08" hora="14:15"/></detalle_xml>'));
INSERT INTO PRODUCTOS VALUES ('HIJ62', 'Agua tonica premium 200ml', 1500, 3500, NULL);
INSERT INTO PRODUCTOS VALUES ('KLM41', 'Cerveza trigo weissbier 500ml', 4500, 8800, XMLTYPE('<detalle_xml><paisOrigen>Alemania</paisOrigen><alcohol>5</alcohol><lote>CT-554</lote><fechaElaboracion fecha="2024-03-08" hora="07:00"/></detalle_xml>'));
INSERT INTO PRODUCTOS VALUES ('NOP66', 'Coñac XO frances 700ml', 99000, 180000, XMLTYPE('<detalle_xml><paisOrigen>Francia</paisOrigen><alcohol>40</alcohol><lote>CX-321</lote><fechaElaboracion fecha="2021-11-01" hora="16:30"/></detalle_xml>'));
INSERT INTO PRODUCTOS VALUES ('RST85', 'Ron especiado 1L', 53000, 96000, XMLTYPE('<detalle_xml><paisOrigen>Venezuela</paisOrigen><alcohol>35</alcohol><lote>RE-876</lote><fechaElaboracion fecha="2022-04-04" hora="10:00"/></detalle_xml>'));

-- VENTAS
INSERT INTO VENTAS VALUES (1, TO_DATE('2024-02-24', 'YYYY-MM-DD'), 1, 10000, 1, 1);
INSERT INTO VENTAS VALUES (2, TO_DATE('2024-04-05', 'YYYY-MM-DD'), 2, 10001, 2, 2);
INSERT INTO VENTAS VALUES (3, TO_DATE('2024-04-06', 'YYYY-MM-DD'), 3, 10002, 3, 3);
INSERT INTO VENTAS VALUES (4, TO_DATE('2024-04-07', 'YYYY-MM-DD'), 4, 10003, 4, 4);
INSERT INTO VENTAS VALUES (5, TO_DATE('2024-04-08', 'YYYY-MM-DD'), 5, 10004, 5, 5);
INSERT INTO VENTAS VALUES (6, TO_DATE('2025-05-01', 'YYYY-MM-DD'), 6, 10234, 6, 6);
INSERT INTO VENTAS VALUES (7, TO_DATE('2025-05-02', 'YYYY-MM-DD'), 7, 15879, 7, 7);
INSERT INTO VENTAS VALUES (8, TO_DATE('2025-05-03', 'YYYY-MM-DD'), 8, 19450, 8, 8);
INSERT INTO VENTAS VALUES (9, TO_DATE('2025-05-04', 'YYYY-MM-DD'), 9, 23987, 9, 9);
INSERT INTO VENTAS VALUES (10, TO_DATE('2025-05-05', 'YYYY-MM-DD'), 10, 27456, 10, 10);
INSERT INTO VENTAS VALUES (11, TO_DATE('2025-05-06', 'YYYY-MM-DD'), 11, 31589, 11, 11);
INSERT INTO VENTAS VALUES (12, TO_DATE('2025-05-07', 'YYYY-MM-DD'), 12, 36941, 12, 12);
INSERT INTO VENTAS VALUES (13, TO_DATE('2025-05-08', 'YYYY-MM-DD'), 13, 40218, 13, 13);
INSERT INTO VENTAS VALUES (14, TO_DATE('2025-05-09', 'YYYY-MM-DD'), 14, 45321, 14, 14);
INSERT INTO VENTAS VALUES (15, TO_DATE('2025-05-10', 'YYYY-MM-DD'), 15, 49876, 15, 15);
INSERT INTO VENTAS VALUES (16, TO_DATE('2025-05-11', 'YYYY-MM-DD'), 16, 53892, 16, 16);
INSERT INTO VENTAS VALUES (17, TO_DATE('2025-05-12', 'YYYY-MM-DD'), 17, 58321, 17, 17);
INSERT INTO VENTAS VALUES (18, TO_DATE('2025-05-13', 'YYYY-MM-DD'), 18, 61239, 18, 18);
INSERT INTO VENTAS VALUES (19, TO_DATE('2025-05-14', 'YYYY-MM-DD'), 19, 65487, 19, 19);
INSERT INTO VENTAS VALUES (20, TO_DATE('2025-05-15', 'YYYY-MM-DD'), 20, 69854, 20, 20);
INSERT INTO VENTAS VALUES (21, TO_DATE('2025-05-16', 'YYYY-MM-DD'), 21, 74362, 21, 21);
INSERT INTO VENTAS VALUES (22, TO_DATE('2025-05-17', 'YYYY-MM-DD'), 22, 78695, 22, 22);
INSERT INTO VENTAS VALUES (23, TO_DATE('2025-05-18', 'YYYY-MM-DD'), 23, 81934, 23, 23);
INSERT INTO VENTAS VALUES (24, TO_DATE('2025-05-19', 'YYYY-MM-DD'), 24, 85972, 24, 24);
INSERT INTO VENTAS VALUES (25, TO_DATE('2025-05-20', 'YYYY-MM-DD'), 25, 90458, 25, 25);
INSERT INTO VENTAS VALUES (26, TO_DATE('2025-05-21', 'YYYY-MM-DD'), 26, 94876, 26, 26);
INSERT INTO VENTAS VALUES (27, TO_DATE('2025-05-22', 'YYYY-MM-DD'), 27, 98723, 27, 27);
INSERT INTO VENTAS VALUES (28, TO_DATE('2025-05-23', 'YYYY-MM-DD'), 28, 10345, 28, 28);
INSERT INTO VENTAS VALUES (29, TO_DATE('2025-05-24', 'YYYY-MM-DD'), 29, 14567, 29, 29);
INSERT INTO VENTAS VALUES (30, TO_DATE('2025-05-25', 'YYYY-MM-DD'), 30, 18794, 30, 30);

-- PROVEEDORES
INSERT INTO PROVEEDORES VALUES (1, 'Industria de Licores', 'calle 100 #56-32', '52670152', 'industriaslicores@gmail.com');
INSERT INTO PROVEEDORES VALUES (2, 'Nacional de Licores', 'Calle 11 #12-34', '3101234567', 'nacionallicores@abc.com');
INSERT INTO PROVEEDORES VALUES (3, 'Bermudas', 'Cra 15 #45-67', '3204567890', 'bermudas@valle.com');
INSERT INTO PROVEEDORES VALUES (4, 'Bebidas Elite', 'Av 20 #33-22', '3009988776', 'bebidaselite@bebidas.com');
INSERT INTO PROVEEDORES VALUES (5, 'Exportadora RONCO', 'Calle 99 #88-77', '3112345678', 'ronco@export.com');
INSERT INTO PROVEEDORES VALUES (6, 'Distribuidora Lopez', 'Calle 45 #12-34, Bogota', '3208456712', 'distribuidoralopez@empresa.com');
INSERT INTO PROVEEDORES VALUES (7, 'Suministros Perez', 'Carrera 10 #45-67, Medellin', '3017864532', 'suministrosperez@correo.com');
INSERT INTO PROVEEDORES VALUES (8, 'Bebidas Gomez', 'Avenida 7 #23-89, Cali', '3159023471', 'bebidasgomez@negocio.net');
INSERT INTO PROVEEDORES VALUES (9, 'Vinos Martinez', 'Transversal 16 #78-56, Bucaramanga', '3187654012', 'vinosmartinez@trabajo.org');
INSERT INTO PROVEEDORES VALUES (10, 'Licores Castillo', 'Diagonal 32 #5-99, Barranquilla', '3109872345', 'licorescastillo@empresa.com');
INSERT INTO PROVEEDORES VALUES (11, 'Cerveceria Herrera', 'Calle 67 #2-17, Cartagena', '3045678901', 'cerveceriaherrera@correo.com');
INSERT INTO PROVEEDORES VALUES (12, 'Distribuidor Sachez', 'Carrera 14 #71-36, Pereira', '3178902345', 'distribuidorasanchez@negocio.net');
INSERT INTO PROVEEDORES VALUES (13, 'Importadora Lopez', 'Avenida 56 #80-30, Manizales', '3112346789', 'importadoralopez@trabajo.org');
INSERT INTO PROVEEDORES VALUES (14, 'Whisky Torres', 'Calle 22 #45-09, Armenia', '3009876543', 'whiskytorres@empresa.com');
INSERT INTO PROVEEDORES VALUES (15, 'Ron Fernandez', 'Carrera 30 #11-88, Cucuta', '3198765432', 'ronfernandez@correo.com');
INSERT INTO PROVEEDORES VALUES (16, 'Suministros Rios', 'Transversal 9 #58-38, Santa Marta', '3123456780', 'suministrosrios@negocio.net');
INSERT INTO PROVEEDORES VALUES (17, 'Bodega Chavez', 'Diagonal 88 #45-91, Ibague', '3224567890', 'bodegachavez@trabajo.org');
INSERT INTO PROVEEDORES VALUES (18, 'Cervezas Velez', 'Calle 73 #22-17, Villavicencio', '3167890123', 'cervezasvelez@empresa.com');
INSERT INTO PROVEEDORES VALUES (19, 'Distribucion Duarte', 'Carrera 19 #80-31, Neiva', '3023456789', 'distribucionesduarte@correo.com');
INSERT INTO PROVEEDORES VALUES (20, 'Licores Mora', 'Avenida 83 #71-36, Pasto', '3098765432', 'licoresmora@negocio.net');
INSERT INTO PROVEEDORES VALUES (21, 'Importadora Vargas', 'Calle 37 #25-62, Popayan', '3256789012', 'importadoravargas@trabajo.org');
INSERT INTO PROVEEDORES VALUES (22, 'Distribuidor Navarro', 'Carrera 15 #66-29, Monteria', '3145678901', 'distribuidoranavarro@empresa.com');
INSERT INTO PROVEEDORES VALUES (23, 'Bodega Paredes', 'Calle 41 #72-06, Valledupar', '3009871234', 'bodegaparedes@correo.com');
INSERT INTO PROVEEDORES VALUES (24, 'Vinos Correa', 'Carrera 24 #84-55, Tunja', '3289012345', 'vinoscorrea@negocio.net');
INSERT INTO PROVEEDORES VALUES (25, 'Importadora Salazar', 'Avenida 11 #70-24, Sincelejo', '3034567890', 'importadorasalazar@trabajo.org');
INSERT INTO PROVEEDORES VALUES (26, 'Distribuidor Qintero', 'Calle 97 #43-10, Florencia', '3187654321', 'distribuidoraquintero@empresa.com');
INSERT INTO PROVEEDORES VALUES (27, 'Ron Montes', 'Carrera 53 #79-46, Riohacha', '3078901234', 'ronmontes@correo.com');
INSERT INTO PROVEEDORES VALUES (28, 'Cervezas Guzman', 'Avenida 42 #69-32, Leticia', '3298765432', 'cervezasguzman@negocio.net');
INSERT INTO PROVEEDORES VALUES (29, 'Whisky Rincon', 'Calle 64 #8-55, San Andres', '3156789012', 'whiskyrincon@trabajo.org');
INSERT INTO PROVEEDORES VALUES (30, 'Bodega Rivera', 'Carrera 38 #21-98, Yopal', '3212345678', 'bodegarivera@negocio.net');

-- TipoProductos
INSERT INTO TipoProductos VALUES (1, 'UAC22');
INSERT INTO TipoProductos VALUES (2, 'RMA78');
INSERT INTO TipoProductos VALUES (3, 'TDJ12');
INSERT INTO TipoProductos VALUES (4, 'WOP23');
INSERT INTO TipoProductos VALUES (5, 'VAA64');
INSERT INTO TipoProductos VALUES (6, 'ABC12');
INSERT INTO TipoProductos VALUES (7, 'XYZ45');
INSERT INTO TipoProductos VALUES (8, 'JHK87');
INSERT INTO TipoProductos VALUES (9, 'LMN23');
INSERT INTO TipoProductos VALUES (10, 'QRS09');
INSERT INTO TipoProductos VALUES (11, 'TUV34');
INSERT INTO TipoProductos VALUES (12, 'WXY78');
INSERT INTO TipoProductos VALUES (13, 'ZAB56');
INSERT INTO TipoProductos VALUES (14, 'BCD91');
INSERT INTO TipoProductos VALUES (15, 'EFG02');
INSERT INTO TipoProductos VALUES (16, 'HIJ33');
INSERT INTO TipoProductos VALUES (17, 'KLM88');
INSERT INTO TipoProductos VALUES (18, 'NOP72');
INSERT INTO TipoProductos VALUES (19, 'RST51');
INSERT INTO TipoProductos VALUES (20, 'UVW60');
INSERT INTO TipoProductos VALUES (21, 'XYZ37');
INSERT INTO TipoProductos VALUES (22, 'ABC28');
INSERT INTO TipoProductos VALUES (23, 'JHK95');
INSERT INTO TipoProductos VALUES (24, 'LMN42');
INSERT INTO TipoProductos VALUES (25, 'QRS17');
INSERT INTO TipoProductos VALUES (26, 'TUV79');
INSERT INTO TipoProductos VALUES (27, 'WXY24');
INSERT INTO TipoProductos VALUES (28, 'ZAB53');
INSERT INTO TipoProductos VALUES (29, 'BCD80');
INSERT INTO TipoProductos VALUES (30, 'EFG29');

-- PEDIDOS
INSERT INTO PEDIDOS VALUES (1, TO_DATE('2024-01-02', 'YYYY-MM-DD'), 'E', 1, 10000);
INSERT INTO PEDIDOS VALUES (2, TO_DATE('2024-03-15', 'YYYY-MM-DD'), 'P', 2, 10001);
INSERT INTO PEDIDOS VALUES (3, TO_DATE('2024-03-16', 'YYYY-MM-DD'), 'E', 3, 10002);
INSERT INTO PEDIDOS VALUES (4, TO_DATE('2024-03-17', 'YYYY-MM-DD'), 'D', 4, 10003);
INSERT INTO PEDIDOS VALUES (5, TO_DATE('2024-03-18', 'YYYY-MM-DD'), 'C', 5, 10004);
INSERT INTO PEDIDOS VALUES (6, TO_DATE('2025-05-01', 'YYYY-MM-DD'), 'P', 6, 10234);
INSERT INTO PEDIDOS VALUES (7, TO_DATE('2025-05-02', 'YYYY-MM-DD'), 'D', 7, 15879);
INSERT INTO PEDIDOS VALUES (8, TO_DATE('2025-05-03', 'YYYY-MM-DD'), 'E', 8, 19450);
INSERT INTO PEDIDOS VALUES (9, TO_DATE('2025-05-04', 'YYYY-MM-DD'), 'C', 9, 23987);
INSERT INTO PEDIDOS VALUES (10, TO_DATE('2025-05-05', 'YYYY-MM-DD'), 'P', 10, 27456);
INSERT INTO PEDIDOS VALUES (11, TO_DATE('2025-05-06', 'YYYY-MM-DD'), 'D', 11, 31589);
INSERT INTO PEDIDOS VALUES (12, TO_DATE('2025-05-07', 'YYYY-MM-DD'), 'E', 12, 36941);
INSERT INTO PEDIDOS VALUES (13, TO_DATE('2025-05-08', 'YYYY-MM-DD'), 'C', 13, 40218);
INSERT INTO PEDIDOS VALUES (14, TO_DATE('2025-05-09', 'YYYY-MM-DD'), 'P', 14, 45321);
INSERT INTO PEDIDOS VALUES (15, TO_DATE('2025-05-10', 'YYYY-MM-DD'), 'D', 15, 49876);
INSERT INTO PEDIDOS VALUES (16, TO_DATE('2025-05-11', 'YYYY-MM-DD'), 'E', 16, 53892);
INSERT INTO PEDIDOS VALUES (17, TO_DATE('2025-05-12', 'YYYY-MM-DD'), 'C', 17, 58321);
INSERT INTO PEDIDOS VALUES (18, TO_DATE('2025-05-13', 'YYYY-MM-DD'), 'P', 18, 61239);
INSERT INTO PEDIDOS VALUES (19, TO_DATE('2025-05-14', 'YYYY-MM-DD'), 'D', 19, 65487);
INSERT INTO PEDIDOS VALUES (20, TO_DATE('2025-05-15', 'YYYY-MM-DD'), 'E', 20, 69854);
INSERT INTO PEDIDOS VALUES (21, TO_DATE('2025-05-16', 'YYYY-MM-DD'), 'C', 21, 74362);
INSERT INTO PEDIDOS VALUES (22, TO_DATE('2025-05-17', 'YYYY-MM-DD'), 'P', 22, 78695);
INSERT INTO PEDIDOS VALUES (23, TO_DATE('2025-05-18', 'YYYY-MM-DD'), 'D', 23, 81934);
INSERT INTO PEDIDOS VALUES (24, TO_DATE('2025-05-19', 'YYYY-MM-DD'), 'E', 24, 85972);
INSERT INTO PEDIDOS VALUES (25, TO_DATE('2025-05-20', 'YYYY-MM-DD'), 'C', 25, 90458);
INSERT INTO PEDIDOS VALUES (26, TO_DATE('2025-05-21', 'YYYY-MM-DD'), 'P', 26, 94876);
INSERT INTO PEDIDOS VALUES (27, TO_DATE('2025-05-22', 'YYYY-MM-DD'), 'D', 27, 98723);
INSERT INTO PEDIDOS VALUES (28, TO_DATE('2025-05-23', 'YYYY-MM-DD'), 'E', 28, 10345);
INSERT INTO PEDIDOS VALUES (29, TO_DATE('2025-05-24', 'YYYY-MM-DD'), 'C', 29, 14567);
INSERT INTO PEDIDOS VALUES (30, TO_DATE('2025-05-25', 'YYYY-MM-DD'), 'P', 30, 18794);

-- DetalleDePedidos
INSERT INTO DetalleDePedidos VALUES (1, 50, 25000, 1, 'UAC22');
INSERT INTO DetalleDePedidos VALUES (2, 5, 70000, 2, 'RMA78');
INSERT INTO DetalleDePedidos VALUES (3, 2, 270000, 3, 'TDJ12');
INSERT INTO DetalleDePedidos VALUES (4, 1, 140000, 4, 'WOP23');
INSERT INTO DetalleDePedidos VALUES (5, 3, 80000, 5, 'VAA64');
INSERT INTO DetalleDePedidos VALUES (6, 10, 70000, 6, 'ABC12');
INSERT INTO DetalleDePedidos VALUES (7, 5, 130000, 7, 'XYZ45');
INSERT INTO DetalleDePedidos VALUES (8, 8, 90000, 8, 'JHK87');
INSERT INTO DetalleDePedidos VALUES (9, 12, 95000, 9, 'LMN23');
INSERT INTO DetalleDePedidos VALUES (10, 4, 105000, 10, 'QRS09');
INSERT INTO DetalleDePedidos VALUES (11, 7, 98000, 11, 'TUV34');
INSERT INTO DetalleDePedidos VALUES (12, 6, 8500, 12, 'WXY78');
INSERT INTO DetalleDePedidos VALUES (13, 14, 85000, 13, 'ZAB56');
INSERT INTO DetalleDePedidos VALUES (14, 9, 115000, 14, 'BCD91');
INSERT INTO DetalleDePedidos VALUES (15, 3, 94000, 15, 'EFG02');
INSERT INTO DetalleDePedidos VALUES (16, 11, 6500, 16, 'HIJ33');
INSERT INTO DetalleDePedidos VALUES (17, 5, 170000, 17, 'KLM88');
INSERT INTO DetalleDePedidos VALUES (18, 6, 120000, 18, 'NOP72');
INSERT INTO DetalleDePedidos VALUES (19, 8, 75000, 19, 'RST51');
INSERT INTO DetalleDePedidos VALUES (20, 7, 105000, 20, 'UVW60');
INSERT INTO DetalleDePedidos VALUES (21, 15, 7200, 21, 'XYZ37');
INSERT INTO DetalleDePedidos VALUES (22, 9, 97000, 22, 'ABC28');
INSERT INTO DetalleDePedidos VALUES (23, 4, 88000, 23, 'JHK95');
INSERT INTO DetalleDePedidos VALUES (24, 12, 92000, 24, 'LMN42');
INSERT INTO DetalleDePedidos VALUES (25, 10, 72000, 25, 'QRS17');
INSERT INTO DetalleDePedidos VALUES (26, 5, 99000, 26, 'TUV79');
INSERT INTO DetalleDePedidos VALUES (27, 6, 112000, 27, 'WXY24');
INSERT INTO DetalleDePedidos VALUES (28, 14, 8200, 28, 'ZAB53');
INSERT INTO DetalleDePedidos VALUES (29, 8, 78000, 29, 'BCD80');
INSERT INTO DetalleDePedidos VALUES (30, 7, 101000, 30, 'EFG29');

-- DetalleDeVentas
INSERT INTO DetalleDeVentas VALUES (1, 22, 27500, 'UAC22', 1);
INSERT INTO DetalleDeVentas VALUES (2, 1, 77000, 'RMA78', 2);
INSERT INTO DetalleDeVentas VALUES (3, 2, 297000, 'TDJ12', 3);
INSERT INTO DetalleDeVentas VALUES (4, 1, 154000, 'WOP23', 4);
INSERT INTO DetalleDeVentas VALUES (5, 3, 88000, 'VAA64', 5);
INSERT INTO DetalleDeVentas VALUES (6, 3, 7000, 'ABC12', 6);
INSERT INTO DetalleDeVentas VALUES (7, 2, 130000, 'XYZ45', 7);
INSERT INTO DetalleDeVentas VALUES (8, 1, 90000, 'JHK87', 8);
INSERT INTO DetalleDeVentas VALUES (9, 5, 95000, 'LMN23', 9);
INSERT INTO DetalleDeVentas VALUES (10, 4, 105000, 'QRS09', 10);
INSERT INTO DetalleDeVentas VALUES (11, 6, 98000, 'TUV34', 11);
INSERT INTO DetalleDeVentas VALUES (12, 2, 8500, 'WXY78', 12);
INSERT INTO DetalleDeVentas VALUES (13, 1, 85000, 'ZAB56', 13);
INSERT INTO DetalleDeVentas VALUES (14, 3, 115000, 'BCD91', 14);
INSERT INTO DetalleDeVentas VALUES (15, 4, 94000, 'EFG02', 15);
INSERT INTO DetalleDeVentas VALUES (16, 7, 6500, 'HIJ33', 16);
INSERT INTO DetalleDeVentas VALUES (17, 2, 170000, 'KLM88', 17);
INSERT INTO DetalleDeVentas VALUES (18, 5, 120000, 'NOP72', 18);
INSERT INTO DetalleDeVentas VALUES (19, 3, 75000, 'RST51', 19);
INSERT INTO DetalleDeVentas VALUES (20, 4, 105000, 'UVW60', 20);
INSERT INTO DetalleDeVentas VALUES (21, 6, 7200, 'XYZ37', 21);
INSERT INTO DetalleDeVentas VALUES (22, 2, 97000, 'ABC28', 22);
INSERT INTO DetalleDeVentas VALUES (23, 3, 88000, 'JHK95', 23);
INSERT INTO DetalleDeVentas VALUES (24, 5, 92000, 'LMN42', 24);
INSERT INTO DetalleDeVentas VALUES (25, 4, 72000, 'QRS17', 25);
INSERT INTO DetalleDeVentas VALUES (26, 3, 99000, 'TUV79', 26);
INSERT INTO DetalleDeVentas VALUES (27, 2, 112000, 'WXY24', 27);
INSERT INTO DetalleDeVentas VALUES (28, 4, 8200, 'ZAB53', 28);
INSERT INTO DetalleDeVentas VALUES (29, 6, 78000, 'BCD80', 29);
INSERT INTO DetalleDeVentas VALUES (30, 5, 101000, 'EFG29', 30);

-- ELECTRONICAS
INSERT INTO ELECTRONICAS VALUES ('asic@gmail.com', 'ASIC Limitada', 1);
INSERT INTO ELECTRONICAS VALUES ('factura1@empresa.com', 'LicoresOnline', 2);
INSERT INTO ELECTRONICAS VALUES ('factura2@empresa.com', 'BebidasYA', 3);
INSERT INTO ELECTRONICAS VALUES ('carlosperez@servicio.com', 'TechDistribuciones', 6);
INSERT INTO ELECTRONICAS VALUES ('anarodriguez@empresa.org', 'ElectroMundo', 7);
INSERT INTO ELECTRONICAS VALUES ('luisgomez@correo.net', 'Innovatec', 8);
INSERT INTO ELECTRONICAS VALUES ('sofiamartinez@negocio.com', 'ElectroHouse', 9);
INSERT INTO ELECTRONICAS VALUES ('javiercastillo@trabajo.net', 'DistribuElectro', 10);
INSERT INTO ELECTRONICAS VALUES ('gabrielaherrera@empresa.org', 'Tecnologia Express', 11);
INSERT INTO ELECTRONICAS VALUES ('eduardosanchez@correo.net', 'ElectronicsPlus', 12);
INSERT INTO ELECTRONICAS VALUES ('patricialopez@negocio.com', 'TecnoSoluciones', 13);
INSERT INTO ELECTRONICAS VALUES ('ricardotorres@servicio.org', 'E-Mercado', 14);
INSERT INTO ELECTRONICAS VALUES ('mariafernandez@trabajo.net', 'DistribucionElectro', 15);
INSERT INTO ELECTRONICAS VALUES ('fernandorios@empresa.com', 'ElectroTech', 16);
INSERT INTO ELECTRONICAS VALUES ('andreachavez@negocio.org', 'Soluciones Digitales', 17);
INSERT INTO ELECTRONICAS VALUES ('sebastianvelez@correo.net', 'DigitalElectronics', 18);
INSERT INTO ELECTRONICAS VALUES ('valentinaduarte@servicio.com', 'ElectroVentura', 19);
INSERT INTO ELECTRONICAS VALUES ('danielmora@trabajo.org', 'ElectroMarket', 20);
INSERT INTO ELECTRONICAS VALUES ('camilavargas@negocio.net', 'Distribuciones Tecno', 21);
INSERT INTO ELECTRONICAS VALUES ('alejandronavarro@correo.com', 'ElectroGlobal', 22);
INSERT INTO ELECTRONICAS VALUES ('nataliaparedes@servicio.org', 'TechExpress', 23);
INSERT INTO ELECTRONICAS VALUES ('felipecorrea@trabajo.net', 'ElectroShop', 24);
INSERT INTO ELECTRONICAS VALUES ('lorenasalazar@empresa.com', 'E-Tienda', 25);
INSERT INTO ELECTRONICAS VALUES ('rodrigoquintero@negocio.org', 'ElectroDistribucion', 26);
INSERT INTO ELECTRONICAS VALUES ('estebanmontes@correo.net', 'ElectroServicios', 27);
INSERT INTO ELECTRONICAS VALUES ('paolaguzman@servicio.com', 'ElectroSoluciones', 28);
INSERT INTO ELECTRONICAS VALUES ('oscarrincon@trabajo.net', 'DigitalDistribucion', 29);
INSERT INTO ELECTRONICAS VALUES ('gabrielarivera@negocio.org', 'Tecnologia y Mas', 30);

-- FISICAS
INSERT INTO FISICAS VALUES ('3145550837', 3);
INSERT INTO FISICAS VALUES ('3145551837', 2);
INSERT INTO FISICAS VALUES ('3145552837', 1);
INSERT INTO FISICAS VALUES ('3145559837', 4);
INSERT INTO FISICAS VALUES ('3213333911', 5);
INSERT INTO FISICAS VALUES ('3208456712', 6);
INSERT INTO FISICAS VALUES ('3017864532', 7);
INSERT INTO FISICAS VALUES ('3159023471', 8);
INSERT INTO FISICAS VALUES ('3187654012', 9);
INSERT INTO FISICAS VALUES ('3109872345', 10);
INSERT INTO FISICAS VALUES ('3045678901', 11);
INSERT INTO FISICAS VALUES ('3178902345', 12);
INSERT INTO FISICAS VALUES ('3112346789', 13);
INSERT INTO FISICAS VALUES ('3009876543', 14);
INSERT INTO FISICAS VALUES ('3198765432', 15);
INSERT INTO FISICAS VALUES ('3123456780', 16);
INSERT INTO FISICAS VALUES ('3224567890', 17);
INSERT INTO FISICAS VALUES ('3167890123', 18);
INSERT INTO FISICAS VALUES ('3023456789', 19);
INSERT INTO FISICAS VALUES ('3098765432', 20);
INSERT INTO FISICAS VALUES ('3256789012', 21);
INSERT INTO FISICAS VALUES ('3145678901', 22);
INSERT INTO FISICAS VALUES ('3009871234', 23);
INSERT INTO FISICAS VALUES ('3289012345', 24);
INSERT INTO FISICAS VALUES ('3034567890', 25);
INSERT INTO FISICAS VALUES ('3187654321', 26);
INSERT INTO FISICAS VALUES ('3078901234', 27);
INSERT INTO FISICAS VALUES ('3298765432', 28);
INSERT INTO FISICAS VALUES ('3156789012', 29);
INSERT INTO FISICAS VALUES ('3212345678', 30);

-- VALORACIONES
INSERT INTO VALORACIONES VALUES (1, 7, 'Muy bueno todo pero podría mejorar', TO_DATE('2024-01-02', 'YYYY-MM-DD'), 1, 'UAC22');
INSERT INTO VALORACIONES VALUES (2, 9, 'Producto en mal estado', TO_DATE('2024-04-01', 'YYYY-MM-DD'), 2, 'RMA78');
INSERT INTO VALORACIONES VALUES (3, 10, 'Muy buen tequila', TO_DATE('2024-04-02', 'YYYY-MM-DD'), 3, 'TDJ12');
INSERT INTO VALORACIONES VALUES (4, 8, 'Buen whisky', TO_DATE('2024-04-03', 'YYYY-MM-DD'), 4, 'WOP23');
INSERT INTO VALORACIONES VALUES (5, 7, 'Vodka aceptable', TO_DATE('2024-04-04', 'YYYY-MM-DD'), 5, 'VAA64');
INSERT INTO VALORACIONES VALUES (6, 9, 'Excelente calidad, muy buen sabor.', TO_DATE('2025-05-01', 'YYYY-MM-DD'), 6, 'ABC12');
INSERT INTO VALORACIONES VALUES (7, 8, 'Buen whisky, aunque podria ser mas suave.', TO_DATE('2025-05-02', 'YYYY-MM-DD'), 7, 'XYZ45');
INSERT INTO VALORACIONES VALUES (8, 10, 'El mejor gin que he probado.', TO_DATE('2025-05-03', 'YYYY-MM-DD'), 8, 'JHK87');
INSERT INTO VALORACIONES VALUES (9, 7, 'Un ron aceptable, pero esperaba mas.', TO_DATE('2025-05-04', 'YYYY-MM-DD'), 9, 'LMN23');
INSERT INTO VALORACIONES VALUES (10, 6, 'Demasiado fuerte para mi gusto.', TO_DATE('2025-05-05', 'YYYY-MM-DD'), 10, 'QRS09');
INSERT INTO VALORACIONES VALUES (11, 10, 'Perfecto para cocteles, lo recomiendo.', TO_DATE('2025-05-06', 'YYYY-MM-DD'), 11, 'TUV34');
INSERT INTO VALORACIONES VALUES (12, 8, 'Buena cerveza, aunque algo amarga.', TO_DATE('2025-05-07', 'YYYY-MM-DD'), 12, 'WXY78');
INSERT INTO VALORACIONES VALUES (13, 9, 'Gran vino, excelente acompanante para carnes.', TO_DATE('2025-05-08', 'YYYY-MM-DD'), 13, 'ZAB56');
INSERT INTO VALORACIONES VALUES (14, 10, 'Brandy de muy buena calidad.', TO_DATE('2025-05-09', 'YYYY-MM-DD'), 14, 'BCD91');
INSERT INTO VALORACIONES VALUES (15, 7, 'Interesante sabor, aunque no es mi favorito.', TO_DATE('2025-05-10', 'YYYY-MM-DD'), 15, 'EFG02');
INSERT INTO VALORACIONES VALUES (16, 6, 'Cerveza demasiado ligera para mi gusto.', TO_DATE('2025-05-11', 'YYYY-MM-DD'), 16, 'HIJ33');
INSERT INTO VALORACIONES VALUES (17, 10, 'Champana espectacular, ideal para celebraciones.', TO_DATE('2025-05-12', 'YYYY-MM-DD'), 17, 'KLM88');
INSERT INTO VALORACIONES VALUES (18, 9, 'Whisky bourbon muy equilibrado.', TO_DATE('2025-05-13', 'YYYY-MM-DD'), 18, 'NOP72');
INSERT INTO VALORACIONES VALUES (19, 8, 'Buena opcion para cocteles.', TO_DATE('2025-05-14', 'YYYY-MM-DD'), 19, 'RST51');
INSERT INTO VALORACIONES VALUES (20, 7, 'Sabor interesante, aunque algo fuerte.', TO_DATE('2025-05-15', 'YYYY-MM-DD'), 20, 'UVW60');
INSERT INTO VALORACIONES VALUES (21, 8, 'Cerveza con cuerpo, me gusto mucho.', TO_DATE('2025-05-16', 'YYYY-MM-DD'), 21, 'XYZ37');
INSERT INTO VALORACIONES VALUES (22, 10, 'Mezcal de altisima calidad, repetire compra.', TO_DATE('2025-05-17', 'YYYY-MM-DD'), 22, 'ABC28');
INSERT INTO VALORACIONES VALUES (23, 7, 'Buen vermut, aunque un poco fuerte.', TO_DATE('2025-05-18', 'YYYY-MM-DD'), 23, 'JHK95');
INSERT INTO VALORACIONES VALUES (24, 9, 'Ginebra con notas florales muy agradables.', TO_DATE('2025-05-19', 'YYYY-MM-DD'), 24, 'LMN42');
INSERT INTO VALORACIONES VALUES (25, 8, 'Sidra refrescante y ligera.', TO_DATE('2025-05-20', 'YYYY-MM-DD'), 25, 'QRS17');
INSERT INTO VALORACIONES VALUES (26, 10, 'Vodka con un acabado limpio, excelente calidad.', TO_DATE('2025-05-21', 'YYYY-MM-DD'), 26, 'TUV79');
INSERT INTO VALORACIONES VALUES (27, 9, 'Gran whisky, sabor ahumado increible.', TO_DATE('2025-05-22', 'YYYY-MM-DD'), 27, 'WXY24');
INSERT INTO VALORACIONES VALUES (28, 7, 'Cerveza roja interesante, aunque un poco dulce.', TO_DATE('2025-05-23', 'YYYY-MM-DD'), 28, 'ZAB53');
INSERT INTO VALORACIONES VALUES (29, 9, 'Vino blanco muy refrescante.', TO_DATE('2025-05-24', 'YYYY-MM-DD'), 29, 'BCD80');
INSERT INTO VALORACIONES VALUES (30, 10, 'Licor de cafe con un aroma espectacular.', TO_DATE('2025-05-25', 'YYYY-MM-DD'), 30, 'EFG29');

-- PRECIOS
INSERT INTO PRECIOS VALUES (1, 'UAC22', 25000);
INSERT INTO PRECIOS VALUES (2, 'RMA78', 70000);
INSERT INTO PRECIOS VALUES (3, 'TDJ12', 270000);
INSERT INTO PRECIOS VALUES (4, 'WOP23', 140000);
INSERT INTO PRECIOS VALUES (5, 'VAA64', 80000);
INSERT INTO PRECIOS VALUES (6, 'ABC12', 6800);
INSERT INTO PRECIOS VALUES (7, 'XYZ45', 128000);
INSERT INTO PRECIOS VALUES (8, 'JHK87', 88000);
INSERT INTO PRECIOS VALUES (9, 'LMN23', 93000);
INSERT INTO PRECIOS VALUES (10, 'QRS09', 102000);
INSERT INTO PRECIOS VALUES (11, 'TUV34', 96000);
INSERT INTO PRECIOS VALUES (12, 'WXY78', 8200);
INSERT INTO PRECIOS VALUES (13, 'ZAB56', 83000);
INSERT INTO PRECIOS VALUES (14, 'BCD91', 112000);
INSERT INTO PRECIOS VALUES (15, 'EFG02', 91000);
INSERT INTO PRECIOS VALUES (16, 'HIJ33', 6200);
INSERT INTO PRECIOS VALUES (17, 'KLM88', 165000);
INSERT INTO PRECIOS VALUES (18, 'NOP72', 116000);
INSERT INTO PRECIOS VALUES (19, 'RST51', 73000);
INSERT INTO PRECIOS VALUES (20, 'UVW60', 102000);
INSERT INTO PRECIOS VALUES (21, 'XYZ37', 6900);
INSERT INTO PRECIOS VALUES (22, 'ABC28', 94000);
INSERT INTO PRECIOS VALUES (23, 'JHK95', 87000);
INSERT INTO PRECIOS VALUES (24, 'LMN42', 89000);
INSERT INTO PRECIOS VALUES (25, 'QRS17', 71000);
INSERT INTO PRECIOS VALUES (26, 'TUV79', 97000);
INSERT INTO PRECIOS VALUES (27, 'WXY24', 108000);
INSERT INTO PRECIOS VALUES (28, 'ZAB53', 7900);
INSERT INTO PRECIOS VALUES (29, 'BCD80', 76000);
INSERT INTO PRECIOS VALUES (30, 'EFG29', 98000);

