USE [master]
GO
/****** Object:  Database [testify3]    Script Date: 07/03/2025 2:40:16 CH ******/
CREATE DATABASE [testify3]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'testify3', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\testify3.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'testify3_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\testify3_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [testify3] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [testify3].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [testify3] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [testify3] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [testify3] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [testify3] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [testify3] SET ARITHABORT OFF 
GO
ALTER DATABASE [testify3] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [testify3] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [testify3] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [testify3] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [testify3] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [testify3] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [testify3] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [testify3] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [testify3] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [testify3] SET  DISABLE_BROKER 
GO
ALTER DATABASE [testify3] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [testify3] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [testify3] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [testify3] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [testify3] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [testify3] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [testify3] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [testify3] SET RECOVERY FULL 
GO
ALTER DATABASE [testify3] SET  MULTI_USER 
GO
ALTER DATABASE [testify3] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [testify3] SET DB_CHAINING OFF 
GO
ALTER DATABASE [testify3] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [testify3] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [testify3] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [testify3] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'testify3', N'ON'
GO
ALTER DATABASE [testify3] SET QUERY_STORE = OFF
GO
USE [testify3]
GO
/****** Object:  Table [dbo].[Answer]    Script Date: 07/03/2025 2:40:16 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Answer](
	[ID] [uniqueidentifier] NOT NULL,
	[Text] [nvarchar](max) NOT NULL,
	[Incorrect] [bit] NOT NULL,
	[QuestionID] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Class]    Script Date: 07/03/2025 2:40:16 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Class](
	[ID] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[TotalStudent] [int] NOT NULL,
	[GradeID] [uniqueidentifier] NULL,
	[ClassId] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Class_Quiz]    Script Date: 07/03/2025 2:40:16 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Class_Quiz](
	[ClassID] [uniqueidentifier] NOT NULL,
	[QuizID] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ClassID] ASC,
	[QuizID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 07/03/2025 2:40:16 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[ID] [uniqueidentifier] NOT NULL,
	[InParent] [bit] NOT NULL,
	[ParentID] [uniqueidentifier] NULL,
	[AnswerTime] [datetime] NOT NULL,
	[TeacherID] [uniqueidentifier] NULL,
	[StudentID] [uniqueidentifier] NULL,
	[SubjectID] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Grade]    Script Date: 07/03/2025 2:40:16 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grade](
	[ID] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notification]    Script Date: 07/03/2025 2:40:16 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notification](
	[ID] [uniqueidentifier] NOT NULL,
	[Context] [nvarchar](max) NOT NULL,
	[Time] [datetime] NOT NULL,
	[StudentID] [uniqueidentifier] NULL,
	[TeacherID] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Question]    Script Date: 07/03/2025 2:40:16 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Question](
	[ID] [uniqueidentifier] NOT NULL,
	[TimeLimit] [uniqueidentifier] NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
	[QuizID] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quiz]    Script Date: 07/03/2025 2:40:16 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quiz](
	[ID] [uniqueidentifier] NOT NULL,
	[Title] [nvarchar](255) NOT NULL,
	[ExpiryDate] [date] NOT NULL,
	[duration] [datetime] NULL,
	[timelimit] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Score]    Script Date: 07/03/2025 2:40:16 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Score](
	[ID] [uniqueidentifier] NOT NULL,
	[StartTime] [datetime] NOT NULL,
	[EndTime] [datetime] NOT NULL,
	[Status] [nvarchar](20) NOT NULL,
	[StudentID] [uniqueidentifier] NULL,
	[QuizID] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 07/03/2025 2:40:16 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[ID] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Gender] [nvarchar](10) NOT NULL,
	[Mail] [nvarchar](255) NOT NULL,
	[PhoneNumber] [nvarchar](15) NOT NULL,
	[BirthDate] [date] NOT NULL,
	[Image] [nvarchar](255) NULL,
	[FirstLogin] [datetime] NOT NULL,
	[SubjectID] [uniqueidentifier] NULL,
	[StudentCode] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentAnswer]    Script Date: 07/03/2025 2:40:16 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentAnswer](
	[StudentID] [uniqueidentifier] NOT NULL,
	[AnswerID] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC,
	[AnswerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 07/03/2025 2:40:16 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject](
	[ID] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Image] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 07/03/2025 2:40:16 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher](
	[ID] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[BirthDate] [date] NOT NULL,
	[Email] [nvarchar](255) NOT NULL,
	[SubjectID] [uniqueidentifier] NULL,
	[Gender] [nvarchar](10) NOT NULL,
	[Image] [nvarchar](255) NULL,
	[FirstLogin] [datetime] NOT NULL,
	[phoneNumber] [nchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teacher_Class]    Script Date: 07/03/2025 2:40:16 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher_Class](
	[TeacherID] [uniqueidentifier] NOT NULL,
	[ClassID] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TeacherID] ASC,
	[ClassID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teacher_Student]    Script Date: 07/03/2025 2:40:16 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher_Student](
	[TeacherID] [uniqueidentifier] NOT NULL,
	[StudentID] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TeacherID] ASC,
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Quiz] ([ID], [Title], [ExpiryDate], [duration], [timelimit]) VALUES (N'3a4e6b2f-6b8e-4e2b-8f3d-1e5c7f9a2e8d', N'Quiz 7', CAST(N'2025-06-30' AS Date), CAST(N'1900-01-01T00:55:00.000' AS DateTime), CAST(N'1900-01-01T00:18:00.000' AS DateTime))
INSERT [dbo].[Quiz] ([ID], [Title], [ExpiryDate], [duration], [timelimit]) VALUES (N'9f2b1a4e-3e4b-4e1c-a5d6-1f2e3c6b7d8e', N'Quiz 8', CAST(N'2025-05-31' AS Date), CAST(N'1900-01-01T01:15:00.000' AS DateTime), CAST(N'1900-01-01T00:22:00.000' AS DateTime))
INSERT [dbo].[Quiz] ([ID], [Title], [ExpiryDate], [duration], [timelimit]) VALUES (N'2c3d7f8e-4e2b-4e5c-8e1c-3c6a3f2b7a5e', N'Quiz 6', CAST(N'2025-07-31' AS Date), CAST(N'1900-01-01T00:40:00.000' AS DateTime), CAST(N'1900-01-01T00:12:00.000' AS DateTime))
INSERT [dbo].[Quiz] ([ID], [Title], [ExpiryDate], [duration], [timelimit]) VALUES (N'4e5b3c9f-1e2c-4d6e-8b1c-5f8d2a3f6e9a', N'Quiz 10', CAST(N'2025-03-31' AS Date), CAST(N'1900-01-01T01:00:00.000' AS DateTime), CAST(N'1900-01-01T00:20:00.000' AS DateTime))
INSERT [dbo].[Quiz] ([ID], [Title], [ExpiryDate], [duration], [timelimit]) VALUES (N'5a1c8f42-7c8b-4e4f-bb56-6e3d5e3d7f2e', N'Quiz 3', CAST(N'2025-10-31' AS Date), CAST(N'1900-01-01T00:45:00.000' AS DateTime), CAST(N'1900-01-01T00:20:00.000' AS DateTime))
INSERT [dbo].[Quiz] ([ID], [Title], [ExpiryDate], [duration], [timelimit]) VALUES (N'8e7a1f5f-3e4f-4e2c-a5c4-7d6b3a2f9f1b', N'Quiz 5', CAST(N'2025-08-31' AS Date), CAST(N'1900-01-01T01:30:00.000' AS DateTime), CAST(N'1900-01-01T00:30:00.000' AS DateTime))
INSERT [dbo].[Quiz] ([ID], [Title], [ExpiryDate], [duration], [timelimit]) VALUES (N'6f9b3d2c-1e4f-4c6e-9a5b-7e2a8f3c5c1d', N'Quiz 9', CAST(N'2025-04-30' AS Date), CAST(N'1900-01-01T00:35:00.000' AS DateTime), CAST(N'1900-01-01T00:10:00.000' AS DateTime))
INSERT [dbo].[Quiz] ([ID], [Title], [ExpiryDate], [duration], [timelimit]) VALUES (N'd4c0e9f0-1e2b-4c4e-9f9c-9a3f8d3f3e8e', N'Quiz 4', CAST(N'2025-09-30' AS Date), CAST(N'1900-01-01T00:50:00.000' AS DateTime), CAST(N'1900-01-01T00:25:00.000' AS DateTime))
INSERT [dbo].[Quiz] ([ID], [Title], [ExpiryDate], [duration], [timelimit]) VALUES (N'b1e3e5d9-48f9-4c8f-b8b0-ae7e8c2f2e8b', N'Quiz 2', CAST(N'2025-11-30' AS Date), CAST(N'1900-01-01T01:00:00.000' AS DateTime), CAST(N'1900-01-01T00:15:00.000' AS DateTime))
INSERT [dbo].[Quiz] ([ID], [Title], [ExpiryDate], [duration], [timelimit]) VALUES (N'7f2b0d8b-2c0e-4d5b-9a22-bc1c0f7a7f8c', N'Quiz 1', CAST(N'2025-12-31' AS Date), CAST(N'1900-01-01T00:30:00.000' AS DateTime), CAST(N'1900-01-01T00:10:00.000' AS DateTime))
GO
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Mail], [PhoneNumber], [BirthDate], [Image], [FirstLogin], [SubjectID], [StudentCode]) VALUES (N'd06e870d-526a-4123-a7b5-0726afc8b347', N'Đỗ Thị K', N'Male', N'dothik@example.com', N'0911444555', CAST(N'2000-09-10' AS Date), N'default.png', CAST(N'2025-03-06T08:45:00.000' AS DateTime), N'95706071-9614-4b4d-aa7d-2e072af5cf76', N'ST010')
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Mail], [PhoneNumber], [BirthDate], [Image], [FirstLogin], [SubjectID], [StudentCode]) VALUES (N'560c9d89-2c78-4596-8cfa-165585bf94cf', N'Võ Thị Q', N'Female', N'vothiq@example.com', N'0922777888', CAST(N'2002-02-22' AS Date), N'default.png', CAST(N'2025-03-06T09:15:00.000' AS DateTime), N'95706071-9614-4b4d-aa7d-2e072af5cf76', N'ST016')
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Mail], [PhoneNumber], [BirthDate], [Image], [FirstLogin], [SubjectID], [StudentCode]) VALUES (N'88679e4b-a691-4992-888e-18b2ffb6507a', N'Cao Văn P', N'Male', N'caovanp@example.com', N'0977666888', CAST(N'2003-05-07' AS Date), N'default.png', CAST(N'2025-03-06T09:10:00.000' AS DateTime), N'95706071-9614-4b4d-aa7d-2e072af5cf76', N'ST015')
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Mail], [PhoneNumber], [BirthDate], [Image], [FirstLogin], [SubjectID], [StudentCode]) VALUES (N'c4c680e8-0f44-45b6-8f65-334fe52c0d71', N'Phạm Văn C', N'Male', N'phamvanc@example.com', N'0912345678', CAST(N'2000-11-10' AS Date), N'default.png', CAST(N'2025-03-06T08:10:00.000' AS DateTime), N'95706071-9614-4b4d-aa7d-2e072af5cf76', N'ST003')
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Mail], [PhoneNumber], [BirthDate], [Image], [FirstLogin], [SubjectID], [StudentCode]) VALUES (N'592691fb-7f88-46c9-896e-411c79c98a08', N'Lê Thị D', N'Female', N'lethid@example.com', N'0965432187', CAST(N'2001-07-25' AS Date), N'default.png', CAST(N'2025-03-06T08:15:00.000' AS DateTime), N'95706071-9614-4b4d-aa7d-2e072af5cf76', N'ST004')
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Mail], [PhoneNumber], [BirthDate], [Image], [FirstLogin], [SubjectID], [StudentCode]) VALUES (N'43f03dca-0d18-4fda-82e7-4133a91c071e', N'Lương Thị S', N'Male', N'luongthis@example.com', N'0966555777', CAST(N'2001-11-15' AS Date), N'default.png', CAST(N'2025-03-06T09:25:00.000' AS DateTime), N'95706071-9614-4b4d-aa7d-2e072af5cf76', N'ST018')
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Mail], [PhoneNumber], [BirthDate], [Image], [FirstLogin], [SubjectID], [StudentCode]) VALUES (N'13dcc272-55bc-4b2b-abe9-4ae019e7cef5', N'Hoàng Văn E', N'Male', N'hoangvane@example.com', N'0932111222', CAST(N'2003-02-18' AS Date), N'default.png', CAST(N'2025-03-06T08:20:00.000' AS DateTime), N'95706071-9614-4b4d-aa7d-2e072af5cf76', N'ST005')
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Mail], [PhoneNumber], [BirthDate], [Image], [FirstLogin], [SubjectID], [StudentCode]) VALUES (N'7f4f64be-0e74-4669-9069-5271528681b7', N'Trương Thị O', N'Female', N'truongthio@example.com', N'0933444555', CAST(N'2001-10-05' AS Date), N'default.png', CAST(N'2025-03-06T09:05:00.000' AS DateTime), N'95706071-9614-4b4d-aa7d-2e072af5cf76', N'ST014')
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Mail], [PhoneNumber], [BirthDate], [Image], [FirstLogin], [SubjectID], [StudentCode]) VALUES (N'7bf750cd-67b8-4eba-af22-5b42323665c5', N'Ngô Văn I', N'Male', N'ngovanii@example.com', N'0922333444', CAST(N'2001-01-21' AS Date), N'default.png', CAST(N'2025-03-06T08:40:00.000' AS DateTime), N'95706071-9614-4b4d-aa7d-2e072af5cf76', N'ST009')
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Mail], [PhoneNumber], [BirthDate], [Image], [FirstLogin], [SubjectID], [StudentCode]) VALUES (N'7a7b8590-7780-47dd-901f-5ea71283a6f6', N'Châu Văn T', N'Male', N'chauvant@example.com', N'0988222111', CAST(N'2003-01-09' AS Date), N'default.png', CAST(N'2025-03-06T09:30:00.000' AS DateTime), N'95706071-9614-4b4d-aa7d-2e072af5cf76', N'ST019')
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Mail], [PhoneNumber], [BirthDate], [Image], [FirstLogin], [SubjectID], [StudentCode]) VALUES (N'465c00c9-1b40-4359-9405-683240b9f58e', N'Nguyễn Văn A', N'Male', N'nguyenvana@example.com', N'0987654321', CAST(N'2001-05-15' AS Date), N'default.png', CAST(N'2025-03-06T08:00:00.000' AS DateTime), N'95706071-9614-4b4d-aa7d-2e072af5cf76', N'ST001')
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Mail], [PhoneNumber], [BirthDate], [Image], [FirstLogin], [SubjectID], [StudentCode]) VALUES (N'93fb68c8-3659-4bb5-862d-74b31d32123d', N'Phan Văn L', N'Female', N'phanvanl@example.com', N'0955666777', CAST(N'2003-03-08' AS Date), N'default.png', CAST(N'2025-03-06T08:50:00.000' AS DateTime), N'95706071-9614-4b4d-aa7d-2e072af5cf76', N'ST011')
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Mail], [PhoneNumber], [BirthDate], [Image], [FirstLogin], [SubjectID], [StudentCode]) VALUES (N'84dff094-d87b-44f0-9c9c-7efdb5aa3e9b', N'Bùi Thị H', N'Male', N'buithih@example.com', N'0988111222', CAST(N'2002-06-14' AS Date), N'default.png', CAST(N'2025-03-06T08:35:00.000' AS DateTime), N'95706071-9614-4b4d-aa7d-2e072af5cf76', N'ST008')
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Mail], [PhoneNumber], [BirthDate], [Image], [FirstLogin], [SubjectID], [StudentCode]) VALUES (N'e683c9e9-1422-40b8-9cd6-8ad39e27c37e', N'Tống Thị M', N'Female', N'tongthim@example.com', N'0944555666', CAST(N'2002-08-29' AS Date), N'default.png', CAST(N'2025-03-06T08:55:00.000' AS DateTime), N'95706071-9614-4b4d-aa7d-2e072af5cf76', N'ST012')
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Mail], [PhoneNumber], [BirthDate], [Image], [FirstLogin], [SubjectID], [StudentCode]) VALUES (N'01bd0978-0559-4eca-a8cd-948f1650a54a', N'Vũ Văn G', N'Male', N'vuvang@example.com', N'0909090909', CAST(N'2001-12-05' AS Date), N'default.png', CAST(N'2025-03-06T08:30:00.000' AS DateTime), N'95706071-9614-4b4d-aa7d-2e072af5cf76', N'ST007')
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Mail], [PhoneNumber], [BirthDate], [Image], [FirstLogin], [SubjectID], [StudentCode]) VALUES (N'22483812-1673-402c-916a-9c6b9db23286', N'Truong Dan Huy', N'Male', N'danhuy@gmail.com', N'021545414521', CAST(N'2004-01-01' AS Date), N'url', CAST(N'2024-01-01T00:00:00.000' AS DateTime), N'452b9447-3ef4-4dab-81fe-592fa51222e3', N'SE4845')
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Mail], [PhoneNumber], [BirthDate], [Image], [FirstLogin], [SubjectID], [StudentCode]) VALUES (N'bc1fa14e-4b4b-4211-9a45-c28f7d8216b8', N'Trần Thị B', N'Male', N'tranthib@example.com', N'0978123456', CAST(N'2002-09-20' AS Date), N'default.png', CAST(N'2025-03-06T08:05:00.000' AS DateTime), N'95706071-9614-4b4d-aa7d-2e072af5cf76', N'ST002')
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Mail], [PhoneNumber], [BirthDate], [Image], [FirstLogin], [SubjectID], [StudentCode]) VALUES (N'2e447032-4600-495b-8a0c-d11262dd69e9', N'Nguyễn Văn N', N'Male', N'nguyenvann@example.com', N'0911222333', CAST(N'2000-12-12' AS Date), N'default.png', CAST(N'2025-03-06T09:00:00.000' AS DateTime), N'95706071-9614-4b4d-aa7d-2e072af5cf76', N'ST013')
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Mail], [PhoneNumber], [BirthDate], [Image], [FirstLogin], [SubjectID], [StudentCode]) VALUES (N'35a0db1f-3d89-480d-b299-d774b526add4', N'Đinh Văn R', N'Female', N'dinhvanr@example.com', N'0903334444', CAST(N'2000-07-30' AS Date), N'default.png', CAST(N'2025-03-06T09:20:00.000' AS DateTime), N'95706071-9614-4b4d-aa7d-2e072af5cf76', N'ST017')
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Mail], [PhoneNumber], [BirthDate], [Image], [FirstLogin], [SubjectID], [StudentCode]) VALUES (N'dd856b9f-4166-45b9-a1d3-d891a4fb9905', N'Đặng Thị F', N'Female', N'dangthif@example.com', N'0944333444', CAST(N'2000-04-30' AS Date), N'default.png', CAST(N'2025-03-06T08:25:00.000' AS DateTime), N'95706071-9614-4b4d-aa7d-2e072af5cf76', N'ST006')
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Mail], [PhoneNumber], [BirthDate], [Image], [FirstLogin], [SubjectID], [StudentCode]) VALUES (N'1363bebe-1eb0-47e4-b1ca-e57dcbdef626', N'string', N'Male', N'string', N'string', CAST(N'2025-03-07' AS Date), N'string', CAST(N'2025-03-07T03:04:54.140' AS DateTime), N'95706071-9614-4b4d-aa7d-2e072af5cf76', N'string')
GO
INSERT [dbo].[Subject] ([ID], [Name], [Image]) VALUES (N'95706071-9614-4b4d-aa7d-2e072af5cf76', N'Toán', N'url')
INSERT [dbo].[Subject] ([ID], [Name], [Image]) VALUES (N'452b9447-3ef4-4dab-81fe-592fa51222e3', N'Math', N'url')
INSERT [dbo].[Subject] ([ID], [Name], [Image]) VALUES (N'dac2c658-569b-468e-834b-66c5c848ba0b', N'Anh', N'url')
INSERT [dbo].[Subject] ([ID], [Name], [Image]) VALUES (N'1a6855b1-6202-4d13-a788-71a379bebc0b', N'Ð?a lý', N'url')
INSERT [dbo].[Subject] ([ID], [Name], [Image]) VALUES (N'fde72cae-96cd-4d3e-8b9e-f71f9eeff40c', N'Van', N'url')
INSERT [dbo].[Subject] ([ID], [Name], [Image]) VALUES (N'05739701-f23f-4efb-b7e6-fa7e608e1ec8', N'L?ch s?', N'url')
GO
INSERT [dbo].[Teacher] ([ID], [Name], [BirthDate], [Email], [SubjectID], [Gender], [Image], [FirstLogin], [phoneNumber]) VALUES (N'60f9de47-2ade-4891-b783-4adfddd74b4c', N'Lê Van U', CAST(N'1986-06-22' AS Date), N'u@example.com', N'fde72cae-96cd-4d3e-8b9e-f71f9eeff40c', N'male', N'url_to_image_U', CAST(N'2023-11-01T00:00:00.000' AS DateTime), N'0123456799')
INSERT [dbo].[Teacher] ([ID], [Name], [BirthDate], [Email], [SubjectID], [Gender], [Image], [FirstLogin], [phoneNumber]) VALUES (N'd5295b62-2e8a-481a-af9c-5de6dce35b9b', N'Nguy?n Van W', CAST(N'1983-03-03' AS Date), N'w@example.com', N'95706071-9614-4b4d-aa7d-2e072af5cf76', N'male', N'url_to_image_W', CAST(N'2023-01-01T00:00:00.000' AS DateTime), N'0123456701')
INSERT [dbo].[Teacher] ([ID], [Name], [BirthDate], [Email], [SubjectID], [Gender], [Image], [FirstLogin], [phoneNumber]) VALUES (N'd30a460b-ff55-446f-8179-7ccf21d45e7a', N'Nguy?n Van O', CAST(N'1981-09-10' AS Date), N'o@example.com', N'fde72cae-96cd-4d3e-8b9e-f71f9eeff40c', N'male', N'url_to_image_O', CAST(N'2023-05-01T00:00:00.000' AS DateTime), N'0123456793')
INSERT [dbo].[Teacher] ([ID], [Name], [BirthDate], [Email], [SubjectID], [Gender], [Image], [FirstLogin], [phoneNumber]) VALUES (N'd421d04d-a993-4edf-832b-8a068fb60542', N'Ph?m Th? V', CAST(N'1991-04-28' AS Date), N'v@example.com', N'05739701-f23f-4efb-b7e6-fa7e608e1ec8', N'female', N'url_to_image_V', CAST(N'2023-12-01T00:00:00.000' AS DateTime), N'0123456700')
INSERT [dbo].[Teacher] ([ID], [Name], [BirthDate], [Email], [SubjectID], [Gender], [Image], [FirstLogin], [phoneNumber]) VALUES (N'32238b3d-f414-4672-9619-8f9025702f5e', N'Tr?n Th? L', CAST(N'1989-03-15' AS Date), N'l@example.com', N'452b9447-3ef4-4dab-81fe-592fa51222e3', N'female', N'url_to_image_L', CAST(N'2023-02-01T00:00:00.000' AS DateTime), N'0123456790')
INSERT [dbo].[Teacher] ([ID], [Name], [BirthDate], [Email], [SubjectID], [Gender], [Image], [FirstLogin], [phoneNumber]) VALUES (N'71bc6fcf-73d8-415e-b255-921e89caa317', N'Nguy?n Van E', CAST(N'1982-09-10' AS Date), N'e@example.com', N'fde72cae-96cd-4d3e-8b9e-f71f9eeff40c', N'male', N'url_to_image_E', CAST(N'2023-01-01T00:00:00.000' AS DateTime), N'0123456783')
INSERT [dbo].[Teacher] ([ID], [Name], [BirthDate], [Email], [SubjectID], [Gender], [Image], [FirstLogin], [phoneNumber]) VALUES (N'f8f7facb-f580-4da7-ab4b-92448b0d1b52', N'Ph?m Th? R', CAST(N'1994-11-25' AS Date), N'r@example.com', N'452b9447-3ef4-4dab-81fe-592fa51222e3', N'female', N'url_to_image_R', CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'0123456796')
INSERT [dbo].[Teacher] ([ID], [Name], [BirthDate], [Email], [SubjectID], [Gender], [Image], [FirstLogin], [phoneNumber]) VALUES (N'0a262f41-3baf-4430-a6a5-97253b2f95c9', N'Tr?n Th? F', CAST(N'1992-12-05' AS Date), N'f@example.com', N'05739701-f23f-4efb-b7e6-fa7e608e1ec8', N'female', N'url_to_image_F', CAST(N'2023-01-01T00:00:00.000' AS DateTime), N'0123456784')
INSERT [dbo].[Teacher] ([ID], [Name], [BirthDate], [Email], [SubjectID], [Gender], [Image], [FirstLogin], [phoneNumber]) VALUES (N'3576cd46-4cb9-40d3-8e16-9d0943e91d1c', N'Ph?m Th? N', CAST(N'1992-01-30' AS Date), N'n@example.com', N'1a6855b1-6202-4d13-a788-71a379bebc0b', N'female', N'url_to_image_N', CAST(N'2023-04-01T00:00:00.000' AS DateTime), N'0123456792')
INSERT [dbo].[Teacher] ([ID], [Name], [BirthDate], [Email], [SubjectID], [Gender], [Image], [FirstLogin], [phoneNumber]) VALUES (N'34857279-8cef-4826-8074-a31ba3674619', N'Lê Van Q', CAST(N'1988-08-18' AS Date), N'q@example.com', N'95706071-9614-4b4d-aa7d-2e072af5cf76', N'male', N'url_to_image_Q', CAST(N'2023-07-01T00:00:00.000' AS DateTime), N'0123456795')
INSERT [dbo].[Teacher] ([ID], [Name], [BirthDate], [Email], [SubjectID], [Gender], [Image], [FirstLogin], [phoneNumber]) VALUES (N'92fcf14d-c47c-4896-915c-acbd1abf570d', N'Nguy?n Van K', CAST(N'1984-02-20' AS Date), N'k@example.com', N'95706071-9614-4b4d-aa7d-2e072af5cf76', N'male', N'url_to_image_K', CAST(N'2023-01-01T00:00:00.000' AS DateTime), N'0123456789')
INSERT [dbo].[Teacher] ([ID], [Name], [BirthDate], [Email], [SubjectID], [Gender], [Image], [FirstLogin], [phoneNumber]) VALUES (N'f3555684-a1fe-499e-8ec4-af7ca12f467b', N'Lê Van M', CAST(N'1995-07-25' AS Date), N'm@example.com', N'dac2c658-569b-468e-834b-66c5c848ba0b', N'male', N'url_to_image_M', CAST(N'2023-03-01T00:00:00.000' AS DateTime), N'0123456791')
INSERT [dbo].[Teacher] ([ID], [Name], [BirthDate], [Email], [SubjectID], [Gender], [Image], [FirstLogin], [phoneNumber]) VALUES (N'8dba2fea-8afb-4000-a49a-b01f3be52fe8', N'Lê Van C', CAST(N'1988-07-25' AS Date), N'c@example.com', N'dac2c658-569b-468e-834b-66c5c848ba0b', N'male', N'url_to_image_C', CAST(N'2023-01-01T00:00:00.000' AS DateTime), N'0123456781')
INSERT [dbo].[Teacher] ([ID], [Name], [BirthDate], [Email], [SubjectID], [Gender], [Image], [FirstLogin], [phoneNumber]) VALUES (N'39fc79cd-e79c-4a63-9ba5-be3432024336', N'Nguy?n Van S', CAST(N'1987-05-30' AS Date), N's@example.com', N'dac2c658-569b-468e-834b-66c5c848ba0b', N'male', N'url_to_image_S', CAST(N'2023-09-01T00:00:00.000' AS DateTime), N'0123456797')
INSERT [dbo].[Teacher] ([ID], [Name], [BirthDate], [Email], [SubjectID], [Gender], [Image], [FirstLogin], [phoneNumber]) VALUES (N'826b13bf-35b4-4307-92f7-c13b195f4e2b', N'Lê Van Y', CAST(N'1990-05-15' AS Date), N'y@example.com', N'dac2c658-569b-468e-834b-66c5c848ba0b', N'male', N'url_to_image_Y', CAST(N'2023-03-01T00:00:00.000' AS DateTime), N'0123456703')
INSERT [dbo].[Teacher] ([ID], [Name], [BirthDate], [Email], [SubjectID], [Gender], [Image], [FirstLogin], [phoneNumber]) VALUES (N'7e045801-01d1-4e33-98a8-c4901c9ddbe2', N'Ph?m Th? Z', CAST(N'1992-11-30' AS Date), N'z@example.com', N'1a6855b1-6202-4d13-a788-71a379bebc0b', N'female', N'url_to_image_Z', CAST(N'2023-04-01T00:00:00.000' AS DateTime), N'0123456704')
INSERT [dbo].[Teacher] ([ID], [Name], [BirthDate], [Email], [SubjectID], [Gender], [Image], [FirstLogin], [phoneNumber]) VALUES (N'f3e9c78c-de30-4c3a-b938-d13d85ea6b20', N'Tr?n Th? X', CAST(N'1985-12-12' AS Date), N'x@example.com', N'452b9447-3ef4-4dab-81fe-592fa51222e3', N'female', N'url_to_image_X', CAST(N'2023-02-01T00:00:00.000' AS DateTime), N'0123456702')
INSERT [dbo].[Teacher] ([ID], [Name], [BirthDate], [Email], [SubjectID], [Gender], [Image], [FirstLogin], [phoneNumber]) VALUES (N'070561e0-7d63-4c1a-8654-d891aa940c4c', N'Tr?n Th? T', CAST(N'1993-10-14' AS Date), N't@example.com', N'1a6855b1-6202-4d13-a788-71a379bebc0b', N'female', N'url_to_image_T', CAST(N'2023-10-01T00:00:00.000' AS DateTime), N'0123456798')
INSERT [dbo].[Teacher] ([ID], [Name], [BirthDate], [Email], [SubjectID], [Gender], [Image], [FirstLogin], [phoneNumber]) VALUES (N'9ee05ad9-8b87-4ae7-a265-f190ef22579d', N'Nguy?n Van A', CAST(N'1985-05-20' AS Date), N'a@example.com', N'95706071-9614-4b4d-aa7d-2e072af5cf76', N'male', N'url_to_image_A', CAST(N'2023-01-01T00:00:00.000' AS DateTime), N'0123456789')
INSERT [dbo].[Teacher] ([ID], [Name], [BirthDate], [Email], [SubjectID], [Gender], [Image], [FirstLogin], [phoneNumber]) VALUES (N'd2911d46-289e-4f69-acce-f1a088ceacce', N'Tr?n Th? B', CAST(N'1990-03-15' AS Date), N'b@example.com', N'452b9447-3ef4-4dab-81fe-592fa51222e3', N'female', N'url_to_image_B', CAST(N'2023-01-01T00:00:00.000' AS DateTime), N'0123456780')
INSERT [dbo].[Teacher] ([ID], [Name], [BirthDate], [Email], [SubjectID], [Gender], [Image], [FirstLogin], [phoneNumber]) VALUES (N'170c05fa-7875-40b3-8d70-fe880fabf184', N'Tr?n Th? P', CAST(N'1990-12-05' AS Date), N'p@example.com', N'05739701-f23f-4efb-b7e6-fa7e608e1ec8', N'female', N'url_to_image_P', CAST(N'2023-06-01T00:00:00.000' AS DateTime), N'0123456794')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Student__1FC88604C9A6B29A]    Script Date: 07/03/2025 2:40:16 CH ******/
ALTER TABLE [dbo].[Student] ADD UNIQUE NONCLUSTERED 
(
	[StudentCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Student__2724B2D16E24B519]    Script Date: 07/03/2025 2:40:16 CH ******/
ALTER TABLE [dbo].[Student] ADD UNIQUE NONCLUSTERED 
(
	[Mail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Teacher__A9D1053484637759]    Script Date: 07/03/2025 2:40:16 CH ******/
ALTER TABLE [dbo].[Teacher] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Answer]  WITH CHECK ADD FOREIGN KEY([QuestionID])
REFERENCES [dbo].[Question] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Class]  WITH CHECK ADD  CONSTRAINT [FK_Class_Grade] FOREIGN KEY([GradeID])
REFERENCES [dbo].[Grade] ([ID])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Class] CHECK CONSTRAINT [FK_Class_Grade]
GO
ALTER TABLE [dbo].[Class_Quiz]  WITH CHECK ADD FOREIGN KEY([ClassID])
REFERENCES [dbo].[Class] ([ID])
GO
ALTER TABLE [dbo].[Class_Quiz]  WITH CHECK ADD FOREIGN KEY([QuizID])
REFERENCES [dbo].[Quiz] ([ID])
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_Feedback_Student] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([ID])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_Feedback_Student]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_Feedback_Subject] FOREIGN KEY([SubjectID])
REFERENCES [dbo].[Subject] ([ID])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_Feedback_Subject]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_Feedback_Teacher] FOREIGN KEY([TeacherID])
REFERENCES [dbo].[Teacher] ([ID])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_Feedback_Teacher]
GO
ALTER TABLE [dbo].[Notification]  WITH CHECK ADD  CONSTRAINT [FK_Notification_Student] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([ID])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Notification] CHECK CONSTRAINT [FK_Notification_Student]
GO
ALTER TABLE [dbo].[Notification]  WITH CHECK ADD  CONSTRAINT [FK_Notification_Teacher] FOREIGN KEY([TeacherID])
REFERENCES [dbo].[Teacher] ([ID])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Notification] CHECK CONSTRAINT [FK_Notification_Teacher]
GO
ALTER TABLE [dbo].[Question]  WITH CHECK ADD FOREIGN KEY([QuizID])
REFERENCES [dbo].[Quiz] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Score]  WITH CHECK ADD FOREIGN KEY([QuizID])
REFERENCES [dbo].[Quiz] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Score]  WITH CHECK ADD FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Subject] FOREIGN KEY([SubjectID])
REFERENCES [dbo].[Subject] ([ID])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Subject]
GO
ALTER TABLE [dbo].[StudentAnswer]  WITH CHECK ADD FOREIGN KEY([AnswerID])
REFERENCES [dbo].[Answer] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[StudentAnswer]  WITH CHECK ADD FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Teacher]  WITH CHECK ADD FOREIGN KEY([SubjectID])
REFERENCES [dbo].[Subject] ([ID])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Teacher_Class]  WITH CHECK ADD FOREIGN KEY([ClassID])
REFERENCES [dbo].[Class] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Teacher_Class]  WITH CHECK ADD FOREIGN KEY([TeacherID])
REFERENCES [dbo].[Teacher] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Teacher_Student]  WITH CHECK ADD FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Teacher_Student]  WITH CHECK ADD FOREIGN KEY([TeacherID])
REFERENCES [dbo].[Teacher] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Score]  WITH CHECK ADD CHECK  (([Status]='Not Started' OR [Status]='In Progress' OR [Status]='Completed'))
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD CHECK  (([Gender]='Other' OR [Gender]='Female' OR [Gender]='Male'))
GO
ALTER TABLE [dbo].[Teacher]  WITH CHECK ADD CHECK  (([Gender]='Other' OR [Gender]='Female' OR [Gender]='Male'))
GO
USE [master]
GO
ALTER DATABASE [testify3] SET  READ_WRITE 
GO
