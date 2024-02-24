-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 24, 2024 at 06:21 PM
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
-- Database: `tokoonline`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `uri` varchar(255) DEFAULT NULL,
  `permission` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'Dashboard', 'icon-chart-bar', '/', NULL, NULL, NULL),
(2, 0, 2, 'Admin', 'icon-server', '', NULL, NULL, NULL),
(3, 2, 3, 'Users', 'icon-users', 'auth/users', NULL, NULL, NULL),
(4, 2, 4, 'Roles', 'icon-user', 'auth/roles', NULL, NULL, NULL),
(5, 2, 5, 'Permission', 'icon-ban', 'auth/permissions', NULL, NULL, NULL),
(6, 2, 6, 'Menu', 'icon-bars', 'auth/menu', NULL, NULL, NULL),
(7, 2, 7, 'Operation log', 'icon-history', 'auth/logs', NULL, NULL, NULL),
(8, 0, 7, 'Helpers', 'icon-cogs', '', NULL, '2024-02-23 23:38:48', '2024-02-23 23:38:48'),
(9, 8, 8, 'Scaffold', 'icon-keyboard', 'helpers/scaffold', NULL, '2024-02-23 23:38:48', '2024-02-23 23:38:48'),
(10, 8, 9, 'Database terminal', 'icon-database', 'helpers/terminal/database', NULL, '2024-02-23 23:38:48', '2024-02-23 23:38:48'),
(11, 8, 10, 'Laravel artisan', 'icon-terminal', 'helpers/terminal/artisan', NULL, '2024-02-23 23:38:48', '2024-02-23 23:38:48'),
(12, 8, 11, 'Routes', 'icon-list-alt', 'helpers/routes', NULL, '2024-02-23 23:38:48', '2024-02-23 23:38:48'),
(13, 0, 11, 'Penggunas', 'icon-file', 'penggunas', NULL, '2024-02-23 23:49:53', '2024-02-23 23:49:53'),
(14, 0, 11, 'Users', 'icon-file', 'users', NULL, '2024-02-24 00:01:46', '2024-02-24 00:01:46'),
(15, 0, 11, 'Produks', 'icon-file', 'produks', NULL, '2024-02-24 00:12:28', '2024-02-24 00:12:28');

-- --------------------------------------------------------

--
-- Table structure for table `admin_operation_log`
--

