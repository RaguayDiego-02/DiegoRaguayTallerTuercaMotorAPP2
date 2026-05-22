-- Diego Esteban Raguay Sactic - 2026067 -IN4CM 8/05/2026 - DML 
use script_db_DDL_Diego_Raguay_in4cm; 

-- Inserts con LLM - Clientes 
insert into clientes(cedula, nombre, direccion) values
('CLI-001', 'Carlos Méndez López','Zona 1, Ciudad de Guatemala'),
('CLI-002', 'María García Rodríguez','Zona 2, Ciudad de Guatemala'),
('CLI-003', 'Juan Pérez Hernández','Zona 3, Ciudad de Guatemala'),
('CLI-004', 'Ana Martínez Gómez','Zona 4, Ciudad de Guatemala'),
('CLI-005', 'Pedro López Reyes','Zona 5, Ciudad de Guatemala'),
('CLI-006', 'Lucía Hernández Castro','Zona 6, Ciudad de Guatemala'),
('CLI-007', 'Roberto Flores Díaz','Zona 7, Ciudad de Guatemala'),
('CLI-008', 'Carmen Sánchez Torres','Zona 8, Ciudad de Guatemala'),
('CLI-009', 'Miguel Ramírez Vásquez','Zona 9, Ciudad de Guatemala'),
('CLI-010', 'Elena Torres Morales','Zona 10, Ciudad de Guatemala'),
('CLI-011', 'Diego Castillo Fuentes','Zona 11, Ciudad de Guatemala'),
('CLI-012', 'Rosa Morales Aguilar','Zona 12, Ciudad de Guatemala'),
('CLI-013', 'Alejandro Ruiz Mendoza','Zona 13, Ciudad de Guatemala'),
('CLI-014', 'Isabel Vásquez Luna','Zona 14, Ciudad de Guatemala'),
('CLI-015', 'Fernando Gómez Herrera','Zona 15, Ciudad de Guatemala'),
('CLI-016', 'Patricia Jiménez Ramos','Zona 16, Ciudad de Guatemala'),
('CLI-017', 'Andrés Castro Pineda','Zona 17, Ciudad de Guatemala'),
('CLI-018', 'Sofía Alvarado Cruz','Zona 18, Ciudad de Guatemala'),
('CLI-019', 'Eduardo Mejía Salazar','Zona 19, Ciudad de Guatemala'),
('CLI-020', 'Verónica Reyes Chávez','Zona 21, Ciudad de Guatemala');

-- Inserts con LLM - Repuestos 
insert into repuestos(codigo, nombre, precio_unitario, cantidad_utilizada) values
(1,'Filtro de aceite',85,3),
(2,'Pastillas de freno',320,2),
(3,'Amortiguador delantero',750,1),
(4,'Correa de distribución',480,1),
(5,'Bujías NGK',55,4),
(6,'Alternador',1200,1),
(7,'Bomba de agua',650,1),
(8,'Radiador',1800,1),
(9,'Batería 12V',950,1),
(10,'Catalizador',2200,1),
(11,'Termostato',180,1),
(12,'Sensor de oxígeno',420,2),
(13,'Inyector combustible',890,4),
(14,'Bomba de gasolina',760,1),
(15,'Compresor de AC',2800,1),
(16,'Discos de freno',540,2),
(17,'Silenciador',680,1),
(18,'Rodamiento de rueda',310,2),
(19,'Cable de acelerador',145,1),
(20,'Llanta 195/65R15',490,4);

