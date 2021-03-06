USE [master]
GO
/****** Object:  Database [QLQBT]    Script Date: 1/8/2021 11:09:45 AM ******/
CREATE DATABASE [QLQBT]
 CONTAINMENT = NONE
GO
ALTER DATABASE [QLQBT] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLQBT].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLQBT] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLQBT] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLQBT] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLQBT] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLQBT] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLQBT] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QLQBT] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLQBT] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLQBT] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLQBT] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLQBT] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLQBT] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLQBT] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLQBT] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLQBT] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QLQBT] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLQBT] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLQBT] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLQBT] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLQBT] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLQBT] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLQBT] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLQBT] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLQBT] SET  MULTI_USER 
GO
ALTER DATABASE [QLQBT] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLQBT] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLQBT] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLQBT] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLQBT] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLQBT] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QLQBT] SET QUERY_STORE = OFF
GO
USE [QLQBT]
GO
/****** Object:  Table [dbo].[CT_HoaDon]    Script Date: 1/8/2021 11:09:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_HoaDon](
	[maHD] [varchar](12) NOT NULL,
	[maThuoc] [varchar](11) NOT NULL,
	[soLuong] [int] NULL,
	[gia] [float] NULL,
	[donViTinh] [nvarchar](10) NULL,
	[vAT] [float] NULL,
 CONSTRAINT [PK_CT_HoaDon] PRIMARY KEY CLUSTERED 
(
	[maHD] ASC,
	[maThuoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 1/8/2021 11:09:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[maHD] [varchar](12) NOT NULL,
	[ngayLapHD] [datetime] NULL,
	[loaiHD] [bit] NULL,
	[ghiChu] [nvarchar](100) NULL,
	[maNV] [varchar](6) NULL,
	[maKH] [varchar](12) NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[maHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 1/8/2021 11:09:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[maKH] [varchar](12) NOT NULL,
	[tenKH] [nvarchar](30) NULL,
	[sdtKH] [varchar](10) NULL,
	[diaChi] [nvarchar](50) NULL,
	[email] [varchar](30) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[maKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoThuoc]    Script Date: 1/8/2021 11:09:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoThuoc](
	[maLoThuoc] [varchar](12) NOT NULL,
	[maThuoc] [varchar](11) NULL,
	[maNCC] [varchar](6) NULL,
	[xuatXu] [nvarchar](20) NULL,
	[ngaySanXuat] [datetime] NULL,
	[hanSuDung] [datetime] NULL,
	[donViTinh] [nvarchar](10) NULL,
	[donViQuyDoi] [nvarchar](10) NULL,
	[tyLeQuyDoi] [int] NULL,
	[giaBanChan] [float] NULL,
	[giaBanLe] [float] NULL,
	[lieuLuongDung] [nvarchar](50) NULL,
	[moTa] [nvarchar](50) NULL,
	[VAT] [float] NULL,
	[soLuongTon] [int] NULL,
 CONSTRAINT [PK_LoThuoc] PRIMARY KEY CLUSTERED 
(
	[maLoThuoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 1/8/2021 11:09:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[maNCC] [varchar](6) NOT NULL,
	[tenNCC] [nvarchar](30) NULL,
	[diaChi] [nvarchar](30) NULL,
	[sdt] [varchar](10) NULL,
	[email] [varchar](30) NULL,
	[trangThai] [bit] NULL,
 CONSTRAINT [PK_NhaCungCap] PRIMARY KEY CLUSTERED 
(
	[maNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 1/8/2021 11:09:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[maNV] [varchar](6) NOT NULL,
	[tenNV] [nvarchar](30) NULL,
	[sdtNV] [varchar](10) NULL,
	[email] [varchar](30) NULL,
	[diaChi] [nvarchar](50) NULL,
	[cMND] [varchar](20) NULL,
	[matKhau] [varchar](20) NULL,
	[trangThai] [bit] NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[maNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhomThuoc]    Script Date: 1/8/2021 11:09:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhomThuoc](
	[maNhomThuoc] [varchar](5) NOT NULL,
	[tenNhomThuoc] [nvarchar](20) NULL,
 CONSTRAINT [PK_NhomThuoc] PRIMARY KEY CLUSTERED 
(
	[maNhomThuoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Thuoc]    Script Date: 1/8/2021 11:09:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Thuoc](
	[maThuoc] [varchar](11) NOT NULL,
	[tenThuoc] [nvarchar](20) NULL,
	[maNhomThuoc] [varchar](5) NULL,
	[loaiThuoc] [bit] NULL,
	[hoatChatChinh] [nvarchar](20) NULL,
	[trangThai] [bit] NULL,
 CONSTRAINT [PK_Thuoc] PRIMARY KEY CLUSTERED 
(
	[maThuoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CT_HoaDon] ([maHD], [maThuoc], [soLuong], [gia], [donViTinh], [vAT]) VALUES (N'HD0000000001', N'T0000000007', 1, 10000, N'Vĩ', 0.5)
INSERT [dbo].[CT_HoaDon] ([maHD], [maThuoc], [soLuong], [gia], [donViTinh], [vAT]) VALUES (N'HD0000000001', N'T0000000016', 1, 10000, N'Gói', 0.5)
INSERT [dbo].[CT_HoaDon] ([maHD], [maThuoc], [soLuong], [gia], [donViTinh], [vAT]) VALUES (N'HD0000000001', N'T0000000020', 2, 5000, N'Típ', 1)
INSERT [dbo].[CT_HoaDon] ([maHD], [maThuoc], [soLuong], [gia], [donViTinh], [vAT]) VALUES (N'HD0000000001', N'T0000000075', 2, 5000, N'Viên', 0.5)
INSERT [dbo].[CT_HoaDon] ([maHD], [maThuoc], [soLuong], [gia], [donViTinh], [vAT]) VALUES (N'HD0000000001', N'T0000000076', 1, 10000, N'Gói', 1.5)
INSERT [dbo].[CT_HoaDon] ([maHD], [maThuoc], [soLuong], [gia], [donViTinh], [vAT]) VALUES (N'HD0000000002', N'T0000000004', 1, 5000, N'Gói', 1.5)
INSERT [dbo].[CT_HoaDon] ([maHD], [maThuoc], [soLuong], [gia], [donViTinh], [vAT]) VALUES (N'HD0000000002', N'T0000000007', 1, 10000, N'Vĩ', 0.5)
INSERT [dbo].[CT_HoaDon] ([maHD], [maThuoc], [soLuong], [gia], [donViTinh], [vAT]) VALUES (N'HD0000000003', N'T0000000001', 1, 10000, N'Viên', 1)
INSERT [dbo].[CT_HoaDon] ([maHD], [maThuoc], [soLuong], [gia], [donViTinh], [vAT]) VALUES (N'HD0000000004', N'T0000000022', 1, 10000, N'Viên', 1)
INSERT [dbo].[CT_HoaDon] ([maHD], [maThuoc], [soLuong], [gia], [donViTinh], [vAT]) VALUES (N'HD0000000005', N'T0000000041', 1, 10000, N'Vĩ', 1)
INSERT [dbo].[CT_HoaDon] ([maHD], [maThuoc], [soLuong], [gia], [donViTinh], [vAT]) VALUES (N'HD0000000006', N'T0000000064', 1, 5000, N'Típ', 1.5)
INSERT [dbo].[CT_HoaDon] ([maHD], [maThuoc], [soLuong], [gia], [donViTinh], [vAT]) VALUES (N'HD0000000007', N'T0000000078', 1, 5000, N'Viên', 0.5)
INSERT [dbo].[CT_HoaDon] ([maHD], [maThuoc], [soLuong], [gia], [donViTinh], [vAT]) VALUES (N'HD0000000008', N'T0000000001', 1, 10000, N'Viên', 1)
INSERT [dbo].[CT_HoaDon] ([maHD], [maThuoc], [soLuong], [gia], [donViTinh], [vAT]) VALUES (N'HD0000000009', N'T0000000022', 1, 10000, N'Viên', 1)
INSERT [dbo].[CT_HoaDon] ([maHD], [maThuoc], [soLuong], [gia], [donViTinh], [vAT]) VALUES (N'HD0000000010', N'T0000000035', 1, 5000, N'Viên', 1)
INSERT [dbo].[CT_HoaDon] ([maHD], [maThuoc], [soLuong], [gia], [donViTinh], [vAT]) VALUES (N'HD0000000011', N'T0000000031', 1, 5000, N'Viên', 0)
INSERT [dbo].[CT_HoaDon] ([maHD], [maThuoc], [soLuong], [gia], [donViTinh], [vAT]) VALUES (N'HD0000000012', N'T0000000057', 1, 10000, N'Típ', 1)
INSERT [dbo].[CT_HoaDon] ([maHD], [maThuoc], [soLuong], [gia], [donViTinh], [vAT]) VALUES (N'HD0000000013', N'T0000000056', 1, 5000, N'Gói', 1.5)
INSERT [dbo].[CT_HoaDon] ([maHD], [maThuoc], [soLuong], [gia], [donViTinh], [vAT]) VALUES (N'HD0000000013', N'T0000000057', 1, 10000, N'Típ', 1)
INSERT [dbo].[CT_HoaDon] ([maHD], [maThuoc], [soLuong], [gia], [donViTinh], [vAT]) VALUES (N'HD0000000014', N'T0000000079', 1, 10000, N'Gói', 1.5)
INSERT [dbo].[CT_HoaDon] ([maHD], [maThuoc], [soLuong], [gia], [donViTinh], [vAT]) VALUES (N'HD0000000015', N'T0000000087', 1, 10000, N'Gói', 0.5)
INSERT [dbo].[CT_HoaDon] ([maHD], [maThuoc], [soLuong], [gia], [donViTinh], [vAT]) VALUES (N'HD0000000016', N'T0000000089', 1, 10000, N'Vĩ', 0.5)
INSERT [dbo].[CT_HoaDon] ([maHD], [maThuoc], [soLuong], [gia], [donViTinh], [vAT]) VALUES (N'HD0000000017', N'T0000000080', 1, 5000, N'Gói', 0)
INSERT [dbo].[CT_HoaDon] ([maHD], [maThuoc], [soLuong], [gia], [donViTinh], [vAT]) VALUES (N'HD0000000018', N'T0000000008', 1, 5000, N'Gói', 1.5)
INSERT [dbo].[CT_HoaDon] ([maHD], [maThuoc], [soLuong], [gia], [donViTinh], [vAT]) VALUES (N'HD0000000019', N'T0000000004', 1, 5000, N'Gói', 1.5)
INSERT [dbo].[CT_HoaDon] ([maHD], [maThuoc], [soLuong], [gia], [donViTinh], [vAT]) VALUES (N'HD0000000019', N'T0000000008', 1, 5000, N'Gói', 1.5)
INSERT [dbo].[CT_HoaDon] ([maHD], [maThuoc], [soLuong], [gia], [donViTinh], [vAT]) VALUES (N'HD0000000019', N'T0000000021', 1, 300000, N'Hộp', 0.5)
INSERT [dbo].[CT_HoaDon] ([maHD], [maThuoc], [soLuong], [gia], [donViTinh], [vAT]) VALUES (N'HD0000000020', N'T0000000045', 2, 5000, N'Típ', 0)
INSERT [dbo].[CT_HoaDon] ([maHD], [maThuoc], [soLuong], [gia], [donViTinh], [vAT]) VALUES (N'HD0000000020', N'T0000000047', 2, 10000, N'Vĩ', 1.5)
INSERT [dbo].[CT_HoaDon] ([maHD], [maThuoc], [soLuong], [gia], [donViTinh], [vAT]) VALUES (N'HD0000000021', N'T0000000059', 1, 5000, N'Vĩ', 1.5)
INSERT [dbo].[CT_HoaDon] ([maHD], [maThuoc], [soLuong], [gia], [donViTinh], [vAT]) VALUES (N'HD0000000021', N'T0000000062', 1, 5000, N'Gói', 0)
INSERT [dbo].[CT_HoaDon] ([maHD], [maThuoc], [soLuong], [gia], [donViTinh], [vAT]) VALUES (N'HD0000000021', N'T0000000066', 1, 10000, N'Vĩ', 1.5)
GO
INSERT [dbo].[HoaDon] ([maHD], [ngayLapHD], [loaiHD], [ghiChu], [maNV], [maKH]) VALUES (N'HD0000000001', CAST(N'2020-12-26T17:18:33.000' AS DateTime), 0, N'', N'NV0002', N'KH0000000007')
INSERT [dbo].[HoaDon] ([maHD], [ngayLapHD], [loaiHD], [ghiChu], [maNV], [maKH]) VALUES (N'HD0000000002', CAST(N'2020-12-26T17:26:26.650' AS DateTime), 1, N'', N'NV0002', N'KH0000000007')
INSERT [dbo].[HoaDon] ([maHD], [ngayLapHD], [loaiHD], [ghiChu], [maNV], [maKH]) VALUES (N'HD0000000003', CAST(N'2020-12-28T16:52:53.480' AS DateTime), 1, N'', N'QL0001', NULL)
INSERT [dbo].[HoaDon] ([maHD], [ngayLapHD], [loaiHD], [ghiChu], [maNV], [maKH]) VALUES (N'HD0000000004', CAST(N'2020-12-28T16:52:53.480' AS DateTime), 1, N'', N'QL0001', NULL)
INSERT [dbo].[HoaDon] ([maHD], [ngayLapHD], [loaiHD], [ghiChu], [maNV], [maKH]) VALUES (N'HD0000000005', CAST(N'2020-12-28T16:52:53.480' AS DateTime), 1, N'', N'QL0001', N'KH0000000007')
INSERT [dbo].[HoaDon] ([maHD], [ngayLapHD], [loaiHD], [ghiChu], [maNV], [maKH]) VALUES (N'HD0000000006', CAST(N'2020-12-28T16:52:53.480' AS DateTime), 0, N'', N'QL0001', N'KH0000000008')
INSERT [dbo].[HoaDon] ([maHD], [ngayLapHD], [loaiHD], [ghiChu], [maNV], [maKH]) VALUES (N'HD0000000007', CAST(N'2020-12-30T14:53:34.063' AS DateTime), 0, N'', N'QL0001', NULL)
INSERT [dbo].[HoaDon] ([maHD], [ngayLapHD], [loaiHD], [ghiChu], [maNV], [maKH]) VALUES (N'HD0000000008', CAST(N'2020-12-30T14:55:26.690' AS DateTime), 1, N'', N'QL0001', NULL)
INSERT [dbo].[HoaDon] ([maHD], [ngayLapHD], [loaiHD], [ghiChu], [maNV], [maKH]) VALUES (N'HD0000000009', CAST(N'2021-01-07T15:18:02.020' AS DateTime), 1, N'', N'QL0001', N'KH0000000008')
INSERT [dbo].[HoaDon] ([maHD], [ngayLapHD], [loaiHD], [ghiChu], [maNV], [maKH]) VALUES (N'HD0000000010', CAST(N'2021-01-07T16:35:17.213' AS DateTime), 0, N'', N'QL0001', NULL)
INSERT [dbo].[HoaDon] ([maHD], [ngayLapHD], [loaiHD], [ghiChu], [maNV], [maKH]) VALUES (N'HD0000000011', CAST(N'2021-01-07T20:16:30.487' AS DateTime), 1, N'', N'QL0001', NULL)
INSERT [dbo].[HoaDon] ([maHD], [ngayLapHD], [loaiHD], [ghiChu], [maNV], [maKH]) VALUES (N'HD0000000012', CAST(N'2021-01-07T20:57:14.540' AS DateTime), 0, N'', N'QL0001', N'KH0000000012')
INSERT [dbo].[HoaDon] ([maHD], [ngayLapHD], [loaiHD], [ghiChu], [maNV], [maKH]) VALUES (N'HD0000000013', CAST(N'2021-01-07T21:24:12.987' AS DateTime), 0, N'', N'QL0001', NULL)
INSERT [dbo].[HoaDon] ([maHD], [ngayLapHD], [loaiHD], [ghiChu], [maNV], [maKH]) VALUES (N'HD0000000014', CAST(N'2021-01-07T21:25:36.190' AS DateTime), 0, N'', N'QL0001', N'KH0000000013')
INSERT [dbo].[HoaDon] ([maHD], [ngayLapHD], [loaiHD], [ghiChu], [maNV], [maKH]) VALUES (N'HD0000000015', CAST(N'2021-01-07T22:59:49.510' AS DateTime), 0, N'', N'QL0001', NULL)
INSERT [dbo].[HoaDon] ([maHD], [ngayLapHD], [loaiHD], [ghiChu], [maNV], [maKH]) VALUES (N'HD0000000016', CAST(N'2021-01-07T23:01:29.137' AS DateTime), 1, N'', N'QL0001', NULL)
INSERT [dbo].[HoaDon] ([maHD], [ngayLapHD], [loaiHD], [ghiChu], [maNV], [maKH]) VALUES (N'HD0000000017', CAST(N'2021-01-07T23:02:04.837' AS DateTime), 0, N'', N'QL0001', NULL)
INSERT [dbo].[HoaDon] ([maHD], [ngayLapHD], [loaiHD], [ghiChu], [maNV], [maKH]) VALUES (N'HD0000000018', CAST(N'2021-01-08T09:40:40.837' AS DateTime), 1, N'', N'QL0001', NULL)
INSERT [dbo].[HoaDon] ([maHD], [ngayLapHD], [loaiHD], [ghiChu], [maNV], [maKH]) VALUES (N'HD0000000019', CAST(N'2021-01-08T09:41:21.900' AS DateTime), 0, N'', N'QL0001', N'KH0000000114')
INSERT [dbo].[HoaDon] ([maHD], [ngayLapHD], [loaiHD], [ghiChu], [maNV], [maKH]) VALUES (N'HD0000000020', CAST(N'2021-01-08T09:57:01.937' AS DateTime), 1, N'', N'QL0001', NULL)
INSERT [dbo].[HoaDon] ([maHD], [ngayLapHD], [loaiHD], [ghiChu], [maNV], [maKH]) VALUES (N'HD0000000021', CAST(N'2021-01-08T10:14:56.480' AS DateTime), 1, N'', N'QL0001', NULL)
GO
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000001', N'Lê Văn Hoa', N'0868321730', N'123 H? Chí Minh', N'levanHoa@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000002', N'Trần Văn Anh', N'0868321735', N'123 Võ Nguyên Giáp', N'levanAnh@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000003', N'Nguyễn Văn Thức', N'0868321735', N'123 Phạm Ngũ Ba', N'levanThuc@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000004', N'Lê Van Hà', N'0868321235', N'123 Ph?m Ngu Anh', N'levanha@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000005', N'Trương Đình Toàn', N'0868321236', N'Chưa cập nhật', N'a@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000006', N'Chưa Cập Nhật', N'0868321237', N'Chưa cập nhật', N'b@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000007', N'Trương Đình Toàn', N'0384542340', N'155 Nguyen Thai Son', N'toan@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000008', N'abc', N'0986389745', N'chưa cập nhật', N'a@gamil.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000009', N'Nguyễn Văn Tuấn', N'0522066887', N'', N'')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000010', N'Nguyễn Văn Ba', N'0522066998', N'', N'')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000011', N'Anh', N'0668877452', N'', N'')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000012', N'An', N'0384548924', N'', N'')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000013', N'Ba bốn an', N'0354785452', N'', N'')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000014', N'Trần Trung Vinh', N'0868321214', N'67 Lê Lai', N'trantrungvinh@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000015', N'Lê Văn Nam', N'0868321215', N'12 Phan Huy Ích', N'levannam@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000016', N'Trần Nam', N'0868321216', N'13 Phạm Văn Chiêu', N'trannam@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000017', N'Lê Luân', N'0868321217', N'168 Cộng Hòa', N'leluan@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000018', N'Nguyễn Văn Hà', N'0868321218', N'30 Trường Chinh', N'nguyenvanha@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000019', N'Trương Thành Lộc', N'0868321219', N'89 Tây Hội', N'truongthanhloc@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000020', N'Trần Anh Lý', N'0868321220', N'173 Phan Đăng Lưu', N'trananhly@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000021', N'Trần Kỳ Anh', N'0868321221', N'69 Nơ Trang Long', N'trankyanh@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000022', N'Lê Nhật Huy', N'0868321222', N'78 Đinh Bộ Lĩnh', N'lenhathuy@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000023', N'Lê Võ Thái', N'0868321223', N'10 Chu Văn An', N'levothai@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000024', N'Nguyễn Thu Hằng', N'0868321224', N'1 Đinh Tiên Hoàng', N'nguyenthuhang@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000025', N'Lê Thị Thu Hiền', N'0868321225', N'2 Mai Chí Thọ', N'lethithuhien@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000026', N'Nguyễn Thị Trang', N'0868321226', N'28 Lương Định Của', N'nguyenthitrang@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000027', N'Ngô Quang Long', N'0868321227', N'39 Nguyễn Văn Bảo', N'ngoquanglong@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000028', N'Đoàn Nhất Vinh', N'0868321228', N'76 Tân Kỳ Tân Quý', N'doannhatvinh@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000029', N'Tống Văn Thắng', N'0868321229', N'112 Âu Cơ', N'tongvanthang@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000030', N'Nguyễn Phương Ngân', N'0868321230', N'143 Lạc Long Quân', N'nguyenphuongngan@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000031', N'Nguyễn Ngọc Bích', N'0868321231', N'190 Quang Trung', N'nguyenngocbich@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000032', N'Nguyễn Thị Thanh Liễu', N'0868321232', N'193 Nguyễn Văn Khối', N'nguyenthanhlieu@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000033', N'Nguyễn Kiều Khanh', N'0868321233', N'113 Trần Nhật Duật', N'nguyenkieukhanh@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000034', N'Trần Tâm', N'0868321234', N'190 Nguyễn Văn Đậu', N'trantam@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000035', N'Tô Hoài Chỉnh', N'0868321235', N'159 Hai Bà Trưng', N'tohoaichinh@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000036', N'Nguyễn Thị Như Quỳnh', N'0868321236', N'143 Phạm Ngọc Thạch', N'nguyennhuquynh@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000037', N'Nguyễn Duy An', N'0868321237', N'313 CMT8', N'nguyenduyan@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000038', N'Trương Ngọc Duy', N'0868321238', N'343 Trần Huy Cận', N'truongngocduy@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000039', N'Trần Văn Ân', N'0868321239', N'275 Hồ Xuân Hương', N'tranvanan@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000040', N'Huỳnh Toàn', N'0868321240', N'123 Bà Huyện Thanh Quang', N'huynhtoan@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000041', N'Huỳnh Chí Tĩnh', N'0868321241', N'347 Tôn Đức Thắng', N'huynhchitinh@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000042', N'Đồ Văn Luân', N'0868321242', N'589 Nguyễn Thị Minh Khai', N'dovanluan@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000043', N'Nguyễn Trần Nhật Luân', N'0868321243', N'143 Lý Tự Trọng', N'nguyentrannhatluan@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000044', N'Nguyễn Thanh Duy', N'0868321244', N'110 Cao Thắng', N'nguyenthanhduy@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000045', N'Châu Bùi', N'0868321245', N'120 Trần Hưng Đạo', N'chaubui@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000046', N'Châu Nguyễn My Xuân', N'0868321246', N'128 Bùi Thị Xuân', N'myxuan@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000047', N'Huỳnh Thị Thùy Thiên', N'0868321247', N'311 Nguyễn Huệ', N'thuythien@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000048', N'Châu Văn An', N'0868321248', N'469 Nguyễn Hữu Cầu', N'chauvanan@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000049', N'Đỗ Đạt Đức', N'0868321249', N'193 Phan Tôn', N'dodatduc@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000050', N'Nguyễn Thế Đạt', N'0868321250', N'289 Bùi Viện', N'nguyenthedat@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000051', N'Phan Lê Ngọc Duy', N'0868321251', N'300 Huỳnh Thúc Kháng', N'ngocduy@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000052', N'Nguyễn Mạnh Hà', N'0868321252', N'301 Nguyễn Huy Tự', N'manhha@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000053', N'Nguyễn Trung Hải', N'0868321253', N'355 Phan Văn Đạt', N'nguyentrunghai@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000054', N'Văn Minh Hoàng', N'0868321254', N'113 Lê Anh Xuân', N'minhhoang@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000055', N'Võ Anh Hào', N'0868321255', N'123 Nguyễn Phi Khanh', N'anhhao@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000056', N'Hà Huy Hoàng', N'0868321256', N'103 Nguyễn Siêu', N'huyhoang@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000057', N'Lê Nhật Nam', N'0868321257', N'223 Phùng Khắc Khoan', N'lenhatnam@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000058', N'Vũ Văn Khải', N'0868321258', N'424 Lê Duẩn', N'vuvankhai@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000059', N'Lê Tuấn Khang', N'0868321259', N'493 Cao Bá Quát', N'letuankhang@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000060', N'Điểu Long', N'0868321260', N'111 Nguyễn Thành Ý', N'dieulong@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000061', N'Trần Gia Long', N'0868321261', N'453 Lê Thánh Tôn', N'trangialong@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000062', N'Huỳnh Công Lý', N'0868321262', N'523 Tôn Thất Đạm', N'huynhcongly@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000063', N'Phạm Quý Phong', N'0868321263', N'103 Nguyễn Tuyển', N'quyphong@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000064', N'Phạm Thành Nam', N'0868321264', N'253 Nguyễn Văn Giai', N'thanhnam@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000065', N'Trương Đình Phước', N'0868321265', N'119 Tạ Hiển', N'dinhphuoc@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000066', N'Nguyễn Duy Thiện', N'0868321266', N'110 Trần Lựu', N'nguyenduythien@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000067', N'Nguyễn Thị Thanh Thúy', N'0868321267', N'209 Thích Mật Thể', N'thanhthuy@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000068', N'Huỳnh Anh Tiên', N'0868321268', N'211 Trần Não', N'anhtien@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000069', N'Lê Văn Tài', N'0868321269', N'341 Ngô Quang Huy', N'levantai@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000070', N'Nguyễn Chí Tôn', N'0868321270', N'444 Trúc Đường', N'nguyenchiton@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000071', N'Mai Thanh Trọng', N'0868321271', N'111 Tôn Đản', N'maithanhtrong@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000072', N'Mai Quốc Khánh', N'0868321272', N'222 Hoàng Diệu ', N'maiquockhanh@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000073', N'Lê Tuấn Tú', N'0868321273', N'333 Khánh Hội', N'letuantu@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000074', N'Lại Văn Vượng', N'0868321274', N'555 Lê Văn Linh', N'laivanvuong@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000075', N'Lê Văn Sỹ', N'0868321275', N'29 Ngô Văn Sở', N'levansy@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000076', N'Lạc Long Quân', N'0868321276', N'19 Nguyễn Hữu Hào', N'longquan@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000077', N'Âu Cơ', N'0868321277', N'24 Nguyễn Tất Thành', N'auco@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000078', N'Nguyễn Văn Nghị', N'0868321278', N'23 Tân Vĩnh', N'vannghi@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000079', N'Phạm Văn Đồng', N'0868321279', N'18 Vĩnh Hội', N'vandong@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000080', N'Quang Trung', N'0868321280', N'13 Sự Vạn Hạnh', N'quangtrung@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000081', N'Lê Đức Thọ', N'0868321281', N'11 Đỗ Văn Sửu', N'leductho@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000082', N'Lê Văn Thọ', N'0868321282', N'23 Tạ Uyên', N'levantho@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000083', N'Nguyễn Thành Tài', N'0868321283', N'17 Trần Nhân Tôn', N'thanhtai@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000084', N'Trần Quốc Tiến', N'0868321284', N'113 Trần Hòa', N'tranquoctien@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000085', N'Phan Tấn Quốc', N'0868321285', N'298 Trần Điện', N'phantanquoc@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000086', N'Phan Thị Mỹ Nam', N'0868321286', N'199 Nguyễn An Khương', N'phanmyvy@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000087', N'Trần Thị Trúc Linh', N'0868321287', N'183 Phù Đổng Thiên Vương', N'truclinh@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000088', N'Nguyễn Đình Minh', N'0868321288', N'223 Tản Đà', N'dinhminh@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000089', N'Trần Trung Hiếu', N'0868321289', N'185 Ngô Gia Tự', N'trunghieu@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000090', N'Cao Thanh Vi', N'0868321290', N'187 Vũ Chí Hiếu', N'thanhvi@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000091', N'Tô Hoài Chỉnh', N'0868321291', N'129 Bạch Vân', N'tohoaichinh@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000092', N'Tô Văn Minh', N'0868321292', N'113 Nhiêu Tâm', N'tovanminh@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000093', N'Nguyễn Ngọc Phú', N'0868321293', N'243 Ba Tơ', N'ngocphu@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000094', N'Trần Dần Nam', N'0868321294', N'213 Nguyễn Tri Phương', N'trandan@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000095', N'Nguyễn Thị Sáu', N'0868321295', N'193 Nguyễn Văn Của', N'nguyenthisau@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000096', N'Bùi Văn Bảy', N'0868321296', N'313 Nguyễn Văn Linh', N'buivanbay@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000097', N'Võ Tấn Vũ', N'0868321297', N'323 Hồ Học Lãm', N'votanvu@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000098', N'Phan Văn Thông', N'0868321298', N'293 Phạm Thế Hiển', N'phanvanthong@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000099', N'Nguyễn Thị Hạnh', N'0868321299', N'113 Rạch Cát', N'nguyenthihanh@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000100', N'Nguyễn Thành Tạo', N'0868321300', N'110 Tạ Quang Bửu', N'thanhtao@gmail.com')
GO
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000101', N'Trần Nhật Hưng', N'0868321210', N'103 Nguyễn Thái Sơn', N'trannhathung@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000102', N'Nguyễn Thu Hiếu', N'0868321213', N'78 Lê Lợi', N'nguyenthuhieu@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000103', N'Nguyễn Thu Hiếu', N'0868321213', N'78 Lê Lợi', N'nguyenthuhieu@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000104', N'Lê Mỹ Khang', N'0868321211', N'323 Bạch Đằng', N'lemykhang@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000105', N'Lê Mỹ Khang', N'0868321211', N'323 Bạch Đằng', N'lemykhang@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000106', N'Nguyễn Thanh Hoài', N'0868321206', N'132 Phạm Văn Đồng', N'nguyenthanhhoai@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000107', N'Nguyễn Thanh Hoài', N'0868321206', N'132 Phạm Văn Đồng', N'nguyenthanhhoai@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000108', N'Phan Thị Mỹ Nam', N'0868321286', N'199 Nguyễn An Khương', N'phanmyvy@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000109', N'Phan Thị Mỹ Nữ', N'0868321286', N'199 Nguyễn An Khương', N'phanmyvy@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000110', N'Trần Nhật Hưng', N'0868321210', N'103 Nguyễn Thái Sơn', N'trannhathung@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000111', N'Nguyễn Thu Hiếu', N'0868321213', N'78 Lê Lợi', N'nguyenthuhieu@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000112', N'Lê Mỹ Khang', N'0868321211', N'323 Bạch Đằng', N'lemykhang@gmail.com')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000113', N'Lê Văn Thành', N'0522688775', N'', N'')
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [sdtKH], [diaChi], [email]) VALUES (N'KH0000000114', N'An', N'0384542356', N'abc', N'abcc@gmail.com')
GO
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000001', N'T0000000001', N'NCC001', N'Anh ', CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2021-06-01T00:00:00.000' AS DateTime), N'Hộp', N'Viên', 50, 500000, 10000, N'Ngày 2 viên', N'Dùng trước khi ăn', 1, 23)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000002', N'T0000000002', N'NCC002', N'Pháp', CAST(N'2018-01-02T00:00:00.000' AS DateTime), CAST(N'2021-06-02T00:00:00.000' AS DateTime), N'Hộp', N'Típ', 20, 200000, 5000, N'Ngày 2 típ', N'Dùng trước khi ăn', 0.5, 57)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000003', N'T0000000003', N'NCC003', N'Mỹ', CAST(N'2018-01-03T00:00:00.000' AS DateTime), CAST(N'2021-06-03T00:00:00.000' AS DateTime), N'Hộp', N'Vĩ', 30, 300000, 10000, N'Ngày 1 vĩ', N'Dùng sau khi ăn', 0, 12)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000004', N'T0000000004', N'NCC004', N'Ý', CAST(N'2018-01-04T00:00:00.000' AS DateTime), CAST(N'2021-06-04T00:00:00.000' AS DateTime), N'Hộp', N'Gói', 10, 100000, 5000, N'Ngày 2 gói', N'Dùng sau khi ăn', 1.5, 98)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000005', N'T0000000005', N'NCC005', N'Canada', CAST(N'2018-01-05T00:00:00.000' AS DateTime), CAST(N'2019-06-05T00:00:00.000' AS DateTime), N'Hộp', N'Típ', 40, 400000, 10000, N'Ngày 2 típ', N'Dùng trước khi ăn', 0, 50)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000006', N'T0000000006', N'NCC006', N'Nhật Bản', CAST(N'2018-01-06T00:00:00.000' AS DateTime), CAST(N'2021-06-06T00:00:00.000' AS DateTime), N'Hộp', N'Típ', 10, 100000, 5000, N'Ngày 2 típ', N'Dùng trước khi ăn', 1, 33)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000007', N'T0000000007', N'NCC007', N'Trung Quốc', CAST(N'2018-01-07T00:00:00.000' AS DateTime), CAST(N'2021-06-07T00:00:00.000' AS DateTime), N'Hộp', N'Vĩ', 50, 500000, 10000, N'Ngày 1 vĩ', N'Dùng sau khi ăn', 0.5, 65)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000008', N'T0000000008', N'NCC001', N'Hàn Quốc', CAST(N'2018-01-08T00:00:00.000' AS DateTime), CAST(N'2021-06-08T00:00:00.000' AS DateTime), N'Hộp', N'Gói', 20, 200000, 5000, N'Ngày 2 gói', N'Dùng trước khi ăn', 1.5, 15)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000009', N'T0000000009', N'NCC002', N'Nga', CAST(N'2018-01-09T00:00:00.000' AS DateTime), CAST(N'2021-06-09T00:00:00.000' AS DateTime), N'Hộp', N'Típ', 40, 400000, 10000, N'Ngày 2 típ', N'Dùng sau khi ăn', 0, 199)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000010', N'T0000000010', N'NCC003', N'Ấn Độ', CAST(N'2018-01-10T00:00:00.000' AS DateTime), CAST(N'2021-06-10T00:00:00.000' AS DateTime), N'Hộp', N'Viên', 50, 500000, 5000, N'Ngày 2 viên', N'Dùng sau khi ăn', 1.5, 89)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000011', N'T0000000011', N'NCC004', N'Anh ', CAST(N'2018-02-11T00:00:00.000' AS DateTime), CAST(N'2021-08-11T00:00:00.000' AS DateTime), N'Hộp', N'Viên', 10, 100000, 10000, N'Ngày 2 viên', N'Dùng sau khi ăn', 1, 98)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000012', N'T0000000012', N'NCC005', N'Pháp', CAST(N'2018-02-12T00:00:00.000' AS DateTime), CAST(N'2021-08-12T00:00:00.000' AS DateTime), N'Hộp', N'Típ', 20, 200000, 10000, N'Ngày 2 típ', N'Dùng trước khi ăn', 0, 74)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000013', N'T0000000013', N'NCC006', N'Mỹ', CAST(N'2018-02-13T00:00:00.000' AS DateTime), CAST(N'2019-08-13T00:00:00.000' AS DateTime), N'Hộp', N'Vĩ', 40, 400000, 5000, N'Ngày 1 vĩ', N'Dùng sau khi ăn', 0, 74)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000014', N'T0000000014', N'NCC007', N'Ý ', CAST(N'2018-02-14T00:00:00.000' AS DateTime), CAST(N'2019-08-14T00:00:00.000' AS DateTime), N'Hộp', N'Viên', 10, 100000, 10000, N'Ngày 2 viên', N'Dùng sau khi ăn', 1.5, 80)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000015', N'T0000000015', N'NCC001', N'Canada', CAST(N'2018-02-15T00:00:00.000' AS DateTime), CAST(N'2021-08-15T00:00:00.000' AS DateTime), N'Hộp', N'Vĩ', 30, 300000, 5000, N'Ngày 1 vĩ', N'Dùng sau khi ăn', 0, 15)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000016', N'T0000000016', N'NCC002', N'Nhật Bản', CAST(N'2018-02-16T00:00:00.000' AS DateTime), CAST(N'2021-08-16T00:00:00.000' AS DateTime), N'Hộp', N'Gói', 50, 500000, 10000, N'Ngày 2 gói', N'Dùng trước khi ăn', 0.5, 4)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000017', N'T0000000017', N'NCC003', N'Trung Quốc', CAST(N'2018-02-17T00:00:00.000' AS DateTime), CAST(N'2021-08-17T00:00:00.000' AS DateTime), N'Hộp', N'Viên', 30, 300000, 5000, N'Ngày 2 viên', N'Dùng trước khi ăn', 0.5, 17)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000018', N'T0000000018', N'NCC004', N'Hàn Quốc', CAST(N'2018-02-18T00:00:00.000' AS DateTime), CAST(N'2021-08-18T00:00:00.000' AS DateTime), N'Hộp', N'Vĩ', 10, 100000, 10000, N'Ngày 1 vĩ', N'Dùng sau khi ăn', 0, 16)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000019', N'T0000000019', N'NCC005', N'Nga', CAST(N'2018-02-19T00:00:00.000' AS DateTime), CAST(N'2021-08-19T00:00:00.000' AS DateTime), N'Hộp', N'Gói', 40, 400000, 10000, N'Ngày 2 gói', N'Dùng trước khi ăn', 0, 14)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000020', N'T0000000020', N'NCC006', N'Ấn Độ', CAST(N'2018-02-20T00:00:00.000' AS DateTime), CAST(N'2019-08-20T00:00:00.000' AS DateTime), N'Hộp', N'Típ', 40, 400000, 5000, N'Ngày 2 típ', N'Dùng sau khi ăn', 1, 18)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000021', N'T0000000021', N'NCC007', N'Anh ', CAST(N'2018-03-21T00:00:00.000' AS DateTime), CAST(N'2019-10-21T00:00:00.000' AS DateTime), N'Hộp', N'Viên', 30, 300000, 5000, N'Ngày 2 viên', N'Dùng trước khi ăn', 0.5, 7)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000022', N'T0000000022', N'NCC001', N'Pháp', CAST(N'2018-03-22T00:00:00.000' AS DateTime), CAST(N'2021-10-22T00:00:00.000' AS DateTime), N'Hộp', N'Viên', 10, 100000, 10000, N'Ngày 2 viên', N'Dùng sau khi ăn', 1, 27)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000023', N'T0000000023', N'NCC002', N'Mỹ', CAST(N'2018-03-23T00:00:00.000' AS DateTime), CAST(N'2021-10-23T00:00:00.000' AS DateTime), N'Hộp', N'Típ', 10, 100000, 5000, N'Ngày 2 típ', N'Dùng trước khi ăn', 1, 94)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000024', N'T0000000024', N'NCC003', N'Ý', CAST(N'2018-03-24T00:00:00.000' AS DateTime), CAST(N'2021-10-24T00:00:00.000' AS DateTime), N'Hộp', N'Vĩ', 30, 300000, 10000, N'Ngày 1 vĩ', N'Dùng trước khi ăn', 0, 100)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000025', N'T0000000025', N'NCC004', N'Canada', CAST(N'2018-03-25T00:00:00.000' AS DateTime), CAST(N'2021-10-25T00:00:00.000' AS DateTime), N'Hộp', N'Viên', 50, 500000, 10000, N'Ngày 2 viên', N'Dùng sau khi ăn', 0.5, 120)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000026', N'T0000000026', N'NCC005', N'Nhật Bản', CAST(N'2018-03-26T00:00:00.000' AS DateTime), CAST(N'2021-10-26T00:00:00.000' AS DateTime), N'Hộp', N'Gói', 50, 500000, 5000, N'Ngày 2 gói', N'Dùng trước khi ăn', 1, 150)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000027', N'T0000000027', N'NCC006', N'Trung Quốc', CAST(N'2018-03-27T00:00:00.000' AS DateTime), CAST(N'2019-10-27T00:00:00.000' AS DateTime), N'Hộp', N'Vĩ', 20, 200000, 5000, N'Ngày 1 vĩ', N'Dùng sau khi ăn', 1, 200)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000028', N'T0000000028', N'NCC007', N'Hàn Quốc', CAST(N'2018-03-28T00:00:00.000' AS DateTime), CAST(N'2019-10-28T00:00:00.000' AS DateTime), N'Hộp', N'Típ', 10, 100000, 10000, N'Ngày 2 típ', N'Dùng sau khi ăn', 0.5, 145)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000029', N'T0000000029', N'NCC001', N'Nga ', CAST(N'2018-03-29T00:00:00.000' AS DateTime), CAST(N'2021-10-29T00:00:00.000' AS DateTime), N'Hộp', N'Gói', 40, 400000, 5000, N'Ngày 2 gói', N'Dùng trước khi ăn', 0, 21)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000030', N'T0000000030', N'NCC002', N'Ấn Độ', CAST(N'2018-03-30T00:00:00.000' AS DateTime), CAST(N'2021-10-30T00:00:00.000' AS DateTime), N'Hộp', N'Típ', 50, 500000, 5000, N'Ngày 2 típ', N'Dùng sau khi ăn', 1, 89)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000031', N'T0000000031', N'NCC003', N'Việt Nam', CAST(N'2018-03-31T00:00:00.000' AS DateTime), CAST(N'2021-12-01T00:00:00.000' AS DateTime), N'Hộp', N'Viên', 20, 200000, 5000, N'Ngày 2 viên', N'Dùng trước khi ăn', 0, 83)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000032', N'T0000000032', N'NCC004', N'Việt Nam', CAST(N'2018-04-01T00:00:00.000' AS DateTime), CAST(N'2021-12-02T00:00:00.000' AS DateTime), N'Hộp', N'Viên', 50, 500000, 10000, N'Ngày 2 viên', N'Dùng trước khi ăn', 0, 89)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000033', N'T0000000033', N'NCC005', N'Canada', CAST(N'2018-04-02T00:00:00.000' AS DateTime), CAST(N'2019-12-03T00:00:00.000' AS DateTime), N'Hộp', N'Vĩ', 10, 100000, 10000, N'Ngày 1 vĩ', N'Dùng sau khi ăn', 0, 122)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000034', N'T0000000034', N'NCC006', N'Ý', CAST(N'2018-04-03T00:00:00.000' AS DateTime), CAST(N'2019-12-04T00:00:00.000' AS DateTime), N'Hộp', N'Gói', 50, 500000, 5000, N'Ngày 2 gói', N'Dùng trước khi ăn', 1, 111)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000035', N'T0000000035', N'NCC007', N'Mỹ ', CAST(N'2018-04-04T00:00:00.000' AS DateTime), CAST(N'2021-12-05T00:00:00.000' AS DateTime), N'Hộp', N'Viên', 50, 500000, 5000, N'Ngày 2 viên', N'Dùng trước khi ăn', 1, 147)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000036', N'T0000000036', N'NCC001', N'Hàn Quốc', CAST(N'2018-04-05T00:00:00.000' AS DateTime), CAST(N'2021-12-06T00:00:00.000' AS DateTime), N'Hộp', N'Gói', 50, 500000, 10000, N'Ngày 2 gói', N'Dùng trước khi ăn', 1, 190)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000037', N'T0000000037', N'NCC002', N'Pháp', CAST(N'2018-04-06T00:00:00.000' AS DateTime), CAST(N'2021-12-07T00:00:00.000' AS DateTime), N'Hộp', N'Típ', 30, 300000, 5000, N'Ngày 2 típ', N'Dùng sau khi ăn', 1, 191)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000038', N'T0000000038', N'NCC003', N'Việt Nam', CAST(N'2018-04-07T00:00:00.000' AS DateTime), CAST(N'2021-12-08T00:00:00.000' AS DateTime), N'Hộp', N'Viên', 10, 100000, 10000, N'Ngày 2 viên', N'Dùng sau khi ăn', 0, 192)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000039', N'T0000000039', N'NCC004', N'Ý ', CAST(N'2018-04-08T00:00:00.000' AS DateTime), CAST(N'2021-12-09T00:00:00.000' AS DateTime), N'Hộp', N'Típ', 40, 400000, 5000, N'Ngày 2 típ', N'Dùng trước khi ăn', 0, 100)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000040', N'T0000000040', N'NCC005', N'Nhật Bản', CAST(N'2018-04-09T00:00:00.000' AS DateTime), CAST(N'2021-12-10T00:00:00.000' AS DateTime), N'Hộp', N'Gói', 10, 100000, 10000, N'Ngày 2 gói', N'Dùng trước khi ăn', 1.5, 48)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000041', N'T0000000041', N'NCC006', N'Nga', CAST(N'2018-04-10T00:00:00.000' AS DateTime), CAST(N'2021-02-11T00:00:00.000' AS DateTime), N'Hộp', N'Vĩ', 30, 300000, 10000, N'Ngày 1 vĩ', N'Dùng sau khi ăn', 1, 55)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000042', N'T0000000042', N'NCC007', N'Nga', CAST(N'2018-05-11T00:00:00.000' AS DateTime), CAST(N'2021-02-12T00:00:00.000' AS DateTime), N'Hộp', N'Vĩ', 40, 400000, 5000, N'Ngày 1 vĩ', N'Dùng trước khi ăn', 1, 65)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000043', N'T0000000043', N'NCC001', N'Việt Nam', CAST(N'2018-05-12T00:00:00.000' AS DateTime), CAST(N'2021-02-13T00:00:00.000' AS DateTime), N'Hộp', N'Típ', 10, 100000, 10000, N'Ngày 2 típ', N'Dùng sau khi ăn', 1.5, 66)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000044', N'T0000000044', N'NCC002', N'Pháp ', CAST(N'2018-05-13T00:00:00.000' AS DateTime), CAST(N'2021-02-14T00:00:00.000' AS DateTime), N'Hộp', N'Viên', 30, 300000, 5000, N'Ngày 2 viên', N'Dùng trước khi ăn', 1, 78)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000045', N'T0000000045', N'NCC003', N'Ý', CAST(N'2018-05-14T00:00:00.000' AS DateTime), CAST(N'2021-02-15T00:00:00.000' AS DateTime), N'Hộp', N'Típ', 40, 400000, 5000, N'Ngày 2 típ', N'Dùng sau khi ăn', 0, 52)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000046', N'T0000000046', N'NCC004', N'Anh', CAST(N'2018-05-15T00:00:00.000' AS DateTime), CAST(N'2021-02-16T00:00:00.000' AS DateTime), N'Hộp', N'Gói', 50, 500000, 10000, N'Ngày 2 gói', N'Dùng trước khi ăn', 1.5, 20)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000047', N'T0000000047', N'NCC005', N'Mỹ ', CAST(N'2018-05-16T00:00:00.000' AS DateTime), CAST(N'2021-02-17T00:00:00.000' AS DateTime), N'Hộp', N'Vĩ', 30, 300000, 10000, N'Ngày 1 vĩ', N'Dùng trước khi ăn', 1.5, 8)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000048', N'T0000000048', N'NCC006', N'Việt Nam', CAST(N'2018-05-17T00:00:00.000' AS DateTime), CAST(N'2021-02-18T00:00:00.000' AS DateTime), N'Hộp', N'Típ', 50, 500000, 5000, N'Ngày 2 típ', N'Dùng sau khi ăn', 1, 11)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000049', N'T0000000049', N'NCC007', N'Nhật Bản', CAST(N'2018-05-18T00:00:00.000' AS DateTime), CAST(N'2021-02-19T00:00:00.000' AS DateTime), N'Hộp', N'Viên', 10, 100000, 10000, N'Ngày 2 viên', N'Dùng trước khi ăn', 0, 12)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000050', N'T0000000050', N'NCC001', N'Ấn Độ', CAST(N'2018-05-19T00:00:00.000' AS DateTime), CAST(N'2021-02-20T00:00:00.000' AS DateTime), N'Hộp', N'Típ', 30, 300000, 5000, N'Ngày 2 típ', N'Dùng trước khi ăn', 0, 33)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000051', N'T0000000051', N'NCC002', N'Việt Nam', CAST(N'2018-05-20T00:00:00.000' AS DateTime), CAST(N'2019-04-21T00:00:00.000' AS DateTime), N'Hộp', N'Típ', 40, 400000, 5000, N'Ngày 2 típ', N'Dùng trước khi ăn', 1.5, 32)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000052', N'T0000000052', N'NCC003', N'Anh', CAST(N'2018-06-21T00:00:00.000' AS DateTime), CAST(N'2021-04-22T00:00:00.000' AS DateTime), N'Hộp', N'Típ', 50, 500000, 10000, N'Ngày 2 típ', N'Dùng sau khi ăn', 1, 49)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000053', N'T0000000053', N'NCC004', N'Pháp', CAST(N'2018-06-22T00:00:00.000' AS DateTime), CAST(N'2021-04-23T00:00:00.000' AS DateTime), N'Hộp', N'Viên', 30, 300000, 10000, N'Ngày 2 viên', N'Dùng sau khi ăn', 0, 111)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000054', N'T0000000054', N'NCC005', N'Ý', CAST(N'2018-06-23T00:00:00.000' AS DateTime), CAST(N'2019-04-24T00:00:00.000' AS DateTime), N'Hộp', N'Viên', 10, 100000, 10000, N'Ngày 2 viên', N'Dùng trước khi ăn', 0, 129)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000055', N'T0000000055', N'NCC006', N'Mỹ', CAST(N'2018-06-24T00:00:00.000' AS DateTime), CAST(N'2021-04-25T00:00:00.000' AS DateTime), N'Hộp', N'Viên', 50, 500000, 5000, N'Ngày 2 viên', N'Dùng trước khi ăn', 1.5, 184)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000056', N'T0000000056', N'NCC007', N'Ấn Độ', CAST(N'2018-06-25T00:00:00.000' AS DateTime), CAST(N'2019-04-26T00:00:00.000' AS DateTime), N'Hộp', N'Gói', 10, 100000, 5000, N'Ngày 2 gói', N'Dùng sau khi ăn', 1.5, 138)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000057', N'T0000000057', N'NCC001', N'Hàn Quốc', CAST(N'2018-06-26T00:00:00.000' AS DateTime), CAST(N'2021-04-27T00:00:00.000' AS DateTime), N'Hộp', N'Típ', 10, 100000, 10000, N'Ngày 2 típ', N'Dùng trước khi ăn', 1, 182)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000058', N'T0000000058', N'NCC002', N'Trung Quốc', CAST(N'2018-06-27T00:00:00.000' AS DateTime), CAST(N'2021-04-28T00:00:00.000' AS DateTime), N'Hộp', N'Gói', 40, 400000, 10000, N'Ngày 2 gói', N'Dùng sau khi ăn', 1.5, 90)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000059', N'T0000000059', N'NCC003', N'Việt Nam', CAST(N'2018-06-28T00:00:00.000' AS DateTime), CAST(N'2019-04-29T00:00:00.000' AS DateTime), N'Hộp', N'Vĩ', 40, 400000, 5000, N'Ngày 1 vĩ', N'Dùng sau khi ăn', 1.5, 90)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000060', N'T0000000060', N'NCC004', N'Việt Nam', CAST(N'2018-06-29T00:00:00.000' AS DateTime), CAST(N'2021-04-30T00:00:00.000' AS DateTime), N'Hộp', N'Típ', 50, 500000, 5000, N'Ngày 2 típ', N'Dùng sau khi ăn', 1.5, 95)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000061', N'T0000000061', N'NCC005', N'Canada ', CAST(N'2018-06-30T00:00:00.000' AS DateTime), CAST(N'2021-05-01T00:00:00.000' AS DateTime), N'Hộp', N'Viên', 10, 100000, 10000, N'Ngày 2 viên', N'Dùng trước khi ăn', 1.5, 98)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000062', N'T0000000062', N'NCC006', N'Canada', CAST(N'2018-07-01T00:00:00.000' AS DateTime), CAST(N'2021-05-02T00:00:00.000' AS DateTime), N'Hộp', N'Gói', 40, 400000, 5000, N'Ngày 2 gói', N'Dùng trước khi ăn', 0, 89)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000063', N'T0000000063', N'NCC007', N'Ý', CAST(N'2018-07-02T00:00:00.000' AS DateTime), CAST(N'2021-05-03T00:00:00.000' AS DateTime), N'Hộp', N'Típ', 50, 500000, 10000, N'Ngày 2 típ', N'Dùng sau khi ăn', 1.5, 77)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000064', N'T0000000064', N'NCC001', N'Mỹ ', CAST(N'2018-07-03T00:00:00.000' AS DateTime), CAST(N'2021-05-04T00:00:00.000' AS DateTime), N'Hộp', N'Típ', 10, 100000, 5000, N'Ngày 2 típ', N'Dùng sau khi ăn', 1.5, 65)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000065', N'T0000000065', N'NCC002', N'Anh', CAST(N'2018-07-04T00:00:00.000' AS DateTime), CAST(N'2019-05-05T00:00:00.000' AS DateTime), N'Hộp', N'Gói', 30, 300000, 5000, N'Ngày 2 gói', N'Dùng trước khi ăn', 1.5, 92)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000066', N'T0000000066', N'NCC003', N'Pháp', CAST(N'2018-07-05T00:00:00.000' AS DateTime), CAST(N'2021-05-06T00:00:00.000' AS DateTime), N'Hộp', N'Vĩ', 30, 300000, 10000, N'Ngày 1 vĩ', N'Dùng sau khi ăn', 1.5, 90)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000067', N'T0000000067', N'NCC004', N'Nhật Bản', CAST(N'2018-07-06T00:00:00.000' AS DateTime), CAST(N'2021-05-07T00:00:00.000' AS DateTime), N'Hộp', N'Típ', 50, 500000, 10000, N'Ngày 2 típ', N'Dùng trước khi ăn', 1.5, 99)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000068', N'T0000000068', N'NCC005', N'Hàn Quốc ', CAST(N'2018-07-07T00:00:00.000' AS DateTime), CAST(N'2021-05-08T00:00:00.000' AS DateTime), N'Hộp', N'Viên', 30, 300000, 10000, N'Ngày 2 viên', N'Dùng trước khi ăn', 1.5, 116)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000069', N'T0000000069', N'NCC006', N'Trung Quốc', CAST(N'2018-07-08T00:00:00.000' AS DateTime), CAST(N'2021-05-09T00:00:00.000' AS DateTime), N'Hộp', N'Viên', 40, 400000, 5000, N'Ngày 2 viên', N'Dùng sau khi ăn', 0.5, 129)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000070', N'T0000000070', N'NCC007', N'Việt Nam', CAST(N'2018-07-09T00:00:00.000' AS DateTime), CAST(N'2021-05-10T00:00:00.000' AS DateTime), N'Hộp', N'Vĩ', 10, 100000, 5000, N'Ngày 1 vĩ', N'Dùng trước khi ăn', 1.5, 128)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000071', N'T0000000071', N'NCC001', N'Việt Nam', CAST(N'2018-07-10T00:00:00.000' AS DateTime), CAST(N'2021-07-11T00:00:00.000' AS DateTime), N'Hộp', N'Gói', 20, 200000, 5000, N'Ngày 2 gói', N'Dùng trước khi ăn', 1.5, 175)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000072', N'T0000000072', N'NCC002', N'Việt Nam', CAST(N'2018-08-11T00:00:00.000' AS DateTime), CAST(N'2021-07-12T00:00:00.000' AS DateTime), N'Hộp', N'Vĩ', 30, 300000, 5000, N'Ngày 1 vĩ', N'Dùng sau khi ăn', 0, 170)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000073', N'T0000000073', N'NCC003', N'Ý ', CAST(N'2018-08-12T00:00:00.000' AS DateTime), CAST(N'2021-07-13T00:00:00.000' AS DateTime), N'Hộp', N'Vĩ', 10, 100000, 10000, N'Ngày 1 vĩ', N'Dùng trước khi ăn', 1.5, 199)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000074', N'T0000000074', N'NCC004', N'Mỹ', CAST(N'2018-08-13T00:00:00.000' AS DateTime), CAST(N'2021-07-14T00:00:00.000' AS DateTime), N'Hộp', N'Gói', 10, 100000, 5000, N'Ngày 2 gói', N'Dùng sau khi ăn', 1.5, 200)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000075', N'T0000000075', N'NCC005', N'Anh ', CAST(N'2018-08-14T00:00:00.000' AS DateTime), CAST(N'2021-07-15T00:00:00.000' AS DateTime), N'Hộp', N'Viên', 30, 300000, 5000, N'Ngày 2 viên', N'Dùng trước khi ăn', 0.5, 183)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000076', N'T0000000076', N'NCC006', N'Ấn Độ', CAST(N'2018-08-15T00:00:00.000' AS DateTime), CAST(N'2019-07-16T00:00:00.000' AS DateTime), N'Hộp', N'Gói', 40, 400000, 10000, N'Ngày 2 gói', N'Dùng trước khi ăn', 1.5, 183)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000077', N'T0000000077', N'NCC007', N'Việt Nam', CAST(N'2018-08-16T00:00:00.000' AS DateTime), CAST(N'2021-07-17T00:00:00.000' AS DateTime), N'Hộp', N'Gói', 20, 200000, 5000, N'Ngày 2 gói', N'Dùng sau khi ăn', 0, 186)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000078', N'T0000000078', N'NCC001', N'Việt Nam', CAST(N'2018-08-17T00:00:00.000' AS DateTime), CAST(N'2021-07-18T00:00:00.000' AS DateTime), N'Hộp', N'Viên', 40, 400000, 5000, N'Ngày 2 viên', N'Dùng sau khi ăn', 0.5, 198)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000079', N'T0000000079', N'NCC002', N'Hàn Quốc', CAST(N'2018-08-18T00:00:00.000' AS DateTime), CAST(N'2021-07-19T00:00:00.000' AS DateTime), N'Hộp', N'Gói', 20, 200000, 10000, N'Ngày 2 gói', N'Dùng sau khi ăn', 1.5, 197)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000080', N'T0000000080', N'NCC003', N'Nhật Bản', CAST(N'2018-08-19T00:00:00.000' AS DateTime), CAST(N'2021-07-20T00:00:00.000' AS DateTime), N'Hộp', N'Gói', 10, 100000, 5000, N'Ngày 2 gói', N'Dùng trước khi ăn', 0, 79)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000081', N'T0000000081', N'NCC004', N'Nhật Bản', CAST(N'2018-08-20T00:00:00.000' AS DateTime), CAST(N'2019-09-21T00:00:00.000' AS DateTime), N'Hộp', N'Gói', 20, 200000, 10000, N'Ngày 2 gói', N'Dùng trước khi ăn', 1, 60)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000082', N'T0000000082', N'NCC005', N'Việt Nam', CAST(N'2018-09-21T00:00:00.000' AS DateTime), CAST(N'2019-09-22T00:00:00.000' AS DateTime), N'Hộp', N'Gói', 40, 400000, 10000, N'Ngày 2 gói', N'Dùng sau khi ăn', 1.5, 70)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000083', N'T0000000083', N'NCC006', N'Việt Nam', CAST(N'2018-09-22T00:00:00.000' AS DateTime), CAST(N'2021-09-23T00:00:00.000' AS DateTime), N'Hộp', N'Gói', 40, 400000, 5000, N'Ngày 2 gói', N'Dùng trước khi ăn', 0.5, 10)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000084', N'T0000000084', N'NCC007', N'Việt Nam', CAST(N'2018-09-23T00:00:00.000' AS DateTime), CAST(N'2021-09-24T00:00:00.000' AS DateTime), N'Hộp', N'Viên', 10, 100000, 5000, N'Ngày 2 viên', N'Dùng sau khi ăn', 1.5, 11)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000085', N'T0000000085', N'NCC001', N'Ý ', CAST(N'2018-09-24T00:00:00.000' AS DateTime), CAST(N'2021-09-25T00:00:00.000' AS DateTime), N'Hộp', N'Gói', 40, 400000, 10000, N'Ngày 2 gói', N'Dùng trước khi ăn', 1, 21)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000086', N'T0000000086', N'NCC002', N'Anh ', CAST(N'2018-09-25T00:00:00.000' AS DateTime), CAST(N'2021-09-26T00:00:00.000' AS DateTime), N'Hộp', N'Vĩ', 20, 200000, 5000, N'Ngày 1 vĩ', N'Dùng sau khi ăn', 0.5, 22)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000087', N'T0000000087', N'NCC003', N'Pháp', CAST(N'2018-09-26T00:00:00.000' AS DateTime), CAST(N'2021-09-27T00:00:00.000' AS DateTime), N'Hộp', N'Gói', 40, 400000, 10000, N'Ngày 2 gói', N'Dùng trước khi ăn', 0.5, 33)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000088', N'T0000000088', N'NCC004', N'Canada', CAST(N'2018-09-27T00:00:00.000' AS DateTime), CAST(N'2021-09-28T00:00:00.000' AS DateTime), N'Hộp', N'Vĩ', 30, 300000, 5000, N'Ngày 1 vĩ', N'Dùng trước khi ăn', 1.5, 46)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000089', N'T0000000089', N'NCC005', N'Canada', CAST(N'2018-09-28T00:00:00.000' AS DateTime), CAST(N'2021-09-29T00:00:00.000' AS DateTime), N'Hộp', N'Vĩ', 20, 200000, 10000, N'Ngày 1 vĩ', N'Dùng sau khi ăn', 0.5, 47)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000090', N'T0000000090', N'NCC006', N'Ý ', CAST(N'2018-09-29T00:00:00.000' AS DateTime), CAST(N'2021-09-30T00:00:00.000' AS DateTime), N'Hộp', N'Gói', 20, 200000, 5000, N'Ngày 2 gói', N'Dùng trước khi ăn', 1.5, 29)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000091', N'T0000000091', N'NCC007', N'Anh ', CAST(N'2018-09-30T00:00:00.000' AS DateTime), CAST(N'2021-11-01T00:00:00.000' AS DateTime), N'Hộp', N'Chai', 10, 100000, 5000, N'Ngày nhỏ 2 giọt', N'Dùng sau khi ăn', 0.5, 70)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000092', N'T0000000092', N'NCC001', N'Ấn Độ ', CAST(N'2018-10-01T00:00:00.000' AS DateTime), CAST(N'2021-11-02T00:00:00.000' AS DateTime), N'Hộp', N'Chai', 40, 400000, 5000, N'Ngày nhỏ 3 giọt', N'Dùng trước khi ăn', 1.5, 71)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000093', N'T0000000093', N'NCC002', N'Việt Nam', CAST(N'2018-10-02T00:00:00.000' AS DateTime), CAST(N'2021-11-03T00:00:00.000' AS DateTime), N'Hộp', N'Chai', 30, 300000, 10000, N'Ngày nhỏ 3 giọt', N'Dùng trước khi ăn', 1.5, 75)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000094', N'T0000000094', N'NCC003', N'Việt Nam', CAST(N'2018-10-03T00:00:00.000' AS DateTime), CAST(N'2021-11-04T00:00:00.000' AS DateTime), N'Hộp', N'Chai', 20, 200000, 5000, N'Ngày nhỏ 3 giọt', N'Dùng sau khi ăn', 1, 57)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000095', N'T0000000095', N'NCC004', N'Việt Nam', CAST(N'2018-10-04T00:00:00.000' AS DateTime), CAST(N'2021-11-05T00:00:00.000' AS DateTime), N'Hộp', N'Chai', 20, 200000, 10000, N'Ngày nhỏ 2 giọt', N'Dùng trước khi ăn', 1, 90)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000096', N'T0000000096', N'NCC005', N'Nhật Bản ', CAST(N'2018-10-05T00:00:00.000' AS DateTime), CAST(N'2021-11-06T00:00:00.000' AS DateTime), N'Hộp', N'Chai', 30, 300000, 10000, N'Ngày nhỏ 3 giọt', N'Dùng sau khi ăn', 1.5, 19)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000097', N'T0000000097', NULL, N'Hàn Quốc', CAST(N'2018-10-06T00:00:00.000' AS DateTime), CAST(N'2021-11-07T00:00:00.000' AS DateTime), N'Hộp', N'Gói', 20, 200000, 10000, N'Ngày nhỏ 2 giọt', N'Dùng trước khi ăn', 0.5, 91)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000098', N'T0000000098', N'NCC007', N'Trung Quốc', CAST(N'2018-10-07T00:00:00.000' AS DateTime), CAST(N'2021-11-08T00:00:00.000' AS DateTime), N'Hộp', N'Gói', 30, 300000, 5000, N'Ngày 2 gói', N'Dùng trước khi ăn', 1, 87)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000099', N'T0000000099', N'NCC001', N'Trung Quốc', CAST(N'2018-10-08T00:00:00.000' AS DateTime), CAST(N'2019-11-09T00:00:00.000' AS DateTime), N'Hộp', N'Vĩ', 10, 100000, 10000, N'Ngày 1 vĩ', N'Dùng sau khi ăn', 1.5, 78)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000100', N'T0000000100', N'NCC002', N'Trung Quốc', CAST(N'2018-10-09T00:00:00.000' AS DateTime), CAST(N'2021-11-10T00:00:00.000' AS DateTime), N'Hộp', N'Gói', 20, 200000, 5000, N'Ngày 2 gói', N'Dùng trước khi ăn', 1, 1)
GO
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000101', N'T0000000101', N'NCC003', N'Nhật Bản', CAST(N'2018-10-10T00:00:00.000' AS DateTime), CAST(N'2021-01-11T00:00:00.000' AS DateTime), N'Hộp', N'Vĩ', 30, 300000, 5000, N'Ngày 1 vĩ', N'Dùng trước khi ăn', 1.5, 75)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000102', N'T0000000102', N'NCC004', N'Việt Nam', CAST(N'2018-11-11T00:00:00.000' AS DateTime), CAST(N'2019-01-12T00:00:00.000' AS DateTime), N'Hộp', N'Gói', 40, 400000, 10000, N'Ngày 2 gói', N'Dùng sau khi ăn', 0.5, 73)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000103', N'T0000000103', N'NCC005', N'Việt Nam', CAST(N'2018-11-12T00:00:00.000' AS DateTime), CAST(N'2019-01-13T00:00:00.000' AS DateTime), N'Hộp', N'Vĩ', 20, 200000, 5000, N'Ngày 1 vĩ', N'Dùng trước khi ăn', 1, 39)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000104', N'T0000000104', N'NCC006', N'Việt Nam', CAST(N'2018-11-13T00:00:00.000' AS DateTime), CAST(N'2021-01-14T00:00:00.000' AS DateTime), N'Hộp', N'Gói', 30, 300000, 10000, N'Ngày 2 gói', N'Dùng trước khi ăn', 1.5, 60)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000105', N'T0000000105', N'NCC007', N'Mỹ', CAST(N'2018-11-14T00:00:00.000' AS DateTime), CAST(N'2021-01-15T00:00:00.000' AS DateTime), N'Hộp', N'Típ', 50, 500000, 10000, N'Ngày 2 típ', N'Dùng sau khi ăn', 1, 60)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000106', N'T0000000106', N'NCC001', N'Việt Nam', CAST(N'2018-11-15T00:00:00.000' AS DateTime), CAST(N'2021-01-16T00:00:00.000' AS DateTime), N'Hộp', N'Viên', 20, 500000, 5000, N'Ngày 2 viên', N'Dùng sau khi ăn', 1, 80)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000107', N'T0000000107', N'NCC002', N'Ý', CAST(N'2018-11-16T00:00:00.000' AS DateTime), CAST(N'2021-01-17T00:00:00.000' AS DateTime), N'Hộp', N'Vĩ', 20, 200000, 5000, N'Ngày 1 vĩ', N'Dùng sau khi ăn', 0.5, 100)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000108', N'T0000000108', N'NCC003', N'Ý', CAST(N'2018-11-17T00:00:00.000' AS DateTime), CAST(N'2021-01-18T00:00:00.000' AS DateTime), N'Hộp', N'Gói', 50, 500000, 10000, N'Ngày 2 gói', N'Dùng trước khi ăn', 1, 130)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000109', N'T0000000109', N'NCC004', N'Việt Nam', CAST(N'2018-11-18T00:00:00.000' AS DateTime), CAST(N'2021-01-19T00:00:00.000' AS DateTime), N'Hộp', N'Viên', 40, 400000, 10000, N'Ngày 2 viên', N'Dùng sau khi ăn', 0.5, 140)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000110', N'T0000000110', N'NCC005', N'Canada', CAST(N'2018-11-19T00:00:00.000' AS DateTime), CAST(N'2021-01-20T00:00:00.000' AS DateTime), N'Hộp', N'Típ', 20, 200000, 5000, N'Ngày 2 típ', N'Dùng sau khi ăn', 1.5, 160)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000111', N'T0000000111', N'NCC006', N'Canada', CAST(N'2018-11-20T00:00:00.000' AS DateTime), CAST(N'2021-03-21T00:00:00.000' AS DateTime), N'Hộp', N'Gói', 50, 500000, 10000, N'Ngày 2 gói', N'Dùng sau khi ăn', 0.5, 177)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000112', N'T0000000112', N'NCC007', N'Ấn Độ', CAST(N'2018-12-21T00:00:00.000' AS DateTime), CAST(N'2021-03-22T00:00:00.000' AS DateTime), N'Hộp', N'Vĩ', 30, 300000, 10000, N'Ngày 1 vĩ', N'Dùng trước khi ăn', 1, 167)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000113', N'T0000000113', N'NCC001', N'Việt Nam', CAST(N'2018-12-22T00:00:00.000' AS DateTime), CAST(N'2019-03-23T00:00:00.000' AS DateTime), N'Hộp', N'Chai', 20, 200000, 5000, N'Ngày uống 2 muỗng', N'Dùng sau khi ăn', 0.5, 189)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000114', N'T0000000114', N'NCC002', N'Ấn Độ', CAST(N'2018-12-23T00:00:00.000' AS DateTime), CAST(N'2020-12-16T00:00:00.000' AS DateTime), N'Hộp', N'Chai', 50, 500000, 10000, N'Ngày uống 3 muỗng', N'Dùng trước khi ăn', 1.5, 191)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000115', N'T0000000115', N'NCC003', N'Việt Nam', CAST(N'2018-12-24T00:00:00.000' AS DateTime), CAST(N'2021-03-25T00:00:00.000' AS DateTime), N'Hộp', N'Chai', 40, 400000, 5000, N'Ngày uống 2 muỗng', N'Dùng sau khi ăn', 0.5, 194)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000116', N'T0000000116', N'NCC004', N'Trung Quốc', CAST(N'2018-12-25T00:00:00.000' AS DateTime), CAST(N'2021-03-26T00:00:00.000' AS DateTime), N'Hộp', N'Chai', 20, 200000, 10000, N'Ngày uống 3 muỗng', N'Dùng trước khi ăn', 1, 200)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000117', N'T0000000117', N'NCC005', N'Việt Nam', CAST(N'2018-12-26T00:00:00.000' AS DateTime), CAST(N'2019-03-27T00:00:00.000' AS DateTime), N'Hộp', N'Chai', 20, 200000, 10000, N'Ngày uống 2 muỗng', N'Dùng sau khi ăn', 1.5, 111)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000118', N'T0000000118', N'NCC006', N'Việt Nam', CAST(N'2018-12-27T00:00:00.000' AS DateTime), CAST(N'2021-03-28T00:00:00.000' AS DateTime), N'Hộp', N'Gói', 40, 400000, 10000, N'Ngày 2 gói', N'Dùng sau khi ăn', 0.5, 191)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000119', N'T0000000119', N'NCC007', N'Ý ', CAST(N'2018-12-28T00:00:00.000' AS DateTime), CAST(N'2020-12-16T00:00:00.000' AS DateTime), N'Hộp', N'Vĩ', 50, 500000, 5000, N'Ngày 1 vĩ', N'Dùng trước khi ăn', 1.5, 195)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000120', N'T0000000120', N'NCC001', N'Anh ', CAST(N'2018-12-29T00:00:00.000' AS DateTime), CAST(N'2021-03-30T00:00:00.000' AS DateTime), N'Hộp', N'Típ', 20, 200000, 5000, N'Ngày 2 típ', N'Dùng sau khi ăn', 0, 22)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000121', N'T0000000121', N'NCC002', N'Anh', CAST(N'2018-12-30T00:00:00.000' AS DateTime), CAST(N'2019-03-20T00:00:00.000' AS DateTime), N'Hộp', N'Gói', 40, 400000, 10000, N'Ngày 2 gói', N'Dùng trước khi ăn', 1.5, 33)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000122', N'T0000000122', N'NCC003', N'Canada', CAST(N'2018-12-31T00:00:00.000' AS DateTime), CAST(N'2021-03-19T00:00:00.000' AS DateTime), N'Hộp', N'Típ', 50, 500000, 5000, N'Ngày 2 típ', N'Dùng sau khi ăn', 1, 44)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000123', N'T0000000123', N'NCC004', N'Trung Quốc', CAST(N'2018-12-19T00:00:00.000' AS DateTime), CAST(N'2021-03-18T00:00:00.000' AS DateTime), N'Hộp', N'Gói', 30, 300000, 10000, N'Ngày 2 gói', N'Dùng trước khi ăn', 0.5, 56)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000124', N'T0000000124', N'NCC005', N'Mỹ ', CAST(N'2018-12-18T00:00:00.000' AS DateTime), CAST(N'2019-03-17T00:00:00.000' AS DateTime), N'Hộp', N'Vĩ', 50, 500000, 5000, N'Ngày 1 vĩ', N'Dùng trước khi ăn', 0.5, 75)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000125', N'T0000000125', N'NCC006', N'Việt Nam', CAST(N'2018-12-17T00:00:00.000' AS DateTime), CAST(N'2020-12-16T00:00:00.000' AS DateTime), N'Hộp', N'Típ', 20, 200000, 10000, N'Ngày 2 típ', N'Dùng sau khi ăn', 0, 81)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000126', N'T0000000001', N'NCC001', N'Mỹ', CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2021-06-01T00:00:00.000' AS DateTime), N'Hộp', N'Viên', 50, 500000, 10000, N'Ngày 2 viên', N'Dùng trước khi ăn', 1, 19)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000127', N'T0000000006', N'NCC001', N'Hàn Quốc', CAST(N'2020-12-28T17:02:45.027' AS DateTime), CAST(N'2021-03-27T17:02:45.000' AS DateTime), N'Hộp', N'Lọ', 5, 5000, 1000, N'Chưa cập nhật', N'', 1, 25000)
INSERT [dbo].[LoThuoc] ([maLoThuoc], [maThuoc], [maNCC], [xuatXu], [ngaySanXuat], [hanSuDung], [donViTinh], [donViQuyDoi], [tyLeQuyDoi], [giaBanChan], [giaBanLe], [lieuLuongDung], [moTa], [VAT], [soLuongTon]) VALUES (N'LT0000000128', N'T0000000127', N'NCC004', N'Trung Quốc', CAST(N'2021-01-05T21:33:30.000' AS DateTime), CAST(N'2021-06-18T21:33:30.000' AS DateTime), N'Thùng', N'Hộp', 10, 500000, 50000, N'Chưa cập nhật', N'chưa cập nhật', 0, 499)
GO
INSERT [dbo].[NhaCungCap] ([maNCC], [tenNCC], [diaChi], [sdt], [email], [trangThai]) VALUES (N'NCC001', N'Công ty Nguyễn Thanh Tùng', N'111 Nguyễn Văn Nghi', N'0868321830', N'nguyenthanhtung@gmail.com', 1)
INSERT [dbo].[NhaCungCap] ([maNCC], [tenNCC], [diaChi], [sdt], [email], [trangThai]) VALUES (N'NCC002', N'Công ty Cao Thắng', N'222 Cao Thắng', N'0868321831', N'caothang@gmail.com', 1)
INSERT [dbo].[NhaCungCap] ([maNCC], [tenNCC], [diaChi], [sdt], [email], [trangThai]) VALUES (N'NCC003', N'Công ty Đông Nhi', N'333 Trưng Nhị', N'0868321132', N'dongnhi@gmail.com', 1)
INSERT [dbo].[NhaCungCap] ([maNCC], [tenNCC], [diaChi], [sdt], [email], [trangThai]) VALUES (N'NCC004', N'Công ty Nguyễn Bảo Khánh', N'444 Lê Quang Định', N'0868321833', N'nguyenbaokhanh@gmail.com', 1)
INSERT [dbo].[NhaCungCap] ([maNCC], [tenNCC], [diaChi], [sdt], [email], [trangThai]) VALUES (N'NCC005', N'Công ty Diệu Nhi', N'555 Phan Văn Trị', N'0868321834', N'dieunhi@gmail.com', 1)
INSERT [dbo].[NhaCungCap] ([maNCC], [tenNCC], [diaChi], [sdt], [email], [trangThai]) VALUES (N'NCC006', N'Công ty Hồ Văn Huê', N'666 Thống Nhất', N'0868321835', N'hovanhue@gmail.com', 1)
INSERT [dbo].[NhaCungCap] ([maNCC], [tenNCC], [diaChi], [sdt], [email], [trangThai]) VALUES (N'NCC007', N'Công ty Trần Dần', N'777 Trường Chinh', N'0868321836', N'trandan@gmail.com', 0)
INSERT [dbo].[NhaCungCap] ([maNCC], [tenNCC], [diaChi], [sdt], [email], [trangThai]) VALUES (N'NCC008', N'CTy Hải Nam', N'155 Nghuyễn Thái Sơn', N'0522066880', N'abc@gmail.com', 1)
INSERT [dbo].[NhaCungCap] ([maNCC], [tenNCC], [diaChi], [sdt], [email], [trangThai]) VALUES (N'NCC009', N'Cty Bảo Anh', N'155 NTS', N'0384542546', N'a@gmail.com', 0)
GO
INSERT [dbo].[NhanVien] ([maNV], [tenNV], [sdtNV], [email], [diaChi], [cMND], [matKhau], [trangThai]) VALUES (N'NV0002', N'Trương Đình Toàn', N'0368321731', N'truongdinhtoan@gmail.com', N'456 Hai Bà Trưng', N'187755061', N'1234567', 1)
INSERT [dbo].[NhanVien] ([maNV], [tenNV], [sdtNV], [email], [diaChi], [cMND], [matKhau], [trangThai]) VALUES (N'NV0003', N'Trần Hữu Thọ', N'0568255707', N'tranhuutho@gmail.com', N'567 Phạm Văn Đồng', N'187755062', N'1234567', 1)
INSERT [dbo].[NhanVien] ([maNV], [tenNV], [sdtNV], [email], [diaChi], [cMND], [matKhau], [trangThai]) VALUES (N'NV0004', N'Nguyễn Thành Nam', N'0568255708', N'nguyenthanhnam@gmail.com', N'122 Lê Duẩn', N'187755063', N'1234567', 0)
INSERT [dbo].[NhanVien] ([maNV], [tenNV], [sdtNV], [email], [diaChi], [cMND], [matKhau], [trangThai]) VALUES (N'NV0005', N'Bùi Văn An', N'0568255709', N'buivanan@gmail.com', N'224 Quang Trung', N'187755064', N'1234567', 0)
INSERT [dbo].[NhanVien] ([maNV], [tenNV], [sdtNV], [email], [diaChi], [cMND], [matKhau], [trangThai]) VALUES (N'NV0007', N'Lê Văn An', N'0522066887', N'abc@gmail.com', N'115 Nguyễn Văn Bảo', N'123456789', N'1234567', 0)
INSERT [dbo].[NhanVien] ([maNV], [tenNV], [sdtNV], [email], [diaChi], [cMND], [matKhau], [trangThai]) VALUES (N'NV0008', N'Nguyễn Văn Ba', N'0522066885', N'a@gmail.com', N'155 Nguyen ', N'258789544', N'1234567', 1)
INSERT [dbo].[NhanVien] ([maNV], [tenNV], [sdtNV], [email], [diaChi], [cMND], [matKhau], [trangThai]) VALUES (N'QL0001', N'Lê Văn Tài', N'0868321730', N'levantai@gmail.com', N'123 Phan Châu Trinh', N'187755060', N'1234567', 1)
INSERT [dbo].[NhanVien] ([maNV], [tenNV], [sdtNV], [email], [diaChi], [cMND], [matKhau], [trangThai]) VALUES (N'QL0006', N'Lê Thành Văn', N'0596066880', N'van@gmail.com', N'HCM', N'123456789', N'1234567', 1)
GO
INSERT [dbo].[NhomThuoc] ([maNhomThuoc], [tenNhomThuoc]) VALUES (N'NT001', N'Kháng Sinh')
INSERT [dbo].[NhomThuoc] ([maNhomThuoc], [tenNhomThuoc]) VALUES (N'NT002', N'Kháng Viêm')
INSERT [dbo].[NhomThuoc] ([maNhomThuoc], [tenNhomThuoc]) VALUES (N'NT003', N'Dạ Dày')
INSERT [dbo].[NhomThuoc] ([maNhomThuoc], [tenNhomThuoc]) VALUES (N'NT004', N'Tiêu Hóa')
INSERT [dbo].[NhomThuoc] ([maNhomThuoc], [tenNhomThuoc]) VALUES (N'NT005', N'Huyết Áp Tim Mạch')
INSERT [dbo].[NhomThuoc] ([maNhomThuoc], [tenNhomThuoc]) VALUES (N'NT006', N'Vitamin-Khoáng Chất')
INSERT [dbo].[NhomThuoc] ([maNhomThuoc], [tenNhomThuoc]) VALUES (N'NT007', N'Tuần Hoàn Máu Não')
INSERT [dbo].[NhomThuoc] ([maNhomThuoc], [tenNhomThuoc]) VALUES (N'NT008', N'Nhỏ Mắt')
INSERT [dbo].[NhomThuoc] ([maNhomThuoc], [tenNhomThuoc]) VALUES (N'NT009', N'Gan')
INSERT [dbo].[NhomThuoc] ([maNhomThuoc], [tenNhomThuoc]) VALUES (N'NT010', N'Thận')
INSERT [dbo].[NhomThuoc] ([maNhomThuoc], [tenNhomThuoc]) VALUES (N'NT011', N'Ngoài Da')
INSERT [dbo].[NhomThuoc] ([maNhomThuoc], [tenNhomThuoc]) VALUES (N'NT012', N'Siro Ho')
INSERT [dbo].[NhomThuoc] ([maNhomThuoc], [tenNhomThuoc]) VALUES (N'NT013', N'Thực Phẩm Chức Năng')
INSERT [dbo].[NhomThuoc] ([maNhomThuoc], [tenNhomThuoc]) VALUES (N'NT014', N'Thuốc Khác pass')
INSERT [dbo].[NhomThuoc] ([maNhomThuoc], [tenNhomThuoc]) VALUES (N'NT015', N'Thuốc Khác')
GO
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000001', N'Amoxcillin 500mg', N'NT001', 1, N'Acetylcystein', 1)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000002', N'Ampicillin 10mg', N'NT001', 1, N'Acetylleucin', 0)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000003', N'Cephalexin 15mg', N'NT001', 0, N'
Acid Alginic', 1)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000004', N'Cefuroxim 20 mg', N'NT001', 1, N'Acid amin', 1)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000005', N'Cefixim 500mg', N'NT001', 0, N'Acid Boric', 1)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000006', N'Cepodoxim 10mg', N'NT001', 1, N'Albendazol', 1)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000007', N'Erythromycin 20 mg', N'NT001', 0, N'Alcol Polyvinyl', 1)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000008', N'Clarithromycin 500mg', N'NT001', 1, N'Alimemazin tartrat', 1)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000009', N'Azithromycin 10mg', N'NT001', 1, N'Allantoin', 1)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000010', N'Spiramycin', N'NT001', 0, N'Almagat', 1)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000011', N'Roxithromycin 20 mg', N'NT001', 0, N'Ambroxol', 0)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000012', N'Tetracyclin 500mg', N'NT001', 1, N'Amyllase', 0)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000013', N'Doxycyclin', N'NT001', 0, N'Amylmetacresol', 0)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000014', N'Lincomycin', N'NT001', 1, N'Argyron', 1)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000015', N'Clindamycin 20 mg', N'NT001', 1, N'Aspartam', 0)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000016', N'Quinolon 500mg', N'NT001', 0, N'Bacillus claussi', 0)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000017', N'Ciprofloxacin 20 mg', N'NT001', 1, N'Bacitracin', 1)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000018', N'Levofloxacin 10mg', N'NT001', 0, N'Benzalkonium', 0)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000019', N'Cloramphenicol', N'NT001', 0, N'
Benzocain', 1)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000020', N'Panadol', N'NT001', 1, N'Benzoyl peroxid', 0)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000021', N'Panadol Extra 20 mg', N'NT001', 0, N'Benzyl benzoat', 0)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000022', N'Panadol Viên Sủi', N'NT001', 1, N'Berberin', 1)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000023', N'Panadol Cảm Cúm', N'NT001', 1, N'Biclotymol', 1)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000024', N'Metrodinazol 500mg', N'NT001', 0, N'Bifonazol', 0)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000025', N'Tinidazol 10mg', N'NT001', 1, N'Bisacodyl', 0)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000026', N'Aspirin 20 mg', N'NT002', 1, N'Boldin', 0)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000027', N'Diclofenac', N'NT002', 1, N'Bromelain', 1)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000028', N'Piroxicam 10mg', N'NT002', 1, N'Butoconazol', 1)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000029', N'Lbuprofen 10mg', N'NT002', 1, N'Các muối bismuth', 0)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000030', N'Meloxicam 10mg', N'NT002', 0, N'Các muối magnesi', 0)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000031', N'Celecoxid 20 mg', N'NT002', 1, N'Menthol', 1)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000032', N'Etorricoxid', N'NT002', 1, N'Calamin ', 1)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000033', N'Prednison 500mg', N'NT002', 1, N'Carbinoxamin đơn', 0)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000034', N'Prednisolon', N'NT002', 1, N'Carbocystein', 0)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000035', N'Methylprednisolon', N'NT002', 0, N'Carbomer', 1)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000036', N'Dexamethaxol 500mg', N'NT002', 0, N'Cetirizin', 0)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000037', N'Betamethaxol 20 mg', N'NT002', 1, N'Chitosan ', 0)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000038', N'Alphachymotripsin', N'NT002', 0, N'Cholin đơn chất', 0)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000039', N'Omeprazol', N'NT003', 1, N'Chondroitin đơn chất', 1)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000040', N'Lansoprazol 20 mg', N'NT003', 0, N'Ciclopirox olamin', 0)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000041', N'Pantoprazol', N'NT003', 1, N'Cinchocain phối hợp', 0)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000042', N'Rabeprazol', N'NT003', 1, N'Neomycin', 0)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000043', N'Esomeprazol', N'NT003', 1, N'Hydrocortison', 1)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000044', N'Yumangel', N'NT003', 0, N'Dexbrompheniramin', 0)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000045', N'Phosphalugel  20 mg', N'NT003', 1, N'Dexibuprofen', 1)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000046', N'Gastropulgite  10mg', N'NT003', 0, N'
Diclofenac', 0)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000047', N'Herbal Stomax 10mg', N'NT003', 1, N'Hesperidin', 0)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000048', N'Thiên An Vị', N'NT003', 0, N'Diphenhydramin', 1)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000049', N'Prilosec OTC', N'NT003', 1, N'Ethanol đơn chất', 0)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000050', N'Enterogemina', N'NT004', 0, N'Etofenamat', 1)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000051', N'Probio', N'NT004', 0, N'Fenticonazol', 1)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000052', N'Lactomin', N'NT004', 1, N'Flurbiprofen', 0)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000053', N'Air-X', N'NT004', 0, N'Glucosamin ', 1)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000054', N'Neopeptine', N'NT004', 1, N'Glycerin đơn chất', 0)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000055', N'PepZiz Motilium-M', N'NT004', 1, N'Polysorbat 80', 1)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000056', N'Maalox', N'NT004', 0, N'Hexamidin ', 0)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000057', N'Cyclovalon', N'NT004', 0, N'Benzydamin', 0)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000058', N'Dung dịch oresol', N'NT004', 0, N'Tinh dầu', 1)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000059', N'Amlodpin', N'NT005', 1, N'Cetylpyridinum', 0)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000060', N'Nifedipin', N'NT005', 1, N'Hydrocortison ', 0)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000061', N'Captoril', N'NT005', 0, N'Hydrogen Peroxid', 1)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000062', N'Losarstan', N'NT005', 1, N'Hydrotalcit', 0)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000063', N'Nitromin', N'NT005', 1, N'Ibuprofen', 1)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000064', N'Concor', N'NT005', 0, N'Ichthammol', 0)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000065', N'Conversyl', N'NT005', 1, N'Isoconazol', 1)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000066', N'Bisoprolol', N'NT005', 1, N'Ketoprofen', 0)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000067', N'Vastarel MR', N'NT005', 0, N'Kẽm sulfat', 0)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000068', N'Captopril', N'NT005', 1, N'Lactitol', 0)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000069', N'Hapanix  500mg', N'NT005', 0, N'
Lactoserum', 0)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000070', N'Losartan', N'NT005', 1, N'Levocetirizin', 1)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000071', N'Felodipine', N'NT005', 1, N'
Loratadin đơn chất', 0)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000072', N'B1', N'NT006', 0, N'Loxoprofen', 1)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000073', N'B6', N'NT006', 0, N'Macrogol', 0)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000074', N'3B : noubiron', N'NT006', 1, N'Magaldrat ', 1)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000075', N'C: 100mg', N'NT006', 1, N'Mangiferin', 0)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000076', N'C: 500mg', N'NT006', 0, N'Mebendazol', 1)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000077', N'Zn: Fanzincol', N'NT006', 1, N'Men nấm', 1)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000078', N'Fe: Obimin 500mg', N'NT006', 0, N'Mequinol', 0)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000079', N'Fe: Ferrovit', N'NT006', 0, N'Mequitazin', 1)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000080', N'Canxi: Sandoz', N'NT006', 0, N'Miconazol', 1)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000081', N'Enat 400', N'NT006', 1, N'Minoxidil', 0)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000082', N'Ecap Nhật bản 400', N'NT006', 0, N'Mupirocin', 1)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000083', N'Betaserc', N'NT007', 1, N'Naproxen', 1)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000084', N'Cinarizin', N'NT007', 1, N'Natri benzoat', 0)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000085', N'Flunarizin', N'NT007', 0, N'Natri clorid', 1)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000086', N'Tanakan', N'NT007', 1, N'Natri Docusat', 1)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000087', N'Piracitam', N'NT007', 0, N'Natri Salicylat', 0)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000088', N'Ginkobiola', N'NT007', 0, N'Nomahydrated', 1)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000089', N'Meken', N'NT007', 1, N'Nystatin', 0)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000090', N'Hoạt huyết dưỡng não', N'NT007', 0, N'Oxeladin', 0)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000091', N'Nacl 0,9%', N'NT008', 1, N'Oxymemazin', 1)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000092', N'Osla 500mg', N'NT008', 1, N'Oxymetazolin', 1)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000093', N'Refresh ', N'NT008', 0, N'Panthenol', 1)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000094', N'Neodex 500mg', N'NT008', 1, N'Paracetamol', 1)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000095', N'Dexacol', N'NT008', 0, N'Pentoxyverin', 0)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000096', N'Tetracyclin tra mắt', N'NT008', 1, N'Brompheniramin', 1)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000097', N'Ciprofloxacin 0,3%', N'NT008', 0, N'Clorpheniramin', 1)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000098', N'Bar 500mg', N'NT009', 1, N'Pentoxyverin', 0)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000099', N'Boganic', N'NT009', 0, N'Phenylephrin HCl', 1)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000100', N'Tonka', N'NT009', 0, N'Phospholipid', 0)
GO
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000101', N'Bảo Nguyên', N'NT009', 0, N'Picloxydin', 0)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000102', N'An Khang', N'NT009', 1, N'Piroxicam', 1)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000103', N'Rowatinex 500mg', N'NT010', 1, N'Policresulen ', 1)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000104', N'Kim Tiền Thảo', N'NT010', 0, N'Polymethylen glycol', 0)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000105', N'Mãnh Lực Trường Xuân', N'NT010', 0, N'Polysacharid', 0)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000106', N'Dương Nhất Nhất
', N'NT010', 1, N'Povidon Iodin', 1)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000107', N'Nam Dược', N'NT010', 1, N'Pyrantel', 1)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000108', N'Silkron', N'NT011', 0, N'Saccharomyces ', 0)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000109', N'Gentrison', N'NT011', 1, N'Selen hữu cơ', 0)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000110', N'Tomax', N'NT011', 0, N'Vitamin, khoáng chất', 1)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000111', N'Kedermfa 500mg', N'NT011', 1, N'Selen sulfid', 1)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000112', N'Aciclovir', N'NT011', 1, N'
Sorbitol đơn chất', 1)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000113', N'Astex', N'NT012', 0, N'Sterculia', 1)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000114', N'Propan', N'NT012', 1, N'Sucralfat', 0)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000115', N'Ho Bảo Thanh 500mg', N'NT012', 0, N'Sulbutiamin', 1)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000116', N'Pectol', N'NT012', 1, N'Terbinafin', 0)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000117', N'Bổ phế Nam Hà v1', N'NT012', 1, N'Terpin đơn chất', 1)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000118', N'Tràng Phục Linh', N'NT013', 0, N'Tetrahydrozolin', 1)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000119', N'Bio-acimin', N'NT013', 1, N'Tolnaftat', 0)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000120', N'Viên Vai Gáy', N'NT013', 0, N'Triclosan đơn chất', 0)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000121', N'Rocket', N'NT013', 1, N'Guaiphenesin', 1)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000122', N'uân nữ bổ huyết cao', N'NT013', 0, N'Tyrothricin phối hợp', 1)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000123', N'Sâm alipas', N'NT013', 1, N'Urea đơn chất', 0)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000124', N'Jex', N'NT013', 0, N'Betacaroten', 1)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000125', N'Trà Tâm Lan', N'NT013', 1, N'Xanh Methylen', 0)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000126', N'EFTICOL', N'NT008', 0, N'Natri clorid', 1)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000127', N'Vitamin A+', N'NT014', 1, N'Vitamin A+', 1)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000128', N'Thuốc đặc biệt', N'NT015', 1, N'Chưa biết', 1)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000129', N'Thuốc đặc biệt + ', N'NT015', 1, N'Chưa biết', 1)
INSERT [dbo].[Thuoc] ([maThuoc], [tenThuoc], [maNhomThuoc], [loaiThuoc], [hoatChatChinh], [trangThai]) VALUES (N'T0000000130', N'Thuốc đặc biệt + +', N'NT015', 1, N'Chưa biết', 1)
GO
ALTER TABLE [dbo].[CT_HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_CT_HoaDon_HoaDon] FOREIGN KEY([maHD])
REFERENCES [dbo].[HoaDon] ([maHD])
GO
ALTER TABLE [dbo].[CT_HoaDon] CHECK CONSTRAINT [FK_CT_HoaDon_HoaDon]
GO
ALTER TABLE [dbo].[CT_HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_CT_HoaDon_Thuoc] FOREIGN KEY([maThuoc])
REFERENCES [dbo].[Thuoc] ([maThuoc])
GO
ALTER TABLE [dbo].[CT_HoaDon] CHECK CONSTRAINT [FK_CT_HoaDon_Thuoc]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhachHang] FOREIGN KEY([maKH])
REFERENCES [dbo].[KhachHang] ([maKH])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_KhachHang]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_NhanVien] FOREIGN KEY([maNV])
REFERENCES [dbo].[NhanVien] ([maNV])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_NhanVien]
GO
ALTER TABLE [dbo].[LoThuoc]  WITH CHECK ADD  CONSTRAINT [FK_LoThuoc_NhaCungCap] FOREIGN KEY([maNCC])
REFERENCES [dbo].[NhaCungCap] ([maNCC])
GO
ALTER TABLE [dbo].[LoThuoc] CHECK CONSTRAINT [FK_LoThuoc_NhaCungCap]
GO
ALTER TABLE [dbo].[LoThuoc]  WITH CHECK ADD  CONSTRAINT [FK_LoThuoc_Thuoc] FOREIGN KEY([maThuoc])
REFERENCES [dbo].[Thuoc] ([maThuoc])
GO
ALTER TABLE [dbo].[LoThuoc] CHECK CONSTRAINT [FK_LoThuoc_Thuoc]
GO
ALTER TABLE [dbo].[Thuoc]  WITH CHECK ADD  CONSTRAINT [FK_Thuoc_NhomThuoc] FOREIGN KEY([maNhomThuoc])
REFERENCES [dbo].[NhomThuoc] ([maNhomThuoc])
GO
ALTER TABLE [dbo].[Thuoc] CHECK CONSTRAINT [FK_Thuoc_NhomThuoc]
GO
USE [master]
GO
ALTER DATABASE [QLQBT] SET  READ_WRITE 
GO
