-- Diego Esteban Raguay Sactic - 2026067 -IN4CM 8/05/2026 - DDL
create database if not exists script_db_DDL_Diego_Raguay_in4cm; 
use script_db_DDL_Diego_Raguay_in4cm; 
    
	create table clientes(
	  cedula  VARCHAR (100) primary key , 
	  nombre VARCHAR (100) , 
	  direccion TEXT 
	); 

	create table repuestos(
	   codigo INT  primary key , 
	   nombre VARCHAR (100) , 
	   precio_unitario  INT , 
	   cantidad_utilizada INT 
	); 

	create table vehiculos(
	  placa VARCHAR (8) primary key , 
	  marca  VARCHAR (20) , 
	  modelo VARCHAR (20) , 
	  color VARCHAR (20) , 
	  
	  -- llaves 
	  cedula  VARCHAR (100) , 
	  -- FK 
	  constraint fk_cedula foreign key (cedula) references clientes (cedula) 
	); 

	create table mecanicos(
	 numero_empleado  INT primary key , 
	 nombre VARCHAR (100) , 
	 nivel_tecnico  VARCHAR (100) , 
	 trabajo_orden_servicio  INT  , 
	 horas_dedicadas  TIME , 
	 -- llaves 
	 placa VARCHAR (8) , 
	 -- FK 
	 constraint fk_placa foreign key (placa) references vehiculos (placa) 
	); 

	create table ordenes_servicios(
	  id_ordenes_servicios  INT primary key , 
	  fecha_ingreso timestamp default current_timestamp , 
	  diagnostico_inicial  VARCHAR (100) , 
	  presupuesto  INT , 

	  -- llaves 
	   placa VARCHAR (8) , 
	   codigo INT  , 
	   -- FK 
	   constraint fk_placa_ordenes_servicios foreign key (placa) references vehiculos (placa) , 
	   constraint fk_codigo foreign key (codigo) references repuestos (codigo) 
	); 
    
    
-- Prodedimientos almacenados Clientes 

-- Crear
delimiter //
create procedure sp_agregar_clientes(
	in _cedula varchar(100) , 
    in _nombre varchar(100) ,
    in _direccion text )
begin
    insert into clientes(cedula, nombre, direccion) values
    (_cedula, _nombre, _direccion) ;
end //
delimiter ; 

-- Listar 
delimiter //
create procedure sp_listar_clientes()
begin 
	select C.cedula, C.nombre, C.direccion, V.placa, V.marca, 
    V.modelo, V.color
    from clientes C 
    inner join vehiculos V 
    on C.cedula = V.cedula ; 
end // 
delimiter ; 

-- Buscar 
delimiter //
create procedure sp_buscar_clientes(in _cedula varchar(100))
begin
	select C.cedula, C.nombre, C.direccion, V.placa, V.marca , 
    V.modelo, V.color
    from clientes C 
    inner join vehiculos V 
    on C.cedula = V.cedula 
    where cedula = _cedula ; 
end //
delimiter ; 

-- Actualizar 
delimiter // 
create procedure sp_actualizar_clientes(
	in _cedula varchar(100) , 
    in _nombre varchar(100) ,
    in _direccion text )
begin 
update clientes 
set nombre = _nombre , direccion = _direccion 
where cedula = _cedula ; 
end //
delimiter ;  

-- Eliminar 
delimiter //
create procedure sp_eliminar_clientes(in _cedula varchar(100))
begin 
	delete from clientes where cedula = _cedula ; 
end //
delimiter ; 

-- Prodedimientos almacenados Repuestos 

-- Crear
delimiter //
create procedure sp_agregar_repuestos(
	in _codigo int , 
    in _nombre varchar(100) ,
    in _precio_unitario int , 
    in _cantidad_utilizada int )
begin
    insert into repuestos(codigo, nombre, precio_unitario, cantidad_utilizada) values
    ( _codigo, _nombre, _precio_unitario, _cantidad_utilizada) ;
end //
delimiter ; 

-- Listar
delimiter //
create procedure sp_listar_repuestos()
begin 
	select R.codigo, R.nombre, R.precio_unitario, R.cantidad_utilizada ,  
    OS.id_ordenes_servicios, OS.fecha_ingreso, OS.diagnostico_inicial, OS.presupuesto
    from repuestos R 
    inner join ordenes_servicios OS 
    on R.codigo = OS.codigo ; 
end // 
delimiter ; 

-- Buscar 
delimiter //
create procedure sp_buscar_repuestos(in _codigo int)
begin
	select R.codigo, R.nombre, R.precio_unitario, R.cantidad_utilizada ,
    OS.id_ordenes_servicios, OS.fecha_ingreso, OS.diagnostico_inicial, OS.presupuesto
    from repuestos R
    inner join ordenes_servicios OS
    on R.codigo = OS.codigo
    where codigo = _codigo ;
