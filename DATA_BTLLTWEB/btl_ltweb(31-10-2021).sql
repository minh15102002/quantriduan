-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 30, 2021 lúc 10:14 PM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `btl_ltweb`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `IDadmin` int(11) NOT NULL,
  `emaildangnhap` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `hoten` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `matkhau` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ngaytao` timestamp NOT NULL DEFAULT current_timestamp(),
  `phanquyen` tinyint(4) NOT NULL,
  `trangthaiadmin` tinyint(10) NOT NULL DEFAULT 1 COMMENT '1: Mở, 0: Khóa'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`IDadmin`, `emaildangnhap`, `hoten`, `matkhau`, `ngaytao`, `phanquyen`, `trangthaiadmin`) VALUES
(1, 'pva123@gmail.com', 'Phạm Bá Việt Anh', 'pva123', '2021-10-03 10:07:04', 1, 1),
(2, 'dhn123@gmail.com', 'Đỗ Hà Nguyên', 'dhn123', '2021-10-03 10:07:04', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `anh`
--

CREATE TABLE `anh` (
  `maanh` int(11) NOT NULL,
  `duongdananh` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `trangthai` tinyint(10) NOT NULL DEFAULT 1 COMMENT '1: Mở, 0: Khóa'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `anh`
--

INSERT INTO `anh` (`maanh`, `duongdananh`, `trangthai`) VALUES
(1, '../anh_bia/anh_bia1.jpg', 1),
(2, '../anh_bia/anh_bia2.jpg', 1),
(3, '../anh_bia/anh_bia3.jpg', 1),
(4, '../anh_bia/anh_bia4.jpg', 1),
(5, '../anh_bia/anh_bia5.jpg', 1),
(7, '../anh_bia/anh_bia6.jpg', 1),
(8, '../anh_bia/anh_bia7.jpg', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chi_tiet_hoa_don`
--

