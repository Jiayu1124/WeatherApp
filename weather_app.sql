-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 16, 2022 at 09:28 AM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `weather_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `forecasts`
--

CREATE TABLE `forecasts` (
  `id` int(11) NOT NULL,
  `tile_id` int(11) DEFAULT NULL,
  `temperature` float(12,2) DEFAULT NULL,
  `situation` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `time` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `forecasts`
--

INSERT INTO `forecasts` (`id`, `tile_id`, `temperature`, `situation`, `description`, `icon`, `time`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 26.99, 'Rain', 'light rain', '10n', '2022-05-16 04:00:00', '2022-05-16 02:56:47', '2022-05-16 03:38:47', '2022-05-16 03:38:47'),
(2, 1, 26.00, 'Rain', 'light rain', '10n', '2022-05-16 07:00:00', '2022-05-16 02:56:47', '2022-05-16 03:38:47', '2022-05-16 03:38:47'),
(3, 1, 25.60, 'Rain', 'light rain', '10n', '2022-05-16 10:00:00', '2022-05-16 02:56:47', '2022-05-16 03:38:47', '2022-05-16 03:38:47'),
(4, 1, 25.93, 'Clouds', 'broken clouds', '04n', '2022-05-16 13:00:00', '2022-05-16 02:56:47', '2022-05-16 03:38:47', '2022-05-16 03:38:47'),
(5, 1, 26.22, 'Rain', 'light rain', '10d', '2022-05-16 16:00:00', '2022-05-16 02:56:47', '2022-05-16 03:38:47', '2022-05-16 03:38:47'),
(6, 1, 26.99, 'Rain', 'light rain', '10n', '2022-05-16 04:00:00', '2022-05-16 03:38:47', '2022-05-16 03:39:16', '2022-05-16 03:39:16'),
(7, 1, 26.00, 'Rain', 'light rain', '10n', '2022-05-16 07:00:00', '2022-05-16 03:38:47', '2022-05-16 03:39:16', '2022-05-16 03:39:16'),
(8, 1, 25.60, 'Rain', 'light rain', '10n', '2022-05-16 10:00:00', '2022-05-16 03:38:47', '2022-05-16 03:39:16', '2022-05-16 03:39:16'),
(9, 1, 25.93, 'Clouds', 'broken clouds', '04n', '2022-05-16 13:00:00', '2022-05-16 03:38:47', '2022-05-16 03:39:16', '2022-05-16 03:39:16'),
(10, 1, 26.22, 'Rain', 'light rain', '10d', '2022-05-16 16:00:00', '2022-05-16 03:38:47', '2022-05-16 03:39:16', '2022-05-16 03:39:16'),
(11, 1, 26.99, 'Rain', 'light rain', '10n', '2022-05-16 04:00:00', '2022-05-16 03:39:16', '2022-05-16 03:39:26', '2022-05-16 03:39:26'),
(12, 1, 26.00, 'Rain', 'light rain', '10n', '2022-05-16 07:00:00', '2022-05-16 03:39:17', '2022-05-16 03:39:26', '2022-05-16 03:39:26'),
(13, 1, 25.60, 'Rain', 'light rain', '10n', '2022-05-16 10:00:00', '2022-05-16 03:39:17', '2022-05-16 03:39:26', '2022-05-16 03:39:26'),
(14, 1, 25.93, 'Clouds', 'broken clouds', '04n', '2022-05-16 13:00:00', '2022-05-16 03:39:17', '2022-05-16 03:39:26', '2022-05-16 03:39:26'),
(15, 1, 26.22, 'Rain', 'light rain', '10d', '2022-05-16 16:00:00', '2022-05-16 03:39:17', '2022-05-16 03:39:26', '2022-05-16 03:39:26'),
(16, 1, 26.99, 'Rain', 'light rain', '10n', '2022-05-16 04:00:00', '2022-05-16 03:39:27', '2022-05-16 03:52:54', '2022-05-16 03:52:54'),
(17, 1, 26.00, 'Rain', 'light rain', '10n', '2022-05-16 07:00:00', '2022-05-16 03:39:27', '2022-05-16 03:52:54', '2022-05-16 03:52:54'),
(18, 1, 25.60, 'Rain', 'light rain', '10n', '2022-05-16 10:00:00', '2022-05-16 03:39:27', '2022-05-16 03:52:54', '2022-05-16 03:52:54'),
(19, 1, 25.93, 'Clouds', 'broken clouds', '04n', '2022-05-16 13:00:00', '2022-05-16 03:39:27', '2022-05-16 03:52:54', '2022-05-16 03:52:54'),
(20, 1, 26.22, 'Rain', 'light rain', '10d', '2022-05-16 16:00:00', '2022-05-16 03:39:27', '2022-05-16 03:52:54', '2022-05-16 03:52:54'),
(21, 2, 11.75, 'Rain', 'light rain', '10n', '2022-05-16 04:00:00', '2022-05-16 03:43:38', '2022-05-16 03:43:38', NULL),
(22, 2, 10.59, 'Rain', 'light rain', '10n', '2022-05-16 07:00:00', '2022-05-16 03:43:38', '2022-05-16 03:43:38', NULL),
(23, 2, 10.29, 'Rain', 'light rain', '10n', '2022-05-16 10:00:00', '2022-05-16 03:43:38', '2022-05-16 03:43:38', NULL),
(24, 2, 10.89, 'Clouds', 'overcast clouds', '04n', '2022-05-16 13:00:00', '2022-05-16 03:43:38', '2022-05-16 03:43:38', NULL),
(25, 2, 12.86, 'Clouds', 'overcast clouds', '04d', '2022-05-16 16:00:00', '2022-05-16 03:43:38', '2022-05-16 03:43:38', NULL),
(26, 3, 25.24, 'Clouds', 'broken clouds', '04n', '2022-05-16 04:00:00', '2022-05-16 03:45:59', '2022-05-16 03:52:54', '2022-05-16 03:52:54'),
(27, 3, 22.38, 'Clouds', 'scattered clouds', '03n', '2022-05-16 07:00:00', '2022-05-16 03:45:59', '2022-05-16 03:52:54', '2022-05-16 03:52:54'),
(28, 3, 19.74, 'Clouds', 'scattered clouds', '03n', '2022-05-16 10:00:00', '2022-05-16 03:45:59', '2022-05-16 03:52:54', '2022-05-16 03:52:54'),
(29, 3, 16.76, 'Clear', 'clear sky', '01d', '2022-05-16 13:00:00', '2022-05-16 03:45:59', '2022-05-16 03:52:54', '2022-05-16 03:52:54'),
(30, 3, 21.07, 'Clear', 'clear sky', '01d', '2022-05-16 16:00:00', '2022-05-16 03:45:59', '2022-05-16 03:52:54', '2022-05-16 03:52:54'),
(31, 1, 26.99, 'Rain', 'light rain', '10n', '2022-05-16 04:00:00', '2022-05-16 03:52:54', '2022-05-16 03:52:54', NULL),
(32, 1, 26.00, 'Rain', 'light rain', '10n', '2022-05-16 07:00:00', '2022-05-16 03:52:54', '2022-05-16 03:52:54', NULL),
(33, 1, 25.60, 'Rain', 'light rain', '10n', '2022-05-16 10:00:00', '2022-05-16 03:52:54', '2022-05-16 03:52:54', NULL),
(34, 1, 25.93, 'Clouds', 'broken clouds', '04n', '2022-05-16 13:00:00', '2022-05-16 03:52:54', '2022-05-16 03:52:54', NULL),
(35, 1, 26.22, 'Rain', 'light rain', '10d', '2022-05-16 16:00:00', '2022-05-16 03:52:54', '2022-05-16 03:52:54', NULL),
(36, 3, 25.24, 'Clouds', 'broken clouds', '04n', '2022-05-16 04:00:00', '2022-05-16 03:52:54', '2022-05-16 05:49:48', '2022-05-16 05:49:48'),
(37, 3, 22.38, 'Clouds', 'scattered clouds', '03n', '2022-05-16 07:00:00', '2022-05-16 03:52:54', '2022-05-16 05:49:48', '2022-05-16 05:49:48'),
(38, 3, 19.74, 'Clouds', 'scattered clouds', '03n', '2022-05-16 10:00:00', '2022-05-16 03:52:54', '2022-05-16 05:49:48', '2022-05-16 05:49:48'),
(39, 3, 16.76, 'Clear', 'clear sky', '01d', '2022-05-16 13:00:00', '2022-05-16 03:52:54', '2022-05-16 05:49:48', '2022-05-16 05:49:48'),
(40, 3, 21.07, 'Clear', 'clear sky', '01d', '2022-05-16 16:00:00', '2022-05-16 03:52:54', '2022-05-16 05:49:48', '2022-05-16 05:49:48'),
(41, 3, 22.38, 'Clouds', 'scattered clouds', '03n', '2022-05-16 07:00:00', '2022-05-16 05:49:48', '2022-05-16 07:37:51', '2022-05-16 07:37:51'),
(42, 3, 19.74, 'Clouds', 'scattered clouds', '03n', '2022-05-16 10:00:00', '2022-05-16 05:49:48', '2022-05-16 07:37:51', '2022-05-16 07:37:51'),
(43, 3, 16.76, 'Clear', 'clear sky', '01d', '2022-05-16 13:00:00', '2022-05-16 05:49:48', '2022-05-16 07:37:51', '2022-05-16 07:37:51'),
(44, 3, 21.07, 'Clear', 'clear sky', '01d', '2022-05-16 16:00:00', '2022-05-16 05:49:48', '2022-05-16 07:37:51', '2022-05-16 07:37:51'),
(45, 3, 29.06, 'Clouds', 'scattered clouds', '03d', '2022-05-16 19:00:00', '2022-05-16 05:49:48', '2022-05-16 07:37:51', '2022-05-16 07:37:51'),
(46, 4, 26.00, 'Rain', 'light rain', '10n', '2022-05-16 07:00:00', '2022-05-16 06:00:29', '2022-05-16 06:00:29', NULL),
(47, 4, 25.60, 'Rain', 'light rain', '10n', '2022-05-16 10:00:00', '2022-05-16 06:00:29', '2022-05-16 06:00:29', NULL),
(48, 4, 25.93, 'Clouds', 'broken clouds', '04n', '2022-05-16 13:00:00', '2022-05-16 06:00:29', '2022-05-16 06:00:29', NULL),
(49, 4, 26.22, 'Rain', 'light rain', '10d', '2022-05-16 16:00:00', '2022-05-16 06:00:29', '2022-05-16 06:00:29', NULL),
(50, 4, 27.58, 'Rain', 'light rain', '10d', '2022-05-16 19:00:00', '2022-05-16 06:00:29', '2022-05-16 06:00:29', NULL),
(51, 5, 24.19, 'Clouds', 'scattered clouds', '03d', '2022-05-16 07:00:00', '2022-05-16 06:00:48', '2022-05-16 06:01:04', '2022-05-16 06:01:04'),
(52, 5, 21.54, 'Clouds', 'broken clouds', '04d', '2022-05-16 10:00:00', '2022-05-16 06:00:48', '2022-05-16 06:01:04', '2022-05-16 06:01:04'),
(53, 5, 18.37, 'Clouds', 'overcast clouds', '04n', '2022-05-16 13:00:00', '2022-05-16 06:00:48', '2022-05-16 06:01:04', '2022-05-16 06:01:04'),
(54, 5, 17.24, 'Clouds', 'overcast clouds', '04n', '2022-05-16 16:00:00', '2022-05-16 06:00:48', '2022-05-16 06:01:04', '2022-05-16 06:01:04'),
(55, 5, 17.13, 'Clouds', 'overcast clouds', '04n', '2022-05-16 19:00:00', '2022-05-16 06:00:48', '2022-05-16 06:01:04', '2022-05-16 06:01:04'),
(56, 6, 17.06, 'Clear', 'clear sky', '01n', '2022-05-16 07:00:00', '2022-05-16 06:00:54', '2022-05-16 07:37:53', '2022-05-16 07:37:53'),
(57, 6, 15.86, 'Clear', 'clear sky', '01n', '2022-05-16 10:00:00', '2022-05-16 06:00:54', '2022-05-16 07:37:53', '2022-05-16 07:37:53'),
(58, 6, 15.00, 'Clear', 'clear sky', '01n', '2022-05-16 13:00:00', '2022-05-16 06:00:54', '2022-05-16 07:37:53', '2022-05-16 07:37:53'),
(59, 6, 15.24, 'Clear', 'clear sky', '01d', '2022-05-16 16:00:00', '2022-05-16 06:00:54', '2022-05-16 07:37:53', '2022-05-16 07:37:53'),
(60, 6, 21.55, 'Clear', 'clear sky', '01d', '2022-05-16 19:00:00', '2022-05-16 06:00:54', '2022-05-16 07:37:53', '2022-05-16 07:37:53'),
(61, 5, 24.19, 'Clouds', 'scattered clouds', '03d', '2022-05-16 07:00:00', '2022-05-16 06:01:04', '2022-05-16 07:37:52', '2022-05-16 07:37:52'),
(62, 5, 21.54, 'Clouds', 'broken clouds', '04d', '2022-05-16 10:00:00', '2022-05-16 06:01:04', '2022-05-16 07:37:52', '2022-05-16 07:37:52'),
(63, 5, 18.37, 'Clouds', 'overcast clouds', '04n', '2022-05-16 13:00:00', '2022-05-16 06:01:04', '2022-05-16 07:37:52', '2022-05-16 07:37:52'),
(64, 5, 17.24, 'Clouds', 'overcast clouds', '04n', '2022-05-16 16:00:00', '2022-05-16 06:01:04', '2022-05-16 07:37:52', '2022-05-16 07:37:52'),
(65, 5, 17.13, 'Clouds', 'overcast clouds', '04n', '2022-05-16 19:00:00', '2022-05-16 06:01:04', '2022-05-16 07:37:52', '2022-05-16 07:37:52'),
(66, 7, 20.24, 'Clouds', 'broken clouds', '04n', '2022-05-16 07:00:00', '2022-05-16 06:01:08', '2022-05-16 07:37:53', '2022-05-16 07:37:53'),
(67, 7, 20.12, 'Clouds', 'broken clouds', '04n', '2022-05-16 10:00:00', '2022-05-16 06:01:08', '2022-05-16 07:37:53', '2022-05-16 07:37:53'),
(68, 7, 20.01, 'Clouds', 'broken clouds', '04n', '2022-05-16 13:00:00', '2022-05-16 06:01:08', '2022-05-16 07:37:53', '2022-05-16 07:37:53'),
(69, 7, 20.79, 'Clouds', 'broken clouds', '04d', '2022-05-16 16:00:00', '2022-05-16 06:01:08', '2022-05-16 07:37:53', '2022-05-16 07:37:53'),
(70, 7, 22.47, 'Clouds', 'overcast clouds', '04d', '2022-05-16 19:00:00', '2022-05-16 06:01:08', '2022-05-16 07:37:53', '2022-05-16 07:37:53'),
(71, 8, 19.28, 'Clouds', 'overcast clouds', '04n', '2022-05-16 07:00:00', '2022-05-16 06:01:33', '2022-05-16 07:37:54', '2022-05-16 07:37:54'),
(72, 8, 17.40, 'Clouds', 'broken clouds', '04n', '2022-05-16 10:00:00', '2022-05-16 06:01:33', '2022-05-16 07:37:54', '2022-05-16 07:37:54'),
(73, 8, 16.07, 'Clear', 'clear sky', '01n', '2022-05-16 13:00:00', '2022-05-16 06:01:34', '2022-05-16 07:37:54', '2022-05-16 07:37:54'),
(74, 8, 21.71, 'Clear', 'clear sky', '01d', '2022-05-16 16:00:00', '2022-05-16 06:01:34', '2022-05-16 07:37:54', '2022-05-16 07:37:54'),
(75, 8, 27.75, 'Clear', 'clear sky', '01d', '2022-05-16 19:00:00', '2022-05-16 06:01:34', '2022-05-16 07:37:54', '2022-05-16 07:37:54'),
(76, 9, 21.53, 'Clouds', 'scattered clouds', '03d', '2022-05-16 07:00:00', '2022-05-16 06:01:59', '2022-05-16 07:37:55', '2022-05-16 07:37:55'),
(77, 9, 21.19, 'Rain', 'light rain', '10d', '2022-05-16 10:00:00', '2022-05-16 06:01:59', '2022-05-16 07:37:55', '2022-05-16 07:37:55'),
(78, 9, 21.99, 'Rain', 'moderate rain', '10d', '2022-05-16 13:00:00', '2022-05-16 06:01:59', '2022-05-16 07:37:55', '2022-05-16 07:37:55'),
(79, 9, 20.35, 'Rain', 'light rain', '10d', '2022-05-16 16:00:00', '2022-05-16 06:01:59', '2022-05-16 07:37:55', '2022-05-16 07:37:55'),
(80, 9, 16.64, 'Clouds', 'scattered clouds', '03n', '2022-05-16 19:00:00', '2022-05-16 06:01:59', '2022-05-16 07:37:55', '2022-05-16 07:37:55'),
(81, 10, 27.40, 'Clear', 'clear sky', '01d', '2022-05-16 07:00:00', '2022-05-16 06:02:25', '2022-05-16 07:37:56', '2022-05-16 07:37:56'),
(82, 10, 28.33, 'Rain', 'light rain', '10d', '2022-05-16 10:00:00', '2022-05-16 06:02:25', '2022-05-16 07:37:56', '2022-05-16 07:37:56'),
(83, 10, 24.90, 'Rain', 'moderate rain', '10d', '2022-05-16 13:00:00', '2022-05-16 06:02:25', '2022-05-16 07:37:56', '2022-05-16 07:37:56'),
(84, 10, 26.33, 'Rain', 'moderate rain', '10n', '2022-05-16 16:00:00', '2022-05-16 06:02:25', '2022-05-16 07:37:56', '2022-05-16 07:37:56'),
(85, 10, 26.07, 'Rain', 'light rain', '10n', '2022-05-16 19:00:00', '2022-05-16 06:02:25', '2022-05-16 07:37:56', '2022-05-16 07:37:56'),
(86, 11, 24.20, 'Clouds', 'broken clouds', '04n', '2022-05-16 07:00:00', '2022-05-16 06:02:37', '2022-05-16 07:37:57', '2022-05-16 07:37:57'),
(87, 11, 23.74, 'Clouds', 'broken clouds', '04n', '2022-05-16 10:00:00', '2022-05-16 06:02:37', '2022-05-16 07:37:57', '2022-05-16 07:37:57'),
(88, 11, 23.46, 'Clouds', 'broken clouds', '04n', '2022-05-16 13:00:00', '2022-05-16 06:02:37', '2022-05-16 07:37:57', '2022-05-16 07:37:57'),
(89, 11, 26.04, 'Clouds', 'broken clouds', '04d', '2022-05-16 16:00:00', '2022-05-16 06:02:37', '2022-05-16 07:37:57', '2022-05-16 07:37:57'),
(90, 11, 30.82, 'Clouds', 'scattered clouds', '03d', '2022-05-16 19:00:00', '2022-05-16 06:02:37', '2022-05-16 07:37:57', '2022-05-16 07:37:57'),
(91, 12, 24.75, 'Rain', 'light rain', '10n', '2022-05-16 07:00:00', '2022-05-16 06:08:03', '2022-05-16 06:08:03', NULL),
(92, 12, 24.44, 'Rain', 'light rain', '10n', '2022-05-16 10:00:00', '2022-05-16 06:08:03', '2022-05-16 06:08:03', NULL),
(93, 12, 24.69, 'Rain', 'light rain', '10n', '2022-05-16 13:00:00', '2022-05-16 06:08:03', '2022-05-16 06:08:03', NULL),
(94, 12, 24.82, 'Rain', 'light rain', '10d', '2022-05-16 16:00:00', '2022-05-16 06:08:03', '2022-05-16 06:08:03', NULL),
(95, 12, 29.95, 'Rain', 'light rain', '10d', '2022-05-16 19:00:00', '2022-05-16 06:08:03', '2022-05-16 06:08:03', NULL),
(96, 3, 19.56, 'Clouds', 'scattered clouds', '03n', '2022-05-16 10:00:00', '2022-05-16 07:37:51', '2022-05-16 07:37:51', NULL),
(97, 3, 16.63, 'Clear', 'clear sky', '01d', '2022-05-16 13:00:00', '2022-05-16 07:37:51', '2022-05-16 07:37:51', NULL),
(98, 3, 20.97, 'Clear', 'clear sky', '01d', '2022-05-16 16:00:00', '2022-05-16 07:37:51', '2022-05-16 07:37:51', NULL),
(99, 3, 28.65, 'Clouds', 'broken clouds', '04d', '2022-05-16 19:00:00', '2022-05-16 07:37:51', '2022-05-16 07:37:51', NULL),
(100, 3, 32.84, 'Clouds', 'scattered clouds', '03d', '2022-05-16 22:00:00', '2022-05-16 07:37:51', '2022-05-16 07:37:51', NULL),
(101, 5, 21.77, 'Clouds', 'broken clouds', '04d', '2022-05-16 10:00:00', '2022-05-16 07:37:52', '2022-05-16 07:39:04', '2022-05-16 07:39:04'),
(102, 5, 18.64, 'Clouds', 'overcast clouds', '04n', '2022-05-16 13:00:00', '2022-05-16 07:37:52', '2022-05-16 07:39:04', '2022-05-16 07:39:04'),
(103, 5, 17.31, 'Clouds', 'overcast clouds', '04n', '2022-05-16 16:00:00', '2022-05-16 07:37:52', '2022-05-16 07:39:04', '2022-05-16 07:39:04'),
(104, 5, 17.58, 'Clouds', 'overcast clouds', '04n', '2022-05-16 19:00:00', '2022-05-16 07:37:52', '2022-05-16 07:39:04', '2022-05-16 07:39:04'),
(105, 5, 17.92, 'Clouds', 'broken clouds', '04d', '2022-05-16 22:00:00', '2022-05-16 07:37:52', '2022-05-16 07:39:04', '2022-05-16 07:39:04'),
(106, 6, 15.76, 'Clear', 'clear sky', '01n', '2022-05-16 10:00:00', '2022-05-16 07:37:53', '2022-05-16 07:39:05', '2022-05-16 07:39:05'),
(107, 6, 14.89, 'Clear', 'clear sky', '01n', '2022-05-16 13:00:00', '2022-05-16 07:37:53', '2022-05-16 07:39:05', '2022-05-16 07:39:05'),
(108, 6, 15.06, 'Clear', 'clear sky', '01d', '2022-05-16 16:00:00', '2022-05-16 07:37:53', '2022-05-16 07:39:05', '2022-05-16 07:39:05'),
(109, 6, 21.61, 'Clear', 'clear sky', '01d', '2022-05-16 19:00:00', '2022-05-16 07:37:53', '2022-05-16 07:39:05', '2022-05-16 07:39:05'),
(110, 6, 23.62, 'Clear', 'clear sky', '01d', '2022-05-16 22:00:00', '2022-05-16 07:37:53', '2022-05-16 07:39:05', '2022-05-16 07:39:05'),
(111, 7, 19.89, 'Clouds', 'broken clouds', '04n', '2022-05-16 10:00:00', '2022-05-16 07:37:53', '2022-05-16 07:39:06', '2022-05-16 07:39:06'),
(112, 7, 19.69, 'Clouds', 'broken clouds', '04n', '2022-05-16 13:00:00', '2022-05-16 07:37:53', '2022-05-16 07:39:06', '2022-05-16 07:39:06'),
(113, 7, 20.57, 'Clouds', 'broken clouds', '04d', '2022-05-16 16:00:00', '2022-05-16 07:37:53', '2022-05-16 07:39:06', '2022-05-16 07:39:06'),
(114, 7, 22.18, 'Clouds', 'scattered clouds', '03d', '2022-05-16 19:00:00', '2022-05-16 07:37:53', '2022-05-16 07:39:06', '2022-05-16 07:39:06'),
(115, 7, 22.82, 'Clouds', 'scattered clouds', '03d', '2022-05-16 22:00:00', '2022-05-16 07:37:53', '2022-05-16 07:39:06', '2022-05-16 07:39:06'),
(116, 8, 17.36, 'Clouds', 'scattered clouds', '03n', '2022-05-16 10:00:00', '2022-05-16 07:37:54', '2022-05-16 07:39:07', '2022-05-16 07:39:07'),
(117, 8, 16.19, 'Clear', 'clear sky', '01n', '2022-05-16 13:00:00', '2022-05-16 07:37:54', '2022-05-16 07:39:07', '2022-05-16 07:39:07'),
(118, 8, 21.82, 'Clear', 'clear sky', '01d', '2022-05-16 16:00:00', '2022-05-16 07:37:54', '2022-05-16 07:39:07', '2022-05-16 07:39:07'),
(119, 8, 28.07, 'Clear', 'clear sky', '01d', '2022-05-16 19:00:00', '2022-05-16 07:37:54', '2022-05-16 07:39:07', '2022-05-16 07:39:07'),
(120, 8, 30.15, 'Clear', 'clear sky', '01d', '2022-05-16 22:00:00', '2022-05-16 07:37:54', '2022-05-16 07:39:07', '2022-05-16 07:39:07'),
(121, 9, 21.47, 'Rain', 'light rain', '10d', '2022-05-16 10:00:00', '2022-05-16 07:37:55', '2022-05-16 07:37:55', NULL),
(122, 9, 21.92, 'Rain', 'moderate rain', '10d', '2022-05-16 13:00:00', '2022-05-16 07:37:55', '2022-05-16 07:37:55', NULL),
(123, 9, 19.83, 'Rain', 'light rain', '10d', '2022-05-16 16:00:00', '2022-05-16 07:37:55', '2022-05-16 07:37:55', NULL),
(124, 9, 17.41, 'Rain', 'light rain', '10n', '2022-05-16 19:00:00', '2022-05-16 07:37:55', '2022-05-16 07:37:55', NULL),
(125, 9, 15.52, 'Clouds', 'few clouds', '02n', '2022-05-16 22:00:00', '2022-05-16 07:37:55', '2022-05-16 07:37:55', NULL),
(126, 10, 28.19, 'Rain', 'light rain', '10d', '2022-05-16 10:00:00', '2022-05-16 07:37:56', '2022-05-16 07:37:56', NULL),
(127, 10, 25.12, 'Rain', 'heavy intensity rain', '10d', '2022-05-16 13:00:00', '2022-05-16 07:37:56', '2022-05-16 07:37:56', NULL),
(128, 10, 25.53, 'Rain', 'light rain', '10n', '2022-05-16 16:00:00', '2022-05-16 07:37:56', '2022-05-16 07:37:56', NULL),
(129, 10, 26.70, 'Rain', 'light rain', '10n', '2022-05-16 19:00:00', '2022-05-16 07:37:56', '2022-05-16 07:37:56', NULL),
(130, 10, 25.46, 'Clouds', 'scattered clouds', '03n', '2022-05-16 22:00:00', '2022-05-16 07:37:56', '2022-05-16 07:37:56', NULL),
(131, 11, 23.48, 'Clouds', 'broken clouds', '04n', '2022-05-16 10:00:00', '2022-05-16 07:37:58', '2022-05-16 07:37:58', NULL),
(132, 11, 23.15, 'Clouds', 'scattered clouds', '03n', '2022-05-16 13:00:00', '2022-05-16 07:37:58', '2022-05-16 07:37:58', NULL),
(133, 11, 25.79, 'Clouds', 'broken clouds', '04d', '2022-05-16 16:00:00', '2022-05-16 07:37:58', '2022-05-16 07:37:58', NULL),
(134, 11, 30.91, 'Clouds', 'scattered clouds', '03d', '2022-05-16 19:00:00', '2022-05-16 07:37:58', '2022-05-16 07:37:58', NULL),
(135, 11, 31.01, 'Clouds', 'scattered clouds', '03d', '2022-05-16 22:00:00', '2022-05-16 07:37:58', '2022-05-16 07:37:58', NULL),
(136, 5, 21.77, 'Clouds', 'broken clouds', '04d', '2022-05-16 10:00:00', '2022-05-16 07:39:04', '2022-05-16 07:39:04', NULL),
(137, 5, 18.64, 'Clouds', 'overcast clouds', '04n', '2022-05-16 13:00:00', '2022-05-16 07:39:04', '2022-05-16 07:39:04', NULL),
(138, 5, 17.31, 'Clouds', 'overcast clouds', '04n', '2022-05-16 16:00:00', '2022-05-16 07:39:05', '2022-05-16 07:39:05', NULL),
(139, 5, 17.58, 'Clouds', 'overcast clouds', '04n', '2022-05-16 19:00:00', '2022-05-16 07:39:05', '2022-05-16 07:39:05', NULL),
(140, 5, 17.92, 'Clouds', 'broken clouds', '04d', '2022-05-16 22:00:00', '2022-05-16 07:39:05', '2022-05-16 07:39:05', NULL),
(141, 6, 15.76, 'Clear', 'clear sky', '01n', '2022-05-16 10:00:00', '2022-05-16 07:39:05', '2022-05-16 07:39:05', NULL),
(142, 6, 14.89, 'Clear', 'clear sky', '01n', '2022-05-16 13:00:00', '2022-05-16 07:39:05', '2022-05-16 07:39:05', NULL),
(143, 6, 15.06, 'Clear', 'clear sky', '01d', '2022-05-16 16:00:00', '2022-05-16 07:39:05', '2022-05-16 07:39:05', NULL),
(144, 6, 21.61, 'Clear', 'clear sky', '01d', '2022-05-16 19:00:00', '2022-05-16 07:39:05', '2022-05-16 07:39:05', NULL),
(145, 6, 23.62, 'Clear', 'clear sky', '01d', '2022-05-16 22:00:00', '2022-05-16 07:39:05', '2022-05-16 07:39:05', NULL),
(146, 7, 19.89, 'Clouds', 'broken clouds', '04n', '2022-05-16 10:00:00', '2022-05-16 07:39:06', '2022-05-16 07:39:06', NULL),
(147, 7, 19.69, 'Clouds', 'broken clouds', '04n', '2022-05-16 13:00:00', '2022-05-16 07:39:06', '2022-05-16 07:39:06', NULL),
(148, 7, 20.57, 'Clouds', 'broken clouds', '04d', '2022-05-16 16:00:00', '2022-05-16 07:39:06', '2022-05-16 07:39:06', NULL),
(149, 7, 22.18, 'Clouds', 'scattered clouds', '03d', '2022-05-16 19:00:00', '2022-05-16 07:39:06', '2022-05-16 07:39:06', NULL),
(150, 7, 22.82, 'Clouds', 'scattered clouds', '03d', '2022-05-16 22:00:00', '2022-05-16 07:39:06', '2022-05-16 07:39:06', NULL),
(151, 8, 17.36, 'Clouds', 'scattered clouds', '03n', '2022-05-16 10:00:00', '2022-05-16 07:39:07', '2022-05-16 07:39:07', NULL),
(152, 8, 16.19, 'Clear', 'clear sky', '01n', '2022-05-16 13:00:00', '2022-05-16 07:39:07', '2022-05-16 07:39:07', NULL),
(153, 8, 21.82, 'Clear', 'clear sky', '01d', '2022-05-16 16:00:00', '2022-05-16 07:39:07', '2022-05-16 07:39:07', NULL),
(154, 8, 28.07, 'Clear', 'clear sky', '01d', '2022-05-16 19:00:00', '2022-05-16 07:39:07', '2022-05-16 07:39:07', NULL),
(155, 8, 30.15, 'Clear', 'clear sky', '01d', '2022-05-16 22:00:00', '2022-05-16 07:39:07', '2022-05-16 07:39:07', NULL),
(156, 13, 9.70, 'Clouds', 'few clouds', '02n', '2022-05-16 10:00:00', '2022-05-16 07:49:18', '2022-05-16 07:49:18', NULL),
(157, 13, 11.15, 'Clouds', 'broken clouds', '04n', '2022-05-16 13:00:00', '2022-05-16 07:49:18', '2022-05-16 07:49:18', NULL),
(158, 13, 12.98, 'Clouds', 'overcast clouds', '04d', '2022-05-16 16:00:00', '2022-05-16 07:49:18', '2022-05-16 07:49:18', NULL),
(159, 13, 15.06, 'Clouds', 'overcast clouds', '04d', '2022-05-16 19:00:00', '2022-05-16 07:49:18', '2022-05-16 07:49:18', NULL),
(160, 13, 15.06, 'Clouds', 'overcast clouds', '04d', '2022-05-16 22:00:00', '2022-05-16 07:49:18', '2022-05-16 07:49:18', NULL),
(161, 14, 16.80, 'Rain', 'light rain', '10d', '2022-05-16 10:00:00', '2022-05-16 07:50:21', '2022-05-16 07:50:21', NULL),
(162, 14, 13.24, 'Rain', 'light rain', '10n', '2022-05-16 13:00:00', '2022-05-16 07:50:21', '2022-05-16 07:50:21', NULL),
(163, 14, 11.49, 'Clouds', 'broken clouds', '04n', '2022-05-16 16:00:00', '2022-05-16 07:50:21', '2022-05-16 07:50:21', NULL),
(164, 14, 10.22, 'Clouds', 'overcast clouds', '04n', '2022-05-16 19:00:00', '2022-05-16 07:50:21', '2022-05-16 07:50:21', NULL),
(165, 14, 11.88, 'Clouds', 'scattered clouds', '03d', '2022-05-16 22:00:00', '2022-05-16 07:50:21', '2022-05-16 07:50:21', NULL);

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `running` tinyint(2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `name`, `running`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'update_weather', 0, '2022-05-16 03:42:22', '2022-05-16 07:39:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tiles`
--

