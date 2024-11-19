CREATE DATABASE J6StoreDATNnhosm6
GO

USE [J6StoreDATNnhosm6]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 12/7/2023 11:09:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Fullname] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Authorities]    Script Date: 12/7/2023 11:09:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Authorities](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[RoleId] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_UserRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 12/7/2023 11:09:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [char](4) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Imgcategories] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Colour]    Script Date: 12/7/2023 11:09:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Colour](
	[Id] [int] NOT NULL,
	[Namecolour] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Colour] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 12/7/2023 11:09:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Yourname] [nvarchar](50) NULL,
	[YourEmail] [nvarchar](50) NULL,
	[Yourreview] [nvarchar](500) NULL,
	[Productid] [int] NOT NULL,
	[Date] [date] NULL,
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 12/7/2023 11:09:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[Id] [int] NOT NULL,
	[Tenmenu] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 12/7/2023 11:09:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[OrderId] [bigint] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Price] [float] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 12/7/2023 11:09:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[Address] [nvarchar](100) NOT NULL,
	[Statustid] [bigint] NULL,
 CONSTRAINT [PK_Orders_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Productinformation]    Script Date: 12/7/2023 11:09:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productinformation](
	[Id] [int] NOT NULL,
	[Chude] [nvarchar](50) NOT NULL,
	[Noidung] [nvarchar](1500) NOT NULL,
	[Productid] [int] NOT NULL,
	[Img] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 12/7/2023 11:09:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Image] [nvarchar](50) NOT NULL,
	[Price] [float] NOT NULL,
	[CreateDate] [date] NOT NULL,
	[Description] [bit] NOT NULL,
	[CategoryId] [char](4) NOT NULL,
	[Information] [nvarchar](500) NULL,
	[Image2] [nvarchar](50) NULL,
	[Image3] [nvarchar](50) NULL,
	[Image4] [nvarchar](50) NULL,
	[Sale] [float] NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 12/7/2023 11:09:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [nvarchar](10) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Size]    Script Date: 12/7/2023 11:09:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Size](
	[Id] [int] NOT NULL,
	[Img] [nvarchar](50) NOT NULL,
	[Productid] [int] NOT NULL,
	[Chude] [nvarchar](2000) NOT NULL,
	[Noidung] [nvarchar](4000) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Statust]    Script Date: 12/7/2023 11:09:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Statust](
	[IdStatust] [bigint] IDENTITY(1,1) NOT NULL,
	[NameStatust] [nvarchar](50) NULL,
 CONSTRAINT [PK_Statust] PRIMARY KEY CLUSTERED 
(
	[IdStatust] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'ALFKI', N'alfki', N'Maria Anders', N'alfki@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'ANATR', N'anatr', N'Ana Trujillo', N'anatr@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'ANTON', N'anton', N'Antonio Moreno', N'anton@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'AROUT', N'arout', N'Thomas Hardy', N'arout@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'BERGS', N'bergs', N'Christina Berglund', N'bergs@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'BLAUS', N'blaus', N'Hanna Moos', N'blaus@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'BLONP', N'blonp', N'Frédérique Citeaux', N'blonp@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'BOLID', N'bolid', N'Martín Sommer', N'bolid@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'BONAP', N'bonap', N'Laurence Lebihan', N'bonap@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'BOTTM', N'bottm', N'Elizabeth Lincoln', N'bottm@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'BSBEV', N'bsbev', N'Victoria Ashworth', N'bsbev@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'CACTU', N'cactu', N'Patricio Simpson', N'cactu@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'CENTC', N'centc', N'Francisco Chang', N'centc@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'CHOPS', N'chops', N'Yang Wang', N'chops@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'COMMI', N'commi', N'Pedro Afonso', N'commi@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'CONSH', N'consh', N'Elizabeth Brown', N'consh@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'customer', N'123', N'Nguyễn Văn Tèo', N'teonv@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'director', N'123', N'Trần Đình Nhã', N'pheonc@fpt.edu.vn', N'-1407968806.jpg')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'DRACD', N'dracd', N'Sven Ottlieb', N'dracd@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'DUMON', N'dumon', N'Janine Labrune', N'dumon@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'EASTC', N'eastc', N'Ann Devon', N'eastc@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'ERNSH', N'ernsh', N'Roland Mendel', N'ernsh@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'FAMIA', N'famia', N'Aria Cruz', N'famia@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'FISSA', N'fissa', N'Diego Roel', N'fissa@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'FOLIG', N'folig', N'Martine Rancé', N'folig@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'FOLKO', N'folko', N'Maria Larsson', N'folko@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'FRANK', N'frank', N'Peter Franken', N'frank@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'FRANR', N'franr', N'Carine Schmitt', N'franr@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'FRANS', N'frans', N'Paolo Accorti', N'frans@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'FURIB', N'furib', N'Lino Rodriguez', N'furib@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'GALED', N'galed', N'Eduardo Saavedra', N'galed@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'GODOS', N'godos', N'José Pedro Freyre', N'godos@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'GOURL', N'gourl', N'André Fonseca', N'gourl@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'GREAL', N'greal', N'Howard Snyder', N'greal@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'GROSR', N'grosr', N'Manuel Pereira', N'grosr@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'HANAR', N'hanar', N'Mario Pontes', N'hanar@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'HILAA', N'hilaa', N'Carlos Hernández', N'hilaa@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'HUNGC', N'hungc', N'Yoshi Latimer', N'hungc@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'HUNGO', N'hungo', N'Patricia McKenna', N'hungo@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'ISLAT', N'islat', N'Helen Bennett', N'islat@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'KOENE', N'koene', N'Philip Cramer', N'koene@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'LACOR', N'lacor', N'Daniel Tonini', N'lacor@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'LAMAI', N'lamai', N'Annette Roulet', N'lamai@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'LAUGB', N'laugb', N'Yoshi Tannamuri', N'laugb@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'LAZYK', N'lazyk', N'John Steel', N'lazyk@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'LEHMS', N'lehms', N'Renate Messner', N'lehms@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'LETSS', N'letss', N'Jaime Yorres', N'letss@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'LILAS', N'lilas', N'Carlos González', N'lilas@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'LINOD', N'linod', N'Felipe Izquierdo', N'linod@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'LONEP', N'lonep', N'Fran Wilson', N'lonep@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'MAGAA', N'magaa', N'Giovanni Rovelli', N'magaa@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'MAISD', N'maisd', N'Catherine Dewey', N'maisd@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'MEREP', N'merep', N'Jean Fresnière', N'merep@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'MORGK', N'morgk', N'Alexander Feuer', N'morgk@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'NORTS', N'norts', N'Simon Crowther', N'norts@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'OCEAN', N'ocean', N'Yvonne Moncada', N'ocean@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'OLDWO', N'oldwo', N'Rene Phillips', N'oldwo@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'OTTIK', N'ottik', N'Henriette Pfalzheim', N'ottik@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'PARIS', N'paris', N'Marie Bertrand', N'paris@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'PERIC', N'peric', N'Guillermo Fernández', N'peric@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'PICCO', N'picco', N'Georg Pipps', N'picco@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'PRINI', N'prini', N'Isabel de Castro', N'prini@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'QUEDE', N'quede', N'Bernardo Batista', N'quede@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'QUEEN', N'queen', N'Lúcia Carvalho', N'queen@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'QUICK', N'quick', N'Horst Kloss', N'quick@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'RANCH', N'ranch', N'Sergio Gutiérrez', N'ranch@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'RATTC', N'rattc', N'Paula Wilson', N'rattc@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'REGGC', N'reggc', N'Maurizio Moroni', N'reggc@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'RICAR', N'ricar', N'Janete Limeira', N'ricar@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'RICSU', N'ricsu', N'Michael Holz', N'ricsu@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'ROMEY', N'romey', N'Alejandra Camino', N'romey@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'SANTG', N'santg', N'Jonas Bergulfsen', N'santg@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'SAVEA', N'savea', N'Jose Pavarotti', N'savea@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'SEVES', N'seves', N'Hari Kumar', N'seves@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'SIMOB', N'simob', N'Jytte Petersen', N'simob@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'SPECD', N'specd', N'Dominique Perrier', N'specd@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'SPLIR', N'splir', N'Art Braunschweiger', N'splir@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'staff', N'123', N'Lý Hoàng Út', N'nopt@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'SUPRD', N'suprd', N'Pascale Cartrain', N'suprd@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'THEBI', N'thebi', N'Liz Nixon', N'thebi@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'THECR', N'thecr', N'Liu Wong', N'thecr@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'TOMSP', N'tomsp', N'Karin Josephs', N'tomsp@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'TORTU', N'tortu', N'Miguel Angel Paolino', N'tortu@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'TRADH', N'tradh', N'Anabela Domingues', N'tradh@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'TRAIH', N'traih', N'Helvetius Nagy', N'traih@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'VAFFE', N'vaffe', N'Palle Ibsen', N'vaffe@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'VICTE', N'victe', N'Mary Saveley', N'victe@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'VINET', N'vinet', N'Paul Henriot', N'vinet@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'WANDK', N'wandk', N'Rita Müller', N'wandk@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'WARTH', N'warth', N'Pirkko Koskitalo', N'warth@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'WELLI', N'welli', N'Paula Parente', N'welli@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'WHITC', N'whitc', N'Karl Jablonski', N'whitc@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'WILMK', N'wilmk', N'Matti Karttunen', N'wilmk@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'WOLZA', N'wolza', N'Zbyszek Piestrzeniewicz', N'wolza@gmail.com', N'user.png')
GO
SET IDENTITY_INSERT [dbo].[Authorities] ON 

INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (2, N'ALFKI', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (3, N'ANATR', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (4, N'ANTON', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (5, N'AROUT', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (6, N'BERGS', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (7, N'BLAUS', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (8, N'BLONP', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (9, N'BOLID', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (10, N'BONAP', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (11, N'BOTTM', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (12, N'BSBEV', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (13, N'CACTU', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (14, N'CENTC', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (15, N'CHOPS', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (16, N'COMMI', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (17, N'CONSH', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (18, N'DRACD', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (19, N'DUMON', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (20, N'EASTC', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (21, N'ERNSH', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (22, N'FAMIA', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (23, N'FISSA', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (24, N'FOLIG', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (25, N'FOLKO', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (26, N'FRANK', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (27, N'FRANR', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (28, N'FRANS', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (29, N'FURIB', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (30, N'GALED', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (31, N'GODOS', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (32, N'GOURL', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (33, N'GREAL', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (34, N'GROSR', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (35, N'HANAR', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (36, N'HILAA', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (37, N'HUNGC', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (38, N'HUNGO', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (39, N'ISLAT', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (40, N'KOENE', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (41, N'LACOR', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (42, N'LAMAI', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (43, N'LAUGB', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (44, N'LAZYK', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (45, N'LEHMS', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (46, N'LETSS', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (47, N'LILAS', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (48, N'LINOD', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (49, N'LONEP', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (50, N'MAGAA', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (51, N'MAISD', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (52, N'MEREP', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (53, N'MORGK', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (55, N'NORTS', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (56, N'OCEAN', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (57, N'OLDWO', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (58, N'OTTIK', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (59, N'PARIS', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (60, N'PERIC', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (61, N'PICCO', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (62, N'PRINI', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (63, N'QUEDE', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (64, N'QUEEN', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (65, N'QUICK', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (66, N'RANCH', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (67, N'RATTC', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (68, N'REGGC', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (69, N'RICAR', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (70, N'RICSU', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (71, N'ROMEY', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (72, N'SANTG', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (74, N'SAVEA', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (75, N'SEVES', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (76, N'SIMOB', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (77, N'SPECD', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (78, N'SPLIR', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (79, N'SUPRD', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (80, N'customer', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (82, N'THEBI', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (83, N'THECR', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (84, N'TOMSP', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (85, N'TORTU', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (86, N'TRADH', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (87, N'TRAIH', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (89, N'VAFFE', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (90, N'VICTE', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (91, N'VINET', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (92, N'WANDK', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (93, N'WARTH', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (94, N'WELLI', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (95, N'WHITC', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (96, N'WILMK', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (97, N'WOLZA', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (98, N'director', N'DIRE')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (100, N'staff', N'STAF')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (2103, N'director', N'STAF')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (7104, N'staff', N'DIRE')
SET IDENTITY_INSERT [dbo].[Authorities] OFF
GO
INSERT [dbo].[Categories] ([Id], [Name], [Imgcategories]) VALUES (N'1000', N'ADIDAS', N'adidas1.jpg')
INSERT [dbo].[Categories] ([Id], [Name], [Imgcategories]) VALUES (N'1001', N'MLB', N'mlb1.jpg')
INSERT [dbo].[Categories] ([Id], [Name], [Imgcategories]) VALUES (N'1002', N'NIKE', N'nike5.jpg')
GO
INSERT [dbo].[Colour] ([Id], [Namecolour]) VALUES (1, N'đỏ')
INSERT [dbo].[Colour] ([Id], [Namecolour]) VALUES (2, N'xanh')
GO
SET IDENTITY_INSERT [dbo].[Comment] ON 

INSERT [dbo].[Comment] ([Id], [Yourname], [YourEmail], [Yourreview], [Productid], [Date]) VALUES (1, N'Trần Đình Nhã', N'nha2333@gmail.com', N'Rất đẹp', 1001, CAST(N'2023-11-22' AS Date))
INSERT [dbo].[Comment] ([Id], [Yourname], [YourEmail], [Yourreview], [Productid], [Date]) VALUES (2, N'ut', N'ut@gmail.com', N'tốt', 1089, CAST(N'2023-11-22' AS Date))
INSERT [dbo].[Comment] ([Id], [Yourname], [YourEmail], [Yourreview], [Productid], [Date]) VALUES (3, N'trọng', N'trong@gmail.com', N'hay', 1090, CAST(N'2023-11-22' AS Date))
SET IDENTITY_INSERT [dbo].[Comment] OFF
GO
INSERT [dbo].[Menu] ([Id], [Tenmenu]) VALUES (1, N'Trang Chủ ')
INSERT [dbo].[Menu] ([Id], [Tenmenu]) VALUES (2, N'Giới Thiệu')
INSERT [dbo].[Menu] ([Id], [Tenmenu]) VALUES (3, N'Sản Phẩm')
INSERT [dbo].[Menu] ([Id], [Tenmenu]) VALUES (4, N'Tin Tức')
INSERT [dbo].[Menu] ([Id], [Tenmenu]) VALUES (5, N'Tuyển Dụng')
INSERT [dbo].[Menu] ([Id], [Tenmenu]) VALUES (6, N'Liên Hệ')
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100100, 10285, 1001, 14.4, 45)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100124, 10294, 1001, 14.4, 18)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100185, 10317, 1001, 14.4, 20)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100270, 10348, 1001, 14.4, 15)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100283, 10354, 1001, 14.4, 12)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100327, 10370, 1001, 14.4, 15)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100421, 10406, 1001, 14.4, 10)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100440, 10413, 1001, 14.4, 24)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (242541, 10451, 1001, 190, 2)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (242542, 10451, 1089, 130, 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (242551, 10478, 1001, 190, 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (242552, 10481, 1001, 190, 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (242553, 10482, 1001, 190, 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (242554, 10485, 1097, 85, 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (242555, 10486, 1097, 85, 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (242556, 10487, 1001, 190, 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (242557, 10489, 1001, 190, 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (242558, 10491, 1001, 190, 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (242559, 10491, 1089, 130, 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (242560, 10492, 1001, 190, 2)
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10249, N'TOMSP', CAST(N'1996-07-05T00:00:00.000' AS DateTime), N'Luisenstr. 48', 2)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10250, N'HANAR', CAST(N'1996-07-08T00:00:00.000' AS DateTime), N'Rua do Paço, 67', 4)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10251, N'VICTE', CAST(N'1996-07-08T00:00:00.000' AS DateTime), N'2, rue du Commerce', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10252, N'SUPRD', CAST(N'1996-07-09T00:00:00.000' AS DateTime), N'Boulevard Tirou, 255', 4)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10253, N'HANAR', CAST(N'1996-07-10T00:00:00.000' AS DateTime), N'Rua do Paço, 67', 4)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10254, N'CHOPS', CAST(N'1996-07-11T00:00:00.000' AS DateTime), N'Hauptstr. 31', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10255, N'RICSU', CAST(N'1996-07-12T00:00:00.000' AS DateTime), N'Starenweg 5', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10256, N'WELLI', CAST(N'1996-07-15T00:00:00.000' AS DateTime), N'Rua do Mercado, 12', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10257, N'HILAA', CAST(N'1996-07-16T00:00:00.000' AS DateTime), N'Carrera 22 con Ave. Carlos Soublette #8-35', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10258, N'ERNSH', CAST(N'1996-07-17T00:00:00.000' AS DateTime), N'Kirchgasse 6', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10259, N'CENTC', CAST(N'1996-07-18T00:00:00.000' AS DateTime), N'Sierras de Granada 9993', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10260, N'OTTIK', CAST(N'1996-07-19T00:00:00.000' AS DateTime), N'Mehrheimerstr. 369', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10261, N'QUEDE', CAST(N'1996-07-19T00:00:00.000' AS DateTime), N'Rua da Panificadora, 12', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10262, N'RATTC', CAST(N'1996-07-22T00:00:00.000' AS DateTime), N'2817 Milton Dr.', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10263, N'ERNSH', CAST(N'1996-07-23T00:00:00.000' AS DateTime), N'Kirchgasse 6', 4)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10264, N'FOLKO', CAST(N'1996-07-24T00:00:00.000' AS DateTime), N'Åkergatan 24', 4)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10265, N'BLONP', CAST(N'1996-07-25T00:00:00.000' AS DateTime), N'24, place Kléber', 4)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10266, N'WARTH', CAST(N'1996-07-26T00:00:00.000' AS DateTime), N'Torikatu 38', 4)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10267, N'FRANK', CAST(N'1996-07-29T00:00:00.000' AS DateTime), N'Berliner Platz 43', 4)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10268, N'GROSR', CAST(N'1996-07-30T00:00:00.000' AS DateTime), N'5ª Ave. Los Palos Grandes', 4)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10269, N'WHITC', CAST(N'1996-07-31T00:00:00.000' AS DateTime), N'1029 - 12th Ave. S.', 4)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10270, N'WARTH', CAST(N'1996-08-01T00:00:00.000' AS DateTime), N'Torikatu 38', 4)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10271, N'SPLIR', CAST(N'1996-08-01T00:00:00.000' AS DateTime), N'P.O. Box 555', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10272, N'RATTC', CAST(N'1996-08-02T00:00:00.000' AS DateTime), N'2817 Milton Dr.', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10273, N'QUICK', CAST(N'1996-08-05T00:00:00.000' AS DateTime), N'Taucherstraße 10', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10274, N'VINET', CAST(N'1996-08-06T00:00:00.000' AS DateTime), N'59 rue de l''Abbaye', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10275, N'MAGAA', CAST(N'1996-08-07T00:00:00.000' AS DateTime), N'Via Ludovico il Moro 22', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10276, N'TORTU', CAST(N'1996-08-08T00:00:00.000' AS DateTime), N'Avda. Azteca 123', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10277, N'MORGK', CAST(N'1996-08-09T00:00:00.000' AS DateTime), N'Heerstr. 22', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10278, N'BERGS', CAST(N'1996-08-12T00:00:00.000' AS DateTime), N'Berguvsvägen  8', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10279, N'LEHMS', CAST(N'1996-08-13T00:00:00.000' AS DateTime), N'Magazinweg 7', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10280, N'BERGS', CAST(N'1996-08-14T00:00:00.000' AS DateTime), N'Berguvsvägen  8', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10281, N'ROMEY', CAST(N'1996-08-14T00:00:00.000' AS DateTime), N'Gran Vía, 1', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10282, N'ROMEY', CAST(N'1996-08-15T00:00:00.000' AS DateTime), N'Gran Vía, 1', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10283, N'LILAS', CAST(N'1996-08-16T00:00:00.000' AS DateTime), N'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10284, N'LEHMS', CAST(N'1996-08-19T00:00:00.000' AS DateTime), N'Magazinweg 7', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10285, N'QUICK', CAST(N'1996-08-20T00:00:00.000' AS DateTime), N'Taucherstraße 10', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10286, N'QUICK', CAST(N'1996-08-21T00:00:00.000' AS DateTime), N'Taucherstraße 10', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10287, N'RICAR', CAST(N'1996-08-22T00:00:00.000' AS DateTime), N'Av. Copacabana, 267', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10288, N'REGGC', CAST(N'1996-08-23T00:00:00.000' AS DateTime), N'Strada Provinciale 124', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10289, N'BSBEV', CAST(N'1996-08-26T00:00:00.000' AS DateTime), N'Fauntleroy Circus', 4)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10290, N'COMMI', CAST(N'1996-08-27T00:00:00.000' AS DateTime), N'Av. dos Lusíadas, 23', 4)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10291, N'QUEDE', CAST(N'1996-08-27T00:00:00.000' AS DateTime), N'Rua da Panificadora, 12', 4)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10292, N'TRADH', CAST(N'1996-08-28T00:00:00.000' AS DateTime), N'Av. Inês de Castro, 414', 4)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10293, N'TORTU', CAST(N'1996-08-29T00:00:00.000' AS DateTime), N'Avda. Azteca 123', 4)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10294, N'RATTC', CAST(N'1996-08-30T00:00:00.000' AS DateTime), N'2817 Milton Dr.', 4)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10295, N'VINET', CAST(N'1996-09-02T00:00:00.000' AS DateTime), N'59 rue de l''Abbaye', 4)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10296, N'LILAS', CAST(N'1996-09-03T00:00:00.000' AS DateTime), N'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10297, N'BLONP', CAST(N'1996-09-04T00:00:00.000' AS DateTime), N'24, place Kléber', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10298, N'HUNGO', CAST(N'1996-09-05T00:00:00.000' AS DateTime), N'8 Johnstown Road', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10299, N'RICAR', CAST(N'1996-09-06T00:00:00.000' AS DateTime), N'Av. Copacabana, 267', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10300, N'MAGAA', CAST(N'1996-09-09T00:00:00.000' AS DateTime), N'Via Ludovico il Moro 22', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10301, N'WANDK', CAST(N'1996-09-09T00:00:00.000' AS DateTime), N'Adenauerallee 900', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10302, N'SUPRD', CAST(N'1996-09-10T00:00:00.000' AS DateTime), N'Boulevard Tirou, 255', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10303, N'GODOS', CAST(N'1996-09-11T00:00:00.000' AS DateTime), N'C/ Romero, 33', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10304, N'TORTU', CAST(N'1996-09-12T00:00:00.000' AS DateTime), N'Avda. Azteca 123', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10305, N'OLDWO', CAST(N'1996-09-13T00:00:00.000' AS DateTime), N'2743 Bering St.', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10306, N'ROMEY', CAST(N'1996-09-16T00:00:00.000' AS DateTime), N'Gran Vía, 1', 4)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10307, N'LONEP', CAST(N'1996-09-17T00:00:00.000' AS DateTime), N'89 Chiaroscuro Rd.', 4)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10308, N'ANATR', CAST(N'1996-09-18T00:00:00.000' AS DateTime), N'Avda. de la Constitución 2222', 4)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10309, N'HUNGO', CAST(N'1996-09-19T00:00:00.000' AS DateTime), N'8 Johnstown Road', 4)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10310, N'THEBI', CAST(N'1996-09-20T00:00:00.000' AS DateTime), N'89 Jefferson Way Suite 2', 4)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10311, N'DUMON', CAST(N'1996-09-20T00:00:00.000' AS DateTime), N'67, rue des Cinquante Otages', 4)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10312, N'WANDK', CAST(N'1996-09-23T00:00:00.000' AS DateTime), N'Adenauerallee 900', 4)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10313, N'QUICK', CAST(N'1996-09-24T00:00:00.000' AS DateTime), N'Taucherstraße 10', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10314, N'RATTC', CAST(N'1996-09-25T00:00:00.000' AS DateTime), N'2817 Milton Dr.', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10315, N'ISLAT', CAST(N'1996-09-26T00:00:00.000' AS DateTime), N'Garden House Crowther Way', 2)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10316, N'RATTC', CAST(N'1996-09-27T00:00:00.000' AS DateTime), N'2817 Milton Dr.', 2)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10317, N'LONEP', CAST(N'1996-09-30T00:00:00.000' AS DateTime), N'89 Chiaroscuro Rd.', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10318, N'ISLAT', CAST(N'1996-10-01T00:00:00.000' AS DateTime), N'Garden House Crowther Way', 4)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10319, N'TORTU', CAST(N'1996-10-02T00:00:00.000' AS DateTime), N'Avda. Azteca 123', 4)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10320, N'WARTH', CAST(N'1996-10-03T00:00:00.000' AS DateTime), N'Torikatu 38', 4)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10321, N'ISLAT', CAST(N'1996-10-03T00:00:00.000' AS DateTime), N'Garden House Crowther Way', 4)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10322, N'PERIC', CAST(N'1996-10-04T00:00:00.000' AS DateTime), N'Calle Dr. Jorge Cash 321', 2)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10323, N'KOENE', CAST(N'1996-10-07T00:00:00.000' AS DateTime), N'Maubelstr. 90', 4)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10324, N'SAVEA', CAST(N'1996-10-08T00:00:00.000' AS DateTime), N'187 Suffolk Ln.', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10325, N'KOENE', CAST(N'1996-10-09T00:00:00.000' AS DateTime), N'Maubelstr. 90', 2)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10326, N'BOLID', CAST(N'1996-10-10T00:00:00.000' AS DateTime), N'C/ Araquil, 67', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10327, N'FOLKO', CAST(N'1996-10-11T00:00:00.000' AS DateTime), N'Åkergatan 24', 2)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10328, N'FURIB', CAST(N'1996-10-14T00:00:00.000' AS DateTime), N'Jardim das rosas n. 32', 4)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10329, N'SPLIR', CAST(N'1996-10-15T00:00:00.000' AS DateTime), N'P.O. Box 555', 2)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10330, N'LILAS', CAST(N'1996-10-16T00:00:00.000' AS DateTime), N'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10331, N'BONAP', CAST(N'1996-10-16T00:00:00.000' AS DateTime), N'12, rue des Bouchers', 4)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10332, N'MEREP', CAST(N'1996-10-17T00:00:00.000' AS DateTime), N'43 rue St. Laurent', 2)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10333, N'WARTH', CAST(N'1996-10-18T00:00:00.000' AS DateTime), N'Torikatu 38', 2)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10334, N'VICTE', CAST(N'1996-10-21T00:00:00.000' AS DateTime), N'2, rue du Commerce', 4)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10335, N'HUNGO', CAST(N'1996-10-22T00:00:00.000' AS DateTime), N'8 Johnstown Road', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10336, N'PRINI', CAST(N'1996-10-23T00:00:00.000' AS DateTime), N'Estrada da saúde n. 58', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10337, N'FRANK', CAST(N'1996-10-24T00:00:00.000' AS DateTime), N'Berliner Platz 43', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10338, N'OLDWO', CAST(N'1996-10-25T00:00:00.000' AS DateTime), N'2743 Bering St.', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10339, N'MEREP', CAST(N'1996-10-28T00:00:00.000' AS DateTime), N'43 rue St. Laurent', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10340, N'BONAP', CAST(N'1996-10-29T00:00:00.000' AS DateTime), N'12, rue des Bouchers', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10341, N'SIMOB', CAST(N'1996-10-29T00:00:00.000' AS DateTime), N'Vinbæltet 34', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10342, N'FRANK', CAST(N'1996-10-30T00:00:00.000' AS DateTime), N'Berliner Platz 43', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10343, N'LEHMS', CAST(N'1996-10-31T00:00:00.000' AS DateTime), N'Magazinweg 7', 4)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10344, N'WHITC', CAST(N'1996-11-01T00:00:00.000' AS DateTime), N'1029 - 12th Ave. S.', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10345, N'QUICK', CAST(N'1996-11-04T00:00:00.000' AS DateTime), N'Taucherstraße 10', 4)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10346, N'RATTC', CAST(N'1996-11-05T00:00:00.000' AS DateTime), N'2817 Milton Dr.', 4)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10347, N'FAMIA', CAST(N'1996-11-06T00:00:00.000' AS DateTime), N'Rua Orós, 92', 3)
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10348, N'WANDK', CAST(N'1996-11-07T00:00:00.000' AS DateTime), N'Adenauerallee 900', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10349, N'SPLIR', CAST(N'1996-11-08T00:00:00.000' AS DateTime), N'P.O. Box 555', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10350, N'LAMAI', CAST(N'1996-11-11T00:00:00.000' AS DateTime), N'1 rue Alsace-Lorraine', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10351, N'ERNSH', CAST(N'1996-11-11T00:00:00.000' AS DateTime), N'Kirchgasse 6', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10352, N'FURIB', CAST(N'1996-11-12T00:00:00.000' AS DateTime), N'Jardim das rosas n. 32', 2)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10353, N'PICCO', CAST(N'1996-11-13T00:00:00.000' AS DateTime), N'Geislweg 14', 4)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10354, N'PERIC', CAST(N'1996-11-14T00:00:00.000' AS DateTime), N'Calle Dr. Jorge Cash 321', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10355, N'AROUT', CAST(N'1996-11-15T00:00:00.000' AS DateTime), N'Brook Farm Stratford St. Mary', 4)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10356, N'WANDK', CAST(N'1996-11-18T00:00:00.000' AS DateTime), N'Adenauerallee 900', 2)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10357, N'LILAS', CAST(N'1996-11-19T00:00:00.000' AS DateTime), N'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10358, N'LAMAI', CAST(N'1996-11-20T00:00:00.000' AS DateTime), N'1 rue Alsace-Lorraine', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10359, N'SEVES', CAST(N'1996-11-21T00:00:00.000' AS DateTime), N'90 Wadhurst Rd.', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10360, N'BLONP', CAST(N'1996-11-22T00:00:00.000' AS DateTime), N'24, place Kléber', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10361, N'QUICK', CAST(N'1996-11-22T00:00:00.000' AS DateTime), N'Taucherstraße 10', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10362, N'BONAP', CAST(N'1996-11-25T00:00:00.000' AS DateTime), N'12, rue des Bouchers', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10363, N'DRACD', CAST(N'1996-11-26T00:00:00.000' AS DateTime), N'Walserweg 21', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10364, N'EASTC', CAST(N'1996-11-26T00:00:00.000' AS DateTime), N'35 King George', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10365, N'ANTON', CAST(N'1996-11-27T00:00:00.000' AS DateTime), N'Mataderos  2312', 4)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10366, N'GALED', CAST(N'1996-11-28T00:00:00.000' AS DateTime), N'Rambla de Cataluña, 23', 4)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10367, N'VAFFE', CAST(N'1996-11-28T00:00:00.000' AS DateTime), N'Smagsloget 45', 4)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10368, N'ERNSH', CAST(N'1996-11-29T00:00:00.000' AS DateTime), N'Kirchgasse 6', 2)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10369, N'SPLIR', CAST(N'1996-12-02T00:00:00.000' AS DateTime), N'P.O. Box 555', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10370, N'CHOPS', CAST(N'1996-12-03T00:00:00.000' AS DateTime), N'Hauptstr. 31', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10371, N'LAMAI', CAST(N'1996-12-03T00:00:00.000' AS DateTime), N'1 rue Alsace-Lorraine', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10372, N'QUEEN', CAST(N'1996-12-04T00:00:00.000' AS DateTime), N'Alameda dos Canàrios, 891', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10373, N'HUNGO', CAST(N'1996-12-05T00:00:00.000' AS DateTime), N'8 Johnstown Road', 4)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10374, N'WOLZA', CAST(N'1996-12-05T00:00:00.000' AS DateTime), N'ul. Filtrowa 68', 2)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10375, N'HUNGC', CAST(N'1996-12-06T00:00:00.000' AS DateTime), N'City Center Plaza 516 Main St.', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10376, N'MEREP', CAST(N'1996-12-09T00:00:00.000' AS DateTime), N'43 rue St. Laurent', 4)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10377, N'SEVES', CAST(N'1996-12-09T00:00:00.000' AS DateTime), N'90 Wadhurst Rd.', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10378, N'FOLKO', CAST(N'1996-12-10T00:00:00.000' AS DateTime), N'Åkergatan 24', 2)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10379, N'QUEDE', CAST(N'1996-12-11T00:00:00.000' AS DateTime), N'Rua da Panificadora, 12', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10380, N'HUNGO', CAST(N'1996-12-12T00:00:00.000' AS DateTime), N'8 Johnstown Road', 4)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10381, N'LILAS', CAST(N'1996-12-12T00:00:00.000' AS DateTime), N'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 2)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10382, N'ERNSH', CAST(N'1996-12-13T00:00:00.000' AS DateTime), N'Kirchgasse 6', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10383, N'AROUT', CAST(N'1996-12-16T00:00:00.000' AS DateTime), N'Brook Farm Stratford St. Mary', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10384, N'BERGS', CAST(N'1996-12-16T00:00:00.000' AS DateTime), N'Berguvsvägen  8', 2)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10385, N'SPLIR', CAST(N'1996-12-17T00:00:00.000' AS DateTime), N'P.O. Box 555', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10386, N'FAMIA', CAST(N'1996-12-18T00:00:00.000' AS DateTime), N'Rua Orós, 92', 2)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10387, N'SANTG', CAST(N'1996-12-18T00:00:00.000' AS DateTime), N'Erling Skakkes gate 78', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10388, N'SEVES', CAST(N'1996-12-19T00:00:00.000' AS DateTime), N'90 Wadhurst Rd.', 4)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10389, N'BOTTM', CAST(N'1996-12-20T00:00:00.000' AS DateTime), N'23 Tsawassen Blvd.', 4)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10390, N'ERNSH', CAST(N'1996-12-23T00:00:00.000' AS DateTime), N'Kirchgasse 6', 2)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10391, N'DRACD', CAST(N'1996-12-23T00:00:00.000' AS DateTime), N'Walserweg 21', 2)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10392, N'PICCO', CAST(N'1996-12-24T00:00:00.000' AS DateTime), N'Geislweg 14', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10393, N'SAVEA', CAST(N'1996-12-25T00:00:00.000' AS DateTime), N'187 Suffolk Ln.', 4)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10394, N'HUNGC', CAST(N'1996-12-25T00:00:00.000' AS DateTime), N'City Center Plaza 516 Main St.', 4)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10395, N'HILAA', CAST(N'1996-12-26T00:00:00.000' AS DateTime), N'Carrera 22 con Ave. Carlos Soublette #8-35', 4)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10396, N'FRANK', CAST(N'1996-12-27T00:00:00.000' AS DateTime), N'Berliner Platz 43', 2)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10397, N'PRINI', CAST(N'1996-12-27T00:00:00.000' AS DateTime), N'Estrada da saúde n. 58', 2)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10398, N'SAVEA', CAST(N'1996-12-30T00:00:00.000' AS DateTime), N'187 Suffolk Ln.', 2)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10399, N'VAFFE', CAST(N'1996-12-31T00:00:00.000' AS DateTime), N'Smagsloget 45', 2)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10400, N'EASTC', CAST(N'1997-01-01T00:00:00.000' AS DateTime), N'35 King George', 2)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10401, N'RATTC', CAST(N'1997-01-01T00:00:00.000' AS DateTime), N'2817 Milton Dr.', 2)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10402, N'ERNSH', CAST(N'1997-01-02T00:00:00.000' AS DateTime), N'Kirchgasse 6', 2)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10403, N'ERNSH', CAST(N'1997-01-03T00:00:00.000' AS DateTime), N'Kirchgasse 6', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10404, N'MAGAA', CAST(N'1997-01-03T00:00:00.000' AS DateTime), N'Via Ludovico il Moro 22', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10405, N'LINOD', CAST(N'1997-01-06T00:00:00.000' AS DateTime), N'Ave. 5 de Mayo Porlamar', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10406, N'QUEEN', CAST(N'1997-01-07T00:00:00.000' AS DateTime), N'Alameda dos Canàrios, 891', 2)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10407, N'OTTIK', CAST(N'1997-01-07T00:00:00.000' AS DateTime), N'Mehrheimerstr. 369', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10408, N'FOLIG', CAST(N'1997-01-08T00:00:00.000' AS DateTime), N'184, chaussée de Tournai', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10409, N'OCEAN', CAST(N'1997-01-09T00:00:00.000' AS DateTime), N'Ing. Gustavo Moncada 8585 Piso 20-A', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10410, N'BOTTM', CAST(N'1997-01-10T00:00:00.000' AS DateTime), N'23 Tsawassen Blvd.', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10411, N'BOTTM', CAST(N'1997-01-10T00:00:00.000' AS DateTime), N'23 Tsawassen Blvd.', 4)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10412, N'WARTH', CAST(N'1997-01-13T00:00:00.000' AS DateTime), N'Torikatu 38', 2)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10413, N'LAMAI', CAST(N'1997-01-14T00:00:00.000' AS DateTime), N'1 rue Alsace-Lorraine', 2)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10414, N'FAMIA', CAST(N'1997-01-14T00:00:00.000' AS DateTime), N'Rua Orós, 92', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10415, N'HUNGC', CAST(N'1997-01-15T00:00:00.000' AS DateTime), N'City Center Plaza 516 Main St.', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10416, N'WARTH', CAST(N'1997-01-16T00:00:00.000' AS DateTime), N'Torikatu 38', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10417, N'SIMOB', CAST(N'1997-01-16T00:00:00.000' AS DateTime), N'Vinbæltet 34', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10418, N'QUICK', CAST(N'1997-01-17T00:00:00.000' AS DateTime), N'Taucherstraße 10', 2)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10419, N'RICSU', CAST(N'1997-01-20T00:00:00.000' AS DateTime), N'Starenweg 5', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10420, N'WELLI', CAST(N'1997-01-21T00:00:00.000' AS DateTime), N'Rua do Mercado, 12', 2)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10421, N'QUEDE', CAST(N'1997-01-21T00:00:00.000' AS DateTime), N'Rua da Panificadora, 12', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10422, N'FRANS', CAST(N'1997-01-22T00:00:00.000' AS DateTime), N'Via Monte Bianco 34', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10423, N'GOURL', CAST(N'1997-01-23T00:00:00.000' AS DateTime), N'Av. Brasil, 442', 2)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10424, N'MEREP', CAST(N'1997-01-23T00:00:00.000' AS DateTime), N'43 rue St. Laurent', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10425, N'LAMAI', CAST(N'1997-01-24T00:00:00.000' AS DateTime), N'1 rue Alsace-Lorraine', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10426, N'GALED', CAST(N'1997-01-27T00:00:00.000' AS DateTime), N'Rambla de Cataluña, 23', 2)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10427, N'PICCO', CAST(N'1997-01-27T00:00:00.000' AS DateTime), N'Geislweg 14', 2)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10428, N'REGGC', CAST(N'1997-01-28T00:00:00.000' AS DateTime), N'Strada Provinciale 124', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10429, N'HUNGO', CAST(N'1997-01-29T00:00:00.000' AS DateTime), N'8 Johnstown Road', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10430, N'ERNSH', CAST(N'1997-01-30T00:00:00.000' AS DateTime), N'Kirchgasse 6', 2)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10431, N'BOTTM', CAST(N'1997-01-30T00:00:00.000' AS DateTime), N'23 Tsawassen Blvd.', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10432, N'SPLIR', CAST(N'1997-01-31T00:00:00.000' AS DateTime), N'P.O. Box 555', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10433, N'PRINI', CAST(N'1997-02-03T00:00:00.000' AS DateTime), N'Estrada da saúde n. 58', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10434, N'FOLKO', CAST(N'1997-02-03T00:00:00.000' AS DateTime), N'Åkergatan 24', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10435, N'CONSH', CAST(N'1997-02-04T00:00:00.000' AS DateTime), N'Berkeley Gardens 12  Brewery', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10436, N'BLONP', CAST(N'1997-02-05T00:00:00.000' AS DateTime), N'24, place Kléber', 2)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10437, N'WARTH', CAST(N'1997-02-05T00:00:00.000' AS DateTime), N'Torikatu 38', 2)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10438, N'TOMSP', CAST(N'1997-02-06T00:00:00.000' AS DateTime), N'Luisenstr. 48', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10439, N'MEREP', CAST(N'1997-02-07T00:00:00.000' AS DateTime), N'43 rue St. Laurent', 2)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10440, N'SAVEA', CAST(N'1997-02-10T00:00:00.000' AS DateTime), N'187 Suffolk Ln.', 4)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10441, N'OLDWO', CAST(N'1997-02-10T00:00:00.000' AS DateTime), N'2743 Bering St.', 2)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10442, N'ERNSH', CAST(N'1997-02-11T00:00:00.000' AS DateTime), N'Kirchgasse 6', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10443, N'REGGC', CAST(N'1997-02-12T00:00:00.000' AS DateTime), N'Strada Provinciale 124', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10444, N'BERGS', CAST(N'1997-02-12T00:00:00.000' AS DateTime), N'Berguvsvägen  8', 4)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10445, N'BERGS', CAST(N'1997-02-13T00:00:00.000' AS DateTime), N'Berguvsvägen  8', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10446, N'TOMSP', CAST(N'1997-02-14T00:00:00.000' AS DateTime), N'Luisenstr. 48', 2)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10447, N'RICAR', CAST(N'1997-02-14T00:00:00.000' AS DateTime), N'Av. Copacabana, 267', 3)
GO
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10448, N'RANCH', CAST(N'1997-02-17T00:00:00.000' AS DateTime), N'Av. del Libertador 900', 2)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10451, N'TOMSP', CAST(N'2023-11-30T00:00:00.000' AS DateTime), N'', 1)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10454, N'staff', CAST(N'2023-10-16T00:00:00.000' AS DateTime), N'hahahaha', 2)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10455, N'staff', CAST(N'2023-10-16T00:00:00.000' AS DateTime), N'hahahaha', 2)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10456, N'staff', CAST(N'2023-10-16T00:00:00.000' AS DateTime), N'hahahaha', 2)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10457, N'staff', CAST(N'2023-10-16T00:00:00.000' AS DateTime), N'hahahaha', 1)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10458, N'staff', CAST(N'2023-10-16T00:00:00.000' AS DateTime), N'hahahaha', 1)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10459, N'staff', CAST(N'2023-10-16T00:00:00.000' AS DateTime), N'hahahaha', 2)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10460, N'staff', CAST(N'2023-10-16T00:00:00.000' AS DateTime), N'hahahaha', 2)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10461, N'staff', CAST(N'2023-10-16T00:00:00.000' AS DateTime), N'hahahaha', 1)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10462, N'staff', CAST(N'2023-10-16T00:00:00.000' AS DateTime), N'hahahaha', 1)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10466, N'staff', CAST(N'2023-10-16T00:00:00.000' AS DateTime), N'hahahaha', 1)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10470, N'staff', CAST(N'2023-12-01T00:00:00.000' AS DateTime), N'HTHR', 3)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10471, N'staff', CAST(N'2023-12-01T00:00:00.000' AS DateTime), N'HTHR', 1)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10472, N'staff', CAST(N'2023-12-01T00:00:00.000' AS DateTime), N'123', NULL)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10473, N'staff', CAST(N'2023-12-01T00:00:00.000' AS DateTime), N'sfkj', NULL)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10474, N'staff', CAST(N'2023-12-01T00:00:00.000' AS DateTime), N'ÈWE', NULL)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10475, N'staff', CAST(N'2023-12-01T00:00:00.000' AS DateTime), N'ÈWE', NULL)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10476, N'staff', CAST(N'2023-12-01T00:00:00.000' AS DateTime), N'ADF', NULL)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10477, N'staff', CAST(N'2023-12-01T00:00:00.000' AS DateTime), N'123', NULL)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10478, N'staff', CAST(N'2023-12-01T00:00:00.000' AS DateTime), N'ffsd', NULL)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10481, N'staff', CAST(N'2023-12-01T00:00:00.000' AS DateTime), N'fsff', NULL)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10482, N'staff', CAST(N'2023-12-01T00:00:00.000' AS DateTime), N'FDDFD', NULL)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10485, N'staff', CAST(N'2023-12-01T00:00:00.000' AS DateTime), N'dsds', NULL)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10486, N'staff', CAST(N'2023-12-01T00:00:00.000' AS DateTime), N'ètt', NULL)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10487, N'staff', CAST(N'2023-12-01T00:00:00.000' AS DateTime), N'1', NULL)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10489, N'staff', CAST(N'2023-12-01T00:00:00.000' AS DateTime), N'fae', NULL)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10490, N'staff', CAST(N'2023-12-02T00:00:00.000' AS DateTime), N'ffdd', 1)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10491, N'staff', CAST(N'2023-12-02T00:00:00.000' AS DateTime), N'4566', 1)
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address], [Statustid]) VALUES (10492, N'staff', CAST(N'2023-12-03T00:00:00.000' AS DateTime), N'bình thạnh', 1)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
INSERT [dbo].[Productinformation] ([Id], [Chude], [Noidung], [Productid], [Img]) VALUES (1, N'THÔNG TIN SẢN PHẨM', N'* cam kết với bạn:
- Giaygiare.vn ship COD toàn quốc, FREE vận chuyển cho tất cả Quý khách mua online.
- Giao hàng và thu tiền tận nơi. Quí khách được check hàng trước khi thanh toán.
- Đổi hàng trong 7 ngày. (Áp dụng với sản phẩm chưa sử dụng, còn mạc, nguyên vẹn như khi nhận hàng)
* Cách thức mua hàng:
- Khách hàng MUA HÀNG tại SHOP, WEBSITE, GỌI ĐIỆN tới HOTLINE: 0909.365.079 hoặc INBOX FANPAGE của shop để được tư vấn.
- Sau khi đặt hàng, trong vòng 30 phút sẽ có người liên hệ bạn để xác nhận và thỏa thuận thời gian giao hàng với bạn.
- Shop miễn phí vận chuyển toàn quốc. Quý khách được phép kiểm tra hàng mới thanh toán nữa nhé.
* Thông tin liên hệ:
+ Showroom: 62/1a TTN02, Phường Tân Thới Nhất, Quận 12, TPHCM.
+ Điện thoại: 0909 365 079 / Hotline: 0932 152 259 (Zalo, Skype, Viber)
+ Email: tuloshoes@gmail.com
', 1001, N'')
INSERT [dbo].[Productinformation] ([Id], [Chude], [Noidung], [Productid], [Img]) VALUES (2, N'THÔNG TIN SẢN PHẨM', N'* cam kết với bạn:
- Giaygiare.vn ship COD toàn quốc, FREE vận chuyển cho tất cả Quý khách mua online.
- Giao hàng và thu tiền tận nơi. Quí khách được check hàng trước khi thanh toán.
- Đổi hàng trong 7 ngày. (Áp dụng với sản phẩm chưa sử dụng, còn mạc, nguyên vẹn như khi nhận hàng)
* Cách thức mua hàng:
- Khách hàng MUA HÀNG tại SHOP, WEBSITE, GỌI ĐIỆN tới HOTLINE: 0909.365.079 hoặc INBOX FANPAGE của shop để được tư vấn.
- Sau khi đặt hàng, trong vòng 30 phút sẽ có người liên hệ bạn để xác nhận và thỏa thuận thời gian giao hàng với bạn.
- Shop miễn phí vận chuyển toàn quốc. Quý khách được phép kiểm tra hàng mới thanh toán nữa nhé.
* Thông tin liên hệ:
+ Showroom: 62/1a TTN02, Phường Tân Thới Nhất, Quận 12, TPHCM.
+ Điện thoại: 0909 365 079 / Hotline: 0932 152 259 (Zalo, Skype, Viber)
+ Email: tuloshoes@gmail.com
', 1089, N'')
INSERT [dbo].[Productinformation] ([Id], [Chude], [Noidung], [Productid], [Img]) VALUES (3, N'THÔNG TIN SẢN PHẨM', N'* cam kết với bạn: - Giaygiare.vn ship COD toàn quốc, FREE vận chuyển cho tất cả Quý khách mua online. - Giao hàng và thu tiền tận nơi. Quí khách được check hàng trước khi thanh toán. - Đổi hàng trong 7 ngày. (Áp dụng với sản phẩm chưa sử dụng, còn mạc, nguyên vẹn như khi nhận hàng) * Cách thức mua hàng: - Khách hàng MUA HÀNG tại SHOP, WEBSITE, GỌI ĐIỆN tới HOTLINE: 0909.365.079 hoặc INBOX FANPAGE của shop để được tư vấn. - Sau khi đặt hàng, trong vòng 30 phút sẽ có người liên hệ bạn để xác nhận và thỏa thuận thời gian giao hàng với bạn. - Shop miễn phí vận chuyển toàn quốc. Quý khách được phép kiểm tra hàng mới thanh toán nữa nhé. * Thông tin liên hệ: + Showroom: 62/1a TTN02, Phường Tân Thới Nhất, Quận 12, TPHCM. + Điện thoại: 0909 365 079 / Hotline: 0932 152 259 (Zalo, Skype, Viber) + Email: tuloshoes@gmail.com', 1090, N'')
INSERT [dbo].[Productinformation] ([Id], [Chude], [Noidung], [Productid], [Img]) VALUES (4, N'THÔNG TIN SẢN PHẨM', N'* cam kết với bạn: - Giaygiare.vn ship COD toàn quốc, FREE vận chuyển cho tất cả Quý khách mua online. - Giao hàng và thu tiền tận nơi. Quí khách được check hàng trước khi thanh toán. - Đổi hàng trong 7 ngày. (Áp dụng với sản phẩm chưa sử dụng, còn mạc, nguyên vẹn như khi nhận hàng) * Cách thức mua hàng: - Khách hàng MUA HÀNG tại SHOP, WEBSITE, GỌI ĐIỆN tới HOTLINE: 0909.365.079 hoặc INBOX FANPAGE của shop để được tư vấn. - Sau khi đặt hàng, trong vòng 30 phút sẽ có người liên hệ bạn để xác nhận và thỏa thuận thời gian giao hàng với bạn. - Shop miễn phí vận chuyển toàn quốc. Quý khách được phép kiểm tra hàng mới thanh toán nữa nhé. * Thông tin liên hệ: + Showroom: 62/1a TTN02, Phường Tân Thới Nhất, Quận 12, TPHCM. + Điện thoại: 0909 365 079 / Hotline: 0932 152 259 (Zalo, Skype, Viber) + Email: tuloshoes@gmail.com', 1092, N'')
INSERT [dbo].[Productinformation] ([Id], [Chude], [Noidung], [Productid], [Img]) VALUES (5, N'THÔNG TIN SẢN PHẨM', N'* cam kết với bạn: - Giaygiare.vn ship COD toàn quốc, FREE vận chuyển cho tất cả Quý khách mua online. - Giao hàng và thu tiền tận nơi. Quí khách được check hàng trước khi thanh toán. - Đổi hàng trong 7 ngày. (Áp dụng với sản phẩm chưa sử dụng, còn mạc, nguyên vẹn như khi nhận hàng) * Cách thức mua hàng: - Khách hàng MUA HÀNG tại SHOP, WEBSITE, GỌI ĐIỆN tới HOTLINE: 0909.365.079 hoặc INBOX FANPAGE của shop để được tư vấn. - Sau khi đặt hàng, trong vòng 30 phút sẽ có người liên hệ bạn để xác nhận và thỏa thuận thời gian giao hàng với bạn. - Shop miễn phí vận chuyển toàn quốc. Quý khách được phép kiểm tra hàng mới thanh toán nữa nhé. * Thông tin liên hệ: + Showroom: 62/1a TTN02, Phường Tân Thới Nhất, Quận 12, TPHCM. + Điện thoại: 0909 365 079 / Hotline: 0932 152 259 (Zalo, Skype, Viber) + Email: tuloshoes@gmail.com', 1093, N'')
INSERT [dbo].[Productinformation] ([Id], [Chude], [Noidung], [Productid], [Img]) VALUES (6, N'THÔNG TIN SẢN PHẨM', N'* cam kết với bạn: - Giaygiare.vn ship COD toàn quốc, FREE vận chuyển cho tất cả Quý khách mua online. - Giao hàng và thu tiền tận nơi. Quí khách được check hàng trước khi thanh toán. - Đổi hàng trong 7 ngày. (Áp dụng với sản phẩm chưa sử dụng, còn mạc, nguyên vẹn như khi nhận hàng) * Cách thức mua hàng: - Khách hàng MUA HÀNG tại SHOP, WEBSITE, GỌI ĐIỆN tới HOTLINE: 0909.365.079 hoặc INBOX FANPAGE của shop để được tư vấn. - Sau khi đặt hàng, trong vòng 30 phút sẽ có người liên hệ bạn để xác nhận và thỏa thuận thời gian giao hàng với bạn. - Shop miễn phí vận chuyển toàn quốc. Quý khách được phép kiểm tra hàng mới thanh toán nữa nhé. * Thông tin liên hệ: + Showroom: 62/1a TTN02, Phường Tân Thới Nhất, Quận 12, TPHCM. + Điện thoại: 0909 365 079 / Hotline: 0932 152 259 (Zalo, Skype, Viber) + Email: tuloshoes@gmail.com', 1097, N'')
INSERT [dbo].[Productinformation] ([Id], [Chude], [Noidung], [Productid], [Img]) VALUES (7, N'THÔNG TIN SẢN PHẨM', N'* cam kết với bạn: - Giaygiare.vn ship COD toàn quốc, FREE vận chuyển cho tất cả Quý khách mua online. - Giao hàng và thu tiền tận nơi. Quí khách được check hàng trước khi thanh toán. - Đổi hàng trong 7 ngày. (Áp dụng với sản phẩm chưa sử dụng, còn mạc, nguyên vẹn như khi nhận hàng) * Cách thức mua hàng: - Khách hàng MUA HÀNG tại SHOP, WEBSITE, GỌI ĐIỆN tới HOTLINE: 0909.365.079 hoặc INBOX FANPAGE của shop để được tư vấn. - Sau khi đặt hàng, trong vòng 30 phút sẽ có người liên hệ bạn để xác nhận và thỏa thuận thời gian giao hàng với bạn. - Shop miễn phí vận chuyển toàn quốc. Quý khách được phép kiểm tra hàng mới thanh toán nữa nhé. * Thông tin liên hệ: + Showroom: 62/1a TTN02, Phường Tân Thới Nhất, Quận 12, TPHCM. + Điện thoại: 0909 365 079 / Hotline: 0932 152 259 (Zalo, Skype, Viber) + Email: tuloshoes@gmail.com', 1099, N'')
INSERT [dbo].[Productinformation] ([Id], [Chude], [Noidung], [Productid], [Img]) VALUES (8, N'THÔNG TIN SẢN PHẨM', N'* cam kết với bạn: - Giaygiare.vn ship COD toàn quốc, FREE vận chuyển cho tất cả Quý khách mua online. - Giao hàng và thu tiền tận nơi. Quí khách được check hàng trước khi thanh toán. - Đổi hàng trong 7 ngày. (Áp dụng với sản phẩm chưa sử dụng, còn mạc, nguyên vẹn như khi nhận hàng) * Cách thức mua hàng: - Khách hàng MUA HÀNG tại SHOP, WEBSITE, GỌI ĐIỆN tới HOTLINE: 0909.365.079 hoặc INBOX FANPAGE của shop để được tư vấn. - Sau khi đặt hàng, trong vòng 30 phút sẽ có người liên hệ bạn để xác nhận và thỏa thuận thời gian giao hàng với bạn. - Shop miễn phí vận chuyển toàn quốc. Quý khách được phép kiểm tra hàng mới thanh toán nữa nhé. * Thông tin liên hệ: + Showroom: 62/1a TTN02, Phường Tân Thới Nhất, Quận 12, TPHCM. + Điện thoại: 0909 365 079 / Hotline: 0932 152 259 (Zalo, Skype, Viber) + Email: tuloshoes@gmail.com', 1100, N'')
INSERT [dbo].[Productinformation] ([Id], [Chude], [Noidung], [Productid], [Img]) VALUES (9, N'THÔNG TIN SẢN PHẨM', N'* cam kết với bạn: - Giaygiare.vn ship COD toàn quốc, FREE vận chuyển cho tất cả Quý khách mua online. - Giao hàng và thu tiền tận nơi. Quí khách được check hàng trước khi thanh toán. - Đổi hàng trong 7 ngày. (Áp dụng với sản phẩm chưa sử dụng, còn mạc, nguyên vẹn như khi nhận hàng) * Cách thức mua hàng: - Khách hàng MUA HÀNG tại SHOP, WEBSITE, GỌI ĐIỆN tới HOTLINE: 0909.365.079 hoặc INBOX FANPAGE của shop để được tư vấn. - Sau khi đặt hàng, trong vòng 30 phút sẽ có người liên hệ bạn để xác nhận và thỏa thuận thời gian giao hàng với bạn. - Shop miễn phí vận chuyển toàn quốc. Quý khách được phép kiểm tra hàng mới thanh toán nữa nhé. * Thông tin liên hệ: + Showroom: 62/1a TTN02, Phường Tân Thới Nhất, Quận 12, TPHCM. + Điện thoại: 0909 365 079 / Hotline: 0932 152 259 (Zalo, Skype, Viber) + Email: tuloshoes@gmail.com', 1101, N'')
INSERT [dbo].[Productinformation] ([Id], [Chude], [Noidung], [Productid], [Img]) VALUES (10, N'THÔNG TIN SẢN PHẨM', N'* cam kết với bạn: - Giaygiare.vn ship COD toàn quốc, FREE vận chuyển cho tất cả Quý khách mua online. - Giao hàng và thu tiền tận nơi. Quí khách được check hàng trước khi thanh toán. - Đổi hàng trong 7 ngày. (Áp dụng với sản phẩm chưa sử dụng, còn mạc, nguyên vẹn như khi nhận hàng) * Cách thức mua hàng: - Khách hàng MUA HÀNG tại SHOP, WEBSITE, GỌI ĐIỆN tới HOTLINE: 0909.365.079 hoặc INBOX FANPAGE của shop để được tư vấn. - Sau khi đặt hàng, trong vòng 30 phút sẽ có người liên hệ bạn để xác nhận và thỏa thuận thời gian giao hàng với bạn. - Shop miễn phí vận chuyển toàn quốc. Quý khách được phép kiểm tra hàng mới thanh toán nữa nhé. * Thông tin liên hệ: + Showroom: 62/1a TTN02, Phường Tân Thới Nhất, Quận 12, TPHCM. + Điện thoại: 0909 365 079 / Hotline: 0932 152 259 (Zalo, Skype, Viber) + Email: tuloshoes@gmail.com', 1103, N'')
INSERT [dbo].[Productinformation] ([Id], [Chude], [Noidung], [Productid], [Img]) VALUES (11, N'THÔNG TIN SẢN PHẨM', N'* cam kết với bạn: - Giaygiare.vn ship COD toàn quốc, FREE vận chuyển cho tất cả Quý khách mua online. - Giao hàng và thu tiền tận nơi. Quí khách được check hàng trước khi thanh toán. - Đổi hàng trong 7 ngày. (Áp dụng với sản phẩm chưa sử dụng, còn mạc, nguyên vẹn như khi nhận hàng) * Cách thức mua hàng: - Khách hàng MUA HÀNG tại SHOP, WEBSITE, GỌI ĐIỆN tới HOTLINE: 0909.365.079 hoặc INBOX FANPAGE của shop để được tư vấn. - Sau khi đặt hàng, trong vòng 30 phút sẽ có người liên hệ bạn để xác nhận và thỏa thuận thời gian giao hàng với bạn. - Shop miễn phí vận chuyển toàn quốc. Quý khách được phép kiểm tra hàng mới thanh toán nữa nhé. * Thông tin liên hệ: + Showroom: 62/1a TTN02, Phường Tân Thới Nhất, Quận 12, TPHCM. + Điện thoại: 0909 365 079 / Hotline: 0932 152 259 (Zalo, Skype, Viber) + Email: tuloshoes@gmail.com', 1106, N'')
INSERT [dbo].[Productinformation] ([Id], [Chude], [Noidung], [Productid], [Img]) VALUES (12, N'THÔNG TIN SẢN PHẨM', N'* cam kết với bạn: - Giaygiare.vn ship COD toàn quốc, FREE vận chuyển cho tất cả Quý khách mua online. - Giao hàng và thu tiền tận nơi. Quí khách được check hàng trước khi thanh toán. - Đổi hàng trong 7 ngày. (Áp dụng với sản phẩm chưa sử dụng, còn mạc, nguyên vẹn như khi nhận hàng) * Cách thức mua hàng: - Khách hàng MUA HÀNG tại SHOP, WEBSITE, GỌI ĐIỆN tới HOTLINE: 0909.365.079 hoặc INBOX FANPAGE của shop để được tư vấn. - Sau khi đặt hàng, trong vòng 30 phút sẽ có người liên hệ bạn để xác nhận và thỏa thuận thời gian giao hàng với bạn. - Shop miễn phí vận chuyển toàn quốc. Quý khách được phép kiểm tra hàng mới thanh toán nữa nhé. * Thông tin liên hệ: + Showroom: 62/1a TTN02, Phường Tân Thới Nhất, Quận 12, TPHCM. + Điện thoại: 0909 365 079 / Hotline: 0932 152 259 (Zalo, Skype, Viber) + Email: tuloshoes@gmail.com', 1107, N'')
INSERT [dbo].[Productinformation] ([Id], [Chude], [Noidung], [Productid], [Img]) VALUES (13, N'THÔNG TIN SẢN PHẨM', N'* cam kết với bạn: - Giaygiare.vn ship COD toàn quốc, FREE vận chuyển cho tất cả Quý khách mua online. - Giao hàng và thu tiền tận nơi. Quí khách được check hàng trước khi thanh toán. - Đổi hàng trong 7 ngày. (Áp dụng với sản phẩm chưa sử dụng, còn mạc, nguyên vẹn như khi nhận hàng) * Cách thức mua hàng: - Khách hàng MUA HÀNG tại SHOP, WEBSITE, GỌI ĐIỆN tới HOTLINE: 0909.365.079 hoặc INBOX FANPAGE của shop để được tư vấn. - Sau khi đặt hàng, trong vòng 30 phút sẽ có người liên hệ bạn để xác nhận và thỏa thuận thời gian giao hàng với bạn. - Shop miễn phí vận chuyển toàn quốc. Quý khách được phép kiểm tra hàng mới thanh toán nữa nhé. * Thông tin liên hệ: + Showroom: 62/1a TTN02, Phường Tân Thới Nhất, Quận 12, TPHCM. + Điện thoại: 0909 365 079 / Hotline: 0932 152 259 (Zalo, Skype, Viber) + Email: tuloshoes@gmail.com', 1111, N'')
INSERT [dbo].[Productinformation] ([Id], [Chude], [Noidung], [Productid], [Img]) VALUES (14, N'THÔNG TIN SẢN PHẨM', N'* cam kết với bạn: - Giaygiare.vn ship COD toàn quốc, FREE vận chuyển cho tất cả Quý khách mua online. - Giao hàng và thu tiền tận nơi. Quí khách được check hàng trước khi thanh toán. - Đổi hàng trong 7 ngày. (Áp dụng với sản phẩm chưa sử dụng, còn mạc, nguyên vẹn như khi nhận hàng) * Cách thức mua hàng: - Khách hàng MUA HÀNG tại SHOP, WEBSITE, GỌI ĐIỆN tới HOTLINE: 0909.365.079 hoặc INBOX FANPAGE của shop để được tư vấn. - Sau khi đặt hàng, trong vòng 30 phút sẽ có người liên hệ bạn để xác nhận và thỏa thuận thời gian giao hàng với bạn. - Shop miễn phí vận chuyển toàn quốc. Quý khách được phép kiểm tra hàng mới thanh toán nữa nhé. * Thông tin liên hệ: + Showroom: 62/1a TTN02, Phường Tân Thới Nhất, Quận 12, TPHCM. + Điện thoại: 0909 365 079 / Hotline: 0932 152 259 (Zalo, Skype, Viber) + Email: tuloshoes@gmail.com', 1113, N'')
INSERT [dbo].[Productinformation] ([Id], [Chude], [Noidung], [Productid], [Img]) VALUES (15, N'THÔNG TIN SẢN PHẨM', N'* cam kết với bạn: - Giaygiare.vn ship COD toàn quốc, FREE vận chuyển cho tất cả Quý khách mua online. - Giao hàng và thu tiền tận nơi. Quí khách được check hàng trước khi thanh toán. - Đổi hàng trong 7 ngày. (Áp dụng với sản phẩm chưa sử dụng, còn mạc, nguyên vẹn như khi nhận hàng) * Cách thức mua hàng: - Khách hàng MUA HÀNG tại SHOP, WEBSITE, GỌI ĐIỆN tới HOTLINE: 0909.365.079 hoặc INBOX FANPAGE của shop để được tư vấn. - Sau khi đặt hàng, trong vòng 30 phút sẽ có người liên hệ bạn để xác nhận và thỏa thuận thời gian giao hàng với bạn. - Shop miễn phí vận chuyển toàn quốc. Quý khách được phép kiểm tra hàng mới thanh toán nữa nhé. * Thông tin liên hệ: + Showroom: 62/1a TTN02, Phường Tân Thới Nhất, Quận 12, TPHCM. + Điện thoại: 0909 365 079 / Hotline: 0932 152 259 (Zalo, Skype, Viber) + Email: tuloshoes@gmail.com', 1114, N'')
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Description], [CategoryId], [Information], [Image2], [Image3], [Image4], [Sale]) VALUES (1001, N'ULTRABOOST LIGHT PARLEY WONDER RED / CLOUD WHITE', N'adidas1.jpg', 190, CAST(N'1980-03-29' AS Date), 1, N'1000', N'Đóng ren với lưỡi có thể gập lại
Mũ da
Lớp lót tổng hợp
Đế giày cao su', N'adidas1-2.jpg', N'adidas1-3.jpg', N'adidas1-4.jpg', 300)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Description], [CategoryId], [Information], [Image2], [Image3], [Image4], [Sale]) VALUES (1089, N'ULTRABOOST LIGHT PARLEY CORE BLACK
', N'adidas2.jpg', 130, CAST(N'1980-03-28' AS Date), 0, N'1000', N'Đóng ren với lưỡi có thể gập lại
Mũ da
Lớp lót tổng hợp
Đế giày cao su', N'adidas1-2.jpg', N'adidas1-2.jpg', N'adidas1-2.jpg', 200)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Description], [CategoryId], [Information], [Image2], [Image3], [Image4], [Sale]) VALUES (1090, N'ADIDAS ULTRA BOOST TERRAIN LIGHT PINK
', N'adidas3.jpg', 90, CAST(N'1980-04-04' AS Date), 1, N'1000', N'Đóng ren với lưỡi có thể gập lại
Mũ da
Lớp lót tổng hợp
Đế giày cao su', N'adidas1-2.jpg', N'adidas1-2.jpg', N'adidas1-2.jpg', 150)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Description], [CategoryId], [Information], [Image2], [Image3], [Image4], [Sale]) VALUES (1092, N'ULTRABOOST LIGHT CLOUD WHITE / SOLAR RED
', N'adidas4.jpg', 140, CAST(N'1980-03-02' AS Date), 0, N'1000', N'Đóng ren với lưỡi có thể gập lại
Mũ da
Lớp lót tổng hợp
Đế giày cao su', N'adidas1-2.jpg', N'adidas1-2.jpg', N'adidas1-2.jpg', 150)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Description], [CategoryId], [Information], [Image2], [Image3], [Image4], [Sale]) VALUES (1093, N'ULTRABOOST LIGHT WHITE GREEN
', N'adidas5.jpg', 140, CAST(N'1987-09-03' AS Date), 1, N'1000', N'Đóng ren với lưỡi có thể gập lại
Mũ da
Lớp lót tổng hợp
Đế giày cao su', N'adidas1-2.jpg', N'adidas1-2.jpg', N'adidas1-2.jpg', 150)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Description], [CategoryId], [Information], [Image2], [Image3], [Image4], [Sale]) VALUES (1097, N'MLB BIG BALL CHUNKY A NEW YORK YANKEES GLOBAL
', N'mlb1.jpg', 85, CAST(N'1999-03-04' AS Date), 0, N'1001', N'Đóng ren với lưỡi có thể gập lại
Mũ da
Lớp lót tổng hợp
Đế giày cao su', N'adidas1-2.jpg', N'adidas1-2.jpg', N'adidas1-2.jpg', 120)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Description], [CategoryId], [Information], [Image2], [Image3], [Image4], [Sale]) VALUES (1099, N'MLB BIG BALL CHUNKY A NEW YORK YANKEES CUBE
', N'mlb2.jpg', 85, CAST(N'1888-03-04' AS Date), 1, N'1001', N'Đóng ren với lưỡi có thể gập lại
Mũ da
Lớp lót tổng hợp
Đế giày cao su', N'adidas1-2.jpg', N'adidas1-2.jpg', N'adidas1-2.jpg', 120)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Description], [CategoryId], [Information], [Image2], [Image3], [Image4], [Sale]) VALUES (1100, N'MLB BIG BALL CHUNKY A LIKE CARTOON NY
', N'mlb3.jpg', 85, CAST(N'1843-03-04' AS Date), 0, N'1001', N'Đóng ren với lưỡi có thể gập lại
Mũ da
Lớp lót tổng hợp
Đế giày cao su', N'adidas1-2.jpg', N'adidas1-2.jpg', N'adidas1-2.jpg', 120)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Description], [CategoryId], [Information], [Image2], [Image3], [Image4], [Sale]) VALUES (1101, N'MLB BIG BALL CHUNKY A LINE NY BLACK WHITE
', N'mlb4.jpg', 85, CAST(N'1893-09-02' AS Date), 1, N'1001', N'Đóng ren với lưỡi có thể gập lại
Mũ da
Lớp lót tổng hợp
Đế giày cao su', N'adidas1-2.jpg', N'adidas1-2.jpg', N'adidas1-2.jpg', 120)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Description], [CategoryId], [Information], [Image2], [Image3], [Image4], [Sale]) VALUES (1103, N'MLB BIG BALL CHUNKY NEWYORK YANKEES EMBO V2
', N'mlb5.jpg', 85, CAST(N'1990-02-04' AS Date), 0, N'1001', N'Đóng ren với lưỡi có thể gập lại
Mũ da
Lớp lót tổng hợp
Đế giày cao su', N'adidas1-2.jpg', N'adidas1-2.jpg', N'adidas1-2.jpg', 120)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Description], [CategoryId], [Information], [Image2], [Image3], [Image4], [Sale]) VALUES (1106, N'NIKE DUNK LOW RETRO WHITE BLACK UNIVERSITY RED
', N'nike1.jpg', 153, CAST(N'1933-03-04' AS Date), 1, N'1002', N'Đóng ren với lưỡi có thể gập lại
Mũ da
Lớp lót tổng hợp
Đế giày cao su', N'adidas1-2.jpg', N'adidas1-2.jpg', N'adidas1-2.jpg', 200)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Description], [CategoryId], [Information], [Image2], [Image3], [Image4], [Sale]) VALUES (1107, N'NIKE DUNK LOW WOLF GREY PURE PLATINUM
', N'nike2.jpg', 184, CAST(N'1923-04-04' AS Date), 1, N'1002', N'Đóng ren với lưỡi có thể gập lại
Mũ da
Lớp lót tổng hợp
Đế giày cao su', N'adidas1-2.jpg', N'adidas1-2.jpg', N'adidas1-2.jpg', 200)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Description], [CategoryId], [Information], [Image2], [Image3], [Image4], [Sale]) VALUES (1111, N'OTOMO 
', N'nike3.jpg', 163, CAST(N'1920-04-04' AS Date), 0, N'1002', N'Đóng ren với lưỡi có thể gập lại
Mũ da
Lớp lót tổng hợp
Đế giày cao su', N'adidas1-2.jpg', N'adidas1-2.jpg', N'adidas1-2.jpg', 200)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Description], [CategoryId], [Information], [Image2], [Image3], [Image4], [Sale]) VALUES (1113, N'NIKE SB DUNK LOW STEAMBOY', N'nike4.jpg', 122, CAST(N'1990-06-03' AS Date), 0, N'1002', N'Đóng ren với lưỡi có thể gập lại
Mũ da
Lớp lót tổng hợp
Đế giày cao su', N'adidas1-2.jpg', N'adidas1-2.jpg', N'adidas1-2.jpg', 220)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Description], [CategoryId], [Information], [Image2], [Image3], [Image4], [Sale]) VALUES (1114, N'NIKE DUNK LOW DISRUPT 2 PALE IVORY BLACK
', N'nike5.jpg', 95, CAST(N'1993-04-02' AS Date), 0, N'1002', N'Đóng ren với lưỡi có thể gập lại
Mũ da
Lớp lót tổng hợp
Đế giày cao su', N'adidas1-2.jpg', N'adidas1-2.jpg', N'adidas1-2.jpg', 150)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
INSERT [dbo].[Roles] ([Id], [Name]) VALUES (N'CUST', N'Customers')
INSERT [dbo].[Roles] ([Id], [Name]) VALUES (N'DIRE', N'Directors')
INSERT [dbo].[Roles] ([Id], [Name]) VALUES (N'STAF', N'Staffs')
GO
INSERT [dbo].[Size] ([Id], [Img], [Productid], [Chude], [Noidung]) VALUES (1, N'size.jpg', 1001, N'HƯỚNG DẪN CÁCH ĐO SIZE GIÀY NAM CHUẨN NHẤT KHI MUA HÀNG', N'- Khi đi thử giày bạn nên hãy chú ý hơn khoảng cách từ đầu ngón chân cái cho đến mũi nhọn của giày nằm trong khoảng 1 -1,5 cm, như vậy thì giúp chân của bạn vừa vặn với đôi giày và thoải mái khi mang.
- Thời gian đi thử giày tốt nhất là vào buổi chiều tối, bởi sau một ngày làm việc, hoạt động, lúc đó đôi bàn chân của bạn đã giãn nở ra hết cỡ.
- Mang tất mà bạn vẫn thường mang để ddi thử giày và nên thử cả 2 chân khi đo giày.
')
INSERT [dbo].[Size] ([Id], [Img], [Productid], [Chude], [Noidung]) VALUES (2, N'size.jpg', 1089, N'HƯỚNG DẪN CÁCH ĐO SIZE GIÀY NAM CHUẨN NHẤT KHI MUA HÀNG', N'- Khi đi thử giày bạn nên hãy chú ý hơn khoảng cách từ đầu ngón chân cái cho đến mũi nhọn của giày nằm trong khoảng 1 -1,5 cm, như vậy thì giúp chân của bạn vừa vặn với đôi giày và thoải mái khi mang. - Thời gian đi thử giày tốt nhất là vào buổi chiều tối, bởi sau một ngày làm việc, hoạt động, lúc đó đôi bàn chân của bạn đã giãn nở ra hết cỡ. - Mang tất mà bạn vẫn thường mang để ddi thử giày và nên thử cả 2 chân khi đo giày.')
INSERT [dbo].[Size] ([Id], [Img], [Productid], [Chude], [Noidung]) VALUES (3, N'size.jpg', 1090, N'HƯỚNG DẪN CÁCH ĐO SIZE GIÀY NAM CHUẨN NHẤT KHI MUA HÀNG', N'- Khi đi thử giày bạn nên hãy chú ý hơn khoảng cách từ đầu ngón chân cái cho đến mũi nhọn của giày nằm trong khoảng 1 -1,5 cm, như vậy thì giúp chân của bạn vừa vặn với đôi giày và thoải mái khi mang. - Thời gian đi thử giày tốt nhất là vào buổi chiều tối, bởi sau một ngày làm việc, hoạt động, lúc đó đôi bàn chân của bạn đã giãn nở ra hết cỡ. - Mang tất mà bạn vẫn thường mang để ddi thử giày và nên thử cả 2 chân khi đo giày.')
INSERT [dbo].[Size] ([Id], [Img], [Productid], [Chude], [Noidung]) VALUES (4, N'size.jpg', 1092, N'HƯỚNG DẪN CÁCH ĐO SIZE GIÀY NAM CHUẨN NHẤT KHI MUA HÀNG', N'- Khi đi thử giày bạn nên hãy chú ý hơn khoảng cách từ đầu ngón chân cái cho đến mũi nhọn của giày nằm trong khoảng 1 -1,5 cm, như vậy thì giúp chân của bạn vừa vặn với đôi giày và thoải mái khi mang. - Thời gian đi thử giày tốt nhất là vào buổi chiều tối, bởi sau một ngày làm việc, hoạt động, lúc đó đôi bàn chân của bạn đã giãn nở ra hết cỡ. - Mang tất mà bạn vẫn thường mang để ddi thử giày và nên thử cả 2 chân khi đo giày.')
INSERT [dbo].[Size] ([Id], [Img], [Productid], [Chude], [Noidung]) VALUES (5, N'size.jpg', 1093, N'HƯỚNG DẪN CÁCH ĐO SIZE GIÀY NAM CHUẨN NHẤT KHI MUA HÀNG', N'- Khi đi thử giày bạn nên hãy chú ý hơn khoảng cách từ đầu ngón chân cái cho đến mũi nhọn của giày nằm trong khoảng 1 -1,5 cm, như vậy thì giúp chân của bạn vừa vặn với đôi giày và thoải mái khi mang. - Thời gian đi thử giày tốt nhất là vào buổi chiều tối, bởi sau một ngày làm việc, hoạt động, lúc đó đôi bàn chân của bạn đã giãn nở ra hết cỡ. - Mang tất mà bạn vẫn thường mang để ddi thử giày và nên thử cả 2 chân khi đo giày.')
INSERT [dbo].[Size] ([Id], [Img], [Productid], [Chude], [Noidung]) VALUES (6, N'size.jpg', 1097, N'HƯỚNG DẪN CÁCH ĐO SIZE GIÀY NAM CHUẨN NHẤT KHI MUA HÀNG', N'- Khi đi thử giày bạn nên hãy chú ý hơn khoảng cách từ đầu ngón chân cái cho đến mũi nhọn của giày nằm trong khoảng 1 -1,5 cm, như vậy thì giúp chân của bạn vừa vặn với đôi giày và thoải mái khi mang. - Thời gian đi thử giày tốt nhất là vào buổi chiều tối, bởi sau một ngày làm việc, hoạt động, lúc đó đôi bàn chân của bạn đã giãn nở ra hết cỡ. - Mang tất mà bạn vẫn thường mang để ddi thử giày và nên thử cả 2 chân khi đo giày.')
INSERT [dbo].[Size] ([Id], [Img], [Productid], [Chude], [Noidung]) VALUES (7, N'size.jpg', 1099, N'HƯỚNG DẪN CÁCH ĐO SIZE GIÀY NAM CHUẨN NHẤT KHI MUA HÀNG', N'- Khi đi thử giày bạn nên hãy chú ý hơn khoảng cách từ đầu ngón chân cái cho đến mũi nhọn của giày nằm trong khoảng 1 -1,5 cm, như vậy thì giúp chân của bạn vừa vặn với đôi giày và thoải mái khi mang. - Thời gian đi thử giày tốt nhất là vào buổi chiều tối, bởi sau một ngày làm việc, hoạt động, lúc đó đôi bàn chân của bạn đã giãn nở ra hết cỡ. - Mang tất mà bạn vẫn thường mang để ddi thử giày và nên thử cả 2 chân khi đo giày.')
INSERT [dbo].[Size] ([Id], [Img], [Productid], [Chude], [Noidung]) VALUES (8, N'size.jpg', 1100, N'HƯỚNG DẪN CÁCH ĐO SIZE GIÀY NAM CHUẨN NHẤT KHI MUA HÀNG', N'- Khi đi thử giày bạn nên hãy chú ý hơn khoảng cách từ đầu ngón chân cái cho đến mũi nhọn của giày nằm trong khoảng 1 -1,5 cm, như vậy thì giúp chân của bạn vừa vặn với đôi giày và thoải mái khi mang. - Thời gian đi thử giày tốt nhất là vào buổi chiều tối, bởi sau một ngày làm việc, hoạt động, lúc đó đôi bàn chân của bạn đã giãn nở ra hết cỡ. - Mang tất mà bạn vẫn thường mang để ddi thử giày và nên thử cả 2 chân khi đo giày.')
INSERT [dbo].[Size] ([Id], [Img], [Productid], [Chude], [Noidung]) VALUES (9, N'size.jpg', 1101, N'HƯỚNG DẪN CÁCH ĐO SIZE GIÀY NAM CHUẨN NHẤT KHI MUA HÀNG', N'- Khi đi thử giày bạn nên hãy chú ý hơn khoảng cách từ đầu ngón chân cái cho đến mũi nhọn của giày nằm trong khoảng 1 -1,5 cm, như vậy thì giúp chân của bạn vừa vặn với đôi giày và thoải mái khi mang. - Thời gian đi thử giày tốt nhất là vào buổi chiều tối, bởi sau một ngày làm việc, hoạt động, lúc đó đôi bàn chân của bạn đã giãn nở ra hết cỡ. - Mang tất mà bạn vẫn thường mang để ddi thử giày và nên thử cả 2 chân khi đo giày.')
INSERT [dbo].[Size] ([Id], [Img], [Productid], [Chude], [Noidung]) VALUES (10, N'size.jpg', 1103, N'HƯỚNG DẪN CÁCH ĐO SIZE GIÀY NAM CHUẨN NHẤT KHI MUA HÀNG', N'- Khi đi thử giày bạn nên hãy chú ý hơn khoảng cách từ đầu ngón chân cái cho đến mũi nhọn của giày nằm trong khoảng 1 -1,5 cm, như vậy thì giúp chân của bạn vừa vặn với đôi giày và thoải mái khi mang. - Thời gian đi thử giày tốt nhất là vào buổi chiều tối, bởi sau một ngày làm việc, hoạt động, lúc đó đôi bàn chân của bạn đã giãn nở ra hết cỡ. - Mang tất mà bạn vẫn thường mang để ddi thử giày và nên thử cả 2 chân khi đo giày.')
INSERT [dbo].[Size] ([Id], [Img], [Productid], [Chude], [Noidung]) VALUES (11, N'size.jpg', 1106, N'HƯỚNG DẪN CÁCH ĐO SIZE GIÀY NAM CHUẨN NHẤT KHI MUA HÀNG', N'- Khi đi thử giày bạn nên hãy chú ý hơn khoảng cách từ đầu ngón chân cái cho đến mũi nhọn của giày nằm trong khoảng 1 -1,5 cm, như vậy thì giúp chân của bạn vừa vặn với đôi giày và thoải mái khi mang. - Thời gian đi thử giày tốt nhất là vào buổi chiều tối, bởi sau một ngày làm việc, hoạt động, lúc đó đôi bàn chân của bạn đã giãn nở ra hết cỡ. - Mang tất mà bạn vẫn thường mang để ddi thử giày và nên thử cả 2 chân khi đo giày.')
INSERT [dbo].[Size] ([Id], [Img], [Productid], [Chude], [Noidung]) VALUES (12, N'size.jpg', 1107, N'HƯỚNG DẪN CÁCH ĐO SIZE GIÀY NAM CHUẨN NHẤT KHI MUA HÀNG', N'- Khi đi thử giày bạn nên hãy chú ý hơn khoảng cách từ đầu ngón chân cái cho đến mũi nhọn của giày nằm trong khoảng 1 -1,5 cm, như vậy thì giúp chân của bạn vừa vặn với đôi giày và thoải mái khi mang. - Thời gian đi thử giày tốt nhất là vào buổi chiều tối, bởi sau một ngày làm việc, hoạt động, lúc đó đôi bàn chân của bạn đã giãn nở ra hết cỡ. - Mang tất mà bạn vẫn thường mang để ddi thử giày và nên thử cả 2 chân khi đo giày.')
INSERT [dbo].[Size] ([Id], [Img], [Productid], [Chude], [Noidung]) VALUES (13, N'size.jpg', 1111, N'HƯỚNG DẪN CÁCH ĐO SIZE GIÀY NAM CHUẨN NHẤT KHI MUA HÀNG', N'- Khi đi thử giày bạn nên hãy chú ý hơn khoảng cách từ đầu ngón chân cái cho đến mũi nhọn của giày nằm trong khoảng 1 -1,5 cm, như vậy thì giúp chân của bạn vừa vặn với đôi giày và thoải mái khi mang. - Thời gian đi thử giày tốt nhất là vào buổi chiều tối, bởi sau một ngày làm việc, hoạt động, lúc đó đôi bàn chân của bạn đã giãn nở ra hết cỡ. - Mang tất mà bạn vẫn thường mang để ddi thử giày và nên thử cả 2 chân khi đo giày.')
INSERT [dbo].[Size] ([Id], [Img], [Productid], [Chude], [Noidung]) VALUES (14, N'size.jpg', 1113, N'HƯỚNG DẪN CÁCH ĐO SIZE GIÀY NAM CHUẨN NHẤT KHI MUA HÀNG', N'- Khi đi thử giày bạn nên hãy chú ý hơn khoảng cách từ đầu ngón chân cái cho đến mũi nhọn của giày nằm trong khoảng 1 -1,5 cm, như vậy thì giúp chân của bạn vừa vặn với đôi giày và thoải mái khi mang. - Thời gian đi thử giày tốt nhất là vào buổi chiều tối, bởi sau một ngày làm việc, hoạt động, lúc đó đôi bàn chân của bạn đã giãn nở ra hết cỡ. - Mang tất mà bạn vẫn thường mang để ddi thử giày và nên thử cả 2 chân khi đo giày.')
INSERT [dbo].[Size] ([Id], [Img], [Productid], [Chude], [Noidung]) VALUES (15, N'size.jpg', 1114, N'HƯỚNG DẪN CÁCH ĐO SIZE GIÀY NAM CHUẨN NHẤT KHI MUA HÀNG', N'- Khi đi thử giày bạn nên hãy chú ý hơn khoảng cách từ đầu ngón chân cái cho đến mũi nhọn của giày nằm trong khoảng 1 -1,5 cm, như vậy thì giúp chân của bạn vừa vặn với đôi giày và thoải mái khi mang. - Thời gian đi thử giày tốt nhất là vào buổi chiều tối, bởi sau một ngày làm việc, hoạt động, lúc đó đôi bàn chân của bạn đã giãn nở ra hết cỡ. - Mang tất mà bạn vẫn thường mang để ddi thử giày và nên thử cả 2 chân khi đo giày.')
GO
SET IDENTITY_INSERT [dbo].[Statust] ON 

INSERT [dbo].[Statust] ([IdStatust], [NameStatust]) VALUES (1, N'Chờ xác nhận')
INSERT [dbo].[Statust] ([IdStatust], [NameStatust]) VALUES (2, N'Chờ lấy hàng')
INSERT [dbo].[Statust] ([IdStatust], [NameStatust]) VALUES (3, N'Chờ giao hàng')
INSERT [dbo].[Statust] ([IdStatust], [NameStatust]) VALUES (4, N'Hủy đơn')
SET IDENTITY_INSERT [dbo].[Statust] OFF
GO
ALTER TABLE [dbo].[Accounts] ADD  CONSTRAINT [DF_Customers_Photo]  DEFAULT (N'Photo.gif') FOR [Photo]
GO
ALTER TABLE [dbo].[OrderDetails] ADD  CONSTRAINT [DF_Order_Details_UnitPrice]  DEFAULT ((0)) FOR [Price]
GO
ALTER TABLE [dbo].[OrderDetails] ADD  CONSTRAINT [DF_Order_Details_Quantity]  DEFAULT ((1)) FOR [Quantity]
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_OrderDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_Image]  DEFAULT (N'Product.gif') FOR [Image]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_UnitPrice]  DEFAULT ((0)) FOR [Price]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_ProductDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_Available]  DEFAULT ((1)) FOR [Description]
GO
ALTER TABLE [dbo].[Authorities]  WITH CHECK ADD  CONSTRAINT [FK_UserRoles_Roles] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Authorities] CHECK CONSTRAINT [FK_UserRoles_Roles]
GO
ALTER TABLE [dbo].[Authorities]  WITH CHECK ADD  CONSTRAINT [FK_UserRoles_Users] FOREIGN KEY([Username])
REFERENCES [dbo].[Accounts] ([Username])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Authorities] CHECK CONSTRAINT [FK_UserRoles_Users]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Products] FOREIGN KEY([Productid])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Products]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Accounts] FOREIGN KEY([Username])
REFERENCES [dbo].[Accounts] ([Username])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Accounts]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Statust1] FOREIGN KEY([Statustid])
REFERENCES [dbo].[Statust] ([IdStatust])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Statust1]
GO
ALTER TABLE [dbo].[Productinformation]  WITH CHECK ADD  CONSTRAINT [FK_Productinformation_Products] FOREIGN KEY([Productid])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[Productinformation] CHECK CONSTRAINT [FK_Productinformation_Products]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories]
GO
ALTER TABLE [dbo].[Size]  WITH CHECK ADD  CONSTRAINT [FK_Size_Products] FOREIGN KEY([Productid])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[Size] CHECK CONSTRAINT [FK_Size_Products]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã khách hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounts', @level2type=N'COLUMN',@level2name=N'Username'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mật khẩu đăng nhập' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounts', @level2type=N'COLUMN',@level2name=N'Password'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Họ và tên' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounts', @level2type=N'COLUMN',@level2name=N'Fullname'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Email' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounts', @level2type=N'COLUMN',@level2name=N'Email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Hình ảnh' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounts', @level2type=N'COLUMN',@level2name=N'Photo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã loại' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên tiếng Việt' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã chi tiết' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã hóa đơn' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'COLUMN',@level2name=N'OrderId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã hàng hóa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'COLUMN',@level2name=N'ProductId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Đơn giá bán' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Số lượng mua' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'COLUMN',@level2name=N'Quantity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã hóa đơn' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã khách hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'Username'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày đặt hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Địa chỉ nhận' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã hàng hóa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên hàng hóa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Hình ảnh' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Image'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Đơn giá' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày sản xuất' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Đang kinh doanh ?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã loại, FK' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'CategoryId'
GO
