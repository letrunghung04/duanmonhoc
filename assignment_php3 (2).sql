-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 02, 2024 lúc 04:04 AM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `assignment_php3`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binh_luans`
--

CREATE TABLE `binh_luans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tai_khoan_id` bigint(20) UNSIGNED NOT NULL,
  `san_pham_id` bigint(20) UNSIGNED NOT NULL,
  `noi_dung` text NOT NULL,
  `thoi_gian` timestamp NOT NULL DEFAULT current_timestamp(),
  `trang_thai` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `binh_luans`
--

INSERT INTO `binh_luans` (`id`, `tai_khoan_id`, `san_pham_id`, `noi_dung`, `thoi_gian`, `trang_thai`, `created_at`, `updated_at`) VALUES
(1, 5, 7, 'Sản phẩm rất tốt', '2024-08-01 16:33:14', 1, '2024-08-01 09:33:14', '2024-08-01 09:33:14');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chi_tiet_don_hangs`
--

CREATE TABLE `chi_tiet_don_hangs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `don_hang_id` bigint(20) UNSIGNED NOT NULL,
  `san_pham_id` bigint(20) UNSIGNED NOT NULL,
  `don_gia` double(10,2) NOT NULL,
  `so_luong` int(10) UNSIGNED NOT NULL,
  `thanh_tien` double(12,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chi_tiet_don_hangs`
--

