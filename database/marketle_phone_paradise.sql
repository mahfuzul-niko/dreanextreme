-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 05, 2024 at 01:53 PM
-- Server version: 10.11.9-MariaDB-cll-lve
-- PHP Version: 8.3.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `marketle_phone_paradise`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `about_us_text` longtext DEFAULT NULL,
  `mission` longtext DEFAULT NULL,
  `vission` longtext DEFAULT NULL,
  `custom_block_title` varchar(255) DEFAULT NULL,
  `custom_block_details` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`id`, `image`, `about_us_text`, `mission`, `vission`, `custom_block_title`, `custom_block_details`, `created_at`, `updated_at`) VALUES
(1, '17307881261007805374.png', NULL, NULL, NULL, 'Delivery Terms ﹠ Condition', NULL, '2023-01-06 05:05:38', '2024-11-05 06:28:46');

-- --------------------------------------------------------

--
-- Table structure for table `areas`
--

CREATE TABLE `areas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `district_id` int(11) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `areas`
--

INSERT INTO `areas` (`id`, `name`, `district_id`, `is_active`, `created_at`, `updated_at`) VALUES
(555, 'Dhaka north', 65, 1, '2024-01-14 10:49:32', '2024-01-14 10:49:32'),
(556, 'Dhaka south', 65, 1, '2024-01-14 10:49:44', '2024-01-14 10:49:57');

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `image`, `description`, `author`, `date`, `created_at`, `updated_at`) VALUES
(5, 'Test Blog', '1730791573.jpg', NULL, NULL, NULL, '2024-11-05 07:26:13', '2024-11-05 07:26:13');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `position` int(11) DEFAULT 1,
  `image` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_image` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `is_featured` int(11) NOT NULL DEFAULT 0,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `title`, `position`, `image`, `description`, `meta_title`, `meta_image`, `meta_description`, `is_featured`, `is_active`, `created_at`, `updated_at`) VALUES
(10, 'Apple', 1, '1709023769.png', NULL, NULL, NULL, NULL, 1, 1, '2024-02-27 08:49:29', '2024-02-27 08:49:29'),
(11, 'Xiaomi', 2, '1709119075.png', NULL, NULL, NULL, NULL, 1, 1, '2024-02-28 22:17:55', '2024-02-28 22:17:55'),
(12, 'Samsung', 3, '1709120666.png', NULL, NULL, NULL, NULL, 1, 1, '2024-02-28 22:44:26', '2024-02-28 22:44:26'),
(13, 'Google', 4, '1709121768.png', NULL, NULL, NULL, NULL, 1, 1, '2024-02-28 23:02:48', '2024-02-28 23:02:48'),
(14, 'Realme', 5, '1709196963.png', NULL, NULL, NULL, NULL, 1, 1, '2024-02-29 19:56:03', '2024-02-29 19:56:03'),
(15, 'Vivo', 6, '1709356965.png', NULL, NULL, NULL, NULL, 1, 1, '2024-03-02 16:22:45', '2024-03-02 16:22:45'),
(16, 'Oppo', 7, '1709370325.png', NULL, NULL, NULL, NULL, 1, 1, '2024-03-02 20:05:25', '2024-03-02 20:05:25'),
(17, 'Huwei', 8, '1709371138.png', NULL, NULL, NULL, NULL, 1, 1, '2024-03-02 20:18:58', '2024-03-02 20:35:37'),
(18, 'OnePlus', 9, '1709372087.png', NULL, NULL, NULL, NULL, 1, 1, '2024-03-02 20:34:47', '2024-03-02 20:35:50');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `variations` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `is_menu_active` int(11) DEFAULT 0,
  `menu_position` int(11) DEFAULT 0,
  `position` int(11) NOT NULL DEFAULT 1,
  `image` varchar(255) DEFAULT NULL,
  `banner` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_image` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `is_featured` int(11) NOT NULL DEFAULT 0,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `parent_id`, `is_menu_active`, `menu_position`, `position`, `image`, `banner`, `description`, `meta_title`, `meta_image`, `meta_description`, `is_featured`, `is_active`, `created_at`, `updated_at`) VALUES
(21, 'Phones & Tablets', 0, 1, 1, 1, '1708862180.webp', NULL, NULL, NULL, NULL, NULL, 1, 1, '2024-02-22 10:30:50', '2024-02-25 11:56:20'),
(22, 'Laptop & Desktop', 0, 1, 2, 2, '1708597904.png', NULL, NULL, NULL, NULL, NULL, 0, 1, '2024-02-22 10:31:45', '2024-02-25 11:57:14'),
(23, 'Sound Equipment', 0, 1, 3, 3, '1708597929.png', NULL, NULL, NULL, NULL, NULL, 0, 1, '2024-02-22 10:32:10', '2024-02-25 11:57:30'),
(24, 'Power & Accessories', 0, 1, 4, 4, '1708597950.png', NULL, NULL, NULL, NULL, NULL, 0, 1, '2024-02-22 10:32:31', '2024-02-25 11:57:40'),
(25, 'Fitness & Wearable', 0, 1, 5, 5, '1708597967.png', NULL, NULL, NULL, NULL, NULL, 0, 1, '2024-02-22 10:32:48', '2024-02-25 11:57:51'),
(26, 'Peripherals', 0, 1, 6, 6, '1708597982.png', NULL, NULL, NULL, NULL, NULL, 0, 1, '2024-02-22 10:33:02', '2024-02-25 11:58:02'),
(27, 'Cover & Glass', 0, 1, 7, 7, '1708862206.webp', NULL, NULL, NULL, NULL, NULL, 1, 1, '2024-02-22 10:33:17', '2024-02-25 11:56:46'),
(28, 'Smart Electronics', 0, 1, 8, 8, '1708598010.png', NULL, NULL, NULL, NULL, NULL, 0, 1, '2024-02-22 10:33:31', '2024-02-22 10:33:31'),
(29, 'Used Device', 0, 1, 9, 9, '1708598036.png', NULL, NULL, NULL, NULL, NULL, 0, 1, '2024-02-22 10:33:57', '2024-02-22 10:33:57'),
(30, 'Power Adapter', 0, 0, NULL, 2, '1708862344.webp', NULL, NULL, NULL, NULL, NULL, 1, 1, '2024-02-25 11:59:04', '2024-02-25 11:59:13'),
(31, 'MacBook', 0, 0, NULL, 3, '1708862393.webp', NULL, NULL, NULL, NULL, NULL, 1, 1, '2024-02-25 11:59:54', '2024-02-25 11:59:54'),
(32, 'Smart Watch', 0, 0, NULL, 4, '1708862453.webp', NULL, NULL, NULL, NULL, NULL, 1, 1, '2024-02-25 12:00:53', '2024-02-25 12:00:53'),
(33, 'Airpods', 0, 0, NULL, 5, '1708862498.webp', NULL, NULL, NULL, NULL, NULL, 1, 1, '2024-02-25 12:01:38', '2024-02-25 12:01:38'),
(34, 'Overhead Headphones', 0, 0, NULL, 6, '1708862555.webp', NULL, NULL, NULL, NULL, NULL, 1, 1, '2024-02-25 12:02:35', '2024-02-25 12:02:35'),
(35, 'Speakers', 0, 0, NULL, 7, '1708862587.webp', NULL, NULL, NULL, NULL, NULL, 1, 1, '2024-02-25 12:03:07', '2024-02-25 12:03:07'),
(36, 'Wired Headphone', 0, 0, NULL, 8, '1708862619.webp', NULL, NULL, NULL, NULL, NULL, 1, 1, '2024-02-25 12:03:39', '2024-02-25 12:03:39'),
(37, 'Wireless Headphone', 0, 0, NULL, 9, '1708862665.webp', NULL, NULL, NULL, NULL, NULL, 1, 1, '2024-02-25 12:04:25', '2024-02-25 12:04:25'),
(38, 'Cable & Interconnects', 0, 0, NULL, 10, '1708868458.webp', NULL, NULL, NULL, NULL, NULL, 1, 1, '2024-02-25 13:40:58', '2024-02-25 13:40:58'),
(39, 'Power Bank', 0, 0, NULL, 11, '1708868524.webp', NULL, NULL, NULL, NULL, NULL, 1, 1, '2024-02-25 13:42:04', '2024-02-25 13:42:04'),
(40, 'Wireless Charger', 0, 0, NULL, 12, '1708868554.webp', NULL, NULL, NULL, NULL, NULL, 1, 1, '2024-02-25 13:42:34', '2024-02-25 13:42:34'),
(41, 'Hubs & Docks', 0, 0, NULL, 13, '1708868594.webp', NULL, NULL, NULL, NULL, NULL, 1, 1, '2024-02-25 13:43:14', '2024-02-25 13:43:14'),
(42, 'Drone & Camera Accessories', 0, 0, NULL, 14, '1708868650.webp', NULL, NULL, NULL, NULL, NULL, 0, 1, '2024-02-25 13:44:11', '2024-02-29 20:15:39'),
(43, 'Peripherals', 0, 0, NULL, 15, '1708868682.webp', NULL, NULL, NULL, NULL, NULL, 1, 1, '2024-02-25 13:44:42', '2024-02-25 13:44:42'),
(44, 'Pre-Owned Devices', 0, 1, 2, 2, '1709198000.webp', 'banner_1709198000.jpg', NULL, NULL, NULL, NULL, 1, 1, '2024-02-29 20:13:20', '2024-02-29 20:13:20');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `code` varchar(10) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(1, 'IndianRed', '#CD5C5C', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(2, 'LightCoral', '#F08080', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(3, 'Salmon', '#FA8072', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(4, 'DarkSalmon', '#E9967A', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(5, 'LightSalmon', '#FFA07A', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(6, 'Crimson', '#DC143C', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(7, 'Red', '#C43D4F', '2018-11-05 02:12:26', '2024-03-02 16:22:19'),
(8, 'FireBrick', '#B22222', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(9, 'DarkRed', '#8B0000', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(10, 'Pink', '#FFC0CB', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(11, 'LightPink', '#FFB6C1', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(12, 'HotPink', '#FF69B4', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(13, 'DeepPink', '#FF1493', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(14, 'MediumVioletRed', '#C71585', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(15, 'PaleVioletRed', '#DB7093', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(16, 'LightSalmon', '#FFA07A', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(17, 'Coral', '#FF7F50', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(18, 'Tomato', '#FF6347', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(19, 'OrangeRed', '#FF4500', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(20, 'DarkOrange', '#FF8C00', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(21, 'Orange', '#FFA500', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(22, 'Gold', '#FFD700', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(23, 'Yellow', '#FFFF00', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(24, 'LightYellow', '#FFFFE0', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(25, 'LemonChiffon', '#FFFACD', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(26, 'LightGoldenrodYellow', '#FAFAD2', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(27, 'PapayaWhip', '#FFEFD5', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(28, 'Moccasin', '#FFE4B5', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(29, 'Peach', '#ffdab9', '2018-11-05 02:12:27', '2024-02-08 01:24:03'),
(30, 'PaleGoldenrod', '#EEE8AA', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(31, 'Khaki', '#F0E68C', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(32, 'DarkKhaki', '#BDB76B', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(33, 'Lavender', '#E6E6FA', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(34, 'Thistle', '#D8BFD8', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(35, 'Plum', '#DDA0DD', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(36, 'Violet', '#EE82EE', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(37, 'Orchid', '#DA70D6', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(38, 'Fuchsia', '#FF00FF', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(39, 'Magenta', '#FF00FF', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(40, 'MediumOrchid', '#BA55D3', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(41, 'MediumPurple', '#9370DB', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(42, 'Amethyst', '#9966CC', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(43, 'BlueViolet', '#8A2BE2', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(44, 'DarkViolet', '#9400D3', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(45, 'DarkOrchid', '#9932CC', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(46, 'DarkMagenta', '#8B008B', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(47, 'Purple', '#C0B8DD', '2018-11-05 02:12:27', '2024-03-02 20:04:22'),
(48, 'Indigo', '#4B0082', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(49, 'SlateBlue', '#6A5ACD', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(50, 'DarkSlateBlue', '#483D8B', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(51, 'MediumSlateBlue', '#7B68EE', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(52, 'GreenYellow', '#ADFF2F', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(53, 'Chartreuse', '#7FFF00', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(54, 'LawnGreen', '#7CFC00', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(55, 'Lime', '#00FF00', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(56, 'LimeGreen', '#32CD32', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(57, 'PaleGreen', '#98FB98', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(58, 'LightGreen', '#90EE90', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(59, 'MediumSpringGreen', '#00FA9A', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(60, 'SpringGreen', '#00FF7F', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(61, 'MediumSeaGreen', '#3CB371', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(62, 'SeaGreen', '#2E8B57', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(63, 'ForestGreen', '#228B22', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(64, 'Green', '#008000', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(65, 'DarkGreen', '#006400', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(66, 'YellowGreen', '#9ACD32', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(67, 'OliveDrab', '#6B8E23', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(68, 'Olive', '#808000', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(69, 'DarkOliveGreen', '#556B2F', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(70, 'MediumAquamarine', '#66CDAA', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(71, 'DarkSeaGreen', '#8FBC8F', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(72, 'LightSeaGreen', '#20B2AA', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(73, 'DarkCyan', '#008B8B', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(74, 'Teal', '#008080', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(75, 'Aqua', '#00FFFF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(76, 'Cyan', '#00FFFF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(77, 'LightCyan', '#E0FFFF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(78, 'PaleTurquoise', '#AFEEEE', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(79, 'Aquamarine', '#7FFFD4', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(80, 'Turquoise', '#40E0D0', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(81, 'MediumTurquoise', '#48D1CC', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(82, 'DarkTurquoise', '#00CED1', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(83, 'CadetBlue', '#5F9EA0', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(84, 'SteelBlue', '#4682B4', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(85, 'LightSteelBlue', '#B0C4DE', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(86, 'PowderBlue', '#B0E0E6', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(87, 'LightBlue', '#ADD8E6', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(88, 'SkyBlue', '#87CEEB', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(89, 'LightSkyBlue', '#87CEFA', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(90, 'DeepSkyBlue', '#00BFFF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(91, 'DodgerBlue', '#1E90FF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(92, 'CornflowerBlue', '#6495ED', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(93, 'MediumSlateBlue', '#7B68EE', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(94, 'RoyalBlue', '#4169E1', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(95, 'Blue', '#0000FF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(96, 'MediumBlue', '#0000CD', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(97, 'DarkBlue', '#00008B', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(98, 'Navy', '#000080', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(99, 'MidnightBlue', '#191970', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(100, 'Cornsilk', '#FFF8DC', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(101, 'BlanchedAlmond', '#FFEBCD', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(102, 'Bisque', '#FFE4C4', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(103, 'NavajoWhite', '#FFDEAD', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(104, 'Wheat', '#F5DEB3', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(105, 'BurlyWood', '#DEB887', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(106, 'Tan', '#D2B48C', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(107, 'RosyBrown', '#BC8F8F', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(108, 'SandyBrown', '#F4A460', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(109, 'Goldenrod', '#DAA520', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(110, 'DarkGoldenrod', '#B8860B', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(111, 'Peru', '#CD853F', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(112, 'Chocolate', '#D2691E', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(113, 'SaddleBrown', '#8B4513', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(114, 'Sienna', '#A0522D', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(115, 'Brown', '#A52A2A', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(116, 'Maroon', '#800000', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(117, 'White', '#FFFFFF', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(118, 'Snow', '#FFFAFA', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(119, 'Honeydew', '#F0FFF0', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(120, 'MintCream', '#F5FFFA', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(121, 'Azure', '#f0ffff', '2018-11-05 02:12:29', '2022-11-28 07:46:59'),
(122, 'AliceBlue', '#f0f8ff', '2018-11-05 02:12:29', '2022-11-28 07:47:43'),
(123, 'GhostWhite', '#F8F8FF', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(124, 'WhiteSmoke', '#F5F5F5', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(125, 'Seashell', '#FFF5EE', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(126, 'Beige', '#F5F5DC', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(127, 'OldLace', '#FDF5E6', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(128, 'off white', '#fffaf0', '2018-11-05 02:12:29', '2024-02-08 01:17:29'),
(129, 'Ivory', '#FFFFF0', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(130, 'AntiqueWhite', '#FAEBD7', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(131, 'Linen', '#FAF0E6', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(132, 'LavenderBlush', '#FFF0F5', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(133, 'MistyRose', '#FFE4E1', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(134, 'Gainsboro', '#DCDCDC', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(135, 'LightGrey', '#D3D3D3', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(136, 'Silver', '#C0C0C0', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(137, 'DarkGray', '#A9A9A9', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(138, 'Gray', '#808080', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(139, 'DimGray', '#696969', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(140, 'LightSlateGray', '#778899', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(141, 'SlateGray', '#708090', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(142, 'DarkSlateGray', '#2F4F4F', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(143, 'Black', '#34393D', '2018-11-05 02:12:30', '2024-03-02 20:03:10'),
(144, 'Ridoy Paul', '#f2baba', '2022-11-28 07:36:41', '2022-11-28 07:36:41'),
(145, 'Zinnwaldite Brown', '#3e220c', '2024-01-31 21:28:04', '2024-01-31 21:28:04'),
(146, 'loafer', '#d4d6c3', '2024-01-31 21:38:12', '2024-01-31 21:38:12'),
(147, 'mint', '#86afab', '2024-01-31 21:55:35', '2024-01-31 21:55:35'),
(148, 'cofffe', '#6b4c35', '2024-01-31 21:58:50', '2024-01-31 21:58:50'),
(149, 'new chestnut', '#a28166', '2024-02-14 19:41:11', '2024-02-14 19:41:11'),
(150, 'apple green', '#c1c472', '2024-02-14 19:42:58', '2024-02-14 19:42:58'),
(151, 'Black Titanium', '#41403E', '2024-02-28 06:11:05', '2024-02-28 06:11:05'),
(152, 'Blue Titanium', '#474B52', '2024-02-28 06:12:49', '2024-02-28 06:12:49'),
(153, 'Natural Titanium', '#999691', '2024-02-28 06:13:28', '2024-02-28 06:13:28'),
(154, 'White Titanium', '#E5E4DE', '2024-02-28 06:14:15', '2024-02-28 06:14:15'),
(155, 'Arctic White', '#DEE0E2', '2024-02-28 22:18:44', '2024-02-28 22:18:44'),
(156, 'Aurora Purple', '#D9DCED', '2024-02-28 22:19:15', '2024-02-28 22:19:15'),
(157, 'Midnight Black', '#19191B', '2024-02-28 22:19:58', '2024-02-28 22:19:58'),
(158, 'Ocean Teal', '#7398A1', '2024-02-28 22:20:26', '2024-02-28 22:20:26'),
(159, 'Electric Black', '#222222', '2024-02-28 22:46:14', '2024-02-28 22:46:14'),
(160, 'Mystic Green', '#5A6B54', '2024-02-28 22:47:30', '2024-02-28 22:47:30'),
(161, 'Orchid Violet', '#937B8B', '2024-02-28 22:48:21', '2024-02-28 22:48:21'),
(162, 'Bay', '#8BBEED', '2024-02-28 23:03:41', '2024-02-28 23:03:41'),
(163, 'Obsidian', '#242424', '2024-02-28 23:04:18', '2024-02-28 23:04:18'),
(164, 'Porcelain', '#E2D9D0', '2024-02-28 23:05:06', '2024-02-28 23:05:06'),
(165, 'Phantom Black', '#1F2223', '2024-02-28 23:37:43', '2024-02-28 23:37:43'),
(166, 'Metallica Gold', '#9D937A', '2024-02-29 19:58:43', '2024-02-29 19:58:43'),
(167, 'Rocking Black', '#13161D', '2024-02-29 19:59:20', '2024-02-29 19:59:20'),
(168, 'Soulful Blue', '#75B7F5', '2024-02-29 20:00:09', '2024-02-29 20:00:09'),
(169, 'Legendary Black', '#1E1F23', '2024-03-02 16:21:24', '2024-03-02 16:21:24');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) NOT NULL,
  `discount` double DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `valid_from` date NOT NULL,
  `valid_to` date NOT NULL,
  `single_use` int(11) NOT NULL DEFAULT 0,
  `affiliate_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `name`, `code`, `discount`, `amount`, `valid_from`, `valid_to`, `single_use`, `affiliate_id`, `created_at`, `updated_at`) VALUES
(2, 'New Coupon', '883D', 10, NULL, '2022-12-30', '2023-01-05', 1, NULL, '2022-12-30 13:17:33', '2023-01-02 14:54:41');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `shipping_charge` int(11) DEFAULT 0,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `name`, `shipping_charge`, `is_active`, `created_at`, `updated_at`) VALUES
(65, 'Inside Dhaka', 70, 1, '2021-12-23 00:24:09', '2024-02-11 20:56:39'),
(66, 'Outside Dhaka', 120, 1, '2024-01-29 23:13:30', '2024-01-30 20:18:56');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `flash_sale_offers`
--

CREATE TABLE `flash_sale_offers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `start_date_time` varchar(255) NOT NULL,
  `end_date_time` varchar(255) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flash_sale_offers`
--

INSERT INTO `flash_sale_offers` (`id`, `title`, `description`, `image`, `start_date_time`, `end_date_time`, `is_active`, `created_at`, `updated_at`) VALUES
(3, 'Eid al-Fitr Flash Sale 2023', '<p>Eid al-Fitr Flash Sale 2023</p>', '16771736591205351418.png', '2023-09-01T23:33', '2023-09-30T23:00', 0, '2023-02-24 07:34:21', '2023-09-05 09:13:34');

-- --------------------------------------------------------

--
-- Table structure for table `flash_sale_offer_products`
--

CREATE TABLE `flash_sale_offer_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `flash_sale_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flash_sale_offer_products`
--

INSERT INTO `flash_sale_offer_products` (`id`, `flash_sale_id`, `product_id`, `created_at`, `updated_at`) VALUES
(31, 3, 38, '2023-09-05 09:13:34', '2023-09-05 09:13:34'),
(32, 3, 37, '2023-09-05 09:13:34', '2023-09-05 09:13:34'),
(33, 3, 36, '2023-09-05 09:13:34', '2023-09-05 09:13:34'),
(34, 3, 35, '2023-09-05 09:13:34', '2023-09-05 09:13:34'),
(35, 3, 34, '2023-09-05 09:13:34', '2023-09-05 09:13:34'),
(36, 3, 33, '2023-09-05 09:13:34', '2023-09-05 09:13:34'),
(37, 3, 32, '2023-09-05 09:13:34', '2023-09-05 09:13:34'),
(38, 3, 31, '2023-09-05 09:13:34', '2023-09-05 09:13:34'),
(39, 3, 30, '2023-09-05 09:13:34', '2023-09-05 09:13:34'),
(40, 3, 29, '2023-09-05 09:13:34', '2023-09-05 09:13:34'),
(41, 3, 28, '2023-09-05 09:13:34', '2023-09-05 09:13:34'),
(42, 3, 27, '2023-09-05 09:13:34', '2023-09-05 09:13:34'),
(43, 3, 26, '2023-09-05 09:13:34', '2023-09-05 09:13:34'),
(44, 3, 25, '2023-09-05 09:13:34', '2023-09-05 09:13:34'),
(45, 3, 24, '2023-09-05 09:13:34', '2023-09-05 09:13:34');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home_page_four_banners`
--

CREATE TABLE `home_page_four_banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 2,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_page_four_banners`
--

INSERT INTO `home_page_four_banners` (`id`, `title`, `description`, `image`, `link`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Banner-R', '', '17091157321727357841.jpg', '#', 2, '2022-12-11 03:53:58', '2024-02-28 21:22:12'),
(2, 'Banner-2', '', '17091157511600375867.jpg', '#', 2, '2022-12-15 10:09:43', '2024-02-28 21:22:31');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_09_02_044447_create_categories_table', 1),
(6, '2021_09_02_044656_create_brands_table', 1),
(7, '2021_09_02_044732_create_variations_table', 1),
(8, '2021_09_02_044817_create_products_table', 1),
(9, '2021_09_02_044851_create_order_statuses_table', 1),
(10, '2021_09_02_044914_create_orders_table', 1),
(11, '2021_09_02_044940_create_order_products_table', 1),
(12, '2021_09_02_051208_create_wishlists_table', 1),
(13, '2021_09_02_051557_create_wallets_table', 1),
(14, '2021_09_02_051617_create_wallet_entries_table', 1),
(15, '2021_09_02_051658_create_pages_table', 1),
(16, '2021_09_02_051950_create_settings_table', 1),
(17, '2021_09_02_061946_create_product_variations_table', 1),
(18, '2021_09_06_100447_create_product_images_table', 1),
(19, '2021_09_13_064102_create_coupons_table', 1),
(20, '2021_09_15_090230_create_sliders_table', 1),
(21, '2021_09_20_101516_create_subscribers_table', 1),
(22, '2021_09_26_064736_create_galleries_table', 1),
(23, '2021_10_25_121017_create_districts_table', 1),
(24, '2021_10_25_121041_create_areas_table', 1),
(25, '2021_10_26_092554_create_registration_points_table', 1),
(26, '2022_11_18_063812_create_permission_tables', 1),
(27, '2022_11_18_073751_create_flash_sale_offers_table', 1),
(28, '2022_11_18_074225_create_flash_sale_offer_products_table', 1),
(29, '2022_11_18_074637_create_carts_table', 1),
(30, '2022_11_18_074858_create_blogs_table', 1),
(31, '2022_11_24_182330_create_product_stocks_table', 2),
(32, '2022_11_24_182820_create_attributes_table', 2),
(33, '2022_11_24_183022_create_colors_table', 3),
(34, '2022_11_24_183836_create_uploads_table', 4),
(35, '2022_12_11_094944_create_home_page_four_banners_table', 4),
(36, '2014_10_12_200000_add_two_factor_columns_to_users_table', 5),
(37, '2022_12_23_155218_create_sessions_table', 5),
(39, '2023_01_03_105352_create_transactions_table', 6),
(40, '2023_01_06_080608_create_about_us_table', 7),
(41, '2023_02_17_143506_create_products_reviews_table', 8),
(42, '2023_02_25_192708_create_product_with_categories_table', 9),
(43, '2023_03_04_185436_create_wallet_transactions_table', 9),
(44, '2023_03_17_183946_add_default_mfs_system_into_orders_table', 10),
(45, '2024_01_24_125003_create_wholesales_table', 11),
(46, '2024_02_25_171020_create_slider_side_banners_table', 12),
(47, '2024_11_05_104104_create_sessions_table', 13),
(48, '2024_11_05_124424_add_google_map_column_to_settings', 13),
(49, '2024_11_05_124516_add_logo_color_head_body_columns_to_settings', 13),
(50, '2024_11_05_124541_add_headers_column_and_footers_column_to_settings', 13);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `price` double NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `district_id` int(11) NOT NULL,
  `area_id` int(11) DEFAULT NULL,
  `shipping_address` text DEFAULT NULL,
  `ship_to_another_address_status` int(11) NOT NULL DEFAULT 0,
  `ship_to_another_address` text DEFAULT NULL,
  `coupon_status` int(11) NOT NULL DEFAULT 0,
  `coupon_code` varchar(255) DEFAULT NULL,
  `coupon_discount_amount` varchar(255) DEFAULT NULL,
  `delivery_boy_id` int(11) DEFAULT NULL,
  `delivery_charge` double DEFAULT NULL,
  `vat` double DEFAULT NULL,
  `order_status` varchar(255) NOT NULL DEFAULT 'Order Created',
  `payment_status` varchar(255) NOT NULL DEFAULT '0',
  `payment_method` varchar(255) DEFAULT NULL,
  `manual_mfs_account_name` varchar(255) DEFAULT NULL,
  `manual_mfs_payment_number` varchar(255) DEFAULT NULL,
  `manual_mfs_transaction_id` varchar(255) DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `total_payable` varchar(255) NOT NULL DEFAULT '0',
  `paid` varchar(255) NOT NULL DEFAULT '0',
  `sender_amount` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `code`, `customer_id`, `price`, `name`, `email`, `phone`, `city`, `district_id`, `area_id`, `shipping_address`, `ship_to_another_address_status`, `ship_to_another_address`, `coupon_status`, `coupon_code`, `coupon_discount_amount`, `delivery_boy_id`, `delivery_charge`, `vat`, `order_status`, `payment_status`, `payment_method`, `manual_mfs_account_name`, `manual_mfs_payment_number`, `manual_mfs_transaction_id`, `transaction_id`, `total_payable`, `paid`, `sender_amount`, `note`, `created_at`, `updated_at`) VALUES