CREATE TABLE `admin_operation_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `method` varchar(10) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `input` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2024-02-23 23:32:12', '2024-02-23 23:32:12'),
(2, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-02-23 23:32:14', '2024-02-23 23:32:14'),
(3, 1, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2024-02-23 23:34:01', '2024-02-23 23:34:01'),
(4, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-02-23 23:34:01', '2024-02-23 23:34:01'),
(5, 1, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2024-02-23 23:34:09', '2024-02-23 23:34:09'),
(6, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-02-23 23:34:09', '2024-02-23 23:34:09'),
(7, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-02-23 23:34:16', '2024-02-23 23:34:16'),
(8, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-02-23 23:34:46', '2024-02-23 23:34:46'),
(9, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-02-23 23:38:56', '2024-02-23 23:38:56'),
(10, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-02-23 23:39:31', '2024-02-23 23:39:31'),
(11, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"pengguna\",\"model_name\":\"App\\\\Models\\\\Pengguna\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\PenggunaController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"name\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"email\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"password\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"WKK8G81yvRsCGjrkzT09uUPHuylmbEXC4JlI9sXZ\"}', '2024-02-23 23:49:53', '2024-02-23 23:49:53'),
(12, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-02-23 23:49:53', '2024-02-23 23:49:53'),
(13, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-02-23 23:51:24', '2024-02-23 23:51:24'),
(14, 1, 'admin/penggunas', 'GET', '127.0.0.1', '[]', '2024-02-23 23:51:31', '2024-02-23 23:51:31'),
(15, 1, 'admin/penggunas', 'GET', '127.0.0.1', '[]', '2024-02-23 23:56:00', '2024-02-23 23:56:00'),
(16, 1, 'admin/penggunas', 'GET', '127.0.0.1', '[]', '2024-02-23 23:57:57', '2024-02-23 23:57:57'),
(17, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-02-24 00:00:16', '2024-02-24 00:00:16'),
(18, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"user\",\"model_name\":\"App\\\\Models\\\\User\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\UserController\",\"create\":[\"controller\",\"menu_item\"],\"fields\":[{\"name\":null,\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"WKK8G81yvRsCGjrkzT09uUPHuylmbEXC4JlI9sXZ\"}', '2024-02-24 00:01:46', '2024-02-24 00:01:46'),
(19, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-02-24 00:01:47', '2024-02-24 00:01:47'),
(20, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-02-24 00:02:37', '2024-02-24 00:02:37'),
(21, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-02-24 00:02:39', '2024-02-24 00:02:39'),
(22, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-02-24 00:07:42', '2024-02-24 00:07:42'),
(23, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"produk\",\"model_name\":\"App\\\\Models\\\\Produk\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\ProdukController\",\"create\":[\"controller\",\"menu_item\"],\"fields\":[{\"name\":null,\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"WKK8G81yvRsCGjrkzT09uUPHuylmbEXC4JlI9sXZ\"}', '2024-02-24 00:12:28', '2024-02-24 00:12:28'),
(24, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-02-24 00:12:31', '2024-02-24 00:12:31'),
(25, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-02-24 00:12:41', '2024-02-24 00:12:41'),
(26, 1, 'admin/produks', 'GET', '127.0.0.1', '[]', '2024-02-24 00:12:44', '2024-02-24 00:12:44'),
(27, 1, 'admin/produks/1', 'GET', '127.0.0.1', '[]', '2024-02-24 00:13:01', '2024-02-24 00:13:01'),
(28, 1, 'admin/produks', 'GET', '127.0.0.1', '[]', '2024-02-24 00:13:07', '2024-02-24 00:13:07'),
(29, 1, 'admin/produks/1/edit', 'GET', '127.0.0.1', '[]', '2024-02-24 00:13:16', '2024-02-24 00:13:16'),
(30, 1, 'admin/produks/1', 'PUT', '127.0.0.1', '{\"nama\":\"Dompet Kulit\",\"kategori\":\"Pria\",\"deskripsi\":\"mampu menambahkan kapasitas penyimpanan sebesar 200+\",\"harga\":\"20000.00\",\"stok\":\"2\",\"gambar1\":\"global\\/landingpage\\/images\\/dompet1.jpg\",\"gambar2\":\"global\\/landingpage\\/images\\/dompet2.jpg\",\"gambar3\":\"global\\/landingpage\\/images\\/dompet3.jpg\",\"_token\":\"WKK8G81yvRsCGjrkzT09uUPHuylmbEXC4JlI9sXZ\",\"_method\":\"PUT\"}', '2024-02-24 00:13:32', '2024-02-24 00:13:32'),
(31, 1, 'admin/produks', 'GET', '127.0.0.1', '[]', '2024-02-24 00:13:33', '2024-02-24 00:13:33'),
(32, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-02-24 00:13:42', '2024-02-24 00:13:42'),
(33, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-02-24 00:17:50', '2024-02-24 00:17:50'),
(34, 1, 'admin/produks', 'GET', '127.0.0.1', '[]', '2024-02-24 00:17:59', '2024-02-24 00:17:59'),
(35, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-02-24 00:18:06', '2024-02-24 00:18:06'),
(36, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-02-24 00:18:28', '2024-02-24 00:18:28'),
(37, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-02-24 00:18:35', '2024-02-24 00:18:35'),
(38, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-02-24 00:19:08', '2024-02-24 00:19:08'),
(39, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-02-24 00:20:17', '2024-02-24 00:20:17'),
(40, 1, 'admin/produks', 'GET', '127.0.0.1', '[]', '2024-02-24 00:20:23', '2024-02-24 00:20:23'),
(41, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-02-24 00:20:30', '2024-02-24 00:20:30'),
(42, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-02-24 00:21:42', '2024-02-24 00:21:42'),
(43, 1, 'admin/penggunas', 'GET', '127.0.0.1', '[]', '2024-02-24 00:24:56', '2024-02-24 00:24:56'),
(44, 1, 'admin/penggunas/1', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"X05OvAKa4lrWRbxJNu363185Z5yL891K7VXzTb0H\"}', '2024-02-24 00:25:53', '2024-02-24 00:25:53'),
(45, 1, 'admin/penggunas', 'GET', '127.0.0.1', '[]', '2024-02-24 00:25:53', '2024-02-24 00:25:53'),
(46, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2024-02-24 00:26:06', '2024-02-24 00:26:06'),
(47, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-02-24 00:26:18', '2024-02-24 00:26:18'),
(48, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-02-24 00:26:22', '2024-02-24 00:26:22'),
(49, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-02-24 00:26:26', '2024-02-24 00:26:26'),
(50, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-02-24 00:31:37', '2024-02-24 00:31:37'),
(51, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-02-24 05:07:06', '2024-02-24 05:07:06'),
(52, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-02-24 05:07:12', '2024-02-24 05:07:12'),
(53, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-02-24 05:07:30', '2024-02-24 05:07:30'),
(54, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-02-24 05:07:40', '2024-02-24 05:07:40'),
(55, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-02-24 05:08:01', '2024-02-24 05:08:01'),
(56, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-02-24 05:08:10', '2024-02-24 05:08:10'),
(57, 1, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2024-02-24 08:10:35', '2024-02-24 08:10:35'),
(58, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-02-24 08:10:36', '2024-02-24 08:10:36'),
(59, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-02-24 08:10:36', '2024-02-24 08:10:36'),
(60, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-02-24 08:10:45', '2024-02-24 08:10:45'),
(61, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-02-24 08:10:58', '2024-02-24 08:10:58'),
(62, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-02-24 08:11:01', '2024-02-24 08:11:01'),
(63, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-02-24 08:11:29', '2024-02-24 08:11:29'),
(64, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-02-24 08:11:36', '2024-02-24 08:11:36'),
(65, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-02-24 08:12:12', '2024-02-24 08:12:12'),
(66, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-02-24 08:12:16', '2024-02-24 08:12:16'),
(67, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-02-24 08:16:27', '2024-02-24 08:16:27'),
(68, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-02-24 08:16:31', '2024-02-24 08:16:31'),
(69, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-02-24 08:16:59', '2024-02-24 08:16:59'),
(70, 1, 'admin/penggunas', 'GET', '127.0.0.1', '[]', '2024-02-24 08:17:20', '2024-02-24 08:17:20'),
(71, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-02-24 08:17:22', '2024-02-24 08:17:22'),
(72, 1, 'admin/penggunas', 'GET', '127.0.0.1', '[]', '2024-02-24 08:17:24', '2024-02-24 08:17:24'),
(73, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-02-24 08:18:10', '2024-02-24 08:18:10'),
(74, 1, 'admin/produks', 'GET', '127.0.0.1', '[]', '2024-02-24 08:18:16', '2024-02-24 08:18:16'),
(75, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-02-24 08:18:23', '2024-02-24 08:18:23'),
(76, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-02-24 08:38:20', '2024-02-24 08:38:20'),
(77, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-02-24 08:38:35', '2024-02-24 08:38:35'),
(78, 1, 'admin/produks', 'GET', '127.0.0.1', '[]', '2024-02-24 08:45:14', '2024-02-24 08:45:14'),
(79, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-02-24 08:45:19', '2024-02-24 08:45:19'),
(80, 1, 'admin/produks', 'GET', '127.0.0.1', '[]', '2024-02-24 08:45:54', '2024-02-24 08:45:54'),
(81, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-02-24 08:45:57', '2024-02-24 08:45:57'),
(82, 1, 'admin/produks', 'GET', '127.0.0.1', '[]', '2024-02-24 08:46:11', '2024-02-24 08:46:11'),
(83, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-02-24 08:46:31', '2024-02-24 08:46:31'),
(84, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-02-24 08:57:58', '2024-02-24 08:57:58'),
(85, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-02-24 08:58:03', '2024-02-24 08:58:03'),
(86, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-02-24 08:59:42', '2024-02-24 08:59:42'),
(87, 1, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2024-02-24 09:03:35', '2024-02-24 09:03:35'),
(88, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-02-24 09:03:36', '2024-02-24 09:03:36'),
(89, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-02-24 09:03:42', '2024-02-24 09:03:42'),
(90, 1, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2024-02-24 09:10:13', '2024-02-24 09:10:13'),
(91, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-02-24 09:10:13', '2024-02-24 09:10:13'),
(92, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-02-24 09:10:46', '2024-02-24 09:10:46'),
(93, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-02-24 09:11:54', '2024-02-24 09:11:54'),
(94, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-02-24 09:19:22', '2024-02-24 09:19:22'),
(95, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-02-24 09:19:54', '2024-02-24 09:19:54'),
(96, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-02-24 09:20:37', '2024-02-24 09:20:37'),
(97, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-02-24 09:20:59', '2024-02-24 09:20:59'),
(98, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-02-24 09:21:05', '2024-02-24 09:21:05');

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `http_method` varchar(255) DEFAULT NULL,
  `http_path` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
(1, 'All permission', '*', '', '*', NULL, NULL),
(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
(3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
(4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL),
(5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL),
(6, 'Admin helpers', 'ext.helpers', '', '/helpers/*', '2024-02-23 23:38:48', '2024-02-23 23:38:48');

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2024-02-23 23:29:21', '2024-02-23 23:29:21');

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_menu`
--

CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_menu`
--

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_permissions`
--

CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_permissions`
--

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_users`
--

CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_users`
--

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(190) NOT NULL,
  `password` varchar(60) NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$12$hX3Xa.SOYbpdcQhyypBy0uiF1AsS6EoTvyufIB1NT2/2nKt2GjfS2', 'Administrator', NULL, NULL, '2024-02-23 23:29:21', '2024-02-23 23:29:21');

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_permissions`
--

CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_02_23_085223_create_produk_table', 2),
(7, '2024_02_23_165432_add_role_column_to_users_table', 3),
(8, '2016_01_04_173148_create_admin_tables', 4),
(9, '2024_02_24_064953_create_pengguna_table', 5);

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
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `harga` decimal(10,2) NOT NULL,
  `stok` int(11) NOT NULL,
  `gambar1` varchar(255) NOT NULL,
  `gambar2` varchar(255) NOT NULL,
  `gambar3` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `nama`, `kategori`, `deskripsi`, `harga`, `stok`, `gambar1`, `gambar2`, `gambar3`, `created_at`, `updated_at`) VALUES
(1, 'Dompet Kulit', 'Pria', 'mampu menambahkan kapasitas penyimpanan sebesar 200+', 20000.00, 2, 'global/landingpage/images/dompet1.jpg', 'global/landingpage/images/dompet2.jpg', 'global/landingpage/images/dompet3.jpg', NULL, NULL),
(2, 'Jaket', 'Pria', 'mampu memantulkan demage dari Cahaya Matahari dan memulihkan Spf Pengguna Sebesar 20++', 90000.00, 2, 'global/landingpage/images/jaket1.jpg\r\n', 'global/landingpage/images/jaket2.jpg', 'global/landingpage/images/jaket3.jpg', NULL, NULL),
(3, 'Sepatu', 'Pria', 'Mampu meningkatkan Agility Pengguna Sebesar 100+ dan mempercepat gerak tubuh', 20000.00, 89, 'global/landingpage/images/sepatu1.jpg', 'global/landingpage/images/sepatu2.jpg', 'global/landingpage/images/sepatu3.jpg', NULL, NULL),
(4, 'Sweater', 'Pria', 'Menghangatkan suhu tubuh hingga mendidih', 1200.00, 4, 'global/landingpage/images/sweater11.jpg', 'global/landingpage/images/sweater12.jpg', 'global/landingpage/images/sweater13.jpg', NULL, NULL),
(5, 'Kecamata', 'Pria', 'Mampu Melihat Jarak sejauh 100Km dengan jelas', 72000.00, 52, 'global/landingpage/images/kecamata11.jpg\r\n', 'global/landingpage/images/kecamata12.jpg\r\n', 'global/landingpage/images/kecamata13.jpg\r\n', NULL, NULL),
(6, 'Gelang', 'aksesoris', 'Meningkatkan Ketampanan secara Eksplisit dan memikat Wanita sebesar 200++ demage', 190.00, 2, 'global/landingpage/images/gelang1.jpg', 'global/landingpage/images/gelang2.jpg', 'global/landingpage/images/gelang3.jpg', NULL, NULL),
(7, 'Kalung', 'aksesoris', 'Meningkatkan Ketampanan secara Eksplisit dan memikat Wanita sebesar 900++ demage', 590.00, 41, 'global/landingpage/images/kalung1.jpg', 'global/landingpage/images/kalung2.jpg', 'global/landingpage/images/kalung3.jpg', NULL, NULL),
(8, 'Hoodie', 'Wanita', 'meningkatkan resistensi terhadap api', 790.00, 4, 'global/landingpage/images/hoodie1.jpg', 'global/landingpage/images/hoodie2.jpg', 'global/landingpage/images/hoodie3.jpg', NULL, NULL),
(9, 'Tas Wanita', 'Wanita', 'Menambah Penyimpanan Barang', 290.00, 21, 'global/landingpage/images/taswanita1.jpg', 'global/landingpage/images/taswanita2.jpg', 'global/landingpage/images/taswanita3.jpg', NULL, NULL),
(10, 'Cincin', 'Wanita', 'Meningkatkan Kemampuan Basic Attack', 190.00, 5, 'global/landingpage/images/cincin1.jpg', 'global/landingpage/images/cincin2.jpg', 'global/landingpage/images/cincin3.jpg', NULL, NULL);

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
  `role` enum('admin','user') NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Bramantio', 'email1@gmail.com', NULL, '$2y$12$aswLAf8idLE3xdKAvJo3l.FoS5htYnlQb9zblL/Kn/q7TiY6HWOIK', 'user', NULL, NULL, NULL),
