use store;

/* Bitácora de tabla productos*/
create trigger insert_productos
after insert on dim_productos
for each row
insert into bitacora_productos (usuario, operacion, fecha, hora) values
(system_user(), "insert", current_date(), current_time());

/* Prueba bitacora productos*/
insert into dim_productos (id_juego, id_consola, id_tipo, precio) values 
(18, 3, 1, 6000);
select * from bitacora_productos;

/* Bitácora de tabla juegos*/
create trigger insert_juegos
after insert on dim_juegos
for each row
insert into bitacora_juegos (usuario, operacion, fecha, hora) values
(system_user(), "insert", current_date(), current_time());

/* Prueba bitacora juegos*/
insert into dim_juegos (nombre, id_categoria) values
("Dragon Ball Xenoverse",1);
select * from bitacora_juegos;

/* Verfica que el producto insertado en la tabla no este repetido */
DELIMITER //
create trigger verificacionProducto
before insert on dim_productos
for each row
begin
	declare error_ord varchar (255);
	set error_ord = "Ya existe este producto";
    
	if (exists( select id_juego, id_consola, id_tipo from dim_productos where 
		id_juego =  new.id_juego and
		id_consola = new.id_consola and
		id_tipo = new.id_tipo )) 
        then
			signal sqlstate "45000"
			set message_text = error_ord;
    end if;
end;
//

/* Prueba trigger Verificacion de producto */
insert into dim_productos (id_juego, id_consola, id_tipo, precio) values
(1,1,1,3300);


/* Verfica que el juego insertado en la tabla no este repetido */
DELIMITER //
create trigger verificacionJuego
before insert on dim_juegos
for each row
begin
	declare error_ord varchar (255);
	set error_ord = "Ya existe este juego";
    
	if (exists( select nombre, id_categoria from dim_juegos where 
		nombre = new.nombre and
        id_categoria = new.id_categoria )) 
        then
			signal sqlstate "45000"
			set message_text = error_ord;
    end if;
end;
//

/* Prueba trigger Verificacion de juego */
insert into dim_juegos (nombre, id_categoria) values
("Mortal Kombat 11", 7);