(90, '051124641000001', 17, 28000, 'Admin', 'admin@gmail.com', '017XXXXXXXX', NULL, 66, NULL, 'dsfsdf', 0, NULL, 0, NULL, NULL, NULL, 120, NULL, 'pending', 'unpaid', 'cash on delivery', NULL, NULL, NULL, NULL, '28120', '0', NULL, NULL, '2024-11-05 06:29:48', '2024-11-05 06:29:48'),
(91, '051124647000002', NULL, 31000, 'Kenneth Estrada', 'tunicubin@mailinator.com', '+1 (866) 329-7979', NULL, 65, NULL, 'Expedita cupidatat e', 0, NULL, 0, NULL, NULL, NULL, 70, NULL, 'pending', 'unpaid', 'cash on delivery', NULL, NULL, NULL, NULL, '31070', '0', NULL, NULL, '2024-11-05 07:07:40', '2024-11-05 07:07:40');

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_code` varchar(255) NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `variations` text DEFAULT NULL,
  `price` double NOT NULL,
  `qty` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_products`
--

INSERT INTO `order_products` (`id`, `order_code`, `product_id`, `variations`, `price`, `qty`, `total`, `created_at`, `updated_at`) VALUES
(94, '051124641000001', 110, '0', 28000, 1, 28000, '2024-11-05 06:29:48', '2024-11-05 06:29:48'),
(95, '051124647000002', 109, '0', 31000, 1, 31000, '2024-11-05 07:07:40', '2024-11-05 07:07:40');

-- --------------------------------------------------------

--
-- Table structure for table `order_statuses`
--

CREATE TABLE `order_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_code` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_changed_by` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_statuses`
--

INSERT INTO `order_statuses` (`id`, `order_code`, `status`, `status_changed_by`, `created_at`, `updated_at`) VALUES
(1, '100123339000026', 'processing', '2', '2023-01-16 11:54:12', '2023-01-16 11:54:12'),
(2, '160123352000027', 'shipped', '2', '2023-01-16 12:05:51', '2023-01-16 12:05:51'),
(3, '210223591000036', 'processing', '17', '2023-02-21 15:31:09', '2023-02-21 15:31:09'),
(4, '210223774000037', 'delivered', '17', '2023-02-21 17:11:57', '2023-02-21 17:11:57'),
(5, '270723647000002', 'delivered', '17', '2023-07-27 22:25:18', '2023-07-27 22:25:18'),
(6, '050923838000006', 'processing', '17', '2023-10-05 18:59:46', '2023-10-05 18:59:46'),
(7, '130124681000009', 'delivered', '17', '2024-01-13 07:04:54', '2024-01-13 07:04:54'),
(8, '140124808000010', 'processing', '17', '2024-01-14 11:31:11', '2024-01-14 11:31:11'),
(9, '270124211000013', 'processing', '17', '2024-01-29 23:08:11', '2024-01-29 23:08:11'),
(10, '070224733000021', 'processing', '17', '2024-02-11 21:34:31', '2024-02-11 21:34:31'),
(11, '070224733000021', 'shipped', '17', '2024-02-11 21:34:51', '2024-02-11 21:34:51'),
(12, '110224960000017', 'processing', '17', '2024-02-11 22:05:10', '2024-02-11 22:05:10'),
(13, '230324615000010', 'processing', '17', '2024-10-31 11:52:08', '2024-10-31 11:52:08'),
(14, '230324615000010', 'delivered', '17', '2024-10-31 11:53:00', '2024-10-31 11:53:00');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_slug` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `description1` text DEFAULT NULL,
  `description2` text DEFAULT NULL,
  `description3` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `new_arrival` varchar(255) DEFAULT NULL,
  `product_banner` varchar(255) DEFAULT NULL,
  `advertisement` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `page_slug`, `name`, `description`, `description1`, `description2`, `description3`, `image`, `new_arrival`, `product_banner`, `advertisement`, `created_at`, `updated_at`) VALUES
(1, 'privacy_policy', 'Privacy Policy', '<div class=\"single-privacy-policy\">\r\n<h2>Privacy Policy for [Your Company Name]</h2>\r\n<p>Last Updated: [Date]</p>\r\n<p>[Your Company Name] (\"us,\" \"we,\" or \"our\") operates [Your Website URL] (the \"Site\"). This page informs you of our policies regarding the collection, use, and disclosure of Personal Information we receive from users of the Site.</p>\r\n<h3>Information Collection and Use</h3>\r\n<h4>Personal Information</h4>\r\n<p>While using our Site, we may ask you to provide us with certain personally identifiable information that can be used to contact or identify you. Personally, identifiable information may include but is not limited to your name, email address, postal address, and phone number (\"Personal Information\").</p>\r\n<h4>Log Data</h4>\r\n<p>Like many site operators, we collect information that your browser sends whenever you visit our Site (\"Log Data\"). This Log Data may include information such as your computer\'s Internet Protocol (\"IP\") address, browser type, browser version, the pages of our Site that you visit, the time and date of your visit, the time spent on those pages, and other statistics.</p>\r\n<h3>Cookies</h3>\r\n<p>Cookies are files with a small amount of data, which may include an anonymous unique identifier. Cookies are sent to your browser from a web site and stored on your computer\'s hard drive. Like many sites, we use \"cookies\" to collect information. You can instruct your browser to refuse all cookies or to indicate when a cookie is being sent. However, if you do not accept cookies, you may not be able to use some portions of our Site.</p>\r\n<h3>Security</h3>\r\n<p>The security of your Personal Information is important to us, but remember that no method of transmission over the Internet, or method of electronic storage, is 100% secure. While we strive to use commercially acceptable means to protect your Personal Information, we cannot guarantee its absolute security.</p>\r\n<h3>Changes to This Privacy Policy</h3>\r\n<p>This Privacy Policy is effective as of [Date] and will remain in effect except concerning any changes in its provisions in the future, which will be in effect immediately after being posted on this page. We reserve the right to update or change our Privacy Policy at any time, and you should check this Privacy Policy periodically. Your continued use of the Service after we post any modifications to the Privacy Policy on this page will constitute your acknowledgment of the modifications and your consent to abide and be bound by the modified Privacy Policy.</p>\r\n<h3>Contact Us</h3>\r\n<p>If you have any questions about this Privacy Policy, please contact us at [Your Contact Information].</p>\r\n<hr>\r\n<p>Please replace the placeholders (in square brackets) with your actual company information. Additionally, ensure that your privacy policy complies with relevant privacy laws and regulations. Consult with a legal professional to customize the privacy policy based on the specific requirements and laws applicable to your company and industry.</p>\r\n</div>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-28 05:25:27', '2024-02-28 08:54:51'),
(2, 'terms_and_condition', 'Terms and Conditions', '<h2>Terms and Conditions for [Your Company Name]</h2>\r\n<p>Last Updated: [Date]</p>\r\n<p>These Terms and Conditions (\"Terms\") govern your use of [Your Company Name] website and services (the \"Service\") operated by [Your Company Name] (\"us,\" \"we,\" or \"our\").</p>\r\n<p>Please read these Terms carefully before using our Service.</p>\r\n<h3>1. Agreement to Terms</h3>\r\n<p>By accessing or using our Service, you agree to be bound by these Terms. If you disagree with any part of the Terms, then you may not access the Service.</p>\r\n<h3>2. Purchases</h3>\r\n<p>If you wish to purchase any product or service made available through the Service (\"Purchase\"), you may be asked to supply certain information relevant to your Purchase including, without limitation, your credit card number, the expiration date of your credit card, your billing address, and your shipping information.</p>\r\n<p>You represent and warrant that: (i) you have the legal right to use any credit card(s) or other payment method(s) in connection with any Purchase; and that (ii) the information you supply to us is true, correct, and complete.</p>\r\n<h3>3. Content</h3>\r\n<p>Our Service allows you to post, link, store, share, and otherwise make available certain information, text, graphics, videos, or other material (\"Content\"). You are responsible for the Content that you post on or through the Service, including its legality, reliability, and appropriateness.</p>\r\n<h3>4. Changes</h3>\r\n<p>We reserve the right, at our sole discretion, to modify or replace these Terms at any time. If a revision is a material, we will try to provide at least 30 days\' notice prior to any new terms taking effect. What constitutes a material change will be determined at our sole discretion.</p>\r\n<h3>5. Contact Us</h3>\r\n<p>If you have any questions about these Terms, please contact us at [Your Contact Information].</p>\r\n<hr>\r\n<p>Please replace the placeholders (in square brackets) with your actual company information. Customize the Terms and Conditions based on your specific services and business practices. It\'s crucial to consult with a legal professional to ensure that your Terms and Conditions comply with the laws applicable to your company and industry.</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-06 01:07:50', '2024-02-28 08:56:02'),
(3, 'return_and_refund_policy', 'Return Refund Policy', '<div class=\"flex-1 overflow-hidden\">\r\n<div class=\"react-scroll-to-bottom--css-inisl-79elbk h-full\">\r\n<div class=\"react-scroll-to-bottom--css-inisl-1n7m0yu\">\r\n<div class=\"flex flex-col pb-9 text-sm\">\r\n<div class=\"w-full text-token-text-primary\" data-testid=\"conversation-turn-59\">\r\n<div class=\"px-4 py-2 justify-center text-base md:gap-6 m-auto\">\r\n<div class=\"flex flex-1 text-base mx-auto gap-3 md:px-5 lg:px-1 xl:px-5 md:max-w-3xl lg:max-w-[40rem] xl:max-w-[48rem] group final-completion\">\r\n<div class=\"relative flex w-full flex-col agent-turn\">\r\n<div class=\"flex-col gap-1 md:gap-3\">\r\n<div class=\"flex flex-grow flex-col max-w-full\">\r\n<div class=\"min-h-[20px] text-message flex flex-col items-start gap-3 whitespace-pre-wrap break-words [.text-message+&amp;]:mt-5 overflow-x-auto\" data-message-author-role=\"assistant\" data-message-id=\"d3f32006-c1f2-493f-9474-7a4bc583f1f6\">\r\n<div class=\"markdown prose w-full break-words dark:prose-invert dark\">\r\n<h2>Return and Refund Policy for [Your Company Name]</h2>\r\n<p>Last Updated: [Date]</p>\r\n<p>Thank you for shopping at [Your Company Name]. If you are not entirely satisfied with your purchase, we\'re here to help.</p>\r\n<h3>Returns</h3>\r\n<p>You have [number of days] calendar days to return an item from the date you received it.</p>\r\n<p>To be eligible for a return, your item must be unused and in the same condition that you received it. Your item must be in the original packaging.</p>\r\n<p>Your item needs to have the receipt or proof of purchase.</p>\r\n<h3>Refunds</h3>\r\n<p>Once we receive your item, we will inspect it and notify you that we have received your returned item. We will immediately notify you on the status of your refund after inspecting the item.</p>\r\n<p>If your return is approved, we will initiate a refund to your credit card (or original method of payment). You will receive the credit within a certain amount of days, depending on your card issuer\'s policies.</p>\r\n<h3>Shipping</h3>\r\n<p>You will be responsible for paying for your own shipping costs for returning your item. Shipping costs are non&shy;-refundable.</p>\r\n<p>If you receive a refund, the cost of return shipping will be deducted from your refund.</p>\r\n<h3>Contact Us</h3>\r\n<p>If you have any questions on how to return your item to us, contact us at [Your Contact Information].</p>\r\n<hr>\r\n<p>Please replace the placeholders (in square brackets) with your actual company information. Customize the policy based on your specific return and refund procedures, including the number of days allowed for returns and any other relevant details.</p>\r\n<p>Additionally, make sure to comply with relevant consumer protection laws in your jurisdiction. It\'s always recommended to seek legal advice to ensure your Return and Refund Policy aligns with local regulations<button class=\"flex items-center gap-1.5 rounded-md p-1 text-xs text-token-text-tertiary hover:text-token-text-primary md:invisible md:group-hover:visible md:group-[.final-completion]:visible\"></button></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"absolute\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-16 10:42:04', '2024-02-28 09:05:16'),
(4, 'support_policy', 'Support Policy', '<h2>Support Policy for [Your Company Name]</h2>\r\n<p>Last Updated: [Date]</p>\r\n<p>Thank you for choosing [Your Company Name]! We are committed to providing excellent support to ensure your satisfaction.</p>\r\n<h3>1. Support Channels</h3>\r\n<p>Our support is available through the following channels:</p>\r\n<ul>\r\n<li><strong>Email:</strong> [Your Support Email Address]</li>\r\n<li><strong>Phone:</strong> [Your Support Phone Number]</li>\r\n<li><strong>Live Chat:</strong> [Link to Live Chat]</li>\r\n</ul>\r\n<h3>2. Support Hours</h3>\r\n<p>Our standard support hours are [Days and Hours]. During this time, our support team is available to assist you with any inquiries or issues you may have.</p>\r\n<h3>3. Response Time</h3>\r\n<p>We strive to respond to all customer inquiries within [Response Time], but response times may vary based on the volume of requests. Urgent issues will be prioritized.</p>\r\n<h3>4. Types of Support</h3>\r\n<p>Our support covers the following areas:</p>\r\n<ul>\r\n<li><strong>Product Information:</strong> Providing information about our products and services.</li>\r\n<li><strong>Technical Assistance:</strong> Assisting with technical issues related to our products.</li>\r\n<li><strong>Order Support:</strong> Assisting with order-related inquiries and issues.</li>\r\n<li><strong>General Inquiries:</strong> Addressing general questions about our company and policies.</li>\r\n</ul>\r\n<h3>5. Remote Assistance</h3>\r\n<p>In some cases, we may offer remote assistance to resolve technical issues. This will only be done with your explicit consent and cooperation.</p>\r\n<h3>6. Customer Responsibilities</h3>\r\n<p>To facilitate efficient support, customers are responsible for:</p>\r\n<ul>\r\n<li>Providing accurate information about the issue.</li>\r\n<li>Following the instructions provided by our support team.</li>\r\n<li>Cooperating during remote assistance sessions.</li>\r\n</ul>\r\n<h3>7. Feedback</h3>\r\n<p>We welcome feedback on our support services. If you have suggestions or concerns, please let us know through our support channels or by emailing [Your Feedback Email Address].</p>\r\n<h3>Contact Us</h3>\r\n<p>For any support inquiries, please contact us at [Your Support Email Address] or call [Your Support Phone Number].</p>\r\n<p>Thank you for choosing [Your Company Name]!</p>\r\n<hr>\r\n<p>Please replace the placeholders (in square brackets) with your actual company information. Customize the policy based on your specific support procedures, hours, and contact channels. Always ensure compliance with relevant laws and regulations.</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-16 10:42:42', '2024-02-28 09:06:11');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('cse.ridoypaul@gmail.com', '$2y$10$jgnxTq0sApVZoPtUNbXmDOISclRpWateE2FL5xWz7hZrON6Br4v8y', '2023-01-16 09:25:40');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `group_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category_id` int(11) DEFAULT NULL,
  `purchase_price` varchar(255) DEFAULT NULL,
  `price` varchar(200) DEFAULT NULL,
  `discount_type` varchar(255) DEFAULT NULL,
  `discount_amount` double DEFAULT NULL,
  `current_stock` int(11) NOT NULL DEFAULT 0,
  `is_featured` int(11) NOT NULL DEFAULT 0,
  `is_tranding` int(11) NOT NULL DEFAULT 0,
  `todays_deal` int(11) NOT NULL DEFAULT 0,
  `sold_qty` varchar(255) NOT NULL DEFAULT '0',
  `code` varchar(255) DEFAULT NULL,
  `unit_type` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `minimum_qty` int(11) DEFAULT NULL,
  `thumbnail_image` varchar(255) DEFAULT NULL,
  `thumbnail_image2` varchar(255) DEFAULT NULL,
  `gallery_images` varchar(255) DEFAULT NULL,
  `video_provider` varchar(255) DEFAULT NULL,
  `video_link` text DEFAULT NULL,
  `variant_product` text DEFAULT NULL,
  `attributes` text DEFAULT NULL,
  `choice_options` text DEFAULT NULL,
  `colors` text DEFAULT NULL,
  `variations` text DEFAULT NULL,
  `feature` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `pdf_specification` text DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `tags` text DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `meta_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `brand_id`, `category_id`, `sub_category_id`, `purchase_price`, `price`, `discount_type`, `discount_amount`, `current_stock`, `is_featured`, `is_tranding`, `todays_deal`, `sold_qty`, `code`, `unit_type`, `type`, `minimum_qty`, `thumbnail_image`, `thumbnail_image2`, `gallery_images`, `video_provider`, `video_link`, `variant_product`, `attributes`, `choice_options`, `colors`, `variations`, `feature`, `description`, `pdf_specification`, `is_active`, `tags`, `meta_title`, `meta_description`, `meta_keywords`, `meta_image`, `created_at`, `updated_at`) VALUES
