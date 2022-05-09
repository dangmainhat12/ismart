-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 04, 2022 lúc 02:54 AM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `cuongxxn_unimart`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_sort` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category_posts`
--

CREATE TABLE `category_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category_posts`
--

INSERT INTO `category_posts` (`id`, `title`, `slug`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'Tin tuc', 'tin-tuc', 0, '2020-10-16 11:05:27', '2020-10-16 11:05:27'),
(2, 'Tin tức khuyến mãi', 'tin-tuc-khuyen-mai', 1, '2020-10-17 07:26:33', '2020-10-17 07:26:33'),
(3, 'Mua sắm thời covid', 'mua-sam-thoi-covid', 1, '2020-10-17 07:26:47', '2020-10-17 07:26:47');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL,
  `creator` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `colors`
--

INSERT INTO `colors` (`id`, `title`, `color_code`, `status`, `creator`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Xanh tím than in lá trắng', '#444b67', '1', 'Cuong dep trai', '2020-10-13 01:45:16', '2020-10-13 01:45:16', NULL),
(2, 'Xanh biển dệt sược gân', '#172C63', '1', 'Cuong dep trai', '2020-10-13 02:14:11', '2020-10-13 02:14:38', NULL),
(3, 'Trắng caro xanh xám', '#C3CDD6', '1', 'Cuong dep trai', '2020-10-13 02:19:20', '2020-10-13 02:19:20', NULL),
(4, 'Xanh', '#72B1C8', '1', 'Cuong dep trai', '2020-10-13 02:20:09', '2020-10-13 02:20:09', NULL),
(5, 'Xám', '#AFAFB6', '1', 'Cuong dep trai', '2020-10-13 02:21:14', '2020-10-13 02:21:14', NULL),
(6, 'Trắng kẻ sọc chìm', '#F3F3F3', '1', 'Cuong dep trai', '2020-10-13 02:21:51', '2020-10-13 02:21:51', NULL),
(7, 'Cam nâu caro', '#DDCCC4', '1', 'Cuong dep trai', '2020-10-13 02:22:31', '2020-10-13 02:22:31', NULL),
(8, 'Xanh kẻ ô nhí in hoa', '#455C7B', '1', 'Cuong dep trai', '2020-10-13 02:25:13', '2020-10-13 02:25:13', NULL),
(9, 'Xanh dệt ziczax', '#21396A', '1', 'Cuong dep trai', '2020-10-13 02:25:58', '2020-10-13 02:25:58', NULL),
(10, 'Xanh cổ vịt melange', '#4E688D', '1', 'Cuong dep trai', '2020-10-13 02:26:39', '2020-10-13 02:26:39', NULL),
(11, 'Trắng kem', '#D5D4D7', '1', 'Cuong dep trai', '2020-10-13 02:27:32', '2020-10-13 02:27:32', NULL),
(12, 'Xanh xám caro trắng', '#7C8FB9', '1', 'Cuong dep trai', '2020-10-13 02:28:32', '2020-10-13 02:28:32', NULL),
(13, 'Xanh đậm caro cam', '#3C2E5E', '1', 'Cuong dep trai', '2020-10-13 03:19:59', '2020-10-13 03:19:59', NULL),
(14, 'Đen', '#222222', '1', 'Cuong dep trai', '2020-10-13 03:24:33', '2020-10-13 03:24:33', NULL),
(15, 'Xanh kẻ caro nâu', '#9AACC5', '1', 'Cuong dep trai', '2020-10-13 03:25:36', '2020-10-13 03:25:36', NULL),
(16, 'Xanh caro xọc lá mạ', '#878F9D', '1', 'Cuong dep trai', '2020-10-13 03:27:30', '2020-10-13 03:27:30', NULL),
(17, 'Xanh cổ vịt in lá', '#2CAFFE', '1', 'Cuong dep trai', '2020-10-13 03:28:25', '2020-10-13 03:28:25', NULL),
(18, 'Xanh caro xọc vàng', '#959DAE', '1', 'Cuong dep trai', '2020-10-13 03:31:32', '2020-10-13 03:31:32', NULL),
(19, 'Xanh navi họa tiết', '#282870', '1', 'Cuong dep trai', '2020-10-13 03:51:24', '2020-10-13 03:52:13', NULL),
(20, 'Xanh tím than caro trắng', '#797B90', '1', 'Cuong dep trai', '2020-10-13 03:57:13', '2020-10-13 03:57:13', NULL),
(21, 'Đen họa tiết', '#5C5F62', '1', 'Cuong dep trai', '2020-10-13 07:13:54', '2020-10-13 07:13:54', NULL),
(22, 'Trắng họa tiết', '#D4D4D4', '1', 'Cuong dep trai', '2020-10-13 07:14:38', '2020-10-13 07:14:38', NULL),
(23, 'Xanh biển', '#4070C2', '1', 'Cuong dep trai', '2020-10-13 07:28:10', '2020-10-13 07:28:10', NULL),
(24, 'Xanh biển 58MF', '#ADB6CA', '1', 'Cuong dep trai', '2020-10-13 07:30:19', '2020-10-13 07:30:19', NULL),
(25, 'Cam 78MF', '#EAB6A6', '1', 'Cuong dep trai', '2020-10-13 07:31:14', '2020-10-13 07:31:14', NULL),
(26, 'Đỏ 44 mắt chim', '#9B3B47', '1', 'Cuong dep trai', '2020-10-13 08:11:22', '2020-10-13 08:11:22', NULL),
(27, 'Xanh cổ vịt 25 mắt chim', '#808E95', '1', 'Cuong dep trai', '2020-10-13 08:12:15', '2020-10-13 08:12:15', NULL),
(28, 'Xanh tím than 2 mắt chim', '#818CA5', '1', 'Cuong dep trai', '2020-10-13 08:13:13', '2020-10-13 08:13:13', NULL),
(29, 'Xanh biển 38 mắt chim', '#9AA6C8', '1', 'Cuong dep trai', '2020-10-13 08:14:03', '2020-10-13 08:14:03', NULL),
(30, 'Xanh tím than', '#8A8996', '1', 'Cuong dep trai', '2020-10-13 08:35:08', '2020-10-13 08:35:08', NULL),
(31, 'Vàng', '#D9BC95', '1', 'Cuong dep trai', '2020-10-13 09:28:49', '2020-10-13 09:28:49', NULL),
(32, 'Trắng', '#FFFFFF', '1', 'Cuong dep trai', '2020-10-13 09:46:02', '2020-10-13 09:46:02', NULL),
(33, 'Xanh aqua', '#C7D5DA', '1', 'Cuong dep trai', '2020-10-13 09:59:22', '2020-10-13 09:59:22', NULL),
(34, 'Xanh lá mạ 2 kẻ', '#ADB4B3', '1', 'Cuong dep trai', '2020-10-13 10:01:38', '2020-10-13 10:01:38', NULL),
(35, 'Hồng', '#957085', '1', 'Cuong dep trai', '2020-10-13 10:07:57', '2020-10-13 10:07:57', NULL),
(36, 'Nâu', '#9A9189', '1', 'Nhất đẹp trai', '2020-10-13 12:30:09', '2020-10-13 12:31:03', NULL),
(37, 'Bạc navy', '#7B7E88', '1', 'Nhất đẹp trai', '2020-10-13 12:48:42', '2020-10-13 12:48:42', NULL),
(38, 'Blue', '#7D7E8A', '1', 'Nhất đẹp trai', '2020-10-13 12:51:28', '2020-10-13 12:51:28', NULL),
(39, 'Be', '#EFE0C9', '1', 'Cuong dep trai', '2020-10-13 14:47:14', '2020-10-13 14:47:14', NULL),
(40, 'Xanh chàm sáng', '#8EA2B1', '1', 'Cuong dep trai', '2020-10-14 01:42:58', '2020-10-14 01:42:58', NULL),
(41, 'Xanh chàm đậm', '#314768', '1', 'Cuong dep trai', '2020-10-14 01:44:18', '2020-10-14 01:44:18', NULL),
(42, 'Xanh chàm nhạt', '#8A9FB2', '1', 'Cuong dep trai', '2020-10-14 01:49:31', '2020-10-14 01:49:31', NULL),
(43, 'Xanh chàm đá đậm', '#909CA9', '1', 'Cuong dep trai', '2020-10-14 01:56:06', '2020-10-14 01:56:06', NULL),
(44, 'Xanh chàm đá nhạt', '#ACB2BC', '1', 'Cuong dep trai', '2020-10-14 01:56:44', '2020-10-14 01:56:44', NULL),
(45, 'Vàng- nâu', '#C1AD94', '1', 'Nhất đẹp trai', '2020-10-14 05:27:04', '2020-10-14 05:27:04', NULL),
(46, 'Nòng súng- đen', '#7E7E7E', '1', 'Nhất đẹp trai', '2020-10-14 05:35:26', '2020-10-14 05:35:26', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `title`, `content`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Cuong dep trai', 'x@gmail.com', 'Qua xuat xac', 'Cung ok day', '0', '2020-10-16 10:02:16', '2020-10-16 10:02:16', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_active` enum('0','1') COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `password_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`id`, `name`, `password`, `email`, `active_token`, `email_verified_at`, `address`, `phone`, `created_at`, `updated_at`, `is_active`, `password_token`) VALUES
(1, 'Thieu Cuong', '$2y$10$FD7fJtyoR7eSuzSdyjrJCOqG2HhWq6yaRmx2pnp7NWLteV4teBEtK', 'thocuong97@gmail.com', '59e780dfa279d925a4e2367b556b0896', NULL, 'Thanh hoa', '0364374363', '2020-10-13 04:32:52', '2020-10-13 05:25:22', '1', NULL),
(5, 'Yến', '$2y$10$CEITN/AawmgEL0fFvRcfbO0VZZ0leEGYDJ7kfU1ANKfUuiMFcoV9y', 'thieuyen1526@gmail.con', 'e7fc37ab0ef80928b19016c0bb1fd0b7', NULL, 'Tu hoàng . Xuân phương . Nam từ liêm', '0336781526', '2020-10-14 07:39:59', '2020-10-14 07:39:59', '0', NULL),
(13, 'Yen xinh gai', '$2y$10$l00QvvF4gxNA9JhOPp./C.Xr9SAbUNUSCKsam1c.9E7lu.5cqDmIm', 'thieuyen1526@gmail.com', '258e7488d17dc8ff6f81c041635716b2', NULL, 'Thanh hoa', '0987456123', '2020-10-14 08:55:59', '2020-10-14 08:55:59', '0', NULL),
(14, 'Thanh', '$2y$10$fgb9Silu0uE/Ql1F3hry0O6JOgrHgjizDMjmtuALNzuivFvb2WU0u', 'trinhhoangthanh218@gmail.com', 'a2ff187e889c9c65f58423b61f573424', NULL, 'Hai duong', '0364374363', '2020-10-14 08:59:42', '2020-10-14 08:59:42', '0', NULL),
(18, 'Trung', '$2y$10$OcS.dnmg8WbXVr7da/zwHOuQPbg8wnbVHymjzFr73n12RQwnQr/sK', 'coitoto455@gmail.com', '5618e22a2c400e0ab698285e77671ae9', NULL, 'ha nội', '0962817455', '2020-10-14 09:35:04', '2020-10-14 09:35:04', '0', NULL),
(19, 'Cuong lang tu', '$2y$10$JgxY3I59O66mIMob9pNiQ.KUSlpX5tdelPUIc9wk7cUw8rJvQCOhG', 'cuong9xsmart@gmail.com', '7119577ebd5779e6ad91c37cc1abe61c', NULL, 'Thanh hoa', '0987456321', '2020-10-14 10:34:53', '2020-10-17 06:11:43', '1', '3184f80b3fa429ea940edc730529a6d1'),
(22, 'Cuong boc phet', '$2y$10$77rVnPOnCKeaSnophzyyFuzMkmfpkOCJVsbHIJqp8sCPkyiBmNfSG', 'cuongthieutho@gmail.com', 'c901f40d8dd26c25e70fc564fe9dea76', NULL, 'Thanh Hoa', '0987456321', '2020-10-16 08:44:40', '2020-10-16 08:44:55', '1', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `feature_images`
--

CREATE TABLE `feature_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `feature_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `feature_images`
--

INSERT INTO `feature_images` (`id`, `feature_image`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 'public/uploads/1602842497-2.jpg,public/uploads/1602842497-3.jpg,public/uploads/1602842497-4.jpg,public/uploads/1602842497-5.jpg', 1, '2020-10-13 02:37:11', '2020-10-16 10:01:37'),
(2, 'public/uploads/1602557944-4.jpg,public/uploads/1602557944-5.jpg,public/uploads/1602557944-7.jpg,public/uploads/1602557944-8.jpg', 2, '2020-10-13 02:59:04', '2020-10-15 02:33:15'),
(3, 'public/uploads/1602558219-5.jpg,public/uploads/1602558219-6.jpg,public/uploads/1602558219-7.jpg,public/uploads/1602558219-8.jpg', 3, '2020-10-13 03:03:39', '2020-10-15 02:33:35'),
(4, 'public/uploads/1602558559-5.jpg,public/uploads/1602558559-6.jpg,public/uploads/1602558559-7.jpg,public/uploads/1602558559-8.jpg', 4, '2020-10-13 03:09:19', '2020-10-15 02:33:49'),
(5, 'public/uploads/1602559022-5.jpg,public/uploads/1602559022-6.jpg,public/uploads/1602559022-7.jpg,public/uploads/1602559022-8.jpg', 5, '2020-10-13 03:17:02', '2020-10-15 02:34:08'),
(6, 'public/uploads/1602559379-1.jpg,public/uploads/1602559379-2.jpg,public/uploads/1602559379-5.jpg,public/uploads/1602559379-6.jpg', 6, '2020-10-13 03:22:59', '2020-10-15 02:34:23'),
(7, 'public/uploads/1602576301-1.jpg,public/uploads/1602576301-2.jpg,public/uploads/1602576301-3.jpg,public/uploads/1602576301-4.jpg', 7, '2020-10-13 03:33:40', '2020-10-15 02:34:41'),
(8, 'public/uploads/1602560716-1.jpg,public/uploads/1602560716-2.jpg,public/uploads/1602560716-3.jpg,public/uploads/1602560716-4.jpg', 8, '2020-10-13 03:45:16', '2020-10-15 02:34:56'),
(9, 'public/uploads/1602561727-1.jpg,public/uploads/1602561727-2.jpg,public/uploads/1602561727-3.jpg,public/uploads/1602561727-4.jpg', 9, '2020-10-13 04:02:07', '2020-10-15 02:35:14'),
(10, 'public/uploads/1602573991-1.jpg,public/uploads/1602573991-2.jpg,public/uploads/1602573991-3.jpg,public/uploads/1602573991-4.jpg', 10, '2020-10-13 07:26:31', '2020-10-15 02:35:33'),
(11, 'public/uploads/1602574518-1.jpg,public/uploads/1602574518-2.jpg,public/uploads/1602574518-3.jpg,public/uploads/1602574518-4.jpg', 11, '2020-10-13 07:35:18', '2020-10-15 02:35:59'),
(12, 'public/uploads/1602577486-1.jpg,public/uploads/1602577486-2.jpg,public/uploads/1602577486-3.jpg,public/uploads/1602577486-4.jpg', 12, '2020-10-13 08:24:46', '2020-10-15 02:36:18'),
(13, 'public/uploads/1602577989-1.jpg,public/uploads/1602577989-2.jpg,public/uploads/1602577989-3.jpg,public/uploads/1602577989-4.jpg', 13, '2020-10-13 08:33:09', '2020-10-15 02:36:39'),
(14, 'public/uploads/1602578945-1.jpg,public/uploads/1602578945-2.jpg,public/uploads/1602578945-3.jpg,public/uploads/1602578945-4.jpg', 14, '2020-10-13 08:49:05', '2020-10-15 02:36:58'),
(15, 'public/uploads/1602579209-1.jpg,public/uploads/1602579209-2.jpg,public/uploads/1602579209-3.jpg,public/uploads/1602579209-4.jpg', 15, '2020-10-13 08:53:29', '2020-10-15 02:37:15'),
(16, 'public/uploads/1602580209-1.jpg,public/uploads/1602580209-2.jpg,public/uploads/1602580209-3.jpg,public/uploads/1602580209-4.jpg', 16, '2020-10-13 09:10:09', '2020-10-15 02:37:35'),
(17, 'public/uploads/1602580720-1.jpg,public/uploads/1602580720-2.jpg,public/uploads/1602580720-3.jpg,public/uploads/1602580720-4.jpg', 17, '2020-10-13 09:18:40', '2020-10-15 02:37:51'),
(18, 'public/uploads/1602581241-3.jpg,public/uploads/1602581241-4.jpg,public/uploads/1602581241-5.jpg,public/uploads/1602581241-6.jpg', 18, '2020-10-13 09:27:21', '2020-10-15 02:38:08'),
(19, 'public/uploads/1602581908-1.jpg,public/uploads/1602581908-2.jpg,public/uploads/1602581908-3.jpg,public/uploads/1602581908-4.jpg', 19, '2020-10-13 09:38:28', '2020-10-15 02:38:26'),
(20, 'public/uploads/1602582107-1.jpg,public/uploads/1602582107-2.jpg,public/uploads/1602582107-3.jpg,public/uploads/1602582107-4.jpg', 20, '2020-10-13 09:41:47', '2020-10-15 02:38:44'),
(21, 'public/uploads/1602582578-1.jpg,public/uploads/1602582578-2.jpg,public/uploads/1602582578-3.jpg,public/uploads/1602582578-4.jpg', 21, '2020-10-13 09:49:38', '2020-10-15 02:39:03'),
(22, 'public/uploads/1602584040-1.jpg,public/uploads/1602584040-2.jpg,public/uploads/1602584040-3.jpg,public/uploads/1602584040-4.jpg', 22, '2020-10-13 10:14:00', '2020-10-15 02:39:20'),
(23, 'public/uploads/1602584304-1.jpg,public/uploads/1602584304-2.jpg,public/uploads/1602584304-3.jpg,public/uploads/1602584304-4.jpg', 23, '2020-10-13 10:18:24', '2020-10-15 02:39:35'),
(24, 'public/uploads/1602584577-1.jpg,public/uploads/1602584577-2.jpg,public/uploads/1602584577-3.jpg,public/uploads/1602584577-4.jpg', 24, '2020-10-13 10:22:57', '2020-10-15 02:57:47'),
(25, 'public/uploads/1602584996-1.jpg,public/uploads/1602584996-2.jpg,public/uploads/1602584996-3.jpg,public/uploads/1602584996-4.jpg', 25, '2020-10-13 10:29:56', '2020-10-15 02:39:54'),
(26, 'public/uploads/1602585257-1.jpg,public/uploads/1602585257-2.jpg,public/uploads/1602585257-3.jpg,public/uploads/1602585257-4.jpg', 26, '2020-10-13 10:34:17', '2020-10-15 02:40:10'),
(29, 'public/uploads/1602599069-1.jpg,public/uploads/1602599069-2.jpg,public/uploads/1602599069-3.jpg,public/uploads/1602599069-4.jpg', 29, '2020-10-13 14:24:29', '2020-10-15 02:40:27'),
(30, 'public/uploads/1602599499-1.jpg,public/uploads/1602599499-2.jpg,public/uploads/1602599499-3.jpg,public/uploads/1602599499-4.jpg', 30, '2020-10-13 14:31:39', '2020-10-15 02:40:45'),
(31, 'public/uploads/1602600084-1.jpg,public/uploads/1602600084-2.jpg,public/uploads/1602600084-3.jpg,public/uploads/1602600084-4.jpg', 31, '2020-10-13 14:41:24', '2020-10-15 02:41:02'),
(32, 'public/uploads/1602600373-1.jpg,public/uploads/1602600373-2.jpg,public/uploads/1602600373-3.jpg,public/uploads/1602600373-4.jpg', 32, '2020-10-13 14:46:13', '2020-10-15 02:41:19'),
(33, 'public/uploads/1602600740-1.jpg,public/uploads/1602600740-2.jpg,public/uploads/1602600740-3.jpg,public/uploads/1602600740-4.jpg', 33, '2020-10-13 14:52:20', '2020-10-15 02:41:37'),
(34, 'public/uploads/1602601068-1.jpg,public/uploads/1602601068-2.jpg,public/uploads/1602601068-3.jpg,public/uploads/1602601068-4.jpg', 34, '2020-10-13 14:57:48', '2020-10-15 02:41:52'),
(35, 'public/uploads/1602601417-4.jpg,public/uploads/1602601417-1.jpg,public/uploads/1602601417-2.jpg,public/uploads/1602601417-3.jpg', 35, '2020-10-13 15:03:37', '2020-10-15 02:42:10'),
(36, 'public/uploads/1602601722-1.jpg,public/uploads/1602601722-2.jpg,public/uploads/1602601722-3.jpg,public/uploads/1602601722-4.jpg', 36, '2020-10-13 15:08:42', '2020-10-15 02:42:28'),
(37, 'public/uploads/1602602228-1.jpg,public/uploads/1602602228-2.jpg,public/uploads/1602602228-3.jpg,public/uploads/1602602228-4.jpg', 37, '2020-10-13 15:17:08', '2020-10-15 02:42:46'),
(38, 'public/uploads/1602602581-1.jpg,public/uploads/1602602581-2.jpg,public/uploads/1602602581-3.jpg,public/uploads/1602602581-4.jpg', 38, '2020-10-13 15:23:01', '2020-10-15 02:43:04'),
(39, 'public/uploads/1602603103-1.jpg,public/uploads/1602603103-3.jpg,public/uploads/1602603103-4.jpg,public/uploads/1602603103-5.jpg', 39, '2020-10-13 15:31:43', '2020-10-15 02:43:21'),
(40, 'public/uploads/1602603395-1.jpg,public/uploads/1602603395-2.jpg,public/uploads/1602603395-3.jpg,public/uploads/1602603395-4.jpg', 40, '2020-10-13 15:36:35', '2020-10-15 02:43:38'),
(41, 'public/uploads/1602603711-1.jpg,public/uploads/1602603711-2.jpg,public/uploads/1602603711-3.jpg,public/uploads/1602603711-4.jpg', 41, '2020-10-13 15:41:51', '2020-10-15 02:43:53'),
(42, 'public/uploads/1602603964-1.jpg,public/uploads/1602603964-2.jpg,public/uploads/1602603964-3.jpg,public/uploads/1602603964-4.jpg', 42, '2020-10-13 15:46:04', '2020-10-15 02:44:10'),
(43, 'public/uploads/1602604244-1.jpg,public/uploads/1602604244-2.jpg,public/uploads/1602604244-3.jpg,public/uploads/1602604244-4.jpg', 43, '2020-10-13 15:50:44', '2020-10-15 02:44:26'),
(44, 'public/uploads/1602604657-1.jpg,public/uploads/1602604657-2.jpg,public/uploads/1602604657-3.jpg,public/uploads/1602604657-4.jpg', 44, '2020-10-13 15:57:37', '2020-10-15 02:44:44'),
(45, 'public/uploads/1602605128-1.jpg,public/uploads/1602605128-2.jpg,public/uploads/1602605128-3.jpg,public/uploads/1602605128-4.jpg', 45, '2020-10-13 16:05:28', '2020-10-15 02:45:01'),
(46, 'public/uploads/1602605343-1.jpg,public/uploads/1602605343-2.jpg,public/uploads/1602605343-3.jpg,public/uploads/1602605343-4.jpg', 46, '2020-10-13 16:09:03', '2020-10-15 02:45:18'),
(47, 'public/uploads/1602605641-3.jpg,public/uploads/1602605641-4.jpg,public/uploads/1602605641-5.jpg,public/uploads/1602605641-6.jpg', 47, '2020-10-13 16:14:01', '2020-10-15 02:45:42'),
(48, 'public/uploads/1602605931-1.jpg,public/uploads/1602605931-2.jpg,public/uploads/1602605931-3.jpg,public/uploads/1602605931-4.jpg', 48, '2020-10-13 16:18:51', '2020-10-15 02:45:59'),
(49, 'public/uploads/1602606577-1.jpg,public/uploads/1602606577-2.jpg,public/uploads/1602606577-3.jpg,public/uploads/1602606577-4.jpg', 49, '2020-10-13 16:29:37', '2020-10-15 02:46:27'),
(50, 'public/uploads/1602606884-3.jpg,public/uploads/1602606884-4.jpg,public/uploads/1602606884-5.jpg,public/uploads/1602606884-6.jpg', 50, '2020-10-13 16:34:44', '2020-10-15 02:46:44'),
(51, 'public/uploads/1602607143-1.jpg,public/uploads/1602607143-2.jpg,public/uploads/1602607143-3.jpg,public/uploads/1602607143-4.jpg', 51, '2020-10-13 16:39:03', '2020-10-15 02:47:01'),
(52, 'public/uploads/1602607495-1.jpg,public/uploads/1602607495-2.jpg,public/uploads/1602607495-3.jpg,public/uploads/1602607495-4.jpg', 52, '2020-10-13 16:44:55', '2020-10-15 02:47:21'),
(53, 'public/uploads/1602640005-1.jpg,public/uploads/1602640005-2.jpg,public/uploads/1602640005-3.jpg,public/uploads/1602640005-4.jpg', 53, '2020-10-14 01:46:45', '2020-10-15 02:47:40'),
(54, 'public/uploads/1602641002-1.jpg,public/uploads/1602641002-2.jpg,public/uploads/1602641002-3.jpg,public/uploads/1602641002-4.jpg', 54, '2020-10-14 02:03:22', '2020-10-15 02:47:56'),
(55, 'public/uploads/1602641587-1.jpg,public/uploads/1602641587-2.jpg,public/uploads/1602641587-3.jpg,public/uploads/1602641587-4.jpg', 55, '2020-10-14 02:13:07', '2020-10-15 02:48:15'),
(56, 'public/uploads/1602641850-1.jpg,public/uploads/1602641850-2.1.jpg,public/uploads/1602641850-3.jpg,public/uploads/1602641850-4.jpg', 56, '2020-10-14 02:17:30', '2020-10-15 02:48:34'),
(57, 'public/uploads/1603071994-BannerWebsite-white-lotus-02.jpg,public/uploads/1603071994-BannerWebsite-white-lotus-03.jpg', 57, '2020-10-14 02:35:41', '2020-10-19 01:46:34'),
(58, '', 58, '2020-10-14 02:37:58', '2020-10-15 02:49:09'),
(59, '', 59, '2020-10-14 02:40:17', '2020-10-15 02:49:27'),
(60, '', 60, '2020-10-14 02:47:58', '2020-10-15 02:49:44'),
(62, 'public/uploads/1602645050-1.jpg,public/uploads/1602645050-2.jpg,public/uploads/1602645051-3.jpg,public/uploads/1602645051-4.jpg', 62, '2020-10-14 03:10:51', '2020-10-15 02:50:02'),
(63, 'public/uploads/1602645457-1.jpg,public/uploads/1602645457-2.jpg,public/uploads/1602645457-3.jpg,public/uploads/1602645457-4.jpg', 63, '2020-10-14 03:17:37', '2020-10-15 02:50:20'),
(64, 'public/uploads/1602645618-1.jpg,public/uploads/1602645618-2.jpg,public/uploads/1602645618-3.jpg,public/uploads/1602645618-4.jpg', 64, '2020-10-14 03:20:18', '2020-10-15 02:50:40'),
(65, 'public/uploads/1602645878-1.jpg,public/uploads/1602645878-2.jpg,public/uploads/1602645878-3.jpg,public/uploads/1602645878-4.jpg', 65, '2020-10-14 03:24:38', '2020-10-15 02:51:04'),
(66, 'public/uploads/1602646354-1.jpg,public/uploads/1602646354-2.jpg,public/uploads/1602646354-3.jpg', 66, '2020-10-14 03:32:34', '2020-10-15 02:51:56'),
(67, 'public/uploads/1602646531-4.jpg,public/uploads/1602646531-5.jpg,public/uploads/1602646531-6.jpg', 67, '2020-10-14 03:35:31', '2020-10-15 02:52:13'),
(68, 'public/uploads/1602646817-1.jpg,public/uploads/1602646817-2.jpg,public/uploads/1602646817-3.jpg,public/uploads/1602646817-4.jpg', 68, '2020-10-14 03:40:17', '2020-10-15 02:52:32'),
(69, 'public/uploads/1602647092-2.jpg,public/uploads/1602647092-3.jpg,public/uploads/1602647092-4.1.jpg,public/uploads/1602647092-4.jpg', 69, '2020-10-14 03:44:52', '2020-10-15 02:52:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint(20) NOT NULL,
  `menu_sort` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menus`
--

INSERT INTO `menus` (`id`, `title`, `slug`, `link`, `parent_id`, `menu_sort`, `created_at`, `updated_at`) VALUES
(1, 'Trang chủ', 'trang-chu', 'http://cuong9x.xyz/', 0, 1, '2020-10-14 03:47:31', '2020-10-14 03:47:31'),
(2, 'Sản phẩm', 'san-pham', 'http://cuong9x.xyz/san-pham.html', 0, 2, '2020-10-14 03:55:22', '2020-10-14 03:55:22'),
(3, 'Tin tuc', 'tin-tuc', 'http://localhost/LaravelTutorial/unimart/tin-tuc.html', 0, 3, '2020-10-14 03:56:06', '2020-10-17 07:39:18'),
(4, 'Giới thiệu', 'gioi-thieu', 'http://cuong9x.xyz/gioi-thieu.html', 0, 4, '2020-10-14 03:56:47', '2020-10-14 03:56:47'),
(5, 'Liên hệ', 'lien-he', 'http://localhost/LaravelTutorial/unimart/lien-he.html', 0, 5, '2020-10-14 03:57:08', '2020-10-16 10:01:06'),
(6, 'Quần', 'quan', 'http://cuong9x.xyz/danh-muc/quan.html', 2, 0, '2020-10-14 03:58:31', '2020-10-14 04:18:49'),
(7, 'Quần âu', 'quan-au', 'http://cuong9x.xyz/danh-muc/quan-au.html', 6, 0, '2020-10-14 04:19:50', '2020-10-14 06:31:30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_08_03_104450_create_pages_table', 1),
(5, '2020_08_03_105020_add_delete_at_to_pages_table', 1),
(6, '2020_08_05_074206_create_category_posts_table', 1),
(7, '2020_08_11_073335_create_table_posts', 1),
(8, '2020_08_11_073645_add_delete_at_to_posts_table', 1),
(9, '2020_08_11_074013_add_slug_to_posts_table', 1),
(10, '2020_08_12_043325_create_product_categories_table', 1),
(11, '2020_08_12_043449_create_products_table', 1),
(12, '2020_08_12_043609_create_feature_images_table', 1),
(13, '2020_08_12_075148_add_parent_id_to_product_categories_table', 1),
(14, '2020_08_12_163218_add_delete_at_to_products_table', 1),
(15, '2020_08_13_105713_create_colors_table', 1),
(16, '2020_08_13_152343_add_delete_at_to_colors_table', 1),
(17, '2020_08_13_162138_add_creator_to_colors_table', 1),
(18, '2020_08_13_162356_add_color_code_to_colors_table', 1),
(19, '2020_08_15_155536_add_slug_to_category_posts_table', 1),
(20, '2020_08_15_170138_add_slug_to_product_categories_table', 1),
(21, '2020_08_16_083138_create_menus_table', 1),
(22, '2020_08_17_145132_add_discount_to_products_table', 1),
(23, '2020_08_17_150343_add_slug_to_products_table', 1),
(24, '2020_08_17_163315_create_customers_table', 1),
(25, '2020_08_17_163722_create_orders_table', 1),
(26, '2020_08_17_165105_create_order_details_table', 1),
(27, '2020_08_18_175719_add_payments_to_orders_table', 1),
(28, '2020_08_20_093140_add_email_verified_at_to_customers_table', 1),
(29, '2020_08_20_151746_add_password_to_customers_table', 1),
(30, '2020_08_21_084951_add_note_to_orders_table', 1),
(31, '2020_08_21_100515_add_order_code_to_orders_table', 1),
(32, '2020_08_23_153718_add_delete_at_to_orders_table', 1),
(33, '2020_08_29_025748_create_roles_table', 1),
(34, '2020_08_29_025839_create_user_role_table', 1),
(35, '2020_08_30_085524_add_status_to_users_table', 1),
(36, '2020_08_30_152646_add_key_code_to_roles_table', 1),
(37, '2020_09_01_045417_add_menu_sort_to_menus_table', 1),
(38, '2020_09_01_084010_create_sliders_table', 1),
(39, '2020_09_01_090507_add_to_thumbnail_to_slider', 1),
(40, '2020_09_04_024636_add_thumbnail_to_product_categories_table', 1),
(41, '2020_09_04_033052_add_link_to_product_categories_table', 1),
(42, '2020_09_04_095334_create_banners_table', 1),
(43, '2020_09_05_025849_create_sizes_table', 1),
(44, '2020_09_05_031224_add_creator_to_sizes_table', 1),
(45, '2020_09_05_033257_add_status_to_sizes_table', 1),
(46, '2020_09_05_033550_add_delete_at_to_sizes_table', 1),
(47, '2020_09_05_163043_add_size_to_order_details_table', 1),
(48, '2020_09_05_163358_add_color_to_order_details_table', 1),
(49, '2020_09_07_041054_add_shipping_to_orders_table', 1),
(50, '2020_09_09_150210_create_product_attribute_table', 1),
(51, '2020_09_11_090117_add_product_hot_to_products_table', 1),
(52, '2020_09_15_050016_add_slug_to_pages_table', 1),
(53, '2020_09_18_111600_create_contacts_table', 1),
(54, '2020_09_20_165727_add_deleted_at_to_users_table', 1),
(55, '2020_09_21_155140_add_description_to_roles_table', 1),
(56, '2020_09_24_212742_add_active_token_to_customers_table', 1),
(57, '2020_09_24_212953_add_is_active_to_customers_table', 1),
(58, '2020_09_25_175104_add_password_token_to_customers_table', 1),
(59, '2020_09_26_171257_add_delete_at_to_contacts_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` double NOT NULL,
  `status` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `shipping` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payments` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `order_code`, `name`, `email`, `phone`, `note`, `address`, `total`, `status`, `customer_id`, `shipping`, `payments`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'OD1178371814', 'Cuong lang tu', 'cuong9xsmart@gmail.com', '0987456321', NULL, 'Thanh hoa', 1390000, '0', 19, '0', 'payment-home', '2020-10-16 10:08:03', '2020-10-16 10:08:03', NULL),
(3, 'OD320988937', 'Cuong lang tu', 'cuong9xsmart@gmail.com', '0987456321', NULL, 'Thanh hoa', 1500000, '0', 19, '0', 'payment-home', '2020-10-16 10:08:32', '2020-10-16 10:08:32', NULL),
(4, 'OD685583636', 'Cuong boc phet', 'cuongthieutho@gmail.com', '0987456321', NULL, 'Thanh Hoa', 1500000, '0', 22, '0', 'payment-home', '2020-10-17 02:46:52', '2020-10-17 02:46:52', NULL),
(5, 'OD2115761176', 'Test', NULL, '0987456321', NULL, 'Thanh hoa', 1145000, '0', 19, '0', 'payment-home', '2020-10-17 09:17:08', '2020-10-17 09:17:08', NULL),
(6, 'OD756752821', 'Test', NULL, '0987456321', NULL, 'Thanh Hoa', 1145000, '0', 19, '0', 'payment-home', '2020-10-17 09:18:10', '2020-10-17 09:18:10', NULL),
(7, 'OD1408988747', 'Cuong dep trai', 'cuong9xsmart@gmail.com', '0364374789', NULL, 'Thanh Hoa', 450000, '0', 19, '0', 'payment-home', '2020-10-17 09:23:58', '2020-10-17 09:23:58', NULL),
(8, 'OD1546236783', 'cccc', NULL, '0978654123', NULL, 'Thanh Hoa', 850000, '0', 19, '0', 'payment-home', '2020-10-19 02:54:39', '2020-10-19 02:54:39', NULL),
(9, 'OD2014768464', 'xxx', NULL, '0986512308', NULL, 'th', 1800000, '0', 19, '0', 'payment-home', '2020-10-19 03:02:16', '2020-10-19 03:02:16', NULL),
(10, 'OD1680973236', 'xxx', NULL, '0987456321', NULL, 'cd', 1800000, '0', 19, '0', 'payment-home', '2020-10-19 03:03:05', '2020-10-19 03:03:05', NULL),
(11, 'OD244415639', 'vfvfvf', NULL, '0978456123', NULL, 'Thanh Hoa', 650000, '0', 19, '0', 'payment-home', '2020-10-19 03:11:58', '2020-10-19 03:11:58', NULL),
(12, 'OD2055682896', 'dcđ', NULL, '0987456321', NULL, 'Thanh hoa', 1300000, '0', 19, '0', 'payment-home', '2020-10-19 03:44:22', '2020-10-19 03:44:22', NULL),
(13, 'OD1085455355', 'xxxx', NULL, '0989785696', NULL, 'Hai Duong', 750000, '0', 19, '0', 'payment-home', '2020-10-19 08:44:04', '2020-10-19 08:44:04', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `price` double NOT NULL,
  `size` bigint(20) DEFAULT NULL,
  `color` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`id`, `product_id`, `order_id`, `qty`, `price`, `size`, `color`, `created_at`, `updated_at`) VALUES
(2, 5, 2, 2, 695000, 2, 2, '2020-10-16 10:08:03', '2020-10-16 10:08:03'),
(3, 57, 3, 1, 1500000, 20, 36, '2020-10-16 10:08:32', '2020-10-16 10:08:32'),
(4, 57, 4, 1, 1500000, 20, 36, '2020-10-17 02:46:52', '2020-10-17 02:46:52'),
(5, 47, 5, 1, 450000, 17, 30, '2020-10-17 09:17:08', '2020-10-17 09:17:08'),
(6, 5, 5, 1, 695000, 2, 2, '2020-10-17 09:17:08', '2020-10-17 09:17:08'),
(7, 47, 6, 1, 450000, 17, 30, '2020-10-17 09:18:10', '2020-10-17 09:18:10'),
(8, 5, 6, 1, 695000, 2, 2, '2020-10-17 09:18:10', '2020-10-17 09:18:10'),
(9, 47, 7, 1, 450000, 17, 30, '2020-10-17 09:23:58', '2020-10-17 09:23:58'),
(10, 55, 8, 1, 850000, 17, 41, '2020-10-19 02:54:39', '2020-10-19 02:54:39'),
(11, 59, 10, 1, 1800000, 20, 36, '2020-10-19 03:03:05', '2020-10-19 03:03:05'),
(12, 33, 11, 1, 650000, 8, 30, '2020-10-19 03:11:58', '2020-10-19 03:11:58'),
(13, 33, 12, 1, 650000, 8, 30, '2020-10-19 03:44:22', '2020-10-19 03:44:22'),
(14, 33, 12, 1, 650000, 8, 30, '2020-10-19 03:44:22', '2020-10-19 03:44:22'),
(15, 53, 13, 1, 750000, 17, 40, '2020-10-19 08:44:04', '2020-10-19 08:44:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('approve','pendding') COLLATE utf8mb4_unicode_ci NOT NULL,
  `creator` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('approve','pendding') COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `description`, `content`, `thumbnail`, `creator`, `editor`, `status`, `user_id`, `category_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Test', 'test', 'Chào tháng mới, Aristino dành tặng quý khách hàng nhiều ưu đãi hấp dẫn khi mua sắm. Mua sắm ngay đừng bỏ lỡ!', '<div class=\"container\">\r\n<div class=\"ars-row\">\r\n<div class=\"post-excerpt\">\r\n<p>Ch&agrave;o th&aacute;ng mới, Aristino d&agrave;nh tặng qu&yacute; kh&aacute;ch h&agrave;ng nhiều ưu đ&atilde;i hấp dẫn khi mua sắm. Mua sắm ngay đừng bỏ lỡ!</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"container\">\r\n<div class=\"ars-row\">\r\n<div class=\"post-excerpt\">\r\n<p><img src=\"https://aristino.com/Data/upload/images/uyguygu.jpg\" alt=\"\" /></p>\r\n<p><strong>NỘI DUNG ƯU Đ&Atilde;I</strong></p>\r\n<p><strong>1. Ưu đ&atilde;i cho KH hội vi&ecirc;n:&nbsp;</strong>&nbsp;</p>\r\n<p>Aristino d&agrave;nh tặng ưu đ&atilde;i mua h&agrave;ng mới theo hạng hội vi&ecirc;n như sau:</p>\r\n<p>+ Platinum: giảm 25% khi mua h&agrave;ng</p>\r\n<p>+ Gold: giảm 20%&nbsp;khi mua h&agrave;ng</p>\r\n<p>+ Silver: giảm 15%&nbsp;khi mua h&agrave;ng</p>\r\n<p>+ Member: giảm 10%&nbsp;khi mua h&agrave;ng</p>\r\n<p><strong>2. Sale up to 50%</strong></p>\r\n<p><strong>-&nbsp;</strong>Sale up to 50%&nbsp;h&agrave;ng trăm sản phẩm thời trang nam cao cấp Aristino</p>\r\n<p>- Kh&ocirc;ng &aacute;p dụng đồng thời với CTKM kh&aacute;c&nbsp;<br /><br />3.&nbsp;<strong>Tặng E-voucher mua sắm&nbsp;trị gi&aacute; 300k&nbsp;</strong>&nbsp;</p>\r\n<p>- Đối tượng nhận evoucher: kh&aacute;ch h&agrave;ng c&oacute;&nbsp;h&oacute;a đơn mua h&agrave;ng từ&nbsp;1,000,000&nbsp;khi mua sắm tại 10 showroom b&ecirc;n dưới (<em>danh s&aacute;ch k&egrave;m theo</em>)</p>\r\n<p>- Điều kiện sử dụng voucher:</p>\r\n<p>+ Voucher chỉ &aacute;p dụng 1 lần duy nhất&nbsp;</p>\r\n<p>+ Hạn sử dụng voucher: 15/10/2020&nbsp;</p>\r\n<p>+ Chỉ &aacute;p dụng cho mua h&agrave;ng tại&nbsp;showroom&nbsp;</p>\r\n<p>+ &Aacute;p dụng với đơn h&agrave;ng nguy&ecirc;n gi&aacute;.&nbsp;</p>\r\n<p>+ Kh&ocirc;ng &aacute;p dụng đồng thời với CTKM kh&aacute;c&nbsp;</p>\r\n<p><strong>DANH S&Aacute;CH SHOWROOM &Aacute;P DỤNG</strong></p>\r\n<p>1. Cơ sở 1: 39 Ph&uacute; Đ&ocirc;, Nam Từ Li&ecirc;m, H&agrave; Nội</p>\r\n<p>2. Cơ sở 2: 20 Đ&ocirc;ng Tiến, Đ&ocirc;ng Sơn, Thanh H&oacute;a</p>\r\n<p><strong>Nguồn:</strong> https://aristino.com/</p>\r\n</div>\r\n</div>\r\n</div>', 'public/uploads/1602846349-1.png', 'Cuong dep trai', 'Cuong dep trai', 'approve', 1, 2, '2020-10-16 11:05:49', '2020-10-17 07:38:33', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `price` double(10,0) NOT NULL,
  `discount` double DEFAULT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_hot` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `title`, `slug`, `description`, `content`, `thumbnail`, `quantity`, `price`, `discount`, `status`, `product_hot`, `category_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Áo sơ mi nam dài tay SM200', 'ao-so-mi-nam-dai-tay-sm200', 'KIỂU DÁNG: Slim Fit - Tà lượn.\r\n- Áo sơ mi dài tay phom dáng Slim Fit ôm nhẹ và tôn dáng kết hợp tà lượn thời trang.', '<p><strong>KIỂU D&Aacute;NG:&nbsp;</strong>SLIM FIT - T&Agrave; LƯỢN</p>\r\n<p><strong>CHI TIẾT:</strong></p>\r\n<p>- &Aacute;o sơ mi d&agrave;i tay phom d&aacute;ng Slim Fit &ocirc;m nhẹ v&agrave; t&ocirc;n d&aacute;ng kết hợp t&agrave; lượn thời trang.</p>\r\n<p>- Thiết kế basic với cổ &aacute;o đứng gọn g&agrave;ng. Họa tiết kẻ sọc ch&igrave;m tr&ecirc;n nền trắng tinh tế mang đến cho người mặc diện mạo lịch thiệp. &Aacute;o th&iacute;ch hợp phối c&ugrave;ng quần &acirc;u, quần khaki trong nhiều ho&agrave;n cảnh kh&aacute;c nhau.</p>\r\n<p><strong>CHẤT LIỆU:</strong></p>\r\n<p>- Chất liệu 100% Poyester cao cấp xuất xứ từ Nhật Bản. Sử dụng c&ocirc;ng nghệ dệt kim đan dọc gi&uacute;p vải vừa c&oacute; khả năng co gi&atilde;n nhẹ vừa đứng form, handfeel xốp, mềm mại, kh&ocirc;ng nhăn nh&agrave;u, thấm h&uacute;t mồ h&ocirc;i v&agrave; kh&ocirc; nhanh mang đến sự tho&aacute;ng m&aacute;t, dễ chịu cho người mặc.</p>\r\n<p><strong>M&Agrave;U SẮC:&nbsp;</strong>Trắng kẻ sọc ch&igrave;m, Cam n&acirc;u caro</p>\r\n<p><strong>SIZE:&nbsp;</strong> 38 &ndash; 39 &ndash; 40 &ndash; 41</p>', 'public/uploads/1602729179-2.jpg', 0, 1000000, NULL, '1', '', 9, '2020-10-13 02:37:11', '2020-10-16 10:01:37', NULL),
(2, 'Áo sơ mi dài tay nam SM201', 'ao-so-mi-dai-tay-nam-sm201', 'Kiểu dáng: Slim Fit - Tà lượn.\r\n Áo sơ mi dài tay phom Slim Fit ôm vừa vặn, trẻ trung, tôn dáng, giúp các anh tự tin với hình thể của mình.', '<p><img src=\"/public//storage/photos/1/2.jpg\" alt=\"\" /><strong>KIỂU D&Aacute;NG:</strong> SLIM FIT - T&Agrave; LƯỢN</p>\r\n<p><strong>CHI TIẾT:</strong></p>\r\n<p>- &Aacute;o sơ mi d&agrave;i tay phom Slim Fit &ocirc;m vừa vặn, trẻ trung, t&ocirc;n d&aacute;ng, gi&uacute;p c&aacute;c anh tự tin với h&igrave;nh thể của m&igrave;nh.</p>\r\n<p>- Thiết kế cơ bản với t&agrave; lượn, kh&ocirc;ng t&uacute;i ngực. Ứng dụng kỹ thuật dệt Yarn Dyed kinh điển, c&aacute;c sợi vải được nhuộm m&agrave;u rồi lồng gh&eacute;p tinh tế tạo n&ecirc;n một chiếc &aacute;o kẻ caro với 3 t&ocirc;ng m&agrave;u cam, trắng, n&acirc;u cực kỳ trẻ trung v&agrave; thời thượng.</p>\r\n<p><strong>CHẤT LIỆU:</strong></p>\r\n<p>- Được pha trộn 2 sợi Modal v&agrave; Polyspun theo tỉ lệ 1:1, chiếc &aacute;o sơ mi n&agrave;y c&oacute; độ mềm mại, mịn m&agrave;ng, cực kỳ th&acirc;n thiện với l&agrave;n da người mặc. Đồng thời &aacute;o lại c&oacute; độ đ&agrave;n hồi tự nhi&ecirc;n, hạn chế nhăn nh&agrave;u trong suốt qu&aacute; tr&igrave;nh sử dụng v&agrave; giảm bớt thời gian l&agrave; ủi mỗi ng&agrave;y.</p>\r\n<p><strong>M&Agrave;U SẮC:</strong> Xanh cổ vịt melange, Xanh x&aacute;m caro trắng</p>\r\n<p><strong>SIZE:</strong> 38 &ndash; 39 &ndash; 40&nbsp;</p>', 'public/uploads/1602729195-4.jpg', 0, 795000, NULL, '1', '', 9, '2020-10-13 02:59:04', '2020-10-15 02:33:15', NULL),
(3, 'Áo sơ mi dài tay nam SM202', 'ao-so-mi-dai-tay-nam-sm202', 'Kiểu dáng: SLIM FIT - TÀ LƯỢN.\r\nÁo sơ mi dài tay phom Slim Fit ôm vừa vặn, trẻ trung, tôn dáng, giúp các anh tự tin với hình thể của mình.', '<p><strong>KIỂU D&Aacute;NG:</strong> SLIM FIT - T&Agrave; LƯỢN</p>\r\n<p><strong>CHI TIẾT:</strong></p>\r\n<p>- &Aacute;o sơ mi d&agrave;i tay phom Slim Fit &ocirc;m vừa vặn, trẻ trung, t&ocirc;n d&aacute;ng, gi&uacute;p c&aacute;c anh tự tin với h&igrave;nh thể của m&igrave;nh.</p>\r\n<p>- Thiết kế cơ bản với t&agrave; lượn, kh&ocirc;ng t&uacute;i ngực. Ứng dụng kỹ thuật dệt Yarn Dyed kinh điển, c&aacute;c sợi vải được nhuộm m&agrave;u rồi lồng gh&eacute;p tinh tế tạo n&ecirc;n một chiếc &aacute;o kẻ caro với 3 t&ocirc;ng m&agrave;u cam, trắng, n&acirc;u cực kỳ trẻ trung v&agrave; thời thượng.</p>\r\n<p><strong>CHẤT LIỆU:</strong></p>\r\n<p>- Được pha trộn 2 sợi Modal v&agrave; Polyspun theo tỉ lệ 1:1, chiếc &aacute;o sơ mi n&agrave;y c&oacute; độ mềm mại, mịn m&agrave;ng, cực kỳ th&acirc;n thiện với l&agrave;n da người mặc. Đồng thời &aacute;o lại c&oacute; độ đ&agrave;n hồi tự nhi&ecirc;n, hạn chế nhăn nh&agrave;u trong suốt qu&aacute; tr&igrave;nh sử dụng v&agrave; giảm bớt thời gian l&agrave; ủi mỗi ng&agrave;y.</p>\r\n<p><strong>M&Agrave;U SẮC:</strong> Trắng caro xanh x&aacute;m, Xanh dệt ziczax.</p>\r\n<p><strong>SIZE:</strong> 38 &ndash; 39 &ndash; 40 &ndash; 41</p>', 'public/uploads/1602729215-4.jpg', 0, 725000, NULL, '1', '', 9, '2020-10-13 03:03:39', '2020-10-15 02:33:35', NULL),
(4, 'Áo sơ mi dài tay nam SM203', 'ao-so-mi-dai-tay-nam-sm203', 'Kiểu dáng: Slim Fit - Tà lượn.\r\nÁo sơ mi dài tay phom Slim Fit ôm vừa vặn, trẻ trung, tôn dáng, giúp các anh tự tin với hình thể của mình.', '<p><strong>KIỂU D&Aacute;NG:</strong> SLIM FIT - T&Agrave; LƯỢN</p>\r\n<p><strong>CHI TIẾT:</strong></p>\r\n<p>- &Aacute;o sơ mi d&agrave;i tay phom Slim Fit &ocirc;m vừa vặn, trẻ trung, t&ocirc;n d&aacute;ng, gi&uacute;p c&aacute;c anh tự tin với h&igrave;nh thể của m&igrave;nh.</p>\r\n<p>- Thiết kế cơ bản với t&agrave; lượn, kh&ocirc;ng t&uacute;i ngực. Ứng dụng kỹ thuật dệt Yarn Dyed kinh điển, c&aacute;c sợi vải được nhuộm m&agrave;u rồi lồng gh&eacute;p tinh tế tạo n&ecirc;n một chiếc &aacute;o kẻ caro với 3 t&ocirc;ng m&agrave;u cam, trắng, n&acirc;u cực kỳ trẻ trung v&agrave; thời thượng.</p>\r\n<p><strong>CHẤT LIỆU:</strong></p>\r\n<p>- Được pha trộn 2 sợi Modal v&agrave; Polyspun theo tỉ lệ 1:1, chiếc &aacute;o sơ mi n&agrave;y c&oacute; độ mềm mại, mịn m&agrave;ng, cực kỳ th&acirc;n thiện với l&agrave;n da người mặc. Đồng thời &aacute;o lại c&oacute; độ đ&agrave;n hồi tự nhi&ecirc;n, hạn chế nhăn nh&agrave;u trong suốt qu&aacute; tr&igrave;nh sử dụng v&agrave; giảm bớt thời gian l&agrave; ủi mỗi ng&agrave;y.</p>\r\n<p><strong>M&Agrave;U SẮC:</strong> Xanh, Xanh dệt ziczac.</p>\r\n<p>SIZE: 38 &ndash; 39 &ndash; 40 &ndash; 41</p>', 'public/uploads/1602729229-7.jpg', 0, 750000, NULL, '1', '1', 9, '2020-10-13 03:09:19', '2020-10-15 02:33:49', NULL),
(5, 'Áo sơ mi dài tay nam SM204', 'ao-so-mi-dai-tay-nam-sm204', 'Kiểu dáng: Slim Fit - Tà lượn.\r\nÁo sơ mi dài tay phom Slim Fit ôm vừa vặn, trẻ trung, tôn dáng, giúp các anh tự tin với hình thể của mình.', '<p><strong>KIỂU D&Aacute;NG:</strong> SLIM FIT - T&Agrave; LƯỢN</p>\r\n<p><strong>CHI TIẾT:</strong></p>\r\n<p>- &Aacute;o sơ mi d&agrave;i tay phom Slim Fit &ocirc;m vừa vặn, trẻ trung, t&ocirc;n d&aacute;ng, gi&uacute;p c&aacute;c anh tự tin với h&igrave;nh thể của m&igrave;nh.</p>\r\n<p>- Thiết kế cơ bản với t&agrave; lượn, kh&ocirc;ng t&uacute;i ngực. Ứng dụng kỹ thuật dệt Yarn Dyed kinh điển, c&aacute;c sợi vải được nhuộm m&agrave;u rồi lồng gh&eacute;p tinh tế tạo n&ecirc;n một chiếc &aacute;o kẻ caro với 3 t&ocirc;ng m&agrave;u cam, trắng, n&acirc;u cực kỳ trẻ trung v&agrave; thời thượng.</p>\r\n<p><strong>CHẤT LIỆU:</strong></p>\r\n<p>- Được pha trộn 2 sợi Modal v&agrave; Polyspun theo tỉ lệ 1:1, chiếc &aacute;o sơ mi n&agrave;y c&oacute; độ mềm mại, mịn m&agrave;ng, cực kỳ th&acirc;n thiện với l&agrave;n da người mặc. Đồng thời &aacute;o lại c&oacute; độ đ&agrave;n hồi tự nhi&ecirc;n, hạn chế nhăn nh&agrave;u trong suốt qu&aacute; tr&igrave;nh sử dụng v&agrave; giảm bớt thời gian l&agrave; ủi mỗi ng&agrave;y.</p>\r\n<p><strong>M&Agrave;U SẮC:</strong> X&aacute;m, Xanh biển dệt sược g&acirc;n.</p>\r\n<p><strong>SIZE:</strong> 38 &ndash; 39 &ndash; 40 &ndash; 41</p>', 'public/uploads/1602729248-5.jpg', 0, 695000, NULL, '1', '', 9, '2020-10-13 03:17:02', '2020-10-15 02:34:08', NULL),
(6, 'Áo sơ mi dài tay nam SM205', 'ao-so-mi-dai-tay-nam-sm205', 'Kiểu dáng: Slim Fit - Tà lượn.\r\nÁo sơ mi dài tay phom Slim Fit ôm vừa vặn, trẻ trung, tôn dáng, giúp các anh tự tin với hình thể của mình.', '<p><strong>KIỂU D&Aacute;NG:</strong> SLIM FIT - T&Agrave; LƯỢN</p>\r\n<p><strong>CHI TIẾT:</strong></p>\r\n<p>- &Aacute;o sơ mi d&agrave;i tay phom Slim Fit &ocirc;m vừa vặn, trẻ trung, t&ocirc;n d&aacute;ng, gi&uacute;p c&aacute;c anh tự tin với h&igrave;nh thể của m&igrave;nh.</p>\r\n<p>- Thiết kế cơ bản với t&agrave; lượn, kh&ocirc;ng t&uacute;i ngực. Ứng dụng kỹ thuật dệt Yarn Dyed kinh điển, c&aacute;c sợi vải được nhuộm m&agrave;u rồi lồng gh&eacute;p tinh tế tạo n&ecirc;n một chiếc &aacute;o kẻ caro với 3 t&ocirc;ng m&agrave;u cam, trắng, n&acirc;u cực kỳ trẻ trung v&agrave; thời thượng.</p>\r\n<p><strong>CHẤT LIỆU:</strong></p>\r\n<p>- Được pha trộn 2 sợi Modal v&agrave; Polyspun theo tỉ lệ 1:1, chiếc &aacute;o sơ mi n&agrave;y c&oacute; độ mềm mại, mịn m&agrave;ng, cực kỳ th&acirc;n thiện với l&agrave;n da người mặc. Đồng thời &aacute;o lại c&oacute; độ đ&agrave;n hồi tự nhi&ecirc;n, hạn chế nhăn nh&agrave;u trong suốt qu&aacute; tr&igrave;nh sử dụng v&agrave; giảm bớt thời gian l&agrave; ủi mỗi ng&agrave;y.</p>\r\n<p><strong>M&Agrave;U SẮC:</strong> Trắng kem, Xanh đậm caro cam.</p>\r\n<p><strong>SIZE:</strong> 38 &ndash; 39 &ndash; 40&nbsp;</p>', 'public/uploads/1602729263-7.jpg', 0, 575000, NULL, '1', '', 9, '2020-10-13 03:22:59', '2020-10-15 02:34:23', NULL),
(7, 'Áo sơ mi dài tay nam SM206', 'ao-so-mi-dai-tay-nam-sm206', 'Kiểu dáng: Slim Fit - Tà lượn.\r\nÁo sơ mi dài tay phom Slim Fit ôm vừa vặn, trẻ trung, tôn dáng, giúp các anh tự tin với hình thể của mình.', '<p><strong>KIỂU D&Aacute;NG:</strong> SLIM FIT - T&Agrave; LƯỢN</p>\r\n<p><strong>CHI TIẾT:</strong></p>\r\n<p>- &Aacute;o sơ mi d&agrave;i tay phom Slim Fit &ocirc;m vừa vặn, trẻ trung, t&ocirc;n d&aacute;ng, gi&uacute;p c&aacute;c anh tự tin với h&igrave;nh thể của m&igrave;nh.</p>\r\n<p>- Thiết kế cơ bản với t&agrave; lượn, kh&ocirc;ng t&uacute;i ngực. Ứng dụng kỹ thuật dệt Yarn Dyed kinh điển, c&aacute;c sợi vải được nhuộm m&agrave;u rồi lồng gh&eacute;p tinh tế tạo n&ecirc;n một chiếc &aacute;o kẻ caro với 3 t&ocirc;ng m&agrave;u cam, trắng, n&acirc;u cực kỳ trẻ trung v&agrave; thời thượng.</p>\r\n<p><strong>CHẤT LIỆU:</strong></p>\r\n<p>- Được pha trộn 2 sợi Modal v&agrave; Polyspun theo tỉ lệ 1:1, chiếc &aacute;o sơ mi n&agrave;y c&oacute; độ mềm mại, mịn m&agrave;ng, cực kỳ th&acirc;n thiện với l&agrave;n da người mặc. Đồng thời &aacute;o lại c&oacute; độ đ&agrave;n hồi tự nhi&ecirc;n, hạn chế nhăn nh&agrave;u trong suốt qu&aacute; tr&igrave;nh sử dụng v&agrave; giảm bớt thời gian l&agrave; ủi mỗi ng&agrave;y.</p>\r\n<p><strong>M&Agrave;U SẮC:</strong> Đen, Xanh caro xọc v&agrave;ng</p>\r\n<p><strong>SIZE:</strong> 38 &ndash; 39 &ndash; 40 &ndash; 41</p>', 'public/uploads/1602729281-5.jpg', 0, 1350000, NULL, '1', '', 9, '2020-10-13 03:33:40', '2020-10-15 02:34:41', NULL),
(8, 'Áo sơ mi dài tay nam  SM207', 'ao-so-mi-dai-tay-nam--sm207', 'Kiểu dáng: Slim Fit - Tà lượn.\r\nÁo sơ mi dài tay phom Slim Fit ôm vừa vặn, trẻ trung, tôn dáng, giúp các anh tự tin với hình thể của mình.', '<p><strong>KIỂU D&Aacute;NG:</strong> SLIM FIT - T&Agrave; LƯỢN</p>\r\n<p><strong>CHI TIẾT:</strong></p>\r\n<p>- &Aacute;o sơ mi d&agrave;i tay phom Slim Fit &ocirc;m vừa vặn, trẻ trung, t&ocirc;n d&aacute;ng, gi&uacute;p c&aacute;c anh tự tin với h&igrave;nh thể của m&igrave;nh.</p>\r\n<p>- Thiết kế cơ bản với t&agrave; lượn, kh&ocirc;ng t&uacute;i ngực. Ứng dụng kỹ thuật dệt Yarn Dyed kinh điển, c&aacute;c sợi vải được nhuộm m&agrave;u rồi lồng gh&eacute;p tinh tế tạo n&ecirc;n một chiếc &aacute;o kẻ caro với 3 t&ocirc;ng m&agrave;u cam, trắng, n&acirc;u cực kỳ trẻ trung v&agrave; thời thượng.</p>\r\n<p><strong>CHẤT LIỆU:</strong></p>\r\n<p>- Được pha trộn 2 sợi Modal v&agrave; Polyspun theo tỉ lệ 1:1, chiếc &aacute;o sơ mi n&agrave;y c&oacute; độ mềm mại, mịn m&agrave;ng, cực kỳ th&acirc;n thiện với l&agrave;n da người mặc. Đồng thời &aacute;o lại c&oacute; độ đ&agrave;n hồi tự nhi&ecirc;n, hạn chế nhăn nh&agrave;u trong suốt qu&aacute; tr&igrave;nh sử dụng v&agrave; giảm bớt thời gian l&agrave; ủi mỗi ng&agrave;y.</p>\r\n<p><strong>M&Agrave;U SẮC:</strong> Xanh caro xọc l&aacute; mạ, Xanh cổ vịt in l&aacute;.</p>\r\n<p><strong>SIZE:</strong> 38 &ndash; 39 &ndash; 40 &ndash; 41.</p>', 'public/uploads/1602729296-7.jpg', 0, 795000, NULL, '1', '', 9, '2020-10-13 03:45:16', '2020-10-15 02:34:56', NULL),
(9, 'Áo sơ mi dài tay nam SM208', 'ao-so-mi-dai-tay-nam-sm208', 'Kiểu dáng: Slim Fit - Tà lượn.\r\nÁo sơ mi dài tay phom Slim Fit ôm vừa vặn, trẻ trung, tôn dáng, giúp các anh tự tin với hình thể của mình.', '<p><strong>KIỂU D&Aacute;NG:</strong> SLIM FIT - T&Agrave; LƯỢN</p>\r\n<p><strong>CHI TIẾT:</strong></p>\r\n<p>- &Aacute;o sơ mi d&agrave;i tay phom Slim Fit &ocirc;m vừa vặn, trẻ trung, t&ocirc;n d&aacute;ng, gi&uacute;p c&aacute;c anh tự tin với h&igrave;nh thể của m&igrave;nh.</p>\r\n<p>- Thiết kế cơ bản với t&agrave; lượn, kh&ocirc;ng t&uacute;i ngực. Ứng dụng kỹ thuật dệt Yarn Dyed kinh điển, c&aacute;c sợi vải được nhuộm m&agrave;u rồi lồng gh&eacute;p tinh tế tạo n&ecirc;n một chiếc &aacute;o kẻ caro với 3 t&ocirc;ng m&agrave;u cam, trắng, n&acirc;u cực kỳ trẻ trung v&agrave; thời thượng.</p>\r\n<p><strong>CHẤT LIỆU:</strong></p>\r\n<p>- Được pha trộn 2 sợi Modal v&agrave; Polyspun theo tỉ lệ 1:1, chiếc &aacute;o sơ mi n&agrave;y c&oacute; độ mềm mại, mịn m&agrave;ng, cực kỳ th&acirc;n thiện với l&agrave;n da người mặc. Đồng thời &aacute;o lại c&oacute; độ đ&agrave;n hồi tự nhi&ecirc;n, hạn chế nhăn nh&agrave;u trong suốt qu&aacute; tr&igrave;nh sử dụng v&agrave; giảm bớt thời gian l&agrave; ủi mỗi ng&agrave;y.</p>\r\n<p><strong>M&Agrave;U SẮC:</strong> Xanh navi họa tiết, Xanh t&iacute;m than in l&aacute; trắng</p>\r\n<p><strong>SIZE:</strong> 38 &ndash; 39 &ndash; 40 &ndash; 41.</p>\r\n<div id=\"gtx-trans\" style=\"position: absolute; left: -41px; top: 50px;\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', 'public/uploads/1602729314-5.jpg', 0, 600000, NULL, '1', '', 9, '2020-10-13 04:02:07', '2020-10-15 02:35:14', NULL),
(10, 'Áo polo nam PL200', 'ao-polo-nam-pl200', 'Kiểu dáng: Slim fit.\r\nÁo Polo phom dáng Slim fit ôm vừa vặn, tôn dáng người mặc.', '<p><strong>KIỂU D&Aacute;NG:</strong> Slim Fit</p>\r\n<p><strong>CHI TIẾT:</strong></p>\r\n<p>- &Aacute;o Polo phom d&aacute;ng Slim fit &ocirc;m vừa vặn, t&ocirc;n d&aacute;ng người mặc.</p>\r\n<p>- Thiết kế cổ đức 2 khuy chỉn chu v&agrave; gấu xẻ năng động. &Aacute;o in họa tiết hoa hồng trẻ trung v&agrave; tươi mới, m&agrave;u sắc trung t&iacute;nh, c&oacute; thể kết hợp với nhiều trang phục kh&aacute;c nhau.</p>\r\n<p><strong>CHẤT LIỆU:</strong></p>\r\n<p>-Chất liệu Cotton từ sợi b&ocirc;ng cho bề mặt mịn v&agrave; m&aacute;t, thấm h&uacute;t mồ h&ocirc;i tốt, tho&aacute;ng kh&iacute;.</p>\r\n<p>- Kết hợp c&ugrave;ng 5% Spandex mang đến sự co gi&atilde;n thoải m&aacute;i trong mọi hoạt động.</p>\r\n<p><strong>M&Agrave;U SẮC:</strong> Đen họa tiết, Trắng họa tiết</p>\r\n<p><strong>SIZE:</strong> S - M - L - XL - XXL</p>', 'public/uploads/1602729333-5.jpg', 0, 450000, NULL, '1', '', 10, '2020-10-13 07:26:31', '2020-10-15 02:35:33', NULL),
(11, 'Áo polo nam PL201', 'ao-polo-nam-pl201', 'Kiểu dáng: Slim Fit.\r\nÁo Polo phom dáng Slim fit ôm vừa vặn, tôn dáng người mặc.', '<p><strong>KIỂU D&Aacute;NG:</strong> SLIM FIT</p>\r\n<p><strong>CHI TIẾT:</strong></p>\r\n<p>- &Aacute;o Polo phom d&aacute;ng Slim fit &ocirc;m vừa vặn, t&ocirc;n d&aacute;ng người mặc.</p>\r\n<p>- Thiết kế cổ đức 2 khuy chỉn chu v&agrave; gấu xẻ năng động. &Aacute;o in họa tiết hoa hồng trẻ trung v&agrave; tươi mới, m&agrave;u sắc trung t&iacute;nh, c&oacute; thể kết hợp với nhiều trang phục kh&aacute;c nhau.</p>\r\n<p><strong>CHẤT LIỆU:</strong></p>\r\n<p>-Chất liệu Cotton từ sợi b&ocirc;ng cho bề mặt mịn v&agrave; m&aacute;t, thấm h&uacute;t mồ h&ocirc;i tốt, tho&aacute;ng kh&iacute;.</p>\r\n<p>- Kết hợp c&ugrave;ng 5% Spandex mang đến sự co gi&atilde;n thoải m&aacute;i trong mọi hoạt động.</p>\r\n<p><strong>M&Agrave;U SẮC:</strong> Xanh biển 58MF, Cam 78MF</p>\r\n<p><strong>SIZE:</strong> S - M - L - XL - XXL</p>', 'public/uploads/1602729359-1.jpg', 0, 495000, NULL, '1', '', 10, '2020-10-13 07:35:18', '2020-10-15 02:35:59', NULL),
(12, 'Áo polo nam PL202', 'ao-polo-nam-pl202', 'Kiểu dáng: Slim Fit.\r\nÁo Polo phom dáng Slim fit ôm vừa vặn, tôn dáng người mặc.', '<p><strong>KIỂU D&Aacute;NG:</strong> SLIM FIT</p>\r\n<p><strong>CHI TIẾT:</strong></p>\r\n<p>- &Aacute;o Polo phom d&aacute;ng Slim fit &ocirc;m vừa vặn, t&ocirc;n d&aacute;ng người mặc.</p>\r\n<p>- Thiết kế cổ đức 2 khuy chỉn chu v&agrave; gấu xẻ năng động. &Aacute;o in họa tiết hoa hồng trẻ trung v&agrave; tươi mới, m&agrave;u sắc trung t&iacute;nh, c&oacute; thể kết hợp với nhiều trang phục kh&aacute;c nhau.</p>\r\n<p><strong>CHẤT LIỆU:</strong></p>\r\n<p>-Chất liệu Cotton từ sợi b&ocirc;ng cho bề mặt mịn v&agrave; m&aacute;t, thấm h&uacute;t mồ h&ocirc;i tốt, tho&aacute;ng kh&iacute;.</p>\r\n<p>- Kết hợp c&ugrave;ng 5% Spandex mang đến sự co gi&atilde;n thoải m&aacute;i trong mọi hoạt động.</p>\r\n<p><strong>M&Agrave;U SẮC:</strong> Xanh biển, Xanh t&iacute;m than</p>\r\n<p><strong>SIZE:</strong> S - M - L - XL - XXL</p>', 'public/uploads/1602729378-5.jpg', 0, 475000, NULL, '1', '', 10, '2020-10-13 08:24:46', '2020-10-15 02:36:18', NULL),
(13, 'Áo polo nam PL203', 'ao-polo-nam-pl203', 'Kiểu dáng: Slim Fit.\r\nÁo Polo phom dáng Slim fit ôm vừa vặn, tôn dáng người mặc.', '<p><strong>KIỂU D&Aacute;NG:</strong> Slim Fit</p>\r\n<p><strong>CHI TIẾT:</strong></p>\r\n<p>&bull;&Aacute;o Polo phom d&aacute;ng Slim Fit &ocirc;m vừa vặn, trẻ trung v&agrave; t&ocirc;n d&aacute;ng người mặc.</p>\r\n<p>&bull;Cổ &aacute;o 2 khuy v&agrave; tay &aacute;o dệt borib phối 3 đường line kh&aacute;c m&agrave;u tạo điểm nhấn ấn tượng. M&agrave;u sắc nam t&iacute;nh kết hợp kiểu dệt mắt chim phối m&agrave;u xanh - đen mang đến diện mạo thu h&uacute;t cho nam giới.</p>\r\n<p><strong>CHẤT LIỆU:</strong></p>\r\n<p>&bull;Chất liệu Cupro cao cấp từ sợi xơ hạt b&ocirc;ng qu&yacute; hiếm, kết hợp Polycool cho sản phẩm tăng cường độ mềm mại v&agrave; tho&aacute;ng m&aacute;t gấp 2,5 lần so với sợi thường. &Aacute;o đứng d&aacute;ng, đ&agrave;n hồi v&agrave; hạn chế bai d&atilde;o nhờ bổ sung sợi Spandex.</p>\r\n<p><strong>M&Agrave;U SẮC:&nbsp;</strong>Đỏ 44 mắt chim, Xanh cổ vịt 25 mắt chim</p>\r\n<p><strong>SIZE:&nbsp;</strong>S &ndash; M &ndash; L &ndash; XL &ndash; XXL</p>', 'public/uploads/1602729399-1.jpg', 0, 465000, NULL, '1', '', 10, '2020-10-13 08:33:09', '2020-10-15 02:36:39', NULL),
(14, 'Áo polo nam PL204', 'ao-polo-nam-pl204', 'Kiểu dáng: Regular fit.\r\nÁo Polo hè phom dáng Regular fit suông nhẹ, thoải mái', '<p><strong>KIỂU D&Aacute;NG:</strong>&nbsp;REGULAR FIT</p>\r\n<p><strong>CHI TIẾT:</strong></p>\r\n<p>- &Aacute;o Polo h&egrave; phom d&aacute;ng Regular fit su&ocirc;ng nhẹ, thoải m&aacute;i.</p>\r\n<p>- Mặt vải dệt lacoste (piqu&eacute;) cho sản phẩm c&oacute; kết cấu tho&aacute;ng m&aacute;t dễ chịu. Kết hợp hiệu ứng m&agrave;u melange trẻ trung, dễ kết hợp với nhiều trang phục trong nhiều ho&agrave;n cảnh kh&aacute;c nhau.</p>\r\n<p><strong>CHẤT LIỆU:</strong></p>\r\n<p>- Chất liệu Cotton thi&ecirc;n nhi&ecirc;n mềm mại, dễ chịu khi tiếp x&uacute;c với da. Vải xốp nhẹ v&agrave; tho&aacute;ng m&aacute;t, thấm h&uacute;t mồ h&ocirc;i v&agrave; tho&aacute;t ẩm tốt, mang lại cảm gi&aacute;c thoải m&aacute;i trong m&ugrave;a h&egrave;.</p>\r\n<p>- &Aacute;o đ&agrave;n hồi tốt nhờ bổ sung sợi Spandex.</p>\r\n<p><strong>M&Agrave;U SẮC:</strong> Xanh t&iacute;m than, Xanh biển</p>\r\n<p><strong>SIZE:&nbsp;</strong> S - M - L - XL</p>', 'public/uploads/1602729418-3.jpg', 0, 450000, NULL, '1', '', 10, '2020-10-13 08:49:05', '2020-10-15 02:36:58', NULL),
(15, 'Áo polo nam PL205', 'ao-polo-nam-pl205', 'Kiểu dáng: Regular fit .\r\nÁo Polo hè phom dáng Regular fit suông nhẹ, thoải mái.', '<p><strong>KIỂU D&Aacute;NG:</strong> Regular fit</p>\r\n<p><strong>CHI TIẾT:</strong></p>\r\n<p>- &Aacute;o Polo h&egrave; phom d&aacute;ng Regular fit su&ocirc;ng nhẹ, thoải m&aacute;i.</p>\r\n<p>- Mặt vải dệt lacoste (piqu&eacute;) cho sản phẩm c&oacute; kết cấu tho&aacute;ng m&aacute;t dễ chịu. Kết hợp hiệu ứng m&agrave;u melange trẻ trung, dễ kết hợp với nhiều trang phục trong nhiều ho&agrave;n cảnh kh&aacute;c nhau.</p>\r\n<p><strong>CHẤT LIỆU:</strong></p>\r\n<p>- Chất liệu Cotton thi&ecirc;n nhi&ecirc;n mềm mại, dễ chịu khi tiếp x&uacute;c với da. Vải xốp nhẹ v&agrave; tho&aacute;ng m&aacute;t, thấm h&uacute;t mồ h&ocirc;i v&agrave; tho&aacute;t ẩm tốt, mang lại cảm gi&aacute;c thoải m&aacute;i trong m&ugrave;a h&egrave;.</p>\r\n<p>- &Aacute;o đ&agrave;n hồi tốt nhờ bổ sung sợi Spandex.</p>\r\n<p><strong>M&Agrave;U SẮC:</strong>&nbsp;Đỏ 52M, Xanh biển 158, X&aacute;m 158M, Xanh t&iacute;m than 102M</p>\r\n<p><strong>SIZE:&nbsp;</strong>S - M - L</p>', 'public/uploads/1602729435-1.jpg', 0, 495000, NULL, '1', '', 10, '2020-10-13 08:53:29', '2020-10-15 02:37:15', NULL),
(16, 'Áo polo nam PL206', 'ao-polo-nam-pl206', 'Kiểu dáng: Slim Fit.\r\nÁo Polo phom dáng Slim Fit ôm vừa vặn, trẻ trung và tôn dáng.', '<p style=\"text-align: justify;\"><strong>KIỂU D&Aacute;NG:</strong> Slim Fit</p>\r\n<p style=\"text-align: justify;\"><strong>CHI TIẾT:</strong></p>\r\n<p style=\"text-align: justify;\">- &Aacute;o Polo phom d&aacute;ng Slim Fit &ocirc;m vừa vặn, trẻ trung v&agrave; t&ocirc;n d&aacute;ng.</p>\r\n<p style=\"text-align: justify;\">- Thiết kế nam t&iacute;nh, cổ &aacute;o k&eacute;o kh&oacute;a tiện lợi, cổ v&agrave; tay &aacute;o dệt rib, c&oacute; viền kh&aacute;c m&agrave;u tạo điểm nhấn. &Aacute;o m&agrave;u sắc cơ bản, c&oacute; thể kết hợp với nhiều loại trang phục kh&aacute;c nhau trong nhiều ho&agrave;n cảnh kh&aacute;c nhau.</p>\r\n<p style=\"text-align: justify;\"><strong>CHẤT LIỆU:</strong></p>\r\n<p style=\"text-align: justify;\">- Chất liệu CVC cao cấp l&agrave; sự kết hợp ưu điểm của cotton tự nhi&ecirc;n mềm mại, tho&aacute;ng m&aacute;t, xốp nhẹ v&agrave; độ bền chắc, m&agrave;u sắc sắc n&eacute;t của sợi nh&acirc;n tạo. &Aacute;o co gi&atilde;n thoải m&aacute;i nhờ sợi spandex.</p>\r\n<p style=\"text-align: justify;\"><strong>M&Agrave;U SẮC:</strong>&nbsp; Đỏ 44 mắt chim, Đen</p>\r\n<p style=\"text-align: justify;\"><strong>SIZE:</strong> S - M - L - XL&nbsp;</p>', 'public/uploads/1602729455-1.jpg', 0, 550000, NULL, '1', '', 10, '2020-10-13 09:10:09', '2020-10-15 02:37:35', NULL),
(17, 'Áo polo nam PL207', 'ao-polo-nam-pl207', 'Kiểu dáng: Slim Fit.\r\nÁo Polo phom dáng Slim fit ôm vừa vặn, tôn dáng người mặc.', '<p style=\"text-align: justify;\"><strong>KIỂU D&Aacute;NG:</strong> Slim Fit</p>\r\n<p style=\"text-align: justify;\"><strong>CHI TIẾT:</strong></p>\r\n<p style=\"text-align: justify;\">- &Aacute;o Polo phom d&aacute;ng Slim Fit &ocirc;m vừa vặn v&agrave; t&ocirc;n d&aacute;ng.</p>\r\n<p style=\"text-align: justify;\">- Cổ &aacute;o 2 khuy dệt chạy kim tuyến độc đ&aacute;o v&agrave; ấn tượng. Thiết kế basic, m&agrave;u sắc nam t&iacute;nh dễ kết hợp với c&aacute;c loại trang phục kh&aacute;c nhau trong nhiều ho&agrave;n cảnh kh&aacute;c nhau.</p>\r\n<p style=\"text-align: justify;\"><strong>CHẤT LIỆU:</strong></p>\r\n<p style=\"text-align: justify;\">- Chất liệu 100% Cotton Organic từ sợi b&ocirc;ng hữu cơ được nu&ocirc;i trồng, thu hoạch v&agrave; k&eacute;o sợi theo quy tr&igrave;nh \"sạch\" thuần khiết, kh&ocirc;ng h&oacute;a chất để bảo vệ l&agrave;n da v&agrave; m&ocirc;i trường. &Aacute;o c&oacute; khả năng thấm h&uacute;t vượt trội, mềm mại, mịn m&agrave;ng v&agrave; kh&aacute;ng khuẩn tự nhi&ecirc;n.</p>\r\n<p style=\"text-align: justify;\"><strong>M&Agrave;U SẮC:</strong> Xanh t&iacute;m than, Đỏ mắt chim</p>\r\n<p style=\"text-align: justify;\"><strong>SIZE:</strong> S - M - L - XL</p>', 'public/uploads/1602729471-3.jpg', 0, 450000, NULL, '1', '', 10, '2020-10-13 09:18:40', '2020-10-15 02:37:51', NULL),
(18, 'Áo polo nam PL208', 'ao-polo-nam-pl208', 'Kiểu dáng: Golf Fit.\r\nÁo Polo phom dáng Golf Fit dành riêng cho các quý ông đam mê golf và yêu thích vận động.', '<p style=\"text-align: justify;\"><strong>KIỂU D&Aacute;NG:</strong>&nbsp;GOLF FIT</p>\r\n<p style=\"text-align: justify;\"><strong>CHI TIẾT:</strong></p>\r\n<p style=\"text-align: justify;\">- &Aacute;o Polo phom d&aacute;ng Golf Fit d&agrave;nh ri&ecirc;ng cho c&aacute;c qu&yacute; &ocirc;ng đam m&ecirc; golf v&agrave; y&ecirc;u th&iacute;ch vận động.</p>\r\n<p style=\"text-align: justify;\">- Thiết kế tối giản với cổ &aacute;o 2 khuy v&agrave; tay &aacute;o bo viền lịch sự nhưng vẫn to&aacute;t l&ecirc;n vẻ ngo&agrave;i khỏe khoắn, nam t&iacute;nh. M&agrave;u sắc đa dạng cho c&aacute;c qu&yacute; &ocirc;ng nhiều lựa chọn. &Aacute;o dễ kết hợp với c&aacute;c loại quần golf, quần shorts trong c&aacute;c hoạt động thể thao.</p>\r\n<p style=\"text-align: justify;\"><strong>CHẤT LIỆU:</strong></p>\r\n<p style=\"text-align: justify;\">- Chất liệu Polyester tuyệt vời cho m&ugrave;a h&egrave; n&oacute;ng ẩm ở Việt Nam. Sợi PE được xử l&yacute; với c&ocirc;ng nghệ ti&ecirc;n tiến Moisture Wicking anti UV tạo n&ecirc;n mặt cắt đặc biệt c&oacute; c&aacute;c khoang rỗng trong sợi. Nhờ đ&oacute; gia tăng khả năng thấm h&uacute;t mồ h&ocirc;i, tho&aacute;ng kh&iacute;, nhẹ hơn v&agrave; kh&ocirc; nhanh hơn gấp 2 lần so với cotton, mang lại cảm gi&aacute;c mềm mượt, m&aacute;t lạnh, dễ chịu cho cả ng&agrave;y hoạt động. &Aacute;o c&oacute; khả năng chống năng, kh&aacute;ng tia UV, gi&uacute;p bảo vệ l&agrave;n da khi hoạt động ngo&agrave;i trời.</p>\r\n<p style=\"text-align: justify;\">- &Aacute;o đảm bảo độ co gi&atilde;n thoải m&aacute;i khi vận động nhờ 10% spandex.</p>\r\n<p style=\"text-align: justify;\"><strong>M&Agrave;U SẮC:</strong> Trắng kem, Xanh biển</p>\r\n<p style=\"text-align: justify;\"><strong>SIZE:</strong> S - M - L - XL&nbsp;</p>', 'public/uploads/1602729488-1.jpg', 0, 595000, NULL, '1', '', 10, '2020-10-13 09:27:21', '2020-10-15 02:38:08', NULL),
(19, 'Áo thun nam ngan tay TS200', '-ao-thun-nam-ngan-tay-ts200', 'Kiểu dáng: SLIM FIT.\r\nÁo T.shirt phom dáng Slim Fit ôm vừa vặn và tôn dáng cơ thể.', '<p><strong>KIỂU D&Aacute;NG:</strong>&nbsp;SLIM FIT</p>\r\n<p><strong>CHI TIẾT:</strong></p>\r\n<p>- &Aacute;o T.shirt phom d&aacute;ng Slim Fit &ocirc;m vừa vặn v&agrave; t&ocirc;n d&aacute;ng cơ thể.</p>\r\n<p>- Thiết kế basic với cổ tim trẻ trung. Ngực tr&aacute;i th&ecirc;u hạc tinh tế v&agrave; tạo điểm nhấn độc đ&aacute;o. M&agrave;u sắc nam t&iacute;nh, dễ kết hợp trang phục v&agrave; ph&ugrave; hợp trong nhiều ho&agrave;n cảnh.</p>\r\n<p><strong>CHẤT LIỆU:</strong></p>\r\n<p>- Chất liệu CVC cao cấp l&agrave; sự kết hợp ưu điểm của cotton tự nhi&ecirc;n mềm mại, tho&aacute;ng m&aacute;t, xốp nhẹ v&agrave; độ bền chắc, m&agrave;u sắc sắc n&eacute;t của sợi nh&acirc;n tạo. &Aacute;o co gi&atilde;n thoải m&aacute;i nhờ sợi spandex.</p>\r\n<p><strong>M&Agrave;U SẮC:&nbsp;</strong>Xanh biển, Đen</p>\r\n<p><strong>SIZE:&nbsp;</strong>S - M - L - XL - XXL</p>', 'public/uploads/1602729506-1.jpg', 0, 245000, NULL, '1', '', 11, '2020-10-13 09:38:28', '2020-10-15 02:38:26', NULL),
(20, 'Áo thun nam ngan tay TS201', 'ao-thun-nam-ngan-tay-ts201', 'Kiểu dáng: SLIM FIT.\r\nÁo T.shirt phom dáng Slim Fit ôm vừa vặn và tôn dáng cơ thể.', '<p><strong>KIỂU D&Aacute;NG:</strong>&nbsp;SLIM FIT</p>\r\n<p><strong>CHI TIẾT:</strong></p>\r\n<p>- &Aacute;o T.shirt phom d&aacute;ng Slim Fit &ocirc;m vừa vặn v&agrave; t&ocirc;n d&aacute;ng cơ thể.</p>\r\n<p>- Thiết kế basic với cổ tim trẻ trung. Ngực tr&aacute;i th&ecirc;u hạc tinh tế v&agrave; tạo điểm nhấn độc đ&aacute;o. M&agrave;u sắc nam t&iacute;nh, dễ kết hợp trang phục v&agrave; ph&ugrave; hợp trong nhiều ho&agrave;n cảnh.</p>\r\n<p><strong>CHẤT LIỆU:</strong></p>\r\n<p>- Chất liệu CVC cao cấp l&agrave; sự kết hợp ưu điểm của cotton tự nhi&ecirc;n mềm mại, tho&aacute;ng m&aacute;t, xốp nhẹ v&agrave; độ bền chắc, m&agrave;u sắc sắc n&eacute;t của sợi nh&acirc;n tạo. &Aacute;o co gi&atilde;n thoải m&aacute;i nhờ sợi spandex.</p>\r\n<p><strong>M&Agrave;U SẮC: </strong>X&aacute;m, V&agrave;ng&nbsp;</p>\r\n<p><strong>SIZE:&nbsp;</strong>S - M - L - XL&nbsp;</p>', 'public/uploads/1602729524-4.jpg', 0, 265000, NULL, '1', '', 11, '2020-10-13 09:41:47', '2020-10-15 02:38:44', NULL),
(21, 'Áo thun nam ngan tay TS202', 'ao-thun-nam-ngan-tay-ts202', 'Kiểu dáng: SLIM FIT.\r\nÁo T.shirt phom dáng Slim Fit ôm vừa vặn và tôn dáng cơ thể.', '<p><strong>KIỂU D&Aacute;NG:</strong>&nbsp;Slim fit</p>\r\n<p><strong>CHI TIẾT</strong></p>\r\n<p>- &Aacute;o T-shirt phom d&aacute;ng Slim Fit &ocirc;m vừa, trẻ trung, t&ocirc;n d&aacute;ng.</p>\r\n<p>- Thiết kế nam t&iacute;nh, in họa tiết l&aacute; c&acirc;y k&egrave;m chữ typo độc đ&aacute;o, &aacute;o m&agrave;u trung t&iacute;nh, c&oacute; thể kết hợp với c&aacute;c loại quần khaki, quần jean, quần shorts cho nhiều ho&agrave;n cảnh kh&aacute;c nhau.</p>\r\n<p><strong>CHẤT LIỆU:</strong></p>\r\n<p>- Chất liệu CVC cao cấp l&agrave; sự kết hợp ưu điểm của cotton tự nhi&ecirc;n mềm mại, tho&aacute;ng m&aacute;t, xốp nhẹ v&agrave; độ bền chắc, m&agrave;u sắc sắc n&eacute;t của sợi nh&acirc;n tạo. &Aacute;o co gi&atilde;n thoải m&aacute;i nhờ sợi spandex.</p>\r\n<p><strong>M&Agrave;U SẮC:&nbsp;</strong>Trắng , Xanh biển</p>\r\n<p><strong>Size:</strong> S &ndash; M &ndash; L &ndash; XL</p>', 'public/uploads/1602729543-1.jpg', 0, 285000, NULL, '1', '', 11, '2020-10-13 09:49:38', '2020-10-15 02:39:03', NULL),
(22, 'Áo thun nam ngan tay TS203', 'ao-thun-nam-ngan-tay-ts203', 'Kiểu dáng: Slim fit.\r\nÁo T.shirt phom dáng Slim Fit ôm vừa vặn và tôn dáng cơ thể.', '<p><strong>KIỂU D&Aacute;NG:</strong>&nbsp;Slim fit</p>\r\n<p><strong>CHI TIẾT:</strong></p>\r\n<p>- &Aacute;o T.shirt phom d&aacute;ng Slim Fit &ocirc;m vừa vặn, t&ocirc;n d&aacute;ng cơ thể.</p>\r\n<p>- Thiết kế cổ tr&ograve;n basic, kh&ocirc;ng k&eacute;n người mặc. Họa tiết dệt Yarn dye kẻ ngang nhỏ phối m&agrave;u trẻ trung v&agrave; ấn tượng. M&agrave;u sắc tươi s&aacute;ng, dễ kết hợp trang phục v&agrave; ph&ugrave; hợp trong nhiều ho&agrave;n cảnh.</p>\r\n<p><strong>CHẤT LIỆU:</strong></p>\r\n<p>- Chất liệu PE Coolmax d&agrave;nh ri&ecirc;ng cho m&ugrave;a h&egrave; n&oacute;ng ấm ở Việt Nam. &Aacute;o c&oacute; bề mặt trượt dễ chịu, mịn v&agrave; m&aacute;t, c&oacute; độ tho&aacute;ng kh&iacute;, xốp nhẹ, khả năng thấm h&uacute;t mồ h&ocirc;i v&agrave; tho&aacute;t ẩm tốt, gi&uacute;p người mặc lu&ocirc;n thoải m&aacute;i. &Aacute;o c&oacute; độ đ&agrave;n hồi nhẹ nhờ 5% Spandex.</p>\r\n<p><strong>M&Agrave;U SẮC:&nbsp;</strong>Xanh Aqua, Xanh l&aacute; mạ 2 kẻ</p>\r\n<p><strong>Size:</strong> S &ndash; M &ndash; L &ndash; XL</p>', 'public/uploads/1602729560-3.jpg', 0, 245000, NULL, '1', '', 11, '2020-10-13 10:14:00', '2020-10-15 02:39:20', NULL),
(23, 'Áo thun nam ngan tay TS204', 'ao-thun-nam-ngan-tay-ts204', 'Kiểu dáng: Slim fit.\r\nÁo T.shirt phom dáng Slim Fit ôm vừa vặn và tôn dáng cơ thể.', '<p><strong>KIỂU D&Aacute;NG:</strong>&nbsp;Slim fit</p>\r\n<p><strong>CHI TIẾT:</strong></p>\r\n<p>- &Aacute;o T.shirt phom d&aacute;ng Slim Fit &ocirc;m vừa vặn, t&ocirc;n d&aacute;ng cơ thể.</p>\r\n<p>- Thiết kế cổ tr&ograve;n basic, kh&ocirc;ng k&eacute;n người mặc. Họa tiết dệt Yarn dye kẻ ngang nhỏ phối m&agrave;u trẻ trung v&agrave; ấn tượng. M&agrave;u sắc tươi s&aacute;ng, dễ kết hợp trang phục v&agrave; ph&ugrave; hợp trong nhiều ho&agrave;n cảnh.</p>\r\n<p><strong>CHẤT LIỆU:</strong></p>\r\n<p>- Chất liệu PE Coolmax d&agrave;nh ri&ecirc;ng cho m&ugrave;a h&egrave; n&oacute;ng ấm ở Việt Nam. &Aacute;o c&oacute; bề mặt trượt dễ chịu, mịn v&agrave; m&aacute;t, c&oacute; độ tho&aacute;ng kh&iacute;, xốp nhẹ, khả năng thấm h&uacute;t mồ h&ocirc;i v&agrave; tho&aacute;t ẩm tốt, gi&uacute;p người mặc lu&ocirc;n thoải m&aacute;i. &Aacute;o c&oacute; độ đ&agrave;n hồi nhẹ nhờ 5% Spandex.</p>\r\n<p><strong>M&Agrave;U SẮC:&nbsp;</strong>Xanh t&iacute;m than, Đen họa tiết</p>\r\n<p><strong>Size:</strong>&nbsp;S &ndash; M &ndash; L &ndash; XL &ndash; XXL</p>', 'public/uploads/1602729575-1.jpg', 0, 265000, NULL, '1', '', 11, '2020-10-13 10:18:24', '2020-10-15 02:39:35', NULL),
(24, 'Áo thun nam ngan tay TS205', 'ao-thun-nam-ngan-tay-ts205', 'Kiểu dáng: Slim fit\r\nÁo T.shirt phom dáng Slim Fit ôm vừa vặn và tôn dáng cơ thể.', '<p><strong>KIỂU D&Aacute;NG:</strong>&nbsp;Slim fit</p>\r\n<p><strong>CHI TIẾT:</strong></p>\r\n<p>- &Aacute;o T.shirt phom d&aacute;ng Slim Fit &ocirc;m vừa vặn, t&ocirc;n d&aacute;ng cơ thể.</p>\r\n<p>- Thiết kế cổ tr&ograve;n basic, kh&ocirc;ng k&eacute;n người mặc. Họa tiết dệt Yarn dye kẻ ngang nhỏ phối m&agrave;u trẻ trung v&agrave; ấn tượng. M&agrave;u sắc tươi s&aacute;ng, dễ kết hợp trang phục v&agrave; ph&ugrave; hợp trong nhiều ho&agrave;n cảnh.</p>\r\n<p><strong>CHẤT LIỆU:</strong></p>\r\n<p>- Chất liệu PE Coolmax d&agrave;nh ri&ecirc;ng cho m&ugrave;a h&egrave; n&oacute;ng ấm ở Việt Nam. &Aacute;o c&oacute; bề mặt trượt dễ chịu, mịn v&agrave; m&aacute;t, c&oacute; độ tho&aacute;ng kh&iacute;, xốp nhẹ, khả năng thấm h&uacute;t mồ h&ocirc;i v&agrave; tho&aacute;t ẩm tốt, gi&uacute;p người mặc lu&ocirc;n thoải m&aacute;i. &Aacute;o c&oacute; độ đ&agrave;n hồi nhẹ nhờ 5% Spandex.</p>\r\n<p><strong>M&Agrave;U SẮC: </strong>&nbsp;Xanh l&aacute; mạ 2 kẻ,&nbsp; Hồng</p>\r\n<p><strong>Size:</strong> S &ndash; M &ndash; L &ndash; XL</p>', 'public/uploads/1602730667-4.jpg', 0, 285000, NULL, '1', '', 11, '2020-10-13 10:22:57', '2020-10-15 02:57:47', NULL),
(25, 'Áo thun nam ngan tay TS206', 'ao-thun-nam-ngan-tay-ts206', 'Kiểu dáng: Slim fit.\r\nÁo T.shirt phom dáng Slim Fit ôm vừa vặn và tôn dáng cơ thể.', '<p><strong>KIỂU D&Aacute;NG:</strong>&nbsp;Slim fit</p>\r\n<p><strong>CHI TIẾT:</strong></p>\r\n<p>- &Aacute;o Tanktop phom d&aacute;ng Slim Fit &ocirc;m vừa vặn, t&ocirc;n d&aacute;ng cơ thể.</p>\r\n<p>- Thiết kế cổ tr&ograve;n basic, tay &aacute;o mở rộng vai gi&uacute;p người mặc thoải m&aacute;i vận động. Đường may cắt can chạy dọc th&acirc;n khỏe khoắn. M&agrave;u sắc nam t&iacute;nh, dễ d&agrave;ng kết hợp trang phục v&agrave; th&iacute;ch hợp để mặc ở nh&agrave; lẫn đi ph&ograve;ng tập.</p>\r\n<p><strong>CHẤT LIỆU:</strong></p>\r\n<p>- Chất liệu Polyester Cool tuyệt vời cho m&ugrave;a h&egrave; n&oacute;ng ẩm ở Việt Nam. Sợi PE được xử l&yacute; với c&ocirc;ng nghệ ti&ecirc;n tiến Moisture Wicking tạo n&ecirc;n mặt cắt đặc biệt c&oacute; c&aacute;c khoang rỗng trong sợi. Nhờ đ&oacute; gia tăng khả năng thấm h&uacute;t mồ h&ocirc;i, tho&aacute;ng kh&iacute;, nhẹ hơn v&agrave; kh&ocirc; nhanh hơn gấp 2 lần so với cotton, mang lại cảm gi&aacute;c mềm mượt, m&aacute;t lạnh, dễ chịu cho cả ng&agrave;y hoạt động. &Aacute;o c&oacute; thể co gi&atilde;n nhờ kết hợp Spandex.</p>\r\n<p><strong>M&Agrave;U SẮC:&nbsp;</strong>Xanh t&iacute;m than, X&aacute;m 94</p>\r\n<p><strong>Size:</strong> S &ndash; M &ndash; L &ndash; XL</p>', 'public/uploads/1602729594-1.jpg', 0, 300000, NULL, '1', '', 11, '2020-10-13 10:29:56', '2020-10-15 02:39:54', NULL),
(26, 'Áo thun nam ngan tay TS207', 'ao-thun-nam-ngan-tay-ts207', 'Kiểu dáng: Slim fit.\r\nÁo T.shirt phom dáng Slim Fit ôm vừa vặn và tôn dáng cơ thể.', '<p><strong>KIỂU D&Aacute;NG:</strong>&nbsp;Slim fit</p>\r\n<p><strong>CHI TIẾT:</strong></p>\r\n<p>- &Aacute;o Tanktop phom d&aacute;ng Slim Fit &ocirc;m vừa vặn, t&ocirc;n d&aacute;ng cơ thể.</p>\r\n<p>- Thiết kế cổ tr&ograve;n basic, tay &aacute;o mở rộng vai gi&uacute;p người mặc thoải m&aacute;i vận động. Đường may cắt can chạy dọc th&acirc;n khỏe khoắn. M&agrave;u sắc nam t&iacute;nh, dễ d&agrave;ng kết hợp trang phục v&agrave; th&iacute;ch hợp để mặc ở nh&agrave; lẫn đi ph&ograve;ng tập.</p>\r\n<p><strong>CHẤT LIỆU:</strong></p>\r\n<p>- Chất liệu Polyester Cool tuyệt vời cho m&ugrave;a h&egrave; n&oacute;ng ẩm ở Việt Nam. Sợi PE được xử l&yacute; với c&ocirc;ng nghệ ti&ecirc;n tiến Moisture Wicking tạo n&ecirc;n mặt cắt đặc biệt c&oacute; c&aacute;c khoang rỗng trong sợi. Nhờ đ&oacute; gia tăng khả năng thấm h&uacute;t mồ h&ocirc;i, tho&aacute;ng kh&iacute;, nhẹ hơn v&agrave; kh&ocirc; nhanh hơn gấp 2 lần so với cotton, mang lại cảm gi&aacute;c mềm mượt, m&aacute;t lạnh, dễ chịu cho cả ng&agrave;y hoạt động. &Aacute;o c&oacute; thể co gi&atilde;n nhờ kết hợp Spandex.</p>\r\n<p><strong>M&Agrave;U SẮC: </strong>&nbsp;Trắng kem, Đỏ</p>\r\n<p><strong>Size:</strong> S &ndash; M &ndash; L &ndash; XL</p>', 'public/uploads/1602729610-1.jpg', 0, 320000, NULL, '1', '', 11, '2020-10-13 10:34:17', '2020-10-15 02:40:10', NULL),
(29, 'Áo thun dài tay nam TSL200', 'ao-thun-dai-tay-nam-tsl200', 'Kiểu dáng: Slim Fit.\r\nÁo T-shirt dài tay phom Slim Fit có độ ôm vừa, tôn dáng và giúp người mặc tự tin với hình thể của mình.', '<p><strong>KIỂU D&Aacute;NG:</strong> Slim Fit</p>\r\n<p><strong>CHI TIẾT:</strong></p>\r\n<p>- &Aacute;o T-shirt d&agrave;i tay phom Slim Fit c&oacute; độ &ocirc;m vừa, t&ocirc;n d&aacute;ng v&agrave; gi&uacute;p người mặc tự tin với h&igrave;nh thể của m&igrave;nh.</p>\r\n<p>- Thiết kể trẻ trung với cổ tim, dệt hiệu ứng melange độc đ&aacute;o. &Aacute;o c&oacute; 4 m&agrave;u trung t&iacute;nh, mang đến nhiều lựa chọn kết hợp trang phục cho những ho&agrave;n cảnh &iacute;t trang trọng.</p>\r\n<p><strong>CHẤT LIỆU:</strong></p>\r\n<p>- Chất liệu CVC cao cấp l&agrave; sự kết hợp ưu điểm của cotton tự nhi&ecirc;n mềm mại, tho&aacute;ng m&aacute;t, xốp nhẹ v&agrave; độ bền chắc, m&agrave;u sắc sắc n&eacute;t của sợi nh&acirc;n tạo.</p>\r\n<p><strong>M&Agrave;U SẮC:</strong> Trắng , X&aacute;m&nbsp;</p>\r\n<p><strong>SIZE:</strong> S &ndash; M &ndash; L &ndash; XL</p>', 'public/uploads/1602729627-1.jpg', 0, 325000, NULL, '1', '', 12, '2020-10-13 14:24:29', '2020-10-15 02:40:27', NULL),
(30, 'Áo thun dài tay nam TSL201', 'ao-thun-dai-tay-nam-tsl201', 'Kiểu dáng: Casual fit.\r\nÁo T-shirt dài tay phom dáng Casual fit suông rộng, mang đến vẻ ngoài thời thượng và phóng khoáng.', '<p><strong>KIỂU D&Aacute;NG:</strong> Casual fit</p>\r\n<p><strong>CHI TIẾT:</strong></p>\r\n<p>- &Aacute;o T-shirt d&agrave;i tay phom d&aacute;ng Casual fit su&ocirc;ng rộng, mang đến vẻ ngo&agrave;i thời thượng v&agrave; ph&oacute;ng kho&aacute;ng.</p>\r\n<p>- Thiết kế cơ bản với cổ tr&ograve;n, m&agrave;u sắc trung t&iacute;nh. Điểm nhấn của &aacute;o nằm ở chữ k&yacute; lớn c&aacute;ch điệu từ logo Aristino được in ở phần ngực phải. &Aacute;o th&iacute;ch hợp để mặc c&ugrave;ng quần d&agrave;i thu đ&ocirc;ng để đi dạo, tập thể thao v&agrave;o m&ugrave;a lạnh.</p>\r\n<p><strong>CHẤT LIỆU:</strong></p>\r\n<p>- Chất liệu CVC mang đến những ưu điểm vượt trội l&agrave; sự mềm mại, xốp nhẹ, tho&aacute;ng kh&iacute;, bền đẹp v&agrave; giữ m&agrave;u sắc n&eacute;t theo thời gian.</p>\r\n<p><strong>M&Agrave;U SẮC:&nbsp;</strong>Đen, X&aacute;m</p>\r\n<p><strong>SIZE:&nbsp;</strong>&nbsp;S &ndash; M &ndash; L &ndash; XL</p>', 'public/uploads/1602729645-4.jpg', 0, 375000, NULL, '1', '', 12, '2020-10-13 14:31:39', '2020-10-15 02:40:45', NULL),
(31, 'Áo thun dài tay nam TSL202', 'ao-thun-dai-tay-nam-tsl202', 'Kiểu dáng: Regular Fit.\r\nÁo sweatshirt phom Regular Fit suông vừa, thiết kế cơ bản, điểm nhấn nằm ở chữ LIMITED EDITION được in và dập nổi ở bán thân trước nổi bật thời thượng.', '<p><strong>KIỂU D&Aacute;NG: </strong>Regular Fit</p>\r\n<p><strong>CHI TIẾT:</strong></p>\r\n<p>- &Aacute;o sweatshirt phom Regular Fit su&ocirc;ng vừa, thiết kế cơ bản, điểm nhấn nằm ở chữ LIMITED EDITION được in v&agrave; dập nổi ở b&aacute;n th&acirc;n trước nổi bật thời thượng.</p>\r\n<p>- Phần cổ tr&ograve;n, tay &aacute;o v&agrave; gấu &aacute;o dệt bo rib chắc chắn, gi&uacute;p giữ nhiệt cơ thể trong m&ugrave;a lạnh.</p>\r\n<p><strong>CHẤT LIỆU:</strong></p>\r\n<p>- Th&agrave;nh phần CVC l&agrave; sự kết hợp của Cotton v&agrave; Polyester mang đến những ưu điểm vượt trội cho chiếc &aacute;o sweatshirt n&agrave;y. Đ&oacute; l&agrave; sự mềm mại, xốp nhẹ, tho&aacute;ng kh&iacute;, bền đẹp v&agrave; giữ m&agrave;u sắc n&eacute;t theo thời gian.</p>\r\n<p><strong>M&Agrave;U SẮC:&nbsp;</strong>Đen , X&aacute;m</p>\r\n<p><strong>SIZE:</strong> S &ndash; M &ndash; L &ndash; XL&nbsp;</p>', 'public/uploads/1602729662-1.jpg', 0, 550000, NULL, '1', '', 12, '2020-10-13 14:41:24', '2020-10-15 02:41:02', NULL),
(32, 'Áo thun dài tay nam TSL203', 'ao-thun-dai-tay-nam-tsl203', 'Kiểu dáng: Casual Fit', '<p><strong>KIỂU D&Aacute;NG:</strong> Casual Fit</p>\r\n<p><strong>CHI TIẾT:</strong></p>\r\n<p>- &Aacute;o sweatshirt phom Casual Fit rộng r&atilde;i, thoải m&aacute;i, mang đến cho người mặc vẻ ngo&agrave;i thời thượng, năng động. Điểm nhấn của &aacute;o nằm ở chữ k&yacute; Aristino c&aacute;ch điệu , th&ecirc;u đắp nhung ở th&acirc;n trước.</p>\r\n<p>- &Aacute;o thiết kế cổ tr&ograve;n , bo tay bo gấu bằng vải dệt rib khỏe khoắn, đồng thời giữ ấm cơ thể người mặc v&agrave;o m&ugrave;a lạnh.</p>\r\n<p><strong>CHẤT LIỆU:</strong></p>\r\n<p>- Chất liệu CVC cao cấp l&agrave; sự kết hợp ưu điểm của cotton tự nhi&ecirc;n mềm mại, tho&aacute;ng m&aacute;t, xốp nhẹ v&agrave; độ bền chắc, m&agrave;u sắc sắc n&eacute;t của sợi nh&acirc;n tạo.</p>\r\n<p>- &Aacute;o co gi&atilde;n thoải m&aacute;i nhờ sợi spandex.</p>\r\n<p>- &Aacute;o c&oacute; thể kết hợp c&ugrave;ng gi&agrave;y sneaker, quần khaki để đi chơi, quần d&agrave;i dệt kim để đi bộ hoặc tập thể thao trong m&ugrave;a lạnh.</p>\r\n<p><strong>M&Agrave;U SẮC:</strong> Cam , Xanh biển&nbsp;</p>\r\n<p><strong>SIZE:&nbsp;</strong>S &ndash; M &ndash; L &ndash; XL</p>', 'public/uploads/1602729679-4.jpg', 0, 495000, NULL, '1', '', 12, '2020-10-13 14:46:13', '2020-10-15 02:41:19', NULL),
(33, 'Áo len nam Aristino SW200', '-ao-len-nam-aristino-sw200', 'Kiểu dáng: Casual Fit.\r\nÁo len phom Casual fit trẻ trung và phóng khoáng với thiết kế cổ tròn, dệt bo cổ, tay và gấu áo mang đến sự khỏe khoắn.', '<p><strong>KIỂU D&Aacute;NG: </strong>Casual fit</p>\r\n<p><strong>CHI TIẾT:</strong></p>\r\n<p>- &Aacute;o len phom Casual fit trẻ trung v&agrave; ph&oacute;ng kho&aacute;ng với thiết kế cổ tr&ograve;n, dệt bo cổ, tay v&agrave; gấu &aacute;o mang đến sự khỏe khoắn.</p>\r\n<p>- &Aacute;o c&oacute; 2 m&agrave;u sắc tươi trẻ v&agrave; kh&ocirc;ng k&eacute;n người mặc l&agrave; kem v&agrave; xanh t&iacute;m than,được nhấn nh&aacute; bởi những mảng m&agrave;u th&uacute; vị tr&ecirc;n 2 hiệu ứng dệt kh&aacute;c nhau.</p>\r\n<p><strong>CHẤT LIỆU:</strong></p>\r\n<p>- Với th&agrave;nh phần ch&iacute;nh l&agrave; sợi Acrylic, &aacute;o len AWO004W9 nhẹ, ấm, hạn chế x&ugrave; l&ocirc;ng, c&oacute; khả năng đ&agrave;n hồi v&agrave; giữ định h&igrave;nh tốt. &Aacute;o kiểm so&aacute;t ẩm tốt, tho&aacute;ng, vẫn giữ ấm cơ thể nhưng kh&ocirc;ng g&acirc;y cảm gi&aacute;c b&iacute; b&aacute;ch.</p>\r\n<p><strong>M&Agrave;U SẮC:&nbsp;</strong>Be, Xanh t&iacute;m than</p>\r\n<p><strong>SIZE:&nbsp;</strong>S &ndash; M &ndash; L &ndash; XL</p>', 'public/uploads/1602729697-1.jpg', 0, 650000, NULL, '1', '1', 13, '2020-10-13 14:52:20', '2020-10-15 02:41:37', NULL),
(34, 'Áo len nam Aristino SW201', 'ao-len-nam-aristino-sw201', 'Kiểu dáng: Casual Fit.\r\nÁo len phom Casual Fit suông rộng, thoải mái, đem đến vẻ ngoài trẻ trung và phóng khoáng.', '<p><strong>KIỂU D&Aacute;NG:</strong>Casual Fit.</p>\r\n<p><strong>CHI TIẾT:</strong></p>\r\n<p>- &Aacute;o len phom Casual Fit su&ocirc;ng rộng, thoải m&aacute;i, đem đến vẻ ngo&agrave;i trẻ trung v&agrave; ph&oacute;ng kho&aacute;ng.</p>\r\n<p>- Thiết kế cổ tr&ograve;n cơ bản. Điểm nhấn của &aacute;o nằm ở việc phối đồng m&agrave;u họa tiết kẻ in ngang ngực v&agrave; tay &aacute;o. &Aacute;o m&agrave;u sắc nổi bật, th&iacute;ch hợp để mặc c&ugrave;ng c&aacute;c loại quần &acirc;u, quần khaki, quần jean cho c&aacute;c ho&agrave;n cảnh kh&aacute;c nhau.</p>\r\n<p><strong>CHẤT LIỆU:</strong></p>\r\n<p>- Chất liệu len Acrylic nhẹ, ấm, hạn chế x&ugrave; l&ocirc;ng. Đặc biệt &aacute;o c&oacute; khả năng co gi&atilde;n, đ&agrave;n hồi v&agrave; giữ định h&igrave;nh tốt.&nbsp;&Aacute;o kiểm so&aacute;t ẩm tốt, gi&uacute;p giữ ấm cơ thể nhưng kh&ocirc;ng tạo cảm gi&aacute;c b&iacute; b&aacute;ch.</p>\r\n<p><strong>M&Agrave;U SẮC:&nbsp;</strong>Đỏ, Xanh l&aacute;.</p>\r\n<p><strong>SIZE:&nbsp;</strong>&nbsp;S &ndash; M &ndash; L &ndash; XL</p>', 'public/uploads/1602729712-1.jpg', 0, 550000, NULL, '1', '', 13, '2020-10-13 14:57:48', '2020-10-15 02:41:52', NULL),
(35, 'Áo len nam Aristino SW202', '-ao-len-nam-aristino-sw202', 'Kiểu dáng: Slim Fit.\r\nÁo len phom dáng Slim Fit ôm gọn gàng và tôn dáng.', '<p><strong>KIỂU D&Aacute;NG:</strong> Slim Fit</p>\r\n<p><strong>CHI TIẾT:</strong></p>\r\n<p>- &Aacute;o len phom d&aacute;ng Slim Fit &ocirc;m gọn g&agrave;ng v&agrave; t&ocirc;n d&aacute;ng.</p>\r\n<p>- Thiết kế cổ tim basic, gấu v&agrave; tay &aacute;o bo rib gọn g&agrave;ng. Họa tiết dệt nổi đơn giản v&agrave; tinh tế th&iacute;ch hợp với những người y&ecirc;u th&iacute;ch vẻ đẹp tối giản. Hiệu ứng m&agrave;u melange kết hợp m&agrave;u sắc nam t&iacute;nh mang đến diện mạo thu h&uacute;t cho người mặc. &Aacute;o dễ d&agrave;ng kết hợp với mọi trang phục v&agrave; ph&ugrave; hợp với mọi lứa tuổi.</p>\r\n<p><strong>CHẤT LIỆU:</strong></p>\r\n<p>- Chất liệu len Acrylic nhẹ, ấm, hạn chế x&ugrave; l&ocirc;ng. Đặc biệt co gi&atilde;n, đ&agrave;n hồi v&agrave; giữ định h&igrave;nh tốt. &Aacute;o c&oacute; khả năng kiểm so&aacute;t ẩm tốt, tho&aacute;ng, vẫn giữ ấm cơ thể nhưng kh&ocirc;ng b&iacute;.</p>\r\n<p>- Kết hợp cotton mềm mịn, xốp nhẹ, dễ chịu với da.</p>\r\n<p><strong>M&Agrave;U SẮC:</strong> Trắng, N&acirc;u</p>\r\n<p><strong>SIZE:</strong>&nbsp;S &ndash; M &ndash; L &ndash; XL</p>', 'public/uploads/1602729730-4.jpg', 0, 575000, NULL, '1', '', 13, '2020-10-13 15:03:37', '2020-10-15 02:42:10', NULL),
(36, 'Áo len nam Aristino SW203', 'ao-len-nam-aristino-sw203', 'Kiểu dáng: Regular Fit.\r\nÁo len hai lớp phom dáng Regular Fit suông nhẹ thoải mái và ấm áp.', '<p><strong>KIỂU D&Aacute;NG:</strong> Regular Fit</p>\r\n<p><strong>CHI TIẾT:</strong></p>\r\n<p>- &Aacute;o len hai lớp phom d&aacute;ng Regular Fit su&ocirc;ng nhẹ thoải m&aacute;i v&agrave; ấm &aacute;p.</p>\r\n<p>- Thiết kế cổ tr&ograve;n basic, bo gấu v&agrave; tay &aacute;o. Thiết kế &aacute;o hai lớp gi&uacute;p giữ ấm tốt hơn trong thời tiết m&ugrave;a đ&ocirc;ng. Bảng m&agrave;u đa dạng với những tone m&agrave;u thời trang dễ kết hợp với nhiều loại trang phục.</p>\r\n<p><strong>CHẤT LIỆU:</strong></p>\r\n<p>- Chất liệu len Acrylic nhẹ, ấm, hạn chế x&ugrave; l&ocirc;ng. Đặc biệt co gi&atilde;n, đ&agrave;n hồi v&agrave; giữ định h&igrave;nh tốt. - &Aacute;o c&oacute; khả năng kiểm so&aacute;t ẩm tốt, tho&aacute;ng, vẫn giữ ấm cơ thể nhưng kh&ocirc;ng b&iacute;. Kết hợp cotton mềm mịn, xốp nhẹ, dễ chịu với da.</p>\r\n<p><strong>M&Agrave;U SẮC: </strong>&nbsp;Xanh biển, Đen</p>\r\n<p><strong>Size:</strong>&nbsp;S &ndash; M &ndash; L &ndash; XL</p>', 'public/uploads/1602729748-1.jpg', 0, 500000, NULL, '1', '', 13, '2020-10-13 15:08:42', '2020-10-15 02:42:28', NULL),
(37, 'Quần âu nam QTS200', 'quan-au-nam-qts200', 'Kiểu dáng: Regular Fit.\r\nQuần âu thiết kế phom Regular fit suông rộng, thoải mái mà vẫn đảm bảo vừa vặn số đo vòng bụng.', '<p><strong>KIỂU D&Aacute;NG: </strong>Regular Fit</p>\r\n<p><strong>CHI TIẾT:</strong></p>\r\n<p>- Quần &acirc;u thiết kế phom Regular fit su&ocirc;ng rộng, thoải m&aacute;i m&agrave; vẫn đảm bảo vừa vặn số đo v&ograve;ng bụng. Phần gấu chờ để may đo theo số đo của từng kh&aacute;ch h&agrave;ng.</p>\r\n<p>- Quần được dệt họa tiết kẻ ch&igrave;m đầy nam t&iacute;nh, c&ugrave;ng chữ k&yacute; c&aacute;ch điệu từ logo Aristino được th&ecirc;u tinh tế ở miệng t&uacute;i.</p>\r\n<p><strong>CHẤT LIỆU:</strong></p>\r\n<p>- 70% Polyester kết hợp 30% sợi Rayon cho quần c&oacute; độ cứng c&aacute;p v&agrave; đứng d&aacute;ng vừa đủ, đồng thời vẫn c&oacute; bề mặt xốp nhẹ, tho&aacute;ng m&aacute;t dễ chịu. Đặc biệt, quần thấm h&uacute;t tốt v&agrave; tho&aacute;t ẩm vượt trội, mang lại cảm gi&aacute;c dễ chịu suốt ng&agrave;y d&agrave;i.</p>\r\n<p><strong>M&Agrave;U SẮC:</strong>&nbsp;Đen 01 kẻ, X&aacute;m 44 kẻ, X&aacute;m 33 kẻ</p>\r\n<p><strong>SIZE:</strong> 38-39-40-41</p>', 'public/uploads/1602729766-1.jpg', 0, 750000, NULL, '1', '', 4, '2020-10-13 15:17:08', '2020-10-15 02:42:46', NULL),
(38, 'Quần âu nam QTS201', '-quan-au-nam-qts201', NULL, '<p><strong>KIỂU D&Aacute;NG:</strong> Regular Fit</p>\r\n<p><strong>CHI TIẾT:</strong></p>\r\n<p>- Quần &acirc;u phom d&aacute;ng Regular Fit su&ocirc;ng nhẹ, thoải m&aacute;i m&agrave; vẫn đảm bảo vừa vặn số đo h&igrave;nh thể.</p>\r\n<p>- Thiết kế tỉ mỉ đến từng chi tiết với t&uacute;i xẻ 2 b&ecirc;n, t&uacute;i c&agrave;i khuy ph&iacute;a sau tiện lợi. 2 m&agrave;u trung t&iacute;nh mang đến nhiều lựa chọn kết hợp m&agrave;u sắc trang phục.</p>\r\n<p><strong>CHẤT LIỆU:</strong></p>\r\n<p>- Chất liệu Polyester kết hợp Rayon tạo độ cứng c&aacute;p v&agrave; đứng d&aacute;ng vừa đủ, đồng thời vẫn c&oacute; bề mặt xốp nhẹ, tho&aacute;ng m&aacute;t dễ chịu.</p>\r\n<p>- Đặc biệt, quần thấm h&uacute;t tốt v&agrave; tho&aacute;ng kh&iacute;, co gi&atilde;n nhẹ nhờ sợi Spandex, mang lại cảm gi&aacute;c dễ chịu suốt ng&agrave;y d&agrave;i.</p>\r\n<p><strong>M&Agrave;U SẮC:&nbsp;</strong>Đen , X&aacute;m</p>\r\n<p><strong>SIZE:&nbsp;</strong> 29 &ndash; 30 &ndash; 31 &ndash; 32&nbsp;</p>', 'public/uploads/1602729784-3.jpg', 0, 850000, NULL, '1', '', 4, '2020-10-13 15:23:01', '2020-10-15 02:43:04', NULL);
INSERT INTO `products` (`id`, `title`, `slug`, `description`, `content`, `thumbnail`, `quantity`, `price`, `discount`, `status`, `product_hot`, `category_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(39, 'Quần âu nam QTS202', 'quan-au-nam-qts202', 'Kiểu dáng: Golf Fit.\r\nQuần âu phom Golf Fit đặc biệt, có phần ống suông rộng thoải mái đồng thời phần bụng vẫn được may ôm, đảm bảo sự vừa vặn như may đo.', '<p><strong>KIỂU D&Aacute;NG: </strong>Golf Fit</p>\r\n<p><strong>CHI TIẾT:</strong></p>\r\n<p>- Quần &acirc;u phom Golf Fit đặc biệt, c&oacute; phần ống su&ocirc;ng rộng thoải m&aacute;i đồng thời phần bụng vẫn được may &ocirc;m, đảm bảo sự vừa vặn như may đo.</p>\r\n<p>- Thiết kế m&oacute;c treo kẹp ở cạp quần, t&uacute;i nhỏ b&ecirc;n sườn v&agrave; t&uacute;i hậu đều c&oacute; kh&oacute;a k&eacute;o tiện lợi, c&ugrave;ng những chi tiết trang tr&iacute; đặc biệt ở d&acirc;y dệt kẹp miệng t&uacute;i, m&aacute;c &eacute;p m&agrave;u in ở lưng quần v&ocirc; c&ugrave;ng đặc biệt.</p>\r\n<p><strong>CHẤT LIỆU:</strong></p>\r\n<p>- Với h&agrave;nh phần 89% Polyester, 11 % Elastane, quần c&oacute; độ nhẹ v&agrave; khả năng thấm h&uacute;t cực kỳ tốt, đ&agrave;n hồi v&agrave; &iacute;t nhăn nh&agrave;u, gi&uacute;p c&aacute;c Golfer tự tin trong từng c&uacute; Swing.</p>\r\n<p><strong>M&Agrave;U SẮC:&nbsp;</strong>Đen, Xanh biển</p>\r\n<p><strong>SIZE:</strong> 29 &ndash; 30 &ndash; 31 &ndash; 32</p>', 'public/uploads/1602729801-3.jpg', 0, 890000, NULL, '1', '', 4, '2020-10-13 15:31:43', '2020-10-15 02:43:21', NULL),
(40, 'Quần âu nam QTS203', 'quan-au-nam-qts203', 'Kiểu dáng: Tapered fit\r\nQuần âu phom dáng Tapered Fit với phần trên được thiết kế thoải mái rộng rãi, ôm dần từ đầu gối xuống gấu, mang đến vẻ ngoài thời thượng cho người mặc.', '<p style=\"text-align: justify;\"><strong>KIỂU D&Aacute;NG:</strong>&nbsp;Tapered fit</p>\r\n<p style=\"text-align: justify;\"><strong>CHI TIẾT:</strong></p>\r\n<p style=\"text-align: justify;\">- Quần &acirc;u phom d&aacute;ng Tapered Fit với phần tr&ecirc;n được thiết kế thoải m&aacute;i rộng r&atilde;i, &ocirc;m dần từ đầu gối xuống gấu, mang đến vẻ ngo&agrave;i thời thượng cho người mặc.</p>\r\n<p style=\"text-align: justify;\">- Thiết kế tỉ mỉ từng đường n&eacute;t, họa tiết kẻ caro nhỏ kết hợp t&uacute;i xẻ 2 b&ecirc;n v&agrave; t&uacute;i c&agrave;i sau tiện lợi. Quần th&iacute;ch hợp để kết hợp với c&aacute;c loại &aacute;o polo, &aacute;o sơ mi casual,... theo phong c&aacute;ch thoải m&aacute;i ngo&agrave;i văn ph&ograve;ng.</p>\r\n<p style=\"text-align: justify;\"><strong>CHẤT LIỆU:</strong></p>\r\n<p>- Chất liệu Polyester cho bề mặt quần trượt dễ chịu, kh&ocirc;ng nhăn co, c&oacute; độ b&oacute;ng s&aacute;ng, sắc n&eacute;t.</p>\r\n<p>- Kết hợp c&ugrave;ng Viscose mịn mượt gi&uacute;p sản phẩm nhẹ v&agrave; tho&aacute;ng m&aacute;t tối đabền m&agrave;u, kh&ocirc;ng nhăn nh&agrave;u, đứng d&aacute;ng. Ngo&agrave;i ra, 3,5% Nylon c&oacute; vai tr&ograve; kh&aacute;ng ẩm tốt, ngăn chặn t&igrave;nh trạng ẩm mốc cho quần, 1,5% Spandex gi&uacute;p quần co gi&atilde;n nhẹ.</p>\r\n<p style=\"text-align: justify;\"><strong>M&Agrave;U SẮC:</strong> X&aacute;m, Xanh t&iacute;m than</p>\r\n<p style=\"text-align: justify;\"><strong>SIZE:</strong> 29 &ndash; 30 &ndash; 31 &ndash; 32&nbsp;</p>', 'public/uploads/1602729818-1.jpg', 0, 795000, NULL, '1', '', 4, '2020-10-13 15:36:35', '2020-10-15 02:43:38', NULL),
(41, 'Quần kaki nam QKP200', 'quan-kaki-nam-qkp200', 'Kiểu dáng: Slim Fit.\r\nQuần kaki phom dáng Slim Fit ôm vừa vặn, tôn dáng người mặc nhưng vẫn đảm bảo sự thoải mái, nam tính.', '<p><strong>KIỂU D&Aacute;NG:</strong> Slim Fit</p>\r\n<p><strong>CHI TIẾT:</strong></p>\r\n<p>- Quần kaki phom d&aacute;ng Slim Fit &ocirc;m vừa vặn, t&ocirc;n d&aacute;ng người mặc nhưng vẫn đảm bảo sự thoải m&aacute;i, nam t&iacute;nh.</p>\r\n<p>- Thiết kế chỉn chu, đường may tỉ mỉ mang đến vẻ lịch l&atilde;m cho nam giới. Quần c&oacute; t&uacute;i xẻ hai b&ecirc;n v&agrave; t&uacute;i c&agrave;i khuy ph&iacute;a sau tiện lợi. M&agrave;u sắc cơ bản v&agrave; dễ d&agrave;ng kết hợp với trang phục kh&aacute;c.</p>\r\n<p><strong>CHẤT LIỆU:</strong></p>\r\n<p>- Chất liệu CVC cao cấp l&agrave; sự kết hợp ưu điểm của cotton tự nhi&ecirc;n v&agrave; sợi nh&acirc;n tạo, tạo sự mềm mại, tho&aacute;ng m&aacute;t, xốp nhẹ v&agrave; độ bền chắc, m&agrave;u sắc sắc n&eacute;t cho quần.&nbsp;</p>\r\n<p><strong>M&Agrave;U SẮC:</strong> Be, X&aacute;m&nbsp;</p>\r\n<p><strong>SIZE:&nbsp;</strong>29 &ndash; 30 &ndash; 31 &ndash; 32&nbsp;</p>', 'public/uploads/1602729833-1.jpg', 0, 695000, NULL, '1', '', 5, '2020-10-13 15:41:51', '2020-10-15 02:43:53', NULL),
(42, 'Quần kaki nam QKP201', 'quan-kaki-nam-qkp201', 'Kiểu dáng: Slim Fit.\r\nQuần khaki phom dáng Slim Fit ôm vừa vặn, tôn dáng người mặc nhưng vẫn đảm bảo sự thoải mái, nam tính.', '<p><strong>KIỂU D&Aacute;NG:</strong> Slim Fit</p>\r\n<p><strong>CHI TIẾT:</strong></p>\r\n<p>- Quần khaki phom d&aacute;ng Slim Fit &ocirc;m vừa vặn, t&ocirc;n d&aacute;ng người mặc nhưng vẫn đảm bảo sự thoải m&aacute;i, nam t&iacute;nh.</p>\r\n<p>- Thiết kế chỉn chu, đường may tỉ mỉ mang đến vẻ lịch l&atilde;m cho nam giới. Quần c&oacute; t&uacute;i xẻ hai b&ecirc;n v&agrave; t&uacute;i c&agrave;i khuy ph&iacute;a sau tiện lợi. M&agrave;u sắc cơ bản v&agrave; dễ d&agrave;ng kết hợp với trang phục kh&aacute;c.</p>\r\n<p><strong>CHẤT LIỆU:</strong></p>\r\n<p>- Chất liệu CVC cao cấp l&agrave; sự kết hợp ưu điểm của cotton tự nhi&ecirc;n v&agrave; sợi nh&acirc;n tạo, tạo sự mềm mại, tho&aacute;ng m&aacute;t, xốp nhẹ v&agrave; độ bền chắc, m&agrave;u sắc sắc n&eacute;t cho quần.&nbsp;</p>\r\n<p><strong>M&Agrave;U SẮC:</strong>Đen, Xanh t&iacute;m than</p>\r\n<p><strong>SIZE:&nbsp;</strong>29 &ndash; 30 &ndash; 31 &ndash; 32&nbsp;</p>', 'public/uploads/1602729850-4.jpg', 0, 725000, NULL, '1', '', 5, '2020-10-13 15:46:04', '2020-10-15 02:44:10', NULL),
(43, 'Quần kaki nam QKP202', 'quan-kaki-nam-qkp202', 'Kiểu dáng: Regular Fit.\r\nQuần khaki phom dáng Regular Fit suông nhẹ mà vẫn đảm bảo vừa vặn số đo hình thể.', '<p><strong>KIỂU D&Aacute;NG: </strong>Regular Fit</p>\r\n<p><strong>CHI TIẾT:</strong></p>\r\n<p>- Quần khaki phom d&aacute;ng Regular Fit su&ocirc;ng nhẹ m&agrave; vẫn đảm bảo vừa vặn số đo h&igrave;nh thể.</p>\r\n<p>- Quần dệt Dobby chỉn chu, đường may tỉ mỉ mang đến vẻ lịch l&atilde;m cho nam giới. Quần c&oacute; t&uacute;i xẻ hai b&ecirc;n v&agrave; t&uacute;i c&agrave;i khuy ph&iacute;a sau tiện lợi. Thiết kế basic, m&agrave;u sắc cơ bản gi&uacute;p quần dễ d&agrave;ng kết hợp với trang phục kh&aacute;c.</p>\r\n<p><strong>CHẤT LIỆU:</strong></p>\r\n<p>- Chất liệu 100% cotton cao cấp tho&aacute;ng m&aacute;t gi&uacute;p quần thấm h&uacute;t mồ h&ocirc;i tốt, dễ chịu khi tiếp x&uacute;c với da v&agrave; kh&ocirc;ng g&acirc;y k&iacute;ch ứng.</p>\r\n<p><strong>M&Agrave;U SẮC:&nbsp;</strong>Be, X&aacute;m</p>\r\n<p><strong>SIZE:</strong> 29 &ndash; 30 &ndash; 31 &ndash; 32&nbsp;</p>', 'public/uploads/1602729866-1.jpg', 0, 625000, NULL, '1', '', 5, '2020-10-13 15:50:44', '2020-10-15 02:44:26', NULL),
(44, 'Quần kaki nam QKP203', 'quan-kaki-nam-qkp203', 'Kiểu dáng: Regular Fit.\r\nQuần kaki phom dáng Regular fit có độ suông nhẹ vừa vặn với đường xếp ly tạo sự thoải mái tối đa, đặc biệt cho những người có vòng bụng lớn.', '<p style=\"text-align: justify;\"><strong>KIỂU D&Aacute;NG:</strong> Regular fit</p>\r\n<p style=\"text-align: justify;\"><strong>CHI TIẾT:</strong></p>\r\n<p style=\"text-align: justify;\">- Quần kaki phom d&aacute;ng Regular fit c&oacute; độ su&ocirc;ng nhẹ vừa vặn với đường xếp ly tạo sự thoải m&aacute;i tối đa, đặc biệt cho những người c&oacute; v&ograve;ng bụng lớn.</p>\r\n<p style=\"text-align: justify;\">- C&ocirc;ng nghệ chống nhăn Air plane từ Mỹ gi&uacute;p bề mặt vải phẳng phiu, chống b&aacute;m bụi v&agrave; giữ đứng d&aacute;ng.</p>\r\n<p style=\"text-align: justify;\"><strong>CHẤT LIỆU:</strong></p>\r\n<p style=\"text-align: justify;\">- Chất liệu cotton 100% cao cấp c&oacute; bề mặt xốp nhẹ, tho&aacute;ng m&aacute;t. Vải cotton thấm h&uacute;t mồ h&ocirc;i tốt, dễ chịu khi tiếp x&uacute;c với da, kh&ocirc;ng g&acirc;y k&iacute;ch ứng.</p>\r\n<p style=\"text-align: justify;\"><strong>M&Agrave;U SẮC:&nbsp;</strong>Đen, X&aacute;m</p>\r\n<p style=\"text-align: justify;\"><strong>SIZE:</strong> 29 - 30 - 31 - 32&nbsp;</p>', 'public/uploads/1602729884-3.jpg', 0, 700000, NULL, '1', '', 5, '2020-10-13 15:57:37', '2020-10-15 02:44:44', NULL),
(45, 'Quần short nam QS200', 'quan-short-nam-qs200', 'Kiểu dáng: Casual Fit.\r\nQuần shorts phom dáng Casual fit rộng rãi, thoải mái, dành riêng cho mùa hè.', '<p><strong>KIỂU D&Aacute;NG: </strong>Casual fit</p>\r\n<p><strong>CHI TIẾT:</strong></p>\r\n<p>- Quần shorts phom d&aacute;ng Casual fit rộng r&atilde;i, thoải m&aacute;i, d&agrave;nh ri&ecirc;ng cho m&ugrave;a h&egrave;.</p>\r\n<p>- Thiết kế theo phong c&aacute;ch ph&oacute;ng kho&aacute;ng, ống rộng hơn những quần shorts th&ocirc;ng thường. Quần c&oacute; t&uacute;i xẻ 2 b&ecirc;n v&agrave; 2 t&uacute;i c&agrave;i sau tiện lợi, m&agrave;u sắc cơ bản, c&oacute; thể kết hợp với những trang phục thoải m&aacute;i cho những dịp &iacute;t trang trọng.</p>\r\n<p><strong>CHẤT LIỆU:</strong></p>\r\n<p>- Chất liệu Polyester cho bề mặt quần trượt dễ chịu, kh&ocirc;ng nhăn co, c&oacute; độ b&oacute;ng s&aacute;ng, sắc n&eacute;t.</p>\r\n<p>- Kết hợp c&ugrave;ng Viscose mịn mượt gi&uacute;p sản phẩm nhẹ v&agrave; tho&aacute;ng m&aacute;t tối đabền m&agrave;u, kh&ocirc;ng nhăn nh&agrave;u, đứng d&aacute;ng. Ngo&agrave;i ra 2% Spandex gi&uacute;p quần co gi&atilde;n nhẹ.</p>\r\n<p><strong>M&Agrave;U SẮC:&nbsp;</strong>Xanh t&iacute;m than, Be</p>\r\n<p><strong>SIZE</strong>: 29 - 30 - 31 - 32&nbsp;</p>', 'public/uploads/1602729901-1.jpg', 0, 550000, NULL, '1', '', 6, '2020-10-13 16:05:28', '2020-10-15 02:45:01', NULL),
(46, 'Quần short nam QS201', 'quan-short-nam-qs201', 'Kiểu dáng: Slim Fit.\r\nQuần shorts âu phom dáng Slim Fit ôm vừa vặn, tôn dáng người mặc nhưng vẫn đảm bảo sự thoải mái, nam tính.', '<p><strong>KIỂU D&Aacute;NG:</strong> Slim Fit</p>\r\n<p><strong>CHI TIẾT:</strong></p>\r\n<p>- Quần shorts &acirc;u phom d&aacute;ng Slim Fit &ocirc;m vừa vặn, t&ocirc;n d&aacute;ng người mặc nhưng vẫn đảm bảo sự thoải m&aacute;i, nam t&iacute;nh.</p>\r\n<p>- Thiết kế cơ bản với t&uacute;i xẻ 2 b&ecirc;n, t&uacute;i sau c&agrave;i khuy tiện lợi, m&agrave;u sắc trung t&iacute;nh, c&oacute; thể kết hợp được nhiều trang phục kh&aacute;c nhau trong nhiều ho&agrave;n cảnh kh&aacute;c nhau.</p>\r\n<p><strong>CHẤT LIỆU:</strong></p>\r\n<p>- Chất liệu Modal kết hợp Cotton gi&uacute;p mặt vải mềm nhẹ, tho&aacute;ng m&aacute;t, thấm h&uacute;t mồ h&ocirc;i v&agrave; tho&aacute;t ẩm tốt.</p>\r\n<p>- Kết hợp Polyester gi&uacute;p quần bền chắc, mượt v&agrave; c&oacute; độ b&oacute;ng sắc n&eacute;t v&agrave; Spandex tạo độ co gi&atilde;n nhẹ.</p>\r\n<p><strong>M&Agrave;U SẮC:&nbsp;</strong>Be, X&aacute;m</p>\r\n<p><strong>SIZE:</strong> 29 &ndash; 30 &ndash; 31 &ndash; 32</p>', 'public/uploads/1602729918-1.jpg', 0, 450000, NULL, '1', '', 6, '2020-10-13 16:09:03', '2020-10-15 02:45:18', NULL),
(47, 'Quần short nam QS202', 'quan-short-nam-qs202', 'Kiểu dáng: Casual Fit.\r\nQuần shorts phom dáng Casual Fit rộng rãi, thoải mái, thích hợp cho những quý ông yêu thích phong cách phóng khoáng mà vẫn lịch lãm.', '<p><strong>KIỂU D&Aacute;NG:</strong>&nbsp;Casual fit</p>\r\n<p><strong>CHI TIẾT</strong></p>\r\n<p>- Quần shorts phom d&aacute;ng Casual Fit rộng r&atilde;i, thoải m&aacute;i, th&iacute;ch hợp cho những qu&yacute; &ocirc;ng y&ecirc;u th&iacute;ch phong c&aacute;ch ph&oacute;ng kho&aacute;ng m&agrave; vẫn lịch l&atilde;m.</p>\r\n<p>- Thiết kế nam t&iacute;nh với t&uacute;i xẻ 2 b&ecirc;n, t&uacute;i c&agrave;i khuy sau tiện lợi, in họa tiết tropical độc đ&aacute;o, m&agrave;u sắc trung t&iacute;nh, c&oacute; thể kết hợp với một số trang phục kh&aacute;c nhau trong nhiều ho&agrave;n cảnh kh&aacute;c nhau.</p>\r\n<p><strong>CHẤT LIỆU:</strong></p>\r\n<p>- Chất liệu cotton 100% cao cấp gi&uacute;p bề mặt vải xốp nhẹ, tho&aacute;ng m&aacute;t. Vải thấm h&uacute;t mồ h&ocirc;i tốt, dễ chịu khi tiếp x&uacute;c với da, kh&ocirc;ng g&acirc;y k&iacute;ch ứng.</p>\r\n<p><strong>M&Agrave;U SẮC:</strong> Be, Xanh t&iacute;m than</p>\r\n<p><strong>Size:</strong> 29 &ndash; 30 &ndash; 31 &ndash; 32</p>', 'public/uploads/1602729942-1.jpg', 0, 450000, NULL, '1', '', 6, '2020-10-13 16:14:01', '2020-10-15 02:45:42', NULL),
(48, 'Quần short nam QS203', 'quan-short-nam-qs203', 'Kiểu dáng: Regular Fit.\r\nQuần shorts âu phom dáng Regular Fit suông nhẹ, đảm bảo sự thoải mái, nam tính.', '<p><strong>KIỂU D&Aacute;NG:</strong>&nbsp;Regular fit</p>\r\n<p><strong>CHI TIẾT:</strong></p>\r\n<p>-Quần shorts &acirc;u phom d&aacute;ng Regular Fit su&ocirc;ng nhẹ, đảm bảo sự thoải m&aacute;i, nam t&iacute;nh.</p>\r\n<p>- Thiết kế cơ bản với t&uacute;i xẻ 2 b&ecirc;n, t&uacute;i sau c&agrave;i khuy tiện lợi, m&agrave;u sắc trung t&iacute;nh, c&oacute; thể kết hợp được nhiều trang phục kh&aacute;c nhau trong nhiều ho&agrave;n cảnh kh&aacute;c nhau.</p>\r\n<p><strong>CHẤT LIỆU:</strong></p>\r\n<p>- Chất liệu Polyester kết hợp Rayon cho quần c&oacute; độ cứng c&aacute;p v&agrave; đứng d&aacute;ng vừa đủ, đồng thời vẫn c&oacute; bề mặt xốp nhẹ, tho&aacute;ng m&aacute;t dễ chịu. Đặc biệt, quần thấm h&uacute;t tốt v&agrave; tho&aacute;t ẩm vượt trội, mang lại cảm gi&aacute;c dễ chịu suốt ng&agrave;y d&agrave;i.</p>\r\n<p><strong>M&Agrave;U SẮC:</strong> Xanh t&iacute;m than, Đen</p>\r\n<p><strong>Size:</strong> 29 &ndash; 30 &ndash; 31 &ndash; 32&nbsp;</p>', 'public/uploads/1602729959-1.jpg', 0, 550000, NULL, '1', '', 6, '2020-10-13 16:18:51', '2020-10-15 02:45:59', NULL),
(49, 'Quần thu đông nam QSP200', 'quan-thu-đong-nam-qsp200', 'Kiểu dáng: Carrot.\r\nQuần nam thu đông kiểu dáng Carrot suông nhẹ, thoải mái. Vải dệt terry basic giúp quần đứng dáng, dày dặn.', '<p><strong>KIỂU D&Aacute;NG:</strong> Carrot</p>\r\n<p><strong>CHI TIẾT:</strong></p>\r\n<p>- Quần nam thu đ&ocirc;ng kiểu d&aacute;ng Carrot su&ocirc;ng nhẹ, thoải m&aacute;i. Vải dệt terry basic gi&uacute;p quần đứng d&aacute;ng, d&agrave;y dặn.</p>\r\n<p>- Thiết kế thể thao năng động, cạp chun d&agrave;y, co gi&atilde;n dễ chịu với c&aacute;c số đo v&ograve;ng bụng lớn/nhỏ kh&aacute;c nhau. M&eacute;p t&uacute;i xẻ 2 b&ecirc;n th&acirc;n quần dệt khỏe khoắn, nam t&iacute;nh.</p>\r\n<p><strong>CHẤT LIỆU:</strong></p>\r\n<p>- Chất liệu CVC cao cấp l&agrave; sự kết hợp ưu điểm của cotton tự nhi&ecirc;n mềm mại, tho&aacute;ng m&aacute;t, xốp nhẹ v&agrave; độ bền chắc, m&agrave;u sắc sắc n&eacute;t của sợi nh&acirc;n tạo.</p>\r\n<p>- Quần co gi&atilde;n thoải m&aacute;i nhờ sợi spandex.</p>\r\n<p><strong>M&Agrave;U SẮC: </strong>X&aacute;m, Xanh biển</p>\r\n<p><strong>SIZE:</strong> 29 &ndash; 30 &ndash; 31 &ndash; 32</p>', 'public/uploads/1602729987-1.jpg', 0, 495000, NULL, '1', '', 7, '2020-10-13 16:29:37', '2020-10-15 02:46:27', NULL),
(50, 'Quần thu đông nam QSP201', '-quan-thu-đong-nam-qsp201', 'Kiểu dáng: Regular Fit.\r\nQuần thu đông phom dáng Regular Fit suông nhẹ, thoải mái, giữ ấm cơ thể khi ở nhà hoặc tham gia các hoạt động thể thao.', '<p><strong>KIỂU D&Aacute;NG:</strong> Regular Fit</p>\r\n<p><strong>CHI TIẾT:</strong></p>\r\n<p>- Quần thu đ&ocirc;ng phom d&aacute;ng Regular Fit su&ocirc;ng nhẹ, thoải m&aacute;i, giữ ấm cơ thể khi ở nh&agrave; hoặc tham gia c&aacute;c hoạt động thể thao.</p>\r\n<p>- Thiết kế basic, t&uacute;i xẻ 2 b&ecirc;n, c&oacute; kho&aacute; v&agrave; may đậy nắp tinh tế.</p>\r\n<p>- Quần cạp chun v&agrave; c&oacute; d&acirc;y đai, dễ d&agrave;ng điều chỉnh theo số đo của từng kh&aacute;ch h&agrave;ng.</p>\r\n<p><strong>CHẤT LIỆU:</strong></p>\r\n<p>- Chất liệu CVC cao cấp l&agrave; sự kết hợp ưu điểm của sợi cotton tự nhi&ecirc;n v&agrave; sợi nh&acirc;n tạo tạo n&ecirc;n loại vải mềm mại, tho&aacute;ng m&aacute;t, xốp nhẹ, bền m&agrave;u, chịu được nhiệt độ cao.</p>\r\n<p>- Kết hợp sợi spandex gi&uacute;p quần c&oacute; độ co gi&atilde;n nhẹ.</p>\r\n<p><strong>M&Agrave;U SẮC:</strong> Đen, Xanh t&iacute;m than 12MF</p>\r\n<p><strong>SIZE:</strong>&nbsp;S &ndash; M &ndash; L &ndash; XL&nbsp;</p>', 'public/uploads/1602730004-3.jpg', 0, 525000, NULL, '1', '', 7, '2020-10-13 16:34:44', '2020-10-15 02:46:44', NULL),
(51, 'Quần thu đông nam QSP202', 'quan-thu-đong-nam-qsp202', 'Kiểu dáng: Slim Fit.\r\nQuần thu đông phom dáng slim fit ôm vừa vặn, tôn dáng người mặc.', '<p><strong>KIỂU D&Aacute;NG: </strong>Slim Fit<strong>.</strong></p>\r\n<p><strong>CHI TIẾT:</strong></p>\r\n<p>- Quần thu đ&ocirc;ng phom d&aacute;ng slim fit &ocirc;m vừa vặn, t&ocirc;n d&aacute;ng người mặc.</p>\r\n<p>- Thiết kế thể thao với ống su&ocirc;ng kết hợp đường may nổi ngang 2 b&ecirc;n ống quần c&aacute; t&iacute;nh. Quần c&oacute; t&uacute;i xẻ ch&eacute;o 2 b&ecirc;n v&agrave; t&uacute;i sau tiện lợi.</p>\r\n<p>- Quần dệt hiệu ứng melange, tạo ảo gi&aacute;c lạ mắt.</p>\r\n<p><strong>CHẤT LIỆU:</strong></p>\r\n<p>- Chất liệu cotton kết hợp polyester gi&uacute;p quần c&oacute; bề mặt mượt m&agrave;, khả năng h&uacute;t ẩm cao, thấm h&uacute;t tốt, tạo cảm gi&aacute;c tho&aacute;ng m&aacute;t, đồng thời bền chắc, chống nhăn hiệu quả.</p>\r\n<p>- Kết hợp Spandex gi&uacute;p quần c&oacute; độ co gi&atilde;n nhẹ, gi&uacute;p người mặc thoải m&aacute;i suốt ng&agrave;y d&agrave;i.</p>\r\n<p><strong>M&Agrave;U SẮC:&nbsp;</strong>X&aacute;m 36MF</p>\r\n<p><strong>SIZE:&nbsp;</strong>S &ndash; M &ndash; L &ndash; XL&nbsp;</p>', 'public/uploads/1602730021-1.jpg', 0, 495000, NULL, '1', '', 7, '2020-10-13 16:39:03', '2020-10-15 02:47:01', NULL),
(52, 'Quần thu đông nam QSP203', 'quan-thu-đong-nam-qsp203', 'Kiểu dáng: Regular Fit.\r\nQuần dài cạp chun bo gấu Regular fit thoải mái và điểm nhấn nằm ở hai đường nay rải chỉ dọc thân quần giúp đứng dáng quần.', '<p style=\"text-align: justify;\"><strong>KIỂU D&Aacute;NG:</strong> Regular fit</p>\r\n<p style=\"text-align: justify;\"><strong>CHI TIẾT:</strong></p>\r\n<p style=\"text-align: justify;\">- Quần d&agrave;i cạp chun bo gấu Regular fit thoải m&aacute;i v&agrave; điểm nhấn nằm ở hai đường nay rải chỉ dọc th&acirc;n quần gi&uacute;p đứng d&aacute;ng quần v&agrave; tạo sự khỏe khoắn cho thiết kế.</p>\r\n<p style=\"text-align: justify;\">- Kiểu dệt French terry với những v&ograve;ng sợi \"da c&aacute;\" tăng độ d&agrave;y dặn cho sản phẩm m&agrave; vẫn kh&ocirc;ng l&agrave;m mất đi sự mềm mại, đồng thời vẫn c&oacute; thể giữ ấm tốt.&nbsp;</p>\r\n<p style=\"text-align: justify;\"><strong>CHẤT LIỆU:</strong></p>\r\n<p style=\"text-align: justify;\">- Chất liệu CVC mềm mại, thấm h&uacute;t tốt m&agrave; vẫn giữ d&aacute;ng kết hợp với sợi Spandex mang tới khả năng co gi&atilde;n 4 chiều cho sản phẩm.</p>\r\n<p style=\"text-align: justify;\"><strong>M&Agrave;U SẮC:&nbsp;</strong>Xanh cổ vịt, Xanh t&iacute;m than</p>\r\n<p style=\"text-align: justify;\"><strong>SIZE:</strong>&nbsp;S - M - L - XL</p>', 'public/uploads/1602730041-4.jpg', 0, 525000, NULL, '1', '', 7, '2020-10-13 16:44:55', '2020-10-15 02:47:21', NULL),
(53, 'Quần jeans nam QJ200', 'quan-jeans-nam-qj200', 'Kiểu dáng: Slim Fit.\r\nQuần jeans phom Slim fit có độ ôm vừa vặn cơ thể mà vẫn đảm bảo sự nam tính.', '<p><strong>KIỂU D&Aacute;NG: </strong>Slim fit</p>\r\n<p><strong>CHI TIẾT:</strong></p>\r\n<p>- Quần jeans phom Slim fit c&oacute; độ &ocirc;m vừa vặn cơ thể m&agrave; vẫn đảm bảo sự nam t&iacute;nh.</p>\r\n<p>- Thiết kế cơ bản với t&uacute;i xẻ 2 b&ecirc;n k&egrave;m t&uacute;i nhỏ, t&uacute;i sau tiện lợi. Quần được m&agrave;i nhẹ ở đ&ugrave;i, m&agrave;i r&aacute;ch nhỏ ở ph&iacute;a tr&ecirc;n, đem đến sự thời thượng, ph&oacute;ng kho&aacute;ng.</p>\r\n<p><strong>CHẤT LIỆU:</strong></p>\r\n<p>- Th&agrave;nh phần ch&iacute;nh l&agrave; sợi Cotton đem đến độ tho&aacute;ng kh&iacute;, mềm mượt. Quần được pha th&ecirc;m Polyester gi&uacute;p quần c&oacute; độ trơn b&oacute;ng, m&agrave;u sắc n&eacute;t.</p>\r\n<p>- Ngo&agrave;i ra, 2% sợi Spandex gi&uacute;p quần c&oacute; độ co gi&atilde;n nhẹ, đảm bảo sự thoải m&aacute;i suốt cả ng&agrave;y d&agrave;i.</p>\r\n<p><strong>M&Agrave;U SẮC:&nbsp;</strong>Xanh ch&agrave;m đậm, xanh ch&agrave;m s&aacute;ng</p>\r\n<p><strong>SIZE:&nbsp;</strong> 29 &ndash; 30 &ndash; 31 &ndash; 32&nbsp;</p>', 'public/uploads/1602730059-1.jpg', 0, 750000, NULL, '1', '1', 8, '2020-10-14 01:46:45', '2020-10-15 02:47:40', NULL),
(54, 'Quần jeans nam QJ201', 'quan-jeans-nam-qj201', 'Kiểu dáng: Casual Fit.\r\nQuần Jean phom Casual Fit suông rộng, thoải mái mang đến cho người mặc vẻ ngoài phóng khoáng và thời thượng.', '<p><strong>KIỂU D&Aacute;NG: </strong>Casual Fit</p>\r\n<p><strong>CHI TIẾT:</strong></p>\r\n<p>- Quần Jean phom Casual Fit su&ocirc;ng rộng, thoải m&aacute;i mang đến cho người mặc vẻ ngo&agrave;i ph&oacute;ng kho&aacute;ng v&agrave; thời thượng.</p>\r\n<p>- Thiết kế trẻ trung nhờ phần m&agrave;i r&aacute;ch theo k&iacute;ch thước ngẫu nhi&ecirc;n ở phần đầu gối. Quần m&agrave;u trung t&iacute;nh v&agrave; được tạo điểm nhấn bởi những mảng m&agrave;u đậm nhạt thay đổi li&ecirc;n tục nhờ hiệu ứng wash thời trang.</p>\r\n<p><strong>CHẤT LIỆU:</strong></p>\r\n<p>- Quần chất liệu 100% Cotton c&oacute; độ đứng d&aacute;ng m&agrave; vẫn mềm mại, tho&aacute;t ẩm tốt, gi&uacute;p c&aacute;c người mặc lu&ocirc;n thoải m&aacute;i suốt cả ng&agrave;y d&agrave;i.</p>\r\n<p><strong>M&Agrave;U SẮC:</strong>&nbsp;Xanh ch&agrave;m đ&aacute; đậm, Xanh ch&agrave;m đ&aacute; nhạt</p>\r\n<p><strong>SIZE:&nbsp;</strong> 29 &ndash; 30 &ndash; 31 &ndash; 32&nbsp;</p>', 'public/uploads/1602730076-3.jpg', 0, 750000, NULL, '1', '', 8, '2020-10-14 02:03:22', '2020-10-15 02:47:56', NULL),
(55, 'Quần jeans nam QJ202', 'quan-jeans-nam-qj202', 'Kiểu dáng: Casual Fit.\r\nQuần Jean phom Casual Fit suông rộng, thoải mái mang đến cho người mặc vẻ ngoài phóng khoáng và thời thượng.', '<p><strong>KIỂU D&Aacute;NG: </strong>Casual Fit</p>\r\n<p><strong>CHI TIẾT:</strong></p>\r\n<p>- Quần Jean phom Casual Fit su&ocirc;ng rộng, thoải m&aacute;i mang đến cho người mặc vẻ ngo&agrave;i ph&oacute;ng kho&aacute;ng v&agrave; thời thượng.</p>\r\n<p>- Thiết kế trẻ trung nhờ phần m&agrave;i r&aacute;ch theo k&iacute;ch thước ngẫu nhi&ecirc;n ở phần đầu gối. Quần m&agrave;u trung t&iacute;nh v&agrave; được tạo điểm nhấn bởi những mảng m&agrave;u đậm nhạt thay đổi li&ecirc;n tục nhờ hiệu ứng wash thời trang.</p>\r\n<p><strong>CHẤT LIỆU:</strong></p>\r\n<p>- Quần chất liệu 100% Cotton c&oacute; độ đứng d&aacute;ng m&agrave; vẫn mềm mại, tho&aacute;t ẩm tốt, gi&uacute;p c&aacute;c người mặc lu&ocirc;n thoải m&aacute;i suốt cả ng&agrave;y d&agrave;i.</p>\r\n<p><strong>M&Agrave;U SẮC:</strong> Xanh ch&agrave;m đ&aacute; đậm, Xanh ch&agrave;m đậm</p>\r\n<p><strong>SIZE:&nbsp;</strong> 29 &ndash; 30 &ndash; 31 &ndash; 32</p>', 'public/uploads/1602730095-1.jpg', 0, 850000, NULL, '1', '1', 8, '2020-10-14 02:13:07', '2020-10-15 02:48:15', NULL),
(56, 'Quần jeans nam QJ203', 'quan-jeans-nam-qj203', 'Kiểu dáng: Regular Fit.\r\nQuần Jean phom Regular Fit có độ suông nhẹ, ống đứng, thích hợp với nhiều dáng người khác nhau. Đồng thời phần vòng bụng vẫn đảm bảo vừa vặn như may đo.', '<p><strong>KIỂU D&Aacute;NG: </strong>Regular Fit</p>\r\n<p><strong>CHI TIẾT:</strong></p>\r\n<p>- Quần Jean phom Regular Fit c&oacute; độ su&ocirc;ng nhẹ, ống đứng, th&iacute;ch hợp với nhiều d&aacute;ng người kh&aacute;c nhau. Đồng thời phần v&ograve;ng bụng vẫn đảm bảo vừa vặn như may đo.</p>\r\n<p>- Thiết kế cơ bản với t&uacute;i xẻ 2 b&ecirc;n, t&uacute;i lớn ph&iacute;a sau. Quần m&agrave;u trung t&iacute;nh với c&aacute;c sắc độ đậm nhạt kh&aacute;c nhau. Ngo&agrave;i ra, phần ống quần được m&agrave;i nhẹ tạo n&ecirc;n những mảng m&agrave;u trắng tạo n&ecirc;n điểm nhấn th&uacute; vị.</p>\r\n<p><strong>CHẤT LIỆU:</strong></p>\r\n<p>- Quần chất liệu 100% Cotton c&oacute; độ đứng d&aacute;ng m&agrave; vẫn mềm mại, tho&aacute;t ẩm tốt, gi&uacute;p c&aacute;c người mặc lu&ocirc;n thoải m&aacute;i suốt cả ng&agrave;y d&agrave;i.</p>\r\n<p><strong>M&Agrave;U SẮC:</strong>&nbsp;Xanh ch&agrave;m đ&aacute; đậm, Xanh ch&agrave;m đ&aacute; nhạt, Xanh ch&agrave;m đ&aacute; s&aacute;ng</p>\r\n<p><strong>SIZE:&nbsp;</strong>29 &ndash; 30 &ndash; 31 &ndash; 32</p>', 'public/uploads/1602730114-3.jpg', 0, 650000, NULL, '1', '', 8, '2020-10-14 02:17:30', '2020-10-15 02:48:34', NULL),
(57, 'Thắt lưng da nam PKB200', 'that-lung-da-nam-pkb200', 'Thắt lưng da màu nâu cao cấp thiết kế tối giản. Bề mặt vân da cá mập mạnh mẽ, nam tính. Mặt dưới da rugato bền đẹp, hạn chế trầy xước và thấm nước.', '<p><strong>CHI TIẾT:</strong></p>\r\n<p>- Thắt lưng da m&agrave;u n&acirc;u cao cấp thiết kế tối giản. Bề mặt v&acirc;n da c&aacute; mập mạnh mẽ, nam t&iacute;nh. Mặt dưới da rugato bền đẹp, hạn chế trầy xước v&agrave; thấm nước.</p>\r\n<p>- Bản d&acirc;y 32mm thanh mảnh dễ kết hợp với trang phục c&ocirc;ng sở.</p>\r\n<p>- Mặt th&eacute;p kh&ocirc;ng rỉ mạ v&agrave;ng 18k với logo đại b&agrave;ng sang trọng. Thiết kế tinh gọn l&agrave;m nổi bật hiệu ứng da đặc biệt. Mặt c&agrave;i đơn giản, chắc chắn v&agrave; dễ d&agrave;ng điều chỉnh linh hoạt với số đo v&ograve;ng bụng.</p>\r\n<p><strong>CHẤT LIỆU:</strong></p>\r\n<p>- Chất liệu da b&ograve; cao cấp được nhập khẩu v&agrave; xử l&yacute; tỉ mỉ, kh&ocirc;ng xảy ra hiện tượng nổ da. Bề mặt da c&oacute; độ b&oacute;ng tự nhi&ecirc;n, bền chắc v&agrave; mềm mại hơn sau thời gian d&agrave;i sử dụng.</p>\r\n<p><strong>SIZE:&nbsp;</strong>90/105, 95/110, 100/115, 105/120</p>', 'public/uploads/1602730132-1.jpg', 0, 1500000, NULL, '1', '1', 14, '2020-10-14 02:35:41', '2020-10-19 01:46:34', NULL),
(58, 'Thắt lưng da nam PKB201', 'that-lung-da-nam-pkb201', 'Thắt lưng da màu xanh navy thiết kế tối giản. Bề mặt dập vân da cá sấu đẳng cấp, mặt sau da rugato bền đẹp, hạn chế trầy xước và thấm nước.', '<p><strong>CHI TIẾT:</strong></p>\r\n<p>- Thắt lưng da m&agrave;u xanh navy thiết kế tối giản. Bề mặt dập v&acirc;n da c&aacute; sấu đẳng cấp, mặt sau da rugato bền đẹp, hạn chế trầy xước v&agrave; thấm nước.</p>\r\n<p>- Bản d&acirc;y 32mm thanh mảnh dễ kết hợp với trang phục c&ocirc;ng sở.</p>\r\n<p>- Mặt th&eacute;p kh&ocirc;ng rỉ mạ chrome trẻ trung với logo Aristino tinh tế. Mặt kim đơn giản, chắc chắn với kết cấu xoay đặc biệt c&oacute; thể chuyển đổi nhanh giữa hai mặt d&acirc;y gi&uacute;p phối đồ linh hoạt.</p>\r\n<p><strong>CHẤT LIỆU:</strong></p>\r\n<p>- Chất liệu da b&ograve; cao cấp được nhập khẩu v&agrave; xử l&yacute; tỉ mỉ, kh&ocirc;ng xảy ra hiện tượng nổ da. Bề mặt da c&oacute; độ b&oacute;ng tự nhi&ecirc;n, bền chắc v&agrave; mềm mại hơn sau thời gian d&agrave;i sử dụng.</p>\r\n<p><strong>SIZE:</strong> 90/105, 95/110, 100/115, 105/120</p>', 'public/uploads/1602730149-1.jpg', 0, 1800000, NULL, '1', '', 14, '2020-10-14 02:37:58', '2020-10-15 02:49:09', NULL),
(59, 'Thắt lưng da nam PKB202', 'that-lung-da-nam-pkb202', 'Thắt lưng da màu nâu thiết kế tối giản. Bề mặt dập vân da voi mạnh mẽ , mặt dưới da nubuck cao cấp mềm mịn.', '<p><strong>CHI TIẾT:</strong></p>\r\n<p>- Thắt lưng da m&agrave;u n&acirc;u thiết kế tối giản. Bề mặt dập v&acirc;n da voi mạnh mẽ , mặt dưới da nubuck cao cấp mềm mịn.</p>\r\n<p>- Bản d&acirc;y 32mm thanh mảnh dễ kết hợp với trang phục c&ocirc;ng sở.</p>\r\n<p>- Mặt th&eacute;p kh&ocirc;ng rỉ mạ v&agrave;ng 18K sang trọng với logo Aristino tinh tế. Mặt kim đơn giản v&agrave; chắc chắn.</p>\r\n<p><strong>CHẤT LIỆU:</strong></p>\r\n<p>- Chất liệu da b&ograve; cao cấp được nhập khẩu v&agrave; xử l&yacute; tỉ mỉ, kh&ocirc;ng xảy ra hiện tượng nổ da. Bề mặt da c&oacute; độ b&oacute;ng tự nhi&ecirc;n, bền chắc v&agrave; mềm mại hơn sau thời gian d&agrave;i sử dụng.</p>\r\n<p><strong>SIZE:</strong> 90/105, 95/110, 100/115, 105/120</p>', 'public/uploads/1602730167-1.jpg', 0, 1800000, NULL, '1', '1', 14, '2020-10-14 02:40:17', '2020-10-15 02:49:27', NULL),
(60, 'Thắt lưng da nam PKB203', '-that-lung-da-nam-pkb203', 'Thắt lưng da cao cấp với thiết kế tối giản tạo nên sự sang trọng, lịch lãm.', '<p style=\"text-align: justify;\"><strong>CHI TIẾT:</strong></p>\r\n<p>- Thắt lưng da cao cấp với thiết kế tối giản tạo n&ecirc;n sự sang trọng, lịch l&atilde;m.</p>\r\n<p>- Bản d&acirc;y rộng vừa phải, bề mặt da trơn kh&ocirc;ng họa tiết, đồng thời kh&ocirc;ng k&eacute;m phần đẳng cấp nhờ kết hợp mặt kim loại bạc khắc logo tinh tế, mặt trượt tự động tiện lợi.</p>\r\n<p style=\"text-align: justify;\"><strong>CHẤT LIỆU:</strong></p>\r\n<p style=\"text-align: justify;\">- Chất liệu da b&ograve; cao cấp được nhập khẩu v&agrave; xử l&yacute; tỉ mỉ, hạn chế hiện tượng nổ da. Bề mặt da c&oacute; độ b&oacute;ng tự nhi&ecirc;n, tho&aacute;ng kh&iacute;, bền chắc v&agrave; mềm mại hơn sau thời gian d&agrave;i sử dụng.</p>\r\n<p style=\"text-align: justify;\"><strong>M&Agrave;U SẮC:</strong>&nbsp;Đen</p>\r\n<p style=\"text-align: justify;\"><strong>SIZE:</strong> 90/105 - 95/110 - 100/115 - 105/120</p>', 'public/uploads/1602730184-4.jpg', 0, 1650000, NULL, '1', '', 14, '2020-10-14 02:47:58', '2020-10-15 02:49:44', NULL),
(62, 'Túi đeo chéo nam PKB200', 'tui-đeo-cheo-nam-pkb200', 'Túi đeo da thiết kế nam tính và hiện đại với hai màu cơ bản Đen, Nâu dễ phối hợp với trang phục.', '<p style=\"text-align: justify;\"><strong>CHI TIẾT:</strong></p>\r\n<p style=\"text-align: justify;\">- T&uacute;i đeo da thiết kế nam t&iacute;nh v&agrave; hiện đại với hai m&agrave;u cơ bản Đen, N&acirc;u dễ phối hợp với trang phục.</p>\r\n<p style=\"text-align: justify;\">- Thiết kế đa tiện &iacute;ch, nhiều ngăn gi&uacute;p tăng sức chứa m&agrave; vẫn nhỏ gọn v&agrave; thanh lịch. Chứa vừa v&iacute;, điện thoại, Ipad v&agrave; t&agrave;i liệu nhỏ. Quai đeo chắc chắn, dệt logo ch&igrave;m tinh tế, dễ d&agrave;ng nới chỉnh độ d&agrave;i.&nbsp;</p>\r\n<p style=\"text-align: justify;\"><strong>CHẤT LIỆU:</strong></p>\r\n<p style=\"text-align: justify;\">- Da sauvage dập v&acirc;n hạt mềm nam t&iacute;nh v&agrave; sang trọng.</p>\r\n<p style=\"text-align: justify;\">- Chất liệu cao cấp thuộc d&ograve;ng da sauvage từ phần da tốt nhất của động vật. Chất da tự nhi&ecirc;n kh&ocirc;ng nhuộm, c&oacute; độ xốp, tho&aacute;ng kh&iacute;, mềm mại v&agrave; đ&agrave;n hồi tốt, hạn chế tối đa hiện tượng đứt g&atilde;y hoặc nổ da.</p>\r\n<p style=\"text-align: justify;\"><strong>M&Agrave;U SẮC:</strong>&nbsp;Đen, N&acirc;u</p>\r\n<p style=\"text-align: justify;\"><strong>SIZE:</strong>&nbsp;250 x 275 x 60 mm</p>', 'public/uploads/1602730202-4.jpg', 0, 3950000, NULL, '1', '', 17, '2020-10-14 03:10:51', '2020-10-15 02:50:02', NULL),
(63, 'Cặp da nam PKB201', 'cap-da-nam-pkb201', 'Cặp tài liệu da cao cấp có thiết kế sang trọng và lịch lãm. Hai màu Đen, Nâu dễ kết hợp trang phục trong nhiều hoàn cảnh.', '<p style=\"text-align: justify;\"><strong>CHI TIẾT:</strong></p>\r\n<p style=\"text-align: justify;\">- Cặp t&agrave;i liệu da cao cấp c&oacute; thiết kế sang trọng v&agrave; lịch l&atilde;m. Hai m&agrave;u Đen, N&acirc;u dễ kết hợp trang phục trong nhiều ho&agrave;n cảnh.</p>\r\n<p style=\"text-align: justify;\">- Cặp c&oacute; quai da x&aacute;ch tay v&agrave; quai đeo vai tiện lợi. Thiết kế nhiều ngăn chứa với k&iacute;ch thước vừa vặn, c&oacute; thể chứa Macbook, sổ s&aacute;ch, t&agrave;i liệu m&agrave; vẫn gọn nhẹ v&agrave; thanh lịch.</p>\r\n<p style=\"text-align: justify;\"><strong>CHẤT LIỆU:</strong></p>\r\n<p style=\"text-align: justify;\">- Da sauvage dập v&acirc;n hạt mềm nam t&iacute;nh v&agrave; sang trọng.</p>\r\n<p style=\"text-align: justify;\">- Chất liệu cao cấp thuộc d&ograve;ng da sauvage từ phần da tốt nhất của động vật. Chất da tự nhi&ecirc;n kh&ocirc;ng nhuộm, c&oacute; độ xốp, tho&aacute;ng kh&iacute;, mềm mại v&agrave; đ&agrave;n hồi tốt, hạn chế tối đa hiện tượng đứt g&atilde;y hoặc nổ da.</p>\r\n<p style=\"text-align: justify;\"><strong>M&Agrave;U SẮC:</strong>&nbsp;Đen, N&acirc;u</p>\r\n<p style=\"text-align: justify;\"><strong>SIZE:</strong>&nbsp;380 x 290 x 90 mm</p>', 'public/uploads/1602730220-1.jpg', 0, 5950000, NULL, '1', '', 17, '2020-10-14 03:17:37', '2020-10-15 02:50:20', NULL),
(64, 'Cặp da nam PKB202', 'cap-da-nam-pkb202', 'Cặp da cao cấp được sản xuất tỉ mỉ đến từng chi tiết.\r\nThiết kế đề cao tính thanh lịch và sang trọng với khóa kim loại, đường bo viền vuông có vát nhẹ vừa mềm mại, vừa nam tính.', '<p style=\"text-align: justify;\"><strong>CHI TIẾT:&nbsp;</strong></p>\r\n<p style=\"text-align: justify;\">- Cặp da cao cấp được sản xuất tỉ mỉ đến từng chi tiết.</p>\r\n<p style=\"text-align: justify;\">- Thiết kế đề cao t&iacute;nh thanh lịch v&agrave; sang trọng với kh&oacute;a kim loại, đường bo viền vu&ocirc;ng c&oacute; v&aacute;t nhẹ vừa mềm mại, vừa nam t&iacute;nh.</p>\r\n<p style=\"text-align: justify;\">- Ph&acirc;n bố c&aacute;c ngăn chứa hợp l&yacute; gi&uacute;p tăng sức chứa nhưng vẫn đảm bảo tổng thể gọn nhẹ v&agrave; lịch l&atilde;m.</p>\r\n<p style=\"text-align: justify;\"><strong>CHẤT LIỆU:</strong></p>\r\n<p style=\"text-align: justify;\">- Chất liệu da b&ograve; 2 lớp cao cấp được nhập khẩu v&agrave; xử l&yacute; tỉ mỉ, hạn chế hiện tượng nổ da. Bề mặt da dập v&acirc;n họa tiết, c&oacute; độ b&oacute;ng tự nhi&ecirc;n, tho&aacute;ng kh&iacute;, bền chắc v&agrave; mềm mại hơn sau thời gian d&agrave;i sử dụng.</p>\r\n<p style=\"text-align: justify;\"><strong>M&Agrave;U SẮC:</strong>&nbsp;Đen, N&acirc;u</p>\r\n<p style=\"text-align: justify;\"><strong>K&Iacute;CH THƯỚC:&nbsp;</strong>38 x 28 x 6 cm&nbsp;</p>', 'public/uploads/1602730240-1.jpg', 0, 5900000, NULL, '1', '', 17, '2020-10-14 03:20:18', '2020-10-15 02:50:40', NULL),
(65, 'Cặp da nam PKB203', 'cap-da-nam-pkb203', 'Cặp tài liệu da cao cấp có thiết kế tiện lợi và sang trọng. Cặp có 2 ngăn chính với nhiều ngăn nhỏ đa năng, có thể chứa tất cả laptop nhỏ hơn 15.6\", sổ sách, tài liệu mà vẫn gọn nhẹ.', '<p><strong>KIỂU D&Aacute;NG:</strong>&nbsp;Thiết kế tiện lợi v&agrave; sang trọng</p>\r\n<p><strong>CHI TIẾT:</strong></p>\r\n<p>- Cặp t&agrave;i liệu da cao cấp c&oacute; thiết kế tiện lợi v&agrave; sang trọng. Cặp c&oacute; 2 ngăn ch&iacute;nh với nhiều ngăn nhỏ đa năng, c&oacute; thể chứa tất cả laptop nhỏ hơn 15.6\", sổ s&aacute;ch, t&agrave;i liệu m&agrave; vẫn gọn nhẹ. Quai da x&aacute;ch tay v&agrave; quai đeo bền bỉ đảm bảo sự chắc chắn trong qu&aacute; tr&igrave;nh di chuyển, ph&ugrave; hợp cho những chuyến c&ocirc;ng t&aacute;c d&agrave;i ng&agrave;y.</p>\r\n<p>- Da sauvage dập v&acirc;n hạt mềm t&iacute;nh tế kết hợp m&agrave;u sắc nam t&iacute;nh mang đến cho ph&aacute;i mạnh diện mạo lịch l&atilde;m.</p>\r\n<p><strong>CHẤT LIỆU:</strong></p>\r\n<p>- Chất liệu cao cấp thuộc d&ograve;ng da sauvage từ phần da tốt nhất của b&ograve;. Chất da tự nhi&ecirc;n kh&ocirc;ng nhuộm, c&oacute; độ xốp, tho&aacute;ng kh&iacute;, mềm mại, 100% kh&ocirc;ng nổ v&agrave; đ&agrave;n hồi tốt.</p>\r\n<p><strong>M&Agrave;U SẮC:</strong>&nbsp; N&acirc;u, Xanh t&iacute;m than</p>\r\n<p><strong>Size:</strong>&nbsp;400 x 300 x 100 mm</p>', 'public/uploads/1602730264-3.jpg', 0, 8500000, NULL, '1', '', 17, '2020-10-14 03:24:38', '2020-10-15 02:51:04', NULL),
(66, 'Giày da Radley Mocassin PKS200', 'giay-da-radley-mocassin-pks200', 'Kiểu dáng: Casual.\r\nGiày Radley Mocassin (Driver) thiết kế đơn giản, dễ dàng phối đồ. Thích hợp trong các chuyến du lịch hoặc đi hàng ngày.', '<p><strong>KIỂU D&Aacute;NG:&nbsp;</strong>Casual</p>\r\n<p>- Gi&agrave;y Radley Mocassin (Driver) thiết kế đơn giản, dễ d&agrave;ng phối đồ. Th&iacute;ch hợp trong c&aacute;c chuyến du lịch hoặc đi h&agrave;ng ng&agrave;y.</p>\r\n<p><strong>CHI TIẾT:</strong></p>\r\n<p>- Đường may tỉ mỉ, tinh tế. Phom d&aacute;ng &ocirc;m s&aacute;t, vừa vặn với ch&acirc;n người đi mang đến sự &ecirc;m &aacute;i, thoải m&aacute;i tuyệt đối. Đế gi&agrave;y phẳng c&oacute; đinh gi&uacute;p tăng độ ma s&aacute;t, đặc biệt phần đế cao su k&eacute;o d&agrave;i tới g&oacute;t gi&uacute;p an to&agrave;n hơn khi l&aacute;i xe. Hiệu ứng da b&ograve; dập v&acirc;n đ&agrave; điểu tự nhi&ecirc;n mang đến vẻ ngo&agrave;i sang trọng v&agrave; đẳng cấp.</p>\r\n<p><strong>CHẤT LIỆU:</strong></p>\r\n<p>- Mặt ngo&agrave;i l&agrave;m từ 100% da b&ograve; Full grain lấy từ v&ugrave;ng lưng (l&agrave; phần da tốt nhất). Da mềm đ&atilde; xử l&yacute; để hạn chế thấm nước, tăng độ bền v&agrave; dễ d&agrave;ng vệ sinh.</p>\r\n<p>- Mặt trong l&agrave;m từ da thật, c&oacute; thể &ldquo;thở&rdquo;, tạo cảm gi&aacute;c mềm mại, &ecirc;m ch&acirc;n, th&ocirc;ng tho&aacute;ng suốt cả ng&agrave;y d&agrave;i.</p>\r\n<p><strong>M&Agrave;U SẮC:&nbsp;</strong>Đen</p>\r\n<p><strong>Size:</strong>&nbsp;39 &ndash; 40 &ndash; 41 &ndash; 42</p>', 'public/uploads/1602730316-4.jpg', 0, 3600000, NULL, '1', '', 18, '2020-10-14 03:32:34', '2020-10-15 02:51:56', NULL),
(67, 'Giày da Bellamy Moccasin PKS201', 'giay-da-bellamy-moccasin-pks201', 'Kiểu dáng: Casual.\r\nGiày Bellamy Moccasin (Driver) thiết kế đơn giản, dễ dàng phối đồ đi hàng ngày hoặc đi chơi, đi du lịch. Ưu tiên tính mỏng nhẹ và tiện lợi.', '<p><strong>KIỂU D&Aacute;NG:&nbsp;</strong>Casual</p>\r\n<p>- Gi&agrave;y Bellamy Moccasin (Driver) thiết kế đơn giản, dễ d&agrave;ng phối đồ đi h&agrave;ng ng&agrave;y hoặc đi chơi, đi du lịch. Ưu ti&ecirc;n t&iacute;nh mỏng nhẹ v&agrave; tiện lợi.</p>\r\n<p><strong>CHI TIẾT:</strong></p>\r\n<p>- Gi&agrave;y được tạo n&ecirc;n từ một miếng da v&ograve;ng qua dưới đế, mềm v&agrave; &ocirc;m ch&acirc;n. Đế gi&agrave;y phẳng c&oacute; nhiều đinh gi&uacute;p tăng độ ma s&aacute;t, đặc biệt phần đinh sau g&oacute;t gi&uacute;p l&aacute;i xe an to&agrave;n hơn. Phom gi&agrave;y mới lạ mang đến n&eacute;t trẻ trung, năng động. Gi&agrave;y đặc biệt gọn nhẹ linh hoạt, c&oacute; thể cuộn gọn v&agrave; bỏ v&agrave;o vali trong những chuyến đi c&ocirc;ng t&aacute;c hay du lịch.</p>\r\n<p><strong>CHẤT LIỆU:</strong></p>\r\n<p>- Mặt ngo&agrave;i l&agrave;m từ 100% da b&ograve; Full grain lấy từ v&ugrave;ng lưng (l&agrave; phần da tốt nhất). Da mềm đ&atilde; xử l&yacute; để hạn chế thấm nước, tăng độ bền v&agrave; dễ d&agrave;ng vệ sinh.</p>\r\n<p>- Mặt trong l&agrave;m từ da thật, c&oacute; thể &ldquo;thở&rdquo;, tạo cảm gi&aacute;c mềm mại, &ecirc;m ch&acirc;n, th&ocirc;ng tho&aacute;ng suốt cả ng&agrave;y d&agrave;i.</p>\r\n<p>- Gi&agrave;y đế đinh rời n&ecirc;n ch&uacute; &yacute; hạn chế di v&agrave;o nước.</p>\r\n<p><strong>M&Agrave;U SẮC:</strong>&nbsp;Trắng</p>\r\n<p><strong>Size:</strong>&nbsp;39 &ndash; 40 &ndash; 41 &ndash; 42</p>', 'public/uploads/1602730333-4.jpg', 0, 3200000, NULL, '1', '', 18, '2020-10-14 03:35:31', '2020-10-15 02:52:13', NULL),
(68, 'Giày da Orborne Derby PKS202', 'giay-da-orborne-derby-pks202', 'Kiểu dáng: Derby.\r\nGiày Orborne Derby thiết kế đơn giản, tinh tế. Kết hợp cùng quần âu, quần khaki cho các sự kiện trang trọng hoặc đi làm hàng ngày.', '<p><strong>KIỂU D&Aacute;NG:&nbsp;</strong>Derby&nbsp;</p>\r\n<p>- Gi&agrave;y Orborne Derby thiết kế đơn giản, tinh tế. Kết hợp c&ugrave;ng quần &acirc;u, quần khaki cho c&aacute;c sự kiện trang trọng hoặc đi l&agrave;m h&agrave;ng ng&agrave;y.</p>\r\n<p><strong>CHI TIẾT:</strong></p>\r\n<p>- Thiết kế giấu đường may hiện đại, ho&agrave;n thiện phom d&aacute;ng để đảm bảo &ocirc;m kh&iacute;t vừa vặn với ch&acirc;n người đi. Phần cổ gi&agrave;y c&oacute; may đệm mềm, tr&aacute;nh l&agrave;m đau cổ ch&acirc;n. G&oacute;t gi&agrave;y cao mang đến vẻ hiện đại, t&ocirc;n d&aacute;ng người mang, phần g&oacute;t c&ograve;n được v&aacute;t cạnh tr&aacute;nh l&agrave;m xước chiếc c&ograve;n lại khi đi, đế tổng hợp &ecirc;m nhẹ, kh&ocirc;ng ngấm nước, hạn chế tiếng ồn khi đi lại.</p>\r\n<p>- Gi&agrave;y c&oacute; 2 m&agrave;u Đen v&agrave; N&acirc;u-Patina, đặc biệt Patina l&agrave; phương ph&aacute;p l&ecirc;n m&agrave;u thủ c&ocirc;ng bằng tay từ da mộc, cho hiệu ứng m&agrave;u ngẫu nhi&ecirc;n đặc biệt v&agrave; duy nhất.</p>\r\n<p><strong>CHẤT LIỆU:</strong></p>\r\n<p>- Mặt ngo&agrave;i l&agrave;m từ 100% da b&ograve; Full grain lấy từ v&ugrave;ng lưng (l&agrave; phần da tốt nhất). Da mềm mại đ&atilde; xử l&yacute; để hạn chế thấm nước, tăng độ bền v&agrave; dễ d&agrave;ng vệ sinh.</p>\r\n<p>- Mặt trong l&agrave;m từ da thật, c&oacute; thể &ldquo;thở&rdquo;, tạo cảm gi&aacute;c mềm mại, &ecirc;m ch&acirc;n, th&ocirc;ng tho&aacute;ng suốt cả ng&agrave;y d&agrave;i.</p>\r\n<p><strong>M&Agrave;U SẮC:&nbsp;</strong>N&acirc;u, Đen</p>\r\n<p><strong>Size:</strong>&nbsp;39 &ndash; 40 &ndash; 41 &ndash; 42</p>', 'public/uploads/1602730352-1.jpg', 0, 3500000, NULL, '1', '', 18, '2020-10-14 03:40:17', '2020-10-15 02:52:32', NULL),
(69, 'Giày da Magnus Loafer PKS203', 'giay-da-magnus-loafer-pks203', 'Kiểu dáng: Casual.\r\nGiày Magnus loafer thiết kế đơn giản, thanh lịch, có thể phối hợp nhiều loại trang phục khác nhau như quần âu, khaki, short, áo Polo, áo T-shirt… Phù hợp đi làm hàng ngày hoặc đi chơi, du lịch.', '<p><strong>KIỂU D&Aacute;NG:</strong>&nbsp;Smart casual</p>\r\n<p>- Gi&agrave;y Magnus loafer thiết kế đơn giản, thanh lịch, c&oacute; thể phối hợp nhiều loại trang phục kh&aacute;c nhau như quần &acirc;u, khaki, short, &aacute;o Polo, &aacute;o T-shirt&hellip; Ph&ugrave; hợp đi l&agrave;m h&agrave;ng ng&agrave;y hoặc đi chơi, du lịch.</p>\r\n<p><strong>CHI TIẾT:</strong></p>\r\n<p>- Đường may chắc chắn, tỉ mỉ đến từng chi tiết, đảm bảo sự vừa vặn tuyệt đối với ch&acirc;n người mang. Gi&agrave;y đế cao vừa gi&uacute;p t&ocirc;n d&aacute;ng, được tạo n&ecirc;n từ nhiều lớp gi&uacute;p chống thấm, kết hợp với chi tiết da trang tr&iacute; tinh tế, nổi bật, tạo n&eacute;t nam t&iacute;nh.</p>\r\n<p><strong>CHẤT LIỆU:</strong></p>\r\n<p>- Mặt ngo&agrave;i l&agrave;m từ 100% da b&ograve; Full grain lấy từ v&ugrave;ng lưng (l&agrave; phần da tốt nhất). Da mềm đ&atilde; xử l&yacute; để hạn chế thấm nước, tăng độ bền v&agrave; dễ d&agrave;ng vệ sinh.</p>\r\n<p>- Mặt trong l&agrave;m từ da thật, c&oacute; thể &ldquo;thở&rdquo;, tạo cảm gi&aacute;c mềm mại, &ecirc;m ch&acirc;n, th&ocirc;ng tho&aacute;ng suốt cả ng&agrave;y d&agrave;i.</p>\r\n<p><strong>M&Agrave;U SẮC:&nbsp;</strong>Đen</p>\r\n<p><strong>Size:</strong>&nbsp;39 &ndash; 40 &ndash; 41 &ndash; 42</p>', 'public/uploads/1602730369-1.jpg', 0, 3250000, NULL, '1', '', 18, '2020-10-14 03:44:52', '2020-10-15 02:52:49', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_attribute`
--

CREATE TABLE `product_attribute` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `color_id` bigint(20) UNSIGNED NOT NULL,
  `size_id` bigint(20) UNSIGNED NOT NULL,
  `amount` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_attribute`
--

INSERT INTO `product_attribute` (`id`, `product_id`, `color_id`, `size_id`, `amount`, `created_at`, `updated_at`) VALUES
(342, 27, 36, 12, 20, '2020-10-13 12:37:02', '2020-10-13 12:37:02'),
(343, 27, 36, 13, 30, '2020-10-13 12:37:02', '2020-10-13 12:37:02'),
(344, 28, 14, 12, 20, '2020-10-13 12:43:20', '2020-10-13 12:43:20'),
(345, 28, 14, 13, 30, '2020-10-13 12:43:20', '2020-10-13 12:43:20'),
(532, 2, 10, 2, 20, '2020-10-15 02:33:15', '2020-10-15 02:33:15'),
(533, 2, 10, 3, 20, '2020-10-15 02:33:15', '2020-10-15 02:33:15'),
(534, 2, 12, 1, 20, '2020-10-15 02:33:15', '2020-10-15 02:33:15'),
(535, 2, 12, 2, 20, '2020-10-15 02:33:15', '2020-10-15 02:33:15'),
(536, 3, 3, 2, 20, '2020-10-15 02:33:35', '2020-10-15 02:33:35'),
(537, 3, 3, 4, 20, '2020-10-15 02:33:35', '2020-10-15 02:33:35'),
(538, 3, 9, 1, 20, '2020-10-15 02:33:35', '2020-10-15 02:33:35'),
(539, 3, 9, 2, 20, '2020-10-15 02:33:35', '2020-10-15 02:33:35'),
(540, 3, 9, 3, 20, '2020-10-15 02:33:35', '2020-10-15 02:33:35'),
(541, 4, 4, 1, 20, '2020-10-15 02:33:49', '2020-10-15 02:33:49'),
(542, 4, 4, 2, 20, '2020-10-15 02:33:49', '2020-10-15 02:33:49'),
(543, 4, 4, 3, 20, '2020-10-15 02:33:49', '2020-10-15 02:33:49'),
(544, 4, 9, 2, 20, '2020-10-15 02:33:49', '2020-10-15 02:33:49'),
(545, 4, 9, 4, 20, '2020-10-15 02:33:49', '2020-10-15 02:33:49'),
(546, 5, 5, 1, 19, '2020-10-15 02:34:08', '2020-10-15 02:34:08'),
(547, 5, 5, 2, 20, '2020-10-15 02:34:08', '2020-10-15 02:34:08'),
(548, 5, 5, 3, 20, '2020-10-15 02:34:08', '2020-10-15 02:34:08'),
(549, 5, 2, 2, 16, '2020-10-15 02:34:08', '2020-10-17 09:18:10'),
(550, 5, 2, 3, 20, '2020-10-15 02:34:08', '2020-10-15 02:34:08'),
(551, 5, 2, 4, 21, '2020-10-15 02:34:08', '2020-10-15 02:34:08'),
(552, 6, 11, 1, 50, '2020-10-15 02:34:23', '2020-10-15 02:34:23'),
(553, 6, 11, 2, 50, '2020-10-15 02:34:23', '2020-10-15 02:34:23'),
(554, 6, 13, 1, 50, '2020-10-15 02:34:23', '2020-10-15 02:34:23'),
(555, 6, 13, 2, 50, '2020-10-15 02:34:23', '2020-10-15 02:34:23'),
(556, 6, 13, 3, 50, '2020-10-15 02:34:23', '2020-10-15 02:34:23'),
(557, 7, 14, 1, 50, '2020-10-15 02:34:41', '2020-10-15 02:34:41'),
(558, 7, 14, 2, 50, '2020-10-15 02:34:41', '2020-10-15 02:34:41'),
(559, 7, 14, 3, 50, '2020-10-15 02:34:41', '2020-10-15 02:34:41'),
(560, 7, 18, 3, 50, '2020-10-15 02:34:41', '2020-10-15 02:34:41'),
(561, 7, 18, 4, 50, '2020-10-15 02:34:41', '2020-10-15 02:34:41'),
(562, 8, 16, 1, 50, '2020-10-15 02:34:56', '2020-10-15 02:34:56'),
(563, 8, 16, 2, 50, '2020-10-15 02:34:56', '2020-10-15 02:34:56'),
(564, 8, 16, 3, 50, '2020-10-15 02:34:56', '2020-10-15 02:34:56'),
(565, 8, 17, 3, 50, '2020-10-15 02:34:56', '2020-10-15 02:34:56'),
(566, 8, 17, 4, 50, '2020-10-15 02:34:56', '2020-10-15 02:34:56'),
(567, 9, 19, 1, 50, '2020-10-15 02:35:15', '2020-10-15 02:35:15'),
(568, 9, 19, 2, 50, '2020-10-15 02:35:15', '2020-10-15 02:35:15'),
(569, 9, 19, 3, 50, '2020-10-15 02:35:15', '2020-10-15 02:35:15'),
(570, 9, 1, 2, 50, '2020-10-15 02:35:15', '2020-10-15 02:35:15'),
(571, 9, 1, 3, 50, '2020-10-15 02:35:15', '2020-10-15 02:35:15'),
(572, 9, 1, 4, 50, '2020-10-15 02:35:15', '2020-10-15 02:35:15'),
(573, 10, 21, 9, 50, '2020-10-15 02:35:33', '2020-10-15 02:35:33'),
(574, 10, 21, 8, 50, '2020-10-15 02:35:33', '2020-10-15 02:35:33'),
(575, 10, 22, 7, 50, '2020-10-15 02:35:33', '2020-10-15 02:35:33'),
(576, 10, 22, 9, 50, '2020-10-15 02:35:33', '2020-10-15 02:35:33'),
(577, 11, 24, 9, 30, '2020-10-15 02:35:59', '2020-10-15 02:35:59'),
(578, 11, 24, 7, 30, '2020-10-15 02:35:59', '2020-10-15 02:35:59'),
(579, 11, 25, 8, 30, '2020-10-15 02:35:59', '2020-10-15 02:35:59'),
(580, 11, 25, 10, 30, '2020-10-15 02:35:59', '2020-10-15 02:35:59'),
(581, 12, 29, 9, 30, '2020-10-15 02:36:18', '2020-10-15 02:36:18'),
(582, 12, 29, 8, 30, '2020-10-15 02:36:18', '2020-10-15 02:36:18'),
(583, 12, 28, 7, 30, '2020-10-15 02:36:18', '2020-10-15 02:36:18'),
(584, 12, 28, 10, 30, '2020-10-15 02:36:18', '2020-10-15 02:36:18'),
(585, 13, 26, 9, 30, '2020-10-15 02:36:39', '2020-10-15 02:36:39'),
(586, 13, 26, 8, 30, '2020-10-15 02:36:39', '2020-10-15 02:36:39'),
(587, 13, 27, 7, 30, '2020-10-15 02:36:39', '2020-10-15 02:36:39'),
(588, 13, 27, 8, 30, '2020-10-15 02:36:39', '2020-10-15 02:36:39'),
(589, 14, 30, 9, 30, '2020-10-15 02:36:58', '2020-10-15 02:36:58'),
(590, 14, 30, 8, 30, '2020-10-15 02:36:58', '2020-10-15 02:36:58'),
(591, 14, 23, 7, 20, '2020-10-15 02:36:58', '2020-10-15 02:36:58'),
(592, 14, 23, 10, 25, '2020-10-15 02:36:58', '2020-10-15 02:36:58'),
(593, 15, 5, 9, 25, '2020-10-15 02:37:15', '2020-10-15 02:37:15'),
(594, 15, 5, 8, 30, '2020-10-15 02:37:15', '2020-10-15 02:37:15'),
(595, 15, 30, 7, 25, '2020-10-15 02:37:15', '2020-10-15 02:37:15'),
(596, 15, 30, 8, 30, '2020-10-15 02:37:15', '2020-10-15 02:37:15'),
(597, 16, 26, 7, 25, '2020-10-15 02:37:35', '2020-10-15 02:37:35'),
(598, 16, 26, 9, 30, '2020-10-15 02:37:35', '2020-10-15 02:37:35'),
(599, 16, 14, 8, 25, '2020-10-15 02:37:35', '2020-10-15 02:37:35'),
(600, 16, 14, 10, 30, '2020-10-15 02:37:35', '2020-10-15 02:37:35'),
(601, 17, 30, 9, 25, '2020-10-15 02:37:51', '2020-10-15 02:37:51'),
(602, 17, 30, 8, 30, '2020-10-15 02:37:51', '2020-10-15 02:37:51'),
(603, 17, 26, 7, 25, '2020-10-15 02:37:51', '2020-10-15 02:37:51'),
(604, 17, 26, 10, 30, '2020-10-15 02:37:51', '2020-10-15 02:37:51'),
(605, 18, 11, 7, 30, '2020-10-15 02:38:08', '2020-10-15 02:38:08'),
(606, 18, 11, 8, 25, '2020-10-15 02:38:08', '2020-10-15 02:38:08'),
(607, 18, 23, 9, 30, '2020-10-15 02:38:08', '2020-10-15 02:38:08'),
(608, 18, 23, 10, 30, '2020-10-15 02:38:08', '2020-10-15 02:38:08'),
(609, 19, 23, 7, 30, '2020-10-15 02:38:26', '2020-10-15 02:38:26'),
(610, 19, 23, 8, 30, '2020-10-15 02:38:26', '2020-10-15 02:38:26'),
(611, 19, 14, 9, 25, '2020-10-15 02:38:26', '2020-10-15 02:38:26'),
(612, 19, 14, 10, 30, '2020-10-15 02:38:26', '2020-10-15 02:38:26'),
(613, 20, 5, 7, 25, '2020-10-15 02:38:44', '2020-10-15 02:38:44'),
(614, 20, 5, 8, 30, '2020-10-15 02:38:44', '2020-10-15 02:38:44'),
(615, 20, 31, 9, 30, '2020-10-15 02:38:44', '2020-10-15 02:38:44'),
(616, 20, 31, 10, 30, '2020-10-15 02:38:44', '2020-10-15 02:38:44'),
(617, 21, 32, 7, 25, '2020-10-15 02:39:03', '2020-10-15 02:39:03'),
(618, 21, 32, 8, 30, '2020-10-15 02:39:03', '2020-10-15 02:39:03'),
(619, 21, 23, 9, 25, '2020-10-15 02:39:03', '2020-10-15 02:39:03'),
(620, 21, 23, 10, 30, '2020-10-15 02:39:03', '2020-10-15 02:39:03'),
(621, 22, 33, 7, 25, '2020-10-15 02:39:20', '2020-10-15 02:39:20'),
(622, 22, 33, 8, 30, '2020-10-15 02:39:20', '2020-10-15 02:39:20'),
(623, 22, 34, 9, 25, '2020-10-15 02:39:20', '2020-10-15 02:39:20'),
(624, 22, 34, 10, 30, '2020-10-15 02:39:20', '2020-10-15 02:39:20'),
(625, 23, 30, 7, 25, '2020-10-15 02:39:35', '2020-10-15 02:39:35'),
(626, 23, 30, 8, 30, '2020-10-15 02:39:35', '2020-10-15 02:39:35'),
(627, 23, 21, 9, 20, '2020-10-15 02:39:35', '2020-10-15 02:39:35'),
(628, 23, 21, 10, 30, '2020-10-15 02:39:35', '2020-10-15 02:39:35'),
(629, 25, 30, 7, 20, '2020-10-15 02:39:54', '2020-10-15 02:39:54'),
(630, 25, 30, 8, 25, '2020-10-15 02:39:54', '2020-10-15 02:39:54'),
(631, 25, 5, 9, 30, '2020-10-15 02:39:54', '2020-10-15 02:39:54'),
(632, 25, 5, 10, 30, '2020-10-15 02:39:54', '2020-10-15 02:39:54'),
(633, 26, 26, 7, 25, '2020-10-15 02:40:10', '2020-10-15 02:40:10'),
(634, 26, 26, 8, 25, '2020-10-15 02:40:10', '2020-10-15 02:40:10'),
(635, 26, 11, 9, 25, '2020-10-15 02:40:10', '2020-10-15 02:40:10'),
(636, 26, 11, 10, 25, '2020-10-15 02:40:10', '2020-10-15 02:40:10'),
(637, 29, 5, 7, 20, '2020-10-15 02:40:27', '2020-10-15 02:40:27'),
(638, 29, 5, 8, 30, '2020-10-15 02:40:27', '2020-10-15 02:40:27'),
(639, 29, 32, 9, 25, '2020-10-15 02:40:27', '2020-10-15 02:40:27'),
(640, 29, 32, 10, 25, '2020-10-15 02:40:27', '2020-10-15 02:40:27'),
(641, 30, 14, 7, 25, '2020-10-15 02:40:45', '2020-10-15 02:40:45'),
(642, 30, 14, 8, 25, '2020-10-15 02:40:45', '2020-10-15 02:40:45'),
(643, 30, 5, 9, 30, '2020-10-15 02:40:45', '2020-10-15 02:40:45'),
(644, 30, 5, 10, 30, '2020-10-15 02:40:45', '2020-10-15 02:40:45'),
(645, 31, 5, 7, 25, '2020-10-15 02:41:02', '2020-10-15 02:41:02'),
(646, 31, 5, 8, 30, '2020-10-15 02:41:02', '2020-10-15 02:41:02'),
(647, 31, 14, 9, 25, '2020-10-15 02:41:02', '2020-10-15 02:41:02'),
(648, 31, 14, 10, 25, '2020-10-15 02:41:02', '2020-10-15 02:41:02'),
(649, 32, 23, 7, 25, '2020-10-15 02:41:19', '2020-10-15 02:41:19'),
(650, 32, 23, 8, 25, '2020-10-15 02:41:19', '2020-10-15 02:41:19'),
(651, 32, 25, 9, 25, '2020-10-15 02:41:19', '2020-10-15 02:41:19'),
(652, 32, 25, 10, 25, '2020-10-15 02:41:19', '2020-10-15 02:41:19'),
(653, 33, 39, 7, 25, '2020-10-15 02:41:37', '2020-10-15 02:41:37'),
(654, 33, 39, 9, 25, '2020-10-15 02:41:37', '2020-10-15 02:41:37'),
(655, 33, 30, 8, 22, '2020-10-15 02:41:37', '2020-10-19 03:44:22'),
(656, 33, 30, 10, 25, '2020-10-15 02:41:37', '2020-10-15 02:41:37'),
(657, 34, 34, 7, 25, '2020-10-15 02:41:52', '2020-10-15 02:41:52'),
(658, 34, 34, 8, 25, '2020-10-15 02:41:52', '2020-10-15 02:41:52'),
(659, 34, 26, 9, 25, '2020-10-15 02:41:52', '2020-10-15 02:41:52'),
(660, 34, 26, 10, 25, '2020-10-15 02:41:52', '2020-10-15 02:41:52'),
(661, 35, 32, 7, 25, '2020-10-15 02:42:10', '2020-10-15 02:42:10'),
(662, 35, 32, 8, 25, '2020-10-15 02:42:10', '2020-10-15 02:42:10'),
(663, 35, 36, 9, 25, '2020-10-15 02:42:10', '2020-10-15 02:42:10'),
(664, 35, 36, 10, 25, '2020-10-15 02:42:10', '2020-10-15 02:42:10'),
(665, 36, 14, 7, 25, '2020-10-15 02:42:28', '2020-10-15 02:42:28'),
(666, 36, 14, 9, 25, '2020-10-15 02:42:28', '2020-10-15 02:42:28'),
(667, 36, 23, 8, 25, '2020-10-15 02:42:28', '2020-10-15 02:42:28'),
(668, 36, 23, 10, 25, '2020-10-15 02:42:28', '2020-10-15 02:42:28'),
(669, 37, 5, 1, 25, '2020-10-15 02:42:46', '2020-10-15 02:42:46'),
(670, 37, 5, 2, 25, '2020-10-15 02:42:46', '2020-10-15 02:42:46'),
(671, 37, 14, 3, 25, '2020-10-15 02:42:46', '2020-10-15 02:42:46'),
(672, 37, 14, 4, 25, '2020-10-15 02:42:46', '2020-10-15 02:42:46'),
(673, 38, 5, 15, 25, '2020-10-15 02:43:04', '2020-10-15 02:43:04'),
(674, 38, 5, 16, 25, '2020-10-15 02:43:04', '2020-10-15 02:43:04'),
(675, 38, 14, 17, 30, '2020-10-15 02:43:04', '2020-10-15 02:43:04'),
(676, 38, 14, 18, 30, '2020-10-15 02:43:04', '2020-10-15 02:43:04'),
(677, 39, 23, 15, 25, '2020-10-15 02:43:21', '2020-10-15 02:43:21'),
(678, 39, 23, 16, 25, '2020-10-15 02:43:21', '2020-10-15 02:43:21'),
(679, 39, 14, 17, 25, '2020-10-15 02:43:21', '2020-10-15 02:43:21'),
(680, 39, 14, 18, 25, '2020-10-15 02:43:21', '2020-10-15 02:43:21'),
(681, 40, 5, 15, 25, '2020-10-15 02:43:38', '2020-10-15 02:43:38'),
(682, 40, 5, 16, 30, '2020-10-15 02:43:38', '2020-10-15 02:43:38'),
(683, 40, 30, 17, 25, '2020-10-15 02:43:38', '2020-10-15 02:43:38'),
(684, 40, 30, 18, 25, '2020-10-15 02:43:38', '2020-10-15 02:43:38'),
(685, 41, 39, 15, 25, '2020-10-15 02:43:53', '2020-10-15 02:43:53'),
(686, 41, 39, 16, 25, '2020-10-15 02:43:53', '2020-10-15 02:43:53'),
(687, 41, 5, 17, 25, '2020-10-15 02:43:53', '2020-10-15 02:43:53'),
(688, 41, 5, 18, 25, '2020-10-15 02:43:53', '2020-10-15 02:43:53'),
(689, 42, 14, 15, 25, '2020-10-15 02:44:10', '2020-10-15 02:44:10'),
(690, 42, 14, 16, 25, '2020-10-15 02:44:10', '2020-10-15 02:44:10'),
(691, 42, 30, 17, 25, '2020-10-15 02:44:10', '2020-10-15 02:44:10'),
(692, 42, 30, 18, 25, '2020-10-15 02:44:10', '2020-10-15 02:44:10'),
(693, 43, 39, 15, 25, '2020-10-15 02:44:26', '2020-10-15 02:44:26'),
(694, 43, 39, 16, 25, '2020-10-15 02:44:26', '2020-10-15 02:44:26'),
(695, 43, 5, 16, 25, '2020-10-15 02:44:26', '2020-10-15 02:44:26'),
(696, 43, 5, 18, 25, '2020-10-15 02:44:26', '2020-10-15 02:44:26'),
(697, 44, 5, 15, 25, '2020-10-15 02:44:44', '2020-10-15 02:44:44'),
(698, 44, 5, 16, 25, '2020-10-15 02:44:44', '2020-10-15 02:44:44'),
(699, 44, 14, 17, 25, '2020-10-15 02:44:44', '2020-10-15 02:44:44'),
(700, 44, 14, 18, 25, '2020-10-15 02:44:44', '2020-10-15 02:44:44'),
(701, 45, 39, 15, 25, '2020-10-15 02:45:01', '2020-10-15 02:45:01'),
(702, 45, 39, 16, 25, '2020-10-15 02:45:01', '2020-10-15 02:45:01'),
(703, 45, 30, 17, 25, '2020-10-15 02:45:01', '2020-10-15 02:45:01'),
(704, 45, 30, 18, 25, '2020-10-15 02:45:01', '2020-10-15 02:45:01'),
(705, 46, 39, 15, 25, '2020-10-15 02:45:18', '2020-10-15 02:45:18'),
(706, 46, 39, 16, 25, '2020-10-15 02:45:18', '2020-10-15 02:45:18'),
(707, 46, 5, 17, 25, '2020-10-15 02:45:18', '2020-10-15 02:45:18'),
(708, 46, 5, 18, 25, '2020-10-15 02:45:18', '2020-10-15 02:45:18'),
(709, 47, 39, 15, 25, '2020-10-15 02:45:42', '2020-10-15 02:45:42'),
(710, 47, 39, 16, 25, '2020-10-15 02:45:42', '2020-10-15 02:45:42'),
(711, 47, 30, 17, 22, '2020-10-15 02:45:42', '2020-10-17 09:23:58'),
(712, 47, 30, 18, 25, '2020-10-15 02:45:42', '2020-10-15 02:45:42'),
(713, 48, 14, 15, 25, '2020-10-15 02:45:59', '2020-10-15 02:45:59'),
(714, 48, 14, 16, 25, '2020-10-15 02:45:59', '2020-10-15 02:45:59'),
(715, 48, 30, 17, 25, '2020-10-15 02:45:59', '2020-10-15 02:45:59'),
(716, 48, 30, 18, 25, '2020-10-15 02:45:59', '2020-10-15 02:45:59'),
(717, 49, 5, 15, 25, '2020-10-15 02:46:27', '2020-10-15 02:46:27'),
(718, 49, 5, 16, 25, '2020-10-15 02:46:27', '2020-10-15 02:46:27'),
(719, 49, 23, 17, 25, '2020-10-15 02:46:27', '2020-10-15 02:46:27'),
(720, 49, 23, 18, 25, '2020-10-15 02:46:27', '2020-10-15 02:46:27'),
(721, 50, 14, 15, 25, '2020-10-15 02:46:44', '2020-10-15 02:46:44'),
(722, 50, 14, 16, 25, '2020-10-15 02:46:44', '2020-10-15 02:46:44'),
(723, 50, 30, 17, 25, '2020-10-15 02:46:44', '2020-10-15 02:46:44'),
(724, 50, 30, 18, 25, '2020-10-15 02:46:44', '2020-10-15 02:46:44'),
(725, 51, 30, 9, 25, '2020-10-15 02:47:01', '2020-10-15 02:47:01'),
(726, 51, 30, 8, 25, '2020-10-15 02:47:01', '2020-10-15 02:47:01'),
(727, 51, 5, 7, 25, '2020-10-15 02:47:01', '2020-10-15 02:47:01'),
(728, 51, 5, 10, 25, '2020-10-15 02:47:01', '2020-10-15 02:47:01'),
(729, 52, 30, 8, 25, '2020-10-15 02:47:21', '2020-10-15 02:47:21'),
(730, 52, 30, 7, 25, '2020-10-15 02:47:21', '2020-10-15 02:47:21'),
(731, 52, 10, 9, 25, '2020-10-15 02:47:21', '2020-10-15 02:47:21'),
(732, 52, 10, 10, 25, '2020-10-15 02:47:21', '2020-10-15 02:47:21'),
(733, 53, 41, 15, 25, '2020-10-15 02:47:40', '2020-10-15 02:47:40'),
(734, 53, 41, 16, 25, '2020-10-15 02:47:40', '2020-10-15 02:47:40'),
(735, 53, 40, 17, 24, '2020-10-15 02:47:40', '2020-10-19 08:44:04'),
(736, 53, 40, 18, 25, '2020-10-15 02:47:40', '2020-10-15 02:47:40'),
(737, 54, 40, 15, 25, '2020-10-15 02:47:56', '2020-10-15 02:47:56'),
(738, 54, 40, 16, 25, '2020-10-15 02:47:56', '2020-10-15 02:47:56'),
(739, 54, 43, 17, 25, '2020-10-15 02:47:56', '2020-10-15 02:47:56'),
(740, 54, 43, 18, 25, '2020-10-15 02:47:56', '2020-10-15 02:47:56'),
(741, 55, 44, 15, 25, '2020-10-15 02:48:15', '2020-10-15 02:48:15'),
(742, 55, 44, 16, 25, '2020-10-15 02:48:15', '2020-10-15 02:48:15'),
(743, 55, 41, 17, 24, '2020-10-15 02:48:15', '2020-10-19 02:54:39'),
(744, 55, 41, 18, 25, '2020-10-15 02:48:15', '2020-10-15 02:48:15'),
(745, 56, 40, 15, 25, '2020-10-15 02:48:34', '2020-10-15 02:48:34'),
(746, 56, 40, 16, 25, '2020-10-15 02:48:34', '2020-10-15 02:48:34'),
(747, 56, 42, 17, 25, '2020-10-15 02:48:34', '2020-10-15 02:48:34'),
(748, 56, 42, 18, 25, '2020-10-15 02:48:34', '2020-10-15 02:48:34'),
(753, 58, 37, 12, 25, '2020-10-15 02:49:09', '2020-10-15 02:49:09'),
(754, 58, 37, 13, 25, '2020-10-15 02:49:09', '2020-10-15 02:49:09'),
(755, 58, 37, 20, 25, '2020-10-15 02:49:09', '2020-10-15 02:49:09'),
(756, 58, 37, 19, 25, '2020-10-15 02:49:09', '2020-10-15 02:49:09'),
(757, 59, 36, 12, 25, '2020-10-15 02:49:27', '2020-10-15 02:49:27'),
(758, 59, 36, 13, 25, '2020-10-15 02:49:27', '2020-10-15 02:49:27'),
(759, 59, 36, 20, 24, '2020-10-15 02:49:27', '2020-10-19 03:03:05'),
(760, 59, 36, 19, 25, '2020-10-15 02:49:27', '2020-10-15 02:49:27'),
(761, 60, 14, 12, 25, '2020-10-15 02:49:44', '2020-10-15 02:49:44'),
(762, 60, 14, 13, 25, '2020-10-15 02:49:44', '2020-10-15 02:49:44'),
(763, 60, 14, 20, 25, '2020-10-15 02:49:44', '2020-10-15 02:49:44'),
(764, 60, 14, 19, 25, '2020-10-15 02:49:44', '2020-10-15 02:49:44'),
(765, 62, 14, 21, 50, '2020-10-15 02:50:02', '2020-10-15 02:50:02'),
(766, 62, 36, 21, 50, '2020-10-15 02:50:02', '2020-10-15 02:50:02'),
(767, 63, 14, 22, 50, '2020-10-15 02:50:20', '2020-10-15 02:50:20'),
(768, 63, 36, 22, 50, '2020-10-15 02:50:20', '2020-10-15 02:50:20'),
(769, 64, 36, 23, 50, '2020-10-15 02:50:40', '2020-10-15 02:50:40'),
(770, 64, 14, 23, 50, '2020-10-15 02:50:40', '2020-10-15 02:50:40'),
(771, 65, 30, 23, 50, '2020-10-15 02:51:04', '2020-10-15 02:51:04'),
(772, 65, 36, 23, 50, '2020-10-15 02:51:04', '2020-10-15 02:51:04'),
(773, 66, 14, 2, 25, '2020-10-15 02:51:56', '2020-10-15 02:51:56'),
(774, 66, 14, 3, 25, '2020-10-15 02:51:56', '2020-10-15 02:51:56'),
(775, 66, 14, 4, 25, '2020-10-15 02:51:56', '2020-10-15 02:51:56'),
(776, 66, 14, 5, 25, '2020-10-15 02:51:56', '2020-10-15 02:51:56'),
(777, 67, 32, 2, 25, '2020-10-15 02:52:13', '2020-10-15 02:52:13'),
(778, 67, 32, 3, 25, '2020-10-15 02:52:13', '2020-10-15 02:52:13'),
(779, 67, 32, 4, 25, '2020-10-15 02:52:13', '2020-10-15 02:52:13'),
(780, 67, 32, 5, 25, '2020-10-15 02:52:13', '2020-10-15 02:52:13'),
(781, 68, 36, 2, 25, '2020-10-15 02:52:32', '2020-10-15 02:52:32'),
(782, 68, 36, 3, 25, '2020-10-15 02:52:32', '2020-10-15 02:52:32'),
(783, 68, 14, 4, 25, '2020-10-15 02:52:32', '2020-10-15 02:52:32'),
(784, 68, 14, 5, 25, '2020-10-15 02:52:32', '2020-10-15 02:52:32'),
(785, 69, 14, 2, 25, '2020-10-15 02:52:49', '2020-10-15 02:52:49'),
(786, 69, 14, 3, 25, '2020-10-15 02:52:49', '2020-10-15 02:52:49'),
(787, 69, 14, 4, 25, '2020-10-15 02:52:49', '2020-10-15 02:52:49'),
(788, 69, 14, 5, 25, '2020-10-15 02:52:49', '2020-10-15 02:52:49'),
(789, 24, 34, 7, 25, '2020-10-15 02:57:47', '2020-10-15 02:57:47'),
(790, 24, 34, 8, 30, '2020-10-15 02:57:47', '2020-10-15 02:57:47'),
(791, 24, 35, 9, 25, '2020-10-15 02:57:47', '2020-10-15 02:57:47'),
(792, 24, 35, 10, 30, '2020-10-15 02:57:47', '2020-10-15 02:57:47'),
(793, 1, 6, 1, 20, '2020-10-16 10:01:37', '2020-10-16 10:01:37'),
(794, 1, 6, 2, 20, '2020-10-16 10:01:38', '2020-10-16 10:01:38'),
(795, 1, 7, 3, 20, '2020-10-16 10:01:38', '2020-10-16 10:01:38'),
(796, 1, 7, 4, 20, '2020-10-16 10:01:38', '2020-10-16 10:01:38'),
(797, 57, 36, 12, 25, '2020-10-19 01:46:34', '2020-10-19 01:46:34'),
(798, 57, 36, 13, 25, '2020-10-19 01:46:34', '2020-10-19 01:46:34'),
(799, 57, 36, 20, 23, '2020-10-19 01:46:34', '2020-10-19 01:46:34'),
(800, 57, 36, 19, 25, '2020-10-19 01:46:34', '2020-10-19 01:46:34');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent_id` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_categories`
--

INSERT INTO `product_categories` (`id`, `title`, `slug`, `link`, `thumbnail`, `created_at`, `updated_at`, `parent_id`) VALUES
(1, 'Quần', 'quan', 'http://cuong9x.xyz/quan.html', 'public/uploads/1602517780-banner-so-mi-white-lotus-350x493-01.jpg', '2020-10-12 15:49:40', '2020-10-12 15:53:22', 0),
(2, 'Áo', 'ao', 'http://cuong9x.xyz/ao.html', 'public/uploads/1602517821-banner-so-mi-white-lotus350X490-01.jpg', '2020-10-12 15:50:21', '2020-10-12 15:50:21', 0),
(3, 'Phụ kiện', 'phu-kien', 'http://cuong9x.xyz/phu-kien.html', 'public/uploads/1602517871-ezgif.com-gif-maker.png', '2020-10-12 15:51:11', '2020-10-12 15:51:11', 0),
(4, 'Quần âu', 'quan-au', 'http://cuong9x.xyz/quan-au.html', '', '2020-10-12 15:52:26', '2020-10-12 15:52:35', 1),
(5, 'Quần kaki', 'quan-kaki', 'http://cuong9x.xyz/quan-kaki.html', '', '2020-10-12 15:53:08', '2020-10-12 15:53:08', 1),
(6, 'Quần short', 'quan-short', 'http://cuong9x.xyz/quan-short.html', '', '2020-10-12 15:53:59', '2020-10-12 15:53:59', 1),
(7, 'Quần thể thao', 'quan-the-thao', 'http://cuong9x.xyz/quan-the-thao.html', '', '2020-10-12 15:55:22', '2020-10-12 15:55:22', 1),
(8, 'Quần jeans', 'quan-jeans-', 'http://cuong9x.xyz/quan-jeans.html', '', '2020-10-12 15:59:19', '2020-10-12 15:59:19', 1),
(9, 'Áo sơ mi', 'ao-so-mi', 'http://cuong9x.xyz/ao-so-mi.html', '', '2020-10-12 16:00:24', '2020-10-12 16:00:24', 2),
(10, 'Áo polo', 'ao-polo', 'http://cuong9x.xyz/ao-polo.html', '', '2020-10-12 16:02:42', '2020-10-12 16:02:42', 2),
(11, 'Áo thun ngắn tay', 'ao-thun-ngan-tay', 'http://cuong9x.xyz/ao-thun-ngan-tay.html', '', '2020-10-12 16:05:50', '2020-10-12 16:05:50', 2),
(12, 'Áo thun dài tay', 'ao-thun-dai-tay', NULL, '', '2020-10-12 16:56:32', '2020-10-12 16:56:32', 2),
(13, 'Áo len', 'ao-len', NULL, '', '2020-10-12 16:57:04', '2020-10-12 16:57:04', 2),
(14, 'Thắt lưng', 'that-lung', NULL, '', '2020-10-12 16:58:20', '2020-10-12 16:58:20', 3),
(17, 'Cặp da', 'cap-da', NULL, '', '2020-10-12 16:59:36', '2020-10-12 16:59:36', 3),
(18, 'Giày da', 'giay-da', NULL, '', '2020-10-12 17:00:14', '2020-10-12 17:00:14', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `key_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`, `key_code`, `description`) VALUES
(1, 'Danh sách danh mục sản phẩm', '2020-09-24 02:43:45', '2020-09-24 02:43:45', 'danh-sach-danh-muc-san-pham', NULL),
(2, 'Thêm mới danh mục sản phẩm', '2020-09-24 02:44:14', '2020-09-24 02:44:14', 'them-moi-danh-muc-san-pham', NULL),
(3, 'Sửa danh mục sản phẩm', '2020-09-24 02:44:27', '2020-09-24 02:44:27', 'sua-danh-muc-san-pham', NULL),
(4, 'Xóa danh mục sản phẩm', '2020-09-24 02:44:41', '2020-09-24 02:44:41', 'xoa-danh-muc-san-pham', NULL),
(5, 'Danh sách sản phẩm', '2020-09-24 02:45:09', '2020-09-24 02:45:09', 'danh-sach-san-pham', NULL),
(6, 'Thêm sản phẩm', '2020-09-24 02:45:24', '2020-09-24 02:45:24', 'them-san-pham', NULL),
(7, 'Sửa sản phẩm', '2020-09-24 02:45:37', '2020-09-24 02:45:37', 'sua-san-pham', NULL),
(8, 'Xóa sản phẩm', '2020-09-24 02:45:46', '2020-09-24 02:45:46', 'xoa-san-pham', NULL),
(9, 'Danh sách màu sản phẩm', '2020-09-24 02:46:08', '2020-09-24 02:46:08', 'danh-sach-mau-san-pham', NULL),
(10, 'Thêm màu sản phẩm', '2020-09-24 02:46:27', '2020-09-24 02:46:27', 'them-mau-san-pham', NULL),
(11, 'Sửa màu sản phẩm', '2020-09-24 02:46:45', '2020-09-24 02:46:45', 'sua-mau-san-pham', NULL),
(12, 'Xóa màu sản phẩm', '2020-09-24 02:46:58', '2020-09-24 02:46:58', 'xoa-mau-san-pham', NULL),
(13, 'Danh sách size sản phẩm', '2020-09-24 02:47:28', '2020-09-24 02:47:28', 'danh-sach-size-san-pham', NULL),
(14, 'Thêm size sản phẩm', '2020-09-24 02:47:39', '2020-09-24 02:47:39', 'them-size-san-pham', NULL),
(15, 'Sửa size sản phẩm', '2020-09-24 02:47:50', '2020-09-24 02:47:50', 'sua-size-san-pham', NULL),
(16, 'Xóa size sản phẩm', '2020-09-24 02:48:02', '2020-09-24 02:48:02', 'xoa-size-san-pham', NULL),
(17, 'Danh sách user', '2020-09-24 02:48:23', '2020-09-24 02:48:23', 'danh-sach-user', NULL),
(18, 'Thêm user', '2020-09-24 02:48:34', '2020-09-24 02:48:34', 'them-user', NULL),
(19, 'Sửa user', '2020-09-24 02:48:44', '2020-09-24 02:48:44', 'sua-user', NULL),
(20, 'Xóa user', '2020-09-24 02:48:54', '2020-09-24 02:48:54', 'xoa-user', NULL),
(21, 'Danh sách quyền', '2020-09-24 02:49:27', '2020-09-24 02:49:27', 'danh-sach-quyen', NULL),
(22, 'Thêm mới quyền', '2020-09-24 02:49:39', '2020-09-24 02:49:39', 'them-moi-quyen', NULL),
(23, 'Sửa quyền', '2020-09-24 02:49:49', '2020-09-24 02:49:49', 'sua-quyen', NULL),
(24, 'Xóa quyền', '2020-09-24 02:50:03', '2020-09-24 02:50:03', 'xoa-quyen', NULL),
(25, 'Danh sách slider', '2020-09-26 04:08:46', '2020-09-26 04:08:46', 'danh-sach-slider', NULL),
(26, 'Thêm slider', '2020-09-26 04:08:56', '2020-09-26 04:08:56', 'them-slider', NULL),
(27, 'Sửa slider', '2020-09-26 04:09:08', '2020-09-26 04:09:08', 'sua-slider', NULL),
(28, 'Xóa slider', '2020-09-26 04:09:18', '2020-09-26 04:09:18', 'xoa-slider', NULL),
(29, 'Danh sách menu', '2020-09-26 04:09:31', '2020-09-26 04:09:31', 'danh-sach-menu', NULL),
(30, 'Thêm menu', '2020-09-26 04:09:40', '2020-09-26 04:09:40', 'them-menu', NULL),
(31, 'Sửa menu', '2020-09-26 04:09:53', '2020-09-26 04:09:53', 'sua-menu', NULL),
(32, 'Xóa menu', '2020-09-26 04:10:02', '2020-09-26 04:10:02', 'xoa-menu', NULL),
(33, 'Danh sách đơn hàng', '2020-09-26 04:10:16', '2020-09-26 04:10:16', 'danh-sach-don-hang', NULL),
(34, 'Sửa đơn hàng', '2020-09-26 04:10:26', '2020-09-26 04:10:26', 'sua-don-hang', NULL),
(35, 'Xóa đơn hàng', '2020-09-26 04:10:40', '2020-09-26 04:10:40', 'xoa-don-hang', NULL),
(36, 'Thống kê hàng tồn', '2020-09-26 04:11:00', '2020-09-26 04:11:00', 'thong-ke-hang-ton', NULL),
(37, 'Thống kê doanh thu', '2020-09-26 04:11:11', '2020-09-26 04:11:11', 'thong-ke-doanh-thu', NULL),
(38, 'Thêm mới sản phẩm', '2020-09-26 04:15:11', '2020-09-26 04:15:11', 'them-moi-san-pham', NULL),
(39, 'Danh sách danh mục bài viết', '2020-09-26 04:15:59', '2020-09-26 04:15:59', 'danh-sach-danh-muc-bai-viet', NULL),
(40, 'Thêm mới danh mục bài viết', '2020-09-26 04:16:12', '2020-09-26 04:16:12', 'them-moi-danh-muc-bai-viet', NULL),
(41, 'Sửa danh mục bài viết', '2020-09-26 04:16:24', '2020-09-26 04:16:24', 'sua-danh-muc-bai-viet', NULL),
(42, 'Xóa danh mục bài viết', '2020-09-26 04:16:34', '2020-09-26 04:16:34', 'xoa-danh-muc-bai-viet', NULL),
(43, 'Danh sách bài viết', '2020-09-26 04:16:48', '2020-09-26 04:16:48', 'danh-sach-bai-viet', NULL),
(44, 'Thêm bài viết', '2020-09-26 04:16:58', '2020-09-26 04:16:58', 'them-bai-viet', NULL),
(45, 'Sửa bài viết', '2020-09-26 04:17:09', '2020-09-26 04:17:09', 'sua-bai-viet', NULL),
(46, 'Xóa bài viết', '2020-09-26 04:17:18', '2020-09-26 04:17:18', 'xoa-bai-viet', NULL),
(47, 'Danh sách trang', '2020-09-26 04:17:35', '2020-09-26 04:17:35', 'danh-sach-trang', NULL),
(48, 'Thêm trang', '2020-09-26 04:17:45', '2020-09-26 04:17:45', 'them-trang', NULL),
(49, 'Sửa trang', '2020-09-26 04:17:57', '2020-09-26 04:17:57', 'sua-trang', NULL),
(50, 'Xóa trang', '2020-09-26 04:18:07', '2020-09-26 04:18:07', 'xoa-trang', NULL),
(51, 'Dashboard', '2020-09-26 04:18:18', '2020-09-26 04:18:18', 'dashboard', NULL),
(52, 'Admin', '2020-09-26 16:05:35', '2020-10-06 03:42:20', 'admin', NULL),
(53, 'Danh sách khách hàng', '2020-10-12 10:53:07', '2020-10-12 10:53:07', 'danh-sach-khach-hang', NULL),
(54, 'Danh sách phản hồi', '2020-10-12 10:53:47', '2020-10-12 10:53:47', 'dach-sach-phan-hoi', NULL),
(55, 'Sửa phản hồi', '2020-10-12 10:54:10', '2020-10-12 10:54:10', 'sua-phan-hoi', NULL),
(56, 'Xóa phản hồi', '2020-10-12 10:54:22', '2020-10-12 10:54:22', 'xoa-phan-hoi', NULL),
(57, 'Action feeback', '2020-10-12 11:01:38', '2020-10-12 11:01:38', 'action-feeback', NULL),
(58, 'Action màu sản phẩm', '2020-10-13 02:17:37', '2020-10-13 02:17:37', 'action-mau-san-pham', NULL),
(59, 'Action-user', '2020-10-14 02:25:03', '2020-10-14 02:25:03', 'action-user', NULL),
(61, 'Action đơn hàng', '2020-10-14 02:26:12', '2020-10-14 02:26:12', 'action-don-hang', NULL),
(62, 'Action sản phẩm', '2020-10-14 02:26:28', '2020-10-14 02:26:28', 'action-san-pham', NULL),
(63, 'Action bài viết', '2020-10-14 02:27:00', '2020-10-14 02:27:00', 'action-bai-viet', NULL),
(64, 'Action trang', '2020-10-14 02:27:14', '2020-10-14 02:27:14', 'action-trang', NULL),
(65, 'Action size', '2020-10-14 02:27:33', '2020-10-14 02:27:33', 'action-size', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sizes`
--

CREATE TABLE `sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL,
  `creator` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sizes`
--

INSERT INTO `sizes` (`id`, `name`, `status`, `creator`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '38', '1', 'Cuong dep trai', '2020-10-13 02:29:01', '2020-10-13 02:29:01', NULL),
(2, '39', '1', 'Cuong dep trai', '2020-10-13 02:29:10', '2020-10-13 02:29:10', NULL),
(3, '40', '1', 'Cuong dep trai', '2020-10-13 02:29:19', '2020-10-13 02:29:19', NULL),
(4, '41', '1', 'Cuong dep trai', '2020-10-13 02:29:27', '2020-10-13 02:29:27', NULL),
(5, '42', '1', 'Cuong dep trai', '2020-10-13 02:29:36', '2020-10-13 02:29:36', NULL),
(6, '43', '1', 'Cuong dep trai', '2020-10-13 02:29:44', '2020-10-13 02:29:44', NULL),
(7, 'S', '1', 'Cuong dep trai', '2020-10-13 07:22:19', '2020-10-13 07:22:19', NULL),
(8, 'M', '1', 'Cuong dep trai', '2020-10-13 07:22:32', '2020-10-13 07:22:32', NULL),
(9, 'L', '1', 'Cuong dep trai', '2020-10-13 07:22:46', '2020-10-13 07:22:46', NULL),
(10, 'XL', '1', 'Cuong dep trai', '2020-10-13 07:22:58', '2020-10-13 07:22:58', NULL),
(11, 'XXL', '1', 'Cuong dep trai', '2020-10-13 07:23:11', '2020-10-13 07:23:11', NULL),
(12, '90/105', '1', 'Nhất đẹp trai', '2020-10-13 12:32:30', '2020-10-13 12:32:30', NULL),
(13, '95/100', '1', 'Nhất đẹp trai', '2020-10-13 12:32:49', '2020-10-13 12:32:49', NULL),
(14, '28', '1', 'Cuong dep trai', '2020-10-13 15:17:41', '2020-10-13 15:17:41', NULL),
(15, '29', '1', 'Cuong dep trai', '2020-10-13 15:17:53', '2020-10-13 15:17:53', NULL),
(16, '30', '1', 'Cuong dep trai', '2020-10-13 15:18:07', '2020-10-13 15:18:07', NULL),
(17, '31', '1', 'Cuong dep trai', '2020-10-13 15:18:19', '2020-10-13 15:18:19', NULL),
(18, '32', '1', 'Cuong dep trai', '2020-10-13 15:18:30', '2020-10-13 15:18:30', NULL),
(19, '105/120', '1', 'Cuong dep trai', '2020-10-14 02:31:49', '2020-10-14 02:31:49', NULL),
(20, '100/115', '1', 'Cuong dep trai', '2020-10-14 02:32:06', '2020-10-14 02:32:06', NULL),
(21, '250x275x60', '1', 'Cuong dep trai', '2020-10-14 03:01:35', '2020-10-14 03:01:35', NULL),
(22, '380x290x90', '1', 'Cuong dep trai', '2020-10-14 03:02:08', '2020-10-14 03:02:08', NULL),
(23, '400x300x100', '1', 'Cuong dep trai', '2020-10-14 03:02:30', '2020-10-14 03:02:30', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slider_sort` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `link`, `thumbnail`, `slider_sort`, `created_at`, `updated_at`) VALUES
(1, 'Slider 1', 'http://cuong9x.xyz/', 'public/uploads/1602517455_ezgif.com-gif-maker (1).jpg', 1, '2020-10-12 12:25:05', '2020-10-12 15:44:15'),
(2, 'Slider 2', 'http://cuong9x.xyz/', 'public/uploads/1602517465_BannerWebsite-white-lotus-03.jpg', 2, '2020-10-12 12:25:30', '2020-10-12 15:44:25');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `status`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Cuong dep trai', 'thocuong97@gmail.com', NULL, '$2y$10$ZB2uzizTyaXOo.ENRKh5Cu.fChBFRDMcmFJpZZpRCO8S61cVcH1em', '0', 'W6kfVUvkN5pMU0mUvPfHLtTtt3JKtZ0ypFqKPX0ydwASIh5EVrWdM2SRkowT', '2020-10-12 10:39:02', '2020-10-14 02:27:44', NULL),
(2, 'Nhất đẹp trai', 'nhat@gmail.com', NULL, '$2y$10$BbQK4OAUMa8xHPsk9BpSruF636.1Y6j2uPHkOK8a5NAK5M1H7eJo6', '0', NULL, '2020-10-13 12:05:39', '2020-10-13 12:05:39', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_role`
--

CREATE TABLE `user_role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user_role`
--

INSERT INTO `user_role` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(135, 2, 43, '2020-09-26 16:08:32', '2020-09-26 16:08:32'),
(136, 2, 9, '2020-09-26 16:08:32', '2020-09-26 16:08:32'),
(137, 2, 17, '2020-09-26 16:08:32', '2020-09-26 16:08:32'),
(309, 2, 57, '2020-10-13 12:05:39', '2020-10-13 12:05:39'),
(310, 2, 58, '2020-10-13 12:05:39', '2020-10-13 12:05:39'),
(311, 2, 52, '2020-10-13 12:05:39', '2020-10-13 12:05:39'),
(312, 2, 43, '2020-10-13 12:05:39', '2020-10-13 12:05:39'),
(313, 2, 39, '2020-10-13 12:05:39', '2020-10-13 12:05:39'),
(314, 2, 1, '2020-10-13 12:05:39', '2020-10-13 12:05:39'),
(315, 2, 33, '2020-10-13 12:05:39', '2020-10-13 12:05:39'),
(316, 2, 53, '2020-10-13 12:05:39', '2020-10-13 12:05:39'),
(317, 2, 9, '2020-10-13 12:05:39', '2020-10-13 12:05:39'),
(318, 2, 29, '2020-10-13 12:05:39', '2020-10-13 12:05:39'),
(319, 2, 54, '2020-10-13 12:05:39', '2020-10-13 12:05:39'),
(320, 2, 21, '2020-10-13 12:05:39', '2020-10-13 12:05:39'),
(321, 2, 5, '2020-10-13 12:05:39', '2020-10-13 12:05:39'),
(322, 2, 13, '2020-10-13 12:05:39', '2020-10-13 12:05:39'),
(323, 2, 25, '2020-10-13 12:05:39', '2020-10-13 12:05:39'),
(324, 2, 47, '2020-10-13 12:05:39', '2020-10-13 12:05:39'),
(325, 2, 17, '2020-10-13 12:05:39', '2020-10-13 12:05:39'),
(326, 2, 51, '2020-10-13 12:05:39', '2020-10-13 12:05:39'),
(327, 2, 45, '2020-10-13 12:05:39', '2020-10-13 12:05:39'),
(328, 2, 41, '2020-10-13 12:05:39', '2020-10-13 12:05:39'),
(329, 2, 3, '2020-10-13 12:05:39', '2020-10-13 12:05:39'),
(330, 2, 34, '2020-10-13 12:05:39', '2020-10-13 12:05:39'),
(331, 2, 11, '2020-10-13 12:05:39', '2020-10-13 12:05:39'),
(332, 2, 31, '2020-10-13 12:05:39', '2020-10-13 12:05:39'),
(333, 2, 55, '2020-10-13 12:05:39', '2020-10-13 12:05:39'),
(334, 2, 23, '2020-10-13 12:05:39', '2020-10-13 12:05:39'),
(335, 2, 7, '2020-10-13 12:05:39', '2020-10-13 12:05:39'),
(336, 2, 15, '2020-10-13 12:05:39', '2020-10-13 12:05:39'),
(337, 2, 27, '2020-10-13 12:05:39', '2020-10-13 12:05:39'),
(338, 2, 49, '2020-10-13 12:05:39', '2020-10-13 12:05:39'),
(339, 2, 19, '2020-10-13 12:05:39', '2020-10-13 12:05:39'),
(340, 2, 44, '2020-10-13 12:05:39', '2020-10-13 12:05:39'),
(341, 2, 10, '2020-10-13 12:05:39', '2020-10-13 12:05:39'),
(342, 2, 30, '2020-10-13 12:05:39', '2020-10-13 12:05:39'),
(343, 2, 40, '2020-10-13 12:05:39', '2020-10-13 12:05:39'),
(344, 2, 2, '2020-10-13 12:05:39', '2020-10-13 12:05:39'),
(345, 2, 22, '2020-10-13 12:05:39', '2020-10-13 12:05:39'),
(346, 2, 38, '2020-10-13 12:05:39', '2020-10-13 12:05:39'),
(347, 2, 6, '2020-10-13 12:05:39', '2020-10-13 12:05:39'),
(348, 2, 14, '2020-10-13 12:05:39', '2020-10-13 12:05:39'),
(349, 2, 26, '2020-10-13 12:05:39', '2020-10-13 12:05:39'),
(350, 2, 48, '2020-10-13 12:05:39', '2020-10-13 12:05:39'),
(351, 2, 18, '2020-10-13 12:05:39', '2020-10-13 12:05:39'),
(352, 2, 37, '2020-10-13 12:05:39', '2020-10-13 12:05:39'),
(353, 2, 36, '2020-10-13 12:05:39', '2020-10-13 12:05:39'),
(354, 2, 46, '2020-10-13 12:05:39', '2020-10-13 12:05:39'),
(355, 2, 42, '2020-10-13 12:05:39', '2020-10-13 12:05:39'),
(356, 2, 4, '2020-10-13 12:05:39', '2020-10-13 12:05:39'),
(357, 2, 35, '2020-10-13 12:05:39', '2020-10-13 12:05:39'),
(358, 2, 12, '2020-10-13 12:05:39', '2020-10-13 12:05:39'),
(359, 2, 32, '2020-10-13 12:05:39', '2020-10-13 12:05:39'),
(360, 2, 56, '2020-10-13 12:05:39', '2020-10-13 12:05:39'),
(361, 2, 24, '2020-10-13 12:05:39', '2020-10-13 12:05:39'),
(362, 2, 8, '2020-10-13 12:05:39', '2020-10-13 12:05:39'),
(363, 2, 16, '2020-10-13 12:05:39', '2020-10-13 12:05:39'),
(364, 2, 28, '2020-10-13 12:05:39', '2020-10-13 12:05:39'),
(365, 2, 50, '2020-10-13 12:05:39', '2020-10-13 12:05:39'),
(366, 2, 20, '2020-10-13 12:05:39', '2020-10-13 12:05:39'),
(367, 1, 63, '2020-10-14 02:27:44', '2020-10-14 02:27:44'),
(368, 1, 61, '2020-10-14 02:27:44', '2020-10-14 02:27:44'),
(369, 1, 57, '2020-10-14 02:27:44', '2020-10-14 02:27:44'),
(370, 1, 58, '2020-10-14 02:27:44', '2020-10-14 02:27:44'),
(371, 1, 62, '2020-10-14 02:27:44', '2020-10-14 02:27:44'),
(372, 1, 65, '2020-10-14 02:27:44', '2020-10-14 02:27:44'),
(373, 1, 64, '2020-10-14 02:27:44', '2020-10-14 02:27:44'),
(374, 1, 59, '2020-10-14 02:27:44', '2020-10-14 02:27:44'),
(375, 1, 52, '2020-10-14 02:27:44', '2020-10-14 02:27:44'),
(376, 1, 43, '2020-10-14 02:27:44', '2020-10-14 02:27:44'),
(377, 1, 39, '2020-10-14 02:27:44', '2020-10-14 02:27:44'),
(378, 1, 1, '2020-10-14 02:27:44', '2020-10-14 02:27:44'),
(379, 1, 33, '2020-10-14 02:27:44', '2020-10-14 02:27:44'),
(380, 1, 53, '2020-10-14 02:27:44', '2020-10-14 02:27:44'),
(381, 1, 9, '2020-10-14 02:27:44', '2020-10-14 02:27:44'),
(382, 1, 29, '2020-10-14 02:27:44', '2020-10-14 02:27:44'),
(383, 1, 54, '2020-10-14 02:27:44', '2020-10-14 02:27:44'),
(384, 1, 21, '2020-10-14 02:27:44', '2020-10-14 02:27:44'),
(385, 1, 5, '2020-10-14 02:27:44', '2020-10-14 02:27:44'),
(386, 1, 13, '2020-10-14 02:27:44', '2020-10-14 02:27:44'),
(387, 1, 25, '2020-10-14 02:27:44', '2020-10-14 02:27:44'),
(388, 1, 47, '2020-10-14 02:27:44', '2020-10-14 02:27:44'),
(389, 1, 17, '2020-10-14 02:27:44', '2020-10-14 02:27:44'),
(390, 1, 51, '2020-10-14 02:27:44', '2020-10-14 02:27:44'),
(391, 1, 45, '2020-10-14 02:27:44', '2020-10-14 02:27:44'),
(392, 1, 41, '2020-10-14 02:27:44', '2020-10-14 02:27:44'),
(393, 1, 3, '2020-10-14 02:27:44', '2020-10-14 02:27:44'),
(394, 1, 34, '2020-10-14 02:27:44', '2020-10-14 02:27:44'),
(395, 1, 11, '2020-10-14 02:27:44', '2020-10-14 02:27:44'),
(396, 1, 31, '2020-10-14 02:27:44', '2020-10-14 02:27:44'),
(397, 1, 55, '2020-10-14 02:27:44', '2020-10-14 02:27:44'),
(398, 1, 23, '2020-10-14 02:27:44', '2020-10-14 02:27:44'),
(399, 1, 7, '2020-10-14 02:27:44', '2020-10-14 02:27:44'),
(400, 1, 15, '2020-10-14 02:27:44', '2020-10-14 02:27:44'),
(401, 1, 27, '2020-10-14 02:27:44', '2020-10-14 02:27:44'),
(402, 1, 49, '2020-10-14 02:27:44', '2020-10-14 02:27:44'),
(403, 1, 19, '2020-10-14 02:27:44', '2020-10-14 02:27:44'),
(404, 1, 44, '2020-10-14 02:27:44', '2020-10-14 02:27:44'),
(405, 1, 10, '2020-10-14 02:27:44', '2020-10-14 02:27:44'),
(406, 1, 30, '2020-10-14 02:27:44', '2020-10-14 02:27:44'),
(407, 1, 40, '2020-10-14 02:27:44', '2020-10-14 02:27:44'),
(408, 1, 2, '2020-10-14 02:27:44', '2020-10-14 02:27:44'),
(409, 1, 22, '2020-10-14 02:27:44', '2020-10-14 02:27:44'),
(410, 1, 38, '2020-10-14 02:27:44', '2020-10-14 02:27:44'),
(411, 1, 6, '2020-10-14 02:27:44', '2020-10-14 02:27:44'),
(412, 1, 14, '2020-10-14 02:27:44', '2020-10-14 02:27:44'),
(413, 1, 26, '2020-10-14 02:27:44', '2020-10-14 02:27:44'),
(414, 1, 48, '2020-10-14 02:27:44', '2020-10-14 02:27:44'),
(415, 1, 18, '2020-10-14 02:27:44', '2020-10-14 02:27:44'),
(416, 1, 37, '2020-10-14 02:27:44', '2020-10-14 02:27:44'),
(417, 1, 36, '2020-10-14 02:27:44', '2020-10-14 02:27:44'),
(418, 1, 46, '2020-10-14 02:27:44', '2020-10-14 02:27:44'),
(419, 1, 42, '2020-10-14 02:27:44', '2020-10-14 02:27:44'),
(420, 1, 4, '2020-10-14 02:27:44', '2020-10-14 02:27:44'),
(421, 1, 35, '2020-10-14 02:27:44', '2020-10-14 02:27:44'),
(422, 1, 12, '2020-10-14 02:27:44', '2020-10-14 02:27:44'),
(423, 1, 32, '2020-10-14 02:27:44', '2020-10-14 02:27:44'),
(424, 1, 56, '2020-10-14 02:27:44', '2020-10-14 02:27:44'),
(425, 1, 24, '2020-10-14 02:27:44', '2020-10-14 02:27:44'),
(426, 1, 8, '2020-10-14 02:27:44', '2020-10-14 02:27:44'),
(427, 1, 16, '2020-10-14 02:27:44', '2020-10-14 02:27:44'),
(428, 1, 28, '2020-10-14 02:27:44', '2020-10-14 02:27:44'),
(429, 1, 50, '2020-10-14 02:27:44', '2020-10-14 02:27:44'),
(430, 1, 20, '2020-10-14 02:27:44', '2020-10-14 02:27:44');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category_posts`
--
ALTER TABLE `category_posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_posts_title_unique` (`title`);

--
-- Chỉ mục cho bảng `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `colors_title_unique` (`title`);

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_name_unique` (`name`),
  ADD UNIQUE KEY `customers_email_unique` (`email`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `feature_images`
--
ALTER TABLE `feature_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feature_images_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_title_unique` (`title`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_customer_id_foreign` (`customer_id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_order_id_foreign` (`order_id`),
  ADD KEY `order_details_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_title_unique` (`title`),
  ADD KEY `pages_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_title_unique` (`title`),
  ADD KEY `posts_user_id_foreign` (`user_id`),
  ADD KEY `posts_category_id_foreign` (`category_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_title_unique` (`title`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Chỉ mục cho bảng `product_attribute`
--
ALTER TABLE `product_attribute`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Chỉ mục cho bảng `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_role_user_id_foreign` (`user_id`),
  ADD KEY `user_role_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `category_posts`
--
ALTER TABLE `category_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `feature_images`
--
ALTER TABLE `feature_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT cho bảng `product_attribute`
--
ALTER TABLE `product_attribute`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=801;

--
-- AUTO_INCREMENT cho bảng `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT cho bảng `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=431;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `feature_images`
--
ALTER TABLE `feature_images`
  ADD CONSTRAINT `feature_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `pages`
--
ALTER TABLE `pages`
  ADD CONSTRAINT `pages_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `category_posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `product_categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
