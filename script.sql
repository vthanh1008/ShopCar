USE [master]
GO
/****** Object:  Database [ShopCar]    Script Date: 1/30/2021 2:03:06 PM ******/
CREATE DATABASE [ShopCar]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ShopCar', FILENAME = N'D:\sql\MSSQL12.MSSQLSERVER\MSSQL\DATA\ShopCar.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ShopCar_log', FILENAME = N'D:\sql\MSSQL12.MSSQLSERVER\MSSQL\DATA\ShopCar_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ShopCar] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ShopCar].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ShopCar] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ShopCar] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ShopCar] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ShopCar] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ShopCar] SET ARITHABORT OFF 
GO
ALTER DATABASE [ShopCar] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ShopCar] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ShopCar] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ShopCar] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ShopCar] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ShopCar] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ShopCar] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ShopCar] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ShopCar] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ShopCar] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ShopCar] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ShopCar] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ShopCar] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ShopCar] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ShopCar] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ShopCar] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ShopCar] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ShopCar] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ShopCar] SET  MULTI_USER 
GO
ALTER DATABASE [ShopCar] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ShopCar] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ShopCar] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ShopCar] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [ShopCar] SET DELAYED_DURABILITY = DISABLED 
GO
USE [ShopCar]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 1/30/2021 2:03:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[account] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[telephone] [nvarchar](50) NULL,
	[dob] [nvarchar](50) NULL,
	[name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Brand]    Script Date: 1/30/2021 2:03:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brand](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NULL,
	[status_id] [int] NULL,
 CONSTRAINT [PK_Brand] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Customer]    Script Date: 1/30/2021 2:03:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NULL,
	[telephone] [nchar](10) NULL,
	[email] [nchar](100) NULL,
	[address] [nvarchar](1000) NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Order]    Script Date: 1/30/2021 2:03:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[customer_id] [int] NULL,
	[create_date] [date] NULL CONSTRAINT [DF_Order_create_date]  DEFAULT (getdate()),
	[total_price] [float] NULL,
	[status_id] [int] NULL,
	[note] [nvarchar](500) NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Order_detail]    Script Date: 1/30/2021 2:03:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_detail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NULL,
	[product_id] [int] NULL,
	[product_price] [float] NULL,
	[product_name] [nvarchar](200) NULL,
	[amount] [int] NULL,
	[total_price] [float] NULL,
 CONSTRAINT [PK_Order_detail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Products]    Script Date: 1/30/2021 2:03:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nchar](100) NULL,
	[images] [nchar](100) NULL,
	[price] [float] NULL,
	[quantity] [int] NULL,
	[type_id] [int] NULL,
	[brand_id] [int] NULL,
	[description] [nchar](500) NULL,
	[status_id] [int] NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Status]    Script Date: 1/30/2021 2:03:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Status_order]    Script Date: 1/30/2021 2:03:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status_order](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[status] [nvarchar](50) NULL,
 CONSTRAINT [PK_Status_order] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Type]    Script Date: 1/30/2021 2:03:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Type](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nchar](100) NULL,
	[statusid] [int] NULL,
	[icon] [nchar](100) NULL,
 CONSTRAINT [PK_Type] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([id], [account], [password], [email], [telephone], [dob], [name]) VALUES (65, N'yolo', N'1', N'hello@gmail.com', N'10209852934', N'2020-10-21', N'Shsehgb')
INSERT [dbo].[Account] ([id], [account], [password], [email], [telephone], [dob], [name]) VALUES (67, N'admin', N'123', N'sdtla0911114819@gmail.com', N'0383460821', N'2000-07-10', N'Thanh')
INSERT [dbo].[Account] ([id], [account], [password], [email], [telephone], [dob], [name]) VALUES (69, N'truonghu', N'12', N'hello@gmail.com', NULL, NULL, N'ANHTRUONG1209')
INSERT [dbo].[Account] ([id], [account], [password], [email], [telephone], [dob], [name]) VALUES (70, N'yolo2', N'1234', N'sdtla0911114819@gmail.com', NULL, NULL, N'truonghu')
INSERT [dbo].[Account] ([id], [account], [password], [email], [telephone], [dob], [name]) VALUES (72, N'trung', N'1', N'trung@dz.com', NULL, NULL, N'Pham Nam Trung ')
INSERT [dbo].[Account] ([id], [account], [password], [email], [telephone], [dob], [name]) VALUES (81, NULL, NULL, N'', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Account] OFF
SET IDENTITY_INSERT [dbo].[Brand] ON 

