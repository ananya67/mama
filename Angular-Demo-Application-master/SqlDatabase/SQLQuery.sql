USE [master]
GO
/****** Object:  Database [CarDB]    Script Date: 06/24/2017 14:56:23 ******/
CREATE DATABASE [CarDB] ON  PRIMARY 
( NAME = N'CarDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\CarDB.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'CarDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\CarDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [CarDB] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CarDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CarDB] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [CarDB] SET ANSI_NULLS OFF
GO
ALTER DATABASE [CarDB] SET ANSI_PADDING OFF
GO
ALTER DATABASE [CarDB] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [CarDB] SET ARITHABORT OFF
GO
ALTER DATABASE [CarDB] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [CarDB] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [CarDB] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [CarDB] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [CarDB] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [CarDB] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [CarDB] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [CarDB] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [CarDB] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [CarDB] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [CarDB] SET  DISABLE_BROKER
GO
ALTER DATABASE [CarDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [CarDB] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [CarDB] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [CarDB] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [CarDB] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [CarDB] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [CarDB] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [CarDB] SET  READ_WRITE
GO
ALTER DATABASE [CarDB] SET RECOVERY SIMPLE
GO
ALTER DATABASE [CarDB] SET  MULTI_USER
GO
ALTER DATABASE [CarDB] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [CarDB] SET DB_CHAINING OFF
GO
USE [CarDB]
GO
/****** Object:  Table [dbo].[UserType]    Script Date: 06/24/2017 14:56:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserType](
	[UserTypeID] [int] IDENTITY(1,1) NOT NULL,
	[UserTypeName] [varchar](50) NULL,
 CONSTRAINT [PK_UserType] PRIMARY KEY CLUSTERED 
(
	[UserTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[UserType] ON
INSERT [dbo].[UserType] ([UserTypeID], [UserTypeName]) VALUES (1, N'Admin')
INSERT [dbo].[UserType] ([UserTypeID], [UserTypeName]) VALUES (2, N'User')
SET IDENTITY_INSERT [dbo].[UserType] OFF
/****** Object:  Table [dbo].[UserMasterTB]    Script Date: 06/24/2017 14:56:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserMasterTB](
	[U_Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](100) NULL,
	[Password] [varchar](100) NULL,
	[Address] [varchar](100) NULL,
	[Birthdate] [datetime] NULL,
	[Contact_No] [varchar](10) NULL,
	[Email] [varchar](100) NULL,
	[UserTypeID] [int] NULL,
	[CreatedOn] [datetime] NULL,
 CONSTRAINT [PK_UserMaster] PRIMARY KEY CLUSTERED 
(
	[U_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[UserMasterTB] ON
INSERT [dbo].[UserMasterTB] ([U_Id], [Username], [Password], [Address], [Birthdate], [Contact_No], [Email], [UserTypeID], [CreatedOn]) VALUES (1, N'Sai', N'tttdoybuFsAnWJYAfwOUqg==', N'Mumbai', CAST(0x0000B5B100000000 AS DateTime), N'9769895513', N'ss@gg.com', 2, CAST(0x0000A79000B71364 AS DateTime))
INSERT [dbo].[UserMasterTB] ([U_Id], [Username], [Password], [Address], [Birthdate], [Contact_No], [Email], [UserTypeID], [CreatedOn]) VALUES (2, N'Admin', N'tttdoybuFsAnWJYAfwOUqg==', N'Mumbai', CAST(0x0000A77100000000 AS DateTime), N'9769895513', N'admin@gg.com', 1, CAST(0x0000A79000B71364 AS DateTime))
INSERT [dbo].[UserMasterTB] ([U_Id], [Username], [Password], [Address], [Birthdate], [Contact_No], [Email], [UserTypeID], [CreatedOn]) VALUES (3, N'Ramesh', N'tttdoybuFsAnWJYAfwOUqg==', N'Bandra', CAST(0x0000A78E00000000 AS DateTime), N'9769895513', N'ss@gg.com', 2, CAST(0x0000A79000B71364 AS DateTime))
INSERT [dbo].[UserMasterTB] ([U_Id], [Username], [Password], [Address], [Birthdate], [Contact_No], [Email], [UserTypeID], [CreatedOn]) VALUES (4, N'Sans', N'tttdoybuFsAnWJYAfwOUqg==', N'Mumbai', CAST(0x0000810D00000000 AS DateTime), N'9999999999', N'ss@gg.com', 2, CAST(0x0000A79000B71364 AS DateTime))
INSERT [dbo].[UserMasterTB] ([U_Id], [Username], [Password], [Address], [Birthdate], [Contact_No], [Email], [UserTypeID], [CreatedOn]) VALUES (5, N'Shivsai', N'tttdoybuFsAnWJYAfwOUqg==', N'Govt', CAST(0x0000810700000000 AS DateTime), N'9999999999', N'ss@gg.com', 2, CAST(0x0000A79600B1CE23 AS DateTime))
INSERT [dbo].[UserMasterTB] ([U_Id], [Username], [Password], [Address], [Birthdate], [Contact_No], [Email], [UserTypeID], [CreatedOn]) VALUES (6, N'Saineshwar', N'tttdoybuFsAnWJYAfwOUqg==', N'Mumbai', CAST(0x0000816500000000 AS DateTime), N'9000000000', N'saihacksoft@gmail.com', 2, CAST(0x0000A79B00AAE01E AS DateTime))
INSERT [dbo].[UserMasterTB] ([U_Id], [Username], [Password], [Address], [Birthdate], [Contact_No], [Email], [UserTypeID], [CreatedOn]) VALUES (7, N'Maxsee', N'tttdoybuFsAnWJYAfwOUqg==', N'Mumbai', CAST(0x0000816500000000 AS DateTime), N'9800000000', N'saihacksoft@gmail.com', 2, CAST(0x0000A79C00E7396A AS DateTime))
SET IDENTITY_INSERT [dbo].[UserMasterTB] OFF
/****** Object:  Table [dbo].[TokenManager]    Script Date: 06/24/2017 14:56:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TokenManager](
	[TokenID] [int] IDENTITY(1,1) NOT NULL,
	[TokenKey] [varchar](100) NULL,
	[IssuedOn] [datetime] NULL,
	[ExpiresOn] [datetime] NULL,
	[CreatedOn] [datetime] NULL,
	[UserID] [int] NULL,
 CONSTRAINT [PK_TokenManager] PRIMARY KEY CLUSTERED 
(
	[TokenID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TokenManager] ON
INSERT [dbo].[TokenManager] ([TokenID], [TokenKey], [IssuedOn], [ExpiresOn], [CreatedOn], [UserID]) VALUES (34, N'X3jCaxlcHnbHilC2WTBgmwELZPtRCFdefFKYJ0vOTn4WRtkJ9A9A/tnj1XaOLZEq', CAST(0x0000A78F01041633 AS DateTime), CAST(0x0000A78F010C539F AS DateTime), CAST(0x0000A78F0104163F AS DateTime), 3)
INSERT [dbo].[TokenManager] ([TokenID], [TokenKey], [IssuedOn], [ExpiresOn], [CreatedOn], [UserID]) VALUES (41, N'fwf/fZRBzg5HDSgZQmDpbkMU404tMnp3UBD+xv2Je6SOSutRE+i9xXPHPtjbCpXt', CAST(0x0000A79000B88481 AS DateTime), CAST(0x0000A79000C0C1EE AS DateTime), CAST(0x0000A79000B8848E AS DateTime), 4)
INSERT [dbo].[TokenManager] ([TokenID], [TokenKey], [IssuedOn], [ExpiresOn], [CreatedOn], [UserID]) VALUES (67, N'JdzqWXSkjkHQsIFfOZYkkSJd80We1AO1RAmut1HAc1q7+UX1Fd5zl5AdEE2yNMFu', CAST(0x0000A79600B1D824 AS DateTime), CAST(0x0000A79600BA1591 AS DateTime), CAST(0x0000A79600B1D831 AS DateTime), 5)
INSERT [dbo].[TokenManager] ([TokenID], [TokenKey], [IssuedOn], [ExpiresOn], [CreatedOn], [UserID]) VALUES (79, N'3jM+rsfJ+ofuccG2GZ4A5H8+NAxTAQDYqcmmzS9KJHU9SI9aw1HMPFyMwmTaz6gb', CAST(0x0000A79C00AB5AAC AS DateTime), CAST(0x0000A79C00B39827 AS DateTime), CAST(0x0000A79C00AB5AE2 AS DateTime), 1)
INSERT [dbo].[TokenManager] ([TokenID], [TokenKey], [IssuedOn], [ExpiresOn], [CreatedOn], [UserID]) VALUES (81, N'Jlc45gusmk0S7UpLPcI6d1yiktixYz6WsTb9hbBVvnOu74mCvr+0GYtOiajS4Yh/', CAST(0x0000A79C00B07F56 AS DateTime), CAST(0x0000A79C00B8BCC2 AS DateTime), CAST(0x0000A79C00B07F62 AS DateTime), 6)
INSERT [dbo].[TokenManager] ([TokenID], [TokenKey], [IssuedOn], [ExpiresOn], [CreatedOn], [UserID]) VALUES (82, N'8FPpbnbgT/0M6QQp7ClXGQ25GgIYzjhSYi1QkXPIPwOvLxS8r2wqdT2TZSk82gff', CAST(0x0000A79C00B31D6E AS DateTime), CAST(0x0000A79C00BB5ADB AS DateTime), CAST(0x0000A79C00B31D88 AS DateTime), 2)
SET IDENTITY_INSERT [dbo].[TokenManager] OFF
/****** Object:  Table [dbo].[PaymentTB]    Script Date: 06/24/2017 14:56:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentTB](
	[P_Id] [int] IDENTITY(1,1) NOT NULL,
	[C_ID] [int] NULL,
	[Amount] [int] NULL,
	[PaymentDate] [datetime] NULL,
	[BankID] [int] NULL,
	[UserID] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[BookingID] [int] NULL,
 CONSTRAINT [PK_PaymentTB] PRIMARY KEY CLUSTERED 
(
	[P_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[PaymentTB] ON
INSERT [dbo].[PaymentTB] ([P_Id], [C_ID], [Amount], [PaymentDate], [BankID], [UserID], [CreatedOn], [BookingID]) VALUES (1, 1, 10000, CAST(0x0000A79500A676C5 AS DateTime), 1, 1, CAST(0x0000A79500A676C5 AS DateTime), 1)
INSERT [dbo].[PaymentTB] ([P_Id], [C_ID], [Amount], [PaymentDate], [BankID], [UserID], [CreatedOn], [BookingID]) VALUES (2, 1, 10000, CAST(0x0000A79500A6F248 AS DateTime), 3, 1, CAST(0x0000A79500A6F248 AS DateTime), 2)
INSERT [dbo].[PaymentTB] ([P_Id], [C_ID], [Amount], [PaymentDate], [BankID], [UserID], [CreatedOn], [BookingID]) VALUES (3, 4, 3000, CAST(0x0000A79500A7FAB1 AS DateTime), 4, 1, CAST(0x0000A79500A7FAB1 AS DateTime), 3)
INSERT [dbo].[PaymentTB] ([P_Id], [C_ID], [Amount], [PaymentDate], [BankID], [UserID], [CreatedOn], [BookingID]) VALUES (4, 1, 10000, CAST(0x0000A79600AF4AA8 AS DateTime), 3, 1, CAST(0x0000A79600AF4AA8 AS DateTime), 4)
INSERT [dbo].[PaymentTB] ([P_Id], [C_ID], [Amount], [PaymentDate], [BankID], [UserID], [CreatedOn], [BookingID]) VALUES (5, 1, 10000, CAST(0x0000A79600B21FFE AS DateTime), 1, 5, CAST(0x0000A79600B21FFE AS DateTime), 5)
INSERT [dbo].[PaymentTB] ([P_Id], [C_ID], [Amount], [PaymentDate], [BankID], [UserID], [CreatedOn], [BookingID]) VALUES (6, 4, 3000, CAST(0x0000A79B00B66053 AS DateTime), 3, 6, CAST(0x0000A79B00B66053 AS DateTime), 6)
INSERT [dbo].[PaymentTB] ([P_Id], [C_ID], [Amount], [PaymentDate], [BankID], [UserID], [CreatedOn], [BookingID]) VALUES (7, 2, 10000, CAST(0x0000A79C00AC26A5 AS DateTime), 3, 1, CAST(0x0000A79C00AC26A5 AS DateTime), 8)
SET IDENTITY_INSERT [dbo].[PaymentTB] OFF
/****** Object:  Table [dbo].[CarTB]    Script Date: 06/24/2017 14:56:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CarTB](
	[C_Id] [int] IDENTITY(1,1) NOT NULL,
	[Model_Name] [varchar](100) NULL,
	[Brand] [varchar](100) NULL,
	[Color] [varchar](100) NULL,
	[No_of_Pas] [int] NULL,
	[Price] [decimal](18, 2) NULL,
	[Image] [varchar](100) NULL,
	[Fueltype] [varchar](100) NULL,
	[UserID] [int] NULL,
	[CreatedOn] [datetime] NULL,
 CONSTRAINT [PK_CarTB] PRIMARY KEY CLUSTERED 
(
	[C_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[CarTB] ON
INSERT [dbo].[CarTB] ([C_Id], [Model_Name], [Brand], [Color], [No_of_Pas], [Price], [Image], [Fueltype], [UserID], [CreatedOn]) VALUES (1, N'E Class', N'Mercedes-Benz', N'Silver', 5, CAST(10000.00 AS Decimal(18, 2)), N'Cars_Upload/c39dd83e-646b-4a80-bb51-07cb61a31cc0.jpg', N'Diesel', 1, CAST(0x0000A78F00ED2E96 AS DateTime))
INSERT [dbo].[CarTB] ([C_Id], [Model_Name], [Brand], [Color], [No_of_Pas], [Price], [Image], [Fueltype], [UserID], [CreatedOn]) VALUES (2, N'A- Class', N'Mercedes-Benz', N'Silver', 4, CAST(10000.00 AS Decimal(18, 2)), N'Cars_Upload/e2940e00-59eb-4861-aac2-42c1b6ebe1ff.jpg', N'Diesel', 1, CAST(0x0000A78F00ED2E96 AS DateTime))
INSERT [dbo].[CarTB] ([C_Id], [Model_Name], [Brand], [Color], [No_of_Pas], [Price], [Image], [Fueltype], [UserID], [CreatedOn]) VALUES (3, N'C Class', N'Mercedes-Benz', N'Black', 4, CAST(10000.00 AS Decimal(18, 2)), N'Cars_Upload/6c862033-80ce-49d3-9e8f-1ee9d079ca4a.jpg', N'Deisel', 1, CAST(0x0000A78F00ED2E96 AS DateTime))
INSERT [dbo].[CarTB] ([C_Id], [Model_Name], [Brand], [Color], [No_of_Pas], [Price], [Image], [Fueltype], [UserID], [CreatedOn]) VALUES (4, N'Baleno', N'Maruti Suzuki ', N'Ray Blue', 5, CAST(3000.00 AS Decimal(18, 2)), N'Cars_Upload/f0abef1e-1b79-4237-aae6-0848e0a1c229.png', N'Pertol', 2, CAST(0x0000A78F00ED2E96 AS DateTime))
INSERT [dbo].[CarTB] ([C_Id], [Model_Name], [Brand], [Color], [No_of_Pas], [Price], [Image], [Fueltype], [UserID], [CreatedOn]) VALUES (5, N'Maruti Ignis', N'Maruti ', N'Black', 4, CAST(5000.00 AS Decimal(18, 2)), N'Cars_Upload/fa795abf-35bf-40dc-9ae0-b9ea764924da.jpg', N'Pertol', 2, CAST(0x0000A79500A9802B AS DateTime))
INSERT [dbo].[CarTB] ([C_Id], [Model_Name], [Brand], [Color], [No_of_Pas], [Price], [Image], [Fueltype], [UserID], [CreatedOn]) VALUES (6, N'Maruti Swift Dzire', N'Maruti-Suzuki', N'blue', 5, CAST(5000.00 AS Decimal(18, 2)), N'Cars_Upload/d6a6748e-b070-46f9-90c3-01750f8763b4.jpg', N'petrol', 2, CAST(0x0000A79500ABD227 AS DateTime))
INSERT [dbo].[CarTB] ([C_Id], [Model_Name], [Brand], [Color], [No_of_Pas], [Price], [Image], [Fueltype], [UserID], [CreatedOn]) VALUES (8, N'Polo', N'Volkswagen', N'Red', 5, CAST(2500.00 AS Decimal(18, 2)), N'Cars_Upload/ec64187a-82cc-4b34-8c9d-13bf128ccf58.jpg', N'Petrol', 2, CAST(0x0000A79B018373AA AS DateTime))
SET IDENTITY_INSERT [dbo].[CarTB] OFF
/****** Object:  Table [dbo].[BookingTB]    Script Date: 06/24/2017 14:56:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BookingTB](
	[BookingID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[FromDate] [datetime] NULL,
	[ToDate] [datetime] NULL,
	[S_address] [varchar](50) NULL,
	[D_address] [varchar](50) NULL,
	[Email_Id] [varchar](50) NULL,
	[Contact_No] [varchar](10) NULL,
	[C_Id] [int] NULL,
	[Amount] [int] NULL,
	[PaymentStatus] [varchar](1) NULL,
	[UserID] [int] NULL,
	[CreatedOn] [datetime] NULL,
 CONSTRAINT [PK_Booking] PRIMARY KEY CLUSTERED 
(
	[BookingID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[BookingTB] ON
INSERT [dbo].[BookingTB] ([BookingID], [Name], [FromDate], [ToDate], [S_address], [D_address], [Email_Id], [Contact_No], [C_Id], [Amount], [PaymentStatus], [UserID], [CreatedOn]) VALUES (1, N'Sai', CAST(0x0000A79600A67160 AS DateTime), CAST(0x0000A79700A67160 AS DateTime), N'Mumbai', N'Pune', N'ss@gg.com', N'9769895513', 1, 10000, N'D', 1, CAST(0x0000A79500A66663 AS DateTime))
INSERT [dbo].[BookingTB] ([BookingID], [Name], [FromDate], [ToDate], [S_address], [D_address], [Email_Id], [Contact_No], [C_Id], [Amount], [PaymentStatus], [UserID], [CreatedOn]) VALUES (2, N'Sai', CAST(0x0000A79800A67160 AS DateTime), CAST(0x0000A79900A67160 AS DateTime), N'Mumbai', N'Pune', N'ss@gg.com', N'9769895513', 1, 10000, N'D', 1, CAST(0x0000A79500A6ED78 AS DateTime))
INSERT [dbo].[BookingTB] ([BookingID], [Name], [FromDate], [ToDate], [S_address], [D_address], [Email_Id], [Contact_No], [C_Id], [Amount], [PaymentStatus], [UserID], [CreatedOn]) VALUES (3, N'Sai', CAST(0x0000A79A00A67160 AS DateTime), CAST(0x0000A79B00A67160 AS DateTime), N'Pune', N'Goa', N'ss@gg.com', N'9769895513', 4, 3000, N'D', 1, CAST(0x0000A79500A70CC7 AS DateTime))
INSERT [dbo].[BookingTB] ([BookingID], [Name], [FromDate], [ToDate], [S_address], [D_address], [Email_Id], [Contact_No], [C_Id], [Amount], [PaymentStatus], [UserID], [CreatedOn]) VALUES (4, N'Sai', CAST(0x0000A79F00A67160 AS DateTime), CAST(0x0000A7A000A67160 AS DateTime), N'OK', N'OK', N'ss@gg.com', N'9769895513', 1, 10000, N'D', 1, CAST(0x0000A79600AC9F3F AS DateTime))
INSERT [dbo].[BookingTB] ([BookingID], [Name], [FromDate], [ToDate], [S_address], [D_address], [Email_Id], [Contact_No], [C_Id], [Amount], [PaymentStatus], [UserID], [CreatedOn]) VALUES (5, N'Shivsai', CAST(0x0000A7C200A6FE00 AS DateTime), CAST(0x0000A7C300A6FE00 AS DateTime), N'Goa', N'Mumbai', N'ss@gg.com', N'9999999999', 1, 10000, N'D', 5, CAST(0x0000A79600B215DE AS DateTime))
INSERT [dbo].[BookingTB] ([BookingID], [Name], [FromDate], [ToDate], [S_address], [D_address], [Email_Id], [Contact_No], [C_Id], [Amount], [PaymentStatus], [UserID], [CreatedOn]) VALUES (6, N'Saineshwar', CAST(0x0000A7A700A6B7B0 AS DateTime), CAST(0x0000A7A800A6B7B0 AS DateTime), N'Mumbai', N'Pune', N'saihacksoft@gmail.com', N'9000000000', 4, 3000, N'D', 6, CAST(0x0000A79B00B2FEFB AS DateTime))
SET IDENTITY_INSERT [dbo].[BookingTB] OFF
/****** Object:  Table [dbo].[BankTB]    Script Date: 06/24/2017 14:56:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BankTB](
	[BankID] [int] IDENTITY(1,1) NOT NULL,
	[BankName] [varchar](50) NULL,
 CONSTRAINT [PK_BankTB] PRIMARY KEY CLUSTERED 
(
	[BankID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[BankTB] ON
INSERT [dbo].[BankTB] ([BankID], [BankName]) VALUES (1, N'Allahabad Bank')
INSERT [dbo].[BankTB] ([BankID], [BankName]) VALUES (2, N'Andhra Bank')
INSERT [dbo].[BankTB] ([BankID], [BankName]) VALUES (3, N'Bank of India')
INSERT [dbo].[BankTB] ([BankID], [BankName]) VALUES (4, N'Bank of Baroda')
INSERT [dbo].[BankTB] ([BankID], [BankName]) VALUES (5, N'Bank of Maharashtra')
INSERT [dbo].[BankTB] ([BankID], [BankName]) VALUES (6, N'Canara Bank')
INSERT [dbo].[BankTB] ([BankID], [BankName]) VALUES (7, N'Central Bank of India')
INSERT [dbo].[BankTB] ([BankID], [BankName]) VALUES (8, N'Corporation Bank')
SET IDENTITY_INSERT [dbo].[BankTB] OFF