-- Inserts con LLM - Vehiculos  
insert into vehiculos(placa, marca, modelo, color, cedula) values
('GT-0001', 'Toyota','Corolla','Blanco','CLI-001'),
('GT-0002', 'Honda','Civic','Negro','CLI-002'),
('GT-0003', 'Nissan','Sentra','Rojo','CLI-003'),
('GT-0004', 'Chevrolet','Aveo','Azul','CLI-004'),
('GT-0005', 'Mazda','CX-5','Plata','CLI-005'),
('GT-0006', 'Hyundai','Tucson','Gris','CLI-006'),
('GT-0007', 'Kia','Sportage','Verde','CLI-007'),
('GT-0008', 'Ford','Ranger','Blanco','CLI-008'),
('GT-0009', 'Mitsubishi','L200','Negro', 'CLI-009'),
('GT-0010', 'Volkswagen','Jetta','Rojo','CLI-010'),
('GT-0011', 'Toyota','Hilux','Plata','CLI-011'),
('GT-0012', 'Honda','CR-V','Azul','CLI-012'),
('GT-0013', 'Nissan','Frontier','Gris','CLI-013'),
('GT-0014', 'Chevrolet','Silverado','Blanco','CLI-014'),
('GT-0015', 'Suzuki','Grand Vitara','Verde','CLI-015'),
('GT-0016', 'Isuzu','D-Max','Negro','CLI-016'),
('GT-0017', 'Dodge','Ram','Rojo','CLI-017'),
('GT-0018', 'Jeep','Wrangler','Naranja','CLI-018'),
('GT-0019', 'Kia','Rio','Blanco','CLI-019'),
('GT-0020', 'Toyota','RAV4','Plata','CLI-020');

-- Inserts con LLM - Mecanicos 
insert into mecanicos(numero_empleado, nombre, nivel_tecnico, trabajo_orden_servicio, horas_dedicadas, placa) values
(1,'Luis Ajú Pérez','Junior',1,'04:00:00','GT-0001'),
(2,'Mario Coc Tzi','Senior',2,'06:30:00','GT-0002'),
(3,'José Tzul Ixcot','Master',3,'08:00:00','GT-0003'),
(4,'Pedro Yat Caal','Aprendiz',4,'03:00:00','GT-0004'),
(5,'Alfredo Batz Ajú','Junior',5,'05:00:00','GT-0005'),
(6,'Ramón Cux Xol','Senior',6,'07:00:00','GT-0006'),
(7,'Héctor Choc Maas','Certificado A',7,'06:00:00','GT-0007'),
(8,'Edwin Pop Saquic','Junior',8,'04:30:00','GT-0008'),
(9,'Byron Yoc Pú','Master',9,'09:00:00','GT-0009'),
(10,'Walter Caal Chub','Senior',10,'07:30:00','GT-0010'),
(11,'Sergio Mó Tec','Aprendiz',11,'02:30:00','GT-0011'),
(12,'Fredy Sic Chávez','Certificado B',12,'05:30:00','GT-0012'),
(13,'Rony Coy Xiquín','Junior',13,'04:00:00','GT-0013'),
(14,'Hugo Tzoc Ajú','Senior',14,'06:00:00','GT-0014'),
(15,'Oscar Chub Coc','Master',15,'08:30:00','GT-0015'),
(16,'Nelson Ixcoy Tzi','Junior',16,'03:30:00','GT-0016'),
(17,'David Caal Yat','Certificado A',17,'07:00:00','GT-0017'),
(18,'Jorge Ajú Cux','Senior',18,'06:30:00','GT-0018'),
(19,'René Maas Pop','Aprendiz',19,'02:00:00','GT-0019'),
(20,'Carlos Xol Batz','Master',20,'09:30:00','GT-0020');

-- Inserts con LLM - Ordenes_servicios
insert into ordenes_servicios(id_ordenes_servicios, fecha_ingreso, diagnostico_inicial, presupuesto, placa, codigo) values
(1,'2025-01-05 08:00:00','Cambio de aceite y filtro',250,'GT-0001',1),
(2,'2025-01-08 09:15:00','Revisión y cambio de frenos',640,'GT-0002',2),
(3,'2025-01-10 10:30:00','Cambio de amortiguadores',1500,'GT-0003',3),
(4,'2025-01-12 07:45:00','Cambio de correa de distribución',600,'GT-0004',4),
(5,'2025-01-15 11:00:00','Cambio de bujías',220,'GT-0005',5),
(6,'2025-01-17 08:30:00','Fallo en sistema eléctrico',1400,'GT-0006',6),
(7,'2025-01-20 14:00:00','Fuga en bomba de agua',800,'GT-0007',7),
(8,'2025-01-22 09:00:00','Sobrecalentamiento del motor',2000,'GT-0008',8),
(9,'2025-01-25 10:00:00','Batería descargada',1050,'GT-0009',9),
(10,'2025-01-28 13:00:00','Revisión de emisiones',2400,'GT-0010',10),
(11,'2025-02-01 08:00:00','Motor con temperatura alta',300,'GT-0011',11),
(12,'2025-02-03 09:30:00','Luz de motor encendida',500,'GT-0012',12),
(13,'2025-02-06 11:00:00','Motor jaloneando',1000,'GT-0013',13),
(14,'2025-02-10 07:00:00','Falla al encender el vehículo',900,'GT-0014',14),
(15,'2025-02-13 15:00:00','Aire acondicionado sin frío',3000,'GT-0015',15),
(16,'2025-02-17 08:45:00','Vibración al frenar',1080,'GT-0016',16),
(17,'2025-02-20 10:30:00','Ruido en el escape',750,'GT-0017',17),
(18,'2025-02-24 09:00:00','Ruido en rueda delantera',700,'GT-0018',18),
(19,'2025-02-27 14:30:00','Vehículo no acelera bien',250,'GT-0019',19),
(20,'2025-03-02 08:00:00','Llanta pinchada y desgaste',980,'GT-0020',20);

