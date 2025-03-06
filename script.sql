USE [testify3]
GO
/****** Object:  Table [dbo].[Answer]    Script Date: 06/03/2025 9:45:58 CH ******/
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
/****** Object:  Table [dbo].[Class]    Script Date: 06/03/2025 9:45:58 CH ******/
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
/****** Object:  Table [dbo].[Class_Quiz]    Script Date: 06/03/2025 9:45:58 CH ******/
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
/****** Object:  Table [dbo].[Feedback]    Script Date: 06/03/2025 9:45:58 CH ******/
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
/****** Object:  Table [dbo].[Grade]    Script Date: 06/03/2025 9:45:58 CH ******/
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
/****** Object:  Table [dbo].[Notification]    Script Date: 06/03/2025 9:45:58 CH ******/
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
/****** Object:  Table [dbo].[Question]    Script Date: 06/03/2025 9:45:58 CH ******/
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
/****** Object:  Table [dbo].[Quiz]    Script Date: 06/03/2025 9:45:58 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quiz](
	[ID] [uniqueidentifier] NOT NULL,
	[Title] [nvarchar](255) NOT NULL,
	[ExpiryDate] [date] NOT NULL,
	[Duration] [uniqueidentifier] NOT NULL,
	[TimeLimit] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Score]    Script Date: 06/03/2025 9:45:58 CH ******/
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
/****** Object:  Table [dbo].[Student]    Script Date: 06/03/2025 9:45:58 CH ******/
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
/****** Object:  Table [dbo].[StudentAnswer]    Script Date: 06/03/2025 9:45:58 CH ******/
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
/****** Object:  Table [dbo].[Subject]    Script Date: 06/03/2025 9:45:58 CH ******/
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
/****** Object:  Table [dbo].[Teacher]    Script Date: 06/03/2025 9:45:58 CH ******/
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
/****** Object:  Table [dbo].[Teacher_Class]    Script Date: 06/03/2025 9:45:58 CH ******/
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
/****** Object:  Table [dbo].[Teacher_Student]    Script Date: 06/03/2025 9:45:58 CH ******/
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
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Mail], [PhoneNumber], [BirthDate], [Image], [FirstLogin], [SubjectID], [StudentCode]) VALUES (N'd06e870d-526a-4123-a7b5-0726afc8b347', N'Đỗ Thị K', N'Nữ', N'dothik@example.com', N'0911444555', CAST(N'2000-09-10' AS Date), N'default.png', CAST(N'2025-03-06T08:45:00.000' AS DateTime), N'95706071-9614-4b4d-aa7d-2e072af5cf76', N'ST010')
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Mail], [PhoneNumber], [BirthDate], [Image], [FirstLogin], [SubjectID], [StudentCode]) VALUES (N'560c9d89-2c78-4596-8cfa-165585bf94cf', N'Võ Thị Q', N'Nữ', N'vothiq@example.com', N'0922777888', CAST(N'2002-02-22' AS Date), N'default.png', CAST(N'2025-03-06T09:15:00.000' AS DateTime), N'95706071-9614-4b4d-aa7d-2e072af5cf76', N'ST016')
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Mail], [PhoneNumber], [BirthDate], [Image], [FirstLogin], [SubjectID], [StudentCode]) VALUES (N'88679e4b-a691-4992-888e-18b2ffb6507a', N'Cao Văn P', N'Nam', N'caovanp@example.com', N'0977666888', CAST(N'2003-05-07' AS Date), N'default.png', CAST(N'2025-03-06T09:10:00.000' AS DateTime), N'95706071-9614-4b4d-aa7d-2e072af5cf76', N'ST015')
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Mail], [PhoneNumber], [BirthDate], [Image], [FirstLogin], [SubjectID], [StudentCode]) VALUES (N'c4c680e8-0f44-45b6-8f65-334fe52c0d71', N'Phạm Văn C', N'Nam', N'phamvanc@example.com', N'0912345678', CAST(N'2000-11-10' AS Date), N'default.png', CAST(N'2025-03-06T08:10:00.000' AS DateTime), N'95706071-9614-4b4d-aa7d-2e072af5cf76', N'ST003')
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Mail], [PhoneNumber], [BirthDate], [Image], [FirstLogin], [SubjectID], [StudentCode]) VALUES (N'592691fb-7f88-46c9-896e-411c79c98a08', N'Lê Thị D', N'Nữ', N'lethid@example.com', N'0965432187', CAST(N'2001-07-25' AS Date), N'default.png', CAST(N'2025-03-06T08:15:00.000' AS DateTime), N'95706071-9614-4b4d-aa7d-2e072af5cf76', N'ST004')
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Mail], [PhoneNumber], [BirthDate], [Image], [FirstLogin], [SubjectID], [StudentCode]) VALUES (N'43f03dca-0d18-4fda-82e7-4133a91c071e', N'Lương Thị S', N'Nữ', N'luongthis@example.com', N'0966555777', CAST(N'2001-11-15' AS Date), N'default.png', CAST(N'2025-03-06T09:25:00.000' AS DateTime), N'95706071-9614-4b4d-aa7d-2e072af5cf76', N'ST018')
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Mail], [PhoneNumber], [BirthDate], [Image], [FirstLogin], [SubjectID], [StudentCode]) VALUES (N'13dcc272-55bc-4b2b-abe9-4ae019e7cef5', N'Hoàng Văn E', N'Nam', N'hoangvane@example.com', N'0932111222', CAST(N'2003-02-18' AS Date), N'default.png', CAST(N'2025-03-06T08:20:00.000' AS DateTime), N'95706071-9614-4b4d-aa7d-2e072af5cf76', N'ST005')
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Mail], [PhoneNumber], [BirthDate], [Image], [FirstLogin], [SubjectID], [StudentCode]) VALUES (N'7f4f64be-0e74-4669-9069-5271528681b7', N'Trương Thị O', N'Nữ', N'truongthio@example.com', N'0933444555', CAST(N'2001-10-05' AS Date), N'default.png', CAST(N'2025-03-06T09:05:00.000' AS DateTime), N'95706071-9614-4b4d-aa7d-2e072af5cf76', N'ST014')
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Mail], [PhoneNumber], [BirthDate], [Image], [FirstLogin], [SubjectID], [StudentCode]) VALUES (N'7bf750cd-67b8-4eba-af22-5b42323665c5', N'Ngô Văn I', N'Nam', N'ngovanii@example.com', N'0922333444', CAST(N'2001-01-21' AS Date), N'default.png', CAST(N'2025-03-06T08:40:00.000' AS DateTime), N'95706071-9614-4b4d-aa7d-2e072af5cf76', N'ST009')
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Mail], [PhoneNumber], [BirthDate], [Image], [FirstLogin], [SubjectID], [StudentCode]) VALUES (N'7a7b8590-7780-47dd-901f-5ea71283a6f6', N'Châu Văn T', N'Nam', N'chauvant@example.com', N'0988222111', CAST(N'2003-01-09' AS Date), N'default.png', CAST(N'2025-03-06T09:30:00.000' AS DateTime), N'95706071-9614-4b4d-aa7d-2e072af5cf76', N'ST019')
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Mail], [PhoneNumber], [BirthDate], [Image], [FirstLogin], [SubjectID], [StudentCode]) VALUES (N'465c00c9-1b40-4359-9405-683240b9f58e', N'Nguyễn Văn A', N'Nam', N'nguyenvana@example.com', N'0987654321', CAST(N'2001-05-15' AS Date), N'default.png', CAST(N'2025-03-06T08:00:00.000' AS DateTime), N'95706071-9614-4b4d-aa7d-2e072af5cf76', N'ST001')
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Mail], [PhoneNumber], [BirthDate], [Image], [FirstLogin], [SubjectID], [StudentCode]) VALUES (N'93fb68c8-3659-4bb5-862d-74b31d32123d', N'Phan Văn L', N'Nam', N'phanvanl@example.com', N'0955666777', CAST(N'2003-03-08' AS Date), N'default.png', CAST(N'2025-03-06T08:50:00.000' AS DateTime), N'95706071-9614-4b4d-aa7d-2e072af5cf76', N'ST011')
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Mail], [PhoneNumber], [BirthDate], [Image], [FirstLogin], [SubjectID], [StudentCode]) VALUES (N'84dff094-d87b-44f0-9c9c-7efdb5aa3e9b', N'Bùi Thị H', N'Nữ', N'buithih@example.com', N'0988111222', CAST(N'2002-06-14' AS Date), N'default.png', CAST(N'2025-03-06T08:35:00.000' AS DateTime), N'95706071-9614-4b4d-aa7d-2e072af5cf76', N'ST008')
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Mail], [PhoneNumber], [BirthDate], [Image], [FirstLogin], [SubjectID], [StudentCode]) VALUES (N'e683c9e9-1422-40b8-9cd6-8ad39e27c37e', N'Tống Thị M', N'Nữ', N'tongthim@example.com', N'0944555666', CAST(N'2002-08-29' AS Date), N'default.png', CAST(N'2025-03-06T08:55:00.000' AS DateTime), N'95706071-9614-4b4d-aa7d-2e072af5cf76', N'ST012')
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Mail], [PhoneNumber], [BirthDate], [Image], [FirstLogin], [SubjectID], [StudentCode]) VALUES (N'01bd0978-0559-4eca-a8cd-948f1650a54a', N'Vũ Văn G', N'Nam', N'vuvang@example.com', N'0909090909', CAST(N'2001-12-05' AS Date), N'default.png', CAST(N'2025-03-06T08:30:00.000' AS DateTime), N'95706071-9614-4b4d-aa7d-2e072af5cf76', N'ST007')
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Mail], [PhoneNumber], [BirthDate], [Image], [FirstLogin], [SubjectID], [StudentCode]) VALUES (N'22483812-1673-402c-916a-9c6b9db23286', N'Truong Dan Huy', N'Male', N'danhuy@gmail.com', N'021545414521', CAST(N'2004-01-01' AS Date), N'url', CAST(N'2024-01-01T00:00:00.000' AS DateTime), N'452b9447-3ef4-4dab-81fe-592fa51222e3', N'SE4845')
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Mail], [PhoneNumber], [BirthDate], [Image], [FirstLogin], [SubjectID], [StudentCode]) VALUES (N'bc1fa14e-4b4b-4211-9a45-c28f7d8216b8', N'Trần Thị B', N'Nữ', N'tranthib@example.com', N'0978123456', CAST(N'2002-09-20' AS Date), N'default.png', CAST(N'2025-03-06T08:05:00.000' AS DateTime), N'95706071-9614-4b4d-aa7d-2e072af5cf76', N'ST002')
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Mail], [PhoneNumber], [BirthDate], [Image], [FirstLogin], [SubjectID], [StudentCode]) VALUES (N'2e447032-4600-495b-8a0c-d11262dd69e9', N'Nguyễn Văn N', N'Nam', N'nguyenvann@example.com', N'0911222333', CAST(N'2000-12-12' AS Date), N'default.png', CAST(N'2025-03-06T09:00:00.000' AS DateTime), N'95706071-9614-4b4d-aa7d-2e072af5cf76', N'ST013')
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Mail], [PhoneNumber], [BirthDate], [Image], [FirstLogin], [SubjectID], [StudentCode]) VALUES (N'35a0db1f-3d89-480d-b299-d774b526add4', N'Đinh Văn R', N'Nam', N'dinhvanr@example.com', N'0903334444', CAST(N'2000-07-30' AS Date), N'default.png', CAST(N'2025-03-06T09:20:00.000' AS DateTime), N'95706071-9614-4b4d-aa7d-2e072af5cf76', N'ST017')
INSERT [dbo].[Student] ([ID], [Name], [Gender], [Mail], [PhoneNumber], [BirthDate], [Image], [FirstLogin], [SubjectID], [StudentCode]) VALUES (N'dd856b9f-4166-45b9-a1d3-d891a4fb9905', N'Đặng Thị F', N'Nữ', N'dangthif@example.com', N'0944333444', CAST(N'2000-04-30' AS Date), N'default.png', CAST(N'2025-03-06T08:25:00.000' AS DateTime), N'95706071-9614-4b4d-aa7d-2e072af5cf76', N'ST006')
GO
INSERT [dbo].[Subject] ([ID], [Name], [Image]) VALUES (N'95706071-9614-4b4d-aa7d-2e072af5cf76', N'Toán', NULL)
INSERT [dbo].[Subject] ([ID], [Name], [Image]) VALUES (N'452b9447-3ef4-4dab-81fe-592fa51222e3', N'Math', N'url')
INSERT [dbo].[Subject] ([ID], [Name], [Image]) VALUES (N'dac2c658-569b-468e-834b-66c5c848ba0b', N'Anh', NULL)
INSERT [dbo].[Subject] ([ID], [Name], [Image]) VALUES (N'1a6855b1-6202-4d13-a788-71a379bebc0b', N'Ð?a lý', NULL)
INSERT [dbo].[Subject] ([ID], [Name], [Image]) VALUES (N'fde72cae-96cd-4d3e-8b9e-f71f9eeff40c', N'Van', NULL)
INSERT [dbo].[Subject] ([ID], [Name], [Image]) VALUES (N'05739701-f23f-4efb-b7e6-fa7e608e1ec8', N'L?ch s?', NULL)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Student__1FC886040F7ACAE9]    Script Date: 06/03/2025 9:45:58 CH ******/
ALTER TABLE [dbo].[Student] ADD UNIQUE NONCLUSTERED 
(
	[StudentCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Student__1FC886044DCCB412]    Script Date: 06/03/2025 9:45:58 CH ******/
ALTER TABLE [dbo].[Student] ADD UNIQUE NONCLUSTERED 
(
	[StudentCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Student__2724B2D131F1C87B]    Script Date: 06/03/2025 9:45:58 CH ******/
ALTER TABLE [dbo].[Student] ADD UNIQUE NONCLUSTERED 
(
	[Mail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Student__2724B2D1E46E9C7D]    Script Date: 06/03/2025 9:45:58 CH ******/
ALTER TABLE [dbo].[Student] ADD UNIQUE NONCLUSTERED 
(
	[Mail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Teacher__A9D1053436C93A70]    Script Date: 06/03/2025 9:45:58 CH ******/
ALTER TABLE [dbo].[Teacher] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Teacher__A9D10534879E6D2A]    Script Date: 06/03/2025 9:45:58 CH ******/
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
ALTER TABLE [dbo].[Score]  WITH CHECK ADD CHECK  (([Status]='Not Started' OR [Status]='In Progress' OR [Status]='Completed'))
GO
ALTER TABLE [dbo].[Teacher]  WITH CHECK ADD CHECK  (([Gender]='Other' OR [Gender]='Female' OR [Gender]='Male'))
GO
ALTER TABLE [dbo].[Teacher]  WITH CHECK ADD CHECK  (([Gender]='Other' OR [Gender]='Female' OR [Gender]='Male'))
GO
