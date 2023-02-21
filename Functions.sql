use store;

/* Calcula el precio final de un producto con el porcentaje de ganancia que se ingresa */
DELIMITER //
create function `precioFinal`(precio float , porcentaje_ganancia int) returns float
deterministic
begin
declare valor_agregado float;
set valor_agregado = (precio * porcentaje_ganancia) / 100;
return precio + valor_agregado;
end;
//

select *, precioFinal(precio, 10) as precio_venta from dim_productos;

/* Genera el tipo de entrega del juego*/
DELIMITER //
create function `entrega`(idProducto int) returns varchar(20)
deterministic
begin
	declare tipo_juego int;
    set tipo_juego = (select id_tipo from dim_productos where idProducto = id_producto);
    #Si el id(tipo_juego) es 1 el juego es formato fisico (la entrega es mediante el retiro en local)
    if tipo_juego = 1 then
		return 'Retiro en Local';
	#Sino el juego es formato digital (la entrega es mediante el contacto del usuario)
	else
		return 'Por contacto';
	end if;
end; 
//

select *, entrega(id_producto) as tipo_entrega from hecho_ventas;