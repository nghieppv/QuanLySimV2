USE [master]
GO
/****** Object:  Database [DiDong]    Script Date: 6/18/2018 6:47:52 AM ******/
CREATE DATABASE [DiDong] ON  PRIMARY 
( NAME = N'DiDong', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\DiDong.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DiDong_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\DiDong_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DiDong].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DiDong] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DiDong] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DiDong] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DiDong] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DiDong] SET ARITHABORT OFF 
GO
ALTER DATABASE [DiDong] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DiDong] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DiDong] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DiDong] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DiDong] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DiDong] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DiDong] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DiDong] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DiDong] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DiDong] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DiDong] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DiDong] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DiDong] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DiDong] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DiDong] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DiDong] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DiDong] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DiDong] SET RECOVERY FULL 
GO
ALTER DATABASE [DiDong] SET  MULTI_USER 
GO
ALTER DATABASE [DiDong] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DiDong] SET DB_CHAINING OFF 
GO
EXEC sys.sp_db_vardecimal_storage_format N'DiDong', N'ON'
GO
USE [DiDong]
GO
/****** Object:  Table [dbo].[cau_hinh]    Script Date: 6/18/2018 6:47:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cau_hinh](
	[id] [uniqueidentifier] NOT NULL,
	[CharacterSet] [nvarchar](50) NULL,
	[DelImportTruocImport] [bit] NULL,
	[MaxTop] [int] NULL,
	[IsExportTxt] [bit] NULL,
 CONSTRAINT [PK_cau_hinh] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dm_column]    Script Date: 6/18/2018 6:47:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dm_column](
	[id] [uniqueidentifier] NOT NULL,
	[ma] [nvarchar](10) NULL,
	[name] [nvarchar](50) NULL,
	[size] [int] NULL,
	[isKey] [bit] NULL,
	[isAct] [bit] NULL,
	[IsReport] [bit] NULL,
	[orderid] [int] NULL,
 CONSTRAINT [PK_dm_column] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dm_Character]    Script Date: 6/18/2018 6:47:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dm_Character](
	[id] [uniqueidentifier] NOT NULL,
	[ma] [nvarchar](50) NULL,
 CONSTRAINT [PK_dm_Character] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[import]    Script Date: 6/18/2018 6:47:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[import](
	[id] [uniqueidentifier] NOT NULL,
	[column1] [nvarchar](50) NULL,
	[column2] [nvarchar](50) NULL,
	[column3] [nvarchar](50) NULL,
	[column4] [nvarchar](50) NULL,
	[column5] [nvarchar](50) NULL,
	[column6] [nvarchar](50) NULL,
	[column7] [nvarchar](50) NULL,
	[column8] [nvarchar](50) NULL,
	[column9] [nvarchar](50) NULL,
	[column10] [nvarchar](50) NULL,
	[column11] [nvarchar](50) NULL,
	[column12] [nvarchar](50) NULL,
	[create_date] [datetime] NULL,
 CONSTRAINT [PK_import] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[root]    Script Date: 6/18/2018 6:47:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[root](
	[id] [uniqueidentifier] NOT NULL,
	[column1] [nvarchar](50) NULL,
	[column2] [nvarchar](50) NULL,
	[column3] [nvarchar](50) NULL,
	[column4] [nvarchar](50) NULL,
	[column5] [nvarchar](50) NULL,
	[column6] [nvarchar](50) NULL,
	[column7] [nvarchar](50) NULL,
	[column8] [nvarchar](50) NULL,
	[column9] [nvarchar](50) NULL,
	[column10] [nvarchar](50) NULL,
	[column11] [nvarchar](50) NULL,
	[column12] [nvarchar](50) NULL,
	[create_date] [datetime] NULL,
 CONSTRAINT [PK_root] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[cau_hinh] ([id], [CharacterSet], [DelImportTruocImport], [MaxTop], [IsExportTxt]) VALUES (N'b64159c6-cc18-44d7-a4b7-237089a09aaa', N'b64159c6-cc18-44d7-a4b7-237089a09aaa', 1, 10000, 1)
INSERT [dbo].[dm_column] ([id], [ma], [name], [size], [isKey], [isAct], [IsReport], [orderid]) VALUES (N'1b200dde-3141-4611-82d9-0dd968049147', N'column10', N'column10', 50, 0, 1, 0, 1)
INSERT [dbo].[dm_column] ([id], [ma], [name], [size], [isKey], [isAct], [IsReport], [orderid]) VALUES (N'cc88051d-8aff-417e-8c4a-0f512a27c628', N'column7', N'column7', 50, 0, 1, 0, 0)
INSERT [dbo].[dm_column] ([id], [ma], [name], [size], [isKey], [isAct], [IsReport], [orderid]) VALUES (N'4cbe6e16-711b-45ba-bcfb-117304e149ce', N'column5', N'Huyện', 50, 0, 1, 0, 5)
INSERT [dbo].[dm_column] ([id], [ma], [name], [size], [isKey], [isAct], [IsReport], [orderid]) VALUES (N'0b1083b1-5b49-45b2-a3c2-21c1837233d2', N'column3', N'Tỉnh', 50, 0, 1, 0, 3)
INSERT [dbo].[dm_column] ([id], [ma], [name], [size], [isKey], [isAct], [IsReport], [orderid]) VALUES (N'995fc022-22d5-40c0-8481-3d98b1e614e5', N'column1', N'Số Điện Thoại', 50, 1, 1, 1, 1)
INSERT [dbo].[dm_column] ([id], [ma], [name], [size], [isKey], [isAct], [IsReport], [orderid]) VALUES (N'56290df6-de1f-4683-a6c8-4145885df852', N'column8', N'column8', 50, 0, 1, 0, 10)
INSERT [dbo].[dm_column] ([id], [ma], [name], [size], [isKey], [isAct], [IsReport], [orderid]) VALUES (N'592ea2ec-0f80-4314-ae2c-479df08bb353', N'column6', N'column6', 50, 0, 1, 0, 0)
INSERT [dbo].[dm_column] ([id], [ma], [name], [size], [isKey], [isAct], [IsReport], [orderid]) VALUES (N'554907b6-3414-4750-99b1-5bf024337d13', N'column11', N'column11', 50, 0, 1, 0, 0)
INSERT [dbo].[dm_column] ([id], [ma], [name], [size], [isKey], [isAct], [IsReport], [orderid]) VALUES (N'493a802c-1ef3-4511-84d8-9d2df8095f26', N'column4', N'Quận', 50, 0, 1, 0, 4)
INSERT [dbo].[dm_column] ([id], [ma], [name], [size], [isKey], [isAct], [IsReport], [orderid]) VALUES (N'3580694d-103d-4ad7-beb5-a75882fe32a7', N'column9', N'column9', 50, 0, 1, 0, 0)
INSERT [dbo].[dm_column] ([id], [ma], [name], [size], [isKey], [isAct], [IsReport], [orderid]) VALUES (N'cd50ad20-a315-4c10-a26d-b1406514494c', N'column12', N'column12', 50, 0, 1, 0, 0)
INSERT [dbo].[dm_column] ([id], [ma], [name], [size], [isKey], [isAct], [IsReport], [orderid]) VALUES (N'a76d2e94-e434-43ce-bd1d-c85e26591384', N'column2', N'Địa Chỉ', 50, 0, 1, 0, 2)
INSERT [dbo].[dm_Character] ([id], [ma]) VALUES (N'b4405889-db08-44f9-83a3-3d4773e7403f', N'Unicode')
INSERT [dbo].[import] ([id], [column1], [column2], [column3], [column4], [column5], [column6], [column7], [column8], [column9], [column10], [column11], [column12], [create_date]) VALUES (N'3ab472a7-a3af-4b83-bc2a-7ba7dfc4fceb', NULL, NULL, NULL, NULL, NULL, NULL, N'㄰㌶㤶㔵㌸‱三畧薻⁮쑖溃䰠ꋃ७उ桔믡榛䠠닃⁡牔ꃃ쌠溔嘠꧄桮䰠湯१㤱㐉ㄉ㜹रउ慎७उ䱖ॏ么ॉउउउ〉', NULL, NULL, NULL, NULL, NULL, NULL)
ALTER TABLE [dbo].[cau_hinh] ADD  CONSTRAINT [DF_cau_hinh_id]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[dm_column] ADD  CONSTRAINT [DF_dm_column_id]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[dm_Character] ADD  CONSTRAINT [DF_dm_Character_id]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[import] ADD  CONSTRAINT [DF_import_id]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[root] ADD  CONSTRAINT [DF_root_id]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[root] ADD  CONSTRAINT [DF_root_create_date]  DEFAULT (getdate()) FOR [create_date]
GO
USE [master]
GO
ALTER DATABASE [DiDong] SET  READ_WRITE 
GO