(97, 'iPhone 15 Pro Max', 10, 0, 0, NULL, NULL, 'no', NULL, 0, 1, 1, 1, '0', 'A15PRM20240001', 'pcs', 'variation', NULL, '17091167911142065865.jpeg', NULL, NULL, NULL, NULL, NULL, '[\"7\"]', NULL, '[\"151\"]', NULL, '<h2 class=\"font-SFProDisplayMedium text-2xl px-2 py-2 w-max text-secondary border-b-2 border-primary mb-4\">Specification</h2>\r\n<section>\r\n<table class=\"table-auto w-full text-left\">\r\n<tbody>\r\n<tr>\r\n<td class=\"border border-card-3 p-2 w-28\">Brand</td>\r\n<td class=\"border border-card-3 p-2\">Apple</td>\r\n</tr>\r\n<tr>\r\n<td class=\"border border-card-3 p-2 w-28\">Dimension</td>\r\n<td class=\"border border-card-3 p-2\">159.9 x 76.7 x 8.3 mm</td>\r\n</tr>\r\n<tr>\r\n<td class=\"border border-card-3 p-2 w-28\">Weight</td>\r\n<td class=\"border border-card-3 p-2\">221 g</td>\r\n</tr>\r\n<tr>\r\n<td class=\"border border-card-3 p-2 w-28\">Model</td>\r\n<td class=\"border border-card-3 p-2\">iPhone 15 Pro Max</td>\r\n</tr>\r\n<tr>\r\n<td class=\"border border-card-3 p-2 w-28\">Display Size</td>\r\n<td class=\"border border-card-3 p-2\">6.7 inches</td>\r\n</tr>\r\n<tr>\r\n<td class=\"border border-card-3 p-2 w-28\">Display Type</td>\r\n<td class=\"border border-card-3 p-2\">LTPO Super Retina XDR OLED | 120Hz I HDR10 | Dolby Vision | 2000 nits</td>\r\n</tr>\r\n<tr>\r\n<td class=\"border border-card-3 p-2 w-28\">Display Resolution</td>\r\n<td class=\"border border-card-3 p-2\">1290 x 2796 pixels</td>\r\n</tr>\r\n<tr>\r\n<td class=\"border border-card-3 p-2 w-28\">Chipset</td>\r\n<td class=\"border border-card-3 p-2\">Apple A17 Pro (3 nm)</td>\r\n</tr>\r\n<tr>\r\n<td class=\"border border-card-3 p-2 w-28\">Memory</td>\r\n<td class=\"border border-card-3 p-2\">256GB | 512GB | 1TB</td>\r\n</tr>\r\n<tr>\r\n<td class=\"border border-card-3 p-2 w-28\">Main Camera</td>\r\n<td class=\"border border-card-3 p-2\">48 MP(wide) | 12 MP (periscope telephoto) | 12 MP (ultrawide) | TOF 3D LiDAR scanner (depth) |Dual-LED dual-tone flash, HDR (photo/panorama) | 4K, 1080p, Dolby Vision HDR , ProRes, Cinematic mode , 3D (spatial) video</td>\r\n</tr>\r\n<tr>\r\n<td class=\"border border-card-3 p-2 w-28\">Selfie Camera</td>\r\n<td class=\"border border-card-3 p-2\">12 MP (wide) | SL 3D | HDR | Cinematic mode | 4K@24/25/30/60fps, 1080p, gyro-EIS</td>\r\n</tr>\r\n<tr>\r\n<td class=\"border border-card-3 p-2 w-28\">Battery Info</td>\r\n<td class=\"border border-card-3 p-2\">Li-Ion 4441 mAh | Non-removable | Wired Charging | 15W wireless (MagSafe) | 7.5W wireless (Qi)</td>\r\n</tr>\r\n<tr>\r\n<td class=\"border border-card-3 p-2 w-28\">Other Features / Info</td>\r\n<td class=\"border border-card-3 p-2\">USB Type-C 3.2 Gen 2 | Face ID | Emergency SOS via satellite | IP68 dust/water resistant</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</section>\r\n<table class=\"table table-bordered\" style=\"border-collapse: collapse; display: none; width: 100%;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 50%;\">Fabric</td>\r\n<td style=\"width: 50%;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 50%;\">Occasion</td>\r\n<td style=\"width: 50%;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 50%;\">Cut/Fit</td>\r\n<td style=\"width: 50%;\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>', '<h2 class=\"font-SFProDisplayMedium text-2xl px-2 py-2 w-max text-secondary border-b-2 border-primary mb-4\">Description</h2>\r\n<div class=\"decription-order-list\">\r\n<p><img src=\"https://adminapi.applegadgetsbd.com/storage/media/large/iphone-15-pro-model-unselect-gallery-1-202309-7742.jpg\"></p>\r\n<h2 dir=\"ltr\"><strong>iPhone 15 Pro Max</strong></h2>\r\n<p dir=\"ltr\">Meet the&nbsp;<a href=\"https://machinesrng.com/\">Apple</a>&nbsp;iPhone 15 Pro Max, a game-changing device that redefines the smartphone landscape and sets new industry standards. With its pioneering titanium construction, it sets a new standard for durability and elegance. Powered by a cutting-edge 3nm processor, this phone delivers unparalleled performance. The ultimate camera system, equipped with advanced features, promises magnificent photography and videography. Its high-resolution display offers a visual feast, and the optimized battery with a Type-C charger ensures convenience. Undoubtedly, the iPhone 15 Pro Max represents the Apex of smartphone innovation, making it the best phone to date.</p>\r\n<p dir=\"ltr\">&nbsp;</p>\r\n<h2 dir=\"ltr\"><strong>iPhone 15 Pro Max Features</strong>&nbsp;</h2>\r\n<ul>\r\n<li dir=\"ltr\" role=\"presentation\">Made of aerospace-grade titanium and collabs with awe-inspiring colors&nbsp;</li>\r\n<li dir=\"ltr\" role=\"presentation\">Titanium build makes it lightest and most durable smartphone on the market&nbsp;</li>\r\n<li dir=\"ltr\" role=\"presentation\">LTPO Super Retina XDR OLED display for a spectacular visual viewing&nbsp;</li>\r\n<li dir=\"ltr\" role=\"presentation\">Dynamic Island keeps you informed with every important notification on the phone</li>\r\n<li dir=\"ltr\" role=\"presentation\">A17Pro Bionic chipset fusions with latest software ensure flawless performance</li>\r\n<li dir=\"ltr\" role=\"presentation\">Cutting-edge Monsters 3nm CPU and Pro-Class GPU provide immersive mobile gaming&nbsp;</li>\r\n<li dir=\"ltr\" role=\"presentation\">48MP triple camera system takes enthralling photos with micro details and color</li>\r\n<li dir=\"ltr\" role=\"presentation\">It not only records spellbinding videos but also relive them through VisionPro</li>\r\n<li dir=\"ltr\" role=\"presentation\">An exclusive Multi-functional action button elevates convenience and control</li>\r\n<li dir=\"ltr\" role=\"presentation\">A substantial battery with upgraded optimization ensures a long battery life</li>\r\n<li dir=\"ltr\" role=\"presentation\">Introducing the Universal Type-C charger guarantees seamless iPhone charging&nbsp;</li>\r\n<li dir=\"ltr\" role=\"presentation\">Newly added Roadside Assistance via satellite service provides peace of mind on the go</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<h2 dir=\"ltr\"><strong>iPhone 15 Pro Max Price in Bangladesh</strong></h2>\r\n<p dir=\"ltr\">The latest iPhone 15 Pro Max price in Bangladesh starts from&nbsp;<span id=\"docs-internal-guid-19bd5a2c-7fff-1c12-8b8d-6ba6aeeedcc8\"><strong><span id=\"prod__34952\">155500</span></strong></span>&nbsp;BDT.&nbsp;<span data-sheets-root=\"1\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;Fantastic camera-featured phone with the best BD price offers by Apple Gadgets. Shop now.&quot;}\" data-sheets-userformat=\"{&quot;2&quot;:513,&quot;3&quot;:{&quot;1&quot;:0},&quot;12&quot;:0}\">Fantastic camera-featured phone with the best BD price offers by Apple Gadgets.</span></p>\r\n<p dir=\"ltr\">&nbsp;</p>\r\n<h2 dir=\"ltr\"><strong>Where to buy iPhone 15 Pro Max in Bangladesh?</strong></h2>\r\n<p dir=\"ltr\">Looking for the best place to purchase the latest Apple products or other top-quality gadgets in Bangladesh? Look no further than Apple Gadgets, the unparalleled leader in providing top-notch gadgets in the country. Enjoy the convenience of two shopping options with us &ndash; either through our seamless online platform (<a href=\"https://machinesrng.com/\">Apple Gadgets</a>) or by visiting our physical outlets in different locations. Rest assured, we have you covered for all your gadget needs including iPhone 15 Pro Max.</p>\r\n<p dir=\"ltr\">&nbsp;</p>\r\n<p dir=\"ltr\">See more products in the&nbsp;<a href=\"https://machinesrng.com/\">iPhone</a> category.</p>\r\n<h2 class=\"font-SFProDisplayMedium text-2xl px-2 py-2 w-max text-secondary border-b-2 border-primary mb-4\">Warranty</h2>\r\n<div>\r\n<p>&nbsp;<strong>Apple Store 1 Year Warranty Support</strong>&nbsp;</p>\r\n</div>\r\n<p dir=\"ltr\"><span class=\"pt-4\">Explore our&nbsp;<a class=\" text-primary\" href=\"https://machinesrng.com/\">Warranty Policy</a>&nbsp;page for detailed information about our warranty coverage.</span></p>\r\n</div>', NULL, 1, NULL, NULL, NULL, NULL, NULL, '2024-02-28 21:39:51', '2024-02-28 21:40:27'),
(98, 'Redmi Note 13 Pro 5G', 11, 0, 0, NULL, NULL, 'no', NULL, 0, 1, 1, 1, '0', 'X13PR5', 'pcs', 'variation', NULL, '17091196661372536472.jpeg', NULL, NULL, NULL, NULL, NULL, '[\"7\"]', NULL, '[\"158\"]', NULL, '<h2 class=\"font-SFProDisplayMedium text-2xl px-2 py-2 w-max text-secondary border-b-2 border-primary mb-4\">Specification</h2>\r\n<section>\r\n<table class=\"table-auto w-full text-left\">\r\n<tbody>\r\n<tr>\r\n<td class=\"border border-card-3 p-2 w-28\">Brand</td>\r\n<td class=\"border border-card-3 p-2\">Xiaomi</td>\r\n</tr>\r\n<tr>\r\n<td class=\"border border-card-3 p-2 w-28\">Model</td>\r\n<td class=\"border border-card-3 p-2\">Redmi Note 13 Pro</td>\r\n</tr>\r\n<tr>\r\n<td class=\"border border-card-3 p-2 w-28\">Display Size</td>\r\n<td class=\"border border-card-3 p-2\">6.67 inches</td>\r\n</tr>\r\n<tr>\r\n<td class=\"border border-card-3 p-2 w-28\">Display Type</td>\r\n<td class=\"border border-card-3 p-2\">OLED | 68B colors | 120Hz | Dolby Vision | 1800 nits</td>\r\n</tr>\r\n<tr>\r\n<td class=\"border border-card-3 p-2 w-28\">Display Resolution</td>\r\n<td class=\"border border-card-3 p-2\">1220 x 2712 pixels</td>\r\n</tr>\r\n<tr>\r\n<td class=\"border border-card-3 p-2 w-28\">Chipset</td>\r\n<td class=\"border border-card-3 p-2\">Snapdragon 7s Gen 2 (4 nm)</td>\r\n</tr>\r\n<tr>\r\n<td class=\"border border-card-3 p-2 w-28\">Memory</td>\r\n<td class=\"border border-card-3 p-2\">128GB 8GB RAM | 256GB 8GB RAM | 256GB 12GB RAM | 512GB 12GB RAM | 512GB 16GB RAM</td>\r\n</tr>\r\n<tr>\r\n<td class=\"border border-card-3 p-2 w-28\">Main Camera</td>\r\n<td class=\"border border-card-3 p-2\">200 MP (wide) | 8 MP (ultrawide) | 2 MP (macro) | Dual-LED dual-tone flash, HDR, panorama | 4K@30fps, 1080p@30/60/120fps</td>\r\n</tr>\r\n<tr>\r\n<td class=\"border border-card-3 p-2 w-28\">Selfie Camera</td>\r\n<td class=\"border border-card-3 p-2\">16 MP | HDR | 1080p@30/60fps</td>\r\n</tr>\r\n<tr>\r\n<td class=\"border border-card-3 p-2 w-28\">Battery Info</td>\r\n<td class=\"border border-card-3 p-2\">Li-Po 5100 mAh | Non-removable | 67W wired Charging, PD3.0</td>\r\n</tr>\r\n<tr>\r\n<td class=\"border border-card-3 p-2 w-28\">Other Features / Info</td>\r\n<td class=\"border border-card-3 p-2\">161.2 x 74.3 x 8 mm (Dimension) | 187 g | Corning Gorilla Glass Victus | USB Type-C 2.0 | Fingerprint (under display, optical)</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</section>\r\n<table class=\"table table-bordered\" style=\"border-collapse: collapse; display: none; width: 100%;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 50%;\">Fabric</td>\r\n<td style=\"width: 50%;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 50%;\">Occasion</td>\r\n<td style=\"width: 50%;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 50%;\">Cut/Fit</td>\r\n<td style=\"width: 50%;\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>', '<div id=\"tabDescription\" class=\"px-3 pb-4 rounded drop-shadow bg-white mt-6\">\r\n<h2 class=\"font-SFProDisplayMedium text-2xl px-2 py-2 w-max text-secondary border-b-2 border-primary mb-4\">Description</h2>\r\n<div class=\"decription-order-list\">\r\n<h2 dir=\"ltr\"><strong><img src=\"https://adminapi.applegadgetsbd.com/storage/media/large/Redmi-Note-13-Pro-5G-Price-in-Bangladesh-9433.jpg\"></strong></h2>\r\n<h2 dir=\"ltr\"><strong>Redmi Note 13 Pro 5G</strong></h2>\r\n<p dir=\"ltr\">The&nbsp;<a href=\"https://machinesrng.com/\">Xiaomi</a>&nbsp;Redmi Mi 13 Pro is a smartphone that excels in both style and performance. With its sturdy construction featuring Gorilla Glass, it offers durability along with an elegant appearance. Available in various captivating colors, it is sure to catch your eye with its blemishing finishes. The bezel-less display provides an immersive visual experience, complemented by its high-performance capabilities for seamless multitasking. Equipped with a mega battery, it ensures that it keeps up with your demanding lifestyle. Prepare to be pleasantly surprised by the Redmi Mi 13 Pro\'s impressive blend of style and power.</p>\r\n<p><strong>&nbsp;</strong></p>\r\n<h2 dir=\"ltr\"><strong>Redmi Note 13 Pro 5G Features</strong></h2>\r\n<ul>\r\n<li dir=\"ltr\" role=\"presentation\">200 MP camera system Samsung HP3 flagship sensors for magnificent imaging</li>\r\n<li dir=\"ltr\" role=\"presentation\">An ultra-narrow bezel and ridiculously smooth display for immaculate visual</li>\r\n<li dir=\"ltr\" role=\"presentation\">Snapdragon 7 gen 2 chip with extraordinary hardware for awe-inspiring performance</li>\r\n<li dir=\"ltr\" role=\"presentation\">Second generation 1.5K high-gloss eye protection screen to protect your eyes</li>\r\n<li dir=\"ltr\" role=\"presentation\">5100mAh battery with 67w fast charging To prolong your time for discovery</li>\r\n<li dir=\"ltr\" role=\"presentation\">The new Kingkong skeleton structure with Victus makes it indestructible&nbsp;&nbsp;</li>\r\n</ul>\r\n<h2 dir=\"ltr\">&nbsp;</h2>\r\n<h2 dir=\"ltr\"><strong>Redmi Note 13 Pro 5G Price in Bangladesh</strong></h2>\r\n<p dir=\"ltr\">The latest Redmi Note 13 Pro price in Bangladesh starts from&nbsp;<strong><span id=\"prod__38667\">35000</span></strong>&nbsp;BDT.&nbsp;<span data-sheets-root=\"1\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;Redmi 11 Prime is a powerful and affordable smartphone that offers great value. Buy now.&quot;}\" data-sheets-userformat=\"{&quot;2&quot;:14851,&quot;3&quot;:{&quot;1&quot;:0},&quot;4&quot;:{&quot;1&quot;:2,&quot;2&quot;:16777215},&quot;12&quot;:0,&quot;14&quot;:{&quot;1&quot;:2,&quot;2&quot;:2039583},&quot;15&quot;:&quot;\\&quot;Google Sans\\&quot;, Roboto, sans-serif&quot;,&quot;16&quot;:9}\">Redmi Note 13 Pro is a powerful and affordable smartphone that offers great value.</span></p>\r\n<p dir=\"ltr\">&nbsp;</p>\r\n<h2 dir=\"ltr\"><strong>Where to buy Redmi Note 13 Pro 5G in Bangladesh?</strong></h2>\r\n<p dir=\"ltr\">Looking for the best place to purchase the latest Apple products or other top-quality gadgets in Bangladesh? Look no further than Apple Gadgets, the unparalleled leader in providing top-notch gadgets in the country. Enjoy the convenience of two shopping options with us &ndash; either through our seamless online platform (<a href=\"https://machinesrng.com/\">Apple Gadgets</a>) or by visiting our physical outlets in different locations. Rest assured, we have you covered for all your gadget needs including Redmi Note 13 Pro.</p>\r\n<p dir=\"ltr\">&nbsp;</p>\r\n<p dir=\"ltr\">See more products in the&nbsp;<a href=\"https://machinesrng.com/\">Xiaomi</a>&nbsp;category.<br><br></p>\r\n<h2 dir=\"ltr\"><strong>Check Others Model Price</strong></h2>\r\n<ul>\r\n<li><a href=\"https://machinesrng.com/\">Redmi Note 13</a></li>\r\n<li><a href=\"https://machinesrng.com/\">Redmi Note 13 Pro Plus</a></li>\r\n<li><a href=\"https://machinesrng.com/\">Redmi Note 12 Pro 5G - INT</a></li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div id=\"tabWarranty\" class=\"px-3 pb-4 rounded drop-shadow bg-white mt-6\">\r\n<h2 class=\"font-SFProDisplayMedium text-2xl px-2 py-2 w-max text-secondary border-b-2 border-primary mb-4\">Warranty</h2>\r\n<span class=\"pt-4\">Explore our&nbsp;<a class=\" text-primary\" href=\"https://machinesrng.com/\">Warranty Policy</a>&nbsp;page for detailed information about our warranty coverage.</span></div>', NULL, 1, NULL, NULL, NULL, NULL, NULL, '2024-02-28 22:27:46', '2024-02-28 22:27:46'),
(99, 'Galaxy F34 5G', 12, 0, 0, NULL, NULL, 'no', NULL, 0, 1, 1, 1, '0', 'SGF345G', 'pcs', 'variation', NULL, '17091213432021691704.jpeg', NULL, NULL, NULL, NULL, NULL, '[\"7\"]', NULL, '[\"159\",\"160\",\"161\"]', NULL, '<h2 class=\"font-SFProDisplayMedium text-2xl px-2 py-2 w-max text-secondary border-b-2 border-primary mb-4\">Specification</h2>\r\n<section>\r\n<table class=\"table-auto w-full text-left\">\r\n<tbody>\r\n<tr>\r\n<td class=\"border border-card-3 p-2 w-28\">Dimension</td>\r\n<td class=\"border border-card-3 p-2\">161.7 x 77.2 x 8.8</td>\r\n</tr>\r\n<tr>\r\n<td class=\"border border-card-3 p-2 w-28\">Weight</td>\r\n<td class=\"border border-card-3 p-2\">208 grams</td>\r\n</tr>\r\n<tr>\r\n<td class=\"border border-card-3 p-2 w-28\">Platform</td>\r\n<td class=\"border border-card-3 p-2\">OS: One UI 5.1 Based on Android 13 Processor: Exynos 1280 (5 nm) | Up To 2.4GHz GPU: Mali-G68</td>\r\n</tr>\r\n<tr>\r\n<td class=\"border border-card-3 p-2 w-28\">Brand</td>\r\n<td class=\"border border-card-3 p-2\">Samsung</td>\r\n</tr>\r\n<tr>\r\n<td class=\"border border-card-3 p-2 w-28\">Sensors</td>\r\n<td class=\"border border-card-3 p-2\">Accelerometer | Fingerprint Sensor | Gyro Sensor | Geomagnetic Sensor | Light Sensor | Virtual Proximity Sensing</td>\r\n</tr>\r\n<tr>\r\n<td class=\"border border-card-3 p-2 w-28\">Network</td>\r\n<td class=\"border border-card-3 p-2\">Wi-Fi 802.11 a/b/g/n/ac | dual-band | Wi-Fi Direct | Bluetooth v5.3</td>\r\n</tr>\r\n<tr>\r\n<td class=\"border border-card-3 p-2 w-28\">Model</td>\r\n<td class=\"border border-card-3 p-2\">Galaxy F34 5G</td>\r\n</tr>\r\n<tr>\r\n<td class=\"border border-card-3 p-2 w-28\">Display Size</td>\r\n<td class=\"border border-card-3 p-2\">6.5-Inch</td>\r\n</tr>\r\n<tr>\r\n<td class=\"border border-card-3 p-2 w-28\">Resolution</td>\r\n<td class=\"border border-card-3 p-2\">1080 x 2340 (FHD+)</td>\r\n</tr>\r\n<tr>\r\n<td class=\"border border-card-3 p-2 w-28\">Display Type</td>\r\n<td class=\"border border-card-3 p-2\">Super AMOLED 16 million Color Depth | 120 Hz Refresh Rate | Rounded Corners | Gorilla Glass 5 Protection</td>\r\n</tr>\r\n<tr>\r\n<td class=\"border border-card-3 p-2 w-28\">Memory</td>\r\n<td class=\"border border-card-3 p-2\">128GB+6GB RAM |128GB+8GB RAM | UFS 2.2 External Storage: MicroSD (Up to 1TB)</td>\r\n</tr>\r\n<tr>\r\n<td class=\"border border-card-3 p-2 w-28\">Main Camera</td>\r\n<td class=\"border border-card-3 p-2\">50.0 MP (Wide) + 8.0 MP (Ultrawide) + 2.0 MP | Digital Zoom up to 10x | OIS | UHD 4K (3840 x 2160)@30fps | Slow Motion 240fps @HD</td>\r\n</tr>\r\n<tr>\r\n<td class=\"border border-card-3 p-2 w-28\">Selfie Camera</td>\r\n<td class=\"border border-card-3 p-2\">13MP (Wide) | 1080p@30fps</td>\r\n</tr>\r\n<tr>\r\n<td class=\"border border-card-3 p-2 w-28\">Battery Info</td>\r\n<td class=\"border border-card-3 p-2\">6000mAh | Non-Removable | Up to 51hour Talk Time</td>\r\n</tr>\r\n<tr>\r\n<td class=\"border border-card-3 p-2 w-28\">Audio</td>\r\n<td class=\"border border-card-3 p-2\">Surround Sound | 3.5mm Headphone Jack | Dolby Atmos Headphones Supported</td>\r\n</tr>\r\n<tr>\r\n<td class=\"border border-card-3 p-2 w-28\">Color</td>\r\n<td class=\"border border-card-3 p-2\">Electric Black | Mystic Green | Orchid Violet</td>\r\n</tr>\r\n<tr>\r\n<td class=\"border border-card-3 p-2 w-28\">Other Features / Info</td>\r\n<td class=\"border border-card-3 p-2\">Knox security | 4 Gen OS Upgrades &amp; 5 years Security Updates</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</section>\r\n<table class=\"table table-bordered\" style=\"border-collapse: collapse; display: none; width: 100%;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 50%;\">Fabric</td>\r\n<td style=\"width: 50%;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 50%;\">Occasion</td>\r\n<td style=\"width: 50%;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 50%;\">Cut/Fit</td>\r\n<td style=\"width: 50%;\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>', '<div id=\"tabDescription\" class=\"px-3 pb-4 rounded drop-shadow bg-white mt-6\">\r\n<h2 class=\"font-SFProDisplayMedium text-2xl px-2 py-2 w-max text-secondary border-b-2 border-primary mb-4\">Description</h2>\r\n<div class=\"decription-order-list\">\r\n<p><img src=\"https://adminapi.applegadgetsbd.com/storage/media/large/Galaxy-F34-5G-Price-in-Bangladesh-8225.jpg\"></p>\r\n<h2 dir=\"ltr\"><strong>Samsung Galaxy F34 5G</strong></h2>\r\n<p dir=\"ltr\">Experience greater features with the new&nbsp;<a href=\"https://machinesrng.com/\">Samsung</a>&nbsp;Galaxy F34 5G, which comes with a 6.5-inch Super AMOLED display. Smoother operation and os interaction with the 120Hz faster refresh rate. Loading multiple apps effortlessly with the efficient Exynos 1280 processor that provides up to 2.4GHz for smooth performance. Greater storage of your favorite memories with expandable micro SD storage options. Capture remarkable photos with the 50 wide angle camera and record greater vlog videos from ultra HD 4K capability. Bigger battery power around 6000mAh delivers longer workflow and productivity to do better things.</p>\r\n<p dir=\"ltr\">&nbsp;</p>\r\n<h2 dir=\"ltr\"><strong>Samsung Galaxy F34 5G Features</strong></h2>\r\n<ul>\r\n<li dir=\"ltr\" role=\"presentation\">Gorgeous visuals from Stunning 6.5-inch AMOLED display for enjoying vivid contents;</li>\r\n<li dir=\"ltr\" role=\"presentation\">Smoother operation and swift touch experience from the 120Hz refresh rate;</li>\r\n<li dir=\"ltr\" role=\"presentation\">Effortless scrolling and do worry-free gaming with Exynos 1280&rsquo;s 5nm processor;</li>\r\n<li dir=\"ltr\" role=\"presentation\">Store more photos and videos with a 1 terabyte of expandable MicroSD supports;</li>\r\n<li dir=\"ltr\" role=\"presentation\">Record quality contents for your social media with ultra-hd 4K recording at 30fps;</li>\r\n<li dir=\"ltr\" role=\"presentation\">Connect your favorite headset and experience Dolby Atmos sound from 3.5mm jack;</li>\r\n<li dir=\"ltr\" role=\"presentation\">Ensures long-lasting battery life from the 6000mAh non-removable battery;</li>\r\n<li dir=\"ltr\" role=\"presentation\">Corning Gorilla Glass 5 ensures durable build quality against scratches;</li>\r\n<li dir=\"ltr\" role=\"presentation\">Protect your private matters without any hassle with Samsung&rsquo;s Knox security.</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<h2 dir=\"ltr\"><strong>Samsung Galaxy F34 5G price in Bangladesh</strong></h2>\r\n<p dir=\"ltr\">The latest price of Samsung Galaxy F34 5G in Bangladesh starts from&nbsp;<strong><span id=\"prod__37898\">22500</span>&nbsp;BDT</strong>. Galaxy F34 is a powerful and affordable smartphone that offers great value.&nbsp;<br><br></p>\r\n<h2 dir=\"ltr\"><strong>Where to buy Samsung Galaxy F34 5G in Bangladesh?</strong></h2>\r\n<p dir=\"ltr\">Looking for the best place to purchase the latest gaming laptops, Apple products, or other top-quality gadgets in Bangladesh? Look no further than Apple Gadgets, the unparalleled leader in providing top-notch gadgets in the country. Enjoy the convenience of two shopping options with us &ndash; either through our seamless online platform (<a href=\"https://machinesrng.com/\">Apple Gadgets</a>) or by visiting our physical outlets in different locations. Rest assured, we have you covered for all your gadget needs including Samsung Galaxy F34 5G.</p>\r\n<p dir=\"ltr\">&nbsp;</p>\r\n<p>See more products in the&nbsp;<a href=\"https://machinesrng.com/\">Samsung</a>&nbsp;category.</p>\r\n</div>\r\n</div>\r\n<div id=\"tabWarranty\" class=\"px-3 pb-4 rounded drop-shadow bg-white mt-6\">\r\n<h2 class=\"font-SFProDisplayMedium text-2xl px-2 py-2 w-max text-secondary border-b-2 border-primary mb-4\">Warranty</h2>\r\n<span class=\"pt-4\">Explore our&nbsp;<a class=\" text-primary\" href=\"https://machinesrng.com/\">Warranty Policy</a>&nbsp;page for detailed information about our warranty coverage.</span></div>', NULL, 1, NULL, NULL, NULL, NULL, NULL, '2024-02-28 22:55:43', '2024-02-28 22:55:43'),
(100, 'Pixel 8 Pro', 13, 0, 0, NULL, NULL, 'no', NULL, 0, 1, 1, 1, '0', 'GP8PR', 'pcs', 'variation', NULL, '17091221381630680332.jpeg', NULL, NULL, NULL, NULL, NULL, '[\"7\"]', NULL, '[\"162\",\"163\",\"164\"]', NULL, '<h2 class=\"font-SFProDisplayMedium text-2xl px-2 py-2 w-max text-secondary border-b-2 border-primary mb-4\">Specification</h2>\r\n<section>\r\n<table class=\"table-auto w-full text-left\">\r\n<tbody>\r\n<tr>\r\n<td class=\"border border-card-3 p-2 w-28\">Brand</td>\r\n<td class=\"border border-card-3 p-2\">Google</td>\r\n</tr>\r\n<tr>\r\n<td class=\"border border-card-3 p-2 w-28\">Model</td>\r\n<td class=\"border border-card-3 p-2\">Pixel 8 Pro</td>\r\n</tr>\r\n<tr>\r\n<td class=\"border border-card-3 p-2 w-28\">Display Size</td>\r\n<td class=\"border border-card-3 p-2\">6.7 inches</td>\r\n</tr>\r\n<tr>\r\n<td class=\"border border-card-3 p-2 w-28\">Display Type</td>\r\n<td class=\"border border-card-3 p-2\">LTPO OLED | 120Hz | HDR10+ | 2400 nits</td>\r\n</tr>\r\n<tr>\r\n<td class=\"border border-card-3 p-2 w-28\">Display Resolution</td>\r\n<td class=\"border border-card-3 p-2\">1344 x 2992 pixels</td>\r\n</tr>\r\n<tr>\r\n<td class=\"border border-card-3 p-2 w-28\">Dimension</td>\r\n<td class=\"border border-card-3 p-2\">162.6 x 76.5 x 8.8 mm</td>\r\n</tr>\r\n<tr>\r\n<td class=\"border border-card-3 p-2 w-28\">Chipset</td>\r\n<td class=\"border border-card-3 p-2\">Google Tensor G3 (4 nm)</td>\r\n</tr>\r\n<tr>\r\n<td class=\"border border-card-3 p-2 w-28\">Memory</td>\r\n<td class=\"border border-card-3 p-2\">128GB 12GB RAM | 256GB 12GB RAM | 512GB 12GB RAM | 1TB 12GB RAM</td>\r\n</tr>\r\n<tr>\r\n<td class=\"border border-card-3 p-2 w-28\">Main Camera</td>\r\n<td class=\"border border-card-3 p-2\">50 MP (wide) | 48 MP (telephoto) | 48 MP (ultrawide) | Dual-LED flash, Pixel Shift, Ultra-HDR, panorama | 4K@30/60fps, 1080p@24/30/60/120/240fps;</td>\r\n</tr>\r\n<tr>\r\n<td class=\"border border-card-3 p-2 w-28\">Selfie Camera</td>\r\n<td class=\"border border-card-3 p-2\">10.5 MP (ultrawide) | Auto-HDR, panorama | 4K@24/30/60fps, 1080p@30/60fps</td>\r\n</tr>\r\n<tr>\r\n<td class=\"border border-card-3 p-2 w-28\">Weight</td>\r\n<td class=\"border border-card-3 p-2\">213 g</td>\r\n</tr>\r\n<tr>\r\n<td class=\"border border-card-3 p-2 w-28\">Battery Info</td>\r\n<td class=\"border border-card-3 p-2\">Li-Ion 5050 mAh | Non-removable | 30W wired Charging | 23W wireless Charging</td>\r\n</tr>\r\n<tr>\r\n<td class=\"border border-card-3 p-2 w-28\">Other Features / Info</td>\r\n<td class=\"border border-card-3 p-2\">IP68 dust/water resistant | Corning Gorilla Glass Victus 2 | Always-on display</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</section>\r\n<table class=\"table table-bordered\" style=\"border-collapse: collapse; display: none; width: 100%;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 50%;\">Fabric</td>\r\n<td style=\"width: 50%;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 50%;\">Occasion</td>\r\n<td style=\"width: 50%;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 50%;\">Cut/Fit</td>\r\n<td style=\"width: 50%;\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>', '<div id=\"tabDescription\" class=\"px-3 pb-4 rounded drop-shadow bg-white mt-6\">\r\n<h2 class=\"font-SFProDisplayMedium text-2xl px-2 py-2 w-max text-secondary border-b-2 border-primary mb-4\">Description</h2>\r\n<div class=\"decription-order-list\">\r\n<h2 dir=\"ltr\"><strong><img src=\"https://adminapi.applegadgetsbd.com/storage/media/large/Pixel-8-Pro-Price-in-Bangladesh-1634.jpg\"></strong></h2>\r\n<h2 dir=\"ltr\"><strong>Pixel 8 Pro</strong></h2>\r\n<p dir=\"ltr\">The&nbsp;<a href=\"https://machinesrng.com/\">Google</a>&nbsp;Pixel 8 Pro marks the latest addition to the Pro lineup, boasting a meticulously polished design. It introduces upgraded software powered by the innovative Tensor G3 processor, promising a magical user experience. The device excels in both photography and display, offering users a truly remarkable and immersive experience. With its exceptional camera capabilities and cutting-edge technology, the Pixel 8 Pro is set to surprise users with its prowess and cement its position as a flagship smartphone in the market.</p>\r\n<p dir=\"ltr\">&nbsp;</p>\r\n<h2 dir=\"ltr\"><strong>Google Pixel 8 Pro Features</strong></h2>\r\n<ul>\r\n<li dir=\"ltr\" role=\"presentation\">Designed and constructed with alluring polished aluminum frame and matte back glass</li>\r\n<li dir=\"ltr\" role=\"presentation\">Large LTPO OLED display called super Actua display that has highest brightness ever</li>\r\n<li dir=\"ltr\" role=\"presentation\">Upgraded 50 MP camera system with magical editing features that have never seen&nbsp;</li>\r\n<li dir=\"ltr\" role=\"presentation\">Tensor G3 chip with custom-designed Google AI for super fast and efficient performance</li>\r\n<li dir=\"ltr\" role=\"presentation\">Robust build quality with scratch-resistant glass that protects the device from damage</li>\r\n<li dir=\"ltr\" role=\"presentation\">Not only surprise you with 24+ hours of battery life but also exceptionally fast charging</li>\r\n<li dir=\"ltr\" role=\"presentation\">12GB of RAM does nothing but deliver a powerful seamless performance to you</li>\r\n<li dir=\"ltr\" role=\"presentation\">Google offers you an unbelievable 7 years of security updates and new feature drops</li>\r\n</ul>\r\n<p><strong>&nbsp;</strong></p>\r\n<h2 dir=\"ltr\"><strong>Google Pixel 8 Pro Price in Bangladesh</strong></h2>\r\n<p dir=\"ltr\">The latest Google Pixel 8 Pro price in Bangladesh starts from&nbsp;<span id=\"docs-internal-guid-19bd5a2c-7fff-1c12-8b8d-6ba6aeeedcc8\"><strong><span id=\"prod__34468\">98000</span></strong></span>&nbsp;<strong>BDT</strong>. Get this&nbsp; flagship Google Pixel 8 Pro from Apple Gadgets at a very reasonable price &amp; exciting offers.&nbsp;</p>\r\n<p dir=\"ltr\">&nbsp;</p>\r\n<h2 dir=\"ltr\"><strong>Where to buy Pixel 8 Pro in Bangladesh?</strong></h2>\r\n<p dir=\"ltr\">Looking for the best place to purchase latest gaming laptops, Apple products, or other top-quality gadgets in Bangladesh? Look no further than Apple Gadgets, the unparalleled leader in providing top-notch gadgets in the country. Enjoy the convenience of two shopping options with us &ndash; either through our seamless online platform (<a href=\"https://machinesrng.com/\">Apple Gadgets</a>) or by visiting our physical outlets in different locations. Rest assured, we have you covered for all your gadget needs including Google Pixel 8 Pro.</p>\r\n<p dir=\"ltr\">&nbsp;</p>\r\n<p dir=\"ltr\">See more products in the&nbsp;<a href=\"https://machinesrng.com/\">Google</a>&nbsp;category.</p>\r\n</div>\r\n</div>\r\n<div id=\"tabWarranty\" class=\"px-3 pb-4 rounded drop-shadow bg-white mt-6\">\r\n<h2 class=\"font-SFProDisplayMedium text-2xl px-2 py-2 w-max text-secondary border-b-2 border-primary mb-4\">Warranty</h2>\r\n<span class=\"pt-4\">Explore our&nbsp;<a class=\" text-primary\" href=\"https://machinesrng.com/\">Warranty Policy</a>&nbsp;page for detailed information about our warranty coverage.</span></div>', NULL, 1, NULL, NULL, NULL, NULL, NULL, '2024-02-28 23:08:58', '2024-02-28 23:12:01'),
(101, 'Galaxy S23 Ultra 5G', 12, 0, 0, NULL, NULL, 'no', NULL, 0, 1, 1, 1, '0', 'SGS23U5G', 'pcs', 'single', NULL, '17091241862080336366.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<h2 class=\"font-SFProDisplayMedium text-2xl px-2 py-2 w-max text-secondary border-b-2 border-primary mb-4\">Specification</h2>\r\n<section>\r\n<table class=\"table-auto w-full text-left\">\r\n<tbody>\r\n<tr>\r\n<td class=\"border border-card-3 p-2 w-28\">Brand</td>\r\n<td class=\"border border-card-3 p-2\">Samsung</td>\r\n</tr>\r\n<tr>\r\n<td class=\"border border-card-3 p-2 w-28\">Weight</td>\r\n<td class=\"border border-card-3 p-2\">234 grams</td>\r\n</tr>\r\n<tr>\r\n<td class=\"border border-card-3 p-2 w-28\">Model</td>\r\n<td class=\"border border-card-3 p-2\">Galaxy S23 Ultra 5G</td>\r\n</tr>\r\n<tr>\r\n<td class=\"border border-card-3 p-2 w-28\">Display Size</td>\r\n<td class=\"border border-card-3 p-2\">6.8 inches</td>\r\n</tr>\r\n<tr>\r\n<td class=\"border border-card-3 p-2 w-28\">Resolution</td>\r\n<td class=\"border border-card-3 p-2\">1440 x 3088 pixels</td>\r\n</tr>\r\n<tr>\r\n<td class=\"border border-card-3 p-2 w-28\">Display Type</td>\r\n<td class=\"border border-card-3 p-2\">Dynamic AMOLED 2X | Up to 120Hz | HDR10+ Certified | Edge Quad HD+ | 1750 nits (HBM) | 500 ppi</td>\r\n</tr>\r\n<tr>\r\n<td class=\"border border-card-3 p-2 w-28\">Dimension</td>\r\n<td class=\"border border-card-3 p-2\">163.4 x 78.1 x 8.9 mm</td>\r\n</tr>\r\n<tr>\r\n<td class=\"border border-card-3 p-2 w-28\">Chipset</td>\r\n<td class=\"border border-card-3 p-2\">Qualcomm SM8550-AC Snapdragon 8 Gen 2 (4 nm)</td>\r\n</tr>\r\n<tr>\r\n<td class=\"border border-card-3 p-2 w-28\">Memory</td>\r\n<td class=\"border border-card-3 p-2\">256GB 8GB RAM | 256GB 12GB RAM | 512GB 12GB RAM | 1TB 12GB RAM</td>\r\n</tr>\r\n<tr>\r\n<td class=\"border border-card-3 p-2 w-28\">Main Camera</td>\r\n<td class=\"border border-card-3 p-2\">200 MP Wide | 10 MP Periscope Telephoto | 10 MP Telephoto | 12MP Ultrawide 120&deg; | HDR10+ | Panorama | 8K@24/30fps (HDR) | 4K@30/60fps | Optical Zoom at 3x and 10x , Digital Zoom up to 100x</td>\r\n</tr>\r\n<tr>\r\n<td class=\"border border-card-3 p-2 w-28\">Selfie Camera</td>\r\n<td class=\"border border-card-3 p-2\">12 MP | HDR | panorama | 4K@30/60fps | 1080p@30/60fps | 720p@120fps | HDR10+</td>\r\n</tr>\r\n<tr>\r\n<td class=\"border border-card-3 p-2 w-28\">Battery Info</td>\r\n<td class=\"border border-card-3 p-2\">Li-Po 5000 mAh | Non-removable | 45W Wired | 15W Wireless | 4.5W Reverse Wireless | USB Type-C 3.2</td>\r\n</tr>\r\n<tr>\r\n<td class=\"border border-card-3 p-2 w-28\">Other Features / Info</td>\r\n<td class=\"border border-card-3 p-2\">Fingerprint (under display, ultrasonic) | Accelerometer | Gyro | Proximity | Compass | Barometer | Samsung DeX, Samsung Wireless DeX (desktop experience support) | Ultra Wideband (UWB) support</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</section>\r\n<table class=\"table table-bordered\" style=\"border-collapse: collapse; display: none; width: 100%;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 50%;\">Fabric</td>\r\n<td style=\"width: 50%;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 50%;\">Occasion</td>\r\n<td style=\"width: 50%;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 50%;\">Cut/Fit</td>\r\n<td style=\"width: 50%;\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>', '<div id=\"tabDescription\" class=\"px-3 pb-4 rounded drop-shadow bg-white mt-6\">\r\n<h2 class=\"font-SFProDisplayMedium text-2xl px-2 py-2 w-max text-secondary border-b-2 border-primary mb-4\">Description</h2>\r\n<div class=\"decription-order-list\">\r\n<p><img src=\"https://adminapi.applegadgetsbd.com/storage/media/large/Galaxy-S23-Ultra-Price-in-Bangladesh-5054.jpg\"></p>\r\n<h2 id=\"docs-internal-guid-a865da4b-7fff-9656-f2b0-ed0c1a45f7fe\" dir=\"ltr\"><strong>Galaxy S23 Ultra 5G</strong></h2>\r\n<p dir=\"ltr\"><a href=\"https://machinesrng.com/\">Samsung</a>&nbsp;Galaxy S23 Ultra 5G - the latest flagship from the Samsung Galaxy S series. The flagship smartphone thrills you with its proportionate design adjusted with numerous colors. Over and above, the whooping&nbsp;<strong>200MP main camera</strong>&nbsp;with bigger lenses steals the show with sensational photography. The fastest and top-notch performance lists the phone at the top.&nbsp;</p>\r\n<p dir=\"ltr\">&nbsp;</p>\r\n<h2 dir=\"ltr\"><strong>Samsung Galaxy S23 Ultra 5G- Flagship Features</strong></h2>\r\n<ul>\r\n<li dir=\"ltr\">Next Level Camera&nbsp;</li>\r\n<li dir=\"ltr\">Resplendent Design</li>\r\n<li dir=\"ltr\">Sensational Performance</li>\r\n<li dir=\"ltr\">Gigantic and Optimized Battery</li>\r\n</ul>\r\n<p dir=\"ltr\">&nbsp;</p>\r\n<h2 dir=\"ltr\"><strong>Samsung Galaxy S23 Ultra 5G- Overview</strong></h2>\r\n<h3 dir=\"ltr\"><strong>200MP Camera &ndash; Everything Becomes Next Level&nbsp;</strong></h3>\r\n<p dir=\"ltr\">Samsung Galaxy S23 Ultra 5G includes a whooping 200-megapixel main camera with multiple lenses with it. The sensors are bigger than ever and additionally, the camera system has light-absorbing pixels with the latest video stabilization technology. The blending of all these technologies outcome a masterpiece in every snap. Surely, it is eligible to snap the best photographs or record videos even if the shoot takes place at night or in very low light.</p>\r\n<p dir=\"ltr\">&nbsp;</p>\r\n<h4 dir=\"ltr\"><strong>Features That Make The Camera Best&nbsp;</strong></h4>\r\n<p dir=\"ltr\">Reengineered Nightography Camera with innumerable features with advanced camera sensors with balanced light and reduced noise to deliver the best night photographs ever. Whether it is a crisp or clear Night Portrait or other subjective photographs. Even the videography has great clarity. The OIS and noise-reducing tech include cinematic vibes in the video.</p>\r\n<p>&nbsp;</p>\r\n<p dir=\"ltr\">200MP Wide Angle camera holds a note-worthy resolution and demonstrates everything with unimagined clarity. Even Maximum zoom or crop can&rsquo;t escape the details of a photograph. Adaptive pixel technology makes it real by clearing up the noise and making everything crisp even in low light.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p dir=\"ltr\">Expert Raw feature including Ashtrophoto and Multi-Exposure modes gives you a detailed and clear raw photo of darkness and multiple objects.</p>\r\n<p dir=\"ltr\">&nbsp;</p>\r\n<h3 dir=\"ltr\"><strong>Supreme Processor To Seamless Performance</strong></h3>\r\n<p dir=\"ltr\">Samsung Galaxy S23 Ultra 5G packs an exclusive Snapdragon 8 Gen 2 Processor to take the performance to a whole new state. The chip works with a higher clock rate along with the other hardware (fastest RAM and optimized Storage). So high and games or an image shoot with 200MP never create any lag or latency after using the phone for straight hours. The phone remains cool after continuous usage. All thanks go to its larger vapor cooling chamber.</p>\r\n<p dir=\"ltr\">&nbsp;</p>\r\n<h3 dir=\"ltr\"><strong>Premium Design &amp; Dynamic Display</strong></h3>\r\n<p dir=\"ltr\">Samsung Galaxy S23 Ultra Comes with a premium design architecture. You can\'t deny the elegance of the phone. Built with the toughest gorilla glasses and aluminum frame in a perfect alignment of everything. The matte finishes with several ravishing colors make the phone eye catchy. The camera aligns on the back in a straight method yet the most elegant way.</p>\r\n<p dir=\"ltr\">Under the front gorilla glass, there is a Dynamic AMOLED 2X display. The display delivers clear, colorful visuals. Moreover, you can experience more details on the screen, whether dimmed down low or full-blast brightness. Moreover, 120Hz technology intelligently optimizes the refresh rate of the display. As a result, it smooths out the action of the phone and that saves the battery life.</p>\r\n<p dir=\"ltr\">&nbsp;</p>\r\n<h3 dir=\"ltr\"><strong>Big Optimized Battery Keeps it More Long Lasting</strong></h3>\r\n<p dir=\"ltr\">Samsung Galaxy S23 Ultra covers with a 5000 mAh battery with a smart battery system included into it. So the battery can be the fuel the long-lasting game sessions. Moreover, the intelligence of the battery saves power for go time, so you can game and stream into the night or watch a full season of your favorite show. But never feel worried about the charge because of the 45W fast charging capability of recharging the phone.</p>\r\n<p dir=\"ltr\">&nbsp;</p>\r\n<h2 dir=\"ltr\"><strong>Samsung Galaxy S23 Ultra 5G Price in Bangladesh</strong></h2>\r\n<p dir=\"ltr\">The latest Samsung Galaxy S23 Ultra 5G price in Bangladesh starts from&nbsp;<strong><span id=\"prod__24942\"><span id=\"prod__32958\">95500</span></span></strong>&nbsp;BDT. Samsung brings the ultimate smartphone experience with S23 Ultra 5G flagship.</p>\r\n<p dir=\"ltr\">&nbsp;</p>\r\n<h2 dir=\"ltr\"><strong>Where to buy Samsung Galaxy S23 Ultra 5G in Bangladesh?</strong></h2>\r\n<p dir=\"ltr\">Apple Gadgets &ndash; the tech superior in Bangladesh, is the foremost gadget seller where you can purchase your preferred gadget. They are renowned for their astounding service to consumers even after buying the product. This well-known gadget seller maintains a two-way platform to sell every kind of gadget including Samsung Galaxy S23 Ultra 5G.&nbsp;Purchase it from any Outlet or order it from the&nbsp;<a href=\"https://machinesrng.com/\">Apple Gadgets</a>&nbsp;Website.&nbsp;</p>\r\n<p dir=\"ltr\">&nbsp;</p>\r\n<p dir=\"ltr\">So, don&rsquo;t waste a second on 2nd thoughts. Grab your selected gadget from Apple Gadgets.</p>\r\n<p>&nbsp;</p>\r\n<p dir=\"ltr\">See more products on&nbsp;<a href=\"https://machinesrng.com/\">Samsung</a>&nbsp;category.</p>\r\n</div>\r\n</div>\r\n<div id=\"tabWarranty\" class=\"px-3 pb-4 rounded drop-shadow bg-white mt-6\">\r\n<h2 class=\"font-SFProDisplayMedium text-2xl px-2 py-2 w-max text-secondary border-b-2 border-primary mb-4\">Warranty</h2>\r\n<span class=\"pt-4\">Explore our&nbsp;<a class=\" text-primary\" href=\"https://machinesrng.com/\">Warranty Policy</a>&nbsp;page for detailed information about our warranty coverage.</span></div>', NULL, 1, NULL, NULL, NULL, NULL, NULL, '2024-02-28 23:43:06', '2024-02-28 23:43:06'),
(102, 'Realme 9i 5G', 14, 0, 0, NULL, NULL, 'no', NULL, 0, 1, 1, 1, '0', 'RM9I5G', 'pcs', 'variation', NULL, '1709198607305941473.jpeg', NULL, NULL, NULL, NULL, NULL, '[\"7\"]', NULL, '[\"166\",\"167\",\"168\"]', NULL, '<table class=\"table table-bordered\" style=\"border-collapse: collapse; display: none; width: 100%;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 50%;\">Fabric</td>\r\n<td style=\"width: 50%;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 50%;\">Occasion</td>\r\n<td style=\"width: 50%;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 50%;\">Cut/Fit</td>\r\n<td style=\"width: 50%;\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>', '<h2 class=\"font-SFProDisplayMedium text-2xl px-2 py-2 w-max text-secondary border-b-2 border-primary mb-4\">Description</h2>\r\n<div class=\"decription-order-list\">\r\n<p><img src=\"https://adminapi.applegadgetsbd.com/storage/media/large/realme-9i-5G-Price-in-Bangladesh-2040.jpg\"></p>\r\n<h2 class=\"font-SFProDisplayMedium text-2xl px-2 py-2 w-max text-secondary border-b-2 border-primary mb-4\">Warranty</h2>\r\n<p><span class=\"pt-4\">Explore our&nbsp;<a class=\" text-primary\" href=\"https://machinesrng.com/\">Warranty Policy</a>&nbsp;page for detailed information about our warranty coverage.</span></p>\r\n</div>', NULL, 1, NULL, NULL, NULL, NULL, NULL, '2024-02-29 20:23:27', '2024-02-29 20:23:27'),
(103, 'Vivo X90 Pro 5G', 15, 0, 0, NULL, NULL, 'no', NULL, 0, 1, 1, 1, '0', 'VIVOX90PR5G', 'pcs', 'variation', NULL, '17093574261179748555.jpeg', NULL, NULL, NULL, NULL, NULL, '[\"7\"]', NULL, '[\"169\",\"7\"]', NULL, '<div id=\"tabDescription\" class=\"px-3 pb-4 rounded drop-shadow bg-white mt-6\">\r\n<h2 class=\"font-SFProDisplayMedium text-2xl px-2 py-2 w-max text-secondary border-b-2 border-primary mb-4\">Description</h2>\r\n<div class=\"decription-order-list\">\r\n<p><img src=\"https://adminapi.applegadgetsbd.com/storage/media/large/vivo-X90-Pro-5G-Price-in-Bangladesh-2115.jpg\"></p>\r\n</div>\r\n</div>\r\n<div id=\"tabWarranty\" class=\"px-3 pb-4 rounded drop-shadow bg-white mt-6\">\r\n<h2 class=\"font-SFProDisplayMedium text-2xl px-2 py-2 w-max text-secondary border-b-2 border-primary mb-4\">Warranty</h2>\r\n<span class=\"pt-4\">Explore our&nbsp;<a class=\" text-primary\" href=\"https://machinesrng.com/\">Warranty Policy</a>&nbsp;page for detailed information about our warranty coverage.</span></div>\r\n<table class=\"table table-bordered\" style=\"border-collapse: collapse; display: none; width: 100%;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 50%;\">Fabric</td>\r\n<td style=\"width: 50%;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 50%;\">Occasion</td>\r\n<td style=\"width: 50%;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 50%;\">Cut/Fit</td>\r\n<td style=\"width: 50%;\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>', '<div id=\"tabDescription\" class=\"px-3 pb-4 rounded drop-shadow bg-white mt-6\">\r\n<h2 class=\"font-SFProDisplayMedium text-2xl px-2 py-2 w-max text-secondary border-b-2 border-primary mb-4\">Description</h2>\r\n<div class=\"decription-order-list\">\r\n<p><img src=\"https://adminapi.applegadgetsbd.com/storage/media/large/vivo-X90-Pro-5G-Price-in-Bangladesh-2115.jpg\"></p>\r\n</div>\r\n</div>\r\n<div id=\"tabWarranty\" class=\"px-3 pb-4 rounded drop-shadow bg-white mt-6\">\r\n<h2 class=\"font-SFProDisplayMedium text-2xl px-2 py-2 w-max text-secondary border-b-2 border-primary mb-4\">Warranty</h2>\r\n<span class=\"pt-4\">Explore our&nbsp;<a class=\" text-primary\" href=\"https://machinesrng.com/\">Warranty Policy</a>&nbsp;page for detailed information about our warranty coverage.</span></div>', NULL, 1, NULL, NULL, NULL, NULL, NULL, '2024-03-02 16:30:26', '2024-03-02 16:30:26');
INSERT INTO `products` (`id`, `title`, `brand_id`, `category_id`, `sub_category_id`, `purchase_price`, `price`, `discount_type`, `discount_amount`, `current_stock`, `is_featured`, `is_tranding`, `todays_deal`, `sold_qty`, `code`, `unit_type`, `type`, `minimum_qty`, `thumbnail_image`, `thumbnail_image2`, `gallery_images`, `video_provider`, `video_link`, `variant_product`, `attributes`, `choice_options`, `colors`, `variations`, `feature`, `description`, `pdf_specification`, `is_active`, `tags`, `meta_title`, `meta_description`, `meta_keywords`, `meta_image`, `created_at`, `updated_at`) VALUES
(104, 'Oppo Find N2 Flip', 16, 0, 0, NULL, NULL, 'no', NULL, 0, 1, 1, 1, '0', 'OFN2F', 'pcs', 'variation', NULL, '17093708582071362333.jpeg', NULL, NULL, NULL, NULL, NULL, '[]', NULL, '[\"143\",\"47\"]', NULL, '<h2 class=\"font-SFProDisplayMedium text-2xl px-2 py-2 w-max text-secondary border-b-2 border-primary mb-4\">Specification</h2>\r\n<section>\r\n<table class=\"table-auto w-full text-left\">\r\n<tbody>\r\n<tr>\r\n<td class=\"border border-card-3 p-2 w-28\">Brand</td>\r\n<td class=\"border border-card-3 p-2\">Oppo</td>\r\n</tr>\r\n<tr>\r\n<td class=\"border border-card-3 p-2 w-28\">Model</td>\r\n<td class=\"border border-card-3 p-2\">Oppo Find N2 Flip</td>\r\n</tr>\r\n<tr>\r\n<td class=\"border border-card-3 p-2 w-28\">Display Size</td>\r\n<td class=\"border border-card-3 p-2\">6.8 inches (Foldable) 3.26 inches (Cover)</td>\r\n</tr>\r\n<tr>\r\n<td class=\"border border-card-3 p-2 w-28\">Display Type</td>\r\n<td class=\"border border-card-3 p-2\">Foldable LTPO AMOLED, 120Hz, HDR10+, 1600 nits (Foldable) AMOLED, Corning Gorilla Glass 5 (Cover)</td>\r\n</tr>\r\n<tr>\r\n<td class=\"border border-card-3 p-2 w-28\">Display Resolution</td>\r\n<td class=\"border border-card-3 p-2\">1080 x 2520 pixels (Foldable) 382 x 720 pixels (Cover)</td>\r\n</tr>\r\n<tr>\r\n<td class=\"border border-card-3 p-2 w-28\">Chipset</td>\r\n<td class=\"border border-card-3 p-2\">Mediatek Dimensity 9000+ (4 nm)</td>\r\n</tr>\r\n<tr>\r\n<td class=\"border border-card-3 p-2 w-28\">Memory</td>\r\n<td class=\"border border-card-3 p-2\">256GB 8GB RAM | 256GB 12GB RAM | 512GB 16GB RAM</td>\r\n</tr>\r\n<tr>\r\n<td class=\"border border-card-3 p-2 w-28\">Main Camera</td>\r\n<td class=\"border border-card-3 p-2\">50 MP | 8MP | LED flash, HDR, panorama | 4K@30fps, 1080p@30/60/240fps</td>\r\n</tr>\r\n<tr>\r\n<td class=\"border border-card-3 p-2 w-28\">Selfie Camera</td>\r\n<td class=\"border border-card-3 p-2\">32 MP | HDR | 1080p@30fps</td>\r\n</tr>\r\n<tr>\r\n<td class=\"border border-card-3 p-2 w-28\">Battery Info</td>\r\n<td class=\"border border-card-3 p-2\">Li-Po 4300 mAh, non-removable, 44W wired Charging</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</section>\r\n<table class=\"table table-bordered\" style=\"border-collapse: collapse; display: none; width: 100%;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 50%;\">Fabric</td>\r\n<td style=\"width: 50%;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 50%;\">Occasion</td>\r\n<td style=\"width: 50%;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 50%;\">Cut/Fit</td>\r\n<td style=\"width: 50%;\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>', '<div id=\"tabDescription\" class=\"px-3 pb-4 rounded drop-shadow bg-white mt-6\">\r\n<h2 class=\"font-SFProDisplayMedium text-2xl px-2 py-2 w-max text-secondary border-b-2 border-primary mb-4\">Description</h2>\r\n<div class=\"decription-order-list\">\r\n<p><img src=\"data:image/jpeg;base64,/9j/4QAYRXhpZgAASUkqAAgAAAAAAAAAAAAAAP/sABFEdWNreQABAAQAAAA8AAD/4QMraHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLwA8P3hwYWNrZXQgYmVnaW49Iu+7vyIgaWQ9Ilc1TTBNcENlaGlIenJlU3pOVGN6a2M5ZCI/PiA8eDp4bXBtZXRhIHhtbG5zOng9ImFkb2JlOm5zOm1ldGEvIiB4OnhtcHRrPSJBZG9iZSBYTVAgQ29yZSA1LjMtYzAxMSA2Ni4xNDU2NjEsIDIwMTIvMDIvMDYtMTQ6NTY6MjcgICAgICAgICI+IDxyZGY6UkRGIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyI+IDxyZGY6RGVzY3JpcHRpb24gcmRmOmFib3V0PSIiIHhtbG5zOnhtcD0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLyIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bXA6Q3JlYXRvclRvb2w9IkFkb2JlIFBob3Rvc2hvcCBDUzYgKFdpbmRvd3MpIiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOjcyNDNBOTMxRDg0ODExRUQ4QzBGRkE2OTczNzJGN0NFIiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOjcyNDNBOTMyRDg0ODExRUQ4QzBGRkE2OTczNzJGN0NFIj4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6NzI0M0E5MkZEODQ4MTFFRDhDMEZGQTY5NzM3MkY3Q0UiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6NzI0M0E5MzBEODQ4MTFFRDhDMEZGQTY5NzM3MkY3Q0UiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz7/7gAOQWRvYmUAZMAAAAAB/9sAhAAGBAQEBQQGBQUGCQYFBgkLCAYG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\"></p>\r\n<h2 dir=\"ltr\"><strong>Oppo Find N2 Flip</strong></h2>\r\n<p dir=\"ltr\">The&nbsp;<a href=\"https://machinesrng.com/\">Oppo</a>&nbsp;N2 Flip boasts a sturdy design with the strongest hinge, ensuring durability and proper utilization of the crease. Its large cover screen offers multiple tasking abilities, enhancing productivity. The camera is a true marvel, featuring unbelievable capabilities with the renowned Hasselblad technology. The impressive battery life leaves users in awe. Overall, the phone exudes a next-gen feeling, providing a great vibe and an unparalleled smartphone experience.</p>\r\n<p dir=\"ltr\">&nbsp;</p>\r\n<h2 dir=\"ltr\"><strong>Oppo Find N2 Flip Features</strong></h2>\r\n<ul>\r\n<li dir=\"ltr\" role=\"presentation\">Oppo comes with industry-leading hinge for optimum crease control</li>\r\n<li dir=\"ltr\" role=\"presentation\">Has a perfect shape and handy grip for a pocket-sized flip phone</li>\r\n<li dir=\"ltr\" role=\"presentation\">One of the largest cover screen with clear view and multitasking ability&nbsp;</li>\r\n<li dir=\"ltr\" role=\"presentation\">Hasselblad collaboration for flexing the creative freedom in photography&nbsp;</li>\r\n<li dir=\"ltr\" role=\"presentation\">A 4nm powerful chipset with the latest software is empowering the performance</li>\r\n<li dir=\"ltr\" role=\"presentation\">All-day battery life with flashing speed charging capability just blows your mind</li>\r\n</ul>\r\n<p dir=\"ltr\">&nbsp;</p>\r\n<h2 dir=\"ltr\"><strong>Oppo Find N2 Flip Price in Bangladesh</strong></h2>\r\n<p dir=\"ltr\">The latest Oppo Find N2 Flip price in Bangladesh starts from&nbsp;<strong><span id=\"prod__27055\">135000</span></strong>&nbsp;BDT.&nbsp;<span data-sheets-root=\"1\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;Get this camera-centric flagship from Apple Gadgets to bring colors to your life.&quot;}\" data-sheets-userformat=\"{&quot;2&quot;:513,&quot;3&quot;:{&quot;1&quot;:0},&quot;12&quot;:0}\">Get this camera-centric flagship from Apple Gadgets to bring colors to your life.<br><br></span></p>\r\n<h2 dir=\"ltr\"><strong>Where to buy Oppo Find N2 Flip in Bangladesh?</strong></h2>\r\n<p dir=\"ltr\">Looking for the best place to purchase latest Apple products or other top-quality gadgets in Bangladesh? Look no further than Apple Gadgets, the unparalleled leader in providing top-notch gadgets in the country. Enjoy the convenience of two shopping options with us &ndash; either through our seamless online platform (<a href=\"https://machinesrng.com/\">Apple Gadgets</a>) or by visiting our physical outlets in different locations. Rest assured, we have you covered for all your gadget needs including Oppo Find N2 Flip.</p>\r\n<p dir=\"ltr\">&nbsp;</p>\r\n<p dir=\"ltr\">See more products in the&nbsp;<a href=\"https://machinesrng.com/\">OPPO</a>&nbsp;category.</p>\r\n</div>\r\n</div>\r\n<div id=\"tabWarranty\" class=\"px-3 pb-4 rounded drop-shadow bg-white mt-6\">\r\n<h2 class=\"font-SFProDisplayMedium text-2xl px-2 py-2 w-max text-secondary border-b-2 border-primary mb-4\">Warranty</h2>\r\n<span class=\"pt-4\">Explore our&nbsp;<a class=\" text-primary\" href=\"https://machinesrng.com/\">Warranty Policy</a>&nbsp;page for detailed information about our warranty coverage.</span></div>', NULL, 1, 'oppo find  n2 flip price in bangladesh', 'Oppo Find N2 Flip price in Bangladesh', 'oppo find  n2 flip price in bangladesh', 'oppo, find, oppo find, n2, oppo find  n2,  flip,  oppo find  n2 flip, price in bangladesh, oppo find  n2 flip price in bangladesh, price in bd, , oppo find  n2 flip price in bd', NULL, '2024-03-02 20:14:18', '2024-03-02 20:14:18'),
(105, 'HUAWEI P60 Pro 8/256GB', 17, 0, 0, NULL, NULL, 'no', NULL, 0, 1, 1, 1, '0', 'VKWXZ4', 'pcs', 'single', NULL, '17093713481722525511.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<h2 class=\"font-SFProDisplayMedium text-2xl px-2 py-2 w-max text-secondary border-b-2 border-primary mb-4\">Specification</h2>\r\n<section>\r\n<table class=\"table-auto w-full text-left\">\r\n<tbody>\r\n<tr>\r\n<td class=\"border border-card-3 p-2 w-28\">Brand</td>\r\n<td class=\"border border-card-3 p-2\">Huawei</td>\r\n</tr>\r\n<tr>\r\n<td class=\"border border-card-3 p-2 w-28\">Model</td>\r\n<td class=\"border border-card-3 p-2\">HUAWEI P60 Pro</td>\r\n</tr>\r\n<tr>\r\n<td class=\"border border-card-3 p-2 w-28\">Display Size</td>\r\n<td class=\"border border-card-3 p-2\">6.67 inches</td>\r\n</tr>\r\n<tr>\r\n<td class=\"border border-card-3 p-2 w-28\">Display Type</td>\r\n<td class=\"border border-card-3 p-2\">LTPO OLED, 120Hz, Kunlun Glass</td>\r\n</tr>\r\n<tr>\r\n<td class=\"border border-card-3 p-2 w-28\">Display Resolution</td>\r\n<td class=\"border border-card-3 p-2\">1220 x 2700 pixels</td>\r\n</tr>\r\n<tr>\r\n<td class=\"border border-card-3 p-2 w-28\">Chipset</td>\r\n<td class=\"border border-card-3 p-2\">Qualcomm Snapdragon 8+ Gen 1 4G (4 nm)</td>\r\n</tr>\r\n<tr>\r\n<td class=\"border border-card-3 p-2 w-28\">Memory</td>\r\n<td class=\"border border-card-3 p-2\">256GB 8GB RAM | 512GB 12GB RAM</td>\r\n</tr>\r\n<tr>\r\n<td class=\"border border-card-3 p-2 w-28\">Main Camera</td>\r\n<td class=\"border border-card-3 p-2\">48 MP (wide) | 48 MP (telephoto) | 13 MP (ultrawide) | LED flash, HDR, panorama | 4K@30/60fps, 1080p@30/60fps, 1080p@960fps; gyro-EIS</td>\r\n</tr>\r\n<tr>\r\n<td class=\"border border-card-3 p-2 w-28\">Selfie Camera</td>\r\n<td class=\"border border-card-3 p-2\">13 MP (ultrawide) | Features Panorama, HDR | 4K@30/60fps, 1080p@30fps</td>\r\n</tr>\r\n<tr>\r\n<td class=\"border border-card-3 p-2 w-28\">Battery Info</td>\r\n<td class=\"border border-card-3 p-2\">Li-Po 4815 mAh | 88W wired Charging | 50W wireless Charging</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</section>\r\n<table class=\"table table-bordered\" style=\"border-collapse: collapse; display: none; width: 100%;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 50%;\">Fabric</td>\r\n<td style=\"width: 50%;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 50%;\">Occasion</td>\r\n<td style=\"width: 50%;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 50%;\">Cut/Fit</td>\r\n<td style=\"width: 50%;\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>', '<div id=\"tabDescription\" class=\"px-3 pb-4 rounded drop-shadow bg-white mt-6\">\r\n<h2 class=\"font-SFProDisplayMedium text-2xl px-2 py-2 w-max text-secondary border-b-2 border-primary mb-4\">Description</h2>\r\n<div class=\"decription-order-list\">\r\n<p><img src=\"https://adminapi.applegadgetsbd.com/storage/media/large/HUAWEI-P60-Pro-Price-in-Bangladesh-3239.jpg\"></p>\r\n<h2 dir=\"ltr\"><strong>HUAWEI P60 Pro</strong></h2>\r\n<p dir=\"ltr\">The&nbsp;<a href=\"https://machinesrng.com/\">Huawei</a>&nbsp;P60 Pro is a top-of-the-line smartphone that offers a stunning design, powerful performance, and an incredible camera system. It has a quad-curve display that wraps around the edges of the phone, giving it a sleek and futuristic look. The XMAGE camera system is one of the best on the market, and it takes stunning photos and videos in any condition. The 88W Huawei Supercharge charges the phone quickly, so you can be back up and running in no time. Order your Huawei P60 Pro today from Apple Gadgets and experience the future of mobile technology.</p>\r\n<p dir=\"ltr\">&nbsp;</p>\r\n<h2 dir=\"ltr\"><strong>Huawei P60 Pro Features</strong>&nbsp;</h2>\r\n<ul>\r\n<li dir=\"ltr\" role=\"presentation\">A curvy finish with the mixing of some eye-popping blemishing finish</li>\r\n<li dir=\"ltr\" role=\"presentation\">A classical camera array perfectly fits on the back with pearl texture</li>\r\n<li dir=\"ltr\" role=\"presentation\">Ultra lighting XMAGE camera system with multiple exceptional features</li>\r\n<li dir=\"ltr\" role=\"presentation\">Telephoto camera, main camera with a physical aperture, and other features</li>\r\n<li dir=\"ltr\" role=\"presentation\">Quad curve display protected by the super sturdy kunlun glass on the top</li>\r\n<li dir=\"ltr\" role=\"presentation\">88W Huawei Supercharge ability charge the mega battery within minutes</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<h2 dir=\"ltr\"><strong>Huawei P60 Pro Price in Bangladesh</strong></h2>\r\n<p dir=\"ltr\">The latest Huawei P60 Pro price in Bangladesh starts from&nbsp;<strong><span id=\"prod__30894\">127000</span></strong>&nbsp;BDT. Huawei P60 Pro<span data-sheets-root=\"1\" data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;Redmi 11 Prime is a powerful and affordable smartphone that offers great value. Buy now.&quot;}\" data-sheets-userformat=\"{&quot;2&quot;:14851,&quot;3&quot;:{&quot;1&quot;:0},&quot;4&quot;:{&quot;1&quot;:2,&quot;2&quot;:16777215},&quot;12&quot;:0,&quot;14&quot;:{&quot;1&quot;:2,&quot;2&quot;:2039583},&quot;15&quot;:&quot;\\&quot;Google Sans\\&quot;, Roboto, sans-serif&quot;,&quot;16&quot;:9}\">&nbsp;is a powerful and affordable smartphone that offers great value.</span></p>\r\n<p dir=\"ltr\">&nbsp;</p>\r\n<h2 dir=\"ltr\"><strong>Where to buy Huawei P60 Pro in Bangladesh?</strong></h2>\r\n<p dir=\"ltr\">Looking for the best place to purchase latest gaming laptops, Apple products or other top-quality gadgets in Bangladesh? Look no further than Apple Gadgets, the unparalleled leader in providing top-notch gadgets in the country. Enjoy the convenience of two shopping options with us &ndash; either through our seamless online platform (<a href=\"https://machinesrng.com/\">Apple Gadgets</a>) or by visiting our physical outlets in different locations. Rest assured, we have you covered for all your gadget needs including Huawei P60 Pro.</p>\r\n<p dir=\"ltr\">&nbsp;</p>\r\n<p dir=\"ltr\">See more products in the&nbsp;<a href=\"https://machinesrng.com/\">Huawei</a>&nbsp;category.<strong id=\"docs-internal-guid-5166db6b-7fff-6a28-10ad-ef3e8b5ef2a7\"></strong></p>\r\n</div>\r\n</div>\r\n<div id=\"tabWarranty\" class=\"px-3 pb-4 rounded drop-shadow bg-white mt-6\">\r\n<h2 class=\"font-SFProDisplayMedium text-2xl px-2 py-2 w-max text-secondary border-b-2 border-primary mb-4\">Warranty</h2>\r\n<span class=\"pt-4\">Explore our&nbsp;<a class=\" text-primary\" href=\"https://machinesrng.com/\">Warranty Policy</a>&nbsp;page for detailed information about our warranty coverage.</span></div>', NULL, 1, 'HUAWEI P60 Pro 8/256GB', 'HUAWEI P60 Pro 8/256GB', 'HUAWEI P60 Pro 8/256GB', 'HUAWEI P60 Pro 8/256GB', NULL, '2024-03-02 20:22:28', '2024-03-02 20:22:28');
INSERT INTO `products` (`id`, `title`, `brand_id`, `category_id`, `sub_category_id`, `purchase_price`, `price`, `discount_type`, `discount_amount`, `current_stock`, `is_featured`, `is_tranding`, `todays_deal`, `sold_qty`, `code`, `unit_type`, `type`, `minimum_qty`, `thumbnail_image`, `thumbnail_image2`, `gallery_images`, `video_provider`, `video_link`, `variant_product`, `attributes`, `choice_options`, `colors`, `variations`, `feature`, `description`, `pdf_specification`, `is_active`, `tags`, `meta_title`, `meta_description`, `meta_keywords`, `meta_image`, `created_at`, `updated_at`) VALUES
(106, 'OnePlus 11 - 12/256GB', 18, 0, 0, NULL, NULL, 'no', NULL, 0, 1, 1, 1, '0', 'OP11', 'pcs', 'single', NULL, '1709372361914887826.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<div id=\"tabDescription\" class=\"px-3 pb-4 rounded drop-shadow bg-white mt-6\">\r\n<h2 class=\"font-SFProDisplayMedium text-2xl px-2 py-2 w-max text-secondary border-b-2 border-primary mb-4\">Description</h2>\r\n<div class=\"decription-order-list\">\r\n<p><img src=\"https://adminapi.applegadgetsbd.com/storage/media/large/OnePlus-11-(2)-9787.jpg\"></p>\r\n<h2 dir=\"ltr\"><strong>OnePlus 11</strong></h2>\r\n<p dir=\"ltr\">The&nbsp;<a href=\"https://machinesrng.com/\">OnePlus</a>&nbsp;11 is the latest flagship smartphone that boasts unlimited power and supreme elegance. It features the newest chipset, lightning-fast RAM, and an advanced storage system, all while offering a streamlined and upgraded software experience. The phone\'s design is not only functional but also aesthetically pleasing, making it a delightful experience for the eyes. In essence, the OnePlus 11 is a perfect blend of incredible performance and stunning design, embodying the company\'s tagline \"The Shape of Power\".</p>\r\n<p dir=\"ltr\">&nbsp;</p>\r\n<h2 dir=\"ltr\"><strong>OnePlus 11 Key Features</strong></h2>\r\n<ul>\r\n<li dir=\"ltr\">The latest and most powerful chipset for improved performance</li>\r\n<li dir=\"ltr\">An aesthetically pleasing and elegant design</li>\r\n<li dir=\"ltr\">The fastest RAM and advanced storage options</li>\r\n<li dir=\"ltr\">Multi-Camera System with Advanced Photography Features</li>\r\n<li dir=\"ltr\">SuperVOOC Charging Technology for Quick and Efficient Charging</li>\r\n<li dir=\"ltr\">AMOLED display with Dolby Digital for an immersive visual experience</li>\r\n<li dir=\"ltr\">Dolby ATMOS technology for clear and crisp audio.</li>\r\n</ul>\r\n<p dir=\"ltr\">&nbsp;</p>\r\n<h2 dir=\"ltr\"><strong>OnePlus 11 Overview</strong>&nbsp;</h2>\r\n<h3 dir=\"ltr\"><strong>Ultimate Performance</strong></h3>\r\n<p dir=\"ltr\">The OnePlus 11 5G offers outstanding performance for both everyday use and demanding tasks such as gaming. The phone operates smoothly with no indications of overheating or sluggishness in the interface, thanks to its exceptional collaboration with the latest Snapdragon 8 Gen 2 chipset, fastest&nbsp; LPDDR5X RAM, and advanced UFS 4.0 storage system. The upgraded Android and Oxygen OS software ensures a seamless performance experience. Furthermore, 5G connectivity acts as a turbocharger, enhancing the phone\'s overall performance.</p>\r\n<p dir=\"ltr\">&nbsp;</p>\r\n<h3 dir=\"ltr\"><strong>Marvellous Camera</strong></h3>\r\n<p dir=\"ltr\">Hasselblad and OnePlus have joined forces once again to create an exceptional camera. The Hasselblad 3rd generation collaboration with OnePlus offers an unparalleled photography experience. The triple camera system has an abundance of features that bring every detail to life, and it includes multiple lenses and a couple of IMX sensors for clear and sharp images. Additionally, it has the ability to capture your precious moments in both 8K and 4K formats.</p>\r\n<p dir=\"ltr\">&nbsp;</p>\r\n<h4 dir=\"ltr\"><strong>Camera Features&nbsp;</strong></h4>\r\n<p dir=\"ltr\">Accu-spectrum Light Color Identifier</p>\r\n<p dir=\"ltr\">Turbo HDR</p>\r\n<p dir=\"ltr\">Hasselblad Portrait Mode</p>\r\n<p dir=\"ltr\">8K &amp; 4K Videography</p>\r\n<p dir=\"ltr\">&nbsp;</p>\r\n<h3 dir=\"ltr\"><strong>Dynamic Design &amp; Display</strong></h3>\r\n<p dir=\"ltr\">The OnePlus 11 features a stunning, sleek, and modern design that is bound to catch the eye. The curved shape of the phone adds to its overall beauty, while the camera bump on the back is uniquely crafted. The device is available in a range of colors that complement the phone\'s design, resulting in a visually pleasing and comfortable experience. The collaboration between design and color choices has resulted in a phone that not only looks great but also feels great in the hand.</p>\r\n<p><strong>&nbsp;</strong></p>\r\n<p dir=\"ltr\">With a stunning 6.7-inch Fluid AMOLED display. You can expect an immersive visual experience that is unrivaled. The phone is also equipped with an adaptive refresh rate that can adjust itself depending on the content being displayed, which results in smoother animations and longer battery life.&nbsp;</p>\r\n<p dir=\"ltr\">&nbsp;</p>\r\n<h3 dir=\"ltr\"><strong>Battery Life</strong></h3>\r\n<p dir=\"ltr\">The flagship phone boasts a sizable 5000 mAh battery, but the real standout feature is its SuperVOOC charging system. With this technology, the device provides an extended battery life while also optimizing its power usage. Additionally, you can charge the phone at lightning-fast speeds, giving you the ability to power up your device quickly and easily. With this impressive battery and charging combination, you can experience your life like never before.</p>\r\n<p><strong>&nbsp;</strong></p>\r\n<h2 dir=\"ltr\"><strong>OnePlus 11 price in Bangladesh</strong></h2>\r\n<p dir=\"ltr\">The latest OnePlus 11 price in Bangladesh starts from&nbsp;<strong><span id=\"prod__23329\">73000</span></strong>&nbsp;BDT. OnePlus 11 phone can be your favorite phone with its unique features, wonderful camera.</p>\r\n<p dir=\"ltr\">&nbsp;</p>\r\n<h2 dir=\"ltr\"><strong>Where to buy the OnePlus 11 in Bangladesh?</strong></h2>\r\n<p dir=\"ltr\">Apple Gadgets is a well-known gadget shop that offers a wide range of products, including smartphones, tablets, accessories, and smart home appliances. With both online and offline selling options, you can easily order your preferred gadget including the latest&nbsp; OnePlus 11 through the&nbsp;<a href=\"https://machinesrng.com/\">Apple Gadgets</a>&nbsp;website or visit one of our physical outlets.</p>\r\n<p><strong>&nbsp;</strong></p>\r\n<p dir=\"ltr\">Not only do they offer competitive prices in Bangladesh, but they also have a reputation for their excellent after-service. So if you want to buy your favorite gadget at an affordable price, with the assurance of top-notch customer service, visit Apple Gadgets today.</p>\r\n<p dir=\"ltr\">&nbsp;</p>\r\n<p dir=\"ltr\">Please visit the&nbsp;<a href=\"https://machinesrng.com/\">OnePlus</a>&nbsp;category on their website for more products.</p>\r\n</div>\r\n</div>\r\n<div id=\"tabWarranty\" class=\"px-3 pb-4 rounded drop-shadow bg-white mt-6\">\r\n<h2 class=\"font-SFProDisplayMedium text-2xl px-2 py-2 w-max text-secondary border-b-2 border-primary mb-4\">Warranty</h2>\r\n<span class=\"pt-4\">Explore our&nbsp;<a class=\" text-primary\" href=\"https://machinesrng.com/\">Warranty Policy</a>&nbsp;page for detailed information about our warranty coverage.</span></div>\r\n<table class=\"table table-bordered\" style=\"border-collapse: collapse; display: none; width: 100%;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 50%;\">Fabric</td>\r\n<td style=\"width: 50%;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 50%;\">Occasion</td>\r\n<td style=\"width: 50%;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 50%;\">Cut/Fit</td>\r\n<td style=\"width: 50%;\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>', '<div id=\"tabDescription\" class=\"px-3 pb-4 rounded drop-shadow bg-white mt-6\">\r\n<h2 class=\"font-SFProDisplayMedium text-2xl px-2 py-2 w-max text-secondary border-b-2 border-primary mb-4\">Description</h2>\r\n<div class=\"decription-order-list\">\r\n<p><img src=\"https://adminapi.applegadgetsbd.com/storage/media/large/OnePlus-11-(2)-9787.jpg\"></p>\r\n<h2 dir=\"ltr\"><strong>OnePlus 11</strong></h2>\r\n<p dir=\"ltr\">The&nbsp;<a href=\"https://machinesrng.com/\">OnePlus</a>&nbsp;11 is the latest flagship smartphone that boasts unlimited power and supreme elegance. It features the newest chipset, lightning-fast RAM, and an advanced storage system, all while offering a streamlined and upgraded software experience. The phone\'s design is not only functional but also aesthetically pleasing, making it a delightful experience for the eyes. In essence, the OnePlus 11 is a perfect blend of incredible performance and stunning design, embodying the company\'s tagline \"The Shape of Power\".</p>\r\n<p dir=\"ltr\">&nbsp;</p>\r\n<h2 dir=\"ltr\"><strong>OnePlus 11 Key Features</strong></h2>\r\n<ul>\r\n<li dir=\"ltr\">The latest and most powerful chipset for improved performance</li>\r\n<li dir=\"ltr\">An aesthetically pleasing and elegant design</li>\r\n<li dir=\"ltr\">The fastest RAM and advanced storage options</li>\r\n<li dir=\"ltr\">Multi-Camera System with Advanced Photography Features</li>\r\n<li dir=\"ltr\">SuperVOOC Charging Technology for Quick and Efficient Charging</li>\r\n<li dir=\"ltr\">AMOLED display with Dolby Digital for an immersive visual experience</li>\r\n<li dir=\"ltr\">Dolby ATMOS technology for clear and crisp audio.</li>\r\n</ul>\r\n<p dir=\"ltr\">&nbsp;</p>\r\n<h2 dir=\"ltr\"><strong>OnePlus 11 Overview</strong>&nbsp;</h2>\r\n<h3 dir=\"ltr\"><strong>Ultimate Performance</strong></h3>\r\n<p dir=\"ltr\">The OnePlus 11 5G offers outstanding performance for both everyday use and demanding tasks such as gaming. The phone operates smoothly with no indications of overheating or sluggishness in the interface, thanks to its exceptional collaboration with the latest Snapdragon 8 Gen 2 chipset, fastest&nbsp; LPDDR5X RAM, and advanced UFS 4.0 storage system. The upgraded Android and Oxygen OS software ensures a seamless performance experience. Furthermore, 5G connectivity acts as a turbocharger, enhancing the phone\'s overall performance.</p>\r\n<p dir=\"ltr\">&nbsp;</p>\r\n<h3 dir=\"ltr\"><strong>Marvellous Camera</strong></h3>\r\n<p dir=\"ltr\">Hasselblad and OnePlus have joined forces once again to create an exceptional camera. The Hasselblad 3rd generation collaboration with OnePlus offers an unparalleled photography experience. The triple camera system has an abundance of features that bring every detail to life, and it includes multiple lenses and a couple of IMX sensors for clear and sharp images. Additionally, it has the ability to capture your precious moments in both 8K and 4K formats.</p>\r\n<p dir=\"ltr\">&nbsp;</p>\r\n<h4 dir=\"ltr\"><strong>Camera Features&nbsp;</strong></h4>\r\n<p dir=\"ltr\">Accu-spectrum Light Color Identifier</p>\r\n<p dir=\"ltr\">Turbo HDR</p>\r\n<p dir=\"ltr\">Hasselblad Portrait Mode</p>\r\n<p dir=\"ltr\">8K &amp; 4K Videography</p>\r\n<p dir=\"ltr\">&nbsp;</p>\r\n<h3 dir=\"ltr\"><strong>Dynamic Design &amp; Display</strong></h3>\r\n<p dir=\"ltr\">The OnePlus 11 features a stunning, sleek, and modern design that is bound to catch the eye. The curved shape of the phone adds to its overall beauty, while the camera bump on the back is uniquely crafted. The device is available in a range of colors that complement the phone\'s design, resulting in a visually pleasing and comfortable experience. The collaboration between design and color choices has resulted in a phone that not only looks great but also feels great in the hand.</p>\r\n<p><strong>&nbsp;</strong></p>\r\n<p dir=\"ltr\">With a stunning 6.7-inch Fluid AMOLED display. You can expect an immersive visual experience that is unrivaled. The phone is also equipped with an adaptive refresh rate that can adjust itself depending on the content being displayed, which results in smoother animations and longer battery life.&nbsp;</p>\r\n<p dir=\"ltr\">&nbsp;</p>\r\n<h3 dir=\"ltr\"><strong>Battery Life</strong></h3>\r\n<p dir=\"ltr\">The flagship phone boasts a sizable 5000 mAh battery, but the real standout feature is its SuperVOOC charging system. With this technology, the device provides an extended battery life while also optimizing its power usage. Additionally, you can charge the phone at lightning-fast speeds, giving you the ability to power up your device quickly and easily. With this impressive battery and charging combination, you can experience your life like never before.</p>\r\n<p><strong>&nbsp;</strong></p>\r\n<h2 dir=\"ltr\"><strong>OnePlus 11 price in Bangladesh</strong></h2>\r\n<p dir=\"ltr\">The latest OnePlus 11 price in Bangladesh starts from&nbsp;<strong><span id=\"prod__23329\">73000</span></strong>&nbsp;BDT. OnePlus 11 phone can be your favorite phone with its unique features, wonderful camera.</p>\r\n<p dir=\"ltr\">&nbsp;</p>\r\n<h2 dir=\"ltr\"><strong>Where to buy the OnePlus 11 in Bangladesh?</strong></h2>\r\n<p dir=\"ltr\">Apple Gadgets is a well-known gadget shop that offers a wide range of products, including smartphones, tablets, accessories, and smart home appliances. With both online and offline selling options, you can easily order your preferred gadget including the latest&nbsp; OnePlus 11 through the&nbsp;<a href=\"https://machinesrng.com/\">Apple Gadgets</a>&nbsp;website or visit one of our physical outlets.</p>\r\n<p><strong>&nbsp;</strong></p>\r\n<p dir=\"ltr\">Not only do they offer competitive prices in Bangladesh, but they also have a reputation for their excellent after-service. So if you want to buy your favorite gadget at an affordable price, with the assurance of top-notch customer service, visit Apple Gadgets today.</p>\r\n<p dir=\"ltr\">&nbsp;</p>\r\n<p dir=\"ltr\">Please visit the&nbsp;<a href=\"https://machinesrng.com/\">OnePlus</a>&nbsp;category on their website for more products.</p>\r\n</div>\r\n</div>\r\n<div id=\"tabWarranty\" class=\"px-3 pb-4 rounded drop-shadow bg-white mt-6\">\r\n<h2 class=\"font-SFProDisplayMedium text-2xl px-2 py-2 w-max text-secondary border-b-2 border-primary mb-4\">Warranty</h2>\r\n<span class=\"pt-4\">Explore our&nbsp;<a class=\" text-primary\" href=\"https://machinesrng.com/\">Warranty Policy</a>&nbsp;page for detailed information about our warranty coverage.</span></div>\r\n<table class=\"table table-bordered\" style=\"border-collapse: collapse; display: none; width: 100%;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 50%;\">Fabric</td>\r\n<td style=\"width: 50%;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 50%;\">Occasion</td>\r\n<td style=\"width: 50%;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 50%;\">Cut/Fit</td>\r\n<td style=\"width: 50%;\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>', NULL, 1, 'OnePlus 11 - 12/256GB', 'OnePlus 11 - 12/256GB', 'OnePlus 11 - 12/256GB', 'OnePlus 11 - 12/256GB', NULL, '2024-03-02 20:39:21', '2024-03-02 20:39:21'),
(107, 'Iphone XS MAX 256gb', 10, 0, 0, NULL, NULL, 'no', NULL, 0, 1, 1, 1, '0', '3Z9YYB', 'Piece', 'single', NULL, '1730791235.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<table class=\"table table-bordered\" style=\"border-collapse: collapse; display: none; width: 100%;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 50%;\">Fabric</td>\r\n<td style=\"width: 50%;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 50%;\">Occasion</td>\r\n<td style=\"width: 50%;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 50%;\">Cut/Fit</td>\r\n<td style=\"width: 50%;\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>', '<p>Iphone XS MAX 256gb</p>', NULL, 1, NULL, NULL, NULL, NULL, NULL, '2024-05-18 16:17:12', '2024-11-05 07:20:35'),
(108, 'Iphone XS MAX 64gb', 10, 0, 0, NULL, NULL, 'no', NULL, 0, 1, 1, 1, '0', 'XETMZ9', 'Piece', 'single', NULL, '1730791208.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<table class=\"table table-bordered\" style=\"border-collapse: collapse; display: none; width: 100%;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 50%;\">Fabric</td>\r\n<td style=\"width: 50%;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 50%;\">Occasion</td>\r\n<td style=\"width: 50%;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 50%;\">Cut/Fit</td>\r\n<td style=\"width: 50%;\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>', '<p>Iphone XS MAX 64gb</p>', NULL, 1, NULL, NULL, NULL, NULL, NULL, '2024-05-18 16:26:53', '2024-11-05 07:20:08'),
(109, 'Iphone XS 256gb', 10, 0, 0, NULL, NULL, 'no', NULL, 0, 1, 1, 1, '0', 'DS9JMC', 'Piece', 'single', NULL, '1730791175.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<table class=\"table table-bordered\" style=\"border-collapse: collapse; display: none; width: 100%;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 50%;\">Fabric</td>\r\n<td style=\"width: 50%;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 50%;\">Occasion</td>\r\n<td style=\"width: 50%;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 50%;\">Cut/Fit</td>\r\n<td style=\"width: 50%;\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>', '<p>Iphone XS 256gb</p>', NULL, 1, NULL, NULL, NULL, NULL, NULL, '2024-05-18 16:31:43', '2024-11-05 07:19:35'),
(110, 'Iphone XS 64gb', 10, 0, 0, NULL, NULL, 'no', NULL, 0, 1, 1, 1, '0', 'CJB0M5', 'Piece', 'single', NULL, '1730791087.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<table class=\"table table-bordered\" style=\"border-collapse: collapse; display: none; width: 100%;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 50%;\">Fabric</td>\r\n<td style=\"width: 50%;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 50%;\">Occasion</td>\r\n<td style=\"width: 50%;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 50%;\">Cut/Fit</td>\r\n<td style=\"width: 50%;\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>', '<p>Iphone XS 64gb</p>', NULL, 1, NULL, NULL, NULL, NULL, NULL, '2024-05-18 16:34:03', '2024-11-05 07:18:07'),
(111, 'Iphone XR 128gb', 10, 0, 0, NULL, NULL, 'no', NULL, 0, 1, 1, 1, '0', 'V4IGBT', 'Piece', 'single', NULL, '1730791040.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<table class=\"table table-bordered\" style=\"border-collapse: collapse; display: none; width: 100%;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 50%;\">Fabric</td>\r\n<td style=\"width: 50%;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 50%;\">Occasion</td>\r\n<td style=\"width: 50%;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 50%;\">Cut/Fit</td>\r\n<td style=\"width: 50%;\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>', '<p>Iphone XR 128gb</p>', NULL, 1, NULL, NULL, NULL, NULL, NULL, '2024-05-18 16:37:16', '2024-11-05 07:17:21'),
(112, 'test', 17, 0, 0, NULL, NULL, 'no', NULL, 0, 0, 0, 0, '0', 'XR5GNB', 'piece', 'single', NULL, '1730791010.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<table class=\"table table-bordered \" style=\"border-collapse: collapse; display: none; width: 100%;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 50%;\">Fabric</td>\r\n<td style=\"width: 50%;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 50%;\">Occasion</td>\r\n<td style=\"width: 50%;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 50%;\">Cut/Fit</td>\r\n<td style=\"width: 50%;\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>', '<p>fdsfsd</p>', NULL, 1, NULL, 'fdsfsd', NULL, 'dsfsd', NULL, '2024-10-31 11:59:59', '2024-11-05 07:16:50');

