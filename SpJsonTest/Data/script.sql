USE [master]
GO
/****** Object:  Database [testDb]    Script Date: 12-01-2022 00:15:36 ******/
CREATE DATABASE [testDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'testDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\testDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'testDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\testDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [testDb] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [testDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [testDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [testDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [testDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [testDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [testDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [testDb] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [testDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [testDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [testDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [testDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [testDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [testDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [testDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [testDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [testDb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [testDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [testDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [testDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [testDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [testDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [testDb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [testDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [testDb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [testDb] SET  MULTI_USER 
GO
ALTER DATABASE [testDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [testDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [testDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [testDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [testDb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [testDb] SET QUERY_STORE = OFF
GO
USE [testDb]
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [testDb]
GO
/****** Object:  Table [dbo].[city]    Script Date: 12-01-2022 00:15:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[city](
	[city_id] [int] IDENTITY(1,1) NOT NULL,
	[city_name] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[city_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[employee]    Script Date: 12-01-2022 00:15:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employee](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fname] [varchar](50) NULL,
	[lname] [varchar](50) NULL,
	[mobile] [varchar](15) NULL,
	[email] [varchar](50) NULL,
	[city] [varchar](100) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[student]    Script Date: 12-01-2022 00:15:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[student](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fname] [varchar](50) NULL,
	[lname] [varchar](50) NULL,
	[mobile] [varchar](15) NULL,
	[email] [varchar](50) NULL,
	[city] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[city] ON 

INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1, N'noida')
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (2, N'meerut')
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (3, N'hapur')
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (4, N'lucknow')
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (5, N'kanpur')
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (6, N'delhi')
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (7, N'ambla')
SET IDENTITY_INSERT [dbo].[city] OFF
SET IDENTITY_INSERT [dbo].[employee] ON 

INSERT [dbo].[employee] ([id], [fname], [lname], [mobile], [email], [city]) VALUES (1, N'avneesh', N'kumar', N'8756059656', N'avneesh@gmail.com', N'1')
INSERT [dbo].[employee] ([id], [fname], [lname], [mobile], [email], [city]) VALUES (2, N'anil', N'gupta', N'7011320125', N'anil@gmail.com', N'2')
INSERT [dbo].[employee] ([id], [fname], [lname], [mobile], [email], [city]) VALUES (3, N'prem', N'chopra', N'7011320121', N'prem@gmail.com', N'3')
INSERT [dbo].[employee] ([id], [fname], [lname], [mobile], [email], [city]) VALUES (4, N'jitendra', N'singh', N'7011320122', N'jitendra@gmail.com', N'4')
INSERT [dbo].[employee] ([id], [fname], [lname], [mobile], [email], [city]) VALUES (5, N'akash', N'patel', N'7011320126', N'akash@gmail.com', N'5')
INSERT [dbo].[employee] ([id], [fname], [lname], [mobile], [email], [city]) VALUES (6, N'monu', N'kumar', N'7011320127', N'monu@gmail.com', N'6')
INSERT [dbo].[employee] ([id], [fname], [lname], [mobile], [email], [city]) VALUES (7, N'lalit', N'modi', N'7011320128', N'lalit@gmail.com', N'7')
SET IDENTITY_INSERT [dbo].[employee] OFF
SET IDENTITY_INSERT [dbo].[student] ON 

INSERT [dbo].[student] ([id], [fname], [lname], [mobile], [email], [city]) VALUES (1, N'avneesh', N'kumar', N'8756059656', N'avneesh@gmail.com', N'noida')
INSERT [dbo].[student] ([id], [fname], [lname], [mobile], [email], [city]) VALUES (2, N'anil', N'gupta', N'7011320125', N'anil@gmail.com', N'meerut')
INSERT [dbo].[student] ([id], [fname], [lname], [mobile], [email], [city]) VALUES (3, N'prem', N'chopra', N'7011320121', N'prem@gmail.com', N'hapur')
INSERT [dbo].[student] ([id], [fname], [lname], [mobile], [email], [city]) VALUES (4, N'jitendra', N'singh', N'7011320122', N'jitendra@gmail.com', N'lucknow')
INSERT [dbo].[student] ([id], [fname], [lname], [mobile], [email], [city]) VALUES (5, N'akash', N'patel', N'7011320126', N'akash@gmail.com', N'kanpur')
INSERT [dbo].[student] ([id], [fname], [lname], [mobile], [email], [city]) VALUES (6, N'monu', N'kumar', N'7011320127', N'monu@gmail.com', N'delhi')
INSERT [dbo].[student] ([id], [fname], [lname], [mobile], [email], [city]) VALUES (7, N'lalit', N'modi', N'7011320128', N'lalit@gmail.com', N'ambla')
SET IDENTITY_INSERT [dbo].[student] OFF
/****** Object:  StoredProcedure [dbo].[sp_get_employee]    Script Date: 12-01-2022 00:15:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_get_employee]
AS
BEGIN
	SELECT(SELECT id,fname 'name.Firstname', lname as 'name.Lastname',mobile,email,a.city as 'city.id',b.city_name as 'city.name'
	FROM employee a
	INNER JOIN city b on a.city = b.city_id
	FOR JSON  PATH, ROOT('employees'))jsondata
END
GO
/****** Object:  StoredProcedure [dbo].[sp_get_student]    Script Date: 12-01-2022 00:15:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_get_student]
AS
BEGIN
	SELECT(SELECT id,fname 'name.Firstname', lname as 'name.Lastname',mobile,email,city
	FROM student
	FOR JSON  PATH, ROOT('students'))jsondata
END
GO
USE [master]
GO
ALTER DATABASE [testDb] SET  READ_WRITE 
GO
