-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2024 at 01:16 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qlks`
--

-- --------------------------------------------------------

--
-- Table structure for table `chitietdp`
--

CREATE TABLE `chitietdp` (
  `id` int(10) UNSIGNED NOT NULL,
  `datphong_id` int(10) UNSIGNED NOT NULL,
  `phong_id` int(10) UNSIGNED NOT NULL,
  `sophong` int(10) NOT NULL DEFAULT 0,
  `gia` float NOT NULL,
  `chuthich` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chitietdp`
--

INSERT INTO `chitietdp` (`id`, `datphong_id`, `phong_id`, `sophong`, `gia`, `chuthich`, `created_at`, `updated_at`) VALUES
(1, 1, 15, 2, 0, NULL, NULL, '2020-12-16 05:29:50'),
(2, 2, 1, 1, 0, NULL, NULL, '2020-12-22 11:43:53'),
(3, 1, 5, 1, 0, 'Huỷ', NULL, '2020-11-20 12:08:47'),
(4, 2, 5, 10, 0, '', NULL, '2020-11-20 12:08:47'),
(6, 11, 21, 1, 9786490, NULL, '2021-01-05 02:49:32', '2021-01-05 02:49:32'),
(7, 11, 1, 8, 1500000, NULL, '2021-01-05 02:49:32', '2021-01-05 02:49:32'),
(8, 11, 7, 1, 2500000, NULL, '2021-01-05 02:49:32', '2021-01-05 02:49:32'),
(12, 14, 7, 1, 2500000, NULL, '2021-01-05 03:10:48', '2021-01-05 03:10:48'),
(13, 15, 1, 1, 1500000, NULL, '2021-01-05 04:09:58', '2021-01-05 04:09:58'),
(14, 16, 7, 4, 2500000, NULL, '2021-01-05 04:11:27', '2021-01-05 04:11:27'),
(15, 17, 2, 3, 3000000, NULL, '2021-01-06 00:23:49', '2021-01-06 00:23:49'),
(16, 18, 1, 4, 1500000, NULL, '2021-01-06 00:26:36', '2021-01-06 00:26:36'),
(17, 19, 21, 3, 9786490, NULL, '2021-01-06 00:50:38', '2021-01-06 00:50:38'),
(18, 20, 2, 1, 3000000, NULL, '2023-12-20 21:09:41', '2023-12-20 21:09:41'),
(19, 21, 8, 1, 8000000000, NULL, '2024-06-18 10:14:13', '2024-06-18 10:14:13'),
(20, 22, 1, 1, 15000000000, NULL, '2024-06-19 03:06:04', '2024-06-19 03:06:04');

-- --------------------------------------------------------

--
-- Table structure for table `datphong`
--