CREATE TABLE `chi_tiet_hoa_don` (
  `machitiethoadon` int(100) NOT NULL,
  `mahoadon` int(100) NOT NULL,
  `sp_id` int(11) NOT NULL,
  `tensanpham` varchar(200) NOT NULL,
  `soluong` int(100) NOT NULL,
  `gia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `chi_tiet_hoa_don`
--

INSERT INTO `chi_tiet_hoa_don` (`machitiethoadon`, `mahoadon`, `sp_id`, `tensanpham`, `soluong`, `gia`) VALUES
(21, 20, 45, 'MSI Modern 15', 1, 16500000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cua_hang`
--

CREATE TABLE `cua_hang` (
  `ma_cua_hang` int(11) NOT NULL,
  `ten_cua_hang` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `dia_chi_cua_hang` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email_cua_hang` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hotline_cua_hang` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ban_do` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link_facebook` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link_internet` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link_youtube` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cua_hang`
--

INSERT INTO `cua_hang` (`ma_cua_hang`, `ten_cua_hang`, `dia_chi_cua_hang`, `email_cua_hang`, `hotline_cua_hang`, `ban_do`, `link_facebook`, `link_internet`, `link_youtube`) VALUES
(1, 'AWEB 1', '12 Chùa Bộc, Đống Đa, Hà Nội, Việt Nam', 'store1example@gmail.com', '1900 1008', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1862.303581615658!2d105.82748602026163!3d21.008378485158186!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac800d932155%3A0xeb63c9a9e22d444!2zUXVhbmcgVHJ1bmcsIMSQ4buRbmcgxJBhLCBIw6AgTuG7mWksIFZp4buHdCBOYW0!5e0!3m2!1svi!2shk!4v1633791610027!5m2!1svi!2shk', '', '', ''),
(2, 'AWEB 2', '21 Phạm Ngọc Thạch, Đống Đa, Hà Nội, Việt Nam', 'store2example@gmail.com', '1900 1007', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1862.303581615658!2d105.82748602026163!3d21.008378485158186!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac800d932155%3A0xeb63c9a9e22d444!2zUXVhbmcgVHJ1bmcsIMSQ4buRbmcgxJBhLCBIw6AgTuG7mWksIFZp4buHdCBOYW0!5e0!3m2!1svi!2shk!4v1633791610027!5m2!1svi!2shk', '', '', ''),
(3, 'AWEB 3', '10 Thái Hà, Đống Đa, Hà Nội, Việt Nam', 'store3example@gmail.com', '1900 1006', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1862.303581615658!2d105.82748602026163!3d21.008378485158186!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac800d932155%3A0xeb63c9a9e22d444!2zUXVhbmcgVHJ1bmcsIMSQ4buRbmcgxJBhLCBIw6AgTuG7mWksIFZp4buHdCBOYW0!5e0!3m2!1svi!2shk!4v1633791610027!5m2!1svi!2shk', '', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `mahoadon` int(11) NOT NULL,
  `mathanhvien` int(11) NOT NULL,
  `mavanchuyen` int(11) NOT NULL,
  `mathanhtoan` int(11) NOT NULL,
  `ngaytao` timestamp NOT NULL DEFAULT current_timestamp(),
  `tennguoinhan` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `diachinn` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `emailnn` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dienthoainn` varchar(13) COLLATE utf8_unicode_ci NOT NULL,
  `ghichu` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `trangthaihoadon` tinyint(10) NOT NULL DEFAULT 1 COMMENT '1: Chưa xử lý, 2: Đang xử lý, 3: Đã xử lý. 4: Hóa đơn bị hủy'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`mahoadon`, `mathanhvien`, `mavanchuyen`, `mathanhtoan`, `ngaytao`, `tennguoinhan`, `diachinn`, `emailnn`, `dienthoainn`, `ghichu`, `trangthaihoadon`) VALUES
(20, 1, 2, 2, '2021-10-30 20:13:10', 'a', 'a', 'abc123@gmail.com', '1', 'a', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisp`
--

CREATE TABLE `loaisp` (
  `maloai` int(11) NOT NULL,
  `tenloai` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `brand_img` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manhomsp` int(11) NOT NULL,
  `trangthailoai` tinyint(10) NOT NULL DEFAULT 1 COMMENT '1: Mở, 0: Khóa'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loaisp`
--

INSERT INTO `loaisp` (`maloai`, `tenloai`, `brand_img`, `manhomsp`, `trangthailoai`) VALUES
(1, 'DELL', '../brand_img/logo-dell.png', 1, 1),
(2, 'ASUS', '../brand_img/logo-asus.png', 1, 1),
(3, 'ACER', '../brand_img/logo-acer.png', 1, 1),
(4, 'LENOVO', '../brand_img/logo-lenovo.png', 1, 1),
(5, 'MSI', '../brand_img/logo-msi.png', 1, 1),
(6, 'HP', '../brand_img/logo-hp.png', 1, 0),
(7, 'APPLE', '../brand_img/logo-apple.png', 1, 1),
(8, 'MICROSOFT', '../brand_img/logo-microsoft.png', 1, 1),
(9, 'JBL', '', 4, 1),
(10, 'SENNHEISER', '', 4, 1),
(11, 'SONY', '', 4, 1),
(12, 'LOGITECH', '', 4, 1),
(13, 'GENIUS', '', 4, 1),
(14, 'FUHLEN', '', 4, 1),
(15, 'SAMSUNG', '', 4, 1),
(16, 'TOSIBA', '', 4, 1),
(17, 'WESTERN DIGITAL', '', 4, 1),
(18, 'KINGSTON', '', 4, 1),
(19, 'CORSAIR VENGEANCE LED', '', 4, 1),
(20, 'G.SKILL STRIDENT ZRGB', '', 4, 1),
(21, 'LEOPOLD', '', 4, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhomsp`
--

CREATE TABLE `nhomsp` (
  `manhom` int(11) NOT NULL,
  `tennhom` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `trangthainhom` int(11) NOT NULL DEFAULT 1 COMMENT '1: Mở, 0: Khóa'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhomsp`
--

INSERT INTO `nhomsp` (`manhom`, `tennhom`, `trangthainhom`) VALUES
(1, 'Laptop mới', 1),
(2, 'Laptop đồ họa - gaming', 1),
(3, 'Laptop mỏng nhẹ cao cấp', 1),
(4, 'Linh kiện laptop', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phan_hoi_kh`
--

CREATE TABLE `phan_hoi_kh` (
  `mabinhluan` int(11) NOT NULL,
  `tenkhachhang` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `anhkhachhang` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `masp` int(11) DEFAULT NULL,
  `email_kh` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `ngaygui` timestamp NOT NULL DEFAULT current_timestamp(),
  `noidung` text COLLATE utf8_unicode_ci NOT NULL,
  `trangthai` tinyint(10) NOT NULL DEFAULT 0 COMMENT '1: Mở, 0: Khóa'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `phan_hoi_kh`
--

INSERT INTO `phan_hoi_kh` (`mabinhluan`, `tenkhachhang`, `anhkhachhang`, `masp`, `email_kh`, `ngaygui`, `noidung`, `trangthai`) VALUES
(18, 'Vũ Tiến Dũng', NULL, 3, 'a\\', '2021-10-24 08:34:10', 'Sản phẩm rất tốt', 0),
(20, 'Nguyễn Huy Cương', NULL, 19, 'b', '2021-10-24 08:42:51', 'Sản phẩm không tốt', 1),
(21, 'Phạm Bá Việt Anh', NULL, 3, 'pva123', '2021-10-28 03:08:21', 'vc', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `sp_id` int(11) NOT NULL,
  `tensanpham` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `manhomsp` int(11) NOT NULL,
  `maloaisp` int(11) NOT NULL,
  `anhdaidien` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `soluong` int(11) DEFAULT NULL,
  `gia` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `cauhinh` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `khuyenmai` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gia_sau_giam` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ngaynhap` timestamp NOT NULL DEFAULT current_timestamp(),
  `motasp` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `trangthaisp` tinyint(10) NOT NULL DEFAULT 1 COMMENT '1: Mở, 0: Khóa'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`sp_id`, `tensanpham`, `manhomsp`, `maloaisp`, `anhdaidien`, `soluong`, `gia`, `cauhinh`, `khuyenmai`, `gia_sau_giam`, `ngaynhap`, `motasp`, `trangthaisp`) VALUES
(1, 'Acer Swift3 56 50AZ', 1, 1, '../img_sp/Acer/acer1.jpg', 100, '20690000', 'Ryzen 5-4500U/8GB/512B/VGA AMD Radeon™ Graphics/14.0', '500000', '20190000', '2021-08-03 10:34:53', 'Sản phẩm bán chạy nhất quý 1 năm 2022', 1),
(2, 'Acer Aspire 5 A514-54-540F', 3, 3, '../img_sp/Acer/acer2.jpg', 99, '18490000', 'Intel® Core™ i5-1135G7/8GB/515GB/Intel Iris Xe Graphics/14.0\" FHD/Win 10 Home', '1490000', '17000000', '2021-09-29 10:47:59', 'Acer Aspire A514 54 540F NX.A28SV.005, một chiếc latop sẵn sàng đáp ứng mọi nhu cầu học tập, làm việc, giải trí nhẹ nhàng.\r\n\r\n', 1),
(3, 'Acer Aspire 7 ', 1, 3, '../img_sp/Acer/acer3.jfif', 20, '22000000', 'Ryzen 5 - 5500U/8GB/256GB/GTX1050 2GB/15.6\" FHD IPS/Win 10 Home', '0', '22000000', '2021-10-03 18:13:11', 'Laptop Acer Aspire 7 A715 42G R4ST R5  có thiết kế đơn giản, trang nhã nhưng trang bị cấu hình mạnh mẽ đáp ứng nhu cầu đồ hoạ, kỹ thuật chuyên nghiệp và chiến game mượt mà.', 1),
(4, 'Acer Nitro 5-58A7', 2, 3, '../img_sp/Acer/acer_nitro5_58A7.jfif', 10, '23000000', 'AMD Ryzen 5 - 4600H/8GB/256GB/GTX 1650Ti/15.6\" FHD IPS/Win 10 Home', '1.000.000', '22000000', '2021-10-04 10:50:31', NULL, 1),
(5, 'Acer Nitro 5-AN515-57-77', 2, 3, '../img_sp/Acer/acer_nitro5_An515_57-77_40tr.jfif\r\n', 12, '40000000', 'Core i7 - 10750H/16GB/512GB/GTX 2165 4GB/15.6\" FHD/Win 10 Pro ', '0', '40000000', '2021-10-04 10:53:22', NULL, 1),
(6, 'Acer Swif 3-568', 3, 3, '../img_sp/Acer/acer_swif3_568_12tr.jpg', 5, '12000000', 'Core i5 - 6200U/4GB/256GB/14.0\"/Win 10 Home', '0', '12000000', '2021-10-04 10:53:22', NULL, 1),
(7, 'Acer Swif 3-SF314', 3, 3, '../img_sp/Acer/acer_swif3_SF314_18tr.jpg', 11, '18000000', 'i5 - 1135G7/8GB/512GB/Intel Iris Xe Graphics/14.0\" FHD IPS/Win 10 Home', '2000000', '16000000', '2021-10-04 10:59:39', NULL, 1),
(8, 'Acer Nitro 5-2019-AN515-43', 2, 3, '../img_sp/Acer/acer-nitro-5-2019-den-an515_43_20tr.jfif', 15, '20000000', 'Core i5 - 10300H/8GB/256GB/VGA GTX 1650/14.0\" FHD Outlet/Win 10 Home', '0', '20000000', '2021-10-04 10:59:39', NULL, 1),
(9, 'Acer Predator Helios 300', 2, 3, '../img_sp/Acer/Acer-Predator-Helios-300_28tr.jpg', 10, '29000000', 'Core i7-10750H/8GB/512GB/VGA RTX 1650Ti/15.6\" FHD 144Hz/Win 10 Pro', '1.000.000', '28000000', '2021-10-04 11:02:10', NULL, 1),
(10, 'Asus VivoBook A15', 1, 2, '../img_sp/ASUS/laptop-asus-vivobook-a415ea-eb360t-5.jpg', 12, '17500000', 'Intel Core i5-10210U/DDR4 8GB (On board 4 GB +1 khe 4 GB)/Ổ cứng: SSD 512 GB/15.6\" FHD/Win 10 Home ', '1000000', '16500000', '2021-10-04 11:06:56', NULL, 1),
(11, 'Asus ROG Strix G513', 2, 2, '../img_sp/ASUS/asus_rog_strix.jpg', 21, '23000000', 'AMD Ryzen5-5800H/ 8GB/ 512GB/ RTX 3050/ Win 10', '0', '23000000', '2021-10-04 11:06:56', NULL, 1),
(12, 'Asus ROG Zephyrus', 2, 2, '../img_sp/ASUS/Asus_rog_zephyrus_17tr.jpg', 10, '27000000', 'RYZEN 7 5800HS/ 8GB/ SSD 512GB/ 14″/ 144HZ/ GTX 1650/ WIN 10', '0', '27000000', '2021-10-04 11:09:48', NULL, 1),
(13, 'Asus TUF FH506', 1, 2, '../img_sp/ASUS/asus_tuf_20tr.jpg', 12, '20000000', ' i5 11400H/8GB/512GB SSD/RTX 3050_4GB/Win10', '0', '20000000', '2021-10-04 11:09:48', NULL, 1),
(14, 'Asus FL553VD', 3, 2, '../img_sp/ASUS/Asus-GL553VD_20tr.jpg', 10, '18000000', ' i3 11400U/8GB/512GB SSD/RTX 1050/Win10', '0', '18000000', '2021-10-04 11:14:00', NULL, 1),
(15, 'Asus Vivobook X509', 3, 2, '../img_sp/ASUS/asus-vivobook-x509-bac_16tr.jfif', 5, '16000000', 'AMD Ryzen5-4600H/8GB/1T HDD/RTX 1650Ti/Win10', '500.000', '15500000', '2021-10-04 11:14:00', NULL, 1),
(16, 'Asus RogStrix G-17', 2, 2, '../img_sp/ASUS/Strix-G17__51tr.jpg', 10, '51000000', ' i9 9900K/8GB/1Tb SSD/2Tb HDD/RTX 3050_4GB/Win10', '900.000', '50100000', '2021-10-04 11:16:58', NULL, 1),
(17, 'Asus TUF A15 ', 1, 2, '../img_sp/ASUS/tuf_a15_R7_4800_19tr5.jpg', 15, '19500000', 'R7_4800H/8GB/512GB SSD/RTX 1650_4GB/Win10', '500.000', '19000000', '2021-10-04 11:16:58', NULL, 1),
(18, 'Asus TUF 5050', 1, 2, '../img_sp/ASUS/TUF_fx5050_23tr.jfif', 20, '23000000', ' i5 11400H/8GB/512GB SSD/GTX 1060Ti/Win10', '0', '23000000', '2021-10-04 11:18:43', NULL, 1),
(19, 'Asus Vivobook X415', 3, 2, '../img_sp/ASUS/vivobook_X415_13tr.jpg', 10, '15000000', ' i5 7800H/8GB/512GB SSD/GTX 1050/Win10', '0', '15000000', '2021-10-04 11:19:54', NULL, 1),
(20, 'Dell Inspiron 15-3000 Series', 1, 1, '../img_sp/Dell/Laptop-Latitude-3420_14tr.jpg', 20, '12000000', 'Intel Core i5-7200U| Ram 8G| SSD 256G| HD| AMD Radeon R5 M430', '0', '12000000', '2021-10-04 13:03:41', NULL, 1),
(21, 'Dell Inspiron 15-5593', 3, 1, '../img_sp/Dell/DELL-Inspiron-15-5593_16tr5.jpg', 5, '16500000', '(N5I5513W) i5-1035G1 | 8GB | 256GB | GeForce MX230 2GB | 15.6\" FHD | Win 10 | Chính hãng', '0', '16500000', '2021-10-04 13:03:41', NULL, 1),
(22, 'Dell Gaming G3', 2, 1, '../img_sp/Dell/laptop-dell-gaming-g3_40tr.jpg', 10, '40000000', ' i9-10750H/16GB/512GB/15.6\"FHD/NV GTX1660Ti 6GB/Win 10', '1.000.000', '39000000', '2021-10-04 13:07:28', NULL, 1),
(23, 'Dell Gaming G5', 2, 1, '../img_sp/Dell/laptop-dell-gaming-g5_28tr.jpg', 15, '28000000', ' i7-11750H/16GB/512GB/15.6\"FHD/NV RTX 3060Ti 6GB/ Win 10', '0', '28000000', '2021-10-04 13:07:28', NULL, 1),
(24, 'Dell Latitude 7320', 1, 1, '../img_sp/Dell/Laptop-Dell-Latitude-7320_33tr.jpg', 12, '33000000', ' Intel® Core™ i5-1135G7/8GB/Non-ECC /M.2 256GB PCIe NVMe/ 13.3\" FHD(1920x1080) /Intel® Iris® XE Graphics', '0', '33000000', '2021-10-04 13:15:00', NULL, 1),
(25, 'Dell XPS 13 9310', 3, 1, '../img_sp/Dell/dell xps 13 9310.png', 5, '42000000', ' i7 1165G7/8GB/512GB/14\"FHD/VGA MX330 2GB/Win 10', '2.000.000', '40000000', '2021-10-04 13:15:00', NULL, 1),
(26, 'Dell Latitude 3420', 1, 1, '../img_sp/Dell/Latitude_3420_19tr.jpg', 10, '14000000', ' i5 7800H/8GB/512GB/14\"FHD/RTX 1050 2GB/Win 10', '500.000', '13500000', '2021-10-04 13:16:48', NULL, 1),
(27, 'Laptop HP 15S-FQ', 1, 6, '../img_sp/HP/hp-15s-fq_10tr.jfif', 10, '10000000', 'Intel Core i5-1135G7/8GB/512GB/14.0HD/Win 10', '0', '10000000', '2021-10-04 13:20:27', NULL, 1),
(28, 'Laptop HP Gaming 15', 2, 6, '../img_sp/HP/Hp-gaming-15_20tr.jpg', 5, '26000000', 'Dk1159TX i7 - 10750H/8GB/512GB+32GB/1650Ti 4GB/Win 10 ', '0', '26000000', '2021-10-04 13:20:27', NULL, 1),
(29, 'HP Pavilion Gaming15 Ryzen', 2, 6, '../img_sp/HP/HP-Pavilion-Gaming-15-Ryzen-01_26tr.jpg', 20, '28000000', 'dk1159TX i7 10750H/16GB/512GB+32GB/RTX 3050 4GB/Win 10 ', '2.000.000', '26000000', '2021-10-04 13:23:15', NULL, 1),
(30, 'Latop HP 16 Victus Gaming', 2, 6, '../img_sp/HP/hp-victus-16_gaming_23tr.jpg', 14, '33000000', 'AMD Ryzen7 5800H/8GB/512GB+32GB/RTX 3060 8GB/Win 10 ', '3.000.000', '30000000', '2021-10-04 13:23:15', NULL, 1),
(31, 'Microsoft Surface 3', 1, 8, '../img_sp/Microsoft/surface-laptop-3_35tr.jpg', 11, '25000000', ' AMD Ryzen 7 3780U/16GB/512GB/Win11', '2.000.000', '23000000', '2021-10-04 13:27:40', NULL, 1),
(32, 'V4C-Microsoft Surface', 1, 8, '../img_sp/Microsoft/V4C- Microsoft_Surface.jpg', 3, '29500000', ' Intel® Core™ Core i5 1035G7 1.2GHz/8GB 3733MHz DDR4/13.5\"/256GB SSD', '2.000.000', '27500000', '2021-10-04 13:27:40', NULL, 1),
(33, 'Lenovo Ideapad Gaming 3', 2, 4, '../img_sp/Lenovo/lenovo_idaepad gaming3__18tr.jpg', 15, '20000000', 'AMD Ryzen 5 4600H/8GB/512GB/15.6\"FHD/Win 10', '300.000', '19700000', '2021-10-04 13:30:58', NULL, 1),
(34, 'Lenovo Legion 5 Pro', 2, 4, '../img_sp/Lenovo/Legion-5-Pro_42tr.jpg', 20, '46000000', ' R7 5800H/16GB/1TB SSD/16\"WQXGA-/8GB RTX3070/Win 10 ', '1.000.000', '45000000', '2021-10-04 13:33:37', NULL, 1),
(35, 'Lenovo Legion 5 White ', 2, 4, '../img_sp/Lenovo/legion-5-white_RTX3060 Ryzen5_5600H__32tr.jpg', 15, '30000000', 'R5 5600H/8GB/512GB/15.6”FHD/RTX 3050 4GB/Win 10', '4.000.000', '26000000', '2021-10-04 13:33:37', NULL, 1),
(36, 'Lenovo Ideapad 3', 3, 4, '../img_sp/Lenovo/lenovo_ ideapad3_14ILT6__14tr1.png', 7, '14000000', 'i3 1115G4/8GB/512GB/15.6\"FHD/Win 10 ', '0', '14000000', '2021-10-04 13:36:06', NULL, 1),
(37, 'Lenovo Archives', 3, 4, '../img_sp/Lenovo/Lenovo_Archives_15tr.jpg', 5, '16000000', 'i5 10300H/16GB/512GB/14”FHD/Win 10', '0', '16000000', '2021-10-04 13:36:06', NULL, 1),
(38, 'Lenovo LEgion 5 R7', 2, 4, '../img_sp/Lenovo/Lenovo_legion5_R7_4800H_27tr5.jpg', 20, '28000000', 'R7 5800H/8GB/512GB/15.6”FHD/RTX 3050 4GB/Win 10', '0', '28000000', '2021-10-04 13:41:01', NULL, 1),
(39, 'Lenovo V330', 1, 4, '../img_sp/Lenovo/Lenovo_V330__10tr.jpg', 3, '10000000', 'i3-8300U/8GB/512GB/15.6”FHD/NVIDIA 1242 4GB/Win 10', '0', '10000000', '2021-10-04 13:41:01', NULL, 1),
(40, 'Macbook Air M1 2020', 3, 7, '../img_sp/Mac/Macbook-Air-2020_25tr.jpg', 50, '28000000', '13.3\", 2560 x 1600 Pixel, IPS, IPS LCD LED Backlit, True Tone/Apple M1/8 GB, LPDDR4/SSD 256 GB/Apple M1', '0', '28000000', '2021-10-04 13:44:39', NULL, 1),
(41, 'Macbook Pro 13 2020', 3, 7, '../img_sp/Mac/macpro13_2020.jfif', 20, '60000000', '6.0\", 3072 x 1920 Pixel, IPS, IPS LCD LED Backlit, True Tone/Intel Core i9-9th-gen/16 GB, DDR4, 2666 MHz/SSD 1 TB/Radeon Pro 5500M 4GB', '0', '60000000', '2021-10-04 13:47:32', NULL, 1),
(42, 'MSI Modern 144-B11s', 1, 5, '../img_sp/MSI/Modern-144-b11s_15tr.jpg', 5, '16000000', ' i3 1115G4/8GB/256GB/14\"FHD/Win 10', '2000000', '14000000', '2021-10-04 13:47:32', NULL, 1),
(43, 'MSI Bravo 15 (2021)', 2, 5, '../img_sp/MSI/msi_bravo15_21tr.jpg', 10, '23000000', 'Ryzen5 5600H/8GB/512GB/RX5500M 4GB/15.6\"FHD/Win 10 ', '1.000.000', '22000000', '2021-10-04 13:49:29', NULL, 1),
(44, 'MSI GF63Thin_25', 1, 5, '../img_sp/MSI/msi_GF63Thin_25tr.jpg', 15, '26000000', ' i5 10500H/16GB/512GB/15.6FHD/RTX 3060 Max-Q 6Gb/Win 10 ', '3.000.000', '23000000', '2021-10-04 13:49:29', NULL, 1),
(45, 'MSI Modern 15', 1, 5, '../img_sp/MSI/msi_modern15_16tr5.jpg', 1, '16500000', ' Ryzen5 4600H/16GB/512GB/15.6FHD/GTX1060 6Gb/Win 10 ', '0', '16500000', '2021-10-04 13:52:48', NULL, 1),
(46, 'MSI Creator 15A10SF', 1, 5, '../img_sp/MSI/msi-creator-15-a10sf_36tr.jpg', 3, '36000000', 'Intel® Core™ i7-10750H16GB (8GBx2) DDR4 2666MHz Ổ cứng: 512GB M.2 PCIE SSD VGA: NVIDIA GeForce GTX 1660Ti Max-Q 6GB GDDR6\r\nDisplay: 15.6 inch FHD', '2.000.000', '34000000', '2021-10-04 13:52:48', NULL, 1),
(47, 'MSI Gaming GF63', 2, 5, '../img_sp/MSI/msi-gaming-gf63__23tr.jfif', 11, '23000000', '10SC 255VN i5 10300H/8GB/512GB/GTX 1650 4GB/15.6\"FHD/Win10', '1.000.000', '22000000', '2021-10-04 13:55:02', NULL, 1),
(48, 'MSI GE66-Raider', 2, 5, '../img_sp/MSI/MSI-GE66-Raider__35tr.jpg', 3, '35000000', 'i7 11800H/16GB/512GB/RTX3050 Ti 4GB/Win 10', '0', '35000000', '2021-10-04 13:55:02', NULL, 1),
(49, 'MSI GF73 Thin10src', 3, 5, '../img_sp/MSI/msi-gf73__29tr.jpg', 20, '28000000', 'i7 10750H/8GB/512GB/17.3FHD/GTX1650 4Gb/Win 10', '1.000.000', '27000000', '2021-10-04 13:57:06', NULL, 1),
(50, 'MSI GF75', 1, 5, '../img_sp/MSI/msiGF75_26tr.jpg', 12, '30000000', 'i7 11800H/8GB/512GB/17.3\"FHD/RTX3050 4Gb/Win 10', '0', '30000000', '2021-10-04 13:57:06', NULL, 1),
(51, 'MSI Prestige 15', 1, 5, '../img_sp/MSI/msi-prestige-15__30tr.jpg', 11, '28000000', 'i7 1185G7/16GB/512GB SSD/14\"FHD/UMA/Win10 ', '0', '28000000', '2021-10-04 13:59:28', NULL, 1),
(52, 'Chuột Logitech G903', 4, 12, '../img_sp/Linh_kien/chuột-Logitech-G903_1tr.png', 100, '1000000', NULL, '0', '1000000', '2021-10-04 13:59:28', NULL, 1),
(53, 'Bàn Phím EDRA_EK387RGB', 4, 21, '../img_sp/Linh_kien/Edra_EK387RGB_2tr.jpg', 50, '2000000', NULL, '0', '2000000', '2021-10-04 14:01:53', NULL, 1),
(54, 'Chuột Logitech G102-6', 4, 12, '../img_sp/Linh_kien/Logitech-g102_650k.jpg', 60, '1000000', NULL, '0', '1000000', '2021-10-04 14:05:30', NULL, 1),
(55, 'Chuột Logitech Lightspeed', 4, 12, '../img_sp/Linh_kien/Logitech-g502-lightspeed_3tr6.jpg', 20, '3600000', NULL, '0', '3600000', '2021-10-04 14:08:31', NULL, 1),
(56, 'RAM 8GB Patriot 4-G2666', 4, 20, '../img_sp/Linh_kien/R4_Lap_Patriot_4G2666_8GB.jpg', 100, '800000', NULL, '100.000', '700000', '2021-10-04 14:08:31', NULL, 1),
(57, 'RAM PC3-4GB-300K', 4, 19, '../img_sp/Linh_kien/ram-pc3-4G_300k.jpg', 100, '500000', '', '0', '500000', '2021-10-04 14:10:32', NULL, 1),
(58, 'Tai nghe Gaming MSI ', 4, 5, '../img_sp/Linh_kien/Tai-nghe-Gaming-MSI_1tr.jpg', 20, '1000000', '', '0', '1000000', '2021-10-04 14:12:09', NULL, 1),
(59, 'Tai nghe UH36 Dual ', 4, 11, '../img_sp/Linh_kien/UH36-Dual_500k.jpg', 12, '500000', '', '100.000', '400000', '2021-10-04 14:12:09', NULL, 1),
(60, 'Asus zenbook UX363EA', 3, 2, '../img_sp/ASUS/asus zenbook UX363EA-HP163T_.png', 17, '51000000', 'Intel Core i7 - 11750G/16GB/1TB/GTX 1650/15.6', '990.000', '50010000', '2021-10-06 19:02:28', NULL, 1),
(62, 'Dell XPS 15 9500', 3, 1, '../img_sp/Dell/dell xps 15 9500.png', 21, '45000000', 'Intel Core i7 - 11750G/16GB/1TB/VGA MX130 2GB/13.3', '990.000', '44010000', '2021-10-07 02:50:07', NULL, 1),
(68, 'Asus zenbook UX482EG', 3, 2, '../img_sp/ASUS/asus zenbook UX482EG-KA099T.jpg', 18, '48000000', 'Intel Core i7 - 9750H/8GB/512GB/GTX 1050Ti 4GB/14.0', '0', '48000000', '2021-10-06 19:02:28', NULL, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thanhtoan`
--

CREATE TABLE `thanhtoan` (
  `mathanhtoan` int(11) NOT NULL,
  `hinhthuctt` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ghichutt` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `trangthai` tinyint(10) NOT NULL DEFAULT 1 COMMENT '1: Mở, 0: Khóa'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `thanhtoan`
--

INSERT INTO `thanhtoan` (`mathanhtoan`, `hinhthuctt`, `ghichutt`, `trangthai`) VALUES
(1, 'Thanh toán qua ngân hàng', '<p><span style=\"font-size: 14px;\"><span style=\"font-family: verdana,geneva,sans-serif;\">Bạn vui l&ograve;ng chuyển khoản đến một t&agrave;i khoản sau:</span></span></p>\r\n<p><em><span style=\"font-size: 14px;\"><span style=\"font-family: verdana,geneva,sans-serif;\">(Nội dung chuyển khoản: Viết Họ t&ecirc;n kh&ocirc;ng c&oacute; dấu - Số điện thoại bạn đ&atilde; đặt h&agrave;ng)</span></span></em></p>\r\n<p><span style=\"font-size: 14px;\"><span style=\"font-family: verdana,geneva,sans-serif;\">Ng&acirc;n h&agrave;ng VPBank:&nbsp;</span></span></p>\r\n<p style=\"margin-left: 40px;\"><span style=\"font-size: 14px;\"><span style=\"font-family: verdana,geneva,sans-serif;\">+ Chủ t&agrave;i khoản: Vũ Tiến Dũng</span></span></p>\r\n<p style=\"margin-left: 40px;\"><span style=\"font-size: 14px;\"><span style=\"font-family: verdana,geneva,sans-serif;\">+ Số t&agrave;i khoản: 187013836</span></span></p>\r\n<p style=\"margin-left: 40px;\"><span style=\"font-family: verdana,geneva,sans-serif; font-size: 14px;\">+&nbsp;</span><span style=\"font-size: 14px;\"><span style=\"font-family: verdana,geneva,sans-serif;\">Ng&acirc;n h&agrave;ng: VPBank chi nh&aacute;nh H&agrave; Nội<span style=\"font-size: 14px;\"><span style=\"font-family: verdana,geneva,sans-serif;\"><span style=\"font-size: 14px;\"><span style=\"font-family: verdana,geneva,sans-serif;\">​</span></span></span></span></span></span></p>\r\n<p><span style=\"font-size: 14px;\"><span style=\"font-family: verdana,geneva,sans-serif;\">Ng&acirc;n h&agrave;ng Agribank:&nbsp;</span></span></p>\r\n<p style=\"margin-left: 40px;\"><span style=\"font-family: verdana,geneva,sans-serif; font-size: 14px;\">+&nbsp;</span><span style=\"font-size: 14px;\"><span style=\"font-family: verdana,geneva,sans-serif;\">Chủ t&agrave;i khoản: Nghi&ecirc;m Thanh T&ugrave;ng</span></span></p>\r\n<p style=\"margin-left: 40px;\"><span style=\"font-family: verdana,geneva,sans-serif; font-size: 14px;\">+&nbsp;</span><span style=\"font-size: 14px;\"><span style=\"font-family: verdana,geneva,sans-serif;\">Số t&agrave;i khoản: 0087575829474</span></span></p>\r\n<p style=\"margin-left: 40px;\"><span style=\"font-family: verdana,geneva,sans-serif; font-size: 14px;\">+&nbsp;</span><span style=\"font-size: 14px;\"><span style=\"font-family: verdana,geneva,sans-serif;\">Ng&acirc;n h&agrave;ng: Agribank chi nh&aacute;nh L&aacute;ng Hạ</span></span></p>', 1),
(2, '<p>Thanh toán tiền mặt</p>', '<p><span style=\"font-family: verdana,geneva,sans-serif;\"><span style=\"font-size: 14px;\">Kh&aacute;ch h&agrave;ng thanh to&aacute;n bằng tiền mặt khi nhận h&agrave;ng</span></span></p>', 1),
(3, 'Thanh toán qua VNPAY', '<p><span style=\"font-size: 14px;\"><span style=\"font-family: verdana,geneva,sans-serif;\">Bạn vui l&ograve;ng thực hiện c&aacute;c bước sau:</span></span></p>\r\n<p style=\"margin-left: 40px;\"><span style=\"font-size: 14px;\"><span style=\"font-family: verdana,geneva,sans-serif;\">+ Bước 1:Tải v&agrave; đăng nhập ứng dụng Mobile Banking</span></span></p>\r\n<p style=\"margin-left: 40px;\"><span style=\"font-size: 14px;\"><span style=\"font-family: verdana,geneva,sans-serif;\">+ Bước 2: Chọn t&iacute;nh năng QR Pay t&iacute;ch hợp sẵn trong ứng dụng</span></span></p>\r\n<p style=\"margin-left: 40px;\"><span style=\"font-family: verdana,geneva,sans-serif; font-size: 14px;\">+&nbsp;</span><span style=\"font-size: 14px;\"><span style=\"font-family: verdana,geneva,sans-serif;\">Bước 3: Qu&eacute;t m&atilde; VNPay để thanh to&aacute;n</span></span></p>\r\n<p style=\"margin-left: 40px;\"><span style=\"font-size: 14px;\"><span style=\"font-family: verdana,geneva,sans-serif;\">+ Bước 4: Nhập số tiền v&agrave; x&aacute;c minh giao dịch</span></span></p>', 1),
(4, '<p>Thanh toán qua Momo</p>', '<p><span style=\"font-size: 14px;\"><span style=\"font-family: verdana,geneva,sans-serif;\">Bạn vui l&ograve;ng thực hiện c&aacute;c bước sau:</span></span></p>\r\n<p style=\"margin-left: 40px;\"><span style=\"font-size: 14px;\"><span style=\"font-family: verdana,geneva,sans-serif;\">+ Bước 1: Mở ứng dụng Momo chọn phần \"M&Atilde; THANH TO&Aacute;N\"</span></span></p>\r\n<p style=\"margin-left: 40px;\"><span style=\"font-size: 14px;\"><span style=\"font-family: verdana,geneva,sans-serif;\">+ Bước 2: Đưa m&atilde; thanh to&aacute;n cho thu ng&acirc;n qu&eacute;t</span></span></p>\r\n<p style=\"margin-left: 40px;\"><span style=\"font-family: verdana,geneva,sans-serif; font-size: 14px;\">+&nbsp;</span><span style=\"font-size: 14px;\"><span style=\"font-family: verdana,geneva,sans-serif;\">Bước 3: Thanh to&aacute;n ho&agrave;n tất</span></span></p>', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thanhvien`
--

CREATE TABLE `thanhvien` (
  `mathanhvien` int(11) NOT NULL,
  `hoten` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tendangnhap` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `matkhau` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `dienthoai` varchar(13) COLLATE utf8_unicode_ci NOT NULL,
  `diachi` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `ngaytao` timestamp NOT NULL DEFAULT current_timestamp(),
  `trangthai` tinyint(10) NOT NULL DEFAULT 1 COMMENT '1: Mở, 0: Khóa'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `thanhvien`
--

INSERT INTO `thanhvien` (`mathanhvien`, `hoten`, `tendangnhap`, `matkhau`, `email`, `dienthoai`, `diachi`, `ngaytao`, `trangthai`) VALUES
(1, 'Nguyễn Hồng Nhung', 'nhn123', 'nhn123', 'nhn123@gmail.com', '0985539882', 'Vĩnh Tuy, Hai Bà Trưng, Hà Nội', '2021-10-07 14:40:47', 1),
(2, 'Vũ Tiến Dũng', 'vtd123', 'vtd123', 'vtd123@gmail.com', '0377322510', 'Trần Phú, Hoàng Mai, Hà Nội', '2021-10-08 13:17:23', 1),
(3, 'Nguyễn Huy Cương', 'nhc123', 'nhc123', 'nhc123@gmail.com', '123456789', 'Vĩnh Phúc', '2021-10-18 03:41:36', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vanchuyen`
--

CREATE TABLE `vanchuyen` (
  `mavanchuyen` int(11) NOT NULL,
  `hinhthucvc` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `giacuoc` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `trangthai` tinyint(10) NOT NULL DEFAULT 1 COMMENT '1: Mở; 0: Khóa'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vanchuyen`
--

INSERT INTO `vanchuyen` (`mavanchuyen`, `hinhthucvc`, `giacuoc`, `trangthai`) VALUES
(1, 'Chuyển phát nhanh', '50.000', 1),
(2, 'Chuyển hàng qua bưu điện', '30.000', 1),
(3, 'Ship COD', '25.000', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`IDadmin`);

--
-- Chỉ mục cho bảng `anh`
--
ALTER TABLE `anh`
  ADD PRIMARY KEY (`maanh`);

--
-- Chỉ mục cho bảng `chi_tiet_hoa_don`
--
ALTER TABLE `chi_tiet_hoa_don`
  ADD PRIMARY KEY (`machitiethoadon`),
  ADD KEY `fkhoadon` (`mahoadon`),
  ADD KEY `fksp_id` (`sp_id`);

--
-- Chỉ mục cho bảng `cua_hang`
--
ALTER TABLE `cua_hang`
  ADD PRIMARY KEY (`ma_cua_hang`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`mahoadon`),
  ADD KEY `fk4` (`mathanhvien`),
  ADD KEY `fk5` (`mathanhtoan`),
  ADD KEY `fk6` (`mavanchuyen`);

--
-- Chỉ mục cho bảng `loaisp`
--
ALTER TABLE `loaisp`
  ADD PRIMARY KEY (`maloai`),
  ADD KEY `fk1` (`manhomsp`);

--
-- Chỉ mục cho bảng `nhomsp`
--
ALTER TABLE `nhomsp`
  ADD PRIMARY KEY (`manhom`);

--
-- Chỉ mục cho bảng `phan_hoi_kh`
--
ALTER TABLE `phan_hoi_kh`
  ADD PRIMARY KEY (`mabinhluan`),
  ADD KEY `fk7` (`masp`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`sp_id`),
  ADD KEY `fk2` (`manhomsp`),
  ADD KEY `fk3` (`maloaisp`);

--
-- Chỉ mục cho bảng `thanhtoan`
--
ALTER TABLE `thanhtoan`
  ADD PRIMARY KEY (`mathanhtoan`);

--
-- Chỉ mục cho bảng `thanhvien`
--
ALTER TABLE `thanhvien`
  ADD PRIMARY KEY (`mathanhvien`);

--
-- Chỉ mục cho bảng `vanchuyen`
--
ALTER TABLE `vanchuyen`
  ADD PRIMARY KEY (`mavanchuyen`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `IDadmin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `anh`
--
ALTER TABLE `anh`
  MODIFY `maanh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `chi_tiet_hoa_don`
--
ALTER TABLE `chi_tiet_hoa_don`
  MODIFY `machitiethoadon` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `cua_hang`
--
ALTER TABLE `cua_hang`
  MODIFY `ma_cua_hang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `mahoadon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `loaisp`
--
ALTER TABLE `loaisp`
  MODIFY `maloai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `nhomsp`
--
ALTER TABLE `nhomsp`
  MODIFY `manhom` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `phan_hoi_kh`
--
ALTER TABLE `phan_hoi_kh`
  MODIFY `mabinhluan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `sp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT cho bảng `thanhtoan`
--
ALTER TABLE `thanhtoan`
  MODIFY `mathanhtoan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `thanhvien`
--
ALTER TABLE `thanhvien`
  MODIFY `mathanhvien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `vanchuyen`
--
ALTER TABLE `vanchuyen`
  MODIFY `mavanchuyen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chi_tiet_hoa_don`
--
ALTER TABLE `chi_tiet_hoa_don`
  ADD CONSTRAINT `fkhoadon` FOREIGN KEY (`mahoadon`) REFERENCES `hoadon` (`mahoadon`),
  ADD CONSTRAINT `fksp_id` FOREIGN KEY (`sp_id`) REFERENCES `sanpham` (`sp_id`);

--
-- Các ràng buộc cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `fk4` FOREIGN KEY (`mathanhvien`) REFERENCES `thanhvien` (`mathanhvien`),
  ADD CONSTRAINT `fk5` FOREIGN KEY (`mathanhtoan`) REFERENCES `thanhtoan` (`mathanhtoan`),
  ADD CONSTRAINT `fk6` FOREIGN KEY (`mavanchuyen`) REFERENCES `vanchuyen` (`mavanchuyen`);

--
-- Các ràng buộc cho bảng `loaisp`
--
ALTER TABLE `loaisp`
  ADD CONSTRAINT `fk1` FOREIGN KEY (`manhomsp`) REFERENCES `nhomsp` (`manhom`);

--
-- Các ràng buộc cho bảng `phan_hoi_kh`
--
ALTER TABLE `phan_hoi_kh`
  ADD CONSTRAINT `fk7` FOREIGN KEY (`masp`) REFERENCES `sanpham` (`sp_id`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `fk2` FOREIGN KEY (`manhomsp`) REFERENCES `nhomsp` (`manhom`),
  ADD CONSTRAINT `fk3` FOREIGN KEY (`maloaisp`) REFERENCES `loaisp` (`maloai`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
