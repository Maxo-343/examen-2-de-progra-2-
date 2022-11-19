Create database Venta_Comercio

use Venta_Comercio

create table Cajero
(
	Codigo int identity (1,1),
	Nombre  nvarchar (100) not null,
	constraint Pk_Codigo Primary key (Codigo),
)

insert into Cajero values ('Keilor Montero')
Insert into Cajero values ('Carlos Sandobal')

create table Productos
(
	ID int identity (1,1),
	Nombre nvarchar (100) not null,
	Precio float,
	constraint Pk_ID Primary key (ID),
)

insert into Productos values ('Coca Cola', '1000')
insert into Productos values ('Fanta', '950')
insert into Productos values ('Pepsi', '1250')

select * from productos
update Productos set precio='950'
  where nombre='Sprite'; 

create table Maqui_Registradoras
(
	Codigo int identity (1,1),
	Piso int,
	constraint PkCodigo Primary key (Codigo),
)

insert into Maqui_Registradoras values ('3')
insert into Maqui_Registradoras values ('4')

Create table Ventas
(
	Codigo_Venta int identity (1,1),
	Fecha datetime,
	Cajero_Compra int,
	Maquina int,
	Producto int,
	Constraint Pk_CodigoVenta Primary key (Codigo_Venta),
	constraint Fk_Cajero_Compra Foreign key(Cajero_Compra) References Cajero (Codigo),
	constraint Fk_Maquina Foreign key(Maquina) References Maqui_Registradoras (Codigo),
	constraint Fk_Producto Foreign key(Producto) References Productos (ID),
)

Insert into Ventas values (1,'2022-11-18')

select c.nombre, v.cajero_compra, v.Maquina
from Cajero c 
inner join ventas v on Codigo= Cajero_Compra;
