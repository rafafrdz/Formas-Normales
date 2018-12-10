USE [Particionada]
GO

/****** Object:  Table [dbo].[1FN]    Script Date: 09/12/2018 17:46:01 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
drop table [3fn2]
CREATE TABLE [dbo].[3FN2](
	[PAIS] [nvarchar](250) NOT NULL,
	[DIRECCION] [nvarchar](250) NOT NULL,
	[CP] [smallint] NOT NULL,
	[LOCALIDAD] [nvarchar](250) NOT NULL
) ON [TablasResto]
GO

insert into [3FN2] select PAIS, DIRECCION, CP, LOCALIDAD from [2FN1]