end //
delimiter ;

-- Actualizar 
delimiter //
create procedure sp_actualizar_repuestos(
	in _codigo int ,
    in _nombre varchar(100) ,
    in _precio_unitario int ,	
    in _cantidad_utilizada int )
begin 
update repuestos 
set nombre = _nombre, precio_unitario = _precio_unitario, 
cantidad_utilizada = _cantidad_utilizada 
where codigo = _codigo ; 
end //
delimiter ; 

-- Eliminar 
delimiter //
create procedure sp_eliminar_repuestos(in _codigo int)
begin 
	delete from repuestos where codigo = _codigo ; 
end //
delimiter ; 

-- Prodedimientos almacenados Vehiculos 

-- Crear 
delimiter //
create procedure sp_agregar_vehiculos(
	in _placa  VARCHAR(8),
    in _marca  VARCHAR(20),
    in _modelo VARCHAR(20),
    in _color  VARCHAR(20),
    in _cedula VARCHAR(100))
begin 
insert into vehiculos(placa, marca, modelo, color, cedula) values 
(_placa, _marca, _modelo, _color, _cedula);
end //
delimiter ; 

-- Listar 
delimiter //
create procedure sp_listar_vehiculos()
begin 
select  V.placa, V.marca , V.modelo, V.color, C.nombre, C.direccion
from vehiculos V 
inner join clientes C 
on V.cedula = C.cedula ; 
end //
delimiter ; 

-- Buscar
delimiter //
create procedure sp_buscar_vehiculos(in _placa varchar(8))
begin 
    select V.placa, V.marca, V.modelo, V.color, C.nombre , C.direccion 
    from vehiculos V
    inner join clientes C
    on V.cedula = C.cedula  
    where V.placa = _placa ; 
end //
delimiter ; 

-- Actualizar 
delimiter //
create procedure sp_actualizar_vehiculos(
	in _placa  VARCHAR(8),
    in _marca  VARCHAR(20),
    in _modelo VARCHAR(20),
    in _color  VARCHAR(20),
    in _cedula VARCHAR(100))
begin 
update vehiculos 
set marca = _marca, modelo = _modelo, color = _color, cedula = _cedula
where placa = _placa ; 
end //
delimiter ; 

-- Eliminar 
delimiter //
create procedure sp_eliminar_vehiculos(in _placa varchar(8))
begin 
	delete from vehiculos where placa = _placa ; 
end //
delimiter ; 

-- procedimientos almacenados Mecanicos 

--  Crear 
delimiter //
create procedure sp_agregar_mecanicos(
	in _numero_empleado int ,
    in _nombre varchar(100) , 
    in _nivel_tecnico varchar(100) ,
    in _trabajo_orden_servicio int,
    in _horas_dedicadas        time,
    in _placa varchar(100))
begin 
insert into mecanicos(numero_empleado, nombre, nivel_tecnico, trabajo_orden_servicio, horas_dedicadas, placa) values 
(_numero_empleado, _nombre, _nivel_tecnico, _trabajo_orden_servicio, _horas_dedicadas, _placa);
end //
delimiter ; 

-- Listar 
delimiter //
create procedure sp_listar_mecanicos()
begin
	select M.numero_empleado, M.nombre, M.nivel_tecnico,
    M.trabajo_orden_servicio, M.horas_dedicadas, V.placa, V.marca, V.modelo, V.color, C.nombre 
	from mecanicos M 
    inner join vehiculos V 
    on M.placa = V.placa
    inner join clientes C 
    on V.cedula = C.cedula ; 
end //
delimiter ; 

-- Buscar 
delimiter //
create procedure sp_buscar_mecanicos(in _numero_empleado int)
begin 
	select M.numero_empleado, M.nombre, M.nivel_tecnico,
    M.trabajo_orden_servicio, M.horas_dedicadas, V.placa, V.marca, V.modelo,V.color, C.nombre
    from mecanicos M 
    inner join vehiculos V 
    on M.placa = V.placa 
    inner join clientes C 
    on V.cedula = C.cedula 
    where M.numero_empleado = _numero_empleado ; 
end //
delimiter ; 

-- ACTUALIZAR
delimiter //
create procedure sp_actualizar_mecanicos(
	in _numero_empleado int ,
    in _nombre varchar(100) ,
    in _nivel_tecnico varchar(100) ,        
    in _trabajo_orden_servicio int ,
    in _horas_dedicadas time ,
    in _placa varchar(8))
begin
update mecanicos
set nombre = _nombre, nivel_tecnico = _nivel_tecnico,
    trabajo_orden_servicio = _trabajo_orden_servicio,
    horas_dedicadas = _horas_dedicadas, placa = _placa
where numero_empleado = _numero_empleado;
end //
delimiter ;

