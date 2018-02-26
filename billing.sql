-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 21, 2018 at 12:42 PM
-- Server version: 5.7.19-0ubuntu0.16.04.1
-- PHP Version: 5.6.33-3+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `billing`
--

-- --------------------------------------------------------

--
-- Table structure for table `invetories`
--

CREATE TABLE `invetories` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invetories`
--

INSERT INTO `invetories` (`id`, `product_id`, `product_qty`, `created_at`, `updated_at`) VALUES
(1, 1, 130, '2018-01-29 00:00:27', '2018-02-14 02:32:11'),
(2, 2, 120, '2018-01-29 00:09:33', '2018-01-29 05:20:12'),
(3, 3, 60, '2018-01-29 01:14:47', '2018-01-29 01:14:47'),
(4, 4, 62, '2018-01-29 01:15:43', '2018-01-29 01:15:43'),
(5, 5, 200, '2018-01-29 01:16:33', '2018-01-29 01:16:33'),
(6, 6, 5, '2018-02-08 06:49:58', '2018-02-08 06:49:58'),
(7, 7, 110, '2018-02-16 04:46:41', '2018-02-16 04:47:39');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `name`, `address`, `phone`, `invoice_number`, `discount_amount`, `total_amount`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, '66', '1203267071', NULL, NULL, '2018-02-19 04:31:27', '2018-02-19 04:31:27');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_products`
--

