USE [master]
GO
/****** Object:  Database [QUANLYKHOHANG]    Script Date: 9/4/2019 9:57:56 AM ******/
CREATE DATABASE [QUANLYKHOHANG]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QUANLYKHOHANG', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\QUANLYKHOHANG.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QUANLYKHOHANG_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\QUANLYKHOHANG_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QUANLYKHOHANG] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QUANLYKHOHANG].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QUANLYKHOHANG] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QUANLYKHOHANG] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QUANLYKHOHANG] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QUANLYKHOHANG] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QUANLYKHOHANG] SET ARITHABORT OFF 
GO
ALTER DATABASE [QUANLYKHOHANG] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QUANLYKHOHANG] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [QUANLYKHOHANG] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QUANLYKHOHANG] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QUANLYKHOHANG] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QUANLYKHOHANG] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QUANLYKHOHANG] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QUANLYKHOHANG] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QUANLYKHOHANG] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QUANLYKHOHANG] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QUANLYKHOHANG] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QUANLYKHOHANG] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QUANLYKHOHANG] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QUANLYKHOHANG] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QUANLYKHOHANG] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QUANLYKHOHANG] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QUANLYKHOHANG] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QUANLYKHOHANG] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QUANLYKHOHANG] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QUANLYKHOHANG] SET  MULTI_USER 
GO
ALTER DATABASE [QUANLYKHOHANG] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QUANLYKHOHANG] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QUANLYKHOHANG] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QUANLYKHOHANG] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [QUANLYKHOHANG]
GO
/****** Object:  Table [dbo].[DonViTinh]    Script Date: 9/4/2019 9:57:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonViTinh](
	[MaDVT] [int] IDENTITY(1,1) NOT NULL,
	[TenDonVi] [nvarchar](max) NULL,
 CONSTRAINT [PK_DonViTinh] PRIMARY KEY CLUSTERED 
(
	[MaDVT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 9/4/2019 9:57:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[TenKH] [nvarchar](50) NULL,
	[Diachi] [nvarchar](max) NULL,
	[DienThoai] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 9/4/2019 9:57:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[MaND] [int] IDENTITY(1,1) NOT NULL,
	[HoTenND] [nvarchar](max) NULL,
	[TaiKhoan] [nvarchar](50) NULL,
	[MatKhau] [nvarchar](max) NULL,
	[MaTK] [int] NOT NULL,
 CONSTRAINT [PK_NguoiDung] PRIMARY KEY CLUSTERED 
(
	[MaND] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 9/4/2019 9:57:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNCC] [int] IDENTITY(1,1) NOT NULL,
	[TenNCC] [nvarchar](max) NULL,
	[DiaChi] [nvarchar](max) NULL,
	[DienThoai] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhaCungCap] PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhieuNhap]    Script Date: 9/4/2019 9:57:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhap](
	[MaPN] [int] IDENTITY(1,1) NOT NULL,
	[NgayNhap] [datetime] NULL,
 CONSTRAINT [PK_PhieuNhap] PRIMARY KEY CLUSTERED 
(
	[MaPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhieuXuat]    Script Date: 9/4/2019 9:57:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuXuat](
	[MaPX] [int] IDENTITY(1,1) NOT NULL,
	[NgayXuat] [datetime] NULL,
 CONSTRAINT [PK_PhieuXuat] PRIMARY KEY CLUSTERED 
(
	[MaPX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ThongTinPN]    Script Date: 9/4/2019 9:57:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongTinPN](
	[MaTTPN] [int] IDENTITY(1,1) NOT NULL,
	[MaMH] [int] NULL,
	[MaPN] [int] NULL,
	[SoLuong] [int] NULL,
	[GiaNhapVao] [float] NULL,
	[GiaBanRa] [float] NULL,
	[TinhTrangHang] [nvarchar](max) NULL,
 CONSTRAINT [PK_ThongTinPN] PRIMARY KEY CLUSTERED 
(
	[MaTTPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ThongTinPX]    Script Date: 9/4/2019 9:57:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongTinPX](
	[MaTTPX] [int] IDENTITY(1,1) NOT NULL,
	[MaPX] [int] NULL,
	[MaMH] [int] NULL,
	[MaTTPN] [int] NULL,
	[MaKH] [int] NULL,
	[SoLuong] [int] NULL,
	[TinhTrangHang] [nvarchar](max) NULL,
 CONSTRAINT [PK_ThongTinPX] PRIMARY KEY CLUSTERED 
(
	[MaTTPX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TKNguoiDung]    Script Date: 9/4/2019 9:57:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TKNguoiDung](
	[MaTK] [int] IDENTITY(1,1) NOT NULL,
	[HoTenND] [nvarchar](max) NULL,
 CONSTRAINT [PK_TKNguoiDung] PRIMARY KEY CLUSTERED 
(
	[MaTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VatTu]    Script Date: 9/4/2019 9:57:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VatTu](
	[MaMH] [int] IDENTITY(1,1) NOT NULL,
	[TenMH] [nvarchar](max) NULL,
	[MaDVT] [int] NULL,
	[MaNCC] [int] NULL,
	[QRCode] [nvarchar](max) NULL,
 CONSTRAINT [PK_VatTu] PRIMARY KEY CLUSTERED 
(
	[MaMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[DonViTinh] ON 

INSERT [dbo].[DonViTinh] ([MaDVT], [TenDonVi]) VALUES (1, N'Kg')
INSERT [dbo].[DonViTinh] ([MaDVT], [TenDonVi]) VALUES (2, N'Thùng')
INSERT [dbo].[DonViTinh] ([MaDVT], [TenDonVi]) VALUES (3, N'Cái')
SET IDENTITY_INSERT [dbo].[DonViTinh] OFF
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [Diachi], [DienThoai], [Email]) VALUES (1, N'Nguyễn Hồng Lĩnh', N'42 nguyễn Kiệm Vinh Nghệ An', N'0945763476', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [Diachi], [DienThoai], [Email]) VALUES (2, N'Trần Đăng Dinh', N'số nhà 22 Nguyễn Chí Thanh Vinh', N'0937478377', NULL)
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
SET IDENTITY_INSERT [dbo].[NguoiDung] ON 

INSERT [dbo].[NguoiDung] ([MaND], [HoTenND], [TaiKhoan], [MatKhau], [MaTK]) VALUES (1, N'Nguyễn Kim Lương', N'admin', N'123456', 1)
INSERT [dbo].[NguoiDung] ([MaND], [HoTenND], [TaiKhoan], [MatKhau], [MaTK]) VALUES (2, N'Nguyễn Văn Minh', N'admin', N'1234567', 2)
INSERT [dbo].[NguoiDung] ([MaND], [HoTenND], [TaiKhoan], [MatKhau], [MaTK]) VALUES (3, N'Trịnh Xuân Khoa', N'admin', N'12345678', 3)
SET IDENTITY_INSERT [dbo].[NguoiDung] OFF
SET IDENTITY_INSERT [dbo].[NhaCungCap] ON 

INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai], [Email]) VALUES (1, N'Hoàng Mai', N'45 Lí Thường Kiệt', N'09688577747', N'hoangmai7687@gmail.com')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai], [Email]) VALUES (2, N'Hảo Hảo', N'KCN Nam Cấm TPVinh Nghệ AN', N'0304059995', NULL)
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai], [Email]) VALUES (3, N'Tường An', N'45/2 Ngô Quyền Quận 4 TpHCM', N'09799959954', NULL)
SET IDENTITY_INSERT [dbo].[NhaCungCap] OFF
SET IDENTITY_INSERT [dbo].[PhieuNhap] ON 

INSERT [dbo].[PhieuNhap] ([MaPN], [NgayNhap]) VALUES (1, CAST(N'2019-04-22 00:00:00.000' AS DateTime))
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayNhap]) VALUES (2, CAST(N'2019-02-04 03:22:00.000' AS DateTime))
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayNhap]) VALUES (3, CAST(N'2019-05-06 10:22:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[PhieuNhap] OFF
SET IDENTITY_INSERT [dbo].[PhieuXuat] ON 

INSERT [dbo].[PhieuXuat] ([MaPX], [NgayXuat]) VALUES (1, CAST(N'2019-07-08 04:30:00.000' AS DateTime))
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayXuat]) VALUES (2, CAST(N'2019-12-09 15:04:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[PhieuXuat] OFF
SET IDENTITY_INSERT [dbo].[ThongTinPN] ON 

INSERT [dbo].[ThongTinPN] ([MaTTPN], [MaMH], [MaPN], [SoLuong], [GiaNhapVao], [GiaBanRa], [TinhTrangHang]) VALUES (1, 1, 2, 23, 2300, 3000, N'tốt')
INSERT [dbo].[ThongTinPN] ([MaTTPN], [MaMH], [MaPN], [SoLuong], [GiaNhapVao], [GiaBanRa], [TinhTrangHang]) VALUES (3, 2, 2, 47, 7000, 7600, NULL)
SET IDENTITY_INSERT [dbo].[ThongTinPN] OFF
SET IDENTITY_INSERT [dbo].[ThongTinPX] ON 

INSERT [dbo].[ThongTinPX] ([MaTTPX], [MaPX], [MaMH], [MaTTPN], [MaKH], [SoLuong], [TinhTrangHang]) VALUES (1, 1, 2, 2, 1, 12, N'tốt')
INSERT [dbo].[ThongTinPX] ([MaTTPX], [MaPX], [MaMH], [MaTTPN], [MaKH], [SoLuong], [TinhTrangHang]) VALUES (2, 2, 1, 1, 2, 10, NULL)
SET IDENTITY_INSERT [dbo].[ThongTinPX] OFF
SET IDENTITY_INSERT [dbo].[TKNguoiDung] ON 

INSERT [dbo].[TKNguoiDung] ([MaTK], [HoTenND]) VALUES (1, N'Nguyễn Kim Lương')
INSERT [dbo].[TKNguoiDung] ([MaTK], [HoTenND]) VALUES (2, N'Nguyễn Văn Minh')
INSERT [dbo].[TKNguoiDung] ([MaTK], [HoTenND]) VALUES (3, N'Trịnh Xuân Khoa')
SET IDENTITY_INSERT [dbo].[TKNguoiDung] OFF
SET IDENTITY_INSERT [dbo].[VatTu] ON 

INSERT [dbo].[VatTu] ([MaMH], [TenMH], [MaDVT], [MaNCC], [QRCode]) VALUES (1, N'Dầu gội đầu', 2, 1, NULL)
INSERT [dbo].[VatTu] ([MaMH], [TenMH], [MaDVT], [MaNCC], [QRCode]) VALUES (2, N'Gạo nếp', 1, 2, NULL)
SET IDENTITY_INSERT [dbo].[VatTu] OFF
ALTER TABLE [dbo].[NguoiDung]  WITH CHECK ADD  CONSTRAINT [FK_NguoiDung_TKNguoiDung] FOREIGN KEY([MaTK])
REFERENCES [dbo].[TKNguoiDung] ([MaTK])
GO
ALTER TABLE [dbo].[NguoiDung] CHECK CONSTRAINT [FK_NguoiDung_TKNguoiDung]
GO
ALTER TABLE [dbo].[ThongTinPN]  WITH CHECK ADD  CONSTRAINT [FK_ThongTinPN_PhieuNhap] FOREIGN KEY([MaPN])
REFERENCES [dbo].[PhieuNhap] ([MaPN])
GO
ALTER TABLE [dbo].[ThongTinPN] CHECK CONSTRAINT [FK_ThongTinPN_PhieuNhap]
GO
ALTER TABLE [dbo].[ThongTinPN]  WITH CHECK ADD  CONSTRAINT [FK_ThongTinPN_VatTu] FOREIGN KEY([MaMH])
REFERENCES [dbo].[VatTu] ([MaMH])
GO
ALTER TABLE [dbo].[ThongTinPN] CHECK CONSTRAINT [FK_ThongTinPN_VatTu]
GO
ALTER TABLE [dbo].[ThongTinPX]  WITH CHECK ADD  CONSTRAINT [FK_ThongTinPX_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[ThongTinPX] CHECK CONSTRAINT [FK_ThongTinPX_KhachHang]
GO
ALTER TABLE [dbo].[ThongTinPX]  WITH CHECK ADD  CONSTRAINT [FK_ThongTinPX_PhieuXuat] FOREIGN KEY([MaPX])
REFERENCES [dbo].[PhieuXuat] ([MaPX])
GO
ALTER TABLE [dbo].[ThongTinPX] CHECK CONSTRAINT [FK_ThongTinPX_PhieuXuat]
GO
ALTER TABLE [dbo].[ThongTinPX]  WITH CHECK ADD  CONSTRAINT [FK_ThongTinPX_VatTu] FOREIGN KEY([MaMH])
REFERENCES [dbo].[VatTu] ([MaMH])
GO
ALTER TABLE [dbo].[ThongTinPX] CHECK CONSTRAINT [FK_ThongTinPX_VatTu]
GO
ALTER TABLE [dbo].[VatTu]  WITH CHECK ADD  CONSTRAINT [FK_VatTu_DonViTinh] FOREIGN KEY([MaDVT])
REFERENCES [dbo].[DonViTinh] ([MaDVT])
GO
ALTER TABLE [dbo].[VatTu] CHECK CONSTRAINT [FK_VatTu_DonViTinh]
GO
ALTER TABLE [dbo].[VatTu]  WITH CHECK ADD  CONSTRAINT [FK_VatTu_NhaCungCap] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
GO
ALTER TABLE [dbo].[VatTu] CHECK CONSTRAINT [FK_VatTu_NhaCungCap]
GO
USE [master]
GO
ALTER DATABASE [QUANLYKHOHANG] SET  READ_WRITE 
GO