(2, 'TioGanteng', 'bramantio@gmail.com', NULL, '$2y$12$bRe/N2AN/xbVJzZgMFnHoekPgFrTPL0xBIEP0cK0fqQ4RQz.Thej.', 'admin', NULL, '2024-02-23 07:57:52', '2024-02-23 07:57:52'),
(3, 'Tuantio', 'Tuantio@gmail.com', NULL, '$2y$12$60qeacoLfFB2.8EtvQqCneIbOwg6axbJAOHHusYfjM2MKRz1dbShu', 'admin', NULL, '2024-02-23 07:59:52', '2024-02-23 07:59:52'),
(4, 'tiokece', 'tiokece@gmail.com', NULL, '$2y$12$Kli6KlFavafrud0MdOkoCO6MuLV7gTKgnEAHu7zdLICAfYDCvIHHi', 'admin', NULL, '2024-02-23 11:23:08', '2024-02-23 11:23:08'),
(5, 'admintio', 'admintio@gmail.com', NULL, '$2y$12$vtQi5aPNTBucMqmSj3Dw4eLT9PcqY5Dlk8ehlyi7uZJAZnfoOKmJa', 'admin', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_operation_log_user_id_index` (`user_id`);

--
-- Indexes for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_name_unique` (`name`),
  ADD UNIQUE KEY `admin_permissions_slug_unique` (`slug`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_roles_name_unique` (`name`),
  ADD UNIQUE KEY `admin_roles_slug_unique` (`slug`);

--
-- Indexes for table `admin_role_menu`
--
ALTER TABLE `admin_role_menu`
  ADD KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`);

--
-- Indexes for table `admin_role_permissions`
--
ALTER TABLE `admin_role_permissions`
  ADD KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- Indexes for table `admin_role_users`
--
ALTER TABLE `admin_role_users`
  ADD KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_username_unique` (`username`);

--
-- Indexes for table `admin_user_permissions`
--
ALTER TABLE `admin_user_permissions`
  ADD KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
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
-- AUTO_INCREMENT for table `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
