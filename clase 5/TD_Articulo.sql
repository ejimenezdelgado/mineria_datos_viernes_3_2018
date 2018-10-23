USE [BI_DW]
GO
/****** Object:  Table [dbo].[TD_Articulo]    Script Date: 22/10/2018 6:32:45 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TD_Articulo](
	[Articulo_Id] [varchar](13) NOT NULL,
	[Articulo_Nombre] [varchar](60) NOT NULL,
	[Casa_Id] [smallint] NOT NULL,
	[Marca_Id] [smallint] NOT NULL,
	[Categoria_Id] [smallint] NOT NULL,
	[SubCategoria_Id] [smallint] NOT NULL,
	[Depto_Id] [smallint] NOT NULL,
	[Unidad_Id] [smallint] NOT NULL,
	[Bodega_Id] [smallint] NOT NULL,
	[Sucusal_Id] [smallint] NOT NULL,
	[Proveedor_Id] [int] NOT NULL,
	[Articulo_Costo_Actual] [money] NOT NULL,
	[Articulo_Fec_Actualizacion] [datetime] NOT NULL,
 CONSTRAINT [PK_TD_Articulo] PRIMARY KEY CLUSTERED 
(
	[Articulo_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