-- Inserts con SP - Clientes 
call sp_agregar_clientes('CLI-021','Gustavo Pineda Morales','Zona 1, Mixco, Guatemala');
call sp_agregar_clientes('CLI-022','Daniela Cruz López','Zona 2, Mixco, Guatemala');
call sp_agregar_clientes('CLI-023','Ricardo Morales Pérez','Zona 3, Mixco, Guatemala');
call sp_agregar_clientes('CLI-024','Valentina Fuentes García','Zona 4, Mixco, Guatemala');
call sp_agregar_clientes('CLI-025','Héctor Aguilar Rodríguez','Zona 5, Mixco, Guatemala');
call sp_agregar_clientes('CLI-026','Mónica Luna Hernández','Zona 6, Mixco, Guatemala');
call sp_agregar_clientes('CLI-027','Oscar Herrera Martínez','Zona 7, Mixco, Guatemala');
call sp_agregar_clientes('CLI-028','Claudia Ramos Flores','Zona 8, Mixco, Guatemala');
call sp_agregar_clientes('CLI-029','Ernesto Mendoza Sánchez','Zona 9, Mixco, Guatemala');
call sp_agregar_clientes('CLI-030','Natalia Salazar Ramírez','Zona 10, Mixco, Guatemala');
call sp_agregar_clientes('CLI-031','Jaime Chávez Castillo','Villa Nueva, Guatemala');
call sp_agregar_clientes('CLI-032','Rebeca Pineda Torres','Villa Nueva, Guatemala');
call sp_agregar_clientes('CLI-033','Samuel Vásquez Ruiz','Petapa, Guatemala');
call sp_agregar_clientes('CLI-034','Gloria Morales Jiménez','Petapa, Guatemala');
call sp_agregar_clientes('CLI-035','Arturo Díaz Alvarado','Amatitlán, Guatemala');
call sp_agregar_clientes('CLI-036','Cecilia López Castro','Amatitlán, Guatemala');
call sp_agregar_clientes('CLI-037','Marcos Reyes Gómez','San Miguel Petapa');
call sp_agregar_clientes('CLI-038','Laura Mejía Pérez','Villa Canales, Guatemala');
call sp_agregar_clientes('CLI-039','Rodolfo García Torres','Fraijanes, Guatemala');
call sp_agregar_clientes('CLI-040','Adriana Herrera Vásquez','Santa Catarina Pinula');
 
-- Inserts con SP - Repuestos 
call sp_agregar_repuestos(21,'Filtro de aire',120,2);
call sp_agregar_repuestos(22,'Filtro de combustible',95,1);
call sp_agregar_repuestos(23,'Amortiguador trasero',700,2);
call sp_agregar_repuestos(24,'Banda serpentina',380,1);
call sp_agregar_repuestos(25,'Candela iridium',95,4);
call sp_agregar_repuestos(26,'Motor de arranque',1350,1);
call sp_agregar_repuestos(27,'Bomba hidráulica',1100,1);
call sp_agregar_repuestos(28,'Manguera de radiador',230,2);
call sp_agregar_repuestos(29,'Batería AGM',1200,1);
call sp_agregar_repuestos(30,'Convertidor catalítico',2500,1);
call sp_agregar_repuestos(31,'Válvula termostática',210,1);
call sp_agregar_repuestos(32,'Sensor MAP',390,1);
call sp_agregar_repuestos(33,'Regulador de presión',450,1);
call sp_agregar_repuestos(34,'Bomba de dirección',980,1);
call sp_agregar_repuestos(35,'Condensador de AC',1600,1);
call sp_agregar_repuestos(36,'Tambores de freno',460,2);
call sp_agregar_repuestos(37,'Tubo de escape',590,1);
call sp_agregar_repuestos(38,'Cubo de rueda',420,2);
call sp_agregar_repuestos(39,'Acelerador electrónico',870,1);
call sp_agregar_repuestos(40,'Llanta 205/55R16',540,4);