INSERT INTO `chi_tiet_don_hangs` (`id`, `don_hang_id`, `san_pham_id`, `don_gia`, `so_luong`, `thanh_tien`, `created_at`, `updated_at`) VALUES
(13, 8, 7, 2300000.00, 2, 4600000.00, '2024-08-01 08:30:34', '2024-08-01 08:30:34'),
(14, 8, 7, 2300000.00, 1, 2300000.00, '2024-08-01 08:30:34', '2024-08-01 08:30:34'),
(15, 9, 7, 2300000.00, 2, 4600000.00, '2024-08-01 09:40:47', '2024-08-01 09:40:47'),
(16, 9, 7, 2300000.00, 1, 2300000.00, '2024-08-01 09:40:47', '2024-08-01 09:40:47'),
(17, 10, 7, 2300000.00, 2, 4600000.00, '2024-08-01 11:24:50', '2024-08-01 11:24:50'),
(18, 10, 7, 2300000.00, 1, 2300000.00, '2024-08-01 11:24:50', '2024-08-01 11:24:50'),
(19, 11, 7, 2300000.00, 1, 2300000.00, '2024-08-01 11:27:36', '2024-08-01 11:27:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chi_tiet_gio_hangs`
--

CREATE TABLE `chi_tiet_gio_hangs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gio_hang_id` bigint(20) UNSIGNED NOT NULL,
  `san_pham_id` bigint(20) UNSIGNED NOT NULL,
  `so_luong` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chi_tiet_gio_hangs`
--

INSERT INTO `chi_tiet_gio_hangs` (`id`, `gio_hang_id`, `san_pham_id`, `so_luong`, `created_at`, `updated_at`) VALUES
(16, 4, 7, 1, '2024-08-01 17:57:37', '2024-08-01 17:57:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chuc_vus`
--

CREATE TABLE `chuc_vus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ten_chuc_vu` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chuc_vus`
--

INSERT INTO `chuc_vus` (`id`, `ten_chuc_vu`, `created_at`, `updated_at`) VALUES
(1, 'Admin', NULL, NULL),
(2, 'Khách hàng', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danh_mucs`
--

CREATE TABLE `danh_mucs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ten_danh_muc` varchar(50) NOT NULL,
  `mo_ta` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danh_mucs`
--

INSERT INTO `danh_mucs` (`id`, `ten_danh_muc`, `mo_ta`, `created_at`, `updated_at`) VALUES
(1, 'Nam', 'Giày thể thao nam', NULL, NULL),
(2, 'Nữ', 'Giày thể thao nữ', NULL, NULL),
(3, 'Trẻ em', 'Giày thể thao trẻ em', NULL, NULL),
(4, 'Giảm giá', 'Giày thể thao giảm giá', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `don_hangs`
--

CREATE TABLE `don_hangs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tai_khoan_id` bigint(20) UNSIGNED NOT NULL,
  `ten_nguoi_nhan` varchar(50) NOT NULL,
  `email_nguoi_nhan` varchar(255) NOT NULL,
  `sdt_nguoi_nhan` varchar(255) NOT NULL,
  `dia_chi_nguoi_nhan` varchar(255) NOT NULL,
  `ngay_dat` date NOT NULL,
  `tong_tien` double(12,2) NOT NULL,
  `ghi_chu` text NOT NULL,
  `phuong_thuc_thanh_toan_id` bigint(20) UNSIGNED NOT NULL,
  `trang_thai` varchar(255) NOT NULL DEFAULT 'cho_xac_nhan',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `don_hangs`
--

INSERT INTO `don_hangs` (`id`, `tai_khoan_id`, `ten_nguoi_nhan`, `email_nguoi_nhan`, `sdt_nguoi_nhan`, `dia_chi_nguoi_nhan`, `ngay_dat`, `tong_tien`, `ghi_chu`, `phuong_thuc_thanh_toan_id`, `trang_thai`, `created_at`, `updated_at`) VALUES
(8, 5, 'Nguyễn Văn Minh', 'nguyenminhxp2004@gmail.com', '0395110845', 'Bắc Giang', '2024-08-01', 6900000.00, 'Giao tận tay', 1, 'dang_chuan_bi', '2024-08-01 08:30:34', '2024-08-01 19:02:25'),
(9, 5, 'Nguyễn Văn Minh', 'nguyenminhxp2004@gmail.com', '0395110845', 'Bắc Giang', '2024-08-01', 6900000.00, 'Giao tận tay', 1, 'cho_xac_nhan', '2024-08-01 09:40:47', '2024-08-01 09:40:47'),
(10, 5, 'Nguyễn Văn Minh', 'nguyenminhxp2004@gmail.com', '0395110845', 'Bắc Giang', '2024-08-01', 6900000.00, 'Giao tận tay', 1, 'cho_xac_nhan', '2024-08-01 11:24:50', '2024-08-01 11:24:50'),
(11, 5, 'Nguyễn Văn Minh', 'nguyenminhxp2004@gmail.com', '0395110845', 'Bắc Giang', '2024-08-01', 2300000.00, 'Giao tận tay', 1, 'cho_xac_nhan', '2024-08-01 11:27:36', '2024-08-01 11:27:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gio_hangs`
--

CREATE TABLE `gio_hangs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tai_khoan_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `gio_hangs`
--

INSERT INTO `gio_hangs` (`id`, `tai_khoan_id`, `created_at`, `updated_at`) VALUES
(4, 5, '2024-08-01 11:38:47', '2024-08-01 11:38:47');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hinh_anh_san_phams`
--

CREATE TABLE `hinh_anh_san_phams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `san_pham_id` bigint(20) UNSIGNED NOT NULL,
  `link_hinh_anh` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hinh_anh_san_phams`
--

INSERT INTO `hinh_anh_san_phams` (`id`, `san_pham_id`, `link_hinh_anh`, `created_at`, `updated_at`) VALUES
(26, 7, 'uploads/hinhanhsanpham/id_7/OBQvzZTzFjMPRfNIsaAU2tSINO8rqg6LbHQG67JN.webp', '2024-07-30 06:30:24', '2024-08-01 18:35:06'),
(27, 7, 'uploads/hinhanhsanpham/id_7/Q93hMoOsP5QHLpoCnz4SwoHT3Fw4LcI7bRyJbLVo.webp', '2024-07-30 06:31:29', '2024-07-30 07:07:17'),
(28, 7, 'uploads/hinhanhsanpham/id_7/xWSoovqMM2cTWQo0SIhLPDdMxozAq7LSHq86FUPN.webp', '2024-07-30 06:31:29', '2024-07-30 07:07:17'),
(31, 7, 'uploads/hinhanhsanpham/id_7/OVZ4W6K1dhpgOEjDCtVGOOPvxEWhUNQruG1EQGvI.webp', '2024-07-30 07:07:17', '2024-07-30 07:07:17'),
(33, 8, 'uploads/hinhanhsanpham/id_8/iOhCzCWhsk4Ms0nWeFB3lWN4FqrrHW4QzpqNOAMz.webp', '2024-07-30 08:38:01', '2024-07-30 08:38:01'),
(34, 8, 'uploads/hinhanhsanpham/id_8/fZozev3hx0bUT6ZxyB750llGjfNrkii9VW62oWQu.webp', '2024-07-30 08:38:01', '2024-07-30 08:38:01'),
(35, 8, 'uploads/hinhanhsanpham/id_8/WYKvXu1HnixDovPBw5uotT7qhJxHmsIn0yH5iFod.jpg', '2024-07-30 08:38:01', '2024-07-30 08:38:01'),
(36, 8, 'uploads/hinhanhsanpham/id_8/2RNtwBJo4S2xxLB4FNc2fnABRoHNf8cz6Q9RXTLB.jpg', '2024-07-30 08:38:01', '2024-07-30 08:38:01'),
(37, 9, 'uploads/hinhanhsanpham/id_9/KPuPm6ZD5LMGD3GfvVe2mfNzLN96wXOiaSoyf0Gr.webp', '2024-07-30 19:40:10', '2024-07-30 19:40:10'),
(38, 9, 'uploads/hinhanhsanpham/id_9/Ver1ZpldZ1Vx4oPWBkiy13BL1eS5vEIr3OL8NZgG.webp', '2024-07-30 19:40:10', '2024-07-30 19:40:10'),
(39, 9, 'uploads/hinhanhsanpham/id_9/jdOoMTyljBTWdWLoWVaVRR8ZQbpl6ILAb0NSPDeD.webp', '2024-07-30 19:40:10', '2024-07-30 19:40:10'),
(40, 9, 'uploads/hinhanhsanpham/id_9/BF2uz2HUxc60fXr55AwiUeRMdqMqbZI5TBqwJNHp.webp', '2024-07-30 19:40:10', '2024-07-30 19:40:10'),
(41, 10, 'uploads/hinhanhsanpham/id_10/g4xscPMuUjChZbaBdKEZGrO63pXLjdjOLTG5T9oa.webp', '2024-08-01 18:59:12', '2024-08-01 18:59:12'),
(42, 10, 'uploads/hinhanhsanpham/id_10/72rdw3T0Ar3pLaMFdW5sDY7LdIWCrd5csPw0r5LW.webp', '2024-08-01 18:59:12', '2024-08-01 18:59:12'),
(43, 11, 'uploads/hinhanhsanpham/id_11/B8ALtDTwivfnBNnHJYKkXOWgSdQEyxr86l6YlcyZ.webp', '2024-08-01 19:01:58', '2024-08-01 19:01:58'),
(44, 11, 'uploads/hinhanhsanpham/id_11/sXsTqosXGVMixpCjAiAPHLoJYTBsB1YZrLMQ2JmT.jpg', '2024-08-01 19:01:58', '2024-08-01 19:01:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2024_07_15_124227_create_danh_mucs_table', 1),
(5, '2024_07_15_124454_create_san_phams_table', 1),
(6, '2024_07_25_050812_create_chuc_vus_table', 1),
(7, '2024_07_25_052852_create_hinh_anh_san_phams_table', 1),
(8, '2014_10_12_000000_create_users_table', 2),
(9, '2024_07_25_053738_create_gio_hangs_table', 3),
(10, '2024_07_25_054103_create_chi_tiet_gio_hangs_table', 3),
(11, '2024_07_25_054804_create_phuong_thuc_thanh_toans_table', 3),
(12, '2024_07_25_054904_create_don_hangs_table', 3),
(13, '2024_07_25_060506_create_chi_tiet_don_hangs_table', 3),
(14, '2024_08_01_100029_drop_column_from_don_hangs_table', 4),
(15, '2024_08_01_103943_update_column_in_don_hangs_table', 5),
(16, '2024_07_31_173545_create_binh_luans_table', 6),
(17, '2024_08_02_011134_create_thong_kes_table', 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phuong_thuc_thanh_toans`
--

CREATE TABLE `phuong_thuc_thanh_toans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ten_phuong_thuc` varchar(70) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `phuong_thuc_thanh_toans`
--

INSERT INTO `phuong_thuc_thanh_toans` (`id`, `ten_phuong_thuc`, `created_at`, `updated_at`) VALUES
(1, 'Thanh toán khi nhận hàng', NULL, NULL),
(2, 'Thanh toán trước khi nhận hàng', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `san_phams`
--

CREATE TABLE `san_phams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ten_san_pham` varchar(50) NOT NULL,
  `gia_san_pham` double(10,2) NOT NULL,
  `gia_khuyen_mai` double(10,2) NOT NULL,
  `hinh_anh` text DEFAULT NULL,
  `so_luong` int(10) UNSIGNED DEFAULT NULL,
  `luot_xem` int(10) UNSIGNED DEFAULT NULL,
  `ngay_nhap` date NOT NULL,
  `mo_ta` text NOT NULL,
  `trang_thai` tinyint(1) NOT NULL DEFAULT 0,
  `danh_muc_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `san_phams`
--

INSERT INTO `san_phams` (`id`, `ten_san_pham`, `gia_san_pham`, `gia_khuyen_mai`, `hinh_anh`, `so_luong`, `luot_xem`, `ngay_nhap`, `mo_ta`, `trang_thai`, `danh_muc_id`, `created_at`, `updated_at`) VALUES
(7, 'Air Force 1', 2300000.00, 2000000.00, 'uploads/sanpham/lCBrNIdzcifZL5F1xzgEAyvZnv6y1UeidGwTlTkT.webp', 20, 1, '2024-07-30', 'Giày thể thao giá học sinh', 1, 1, '2024-07-30 04:50:16', '2024-07-31 10:24:40'),
(8, 'Air Jordan 1 Low', 4300000.00, 3900000.00, 'uploads/sanpham/z7kVPV4NTS80zI6nRtMmBpzfczZA7XQ5oRCuO5rP.webp', 20, 1, '2024-07-30', 'Giày thể thao phong cách bóng rổ', 1, 1, '2024-07-30 08:38:01', '2024-07-30 08:38:01'),
(9, 'Air Jordan 1 Mid SE', 3400000.00, 3100000.00, 'uploads/sanpham/Kwm3hW0Oed8Y12AHPK15BGTkxw2CxcFrlIar7CUT.webp', 20, 1, '2024-07-31', 'Giày thể thao giá tốt', 1, 1, '2024-07-30 19:40:10', '2024-07-30 19:40:10'),
(10, 'Air Force 1', 34123.00, 13413.00, 'uploads/sanpham/2riPyffJcDccFDoYngHguYfo77i9IxkOi4GgDklj.webp', 20, 1, '2024-08-02', 'Giày thể thao giá', 1, 1, '2024-08-01 18:59:12', '2024-08-01 18:59:12'),
(11, 'Air Jordan 1 Low', 2.00, 1.00, 'uploads/sanpham/SJzKVwIP3ZGjEjtS3K793At2DPAUjFooYLe89lBH.webp', 2, 1, '2024-08-02', 'àda', 1, 1, '2024-08-01 19:01:58', '2024-08-01 19:01:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thong_kes`
--

CREATE TABLE `thong_kes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `so_luong_san_pham` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `so_luong_don_hang` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `so_luong_tai_khoan` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `so_luong_danh_muc` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `thong_kes`
--

INSERT INTO `thong_kes` (`id`, `so_luong_san_pham`, `so_luong_don_hang`, `so_luong_tai_khoan`, `so_luong_danh_muc`, `created_at`, `updated_at`) VALUES
(1, 5, 4, 2, 4, '2024-08-01 18:22:35', '2024-08-01 19:02:11');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `anh_dai_dien` text DEFAULT NULL,
  `ngay_sinh` date NOT NULL,
  `so_dien_thoai` varchar(255) DEFAULT NULL,
  `dia_chi` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` bigint(20) UNSIGNED NOT NULL,
  `trang_thai` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `anh_dai_dien`, `ngay_sinh`, `so_dien_thoai`, `dia_chi`, `email`, `email_verified_at`, `password`, `role`, `trang_thai`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 'Nguyễn Văn Minh', NULL, '2024-07-28', '0395110847', 'Bắc Giang', 'nguyenminhxp204@gmail.com', NULL, '$2y$10$YLaY46Weai56pxWdJrt21.aZD9QlPaoN/g2ky6Eap90yEMjXnSIAi', 2, 0, NULL, '2024-07-28 09:44:16', '2024-07-28 09:44:16'),
(5, 'Nguyễn Văn Minh', NULL, '2004-03-17', '0395110845', 'Bắc Giang', 'nguyenminhxp2004@gmail.com', NULL, '$2y$10$vJM8BwjXeOF1wq22aeW3m.ymaLbjLBXyvo9RVnfhfl878MGszObiS', 1, 0, NULL, '2024-07-28 09:45:53', '2024-07-28 09:58:43');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `binh_luans`
--
ALTER TABLE `binh_luans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `binh_luans_tai_khoan_id_foreign` (`tai_khoan_id`),
  ADD KEY `binh_luans_san_pham_id_foreign` (`san_pham_id`);

--
-- Chỉ mục cho bảng `chi_tiet_don_hangs`
--
ALTER TABLE `chi_tiet_don_hangs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chi_tiet_don_hangs_don_hang_id_foreign` (`don_hang_id`),
  ADD KEY `chi_tiet_don_hangs_san_pham_id_foreign` (`san_pham_id`);

--
-- Chỉ mục cho bảng `chi_tiet_gio_hangs`
--
ALTER TABLE `chi_tiet_gio_hangs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chi_tiet_gio_hangs_gio_hang_id_foreign` (`gio_hang_id`),
  ADD KEY `chi_tiet_gio_hangs_san_pham_id_foreign` (`san_pham_id`);

--
-- Chỉ mục cho bảng `chuc_vus`
--
ALTER TABLE `chuc_vus`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `danh_mucs`
--
ALTER TABLE `danh_mucs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `don_hangs`
--
ALTER TABLE `don_hangs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `don_hangs_tai_khoan_id_foreign` (`tai_khoan_id`),
  ADD KEY `don_hangs_phuong_thuc_thanh_toan_id_foreign` (`phuong_thuc_thanh_toan_id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `gio_hangs`
--
ALTER TABLE `gio_hangs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gio_hangs_tai_khoan_id_foreign` (`tai_khoan_id`);

--
-- Chỉ mục cho bảng `hinh_anh_san_phams`
--
ALTER TABLE `hinh_anh_san_phams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hinh_anh_san_phams_san_pham_id_foreign` (`san_pham_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `phuong_thuc_thanh_toans`
--
ALTER TABLE `phuong_thuc_thanh_toans`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `san_phams`
--
ALTER TABLE `san_phams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `san_phams_danh_muc_id_foreign` (`danh_muc_id`);

--
-- Chỉ mục cho bảng `thong_kes`
--
ALTER TABLE `thong_kes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_foreign` (`role`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `binh_luans`
--
ALTER TABLE `binh_luans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `chi_tiet_don_hangs`
--
ALTER TABLE `chi_tiet_don_hangs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `chi_tiet_gio_hangs`
--
ALTER TABLE `chi_tiet_gio_hangs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `chuc_vus`
--
ALTER TABLE `chuc_vus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `danh_mucs`
--
ALTER TABLE `danh_mucs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `don_hangs`
--
ALTER TABLE `don_hangs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `gio_hangs`
--
ALTER TABLE `gio_hangs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `hinh_anh_san_phams`
--
ALTER TABLE `hinh_anh_san_phams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `phuong_thuc_thanh_toans`
--
ALTER TABLE `phuong_thuc_thanh_toans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `san_phams`
--
ALTER TABLE `san_phams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `thong_kes`
--
ALTER TABLE `thong_kes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `binh_luans`
--
ALTER TABLE `binh_luans`
  ADD CONSTRAINT `binh_luans_san_pham_id_foreign` FOREIGN KEY (`san_pham_id`) REFERENCES `san_phams` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `binh_luans_tai_khoan_id_foreign` FOREIGN KEY (`tai_khoan_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `chi_tiet_don_hangs`
--
ALTER TABLE `chi_tiet_don_hangs`
  ADD CONSTRAINT `chi_tiet_don_hangs_don_hang_id_foreign` FOREIGN KEY (`don_hang_id`) REFERENCES `don_hangs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `chi_tiet_don_hangs_san_pham_id_foreign` FOREIGN KEY (`san_pham_id`) REFERENCES `san_phams` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `chi_tiet_gio_hangs`
--
ALTER TABLE `chi_tiet_gio_hangs`
  ADD CONSTRAINT `chi_tiet_gio_hangs_gio_hang_id_foreign` FOREIGN KEY (`gio_hang_id`) REFERENCES `gio_hangs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `chi_tiet_gio_hangs_san_pham_id_foreign` FOREIGN KEY (`san_pham_id`) REFERENCES `san_phams` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `don_hangs`
--
ALTER TABLE `don_hangs`
  ADD CONSTRAINT `don_hangs_phuong_thuc_thanh_toan_id_foreign` FOREIGN KEY (`phuong_thuc_thanh_toan_id`) REFERENCES `phuong_thuc_thanh_toans` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `don_hangs_tai_khoan_id_foreign` FOREIGN KEY (`tai_khoan_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `gio_hangs`
--
ALTER TABLE `gio_hangs`
  ADD CONSTRAINT `gio_hangs_tai_khoan_id_foreign` FOREIGN KEY (`tai_khoan_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `hinh_anh_san_phams`
--
ALTER TABLE `hinh_anh_san_phams`
  ADD CONSTRAINT `hinh_anh_san_phams_san_pham_id_foreign` FOREIGN KEY (`san_pham_id`) REFERENCES `san_phams` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `san_phams`
--
ALTER TABLE `san_phams`
  ADD CONSTRAINT `san_phams_danh_muc_id_foreign` FOREIGN KEY (`danh_muc_id`) REFERENCES `danh_mucs` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_foreign` FOREIGN KEY (`role`) REFERENCES `chuc_vus` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
