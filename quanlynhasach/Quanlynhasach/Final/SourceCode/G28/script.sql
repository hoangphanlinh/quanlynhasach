USE [master]
GO
/****** Object:  Database [QuanLyNhaSach1]    Script Date: 1/15/2022 3:00:29 PM ******/
CREATE DATABASE [QuanLyNhaSach1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLyNhaSach1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QuanLyNhaSach1.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QuanLyNhaSach1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QuanLyNhaSach1_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QuanLyNhaSach1] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyNhaSach1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyNhaSach1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyNhaSach1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyNhaSach1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyNhaSach1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyNhaSach1] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyNhaSach1] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QuanLyNhaSach1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLyNhaSach1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyNhaSach1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyNhaSach1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyNhaSach1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyNhaSach1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyNhaSach1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyNhaSach1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyNhaSach1] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QuanLyNhaSach1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyNhaSach1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyNhaSach1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyNhaSach1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyNhaSach1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyNhaSach1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLyNhaSach1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyNhaSach1] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QuanLyNhaSach1] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyNhaSach1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLyNhaSach1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLyNhaSach1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLyNhaSach1] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QuanLyNhaSach1] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QuanLyNhaSach1] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QuanLyNhaSach1] SET QUERY_STORE = OFF
GO
USE [QuanLyNhaSach1]
GO
/****** Object:  Table [dbo].[CHITIETHOADON]    Script Date: 1/15/2022 3:00:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETHOADON](
	[MaHD] [int] NOT NULL,
	[MaSach] [numeric](18, 0) NOT NULL,
	[SoLuong] [numeric](18, 0) NULL,
 CONSTRAINT [pk_CHITIETHOADON] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHITIETPHIEUNHAP]    Script Date: 1/15/2022 3:00:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETPHIEUNHAP](
	[MaPNS] [numeric](18, 0) NOT NULL,
	[MaSach] [numeric](18, 0) NOT NULL,
	[SoLuong] [numeric](18, 0) NULL,
 CONSTRAINT [pk_CHITIETPHIEUNHAP] PRIMARY KEY CLUSTERED 
(
	[MaPNS] ASC,
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOADON]    Script Date: 1/15/2022 3:00:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADON](
	[MaHD] [int] IDENTITY(1,1) NOT NULL,
	[MaNV] [numeric](18, 0) NULL,
	[MaKH] [int] NULL,
	[TongTien] [numeric](18, 0) NULL,
	[ThoiGian] [datetime] NULL,
 CONSTRAINT [pk_HOADON] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 1/15/2022 3:00:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[TenKH] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](255) NULL,
	[DienThoai] [nvarchar](50) NULL,
	[Email] [varchar](50) NULL,
	[TienNo] [numeric](18, 0) NULL,
 CONSTRAINT [pk_KHACHHANG] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 1/15/2022 3:00:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[MaNV] [numeric](18, 0) NOT NULL,
	[TenNV] [nvarchar](50) NULL,
 CONSTRAINT [pk_NHANVIEN] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHIEUGHINO]    Script Date: 1/15/2022 3:00:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUGHINO](
	[MaPGN] [int] IDENTITY(1,1) NOT NULL,
	[MaHD] [int] NULL,
	[SoTienNo] [numeric](18, 0) NULL,
	[ThoiGian] [datetime] NULL,
 CONSTRAINT [pk_PHIEUGHINO] PRIMARY KEY CLUSTERED 
(
	[MaPGN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHIEUNHAPSACH]    Script Date: 1/15/2022 3:00:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUNHAPSACH](
	[MaPNS] [numeric](18, 0) NOT NULL,
	[MaNV] [numeric](18, 0) NULL,
	[ThoiGian] [datetime] NULL,
 CONSTRAINT [pk_PHIEUNHAPSACH] PRIMARY KEY CLUSTERED 
(
	[MaPNS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHIEUTHUTIEN]    Script Date: 1/15/2022 3:00:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUTHUTIEN](
	[MaPTT] [int] IDENTITY(1,1) NOT NULL,
	[MaHD] [int] NULL,
	[SoTienThu] [numeric](18, 0) NULL,
	[ThoiGian] [datetime] NULL,
 CONSTRAINT [pk_PHIEUTHUTIEN] PRIMARY KEY CLUSTERED 
(
	[MaPTT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QUANTRIVIEN]    Script Date: 1/15/2022 3:00:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QUANTRIVIEN](
	[TaiKhoan] [varchar](20) NOT NULL,
	[MatKhau] [varchar](20) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QUYDINH]    Script Date: 1/15/2022 3:00:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QUYDINH](
	[STT] [numeric](18, 0) NOT NULL,
	[NoiDung] [nvarchar](255) NULL,
 CONSTRAINT [pk_QUYDINH] PRIMARY KEY CLUSTERED 
(
	[STT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SACH]    Script Date: 1/15/2022 3:00:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SACH](
	[MaSach] [numeric](18, 0) NOT NULL,
	[TenSach] [nvarchar](50) NULL,
	[TacGia] [nvarchar](100) NULL,
	[TheLoai] [nvarchar](50) NULL,
	[LuongTon] [numeric](18, 0) NULL,
	[DonGia] [numeric](18, 0) NULL,
 CONSTRAINT [pk_SACH] PRIMARY KEY CLUSTERED 
(
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TAIKHOAN]    Script Date: 1/15/2022 3:00:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAIKHOAN](
	[TenTK] [varchar](20) NOT NULL,
	[MatKhau] [varchar](20) NULL,
	[MaNV] [numeric](18, 0) NULL,
 CONSTRAINT [pk_TAIKHOAN] PRIMARY KEY CLUSTERED 
(
	[TenTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSach], [SoLuong]) VALUES (1, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSach], [SoLuong]) VALUES (2, CAST(3 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)))
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSach], [SoLuong]) VALUES (3, CAST(4 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSach], [SoLuong]) VALUES (4, CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)))
GO
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPNS], [MaSach], [SoLuong]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(150 AS Numeric(18, 0)))
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPNS], [MaSach], [SoLuong]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(150 AS Numeric(18, 0)))
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPNS], [MaSach], [SoLuong]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(150 AS Numeric(18, 0)))
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPNS], [MaSach], [SoLuong]) VALUES (CAST(2 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(150 AS Numeric(18, 0)))
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPNS], [MaSach], [SoLuong]) VALUES (CAST(2 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), CAST(160 AS Numeric(18, 0)))
GO
SET IDENTITY_INSERT [dbo].[HOADON] ON 

INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [TongTien], [ThoiGian]) VALUES (1, CAST(1 AS Numeric(18, 0)), 1, CAST(108000 AS Numeric(18, 0)), CAST(N'2021-12-17T10:30:00.000' AS DateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [TongTien], [ThoiGian]) VALUES (2, CAST(1 AS Numeric(18, 0)), NULL, CAST(84000 AS Numeric(18, 0)), CAST(N'2021-12-17T10:45:00.000' AS DateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [TongTien], [ThoiGian]) VALUES (3, CAST(2 AS Numeric(18, 0)), NULL, CAST(45000 AS Numeric(18, 0)), CAST(N'2021-12-18T10:30:00.000' AS DateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [TongTien], [ThoiGian]) VALUES (4, CAST(2 AS Numeric(18, 0)), 2, CAST(108000 AS Numeric(18, 0)), CAST(N'2021-12-18T10:45:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[HOADON] OFF
GO
SET IDENTITY_INSERT [dbo].[KHACHHANG] ON 

INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Email], [TienNo]) VALUES (1, N'Khách hàng a', N'Tp.HCM', N'0923423411', N'', CAST(0 AS Numeric(18, 0)))
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Email], [TienNo]) VALUES (2, N'Khách hàng b', N'Tp.HCM', N'0956561234', N'', CAST(10000 AS Numeric(18, 0)))
SET IDENTITY_INSERT [dbo].[KHACHHANG] OFF
GO
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV]) VALUES (CAST(1 AS Numeric(18, 0)), N'Nhân viên 1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV]) VALUES (CAST(2 AS Numeric(18, 0)), N'Nhân viên 2')
GO
INSERT [dbo].[PHIEUNHAPSACH] ([MaPNS], [MaNV], [ThoiGian]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(N'2021-10-30T19:00:00.000' AS DateTime))
INSERT [dbo].[PHIEUNHAPSACH] ([MaPNS], [MaNV], [ThoiGian]) VALUES (CAST(2 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(N'2021-11-27T19:00:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[PHIEUTHUTIEN] ON 

INSERT [dbo].[PHIEUTHUTIEN] ([MaPTT], [MaHD], [SoTienThu], [ThoiGian]) VALUES (1, 1, CAST(108000 AS Numeric(18, 0)), CAST(N'2021-12-17T10:30:00.000' AS DateTime))
INSERT [dbo].[PHIEUTHUTIEN] ([MaPTT], [MaHD], [SoTienThu], [ThoiGian]) VALUES (2, 2, CAST(84000 AS Numeric(18, 0)), CAST(N'2021-12-17T10:45:00.000' AS DateTime))
INSERT [dbo].[PHIEUTHUTIEN] ([MaPTT], [MaHD], [SoTienThu], [ThoiGian]) VALUES (3, 3, CAST(45000 AS Numeric(18, 0)), CAST(N'2021-12-18T10:30:00.000' AS DateTime))
INSERT [dbo].[PHIEUTHUTIEN] ([MaPTT], [MaHD], [SoTienThu], [ThoiGian]) VALUES (4, 4, CAST(98000 AS Numeric(18, 0)), CAST(N'2021-12-18T10:45:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[PHIEUTHUTIEN] OFF
GO
INSERT [dbo].[QUANTRIVIEN] ([TaiKhoan], [MatKhau]) VALUES (N'admin', N'admin')
GO
INSERT [dbo].[QUYDINH] ([STT], [NoiDung]) VALUES (CAST(1 AS Numeric(18, 0)), N'Số lượng sách nhập mỗi lần tối thiểu là 300. Nhập các đầu sách có lượng tồn ít hơn 300')
INSERT [dbo].[QUYDINH] ([STT], [NoiDung]) VALUES (CAST(2 AS Numeric(18, 0)), N'Chỉ lập hóa đơn khi nợ không quá 20000đ, các đầu sách có lượng tồn sau khi bán tối thiểu là 20')
INSERT [dbo].[QUYDINH] ([STT], [NoiDung]) VALUES (CAST(3 AS Numeric(18, 0)), N'Số tiền thu không vượt quá tiền nợ')
GO
INSERT [dbo].[SACH] ([MaSach], [TenSach], [TacGia], [TheLoai], [LuongTon], [DonGia]) VALUES (CAST(1 AS Numeric(18, 0)), N'Harry Potter và Hòn Đá Phù Thủy', N'J.K Rowling', N'Viễn tưởng', CAST(151 AS Numeric(18, 0)), CAST(108000 AS Numeric(18, 0)))
INSERT [dbo].[SACH] ([MaSach], [TenSach], [TacGia], [TheLoai], [LuongTon], [DonGia]) VALUES (CAST(2 AS Numeric(18, 0)), N'Sherlock Holmes tập 2', N'Conan Doyle', N'Trinh thám', CAST(87 AS Numeric(18, 0)), CAST(85000 AS Numeric(18, 0)))
INSERT [dbo].[SACH] ([MaSach], [TenSach], [TacGia], [TheLoai], [LuongTon], [DonGia]) VALUES (CAST(3 AS Numeric(18, 0)), N'Nhập Môn Lập Trình', N'Trần Đan Thư,Nguyễn Thanh Phương,Đinh Bá Tiến,Trần Minh Triết', N'Giáo trình', CAST(76 AS Numeric(18, 0)), CAST(42000 AS Numeric(18, 0)))
INSERT [dbo].[SACH] ([MaSach], [TenSach], [TacGia], [TheLoai], [LuongTon], [DonGia]) VALUES (CAST(4 AS Numeric(18, 0)), N'Dế Mèn Phiêu Lưu Ký', N'Tô Hoài', N'Sách thiếu nhi', CAST(98 AS Numeric(18, 0)), CAST(45000 AS Numeric(18, 0)))
GO
INSERT [dbo].[TAIKHOAN] ([TenTK], [MatKhau], [MaNV]) VALUES (N'nv1@smilehouse.com', N'12345', CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[TAIKHOAN] ([TenTK], [MatKhau], [MaNV]) VALUES (N'nv2@smilehouse.com', N'12345', CAST(2 AS Numeric(18, 0)))
GO
ALTER TABLE [dbo].[CHITIETHOADON]  WITH CHECK ADD  CONSTRAINT [fk_CHITIETHOADON_HOADON] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HOADON] ([MaHD])
GO
ALTER TABLE [dbo].[CHITIETHOADON] CHECK CONSTRAINT [fk_CHITIETHOADON_HOADON]
GO
ALTER TABLE [dbo].[CHITIETHOADON]  WITH CHECK ADD  CONSTRAINT [fk_CHITIETHOADON_SACH] FOREIGN KEY([MaSach])
REFERENCES [dbo].[SACH] ([MaSach])
GO
ALTER TABLE [dbo].[CHITIETHOADON] CHECK CONSTRAINT [fk_CHITIETHOADON_SACH]
GO
ALTER TABLE [dbo].[CHITIETPHIEUNHAP]  WITH CHECK ADD  CONSTRAINT [fk_CHITIETPHIEUNHAP_PHIEUNHAPSACH] FOREIGN KEY([MaPNS])
REFERENCES [dbo].[PHIEUNHAPSACH] ([MaPNS])
GO
ALTER TABLE [dbo].[CHITIETPHIEUNHAP] CHECK CONSTRAINT [fk_CHITIETPHIEUNHAP_PHIEUNHAPSACH]
GO
ALTER TABLE [dbo].[CHITIETPHIEUNHAP]  WITH CHECK ADD  CONSTRAINT [fk_CHITIETPHIEUNHAP_SACH] FOREIGN KEY([MaSach])
REFERENCES [dbo].[SACH] ([MaSach])
GO
ALTER TABLE [dbo].[CHITIETPHIEUNHAP] CHECK CONSTRAINT [fk_CHITIETPHIEUNHAP_SACH]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [fk_HOADON_KHACHHANG] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KHACHHANG] ([MaKH])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [fk_HOADON_KHACHHANG]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [fk_HOADON_NHANVIEN] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NHANVIEN] ([MaNV])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [fk_HOADON_NHANVIEN]
GO
ALTER TABLE [dbo].[PHIEUGHINO]  WITH CHECK ADD  CONSTRAINT [fk_PHIEUGHINO_HOADON] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HOADON] ([MaHD])
GO
ALTER TABLE [dbo].[PHIEUGHINO] CHECK CONSTRAINT [fk_PHIEUGHINO_HOADON]
GO
ALTER TABLE [dbo].[PHIEUNHAPSACH]  WITH CHECK ADD  CONSTRAINT [fk_PHIEUNHAPSACH_NHANVIEN] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NHANVIEN] ([MaNV])
GO
ALTER TABLE [dbo].[PHIEUNHAPSACH] CHECK CONSTRAINT [fk_PHIEUNHAPSACH_NHANVIEN]
GO
ALTER TABLE [dbo].[PHIEUTHUTIEN]  WITH CHECK ADD  CONSTRAINT [fk_PHIEUTHUTIEN_HOADON] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HOADON] ([MaHD])
GO
ALTER TABLE [dbo].[PHIEUTHUTIEN] CHECK CONSTRAINT [fk_PHIEUTHUTIEN_HOADON]
GO
ALTER TABLE [dbo].[TAIKHOAN]  WITH CHECK ADD  CONSTRAINT [fk_TAIKHOAN_NHANVIEN] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NHANVIEN] ([MaNV])
GO
ALTER TABLE [dbo].[TAIKHOAN] CHECK CONSTRAINT [fk_TAIKHOAN_NHANVIEN]
GO
/****** Object:  StoredProcedure [dbo].[docDSKhachHang]    Script Date: 1/15/2022 3:00:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[docDSKhachHang]
as select * from KHACHHANG
GO
/****** Object:  StoredProcedure [dbo].[docDSTaiKhoanNV]    Script Date: 1/15/2022 3:00:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[docDSTaiKhoanNV]
as select nv.MaNV, nv.TenNV, tk.TenTK, tk.MatKhau  from NHANVIEN as nv,TAIKHOAN as tk where nv.MaNV = tk.MaNV
GO
/****** Object:  StoredProcedure [dbo].[docQuyDinh]    Script Date: 1/15/2022 3:00:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[docQuyDinh]
as select * from QUYDINH
GO
/****** Object:  StoredProcedure [dbo].[p_nhapsach]    Script Date: 1/15/2022 3:00:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[p_nhapsach]
(
	@TenSach nvarchar(50),
	@TacGia nvarchar(50),
	@TheLoai nvarchar(100),
	@SoLuong numeric,
	@DonGia numeric
)
as
begin
	declare @MaPNS numeric = (select max(MaPNS) from PHIEUNHAPSACH) + 1
	declare @ThoiGian datetime = getdate()
	insert into PHIEUNHAPSACH values(@MaPNS,1,@ThoiGian)
	if not exists(select MaSach from SACH where TenSach = @TenSach)
	begin
		declare @MaSach numeric = (select max(MaSach) from SACH) + 1
		insert into SACH values(@MaSach,@TenSach,@TacGia,@TheLoai,@SoLuong,@DonGia)
		insert into CHITIETPHIEUNHAP values(@MaPNS,@MaSach,@SoLuong)
		
	end
	else
	begin
		declare @MaSach_1 numeric = (select MaSach from SACH where TenSach = @TenSach)
		UPDATE SACH SET LuongTon = LuongTon + @SoLuong where MaSach = @MaSach_1
		insert into CHITIETPHIEUNHAP values(@MaPNS,@MaSach_1,@SoLuong)
		
	end
	
end
GO
/****** Object:  StoredProcedure [dbo].[readAllBook]    Script Date: 1/15/2022 3:00:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[readAllBook]
as
begin
	declare @LuongTonnew numeric
	select TenSach, TacGia, TheLoai, SoLuong, LuongTon from Sach, CHITIETPHIEUNHAP where SACH.MaSach=CHITIETPHIEUNHAP.MaSach
end
GO
/****** Object:  StoredProcedure [dbo].[search_book]    Script Date: 1/15/2022 3:00:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[search_book]
(
	@TenSach nvarchar(50)
)
as
begin
	select*from SACH where TenSach = @TenSach
end
GO
/****** Object:  StoredProcedure [dbo].[suaKhachHang]    Script Date: 1/15/2022 3:00:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[suaKhachHang]
(
    @MaKH numeric,
	@TenKH nvarchar(50),
	@DiaChi nvarchar(255),
	@DienThoai nvarchar(50),
	@Email varchar(50)
)
as update KHACHHANG set TenKH = @TenKH, DiaChi = @DiaChi, DienThoai = @DienThoai, Email = @Email where MaKH = @MaKH
GO
/****** Object:  StoredProcedure [dbo].[suaQuyDinh]    Script Date: 1/15/2022 3:00:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[suaQuyDinh]
(
    @STT numeric,
	@NoiDung nvarchar(255)	
)
as update QUYDINH set NoiDung = @NoiDung where STT = @STT
GO
/****** Object:  StoredProcedure [dbo].[suaSach]    Script Date: 1/15/2022 3:00:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[suaSach]
(
	
	@TenSach nvarchar(50),
	@TacGia nvarchar(100),
	@TheLoai nvarchar(50),
	@LuongTon numeric,
	@DonGia numeric,
	@MaSach numeric
)
as 
begin
	update SACH set TenSach = @TenSach, TacGia = @TacGia, TheLoai = @TheLoai, LuongTon= @LuongTon, DonGia=@DonGia where MaSach = @MaSach
end
GO
/****** Object:  StoredProcedure [dbo].[suaTaiKhoanNV]    Script Date: 1/15/2022 3:00:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[suaTaiKhoanNV]
(
    @MaNV numeric,
	@TenNV nvarchar(50),
    @TenTK varchar(20),
    @MatKhau varchar(20)
)
as
begin
	update NHANVIEN set TenNV = @TenNV where MaNV = @MaNV
	update TAIKHOAN set TenTK = @TenTK, MatKhau = @MatKhau where MaNV = @MaNV
end
GO
/****** Object:  StoredProcedure [dbo].[themKhachHang]    Script Date: 1/15/2022 3:00:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[themKhachHang]
(
	@TenKH nvarchar(50),
	@DiaChi nvarchar(255),
	@DienThoai nvarchar(50),
	@Email varchar(50)
)
as 
begin
	insert into KHACHHANG values (@TenKH,@DiaChi,@DienThoai,@Email,0)
end
GO
/****** Object:  StoredProcedure [dbo].[themPhieuThuTien]    Script Date: 1/15/2022 3:00:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[themPhieuThuTien]
(
	@MaHD numeric,
	@SoTienThu numeric
)
as
begin
	declare @ThoiGian datetime = getdate()
	declare @TienNoHT numeric = (select TienNo from KHACHHANG as kh, HOADON as hd  where kh.MaKH = hd.MaKH and MaHD = @MaHD)
	update KHACHHANG set TienNo = @TienNoHT - @SoTienThu where MaKH = (select MaKH from HOADON where MaHD = @MaHD)
	insert into PHIEUTHUTIEN values(@MaHD, @SoTienThu, @ThoiGian)
end
GO
/****** Object:  StoredProcedure [dbo].[themQuyDinh]    Script Date: 1/15/2022 3:00:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[themQuyDinh]
(
	@NoiDung nvarchar(255)
)
as 
begin
	declare @STT numeric = (select max(STT) from QUYDINH) + 1
	insert into QUYDINH values (@STT,@NoiDung)
end
GO
/****** Object:  StoredProcedure [dbo].[themSach]    Script Date: 1/15/2022 3:00:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[themSach]
(
	@TenSach nvarchar(50),
	@TacGia nvarchar(100),
	@TheLoai nvarchar(50),
	@LuongTon numeric,
	@DonGia numeric
)
as
begin
	declare @MaSach numeric = (select max(MaSach) from SACH) + 1
	if exists(select * from SACH where TenSach = @TenSach and TacGia = @TacGia)
	begin
		raiserror(N'Sách đã tồn tại',16,1);
	end
	else
	begin
	insert into SACH values (@MaSach,@TenSach,@TacGia,@TheLoai,@LuongTon,@DonGia)
	end
end
GO
/****** Object:  StoredProcedure [dbo].[themTaiKhoanNV]    Script Date: 1/15/2022 3:00:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[themTaiKhoanNV]
(
	@TenNV nvarchar(50),
    @TenTK varchar(20),
    @MatKhau varchar(20)
)
as
begin
	declare @MaNV numeric = (select max(MaNV) from NHANVIEN) + 1
	insert into NHANVIEN values(@MaNV, @TenNV)
	insert into TAIKHOAN values(@TenTK, @MatKhau, @MaNV)
end
GO
/****** Object:  StoredProcedure [dbo].[xoaKhachHang]    Script Date: 1/15/2022 3:00:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[xoaKhachHang]
(
    @MaKH numeric
)
as
begin
    update HOADON set MaKH = null where MaKH = @MaKH
	delete from KHACHHANG where MaKH = @MaKH
end
GO
/****** Object:  StoredProcedure [dbo].[xoaQuyDinh]    Script Date: 1/15/2022 3:00:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[xoaQuyDinh]
(
    @STT numeric
)
as
begin
	delete from QUYDINH where STT = @STT
end
GO
/****** Object:  StoredProcedure [dbo].[xoaSach]    Script Date: 1/15/2022 3:00:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[xoaSach]
(
    @MaSach numeric
)
as
begin

	delete from SACH where MaSach = @MaSach
end
GO
/****** Object:  StoredProcedure [dbo].[xoaTaiKhoanNV]    Script Date: 1/15/2022 3:00:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[xoaTaiKhoanNV]
(
	@MaNV numeric
)
as
begin
	update HOADON set MaNV = null where MaNV = @MaNV
	update PHIEUNHAPSACH set MaNV = null where MaNV = @MaNV
	delete from TAIKHOAN where MaNV = @MaNV
	delete from NHANVIEN where MaNV = @MaNV
end
GO
USE [master]
GO
ALTER DATABASE [QuanLyNhaSach1] SET  READ_WRITE 
GO