-- Inserts con SP - Vehiculos 
call sp_agregar_vehiculos('GT-0021','Toyota','Yaris','Blanco','CLI-021');
call sp_agregar_vehiculos('GT-0022','Honda','HRV','Gris','CLI-022');
call sp_agregar_vehiculos('GT-0023','Nissan','Versa','Azul','CLI-023');
call sp_agregar_vehiculos('GT-0024','Chevrolet','Spark','Rojo','CLI-024');
call sp_agregar_vehiculos('GT-0025','Mazda','Mazda 3','Negro','CLI-025');
call sp_agregar_vehiculos('GT-0026','Hyundai','Santa Fe','Plata','CLI-026');
call sp_agregar_vehiculos('GT-0027','Kia','Picanto','Verde','CLI-027');
call sp_agregar_vehiculos('GT-0028','Ford','Explorer','Blanco','CLI-028');
call sp_agregar_vehiculos('GT-0029','Mitsubishi','Outlander','Gris','CLI-029');
call sp_agregar_vehiculos('GT-0030','Volkswagen','Golf','Negro','CLI-030');
call sp_agregar_vehiculos('GT-0031','Toyota','Land Cruise','Blanco','CLI-031');
call sp_agregar_vehiculos('GT-0032','Honda','Pilot','Plata','CLI-032');
call sp_agregar_vehiculos('GT-0033','Nissan','Pathfinder','Rojo','CLI-033');
call sp_agregar_vehiculos('GT-0034','Chevrolet','Tahoe','Negro','CLI-034');
call sp_agregar_vehiculos('GT-0035','Suzuki','Vitara','Azul','CLI-035');
call sp_agregar_vehiculos('GT-0036','Isuzu','MUX','Gris','CLI-036');
call sp_agregar_vehiculos('GT-0037','Dodge','Durango','Blanco','CLI-037');
call sp_agregar_vehiculos('GT-0038','Jeep','Cherokee','Verde','CLI-038');
call sp_agregar_vehiculos('GT-0039','Kia','Sorento','Plata','CLI-039');
call sp_agregar_vehiculos('GT-0040','Toyota','Fortuner','Negro','CLI-040');
 
-- Inserts con SP - Mecanicos
call sp_agregar_mecanicos(21,'Erick Tzi Caal','Junior',21,'04:00:00','GT-0021');
call sp_agregar_mecanicos(22,'Kevin Coc Ajú','Senior',22,'06:00:00','GT-0022');
call sp_agregar_mecanicos(23,'Jonathan Pop Yat','Master',23,'08:00:00','GT-0023');
call sp_agregar_mecanicos(24,'Brandon Xol Tzi','Aprendiz',24,'03:00:00','GT-0024');
call sp_agregar_mecanicos(25,'Anthony Batz Cux','Junior',25,'05:30:00','GT-0025');
call sp_agregar_mecanicos(26,'Steven Yoc Choc','Certificado A',26,'07:00:00','GT-0026');
call sp_agregar_mecanicos(27,'Daniel Maas Saquic','Senior',27,'06:30:00','GT-0027');
call sp_agregar_mecanicos(28,'Josué Pú Caal','Junior',28,'04:30:00','GT-0028');
call sp_agregar_mecanicos(29,'Elmer Chub Xiquín','Master',29,'09:00:00','GT-0029');
call sp_agregar_mecanicos(30,'Wilber Tec Ixcoy','Senior',30,'07:30:00','GT-0030');
call sp_agregar_mecanicos(31,'Cristian Mó Coy','Certificado B',31,'05:00:00','GT-0031');
call sp_agregar_mecanicos(32,'Pablo Sic Tzoc','Junior',32,'03:30:00','GT-0032');
call sp_agregar_mecanicos(33,'Ricardo Ajú Pop','Senior',33,'06:00:00','GT-0033');
call sp_agregar_mecanicos(34,'Fernando Cux Yat','Aprendiz',34,'02:30:00','GT-0034');
call sp_agregar_mecanicos(35,'Emmanuel Choc Batz','Master',35,'08:30:00','GT-0035');
call sp_agregar_mecanicos(36,'Gabriel Tzul Coc','Junior',36,'04:00:00','GT-0036');
call sp_agregar_mecanicos(37,'Rodrigo Ixcot Xol','Certificado A',37,'07:00:00','GT-0037');
call sp_agregar_mecanicos(38,'Sebastián Caal Ajú','Senior',38,'06:30:00','GT-0038');
call sp_agregar_mecanicos(39,'Diego Yat Tzi','Aprendiz',39,'02:00:00','GT-0039');
call sp_agregar_mecanicos(40,'Alexis Tec Cux','Master',40,'09:30:00','GT-0040');

