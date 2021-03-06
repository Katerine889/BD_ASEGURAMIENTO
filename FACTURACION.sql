USE [db_cheponcito]
GO
/****** Object:  Table [dbo].[categoria]    Script Date: 15/10/2017 2:32:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categoria](
	[idCategoria] [int] IDENTITY(1,1) NOT NULL,
	[descripcionCategoria] [nvarchar](50) NULL,
	[comentarioCategoria] [nvarchar](50) NULL,
	[estadoCategoria] [nvarchar](50) NULL,
 CONSTRAINT [pk_categoria] PRIMARY KEY CLUSTERED 
(
	[idCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[cliente]    Script Date: 15/10/2017 2:32:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cliente](
	[idCliente] [int] IDENTITY(1,1) NOT NULL,
	[nitCliente] [nvarchar](10) NULL,
	[nombresCliente] [nvarchar](50) NULL,
	[apellidosCliente] [nvarchar](50) NULL,
	[direccionCliente] [nvarchar](100) NULL,
 CONSTRAINT [pk_cliente] PRIMARY KEY CLUSTERED 
(
	[idCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[compra]    Script Date: 15/10/2017 2:32:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[compra](
	[idCompra] [int] IDENTITY(1,1) NOT NULL,
	[idProveedor] [int] NULL,
	[noFactura] [nvarchar](10) NULL,
	[serieFactura] [nvarchar](3) NULL,
	[fechaCompra] [date] NULL,
 CONSTRAINT [pk_compra] PRIMARY KEY CLUSTERED 
(
	[idCompra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[detalleCompra]    Script Date: 15/10/2017 2:32:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[detalleCompra](
	[idDetalleCompra] [int] IDENTITY(1,1) NOT NULL,
	[idCompra] [int] NULL,
	[idProducto] [int] NULL,
	[cantidadCompra] [int] NULL,
	[precioCompra] [decimal](18, 2) NULL,
 CONSTRAINT [pk_detalleCompra] PRIMARY KEY CLUSTERED 
(
	[idDetalleCompra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[detalleVenta]    Script Date: 15/10/2017 2:32:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[detalleVenta](
	[idDetalle] [int] IDENTITY(1,1) NOT NULL,
	[idVenta] [int] NULL,
	[idProducto] [int] NULL,
	[cantidadVenta] [int] NULL,
	[precioVenta] [decimal](18, 2) NULL,
 CONSTRAINT [pk_detalle] PRIMARY KEY CLUSTERED 
(
	[idDetalle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[devolucion]    Script Date: 15/10/2017 2:32:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[devolucion](
	[idDevolucion] [int] IDENTITY(1,1) NOT NULL,
	[idVenta] [int] NULL,
	[fechaDevolucion] [date] NULL,
 CONSTRAINT [pk_devolucion] PRIMARY KEY CLUSTERED 
(
	[idDevolucion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[producto]    Script Date: 15/10/2017 2:32:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[producto](
	[idProducto] [int] IDENTITY(1,1) NOT NULL,
	[idCategoria] [int] NULL,
	[idProveedor] [int] NULL,
	[descripcion] [nvarchar](50) NULL,
	[fechaVencimiento] [date] NULL,
	[stock] [int] NULL,
	[precioCosto] [decimal](18, 2) NULL,
	[precioVenta] [decimal](18, 2) NULL,
	[estadoProducto] [nvarchar](50) NULL,
 CONSTRAINT [pk_producto] PRIMARY KEY CLUSTERED 
(
	[idProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[promocion]    Script Date: 15/10/2017 2:32:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[promocion](
	[idPromocion] [int] IDENTITY(1,1) NOT NULL,
	[tipoPromocion] [nvarchar](50) NULL,
 CONSTRAINT [pk_promocion] PRIMARY KEY CLUSTERED 
(
	[idPromocion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[proveedor]    Script Date: 15/10/2017 2:32:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[proveedor](
	[idProveedor] [int] IDENTITY(1,1) NOT NULL,
	[nitProveedor] [nvarchar](10) NULL,
	[nombreProveedor] [nvarchar](50) NULL,
	[direccionProveedor] [nvarchar](100) NULL,
	[emailProveedor] [nvarchar](50) NULL,
	[telefonoProveedor] [nvarchar](9) NULL,
	[estadoProveedor] [nvarchar](50) NULL,
 CONSTRAINT [pk_proveedor] PRIMARY KEY CLUSTERED 
(
	[idProveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[regCaja]    Script Date: 15/10/2017 2:32:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[regCaja](
	[idRegistro] [int] IDENTITY(1,1) NOT NULL,
	[idUsuario] [int] NULL,
	[montoApertura] [decimal](18, 2) NULL,
	[montoCierre] [decimal](18, 2) NULL,
	[fechaRegistro] [date] NULL,
	[estadoCaja] [nvarchar](50) NULL,
 CONSTRAINT [pk_regCaja] PRIMARY KEY CLUSTERED 
(
	[idRegistro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tmpDetVenta]    Script Date: 15/10/2017 2:32:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmpDetVenta](
	[idProducto] [int] NULL,
	[descripcion] [nvarchar](50) NULL,
	[cantidadVenta] [int] NULL,
	[precioVenta] [decimal](18, 2) NULL,
	[subTotal] [decimal](18, 2) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[usuario]    Script Date: 15/10/2017 2:32:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuario](
	[idUsuario] [int] IDENTITY(1,1) NOT NULL,
	[nickname] [nvarchar](50) NULL,
	[passUsuario] [nvarchar](50) NULL,
	[rolUsuario] [nvarchar](50) NULL,
	[estadoUsuario] [nvarchar](50) NULL,
 CONSTRAINT [pk_usuario] PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[venta]    Script Date: 15/10/2017 2:32:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[venta](
	[idVenta] [int] IDENTITY(1,1) NOT NULL,
	[idCliente] [int] NULL,
	[idUsuario] [int] NULL,
	[idPromo] [int] NULL,
	[fechaVenta] [date] NULL,
	[tipo_venta] [nvarchar](50) NULL,
	[estadoVenta] [nvarchar](50) NULL,
 CONSTRAINT [pk_venta] PRIMARY KEY CLUSTERED 
(
	[idVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[compra] ADD  DEFAULT (getdate()) FOR [fechaCompra]
GO
ALTER TABLE [dbo].[devolucion] ADD  DEFAULT (getdate()) FOR [fechaDevolucion]
GO
ALTER TABLE [dbo].[regCaja] ADD  DEFAULT (getdate()) FOR [fechaRegistro]
GO
ALTER TABLE [dbo].[venta] ADD  DEFAULT (getdate()) FOR [fechaVenta]
GO
ALTER TABLE [dbo].[compra]  WITH CHECK ADD FOREIGN KEY([idProveedor])
REFERENCES [dbo].[proveedor] ([idProveedor])
GO
ALTER TABLE [dbo].[detalleCompra]  WITH CHECK ADD FOREIGN KEY([idCompra])
REFERENCES [dbo].[compra] ([idCompra])
GO
ALTER TABLE [dbo].[detalleCompra]  WITH CHECK ADD FOREIGN KEY([idProducto])
REFERENCES [dbo].[producto] ([idProducto])
GO
ALTER TABLE [dbo].[detalleVenta]  WITH CHECK ADD FOREIGN KEY([idProducto])
REFERENCES [dbo].[producto] ([idProducto])
GO
ALTER TABLE [dbo].[detalleVenta]  WITH CHECK ADD FOREIGN KEY([idVenta])
REFERENCES [dbo].[venta] ([idVenta])
GO
ALTER TABLE [dbo].[devolucion]  WITH CHECK ADD FOREIGN KEY([idVenta])
REFERENCES [dbo].[venta] ([idVenta])
GO
ALTER TABLE [dbo].[producto]  WITH CHECK ADD FOREIGN KEY([idCategoria])
REFERENCES [dbo].[categoria] ([idCategoria])
GO
ALTER TABLE [dbo].[producto]  WITH CHECK ADD FOREIGN KEY([idProveedor])
REFERENCES [dbo].[proveedor] ([idProveedor])
GO
ALTER TABLE [dbo].[regCaja]  WITH CHECK ADD FOREIGN KEY([idUsuario])
REFERENCES [dbo].[usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[venta]  WITH CHECK ADD FOREIGN KEY([idCliente])
REFERENCES [dbo].[cliente] ([idCliente])
GO
ALTER TABLE [dbo].[venta]  WITH CHECK ADD FOREIGN KEY([idPromo])
REFERENCES [dbo].[promocion] ([idPromocion])
GO
ALTER TABLE [dbo].[venta]  WITH CHECK ADD FOREIGN KEY([idUsuario])
REFERENCES [dbo].[usuario] ([idUsuario])
GO
/****** Object:  StoredProcedure [dbo].[buscarProducto]    Script Date: 15/10/2017 2:32:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[buscarProducto]
	@nombreP nvarchar(50)
as
	select idProducto, descripcion, stock, precioVenta from producto where descripcion like '%' + @nombreP + '%'
	and estadoProducto = 'activo'

GO
/****** Object:  StoredProcedure [dbo].[buscarProveedor]    Script Date: 15/10/2017 2:32:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[buscarProveedor]
	@nit nvarchar(10)
as
	select * from proveedor where nitProveedor = @nit

GO
/****** Object:  StoredProcedure [dbo].[eliminartmpDetVenta]    Script Date: 15/10/2017 2:32:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[eliminartmpDetVenta]
	@idProducto int
as
	delete from tmpDetVenta 
	where idProducto = @idProducto

GO
/****** Object:  StoredProcedure [dbo].[eliminartmpDetVentaTodo]    Script Date: 15/10/2017 2:32:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[eliminartmpDetVentaTodo]
as
	delete from tmpDetVenta

GO
/****** Object:  StoredProcedure [dbo].[insertar_promocion]    Script Date: 15/10/2017 2:32:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[insertar_promocion]
	@promocion nvarchar(50)
as
	insert into promocion values (@promocion)

GO
/****** Object:  StoredProcedure [dbo].[insertarCategoria]    Script Date: 15/10/2017 2:32:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[insertarCategoria]
	@nombreCategoria nvarchar(50),
	@comentarioCategoria nvarchar(50),
	@estadoCategoria nvarchar(50)
as
	insert into categoria values (@nombreCategoria, @comentarioCategoria, @estadoCategoria)

GO
/****** Object:  StoredProcedure [dbo].[insertarCliente]    Script Date: 15/10/2017 2:32:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[insertarCliente]
	@nit nvarchar(10),
	@nombresCliente nvarchar(50),
	@apellidosCliente nvarchar(50),
	@direccion nvarchar(100)
as
	insert into cliente values (@nit,@nombresCliente,@apellidosCliente,@direccion)

GO
/****** Object:  StoredProcedure [dbo].[insertarCompra]    Script Date: 15/10/2017 2:32:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[insertarCompra]
	@idProveedor int,
	@noFactura nvarchar(10),
	@serieFactura nvarchar(3)
as
	insert into compra values (@idProveedor, @noFactura, @serieFactura, getdate())

	select @@identity as idCompra

GO
/****** Object:  StoredProcedure [dbo].[insertarDetalleCompra]    Script Date: 15/10/2017 2:32:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[insertarDetalleCompra]
	@idCompra int,
	@idProducto int,
	@cantidadCompra int,
	@precioCompra int
as
	insert into detalleCompra values (@idCompra, @idProducto, @cantidadCompra, @precioCompra)
	update producto set stock = (stock + @cantidadCompra) where idProducto = @idProducto

GO
/****** Object:  StoredProcedure [dbo].[insertarDetalleVenta]    Script Date: 15/10/2017 2:32:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[insertarDetalleVenta]
	@idVenta int,
	@idProducto int,
	@cantidadVenta int,
	@precioVenta int
as
	insert into detalleVenta values ( @idVenta, @idProducto, @cantidadVenta, @precioVenta)

	update producto set stock = (stock - @cantidadVenta) where idProducto = @idProducto

GO
/****** Object:  StoredProcedure [dbo].[insertarDevolucion]    Script Date: 15/10/2017 2:32:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[insertarDevolucion]
	@idVenta int
as
	insert into devolucion values (@idventa, getdate())

GO
/****** Object:  StoredProcedure [dbo].[insertarProducto]    Script Date: 15/10/2017 2:32:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[insertarProducto]
	@idCategoria int,
	@idProveedor int,
	@descripcion nvarchar(50),
	@fechaVencimiento date,
	@stock int,
	@precioCosto decimal(18,2),
	@precioVenta decimal(18,2),
	@estado nvarchar(50)
as
	insert into producto values (@idCategoria,@idProveedor,@descripcion,@fechaVencimiento,@stock,@precioCosto,@precioVenta,@estado)

GO
/****** Object:  StoredProcedure [dbo].[insertarProveedor]    Script Date: 15/10/2017 2:32:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[insertarProveedor]
	@nit nvarchar(10),
	@nombre nvarchar(50),
	@direccion nvarchar(100),
	@telefono nvarchar(10),
	@email nvarchar(50),
	@estado nvarchar(50)
as
	insert into proveedor values (@nit, @nombre, @direccion, @email, @telefono, @estado)

GO
/****** Object:  StoredProcedure [dbo].[insertarRegistroCaja]    Script Date: 15/10/2017 2:32:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[insertarRegistroCaja]
	@idUsuario int,
	@montoApertura decimal(18,2),
	@montoCierre decimal(18,2),
	@estadoCaja nvarchar(50)
as
	insert into regCaja values (@idUsuario, @montoApertura, @montoCierre, GETDATE(), @estadoCaja)

GO
/****** Object:  StoredProcedure [dbo].[insertartmpDetVenta]    Script Date: 15/10/2017 2:32:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[insertartmpDetVenta]
	@idProducto int,
	@nombreProducto nvarchar(50),
	@cantidadVenta int,
	@precioVenta decimal(18,2),
	@subTotal decimal(18,2)
as
	insert into tmpDetVenta values (@idProducto, @nombreProducto, @cantidadVenta, @precioVenta, @subTotal)

GO
/****** Object:  StoredProcedure [dbo].[insertarUsuario]    Script Date: 15/10/2017 2:32:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[insertarUsuario]
	@nickname nvarchar(50),
	@pass nvarchar(50),
	@rol nvarchar(50),
	@estado nvarchar(50)
as
	insert into usuario values (@nickname,@pass,@rol,@estado)

GO
/****** Object:  StoredProcedure [dbo].[insertarVenta]    Script Date: 15/10/2017 2:32:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[insertarVenta]
	@idCliente int,
	@idUsuario int,
	@idPromo int,
	@tipoVenta nvarchar(50),
	@estado nvarchar(50)
as
	insert into venta values (@idCliente, @idUsuario, @idPromo, getdate(), @tipoVenta, @estado)

	select @@IDENTITY as idVenta

GO
/****** Object:  StoredProcedure [dbo].[modificarCategoria]    Script Date: 15/10/2017 2:32:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[modificarCategoria]
	@idCategoria int,
	@nombreCategoria nvarchar(50),
	@comentarioCategoria nvarchar(50),
	@estadoCategoria nvarchar(50)
as
	update categoria set descripcionCategoria = @nombreCategoria, comentarioCategoria = @comentarioCategoria,
	estadoCategoria = @estadoCategoria where idCategoria = @idCategoria

GO
/****** Object:  StoredProcedure [dbo].[modificarCliente]    Script Date: 15/10/2017 2:32:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[modificarCliente]
	@nit nvarchar(50),
	@nombresCliente nvarchar(50),
	@apellidosCliente nvarchar(50),
	@direccion nvarchar(100)
as
	update cliente set nombresCliente = @nombresCliente, apellidosCliente = @apellidosCliente, direccionCliente = @direccion
	where nitCliente = @nit

GO
/****** Object:  StoredProcedure [dbo].[modificarProducto]    Script Date: 15/10/2017 2:32:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[modificarProducto]
	@idProducto int,
	@idCategoria int,
	@idProveedor int,
	@descripcion nvarchar(50),
	@fechaVencimiento date,
	@stock int,
	@precioCosto decimal(18,2),
	@precioVenta decimal(18,2),
	@estado nvarchar(50)
as
	update producto set idCategoria = @idCategoria, idProveedor = @idProveedor, descripcion = @descripcion,
	fechaVencimiento = @fechaVencimiento, stock = @stock, precioCosto = @precioCosto, precioVenta = @precioVenta,
	estadoProducto = @estado where idProducto = @idProducto

GO
/****** Object:  StoredProcedure [dbo].[modificarProveedor]    Script Date: 15/10/2017 2:32:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[modificarProveedor]
	@nit nvarchar(10),
	@nombre nvarchar(50),
	@direccion nvarchar(100),
	@telefono nvarchar(10),
	@email nvarchar(50),
	@estado nvarchar(50)
as
	update proveedor set nombreProveedor = @nombre, direccionProveedor = @direccion, telefonoProveedor = @telefono,
	emailProveedor = @email, estadoProveedor = @estado where nitProveedor = @nit

GO
/****** Object:  StoredProcedure [dbo].[modificartmpDetVenta]    Script Date: 15/10/2017 2:32:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[modificartmpDetVenta]
	@idProducto int,
	@cantidadVenta int,
	@subTotal decimal(18,2)
as
	update tmpDetVenta set 
	cantidadVenta = @cantidadVenta, subTotal = @subTotal 
	where idProducto = @idProducto

GO
/****** Object:  StoredProcedure [dbo].[modificarUsuario]    Script Date: 15/10/2017 2:32:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[modificarUsuario]
	@idUsuario int,
	@nickname nvarchar(50),
	@pass nvarchar(50),
	@rol nvarchar(50),
	@estado nvarchar(50)
as
	update usuario set nickname = @nickname, passUsuario = @pass, rolUsuario = @rol, estadoUsuario = @estado
	where idUsuario = @idUsuario

GO
/****** Object:  StoredProcedure [dbo].[mostrarCategoria]    Script Date: 15/10/2017 2:32:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[mostrarCategoria]
as
	select * from categoria

GO
/****** Object:  StoredProcedure [dbo].[mostrarCliente]    Script Date: 15/10/2017 2:32:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[mostrarCliente]
	@nit nvarchar(50)
as
	select nitCliente, nombresCliente, apellidosCliente, direccionCliente from cliente where nitCliente = @nit

GO
/****** Object:  StoredProcedure [dbo].[mostrarCompra]    Script Date: 15/10/2017 2:32:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[mostrarCompra]
	@noFactura nvarchar(10)
as
	select proveedor.nitProveedor, proveedor.nombreProveedor, compra.idCompra, compra.noFactura,
	 compra.serieFactura, compra.fechaCompra
	from  dbo.compra INNER JOIN
    dbo.proveedor ON dbo.compra.idProveedor = dbo.proveedor.idProveedor
	where compra.noFactura = @noFactura
	group by proveedor.nitProveedor, proveedor.nombreProveedor, compra.idCompra, compra.noFactura,
	compra.serieFactura, compra.fechaCompra 

GO
/****** Object:  StoredProcedure [dbo].[mostrarDetalle]    Script Date: 15/10/2017 2:32:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[mostrarDetalle]
	@idCompra int
as
	select detalleCompra.idProducto, producto.descripcion, detalleCompra.cantidadCompra, detalleCompra.precioCompra
	from detalleCompra INNER JOIN
    producto ON detalleCompra.idProducto = producto.idProducto
	where idCompra = @idCompra
	group by detalleCompra.idProducto, producto.descripcion, detalleCompra.cantidadCompra, detalleCompra.precioCompra

GO
/****** Object:  StoredProcedure [dbo].[mostrarDetalleVenta]    Script Date: 15/10/2017 2:32:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[mostrarDetalleVenta]
	@idVenta int
as
	SELECT dbo.producto.descripcion, dbo.detalleVenta.cantidadVenta, dbo.detalleVenta.precioVenta
	FROM dbo.detalleVenta INNER JOIN
    dbo.producto ON dbo.detalleVenta.idProducto = dbo.producto.idProducto
	WHERE dbo.detalleVenta.idVenta = @idVenta

GO
/****** Object:  StoredProcedure [dbo].[mostrarProducto]    Script Date: 15/10/2017 2:32:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[mostrarProducto]
as
	select * from producto

GO
/****** Object:  StoredProcedure [dbo].[mostrarProveedor]    Script Date: 15/10/2017 2:32:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[mostrarProveedor]
as
	select * from proveedor where estadoProveedor = 'activo'

GO
/****** Object:  StoredProcedure [dbo].[mostrartmpDetVenta]    Script Date: 15/10/2017 2:32:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[mostrartmpDetVenta]
as
	select idProducto, descripcion, cantidadVenta, precioVenta, subTotal
	from tmpDetVenta
	group by idProducto, descripcion, cantidadVenta, precioVenta, subTotal


GO
/****** Object:  StoredProcedure [dbo].[mostrarVenta]    Script Date: 15/10/2017 2:32:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[mostrarVenta]
	@idVenta int
as
	SELECT dbo.cliente.nitCliente, dbo.cliente.nombresCliente, dbo.cliente.apellidosCliente, dbo.usuario.nickname, dbo.venta.fechaVenta
	FROM dbo.venta INNER JOIN
    dbo.cliente ON dbo.venta.idCliente = dbo.cliente.idCliente INNER JOIN
	dbo.usuario ON dbo.venta.idUsuario = dbo.usuario.idUsuario
	WHERE dbo.venta.idVenta = @idVenta

GO
/****** Object:  StoredProcedure [dbo].[seleccionar_empleado]    Script Date: 15/10/2017 2:32:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[seleccionar_empleado]
	@nickname nvarchar(50),
	@pass nvarchar(50)
as
	select rolUsuario, nickname from usuario
	where nickname = @nickname and passUsuario = @pass

GO
/****** Object:  StoredProcedure [dbo].[seleccionarDatostmpDetVenta]    Script Date: 15/10/2017 2:32:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[seleccionarDatostmpDetVenta]
as
	select idProducto, cantidadVenta, precioVenta
	from tmpDetVenta

GO
/****** Object:  StoredProcedure [dbo].[totalVenta]    Script Date: 15/10/2017 2:32:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[totalVenta]
	@nickname nvarchar(50)
as
	SELECT dbo.venta.idVenta, count(1) as total_ventas
	FROM dbo.usuario INNER JOIN
    dbo.venta ON dbo.usuario.idUsuario = dbo.venta.idUsuario
	WHERE dbo.usuario.nickname = @nickname
	GROUP BY dbo.venta.idVenta

GO
/****** Object:  StoredProcedure [dbo].[totalVentaContado]    Script Date: 15/10/2017 2:32:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[totalVentaContado]
	@nickname nvarchar(50)
as
	SELECT dbo.venta.idVenta, count(1) as total_ventas_contado
	FROM dbo.usuario INNER JOIN
    dbo.venta ON dbo.usuario.idUsuario = dbo.venta.idUsuario
	WHERE dbo.usuario.nickname = @nickname and dbo.venta.tipo_venta = 'contado'
	GROUP BY dbo.venta.idVenta

GO
/****** Object:  StoredProcedure [dbo].[totalVentaCredito]    Script Date: 15/10/2017 2:32:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[totalVentaCredito]
	@nickname nvarchar(50)
as
	SELECT dbo.venta.idVenta, count(1) as total_ventas_credito
	FROM dbo.usuario INNER JOIN
    dbo.venta ON dbo.usuario.idUsuario = dbo.venta.idUsuario
	WHERE dbo.usuario.nickname = @nickname and dbo.venta.tipo_venta = 'credito'
	GROUP BY dbo.venta.idVenta

GO
