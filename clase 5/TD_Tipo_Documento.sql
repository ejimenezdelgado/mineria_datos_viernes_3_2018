USE [BI_DW]
GO
/****** Object:  Table [dbo].[TD_Tipo_Documento]    Script Date: 22/10/2018 6:37:37 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TD_Tipo_Documento](
	[Tipo_Id] [smallint] NOT NULL,
	[Tipo_Nombre] [varchar](30) NOT NULL,
	[Tipo_Default] [bit] NOT NULL,
	[Tipo_Fec_Actualizacion] [datetime] NOT NULL,
 CONSTRAINT [PK_TD_Tipo_Documento] PRIMARY KEY CLUSTERED 
(
	[Tipo_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