-- Inserts con SP - Ordenes_servicios 
call sp_agregar_ordenes_servicios(21,'2025-03-05 08:00:00','Cambio de filtro de aire',200,'GT-0021',21);
call sp_agregar_ordenes_servicios(22,'2025-03-07 09:00:00','Cambio de filtro combustible',150,'GT-0022',22);
call sp_agregar_ordenes_servicios(23,'2025-03-10 10:00:00','Cambio amortiguador trasero',1400,'GT-0023',23);
call sp_agregar_ordenes_servicios(24,'2025-03-12 07:30:00','Cambio de banda serpentina',480,'GT-0024',24);
call sp_agregar_ordenes_servicios(25,'2025-03-15 11:00:00','Cambio de candelas',380,'GT-0025',25);
call sp_agregar_ordenes_servicios(26,'2025-03-17 08:30:00','Motor no enciende',1500,'GT-0026',26);
call sp_agregar_ordenes_servicios(27,'2025-03-20 14:00:00','Falla en dirección hidráulica',1200,'GT-0027',27);
call sp_agregar_ordenes_servicios(28,'2025-03-22 09:00:00','Fuga en manguera radiador',300,'GT-0028',28);
call sp_agregar_ordenes_servicios(29,'2025-03-25 10:00:00','Batería no retiene carga',1300,'GT-0029',29);
call sp_agregar_ordenes_servicios(30,'2025-03-28 13:00:00','Revisión sistema de emisiones',2700,'GT-0030',30);
call sp_agregar_ordenes_servicios(31,'2025-04-02 08:00:00','Válvula termostática dañada',320,'GT-0031',31);
call sp_agregar_ordenes_servicios(32,'2025-04-04 09:30:00','Sensor MAP con falla',480,'GT-0032',32);
call sp_agregar_ordenes_servicios(33,'2025-04-07 11:00:00','Presión de combustible baja',550,'GT-0033',33);
call sp_agregar_ordenes_servicios(34,'2025-04-10 07:00:00','Dirección dura al girar',1100,'GT-0034',34);
call sp_agregar_ordenes_servicios(35,'2025-04-13 15:00:00','AC no enfría correctamente',1800,'GT-0035',35);
call sp_agregar_ordenes_servicios(36,'2025-04-17 08:45:00','Frenos con ruido trasero',920,'GT-0036',36);
call sp_agregar_ordenes_servicios(37,'2025-04-20 10:30:00','Escape con fuga de gases',700,'GT-0037',37);
call sp_agregar_ordenes_servicios(38,'2025-04-23 09:00:00','Ruido en cubo de rueda',530,'GT-0038',38);
call sp_agregar_ordenes_servicios(39,'2025-04-26 14:30:00','Acelerador electrónico dañado',980,'GT-0039',39);
call sp_agregar_ordenes_servicios(40,'2025-04-30 08:00:00','Cambio de llantas traseras',1080,'GT-0040',40);

-- Llamar vistas 
select * from vw_listar_clientes;
select * from vw_listar_repuestos;
select * from vw_listar_vehiculos;
select * from vw_listar_mecanicos;
select * from vw_listar_ordenes_servicios;


 