CREATE TABLE `datphong` (
  `id` int(10) UNSIGNED NOT NULL,
  `khachhang_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ngaydat` date DEFAULT NULL,
  `tongsophong` int(2) NOT NULL,
  `tongtien` float NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `chuthich` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `datphong`
--

INSERT INTO `datphong` (`id`, `khachhang_id`, `user_id`, `ngaydat`, `tongsophong`, `tongtien`, `start_date`, `end_date`, `chuthich`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2020-11-20', 0, 0, '2020-11-20', '2020-11-25', NULL, NULL, '2020-11-17 05:23:42'),
(2, 2, 1, '2020-11-20', 0, 0, '2020-11-17', '2020-11-18', NULL, NULL, NULL),
(14, 19, NULL, '2021-01-05', 1, 2500000, '2021-05-01', '2021-05-01', 'trghggf', '2021-01-05 03:10:48', '2021-01-05 03:10:48'),
(15, 20, NULL, '2021-01-05', 1, 1500000, '2021-05-01', '2021-05-01', NULL, '2021-01-05 04:09:57', '2021-01-05 04:09:57'),
(16, 21, NULL, '2021-01-05', 4, 10000000, NULL, NULL, NULL, '2021-01-05 04:11:27', '2021-01-05 04:11:27'),
(17, 22, NULL, '2021-01-06', 3, 9000000, NULL, NULL, NULL, '2021-01-06 00:23:49', '2021-01-06 00:23:49'),
(18, 23, NULL, '2021-01-06', 4, 6000000, NULL, NULL, NULL, '2021-01-06 00:26:36', '2021-01-06 00:26:36'),
(19, 24, NULL, '2021-01-06', 3, 29359500, '2021-06-01', '2021-06-01', '12356', '2021-01-06 00:50:38', '2021-01-06 00:50:38'),
(20, 25, NULL, '2023-12-21', 1, 3000000, '2023-12-14', '2023-12-22', '0123456789', '2023-12-20 21:09:41', '2023-12-20 21:09:41'),
(21, 26, NULL, '2024-06-18', 1, 8000000000, '2024-06-20', NULL, NULL, '2024-06-18 10:14:13', '2024-06-18 10:14:13'),
(22, 27, NULL, '2024-06-19', 1, 15000000000, '2024-06-26', NULL, NULL, '2024-06-19 03:06:04', '2024-06-19 03:06:04');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kh`
--

CREATE TABLE `kh` (
  `id` int(10) UNSIGNED NOT NULL,
  `ten_kh` varchar(255) NOT NULL,
  `sdt` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `diachi` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kh`
--

INSERT INTO `kh` (`id`, `ten_kh`, `sdt`, `email`, `diachi`, `created_at`, `updated_at`) VALUES
(1, 'Nguyen Van ABSFDBVD', '01234567895678656', 'nguyenegdhfmngvana@gmail.comn', '', NULL, '2020-11-17 05:24:02'),
(2, 'Tran Van BACA', '084564343565', 'bvantran@yahoo.com', '', NULL, '2020-11-20 09:29:35'),
(4, 'Đỗ Thị Ngọc Ánh', '0123456789', 'anh@gmail.com', '', NULL, '2020-11-20 09:29:35'),
(19, 'fgfhfjk', '3565u7iukj', 'dfsgh@gmail.com', 'ưeretgrhtyj', '2021-01-05 03:10:48', '2021-01-05 03:10:48'),
(20, 'Nguyễn Tiến Anh', '123456789', 'ngyentienanh@gmail.com', 'Thái Bình', '2021-01-05 04:09:57', '2021-01-05 04:09:57'),
(21, 'Trần Thị Nhung', '567686564', 'nhungthi@gmail.com', 'Hà Nội', '2021-01-05 04:11:27', '2021-01-05 04:11:27'),
(22, 'Nguyễn Hải Long', '0123456789', 'hailong@gmail.com', 'Thái Thuỵ, Thái Bình', '2021-01-06 00:23:49', '2021-01-06 00:23:49'),
(23, 'Trần Duy', '0378208439', 'tranduy@gmail.com', 'Hà Nội', '2021-01-06 00:26:35', '2021-01-06 00:26:35'),
(24, 'Nguyễn Tiến Anh', '1234567', 'anhtien@gmail.com', '123467', '2021-01-06 00:50:38', '2021-01-06 00:50:38'),
(25, 'Nguyễn Tiến Anh', '0123456789', 'romcoca251100@gmail.com', '0123456789', '2023-12-20 21:09:40', '2023-12-20 21:09:40'),
(26, 'Nguyen Gia Bao', '0866088827', 'giabarnguuyen@gmai.com', 'Trung Văn', '2024-06-18 10:14:13', '2024-06-18 10:14:13'),
(27, 'Nguyen Gia Bao', '0849488268', 'giabarnguyen2@gmail.com', 'trbdfb  retgebfd', '2024-06-19 03:06:04', '2024-06-19 03:06:04');

-- --------------------------------------------------------

--
-- Table structure for table `loaiphong`
--

CREATE TABLE `loaiphong` (
  `id` int(2) UNSIGNED NOT NULL,
  `tenloaiphong` varchar(255) NOT NULL,
  `slug` varchar(1000) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loaiphong`
--

INSERT INTO `loaiphong` (`id`, `tenloaiphong`, `slug`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Căn Hộ Studio', 'Căn hộ studio', 1, '2020-11-20 12:00:31', '2020-11-20 12:00:31'),
(2, 'Căn Hộ Thường', 'phong-thuong', 1, '2020-12-21 04:55:41', '2020-12-21 04:55:41'),
(3, 'Căn Hộ Luxury', 'phong-luxury', 1, '2020-12-21 04:55:47', '2020-12-21 04:55:47'),
(4, 'Căn Hộ Penthouse', 'phong-penthouse', 1, '2021-01-06 00:58:28', '2021-01-06 00:58:28');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(9, '2014_10_12_000000_create_users_table', 1),
(10, '2014_10_12_100000_create_password_resets_table', 1),
(11, '2019_08_19_000000_create_failed_jobs_table', 1),
(12, '2020_11_13_212745_role', 1),
(13, '2020_11_13_212856_loaiphong_table', 1),
(14, '2020_11_13_212913_phong_table', 1),
(15, '2020_11_13_212936_datphong_table', 1),
(16, '2020_11_13_212947_chitietdatphong_table', 2),
(17, '2020_11_13_213009_khachhang_table', 3),
(18, '2020_11_20_205230_slide_table', 4),
(19, '2014_10_12_100000_create_password_reset_tokens_table', 5),
(20, '2019_12_14_000001_create_personal_access_tokens_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
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
-- Table structure for table `phong`
--

CREATE TABLE `phong` (
  `id` int(10) UNSIGNED NOT NULL,
  `loaiphong_id` int(10) UNSIGNED NOT NULL,
  `tenphong` varchar(255) NOT NULL,
  `chuthich` longtext DEFAULT NULL,
  `hinhanh` text DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `soluong` int(10) NOT NULL DEFAULT 0,
  `gia` float NOT NULL,
  `slug` varchar(1000) NOT NULL,
  `booked` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phong`
--

INSERT INTO `phong` (`id`, `loaiphong_id`, `tenphong`, `chuthich`, `hinhanh`, `user_id`, `soluong`, `gia`, `slug`, `booked`, `created_at`, `updated_at`) VALUES
(1, 1, 'Căn hộ Studio Cao cấp', 'Căn hộ studio là lựa chọn lý tưởng cho người yêu thích sự tiện nghi và hiện đại. Với thiết kế mở, tích hợp không gian sống, ngủ và bếp, căn hộ mang lại cảm giác thông thoáng, gọn gàng và tiện lợi.', 'yFMPL_B0iHP_thoi-hon-vao-can-ho-nho-mang-dam-dau-an-ca-nhan-va-may-mai-nen-be-tong-tien-dung_1667538225.jpg', 1, 0, 15000000000, 'can-ho-studio-cao-cap', 5, NULL, '2024-06-19 04:13:29'),
(2, 3, 'Căn Hộ Luxury', 'Căn hộ có các phòng: phòng khách, phòng ngủ, bếp và phòng tắm. Với thiết kế tiện nghi và hiện đại, căn hộ đáp ứng nhu cầu sinh hoạt hàng ngày, mang lại không gian sống thoải mái và tiện lợi.', 'Sn1Da_uDycA_chung-cu-feliz-homes-1-1-1024x564.jpg', 1, 9, 20000000000, 'can-ho-luxury', 1, NULL, '2024-06-19 04:13:11'),
(3, 1, 'Căn hộ Studio Trung Cấp', 'Căn hộ studio là lựa chọn lý tưởng cho người yêu thích sự tiện nghi và hiện đại. Với thiết kế mở, tích hợp không gian sống, ngủ và bếp, căn hộ mang lại cảm giác thông thoáng, gọn gàng và tiện lợi.', 'qzFfM_q6Ugg_Căn-hộ-studio-không-có-sự-ngăn-chia-các-phòng-scaled.jpg', 1, 10, 10000000000, 'can-ho-studio-trung-cap', 0, '2020-11-20 11:30:26', '2024-06-19 04:15:50'),
(4, 2, 'Căn Hộ Cá Nhân', 'Căn hộ có các phòng: phòng khách, phòng ngủ, bếp và phòng tắm. Với thiết kế tiện nghi và hiện đại, căn hộ đáp ứng nhu cầu sinh hoạt hàng ngày, mang lại không gian sống thoải mái và tiện lợi.', '0Ye4d_02hrq_img_20230515151055.png', 1, 5, 3000000000, 'can-ho-ca-nhan', 0, '2020-11-20 12:47:31', '2024-06-19 04:14:51'),
(5, 1, 'Căn Hộ Studio cá nhân', 'Căn hộ studio là lựa chọn lý tưởng cho người yêu thích sự tiện nghi và hiện đại. Với thiết kế mở, tích hợp không gian sống, ngủ và bếp, căn hộ mang lại cảm giác thông thoáng, gọn gàng và tiện lợi.', 'KlVdi_pMxCh_201912140758209442248-6a91.jpg', 1, 12, 5000000000, 'can-ho-studio-ca-nhan', 0, '2020-11-20 13:12:50', '2024-06-19 04:14:29'),
(6, 2, 'Căn Hộ Gia Đình', 'Căn hộ có các phòng: phòng khách, phòng ngủ, bếp và phòng tắm. Với thiết kế tiện nghi và hiện đại, căn hộ đáp ứng nhu cầu sinh hoạt hàng ngày, mang lại không gian sống thoải mái và tiện lợi.', 'HdJUQ_loBCC_co-hoi-so-huu-can-ho-2-phong-ngu-cho-gia-dinh-tre-o-ha-noi-1.jpg', 1, 10, 5000000000, 'can-ho-gia-dinh', 0, '2020-12-22 11:45:11', '2024-06-19 04:13:41'),
(7, 4, 'Căn hộ Penthouse', 'Căn hộ penthouse là biểu tượng của sự sang trọng và đẳng cấp. Nằm ở tầng trên cùng, nó có tầm nhìn tuyệt đẹp, thiết kế rộng rãi và nội thất cao cấp.', 'nwR3r_OWJUR_hinh-anh-penthouses-la-gi-tim-hieu-uu-nhuoc-diem-cua-can-ho-penthouses-so-4.jpg', 1, 8, 30000000000, 'can-ho-penthouse', 3, '2020-12-22 11:45:47', '2024-06-19 04:13:51'),
(8, 2, 'Căn Hộ Cao Cấp', 'Căn hộ có các phòng: phòng khách, phòng ngủ, bếp và phòng tắm. Với thiết kế tiện nghi và hiện đại, căn hộ đáp ứng nhu cầu sinh hoạt hàng ngày, mang lại không gian sống thoải mái và tiện lợi.', 'YqaTJ_FQdzG_triple2.jpg', 1, 4, 8000000000, 'can-ho-cao-cap', 1, '2021-01-01 11:52:12', '2024-06-19 02:21:00');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `role_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', NULL, NULL),
(2, 'Quản lý', NULL, NULL),
(3, 'Nhân viên', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `slide`
--

CREATE TABLE `slide` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ten` varchar(255) NOT NULL,
  `hinh` varchar(255) NOT NULL,
  `tieude` varchar(1000) NOT NULL,
  `noidung` mediumtext NOT NULL,
  `link` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slide`
--

INSERT INTO `slide` (`id`, `ten`, `hinh`, `tieude`, `noidung`, `link`, `created_at`, `updated_at`) VALUES
(6, 'Slide 1', 'KJRxP_y3XWp_1.jpg', 'Slide 1', 'Slide 1', 'http://google.com', '2020-12-30 03:33:55', '2020-12-30 03:33:55');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `ma_nv` varchar(255) DEFAULT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `gioitinh` varchar(10) DEFAULT NULL,
  `sdt` text DEFAULT NULL,
  `ngaysinh` date DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `ma_nv`, `role_id`, `gioitinh`, `sdt`, `ngaysinh`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', NULL, '$2y$10$3OorqLBSppE2qbiM7i3cq.XcsltfEaVGNESnU11VEPL8v9.zXzi9K', NULL, 1, 'Nam', '037 830 8838', '2000-12-20', NULL, NULL, '2020-11-21 04:43:59'),
(2, 'admin2', 'admin2', NULL, '$2y$10$3OorqLBSppE2qbiM7i3cq.XcsltfEaVGNESnU11VEPL8v9.zXzi9K', NULL, 2, '', '', NULL, NULL, NULL, NULL),
(3, 'Nguyễn Tiến Anh', 'romcoca251100@gmail.com', NULL, '$2y$10$FyoBwIpummy3vJ86OGwOuO/Kh5jSdJuWJRjKgKrUB1DgYd4xNLmFi', 'NV1', 2, '', '', NULL, NULL, '2020-11-20 14:50:57', '2020-11-20 14:50:57'),
(7, 'Đỗ Thị Ngọc Ánh', 'ngocanh@gmail.com', NULL, '$2y$10$dNDd2iD3e0mflDKej5Hs/.cQh.hWjE2/OiiaKCfxJS3At3fZiHriy', 'NV4', 2, NULL, NULL, NULL, NULL, '2020-12-13 06:59:10', '2020-12-13 06:59:10'),
(8, 'Trịnh Thị Lan Anh', 'lanhanh@gmail.com', NULL, '$2y$10$qv8baZoahms/bSFuwswsV.S09JJRoP.f8zaulaus/vw5YOmerdzNi', 'NV5', 2, NULL, NULL, NULL, NULL, '2020-12-13 07:03:12', '2020-12-13 07:03:12'),
(9, 'Tran Nhat Long', 'nhatlong@gmail.com', NULL, '$2y$10$cq7xujjDEbbDf5mR4JBMOuW92h8Ki5n4b/fkW0s0y38MHZ5R/F9TO', 'NV6', 2, NULL, NULL, NULL, NULL, '2020-12-13 07:23:18', '2020-12-13 07:23:18'),
(11, 'do ngoc anh', 'ngocanh123@gmail.com', NULL, '$2y$10$wQxtRoCVPEl2F5L/wS0H4.jDC8baPRS.Zf1Jilzuf/EvG46rvSGdS', 'nv19', 2, NULL, NULL, NULL, NULL, '2021-01-06 00:55:31', '2021-01-06 00:55:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chitietdp`
--
ALTER TABLE `chitietdp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `datphong`
--
ALTER TABLE `datphong`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kh`
--
ALTER TABLE `kh`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loaiphong`
--
ALTER TABLE `loaiphong`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `phong`
--
ALTER TABLE `phong`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chitietdp`
--
ALTER TABLE `chitietdp`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `datphong`
--
ALTER TABLE `datphong`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kh`
--
ALTER TABLE `kh`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `loaiphong`
--
ALTER TABLE `loaiphong`
  MODIFY `id` int(2) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phong`
--
ALTER TABLE `phong`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `slide`
--
ALTER TABLE `slide`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