CREATE TABLE `invoice_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `invoice_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `products_id` int(11) NOT NULL,
  `product_qty` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_products`
--

INSERT INTO `invoice_products` (`id`, `invoice_number`, `products_id`, `product_qty`, `created_at`, `updated_at`) VALUES
(1, '645416864', 2, '38', '2018-02-20 01:41:28', '2018-02-20 01:41:28'),
(2, '645416864', 5, '388', '2018-02-20 01:41:44', '2018-02-20 01:41:44'),
(3, '357474015', 2, '30', '2018-02-20 01:45:41', '2018-02-20 01:45:41'),
(4, '782277005', 2, '38', '2018-02-20 01:46:18', '2018-02-20 01:46:18'),
(5, '2048042557', 2, '38', '2018-02-20 01:46:45', '2018-02-20 01:46:45'),
(6, '878556568', 2, '38', '2018-02-20 01:47:25', '2018-02-20 01:47:25'),
(7, '837354112', 2, '1', '2018-02-20 01:47:54', '2018-02-20 01:47:54'),
(8, '837354112', 2, '1', '2018-02-20 01:47:56', '2018-02-20 01:47:56'),
(9, '837354112', 2, '1', '2018-02-20 01:47:56', '2018-02-20 01:47:56'),
(10, '1857978951', 2, '1', '2018-02-20 01:48:00', '2018-02-20 01:48:00'),
(11, '993185966', 2, '34', '2018-02-20 01:48:32', '2018-02-20 01:48:32'),
(12, '167984255', 2, '13', '2018-02-20 01:48:53', '2018-02-20 01:48:53'),
(13, '797169366', 2, '34', '2018-02-20 01:49:04', '2018-02-20 01:49:04'),
(14, '174763830', 2, '1', '2018-02-20 01:50:25', '2018-02-20 01:50:25'),
(15, '182471407', 2, '31', '2018-02-20 01:51:03', '2018-02-20 01:51:03'),
(16, '1006633653', 2, '1', '2018-02-20 01:52:11', '2018-02-20 01:52:11'),
(17, '1346234947', 2, '1', '2018-02-20 01:58:21', '2018-02-20 01:58:21'),
(18, '1739419768', 2, '1', '2018-02-20 01:59:17', '2018-02-20 01:59:17'),
(19, '561988791', 2, '1', '2018-02-20 01:59:42', '2018-02-20 01:59:42'),
(20, '1561451701', 2, '1', '2018-02-20 02:00:12', '2018-02-20 02:00:12'),
(21, '695329522', 2, '1', '2018-02-20 02:00:34', '2018-02-20 02:00:34'),
(22, '688835123', 2, '1', '2018-02-20 02:01:02', '2018-02-20 02:01:02'),
(23, '9294678', 2, '1', '2018-02-20 02:01:46', '2018-02-20 02:01:46'),
(24, '1019721150', 2, '1', '2018-02-20 02:02:02', '2018-02-20 02:02:02'),
(25, '2063581594', 2, '1', '2018-02-20 02:02:25', '2018-02-20 02:02:25'),
(26, '236171188', 2, '1', '2018-02-20 02:02:36', '2018-02-20 02:02:36'),
(27, '1398787020', 2, '1', '2018-02-20 02:02:45', '2018-02-20 02:02:45'),
(28, '1258473411', 2, '1', '2018-02-20 02:08:15', '2018-02-20 02:08:15'),
(29, '1258473411', 2, '1', '2018-02-20 02:08:16', '2018-02-20 02:08:16'),
(30, '1849134972', 2, '1', '2018-02-20 02:08:47', '2018-02-20 02:08:47'),
(31, '1627462203', 2, '1', '2018-02-20 02:08:59', '2018-02-20 02:08:59'),
(32, '1982440390', 2, '1', '2018-02-20 02:09:15', '2018-02-20 02:09:15'),
(33, '748314451', 2, '1', '2018-02-20 02:09:42', '2018-02-20 02:09:42'),
(34, '1219275786', 2, '1', '2018-02-20 02:10:09', '2018-02-20 02:10:09'),
(35, '1329036286', 2, '37', '2018-02-20 02:10:24', '2018-02-20 02:10:24'),
(36, '2135444261', 2, '39', '2018-02-20 02:10:50', '2018-02-20 02:10:50'),
(37, '418254639', 2, '37', '2018-02-20 02:11:51', '2018-02-20 02:11:51'),
(39, '418254639', 3, '38', '2018-02-20 02:12:24', '2018-02-20 02:12:24'),
(40, '729417602', 3, '38', '2018-02-20 02:12:49', '2018-02-20 02:12:49'),
(41, '960479466', 3, '8', '2018-02-20 02:13:18', '2018-02-20 02:13:18'),
(42, '1688620398', 3, '1', '2018-02-20 02:13:53', '2018-02-20 02:13:53'),
(43, '199696070', 2, '36', '2018-02-20 02:16:27', '2018-02-20 02:16:27'),
(44, '1763475876', 2, '38', '2018-02-20 02:17:02', '2018-02-20 02:17:02'),
(45, '104195025', 2, '38', '2018-02-20 02:18:03', '2018-02-20 02:18:03'),
(46, '1625758779', 2, '1', '2018-02-20 02:20:07', '2018-02-20 02:20:07'),
(47, '468002837', 2, '1', '2018-02-20 02:21:36', '2018-02-20 02:21:36'),
(48, '1404727322', 2, '38', '2018-02-20 02:22:03', '2018-02-20 02:22:03'),
(49, '1404727322', 3, '38', '2018-02-20 02:22:20', '2018-02-20 02:22:20'),
(50, '901991230', 3, '35', '2018-02-20 02:22:39', '2018-02-20 02:22:39'),
(51, '1336306124', 3, '1', '2018-02-20 02:23:51', '2018-02-20 02:23:51'),
(52, '1597634398', 3, '37', '2018-02-20 02:24:21', '2018-02-20 02:24:21'),
(53, '2014941680', 3, '31', '2018-02-20 02:24:40', '2018-02-20 02:24:40'),
(54, '1497716104', 3, '64', '2018-02-20 02:24:54', '2018-02-20 02:24:54'),
(55, '1888923124', 3, '36', '2018-02-20 02:25:39', '2018-02-20 02:25:39'),
(56, '1888923124', 2, '3', '2018-02-20 02:25:54', '2018-02-20 02:25:54'),
(57, '398584889', 3, '31', '2018-02-20 02:27:25', '2018-02-20 02:27:25'),
(58, '973902829', 3, '37', '2018-02-20 02:27:40', '2018-02-20 02:27:40'),
(59, '1919054821', 3, '32', '2018-02-20 02:34:37', '2018-02-20 02:34:37'),
(60, '872934123', 3, '35', '2018-02-20 02:34:54', '2018-02-20 02:34:54'),
(61, '1670900900', 3, '34', '2018-02-20 02:35:04', '2018-02-20 02:35:04'),
(62, '1408104359', 3, '13', '2018-02-20 02:35:26', '2018-02-20 02:35:26'),
(63, '1643691544', 3, '31', '2018-02-20 02:36:01', '2018-02-20 02:36:01'),
(64, '146452319', 3, '34', '2018-02-20 02:36:11', '2018-02-20 02:36:11'),
(65, '1433388899', 3, '31', '2018-02-20 02:36:41', '2018-02-20 02:36:41'),
(66, '348502415', 3, '34', '2018-02-20 02:36:50', '2018-02-20 02:36:50'),
(67, '317463181', 3, '31', '2018-02-20 02:37:32', '2018-02-20 02:37:32'),
(68, '756310090', 3, '1', '2018-02-20 02:38:38', '2018-02-20 02:38:38'),
(69, '664231560', 3, '34', '2018-02-20 02:38:44', '2018-02-20 02:38:44'),
(70, '905761448', 3, '37', '2018-02-20 02:39:04', '2018-02-20 02:39:04'),
(71, '905906808', 3, '37', '2018-02-20 02:39:16', '2018-02-20 02:39:16'),
(72, '279055636', 3, '34', '2018-02-20 02:39:39', '2018-02-20 02:39:39'),
(73, '1144594424', 3, '37', '2018-02-20 02:39:48', '2018-02-20 02:39:48'),
(74, '1507604450', 3, '37', '2018-02-20 02:40:02', '2018-02-20 02:40:02'),
(75, '1068330303', 2, '1', '2018-02-20 02:40:34', '2018-02-20 02:40:34'),
(76, '1178254673', 2, '37', '2018-02-20 02:40:45', '2018-02-20 02:40:45'),
(77, '1717991013', 2, '37', '2018-02-20 02:41:12', '2018-02-20 02:41:12'),
(78, '593075731', 2, '37', '2018-02-20 02:41:18', '2018-02-20 02:41:18'),
(79, '1696220212', 2, '38', '2018-02-20 02:41:28', '2018-02-20 02:41:28'),
(80, '122860822', 2, '38', '2018-02-20 02:41:43', '2018-02-20 02:41:43'),
(81, '676613405', 2, '37', '2018-02-20 02:52:18', '2018-02-20 02:52:18'),
(82, '1788133801', 2, '36', '2018-02-20 03:21:52', '2018-02-20 03:21:52'),
(83, '1313336703', 2, '38', '2018-02-20 03:23:27', '2018-02-20 03:23:27'),
(84, '861156310', 2, '37', '2018-02-20 03:23:49', '2018-02-20 03:23:49'),
(85, '588696772', 2, '73', '2018-02-20 03:24:05', '2018-02-20 03:24:05'),
(86, '2060253540', 2, '37', '2018-02-20 03:24:20', '2018-02-20 03:24:20'),
(87, '1380519934', 2, '37', '2018-02-20 03:25:26', '2018-02-20 03:25:26'),
(88, '1013598030', 2, '31', '2018-02-20 03:25:45', '2018-02-20 03:25:45'),
(89, '2035778800', 2, '37', '2018-02-20 03:26:45', '2018-02-20 03:26:45'),
(90, '200536912', 2, '31', '2018-02-20 03:27:16', '2018-02-20 03:27:16'),
(91, '2046728823', 2, '37', '2018-02-20 03:27:31', '2018-02-20 03:27:31'),
(92, '154415152', 2, '34', '2018-02-20 03:28:07', '2018-02-20 03:28:07'),
(93, '1226312082', 2, '34', '2018-02-20 03:29:32', '2018-02-20 03:29:32'),
(94, '198265624', 2, '31', '2018-02-20 03:32:40', '2018-02-20 03:32:40'),
(95, '1361939824', 2, '37', '2018-02-20 03:33:25', '2018-02-20 03:33:25'),
(96, '579829508', 2, '37', '2018-02-20 03:34:00', '2018-02-20 03:34:00'),
(97, '1572854835', 6, '1', '2018-02-20 03:36:48', '2018-02-20 03:36:48'),
(98, '1234922468', 6, '1', '2018-02-20 03:37:06', '2018-02-20 03:37:06'),
(99, '1734652699', 6, '31', '2018-02-20 03:46:24', '2018-02-20 03:46:24'),
(100, '270631440', 7, '31', '2018-02-20 03:49:55', '2018-02-20 03:49:55'),
(101, '141596776', 7, '31', '2018-02-20 03:50:45', '2018-02-20 03:50:45'),
(102, '997571805', 7, '33', '2018-02-20 03:51:33', '2018-02-20 03:51:33'),
(103, '887087400', 7, '31', '2018-02-20 03:51:49', '2018-02-20 03:51:49'),
(104, '1927549225', 7, '31', '2018-02-20 03:52:41', '2018-02-20 03:52:41'),
(105, '1450902244', 7, '31', '2018-02-20 03:53:03', '2018-02-20 03:53:03'),
(106, '1648336166', 7, '34', '2018-02-20 03:53:35', '2018-02-20 03:53:35'),
(107, '557128894', 7, '31', '2018-02-20 03:55:14', '2018-02-20 03:55:14'),
(108, '2115697810', 7, '31', '2018-02-20 03:56:45', '2018-02-20 03:56:45'),
(109, '362319376', 7, '34', '2018-02-20 03:58:23', '2018-02-20 03:58:23'),
(110, '1791073823', 7, '34', '2018-02-20 03:59:11', '2018-02-20 03:59:11'),
(111, '984654812', 7, '31', '2018-02-20 04:00:10', '2018-02-20 04:00:10'),
(112, '523229113', 7, '37', '2018-02-20 04:00:35', '2018-02-20 04:00:35'),
(113, '1705362348', 7, '37', '2018-02-20 04:00:44', '2018-02-20 04:00:44'),
(114, '494768278', 7, '38', '2018-02-20 04:01:06', '2018-02-20 04:01:06'),
(115, '494768278', 1, '37', '2018-02-20 04:01:20', '2018-02-20 04:01:20'),
(116, '224364830', 7, '37', '2018-02-20 04:02:16', '2018-02-20 04:02:16'),
(117, '25276135', 7, '39', '2018-02-20 04:02:23', '2018-02-20 04:02:23'),
(118, '1892300123', 7, '39', '2018-02-20 04:02:33', '2018-02-20 04:02:33'),
(119, '2046199551', 7, '34', '2018-02-20 04:06:03', '2018-02-20 04:06:03'),
(120, '2046199551', 3, '34', '2018-02-20 04:06:23', '2018-02-20 04:06:23'),
(121, '1680085566', 3, '1', '2018-02-20 04:16:18', '2018-02-20 04:16:18'),
(122, '55284773', 3, '1', '2018-02-20 04:16:37', '2018-02-20 04:16:37'),
(123, '1222109198', 3, '34', '2018-02-20 04:17:10', '2018-02-20 04:17:10'),
(124, '1290415543', 3, '35', '2018-02-20 04:45:45', '2018-02-20 04:45:45'),
(126, '1660475820', 3, '31', '2018-02-20 04:48:21', '2018-02-20 04:48:21'),
(127, '1276436244', 3, '1', '2018-02-20 04:49:17', '2018-02-20 04:49:17'),
(128, '416910972', 3, '1', '2018-02-20 04:49:34', '2018-02-20 04:49:34'),
(129, '959183027', 3, '7', '2018-02-20 04:50:39', '2018-02-20 04:50:39'),
(130, '1995625076', 3, '1', '2018-02-20 04:51:27', '2018-02-20 04:51:27'),
(131, '123692130', 3, '7', '2018-02-20 04:52:28', '2018-02-20 04:52:28'),
(132, '1114294435', 3, '1', '2018-02-20 04:56:35', '2018-02-20 04:56:35'),
(133, '99140852', 3, '1', '2018-02-20 04:58:07', '2018-02-20 04:58:07'),
(134, '490714840', 3, '1', '2018-02-20 04:59:24', '2018-02-20 04:59:24'),
(135, '189914843', 3, '1', '2018-02-20 05:00:19', '2018-02-20 05:00:19'),
(136, '1283473306', 3, '1', '2018-02-20 05:01:15', '2018-02-20 05:01:15'),
(137, '251111960', 3, '1', '2018-02-20 05:02:02', '2018-02-20 05:02:02'),
(138, '2003938658', 3, '1', '2018-02-20 05:02:16', '2018-02-20 05:02:16'),
(139, '1690450679', 3, '1', '2018-02-20 05:02:40', '2018-02-20 05:02:40'),
(140, '1108321266', 3, '1', '2018-02-20 05:03:05', '2018-02-20 05:03:05'),
(141, '683876884', 3, '1', '2018-02-20 05:03:34', '2018-02-20 05:03:34'),
(142, '937122925', 3, '13', '2018-02-20 05:04:07', '2018-02-20 05:04:07'),
(143, '623248552', 3, '31', '2018-02-20 05:04:20', '2018-02-20 05:04:20'),
(144, '755352606', 3, '31', '2018-02-20 05:04:41', '2018-02-20 05:04:41'),
(145, '8761077', 3, '1', '2018-02-20 05:04:50', '2018-02-20 05:04:50'),
(148, '409327770', 3, '1', '2018-02-20 05:05:42', '2018-02-20 05:05:42'),
(149, '1200278984', 3, '1', '2018-02-20 05:15:42', '2018-02-20 05:15:42'),
(150, '1472538913', 3, '1', '2018-02-20 05:16:11', '2018-02-20 05:16:11'),
(151, '114280268', 3, '1', '2018-02-20 05:16:30', '2018-02-20 05:16:30'),
(152, '62815835', 3, '1', '2018-02-20 05:16:50', '2018-02-20 05:16:50'),
(153, '1379926449', 5, '1', '2018-02-20 05:17:24', '2018-02-20 05:17:24'),
(154, '1828950228', 5, '1', '2018-02-20 05:17:51', '2018-02-20 05:17:51'),
(155, '764291414', 5, '1', '2018-02-20 05:19:08', '2018-02-20 05:19:08'),
(156, '1285038082', 5, '1', '2018-02-20 05:19:49', '2018-02-20 05:19:49'),
(157, '1133998216', 5, '1', '2018-02-20 05:20:11', '2018-02-20 05:20:11'),
(158, '182794845', 5, '1', '2018-02-20 05:20:24', '2018-02-20 05:20:24'),
(159, '754106854', 5, '1', '2018-02-20 05:20:52', '2018-02-20 05:20:52'),
(160, '276574676', 5, '1', '2018-02-20 05:21:52', '2018-02-20 05:21:52'),
(161, '1308147335', 5, '1', '2018-02-20 05:24:14', '2018-02-20 05:24:14'),
(162, '765913189', 5, '1', '2018-02-20 05:24:38', '2018-02-20 05:24:38'),
(163, '680121164', 5, '1', '2018-02-20 05:27:26', '2018-02-20 05:27:26'),
(164, '575408546', 5, '1', '2018-02-20 05:27:52', '2018-02-20 05:27:52'),
(165, '1314097635', 5, '0', '2018-02-20 05:28:28', '2018-02-20 05:28:28'),
(166, '1419797784', 5, '1', '2018-02-20 05:29:02', '2018-02-20 05:29:02'),
(167, '1417678004', 5, '1', '2018-02-20 05:29:34', '2018-02-20 05:29:34'),
(168, '1937948251', 5, '1', '2018-02-20 05:30:55', '2018-02-20 05:30:55'),
(169, '699779328', 5, '1', '2018-02-20 05:31:08', '2018-02-20 05:31:08'),
(170, '17446265', 5, '1', '2018-02-20 05:32:07', '2018-02-20 05:32:07'),
(171, '380292296', 5, '31', '2018-02-20 05:32:33', '2018-02-20 05:32:33'),
(172, '209058064', 5, '31', '2018-02-20 05:32:50', '2018-02-20 05:32:50'),
(173, '1636426114', 5, '12', '2018-02-20 05:33:45', '2018-02-20 05:33:45'),
(174, '1636426114', 5, '12', '2018-02-20 05:34:40', '2018-02-20 05:34:40'),
(175, '697284157', 5, '1', '2018-02-20 05:41:10', '2018-02-20 05:41:10'),
(176, '1206780834', 5, '1', '2018-02-20 05:42:04', '2018-02-20 05:42:04'),
(177, '215629817', 5, '1', '2018-02-20 05:42:18', '2018-02-20 05:42:18'),
(178, '342723076', 5, '1', '2018-02-20 05:42:43', '2018-02-20 05:42:43'),
(179, '1473270683', 5, '31', '2018-02-20 05:43:19', '2018-02-20 05:43:19'),
(180, '457427533', 5, '1', '2018-02-20 05:44:08', '2018-02-20 05:44:08'),
(181, '1388039518', 5, '2', '2018-02-20 05:44:53', '2018-02-20 05:44:53'),
(182, '1647272473', 5, '1', '2018-02-20 05:47:43', '2018-02-20 05:47:43'),
(183, '883685960', 5, '1', '2018-02-20 05:48:28', '2018-02-20 05:48:28'),
(184, '385064707', 5, '1', '2018-02-20 05:49:11', '2018-02-20 05:49:11'),
(185, '697151698', 5, '31', '2018-02-20 05:49:21', '2018-02-20 05:49:21'),
(186, '1520836675', 5, '31', '2018-02-20 05:54:17', '2018-02-20 05:54:17'),
(187, '1457876815', 5, '4', '2018-02-20 05:56:11', '2018-02-20 05:56:11'),
(188, '1380846239', 5, '4', '2018-02-20 05:56:32', '2018-02-20 05:56:32'),
(189, '1380846239', 5, '4', '2018-02-20 05:56:33', '2018-02-20 05:56:33'),
(190, '191681669', 5, '2', '2018-02-20 05:57:57', '2018-02-20 05:57:57'),
(191, '1882744941', 5, '1', '2018-02-20 06:02:33', '2018-02-20 06:02:33'),
(192, '1759661392', 5, '80', '2018-02-20 06:03:15', '2018-02-20 06:03:15'),
(193, '271513017', 5, '1', '2018-02-20 06:05:19', '2018-02-20 06:05:19'),
(194, '1458139357', 5, '10', '2018-02-20 06:17:09', '2018-02-20 06:17:09'),
(195, '1458139357', 5, '10', '2018-02-20 06:17:21', '2018-02-20 06:17:21'),
(196, '1814047778', 5, '1', '2018-02-20 06:38:43', '2018-02-20 06:38:43'),
(197, '518701561', 5, '35', '2018-02-20 06:40:08', '2018-02-20 06:40:08'),
(198, '210481086', 5, '2', '2018-02-20 06:41:06', '2018-02-20 06:41:06'),
(199, '1848170797', 5, '1', '2018-02-20 06:41:55', '2018-02-20 06:41:55'),
(200, '35650954', 5, '8', '2018-02-20 06:44:42', '2018-02-20 06:44:42'),
(201, '643175584', 5, '1', '2018-02-20 06:45:58', '2018-02-20 06:45:58'),
(202, '1668401638', 6, '1', '2018-02-20 06:48:19', '2018-02-20 06:48:19'),
(203, '1302132031', 6, '1', '2018-02-20 06:48:45', '2018-02-20 06:48:45'),
(204, '995899357', 6, '1', '2018-02-20 06:49:03', '2018-02-20 06:49:03'),
(205, '644349130', 6, '1', '2018-02-20 06:49:19', '2018-02-20 06:49:19'),
(206, '988000482', 6, '1', '2018-02-20 06:49:41', '2018-02-20 06:49:41'),
(207, '677255224', 6, '35', '2018-02-20 06:50:00', '2018-02-20 06:50:00'),
(208, '1979375823', 6, '1', '2018-02-20 06:50:44', '2018-02-20 06:50:44'),
(209, '1551334653', 6, '2', '2018-02-20 06:50:58', '2018-02-20 06:50:58'),
(210, '864399253', 6, '1', '2018-02-20 06:51:12', '2018-02-20 06:51:12'),
(211, '1552042434', 6, '1', '2018-02-20 06:51:28', '2018-02-20 06:51:28'),
(212, '1264639553', 6, '1', '2018-02-20 06:52:04', '2018-02-20 06:52:04'),
(213, '1219029555', 6, '5', '2018-02-20 06:52:17', '2018-02-20 06:52:17'),
(214, '339718538', 6, '31', '2018-02-20 06:52:46', '2018-02-20 06:52:46'),
(215, '260948443', 6, '32', '2018-02-20 06:53:02', '2018-02-20 06:53:02'),
(216, '1431111522', 6, '31', '2018-02-20 06:53:18', '2018-02-20 06:53:18'),
(217, '1344410346', 6, '1', '2018-02-20 06:53:29', '2018-02-20 06:53:29'),
(218, '2123964942', 6, '31', '2018-02-20 06:53:42', '2018-02-20 06:53:42'),
(219, '1850849105', 6, '1', '2018-02-20 06:54:10', '2018-02-20 06:54:10'),
(220, '1534422243', 6, '32', '2018-02-20 06:54:48', '2018-02-20 06:54:48'),
(221, '7162399', 6, '35', '2018-02-20 06:55:45', '2018-02-20 06:55:45'),
(222, '947620313', 6, '1', '2018-02-20 06:56:34', '2018-02-20 06:56:34'),
(223, '712079488', 6, '1', '2018-02-20 06:56:58', '2018-02-20 06:56:58'),
(224, '350781155', 6, '32', '2018-02-20 06:57:37', '2018-02-20 06:57:37'),
(225, '569396913', 6, '5', '2018-02-20 06:58:45', '2018-02-20 06:58:45'),
(226, '1417773354', 6, '31', '2018-02-20 07:03:06', '2018-02-20 07:03:06'),
(227, '1054292022', 6, '2', '2018-02-20 07:03:22', '2018-02-20 07:03:22'),
(228, '305032003', 6, '1', '2018-02-20 07:03:52', '2018-02-20 07:03:52'),
(229, '1166760659', 6, '34', '2018-02-20 07:04:08', '2018-02-20 07:04:08'),
(230, '727652807', 6, '334', '2018-02-20 07:04:21', '2018-02-20 07:04:21'),
(231, '456766283', 6, '1', '2018-02-20 07:07:36', '2018-02-20 07:07:36'),
(232, '605150810', 6, '35', '2018-02-20 07:07:47', '2018-02-20 07:07:47'),
(233, '1061316567', 6, '33', '2018-02-20 07:08:00', '2018-02-20 07:08:00'),
(234, '864628139', 6, '33', '2018-02-20 07:09:32', '2018-02-20 07:09:32'),
(235, '1999886388', 6, '37', '2018-02-20 07:10:47', '2018-02-20 07:10:47'),
(236, '793579396', 6, '01', '2018-02-20 07:13:58', '2018-02-20 07:13:58'),
(237, '793579396', 6, '01', '2018-02-20 07:14:09', '2018-02-20 07:14:09'),
(238, '1075433884', 6, '1', '2018-02-20 07:15:31', '2018-02-20 07:15:31'),
(239, '1110422351', 6, '1', '2018-02-20 07:15:47', '2018-02-20 07:15:47'),
(240, '1038297260', 6, '1', '2018-02-20 07:18:43', '2018-02-20 07:18:43'),
(241, '1192231509', 6, '38', '2018-02-20 07:18:58', '2018-02-20 07:18:58'),
(242, '50663563', 6, '1', '2018-02-20 07:20:50', '2018-02-20 07:20:50'),
(243, '1074344683', 6, '1', '2018-02-20 07:21:04', '2018-02-20 07:21:04'),
(244, '41368312', 6, '1', '2018-02-20 07:21:26', '2018-02-20 07:21:26'),
(245, '299233582', 6, '35', '2018-02-20 07:21:52', '2018-02-20 07:21:52'),
(246, '39812993', 6, '1', '2018-02-20 07:23:17', '2018-02-20 07:23:17'),
(247, '39812993', 6, '1', '2018-02-20 07:23:23', '2018-02-20 07:23:23'),
(248, '1002300863', 3, '3', '2018-02-21 00:19:07', '2018-02-21 00:19:07'),
(249, '1002300863', 3, '3', '2018-02-21 00:19:12', '2018-02-21 00:19:12'),
(250, '1667570021', 3, '13', '2018-02-21 01:02:32', '2018-02-21 01:02:32'),
(251, '699865034', 3, '2', '2018-02-21 01:03:02', '2018-02-21 01:03:02'),
(252, '1812474142', 3, '2', '2018-02-21 01:03:13', '2018-02-21 01:03:13'),
(253, '738993035', 3, '2', '2018-02-21 01:04:29', '2018-02-21 01:04:29'),
(254, '206433820', 3, '1', '2018-02-21 01:07:38', '2018-02-21 01:07:38'),
(255, '1558839106', 3, '2', '2018-02-21 01:07:57', '2018-02-21 01:07:57'),
(256, '1741942642', 3, '1', '2018-02-21 01:09:14', '2018-02-21 01:09:14'),
(257, '124317249', 3, '2', '2018-02-21 01:09:59', '2018-02-21 01:09:59'),
(258, '516173497', 3, '01', '2018-02-21 01:10:20', '2018-02-21 01:10:20'),
(259, '1254755431', 3, '2', '2018-02-21 01:11:18', '2018-02-21 01:11:18'),
(260, '745306869', 3, '2', '2018-02-21 01:12:23', '2018-02-21 01:12:23'),
(261, '1751291339', 3, '3', '2018-02-21 01:12:37', '2018-02-21 01:12:37'),
(262, '297490870', 3, '2', '2018-02-21 01:14:22', '2018-02-21 01:14:22'),
(263, '224654074', 3, '12', '2018-02-21 01:14:41', '2018-02-21 01:14:41'),
(264, '1062971891', 3, '2', '2018-02-21 01:15:00', '2018-02-21 01:15:00'),
(265, '744881322', 3, '12', '2018-02-21 01:15:25', '2018-02-21 01:15:25'),
(268, '1370658248', 3, '2', '2018-02-21 01:16:05', '2018-02-21 01:16:05'),
(269, '378247004', 3, '13', '2018-02-21 01:18:04', '2018-02-21 01:18:04'),
(270, '976583171', 3, '2', '2018-02-21 01:39:29', '2018-02-21 01:39:29');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(10, '2018_01_23_100208_create_products_table', 2),
(11, '2018_01_23_100804_create_invetories_table', 2),
(16, '2018_02_14_085916_create_invoice_product_table', 3),
(17, '2018_01_23_101453_create_invoices_table', 4),
(18, '2018_02_14_094441_create_invoice_products_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `barcode_number` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `product_code`, `price`, `product_desc`, `barcode_number`, `created_at`, `updated_at`) VALUES
(1, 'Seeds', 'SDE-104', '200', 'seeds to selll', 1976860930, '2018-01-29 00:00:27', '2018-01-29 00:00:27'),
(2, 'Firtlizerds', 'FRT 810', '500', 'Plant firtilizers', 985669143, '2018-01-29 00:09:33', '2018-01-29 00:09:33'),
(3, 'Firtli 400', 'fril51047', '62', 'thrid fritz', 2108540073, '2018-01-29 01:14:47', '2018-01-29 01:14:47'),
(5, 'weed remover', 'weedrmz542', '12', 'grass removers from paddy', 453254990, '2018-01-29 01:16:33', '2018-01-29 01:16:33'),
(6, 'product test', 'TEST 1', '500', 'podusct kashfk', 988351435, '2018-02-08 06:49:57', '2018-02-08 06:49:57'),
(7, 'keyboards', 'KEY - 150', '500', 'keyboards from dell', 1898507239, '2018-02-16 04:46:41', '2018-02-16 04:46:41');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` int(11) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@billing.com', '$2y$10$BBIVd0NT9Lx4edZKzOQ75ui4RgBh0BMz0ZnWbsPMjpLSkPnQhB3iu', 0, 'WYSkxfj4SueyIKPLFXLyJwuU4YSO88SGMoqgHev3Ohv8TSFBsYk91ZyIfHX0', '2018-01-24 04:10:48', '2018-01-24 04:10:48'),
(2, 'User', 'user@billing.com', '$2y$10$443RZEg7lAxBdXT3Nge0uehbvcq9Amek7umLrCxu2ya7Oa4gZ2kla', 1, 'BSq9TtuQwA7HZ3V3wVK7U7ekemUEM6hAr7OQSeSpIK4HnlWgeD2niqgQuX3v', '2018-01-24 04:11:26', '2018-01-24 04:11:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `invetories`
--
ALTER TABLE `invetories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_products`
--
ALTER TABLE `invoice_products`
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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_product_code_unique` (`product_code`),
  ADD UNIQUE KEY `products_barcode_number_unique` (`barcode_number`);

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
-- AUTO_INCREMENT for table `invetories`
--
ALTER TABLE `invetories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `invoice_products`
--
ALTER TABLE `invoice_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=271;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;