INSERT [dbo].[Brand] ([id], [name], [status_id]) VALUES (1, N'AMG', 1)
INSERT [dbo].[Brand] ([id], [name], [status_id]) VALUES (2, N'MAYBACH', 1)
INSERT [dbo].[Brand] ([id], [name], [status_id]) VALUES (3, N'NEW', 1)
SET IDENTITY_INSERT [dbo].[Brand] OFF
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([id], [name], [telephone], [email], [address]) VALUES (1, N'Anh Truong', N'0832206397', N'sdtla091111@gamil.com                                                                               ', N'Hai phong')
INSERT [dbo].[Customer] ([id], [name], [telephone], [email], [address]) VALUES (2, N'Anh Trường', N'0832206397', N'hello@gmail.com                                                                                     ', N'Hà Nội')
SET IDENTITY_INSERT [dbo].[Customer] OFF
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([id], [customer_id], [create_date], [total_price], [status_id], [note]) VALUES (1, 1, CAST(N'2020-10-28' AS Date), 8227000000, 1, N'Hang xin')
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[Order_detail] ON 

INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [product_price], [product_name], [amount], [total_price]) VALUES (1, 1, 1, 3069000000, N'GLCCoupe', 1, 3069000000)
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [product_price], [product_name], [amount], [total_price]) VALUES (2, 1, 2, 2579000000, N'V-class', 2, 5158000000)
SET IDENTITY_INSERT [dbo].[Order_detail] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([id], [name], [images], [price], [quantity], [type_id], [brand_id], [description], [status_id]) VALUES (1, N'GLE-SUV                                                                                             ', N'GLASUV.png                                                                                          ', 4369000000, 4, 2, 3, N'Nổi bật tinh thần năng động.
Một thiết kế hoàn hảo để di chuyển trong cả đô thị lẫn trên địa hình.

Kết hợp hoàn hảo giữa ngoại hình mạnh mẽ năng động và sự sang trọng theo một cách rất riêng, chiếc GLA đáp ứng được nhu cầu đi lại hằng ngày trong phố và cả cho những chuyến hành trình xa.                                                                                                                                                                                                                 ', 1)
INSERT [dbo].[Products] ([id], [name], [images], [price], [quantity], [type_id], [brand_id], [description], [status_id]) VALUES (2, N'V-class                                                                                             ', N'V-class.png                                                                                         ', 2579000000, 2, 4, 1, N'Điểm nổi bật đã chọn:

Hệ thống âm thanh nổi Burmester®
Hệ thống đèn trang trí nội thất
Hệ thống hỗ trợ đậu xe chủ động có camera 360°
Hệ thống điều hòa tự động THERMOTRONIC
Touchpad điều khiển cảm ứng dạng thiết kế mới trên bệ trung tâm                                                                                                                                                                                                                                                                 ', 1)
INSERT [dbo].[Products] ([id], [name], [images], [price], [quantity], [type_id], [brand_id], [description], [status_id]) VALUES (3, N'C-class                                                                                             ', N'C-class.png                                                                                         ', 1399000000, 2, 1, 2, N'Trang bị tiện nghi nổi bật:

Hệ thống âm thanh nổi Burmester® (C 300 AMG, C 200 Exclusive)
Hệ thống khoá/ mở xe thông minh và khởi động bằng nút bấm KEYLESS-GO (C 300 AMG)
Chức năng khởi động nút bấm KEYLESS-START (C 180, C 200 Exclusive)
Chức năng kết nối Apple Carplay và Android Auto
Đèn viền nội thất 64 màu (C 200 Exclusive, C 300 AMG)                                                                                                                                                          ', 1)
INSERT [dbo].[Products] ([id], [name], [images], [price], [quantity], [type_id], [brand_id], [description], [status_id]) VALUES (4, N'E-class                                                                                             ', N'E-class.png                                                                                         ', 2050000000, 2, 1, 1, N'Vẻ ngoài đậm phong cách.
Xe E-Class Saloon là hiện thân của phong cách hiện đại và chất thể thao sành điệu – và với sự mượt mà đáng kinh ngạc. Mỗi dòng trang thiết bị tuân theo nguyên tắc gợi cảm thấy rõ. Ngoài những trang bị tiêu chuẩn, các dòng trang thiết bị và lựa chọn về vật liệu, màu sắc đa dạng đáp ứng nhu cầu cá nhân của bạn.                                                                                                                                                            ', 1)
INSERT [dbo].[Products] ([id], [name], [images], [price], [quantity], [type_id], [brand_id], [description], [status_id]) VALUES (6, N'S-class                                                                                             ', N'S-class.png                                                                                         ', 4229000000, 4, 1, 1, N'Chương trình lái xe DYNAMIC SELECT AIRMATIC MAGIC BODY CONTROL PRE-SAFE® Impulse Màn hiển thị Head-up-Display Đèn pha MULTIBEAM LED với tính năng chiếu xa ULTRA RANGE                                                                                                                                                                                                                                                                                                                                              ', 2)
SET IDENTITY_INSERT [dbo].[Products] OFF
SET IDENTITY_INSERT [dbo].[Status] ON 

INSERT [dbo].[Status] ([id], [name]) VALUES (1, N'Đang kinh doanh')
INSERT [dbo].[Status] ([id], [name]) VALUES (2, N'Ngừng kinh doanh')
INSERT [dbo].[Status] ([id], [name]) VALUES (3, N'Đang giảm giá')
SET IDENTITY_INSERT [dbo].[Status] OFF
SET IDENTITY_INSERT [dbo].[Status_order] ON 

INSERT [dbo].[Status_order] ([id], [status]) VALUES (1, N'Chờ xác nhận')
INSERT [dbo].[Status_order] ([id], [status]) VALUES (2, N'Đã xác nhận')
INSERT [dbo].[Status_order] ([id], [status]) VALUES (3, N'Đang xử lý')
INSERT [dbo].[Status_order] ([id], [status]) VALUES (4, N'Đang vận chuyển')
INSERT [dbo].[Status_order] ([id], [status]) VALUES (5, N'Thành công')
INSERT [dbo].[Status_order] ([id], [status]) VALUES (6, N'Thất bại')
INSERT [dbo].[Status_order] ([id], [status]) VALUES (7, N'Đã hủy')
SET IDENTITY_INSERT [dbo].[Status_order] OFF
SET IDENTITY_INSERT [dbo].[Type] ON 

INSERT [dbo].[Type] ([id], [name], [statusid], [icon]) VALUES (1, N'Sedans                                                                                              ', 1, N'sedan.png                                                                                           ')
INSERT [dbo].[Type] ([id], [name], [statusid], [icon]) VALUES (2, N'Xe địa hình / SUV                                                                                   ', 1, N'suv.png                                                                                             ')
INSERT [dbo].[Type] ([id], [name], [statusid], [icon]) VALUES (3, N'Xe Coupe                                                                                            ', 1, N'coupe.png                                                                                           ')
INSERT [dbo].[Type] ([id], [name], [statusid], [icon]) VALUES (4, N'Xe Đa Dụng                                                                                          ', 1, N'dadung.png                                                                                          ')
SET IDENTITY_INSERT [dbo].[Type] OFF
USE [master]
GO
ALTER DATABASE [ShopCar] SET  READ_WRITE 
GO
