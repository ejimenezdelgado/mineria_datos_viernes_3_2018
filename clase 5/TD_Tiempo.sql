USE [BI_DW]
GO
/****** Object:  Table [dbo].[TD_Tiempo]    Script Date: 22/10/2018 6:36:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TD_Tiempo](
	[FechaID] [int] NOT NULL,
	[Fecha] [date] NOT NULL,
	[DiaMes] [int] NULL,
	[DiaAnno] [int] NULL,
	[DescDia] [nvarchar](15) NULL,
	[Mes] [int] NULL,
	[DescMes] [nvarchar](15) NULL,
	[Ano] [int] NULL,
	[Trimestre] [nvarchar](15) NULL,
	[Semestre] [nvarchar](15) NULL,
	[Cuatrimestre] [nvarchar](15) NULL,
	[Semana] [int] NULL,
	[EntreSemana_SN] [char](15) NULL,
	[PeriodoFiscal] [nvarchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[FechaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
