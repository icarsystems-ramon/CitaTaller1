
CREATE TABLE [dbo].[Dms](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_Dms_Id]  DEFAULT (newid()),
	[DomainUrl] [nvarchar](250) NULL,
	[Idioma] [smallint] NULL,
 CONSTRAINT [PK_Dms] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)


CREATE TABLE [dbo].[DmsCortesia](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_DmsCortesia_Id]  DEFAULT (newid()),
	[DmsId] [uniqueidentifier] NOT NULL,
	[Descripcion] [nvarchar](50) NULL,
	[DmsKey] [varchar](25) NULL,
 CONSTRAINT [PK_DmsCortesia] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

CREATE TABLE [dbo].[DmsJob](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_DmsJob_Id]  DEFAULT (newid()),
	[DmsId] [uniqueidentifier] NOT NULL,
	[Descripcion] [nvarchar](50) NULL,
 CONSTRAINT [PK_DmsJob] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)


CREATE TABLE [dbo].[DmsTaller](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_DmsTaller_Id]  DEFAULT (newid()),
	[DmsId] [uniqueidentifier] NOT NULL,
	[Descripcion] [nvarchar](50) NULL,
	[Direccion] [nvarchar](150) NULL,
	[VehiculoCortesia] [bit] NULL,
	[DmsKey] [varchar](25) NULL,
 CONSTRAINT [PK_DmsTaller] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)


CREATE TABLE [dbo].[Solicitud](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_Solicitud_Id]  DEFAULT (newid()),
	[CreacionFecha] [datetime] NULL,
	[CreacionDevice] [uniqueidentifier] NULL,
	[Numgsm] [varchar](15) NULL,
	[Email] [varchar](100) NULL,
	[DmsCortesiaId] [uniqueidentifier] NULL,
	[Nombre] [nvarchar](50) NULL,
	[Apellidos] [nvarchar](50) NULL,
	[Matric] [nvarchar](15) NULL,
	[Chasis] [nvarchar](17) NULL,
	[DmsTallerId] [uniqueidentifier] NOT NULL,
	[Descripcion] [nvarchar](250) NULL,
	[VehiculoCortesia] [bit] NULL,
	[DmsCitaCreada] [bit] NULL,
	[DmsClienteKey] [varchar](15) NULL,
	[DmsVehiculoKey] [varchar](15) NULL,
	[DmsCitaKey] [varchar](15) NULL,
 CONSTRAINT [PK_Solicitud] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)


CREATE TABLE [dbo].[SolicitudHora](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_SolicitudHora_Id]  DEFAULT (newid()),
	[SolicitudId] [uniqueidentifier] NOT NULL,
	[Fecha] [date] NULL,
	[Hora] [tinyint] NULL,
	[Minuto] [tinyint] NULL,
 CONSTRAINT [PK_SolicitudHora] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)


CREATE TABLE [dbo].[SolicitudJob](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_SolicitudJob_Id]  DEFAULT (newid()),
	[SolicitudId] [uniqueidentifier] NOT NULL,
	[DmsJobId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_SolicitudJob] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
/****** Object:  Index [IX_DmsJob_DmsId]    Script Date: 29/09/2015 11:40:30 ******/
CREATE NONCLUSTERED INDEX [IX_DmsJob_DmsId] ON [dbo].[DmsJob]
(
	[DmsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
/****** Object:  Index [IX_DmsTaller_DmsId]    Script Date: 29/09/2015 11:40:30 ******/
CREATE NONCLUSTERED INDEX [IX_DmsTaller_DmsId] ON [dbo].[DmsTaller]
(
	[DmsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Solicitud_Matric]    Script Date: 29/09/2015 11:40:30 ******/
CREATE NONCLUSTERED INDEX [IX_Solicitud_Matric] ON [dbo].[Solicitud]
(
	[Matric] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Solicitud_Numgsm]    Script Date: 29/09/2015 11:40:30 ******/
CREATE NONCLUSTERED INDEX [IX_Solicitud_Numgsm] ON [dbo].[Solicitud]
(
	[Numgsm] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
/****** Object:  Index [IX_SolicitudHora_SolicitudId]    Script Date: 29/09/2015 11:40:30 ******/
CREATE NONCLUSTERED INDEX [IX_SolicitudHora_SolicitudId] ON [dbo].[SolicitudHora]
(
	[SolicitudId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
/****** Object:  Index [IX_SolicitudJob_SolicitudId]    Script Date: 29/09/2015 11:40:30 ******/
CREATE NONCLUSTERED INDEX [IX_SolicitudJob_SolicitudId] ON [dbo].[SolicitudJob]
(
	[SolicitudId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO

