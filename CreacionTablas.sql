create schema store;
use store;

/* Tabla de Tarjetas de Credito (Usuarios) */
create table dim_metodosPagos (
id_metodoPago int not null auto_increment primary key,
num_tarjeta int not null unique,
cod_seguridad int not null
);

/* Tabla de Contacto (Usuarios) */
create table dim_contacto (
id_contacto int not null auto_increment primary key,
email varchar(45) not null,
telefono int 
);

/* Tabla de Usuarios */
create table dim_usuarios (
id_usuario int not null auto_increment primary key,
nombre varchar(45) not null,
edad int,
sexo char(1),
id_metodoPago int not null,
id_contacto int not null,
foreign key (id_metodoPago) references dim_metodosPagos(id_metodoPago)
on update cascade
on delete no action,
foreign key (id_contacto) references dim_contacto(id_contacto)
on update cascade
on delete no action
);

/* Tabla de Categorías (Juegos) */
create table dim_categorias (
id_categoria int not null auto_increment primary key,
nombre_categoria varchar(45) not null
);

/* Tabla de Juegos */
create table dim_juegos (
id_juego int not null auto_increment primary key,
nombre varchar(45) not null,
tipo varchar(45) not null,
id_categoria int not null,
foreign key (id_categoria) references dim_categorias(id_categoria)
on update cascade
on delete no action
);

/* Tabla de Consolas (Juegos) */
create table dim_consolas (
id_consola int not null auto_increment primary key,
nombre_consola varchar(45) not null
);

/* Tabla de Productos */
create table dim_productos (
id_producto int not null auto_increment primary key,
id_juego int not null,
id_consola int not null,
foreign key (id_juego) references dim_juegos(id_juego)
on update cascade
on delete cascade,
foreign key (id_consola) references dim_consolas(id_consola)
on update cascade
on delete cascade
);

/* Tabla de Ventas */
create table hecho_ventas (
id_venta int not null auto_increment primary key,
id_usuario int not null,
id_producto int not null,
foreign key (id_usuario) references dim_usuarios(id_usuario)
on update cascade
on delete no action,
foreign key (id_producto) references dim_productos(id_producto)
on update cascade
on delete no action
);


