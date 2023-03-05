use store;

/* Ejercicio 1 */
/* Re-Inserciones de los Datos*/
insert into dim_usuarios (nombre, edad, sexo, id_metodoPago, id_contacto) values 
( 'Laura', 23, 'F', 1, 1),
( 'Lautaro', 19, 'M', 2, 2),
( 'Juan', 39, 'M', 3, 3),
( 'Nicolas', 21, 'M', 4, 4);

start transaction;
delete from dim_usuarios where id_usuario in (1,2,3,4);
select * from dim_usuarios;
#rollback;
#commit;


/* Ejercicio 2 */

start transaction;

insert into dim_juegos (nombre, id_categoria) values
('Overwatch 2', 5),
('Minecraft', 3),
('Apex Legends', 5),
('Fortnite', 5);
savepoint primera_insercion_juegos;

insert into dim_juegos (nombre, id_categoria) values
('Devil May Cry 2', 8),
('Dragon Ball Kakarot', 6),
('Sims 4', 1),
('Rocket League', 9);
savepoint segundo_insercion_juegos;

#release savepoint primera_insercion_juegos;