USE [BI_DW]
GO
/****** Object:  Table [dbo].[TD_Cliente]    Script Date: 22/10/2018 6:33:07 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TD_Cliente](
	[Cliente_Id] [int] NOT NULL,
	[Cliente_Nombre] [varchar](50) NOT NULL,
	[Cliente_Nombre_Comercial] [varchar](60) NOT NULL,
	[Cliente_Cedula] [varchar](25) NOT NULL,
	[Cliente_Identificacion] [varchar](20) NOT NULL,
	[Cliente_Celular] [varchar](15) NOT NULL,
	[Cliente_Fax] [varchar](15) NOT NULL,
	[Cliente_Telefono] [varchar](15) NOT NULL,
	[Cliente_Solo_Efectivo] [bit] NOT NULL,
	[Cliente_Plazo] [int] NOT NULL,
	[Cliente_Credito_Limite] [money] NOT NULL,
	[Cliente_Credito_Saldo] [money] NOT NULL,
	[Cadena_id] [int] NOT NULL,
	[Cliente_Fec_Actualizacion] [datetime] NOT NULL,
	[Cliente_Recibe_Correos] [bit] NOT NULL,
	[Cliente_Activo] [bit] NOT NULL,
 CONSTRAINT [PK_TD_Cliente] PRIMARY KEY CLUSTERED 
(
	[Cliente_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
