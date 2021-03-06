USE [master]
GO
/****** Object:  Database [AngulerDB]    Script Date: 12/8/2020 2:53:21 PM ******/
CREATE DATABASE [AngulerDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AngulerDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\AngulerDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AngulerDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\AngulerDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [AngulerDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AngulerDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AngulerDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AngulerDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AngulerDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AngulerDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AngulerDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [AngulerDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [AngulerDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AngulerDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AngulerDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AngulerDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AngulerDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AngulerDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AngulerDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AngulerDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AngulerDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [AngulerDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AngulerDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AngulerDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AngulerDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AngulerDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AngulerDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AngulerDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AngulerDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [AngulerDB] SET  MULTI_USER 
GO
ALTER DATABASE [AngulerDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AngulerDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AngulerDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AngulerDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [AngulerDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [AngulerDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [AngulerDB] SET QUERY_STORE = OFF
GO
USE [AngulerDB]
GO
/****** Object:  Table [dbo].[CityMaster]    Script Date: 12/8/2020 2:53:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CityMaster](
	[Cityid] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [varchar](50) NULL,
	[StateId] [int] NOT NULL,
	[CountryId] [int] NOT NULL,
 CONSTRAINT [PK_CityMaster] PRIMARY KEY CLUSTERED 
(
	[Cityid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CountryMaster]    Script Date: 12/8/2020 2:53:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CountryMaster](
	[CountryId] [int] IDENTITY(1,1) NOT NULL,
	[CountryName] [varchar](50) NULL,
 CONSTRAINT [PK_CountryMaster] PRIMARY KEY CLUSTERED 
(
	[CountryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StateMaster]    Script Date: 12/8/2020 2:53:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StateMaster](
	[StateId] [int] IDENTITY(1,1) NOT NULL,
	[StateName] [varchar](50) NULL,
	[CountryId] [int] NOT NULL,
 CONSTRAINT [PK_StateMaster] PRIMARY KEY CLUSTERED 
(
	[StateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblEmployeeMaster]    Script Date: 12/8/2020 2:53:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEmployeeMaster](
	[EmpId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[DateofBirth] [datetime] NULL,
	[EmailId] [nvarchar](50) NULL,
	[Gender] [nchar](10) NULL,
	[CountryId] [int] NULL,
	[StateId] [int] NULL,
	[Cityid] [int] NULL,
	[Address] [varchar](100) NULL,
	[Pincode] [varchar](50) NULL,
 CONSTRAINT [PK_tblEmployeeMaster] PRIMARY KEY CLUSTERED 
(
	[EmpId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CityMaster] ON 

INSERT [dbo].[CityMaster] ([Cityid], [CityName], [StateId], [CountryId]) VALUES (1, N'Visakhapatnam', 1, 1)
INSERT [dbo].[CityMaster] ([Cityid], [CityName], [StateId], [CountryId]) VALUES (2, N'Vijayawada', 1, 1)
INSERT [dbo].[CityMaster] ([Cityid], [CityName], [StateId], [CountryId]) VALUES (3, N'Guntur', 1, 1)
INSERT [dbo].[CityMaster] ([Cityid], [CityName], [StateId], [CountryId]) VALUES (4, N'Nellore', 1, 1)
INSERT [dbo].[CityMaster] ([Cityid], [CityName], [StateId], [CountryId]) VALUES (5, N'Kurnool', 1, 1)
INSERT [dbo].[CityMaster] ([Cityid], [CityName], [StateId], [CountryId]) VALUES (6, N'Ahmedabad', 2, 1)
INSERT [dbo].[CityMaster] ([Cityid], [CityName], [StateId], [CountryId]) VALUES (7, N'Surat', 2, 1)
INSERT [dbo].[CityMaster] ([Cityid], [CityName], [StateId], [CountryId]) VALUES (8, N'Vadodara', 2, 1)
INSERT [dbo].[CityMaster] ([Cityid], [CityName], [StateId], [CountryId]) VALUES (9, N'Rajkot', 2, 1)
INSERT [dbo].[CityMaster] ([Cityid], [CityName], [StateId], [CountryId]) VALUES (10, N'Bhavnagar', 2, 1)
INSERT [dbo].[CityMaster] ([Cityid], [CityName], [StateId], [CountryId]) VALUES (11, N'Jamnagar', 2, 1)
INSERT [dbo].[CityMaster] ([Cityid], [CityName], [StateId], [CountryId]) VALUES (12, N'Junagadh', 2, 1)
INSERT [dbo].[CityMaster] ([Cityid], [CityName], [StateId], [CountryId]) VALUES (13, N'Thiruvananthapuram', 3, 1)
INSERT [dbo].[CityMaster] ([Cityid], [CityName], [StateId], [CountryId]) VALUES (14, N'Kochi', 3, 1)
INSERT [dbo].[CityMaster] ([Cityid], [CityName], [StateId], [CountryId]) VALUES (15, N'Kozhikode', 3, 1)
INSERT [dbo].[CityMaster] ([Cityid], [CityName], [StateId], [CountryId]) VALUES (16, N'Kollam', 3, 1)
INSERT [dbo].[CityMaster] ([Cityid], [CityName], [StateId], [CountryId]) VALUES (17, N'Kannur', 3, 1)
INSERT [dbo].[CityMaster] ([Cityid], [CityName], [StateId], [CountryId]) VALUES (18, N'Malappuram', 3, 1)
INSERT [dbo].[CityMaster] ([Cityid], [CityName], [StateId], [CountryId]) VALUES (19, N'Vatakara', 3, 1)
INSERT [dbo].[CityMaster] ([Cityid], [CityName], [StateId], [CountryId]) VALUES (20, N'Adamsville', 4, 2)
INSERT [dbo].[CityMaster] ([Cityid], [CityName], [StateId], [CountryId]) VALUES (21, N'Addison', 4, 2)
INSERT [dbo].[CityMaster] ([Cityid], [CityName], [StateId], [CountryId]) VALUES (22, N'Allgood', 4, 2)
INSERT [dbo].[CityMaster] ([Cityid], [CityName], [StateId], [CountryId]) VALUES (23, N'Auburn', 4, 2)
INSERT [dbo].[CityMaster] ([Cityid], [CityName], [StateId], [CountryId]) VALUES (24, N'Honolulu', 5, 2)
INSERT [dbo].[CityMaster] ([Cityid], [CityName], [StateId], [CountryId]) VALUES (25, N'East Honolulu', 5, 2)
INSERT [dbo].[CityMaster] ([Cityid], [CityName], [StateId], [CountryId]) VALUES (26, N'Kahului', 5, 2)
INSERT [dbo].[CityMaster] ([Cityid], [CityName], [StateId], [CountryId]) VALUES (29, N'Abernathy', 6, 2)
INSERT [dbo].[CityMaster] ([Cityid], [CityName], [StateId], [CountryId]) VALUES (30, N'Alton', 6, 2)
INSERT [dbo].[CityMaster] ([Cityid], [CityName], [StateId], [CountryId]) VALUES (31, N'Barstow', 6, 2)
INSERT [dbo].[CityMaster] ([Cityid], [CityName], [StateId], [CountryId]) VALUES (32, N'Bellmead', 6, 2)
INSERT [dbo].[CityMaster] ([Cityid], [CityName], [StateId], [CountryId]) VALUES (33, N'Angel Fire', 7, 2)
INSERT [dbo].[CityMaster] ([Cityid], [CityName], [StateId], [CountryId]) VALUES (34, N'Capitan', 7, 2)
INSERT [dbo].[CityMaster] ([Cityid], [CityName], [StateId], [CountryId]) VALUES (35, N'Dexter', 7, 2)
INSERT [dbo].[CityMaster] ([Cityid], [CityName], [StateId], [CountryId]) VALUES (36, N'Floyd', 7, 2)
INSERT [dbo].[CityMaster] ([Cityid], [CityName], [StateId], [CountryId]) VALUES (37, N'Albany', 8, 2)
INSERT [dbo].[CityMaster] ([Cityid], [CityName], [StateId], [CountryId]) VALUES (38, N'Geneva', 8, 2)
INSERT [dbo].[CityMaster] ([Cityid], [CityName], [StateId], [CountryId]) VALUES (39, N'Olean', 8, 2)
INSERT [dbo].[CityMaster] ([Cityid], [CityName], [StateId], [CountryId]) VALUES (40, N'White Plains', 8, 2)
INSERT [dbo].[CityMaster] ([Cityid], [CityName], [StateId], [CountryId]) VALUES (41, N'Rome', 8, 2)
INSERT [dbo].[CityMaster] ([Cityid], [CityName], [StateId], [CountryId]) VALUES (42, N'Troy', 8, 2)
SET IDENTITY_INSERT [dbo].[CityMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[CountryMaster] ON 

INSERT [dbo].[CountryMaster] ([CountryId], [CountryName]) VALUES (1, N'India')
INSERT [dbo].[CountryMaster] ([CountryId], [CountryName]) VALUES (2, N'United States')
SET IDENTITY_INSERT [dbo].[CountryMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[StateMaster] ON 

INSERT [dbo].[StateMaster] ([StateId], [StateName], [CountryId]) VALUES (1, N'Andhra Pradesh', 1)
INSERT [dbo].[StateMaster] ([StateId], [StateName], [CountryId]) VALUES (2, N'Gujarat', 1)
INSERT [dbo].[StateMaster] ([StateId], [StateName], [CountryId]) VALUES (3, N'Kerala', 1)
INSERT [dbo].[StateMaster] ([StateId], [StateName], [CountryId]) VALUES (4, N'Alabama', 2)
INSERT [dbo].[StateMaster] ([StateId], [StateName], [CountryId]) VALUES (5, N'Hawaii', 2)
INSERT [dbo].[StateMaster] ([StateId], [StateName], [CountryId]) VALUES (6, N'Texas', 2)
INSERT [dbo].[StateMaster] ([StateId], [StateName], [CountryId]) VALUES (7, N'New Mexico', 2)
INSERT [dbo].[StateMaster] ([StateId], [StateName], [CountryId]) VALUES (8, N'New York', 2)
SET IDENTITY_INSERT [dbo].[StateMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[tblEmployeeMaster] ON 

INSERT [dbo].[tblEmployeeMaster] ([EmpId], [FirstName], [LastName], [DateofBirth], [EmailId], [Gender], [CountryId], [StateId], [Cityid], [Address], [Pincode]) VALUES (1, N'Nikunj', N'Satasiya', CAST(N'1996-04-12T18:30:00.000' AS DateTime), N'info.codingvila@gmail.com', N'0         ', 1, 2, 6, N'Surat', N'222222')
SET IDENTITY_INSERT [dbo].[tblEmployeeMaster] OFF
GO
USE [master]
GO
ALTER DATABASE [AngulerDB] SET  READ_WRITE 
GO
