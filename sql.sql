USE [Workshop2]
GO
/****** Object:  Table [dbo].[Music]    Script Date: 7/20/2023 10:08:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Music](
	[id] [nvarchar](100) NOT NULL,
	[name] [nvarchar](100) NULL,
	[des] [nvarchar](100) NULL,
	[author] [nvarchar](100) NULL,
	[link] [nvarchar](100) NULL,
	[createDate] [date] NULL,
 CONSTRAINT [PK_Music] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Object]    Script Date: 7/20/2023 10:08:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Object](
	[id] [nchar](10) NOT NULL,
	[name] [nchar](50) NULL,
	[link] [nchar](100) NULL,
	[brand] [nchar](50) NULL,
	[price] [float] NULL,
	[count] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[student]    Script Date: 7/20/2023 10:08:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[student](
	[name] [nvarchar](50) NULL,
	[course] [nvarchar](50) NULL,
	[grade] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblBankAccount]    Script Date: 7/20/2023 10:08:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblBankAccount](
	[id] [nchar](10) NULL,
	[name] [nvarchar](50) NULL,
	[address] [nvarchar](50) NULL,
	[money] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblBook]    Script Date: 7/20/2023 10:08:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblBook](
	[id] [nchar](10) NOT NULL,
	[name] [nvarchar](50) NULL,
	[description] [nvarchar](50) NULL,
	[author] [nvarchar](50) NULL,
	[yop] [int] NULL,
	[quantity] [int] NULL,
 CONSTRAINT [PK_tblBook] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCourse]    Script Date: 7/20/2023 10:08:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCourse](
	[id] [nchar](10) NULL,
	[name] [nchar](10) NULL,
	[teacher] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblFlight]    Script Date: 7/20/2023 10:08:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblFlight](
	[id] [nchar](10) NOT NULL,
	[brand] [nchar](20) NOT NULL,
	[departure] [nchar](50) NOT NULL,
	[destination] [nchar](50) NOT NULL,
	[dtime] [nchar](20) NOT NULL,
	[status] [int] NOT NULL,
 CONSTRAINT [PK_tblFlight] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLight]    Script Date: 7/20/2023 10:08:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLight](
	[id] [nchar](10) NOT NULL,
	[color] [nchar](200) NOT NULL,
	[duration] [int] NOT NULL,
 CONSTRAINT [PK_tblLight] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProduct]    Script Date: 7/20/2023 10:08:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProduct](
	[id] [nchar](10) NOT NULL,
	[name] [nvarchar](50) NULL,
	[count] [int] NULL,
	[price] [float] NULL,
 CONSTRAINT [PK_tblProduct] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblStudent]    Script Date: 7/20/2023 10:08:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblStudent](
	[Sid] [nchar](10) NULL,
	[name] [nvarchar](50) NULL,
	[grade] [float] NULL,
	[course] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTeacher]    Script Date: 7/20/2023 10:08:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTeacher](
	[id] [nchar](10) NULL,
	[name] [nvarchar](50) NULL,
	[teach] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUsers]    Script Date: 7/20/2023 10:08:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUsers](
	[userID] [nvarchar](50) NOT NULL,
	[fullName] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[roleID] [nvarchar](50) NULL,
	[status] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user]    Script Date: 7/20/2023 10:08:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[userID] [nchar](10) NULL,
	[password] [nchar](10) NULL,
	[fullName] [nvarchar](50) NULL
) ON [PRIMARY]
GO
