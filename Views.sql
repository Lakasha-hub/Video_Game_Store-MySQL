use store;

/* Juegos más vendidos */
create or replace view juegosMasVendidos as 
select
T1.id_producto,
T2.nombre,
count(T3.id_producto) as vendidos
from dim_productos T1 left join dim_juegos T2 
on T1.id_juego = T2.id_juego
left join hecho_ventas T3 
on T1.id_producto = T3.id_producto
group by id_producto order by vendidos desc;

/* Llamado de Vista juegosMasVendidos */
-- select * from juegosMasVendidos;

/* Categorías con más juegos */
create or replace view categoriasConMasJuegos as
select
T1.nombre_categoria,
count(T2.id_categoria) as total
from dim_categorias T1 right join dim_juegos T2
on T1.id_categoria = T2.id_categoria
group by T2.id_categoria order by total desc;

/* Llamado de Vista categoriasConMasJuegos */
-- select * from categoriasConMasJuegos;

/* Relación de juegos fisicos y digitales que se vendieron*/
create or replace view VentasTiposDeJuegos as
select 
T1.id_tipo,
T1.tipo,
count(T3.id_producto) as vendidos
from dim_tipos T1 left join dim_productos T2
on T1.id_tipo = T2.id_tipo
left join hecho_ventas T3
on T2.id_producto = T3.id_producto
group by id_tipo order by vendidos desc;

/* Llamado de Vista VentasTiposDeJuegos */
-- select * from VentasTiposDeJuegos;

/* Consolas con juegos más vendidos*/
create or replace view consolasConJuegosMasVendidos as
select 
T1.id_consola,
T1.nombre_consola,
count(T3.id_producto) as vendidos
from dim_consolas T1 left join dim_productos T2
on T1.id_consola = T2.id_consola
left join hecho_ventas T3
on T2.id_producto = T3.id_producto
group by id_consola order by vendidos desc;

/* Llamado de Vista consolasConJuegosMasVendidos */
-- select * from consolasConJuegosMasVendidos;

/* Usuarios que más compras realizaron */
create or replace view usuariosConMasCompras as
select 
T1.id_usuario,
T1.nombre,
count(T2.id_producto) as compras
from dim_usuarios T1 left join hecho_ventas T2 
on T1.id_usuario = T2.id_usuario
group by id_usuario order by compras desc;

/* Llamado de Vista usuariosConMasCompras; */
-- select * from usuariosConMasCompras;