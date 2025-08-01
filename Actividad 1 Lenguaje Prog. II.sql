/* Creación de la base de datos COPPEL
Autor: Viridiana Armenta Solano
Materia: Lenguaje de Programación II*/

create database COPPEL --Creamos la base de datos
use COPPEL  --Usamos la base para poder agregar datos

/*Creación de tablas*/

create table empleado (ID_empleado int primary key , nombre_empleado varchar (50) not null, apellido_paterno varchar (50),
apellido_materno varchar (50), fecha_nacimiento date, RFC_empleado char, ID_centro int unique, 
ID_puesto varchar (50) unique, directivo bit unique);

select * from empleado --Se selecciona para poder visualizar la tabla

create table puesto (ID_puesto int primary key, nombre_puesto varchar (50), descripcion_puesto varchar (100))

select * from puesto

create table centro_trabajo (ID_centro int, nombre_centro varchar (50), region varchar (50), ciudad varchar (50));

select * from centro_trabajo

create table directivos (ID_empleado int, ID_centro int, prestaciones varchar (100)); 

select * from directivos

insert into empleado (ID_empleado, nombre_empleado, apellido_paterno, apellido_materno, fecha_nacimiento, ID_centro,
ID_puesto, directivo) values (90222209, 'Viridiana', 'Armenta', 'Solano', '1998-04-18', 93202, 4578, 0)

select * from empleado

/*Generamos una cadena para generar el RFC de acuerdo a los valores ingresados*/
update empleado
set RFC_empleado =     concat (
    upper(substring( nombre_empleado, 1, 1)),
    upper(substring(nombre_empleado, charindex(' ', nombre_empleado) +1, 1)),
    upper(substring(apellido_paterno, 1, 1)),
    upper(substring(apellido_materno, 1, 1)),
    format (fecha_nacimiento, 'yymmdd')
       )
    where ID_empleado = 90222209;


   alter table empleado    -- tuve que cambiar el tipo de dato del RFC porque tenía char
   alter column RFC_empleado varchar (100);   -- y limitaba a la cadena que se queria generar 

   --Ingresamos fila 2

   insert into empleado (ID_empleado, nombre_empleado, apellido_paterno, apellido_materno, fecha_nacimiento, ID_centro,
ID_puesto, directivo) values (93546987, 'Miguel', 'Manjarrez', 'Lopez', '1995-04-01', 94502, 6958, 1)

update empleado
set RFC_empleado =     concat (
    upper(substring( nombre_empleado, 1, 1)),
    upper(substring(nombre_empleado, charindex(' ', nombre_empleado) +1, 1)),
    upper(substring(apellido_paterno, 1, 1)),
    upper(substring(apellido_materno, 1, 1)),
    format (fecha_nacimiento, 'yymmdd')
    )
    where ID_empleado = 93546987;

    --Ingresamos fila 3

    insert into empleado (ID_empleado, nombre_empleado, apellido_paterno, apellido_materno, fecha_nacimiento, ID_centro,
ID_puesto, directivo) values (56986987, 'Ana', 'Patron', 'Manzano', '1990-12-21', 82005, 5938, 0)

update empleado
set RFC_empleado =     concat (
    upper(substring( nombre_empleado, 1, 1)),
    upper(substring(nombre_empleado, charindex(' ', nombre_empleado) +1, 1)),
    upper(substring(apellido_paterno, 1, 1)),
    upper(substring(apellido_materno, 1, 1)),
    format (fecha_nacimiento, 'yymmdd')
    )
    where ID_empleado = 56986987;

      --Ingresamos fila 4

       insert into empleado (ID_empleado, nombre_empleado, apellido_paterno, apellido_materno, fecha_nacimiento, ID_centro,
ID_puesto, directivo) values (96964824, 'Evelyn', 'Castro', 'Rodriguez', '1987-06-16', 52367, 4620, 1)

