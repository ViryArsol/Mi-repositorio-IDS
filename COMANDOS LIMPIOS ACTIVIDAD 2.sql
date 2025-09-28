///************************A C T I V I D A D   2*************************///

--Seleccionar los clientes del año 2021 en base a la fecha de la factura.
select * from factura  --REVISAR TABLA

SELECT COUNT (id_cliente)
AS cantidad_clientes_2021
  from factura
  where fecha >= '2021-01-01'
  and fecha < '2022-01-01';

select id_cliente from factura
  where fecha >= '2021-01-01'
  and fecha < '2022-01-01'

--Seleccionar los clientes de 2022 (hasta el momento) en base a la fecha de la factura. 

SELECT COUNT (id_cliente)
AS cantidad_clientes_2021
  from factura
  where fecha >= '2022-01-01'

select id_cliente from factura
  where fecha >= '2022-01-01'

--Seleccionar los clientes de diciembre de 2021

SELECT COUNT (id_cliente)
AS cantidad_clientes_2021
  from factura
  where fecha >= '2021-12-01'
     and fecha < '2022-01-01'

select id_cliente from factura
where fecha >= '2021-12-01'
and fecha < '2022-01-01'

--¿Qué compras han realizado los siguientes clientes?:
select * from cliente  --REVISAR TABLA
select * from detalle
select * from factura
select * from producto

      -- Valentina Anastasia Huerta Corral
select f.id_factura, d.id_detalle, p.nombre_producto, c.nombre_cliente, c.id_cliente
       from factura f
	   inner join detalle d on f.id_detalle = d.id_detalle
	   inner join producto p on d.id_producto = p.id_producto
	   inner join cliente c on c.id_cliente = c.id_cliente
	              where c.id_cliente = 2

     -- Zayra Manuela Gómez López 
select f.id_factura, d.id_detalle, p.nombre_producto, c.nombre_cliente, c.id_cliente
       from factura f
	   inner join detalle d on f.id_detalle = d.id_detalle
	   inner join producto p on d.id_producto = p.id_producto
	   inner join cliente c on c.id_cliente = c.id_cliente
	              where c.id_cliente = 17

     -- Dante Eduardo Dolores Meza 
select f.id_factura, d.id_detalle, p.nombre_producto, c.nombre_cliente, c.id_cliente
       from factura f
	   inner join detalle d on f.id_detalle = d.id_detalle
	   inner join producto p on d.id_producto = p.id_producto
	   inner join cliente c on c.id_cliente = c.id_cliente
	              where c.id_cliente = 24

    -- Ana Maribel Cedillo Núñez  
select f.id_factura, d.id_detalle, p.nombre_producto, c.nombre_cliente, c.id_cliente
       from factura f
	   inner join detalle d on f.id_detalle = d.id_detalle
	   inner join producto p on d.id_producto = p.id_producto
	   inner join cliente c on c.id_cliente = c.id_cliente
	              where c.id_cliente = 4

    -- Rodrigo Ismael Silva Ugarte 
select f.id_factura, d.id_detalle, p.nombre_producto, c.nombre_cliente, c.id_cliente
       from factura f
	   inner join detalle d on f.id_detalle = d.id_detalle
	   inner join producto p on d.id_producto = p.id_producto
	   inner join cliente c on c.id_cliente = c.id_cliente
	   	              where c.id_cliente = 11

-- Producto que más ventas ha tenido
select * from producto  --REVISAR TABLA
select * from detalle

select d.cantidad, p.nombre_producto, p.id_producto 
   into producto_mas_vendido
       from detalle d
	  	   inner join producto p on d.id_producto = p.id_producto

select * from producto_mas_vendido --nueva tabla con los datos que requerimos

select * from producto_mas_vendido 
order by cantidad desc

-- ¿Qué producto tiene más stock?
select * from producto 
      order by stock desc

--Ordenar de la más antigua a la más reciente, las compras que ha habido
select * from factura
       order by fecha asc

--Ordenar alfabeticamente cliente
select * from cliente
    order by nombre_cliente;

--Seleccionar cuáles productos pertenecen a cada categoría:  
--falda 
select id_categoria, nombre_producto
     from producto
	 where nombre_producto like 'falda%' 

--Pantalón
select id_categoria, nombre_producto
     from producto
	 where nombre_producto like 'pantalón%'

--Chamarra
select id_categoria, nombre_producto
     from producto
	 where nombre_producto like 'chamarra%'

--Zapatos
select id_categoria, nombre_producto
     from producto
	 where nombre_producto like 'zapatos%'

--Accesorios
select id_categoria, nombre_producto
     from producto
	 where nombre_producto like 'accesorios%'

--Seleccionar los encargados de las sucursales de la tienda Akira’s Boutique
select * from Sucursales --REVISAR TABLA

select nombre_encargado 
    from Sucursales

--Seleccionar los empleados que trabajan en la sucursal de Akira’s Boutique: Constitución
select *from Empleados --REVISAR TABLA
select * from Sucursales --REVISAR TABLA

select nombre_empleado 
   from Empleados
     where ID_sucursal = 9

--¿Qué clientes son mayores de 30 años?
select nombre_cliente, fec_nac 
     from cliente
	  where fec_nac <= '1995-01-01'
