
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Airlanes](
	[IdAirlane] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Price] [decimal](10, 2) NOT NULL,
	[CountryId] [int] NOT NULL,
 CONSTRAINT [PK__Airlanes__60E84A7DE177EE47] PRIMARY KEY CLUSTERED 
(
	[IdAirlane] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clients]    Script Date: 8/16/2020 4:11:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clients](
	[IdClient] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[MiddleName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NULL,
	[NumberPhone] [nvarchar](50) NOT NULL,
	[NationalityId] [int] NOT NULL,
	[DataPassport] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__Clients__C1961B33EAF618BF] PRIMARY KEY CLUSTERED 
(
	[IdClient] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Countries]    Script Date: 8/16/2020 4:11:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Countries](
	[IdCountry] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCountry] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hotels]    Script Date: 8/16/2020 4:11:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hotels](
	[IdHotel] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[NumberOfStarsId] [char](1) NOT NULL,
	[CountryId] [int] NOT NULL,
	[PriceOneWeek] [decimal](10, 2) NOT NULL,
 CONSTRAINT [PK__Hotels__653BCCC4770F2E84] PRIMARY KEY CLUSTERED 
(
	[IdHotel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HotelService]    Script Date: 8/16/2020 4:11:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HotelService](
	[IdHotSer] [int] IDENTITY(1,1) NOT NULL,
	[HotelId] [int] NOT NULL,
	[ServiceId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdHotSer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NumStars]    Script Date: 8/16/2020 4:11:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NumStars](
	[CountStars] [char](1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CountStars] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service]    Script Date: 8/16/2020 4:11:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[IdService] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Deskription] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdService] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TimeTravel]    Script Date: 8/16/2020 4:11:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeTravel](
	[NumberWeek] [char](1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[NumberWeek] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TouristTrip]    Script Date: 8/16/2020 4:11:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TouristTrip](
	[IdTourTrip] [int] IDENTITY(1,1) NOT NULL,
	[ClientId] [int] NOT NULL,
	[AirlineId] [int] NOT NULL,
	[TimeTravelId] [char](1) NOT NULL,
	[HotelId] [int] NOT NULL,
	[FullPrice] [decimal](10, 2) NOT NULL,
 CONSTRAINT [PK_TouristTrip] PRIMARY KEY CLUSTERED 
(
	[IdTourTrip] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 8/16/2020 4:11:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[IdUser] [int] IDENTITY(1,1) NOT NULL,
	[Login] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[IdUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (1, N'Beer', CAST(3000.00 AS Decimal(10, 2)), 9)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (2, N'Boyle-Hansen', CAST(768.00 AS Decimal(10, 2)), 9)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (4, N'Langosh-Shanahan', CAST(1038.00 AS Decimal(10, 2)), 9)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (5, N'Fay-Graham', CAST(701.00 AS Decimal(10, 2)), 9)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (6, N'Lehner and Sons', CAST(950.00 AS Decimal(10, 2)), 9)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (7, N'Toy Inc', CAST(660.00 AS Decimal(10, 2)), 9)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (8, N'Anderson-Lowe', CAST(1081.00 AS Decimal(10, 2)), 9)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (9, N'Eichmann-Corwin', CAST(989.00 AS Decimal(10, 2)), 9)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (10, N'Kerluke  Purdy and Reynolds', CAST(277.00 AS Decimal(10, 2)), 9)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (11, N'Daniel and Sons', CAST(559.00 AS Decimal(10, 2)), 9)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (12, N'Zemlak LLC', CAST(331.00 AS Decimal(10, 2)), 9)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (13, N'Haley and Sons', CAST(1033.00 AS Decimal(10, 2)), 9)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (14, N'Thompson  Schiller and Wehner', CAST(955.00 AS Decimal(10, 2)), 9)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (15, N'Konopelski  Buckridge and Douglas', CAST(711.00 AS Decimal(10, 2)), 9)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (16, N'Kozey  Tromp and Goldner', CAST(568.00 AS Decimal(10, 2)), 9)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (17, N'Abbott  Farrell and Carter', CAST(1121.00 AS Decimal(10, 2)), 9)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (18, N'Brown-Marvin', CAST(1084.00 AS Decimal(10, 2)), 9)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (19, N'Robel  Monahan and Runte', CAST(890.00 AS Decimal(10, 2)), 9)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (20, N'Purdy  Weber and Dietrich', CAST(346.00 AS Decimal(10, 2)), 9)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (21, N'Gorczany-Mante', CAST(915.00 AS Decimal(10, 2)), 9)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (22, N'Brakus  Morar and Corwin', CAST(889.00 AS Decimal(10, 2)), 9)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (23, N'Terry and Sons', CAST(378.00 AS Decimal(10, 2)), 9)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (24, N'Predovic LLC', CAST(758.00 AS Decimal(10, 2)), 9)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (25, N'Leffler  Marvin and Doyle', CAST(1028.00 AS Decimal(10, 2)), 9)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (26, N'Raynor-Ankunding', CAST(647.00 AS Decimal(10, 2)), 9)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (27, N'Robel  Hamill and Moen', CAST(996.00 AS Decimal(10, 2)), 9)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (28, N'Grant  Harris and Emard', CAST(1043.00 AS Decimal(10, 2)), 9)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (29, N'West  Mraz and Collier', CAST(344.00 AS Decimal(10, 2)), 9)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (30, N'Wiza and Sons', CAST(828.00 AS Decimal(10, 2)), 9)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (31, N'Quitzon and Sons', CAST(863.00 AS Decimal(10, 2)), 9)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (32, N'Corkery  Douglas and Jerde', CAST(894.00 AS Decimal(10, 2)), 9)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (33, N'Beier  Bernier and Schmidt', CAST(638.00 AS Decimal(10, 2)), 9)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (34, N'O''Connell Group', CAST(1058.00 AS Decimal(10, 2)), 9)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (35, N'Christiansen-Feeney', CAST(285.00 AS Decimal(10, 2)), 9)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (36, N'Hills  Satterfield and Littel', CAST(1074.00 AS Decimal(10, 2)), 9)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (37, N'Crooks LLC', CAST(613.00 AS Decimal(10, 2)), 9)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (38, N'Frami-Weber', CAST(344.00 AS Decimal(10, 2)), 9)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (39, N'Dickens Inc', CAST(1093.00 AS Decimal(10, 2)), 9)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (40, N'Tillman  Huels and Lemke', CAST(551.00 AS Decimal(10, 2)), 9)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (41, N'Hudson  Bernier and Langworth', CAST(863.00 AS Decimal(10, 2)), 9)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (42, N'Wiza  Graham and Kutch', CAST(808.00 AS Decimal(10, 2)), 9)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (43, N'O''Hara Inc', CAST(800.00 AS Decimal(10, 2)), 9)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (44, N'Corwin Group', CAST(461.00 AS Decimal(10, 2)), 9)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (45, N'Rogahn  Nolan and Terry', CAST(598.00 AS Decimal(10, 2)), 9)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (46, N'Beahan and Sons', CAST(819.00 AS Decimal(10, 2)), 9)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (47, N'Veum LLC', CAST(346.00 AS Decimal(10, 2)), 9)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (48, N'Wiegand and Sons', CAST(689.00 AS Decimal(10, 2)), 9)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (49, N'Rath-Marks', CAST(936.00 AS Decimal(10, 2)), 9)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (50, N'Howell  Rutherford and Hills', CAST(243.00 AS Decimal(10, 2)), 9)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (51, N'Homenick-Huel', CAST(418.00 AS Decimal(10, 2)), 9)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (52, N'Reynolds Group', CAST(441.00 AS Decimal(10, 2)), 9)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (53, N'Jacobson  Feest and Langworth', CAST(1077.00 AS Decimal(10, 2)), 5)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (54, N'Beatty  Hoeger and Mayer', CAST(761.00 AS Decimal(10, 2)), 29)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (55, N'Grady-Greenfelder', CAST(937.00 AS Decimal(10, 2)), 28)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (56, N'Beier  Abshire and MacGyver', CAST(455.00 AS Decimal(10, 2)), 35)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (57, N'Wyman and Sons', CAST(944.00 AS Decimal(10, 2)), 32)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (58, N'Thiel-Lynch', CAST(789.00 AS Decimal(10, 2)), 7)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (59, N'Braun  Rogahn and Emmerich', CAST(824.00 AS Decimal(10, 2)), 17)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (60, N'Kuhlman  Davis and Denesik', CAST(812.00 AS Decimal(10, 2)), 14)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (61, N'Emard Inc', CAST(803.00 AS Decimal(10, 2)), 44)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (62, N'Heidenreich  Graham and Moore', CAST(1020.00 AS Decimal(10, 2)), 42)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (63, N'Emard  Balistreri and Walter', CAST(905.00 AS Decimal(10, 2)), 16)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (64, N'DuBuque-Gusikowski', CAST(973.00 AS Decimal(10, 2)), 42)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (65, N'Ziemann-Abernathy', CAST(883.00 AS Decimal(10, 2)), 14)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (66, N'Hirthe  Pagac and Stanton', CAST(1077.00 AS Decimal(10, 2)), 29)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (67, N'Weimann  Brekke and White', CAST(1180.00 AS Decimal(10, 2)), 5)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (68, N'Abshire Inc', CAST(335.00 AS Decimal(10, 2)), 26)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (69, N'Davis  Waelchi and Kunze', CAST(760.00 AS Decimal(10, 2)), 10)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (70, N'Koelpin Inc', CAST(1117.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (71, N'Renner  Labadie and Purdy', CAST(292.00 AS Decimal(10, 2)), 37)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (72, N'Fisher  Dooley and Dach', CAST(1028.00 AS Decimal(10, 2)), 22)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (73, N'Crist LLC', CAST(727.00 AS Decimal(10, 2)), 27)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (74, N'Stark-Beier', CAST(927.00 AS Decimal(10, 2)), 31)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (75, N'Mitchell LLC', CAST(1180.00 AS Decimal(10, 2)), 20)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (76, N'Wolf LLC', CAST(721.00 AS Decimal(10, 2)), 14)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (77, N'Hickle  Anderson and Hahn', CAST(327.00 AS Decimal(10, 2)), 20)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (78, N'VonRueden  Lubowitz and Monahan', CAST(209.00 AS Decimal(10, 2)), 4)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (79, N'Purdy Inc', CAST(780.00 AS Decimal(10, 2)), 31)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (80, N'Dickens LLC', CAST(361.00 AS Decimal(10, 2)), 16)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (81, N'Reichert-Stroman', CAST(330.00 AS Decimal(10, 2)), 26)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (82, N'Jones LLC', CAST(431.00 AS Decimal(10, 2)), 34)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (83, N'Ryan  Hilll and Rau', CAST(276.00 AS Decimal(10, 2)), 4)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (84, N'Beatty and Sons', CAST(565.00 AS Decimal(10, 2)), 35)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (85, N'Hayes  Kreiger and Gislason', CAST(1054.00 AS Decimal(10, 2)), 35)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (86, N'Romaguera  Walker and Lynch', CAST(504.00 AS Decimal(10, 2)), 22)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (87, N'Windler-Von', CAST(610.00 AS Decimal(10, 2)), 34)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (88, N'Stokes Inc', CAST(487.00 AS Decimal(10, 2)), 9)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (89, N'Bogan  Heathcote and Braun', CAST(698.00 AS Decimal(10, 2)), 9)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (90, N'Lehner Group', CAST(419.00 AS Decimal(10, 2)), 30)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (91, N'Hilpert-Reichel', CAST(1001.00 AS Decimal(10, 2)), 33)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (92, N'Pagac LLC', CAST(1117.00 AS Decimal(10, 2)), 15)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (93, N'Mraz-Satterfield', CAST(333.00 AS Decimal(10, 2)), 22)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (94, N'Ziemann-Torp', CAST(1172.00 AS Decimal(10, 2)), 7)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (95, N'Mills  Harvey and Ratke', CAST(349.00 AS Decimal(10, 2)), 25)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (96, N'Kutch  Adams and Kiehn', CAST(1086.00 AS Decimal(10, 2)), 44)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (97, N'Hegmann-Brekke', CAST(989.00 AS Decimal(10, 2)), 28)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (98, N'Huel-Gorczany', CAST(1065.00 AS Decimal(10, 2)), 2)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (99, N'Kemmer  Predovic and Russel', CAST(436.00 AS Decimal(10, 2)), 7)
INSERT [dbo].[Airlanes] ([IdAirlane], [Name], [Price], [CountryId]) VALUES (100, N'Ryan  Luettgen and Murray', CAST(347.00 AS Decimal(10, 2)), 26)
SET IDENTITY_INSERT [dbo].[Clients] ON 

INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (1, N'David V.', N'Jarratt', N'Sokill', N'778-552-4045', 9, N'3100727788')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (2, N'Tome', N'Pratton', N'Flowerden', N'190-608-1098', 9, N'2476553521')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (3, N'Andreana', N'Phear', N'MacAskill', N'735-227-6992', 9, N'3333064261')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (4, N'Elana', N'Semarke', N'McDonald', N'884-172-6215', 9, N'2209560194')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (5, N'Lorri', N'Portwain', N'Giacomo', N'367-254-6352', 9, N'1785125858')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (6, N'Trumaine', N'Nyssens', N'Giorgione', N'824-963-7302', 9, N'1420698231')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (7, N'Millie', N'Petracci', N'Orht', N'489-373-5148', 9, N'2735047480')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (8, N'Kassia', N'Widmore', N'Eul', N'835-860-0760', 9, N'3169709410')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (9, N'Liv', N'Finnick', N'Widd', N'768-281-9309', 9, N'3364393933')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (11, N'Etan', N'Giraldo', N'Volette', N'173-818-0041', 9, N'2389101057')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (12, N'Myriam', N'Carson', N'MacPhee', N'113-517-2377', 9, N'1437380470')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (13, N'Winn', N'Hargreave', N'Fleming', N'913-771-8331', 9, N'3486347107')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (14, N'Frasco', N'Kempston', N'Tonnesen', N'157-184-0091', 9, N'2181269415')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (15, N'Lisha', N'Jeves', N'Maitland', N'536-305-3473', 9, N'3273387140')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (16, N'Maynord', N'Aupol', N'Dillet', N'572-774-7701', 9, N'3852082712')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (17, N'Bethany', N'Heckle', N'Kempshall', N'462-965-4266', 9, N'2053071527')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (18, N'Catharina', N'Jouanot', N'O''Hallihane', N'170-304-7306', 9, N'3913106123')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (19, N'Florinda', N'Matityahu', N'Semor', N'693-509-0592', 9, N'3676909722')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (20, N'Calida', N'McWilliam', N'McGiffin', N'918-753-8288', 9, N'1990416224')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (21, N'Abbie', N'Sumnall', N'Lindermann', N'324-455-4849', 9, N'2095295341')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (22, N'Isobel', N'Haibel', N'Brumble', N'852-960-4940', 9, N'2577867692')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (23, N'Marcie', N'Leasor', N'Dicky', N'649-671-1070', 9, N'2800575996')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (24, N'Jamie', N'Mellody', N'Stanning', N'867-398-8826', 9, N'1652757443')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (25, N'Genny', N'Vynarde', N'Blodget', N'724-210-9373', 9, N'3800929928')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (26, N'Brittan', N'Sharple', N'Duran', N'560-943-3442', 9, N'1242130043')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (27, N'Kahlil', N'Poker', N'Bromby', N'264-702-6967', 9, N'1526475708')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (28, N'Pammy', N'Perri', N'Beaushaw', N'651-139-2379', 9, N'2849751361')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (29, N'Leese', N'Pendrick', N'Roder', N'468-800-0646', 9, N'3039947400')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (30, N'Kort', N'Wateridge', N'Rigbye', N'392-904-6332', 9, N'3548762530')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (31, N'Tymothy', N'Balkwill', N'Speeding', N'888-354-2903', 9, N'3268942554')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (32, N'Mindy', N'Haken', N'Dolder', N'403-949-4826', 9, N'3771645953')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (33, N'Ileana', N'Mcasparan', N'Sinisbury', N'546-365-9804', 9, N'1373187650')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (34, N'Marlo', N'Gimblet', N'Mityakov', N'115-657-0711', 9, N'2746765440')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (35, N'Marinna', N'Lenthall', N'Giercke', N'613-265-4441', 9, N'2502521886')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (36, N'Irvine', N'Wilfinger', N'Bugge', N'734-826-2963', 9, N'2427600850')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (37, N'Maribeth', N'Grayshan', N'Goldie', N'410-988-9832', 9, N'1321603924')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (38, N'June', N'Balsellie', N'Van der Baaren', N'198-308-6169', 9, N'2057907036')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (39, N'Devonne', N'Peyzer', N'Marklow', N'348-132-9042', 9, N'3624498898')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (40, N'Fredra', N'Mozzi', N'Andrews', N'525-578-2406', 9, N'1485557850')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (41, N'Ray', N'Pinkney', N'Lansberry', N'616-585-7611', 9, N'2026399292')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (42, N'Violette', N'McGrey', N'Grimsdyke', N'374-587-9016', 9, N'3431107936')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (43, N'Magdalene', N'Hammill', N'Raymen', N'702-948-0964', 9, N'2131880947')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (44, N'Thekla', N'Burnyate', N'Ingamells', N'832-103-0892', 9, N'2511543986')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (45, N'Binky', N'Valance', N'Chandler', N'832-660-1607', 9, N'2290513324')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (46, N'Birk', N'Manifould', N'Fitzhenry', N'442-479-0395', 9, N'2517768610')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (47, N'Rosette', N'Jahan', N'McKimm', N'306-648-3451', 9, N'2165006324')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (48, N'Giffie', N'Eardley', N'Shillington', N'199-259-1353', 9, N'1857905040')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (49, N'Ameline', N'Quarless', N'Cossor', N'220-864-8351', 9, N'1974341542')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (50, N'Antonietta', N'Bowart', N'Hassett', N'166-278-4393', 9, N'1325910531')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (51, N'Lefty', N'Wadmore', N'Lathleiff', N'995-265-8182', 9, N'2844787827')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (52, N'Johannah', N'Ridgeway', N'Schimek', N'762-873-2892', 9, N'1871516319')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (53, N'Tailor', N'Espley', N'McGuinness', N'187-196-3816', 9, N'2792394400')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (54, N'Amelie', N'Rapson', N'Gilding', N'931-679-0225', 9, N'2653031982')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (55, N'Lincoln', N'Stolting', N'Morfett', N'535-723-1136', 9, N'3406242953')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (56, N'Deni', N'Roggers', N'Espadate', N'705-685-2023', 9, N'2526225745')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (57, N'Wanda', N'Bahls', N'Beall', N'301-916-9447', 9, N'2523436355')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (58, N'Nate', N'Tilt', N'Hirthe', N'177-888-2580', 9, N'2992483689')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (59, N'Kara', N'Sutherington', N'O''Logan', N'404-288-1592', 9, N'2796199764')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (60, N'Alwyn', N'Bibb', N'Bison', N'688-595-8456', 9, N'2496546598')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (61, N'Lilah', N'Goodisson', N'Dittson', N'471-262-8000', 9, N'3472430511')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (62, N'Jennie', N'Pavlitschek', N'Richemond', N'273-286-4094', 9, N'1613978170')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (63, N'Tessie', N'Lineker', N'Costen', N'220-802-1032', 9, N'1608211579')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (64, N'Murdoch', N'Oret', N'Gladtbach', N'357-523-0403', 9, N'1934771009')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (65, N'Chrysler', N'Whitwell', N'Hamstead', N'366-306-7211', 9, N'2581975969')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (66, N'Irena', N'Lodovichi', N'Awty', N'560-785-2026', 9, N'1906124321')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (67, N'Elvyn', N'Jerrams', N'Ainsby', N'848-182-8447', 9, N'2989519339')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (68, N'Jocelin', N'Dick', N'Screech', N'420-545-4492', 9, N'2625147731')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (69, N'Merill', N'Matisse', N'Dabourne', N'516-951-7970', 9, N'2078458781')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (70, N'Selie', N'Worcester', N'Endrizzi', N'480-282-6660', 9, N'1405626408')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (71, N'Guthry', N'Maxweell', N'Jeratt', N'389-892-8938', 9, N'2795617762')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (72, N'Danny', N'Yarnold', N'Lorman', N'347-657-7160', 9, N'2544889831')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (73, N'Brooke', N'Sterman', N'McKeeman', N'860-220-4577', 9, N'2139356911')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (74, N'Fallon', N'Whitelock', N'Ruggen', N'850-940-8600', 9, N'2932522142')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (75, N'Bianca', N'Bene', N'Eldredge', N'892-510-0729', 9, N'2411575708')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (76, N'Berenice', N'Berthomieu', N'Lithcow', N'322-286-5569', 9, N'3980348118')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (77, N'Barbee', N'Bony', N'MacAlpine', N'762-182-6091', 9, N'2327888635')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (78, N'Hayes', N'Almon', N'Jarritt', N'968-480-8456', 9, N'1895069232')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (79, N'Marco', N'Koch', N'Coronado', N'710-920-6540', 9, N'1369911508')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (80, N'Malanie', N'Matityahu', N'Ferrar', N'564-655-7091', 9, N'1471087616')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (81, N'Hube', N'Tregoning', N'Stringfellow', N'184-336-3747', 9, N'2138204704')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (82, N'Marmaduke', N'Gurnell', N'Kestin', N'386-999-0171', 9, N'3979926570')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (83, N'Kinnie', N'Horlock', N'Fishbourn', N'750-884-4072', 9, N'3766675991')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (84, N'Cordy', N'Maine', N'Fairbridge', N'890-929-4718', 9, N'3791087481')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (85, N'Ashlie', N'Tille', N'Gurry', N'629-521-5927', 9, N'1566092355')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (86, N'Jamaal', N'Pears', N'Tschierse', N'812-644-7979', 9, N'2189562857')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (87, N'Bess', N'Melmore', N'Evitt', N'763-899-5915', 9, N'1474351883')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (88, N'Filide', N'Haddrell', N'Ellingworth', N'660-358-3383', 9, N'2933638459')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (89, N'Catriona', N'Evennett', N'Vonasek', N'164-964-2411', 9, N'2177138255')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (90, N'Fabe', N'Aylesbury', N'Itzhaiek', N'537-223-1351', 9, N'1264612795')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (91, N'Anetta', N'Rubinchik', N'McVanamy', N'101-239-2836', 9, N'2209406416')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (92, N'Chrissy', N'Chadd', N'Loxston', N'524-775-6486', 9, N'1759321573')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (93, N'Darby', N'Kilbane', N'Linnit', N'327-635-6062', 9, N'1581073106')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (94, N'Alyssa', N'Roussel', N'Seiler', N'632-834-7055', 9, N'3129263709')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (95, N'Inger', N'Bartell', N'Tomaello', N'510-657-7803', 9, N'2791878211')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (96, N'Gabbi', N'Vigrass', N'Tother', N'434-562-1028', 9, N'1305903356')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (97, N'Cari', N'Acors', N'Ianniello', N'441-948-1962', 9, N'1495649974')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (98, N'Faunie', N'Tayt', N'Ferronier', N'746-605-7267', 9, N'3803425268')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (99, N'Monah', N'Langstone', N'Divell', N'633-722-4263', 9, N'3339577855')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (100, N'Amara', N'Dennes', N'Stockwell', N'335-634-3953', 9, N'4000585367')
GO
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (101, N'Abba', N'Ommundsen', N'Grote', N'294-600-3545', 9, N'3782152234')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (102, N'Ros', N'Edmondson', N'Martineau', N'126-621-1411', 9, N'3531977849')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (103, N'Meyer', N'Todari', N'Goldster', N'209-576-9412', 9, N'1314328032')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (104, N'Coralyn', N'Vanshin', N'Niaves', N'978-557-2429', 9, N'2341814433')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (105, N'Edgar', N'Falla', N'Jouhan', N'997-276-4199', 9, N'1352738234')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (106, N'Bennie', N'Stanbrooke', N'Bras', N'952-475-1220', 9, N'1870370845')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (107, N'Gabe', N'Klimov', N'Kimbell', N'369-280-0845', 9, N'2600568552')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (108, N'Jessie', N'Girardet', N'Shelp', N'744-932-6216', 9, N'1892266644')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (109, N'Glynnis', N'Lowry', N'Yegorev', N'745-518-1272', 9, N'2412222049')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (110, N'Carmelina', N'Brokenbrow', N'Trembath', N'791-432-5599', 9, N'3140805303')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (111, N'Kelby', N'Knight', N'Gutherson', N'618-854-0160', 9, N'2311361818')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (112, N'Walker', N'Hoggin', N'Edeson', N'689-836-0466', 9, N'1907042461')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (113, N'Neysa', N'Duetsche', N'Dionisio', N'889-283-4741', 9, N'4057723195')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (114, N'Hy', N'Belchamber', N'Bread', N'503-179-0507', 9, N'3049534064')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (115, N'Konstance', N'Louw', N'Bromage', N'750-735-2718', 9, N'3902389417')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (116, N'Shannan', N'Wetwood', N'Nickolls', N'287-788-3157', 9, N'3510269524')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (117, N'Davita', N'Cocklin', N'Durbyn', N'104-185-1442', 9, N'4030138462')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (118, N'Jennie', N'Bauduccio', N'McCulley', N'516-584-7164', 9, N'3726579045')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (119, N'Reagan', N'Langcastle', N'Pittock', N'716-455-4547', 9, N'1659614741')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (120, N'Ernest', N'Peery', N'Godmar', N'424-728-0096', 9, N'1507508860')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (121, N'Stefania', N'Layborn', N'Peterkin', N'461-346-9046', 9, N'3974451488')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (122, N'Orel', N'Writtle', N'Fitzharris', N'348-359-8377', 9, N'3776083742')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (123, N'Adrian', N'Stapley', N'Silversmid', N'586-195-5418', 9, N'3877276547')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (124, N'Winn', N'Youde', N'Redman', N'145-710-9509', 9, N'2111033987')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (125, N'Tamma', N'Priver', N'Dyer', N'971-755-4415', 9, N'2251152523')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (126, N'Hendrick', N'Avison', N'Hassewell', N'371-719-7907', 9, N'1708878594')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (127, N'Mandi', N'Fudge', N'Da Costa', N'310-153-6837', 9, N'1663165807')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (128, N'Hobard', N'Fabbri', N'Borghese', N'451-504-7515', 9, N'2517593501')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (129, N'Chen', N'Gowdridge', N'Gallegos', N'319-240-8265', 9, N'3753334097')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (130, N'Sunny', N'Ellinor', N'Symington', N'509-840-7148', 9, N'3366129194')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (131, N'Hendrika', N'Cordner', N'McIlvaney', N'246-839-5189', 9, N'3562366463')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (132, N'Tiff', N'Enright', N'Roakes', N'922-586-8907', 9, N'2566336008')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (133, N'Correna', N'Norrey', N'Phifer', N'420-529-0809', 9, N'2170457410')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (134, N'Rowen', N'Bettridge', N'Hewell', N'641-394-0967', 9, N'4057924120')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (135, N'Dania', N'Galloway', N'Skeat', N'874-842-1241', 9, N'2189321410')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (136, N'Joletta', N'Cottill', N'Cheesley', N'929-548-2915', 9, N'4027490738')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (137, N'Rob', N'Asche', N'Robben', N'573-668-4241', 9, N'3449401747')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (138, N'Jeno', N'Dowse', N'Coker', N'853-634-8499', 9, N'2822374594')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (139, N'Corilla', N'Christian', N'Varlow', N'187-794-7286', 45, N'1959163110')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (140, N'Julie', N'Audiss', N'Quilty', N'652-199-1251', 10, N'2507860038')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (141, N'Winfred', N'Schimann', N'Jancy', N'653-734-5327', 5, N'3077719396')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (142, N'Warden', N'Hune', N'O''Halligan', N'852-475-6503', 8, N'2134358998')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (143, N'Hubert', N'Manuello', N'Killgus', N'296-828-9484', 38, N'2354562354')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (144, N'Herman', N'Cason', N'Guerro', N'744-754-1826', 19, N'2027612627')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (145, N'Lenci', N'Cotsford', N'Tawn', N'154-892-8248', 31, N'1778812865')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (146, N'Suzi', N'Ivanyutin', N'Cockton', N'325-432-4981', 35, N'2106105761')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (147, N'Ingar', N'Ciccotti', N'O''Cuddie', N'352-831-1632', 16, N'2729612037')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (148, N'Corny', N'Bromhead', N'Swapp', N'241-124-2011', 23, N'2423590219')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (149, N'Rozele', N'Semor', N'Schollar', N'646-492-6334', 7, N'3366022680')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (150, N'Lenore', N'Sherston', N'Studdert', N'403-715-8841', 37, N'2614858506')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (151, N'Rachele', N'Sedwick', N'Ellwell', N'736-969-9414', 13, N'2197582406')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (152, N'Michele', N'Linforth', N'Priddie', N'777-718-9027', 20, N'1399320672')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (153, N'Bertine', N'Ree', N'Cone', N'313-696-2113', 18, N'2910674225')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (154, N'Rustie', N'Bengough', N'Callingham', N'896-901-3493', 3, N'3531130398')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (155, N'Brandtr', N'Oels', N'Strutz', N'197-329-1065', 8, N'1388728336')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (156, N'Noel', N'Licciardiello', N'Phelit', N'558-474-6016', 25, N'3057749040')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (157, N'Viviene', N'Conew', N'Fidoe', N'863-955-4626', 8, N'3448861573')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (158, N'Delano', N'Tidbald', N'Cockings', N'520-955-2012', 17, N'3392252443')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (159, N'Tami', N'Keggin', N'Swatton', N'584-580-9824', 47, N'1307712785')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (160, N'Ericha', N'Lindenbaum', N'Sisson', N'224-743-7179', 35, N'1294117931')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (161, N'Claudine', N'Bolsover', N'Attride', N'930-411-9940', 15, N'3565986840')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (162, N'Elfrida', N'Vickerman', N'Reckus', N'955-366-5267', 1, N'1477205585')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (163, N'Heywood', N'Linnemann', N'Ply', N'484-748-8976', 16, N'2802318824')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (164, N'Cristina', N'Tullett', N'Tett', N'160-710-1624', 42, N'2864482669')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (165, N'Jess', N'Graalmans', N'Maraga', N'862-107-7932', 18, N'3336326685')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (166, N'Jessika', N'Farans', N'Chalfant', N'417-456-8088', 13, N'1561765729')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (167, N'Zebedee', N'Arr', N'Waghorne', N'165-333-8615', 3, N'2918352643')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (168, N'Doy', N'Keggin', N'Hastilow', N'958-686-4516', 31, N'2180710729')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (169, N'Wilhelmina', N'Merigeau', N'Stocken', N'966-713-8863', 16, N'2008730220')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (170, N'Geno', N'Crush', N'McMenamie', N'222-957-9562', 11, N'3364668814')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (171, N'Berti', N'Penhaleurack', N'Arr', N'160-557-0774', 3, N'1433321055')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (172, N'Isac', N'Smidmor', N'Baggaley', N'960-187-8119', 25, N'3329234616')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (173, N'Remus', N'Signe', N'Ravillas', N'969-173-9638', 29, N'3871725952')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (174, N'Micaela', N'Paulucci', N'Rocco', N'399-464-9280', 19, N'1512210115')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (175, N'Aksel', N'Abramovitz', N'Pawelek', N'402-618-7211', 42, N'2313380618')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (176, N'Staford', N'Morena', N'Jankowski', N'529-942-7845', 3, N'2446177444')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (177, N'Neal', N'Sercombe', N'Shegog', N'351-371-6662', 48, N'3956352992')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (178, N'Padraic', N'Bilbery', N'Burrel', N'410-661-6357', 17, N'1280107767')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (179, N'Malissa', N'Micklewright', N'Dibbert', N'491-780-5827', 10, N'1602199109')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (180, N'Iosep', N'Beric', N'Berfoot', N'824-534-2900', 32, N'2991420157')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (181, N'Bernadina', N'Skellern', N'Kenewel', N'276-701-4136', 7, N'3538336302')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (182, N'Linnie', N'Howe', N'Tilzey', N'546-146-8358', 29, N'2171077334')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (183, N'Gusti', N'Kubiak', N'Goulbourn', N'948-619-5603', 41, N'2187130380')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (184, N'Maddi', N'Yearnes', N'Pretley', N'878-584-3144', 39, N'2274301313')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (185, N'Bobbi', N'Clapshaw', N'Duley', N'752-168-5989', 36, N'2337706873')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (186, N'Dedie', N'Stallebrass', N'Nuscha', N'827-424-3425', 4, N'2647048004')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (187, N'Gussy', N'Fassam', N'Filson', N'627-192-2604', 8, N'2515350727')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (188, N'Sanford', N'Bengal', N'Huthart', N'532-748-2747', 14, N'3319510402')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (189, N'Corina', N'Sebyer', N'Gibberd', N'768-834-3390', 43, N'2206297454')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (190, N'Mommy', N'Windas', N'Bernardelli', N'158-968-4061', 46, N'1845219360')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (191, N'Brady', N'Bewfield', N'McVicar', N'795-380-3689', 19, N'1707886321')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (192, N'Carree', N'Healings', N'Matresse', N'407-988-5417', 13, N'3393259696')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (193, N'Zebulon', N'Drivers', N'Dolohunty', N'222-803-9575', 43, N'3564686415')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (194, N'Dorena', N'Ganniclifft', N'Raiston', N'816-643-3842', 1, N'2298072142')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (195, N'Sibella', N'Edmonson', N'Karsh', N'562-708-0508', 28, N'1703807806')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (196, N'Una', N'Bosomworth', N'Vakhonin', N'793-303-9608', 7, N'2426457225')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (197, N'Penny', N'Gemson', N'Wisham', N'298-255-0686', 33, N'1962271221')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (198, N'Renata', N'Aylin', N'Huelin', N'781-308-7284', 9, N'4145674659')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (199, N'Cordie', N'Oakenford', N'Pfeuffer', N'916-185-6238', 34, N'1850292224')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (200, N'Demetris', N'Fluck', N'Lashmore', N'939-238-6627', 5, N'1642029534')
GO
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (201, N'ivan', N'ivanov', N'ivanovich', N'8(988)321-90-90', 6, N'1232112321')
INSERT [dbo].[Clients] ([IdClient], [FirstName], [MiddleName], [LastName], [NumberPhone], [NationalityId], [DataPassport]) VALUES (202, N'test', N'test', N'test', N'7(899)-213-11-12', 4, N'jvl;dfjk;a')
SET IDENTITY_INSERT [dbo].[Clients] OFF
INSERT [dbo].[Countries] ([IdCountry], [Name]) VALUES (1, N'Indonesia')
INSERT [dbo].[Countries] ([IdCountry], [Name]) VALUES (2, N'Egypt')
INSERT [dbo].[Countries] ([IdCountry], [Name]) VALUES (3, N'Poland')
INSERT [dbo].[Countries] ([IdCountry], [Name]) VALUES (4, N'Vietnam')
INSERT [dbo].[Countries] ([IdCountry], [Name]) VALUES (5, N'Tunisia')
INSERT [dbo].[Countries] ([IdCountry], [Name]) VALUES (6, N'Ukraine')
INSERT [dbo].[Countries] ([IdCountry], [Name]) VALUES (7, N'Sweden')
INSERT [dbo].[Countries] ([IdCountry], [Name]) VALUES (8, N'China')
INSERT [dbo].[Countries] ([IdCountry], [Name]) VALUES (9, N'Russia')
INSERT [dbo].[Countries] ([IdCountry], [Name]) VALUES (10, N'Dominican Republic')
INSERT [dbo].[Countries] ([IdCountry], [Name]) VALUES (11, N'Costa Rica')
INSERT [dbo].[Countries] ([IdCountry], [Name]) VALUES (12, N'Brazil')
INSERT [dbo].[Countries] ([IdCountry], [Name]) VALUES (13, N'Netherlands')
INSERT [dbo].[Countries] ([IdCountry], [Name]) VALUES (14, N'Colombia')
INSERT [dbo].[Countries] ([IdCountry], [Name]) VALUES (15, N'Israel')
INSERT [dbo].[Countries] ([IdCountry], [Name]) VALUES (16, N'Chad')
INSERT [dbo].[Countries] ([IdCountry], [Name]) VALUES (17, N'Greece')
INSERT [dbo].[Countries] ([IdCountry], [Name]) VALUES (18, N'Tanzania')
INSERT [dbo].[Countries] ([IdCountry], [Name]) VALUES (19, N'Syria')
INSERT [dbo].[Countries] ([IdCountry], [Name]) VALUES (20, N'United States')
INSERT [dbo].[Countries] ([IdCountry], [Name]) VALUES (21, N'Cameroon')
INSERT [dbo].[Countries] ([IdCountry], [Name]) VALUES (22, N'Thailand')
INSERT [dbo].[Countries] ([IdCountry], [Name]) VALUES (23, N'Portugal')
INSERT [dbo].[Countries] ([IdCountry], [Name]) VALUES (24, N'Haiti')
INSERT [dbo].[Countries] ([IdCountry], [Name]) VALUES (25, N'Argentina')
INSERT [dbo].[Countries] ([IdCountry], [Name]) VALUES (26, N'Bosnia and Herzegovina')
INSERT [dbo].[Countries] ([IdCountry], [Name]) VALUES (27, N'North Korea')
INSERT [dbo].[Countries] ([IdCountry], [Name]) VALUES (28, N'Japan')
INSERT [dbo].[Countries] ([IdCountry], [Name]) VALUES (29, N'Jamaica')
INSERT [dbo].[Countries] ([IdCountry], [Name]) VALUES (30, N'France')
INSERT [dbo].[Countries] ([IdCountry], [Name]) VALUES (31, N'Nigeria')
INSERT [dbo].[Countries] ([IdCountry], [Name]) VALUES (32, N'Gambia')
INSERT [dbo].[Countries] ([IdCountry], [Name]) VALUES (33, N'Philippines')
INSERT [dbo].[Countries] ([IdCountry], [Name]) VALUES (34, N'Canada')
INSERT [dbo].[Countries] ([IdCountry], [Name]) VALUES (35, N'Myanmar')
INSERT [dbo].[Countries] ([IdCountry], [Name]) VALUES (36, N'Senegal')
INSERT [dbo].[Countries] ([IdCountry], [Name]) VALUES (37, N'Georgia')
INSERT [dbo].[Countries] ([IdCountry], [Name]) VALUES (38, N'Mauritius')
INSERT [dbo].[Countries] ([IdCountry], [Name]) VALUES (39, N'Spain')
INSERT [dbo].[Countries] ([IdCountry], [Name]) VALUES (40, N'Czech Republic')
INSERT [dbo].[Countries] ([IdCountry], [Name]) VALUES (41, N'Latvia')
INSERT [dbo].[Countries] ([IdCountry], [Name]) VALUES (42, N'Zimbabwe')
INSERT [dbo].[Countries] ([IdCountry], [Name]) VALUES (43, N'Panama')
INSERT [dbo].[Countries] ([IdCountry], [Name]) VALUES (44, N'Morocco')
INSERT [dbo].[Countries] ([IdCountry], [Name]) VALUES (45, N'Tajikistan')
INSERT [dbo].[Countries] ([IdCountry], [Name]) VALUES (46, N'South Africa')
INSERT [dbo].[Countries] ([IdCountry], [Name]) VALUES (47, N'Pakistan')
INSERT [dbo].[Countries] ([IdCountry], [Name]) VALUES (48, N'Mali')
SET IDENTITY_INSERT [dbo].[Hotels] ON 

INSERT [dbo].[Hotels] ([IdHotel], [Name], [NumberOfStarsId], [CountryId], [PriceOneWeek]) VALUES (2, N'GreenHosse', N'2', 9, CAST(1000.00 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[Hotels] OFF
INSERT [dbo].[NumStars] ([CountStars]) VALUES (N'1')
INSERT [dbo].[NumStars] ([CountStars]) VALUES (N'2')
INSERT [dbo].[NumStars] ([CountStars]) VALUES (N'3')
INSERT [dbo].[NumStars] ([CountStars]) VALUES (N'4')
INSERT [dbo].[NumStars] ([CountStars]) VALUES (N'5')
INSERT [dbo].[TimeTravel] ([NumberWeek]) VALUES (N'1')
INSERT [dbo].[TimeTravel] ([NumberWeek]) VALUES (N'2')
INSERT [dbo].[TimeTravel] ([NumberWeek]) VALUES (N'3')
INSERT [dbo].[TimeTravel] ([NumberWeek]) VALUES (N'4')
SET IDENTITY_INSERT [dbo].[TouristTrip] ON 

INSERT [dbo].[TouristTrip] ([IdTourTrip], [ClientId], [AirlineId], [TimeTravelId], [HotelId], [FullPrice]) VALUES (1, 3, 1, N'2', 2, CAST(2677.00 AS Decimal(10, 2)))
INSERT [dbo].[TouristTrip] ([IdTourTrip], [ClientId], [AirlineId], [TimeTravelId], [HotelId], [FullPrice]) VALUES (2, 201, 1, N'1', 2, CAST(1677.00 AS Decimal(10, 2)))
INSERT [dbo].[TouristTrip] ([IdTourTrip], [ClientId], [AirlineId], [TimeTravelId], [HotelId], [FullPrice]) VALUES (3, 6, 5, N'4', 2, CAST(4701.00 AS Decimal(10, 2)))
INSERT [dbo].[TouristTrip] ([IdTourTrip], [ClientId], [AirlineId], [TimeTravelId], [HotelId], [FullPrice]) VALUES (4, 202, 1, N'2', 2, CAST(2677.00 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[TouristTrip] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([IdUser], [Login], [Password]) VALUES (1, N'admin', N'123')
SET IDENTITY_INSERT [dbo].[Users] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Clients__1DF59C411F1A3940]    Script Date: 8/16/2020 4:11:27 PM ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [UQ__Clients__1DF59C411F1A3940] UNIQUE NONCLUSTERED 
(
	[DataPassport] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Hotels]  WITH CHECK ADD  CONSTRAINT [FK_Hotels_Countries] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Countries] ([IdCountry])
GO
ALTER TABLE [dbo].[Hotels] CHECK CONSTRAINT [FK_Hotels_Countries]
GO
ALTER TABLE [dbo].[Hotels]  WITH CHECK ADD  CONSTRAINT [FK_Hotels_NumStars] FOREIGN KEY([NumberOfStarsId])
REFERENCES [dbo].[NumStars] ([CountStars])
GO
ALTER TABLE [dbo].[Hotels] CHECK CONSTRAINT [FK_Hotels_NumStars]
GO
ALTER TABLE [dbo].[HotelService]  WITH CHECK ADD  CONSTRAINT [FK_HotelService_Hotels] FOREIGN KEY([HotelId])
REFERENCES [dbo].[Hotels] ([IdHotel])
GO
ALTER TABLE [dbo].[HotelService] CHECK CONSTRAINT [FK_HotelService_Hotels]
GO
ALTER TABLE [dbo].[HotelService]  WITH CHECK ADD  CONSTRAINT [FK_HotelService_Service] FOREIGN KEY([ServiceId])
REFERENCES [dbo].[Service] ([IdService])
GO
ALTER TABLE [dbo].[HotelService] CHECK CONSTRAINT [FK_HotelService_Service]
GO
ALTER TABLE [dbo].[TouristTrip]  WITH CHECK ADD  CONSTRAINT [FK_TouristTrip_Airlanes] FOREIGN KEY([AirlineId])
REFERENCES [dbo].[Airlanes] ([IdAirlane])
GO
ALTER TABLE [dbo].[TouristTrip] CHECK CONSTRAINT [FK_TouristTrip_Airlanes]
GO
ALTER TABLE [dbo].[TouristTrip]  WITH CHECK ADD  CONSTRAINT [FK_TouristTrip_Clients] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Clients] ([IdClient])
GO
ALTER TABLE [dbo].[TouristTrip] CHECK CONSTRAINT [FK_TouristTrip_Clients]
GO
ALTER TABLE [dbo].[TouristTrip]  WITH CHECK ADD  CONSTRAINT [FK_TouristTrip_Hotels] FOREIGN KEY([HotelId])
REFERENCES [dbo].[Hotels] ([IdHotel])
GO
ALTER TABLE [dbo].[TouristTrip] CHECK CONSTRAINT [FK_TouristTrip_Hotels]
GO
ALTER TABLE [dbo].[TouristTrip]  WITH CHECK ADD  CONSTRAINT [FK_TouristTrip_TimeTravel] FOREIGN KEY([TimeTravelId])
REFERENCES [dbo].[TimeTravel] ([NumberWeek])
GO
ALTER TABLE [dbo].[TouristTrip] CHECK CONSTRAINT [FK_TouristTrip_TimeTravel]
GO
USE [master]
GO
ALTER DATABASE [TravelAgency] SET  READ_WRITE 
GO
