USE [Cepdi_Prueba]
GO

CREATE TABLE [dbo].[Medicamentos](
	[Id] [int] IDENTITY(1,1) NOT NULL Primary key clustered,
	[Nombre] [varchar](500) NULL,
	[Concentracion] [varchar](100) NULL,
	[IdFormaFarmaceutica] [bigint] NULL,
	[Precio] [varchar](100) NULL,
	[Presentacion] [varchar](100) NULL,
	[Habilitado] [bit] NULL,
	[Activo] [bit] NULL,
	[FechaCreacion] [datetime] NULL,
	[FechaModificacion] [datetime] NULL,
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[FormasFarmaceuticas](
	[Id] [bigint] IDENTITY(1,1) NOT NULL Primary key clustered,
	[FormaFarmaceutica] [varchar](100) NULL,
	[Activo] [bit] NULL,
	[FechaCreacion] [datetime] NULL,
	[FechaModificacion] [datetime] NULL,
) ON [PRIMARY]
GO

Create View [dbo].[VMedicamentos]
as
select ME.*,FF.FormaFarmaceutica 
from Medicamentos ME
inner join FormasFarmaceuticas FF on (FF.Id=ME.IdFormaFarmaceutica)
GO

CREATE TABLE [dbo].[Usuarios](
	[Id] [int] IDENTITY(1,1) NOT NULL Primary key clustered,
	[Nombre] [varchar](500) NULL,
	[Usuario] [varchar](100) NULL,
	[Password] [varchar](100) NULL,
	[Estatus] [bit] NULL,
	[Activo] [bit] NULL,
	[FechaCreacion] [datetime] NULL,
	[FechaModificacion] [datetime] NULL,
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[FormasFarmaceuticas] ON 

INSERT [dbo].[FormasFarmaceuticas] ([Id], [FormaFarmaceutica], [Activo], [FechaCreacion], [FechaModificacion]) VALUES (1, N'Aerosol', 1, CAST(N'2024-03-21T03:30:35.280' AS DateTime), NULL)
INSERT [dbo].[FormasFarmaceuticas] ([Id], [FormaFarmaceutica], [Activo], [FechaCreacion], [FechaModificacion]) VALUES (2, N'Ampolletas', 1, CAST(N'2024-03-21T03:30:38.950' AS DateTime), NULL)
INSERT [dbo].[FormasFarmaceuticas] ([Id], [FormaFarmaceutica], [Activo], [FechaCreacion], [FechaModificacion]) VALUES (3, N'Cápsula', 1, CAST(N'2024-03-21T03:30:43.053' AS DateTime), NULL)
INSERT [dbo].[FormasFarmaceuticas] ([Id], [FormaFarmaceutica], [Activo], [FechaCreacion], [FechaModificacion]) VALUES (4, N'Colirio', 1, CAST(N'2024-03-21T03:30:51.410' AS DateTime), NULL)
INSERT [dbo].[FormasFarmaceuticas] ([Id], [FormaFarmaceutica], [Activo], [FechaCreacion], [FechaModificacion]) VALUES (5, N'Crema', 1, CAST(N'2024-03-21T03:30:57.280' AS DateTime), NULL)
INSERT [dbo].[FormasFarmaceuticas] ([Id], [FormaFarmaceutica], [Activo], [FechaCreacion], [FechaModificacion]) VALUES (6, N'Elíxir', 1, CAST(N'2024-03-21T03:30:59.290' AS DateTime), NULL)
INSERT [dbo].[FormasFarmaceuticas] ([Id], [FormaFarmaceutica], [Activo], [FechaCreacion], [FechaModificacion]) VALUES (7, N'Emulsiòn', 1, CAST(N'2024-03-21T03:31:09.740' AS DateTime), NULL)
INSERT [dbo].[FormasFarmaceuticas] ([Id], [FormaFarmaceutica], [Activo], [FechaCreacion], [FechaModificacion]) VALUES (8, N'Enema', 1, CAST(N'2024-03-21T03:32:04.340' AS DateTime), NULL)
INSERT [dbo].[FormasFarmaceuticas] ([Id], [FormaFarmaceutica], [Activo], [FechaCreacion], [FechaModificacion]) VALUES (9, N'Frasco ampula ó vial', 1, CAST(N'2024-03-21T03:32:13.953' AS DateTime), NULL)
INSERT [dbo].[FormasFarmaceuticas] ([Id], [FormaFarmaceutica], [Activo], [FechaCreacion], [FechaModificacion]) VALUES (10, N'Implante', 1, CAST(N'2024-03-21T03:32:18.920' AS DateTime), NULL)
INSERT [dbo].[FormasFarmaceuticas] ([Id], [FormaFarmaceutica], [Activo], [FechaCreacion], [FechaModificacion]) VALUES (11, N'Gel', 1, CAST(N'2024-03-21T03:32:22.963' AS DateTime), NULL)
INSERT [dbo].[FormasFarmaceuticas] ([Id], [FormaFarmaceutica], [Activo], [FechaCreacion], [FechaModificacion]) VALUES (12, N'Gragea', 1, CAST(N'2024-03-21T03:32:30.640' AS DateTime), NULL)
INSERT [dbo].[FormasFarmaceuticas] ([Id], [FormaFarmaceutica], [Activo], [FechaCreacion], [FechaModificacion]) VALUES (13, N'Granulado', 1, CAST(N'2024-03-21T03:32:33.100' AS DateTime), NULL)
INSERT [dbo].[FormasFarmaceuticas] ([Id], [FormaFarmaceutica], [Activo], [FechaCreacion], [FechaModificacion]) VALUES (14, N'Inyectable', 1, CAST(N'2024-03-21T03:32:37.687' AS DateTime), NULL)
INSERT [dbo].[FormasFarmaceuticas] ([Id], [FormaFarmaceutica], [Activo], [FechaCreacion], [FechaModificacion]) VALUES (15, N'Jarabe', 1, CAST(N'2024-03-21T03:32:41.740' AS DateTime), NULL)
INSERT [dbo].[FormasFarmaceuticas] ([Id], [FormaFarmaceutica], [Activo], [FechaCreacion], [FechaModificacion]) VALUES (16, N'Linimento', 1, CAST(N'2024-03-21T03:32:47.443' AS DateTime), NULL)
INSERT [dbo].[FormasFarmaceuticas] ([Id], [FormaFarmaceutica], [Activo], [FechaCreacion], [FechaModificacion]) VALUES (17, N'Loción', 1, CAST(N'2024-03-21T03:32:54.120' AS DateTime), NULL)
INSERT [dbo].[FormasFarmaceuticas] ([Id], [FormaFarmaceutica], [Activo], [FechaCreacion], [FechaModificacion]) VALUES (18, N'Óvulo', 1, CAST(N'2024-03-21T03:33:01.100' AS DateTime), NULL)
INSERT [dbo].[FormasFarmaceuticas] ([Id], [FormaFarmaceutica], [Activo], [FechaCreacion], [FechaModificacion]) VALUES (19, N'Parche', 1, CAST(N'2024-03-21T03:33:07.503' AS DateTime), NULL)
INSERT [dbo].[FormasFarmaceuticas] ([Id], [FormaFarmaceutica], [Activo], [FechaCreacion], [FechaModificacion]) VALUES (20, N'Solución', 1, CAST(N'2024-03-21T03:33:12.773' AS DateTime), NULL)
INSERT [dbo].[FormasFarmaceuticas] ([Id], [FormaFarmaceutica], [Activo], [FechaCreacion], [FechaModificacion]) VALUES (21, N'Supositorio', 1, CAST(N'2024-03-21T03:33:19.477' AS DateTime), NULL)
INSERT [dbo].[FormasFarmaceuticas] ([Id], [FormaFarmaceutica], [Activo], [FechaCreacion], [FechaModificacion]) VALUES (22, N'Suspensión', 1, CAST(N'2024-03-21T03:33:26.763' AS DateTime), NULL)
INSERT [dbo].[FormasFarmaceuticas] ([Id], [FormaFarmaceutica], [Activo], [FechaCreacion], [FechaModificacion]) VALUES (23, N'Tableta o comprimido', 1, CAST(N'2024-03-21T03:33:33.373' AS DateTime), NULL)
INSERT [dbo].[FormasFarmaceuticas] ([Id], [FormaFarmaceutica], [Activo], [FechaCreacion], [FechaModificacion]) VALUES (24, N'Trocisco', 1, CAST(N'2024-03-21T03:33:43.077' AS DateTime), NULL)
INSERT [dbo].[FormasFarmaceuticas] ([Id], [FormaFarmaceutica], [Activo], [FechaCreacion], [FechaModificacion]) VALUES (25, N'Unguento', 1, CAST(N'2024-03-21T03:33:51.553' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[FormasFarmaceuticas] OFF
SET IDENTITY_INSERT [dbo].[Medicamentos] ON 

INSERT [dbo].[Medicamentos] ([Id], [Nombre], [Concentracion], [IdFormaFarmaceutica], [Precio], [Presentacion], [Habilitado], [Activo], [FechaCreacion], [FechaModificacion]) VALUES (1, N'Simvastatina', N'20 mg', 23, N'82.50', N'14 tabletas', 0, 1, CAST(N'2024-03-21T03:41:46.357' AS DateTime), CAST(N'2024-03-21T03:56:47.383' AS DateTime))
INSERT [dbo].[Medicamentos] ([Id], [Nombre], [Concentracion], [IdFormaFarmaceutica], [Precio], [Presentacion], [Habilitado], [Activo], [FechaCreacion], [FechaModificacion]) VALUES (2, N'Genoprazol', N'20 mg', 23, N'44', N'7 capsulas', 0, 1, CAST(N'2024-03-21T03:46:19.907' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Medicamentos] OFF
SET IDENTITY_INSERT [dbo].[Usuarios] ON 

INSERT [dbo].[Usuarios] ([Id], [Nombre], [Usuario], [Password], [Estatus], [Activo], [FechaCreacion], [FechaModificacion]) VALUES (1, N'Sergio Cano Huerta', N'secahu', N'@S3rgioCano', 1, 1, NULL, CAST(N'2024-03-21T03:48:04.143' AS DateTime))
INSERT [dbo].[Usuarios] ([Id], [Nombre], [Usuario], [Password], [Estatus], [Activo], [FechaCreacion], [FechaModificacion]) VALUES (2, N'Ejemplo', N'ejemplo', N'3jemplo@R', 1, 1, CAST(N'2024-03-21T02:50:40.277' AS DateTime), CAST(N'2024-03-21T02:51:07.160' AS DateTime))
SET IDENTITY_INSERT [dbo].[Usuarios] OFF
ALTER TABLE [dbo].[FormasFarmaceuticas] ADD  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[FormasFarmaceuticas] ADD  DEFAULT (getdate()) FOR [FechaCreacion]
GO
ALTER TABLE [dbo].[Medicamentos] ADD  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[Usuarios] ADD  CONSTRAINT [DF_Usuarios_Estatus]  DEFAULT ((1)) FOR [Estatus]
GO
ALTER TABLE [dbo].[Usuarios] ADD  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[Medicamentos]  WITH CHECK ADD FOREIGN KEY([IdFormaFarmaceutica])
REFERENCES [dbo].[FormasFarmaceuticas] ([Id])
GO
