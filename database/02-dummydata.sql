SET NAMES 'utf8mb4';

INSERT INTO Categories (idCategory, name) VALUES (1, 'Abono de intereses');
INSERT INTO Categories (idCategory, name) VALUES (2, 'Agua');
INSERT INTO Categories (idCategory, name) VALUES (3, 'Alquiler como inquilino');
INSERT INTO Categories (idCategory, name) VALUES (4, 'Peluquería');
INSERT INTO Categories (idCategory, name) VALUES (5, 'Billetes de viaje');
INSERT INTO Categories (idCategory, name) VALUES (6, 'Cafeterías y restaurantes');
INSERT INTO Categories (idCategory, name) VALUES (7, 'Cajeros');
INSERT INTO Categories (idCategory, name) VALUES (8, 'Cine, teatro y espectáculos');
INSERT INTO Categories (idCategory, name) VALUES (9, 'Comisiones e intereses');
INSERT INTO Categories (idCategory, name) VALUES (10, 'Comunidad');
INSERT INTO Categories (idCategory, name) VALUES (11, 'Comunidad derramas');
INSERT INTO Categories (idCategory, name) VALUES (12, 'Decoración y mobiliario');
INSERT INTO Categories (idCategory, name) VALUES (13, 'Dentista, médico');
INSERT INTO Categories (idCategory, name) VALUES (14, 'Deporte y gimnasio');
INSERT INTO Categories (idCategory, name) VALUES (15, 'Educación, salud y deporte');
INSERT INTO Categories (idCategory, name) VALUES (16, 'Electrónica');
INSERT INTO Categories (idCategory, name) VALUES (17, 'Farmacia, herbolario y nutrición');
INSERT INTO Categories (idCategory, name) VALUES (18, 'Fianza y garantia como inquilino');
INSERT INTO Categories (idCategory, name) VALUES (19, 'Gasolina y combustible');
INSERT INTO Categories (idCategory, name) VALUES (20, 'Gastos de inmobiliaria');
INSERT INTO Categories (idCategory, name) VALUES (21, 'Hipoteca');
INSERT INTO Categories (idCategory, name) VALUES (22, 'Hotel y alojamiento');
INSERT INTO Categories (idCategory, name) VALUES (23, 'Ingresos de impuestos');
INSERT INTO Categories (idCategory, name) VALUES (24, 'Ingresos de seguros');
INSERT INTO Categories (idCategory, name) VALUES (25, 'Ingresos por indemnizaciones');
INSERT INTO Categories (idCategory, name) VALUES (26, 'Ingresos por loteria');
INSERT INTO Categories (idCategory, name) VALUES (27, 'Ingresos por otros pagos');
INSERT INTO Categories (idCategory, name) VALUES (28, 'Ingresos por regalos');
INSERT INTO Categories (idCategory, name) VALUES (29, 'Libros, música y videojuegos');
INSERT INTO Categories (idCategory, name) VALUES (30, 'Loterías y apuestas');
INSERT INTO Categories (idCategory, name) VALUES (31, 'Luz y gas');
INSERT INTO Categories (idCategory, name) VALUES (32, 'Mantenimiento del hogar');
INSERT INTO Categories (idCategory, name) VALUES (33, 'Mantenimiento del vehículo');
INSERT INTO Categories (idCategory, name) VALUES (34, 'Nómina o Pensión');
INSERT INTO Categories (idCategory, name) VALUES (35, 'ONGs');
INSERT INTO Categories (idCategory, name) VALUES (36, 'Óptica');
INSERT INTO Categories (idCategory, name) VALUES (37, 'Otros gastos (otros)');
INSERT INTO Categories (idCategory, name) VALUES (38, 'Otros préstamos y avales');
INSERT INTO Categories (idCategory, name) VALUES (39, 'Pago de multas');
INSERT INTO Categories (idCategory, name) VALUES (40, 'Pagos impuestos');
INSERT INTO Categories (idCategory, name) VALUES (41, 'Parking y garaje');
INSERT INTO Categories (idCategory, name) VALUES (42, 'Peajes');
INSERT INTO Categories (idCategory, name) VALUES (43, 'Plan de pensiones');
INSERT INTO Categories (idCategory, name) VALUES (44, 'Prestación por desempleo');
INSERT INTO Categories (idCategory, name) VALUES (45, 'Alquiler de vehículo');
INSERT INTO Categories (idCategory, name) VALUES (46, 'Regalos y juguetes');
INSERT INTO Categories (idCategory, name) VALUES (47, 'Ropa y complementos');
INSERT INTO Categories (idCategory, name) VALUES (48, 'Seguro de hogar');
INSERT INTO Categories (idCategory, name) VALUES (49, 'Seguro de salud');
INSERT INTO Categories (idCategory, name) VALUES (50, 'Seguro de vehículo');
INSERT INTO Categories (idCategory, name) VALUES (51, 'Seguro de vida');
INSERT INTO Categories (idCategory, name) VALUES (52, 'Sindicatos');
INSERT INTO Categories (idCategory, name) VALUES (53, 'Supermercados y alimentación');
INSERT INTO Categories (idCategory, name) VALUES (54, 'Suscripciones');
INSERT INTO Categories (idCategory, name) VALUES (55, 'Tarjetas financieras');
INSERT INTO Categories (idCategory, name) VALUES (56, 'Teléfono, TV e internet');
INSERT INTO Categories (idCategory, name) VALUES (57, 'Transacción entre cuentas');
INSERT INTO Categories (idCategory, name) VALUES (58, 'Transferencias');
INSERT INTO Categories (idCategory, name) VALUES (59, 'Transporte público');
INSERT INTO Categories (idCategory, name) VALUES (60, 'Tren, avión, transporte');

INSERT INTO `Users` VALUES /* Las contraseñas son 1234 en todos */
(1,'admin','admin@gmail.com','$2b$10$Cihkkdcr5YktmJhHUUnPReL6sxvqHR5x7jfQTy/ImQcPJIEulh0VO',1),
(2,'Juan Ramon Gomez Laserna','juan@gmail.com','$2b$10$PJ.kMtM08jJylZzafAw9luy3dkjqdpBqWD4956NQaJ/zltCR..Bce',0),
(3,'Pedro Pero Perez Crespo','pedro@gmail.com','$2b$10$fQehzBv5UyRT20M36UN1Xu0/wvG61ACDbHj9p3UjkF67J3d7WYeCe',0);


INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (1, 1, 'expense', 376.86, 'Pago relacionado con Mantenimiento del vehículo', 33, '2025-02-04', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (2, 1, 'expense', 392.58, 'Pago relacionado con Transporte público', 59, '2025-02-07', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (3, 1, 'expense', 64.78, 'Pago relacionado con Libros, música y videojuegos', 29, '2025-02-16', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (4, 1, 'expense', 167.1, 'Pago relacionado con Comisiones e intereses', 9, '2025-01-14', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (5, 1, 'expense', 90.05, 'Pago relacionado con Dentista, médico', 13, '2025-02-03', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (6, 1, 'expense', 236.25, 'Pago relacionado con Electrónica', 16, '2025-02-14', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (7, 1, 'income', 126.84, 'Pago relacionado con Ingresos por regalos', 28, '2025-01-29', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (8, 1, 'expense', 194.91, 'Pago relacionado con Agua', 2, '2025-03-04', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (9, 1, 'expense', 73.22, 'Pago relacionado con Deporte y gimnasio', 14, '2025-02-16', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (10, 1, 'expense', 285.85, 'Pago relacionado con Transacción entre cuentas', 57, '2025-03-29', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (11, 1, 'expense', 448.6, 'Pago relacionado con Alquiler de vehículo', 45, '2025-01-12', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (12, 1, 'expense', 42.59, 'Pago relacionado con Alquiler de vehículo', 45, '2025-03-31', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (13, 1, 'income', 212.66, 'Pago relacionado con Ingresos de impuestos', 23, '2025-03-15', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (14, 1, 'expense', 76.77, 'Pago relacionado con Supermercados y alimentación', 53, '2025-02-11', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (15, 1, 'expense', 258.26, 'Pago relacionado con Alquiler de vehículo', 45, '2025-01-23', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (16, 1, 'expense', 53.93, 'Pago relacionado con Dentista, médico', 13, '2025-02-06', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (17, 1, 'expense', 284.82, 'Pago relacionado con Transacción entre cuentas', 57, '2025-01-25', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (18, 1, 'expense', 81.14, 'Pago relacionado con Peluquería', 4, '2025-01-19', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (19, 1, 'expense', 219.32, 'Pago relacionado con Billetes de viaje', 5, '2025-01-01', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (20, 1, 'expense', 470.87, 'Pago relacionado con Comisiones e intereses', 9, '2025-01-05', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (21, 1, 'expense', 252.03, 'Pago relacionado con Fianza y garantia como inquilino', 18, '2025-01-26', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (22, 1, 'income', 353.67, 'Pago relacionado con Ingresos por indemnizaciones', 25, '2025-02-05', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (23, 1, 'expense', 422.17, 'Pago relacionado con Cafeterías y restaurantes', 6, '2025-02-08', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (24, 1, 'expense', 420.51, 'Pago relacionado con Transferencias', 58, '2025-03-22', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (25, 1, 'expense', 31.27, 'Pago relacionado con Tarjetas financieras', 55, '2025-02-20', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (26, 1, 'expense', 209.98, 'Pago relacionado con Farmacia, herbolario y nutrición', 17, '2025-01-16', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (27, 1, 'expense', 144.58, 'Pago relacionado con Farmacia, herbolario y nutrición', 17, '2025-01-14', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (28, 1, 'expense', 481.25, 'Pago relacionado con Seguro de hogar', 48, '2025-03-16', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (29, 1, 'expense', 134.31, 'Pago relacionado con Transacción entre cuentas', 57, '2025-02-17', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (30, 1, 'expense', 263.85, 'Pago relacionado con Comunidad', 10, '2025-03-01', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (31, 1, 'expense', 79.68, 'Pago relacionado con Plan de pensiones', 43, '2025-01-18', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (32, 1, 'expense', 330.19, 'Pago relacionado con Tren, avión, transporte', 60, '2025-01-11', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (33, 1, 'expense', 56.54, 'Pago relacionado con Gasolina y combustible', 19, '2025-02-11', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (34, 1, 'expense', 190.23, 'Pago relacionado con Seguro de hogar', 48, '2025-02-10', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (35, 1, 'expense', 107.32, 'Pago relacionado con Comunidad derramas', 11, '2025-01-24', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (36, 1, 'expense', 382.81, 'Pago relacionado con Tren, avión, transporte', 60, '2025-01-12', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (37, 1, 'expense', 413.98, 'Pago relacionado con Óptica', 36, '2025-01-08', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (38, 1, 'expense', 109.53, 'Pago relacionado con Transferencias', 58, '2025-03-19', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (39, 1, 'expense', 339.43, 'Pago relacionado con Loterías y apuestas', 30, '2025-03-20', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (40, 1, 'expense', 477.52, 'Pago relacionado con Peajes', 42, '2025-01-23', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (41, 1, 'expense', 214.76, 'Pago relacionado con Otros gastos (otros)', 37, '2025-03-18', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (42, 1, 'income', 384.49, 'Pago relacionado con Ingresos por indemnizaciones', 25, '2025-01-04', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (43, 1, 'expense', 361.28, 'Pago relacionado con Cine, teatro y espectáculos', 8, '2025-02-24', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (44, 1, 'income', 277.11, 'Pago relacionado con Ingresos de impuestos', 23, '2025-01-12', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (45, 1, 'expense', 26.56, 'Pago relacionado con Mantenimiento del vehículo', 33, '2025-02-10', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (46, 1, 'expense', 269.54, 'Pago relacionado con Plan de pensiones', 43, '2025-02-25', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (47, 1, 'expense', 212.86, 'Pago relacionado con Comunidad', 10, '2025-01-25', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (48, 1, 'expense', 450.47, 'Pago relacionado con Transacción entre cuentas', 57, '2025-01-25', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (49, 1, 'expense', 126.96, 'Pago relacionado con Comisiones e intereses', 9, '2025-02-26', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (50, 1, 'expense', 67.4, 'Pago relacionado con Seguro de hogar', 48, '2025-02-25', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (51, 1, 'expense', 196.11, 'Pago relacionado con Gasolina y combustible', 19, '2025-01-08', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (52, 1, 'income', 306.07, 'Pago relacionado con Ingresos por loteria', 26, '2025-02-13', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (53, 1, 'expense', 464.86, 'Pago relacionado con Ropa y complementos', 47, '2025-03-27', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (54, 1, 'expense', 304.5, 'Pago relacionado con Transferencias', 58, '2025-01-22', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (55, 1, 'expense', 159.83, 'Pago relacionado con Transacción entre cuentas', 57, '2025-02-24', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (56, 1, 'expense', 241.48, 'Pago relacionado con Mantenimiento del hogar', 32, '2025-02-27', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (57, 1, 'expense', 37.6, 'Pago relacionado con Suscripciones', 54, '2025-02-23', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (58, 1, 'expense', 353.44, 'Pago relacionado con Seguro de salud', 49, '2025-01-29', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (59, 1, 'expense', 307.78, 'Pago relacionado con Educación, salud y deporte', 15, '2025-03-18', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (60, 1, 'income', 290.13, 'Pago relacionado con Ingresos por otros pagos', 27, '2025-02-18', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (61, 1, 'expense', 144.82, 'Pago relacionado con Decoración y mobiliario', 12, '2025-01-31', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (62, 1, 'expense', 187.85, 'Pago relacionado con Parking y garaje', 41, '2025-03-07', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (63, 1, 'expense', 225.39, 'Pago relacionado con Teléfono, TV e internet', 56, '2025-01-05', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (64, 1, 'income', 115.05, 'Pago relacionado con Ingresos por loteria', 26, '2025-02-12', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (65, 1, 'income', 267.87, 'Pago relacionado con Ingresos por indemnizaciones', 25, '2025-03-05', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (66, 1, 'expense', 144.9, 'Pago relacionado con Parking y garaje', 41, '2025-01-17', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (67, 1, 'expense', 63.19, 'Pago relacionado con Fianza y garantia como inquilino', 18, '2025-01-04', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (68, 1, 'expense', 183.12, 'Pago relacionado con Mantenimiento del vehículo', 33, '2025-02-24', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (69, 1, 'expense', 25.24, 'Pago relacionado con Seguro de vida', 51, '2025-03-07', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (70, 1, 'income', 196.53, 'Pago relacionado con Ingresos por indemnizaciones', 25, '2025-03-10', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (71, 1, 'expense', 41.02, 'Pago relacionado con Libros, música y videojuegos', 29, '2025-01-11', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (72, 1, 'income', 286.9, 'Pago relacionado con Ingresos por loteria', 26, '2025-01-16', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (73, 1, 'expense', 181.08, 'Pago relacionado con ONGs', 35, '2025-03-29', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (74, 1, 'income', 302.81, 'Pago relacionado con Ingresos por loteria', 26, '2025-02-07', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (75, 1, 'expense', 242.67, 'Pago relacionado con Otros préstamos y avales', 38, '2025-01-13', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (76, 1, 'expense', 139.69, 'Pago relacionado con Comisiones e intereses', 9, '2025-03-27', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (77, 1, 'expense', 393.61, 'Pago relacionado con Gastos de inmobiliaria', 20, '2025-01-26', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (78, 1, 'expense', 252.51, 'Pago relacionado con Educación, salud y deporte', 15, '2025-02-02', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (79, 1, 'expense', 383.06, 'Pago relacionado con Pagos impuestos', 40, '2025-01-07', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (80, 1, 'income', 338.78, 'Pago relacionado con Nómina o Pensión', 34, '2025-03-11', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (81, 1, 'expense', 382.47, 'Pago relacionado con Farmacia, herbolario y nutrición', 17, '2025-01-01', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (82, 1, 'expense', 272.37, 'Pago relacionado con Cafeterías y restaurantes', 6, '2025-03-22', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (83, 1, 'expense', 14.42, 'Pago relacionado con Alquiler de vehículo', 45, '2025-02-05', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (84, 1, 'expense', 403.36, 'Pago relacionado con Cajeros', 7, '2025-03-20', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (85, 1, 'expense', 225.62, 'Pago relacionado con Comunidad', 10, '2025-03-20', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (86, 1, 'expense', 63.5, 'Pago relacionado con Alquiler como inquilino', 3, '2025-03-01', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (87, 1, 'income', 278.75, 'Pago relacionado con Ingresos de impuestos', 23, '2025-02-24', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (88, 1, 'expense', 466.48, 'Pago relacionado con Seguro de salud', 49, '2025-03-04', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (89, 1, 'expense', 287.87, 'Pago relacionado con Luz y gas', 31, '2025-01-17', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (90, 1, 'expense', 265.04, 'Pago relacionado con Alquiler de vehículo', 45, '2025-03-02', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (91, 1, 'expense', 174.6, 'Pago relacionado con Plan de pensiones', 43, '2025-01-14', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (92, 1, 'expense', 58.26, 'Pago relacionado con Loterías y apuestas', 30, '2025-02-15', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (93, 1, 'expense', 201.26, 'Pago relacionado con Alquiler de vehículo', 45, '2025-01-05', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (94, 1, 'expense', 87.81, 'Pago relacionado con Parking y garaje', 41, '2025-03-23', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (95, 1, 'expense', 389.35, 'Pago relacionado con Libros, música y videojuegos', 29, '2025-02-03', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (96, 1, 'expense', 196.49, 'Pago relacionado con Electrónica', 16, '2025-01-08', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (97, 1, 'expense', 220.57, 'Pago relacionado con Mantenimiento del vehículo', 33, '2025-02-26', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (98, 1, 'expense', 311.44, 'Pago relacionado con Libros, música y videojuegos', 29, '2025-02-01', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (99, 1, 'expense', 305.66, 'Pago relacionado con Peajes', 42, '2025-01-03', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (100, 1, 'expense', 468.72, 'Pago relacionado con Fianza y garantia como inquilino', 18, '2025-02-07', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (101, 1, 'expense', 39.89, 'Pago relacionado con Alquiler como inquilino', 3, '2025-03-19', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (102, 1, 'expense', 322.64, 'Pago relacionado con Transferencias', 58, '2025-02-24', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (103, 1, 'income', 356.5, 'Pago relacionado con Ingresos por regalos', 28, '2025-03-16', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (104, 1, 'expense', 479.34, 'Pago relacionado con Seguro de vida', 51, '2025-01-13', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (105, 1, 'expense', 307.37, 'Pago relacionado con Peajes', 42, '2025-03-04', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (106, 1, 'income', 490.17, 'Pago relacionado con Ingresos de seguros', 24, '2025-01-26', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (107, 1, 'expense', 116.63, 'Pago relacionado con Cajeros', 7, '2025-01-16', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (108, 1, 'expense', 145.94, 'Pago relacionado con Seguro de vida', 51, '2025-01-14', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (109, 1, 'expense', 340.13, 'Pago relacionado con Alquiler como inquilino', 3, '2025-03-31', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (110, 1, 'expense', 292.02, 'Pago relacionado con Gasolina y combustible', 19, '2025-03-31', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (111, 1, 'expense', 491.46, 'Pago relacionado con Otros gastos (otros)', 37, '2025-03-12', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (112, 1, 'expense', 456.01, 'Pago relacionado con Mantenimiento del hogar', 32, '2025-02-21', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (113, 1, 'expense', 6.46, 'Pago relacionado con Plan de pensiones', 43, '2025-03-22', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (114, 1, 'expense', 143.39, 'Pago relacionado con Suscripciones', 54, '2025-03-08', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (115, 1, 'expense', 448.18, 'Pago relacionado con ONGs', 35, '2025-02-01', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (116, 1, 'income', 245.22, 'Pago relacionado con Ingresos de impuestos', 23, '2025-01-01', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (117, 1, 'expense', 494.49, 'Pago relacionado con Otros gastos (otros)', 37, '2025-02-27', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (118, 1, 'expense', 319.99, 'Pago relacionado con Libros, música y videojuegos', 29, '2025-01-24', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (119, 1, 'income', 409.3, 'Pago relacionado con Ingresos de impuestos', 23, '2025-02-18', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (120, 1, 'expense', 471.58, 'Pago relacionado con Tarjetas financieras', 55, '2025-03-23', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (121, 1, 'income', 267.87, 'Pago relacionado con Ingresos por loteria', 26, '2025-02-02', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (122, 1, 'expense', 249.57, 'Pago relacionado con ONGs', 35, '2025-01-16', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (123, 1, 'income', 47.75, 'Pago relacionado con Ingresos de impuestos', 23, '2025-01-15', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (124, 1, 'expense', 396.65, 'Pago relacionado con Cafeterías y restaurantes', 6, '2025-01-24', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (125, 1, 'expense', 62.4, 'Pago relacionado con Abono de intereses', 1, '2025-02-10', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (126, 1, 'expense', 271.0, 'Pago relacionado con Dentista, médico', 13, '2025-01-30', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (127, 1, 'expense', 252.57, 'Pago relacionado con Hipoteca', 21, '2025-01-30', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (128, 1, 'income', 86.96, 'Pago relacionado con Nómina o Pensión', 34, '2025-02-01', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (129, 1, 'expense', 317.75, 'Pago relacionado con Otros préstamos y avales', 38, '2025-01-03', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (130, 1, 'expense', 248.06, 'Pago relacionado con Transporte público', 59, '2025-02-04', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (131, 1, 'expense', 68.47, 'Pago relacionado con Peluquería', 4, '2025-01-05', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (132, 1, 'expense', 425.63, 'Pago relacionado con Agua', 2, '2025-02-07', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (133, 1, 'expense', 68.39, 'Pago relacionado con Educación, salud y deporte', 15, '2025-01-05', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (134, 1, 'expense', 349.81, 'Pago relacionado con Comunidad derramas', 11, '2025-02-22', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (135, 1, 'expense', 85.54, 'Pago relacionado con Peluquería', 4, '2025-03-09', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (136, 1, 'expense', 425.48, 'Pago relacionado con Seguro de vida', 51, '2025-01-10', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (137, 1, 'expense', 422.25, 'Pago relacionado con Transporte público', 59, '2025-02-28', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (138, 1, 'expense', 421.13, 'Pago relacionado con Pago de multas', 39, '2025-02-01', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (139, 1, 'expense', 350.3, 'Pago relacionado con ONGs', 35, '2025-01-02', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (140, 1, 'expense', 465.5, 'Pago relacionado con Hotel y alojamiento', 22, '2025-02-09', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (141, 1, 'expense', 91.22, 'Pago relacionado con Seguro de vida', 51, '2025-03-29', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (142, 1, 'expense', 291.06, 'Pago relacionado con Cafeterías y restaurantes', 6, '2025-01-30', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (143, 1, 'expense', 423.51, 'Pago relacionado con Loterías y apuestas', 30, '2025-01-16', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (144, 1, 'expense', 241.14, 'Pago relacionado con Peajes', 42, '2025-02-28', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (145, 1, 'income', 467.53, 'Pago relacionado con Ingresos de impuestos', 23, '2025-03-29', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (146, 1, 'expense', 339.43, 'Pago relacionado con Seguro de hogar', 48, '2025-03-01', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (147, 1, 'expense', 67.63, 'Pago relacionado con Peluquería', 4, '2025-01-10', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (148, 1, 'expense', 346.89, 'Pago relacionado con Seguro de hogar', 48, '2025-01-22', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (149, 1, 'expense', 449.34, 'Pago relacionado con Libros, música y videojuegos', 29, '2025-01-22', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (150, 1, 'expense', 461.57, 'Pago relacionado con Billetes de viaje', 5, '2025-03-13', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (151, 1, 'expense', 453.85, 'Pago relacionado con Cajeros', 7, '2025-01-25', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (152, 1, 'expense', 229.84, 'Pago relacionado con Ropa y complementos', 47, '2025-02-18', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (153, 1, 'expense', 404.37, 'Pago relacionado con Plan de pensiones', 43, '2025-03-27', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (154, 1, 'expense', 204.49, 'Pago relacionado con Ropa y complementos', 47, '2025-02-21', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (155, 1, 'expense', 281.31, 'Pago relacionado con Alquiler de vehículo', 45, '2025-01-29', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (156, 1, 'expense', 445.9, 'Pago relacionado con Cafeterías y restaurantes', 6, '2025-03-24', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (157, 1, 'expense', 228.78, 'Pago relacionado con Sindicatos', 52, '2025-01-19', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (158, 1, 'expense', 403.81, 'Pago relacionado con Cajeros', 7, '2025-03-07', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (159, 1, 'expense', 57.6, 'Pago relacionado con ONGs', 35, '2025-01-12', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (160, 1, 'expense', 233.76, 'Pago relacionado con Comunidad', 10, '2025-02-22', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (161, 1, 'expense', 432.4, 'Pago relacionado con Óptica', 36, '2025-02-05', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (162, 1, 'income', 113.58, 'Pago relacionado con Ingresos por otros pagos', 27, '2025-01-30', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (163, 1, 'expense', 215.2, 'Pago relacionado con ONGs', 35, '2025-02-24', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (164, 1, 'expense', 373.75, 'Pago relacionado con Comunidad', 10, '2025-03-25', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (165, 1, 'income', 473.07, 'Pago relacionado con Ingresos de impuestos', 23, '2025-01-04', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (166, 1, 'expense', 192.63, 'Pago relacionado con Cine, teatro y espectáculos', 8, '2025-03-27', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (167, 1, 'expense', 119.42, 'Pago relacionado con Teléfono, TV e internet', 56, '2025-02-04', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (168, 1, 'expense', 299.72, 'Pago relacionado con Transferencias', 58, '2025-01-04', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (169, 1, 'expense', 77.55, 'Pago relacionado con Tren, avión, transporte', 60, '2025-01-17', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (170, 1, 'expense', 327.25, 'Pago relacionado con Teléfono, TV e internet', 56, '2025-03-12', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (171, 1, 'expense', 66.45, 'Pago relacionado con Cafeterías y restaurantes', 6, '2025-03-28', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (172, 1, 'expense', 95.68, 'Pago relacionado con Libros, música y videojuegos', 29, '2025-03-25', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (173, 1, 'expense', 116.08, 'Pago relacionado con Decoración y mobiliario', 12, '2025-01-16', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (174, 1, 'income', 74.88, 'Pago relacionado con Ingresos por otros pagos', 27, '2025-03-03', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (175, 1, 'expense', 140.97, 'Pago relacionado con Teléfono, TV e internet', 56, '2025-02-04', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (176, 1, 'expense', 488.89, 'Pago relacionado con Educación, salud y deporte', 15, '2025-02-23', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (177, 1, 'expense', 101.93, 'Pago relacionado con Seguro de vida', 51, '2025-03-06', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (178, 1, 'expense', 144.2, 'Pago relacionado con Deporte y gimnasio', 14, '2025-03-01', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (179, 1, 'expense', 148.73, 'Pago relacionado con Educación, salud y deporte', 15, '2025-01-12', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (180, 1, 'expense', 233.66, 'Pago relacionado con Hipoteca', 21, '2025-01-26', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (181, 1, 'expense', 245.63, 'Pago relacionado con Hipoteca', 21, '2025-03-04', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (182, 1, 'expense', 200.62, 'Pago relacionado con Gasolina y combustible', 19, '2025-03-26', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (183, 1, 'expense', 277.59, 'Pago relacionado con Mantenimiento del hogar', 32, '2025-03-14', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (184, 1, 'expense', 32.75, 'Pago relacionado con Seguro de vehículo', 50, '2025-03-13', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (185, 1, 'expense', 188.41, 'Pago relacionado con Transferencias', 58, '2025-03-09', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (186, 1, 'expense', 436.61, 'Pago relacionado con Gastos de inmobiliaria', 20, '2025-03-10', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (187, 1, 'expense', 193.06, 'Pago relacionado con Transporte público', 59, '2025-03-27', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (188, 1, 'income', 244.57, 'Pago relacionado con Ingresos por regalos', 28, '2025-03-15', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (189, 1, 'expense', 74.09, 'Pago relacionado con Suscripciones', 54, '2025-02-17', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (190, 1, 'income', 335.27, 'Pago relacionado con Ingresos por loteria', 26, '2025-03-24', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (191, 1, 'expense', 387.79, 'Pago relacionado con Otros préstamos y avales', 38, '2025-02-21', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (192, 1, 'expense', 28.38, 'Pago relacionado con Sindicatos', 52, '2025-01-09', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (193, 1, 'expense', 360.74, 'Pago relacionado con Gasolina y combustible', 19, '2025-03-06', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (194, 1, 'expense', 234.05, 'Pago relacionado con Gasolina y combustible', 19, '2025-03-23', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (195, 1, 'expense', 432.6, 'Pago relacionado con Educación, salud y deporte', 15, '2025-03-09', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (196, 1, 'expense', 237.45, 'Pago relacionado con Comunidad', 10, '2025-02-08', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (197, 1, 'expense', 357.44, 'Pago relacionado con Tarjetas financieras', 55, '2025-02-22', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (198, 1, 'expense', 221.61, 'Pago relacionado con Mantenimiento del vehículo', 33, '2025-02-01', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (199, 1, 'expense', 328.75, 'Pago relacionado con Billetes de viaje', 5, '2025-02-21', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (200, 1, 'expense', 143.17, 'Pago relacionado con Sindicatos', 52, '2025-03-05', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (201, 1, 'expense', 254.25, 'Pago relacionado con ONGs', 35, '2025-01-22', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (202, 1, 'expense', 276.79, 'Pago relacionado con Otros préstamos y avales', 38, '2025-03-10', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (203, 1, 'expense', 375.45, 'Pago relacionado con Mantenimiento del hogar', 32, '2025-02-01', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (204, 1, 'expense', 134.63, 'Pago relacionado con Mantenimiento del hogar', 32, '2025-01-31', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (205, 1, 'expense', 398.4, 'Pago relacionado con Pagos impuestos', 40, '2025-02-09', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (206, 1, 'expense', 153.99, 'Pago relacionado con Loterías y apuestas', 30, '2025-03-29', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (207, 1, 'income', 296.82, 'Pago relacionado con Ingresos por regalos', 28, '2025-03-26', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (208, 1, 'expense', 279.96, 'Pago relacionado con Electrónica', 16, '2025-02-25', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (209, 1, 'expense', 429.82, 'Pago relacionado con Dentista, médico', 13, '2025-03-24', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (210, 1, 'expense', 261.75, 'Pago relacionado con Otros gastos (otros)', 37, '2025-01-27', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (211, 1, 'expense', 172.54, 'Pago relacionado con Seguro de hogar', 48, '2025-03-01', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (212, 1, 'expense', 189.27, 'Pago relacionado con Tren, avión, transporte', 60, '2025-02-06', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (213, 1, 'expense', 76.17, 'Pago relacionado con Cafeterías y restaurantes', 6, '2025-01-31', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (214, 1, 'expense', 126.92, 'Pago relacionado con Suscripciones', 54, '2025-01-18', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (215, 1, 'income', 290.17, 'Pago relacionado con Ingresos por indemnizaciones', 25, '2025-01-25', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (216, 1, 'expense', 129.7, 'Pago relacionado con Educación, salud y deporte', 15, '2025-02-19', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (217, 1, 'expense', 246.56, 'Pago relacionado con Luz y gas', 31, '2025-02-18', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (218, 1, 'expense', 448.08, 'Pago relacionado con Seguro de vida', 51, '2025-01-21', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (219, 1, 'expense', 348.51, 'Pago relacionado con Sindicatos', 52, '2025-02-06', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (220, 1, 'expense', 195.71, 'Pago relacionado con Educación, salud y deporte', 15, '2025-03-24', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (221, 1, 'income', 494.78, 'Pago relacionado con Ingresos por otros pagos', 27, '2025-03-01', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (222, 1, 'expense', 71.96, 'Pago relacionado con Seguro de vida', 51, '2025-02-15', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (223, 1, 'expense', 239.52, 'Pago relacionado con Billetes de viaje', 5, '2025-02-22', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (224, 1, 'expense', 64.55, 'Pago relacionado con Peajes', 42, '2025-03-05', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (225, 1, 'income', 417.85, 'Pago relacionado con Nómina o Pensión', 34, '2025-02-22', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (226, 1, 'expense', 149.48, 'Pago relacionado con Comunidad', 10, '2025-02-03', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (227, 1, 'expense', 142.62, 'Pago relacionado con Hipoteca', 21, '2025-01-16', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (228, 1, 'expense', 138.56, 'Pago relacionado con Educación, salud y deporte', 15, '2025-02-25', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (229, 1, 'income', 48.81, 'Pago relacionado con Ingresos de impuestos', 23, '2025-02-08', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (230, 1, 'expense', 479.15, 'Pago relacionado con Otros gastos (otros)', 37, '2025-03-12', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (231, 1, 'expense', 74.7, 'Pago relacionado con Regalos y juguetes', 46, '2025-01-06', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (232, 1, 'expense', 418.92, 'Pago relacionado con Ropa y complementos', 47, '2025-03-18', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (233, 1, 'expense', 436.49, 'Pago relacionado con Cafeterías y restaurantes', 6, '2025-02-18', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (234, 1, 'expense', 85.9, 'Pago relacionado con Parking y garaje', 41, '2025-03-21', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (235, 1, 'expense', 444.42, 'Pago relacionado con Óptica', 36, '2025-01-15', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (236, 1, 'expense', 10.66, 'Pago relacionado con Luz y gas', 31, '2025-03-16', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (237, 1, 'expense', 402.18, 'Pago relacionado con Ropa y complementos', 47, '2025-02-02', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (238, 1, 'income', 386.81, 'Pago relacionado con Ingresos por indemnizaciones', 25, '2025-03-07', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (239, 1, 'expense', 422.57, 'Pago relacionado con Transferencias', 58, '2025-02-06', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (240, 1, 'expense', 248.34, 'Pago relacionado con Otros gastos (otros)', 37, '2025-03-13', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (241, 1, 'expense', 481.32, 'Pago relacionado con Mantenimiento del vehículo', 33, '2025-01-02', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (242, 1, 'expense', 134.76, 'Pago relacionado con Suscripciones', 54, '2025-02-07', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (243, 1, 'expense', 319.9, 'Pago relacionado con Ropa y complementos', 47, '2025-01-05', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (244, 1, 'expense', 336.93, 'Pago relacionado con Alquiler de vehículo', 45, '2025-03-01', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (245, 1, 'expense', 132.98, 'Pago relacionado con Seguro de salud', 49, '2025-02-02', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (246, 1, 'expense', 40.66, 'Pago relacionado con Cajeros', 7, '2025-01-12', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (247, 1, 'expense', 322.58, 'Pago relacionado con Pago de multas', 39, '2025-01-21', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (248, 1, 'expense', 151.35, 'Pago relacionado con Gasolina y combustible', 19, '2025-02-17', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (249, 1, 'expense', 260.46, 'Pago relacionado con Transacción entre cuentas', 57, '2025-03-11', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (250, 1, 'expense', 206.0, 'Pago relacionado con Otros gastos (otros)', 37, '2025-01-01', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (251, 1, 'expense', 451.65, 'Pago relacionado con Comunidad derramas', 11, '2025-02-03', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (252, 1, 'expense', 158.76, 'Pago relacionado con Abono de intereses', 1, '2025-01-06', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (253, 1, 'expense', 232.45, 'Pago relacionado con Billetes de viaje', 5, '2025-02-15', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (254, 1, 'expense', 9.26, 'Pago relacionado con Regalos y juguetes', 46, '2025-03-22', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (255, 1, 'expense', 175.65, 'Pago relacionado con Cine, teatro y espectáculos', 8, '2025-01-30', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (256, 1, 'expense', 79.76, 'Pago relacionado con Cafeterías y restaurantes', 6, '2025-02-16', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (257, 1, 'expense', 279.25, 'Pago relacionado con Cine, teatro y espectáculos', 8, '2025-03-03', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (258, 1, 'expense', 298.44, 'Pago relacionado con Comisiones e intereses', 9, '2025-01-28', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (259, 1, 'expense', 247.57, 'Pago relacionado con Tren, avión, transporte', 60, '2025-02-08', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (260, 1, 'expense', 23.12, 'Pago relacionado con Luz y gas', 31, '2025-02-18', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (261, 1, 'income', 101.72, 'Pago relacionado con Ingresos por indemnizaciones', 25, '2025-01-21', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (262, 1, 'expense', 57.45, 'Pago relacionado con Gastos de inmobiliaria', 20, '2025-01-05', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (263, 1, 'expense', 384.85, 'Pago relacionado con Peajes', 42, '2025-02-25', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (264, 1, 'expense', 23.0, 'Pago relacionado con Luz y gas', 31, '2025-01-31', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (265, 1, 'expense', 100.77, 'Pago relacionado con Luz y gas', 31, '2025-03-16', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (266, 1, 'expense', 269.28, 'Pago relacionado con Seguro de vida', 51, '2025-02-18', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (267, 1, 'expense', 323.33, 'Pago relacionado con Tren, avión, transporte', 60, '2025-02-10', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (268, 1, 'expense', 139.11, 'Pago relacionado con Farmacia, herbolario y nutrición', 17, '2025-03-27', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (269, 1, 'expense', 62.1, 'Pago relacionado con Fianza y garantia como inquilino', 18, '2025-01-01', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (270, 1, 'expense', 450.17, 'Pago relacionado con Educación, salud y deporte', 15, '2025-01-22', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (271, 1, 'expense', 427.78, 'Pago relacionado con Luz y gas', 31, '2025-01-04', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (272, 1, 'expense', 199.47, 'Pago relacionado con Cafeterías y restaurantes', 6, '2025-01-18', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (273, 1, 'expense', 416.81, 'Pago relacionado con Transacción entre cuentas', 57, '2025-03-04', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (274, 1, 'expense', 406.06, 'Pago relacionado con Dentista, médico', 13, '2025-02-23', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (275, 1, 'expense', 446.56, 'Pago relacionado con ONGs', 35, '2025-03-04', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (276, 1, 'expense', 306.01, 'Pago relacionado con Supermercados y alimentación', 53, '2025-02-26', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (277, 1, 'expense', 88.13, 'Pago relacionado con Farmacia, herbolario y nutrición', 17, '2025-01-24', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (278, 1, 'expense', 111.12, 'Pago relacionado con Cajeros', 7, '2025-03-07', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (279, 1, 'expense', 389.98, 'Pago relacionado con Luz y gas', 31, '2025-02-01', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (280, 1, 'expense', 47.98, 'Pago relacionado con Suscripciones', 54, '2025-02-06', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (281, 1, 'expense', 73.71, 'Pago relacionado con Ropa y complementos', 47, '2025-02-22', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (282, 1, 'expense', 253.48, 'Pago relacionado con Fianza y garantia como inquilino', 18, '2025-02-28', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (283, 1, 'expense', 87.26, 'Pago relacionado con Billetes de viaje', 5, '2025-03-29', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (284, 1, 'expense', 42.5, 'Pago relacionado con Comisiones e intereses', 9, '2025-03-27', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (285, 1, 'expense', 11.3, 'Pago relacionado con Abono de intereses', 1, '2025-02-11', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (286, 1, 'expense', 467.22, 'Pago relacionado con Farmacia, herbolario y nutrición', 17, '2025-01-01', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (287, 1, 'expense', 445.72, 'Pago relacionado con Cajeros', 7, '2025-02-21', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (288, 1, 'expense', 291.38, 'Pago relacionado con Transporte público', 59, '2025-01-22', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (289, 1, 'expense', 195.53, 'Pago relacionado con Pagos impuestos', 40, '2025-02-13', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (290, 1, 'expense', 339.22, 'Pago relacionado con Suscripciones', 54, '2025-01-16', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (291, 1, 'expense', 450.94, 'Pago relacionado con Ropa y complementos', 47, '2025-01-04', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (292, 1, 'expense', 310.22, 'Pago relacionado con Deporte y gimnasio', 14, '2025-03-18', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (293, 1, 'expense', 476.11, 'Pago relacionado con Peajes', 42, '2025-01-19', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (294, 1, 'expense', 287.05, 'Pago relacionado con Libros, música y videojuegos', 29, '2025-02-16', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (295, 1, 'expense', 368.64, 'Pago relacionado con Regalos y juguetes', 46, '2025-01-21', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (296, 1, 'expense', 16.85, 'Pago relacionado con Cajeros', 7, '2025-02-25', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (297, 1, 'expense', 345.39, 'Pago relacionado con Decoración y mobiliario', 12, '2025-02-19', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (298, 1, 'expense', 445.12, 'Pago relacionado con Educación, salud y deporte', 15, '2025-02-14', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (299, 1, 'expense', 132.39, 'Pago relacionado con Teléfono, TV e internet', 56, '2025-01-15', NOW(), NOW());
INSERT INTO Transactions (idTransaction, idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES (300, 1, 'expense', 74.0, 'Pago relacionado con Transacción entre cuentas', 57, '2025-02-19', NOW(), NOW());

INSERT INTO Transactions (idUser, type, amount, description, idCategory, date, createdAt, updatedAt) VALUES
-- Enero
(1, 'expense', 45.00, 'Cena con amigos', 6, '2025-01-05', NOW(), NOW()),
(1, 'income', 1200.00, 'Nómina enero', 32, '2025-01-01', NOW(), NOW()),
(1, 'expense', 100.00, 'Gasolina coche', 18, '2025-01-10', NOW(), NOW()),
(1, 'expense', 25.50, 'Peluquería', 4, '2025-01-15', NOW(), NOW()),
(1, 'expense', 300.00, 'Alquiler piso', 3, '2025-01-03', NOW(), NOW()),
(2, 'income', 1500.00, 'Nómina enero', 32, '2025-01-01', NOW(), NOW()),
(2, 'expense', 200.00, 'Supermercado', 53, '2025-01-07', NOW(), NOW()),
(2, 'expense', 35.00, 'Luz', 30, '2025-01-11', NOW(), NOW()),
(2, 'expense', 90.00, 'Dentista', 12, '2025-01-21', NOW(), NOW()),
(2, 'expense', 60.00, 'Restaurante', 6, '2025-01-18', NOW(), NOW()),
(3, 'income', 1000.00, 'Prestación enero', 46, '2025-01-02', NOW(), NOW()),
(3, 'expense', 40.00, 'Peajes viaje', 42, '2025-01-09', NOW(), NOW()),
(3, 'expense', 20.00, 'Farmacia', 13, '2025-01-20', NOW(), NOW()),
(3, 'expense', 100.00, 'Ropa de invierno', 48, '2025-01-14', NOW(), NOW()),
(3, 'expense', 30.00, 'Cine', 7, '2025-01-22', NOW(), NOW()),
(1, 'income', 1200.00, 'Nómina enero', 32, '2025-01-01', NOW(), NOW()),
(1, 'expense', 45.00, 'Cena con amigos', 6, '2025-01-05', NOW(), NOW()),
(1, 'expense', 100.00, 'Gasolina coche', 18, '2025-01-10', NOW(), NOW()),
(1, 'expense', 25.50, 'Peluquería', 4, '2025-01-15', NOW(), NOW()),
(1, 'expense', 300.00, 'Alquiler piso', 3, '2025-01-03', NOW(), NOW()),
(2, 'income', 1500.00, 'Nómina enero', 32, '2025-01-01', NOW(), NOW()),
(2, 'expense', 200.00, 'Supermercado', 53, '2025-01-07', NOW(), NOW()),
(2, 'expense', 35.00, 'Luz', 30, '2025-01-11', NOW(), NOW()),
(2, 'expense', 90.00, 'Dentista', 12, '2025-01-21', NOW(), NOW()),
(2, 'expense', 60.00, 'Restaurante', 6, '2025-01-18', NOW(), NOW()),
(3, 'income', 1000.00, 'Prestación enero', 46, '2025-01-02', NOW(), NOW()),
(3, 'expense', 40.00, 'Peajes viaje', 42, '2025-01-09', NOW(), NOW()),
(3, 'expense', 20.00, 'Farmacia', 13, '2025-01-20', NOW(), NOW()),
(3, 'expense', 100.00, 'Ropa de invierno', 48, '2025-01-14', NOW(), NOW()),
(3, 'expense', 30.00, 'Cine', 7, '2025-01-22', NOW(), NOW()),

-- Febrero
(1, 'income', 1200.00, 'Nómina febrero', 32, '2025-02-01', NOW(), NOW()),
(1, 'expense', 45.00, 'Restaurante', 6, '2025-02-10', NOW(), NOW()),
(1, 'expense', 105.00, 'Gas', 30, '2025-02-12', NOW(), NOW()),
(1, 'expense', 20.00, 'Farmacia', 13, '2025-02-17', NOW(), NOW()),
(1, 'expense', 300.00, 'Alquiler', 3, '2025-02-03', NOW(), NOW()),
(2, 'income', 1500.00, 'Nómina febrero', 32, '2025-02-01', NOW(), NOW()),
(2, 'expense', 180.00, 'Supermercado', 53, '2025-02-08', NOW(), NOW()),
(2, 'expense', 45.00, 'Teléfono', 56, '2025-02-10', NOW(), NOW()),
(2, 'expense', 70.00, 'Gimnasio', 11, '2025-02-14', NOW(), NOW()),
(2, 'expense', 95.00, 'Electrónica', 14, '2025-02-18', NOW(), NOW()),
(3, 'income', 1000.00, 'Prestación febrero', 46, '2025-02-02', NOW(), NOW()),
(3, 'expense', 40.00, 'Peajes', 42, '2025-02-07', NOW(), NOW()),
(3, 'expense', 22.00, 'Farmacia', 13, '2025-02-15', NOW(), NOW()),
(3, 'expense', 120.00, 'Hotel escapada', 21, '2025-02-20', NOW(), NOW()),
(3, 'expense', 35.00, 'Cafetería', 6, '2025-02-22', NOW(), NOW()),
(1, 'income', 1200.00, 'Nómina febrero', 32, '2025-02-01', NOW(), NOW()),
(1, 'expense', 45.00, 'Restaurante', 6, '2025-02-10', NOW(), NOW()),
(1, 'expense', 105.00, 'Gas', 30, '2025-02-12', NOW(), NOW()),
(1, 'expense', 20.00, 'Farmacia', 13, '2025-02-17', NOW(), NOW()),
(1, 'expense', 300.00, 'Alquiler', 3, '2025-02-03', NOW(), NOW()),
(2, 'income', 1500.00, 'Nómina febrero', 32, '2025-02-01', NOW(), NOW()),
(2, 'expense', 180.00, 'Supermercado', 53, '2025-02-08', NOW(), NOW()),
(2, 'expense', 45.00, 'Teléfono', 56, '2025-02-10', NOW(), NOW()),
(2, 'expense', 70.00, 'Gimnasio', 11, '2025-02-14', NOW(), NOW()),
(2, 'expense', 95.00, 'Electrónica', 14, '2025-02-18', NOW(), NOW()),
(3, 'income', 1000.00, 'Prestación febrero', 46, '2025-02-02', NOW(), NOW()),
(3, 'expense', 40.00, 'Peajes', 42, '2025-02-07', NOW(), NOW()),
(3, 'expense', 22.00, 'Farmacia', 13, '2025-02-15', NOW(), NOW()),
(3, 'expense', 120.00, 'Hotel escapada', 21, '2025-02-20', NOW(), NOW()),
(3, 'expense', 35.00, 'Cafetería', 6, '2025-02-22', NOW(), NOW()),

-- Marzo
(1, 'income', 1200.00, 'Nómina marzo', 32, '2025-03-01', NOW(), NOW()),
(1, 'expense', 100.00, 'Gasolina', 18, '2025-03-09', NOW(), NOW()),
(1, 'expense', 50.00, 'Decoración hogar', 10, '2025-03-15', NOW(), NOW()),
(1, 'expense', 300.00, 'Alquiler', 3, '2025-03-03', NOW(), NOW()),
(1, 'expense', 90.00, 'Ocio', 7, '2025-03-20', NOW(), NOW()),
(2, 'income', 1500.00, 'Nómina marzo', 32, '2025-03-01', NOW(), NOW()),
(2, 'expense', 190.00, 'Supermercado', 53, '2025-03-06', NOW(), NOW()),
(2, 'expense', 60.00, 'Internet', 56, '2025-03-11', NOW(), NOW()),
(2, 'expense', 45.00, 'Regalos', 47, '2025-03-14', NOW(), NOW()),
(2, 'expense', 85.00, 'Farmacia', 13, '2025-03-18', NOW(), NOW()),
(3, 'income', 1000.00, 'Prestación marzo', 46, '2025-03-02', NOW(), NOW()),
(3, 'expense', 45.00, 'Peajes', 42, '2025-03-08', NOW(), NOW()),
(3, 'expense', 25.00, 'Libros', 28, '2025-03-13', NOW(), NOW()),
(3, 'expense', 95.00, 'Ropa nueva', 48, '2025-03-17', NOW(), NOW()),
(3, 'expense', 50.00, 'Lotería', 29, '2025-03-22', NOW(), NOW()),
(1, 'income', 1200.00, 'Nómina marzo', 32, '2025-03-01', NOW(), NOW()),
(1, 'expense', 100.00, 'Gasolina', 18, '2025-03-09', NOW(), NOW()),
(1, 'expense', 50.00, 'Decoración hogar', 10, '2025-03-15', NOW(), NOW()),
(1, 'expense', 300.00, 'Alquiler', 3, '2025-03-03', NOW(), NOW()),
(1, 'expense', 90.00, 'Ocio', 7, '2025-03-20', NOW(), NOW()),
(2, 'income', 1500.00, 'Nómina marzo', 32, '2025-03-01', NOW(), NOW()),
(2, 'expense', 190.00, 'Supermercado', 53, '2025-03-06', NOW(), NOW()),
(2, 'expense', 60.00, 'Internet', 56, '2025-03-11', NOW(), NOW()),
(2, 'expense', 45.00, 'Regalos', 47, '2025-03-14', NOW(), NOW()),
(2, 'expense', 85.00, 'Farmacia', 13, '2025-03-18', NOW(), NOW()),
(3, 'income', 1000.00, 'Prestación marzo', 46, '2025-03-02', NOW(), NOW()),
(3, 'expense', 45.00, 'Peajes', 42, '2025-03-08', NOW(), NOW()),
(3, 'expense', 25.00, 'Libros', 28, '2025-03-13', NOW(), NOW()),
(3, 'expense', 95.00, 'Ropa nueva', 48, '2025-03-17', NOW(), NOW()),
(3, 'expense', 50.00, 'Lotería', 29, '2025-03-22', NOW(), NOW());

-- Poblamiento de la tabla Budgets
INSERT INTO `Budgets` (`idUser`, `idCategory`, `limitAmount`, `month`, `createdAt`) VALUES
(1, 1, 100.00, '2025-01', NOW()),
(1, 2, 50.00, '2025-01', NOW()),
(1, 3, 300.00, '2025-01', NOW()),
(1, 4, 25.00, '2025-01', NOW()),
(1, 5, 100.00, '2025-01', NOW()),
(1, 6, 150.00, '2025-01', NOW()),
(1, 7, 80.00, '2025-02', NOW()),
(1, 8, 50.00, '2025-02', NOW()),
(1, 9, 200.00, '2025-02', NOW()),
(1, 10, 40.00, '2025-02', NOW()),
(1, 11, 120.00, '2025-02', NOW()),
(1, 12, 80.00, '2025-02', NOW()),
(1, 1, 100.00, '2025-03', NOW()),
(1, 2, 50.00, '2025-03', NOW()),
(1, 3, 300.00, '2025-03', NOW()),
(1, 4, 25.00, '2025-03', NOW()),
(1, 5, 100.00, '2025-03', NOW()),
(1, 6, 150.00, '2025-03', NOW()),

(2, 1, 120.00, '2025-01', NOW()),
(2, 2, 60.00, '2025-01', NOW()),
(2, 3, 350.00, '2025-01', NOW()),
(2, 4, 30.00, '2025-01', NOW()),
(2, 5, 120.00, '2025-01', NOW()),
(2, 6, 170.00, '2025-01', NOW()),
(2, 7, 90.00, '2025-02', NOW()),
(2, 8, 60.00, '2025-02', NOW()),
(2, 9, 220.00, '2025-02', NOW()),
(2, 10, 50.00, '2025-02', NOW()),
(2, 11, 140.00, '2025-02', NOW()),
(2, 12, 90.00, '2025-02', NOW()),
(2, 1, 120.00, '2025-03', NOW()),
(2, 2, 60.00, '2025-03', NOW()),
(2, 3, 350.00, '2025-03', NOW()),
(2, 4, 30.00, '2025-03', NOW()),
(2, 5, 120.00, '2025-03', NOW()),
(2, 6, 170.00, '2025-03', NOW()),

(3, 1, 80.00, '2025-01', NOW()),
(3, 2, 40.00, '2025-01', NOW()),
(3, 3, 200.00, '2025-01', NOW()),
(3, 4, 20.00, '2025-01', NOW()),
(3, 5, 60.00, '2025-01', NOW()),
(3, 6, 100.00, '2025-01', NOW()),
(3, 7, 70.00, '2025-02', NOW()),
(3, 8, 40.00, '2025-02', NOW()),
(3, 9, 180.00, '2025-02', NOW()),
(3, 10, 35.00, '2025-02', NOW()),
(3, 11, 100.00, '2025-02', NOW()),
(3, 12, 70.00, '2025-02', NOW()),
(3, 1, 80.00, '2025-03', NOW()),
(3, 2, 40.00, '2025-03', NOW()),
(3, 3, 200.00, '2025-03', NOW()),
(3, 4, 20.00, '2025-03', NOW()),
(3, 5, 60.00, '2025-03', NOW()),
(3, 6, 100.00, '2025-03', NOW());

-- Poblamiento de la tabla Goals
INSERT INTO `Goals` (`idUser`, `title`, `targetAmount`, `currentAmount`, `deadline`, `createdAt`) VALUES
(1, 'Ahorrar para vacaciones', 2000.00, 500.00, '2025-06-01', NOW()),
(1, 'Comprar un coche nuevo', 15000.00, 2000.00, '2026-01-01', NOW()),
(1, 'Fondo de emergencia', 3000.00, 800.00, '2025-09-01', NOW()),
(2, 'Comprar una casa', 50000.00, 10000.00, '2027-01-01', NOW()),
(2, 'Fondo para estudios', 10000.00, 1500.00, '2025-12-31', NOW()),
(2, 'Ahorrar para boda', 8000.00, 2500.00, '2025-11-01', NOW()),
(3, 'Reparar mi coche', 3000.00, 1000.00, '2025-06-01', NOW()),
(3, 'Ir a una escuela de arte', 5000.00, 800.00, '2025-09-01', NOW()),
(3, 'Crear fondo para emergencias', 2000.00, 500.00, '2025-12-01', NOW());
