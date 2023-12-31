DROP DATABASE  [FinalProject]
GO
CREATE DATABASE [FinalProject]
GO
USE [FinalProject]
GO
/****** Object:  Table [dbo].[Object]    Script Date: 7/20/2023 10:08:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id] nvarchar(50) NOT NULL,
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

/****** Object:  Table [dbo].[tblUsers]    Script Date: 7/20/2023 10:08:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[userID] [nvarchar](50) primary key NOT NULL,
	[fullName] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[roleID] [nvarchar](50) NULL,
	[status] [bit] NULL
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Order](
	orderID nvarchar(50) primary key,
	userID nvarchar(50),
	orderDate Date not null,
	totalMoney float not null
	CONSTRAINT FK_Order_User FOREIGN KEY (userID)     
    REFERENCES [Users] (userID)
)
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [OrderDetail](
	orderDetailID nvarchar(50) primary key,
	orderID nvarchar(50),
	productId nvarchar(50),
	CONSTRAINT FK_OrderDetail_Order FOREIGN KEY (orderID)     
    REFERENCES [Order] (orderID),
	CONSTRAINT FK_ProductID_Product FOREIGN KEY (productId)     
    REFERENCES [Product] (id)
)
GO
