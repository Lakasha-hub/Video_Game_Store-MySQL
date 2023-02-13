use store;

/* Procedimiento que ordena los precios de forma ascendente o descendente*/
DELIMITER //
create procedure ordenamiento_tablas(in columna_tabla varchar(20), in ordenamiento varchar(4))
begin
declare sentencia varchar(255);
declare error_ord varchar (255);
set error_ord = "No existe ese tipo de ordenamiento";

if ordenamiento = "desc" or ordenamiento = "asc" then
	set @sentencia = concat("select * from dim_productos order by ", columna_tabla, " ", ordenamiento);
	prepare ejecutar from @sentencia;
	execute ejecutar;
	deallocate prepare ejecutar;
else
	signal sqlstate "45000"
    set message_text = error_ord;
end if;
end;
//

call ordenamiento_tablas("precio", "desc");

/*Calculo de ganancias sobre los juegos vendidos segun el porcentaje */
DELIMITER //
create procedure calculo_ganancias(in porcentaje int)
begin
select
sum(precioFinal(precio, porcentaje)) - sum(precio) as ganancias
from dim_productos T1
right join hecho_ventas T2
on T1.id_producto = T2.id_producto;
end;
//

call calculo_ganancias(30)