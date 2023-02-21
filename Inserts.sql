use store;

/* Datos a Metodos de Pagos*/
insert into dim_metodospagos (num_tarjeta, cod_seguridad) values 
( 1245908088003434, 234 ),
( 5645060118807724, 111 ),
( 8675943643029976, 345 ),
( 9745208230923480, 900 ),
( 7536537458374299, 980 ),
( 1865498651286516, 124 ),
( 1698487165374956, 337 ),
( 7843658029394658, 963 ),
( 3476721382873482, 133 ),
( 6547816548416898, 645 );

/* Datos a contactos */
insert into dim_contacto (email, telefono) values 
( 'usser123@gmail.com', 1324353254 ),
( 'osdfnser112@gmail.com', 2389472302 ),
( 'lololadfs@live.com.ar', 9024337667 ),
( 'adfsodfnz@hotmail.com', 2224299378 ),
( 'o23nsdfs@hotmail.com', 0024231235 ),
( 'plapassa2@gmail.com', 1022335005 ),
( 'sudialpa@outlook.com', 1122233345 ),
( 'laosfdj@hotmail.com', 2392834203 ),
( 'jfhdhfsij@outlook.com', 3103280832 ),
( 'oaoaoaoa1@live.com.ar', 0238423842 );

/* Datos a Usuarios */ 
insert into dim_usuarios (nombre, edad, sexo, id_metodoPago, id_contacto) values 
( 'Laura', 23, 'F', 1, 1),
( 'Lautaro', 19, 'M', 2, 2),
( 'Juan', 39, 'M', 3, 3),
( 'Nicolas', 21, 'M', 4, 4),
( 'Sofia', 20, 'F', 5, 5),
( 'Mateo', 34, 'M', 6, 6),
( 'Cecilia', 30, 'F', 7, 7),
( 'Gimena', 23, 'F', 8, 8),
( 'Cristian', 25, 'M', 9, 9),
( 'Selene', 19, 'F', 10, 10);

/* Datos a Categorias de Juegos */
insert into dim_categorias (nombre_categoria) values 
( 'Terror'),
( 'RPG'),
( 'Deporte'),
( 'Aventura'),
( 'Shooter'),
( 'Plataforma'),
( 'Peleas'),
( 'Acción'),
( 'Sigilo');

/* Datos a Juegos */
insert into dim_juegos (nombre, id_categoria) values
('Mortal Kombat 11', 7),
('Resident Evil Village', 1),
('Call of Duty MW2', 5),
('Street Fighter 5', 7),
('Mortal Kombat XL', 7),
('Outlast Trinity', 1),
('Elden Ring', 2),
('God of War', 4),
('God of War Ragnarok', 4),
('Uncharted Trilogy', 4),
('Dragon Ball Fighterz', 7),
('Battlefield 5', 5),
('Bonderlands 3', 5),
('Resident Evil 4 Remake', 1),
('Hitman', 9),
('Cuphead', 6),
('Mario Bros', 6),
('Detroit Become Human', 4);

/* Datos a tipos (Fisicos o Digitales)*/
insert into dim_tipos (tipo) values
('F'),
('D');

/* Datos a consolas */
insert into dim_consolas (nombre_consola) values
('PlayStation 5'),
('PlayStation 4'),
('PlayStation 3'),
('Xbox 360'),
('Xbox One'),
('Xbox Series S'),
('Xbox Series X'),
('Nintendo Switch');

/* Datos a Productos*/
insert into dim_productos (id_juego, id_consola, id_tipo, precio) values
( 1, 1, 2, 3500),
( 1, 1, 1, 2500),
( 2, 3, 2, 5500),
( 2, 5, 1, 6000),
( 3, 8, 1, 7500),
( 4, 5, 2, 9000),
( 5, 8, 2, 1200),
( 6, 4, 1, 2300),
( 8, 8, 1, 5000),
( 11, 7, 2, 7700),
( 13, 6, 1, 8000),
( 7, 7, 2, 6700),
( 16, 2, 1, 5000),
( 15, 2, 2, 2200),
( 12, 7, 1, 5600),
( 12, 5, 2, 4500),
( 17, 4, 1, 4000),
( 18, 2, 1, 3000);

/* Datos a Ventas*/
insert into hecho_ventas (id_usuario, id_producto) values 
(10, 18),
(1, 12),
(9, 8),
(4, 1),
(1, 7),
(7, 6),
(2, 17),
(10, 12),
(2, 2),
(5, 3),
(4, 3),
(5, 6),
(10, 15);