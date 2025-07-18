
USE [DOAN3]
GO
/****** Object:  Table [dbo].[AnhSanPhams]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnhSanPhams](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MaSanPham] [int] NULL,
	[LinkAnh] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietHoaDonNhaps]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDonNhaps](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MaHoaDon] [int] NULL,
	[MaSanPham] [int] NULL,
	[SoLuong] [int] NULL,
	[DonViTinh] [nvarchar](50) NULL,
	[GiaNhap] [decimal](18, 0) NULL,
	[TongGia] [decimal](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietHoaDons]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDons](
	[MaChiTietHoaDon] [int] IDENTITY(1,1) NOT NULL,
	[MaHoaDon] [int] NULL,
	[MaSanPham] [int] NULL,
	[SoLuong] [int] NULL,
	[TongGia] [decimal](18, 0) NULL,
	[DonGia] [decimal](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaChiTietHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietSanPhams]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietSanPhams](
	[MaChiTietSanPham] [int] IDENTITY(1,1) NOT NULL,
	[MaSanPham] [int] NULL,
	[MaNhaSanXuat] [int] NULL,
	[MoTa] [nvarchar](max) NULL,
	[ChiTiet] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaChiTietSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietTaiKhoans]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietTaiKhoans](
	[MaChitietTaiKhoan] [int] IDENTITY(1,1) NOT NULL,
	[MaTaiKhoan] [int] NULL,
	[MaLoaitaikhoan] [int] NULL,
	[HoTen] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](250) NULL,
	[SoDienThoai] [nvarchar](11) NULL,
	[AnhDaiDien] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaChitietTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhGia]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhGia](
	[MaDanhGia] [int] IDENTITY(1,1) NOT NULL,
	[MaSanPham] [int] NULL,
	[MaTaiKhoan] [int] NULL,
	[ChatLuong] [float] NULL,
	[NoiDung] [nvarchar](max) NULL,
	[TrangThai] [bit] NULL,
	[ThoiGian] [datetime] NULL,
	[AnhDanhGia] [nvarchar](max) NULL,
	[GhiChu] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDanhGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhMucs]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMucs](
	[MaDanhMuc] [int] IDENTITY(1,1) NOT NULL,
	[TenDanhMuc] [nvarchar](50) NULL,
	[DacBiet] [bit] NULL,
	[NoiDung] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDanhMuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhMucUudais]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMucUudais](
	[Madanhmucuudai] [int] IDENTITY(1,1) NOT NULL,
	[Tendanhmucuudai] [nvarchar](250) NULL,
	[DacBiet] [bit] NULL,
	[NoiDung] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Madanhmucuudai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HangSanXuats]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HangSanXuats](
	[MaNhaSanXuat] [int] IDENTITY(1,1) NOT NULL,
	[TenHang] [nvarchar](50) NULL,
	[LinkWeb] [nvarchar](max) NULL,
	[AnhDaiDien] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNhaSanXuat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDonNhaps]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonNhaps](
	[MaHoaDon] [int] IDENTITY(1,1) NOT NULL,
	[MaNhaPhanPhoi] [int] NULL,
	[NgayTao] [datetime] NULL,
	[KieuThanhToan] [nvarchar](max) NULL,
	[MaTaiKhoan] [int] NULL,
	[TongTien] [decimal](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE HoaDonNhaps
ADD CONSTRAINT DF_HoaDonNhaps_NgayTao DEFAULT GETDATE() FOR NgayTao;

/****** Object:  Table [dbo].[HoaDons]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDons](
	[MaHoaDon] [int] IDENTITY(1,1) NOT NULL,
	[NgayTao] [datetime] NULL,
	[TongGia] [decimal](18, 0) NULL,
	[TenKH] [nvarchar](50) NULL,
	[Diachi] [nvarchar](250) NULL,
	[Email] [nvarchar](50) NULL,
	[SDT] [nvarchar](50) NULL,
	[DiaChiGiaoHang] [nvarchar](350) NULL,
	[MaTaiKhoan] [int] NULL,
	[TrangThai] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE HoaDons
ADD CONSTRAINT DF_HoaDons_NgayTao DEFAULT GETDATE() FOR NgayTao;

/****** Object:  Table [dbo].[LoaiTaiKhoans]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiTaiKhoans](
	[MaLoaitaikhoan] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](50) NULL,
	[MoTa] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoaitaikhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaPhanPhois]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaPhanPhois](
	[MaNhaPhanPhoi] [int] IDENTITY(1,1) NOT NULL,
	[TenNhaPhanPhoi] [nvarchar](250) NULL,
	[DiaChi] [nvarchar](max) NULL,
	[SoDienThoai] [nvarchar](50) NULL,
	[MoTa] [nvarchar](max) NULL,
	[LinkWeb] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNhaPhanPhoi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuangCaos]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuangCaos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AnhDaiDien] [nvarchar](max) NULL,
	[LinkQuangCao] [nvarchar](max) NULL,
	[MoTa] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPhams]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPhams](
	[MaSanPham] [int] IDENTITY(1,1) NOT NULL,
	[MaDanhMuc] [int] NULL,
	[Madanhmucuudai] [int] NULL,
	[TenSanPham] [nvarchar](150) NULL,
	[AnhDaiDien] [nvarchar](max) NULL,
	[Gia] [decimal](18, 0) NULL,
	[GiaGiam] [decimal](18, 0) NULL,
	[SoLuong] [int] NULL,
	[TrangThai] [bit] NULL,
	[LuotXem] [int] NULL,
	[TrongLuong] [nvarchar](100) NULL,
	[XuatXu] [nvarchar](50) NULL,
	[LuotBan] [int] NULL,
	[DanhGia] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPhams_NhaPhanPhois]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPhams_NhaPhanPhois](
	[MaSanPham] [int] NOT NULL,
	[MaNhaPhanPhoi] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SlideDetail]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SlideDetail](
	[MaAnh] [int] IDENTITY(1,1) NOT NULL,
	[TieuDe] [nvarchar](max) NULL,
	[MoTa] [nvarchar](max) NULL,
	[LinkAnh] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaAnh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoans]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoans](
	[MaTaiKhoan] [int] IDENTITY(1,1) NOT NULL,
	[TenTaiKhoan] [nvarchar](50) NULL,
	[MatKhau] [nvarchar](50) NULL,
	[Email] [nvarchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TinTucs]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinTucs](
	[MaTinTuc] [int] IDENTITY(1,1) NOT NULL,
	[TieuDe] [nvarchar](max) NULL,
	[NoiDung] [nvarchar](max) NULL,
	[HinhAnh] [nvarchar](max) NULL,
	[MaTaiKhoan] [int] NULL,
	[LuotXem] [int] NULL,
	[TrangThai] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTinTuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AnhSanPhams] ON 

INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (143, 87, N'../img/tem-phu-gel-rua-mat-la-roche-posay-danh-cho-da-dau-nhay-cam-200ml-1663663318_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (144, 87, N'../img/tem-phu-204900004-16625343102767_img_358x358_843626_fit_center.png')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (145, 88, N'../img/google-shopping-gel-rua-mat-svr-khong-chua-xa-phong-cho-da-dau-400ml-1-1649227732_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (146, 88, N'../img/google-shopping-bo-doi-svr-lam-sach-cho-da-dau-mun-1664168172_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (147, 88, N'../img/gel-rua-mat-svr-khong-chua-xa-phong-cho-da-dau-400ml-doi-mau-1649227920_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (148, 88, N'../img/cv---song-hanh---svr-sebiaclear-gel-moussant-400ml-1672387396_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (149, 89, N'../img/tem-phu-sua-rua-mat-cetaphil-diu-nhe-khong-xa-phong-500ml-moi-1663584050_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (150, 89, N'../img/sua-rua-mat-cetaphil-diu-nhe-khong-xa-phong-500ml-moi-3-1684727435_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (151, 89, N'../img/sua-rua-mat-cetaphil-diu-nhe-khong-xa-phong-500ml-moi-1-1684727436_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (152, 89, N'../img/promotions-auto-sua-rua-mat-cetaphil-diu-nhe-khong-xa-phong-500ml-moi_coGCbcu47pvTFnkk_img_358x358_843626_fit_center.png')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (153, 90, N'../img/tem-phu-gel-rua-mat-cosrx-tram-tra-0-5-bha-co-do-ph-thap-150ml_3_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (154, 90, N'../img/mat-sau-gel-rua-mat-cosrx-tram-tra-0-5-bha-co-do-ph-thap-150ml-1695698669_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (155, 90, N'../img/gel-rua-mat-cosrx-tram-tra-0-5-bha-co-do-ph-thap-150ml-3_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (156, 90, N'../img/gel-rua-mat-cosrx-tram-tra-0-5-bha-co-do-ph-thap-150ml-2_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (157, 91, N'../img/tem-phu_422208973-1681801240_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (158, 91, N'../img/sua-rua-mat-cerave-sach-sau-cho-da-thuong-den-da-dau-473ml-1-1660555475_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (159, 91, N'../img/mat-sau-sua-rua-mat-cerave-sach-sau-cho-da-thuong-den-da-dau-473ml-1695090634_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (160, 92, N'../img/tem-phu_422208973-1681801240_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (161, 92, N'../img/promotions-auto-gel-rua-mat-la-roche-posay-cho-da-dau-nhay-cam-400ml_wRzvzBt28bEwV86s_img_358x358_843626_fit_center.png')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (162, 92, N'../img/gel-rua-mat-la-roche-posay-cho-da-dau-nhay-cam-400ml-4-1663661433_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (163, 93, N'../img/promotions-auto-gel-rua-mat-danh-cho-da-nhay-cam-simple-150ml_aCS18bb5QbK9A9Nk_img_358x358_843626_fit_center.png')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (164, 93, N'../img/gel-rua-mat-danh-cho-da-nhay-cam-simple-150ml-6-1673580539_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (165, 93, N'../img/gel-rua-mat-danh-cho-da-nhay-cam-simple-150ml-1-1673580537_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (166, 94, N'../img/sua-rua-mat-simple-kiem-dau-ngua-mun-cho-da-mun-150ml-1676456883_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (167, 94, N'../img/sua-rua-mat-simple-kiem-dau-ngua-mun-cho-da-mun-150ml-4-1676456885_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (168, 94, N'../img/facebook-dynamic-422206248-1695108182_img_358x358_843626_fit_center.png')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (169, 95, N'../img/kem-rua-mat-hada-labo-duong-sang-da-80g-4-1679279948_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (170, 95, N'../img/kem-rua-mat-hada-labo-duong-sang-da-80g-3-1679279948_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (171, 95, N'../img/kem-rua-mat-hada-labo-duong-sang-da-80g-2-1679279947_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (172, 95, N'../img/kem-rua-mat-hada-labo-duong-sang-da-80g-1-1679279947_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (173, 96, N'../img/tem-phu_422211389-1679718769_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (174, 96, N'../img/gel-rua-mat-bioderma-danh-cho-da-dau-hon-hop-500ml-1677731292_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (175, 96, N'../img/gel-rua-mat-bioderma-danh-cho-da-dau-hon-hop-500ml-2-1677731293_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (176, 96, N'../img/gel-rua-mat-bioderma-danh-cho-da-dau-hon-hop-500ml-1-1677731293_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (177, 97, N'')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (178, 98, N'../img/nuoc-hoa-hong-khong-mui-klairs-danh-cho-da-nhay-cam-180ml-2-1681723600_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (179, 98, N'../img/nuoc-hoa-hong-khong-mui-klairs-danh-cho-da-nhay-cam-180ml-1-1681723599_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (180, 99, N'../img/nuoc-hoa-hong-simple-danh-cho-da-nhay-cam-200ml-4-1677139615_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (181, 99, N'../img/nuoc-hoa-hong-simple-danh-cho-da-nhay-cam-200ml-2-1677139614_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (182, 99, N'../img/nuoc-hoa-hong-simple-danh-cho-da-nhay-cam-200ml-1-1677139614_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (183, 100, N'../img/nuoc-hoa-hong-some-by-mi-cho-da-mun-150ml-1694839516_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (184, 100, N'../img/nuoc-hoa-hong-some-by-mi-cho-da-mun-150ml-2-1694839517_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (185, 101, N'../img/nuoc-hoa-hong-klairs-danh-cho-da-nhay-cam-180ml-1681724593_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (186, 101, N'../img/nuoc-hoa-hong-klairs-danh-cho-da-nhay-cam-180ml-3-1681724625_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (187, 101, N'../img/nuoc-hoa-hong-klairs-danh-cho-da-nhay-cam-180ml-2-1681724624_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (188, 102, N'../img/nuoc-hoa-hong-dr-pepti-duong-da-cang-bong-180ml-2-1651745104_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (189, 102, N'../img/nuoc-hoa-hong-dr-pepti-duong-da-cang-bong-180ml-1-1651745105_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (190, 102, N'../img/google-shopping-nuoc-hoa-hong-dr-pepti-duong-da-cang-bong-180ml-1655952167_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (191, 103, N'../img/nuoc-hoa-hong-bioderma-danh-cho-da-nhay-cam-250ml-doi-mau-2021_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (192, 103, N'../img/google-shopping-nuoc-hoa-hong-bioderma-danh-cho-da-nhay-cam-250ml-1_1_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (193, 104, N'../img/kem-chong-nang-la-roche-posay-kiem-soat-dau-spf50-50ml-phien-ban-moi-1691995541_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (194, 104, N'../img/kem-chong-nang-la-roche-posay-kiem-soat-dau-spf50-50ml-phien-ban-moi-2-1691995540_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (195, 104, N'../img/kem-chong-nang-la-roche-posay-kiem-soat-dau-spf50-50ml-phien-ban-moi-1-1691995541_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (196, 105, N'../img/kem-chong-nang-skin1004-cho-da-nhay-cam-spf-50-50ml-1_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (197, 105, N'../img/kem-chong-nang-skin1004-cho-da-nhay-cam-spf-50-50ml_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (198, 105, N'../img/kem-chong-nang-skin1004-chiet-xuat-rau-ma-spf50-pa-50ml-7_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (199, 105, N'../img/google-shopping-kem-chong-nang-skin1004-chiet-xuat-rau-ma-spf50-pa-50ml-1_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (200, 106, N'../img/kem-chong-nang-martiderm-pho-rong-toan-dien-spf50-40ml_4_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (201, 106, N'../img/kem-chong-nang-martiderm-pho-rong-toan-dien-spf50-40ml_2_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (202, 106, N'../img/facebook-dynamic-422200236-1695637682_img_358x358_843626_fit_center.png')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (203, 107, N'../img/tem-phu_422206430-1658483466_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (204, 107, N'../img/sua-chong-nang-anessa-duong-da-kiem-dau-bao-ve-hoan-hao-60ml-1689836804_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (205, 108, N'../img/kem-chong-nang-eucerin-cho-da-nhon-mun-50ml-1-1658227880_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (206, 108, N'../img/kem-chong-nang-eucerin-cho-da-nhon-mun-50ml-1_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (207, 108, N'../img/google-shopping-kem-chong-nang-eucerin-cho-da-nhon-mun-50ml-1658221792_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (208, 108, N'../img/facebook-dynamic-204100003-1700039895_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (209, 109, N'../img/tinh-chat-l-oreal-hyaluronic-acid-cap-am-sang-da-30ml-11_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (210, 109, N'../img/tinh-chat-l-oreal-hyaluronic-acid-cap-am-sang-da-30ml-10_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (211, 109, N'../img/tinh-chat-l-oreal-hyaluronic-acid-cap-am-sang-da-30ml-9_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (212, 110, N'../img/tinh-chat-garnier-giam-mun-mo-tham-cho-da-dau-mun-30ml-6-1660021004_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (213, 110, N'../img/tinh-chat-garnier-giam-mun-mo-tham-cho-da-dau-mun-30ml-5-1660021004_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (214, 110, N'../img/tinh-chat-garnier-giam-mun-mo-tham-cho-da-dau-mun-30ml-4-1660021004_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (215, 110, N'../img/tinh-chat-garnier-giam-mun-mo-tham-cho-da-dau-mun-30ml-3-1660021004_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (216, 111, N'../img/tinh-chat-goodndoc-duong-am-ho-tro-phuc-hoi-da-30ml-4_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (217, 111, N'../img/tinh-chat-goodndoc-duong-am-ho-tro-phuc-hoi-da-30ml-3_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (218, 111, N'../img/tinh-chat-goodndoc-duong-am-ho-tro-phuc-hoi-da-30ml-2_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (219, 111, N'../img/tinh-chat-goodndoc-duong-am-ho-tro-phuc-hoi-da-30ml_doi-mau-2021_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (220, 112, N'../img/tinh-chat-oh-oh-duong-sang-da-giam-tham-nam-30ml-4-1681098482_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (221, 112, N'../img/tinh-chat-oh-oh-duong-sang-da-giam-tham-nam-30ml-3-1681098481_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (222, 112, N'../img/tinh-chat-oh-oh-duong-sang-da-giam-tham-nam-30ml-1-1681098480_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (223, 113, N'../img/serum-l-oreal-paris-glycolic-duong-sang-va-mo-tham-nam-30ml-1684989510_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (224, 113, N'../img/serum-l-oreal-paris-glycolic-duong-sang-va-mo-tham-nam-30ml-2-1684989511_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (225, 113, N'../img/serum-l-oreal-paris-glycolic-duong-sang-va-mo-tham-nam-30ml-1-1684989511_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (226, 114, N'../img/tinh-chat-skin1004-rau-ma-giam-mun-phuc-hoi-da-100ml-1-1646014793_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (227, 114, N'../img/tinh-chat-rau-ma-skin1004-ho-tro-giam-mun-phuc-hoi-da-100ml-4_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (228, 114, N'../img/tinh-chat-rau-ma-skin1004-ho-tro-giam-mun-phuc-hoi-da-100ml-3_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (229, 114, N'../img/tem-phu-tinh-chat-rau-ma-skin1004-ho-tro-giam-mun-phuc-hoi-da-100ml-1690184018_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (230, 115, N'../img/tinh-chat-la-roche-posay-phuc-hoi-do-am-san-chac-da-30ml-1663927791_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (231, 115, N'../img/tinh-chat-la-roche-posay-phuc-hoi-do-am-san-chac-da-30ml-2-1663927791_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (232, 115, N'../img/tinh-chat-la-roche-posay-phuc-hoi-do-am-san-chac-da-30ml-1-1663927791_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (233, 115, N'../img/tem-phu-tinh-chat-la-roche-posay-ho-tro-phuc-hoi-da-30ml-1666769612_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (234, 116, N'../img/tinh-chat-svr-lam-giam-mun-mo-nam-lam-mem-min-da-30ml-1672391745-1696655014_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (235, 116, N'../img/tinh-chat-svr-lam-giam-mun-mo-nam-lam-mem-min-da-30ml-1-1672391745_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (236, 116, N'../img/google-shopping-tinh-chat-svr-lam-giam-mun-mo-nam-lam-mem-min-da-30ml-1672391841_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (237, 117, N'../img/tinh-chat-lam-sang-da-klairs-vitamin-c-35ml-2-1681961970_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (238, 117, N'../img/tinh-chat-lam-sang-da-klairs-vitamin-c-35ml-1-1681961969_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (239, 118, N'../img/tinh-chat-paula-s-choice-se-khit-lo-chan-long-toi-uu-20ml-3_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (240, 118, N'../img/tinh-chat-paula-s-choice-se-khit-lo-chan-long-toi-uu-20ml-1_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (241, 118, N'../img/google-shopping-tinh-chat-paula-s-choice-se-khit-lo-chan-long-toi-uu-20ml_img_358x358_843626_fit_center.jpg')
GO
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (242, 119, N'../img/tem-phu-serum-vichy-khoang-phuc-hoi-chuyen-sau-mineral-89-50ml-1663745216_img_358x358_843626_fit_center.jpg')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (243, 119, N'../img/duong-chat-khoang-co-dac-vichy-mineral-89-phuc-hoi-bao-ve-da-50ml-1695027961_img_358x358_843626_fit_center.png')
INSERT [dbo].[AnhSanPhams] ([Id], [MaSanPham], [LinkAnh]) VALUES (244, 119, N'../img/duong-chat-khoang-co-dac-vichy-mineral-89-phuc-hoi-bao-ve-da-50ml-1672909349_img_358x358_843626_fit_center.jpg')
SET IDENTITY_INSERT [dbo].[AnhSanPhams] OFF
GO
SET IDENTITY_INSERT [dbo].[ChiTietHoaDonNhaps] ON 

INSERT [dbo].[ChiTietHoaDonNhaps] ([Id], [MaHoaDon], [MaSanPham], [SoLuong], [DonViTinh], [GiaNhap], [TongGia]) VALUES (59, 48, 87, 100, N'chai', CAST(240000 AS Decimal(18, 0)), CAST(24000000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDonNhaps] ([Id], [MaHoaDon], [MaSanPham], [SoLuong], [DonViTinh], [GiaNhap], [TongGia]) VALUES (60, 48, 88, 130, N'chai', CAST(320000 AS Decimal(18, 0)), CAST(41600000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDonNhaps] ([Id], [MaHoaDon], [MaSanPham], [SoLuong], [DonViTinh], [GiaNhap], [TongGia]) VALUES (61, 49, 89, 50, N'chai', CAST(230000 AS Decimal(18, 0)), CAST(11500000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDonNhaps] ([Id], [MaHoaDon], [MaSanPham], [SoLuong], [DonViTinh], [GiaNhap], [TongGia]) VALUES (62, 50, 90, 50, N'chai', CAST(180000 AS Decimal(18, 0)), CAST(9000000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDonNhaps] ([Id], [MaHoaDon], [MaSanPham], [SoLuong], [DonViTinh], [GiaNhap], [TongGia]) VALUES (63, 51, 91, 50, N'chai', CAST(350000 AS Decimal(18, 0)), CAST(17500000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDonNhaps] ([Id], [MaHoaDon], [MaSanPham], [SoLuong], [DonViTinh], [GiaNhap], [TongGia]) VALUES (64, 51, 92, 50, N'chai', CAST(280000 AS Decimal(18, 0)), CAST(14000000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDonNhaps] ([Id], [MaHoaDon], [MaSanPham], [SoLuong], [DonViTinh], [GiaNhap], [TongGia]) VALUES (65, 51, 93, 50, N'chai', CAST(80000 AS Decimal(18, 0)), CAST(4000000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDonNhaps] ([Id], [MaHoaDon], [MaSanPham], [SoLuong], [DonViTinh], [GiaNhap], [TongGia]) VALUES (66, 51, 94, 50, N'lọ', CAST(80000 AS Decimal(18, 0)), CAST(4000000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDonNhaps] ([Id], [MaHoaDon], [MaSanPham], [SoLuong], [DonViTinh], [GiaNhap], [TongGia]) VALUES (67, 52, 95, 50, N'chai', CAST(110000 AS Decimal(18, 0)), CAST(5500000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDonNhaps] ([Id], [MaHoaDon], [MaSanPham], [SoLuong], [DonViTinh], [GiaNhap], [TongGia]) VALUES (68, 53, 96, 50, N'chai', CAST(330000 AS Decimal(18, 0)), CAST(16500000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDonNhaps] ([Id], [MaHoaDon], [MaSanPham], [SoLuong], [DonViTinh], [GiaNhap], [TongGia]) VALUES (69, 54, 97, 50, N'chai', CAST(270000 AS Decimal(18, 0)), CAST(13500000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDonNhaps] ([Id], [MaHoaDon], [MaSanPham], [SoLuong], [DonViTinh], [GiaNhap], [TongGia]) VALUES (70, 55, 98, 80, N'chai', CAST(190000 AS Decimal(18, 0)), CAST(15200000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDonNhaps] ([Id], [MaHoaDon], [MaSanPham], [SoLuong], [DonViTinh], [GiaNhap], [TongGia]) VALUES (71, 56, 99, 60, N'lọ', CAST(260000 AS Decimal(18, 0)), CAST(15600000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDonNhaps] ([Id], [MaHoaDon], [MaSanPham], [SoLuong], [DonViTinh], [GiaNhap], [TongGia]) VALUES (72, 57, 100, 50, N'lọ', CAST(240000 AS Decimal(18, 0)), CAST(12000000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDonNhaps] ([Id], [MaHoaDon], [MaSanPham], [SoLuong], [DonViTinh], [GiaNhap], [TongGia]) VALUES (73, 58, 101, 50, N'lọ', CAST(280000 AS Decimal(18, 0)), CAST(14000000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDonNhaps] ([Id], [MaHoaDon], [MaSanPham], [SoLuong], [DonViTinh], [GiaNhap], [TongGia]) VALUES (74, 59, 102, 60, N'lọ', CAST(250000 AS Decimal(18, 0)), CAST(15000000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDonNhaps] ([Id], [MaHoaDon], [MaSanPham], [SoLuong], [DonViTinh], [GiaNhap], [TongGia]) VALUES (75, 60, 103, 50, N'lọ', CAST(330000 AS Decimal(18, 0)), CAST(16500000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDonNhaps] ([Id], [MaHoaDon], [MaSanPham], [SoLuong], [DonViTinh], [GiaNhap], [TongGia]) VALUES (76, 61, 104, 50, N'lọ', CAST(320000 AS Decimal(18, 0)), CAST(16000000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDonNhaps] ([Id], [MaHoaDon], [MaSanPham], [SoLuong], [DonViTinh], [GiaNhap], [TongGia]) VALUES (77, 62, 105, 50, N'lọ', CAST(310000 AS Decimal(18, 0)), CAST(15500000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDonNhaps] ([Id], [MaHoaDon], [MaSanPham], [SoLuong], [DonViTinh], [GiaNhap], [TongGia]) VALUES (78, 62, 106, 50, N'lọ', CAST(310000 AS Decimal(18, 0)), CAST(15500000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDonNhaps] ([Id], [MaHoaDon], [MaSanPham], [SoLuong], [DonViTinh], [GiaNhap], [TongGia]) VALUES (79, 62, 107, 50, N'lọ', CAST(290000 AS Decimal(18, 0)), CAST(14500000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDonNhaps] ([Id], [MaHoaDon], [MaSanPham], [SoLuong], [DonViTinh], [GiaNhap], [TongGia]) VALUES (80, 62, 108, 50, N'lọ', CAST(320000 AS Decimal(18, 0)), CAST(16000000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDonNhaps] ([Id], [MaHoaDon], [MaSanPham], [SoLuong], [DonViTinh], [GiaNhap], [TongGia]) VALUES (81, 61, 109, 50, N'chai', CAST(350000 AS Decimal(18, 0)), CAST(17500000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDonNhaps] ([Id], [MaHoaDon], [MaSanPham], [SoLuong], [DonViTinh], [GiaNhap], [TongGia]) VALUES (82, 61, 110, 50, N'lọ', CAST(240000 AS Decimal(18, 0)), CAST(12000000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDonNhaps] ([Id], [MaHoaDon], [MaSanPham], [SoLuong], [DonViTinh], [GiaNhap], [TongGia]) VALUES (83, 61, 111, 50, N'chai', CAST(370000 AS Decimal(18, 0)), CAST(18500000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDonNhaps] ([Id], [MaHoaDon], [MaSanPham], [SoLuong], [DonViTinh], [GiaNhap], [TongGia]) VALUES (84, 62, 112, 60, N'lọ', CAST(520000 AS Decimal(18, 0)), CAST(31200000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDonNhaps] ([Id], [MaHoaDon], [MaSanPham], [SoLuong], [DonViTinh], [GiaNhap], [TongGia]) VALUES (85, 62, 113, 60, N'lọ', CAST(370000 AS Decimal(18, 0)), CAST(22200000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDonNhaps] ([Id], [MaHoaDon], [MaSanPham], [SoLuong], [DonViTinh], [GiaNhap], [TongGia]) VALUES (86, 60, 114, 50, N'lọ', CAST(600000 AS Decimal(18, 0)), CAST(30000000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDonNhaps] ([Id], [MaHoaDon], [MaSanPham], [SoLuong], [DonViTinh], [GiaNhap], [TongGia]) VALUES (87, 61, 115, 50, N'lọ', CAST(330000 AS Decimal(18, 0)), CAST(16500000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDonNhaps] ([Id], [MaHoaDon], [MaSanPham], [SoLuong], [DonViTinh], [GiaNhap], [TongGia]) VALUES (88, 59, 116, 50, N'lọ', CAST(310000 AS Decimal(18, 0)), CAST(15500000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDonNhaps] ([Id], [MaHoaDon], [MaSanPham], [SoLuong], [DonViTinh], [GiaNhap], [TongGia]) VALUES (89, 60, 117, 60, N'lọ', CAST(270000 AS Decimal(18, 0)), CAST(16200000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDonNhaps] ([Id], [MaHoaDon], [MaSanPham], [SoLuong], [DonViTinh], [GiaNhap], [TongGia]) VALUES (90, 57, 118, 70, N'lọ', CAST(600000 AS Decimal(18, 0)), CAST(42000000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDonNhaps] ([Id], [MaHoaDon], [MaSanPham], [SoLuong], [DonViTinh], [GiaNhap], [TongGia]) VALUES (91, 60, 119, 60, N'lọ', CAST(320000 AS Decimal(18, 0)), CAST(19200000 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[ChiTietHoaDonNhaps] OFF
GO
SET IDENTITY_INSERT [dbo].[ChiTietHoaDons] ON 

INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [MaHoaDon], [MaSanPham], [SoLuong], [TongGia], [DonGia]) VALUES (125, 68, 87, 12, CAST(3744000 AS Decimal(18, 0)), CAST(312000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [MaHoaDon], [MaSanPham], [SoLuong], [TongGia], [DonGia]) VALUES (126, 68, 88, 19, CAST(7904000 AS Decimal(18, 0)), CAST(416000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [MaHoaDon], [MaSanPham], [SoLuong], [TongGia], [DonGia]) VALUES (127, 69, 88, 12, CAST(4992000 AS Decimal(18, 0)), CAST(416000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [MaHoaDon], [MaSanPham], [SoLuong], [TongGia], [DonGia]) VALUES (128, 70, 106, 4, CAST(1612000 AS Decimal(18, 0)), CAST(403000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [MaHoaDon], [MaSanPham], [SoLuong], [TongGia], [DonGia]) VALUES (129, 71, 104, 11, CAST(4576000 AS Decimal(18, 0)), CAST(416000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [MaHoaDon], [MaSanPham], [SoLuong], [TongGia], [DonGia]) VALUES (130, 72, 96, 15, CAST(6435000 AS Decimal(18, 0)), CAST(429000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [MaHoaDon], [MaSanPham], [SoLuong], [TongGia], [DonGia]) VALUES (131, 73, 95, 3, CAST(429000 AS Decimal(18, 0)), CAST(143000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [MaHoaDon], [MaSanPham], [SoLuong], [TongGia], [DonGia]) VALUES (132, 74, 94, 17, CAST(1768000 AS Decimal(18, 0)), CAST(104000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [MaHoaDon], [MaSanPham], [SoLuong], [TongGia], [DonGia]) VALUES (133, 74, 93, 13, CAST(1352000 AS Decimal(18, 0)), CAST(104000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [MaHoaDon], [MaSanPham], [SoLuong], [TongGia], [DonGia]) VALUES (134, 74, 92, 4, CAST(1456000 AS Decimal(18, 0)), CAST(364000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [MaHoaDon], [MaSanPham], [SoLuong], [TongGia], [DonGia]) VALUES (135, 74, 91, 5, CAST(2275000 AS Decimal(18, 0)), CAST(455000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [MaHoaDon], [MaSanPham], [SoLuong], [TongGia], [DonGia]) VALUES (136, 74, 90, 8, CAST(1872000 AS Decimal(18, 0)), CAST(234000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [MaHoaDon], [MaSanPham], [SoLuong], [TongGia], [DonGia]) VALUES (137, 74, 89, 4, CAST(1196000 AS Decimal(18, 0)), CAST(299000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [MaHoaDon], [MaSanPham], [SoLuong], [TongGia], [DonGia]) VALUES (138, 75, 119, 11, CAST(4576000 AS Decimal(18, 0)), CAST(416000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [MaHoaDon], [MaSanPham], [SoLuong], [TongGia], [DonGia]) VALUES (139, 76, 118, 13, CAST(10140000 AS Decimal(18, 0)), CAST(780000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [MaHoaDon], [MaSanPham], [SoLuong], [TongGia], [DonGia]) VALUES (140, 77, 117, 12, CAST(4212000 AS Decimal(18, 0)), CAST(351000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [MaHoaDon], [MaSanPham], [SoLuong], [TongGia], [DonGia]) VALUES (141, 78, 116, 14, CAST(5642000 AS Decimal(18, 0)), CAST(403000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [MaHoaDon], [MaSanPham], [SoLuong], [TongGia], [DonGia]) VALUES (142, 79, 115, 10, CAST(4290000 AS Decimal(18, 0)), CAST(429000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [MaHoaDon], [MaSanPham], [SoLuong], [TongGia], [DonGia]) VALUES (143, 80, 114, 11, CAST(8580000 AS Decimal(18, 0)), CAST(780000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [MaHoaDon], [MaSanPham], [SoLuong], [TongGia], [DonGia]) VALUES (144, 81, 113, 12, CAST(5772000 AS Decimal(18, 0)), CAST(481000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [MaHoaDon], [MaSanPham], [SoLuong], [TongGia], [DonGia]) VALUES (145, 82, 112, 13, CAST(8788000 AS Decimal(18, 0)), CAST(676000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [MaHoaDon], [MaSanPham], [SoLuong], [TongGia], [DonGia]) VALUES (146, 83, 111, 12, CAST(5772000 AS Decimal(18, 0)), CAST(481000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [MaHoaDon], [MaSanPham], [SoLuong], [TongGia], [DonGia]) VALUES (147, 84, 110, 13, CAST(4056000 AS Decimal(18, 0)), CAST(312000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [MaHoaDon], [MaSanPham], [SoLuong], [TongGia], [DonGia]) VALUES (148, 85, 116, 26, CAST(10478000 AS Decimal(18, 0)), CAST(403000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [MaHoaDon], [MaSanPham], [SoLuong], [TongGia], [DonGia]) VALUES (149, 86, 114, 29, CAST(22620000 AS Decimal(18, 0)), CAST(780000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [MaHoaDon], [MaSanPham], [SoLuong], [TongGia], [DonGia]) VALUES (150, 87, 104, 1, CAST(416000 AS Decimal(18, 0)), CAST(416000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [MaHoaDon], [MaSanPham], [SoLuong], [TongGia], [DonGia]) VALUES (151, 88, 101, 1, CAST(364000 AS Decimal(18, 0)), CAST(364000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [MaHoaDon], [MaSanPham], [SoLuong], [TongGia], [DonGia]) VALUES (152, 89, 99, 1, CAST(338000 AS Decimal(18, 0)), CAST(338000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [MaHoaDon], [MaSanPham], [SoLuong], [TongGia], [DonGia]) VALUES (153, 90, 88, 10, CAST(4160000 AS Decimal(18, 0)), CAST(416000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [MaHoaDon], [MaSanPham], [SoLuong], [TongGia], [DonGia]) VALUES (154, 91, 97, 9, CAST(3159000 AS Decimal(18, 0)), CAST(351000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [MaHoaDon], [MaSanPham], [SoLuong], [TongGia], [DonGia]) VALUES (155, 92, 96, 1, CAST(429000 AS Decimal(18, 0)), CAST(429000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [MaHoaDon], [MaSanPham], [SoLuong], [TongGia], [DonGia]) VALUES (156, 93, 95, 9, CAST(1287000 AS Decimal(18, 0)), CAST(143000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [MaHoaDon], [MaSanPham], [SoLuong], [TongGia], [DonGia]) VALUES (157, 94, 93, 9, CAST(936000 AS Decimal(18, 0)), CAST(104000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [MaHoaDon], [MaSanPham], [SoLuong], [TongGia], [DonGia]) VALUES (158, 95, 104, 1, CAST(416000 AS Decimal(18, 0)), CAST(416000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [MaHoaDon], [MaSanPham], [SoLuong], [TongGia], [DonGia]) VALUES (159, 96, 105, 1, CAST(403000 AS Decimal(18, 0)), CAST(403000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [MaHoaDon], [MaSanPham], [SoLuong], [TongGia], [DonGia]) VALUES (160, 97, 106, 1, CAST(403000 AS Decimal(18, 0)), CAST(403000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [MaHoaDon], [MaSanPham], [SoLuong], [TongGia], [DonGia]) VALUES (161, 98, 117, 8, CAST(2808000 AS Decimal(18, 0)), CAST(351000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [MaHoaDon], [MaSanPham], [SoLuong], [TongGia], [DonGia]) VALUES (162, 99, 115, 6, CAST(2574000 AS Decimal(18, 0)), CAST(429000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [MaHoaDon], [MaSanPham], [SoLuong], [TongGia], [DonGia]) VALUES (163, 100, 110, 7, CAST(2184000 AS Decimal(18, 0)), CAST(312000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [MaHoaDon], [MaSanPham], [SoLuong], [TongGia], [DonGia]) VALUES (164, 101, 95, 5, CAST(715000 AS Decimal(18, 0)), CAST(143000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [MaHoaDon], [MaSanPham], [SoLuong], [TongGia], [DonGia]) VALUES (165, 102, 90, 1, CAST(234000 AS Decimal(18, 0)), CAST(234000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [MaHoaDon], [MaSanPham], [SoLuong], [TongGia], [DonGia]) VALUES (166, 103, 96, 2, CAST(858000 AS Decimal(18, 0)), CAST(429000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [MaHoaDon], [MaSanPham], [SoLuong], [TongGia], [DonGia]) VALUES (167, 104, 96, 1111, CAST(476619000 AS Decimal(18, 0)), CAST(429000 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[ChiTietHoaDons] OFF
GO
SET IDENTITY_INSERT [dbo].[ChiTietSanPhams] ON 

INSERT [dbo].[ChiTietSanPhams] ([MaChiTietSanPham], [MaSanPham], [MaNhaSanXuat], [MoTa], [ChiTiet]) VALUES (90, 87, 16, N'Gel Rửa Mặt La Roche-Posay Effaclar Purifying Foaming Gel For Oily Sensitive Skin là dòng sản phẩm sữa rửa mặt chuyên biệt dành cho làn da dầu, mụn, nhạy cảm đến từ thương hiệu dược mỹ phẩm La Roche-Posay nổi tiếng của Pháp, với kết cấu dạng gel tạo bọt nhẹ nhàng giúp loại bỏ bụi bẩn, tạp chất và bã nhờn dư thừa trên da hiệu quả, mang đến làn da sạch mịn, thoáng nhẹ và tươi mát. Công thức sản phẩm an toàn, lành tính, giảm thiểu tình trạng kích ứng đối với làn da nhạy cảm.', N'<p><strong>Gel Rửa Mặt La Roche-Posay&nbsp;Effaclar Purifying Foaming Gel For Oily Sensitive Skin</strong>&nbsp;là dòng sản phẩm&nbsp;<a href="https://hasaki.vn/danh-muc/sua-rua-mat-c19.html"><strong>sữa rửa mặt</strong></a>&nbsp;chuyên biệt dành cho làn da dầu, mụn, nhạy cảm&nbsp;đến từ&nbsp;<a href="https://hasaki.vn/thuong-hieu/la-roche-posay.html"><strong>thương hiệu dược mỹ phẩm La Roche-Posay</strong></a>&nbsp;nổi tiếng của Pháp, với kết cấu dạng gel tạo bọt nhẹ nhàng&nbsp;giúp loại bỏ bụi bẩn, tạp chất và bã nhờn dư thừa trên da hiệu quả, mang đến làn da sạch mịn, thoáng nhẹ và tươi mát. Công thức sản phẩm an toàn, lành tính, giảm thiểu tình trạng kích ứng đối với làn da nhạy cảm.</p><p>&nbsp;</p><p><img src="https://media.hasaki.vn/wysiwyg/HaNguyen/gel-rua-mat-la-roche-posay-danh-cho-da-dau-nhay-cam-01.jpg" alt="Gel Rửa Mặt La Roche-Posay Effaclar Purifying Foaming Gel For Oily Sensitive Skin" width="800"></p><p>&nbsp;</p><p><strong>Gel Rửa Mặt La Roche-Posay&nbsp;Effaclar Purifying Foaming Gel For Oily Sensitive Skin&nbsp;Dành Cho Da Dầu, Nhạy Cảm&nbsp;</strong>hiện đã có mặt tại<strong>&nbsp;Hasaki</strong>&nbsp;với 3 dung tích đa dạng phù hợp với từng nhu cầu riêng biệt:</p><p><strong>50ml (mini size)</strong></p><p><strong>200ml (full size - tuýp)</strong></p><p><strong>400ml (full size - vòi bơm)</strong></p><p><strong>Túi refill 400ml</strong></p><p><strong>Combo 2x50ml</strong></p><p><strong>Combo 3x50ml</strong></p><p><strong>Combo 4x50ml</strong></p><p><br>&nbsp;</p><p><strong><img src="https://media.hasaki.vn/wysiwyg/HaNguyen/gel-rua-mat-la-roche-posay-danh-cho-da-dau-nhay-cam-05.jpg" alt="Gel Rửa Mặt La Roche-Posay Effaclar Purifying Foaming Gel For Oily Sensitive Skin có 3 dung tích đa dạng phù hợp với từng nhu cầu riêng biệt." width="800"></strong></p><p><br>&nbsp;</p><h2>Loại da phù hợp:</h2><ul><li>Sản phẩm phù hợp cho&nbsp;<a href="https://hasaki.vn/danh-muc/da-dau-c90.html"><strong>da dầu</strong></a>, da mụn, da nhạy cảm.</li></ul><p>&nbsp;</p><p><img src="https://media.hasaki.vn/wysiwyg/HaNguyen/gel-rua-mat-tao-bot-la-roche-posay-danh-cho-da-dau-nhay-cam-4.jpg" alt="Gel Rửa Mặt La Roche-Posay Effaclar Purifying Foaming Gel For Oily Sensitive Skin không gây kích ứng đối với làn da nhạy cảm" width="800"></p><p>&nbsp;</p><h2>Giải pháp cho tình trạng da:</h2><p>Dầu thừa - lỗ chân lông to</p><p><a href="https://hasaki.vn/danh-muc/da-mun-c44.html"><strong>Da mụn</strong></a>&nbsp;cám, đầu đen, đầu trắng và sưng viêm từ trung bình đến nặng vừa</p><p>Da nhạy cảm, dễ kích ứng</p>')
INSERT [dbo].[ChiTietSanPhams] ([MaChiTietSanPham], [MaSanPham], [MaNhaSanXuat], [MoTa], [ChiTiet]) VALUES (91, 88, 25, N'Gel Rửa Mặt SVR Sebiaclear Gel Moussant là sản phẩm sữa rửa mặt dành cho làn da dầu mụn đến từ thương hiệu dược mỹ phẩm SVR của Pháp, với công thức không chứa xà phòng giúp làm sạch, nhẹ nhàng làm thông thoáng làn da. Khả năng tạo bọt mịn giúp loại trừ các chất bẩn và lượng bã nhờn dư thừa mà không làm khô da. Có thể rửa sạch dễ dàng, mang lại một làn da sạch, tươi mát và khô thoáng.', N'<p><strong>Gel Rửa Mặt SVR Sebiaclear Gel Moussant</strong>&nbsp;là sản phẩm&nbsp;<a href="https://hasaki.vn/danh-muc/sua-rua-mat-c19.html"><strong>sữa rửa mặt</strong></a>&nbsp;dành cho làn da dầu mụn đến từ <a href="https://hasaki.vn/thuong-hieu/svr.html"><strong>thương hiệu dược mỹ phẩm SVR</strong></a>&nbsp;của Pháp, với công thức không chứa xà phòng giúp làm sạch, nhẹ nhàng làm thông thoáng làn da.&nbsp;Khả năng tạo bọt mịn giúp loại trừ các chất bẩn và lượng bã nhờn dư thừa mà không làm khô da. Có thể rửa sạch dễ dàng, mang lại một làn da sạch, tươi mát và khô thoáng.</p><p><br>&nbsp;</p><p><img src="https://media.hcdn.vn/wysiwyg/Chau/gel-rua-mat-svr-danh-cho-da-dau-1.jpg" alt="Gel Rửa Mặt SVR Sebiaclear Gel Moussant " width="800" height="800"><br>&nbsp;</p><p><br>&nbsp;</p><p>Hiện sản phẩm&nbsp;<strong>Gel Rửa Mặt SVR Dành Cho Da Dầu</strong>&nbsp;đã có mặt tại<strong>&nbsp;</strong><a href="https://hasaki.vn/"><strong>Hasaki</strong></a><strong>&nbsp;</strong>với 3 dung tích:&nbsp;</p><p><strong>55ml&nbsp;</strong></p><p><strong>200ml</strong></p><p><strong>400ml</strong></p><p><br>&nbsp;</p><p><strong><img src="https://media.hcdn.vn/wysiwyg/Chau/gel-rua-mat-svr-khong-chua-xa-phong-cho-da-dau-400ml-2.jpg" alt="" width="800" height="800"></strong><br>&nbsp;</p><p><i><strong>*Lưu ý:&nbsp;Bao bì mới hiện chỉ có ở dung tích 400ml. Hasaki đang bán cả mẫu cũ và mẫu mới vì vậy sẽ giao mẫu Ngẫu Nhiên đến khách hàng.</strong></i></p><h3>Loại da phù hợp:</h3><ul><li>Sản phẩm phù hợp với&nbsp;da hỗn hợp đến da dầu, <a href="https://hasaki.vn/danh-muc/da-mun-c44.html"><strong>da mụn</strong></a> nhạy cảm.</li></ul><h3>Giải pháp cho tình trạng da:</h3><ul><li><a href="https://hasaki.vn/danh-muc/dau-thua-lo-chan-long-to-c1879.html"><strong>Da dầu thừa - lỗ chân lông to</strong></a><strong>.</strong></li></ul><p>Da mụn trứng cá, mụn đầu đen, mụn ẩn do bít tắc lỗ chân lông.</p><h3>Ưu thế nổi bật:</h3><p><strong>Gluconolactone&nbsp;</strong>với tác động giảm viêm và tiêu sừng, giúp&nbsp;làm sạch da và thông thoáng lỗ chân lông.&nbsp;Hiệu quả tương tự như AHAs với độ dung nạp tốt hơn.</p><p><strong>Niacinamide</strong> có tác dụng giảm khuẩn và điều tiết bã nhờn.</p><p><strong>Các tác nhân làm sạch dịu nhẹ</strong>&nbsp;giúp làm sạch hiệu quả trong khi vẫn giữ vững sự cân bằng cho làn da nhạy cảm.</p><p><strong>Mat SR (2%)</strong>&nbsp;giúp điều hòa lượng bã nhờn dư thừa, cho làn da không bóng dầu.</p><p>Dạng gel không chứa xà phòng, tạo bọt mịn, giúp làm sạch da hiệu quả nhưng không gây khô căng, dễ dàng rửa sạch mà không nhờn rít.</p>')
INSERT [dbo].[ChiTietSanPhams] ([MaChiTietSanPham], [MaSanPham], [MaNhaSanXuat], [MoTa], [ChiTiet]) VALUES (92, 89, 12, N'Sữa Rửa Mặt Cetaphil Gentle Skin Cleanser phiên bản mới ra mắt năm 2022 từ thương hiệu Cetaphil với công thức khoa học mới cho làn da nhạy cảm, giúp làm sạch da, loại bỏ bụi bẩn, phù hợp cho mọi loại da, không làm khô da và duy trì hàng rào bảo vệ da suốt ngày dài.', N'<p><strong>Sữa Rửa Mặt Cetaphil Gentle Skin Cleanser</strong> phiên bản mới ra mắt năm 2022 từ <a href="https://hasaki.vn/thuong-hieu/cetaphil.html"><strong>thương hiệu Cetaphil</strong></a> với công thức khoa học mới cho làn da nhạy cảm,&nbsp;giúp làm sạch da, loại bỏ bụi bẩn, phù hợp cho mọi loại da, không làm khô da và duy trì hàng rào bảo vệ da suốt ngày dài.</p><p>Được chứng minh lâm sàng có khả năng làm sạch sâu, loại bỏ hoàn toàn bụi bẩn, và tạp chất trên da một cách dịu nhẹ nhưng vẫn duy trì độ ẩm tự nhiên để bảo vệ da khỏi tình trạng khô ráp, <a href="https://hasaki.vn/danh-muc/sua-rua-mat-c19.html"><strong>Sữa Rửa Mặt</strong></a><strong> Cetaphil Mới&nbsp;</strong>với công thức lành tính không gây kích ứng sẽ an toàn cho mọi loại da, kể cả da nhạy cảm.</p><p><strong>Sữa Rửa Mặt Dịu Lành Cho Da Nhạy Cảm Cetaphil Gentle Skin Cleanser</strong> hiện đã có mặt tại<strong> </strong><a href="https://hasaki.vn/"><strong>Hasaki</strong></a><strong>&nbsp;</strong>với 6 dung tích cho bạn lựa chọn:</p><p><strong>Sữa Rửa Mặt Cetaphil Gentle Skin Cleanser 59ml</strong></p><p><strong>Sữa Rửa Mặt Cetaphil Gentle Skin Cleanser 125ml</strong></p><p><strong>Sữa Rửa Mặt Cetaphil Gentle Skin Cleanser 250ml</strong></p><p><strong>Sữa Rửa Mặt Cetaphil Gentle Skin Cleanser 473ml</strong></p><p><strong>Sữa Rửa Mặt Cetaphil Gentle Skin Cleanser 500ml</strong></p><p><strong>Sữa Rửa Mặt Cetaphil Gentle Skin Cleanser 1000ml</strong></p><p><br>&nbsp;</p><p><strong><img src="https://media.hasaki.vn/wysiwyg/HaNguyen1/sua-rua-mat-cetaphil-diu-nhe-khong-xa-phong-moi-1.jpg" alt="Sữa Rửa Mặt Cetaphil Gentle Skin Cleanser 473ml (Mới)" width="800"></strong></p><p><br>&nbsp;</p><h2>Loại da phù hợp:</h2><ul><li>Sản phẩm dành cho mọi loại da, đặc biệt là da nhạy cảm.</li></ul><h2>Giải pháp cho tình trạng da:</h2><p>Da khô, <a href="https://hasaki.vn/danh-muc/thieu-am-thieu-nuoc-c1883.html"><strong>thiếu độ ẩm - thiếu nước</strong></a>.</p><p>Da nhạy cảm, dễ kích ứng.</p>')
INSERT [dbo].[ChiTietSanPhams] ([MaChiTietSanPham], [MaSanPham], [MaNhaSanXuat], [MoTa], [ChiTiet]) VALUES (93, 90, 27, N'Gel Rửa Mặt Cosrx Tràm Trà, 0.5% BHA Có Độ pH Thấp là dòng sữa rửa mặt đến từ thương hiệu mỹ phẩm Cosrx của Hàn Quốc, với độ pH lý tưởng 4.5 - 5.5 sản phẩm an toàn và dịu nhẹ trên mọi làn da ngay cả làn da nhạy cảm và da mụn. Gel rửa mặt chứa 0,5% BHA tự nhiên và chiết xuất tràm trà làm sạch sâu lỗ chân lông, hỗ trợ kháng khuẩn, làm sạch mụn đồng thời tẩy da chết nhẹ nhàng.', N'<h2>Ưu thế nổi bật:</h2><p><strong>Độ pH lý tưởng 4.5 - 5.5</strong> không gây khô căng da sau khi rửa mặt, giữ độ ẩm cân bằng tự nhiên cho da.</p><p><strong>Chiết xuất</strong> <strong>tinh dầu tràm trà</strong> <strong>kết hợp với</strong>&nbsp;<strong>0,5% BHA tự nhiên</strong>&nbsp;có khả năng kháng khuẩn, loại bỏ mụn, tẩy tế bào chết nhẹ nhàng mang lại làn da sạch thoáng.</p><p><strong>Allantoin</strong> có công dụng làm dịu, dưỡng ẩm làn da giữ da mềm mại sau khi rửa mặt.</p><p>Kết cấu dạng gel trong suốt và có khả năng tạo bọt nhẹ nhàng giúp loại sạch bụi bẩn dư thừa trên da.</p><p><br>&nbsp;</p><p><img src="https://media.hcdn.vn/wysiwyg/minhchau/gel-rua-mat-cosrx-tram-tra-0-5-bha-co-do-ph-thap-150ml-4.jpg" alt="Kết cấu Gel Rửa Mặt Cosrx Tràm Trà, 0.5% BHA Có Độ pH Thấp 150ml" width="800"><br>&nbsp;</p><p><br>&nbsp;</p><p><img src="https://media.hcdn.vn/wysiwyg/minhchau/gel-rua-mat-cosrx-tram-tra-0-5-bha-co-do-ph-thap-150ml-5.jpg" alt="Kết cấu Gel Rửa Mặt Cosrx Tràm Trà, 0.5% BHA Có Độ pH Thấp" width="800"><br>&nbsp;</p><p><br>&nbsp;</p><h2>Độ an toàn:</h2><p>KHÔNG cồn</p><p>KHÔNG chất tẩy rửa (Sulfates)</p><p>KHÔNG hương liệu hoá học (Phthalates)</p><p>KHÔNG Paraben</p><p>KHÔNG thử nghiệm trên động vật</p>')
INSERT [dbo].[ChiTietSanPhams] ([MaChiTietSanPham], [MaSanPham], [MaNhaSanXuat], [MoTa], [ChiTiet]) VALUES (94, 91, 12, N'Sữa Rửa Mặt Cerave Sạch Sâu là sản phẩm sữa rửa mặt đến từ thương hiệu mỹ phẩm Cerave của Mỹ, với sự kết hợp của ba Ceramides thiết yếu, Hyaluronic Acid sản phẩm giúp làm sạch và giữ ẩm cho làn da mà không ảnh hưởng đến hàng rào bảo vệ da mặt và cơ thể.', N'<p><strong>Sữa Rửa Mặt Cerave Sạch Sâu&nbsp;</strong>là sản phẩm&nbsp;<a href="https://hasaki.vn/danh-muc/sua-rua-mat-c19.html"><strong>sữa rửa mặt</strong></a>&nbsp;đến từ&nbsp;<a href="https://hasaki.vn/thuong-hieu/cerave.html"><strong>thương hiệu mỹ phẩm Cerave</strong></a>&nbsp;của Mỹ,&nbsp;với sự kết hợp của ba Ceramides thiết yếu, Hyaluronic Acid sản phẩm giúp làm sạch và giữ ẩm cho làn da mà không ảnh hưởng đến hàng rào bảo vệ da mặt và cơ thể.</p><p>Hiện sản phẩm&nbsp;<strong>Sữa Rửa Mặt Cerave Sạch Sâu&nbsp;</strong>đã có mặt tại <strong>Hasaki</strong> với 2 loại và 3 dung tích (88ml; 236ml; 473ml):</p><p><strong>Sữa Rửa Mặt Cerave Sạch Sâu Cho Da Thường Đến Da Dầu&nbsp;</strong></p><p><strong>Sữa Rửa Mặt Cerave Sạch Sâu Cho Da Thường Đến Da Khô</strong></p><h2><strong>1.&nbsp;Sữa Rửa Mặt Cerave Sạch Sâu Cho Da Thường Đến Da Dầu&nbsp;</strong></h2><p><strong>Sữa Rửa Mặt Cerave&nbsp;Foaming Cleanser&nbsp;</strong>kết cấu dạng gel tạo bọt rất lý tưởng để loại bỏ dầu thừa, bụi bẩn và lớp trang điểm với công thức nhẹ nhàng, không phá vỡ hàng rào bảo vệ tự nhiên của da và chứa các thành phần giúp duy trì độ ẩm cân bằng da. Cerave Foaming Cleanser<strong>&nbsp;</strong>chứa <strong>Ceramides, Axit Hyaluronic và Niacinamide</strong> giúp duy trì hàng rào bảo vệ da, khóa ẩm và làm dịu làn da của bạn.</p><p>&nbsp;</p><p>&nbsp;<img src="https://media.hcdn.vn/wysiwyg/Chau/sua-rua-mat-cerave-tao-bot-cho-da-thuong-den-da-dau-2.jpg" alt="Sữa Rửa Mặt Cerave Sạch Sâu Cho Da Thường Đến Da Dầu" width="800"></p><p>&nbsp;</p><h3>Loại da phù hợp:&nbsp;</h3><p>Sản phẩm thích hợp cho da thường đến dầu.</p><p>Có thể sử dụng cho mặt và toàn thân.</p><h3>Giải pháp cho tình trạng da:&nbsp;</h3><p>Da thường tiết bã nhờn, <a href="https://hasaki.vn/danh-muc/dau-thua-lo-chan-long-to-c1879.html"><strong>dầu thừa, lỗ chân lông to</strong></a>.&nbsp;</p><p>&nbsp;</p><p>&nbsp;<img src="https://media.hcdn.vn/wysiwyg/Chau/sua-rua-mat-cerave-tao-bot-cho-da-thuong-den-da-dau-3.jpg" alt="Kết cấu Sữa Rửa Mặt Cerave Sạch Sâu Cho Da Thường Đến Da Dầu" width="800"></p>')
INSERT [dbo].[ChiTietSanPhams] ([MaChiTietSanPham], [MaSanPham], [MaNhaSanXuat], [MoTa], [ChiTiet]) VALUES (95, 92, 14, N'Gel Rửa Mặt La Roche-Posay Effaclar Purifying Foaming Gel For Oily Sensitive Skin là dòng sản phẩm sữa rửa mặt chuyên biệt dành cho làn da dầu, mụn, nhạy cảm đến từ thương hiệu dược mỹ phẩm La Roche-Posay nổi tiếng của Pháp, với kết cấu dạng gel tạo bọt nhẹ nhàng giúp loại bỏ bụi bẩn, tạp chất và bã nhờn dư thừa trên da hiệu quả, mang đến làn da sạch mịn, thoáng nhẹ và tươi mát. Công thức sản phẩm an toàn, lành tính, giảm thiểu tình trạng kích ứng đối với làn da nhạy cảm.', N'<p><strong>Gel Rửa Mặt La Roche-Posay&nbsp;Effaclar Purifying Foaming Gel For Oily Sensitive Skin</strong>&nbsp;là dòng sản phẩm&nbsp;<a href="https://hasaki.vn/danh-muc/sua-rua-mat-c19.html"><strong>sữa rửa mặt</strong></a>&nbsp;chuyên biệt dành cho làn da dầu, mụn, nhạy cảm&nbsp;đến từ&nbsp;<a href="https://hasaki.vn/thuong-hieu/la-roche-posay.html"><strong>thương hiệu dược mỹ phẩm La Roche-Posay</strong></a>&nbsp;nổi tiếng của Pháp, với kết cấu dạng gel tạo bọt nhẹ nhàng&nbsp;giúp loại bỏ bụi bẩn, tạp chất và bã nhờn dư thừa trên da hiệu quả, mang đến làn da sạch mịn, thoáng nhẹ và tươi mát. Công thức sản phẩm an toàn, lành tính, giảm thiểu tình trạng kích ứng đối với làn da nhạy cảm.</p><p>&nbsp;</p><p><img src="https://media.hasaki.vn/wysiwyg/HaNguyen/gel-rua-mat-la-roche-posay-danh-cho-da-dau-nhay-cam-01.jpg" alt="Gel Rửa Mặt La Roche-Posay Effaclar Purifying Foaming Gel For Oily Sensitive Skin" width="800"></p><p>&nbsp;</p><p><strong>Gel Rửa Mặt La Roche-Posay&nbsp;Effaclar Purifying Foaming Gel For Oily Sensitive Skin&nbsp;Dành Cho Da Dầu, Nhạy Cảm&nbsp;</strong>hiện đã có mặt tại<strong>&nbsp;Hasaki</strong>&nbsp;với 3 dung tích đa dạng phù hợp với từng nhu cầu riêng biệt:</p><p><strong>50ml (mini size)</strong></p><p><strong>200ml (full size - tuýp)</strong></p><p><strong>400ml (full size - vòi bơm)</strong></p><p><strong>Túi refill 400ml</strong></p><p><strong>Combo 2x50ml</strong></p><p><strong>Combo 3x50ml</strong></p><p><strong>Combo 4x50ml</strong></p><p><br>&nbsp;</p><p><strong><img src="https://media.hasaki.vn/wysiwyg/HaNguyen/gel-rua-mat-la-roche-posay-danh-cho-da-dau-nhay-cam-05.jpg" alt="Gel Rửa Mặt La Roche-Posay Effaclar Purifying Foaming Gel For Oily Sensitive Skin có 3 dung tích đa dạng phù hợp với từng nhu cầu riêng biệt." width="800"></strong></p>')
INSERT [dbo].[ChiTietSanPhams] ([MaChiTietSanPham], [MaSanPham], [MaNhaSanXuat], [MoTa], [ChiTiet]) VALUES (96, 93, 28, N'Sữa Rửa Mặt Simple Refreshing Facial Wash là sản phẩm sữa rửa mặt dạng gel dành cho mọi loại da nổi tiếng của thương hiệu mỹ phẩm Simple. Với công thức dịu nhẹ không chứa xà phòng cùng thành phần Pro-Vitamin B5 và Vitamin E, sản phẩm giúp làm sạch da hiệu quả, cuốn đi chất nhờn, bụi bẩn và các tạp chất khác mà không gây kích ứng, cho da mềm mịn, đồng thời mang lại cảm giác tươi mát và sạch thoáng cho da.', N'<p><strong>Sữa Rửa Mặt Simple Refreshing Facial Wash&nbsp;</strong>là sản phẩm&nbsp;<a href="https://hasaki.vn/danh-muc/sua-rua-mat-c19.html"><strong>sữa rửa mặt</strong></a>&nbsp;dạng gel dành cho mọi loại da nổi tiếng của&nbsp;<a href="https://hasaki.vn/thuong-hieu/simple.html"><strong>thương hiệu mỹ phẩm Simple</strong></a>. Với công thức dịu nhẹ không chứa xà phòng cùng thành phần&nbsp;Pro-Vitamin B5 và Vitamin E, sản phẩm&nbsp;giúp&nbsp;làm sạch da hiệu quả, cuốn đi chất nhờn, bụi bẩn và các tạp chất khác mà không gây kích ứng, cho da mềm mịn, đồng thời mang lại cảm giác tươi mát và sạch thoáng cho da.</p><p>&nbsp;</p><p><img src="https://media.hcdn.vn/wysiwyg/Chau/gel-rua-mat-danh-cho-da-nhay-cam-simple-150ml-1.jpg" alt="Sữa Rửa Mặt Simple Refreshing Facial Wash" width="800"></p><p><br>&nbsp;</p><p><i><strong>Lưu ý: Hiện tại Hasaki đang bán song song cả 2 mẫu cũ và mới.</strong></i></p><p>Làn da nhạy cảm thường hay có cảm giác khô căng, rát da khó chịu sau khi rửa mặt, khiến các nàng thường xuyên phải "đau đầu" trong việc lựa chọn sữa rửa mặt phù hợp. Thấu hiểu được nỗi lo này, <a href="https://hasaki.vn/"><strong>Hasaki</strong></a> xin giới thiệu đến các bạn sản phẩm <strong>Sữa Rửa Mặt Simple&nbsp;Refreshing Facial Wash</strong>&nbsp;với thành phần 100% không chứa xà phòng, êm dịu cho ngay cả những làn da nhạy cảm nhất.</p><p><strong>Sữa Rửa Mặt Simple Kind to Skin Refreshing Facial Wash</strong> phiên bản mới&nbsp;nay&nbsp;đã chính thức có mặt tại<strong>&nbsp;</strong><a href="https://hasaki.vn/"><strong>Hasaki</strong></a><strong>&nbsp;</strong>với 2 quy cách đóng gói: 1 tuýp; 2 tuýp - với công thức cải tiến GẤP 2 LẦN Vitamin E giúp nuôi dưỡng cho làn da khoẻ mạnh và mịn màng hơn sau mỗi lần rửa mặt. Công nghệ Pro Amino Acid giúp&nbsp;tăng cường các amino acid tự nhiên có trong da, mang lại hàng rào bảo vệ da ngậm nước và khoẻ mạnh, đủ khả năng chống chịu lại các tác nhân gây khô căng da từ môi trường bên ngoài, chẳng hạn như ô nhiễm và bụi mịn.</p><p><br>&nbsp;</p><p><img src="https://media.hcdn.vn/wysiwyg/Chau/gel-rua-mat-danh-cho-da-nhay-cam-simple-150ml-3.jpg" alt="Sữa Rửa Mặt Simple Refreshing Facial Wash 150ml" width="800"></p><p><br>&nbsp;</p><p>Đặc biệt,&nbsp;<strong>Sữa Rửa Mặt Simple&nbsp;Refreshing Facial Wash</strong>&nbsp;có độ pH trung tính&nbsp;vô cùng dịu nhẹ đối với làn da, nhưng vẫn có khả năng làm sạch hiệu quả, giúp loại bỏ mọi dấu vết còn sót lại của lớp trang điểm, bụi bẩn, dầu thừa, đồng thời giảm thiểu cảm giác da khô và căng sau khi rửa mặt.</p>')
INSERT [dbo].[ChiTietSanPhams] ([MaChiTietSanPham], [MaSanPham], [MaNhaSanXuat], [MoTa], [ChiTiet]) VALUES (97, 94, 28, N'Purifying Gel Wash là sản phẩm sữa rửa mặt đến từ thương hiệu mỹ phẩm Simple, giúp kiềm dầu, ngừa mụn cho da dầu dễ nổi mụn. Sản phẩm với chất gel thanh khiết, chứa chiết xuất Cây Phỉ (Witch Hazel), Kẽm, Prebiotic từ thực vật, Niacinamide (Vitamin B3) sẽ giúp cuốn đi bụi bẩn, tạp chất và dầu thừa, làm sạch da và giảm bóng nhờn, ngừa mụn hiệu quả.', N'<p><strong>Purifying Gel Wash</strong>&nbsp;là sản phẩm <a href="https://hasaki.vn/danh-muc/sua-rua-mat-c19.html"><strong>sữa rửa mặt</strong></a> đến từ <a href="https://hasaki.vn/thuong-hieu/simple.html"><strong>thương hiệu mỹ phẩm Simple</strong></a>,&nbsp;giúp kiềm dầu, ngừa mụn cho da dầu dễ nổi mụn. Sản phẩm với chất gel thanh khiết, chứa chiết xuất Cây Phỉ (Witch Hazel), Kẽm, Prebiotic từ thực vật, Niacinamide (Vitamin B3) sẽ giúp cuốn đi bụi bẩn, tạp chất và dầu thừa, làm sạch da và giảm bóng nhờn, ngừa mụn hiệu quả.</p><p><br>&nbsp;</p><p><img src="https://media.hcdn.vn/wysiwyg/HaNguyen2/gel-rua-mat-simple-thanh-khiet-giam-bong-nhon-150ml-1.jpg" alt="Gel Rửa Mặt Simple Thanh Khiết, Giảm Bóng Nhờn 150ml" width="800"></p><p><br>&nbsp;</p><p>Đặc biệt, gel rửa mặt <strong>Simple&nbsp;Purifying Gel Wash&nbsp;</strong>không chứa thành phần tẩy da chết hóa học Salicylic Acid (BHA) - được biết đến là nguyên nhân gây khô da; bên cạnh đó được bổ sung thêm Niacinamide (Vitamin B3) giúp cân bằng độ ẩm trên da, hạn chế làm da khô và tránh tình trạng tiết thêm dầu, ngăn ngừa mụn.</p><p><br>&nbsp;</p><p><img src="https://media.hcdn.vn/wysiwyg/HaNguyen2/gel-rua-mat-simple-thanh-khiet-giam-bong-nhon-150ml-2.jpg" alt="Gel Rửa Mặt Simple Thanh Khiết, Giảm Bóng Nhờn 150ml Tại Hasaki" width="800"></p><p><br>&nbsp;</p><p><strong>Gel Rửa Mặt Simple Thanh Khiết, Giảm Bóng Nhờn Purifying Gel Wash 150ml&nbsp;</strong>hiện&nbsp;đã có mặt tại <a href="https://hasaki.vn/"><strong>Hasaki</strong></a>&nbsp;với 2 quy cách đóng gói: 1 tuýp; 2 tuýp</p>')
INSERT [dbo].[ChiTietSanPhams] ([MaChiTietSanPham], [MaSanPham], [MaNhaSanXuat], [MoTa], [ChiTiet]) VALUES (98, 95, 29, N'Kem Rửa Mặt Hada Labo Dưỡng Da Sáng Mịn Ẩm Mượt 80g là sữa rửa mặt thuộc dòng dưỡng sáng da Perfect White của Hada Labo, với công thức dạng kem tạo bọt mềm mịn, giúp len lỏi sâu vào lỗ chân lông và làm sạch sâu da một cách dịu nhẹ, đồng thời dưỡng da sáng mịn, ẩm mượt nhờ các thành phần T.X.A, Vitamin C, E, Hyaluronic Acid và chiết xuất hạt ý dĩ, mang lại cho bạn làn da rạng rỡ và đều màu hơn mỗi ngày.', N'<p><strong>Kem Rửa Mặt Hada Labo Dưỡng Da Sáng Mịn Ẩm Mượt&nbsp;80g&nbsp;</strong>là <a href="https://hasaki.vn/danh-muc/sua-rua-mat-c19.html"><strong>sữa rửa mặt</strong></a> thuộc dòng dưỡng sáng da&nbsp;<strong>Perfect White</strong>&nbsp;của&nbsp;<a href="https://hasaki.vn/thuong-hieu/hada-labo.html"><strong>Hada Labo</strong></a>, với công thức dạng kem tạo bọt mềm mịn,&nbsp;giúp len lỏi sâu vào lỗ chân lông và làm sạch sâu da một cách dịu nhẹ, đồng thời dưỡng da sáng mịn, ẩm mượt nhờ các thành phần T.X.A, Vitamin C, E, Hyaluronic Acid và chiết xuất hạt ý dĩ, mang lại cho bạn làn da rạng rỡ và đều màu hơn mỗi ngày.</p><p><br>&nbsp;</p><p><img src="https://media.hcdn.vn/wysiwyg/Chau/kem-rua-mat-hada-labo-duong-sang-da-80g-1_1.jpg" alt="Kem Rửa Mặt Hada Labo Dưỡng Da Sáng Mịn Ẩm Mượt 80g" width="800"></p><p>&nbsp;</p><p><i><strong>*Lưu ý: Hiện tại Hasaki đang bán song song cả mẫu cũ và mới.&nbsp;</strong></i></p><p>Làn da sạm, xỉn và tối màu khiến bạn cảm thấy mất tự tin? <a href="https://hasaki.vn/"><strong>Hasaki</strong></a> xin giới thiệu đến các bạn&nbsp;<strong>Kem Rửa Mặt Dưỡng Sáng Da Hada Labo Perfect White Cleanser&nbsp;</strong>thuộc bộ sản phẩm dưỡng sáng da&nbsp;<strong>Perfect White, </strong>là bước đầu tiên trong chu trình chăm sóc da, không chỉ giúp làm sạch hiệu quả các tạp chất trên da như bụi bẩn, bã nhờn mà còn hỗ trợ lấy đi lớp tế bào chết xỉn màu, giúp nuôi dưỡng cho làn da trở nên sáng mịn hơn mỗi ngày.</p><p><img src="https://media.hcdn.vn/wysiwyg/Chau/kem-rua-mat-hada-labo-duong-sang-da-80g-3_1.jpg" alt="Kem Rửa Mặt Hada Labo Dưỡng Da Sáng Mịn Ẩm Mượt " width="800"></p><p><br>&nbsp;</p><h2><strong>Loại da phù hợp:</strong></h2><ul><li>Sản phẩm thích hợp với mọi loại da.</li></ul>')
INSERT [dbo].[ChiTietSanPhams] ([MaChiTietSanPham], [MaSanPham], [MaNhaSanXuat], [MoTa], [ChiTiet]) VALUES (99, 96, 10, N'Gel Rửa Mặt Bioderma Sébium Gel Moussant là sữa rửa mặt thanh lọc dịu nhẹ được thương hiệu dược mỹ phẩm Bioderma thiết kế chuyên biệt dành cho làn da dầu & hỗn hợp, giúp loại bỏ các tạp chất trên da, giải phóng bít tắc và làm thông thoáng lỗ chân lông, đồng thời kiểm soát dầu thừa, ngăn ngừa mụn hiệu quả mà vẫn duy trì pH tự nhiên trên da.', N'<p><strong>Gel Rửa Mặt&nbsp;Bioderma Sébium Gel Moussant&nbsp;</strong>là <a href="https://hasaki.vn/danh-muc/sua-rua-mat-c19.html"><strong>sữa rửa mặt</strong></a> thanh lọc dịu nhẹ được <a href="https://hasaki.vn/thuong-hieu/bioderma.html"><strong>thương hiệu dược mỹ phẩm&nbsp;Bioderma</strong></a> thiết kế chuyên biệt dành cho làn da dầu &amp; hỗn hợp, giúp loại bỏ các tạp chất trên da, giải phóng bít tắc và làm thông thoáng lỗ chân lông, đồng thời kiểm soát dầu thừa, ngăn ngừa mụn hiệu quả mà vẫn&nbsp;duy trì pH tự nhiên trên da.</p><p>&nbsp;</p><p><img src="https://media.hcdn.vn/wysiwyg/HaNguyen/gel-rua-mat-tao-bot-bioderma-danh-cho-da-dau-hon-hop-1.jpg" alt="Gel Rửa Mặt Dành Cho Da Dầu &amp; Hỗn Hợp Bioderma Sébium Gel Moussant" width="800"></p><p>&nbsp;</p><p>Làm sạch da mặt là một bước cần thiết trong bất kỳ quy trình chăm sóc da nào. Đối với 60% phụ nữ, khuôn mặt là bộ phận quan trọng nhất trên cơ thể, vì vậy chúng ta càng không được lơ là bước này. Việc làm sạch da giúp loại bỏ các tạp chất đã tích tụ (bã nhờn, mồ hôi, tế bào chết, vi khuẩn, mỹ phẩm, màng chống nắng, lớp trang điểm, bụi bẩn và các chất ô nhiễm dạng hạt khác), để giúp da sẵn sàng cho các bước chăm sóc tiếp theo. Nếu không làm sạch da vào mỗi buổi sáng và buổi tối, da sẽ trở nên bít tắc: màng hydrolipid không còn đóng vai trò bảo vệ da và lỗ chân lông không được thông thoáng. Kết quả là, các khuyết điểm (mụn đầu đen và đốm thâm) xuất hiện khiến da xỉn và không đều màu. Đối với da hỗn hợp hoặc da dầu, có xu hướng bị mụn, có nhiều bã nhờn, việc làm sạch da thậm chí còn quan trọng hơn. Chúng ta nên sử dụng những sản phẩm làm sạch có khả năng loại bỏ hoàn toàn các tạp chất mà không gây kích ứng.</p><p>&nbsp;</p><p><img src="https://media.hcdn.vn/wysiwyg/HaNguyen/gel-rua-mat-tao-bot-bioderma-danh-cho-da-dau-hon-hop-2.jpg" alt="Gel Rửa Mặt Bioderma Sébium Gel Moussant giảm bít tắc lỗ chân lông, điều tiết bã nhờn và ngăn ngừa mụn hiệu quả." width="800"></p><p>&nbsp;</p><p><strong>Hasaki</strong> xin giới thiệu&nbsp;<strong>Bioderma Sébium Gel Moussant&nbsp;</strong>sẽ là giải pháp làm sạch lý tưởng cho làn da dầu &amp; hỗn hợp. Công thức đủ dịu nhẹ để sử dụng hằng ngày, giúp làm sạch hoàn toàn mà không hề gây kích ứng hay khô căng da, đảm bảo tôn trọng lớp màng ẩm tự nhiên của da (hydrolipid).</p>')
INSERT [dbo].[ChiTietSanPhams] ([MaChiTietSanPham], [MaSanPham], [MaNhaSanXuat], [MoTa], [ChiTiet]) VALUES (100, 97, 30, N'Sữa Rửa Mặt Dạng Gel Giúp Làm Sạch Sâu Và Giảm Bã Nhờn Trên Da Vichy Normaderm Phytosolution Intensive Purifying Gel là dòng sữa rửa mặt dạng gel dành cho da dầu mụn đến từ thương hiệu dược mỹ phẩm Vichy. Công thức với nước khoáng Vichy và các thành phần hoạt tính như Zinc oxide, Copper, Salicylic acid, Bifidus Probiotics giúp làm sạch sâu, se khít lỗ chân lông và kiềm dầu hiệu quả mà không làm khô da. Sản phẩm là sự lựa chọn tối ưu dành cho làn da dầu mụn và nhạy cảm, giúp mang lại làn da sạch thoáng, thanh khiết, không còn nỗi lo về mụn và lỗ chân lông được thu nhỏ.', N'<p><strong>Sữa Rửa Mặt Dạng Gel Giúp Làm Sạch Sâu Và Giảm Bã Nhờn Trên Da Vichy Normaderm Phytosolution Intensive Purifying Gel</strong>&nbsp;là dòng <a href="https://hasaki.vn/danh-muc/sua-rua-mat-c19.html"><strong>sữa rửa mặt</strong></a>&nbsp;dạng gel dành cho da dầu mụn đến&nbsp;từ <a href="https://hasaki.vn/thuong-hieu/vichy.html"><strong>thương hiệu dược mỹ phẩm Vichy</strong></a>. Công thức với&nbsp;nước khoáng Vichy và các thành phần hoạt tính như&nbsp;Zinc oxide, Copper, Salicylic acid, Bifidus Probiotics&nbsp;giúp làm sạch sâu, se khít lỗ chân lông và kiềm dầu hiệu quả mà không làm khô da.&nbsp;Sản phẩm là sự lựa chọn tối ưu dành cho làn da dầu mụn và nhạy cảm, giúp mang lại làn da sạch thoáng, thanh khiết, không còn nỗi lo về mụn và lỗ chân lông được thu nhỏ.</p><p>&nbsp;</p><p><img src="https://media.hcdn.vn/wysiwyg/HaNguyen1/sua-rua-mat-dang-gel-vichy-lam-sach-sau-cho-da-nhon-mun-1.jpg" alt="Sữa Rửa Mặt Dạng Gel Giúp Làm Sạch Sâu Và Giảm Bã Nhờn Trên Da Vichy Normaderm Phytosolution Intensive Purifying Gel" width="800"></p><p>&nbsp;</p><p><strong>Gel Rửa Mặt Cho Da Dầu Mụn&nbsp;Vichy Normaderm Phytosolution Intensive Purifying Gel </strong>nay&nbsp;đã có mặt tại <strong>Hasaki</strong> với 3 dung tích:</p><p><strong>50ml (mini size, dạng tuýp)</strong></p><p><strong>Combo 2x50ml (mini size, dạng tuýp)</strong></p><p><strong>200ml (full size, dạng tuýp - MỚI)</strong></p><p><strong>400ml (full size, dạng chai vòi nhấn)</strong></p><p><strong>* Update:</strong></p><p><strong>Gel Rửa Mặt Cho Da Dầu Mụn&nbsp;Vichy Normaderm Phytosolution Intensive Purifying Gel&nbsp;200ml&nbsp;</strong>nay đã có bao bì mới, thân thiện hơn với môi trường mà&nbsp;hiệu quả vẫn không đổi:</p><p>Thay đổi từ dạng bình nhựa sang dòng ống tuýp, dễ dàng sử dụng hơn.</p><p>Dùng chất liệu thân thiện với môi trường.</p><p>Giữ trọn vẹn hoạt chất và hiệu quả sản phẩm.</p><p>&nbsp;</p><p><img src="https://media.hcdn.vn/wysiwyg/HaNguyen1/sua-rua-mat-dang-gel-vichy-lam-sach-sau-cho-da-nhon-mun-200ml_doi-mau-2021.jpg" alt="Gel Rửa Mặt Cho Da Dầu Mụn Vichy Normaderm Phytosolution Intensive Purifying Gel 200ml bao bì mới 2021" width="800"></p>')
INSERT [dbo].[ChiTietSanPhams] ([MaChiTietSanPham], [MaSanPham], [MaNhaSanXuat], [MoTa], [ChiTiet]) VALUES (101, 98, 31, N'Nước Hoa Hồng Klairs Supple Preparation là dòng sản phẩm toner được thương hiệu dear,Klairs thiết kế chuyên biệt dành cho làn da nhạy cảm. Với bảng thành phần chiết xuất từ thực vật và kết cấu lỏng nhẹ, thấm nhanh trên da, nước hoa hồng Klairs sẽ giúp cân bằng độ pH và cấp ẩm cho làn da hiệu quả, hỗ trợ cho các bước skincare tiếp theo đạt hiệu quả tối ưu.', N'<h2>Nước hoa hồng Dear, Klairs Supple Preparation Facial Toner 180ml</h2><p><strong>Nước hoa hồng Dear, Klairs Supple Preparation Facial Toner</strong>&nbsp;sản phẩm tối ưu trong việc làm sạch, cân bằng độ PH và dưỡng ẩm, có kết cấu dạng lỏng nhẹ, trong suốt và không màu, thẩm thấu nhanh chóng vào da. Kết hợp cùng mùi hương thảo mộc vô cùng dễ chịu, hoàn toàn không gây kích ứng hay cảm giác nhờn dính.&nbsp;</p><p>&nbsp;</p><p><img src="https://media.hcdn.vn/wysiwyg/HaNguyen2/nuoc-hoa-hong-klairs-danh-cho-da-nhay-cam-180ml.jpg" alt="Nước Hoa Hồng Klairs Không Mùi Cho Da Nhạy Cảm" width="800" height="800"></p><p>&nbsp;</p><p><strong>* Update:&nbsp;</strong>Với triết lý mong muốn mang tới những điều tốt đẹp nhất cho làn da, thương hiệu dear,Klairs luôn thay đổi và chuyển mình mỗi ngày theo hướng tích cực hơn để đáp ứng niềm tin của người dùng. Chính vì thế,<strong> Nước Hoa Hồng Klairs&nbsp;Supple Preparation Facial Toner</strong>&nbsp;lại được cẩn trọng hơn hết khi thay đổi từ bao bì bên ngoài cho đến thành phần bên trong, cụ thể như sau:</p><p>Tối giản phần "Triết lý thương hiệu" ở mặt bên hộp.</p><p>Thay đổi vị trí thành phần chính và các logo chứng nhận.</p><p>Thay đổi nhỏ trong văn bản.</p><p>Đặc biệt, lượng tinh dầu tự nhiên (essential oils) trong sản phẩm đã được giảm thiểu tối đa để lành tính hơn nữa với những làn da nhạy cảm.</p><h3>Loại da phù hợp:</h3><ul><li>Sản phẩm thích hợp với mọi loại da, đặc biệt là da nhạy cảm.</li></ul><h3>Giải pháp cho tình trạng da:</h3><p>Da <a href="https://hasaki.vn/danh-muc/nhay-cam-kich-ung-c1885.html"><strong>nhạy cảm</strong></a>, dễ bị mẩn đỏ.</p><p>Da tổn thương do mụn.</p><p>Da <a href="https://hasaki.vn/danh-muc/thieu-am-thieu-nuoc-c1883.html"><strong>thiếu ẩm - thiếu nước</strong></a>.</p><h3>Công dụng:</h3><p><strong>Phyto-Oligo (tế bào gốc thực vật)&nbsp;</strong>dưỡng ẩm toàn diện và giải quyết tình trạng khô da.</p><p><strong>Axit Amin từ Lúa Mì&nbsp;</strong>giảm viêm nhiễm trên da.</p><p><strong>Klairs Supple Preparation Facial Toner </strong>giúp<strong>&nbsp;</strong>kéo dài độ ẩm hơn 20% so với các loại Toner thông thường&nbsp;với Sodium Hyaluronate và Beta-glucan.</p><p>Chống viêm&nbsp;và&nbsp;cải thiện tình trạng mụn đầu trắng.</p><p>Với các chiết xuất từ thực vật và các thành phần làm dịu:&nbsp;toner dưỡng ẩm dịu nhẹ, không gây kích ứng cho mọi loại da, ngay cả đối với những làn da nhạy cảm nhất.</p><p>Có mùi hương thảo dược, cam thảo nhẹ nhàng từ tinh dầu các loại hoa, nói không với chất tạo mùi nhân tạo.</p>')
INSERT [dbo].[ChiTietSanPhams] ([MaChiTietSanPham], [MaSanPham], [MaNhaSanXuat], [MoTa], [ChiTiet]) VALUES (102, 99, 28, N'Nước Hoa Hồng Simple Kind to Skin Soothing Facial Toner đến từ thương hiệu chăm sóc da Simple xuất xứ Anh Quốc là sản phẩm Toner không chứa cồn được thiết kế phù hợp cho làn da nhạy cảm và dễ nổi mụn, giúp làm sạch sâu và cân bằng độ pH, cung cấp độ ẩm dịu nhẹ cho làn da, mang lại cảm giác tươi mát và sảng khoái sau khi sử dụng.', N'<p><br><strong>Nước Hoa Hồng&nbsp;Dành Cho Da Nhạy Cảm&nbsp;Simple&nbsp;Kind to Skin Soothing Facial Toner </strong>hiện đã có mặt tại <a href="skincare.com">Skincare </a>với 2 phân loại cho bạn lựa chọn:</p><p><strong>01 chai 200ml</strong></p><p><strong>Combo 10 chai 200ml</strong></p><p>&nbsp;</p><p><img src="https://media.hcdn.vn/wysiwyg/Chau/nuoc-can-bang-simple-lam-diu-da-cap-am-1.jpg" alt="Nước Hoa Hồng Simple Kind to Skin Soothing Facial Toner" width="800"></p><p><i><strong>&nbsp;Lưu ý: Hiện tại </strong></i><a href="skincare.com">Skincare&nbsp;</a><i><strong>đang bán song song cả 2 mẫu cũ và mới.</strong></i></p><p><br>&nbsp;</p><h2>Loại da phù hợp:</h2><ul><li>Sản phẩm phù hợp cho mọi loại da, đặc biệt là da nhạy cảm.</li></ul><h2>Giải pháp cho tình trạng da:</h2><p><a href="https://hasaki.vn/danh-muc/nhay-cam-kich-ung-c1885.html"><strong>Da nhạy cảm, dễ kích ứng</strong></a></p><p><a href="https://hasaki.vn/danh-muc/thieu-am-thieu-nuoc-c1883.html"><strong>Da thiếu ẩm, thiếu nước</strong></a></p><p>&nbsp;</p><p><img src="https://media.hcdn.vn/wysiwyg/Chau/nuoc-can-bang-simple-lam-diu-da-cap-am-2.jpg" alt="Nước Hoa Hồng Simple Kind to Skin Soothing Facial Toner 200ml" width="800"></p>')
INSERT [dbo].[ChiTietSanPhams] ([MaChiTietSanPham], [MaSanPham], [MaNhaSanXuat], [MoTa], [ChiTiet]) VALUES (103, 100, 30, N'Nước Hoa Hồng SOME BY MI Cho Da Mụn Miracle Toner AHA- BHA-PHA 30 Days 150ml đến từ thương hiệu mỹ phẩm chăm sóc da SOME BY MI là dòng Toner có chứa phức hợp các loại axit cùng chiết xuất Tràm Trà, giúp làm sạch sâu da, hỗ trợ kháng khuẩn, kháng viêm, ngăn ngừa và làm giảm mụn, đồng thời góp phần thu nhỏ lỗ chân lông, mang lại cho bạn làn da sạch thoáng và mịn màng không tì vết.', N'<p><br><br>&nbsp;</p><p><img src="https://media.hcdn.vn/wysiwyg/HaNguyen/nuoc-hoa-hong-some-by-mi-cho-da-mun-150ml-1.jpg" alt="Nước Hoa Hồng Cho Da Mụn Miracle Toner SOME BY MI AHA- BHA-PHA 30 Days" width="800"></p><p>&nbsp;</p><figure class="image"><img src="https://media.hcdn.vn/wysiwyg/HaNguyen/nuoc-hoa-hong-some-by-mi-cho-da-mun-150ml-2.jpg" alt="Nước Hoa Hồng SOME BY MI Cho Da Mụn Miracle Toner AHA- BHA-PHA 30 Days 150ml hiện đã có mặt tại Hasaki" width="800"></figure><p>&nbsp;</p><h2><strong>Loại da phù hợp:</strong></h2><ul><li>Sản phẩm dành cho mọi loại da, đặc biệt là da dầu / hỗn hợp dầu.</li></ul><h2><strong>Giải pháp cho tình trạng da:</strong></h2><p><a href="https://hasaki.vn/danh-muc/mun-c1877.html"><strong>Da mụn</strong></a></p><p><a href="https://hasaki.vn/danh-muc/dau-thua-lo-chan-long-to-c1879.html"><strong>Da dầu thừa - lỗ chân lông to</strong></a></p>')
INSERT [dbo].[ChiTietSanPhams] ([MaChiTietSanPham], [MaSanPham], [MaNhaSanXuat], [MoTa], [ChiTiet]) VALUES (104, 101, 31, N'Nước Hoa Hồng Klairs Supple Preparation là dòng sản phẩm toner được thương hiệu dear,Klairs thiết kế chuyên biệt dành cho làn da nhạy cảm. Với bảng thành phần chiết xuất từ thực vật và kết cấu lỏng nhẹ, thấm nhanh trên da, nước hoa hồng Klairs sẽ giúp cân bằng độ pH và cấp ẩm cho làn da hiệu quả, hỗ trợ cho các bước skincare tiếp theo đạt hiệu quả tối ưu.', N'<p><strong>Nước hoa hồng Dear, Klairs Supple Preparation Facial Toner</strong>&nbsp;sản phẩm tối ưu trong việc làm sạch, cân bằng độ PH và dưỡng ẩm, có kết cấu dạng lỏng nhẹ, trong suốt và không màu, thẩm thấu nhanh chóng vào da. Kết hợp cùng mùi hương thảo mộc vô cùng dễ chịu, hoàn toàn không gây kích ứng hay cảm giác nhờn dính.&nbsp;</p><p>&nbsp;</p><p><img src="https://media.hcdn.vn/wysiwyg/HaNguyen2/nuoc-hoa-hong-klairs-danh-cho-da-nhay-cam-180ml.jpg" alt="Nước Hoa Hồng Klairs Không Mùi Cho Da Nhạy Cảm" width="800" height="800"></p><p>&nbsp;</p><p><strong>* Update:&nbsp;</strong>Với triết lý mong muốn mang tới những điều tốt đẹp nhất cho làn da, thương hiệu dear,Klairs luôn thay đổi và chuyển mình mỗi ngày theo hướng tích cực hơn để đáp ứng niềm tin của người dùng. Chính vì thế,<strong> Nước Hoa Hồng Klairs&nbsp;Supple Preparation Facial Toner</strong>&nbsp;lại được cẩn trọng hơn hết khi thay đổi từ bao bì bên ngoài cho đến thành phần bên trong, cụ thể như sau:</p><p>Tối giản phần "Triết lý thương hiệu" ở mặt bên hộp.</p><p>Thay đổi vị trí thành phần chính và các logo chứng nhận.</p><p>Thay đổi nhỏ trong văn bản.</p><p>Đặc biệt, lượng tinh dầu tự nhiên (essential oils) trong sản phẩm đã được giảm thiểu tối đa để lành tính hơn nữa với những làn da nhạy cảm.</p><h3>Loại da phù hợp:</h3><ul><li>Sản phẩm thích hợp với mọi loại da, đặc biệt là da nhạy cảm.</li></ul><h3>Giải pháp cho tình trạng da:</h3><p>Da <a href="https://hasaki.vn/danh-muc/nhay-cam-kich-ung-c1885.html"><strong>nhạy cảm</strong></a>, dễ bị mẩn đỏ.</p><p>Da tổn thương do mụn.</p><p>Da <a href="https://hasaki.vn/danh-muc/thieu-am-thieu-nuoc-c1883.html"><strong>thiếu ẩm - thiếu nước</strong></a>.</p><h3>Công dụng:</h3><p><strong>Phyto-Oligo (tế bào gốc thực vật)&nbsp;</strong>dưỡng ẩm toàn diện và giải quyết tình trạng khô da.</p><p><strong>Axit Amin từ Lúa Mì&nbsp;</strong>giảm viêm nhiễm trên da.</p><p><strong>Klairs Supple Preparation Facial Toner </strong>giúp<strong>&nbsp;</strong>kéo dài độ ẩm hơn 20% so với các loại Toner thông thường&nbsp;với Sodium Hyaluronate và Beta-glucan.</p><p>Chống viêm&nbsp;và&nbsp;cải thiện tình trạng mụn đầu trắng.</p><p>Với các chiết xuất từ thực vật và các thành phần làm dịu:&nbsp;toner dưỡng ẩm dịu nhẹ, không gây kích ứng cho mọi loại da, ngay cả đối với những làn da nhạy cảm nhất.</p><p>Có mùi hương thảo dược, cam thảo nhẹ nhàng từ tinh dầu các loại hoa, nói không với chất tạo mùi nhân tạo.</p><p>&nbsp;</p><p><img src="https://media.hcdn.vn/wysiwyg/HaNguyen/nuoc-hoa-hong-klairs-danh-cho-da-nhay-cam-180ml-5.jpg" alt="Nước Hoa Hồng Klairs Không Mùi Cho Da Nhạy Cảm Hasaki" width="800"></p>')
INSERT [dbo].[ChiTietSanPhams] ([MaChiTietSanPham], [MaSanPham], [MaNhaSanXuat], [MoTa], [ChiTiet]) VALUES (105, 102, 32, N'Nước Hoa Hồng Dr.Pepti Centella Toner là sản phẩm Toner đa năng dành cho mọi loại da đến từ thương hiệu Dr.Pepti của Hàn Quốc, với nhiều công dụng trong một sản phẩm như: cân bằng độ pH, cấp ẩm và làm mềm da, giúp da thẩm thấu các dưỡng chất một cách tốt nhất, đồng thời ngăn ngừa lão hoá, làm sáng da, mờ vết thâm, thúc đẩy tái tạo và nuôi dưỡng làn da căng bóng khoẻ mạnh.', N'<p><strong>Nước Hoa Hồng&nbsp;Dr.Pepti Centella Toner</strong>&nbsp;là sản phẩm <a href="https://hasaki.vn/danh-muc/toner-c1857.html"><strong>Toner</strong></a>&nbsp;đa năng dành cho mọi loại da đến từ <a href="https://hasaki.vn/thuong-hieu/dr-pepti.html"><strong>thương hiệu Dr.Pepti</strong></a>&nbsp;của Hàn Quốc, với nhiều công dụng trong một sản phẩm như: cân bằng độ pH,&nbsp;cấp ẩm và làm mềm da, giúp da thẩm thấu các dưỡng chất một cách tốt nhất, đồng thời ngăn ngừa lão hoá, làm sáng da, mờ vết thâm, thúc đẩy tái tạo và nuôi dưỡng làn da căng bóng khoẻ mạnh.</p><p><br>&nbsp;</p><p><img src="https://media.hcdn.vn/wysiwyg/HaNguyen1/nuoc-hoa-hong-dr-pepti-duong-da-cang-bong-180ml-1.jpg" alt="Nước Hoa Hồng Dưỡng Da Căng Bóng Dr.Pepti+ Centella Toner" width="800"><br>&nbsp;</p><p><br>&nbsp;</p><p>Công thức&nbsp;<strong>Dr.Pepti Centella Toner</strong>&nbsp;chứa đến 63% tinh chất rau má&nbsp;giúp làm dịu da kích ứng bởi các tác nhân của môi trường bên ngoài. Đồng thời, 2 loại peptide cùng chiết xuất rễ cây bạch mai giúp bổ sung độ ẩm dồi dào cho da, nuôi dưỡng làn da săn mịn, khỏe mạnh. Ngoài ra còn có Niacinamide giúp cải thiện tông màu da, Adenosine ngăn ngừa các dấu hiệu lão hoá,&nbsp;Glycerin và Sodium Hyaluronate cấp ẩm chuyên sâu,...</p><p>Đặc biệt, thành phần của&nbsp;<strong>Nước Hoa Hồng&nbsp;Dr.Pepti&nbsp;</strong>hoàn toàn không chứa cồn, hương liệu, màu nhân tạo, mineral oil và paraben, do đó vô cùng an toàn và phù hợp với mọi làn da, kể cả da nhạy cảm.</p><p><strong>Nước Hoa Hồng Dưỡng Da Căng Bóng Dr.Pepti Centella Toner 180ml&nbsp;</strong>hiện đã có mặt tại <a href="https://hasaki.vn/"><strong>Hasaki</strong></a>.</p><p>&nbsp;</p><p><img src="https://media.hcdn.vn/wysiwyg/HaNguyen1/nuoc-hoa-hong-dr-pepti-duong-da-cang-bong-180ml-2.jpg" alt="Nước Hoa Hồng Dưỡng Da Căng Bóng Dr.Pepti+ Centella Toner 180ml" width="800"></p><p>&nbsp;</p><p><img src="https://media.hcdn.vn/wysiwyg/HaNguyen1/nuoc-hoa-hong-dr-pepti-duong-da-cang-bong-180ml-5.jpg" alt="Nước Hoa Hồng Dưỡng Da Căng Bóng Dr.Pepti+ Centella Toner 180ml hiện đã có mặt tại Hasaki" width="800"></p><p>&nbsp;</p><h2>Loại da phù hợp:</h2><p>Sản phẩm phù hợp với mọi loại da, kể cả những làn da nhạy cảm nhất.</p>')
INSERT [dbo].[ChiTietSanPhams] ([MaChiTietSanPham], [MaSanPham], [MaNhaSanXuat], [MoTa], [ChiTiet]) VALUES (106, 103, 10, N'Nước Hoa Hồng Dành Cho Da Nhạy Cảm Bioderma Sensibio Tonique là sản phẩm chăm sóc da đến từ thương hiệu Bioderma nổi tiếng tại Pháp, với chiết xuất dưa leo giúp tăng cường độ ẩm cho da, mang lại sự mát mẻ và nhẹ dịu, sát khuẩn tự nhiên, giảm sưng tấy, chống mụn. Giúp da tươi sáng, mềm mịn, ngừa nếp nhăn, chống lão hóa, chống khô da và các dấu hiệu nứt nẻ.', N'<p><strong>Nước Hoa Hồng Dành Cho Da Nhạy Cảm Bioderma Sensibio Tonique</strong> là sản phẩm <a href="https://hasaki.vn/danh-muc/cham-soc-da-mat-c4.html"><strong>chăm sóc da</strong></a> đến từ thương hiệu <a href="https://hasaki.vn/thuong-hieu/bioderma.html"><strong>Bioderma</strong></a> nổi tiếng tại Pháp, với chiết xuất dưa leo giúp tăng cường độ ẩm cho da, mang lại sự mát mẻ và nhẹ dịu, sát khuẩn tự nhiên, giảm sưng tấy, chống mụn. Giúp da tươi sáng, mềm mịn, ngừa nếp nhăn, chống lão hóa, chống khô da và các dấu hiệu nứt nẻ.</p><p>Hiện sản phẩm <strong>Nước Hoa Hồng Dành Cho Da Nhạy Cảm Bioderma Sensibio Tonique</strong> đã có mặt tại <a href="https://hasaki.vn/"><strong>Hasaki</strong></a> với 2 dung tích:</p><p><strong>100ml</strong></p><p><strong>250ml&nbsp;</strong></p><p><img src="https://media.hcdn.vn/wysiwyg/kimhuy/nuoc-hoa-hong-bioderma-danh-cho-da-nhay-cam-250ml-1.jpg" alt="Nước Hoa Hồng Dành Cho Da Nhạy Cảm Bioderma Sensibio Tonique" width="800" height="800"><br>&nbsp;</p><p>&nbsp;</p><h2>Loại da phù hợp:</h2><p>Phù hợp cho mọi loại da, đặc biệt là da nhạy cảm.</p><h2>Ưu thế nổi bật:</h2><p>Glycerin: Glycerin cấp ẩm cho da khiến da trở nên mềm mại khỏe đẹp từ sâu bên trong và làm chậm tiến trình lão hoá da, ngoài ra còn làm sạch da và hỗ trợ điều trị mụn, nhiễm trùng da.</p><p>Chiết xuất dưa leo: chứa nhiều nước, vitamin C, A, E, và khoáng chất, có tác dụng cung cấp độ ẩm, mang lại sự mát mẻ và nhẹ dịu cho làn da, giảm thâm nám, sát khuẩn tự nhiên, giảm sưng tấy, chống mụn, chống nắng và các tác hại từ tia cực tím gây ra. Giúp da tươi sáng, mềm mịn, ngừa nếp nhăn, chống lão hóa, chống khô da và các dấu hiệu nứt nẻ, giảm quầng thâm hiệu quả.</p><p>Rhamnose: có khả năng chống oxy hóa tuyệt vời, tái tạo và củng cố hệ thống phòng vệ cho làn da. Từ đó, nâng đỡ làn da và duy trì hiệu quả săn chắc lâu dài cho da.</p><p><br>&nbsp;</p><p><img src="https://media.hcdn.vn/wysiwyg/kimhuy/nuoc-hoa-hong-bioderma-danh-cho-da-nhay-cam-250ml.jpg" alt="Nước Hoa Hồng Bioderma Sensibio Tonique" width="800" height="800"></p><p><br>&nbsp;</p><p><strong><img src="https://media.hcdn.vn/wysiwyg/kimhuy/nuoc-hoa-hong-bioderma-danh-cho-da-nhay-cam-250ml-2.jpg" alt="Nước Hoa Hồng Bioderma Sensibio Tonique Dành Cho Da Nhạy Cảm " width="800" height="878"></strong></p>')
INSERT [dbo].[ChiTietSanPhams] ([MaChiTietSanPham], [MaSanPham], [MaNhaSanXuat], [MoTa], [ChiTiet]) VALUES (107, 104, 14, N'Kem chống nắng giúp bảo vệ da khỏi tia UVB & UVA dài và giảm bóng nhờn La Roche-Posay Anthelios UV Mune 400 Oil Control Gel-Cream 50ml là kem chống nắng dành cho da dầu phiên bản công thức cải tiến mới đến từ thương hiệu dược mỹ phẩm La Roche-Posay, giúp kiểm soát bóng nhờn và bảo vệ da trước tác hại từ ánh nắng & ô nhiễm, ngăn chặn các tác nhân gây lão hóa sớm. Sản phẩm có công thức chống thấm nước thích hợp dùng hằng ngày và cả những hoạt động ngoài trời.', N'<p><br>Tia UVA dài được mệnh danh là kẻ thù nguy hiểm nhất với làn da, bởi bước sóng lên đến 380nm-400nm, làm tổn thương những tế bào sâu dưới da. Với cường độ mạnh vào mùa hè, tia UVA dài sẽ gây ra những tác hại lâu dài như thâm nám, lão hóa da.</p><p>Thấu hiệu được nhu cầu tìm kiếm sản phẩm chống nắng có khả năng bảo vệ da trước tác hại của tia UVA dài, thương hiệu La Roche-Posay đã cho ra đời phiên bản <strong>UVMune 400 Oil Control Gel Cream</strong> -&nbsp;kem chống nắng có màng lọc tiên tiến nhất thị trường Mexoryl 400.&nbsp;Kết hợp cùng công nghệ Netlock tạo nên lớp lá chắn bền vững giúp bảo vệ da khỏi tia UVA dài nguy hiểm gây thâm nám.</p><p>Bên cạnh đó,&nbsp;<strong>kem chống nắng&nbsp;La Roche-Posay&nbsp;UVMune 400 Oil Control Gel Cream phiên bản mới&nbsp;</strong>được cải tiến với&nbsp;nồng độ phần trăm hoạt chất Airlicium được tăng lên, mang đến hiệu quả kiềm dầu tốt hơn đến 12h. Ngoài ra, sản phẩm còn có&nbsp;kết cấu mới dễ tán, thấm nhanh không gây vón, mang lại cho bạn một lớp finish mịn lì và bóng khỏe tự nhiên.</p><p>Hiện tại, <a href="https://hasaki.vn/"><strong>Hasaki</strong></a> đang bán song song cả 2 phiên bản mới và cũ của kem chống nắng&nbsp;<strong>La Roche-Posay </strong>như sau:</p><p><strong>La Roche-Posay&nbsp;Anthelios UV Mune 400 Oil Control Gel-Cream:</strong> phiên bản mới cải tiến.</p><p>&nbsp;</p><p><img src="https://media.hcdn.vn/wysiwyg/HaNguyen3/kem-chong-nang-la-roche-posay-kiem-soat-dau-spf50-50ml-1.jpg" alt="Kem chống nắng La Roche-Posay Anthelios UV Mune 400 Oil Control Gel-Cream phiên bản mới" width="800"></p><p>&nbsp;</p><p><strong>La Roche-Posay Anthelios Dry Touch Finish Mattifying Effect:&nbsp;</strong>phiên bản cũ, bao gồm hai mẫu bao bì tiếng Đức và Ý.</p><p>&nbsp;</p><p><img src="https://media.hcdn.vn/wysiwyg/HaNguyen3/kem-chong-nang-la-roche-posay-kiem-soat-dau-spf50-50ml-2.jpg" alt="Kem chống nắng La Roche-Posay Anthelios Dry Touch Finish Mattifying Effect phiên bản cũ, bán song song 2 mẫu bao bì tiếng Đức và Ý" width="800"></p><p>&nbsp;</p><h2>Loại da phù hợp:</h2><p>Sản phẩm phù hợp cho da dầu và da hỗn hợp.</p><p>Thích hợp sử dụng cho da mặt và cổ.</p>')
INSERT [dbo].[ChiTietSanPhams] ([MaChiTietSanPham], [MaSanPham], [MaNhaSanXuat], [MoTa], [ChiTiet]) VALUES (108, 105, 33, N'Kem Chống Nắng Skin1004 Cho Da Nhạy Cảm là sản phẩm kem chống nắng đến từ thương hiệu mỹ phẩm Skin1004 của Hàn Quốc, là kem chống nắng vật lý với chiết xuất rau má và chất kem mỏng nhẹ có màu giúp che phủ nhẹ khuyết điểm cho da. Công thức đa năng vừa chống nắng vừa đều màu da lại dưỡng ẩm chính là sản phẩm mà những cô nàng da mụn hay da dầu nhạy cảm cần vì không cần sử dụng quá nhiều bước lỉnh kỉnh.', N'<p>Ánh nắng mặt trời là một trong những nguyên nhân hàng đầu dẫn đến lão hóa da sớm, bên cạnh quá trình lão hóa tự nhiên do vấn đề tuổi tác. Việc tiếp xúc thường xuyên quá mức với ánh nắng mặt trời sẽ khiến da mất đi Collagen và Elastin, đồng thời làm suy yếu đi quá trình tổng hợp Collagen mới, dẫn đến da mất đi độ đàn hồi và săn chắc vốn có, trở nên chùng nhão, chảy xệ, hình thành nếp nhăn… Ngoài ra ánh nắng mặt trời còn khiến da trở nên đen sạm, hình thành các đốm sắc tố như tàn nhang, thâm nám, đồi mồi… Vì thế, việc sử dụng kem chống nắng hằng ngày là cực kì quan trọng và là bước đầu tiên giúp ngăn ngừa lão hóa da sớm mà bạn tuyệt đối không thể bỏ qua. Tuy nhiên, có rất nhiều bạn lo ngại về làn da quá nhạy cảm, da bị mụn không thể dùng được <a href="https://hasaki.vn/danh-muc/chong-nang-da-mat-c11.html"><strong>kem chống nắng</strong></a>, hoặc các loại kem chống nắng trên thị trường gây trắng da, bệch mặt, bóng nhẫy như chảo dầu… Đây chính là lúc bạn nên thử qua dòng sản phẩm này nhé.</p><p><a href="https://hasaki.vn/"><strong>Hasaki</strong></a>&nbsp;xin giới thiệu dòng&nbsp;<strong>Kem Chống Nắng Skin1004 Madagascar Centella Air-Fit Suncream Plus SPF50+ PA++++&nbsp;</strong>mang đến cho bạn loại kem chống nắng hoàn hảo cho làn da mụn nhạy cảm, dịu nhẹ và an toàn với 2 dung tích: <strong>20ml; 50ml</strong></p><p>&nbsp;</p><p><img src="https://media.hcdn.vn/wysiwyg/minhchau/kem-chong-nang-skin1004-chiet-xuat-rau-ma-spf50-pa-50ml-2.jpg" alt="Kem Chống Nắng Skin1004 Cho Da Nhạy Cảm" width="800"></p><p><br>&nbsp;</p><h2><strong>Loại da phù hợp:</strong></h2><ul><li>Sản phẩm phù hợp mọi loại da.&nbsp;</li></ul><h2>Giải pháp cho tình trạng da:&nbsp;</h2><p>Da thường xuyên tiếp xúc ánh nắng mặt trời.&nbsp;</p><p>Da <a href="https://hasaki.vn/danh-muc/nhay-cam-kich-ung-c1885.html"><strong>nhạy cảm - kích ứng</strong></a>.</p><h2><strong>Ưu thế nổi bật:</strong></h2><p>Thêm 20% chiết xuất <strong>rau má</strong> so với phiên bản trước,&nbsp;rau má vùng Madagascar giàu vitamin B,C và polyphenols có khả năng chống oxi hóa, phục hồi, làm dịu da, kháng viêm, giảm thâm, giúp da trắng sáng mịn màng, hỗ trợ giảm mụn.</p><p>Kem chống nắng vật lý không chứa khoáng chất nano cùng với độ <strong>SPF 50+ PA++++</strong> giúp bảo vệ làn da tối ưu.</p><p>Chứa thành phần<strong> Multiex BASAM</strong> với 7 chiết xuất từ thực vật giúp dưỡng ẩm da nhẹ nhàng, bảo vệ da luôn khoẻ mạnh, củng cố khả năng tái tạo da.</p><p><strong>Madewhite</strong> thành phần nâng tông từ chiết xuất rau má có khả năng nâng tông da tự nhiên, dưỡng sáng da tự nhiên.&nbsp;</p><p>Công thức dạng kem tạo ra lớp bảo vệ mà không bết dính và tạo độ dưỡng ẩm vừa phải.</p><p><br>&nbsp;</p><p><img src="https://media.hcdn.vn/wysiwyg/ThuyHao/kem-chong-nang-chiet-xuat-rau-ma-skin1004-madagascar-centella-air-fit-suncream-spf50-pa-50ml-4.png" alt="Kem Chống Nắng Skin1004 Madagascar Centella Air-Fit Suncream Plus SPF50+ PA++++ 50ml " width="800"><br>&nbsp;</p><p><br>&nbsp;</p><h2>Độ an toàn:</h2><p>Không chứa dầu, không Parabens.</p><h2><strong>Bảo quản:</strong></h2><p>Nơi khô ráo thoáng mát.</p><p>Tránh ánh nắng trực tiếp, nơi có nhiệt độ cao hoặc ẩm ướt.</p><p>Đậy nắp lại sau khi dùng</p>')
INSERT [dbo].[ChiTietSanPhams] ([MaChiTietSanPham], [MaSanPham], [MaNhaSanXuat], [MoTa], [ChiTiet]) VALUES (109, 106, 13, N'Kem Chống Nắng MartiDerm The Originals Proteos Screen SPF50+ Fluid Cream đến từ thương hiệu dược mỹ phẩm Martiderm của Tây Ban Nha là dòng kem chống nắng dạng lỏng dễ hấp thụ với chỉ số SPF 50+ giúp ngăn ngừa và sửa chữa các dấu hiệu lão hoá da sớm. Sản phẩm cung cấp màng lọc chống nắng phổ rộng chống lại các tia UVA, UVB, IR (hồng ngoại), HEV (ánh sáng xanh). Sự kết hợp của Proteoglycans, phức hợp Spectrum Complex, phức hợp Hyaluronic Acid & Silicon Complex giúp giữ cho làn da trẻ trung, tươi tắn và đều màu. Kết cấu dạng cream-to-powder độc đáo mang lại cảm giác mượt mà, mỏng nhẹ tựa "vô hình" trên da.', N'<p><strong>Kem Chống Nắng MartiDerm The Originals Proteos Screen SPF50+ Fluid Cream</strong> đến từ <a href="https://hasaki.vn/thuong-hieu/martiderm.html"><strong>thương hiệu dược mỹ phẩm Martiderm</strong></a> của Tây Ban Nha&nbsp;là dòng kem chống nắng dạng lỏng dễ hấp thụ&nbsp;với chỉ số SPF 50+ giúp ngăn ngừa và sửa chữa các dấu hiệu lão hoá da sớm. Sản phẩm cung cấp màng lọc chống nắng phổ rộng chống lại các&nbsp;tia UVA, UVB, IR (hồng ngoại),&nbsp;HEV (ánh sáng xanh).&nbsp;Sự kết hợp của&nbsp;Proteoglycans, phức hợp&nbsp;Spectrum Complex, phức hợp Hyaluronic Acid &amp; Silicon Complex giúp giữ cho&nbsp;làn da trẻ trung, tươi tắn và đều màu. Kết cấu dạng cream-to-powder độc đáo mang lại cảm giác mượt mà, mỏng nhẹ tựa "vô hình" trên da.</p><p><strong>Kem Chống Nắng Phổ Rộng Toàn Diện Ngừa Lão Hóa, Phòng Chống Nám Quay Lại MartiDerm The Originals Proteos Screen SPF50+ Fluid Cream 40ml</strong> hiện đã có mặt tại <strong>Hasaki.</strong></p><p><br>&nbsp;</p><p><strong><img src="https://media.hcdn.vn/wysiwyg/HaNguyen1/kem-chong-nang-martiderm-pho-rong-toan-dien-spf50-40ml-1.jpg" alt="Kem Chống Nắng MartiDerm The Originals Proteos Screen SPF50+ Fluid Cream 40ml" width="800"></strong></p><p><br>&nbsp;</p><h2>Loại da phù hợp:</h2><ul><li>Sản phẩm&nbsp;phù hợp cho mọi loại da.</li></ul><h2>Giải pháp cho tình trạng da:</h2><p>Những ai đang cần một giải pháp chống nắng phổ rộng và toàn diện&nbsp;để&nbsp;bảo vệ da hằng ngày.</p><p>Những ai mong muốn một sản phẩm chống nắng mỏng nhẹ, thấm nhanh, tính&nbsp;thẩm mỹ cao, không nhờn rít da.</p><p>Da thường xuyên phải tiếp xúc với ánh nắng mặt trời.</p><p>Da thường xuyên phải tiếp xúc với ánh sáng xanh từ màn hình&nbsp;máy tính hoặc các thiết bị điện tử.</p><p>Khi tham gia các hoạt động thể thao ngoài trời, bơi lội...</p>')
INSERT [dbo].[ChiTietSanPhams] ([MaChiTietSanPham], [MaSanPham], [MaNhaSanXuat], [MoTa], [ChiTiet]) VALUES (110, 107, 34, N'Sữa Chống Nắng Anessa Dưỡng Da Kiềm Dầu Bảo Vệ Hoàn Hảo là sản phẩm chống nắng đến từ thương hiệu chống nắng dưỡng da ANESSA hàng đầu Nhật Bản suốt 21 năm liên tiếp, giúp chống lại tác hại của tia UV & bụi mịn tối ưu dưới mọi điều kiện sinh hoạt, kể cả thời tiết khắc nghiệt nhất. Sản phẩm đặc biệt phù hợp với làn da thiên dầu.', N'<p><strong>Sữa Chống Nắng Anessa Dưỡng Da Kiềm Dầu Bảo Vệ Hoàn Hảo</strong>&nbsp;là <a href="https://hasaki.vn/danh-muc/san-pham-chong-nang-c1871.html"><strong>sản phẩm chống nắng</strong></a>&nbsp;đến từ thương hiệu&nbsp;chống nắng dưỡng da <a href="https://hasaki.vn/thuong-hieu/anessa.html"><strong>ANESSA</strong></a> hàng đầu Nhật Bản suốt 21 năm liên tiếp, giúp chống lại tác hại của tia UV &amp; bụi mịn tối ưu dưới mọi điều kiện sinh hoạt, kể cả thời tiết khắc nghiệt nhất. Sản phẩm đặc biệt phù hợp với làn da thiên dầu.</p><p><strong>Anessa&nbsp;Perfect UV Sunscreen Skincare Milk N SPF50+ PA++++</strong>&nbsp;ứng dụng công nghệ Auto Booster và Very Water Resistant độc quyền từ thương hiệu ANESSA, giúp cho lớp màng chống UV trở nên bền vững hơn khi gặp NHIỆT ĐỘ CAO - ĐỘ ẨM - MỒ HÔI - NƯỚC - MA SÁT, đồng thời chống trôi trong nước lên đến 80 phút, chống bụi mịn PM.25 và chống dính cát. Ngoài ra, sự bổ sung của phức hợp 50%&nbsp;thành phần dưỡng da giúp ngăn ngừa lão hoá do tia UV hiệu quả và nuôi dưỡng da ẩm mịn.</p><p><strong>Sữa Chống Nắng Anessa&nbsp;Perfect UV Sunscreen Skincare Milk N SPF50+ PA++++&nbsp;</strong>hiện đã có mặt tại <strong>Hasaki </strong>với 3 quy cách đóng gói:<strong> 20ml; 20mlx2;&nbsp;60ml; 60mlx2</strong></p><p><br>&nbsp;</p><p><img src="https://media.hcdn.vn/wysiwyg/HaNguyen1/sua-chong-nang-anessa-duong-da-kiem-dau-bao-ve-hoan-hao-1.jpg" alt="Sữa Chống Nắng Anessa Dưỡng Da Kiềm Dầu 60ml (Mẫu Mới 2022)" width="800"></p><p>&nbsp;</p><figure class="image"><img style="aspect-ratio:800/800;" src="https://media.hcdn.vn/wysiwyg/kimhuy/sua-chong-nang-anessa-duong-da-kiem-dau-bao-ve-hoan-hao-2.jpg" alt="Sữa Chống Nắng Anessa Dưỡng Da Kiềm Dầu 60ml (Phiên Bản Mới 2022)" width="800" height="800"></figure><p>&nbsp;</p><h2>Loại da phù hợp:</h2><p>Sản phẩm phù hợp với mọi loại da, đặc biệt là da thường đến <a href="https://hasaki.vn/danh-muc/da-dau-c90.html"><strong>da dầu</strong></a>/hỗn hợp thiên dầu.</p><p>Có thể sử dụng cho da mặt và toàn thân.</p><h2>Giải pháp cho tình trạng da:</h2><p><a href="https://hasaki.vn/danh-muc/dau-thua-lo-chan-long-to-c1879.html"><strong>Dầu thừa - lỗ chân lông to</strong></a></p><p>Thích hợp sử dụng hàng ngày và trong các&nbsp;hoạt động thể thao/hoạt động ngoài trời (marathon, chạy bộ,...)</p>')
INSERT [dbo].[ChiTietSanPhams] ([MaChiTietSanPham], [MaSanPham], [MaNhaSanXuat], [MoTa], [ChiTiet]) VALUES (111, 108, 35, N'Kem Chống Nắng Kiểm Soát Nhờn Eucerin Sun Gel Cream Acne Oil Control SPF 50+ PA+++ là sản phẩm chống nắng da mặt đến từ thương hiệu dược mỹ phẩm Eucerin, được thiết kế chuyên biệt dành cho da dầu và da hỗn hợp. Nhờ vào công thức Tinosorb S hình thành bộ lọc tia UVA/UVB thông minh, an toàn giúp bảo vệ làn da hiệu quả dưới tác hại của ánh nắng mặt trời. Sản phẩm có thể sử dụng được với cả những làn da bị mụn trứng cá hay da nhạy cảm do tiếp xúc với hóa chất và tia laser. Đặc biệt là sản phẩm không bị trôi bởi nước, không gây bít tắc lỗ chân lông ngay cả khi thời tiết nóng ẩm.', N'<p><br><br>&nbsp;</p><p><img src="https://media.hcdn.vn/wysiwyg/HaNguyen1/kem-chong-nang-eucerin-cho-da-nhon-mun-50ml-1.jpg" alt="Kem Chống Nắng Kiểm Soát Nhờn Eucerin Sun Gel Cream Acne Oil Control SPF 50+ PA+++" width="800"></p><p>&nbsp;</p><h2><strong>Loại da phù hợp:</strong></h2><ul><li>Sản phẩm được sản xuất chuyên biệt cho <a href="https://hasaki.vn/danh-muc/da-dau-c90.html"><strong>da dầu</strong></a> và dễ bị mụn.</li></ul><h2><strong>Ưu thế nổi bật:</strong></h2><p>Công&nbsp;nghệ quang phổ tiên tiến của Eucerin&nbsp;giúp&nbsp;ngăn&nbsp;ngừa&nbsp;tia&nbsp;UVA&nbsp;/ UVB và&nbsp;tia&nbsp;HEVIS.</p><p>Góp phần bảo vệ ADN bằng cách hỗ trợ cơ chế bảo vệ và tái tạo ADN của da.</p><p><strong>Lichochalcone A (chiết xuất rễ Cam Thảo)&nbsp;</strong>giúp chống oxy hóa, kháng viêm, làm dịu da,&nbsp;bảo vệ các tế bào da trước tác động của tia cực tím, ức chế sự hình thành các gốc tự do.&nbsp;</p><p><strong>Carnitine</strong> được chứng minh giảm 86% bã nhờn trên da mặt,&nbsp;giúp kiểm soát dầu và ngăn ngừa mụn.&nbsp;</p><p>Kết cấu siêu nhẹ, không nhờn rít, không hương liệu, không chứa các thành phần gây bít tắt lỗ chân lông.</p><p>Các nghiên cứu lâm sàng và da liễu chứng minh thích hợp với làn da nhạy cảm và dễ bị mụn trứng cá.</p><p>Đáp ứng các tiêu chuẩn cao về bảo vệ UVA và UVB được xác định bởi Mỹ phẩm Châu Âu. Mức độ bảo vệ UVA cao hơn so với khuyến cáo của EU.</p><p><br>&nbsp;</p><p><img src="https://media.hcdn.vn/wysiwyg/PhuongThao/Kem-chong-nang-Eucerin-cho-da-nhon-mun_1.png" alt="Kem Chống Nắng Eucerin Cho Da Nhờn &amp; Mụn 50ml" width="674" height="1200"></p><p><br>&nbsp;</p><h2><strong>Bảo quản:</strong></h2><p>Nơi khô ráo, thoáng mát.</p><p>Tránh ánh nắng trực tiếp.</p><p>Để xa tầm tay trẻ em.</p>')
INSERT [dbo].[ChiTietSanPhams] ([MaChiTietSanPham], [MaSanPham], [MaNhaSanXuat], [MoTa], [ChiTiet]) VALUES (112, 109, 16, N'Tinh Chất Siêu Cấp Ẩm Sáng Da L''Oreal Paris Revitalift 1.5% Hyaluronic Acid Serum là dòng sản phẩm serum đến từ thương hiệu L''Oréal Paris nổi tiếng của Pháp, với sự kết hợp không chỉ 1 mà đến 2 loại Hyaluronic Acid ưu việt ở nồng độ 1.5% sẽ là giải pháp chăm sóc da hiệu quả dành cho làn da khô & lão hóa, giúp cung cấp độ ẩm tối đa cho da căng mịn và tươi sáng tức thì. Với Revitalift HA đậm đặc, làn da sẽ có sự thay đổi rõ rệt, mang đến vẻ ngoài rạng rỡ cho bạn.', N'<p><strong>Tinh Chất Siêu Cấp Ẩm Sáng Da L''Oreal Paris Revitalift 1.5% Hyaluronic Acid Serum</strong>&nbsp;là dòng sản phẩm <a href="https://hasaki.vn/danh-muc/serum-tinh-chat-duong-da-c75.html"><strong>serum</strong></a>&nbsp;đến từ <a href="https://hasaki.vn/thuong-hieu/l-oreal.html"><strong>thương hiệu&nbsp;L''Oréal Paris nổi tiếng của Pháp</strong></a>,&nbsp;với sự kết hợp không chỉ 1 mà đến 2 loại Hyaluronic Acid ưu việt&nbsp;ở&nbsp;nồng độ 1.5%&nbsp;sẽ là giải pháp chăm sóc da hiệu quả dành cho làn da khô &amp; lão hóa,&nbsp;giúp cung cấp độ ẩm tối đa cho da căng mịn và tươi sáng tức thì.&nbsp;Với Revitalift HA đậm đặc, làn da sẽ có sự thay đổi rõ rệt, mang đến vẻ ngoài rạng rỡ cho bạn.</p><p>&nbsp;</p><p><img src="https://media.hcdn.vn/wysiwyg/HaNguyen/tinh-chat-l-oreal-hyaluronic-acid-cap-am-sang-da-8.jpg" alt="Tinh Chất L''Oreal Paris Revitalift 1.5% Hyaluronic Acid Serum" width="800"></p><p>&nbsp;</p><p>Hiện&nbsp;<strong>Tinh Chất L''Oreal Paris Revitalift 1.5% Hyaluronic Acid Serum</strong>&nbsp;đã có mặt tại <a href="https://hasaki.vn/"><strong>Hasaki</strong></a><strong>&nbsp;</strong>với 4 dung tích cho bạn lựa chọn: Combo 2 chai 15ml / 30ml</p><p>&nbsp;</p><p><strong><img src="https://media.hcdn.vn/wysiwyg/HaNguyen/tinh-chat-l-oreal-hyaluronic-acid-cap-am-sang-da-9.jpg" alt="Tinh Chất Siêu Cấp Ẩm Sáng Da L''Oreal Paris Revitalift 1.5% Hyaluronic Acid Serum hiện đã có mặt tại Hasaki" width="800"></strong></p><p>&nbsp;</p><p><i><strong>* Lưu ý: Hiện tại Hasaki vẫn đang bán song song cả 2 phiên bản bao bì cũ và mới.</strong></i></p><h2>Loại da phù hợp:</h2><ul><li>Sản phẩm phù hợp cho mọi loại da, đặc biệt là da khô.</li></ul><h2>Giải pháp cho tình trạng da:</h2><p><a href="https://hasaki.vn/danh-muc/thieu-am-thieu-nuoc-c1883.html"><strong>Da thiếu ẩm - thiếu nước</strong></a></p><p>Da xỉn màu, thiếu sức sống</p><p>Da lão hóa &amp; nếp nhăn, kém đàn hồi săn chắc</p>')
INSERT [dbo].[ChiTietSanPhams] ([MaChiTietSanPham], [MaSanPham], [MaNhaSanXuat], [MoTa], [ChiTiet]) VALUES (113, 110, 17, N'Tinh Chất Garnier Giảm Mụn Mờ Thâm Cho Da Dầu, Mụn 30ml là sản phẩm serum đến từ thương hiệu mỹ phẩm Garnier của Pháp, với công thức vượt trội 4% phức hợp Vitamin C, BHA, Niacinamide, AHA có công dụng giảm mụn, mờ vết thâm và vết thâm do mụn đồng thời làn da sẽ được làm dịu, sáng hơn rõ rệt. Sản phẩm hoạt động theo cơ chế 3 tác động làm giảm bã nhờn - tiêu sừng - mờ thâm mang lại làn da sáng mịn, rạng ngời.', N'<p><strong>Tinh Chất Garnier Giảm Mụn Mờ Thâm Cho Da Dầu, Mụn 30ml</strong> là sản phẩm <a href="https://hasaki.vn/danh-muc/serum-tinh-chat-c75.html"><strong>serum</strong></a> đến từ <a href="https://hasaki.vn/thuong-hieu/garnier.html"><strong>thương hiệu mỹ phẩm Garnier</strong></a> của Pháp,&nbsp;với công thức vượt trội 4% phức hợp <strong>Vitamin C, BHA, Niacinamide, AHA&nbsp;</strong>có công dụng giảm mụn, mờ vết thâm và vết thâm do mụn đồng thời làn da sẽ được làm dịu, sáng hơn rõ rệt. Sản phẩm hoạt động&nbsp;theo cơ chế 3 tác động làm giảm bã nhờn - tiêu sừng - mờ thâm mang lại làn da sáng mịn, rạng ngời.&nbsp;</p><p>Hiện sản phẩm<strong>&nbsp;Tinh Chất Garnier Bright Complete Anti-Acnes Booster Serum 30ml</strong> đã có mặt tại <a href="https://hasaki.vn/"><strong>Hasaki</strong></a>.&nbsp;</p><p>&nbsp;</p><p><img src="https://media.hcdn.vn/wysiwyg/Chau/tinh-chat-garnier-giam-mun-mo-tham-cho-da-dau-mun-30ml-1.jpg" alt="Tinh Chất Garnier Giảm Mụn Mờ Thâm Cho Da Dầu, Mụn 30ml" width="800"></p><p>&nbsp;</p><h2>Loại da phù hợp:&nbsp;</h2><p>Sản phẩm thích hợp cho mọi loại da đặc biệt da dầu, da hỗn hợp.</p><h2>Giải pháp cho tình trạng da:&nbsp;</h2><p>Da <a href="https://hasaki.vn/danh-muc/dau-thua-lo-chan-long-to-c1879.html"><strong>dầu thừa, lỗ chân lông to</strong></a>.</p><p>Thường gặp các vấn đề về <a href="https://hasaki.vn/danh-muc/mun-c1877.html"><strong>mụn</strong></a>.</p><p>&nbsp;</p><p><img src="https://media.hcdn.vn/wysiwyg/Chau/tinh-chat-garnier-giam-mun-mo-tham-cho-da-dau-mun-30ml-3.jpg" alt="Tinh Chất Garnier Giảm Mụn Mờ Thâm Cho Da Dầu, Mụn " width="800"></p><p>&nbsp;</p><h2>Ưu thế nổi bật:&nbsp;</h2><p><strong>Dẫn xuất Vitamin C</strong> có khả năng làm sáng, chống oxy hoá và ngăn ngừa sự xuất hiện của các đốm nâu, cải thiện đều màu da.</p><p><strong>BHA (Axit salicylic)</strong> làm sạch sâu ngăn bít tắc lỗ chân lông, ngăn ngừa mụn trứng cá.</p><p><strong>Niacinamide</strong> có công dụng kháng viêm, kháng khuẩn, làm dịu da, kiểm soát bã nhờn và lượng dầu thừa trên da.</p><p><strong>AHA (axit lactic)</strong> tẩy tế bào chết, làm thông thoáng lỗ chân lông, ngăn ngừa mụn mới hình thành thành và cải thiện sẹo mụn và vết thâm do mụn để lại.</p><p>Kết cấu mỏng nhẹ, thấm nhanh vào da mang lại hiệu quả dưỡng da tối ưu.</p>')
INSERT [dbo].[ChiTietSanPhams] ([MaChiTietSanPham], [MaSanPham], [MaNhaSanXuat], [MoTa], [ChiTiet]) VALUES (114, 111, 36, N'Tinh Chất GoodnDoc Hydra B5 Serum là sản phẩm serum dưỡng da đến từ thương hiệu GoodnDoc của Hàn Quốc, chứa thành phần Pro-Vitamin B5 kết hợp cùng Hyaluronic Acid, Adenosine và Niacinamide giúp dưỡng ẩm chuyên sâu và hỗ trợ phục hồi làn da tổn thương, kích ứng. Giúp da luôn căng đầy sức sống, trẻ hóa và căng mịn da. Bảo vệ làn da của bạn khỏi cháy nắng, nám tàn nhang da. Phục hồi tăng cường độ đàn hồi cho da, giúp da khô ráp trở nên mịn màng và trẻ trung hơn.', N'<p><br><strong>Tinh Chất Dưỡng Ẩm, Hỗ Trợ Phục Hồi Da GoodnDoc Hydra B5 Serum&nbsp;30ml</strong> hiện đã có mặt tại <strong>Hasaki.</strong></p><p><br>&nbsp;</p><p><strong><img src="https://media.hcdn.vn/wysiwyg/HaNguyen1/tinh-chat-goodndoc-duong-am-ho-tro-phuc-hoi-da-30ml-1.jpg" alt="Tinh Chất Dưỡng Ẩm, Hỗ Trợ Phục Hồi Da GoodnDoc Hydra B5 Serum 30ml hiện đã có mặt tại Hasaki." width="800"></strong></p><p><br>&nbsp;</p><h2>Loại da phù hợp:</h2><p>Sản phẩm phù hợp cho mọi loại da.</p><h2>Giải pháp cho tình trạng da:</h2><p>Da lão hoá - nếp nhăn, kém săn chắc, thiếu độ đàn hồi.</p><p>Da thiếu nước - thiếu ẩm.</p><p>Da <a href="https://hasaki.vn/danh-muc/nhay-cam-kich-ung-c1885.html"><strong>nhạy cảm, kích ứng</strong></a>, tổn thương cần phục hồi.</p><h2>Ưu thế nổi bật:</h2><p>Chứa thành phần <strong>Pro-Vitamin B5</strong> giúp bổ sung độ ẩm cho làn da đang bị tổn thương và sần sùi trở nên mềm mại hơn, đồng thời hỗ trợ phục hồi các hư tổn.</p><p>Ngoài ra,&nbsp;<strong>Pro-Vitamin B5 </strong>còn&nbsp;hoạt động như một chất tăng cường để giúp hấp thụ Vitamin C, nâng cao tác dụng của Vitamin C.</p><p>Sự kết hợp giữa <strong>Hyaluronic Acid, Adenosine và Niacinamide</strong>&nbsp;không chỉ giúp dưỡng ẩm da từ sâu bên trong mà còn làm mờ nếp nhăn, tăng cường độ đàn hồi và dưỡng sáng da.</p>')
INSERT [dbo].[ChiTietSanPhams] ([MaChiTietSanPham], [MaSanPham], [MaNhaSanXuat], [MoTa], [ChiTiet]) VALUES (115, 112, 37, N'Tinh Chất oh!oh! Dưỡng Sáng Da, Giảm Thâm Nám là sản phẩm serum đến từ thương hiệu mỹ phẩm oh!oh! của Hàn Quốc, chứa nồng độ 20% Niacinamide (vitamin B3) giúp làm sáng da, giảm mụn, hỗ trợ điều tiết dầu thừa, ngừa bít tắc chân lông. Kết hợp cùng 2% N- Acetyl- Glucosamine (NAG) hỗ trợ cải thiện đốm sắc tố, giúp da sáng hơn, đều màu hơn, ngoài ra còn có công dụng làm giảm mụn. Serum thấm nhanh, không nhờn dính như các sản phẩm serum Niacinamide khác trên thị trường, lý tưởng dành cho làn da dầu mụn.', N'<p><strong>Tinh Chất oh!oh! Dưỡng Sáng Da, Giảm Thâm Nám </strong>là sản phẩm <a href="https://hasaki.vn/danh-muc/serum-tinh-chat-c75.html"><strong>serum</strong></a> đến từ <a href="https://hasaki.vn/thuong-hieu/oh-oh.html"><strong>thương hiệu mỹ phẩm oh!oh!</strong></a> của Hàn Quốc, chứa nồng độ <strong>20% Niacinamide (vitamin B3)</strong> giúp làm sáng da, giảm mụn, hỗ trợ điều tiết dầu thừa, ngừa bít tắc chân lông. Kết hợp cùng <strong>2% N- Acetyl- Glucosamine (NAG)</strong> hỗ trợ cải thiện đốm sắc tố, giúp da sáng hơn, đều màu hơn, ngoài ra còn có công dụng làm giảm mụn. Serum thấm nhanh, không nhờn dính như các sản phẩm serum Niacinamide khác trên thị trường, lý tưởng dành cho làn da dầu mụn.</p><p>&nbsp;</p><p><img src="https://media.hcdn.vn/wysiwyg/Chau/tinh-chat-oh-oh-duong-sang-da-giam-tham-nam-2.jpg" alt="Tinh Chất oh!oh! Dưỡng Sáng Da, Giảm Thâm Nám " width="800"></p><p>&nbsp;</p><p><img src="https://media.hcdn.vn/wysiwyg/Chau/tinh-chat-oh-oh-duong-sang-da-giam-tham-nam-1.jpg" alt="Thành phần Tinh Chất oh!oh! Dưỡng Sáng Da, Giảm Thâm Nám " width="800"></p><p>&nbsp;</p><p>Hiện sản phẩm <strong>Tinh Chất oh!oh! Skin Health Serum (with 20% Niacinamide &amp; 2% Acetyl Glucosamine)&nbsp;</strong>đã có mặt tại <a href="https://hasaki.vn/"><strong>Hasaki</strong></a>&nbsp;với 2 dung tích:&nbsp;</p><p><strong>10ml</strong></p><p><strong>30ml</strong></p><p><br>&nbsp;</p><p><img src="https://media.hcdn.vn/wysiwyg/HaNguyen1/combo-martiderm-oh-oh-duong-sang-bao-ve-toan-dien-2-mon-3.jpg" alt="" width="800"></p><p><br>&nbsp;</p><h2><strong>Loại da phù hợp:</strong></h2><ul><li>Sản phẩm&nbsp;phù hợp cho mọi loại da, đặc biệt là da dầu.</li></ul><h2><strong>Giải pháp cho tình trạng da:</strong></h2><p><a href="https://hasaki.vn/danh-muc/dau-thua-lo-chan-long-to-c1879.html"><strong>Da dầu nhờn nhiều, lỗ chân lông to</strong></a>.</p><p>Da <a href="https://hasaki.vn/danh-muc/mun-c1877.html"><strong>mụn</strong></a> hoặc dễ nổi mụn.</p><p>Da <a href="https://hasaki.vn/danh-muc/xin-mau-tham-sam-c1887.html"><strong>sạm, xỉn màu, da không đều màu</strong></a>.</p><p>Tăng sắc tố da: <a href="https://hasaki.vn/danh-muc/tham-nam-tan-nhang-c17.html"><strong>thâm / nám / tàn nhang</strong></a>.</p>')
INSERT [dbo].[ChiTietSanPhams] ([MaChiTietSanPham], [MaSanPham], [MaNhaSanXuat], [MoTa], [ChiTiet]) VALUES (116, 113, 16, N'Serum L''Oreal Paris Dưỡng Sáng Và Mờ Thâm Nám là sản phẩm tinh chất dưỡng da đến từ thương hiệu mỹ phẩm L’Oreal Paris của Pháp, với phức hợp làm sáng 4 trong 1 trong đó chứa 1% Glycolic Acid có khả năng loại bỏ loại bỏ tế bào chết nhẹ nhàng, tái tạo da giúp các dưỡng chất thẩm thấu sâu vào da đem lại hiệu quả dưỡng sáng mịn, ức chế sản sinh melanin giảm các vết thâm nám.', N'<p><br><strong>Serum L''Oreal Paris Glycolic Bright 1.0% Glycolic Acid (AHA) </strong>hiện&nbsp;đã có mặt tại&nbsp;<a href="https://hasaki.vn/"><strong>Hasaki</strong></a>&nbsp;với dung tích:&nbsp;<strong>30ml</strong></p><p>&nbsp;</p><p><img src="https://media.hcdn.vn/wysiwyg/Chau/serum-l-oreal-paris-duong-sang-va-mo-tham-nam-30ml-1.jpg" alt="Serum L''Oreal Paris Dưỡng Sáng Và Mờ Thâm Nám 30ml " width="800"></p><p>&nbsp;</p><p><img src="https://media.hcdn.vn/wysiwyg/Chau/serum-l-oreal-paris-duong-sang-va-mo-tham-nam-30ml-2.jpg" alt="Serum L''Oreal Paris Dưỡng Sáng Và Mờ Thâm Nám" width="800"></p><p>&nbsp;</p><h2>Loại da phù hợp:</h2><ul><li>Sản phẩm thích hợp với mọi loại da.</li></ul><h2>Giải pháp cho tình trạng da:</h2><p><a href="https://hasaki.vn/danh-muc/xin-mau-tham-sam-c1887.html"><strong>Da sạm, xỉn màu</strong></a>, da không đều màu.</p><p><a href="https://hasaki.vn/danh-muc/nam-tan-nhang-c17.html"><strong>Nám, tàn nhang</strong></a>, thâm mụn,...</p><p>&nbsp;</p><p><img src="https://media.hcdn.vn/wysiwyg/Chau/serum-l-oreal-paris-duong-sang-va-mo-tham-nam-30ml-3.jpg" alt="Mua Serum L''Oreal Paris Dưỡng Sáng Và Mờ Thâm Nám 30ml tại Hasaki " width="800"></p><h2>Ưu thế nổi bật:</h2><p><strong>Glycolic Acid [AHA] 1%</strong> loại bỏ melanin ở từng tế bào, giảm thâm nám, đốm sạm màu, giảm khuyết điểm, làm đều màu da và làn da trông rạng rỡ hơn.</p><p><strong>Niacinamide 2%</strong> làm ức chế melanin trên bề mặt da, ngăn hình thành các đốm sắc tố sạm nám trên da.</p><p><strong>Symwhite</strong> giảm sinh melanin tận gốc.</p><p><strong>Vitamin C</strong> làm sáng da và chống oxy hóa.</p><p>Giảm tình trạng sạm màu và khuyết điểm trên da. Da đều màu và trông sáng, rạng rỡ hơn trong 2 tuần sử dụng.</p><p>Kết cấu dạng tinh chất lỏng, thấm nhanh cùng các thành phần dưỡng sáng tối ưu sẽ mang lại làn da rạng ngời.</p>')
INSERT [dbo].[ChiTietSanPhams] ([MaChiTietSanPham], [MaSanPham], [MaNhaSanXuat], [MoTa], [ChiTiet]) VALUES (117, 114, 33, N'Tinh Chất Rau Má Hỗ Trợ Giảm Mụn, Phục Hồi Da Skin1004 Madagascar Centella Ampoule là dòng sản phẩm bán chạy nhất của thương hiệu chăm sóc da Skin1004 đến từ Hàn Quốc, đoạt giải thưởng Best of Beauty Award 2019 Winner của tạp chí Female Daily. Sản phẩm chứa chiết xuất từ rau má giúp làm dịu da, giảm sưng viêm mụn, hỗ trợ phục hồi da và chữa lành các thương tổn do mụn hoặc kích ứng gây ra, tái tạo làn da mới tươi sáng và mịn màng hơn.', N'<p><strong>Tinh Chất Rau Má Hỗ Trợ Giảm Mụn, Phục Hồi Da Skin1004 Madagascar Centella Ampoule</strong> là dòng sản phẩm bán chạy nhất của <a href="https://hasaki.vn/thuong-hieu/skin1004.html"><strong>thương hiệu chăm sóc da Skin1004</strong></a> đến từ Hàn Quốc, đoạt giải thưởng Best of Beauty Award 2019 Winner của tạp chí Female Daily. Sản phẩm chứa chiết xuất từ rau má giúp làm dịu da, giảm sưng viêm mụn, hỗ trợ phục hồi da và chữa lành các thương tổn do mụn hoặc kích ứng gây ra, tái tạo làn da mới tươi sáng và mịn màng hơn.</p><p><br>&nbsp;</p><p><img src="https://media.hcdn.vn/wysiwyg/HaNguyen/tinh-chat-rau-ma-skin1004-ho-tro-giam-mun-phuc-hoi-da-100ml-1.jpg" alt="Tinh Chất Rau Má Hỗ Trợ Giảm Mụn, Phục Hồi Da Skin1004 Madagascar Centella Ampoule" width="800"></p><p><br>&nbsp;</p><p>Chiết xuất rau má là một thành phần phổ biến trong các sản phẩm chăm sóc da của xứ sở Kim Chi – được các cô nàng da mụn, da nhạy cảm yêu thích nhờ đặc tính làm dịu da, kháng viêm và hỗ trợ chữa lành vết thương hiệu quả, giúp da tái tạo nhanh chóng. Một trong các sản phẩm chứa chiết xuất rau má đã từng “làm mưa làm gió” vào những năm gần đây, không chỉ ở Hàn Quốc mà còn nổi tiếng ở Việt Nam, đó chính là <strong>Skin1004 Madagascar Centella Ampoule</strong>. Sản phẩm rất được ưa chuộng không chỉ bởi hiệu quả mang lại cho làn da mà cả vì độ dịu nhẹ, lành tính, chỉ chứa các thành phần giúp chăm sóc da nhẹ nhàng, an toàn không gây kích ứng đối với da nhạy cảm.</p><p><br>&nbsp;</p><p><img src="https://media.hcdn.vn/wysiwyg/HaNguyen/tinh-chat-rau-ma-skin1004-ho-tro-giam-mun-phuc-hoi-da-100ml-4.jpg" alt="Tinh Chất Rau Má Hỗ Trợ Giảm Mụn, Phục Hồi Da Skin1004 Madagascar Centella Ampoule 100ml" width="800"></p><p><br>&nbsp;</p><p>Cuối năm 2019, Skin1004 đã "thay áo mới" cho lọ tinh chất<strong> Skin1004 Madagascar Centella Ampoule</strong> quen thuộc. Phiên bản mới có thiết kế tối giản với chất liệu thủy tinh cầm chắc và nặng tay,&nbsp;từ lọ màu trắng chuyển sang tông nâu sang trọng và mới mẻ. Đặc biệt, phần&nbsp;ống bơm lấy tinh chất được nâng cấp cùng thiết kế đầu vát nghiêng mới giúp điều khiển dòng chảy tinh chất dễ dàng và vượt trội hơn, giúp kiểm soát được lượng tinh chất bơm ra nhiều hay ít tùy vào nhu cầu sử dụng khác nhau. Ngoài ra, công thức, thành phần và chất lượng sản phẩm vẫn được giữ nguyên vẹn như cũ.</p><p><br>&nbsp;</p><p><img src="https://media.hcdn.vn/wysiwyg/HaNguyen/tinh-chat-rau-ma-skin1004-ho-tro-giam-mun-phuc-hoi-da-100ml-6.jpg" alt="Tinh Chất Rau Má Skin1004 Madagascar Centella Ampoule hiện đã có mặt tại Hasaki" width="800"></p><p><br>&nbsp;</p><p><img src="https://media.hcdn.vn/wysiwyg/HaNguyen/tinh-chat-rau-ma-skin1004-ho-tro-giam-mun-phuc-hoi-da-100ml-3.jpg" alt="Tinh Chất Rau Má Skin1004 Madagascar Centella Ampoule có ống bơm nhỏ giọt dạng đầu vát tiện dụng" width="800"></p><p><br>&nbsp;</p><p>Thành phần chính của <strong>Skin1004 Madagascar Centella Ampoule</strong> đúng như tên gọi của sản phẩm – chứa<strong> 100% chiết xuất cô đặc từ Rau Má vùng Madagascar</strong> – nơi được mệnh danh là hòn đảo đã có mặt lâu đời nhất trên Trái Đất. Trong đó bao gồm các hoạt chất như sau:</p><p>30% Asiaticoside: Cải thiện sự cân bằng lượng dầu - nước, giúp tổng hợp Collagen ở tầng biểu bì.</p><p>30% Asiatic Acid: Củng cố hàng rào bảo vệ tự nhiên của da, làm dịu làn da mẫn cảm, chống oxy hóa và góp phần cải thiện độ đàn hồi của da.</p><p>40% Madecassic Acid: làm dịu làn da mệt mỏi, cải thiện các thương tổn do mụn để lại, làm lành làn da bị tổn thương.</p>')
INSERT [dbo].[ChiTietSanPhams] ([MaChiTietSanPham], [MaSanPham], [MaNhaSanXuat], [MoTa], [ChiTiet]) VALUES (118, 115, 14, N'Hyalu B5 Serum là dòng serum chuyên biệt của thương hiệu La Roche-Posay, với hoạt chất Hyaluronic Acid Duo giúp dưỡng ẩm chuyên sâu, cho da căng mịn; Vitamin B5 làm dịu & bảo vệ da; Madecassoside cải thiện làn da hư tổn nhanh chóng Kết cấu serum cực nhẹ, thẩm thấu nhanh vào da và không hề gây nhờn rít. Chỉ sau một thời gian sử dụng, da sẽ trở nên mịn màng, ẩm mượt và rạng rỡ hơn.', N'<p><strong>Hyalu B5 Serum&nbsp;</strong>là dòng&nbsp;<a href="https://hasaki.vn/danh-muc/serum-tinh-chat-duong-da-c75.html"><strong>serum</strong></a>&nbsp;chuyên biệt&nbsp;của&nbsp;<a href="https://hasaki.vn/thuong-hieu/la-roche-posay.html"><strong>thương hiệu La Roche-Posay</strong></a>, với hoạt chất Hyaluronic Acid Duo giúp dưỡng ẩm chuyên sâu, cho da căng mịn; Vitamin B5 làm dịu &amp; bảo vệ da; Madecassoside cải thiện làn da hư tổn nhanh chóng Kết cấu serum cực nhẹ, thẩm thấu nhanh vào da và không hề gây nhờn rít. Chỉ sau một thời gian sử dụng, da sẽ trở nên mịn màng, ẩm mượt và rạng rỡ hơn.</p><p>Sản phẩm đã được kiểm nghiệm bởi bác sĩ da liễu, tuyệt đối an toàn cho da, kể cả da nhạy cảm.</p><p><br>&nbsp;</p><p><img src="https://media.hcdn.vn/wysiwyg/HaNguyen/tinh-chat-la-roche-posay-phuc-hoi-do-am-san-chac-da-30ml-1.jpg" alt="Tinh Chất La Roche-Posay Hyalu B5 Serum Phục Hồi Độ Ẩm, Săn Chắc Da" width="800"></p><p>&nbsp;</p><p><img src="https://media.hcdn.vn/wysiwyg/HaNguyen/tinh-chat-la-roche-posay-phuc-hoi-do-am-san-chac-da-30ml-2.jpg" alt="Tinh Chất La Roche-Posay Hyalu B5 Serum Phục Hồi Độ Ẩm, Săn Chắc Da 30ml" width="800"></p><p><strong>Dưỡng chất chuyên sâu giúp hỗ trợ quá trình tái tạo da La Roche-Posay Hyalu B5 Serum</strong> hiện đã có mặt tại<a href="https://hasaki.vn/"><strong>&nbsp;Hasaki</strong></a><strong>&nbsp;</strong>với 2 dung tích:</p><p><strong>30ml (full size)</strong></p><p><strong>10ml (mini size)</strong></p><h2>Loại da phù hợp:</h2><p>Sản phẩm thích hợp với với mọi loại da, kể cả da <a href="https://hasaki.vn/danh-muc/nhay-cam-kich-ung-c1885.html"><strong>nhạy cảm</strong></a>.</p><h2>Giải pháp cho tình trạng da:</h2><p>Da khô,&nbsp;<a href="https://hasaki.vn/danh-muc/thieu-am-thieu-nuoc-c1883.html"><strong>thiếu độ ẩm</strong></a>,&nbsp;mất đi sự đàn hồi &amp; độ săn chắc.</p><p>Da nhạy cảm, kích ứng.</p><p>Da cần phục hồi sau mụn.</p><p>Thích hợp sử dụng sau các liệu trình chăm sóc thẩm mỹ.</p>')
INSERT [dbo].[ChiTietSanPhams] ([MaChiTietSanPham], [MaSanPham], [MaNhaSanXuat], [MoTa], [ChiTiet]) VALUES (119, 116, 25, N'Tinh Chất Làm Giảm Mụn, Mờ Nám, Làm Mềm Mịn Da SVR Sebiaclear Serum là dòng sản phẩm chăm sóc da hằng ngày mới ra mắt từ thương hiệu dược mỹ phẩm SVR (Pháp), được thiết kế dành cho làn da người trưởng thành dễ bị mụn trứng cá, giúp mang lại đa tác dụng cho da bao gồm: làm giảm các đốm mụn sưng viêm, mụn đầu đen; hỗ trợ se khít lỗ chân lông và giảm vết thâm rõ rệt; đồng thời giữ ẩm và làm mịn da.', N'<p><strong>Công thức SVR Sebiaclear Serum</strong> chứa nồng độ cao các hoạt chất da liễu tiên tiến giúp mang lại hiệu quả gấp ba: <a href="https://hasaki.vn/danh-muc/lam-giam-mun-tham-c174.html"><strong>làm giảm mụn</strong></a> và khuyết điểm trên da, làm mờ vết thâm và nếp nhăn. <strong>SVR Sebiaclear Serum</strong> là sự kết hợp độc đáo giữa các phức hợp dưỡng da bao gồm:</p><p><strong>Phức hợp làm giảm mụn mạnh mẽ:</strong> 14% GLUCONOLACTONE + 4% NIACINAMIDE = SEBIACLEAR.Phức hợp các hoạt chất ngăn ngừa lão hóa: RETINOID-LIKE + HYALURONIC ACID = Hợp chất cho độ dung nạp cao giúp ngăn ngừa hình thành các dấu hiệu lão hóa da: giữ ẩm, làm đầy đặn và làm mịn da.</p><p><strong>14% Gluconolactone</strong> là một hoạt chất có nguồn gốc tự nhiên, mang lại hiệu quả tương tự như AHA nhưng độ dung nạp tốt hơn rất nhiều và ít gây kích ứng da. Gluconolactone có khả năng tinh chỉnh kết cấu da, làm thông thoáng lỗ chân lông và hạn chế sự hình thành các khuyết điểm như đốm mụn, mụn đầu đen, đốm nâu sậm màu trên da, đồng thời cải thiện tông màu da trở nên đồng đều &amp; rạng rỡ.</p><p><strong>4% Niacinamide</strong> kháng viêm, giúp làm dịu đi các kích ứng, hạn chế sự tăng sinh vi khuẩn trên da. Niacinamide cũng giúp làm sáng da, mờ thâm mụn.</p><p><strong>Lá chắn chống ô nhiễm:</strong> ANTI-OXIDANT VEGETAL + ANTI-POLLUTION SUGAR = Bảo vệ da chống lại sự xâm lược từ bên ngoài, ngăn ngừa hiện tượng stress oxy hóa.</p><figure class="image"><img src="https://media.hcdn.vn/wysiwyg/Chau/tinh-chat-svr-lam-giam-mun-mo-nam-lam-mem-min-da-30ml-1.jpg" alt="Tinh Chất SVR Làm Giảm Mụn, Mờ Nám, Làm Mềm Mịn Da " width="800"></figure>')
INSERT [dbo].[ChiTietSanPhams] ([MaChiTietSanPham], [MaSanPham], [MaNhaSanXuat], [MoTa], [ChiTiet]) VALUES (120, 117, 31, N'Tinh Chất Klairs Vitamin C Dưỡng Sáng Da, Mờ Thâm 35ml là sản phẩm tinh chất đến từ thương hiệu Klairs của Hàn Quốc, tiếp thêm sinh lực trẻ hóa làn da với sức mạnh của 5% Vitamin C dạng Acid L-ascorbic nhẹ dịu; cùng chiết xuất Rau Má không gây kích ứng nhưng vẫn hiệu quả trong việc làm mờ các vết mụn và vết nám, cải thiện làn da xỉn và không đều màu.', N'<p><strong>Tinh Chất Klairs&nbsp;Vitamin C Dưỡng Sáng Da, Mờ Thâm&nbsp;35ml</strong> là sản phẩm <a href="https://hasaki.vn/danh-muc/serum-tinh-chat-duong-da-c75.html"><strong>tinh chất</strong></a> đến từ thương hiệu&nbsp;<a href="https://hasaki.vn/thuong-hieu/klairs.html"><strong>Klairs</strong></a>&nbsp;của Hàn Quốc, tiếp thêm sinh lực trẻ hóa làn da với sức mạnh của <strong>5% Vitamin C dạng Acid L-ascorbic</strong> nhẹ dịu; cùng chiết xuất <strong>Rau Má</strong> không gây kích ứng nhưng vẫn hiệu quả trong việc làm mờ các vết mụn và vết nám, cải thiện làn da xỉn và không đều màu.</p><p>Hiện sản phẩm&nbsp;<strong>Tinh Chất Klairs&nbsp;Klairs Freshly Juiced Vitamin Drop 35ml</strong> đã có mặt tại <a href="https://hasaki.vn/"><strong>Hasaki</strong></a>.</p><p><img src="https://media.hcdn.vn/wysiwyg/MinhTu/tinh-chat-lam-sang-da-klairs-vitamin-c-35ml.jpg" alt="Tinh Chất Klairs Vitamin C Dưỡng Sáng Da, Mờ Thâm 35ml Freshly Juiced Vitamin Drop" width="800" height="800"></p><p>Mặc dù luôn nằm trong danh sách những thành phần “vàng” trong làng dưỡng da, là thần dược của những làn da thâm mụn, tối màu nhưng Vitamin C cũng thường gây tình trạng kích ứng, bong đỏ đối với nhiều làn da, nên nhiều tín đồ skincare dù thích vẫn còn dè chừng. <strong>Klairs Freshly Juiced Vitamin Drop</strong> đã được kiểm tra lâm sàng về độ an toàn, lành tính kể cả đối với làn da nhạy cảm.</p><p><img src="https://media.hcdn.vn/wysiwyg/MinhTu/tinh-chat-lam-sang-da-klairs-vitamin-c-35ml-6.jpg" alt="Tinh Chất Klairs Vitamin C Dưỡng Sáng Da, Mờ Thâm 35ml Freshly Juiced Vitamin Drop đã có mặt tại hasaki" width="800" height="800"></p><h2>Loại da phù hợp:</h2><ul><li>Sản phẩm thích hợp với mọi loại da, kể cả làn da nhạy cảm.</li></ul><h2>Giải pháp cho tình trạng da:</h2><p>Da thâm <a href="https://hasaki.vn/danh-muc/mun-c1877.html"><strong>mụn</strong></a></p><p>Da <a href="https://hasaki.vn/danh-muc/tham-nam-tan-nhang-c17.html"><strong>thâm, nám</strong></a></p><p>Da xỉn màu, không đều màu</p><p>Da dễ kích ứng, nhạy cảm</p>')
INSERT [dbo].[ChiTietSanPhams] ([MaChiTietSanPham], [MaSanPham], [MaNhaSanXuat], [MoTa], [ChiTiet]) VALUES (121, 118, 38, N'Tinh Chất Paula''s Choice Clinical Niacinamide 20% Treatment là serum đậm đặc của thương hiệu Paula''s Choice dành cho tình trạng lỗ chân lông to cứng đầu. Công thức chứa nồng độ 20% Niacinamide (vitamin B3) giúp hỗ trợ se khít lỗ chân lông, khắc phục bề mặt da kém mềm mịn do tuổi tác hoặc do ánh nắng mặt trời gây ra, đồng thời cân bằng lượng dầu thừa và làm sáng da, cải thiện tình trạng da không đều màu, mờ vết thâm sau mụn.', N'<p><strong>Tinh Chất Paula''s Choice&nbsp;Clinical Niacinamide 20% Treatment</strong>&nbsp;là <a href="https://hasaki.vn/danh-muc/serum-tinh-chat-duong-da-c75.html"><strong>serum</strong></a> đậm đặc của <a href="https://hasaki.vn/thuong-hieu/paula-s-choice.html"><strong>thương hiệu Paula''s Choice</strong></a> dành cho tình trạng lỗ chân lông to cứng đầu. Công thức chứa&nbsp;nồng độ 20% Niacinamide (vitamin B3) giúp hỗ trợ se khít lỗ chân lông, khắc phục bề mặt da kém mềm mịn do tuổi tác hoặc do ánh nắng mặt trời gây ra, đồng thời&nbsp;cân bằng lượng dầu thừa và làm sáng da, cải thiện tình trạng da không đều màu,&nbsp;mờ vết thâm sau mụn.</p><p><strong>Tinh Chất Se Khít Lỗ Chân Lông Tối Ưu Paula''s Choice&nbsp;Clinical Niacinamide 20% Treatment&nbsp;20ml&nbsp;</strong>hiện đã có mặt tại <strong>Hasaki</strong>.</p><p>&nbsp;</p><p><img src="https://media.hcdn.vn/wysiwyg/HaNguyen/tinh-chat-paula-s-choice-se-khit-lo-chan-long-toi-uu-20ml-1.jpg" alt="Tinh Chất Se Khít Lỗ Chân Lông Tối Ưu Paula''s Choice Clinical Niacinamide 20% Treatment" width="800"></p><h2>Loại da phù hợp:</h2><ul><li>Sản phẩm phù hợp cho mọi loại da.</li></ul><h2>Giải pháp cho tình trạng da:</h2><p>Da gặp vấn đề về tăng sinh bã nhờn, <a href="https://hasaki.vn/danh-muc/dau-thua-lo-chan-long-to-c1879.html"><strong>dầu thừa - lỗ chân lông to</strong></a>, bít tắc lỗ chân lông.</p><p>Da mụn &amp; thâm sau mụn</p><p><a href="https://hasaki.vn/danh-muc/xin-mau-tham-sam-c1887.html"><strong>Da xỉn màu &amp; thâm sạm</strong></a>, da không đều màu.</p><p>Da khô &amp; thô ráp, sần sùi, kém mịn màng do tuổi tác hoặc tổn thương bởi ánh nắng mặt trời.</p>')
INSERT [dbo].[ChiTietSanPhams] ([MaChiTietSanPham], [MaSanPham], [MaNhaSanXuat], [MoTa], [ChiTiet]) VALUES (122, 119, 30, N'Serum Vichy Khoáng Phục Hồi Chuyên Sâu Mineral 89 là dòng serum dưỡng da nổi tiếng từ thương hiệu dược mỹ phẩm Vichy của Pháp, được cô đặc từ thành phần khoáng chất quý giá dưới lòng núi lửa triệu năm tại Auvergne - Pháp, giúp củng cố hàng rào bảo vệ da, hỗ trợ tái tạo và phục hồi, cho da mịn màng, căng mượt và tràn đầy sức sống.', N'<p><strong>Serum Vichy Khoáng Phục Hồi Chuyên Sâu&nbsp;Mineral 89&nbsp;</strong>là dòng <a href="https://hasaki.vn/danh-muc/serum-tinh-chat-duong-da-c75.html"><strong>serum</strong></a> dưỡng da nổi tiếng từ thương hiệu <a href="https://hasaki.vn/thuong-hieu/vichy.html"><strong>dược mỹ phẩm Vichy</strong></a>&nbsp;của Pháp, được cô đặc từ thành phần khoáng chất quý giá dưới lòng núi lửa triệu năm tại Auvergne - Pháp,&nbsp;giúp củng cố hàng rào bảo vệ da, hỗ trợ tái tạo và phục hồi, cho da mịn màng, căng mượt và tràn đầy sức sống.</p><p>Làn da đẹp, mịn màng và không tỳ vết luôn là niềm mơ ước của phái đẹp. Thế nhưng, do tác hại của ánh nắng và môi trường xung quanh dễ khiến làn da trở nên hư tổn và lão hóa nhanh chóng.&nbsp;Đáp ứng nhu cầu phục hồi và tái tạo làn da của khách hàng,&nbsp;<strong>Vichy</strong>&nbsp;- thương hiệu dược mỹ phẩm với tuổi đời hơn 86 năm qua đã&nbsp;khám phá ra công nghệ dưỡng da hoàn toàn mới,&nbsp;<strong>Vichy Mineral 89 Serum</strong>&nbsp;có tác dụng hỗ trợ tái tạo và phục hồi, cho da mịn màng, căng mượt và tràn đầy sức sống.</p><p><img src="https://media.hcdn.vn/wysiwyg/HaNguyen/duong-chat-khoang-co-dac-vichy-mineral-89-ho-tro-phuc-hoi-bao-ve-da-02.jpeg" alt="Vichy Mineral 89 Serum chứa 89% nước khoáng Vichy cô đặc + 0.4% Hyaluronic Acid" width="800"></p><p><strong>Dưỡng Chất Khoáng Cô Đặc Vichy Mineral 89 Serum&nbsp;</strong>chứa đến 89% nước khoáng&nbsp;Vichy&nbsp;cô đặc với 15 khoáng chất quý báu kết hợp hoàn hảo cùng Hyaluronic Acid (HA) vốn nổi tiếng với khả năng giữ nước và phục hồi làn da ưu việt, phân tử HA có khả năng ngậm khối lượng nước gấp 1000 lần khối lượng của nó.&nbsp;Bên cạnh đó, Vichy Mineral 89 còn ghi điểm&nbsp;với bảng thành phần có nguồn gốc thiên nhiên cao, không chứa cồn (alcohol), paraben, silicon, chất tạo màu và tạo mùi. Với công thức chứa 89% thành phần nước khoáng thiên nhiên Vichy nhằm cấp ẩm, tăng cường sức sống cho làn da ngay lập tức.</p><p><img src="https://media.hcdn.vn/wysiwyg/HaNguyen/duong-chat-khoang-co-dac-vichy-mineral-89-ho-tro-phuc-hoi-bao-ve-da-03.jpeg" alt="Dưỡng Chất Khoáng Cô Đặc Vichy Mineral 89 Serum dưỡng ẩm chuyên sâu cho da" width="800"></p><p><strong>Vichy Mineral 89 Serum&nbsp;</strong>có kết cấu dưới dạng gel trong suốt, rất dễ thẩm thấu vào trong da, ít gây kích&nbsp;ứng, dịu nhẹ cho làn da khi sử dụng, đặc biệt là những làn da nhạy cảm.&nbsp;Sau một tuần sử dụng, da dần lấy độ căng mịn, rạng rỡ, lỗ chân lông thu nhỏ lại, các dấu hiệu lão hóa cũng được cải thiện (Sản phẩm đã được kiểm chứng theo khảo sát trên làn da Châu Á).&nbsp;</p>')
SET IDENTITY_INSERT [dbo].[ChiTietSanPhams] OFF
GO
SET IDENTITY_INSERT [dbo].[ChiTietTaiKhoans] ON 

INSERT [dbo].[ChiTietTaiKhoans] ([MaChitietTaiKhoan], [MaTaiKhoan], [MaLoaitaikhoan], [HoTen], [DiaChi], [SoDienThoai], [AnhDaiDien]) VALUES (9, 10, 2, N'quang', N'2', N'2', N'../img/laroche da nhay cam.jpg')
INSERT [dbo].[ChiTietTaiKhoans] ([MaChitietTaiKhoan], [MaTaiKhoan], [MaLoaitaikhoan], [HoTen], [DiaChi], [SoDienThoai], [AnhDaiDien]) VALUES (12, 9, 1, N'Lưu Đức Quang', N'Thôn Dung - Hưng Đạo - Tiên Lữ - Hưng Yên', N'0912313313', N'../img/anh fb 11.jpg')
INSERT [dbo].[ChiTietTaiKhoans] ([MaChitietTaiKhoan], [MaTaiKhoan], [MaLoaitaikhoan], [HoTen], [DiaChi], [SoDienThoai], [AnhDaiDien]) VALUES (17, 12, 2, N'Quangg', N'Hung Yen', N'0982882833', N'../img/centella.jpg')
INSERT [dbo].[ChiTietTaiKhoans] ([MaChitietTaiKhoan], [MaTaiKhoan], [MaLoaitaikhoan], [HoTen], [DiaChi], [SoDienThoai], [AnhDaiDien]) VALUES (21, 20, 2, N'Nguyễn Bảo', N'Hưng Yên', N'09123133135', N'../img/Shiseido.jpg')
INSERT [dbo].[ChiTietTaiKhoans] ([MaChitietTaiKhoan], [MaTaiKhoan], [MaLoaitaikhoan], [HoTen], [DiaChi], [SoDienThoai], [AnhDaiDien]) VALUES (22, 21, 2, N'Lương Tiến Đạt', N'Hưng Yên', N'0861236163', N'../img/Clinique-Moisture-Surge1_1595859472.jpg')
INSERT [dbo].[ChiTietTaiKhoans] ([MaChitietTaiKhoan], [MaTaiKhoan], [MaLoaitaikhoan], [HoTen], [DiaChi], [SoDienThoai], [AnhDaiDien]) VALUES (23, 22, 8, N'Lưu Đức Quang', N'Hưng Yên', N'09837817823', N'../img/anh fb.png')
INSERT [dbo].[ChiTietTaiKhoans] ([MaChitietTaiKhoan], [MaTaiKhoan], [MaLoaitaikhoan], [HoTen], [DiaChi], [SoDienThoai], [AnhDaiDien]) VALUES (24, 23, 2, N'Luu Duc Quang', N'', N'0858217121', N'../../../img/user.jpg')
SET IDENTITY_INSERT [dbo].[ChiTietTaiKhoans] OFF
GO
SET IDENTITY_INSERT [dbo].[DanhGia] ON 

INSERT [dbo].[DanhGia] ([MaDanhGia], [MaSanPham], [MaTaiKhoan], [ChatLuong], [NoiDung], [TrangThai], [ThoiGian], [AnhDanhGia], [GhiChu]) VALUES (30, 106, 9, 5, N'Sản phẩm dùng rất thích', 1, CAST(N'2023-11-30T22:07:00.000' AS DateTime), N'../img/facebook-dynamic-422200236-1695637682_img_358x358_843626_fit_center.png', N'')
INSERT [dbo].[DanhGia] ([MaDanhGia], [MaSanPham], [MaTaiKhoan], [ChatLuong], [NoiDung], [TrangThai], [ThoiGian], [AnhDanhGia], [GhiChu]) VALUES (31, 96, 9, 5, N'tuyệt vời', 1, CAST(N'2023-12-01T15:33:00.000' AS DateTime), N'', N'')
INSERT [dbo].[DanhGia] ([MaDanhGia], [MaSanPham], [MaTaiKhoan], [ChatLuong], [NoiDung], [TrangThai], [ThoiGian], [AnhDanhGia], [GhiChu]) VALUES (32, 92, 9, 5, N'Sản phẩm rất tốt', 1, CAST(N'2023-12-01T18:48:00.000' AS DateTime), N'../img/gel-rua-mat-la-roche-posay-cho-da-dau-nhay-cam-400ml-4-1663661433_img_358x358_843626_fit_center.jpg', N'')
SET IDENTITY_INSERT [dbo].[DanhGia] OFF
GO
SET IDENTITY_INSERT [dbo].[DanhMucs] ON 

INSERT [dbo].[DanhMucs] ([MaDanhMuc], [TenDanhMuc], [DacBiet], [NoiDung]) VALUES (1, N'Sữa rửa mặt', 1, N'Sữa rửa mặt')
INSERT [dbo].[DanhMucs] ([MaDanhMuc], [TenDanhMuc], [DacBiet], [NoiDung]) VALUES (3, N'Toner nước hoa hồng', 1, N'Toner nước hoa hồng')
INSERT [dbo].[DanhMucs] ([MaDanhMuc], [TenDanhMuc], [DacBiet], [NoiDung]) VALUES (4, N'Kem chống nắng', 1, N'Kem chống nắng')
INSERT [dbo].[DanhMucs] ([MaDanhMuc], [TenDanhMuc], [DacBiet], [NoiDung]) VALUES (5, N'Serum', 1, N'Serum')
INSERT [dbo].[DanhMucs] ([MaDanhMuc], [TenDanhMuc], [DacBiet], [NoiDung]) VALUES (35, N'Nước tẩy trang', 1, N'Nước tẩy trang')
INSERT [dbo].[DanhMucs] ([MaDanhMuc], [TenDanhMuc], [DacBiet], [NoiDung]) VALUES (36, N'Mặt nạ', 1, N'Mặt nạ')
INSERT [dbo].[DanhMucs] ([MaDanhMuc], [TenDanhMuc], [DacBiet], [NoiDung]) VALUES (37, N'Sữa tắm', 1, N'Sữa tắm')
INSERT [dbo].[DanhMucs] ([MaDanhMuc], [TenDanhMuc], [DacBiet], [NoiDung]) VALUES (38, N'Trang điểm mặt', 1, N'Trang điểm mặt')
INSERT [dbo].[DanhMucs] ([MaDanhMuc], [TenDanhMuc], [DacBiet], [NoiDung]) VALUES (39, N'Trang điểm môi', 1, N'Trang điểm môi')
INSERT [dbo].[DanhMucs] ([MaDanhMuc], [TenDanhMuc], [DacBiet], [NoiDung]) VALUES (40, N'Dầu gội và Dầu xả', 1, N'Dầu gội và Dầu xả')
INSERT [dbo].[DanhMucs] ([MaDanhMuc], [TenDanhMuc], [DacBiet], [NoiDung]) VALUES (41, N'Nước hoa', 1, N'Nước hoa')
INSERT [dbo].[DanhMucs] ([MaDanhMuc], [TenDanhMuc], [DacBiet], [NoiDung]) VALUES (42, N'Hỗ trợ trị mụn', 1, N'Hỗ trợ trị mụn')
INSERT [dbo].[DanhMucs] ([MaDanhMuc], [TenDanhMuc], [DacBiet], [NoiDung]) VALUES (43, N'Tẩy tế bào chết', 1, N'Tẩy tế bào chết')
SET IDENTITY_INSERT [dbo].[DanhMucs] OFF
GO
SET IDENTITY_INSERT [dbo].[DanhMucUudais] ON 

INSERT [dbo].[DanhMucUudais] ([Madanhmucuudai], [Tendanhmucuudai], [DacBiet], [NoiDung]) VALUES (1, N'FlagSale', 1, N'.')
INSERT [dbo].[DanhMucUudais] ([Madanhmucuudai], [Tendanhmucuudai], [DacBiet], [NoiDung]) VALUES (21, N'Không', 1, N'.')
SET IDENTITY_INSERT [dbo].[DanhMucUudais] OFF
GO
SET IDENTITY_INSERT [dbo].[HangSanXuats] ON 

INSERT [dbo].[HangSanXuats] ([MaNhaSanXuat], [TenHang], [LinkWeb], [AnhDaiDien]) VALUES (10, N'Biodemar', N'bio.com', N'../img/poster2.jpg')
INSERT [dbo].[HangSanXuats] ([MaNhaSanXuat], [TenHang], [LinkWeb], [AnhDaiDien]) VALUES (11, N'Demacos', N'demacos.com', N'../img/poster-my-pham1.jpg')
INSERT [dbo].[HangSanXuats] ([MaNhaSanXuat], [TenHang], [LinkWeb], [AnhDaiDien]) VALUES (12, N'Cerave', N'crv.com', N'../img/poster.jpg')
INSERT [dbo].[HangSanXuats] ([MaNhaSanXuat], [TenHang], [LinkWeb], [AnhDaiDien]) VALUES (13, N'Matiderm', N'martiderm.com', N'../img/Poster quảng cáo khai trương.jpg')
INSERT [dbo].[HangSanXuats] ([MaNhaSanXuat], [TenHang], [LinkWeb], [AnhDaiDien]) VALUES (14, N'LarochePosay', N'larochoposay.com', N'../img/laroche spf50+.jpg')
INSERT [dbo].[HangSanXuats] ([MaNhaSanXuat], [TenHang], [LinkWeb], [AnhDaiDien]) VALUES (15, N'Neutrogena', N'https://neutroskincare.com/', N'../img/neutrogena.webp')
INSERT [dbo].[HangSanXuats] ([MaNhaSanXuat], [TenHang], [LinkWeb], [AnhDaiDien]) VALUES (16, N'L''Oréal Việt Nam', N'https://www.loreal.com/vi-vn/vietnam/', N'../img/loreal.jpg')
INSERT [dbo].[HangSanXuats] ([MaNhaSanXuat], [TenHang], [LinkWeb], [AnhDaiDien]) VALUES (17, N'Garnier', N'https://thegioiskinfood.com/collections/garnier', N'../img/gariner.webp')
INSERT [dbo].[HangSanXuats] ([MaNhaSanXuat], [TenHang], [LinkWeb], [AnhDaiDien]) VALUES (18, N'Bioré Vietnam', N'https://web.facebook.com/biorevn', N'../img/biore.jpg')
INSERT [dbo].[HangSanXuats] ([MaNhaSanXuat], [TenHang], [LinkWeb], [AnhDaiDien]) VALUES (19, N'Estée Lauder', N'https://www.esteelauder.com.vn/', N'../img/Estée Lauder.jpg')
INSERT [dbo].[HangSanXuats] ([MaNhaSanXuat], [TenHang], [LinkWeb], [AnhDaiDien]) VALUES (20, N'Shiseido', N'https://www.shiseido.com.vn/', N'../img/Shiseido.jpg')
INSERT [dbo].[HangSanXuats] ([MaNhaSanXuat], [TenHang], [LinkWeb], [AnhDaiDien]) VALUES (21, N'Lancôme', N'https://www.shiseido.com.vn/', N'../img/Lancôme.jpg')
INSERT [dbo].[HangSanXuats] ([MaNhaSanXuat], [TenHang], [LinkWeb], [AnhDaiDien]) VALUES (22, N'Chanel', N'https://www.chanel.com/vn/', N'../img/trang-diem-chanel.jpg')
INSERT [dbo].[HangSanXuats] ([MaNhaSanXuat], [TenHang], [LinkWeb], [AnhDaiDien]) VALUES (23, N'Dior', N'https://www.dior.com', N'../img/dior-beauty.avif')
INSERT [dbo].[HangSanXuats] ([MaNhaSanXuat], [TenHang], [LinkWeb], [AnhDaiDien]) VALUES (24, N'Clinique', N'https://www.clinique.vn/', N'../img/Clinique-Moisture-Surge1_1595859472.jpg')
INSERT [dbo].[HangSanXuats] ([MaNhaSanXuat], [TenHang], [LinkWeb], [AnhDaiDien]) VALUES (25, N'SVR', N'https://natubiocare.com.vn/svr.html', N'../img/15434140675872_svr--logo-ok2.png')
INSERT [dbo].[HangSanXuats] ([MaNhaSanXuat], [TenHang], [LinkWeb], [AnhDaiDien]) VALUES (26, N'Cetaphil', N'https://www.cetaphil.com.vn/', N'../img/logo_vn.svg')
INSERT [dbo].[HangSanXuats] ([MaNhaSanXuat], [TenHang], [LinkWeb], [AnhDaiDien]) VALUES (27, N'Cosrx', N'https://cosrx.com.vn/', N'../img/Cosrx-Viet-Nam-Logo.png')
INSERT [dbo].[HangSanXuats] ([MaNhaSanXuat], [TenHang], [LinkWeb], [AnhDaiDien]) VALUES (28, N'Simple', N'https://www.simpleskincare.com/vn/products.html', N'../img/1620325-new-logo-simple.avif')
INSERT [dbo].[HangSanXuats] ([MaNhaSanXuat], [TenHang], [LinkWeb], [AnhDaiDien]) VALUES (29, N'Hadalabo', N'https://hadalabo.com.vn/', N'../img/logo-hada-labo-xanh.png')
INSERT [dbo].[HangSanXuats] ([MaNhaSanXuat], [TenHang], [LinkWeb], [AnhDaiDien]) VALUES (30, N'Vichy', N'https://www.vichy.com.vn/he-thong-cua-hang/', N'../img/logo_vichy_2-2.png')
INSERT [dbo].[HangSanXuats] ([MaNhaSanXuat], [TenHang], [LinkWeb], [AnhDaiDien]) VALUES (31, N'Klairs', N'https://klairsvietnam.vn/', N'../img/logo-klairs.png')
INSERT [dbo].[HangSanXuats] ([MaNhaSanXuat], [TenHang], [LinkWeb], [AnhDaiDien]) VALUES (32, N'Dr.Pepti', N'https://drpepti.vn/', N'../img/artboard-1_1683097126.png')
INSERT [dbo].[HangSanXuats] ([MaNhaSanXuat], [TenHang], [LinkWeb], [AnhDaiDien]) VALUES (33, N'Centalla', N'https://skin1004.com.vn/', N'../img/logo-skin1004.png')
INSERT [dbo].[HangSanXuats] ([MaNhaSanXuat], [TenHang], [LinkWeb], [AnhDaiDien]) VALUES (34, N'Anessa', N'https://anessa.vn/', N'../img/logo.png')
INSERT [dbo].[HangSanXuats] ([MaNhaSanXuat], [TenHang], [LinkWeb], [AnhDaiDien]) VALUES (35, N'Eucerin', N'https://www.eucerin.vn/', N'../img/2000x360 SP_update.webp')
INSERT [dbo].[HangSanXuats] ([MaNhaSanXuat], [TenHang], [LinkWeb], [AnhDaiDien]) VALUES (36, N'GoodnDoc', N'https://goodndoc.vn/', N'../img/top_logo.png')
INSERT [dbo].[HangSanXuats] ([MaNhaSanXuat], [TenHang], [LinkWeb], [AnhDaiDien]) VALUES (37, N'oh!oh!', N'https://lona.vn/thuong-hieu/my-pham-oh-oh/', N'../img/oh-oh.jpg')
INSERT [dbo].[HangSanXuats] ([MaNhaSanXuat], [TenHang], [LinkWeb], [AnhDaiDien]) VALUES (38, N'Paula''s Choice', N'https://paulaschoice.vn/san-pham', N'../img/logo-paulachoice.png')
SET IDENTITY_INSERT [dbo].[HangSanXuats] OFF
GO
SET IDENTITY_INSERT [dbo].[HoaDonNhaps] ON 

INSERT [dbo].[HoaDonNhaps] ([MaHoaDon], [MaNhaPhanPhoi], [NgayTao], [KieuThanhToan], [MaTaiKhoan], [TongTien]) VALUES (48, 1, CAST(N'2023-11-30T14:21:00.000' AS DateTime), N'Tiền Mặt', 9, CAST(65600000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDonNhaps] ([MaHoaDon], [MaNhaPhanPhoi], [NgayTao], [KieuThanhToan], [MaTaiKhoan], [TongTien]) VALUES (49, 1, CAST(N'2023-10-31T20:42:00.000' AS DateTime), N'Tiền Mặt', 9, CAST(11500000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDonNhaps] ([MaHoaDon], [MaNhaPhanPhoi], [NgayTao], [KieuThanhToan], [MaTaiKhoan], [TongTien]) VALUES (50, 1, CAST(N'2023-09-20T20:42:00.000' AS DateTime), N'Tiền Mặt', 9, CAST(9000000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDonNhaps] ([MaHoaDon], [MaNhaPhanPhoi], [NgayTao], [KieuThanhToan], [MaTaiKhoan], [TongTien]) VALUES (51, 3, CAST(N'2023-08-03T20:42:00.000' AS DateTime), N'Tiền Mặt', 9, CAST(39500000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDonNhaps] ([MaHoaDon], [MaNhaPhanPhoi], [NgayTao], [KieuThanhToan], [MaTaiKhoan], [TongTien]) VALUES (52, 11, CAST(N'2023-07-12T20:48:00.000' AS DateTime), N'Tiền Mặt', 9, CAST(5500000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDonNhaps] ([MaHoaDon], [MaNhaPhanPhoi], [NgayTao], [KieuThanhToan], [MaTaiKhoan], [TongTien]) VALUES (53, 12, CAST(N'2023-06-02T20:48:00.000' AS DateTime), N'Tiền Mặt', 9, CAST(16500000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDonNhaps] ([MaHoaDon], [MaNhaPhanPhoi], [NgayTao], [KieuThanhToan], [MaTaiKhoan], [TongTien]) VALUES (54, 1, CAST(N'2023-05-30T20:48:00.000' AS DateTime), N'Tiền Mặt', 9, CAST(13500000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDonNhaps] ([MaHoaDon], [MaNhaPhanPhoi], [NgayTao], [KieuThanhToan], [MaTaiKhoan], [TongTien]) VALUES (55, 20, CAST(N'2023-04-30T20:48:00.000' AS DateTime), N'Tiền Mặt', 9, CAST(15200000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDonNhaps] ([MaHoaDon], [MaNhaPhanPhoi], [NgayTao], [KieuThanhToan], [MaTaiKhoan], [TongTien]) VALUES (56, 17, CAST(N'2023-03-30T20:48:00.000' AS DateTime), N'Tiền Mặt', 9, CAST(15600000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDonNhaps] ([MaHoaDon], [MaNhaPhanPhoi], [NgayTao], [KieuThanhToan], [MaTaiKhoan], [TongTien]) VALUES (57, 23, CAST(N'2023-02-23T20:48:00.000' AS DateTime), N'Tiền Mặt', 9, CAST(54000000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDonNhaps] ([MaHoaDon], [MaNhaPhanPhoi], [NgayTao], [KieuThanhToan], [MaTaiKhoan], [TongTien]) VALUES (58, 8, CAST(N'2023-01-30T20:48:00.000' AS DateTime), N'MoMo', 9, CAST(14000000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDonNhaps] ([MaHoaDon], [MaNhaPhanPhoi], [NgayTao], [KieuThanhToan], [MaTaiKhoan], [TongTien]) VALUES (59, 23, CAST(N'2023-01-30T20:48:00.000' AS DateTime), N'Chuyển khoản', 9, CAST(30500000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDonNhaps] ([MaHoaDon], [MaNhaPhanPhoi], [NgayTao], [KieuThanhToan], [MaTaiKhoan], [TongTien]) VALUES (60, 13, CAST(N'2023-01-30T20:48:00.000' AS DateTime), N'MoMo', 9, CAST(81900000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDonNhaps] ([MaHoaDon], [MaNhaPhanPhoi], [NgayTao], [KieuThanhToan], [MaTaiKhoan], [TongTien]) VALUES (61, 3, CAST(N'2023-01-30T20:48:00.000' AS DateTime), N'Tiền Mặt', 9, CAST(80500000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDonNhaps] ([MaHoaDon], [MaNhaPhanPhoi], [NgayTao], [KieuThanhToan], [MaTaiKhoan], [TongTien]) VALUES (62, 13, CAST(N'2023-11-30T20:48:00.000' AS DateTime), N'Thẻ visa', 9, CAST(114900000 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[HoaDonNhaps] OFF
GO
SET IDENTITY_INSERT [dbo].[HoaDons] ON 

INSERT [dbo].[HoaDons] ([MaHoaDon], [NgayTao], [TongGia], [TenKH], [Diachi], [Email], [SDT], [DiaChiGiaoHang], [MaTaiKhoan], [TrangThai]) VALUES (68, CAST(N'2023-01-25T14:21:00.000' AS DateTime), CAST(11678000 AS Decimal(18, 0)), N'Lưu Đức Quang', N'Hưng Đạo - Tiên Lữ - Hưng Yên', N'luuquang123@gamil.com', N'09123888447', N'Hưng Đạo - Tiên Lữ - Hưng Yên', 9, N'Đang xử lý')
INSERT [dbo].[HoaDons] ([MaHoaDon], [NgayTao], [TongGia], [TenKH], [Diachi], [Email], [SDT], [DiaChiGiaoHang], [MaTaiKhoan], [TrangThai]) VALUES (69, CAST(N'2023-02-22T15:20:00.000' AS DateTime), CAST(5022000 AS Decimal(18, 0)), N'Nguyễn Bảo', N'Tiên Lữ - Hưng Yên', N'nguyenbao@123', N'09123133135', N'Tiên Lữ - Hưng Yên', 20, N'Đang xử lý')
INSERT [dbo].[HoaDons] ([MaHoaDon], [NgayTao], [TongGia], [TenKH], [Diachi], [Email], [SDT], [DiaChiGiaoHang], [MaTaiKhoan], [TrangThai]) VALUES (70, CAST(N'2023-03-12T21:04:00.000' AS DateTime), CAST(1642000 AS Decimal(18, 0)), N'Lưu Đức Quang', N'Vui lòng chọn | Vui lòng chọn | Vui lòng chọn', N'luuquang2003@gmail.com', N'0912313313', N'Thôn Dung - Hưng Đạo - Tiên Lữ - Hưng Yên', 9, N'Đang xử lý')
INSERT [dbo].[HoaDons] ([MaHoaDon], [NgayTao], [TongGia], [TenKH], [Diachi], [Email], [SDT], [DiaChiGiaoHang], [MaTaiKhoan], [TrangThai]) VALUES (71, CAST(N'2023-04-30T21:28:00.000' AS DateTime), CAST(4606000 AS Decimal(18, 0)), N'Lưu Đức Quang', N'Thôn Dung - Hưng Đạo - Tiên Lữ - Hưng Yên', N'luuquang2003@gmail.com', N'0912313313', N'Thôn Dung - Hưng Đạo - Tiên Lữ - Hưng Yên', 9, N'Đang xử lý')
INSERT [dbo].[HoaDons] ([MaHoaDon], [NgayTao], [TongGia], [TenKH], [Diachi], [Email], [SDT], [DiaChiGiaoHang], [MaTaiKhoan], [TrangThai]) VALUES (72, CAST(N'2023-05-30T21:28:00.000' AS DateTime), CAST(6465000 AS Decimal(18, 0)), N'Lưu Đức Quang', N'Thôn Dung - Hưng Đạo - Tiên Lữ - Hưng Yên', N'luuquang2003@gmail.com', N'0912313313', N'Thôn Dung - Hưng Đạo - Tiên Lữ - Hưng Yên', 9, N'Đang xử lý')
INSERT [dbo].[HoaDons] ([MaHoaDon], [NgayTao], [TongGia], [TenKH], [Diachi], [Email], [SDT], [DiaChiGiaoHang], [MaTaiKhoan], [TrangThai]) VALUES (73, CAST(N'2023-06-30T21:28:00.000' AS DateTime), CAST(459000 AS Decimal(18, 0)), N'Lưu Đức Quang', N'Vui lòng chọn | Vui lòng chọn | Vui lòng chọn', N'luuquang2003@gmail.com', N'0912313313', N'Thôn Dung - Hưng Đạo - Tiên Lữ - Hưng Yên', 9, N'Đang xử lý')
INSERT [dbo].[HoaDons] ([MaHoaDon], [NgayTao], [TongGia], [TenKH], [Diachi], [Email], [SDT], [DiaChiGiaoHang], [MaTaiKhoan], [TrangThai]) VALUES (74, CAST(N'2023-07-30T21:25:00.000' AS DateTime), CAST(9949000 AS Decimal(18, 0)), N'Lưu Đức Quang', N'Thôn Dung - Hưng Đạo - Tiên Lữ - Hưng Yên', N'luuquang2003@gmail.com', N'0912313313', N'Thôn Dung - Hưng Đạo - Tiên Lữ - Hưng Yên', 9, N'Đang xử lý')
INSERT [dbo].[HoaDons] ([MaHoaDon], [NgayTao], [TongGia], [TenKH], [Diachi], [Email], [SDT], [DiaChiGiaoHang], [MaTaiKhoan], [TrangThai]) VALUES (75, CAST(N'2023-08-30T21:31:00.000' AS DateTime), CAST(4606000 AS Decimal(18, 0)), N'Lưu Đức Quang', N'Thôn Dung - Hưng Đạo - Tiên Lữ - Hưng Yên', N'luuquang2003@gmail.com', N'0676856868', N'Thôn Dung - Hưng Đạo - Tiên Lữ - Hưng Yên', 9, N'Đang xử lý')
INSERT [dbo].[HoaDons] ([MaHoaDon], [NgayTao], [TongGia], [TenKH], [Diachi], [Email], [SDT], [DiaChiGiaoHang], [MaTaiKhoan], [TrangThai]) VALUES (76, CAST(N'2023-09-30T21:31:00.000' AS DateTime), CAST(10170000 AS Decimal(18, 0)), N'Lưu Đức Quang', N'Thôn Dung - Hưng Đạo - Tiên Lữ - Hưng Yên', N'luuquang2003@gmail.com', N'09453632222', N'Thôn Dung - Hưng Đạo - Tiên Lữ - Hưng Yên', 9, N'Đang xử lý')
INSERT [dbo].[HoaDons] ([MaHoaDon], [NgayTao], [TongGia], [TenKH], [Diachi], [Email], [SDT], [DiaChiGiaoHang], [MaTaiKhoan], [TrangThai]) VALUES (77, CAST(N'2023-10-30T21:31:00.000' AS DateTime), CAST(4242000 AS Decimal(18, 0)), N'Lưu Đức Quang', N'Thôn Dung - Hưng Đạo - Tiên Lữ - Hưng Yên', N'luuquang2003@gmail.com', N'0912313313', N'Thôn Dung - Hưng Đạo - Tiên Lữ - Hưng Yên', 9, N'Đang xử lý')
INSERT [dbo].[HoaDons] ([MaHoaDon], [NgayTao], [TongGia], [TenKH], [Diachi], [Email], [SDT], [DiaChiGiaoHang], [MaTaiKhoan], [TrangThai]) VALUES (78, CAST(N'2023-11-01T21:31:00.000' AS DateTime), CAST(5672000 AS Decimal(18, 0)), N'Lưu Đức Quang', N'Thôn Dung - Hưng Đạo - Tiên Lữ - Hưng Yên', N'luuquang2003@gmail.com', N'095685322', N'Thôn Dung - Hưng Đạo - Tiên Lữ - Hưng Yên', 9, N'Đang xử lý')
INSERT [dbo].[HoaDons] ([MaHoaDon], [NgayTao], [TongGia], [TenKH], [Diachi], [Email], [SDT], [DiaChiGiaoHang], [MaTaiKhoan], [TrangThai]) VALUES (79, CAST(N'2023-09-30T21:33:00.000' AS DateTime), CAST(4320000 AS Decimal(18, 0)), N'Lưu Đức Quang', N'Thôn Dung - Hưng Đạo - Tiên Lữ - Hưng Yên', N'luuquang2003@gmail.com', N'091342522', N'Thôn Dung - Hưng Đạo - Tiên Lữ - Hưng Yên', 9, N'Đang xử lý')
INSERT [dbo].[HoaDons] ([MaHoaDon], [NgayTao], [TongGia], [TenKH], [Diachi], [Email], [SDT], [DiaChiGiaoHang], [MaTaiKhoan], [TrangThai]) VALUES (80, CAST(N'2023-09-30T21:34:00.000' AS DateTime), CAST(8610000 AS Decimal(18, 0)), N'Lưu Đức Quang', N'Thôn Dung - Hưng Đạo - Tiên Lữ - Hưng Yên', N'luuquang2003@gmail.com', N'0912313313', N'Thôn Dung - Hưng Đạo - Tiên Lữ - Hưng Yên', 9, N'Hoàn tất')
INSERT [dbo].[HoaDons] ([MaHoaDon], [NgayTao], [TongGia], [TenKH], [Diachi], [Email], [SDT], [DiaChiGiaoHang], [MaTaiKhoan], [TrangThai]) VALUES (81, CAST(N'2023-09-30T21:35:00.000' AS DateTime), CAST(5802000 AS Decimal(18, 0)), N'Lưu Đức Quang', N'Thôn Dung - Hưng Đạo - Tiên Lữ - Hưng Yên', N'luuquang2003@gmail.com', N'09122511453', N'Thôn Dung - Hưng Đạo - Tiên Lữ - Hưng Yên', 9, N'Trả hàng')
INSERT [dbo].[HoaDons] ([MaHoaDon], [NgayTao], [TongGia], [TenKH], [Diachi], [Email], [SDT], [DiaChiGiaoHang], [MaTaiKhoan], [TrangThai]) VALUES (82, CAST(N'2023-10-30T21:35:00.000' AS DateTime), CAST(8818000 AS Decimal(18, 0)), N'Lưu Đức Quang', N'Thôn Dung - Hưng Đạo - Tiên Lữ - Hưng Yên', N'luuquang2003@gmail.com', N'09313214111', N'Thôn Dung - Hưng Đạo - Tiên Lữ - Hưng Yên', 9, N'Đổi hàng')
INSERT [dbo].[HoaDons] ([MaHoaDon], [NgayTao], [TongGia], [TenKH], [Diachi], [Email], [SDT], [DiaChiGiaoHang], [MaTaiKhoan], [TrangThai]) VALUES (83, CAST(N'2023-11-02T21:35:00.000' AS DateTime), CAST(5802000 AS Decimal(18, 0)), N'Lưu Đức Quang', N'Thôn Dung - Hưng Đạo - Tiên Lữ - Hưng Yên', N'luuquang2003@gmail.com', N'09123152512', N'Thôn Dung - Hưng Đạo - Tiên Lữ - Hưng Yên', 9, N'Đã giao hàng')
INSERT [dbo].[HoaDons] ([MaHoaDon], [NgayTao], [TongGia], [TenKH], [Diachi], [Email], [SDT], [DiaChiGiaoHang], [MaTaiKhoan], [TrangThai]) VALUES (84, CAST(N'2023-11-03T21:35:00.000' AS DateTime), CAST(4086000 AS Decimal(18, 0)), N'Lưu Đức Quang', N'Thôn Dung - Hưng Đạo - Tiên Lữ - Hưng Yên', N'luuquang2003@gmail.com', N'0911231231', N'Thôn Dung - Hưng Đạo - Tiên Lữ - Hưng Yên', 9, N'Đang giao hàng')
INSERT [dbo].[HoaDons] ([MaHoaDon], [NgayTao], [TongGia], [TenKH], [Diachi], [Email], [SDT], [DiaChiGiaoHang], [MaTaiKhoan], [TrangThai]) VALUES (85, CAST(N'2023-11-04T21:45:00.000' AS DateTime), CAST(10508000 AS Decimal(18, 0)), N'Lưu Đức Quang', N'Vui lòng chọn | Vui lòng chọn | Vui lòng chọn', N'luuquang2003@gmail.com', N'09121231444', N'Thôn Dung - Hưng Đạo - Tiên Lữ - Hưng Yên', 9, N'Đang xử lý')
INSERT [dbo].[HoaDons] ([MaHoaDon], [NgayTao], [TongGia], [TenKH], [Diachi], [Email], [SDT], [DiaChiGiaoHang], [MaTaiKhoan], [TrangThai]) VALUES (86, CAST(N'2023-11-05T21:45:00.000' AS DateTime), CAST(22650000 AS Decimal(18, 0)), N'Lưu Đức Quang', N'Vui lòng chọn | Vui lòng chọn | Vui lòng chọn', N'luuquang2003@gmail.com', N'09125685444', N'Thôn Dung - Hưng Đạo - Tiên Lữ - Hưng Yên', 9, N'Đang xử lý')
INSERT [dbo].[HoaDons] ([MaHoaDon], [NgayTao], [TongGia], [TenKH], [Diachi], [Email], [SDT], [DiaChiGiaoHang], [MaTaiKhoan], [TrangThai]) VALUES (87, CAST(N'2023-11-06T21:47:00.000' AS DateTime), CAST(446000 AS Decimal(18, 0)), N'Lưu Đức Quang', N'Vui lòng chọn | Vui lòng chọn | Vui lòng chọn', N'luuquang2003@gmail.com', N'0912313313', N'Thôn Dung - Hưng Đạo - Tiên Lữ - Hưng Yên', 9, N'Đang xử lý')
INSERT [dbo].[HoaDons] ([MaHoaDon], [NgayTao], [TongGia], [TenKH], [Diachi], [Email], [SDT], [DiaChiGiaoHang], [MaTaiKhoan], [TrangThai]) VALUES (88, CAST(N'2023-11-07T21:48:00.000' AS DateTime), CAST(394000 AS Decimal(18, 0)), N'Lưu Đức Quang', N'Vui lòng chọn | Vui lòng chọn | Vui lòng chọn', N'luuquang2003@gmail.com', N'0912313313', N'Thôn Dung - Hưng Đạo - Tiên Lữ - Hưng Yên', 9, N'Đang xử lý')
INSERT [dbo].[HoaDons] ([MaHoaDon], [NgayTao], [TongGia], [TenKH], [Diachi], [Email], [SDT], [DiaChiGiaoHang], [MaTaiKhoan], [TrangThai]) VALUES (89, CAST(N'2023-11-08T21:48:00.000' AS DateTime), CAST(368000 AS Decimal(18, 0)), N'Lưu Đức Quang', N'Vui lòng chọn | Vui lòng chọn | Vui lòng chọn', N'luuquang2003@gmail.com', N'09123133136', N'Thôn Dung - Hưng Đạo - Tiên Lữ - Hưng Yên', 9, N'Đang xử lý')
INSERT [dbo].[HoaDons] ([MaHoaDon], [NgayTao], [TongGia], [TenKH], [Diachi], [Email], [SDT], [DiaChiGiaoHang], [MaTaiKhoan], [TrangThai]) VALUES (90, CAST(N'2023-11-09T21:40:00.000' AS DateTime), CAST(4190000 AS Decimal(18, 0)), N'Lưu Đức Quang', N'Tỉnh Cao Bằng | Huyện Hạ Lang | Xã Thắng Lợi', N'luuquang2003@gmail.com', N'0912313313', N'Thôn Dung - Hưng Đạo - Tiên Lữ - Hưng Yên', 9, N'Đang xử lý')
INSERT [dbo].[HoaDons] ([MaHoaDon], [NgayTao], [TongGia], [TenKH], [Diachi], [Email], [SDT], [DiaChiGiaoHang], [MaTaiKhoan], [TrangThai]) VALUES (91, CAST(N'2023-11-10T21:40:00.000' AS DateTime), CAST(3189000 AS Decimal(18, 0)), N'Lưu Đức Quang', N'Tỉnh Bắc Kạn | Huyện Ngân Sơn | Xã Bằng Vân', N'luuquang2003@gmail.com', N'0912313313', N'Thôn Dung - Hưng Đạo - Tiên Lữ - Hưng Yên', 9, N'Đang xử lý')
INSERT [dbo].[HoaDons] ([MaHoaDon], [NgayTao], [TongGia], [TenKH], [Diachi], [Email], [SDT], [DiaChiGiaoHang], [MaTaiKhoan], [TrangThai]) VALUES (92, CAST(N'2023-11-11T21:40:00.000' AS DateTime), CAST(459000 AS Decimal(18, 0)), N'Lưu Đức Quang', N'Tỉnh Lào Cai | Huyện Si Ma Cai | Xã Sán Chải', N'luuquang2003@gmail.com', N'0912313313', N'Thôn Dung - Hưng Đạo - Tiên Lữ - Hưng Yên', 9, N'Đang xử lý')
INSERT [dbo].[HoaDons] ([MaHoaDon], [NgayTao], [TongGia], [TenKH], [Diachi], [Email], [SDT], [DiaChiGiaoHang], [MaTaiKhoan], [TrangThai]) VALUES (93, CAST(N'2023-11-15T21:40:00.000' AS DateTime), CAST(1317000 AS Decimal(18, 0)), N'Lưu Đức Quang', N'Tỉnh Cao Bằng | Huyện Hà Quảng | Xã Cần Nông', N'luuquang2003@gmail.com', N'0912313313', N'Thôn Dung - Hưng Đạo - Tiên Lữ - Hưng Yên', 9, N'Đang xử lý')
INSERT [dbo].[HoaDons] ([MaHoaDon], [NgayTao], [TongGia], [TenKH], [Diachi], [Email], [SDT], [DiaChiGiaoHang], [MaTaiKhoan], [TrangThai]) VALUES (94, CAST(N'2023-11-16T21:40:00.000' AS DateTime), CAST(966000 AS Decimal(18, 0)), N'Lưu Đức Quang', N'Tỉnh Cao Bằng | Huyện Bảo Lạc | Xã Cốc Pàng', N'luuquang2003@gmail.com', N'0912313313', N'Thôn Dung - Hưng Đạo - Tiên Lữ - Hưng Yên', 9, N'Đang xử lý')
INSERT [dbo].[HoaDons] ([MaHoaDon], [NgayTao], [TongGia], [TenKH], [Diachi], [Email], [SDT], [DiaChiGiaoHang], [MaTaiKhoan], [TrangThai]) VALUES (95, CAST(N'2023-11-17T22:01:00.000' AS DateTime), CAST(446000 AS Decimal(18, 0)), N'Lưu Đức Quang', N'Tỉnh Cao Bằng | Huyện Hạ Lang | Xã Đức Quang', N'luuquang2003@gmail.com', N'0912313313', N'Thôn Dung - Hưng Đạo - Tiên Lữ - Hưng Yên', 9, N'Đang xử lý')
INSERT [dbo].[HoaDons] ([MaHoaDon], [NgayTao], [TongGia], [TenKH], [Diachi], [Email], [SDT], [DiaChiGiaoHang], [MaTaiKhoan], [TrangThai]) VALUES (96, CAST(N'2023-11-18T22:01:00.000' AS DateTime), CAST(433000 AS Decimal(18, 0)), N'Lưu Đức Quang', N'Tỉnh Hà Giang | Huyện Yên Minh | Xã Phú Lũng', N'luuquang2003@gmail.com', N'0912313313', N'Thôn Dung - Hưng Đạo - Tiên Lữ - Hưng Yên', 9, N'Đang xử lý')
INSERT [dbo].[HoaDons] ([MaHoaDon], [NgayTao], [TongGia], [TenKH], [Diachi], [Email], [SDT], [DiaChiGiaoHang], [MaTaiKhoan], [TrangThai]) VALUES (97, CAST(N'2023-11-19T22:01:00.000' AS DateTime), CAST(433000 AS Decimal(18, 0)), N'Lưu Đức Quang', N'Tỉnh Cao Bằng | Huyện Hà Quảng | Xã Cần Nông', N'luuquang2003@gmail.com', N'0912313313', N'Thôn Dung - Hưng Đạo - Tiên Lữ - Hưng Yên', 9, N'Đang xử lý')
INSERT [dbo].[HoaDons] ([MaHoaDon], [NgayTao], [TongGia], [TenKH], [Diachi], [Email], [SDT], [DiaChiGiaoHang], [MaTaiKhoan], [TrangThai]) VALUES (98, CAST(N'2023-11-27T22:04:00.000' AS DateTime), CAST(2838000 AS Decimal(18, 0)), N'Lưu Đức Quang', N'Thành phố Hà Nội | Quận Tây Hồ | Phường Nhật Tân', N'luuquang2003@gmail.com', N'0912313313', N'Thôn Dung - Hưng Đạo - Tiên Lữ - Hưng Yên', 9, N'Đang xử lý')
INSERT [dbo].[HoaDons] ([MaHoaDon], [NgayTao], [TongGia], [TenKH], [Diachi], [Email], [SDT], [DiaChiGiaoHang], [MaTaiKhoan], [TrangThai]) VALUES (99, CAST(N'2023-11-28T22:04:00.000' AS DateTime), CAST(2604000 AS Decimal(18, 0)), N'Lưu Đức Quang', N'Tỉnh Cao Bằng | Huyện Bảo Lạc | Xã Cốc Pàng', N'luuquang2003@gmail.com', N'0912313313', N'Thôn Dung - Hưng Đạo - Tiên Lữ - Hưng Yên', 9, N'Đang xử lý')
INSERT [dbo].[HoaDons] ([MaHoaDon], [NgayTao], [TongGia], [TenKH], [Diachi], [Email], [SDT], [DiaChiGiaoHang], [MaTaiKhoan], [TrangThai]) VALUES (100, CAST(N'2023-11-29T22:04:00.000' AS DateTime), CAST(2214000 AS Decimal(18, 0)), N'Lưu Đức Quang', N'Tỉnh Hà Giang | Huyện Quản Bạ | Xã Cao Mã Pờ', N'luuquang2003@gmail.com', N'0912313313', N'Thôn Dung - Hưng Đạo - Tiên Lữ - Hưng Yên', 9, N'Đang xử lý')
INSERT [dbo].[HoaDons] ([MaHoaDon], [NgayTao], [TongGia], [TenKH], [Diachi], [Email], [SDT], [DiaChiGiaoHang], [MaTaiKhoan], [TrangThai]) VALUES (101, CAST(N'2023-11-30T22:04:00.000' AS DateTime), CAST(745000 AS Decimal(18, 0)), N'Lưu Đức Quang', N'Tỉnh Bắc Kạn | Huyện Ba Bể | Xã Phúc Lộc', N'luuquang2003@gmail.com', N'0912313313', N'Thôn Dung - Hưng Đạo - Tiên Lữ - Hưng Yên', 9, N'Đang xử lý')
INSERT [dbo].[HoaDons] ([MaHoaDon], [NgayTao], [TongGia], [TenKH], [Diachi], [Email], [SDT], [DiaChiGiaoHang], [MaTaiKhoan], [TrangThai]) VALUES (102, CAST(N'2023-11-30T22:26:00.000' AS DateTime), CAST(264000 AS Decimal(18, 0)), N'Lưu Đức Quang', N'Vui lòng chọn | Vui lòng chọn | Vui lòng chọn', N'luuquang2003@gmail.com', N'0912313313', N'Thôn Dung - Hưng Đạo - Tiên Lữ - Hưng Yên', 9, N'Huỷ đơn')
INSERT [dbo].[HoaDons] ([MaHoaDon], [NgayTao], [TongGia], [TenKH], [Diachi], [Email], [SDT], [DiaChiGiaoHang], [MaTaiKhoan], [TrangThai]) VALUES (103, CAST(N'2023-12-01T15:34:00.000' AS DateTime), CAST(888000 AS Decimal(18, 0)), N'Lưu Đức Quang', N'Vui lòng chọn | Vui lòng chọn | Vui lòng chọn', N'luuquang2003@gmail.com', N'0912313313', N'Thôn Dung - Hưng Đạo - Tiên Lữ - Hưng Yên', 9, N'Huỷ đơn')
INSERT [dbo].[HoaDons] ([MaHoaDon], [NgayTao], [TongGia], [TenKH], [Diachi], [Email], [SDT], [DiaChiGiaoHang], [MaTaiKhoan], [TrangThai]) VALUES (104, CAST(N'2023-12-01T18:35:00.000' AS DateTime), CAST(476649000 AS Decimal(18, 0)), N'Lưu Đức Quang', N'Vui lòng chọn | Vui lòng chọn | Vui lòng chọn', N'luuquang2003@gmail.com', N'0912313313', N'Thôn Dung - Hưng Đạo - Tiên Lữ - Hưng Yên', 9, N'Huỷ đơn')
SET IDENTITY_INSERT [dbo].[HoaDons] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiTaiKhoans] ON 

INSERT [dbo].[LoaiTaiKhoans] ([MaLoaitaikhoan], [TenLoai], [MoTa]) VALUES (1, N'Nhân viên', N'Nhân viên bán hàng')
INSERT [dbo].[LoaiTaiKhoans] ([MaLoaitaikhoan], [TenLoai], [MoTa]) VALUES (2, N'Khách Hàng', N'Tài khoản người dùng thông thường')
INSERT [dbo].[LoaiTaiKhoans] ([MaLoaitaikhoan], [TenLoai], [MoTa]) VALUES (8, N'Admin', N'Quản trị cả hệ thống')
SET IDENTITY_INSERT [dbo].[LoaiTaiKhoans] OFF
GO
SET IDENTITY_INSERT [dbo].[NhaPhanPhois] ON 

INSERT [dbo].[NhaPhanPhois] ([MaNhaPhanPhoi], [TenNhaPhanPhoi], [DiaChi], [SoDienThoai], [MoTa], [LinkWeb]) VALUES (1, N'
Mỹ Phẩm Chính Hãng Hera Group - Công Ty TNHH Hera Group', N'344 Nguyễn Trọng Tuyển, P. 2, Q. Tân Bình, Tp. Hồ Chí Minh (TPHCM)', N'0977929264', N'.', N'https://www.myphamhera.com')
INSERT [dbo].[NhaPhanPhois] ([MaNhaPhanPhoi], [TenNhaPhanPhoi], [DiaChi], [SoDienThoai], [MoTa], [LinkWeb]) VALUES (2, N'
Công Ty TNHH TM & XNK Beautyful Girl', N'Số 62, Đường 2, KP. Bình Dương 2, An Bình, Dĩ An, Bình Dương', N' 096 56 16 170', N'.', N'https://www.myphamhienluong.com')
INSERT [dbo].[NhaPhanPhois] ([MaNhaPhanPhoi], [TenNhaPhanPhoi], [DiaChi], [SoDienThoai], [MoTa], [LinkWeb]) VALUES (3, N'Mỹ Phẩm SOHERBS - Công Ty TNHH TM DV VSAFE BEAUTY', N'7/1 Thành Thái, P. 12, Q.10, Tp. Hồ Chí Minh (TPHCM)', N'0899 990 986', N'.', N'https://www.soherbs.info')
INSERT [dbo].[NhaPhanPhois] ([MaNhaPhanPhoi], [TenNhaPhanPhoi], [DiaChi], [SoDienThoai], [MoTa], [LinkWeb]) VALUES (4, N'Công Ty TNHH Thương Mại A & P.L.U.S', N' Phòng WT1-3.OT01, Tầng 4, Tháp 1, Cao ốc Wilton Tower 71/3 Nguyễn Văn Thương, F.25, Q. Bình Thạnh Tp. Hồ Chí Minh (TPHCM)', N'0902667038', N'.', N'https://www.apluscosmetics.com.vn')
INSERT [dbo].[NhaPhanPhois] ([MaNhaPhanPhoi], [TenNhaPhanPhoi], [DiaChi], [SoDienThoai], [MoTa], [LinkWeb]) VALUES (8, N'
Siêu Thị Hadaiko - Công Ty TNHH Daikoku Tôi Yêu Đồ Nhật', N'56 Trần Thị Nghỉ, Phường 7, Quận Gò Vấp, Tp. Hồ Chí Minh (TPHCM)', N'081 353 6969', N'HADAIKO - TÔI YÊU ĐỒ NHẬT chuyên nhập khẩu và phân phối các loại mỹ phẩm:
✿ Chăm sóc tóc: Dầu xả, dầu gội, serum dưỡng tóc, thuốc nhuộm,..
✿ Chăm sóc da mặt: Dưỡng da, bộ chăm sóc da, trang điểm, đặc trị mụn, nám
✿ Chăm sóc cơ thể: Dưỡng thể, làm sạch cơ thể, bộ chăm sóc cơ thể', N'https://www.hadaiko.vn')
INSERT [dbo].[NhaPhanPhois] ([MaNhaPhanPhoi], [TenNhaPhanPhoi], [DiaChi], [SoDienThoai], [MoTa], [LinkWeb]) VALUES (9, N'Tổng Đại Lý Công Ty Mỹ Phẩm DR CELL', N'56A/31 Lạc Long Quân, P. 3, Q. 1, Tp. Hồ Chí Minh (TPHCM)', N'0919 852 503', N'DR CELL - BÁC SĨ TẾ BÀO - TÁI SINH LÀN DA HOÀN HẢO ✧✧
Tổng Đại Lý Công Ty Mỹ Phẩm DR CELL hân hạnh giới thiệu bộ sản phẩm cao cấp:
Kem ngày GS III, Kem đêm Collagen, Cao nám Insam, Serum 72H, Men ủ trắng mặt, sữa rửa mặt Fresh, Mặt nạ thạch DNA, DD Cream tone up trái cây,..
Tất cả sản phẩm của DR CELL đều có chứng nhận và phiếu công bố sản phẩm rõ ràng, chúng tôi', N'https://myphamdrcell.com/pages/lien-he')
INSERT [dbo].[NhaPhanPhois] ([MaNhaPhanPhoi], [TenNhaPhanPhoi], [DiaChi], [SoDienThoai], [MoTa], [LinkWeb]) VALUES (10, N'Mỹ Phẩm Duy Khoa - Công Ty TNHH TM XNK Duy Khoa', N'66 Nguyễn Sỹ Sách, Phường 15, Quận Tân Bình, Tp. Hồ Chí Minh (TPHCM)', N'093 887 5939', N'Mỹ Phẩm Duy Khoa - Đơn vị chuyên phân phối Dầu gội và sữa tắm, ủ tóc, hấp dầu, sữa rửa mặt, muối tắm, dưỡng thể nhập khẩu từ Malaysia, Thái Lan,.. gồm:
❀ Muối tắm Carebeau, Spa beauty hương Trái cây, cà phê, cà chua, bột than,..
❀ Sữa tắm Goat milk - Dưỡng thể Carebeau
❀ Hấp tóc, ủ tóc Carebeau sữa dê, mật ong, dừa non, sữa gạo, trứng gà,..', N'https://www.duykhoa.com.vn')
INSERT [dbo].[NhaPhanPhois] ([MaNhaPhanPhoi], [TenNhaPhanPhoi], [DiaChi], [SoDienThoai], [MoTa], [LinkWeb]) VALUES (11, N'
Hóa Mỹ Phẩm Tami Natural Home - Công Ty TNHH Sản Xuất Dược Mỹ Phẩm Tami Natural Home', N'Lô 48, Đường Số 11, Khu Công Nghiệp Tân Đức, Xã Hữu Thạnh, Huyện Đức Hoà, Long An', N'097 859 5487', N'Tami Natural Home chuyên phân phối các dòng mỹ phẩm như: Sữa tắm tinh dầu, sữa rửa mặt tràm trà, xịt chống nắng, kem dưỡng da, serum,..
➙ Sản xuất theo dây chuyền công nghệ Anh Quốc.
➙ Đội ngũ nhân viên làm việc chuyên nghiệp, nhiệt tình luôn sẵn sàng phục vụ.', N'https://www.taminaturalhome.com')
INSERT [dbo].[NhaPhanPhois] ([MaNhaPhanPhoi], [TenNhaPhanPhoi], [DiaChi], [SoDienThoai], [MoTa], [LinkWeb]) VALUES (12, N'
Thiết Bị Spa Domestic Việt Nam - Công Ty TNHH Domestic Việt Nam', N'368 Quang Trung, Hà Đông, Hà Nội', N'0911.450.222', N'Chuyên phân phối Mỹ Phẩm với cam kết:
↝ Sản phẩm nhập khẩu chính hãng từ Hàn Quốc
↝ Giao hàng tận nơi, bảo hành dài hạn.
↝ Đã được chứng nhận FDA Hoa Kỳ, chứng nhận CE Châu Âu.
↝ Là đối tác của các nhãn hiệu spa nổi tiếng trong nước và quốc tế.', N'https://www.maythammyspa.com')
INSERT [dbo].[NhaPhanPhois] ([MaNhaPhanPhoi], [TenNhaPhanPhoi], [DiaChi], [SoDienThoai], [MoTa], [LinkWeb]) VALUES (13, N'
Mỹ Phẩm Chính Hãng Optisay - Công Ty TNHH Optisay', N'1061 Phạm Văn Đồng, P. Linh Tây, TP. Thủ Đức, Tp. Hồ Chí Minh (TPHCM)', N'0903 990 659', N'Công Ty TNHH Optisay chuyên cung cấp mỹ phẩm nhập khẩu chính hãng từ các thương hiệu mỹ phẩm nổi tiếng trên thế giới như: Kiehl`s, Estee Lauder, Obagi, Paula`s Choise, Murad, SkinCeuticals, Zo`s Skin Health, Bioderma, Neutrogena, Cerave,..
Sản phẩm chính: Tẩy trang, sữa rửa mặt, toner, tẩy da chết, mặt nạ, serum, kem đặc trị, kem dưỡng, kem mắt, kem chống nắng.
==>> HOÀN 100% GIÁ TRỊ NẾU SẢN PHẨM KHÔNG CHÍNH HÃNG', N'https://www.optisay.com')
INSERT [dbo].[NhaPhanPhois] ([MaNhaPhanPhoi], [TenNhaPhanPhoi], [DiaChi], [SoDienThoai], [MoTa], [LinkWeb]) VALUES (14, N'Công Ty TNHH TM & XNK Beautiful Girl', N'322 Gò Dầu, Q. Tân Phú, Tp Hồ Chí Minh', N'0965616170', N'.', N'https://www.myphamkoco.com')
INSERT [dbo].[NhaPhanPhois] ([MaNhaPhanPhoi], [TenNhaPhanPhoi], [DiaChi], [SoDienThoai], [MoTa], [LinkWeb]) VALUES (15, N'
Mỹ Phẩm Đài Linh - Công Ty CP XNK TM Đài Linh', N' Phòng 1015, Tòa Nhà Eurowindow, 27 Trần Duy Hưng, Q. Cầu Giấy, Hà Nội', N'(024) 37476789', N'.', N'https://www.myphamthiennhien.com')
INSERT [dbo].[NhaPhanPhois] ([MaNhaPhanPhoi], [TenNhaPhanPhoi], [DiaChi], [SoDienThoai], [MoTa], [LinkWeb]) VALUES (16, N'Công Ty Cổ Phần Phúc Thành Việt Nam', N'Tầng 3, Số 51 Lê Đại Hành, Quận Hai Bà Trưng, Hà Nội', N'(024) 39763357', N'.', N'https://www.donhatxin.vn')
INSERT [dbo].[NhaPhanPhois] ([MaNhaPhanPhoi], [TenNhaPhanPhoi], [DiaChi], [SoDienThoai], [MoTa], [LinkWeb]) VALUES (17, N'
Hóa Mỹ Phẩm Sài Gòn - Công Ty Cổ Phần Mỹ Phẩm Sài Gòn', N' 930 Nguyễn Thị Định, KCN Cát Lái ( cum II ), P. Thạnh Mỹ Lợi, Q.2 Tp. Hồ Chí Minh (TPHCM)', N' (028) 37421104', N'.', N'https://www.saigoncosmetics.com')
INSERT [dbo].[NhaPhanPhois] ([MaNhaPhanPhoi], [TenNhaPhanPhoi], [DiaChi], [SoDienThoai], [MoTa], [LinkWeb]) VALUES (18, N'
Công Ty CP Giải Pháp Sức Khỏe Và Sắc Đẹp Janami', N' 98 Hào Nam, P. Ô Chợ Dừa, Q. Đống Đa, Hà Nội', N'0984602111', N'.', N'https://www.shop.giaicuulanda.vn')
INSERT [dbo].[NhaPhanPhois] ([MaNhaPhanPhoi], [TenNhaPhanPhoi], [DiaChi], [SoDienThoai], [MoTa], [LinkWeb]) VALUES (19, N'
Công Ty Cổ Phần Tập Đoàn Thương Mại Vi Vân', N' Số 172 Phố Nguyễn Lân, P. Phương Liệt, Q. Thanh Xuân, Hà Nội', N' (024) 38538799', N'.', N'https://www.vivangroupjsc.vn')
INSERT [dbo].[NhaPhanPhois] ([MaNhaPhanPhoi], [TenNhaPhanPhoi], [DiaChi], [SoDienThoai], [MoTa], [LinkWeb]) VALUES (20, N'Hộ Kinh Doanh Donkihote Shop', N' A38 – NV16, Ô Số 35, Khu Đô Thị Mới Hai Bên Đường Lê Trọng Tấn, An Khánh, Hoài Đức, Hà Nội', N'0983412687', N'.', N'https://www.donkivn.com')
INSERT [dbo].[NhaPhanPhois] ([MaNhaPhanPhoi], [TenNhaPhanPhoi], [DiaChi], [SoDienThoai], [MoTa], [LinkWeb]) VALUES (21, N'
Rubi.Vn - Công Ty TNHH Rubi Việt Nam', N' 42 Đường số 4, P. 11, Q. Gò Vấp, Tp. Hồ Chí Minh (TPHCM)', N'0983412687', N'.', N'https://www.rubi.vn')
INSERT [dbo].[NhaPhanPhois] ([MaNhaPhanPhoi], [TenNhaPhanPhoi], [DiaChi], [SoDienThoai], [MoTa], [LinkWeb]) VALUES (22, N'
Nhà Phân Phối Kaminomoto Chính Hãng Tại Việt Nam', N' 337/21 Trường Chinh, Phường 14, Quận Tân Bình, Tp. Hồ Chí Minh (TPHCM)', N' 0947494343', N'.', N'https://www.kaminomoto.com.vn')
INSERT [dbo].[NhaPhanPhois] ([MaNhaPhanPhoi], [TenNhaPhanPhoi], [DiaChi], [SoDienThoai], [MoTa], [LinkWeb]) VALUES (23, N'Công Ty TNHH Mỹ Phẩm EV Princess', N' 35 Đường 3/2, P. 11, Q. 10, Tp. Hồ Chí Minh (TPHCM)', N'(028) 38355005', N'.', N'https://www.blmiracle.com.vn')
INSERT [dbo].[NhaPhanPhois] ([MaNhaPhanPhoi], [TenNhaPhanPhoi], [DiaChi], [SoDienThoai], [MoTa], [LinkWeb]) VALUES (24, N'Mỹ Phẩm Hoa Việt - Công Ty TNHH Mỹ Phẩm Hoa Việt', N' 127/2/6 Bình Lợi, P.13, Q. Bình Thạnh, Tp. Hồ Chí Minh', N' 0985049049', N'.', N'http://www.myphamhoaviet.com')
SET IDENTITY_INSERT [dbo].[NhaPhanPhois] OFF
GO
SET IDENTITY_INSERT [dbo].[QuangCaos] ON 

INSERT [dbo].[QuangCaos] ([Id], [AnhDaiDien], [LinkQuangCao], [MoTa]) VALUES (16, N'../img/Poster quảng cáo khai trương.jpg', N'https://www.facebook.com', N'true')
INSERT [dbo].[QuangCaos] ([Id], [AnhDaiDien], [LinkQuangCao], [MoTa]) VALUES (17, N'../img/poster.jpg', N'https://www.facebook.com', N'true')
INSERT [dbo].[QuangCaos] ([Id], [AnhDaiDien], [LinkQuangCao], [MoTa]) VALUES (18, N'../img/poster2.jpg', N'https://www.facebook.com', N'true')
INSERT [dbo].[QuangCaos] ([Id], [AnhDaiDien], [LinkQuangCao], [MoTa]) VALUES (19, N'../img/poster3.jpg', N'https://www.facebook.com', N'false')
INSERT [dbo].[QuangCaos] ([Id], [AnhDaiDien], [LinkQuangCao], [MoTa]) VALUES (20, N'../img/65ppIkbEsTQJ2.jpg', N'https://www.facebook.com', N'false')
INSERT [dbo].[QuangCaos] ([Id], [AnhDaiDien], [LinkQuangCao], [MoTa]) VALUES (21, N'../img/1606717542-poster-my-pham-2.jpg', N'https://www.facebook.com', N'false')
INSERT [dbo].[QuangCaos] ([Id], [AnhDaiDien], [LinkQuangCao], [MoTa]) VALUES (22, N'../img/bannerdoc.jpg', N'https://www.facebook.com', N'true')
INSERT [dbo].[QuangCaos] ([Id], [AnhDaiDien], [LinkQuangCao], [MoTa]) VALUES (23, N'../img/poster-my-pham1.jpg', N'https://www.facebook.com', N'true')
SET IDENTITY_INSERT [dbo].[QuangCaos] OFF
GO
SET IDENTITY_INSERT [dbo].[SanPhams] ON 

INSERT [dbo].[SanPhams] ([MaSanPham], [MaDanhMuc], [Madanhmucuudai], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [TrongLuong], [XuatXu], [LuotBan], [DanhGia]) VALUES (87, 1, 1, N'Gel Rửa Mặt La Roche-Posay Dành Cho Da Dầu, Nhạy Cảm 200ml', N'../img/facebook-dynamic-204900004-1700192522_img_358x358_843626_fit_center.jpg', CAST(360000 AS Decimal(18, 0)), CAST(328000 AS Decimal(18, 0)), 88, 1, 1, N'200ml', N'Paris', 12, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaDanhMuc], [Madanhmucuudai], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [TrongLuong], [XuatXu], [LuotBan], [DanhGia]) VALUES (88, 1, 1, N'Gel Rửa Mặt SVR Không Chứa Xà Phòng Cho Da Dầu 400ml
Sebiaclear Gel Moussant', N'../img/gel-rua-mat-svr-khong-chua-xa-phong-cho-da-dau-400ml-1-1696654299_img_358x358_843626_fit_center.jpg', CAST(480000 AS Decimal(18, 0)), CAST(437000 AS Decimal(18, 0)), 89, 1, 8, N'200ml', N'France', 41, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaDanhMuc], [Madanhmucuudai], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [TrongLuong], [XuatXu], [LuotBan], [DanhGia]) VALUES (89, 1, 1, N'Sữa Rửa Mặt Cetaphil Dịu Lành Cho Da Nhạy Cảm 500ml (Mới)
Gentle Skin Cleanser (New)', N'../img/sua-rua-mat-cetaphil-diu-nhe-khong-xa-phong-500ml-moi-2-1684727435_img_358x358_843626_fit_center.jpg', CAST(345000 AS Decimal(18, 0)), CAST(314000 AS Decimal(18, 0)), 46, 1, 3, N'500ml', N'Canada', 4, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaDanhMuc], [Madanhmucuudai], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [TrongLuong], [XuatXu], [LuotBan], [DanhGia]) VALUES (90, 1, 1, N'Gel Rửa Mặt Cosrx Tràm Trà, 0.5% BHA Có Độ pH Thấp 150ml
Low pH Good Morning Gel Cleanser', N'../img/facebook-dynamic-gel-rua-mat-cosrx-tram-tra-0-5-bha-co-do-ph-thap-150ml-1693822877_img_358x358_843626_fit_center.jpg', CAST(270000 AS Decimal(18, 0)), CAST(246000 AS Decimal(18, 0)), 42, 1, 10, N'150ml', N'Canada', 8, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaDanhMuc], [Madanhmucuudai], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [TrongLuong], [XuatXu], [LuotBan], [DanhGia]) VALUES (91, 1, 1, N'Sữa Rửa Mặt CeraVe Sạch Sâu Cho Da Thường Đến Da Dầu 473ml
Foaming Cleanser', N'../img/promotions-auto-sua-rua-mat-cerave-sach-sau-cho-da-thuong-den-da-dau-473ml_4pksW3LSWtcbKbav_img_358x358_843626_fit_center.png', CAST(525000 AS Decimal(18, 0)), CAST(478000 AS Decimal(18, 0)), 45, 1, 3, N'473ml', N'Canada', 5, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaDanhMuc], [Madanhmucuudai], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [TrongLuong], [XuatXu], [LuotBan], [DanhGia]) VALUES (92, 1, 1, N'Gel Rửa Mặt La Roche-Posay Dành Cho Da Dầu, Nhạy Cảm 400ml', N'../img/gel-rua-mat-la-roche-posay-cho-da-dau-nhay-cam-400ml-1671700144_img_358x358_843626_fit_center.jpg', CAST(420000 AS Decimal(18, 0)), CAST(383000 AS Decimal(18, 0)), 46, 1, 5, N'400ml', N'France', 4, 5)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaDanhMuc], [Madanhmucuudai], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [TrongLuong], [XuatXu], [LuotBan], [DanhGia]) VALUES (93, 1, 1, N'Sữa Rửa Mặt Simple Giúp Da Sạch Thoáng 150ml
Kind To Skin Refreshing Facial Wash Gel', N'../img/gel-rua-mat-danh-cho-da-nhay-cam-simple-150ml-1-1678183280_img_358x358_843626_fit_center.jpg', CAST(120000 AS Decimal(18, 0)), CAST(110000 AS Decimal(18, 0)), 28, 1, 5, N'150ml', N'Poland', 22, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaDanhMuc], [Madanhmucuudai], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [TrongLuong], [XuatXu], [LuotBan], [DanhGia]) VALUES (94, 1, 1, N'Gel Rửa Mặt Simple Thanh Khiết, Giảm Bóng Nhờn 150ml
Purifying Gel Wash', N'../img/sua-rua-mat-simple-kiem-dau-ngua-mun-cho-da-mun-150ml-1-1676456884_img_358x358_843626_fit_center.jpg', CAST(120000 AS Decimal(18, 0)), CAST(110000 AS Decimal(18, 0)), 33, 1, 4, N'150ml', N'Poland', 17, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaDanhMuc], [Madanhmucuudai], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [TrongLuong], [XuatXu], [LuotBan], [DanhGia]) VALUES (95, 1, 1, N'Kem Rửa Mặt Hada Labo Sạch Sâu, Dưỡng Sáng Da 80g
Perfect White T.X.A Cleanser', N'../img/facebook-dynamic-224100008-1700551273_img_358x358_843626_fit_center.png', CAST(165000 AS Decimal(18, 0)), CAST(151000 AS Decimal(18, 0)), 33, 1, 8, N'80g', N'Japan', 17, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaDanhMuc], [Madanhmucuudai], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [TrongLuong], [XuatXu], [LuotBan], [DanhGia]) VALUES (96, 1, 1, N'Gel Rửa Mặt Bioderma Dành Cho Da Dầu & Hỗn Hợp 500ml
Sébium Gel Moussant', N'../img/facebook-dynamic-gel-rua-mat-bioderma-danh-cho-da-dau-hon-hop-500ml-1690273994_img_358x358_843626_fit_center.jpg', CAST(495000 AS Decimal(18, 0)), CAST(451000 AS Decimal(18, 0)), 34, 1, 20, N'500ml', N'France', 16, 5)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaDanhMuc], [Madanhmucuudai], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [TrongLuong], [XuatXu], [LuotBan], [DanhGia]) VALUES (97, 1, 21, N'Sữa Rửa Mặt Vichy Dạng Gel Làm Sạch Sâu & Giảm Nhờn 400ml', N'../img/facebook-dynamic-201600182-1695028665_img_358x358_843626_fit_center.png', CAST(405000 AS Decimal(18, 0)), CAST(369000 AS Decimal(18, 0)), 41, 1, 9, N'400ml', N'France', 9, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaDanhMuc], [Madanhmucuudai], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [TrongLuong], [XuatXu], [LuotBan], [DanhGia]) VALUES (98, 3, 21, N'Nước Hoa Hồng Klairs Không Mùi Cho Da Nhạy Cảm 180ml
Supple Preparation Unscented Toner', N'../img/facebook-dynamic-318900012-1696306376_img_358x358_843626_fit_center.jpg', CAST(285000 AS Decimal(18, 0)), CAST(260000 AS Decimal(18, 0)), 80, 1, 3, N'180ml', N'Korea', 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaDanhMuc], [Madanhmucuudai], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [TrongLuong], [XuatXu], [LuotBan], [DanhGia]) VALUES (99, 3, 21, N'Nước Hoa Hồng Simple Làm Dịu Da & Cấp Ẩm 200ml
Kind to Skin Soothing Facial Toner', N'../img/facebook-dynamic-211300002-1695109099_img_358x358_843626_fit_center.png', CAST(390000 AS Decimal(18, 0)), CAST(355000 AS Decimal(18, 0)), 59, 1, 5, N'200ml', N'Poland', 1, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaDanhMuc], [Madanhmucuudai], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [TrongLuong], [XuatXu], [LuotBan], [DanhGia]) VALUES (100, 3, 21, N'Nước Hoa Hồng Some By Mi AHA-BHA-PHA Cho Da Mụn 150ml
Miracle Toner AHA-BHA-PHA 30 Days', N'../img/facebook-dynamic-nuoc-hoa-hong-some-by-mi-cho-da-mun-150ml-1694839439_img_358x358_843626_fit_center.jpg', CAST(360000 AS Decimal(18, 0)), CAST(328000 AS Decimal(18, 0)), 50, 1, 0, N'150ml', N'Korea', 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaDanhMuc], [Madanhmucuudai], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [TrongLuong], [XuatXu], [LuotBan], [DanhGia]) VALUES (101, 3, 21, N'Nước Hoa Hồng Klairs Dành Cho Da Nhạy Cảm 180ml
Supple Preparation Facial Toner', N'../img/facebook-dynamic-318900011-1696306306_img_358x358_843626_fit_center.jpg', CAST(420000 AS Decimal(18, 0)), CAST(383000 AS Decimal(18, 0)), 49, 1, 2, N'180ml', N'Korea', 1, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaDanhMuc], [Madanhmucuudai], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [TrongLuong], [XuatXu], [LuotBan], [DanhGia]) VALUES (102, 3, 21, N'Nước Hoa Hồng Dr.Pepti Dưỡng Da Căng Bóng 180ml
Centella Toner', N'../img/nuoc-hoa-hong-dr-pepti-duong-da-cang-bong-180ml-3-1651745104_img_358x358_843626_fit_center.jpg', CAST(375000 AS Decimal(18, 0)), CAST(342000 AS Decimal(18, 0)), 60, 1, 1, N'180ml', N'Korea', 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaDanhMuc], [Madanhmucuudai], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [TrongLuong], [XuatXu], [LuotBan], [DanhGia]) VALUES (103, 3, 21, N'Nước Hoa Hồng Bioderma Dành Cho Da Nhạy Cảm 250ml
Sensibio Tonique', N'../img/facebook-dynamic-200400012-1692774853_img_358x358_843626_fit_center.png', CAST(495000 AS Decimal(18, 0)), CAST(451000 AS Decimal(18, 0)), 50, 1, 1, N'250ml', N'France', 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaDanhMuc], [Madanhmucuudai], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [TrongLuong], [XuatXu], [LuotBan], [DanhGia]) VALUES (104, 4, 1, N'Kem Chống Nắng La Roche-Posay Kiểm Soát Dầu SPF50+ 50ml', N'../img/facebook-dynamic-kem-chong-nang-la-roche-posay-kiem-soat-dau-spf50-50ml-phien-ban-moi-1691995076_img_358x358_843626_fit_center.jpg', CAST(480000 AS Decimal(18, 0)), CAST(437000 AS Decimal(18, 0)), 37, 1, 11, N'50ml', N'France', 13, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaDanhMuc], [Madanhmucuudai], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [TrongLuong], [XuatXu], [LuotBan], [DanhGia]) VALUES (105, 4, 21, N'Kem Chống Nắng Skin1004 Cho Da Nhạy Cảm SPF 50+ 50ml
Madagascar Centella Air-Fit Suncream Plus SPF50+ PA++++', N'../img/facebook-dynamic-253900006-1695973833_img_358x358_843626_fit_center.jpg', CAST(465000 AS Decimal(18, 0)), CAST(424000 AS Decimal(18, 0)), 49, 1, 5, N'50ml', N'Korea', 1, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaDanhMuc], [Madanhmucuudai], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [TrongLuong], [XuatXu], [LuotBan], [DanhGia]) VALUES (106, 4, 1, N'Kem Chống Nắng MartiDerm Phổ Rộng Bảo Vệ Toàn Diện 40ml
The Originals Proteos Screen SPF50+ Fluid Cream', N'../img/kem-chong-nang-martiderm-pho-rong-toan-dien-spf50-40ml_1_img_358x358_843626_fit_center.jpg', CAST(465000 AS Decimal(18, 0)), CAST(424000 AS Decimal(18, 0)), 45, 1, 15, N'40ml', N'Spain', 5, 5)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaDanhMuc], [Madanhmucuudai], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [TrongLuong], [XuatXu], [LuotBan], [DanhGia]) VALUES (107, 4, 21, N'Sữa Chống Nắng Anessa Dưỡng Da Kiềm Dầu 60ml
Perfect UV Sunscreen Skincare Milk N SPF50+ PA++++', N'../img/facebook-dynamic-sua-chong-nang-anessa-duong-da-kiem-dau-bao-ve-hoan-hao-60ml-1689836804_img_358x358_843626_fit_center.jpg', CAST(435000 AS Decimal(18, 0)), CAST(396000 AS Decimal(18, 0)), 50, 1, 2, N'60ml', N'Japan', 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaDanhMuc], [Madanhmucuudai], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [TrongLuong], [XuatXu], [LuotBan], [DanhGia]) VALUES (108, 4, 21, N'Kem Chống Nắng Eucerin Cho Da Nhờn & Mụn 50ml
Sun Gel-Creme Oil Control Dry Touch SPF 50+ UVB UVA', N'../img/facebook-dynamic-204100003-1700039895_img_358x358_843626_fit_center.jpg', CAST(480000 AS Decimal(18, 0)), CAST(437000 AS Decimal(18, 0)), 50, 1, 1, N'50ml', N'Germany', 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaDanhMuc], [Madanhmucuudai], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [TrongLuong], [XuatXu], [LuotBan], [DanhGia]) VALUES (109, 5, 21, N'Serum L''Oreal Hyaluronic Acid Cấp Ẩm Sáng Da 30ml
Revitalift Hyaluronic Acid 1.5% Hyaluron Serum', N'../img/facebook-dynamic-422200152-1695796939_img_358x358_843626_fit_center.png', CAST(525000 AS Decimal(18, 0)), CAST(478000 AS Decimal(18, 0)), 50, 1, 2, N'30ml', N'France', 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaDanhMuc], [Madanhmucuudai], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [TrongLuong], [XuatXu], [LuotBan], [DanhGia]) VALUES (110, 5, 21, N'Serum Garnier Giảm Mụn Mờ Thâm Cho Da Dầu, Mụn 30ml
Bright Complete Anti-Acnes Booster Serum', N'../img/facebook-dynamic-422208913-1696227707_img_358x358_843626_fit_center.png', CAST(360000 AS Decimal(18, 0)), CAST(328000 AS Decimal(18, 0)), 30, 1, 5, N'30ml', N'France', 20, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaDanhMuc], [Madanhmucuudai], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [TrongLuong], [XuatXu], [LuotBan], [DanhGia]) VALUES (111, 5, 21, N'Serum GoodnDoc Dưỡng Ẩm, Hỗ Trợ Phục Hồi Da 30ml
Hydra B5 Serum', N'../img/facebook-dynamic-tinh-chat-goodndoc-duong-am-ho-tro-phuc-hoi-da-30ml-1693823891_img_358x358_843626_fit_center.jpg', CAST(555000 AS Decimal(18, 0)), CAST(506000 AS Decimal(18, 0)), 38, 1, 3, N'30ml', N'Korea', 12, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaDanhMuc], [Madanhmucuudai], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [TrongLuong], [XuatXu], [LuotBan], [DanhGia]) VALUES (112, 5, 21, N'Serum oh!oh! Dưỡng Sáng Da, Giảm Thâm Nám 30ml
Skin Health Serum (with 20% Niacinamide & 2% Acetyl Glucosamine)', N'../img/facebook-dynamic-422207844-1695286397_img_358x358_843626_fit_center.png', CAST(780000 AS Decimal(18, 0)), CAST(710000 AS Decimal(18, 0)), 47, 1, 4, N'30ml', N'Korea', 13, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaDanhMuc], [Madanhmucuudai], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [TrongLuong], [XuatXu], [LuotBan], [DanhGia]) VALUES (113, 5, 21, N'Serum L''Oréal Dưỡng Sáng Và Mờ Thâm Nám 30ml
Glycolic-Bright Instant Glowing Serum 1.0% Glycolic Acid', N'../img/facebook-dynamic-422206646-1695784319_img_358x358_843626_fit_center.png', CAST(555000 AS Decimal(18, 0)), CAST(506000 AS Decimal(18, 0)), 48, 1, 4, N'30ml', N'France', 12, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaDanhMuc], [Madanhmucuudai], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [TrongLuong], [XuatXu], [LuotBan], [DanhGia]) VALUES (114, 5, 21, N'Serum Skin1004 Rau Má Giảm Mụn & Phục Hồi Da 100ml
Madagascar Centella Ampoule', N'../img/facebook-dynamic-253900003-1695975260_img_358x358_843626_fit_center.jpg', CAST(900000 AS Decimal(18, 0)), CAST(819000 AS Decimal(18, 0)), 10, 1, 7, N'100ml', N'Korea', 40, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaDanhMuc], [Madanhmucuudai], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [TrongLuong], [XuatXu], [LuotBan], [DanhGia]) VALUES (115, 5, 21, N'Serum La Roche-Posay Giúp Tái Tạo & Phục Hồi Da 30ml
Hyalu B5 Serum', N'../img/facebook-dynamic-204900089-1700120327_img_358x358_843626_fit_center.jpg', CAST(495000 AS Decimal(18, 0)), CAST(451000 AS Decimal(18, 0)), 34, 1, 4, N'30ml', N'France', 16, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaDanhMuc], [Madanhmucuudai], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [TrongLuong], [XuatXu], [LuotBan], [DanhGia]) VALUES (116, 5, 21, N'Serum SVR Làm Giảm Mụn, Mờ Nám, Làm Mềm Mịn Da 30ml
Sebiaclear Serum', N'../img/facebook-dynamic-293500050-1696655002_img_358x358_843626_fit_center.png', CAST(465000 AS Decimal(18, 0)), CAST(424000 AS Decimal(18, 0)), 10, 1, 11, N'30ml', N'France', 40, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaDanhMuc], [Madanhmucuudai], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [TrongLuong], [XuatXu], [LuotBan], [DanhGia]) VALUES (117, 5, 21, N'Serum Klairs Vitamin C Cho Da Nhạy Cảm 35ml
Freshly Juiced Vitamin Drop', N'../img/facebook-dynamic-318900002-1696305461_img_358x358_843626_fit_center.jpg', CAST(405000 AS Decimal(18, 0)), CAST(369000 AS Decimal(18, 0)), 40, 1, 4, N'35ml', N'Korean', 20, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaDanhMuc], [Madanhmucuudai], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [TrongLuong], [XuatXu], [LuotBan], [DanhGia]) VALUES (118, 5, 21, N'Serum Paula''s Choice Se Khít Lỗ Chân Lông Tối Ưu 20ml
Clinical Niacinamide 20% Treatment', N'../img/facebook-dynamic-422203282-1698828362_img_358x358_843626_fit_center.jpg', CAST(900000 AS Decimal(18, 0)), CAST(819000 AS Decimal(18, 0)), 57, 1, 7, N'20ml', N'United States', 13, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaDanhMuc], [Madanhmucuudai], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [TrongLuong], [XuatXu], [LuotBan], [DanhGia]) VALUES (119, 5, 21, N'Serum Vichy Khoáng Phục Hồi Chuyên Sâu 50ml
Mineral 89 Serum', N'../img/facebook-dynamic-201600019-1695022823_img_358x358_843626_fit_center.png', CAST(480000 AS Decimal(18, 0)), CAST(437000 AS Decimal(18, 0)), 49, 1, 5, N'50ml', N'France', 11, 0)
SET IDENTITY_INSERT [dbo].[SanPhams] OFF
GO
INSERT [dbo].[SanPhams_NhaPhanPhois] ([MaSanPham], [MaNhaPhanPhoi]) VALUES (90, 22)
INSERT [dbo].[SanPhams_NhaPhanPhois] ([MaSanPham], [MaNhaPhanPhoi]) VALUES (92, 20)
INSERT [dbo].[SanPhams_NhaPhanPhois] ([MaSanPham], [MaNhaPhanPhoi]) VALUES (93, 20)
INSERT [dbo].[SanPhams_NhaPhanPhois] ([MaSanPham], [MaNhaPhanPhoi]) VALUES (94, 22)
INSERT [dbo].[SanPhams_NhaPhanPhois] ([MaSanPham], [MaNhaPhanPhoi]) VALUES (95, 4)
INSERT [dbo].[SanPhams_NhaPhanPhois] ([MaSanPham], [MaNhaPhanPhoi]) VALUES (98, 1)
INSERT [dbo].[SanPhams_NhaPhanPhois] ([MaSanPham], [MaNhaPhanPhoi]) VALUES (99, 23)
INSERT [dbo].[SanPhams_NhaPhanPhois] ([MaSanPham], [MaNhaPhanPhoi]) VALUES (101, 18)
INSERT [dbo].[SanPhams_NhaPhanPhois] ([MaSanPham], [MaNhaPhanPhoi]) VALUES (102, 2)
INSERT [dbo].[SanPhams_NhaPhanPhois] ([MaSanPham], [MaNhaPhanPhoi]) VALUES (103, 3)
INSERT [dbo].[SanPhams_NhaPhanPhois] ([MaSanPham], [MaNhaPhanPhoi]) VALUES (104, 15)
INSERT [dbo].[SanPhams_NhaPhanPhois] ([MaSanPham], [MaNhaPhanPhoi]) VALUES (105, 2)
INSERT [dbo].[SanPhams_NhaPhanPhois] ([MaSanPham], [MaNhaPhanPhoi]) VALUES (106, 1)
INSERT [dbo].[SanPhams_NhaPhanPhois] ([MaSanPham], [MaNhaPhanPhoi]) VALUES (107, 4)
INSERT [dbo].[SanPhams_NhaPhanPhois] ([MaSanPham], [MaNhaPhanPhoi]) VALUES (108, 1)
INSERT [dbo].[SanPhams_NhaPhanPhois] ([MaSanPham], [MaNhaPhanPhoi]) VALUES (109, 2)
INSERT [dbo].[SanPhams_NhaPhanPhois] ([MaSanPham], [MaNhaPhanPhoi]) VALUES (112, 2)
INSERT [dbo].[SanPhams_NhaPhanPhois] ([MaSanPham], [MaNhaPhanPhoi]) VALUES (116, 1)
INSERT [dbo].[SanPhams_NhaPhanPhois] ([MaSanPham], [MaNhaPhanPhoi]) VALUES (117, 1)
INSERT [dbo].[SanPhams_NhaPhanPhois] ([MaSanPham], [MaNhaPhanPhoi]) VALUES (88, 4)
INSERT [dbo].[SanPhams_NhaPhanPhois] ([MaSanPham], [MaNhaPhanPhoi]) VALUES (89, 16)
INSERT [dbo].[SanPhams_NhaPhanPhois] ([MaSanPham], [MaNhaPhanPhoi]) VALUES (87, 17)
INSERT [dbo].[SanPhams_NhaPhanPhois] ([MaSanPham], [MaNhaPhanPhoi]) VALUES (91, 10)
INSERT [dbo].[SanPhams_NhaPhanPhois] ([MaSanPham], [MaNhaPhanPhoi]) VALUES (96, 1)
INSERT [dbo].[SanPhams_NhaPhanPhois] ([MaSanPham], [MaNhaPhanPhoi]) VALUES (97, 22)
INSERT [dbo].[SanPhams_NhaPhanPhois] ([MaSanPham], [MaNhaPhanPhoi]) VALUES (100, 23)
INSERT [dbo].[SanPhams_NhaPhanPhois] ([MaSanPham], [MaNhaPhanPhoi]) VALUES (110, 1)
INSERT [dbo].[SanPhams_NhaPhanPhois] ([MaSanPham], [MaNhaPhanPhoi]) VALUES (111, 1)
INSERT [dbo].[SanPhams_NhaPhanPhois] ([MaSanPham], [MaNhaPhanPhoi]) VALUES (113, 8)
INSERT [dbo].[SanPhams_NhaPhanPhois] ([MaSanPham], [MaNhaPhanPhoi]) VALUES (114, 9)
INSERT [dbo].[SanPhams_NhaPhanPhois] ([MaSanPham], [MaNhaPhanPhoi]) VALUES (115, 9)
INSERT [dbo].[SanPhams_NhaPhanPhois] ([MaSanPham], [MaNhaPhanPhoi]) VALUES (118, 2)
INSERT [dbo].[SanPhams_NhaPhanPhois] ([MaSanPham], [MaNhaPhanPhoi]) VALUES (119, 2)
GO
SET IDENTITY_INSERT [dbo].[SlideDetail] ON 

INSERT [dbo].[SlideDetail] ([MaAnh], [TieuDe], [MoTa], [LinkAnh]) VALUES (9, N'slider1', N'slider1', N'../img/banner3.jpg')
INSERT [dbo].[SlideDetail] ([MaAnh], [TieuDe], [MoTa], [LinkAnh]) VALUES (10, N'slider2', N'slider2', N'../img/banner1.jpg')
INSERT [dbo].[SlideDetail] ([MaAnh], [TieuDe], [MoTa], [LinkAnh]) VALUES (11, N'slider3', N'slider3', N'../img/banner2.jpg')
INSERT [dbo].[SlideDetail] ([MaAnh], [TieuDe], [MoTa], [LinkAnh]) VALUES (12, N'slider4', N'slider4', N'../img/skincare.png')
INSERT [dbo].[SlideDetail] ([MaAnh], [TieuDe], [MoTa], [LinkAnh]) VALUES (13, N'slider5', N'slider5', N'../img/skincare+banner.jpg')
SET IDENTITY_INSERT [dbo].[SlideDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[TaiKhoans] ON 

INSERT [dbo].[TaiKhoans] ([MaTaiKhoan], [TenTaiKhoan], [MatKhau], [Email]) VALUES (9, N'quang', N'123', N'luuquang2003@gmail.com')
INSERT [dbo].[TaiKhoans] ([MaTaiKhoan], [TenTaiKhoan], [MatKhau], [Email]) VALUES (10, N'user1', N'123', N'luuquang203@gmail.com')
INSERT [dbo].[TaiKhoans] ([MaTaiKhoan], [TenTaiKhoan], [MatKhau], [Email]) VALUES (12, N'user', N'123', N'luuquang23@gmail.com')
INSERT [dbo].[TaiKhoans] ([MaTaiKhoan], [TenTaiKhoan], [MatKhau], [Email]) VALUES (20, N'nguyenbao', N'123', N'nguyenbao@123')
INSERT [dbo].[TaiKhoans] ([MaTaiKhoan], [TenTaiKhoan], [MatKhau], [Email]) VALUES (21, N'tiendat', N'123', N'tiendat@gmail.com')
INSERT [dbo].[TaiKhoans] ([MaTaiKhoan], [TenTaiKhoan], [MatKhau], [Email]) VALUES (22, N'admin', N'admin', N'admin@gmail.com')
INSERT [dbo].[TaiKhoans] ([MaTaiKhoan], [TenTaiKhoan], [MatKhau], [Email]) VALUES (23, N'quanggg', N'quang', N'quang123@gmail.com')
SET IDENTITY_INSERT [dbo].[TaiKhoans] OFF
GO
SET IDENTITY_INSERT [dbo].[TinTucs] ON 

INSERT [dbo].[TinTucs] ([MaTinTuc], [TieuDe], [NoiDung], [HinhAnh], [MaTaiKhoan], [LuotXem], [TrangThai]) VALUES (2, N'Sữa Chống Nắng Anessa Cho Da Nhạy Cảm & Trẻ Em 60ml
Perfect UV Sunscreen Mild Milk (For Sensitive Skin) SPF50+/PA++++', N'<p><strong>Sữa Chống Nắng Anessa Perfect UV Sunscreen Mild Milk SPF50+/ PA++++</strong>&nbsp;là dòng <a href="https://hasaki.vn/danh-muc/san-pham-chong-nang-c1871.html"><strong>sản phẩm chống nắng</strong></a> đến từ&nbsp;<a href="https://hasaki.vn/thuong-hieu/anessa.html"><strong>thương hiệu Anessa</strong></a>&nbsp;(thuộc tập đoàn Shiseido) - thương hiệu chống nắng được yêu thích hàng đầu tại Nhật Bản trong suốt 20 năm liền. Sản phẩm&nbsp;giúp bảo vệ da tối ưu với kết cấu mỏng nhẹ và thành phần 5 Không (không màu, không mùi, không cồn, không dầu khoáng và không paraben), phù hợp cho cả da nhạy cảm và da trẻ em từ 1 tuổi. Đặc biệt, công thức chứa&nbsp;50% thành phần dưỡng da giúp bảo vệ da khỏi thương tổn do tia UV và hạt siêu vi trong không khí.</p><p><strong>Sữa Chống Nắng Dưỡng Da Dịu Nhẹ Cho Da Nhạy Cảm &amp; Trẻ Em&nbsp;Anessa Perfect UV Sunscreen Mild Milk SPF50+/ PA++++</strong> đang có mặt tại&nbsp;<a href="https://hasaki.vn/"><strong>Hasaki</strong></a>&nbsp;với 3 quy cách đóng gói: <strong>20ml</strong>;&nbsp;<strong>60ml; 60mlx2</strong></p><p><strong>Lưu ý: </strong>Sữa Chống Nắng&nbsp;Perfect UV Sunscreen Mild Milk tại<strong>&nbsp;Hasaki đang bán song song cả 2 mẫu cũ và mới.</strong></p><p>&nbsp;</p><p><img src="https://media.hcdn.vn/wysiwyg/kimhuy/sua-chong-nang-anessa-duong-da-diu-nhe-cho-da-nhay-cam-tre-em-spf50-pa-60ml.jpg" alt="Sữa Chống Nắng Anessa Cho Da Nhạy Cảm &amp; Trẻ Em 60ml" width="800" height="800"></p><p>&nbsp;</p><p><img src="https://media.hcdn.vn/wysiwyg/HaNguyen/sua-chong-nang-anessa-cho-da-nhay-cam-tre-em-60ml_mau-moi-2021-1.jpg" alt="Sữa Chống Nắng Anessa Cho Da Nhạy Cảm &amp; Trẻ Em 60ml" width="800"></p><p>&nbsp;</p><p><img src="https://media.hcdn.vn/wysiwyg/HaNguyen/sua-chong-nang-anessa-cho-da-nhay-cam-tre-em-60ml_mau-moi-2021-2.jpg" alt="Mua Sữa Chống Nắng Anessa Cho Da Nhạy Cảm &amp; Trẻ Em 60ml" width="800"></p><p>&nbsp;</p><p><img src="https://media.hcdn.vn/wysiwyg/HaNguyen/sua-chong-nang-anessa-cho-da-nhay-cam-tre-em-60ml_mau-moi-2021-3.jpg" alt="Sữa Chống Nắng Anessa Cho Da Nhạy Cảm &amp; Trẻ Em 60ml Tại Hasaki" width="800"></p><p>&nbsp;</p><figure class="image"><img src="https://media.hcdn.vn/wysiwyg/HaNguyen/sua-chong-nang-anessa-cho-da-nhay-cam-tre-em-60ml_mau-moi-2021-4.jpg" alt="Sữa Chống Nắng Anessa Cho Da Nhạy Cảm &amp; Trẻ Em 60ml Có Tại Hasaki" width="800"></figure><p>&nbsp;</p><h2>Loại da phù hợp:</h2><p>Phù hợp mọi loại da.&nbsp;</p><p>Thích hợp sử dụng hàng ngày và trong các hoạt động ngoài trời.&nbsp;</p><p>Được kiểm định bởi chuyên gia da liễu.</p><p>Dịu nhẹ cho da nhạy cảm và trẻ em.</p>', N'../img/5.webp', 22, 2, N'Hiện')
INSERT [dbo].[TinTucs] ([MaTinTuc], [TieuDe], [NoiDung], [HinhAnh], [MaTaiKhoan], [LuotXem], [TrangThai]) VALUES (3, N'Kem chống nắng giúp bảo vệ da khỏi tia UVB & UVA', N'<p><strong>Kem chống nắng giúp bảo vệ da khỏi tia UVB &amp; UVA dài và giảm bóng nhờn La Roche-Posay Anthelios UV Mune 400 Oil Control Gel-Cream 50ml</strong> là kem chống nắng dành cho da dầu phiên bản công thức cải tiến mới đến từ&nbsp;<a href="https://hasaki.vn/thuong-hieu/la-roche-posay.html"><strong>thương hiệu dược mỹ phẩm&nbsp;La Roche-Posay</strong></a>,&nbsp;giúp kiểm soát bóng nhờn và bảo vệ da trước tác hại từ ánh nắng &amp; ô nhiễm, ngăn chặn các tác nhân gây lão hóa sớm. Sản phẩm có công thức chống thấm nước thích hợp dùng hằng ngày và cả những hoạt động ngoài trời.</p><p>Tia UVA dài được mệnh danh là kẻ thù nguy hiểm nhất với làn da, bởi bước sóng lên đến 380nm-400nm, làm tổn thương những tế bào sâu dưới da. Với cường độ mạnh vào mùa hè, tia UVA dài sẽ gây ra những tác hại lâu dài như thâm nám, lão hóa da.</p><p>Thấu hiệu được nhu cầu tìm kiếm sản phẩm chống nắng có khả năng bảo vệ da trước tác hại của tia UVA dài, thương hiệu La Roche-Posay đã cho ra đời phiên bản <strong>UVMune 400 Oil Control Gel Cream</strong> -&nbsp;kem chống nắng có màng lọc tiên tiến nhất thị trường Mexoryl 400.&nbsp;Kết hợp cùng công nghệ Netlock tạo nên lớp lá chắn bền vững giúp bảo vệ da khỏi tia UVA dài nguy hiểm gây thâm nám.</p><p>Bên cạnh đó,&nbsp;<strong>kem chống nắng&nbsp;La Roche-Posay&nbsp;UVMune 400 Oil Control Gel Cream phiên bản mới&nbsp;</strong>được cải tiến với&nbsp;nồng độ phần trăm hoạt chất Airlicium được tăng lên, mang đến hiệu quả kiềm dầu tốt hơn đến 12h. Ngoài ra, sản phẩm còn có&nbsp;kết cấu mới dễ tán, thấm nhanh không gây vón, mang lại cho bạn một lớp finish mịn lì và bóng khỏe tự nhiên.</p><p>Hiện tại, <a href="https://hasaki.vn/"><strong>Hasaki</strong></a> đang bán song song cả 2 phiên bản mới và cũ của kem chống nắng&nbsp;<strong>La Roche-Posay </strong>như sau:</p><p><strong>La Roche-Posay&nbsp;Anthelios UV Mune 400 Oil Control Gel-Cream:</strong> phiên bản mới cải tiến.</p><p>&nbsp;</p><p><img src="https://media.hcdn.vn/wysiwyg/HaNguyen3/kem-chong-nang-la-roche-posay-kiem-soat-dau-spf50-50ml-1.jpg" alt="Kem chống nắng La Roche-Posay Anthelios UV Mune 400 Oil Control Gel-Cream phiên bản mới" width="800"></p><p>&nbsp;</p><p><strong>La Roche-Posay Anthelios Dry Touch Finish Mattifying Effect:&nbsp;</strong>phiên bản cũ, bao gồm hai mẫu bao bì tiếng Đức và Ý.</p>', N'../img/facebook-dynamic-kem-chong-nang-la-roche-posay-kiem-soat-dau-spf50-50ml-phien-ban-moi-1691995076_img_358x358_843626_fit_center.jpg', 22, 2, N'Hiện')
INSERT [dbo].[TinTucs] ([MaTinTuc], [TieuDe], [NoiDung], [HinhAnh], [MaTaiKhoan], [LuotXem], [TrangThai]) VALUES (4, N'Nước Tẩy Trang L''Oreal Tươi Mát Cho Da Dầu, Hỗn Hợp', N'<p><strong>Nước Tẩy Trang L''Oréal</strong>&nbsp;là dòng sản phẩm <a href="https://hasaki.vn/danh-muc/tay-trang-c37.html"><strong>tẩy trang</strong></a>&nbsp;dạng nước đến từ<a href="https://hasaki.vn/thuong-hieu/l-oreal.html"><strong> thương hiệu L''Oreal Paris</strong></a>, được ứng dụng công nghệ Micellar dịu nhẹ giúp làm sạch da, lấy đi bụi bẩn, dầu thừa và cặn trang điểm chỉ trong một bước, mang lại làn da thông thoáng, mềm mượt mà không hề khô căng.</p><p>&nbsp;</p><p><img src="https://media.hasaki.vn/wysiwyg/nhphuong/PhuongSmall/nuoc-tay-trang-l-oreal-3-in-1.jpg" alt="Nước Tẩy Trang L''Oreal Micellar Water 3-In-1" width="800" height="438"></p><p>&nbsp;</p><p><img src="https://media.hasaki.vn/wysiwyg/HaNguyen/nuoc-tay-trang-l-oreal-3-in-1-6.jpg" alt="Nước Tẩy Trang L''Oreal Micellar Water 3-In-1 ứng dụng công nghệ Micellar mới chứa các phân tử mi-xen độc đáo hoạt động như một thỏi nam châm giúp loại bỏ hoàn toàn bụi bẩn và lớp trang điểm" width="800"></p><p>&nbsp;</p><p>Dòng sản phẩm&nbsp;<strong>Nước Tẩy Trang L''Oréal Paris&nbsp;</strong>hiện đã có mặt tại<strong>&nbsp;</strong><a href="https://hasaki.vn/"><strong>Hasaki</strong></a><strong>&nbsp;</strong>với 5 phân loại phù hợp cho từng nhu cầu khác nhau cho bạn lựa chọn:</p><p><strong>L''Oréal Paris&nbsp;Micellar Water 3-in-1 Refreshing Even For Sensitive Skin&nbsp;(Xanh dương nhạt): </strong>Giúp làm sạch lớp trang điểm và làm tươi mát da.&nbsp;Dành cho da dầu/da hỗn hợp. Phù hợp với cả da nhạy cảm.</p><p><strong>L''Oréal Paris&nbsp;Micellar Water 3-in-1 Moisturizing Even For Sensitive Skin (Hồng):</strong>&nbsp;Giúp làm sạch lớp trang điểm và dưỡng ẩm da.&nbsp;Dành cho da thường/da khô. Phù hợp với cả da nhạy cảm.&nbsp;</p><p><strong>L''Oréal Paris&nbsp;Micellar Water 3-in-1 Deep Cleansing Even For Sensitive Skin (Xanh dương đậm):</strong>&nbsp;Có hai lớp chất lỏng giúp hòa tan chất bẩn và loại bỏ toàn bộ lớp trang điểm hiệu quả, kể cả lớp trang điểm lâu trôi và không thấm nước chỉ trong một bước.</p><p><strong>L''Oréal Paris&nbsp;Revitalift Crystal Purifying Micellar Water (Trắng):&nbsp;</strong>Làm sạch sâu lỗ chân lông và&nbsp;kiềm dầu cho làn da sáng mịn rạng rỡ. Dành cho da dầu.</p><p><strong>L''Oreal Paris Revitalift Hyaluronic Acid Hydrating Micellar Water (Tím):</strong>&nbsp;Làm sạch và cấp ẩm cho làn da căng mịn từ bên trong. Dành cho&nbsp;da khô &amp; hỗn hợp.</p>', N'../img/loreal xanh nhat.jpg', 22, 0, N'Hiện')
INSERT [dbo].[TinTucs] ([MaTinTuc], [TieuDe], [NoiDung], [HinhAnh], [MaTaiKhoan], [LuotXem], [TrangThai]) VALUES (5, N'Nước Tẩy Trang Bioderma Dành Cho Da Dầu & Hỗn Hợp', N'<p><strong>Nước Tẩy Trang Bioderma Sébium H2O</strong>&nbsp;là sản phẩm <a href="https://hasaki.vn/danh-muc/tay-trang-c37.html"><strong>tẩy trang</strong></a> dành cho da dầu, da hỗn hợp đến từ <a href="https://hasaki.vn/thuong-hieu/bioderma.html"><strong>thương hiệu dược mỹ phẩm Bioderma</strong></a>, được ứng dụng công nghệ Micellar đình đám giúp loại bỏ lớp trang điểm cùng bụi bẩn và dầu thừa trên da hiệu quả mà không gây khô căng hay nhờn rít, tạo cảm giác thông thoáng cho da sau một ngày dài mệt mỏi.</p><p>&nbsp;</p><p><img src="https://media.hcdn.vn/wysiwyg/HaNguyen/nuoc-tay-trang-bioderma-danh-cho-da-dau-hon-hop-01.jpg" alt="Nước Tẩy Trang Bioderma Dành Cho Da Dầu &amp; Hỗn Hợp" width="800"></p><p>&nbsp;</p><p>Da hỗn hợp đến <a href="https://hasaki.vn/danh-muc/da-dau-c90.html"><strong>da dầu</strong></a> có lượng bã nhờn dư thừa tập trung ở vùng chữ T (da hỗn hợp) hoặc trên toàn bộ khuôn mặt (da dầu). Các dấu hiệu lâm sàng đi kèm với loại da này là tình trạng bóng dầu, da xỉn màu và lỗ chân lông to. Đôi khi còn có thể xuất hiện mụn trứng cá hoặc mụn đầu đen. Nếu những dấu hiệu này cứ liên tục tái phát, da được coi là có xu hướng dễ bị mụn.</p><p><strong>Nước Tẩy Trang Bioderma Sébium H2O&nbsp;</strong>được bào chế chuyên biệt dành cho làn da dầu &amp; hỗn hợp, có khả năng "bắt chước" các thành phần tự nhiên của làn da để loại bỏ lớp trang điểm một cách tối ưu nhất, trong khi vẫn duy trì được độ cân bằng pH và độ ẩm tự nhiên của da, bảo đảm an toàn cho kể cả những làn da nhạy cảm nhất.</p><p>&nbsp;</p><p><img src="https://media.hcdn.vn/wysiwyg/HaNguyen/nuoc-tay-trang-bioderma-danh-cho-da-dau-hon-hop-02.jpg" alt="Nước Tẩy Trang Bioderma Dành Cho Da Dầu &amp; Hỗn Hợp Tại Hasaki" width="800"></p><p>&nbsp;</p><p>Đặc biệt, công nghệ Micellar Water sử dụng các hạt phân tử mi-xen với 2 đầu ưa dầu - nước, giúp&nbsp;hút hết bã nhờn, bụi bẩn của da, <a href="https://hasaki.vn/"><strong>mỹ phẩm</strong></a> trang điểm và ô nhiễm không khí bám lại trên da sau một ngày dài mà không hề để lại cảm giác bóng nhờn, dính rít như nhiều loại nước tẩy trang thông thường khác.</p><p>Bên cạnh đó, Sébium H2O còn được làm giàu thêm với các hoạt chất thanh lọc làn da, kẽm gluconate và đồng sunfat giúp làm sạch sâu và loại bỏ bã nhờn, hạn chế lượng dầu thừa tiết ra, mang lại làn da thông thoáng sạch mịn.</p>', N'../img/bioderma hong.jpg', 22, 6, N'Hiện')
INSERT [dbo].[TinTucs] ([MaTinTuc], [TieuDe], [NoiDung], [HinhAnh], [MaTaiKhoan], [LuotXem], [TrangThai]) VALUES (6, N'Nước Tẩy Trang Garnier Dành Cho Da Dầu Và Mụn', N'<p><strong>Nước Tẩy Trang&nbsp;Garnier Micellar Cleansing Water&nbsp;</strong>là dòng sản phẩm <a href="https://hasaki.vn/danh-muc/tay-trang-c37.html"><strong>tẩy trang</strong></a>&nbsp;nổi tiếng đến từ <a href="https://hasaki.vn/thuong-hieu/garnier.html"><strong>thương hiệu Garnier</strong></a> của Pháp, sử dụng công nghệ Micelles (Micellar Technology) có chứa các phân tử mi-xen hoạt động theo cơ chế nam châm giúp nhẹ nhàng <a href="https://hasaki.vn/danh-muc/lam-sach-c1855.html"><strong>làm sạch da</strong></a> và lấy đi bụi bẩn, cặn&nbsp;trang điểm và dầu thừa sâu bên trong lỗ chân lông mà không gây khô da.</p><p><img src="https://media.hcdn.vn/wysiwyg/HaNguyen1/nuoc-tay-trang-garnier-1.jpg" alt="Nước Tẩy Trang Garnier Làm Sạch Sâu Lớp Trang Điểm" width="800"></p><p>&nbsp;&nbsp;</p><p><strong>Nước Làm Sạch Và Tẩy Trang Cho Mọi Loại Da Garnier Micellar Cleansing Water 400ml</strong> hiện đã có mặt tại <a href="https://hasaki.vn/"><strong>Hasaki</strong></a> với 4 phân loại dành cho từng vấn đề da riêng biệt:</p><p><strong>Nước Tẩy Trang Garnier&nbsp;Micellar Oil Infused Cleansing Water 400ml:&nbsp;</strong>dành cho da trang điểm, giúp làm sạch sâu da.</p><p><strong>Nước Tẩy Trang Garnier Micellar Cleansing Water Vitamin C&nbsp;400ml:&nbsp;</strong>dành cho da sạm màu,&nbsp;giúp làm sáng da, hỗ trợ mờ thâm nám.</p><p><strong>Nước Tẩy Trang Garnier&nbsp;Micellar Cleansing Water For Oily &amp; Acne-Prone Skin&nbsp;400ml:&nbsp;</strong>dành cho da dầu &amp; mụn.</p><p><strong>Nước Tẩy Trang Garnier&nbsp;Micellar Cleansing Water For Sensitive Skin&nbsp;400ml:&nbsp;</strong>dành cho da nhạy cảm.</p>', N'../img/facebook-dynamic-211300002-1695109099_img_358x358_843626_fit_center.png', 22, 4, N'Hiện')
INSERT [dbo].[TinTucs] ([MaTinTuc], [TieuDe], [NoiDung], [HinhAnh], [MaTaiKhoan], [LuotXem], [TrangThai]) VALUES (7, N'Nước Tẩy Trang Bioderma Dành Cho Da Nhạy Cảm', N'<p><strong>Nước Tẩy Trang Dành Cho Da Nhạy Cảm&nbsp;Bioderma&nbsp;Sensibio H2O</strong>&nbsp;là sản phẩm <i><strong>nước tẩy trang công nghệ Micellar đầu tiên trên thế giới</strong></i>, do thương hiệu <a href="https://hasaki.vn/thuong-hieu/bioderma.html"><strong>dược mỹ phẩm Bioderma</strong></a> nổi tiếng của Pháp phát minh.&nbsp;Dung dịch giúp làm sạch sâu da và loại bỏ lớp trang điểm nhanh chóng mà không cần rửa lại bằng nước. Công thức dịu nhẹ, không kích ứng, không gây khô căng da, đặc biệt phù hợp với làn da nhạy cảm.</p><p>&nbsp;</p><p><img src="https://media.hcdn.vn/wysiwyg/HaNguyen/nuoc-tay-trang-bioderma-danh-cho-da-nhay-cam-1_1.jpg" alt="Nước Tẩy Trang Bioderma Dành Cho Da Nhạy Cảm" width="800"></p><p>&nbsp;</p><p><a href="https://hasaki.vn/danh-muc/da-nhay-cam-c20.html"><strong>Da nhạy cảm</strong></a> đến da không dung nạp không thể thực hiện vai trò của mình như một hàng rào bảo vệ chống lại các tác nhân gây kích ứng. Lớp trang điểm, việc tẩy trang, sự ô nhiễm, các tác động từ bên ngoài khiến làn da bị yếu đi và trở nên khô căng ngày này qua ngày khác. Da nhạy cảm biểu hiện thông qua cảm giác nóng, khó chịu và mẩn đỏ lan rộng hoặc cục bộ. Da dễ bị mất nước và tình trạng da khô kéo dài sẽ tự động duy trì độ mỏng manh của làn da, dẫn đến cảm giác khô căng khó chịu. Tình trạng da nhạy cảm quá mức có thể chỉ xảy ra tạm thời hoặc vĩnh viễn.</p><p>Công nghệ micellar sử dụng các hạt micelles "thần kì" tương thích hoàn hảo với lớp lipid tự nhiên của da.&nbsp;Yếu tố cấu thành nên hạt micelle là các ester acid béo, tương tự như cấu trúc lớp phospholipid của màng tế bào da, giúp tái tạo lớp màng hydrolipid của da một cách tự nhiên. Nhờ vào cấu trúc này, các hạt micelle sẽ&nbsp;giúp lấy đi các yếu tố có hại cho làn da như:</p><p>98% bụi siêu mịn khỏi bề mặt da và sâu bên trong lỗ chân lông</p><p>78% kim loại nặng và độc tố gây hại</p><p>99% lớp trang điểm sâu bên trong</p><p>&nbsp;</p><p><img src="https://media.hcdn.vn/wysiwyg/HaNguyen/nuoc-tay-trang-bioderma-danh-cho-da-nhay-cam-3_1.jpg" alt="Mua Nước Tẩy Trang Bioderma Dành Cho Da Nhạy Cảm" width="800"></p><p>&nbsp;</p><p>Sensibio H2O được bào chế với độ pH sinh lý khoảng 5.5 tương tự như độ pH của làn da, do đó giúp nâng niu sự cân bằng về mặt sinh học - điều cần thiết để duy trì làn da khỏe mạnh. Bên cạnh đó, sản phẩm&nbsp;chứa thành phần nước tinh khiết, đạt chuẩn dược phẩm và một hợp chất bao gồm 3 loại đường mô phỏng sinh học có công dụng làm dịu và ngăn ngừa các phản ứng viêm.&nbsp;Việc lựa chọn cẩn thận các thành phần đảm bảo khả năng dung nạp hoàn hảo và loại bỏ bất kỳ nguy cơ gây tổn thương da nào của sản phẩm.</p><p>&nbsp;</p><p><img src="https://media.hcdn.vn/wysiwyg/HaNguyen/nuoc-tay-trang-bioderma-danh-cho-da-nhay-cam-2_1.jpg" alt="Sản Phẩm Nước Tẩy Trang Bioderma Dành Cho Da Nhạy Cảm" width="800"></p><p>&nbsp;</p><p>Không chỉ sử dụng để tẩy trang vào buổi tối, bạn còn có thể sử dụng&nbsp;Bioderma&nbsp;Sensibio H2O&nbsp;như bước&nbsp;làm sạch sâu dịu nhẹ cho da vào buổi sáng, giúp loại bỏ bã nhờn và bụi bẩn tích tụ trên da sau một đêm dài.&nbsp;</p><p><strong>Nước Tẩy Trang Dành Cho Da Nhạy Cảm&nbsp;Bioderma&nbsp;Sensibio H2O</strong> hiện đã có mặt tại <strong>Hasaki</strong> với các loại cho bạn lựa chọn:</p><p><strong>100ml</strong></p><p><strong>250ml</strong></p><p><strong>500ml</strong></p><p><strong>2x500ml</strong></p><p><br>&nbsp;</p>', N'../img/facebook-dynamic-200400012-1692774853_img_358x358_843626_fit_center.png', 22, 4, N'Hiện')
SET IDENTITY_INSERT [dbo].[TinTucs] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UC_TenTaiKhoan]    Script Date: 19/3/2024 9:42:25 AM ******/
ALTER TABLE [dbo].[TaiKhoans] ADD  CONSTRAINT [UC_TenTaiKhoan] UNIQUE NONCLUSTERED 
(
	[TenTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SanPhams] ADD  DEFAULT ((0)) FOR [GiaGiam]
GO
ALTER TABLE [dbo].[SanPhams] ADD  DEFAULT ((0)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[SanPhams] ADD  DEFAULT ((0)) FOR [LuotXem]
GO
ALTER TABLE [dbo].[SanPhams] ADD  DEFAULT ((0)) FOR [LuotBan]
GO
ALTER TABLE [dbo].[SanPhams] ADD  DEFAULT ((0)) FOR [DanhGia]
GO
ALTER TABLE [dbo].[TinTucs] ADD  DEFAULT ((0)) FOR [LuotXem]
GO
ALTER TABLE [dbo].[AnhSanPhams]  WITH CHECK ADD FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPhams] ([MaSanPham])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietHoaDonNhaps]  WITH CHECK ADD FOREIGN KEY([MaHoaDon])
REFERENCES [dbo].[HoaDonNhaps] ([MaHoaDon])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietHoaDonNhaps]  WITH CHECK ADD FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPhams] ([MaSanPham])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietHoaDons]  WITH CHECK ADD FOREIGN KEY([MaHoaDon])
REFERENCES [dbo].[HoaDons] ([MaHoaDon])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietHoaDons]  WITH CHECK ADD FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPhams] ([MaSanPham])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietSanPhams]  WITH CHECK ADD FOREIGN KEY([MaNhaSanXuat])
REFERENCES [dbo].[HangSanXuats] ([MaNhaSanXuat])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietSanPhams]  WITH CHECK ADD FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPhams] ([MaSanPham])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietTaiKhoans]  WITH CHECK ADD FOREIGN KEY([MaLoaitaikhoan])
REFERENCES [dbo].[LoaiTaiKhoans] ([MaLoaitaikhoan])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietTaiKhoans]  WITH CHECK ADD FOREIGN KEY([MaTaiKhoan])
REFERENCES [dbo].[TaiKhoans] ([MaTaiKhoan])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DanhGia]  WITH CHECK ADD FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPhams] ([MaSanPham])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DanhGia]  WITH CHECK ADD FOREIGN KEY([MaTaiKhoan])
REFERENCES [dbo].[TaiKhoans] ([MaTaiKhoan])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HoaDonNhaps]  WITH CHECK ADD FOREIGN KEY([MaNhaPhanPhoi])
REFERENCES [dbo].[NhaPhanPhois] ([MaNhaPhanPhoi])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HoaDonNhaps]  WITH CHECK ADD FOREIGN KEY([MaTaiKhoan])
REFERENCES [dbo].[TaiKhoans] ([MaTaiKhoan])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HoaDons]  WITH CHECK ADD FOREIGN KEY([MaTaiKhoan])
REFERENCES [dbo].[TaiKhoans] ([MaTaiKhoan])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SanPhams]  WITH CHECK ADD FOREIGN KEY([MaDanhMuc])
REFERENCES [dbo].[DanhMucs] ([MaDanhMuc])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SanPhams]  WITH CHECK ADD FOREIGN KEY([Madanhmucuudai])
REFERENCES [dbo].[DanhMucUudais] ([Madanhmucuudai])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SanPhams_NhaPhanPhois]  WITH CHECK ADD FOREIGN KEY([MaNhaPhanPhoi])
REFERENCES [dbo].[NhaPhanPhois] ([MaNhaPhanPhoi])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SanPhams_NhaPhanPhois]  WITH CHECK ADD FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPhams] ([MaSanPham])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TinTucs]  WITH CHECK ADD FOREIGN KEY([MaTaiKhoan])
REFERENCES [dbo].[TaiKhoans] ([MaTaiKhoan])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
/****** Object:  StoredProcedure [dbo].[getbyidhoadon]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[getbyidhoadon](@MaHoaDon int)
as
begin
	select h.MaHoaDon,
							  c.MaSanPham,
                              s.TenSanPham,
							  c.SoLuong,
							  c.TongGia
                        FROM HoaDons AS h
						inner join ChiTietHoaDons c on c.MaHoaDon = h.MaHoaDon
						inner join SanPhams s on s.MaSanPham = c.MaSanPham
	where h.MaHoaDon = @MaHoaDon
	order by h.MaHoaDon DESC
end
GO
/****** Object:  StoredProcedure [dbo].[sp_create_danh_gia]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_create_danh_gia](@MaSanPham int,
								@MaTaiKhoan int,
								@ChatLuong float,
								@NoiDung nvarchar(max),
								@TrangThai bit,
								@ThoiGian datetime,
								@AnhDanhGia nvarchar(max),
								@GhiChu nvarchar(max))
as
begin
	insert into DanhGia(MaSanPham,MaTaiKhoan,ChatLuong,NoiDung,TrangThai,ThoiGian,AnhDanhGia,GhiChu)
	values(@MaSanPham,@MaTaiKhoan,@ChatLuong,@NoiDung,@TrangThai,@ThoiGian,@AnhDanhGia,@GhiChu)
	update SanPhams
	set DanhGia = CASE
                    WHEN DanhGia = 0 THEN @ChatLuong
                    ELSE (DanhGia + @ChatLuong) / 2
                 END
	where MaSanPham = @MaSanPham
end
GO
/****** Object:  StoredProcedure [dbo].[sp_create_hoadon]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_create_hoadon](
@TrangThai nvarchar(50),
@TongGia decimal(18,0),
@TenKH nvarchar(50),
@Diachi nvarchar(250),
@Email nvarchar(50),
@SDT nvarchar(50),
@DiaChiGiaoHang nvarchar(350),
@MaTaiKhoan int,
@list_json_chitiet_hoadon NVARCHAR(MAX)
)
as
BEGIN
		DECLARE @MaHoaDon INT;
		BEGIN
			INSERT INTO HoaDons
					(TrangThai,
					TongGia ,
					TenKH ,
					Diachi ,
					Email ,
					SDT ,
					DiaChiGiaoHang,
					MaTaiKhoan
					)
					VALUES
					(@TrangThai,
					@TongGia ,
					@TenKH ,
					@Diachi ,
					@Email ,
					@SDT ,
					@DiaChiGiaoHang,
					@MaTaiKhoan
					);

					SET @MaHoaDon = (SELECT SCOPE_IDENTITY());
					IF(@list_json_chitiet_hoadon IS NOT NULL)

						BEGIN
							DECLARE @Result1 TABLE
							(
								MaSanPham INT,
								SoLuong INT,
								DonGia DECIMAL(18, 0),
								TongGia DECIMAL(18, 0)
							);

							INSERT INTO @Result1
							(
								MaSanPham,
								SoLuong,
								DonGia,
								TongGia
							)
							SELECT
								JSON_VALUE(y.value, '$.maSanPham') as MaSanPham,
								JSON_VALUE(y.value, '$.soLuong') as SoLuong,
								JSON_VALUE(y.value, '$.donGia') as DonGia,
								JSON_VALUE(y.value, '$.tongGia') as TongGia
							FROM OPENJSON(@list_json_chitiet_hoadon) AS y;

							Insert into ChiTietHoaDons(
										 MaHoaDon,
										 MaSanPham,
										 SoLuong,
										 DonGia,
										 TongGia)
							select @MaHoaDon,
									MaSanPham,
									SoLuong,
									DonGia,
									TongGia
							from @Result1

							UPDATE sp
							SET sp.SoLuong = sp.SoLuong - r.SoLuong,
								sp.LuotBan = sp.LuotBan + r.SoLuong
							FROM SanPhams sp
							JOIN @Result1 r ON sp.MaSanPham = r.MaSanPham;

						END;
			END


        SELECT '';
    END;
GO
/****** Object:  StoredProcedure [dbo].[sp_create_hoadon_nhap]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_create_hoadon_nhap](
@MaNhaPhanPhoi int,
@KieuThanhToan nvarchar(MAX),
@TongTien DECIMAL(18, 0),
@MaTaiKhoan int,
@list_json_chitiethoadonnhap NVARCHAR(MAX)
)
as
BEGIN
		DECLARE @MaHoaDon INT;
		BEGIN
			INSERT INTO HoaDonNhaps
					(MaNhaPhanPhoi,
					KieuThanhToan ,
					TongTien,
					MaTaiKhoan
					)
					VALUES
					(@MaNhaPhanPhoi,
					@KieuThanhToan ,
					@TongTien,
					@MaTaiKhoan
					);

					SET @MaHoaDon = (SELECT SCOPE_IDENTITY());
					IF(@list_json_chitiethoadonnhap IS NOT NULL)
						BEGIN
							DECLARE @Result TABLE
							(
								MaSanPham INT,
								SoLuong INT,
								DonViTinh NVARCHAR(50),
								GiaNhap DECIMAL(18, 0),
								TongGia DECIMAL(18, 0)
							);

							INSERT INTO @Result
							(
								MaSanPham,
								SoLuong,
								DonViTinh,
								GiaNhap,
								TongGia
							)
							SELECT
								JSON_VALUE(y.value, '$.maSanPham') as MaSanPham,
								JSON_VALUE(y.value, '$.soLuong') as SoLuong,
								JSON_VALUE(y.value, '$.donViTinh') as DonViTinh,
								JSON_VALUE(y.value, '$.giaNhap') as GiaNhap,
								JSON_VALUE(y.value, '$.tongGia') as TongGia
							FROM OPENJSON(@list_json_chitiethoadonnhap) AS y;

							Insert into ChiTietHoaDonNhaps(
										 MaHoaDon,
										 MaSanPham,
										 SoLuong,
										 DonViTinh,
										 GiaNhap,
										 TongGia)
							select @MaHoaDon,
									MaSanPham,
									SoLuong,
									DonViTinh,
									GiaNhap,
									TongGia
							from @Result

							UPDATE sp
							SET sp.SoLuong = sp.SoLuong + r.SoLuong, sp.Gia = r.GiaNhap + ( r.GiaNhap * 0.5),sp.GiaGiam = r.GiaNhap + ( r.GiaNhap * 0.3)
							FROM SanPhams sp
							JOIN @Result r ON sp.MaSanPham = r.MaSanPham;

						END;
			END


        SELECT '';
    END;
GO
/****** Object:  StoredProcedure [dbo].[sp_create_sanpham]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_create_sanpham](
@MaDanhMuc int,
@Madanhmucuudai int,
@TenSanPham nvarchar(150),
@AnhDaiDien nvarchar(150),
@Gia decimal(18, 0),
@GiaGiam decimal(18, 0),
@SoLuong int,
@TrongLuong nvarchar(100),
@TrangThai bit,
@XuatXu nvarchar(50),
@list_json_chitiet_sanpham NVARCHAR(MAX),
@list_json_sanpham_nhaphanphoi NVARCHAR(MAX),
@list_json_anhsanpham NVARCHAR(MAX)
)
as
BEGIN
		DECLARE @MaSanPham INT;
		BEGIN
			INSERT INTO SanPhams
					(MaDanhMuc, 
					 Madanhmucuudai, 
					 TenSanPham,
					 AnhDaiDien,
					 Gia,
					 GiaGiam,
					 SoLuong,
					 TrongLuong,
					 TrangThai,
					 XuatXu
					)
					VALUES
					(@MaDanhMuc, 
					 @Madanhmucuudai, 
					 @TenSanPham,
					 @AnhDaiDien,
					 @Gia,
					 @GiaGiam,
					 @SoLuong,
					 @TrongLuong,
					 @TrangThai,
					 @XuatXu
					);

					SET @MaSanPham = (SELECT SCOPE_IDENTITY());
					IF(@list_json_chitiet_sanpham IS NOT NULL)
						BEGIN
							INSERT INTO ChiTietSanPhams
							 (
							 MaSanPham,
							 MaNhaSanXuat,
							 MoTa,
							 ChiTiet)
						SELECT	@MaSanPham,
								JSON_VALUE(y.value, '$.maNhaSanXuat') ,
								JSON_VALUE(y.value, '$.moTa') ,
								JSON_VALUE(y.value, '$.chiTiet') 
						FROM OPENJSON(@list_json_chitiet_sanpham) AS y;
						END;

					IF(@list_json_sanpham_nhaphanphoi IS NOT NULL)
						BEGIN
							INSERT INTO SanPhams_NhaPhanPhois
							 (
							 MaSanPham,
							 MaNhaPhanPhoi)
						SELECT	@MaSanPham,
								JSON_VALUE(z.value, '$.maNhaPhanPhoi')
						FROM OPENJSON(@list_json_sanpham_nhaphanphoi) AS z;
						END;

					IF(@list_json_anhsanpham IS NOT NULL)
						BEGIN
							INSERT INTO AnhSanPhams
							 (
							 MaSanPham,
							 LinkAnh)
						SELECT	@MaSanPham,
								JSON_VALUE(z.value, '$.linkAnh')
						FROM OPENJSON(@list_json_anhsanpham) AS z;
						END;

			END


        SELECT '';
    END;
GO
/****** Object:  StoredProcedure [dbo].[sp_create_taikhoan]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-------------------------------------------------------------------------------------------------------------------------------
create proc [dbo].[sp_create_taikhoan](
@TenTaiKhoan nvarchar(50),
@MatKhau nvarchar(50),
@Email nvarchar(150),
@list_json_chitiet_taikhoan NVARCHAR(MAX)
)
as
BEGIN
		DECLARE @MaTaiKhoan INT;
		DECLARE @MaLoaiTaiKhoan INT;
		DECLARE @USER int
		Set @USER = (SELECT COUNT(TenTaiKhoan) from TaiKhoans where TenTaiKhoan =@TenTaiKhoan)
        if(@USER=0)
		BEGIN
			INSERT INTO TaiKhoans
					(TenTaiKhoan, 
					 MatKhau, 
					 Email               
					)
					VALUES
					(@TenTaiKhoan, 
					 @MatKhau, 
					 @Email
					);

					SET @MaTaiKhoan = (SELECT SCOPE_IDENTITY());
					IF(@list_json_chitiet_taikhoan IS NOT NULL)
						BEGIN
							INSERT INTO ChiTietTaiKhoans
							 (MaTaiKhoan,
							 MaLoaitaikhoan,
							 HoTen,
							 DiaChi,
							 SoDienThoai,
							 AnhDaiDien)
						SELECT	@MaTaiKhoan,
								JSON_VALUE(y.value, '$.maLoaitaikhoan') ,
								JSON_VALUE(y.value, '$.hoTen') ,
								JSON_VALUE(y.value, '$.diaChi') ,
								JSON_VALUE(y.value, '$.soDienThoai') ,
								JSON_VALUE(y.value, '$.anhDaiDien') 
						FROM OPENJSON(@list_json_chitiet_taikhoan) AS y;
						END;
			END


        SELECT '';
    END;
GO
/****** Object:  StoredProcedure [dbo].[sp_danhgiagetsp]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_danhgiagetsp](@page_index  int, 
                                       @page_size   int,
									   @MaSanPham int,
									   @ChatLuong int,
									   @NoiDung nvarchar(MAX),
									   @fr_NgayTao datetime,
									   @to_NgayTao datetime)
AS
    BEGIN
        DECLARE @RecordCount BIGINT;
        IF(@page_size <> 0)
            BEGIN
                SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY MaDanhGia ASC)) AS RowNumber, 
                              dg.*, sp.TenSanPham,cttk.HoTen,tk.TenTaiKhoan,cttk.SoDienThoai
                        INTO #Temp1
                        from DanhGia dg 
							inner join SanPhams sp on dg.MaSanPham = sp.MaSanPham
							inner join TaiKhoans tk on tk.MaTaiKhoan = dg.MaTaiKhoan
							inner join ChiTietTaiKhoans cttk on cttk.MaTaiKhoan = tk.MaTaiKhoan

					    WHERE ((@MaSanPham = 0) or (dg.MaSanPham  = @MaSanPham))
							and ((@ChatLuong = 0) OR (dg.ChatLuong = @ChatLuong))
							and (@NoiDung = '' or dg.NoiDung like N'%'+@NoiDung +'%')
							 and ((@fr_NgayTao is null and @to_NgayTao is null 
								or (@fr_NgayTao is not null
								and @to_NgayTao is null and
								dg.ThoiGian >= @fr_NgayTao)
								or @fr_NgayTao is null and @to_NgayTao is not null 
								and dg.ThoiGian < @to_NgayTao
								or dg.ThoiGian between @fr_NgayTao and @to_NgayTao))
					
                        SELECT @RecordCount = COUNT(*)
                        FROM #Temp1;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Temp1
                        WHERE ROWNUMBER BETWEEN(@page_index - 1) * @page_size + 1 AND(((@page_index - 1) * @page_size + 1) + @page_size) - 1
                              OR @page_index = -1;
                        DROP TABLE #Temp1; 
            END;
            ELSE
            BEGIN
                SET NOCOUNT ON;
                         SELECT(ROW_NUMBER() OVER(
                              ORDER BY MaDanhGia ASC)) AS RowNumber, 
                              dg.*, sp.TenSanPham,cttk.HoTen,tk.TenTaiKhoan,cttk.SoDienThoai
                        INTO #Temp2
                        from DanhGia dg 
							inner join SanPhams sp on dg.MaSanPham = sp.MaSanPham
							inner join TaiKhoans tk on tk.MaTaiKhoan = dg.MaTaiKhoan
							inner join ChiTietTaiKhoans cttk on cttk.MaTaiKhoan = tk.MaTaiKhoan

					    WHERE ((@MaSanPham = 0) or (dg.MaSanPham  = @MaSanPham))
							and ((@ChatLuong = 0) OR (dg.ChatLuong = @ChatLuong))
							and (@NoiDung = '' or dg.NoiDung like N'%'+@NoiDung +'%')
							 and ((@fr_NgayTao is null and @to_NgayTao is null 
								or (@fr_NgayTao is not null
								and @to_NgayTao is null and
								dg.ThoiGian >= @fr_NgayTao)
								or @fr_NgayTao is null and @to_NgayTao is not null 
								and dg.ThoiGian < @to_NgayTao
								or dg.ThoiGian between @fr_NgayTao and @to_NgayTao))
					
                        SELECT @RecordCount = COUNT(*)
                        FROM #Temp2;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Temp2
                        DROP TABLE #Temp2; 
        END;
    END;
GO
/****** Object:  StoredProcedure [dbo].[sp_danhgiatrong]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_danhgiatrong](@Ngay int)
as
begin
	DECLARE @StartDate DATETIME
	IF @Ngay = 0
    BEGIN
        SET @StartDate = CAST(GETDATE() AS DATE);
    END
    ELSE
    BEGIN
        SET @StartDate = DATEADD(DAY, -@Ngay, GETDATE());
    END

    SELECT TOP (1000) dg.*, sp.TenSanPham,cttk.HoTen,tk.TenTaiKhoan,cttk.SoDienThoai
    from DanhGia dg 
		inner join SanPhams sp on dg.MaSanPham = sp.MaSanPham
		inner join TaiKhoans tk on tk.MaTaiKhoan = dg.MaTaiKhoan
		inner join ChiTietTaiKhoans cttk on cttk.MaTaiKhoan = tk.MaTaiKhoan
    WHERE dg.ThoiGian >= @StartDate AND dg.ThoiGian <= GETDATE()
	ORDER BY MaDanhGia DESC
end
GO
/****** Object:  StoredProcedure [dbo].[sp_danhmuc_search]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_danhmuc_search](@page_index  INT, 
                                       @page_size   INT,
									   @TenDanhMuc nvarchar(50))
AS
    BEGIN
        DECLARE @RecordCount BIGINT;
        IF(@page_size <> 0)
            BEGIN
                SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY a.MaDanhMuc DESC)) AS RowNumber, 
                              a.*
                        INTO #Temp1
                        FROM DanhMucs as a

					    WHERE (@TenDanhMuc = '' or a.TenDanhMuc like '%'+@TenDanhMuc +'%')
						
                        SELECT @RecordCount = COUNT(*)
                        FROM #Temp1;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Temp1
                        WHERE ROWNUMBER BETWEEN(@page_index - 1) * @page_size + 1 AND(((@page_index - 1) * @page_size + 1) + @page_size) - 1
                              OR @page_index = -1;
                        DROP TABLE #Temp1; 
            END;
            ELSE
            BEGIN
                SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY a.MaDanhMuc DESC)) AS RowNumber, 
                              a.*
                        INTO #Temp2
                        FROM DanhMucs as a

					    WHERE (@TenDanhMuc = '' or a.TenDanhMuc like '%'+@TenDanhMuc +'%')
						
                        SELECT @RecordCount = COUNT(*)
                        FROM #Temp2;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Temp2
                        DROP TABLE #Temp2; 
        END;
    END;
GO
/****** Object:  StoredProcedure [dbo].[sp_danhmucuudai_search]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_danhmucuudai_search](@page_index  INT, 
                                       @page_size   INT,
									   @Tendanhmucuudai nvarchar(50))
AS
    BEGIN
        DECLARE @RecordCount BIGINT;
        IF(@page_size <> 0)
            BEGIN
                SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY a.Madanhmucuudai DESC)) AS RowNumber, 
                              a.*
                        INTO #Temp1
                        FROM DanhMucUudais as a

					    WHERE (@Tendanhmucuudai = '' or a.Tendanhmucuudai like '%'+@Tendanhmucuudai +'%')
						
                        SELECT @RecordCount = COUNT(*)
                        FROM #Temp1;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Temp1
                        WHERE ROWNUMBER BETWEEN(@page_index - 1) * @page_size + 1 AND(((@page_index - 1) * @page_size + 1) + @page_size) - 1
                              OR @page_index = -1;
                        DROP TABLE #Temp1; 
            END;
            ELSE
            BEGIN
                SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY a.Madanhmucuudai DESC)) AS RowNumber, 
                              a.*
                        INTO #Temp2
                        FROM DanhMucUudais as a

					    WHERE (@Tendanhmucuudai = '' or a.Tendanhmucuudai like '%'+@Tendanhmucuudai +'%')
						
                        SELECT @RecordCount = COUNT(*)
                        FROM #Temp2;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Temp2
                        DROP TABLE #Temp2; 
        END;
    END;
GO
/****** Object:  StoredProcedure [dbo].[sp_delete_hoadon]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_delete_hoadon](@MaHoaDon int)
as
begin
	delete from HoaDons
	where MaHoaDon = @MaHoaDon
end
GO
/****** Object:  StoredProcedure [dbo].[sp_delete_hoadon_nhap]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_delete_hoadon_nhap](@MaHoaDon int)
as
begin
	delete from HoaDonNhaps
	where MaHoaDon = @MaHoaDon
end
GO
/****** Object:  StoredProcedure [dbo].[sp_doimk_taikhoan]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-------------------------------------------------------------------------------------------------------------------------------
create proc [dbo].[sp_doimk_taikhoan](@TenTaiKhoan nvarchar(50),@MatKhau nvarchar(50))
as
begin
	update TaiKhoans
	set MatKhau = @MatKhau
	where TenTaiKhoan = @TenTaiKhoan
end
GO
/****** Object:  StoredProcedure [dbo].[sp_get_all_caidat]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-------------------------------------------------------------------------------------------------------------------------------
create proc [dbo].[sp_get_all_caidat]
as
begin
	select*from CaiDats
end
GO
/****** Object:  StoredProcedure [dbo].[sp_get_all_danhmuc]    Script Date: 19/3/2024 9:42:25 AM ******/

create proc [dbo].[sp_getbyiddanhmuc] (@MaDanhMuc int)
as
begin
	select * from DanhMucs
	where MaDanhMuc = @MaDanhMuc
end

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_get_all_danhmuc]
as
begin
	select * from DanhMucs
end
GO
/****** Object:  StoredProcedure [dbo].[sp_get_all_danhmucuudai]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[sp_getbyiddanhmucuudai] (@Madanhmucuudai int)
as
begin
	select * from DanhMucUudais
	where Madanhmucuudai = @Madanhmucuudai
end

-------------------------------------------------------------------------------------------------------------------------------
create proc [dbo].[sp_get_all_danhmucuudai]
as
begin
	select*from DanhMucUudais
end
GO
/****** Object:  StoredProcedure [dbo].[sp_get_all_hangsanxuat]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[sp_getbyidhangsanxuat] (@MaNhaSanXuat int)
as
begin
	select * from HangSanXuats
	where MaNhaSanXuat = @MaNhaSanXuat
end

create proc [dbo].[sp_get_all_hangsanxuat]
as
begin
	select * from HangSanXuats
end
GO
/****** Object:  StoredProcedure [dbo].[sp_get_all_loaitaikhoan]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[sp_getbyidloaitaikhoan] (@MaLoaitaikhoan int)
as
begin
	select * from LoaiTaiKhoans
	where MaLoaitaikhoan = @MaLoaitaikhoan
end


CREATE proc [dbo].[sp_get_all_loaitaikhoan]
as
begin
	select*from LoaiTaiKhoans
	order by MaLoaitaikhoan
end
GO
/****** Object:  StoredProcedure [dbo].[sp_get_all_nhaphanphoi]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO

create proc [dbo].[sp_getbyidnhaphanphoi](@MaNhaPhanPhoi int)
as
begin
	select*from NhaPhanPhois
	where MaNhaPhanPhoi = @MaNhaPhanPhoi
end

SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_get_all_nhaphanphoi]
as
begin
	select*from NhaPhanPhois
end
GO
/****** Object:  StoredProcedure [dbo].[sp_get_all_quang_cao]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[sp_getbyidquangcao](@Id int)
as
begin
	select*from QuangCaos
	where Id = @Id
end

create proc [dbo].[sp_get_all_quang_cao]
as
begin
	select *from QuangCaos
end
GO
/****** Object:  StoredProcedure [dbo].[sp_get_all_silde_detail]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[sp_getbyidslidedetail](@MaAnh int)
as
begin
	select*from SlideDetail
	where MaAnh = @MaAnh
end

-------------------------------------------------------------------------------------------------------------------------------
create proc [dbo].[sp_get_all_silde_detail]
as
begin
	select*from SlideDetail
end
GO
/****** Object:  StoredProcedure [dbo].[sp_get_sanpham_id]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_get_sanpham_id](@MaSanPham int)
as
begin
	Select s.MaSanPham,
							  dm.MaDanhMuc,
							  dm.TenDanhMuc,
							  dmu.Madanhmucuudai,
							  dmu.Tendanhmucuudai,
							  s.TenSanPham,
							  s.AnhDaiDien,
							  s.Gia,
							  s.GiaGiam,
							  s.SoLuong,
							  s.TrongLuong,
							  s.TrangThai,
							  s.LuotXem,
							  s.LuotBan,
							  s.DanhGia,
							  s.XuatXu,
							  h.MaNhaSanXuat,
							  h.TenHang,
							  npp.MaNhaPhanPhoi,
							  npp.TenNhaPhanPhoi,
							  c.MoTa,
							  c.ChiTiet,
							  c.MaChiTietSanPham
                        FROM SanPhams AS s
						inner join ChiTietSanPhams c on c.MaSanPham = s.MaSanPham
						inner join HangSanXuats h on h.MaNhaSanXuat = c.MaNhaSanXuat
						inner join SanPhams_NhaPhanPhois sp on sp.MaSanPham = s.MaSanPham
						inner join NhaPhanPhois npp on npp.MaNhaPhanPhoi = sp.MaNhaPhanPhoi
						inner join DanhMucs dm on dm.MaDanhMuc = s.MaDanhMuc
						inner join DanhMucUudais dmu on dmu.Madanhmucuudai = s.Madanhmucuudai
						inner join AnhSanPhams asp on asp.MaSanPham = s.MaSanPham
	where s.MaSanPham = @MaSanPham
end
GO
/****** Object:  StoredProcedure [dbo].[sp_get_sanpham_id_user]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_get_sanpham_id_user](@MaSanPham int)
as
begin
	Select s.MaSanPham,
							  dm.MaDanhMuc,
							  dm.TenDanhMuc,
							  dmu.Madanhmucuudai,
							  dmu.Tendanhmucuudai,
							  s.TenSanPham,
							  s.AnhDaiDien,
							  s.Gia,
							  s.GiaGiam,
							  s.SoLuong,
							  s.TrongLuong,
							  s.TrangThai,
							  s.LuotXem,
							  s.LuotBan,
							  s.DanhGia,
							  s.XuatXu,
							  h.MaNhaSanXuat,
							  h.TenHang,
							  npp.MaNhaPhanPhoi,
							  npp.TenNhaPhanPhoi,
							  c.MoTa,
							  c.ChiTiet,
							  c.MaChiTietSanPham
                        FROM SanPhams AS s
						inner join ChiTietSanPhams c on c.MaSanPham = s.MaSanPham
						inner join HangSanXuats h on h.MaNhaSanXuat = c.MaNhaSanXuat
						inner join SanPhams_NhaPhanPhois sp on sp.MaSanPham = s.MaSanPham
						inner join NhaPhanPhois npp on npp.MaNhaPhanPhoi = sp.MaNhaPhanPhoi
						inner join DanhMucs dm on dm.MaDanhMuc = s.MaDanhMuc
						inner join DanhMucUudais dmu on dmu.Madanhmucuudai = s.Madanhmucuudai
						inner join AnhSanPhams asp on asp.MaSanPham = s.MaSanPham
	where s.MaSanPham = @MaSanPham

	update SanPhams
	set LuotXem = LuotXem + 1
	where MaSanPham = @MaSanPham
end
GO
/****** Object:  StoredProcedure [dbo].[sp_getallkhachhang]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_getallkhachhang]
as
begin
	select*from KhachHangs
end
GO
/****** Object:  StoredProcedure [dbo].[sp_getallsanpham]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_getallsanpham]
as
begin
	select *
	from SanPhams
end
GO
/****** Object:  StoredProcedure [dbo].[sp_getalltaikhoan]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_getalltaikhoan]
as
begin
	select*from TaiKhoans
end
GO
/****** Object:  StoredProcedure [dbo].[sp_getallusername]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_getallusername]
as
begin
	select TenTaiKhoan
	from TaiKhoans
end
GO
/****** Object:  StoredProcedure [dbo].[sp_getbyidchitiethoadon]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_getbyidchitiethoadon](@MaHoaDon int)
as
begin
	select h.MaHoaDon,
			c.MaChiTietHoaDon,
							  c.MaSanPham,
                              s.TenSanPham,
							  c.SoLuong,
							  c.DonGia,
							  c.TongGia,
							  s.AnhDaiDien
                        FROM HoaDons AS h
						inner join ChiTietHoaDons c on c.MaHoaDon = h.MaHoaDon
						inner join SanPhams s on s.MaSanPham = c.MaSanPham
	where h.MaHoaDon = @MaHoaDon
end
GO
/****** Object:  StoredProcedure [dbo].[sp_getbyidchitiethoadonnhap]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_getbyidchitiethoadonnhap](@MaHoaDon int)
as
begin
	select c.Id,
			 h.MaHoaDon,
							  c.MaSanPham,
                              s.TenSanPham,
							  c.SoLuong,	
							  c.DonViTinh,
							  c.GiaNhap,
							  c.TongGia,
							  s.AnhDaiDien
                        FROM HoaDonNhaps AS h
						inner join ChiTietHoaDonNhaps c on c.MaHoaDon = h.MaHoaDon
						inner join SanPhams s on s.MaSanPham = c.MaSanPham
	where h.MaHoaDon = @MaHoaDon
end
GO
/****** Object:  StoredProcedure [dbo].[sp_getbyidchitiettaikhoan]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
alter proc [dbo].[sp_getbyidchitiettaikhoan](@MaTaiKhoan int)
as
begin
	select h.*,tk.*,c.TenLoai
	from ChiTietTaiKhoans h
	inner join LoaiTaiKhoans c on h.MaLoaitaikhoan=c.MaLoaitaikhoan
	inner join TaiKhoans tk on h.MaTaiKhoan = tk.MaTaiKhoan
	where h.MaTaiKhoan =@MaTaiKhoan
end
GO
exec sp_getbyidchitiettaikhoan 28
/****** Object:  StoredProcedure [dbo].[sp_getbyidchitiettaikhoancustomer]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_getbyidchitiettaikhoancustomer](@MaTaiKhoan int)
as
begin
	select h.*,c.TenLoai,tk.Email,tk.TenTaiKhoan,tk.MatKhau
	from ChiTietTaiKhoans h
	inner join LoaiTaiKhoans c on h.MaLoaitaikhoan=c.MaLoaitaikhoan
	inner join TaiKhoans tk on tk.MaTaiKhoan = h.MaTaiKhoan
	where tk.MaTaiKhoan =@MaTaiKhoan
end
GO
/****** Object:  StoredProcedure [dbo].[sp_getbytaikhoanchitiethoadon]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_getbytaikhoanchitiethoadon](@MaTaiKhoan int)
as
begin
	select h.*
    FROM HoaDons AS h
					
	where h.MaTaiKhoan = @MaTaiKhoan
	order by h.MaHoaDon DESC
end
GO
/****** Object:  StoredProcedure [dbo].[sp_getbytaikhoanchitiethoadonproduct]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_getbytaikhoanchitiethoadonproduct](@MaTaiKhoan int)
as
begin
	select ct.MaSanPham
    FROM HoaDons AS h
	inner join ChiTietHoaDons ct on ct.MaHoaDon = h.MaHoaDon
	where h.MaTaiKhoan = @MaTaiKhoan
	group by ct.MaSanPham
end
GO
/****** Object:  StoredProcedure [dbo].[sp_getiddanhgia]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_getiddanhgia](@MaDanhGia int)
as
begin
	select *from DanhGia
	where MaDanhGia = @MaDanhGia
end
GO
/****** Object:  StoredProcedure [dbo].[sp_getidImgdetail]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_getidImgdetail](@MaSanPham int)
as
begin
	select *
	from AnhSanPhams
	where MaSanPham = @MaSanPham
end
GO
/****** Object:  StoredProcedure [dbo].[sp_gettintucbyid]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_gettintucbyid](@MaTinTuc int)
as
begin
	select *,ctk.HoTen
	FROM TinTucs AS K
						inner join TaiKhoans tk on k.MaTaiKhoan = tk.MaTaiKhoan
						inner join ChiTietTaiKhoans ctk on ctk.MaTaiKhoan = tk.MaTaiKhoan
	where MaTinTuc = @MaTinTuc

	update TinTucs
	set LuotXem = LuotXem +1
	where MaTinTuc = @MaTinTuc
end
GO
/****** Object:  StoredProcedure [dbo].[sp_giam_gia_sp_all_5]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_giam_gia_sp_all_5]
as
begin
	update SanPhams
	set GiaGiam = CEILING((GiaGiam - (GiaGiam * 0.05)) / 1000) * 1000
end
GO
/****** Object:  StoredProcedure [dbo].[sp_hangsanxuat_search]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_hangsanxuat_search](@page_index  INT, 
                                       @page_size   INT,
									   @TenHang nvarchar(50))
AS
    BEGIN
        DECLARE @RecordCount BIGINT;
        IF(@page_size <> 0)
            BEGIN
                SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY a.MaNhaSanXuat DESC)) AS RowNumber, 
                              a.*
                        INTO #Temp1
                        FROM HangSanXuats as a

					    WHERE (@TenHang = '' or a.TenHang like '%'+@TenHang +'%')
						
                        SELECT @RecordCount = COUNT(*)
                        FROM #Temp1;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Temp1
                        WHERE ROWNUMBER BETWEEN(@page_index - 1) * @page_size + 1 AND(((@page_index - 1) * @page_size + 1) + @page_size) - 1
                              OR @page_index = -1;
                        DROP TABLE #Temp1; 
            END;
            ELSE
            BEGIN
               SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY a.MaNhaSanXuat DESC)) AS RowNumber, 
                              a.*
                        INTO #Temp2
                        FROM HangSanXuats as a

					    WHERE (@TenHang = '' or a.TenHang like '%'+@TenHang +'%')
						
                        SELECT @RecordCount = COUNT(*)
                        FROM #Temp2;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Temp2
                        DROP TABLE #Temp2; 
        END;
    END;
GO
/****** Object:  StoredProcedure [dbo].[sp_hoadon_search]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-------------------------------------------------------------------------------------------------------------------------------
CREATE proc [dbo].[sp_hoadon_search](@page_index  INT, 
                                       @page_size   INT,
									   @TenKH Nvarchar(50),
									   @SDT nvarchar(50),
									   @TrangThai nvarchar(50),
									   @fr_NgayTao datetime,
									   @to_NgayTao datetime)
AS
    BEGIN
        DECLARE @RecordCount BIGINT;
        IF(@page_size <> 0)
            BEGIN
                SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY h.MaHoaDon DESC)) AS RowNumber, 
							  h.MaHoaDon,
							  h.NgayTao,
							  h.TenKH,
							  h.SDT,
							  h.DiaChiGiaoHang,
                              s.TenSanPham,
							  c.SoLuong,
							  c.DonGia,
							  c.TongGia
                        INTO #Results
                        FROM HoaDons AS h
						inner join ChiTietHoaDons c on c.MaHoaDon = h.MaHoaDon
						inner join SanPhams s on s.MaSanPham = c.MaSanPham
					    WHERE (@TenKH = '' or h.TenKH like N'%'+@TenKH +'%')
						and   (@SDT = '' or h.SDT like N'%'+@SDT +'%')
						and   (@TrangThai = '' or h.TrangThai like N'%'+@TrangThai +'%')
						and ((@fr_NgayTao is null and @to_NgayTao is null 
								or (@fr_NgayTao is not null
								and @to_NgayTao is null and
								h.NgayTao >= @fr_NgayTao)
								or @fr_NgayTao is null and @to_NgayTao is not null 
								and h.NgayTao < @to_NgayTao
								or h.NgayTao between @fr_NgayTao and @to_NgayTao))
                        SELECT @RecordCount = COUNT(*)
                        FROM #Results;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results
                        WHERE ROWNUMBER BETWEEN(@page_index - 1) * @page_size + 1 AND(((@page_index - 1) * @page_size + 1) + @page_size) - 1
                              OR @page_index = -1;
                        DROP TABLE #Results; 
            END;
            ELSE
            BEGIN
                SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY h.MaHoaDon DESC)) AS RowNumber, 
							  h.MaHoaDon,
							  h.NgayTao,
							  h.TenKH,
							  h.SDT,
							  h.DiaChiGiaoHang,
                              s.TenSanPham,
							  c.SoLuong,
							  c.DonGia,
							  c.TongGia
                        INTO #Results2
                        FROM HoaDons AS h
						inner join ChiTietHoaDons c on c.MaHoaDon = h.MaHoaDon
						inner join SanPhams s on s.MaSanPham = c.MaSanPham
					    WHERE (@TenKH = '' or h.TenKH like N'%'+@TenKH +'%')
						and   (@SDT = '' or h.SDT like N'%'+@SDT +'%')
						and   (@TrangThai = '' or h.TrangThai like N'%'+@TrangThai +'%')
						and ((@fr_NgayTao is null and @to_NgayTao is null 
								or (@fr_NgayTao is not null
								and @to_NgayTao is null and
								h.NgayTao >= @fr_NgayTao)
								or @fr_NgayTao is null and @to_NgayTao is not null 
								and h.NgayTao < @to_NgayTao
								or h.NgayTao between @fr_NgayTao and @to_NgayTao))
                        SELECT @RecordCount = COUNT(*)
                        FROM #Results2;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results2
                        DROP TABLE #Results2; 
        END;
    END;
GO
/****** Object:  StoredProcedure [dbo].[sp_hoadon_search_single]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_hoadon_search_single](@page_index  INT, 
                                       @page_size   INT,
									   @TenKH Nvarchar(50),
									   @SDT nvarchar(50),
									   @TrangThai nvarchar(50),
									   @fr_NgayTao datetime,
									   @to_NgayTao datetime)
AS
    BEGIN
        DECLARE @RecordCount BIGINT;
        IF(@page_size <> 0)
            BEGIN
                SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY h.MaHoaDon DESC)) AS RowNumber, 
							  h.*,
							  tk.TenTaiKhoan
                        INTO #Results
                        FROM HoaDons AS h
						inner join TaiKhoans tk on h.MaTaiKhoan = tk.MaTaiKhoan
					    WHERE (@TenKH = '' or h.TenKH like N'%'+@TenKH +'%')
						and   (@SDT = '' or h.SDT like N'%'+@SDT +'%')
						and   (@TrangThai = '' or h.TrangThai like N'%'+@TrangThai +'%')
						and ((@fr_NgayTao is null and @to_NgayTao is null 
								or (@fr_NgayTao is not null
								and @to_NgayTao is null and
								h.NgayTao >= @fr_NgayTao)
								or @fr_NgayTao is null and @to_NgayTao is not null 
								and h.NgayTao < @to_NgayTao
								or h.NgayTao between @fr_NgayTao and @to_NgayTao))
                        SELECT @RecordCount = COUNT(*)
                        FROM #Results;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results
                        WHERE ROWNUMBER BETWEEN(@page_index - 1) * @page_size + 1 AND(((@page_index - 1) * @page_size + 1) + @page_size) - 1
                              OR @page_index = -1;
                        DROP TABLE #Results; 
            END;
            ELSE
            BEGIN
                SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY h.MaHoaDon DESC)) AS RowNumber, 
							  h.*
                        INTO #Results2
                        FROM HoaDons AS h
					    WHERE (@TenKH = '' or h.TenKH like N'%'+@TenKH +'%')
						and   (@SDT = '' or h.SDT like N'%'+@SDT +'%')
						and   (@TrangThai = '' or h.TrangThai like N'%'+@TrangThai +'%')
						and ((@fr_NgayTao is null and @to_NgayTao is null 
								or (@fr_NgayTao is not null
								and @to_NgayTao is null and
								h.NgayTao >= @fr_NgayTao)
								or @fr_NgayTao is null and @to_NgayTao is not null 
								and h.NgayTao < @to_NgayTao
								or h.NgayTao between @fr_NgayTao and @to_NgayTao))
                        SELECT @RecordCount = COUNT(*)
                        FROM #Results2;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results2
                        DROP TABLE #Results2; 
        END;
    END;
GO
/****** Object:  StoredProcedure [dbo].[sp_khach_hang_search]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-------------------------------------------------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[sp_khach_hang_search] (@page_index  INT, 
                                       @page_size   INT,
									   @TenKH Nvarchar(50),
									   @DiaChi nvarchar(250))
AS
    BEGIN
        DECLARE @RecordCount BIGINT;
        IF(@page_size <> 0)
            BEGIN
                SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY TenKH ASC)) AS RowNumber, 
                              K.Id, 
                              K.TenKH,
							  K.DiaChi
                        INTO #Results1
                        FROM KhachHangs AS K
					    WHERE (@TenKH = '' or K.TenKH like N'%'+@TenKH +'%') and
						(@DiaChi = '' or k.DiaChi like N'%'+@DiaChi +'%');
                        SELECT @RecordCount = COUNT(*)
                        FROM #Results1;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results1
                        WHERE ROWNUMBER BETWEEN(@page_index - 1) * @page_size + 1 AND(((@page_index - 1) * @page_size + 1) + @page_size) - 1
                              OR @page_index = -1;
                        DROP TABLE #Results1; 
            END;
            ELSE
            BEGIN
                SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY TenKH ASC)) AS RowNumber, 
                              K.Id, 
                              K.TenKH,
							  K.DiaChi
                        INTO #Results2
                        FROM KhachHangs AS K
					    WHERE (@TenKH = '' or K.TenKH like N'%'+@TenKH +'%') and
						(@DiaChi = '' or k.DiaChi like N'%'+@DiaChi +'%');
                        SELECT @RecordCount = COUNT(*)
                        FROM #Results2;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results2
                        DROP TABLE #Results2; 
        END;
    END;
GO
/****** Object:  StoredProcedure [dbo].[sp_login]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_login](@taikhoan nvarchar(50), @matkhau nvarchar(50))
AS
    BEGIN
      SELECT  *
      FROM TaiKhoans t 
	  inner join ChiTietTaiKhoans c on c.MaTaiKhoan = t.MaTaiKhoan
	  inner join LoaiTaiKhoans l on l.MaLoaitaikhoan = c.MaLoaitaikhoan
      where TenTaiKhoan= @taikhoan and MatKhau = @matkhau;
    END;
GO
/****** Object:  StoredProcedure [dbo].[sp_nhaphanphoi_search]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_nhaphanphoi_search](@page_index  INT, 
                                       @page_size   INT,
									   @TenNhaPhanPhoi nvarchar(250),
									   @DiaChi nvarchar(max),
									   @SoDienThoai nvarchar(50))
AS
    BEGIN
        DECLARE @RecordCount BIGINT;
        IF(@page_size <> 0)
            BEGIN
                SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY a.MaNhaPhanPhoi DESC)) AS RowNumber, 
                              a.*
                        INTO #Temp1
                        FROM NhaPhanPhois as a

					    WHERE (@TenNhaPhanPhoi = '' or a.TenNhaPhanPhoi like '%'+@TenNhaPhanPhoi +'%')
							and (@DiaChi = '' or a.DiaChi like '%'+@DiaChi +'%')
							and (@SoDienThoai = '' or a.SoDienThoai like '%'+@SoDienThoai +'%')
						
                        SELECT @RecordCount = COUNT(*)
                        FROM #Temp1;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Temp1
                        WHERE ROWNUMBER BETWEEN(@page_index - 1) * @page_size + 1 AND(((@page_index - 1) * @page_size + 1) + @page_size) - 1
                              OR @page_index = -1;
                        DROP TABLE #Temp1; 
            END;
            ELSE
            BEGIN
               SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY a.MaNhaPhanPhoi DESC)) AS RowNumber, 
                              a.*
                        INTO #Temp2
                        FROM NhaPhanPhois as a

					    WHERE (@TenNhaPhanPhoi = '' or a.TenNhaPhanPhoi like '%'+@TenNhaPhanPhoi +'%')
							and (@DiaChi = '' or a.DiaChi like '%'+@DiaChi +'%')
							and (@SoDienThoai = '' or a.SoDienThoai like '%'+@SoDienThoai +'%')
						
                        SELECT @RecordCount = COUNT(*)
                        FROM #Temp2;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Temp2
                        DROP TABLE #Temp2; 
        END;
    END;
GO
/****** Object:  StoredProcedure [dbo].[sp_overview]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_overview]
AS
BEGIN
    DECLARE @Results TABLE (
        SoluongHoaDonNhap INT,
        SoluongHoaDonBan INT,
		SoLuongHoaDonHuy INT,
		SoLuongHoaDonCho INT,
		SoLuongHoaDonDangGiao INT,
		SoLuongHoaDonDaGiao INT,
		SoLuongHoaDonDoiTra INT,
        KhachHangMua INT,
        KhachHangMoi INT,
        TienChi INT,
        DoanhThu INT,
		LuotXem INT
    )

    INSERT INTO @Results (SoluongHoaDonNhap, SoluongHoaDonBan,SoLuongHoaDonHuy,SoLuongHoaDonCho,SoLuongHoaDonDangGiao,SoLuongHoaDonDaGiao,SoLuongHoaDonDoiTra, KhachHangMua, KhachHangMoi, TienChi, DoanhThu,LuotXem)
    SELECT
        (SELECT COUNT(*) FROM HoaDonNhaps) AS SoluongHoaDonNhap,
        (SELECT COUNT(*) FROM HoaDons) AS SoluongHoaDonBan,
        (SELECT COUNT(*) FROM HoaDons WHERE TrangThai like N'Huỷ đơn') AS SoLuongHoaDonHuy,
        (SELECT COUNT(*) FROM HoaDons WHERE TrangThai like N'Đang xử lý') AS SoLuongHoaDonCho,
        (SELECT COUNT(*) FROM HoaDons WHERE TrangThai like N'Đang giao hàng') AS SoLuongHoaDonDangGiao,
        (SELECT COUNT(*) FROM HoaDons WHERE TrangThai like N'Đã giao hàng' or TrangThai like N'Hoàn tất') AS SoLuongHoaDonDaGiao,
        (SELECT COUNT(*) FROM HoaDons WHERE TrangThai like N'Đổi hàng' or TrangThai like N'Trả hàng') AS SoLuongHoaDonDoiTra,
        (SELECT COUNT(DISTINCT SDT) FROM HoaDons) AS KhachHangMua,
        (SELECT COUNT(DISTINCT SDT) FROM HoaDons WHERE MONTH(NgayTao) = MONTH(GETDATE()) AND YEAR(NgayTao) = YEAR(GETDATE())) AS KhachHangMoi,
        (SELECT SUM(TongTien) FROM HoaDonNhaps) AS TienChi,
        (SELECT SUM(TongGia) FROM HoaDons WHERE TrangThai != N'Huỷ đơn') AS DoanhThu,
		(SELECT SUM(LuotXem) FROM SanPhams) AS LuotXem

    SELECT * FROM @Results
END
GO
/****** Object:  StoredProcedure [dbo].[sp_quang_cao_search]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_quang_cao_search] (@page_index  INT, 
                                       @page_size   INT,
									   @MoTa  Nvarchar(max))
AS
    BEGIN
        DECLARE @RecordCount BIGINT;
        IF(@page_size <> 0)
            BEGIN
                SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY K.Id DESC)) AS RowNumber, 
                              K.Id, 
                              K.AnhDaiDien,
							  K.LinkQuangCao,
							  K.MoTa
                        INTO #Results1
                        FROM QuangCaos AS K
					    WHERE (@MoTa = '' or k.MoTa like N'%'+@MoTa +'%');
                        SELECT @RecordCount = COUNT(*)
                        FROM #Results1;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results1
                        WHERE ROWNUMBER BETWEEN(@page_index - 1) * @page_size + 1 AND(((@page_index - 1) * @page_size + 1) + @page_size) - 1
                              OR @page_index = -1;
                        DROP TABLE #Results1; 
            END;
            ELSE
            BEGIN
                SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY K.Mota ASC)) AS RowNumber, 
                              K.Id, 
                              K.AnhDaiDien,
							  K.LinkQuangCao,
							  K.MoTa
                        INTO #Results2
                        FROM QuangCaos AS K
					    WHERE (@MoTa = '' or k.MoTa like N'%'+@MoTa +'%');
                        SELECT @RecordCount = COUNT(*)
                        FROM #Results2;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results2
                        DROP TABLE #Results2; 
        END;
    END;
GO
/****** Object:  StoredProcedure [dbo].[sp_sanpham_search]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_sanpham_search](@page_index  INT, 
                                       @page_size   INT,
									   @TenSanPham nvarchar(150),
									   @TenDanhMuc nvarchar(50),
									   @Tendanhmucuudai nvarchar(250),
									   @GiaMin DECIMAL(18, 0),
									   @GiaMax DECIMAL(18, 0),
									   @TenHang nvarchar(50),
									   @TenNhaPhanPhoi nvarchar(250),
									   @XuatXu nvarchar(50))
AS
    BEGIN
        DECLARE @RecordCount BIGINT;
        IF(@page_size <> 0)
            BEGIN
                SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY s.MaSanPham DESC)) AS RowNumber, 
                              s.MaSanPham,
							  dm.MaDanhMuc,
							  dm.TenDanhMuc,
							  dmu.Madanhmucuudai,
							  dmu.Tendanhmucuudai,
							  s.TenSanPham,
							  s.AnhDaiDien,
							  s.Gia,
							  s.GiaGiam,
							  s.SoLuong,
							  s.TrongLuong,
							  s.TrangThai,
							  s.LuotXem,
							  s.LuotBan,
							  s.DanhGia,
							  s.XuatXu,
							  h.MaNhaSanXuat,
							  h.TenHang,
							  npp.MaNhaPhanPhoi,
							  npp.TenNhaPhanPhoi,
							  c.MoTa,
							  c.ChiTiet
                        INTO #Temp1
                        FROM SanPhams AS s
						inner join ChiTietSanPhams c on c.MaSanPham = s.MaSanPham
						inner join HangSanXuats h on h.MaNhaSanXuat = c.MaNhaSanXuat
						inner join SanPhams_NhaPhanPhois sp on sp.MaSanPham = s.MaSanPham
						inner join NhaPhanPhois npp on npp.MaNhaPhanPhoi = sp.MaNhaPhanPhoi
						inner join DanhMucs dm on dm.MaDanhMuc = s.MaDanhMuc
						inner join DanhMucUudais dmu on dmu.Madanhmucuudai = s.Madanhmucuudai

					    WHERE (@TenSanPham = '' or s.TenSanPham like '%'+@TenSanPham +'%')
							and (@TenDanhMuc = '' or dm.TenDanhMuc like '%'+@TenDanhMuc +'%')
							and (@Tendanhmucuudai = '' or dmu.Tendanhmucuudai like '%'+@Tendanhmucuudai +'%')
							and (@GiaMin = 0 OR s.Gia >= @GiaMin)
							 and (@GiaMax = 0 OR s.Gia <= @GiaMax)
							and (@TenHang = '' or h.TenHang like '%'+@TenHang +'%')
							and (@TenNhaPhanPhoi = '' or npp.TenNhaPhanPhoi like '%'+@TenNhaPhanPhoi +'%')
							and (@XuatXu = '' or s.XuatXu like '%'+@XuatXu +'%')
						
                        SELECT @RecordCount = COUNT(*)
                        FROM #Temp1;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Temp1
                        WHERE ROWNUMBER BETWEEN(@page_index - 1) * @page_size + 1 AND(((@page_index - 1) * @page_size + 1) + @page_size) - 1
                              OR @page_index = -1;
                        DROP TABLE #Temp1; 
            END;
            ELSE
            BEGIN
                SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY s.MaSanPham DESC)) AS RowNumber, 
                              s.MaSanPham,
							  dm.MaDanhMuc,
							  dm.TenDanhMuc,
							  dmu.Madanhmucuudai,
							  dmu.Tendanhmucuudai,
							  s.TenSanPham,
							  s.AnhDaiDien,
							  s.Gia,
							  s.GiaGiam,
							  s.SoLuong,
							  s.TrongLuong,
							  s.TrangThai,
							  s.LuotXem,
							  s.LuotBan,
							  s.DanhGia,
							  s.XuatXu,
							  h.MaNhaSanXuat,
							  h.TenHang,
							  npp.MaNhaPhanPhoi,
							  npp.TenNhaPhanPhoi,
							  c.MoTa,
							  c.ChiTiet
                        INTO #Temp2
                        FROM SanPhams AS s
						inner join ChiTietSanPhams c on c.MaSanPham = s.MaSanPham
						inner join HangSanXuats h on h.MaNhaSanXuat = c.MaNhaSanXuat
						inner join SanPhams_NhaPhanPhois sp on sp.MaSanPham = s.MaSanPham
						inner join NhaPhanPhois npp on npp.MaNhaPhanPhoi = sp.MaNhaPhanPhoi
						inner join DanhMucs dm on dm.MaDanhMuc = s.MaDanhMuc
						inner join DanhMucUudais dmu on dmu.Madanhmucuudai = s.Madanhmucuudai

					    WHERE (@TenSanPham = '' or s.TenSanPham like '%'+@TenSanPham +'%')
							and (@TenDanhMuc = '' or dm.TenDanhMuc like '%'+@TenDanhMuc +'%')
							and (@Tendanhmucuudai = '' or dmu.Tendanhmucuudai like '%'+@Tendanhmucuudai +'%')
							and (@GiaMin = 0 OR s.Gia >= @GiaMin)
							 and (@GiaMax = 0 OR s.Gia <= @GiaMax)
							and (@TenHang = '' or h.TenHang like '%'+@TenHang +'%')
							and (@TenNhaPhanPhoi = '' or npp.TenNhaPhanPhoi like '%'+@TenNhaPhanPhoi +'%')
							and (@XuatXu = '' or s.XuatXu like '%'+@XuatXu +'%')

                        SELECT @RecordCount = COUNT(*)
                        FROM #Temp2;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Temp2
                        DROP TABLE #Temp2; 
        END;
    END;
GO
/****** Object:  StoredProcedure [dbo].[sp_sanpham_search_banchay]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_sanpham_search_banchay]
    @page_index INT,
    @page_size INT,
    @TenSanPham NVARCHAR(150),
    @TenDanhMuc NVARCHAR(50),
    @Tendanhmucuudai NVARCHAR(250),
    @GiaMin DECIMAL(18, 0),
    @GiaMax DECIMAL(18, 0),
    @TenHang NVARCHAR(50),
    @TenNhaPhanPhoi NVARCHAR(250),
    @XuatXu NVARCHAR(50)
AS
BEGIN
    DECLARE @RecordCount BIGINT;

    IF (@page_size <> 0)
    BEGIN
        SET NOCOUNT ON;

        SELECT
            (ROW_NUMBER() OVER (ORDER BY SUM(ct.SoLuong) DESC)) AS RowNumber,
            s.MaSanPham,
            dm.MaDanhMuc,
            dm.TenDanhMuc,
            dmu.Madanhmucuudai,
            dmu.Tendanhmucuudai,
            s.TenSanPham,
            s.AnhDaiDien,
            s.Gia,
            s.GiaGiam,
            SUM(ct.SoLuong) AS SoLuong,
            s.TrongLuong,
            s.TrangThai,
            s.LuotXem,
            s.LuotBan,
            s.DanhGia,
            s.XuatXu,
            h.MaNhaSanXuat,
            h.TenHang,
            npp.MaNhaPhanPhoi,
            npp.TenNhaPhanPhoi,
            c.MoTa,
            c.ChiTiet
        INTO #Temp1
        FROM SanPhams AS s
        INNER JOIN ChiTietSanPhams c ON c.MaSanPham = s.MaSanPham
        INNER JOIN HangSanXuats h ON h.MaNhaSanXuat = c.MaNhaSanXuat
        INNER JOIN SanPhams_NhaPhanPhois sp ON sp.MaSanPham = s.MaSanPham
        INNER JOIN NhaPhanPhois npp ON npp.MaNhaPhanPhoi = sp.MaNhaPhanPhoi
        INNER JOIN DanhMucs dm ON dm.MaDanhMuc = s.MaDanhMuc
        INNER JOIN DanhMucUudais dmu ON dmu.Madanhmucuudai = s.Madanhmucuudai
        INNER JOIN ChiTietHoaDons ct ON s.MaSanPham = ct.MaSanPham
        WHERE
            (@TenSanPham = '' OR s.TenSanPham LIKE '%' + @TenSanPham + '%')
            AND (@TenDanhMuc = '' OR dm.TenDanhMuc LIKE '%' + @TenDanhMuc + '%')
            AND (@Tendanhmucuudai = '' OR dmu.Tendanhmucuudai LIKE '%' + @Tendanhmucuudai + '%')
            AND (@GiaMin = 0 OR s.Gia >= @GiaMin)
            AND (@GiaMax = 0 OR s.Gia <= @GiaMax)
            AND (@TenHang = '' OR h.TenHang LIKE '%' + @TenHang + '%')
            AND (@TenNhaPhanPhoi = '' OR npp.TenNhaPhanPhoi LIKE '%' + @TenNhaPhanPhoi + '%')
            AND (@XuatXu = '' OR s.XuatXu LIKE '%' + @XuatXu + '%')
        GROUP BY
            s.MaSanPham,
            dm.MaDanhMuc,
            dm.TenDanhMuc,
            dmu.Madanhmucuudai,
            dmu.Tendanhmucuudai,
            s.TenSanPham,
            s.AnhDaiDien,
            s.Gia,
            s.GiaGiam,
            s.TrongLuong,
            s.TrangThai,
            s.LuotXem,
            s.LuotBan,
            s.DanhGia,
            s.XuatXu,
            h.MaNhaSanXuat,
            h.TenHang,
            npp.MaNhaPhanPhoi,
            npp.TenNhaPhanPhoi,
            c.MoTa,
            c.ChiTiet;

        SELECT @RecordCount = COUNT(*)
        FROM #Temp1;

        SELECT *,
            @RecordCount AS RecordCount
        FROM #Temp1
        WHERE
            RowNumber BETWEEN (@page_index - 1) * @page_size + 1 AND ((@page_index - 1) * @page_size + 1 + @page_size) - 1
        OR @page_index = -1;

        DROP TABLE #Temp1;
    END;
    ELSE
    BEGIN
        SET NOCOUNT ON;

         SELECT
            (ROW_NUMBER() OVER (ORDER BY SUM(ct.SoLuong) DESC)) AS RowNumber,
            s.MaSanPham,
            dm.MaDanhMuc,
            dm.TenDanhMuc,
            dmu.Madanhmucuudai,
            dmu.Tendanhmucuudai,
            s.TenSanPham,
            s.AnhDaiDien,
            s.Gia,
            s.GiaGiam,
            SUM(ct.SoLuong) AS SoLuong,
            s.TrongLuong,
            s.TrangThai,
            s.LuotXem,
            s.LuotBan,
            s.DanhGia,
            s.XuatXu,
            h.MaNhaSanXuat,
            h.TenHang,
            npp.MaNhaPhanPhoi,
            npp.TenNhaPhanPhoi,
            c.MoTa,
            c.ChiTiet
        INTO #Temp2
        FROM SanPhams AS s
        INNER JOIN ChiTietSanPhams c ON c.MaSanPham = s.MaSanPham
        INNER JOIN HangSanXuats h ON h.MaNhaSanXuat = c.MaNhaSanXuat
        INNER JOIN SanPhams_NhaPhanPhois sp ON sp.MaSanPham = s.MaSanPham
        INNER JOIN NhaPhanPhois npp ON npp.MaNhaPhanPhoi = sp.MaNhaPhanPhoi
        INNER JOIN DanhMucs dm ON dm.MaDanhMuc = s.MaDanhMuc
        INNER JOIN DanhMucUudais dmu ON dmu.Madanhmucuudai = s.Madanhmucuudai
        INNER JOIN ChiTietHoaDons ct ON s.MaSanPham = ct.MaSanPham
        WHERE
            (@TenSanPham = '' OR s.TenSanPham LIKE '%' + @TenSanPham + '%')
            AND (@TenDanhMuc = '' OR dm.TenDanhMuc LIKE '%' + @TenDanhMuc + '%')
            AND (@Tendanhmucuudai = '' OR dmu.Tendanhmucuudai LIKE '%' + @Tendanhmucuudai + '%')
            AND (@GiaMin = 0 OR s.Gia >= @GiaMin)
            AND (@GiaMax = 0 OR s.Gia <= @GiaMax)
            AND (@TenHang = '' OR h.TenHang LIKE '%' + @TenHang + '%')
            AND (@TenNhaPhanPhoi = '' OR npp.TenNhaPhanPhoi LIKE '%' + @TenNhaPhanPhoi + '%')
            AND (@XuatXu = '' OR s.XuatXu LIKE '%' + @XuatXu + '%')
        GROUP BY
            s.MaSanPham,
            dm.MaDanhMuc,
            dm.TenDanhMuc,
            dmu.Madanhmucuudai,
            dmu.Tendanhmucuudai,
            s.TenSanPham,
            s.AnhDaiDien,
            s.Gia,
            s.GiaGiam,
            s.TrongLuong,
            s.TrangThai,
            s.LuotXem,
            s.LuotBan,
            s.DanhGia,
            s.XuatXu,
            h.MaNhaSanXuat,
            h.TenHang,
            npp.MaNhaPhanPhoi,
            npp.TenNhaPhanPhoi,
            c.MoTa,
            c.ChiTiet;

        SELECT @RecordCount = COUNT(*)
        FROM #Temp2;

        SELECT *,
            @RecordCount AS RecordCount
        FROM #Temp2
        DROP TABLE #Temp2;

    END;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_sanpham_search_gia_giam]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_sanpham_search_gia_giam](@page_index  INT, 
                                       @page_size   INT,
									   @TenSanPham nvarchar(150),
									   @TenDanhMuc nvarchar(50),
									   @Tendanhmucuudai nvarchar(250),
									   @GiaMin DECIMAL(18, 0),
									   @GiaMax DECIMAL(18, 0),
									   @TenHang nvarchar(50),
									   @TenNhaPhanPhoi nvarchar(250),
									   @XuatXu nvarchar(50))
AS
    BEGIN
        DECLARE @RecordCount BIGINT;
        IF(@page_size <> 0)
            BEGIN
                SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY CAST(s.GiaGiam AS DECIMAL(18, 2)) DESC)) AS RowNumber, 
                              s.MaSanPham,
							  dm.MaDanhMuc,
							  dm.TenDanhMuc,
							  dmu.Madanhmucuudai,
							  dmu.Tendanhmucuudai,
							  s.TenSanPham,
							  s.AnhDaiDien,
							  s.Gia,
							  s.GiaGiam,
							  s.SoLuong,
							  s.TrongLuong,
							  s.TrangThai,
							  s.LuotXem,
							  s.LuotBan,
							  s.DanhGia,
							  s.XuatXu,
							  h.MaNhaSanXuat,
							  h.TenHang,
							  npp.MaNhaPhanPhoi,
							  npp.TenNhaPhanPhoi,
							  c.MoTa,
							  c.ChiTiet
                        INTO #Temp1
                        FROM SanPhams AS s
						inner join ChiTietSanPhams c on c.MaSanPham = s.MaSanPham
						inner join HangSanXuats h on h.MaNhaSanXuat = c.MaNhaSanXuat
						inner join SanPhams_NhaPhanPhois sp on sp.MaSanPham = s.MaSanPham
						inner join NhaPhanPhois npp on npp.MaNhaPhanPhoi = sp.MaNhaPhanPhoi
						inner join DanhMucs dm on dm.MaDanhMuc = s.MaDanhMuc
						inner join DanhMucUudais dmu on dmu.Madanhmucuudai = s.Madanhmucuudai

					    WHERE (@TenSanPham = '' or s.TenSanPham like '%'+@TenSanPham +'%')
							and (@TenDanhMuc = '' or dm.TenDanhMuc like '%'+@TenDanhMuc +'%')
							and (@Tendanhmucuudai = '' or dmu.Tendanhmucuudai like '%'+@Tendanhmucuudai +'%')
							and (@GiaMin = 0 OR s.Gia >= @GiaMin)
							 and (@GiaMax = 0 OR s.Gia <= @GiaMax)
							and (@TenHang = '' or h.TenHang like '%'+@TenHang +'%')
							and (@TenNhaPhanPhoi = '' or npp.TenNhaPhanPhoi like '%'+@TenNhaPhanPhoi +'%')
							and (@XuatXu = '' or s.XuatXu like '%'+@XuatXu +'%')
						
                        SELECT @RecordCount = COUNT(*)
                        FROM #Temp1;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Temp1
                        WHERE ROWNUMBER BETWEEN(@page_index - 1) * @page_size + 1 AND(((@page_index - 1) * @page_size + 1) + @page_size) - 1
                              OR @page_index = -1;
                        DROP TABLE #Temp1; 
            END;
            ELSE
            BEGIN
                SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY CAST(s.GiaGiam AS DECIMAL(18, 2)) DESC)) AS RowNumber, 
                              s.MaSanPham,
							  dm.MaDanhMuc,
							  dm.TenDanhMuc,
							  dmu.Madanhmucuudai,
							  dmu.Tendanhmucuudai,
							  s.TenSanPham,
							  s.AnhDaiDien,
							  s.Gia,
							  s.GiaGiam,
							  s.SoLuong,
							  s.TrongLuong,
							  s.TrangThai,
							  s.LuotXem,
							  s.LuotBan,
							  s.DanhGia,
							  s.XuatXu,
							  h.MaNhaSanXuat,
							  h.TenHang,
							  npp.MaNhaPhanPhoi,
							  npp.TenNhaPhanPhoi,
							  c.MoTa,
							  c.ChiTiet
                        INTO #Temp2
                        FROM SanPhams AS s
						inner join ChiTietSanPhams c on c.MaSanPham = s.MaSanPham
						inner join HangSanXuats h on h.MaNhaSanXuat = c.MaNhaSanXuat
						inner join SanPhams_NhaPhanPhois sp on sp.MaSanPham = s.MaSanPham
						inner join NhaPhanPhois npp on npp.MaNhaPhanPhoi = sp.MaNhaPhanPhoi
						inner join DanhMucs dm on dm.MaDanhMuc = s.MaDanhMuc
						inner join DanhMucUudais dmu on dmu.Madanhmucuudai = s.Madanhmucuudai

					    WHERE (@TenSanPham = '' or s.TenSanPham like '%'+@TenSanPham +'%')
							and (@TenDanhMuc = '' or dm.TenDanhMuc like '%'+@TenDanhMuc +'%')
							and (@Tendanhmucuudai = '' or dmu.Tendanhmucuudai like '%'+@Tendanhmucuudai +'%')
							and (@GiaMin = 0 OR s.Gia >= @GiaMin)
							 and (@GiaMax = 0 OR s.Gia <= @GiaMax)
							and (@TenHang = '' or h.TenHang like '%'+@TenHang +'%')
							and (@TenNhaPhanPhoi = '' or npp.TenNhaPhanPhoi like '%'+@TenNhaPhanPhoi +'%')
							and (@XuatXu = '' or s.XuatXu like '%'+@XuatXu +'%')

                        SELECT @RecordCount = COUNT(*)
                        FROM #Temp2;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Temp2
                        DROP TABLE #Temp2; 
        END;
    END;
GO
/****** Object:  StoredProcedure [dbo].[sp_sanpham_search_gia_tang]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_sanpham_search_gia_tang](@page_index  INT, 
                                       @page_size   INT,
									   @TenSanPham nvarchar(150),
									   @TenDanhMuc nvarchar(50),
									   @Tendanhmucuudai nvarchar(250),
									   @GiaMin DECIMAL(18, 0),
									   @GiaMax DECIMAL(18, 0),
									   @TenHang nvarchar(50),
									   @TenNhaPhanPhoi nvarchar(250),
									   @XuatXu nvarchar(50))
AS
    BEGIN
        DECLARE @RecordCount BIGINT;
        IF(@page_size <> 0)
            BEGIN
                SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY CAST(s.GiaGiam AS DECIMAL(18, 0)) ASC)) AS RowNumber, 
                              s.MaSanPham,
							  dm.MaDanhMuc,
							  dm.TenDanhMuc,
							  dmu.Madanhmucuudai,
							  dmu.Tendanhmucuudai,
							  s.TenSanPham,
							  s.AnhDaiDien,
							  s.Gia,
							  s.GiaGiam,
							  s.SoLuong,
							  s.TrongLuong,
							  s.TrangThai,
							  s.LuotXem,
							  s.LuotBan,
							  s.DanhGia,
							  s.XuatXu,
							  h.MaNhaSanXuat,
							  h.TenHang,
							  npp.MaNhaPhanPhoi,
							  npp.TenNhaPhanPhoi,
							  c.MoTa,
							  c.ChiTiet
                        INTO #Temp1
                        FROM SanPhams AS s
						inner join ChiTietSanPhams c on c.MaSanPham = s.MaSanPham
						inner join HangSanXuats h on h.MaNhaSanXuat = c.MaNhaSanXuat
						inner join SanPhams_NhaPhanPhois sp on sp.MaSanPham = s.MaSanPham
						inner join NhaPhanPhois npp on npp.MaNhaPhanPhoi = sp.MaNhaPhanPhoi
						inner join DanhMucs dm on dm.MaDanhMuc = s.MaDanhMuc
						inner join DanhMucUudais dmu on dmu.Madanhmucuudai = s.Madanhmucuudai

					    WHERE (@TenSanPham = '' or s.TenSanPham like '%'+@TenSanPham +'%')
							and (@TenDanhMuc = '' or dm.TenDanhMuc like '%'+@TenDanhMuc +'%')
							and (@Tendanhmucuudai = '' or dmu.Tendanhmucuudai like '%'+@Tendanhmucuudai +'%')
							and (@GiaMin = 0 OR s.Gia >= @GiaMin)
							 and (@GiaMax = 0 OR s.Gia <= @GiaMax)
							and (@TenHang = '' or h.TenHang like '%'+@TenHang +'%')
							and (@TenNhaPhanPhoi = '' or npp.TenNhaPhanPhoi like '%'+@TenNhaPhanPhoi +'%')
							and (@XuatXu = '' or s.XuatXu like '%'+@XuatXu +'%')
						
                        SELECT @RecordCount = COUNT(*)
                        FROM #Temp1;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Temp1
                        WHERE ROWNUMBER BETWEEN(@page_index - 1) * @page_size + 1 AND(((@page_index - 1) * @page_size + 1) + @page_size) - 1
                              OR @page_index = -1;
                        DROP TABLE #Temp1; 
            END;
            ELSE
            BEGIN
                SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY CAST(s.GiaGiam AS DECIMAL(18, 0)) ASC)) AS RowNumber, 
                              s.MaSanPham,
							  dm.MaDanhMuc,
							  dm.TenDanhMuc,
							  dmu.Madanhmucuudai,
							  dmu.Tendanhmucuudai,
							  s.TenSanPham,
							  s.AnhDaiDien,
							  s.Gia,
							  s.GiaGiam,
							  s.SoLuong,
							  s.TrongLuong,
							  s.TrangThai,
							  s.LuotXem,
							  s.LuotBan,
							  s.DanhGia,
							  s.XuatXu,
							  h.MaNhaSanXuat,
							  h.TenHang,
							  npp.MaNhaPhanPhoi,
							  npp.TenNhaPhanPhoi,
							  c.MoTa,
							  c.ChiTiet
                        INTO #Temp2
                        FROM SanPhams AS s
						inner join ChiTietSanPhams c on c.MaSanPham = s.MaSanPham
						inner join HangSanXuats h on h.MaNhaSanXuat = c.MaNhaSanXuat
						inner join SanPhams_NhaPhanPhois sp on sp.MaSanPham = s.MaSanPham
						inner join NhaPhanPhois npp on npp.MaNhaPhanPhoi = sp.MaNhaPhanPhoi
						inner join DanhMucs dm on dm.MaDanhMuc = s.MaDanhMuc
						inner join DanhMucUudais dmu on dmu.Madanhmucuudai = s.Madanhmucuudai

					    WHERE (@TenSanPham = '' or s.TenSanPham like '%'+@TenSanPham +'%')
							and (@TenDanhMuc = '' or dm.TenDanhMuc like '%'+@TenDanhMuc +'%')
							and (@Tendanhmucuudai = '' or dmu.Tendanhmucuudai like '%'+@Tendanhmucuudai +'%')
							and (@GiaMin = 0 OR s.Gia >= @GiaMin)
							 and (@GiaMax = 0 OR s.Gia <= @GiaMax)
							and (@TenHang = '' or h.TenHang like '%'+@TenHang +'%')
							and (@TenNhaPhanPhoi = '' or npp.TenNhaPhanPhoi like '%'+@TenNhaPhanPhoi +'%')
							and (@XuatXu = '' or s.XuatXu like '%'+@XuatXu +'%')

                        SELECT @RecordCount = COUNT(*)
                        FROM #Temp2;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Temp2
                        DROP TABLE #Temp2; 
        END;
    END;
GO
/****** Object:  StoredProcedure [dbo].[sp_sanpham_search_luotxem_nhieu]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_sanpham_search_luotxem_nhieu](@page_index  INT, 
                                       @page_size   INT,
									   @TenSanPham nvarchar(150),
									   @TenDanhMuc nvarchar(50),
									   @Tendanhmucuudai nvarchar(250),
									   @GiaMin DECIMAL(18, 0),
									   @GiaMax DECIMAL(18, 0),
									   @TenHang nvarchar(50),
									   @TenNhaPhanPhoi nvarchar(250),
									   @XuatXu nvarchar(50))
AS
    BEGIN
        DECLARE @RecordCount BIGINT;
        IF(@page_size <> 0)
            BEGIN
                SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY s.LuotXem DESC)) AS RowNumber, 
                              s.MaSanPham,
							  dm.MaDanhMuc,
							  dm.TenDanhMuc,
							  dmu.Madanhmucuudai,
							  dmu.Tendanhmucuudai,
							  s.TenSanPham,
							  s.AnhDaiDien,
							  s.Gia,
							  s.GiaGiam,
							  s.SoLuong,
							  s.TrongLuong,
							  s.TrangThai,
							  s.LuotXem,
							  s.LuotBan,
							  s.DanhGia,
							  s.XuatXu,
							  h.MaNhaSanXuat,
							  h.TenHang,
							  npp.MaNhaPhanPhoi,
							  npp.TenNhaPhanPhoi,
							  c.MoTa,
							  c.ChiTiet
                        INTO #Temp1
                        FROM SanPhams AS s
						inner join ChiTietSanPhams c on c.MaSanPham = s.MaSanPham
						inner join HangSanXuats h on h.MaNhaSanXuat = c.MaNhaSanXuat
						inner join SanPhams_NhaPhanPhois sp on sp.MaSanPham = s.MaSanPham
						inner join NhaPhanPhois npp on npp.MaNhaPhanPhoi = sp.MaNhaPhanPhoi
						inner join DanhMucs dm on dm.MaDanhMuc = s.MaDanhMuc
						inner join DanhMucUudais dmu on dmu.Madanhmucuudai = s.Madanhmucuudai

					    WHERE (@TenSanPham = '' or s.TenSanPham like '%'+@TenSanPham +'%')
							and (@TenDanhMuc = '' or dm.TenDanhMuc like '%'+@TenDanhMuc +'%')
							and (@Tendanhmucuudai = '' or dmu.Tendanhmucuudai like '%'+@Tendanhmucuudai +'%')
							and (@GiaMin = 0 OR s.Gia >= @GiaMin)
							 and (@GiaMax = 0 OR s.Gia <= @GiaMax)
							and (@TenHang = '' or h.TenHang like '%'+@TenHang +'%')
							and (@TenNhaPhanPhoi = '' or npp.TenNhaPhanPhoi like '%'+@TenNhaPhanPhoi +'%')
							and (@XuatXu = '' or s.XuatXu like '%'+@XuatXu +'%')
						
                        SELECT @RecordCount = COUNT(*)
                        FROM #Temp1;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Temp1
                        WHERE ROWNUMBER BETWEEN(@page_index - 1) * @page_size + 1 AND(((@page_index - 1) * @page_size + 1) + @page_size) - 1
                              OR @page_index = -1;
                        DROP TABLE #Temp1; 
            END;
            ELSE
            BEGIN
                SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY s.LuotXem DESC)) AS RowNumber, 
                              s.MaSanPham,
							  dm.MaDanhMuc,
							  dm.TenDanhMuc,
							  dmu.Madanhmucuudai,
							  dmu.Tendanhmucuudai,
							  s.TenSanPham,
							  s.AnhDaiDien,
							  s.Gia,
							  s.GiaGiam,
							  s.SoLuong,
							  s.TrongLuong,
							  s.TrangThai,
							  s.LuotXem,
							  s.LuotBan,
							  s.DanhGia,
							  s.XuatXu,
							  h.MaNhaSanXuat,
							  h.TenHang,
							  npp.MaNhaPhanPhoi,
							  npp.TenNhaPhanPhoi,
							  c.MoTa,
							  c.ChiTiet
                        INTO #Temp2
                        FROM SanPhams AS s
						inner join ChiTietSanPhams c on c.MaSanPham = s.MaSanPham
						inner join HangSanXuats h on h.MaNhaSanXuat = c.MaNhaSanXuat
						inner join SanPhams_NhaPhanPhois sp on sp.MaSanPham = s.MaSanPham
						inner join NhaPhanPhois npp on npp.MaNhaPhanPhoi = sp.MaNhaPhanPhoi
						inner join DanhMucs dm on dm.MaDanhMuc = s.MaDanhMuc
						inner join DanhMucUudais dmu on dmu.Madanhmucuudai = s.Madanhmucuudai

					    WHERE (@TenSanPham = '' or s.TenSanPham like '%'+@TenSanPham +'%')
							and (@TenDanhMuc = '' or dm.TenDanhMuc like '%'+@TenDanhMuc +'%')
							and (@Tendanhmucuudai = '' or dmu.Tendanhmucuudai like '%'+@Tendanhmucuudai +'%')
							and (@GiaMin = 0 OR s.Gia >= @GiaMin)
							 and (@GiaMax = 0 OR s.Gia <= @GiaMax)
							and (@TenHang = '' or h.TenHang like '%'+@TenHang +'%')
							and (@TenNhaPhanPhoi = '' or npp.TenNhaPhanPhoi like '%'+@TenNhaPhanPhoi +'%')
							and (@XuatXu = '' or s.XuatXu like '%'+@XuatXu +'%')

                        SELECT @RecordCount = COUNT(*)
                        FROM #Temp2;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Temp2
                        DROP TABLE #Temp2; 
        END;
    END;
GO
/****** Object:  StoredProcedure [dbo].[sp_sanpham_single_search]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_sanpham_single_search](@page_index  INT, 
                                       @page_size   INT,
									   @TenSanPham nvarchar(150),
									   @Gia decimal(18, 0))
AS
    BEGIN
        DECLARE @RecordCount BIGINT;
        IF(@page_size <> 0)
            BEGIN
                SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY s.MaSanPham DESC)) AS RowNumber, 
                              s.MaSanPham,
							  s.TenSanPham,
							  s.AnhDaiDien,
							  s.Gia,
							  s.GiaGiam,
							  s.SoLuong,
							  s.TrongLuong,
							  s.TrangThai,
							  s.LuotXem,
							  s.LuotBan,
							  s.DanhGia
                        INTO #Temp1
                        FROM SanPhams AS s

					    WHERE (@TenSanPham = '' or s.TenSanPham like '%'+@TenSanPham +'%')
							and (@Gia = 0 or s.Gia = @Gia)
						
                        SELECT @RecordCount = COUNT(*)
                        FROM #Temp1;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Temp1
                        WHERE ROWNUMBER BETWEEN(@page_index - 1) * @page_size + 1 AND(((@page_index - 1) * @page_size + 1) + @page_size) - 1
                              OR @page_index = -1;
                        DROP TABLE #Temp1; 
            END;
            ELSE
            BEGIN
                SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY s.MaSanPham DESC)) AS RowNumber, 
                              s.MaSanPham,
							  s.TenSanPham,
							  s.AnhDaiDien,
							  s.Gia,
							  s.GiaGiam,
							  s.SoLuong,
							  s.TrongLuong,
							  s.TrangThai,
							  s.LuotXem,
							  s.LuotBan,
							  s.DanhGia
                        INTO #Temp2
                        FROM SanPhams AS s

					    WHERE (@TenSanPham = '' or s.TenSanPham like '%'+@TenSanPham +'%')
							and (@Gia = 0 or s.Gia = @Gia)

                        SELECT @RecordCount = COUNT(*)
                        FROM #Temp2;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Temp2
                        DROP TABLE #Temp2; 
        END;
    END;
GO
/****** Object:  StoredProcedure [dbo].[sp_sanphambanchamtrong]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_sanphambanchamtrong](@Ngay int)
as
begin
	DECLARE @StartDate DATETIME = DATEADD(DAY, -@Ngay, GETDATE());

    SELECT TOP (1000)
           ct.MaSanPham,
           sp.TenSanPham,
           sp.AnhDaiDien,
           sp.Gia,
           sp.GiaGiam,
		   sp.LuotBan,
		   sp.DanhGia,
           sp.TrongLuong,
           dmu.Tendanhmucuudai,
           dm.TenDanhMuc,
           sp.SoLuong
    FROM HoaDons hd
        INNER JOIN ChiTietHoaDons ct ON ct.MaHoaDon = hd.MaHoaDon
        INNER JOIN SanPhams sp ON sp.MaSanPham = ct.MaSanPham
        INNER JOIN DanhMucs dm ON dm.MaDanhMuc = sp.MaDanhMuc
        INNER JOIN DanhMucUudais dmu ON dmu.Madanhmucuudai = sp.Madanhmucuudai
    WHERE hd.NgayTao >= @StartDate AND hd.NgayTao <= GETDATE()
    GROUP BY ct.MaSanPham, sp.TenSanPham, sp.AnhDaiDien, sp.Gia, sp.GiaGiam, sp.TrongLuong, dmu.Tendanhmucuudai, dm.TenDanhMuc,sp.LuotBan,sp.DanhGia,sp.SoLuong
    HAVING SUM(ct.SoLuong) < 5
    ORDER BY soluong DESC;
end
GO
/****** Object:  StoredProcedure [dbo].[sp_sanphambanchamtrong60ngay]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_sanphambanchamtrong60ngay]
as
begin
	DECLARE @StartDate DATETIME = DATEADD(DAY, -60, GETDATE());

    SELECT TOP (1000)
           ct.MaSanPham,
           sp.TenSanPham,
           sp.AnhDaiDien,
           sp.Gia,
           sp.GiaGiam,
           sp.TrongLuong,
           dmu.Tendanhmucuudai,
           dm.TenDanhMuc,
           SUM(ct.SoLuong) AS soluong
    FROM HoaDons hd
        INNER JOIN ChiTietHoaDons ct ON ct.MaHoaDon = hd.MaHoaDon
        INNER JOIN SanPhams sp ON sp.MaSanPham = ct.MaSanPham
        INNER JOIN DanhMucs dm ON dm.MaDanhMuc = sp.MaDanhMuc
        INNER JOIN DanhMucUudais dmu ON dmu.Madanhmucuudai = sp.Madanhmucuudai
    WHERE hd.NgayTao >= @StartDate AND hd.NgayTao <= GETDATE()
    GROUP BY ct.MaSanPham, sp.TenSanPham, sp.AnhDaiDien, sp.Gia, sp.GiaGiam, sp.TrongLuong, dmu.Tendanhmucuudai, dm.TenDanhMuc
    HAVING SUM(ct.SoLuong) < 5
    ORDER BY soluong DESC;
end
GO
/****** Object:  StoredProcedure [dbo].[sp_sanphambanchaytrong]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_sanphambanchaytrong](@ngay int)
as
begin
	DECLARE @StartDate DATETIME
	IF @Ngay = 0
    BEGIN
        SET @StartDate = CAST(GETDATE() AS DATE);
    END
    ELSE
    BEGIN
        SET @StartDate = DATEADD(DAY, -@Ngay, GETDATE());
    END

    SELECT TOP (100)
           ct.MaSanPham,
           sp.TenSanPham,
           sp.AnhDaiDien,
           sp.Gia,
           sp.GiaGiam,
		   sp.LuotBan,
		   sp.DanhGia,
           sp.TrongLuong,
           dmu.Tendanhmucuudai,
           dm.TenDanhMuc,
           sp.SoLuong
    FROM HoaDons hd
        INNER JOIN ChiTietHoaDons ct ON ct.MaHoaDon = hd.MaHoaDon
        INNER JOIN SanPhams sp ON sp.MaSanPham = ct.MaSanPham
        INNER JOIN DanhMucs dm ON dm.MaDanhMuc = sp.MaDanhMuc
        INNER JOIN DanhMucUudais dmu ON dmu.Madanhmucuudai = sp.Madanhmucuudai
    WHERE hd.NgayTao >= @StartDate AND hd.NgayTao <= GETDATE()
    GROUP BY ct.MaSanPham, sp.TenSanPham, sp.AnhDaiDien, sp.Gia, sp.GiaGiam, sp.TrongLuong, dmu.Tendanhmucuudai, dm.TenDanhMuc,sp.LuotBan,sp.DanhGia,sp.SoLuong
    HAVING SUM(ct.SoLuong) > 10
    ORDER BY soluong DESC;
end
GO
/****** Object:  StoredProcedure [dbo].[sp_sanphambanchaytrongthang]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_sanphambanchaytrongthang]
as
begin
	DECLARE @StartDate DATETIME = DATEADD(DAY, -30, GETDATE());

    SELECT TOP (100)
           ct.MaSanPham,
           sp.TenSanPham,
           sp.AnhDaiDien,
           sp.Gia,
           sp.GiaGiam,
           sp.TrongLuong,
           dmu.Tendanhmucuudai,
           dm.TenDanhMuc,
           SUM(ct.SoLuong) AS soluong
    FROM HoaDons hd
        INNER JOIN ChiTietHoaDons ct ON ct.MaHoaDon = hd.MaHoaDon
        INNER JOIN SanPhams sp ON sp.MaSanPham = ct.MaSanPham
        INNER JOIN DanhMucs dm ON dm.MaDanhMuc = sp.MaDanhMuc
        INNER JOIN DanhMucUudais dmu ON dmu.Madanhmucuudai = sp.Madanhmucuudai
    WHERE hd.NgayTao >= @StartDate AND hd.NgayTao <= GETDATE()
    GROUP BY ct.MaSanPham, sp.TenSanPham, sp.AnhDaiDien, sp.Gia, sp.GiaGiam, sp.TrongLuong, dmu.Tendanhmucuudai, dm.TenDanhMuc
    HAVING SUM(ct.SoLuong) > 10
    ORDER BY soluong DESC;
end
GO
/****** Object:  StoredProcedure [dbo].[sp_sanphamdabantrong]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_sanphamdabantrong](@Ngay int)
as
begin
	DECLARE @StartDate DATETIME
	IF @Ngay = 0
    BEGIN
        SET @StartDate = CAST(GETDATE() AS DATE);
    END
    ELSE
    BEGIN
        SET @StartDate = DATEADD(DAY, -@Ngay, GETDATE());
    END
    SELECT TOP (1000)
           ct.MaSanPham,
           sp.TenSanPham,
           sp.AnhDaiDien,
           sp.Gia,
           sp.GiaGiam,
		   sp.LuotBan,
		   sp.SoLuong,
		   sp.DanhGia,
           sp.TrongLuong,
           dmu.Tendanhmucuudai,
           dm.TenDanhMuc
    FROM HoaDons hd
        INNER JOIN ChiTietHoaDons ct ON ct.MaHoaDon = hd.MaHoaDon
        INNER JOIN SanPhams sp ON sp.MaSanPham = ct.MaSanPham
        INNER JOIN DanhMucs dm ON dm.MaDanhMuc = sp.MaDanhMuc
        INNER JOIN DanhMucUudais dmu ON dmu.Madanhmucuudai = sp.Madanhmucuudai
   WHERE hd.NgayTao >= @StartDate AND hd.NgayTao <= GETDATE()
    GROUP BY ct.MaSanPham, sp.TenSanPham, sp.AnhDaiDien, sp.Gia, sp.GiaGiam, sp.TrongLuong, dmu.Tendanhmucuudai, dm.TenDanhMuc,sp.LuotBan,sp.DanhGia,sp.SoLuong
    ORDER BY soluong DESC;
end
GO
/****** Object:  StoredProcedure [dbo].[sp_sanphamdabantrongthang]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_sanphamdabantrongthang]
as
begin
    SELECT TOP (1000)
           ct.MaSanPham,
           sp.TenSanPham,
           sp.AnhDaiDien,
           sp.Gia,
           sp.GiaGiam,
           sp.TrongLuong,
           dmu.Tendanhmucuudai,
           dm.TenDanhMuc,
           SUM(ct.SoLuong) AS soluong
    FROM HoaDons hd
        INNER JOIN ChiTietHoaDons ct ON ct.MaHoaDon = hd.MaHoaDon
        INNER JOIN SanPhams sp ON sp.MaSanPham = ct.MaSanPham
        INNER JOIN DanhMucs dm ON dm.MaDanhMuc = sp.MaDanhMuc
        INNER JOIN DanhMucUudais dmu ON dmu.Madanhmucuudai = sp.Madanhmucuudai
    WHERE MONTH(hd.NgayTao) = MONTH(GETDATE()) AND YEAR(hd.NgayTao) = YEAR(GETDATE())
    GROUP BY ct.MaSanPham, sp.TenSanPham, sp.AnhDaiDien, sp.Gia, sp.GiaGiam, sp.TrongLuong, dmu.Tendanhmucuudai, dm.TenDanhMuc
    ORDER BY soluong DESC;
end
GO
/****** Object:  StoredProcedure [dbo].[sp_sanphamsaphet]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_sanphamsaphet]
as
begin
	select top(100) sp.MaSanPham,sp.TenSanPham,sp.AnhDaiDien,sp.Gia,sp.GiaGiam,sp.LuotBan,sp.DanhGia,sp.TrongLuong,dm.TenDanhMuc,dmu.Tendanhmucuudai,sp.SoLuong
	from SanPhams sp
	inner join DanhMucs dm on dm.MaDanhMuc = sp.MaDanhMuc
	inner join DanhMucUudais dmu on dmu.Madanhmucuudai = sp.Madanhmucuudai
	where SoLuong < 20
	ORDER BY soluong ASC
end
GO
/****** Object:  StoredProcedure [dbo].[sp_sanphamuathich]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_sanphamuathich]
as
begin
	SELECT Top(10) ctsp.MoTa,sp.LuotBan,sp.XuatXu,ct.MaSanPham,sp.TenSanPham,sp.AnhDaiDien,sp.Gia,sp.GiaGiam,sp.LuotXem,sp.DanhGia,sp.TrongLuong,dmu.Tendanhmucuudai,dm.TenDanhMuc, SUM(ct.SoLuong) AS SoLuong
	FROM HoaDons hd
	inner join ChiTietHoaDons ct on ct.MaHoaDon = hd.MaHoaDon
	inner join SanPhams sp on sp.MaSanPham = ct.MaSanPham
	inner join DanhMucs dm on dm.MaDanhMuc = sp.MaDanhMuc
	inner join DanhMucUudais dmu on dmu.Madanhmucuudai = sp.Madanhmucuudai
	inner join ChiTietSanPhams ctsp on ctsp.MaSanPham = sp.MaSanPham
	GROUP BY ctsp.MoTa,sp.LuotBan,sp.XuatXu,ct.MaSanPham,sp.TenSanPham,sp.AnhDaiDien,sp.Gia,sp.GiaGiam,sp.LuotXem,sp.DanhGia,sp.TrongLuong,dmu.Tendanhmucuudai,dm.TenDanhMuc
	having SUM(ct.SoLuong) > 10
	ORDER BY soluong DESC
end
GO
/****** Object:  StoredProcedure [dbo].[sp_search_danhgia]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_search_danhgia](@page_index  int, 
                                       @page_size   int,
									   @ChatLuong int,
									   @NoiDung nvarchar(MAX),
									   @fr_NgayTao datetime,
									   @to_NgayTao datetime)
AS
    BEGIN
        DECLARE @RecordCount BIGINT;
        IF(@page_size <> 0)
            BEGIN
                SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY MaDanhGia ASC)) AS RowNumber, 
                              dg.*, sp.TenSanPham,cttk.HoTen
                        INTO #Temp1
                        from DanhGia dg 
							inner join SanPhams sp on dg.MaSanPham = sp.MaSanPham
							inner join TaiKhoans tk on tk.MaTaiKhoan = dg.MaTaiKhoan
							inner join ChiTietTaiKhoans cttk on cttk.MaTaiKhoan = tk.MaTaiKhoan

					    WHERE ((@ChatLuong = 0) OR (dg.ChatLuong like @ChatLuong))
							and (@NoiDung = '' or dg.NoiDung like N'%'+@NoiDung +'%')
							 and ((@fr_NgayTao is null and @to_NgayTao is null 
								or (@fr_NgayTao is not null
								and @to_NgayTao is null and
								dg.ThoiGian >= @fr_NgayTao)
								or @fr_NgayTao is null and @to_NgayTao is not null 
								and dg.ThoiGian < @to_NgayTao
								or dg.ThoiGian between @fr_NgayTao and @to_NgayTao))
					
                        SELECT @RecordCount = COUNT(*)
                        FROM #Temp1;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Temp1
                        WHERE ROWNUMBER BETWEEN(@page_index - 1) * @page_size + 1 AND(((@page_index - 1) * @page_size + 1) + @page_size) - 1
                              OR @page_index = -1;
                        DROP TABLE #Temp1; 
            END;
            ELSE
            BEGIN
                SET NOCOUNT ON;
                         SELECT(ROW_NUMBER() OVER(
                              ORDER BY MaDanhGia ASC)) AS RowNumber, 
                              dg.*, sp.TenSanPham,cttk.HoTen
                        INTO #Temp2
                        from DanhGia dg 
							inner join SanPhams sp on dg.MaSanPham = sp.MaSanPham
							inner join TaiKhoans tk on tk.MaTaiKhoan = dg.MaTaiKhoan
							inner join ChiTietTaiKhoans cttk on cttk.MaTaiKhoan = tk.MaTaiKhoan

					     WHERE ((@ChatLuong = 0) OR (dg.ChatLuong like @ChatLuong))
							and (@NoiDung = '' or dg.NoiDung like N'%'+@NoiDung +'%')
							 and ((@fr_NgayTao is null and @to_NgayTao is null 
								or (@fr_NgayTao is not null
								and @to_NgayTao is null and
								dg.ThoiGian >= @fr_NgayTao)
								or @fr_NgayTao is null and @to_NgayTao is not null 
								and dg.ThoiGian < @to_NgayTao
								or dg.ThoiGian between @fr_NgayTao and @to_NgayTao))
					
                        SELECT @RecordCount = COUNT(*)
                        FROM #Temp2;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Temp2
                        DROP TABLE #Temp2; 
        END;
    END;
GO

/****** Object:  StoredProcedure [dbo].[sp_search_hoadonnhap_single]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_search_hoadonnhap_single](@page_index  INT, 
                                       @page_size   INT,
									   @TenNhaPhanPhoi nvarchar(250),
									   @fr_NgayTao datetime,
									   @to_NgayTao datetime)
AS
    BEGIN
        DECLARE @RecordCount BIGINT;
        IF(@page_size <> 0)
            BEGIN
                SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY h.MaHoaDon DESC)) AS RowNumber, 
							  h.*,
							  npp.TenNhaPhanPhoi,
							  tk.TenTaiKhoan
                        INTO #Results
                        FROM HoaDonNhaps AS h
						inner join NhaPhanPhois npp on h.MaNhaPhanPhoi = npp.MaNhaPhanPhoi
						inner join TaiKhoans tk on tk.MaTaiKhoan = h.MaTaiKhoan
					     WHERE(@TenNhaPhanPhoi = '' OR npp.TenNhaPhanPhoi LIKE N'%' + @TenNhaPhanPhoi + '%')
							and ((@fr_NgayTao is null and @to_NgayTao is null 
								or (@fr_NgayTao is not null
								and @to_NgayTao is null and
								h.NgayTao >= @fr_NgayTao)
								or @fr_NgayTao is null and @to_NgayTao is not null 
								and h.NgayTao < @to_NgayTao
								or h.NgayTao between @fr_NgayTao and @to_NgayTao))
                        SELECT @RecordCount = COUNT(*)
                        FROM #Results;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results
                        WHERE ROWNUMBER BETWEEN(@page_index - 1) * @page_size + 1 AND(((@page_index - 1) * @page_size + 1) + @page_size) - 1
                              OR @page_index = -1;
                        DROP TABLE #Results; 
            END;
            ELSE
            BEGIN
                SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY h.MaHoaDon DESC)) AS RowNumber, 
							  h.*,
							  npp.TenNhaPhanPhoi,
							  tk.TenTaiKhoan
                        INTO #Results2
                        FROM HoaDonNhaps AS h
						inner join NhaPhanPhois npp on h.MaNhaPhanPhoi = npp.MaNhaPhanPhoi
						inner join TaiKhoans tk on tk.MaTaiKhoan = h.MaTaiKhoan
					    WHERE (@TenNhaPhanPhoi = '' OR npp.TenNhaPhanPhoi LIKE N'%' + @TenNhaPhanPhoi + '%')
							and ((@fr_NgayTao is null and @to_NgayTao is null 
								or (@fr_NgayTao is not null
								and @to_NgayTao is null and
								h.NgayTao >= @fr_NgayTao)
								or @fr_NgayTao is null and @to_NgayTao is not null 
								and h.NgayTao < @to_NgayTao
								or h.NgayTao between @fr_NgayTao and @to_NgayTao))
                        SELECT @RecordCount = COUNT(*)
                        FROM #Results2;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results2
                        DROP TABLE #Results2; 
		END

    END;
GO
/****** Object:  StoredProcedure [dbo].[sp_searchslide]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_searchslide](@page_index  INT, 
                                       @page_size   INT,
									   @TieuDe nvarchar(MAX))
AS
    BEGIN
        DECLARE @RecordCount BIGINT;
        IF(@page_size <> 0)
            BEGIN
                SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY a.MaAnh DESC)) AS RowNumber, 
                              a.*
                        INTO #Temp1
                        FROM SlideDetail as a
					    WHERE (@TieuDe = '' or a.TieuDe like '%'+@TieuDe +'%')
						
                        SELECT @RecordCount = COUNT(*)
                        FROM #Temp1;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Temp1
                        WHERE ROWNUMBER BETWEEN(@page_index - 1) * @page_size + 1 AND(((@page_index - 1) * @page_size + 1) + @page_size) - 1
                              OR @page_index = -1;
                        DROP TABLE #Temp1; 
            END;
            ELSE
            BEGIN
                SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY a.MaAnh DESC)) AS RowNumber, 
                              a.*
                        INTO #Temp2
                        FROM SlideDetail as a
					    WHERE (@TieuDe = '' or a.TieuDe like '%'+@TieuDe +'%')
						
                        SELECT @RecordCount = COUNT(*)
                        FROM #Temp2;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Temp2
                        DROP TABLE #Temp2; 
        END;
    END;
GO
/****** Object:  StoredProcedure [dbo].[sp_sua_cai_dat]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-------------------------------------------------------------------------------------------------------------------------------
create proc [dbo].[sp_sua_cai_dat](@Id int,
@Logo nvarchar(MAX),
@GioLamViec nvarchar(50),
@GiaoHang nvarchar(50),
@HoanTien nvarchar(50),
@SDTLienHe nvarchar(50),
@EmailLienHe nvarchar(50),
@FaceBook nvarchar(MAX),
@GooglePlus nvarchar(MAX),
@Twiter nvarchar(MAX),
@YouTube nvarchar(MAX),
@Instargram nvarchar(MAX),
@GoogleMap nvarchar(MAX),
@MatKhauMail nvarchar(50))
as
begin
	update CaiDats
	set	Logo=@Logo,GioLamViec=@GioLamViec,GiaoHang=@GiaoHang,HoanTien=@HoanTien,SDTLienHe=@SDTLienHe,EmailLienHe=@EmailLienHe,FaceBook=@FaceBook,
	GooglePlus=@GooglePlus,Twiter=@Twiter,Youtube=@YouTube,Instargram=@Instargram,GoogleMap=@GoogleMap,MatKhauMail=@MatKhauMail
	where Id = @Id
end
GO
/****** Object:  StoredProcedure [dbo].[sp_sua_chitiettaikhoan]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-------------------------------------------------------------------------------------------------------------------------------
create proc [dbo].[sp_sua_chitiettaikhoan](@MaChitietTaiKhoan int,
@HoTen nvarchar(50),
@DiaChi nvarchar(250),
@SoDienThoai nvarchar(11),
@AnhDaiDien nvarchar(500))
as
begin
	update ChiTietTaiKhoans
	set HoTen = @HoTen, DiaChi = @DiaChi, SoDienThoai = @SoDienThoai, AnhDaiDien = @AnhDaiDien
	where MaChitietTaiKhoan = @MaChitietTaiKhoan
end
GO
/****** Object:  StoredProcedure [dbo].[sp_sua_danhmuc]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_sua_danhmuc](@MaDanhMuc int,
@TenDanhMuc nvarchar(250),@Dacbiet bit,@NoiDung nvarchar(MAX))
as
begin
	update DanhMucs
	set TenDanhMuc = @TenDanhMuc, DacBiet = @Dacbiet, NoiDung = @NoiDung
	where MaDanhMuc = @MaDanhMuc
end
GO
/****** Object:  StoredProcedure [dbo].[sp_sua_danhmucuudai]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-------------------------------------------------------------------------------------------------------------------------------
create proc [dbo].[sp_sua_danhmucuudai](@Madanhmucuudai int,
@Tendanhmucuudai nvarchar(250),@Dacbiet bit,@NoiDung nvarchar(MAX))
as
begin
	update DanhMucUudais
	set Tendanhmucuudai = @Tendanhmucuudai, DacBiet = @Dacbiet, NoiDung = @NoiDung
	where Madanhmucuudai = @Madanhmucuudai
end
GO
/****** Object:  StoredProcedure [dbo].[sp_sua_hangsanxuat]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_sua_hangsanxuat](@MaNhaSanXuat int, @TenHang nvarchar(50), @LinkWeb nvarchar(max), @AnhDaiDien nvarchar(max))
as
begin
	update HangSanXuats
	set TenHang = @TenHang,LinkWeb =@LinkWeb, AnhDaiDien=@AnhDaiDien
	where MaNhaSanXuat = @MaNhaSanXuat
end
GO
/****** Object:  StoredProcedure [dbo].[sp_sua_loaitaikhoan]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-------------------------------------------------------------------------------------------------------------------------------
create proc [dbo].[sp_sua_loaitaikhoan](@MaLoaitaikhoan int,@TenLoai nvarchar(50),@MoTa nvarchar(250))
as
begin
	update LoaiTaiKhoans
	set TenLoai = @TenLoai, MoTa=@MoTa
	where MaLoaitaikhoan = @MaLoaitaikhoan
end
GO
/****** Object:  StoredProcedure [dbo].[sp_sua_nhaphanphoi]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_sua_nhaphanphoi](@MaNhaPhanPhoi int,@TenNhaPhanPhoi nvarchar(250), @DiaChi nvarchar(max), @SoDienThoai nvarchar(50),
@LinkWeb nvarchar(max),@MoTa nvarchar(max))
as
begin
	update NhaPhanPhois
	set TenNhaPhanPhoi = @TenNhaPhanPhoi, DiaChi =@DiaChi,SoDienThoai =@SoDienThoai,LinkWeb=@LinkWeb, MoTa = @MoTa
	where MaNhaPhanPhoi = @MaNhaPhanPhoi
end
GO
/****** Object:  StoredProcedure [dbo].[sp_suakhachhang]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_suakhachhang](@Id int,@TenKH nvarchar(50),
@GioiTinh bit,
@DiaChi nvarchar(250),
@SDT nvarchar(50),
@Email nvarchar(250))
as
begin
	update KhachHangs
	set TenKH = @TenKH,GioiTinh = @GioiTinh,DiaChi = @DiaChi,SDT = @SDT,Email = @Email
	where Id = @Id 
end
GO
/****** Object:  StoredProcedure [dbo].[sp_suaquangcao]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_suaquangcao](@Id int,@AnhDaiDien nvarchar(max),
@LinkQuangCao nvarchar(max),
@MoTa nvarchar(max))
as
begin
	update QuangCaos
	set AnhDaiDien = @AnhDaiDien,LinkQuangCao = @LinkQuangCao,MoTa = @MoTa
	where Id = @Id 
end
GO
/****** Object:  StoredProcedure [dbo].[sp_suaslide]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_suaslide](@MaAnh int,@TieuDe nvarchar(max),
@MoTa nvarchar(max),
@LinkAnh nvarchar(max))
as
begin
	update SlideDetail
	set TieuDe = @TieuDe,MoTa = @MoTa,LinkAnh = @LinkAnh
	where MaAnh = @MaAnh 
end
GO
/****** Object:  StoredProcedure [dbo].[sp_suatintuc]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_suatintuc](@MaTinTuc int,
							@TieuDe nvarchar(max),
							@NoiDung nvarchar(max),
							@HinhAnh nvarchar(max),
							@TrangThai nvarchar(50))
as
begin
	update TinTucs
	set TieuDe = @TieuDe,
		NoiDung = @NoiDung,
		HinhAnh = @HinhAnh,
		TrangThai = @TrangThai
		where MaTinTuc = @MaTinTuc
end
GO
/****** Object:  StoredProcedure [dbo].[sp_taikhoan_search]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_taikhoan_search](@page_index  INT, 
                                       @page_size   INT,
									   @TenTaiKhoan nvarchar(50),
									   @Email nvarchar(150),
									   @HoTen nvarchar(50),
									   @SoDienThoai nvarchar(11))
AS
    BEGIN
        DECLARE @RecordCount BIGINT;
        IF(@page_size <> 0)
            BEGIN
                SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY s.MaTaiKhoan DESC)) AS RowNumber, 
							  s.MaTaiKhoan,
                              s.TenTaiKhoan,
							  s.MatKhau,
							  s.Email,
							  h.TenLoai,
							  c.HoTen,
							  c.SoDienThoai,
							  h.MaLoaitaikhoan,
							  c.AnhDaiDien
                        INTO #Temp1
                        FROM TaiKhoans AS s
						inner join ChiTietTaiKhoans c on c.MaTaiKhoan = s.MaTaiKhoan
						inner join LoaiTaiKhoans h on h.MaLoaitaikhoan = c.MaLoaitaikhoan

					    WHERE (@TenTaiKhoan = '' or s.TenTaiKhoan like '%'+@TenTaiKhoan +'%')
						and (@Email = '' or s.Email like '%'+@Email +'%')
						and (@HoTen = '' or c.HoTen like '%'+@HoTen +'%')
						and (@SoDienThoai = '' or c.SoDienThoai like '%'+@SoDienThoai +'%')
						
                        SELECT @RecordCount = COUNT(*)
                        FROM #Temp1;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Temp1
                        WHERE ROWNUMBER BETWEEN(@page_index - 1) * @page_size + 1 AND(((@page_index - 1) * @page_size + 1) + @page_size) - 1
                              OR @page_index = -1;
                        DROP TABLE #Temp1; 
            END;
            ELSE
            BEGIN
                SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY s.MaTaiKhoan DESC)) AS RowNumber, 
                              s.TenTaiKhoan,
							  s.Email,
							  h.TenLoai,
							  c.HoTen,
							  c.SoDienThoai
                        INTO #Temp2
                        FROM TaiKhoans AS s
						inner join ChiTietTaiKhoans c on c.MaTaiKhoan = s.MaTaiKhoan
						inner join LoaiTaiKhoans h on h.MaLoaitaikhoan = c.MaLoaitaikhoan

					    WHERE (@TenTaiKhoan = '' or s.TenTaiKhoan like '%'+@TenTaiKhoan +'%')
						and (@Email = '' or s.Email like '%'+@Email +'%')
						and (@HoTen = '' or c.HoTen like '%'+@HoTen +'%')
						and (@SoDienThoai = '' or c.SoDienThoai like '%'+@SoDienThoai +'%')

                        SELECT @RecordCount = COUNT(*)
                        FROM #Temp2;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Temp2
                        DROP TABLE #Temp2; 
        END;
    END;
GO
/****** Object:  StoredProcedure [dbo].[sp_taikhoan_searchsingle]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_taikhoan_searchsingle](@page_index  INT, 
                                       @page_size   INT,
									   @TenTaiKhoan nvarchar(50))
AS
    BEGIN
        DECLARE @RecordCount BIGINT;
        IF(@page_size <> 0)
            BEGIN
                SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY s.MaTaiKhoan DESC)) AS RowNumber, 
                              s.*
                        INTO #Temp1
                        FROM TaiKhoans AS s

					    WHERE (@TenTaiKhoan = '' or s.TenTaiKhoan like '%'+@TenTaiKhoan +'%')
						
                        SELECT @RecordCount = COUNT(*)
                        FROM #Temp1;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Temp1
                        WHERE ROWNUMBER BETWEEN(@page_index - 1) * @page_size + 1 AND(((@page_index - 1) * @page_size + 1) + @page_size) - 1
                              OR @page_index = -1;
                        DROP TABLE #Temp1; 
            END;
            ELSE
            BEGIN
                SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY s.MaTaiKhoan DESC)) AS RowNumber, 
                              s.*
                        INTO #Temp2
                        FROM TaiKhoans AS s

					    WHERE (@TenTaiKhoan = '' or s.TenTaiKhoan like '%'+@TenTaiKhoan +'%')

                        SELECT @RecordCount = COUNT(*)
                        FROM #Temp2;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Temp2
                        DROP TABLE #Temp2; 
        END;
    END;
GO
/****** Object:  StoredProcedure [dbo].[sp_tang_gia_sp_all_5]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_tang_gia_sp_all_5]
as
begin
	update SanPhams
	set GiaGiam = CEILING((GiaGiam + (GiaGiam * 0.05)) / 1000) * 1000
	where GiaGiam < Gia
end
GO
/****** Object:  StoredProcedure [dbo].[sp_them_cai_dat]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-------------------------------------------------------------------------------------------------------------------------------
create proc [dbo].[sp_them_cai_dat](@Logo nvarchar(MAX),
@GioLamViec nvarchar(50),
@GiaoHang nvarchar(50),
@HoanTien nvarchar(50),
@SDTLienHe nvarchar(50),
@EmailLienHe nvarchar(50),
@FaceBook nvarchar(MAX),
@GooglePlus nvarchar(MAX),
@Twiter nvarchar(MAX),
@YouTube nvarchar(MAX),
@Instargram nvarchar(MAX),
@GoogleMap nvarchar(MAX),
@MatKhauMail nvarchar(50))
as
begin
	insert into CaiDats(Logo,GioLamViec,GiaoHang,HoanTien,SDTLienHe,EmailLienHe,FaceBook,
	GooglePlus,Twiter,YouTube,Instargram,GoogleMap,MatKhauMail)
	values(@Logo,@GioLamViec,@GiaoHang,@HoanTien,@SDTLienHe,@EmailLienHe,@FaceBook,
	@GooglePlus,@Twiter,@YouTube,@Instargram,@GoogleMap,@MatKhauMail)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_them_danhmuc]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_them_danhmuc](
@TenDanhMuc nvarchar(250),@Dacbiet bit,@NoiDung nvarchar(MAX))
as
begin
	insert into DanhMucs(TenDanhMuc,DacBiet,NoiDung)
	values(@TenDanhMuc,@Dacbiet,@NoiDung)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_them_danhmucuudai]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-------------------------------------------------------------------------------------------------------------------------------
create proc [dbo].[sp_them_danhmucuudai](
@Tendanhmucuudai nvarchar(250),@Dacbiet bit,@NoiDung nvarchar(MAX))
as
begin
	insert into DanhMucUudais(Tendanhmucuudai,DacBiet,NoiDung)
	values(@Tendanhmucuudai,@Dacbiet,@NoiDung)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_them_hangsanxuat]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_them_hangsanxuat](@TenHang nvarchar(50), @LinkWeb nvarchar(max), @AnhDaiDien nvarchar(max))
as
begin
	insert into HangSanXuats(TenHang,LinkWeb,AnhDaiDien)
	values(@TenHang,@LinkWeb,@AnhDaiDien)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_them_loaitaikhoan]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-------------------------------------------------------------------------------------------------------------------------------
create proc [dbo].[sp_them_loaitaikhoan](@TenLoai nvarchar(50),@MoTa nvarchar(250))
as
begin
	insert into LoaiTaiKhoans(TenLoai,MoTa)
	values(@TenLoai,@MoTa)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_them_nhaphanphoi]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_them_nhaphanphoi](@TenNhaPhanPhoi nvarchar(250), @DiaChi nvarchar(max), @SoDienThoai nvarchar(50),
@LinkWeb nvarchar(max),@MoTa nvarchar(max))
as
begin
	insert into NhaPhanPhois(TenNhaPhanPhoi,DiaChi,SoDienThoai,LinkWeb,MoTa)
	values(@TenNhaPhanPhoi,@DiaChi,@SoDienThoai,@LinkWeb,@MoTa)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_them_slide]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_them_slide](
@TieuDe nvarchar(max),
@MoTa nvarchar(max),
@LinkAnh nvarchar(max))
as
begin
	insert into SlideDetail(TieuDe,MoTa,LinkAnh)
	values (@TieuDe,@MoTa,@LinkAnh)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_themkhachhang]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_themkhachhang](
@TenKH nvarchar(50),
@GioiTinh bit,
@DiaChi nvarchar(250),
@SDT nvarchar(50),
@Email nvarchar(250))
as
begin
	insert into KhachHangs(TenKH,GioiTinh,DiaChi,SDT,Email)
	values (@TenKH,@GioiTinh,@DiaChi,@SDT,@Email)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_themquangcao]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_themquangcao](
@AnhDaiDien nvarchar(max),
@LinkQuangCao nvarchar(max),
@MoTa nvarchar(max))
as
begin
	insert into QuangCaos(AnhDaiDien,LinkQuangCao,MoTa)
	values (@AnhDaiDien,@LinkQuangCao,@MoTa)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_themtintuc]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_themtintuc](@TieuDe nvarchar(max),
							@NoiDung nvarchar(max),
							@HinhAnh nvarchar(max),
							@MaTaiKhoan int,
							@TrangThai nvarchar(50))
as
begin
	insert into TinTucs(TieuDe,NoiDung,HinhAnh,MaTaiKhoan,TrangThai)
	values(@TieuDe,@NoiDung,@HinhAnh,@MaTaiKhoan,@TrangThai)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_ThongKeDoanhThuNam]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_ThongKeDoanhThuNam](@Nam INT)
AS
BEGIN
    DECLARE @Thang INT = 1;
    DECLARE @DoanhThu FLOAT;
    
    CREATE TABLE #ThongKeDoanhThu (Thang INT, DoanhThu FLOAT);

    WHILE @Thang <= 12
    BEGIN

        SELECT @DoanhThu = SUM(TongGia)
        FROM HoaDons
        WHERE YEAR(NgayTao) = @Nam AND MONTH(NgayTao) = @Thang AND TrangThai != N'Huỷ đơn'

        INSERT INTO #ThongKeDoanhThu (Thang, DoanhThu)
        VALUES (@Thang, @DoanhThu);

        SET @Thang = @Thang + 1;
    END;

    SELECT * FROM #ThongKeDoanhThu;

    DROP TABLE #ThongKeDoanhThu;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_Thongkedoanhthutheosanpham]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_Thongkedoanhthutheosanpham](@Ngay int)
as
begin
	DECLARE @CurrentDate DATETIME = GETDATE()
    DECLARE @StartDate DATETIME = DATEADD(day, -@Ngay, @CurrentDate)
	select sp.TenSanPham,ct.SoLuong,Sum(ct.SoLuong * ct.DonGia) as DoanhThu
	from HoaDons hd
	inner join ChiTietHoaDons ct on hd.MaHoaDon = ct.MaHoaDon
	inner join SanPhams sp on sp.MaSanPham = ct.MaSanPham
	WHERE hd.NgayTao BETWEEN @StartDate AND @CurrentDate AND hd.TrangThai != N'Huỷ đơn'
	group by sp.TenSanPham,ct.SoLuong
end
GO
/****** Object:  StoredProcedure [dbo].[sp_ThongKeDoanhThuTrong31Ngay]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ThongKeDoanhThuTrong31Ngay]
    @Nam INT,
    @Thang INT
AS
BEGIN
    -- Tạo bảng tạm thời để lưu trữ doanh thu của các ngày trong tháng
    CREATE TABLE #DoanhThuTheoNgay (Ngay DATE, DoanhThu FLOAT);

    -- Tính ngày đầu và cuối của tháng và năm được chọn
    DECLARE @NgayDau DATE = DATEFROMPARTS(@Nam, @Thang, 1);
    DECLARE @NgayCuoi DATE = EOMONTH(@NgayDau);

    -- Dùng một vòng lặp để tính tổng doanh thu hàng ngày trong tháng
    DECLARE @NgayHienTai DATE = @NgayDau;

    WHILE @NgayHienTai <= @NgayCuoi
    BEGIN
        INSERT INTO #DoanhThuTheoNgay (Ngay, DoanhThu)
        SELECT @NgayHienTai, SUM(TongGia)
        FROM HoaDons
        WHERE CAST(NgayTao AS DATE) = @NgayHienTai;

        SET @NgayHienTai = DATEADD(DAY, 1, @NgayHienTai);
    END;

    -- Hiển thị kết quả
    SELECT * FROM #DoanhThuTheoNgay;

    -- Xóa bảng tạm thời
    DROP TABLE #DoanhThuTheoNgay;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_ThongKeDoanhThuTrongThang]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ThongKeDoanhThuTrongThang]
    @Nam INT,
    @Thang INT
AS
BEGIN
    CREATE TABLE #DoanhThuTheoNgay (Ngay DATE, DoanhThu FLOAT);

    DECLARE @NgayDau DATE = DATEFROMPARTS(@Nam, @Thang, 1);
    DECLARE @NgayCuoi DATE = EOMONTH(@NgayDau);

    DECLARE @NgayHienTai DATE = @NgayDau;

    WHILE @NgayHienTai <= @NgayCuoi
    BEGIN
        INSERT INTO #DoanhThuTheoNgay (Ngay, DoanhThu)
        SELECT @NgayHienTai, SUM(TongGia)
        FROM HoaDons
        WHERE CAST(NgayTao AS DATE) = @NgayHienTai AND TrangThai != N'Huỷ đơn'

        SET @NgayHienTai = DATEADD(DAY, 1, @NgayHienTai);
    END;

    SELECT * FROM #DoanhThuTheoNgay;

    DROP TABLE #DoanhThuTheoNgay;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_ThongKeDonHoanTatNam]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_ThongKeDonHoanTatNam](@Nam INT)
AS
BEGIN
    DECLARE @Thang INT = 1;
    DECLARE @SL INT;
    
    CREATE TABLE #ThongKeDonHoanTatNam(Thang INT, SL INT);

    WHILE @Thang <= 12
    BEGIN

        SELECT @SL = COUNT(*)
        FROM HoaDons
        WHERE YEAR(NgayTao) = @Nam AND MONTH(NgayTao) = @Thang AND (TrangThai like N'Đã giao hàng' or TrangThai like N'Hoàn tất')

        INSERT INTO #ThongKeDonHoanTatNam (Thang, SL)
        VALUES (@Thang, @SL);

        SET @Thang = @Thang + 1;
    END;

    SELECT * FROM #ThongKeDonHoanTatNam;

    DROP TABLE #ThongKeDonHoanTatNam;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_ThongKeDonHoanTatNgay]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_ThongKeDonHoanTatNgay]
    @Nam INT,
    @Thang INT
AS
BEGIN
    CREATE TABLE #DonHoanTat (Ngay DATE, SL INT);

    DECLARE @NgayDau DATE = DATEFROMPARTS(@Nam, @Thang, 1);
    DECLARE @NgayCuoi DATE = EOMONTH(@NgayDau);

    DECLARE @NgayHienTai DATE = @NgayDau;

    WHILE @NgayHienTai <= @NgayCuoi
    BEGIN
        INSERT INTO #DonHoanTat (Ngay, SL)
        SELECT @NgayHienTai, COUNT(*)
        FROM HoaDons
        WHERE CAST(NgayTao AS DATE) = @NgayHienTai AND (TrangThai like N'Đã giao hàng' or TrangThai like N'Hoàn tất')

        SET @NgayHienTai = DATEADD(DAY, 1, @NgayHienTai);
    END;

    SELECT * FROM #DonHoanTat;

    DROP TABLE #DonHoanTat
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_ThongKeDonHoanTraNam]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_ThongKeDonHoanTraNam](@Nam INT)
AS
BEGIN
    DECLARE @Thang INT = 1;
    DECLARE @SL INT;
    
    CREATE TABLE #ThongKeDonHoanTraNam(Thang INT, SL INT);

    WHILE @Thang <= 12
    BEGIN

        SELECT @SL = COUNT(*)
        FROM HoaDons
        WHERE YEAR(NgayTao) = @Nam AND MONTH(NgayTao) = @Thang AND (TrangThai like N'Đổi hàng' or TrangThai like N'Trả hàng')

        INSERT INTO #ThongKeDonHoanTraNam (Thang, SL)
        VALUES (@Thang, @SL);

        SET @Thang = @Thang + 1;
    END;

    SELECT * FROM #ThongKeDonHoanTraNam;

    DROP TABLE #ThongKeDonHoanTraNam;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_ThongKeDonHoanTraNgay]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_ThongKeDonHoanTraNgay]
    @Nam INT,
    @Thang INT
AS
BEGIN
    CREATE TABLE #DonHoanTra (Ngay DATE, SL INT);

    DECLARE @NgayDau DATE = DATEFROMPARTS(@Nam, @Thang, 1);
    DECLARE @NgayCuoi DATE = EOMONTH(@NgayDau);

    DECLARE @NgayHienTai DATE = @NgayDau;

    WHILE @NgayHienTai <= @NgayCuoi
    BEGIN
        INSERT INTO #DonHoanTra (Ngay, SL)
        SELECT @NgayHienTai, COUNT(*)
        FROM HoaDons
        WHERE CAST(NgayTao AS DATE) = @NgayHienTai AND (TrangThai like N'Đổi hàng' or TrangThai like N'Trả hàng')

        SET @NgayHienTai = DATEADD(DAY, 1, @NgayHienTai);
    END;

    SELECT * FROM #DonHoanTra;

    DROP TABLE #DonHoanTra;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_ThongKeDonHuyNam]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_ThongKeDonHuyNam](@Nam INT)
AS
BEGIN
    DECLARE @Thang INT = 1;
    DECLARE @SL INT;
    
    CREATE TABLE #ThongKeDonHuyNam(Thang INT, SL INT);

    WHILE @Thang <= 12
    BEGIN

        SELECT @SL = COUNT(*)
        FROM HoaDons
        WHERE YEAR(NgayTao) = @Nam AND MONTH(NgayTao) = @Thang AND TrangThai like N'Huỷ đơn'

        INSERT INTO #ThongKeDonHuyNam (Thang, SL)
        VALUES (@Thang, @SL);

        SET @Thang = @Thang + 1;
    END;

    SELECT * FROM #ThongKeDonHuyNam;

    DROP TABLE #ThongKeDonHuyNam;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_ThongKeDonHuyNgay]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_ThongKeDonHuyNgay]
    @Nam INT,
    @Thang INT
AS
BEGIN
    CREATE TABLE #DonHuy (Ngay DATE, SL INT);

    DECLARE @NgayDau DATE = DATEFROMPARTS(@Nam, @Thang, 1);
    DECLARE @NgayCuoi DATE = EOMONTH(@NgayDau);

    DECLARE @NgayHienTai DATE = @NgayDau;

    WHILE @NgayHienTai <= @NgayCuoi
    BEGIN
        INSERT INTO #DonHuy (Ngay, SL)
        SELECT @NgayHienTai, COUNT(*)
        FROM HoaDons
        WHERE CAST(NgayTao AS DATE) = @NgayHienTai AND TrangThai like N'Huỷ đơn'

        SET @NgayHienTai = DATEADD(DAY, 1, @NgayHienTai);
    END;

    SELECT * FROM #DonHuy;

    DROP TABLE #DonHuy;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_ThongKeHDBNam]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_ThongKeHDBNam](@Nam INT)
AS
BEGIN
    DECLARE @Thang INT = 1;
    DECLARE @SL INT;
    
    CREATE TABLE #ThongKeHDBNam(Thang INT, SL INT);

    WHILE @Thang <= 12
    BEGIN

        SELECT @SL = COUNT(*)
        FROM HoaDons ct
        WHERE YEAR(NgayTao) = @Nam AND MONTH(NgayTao) = @Thang;

        INSERT INTO #ThongKeHDBNam (Thang, SL)
        VALUES (@Thang, @SL);

        SET @Thang = @Thang + 1;
    END;

    SELECT * FROM #ThongKeHDBNam;

    DROP TABLE #ThongKeHDBNam;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_ThongKeHDBNgay]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ThongKeHDBNgay]
    @Nam INT,
    @Thang INT
AS
BEGIN
    CREATE TABLE #HDBNgay (Ngay DATE, SL INT);

    DECLARE @NgayDau DATE = DATEFROMPARTS(@Nam, @Thang, 1);
    DECLARE @NgayCuoi DATE = EOMONTH(@NgayDau);

    DECLARE @NgayHienTai DATE = @NgayDau;

    WHILE @NgayHienTai <= @NgayCuoi
    BEGIN
        INSERT INTO #HDBNgay (Ngay, SL)
        SELECT @NgayHienTai, COUNT(*)
        FROM HoaDons
        WHERE CAST(NgayTao AS DATE) = @NgayHienTai;

        SET @NgayHienTai = DATEADD(DAY, 1, @NgayHienTai);
    END;

    SELECT * FROM #HDBNgay;

    DROP TABLE #HDBNgay;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_ThongKeHDNNam]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_ThongKeHDNNam](@Nam INT)
AS
BEGIN
    DECLARE @Thang INT = 1;
    DECLARE @SL INT;
    
    CREATE TABLE #ThongKeHDNNam(Thang INT, SL INT);

    WHILE @Thang <= 12
    BEGIN

        SELECT @SL = COUNT(*)
        FROM HoaDonNhaps
        WHERE YEAR(NgayTao) = @Nam AND MONTH(NgayTao) = @Thang;

        INSERT INTO #ThongKeHDNNam (Thang, SL)
        VALUES (@Thang, @SL);

        SET @Thang = @Thang + 1;
    END;

    SELECT * FROM #ThongKeHDNNam;

    DROP TABLE #ThongKeHDNNam;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_ThongKeHDNNgay]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_ThongKeHDNNgay]
    @Nam INT,
    @Thang INT
AS
BEGIN
    CREATE TABLE #HDNNgay (Ngay DATE, SL INT);

    DECLARE @NgayDau DATE = DATEFROMPARTS(@Nam, @Thang, 1);
    DECLARE @NgayCuoi DATE = EOMONTH(@NgayDau);

    DECLARE @NgayHienTai DATE = @NgayDau;

    WHILE @NgayHienTai <= @NgayCuoi
    BEGIN
        INSERT INTO #HDNNgay (Ngay, SL)
        SELECT @NgayHienTai, COUNT(*)
        FROM HoaDonNhaps
        WHERE CAST(NgayTao AS DATE) = @NgayHienTai;

        SET @NgayHienTai = DATEADD(DAY, 1, @NgayHienTai);
    END;

    SELECT * FROM #HDNNgay;

    DROP TABLE #HDNNgay;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_ThongKeKHNam]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_ThongKeKHNam](@Nam INT)
AS
BEGIN
    DECLARE @Thang INT = 1;
    DECLARE @SL INT;
    
    CREATE TABLE #ThongKeKHNam(Thang INT, SL INT);

    WHILE @Thang <= 12
    BEGIN

        SELECT @SL = COUNT(DISTINCT SDT)
        FROM HoaDons
        WHERE YEAR(NgayTao) = @Nam AND MONTH(NgayTao) = @Thang;

        INSERT INTO #ThongKeKHNam (Thang, SL)
        VALUES (@Thang, @SL);

        SET @Thang = @Thang + 1;
    END;

    SELECT * FROM #ThongKeKHNam;

    DROP TABLE #ThongKeKHNam;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_ThongKeKHNgay]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_ThongKeKHNgay]
    @Nam INT,
    @Thang INT
AS
BEGIN
    CREATE TABLE #KHNgay (Ngay DATE, SL INT);

    DECLARE @NgayDau DATE = DATEFROMPARTS(@Nam, @Thang, 1);
    DECLARE @NgayCuoi DATE = EOMONTH(@NgayDau);

    DECLARE @NgayHienTai DATE = @NgayDau;

    WHILE @NgayHienTai <= @NgayCuoi
    BEGIN
        INSERT INTO #KHNgay (Ngay, SL)
        SELECT @NgayHienTai, COUNT(DISTINCT SDT)
        FROM HoaDons
        WHERE CAST(NgayTao AS DATE) = @NgayHienTai;

        SET @NgayHienTai = DATEADD(DAY, 1, @NgayHienTai);
    END;

    SELECT * FROM #KHNgay;

    DROP TABLE #KHNgay;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_thongketheokhach_hoadon_search]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_thongketheokhach_hoadon_search](@page_index  INT, 
                                       @page_size   INT,
									   @TenKH Nvarchar(50),
									   @fr_NgayTao datetime,
									   @to_NgayTao datetime)
AS
    BEGIN
        DECLARE @RecordCount BIGINT;
        IF(@page_size <> 0)
            BEGIN
                SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY h.NgayTao ASC)) AS RowNumber, 
                              s.MaSanPham,
							  s.TenSanPham,
							  c.SoLuong,
							  c.TongGia,
							  h.NgayTao,
							  h.TenKH,
							  h.Diachi
                        INTO #Results
                        FROM HoaDons AS h
						inner join ChiTietHoaDons c on c.MaHoaDon = h.MaHoaDon
						inner join SanPhams s on s.MaSanPham = c.MaSanPham
					    WHERE (@TenKH = '' or h.TenKH like N'%'+@TenKH +'%')
						and ((@fr_NgayTao is null and @to_NgayTao is null 
								or (@fr_NgayTao is not null
								and @to_NgayTao is null and
								h.NgayTao >= @fr_NgayTao)
								or @fr_NgayTao is null and @to_NgayTao is not null 
								and h.NgayTao < @to_NgayTao
								or h.NgayTao between @fr_NgayTao and @to_NgayTao))
                        SELECT @RecordCount = COUNT(*)
                        FROM #Results;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results
                        WHERE ROWNUMBER BETWEEN(@page_index - 1) * @page_size + 1 AND(((@page_index - 1) * @page_size + 1) + @page_size) - 1
                              OR @page_index = -1;
                        DROP TABLE #Results; 
            END;
            ELSE
            BEGIN
                SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY h.NgayTao ASC)) AS RowNumber, 
                              s.MaSanPham,
							  s.TenSanPham,
							  c.SoLuong,
							  c.TongGia,
							  h.NgayTao,
							  h.TenKH,
							  h.Diachi
                        INTO #Results1
                        FROM HoaDons AS h
						inner join ChiTietHoaDons c on c.MaHoaDon = h.MaHoaDon
						inner join SanPhams s on s.MaSanPham = c.MaSanPham
					    WHERE (@TenKH = '' or h.TenKH like N'%'+@TenKH +'%')
						and ((@fr_NgayTao is null and @to_NgayTao is null 
								or (@fr_NgayTao is not null
								and @to_NgayTao is null and
								h.NgayTao >= @fr_NgayTao)
								or @fr_NgayTao is null and @to_NgayTao is not null 
								and h.NgayTao < @to_NgayTao
								or h.NgayTao between @fr_NgayTao and @to_NgayTao))
                        SELECT @RecordCount = COUNT(*)
                        FROM #Results2;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results2
                        DROP TABLE #Results2; 
        END;
    END;
GO
/****** Object:  StoredProcedure [dbo].[sp_thongketheongay_hoadonnhap_search]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_thongketheongay_hoadonnhap_search](@page_index  INT, 
                                       @page_size   INT,
									   @TenSanPham nvarchar(150),
									   @TenNhaPhanPhoi nvarchar(250),
									   @NgayTao datetime)
AS
    BEGIN
        DECLARE @RecordCount BIGINT;
        IF(@page_size <> 0)
            BEGIN
                SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY h.MaHoaDon DESC)) AS RowNumber, 
							  h.MaHoaDon,
                              s.MaSanPham,
							  npp.TenNhaPhanPhoi,
							  s.TenSanPham,
							  c.SoLuong,
							  c.DonViTinh,
							  c.GiaNhap,
							  c.TongGia,
							  h.NgayTao,
							  h.KieuThanhToan,
							  h.MaTaiKhoan
                        INTO #Results
                        FROM HoaDonNhaps AS h
						inner join ChiTietHoaDonNhaps c on c.MaHoaDon = h.MaHoaDon
						inner join SanPhams s on s.MaSanPham = c.MaSanPham
						inner join NhaPhanPhois npp on npp.MaNhaPhanPhoi = h.MaNhaPhanPhoi
					    WHERE 
							(@TenSanPham = '' OR s.TenSanPham LIKE N'%' + @TenSanPham + '%')
							and (@TenNhaPhanPhoi = '' OR npp.TenNhaPhanPhoi LIKE N'%' + @TenNhaPhanPhoi + '%')
							AND (@NgayTao IS NULL OR h.NgayTao < @NgayTao);
                        SELECT @RecordCount = COUNT(*)
                        FROM #Results;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results
                        WHERE ROWNUMBER BETWEEN(@page_index - 1) * @page_size + 1 AND(((@page_index - 1) * @page_size + 1) + @page_size) - 1
                              OR @page_index = -1;
                        DROP TABLE #Results; 
            END;
            ELSE
            BEGIN
                SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY h.MaHoaDon DESC)) AS RowNumber, 
							  h.MaHoaDon,
                              s.MaSanPham,
							  npp.TenNhaPhanPhoi,
							  s.TenSanPham,
							  c.SoLuong,
							  c.DonViTinh,
							  c.GiaNhap,
							  c.TongGia,
							  h.NgayTao,
							  h.KieuThanhToan,
							  h.MaTaiKhoan
                        INTO #Results2
                        FROM HoaDonNhaps AS h
						inner join ChiTietHoaDonNhaps c on c.MaHoaDon = h.MaHoaDon
						inner join SanPhams s on s.MaSanPham = c.MaSanPham
						inner join NhaPhanPhois npp on npp.MaNhaPhanPhoi = h.MaNhaPhanPhoi
					    WHERE 
							(@TenSanPham = '' OR s.TenSanPham LIKE N'%' + @TenSanPham + '%')
							and (@TenNhaPhanPhoi = '' OR npp.TenNhaPhanPhoi LIKE N'%' + @TenNhaPhanPhoi + '%')
							AND (@NgayTao IS NULL OR h.NgayTao < @NgayTao);
                        SELECT @RecordCount = COUNT(*)
                        FROM #Results2;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results2
                        DROP TABLE #Results2; 
		END

    END;
GO
/****** Object:  StoredProcedure [dbo].[sp_ThongKeTienChiNam]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_ThongKeTienChiNam](@Nam INT)
AS
BEGIN
    DECLARE @Thang INT = 1;
    
    CREATE TABLE #ThongKeTienChi(Thang INT, TienChi FLOAT);

    WHILE @Thang <= 12
    BEGIN
		DECLARE @TienChi FLOAT;

        SELECT @TienChi = SUM(ct.TongGia)
        FROM HoaDonNhaps hdn
		inner join ChiTietHoaDonNhaps ct on hdn.MaHoaDon = ct.MaHoaDon
        WHERE YEAR(hdn.NgayTao) = @Nam AND MONTH(hdn.NgayTao) = @Thang;

        INSERT INTO #ThongKeTienChi (Thang, TienChi)
        VALUES (@Thang, @TienChi);

        SET @Thang = @Thang + 1;
    END;

    SELECT * FROM #ThongKeTienChi;

    DROP TABLE #ThongKeTienChi;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_ThongKeTienChiTrongThang]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ThongKeTienChiTrongThang]
    @Nam INT,
    @Thang INT
AS
BEGIN
    CREATE TABLE #TienChiTheoNgay (Ngay DATE, TienChi FLOAT);

    DECLARE @NgayDau DATE = DATEFROMPARTS(@Nam, @Thang, 1);
    DECLARE @NgayCuoi DATE = EOMONTH(@NgayDau);

    DECLARE @NgayHienTai DATE = @NgayDau;

    WHILE @NgayHienTai <= @NgayCuoi
    BEGIN
        INSERT INTO #TienChiTheoNgay (Ngay, TienChi)
        SELECT @NgayHienTai, SUM(ct.TongTien)
        FROM HoaDonNhaps hdn
		inner join HoaDonNhaps ct on ct.MaHoaDon=hdn.MaHoaDon
        WHERE CAST(hdn.NgayTao AS DATE) = @NgayHienTai;

        SET @NgayHienTai = DATEADD(DAY, 1, @NgayHienTai);
    END;

    SELECT * FROM #TienChiTheoNgay;

    DROP TABLE #TienChiTheoNgay;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_tin_tuc_search]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_tin_tuc_search] (@page_index  INT, 
                                       @page_size   INT,
									   @TieuDe  Nvarchar(max),
									   @TrangThai nvarchar(50))
AS
    BEGIN
        DECLARE @RecordCount BIGINT;
        IF(@page_size <> 0)
            BEGIN
                SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY K.MaTinTuc DESC)) AS RowNumber, 
                              K.*,
							  ctk.HoTen
                        INTO #Results1
                        FROM TinTucs AS K
						inner join TaiKhoans tk on k.MaTaiKhoan = tk.MaTaiKhoan
						inner join ChiTietTaiKhoans ctk on ctk.MaTaiKhoan = tk.MaTaiKhoan
					    WHERE (@TieuDe = '' or k.TieuDe like N'%'+@TieuDe +'%')
						and (@TrangThai = '' or k.TrangThai like N'%'+@TrangThai +'%')
                        SELECT @RecordCount = COUNT(*)
                        FROM #Results1;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results1
                        WHERE ROWNUMBER BETWEEN(@page_index - 1) * @page_size + 1 AND(((@page_index - 1) * @page_size + 1) + @page_size) - 1
                              OR @page_index = -1;
                        DROP TABLE #Results1; 
            END;
            ELSE
            BEGIN
                SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY K.MaTinTuc DESC)) AS RowNumber, 
                              K.*,
							  ctk.HoTen
                        INTO #Results2
                        FROM TinTucs AS K
						inner join TaiKhoans tk on k.MaTaiKhoan = tk.MaTaiKhoan
						inner join ChiTietTaiKhoans ctk on ctk.MaTaiKhoan = tk.MaTaiKhoan
					    WHERE (@TieuDe = '' or k.TieuDe like N'%'+@TieuDe +'%')
						and (@TrangThai = '' or k.TrangThai like N'%'+@TrangThai +'%')
                        SELECT @RecordCount = COUNT(*)
                        FROM #Results2;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results2
                        DROP TABLE #Results2; 
        END;
    END;
GO
/****** Object:  StoredProcedure [dbo].[sp_tonghoadonnhap]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_tonghoadonnhap]
as
begin
	-- Tạo bảng biến để lưu trữ kết quả
	DECLARE @Results TABLE (
		SoluongHoaDonNhap INT,
		SoluongHoaDonBan INT
	)

	-- Lấy kết quả và lưu vào bảng biến
	INSERT INTO @Results (SoluongHoaDonNhap, SoluongHoaDonBan)
	SELECT
		(SELECT COUNT(*) FROM HoaDonNhaps) AS SoluongHoaDonNhap,
		(SELECT COUNT(*) FROM HoaDonNhaps) AS SoluongHoaDonBan

	-- Truy vấn từ bảng biến để hiển thị kết quả
	SELECT * FROM @Results
end
GO
/****** Object:  StoredProcedure [dbo].[sp_tutorial]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_tutorial]
as
begin
	-- Tạo bảng biến để lưu trữ kết quả
	DECLARE @Results TABLE (
		SoluongHoaDonNhap INT,
		SoluongHoaDonBan INT,
		KhachHangMua INT,
		TienChi INT,
		DoanhThu INT
	)

	-- Lấy kết quả và lưu vào bảng biến
	INSERT INTO @Results (SoluongHoaDonNhap, SoluongHoaDonBan,KhachHangMua,TienChi,DoanhThu)
	SELECT
		(SELECT COUNT(*) FROM HoaDonNhaps) AS SoluongHoaDonNhap,
		(SELECT COUNT(*) FROM HoaDonNhaps) AS SoluongHoaDonBan,
		(SELECT COUNT(DISTINCT SDT) FROM HoaDons) AS KhachHangMua,
		(SELECT Sum(TongGia) FROM ChiTietHoaDonNhaps) AS TienChi,
		(SELECT Sum(TongGia) FROM HoaDons) AS DoanhThu

	-- Truy vấn từ bảng biến để hiển thị kết quả
	SELECT * FROM @Results
end
GO
/****** Object:  StoredProcedure [dbo].[sp_update_danhgia]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_update_danhgia](@MaDanhGia int,
								@GhiChu nvarchar(max))
as
begin
	update DanhGia
	set GhiChu = @GhiChu
	where MaDanhGia = @MaDanhGia
end
GO
/****** Object:  StoredProcedure [dbo].[sp_update_hoadon]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_update_hoadon](
@MaHoaDon int,
@TrangThai nvarchar(50),
@TongGia decimal(18,0),
@TenKH nvarchar(50),
@Diachi nvarchar(250),
@Email nvarchar(50),
@SDT nvarchar(50),
@DiaChiGiaoHang nvarchar(350),
@list_json_chitiet_hoadon NVARCHAR(MAX)
)
as
BEGIN
		update HoaDons
		set TrangThai = @TrangThai,
			TongGia = @TongGia ,
			TenKH = @TenKH,
			Diachi = @Diachi,
			Email = @Email,
			SDT = @SDT,
			DiaChiGiaoHang = @DiaChiGiaoHang
					
		where MaHoaDon =@MaHoaDon
		
					IF(@list_json_chitiet_hoadon IS NOT NULL)
						BEGIN
							SELECT JSON_VALUE(p.value, '$.maChiTietHoaDon') as maChiTietHoaDon,
								JSON_VALUE(p.value, '$.maHoaDon') as MaHoaDon, 
								JSON_VALUE(p.value, '$.maSanPham') as MaSanPham,
								JSON_VALUE(p.value, '$.soLuong') as soLuong,
								JSON_VALUE(p.value, '$.soLuongTon') as SoLuongTon,
								JSON_VALUE(p.value, '$.donGia') as donGia,
								JSON_VALUE(p.value, '$.tongGia')as tongGia,
								JSON_VALUE(p.value, '$.status') as status
								INTO #Result
							FROM OPENJSON(@list_json_chitiet_hoadon) AS p;

							--insert status =1
							Insert into ChiTietHoaDons(MaHoaDon,MaSanPham,SoLuong,DonGia,TongGia)
							select @MaHoaDon,
									#Result.maSanPham,
									#Result.soLuong,
									#Result.donGia,
									#Result.tongGia
							from #Result
							where #Result.Status = 1

							UPDATE sp
							SET sp.SoLuong = sp.SoLuong - r.SoLuongTon,
								sp.LuotBan = sp.LuotBan + r.SoLuongTon
							FROM SanPhams sp
							JOIN #Result r ON sp.MaSanPham = r.MaSanPham
							WHERE r.Status = 1;

							--update status =2 
							Update ChiTietHoaDons
							set MaSanPham= #Result.MaSanPham,
								SoLuong = #Result.soLuong,
								DonGia = #Result.donGia,
								TongGia = #Result.tongGia
							from #Result
							where ChiTietHoaDons.MaChiTietHoaDon=#Result.maChiTietHoaDon and #Result.status = '2'

							UPDATE sp
							SET sp.SoLuong = sp.SoLuong - r.SoLuongTon,
								sp.LuotBan = sp.LuotBan + r.SoLuongTon
							FROM SanPhams sp
							JOIN #Result r ON sp.MaSanPham = r.MaSanPham
							WHERE r.Status = 2;

							--delete status =3
							delete c 
							from ChiTietHoaDons c
							inner join #Result r on c.maChiTietHoaDon = r.maChiTietHoaDon
							where r.status = '3'

							UPDATE sp
							SET sp.SoLuong = sp.SoLuong + r.SoLuongTon,
								sp.LuotBan = sp.LuotBan - r.SoLuongTon
							FROM SanPhams sp
							JOIN #Result r ON sp.MaSanPham = r.MaSanPham
							WHERE r.Status = 3;
							--huy don 4
							UPDATE sp
							SET sp.SoLuong = sp.SoLuong + r.SoLuongTon,
								sp.LuotBan = sp.LuotBan - r.SoLuongTon
							FROM SanPhams sp
							JOIN #Result r ON sp.MaSanPham = r.MaSanPham
							WHERE r.Status = 4;

							drop table #Result

						END;
			


        SELECT '';
    END;
GO
/****** Object:  StoredProcedure [dbo].[sp_update_hoadon_nhap]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_update_hoadon_nhap](
@MaHoaDon int,
@MaNhaPhanPhoi int,
@KieuThanhToan nvarchar(MAX),
@TongTien DECIMAL(18, 0),
@list_json_chitiethoadonnhap NVARCHAR(MAX)
)
as 
BEGIN
		update HoaDonNhaps
		set MaNhaPhanPhoi = @MaNhaPhanPhoi,
			KieuThanhToan = @KieuThanhToan ,
			TongTien = @TongTien
					
		where MaHoaDon =@MaHoaDon
		
					IF(@list_json_chitiethoadonnhap IS NOT NULL)
						BEGIN
							SELECT JSON_VALUE(p.value, '$.id') as Id,
								JSON_VALUE(p.value, '$.maHoaDon') as MaHoaDon, 
								JSON_VALUE(p.value, '$.maSanPham') as MaSanPham,
								JSON_VALUE(p.value, '$.soLuong') as SoLuong,
								JSON_VALUE(p.value, '$.soLuongTon') as SoLuongTon,
								JSON_VALUE(p.value, '$.donViTinh')as DonViTinh,
								JSON_VALUE(p.value, '$.giaNhap') as GiaNhap,
								JSON_VALUE(p.value, '$.tongGia') as TongGia,
								JSON_VALUE(p.value, '$.status') as status
								INTO #Result
							FROM OPENJSON(@list_json_chitiethoadonnhap) AS p;

							--insert status =1
							Insert into ChiTietHoaDonNhaps(
										 MaHoaDon,
										 MaSanPham,
										 SoLuong,
										 DonViTinh,
										 GiaNhap,
										 TongGia)
							select @MaHoaDon,
									#Result.MaSanPham,
									#Result.SoLuong,
									#Result.DonViTinh,
									#Result.GiaNhap,
									#Result.TongGia
							from #Result
							where #Result.Status = 1

							UPDATE sp
							SET sp.SoLuong = sp.SoLuong + r.SoLuong,
								sp.Gia = (CAST(r.GiaNhap AS DECIMAL) + (CAST(r.GiaNhap AS DECIMAL) * 0.5)),
								sp.GiaGiam = (CAST(r.GiaNhap AS DECIMAL) + (CAST(r.GiaNhap AS DECIMAL) * 0.3))
							FROM SanPhams sp
							JOIN #Result r ON sp.MaSanPham = r.MaSanPham
							WHERE r.Status = 1;


							--update status =2 
							Update ChiTietHoaDonNhaps
							set MaSanPham= #Result.MaSanPham,
								SoLuong = #Result.SoLuong,
								DonViTinh = #Result.DonViTinh,
								GiaNhap = #Result.GiaNhap,
								TongGia = #Result.TongGia
							from #Result
							where ChiTietHoaDonNhaps.Id=#Result.Id and #Result.status = 2

							
							UPDATE sp
							SET sp.SoLuong = sp.SoLuong + r.SoLuongTon,sp.Gia = (CAST(r.GiaNhap AS DECIMAL) + (CAST(r.GiaNhap AS DECIMAL) * 0.5)),
										sp.GiaGiam = (CAST(r.GiaNhap AS DECIMAL) + (CAST(r.GiaNhap AS DECIMAL) * 0.3))
							FROM SanPhams sp
							JOIN #Result r ON sp.MaSanPham = r.MaSanPham
							WHERE r.Status = 2;

							--delete status =3
							delete c 
							from ChiTietHoaDonNhaps c
							inner join #Result r on c.Id = r.Id
							where r.status = 3

							UPDATE sp
							SET sp.SoLuong =(CAST (sp.SoLuong AS INT) - (CAST(r.SoLuong AS INT)))
							FROM SanPhams sp
							JOIN #Result r ON sp.MaSanPham = r.MaSanPham
							WHERE r.Status = 3;

							drop table #Result

						END;
			


        SELECT '';
    END;
GO
/****** Object:  StoredProcedure [dbo].[sp_update_sanpham]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_update_sanpham](
@MaSanPham int,
@MaDanhMuc int,
@Madanhmucuudai int,
@TenSanPham nvarchar(150),
@AnhDaiDien nvarchar(150),
@Gia decimal(18, 0),
@GiaGiam decimal(18, 0),
@SoLuong int,
@TrongLuong nvarchar(100),
@TrangThai bit,
@XuatXu nvarchar(50),
@list_json_chitiet_sanpham NVARCHAR(MAX),
@list_json_sanpham_nhaphanphoi NVARCHAR(MAX),
@list_json_anhsanpham NVARCHAR(MAX)
)
as
BEGIN
		update SanPhams
		set MaDanhMuc = @MaDanhMuc,
			Madanhmucuudai = @Madanhmucuudai,
			TenSanPham = @TenSanPham,
			AnhDaiDien = @AnhDaiDien,
			Gia = @Gia,
			GiaGiam = @GiaGiam,
			SoLuong = @SoLuong,
			TrongLuong = @TrongLuong,
			TrangThai = @TrangThai,
			XuatXu = @XuatXu
		where MaSanPham =@MaSanPham
		
					IF(@list_json_chitiet_sanpham IS NOT NULL)
						BEGIN
							SELECT JSON_VALUE(p.value, '$.maChiTietSanPham') as MaChiTietSanPham,
								JSON_VALUE(p.value, '$.maSanPham') as MaSanPham, 
								JSON_VALUE(p.value, '$.maNhaSanXuat') as MaNhaSanXuat,
								JSON_VALUE(p.value, '$.moTa') as MoTa,
								JSON_VALUE(p.value, '$.chiTiet')as ChiTiet,
								JSON_VALUE(p.value, '$.status') as Status
								INTO #Result
							FROM OPENJSON(@list_json_chitiet_sanpham) AS p;

							--insert status =1
							--Insert into ChiTietSanPhams(MaSanPham,MaNhaSanXuat,MoTa,ChiTiet)
							--select @MaSanPham,
							--		#Result.maNhaSanXuat,
							--		#Result.moTa,
							--		#Result.chiTiet
							--from #Result
							--where #Result.Status = 1

							--update status =2 
							Update ChiTietSanPhams
							set MaNhaSanXuat= #Result.maNhaSanXuat,
								MoTa = #Result.moTa,
								ChiTiet = #Result.chiTiet
							from #Result
							where ChiTietSanPhams.MaChiTietSanPham=#Result.maChiTietSanPham and #Result.status = '2'

							--delete status =3
							--delete c 
							--from ChiTietSanPhams c
							--inner join #Result r on c.maChiTietSanPham = r.maChiTietSanPham
							--where r.status = '3'
							--drop table #Result
						END;

						IF(@list_json_sanpham_nhaphanphoi IS NOT NULL)
						BEGIN
							SELECT JSON_VALUE(p.value, '$.maSanPham') as maSanPham, 
								JSON_VALUE(p.value, '$.maNhaPhanPhoi') as maNhaPhanPhoi,
								JSON_VALUE(p.value, '$.status') as Status
								INTO #Result1
							FROM OPENJSON(@list_json_sanpham_nhaphanphoi) AS p;

							--insert status =1
							--Insert into SanPhams_NhaPhanPhois(MaSanPham,MaNhaPhanPhoi)
							--select @MaSanPham,
							--		#Result1.maNhaPhanPhoi
							--from #Result1
							--where #Result1.Status = 1

							--update status =2 
							Update SanPhams_NhaPhanPhois
							set 
								MaNhaPhanPhoi = #Result1.maNhaPhanPhoi
							from #Result1
							where SanPhams_NhaPhanPhois.MaSanPham=#Result1.maSanPham and #Result1.status = '2'

							--delete status =3
							--delete c 
							--from SanPhams_NhaPhanPhois c
							--inner join #Result1 r on c.MaSanPham = r.maSanPham
							--where r.status = '3'
							--drop table #Result1
						END;

						IF(@list_json_anhsanpham IS NOT NULL)
						BEGIN
							SELECT JSON_VALUE(p.value, '$.maSanPham') as maSanPham, 
							    JSON_VALUE(p.value, '$.id') as id, 
								JSON_VALUE(p.value, '$.linkAnh') as linkAnh,
								JSON_VALUE(p.value, '$.status') as Status
								INTO #Result2
							FROM OPENJSON(@list_json_anhsanpham) AS p;

							--insert status =1
							Insert into AnhSanPhams(MaSanPham,LinkAnh)
							select @MaSanPham,
									#Result2.linkAnh
							from #Result2
							where #Result2.Status = 1

							--update status =2 
							Update AnhSanPhams
							set 
								LinkAnh = #Result2.linkAnh
							from #Result2
							where AnhSanPhams.Id=#Result2.Id and #Result2.status = 2

							--delete status =3
							delete c 
							from AnhSanPhams c
							inner join #Result2 r on c.Id = r.id
							where r.status = '3'
							drop table #Result2

						END;
			


        SELECT '';
    END;
GO
/****** Object:  StoredProcedure [dbo].[sp_update_taikhoan]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_update_taikhoan](
@MaTaiKhoan int,
@Email nvarchar(150),
@MatKhau nvarchar(150),
@list_json_chitiet_taikhoan NVARCHAR(MAX)
)
as
BEGIN
		BEGIN
			Update TaiKhoans
			Set Email =@Email,MatKhau = @MatKhau
			WHERE MaTaiKhoan = @MaTaiKhoan
					IF(@list_json_chitiet_taikhoan IS NOT NULL)
						BEGIN
							SELECT JSON_VALUE(p.value, '$.maChitietTaiKhoan') as maChitietTaiKhoan,
								JSON_VALUE(p.value, '$.maTaiKhoan') as maTaiKhoan,
								JSON_VALUE(p.value, '$.maLoaitaikhoan') as maLoaitaikhoan,
								JSON_VALUE(p.value, '$.hoTen') as hoTen,
								JSON_VALUE(p.value, '$.diaChi') as diaChi, 
								JSON_VALUE(p.value, '$.soDienThoai') as soDienThoai,
								JSON_VALUE(p.value, '$.anhDaiDien') as anhDaiDien,
								JSON_VALUE(p.value, '$.status') as status
								INTO #Result
							FROM OPENJSON(@list_json_chitiet_taikhoan) AS p;

							--insert status =1
							Insert into ChiTietTaiKhoans(MaTaiKhoan,MaLoaitaikhoan,HoTen,DiaChi,SoDienThoai,AnhDaiDien)
							select @MaTaiKhoan,
									#Result.maLoaitaikhoan,
									#Result.hoTen,
									#Result.diaChi,
									#Result.soDienThoai,
									#Result.anhDaiDien
							from #Result
							where #Result.status = 1

							--update status =2 
							Update ChiTietTaiKhoans
							set MaLoaitaikhoan= #Result.maLoaitaikhoan,
								HoTen = #Result.hoTen,
								DiaChi = #Result.diaChi,
								SoDienThoai = #Result.soDienThoai,
								AnhDaiDien = #Result.anhDaiDien
							from #Result
							where ChiTietTaiKhoans.MaChitietTaiKhoan=#Result.maChitietTaiKhoan and #Result.status = '2'

							--delete status =3
							delete c 
							from ChiTietTaiKhoans c
							inner join #Result r on c.maChitietTaiKhoan = r.maChitietTaiKhoan
							where r.status = '3'
							drop table #Result

						END;
			END


        SELECT '';
    END;
GO
/****** Object:  StoredProcedure [dbo].[sp_xoa_cai_dat]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-------------------------------------------------------------------------------------------------------------------------------
create proc [dbo].[sp_xoa_cai_dat](@Id int)
as
begin
	delete from CaiDats
	where Id = @Id
end
GO
/****** Object:  StoredProcedure [dbo].[sp_xoa_danhgia]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_xoa_danhgia](@MaDanhGia int)
as
begin
	delete from DanhGia
	where MaDanhGia  = @MaDanhGia
end
GO
/****** Object:  StoredProcedure [dbo].[sp_xoa_danhmuc]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-------------------------------------------------------------------------------------------------------------------------------
create proc [dbo].[sp_xoa_danhmuc](@Madanhmuc int)
as
begin
	delete from DanhMucs
	where MaDanhMuc = @Madanhmuc
end
GO
/****** Object:  StoredProcedure [dbo].[sp_xoa_danhmucuudai]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-------------------------------------------------------------------------------------------------------------------------------
create proc [dbo].[sp_xoa_danhmucuudai](@Madanhmucuudai int)
as
begin
	delete from DanhMucUudais
	where Madanhmucuudai = @Madanhmucuudai
end
GO
/****** Object:  StoredProcedure [dbo].[sp_xoa_loaitaikhoan]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-------------------------------------------------------------------------------------------------------------------------------
create proc [dbo].[sp_xoa_loaitaikhoan](@MaLoaitaikhoan int)
as
begin
	delete from LoaiTaiKhoans
	where MaLoaitaikhoan = @MaLoaitaikhoan
end
GO
/****** Object:  StoredProcedure [dbo].[sp_xoa_nhaphanphoi]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_xoa_nhaphanphoi](@MaNhaPhanPhoi int)
as
begin
	delete from NhaPhanPhois
	where MaNhaPhanPhoi = @MaNhaPhanPhoi
end
GO
/****** Object:  StoredProcedure [dbo].[sp_xoa_nhasanxuat]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_xoa_nhasanxuat](@MaNhaSanXuat int)
as
begin
	delete from HangSanXuats
	where MaNhaSanXuat = @MaNhaSanXuat
end
GO
/****** Object:  StoredProcedure [dbo].[sp_xoa_sanpham]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-------------------------------------------------------------------------------------------------------------------------------
create proc [dbo].[sp_xoa_sanpham](@MaSanPham int)
as
begin
	delete from SanPhams
	where MaSanPham = @MaSanPham
end
GO
/****** Object:  StoredProcedure [dbo].[sp_xoa_taikhoan]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_xoa_taikhoan](@MaTaiKhoan int)
as
begin
	delete from TaiKhoans
	where MaTaiKhoan = @MaTaiKhoan
end
GO
/****** Object:  StoredProcedure [dbo].[sp_xoakhachhang]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-------------------------------------------------------------------------------------------------------------------------------
create proc [dbo].[sp_xoakhachhang](@Id int)
as
begin
	delete from KhachHangs where Id = @Id
end
GO
/****** Object:  StoredProcedure [dbo].[sp_xoaquangcao]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_xoaquangcao](@Id int)
as
begin
	delete from QuangCaos where Id = @Id
end
GO
/****** Object:  StoredProcedure [dbo].[sp_xoaslide]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-------------------------------------------------------------------------------------------------------------------------------
create proc [dbo].[sp_xoaslide](@MaAnh int)
as
begin
	delete from SlideDetail where MaAnh = @MaAnh 
end
GO
/****** Object:  StoredProcedure [dbo].[sp_xoatintuc]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_xoatintuc](@MaTinTuc int)
as
begin
	delete from TinTucs
	where MaTinTuc = @MaTinTuc
end
GO
/****** Object:  StoredProcedure [dbo].[ThongKeDoanhThuNam]    Script Date: 19/3/2024 9:42:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ThongKeDoanhThuNam](@Nam INT)
AS
BEGIN
    DECLARE @Thang INT = 1;
    DECLARE @DoanhThu FLOAT;
    
    CREATE TABLE #ThongKeDoanhThu (Thang INT, DoanhThu FLOAT);

    WHILE @Thang <= 12
    BEGIN
        -- Tính doanh thu cho từng tháng
        SELECT @DoanhThu = SUM(TongGia)
        FROM HoaDons
        WHERE YEAR(NgayTao) = @Nam AND MONTH(NgayTao) = @Thang;

        -- Thêm kết quả vào bảng tạm thời
        INSERT INTO #ThongKeDoanhThu (Thang, DoanhThu)
        VALUES (@Thang, @DoanhThu);

        SET @Thang = @Thang + 1;
    END;

    -- Hiển thị kết quả
    SELECT * FROM #ThongKeDoanhThu;

    -- Xóa bảng tạm thời
    DROP TABLE #ThongKeDoanhThu;
END;
GO
