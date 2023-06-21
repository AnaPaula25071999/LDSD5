USE [CAD]
GO
/****** Object:  Table [dbo].[Comentario]    Script Date: 21/06/2023 20:36:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comentario](
	[Id] [uniqueidentifier] NOT NULL,
	[Conteudo] [varchar](1000) NULL,
	[DataCadastro] [datetime] NULL,
	[DataAtualizacao] [datetime] NULL,
	[Id_Usuario] [uniqueidentifier] NULL,
	[Id_Publicacao] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Curtida]    Script Date: 21/06/2023 20:36:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Curtida](
	[Id] [uniqueidentifier] NOT NULL,
	[DataCadastro] [datetime] NULL,
	[DataAtualizacao] [datetime] NULL,
	[Id_Usuario] [uniqueidentifier] NULL,
	[Id_Publicacao] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Disciplina]    Script Date: 21/06/2023 20:36:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Disciplina](
	[Id] [uniqueidentifier] NOT NULL,
	[Nome] [varchar](255) NULL,
	[DataCadastro] [datetime] NULL,
	[DataAtualizacao] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DisciplinaProfessor]    Script Date: 21/06/2023 20:36:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DisciplinaProfessor](
	[Id] [uniqueidentifier] NOT NULL,
	[Id_Disciplina] [uniqueidentifier] NULL,
	[Id_Professor] [uniqueidentifier] NULL,
	[DiaAula] [varchar](50) NULL,
	[HorarioInicioAula] [varchar](20) NULL,
	[HorarioFimAula] [varchar](20) NULL,
	[DataCadastro] [datetime] NULL,
	[DataAtualizacao] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Preferencia]    Script Date: 21/06/2023 20:36:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Preferencia](
	[Id] [uniqueidentifier] NOT NULL,
	[Preferencia1] [int] NULL,
	[Preferencia2] [int] NULL,
	[Preferencia3] [int] NULL,
	[Preferencia4] [int] NULL,
	[Preferencia5] [int] NULL,
	[DataCadastro] [datetime] NULL,
	[DataAtualizacao] [datetime] NULL,
	[Id_Usuario] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Professor]    Script Date: 21/06/2023 20:36:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Professor](
	[Id] [uniqueidentifier] NOT NULL,
	[Nome] [varchar](255) NULL,
	[DataCadastro] [datetime] NULL,
	[DataAtualizacao] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Publicacao]    Script Date: 21/06/2023 20:36:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Publicacao](
	[Id] [uniqueidentifier] NOT NULL,
	[Conteudo] [varchar](1000) NULL,
	[Titulo] [varchar](1000) NULL,
	[Imagem] [varchar](1000) NULL,
	[Video] [varchar](1000) NULL,
	[DataCadastro] [datetime] NULL,
	[DataAtualizacao] [datetime] NULL,
	[Id_Usuario] [uniqueidentifier] NULL,
	[Id_Disciplina_Professor] [uniqueidentifier] NULL,
	[Preferencia] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tag]    Script Date: 21/06/2023 20:36:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tag](
	[Id] [int] NOT NULL,
	[Nome] [varchar](100) NULL,
	[MatriculaUsuario] [varchar](100) NULL,
	[DataCadastro] [datetime] NULL,
	[DataAtualizacao] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 21/06/2023 20:36:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[Id] [uniqueidentifier] NOT NULL,
	[Matricula] [varchar](20) NULL,
	[Email] [varchar](255) NULL,
	[Nome] [varchar](255) NULL,
	[Perfil] [int] NULL,
	[Senha] [varchar](100) NULL,
	[Foto] [varchar](1000) NULL,
	[Biografia] [varchar](1000) NULL,
	[Celular] [int] NULL,
	[Genero] [varchar](50) NULL,
	[Curso] [varchar](150) NULL,
	[DataCadastro] [datetime] NULL,
	[DataAtualizacao] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Comentario] ([Id], [Conteudo], [DataCadastro], [DataAtualizacao], [Id_Usuario], [Id_Publicacao]) VALUES (N'09910129-435e-4c82-31b6-08db54e130d4', NULL, CAST(N'2023-05-14T22:10:36.637' AS DateTime), CAST(N'2023-05-14T22:10:36.637' AS DateTime), N'eaf14a23-b557-4e77-8af6-14346bd78d4a', N'88d6e744-b7c5-446b-70dc-08db54db7984')
INSERT [dbo].[Comentario] ([Id], [Conteudo], [DataCadastro], [DataAtualizacao], [Id_Usuario], [Id_Publicacao]) VALUES (N'770e7f59-39cc-413b-ca62-08db68fc5e3b', N'Coment one ', CAST(N'2023-06-09T12:15:32.467' AS DateTime), CAST(N'2023-06-09T12:15:32.467' AS DateTime), N'eaf14a23-b557-4e77-8af6-14346bd78d4a', N'88d6e744-b7c5-446b-70dc-08db54db7984')
INSERT [dbo].[Comentario] ([Id], [Conteudo], [DataCadastro], [DataAtualizacao], [Id_Usuario], [Id_Publicacao]) VALUES (N'bcc966d9-59a6-489a-ca63-08db68fc5e3b', N'Comment two', CAST(N'2023-06-09T12:15:40.333' AS DateTime), CAST(N'2023-06-09T12:15:40.333' AS DateTime), N'eaf14a23-b557-4e77-8af6-14346bd78d4a', N'88d6e744-b7c5-446b-70dc-08db54db7984')
INSERT [dbo].[Comentario] ([Id], [Conteudo], [DataCadastro], [DataAtualizacao], [Id_Usuario], [Id_Publicacao]) VALUES (N'29388889-9c0f-4d25-0142-08db69e85f47', N'4° Comentário', CAST(N'2023-06-10T16:24:55.483' AS DateTime), CAST(N'2023-06-10T16:24:55.483' AS DateTime), N'eaf14a23-b557-4e77-8af6-14346bd78d4a', N'88d6e744-b7c5-446b-70dc-08db54db7984')
INSERT [dbo].[Comentario] ([Id], [Conteudo], [DataCadastro], [DataAtualizacao], [Id_Usuario], [Id_Publicacao]) VALUES (N'88742214-26b1-4b65-37d4-08db6d3ca9d9', N'Comentário 1', CAST(N'2023-06-14T22:05:51.773' AS DateTime), CAST(N'2023-06-14T22:05:51.773' AS DateTime), N'9b238626-65dc-4c06-836c-71ac8fddb983', N'aa77bcd3-d8f8-4bf6-efd2-08db654b3000')
INSERT [dbo].[Comentario] ([Id], [Conteudo], [DataCadastro], [DataAtualizacao], [Id_Usuario], [Id_Publicacao]) VALUES (N'08c1dfad-515d-4edf-37d5-08db6d3ca9d9', N'Comentário 2', CAST(N'2023-06-14T22:05:54.797' AS DateTime), CAST(N'2023-06-14T22:05:54.797' AS DateTime), N'9b238626-65dc-4c06-836c-71ac8fddb983', N'aa77bcd3-d8f8-4bf6-efd2-08db654b3000')
INSERT [dbo].[Comentario] ([Id], [Conteudo], [DataCadastro], [DataAtualizacao], [Id_Usuario], [Id_Publicacao]) VALUES (N'fe11defe-bd4e-4e54-37d6-08db6d3ca9d9', N'Comentário 3', CAST(N'2023-06-14T22:05:57.960' AS DateTime), CAST(N'2023-06-14T22:05:57.960' AS DateTime), N'9b238626-65dc-4c06-836c-71ac8fddb983', N'aa77bcd3-d8f8-4bf6-efd2-08db654b3000')
INSERT [dbo].[Comentario] ([Id], [Conteudo], [DataCadastro], [DataAtualizacao], [Id_Usuario], [Id_Publicacao]) VALUES (N'7a8e401a-9a58-4b56-37d7-08db6d3ca9d9', N'Comentário 1', CAST(N'2023-06-14T22:09:39.797' AS DateTime), CAST(N'2023-06-14T22:09:39.797' AS DateTime), N'9b238626-65dc-4c06-836c-71ac8fddb983', N'56554623-93ac-48a6-a30d-08db6d3ce9bd')
INSERT [dbo].[Comentario] ([Id], [Conteudo], [DataCadastro], [DataAtualizacao], [Id_Usuario], [Id_Publicacao]) VALUES (N'30eb960c-7157-4b0a-37d8-08db6d3ca9d9', N'Comentário 2', CAST(N'2023-06-14T22:09:42.980' AS DateTime), CAST(N'2023-06-14T22:09:42.980' AS DateTime), N'9b238626-65dc-4c06-836c-71ac8fddb983', N'56554623-93ac-48a6-a30d-08db6d3ce9bd')
INSERT [dbo].[Comentario] ([Id], [Conteudo], [DataCadastro], [DataAtualizacao], [Id_Usuario], [Id_Publicacao]) VALUES (N'09fa9e97-4c6b-478b-37d9-08db6d3ca9d9', N'Comentário 3', CAST(N'2023-06-14T22:09:46.680' AS DateTime), CAST(N'2023-06-14T22:09:46.680' AS DateTime), N'9b238626-65dc-4c06-836c-71ac8fddb983', N'56554623-93ac-48a6-a30d-08db6d3ce9bd')
GO
INSERT [dbo].[Curtida] ([Id], [DataCadastro], [DataAtualizacao], [Id_Usuario], [Id_Publicacao]) VALUES (N'b20125ea-de2a-4893-8c16-08db69e8ba4d', CAST(N'2023-06-10T16:27:28.180' AS DateTime), CAST(N'2023-06-10T16:27:28.180' AS DateTime), N'eaf14a23-b557-4e77-8af6-14346bd78d4a', N'88d6e744-b7c5-446b-70dc-08db54db7984')
INSERT [dbo].[Curtida] ([Id], [DataCadastro], [DataAtualizacao], [Id_Usuario], [Id_Publicacao]) VALUES (N'8815255d-9ef0-4775-1dc6-08db6adcabaa', CAST(N'2023-06-11T21:33:40.803' AS DateTime), CAST(N'2023-06-11T21:33:40.803' AS DateTime), N'9b238626-65dc-4c06-836c-71ac8fddb983', N'88d6e744-b7c5-446b-70dc-08db54db7984')
INSERT [dbo].[Curtida] ([Id], [DataCadastro], [DataAtualizacao], [Id_Usuario], [Id_Publicacao]) VALUES (N'7e42d2bc-1375-42aa-9374-08db6b961387', CAST(N'2023-06-12T19:40:59.530' AS DateTime), CAST(N'2023-06-12T19:40:59.530' AS DateTime), N'433284dc-b33a-404d-bc93-648ba52ff16e', N'88d6e744-b7c5-446b-70dc-08db54db7984')
INSERT [dbo].[Curtida] ([Id], [DataCadastro], [DataAtualizacao], [Id_Usuario], [Id_Publicacao]) VALUES (N'c05139a8-f6e8-4f39-db7f-08db6d3cb0d1', CAST(N'2023-06-14T22:06:03.503' AS DateTime), CAST(N'2023-06-14T22:06:03.503' AS DateTime), N'9b238626-65dc-4c06-836c-71ac8fddb983', N'aa77bcd3-d8f8-4bf6-efd2-08db654b3000')
INSERT [dbo].[Curtida] ([Id], [DataCadastro], [DataAtualizacao], [Id_Usuario], [Id_Publicacao]) VALUES (N'1b7f31ae-86df-46d6-db80-08db6d3cb0d1', CAST(N'2023-06-14T22:09:27.180' AS DateTime), CAST(N'2023-06-14T22:09:27.180' AS DateTime), N'9b238626-65dc-4c06-836c-71ac8fddb983', N'56554623-93ac-48a6-a30d-08db6d3ce9bd')
INSERT [dbo].[Curtida] ([Id], [DataCadastro], [DataAtualizacao], [Id_Usuario], [Id_Publicacao]) VALUES (N'd086379b-031c-4c2b-f7bd-08db6df6d6df', CAST(N'2023-06-15T20:18:33.727' AS DateTime), CAST(N'2023-06-15T20:18:33.727' AS DateTime), N'eaf14a23-b557-4e77-8af6-14346bd78d4a', N'56554623-93ac-48a6-a30d-08db6d3ce9bd')
GO
INSERT [dbo].[Disciplina] ([Id], [Nome], [DataCadastro], [DataAtualizacao]) VALUES (N'2ba931cc-7d6b-4310-83a0-04f5944870e5', N'IHC - Interação Humano-Computador', CAST(N'2023-05-14T19:03:41.890' AS DateTime), CAST(N'2023-05-14T19:03:41.890' AS DateTime))
INSERT [dbo].[Disciplina] ([Id], [Nome], [DataCadastro], [DataAtualizacao]) VALUES (N'623b97ef-8159-4e58-8d12-37df3ed3995f', N'LDS - Laboratório de Desenvolvimento de Sistemas', CAST(N'2023-05-14T19:03:41.890' AS DateTime), CAST(N'2023-05-14T19:03:41.890' AS DateTime))
INSERT [dbo].[Disciplina] ([Id], [Nome], [DataCadastro], [DataAtualizacao]) VALUES (N'4f9f5e4c-a8f2-4454-9cc5-3f33647e8862', N'PE1 - Tópicos Especiais I', CAST(N'2023-05-14T19:03:41.893' AS DateTime), CAST(N'2023-05-14T19:03:41.893' AS DateTime))
INSERT [dbo].[Disciplina] ([Id], [Nome], [DataCadastro], [DataAtualizacao]) VALUES (N'7ab25b01-49ca-465a-87b9-6f43d55a3539', N'SSI - Segurança da Informação', CAST(N'2023-05-14T19:03:41.893' AS DateTime), CAST(N'2023-05-14T19:03:41.893' AS DateTime))
INSERT [dbo].[Disciplina] ([Id], [Nome], [DataCadastro], [DataAtualizacao]) VALUES (N'e45333a3-edf4-4af4-a9f1-713b016c3407', N'MPC - Metodologia de Pesquisa Científica e Tecnológica', CAST(N'2023-05-14T19:03:41.890' AS DateTime), CAST(N'2023-05-14T19:03:41.890' AS DateTime))
INSERT [dbo].[Disciplina] ([Id], [Nome], [DataCadastro], [DataAtualizacao]) VALUES (N'8f7278ff-2d0c-4bdc-be18-a6242c5fca05', N'PI1 - Projeto Integrado I', CAST(N'2023-05-14T19:03:41.893' AS DateTime), CAST(N'2023-05-14T19:03:41.893' AS DateTime))
INSERT [dbo].[Disciplina] ([Id], [Nome], [DataCadastro], [DataAtualizacao]) VALUES (N'284d018c-5098-4fbe-9813-f3f4b53b320e', N'GNE - Gestão de Negócios', CAST(N'2023-05-14T19:03:41.890' AS DateTime), CAST(N'2023-05-14T19:03:41.890' AS DateTime))
GO
INSERT [dbo].[DisciplinaProfessor] ([Id], [Id_Disciplina], [Id_Professor], [DiaAula], [HorarioInicioAula], [HorarioFimAula], [DataCadastro], [DataAtualizacao]) VALUES (N'2253f459-71fb-406b-b2a0-3e806108ecd0', N'4f9f5e4c-a8f2-4454-9cc5-3f33647e8862', N'9de2b315-d6c9-4ee1-a15b-8e75d9c1b5b1', N'Sexta-Feira', N'19:00', N'22:35', CAST(N'2023-05-14T19:03:41.900' AS DateTime), CAST(N'2023-05-14T19:03:41.900' AS DateTime))
INSERT [dbo].[DisciplinaProfessor] ([Id], [Id_Disciplina], [Id_Professor], [DiaAula], [HorarioInicioAula], [HorarioFimAula], [DataCadastro], [DataAtualizacao]) VALUES (N'b9be4464-a5d5-4015-96bd-468ac352a084', N'7ab25b01-49ca-465a-87b9-6f43d55a3539', N'e7baa53d-2498-44d3-9ebb-5beab8c4aa2c', N'Terça-Feira', N'19:00', N'22:35', CAST(N'2023-05-14T19:03:41.897' AS DateTime), CAST(N'2023-05-14T19:03:41.897' AS DateTime))
INSERT [dbo].[DisciplinaProfessor] ([Id], [Id_Disciplina], [Id_Professor], [DiaAula], [HorarioInicioAula], [HorarioFimAula], [DataCadastro], [DataAtualizacao]) VALUES (N'a7e94ecb-9895-450c-96d1-543734f0b3c8', N'8f7278ff-2d0c-4bdc-be18-a6242c5fca05', N'a091e60e-cf78-4241-94a4-b12522e3c32e', N'Segunda-Feira', N'20:55', N'22:35', CAST(N'2023-05-14T19:03:41.897' AS DateTime), CAST(N'2023-05-14T19:03:41.897' AS DateTime))
INSERT [dbo].[DisciplinaProfessor] ([Id], [Id_Disciplina], [Id_Professor], [DiaAula], [HorarioInicioAula], [HorarioFimAula], [DataCadastro], [DataAtualizacao]) VALUES (N'b9835d1b-1067-4363-8b32-578f4cbd01ae', N'284d018c-5098-4fbe-9813-f3f4b53b320e', N'cdddeb61-8b52-46ae-842e-e9e78b3713bf', N'Quarta-Feira', N'19:00', N'20:40', CAST(N'2023-05-14T19:03:41.900' AS DateTime), CAST(N'2023-05-14T19:03:41.900' AS DateTime))
INSERT [dbo].[DisciplinaProfessor] ([Id], [Id_Disciplina], [Id_Professor], [DiaAula], [HorarioInicioAula], [HorarioFimAula], [DataCadastro], [DataAtualizacao]) VALUES (N'049af2d0-7acf-4a2a-9164-995f22188084', N'2ba931cc-7d6b-4310-83a0-04f5944870e5', N'730d3ac5-823b-4397-a861-5daf3bbe825d', N'Quarta-Feira', N'20:55', N'22:35', CAST(N'2023-05-14T19:03:41.900' AS DateTime), CAST(N'2023-05-14T19:03:41.900' AS DateTime))
INSERT [dbo].[DisciplinaProfessor] ([Id], [Id_Disciplina], [Id_Professor], [DiaAula], [HorarioInicioAula], [HorarioFimAula], [DataCadastro], [DataAtualizacao]) VALUES (N'0d2ae0a5-19c0-426e-8691-a4b9a77121eb', N'e45333a3-edf4-4af4-a9f1-713b016c3407', N'a091e60e-cf78-4241-94a4-b12522e3c32e', N'Segunda-Feira', N'19:00', N'20:40', CAST(N'2023-05-14T19:03:41.897' AS DateTime), CAST(N'2023-05-14T19:03:41.897' AS DateTime))
INSERT [dbo].[DisciplinaProfessor] ([Id], [Id_Disciplina], [Id_Professor], [DiaAula], [HorarioInicioAula], [HorarioFimAula], [DataCadastro], [DataAtualizacao]) VALUES (N'29b9d38b-7c03-4a41-8982-b45f793efd17', N'623b97ef-8159-4e58-8d12-37df3ed3995f', N'dab5e9b7-7614-4fa9-b9ea-82872f521c8a', N'Quinta-Feira', N'19:00', N'22:35', CAST(N'2023-05-14T19:03:41.900' AS DateTime), CAST(N'2023-05-14T19:03:41.900' AS DateTime))
GO
INSERT [dbo].[Preferencia] ([Id], [Preferencia1], [Preferencia2], [Preferencia3], [Preferencia4], [Preferencia5], [DataCadastro], [DataAtualizacao], [Id_Usuario]) VALUES (N'42e5c4c1-af4e-49af-4c49-08db6f8aa77e', 2, 5, 3, 1, 4, CAST(N'2023-06-17T20:29:10.903' AS DateTime), CAST(N'2023-06-18T01:30:16.080' AS DateTime), N'eaf14a23-b557-4e77-8af6-14346bd78d4a')
GO
INSERT [dbo].[Professor] ([Id], [Nome], [DataCadastro], [DataAtualizacao]) VALUES (N'e7baa53d-2498-44d3-9ebb-5beab8c4aa2c', N'Rodrigo Campos Bartoletto', CAST(N'2023-05-14T19:03:41.893' AS DateTime), CAST(N'2023-05-14T19:03:41.893' AS DateTime))
INSERT [dbo].[Professor] ([Id], [Nome], [DataCadastro], [DataAtualizacao]) VALUES (N'730d3ac5-823b-4397-a861-5daf3bbe825d', N'Thiago Schumacher Bascelos', CAST(N'2023-05-14T19:03:41.893' AS DateTime), CAST(N'2023-05-14T19:03:41.893' AS DateTime))
INSERT [dbo].[Professor] ([Id], [Nome], [DataCadastro], [DataAtualizacao]) VALUES (N'dab5e9b7-7614-4fa9-b9ea-82872f521c8a', N'Giovani Fonseca Ravagnani Disperati', CAST(N'2023-05-14T19:03:41.893' AS DateTime), CAST(N'2023-05-14T19:03:41.893' AS DateTime))
INSERT [dbo].[Professor] ([Id], [Nome], [DataCadastro], [DataAtualizacao]) VALUES (N'9de2b315-d6c9-4ee1-a15b-8e75d9c1b5b1', N'Reginaldo Do Prado', CAST(N'2023-05-14T19:03:41.897' AS DateTime), CAST(N'2023-05-14T19:03:41.897' AS DateTime))
INSERT [dbo].[Professor] ([Id], [Nome], [DataCadastro], [DataAtualizacao]) VALUES (N'a091e60e-cf78-4241-94a4-b12522e3c32e', N'Cristiano Alves Pessoa', CAST(N'2023-05-14T19:03:41.893' AS DateTime), CAST(N'2023-05-14T19:03:41.893' AS DateTime))
INSERT [dbo].[Professor] ([Id], [Nome], [DataCadastro], [DataAtualizacao]) VALUES (N'cdddeb61-8b52-46ae-842e-e9e78b3713bf', N'Rogerio Homem da Costa', CAST(N'2023-05-14T19:03:41.893' AS DateTime), CAST(N'2023-05-14T19:03:41.893' AS DateTime))
GO
INSERT [dbo].[Publicacao] ([Id], [Conteudo], [Titulo], [Imagem], [Video], [DataCadastro], [DataAtualizacao], [Id_Usuario], [Id_Disciplina_Professor], [Preferencia]) VALUES (N'88d6e744-b7c5-446b-70dc-08db54db7984', N'Teste', N'Teste', N'14-05-2023T21-29-41_Obito.jpg', NULL, CAST(N'2023-05-14T21:29:41.593' AS DateTime), CAST(N'2023-05-14T21:29:41.593' AS DateTime), N'eaf14a23-b557-4e77-8af6-14346bd78d4a', N'b9be4464-a5d5-4015-96bd-468ac352a084', 11)
INSERT [dbo].[Publicacao] ([Id], [Conteudo], [Titulo], [Imagem], [Video], [DataCadastro], [DataAtualizacao], [Id_Usuario], [Id_Disciplina_Professor], [Preferencia]) VALUES (N'aa77bcd3-d8f8-4bf6-efd2-08db654b3000', N'Como acessar o sistema ', N'Aula de Sistema ', N'04-06-2023T19-29-40_1.jpeg', NULL, CAST(N'2023-06-04T19:29:40.537' AS DateTime), CAST(N'2023-06-04T19:29:40.537' AS DateTime), N'eaf14a23-b557-4e77-8af6-14346bd78d4a', N'b9be4464-a5d5-4015-96bd-468ac352a084', 11)
INSERT [dbo].[Publicacao] ([Id], [Conteudo], [Titulo], [Imagem], [Video], [DataCadastro], [DataAtualizacao], [Id_Usuario], [Id_Disciplina_Professor], [Preferencia]) VALUES (N'6290629c-d86e-4eb3-9d3e-08db65505bef', N'Teste do video', N'Teste do Video', N'04-06-2023T20-06-41_Obito.jpg', N'https://drive.google.com/file/d/1NRgyHgqJoK5amuap7tbqU1nNOKpFm9YW/preview', CAST(N'2023-06-04T20:06:41.700' AS DateTime), CAST(N'2023-06-04T20:06:41.700' AS DateTime), N'eaf14a23-b557-4e77-8af6-14346bd78d4a', N'049af2d0-7acf-4a2a-9164-995f22188084', 11)
INSERT [dbo].[Publicacao] ([Id], [Conteudo], [Titulo], [Imagem], [Video], [DataCadastro], [DataAtualizacao], [Id_Usuario], [Id_Disciplina_Professor], [Preferencia]) VALUES (N'56554623-93ac-48a6-a30d-08db6d3ce9bd', N'Teste do Ranking', N'Minha Publicação', N'14-06-2023T22-07-38_valentino-rossi-wallpaper-qatar-test-070309-hd.jpg', NULL, CAST(N'2023-06-14T22:07:39.003' AS DateTime), CAST(N'2023-06-14T22:07:39.003' AS DateTime), N'9b238626-65dc-4c06-836c-71ac8fddb983', N'29b9d38b-7c03-4a41-8982-b45f793efd17', 11)
INSERT [dbo].[Publicacao] ([Id], [Conteudo], [Titulo], [Imagem], [Video], [DataCadastro], [DataAtualizacao], [Id_Usuario], [Id_Disciplina_Professor], [Preferencia]) VALUES (N'ac3bcb95-d4be-4f18-f1e3-08db7134b24c', N'Conteúdo com Preferência  ', N'Conteúdo com Preferência  ', N'19-06-2023T23-18-54_Vovo.jpg', NULL, CAST(N'2023-06-19T23:18:54.630' AS DateTime), CAST(N'2023-06-19T23:18:54.630' AS DateTime), N'eaf14a23-b557-4e77-8af6-14346bd78d4a', N'29b9d38b-7c03-4a41-8982-b45f793efd17', 2)
GO
INSERT [dbo].[Tag] ([Id], [Nome], [MatriculaUsuario], [DataCadastro], [DataAtualizacao]) VALUES (1, N'Banco de Dados', N'GU3017141', CAST(N'2023-06-17T20:02:11.200' AS DateTime), CAST(N'2023-06-17T20:02:11.200' AS DateTime))
INSERT [dbo].[Tag] ([Id], [Nome], [MatriculaUsuario], [DataCadastro], [DataAtualizacao]) VALUES (2, N'Linguagem de Programação', N'GU3017141', CAST(N'2023-06-17T20:02:11.200' AS DateTime), CAST(N'2023-06-17T20:02:11.200' AS DateTime))
INSERT [dbo].[Tag] ([Id], [Nome], [MatriculaUsuario], [DataCadastro], [DataAtualizacao]) VALUES (3, N'Engenharia de Sofware', N'GU3017141', CAST(N'2023-06-17T20:02:11.200' AS DateTime), CAST(N'2023-06-17T20:02:11.200' AS DateTime))
INSERT [dbo].[Tag] ([Id], [Nome], [MatriculaUsuario], [DataCadastro], [DataAtualizacao]) VALUES (4, N'Redes', N'GU3017141', CAST(N'2023-06-17T20:02:11.200' AS DateTime), CAST(N'2023-06-17T20:02:11.200' AS DateTime))
INSERT [dbo].[Tag] ([Id], [Nome], [MatriculaUsuario], [DataCadastro], [DataAtualizacao]) VALUES (5, N'Segurança da Informação', N'GU3017141', CAST(N'2023-06-17T20:02:11.200' AS DateTime), CAST(N'2023-06-17T20:02:11.200' AS DateTime))
INSERT [dbo].[Tag] ([Id], [Nome], [MatriculaUsuario], [DataCadastro], [DataAtualizacao]) VALUES (6, N'TCC', N'GU3017141', CAST(N'2023-06-17T20:02:11.203' AS DateTime), CAST(N'2023-06-17T20:02:11.203' AS DateTime))
INSERT [dbo].[Tag] ([Id], [Nome], [MatriculaUsuario], [DataCadastro], [DataAtualizacao]) VALUES (7, N'PHP', N'GU3017141', CAST(N'2023-06-17T20:02:11.203' AS DateTime), CAST(N'2023-06-17T20:02:11.203' AS DateTime))
INSERT [dbo].[Tag] ([Id], [Nome], [MatriculaUsuario], [DataCadastro], [DataAtualizacao]) VALUES (8, N'Java', N'GU3017141', CAST(N'2023-06-17T20:02:11.203' AS DateTime), CAST(N'2023-06-17T20:02:11.203' AS DateTime))
INSERT [dbo].[Tag] ([Id], [Nome], [MatriculaUsuario], [DataCadastro], [DataAtualizacao]) VALUES (9, N'C', N'GU3017141', CAST(N'2023-06-17T20:02:11.203' AS DateTime), CAST(N'2023-06-17T20:02:11.203' AS DateTime))
GO
INSERT [dbo].[Usuario] ([Id], [Matricula], [Email], [Nome], [Perfil], [Senha], [Foto], [Biografia], [Celular], [Genero], [Curso], [DataCadastro], [DataAtualizacao]) VALUES (N'eaf14a23-b557-4e77-8af6-14346bd78d4a', N'adm', N'adm@adm.com', N'adm', 0, N'202CB962AC59075B964B07152D234B70', N'adm.jpg', NULL, NULL, NULL, N'ADS - Análise e Desenvolvimento de Sistems', CAST(N'2023-05-14T19:03:41.887' AS DateTime), CAST(N'2023-05-14T19:03:41.887' AS DateTime))
INSERT [dbo].[Usuario] ([Id], [Matricula], [Email], [Nome], [Perfil], [Senha], [Foto], [Biografia], [Celular], [Genero], [Curso], [DataCadastro], [DataAtualizacao]) VALUES (N'afa61a7d-2b62-4e12-81eb-1b13ebd5b1e5', N'GU3018067', N'aparecida.amanda@aluno.ifsp.edu.br', N'Amanda Souza ', 0, N'6209804952225AB3D14348307B5A4A27', N'GU3018067.jpg', NULL, NULL, NULL, N'ADS - Análise e Desenvolvimento de Sistems', CAST(N'2023-05-14T19:03:41.890' AS DateTime), CAST(N'2023-05-14T19:03:41.890' AS DateTime))
INSERT [dbo].[Usuario] ([Id], [Matricula], [Email], [Nome], [Perfil], [Senha], [Foto], [Biografia], [Celular], [Genero], [Curso], [DataCadastro], [DataAtualizacao]) VALUES (N'433284dc-b33a-404d-bc93-648ba52ff16e', N'GU3015084', N'cordeiro.gabriela@aluno.ifsp.edu.br', N'Gabriela Cordeiro', 0, N'276E697E74E8B5264465139A480DB556', N'GU3015084.jpg', NULL, NULL, NULL, N'ADS - Análise e Desenvolvimento de Sistems', CAST(N'2023-05-14T19:03:41.890' AS DateTime), CAST(N'2023-05-14T19:03:41.890' AS DateTime))
INSERT [dbo].[Usuario] ([Id], [Matricula], [Email], [Nome], [Perfil], [Senha], [Foto], [Biografia], [Celular], [Genero], [Curso], [DataCadastro], [DataAtualizacao]) VALUES (N'e8324e30-def9-4a22-b881-6d0069ef5c57', N'GU3025829', N'lucask@aluno.ifsp.edu.br', N'Lucas ALENCAR', 0, N'DC53FC4F621C80BDC2FA0329A6123708', N'GU3025829.jpg', NULL, NULL, NULL, N'ADS - Análise e Desenvolvimento de Sistems', CAST(N'2023-05-14T19:03:41.890' AS DateTime), CAST(N'2023-05-14T19:03:41.890' AS DateTime))
INSERT [dbo].[Usuario] ([Id], [Matricula], [Email], [Nome], [Perfil], [Senha], [Foto], [Biografia], [Celular], [Genero], [Curso], [DataCadastro], [DataAtualizacao]) VALUES (N'9b238626-65dc-4c06-836c-71ac8fddb983', N'GU3017141', N'everton.r@aluno.ifsp.edu.br', N'Everton Santos', 0, N'C99868052FB8A76E4F4B9F2EE67D39FB', N'GU3017141.jpg', NULL, NULL, NULL, N'ADS - Análise e Desenvolvimento de Sistems', CAST(N'2023-05-14T19:03:41.890' AS DateTime), CAST(N'2023-05-14T19:03:41.890' AS DateTime))
INSERT [dbo].[Usuario] ([Id], [Matricula], [Email], [Nome], [Perfil], [Senha], [Foto], [Biografia], [Celular], [Genero], [Curso], [DataCadastro], [DataAtualizacao]) VALUES (N'ffbc387b-9f8f-4395-9ccb-c6005c661b5e', N'GU3015131', N'anapaula@aluno.ifsp.edu.br', N'Ana Paula Castro', 0, N'276B6C4692E78D4799C12ADA515BC3E4', N'GU3015131.jpg', NULL, NULL, NULL, N'ADS - Análise e Desenvolvimento de Sistems', CAST(N'2023-05-14T19:03:41.890' AS DateTime), CAST(N'2023-05-14T19:03:41.890' AS DateTime))
GO
ALTER TABLE [dbo].[Comentario] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Curtida] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Disciplina] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[DisciplinaProfessor] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Preferencia] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Professor] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Publicacao] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Usuario] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Comentario]  WITH CHECK ADD FOREIGN KEY([Id_Publicacao])
REFERENCES [dbo].[Publicacao] ([Id])
GO
ALTER TABLE [dbo].[Comentario]  WITH CHECK ADD FOREIGN KEY([Id_Usuario])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[Curtida]  WITH CHECK ADD FOREIGN KEY([Id_Publicacao])
REFERENCES [dbo].[Publicacao] ([Id])
GO
ALTER TABLE [dbo].[Curtida]  WITH CHECK ADD FOREIGN KEY([Id_Usuario])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[DisciplinaProfessor]  WITH CHECK ADD FOREIGN KEY([Id_Disciplina])
REFERENCES [dbo].[Disciplina] ([Id])
GO
ALTER TABLE [dbo].[DisciplinaProfessor]  WITH CHECK ADD FOREIGN KEY([Id_Professor])
REFERENCES [dbo].[Professor] ([Id])
GO
ALTER TABLE [dbo].[Preferencia]  WITH CHECK ADD FOREIGN KEY([Id_Usuario])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[Publicacao]  WITH CHECK ADD FOREIGN KEY([Id_Disciplina_Professor])
REFERENCES [dbo].[DisciplinaProfessor] ([Id])
GO
ALTER TABLE [dbo].[Publicacao]  WITH CHECK ADD FOREIGN KEY([Id_Usuario])
REFERENCES [dbo].[Usuario] ([Id])
GO