-- --------------------------------------------------------

--
-- Table structure for table `products_reviews`
--

CREATE TABLE `products_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `order_code` varchar(255) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `review_star` int(11) NOT NULL DEFAULT 5,
  `review_text` longtext DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT 0 COMMENT '1 means active, 0 means pending, 2 means rejected.',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(59, 24, '16802585240.jpg', '2023-03-31 23:28:44', '2023-03-31 23:28:44'),
(60, 25, '16802591360.jpeg', '2023-03-31 23:38:56', '2023-03-31 23:38:56'),
(61, 26, '16802592040.jpg', '2023-03-31 23:40:04', '2023-03-31 23:40:04'),
(62, 27, '16802593970.jpg', '2023-03-31 23:43:17', '2023-03-31 23:43:17'),
(63, 28, '16802595600.jpg', '2023-03-31 23:46:01', '2023-03-31 23:46:01'),
(64, 29, '16802597230.jpg', '2023-03-31 23:48:44', '2023-03-31 23:48:44'),
(65, 30, '16802607560.jpg', '2023-04-01 00:05:57', '2023-04-01 00:05:57'),
(66, 31, '16802608680.jpg', '2023-04-01 00:07:48', '2023-04-01 00:07:48'),
(67, 32, '16802609310.jpg', '2023-04-01 00:08:52', '2023-04-01 00:08:52'),
(68, 33, '16802610030.jpg', '2023-04-01 00:10:04', '2023-04-01 00:10:04'),
(69, 34, '16802610440.jpg', '2023-04-01 00:10:44', '2023-04-01 00:10:44'),
(70, 35, '16802610800.jpg', '2023-04-01 00:11:20', '2023-04-01 00:11:20'),
(71, 36, '16802612800.jpg', '2023-04-01 00:14:41', '2023-04-01 00:14:41'),
(72, 37, '16802613090.jpg', '2023-04-01 00:15:09', '2023-04-01 00:15:09'),
(73, 38, '16802613400.jpg', '2023-04-01 00:15:40', '2023-04-01 00:15:40'),
(74, 39, '16802626230.jpg', '2023-04-01 00:37:03', '2023-04-01 00:37:03'),
(75, 40, '16802628480.jpg', '2023-04-01 00:40:48', '2023-04-01 00:40:48'),
(76, 41, '16802630000.jpg', '2023-04-01 00:43:21', '2023-04-01 00:43:21'),
(77, 42, '16802631270.jpg', '2023-04-01 00:45:27', '2023-04-01 00:45:27'),
(78, 43, '16802631570.jpg', '2023-04-01 00:45:58', '2023-04-01 00:45:58'),
(80, 45, '16802634310.jpg', '2023-04-01 00:50:32', '2023-04-01 00:50:32'),
(81, 44, '16802638030.jpg', '2023-04-01 00:56:44', '2023-04-01 00:56:44'),
(82, 46, '17051291580.jpg', '2024-01-13 06:59:18', '2024-01-13 06:59:18'),
(361, 97, '17091167910.jpeg', '2024-02-28 21:39:51', '2024-02-28 21:39:51'),
(362, 97, '17091167911.jpeg', '2024-02-28 21:39:51', '2024-02-28 21:39:51'),
(363, 97, '17091167912.jpeg', '2024-02-28 21:39:51', '2024-02-28 21:39:51'),
(364, 97, '17091167913.jpeg', '2024-02-28 21:39:51', '2024-02-28 21:39:51'),
(365, 98, '17091196660.jpeg', '2024-02-28 22:27:46', '2024-02-28 22:27:46'),
(366, 98, '17091196661.jpeg', '2024-02-28 22:27:46', '2024-02-28 22:27:46'),
(367, 98, '17091196662.jpeg', '2024-02-28 22:27:46', '2024-02-28 22:27:46'),
(368, 98, '17091196663.jpeg', '2024-02-28 22:27:47', '2024-02-28 22:27:47'),
(369, 99, '17091213430.jpeg', '2024-02-28 22:55:43', '2024-02-28 22:55:43'),
(370, 99, '17091213431.jpeg', '2024-02-28 22:55:43', '2024-02-28 22:55:43'),
(371, 99, '17091213432.jpeg', '2024-02-28 22:55:43', '2024-02-28 22:55:43'),
(372, 100, '17091221380.jpeg', '2024-02-28 23:08:58', '2024-02-28 23:08:58'),
(373, 100, '17091221381.jpeg', '2024-02-28 23:08:58', '2024-02-28 23:08:58'),
(374, 100, '17091221382.jpeg', '2024-02-28 23:08:58', '2024-02-28 23:08:58'),
(375, 101, '17091241860.jpeg', '2024-02-28 23:43:06', '2024-02-28 23:43:06'),
(376, 101, '17091241861.jpeg', '2024-02-28 23:43:06', '2024-02-28 23:43:06'),
(377, 101, '17091241862.jpeg', '2024-02-28 23:43:06', '2024-02-28 23:43:06'),
(378, 101, '17091241863.jpeg', '2024-02-28 23:43:06', '2024-02-28 23:43:06'),
(379, 101, '17091241864.jpeg', '2024-02-28 23:43:06', '2024-02-28 23:43:06'),
(380, 101, '17091241865.jpeg', '2024-02-28 23:43:06', '2024-02-28 23:43:06'),
(381, 101, '17091241866.jpeg', '2024-02-28 23:43:06', '2024-02-28 23:43:06'),
(382, 101, '17091241867.jpeg', '2024-02-28 23:43:06', '2024-02-28 23:43:06'),
(383, 102, '17091986070.jpeg', '2024-02-29 20:23:27', '2024-02-29 20:23:27'),
(384, 102, '17091986071.jpeg', '2024-02-29 20:23:27', '2024-02-29 20:23:27'),
(385, 102, '17091986072.jpeg', '2024-02-29 20:23:27', '2024-02-29 20:23:27'),
(386, 103, '17093574260.jpeg', '2024-03-02 16:30:26', '2024-03-02 16:30:26'),
(387, 103, '17093574261.jpeg', '2024-03-02 16:30:26', '2024-03-02 16:30:26'),
(388, 104, '17093708580.jpeg', '2024-03-02 20:14:18', '2024-03-02 20:14:18'),
(389, 104, '17093708581.jpg', '2024-03-02 20:14:18', '2024-03-02 20:14:18'),
(390, 104, '17093708582.jpg', '2024-03-02 20:14:18', '2024-03-02 20:14:18'),
(391, 105, '17093713480.jpeg', '2024-03-02 20:22:28', '2024-03-02 20:22:28'),
(392, 105, '17093713481.jpeg', '2024-03-02 20:22:28', '2024-03-02 20:22:28'),
(393, 105, '17093713482.jpeg', '2024-03-02 20:22:28', '2024-03-02 20:22:28'),
(394, 105, '17093713483.jpeg', '2024-03-02 20:22:28', '2024-03-02 20:22:28'),
(395, 106, '17093723620.jpeg', '2024-03-02 20:39:22', '2024-03-02 20:39:22'),
(396, 106, '17093723621.jpeg', '2024-03-02 20:39:22', '2024-03-02 20:39:22'),
(403, 112, '17307910100.jpg', '2024-11-05 07:16:50', '2024-11-05 07:16:50'),
(404, 111, '17307910410.jpg', '2024-11-05 07:17:21', '2024-11-05 07:17:21'),
(405, 110, '17307910870.jpg', '2024-11-05 07:18:07', '2024-11-05 07:18:07'),
(406, 109, '17307911750.jpg', '2024-11-05 07:19:35', '2024-11-05 07:19:35'),
(407, 108, '17307912080.jpg', '2024-11-05 07:20:08', '2024-11-05 07:20:08'),
(408, 107, '17307912350.jpg', '2024-11-05 07:20:35', '2024-11-05 07:20:35');

-- --------------------------------------------------------

--
-- Table structure for table `product_stocks`
--

CREATE TABLE `product_stocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `color` varchar(255) DEFAULT NULL,
  `variant` varchar(255) DEFAULT NULL,
  `variant_output` varchar(255) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `qty` varchar(255) DEFAULT NULL,
  `is_active` int(110) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_stocks`
--

INSERT INTO `product_stocks` (`id`, `product_id`, `color`, `variant`, `variant_output`, `sku`, `price`, `image`, `qty`, `is_active`, `created_at`, `updated_at`) VALUES
(60, 24, NULL, '2', '42', NULL, '7690', NULL, '1000', 1, '2023-03-31 23:28:44', '2023-03-31 23:37:15'),
(61, 24, NULL, '2', '44', NULL, '7690', NULL, '1000', 1, '2023-03-31 23:28:44', '2023-03-31 23:37:15'),
(62, 24, NULL, '2', '46', NULL, '7690', NULL, '1000', 1, '2023-03-31 23:28:44', '2023-03-31 23:37:15'),
(63, 24, NULL, '2', '48', NULL, '7690', NULL, '1000', 1, '2023-03-31 23:28:44', '2023-03-31 23:37:15'),
(64, 25, NULL, '2', '42', NULL, '7690', NULL, '999', 1, '2023-03-31 23:38:56', '2023-09-05 19:26:25'),
(65, 25, NULL, '2', '44', NULL, '7690', NULL, '1000', 1, '2023-03-31 23:38:56', '2023-03-31 23:38:56'),
(66, 25, NULL, '2', '46', NULL, '7690', NULL, '1000', 1, '2023-03-31 23:38:56', '2023-03-31 23:38:56'),
(67, 25, NULL, '2', '48', NULL, '7690', NULL, '1000', 1, '2023-03-31 23:38:56', '2023-03-31 23:38:56'),
(68, 26, NULL, '2', '42', NULL, '7690', NULL, '1000', 1, '2023-03-31 23:40:04', '2023-03-31 23:40:04'),
(69, 26, NULL, '2', '44', NULL, '7690', NULL, '1000', 1, '2023-03-31 23:40:04', '2023-03-31 23:40:04'),
(70, 26, NULL, '2', '46', NULL, '7690', NULL, '1000', 1, '2023-03-31 23:40:04', '2023-03-31 23:40:04'),
(71, 26, NULL, '2', '48', NULL, '7690', NULL, '1000', 1, '2023-03-31 23:40:04', '2023-03-31 23:40:04'),
(72, 27, NULL, '2', '42', NULL, '7690', NULL, '1000', 1, '2023-03-31 23:43:17', '2023-03-31 23:43:17'),
(73, 27, NULL, '2', '44', NULL, '7690', NULL, '1000', 1, '2023-03-31 23:43:17', '2023-03-31 23:43:17'),
(74, 27, NULL, '2', '46', NULL, '7690', NULL, '1000', 1, '2023-03-31 23:43:17', '2023-03-31 23:43:17'),
(75, 27, NULL, '2', '48', NULL, '7690', NULL, '1000', 1, '2023-03-31 23:43:17', '2023-03-31 23:43:17'),
(76, 28, NULL, '2', '42', NULL, '7690', NULL, '1000', 1, '2023-03-31 23:46:00', '2023-03-31 23:46:00'),
(77, 28, NULL, '2', '44', NULL, '7690', NULL, '1000', 1, '2023-03-31 23:46:00', '2023-03-31 23:46:00'),
(78, 28, NULL, '2', '46', NULL, '7690', NULL, '1000', 1, '2023-03-31 23:46:00', '2023-03-31 23:46:00'),
(79, 28, NULL, '2', '48', NULL, '7690', NULL, '1000', 1, '2023-03-31 23:46:00', '2023-03-31 23:46:00'),
(80, 29, NULL, '2', '42', NULL, '7690', NULL, '1000', 1, '2023-03-31 23:48:43', '2023-03-31 23:48:43'),
(81, 29, NULL, '2', '44', NULL, '7690', NULL, '1000', 1, '2023-03-31 23:48:43', '2023-03-31 23:48:43'),
(82, 29, NULL, '2', '46', NULL, '7690', NULL, '1000', 1, '2023-03-31 23:48:43', '2023-03-31 23:48:43'),
(83, 29, NULL, '2', '48', NULL, '7690', NULL, '1000', 1, '2023-03-31 23:48:43', '2023-03-31 23:48:43'),
(84, 30, NULL, '2', '42', NULL, '5850', NULL, '1000', 1, '2023-04-01 00:05:56', '2023-04-01 01:14:19'),
(85, 30, NULL, '2', '44', NULL, '5850', NULL, '1000', 1, '2023-04-01 00:05:56', '2023-04-01 01:14:19'),
(86, 30, NULL, '2', '46', NULL, '5850', NULL, '999', 1, '2023-04-01 00:05:56', '2023-04-01 01:14:19'),
(87, 30, NULL, '2', '48', NULL, '5850', NULL, '1000', 1, '2023-04-01 00:05:56', '2023-04-01 01:14:19'),
(88, 31, NULL, '2', '42', NULL, '5820', NULL, '1000', 1, '2023-04-01 00:07:48', '2023-04-01 01:15:34'),
(89, 31, NULL, '2', '44', NULL, '5820', NULL, '1000', 1, '2023-04-01 00:07:48', '2023-04-01 01:15:34'),
(90, 31, NULL, '2', '46', NULL, '5820', NULL, '999', 1, '2023-04-01 00:07:48', '2023-04-01 01:15:34'),
(91, 31, NULL, '2', '48', NULL, '5820', NULL, '1000', 1, '2023-04-01 00:07:48', '2023-04-01 01:15:34'),
(92, 32, NULL, '2', '42', NULL, '6400', NULL, '1000', 1, '2023-04-01 00:08:51', '2023-04-01 02:26:53'),
(93, 32, NULL, '2', '44', NULL, '6400', NULL, '1000', 1, '2023-04-01 00:08:51', '2023-04-01 02:26:53'),
(94, 32, NULL, '2', '46', NULL, '6400', NULL, '1000', 1, '2023-04-01 00:08:51', '2023-04-01 02:26:53'),
(95, 32, NULL, '2', '48', NULL, '6400', NULL, '1000', 1, '2023-04-01 00:08:51', '2023-04-01 02:26:53'),
(96, 33, NULL, '2', '42', NULL, '5450', NULL, '1000', 1, '2023-04-01 00:10:03', '2023-04-01 02:27:30'),
(97, 33, NULL, '2', '44', NULL, '5450', NULL, '1000', 1, '2023-04-01 00:10:03', '2023-04-01 02:27:30'),
(98, 33, NULL, '2', '46', NULL, '5450', NULL, '999', 1, '2023-04-01 00:10:03', '2023-04-01 02:27:30'),
(99, 33, NULL, '2', '48', NULL, '5450', NULL, '1000', 1, '2023-04-01 00:10:03', '2023-04-01 02:27:30'),
(100, 34, NULL, '2', '42', NULL, '5500', NULL, '1000', 1, '2023-04-01 00:10:44', '2023-04-01 02:30:07'),
(101, 34, NULL, '2', '44', NULL, '5500', NULL, '1000', 1, '2023-04-01 00:10:44', '2023-04-01 02:30:07'),
(102, 34, NULL, '2', '46', NULL, '5500', NULL, '999', 1, '2023-04-01 00:10:44', '2023-04-01 02:30:07'),
(103, 34, NULL, '2', '48', NULL, '5500', NULL, '1000', 1, '2023-04-01 00:10:44', '2023-04-01 02:30:07'),
(104, 35, NULL, '2', '42', NULL, '5450', NULL, '1000', 1, '2023-04-01 00:11:20', '2023-04-01 02:30:36'),
(105, 35, NULL, '2', '44', NULL, '5450', NULL, '1000', 1, '2023-04-01 00:11:20', '2023-04-01 02:30:36'),
(106, 35, NULL, '2', '46', NULL, '5450', NULL, '999', 1, '2023-04-01 00:11:20', '2023-04-01 02:30:36'),
(107, 35, NULL, '2', '48', NULL, '5450', NULL, '1000', 1, '2023-04-01 00:11:20', '2023-04-01 02:30:36'),
(108, 36, NULL, '2', '42', NULL, '5450', NULL, '1000', 1, '2023-04-01 00:14:40', '2023-04-01 02:31:00'),
(109, 36, NULL, '2', '44', NULL, '5450', NULL, '1000', 1, '2023-04-01 00:14:40', '2023-04-01 02:31:00'),
(110, 36, NULL, '2', '46', NULL, '5450', NULL, '998', 1, '2023-04-01 00:14:40', '2023-09-05 09:33:58'),
(111, 36, NULL, '2', '48', NULL, '5450', NULL, '1000', 1, '2023-04-01 00:14:40', '2023-04-01 02:31:00'),
(112, 37, NULL, '2', '42', NULL, '5400', NULL, '1000', 1, '2023-04-01 00:15:09', '2023-04-01 02:31:25'),
(113, 37, NULL, '2', '44', NULL, '5400', NULL, '1000', 1, '2023-04-01 00:15:09', '2023-04-01 02:31:25'),
(114, 37, NULL, '2', '46', NULL, '5400', NULL, '999', 1, '2023-04-01 00:15:09', '2023-04-01 02:31:25'),
(115, 37, NULL, '2', '48', NULL, '5400', NULL, '1000', 1, '2023-04-01 00:15:09', '2023-04-01 02:31:25'),
(116, 38, NULL, '2', '42', NULL, '4800', NULL, '1000', 1, '2023-04-01 00:15:39', '2023-04-01 02:31:48'),
(117, 38, NULL, '2', '44', NULL, '4800', NULL, '1000', 1, '2023-04-01 00:15:39', '2023-04-01 02:31:48'),
(118, 38, NULL, '2', '46', NULL, '4800', NULL, '999', 1, '2023-04-01 00:15:40', '2023-04-01 02:31:48'),
(119, 38, NULL, '2', '48', NULL, '4800', NULL, '1000', 1, '2023-04-01 00:15:40', '2023-04-01 02:31:48'),
(120, 39, NULL, '2', '40', NULL, '2650', NULL, '998', 1, '2023-04-01 00:37:03', '2023-09-05 19:25:25'),
(121, 39, NULL, '2', '42', NULL, '2650', NULL, '1000', 1, '2023-04-01 00:37:03', '2023-04-01 02:34:13'),
(122, 39, NULL, '2', '44', NULL, '2650', NULL, '1000', 1, '2023-04-01 00:37:03', '2023-04-01 02:34:13'),
(123, 39, NULL, '2', '46', NULL, '2650', NULL, '1000', 1, '2023-04-01 00:37:03', '2023-04-01 02:34:13'),
(124, 40, NULL, '2', '40', NULL, '2650', NULL, '1000', 1, '2023-04-01 00:40:48', '2023-04-01 02:34:47'),
(125, 40, NULL, '2', '42', NULL, '2650', NULL, '1000', 1, '2023-04-01 00:40:48', '2023-04-01 02:34:47'),
(126, 40, NULL, '2', '44', NULL, '2650', NULL, '999', 1, '2023-04-01 00:40:48', '2023-04-01 02:34:47'),
(127, 40, NULL, '2', '46', NULL, '2650', NULL, '1000', 1, '2023-04-01 00:40:48', '2023-04-01 02:34:47'),
(128, 41, NULL, '2', '40', NULL, '2450', NULL, '1000', 1, '2023-04-01 00:43:20', '2023-04-01 02:35:39'),
(129, 41, NULL, '2', '42', NULL, '2450', NULL, '1000', 1, '2023-04-01 00:43:20', '2023-04-01 02:35:39'),
(130, 41, NULL, '2', '44', NULL, '2450', NULL, '1000', 1, '2023-04-01 00:43:20', '2023-04-01 02:35:39'),
(131, 41, NULL, '2', '46', NULL, '2450', NULL, '1000', 1, '2023-04-01 00:43:20', '2023-04-01 02:35:39'),
(132, 42, NULL, '2', '40', NULL, '2050', NULL, '1000', 1, '2023-04-01 00:45:26', '2023-04-01 02:36:54'),
(133, 42, NULL, '2', '42', NULL, '2050', NULL, '1000', 1, '2023-04-01 00:45:26', '2023-04-01 02:36:54'),
(134, 42, NULL, '2', '44', NULL, '2050', NULL, '1000', 1, '2023-04-01 00:45:26', '2023-04-01 02:36:54'),
(135, 42, NULL, '2', '46', NULL, '2050', NULL, '1000', 1, '2023-04-01 00:45:26', '2023-04-01 02:36:54'),
(136, 43, NULL, '2', '40', NULL, '2050', NULL, '1000', 1, '2023-04-01 00:45:57', '2023-04-01 02:37:46'),
(137, 43, NULL, '2', '42', NULL, '2050', NULL, '1000', 1, '2023-04-01 00:45:57', '2023-04-01 02:37:46'),
(138, 43, NULL, '2', '44', NULL, '2050', NULL, '1000', 1, '2023-04-01 00:45:57', '2023-04-01 02:37:46'),
(139, 43, NULL, '2', '46', NULL, '2050', NULL, '1000', 1, '2023-04-01 00:45:57', '2023-04-01 02:37:46'),
(140, 44, NULL, '2', '40', NULL, '2050', NULL, '1000', 1, '2023-04-01 00:48:49', '2023-04-01 00:48:49'),
(141, 44, NULL, '2', '42', NULL, '2050', NULL, '1000', 1, '2023-04-01 00:48:49', '2023-04-01 00:48:49'),
(142, 44, NULL, '2', '44', NULL, '2050', NULL, '1000', 1, '2023-04-01 00:48:49', '2023-04-01 00:48:49'),
(143, 44, NULL, '2', '46', NULL, '2050', NULL, '1000', 1, '2023-04-01 00:48:49', '2023-04-01 00:48:49'),
(144, 45, NULL, '2', '40', NULL, '2050', NULL, '1000', 1, '2023-04-01 00:50:30', '2023-04-01 00:50:30'),
(145, 45, NULL, '2', '42', NULL, '2050', NULL, '1000', 1, '2023-04-01 00:50:30', '2023-04-01 00:50:30'),
(146, 45, NULL, '2', '44', NULL, '2050', NULL, '1000', 1, '2023-04-01 00:50:30', '2023-04-01 00:50:30'),
(147, 45, NULL, '2', '46', NULL, '2050', NULL, '1000', 1, '2023-04-01 00:50:31', '2023-04-01 00:50:31'),
(148, 45, '75', '2', '40', NULL, '5000', NULL, '500', 1, '2023-09-21 19:18:59', '2023-09-21 19:18:59'),
(149, 45, '75', '2', '42', NULL, '6000', NULL, '100', 1, '2023-09-21 19:18:59', '2023-09-21 19:18:59'),
(150, 45, '143', '2', '40', NULL, '5000', NULL, '50', 1, '2023-10-05 18:53:50', '2023-10-05 18:53:50'),
(151, 46, NULL, '2', '1 Kg', NULL, '500', '17051291581955419738.jpg', '180', 1, '2024-01-13 06:59:18', '2024-01-13 07:03:41'),
(152, 46, NULL, '2', '2 Kg', NULL, '1000', NULL, '44', 1, '2024-01-13 06:59:18', '2024-01-13 06:59:18'),
(286, 97, '151', '7', '256GB', NULL, '155500', '1709116791614846544.jpeg', '100', 1, '2024-02-28 21:39:51', '2024-02-28 21:39:51'),
(287, 97, '151', '7', '512GB', NULL, '183000', '1709116791154650310.jpeg', '100', 1, '2024-02-28 21:39:51', '2024-02-28 21:39:51'),
(288, 97, '151', '7', '1TB', NULL, '210000', '1709116791888524373.jpeg', '100', 1, '2024-02-28 21:39:51', '2024-02-28 21:39:51'),
(289, 98, '158', '7', '8/256GB', NULL, '35000', NULL, '100', 1, '2024-02-28 22:27:46', '2024-02-28 22:27:46'),
(290, 99, '159', '7', '6/128GB', NULL, '22500', '1709121343409086362.jpeg', '100', 1, '2024-02-28 22:55:43', '2024-02-28 22:55:43'),
(291, 99, '160', '7', '6/128GB', NULL, '22500', '1709121343168958171.jpeg', '100', 1, '2024-02-28 22:55:43', '2024-02-28 22:55:43'),
(292, 99, '161', '7', '6/128GB', NULL, '22500', '17091213431970933812.jpeg', '100', 1, '2024-02-28 22:55:43', '2024-02-28 22:55:43'),
(293, 100, '162', '7', '128GB', NULL, '98000', '17091221381674812967.jpeg', '100', 1, '2024-02-28 23:08:58', '2024-02-28 23:08:58'),
(296, 100, '163', '7', '128GB', NULL, '98000', '17091223211785063752.jpeg', '100', 1, '2024-02-28 23:12:01', '2024-02-28 23:12:01'),
(297, 100, '164', '7', '128GB', NULL, '98000', '1709122321802211505.jpeg', '100', 1, '2024-02-28 23:12:01', '2024-02-28 23:12:01'),
(298, 101, NULL, NULL, NULL, NULL, '95500', NULL, '99', 1, '2024-02-28 23:43:06', '2024-03-05 20:40:09'),
(299, 102, '166', '7', '6/128GB', NULL, '21000', '1709198607190594565.jpeg', '100', 1, '2024-02-29 20:23:27', '2024-02-29 20:23:27'),
(300, 102, '167', '7', '6/128GB', NULL, '21000', '17091986071980068325.jpeg', '100', 1, '2024-02-29 20:23:27', '2024-02-29 20:23:27'),
(301, 102, '168', '7', '6/128GB', NULL, '21000', '1709198607306340681.jpeg', '100', 1, '2024-02-29 20:23:27', '2024-02-29 20:23:27'),
(302, 103, '169', '7', '12/256GB', NULL, '115000', '1709357426575945908.jpeg', '100', 1, '2024-03-02 16:30:26', '2024-03-02 16:30:26'),
(303, 103, '7', '7', '12/256GB', NULL, '115000', '17093574261965081799.jpeg', '100', 1, '2024-03-02 16:30:26', '2024-03-02 16:30:26'),
(304, 104, '143', '', '', NULL, '135000', '17093708581236295649.jpeg', '100', 1, '2024-03-02 20:14:18', '2024-03-02 20:14:18'),
(305, 104, '47', '', '', NULL, '135000', '17093708581346285865.jpg', '100', 1, '2024-03-02 20:14:18', '2024-03-02 20:14:18'),
(306, 105, NULL, NULL, NULL, NULL, '127000', NULL, '8', 1, '2024-03-02 20:22:28', '2024-03-23 14:35:25'),
(307, 106, NULL, NULL, NULL, NULL, '73000', NULL, '14', 1, '2024-03-02 20:39:21', '2024-10-31 10:58:53'),
(315, 112, NULL, NULL, NULL, NULL, '50000', NULL, '100', 1, '2024-11-05 07:16:50', '2024-11-05 07:16:50'),
(316, 111, NULL, NULL, NULL, NULL, '31000', NULL, '25', 1, '2024-11-05 07:17:21', '2024-11-05 07:17:21'),
(317, 110, NULL, NULL, NULL, NULL, '28000', NULL, '24', 1, '2024-11-05 07:18:07', '2024-11-05 07:18:07'),
(318, 109, NULL, NULL, NULL, NULL, '31000', NULL, '24', 1, '2024-11-05 07:19:35', '2024-11-05 07:19:35'),
(319, 108, NULL, NULL, NULL, NULL, '35000', NULL, '25', 1, '2024-11-05 07:20:08', '2024-11-05 07:20:08'),
(320, 107, NULL, NULL, NULL, NULL, '38000', NULL, '25', 1, '2024-11-05 07:20:35', '2024-11-05 07:20:35');

-- --------------------------------------------------------

--
-- Table structure for table `product_variations`
--

CREATE TABLE `product_variations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `variaton_id` varchar(255) DEFAULT NULL,
  `variation_value` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `stock_qty` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_with_categories`
--

CREATE TABLE `product_with_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_with_categories`
--

INSERT INTO `product_with_categories` (`id`, `category_id`, `product_id`, `created_at`, `updated_at`) VALUES
(13, 20, 23, '2023-03-31 22:56:52', '2023-03-31 22:56:52'),
(14, 19, 23, '2023-03-31 22:56:52', '2023-03-31 22:56:52'),
(15, 2, 23, '2023-03-31 22:56:52', '2023-03-31 22:56:52'),
(16, 1, 23, '2023-03-31 22:56:52', '2023-03-31 22:56:52'),
(33, 24, 24, '2023-03-31 23:37:15', '2023-03-31 23:37:15'),
(34, 19, 24, '2023-03-31 23:37:15', '2023-03-31 23:37:15'),
(35, 13, 24, '2023-03-31 23:37:15', '2023-03-31 23:37:15'),
(36, 1, 24, '2023-03-31 23:37:15', '2023-03-31 23:37:15'),
(41, 24, 26, '2023-03-31 23:40:04', '2023-03-31 23:40:04'),
(42, 19, 26, '2023-03-31 23:40:04', '2023-03-31 23:40:04'),
(43, 13, 26, '2023-03-31 23:40:04', '2023-03-31 23:40:04'),
(44, 1, 26, '2023-03-31 23:40:04', '2023-03-31 23:40:04'),
(49, 24, 27, '2023-03-31 23:43:17', '2023-03-31 23:43:17'),
(50, 19, 27, '2023-03-31 23:43:17', '2023-03-31 23:43:17'),
(51, 13, 27, '2023-03-31 23:43:17', '2023-03-31 23:43:17'),
(52, 1, 27, '2023-03-31 23:43:17', '2023-03-31 23:43:17'),
(53, 24, 25, '2023-03-31 23:43:33', '2023-03-31 23:43:33'),
(54, 19, 25, '2023-03-31 23:43:33', '2023-03-31 23:43:33'),
(55, 13, 25, '2023-03-31 23:43:33', '2023-03-31 23:43:33'),
(56, 1, 25, '2023-03-31 23:43:33', '2023-03-31 23:43:33'),
(57, 24, 28, '2023-03-31 23:46:00', '2023-03-31 23:46:00'),
(58, 19, 28, '2023-03-31 23:46:00', '2023-03-31 23:46:00'),
(59, 13, 28, '2023-03-31 23:46:00', '2023-03-31 23:46:00'),
(60, 1, 28, '2023-03-31 23:46:00', '2023-03-31 23:46:00'),
(61, 24, 29, '2023-03-31 23:48:43', '2023-03-31 23:48:43'),
(62, 19, 29, '2023-03-31 23:48:43', '2023-03-31 23:48:43'),
(63, 13, 29, '2023-03-31 23:48:43', '2023-03-31 23:48:43'),
(64, 1, 29, '2023-03-31 23:48:43', '2023-03-31 23:48:43'),
(161, 22, 44, '2023-04-01 00:56:44', '2023-04-01 00:56:44'),
(162, 19, 44, '2023-04-01 00:56:44', '2023-04-01 00:56:44'),
(163, 13, 44, '2023-04-01 00:56:44', '2023-04-01 00:56:44'),
(164, 1, 44, '2023-04-01 00:56:44', '2023-04-01 00:56:44'),
(165, 23, 30, '2023-04-01 01:14:19', '2023-04-01 01:14:19'),
(166, 19, 30, '2023-04-01 01:14:19', '2023-04-01 01:14:19'),
(167, 13, 30, '2023-04-01 01:14:19', '2023-04-01 01:14:19'),
(168, 1, 30, '2023-04-01 01:14:19', '2023-04-01 01:14:19'),
(169, 23, 31, '2023-04-01 01:15:34', '2023-04-01 01:15:34'),
(170, 19, 31, '2023-04-01 01:15:34', '2023-04-01 01:15:34'),
(171, 13, 31, '2023-04-01 01:15:34', '2023-04-01 01:15:34'),
(172, 1, 31, '2023-04-01 01:15:34', '2023-04-01 01:15:34'),
(173, 23, 32, '2023-04-01 02:26:53', '2023-04-01 02:26:53'),
(174, 19, 32, '2023-04-01 02:26:53', '2023-04-01 02:26:53'),
(175, 13, 32, '2023-04-01 02:26:53', '2023-04-01 02:26:53'),
(176, 1, 32, '2023-04-01 02:26:53', '2023-04-01 02:26:53'),
(177, 23, 33, '2023-04-01 02:27:30', '2023-04-01 02:27:30'),
(178, 19, 33, '2023-04-01 02:27:30', '2023-04-01 02:27:30'),
(179, 13, 33, '2023-04-01 02:27:30', '2023-04-01 02:27:30'),
(180, 1, 33, '2023-04-01 02:27:30', '2023-04-01 02:27:30'),
(181, 23, 34, '2023-04-01 02:30:07', '2023-04-01 02:30:07'),
(182, 19, 34, '2023-04-01 02:30:07', '2023-04-01 02:30:07'),
(183, 13, 34, '2023-04-01 02:30:07', '2023-04-01 02:30:07'),
(184, 1, 34, '2023-04-01 02:30:07', '2023-04-01 02:30:07'),
(185, 23, 35, '2023-04-01 02:30:36', '2023-04-01 02:30:36'),
(186, 19, 35, '2023-04-01 02:30:36', '2023-04-01 02:30:36'),
(187, 13, 35, '2023-04-01 02:30:36', '2023-04-01 02:30:36'),
(188, 1, 35, '2023-04-01 02:30:36', '2023-04-01 02:30:36'),
(189, 23, 36, '2023-04-01 02:31:00', '2023-04-01 02:31:00'),
(190, 19, 36, '2023-04-01 02:31:00', '2023-04-01 02:31:00'),
(191, 13, 36, '2023-04-01 02:31:00', '2023-04-01 02:31:00'),
(192, 1, 36, '2023-04-01 02:31:00', '2023-04-01 02:31:00'),
(193, 23, 37, '2023-04-01 02:31:24', '2023-04-01 02:31:24'),
(194, 19, 37, '2023-04-01 02:31:24', '2023-04-01 02:31:24'),
(195, 13, 37, '2023-04-01 02:31:24', '2023-04-01 02:31:24'),
(196, 1, 37, '2023-04-01 02:31:25', '2023-04-01 02:31:25'),
(197, 23, 38, '2023-04-01 02:31:48', '2023-04-01 02:31:48'),
(198, 19, 38, '2023-04-01 02:31:48', '2023-04-01 02:31:48'),
(199, 13, 38, '2023-04-01 02:31:48', '2023-04-01 02:31:48'),
(200, 1, 38, '2023-04-01 02:31:48', '2023-04-01 02:31:48'),
(205, 22, 39, '2023-04-01 02:34:13', '2023-04-01 02:34:13'),
(206, 19, 39, '2023-04-01 02:34:13', '2023-04-01 02:34:13'),
(207, 13, 39, '2023-04-01 02:34:13', '2023-04-01 02:34:13'),
(208, 1, 39, '2023-04-01 02:34:13', '2023-04-01 02:34:13'),
(209, 22, 40, '2023-04-01 02:34:47', '2023-04-01 02:34:47'),
(210, 19, 40, '2023-04-01 02:34:47', '2023-04-01 02:34:47'),
(211, 13, 40, '2023-04-01 02:34:47', '2023-04-01 02:34:47'),
(212, 1, 40, '2023-04-01 02:34:47', '2023-04-01 02:34:47'),
(213, 22, 41, '2023-04-01 02:35:38', '2023-04-01 02:35:38'),
(214, 19, 41, '2023-04-01 02:35:39', '2023-04-01 02:35:39'),
(215, 13, 41, '2023-04-01 02:35:39', '2023-04-01 02:35:39'),
(216, 1, 41, '2023-04-01 02:35:39', '2023-04-01 02:35:39'),
(217, 22, 42, '2023-04-01 02:36:54', '2023-04-01 02:36:54'),
(218, 19, 42, '2023-04-01 02:36:54', '2023-04-01 02:36:54'),
(219, 13, 42, '2023-04-01 02:36:54', '2023-04-01 02:36:54'),
(220, 1, 42, '2023-04-01 02:36:54', '2023-04-01 02:36:54'),
(221, 22, 43, '2023-04-01 02:37:46', '2023-04-01 02:37:46'),
(222, 19, 43, '2023-04-01 02:37:46', '2023-04-01 02:37:46'),
(223, 13, 43, '2023-04-01 02:37:46', '2023-04-01 02:37:46'),
(224, 1, 43, '2023-04-01 02:37:46', '2023-04-01 02:37:46'),
(229, 22, 45, '2023-10-05 18:53:50', '2023-10-05 18:53:50'),
(230, 19, 45, '2023-10-05 18:53:50', '2023-10-05 18:53:50'),
(231, 13, 45, '2023-10-05 18:53:50', '2023-10-05 18:53:50'),
(232, 1, 45, '2023-10-05 18:53:50', '2023-10-05 18:53:50'),
(233, 14, 47, '2024-01-14 06:46:51', '2024-01-14 06:46:51'),
(234, 2, 47, '2024-01-14 06:46:51', '2024-01-14 06:46:51'),
(235, 30, 48, '2024-01-14 10:55:12', '2024-01-14 10:55:12'),
(236, 34, 49, '2024-01-14 10:59:01', '2024-01-14 10:59:01'),
(237, 29, 50, '2024-01-14 11:02:03', '2024-01-14 11:02:03'),
(238, 56, 51, '2024-01-14 11:06:13', '2024-01-14 11:06:13'),
(239, 6, 53, '2024-01-24 04:48:01', '2024-01-24 04:48:01'),
(240, 18, 56, '2024-01-24 04:52:53', '2024-01-24 04:52:53'),
(241, 18, 58, '2024-01-24 05:01:48', '2024-01-24 05:01:48'),
(246, 18, 63, '2024-01-31 20:00:03', '2024-01-31 20:00:03'),
(247, 18, 64, '2024-01-31 20:07:40', '2024-01-31 20:07:40'),
(253, 18, 65, '2024-02-04 20:42:03', '2024-02-04 20:42:03'),
(254, 20, 66, '2024-02-04 22:42:49', '2024-02-04 22:42:49'),
(255, 18, 69, '2024-02-06 02:29:41', '2024-02-06 02:29:41'),
(256, 9, 60, '2024-02-07 20:28:19', '2024-02-07 20:28:19'),
(260, 18, 70, '2024-02-07 20:34:02', '2024-02-07 20:34:02'),
(261, 2, 72, '2024-02-11 01:28:05', '2024-02-11 01:28:05'),
(262, 2, 73, '2024-02-11 01:28:22', '2024-02-11 01:28:22'),
(264, 2, 74, '2024-02-11 01:47:34', '2024-02-11 01:47:34'),
(265, 18, 75, '2024-02-11 02:35:48', '2024-02-11 02:35:48'),
(267, 18, 76, '2024-02-11 18:44:24', '2024-02-11 18:44:24'),
(270, 19, 77, '2024-02-12 20:03:38', '2024-02-12 20:03:38'),
(271, 18, 77, '2024-02-12 20:03:38', '2024-02-12 20:03:38'),
(273, 2, 79, '2024-02-13 01:28:50', '2024-02-13 01:28:50'),
(290, 18, 82, '2024-02-14 20:38:07', '2024-02-14 20:38:07'),
(299, 18, 81, '2024-02-15 01:49:34', '2024-02-15 01:49:34'),
(300, 14, 81, '2024-02-15 01:49:34', '2024-02-15 01:49:34'),
(301, 18, 83, '2024-02-15 01:58:47', '2024-02-15 01:58:47'),
(302, 14, 83, '2024-02-15 01:58:47', '2024-02-15 01:58:47'),
(305, 18, 80, '2024-02-15 18:45:33', '2024-02-15 18:45:33'),
(306, 18, 84, '2024-02-17 00:52:42', '2024-02-17 00:52:42'),
(307, 16, 85, '2024-02-17 08:42:19', '2024-02-17 08:42:19'),
(317, 1, 93, '2024-02-20 20:28:25', '2024-02-20 20:28:25'),
(324, 8, 86, '2024-02-21 00:44:43', '2024-02-21 00:44:43'),
(327, 8, 95, '2024-02-21 02:29:49', '2024-02-21 02:29:49'),
(330, 8, 94, '2024-02-22 19:15:43', '2024-02-22 19:15:43'),
(332, 8, 90, '2024-02-22 19:18:12', '2024-02-22 19:18:12'),
(333, 8, 89, '2024-02-22 19:19:30', '2024-02-22 19:19:30'),
(334, 8, 88, '2024-02-22 19:20:54', '2024-02-22 19:20:54'),
(335, 8, 87, '2024-02-22 19:22:01', '2024-02-22 19:22:01'),
(344, 21, 96, '2024-02-27 09:44:21', '2024-02-27 09:44:21'),
(345, 21, 97, '2024-02-28 21:40:27', '2024-02-28 21:40:27'),
(346, 21, 98, '2024-02-28 22:27:46', '2024-02-28 22:27:46'),
(347, 21, 99, '2024-02-28 22:55:43', '2024-02-28 22:55:43'),
(350, 21, 100, '2024-02-28 23:12:01', '2024-02-28 23:12:01'),
(351, 21, 101, '2024-02-28 23:43:06', '2024-02-28 23:43:06'),
(352, 21, 102, '2024-02-29 20:23:27', '2024-02-29 20:23:27'),
(353, 21, 103, '2024-03-02 16:30:26', '2024-03-02 16:30:26'),
(354, 21, 104, '2024-03-02 20:14:18', '2024-03-02 20:14:18'),
(355, 21, 105, '2024-03-02 20:22:28', '2024-03-02 20:22:28'),
(356, 21, 106, '2024-03-02 20:39:21', '2024-03-02 20:39:21'),
(365, 44, 112, '2024-11-05 07:16:50', '2024-11-05 07:16:50'),
(366, 43, 112, '2024-11-05 07:16:50', '2024-11-05 07:16:50'),
(367, 44, 111, '2024-11-05 07:17:21', '2024-11-05 07:17:21'),
(368, 44, 110, '2024-11-05 07:18:07', '2024-11-05 07:18:07'),
(369, 44, 109, '2024-11-05 07:19:35', '2024-11-05 07:19:35'),
(370, 44, 108, '2024-11-05 07:20:08', '2024-11-05 07:20:08'),
(371, 44, 107, '2024-11-05 07:20:35', '2024-11-05 07:20:35');

-- --------------------------------------------------------

--
-- Table structure for table `registration_points`
--

CREATE TABLE `registration_points` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `point` double DEFAULT NULL,
  `valid_from` date NOT NULL,
  `valid_to` date NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `registration_points`
--

INSERT INTO `registration_points` (`id`, `point`, `valid_from`, `valid_to`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 333, '2022-12-12', '2022-12-13', 1, '2022-12-11 03:40:00', '2022-12-11 03:40:00'),
(2, 200, '2023-01-16', '2023-01-27', 1, '2023-01-16 10:36:29', '2023-01-16 10:36:29'),
(3, 500, '2023-11-01', '2023-10-10', 1, '2023-10-05 19:02:25', '2023-10-05 19:02:25');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` text NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('1OyO211D02nZSJNd3PvOj2SdILHRadkK1sjmzylh', NULL, '175.29.182.50', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibWRDUlpkUmoyOHpUZDRyb1JVQ0pOcUtYd29ZNDBMOG82SUluOFZqdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHBzOi8vcGhvbmVwYXJhZGlzZS5tYXJrZXRsZWFkYmQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1730792654),
('3RvpmJii27C7seargDWTRy9A6nmiMM4u5Fpnsguv', NULL, '37.111.212.105', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS2c0QllwblRGMmlUZHdxMGh3V1U2WXlUWWV2dkdrZzIxVlJaWDhnVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHBzOi8vcGhvbmVwYXJhZGlzZS5tYXJrZXRsZWFkYmQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1730792316),
('6d4u0ZrxCKzgL8AjhrmX0o0T2OezhoOFCpXO2xuS', NULL, '116.204.148.61', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieXBkckJFNTZGT2QxSlZPQXoxT0JJQmlBSTJmTFZsQnFHb0RDZ0dPNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHBzOi8vcGhvbmVwYXJhZGlzZS5tYXJrZXRsZWFkYmQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1730793173),
('FLxUI6vZCMjf94ZfZQh7AaYKcrQsUOJAoLgQFhZa', NULL, '175.29.182.50', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_6_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.6 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMU44d3JmNHJwbTFFa0xvcGhUOWZYTlNyem5BNDQwVHlWcXdIM3ZOVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzI6Imh0dHBzOi8vcGhvbmVwYXJhZGlzZS5tYXJrZXRsZWFkYmQuY29tL3Byb2R1Y3QvMTA1L2h1YXdlaS1wNjAtcHJvLTgyNTZnYiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1730791386),
('gEfVhmUG7lObZcCrxF0T44HgViuG2LtcdSFfydg3', NULL, '175.29.182.50', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_6_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.6 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT3JObWdIakJsc3ZxeHljYTRUbFg2bHFuTFJTVTU0WGVuY1hiOExiRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHBzOi8vcGhvbmVwYXJhZGlzZS5tYXJrZXRsZWFkYmQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1730791773),
('H3FinQNnowYWwlB6Lox6zojtFAPNlHF4HKPd36zY', NULL, '103.159.36.66', 'Python/3.11 aiohttp/3.9.2', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicFJ6VnhtbERHa0oyU2FFT2txTXlscFdBd2phaVRMQXdUYWxzRXRMNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly9waG9uZXBhcmFkaXNlLm1hcmtldGxlYWRiZC5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1730790897),
('kJQhrBolZ27ENtleP9BvKwKbIMUPqfrFc6eaIYqD', NULL, '175.29.182.50', 'WhatsApp/2.23.20.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOFhnSmtVTWYwTlJjZFQ1S1pZblpLNmdJWXpmUnJ3Q0ZCdHpLTEJOdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHBzOi8vcGhvbmVwYXJhZGlzZS5tYXJrZXRsZWFkYmQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1730791263),
('Lf7jKEWkb3Uy6zsVahTKpO616vVjSe2ZpfXGYpX3', NULL, '37.111.194.167', 'WhatsApp/2.23.20.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWW5PS2dkSEpNMlNDYWUzOVlaRHdBbGh2UUxqUk1nQXJJNGQwYjFpaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHBzOi8vcGhvbmVwYXJhZGlzZS5tYXJrZXRsZWFkYmQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1730792620),
('qSApPwos6DcBcWKbBhkwG7y3KYk1J0vNLjVm6ozH', NULL, '37.111.194.167', 'WhatsApp/2.23.20.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSUZEYzFINFNMZGlsNVAxNDJKb0dZbXhwcGpUWWQ4SUZaSUZMTm9DQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHBzOi8vcGhvbmVwYXJhZGlzZS5tYXJrZXRsZWFkYmQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1730792620),
('sUWtsQe9eRBR9ZBKD5UnWNiFXXWyQ2XD3Zl0kVyP', 17, '175.29.182.50', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoieFEzUllGRnlQb0h0UjdJWkhMYWZJc0FpOUtNMjhZWjNVTTRUREttNiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHBzOi8vcGhvbmVwYXJhZGlzZS5tYXJrZXRsZWFkYmQuY29tIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTc7czo1OiJhbGVydCI7YTowOnt9fQ==', 1730791637),
('TVkq2iIwvCnDB8P41ZXNsx1GTLYKXtYg5HydvXAn', NULL, '37.111.194.167', 'WhatsApp/2.23.20.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaUp1Vng3QjZ6OXJURlVtTUpIcG11RDhwdGdNSjZHYzdraElubVpKZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHBzOi8vcGhvbmVwYXJhZGlzZS5tYXJrZXRsZWFkYmQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1730792661),
('UEl9vVrTXwfS79yqv1cFhK1SBIN2BnePzAa32Luc', NULL, '37.111.194.167', 'WhatsApp/2.23.20.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU3lZa2RhNjBmcXo5Zm1VMFI0d2diRnVQeGJOTTlTbEZBZXZYWnJGMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHBzOi8vcGhvbmVwYXJhZGlzZS5tYXJrZXRsZWFkYmQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1730792661),
('Uf3MCQTBJG0QvFLFPEuXETdROCpoUb5roko7IZ3p', 17, '37.111.194.167', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/26.0 Chrome/122.0.0.0 Mobile Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiU2RxWlRXY3BCZWQ4Y1F1cDN2TGFrcUZTenNxcVJtSXl5WlQySXBzYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHBzOi8vcGhvbmVwYXJhZGlzZS5tYXJrZXRsZWFkYmQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTc7fQ==', 1730793135),
('uuyr5wMdGYP1VOQMRFCmyw9WRPYDFS6kv3ea1omf', NULL, '103.159.36.66', 'Python/3.11 aiohttp/3.9.2', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid1JxWnhRRFFJcE9qQ3ZiUHN6U0dxaVVvVTJlYXhMOWxKSmtJM2lOQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly9waG9uZXBhcmFkaXNlLm1hcmtldGxlYWRiZC5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1730792696),
('zbbqvFsykEW0h8VFho5rJMA3kOCwwmZZg5AdQLMu', NULL, '175.29.182.50', 'WhatsApp/2.23.20.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOG5DS2hvcmEzZzVJVU9HUEF4T1BRSkpQYmNNdUFUOGhQekZDeE92OCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHBzOi8vcGhvbmVwYXJhZGlzZS5tYXJrZXRsZWFkYmQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1730791263);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `header_logo` varchar(255) DEFAULT NULL,
  `footer_logo` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `logo_color` longtext NOT NULL DEFAULT '#ed3833',
  `primary_color` varchar(255) NOT NULL DEFAULT '#ed3833',
  `secondary_color` varchar(255) NOT NULL DEFAULT '#1F1E1E',
  `header_topbar_bg_color` varchar(255) NOT NULL DEFAULT '#2A3143',
  `header_topbar_text_color` varchar(255) NOT NULL DEFAULT '#ffffff',
  `header_bg_color` varchar(255) NOT NULL DEFAULT '#000000',
  `header_text_color` varchar(255) NOT NULL DEFAULT '#ffffff',
  `header_bottom_bg_color` varchar(255) NOT NULL DEFAULT '#ffffff',
  `header_bottom_text_color` varchar(255) NOT NULL DEFAULT '#000000',
  `body_bg_color` varchar(255) NOT NULL DEFAULT '#F2F4F8',
  `category_bg_color` varchar(255) NOT NULL DEFAULT '#ffffff',
  `footer_bg_color` varchar(255) NOT NULL DEFAULT '#000000',
  `footer_text_color` varchar(255) NOT NULL DEFAULT '#f2f2f2',
  `head` longtext DEFAULT NULL,
  `body` longtext DEFAULT NULL,
  `google_map_link` varchar(255) DEFAULT NULL,
  `google_map_embed` longtext DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `custom_css` longtext DEFAULT NULL,
  `custom_js` longtext DEFAULT NULL,
  `minimum_point` varchar(255) DEFAULT '0',
  `equivalent_point` varchar(255) DEFAULT '0',
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_tag` varchar(255) DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `meta_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `header_logo`, `footer_logo`, `favicon`, `email`, `phone`, `address`, `logo_color`, `primary_color`, `secondary_color`, `header_topbar_bg_color`, `header_topbar_text_color`, `header_bg_color`, `header_text_color`, `header_bottom_bg_color`, `header_bottom_text_color`, `body_bg_color`, `category_bg_color`, `footer_bg_color`, `footer_text_color`, `head`, `body`, `google_map_link`, `google_map_embed`, `facebook`, `instagram`, `twitter`, `youtube`, `linkedin`, `custom_css`, `custom_js`, `minimum_point`, `equivalent_point`, `meta_title`, `meta_description`, `meta_tag`, `meta_keywords`, `meta_image`, `created_at`, `updated_at`) VALUES
(1, 'Phone Paradise BD', '1730372275608775138.png', '17303720171388916586.png', 'favicon_1730787667206326155.png', 'phoneparadisebd@gmail.com', '01711314927', 'Shop-10, Banani Super Market, Grand Floor, Dhaka-1213', '#ed3833', '#ed3833', '#1F1E1E', '#2A3143', '#ffffff', '#000000', '#ffffff', '#ffffff', '#000000', '#F2F4F8', '#ffffff', '#000000', '#f2f2f2', NULL, NULL, 'https://maps.app.goo.gl/FeY45iAVQRHUTxqx5', '<p><iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3650.7136341861656!2d90.4014214!3d23.7932097!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755c70e90bb671d%3A0x7eab77d0896252c0!2sBanani%20Super%20Market!5e0!3m2!1sen!2sbd!4v1730790703810!5m2!1sen!2sbd\" width=\"100%\" height=\"600\" allowfullscreen=\"allowfullscreen\" loading=\"lazy\"></iframe></p>', 'https://www.facebook.com/phoneparadisebd', NULL, 'twitter.com', NULL, 'dddd', NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, '2022-11-28 03:30:01', '2024-11-05 07:14:33');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `serial_number` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `link` text DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `serial_number`, `title`, `description`, `image`, `link`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 2, 'Slider 2', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,<br />sed do eiusmod tempor incididunt ut labore</p>', '1708940598.jpg', '#', 1, '2022-11-27 05:56:29', '2024-02-26 09:43:18'),
(2, 3, 'Slider 3', '<p>New Spring Sale Offer 2023.</p>', '1708940613.jpg', '#', 1, '2022-11-27 06:27:34', '2024-02-26 09:43:33'),
(3, 1, 'Slider 1', '<h3 class=\"hp-mod-card-title\" data-spm-anchor-id=\"a2a0e.home.flashSale.i0.735212f7x6y0RD\">FlashSale</h3>', '1708940584.jpg', '#', 1, '2022-12-24 09:09:18', '2024-02-26 09:43:04'),
(4, 4, 'Slider 4', NULL, '1708940623.jpg', NULL, 1, '2024-02-25 04:54:51', '2024-02-26 09:43:43');

-- --------------------------------------------------------

--
-- Table structure for table `slider_side_banners`
--

CREATE TABLE `slider_side_banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `serial_number` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `link` text DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slider_side_banners`
--

INSERT INTO `slider_side_banners` (`id`, `serial_number`, `title`, `description`, `image`, `link`, `is_active`, `created_at`, `updated_at`) VALUES
(5, 1, 'Slider Side Banner 1', NULL, '1708861489.jpg', '#', 1, '2024-02-25 11:44:49', '2024-02-25 11:44:49'),
(6, 2, 'Slider Side Banner 2', NULL, '1708861721.jpg', '#', 1, '2024-02-25 11:48:41', '2024-02-25 11:48:41');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `tran_id` varchar(255) DEFAULT NULL,
  `which_payment` varchar(255) DEFAULT NULL COMMENT 'order payment, wallet',
  `payment_method` varchar(255) DEFAULT NULL COMMENT 'online payment, wallet money, cash on delivery payment',
  `amount` varchar(255) NOT NULL DEFAULT '0',
  `store_amount` varchar(255) NOT NULL DEFAULT '0',
  `minus_amount` varchar(255) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `customer_id`, `phone`, `tran_id`, `which_payment`, `payment_method`, `amount`, `store_amount`, `minus_amount`, `created_at`, `updated_at`) VALUES
(1, NULL, '+8801627382866', '030123681000016', 'order payment', 'online payment', '1500.00', '1462.50', '37.5', '2023-01-03 11:50:32', '2023-01-03 11:50:32'),
(2, '14', '+8801627382866', '030123717000017', 'order payment', 'online payment', '1400.00', '1365.00', '35', '2023-01-03 12:19:56', '2023-01-03 12:19:56'),
(3, '14', '+8801627382866', '030123193000019', 'order payment', 'online payment', '3000.00', '2925.00', '75', '2023-01-03 12:25:04', '2023-01-03 12:25:04'),
(4, NULL, '+8801627382866', '050123755000022', 'order payment', 'online payment', '1500.00', '1462.50', '37.5', '2023-01-05 12:47:33', '2023-01-05 12:47:33'),
(5, NULL, '+8801627382866', '080123346000023', 'order payment', 'online payment', '22800.00', '22230.00', '570', '2023-01-08 11:05:55', '2023-01-08 11:05:55'),
(6, '2', '+8801627382866', '100123339000026', 'order payment', 'online payment', '3000.00', '2925.00', '75', '2023-01-10 02:33:23', '2023-01-10 02:33:23'),
(7, NULL, '+8801627382866', '160123352000027', 'order payment', 'online payment', '1640.00', '1599.00', '41', '2023-01-16 02:49:59', '2023-01-16 02:49:59'),
(8, NULL, '+8801627382866', '170123857000028', 'order payment', 'online payment', '450.00', '438.75', '11.25', '2023-01-17 15:40:13', '2023-01-17 15:40:13'),
(9, NULL, '+8801627382866', '190123760000031', 'order payment', 'online payment', '1550.00', '1511.25', '38.75', '2023-01-20 02:54:21', '2023-01-20 02:54:21'),
(10, NULL, '+8801627382866', '140223685000033', 'order payment', 'online payment', '45.00', '43.88', '1.12', '2023-02-15 03:57:28', '2023-02-15 03:57:28'),
(11, NULL, '+8801627382866', '200223388000034', 'order payment', 'online payment', '4950.00', '4826.25', '123.75', '2023-02-21 02:49:37', '2023-02-21 02:49:37'),
(12, '17', '+8801627382866', '210223591000036', 'order payment', 'online payment', '200.00', '195.00', '5', '2023-02-21 14:48:37', '2023-02-21 14:48:37'),
(13, NULL, '+8801627382866', '270223714000038', 'order payment', 'online payment', '1945.00', '1896.38', '48.62', '2023-02-27 22:01:44', '2023-02-27 22:01:44'),
(14, '14', '+8801627382866', '050323623000041', 'order payment', 'online payment', '90.00', '87.75', '2.25', '2023-03-05 19:43:37', '2023-03-05 19:43:37'),
(15, NULL, '+8801627382866', '110323329000042', 'order payment', 'online payment', '6000.00', '5850.00', '150', '2023-03-11 08:42:53', '2023-03-11 08:42:53'),
(16, NULL, '01627382866', '050923489000005', 'order payment', 'online payment', '2650.00', '2583.75', '66.25', '2023-09-05 19:25:24', '2023-09-05 19:25:24');

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `file_original_name` varchar(255) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `extension` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '2',
  `districts` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `referral_id` int(11) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `verification_code` varchar(255) DEFAULT NULL,
  `is_phone_verified` int(11) NOT NULL DEFAULT 0,
  `wallet_amount` varchar(255) DEFAULT '0',
  `used_wallet_amount` varchar(255) DEFAULT '0',
  `wallet_point` varchar(255) DEFAULT '0',
  `used_wallet_point` varchar(255) DEFAULT '0',
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `last_name`, `email`, `phone`, `type`, `districts`, `city`, `address`, `image`, `is_active`, `referral_id`, `email_verified_at`, `verification_code`, `is_phone_verified`, `wallet_amount`, `used_wallet_amount`, `wallet_point`, `used_wallet_point`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Ridoy Paul', NULL, 'cse.ridoypaul@gmail.com', '01766622828', '1', NULL, NULL, NULL, '1673893772.jpg', 1, NULL, NULL, NULL, 1, '0', '0', '0', '0', '$2y$10$Sy.GyHKreWMsKhZHie//muYxNRMViviSyN63dXo4EuBDusZFnex4S', NULL, NULL, NULL, NULL, '2022-12-23 00:50:59', '2023-01-16 12:29:32'),
(9, 'Ridoy Paul', NULL, NULL, '01627382869', '2', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 0, '0', '0', '0', '0', '$2y$10$9X1yMZ692FWFf.TzAIGJy.NrAYdEmZcOneNHdHf0SLFLFmD.nAYn6', NULL, NULL, NULL, NULL, '2022-12-23 10:49:20', '2022-12-23 10:49:20'),
(13, 'Ridoy Paul', NULL, NULL, '01627382865', '2', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 0, '0', '0', '0', '0', '$2y$10$lb9BoEbzRYTEIS66rzKmi.X1YcA3t.WeBf3VIn28WycxRWOEe.27.', NULL, NULL, NULL, NULL, '2022-12-23 11:00:47', '2022-12-23 11:00:47'),
(14, 'Ridoy Paul', NULL, NULL, '01627382866', '2', NULL, NULL, 'Shah Ali plaza, 1205', '1677734333.png', 1, NULL, NULL, '150601', 1, '4320', '0', '0', '0', '$2y$10$amA1oAMdW6W2UVUXO275t.GY9EDoTfx0UWQMl8Nm4ZVvX1yl8YCda', NULL, NULL, NULL, NULL, '2022-12-23 13:10:28', '2023-03-02 19:18:55'),
(16, 'Test user', NULL, 'test@gmail.com', '01627382333333', '1', NULL, 'Dhaka', NULL, NULL, 1, NULL, NULL, NULL, 0, '0', '0', '0', '0', '$2y$10$IzSvA1NzFZ./N5BG722ejuVgU8dc2Z04jcJelKukL6WwOxPEkhY36', NULL, NULL, NULL, NULL, '2023-01-16 12:35:00', '2023-01-16 12:35:00'),
(17, 'Admin', NULL, 'admin@gmail.com', '017XXXXXXXX', '1', NULL, NULL, NULL, '1730787839.png', 1, NULL, NULL, NULL, 1, '0', '0', '0', '0', '$2a$12$hGNGSZGdWdfJfUX3Ab3p4OPMN9x90nYa5P0N9EosrepTlD2L0ZJB.', NULL, NULL, NULL, NULL, '2022-12-23 00:50:59', '2024-11-05 06:24:24'),
(18, 'Ridoy Paul', NULL, NULL, '01849706261', '2', NULL, NULL, NULL, '1676965682.jpg', 1, NULL, NULL, '143791', 1, '0', '0', '0', '0', '$2y$10$wlEMMMHGDOCRSYzRCbOUceduAepZ63c99O4/QZCG43u5hyTbQRCCm', NULL, NULL, NULL, NULL, '2023-02-21 15:43:20', '2023-02-21 15:48:03'),
(23, 'md Rasel', NULL, NULL, '01917468315', '2', NULL, NULL, NULL, NULL, 1, NULL, NULL, '691904', 0, '0', '0', '0', '0', '$2y$10$JE/H1WriSFXlbtBvEbP0POQQmBvnnD7roFMsh/ClHWJR4dw8o4wJG', NULL, NULL, NULL, NULL, '2023-09-10 18:17:56', '2023-09-10 18:17:56'),
(27, 'a', NULL, NULL, '01880884848', '2', NULL, NULL, NULL, NULL, 1, NULL, NULL, '729190', 0, '0', '0', '0', '0', '$2y$10$Ubn.9xP5AOV3PWDtFx02SOOrvNMgUj1FLf0Z3IkF4chCuPszLfbj6', NULL, NULL, NULL, NULL, '2024-01-25 06:44:02', '2024-01-25 06:44:02'),
(28, 'Ridoy Paul', NULL, NULL, '01766622821', '2', NULL, NULL, NULL, NULL, 1, NULL, NULL, '521380', 0, '0', '0', '0', '0', '$2y$10$tLJ3HGXSjOdJIMPEi2PMZeVZv6hzdltYxAWFWl4RzkKhu3bUBxz4K', NULL, NULL, NULL, NULL, '2024-01-27 22:58:49', '2024-01-27 22:58:49'),
(29, 'Ridoy Paul', NULL, NULL, '01765522821', '2', NULL, NULL, NULL, NULL, 1, NULL, NULL, '512200', 0, '0', '0', '0', '0', '$2y$10$/1sQArmfqo5SASCpXkPgyeoOrBycRhUH1cRUYfEPmxcKmXysF90Y2', NULL, NULL, NULL, NULL, '2024-01-27 22:59:45', '2024-01-27 22:59:45'),
(31, 'Play', NULL, NULL, '01683871353', '2', NULL, NULL, NULL, NULL, 1, NULL, NULL, '641456', 0, '0', '0', '0', '0', '$2y$10$a3t1XrOpt2Wmd2lA2zoiKODl0lWwQu5cdqIGeqTDnYqzrtSCdcdd.', NULL, NULL, NULL, NULL, '2024-02-09 08:03:05', '2024-02-09 08:08:12'),
(34, 'Md Asaduzzaman', NULL, NULL, '01606515051', '2', NULL, NULL, NULL, NULL, 1, NULL, NULL, '483792', 1, '0', '0', '0', '0', '$2y$10$jrrw4FMlsZGNo6VFOojJ8Obsh0Gvr2vcY1yBkT25jjAvpsIbJracG', NULL, NULL, NULL, NULL, '2024-02-11 22:09:57', '2024-02-11 22:13:39'),
(35, 'Nfejdekofhofjwdoe jirekdwjfreohogjkerwkrj rekwlrkfekjgoperrkfoek ojeopkfwkferjgiejfwk okfepjfgrihgoiejfklegjroi jeiokferfekfrjgiorjofeko jeoighirhgioejfoekforjgijriogjeo foefojeigjrigklej jkrjfkrejgkrhglrlrk machinesrng.com', NULL, 'vadimnea66+356r@list.ru', '85687749825', '2', NULL, NULL, NULL, NULL, 1, NULL, NULL, '573428', 0, '0', '0', '0', '0', '$2y$10$QuEKo1N1/2GL4vvspmVRwOYDrwpT4N2fk/PaWYq7gvlDsVPedsZPW', NULL, NULL, NULL, NULL, '2024-05-16 19:33:59', '2024-05-16 19:33:59'),
(36, 'Saidul Hossain', NULL, NULL, '01766996853', '2', NULL, NULL, NULL, NULL, 1, NULL, NULL, '837308', 0, '0', '0', '0', '0', '$2y$10$8qL9oSvUK5ewCS/U0xJXIe9IojOlfqC9dVJvQ6VraUk9Twa478gfe', NULL, NULL, NULL, NULL, '2024-11-05 07:06:32', '2024-11-05 07:06:32');

-- --------------------------------------------------------

--
-- Table structure for table `variations`
--

CREATE TABLE `variations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variations`
--

INSERT INTO `variations` (`id`, `title`, `is_active`, `created_at`, `updated_at`) VALUES
(6, 'Region', 1, '2024-02-27 09:42:31', '2024-02-27 09:42:31'),
(7, 'Storage', 1, '2024-02-28 06:16:07', '2024-02-28 06:16:07');

-- --------------------------------------------------------

--
-- Table structure for table `wallets`
--

CREATE TABLE `wallets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `amount` double UNSIGNED NOT NULL DEFAULT 0,
  `used_amount` double UNSIGNED NOT NULL DEFAULT 0,
  `point` double UNSIGNED NOT NULL DEFAULT 0,
  `used_point` double UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wallet_entries`
--

CREATE TABLE `wallet_entries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `wallet_id` int(10) UNSIGNED NOT NULL,
  `cash_in` double DEFAULT NULL,
  `cash_out` double DEFAULT NULL,
  `point_in` double DEFAULT NULL,
  `point_out` double DEFAULT NULL,
  `note` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wallet_transactions`
--

CREATE TABLE `wallet_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `in_or_out` varchar(255) DEFAULT NULL,
  `point_or_wallet_tk` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `for_which` varchar(255) DEFAULT NULL,
  `date` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wholesales`
--

CREATE TABLE `wholesales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `variations` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `customer_id`, `product_id`, `variations`, `created_at`, `updated_at`) VALUES
(1, 2, 6, NULL, '2023-01-06 12:39:02', '2023-01-06 12:39:02'),
(2, 2, 22, NULL, '2023-01-07 12:35:47', '2023-01-07 12:35:47'),
(3, 2, 5, NULL, '2023-01-07 12:41:50', '2023-01-07 12:41:50'),
(6, 14, 6, NULL, '2023-01-16 10:05:24', '2023-01-16 10:05:24'),
(7, 14, 5, NULL, '2023-01-16 10:05:26', '2023-01-16 10:05:26'),
(8, 14, 22, NULL, '2023-01-16 10:05:28', '2023-01-16 10:05:28'),
(9, 14, 4, NULL, '2023-01-16 10:19:37', '2023-01-16 10:19:37'),
(10, 14, 23, NULL, '2023-01-16 10:20:17', '2023-01-16 10:20:17'),
(11, 18, 23, NULL, '2023-02-21 16:09:12', '2023-02-21 16:09:12'),
(12, 17, 31, NULL, '2023-04-29 22:24:29', '2023-04-29 22:24:29'),
(14, 17, 101, NULL, '2024-03-02 16:34:47', '2024-03-02 16:34:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogs_id_index` (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brands_id_index` (`id`),
  ADD KEY `brands_title_index` (`title`),
  ADD KEY `brands_is_active_index` (`is_active`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_customer_id_index` (`customer_id`),
  ADD KEY `carts_product_id_index` (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_id_index` (`id`),
  ADD KEY `categories_title_index` (`title`),
  ADD KEY `categories_is_featured_index` (`is_featured`),
  ADD KEY `categories_is_active_index` (`is_active`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`),
  ADD KEY `coupons_id_index` (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `flash_sale_offers`
--
ALTER TABLE `flash_sale_offers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `flash_sale_offers_id_index` (`id`);

--
-- Indexes for table `flash_sale_offer_products`
--
ALTER TABLE `flash_sale_offer_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `flash_sale_offer_products_id_index` (`id`),
  ADD KEY `flash_sale_offer_products_flash_sale_id_index` (`flash_sale_id`),
  ADD KEY `flash_sale_offer_products_product_id_index` (`product_id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galleries_id_index` (`id`);

--
-- Indexes for table `home_page_four_banners`
--
ALTER TABLE `home_page_four_banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_id_index` (`id`),
  ADD KEY `orders_code_index` (`code`),
  ADD KEY `orders_customer_id_index` (`customer_id`),
  ADD KEY `orders_phone_index` (`phone`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_products_order_code_index` (`order_code`),
  ADD KEY `order_products_product_id_index` (`product_id`);

--
-- Indexes for table `order_statuses`
--
ALTER TABLE `order_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pages_id_index` (`id`),
  ADD KEY `pages_name_index` (`name`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_id_index` (`id`),
  ADD KEY `products_title_index` (`title`),
  ADD KEY `products_brand_id_index` (`brand_id`),
  ADD KEY `products_category_id_index` (`category_id`),
  ADD KEY `products_sub_category_id_index` (`sub_category_id`),
  ADD KEY `products_discount_type_index` (`discount_type`),
  ADD KEY `products_is_festured_index` (`is_featured`),
  ADD KEY `products_is_tranding_index` (`is_tranding`),
  ADD KEY `products_code_index` (`code`),
  ADD KEY `products_type_index` (`type`),
  ADD KEY `products_is_active_index` (`is_active`);

--
-- Indexes for table `products_reviews`
--
ALTER TABLE `products_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_reviews_customer_id_index` (`customer_id`),
  ADD KEY `products_reviews_order_code_index` (`order_code`),
  ADD KEY `products_reviews_order_product_id_index` (`order_product_id`),
  ADD KEY `products_reviews_product_id_index` (`product_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_id_index` (`id`),
  ADD KEY `product_images_product_id_index` (`product_id`);

--
-- Indexes for table `product_stocks`
--
ALTER TABLE `product_stocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_stocks_product_id_index` (`product_id`),
  ADD KEY `variant` (`variant`);

--
-- Indexes for table `product_variations`
--
ALTER TABLE `product_variations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_variations_id_index` (`id`),
  ADD KEY `product_variations_product_id_index` (`product_id`),
  ADD KEY `product_variations_variaton_id_index` (`variaton_id`);

--
-- Indexes for table `product_with_categories`
--
ALTER TABLE `product_with_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_with_categories_category_id_index` (`category_id`),
  ADD KEY `product_with_categories_product_id_index` (`product_id`);

--
-- Indexes for table `registration_points`
--
ALTER TABLE `registration_points`
  ADD PRIMARY KEY (`id`),
  ADD KEY `registration_points_id_index` (`id`),
  ADD KEY `registration_points_valid_from_index` (`valid_from`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `settings_id_index` (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sliders_id_index` (`id`),
  ADD KEY `sliders_serial_number_index` (`serial_number`);

--
-- Indexes for table `slider_side_banners`
--
ALTER TABLE `slider_side_banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slider_side_banners_serial_number_index` (`serial_number`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscribers_email_unique` (`email`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- Indexes for table `variations`
--
ALTER TABLE `variations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `variations_id_index` (`id`);

--
-- Indexes for table `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallet_entries`
--
ALTER TABLE `wallet_entries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallet_transactions`
--
ALTER TABLE `wallet_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wholesales`
--
ALTER TABLE `wholesales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlists_id_index` (`id`),
  ADD KEY `wishlists_customer_id_index` (`customer_id`),
  ADD KEY `wishlists_product_id_index` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `areas`
--
ALTER TABLE `areas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=557;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flash_sale_offers`
--
ALTER TABLE `flash_sale_offers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `flash_sale_offer_products`
--
ALTER TABLE `flash_sale_offer_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_page_four_banners`
--
ALTER TABLE `home_page_four_banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `order_statuses`
--
ALTER TABLE `order_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `products_reviews`
--
ALTER TABLE `products_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=409;

--
-- AUTO_INCREMENT for table `product_stocks`
--
ALTER TABLE `product_stocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=321;

--
-- AUTO_INCREMENT for table `product_variations`
--
ALTER TABLE `product_variations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_with_categories`
--
ALTER TABLE `product_with_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=372;

--
-- AUTO_INCREMENT for table `registration_points`
--
ALTER TABLE `registration_points`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `slider_side_banners`
--
ALTER TABLE `slider_side_banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `variations`
--
ALTER TABLE `variations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wallet_entries`
--
ALTER TABLE `wallet_entries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wallet_transactions`
--
ALTER TABLE `wallet_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wholesales`
--
ALTER TABLE `wholesales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