CREATE TABLE `tiles` (
  `id` int(11) NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country_code` varchar(255) DEFAULT NULL,
  `refresh_interval` varchar(255) DEFAULT NULL,
  `temperature` float(12,2) DEFAULT NULL,
  `situation` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tiles`
--

INSERT INTO `tiles` (`id`, `city`, `state`, `country_code`, `refresh_interval`, `temperature`, `situation`, `description`, `icon`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Johor Bahru', 'Johor', 'MY', '1', 31.39, 'Clouds', 'broken clouds', '04d', '2022-05-16 02:56:47', '2022-05-16 05:49:33', '2022-05-16 05:49:33'),
(2, 'Melbourne', 'Victoria', 'AU', '10', 13.68, 'Clouds', 'broken clouds', '04d', '2022-05-16 03:43:38', '2022-05-16 05:49:35', '2022-05-16 05:49:35'),
(3, 'Beijing', 'Beijing', 'CN', '5', 28.94, 'Clouds', 'overcast clouds', '04d', '2022-05-16 03:45:59', '2022-05-16 07:47:46', '2022-05-16 07:47:46'),
(4, 'Johor Bahru', 'Johor', 'MY', '1', 31.12, 'Clouds', 'broken clouds', '04d', '2022-05-16 06:00:29', '2022-05-16 06:02:45', '2022-05-16 06:02:45'),
(5, 'Paris', 'Ile-de-France', 'FR', '1', 17.50, 'Clouds', 'broken clouds', '04d', '2022-05-16 06:00:48', '2022-05-16 07:46:59', '2022-05-16 07:46:59'),
(6, 'Perth', 'Western Australia', 'AU', '1', 22.02, 'Clear', 'clear sky', '01d', '2022-05-16 06:00:54', '2022-05-16 07:39:05', NULL),
(7, 'Hong Kong Island', 'Hong Kong', 'CN', '1', 20.36, 'Clouds', 'overcast clouds', '04d', '2022-05-16 06:01:08', '2022-05-16 07:39:06', NULL),
(8, 'Nanjing City', 'Jiangsu', 'CN', '1', 25.97, 'Clouds', 'broken clouds', '04d', '2022-05-16 06:01:33', '2022-05-16 07:39:07', NULL),
(9, 'New York', 'New York', 'US', '5', 18.75, 'Clear', 'clear sky', '01n', '2022-05-16 06:01:59', '2022-05-16 07:37:55', NULL),
(10, 'Miami', 'Florida', 'US', '10', 23.36, 'Clouds', 'broken clouds', '04n', '2022-05-16 06:02:25', '2022-05-16 07:37:56', NULL),
(11, 'Penang', 'East Java', 'ID', '1', 30.08, 'Clouds', 'scattered clouds', '03d', '2022-05-16 06:02:37', '2022-05-16 07:37:58', '2022-05-16 07:37:58'),
(12, 'Dasda Bazar', 'Tripura', 'IN', '1', 34.35, 'Clouds', 'overcast clouds', '04d', '2022-05-16 06:08:03', '2022-05-16 07:34:26', '2022-05-16 07:34:26'),
(13, 'Melbourne', 'Victoria', 'AU', '1', 13.62, 'Rain', 'light rain', '10n', '2022-05-16 07:49:18', '2022-05-16 07:49:18', NULL),
(14, 'Manchester', 'England', 'GB', '1', 14.09, 'Rain', 'light rain', '10d', '2022-05-16 07:50:21', '2022-05-16 07:50:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `forecasts`
--
ALTER TABLE `forecasts`
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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tiles`
--
ALTER TABLE `tiles`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forecasts`
--
ALTER TABLE `forecasts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tiles`
--
ALTER TABLE `tiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
