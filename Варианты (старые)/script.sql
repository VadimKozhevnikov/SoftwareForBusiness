USE [master]
GO
/****** Object:  Database [DB_OOO_Sportivnyue_Tovaryu2]    Script Date: 10/19/2023 5:57:19 PM ******/
CREATE DATABASE [DB_OOO_Sportivnyue_Tovaryu2]
GO
USE [DB_OOO_Sportivnyue_Tovaryu2]
GO
/****** Object:  Table [dbo].[Kategoria]    Script Date: 10/19/2023 5:57:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kategoria](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Kategoria] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Kategoria] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 10/19/2023 5:57:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Number] [int] NOT NULL,
	[Content] [nvarchar](50) NOT NULL,
	[DateOrder] [date] NOT NULL,
	[DateDelivery] [date] NOT NULL,
	[PointIssueId] [int] NOT NULL,
	[UserId] [int] NULL,
	[CodeToGet] [nvarchar](5) NOT NULL,
	[StatusId] [int] NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PointIssue]    Script Date: 10/19/2023 5:57:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PointIssue](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Index] [nvarchar](6) NOT NULL,
	[City] [nvarchar](50) NOT NULL,
	[Street] [nvarchar](50) NOT NULL,
	[Home] [int] NOT NULL,
 CONSTRAINT [PK_PointIssue] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Postavshik]    Script Date: 10/19/2023 5:57:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Postavshik](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Postavshik] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Postavshik] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proizvoditel]    Script Date: 10/19/2023 5:57:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proizvoditel](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Proizvoditel] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Proizvoditel] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 10/19/2023 5:57:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ststusld]    Script Date: 10/19/2023 5:57:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ststusld](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Statusld] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Ststusld] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tovar]    Script Date: 10/19/2023 5:57:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tovar](
	[ID] [int] NOT NULL,
	[Artikul] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[EdIzmerenia] [nvarchar](50) NOT NULL,
	[Stoimost] [int] NOT NULL,
	[MaxSkidka] [int] NOT NULL,
	[Proizvoditel] [int] NOT NULL,
	[Postavshik] [int] NOT NULL,
	[Kategoria] [int] NOT NULL,
	[DestviaSkidka] [int] NOT NULL,
	[KolSklad] [int] NOT NULL,
	[Opisania] [nvarchar](150) NOT NULL,
	[Imet] [nvarchar](50) NULL,
 CONSTRAINT [PK_Tovar] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 10/19/2023 5:57:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NOT NULL,
	[Surname] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Patronymic] [nvarchar](50) NOT NULL,
	[Login] [nvarchar](50) NOT NULL,
	[Passer] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Kategoria] ON 

INSERT [dbo].[Kategoria] ([ID], [Kategoria]) VALUES (1, N'Спортивный инвентарь')
INSERT [dbo].[Kategoria] ([ID], [Kategoria]) VALUES (2, N'Одежда')
SET IDENTITY_INSERT [dbo].[Kategoria] OFF
GO
INSERT [dbo].[Orders] ([Number], [Content], [DateOrder], [DateDelivery], [PointIssueId], [UserId], [CodeToGet], [StatusId]) VALUES (1, N'А112Т4, 2, G598Y6, 2', CAST(N'2022-01-07' AS Date), CAST(N'2024-01-07' AS Date), 10, 7, N'401', 1)
INSERT [dbo].[Orders] ([Number], [Content], [DateOrder], [DateDelivery], [PointIssueId], [UserId], [CodeToGet], [StatusId]) VALUES (2, N'F746E6, 3, D830R5, 3', CAST(N'2022-11-12' AS Date), CAST(N'2024-11-12' AS Date), 11, 8, N'402', 1)
INSERT [dbo].[Orders] ([Number], [Content], [DateOrder], [DateDelivery], [PointIssueId], [UserId], [CodeToGet], [StatusId]) VALUES (3, N'D648N7, 10, F735B6, 10', CAST(N'2019-01-12' AS Date), CAST(N'2020-01-12' AS Date), 12, 9, N'403', 2)
INSERT [dbo].[Orders] ([Number], [Content], [DateOrder], [DateDelivery], [PointIssueId], [UserId], [CodeToGet], [StatusId]) VALUES (4, N'F937G4, 1, E324U7, 1', CAST(N'2023-01-12' AS Date), CAST(N'2024-01-12' AS Date), 13, 10, N'404', 1)
INSERT [dbo].[Orders] ([Number], [Content], [DateOrder], [DateDelivery], [PointIssueId], [UserId], [CodeToGet], [StatusId]) VALUES (5, N'N483G5, 10, D038G6, 10', CAST(N'2023-01-12' AS Date), CAST(N'2024-01-12' AS Date), 14, NULL, N'405', 1)
INSERT [dbo].[Orders] ([Number], [Content], [DateOrder], [DateDelivery], [PointIssueId], [UserId], [CodeToGet], [StatusId]) VALUES (6, N'G480F5, 2, C324S5, 2', CAST(N'2023-12-12' AS Date), CAST(N'2024-12-12' AS Date), 15, NULL, N'406', 1)
INSERT [dbo].[Orders] ([Number], [Content], [DateOrder], [DateDelivery], [PointIssueId], [UserId], [CodeToGet], [StatusId]) VALUES (7, N'V312R4, 1, J4DF5E, 1', CAST(N'2022-12-14' AS Date), CAST(N'2023-12-14' AS Date), 16, NULL, N'407', 2)
INSERT [dbo].[Orders] ([Number], [Content], [DateOrder], [DateDelivery], [PointIssueId], [UserId], [CodeToGet], [StatusId]) VALUES (8, N'G522B5, 3, K432G6, 3', CAST(N'2022-01-01' AS Date), CAST(N'2023-01-01' AS Date), 17, NULL, N'408', 2)
INSERT [dbo].[Orders] ([Number], [Content], [DateOrder], [DateDelivery], [PointIssueId], [UserId], [CodeToGet], [StatusId]) VALUES (9, N'F047J7, 1, S374B5, 1', CAST(N'2023-01-04' AS Date), CAST(N'2024-01-04' AS Date), 18, NULL, N'409', 1)
INSERT [dbo].[Orders] ([Number], [Content], [DateOrder], [DateDelivery], [PointIssueId], [UserId], [CodeToGet], [StatusId]) VALUES (10, N'N836R5, 5, D927K3, 5', CAST(N'2022-01-12' AS Date), CAST(N'2023-01-12' AS Date), 19, NULL, N'410', 2)
GO
SET IDENTITY_INSERT [dbo].[PointIssue] ON 

INSERT [dbo].[PointIssue] ([Id], [Index], [City], [Street], [Home]) VALUES (1, N'344288', N' г. Дубна', N' ул. Чехова', 1)
INSERT [dbo].[PointIssue] ([Id], [Index], [City], [Street], [Home]) VALUES (2, N'614164', N' г.Дубна', N'  ул. Степная', 30)
INSERT [dbo].[PointIssue] ([Id], [Index], [City], [Street], [Home]) VALUES (3, N'394242', N' г. Дубна', N' ул. Коммунистическая', 43)
INSERT [dbo].[PointIssue] ([Id], [Index], [City], [Street], [Home]) VALUES (4, N'660540', N' г. Дубна', N' ул. Солнечная', 25)
INSERT [dbo].[PointIssue] ([Id], [Index], [City], [Street], [Home]) VALUES (5, N'125837', N' г. Дубна', N' ул. Шоссейная', 40)
INSERT [dbo].[PointIssue] ([Id], [Index], [City], [Street], [Home]) VALUES (6, N'125703', N' г. Дубна', N' ул. Партизанская', 49)
INSERT [dbo].[PointIssue] ([Id], [Index], [City], [Street], [Home]) VALUES (7, N'625283', N' г. Дубна', N' ул. Победы', 46)
INSERT [dbo].[PointIssue] ([Id], [Index], [City], [Street], [Home]) VALUES (8, N'614611', N' г. Дубна', N' ул. Молодежная', 50)
INSERT [dbo].[PointIssue] ([Id], [Index], [City], [Street], [Home]) VALUES (9, N'454311', N' г.Дубна', N' ул. Новая', 19)
INSERT [dbo].[PointIssue] ([Id], [Index], [City], [Street], [Home]) VALUES (10, N'660007', N' г.Дубна', N' ул. Октябрьская', 19)
INSERT [dbo].[PointIssue] ([Id], [Index], [City], [Street], [Home]) VALUES (11, N'603036', N' г. Дубна', N' ул. Садовая', 4)
INSERT [dbo].[PointIssue] ([Id], [Index], [City], [Street], [Home]) VALUES (12, N'450983', N' г.Дубна', N' ул. Комсомольская', 26)
INSERT [dbo].[PointIssue] ([Id], [Index], [City], [Street], [Home]) VALUES (13, N'394782', N' г. Дубна', N' ул. Чехова', 3)
INSERT [dbo].[PointIssue] ([Id], [Index], [City], [Street], [Home]) VALUES (14, N'603002', N' г. Дубна', N' ул. Дзержинского', 28)
INSERT [dbo].[PointIssue] ([Id], [Index], [City], [Street], [Home]) VALUES (15, N'450558', N' г. Дубна', N' ул. Набережная', 30)
INSERT [dbo].[PointIssue] ([Id], [Index], [City], [Street], [Home]) VALUES (16, N'394060', N' г.Дубна', N' ул. Фрунзе', 43)
INSERT [dbo].[PointIssue] ([Id], [Index], [City], [Street], [Home]) VALUES (17, N'410661', N' г. Дубна', N' ул. Школьная', 50)
INSERT [dbo].[PointIssue] ([Id], [Index], [City], [Street], [Home]) VALUES (18, N'625590', N' г. Дубна', N' ул. Коммунистическая', 20)
INSERT [dbo].[PointIssue] ([Id], [Index], [City], [Street], [Home]) VALUES (19, N'625683', N' г. Дубна', N' ул. 8 Марта', 5)
INSERT [dbo].[PointIssue] ([Id], [Index], [City], [Street], [Home]) VALUES (20, N'400562', N' г. Дубна', N' ул. Зеленая', 32)
INSERT [dbo].[PointIssue] ([Id], [Index], [City], [Street], [Home]) VALUES (21, N'614510', N' г. Дубна', N' ул. Маяковского', 47)
INSERT [dbo].[PointIssue] ([Id], [Index], [City], [Street], [Home]) VALUES (22, N'410542', N' г. Дубна', N' ул. Светлая', 46)
INSERT [dbo].[PointIssue] ([Id], [Index], [City], [Street], [Home]) VALUES (23, N'620839', N' г. Дубна', N' ул. Цветочная', 8)
INSERT [dbo].[PointIssue] ([Id], [Index], [City], [Street], [Home]) VALUES (24, N'443890', N' г. Дубна', N' ул. Коммунистическая', 1)
INSERT [dbo].[PointIssue] ([Id], [Index], [City], [Street], [Home]) VALUES (25, N'603379', N' г. Дубна', N' ул. Спортивная', 46)
INSERT [dbo].[PointIssue] ([Id], [Index], [City], [Street], [Home]) VALUES (26, N'603721', N' г. Дубна', N' ул. Гоголя', 41)
INSERT [dbo].[PointIssue] ([Id], [Index], [City], [Street], [Home]) VALUES (27, N'410172', N' г. Дубна', N' ул. Северная', 13)
INSERT [dbo].[PointIssue] ([Id], [Index], [City], [Street], [Home]) VALUES (28, N'420151', N' г. Дубна', N' ул. Вишневая', 32)
INSERT [dbo].[PointIssue] ([Id], [Index], [City], [Street], [Home]) VALUES (29, N'125061', N' г. Дубна', N' ул. Подгорная', 8)
INSERT [dbo].[PointIssue] ([Id], [Index], [City], [Street], [Home]) VALUES (30, N'630370', N' г. Дубна', N' ул. Шоссейная', 24)
INSERT [dbo].[PointIssue] ([Id], [Index], [City], [Street], [Home]) VALUES (31, N'614753', N' г. Дубна', N' ул. Полевая', 35)
INSERT [dbo].[PointIssue] ([Id], [Index], [City], [Street], [Home]) VALUES (32, N'426030', N' г. Дубна', N' ул. Маяковского', 44)
INSERT [dbo].[PointIssue] ([Id], [Index], [City], [Street], [Home]) VALUES (33, N'450375', N' г. Дубна ', N'ул. Клубная', 44)
INSERT [dbo].[PointIssue] ([Id], [Index], [City], [Street], [Home]) VALUES (34, N'625560', N' г. Дубна', N' ул. Некрасова', 12)
INSERT [dbo].[PointIssue] ([Id], [Index], [City], [Street], [Home]) VALUES (35, N'630201', N' г. Дубна', N' ул. Комсомольская', 17)
INSERT [dbo].[PointIssue] ([Id], [Index], [City], [Street], [Home]) VALUES (36, N'190949', N' г. Дубна', N' ул. Мичурина', 26)
SET IDENTITY_INSERT [dbo].[PointIssue] OFF
GO
SET IDENTITY_INSERT [dbo].[Postavshik] ON 

INSERT [dbo].[Postavshik] ([ID], [Postavshik]) VALUES (1, N'Спортмастер')
INSERT [dbo].[Postavshik] ([ID], [Postavshik]) VALUES (2, N'Декатлон')
SET IDENTITY_INSERT [dbo].[Postavshik] OFF
GO
SET IDENTITY_INSERT [dbo].[Proizvoditel] ON 

INSERT [dbo].[Proizvoditel] ([ID], [Proizvoditel]) VALUES (1, N'X-Match')
INSERT [dbo].[Proizvoditel] ([ID], [Proizvoditel]) VALUES (2, N'Perfetto Sport')
INSERT [dbo].[Proizvoditel] ([ID], [Proizvoditel]) VALUES (3, N'ROMANA Next')
INSERT [dbo].[Proizvoditel] ([ID], [Proizvoditel]) VALUES (4, N'Moby Kids')
INSERT [dbo].[Proizvoditel] ([ID], [Proizvoditel]) VALUES (5, N'playToday')
INSERT [dbo].[Proizvoditel] ([ID], [Proizvoditel]) VALUES (6, N'Совтехстром')
INSERT [dbo].[Proizvoditel] ([ID], [Proizvoditel]) VALUES (7, N'Abtoys')
INSERT [dbo].[Proizvoditel] ([ID], [Proizvoditel]) VALUES (8, N'DFC')
INSERT [dbo].[Proizvoditel] ([ID], [Proizvoditel]) VALUES (9, N'Nordway')
INSERT [dbo].[Proizvoditel] ([ID], [Proizvoditel]) VALUES (10, N'Ridex')
INSERT [dbo].[Proizvoditel] ([ID], [Proizvoditel]) VALUES (11, N'Salomon')
INSERT [dbo].[Proizvoditel] ([ID], [Proizvoditel]) VALUES (12, N'Mikasa')
INSERT [dbo].[Proizvoditel] ([ID], [Proizvoditel]) VALUES (13, N'Molten')
INSERT [dbo].[Proizvoditel] ([ID], [Proizvoditel]) VALUES (14, N'Colton')
INSERT [dbo].[Proizvoditel] ([ID], [Proizvoditel]) VALUES (15, N'Atemi')
INSERT [dbo].[Proizvoditel] ([ID], [Proizvoditel]) VALUES (16, N'Green Hill')
INSERT [dbo].[Proizvoditel] ([ID], [Proizvoditel]) VALUES (17, N'SKIF')
INSERT [dbo].[Proizvoditel] ([ID], [Proizvoditel]) VALUES (18, N'Starfit')
INSERT [dbo].[Proizvoditel] ([ID], [Proizvoditel]) VALUES (19, N'Bradex')
INSERT [dbo].[Proizvoditel] ([ID], [Proizvoditel]) VALUES (20, N'Demix')
SET IDENTITY_INSERT [dbo].[Proizvoditel] OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([Id], [Name]) VALUES (1, N'Администратор')
INSERT [dbo].[Roles] ([Id], [Name]) VALUES (2, N'Менеджер')
INSERT [dbo].[Roles] ([Id], [Name]) VALUES (3, N'Клиент')
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
SET IDENTITY_INSERT [dbo].[Ststusld] ON 

INSERT [dbo].[Ststusld] ([Id], [Statusld]) VALUES (1, N'Новый ')
INSERT [dbo].[Ststusld] ([Id], [Statusld]) VALUES (2, N'Завершен')
SET IDENTITY_INSERT [dbo].[Ststusld] OFF
GO
INSERT [dbo].[Tovar] ([ID], [Artikul], [Name], [EdIzmerenia], [Stoimost], [MaxSkidka], [Proizvoditel], [Postavshik], [Kategoria], [DestviaSkidka], [KolSklad], [Opisania], [Imet]) VALUES (1, N'А112Т4', N'Боксерская груша', N'шт.', 778, 30, 1, 1, 1, 5, 6, N'Боксерская груша 1 черная', N'А112Т4.jpg')
INSERT [dbo].[Tovar] ([ID], [Artikul], [Name], [EdIzmerenia], [Stoimost], [MaxSkidka], [Proizvoditel], [Postavshik], [Kategoria], [DestviaSkidka], [KolSklad], [Opisania], [Imet]) VALUES (2, N'G598Y6', N'Спортивный мат', N'шт.', 2390, 15, 2, 2, 1, 2, 16, N'Спортивный мат 100x100x10 см 2 № 3 бежевый', N'G598Y6.jpg')
INSERT [dbo].[Tovar] ([ID], [Artikul], [Name], [EdIzmerenia], [Stoimost], [MaxSkidka], [Proizvoditel], [Postavshik], [Kategoria], [DestviaSkidka], [KolSklad], [Opisania], [Imet]) VALUES (3, N'F746E6', N'Шведская стенка', N'шт.', 9900, 10, 3, 2, 1, 3, 5, N'Шведская стенка 3, pastel', N'F746E6.jpg')
INSERT [dbo].[Tovar] ([ID], [Artikul], [Name], [EdIzmerenia], [Stoimost], [MaxSkidka], [Proizvoditel], [Postavshik], [Kategoria], [DestviaSkidka], [KolSklad], [Opisania], [Imet]) VALUES (4, N'D830R5', N'Тренажер прыжков', N'шт.', 1120, 15, 4, 1, 1, 4, 8, N'Тренажер для прыжков 4 Moby-Jumper со счетчиком', N'D830R5.jpg')
INSERT [dbo].[Tovar] ([ID], [Artikul], [Name], [EdIzmerenia], [Stoimost], [MaxSkidka], [Proizvoditel], [Postavshik], [Kategoria], [DestviaSkidka], [KolSklad], [Opisania], [Imet]) VALUES (5, N'B538G6', N'Спортивный костюм', N'шт.', 839, 5, 5, 1, 2, 3, 17, N'Спортивный костюм 5 (футболка + шорты)', N'B538G6.jpg')
INSERT [dbo].[Tovar] ([ID], [Artikul], [Name], [EdIzmerenia], [Stoimost], [MaxSkidka], [Proizvoditel], [Postavshik], [Kategoria], [DestviaSkidka], [KolSklad], [Opisania], [Imet]) VALUES (6, N'D648N7', N'Набор для хоккея', N'шт.', 350, 10, 6, 2, 1, 4, 7, N'Набор для хоккея 6', N'D648N7.jpg')
INSERT [dbo].[Tovar] ([ID], [Artikul], [Name], [EdIzmerenia], [Stoimost], [MaxSkidka], [Proizvoditel], [Postavshik], [Kategoria], [DestviaSkidka], [KolSklad], [Opisania], [Imet]) VALUES (7, N'F735B6', N'Игровой набор', N'шт.', 320, 15, 6, 2, 1, 2, 9, N'Игровой набор 6 Кегли и шары', N'F735B6.jpg')
INSERT [dbo].[Tovar] ([ID], [Artikul], [Name], [EdIzmerenia], [Stoimost], [MaxSkidka], [Proizvoditel], [Postavshik], [Kategoria], [DestviaSkidka], [KolSklad], [Opisania], [Imet]) VALUES (8, N'F937G4', N'Игровой набор', N'шт.', 480, 10, 7, 1, 1, 4, 12, N'Набор 7 Бадминтон и теннис ', N'F937G4.jpg')
INSERT [dbo].[Tovar] ([ID], [Artikul], [Name], [EdIzmerenia], [Stoimost], [MaxSkidka], [Proizvoditel], [Postavshik], [Kategoria], [DestviaSkidka], [KolSklad], [Opisania], [Imet]) VALUES (9, N'E324U7', N'Велотренажер', N'шт.', 6480, 25, 8, 1, 1, 5, 5, N'Велотренажер двойной 8 B804 dual bike', N'E324U7.jpg')
INSERT [dbo].[Tovar] ([ID], [Artikul], [Name], [EdIzmerenia], [Stoimost], [MaxSkidka], [Proizvoditel], [Postavshik], [Kategoria], [DestviaSkidka], [KolSklad], [Opisania], [Imet]) VALUES (10, N'G403T5', N'Тюбинг', N'шт.', 1450, 15, 9, 1, 1, 4, 13, N'Тюбинг 9, 73 см', N'G403T5.jpg')
INSERT [dbo].[Tovar] ([ID], [Artikul], [Name], [EdIzmerenia], [Stoimost], [MaxSkidka], [Proizvoditel], [Postavshik], [Kategoria], [DestviaSkidka], [KolSklad], [Opisania], [Imet]) VALUES (11, N'N483G5', N'Клюшка', N'шт.', 1299, 10, 9, 2, 1, 3, 4, N'Клюшка 9 NDW300 (2019/2020) SR лев. 19 150см', N'')
INSERT [dbo].[Tovar] ([ID], [Artikul], [Name], [EdIzmerenia], [Stoimost], [MaxSkidka], [Proizvoditel], [Postavshik], [Kategoria], [DestviaSkidka], [KolSklad], [Opisania], [Imet]) VALUES (12, N'D038G6', N'Лыжный комплект', N'шт.', 3000, 30, 9, 2, 1, 4, 23, N'Лыжный комплект беговые 9 XC Classic, 45-45-45мм, 160см', N'')
INSERT [dbo].[Tovar] ([ID], [Artikul], [Name], [EdIzmerenia], [Stoimost], [MaxSkidka], [Proizvoditel], [Postavshik], [Kategoria], [DestviaSkidka], [KolSklad], [Opisania], [Imet]) VALUES (13, N'G480F5', N'Ролики', N'шт.', 1600, 15, 10, 1, 1, 4, 7, N'Коньки роликовые 10 Cricket жен. ABEC 3 кол.:72мм р.:39-42 синий', N'')
INSERT [dbo].[Tovar] ([ID], [Artikul], [Name], [EdIzmerenia], [Stoimost], [MaxSkidka], [Proizvoditel], [Postavshik], [Kategoria], [DestviaSkidka], [KolSklad], [Opisania], [Imet]) VALUES (14, N'C324S5', N'Шлем', N'шт.', 4000, 10, 11, 2, 1, 5, 16, N'Шлем г.л./сноуб. 11 Grom р.:KS черный (L40836800)', N'')
INSERT [dbo].[Tovar] ([ID], [Artikul], [Name], [EdIzmerenia], [Stoimost], [MaxSkidka], [Proizvoditel], [Postavshik], [Kategoria], [DestviaSkidka], [KolSklad], [Opisania], [Imet]) VALUES (15, N'V312R4', N'Мяч', N'шт.', 4150, 20, 12, 2, 1, 2, 5, N'Мяч волейбольный 12 VT370W, для зала, 5-й размер, желтый/синий', N'')
INSERT [dbo].[Tovar] ([ID], [Artikul], [Name], [EdIzmerenia], [Stoimost], [MaxSkidka], [Proizvoditel], [Postavshik], [Kategoria], [DestviaSkidka], [KolSklad], [Opisania], [Imet]) VALUES (16, N'J4DF5E', N'Насос', N'шт.', 300, 5, 13, 1, 1, 4, 12, N'Насос 13 HP-18-B для мячей мультиколор', N'')
INSERT [dbo].[Tovar] ([ID], [Artikul], [Name], [EdIzmerenia], [Stoimost], [MaxSkidka], [Proizvoditel], [Postavshik], [Kategoria], [DestviaSkidka], [KolSklad], [Opisania], [Imet]) VALUES (17, N'G522B5', N'Ласты', N'шт.', 1980, 15, 14, 2, 1, 3, 6, N'Ласты 14 CF-02 для плавания р.:33-34 серый/голубой', N'')
INSERT [dbo].[Tovar] ([ID], [Artikul], [Name], [EdIzmerenia], [Stoimost], [MaxSkidka], [Proizvoditel], [Postavshik], [Kategoria], [DestviaSkidka], [KolSklad], [Opisania], [Imet]) VALUES (18, N'K432G6', N'Шапочка для плавания', N'шт.', 440, 25, 15, 2, 1, 5, 17, N'Шапочка для плавания 15 PU 140 ткань с покрытием желтый', N'')
INSERT [dbo].[Tovar] ([ID], [Artikul], [Name], [EdIzmerenia], [Stoimost], [MaxSkidka], [Proizvoditel], [Postavshik], [Kategoria], [DestviaSkidka], [KolSklad], [Opisania], [Imet]) VALUES (19, N'J532D4', N'Перчатки для карате', N'шт.', 1050, 15, 16, 1, 1, 3, 5, N'Перчатки для каратэ 16 KMС-6083 L красный', N'')
INSERT [dbo].[Tovar] ([ID], [Artikul], [Name], [EdIzmerenia], [Stoimost], [MaxSkidka], [Proizvoditel], [Postavshik], [Kategoria], [DestviaSkidka], [KolSklad], [Opisania], [Imet]) VALUES (21, N'V423D4', N'Штанга', N'шт.', 5600, 10, 18, 2, 1, 3, 8, N'Штанга 18 BB-401 30кг пласт. черный ', N'')
INSERT [dbo].[Tovar] ([ID], [Artikul], [Name], [EdIzmerenia], [Stoimost], [MaxSkidka], [Proizvoditel], [Postavshik], [Kategoria], [DestviaSkidka], [KolSklad], [Opisania], [Imet]) VALUES (22, N'K937A5', N'Гиря', N'шт.', 890, 5, 18, 2, 1, 4, 10, N'Гиря 18 ГМБ4 мягкое 4кг синий/оранжевый', N'')
INSERT [dbo].[Tovar] ([ID], [Artikul], [Name], [EdIzmerenia], [Stoimost], [MaxSkidka], [Proizvoditel], [Postavshik], [Kategoria], [DestviaSkidka], [KolSklad], [Opisania], [Imet]) VALUES (23, N'F047J7', N'Коврик', N'шт.', 720, 15, 19, 1, 1, 5, 11, N'Коврик 19 для мягкой йоги дл.:1730мм ш.:610мм т.:3мм серый', N'')
INSERT [dbo].[Tovar] ([ID], [Artikul], [Name], [EdIzmerenia], [Stoimost], [MaxSkidka], [Proizvoditel], [Postavshik], [Kategoria], [DestviaSkidka], [KolSklad], [Opisania], [Imet]) VALUES (24, N'S374B5', N'Ролик для йоги', N'шт.', 700, 10, 19, 1, 1, 3, 12, N'Ролик для йоги 19 Туба d=14см ш.:33см оранжевый', N'')
INSERT [dbo].[Tovar] ([ID], [Artikul], [Name], [EdIzmerenia], [Stoimost], [MaxSkidka], [Proizvoditel], [Postavshik], [Kategoria], [DestviaSkidka], [KolSklad], [Opisania], [Imet]) VALUES (25, N'F687G5', N'Защита голени', N'шт.', 1900, 15, 16, 1, 1, 4, 6, N'Защита голени 16 Panther, L, синий/черный', N'')
INSERT [dbo].[Tovar] ([ID], [Artikul], [Name], [EdIzmerenia], [Stoimost], [MaxSkidka], [Proizvoditel], [Postavshik], [Kategoria], [DestviaSkidka], [KolSklad], [Opisania], [Imet]) VALUES (26, N'N892G6', N'Очки для плавания', N'шт.', 500, 5, 15, 2, 1, 5, 14, N'Очки для плавания 15 N8401 синий', N'')
INSERT [dbo].[Tovar] ([ID], [Artikul], [Name], [EdIzmerenia], [Stoimost], [MaxSkidka], [Proizvoditel], [Postavshik], [Kategoria], [DestviaSkidka], [KolSklad], [Opisania], [Imet]) VALUES (27, N'D893W4', N'Мяч', N'шт.', 900, 5, 20, 1, 1, 2, 5, N'Мяч футбольный DEMIX 1STLS1JWWW, универсальный, 4-й размер, белый/зеленый', N'')
INSERT [dbo].[Tovar] ([ID], [Artikul], [Name], [EdIzmerenia], [Stoimost], [MaxSkidka], [Proizvoditel], [Postavshik], [Kategoria], [DestviaSkidka], [KolSklad], [Opisania], [Imet]) VALUES (28, N'N836R5', N'Коньки', N'шт.', 2000, 10, 15, 2, 1, 3, 16, N'Коньки 15 AKSK01DXS, раздвижные, прогулочные, унисекс, 27-30, черный/зеленый', N'')
INSERT [dbo].[Tovar] ([ID], [Artikul], [Name], [EdIzmerenia], [Stoimost], [MaxSkidka], [Proizvoditel], [Postavshik], [Kategoria], [DestviaSkidka], [KolSklad], [Opisania], [Imet]) VALUES (29, N'D927K3', N'Перчатки ', N'шт.', 660, 15, 18, 2, 1, 4, 3, N'Перчатки 18 SU-125 атлетические S черный', N'')
INSERT [dbo].[Tovar] ([ID], [Artikul], [Name], [EdIzmerenia], [Stoimost], [MaxSkidka], [Proizvoditel], [Postavshik], [Kategoria], [DestviaSkidka], [KolSklad], [Opisania], [Imet]) VALUES (30, N'V392H7', N'Степ-платформа', N'шт.', 4790, 10, 18, 1, 1, 3, 15, N'Степ-платформа 18 SP-204 серый/черный', N'')
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [RoleId], [Surname], [Name], [Patronymic], [Login], [Passer]) VALUES (1, 1, N'Пахомова', N'Аиша', N'Анатольевна', N'm4ic8j5qgstw@gmail.com', N'2L6KZG')
INSERT [dbo].[Users] ([Id], [RoleId], [Surname], [Name], [Patronymic], [Login], [Passer]) VALUES (2, 1, N'Жуков', N'Роман', N'Богданович', N'd43zfg9tlsyv@gmail.com', N'uzWC67')
INSERT [dbo].[Users] ([Id], [RoleId], [Surname], [Name], [Patronymic], [Login], [Passer]) VALUES (3, 1, N'Киселева', N'Анастасия', N'Максимовна', N'8ohgisf6k45w@outlook.com', N'8ntwUp')
INSERT [dbo].[Users] ([Id], [RoleId], [Surname], [Name], [Patronymic], [Login], [Passer]) VALUES (4, 2, N'Григорьева', N'Арина', N'Арсентьевна', N'hi1brwj46czx@mail.com', N'YOyhfR')
INSERT [dbo].[Users] ([Id], [RoleId], [Surname], [Name], [Patronymic], [Login], [Passer]) VALUES (5, 2, N'Иванов', N'Лев', N'Михайлович', N'fvkbcamhlj52@gmail.com', N'RSbvHv')
INSERT [dbo].[Users] ([Id], [RoleId], [Surname], [Name], [Patronymic], [Login], [Passer]) VALUES (6, 2, N'Григорьев', N'Лев', N'Давидович', N'9qxnce8jwruv@gmail.com', N'rwVDh9')
INSERT [dbo].[Users] ([Id], [RoleId], [Surname], [Name], [Patronymic], [Login], [Passer]) VALUES (7, 3, N'Поляков', N'Степан', N'Егорович', N'dotiex942p1r@gmail.com', N'LdNyos')
INSERT [dbo].[Users] ([Id], [RoleId], [Surname], [Name], [Patronymic], [Login], [Passer]) VALUES (8, 3, N'Леонова', N'Алиса', N'Кирилловна', N'n0bmi2h1xral@tutanota.com', N'gynQMT')
INSERT [dbo].[Users] ([Id], [RoleId], [Surname], [Name], [Patronymic], [Login], [Passer]) VALUES (9, 3, N'Яковлев', N'Платон', N'Константинович', N'sfm3t278kdvz@yahoo.com', N'AtnDjr')
INSERT [dbo].[Users] ([Id], [RoleId], [Surname], [Name], [Patronymic], [Login], [Passer]) VALUES (10, 3, N'Ковалева', N'Ева', N'Яковлевна', N'ilb8rdut0v7e@mail.com', N'JlFRCZ')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_PointIssue] FOREIGN KEY([PointIssueId])
REFERENCES [dbo].[PointIssue] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_PointIssue]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Ststusld] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Ststusld] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Ststusld]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Users]
GO
ALTER TABLE [dbo].[Tovar]  WITH CHECK ADD  CONSTRAINT [FK_Tovar_Kategoria] FOREIGN KEY([Kategoria])
REFERENCES [dbo].[Kategoria] ([ID])
GO
ALTER TABLE [dbo].[Tovar] CHECK CONSTRAINT [FK_Tovar_Kategoria]
GO
ALTER TABLE [dbo].[Tovar]  WITH CHECK ADD  CONSTRAINT [FK_Tovar_Postavshik] FOREIGN KEY([Postavshik])
REFERENCES [dbo].[Postavshik] ([ID])
GO
ALTER TABLE [dbo].[Tovar] CHECK CONSTRAINT [FK_Tovar_Postavshik]
GO
ALTER TABLE [dbo].[Tovar]  WITH CHECK ADD  CONSTRAINT [FK_Tovar_Proizvoditel] FOREIGN KEY([Proizvoditel])
REFERENCES [dbo].[Proizvoditel] ([ID])
GO
ALTER TABLE [dbo].[Tovar] CHECK CONSTRAINT [FK_Tovar_Proizvoditel]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Roles] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Roles]
GO
USE [master]
GO
ALTER DATABASE [DB_OOO_Sportivnyue_Tovaryu2] SET  READ_WRITE 
GO
