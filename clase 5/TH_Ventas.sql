USE [BI_DW]
GO
/****** Object:  Table [dbo].[TH_Ventas]    Script Date: 22/10/2018 6:38:13 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TH_Ventas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Factura_Id] [int] NOT NULL,
	[Articulo_Id] [varchar](13) NOT NULL,
	[Cliente_Id] [int] NOT NULL,
	[Sucursal_Id] [smallint] NOT NULL,
	[Tipo_Documento_Id] [smallint] NOT NULL,
	[Fecha_Id] [int] NOT NULL,
	[Precio_Unitario] [money] NOT NULL,
	[Ventas_Cantidad] [money] NOT NULL,
	[Ventas_Valor_Local] [money] NOT NULL,
	[Ventas_Costo_Local] [money] NOT NULL,
	[Ventas_Descuento_local] [money] NOT NULL,
	[Ventas_Impuesto_Local] [money] NOT NULL,
	[Ventas_Gravado_Local] [money] NOT NULL,
	[Ventas_Excento_Local] [money] NOT NULL,
 CONSTRAINT [PK_TH_Ventas] PRIMARY KEY CLUSTERED 
(
	[Factura_Id] ASC,
	[Articulo_Id] ASC,
	[Cliente_Id] ASC,
	[Sucursal_Id] ASC,
	[Tipo_Documento_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[TH_Ventas]  WITH NOCHECK ADD  CONSTRAINT [FK_TH_Ventas_TD_Articulo] FOREIGN KEY([Articulo_Id])
REFERENCES [dbo].[TD_Articulo] ([Articulo_Id])
GO
ALTER TABLE [dbo].[TH_Ventas] CHECK CONSTRAINT [FK_TH_Ventas_TD_Articulo]
GO
ALTER TABLE [dbo].[TH_Ventas]  WITH NOCHECK ADD  CONSTRAINT [FK_TH_Ventas_TD_Cliente] FOREIGN KEY([Cliente_Id])
REFERENCES [dbo].[TD_Cliente] ([Cliente_Id])
GO
ALTER TABLE [dbo].[TH_Ventas] CHECK CONSTRAINT [FK_TH_Ventas_TD_Cliente]
GO
ALTER TABLE [dbo].[TH_Ventas]  WITH NOCHECK ADD  CONSTRAINT [FK_TH_Ventas_TD_Sucursal] FOREIGN KEY([Sucursal_Id])
REFERENCES [dbo].[TD_Sucursal] ([Suc_Id])
GO
ALTER TABLE [dbo].[TH_Ventas] CHECK CONSTRAINT [FK_TH_Ventas_TD_Sucursal]
GO
ALTER TABLE [dbo].[TH_Ventas]  WITH NOCHECK ADD  CONSTRAINT [FK_TH_Ventas_TD_Tiempo] FOREIGN KEY([Fecha_Id])
REFERENCES [dbo].[TD_Tiempo] ([FechaID])
GO
ALTER TABLE [dbo].[TH_Ventas] CHECK CONSTRAINT [FK_TH_Ventas_TD_Tiempo]
GO
ALTER TABLE [dbo].[TH_Ventas]  WITH NOCHECK ADD  CONSTRAINT [FK_TH_Ventas_TD_Tipo_Documento] FOREIGN KEY([Tipo_Documento_Id])
REFERENCES [dbo].[TD_Tipo_Documento] ([Tipo_Id])
GO
ALTER TABLE [dbo].[TH_Ventas] CHECK CONSTRAINT [FK_TH_Ventas_TD_Tipo_Documento]
GO