-- ELIMINAR
delimiter //
create procedure sp_eliminar_mecanicos(in _numero_empleado int)
begin
	delete from mecanicos where numero_empleado = _numero_empleado;
end //
delimiter ;

-- procedimientos almacenados Ordenes_servicios 

-- Crear 
delimiter //
create procedure sp_agregar_ordenes_servicios(
	in _id_ordenes_servicios int ,
    in _fecha_ingreso timestamp ,
    in _diagnostico_inicial varchar(100) ,
    in _presupuesto int ,
    in _placa varchar (8) ,
    in _codigo int) 
begin 
	insert into ordenes_servicios(id_ordenes_servicios, fecha_ingreso, diagnostico_inicial, presupuesto, placa, codigo) values 
    (_id_ordenes_servicios, _fecha_ingreso, _diagnostico_inicial, _presupuesto, _placa, _codigo);
end //
delimiter ; 

-- Listar 
delimiter //
create procedure sp_listar_ordenes_servicios()
begin
	select OS.id_ordenes_servicios, OS.fecha_ingreso, OS.diagnostico_inicial, OS.presupuesto,
    V.placa, V.marca, V.modelo, V.color, R.nombre,  R.precio_unitario, R.cantidad_utilizada 
    from ordenes_servicios OS
    inner join vehiculos V
    on OS.placa = V.placa
    inner join repuestos R
    on OS.codigo = R.codigo;
end //
delimiter ;

-- Buscar 
delimiter //
create procedure sp_buscar_ordenes_servicios(in _id_ordenes_servicios int) 
begin 
	select OS.id_ordenes_servicios, OS.fecha_ingreso, OS.diagnostico_inicial, OS.presupuesto,
    V.placa, V.marca, V.modelo, V.color, R.nombre,  R.precio_unitario, R.cantidad_utilizada 
    from ordenes_servicios OS 
    inner join vehiculos V 
    on OS.placa = V.placa 
    inner join repuestos R 
    on OS.codigo = R.codigo 
    where id_ordenes_servicios = _id_ordenes_servicios ; 
end //
delimiter ; 

-- Actualizar 
delimiter //
create procedure sp_actualizar_ordenes_servicios(
	in _id_ordenes_servicios int ,
    in _fecha_ingreso timestamp ,
    in _diagnostico_inicial varchar(100) ,
    in _presupuesto int ,
    in _placa varchar (8) ,
    in _codigo int) 
begin
update ordenes_servicios
set fecha_ingreso = _fecha_ingreso, diagnostico_inicial = _diagnostico_inicial,
    presupuesto = _presupuesto, placa = _placa, codigo = _codigo
where id_ordenes_servicios = _id_ordenes_servicios;
end //
delimiter ;

-- Eliminar 
delimiter //
create procedure sp_eliminar_ordenes_servicios(in _id_ordenes_servicios int)
begin 
	delete from ordenes_servicios where id_ordenes_servicios = _id_ordenes_servicios ; 
end //
delimiter ; 

-- View / Clientes 
create view vw_listar_clientes as select C.cedula, C.nombre, C.direccion, V.placa, V.marca, V.modelo, V.color
	from clientes C 
	inner join vehiculos V 
	on C.cedula = V.cedula;

-- View / Repuestos
create view vw_listar_repuestos as select R.codigo, R.nombre, R.precio_unitario, R.cantidad_utilizada ,  
	OS.id_ordenes_servicios, OS.fecha_ingreso, OS.diagnostico_inicial, OS.presupuesto
	from repuestos R 
	inner join ordenes_servicios OS 
	on R.codigo = OS.codigo ; 

-- View / Vehiculos 
create view vw_listar_vehiculos as select  V.placa, V.marca , V.modelo, V.color, C.cedula, C.nombre, 	C.direccion
	from vehiculos V 
	inner join clientes C 
	on V.cedula = C.cedula ; 

-- View / Mecanicos 
create view vw_listar_mecanicos as select M.numero_empleado, M.nombre as nombre_mecanicos, M.nivel_tecnico,
	M.trabajo_orden_servicio, M.horas_dedicadas, V.placa, V.marca, V.modelo, V.color, C.nombre as nombre_clientes 
	from mecanicos M 
	inner join vehiculos V 
	on M.placa = V.placa 
	inner join clientes C 
	on V.cedula = C.cedula;

-- View / Ordenes_servicios 
create view vw_listar_ordenes_servicios as select OS.id_ordenes_servicios, OS.fecha_ingreso, OS.diagnostico_inicial, OS.presupuesto,
    V.placa, V.marca, V.modelo, V.color, R.nombre,  R.precio_unitario, R.cantidad_utilizada 
    from ordenes_servicios OS
    inner join vehiculos V
    on OS.placa = V.placa
    inner join repuestos R
    on OS.codigo = R.codigo;	