update empleado
set RFC_empleado =     concat (
    upper(substring( nombre_empleado, 1, 1)),
    upper(substring(nombre_empleado, charindex(' ', nombre_empleado) +1, 1)),
    upper(substring(apellido_paterno, 1, 1)),
    upper(substring(apellido_materno, 1, 1)),
    format (fecha_nacimiento, 'yymmdd')
    )
    where ID_empleado = 96964824;

    --Ingresamos fila 5

    insert into empleado (ID_empleado, nombre_empleado, apellido_paterno, apellido_materno, fecha_nacimiento, ID_centro,
ID_puesto, directivo) values (90764514, 'Alejandro', 'Baez', 'Monarrez', '2002-11-08', 40478, 3022, 0)

update empleado
set RFC_empleado =     concat (
    upper(substring( nombre_empleado, 1, 1)),
    upper(substring(nombre_empleado, charindex(' ', nombre_empleado) +1, 1)),
    upper(substring(apellido_paterno, 1, 1)),
    upper(substring(apellido_materno, 1, 1)),
    format (fecha_nacimiento, 'yymmdd')
    )
    where ID_empleado = 90764514;

    /*Agregar datos  a la tabla puesto*/

    insert into puesto (ID_puesto)  --Aqui jalamos la info que ya existe en
    select ID_puesto                --tabla empleado (herencia) 
    from empleado;                  --solo agregamos valores de la columa ID puesto


    /*Como ya llenamos una columna con datos, ahora debemos agregar los valores de las 
    otras columnas, por eso el lugar de insert, vamos a usar "update", este debe agregarse por filas,
    similar a lo que hicimos con el RFC*/

    /*Agregamos datos por fila*/

    update puesto
    set nombre_puesto = 'Lider de proyecto', 
    descripcion_puesto = 'solicitud y seguimientos a distintos formatos para la solicitud de AP'
    Where ID_puesto = 4578;

    update puesto
    set nombre_puesto = 'Gerente de tienda',
    descripcion_puesto = 'Liderar un equipo para lograr los objetivos de ventas y clientes nuevos'
    where ID_puesto = 6958;

    update puesto
    set nombre_puesto = 'Cajero', 
    descripcion_puesto = 'Atender las compras y abonos de los clientes'
    where ID_puesto = 3022;

    update puesto
    set nombre_puesto = 'Ejecutivo bancario',
    descripcion_puesto = 'Realizacion de pagos, depositos, retiros, entre otros'
    where ID_puesto = 5938;
    
    update puesto
    set nombre_puesto = 'Coordinador de mejora continua',
    descripcion_puesto = 'Revision de proyectos para la mejora continua de los procesos staff'
    where ID_puesto = 4620;


     /*Agregar datos  a la tabla centro de trabajo*/

    insert into centro_trabajo(ID_centro)  --Aqui jalamos la info que ya existe en
    select ID_centro                       --tabla empleado (herencia) 
    from empleado;                         --solo agregamos valores de la columa ID centro

    /*Agregamos datos por fila*/

    update centro_trabajo
    set nombre_centro = 'mesa de control de inmuebles', 
    region = 'CLCN',
    ciudad = 'Culiacan'
    Where ID_centro = 93202;

    update centro_trabajo
    set nombre_centro = 'tiendas', 
    region = 'TCMC',
    ciudad = 'Ecatepec'
    Where ID_centro = 94502;

    update centro_trabajo
    set nombre_centro = 'tienda',
    region = 'MXLI',
    ciudad = 'Tijuana'
    Where ID_centro = 40478;

    update centro_trabajo
    set nombre_centro = 'Mejora continua',
    region = 'CLCN',
    ciudad = 'Culiacan'
    Where ID_centro = 52367;

     update centro_trabajo
    set nombre_centro = 'Bancoppel',
    region = 'MRDA',
    ciudad = 'Yucatan'
    Where ID_centro = 82005;


     /*Agregar datos  a la tabla directivos*/

          insert into directivos (ID_empleado, ID_centro, directivo)  
    select ID_empleado, ID_centro, directivo                              
    from empleado                                
    where ID_empleado = 96964824;

      insert into directivos (ID_empleado, ID_centro,directivo)  
    select ID_empleado, ID_centro, directivo                               
    from empleado                               
    where ID_empleado = 93546987;

     
    /*Se agregara una solumna de diretivo a tabla de directivos*/

    alter table directivos add directivo bit;

    /*ahora si agregamos la columna prestaciones*/

         update directivos
    set prestaciones = 'vales de gasolina semanales'
    Where directivo = 1;



 
  

    
    

   
