-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 22, 2023 at 06:05 AM
-- Server version: 5.7.39-42-log
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dblxscotkwcsqt`
--

-- --------------------------------------------------------

--
-- Table structure for table `arrival_crossing_point`
--

CREATE TABLE `arrival_crossing_point` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `arrival_crossing_point`
--

INSERT INTO `arrival_crossing_point` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Border Crossing Point', '2022-06-15 07:32:22', NULL),
(2, 'Islamabad Airport', '2022-06-24 12:30:00', NULL),
(3, 'Lahore Airport', '2022-06-24 12:30:00', NULL),
(4, 'Peshawar Airport', '2022-06-24 12:30:00', NULL),
(5, 'Karachi Airport', '2022-06-24 12:30:00', NULL),
(6, 'Quetta Airport', '2022-06-24 12:30:00', NULL),
(7, 'Multan Airport', '2022-06-24 12:30:00', NULL),
(8, 'Rahim Yar Khan Airport', '2022-06-24 12:30:00', NULL),
(9, 'Bahawalpur Airport', '2022-06-24 12:30:00', NULL),
(10, 'Faisalabad Airport', '2022-06-24 12:30:00', NULL),
(11, 'Wahga Land Route', '2022-06-24 12:30:00', NULL),
(12, 'Wahga Railway Station', '2022-06-24 12:30:00', NULL),
(13, 'Chamman Land Route', '2022-06-24 12:30:00', NULL),
(14, 'Torkham Land Route 1', '2022-06-24 12:30:00', '2023-05-10 01:06:11'),
(15, 'Khokarapar Railway Station', '2022-06-24 12:30:00', NULL),
(16, 'Karachi Sea Port', '2022-06-24 12:30:00', NULL),
(17, 'Ghassbandar Sea Port', '2022-06-24 12:30:00', NULL),
(18, 'Port Bin Qasim', '2022-06-24 12:30:00', NULL),
(19, 'Taftan Land Route', '2022-06-24 12:30:00', NULL),
(20, 'Gwadar Airport', '2022-06-24 12:30:00', NULL),
(21, 'Gwadar Sea Port', '2022-06-24 12:30:00', NULL),
(22, 'Sost Land Route', '2022-06-24 12:30:00', NULL),
(23, 'Sialkot Airport', '2022-06-24 12:30:00', NULL),
(24, 'Test Test', '2023-05-10 00:57:00', '2023-05-10 01:06:29');

-- --------------------------------------------------------

--
-- Table structure for table `border_scanner_partner`
--

CREATE TABLE `border_scanner_partner` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `email` text COLLATE utf8_unicode_ci NOT NULL,
  `number` text COLLATE utf8_unicode_ci NOT NULL,
  `password` text COLLATE utf8_unicode_ci,
  `image` text COLLATE utf8_unicode_ci,
  `location` text COLLATE utf8_unicode_ci,
  `role` text COLLATE utf8_unicode_ci,
  `business_name` text COLLATE utf8_unicode_ci,
  `business_type` text COLLATE utf8_unicode_ci,
  `business_logo` text COLLATE utf8_unicode_ci,
  `country` text COLLATE utf8_unicode_ci,
  `state` text COLLATE utf8_unicode_ci,
  `city` text COLLATE utf8_unicode_ci,
  `address` text COLLATE utf8_unicode_ci,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `document_name` text COLLATE utf8_unicode_ci,
  `document_image` text COLLATE utf8_unicode_ci,
  `otp` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `border_scanner_partner`
--

INSERT INTO `border_scanner_partner` (`id`, `name`, `email`, `number`, `password`, `image`, `location`, `role`, `business_name`, `business_type`, `business_logo`, `country`, `state`, `city`, `address`, `status`, `document_name`, `document_image`, `otp`, `created_at`, `updated_at`) VALUES
(1, 'Border scanner', 'border@gmail.com', '123456789', '123456789', '1655959377.jpeg', '8905254454', 'border_scanner', NULL, NULL, NULL, 'India', 'Gujarat', 'Ahmedabad', NULL, '1', NULL, NULL, 3382, '2022-06-10 04:52:58', '2023-01-28 10:04:06'),
(2, 'Partner Scanner', 'partner@gmail.com', '89052544541', '123456789', '1655959386.jpeg', '1235461', 'partner', 'Restaurant', 'hospitality', '1664278338.jpg', 'India', 'Gujarat', 'Ahmedabad', 'Address', '1', NULL, NULL, 7608, '2022-06-10 04:56:16', '2023-05-02 06:17:16'),
(9, 'akash', 'abhis3160@gmail.com', '8885745885', '123456789', '1664279764.jpg', 'india', 'partner', 'restaurent', 'hospitality', '1664279764.jpg', 'Bahrain', 'Gujarat', 'rajkot', 'address', '1', 'restaurent registration documnnt', '1664279764.jpg', 4267, '2022-09-27 11:56:04', '2023-02-22 05:17:09'),
(10, 'pradip', 'pradip.ahuja@gmail.com', '64654654', '123456789', '1664349811.png', 'test set se', 'border_scanner', NULL, NULL, NULL, 'Aruba', 'test1', 'test1', 'test', '1', 'tsdfd', '1664349811.png', 3258, '2022-09-28 07:23:31', '2023-02-24 09:31:19'),
(11, 'test_Border_Scanner', 'teste530001@gmail.com', '6', '123123123', '1664876722.jpg', 'abcabc', 'border_scanner', NULL, NULL, NULL, 'Pakistan', 'Islamabad', 'Islamabad', NULL, '0', 'abv', '1664876722.jpg', NULL, '2022-10-04 09:45:22', '2022-10-07 04:38:00'),
(12, 'test_Border_Scanner', 'azoreangrown@gmail.com', '3', 'teste123', '1665136928.jpg', 'abc', 'border_scanner', NULL, NULL, NULL, 'Pakistan', 'Islamabad', 'Islamabad', 'abc', '1', 'abc', '1665136928.jpg', 2291, '2022-10-07 10:02:08', '2022-11-08 20:34:50'),
(13, 'test_Partner', '20182474@aluno.uac.pt', '5', 'teste123', '1665138071.jpg', 'abc', 'partner', 'Attraction_test', 'attraction', '1665138071.jpg', 'Pakistan', 'Sindh', 'Sindh', 'abc', '1', 'abc', '1665138071.jpg', 7511, '2022-10-07 10:21:11', '2023-03-14 20:11:55'),
(14, 'testborderscanner', 'borderscanner1@gmail.com', '1234506789', '123456789', '1668070706.png', 'muzafarborder', 'border_scanner', NULL, NULL, NULL, 'Argentina', 'gujarat', 'rajkot', 'rajkot', '0', 'restaurent registration documnnt', '1668070706.pdf', NULL, '2022-11-10 08:58:26', '2022-11-10 08:59:08'),
(15, 'test', 'testid@gmail.com', '9865322145', 'test@123', '1674900409.jpg', 'test', 'border_scanner', NULL, NULL, NULL, 'Aruba', 'Gujrat', 'Rajkot', 'Test Name', '1', 'rawr', '1674900409.png', 1111, '2023-01-28 10:06:49', '2023-01-28 10:07:18'),
(16, 'test', 'partnertest@gmail.com', '9865322145', 'test@123', '1674900409.jpg', 'test', 'partner', NULL, NULL, NULL, 'Aruba', 'Gujrat', 'Rajkot', 'Test Name', '1', 'rawr', '1674900409.png', 4596, '2023-01-28 10:06:49', '2023-01-28 10:55:16'),
(17, 'test1', 'teste530001+test1@gmail.com', '234234', '123456789', '1675446968.png', 'asd', 'partner', 'Hotel Islamabad', 'hospitality', '1675446968.png', 'Pakistan', 'Islamabad', 'Islamabad', NULL, '0', '232', '1675446968.png', NULL, '2023-02-03 17:56:08', '2023-03-21 23:43:24'),
(18, 'test', 'testidpartner@gmail.com', '9865322145', 'test@123', '1674900409.jpg', 'test', 'partner', NULL, NULL, NULL, 'Aruba', 'Gujrat', 'Rajkot', 'Test Name', '1', 'rawr', '1674900409.png', 1111, '2023-01-28 10:06:49', '2023-01-28 10:07:18'),
(19, 'Partner1', 'teste530001+partner1@gmail.com', '123321', '12345678', '1678800934.png', 'Bishkek', 'border_scanner', NULL, NULL, NULL, 'Kyrgyzstan', 'Bishkek', 'Bishkek', NULL, '1', 'Visa', '1678800934.png', 6373, '2023-03-14 13:35:34', '2023-03-22 10:38:53'),
(20, 'Partner01', 'teste530001+partner01@gmail.com', '3214', '123456', '1678801539.png', 'Bishkek', 'partner', 'Hotel Partner01', 'attraction', '1678801539.png', 'Kyrgyzstan', 'Bishkek', 'Bishkek', NULL, '1', 'visa', '1678801539.png', 3864, '2023-03-14 13:45:39', '2023-03-22 10:41:38'),
(21, 'Aisha Bibi Border', 'pedro.ferreira+borderaisha@gmail.com', '123456789', 'borderaisha', '1681151391.png', 'kyrgyzstan', 'border_scanner', NULL, NULL, NULL, 'Kyrgyzstan', 'Osh', 'Osh', NULL, '1', 'Doc_name', '1681151391.png', 4632, '2023-04-10 18:29:51', '2023-04-10 18:31:06'),
(22, 'Sheraton Bishkek', 'pedro.ferreira+partnersheraton@gmail.com', '123456789', 'partnersheraton', '1681152159.png', 'Osh', 'partner', 'Sheraton Bishkek', 'accommodation', '1681152159.png', 'Kyrgyzstan', 'Osh', 'Osh', NULL, '1', 'doc name', '1681152159.png', NULL, '2023-04-10 18:42:39', '2023-04-10 18:42:39');

-- --------------------------------------------------------

--
-- Table structure for table `check_in`
--

CREATE TABLE `check_in` (
  `id` int(11) NOT NULL,
  `people_id` int(11) DEFAULT NULL,
  `people_code` text,
  `place_id` int(11) DEFAULT NULL,
  `agent_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `check_in`
--

INSERT INTO `check_in` (`id`, `people_id`, `people_code`, `place_id`, `agent_id`, `created_at`, `updated_at`) VALUES
(1, 14, '599116350914', 4, 29, '2023-07-24 01:28:09', '2023-07-24 01:28:09'),
(3, 15, '616871697489', 1, 29, '2023-07-25 04:12:32', '2023-07-25 04:12:32'),
(4, 1, '516871697253', 1, 29, '2023-07-25 04:12:32', '2023-07-25 04:12:32'),
(5, 16, '916871697651', 1, 29, '2023-07-25 04:12:32', '2023-07-25 04:12:32'),
(6, 17, '716871697765', 1, 29, '2023-07-25 04:12:32', '2023-07-25 04:12:32'),
(7, 18, '616871697853', 1, 29, '2023-07-25 04:12:32', '2023-07-25 04:12:32'),
(8, 15, '616871697489', 1, 29, '2023-07-25 04:12:56', '2023-07-25 04:12:56'),
(9, 1, '516871697253', 1, 29, '2023-07-25 04:12:56', '2023-07-25 04:12:56'),
(10, 16, '916871697651', 1, 29, '2023-07-25 04:12:56', '2023-07-25 04:12:56'),
(11, 17, '716871697765', 1, 29, '2023-07-25 04:12:56', '2023-07-25 04:12:56'),
(12, 18, '616871697853', 1, 29, '2023-07-25 04:12:56', '2023-07-25 04:12:56'),
(13, 1, '516871697253', 812, 23, '2023-07-26 04:16:21', '2023-07-26 04:16:21'),
(14, 18, '616871697853', 812, 23, '2023-07-26 04:16:21', '2023-07-26 04:16:21'),
(15, 1, '516871697253', 812, 23, '2023-07-26 04:17:55', '2023-07-26 04:17:55'),
(16, 18, '616871697853', 812, 23, '2023-07-26 04:17:55', '2023-07-26 04:17:55'),
(17, 1, '516871697253', 812, 23, '2023-07-26 04:31:56', '2023-07-26 04:31:56'),
(18, 18, '616871697853', 812, 23, '2023-07-26 04:31:56', '2023-07-26 04:31:56'),
(19, 1, '516871697253', 812, 23, '2023-07-26 04:32:32', '2023-07-26 04:32:32'),
(20, 18, '616871697853', 812, 23, '2023-07-26 04:32:32', '2023-07-26 04:32:32'),
(21, 1, '516871697253', 851, 23, '2023-07-26 04:34:42', '2023-07-26 04:34:42'),
(22, 18, '616871697853', 851, 23, '2023-07-26 04:34:42', '2023-07-26 04:34:42'),
(23, 17, '716871697765', 812, 23, '2023-07-26 04:35:07', '2023-07-26 04:35:07'),
(24, 15, '616871697489', 812, 22, '2023-07-28 01:16:18', '2023-07-28 01:16:18'),
(25, 16, '916871697651', 812, 22, '2023-07-28 01:16:18', '2023-07-28 01:16:18'),
(26, 17, '716871697765', 812, 22, '2023-07-28 01:16:18', '2023-07-28 01:16:18'),
(27, 18, '616871697853', 812, 22, '2023-07-28 01:16:18', '2023-07-28 01:16:18'),
(28, 1, '516871697253', 812, 22, '2023-07-28 01:16:18', '2023-07-28 01:16:18'),
(29, 15, '616871697489', 812, 22, '2023-07-28 01:26:39', '2023-07-28 01:26:39'),
(30, 16, '916871697651', 812, 22, '2023-07-28 01:26:39', '2023-07-28 01:26:39'),
(31, 17, '716871697765', 812, 22, '2023-07-28 01:26:39', '2023-07-28 01:26:39'),
(32, 18, '616871697853', 812, 22, '2023-07-28 01:26:39', '2023-07-28 01:26:39'),
(33, 1, '516871697253', 812, 22, '2023-07-28 01:26:39', '2023-07-28 01:26:39'),
(34, 15, '616871697489', 812, 22, '2023-07-28 01:30:18', '2023-07-28 01:30:18'),
(35, 16, '916871697651', 812, 22, '2023-07-28 01:30:18', '2023-07-28 01:30:18'),
(36, 17, '716871697765', 812, 22, '2023-07-28 01:30:18', '2023-07-28 01:30:18'),
(37, 18, '616871697853', 812, 22, '2023-07-28 01:30:18', '2023-07-28 01:30:18'),
(38, 1, '516871697253', 812, 22, '2023-07-28 01:30:18', '2023-07-28 01:30:18'),
(39, 15, '616871697489', 812, 22, '2023-07-28 01:32:52', '2023-07-28 01:32:52'),
(40, 16, '916871697651', 812, 22, '2023-07-28 01:32:52', '2023-07-28 01:32:52'),
(41, 17, '716871697765', 812, 22, '2023-07-28 01:32:52', '2023-07-28 01:32:52'),
(42, 18, '616871697853', 812, 22, '2023-07-28 01:32:52', '2023-07-28 01:32:52'),
(43, 1, '516871697253', 812, 22, '2023-07-28 01:32:52', '2023-07-28 01:32:52'),
(44, 1, '516871697253', 812, 22, '2023-07-29 01:28:27', '2023-07-29 01:28:27'),
(45, 1, '516871697253', 812, 22, '2023-07-29 01:28:30', '2023-07-29 01:28:30'),
(46, 1, '516871697253', 812, 22, '2023-07-29 03:31:24', '2023-07-29 03:31:24'),
(47, 16, '916871697651', 812, 22, '2023-07-29 03:39:46', '2023-07-29 03:39:46'),
(48, 17, '716871697765', 812, 22, '2023-07-29 03:39:46', '2023-07-29 03:39:46'),
(49, 18, '616871697853', 812, 22, '2023-07-29 03:39:46', '2023-07-29 03:39:46'),
(50, 18, '616871697853', 812, 22, '2023-07-29 03:41:17', '2023-07-29 03:41:17'),
(51, 16, '916871697651', 812, 22, '2023-07-29 04:15:55', '2023-07-29 04:15:55'),
(52, 17, '716871697765', 812, 22, '2023-07-29 04:15:55', '2023-07-29 04:15:55'),
(53, 18, '616871697853', 812, 22, '2023-07-29 04:15:55', '2023-07-29 04:15:55'),
(54, 1, '516871697253', 812, 22, '2023-07-30 23:23:18', '2023-07-30 23:23:18'),
(55, 15, '616871697489', 812, 22, '2023-07-30 23:23:18', '2023-07-30 23:23:18'),
(56, 16, '916871697651', 812, 22, '2023-07-30 23:23:18', '2023-07-30 23:23:18'),
(57, 17, '716871697765', 812, 22, '2023-07-30 23:23:18', '2023-07-30 23:23:18'),
(58, 18, '616871697853', 812, 22, '2023-07-30 23:23:18', '2023-07-30 23:23:18'),
(59, 1, '516871697253', 812, 22, '2023-07-30 23:37:30', '2023-07-30 23:37:30'),
(60, 15, '616871697489', 812, 22, '2023-07-30 23:37:30', '2023-07-30 23:37:30'),
(61, 16, '916871697651', 812, 22, '2023-07-30 23:37:30', '2023-07-30 23:37:30'),
(62, 17, '716871697765', 812, 22, '2023-07-30 23:37:30', '2023-07-30 23:37:30'),
(63, 18, '616871697853', 812, 22, '2023-07-30 23:37:30', '2023-07-30 23:37:30'),
(64, 1, '516871697253', 812, 22, '2023-07-30 23:37:37', '2023-07-30 23:37:37'),
(65, 15, '616871697489', 812, 22, '2023-07-30 23:37:37', '2023-07-30 23:37:37'),
(66, 16, '916871697651', 812, 22, '2023-07-30 23:37:37', '2023-07-30 23:37:37'),
(67, 17, '716871697765', 812, 22, '2023-07-30 23:37:37', '2023-07-30 23:37:37'),
(68, 18, '616871697853', 812, 22, '2023-07-30 23:37:37', '2023-07-30 23:37:37'),
(69, 15, '616871697489', 1217, 31, '2023-07-31 02:00:11', '2023-07-31 02:00:11'),
(70, 17, '716871697765', 1217, 31, '2023-07-31 02:00:11', '2023-07-31 02:00:11'),
(71, 1, '516871697253', 1217, 31, '2023-07-31 02:00:11', '2023-07-31 02:00:11'),
(72, 16, '916871697651', 1217, 31, '2023-07-31 02:00:11', '2023-07-31 02:00:11'),
(73, 15, '616871697489', 1217, 31, '2023-07-31 02:02:18', '2023-07-31 02:02:18'),
(74, 17, '716871697765', 1217, 31, '2023-07-31 02:02:18', '2023-07-31 02:02:18'),
(75, 1, '516871697253', 1217, 31, '2023-07-31 02:02:18', '2023-07-31 02:02:18'),
(76, 16, '916871697651', 1217, 31, '2023-07-31 02:02:18', '2023-07-31 02:02:18'),
(77, 15, '616871697489', 1217, 31, '2023-07-31 02:02:28', '2023-07-31 02:02:28'),
(78, 17, '716871697765', 1217, 31, '2023-07-31 02:02:28', '2023-07-31 02:02:28'),
(79, 1, '516871697253', 1217, 31, '2023-07-31 02:02:28', '2023-07-31 02:02:28'),
(80, 16, '916871697651', 1217, 31, '2023-07-31 02:02:28', '2023-07-31 02:02:28'),
(81, 15, '616871697489', 812, 27, '2023-07-31 04:42:29', '2023-07-31 04:42:29'),
(82, 16, '916871697651', 812, 27, '2023-07-31 04:42:29', '2023-07-31 04:42:29'),
(83, 17, '716871697765', 812, 27, '2023-07-31 04:42:29', '2023-07-31 04:42:29'),
(84, 1, '516871697253', 812, 27, '2023-07-31 04:42:29', '2023-07-31 04:42:29'),
(85, 18, '616871697853', 812, 27, '2023-07-31 04:42:29', '2023-07-31 04:42:29'),
(86, 15, '616871697489', 812, 27, '2023-07-31 05:10:34', '2023-07-31 05:10:34'),
(87, 16, '916871697651', 812, 27, '2023-07-31 05:10:34', '2023-07-31 05:10:34'),
(88, 1, '516871697253', 812, 27, '2023-07-31 05:10:34', '2023-07-31 05:10:34'),
(89, 17, '716871697765', 812, 27, '2023-07-31 05:10:34', '2023-07-31 05:10:34'),
(90, 15, '616871697489', 812, 27, '2023-07-31 05:34:09', '2023-07-31 05:34:09'),
(91, 16, '916871697651', 812, 27, '2023-07-31 05:34:09', '2023-07-31 05:34:09'),
(92, 1, '516871697253', 812, 27, '2023-07-31 05:34:09', '2023-07-31 05:34:09'),
(93, 17, '716871697765', 812, 27, '2023-07-31 05:34:09', '2023-07-31 05:34:09'),
(94, 15, '616871697489', 812, 31, '2023-07-31 06:06:37', '2023-07-31 06:06:37'),
(95, 17, '716871697765', 812, 31, '2023-07-31 06:06:37', '2023-07-31 06:06:37'),
(96, 16, '916871697651', 812, 31, '2023-07-31 06:06:37', '2023-07-31 06:06:37');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `country_code` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `name`, `country_code`, `created_at`, `updated_at`) VALUES
(1, 'Afghanistan', 'AF', '2022-06-08 00:39:58', NULL),
(2, 'Aland Islands', 'AX', '2022-06-08 00:39:58', NULL),
(3, 'Albania', 'AL', '2022-06-08 00:39:58', NULL),
(4, 'Algeria', 'DZ', '2022-06-08 00:39:58', NULL),
(5, 'American Samoa', 'AS', '2022-06-08 00:39:58', NULL),
(6, 'Andorra', 'AD', '2022-06-08 00:39:58', NULL),
(7, 'Angola', 'AO', '2022-06-08 00:39:58', NULL),
(8, 'Anguilla', 'AI', '2022-06-08 00:39:58', NULL),
(9, 'Antarctica', 'AQ', '2022-06-08 00:39:58', NULL),
(10, 'Antigua and Barbuda', 'AG', '2022-06-08 00:39:58', NULL),
(11, 'Argentina', 'AR', '2022-06-08 00:39:58', NULL),
(12, 'Armenia', 'AM', '2022-06-08 00:39:58', NULL),
(13, 'Aruba', 'AW', '2022-06-08 00:39:58', NULL),
(14, 'Australia', 'AU', '2022-06-08 00:39:58', NULL),
(15, 'Austria', 'AT', '2022-06-08 00:39:58', NULL),
(16, 'Azerbaijan', 'AZ', '2022-06-08 00:39:58', NULL),
(17, 'Bahamas', 'BS', '2022-06-08 00:39:58', NULL),
(18, 'Bahrain', 'BH', '2022-06-08 00:39:58', NULL),
(19, 'Bangladesh', 'BD', '2022-06-08 00:39:58', NULL),
(20, 'Barbados', 'BB', '2022-06-08 00:39:58', NULL),
(21, 'Belarus', 'BY', '2022-06-08 00:39:58', NULL),
(22, 'Belgium', 'BE', '2022-06-08 00:39:58', NULL),
(23, 'Belize', 'BZ', '2022-06-08 00:39:58', NULL),
(24, 'Benin', 'BJ', '2022-06-08 00:39:58', NULL),
(25, 'Bermuda', 'BM', '2022-06-08 00:39:58', NULL),
(26, 'Bhutan', 'BT', '2022-06-08 00:39:58', NULL),
(27, 'Bolivia', 'BO', '2022-06-08 00:39:58', NULL),
(28, 'Bonaire, Sint Eustatius and Saba', 'BQ', '2022-06-08 00:39:58', NULL),
(29, 'Bosnia and Herzegovina', 'BA', '2022-06-08 00:39:58', NULL),
(30, 'Botswana', 'BW', '2022-06-08 00:39:58', NULL),
(31, 'Bouvet Island', 'BV', '2022-06-08 00:39:58', NULL),
(32, 'Brazil', 'BR', '2022-06-08 00:39:58', NULL),
(33, 'British Indian Ocean Territory', 'IO', '2022-06-08 00:39:58', NULL),
(34, 'Brunei Darussalam', 'BN', '2022-06-08 00:39:58', NULL),
(35, 'Bulgaria', 'BG', '2022-06-08 00:39:58', NULL),
(36, 'Burkina Faso', 'BF', '2022-06-08 00:39:58', NULL),
(37, 'Burundi', 'BI', '2022-06-08 00:39:58', NULL),
(38, 'Cambodia', 'KH', '2022-06-08 00:39:58', NULL),
(39, 'Cameroon', 'CM', '2022-06-08 00:39:58', NULL),
(40, 'Canada', 'CA', '2022-06-08 00:39:58', NULL),
(41, 'Cape Verde', 'CV', '2022-06-08 00:39:58', NULL),
(42, 'Cayman Islands', 'KY', '2022-06-08 00:39:58', NULL),
(43, 'Central African Republic', 'CF', '2022-06-08 00:39:58', NULL),
(44, 'Chad', 'TD', '2022-06-08 00:39:58', NULL),
(45, 'Chile', 'CL', '2022-06-08 00:39:58', NULL),
(46, 'China', 'CN', '2022-06-08 00:39:58', NULL),
(47, 'Christmas Island', 'CX', '2022-06-08 00:39:58', NULL),
(48, 'Cocos (Keeling) Islands', 'CC', '2022-06-08 00:39:58', NULL),
(49, 'Colombia', 'CO', '2022-06-08 00:39:58', NULL),
(50, 'Comoros', 'KM', '2022-06-08 00:39:58', NULL),
(51, 'Congo', 'CG', '2022-06-08 00:39:58', NULL),
(52, 'Congo, Democratic Republic of the Congo', 'CD', '2022-06-08 00:39:58', NULL),
(53, 'Cook Islands', 'CK', '2022-06-08 00:39:58', NULL),
(54, 'Costa Rica', 'CR', '2022-06-08 00:39:58', NULL),
(55, 'Cote D\'Ivoire', 'CI', '2022-06-08 00:39:58', NULL),
(56, 'Croatia', 'HR', '2022-06-08 00:39:58', NULL),
(57, 'Cuba', 'CU', '2022-06-08 00:39:58', NULL),
(58, 'Curacao', 'CW', '2022-06-08 00:39:58', NULL),
(59, 'Cyprus', 'CY', '2022-06-08 00:39:58', NULL),
(60, 'Czech Republic', 'CZ', '2022-06-08 00:39:58', NULL),
(61, 'Denmark', 'DK', '2022-06-08 00:39:58', NULL),
(62, 'Djibouti', 'DJ', '2022-06-08 00:39:58', NULL),
(63, 'Dominica', 'DM', '2022-06-08 00:39:58', NULL),
(64, 'Dominican Republic', 'DO', '2022-06-08 00:39:58', NULL),
(65, 'Ecuador', 'EC', '2022-06-08 00:39:58', NULL),
(66, 'Egypt', 'EG', '2022-06-08 00:39:58', NULL),
(67, 'El Salvador', 'SV', '2022-06-08 00:39:58', NULL),
(68, 'Equatorial Guinea', 'GQ', '2022-06-08 00:39:58', NULL),
(69, 'Eritrea', 'ER', '2022-06-08 00:39:58', NULL),
(70, 'Estonia', 'EE', '2022-06-08 00:39:58', NULL),
(71, 'Ethiopia', 'ET', '2022-06-08 00:39:58', NULL),
(72, 'Falkland Islands (Malvinas)', 'FK', '2022-06-08 00:39:58', NULL),
(73, 'Faroe Islands', 'FO', '2022-06-08 00:39:58', NULL),
(74, 'Fiji', 'FJ', '2022-06-08 00:39:58', NULL),
(75, 'Finland', 'FI', '2022-06-08 00:39:58', NULL),
(76, 'France', 'FR', '2022-06-08 00:39:58', NULL),
(77, 'French Guiana', 'GF', '2022-06-08 00:39:58', NULL),
(78, 'French Polynesia', 'PF', '2022-06-08 00:39:58', NULL),
(79, 'French Southern Territories', 'TF', '2022-06-08 00:39:58', NULL),
(80, 'Gabon', 'GA', '2022-06-08 00:39:58', NULL),
(81, 'Gambia', 'GM', '2022-06-08 00:39:58', NULL),
(82, 'Georgia', 'GE', '2022-06-08 00:39:58', NULL),
(83, 'Germany', 'DE', '2022-06-08 00:39:58', NULL),
(84, 'Ghana', 'GH', '2022-06-08 00:39:58', NULL),
(85, 'Gibraltar', 'GI', '2022-06-08 00:39:58', NULL),
(86, 'Greece', 'GR', '2022-06-08 00:39:58', NULL),
(87, 'Greenland', 'GL', '2022-06-08 00:39:58', NULL),
(88, 'Grenada', 'GD', '2022-06-08 00:39:58', NULL),
(89, 'Guadeloupe', 'GP', '2022-06-08 00:39:58', NULL),
(90, 'Guam', 'GU', '2022-06-08 00:39:58', NULL),
(91, 'Guatemala', 'GT', '2022-06-08 00:39:58', NULL),
(92, 'Guernsey', 'GG', '2022-06-08 00:39:58', NULL),
(93, 'Guinea', 'GN', '2022-06-08 00:39:58', NULL),
(94, 'Guinea-Bissau', 'GW', '2022-06-08 00:39:58', NULL),
(95, 'Guyana', 'GY', '2022-06-08 00:39:58', NULL),
(96, 'Haiti', 'HT', '2022-06-08 00:39:58', NULL),
(97, 'Heard Island and Mcdonald Islands', 'HM', '2022-06-08 00:39:58', NULL),
(98, 'Holy See (Vatican City State)', 'VA', '2022-06-08 00:39:58', NULL),
(99, 'Honduras', 'HN', '2022-06-08 00:39:58', NULL),
(100, 'Hong Kong', 'HK', '2022-06-08 00:39:58', NULL),
(101, 'Hungary', 'HU', '2022-06-08 00:39:58', NULL),
(102, 'Iceland', 'IS', '2022-06-08 00:39:58', NULL),
(103, 'India', 'IN', '2022-06-08 00:39:58', NULL),
(104, 'Indonesia', 'ID', '2022-06-08 00:39:58', NULL),
(105, 'Iran, Islamic Republic of', 'IR', '2022-06-08 00:39:58', NULL),
(106, 'Iraq', 'IQ', '2022-06-08 00:39:58', NULL),
(107, 'Ireland', 'IE', '2022-06-08 00:39:58', NULL),
(108, 'Isle of Man', 'IM', '2022-06-08 00:39:58', NULL),
(109, 'Israel', 'IL', '2022-06-08 00:39:58', NULL),
(110, 'Italy', 'IT', '2022-06-08 00:39:58', NULL),
(111, 'Jamaica', 'JM', '2022-06-08 00:39:58', NULL),
(112, 'Japan', 'JP', '2022-06-08 00:39:58', NULL),
(113, 'Jersey', 'JE', '2022-06-08 00:39:58', NULL),
(114, 'Jordan', 'JO', '2022-06-08 00:39:58', NULL),
(115, 'Kazakhstan', 'KZ', '2022-06-08 00:39:58', NULL),
(116, 'Kenya', 'KE', '2022-06-08 00:39:58', NULL),
(117, 'Kiribati', 'KI', '2022-06-08 00:39:58', NULL),
(118, 'Korea, Democratic People\'s Republic of', 'KP', '2022-06-08 00:39:58', NULL),
(119, 'Korea, Republic of', 'KR', '2022-06-08 00:39:58', NULL),
(120, 'Kosovo', 'XK', '2022-06-08 00:39:58', NULL),
(121, 'Kuwait', 'KW', '2022-06-08 00:39:58', NULL),
(122, 'Kyrgyzstan', 'KG', '2022-06-08 00:39:58', NULL),
(123, 'Lao People\'s Democratic Republic', 'LA', '2022-06-08 00:39:58', NULL),
(124, 'Latvia', 'LV', '2022-06-08 00:39:58', NULL),
(125, 'Lebanon', 'LB', '2022-06-08 00:39:58', NULL),
(126, 'Lesotho', 'LS', '2022-06-08 00:39:58', NULL),
(127, 'Liberia', 'LR', '2022-06-08 00:39:58', NULL),
(128, 'Libyan Arab Jamahiriya', 'LY', '2022-06-08 00:39:58', NULL),
(129, 'Liechtenstein', 'LI', '2022-06-08 00:39:58', NULL),
(130, 'Lithuania', 'LT', '2022-06-08 00:39:58', NULL),
(131, 'Luxembourg', 'LU', '2022-06-08 00:39:58', NULL),
(132, 'Macao', 'MO', '2022-06-08 00:39:58', NULL),
(133, 'Macedonia, the Former Yugoslav Republic of', 'MK', '2022-06-08 00:39:58', NULL),
(134, 'Madagascar', 'MG', '2022-06-08 00:39:58', NULL),
(135, 'Malawi', 'MW', '2022-06-08 00:39:58', NULL),
(136, 'Malaysia', 'MY', '2022-06-08 00:39:58', NULL),
(137, 'Maldives', 'MV', '2022-06-08 00:39:58', NULL),
(138, 'Mali', 'ML', '2022-06-08 00:39:58', NULL),
(139, 'Malta', 'MT', '2022-06-08 00:39:58', NULL),
(140, 'Marshall Islands', 'MH', '2022-06-08 00:39:58', NULL),
(141, 'Martinique', 'MQ', '2022-06-08 00:39:58', NULL),
(142, 'Mauritania', 'MR', '2022-06-08 00:39:58', NULL),
(143, 'Mauritius', 'MU', '2022-06-08 00:39:58', NULL),
(144, 'Mayotte', 'YT', '2022-06-08 00:39:58', NULL),
(145, 'Mexico', 'MX', '2022-06-08 00:39:58', NULL),
(146, 'Micronesia, Federated States of', 'FM', '2022-06-08 00:39:58', NULL),
(147, 'Moldova, Republic of', 'MD', '2022-06-08 00:39:58', NULL),
(148, 'Monaco', 'MC', '2022-06-08 00:39:58', NULL),
(149, 'Mongolia', 'MN', '2022-06-08 00:39:58', NULL),
(150, 'Montenegro', 'ME', '2022-06-08 00:39:58', NULL),
(151, 'Montserrat', 'MS', '2022-06-08 00:39:58', NULL),
(152, 'Morocco', 'MA', '2022-06-08 00:39:58', NULL),
(153, 'Mozambique', 'MZ', '2022-06-08 00:39:58', NULL),
(154, 'Myanmar', 'MM', '2022-06-08 00:39:58', NULL),
(155, 'Namibia', 'NA', '2022-06-08 00:39:58', NULL),
(156, 'Nauru', 'NR', '2022-06-08 00:39:58', NULL),
(157, 'Nepal', 'NP', '2022-06-08 00:39:58', NULL),
(158, 'Netherlands', 'NL', '2022-06-08 00:39:58', NULL),
(159, 'Netherlands Antilles', 'AN', '2022-06-08 00:39:58', NULL),
(160, 'New Caledonia', 'NC', '2022-06-08 00:39:58', NULL),
(161, 'New Zealand', 'NZ', '2022-06-08 00:39:58', NULL),
(162, 'Nicaragua', 'NI', '2022-06-08 00:39:58', NULL),
(163, 'Niger', 'NE', '2022-06-08 00:39:58', NULL),
(164, 'Nigeria', 'NG', '2022-06-08 00:39:58', NULL),
(165, 'Niue', 'NU', '2022-06-08 00:39:58', NULL),
(166, 'Norfolk Island', 'NF', '2022-06-08 00:39:58', NULL),
(167, 'Northern Mariana Islands', 'MP', '2022-06-08 00:39:58', NULL),
(168, 'Norway', 'NO', '2022-06-08 00:39:58', NULL),
(169, 'Oman', 'OM', '2022-06-08 00:39:58', NULL),
(170, 'Pakistan', 'PK', '2022-06-08 00:39:58', NULL),
(171, 'Palau', 'PW', '2022-06-08 00:39:58', NULL),
(172, 'Palestinian Territory, Occupied', 'PS', '2022-06-08 00:39:58', NULL),
(173, 'Panama', 'PA', '2022-06-08 00:39:58', NULL),
(174, 'Papua New Guinea', 'PG', '2022-06-08 00:39:58', NULL),
(175, 'Paraguay', 'PY', '2022-06-08 00:39:58', NULL),
(176, 'Peru', 'PE', '2022-06-08 00:39:58', NULL),
(177, 'Philippines', 'PH', '2022-06-08 00:39:58', NULL),
(178, 'Pitcairn', 'PN', '2022-06-08 00:39:58', NULL),
(179, 'Poland', 'PL', '2022-06-08 00:39:58', NULL),
(180, 'Portugal', 'PT', '2022-06-08 00:39:58', NULL),
(181, 'Puerto Rico', 'PR', '2022-06-08 00:39:58', NULL),
(182, 'Qatar', 'QA', '2022-06-08 00:39:58', NULL),
(183, 'Reunion', 'RE', '2022-06-08 00:39:58', NULL),
(184, 'Romania', 'RO', '2022-06-08 00:39:58', NULL),
(185, 'Russian Federation', 'RU', '2022-06-08 00:39:58', NULL),
(186, 'Rwanda', 'RW', '2022-06-08 00:39:58', NULL),
(187, 'Saint Barthelemy', 'BL', '2022-06-08 00:39:58', NULL),
(188, 'Saint Helena', 'SH', '2022-06-08 00:39:58', NULL),
(189, 'Saint Kitts and Nevis', 'KN', '2022-06-08 00:39:58', NULL),
(190, 'Saint Lucia', 'LC', '2022-06-08 00:39:58', NULL),
(191, 'Saint Martin', 'MF', '2022-06-08 00:39:58', NULL),
(192, 'Saint Pierre and Miquelon', 'PM', '2022-06-08 00:39:58', NULL),
(193, 'Saint Vincent and the Grenadines', 'VC', '2022-06-08 00:39:58', NULL),
(194, 'Samoa', 'WS', '2022-06-08 00:39:58', NULL),
(195, 'San Marino', 'SM', '2022-06-08 00:39:58', NULL),
(196, 'Sao Tome and Principe', 'ST', '2022-06-08 00:39:58', NULL),
(197, 'Saudi Arabia', 'SA', '2022-06-08 00:39:58', NULL),
(198, 'Senegal', 'SN', '2022-06-08 00:39:58', NULL),
(199, 'Serbia', 'RS', '2022-06-08 00:39:58', NULL),
(200, 'Serbia and Montenegro', 'CS', '2022-06-08 00:39:58', NULL),
(201, 'Seychelles', 'SC', '2022-06-08 00:39:58', NULL),
(202, 'Sierra Leone', 'SL', '2022-06-08 00:39:58', NULL),
(203, 'Singapore', 'SG', '2022-06-08 00:39:58', NULL),
(204, 'Sint Maarten', 'SX', '2022-06-08 00:39:58', NULL),
(205, 'Slovakia', 'SK', '2022-06-08 00:39:58', NULL),
(206, 'Slovenia', 'SI', '2022-06-08 00:39:58', NULL),
(207, 'Solomon Islands', 'SB', '2022-06-08 00:39:58', NULL),
(208, 'Somalia', 'SO', '2022-06-08 00:39:58', NULL),
(209, 'South Africa', 'ZA', '2022-06-08 00:39:58', NULL),
(210, 'South Georgia and the South Sandwich Islands', 'GS', '2022-06-08 00:39:58', NULL),
(211, 'South Sudan', 'SS', '2022-06-08 00:39:58', NULL),
(212, 'Spain', 'ES', '2022-06-08 00:39:58', NULL),
(213, 'Sri Lanka', 'LK', '2022-06-08 00:39:58', NULL),
(214, 'Sudan', 'SD', '2022-06-08 00:39:58', NULL),
(215, 'Suriname', 'SR', '2022-06-08 00:39:58', NULL),
(216, 'Svalbard and Jan Mayen', 'SJ', '2022-06-08 00:39:58', NULL),
(217, 'Swaziland', 'SZ', '2022-06-08 00:39:58', NULL),
(218, 'Sweden', 'SE', '2022-06-08 00:39:58', NULL),
(219, 'Switzerland', 'CH', '2022-06-08 00:39:58', NULL),
(220, 'Syrian Arab Republic', 'SY', '2022-06-08 00:39:58', NULL),
(221, 'Taiwan, Province of China', 'TW', '2022-06-08 00:39:58', NULL),
(222, 'Tajikistan', 'TJ', '2022-06-08 00:39:58', NULL),
(223, 'Tanzania, United Republic of', 'TZ', '2022-06-08 00:39:58', NULL),
(224, 'Thailand', 'TH', '2022-06-08 00:39:58', NULL),
(225, 'Timor-Leste', 'TL', '2022-06-08 00:39:58', NULL),
(226, 'Togo', 'TG', '2022-06-08 00:39:58', NULL),
(227, 'Tokelau', 'TK', '2022-06-08 00:39:58', NULL),
(228, 'Tonga', 'TO', '2022-06-08 00:39:58', NULL),
(229, 'Trinidad and Tobago', 'TT', '2022-06-08 00:39:58', NULL),
(230, 'Tunisia', 'TN', '2022-06-08 00:39:58', NULL),
(231, 'Turkey', 'TR', '2022-06-08 00:39:58', NULL),
(232, 'Turkmenistan', 'TM', '2022-06-08 00:39:58', NULL),
(233, 'Turks and Caicos Islands', 'TC', '2022-06-08 00:39:58', NULL),
(234, 'Tuvalu', 'TV', '2022-06-08 00:39:58', NULL),
(235, 'Uganda', 'UG', '2022-06-08 00:39:58', NULL),
(236, 'Ukraine', 'UA', '2022-06-08 00:39:58', NULL),
(237, 'United Arab Emirates', 'AE', '2022-06-08 00:39:58', NULL),
(238, 'United Kingdom', 'GB', '2022-06-08 00:39:58', NULL),
(239, 'United States', 'US', '2022-06-08 00:39:58', NULL),
(240, 'United States Minor Outlying Islands', 'UM', '2022-06-08 00:39:58', NULL),
(241, 'Uruguay', 'UY', '2022-06-08 00:39:58', NULL),
(242, 'Uzbekistan', 'UZ', '2022-06-08 00:39:58', NULL),
(243, 'Vanuatu', 'VU', '2022-06-08 00:39:58', NULL),
(244, 'Venezuela', 'VE', '2022-06-08 00:39:58', NULL),
(245, 'Viet Nam', 'VN', '2022-06-08 00:39:58', NULL),
(246, 'Virgin Islands, British', 'VG', '2022-06-08 00:39:58', NULL),
(247, 'Virgin Islands, U.s.', 'VI', '2022-06-08 00:39:58', NULL),
(248, 'Wallis and Futuna', 'WF', '2022-06-08 00:39:58', NULL),
(249, 'Western Sahara', 'EH', '2022-06-08 00:39:58', NULL),
(250, 'Yemen', 'YE', '2022-06-08 00:39:58', NULL),
(251, 'Zambia', 'ZM', '2022-06-08 00:39:58', NULL),
(252, 'Zimbabwe', 'ZW', '2022-06-08 00:39:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `departure_crossing_point`
--

CREATE TABLE `departure_crossing_point` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `departure_crossing_point`
--

INSERT INTO `departure_crossing_point` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Border Crossing Point', '2022-06-15 07:32:54', NULL),
(2, 'Islamabad Airport', '2022-06-24 12:30:44', NULL),
(3, 'Lahore Airport', '2022-06-24 12:30:44', NULL),
(4, 'Peshawar Airport', '2022-06-24 12:30:44', NULL),
(5, 'Karachi Airport', '2022-06-24 12:30:44', NULL),
(6, 'Quetta Airport', '2022-06-24 12:30:44', NULL),
(7, 'Multan Airport', '2022-06-24 12:30:44', NULL),
(8, 'Rahim Yar Khan Airport', '2022-06-24 12:30:44', NULL),
(9, 'Bahawalpur Airport', '2022-06-24 12:30:44', NULL),
(10, 'Faisalabad Airport', '2022-06-24 12:30:44', NULL),
(11, 'Wahga Land Route', '2022-06-24 12:30:44', NULL),
(12, 'Wahga Railway Station', '2022-06-24 12:30:44', NULL),
(13, 'Chamman Land Route', '2022-06-24 12:30:44', NULL),
(14, 'Torkham Land Route', '2022-06-24 12:30:44', NULL),
(15, 'Khokarapar Railway Station', '2022-06-24 12:30:44', NULL),
(16, 'Karachi Sea Port', '2022-06-24 12:30:44', NULL),
(17, 'Ghassbandar Sea Port', '2022-06-24 12:30:44', NULL),
(18, 'Port Bin Qasim', '2022-06-24 12:30:44', NULL),
(19, 'Taftan Land Route', '2022-06-24 12:30:44', NULL),
(20, 'Gwadar Airport', '2022-06-24 12:30:44', NULL),
(21, 'Gwadar Sea Port', '2022-06-24 12:30:44', NULL),
(22, 'Sost Land Route', '2022-06-24 12:30:44', NULL),
(23, 'Sialkot Airport', '2022-06-24 12:30:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `document_type`
--

CREATE TABLE `document_type` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `document_type`
--

INSERT INTO `document_type` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Pan card', '2022-06-08 07:08:30', '2022-06-08 09:21:22'),
(2, 'Driving Licence', '2022-06-08 07:08:30', '2022-06-08 09:21:38'),
(3, 'passport', '2022-06-08 09:21:52', '2022-06-08 09:21:38');

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
-- Table structure for table `group_logs`
--

CREATE TABLE `group_logs` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `agent_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `group_logs`
--

INSERT INTO `group_logs` (`id`, `group_id`, `agent_id`, `created_at`, `updated_at`) VALUES
(1, 133, 22, '2023-07-30 23:37:30', '2023-07-30 23:37:30'),
(2, 133, 22, '2023-07-30 23:37:30', '2023-07-30 23:37:30'),
(3, 133, 22, '2023-07-30 23:37:30', '2023-07-30 23:37:30'),
(4, 133, 22, '2023-07-30 23:37:30', '2023-07-30 23:37:30'),
(5, 133, 22, '2023-07-30 23:37:30', '2023-07-30 23:37:30'),
(6, 134, 22, '2023-07-30 23:37:37', '2023-07-30 23:37:37'),
(7, 134, 22, '2023-07-30 23:37:37', '2023-07-30 23:37:37'),
(8, 134, 22, '2023-07-30 23:37:37', '2023-07-30 23:37:37'),
(9, 134, 22, '2023-07-30 23:37:37', '2023-07-30 23:37:37'),
(10, 134, 22, '2023-07-30 23:37:37', '2023-07-30 23:37:37'),
(15, 140, 31, '2023-07-31 02:02:18', '2023-07-31 02:02:18'),
(16, 140, 31, '2023-07-31 02:02:28', '2023-07-31 02:02:28'),
(17, 136, 27, '2023-07-31 04:42:29', '2023-07-31 04:42:29'),
(18, 136, 27, '2023-07-31 05:10:34', '2023-07-31 05:10:34'),
(19, 136, 27, '2023-07-31 05:34:09', '2023-07-31 05:34:09'),
(20, 140, 31, '2023-07-31 06:06:37', '2023-07-31 06:06:37');

-- --------------------------------------------------------

--
-- Table structure for table `group_people`
--

CREATE TABLE `group_people` (
  `id` int(11) NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `group_code` text,
  `people_id` int(11) DEFAULT NULL,
  `people_code` text,
  `status` int(11) NOT NULL DEFAULT '1',
  `partner_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `group_people`
--

INSERT INTO `group_people` (`id`, `group_id`, `group_code`, `people_id`, `people_code`, `status`, `partner_id`, `created_at`, `updated_at`) VALUES
(4, 2, '916871745402', 17, '716871697765', 1, 23, '2023-06-19 06:09:26', '2023-06-26 02:10:37'),
(12, 1, '916871713312', 15, '616871697489', 1, 20, '2023-06-27 01:37:36', '2023-06-27 01:37:36'),
(13, 1, '916871713312', 1, '516871697253', 1, 20, '2023-06-27 01:37:48', '2023-06-27 01:37:48'),
(14, 1, '916871713312', 16, '916871697651', 1, 20, '2023-06-27 01:37:48', '2023-06-27 01:37:48'),
(15, 1, '916871713312', 17, '716871697765', 1, 20, '2023-06-27 01:37:48', '2023-06-27 01:37:48'),
(16, 1, '916871713312', 18, '616871697853', 1, 20, '2023-06-27 01:37:48', '2023-06-27 01:37:48'),
(17, 41, '516883667737', 11, '599116350911', 1, 28, '2023-07-03 01:16:28', '2023-07-03 01:16:28'),
(18, 13, '816876000999', 1, '516871697253', 1, 23, '2023-07-03 01:53:38', '2023-07-03 01:53:38'),
(19, 13, '816876000999', 15, '616871697489', 1, 23, '2023-07-03 01:53:38', '2023-07-03 01:53:38'),
(20, 13, '816876000999', 16, '916871697651', 1, 23, '2023-07-03 01:53:38', '2023-07-03 01:53:38'),
(21, 13, '816876000999', 17, '716871697765', 1, 23, '2023-07-03 01:53:38', '2023-07-03 01:53:38'),
(22, 13, '816876000999', 18, '616871697853', 1, 23, '2023-07-03 01:53:38', '2023-07-03 01:53:38'),
(28, 16, '416877748382', 17, '716871697765', 1, 23, '2023-07-03 02:04:05', '2023-07-03 02:04:05'),
(38, 7, '916872603906', 1, '516871697253', 1, 22, '2023-07-03 03:11:13', '2023-07-03 03:11:13'),
(39, 7, '916872603906', 15, '616871697489', 1, 22, '2023-07-03 03:11:13', '2023-07-03 03:11:13'),
(40, 7, '916872603906', 16, '916871697651', 1, 22, '2023-07-03 03:11:13', '2023-07-03 03:11:13'),
(41, 7, '916872603906', 17, '716871697765', 1, 22, '2023-07-03 03:11:13', '2023-07-03 03:11:13'),
(42, 7, '916872603906', 18, '616871697853', 1, 22, '2023-07-03 03:11:13', '2023-07-03 03:11:13'),
(43, 8, '316872604037', 1, '516871697253', 1, 22, '2023-07-03 03:15:10', '2023-07-03 03:15:10'),
(44, 8, '316872604037', 15, '616871697489', 1, 22, '2023-07-03 03:15:10', '2023-07-03 03:15:10'),
(45, 8, '316872604037', 16, '916871697651', 1, 22, '2023-07-03 03:15:10', '2023-07-03 03:15:10'),
(46, 8, '316872604037', 17, '716871697765', 1, 22, '2023-07-03 03:15:10', '2023-07-03 03:15:10'),
(48, 8, '316872604037', 18, '616871697853', 1, 22, '2023-07-03 03:21:58', '2023-07-03 03:21:58'),
(50, 9, '516872625248', 15, '616871697489', 1, 22, '2023-07-03 03:23:04', '2023-07-03 03:23:04'),
(51, 9, '516872625248', 16, '916871697651', 1, 22, '2023-07-03 03:23:04', '2023-07-03 03:23:04'),
(52, 9, '516872625248', 17, '716871697765', 1, 22, '2023-07-03 03:23:04', '2023-07-03 03:23:04'),
(53, 9, '516872625248', 18, '616871697853', 1, 22, '2023-07-03 03:23:04', '2023-07-03 03:23:04'),
(54, 21, '516883617422', 1, '516871697253', 1, 22, '2023-07-03 03:23:58', '2023-07-03 03:23:58'),
(56, 94, '916883825429', 1, '516871697253', 1, 22, '2023-07-03 05:39:26', '2023-07-03 05:39:26'),
(57, 94, '916883825429', 15, '616871697489', 1, 22, '2023-07-03 05:39:26', '2023-07-03 05:39:26'),
(58, 94, '916883825429', 16, '916871697651', 1, 22, '2023-07-03 05:39:26', '2023-07-03 05:39:26'),
(59, 94, '916883825429', 17, '716871697765', 1, 22, '2023-07-03 05:39:26', '2023-07-03 05:39:26'),
(60, 94, '916883825429', 18, '616871697853', 1, 22, '2023-07-03 05:39:26', '2023-07-03 05:39:26'),
(64, 15, '916877746123', 1, '516871697253', 1, 23, '2023-07-03 06:21:56', '2023-07-03 06:21:56'),
(65, 103, '516883892869', 1, '516871697253', 1, 23, '2023-07-03 07:31:40', '2023-07-03 07:31:40'),
(66, 104, '616883893574', 1, '516871697253', 1, 23, '2023-07-03 07:32:48', '2023-07-03 07:32:48'),
(68, 6, '616872603578', 15, '616871697489', 1, 22, '2023-07-07 06:45:49', '2023-07-07 06:45:49'),
(69, 6, '616872603578', 16, '916871697651', 1, 22, '2023-07-07 06:45:49', '2023-07-07 06:45:49'),
(70, 6, '616872603578', 17, '716871697765', 1, 22, '2023-07-07 06:45:49', '2023-07-07 06:45:49'),
(71, 6, '616872603578', 18, '616871697853', 1, 22, '2023-07-07 06:45:49', '2023-07-07 06:45:49'),
(72, 9, '516872625248', 1, '516871697253', 1, 22, '2023-07-07 06:47:25', '2023-07-07 06:47:25'),
(73, 106, '316897491016', 17, '716871697765', 1, 23, '2023-07-25 23:18:20', '2023-07-25 23:18:20'),
(74, 107, '516897491349', 1, '516871697253', 1, 23, '2023-07-25 23:18:59', '2023-07-25 23:18:59'),
(78, 107, '516897491349', 18, '616871697853', 1, 23, '2023-07-25 23:19:18', '2023-07-25 23:19:18'),
(79, 0, NULL, 1, '516871697253', 1, 22, '2023-07-28 01:48:15', '2023-07-28 01:48:15'),
(80, 0, NULL, 15, '616871697489', 1, 22, '2023-07-28 01:48:15', '2023-07-28 01:48:15'),
(81, 0, NULL, 16, '916871697651', 1, 22, '2023-07-28 01:48:15', '2023-07-28 01:48:15'),
(82, 0, NULL, 17, '716871697765', 1, 22, '2023-07-28 01:48:15', '2023-07-28 01:48:15'),
(83, 0, NULL, 18, '616871697853', 1, 22, '2023-07-28 01:48:15', '2023-07-28 01:48:15'),
(89, 20, '616883616835', 10, '599116350910', 1, 1, '2023-07-28 23:45:43', '2023-07-28 23:45:43'),
(90, 14, '616876001117', 12, '599116350912', 1, 1, '2023-07-28 23:47:10', '2023-07-29 00:27:23'),
(91, 126, '416906091764', 16, '916871697651', 1, 23, '2023-07-29 00:11:15', '2023-07-29 00:11:15'),
(92, 130, '216906117852', 18, '616871697853', 1, 1, '2023-07-29 00:58:24', '2023-07-29 01:05:18'),
(94, 120, '716905430051', 15, '616871697489', 1, 22, '2023-07-29 01:59:58', '2023-07-29 01:59:58'),
(95, 120, '716905430051', 16, '916871697651', 1, 22, '2023-07-29 01:59:58', '2023-07-29 01:59:58'),
(96, 120, '716905430051', 17, '716871697765', 1, 22, '2023-07-29 01:59:58', '2023-07-29 01:59:58'),
(97, 120, '716905430051', 18, '616871697853', 1, 22, '2023-07-29 01:59:58', '2023-07-29 01:59:58'),
(98, 120, '716905430051', 1, '516871697253', 1, 22, '2023-07-29 02:01:43', '2023-07-29 02:01:43'),
(111, 119, '216905412818', 15, '616871697489', 1, 22, '2023-07-29 03:43:14', '2023-07-29 03:43:14'),
(112, 119, '216905412818', 16, '916871697651', 1, 22, '2023-07-29 03:43:14', '2023-07-29 03:43:14'),
(113, 119, '216905412818', 17, '716871697765', 1, 22, '2023-07-29 03:43:14', '2023-07-29 03:43:14'),
(114, 119, '216905412818', 18, '616871697853', 1, 22, '2023-07-29 03:43:14', '2023-07-29 03:43:14'),
(126, 132, '416906231268', 15, '616871697489', 1, 22, '2023-07-29 04:20:46', '2023-07-29 04:20:46'),
(127, 132, '416906231268', 16, '916871697651', 1, 22, '2023-07-29 04:20:46', '2023-07-29 04:20:46'),
(128, 132, '416906231268', 17, '716871697765', 1, 22, '2023-07-29 04:20:46', '2023-07-29 04:20:46'),
(129, 132, '416906231268', 18, '616871697853', 1, 22, '2023-07-29 04:20:46', '2023-07-29 04:20:46'),
(130, 133, '216906231315', 1, '516871697253', 1, 22, '2023-07-29 04:36:01', '2023-07-29 04:36:01'),
(131, 133, '216906231315', 15, '616871697489', 1, 22, '2023-07-29 04:36:01', '2023-07-29 04:36:01'),
(132, 133, '216906231315', 16, '916871697651', 1, 22, '2023-07-29 04:36:01', '2023-07-29 04:36:01'),
(133, 133, '216906231315', 17, '716871697765', 1, 22, '2023-07-29 04:36:01', '2023-07-29 04:36:01'),
(134, 133, '216906231315', 18, '616871697853', 1, 22, '2023-07-29 04:36:02', '2023-07-29 04:36:02'),
(135, 134, '316906231363', 1, '516871697253', 1, 22, '2023-07-30 23:37:04', '2023-07-30 23:37:04'),
(136, 134, '316906231363', 15, '616871697489', 1, 22, '2023-07-30 23:37:04', '2023-07-30 23:37:04'),
(137, 134, '316906231363', 16, '916871697651', 1, 22, '2023-07-30 23:37:04', '2023-07-30 23:37:04'),
(138, 134, '316906231363', 17, '716871697765', 1, 22, '2023-07-30 23:37:04', '2023-07-30 23:37:04'),
(139, 134, '316906231363', 18, '616871697853', 1, 22, '2023-07-30 23:37:04', '2023-07-30 23:37:04'),
(153, 138, '416907805111', 11, '599116350911', 1, 1, '2023-07-31 00:13:40', '2023-07-31 00:13:40'),
(154, 139, '616907846384', 1, '516871697253', 1, 22, '2023-07-31 00:54:16', '2023-07-31 00:54:16'),
(155, 139, '616907846384', 15, '616871697489', 1, 22, '2023-07-31 00:54:16', '2023-07-31 00:54:16'),
(156, 139, '616907846384', 16, '916871697651', 1, 22, '2023-07-31 00:54:16', '2023-07-31 00:54:16'),
(157, 139, '616907846384', 17, '716871697765', 1, 22, '2023-07-31 00:54:16', '2023-07-31 00:54:16'),
(158, 139, '616907846384', 18, '616871697853', 1, 22, '2023-07-31 00:54:16', '2023-07-31 00:54:16'),
(159, 140, '716907851432', 15, '616871697489', 1, 1, '2023-07-31 01:03:50', '2023-07-31 01:03:50'),
(161, 140, '716907851432', 17, '716871697765', 1, 31, '2023-07-31 01:18:46', '2023-07-31 01:18:46'),
(164, 140, '716907851432', 16, '916871697651', 1, 31, '2023-07-31 01:20:21', '2023-07-31 01:20:21'),
(179, 137, '416907801093', 17, '716871697765', 1, 22, '2023-07-31 04:18:10', '2023-07-31 04:18:10'),
(180, 137, '416907801093', 18, '616871697853', 1, 22, '2023-07-31 04:18:10', '2023-07-31 04:18:10'),
(188, 137, '416907801093', 1, '516871697253', 1, 22, '2023-07-31 04:49:10', '2023-07-31 04:49:10'),
(189, 137, '416907801093', 15, '616871697489', 1, 22, '2023-07-31 04:49:10', '2023-07-31 04:49:10'),
(190, 137, '416907801093', 16, '916871697651', 1, 22, '2023-07-31 04:49:10', '2023-07-31 04:49:10'),
(222, 112, '816904590159', 1, '516871697253', 1, 23, '2023-07-31 23:23:21', '2023-07-31 23:23:21'),
(230, 136, '316907800896', 1, '516871697253', 1, 27, '2023-08-01 01:02:22', '2023-08-10 04:55:24'),
(233, 106, '316897491016', 1, '516871697253', 1, 23, '2023-08-01 01:09:22', '2023-08-01 01:09:22');

-- --------------------------------------------------------

--
-- Table structure for table `mean_of_transport`
--

CREATE TABLE `mean_of_transport` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mean_of_transport`
--

INSERT INTO `mean_of_transport` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Air', '2022-06-08 09:58:26', '0000-00-00 00:00:00'),
(2, 'Train', '2022-06-08 09:58:26', '0000-00-00 00:00:00'),
(3, 'Car', '2022-06-08 09:58:39', '0000-00-00 00:00:00'),
(4, 'Bus', '2022-06-08 09:58:39', '0000-00-00 00:00:00');

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
(4, '2023_05_02_100123_create_permission_tables', 2);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_permissions`
--

INSERT INTO `model_has_permissions` (`permission_id`, `model_type`, `model_id`) VALUES
(3, 'App\\Models\\User', 9);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(2, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 3),
(2, 'App\\Models\\User', 4),
(2, 'App\\Models\\User', 5),
(3, 'App\\Models\\User', 6),
(2, 'App\\Models\\User', 7),
(2, 'App\\Models\\User', 8),
(1, 'App\\Models\\User', 9),
(1, 'App\\Models\\User', 13),
(3, 'App\\Models\\User', 14),
(1, 'App\\Models\\User', 16),
(3, 'App\\Models\\User', 18),
(1, 'App\\Models\\User', 19),
(3, 'App\\Models\\User', 20),
(1, 'App\\Models\\User', 21),
(3, 'App\\Models\\User', 22),
(1, 'App\\Models\\User', 23),
(3, 'App\\Models\\User', 23),
(3, 'App\\Models\\User', 24),
(4, 'App\\Models\\User', 25),
(4, 'App\\Models\\User', 26),
(1, 'App\\Models\\User', 27),
(3, 'App\\Models\\User', 28),
(1, 'App\\Models\\User', 29),
(3, 'App\\Models\\User', 30),
(1, 'App\\Models\\User', 31);

-- --------------------------------------------------------

--
-- Table structure for table `motivation_of_trip`
--

CREATE TABLE `motivation_of_trip` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `motivation_of_trip`
--

INSERT INTO `motivation_of_trip` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Business', '2022-06-08 09:50:53', '0000-00-00 00:00:00'),
(2, 'Leisure', '2022-06-08 09:50:53', '0000-00-00 00:00:00'),
(3, 'Visiting friends-family', '2022-06-08 09:51:40', '0000-00-00 00:00:00'),
(4, 'Study', '2022-06-08 09:51:40', '0000-00-00 00:00:00'),
(5, 'Health', '2022-06-08 09:52:23', '0000-00-00 00:00:00'),
(6, 'Asylum', '2022-06-08 09:52:23', '0000-00-00 00:00:00'),
(7, 'Other', '2022-06-08 09:52:31', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `partner_scanner_logs`
--

CREATE TABLE `partner_scanner_logs` (
  `id` int(11) NOT NULL,
  `partner_scanner_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `partner_scanner_logs`
--

INSERT INTO `partner_scanner_logs` (`id`, `partner_scanner_id`, `date`, `created_at`, `updated_at`) VALUES
(1, 20, '2023-05-08 11:47:31', '2023-05-08 06:17:31', '2023-05-08 06:17:31'),
(2, 20, '2023-05-10 09:37:49', '2023-05-10 04:07:49', '2023-05-10 04:07:49'),
(3, 22, '2023-05-13 06:54:02', '2023-05-13 01:24:02', '2023-05-13 01:24:02'),
(4, 22, '2023-05-15 12:20:22', '2023-05-15 06:50:22', '2023-05-15 06:50:22'),
(5, 22, '2023-05-15 12:45:55', '2023-05-15 07:15:55', '2023-05-15 07:15:55'),
(6, 22, '2023-05-15 12:51:46', '2023-05-15 07:21:46', '2023-05-15 07:21:46'),
(7, 22, '2023-05-15 13:01:42', '2023-05-15 07:31:42', '2023-05-15 07:31:42'),
(8, 22, '2023-05-15 13:04:37', '2023-05-15 07:34:37', '2023-05-15 07:34:37'),
(9, 22, '2023-05-15 13:10:37', '2023-05-15 07:40:37', '2023-05-15 07:40:37'),
(10, 22, '2023-05-18 06:51:03', '2023-05-18 01:21:03', '2023-05-18 01:21:03'),
(11, 23, '2023-05-18 12:18:22', '2023-05-18 06:48:22', '2023-05-18 06:48:22'),
(12, 20, '2023-05-19 05:01:25', '2023-05-18 23:31:25', '2023-05-18 23:31:25'),
(13, 20, '2023-05-19 05:14:06', '2023-05-18 23:44:06', '2023-05-18 23:44:06'),
(14, 20, '2023-05-19 05:19:02', '2023-05-18 23:49:02', '2023-05-18 23:49:02'),
(15, 20, '2023-05-19 05:28:18', '2023-05-18 23:58:18', '2023-05-18 23:58:18'),
(16, 20, '2023-05-19 05:48:08', '2023-05-19 00:18:08', '2023-05-19 00:18:08'),
(17, 20, '2023-05-19 06:11:04', '2023-05-19 00:41:04', '2023-05-19 00:41:04'),
(18, 20, '2023-05-19 06:36:25', '2023-05-19 01:06:25', '2023-05-19 01:06:25'),
(19, 20, '2023-05-19 06:57:59', '2023-05-19 01:27:59', '2023-05-19 01:27:59'),
(20, 20, '2023-05-19 07:00:55', '2023-05-19 01:30:55', '2023-05-19 01:30:55'),
(21, 20, '2023-05-19 07:01:40', '2023-05-19 01:31:40', '2023-05-19 01:31:40'),
(22, 20, '2023-05-19 07:21:37', '2023-05-19 01:51:37', '2023-05-19 01:51:37'),
(23, 20, '2023-05-19 07:34:08', '2023-05-19 02:04:08', '2023-05-19 02:04:08'),
(24, 20, '2023-05-19 07:38:45', '2023-05-19 02:08:45', '2023-05-19 02:08:45'),
(25, 20, '2023-05-19 07:42:32', '2023-05-19 02:12:32', '2023-05-19 02:12:32'),
(26, 20, '2023-05-19 08:38:47', '2023-05-19 03:08:47', '2023-05-19 03:08:47'),
(27, 20, '2023-05-19 08:40:17', '2023-05-19 03:10:17', '2023-05-19 03:10:17'),
(28, 20, '2023-05-19 09:11:59', '2023-05-19 03:41:59', '2023-05-19 03:41:59'),
(29, 20, '2023-05-19 09:13:58', '2023-05-19 03:43:58', '2023-05-19 03:43:58'),
(30, 20, '2023-05-19 09:21:50', '2023-05-19 03:51:50', '2023-05-19 03:51:50'),
(31, 20, '2023-05-19 09:23:23', '2023-05-19 03:53:23', '2023-05-19 03:53:23'),
(32, 20, '2023-05-19 09:25:35', '2023-05-19 03:55:35', '2023-05-19 03:55:35'),
(33, 20, '2023-05-19 09:26:50', '2023-05-19 03:56:50', '2023-05-19 03:56:50'),
(34, 20, '2023-05-19 09:31:45', '2023-05-19 04:01:45', '2023-05-19 04:01:45'),
(35, 20, '2023-05-19 09:35:36', '2023-05-19 04:05:36', '2023-05-19 04:05:36'),
(36, 20, '2023-05-19 09:38:06', '2023-05-19 04:08:06', '2023-05-19 04:08:06'),
(37, 20, '2023-05-19 09:49:54', '2023-05-19 04:19:54', '2023-05-19 04:19:54'),
(38, 20, '2023-05-19 09:50:23', '2023-05-19 04:20:23', '2023-05-19 04:20:23'),
(39, 20, '2023-05-19 09:50:50', '2023-05-19 04:20:50', '2023-05-19 04:20:50'),
(40, 20, '2023-05-19 10:36:41', '2023-05-19 05:06:41', '2023-05-19 05:06:41'),
(41, 20, '2023-05-19 10:37:30', '2023-05-19 05:07:30', '2023-05-19 05:07:30'),
(42, 20, '2023-05-19 10:38:22', '2023-05-19 05:08:22', '2023-05-19 05:08:22'),
(43, 20, '2023-05-19 10:43:23', '2023-05-19 05:13:23', '2023-05-19 05:13:23'),
(44, 20, '2023-05-19 10:46:34', '2023-05-19 05:16:34', '2023-05-19 05:16:34'),
(45, 20, '2023-05-19 10:59:45', '2023-05-19 05:29:45', '2023-05-19 05:29:45'),
(46, 20, '2023-05-22 13:05:25', '2023-05-22 07:35:25', '2023-05-22 07:35:25'),
(47, 20, '2023-05-26 07:16:06', '2023-05-26 01:46:06', '2023-05-26 01:46:06'),
(48, 20, '2023-05-26 07:17:01', '2023-05-26 01:47:01', '2023-05-26 01:47:01'),
(49, 20, '2023-05-26 07:17:03', '2023-05-26 01:47:03', '2023-05-26 01:47:03'),
(50, 20, '2023-05-26 07:17:56', '2023-05-26 01:47:56', '2023-05-26 01:47:56'),
(51, 20, '2023-05-26 07:19:05', '2023-05-26 01:49:05', '2023-05-26 01:49:05'),
(52, 20, '2023-05-26 07:19:51', '2023-05-26 01:49:51', '2023-05-26 01:49:51'),
(53, 23, '2023-06-13 05:57:53', '2023-06-13 00:27:53', '2023-06-13 00:27:53'),
(54, 23, '2023-06-13 06:17:25', '2023-06-13 00:47:25', '2023-06-13 00:47:25'),
(55, 22, '2023-06-13 07:22:59', '2023-06-13 01:52:59', '2023-06-13 01:52:59'),
(56, 22, '2023-06-13 09:18:18', '2023-06-13 03:48:18', '2023-06-13 03:48:18'),
(57, 23, '2023-06-14 07:14:42', '2023-06-14 01:44:42', '2023-06-14 01:44:42'),
(58, 23, '2023-06-14 08:05:34', '2023-06-14 02:35:34', '2023-06-14 02:35:34'),
(59, 23, '2023-06-14 09:53:58', '2023-06-14 04:23:58', '2023-06-14 04:23:58'),
(60, 22, '2023-06-19 10:42:00', '2023-06-19 05:12:00', '2023-06-19 05:12:00'),
(61, 23, '2023-06-19 11:32:51', '2023-06-19 06:02:51', '2023-06-19 06:02:51'),
(62, 22, '2023-06-26 08:55:00', '2023-06-26 03:25:00', '2023-06-26 03:25:00'),
(63, 22, '2023-06-26 09:12:09', '2023-06-26 03:42:09', '2023-06-26 03:42:09'),
(64, 23, '2023-06-28 11:59:41', '2023-06-28 06:29:41', '2023-06-28 06:29:41'),
(65, 22, '2023-07-03 05:21:01', '2023-07-02 23:51:01', '2023-07-02 23:51:01'),
(66, 22, '2023-07-03 05:21:02', '2023-07-02 23:51:02', '2023-07-02 23:51:02'),
(67, 22, '2023-07-03 05:32:31', '2023-07-03 00:02:31', '2023-07-03 00:02:31'),
(68, 22, '2023-07-03 05:39:08', '2023-07-03 00:09:08', '2023-07-03 00:09:08'),
(69, 22, '2023-07-03 05:48:30', '2023-07-03 00:18:30', '2023-07-03 00:18:30'),
(70, 21, '2023-07-03 05:49:09', '2023-07-03 00:19:09', '2023-07-03 00:19:09'),
(71, 21, '2023-07-03 05:49:14', '2023-07-03 00:19:14', '2023-07-03 00:19:14'),
(72, 21, '2023-07-03 05:49:20', '2023-07-03 00:19:20', '2023-07-03 00:19:20'),
(73, 21, '2023-07-03 05:52:08', '2023-07-03 00:22:08', '2023-07-03 00:22:08'),
(74, 23, '2023-07-03 06:01:34', '2023-07-03 00:31:34', '2023-07-03 00:31:34'),
(75, 27, '2023-07-03 07:25:03', '2023-07-03 01:55:03', '2023-07-03 01:55:03'),
(76, 29, '2023-07-03 11:52:57', '2023-07-03 06:22:57', '2023-07-03 06:22:57'),
(77, 29, '2023-07-03 11:53:06', '2023-07-03 06:23:06', '2023-07-03 06:23:06'),
(78, 29, '2023-07-03 11:53:26', '2023-07-03 06:23:26', '2023-07-03 06:23:26'),
(79, 29, '2023-07-03 11:55:09', '2023-07-03 06:25:09', '2023-07-03 06:25:09'),
(80, 29, '2023-07-03 12:02:40', '2023-07-03 06:32:40', '2023-07-03 06:32:40'),
(81, 27, '2023-07-03 12:22:11', '2023-07-03 06:52:11', '2023-07-03 06:52:11'),
(82, 27, '2023-07-03 12:25:46', '2023-07-03 06:55:46', '2023-07-03 06:55:46'),
(83, 22, '2023-07-04 07:38:36', '2023-07-04 02:08:36', '2023-07-04 02:08:36'),
(84, 23, '2023-07-19 06:31:04', '2023-07-19 01:01:04', '2023-07-19 01:01:04'),
(85, 29, '2023-07-19 11:26:44', '2023-07-19 05:56:44', '2023-07-19 05:56:44'),
(86, 22, '2023-07-24 05:20:21', '2023-07-23 23:50:21', '2023-07-23 23:50:21'),
(87, 23, '2023-07-24 11:10:15', '2023-07-24 05:40:15', '2023-07-24 05:40:15'),
(88, 22, '2023-07-24 11:30:38', '2023-07-24 06:00:38', '2023-07-24 06:00:38'),
(89, 22, '2023-07-24 12:22:31', '2023-07-24 06:52:31', '2023-07-24 06:52:31'),
(90, 22, '2023-07-24 12:56:45', '2023-07-24 07:26:45', '2023-07-24 07:26:45'),
(91, 23, '2023-07-24 12:59:29', '2023-07-24 07:29:29', '2023-07-24 07:29:29'),
(92, 27, '2023-07-25 06:49:32', '2023-07-25 01:19:32', '2023-07-25 01:19:32'),
(93, 22, '2023-07-29 10:05:21', '2023-07-29 04:35:21', '2023-07-29 04:35:21'),
(94, 22, '2023-07-31 04:52:53', '2023-07-30 23:22:53', '2023-07-30 23:22:53'),
(95, 27, '2023-07-31 05:06:32', '2023-07-30 23:36:32', '2023-07-30 23:36:32'),
(96, 22, '2023-07-31 05:13:35', '2023-07-30 23:43:35', '2023-07-30 23:43:35'),
(97, 31, '2023-07-31 06:31:48', '2023-07-31 01:01:48', '2023-07-31 01:01:48'),
(98, 31, '2023-07-31 07:26:50', '2023-07-31 01:56:50', '2023-07-31 01:56:50'),
(99, 31, '2023-07-31 10:17:36', '2023-07-31 04:47:36', '2023-07-31 04:47:36'),
(100, 22, '2023-07-31 11:23:36', '2023-07-31 05:53:36', '2023-07-31 05:53:36'),
(101, 27, '2023-07-31 12:11:34', '2023-07-31 06:41:34', '2023-07-31 06:41:34'),
(102, 23, '2023-08-01 04:23:18', '2023-07-31 22:53:18', '2023-07-31 22:53:18'),
(103, 23, '2023-08-09 11:49:21', '2023-08-09 06:19:21', '2023-08-09 06:19:21'),
(104, 27, '2023-08-10 05:57:17', '2023-08-10 00:27:17', '2023-08-10 00:27:17'),
(105, 22, '2023-08-10 13:09:57', '2023-08-10 07:39:57', '2023-08-10 07:39:57'),
(106, 22, '2023-08-18 05:04:26', '2023-08-17 23:34:26', '2023-08-17 23:34:26');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('shorfaxbyte@gmail.com', '$2y$10$9t4PG3d5S649DCD2CxIKs.HHvUDc6sodqfXPyd1cU1tW/1ozJS5pG', '2023-05-05 05:37:42');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `enduser_id` int(11) DEFAULT NULL,
  `partner_id` int(11) DEFAULT NULL,
  `business_type` text,
  `trip_id` int(11) DEFAULT NULL,
  `all_user_id_in_trip` text,
  `status` varchar(255) DEFAULT NULL,
  `card_paymant` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `amount`, `enduser_id`, `partner_id`, `business_type`, `trip_id`, `all_user_id_in_trip`, `status`, `card_paymant`, `created_at`, `updated_at`) VALUES
(1, '1200', 1, 20, NULL, 12, 'null', 'paid', 0, '2023-05-08 06:19:05', '2023-05-09 05:00:01');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin screen', 'web', '2023-05-02 05:05:37', '2023-05-02 05:05:37'),
(2, 'partner screen', 'web', '2023-05-02 05:05:37', '2023-05-02 05:05:37'),
(3, 'agent screen', 'web', '2023-05-02 05:05:37', '2023-05-02 05:05:37'),
(4, 'operator screen', 'web', '2023-05-02 05:05:37', '2023-05-02 05:05:37');

-- --------------------------------------------------------

--
-- Table structure for table `places`
--

CREATE TABLE `places` (
  `id` int(11) NOT NULL,
  `CSV_Id` text,
  `image` text,
  `Name` text,
  `Category` text,
  `Attraction_Type` text,
  `Region` text,
  `Rayon` text,
  `City` text,
  `Address` longtext,
  `Website` text,
  `Telephone` text,
  `Email` text,
  `Latitude` text,
  `Longitude` text,
  `status` text,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `places`
--

INSERT INTO `places` (`id`, `CSV_Id`, `image`, `Name`, `Category`, `Attraction_Type`, `Region`, `Rayon`, `City`, `Address`, `Website`, `Telephone`, `Email`, `Latitude`, `Longitude`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
(3, '24990464', NULL, 'Mechet', 'Religious Sites', 'Religious Sites', 'Batken ', 'Batken', 'Batken', 'Batken, Batken 715100 Kyrgyzstan', '', '', '', '', '', '1', 28, '2023-07-03 01:23:42', '2023-07-03 01:23:42'),
(4, '735790', NULL, 'Ala-Archa Gorge', 'National ParksGeologic Formations', 'National Parks Geologic Formations', 'Chui', 'Chui', 'Bishkek', '', 'http://ala-archa.kg/', '9.97E+11', 'info@ala-archa.kg', '', '', '1', 28, '2023-07-03 01:23:42', '2023-07-03 01:23:42'),
(5, '611200', NULL, 'Osh Bazaar', 'Flea & Street Markets', 'Flea & Street Markets', 'Chui', 'Chui', 'Bishkek', '', 'http://www.facebook.com/Kyrgyzguides/', '9.97E+11', '', '42.870679', '74.59064', '1', 28, '2023-07-03 01:23:42', '2023-07-03 01:23:42'),
(6, '3665606', NULL, 'Panfilov Park', 'Parks', 'Parks', 'Chui', 'Chui', 'Bishkek', '368 Frunze Street, Bishkek 720000 Kyrgyzstan', 'https://www.facebook.com/park.panfilova/', NULL, '', '42.867355', '74.592627', '1', 28, '2023-07-03 01:23:42', '2023-07-25 12:31:20'),
(7, '459876', NULL, 'State History Museum', 'History Museums', 'History Museums', 'Chui', 'Chui', 'Bishkek', 'Ala-Too Square, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '42.867355', '74.592627', '1', 28, '2023-07-03 01:23:42', '2023-07-03 01:23:42'),
(8, '7396665', NULL, 'Ala-Too Square', 'Historic Sites', 'Historic Sites', 'Chui', 'Chui', 'Bishkek', '', '', '', '', '42.867355', '74.592627', '1', 28, '2023-07-03 01:23:42', '2023-07-03 01:23:42'),
(9, '459878', NULL, 'Mikhail Frunze Museum', 'Military Museums', 'Military Museums', 'Chui', 'Chui', 'Bishkek', '364, Frunze Str., Bishkek 720000 Kyrgyzstan', 'http://domfrunze.kg/', '227700', '', '42.867355', '74.592627', '1', 28, '2023-07-03 01:23:42', '2023-07-03 01:23:42'),
(10, '6726558', NULL, 'Spa Center Afrodita and Apollo', 'Spas', 'Spas', 'Chui', 'Chui1', 'Bishkek1', 'Zhukeyeva-Pudovkina St., 41/Skryabina, Bishkek 720000 Kyrgyzstan1', 'http://baytur.kg/1', '9.97E+111', 'pr@baytur.kg1', '42.8509131', '74.594841', '1', 28, '2023-07-03 01:23:42', '2023-07-03 05:23:47'),
(11, '8761397', NULL, 'Monument to Manas the Great', 'Historic SitesPoints of Interest & Landmarks', 'Historic Sites Points of Interest & Landmarks Monuments & Statues', 'Chui', 'Chui', 'Bishkek', '', 'http://daniyarov.kg/', '9.97E+11', 'assele@gmail.com', '42.867355', '74.592627', '1', 28, '2023-07-03 01:23:42', '2023-07-03 01:23:42'),
(12, '3710581', NULL, 'Dordoi Bazaar', 'Flea & Street Markets', 'Flea & Street Markets', 'Chui', 'Chui', 'Bishkek', '', 'http://www.dordoi.net/', '9.99E+11', '', '42.906078', '74.60261', '1', 28, '2023-07-03 01:23:42', '2023-07-03 01:23:42'),
(13, '459877', NULL, 'Museum of Fine Arts', 'Art Museums', 'Art Museums', 'Chui', 'Chui', 'Bishkek', '196, Sovietskaya Str., Bishkek 720000 Kyrgyzstan', 'http://knmii.kg/', '266867', '', '42.867355', '74.592627', '1', 28, '2023-07-03 01:23:42', '2023-07-03 01:23:42'),
(14, '7790854', NULL, 'Monument to Those Who Died For Freedom', 'Monuments & Statues', 'Monuments & Statues', 'Chui', 'Chui', 'Bishkek', 'Crossing of Chui Avenue and Panfilova St., Bishkek 720000 Kyrgyzstan', '', '', '', '42.867355', '74.592627', '1', 28, '2023-07-03 01:23:42', '2023-07-03 01:23:42'),
(15, '10021245', NULL, 'Issyk-Ata Gorge', 'Hiking Trails', 'Hiking Trails', 'Chui', 'Chui', 'Bishkek', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:42', '2023-07-03 01:23:42'),
(16, '10206030', NULL, 'Konorchek Canyons', 'MountainsNature & Wildlife Areas', 'Mountains Nature & Wildlife Areas Canyons', 'Chui', 'Chui', 'Bishkek', '', 'http://www.facebook.com/Pegasadventure/', '9.96E+11', '', '', '', '1', 28, '2023-07-03 01:23:42', '2023-07-03 01:23:42'),
(17, '8411429', NULL, 'Bishkek Park', 'Shopping Malls', 'Shopping Malls', 'Chui', 'Chui', 'Bishkek', 'Kiyevskaya St., 148, Bishkek 720000 Kyrgyzstan', 'http://bishkekpark.kg/', '9.96E+11', '', '42.867355', '74.592627', '1', 28, '2023-07-03 01:23:42', '2023-07-03 01:23:42'),
(18, '10758340', NULL, 'Victory Square', 'Points of Interest & Landmarks', 'Points of Interest & Landmarks', 'Chui', 'Chui', 'Bishkek', '', '', '', '', '42.867355', '74.594163', '1', 28, '2023-07-03 01:23:42', '2023-07-03 01:23:42'),
(19, '10021159', NULL, 'Alamedin Gorge', 'MountainsNature & Wildlife Areas', 'Mountains Nature & Wildlife Areas Geologic Formations', 'Chui', 'Chui', 'Bishkek', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:42', '2023-07-03 01:23:42'),
(20, '8090038', NULL, 'Flagstaff With Country Flag', 'Points of Interest & LandmarksLookouts', 'Points of Interest & Landmarks Lookouts', 'Chui', 'Chui', 'Bishkek', 'Ala-Too Square, Bishkek, Kyrgyzstan Boz-Boltok Mountain, Bishkek 720000 Kyrgyzstan', '', '', '', '42.867355', '74.592627', '1', 28, '2023-07-03 01:23:42', '2023-07-03 01:23:42'),
(21, '7790830', NULL, 'Monument to Baatyr Kaba Uulu Kozhomkul', 'Monuments & Statues', 'Monuments & Statues', 'Chui', 'Chui', 'Bishkek', 'Togolok Moldo St., Bishkek 720000 Kyrgyzstan', 'http://www.tuk.kg/index.php', '9.96E+11', '', '42.867355', '74.592627', '1', 28, '2023-07-03 01:23:42', '2023-07-03 01:23:42'),
(22, '8761392', NULL, 'Monument to Chingiz Aitmatov', 'Points of Interest & LandmarksMonuments & Statues', 'Points of Interest & Landmarks Monuments & Statues', 'Chui', 'Chui', 'Bishkek', '', '', '', '', '42.867355', '74.592627', '1', 28, '2023-07-03 01:23:42', '2023-07-03 01:23:42'),
(23, '8323655', NULL, 'Ski Complex Chunkurchak', 'Ski & Snowboard Areas', 'Ski & Snowboard Areas', 'Chui', 'Chui', 'Bishkek', 'Tract Chunkurchak, Bishkek 720000 Kyrgyzstan', 'http://chunkurchak.kg/', '9.97E+11', 'info@chunkurchak.kg', '', '', '1', 28, '2023-07-03 01:23:42', '2023-07-03 01:23:42'),
(24, '10021148', NULL, 'Chunkurchak Gorge', 'Hiking Trails', 'Hiking Trails', 'Chui', 'Chui', 'Bishkek', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:42', '2023-07-03 01:23:42'),
(25, '8059938', NULL, 'Holy Resurrection Cathedral', 'Churches & Cathedrals', 'Churches & Cathedrals', 'Chui', 'Chui', 'Bishkek', 'Zhibek-Zholu Avenue, 497, Bishkek 720000 Kyrgyzstan', 'http://www.eparchia.kg/blagochiniya/1', '9.96E+11', '', '', '', '1', 28, '2023-07-03 01:23:42', '2023-07-03 01:23:42'),
(26, '9798292', NULL, 'Bishkek-City', 'Shopping Malls', 'Shopping Malls', 'Bish+E27:F50kek', 'Bishkek', 'Bishkek', 'Suyumbayeva, 142/2, Bishkek 720000 Kyrgyzstan', 'http://nomadsland.ch/', '9.97E+11', '', '42.870679', '74.598728', '1', 28, '2023-07-03 01:23:42', '2023-07-03 01:23:42'),
(27, '5999967', NULL, 'Central Mosque', 'Points of Interest & Landmarks', 'Points of Interest & Landmarks', 'Chui', 'Chui', 'Bishkek', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:42', '2023-07-03 01:23:42'),
(28, '4942172', NULL, 'Erkindik Statue', 'Points of Interest & LandmarksMonuments & Statues', 'Points of Interest & Landmarks Monuments & Statues', 'Chui', 'Chui', 'Bishkek', 'Ala-Too Square, Bishkek 720000 Kyrgyzstan', '', '', '', '42.870679', '74.592627', '1', 28, '2023-07-03 01:23:42', '2023-07-03 01:23:42'),
(29, '6478895', NULL, 'Kashka-Suu Ski Resort', 'Ski & Snowboard Areas', 'Ski & Snowboard Areas', 'Chui', 'Chui', 'Bishkek', '', 'http://www.kashka-suu.kg/', '9.97E+11', '', '', '', '1', 28, '2023-07-03 01:23:42', '2023-07-03 01:23:42'),
(30, '13428134', NULL, 'Ski resort Too-Ashuu', 'Ski & Snowboard Areas', 'Ski & Snowboard Areas', 'Chui', 'Chui', 'Bishkek', 'Zhukeeva-Pudovkina St., 41, Bishkek 720005 Kyrgyzstan', 'http://www.baytur.kg/', '9.97E+11', 'booking@baytur.kg', '', '', '1', 28, '2023-07-03 01:23:42', '2023-07-03 01:23:42'),
(31, '12529324', NULL, 'Oak Park', 'Parks', 'Parks', 'Chui', 'Chui', 'Bishkek', 'Pushkin St., Bishkek 720000 Kyrgyzstan', '', '', '', '42.870679', '74.592627', '1', 28, '2023-07-03 01:23:42', '2023-07-03 01:23:42'),
(32, '10324965', NULL, 'Boom Gorge', 'MountainsValleys', 'Mountains Valleys', 'Chui', 'Chui', 'Bishkek', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:42', '2023-07-03 01:23:42'),
(33, '9560733', NULL, 'Tsum Center', 'Shopping Malls', 'Shopping Malls', 'Chui', 'Chui', 'Bishkek', '155 Chuy Ave, Bishkek 720000 Kyrgyzstan', 'http://tsum.kg/', '9.97E+11', 'tsum2@tsum.kg', '42.870679', '74.592627', '1', 28, '2023-07-03 01:23:42', '2023-07-03 01:23:42'),
(34, '11797255', NULL, 'Sport Complex T-CLUB', 'Sports Complexes', 'Sports Complexes', 'Chui', 'chui', 'Bishkek', 'Toktogula St., 75, Bishkek 720000 Kyrgyzstan', 'http://t-club.business.site/', '9.97E+11', 'tclub.kg@gmail.com', '42.870679', '74.592627', '1', 28, '2023-07-03 01:23:42', '2023-07-03 01:23:42'),
(35, '13094364', NULL, 'Asia Mall', 'Shopping Malls', 'Shopping Malls', 'Chui', 'chui', 'Bishkek', '3 Manas Ave, Bishkek 720000 Kyrgyzstan', 'http://www.asiamall.kg/', '', '', '42.866735', '74.592627', '1', 28, '2023-07-03 01:23:42', '2023-07-03 01:23:42'),
(36, '6474885', NULL, 'Tower with Chimes', 'Points of Interest & LandmarksObservation Decks & Towers', 'Points of Interest & Landmarks Observation Decks & Towers', 'Chui', 'chui', 'Bishkek', 'Chui ave and Abdrakhmanova st building KyrgyzTelecom, Bishkek 720000 Kyrgyzstan', 'http://www.kt.kg/news/?ELEMENT_ID=1663', '', '', '42.870679', '74.592487', '1', 28, '2023-07-03 01:23:42', '2023-07-03 01:23:42'),
(37, '459882', NULL, 'Museum of Graphic Arts /Tinibek Sadykov', 'Art Museums', 'Art Museums', 'Chui', 'Chui', 'Bishkek', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:42', '2023-07-03 01:23:42'),
(38, '459880', NULL, 'Zoological Museum', 'Speciality Museums', 'Speciality Museums', 'Chui', 'Chui', 'Bishkek', '78, Pushkin Str., Bishkek 720000 Kyrgyzstan', 'http://www.zm.kg/', '9.96E+11', '', '', '', '1', 28, '2023-07-03 01:23:42', '2023-07-03 01:23:42'),
(39, '21008109', NULL, 'Banya Baytur', 'Spas', 'Spas', 'Chui', 'chui', 'Bishkek', 'Zhukeyeva Pudovkina St., 41, Bishkek 720000 Kyrgyzstan', 'http://www.baytur.kg/', '9.96E+11', 'info@baytur.kg', '42.861373', '74.59484', '1', 28, '2023-07-03 01:23:42', '2023-07-03 01:23:42'),
(40, '459860', NULL, 'Manas Museum', 'Speciality Museums', 'Speciality Museums', 'Chui', 'Chui', 'Bishkek', 'Talas, Bishkek 720000 Kyrgyzstan', '', '', '', '', '', '1', 28, '2023-07-03 01:23:42', '2023-07-03 01:23:42'),
(41, '10112269', NULL, 'Too-Ashu Pass', 'Scenic Drives', 'Scenic Drives', 'chui', 'Chui', 'Bishkek', 'Bishkek-Osh Highway, Bishkek 720000 Kyrgyzstan', '', '', '', '', '', '1', 28, '2023-07-03 01:23:42', '2023-07-03 01:23:42'),
(42, '10112272', NULL, 'Ak-Sai Glacier', 'MountainsNature & Wildlife Areas', 'Mountains Nature & Wildlife Areas Valleys', 'Chui', 'chui', 'Bishkek', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:42', '2023-07-03 01:23:42'),
(43, '13202367', NULL, 'Aichurek Mall Fountains', 'Fountains', 'Fountains', 'Chui', 'Chui', 'Bishkek', 'Chui Ave., 155, Bishkek 720000 Kyrgyzstan', '', '', '', '42.870679', '74.592627', '1', 28, '2023-07-03 01:23:42', '2023-07-03 01:23:42'),
(44, '15056456', NULL, 'Kurmanzhan Datka Statue', 'Points of Interest & LandmarksMonuments & Statues', 'Points of Interest & Landmarks Monuments & Statues', 'Chui', 'chui', 'Bishkek', 'Pushkin St. Dubovy Park, Bishkek 720000 Kyrgyzstan', '', '', '', '', '', '1', 28, '2023-07-03 01:23:42', '2023-07-03 01:23:42'),
(45, '13417622', NULL, 'Vladimir Lenin Statue', 'Monuments & Statues', 'Monuments & Statues', 'Chui', 'Chui', 'Bishkek', 'Abdumomunov Street Behind the State History Museum, Bishkek 720000 Kyrgyzstan', '', '', '', '42.870679', '74.592627', '1', 28, '2023-07-03 01:23:42', '2023-07-03 01:23:42'),
(46, '459879', NULL, 'Aaly Tokombaev House Museum', 'Speciality Museums', 'Speciality Museums', 'Chui', 'Chui', 'Bishkek', '109, Chuykov Str., Bishkek 720000 Kyrgyzstan', '', '664756', '', '', '', '1', 28, '2023-07-03 01:23:42', '2023-07-03 01:23:42'),
(47, '9798267', NULL, 'Ataturk Park', 'National Parks', 'National Parks', 'Chui', 'Chui', 'Bishkek', 'Shakirova, 31A, Bishkek 720000 Kyrgyzstan', '', '', '', '42.850913', '74.59484', '1', 28, '2023-07-03 01:23:42', '2023-07-03 01:23:42'),
(48, '10021099', NULL, 'Sokuluk Gorge', 'MountainsNature & Wildlife Areas', 'Mountains Nature & Wildlife Areas Geologic Formations', 'Chui', 'Chui', 'Bishkek', '', 'http://www.tuk.kg/index.php', '9.96E+11', '', '', '', '1', 28, '2023-07-03 01:23:42', '2023-07-03 01:23:42'),
(49, '459881', NULL, 'Geological Museum and Mineralogical Museum', 'Science Museums', 'Science Museums', 'Chui', 'Chui', 'Bishkek', '1, Erkindik Prospect, Bishkek 720000 Kyrgyzstan', '', '', '', '', '', '1', 28, '2023-07-03 01:23:42', '2023-07-03 01:23:42'),
(50, '459884', NULL, 'Toktogul Literary Museum', 'Speciality Museums', 'Speciality Museums', 'Chui', 'chui', 'Bishkek', '109, Kievskaya Str., Bishkek 720000 Kyrgyzstan', '', '227693', '', '', '', '1', 28, '2023-07-03 01:23:42', '2023-07-03 01:23:42'),
(51, '10084861', NULL, 'Korona Peak', 'MountainsNational Parks', 'Mountains National Parks Forests Geologic Formations Valleys', 'chui', 'Chui', 'Bishkek', '', 'http://www.tuk.kg/index.php', '9.96E+11', '', '', '', '1', 28, '2023-07-03 01:23:42', '2023-07-03 01:23:42'),
(52, '14018184', NULL, 'Asanbay Center', 'Civic Centres', 'Civic Centres', 'Chui', 'chui', 'Bishkek', 'Tokombayeva St., 21?, Bishkek 720000 Kyrgyzstan', 'https://www.facebook.com/AsanbayCenter/', '9.97E+11', 'asanbayart@gmail.com', '42.842936', '74.61703', '1', 28, '2023-07-03 01:23:42', '2023-07-03 01:23:42'),
(53, '9798261', NULL, 'Church of the Holy Prince Vladimir', 'Religious SitesChurches & Cathedrals', 'Religious Sites Churches & Cathedrals', 'chui', 'Chui', 'Bishkek', 'Tokombayeva, 52A/3, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '42.842936', '74.60581', '1', 28, '2023-07-03 01:23:42', '2023-07-03 01:23:42'),
(54, '10021126', NULL, 'Bir-Bulak Gorge', 'MountainsHiking Trails', 'Mountains Hiking Trails', 'chui', 'Chui', 'Bishkek', '20 km from Bishkek, Bishkek 720000 Kyrgyzstan', 'http://www.tuk.kg/index.php', '9.96E+11', '', '', '', '1', 28, '2023-07-03 01:23:42', '2023-07-03 01:23:42'),
(55, '9798291', NULL, 'Exhibition Hall of Union of Artists', 'Art Galleries', 'Art Galleries', 'Chui', 'Chui', 'Bishkek', 'Pushkina, 78, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '42.870679', '74.592627', '1', 28, '2023-07-03 01:23:42', '2023-07-03 01:23:42'),
(56, '15056855', NULL, 'Borborduk Mosque', 'Points of Interest & LandmarksReligious Sites', 'Points of Interest & Landmarks Religious Sites', 'Chui', 'Chui', 'Bishkek', 'Semashko St., Bishkek 720000 Kyrgyzstan', '', '', '', '', '', '1', 28, '2023-07-03 01:23:42', '2023-07-03 01:23:42'),
(57, '6781770', NULL, 'State National Academic Drama Theater', 'Theaters', 'Theaters', 'Chui', 'Chui', 'Bishkek', '273, Panfilov st., Bishkek 720000 Kyrgyzstan', 'http://www.operaballet.lg.kg/', '66-58-02', '', '', '', '1', 28, '2023-07-03 01:23:42', '2023-07-03 01:23:42'),
(58, '7166257', NULL, 'Mystic Spa', 'Spas', 'Spas', 'Chui', 'Chui', 'Bishkek', 'Pr. Chui Ave, 219 Crossing Toglokmoldo, Bishkek 720000 Kyrgyzstan', 'http://mysticspa.kg/', '9.97E+11', 'mystic.spasalon@gmail.com', '42.870679', '74.592627', '1', 28, '2023-07-03 01:23:42', '2023-07-03 01:23:42'),
(59, '459883', NULL, 'Archaeological Museum', 'History Museums', 'History Museums', 'Chui', 'Chui', 'Bishkek', '265-a, Chuisky Prospect, Bishkek 720000 Kyrgyzstan', '', '', '', '', '', '1', 28, '2023-07-03 01:23:42', '2023-07-03 01:23:42'),
(60, '10758360', NULL, 'Spartak Stadium', 'Arenas & Stadiums', 'Arenas & Stadiums', 'Chui', 'Chui', 'Bishkek', 'Togolok Moldo St., 17, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '', '', '1', 28, '2023-07-03 01:23:42', '2023-07-03 01:23:42'),
(61, '', NULL, 'E. Gareyev Botanical Garden', 'Gardens', 'Gardens', 'Chui', 'Chui', 'Bishkek', 'Maksima Gorkogo, 212, Bishkek 720000 Kyrgyzstan', 'http://www.facebook.com/bishkekbotsad/', '9.96E+11', 'gareev100@mail.ru', '42.868602', '74.592627', '1', 28, '2023-07-03 01:23:42', '2023-07-03 01:23:42'),
(62, '9798299', NULL, 'Kyrgyz National Museum of Fine Arts', 'Art Museums', 'Art Museums', 'Chui', 'Chui', 'Bishkek', 'Abdrakhmanova, 196, Bishkek 720000 Kyrgyzstan', 'https://www.facebook.com/knmiiNationalmuseum/', '9.96E+11', '', '42.870679', '74.592627', '1', 28, '2023-07-03 01:23:42', '2023-07-03 01:23:42'),
(63, '12272464', NULL, 'Smile', 'Sports Complexes', 'Sports Complexes', 'Chui', 'Chui', 'Bishkek', 'Maksim Gorkiy St., 1v/1, Bishkek 720000 Kyrgyzstan', 'http://www.facebook.com/sk.smile.kg/', '9.97E+11', 'sk.smile.kg@gmail.com', '', '', '1', 28, '2023-07-03 01:23:42', '2023-07-03 01:23:42'),
(64, '8411431', NULL, 'Dordoi-Plaza', 'Shopping Malls', 'Shopping Malls', 'Chui', 'Chui', 'Bishkek', 'Ibraimova St., 115, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '', '', '1', 28, '2023-07-03 01:23:42', '2023-07-03 01:23:42'),
(65, '9798301', NULL, 'Madina', 'Shopping Malls', 'Shopping Malls', 'Chui', 'Chui', 'Bishkek', 'Chui Ave., 4B, Bishkek 720000 Kyrgyzstan', 'http://www.madina.kg/', '9.96E+11', '', '42.870679', '74.614575', '1', 28, '2023-07-03 01:23:42', '2023-07-03 01:23:42'),
(66, '8818732', NULL, 'Mall Tashrabat', 'Shopping Malls', 'Shopping Malls', 'Chui', 'Chui', 'Bishkek', 'Gorkogo St., 1G, Bishkek 720000 Kyrgyzstan', 'https://www.facebook.com/tashrabat.kg/', '9.96E+11', 'tashrabattrk@gmail.com', '42.870679', '74.60704', '1', 28, '2023-07-03 01:23:42', '2023-07-03 01:23:42'),
(67, '9798300', NULL, 'Park Im. I. Panfilova', 'National Parks', 'National Parks', 'Chui', 'Chui', 'Bishkek', 'Frunze, 370, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '42.870679', '74.60536', '1', 28, '2023-07-03 01:23:42', '2023-07-03 01:23:42'),
(68, '9798268', NULL, 'Vefa', 'Shopping Malls', 'Shopping Malls', 'Chui', 'Chui', 'Bishkek', 'Gorkogo St., 27/1 Lane of the Baitik Baatyra St., Bishkek 720000 Kyrgyzstan', 'http://www.vefacenter.kg/', '9.97E+11', 'vefacenter@mail.ru', '42.870679', '74.60536', '1', 28, '2023-07-03 01:23:42', '2023-07-03 01:23:42'),
(69, '9798293', NULL, 'Gym-N-Roll', 'Sports Complexes', 'Sports Complexes', 'Chui', 'Chui', 'Bishkek', 'Kurmanzhan Datka, 59, Bishkek 720000 Kyrgyzstan', 'http://gymnroll.kg/', '9.96E+11', '', '42.870679', '74.6232', '1', 28, '2023-07-03 01:23:42', '2023-07-03 01:23:42'),
(70, '9798273', NULL, 'Kalipso', 'Water Parks', 'Water Parks', 'Chui', 'Chui', 'Bishkek', 'Mira Ave., 299, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '42.84398', '74.592718', '1', 28, '2023-07-03 01:23:42', '2023-07-03 01:23:42'),
(71, '10077712', NULL, 'Flea Market', 'Flea & Street Markets', 'Flea & Street Markets', 'Chui', 'Chui', 'Bishkek', 'Yunusaliev St. 7 - Microdistrict, Bishkek 720000 Kyrgyzstan', 'http://www.tuk.kg/index.php', '9.96E+11', '', '', '', '1', 28, '2023-07-03 01:23:42', '2023-07-03 01:23:42'),
(72, '8124671', NULL, 'Tunguch Mosque', 'Religious SitesChurches & Cathedrals', 'Religious Sites Churches & Cathedrals', 'Chui', 'Chui', 'Bishkek', 'Gorkogo St., Bishkek 720000 Kyrgyzstan', '', '', '', '', '', '1', 28, '2023-07-03 01:23:42', '2023-07-03 01:23:42'),
(73, '9798277', NULL, 'Grand Stone', 'Shopping Malls', 'Shopping Malls', 'Chui', 'Chui', 'Bishkek', 'Matrosova, 6, Bishkek 720000 Kyrgyzstan', 'http://grandstone.kg/', '9.96E+11', '', '42.870679', '74.60704', '1', 28, '2023-07-03 01:23:42', '2023-07-03 01:23:42'),
(74, '9798297', NULL, 'Galeria M', 'Art Galleries', 'Art Galleries', 'Chui', 'Chui', 'Bishkek', 'Manasa Ave., 40, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '42.870679', '74.592627', '1', 28, '2023-07-03 01:23:42', '2023-07-03 01:23:42'),
(75, '9798288', NULL, 'Detskiy Mir', 'Shopping Malls', 'Shopping Malls', 'Chui', 'Chui', 'Bishkek', 'Chui Ave., 147/4, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', 'info@detmir.kg', '42.870679', '74.594163', '1', 28, '2023-07-03 01:23:42', '2023-07-03 01:23:42'),
(76, '9798543', NULL, 'Central City Mosque', 'Religious Sites', 'Religious Sites', 'Chui', 'Chui', 'Bishkek', 'Gogolya, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '', '', '1', 28, '2023-07-03 01:23:42', '2023-07-03 01:23:42'),
(77, '9798308', NULL, 'Tabylga', 'Shopping Malls', 'Shopping Malls', 'Chui', 'Chui', 'Bishkek', 'Zhibek-Zholu Ave., 150, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '42.876129', '74.614575', '1', 28, '2023-07-03 01:23:42', '2023-07-03 01:23:42'),
(78, '15057029', NULL, 'Makhmud Kashkari Mosque', 'Points of Interest & LandmarksReligious Sites', 'Points of Interest & Landmarks Religious Sites', 'Chui', 'Chui', 'Bishkek', 'Osmonkul St., Bishkek 720000 Kyrgyzstan', '', '', '', '', '', '1', 28, '2023-07-03 01:23:42', '2023-07-03 01:23:42'),
(79, '9798257', NULL, 'Flamingo', 'National Parks', 'National Parks', 'Chui', 'Chui', 'Bishkek', 'Mira Ave., 303, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '42.84111', '74.579152', '1', 28, '2023-07-03 01:23:42', '2023-07-03 01:23:42'),
(80, '9798258', NULL, 'Zhashtyk', 'Arenas & Stadiums', 'Arenas & Stadiums', 'Chui', 'Chui', 'Bishkek', 'Maldybayeva, 1, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '42.84398', '74.59484', '1', 28, '2023-07-03 01:23:42', '2023-07-03 01:23:42'),
(81, '10021223', NULL, 'Takyr-Tor Gorge', 'Geologic Formations', 'Geologic Formations', 'Chui', 'Chui', 'Bishkek', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:42', '2023-07-03 01:23:42'),
(82, '9798282', NULL, 'Chelsea', 'Arenas & Stadiums', 'Arenas & Stadiums', 'Chui', 'Chui', 'Bishkek', 'Timiryazeva, 245A, Bishkek 720000 Kyrgyzstan', '', '9.97E+11', '', '42.870679', '74.592627', '1', 28, '2023-07-03 01:23:42', '2023-07-03 01:23:42'),
(83, '10206017', NULL, 'Shamsi Gorge', 'MountainsCanyons', 'Mountains Canyons Geologic Formations', 'Chui', 'Chui', 'Bishkek', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:42', '2023-07-03 01:23:42'),
(84, '9798279', NULL, 'Katok City', 'Sports Complexes', 'Sports Complexes', 'Chui', 'chui', 'Bishkek', 'Vinogradnaya, 1/3, Bishkek 720000 Kyrgyzstan', 'http://katok.kg/', '9.96E+11', '', '42.859714', '74.629325', '1', 28, '2023-07-03 01:23:42', '2023-07-03 01:23:42'),
(85, '3665610', NULL, 'Fuchik Park', 'Parks', 'Parks', 'Chui', 'chui', 'Bishkek', '1 Fuchik Street, Bishkek 720000 Kyrgyzstan', '', '', '', '42.870679', '74.59064', '1', 28, '2023-07-03 01:23:42', '2023-07-03 01:23:42'),
(86, '9798278', NULL, 'Lokomotiv', 'Sports Complexes', 'Sports Complexes', 'Chui', 'chui', 'Bishkek', 'Osmonova, 1, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '42.864556', '74.55846', '1', 28, '2023-07-03 01:23:42', '2023-07-03 01:23:42'),
(87, '9798306', NULL, 'Home Sports Arena', 'Arenas & Stadiums', 'Arenas & Stadiums', 'Chui', 'Chui', 'Bishkek', 'Togoloka Moldo, 17, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '42.870679', '74.592627', '1', 28, '2023-07-03 01:23:42', '2023-07-03 01:23:42'),
(88, '9798307', NULL, 'Taatan', 'Shopping Malls', 'Shopping Malls', 'Chui', 'Chui', 'Bishkek', 'Lermontova, 35, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '42.873704', '74.63257', '1', 28, '2023-07-03 01:23:42', '2023-07-03 01:23:42'),
(89, '9798262', NULL, 'Zateryanny Mir', 'Zoos', 'Zoos', 'Chui', 'chui', 'Bishkek', 'Tokombayeva, 21/4, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '42.842936', '74.61703', '1', 28, '2023-07-03 01:23:42', '2023-07-03 01:23:42'),
(90, '9798311', NULL, 'Bakhodyrkhon-Toro Uulu Musakhon-Toro Mosque', 'Religious Sites', 'Religious Sites', 'Chui', 'Chui', 'Bishkek', 'Kurenkeyeva, 137, Bishkek 720000 Kyrgyzstan', '', '', '', '42.870679', '74.592627', '1', 28, '2023-07-03 01:23:42', '2023-07-03 01:23:42'),
(91, '15056787', NULL, 'Manas Statue', 'Points of Interest & LandmarksMonuments & Statues', 'Points of Interest & Landmarks Monuments & Statues', 'Chui', 'Chui', 'Bishkek', 'Chuy Ave., Bishkek 720000 Kyrgyzstan', '', '', '', '', '', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(92, '15057330', NULL, 'Victory Park', 'Parks', 'Parks', 'Chui', 'chui', 'Bishkek', 'Baitik Baatyr St., Bishkek 720000 Kyrgyzstan', '', '', '', '42.844247', '74.59484', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(93, '9798264', NULL, 'Asanbai', 'Arenas & Stadiums', 'Arenas & Stadiums', 'Chui', 'Chui', 'Bishkek', 'Asanbai Microrayon, 43/1, Bishkek 720000 Kyrgyzstan', '', '9.97E+11', '', '42.835961', '74.63145', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(94, '9820700', NULL, '\"Taberik\" Children?s Musical Theatre', 'Theaters', 'Theaters', 'Chui', 'chui', 'Bishkek', 'Shakirova St., 17, Bishkek 720000 Kyrgyzstan', 'http://taberik.org/', '9.96E+11', '', '42.844247', '74.59484', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(95, '9798287', NULL, 'Kyrgyz State Museum of Literature and Art', 'Art Galleries', 'Art Galleries', 'Chui', 'Chui', 'Bishkek', 'Toktogula, 109, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '42.870679', '74.592627', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(96, '9798284', NULL, 'Ice Park', 'Sports Complexes', 'Sports Complexes', 'Chui', 'Chui', 'Bishkek', 'Kiyevskaya, 148, Bishkek 720000 Kyrgyzstan', '', '', '', '42.870679', '74.592627', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(97, '9798283', NULL, 'Akun', 'Arenas & Stadiums', 'Arenas & Stadiums', 'Chui', 'Chui', 'Bishkek', 'Den Syaopina Ave., 308, Bishkek 720000 Kyrgyzstan', '', '9.97E+11', '', '42.873399', '74.535655', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(98, '9798274', NULL, 'El Clasico', 'Arenas & Stadiums', 'Arenas & Stadiums', 'Chui', 'Chui', 'Bishkek', 'Geologicheskiy Lane, 3/1, Bishkek 720000 Kyrgyzstan', '', '9.97E+11', '', '42.870679', '74.60536', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(99, '9798322', NULL, 'Bereket Grand', 'Shopping Malls', 'Shopping Malls', 'Chui', 'Chui', 'Bishkek', 'Chui Ave., 204, Bishkek 720000 Kyrgyzstan', 'http://bereket.kg/', '', '', '42.870679', '74.59064', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(100, '9798265', NULL, 'Dk', 'Shopping Malls', 'Shopping Malls', 'Chui', 'chui', 'Bishkek', 'Zhetikashkayevoi, 29, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', 'delemplus@mail.ru', '42.835961', '74.626103', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(101, '10024282', NULL, 'The Rescue Mountain Tashtar-Ata', 'MountainsNature & Wildlife Areas', 'Mountains Nature & Wildlife Areas Geologic Formations', 'Chui', 'Chui', 'Bishkek', '', 'http://www.tuk.kg/index.php', '9.96E+11', '', '', '', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(102, '25063001', NULL, 'Teplo Bar', 'Bars & Clubs', 'Bars & Clubs', 'Chui', 'chui', 'Bishkek', 'Toktogula 75/1, Bishkek 720000 Kyrgyzstan', 'https://www.facebook.com/teplobarkg/', '9.97E+11', 'teplobarkg@gmail.com', '42.870679', '74.592627', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(103, '9798310', NULL, 'Caravan', 'Shopping Malls', 'Shopping Malls', 'Chui', 'Chui', 'Bishkek', 'Kiyevskaya, 128, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '42.870679', '74.592627', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(104, '15056734', NULL, 'Stella of Friendship of Nation', 'Points of Interest & LandmarksMonuments & Statues', 'Points of Interest & Landmarks Monuments & Statues', 'Chui', 'Chui', 'Bishkek', 'Panfilov St., Bishkek 720000 Kyrgyzstan', '', '', '', '', '', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(105, '9798256', NULL, 'Detskiy Dosug', 'National Parks', 'National Parks', 'Chui', 'Chui', 'Bishkek', 'Tokombayeva, 21/11, Bishkek 720000 Kyrgyzstan', '', '', 'tikoow@mail.ru', '42.842936', '74.61703', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(106, '13165355', NULL, 'Ak Emir Bazaar', 'Farmers Markets', 'Farmers Markets', 'Chui', 'Chui', 'Bishkek', 'Shopokov Street, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '', '', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(107, '9798294', NULL, 'Moto', 'Shopping Malls', 'Shopping Malls', 'Chui', 'Chui', 'Bishkek', 'Abdrakhmanova, 170V, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '42.870679', '74.592627', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(108, '15056435', NULL, 'Zero Kilometer', 'Points of Interest & Landmarks', 'Points of Interest & Landmarks', 'Chui', 'Chui', 'Bishkek', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(109, '9798286', NULL, 'Izumrud', 'Shopping Malls', 'Shopping Malls', 'Chui', 'Chui', 'Bishkek', 'Chui Ave., 34/3, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '42.870679', '74.614575', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(110, '15056949', NULL, 'Alley of Heroes of World War II', 'Points of Interest & Landmarks', 'Points of Interest & Landmarks', 'Chui', 'Chui', 'Bishkek', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(111, '9798312', NULL, 'Yiman Mosque', 'Religious Sites', 'Religious Sites', 'Chui', 'Chui', 'Bishkek', 'Makhatmy Gandi Blvd, 175A, Bishkek 720000 Kyrgyzstan', '', '', '', '42.878544', '74.592627', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(112, '9798305', NULL, 'Kazakstan', 'Arenas & Stadiums', 'Arenas & Stadiums', 'Chui', 'Chui', 'Bishkek', 'Zhibek-Zholu Ave., 601, Bishkek 720000 Kyrgyzstan', '', '9.97E+11', '', '42.879232', '74.59064', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(113, '15057809', NULL, 'The Mahatma Gandhi Memorial Complex', 'Points of Interest & LandmarksMonuments & Statues', 'Points of Interest & Landmarks Monuments & Statues', 'Chui', 'Chui', 'Bishkek', 'Mahatma Gandhi St., Bishkek 720000 Kyrgyzstan', '', '', '', '', '', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(114, '17651089', NULL, 'GUM Chynar Mall', 'Shopping Malls', 'Shopping Malls', 'Chui', 'Chui', 'Bishkek', 'Chui ave., 92, Bishkek 720000 Kyrgyzstan', 'http://tashbolot.kg/gum/', '9.97E+11', 'gum@tashbolot.kg', '', '', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(115, '9798303', NULL, 'Dordoimarket', 'Shopping Malls', 'Shopping Malls', 'Chui', 'Chui', 'Bishkek', 'Yuliusa Fuchika, 3, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '42.876129', '74.59159', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(116, '9798285', NULL, 'Vesna', 'Shopping Malls', 'Shopping Malls', 'Chui', 'Chui', 'Bishkek', 'Kalyka Akiyeva, 66, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '42.870679', '74.592627', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(117, '9798533', NULL, 'Bai Terek', 'Arenas & Stadiums', 'Arenas & Stadiums', 'Chui', 'Chui', 'Bishkek', '5-I Microrayon, Bishkek 720000 Kyrgyzstan', 'http://www.tuk.kg/index.php', '9.97E+11', '', '', '', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(118, '15056512', NULL, 'Revolution Militants Square', 'Points of Interest & Landmarks', 'Points of Interest & Landmarks', 'Chui', 'Chui', 'Bishkek', '100 Chuy Ave., Bishkek 720000 Kyrgyzstan', '', '', '', '', '', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(119, '9798296', NULL, 'Red Centre', 'Shopping Malls', 'Shopping Malls', 'Chui', 'Chui', 'Bishkek', 'Shopokova, 121/1, Bishkek 720000 Kyrgyzstan', 'http://www.red.kg/', '9.96E+11', '', '42.870679', '74.594163', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(120, '9798263', NULL, 'Korzinka', 'Shopping Malls', 'Shopping Malls', 'Chui', 'Chui', 'Bishkek', 'Tynaliyeva, 3/2, Bishkek 720000 Kyrgyzstan', '', '', '', '42.84398', '74.59284', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(121, '15056697', NULL, 'Monument to the Soldiers of Batken', 'Points of Interest & LandmarksMonuments & Statues', 'Points of Interest & Landmarks Monuments & Statues', 'Chui', 'Chui', 'Bishkek', 'Yakov Logvinenko St., Bishkek 720000 Kyrgyzstan', '', '', '', '42.865697', '74.59903', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(122, '15057984', NULL, 'Monument to MiG-', 'Points of Interest & LandmarksMonuments & Statues', 'Points of Interest & Landmarks Monuments & Statues', 'Chui', 'Chui', 'Bishkek', '114 Kiyevskaya St., Bishkek 720000 Kyrgyzstan', '', '', '', '', '', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(123, '15198311', NULL, 'Togolok Moldo Park', 'Parks', 'Parks', 'Chui', 'Chui', 'Bishkek', 'Koyonkozov St., Bishkek 720000 Kyrgyzstan', '', '', '', '', '', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(124, '15056957', NULL, 'Molodaya Gvardiya Monument', 'Points of Interest & LandmarksMonuments & Statues', 'Points of Interest & Landmarks Monuments & Statues', 'Chui', 'Chui', 'Bishkek', 'Jash Gvardiya Blvd., Bishkek 720000 Kyrgyzstan', '', '', '', '', '', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(125, '9798270', NULL, 'Korgonbek Uulu Saiid Moldo Mosque', 'Religious Sites', 'Religious Sites', 'Chui', 'Chui', 'Bishkek', 'Shabdan Baatyra, 21B, Bishkek 720000 Kyrgyzstan', '', '', '', '42.850693', '74.60551', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(126, '15347811', NULL, 'Lake GES-', 'Bodies of Water', 'Bodies of Water', 'Chui', 'Chui', 'Bishkek', 'Cholpon-Atinskaya / Obyezdnaya St., Bishkek 720000 Kyrgyzstan', '', '9.97E+11', '', '', '', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(127, '15057234', NULL, 'Kubanychbek Malikov Monument', 'Points of Interest & LandmarksMonuments & Statues', 'Points of Interest & Landmarks Monuments & Statues', 'Chui', 'Chui', 'Bishkek', 'Erkindik Ave., 7, Bishkek 720000 Kyrgyzstan', '', '', '', '', '', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(128, '15056967', NULL, 'Talgat Begeldinov Monument', 'Points of Interest & LandmarksMonuments & Statues', 'Points of Interest & Landmarks Monuments & Statues', 'Chui', 'Chui', 'Bishkek', 'Intersection of Moscow street / Molodaya Gvardia avenue, Bishkek 720000 Kyrgyzstan', '', '', '', '', '', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(129, '8411418', NULL, 'COSMOPARK', 'Bowling AlleysMovie Theaters', 'Bowling Alleys Movie Theaters Game & Entertainment Centers', 'Chui', 'Chui', 'Bishkek', '', 'http://www.cosmopark.kg/', '9.96E+11', '', '', '', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(130, '13131313', NULL, 'Mini-Zoopark Zhivaya Ekzotika', 'Zoos', 'Zoos', 'Chui', 'Chui', 'Bishkek', 'Chuy Ave., 92, Bishkek 720000 Kyrgyzstan', 'http://exolife.asia/', '9.96E+11', 'exolife.asia@gmail.com', '42.870679', '74.592627', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(131, '15056497', NULL, 'Monument to Suimenkul Chokmorov', 'Points of Interest & LandmarksMonuments & Statues', 'Points of Interest & Landmarks Monuments & Statues', 'Chui', 'Chui', 'Bishkek', 'Intersection of Chui Avenue and Tynystanov Street, Bishkek 720000 Kyrgyzstan', '', '', '', '', '', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(132, '11621137', NULL, 'Shifu Massage', 'Spas', 'Spas', 'Chui', 'Chui', 'Bishkek', 'Moskovskaya St., 154-25, Bishkek 720000 Kyrgyzstan', 'https://www.facebook.com/shifumassage/', '9.97E+11', '', '42.867355', '74.592627', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(133, '9820709', NULL, '\"Uchur\" State Youth Theatre', 'Theaters', 'Theaters', 'Chui', 'Chui', 'Bishkek', 'Toktonaliyeva St., 6G, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '42.847241', '74.592627', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(134, '10403759', NULL, 'Tumar Art Salon', 'Speciality & Gift Shops', 'Speciality & Gift Shops', 'Chui', 'chui', 'Bishkek', 'Isanov St., 80-2, Bishkek 720000 Kyrgyzstan', 'http://www.tumar.com/', '9.96E+11', '', '', '', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(135, '9798541', NULL, 'Taalai', 'Shopping Malls', 'Shopping Malls', 'Chui', 'chui', 'Bishkek', 'Chui Ave, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '', '', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(136, '9798275', NULL, 'Futbolistan', 'Arenas & Stadiums', 'Arenas & Stadiums', 'Chui', 'chui', 'Bishkek', 'Maksima Gorkogo, 136/2, Bishkek 720000 Kyrgyzstan', '', '9.97E+11', '', '42.870679', '74.592627', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(137, '7745327', NULL, 'Maple Leaf Golf & Country Club', 'Golf Courses', 'Golf Courses', 'Chui', 'Chui', 'Bishkek', '', 'http://mapleleaf.vacau.com/', '9.97E+11', '', '42.831251', '74.674912', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(138, '9798313', NULL, 'Ikhlyas Mosque', 'Religious SitesChurches & Cathedrals', 'Religious Sites Churches & Cathedrals', 'Chui', 'Chui', 'Bishkek', 'Samarskiy Lane, 10A, Bishkek 720000 Kyrgyzstan', '', '', '', '42.879232', '74.592627', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(139, '7825751', NULL, 'Kyrgyz National Opera and Ballet Theatre of Abdylas Maldybayev', 'Theatre & Performances', 'Theatre & Performances', 'Chui', 'chui', 'Bishkek', 'Abdrakhmanova St., 167, Bishkek 720000 Kyrgyzstan', 'http://www.operaballet.lg.kg/', '9.96E+11', '', '', '', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(140, '11823472', NULL, 'Territoriya Spa', 'Spas', 'Spas', 'Chui', 'Chui', 'Bishkek', 'Moskovskaya St., 184, Bishkek 720000 Kyrgyzstan', 'http://www.spa.kg/', '9.96E+11', '', '42.871441', '74.687667', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(141, '12128388', NULL, 'Siam Massage', 'Spas', 'Spas', 'Chui', 'Chui', 'Bishkek', 'Toktogula St., 124/1, Bishkek 720000 Kyrgyzstan', 'http://www.siam.kg/', '9.97E+11', 'info@siam.kg', '42.870679', '74.592627', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(142, '9821221', NULL, 'Kyrgyz State Philharmonic Hall', 'Concerts', 'Concerts', 'Chui', 'chui', 'Bishkek', 'Chui Ave., 251, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '42.870679', '74.592627', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(143, '6781767', NULL, 'Raritet BookStore', 'Speciality & Gift Shops', 'Speciality & Gift Shops', 'Chui', 'Chui', 'Bishkek', 'Pushkin 78 Ala Too Square, Bishkek 720000 Kyrgyzstan', '', '', '', '', '', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(144, '12249112', NULL, 'DIVISION Shooting range', 'Shooting Ranges', 'Shooting Ranges', 'Chui', 'chui', 'Bishkek', 'Kulatova Str. 9/1 crossing Ibraimova Str., Bishkek 720000 Kyrgyzstan', 'http://www.facebook.com/division.kg', '9.97E+11', '', '', '', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(145, '12272461', NULL, 'Galaxy Family Park', 'PlaygroundsGame & Entertainment Centers', 'Playgrounds Game & Entertainment Centers', 'Chui', 'Chui', 'Bishkek', 'Chui Ave., 147/4, Bishkek 720000 Kyrgyzstan', 'http://www.galaxypark.kg/', '9.96E+11', '', '', '', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(146, '12245358', NULL, 'Saima', 'Speciality & Gift Shops', 'Speciality & Gift Shops', 'Chui', 'Chui', 'Bishkek', 'Chui Ave., 140, Bishkek 720000 Kyrgyzstan', 'http://www.embroidery.com.kg/', '9.97E+11', '', '42.870679', '74.592627', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(147, '12658159', NULL, 'Indi Massage', 'Spas', 'Spas', 'Chui', 'Chui', 'Bishkek', 'Chui Ave., 158, Bishkek 720000 Kyrgyzstan', 'http://indi.com.kg/', '9.97E+11', 'indimassage.kg@gmail.com', '42.870679', '74.592627', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(148, '24133504', NULL, 'Bar KladOFFka', 'Bars & Clubs', 'Bars & Clubs', 'Chui', 'Chui', 'Bishkek', 'Chui Ave., 187A, Bishkek 720000 Kyrgyzstan', 'http://instagram.com/kladoffka.bar?igshid=ymmymta2m2y=', '9.97E+11', '', '42.870679', '74.592627', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(149, '15130358', NULL, 'Retro Metro Night Club', 'Bars & ClubsKaraoke Bars', 'Bars & Clubs Karaoke Bars Dance Clubs & Discos', 'Chui', 'Chui', 'Bishkek', 'Aitmatova Ave., 24, Bishkek 720000 Kyrgyzstan', 'http://www.retro-metro.kg/', '9.97E+11', 'retrometronk@gmail.com', '42.866735', '74.592627', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(150, '12002392', NULL, 'Promzona Club', 'Bars & ClubsDance Clubs & Discos', 'Bars & Clubs Dance Clubs & Discos', 'Chui', 'chui', 'Bishkek', 'Cholpon-Ata St., 16, Bishkek 720000 Kyrgyzstan', 'http://www.promzona.kg/', '9.96E+11', '', '42.859841', '74.630505', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(151, '3965937', NULL, 'Life Style Spa', 'Spas', 'Spas', 'Chui', 'Chui', 'Bishkek', '35 Erkindin Boulevard, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '', '', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(152, '9798260', NULL, 'Kosmopark', 'Bowling Alleys', 'Bowling Alleys', 'Chui', 'chui', 'Bishkek', 'Yunusaliyeva, 40A, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '42.842936', '74.61461', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(153, '7272741', NULL, 'Fresh Style', 'Spas', 'Spas', 'Chui', 'Chui', 'Bishkek', 'Razzakova St., 22, Bishkek 720000 Kyrgyzstan', 'http://www.freshstyle.kg/', '9.96E+11', '', '', '', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(154, '14780285', NULL, 'Green Mile', 'Game & Entertainment Centers', 'Game & Entertainment Centers', 'Chui', 'Chui', 'Bishkek', 'Chokana Valikhanova, 2/1, Bishkek 720000 Kyrgyzstan', 'https://www.facebook.com/%D0%A1%D1%82%D1%80%D0%B0%D0%B9%D0%BA%D0%B1%D0%BE%D0%BB%D1%8C%D0%BD%D1%8B%D0%B9-%D0%BA%D0%BB%D1%83%D0%B1-Greenmile-393746864467653/?hc_ref=ART3uUL4HeKqEZr2iRgOGecSbp3G7XHjckzoLJe-587bA50RyPdlsQB69H3aslOCu8k&fref=n', '9.97E+11', 'greenmile.airsoft@gmail.com', '42.870757', '74.630505', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(155, '9798316', NULL, 'Rossiya', 'Movie Theaters', 'Movie Theaters', 'Chui', 'Chui', 'Bishkek', 'Chui Ave., 213, Bishkek 720000 Kyrgyzstan', 'http://cinema.kg/', '', 'info@cinema.kg', '42.870679', '74.592487', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(156, '14210450', NULL, 'Oasis', 'Spas', 'Spas', 'Chui', 'Chui', 'Bishkek', 'Chui Ave., 136, Bishkek 720000 Kyrgyzstan', 'http://www.oasis-massage.kg/', '9.97E+11', 'massageoasis312@gmail.com', '42.870679', '74.592627', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(157, '24142766', NULL, 'Transfer KG', 'Taxis & Shuttles', 'Taxis & Shuttles', 'Chui', 'Chui', 'Bishkek', 'Leo Tolstoy, 19, Bishkek 720000 Kyrgyzstan', 'https://transfer-kg.ru/en', '9.97E+11', 'info@transfer-kg.ru', '', '', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(158, '9798272', NULL, 'Manas', 'Movie Theaters', 'Movie Theaters', 'Chui', 'Chui', 'Bishkek', 'Mira Ave., 47, Bishkek 720000 Kyrgyzstan', 'http://www.manascinema.com/', '', '', '42.870679', '74.592627', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(159, '611202', NULL, 'Central Asian Bookshop', 'Speciality & Gift Shops', 'Speciality & Gift Shops', 'Chui', 'Chui', 'Bishkek', '104 Chui Prospect, Bishkek 720000 Kyrgyzstan', '', '', '', '', '', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(160, '9820717', NULL, 'Airsoft Arena', 'Game & Entertainment Centers', 'Game & Entertainment Centers', 'Chui', 'Chui', 'Bishkek', 'Lushhikhina St., 99V, Bishkek 720000 Kyrgyzstan', 'http://www.arena.kg/', '9.97E+11', '', '42.864556', '74.553005', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(161, '8411411', NULL, 'Cinema Oktyabr', 'Movie Theaters', 'Movie Theaters', 'Chui', 'Chui', 'Bishkek', 'Chui Avenue, 184, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '', '', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(162, '10911025', NULL, 'Children Scientific Complex', 'Children\'s MuseumsGame & Entertainment Centers', 'Children\'s Museums Game & Entertainment Centers', 'Chui', 'Chui', 'Bishkek', 'Moskovskaya St., 163 V, Bishkek 720000 Kyrgyzstan', '', '9.97E+11', 'saikal@ukr.net', '42.870679', '74.592627', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(163, '13428342', NULL, 'One Village One Product', 'Speciality & Gift Shops', 'Speciality & Gift Shops', 'Chui', 'Chui', 'Bishkek', 'Toktogula, 140, Bishkek 720000 Kyrgyzstan', 'http://www.facebook.com/ovop.kg/', '9.97E+11', 'davlenbaeva.olga@gmail.com', '42.870679', '74.592627', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(164, '25044833', NULL, 'Soulist', 'Karaoke Bars', 'Karaoke Bars', 'Chui', 'Chui', 'Bishkek', '119 Jumabeka St. Opposite the Central Registry Office, Bishkek 720000 Kyrgyzstan', 'https://www.instagram.com/soulist_bishkek/', '9.97E+11', '', '42.870679', '74.592627', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(165, '9798259', NULL, 'Kyrgyz Kinosu', 'Movie Theaters', 'Movie Theaters', 'Chui', 'Chui', 'Bishkek', 'Akhunbayeva, 92V, Bishkek 720000 Kyrgyzstan', 'http://kyrgyzkinosu.kg/', '9.96E+11', 'kyrgyzkinosu@mail.ru', '42.854963', '74.59527', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(166, '17651164', NULL, 'Raritet', 'Speciality & Gift Shops', 'Speciality & Gift Shops', 'Chui', 'Chui', 'Bishkek', 'Chuy Avenue, 271, Bishkek 720000 Kyrgyzstan', 'http://books.kg/', '9.96E+11', 'rarityfirm@mail.ru', '42.870679', '74.592627', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(167, '12640732', NULL, 'SAIMALUU TASH Art Gallery', 'Speciality & Gift ShopsArt Galleries', 'Speciality & Gift Shops Art Galleries', 'Chui', 'Chui', 'Bishkek', 'Panfilova St., 136/33, Bishkek 720000 Kyrgyzstan', 'http://saimaluutash.kg/', '9.97E+11', 'saimaluu.t@gmail.com', '42.870679', '74.592627', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(168, '13431128', NULL, 'Bex', 'Bus ServicesTaxis & Shuttles', 'Bus Services Taxis & Shuttles', 'Chui', 'Chui', 'Bishkek', '', 'http://www.bex.kg/', '9.97E+11', 'order@bex.kg', '42.844247', '74.603785', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(169, '9820722', NULL, 'Zolotoi Telenok', 'Bars & Clubs', 'Bars & Clubs', 'Chui', 'Chui', 'Bishkek', 'Lva Tolstogo St., 7/3, Bishkek 720000 Kyrgyzstan', '', '', '', '42.870679', '74.592627', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(170, '25380986', NULL, 'Night Club Suzie Wong', 'Bars & Clubs', 'Bars & Clubs', 'Chui', 'Chui', 'Bishkek', 'Tokombayeva, 21a/4, Bishkek 720060 Kyrgyzstan', 'https://www.instagram.com/suziewong.bishkek/', '9.97E+11', '', '42.842936', '74.61703', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(171, '25349909', NULL, 'Norm Bar', 'Bars & Clubs', 'Bars & Clubs', 'Chui', 'Chui', 'Bishkek', '', 'http://instagram.com/norm_bar_', '9.97E+11', '', '42.870679', '74.592627', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(172, '12269121', NULL, 'Daairy', 'Speciality & Gift Shops', 'Speciality & Gift Shops', 'Chui', 'Chui', 'Bishkek', 'Chui Ave., 114, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '42.870679', '74.592627', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(173, '11878392', NULL, 'ZIL Ski Base', 'Gear RentalsSki & Snowboard Areas', 'Gear Rentals Ski & Snowboard Areas', 'Chui', 'Chui', 'Bishkek', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(174, '10112267', NULL, 'Fitness House', 'Health ClubsYoga & Pilates', 'Health Clubs Yoga & Pilates Lessons & Workshops', 'Chui', 'chui', 'Bishkek', 'Baitik Baatyra St., 67/1, Bishkek 720000 Kyrgyzstan', 'https://www.facebook.com/Fitness-House-1668785406675794/', '9.97E+11', '', '', '', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(175, '9798266', NULL, 'Arbat', 'Dance Clubs & Discos', 'Dance Clubs & Discos', 'Chui', 'chui ', 'Bishkek', 'Yunusaliyeva, 93, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '42.850913', '74.614305', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(176, '13536598', NULL, 'Tuman', 'Bars & Clubs', 'Bars & Clubs', 'Chui', 'chui', 'Bishkek', 'Abdurakhmanova St., 152 Mossovet, Dom Torgovli, Bishkek 720000 Kyrgyzstan', 'https://www.facebook.com/tuman.bar/', '9.97E+11', '', '', '', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(177, '9821184', NULL, 'Plaza-Vostok', 'Game & Entertainment Centers', 'Game & Entertainment Centers', 'Chui', 'chui', 'Bishkek', 'Chui Ave., 30A, Bishkek 720000 Kyrgyzstan', '', '', '', '42.870679', '74.614575', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(178, '12667688', NULL, 'Dilbar', 'Speciality & Gift Shops', 'Speciality & Gift Shops', 'Chui', 'chui', 'Bishkek', 'Gorky St., 27/1, Bishkek 720000 Kyrgyzstan', 'http://www.dilbarstyle.com/', '9.97E+11', 'ludmila78e@yandex.ru', '', '', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(179, '13456285', NULL, 'Crystal', 'Health ClubsYoga & Pilates', 'Health Clubs Yoga & Pilates Spas', 'Chui', 'chui', 'Bishkek', 'Lineynaya St., 67, Bishkek 720000 Kyrgyzstan', 'http://www.crystal.kg/', '9.97E+11', 'Ira.crystal@mail.ru', '42.870679', '74.592627', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(180, '12375425', NULL, 'Cook Story', 'Cooking Classes', 'Cooking Classes', 'c', 'chui', 'Bishkek', 'Tokombayeva St., 53/2, Bishkek 720000 Kyrgyzstan', 'https://www.facebook.com/cookstory/', '9.97E+11', '', '', '', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(181, '19896931', NULL, 'Chakra SPA', 'Spas', 'Spas', 'Chui', 'chui', 'Bishkek', 'Elebayeva St., 60 Golden Dragon Hotel, Bishkek 720000 Kyrgyzstan', 'http://website--5049397282702365540161-massagespa.business.site/?fbclid=IwAR3ZJ6TwaB2Hn0OoQlql7comWfDHD0Gz1hbPPtIokHeB8f1L9HA1OiCAdEo', '9.97E+11', '', '', '', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(182, '14210522', NULL, 'S Legkim Parom', 'Hammams & Turkish BathsSpas', 'Hammams & Turkish Baths Spas', 'Chui', 'chui', 'Bishkek', '', 'http://slegkim-parom.kg/', '9.97E+11', 'mail@slegkim-parom.kg', '42.870679', '74.594163', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(183, '15042516', NULL, 'Enoteca', 'Wine Bars', 'Wine Bars', 'Chui', 'chui', 'Bishkek', 'Moskovskaya, 197, Bishkek 720000 Kyrgyzstan', 'https://www.facebook.com/toscanatf/', '9.97E+11', 'toscanatf@gmail.com', '42.870679', '74.592627', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(184, '12871357', NULL, 'The Pirate Bay', 'Bars & Clubs', 'Bars & Clubs', 'Chui', 'chui', 'Bishkek', 'Mira Ave., 90/92, Bishkek 720000 Kyrgyzstan', 'https://www.facebook.com/thepiratebaykg/', '9.97E+11', '', '', '', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(185, '16746121', NULL, 'Family Spa Avenue', 'Spas', 'Spas', 'Chui', 'chui', 'Bishkek', 'Chui ave., 158, Bishkek 720000 Kyrgyzstan', 'https://www.facebook.com/familyspaavenue/', '9.97E+11', '', '', '', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43');
INSERT INTO `places` (`id`, `CSV_Id`, `image`, `Name`, `Category`, `Attraction_Type`, `Region`, `Rayon`, `City`, `Address`, `Website`, `Telephone`, `Email`, `Latitude`, `Longitude`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
(186, '17464720', NULL, 'Gergert Sport', 'Gear Rentals', 'Gear Rentals', 'Chui', 'chui', 'Bishkek', 'Gorkogo, 182, Bishkek 720000 Kyrgyzstan', 'http://www.gergert.kg/', '9.96E+11', 'info@gergert.kg', '42.868602', '74.5947', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(187, '25294095', NULL, 'Archa Spa Center', 'Spas', 'Spas', 'Chui', 'chui', 'Bishkek', 'Chyngyza Aitmatova Ave., 93, Bishkek 720000 Kyrgyzstan', 'https://www.instagram.com/archa_spa/', '9.97E+11', '', '42.844247', '74.594123', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(188, '14199763', NULL, 'Nomads', 'Gear Rentals', 'Gear Rentals', 'Chui', 'chui', 'Bishkek', '', 'http://nomads4x4.com/', '9.97E+11', 'erkin@nomads4x4.com', '42.870679', '74.60536', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(189, '19416209', NULL, 'Verba', 'Speciality & Gift Shops', 'Speciality & Gift Shops', 'Chui', 'chui', 'Bishkek', 'Logvinenko, 26a, Bishkek 720000 Kyrgyzstan', '', '9.97E+11', '', '', '', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(190, '23017309', NULL, 'Ega Hall', 'Yoga & Pilates', 'Yoga & Pilates', 'Chui', 'chui', 'Bishkek', 'Bokonbayeva, 103, Bishkek 720000 Kyrgyzstan', 'http://egahall.kg/', '9.97E+11', 'egahall.kg@gmail.com', '42.870679', '74.592627', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(191, '19397154', NULL, 'Quicktransfer', 'Taxis & Shuttles', 'Taxis & Shuttles', 'Chui', 'chui', 'Bishkek', '', 'http://quicktransfer.com/', '4.42E+11', 'info@quicktransfer.com', '', '', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(192, '23528314', NULL, 'Content Park', 'Game & Entertainment Centers', 'Game & Entertainment Centers', 'Chui', 'chui', 'Bishkek', 'Shopokova 91, Bishkek 720000 Kyrgyzstan', '', '9.97E+11', '', '42.870679', '74.594163', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(193, '23612245', NULL, 'Antikino The Story', 'Movie Theaters', 'Movie Theaters', 'Chui', 'chui', 'Bishkek', 'Tynystanova St., 99 West side of the building 1st floor, Bishkek 720000 Kyrgyzstan', '', '9.97E+11', '', '42.86769', '74.592627', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(194, '20316882', NULL, 'Sequoia Rent Service', 'Gear Rentals', 'Gear Rentals', 'Chui', 'chui', 'Bishkek', 'Sydykova, 250-38, Bishkek 720000 Kyrgyzstan', 'https://www.facebook.com/srsinkyrgyzstan/', '9.97E+11', 'srs.autorent.kg@gmail.com', '', '', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(195, '17746918', NULL, 'Arkan Tokoi', 'Zipline & Aerial Adventure Parks', 'Zipline & Aerial Adventure Parks', 'Chui', 'chui', 'Bishkek', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(196, '15688322', NULL, 'Gergert Sport Outlet', 'Gear Rentals', 'Gear Rentals', 'Chui', 'chui', 'Bishkek', 'Gorkogo, 119, Bishkek 720000 Kyrgyzstan', 'http://www.gergert.kg/', '9.97E+11', 'gergertsportweb@gmail.com', '42.868602', '74.592627', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(197, '17456292', NULL, 'Sommeliers', 'Speciality & Gift Shops', 'Speciality & Gift Shops', 'Chui', 'chui', 'Bishkek', 'Erkindik blvd., 16, Bishkek 720000 Kyrgyzstan', '', '9.97E+11', 'sommeliers.kg@gmail.com', '42.870679', '74.592627', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(198, '25551368', NULL, 'Sunny Bar', 'Bars & Clubs', 'Bars & Clubs', 'Chui', 'chui', 'Bishkek', 'Razzakova str 26, Bishkek 720001 Kyrgyzstan', '', '9.97E+11', '', '42.870679', '74.592627', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(199, '24106384', NULL, 'Cycling Tours Kyrgyzstan', 'Biking Trails', 'Biking Trails', 'Chui', 'chui', 'Bishkek', 'Jumabeka 29, Bishkek 720000 Kyrgyzstan', 'http://www.facebook.com/cyclingtourskyrgyzstan', '9.97E+11', 'cyclingtourskyrgyzstan@gmail.com', '42.870679', '74.592627', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(200, '24135486', NULL, 'Paragliding.kg', 'Parasailing & Paragliding', 'Parasailing & Paragliding', 'Chui', 'chui', 'Bishkek', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(201, '24142782', NULL, 'KladOFFka', 'Bars & Clubs', 'Bars & Clubs', 'Chui', 'chui', 'Bishkek', 'Chui, 187a, Bishkek 720000 Kyrgyzstan', 'https://www.instagram.com/kladoffka.bar/', '', '', '42.870679', '74.592627', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(202, '22952079', NULL, 'Oasis Residence', 'Karaoke Bars', 'Karaoke Bars', 'Chui', 'chui', 'Bishkek', 'Maldybayeva, 69/1, Bishkek 720000 Kyrgyzstan', 'https://www.instagram.com/oasis_residencekg/', '9.97E+11', 'office@oasis-residence.com', '42.844247', '74.59484', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(203, '22867338', NULL, 'Vintazh  Wine&Beer', 'Wine Bars', 'Wine Bars', 'Chui', 'chui', 'Bishkek', 'Isanova, 100, Bishkek 720000 Kyrgyzstan', 'http://www.facebook.com/Vintage.wb.bishkek', '9.97E+11', '', '42.870679', '74.592627', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(204, '23805620', NULL, 'Little Birds City Bar', 'Bars & Clubs', 'Bars & Clubs', 'Chui', 'chui', 'Bishkek', 'Yunusaliyeva, 147, Bishkek 720000 Kyrgyzstan', 'https://www.instagram.com/bar_littlebirds/?hl=en', '9.97E+11', '', '42.844247', '74.614305', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(205, '25210351', NULL, 'Ala-archa National Park', 'Mountains', 'Mountains', 'Chui', 'chui', 'Bishkek', 'Kiev St, Bishkek 720000 Kyrgyzstan', 'https://kymyz.com/', '9.97E+11', '', '42.878544', '74.592627', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(206, '17839788', NULL, 'Sport Shooting Complex', 'Shooting Ranges', 'Shooting Ranges', 'Chui', 'chui', 'Bishkek', 'Valikhanova, 2/14, Bishkek 720000 Kyrgyzstan', '', '%28996%29999919919', 'ssf.kgz@gmail.com', '', '', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(207, '25409275', NULL, 'Boho', 'Bars & Clubs', 'Bars & Clubs', 'Chui', 'chui', 'Bishkek', 'Yunusalieva, 40 A Kosmopark, 3rd floor, Bishkek 720028 Kyrgyzstan', 'https://www.facebook.com/profile.php?id=100063667838920', '9.97E+11', 'agent.reklamnyy@list.ru', '42.84398', '74.59484', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(208, '23460834', NULL, 'Minibar', 'Bars & Clubs', 'Bars & Clubs', 'Chui', 'chui', 'Bishkek', 'Chingiz Aitmatov, 56 Intersection of Aini, Bishkek 720000 Kyrgyzstan', 'http://www.instagram.com/minibar.bishkek/', '9.97E+11', '', '42.84398', '74.59484', '1', 28, '2023-07-03 01:23:43', '2023-07-03 01:23:43'),
(209, '23949888', NULL, 'Chabad Bishkek', 'Religious Sites', 'Religious Sites', 'Chui', 'chui', 'Bishkek', '193 Karpinskogo St., Bishkek 720000 Kyrgyzstan', '', '9.96E+11', 'jbishkek@gmail.com', '42.867355', '74.59064', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(210, '24968334', NULL, 'Oxygen', 'Bars & Clubs', 'Bars & Clubs', 'Chui', 'chui', 'Bishkek', '1/4 Baitik Baatyr St., 8 Md., Bishkek 720000 Kyrgyzstan', 'https://www.instagram.com/o2loungebar/', '9.97E+11', '', '42.842936', '74.611045', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(211, '25154035', NULL, 'L-Studio', 'Spas', 'Spas', 'Chui', 'chui', 'Bishkek', '210 Toktogul Street, Bishkek 720000 Kyrgyzstan', 'http://www.lstudio.kg/', '9.97E+11', 'office@lstudio.kg', '42.870679', '74.592487', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(212, '25256620', NULL, 'Quest Kapaghost', 'Escape Games', 'Escape Games', 'Chui', 'chui', 'Bishkek', 'Oktyabrskaya Street, 250 Verhniy Tokoldosh, Bishkek 720000 Kyrgyzstan', 'https://instagram.com/kapaghost_kg?igshid=ymmymta2m2y=', '9.97E+11', 'getecorporation@gmail.com', '42.870679', '74.59064', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(213, '25410722', NULL, 'Boho Clubar?ars & ClubsDance Clubs & Discos', 'Bars & Clubs Dance Clubs & Discos', 'Chui', 'chui', 'Bishkek', 'Yunusalieva, 40A, Bishkek 720028 Kyrgyzstan', 'https://www.facebook.com/people/BOHO/100063667838920/', '9.97E+11', 'agent.reklamnyy@list.ru', '42.867355', '74.59064', '', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(214, '25416658', NULL, 'Everyday Saturday Bar', 'Bars & Clubs', 'Bars & Clubs', 'Chui', 'chui', 'Bishkek', 'Kamchybeka Shakirova, 31, Bishkek 720020 Kyrgyzstan', 'https://www.instagram.com/everyday__saturday/', '', '', '42.867355', '74.59064', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(215, '14779872', NULL, 'Kol-Tor Lake', 'Bodies of Water', 'Bodies of Water', 'Chuy Province', 'chui', 'Bishkek', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(216, '10092267', NULL, 'Kegety Waterfall', 'Bodies of WaterMountains', 'Bodies of Water Mountains Nature & Wildlife Areas Waterfalls', 'Chuy Province', 'Chuy', 'Bishkek', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(217, '10235109', NULL, 'Ratsek Cabin', 'MountainsNature & Wildlife Areas', 'Mountains Nature & Wildlife Areas', 'Chuy Province', 'Chuy', 'Bishkek', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(218, '10021401', NULL, 'Zhashyl-Kel Lake', 'Bodies of WaterValleys', 'Bodies of Water Valleys', 'Chuy Province', 'Chuy', 'Bishkek', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(219, '12698593', NULL, 'Gorge Kara Bulak', 'Geologic Formations', 'Geologic Formations', 'Chuy Province Arashan', 'Chuy', 'Bishkek', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(220, '10021370', NULL, 'Chon-Kemin National Park', 'National Parks', 'National Parks', 'Chuy Province Kemin', 'Chuy', 'Bishkek', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(221, '10516495', NULL, 'Kel-Kogur Lake', 'Bodies of Water', 'Bodies of Water', 'Chuy Province Kemin', 'Chuy', 'Bishkek', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(222, '23636209', NULL, 'Kyrgyz Handmade', 'Speciality & Gift ShopsLessons & Workshops', 'Speciality & Gift Shops Lessons & Workshops', 'Chuy Province Kok Jar', 'Chuy', 'Bishkek', '18, Madieva Taryh Ordo Hall of Baibol Chaihana, Kok Jar 724316 Kyrgyzstan', 'http://handmade.kg/qr/', '9.97E+11', 'info@handmade.kg', '42.852249', '74.61726', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(223, '9820732', NULL, 'The Temple in Honour of Icon of \"All the Afflicted\"', 'Religious Sites', 'Religious Sites', 'Chuy Province Novopokrovka', 'Chuy', 'Bishkek', '', '', '9.96E+11', '', '42.869319', '74.701322', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(224, '25075499', NULL, 'Museum of the Great Emptiness', 'Art Museums', 'Art Museums', 'Chuy Province Orto Say', 'Chuy', 'Bishkek', 'Ormokoyeva, 31, Orto Say 720000 Kyrgyzstan', 'http://greatemptiness.net/', '9.96E+11', '', '', '', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(225, '9996566', NULL, 'Suusamyr Valley', 'MountainsNature & Wildlife Areas', 'Mountains Nature & Wildlife Areas Geologic Formations', 'Chuy Province Suusamyr', 'Chuy', 'Bishkek', '', 'http://www.facebook.com/Pegasadventure/', '9.97E+11', '', '', '', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(226, '15549071', NULL, 'Ata Beyit Memorial', 'Historic SitesMonuments & Statues', 'Historic Sites Monuments & Statues', 'Chuy Province Tash-Dobo', 'Chuy', 'Bishkek', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(227, '4176350', NULL, 'Burana Tower', 'Historic SitesObservation Decks & Towers', 'Historic Sites Observation Decks & Towers', 'Chuy Province Tokmok', 'Chuy', 'Tokmok', 'Don-Aryk, Tokmok 722201 Kyrgyzstan', '', '', '', '', '', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(228, '10330907', NULL, 'Kegety Gorge', 'MountainsNature & Wildlife Areas', 'Mountains Nature & Wildlife Areas Valleys', 'Chuy Province Tokmok', 'Chuy', 'Tokmok', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(229, '8403671', NULL, 'Tokmok Mosque', 'Religious SitesChurches & Cathedrals', 'Religious Sites Churches & Cathedrals', 'Chuy Province Tokmok', 'Chuy', 'Tokmok', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(230, '6652740', NULL, 'Jeti-Oguz Canyon (Seven Bulls Rocks)', 'Canyons', 'Canyons', 'Issyk Kul Province', 'Issyk Kul ', 'Issyk-kul', '', 'http://tourtapp.com/destinations/jeti-oguz-canyon/', '9.97E+11', '', '', '', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(231, '8404243', NULL, 'Semenovskoye Canyon', 'MountainsCanyons', 'Mountains Canyons Geologic Formations', 'Issyk Kul Province', 'Issyk Kul ', 'Tosor', '', 'http://www.tuk.kg/', '9.96E+11', '', '', '', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(232, '10229094', NULL, 'Waterfall Devichi Kosy', 'Waterfalls', 'Waterfalls', 'Issyk Kul Province', 'Issyk Kul ', 'Barskoon', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(233, '10229099', NULL, 'Roch Rzbitoye Serdtse', 'MountainsNature & Wildlife Areas', 'Mountains Nature & Wildlife Areas Geologic Formations', 'Issyk Kul Province', 'Issyk Kul ', 'Issyk-kul', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(234, '10205985', NULL, 'Burial Mound Complex San-Tash', 'Points of Interest & LandmarksGeologic Formations', 'Points of Interest & Landmarks Geologic Formations', 'Issyk Kul Province', 'Issyk Kul ', 'Issyk-kul', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(235, '10239399', NULL, 'Maiden Tears Waterfall', 'Waterfalls', 'Waterfalls', 'Issyk Kul Province', 'Issyk Kul ', 'Issyk-kul', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(236, '10021270', NULL, 'Ak-Suu Gorge', 'MountainsHiking Trails', 'Mountains Hiking Trails', 'Issyk Kul Province Ak-Suu', 'Issyk Kul ', 'Altyn-Arashan', '', 'http://www.ecotrek.kg/', '9.97E+11', '', '', '', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(237, '10021294', NULL, 'Ak-Suu Hot Spring', 'SpasThermal Spas', 'Spas Thermal Spas', 'Issyk Kul Province Ak-Suu', 'Issyk Kul ', 'Altyn-Arashan', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(238, '10064795', NULL, 'Tuz-Kol, Dead Lake', 'Bodies of Water', 'Bodies of Water', 'Issyk Kul Province Balykchy', 'Issyk Kul ', 'Balykchy', '', 'http://www.ecotrek.kg/', '9.97E+11', '', '', '', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(239, '24060322', NULL, 'Asman', 'Sports Complexes', 'Sports Complexes', 'Issyk Kul Province Balykchy', 'Issyk Kul ', 'Balykchy', 'Amanbayeva, 172, Balykchy 722300 Kyrgyzstan', 'https://www.instagram.com/_asman_balykchy_/', '9.97E+11', 'asman.spa@gmail.com', '42.458124', '76.196118', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(240, '4952511', NULL, 'Barskoon Waterfall', 'Points of Interest & LandmarksWaterfalls', 'Points of Interest & Landmarks Waterfalls', 'Issyk Kul Province Barskoon', 'Issyk Kul ', 'Barskoon', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(241, '10224880', NULL, 'Barskoon Gorge', 'MountainsNature & Wildlife Areas', 'Mountains Nature & Wildlife Areas', 'Issyk Kul Province Barskoon', 'Issyk Kul ', 'Barskoon', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(242, '10224889', NULL, 'Barskoon Plateau', 'Nature & Wildlife Areas', 'Nature & Wildlife Areas', 'Issyk Kul Province Barskoon', 'Issyk Kul ', 'Barskoon', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(243, '10228930', NULL, 'Monument to Yuriy Gagarin', 'Monuments & Statues', 'Monuments & Statues', 'Issyk Kul Province Barskoon', 'Issyk Kul ', 'Barskoon', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(244, '10324919', NULL, 'Ak-Shyyrak Ridge', 'MountainsNature & Wildlife Areas', 'Mountains Nature & Wildlife Areas', 'Issyk Kul Province Barskoon', 'Issyk Kul ', 'Barskoon', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(245, '17353327', NULL, 'Ak Orgo Yurt Workshop', 'Paint & Pottery Studios', 'Paint & Pottery Studios', 'Issyk Kul Province Barskoon', 'Issyk Kul ', 'Barskoon', '97, Lenin street 97, ??????, Barskoon 722005 Kyrgyzstan', '', '9.97E+11', 'akorgo.kyrgyzstan@gmail.com', '', '', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(246, '10024295', NULL, 'Teshik-Kul Lake', 'Bodies of Water', 'Bodies of Water', 'Issyk Kul Province Bokombayevskoye', 'Issyk Kul ', 'Bokombayevskoye', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(247, '13582305', NULL, 'Destination South Shore', 'Visitor Centers', 'Visitor Centers', 'Issyk Kul Province Bokonbayevo', 'Issyk Kul ', 'Province-Bokonbayevo', 'Mambetov Street, 37B Toichubekov Culture House, 2nd floor, Bokonbayevo 722300 Kyrgyzstan', 'http://southshorekg.com/contact/', '9.97E+11', 'southshoreik@gmail.com', '', '', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(248, '25418309', NULL, 'Kolfest ?nternational Music and Arts Festival', 'Music Festivals', 'Music Festivals', 'Issyk Kul Province Bokonbayevo', 'Issyk Kul ', 'Bokombaevo', '', 'http://www.kolfest.com/', '9.97E+11', 'kolfestkg@gmail.com', '', '', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(249, '12662287', NULL, 'Ferris Wheel', 'Observation Decks & Towers', 'Observation Decks & Towers', 'Issyk Kul Province Bosteri', 'Issyk Kul ', 'Bosteri', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(250, '5000141', NULL, 'Ruh Ordo Cultural Center', 'Civic Centres', 'Civic Centres', 'Issyk Kul Province Cholpon Ata', 'Issyk Kul ', 'Cholpon-Ata', 'Sovetskaya St President Summer Residency - Sovmin, Cholpon Ata 722315 Kyrgyzstan', 'http://rukhordo.kg/', '9.97E+11', 'ruhordo2007@gmail.com', '42.64649', '77.104517', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(251, '4946285', NULL, 'Museum of Petroglyphs', 'Speciality Museums', 'Speciality Museums', 'Issyk Kul Province Cholpon Ata', 'Issyk Kul ', 'Cholpon-Ata', '', 'http://www.kyrgyztours.com/', '9.97E+11', '', '42.643233', '77.095295', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(252, '6429016', NULL, 'Historical Museum', 'Speciality Museums', 'Speciality Museums', 'Issyk Kul Province Cholpon Ata', 'Issyk Kul ', 'Cholpon-Ata', 'A363 Cholpon Ata, Cholpon Ata 722315 Kyrgyzstan', '', '9.96E+11', '', '42.64649', '77.099568', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(253, '13098578', NULL, 'The Equestrian Hippodrome', 'Sports Complexes', 'Sports Complexes', 'Issyk Kul Province Cholpon Ata', 'Issyk Kul ', 'Cholpon-Ata', '', 'http://worldnomadgames.com/en/places/Hippodrome/#', '', '', '42.64649', '77.119224', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(254, '10224016', NULL, 'Abandoned Airport Cholpon Ata', 'Points of Interest & LandmarksMysterious Sites', 'Points of Interest & Landmarks Mysterious Sites', 'Issyk Kul Province Cholpon Ata', 'Issyk Kul ', 'Cholpon-Ata', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(255, '10031701', NULL, 'Oluya Cholpon Ata Mausoleum', 'Architectural BuildingsCemeteries', 'Architectural Buildings Cemeteries', 'Issyk Kul Province Cholpon Ata', 'Issyk Kul ', 'Cholpon-Ata', '', 'http://www.applehostel.kg/en/', '', '', '', '', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(256, '10224000', NULL, 'Abandoned Runway', 'Points of Interest & LandmarksMysterious Sites', 'Points of Interest & Landmarks Mysterious Sites', 'Issyk Kul Province Cholpon Ata', 'Issyk Kul ', 'Cholpon-Ata', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(257, '10229108', NULL, 'Lenin Statue', 'Monuments & Statues', 'Monuments & Statues', 'Issyk Kul Province Cholpon Ata', 'Issyk Kul ', 'Cholpon-Ata', 'Sovetskaya St., Cholpon Ata 722315 Kyrgyzstan', '', '', '', '42.64649', '77.084075', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(258, '17600084', NULL, 'Cholpon Fountain', 'Fountains', 'Fountains', 'Issyk Kul Province Cholpon Ata', 'Issyk Kul ', 'Cholpon-Ata', 'A363, Cholpon Ata 722315 Kyrgyzstan', '', '', '', '', '', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(259, '17469704', NULL, 'Hippodrome Cholpon-Ata', 'Horse Tracks', 'Horse Tracks', 'Issyk Kul Province Cholpon Ata', 'Issyk Kul ', 'Cholpon-Ata', 'A363, Cholpon Ata 722315 Kyrgyzstan', '', '', '', '', '', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(260, '25163894', NULL, 'Termal', 'Hot Springs & Geysers', 'Hot Springs & Geysers', 'Issyk Kul Province Cholpon Ata', 'Issyk Kul ', 'Cholpon-Ata', 'Alleya Aitmatova 6a/1, Cholpon Ata 722315 Kyrgyzstan', '', '9.97E+11', 'ovoazim@gmail.com', '42.646781', '77.095005', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(261, '17599963', NULL, 'Veterans Monument', 'Monuments & Statues', 'Monuments & Statues', 'Issyk Kul Province Cholpon Ata', 'Issyk Kul ', 'Cholpon-Ata', 'A363, Cholpon Ata 722315 Kyrgyzstan', '', '', '', '', '', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(262, '24928967', NULL, 'Termal Spa Center', 'Thermal Spas', 'Thermal Spas', 'Issyk Kul Province Cholpon Ata', 'Issyk Kul ', 'Cholpon-Ata', 'Alleya Aitmatova, 6a/1, Cholpon Ata 722315 Kyrgyzstan', '', '9.97E+11', 'aikamusiconly@gmail.com', '42.646421', '77.089227', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(263, '8059960', NULL, 'Hot springs', 'Thermal Spas', 'Thermal Spas', 'Issyk Kul Province Chon-Uryukty', 'Issyk Kul ', 'Uryukty', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(264, '13388773', NULL, 'Keremet Suu Hot Spring', 'Thermal Spas', 'Thermal Spas', 'Issyk Kul Province Chon-Uryukty', 'Issyk Kul ', 'Uryukty', 'Akademiya, 25, Chon-Uryukty 722360 Kyrgyzstan', '', '', '', '', '', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(265, '9996607', NULL, 'Engilchek Glacier', 'MountainsNature & Wildlife Areas', 'Mountains Nature & Wildlife Areas Geologic Formations', 'Issyk Kul Province Engilchek', 'Issyk Kul ', 'Engilchek', '', 'http://www.ecotrek.kg/', '9.97E+11', '', '', '', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(266, '8404242', NULL, 'Grigorevskoye Canyon', 'Forests', 'Forests', 'Issyk Kul Province Grigoryevka', 'Issyk Kul ', 'Grigoryevka', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(267, '10224023', NULL, 'Abandoned Pension Utyos', 'Points of Interest & LandmarksMysterious Sites', 'Points of Interest & Landmarks Mysterious Sites', 'Issyk Kul Province Kaji-Say', 'Issyk Kul ', 'Kaji-Say', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(268, '10228913', NULL, 'Tyoploye Lake', 'Bodies of Water', 'Bodies of Water', 'Issyk Kul Province Kaji-Say', 'Issyk Kul ', 'Kaji-Say', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(269, '19436423', NULL, 'Shygaev Museum of Modern Art', 'Art Museums', 'Art Museums', 'Issyk Kul Province Kaji-Say', 'Issyk Kul ', 'Kaji-Say', 'Issyk-Kulskaya St., 34A, Kaji-Say 722304 Kyrgyzstan', 'http://www.facebook.com/shygaevmuseum', '9.97E+11', 'shygaevmuseum@gmail.com', '', '', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(270, '10091505', NULL, 'Manjyly-Ata Valley', 'Valleys', 'Valleys', 'Issyk Kul Province Kaji-Say', 'Issyk Kul ', 'Kaji-Say', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(271, '13294456', NULL, 'Kadzhi-Saz Gorge', 'Canyons', 'Canyons', 'Issyk Kul Province Kaji-Say', 'Issyk Kul ', 'Kaji-Say', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(272, '1060132', NULL, 'Issyk-Kul Lake', 'Bodies of Water', 'Bodies of Water', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', 'Tian Shan Mountains, Karakol 722360 Kyrgyzstan', '', '', '', '42.443169', '78.430655', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(273, '2709342', NULL, 'Altyn Arashan', 'Hot Springs & Geysers', 'Hot Springs & Geysers', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '', '', '9.97E+11', '', '42.346957', '78.574065', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(274, '8791818', NULL, 'Ala Kul Lake', 'Bodies of Water', 'Bodies of Water', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '', 'http://tourtapp.com/destinations/ala-kul-lake/', '9.97E+11', 'info@tourtapp.com', '42.37472', '78.61', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(275, '5529525', NULL, 'Holy Trinity Russian Orthodox Cathederal', 'Churches & Cathedrals', 'Churches & Cathedrals', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', 'Holy Trinity Russian Orthodox Cathederal, Karakol 722360 Kyrgyzstan', '', '', '', '42.485223', '78.391378', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(276, '736889', NULL, 'Karakol Ski Base', 'Ski & Snowboard Areas', 'Ski & Snowboard Areas', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '', 'http://www.ski-karakol.com/', '9.97E+11', '', '42.414671', '78.411884', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(277, '4221145', NULL, 'Nikolai Przhevalsky Museum', 'Speciality Museums', 'Speciality Museums', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', 'Ak-Su, Karakol 722360 Kyrgyzstan', 'http://www.ecotrek.kg/', '9.97E+11', '', '42.573498', '78.307578', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(278, '5999969', NULL, 'Dungan Mosque', 'Points of Interest & Landmarks', 'Points of Interest & Landmarks', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '', 'http://hikingkyrgyzstan.com/blog-about-kyrgyzstan/karakol/', '9.97E+11', 'hikingkyrgzystan@gmail.com', '42.485223', '78.391378', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(279, '6834930', NULL, 'Monument N.M. Przhevalsky', 'Points of Interest & LandmarksMonuments & Statues', 'Points of Interest & Landmarks Monuments & Statues', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', 'Dzerzhinsky Street, Karakol 722360 Kyrgyzstan', 'http://www.ecotrek.kg/', '9.97E+11', '', '42.573117', '78.309015', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(280, '6908490', NULL, 'Karakol Cattle Market', 'Farmers Markets', 'Farmers Markets', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '', 'http://www.advantour.com/kyrgyzstan/karakol/karakol-cattle-market.htm', '9.97E+11', '', '', '', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(281, '11933521', NULL, 'Jyrgalan Valley', 'Ski & Snowboard AreasValleys', 'Ski & Snowboard Areas Valleys', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '', '', '', '', '42.604531', '79.019198', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(282, '9996574', NULL, 'Karakol Gorge', 'MountainsGeologic Formations', 'Mountains Geologic Formations', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Province-Karakol', '', 'http://www.facebook.com/Kyrgyzguides', '9.97E+11', '', '', '', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(283, '7597610', NULL, 'Karakol Historical Museum', 'History Museums', 'History Museums', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Province-Karakol', 'Gagarin/Jamansariev, Karakol 722360 Kyrgyzstan', 'http://visitkarakol.com/localhistorymuseum', '9.96E+11', '', '42.485223', '78.391378', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(284, '9996588', NULL, 'Karakol Peak', 'State ParksMountains', 'State Parks Mountains', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '', 'http://karakolnaturepark.com/', '9.97E+11', '', '', '', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(285, '7155859', NULL, 'Saimaluu-Tash Reserve Museum', 'Speciality MuseumsPoints of Interest & Landmarks', 'Speciality Museums Points of Interest & Landmarks', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', 'Nordbredden Pa Issyk-Kul Soen, Karakol 722360 Kyrgyzstan', 'http://www.advantour.com/kyrgyzstan/museums/saimaluu-tash.htm', '', '', '', '', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(286, '10021276', NULL, 'Juuku Gorge', 'MountainsNature & Wildlife Areas', 'Mountains Nature & Wildlife Areas Canyons Geologic Formations', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '', 'http://www.ecotrek.kg/', '9.97E+11', '', '', '', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(287, '7602031', NULL, 'Karakol Tourist Information Center', 'Visitor Centers', 'Visitor Centers', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', 'Abdrahmanov St 130, Karakol 722360 Kyrgyzstan', 'https://www.facebook.com/Tourist-Information-Center-in-Karakol-1123711857671978/?ref=page_internal', '9.97E+11', '', '', '', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(288, '7393405', NULL, 'Bugu-Ene Zoo', 'Zoos', 'Zoos', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', 'Koenkozov/Parkovaya St., Karakol 722360 Kyrgyzstan', 'http://www.ecotrek.kg/', '9.97E+11', '', '', '', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(289, '9996561', NULL, 'Khan Tengri Peak', 'Mountains', 'Mountains', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(290, '10084870', NULL, 'Oguz-Bashi Peak', 'Geologic Formations', 'Geologic Formations', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(291, '12474845', NULL, 'Destination Karakol Visitor Center', 'Visitor Centers', 'Visitor Centers', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '22 Gagarin St Situated next to Fat Cat Coffee, Karakol 722360 Kyrgyzstan', 'https://destinationkarakol.com/about/services/', '9.97E+11', 'info@destinationkarakol.com', '42.486534', '78.391378', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(292, '10209155', NULL, 'Karkara Valley', 'MountainsNature & Wildlife Areas', 'Mountains Nature & Wildlife Areas Valleys', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(293, '10024241', NULL, 'Przewalski Peak', 'MountainsNature & Wildlife Areas', 'Mountains Nature & Wildlife Areas Geologic Formations', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '', 'http://www.ecotrek.kg/', '9.97E+11', '', '', '', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(294, '8066338', NULL, 'Children Park Balakai', 'Playgrounds', 'Playgrounds', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '', 'https://www.facebook.com/pages/%D0%94%D0%B5%D1%82%D1%81%D0%BA%D0%B8%D0%B9-%D0%9F%D0%B0%D1%80%D0%BA-%D0%91%D0%B0%D0%BB%D0%B0%D0%BA%D0%B0%D0%B9/1480074908912578?sk=timeline', '9.97E+11', '', '', '', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(295, '11897942', NULL, 'Antique Shop of Aleksandr Korablev', 'Antique Shops', 'Antique Shops', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Province-Karakol', 'Jamansariev Street Corner of Toktogul & Jamansariev, Karakol 722360 Kyrgyzstan', 'http://visitkarakol.com/antique_shop_karakol', '9.97E+11', '', '', '', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(296, '12501259', NULL, 'Karakol Meeting Point', 'Visitor Centers', 'Visitor Centers', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Province-Karakol', '86 Jusaev Street Karasaev St., Karakol 722200 Kyrgyzstan', 'http://duetkarakol.wordpress.com/meeting-point/', '9.97E+11', 'duetkarakol@gmail.com', '42.484449', '78.391378', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(297, '10516482', NULL, 'Sary-Jaz Valley', 'MountainsNature & Wildlife Areas', 'Mountains Nature & Wildlife Areas Valleys', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Province-Karakol', '', 'http://visitkarakol.com/sary_jaz', '9.97E+11', '', '', '', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(298, '10324956', NULL, 'Boris Yeltsin Peak', 'Mountains', 'Mountains', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(299, '10064765', NULL, 'Merzbacher Lake', 'Bodies of Water', 'Bodies of Water', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(300, '10024209', NULL, 'Djigit Peak', 'MountainsNature & Wildlife Areas', 'Mountains Nature & Wildlife Areas Geologic Formations', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '', 'http://www.ecotrek.kg/', '9.97E+11', '', '', '', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(301, '9996631', NULL, 'Telety Pass', 'MountainsNature & Wildlife Areas', 'Mountains Nature & Wildlife Areas Geologic Formations', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '', 'http://www.ecotrek.kg/', '9.97E+11', '', '', '', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(302, '13094936', NULL, 'River Park', 'Parks', 'Parks', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '195 Shapak Baatyr, Karakol 722360 Kyrgyzstan', 'http://www.destinationkarakol.com/', '', '', '', '', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(303, '15042333', NULL, 'Park Pobedy', 'Parks', 'Parks', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(304, '9996660', NULL, 'Jengish Peak', 'MountainsNature & Wildlife Areas', 'Mountains Nature & Wildlife Areas Geologic Formations', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '', 'http://www.ecotrek.kg/', '9.97E+11', '', '', '', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(305, '10236655', NULL, 'Tolgonai Ene Handcraft Workshop', 'Speciality Museums', 'Speciality Museums', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', 'Lenina St., 150, Karakol 722360 Kyrgyzstan', '', '9.97E+11', '', '', '', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(306, '14994464', NULL, 'The Monument of Aryk Myrza', 'Monuments & Statues', 'Monuments & Statues', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', 'Tsentralny Skver, Karakol 722360 Kyrgyzstan', '', '', '', '', '', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(307, '15042355', NULL, 'Monument to Tagai-Biy', 'Points of Interest & LandmarksMonuments & Statues', 'Points of Interest & Landmarks Monuments & Statues', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(308, '8805474', NULL, 'Issyk Kul Brand Shop', 'Speciality & Gift Shops', 'Speciality & Gift Shops', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Province-Karakol', 'Toktogula, Karakol 722360 Kyrgyzstan', 'http://www.facebook.com/One-Village-One-Product-Issyk-kul-236219876529319', '9.96E+11', '', '', '', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(309, '15042493', NULL, 'Pushkin Park', 'Parks', 'Parks', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(310, '15042315', NULL, 'Tsentralny Skver', 'Parks', 'Parks', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(311, '23839711', NULL, 'The Hut', 'Bars & Clubs', 'Bars & Clubs', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Province-Karakol', '', 'http://instagram.com/the_hut_karakol?utm_medium=copy_link', '9.97E+11', '', '42.484449', '78.391378', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(312, '17562257', NULL, 'Karakol Big Bazaar', 'Farmers Markets', 'Farmers Markets', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', 'Corner of Torgoev and Aldashev Streets, Karakol 722360 Kyrgyzstan', '', '', '', '', '', '1', 28, '2023-07-03 01:23:44', '2023-07-03 01:23:44'),
(313, '17562255', NULL, 'Small Bazaar', 'Farmers Markets', 'Farmers Markets', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', 'Corner of Alybakov & Gagarin Streets, Karakol 722360 Kyrgyzstan', '', '', '', '', '', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(314, '17604359', NULL, 'Massage Karakol Tatiana', 'Spas', 'Spas', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', 'Koenkozova/ Jamansarieva, Karakol 722200 Kyrgyzstan', 'https://massagekarakol.business.site/', '9.97E+11', '', '42.484449', '78.391378', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(315, '17539793', NULL, 'Issyk-Kul Kayaking', 'Kayaking & Canoeing', 'Kayaking & Canoeing', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(316, '10105957', NULL, 'Sky Trial', 'Parasailing & Paragliding', 'Parasailing & Paragliding', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(317, '10021290', NULL, 'Jyrgalan Hot Spring', 'SpasThermal Spas', 'Spas Thermal Spas', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(318, '16816548', NULL, 'Duet SPA & Salon', 'Spas', 'Spas', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Province-Karakol', '150 Karasaeva Street Jusaev Street, Karakol 722200 Kyrgyzstan', 'http://www.facebook.com/duetspasalon/', '9.97E+11', 'duetspasalon@gmail.com', '42.484449', '78.391378', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(319, '17540227', NULL, 'Urban Monkey', 'Bars & Clubs', 'Bars & Clubs', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', 'Kydyr Ake, 4 Urban Monkey Tent Hostel &bar, Karakol 722360 Kyrgyzstan', 'http://hostelinkarakol.com/', '9.97E+11', '', '', '', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(320, '7787967', NULL, 'Zum Depart', 'Speciality & Gift ShopsDepartment Stores', 'Speciality & Gift Shops Department Stores Shopping Malls', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', 'Toktogula St., Karakol 722360 Kyrgyzstan', '', '', '', '', '', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(321, '10021304', NULL, 'Saruu Hot Spring', 'SpasThermal Spas', 'Spas Thermal Spas', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '', '', '9.96E+11', '', '', '', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(322, '11911195', NULL, 'Time for Travel', 'Bus Services', 'Bus Services', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '', 'http://www.ecotrek.kg/index.php/en/', '9.97E+11', 'vbn_nbv@mail.ru', '', '', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(323, '17708724', NULL, 'Aibek Omurbek uulu', 'Escape GamesTaxis & Shuttles', 'Escape Games Taxis & Shuttles Bike Tours Hiking & Camping Tours Food Tours Horseback Riding Tours Day Trips', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(324, '23309574', NULL, 'Lake Zhashyl Kol', 'Bodies of Water', 'Bodies of Water', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', 'Karakol gorge, Karakol 722360 Kyrgyzstan', '', '', '', '42.447042', '78.3848', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(325, '6628585', NULL, 'Radon Springs Djuuku', 'Bodies of Water', 'Bodies of Water', 'Issyk Kul Province Saruu', 'Issyk Kul ', 'Saruu', '', 'http://triptokyrgyzstan.com/ru/destinations/places/goryachie-istochniki-dzhuuku#.U3OFIigZKRM', '', '', '', '', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(326, '14971363', NULL, 'Suttu Bulak', 'Bodies of Water', 'Bodies of Water', 'Issyk Kul Province Semenovka', 'Issyk Kul ', 'Semenovka', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(327, '8066189', NULL, 'Temple of the Holy Great Martyr Demetrios', 'Churches & Cathedrals', 'Churches & Cathedrals', 'Issyk Kul Province Teploklyuchenka', 'Issyk Kul ', 'Teplokyuchenko', 'Lenina St., 95, Teploklyuchenka 722347 Kyrgyzstan', 'http://www.eparchia.kg/hramy/36', '9.97E+11', '', '', '', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(328, '7020995', NULL, 'Canyon Fairy Tale', 'Canyons', 'Canyons', 'Issyk Kul Province Tosor', 'Issyk Kul ', 'Province-Tosor', '', 'http://www.facebook.com/Pegasadventure/', '9.97E+11', '', '42.162282', '77.347672', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(329, '12899912', NULL, 'Canyon Skazka', 'Geologic Formations', 'Geologic Formations', 'Issyk Kul Province Tosor', 'Issyk Kul ', 'Tosor', '', '', '', '', '42.162257', '77.348095', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(330, '10325110', NULL, 'Tosor Pass', 'MountainsCanyons', 'Mountains Canyons Valleys', 'Issyk Kul Province Tosor', 'Issyk Kul ', 'Tosor', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(331, '8504342', NULL, 'Sary Chelek Biosphere Reserve', 'National Parks', 'National Parks', 'Jalal-Abad Province', 'Jalal-Abad', 'Province', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(332, '6433871', NULL, 'Saimaluu Tash', 'National Parks', 'National Parks', 'Jalal-Abad Province', 'Jalal-Abad', 'Jalal-Abad', '', 'http://whc.unesco.org/en/tentativelists/1512/', '', '', '', '', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(333, '10113022', NULL, 'Kara-Suu Lake', 'Bodies of WaterMountains', 'Bodies of Water Mountains Nature & Wildlife Areas Canyons Geologic Formations', 'Jalal-Abad Province', 'Jalal-Abad', 'Province', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(334, '10084882', NULL, 'Arslanbob Walnut Forest', 'National ParksNature & Wildlife Areas', 'National Parks Nature & Wildlife Areas Forests', 'Jalal-Abad Province Arslanbob', 'Jalal-Abad', 'Arslanbob', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(335, '10089052', NULL, 'Arslanbob Waterfalls', 'Bodies of WaterNature & Wildlife Areas', 'Bodies of Water Nature & Wildlife Areas Waterfalls', 'Jalal-Abad Province Arslanbob', 'Jalal-Abad', 'Arslanbob', '', 'http://www.cbtkyrgyzstan.kg/en/cbt-groups/cbt-arstanbap', '9.97E+11', '', '', '', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(336, '10091476', NULL, 'Holy Rock', 'MountainsNational Parks', 'Mountains National Parks Canyons Forests Geologic Formations', 'Jalal-Abad Province Arslanbob', 'Jalal-Abad', 'Arslanbob', '', 'http://www.cbtkyrgyzstan.kg/en/cbt-groups/cbt-arstanbap', '9.97E+11', '', '', '', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(337, '10209139', NULL, 'Padysh-Ata Reserve', 'State ParksNational Parks', 'State Parks National Parks Nature & Wildlife Areas', 'Jalal-Abad Province Jalal-Abad', 'Jalal-Abad', 'Jalal-Abad', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(338, '10112277', NULL, 'Shah-Fazil', 'Religious Sites', 'Religious Sites', 'Jalal-Abad Province Safed-Bulan', 'Jalal-Abad', 'Bulan', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(339, '7912835', NULL, 'Toktogul Lake', 'Bodies of Water', 'Bodies of Water', 'Jalal-Abad Province Toktogul', 'Jalal-Abad', 'Toktogul', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(340, '10205989', NULL, 'Chichkan Gorge', 'MountainsCanyons', 'Mountains Canyons Geologic Formations', 'Jalal-Abad Province Toktogul', 'Jalal-Abad', 'Toktogul', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(341, '14000902', NULL, 'Ak-Tash Ski Resort', 'Ski & Snowboard Areas', 'Ski & Snowboard Areas', 'Kashka Suu', 'Chuy', 'Kashka-Suu', '', 'http://aktash.kg/', '9.97E+11', 'ak-tash@inbox.ru', '', '', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(342, '2701597', NULL, 'Song Kol Lake', 'Bodies of Water', 'Bodies of Water', 'Naryn Province', 'Naryn', 'Province', 'Song Kol lake pionerskaya 20, Kochkor, 722600 Kyrgyzstan', '', '', 'Pegasadventure@gmail.com', '42.20082', '75.765575', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(343, '459861', NULL, 'Son Kul Lake', 'Bodies of Water', 'Bodies of Water', 'Naryn Province', 'Naryn', 'Province', 'Kyrgyzstan, Kyrgyzstan, 720000 Kyrgyzstan', '', '', '', '', '', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(344, '459862', NULL, 'Tash Rabat', 'Valleys', 'Valleys', 'Naryn Province', 'Naryn', 'Naryn-Province', '', 'http://www.facebook.com/Pegasadventure/', '9.97E+11', '', '', '', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(345, '10063840', NULL, 'Shyrdakbek Korgon', 'Ancient RuinsPoints of Interest & Landmarks', 'Ancient Ruins Points of Interest & Landmarks', 'Naryn Province', 'Naryn', 'Province', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(346, '8756348', NULL, 'Kol Suu', 'Bodies of Water', 'Bodies of Water', 'Naryn Province At-Bashi', 'Naryn', 'At-Bashi', '', 'http://www.facebook.com/Pegasadventure/', '9.97E+11', '', '40.63896', '76.40482', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(347, '8408187', NULL, 'Chatyr-Kul Lake', 'Bodies of WaterBeaches', 'Bodies of Water Beaches', 'Naryn Province At-Bashi', 'Naryn', 'Bashi', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(348, '10021352', NULL, 'Shar Waterfall', 'Waterfalls', 'Waterfalls', 'Naryn Province At-Bashi', 'Naryn', 'Bashi', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(349, '8791689', NULL, 'Kashka Suu', 'Geologic Formations', 'Geologic Formations', 'Naryn Province At-Bashi', 'Naryn', 'Bashi', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(350, '10168566', NULL, 'Koshoy Korgon', 'Ancient RuinsPoints of Interest & Landmarks', 'Ancient Ruins Points of Interest & Landmarks Nature & Wildlife Areas', 'Naryn Province Kara-Suu', 'Naryn', 'Suu', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(351, '9996546', NULL, 'Kol-Ukok Lake', 'Bodies of Water', 'Bodies of Water', 'Naryn Province Kochkor', 'Naryn', 'Kochkor', 'Kyrgyzstan, Kochkor Kol ukok, Kochkor 722500 Kyrgyzstan', '', '9.97E+11', 'azizovmaxi@gmail.com', '', '', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(352, '10357610', NULL, 'Orto-Tokoy Water Reservoir', 'Bodies of Water', 'Bodies of Water', 'Naryn Province Kochkor', 'Naryn', 'Kochkor', '', 'http://kyrgyznature.com/', '9.97E+11', '', '', '', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(353, '10239217', NULL, 'Kyzart Pass', 'Scenic Drives', 'Scenic Drives', 'Naryn Province Kochkor', 'Naryn', 'Kochkor', '', '', '', '', '42.201778', '75.76652', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(354, '10239307', NULL, 'Dolon Pass', 'Scenic Drives', 'Scenic Drives', 'Naryn Province Kochkor', 'Naryn', 'Kochkor', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(355, '10224561', NULL, 'Jailoo Sarala-Saz', 'MountainsNature & Wildlife Areas', 'Mountains Nature & Wildlife Areas', 'Naryn Province Kochkor', 'Naryn', 'Kochkor', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(356, '10239316', NULL, 'Altyn Kol', 'Speciality & Gift Shops', 'Speciality & Gift Shops', 'Naryn Province Kochkor', 'Naryn', 'Kochkor', 'Pionerskaya St., 22 A next door to CBT Kochkor office, Kochkor 722500 Kyrgyzstan', '', '9.97E+11', 'altynkol@gmail.com', '', '', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(357, '10063829', NULL, 'Cholok Korgon', 'Ancient RuinsPoints of Interest & Landmarks', 'Ancient Ruins Points of Interest & Landmarks', 'Naryn Province Konorchok', 'Naryn', 'Konorchok', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(358, '17690462', NULL, 'Museum of Kozhomkul', 'Speciality Museums', 'Speciality Museums', 'Naryn Province Kyzyloy', 'Naryn', 'Kyzyl-oi', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(359, '12876326', NULL, 'Kel-Suu Lake', 'Bodies of Water', 'Bodies of Water', 'Naryn Province Naryn', 'Naryn', 'Province-Naryn', '', 'http://m.facebook.com/Pegasadventure/', '9.97E+11', '', '40.70197', '76.39013', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(360, '6882292', NULL, 'National Park Salkyn-Tor', 'National ParksParks', 'National Parks Parks', 'Naryn Province Naryn', 'Naryn', 'Naryn', '', 'http://triptokyrgyzstan.com/en/destinations/places/national-park-salkyn-tor', '', '', '', '', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(361, '10091968', NULL, 'Kok-Kiya Valley', 'Valleys', 'Valleys', 'Naryn Province Naryn', 'Naryn', 'Naryn', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(362, '10091978', NULL, 'Moldo-Ashu Pass', 'Mountains', 'Mountains', 'Naryn Province Naryn', 'Naryn', 'Naryn', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(363, '6881749', NULL, 'Blue Mosque', 'Points of Interest & LandmarksArchitectural Buildings', 'Points of Interest & Landmarks Architectural Buildings Religious Sites', 'Naryn Province Naryn', 'Naryn', 'Naryn', '1200 Lenin St, Naryn 722600 Kyrgyzstan', 'http://everythingturkic.tumblr.com/post/64415800832/mosque-in-naryn-kyrgyzstan', '', '', '', '', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(364, '10021326', NULL, 'Eki-Naryn Valley', 'Hiking TrailsValleys', 'Hiking Trails Valleys', 'Naryn Province Naryn', 'Naryn', 'Naryn', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(365, '10091805', NULL, 'Kara-Keche Pass', 'Biking TrailsValleys', 'Biking Trails Valleys', 'Naryn Province Naryn', 'Naryn', 'Naryn', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(366, '10021324', NULL, 'Torugart Pass', 'Mountains', 'Mountains', 'Naryn Province Naryn', 'Naryn', 'Naryn', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(367, '10085186', NULL, 'Naryn National Reserve', 'MountainsNational Parks', 'Mountains National Parks Nature & Wildlife Areas Forests', 'Naryn Province Naryn', 'Naryn', 'Naryn', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(368, '10126683', NULL, 'Ala Mischuk', 'Mountains', 'Mountains', 'Naryn Province Naryn', 'Naryn', 'Naryn', '', '', '9.97E+11', '', '', '', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45');
INSERT INTO `places` (`id`, `CSV_Id`, `image`, `Name`, `Category`, `Attraction_Type`, `Region`, `Rayon`, `City`, `Address`, `Website`, `Telephone`, `Email`, `Latitude`, `Longitude`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
(369, '10089079', NULL, '.', 'Nature & Wildlife AreasWaterfalls', 'Nature & Wildlife Areas Waterfalls', 'Naryn Province Naryn', 'Naryn', 'Naryn', '', 'http://www.facebook.com/Pegasadventure/', '9.97E+11', '', '', '', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(370, '7022968', NULL, 'River Kekemeren', 'Bodies of Water', 'Bodies of Water', 'Naryn Province Naryn', 'Naryn', 'Naryn', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(371, '10239409', NULL, 'Arpa Valley', 'MountainsNature & Wildlife Areas', 'Mountains Nature & Wildlife Areas Valleys', 'Naryn Province Naryn', 'Naryn', 'Naryn', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(372, '10158584', NULL, 'Ala Myshyk Caves', 'Caverns & Caves', 'Caverns & Caves', 'Naryn Province Naryn', 'Naryn', 'Naryn', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(373, '6697330', NULL, 'Mountain Sulaiman-Too', 'Mountains', 'Mountains', 'Osh', 'Osh', 'Osh', '', '', '', '', '40.540166', '72.78528', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(374, '3377828', NULL, 'Lenin Peak', 'Mountains', 'Mountains', 'Osh', 'Osh', 'Osh', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(375, '6697323', NULL, 'Museum Sulaiman Too', 'History Museums', 'History Museums', 'Osh', 'Osh', 'Osh', 'Mountain Sulaiman Too, Osh 714000 Kyrgyzstan', 'http://www.facebook.com/Pegasadventure/', '9.96E+11', 'sulaimanto@mail.ru', '40.540166', '72.78528', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(376, '8403820', NULL, 'Abshir Ata Falls', 'Bodies of WaterWaterfalls', 'Bodies of Water Waterfalls', 'Osh', 'Osh', 'Osh', '', 'http://www.visitalay.kg/', '9.96E+11', '', '', '', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(377, '10206006', NULL, 'Alay Valley', 'Valleys', 'Valleys', 'Osh', 'Osh', 'Osh', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(378, '8286089', NULL, 'Osh New Mosque', 'Religious Sites', 'Religious Sites', 'Osh', 'Osh', 'Osh', '', 'http://www.visitalay.kg/', '9.96E+11', '', '40.540166', '72.78528', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(379, '15036886', NULL, 'Lenin Monument', 'Points of Interest & LandmarksMonuments & Statues', 'Points of Interest & Landmarks Monuments & Statues', 'Osh', 'Osh', 'Osh', 'Lenin Ave, Osh 714000 Kyrgyzstan', '', '', '', '40.531855', '72.786448', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(380, '10801308', NULL, 'Kyrgyz Ata National Park', 'MountainsNature & Wildlife Areas', 'Mountains Nature & Wildlife Areas Hiking Trails', 'Osh', 'Osh', 'Osh', 'Nootkat region 40 km from the city of Osh, Osh 714000 Kyrgyzstan', 'http://www.visitalay.com/', '9.97E+11', '', '', '', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(381, '10196880', NULL, 'Irkeshtam Pass', 'MountainsPoints of Interest & Landmarks', 'Mountains Points of Interest & Landmarks Nature & Wildlife Areas', 'Osh', 'Osh', 'Osh', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(382, '15036895', NULL, 'Russian Orthodox Church', 'Points of Interest & LandmarksReligious Sites', 'Points of Interest & Landmarks Religious Sites Churches & Cathedrals', 'Osh', 'Osh', 'Osh', 'Kumanjan Datka St., Osh 714000 Kyrgyzstan', '', '', '', '', '', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(383, '10832719', NULL, 'Mausoleum of Asaf ibn Burkhiy', 'Points of Interest & LandmarksReligious Sites', 'Points of Interest & Landmarks Religious Sites', 'Osh', 'Osh', 'Osh', '', '', '', '', '40.53989', '72.781655', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(384, '15675538', NULL, 'Alay Mountains', 'Mountains', 'Mountains', 'Osh', 'Osh', 'Osh', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(385, '11909476', NULL, 'Osh Regional Museum of Fine Arts of Sadykov', 'Art Museums', 'Art Museums', 'Osh', 'Osh', 'Osh', 'Alebastrova St., 31, Osh 714000 Kyrgyzstan', 'http://www.facebook.com/oshksm/', '9.96E+11', '', '40.540166', '72.78528', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(386, '15036873', NULL, 'Alymbek Datkanyn Aykeli', 'Points of Interest & LandmarksMonuments & Statues', 'Points of Interest & Landmarks Monuments & Statues', 'Osh', 'Osh', 'Osh', '', '', '', '', '40.540166', '72.78528', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(387, '2711666', NULL, 'Jayma Bazaar Osh', 'Speciality & Gift Shops', 'Speciality & Gift Shops', 'Osh', 'Osh', 'Osh', 'Zainabetdinova, Osh 714000 Kyrgyzstan', '', '', '', '40.540166', '72.78528', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(388, '10209115', NULL, 'Kulunatin National Reserve', 'State ParksNational Parks', 'State Parks National Parks Nature & Wildlife Areas', 'Osh', 'Osh', 'Osh', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(389, '15036833', NULL, 'Dom Babura Mosque', 'Historic SitesPoints of Interest & Landmarks', 'Historic Sites Points of Interest & Landmarks Religious Sites', 'Osh', 'Osh', 'Osh', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(390, '10832714', NULL, 'Mosque of Ravat Abdullakhan', 'Points of Interest & LandmarksReligious Sites', 'Points of Interest & Landmarks Religious Sites Churches & Cathedrals', 'Osh', 'Osh', 'Osh', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(391, '10205995', NULL, 'Abshir-Say Valley', 'Nature & Wildlife AreasValleys', 'Nature & Wildlife Areas Valleys', 'Osh', 'Osh', 'Osh', '', 'http://www.visitalay.kg/#_=_', '', '', '', '', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(392, '10205997', NULL, 'Kozhokelen Valley', 'MountainsNature & Wildlife Areas', 'Mountains Nature & Wildlife Areas Valleys', 'Osh', 'Osh', 'Osh', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(393, '15036931', NULL, 'Monument to Toktogul Satylganov', 'Points of Interest & LandmarksMonuments & Statues', 'Points of Interest & Landmarks Monuments & Statues', 'Osh', 'Osh', 'Osh', 'Lenina Ave., Osh 714000 Kyrgyzstan', '', '', '', '40.518914', '72.795365', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(394, '15036941', NULL, 'Enenin Koz Zhashy Park', 'Parks', 'Parks', 'Osh', 'Osh', 'Osh', 'Lenina Ave., Osh 714000 Kyrgyzstan', '', '', '', '40.518914', '72.795365', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(395, '13959294', NULL, 'Nomad Store', 'Speciality & Gift Shops', 'Speciality & Gift Shops', 'Osh', 'Osh', 'Osh', 'Bayalinova St., 1 Osh Nuru Hotel, Osh 714000 Kyrgyzstan', 'http://www.facebook.com/oshnomadstore/', '9.97E+11', 'nomadstore.osh@gmail.com', '40.535271', '72.78528', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(396, '14073257', NULL, 'Harley Club', 'Bars & ClubsKaraoke Bars', 'Bars & Clubs Karaoke Bars Dance Clubs & Discos', 'Osh', 'Osh', 'Osh', 'Shakirova st., 108a, Osh 714000 Kyrgyzstan', 'http://www.dolcevitaosh.tilda.ws/', '9.97E+11', 'dvita.osh@gmail.com', '', '', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(397, '21223119', NULL, 'Quicktransfer - Osh', 'Taxis & Shuttles', 'Taxis & Shuttles', 'Osh', 'Osh', 'Osh', '86-90 Paul Street, Osh EC2A 4NE Kyrgyzstan', 'https://quicktransfer.com/', '1347-980-7145', 'booking@quicktransfer.com', '', '', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(398, '10068410', NULL, 'Lake Tulpar-Kol', 'Bodies of Water', 'Bodies of Water', 'Osh Province Sary Mogul', 'Osh', 'Sary-Mogul', '', '', '9.97E+11', '', '', '', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(399, '8514323', NULL, 'Uzgen Archaeological-Architectural Museum Complex', 'Historic SitesArchitectural Buildings', 'Historic Sites Architectural Buildings', 'Osh Province Uzgen', 'Osh', 'Uzgen', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(400, '10091498', NULL, 'Kirov Reservoir', 'Bodies of WaterNature & Wildlife Areas', 'Bodies of Water Nature & Wildlife Areas', 'Talas Province Manas', 'Talas', 'Manas', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(401, '10205982', NULL, 'Gumbez of Manas', 'Points of Interest & Landmarks', 'Points of Interest & Landmarks', 'Talas Province Talas', 'Talas', 'Talas', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(402, '10091481', NULL, 'Besh-Tash Lake', 'Bodies of WaterNature & Wildlife Areas', 'Bodies of Water Nature & Wildlife Areas', 'Talas Province Talas', 'Talas', 'Talas', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(403, '10084867', NULL, 'Manas Peak', 'MountainsNational Parks', 'Mountains National Parks Geologic Formations Valleys', 'Talas Province Talas', 'Talas', 'Talas', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(404, '10209161', NULL, 'Aisha Bibi - Chongkapka Border', 'MountainsPoints of Interest & Landmarks', 'Mountains Points of Interest & Landmarks Nature & Wildlife Areas', 'Talas Province Talas', 'Talas', 'Talas', '', '', '', '', '', '', '1', 28, '2023-07-03 01:23:45', '2023-07-03 01:23:45'),
(408, '15639909', NULL, 'Karavshin Valley', 'Valleys', 'Valleys', 'Batken ', 'Batken', 'Batken', '', '', '', '', '', '', '1', 14, '2023-07-03 06:14:35', '2023-07-03 06:14:35'),
(409, '24990462', NULL, 'Batken Central Mosque', 'Religious Sites', 'Religious Sites', 'Batken ', 'Batken', 'Batken', 'Batken, Batken 715100 Kyrgyzstan', '', '', '', '', '', '1', 14, '2023-07-03 06:14:35', '2023-07-03 06:14:35'),
(410, '24990464', NULL, 'Mechet', 'Religious Sites', 'Religious Sites', 'Batken ', 'Batken', 'Batken', 'Batken, Batken 715100 Kyrgyzstan', '', '', '', '', '', '1', 14, '2023-07-03 06:15:07', '2023-07-03 06:15:07'),
(411, '735790', NULL, 'Ala-Archa Gorge', 'National ParksGeologic Formations', 'National Parks Geologic Formations', 'Chui', 'Chui', 'Bishkek', '', 'http://ala-archa.kg/', '9.97E+11', 'info@ala-archa.kg', '', '', '1', 14, '2023-07-03 06:15:07', '2023-07-03 06:15:07'),
(412, '611200', NULL, 'Osh Bazaar', 'Flea & Street Markets', 'Flea & Street Markets', 'Chui', 'Chui', 'Bishkek', '', 'http://www.facebook.com/Kyrgyzguides/', '9.97E+11', '', '42.870679', '74.59064', '1', 14, '2023-07-03 06:15:07', '2023-07-03 06:15:07'),
(413, '3665606', NULL, 'Panfilov Park', 'Parks', 'Parks', 'Chui', 'Chui', 'Bishkek', '368 Frunze Street, Bishkek 720000 Kyrgyzstan', 'https://www.facebook.com/park.panfilova/', '9.96E+11', '', '42.867355', '74.592627', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(414, '459876', NULL, 'State History Museum', 'History Museums', 'History Museums', 'Chui', 'Chui', 'Bishkek', 'Ala-Too Square, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '42.867355', '74.592627', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(415, '7396665', NULL, 'Ala-Too Square', 'Historic Sites', 'Historic Sites', 'Chui', 'Chui', 'Bishkek', '', '', '', '', '42.867355', '74.592627', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(416, '459878', NULL, 'Mikhail Frunze Museum', 'Military Museums', 'Military Museums', 'Chui', 'Chui', 'Bishkek', '364, Frunze Str., Bishkek 720000 Kyrgyzstan', 'http://domfrunze.kg/', '227700', '', '42.867355', '74.592627', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(417, '6726558', NULL, 'Spa Center Afrodita and Apollo', 'Spas', 'Spas', 'Chui', 'Chui', 'Bishkek', 'Zhukeyeva-Pudovkina St., 41/Skryabina, Bishkek 720000 Kyrgyzstan', 'http://baytur.kg/', '9.97E+11', 'pr@baytur.kg', '42.850913', '74.59484', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(418, '8761397', NULL, 'Monument to Manas the Great', 'Historic SitesPoints of Interest & Landmarks', 'Historic Sites Points of Interest & Landmarks Monuments & Statues', 'Chui', 'Chui', 'Bishkek', '', 'http://daniyarov.kg/', '9.97E+11', 'assele@gmail.com', '42.867355', '74.592627', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(419, '3710581', NULL, 'Dordoi Bazaar', 'Flea & Street Markets', 'Flea & Street Markets', 'Chui', 'Chui', 'Bishkek', '', 'http://www.dordoi.net/', '9.99E+11', '', '42.906078', '74.60261', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(420, '459877', NULL, 'Museum of Fine Arts', 'Art Museums', 'Art Museums', 'Chui', 'Chui', 'Bishkek', '196, Sovietskaya Str., Bishkek 720000 Kyrgyzstan', 'http://knmii.kg/', '266867', '', '42.867355', '74.592627', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(421, '7790854', NULL, 'Monument to Those Who Died For Freedom', 'Monuments & Statues', 'Monuments & Statues', 'Chui', 'Chui', 'Bishkek', 'Crossing of Chui Avenue and Panfilova St., Bishkek 720000 Kyrgyzstan', '', '', '', '42.867355', '74.592627', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(422, '10021245', NULL, 'Issyk-Ata Gorge', 'Hiking Trails', 'Hiking Trails', 'Chui', 'Chui', 'Bishkek', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(423, '10206030', NULL, 'Konorchek Canyons', 'MountainsNature & Wildlife Areas', 'Mountains Nature & Wildlife Areas Canyons', 'Chui', 'Chui', 'Bishkek', '', 'http://www.facebook.com/Pegasadventure/', '9.96E+11', '', '', '', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(424, '8411429', NULL, 'Bishkek Park', 'Shopping Malls', 'Shopping Malls', 'Chui', 'Chui', 'Bishkek', 'Kiyevskaya St., 148, Bishkek 720000 Kyrgyzstan', 'http://bishkekpark.kg/', '9.96E+11', '', '42.867355', '74.592627', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(425, '10758340', NULL, 'Victory Square', 'Points of Interest & Landmarks', 'Points of Interest & Landmarks', 'Chui', 'Chui', 'Bishkek', '', '', '', '', '42.867355', '74.594163', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(426, '10021159', NULL, 'Alamedin Gorge', 'MountainsNature & Wildlife Areas', 'Mountains Nature & Wildlife Areas Geologic Formations', 'Chui', 'Chui', 'Bishkek', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(427, '8090038', NULL, 'Flagstaff With Country Flag', 'Points of Interest & LandmarksLookouts', 'Points of Interest & Landmarks Lookouts', 'Chui', 'Chui', 'Bishkek', 'Ala-Too Square, Bishkek, Kyrgyzstan Boz-Boltok Mountain, Bishkek 720000 Kyrgyzstan', '', '', '', '42.867355', '74.592627', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(428, '7790830', NULL, 'Monument to Baatyr Kaba Uulu Kozhomkul', 'Monuments & Statues', 'Monuments & Statues', 'Chui', 'Chui', 'Bishkek', 'Togolok Moldo St., Bishkek 720000 Kyrgyzstan', 'http://www.tuk.kg/index.php', '9.96E+11', '', '42.867355', '74.592627', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(429, '8761392', NULL, 'Monument to Chingiz Aitmatov', 'Points of Interest & LandmarksMonuments & Statues', 'Points of Interest & Landmarks Monuments & Statues', 'Chui', 'Chui', 'Bishkek', '', '', '', '', '42.867355', '74.592627', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(430, '8323655', NULL, 'Ski Complex Chunkurchak', 'Ski & Snowboard Areas', 'Ski & Snowboard Areas', 'Chui', 'Chui', 'Bishkek', 'Tract Chunkurchak, Bishkek 720000 Kyrgyzstan', 'http://chunkurchak.kg/', '9.97E+11', 'info@chunkurchak.kg', '', '', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(431, '10021148', NULL, 'Chunkurchak Gorge', 'Hiking Trails', 'Hiking Trails', 'Chui', 'Chui', 'Bishkek', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(432, '8059938', NULL, 'Holy Resurrection Cathedral', 'Churches & Cathedrals', 'Churches & Cathedrals', 'Chui', 'Chui', 'Bishkek', 'Zhibek-Zholu Avenue, 497, Bishkek 720000 Kyrgyzstan', 'http://www.eparchia.kg/blagochiniya/1', '9.96E+11', '', '', '', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(433, '9798292', NULL, 'Bishkek-City', 'Shopping Malls', 'Shopping Malls', 'Bish+E27:F50kek', 'Bishkek', 'Bishkek', 'Suyumbayeva, 142/2, Bishkek 720000 Kyrgyzstan', 'http://nomadsland.ch/', '9.97E+11', '', '42.870679', '74.598728', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(434, '5999967', NULL, 'Central Mosque', 'Points of Interest & Landmarks', 'Points of Interest & Landmarks', 'Chui', 'Chui', 'Bishkek', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(435, '4942172', NULL, 'Erkindik Statue', 'Points of Interest & LandmarksMonuments & Statues', 'Points of Interest & Landmarks Monuments & Statues', 'Chui', 'Chui', 'Bishkek', 'Ala-Too Square, Bishkek 720000 Kyrgyzstan', '', '', '', '42.870679', '74.592627', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(436, '6478895', NULL, 'Kashka-Suu Ski Resort', 'Ski & Snowboard Areas', 'Ski & Snowboard Areas', 'Chui', 'Chui', 'Bishkek', '', 'http://www.kashka-suu.kg/', '9.97E+11', '', '', '', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(437, '13428134', NULL, 'Ski resort Too-Ashuu', 'Ski & Snowboard Areas', 'Ski & Snowboard Areas', 'Chui', 'Chui', 'Bishkek', 'Zhukeeva-Pudovkina St., 41, Bishkek 720005 Kyrgyzstan', 'http://www.baytur.kg/', '9.97E+11', 'booking@baytur.kg', '', '', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(438, '12529324', NULL, 'Oak Park', 'Parks', 'Parks', 'Chui', 'Chui', 'Bishkek', 'Pushkin St., Bishkek 720000 Kyrgyzstan', '', '', '', '42.870679', '74.592627', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(439, '10324965', NULL, 'Boom Gorge', 'MountainsValleys', 'Mountains Valleys', 'Chui', 'Chui', 'Bishkek', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(440, '9560733', NULL, 'Tsum Center', 'Shopping Malls', 'Shopping Malls', 'Chui', 'Chui', 'Bishkek', '155 Chuy Ave, Bishkek 720000 Kyrgyzstan', 'http://tsum.kg/', '9.97E+11', 'tsum2@tsum.kg', '42.870679', '74.592627', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(441, '11797255', NULL, 'Sport Complex T-CLUB', 'Sports Complexes', 'Sports Complexes', 'Chui', 'chui', 'Bishkek', 'Toktogula St., 75, Bishkek 720000 Kyrgyzstan', 'http://t-club.business.site/', '9.97E+11', 'tclub.kg@gmail.com', '42.870679', '74.592627', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(442, '13094364', NULL, 'Asia Mall', 'Shopping Malls', 'Shopping Malls', 'Chui', 'chui', 'Bishkek', '3 Manas Ave, Bishkek 720000 Kyrgyzstan', 'http://www.asiamall.kg/', '', '', '42.866735', '74.592627', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(443, '6474885', NULL, 'Tower with Chimes', 'Points of Interest & LandmarksObservation Decks & Towers', 'Points of Interest & Landmarks Observation Decks & Towers', 'Chui', 'chui', 'Bishkek', 'Chui ave and Abdrakhmanova st building KyrgyzTelecom, Bishkek 720000 Kyrgyzstan', 'http://www.kt.kg/news/?ELEMENT_ID=1663', '', '', '42.870679', '74.592487', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(444, '459882', NULL, 'Museum of Graphic Arts /Tinibek Sadykov', 'Art Museums', 'Art Museums', 'Chui', 'Chui', 'Bishkek', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(445, '459880', NULL, 'Zoological Museum', 'Speciality Museums', 'Speciality Museums', 'Chui', 'Chui', 'Bishkek', '78, Pushkin Str., Bishkek 720000 Kyrgyzstan', 'http://www.zm.kg/', '9.96E+11', '', '', '', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(446, '21008109', NULL, 'Banya Baytur', 'Spas', 'Spas', 'Chui', 'chui', 'Bishkek', 'Zhukeyeva Pudovkina St., 41, Bishkek 720000 Kyrgyzstan', 'http://www.baytur.kg/', '9.96E+11', 'info@baytur.kg', '42.861373', '74.59484', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(447, '459860', NULL, 'Manas Museum', 'Speciality Museums', 'Speciality Museums', 'Chui', 'Chui', 'Bishkek', 'Talas, Bishkek 720000 Kyrgyzstan', '', '', '', '', '', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(448, '10112269', NULL, 'Too-Ashu Pass', 'Scenic Drives', 'Scenic Drives', 'chui', 'Chui', 'Bishkek', 'Bishkek-Osh Highway, Bishkek 720000 Kyrgyzstan', '', '', '', '', '', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(449, '10112272', NULL, 'Ak-Sai Glacier', 'MountainsNature & Wildlife Areas', 'Mountains Nature & Wildlife Areas Valleys', 'Chui', 'chui', 'Bishkek', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(450, '13202367', NULL, 'Aichurek Mall Fountains', 'Fountains', 'Fountains', 'Chui', 'Chui', 'Bishkek', 'Chui Ave., 155, Bishkek 720000 Kyrgyzstan', '', '', '', '42.870679', '74.592627', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(451, '15056456', NULL, 'Kurmanzhan Datka Statue', 'Points of Interest & LandmarksMonuments & Statues', 'Points of Interest & Landmarks Monuments & Statues', 'Chui', 'chui', 'Bishkek', 'Pushkin St. Dubovy Park, Bishkek 720000 Kyrgyzstan', '', '', '', '', '', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(452, '13417622', NULL, 'Vladimir Lenin Statue', 'Monuments & Statues', 'Monuments & Statues', 'Chui', 'Chui', 'Bishkek', 'Abdumomunov Street Behind the State History Museum, Bishkek 720000 Kyrgyzstan', '', '', '', '42.870679', '74.592627', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(453, '459879', NULL, 'Aaly Tokombaev House Museum', 'Speciality Museums', 'Speciality Museums', 'Chui', 'Chui', 'Bishkek', '109, Chuykov Str., Bishkek 720000 Kyrgyzstan', '', '664756', '', '', '', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(454, '9798267', NULL, 'Ataturk Park', 'National Parks', 'National Parks', 'Chui', 'Chui', 'Bishkek', 'Shakirova, 31A, Bishkek 720000 Kyrgyzstan', '', '', '', '42.850913', '74.59484', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(455, '10021099', NULL, 'Sokuluk Gorge', 'MountainsNature & Wildlife Areas', 'Mountains Nature & Wildlife Areas Geologic Formations', 'Chui', 'Chui', 'Bishkek', '', 'http://www.tuk.kg/index.php', '9.96E+11', '', '', '', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(456, '459881', NULL, 'Geological Museum and Mineralogical Museum', 'Science Museums', 'Science Museums', 'Chui', 'Chui', 'Bishkek', '1, Erkindik Prospect, Bishkek 720000 Kyrgyzstan', '', '', '', '', '', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(457, '459884', NULL, 'Toktogul Literary Museum', 'Speciality Museums', 'Speciality Museums', 'Chui', 'chui', 'Bishkek', '109, Kievskaya Str., Bishkek 720000 Kyrgyzstan', '', '227693', '', '', '', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(458, '10084861', NULL, 'Korona Peak', 'MountainsNational Parks', 'Mountains National Parks Forests Geologic Formations Valleys', 'chui', 'Chui', 'Bishkek', '', 'http://www.tuk.kg/index.php', '9.96E+11', '', '', '', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(459, '14018184', NULL, 'Asanbay Center', 'Civic Centres', 'Civic Centres', 'Chui', 'chui', 'Bishkek', 'Tokombayeva St., 21?, Bishkek 720000 Kyrgyzstan', 'https://www.facebook.com/AsanbayCenter/', '9.97E+11', 'asanbayart@gmail.com', '42.842936', '74.61703', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(460, '9798261', NULL, 'Church of the Holy Prince Vladimir', 'Religious SitesChurches & Cathedrals', 'Religious Sites Churches & Cathedrals', 'chui', 'Chui', 'Bishkek', 'Tokombayeva, 52A/3, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '42.842936', '74.60581', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(461, '10021126', NULL, 'Bir-Bulak Gorge', 'MountainsHiking Trails', 'Mountains Hiking Trails', 'chui', 'Chui', 'Bishkek', '20 km from Bishkek, Bishkek 720000 Kyrgyzstan', 'http://www.tuk.kg/index.php', '9.96E+11', '', '', '', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(462, '9798291', NULL, 'Exhibition Hall of Union of Artists', 'Art Galleries', 'Art Galleries', 'Chui', 'Chui', 'Bishkek', 'Pushkina, 78, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '42.870679', '74.592627', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(463, '15056855', NULL, 'Borborduk Mosque', 'Points of Interest & LandmarksReligious Sites', 'Points of Interest & Landmarks Religious Sites', 'Chui', 'Chui', 'Bishkek', 'Semashko St., Bishkek 720000 Kyrgyzstan', '', '', '', '', '', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(464, '6781770', NULL, 'State National Academic Drama Theater', 'Theaters', 'Theaters', 'Chui', 'Chui', 'Bishkek', '273, Panfilov st., Bishkek 720000 Kyrgyzstan', 'http://www.operaballet.lg.kg/', '66-58-02', '', '', '', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(465, '7166257', NULL, 'Mystic Spa', 'Spas', 'Spas', 'Chui', 'Chui', 'Bishkek', 'Pr. Chui Ave, 219 Crossing Toglokmoldo, Bishkek 720000 Kyrgyzstan', 'http://mysticspa.kg/', '9.97E+11', 'mystic.spasalon@gmail.com', '42.870679', '74.592627', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(466, '459883', NULL, 'Archaeological Museum', 'History Museums', 'History Museums', 'Chui', 'Chui', 'Bishkek', '265-a, Chuisky Prospect, Bishkek 720000 Kyrgyzstan', '', '', '', '', '', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(467, '10758360', NULL, 'Spartak Stadium', 'Arenas & Stadiums', 'Arenas & Stadiums', 'Chui', 'Chui', 'Bishkek', 'Togolok Moldo St., 17, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '', '', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(468, '', NULL, 'E. Gareyev Botanical Garden', 'Gardens', 'Gardens', 'Chui', 'Chui', 'Bishkek', 'Maksima Gorkogo, 212, Bishkek 720000 Kyrgyzstan', 'http://www.facebook.com/bishkekbotsad/', '9.96E+11', 'gareev100@mail.ru', '42.868602', '74.592627', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(469, '9798299', NULL, 'Kyrgyz National Museum of Fine Arts', 'Art Museums', 'Art Museums', 'Chui', 'Chui', 'Bishkek', 'Abdrakhmanova, 196, Bishkek 720000 Kyrgyzstan', 'https://www.facebook.com/knmiiNationalmuseum/', '9.96E+11', '', '42.870679', '74.592627', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(470, '12272464', NULL, 'Smile', 'Sports Complexes', 'Sports Complexes', 'Chui', 'Chui', 'Bishkek', 'Maksim Gorkiy St., 1v/1, Bishkek 720000 Kyrgyzstan', 'http://www.facebook.com/sk.smile.kg/', '9.97E+11', 'sk.smile.kg@gmail.com', '', '', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(471, '8411431', NULL, 'Dordoi-Plaza', 'Shopping Malls', 'Shopping Malls', 'Chui', 'Chui', 'Bishkek', 'Ibraimova St., 115, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '', '', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(472, '9798301', NULL, 'Madina', 'Shopping Malls', 'Shopping Malls', 'Chui', 'Chui', 'Bishkek', 'Chui Ave., 4B, Bishkek 720000 Kyrgyzstan', 'http://www.madina.kg/', '9.96E+11', '', '42.870679', '74.614575', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(473, '8818732', NULL, 'Mall Tashrabat', 'Shopping Malls', 'Shopping Malls', 'Chui', 'Chui', 'Bishkek', 'Gorkogo St., 1G, Bishkek 720000 Kyrgyzstan', 'https://www.facebook.com/tashrabat.kg/', '9.96E+11', 'tashrabattrk@gmail.com', '42.870679', '74.60704', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(474, '9798300', NULL, 'Park Im. I. Panfilova', 'National Parks', 'National Parks', 'Chui', 'Chui', 'Bishkek', 'Frunze, 370, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '42.870679', '74.60536', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(475, '9798268', NULL, 'Vefa', 'Shopping Malls', 'Shopping Malls', 'Chui', 'Chui', 'Bishkek', 'Gorkogo St., 27/1 Lane of the Baitik Baatyra St., Bishkek 720000 Kyrgyzstan', 'http://www.vefacenter.kg/', '9.97E+11', 'vefacenter@mail.ru', '42.870679', '74.60536', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(476, '9798293', NULL, 'Gym-N-Roll', 'Sports Complexes', 'Sports Complexes', 'Chui', 'Chui', 'Bishkek', 'Kurmanzhan Datka, 59, Bishkek 720000 Kyrgyzstan', 'http://gymnroll.kg/', '9.96E+11', '', '42.870679', '74.6232', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(477, '9798273', NULL, 'Kalipso', 'Water Parks', 'Water Parks', 'Chui', 'Chui', 'Bishkek', 'Mira Ave., 299, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '42.84398', '74.592718', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(478, '10077712', NULL, 'Flea Market', 'Flea & Street Markets', 'Flea & Street Markets', 'Chui', 'Chui', 'Bishkek', 'Yunusaliev St. 7 - Microdistrict, Bishkek 720000 Kyrgyzstan', 'http://www.tuk.kg/index.php', '9.96E+11', '', '', '', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(479, '8124671', NULL, 'Tunguch Mosque', 'Religious SitesChurches & Cathedrals', 'Religious Sites Churches & Cathedrals', 'Chui', 'Chui', 'Bishkek', 'Gorkogo St., Bishkek 720000 Kyrgyzstan', '', '', '', '', '', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(480, '9798277', NULL, 'Grand Stone', 'Shopping Malls', 'Shopping Malls', 'Chui', 'Chui', 'Bishkek', 'Matrosova, 6, Bishkek 720000 Kyrgyzstan', 'http://grandstone.kg/', '9.96E+11', '', '42.870679', '74.60704', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(481, '9798297', NULL, 'Galeria M', 'Art Galleries', 'Art Galleries', 'Chui', 'Chui', 'Bishkek', 'Manasa Ave., 40, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '42.870679', '74.592627', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(482, '9798288', NULL, 'Detskiy Mir', 'Shopping Malls', 'Shopping Malls', 'Chui', 'Chui', 'Bishkek', 'Chui Ave., 147/4, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', 'info@detmir.kg', '42.870679', '74.594163', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(483, '9798543', NULL, 'Central City Mosque', 'Religious Sites', 'Religious Sites', 'Chui', 'Chui', 'Bishkek', 'Gogolya, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '', '', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(484, '9798308', NULL, 'Tabylga', 'Shopping Malls', 'Shopping Malls', 'Chui', 'Chui', 'Bishkek', 'Zhibek-Zholu Ave., 150, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '42.876129', '74.614575', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(485, '15057029', NULL, 'Makhmud Kashkari Mosque', 'Points of Interest & LandmarksReligious Sites', 'Points of Interest & Landmarks Religious Sites', 'Chui', 'Chui', 'Bishkek', 'Osmonkul St., Bishkek 720000 Kyrgyzstan', '', '', '', '', '', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(486, '9798257', NULL, 'Flamingo', 'National Parks', 'National Parks', 'Chui', 'Chui', 'Bishkek', 'Mira Ave., 303, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '42.84111', '74.579152', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(487, '9798258', NULL, 'Zhashtyk', 'Arenas & Stadiums', 'Arenas & Stadiums', 'Chui', 'Chui', 'Bishkek', 'Maldybayeva, 1, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '42.84398', '74.59484', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(488, '10021223', NULL, 'Takyr-Tor Gorge', 'Geologic Formations', 'Geologic Formations', 'Chui', 'Chui', 'Bishkek', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(489, '9798282', NULL, 'Chelsea', 'Arenas & Stadiums', 'Arenas & Stadiums', 'Chui', 'Chui', 'Bishkek', 'Timiryazeva, 245A, Bishkek 720000 Kyrgyzstan', '', '9.97E+11', '', '42.870679', '74.592627', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(490, '10206017', NULL, 'Shamsi Gorge', 'MountainsCanyons', 'Mountains Canyons Geologic Formations', 'Chui', 'Chui', 'Bishkek', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(491, '9798279', NULL, 'Katok City', 'Sports Complexes', 'Sports Complexes', 'Chui', 'chui', 'Bishkek', 'Vinogradnaya, 1/3, Bishkek 720000 Kyrgyzstan', 'http://katok.kg/', '9.96E+11', '', '42.859714', '74.629325', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(492, '3665610', NULL, 'Fuchik Park', 'Parks', 'Parks', 'Chui', 'chui', 'Bishkek', '1 Fuchik Street, Bishkek 720000 Kyrgyzstan', '', '', '', '42.870679', '74.59064', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(493, '9798278', NULL, 'Lokomotiv', 'Sports Complexes', 'Sports Complexes', 'Chui', 'chui', 'Bishkek', 'Osmonova, 1, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '42.864556', '74.55846', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(494, '9798306', NULL, 'Home Sports Arena', 'Arenas & Stadiums', 'Arenas & Stadiums', 'Chui', 'Chui', 'Bishkek', 'Togoloka Moldo, 17, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '42.870679', '74.592627', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(495, '9798307', NULL, 'Taatan', 'Shopping Malls', 'Shopping Malls', 'Chui', 'Chui', 'Bishkek', 'Lermontova, 35, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '42.873704', '74.63257', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(496, '9798262', NULL, 'Zateryanny Mir', 'Zoos', 'Zoos', 'Chui', 'chui', 'Bishkek', 'Tokombayeva, 21/4, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '42.842936', '74.61703', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(497, '9798311', NULL, 'Bakhodyrkhon-Toro Uulu Musakhon-Toro Mosque', 'Religious Sites', 'Religious Sites', 'Chui', 'Chui', 'Bishkek', 'Kurenkeyeva, 137, Bishkek 720000 Kyrgyzstan', '', '', '', '42.870679', '74.592627', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(498, '15056787', NULL, 'Manas Statue', 'Points of Interest & LandmarksMonuments & Statues', 'Points of Interest & Landmarks Monuments & Statues', 'Chui', 'Chui', 'Bishkek', 'Chuy Ave., Bishkek 720000 Kyrgyzstan', '', '', '', '', '', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(499, '15057330', NULL, 'Victory Park', 'Parks', 'Parks', 'Chui', 'chui', 'Bishkek', 'Baitik Baatyr St., Bishkek 720000 Kyrgyzstan', '', '', '', '42.844247', '74.59484', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(500, '9798264', NULL, 'Asanbai', 'Arenas & Stadiums', 'Arenas & Stadiums', 'Chui', 'Chui', 'Bishkek', 'Asanbai Microrayon, 43/1, Bishkek 720000 Kyrgyzstan', '', '9.97E+11', '', '42.835961', '74.63145', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(501, '9820700', NULL, '\"Taberik\" Children?s Musical Theatre', 'Theaters', 'Theaters', 'Chui', 'chui', 'Bishkek', 'Shakirova St., 17, Bishkek 720000 Kyrgyzstan', 'http://taberik.org/', '9.96E+11', '', '42.844247', '74.59484', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(502, '9798287', NULL, 'Kyrgyz State Museum of Literature and Art', 'Art Galleries', 'Art Galleries', 'Chui', 'Chui', 'Bishkek', 'Toktogula, 109, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '42.870679', '74.592627', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(503, '9798284', NULL, 'Ice Park', 'Sports Complexes', 'Sports Complexes', 'Chui', 'Chui', 'Bishkek', 'Kiyevskaya, 148, Bishkek 720000 Kyrgyzstan', '', '', '', '42.870679', '74.592627', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(504, '9798283', NULL, 'Akun', 'Arenas & Stadiums', 'Arenas & Stadiums', 'Chui', 'Chui', 'Bishkek', 'Den Syaopina Ave., 308, Bishkek 720000 Kyrgyzstan', '', '9.97E+11', '', '42.873399', '74.535655', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(505, '9798274', NULL, 'El Clasico', 'Arenas & Stadiums', 'Arenas & Stadiums', 'Chui', 'Chui', 'Bishkek', 'Geologicheskiy Lane, 3/1, Bishkek 720000 Kyrgyzstan', '', '9.97E+11', '', '42.870679', '74.60536', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(506, '9798322', NULL, 'Bereket Grand', 'Shopping Malls', 'Shopping Malls', 'Chui', 'Chui', 'Bishkek', 'Chui Ave., 204, Bishkek 720000 Kyrgyzstan', 'http://bereket.kg/', '', '', '42.870679', '74.59064', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(507, '9798265', NULL, 'Dk', 'Shopping Malls', 'Shopping Malls', 'Chui', 'chui', 'Bishkek', 'Zhetikashkayevoi, 29, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', 'delemplus@mail.ru', '42.835961', '74.626103', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(508, '10024282', NULL, 'The Rescue Mountain Tashtar-Ata', 'MountainsNature & Wildlife Areas', 'Mountains Nature & Wildlife Areas Geologic Formations', 'Chui', 'Chui', 'Bishkek', '', 'http://www.tuk.kg/index.php', '9.96E+11', '', '', '', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(509, '25063001', NULL, 'Teplo Bar', 'Bars & Clubs', 'Bars & Clubs', 'Chui', 'chui', 'Bishkek', 'Toktogula 75/1, Bishkek 720000 Kyrgyzstan', 'https://www.facebook.com/teplobarkg/', '9.97E+11', 'teplobarkg@gmail.com', '42.870679', '74.592627', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(510, '9798310', NULL, 'Caravan', 'Shopping Malls', 'Shopping Malls', 'Chui', 'Chui', 'Bishkek', 'Kiyevskaya, 128, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '42.870679', '74.592627', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(511, '15056734', NULL, 'Stella of Friendship of Nation', 'Points of Interest & LandmarksMonuments & Statues', 'Points of Interest & Landmarks Monuments & Statues', 'Chui', 'Chui', 'Bishkek', 'Panfilov St., Bishkek 720000 Kyrgyzstan', '', '', '', '', '', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(512, '9798256', NULL, 'Detskiy Dosug', 'National Parks', 'National Parks', 'Chui', 'Chui', 'Bishkek', 'Tokombayeva, 21/11, Bishkek 720000 Kyrgyzstan', '', '', 'tikoow@mail.ru', '42.842936', '74.61703', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(513, '13165355', NULL, 'Ak Emir Bazaar', 'Farmers Markets', 'Farmers Markets', 'Chui', 'Chui', 'Bishkek', 'Shopokov Street, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '', '', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(514, '9798294', NULL, 'Moto', 'Shopping Malls', 'Shopping Malls', 'Chui', 'Chui', 'Bishkek', 'Abdrakhmanova, 170V, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '42.870679', '74.592627', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(515, '15056435', NULL, 'Zero Kilometer', 'Points of Interest & Landmarks', 'Points of Interest & Landmarks', 'Chui', 'Chui', 'Bishkek', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(516, '9798286', NULL, 'Izumrud', 'Shopping Malls', 'Shopping Malls', 'Chui', 'Chui', 'Bishkek', 'Chui Ave., 34/3, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '42.870679', '74.614575', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(517, '15056949', NULL, 'Alley of Heroes of World War II', 'Points of Interest & Landmarks', 'Points of Interest & Landmarks', 'Chui', 'Chui', 'Bishkek', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(518, '9798312', NULL, 'Yiman Mosque', 'Religious Sites', 'Religious Sites', 'Chui', 'Chui', 'Bishkek', 'Makhatmy Gandi Blvd, 175A, Bishkek 720000 Kyrgyzstan', '', '', '', '42.878544', '74.592627', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(519, '9798305', NULL, 'Kazakstan', 'Arenas & Stadiums', 'Arenas & Stadiums', 'Chui', 'Chui', 'Bishkek', 'Zhibek-Zholu Ave., 601, Bishkek 720000 Kyrgyzstan', '', '9.97E+11', '', '42.879232', '74.59064', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(520, '15057809', NULL, 'The Mahatma Gandhi Memorial Complex', 'Points of Interest & LandmarksMonuments & Statues', 'Points of Interest & Landmarks Monuments & Statues', 'Chui', 'Chui', 'Bishkek', 'Mahatma Gandhi St., Bishkek 720000 Kyrgyzstan', '', '', '', '', '', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(521, '17651089', NULL, 'GUM Chynar Mall', 'Shopping Malls', 'Shopping Malls', 'Chui', 'Chui', 'Bishkek', 'Chui ave., 92, Bishkek 720000 Kyrgyzstan', 'http://tashbolot.kg/gum/', '9.97E+11', 'gum@tashbolot.kg', '', '', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(522, '9798303', NULL, 'Dordoimarket', 'Shopping Malls', 'Shopping Malls', 'Chui', 'Chui', 'Bishkek', 'Yuliusa Fuchika, 3, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '42.876129', '74.59159', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(523, '9798285', NULL, 'Vesna', 'Shopping Malls', 'Shopping Malls', 'Chui', 'Chui', 'Bishkek', 'Kalyka Akiyeva, 66, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '42.870679', '74.592627', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(524, '9798533', NULL, 'Bai Terek', 'Arenas & Stadiums', 'Arenas & Stadiums', 'Chui', 'Chui', 'Bishkek', '5-I Microrayon, Bishkek 720000 Kyrgyzstan', 'http://www.tuk.kg/index.php', '9.97E+11', '', '', '', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(525, '15056512', NULL, 'Revolution Militants Square', 'Points of Interest & Landmarks', 'Points of Interest & Landmarks', 'Chui', 'Chui', 'Bishkek', '100 Chuy Ave., Bishkek 720000 Kyrgyzstan', '', '', '', '', '', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(526, '9798296', NULL, 'Red Centre', 'Shopping Malls', 'Shopping Malls', 'Chui', 'Chui', 'Bishkek', 'Shopokova, 121/1, Bishkek 720000 Kyrgyzstan', 'http://www.red.kg/', '9.96E+11', '', '42.870679', '74.594163', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(527, '9798263', NULL, 'Korzinka', 'Shopping Malls', 'Shopping Malls', 'Chui', 'Chui', 'Bishkek', 'Tynaliyeva, 3/2, Bishkek 720000 Kyrgyzstan', '', '', '', '42.84398', '74.59284', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(528, '15056697', NULL, 'Monument to the Soldiers of Batken', 'Points of Interest & LandmarksMonuments & Statues', 'Points of Interest & Landmarks Monuments & Statues', 'Chui', 'Chui', 'Bishkek', 'Yakov Logvinenko St., Bishkek 720000 Kyrgyzstan', '', '', '', '42.865697', '74.59903', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(529, '15057984', NULL, 'Monument to MiG-', 'Points of Interest & LandmarksMonuments & Statues', 'Points of Interest & Landmarks Monuments & Statues', 'Chui', 'Chui', 'Bishkek', '114 Kiyevskaya St., Bishkek 720000 Kyrgyzstan', '', '', '', '', '', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(530, '15198311', NULL, 'Togolok Moldo Park', 'Parks', 'Parks', 'Chui', 'Chui', 'Bishkek', 'Koyonkozov St., Bishkek 720000 Kyrgyzstan', '', '', '', '', '', '1', 14, '2023-07-03 06:15:08', '2023-07-03 06:15:08'),
(531, '15056957', NULL, 'Molodaya Gvardiya Monument', 'Points of Interest & LandmarksMonuments & Statues', 'Points of Interest & Landmarks Monuments & Statues', 'Chui', 'Chui', 'Bishkek', 'Jash Gvardiya Blvd., Bishkek 720000 Kyrgyzstan', '', '', '', '', '', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(532, '9798270', NULL, 'Korgonbek Uulu Saiid Moldo Mosque', 'Religious Sites', 'Religious Sites', 'Chui', 'Chui', 'Bishkek', 'Shabdan Baatyra, 21B, Bishkek 720000 Kyrgyzstan', '', '', '', '42.850693', '74.60551', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(533, '15347811', NULL, 'Lake GES-', 'Bodies of Water', 'Bodies of Water', 'Chui', 'Chui', 'Bishkek', 'Cholpon-Atinskaya / Obyezdnaya St., Bishkek 720000 Kyrgyzstan', '', '9.97E+11', '', '', '', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(534, '15057234', NULL, 'Kubanychbek Malikov Monument', 'Points of Interest & LandmarksMonuments & Statues', 'Points of Interest & Landmarks Monuments & Statues', 'Chui', 'Chui', 'Bishkek', 'Erkindik Ave., 7, Bishkek 720000 Kyrgyzstan', '', '', '', '', '', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(535, '15056967', NULL, 'Talgat Begeldinov Monument', 'Points of Interest & LandmarksMonuments & Statues', 'Points of Interest & Landmarks Monuments & Statues', 'Chui', 'Chui', 'Bishkek', 'Intersection of Moscow street / Molodaya Gvardia avenue, Bishkek 720000 Kyrgyzstan', '', '', '', '', '', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(536, '8411418', NULL, 'COSMOPARK', 'Bowling AlleysMovie Theaters', 'Bowling Alleys Movie Theaters Game & Entertainment Centers', 'Chui', 'Chui', 'Bishkek', '', 'http://www.cosmopark.kg/', '9.96E+11', '', '', '', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(537, '13131313', NULL, 'Mini-Zoopark Zhivaya Ekzotika', 'Zoos', 'Zoos', 'Chui', 'Chui', 'Bishkek', 'Chuy Ave., 92, Bishkek 720000 Kyrgyzstan', 'http://exolife.asia/', '9.96E+11', 'exolife.asia@gmail.com', '42.870679', '74.592627', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(538, '15056497', NULL, 'Monument to Suimenkul Chokmorov', 'Points of Interest & LandmarksMonuments & Statues', 'Points of Interest & Landmarks Monuments & Statues', 'Chui', 'Chui', 'Bishkek', 'Intersection of Chui Avenue and Tynystanov Street, Bishkek 720000 Kyrgyzstan', '', '', '', '', '', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(539, '11621137', NULL, 'Shifu Massage', 'Spas', 'Spas', 'Chui', 'Chui', 'Bishkek', 'Moskovskaya St., 154-25, Bishkek 720000 Kyrgyzstan', 'https://www.facebook.com/shifumassage/', '9.97E+11', '', '42.867355', '74.592627', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(540, '9820709', NULL, '\"Uchur\" State Youth Theatre', 'Theaters', 'Theaters', 'Chui', 'Chui', 'Bishkek', 'Toktonaliyeva St., 6G, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '42.847241', '74.592627', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(541, '10403759', NULL, 'Tumar Art Salon', 'Speciality & Gift Shops', 'Speciality & Gift Shops', 'Chui', 'chui', 'Bishkek', 'Isanov St., 80-2, Bishkek 720000 Kyrgyzstan', 'http://www.tumar.com/', '9.96E+11', '', '', '', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(542, '9798541', NULL, 'Taalai', 'Shopping Malls', 'Shopping Malls', 'Chui', 'chui', 'Bishkek', 'Chui Ave, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '', '', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(543, '9798275', NULL, 'Futbolistan', 'Arenas & Stadiums', 'Arenas & Stadiums', 'Chui', 'chui', 'Bishkek', 'Maksima Gorkogo, 136/2, Bishkek 720000 Kyrgyzstan', '', '9.97E+11', '', '42.870679', '74.592627', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(544, '7745327', NULL, 'Maple Leaf Golf & Country Club', 'Golf Courses', 'Golf Courses', 'Chui', 'Chui', 'Bishkek', '', 'http://mapleleaf.vacau.com/', '9.97E+11', '', '42.831251', '74.674912', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(545, '9798313', NULL, 'Ikhlyas Mosque', 'Religious SitesChurches & Cathedrals', 'Religious Sites Churches & Cathedrals', 'Chui', 'Chui', 'Bishkek', 'Samarskiy Lane, 10A, Bishkek 720000 Kyrgyzstan', '', '', '', '42.879232', '74.592627', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(546, '7825751', NULL, 'Kyrgyz National Opera and Ballet Theatre of Abdylas Maldybayev', 'Theatre & Performances', 'Theatre & Performances', 'Chui', 'chui', 'Bishkek', 'Abdrakhmanova St., 167, Bishkek 720000 Kyrgyzstan', 'http://www.operaballet.lg.kg/', '9.96E+11', '', '', '', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(547, '11823472', NULL, 'Territoriya Spa', 'Spas', 'Spas', 'Chui', 'Chui', 'Bishkek', 'Moskovskaya St., 184, Bishkek 720000 Kyrgyzstan', 'http://www.spa.kg/', '9.96E+11', '', '42.871441', '74.687667', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(548, '12128388', NULL, 'Siam Massage', 'Spas', 'Spas', 'Chui', 'Chui', 'Bishkek', 'Toktogula St., 124/1, Bishkek 720000 Kyrgyzstan', 'http://www.siam.kg/', '9.97E+11', 'info@siam.kg', '42.870679', '74.592627', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(549, '9821221', NULL, 'Kyrgyz State Philharmonic Hall', 'Concerts', 'Concerts', 'Chui', 'chui', 'Bishkek', 'Chui Ave., 251, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '42.870679', '74.592627', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(550, '6781767', NULL, 'Raritet BookStore', 'Speciality & Gift Shops', 'Speciality & Gift Shops', 'Chui', 'Chui', 'Bishkek', 'Pushkin 78 Ala Too Square, Bishkek 720000 Kyrgyzstan', '', '', '', '', '', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(551, '12249112', NULL, 'DIVISION Shooting range', 'Shooting Ranges', 'Shooting Ranges', 'Chui', 'chui', 'Bishkek', 'Kulatova Str. 9/1 crossing Ibraimova Str., Bishkek 720000 Kyrgyzstan', 'http://www.facebook.com/division.kg', '9.97E+11', '', '', '', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(552, '12272461', NULL, 'Galaxy Family Park', 'PlaygroundsGame & Entertainment Centers', 'Playgrounds Game & Entertainment Centers', 'Chui', 'Chui', 'Bishkek', 'Chui Ave., 147/4, Bishkek 720000 Kyrgyzstan', 'http://www.galaxypark.kg/', '9.96E+11', '', '', '', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(553, '12245358', NULL, 'Saima', 'Speciality & Gift Shops', 'Speciality & Gift Shops', 'Chui', 'Chui', 'Bishkek', 'Chui Ave., 140, Bishkek 720000 Kyrgyzstan', 'http://www.embroidery.com.kg/', '9.97E+11', '', '42.870679', '74.592627', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(554, '12658159', NULL, 'Indi Massage', 'Spas', 'Spas', 'Chui', 'Chui', 'Bishkek', 'Chui Ave., 158, Bishkek 720000 Kyrgyzstan', 'http://indi.com.kg/', '9.97E+11', 'indimassage.kg@gmail.com', '42.870679', '74.592627', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(555, '24133504', NULL, 'Bar KladOFFka', 'Bars & Clubs', 'Bars & Clubs', 'Chui', 'Chui', 'Bishkek', 'Chui Ave., 187A, Bishkek 720000 Kyrgyzstan', 'http://instagram.com/kladoffka.bar?igshid=ymmymta2m2y=', '9.97E+11', '', '42.870679', '74.592627', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(556, '15130358', NULL, 'Retro Metro Night Club', 'Bars & ClubsKaraoke Bars', 'Bars & Clubs Karaoke Bars Dance Clubs & Discos', 'Chui', 'Chui', 'Bishkek', 'Aitmatova Ave., 24, Bishkek 720000 Kyrgyzstan', 'http://www.retro-metro.kg/', '9.97E+11', 'retrometronk@gmail.com', '42.866735', '74.592627', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(557, '12002392', NULL, 'Promzona Club', 'Bars & ClubsDance Clubs & Discos', 'Bars & Clubs Dance Clubs & Discos', 'Chui', 'chui', 'Bishkek', 'Cholpon-Ata St., 16, Bishkek 720000 Kyrgyzstan', 'http://www.promzona.kg/', '9.96E+11', '', '42.859841', '74.630505', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(558, '3965937', NULL, 'Life Style Spa', 'Spas', 'Spas', 'Chui', 'Chui', 'Bishkek', '35 Erkindin Boulevard, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '', '', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(559, '9798260', NULL, 'Kosmopark', 'Bowling Alleys', 'Bowling Alleys', 'Chui', 'chui', 'Bishkek', 'Yunusaliyeva, 40A, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '42.842936', '74.61461', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(560, '7272741', NULL, 'Fresh Style', 'Spas', 'Spas', 'Chui', 'Chui', 'Bishkek', 'Razzakova St., 22, Bishkek 720000 Kyrgyzstan', 'http://www.freshstyle.kg/', '9.96E+11', '', '', '', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09');
INSERT INTO `places` (`id`, `CSV_Id`, `image`, `Name`, `Category`, `Attraction_Type`, `Region`, `Rayon`, `City`, `Address`, `Website`, `Telephone`, `Email`, `Latitude`, `Longitude`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
(561, '14780285', NULL, 'Green Mile', 'Game & Entertainment Centers', 'Game & Entertainment Centers', 'Chui', 'Chui', 'Bishkek', 'Chokana Valikhanova, 2/1, Bishkek 720000 Kyrgyzstan', 'https://www.facebook.com/%D0%A1%D1%82%D1%80%D0%B0%D0%B9%D0%BA%D0%B1%D0%BE%D0%BB%D1%8C%D0%BD%D1%8B%D0%B9-%D0%BA%D0%BB%D1%83%D0%B1-Greenmile-393746864467653/?hc_ref=ART3uUL4HeKqEZr2iRgOGecSbp3G7XHjckzoLJe-587bA50RyPdlsQB69H3aslOCu8k&fref=n', '9.97E+11', 'greenmile.airsoft@gmail.com', '42.870757', '74.630505', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(562, '9798316', NULL, 'Rossiya', 'Movie Theaters', 'Movie Theaters', 'Chui', 'Chui', 'Bishkek', 'Chui Ave., 213, Bishkek 720000 Kyrgyzstan', 'http://cinema.kg/', '', 'info@cinema.kg', '42.870679', '74.592487', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(563, '14210450', NULL, 'Oasis', 'Spas', 'Spas', 'Chui', 'Chui', 'Bishkek', 'Chui Ave., 136, Bishkek 720000 Kyrgyzstan', 'http://www.oasis-massage.kg/', '9.97E+11', 'massageoasis312@gmail.com', '42.870679', '74.592627', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(564, '24142766', NULL, 'Transfer KG', 'Taxis & Shuttles', 'Taxis & Shuttles', 'Chui', 'Chui', 'Bishkek', 'Leo Tolstoy, 19, Bishkek 720000 Kyrgyzstan', 'https://transfer-kg.ru/en', '9.97E+11', 'info@transfer-kg.ru', '', '', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(565, '9798272', NULL, 'Manas', 'Movie Theaters', 'Movie Theaters', 'Chui', 'Chui', 'Bishkek', 'Mira Ave., 47, Bishkek 720000 Kyrgyzstan', 'http://www.manascinema.com/', '', '', '42.870679', '74.592627', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(566, '611202', NULL, 'Central Asian Bookshop', 'Speciality & Gift Shops', 'Speciality & Gift Shops', 'Chui', 'Chui', 'Bishkek', '104 Chui Prospect, Bishkek 720000 Kyrgyzstan', '', '', '', '', '', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(567, '9820717', NULL, 'Airsoft Arena', 'Game & Entertainment Centers', 'Game & Entertainment Centers', 'Chui', 'Chui', 'Bishkek', 'Lushhikhina St., 99V, Bishkek 720000 Kyrgyzstan', 'http://www.arena.kg/', '9.97E+11', '', '42.864556', '74.553005', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(568, '8411411', NULL, 'Cinema Oktyabr', 'Movie Theaters', 'Movie Theaters', 'Chui', 'Chui', 'Bishkek', 'Chui Avenue, 184, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '', '', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(569, '10911025', NULL, 'Children Scientific Complex', 'Children\'s MuseumsGame & Entertainment Centers', 'Children\'s Museums Game & Entertainment Centers', 'Chui', 'Chui', 'Bishkek', 'Moskovskaya St., 163 V, Bishkek 720000 Kyrgyzstan', '', '9.97E+11', 'saikal@ukr.net', '42.870679', '74.592627', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(570, '13428342', NULL, 'One Village One Product', 'Speciality & Gift Shops', 'Speciality & Gift Shops', 'Chui', 'Chui', 'Bishkek', 'Toktogula, 140, Bishkek 720000 Kyrgyzstan', 'http://www.facebook.com/ovop.kg/', '9.97E+11', 'davlenbaeva.olga@gmail.com', '42.870679', '74.592627', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(571, '25044833', NULL, 'Soulist', 'Karaoke Bars', 'Karaoke Bars', 'Chui', 'Chui', 'Bishkek', '119 Jumabeka St. Opposite the Central Registry Office, Bishkek 720000 Kyrgyzstan', 'https://www.instagram.com/soulist_bishkek/', '9.97E+11', '', '42.870679', '74.592627', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(572, '9798259', NULL, 'Kyrgyz Kinosu', 'Movie Theaters', 'Movie Theaters', 'Chui', 'Chui', 'Bishkek', 'Akhunbayeva, 92V, Bishkek 720000 Kyrgyzstan', 'http://kyrgyzkinosu.kg/', '9.96E+11', 'kyrgyzkinosu@mail.ru', '42.854963', '74.59527', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(573, '17651164', NULL, 'Raritet', 'Speciality & Gift Shops', 'Speciality & Gift Shops', 'Chui', 'Chui', 'Bishkek', 'Chuy Avenue, 271, Bishkek 720000 Kyrgyzstan', 'http://books.kg/', '9.96E+11', 'rarityfirm@mail.ru', '42.870679', '74.592627', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(574, '12640732', NULL, 'SAIMALUU TASH Art Gallery', 'Speciality & Gift ShopsArt Galleries', 'Speciality & Gift Shops Art Galleries', 'Chui', 'Chui', 'Bishkek', 'Panfilova St., 136/33, Bishkek 720000 Kyrgyzstan', 'http://saimaluutash.kg/', '9.97E+11', 'saimaluu.t@gmail.com', '42.870679', '74.592627', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(575, '13431128', NULL, 'Bex', 'Bus ServicesTaxis & Shuttles', 'Bus Services Taxis & Shuttles', 'Chui', 'Chui', 'Bishkek', '', 'http://www.bex.kg/', '9.97E+11', 'order@bex.kg', '42.844247', '74.603785', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(576, '9820722', NULL, 'Zolotoi Telenok', 'Bars & Clubs', 'Bars & Clubs', 'Chui', 'Chui', 'Bishkek', 'Lva Tolstogo St., 7/3, Bishkek 720000 Kyrgyzstan', '', '', '', '42.870679', '74.592627', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(577, '25380986', NULL, 'Night Club Suzie Wong', 'Bars & Clubs', 'Bars & Clubs', 'Chui', 'Chui', 'Bishkek', 'Tokombayeva, 21a/4, Bishkek 720060 Kyrgyzstan', 'https://www.instagram.com/suziewong.bishkek/', '9.97E+11', '', '42.842936', '74.61703', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(578, '25349909', NULL, 'Norm Bar', 'Bars & Clubs', 'Bars & Clubs', 'Chui', 'Chui', 'Bishkek', '', 'http://instagram.com/norm_bar_', '9.97E+11', '', '42.870679', '74.592627', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(579, '12269121', NULL, 'Daairy', 'Speciality & Gift Shops', 'Speciality & Gift Shops', 'Chui', 'Chui', 'Bishkek', 'Chui Ave., 114, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '42.870679', '74.592627', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(580, '11878392', NULL, 'ZIL Ski Base', 'Gear RentalsSki & Snowboard Areas', 'Gear Rentals Ski & Snowboard Areas', 'Chui', 'Chui', 'Bishkek', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(581, '10112267', NULL, 'Fitness House', 'Health ClubsYoga & Pilates', 'Health Clubs Yoga & Pilates Lessons & Workshops', 'Chui', 'chui', 'Bishkek', 'Baitik Baatyra St., 67/1, Bishkek 720000 Kyrgyzstan', 'https://www.facebook.com/Fitness-House-1668785406675794/', '9.97E+11', '', '', '', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(582, '9798266', NULL, 'Arbat', 'Dance Clubs & Discos', 'Dance Clubs & Discos', 'Chui', 'chui ', 'Bishkek', 'Yunusaliyeva, 93, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '42.850913', '74.614305', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(583, '13536598', NULL, 'Tuman', 'Bars & Clubs', 'Bars & Clubs', 'Chui', 'chui', 'Bishkek', 'Abdurakhmanova St., 152 Mossovet, Dom Torgovli, Bishkek 720000 Kyrgyzstan', 'https://www.facebook.com/tuman.bar/', '9.97E+11', '', '', '', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(584, '9821184', NULL, 'Plaza-Vostok', 'Game & Entertainment Centers', 'Game & Entertainment Centers', 'Chui', 'chui', 'Bishkek', 'Chui Ave., 30A, Bishkek 720000 Kyrgyzstan', '', '', '', '42.870679', '74.614575', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(585, '12667688', NULL, 'Dilbar', 'Speciality & Gift Shops', 'Speciality & Gift Shops', 'Chui', 'chui', 'Bishkek', 'Gorky St., 27/1, Bishkek 720000 Kyrgyzstan', 'http://www.dilbarstyle.com/', '9.97E+11', 'ludmila78e@yandex.ru', '', '', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(586, '13456285', NULL, 'Crystal', 'Health ClubsYoga & Pilates', 'Health Clubs Yoga & Pilates Spas', 'Chui', 'chui', 'Bishkek', 'Lineynaya St., 67, Bishkek 720000 Kyrgyzstan', 'http://www.crystal.kg/', '9.97E+11', 'Ira.crystal@mail.ru', '42.870679', '74.592627', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(587, '12375425', NULL, 'Cook Story', 'Cooking Classes', 'Cooking Classes', 'c', 'chui', 'Bishkek', 'Tokombayeva St., 53/2, Bishkek 720000 Kyrgyzstan', 'https://www.facebook.com/cookstory/', '9.97E+11', '', '', '', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(588, '19896931', NULL, 'Chakra SPA', 'Spas', 'Spas', 'Chui', 'chui', 'Bishkek', 'Elebayeva St., 60 Golden Dragon Hotel, Bishkek 720000 Kyrgyzstan', 'http://website--5049397282702365540161-massagespa.business.site/?fbclid=IwAR3ZJ6TwaB2Hn0OoQlql7comWfDHD0Gz1hbPPtIokHeB8f1L9HA1OiCAdEo', '9.97E+11', '', '', '', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(589, '14210522', NULL, 'S Legkim Parom', 'Hammams & Turkish BathsSpas', 'Hammams & Turkish Baths Spas', 'Chui', 'chui', 'Bishkek', '', 'http://slegkim-parom.kg/', '9.97E+11', 'mail@slegkim-parom.kg', '42.870679', '74.594163', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(590, '15042516', NULL, 'Enoteca', 'Wine Bars', 'Wine Bars', 'Chui', 'chui', 'Bishkek', 'Moskovskaya, 197, Bishkek 720000 Kyrgyzstan', 'https://www.facebook.com/toscanatf/', '9.97E+11', 'toscanatf@gmail.com', '42.870679', '74.592627', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(591, '12871357', NULL, 'The Pirate Bay', 'Bars & Clubs', 'Bars & Clubs', 'Chui', 'chui', 'Bishkek', 'Mira Ave., 90/92, Bishkek 720000 Kyrgyzstan', 'https://www.facebook.com/thepiratebaykg/', '9.97E+11', '', '', '', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(592, '16746121', NULL, 'Family Spa Avenue', 'Spas', 'Spas', 'Chui', 'chui', 'Bishkek', 'Chui ave., 158, Bishkek 720000 Kyrgyzstan', 'https://www.facebook.com/familyspaavenue/', '9.97E+11', '', '', '', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(593, '17464720', NULL, 'Gergert Sport', 'Gear Rentals', 'Gear Rentals', 'Chui', 'chui', 'Bishkek', 'Gorkogo, 182, Bishkek 720000 Kyrgyzstan', 'http://www.gergert.kg/', '9.96E+11', 'info@gergert.kg', '42.868602', '74.5947', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(594, '25294095', NULL, 'Archa Spa Center', 'Spas', 'Spas', 'Chui', 'chui', 'Bishkek', 'Chyngyza Aitmatova Ave., 93, Bishkek 720000 Kyrgyzstan', 'https://www.instagram.com/archa_spa/', '9.97E+11', '', '42.844247', '74.594123', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(595, '14199763', NULL, 'Nomads', 'Gear Rentals', 'Gear Rentals', 'Chui', 'chui', 'Bishkek', '', 'http://nomads4x4.com/', '9.97E+11', 'erkin@nomads4x4.com', '42.870679', '74.60536', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(596, '19416209', NULL, 'Verba', 'Speciality & Gift Shops', 'Speciality & Gift Shops', 'Chui', 'chui', 'Bishkek', 'Logvinenko, 26a, Bishkek 720000 Kyrgyzstan', '', '9.97E+11', '', '', '', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(597, '23017309', NULL, 'Ega Hall', 'Yoga & Pilates', 'Yoga & Pilates', 'Chui', 'chui', 'Bishkek', 'Bokonbayeva, 103, Bishkek 720000 Kyrgyzstan', 'http://egahall.kg/', '9.97E+11', 'egahall.kg@gmail.com', '42.870679', '74.592627', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(598, '19397154', NULL, 'Quicktransfer', 'Taxis & Shuttles', 'Taxis & Shuttles', 'Chui', 'chui', 'Bishkek', '', 'http://quicktransfer.com/', '4.42E+11', 'info@quicktransfer.com', '', '', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(599, '23528314', NULL, 'Content Park', 'Game & Entertainment Centers', 'Game & Entertainment Centers', 'Chui', 'chui', 'Bishkek', 'Shopokova 91, Bishkek 720000 Kyrgyzstan', '', '9.97E+11', '', '42.870679', '74.594163', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(600, '23612245', NULL, 'Antikino The Story', 'Movie Theaters', 'Movie Theaters', 'Chui', 'chui', 'Bishkek', 'Tynystanova St., 99 West side of the building 1st floor, Bishkek 720000 Kyrgyzstan', '', '9.97E+11', '', '42.86769', '74.592627', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(601, '20316882', NULL, 'Sequoia Rent Service', 'Gear Rentals', 'Gear Rentals', 'Chui', 'chui', 'Bishkek', 'Sydykova, 250-38, Bishkek 720000 Kyrgyzstan', 'https://www.facebook.com/srsinkyrgyzstan/', '9.97E+11', 'srs.autorent.kg@gmail.com', '', '', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(602, '17746918', NULL, 'Arkan Tokoi', 'Zipline & Aerial Adventure Parks', 'Zipline & Aerial Adventure Parks', 'Chui', 'chui', 'Bishkek', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(603, '15688322', NULL, 'Gergert Sport Outlet', 'Gear Rentals', 'Gear Rentals', 'Chui', 'chui', 'Bishkek', 'Gorkogo, 119, Bishkek 720000 Kyrgyzstan', 'http://www.gergert.kg/', '9.97E+11', 'gergertsportweb@gmail.com', '42.868602', '74.592627', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(604, '17456292', NULL, 'Sommeliers', 'Speciality & Gift Shops', 'Speciality & Gift Shops', 'Chui', 'chui', 'Bishkek', 'Erkindik blvd., 16, Bishkek 720000 Kyrgyzstan', '', '9.97E+11', 'sommeliers.kg@gmail.com', '42.870679', '74.592627', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(605, '25551368', NULL, 'Sunny Bar', 'Bars & Clubs', 'Bars & Clubs', 'Chui', 'chui', 'Bishkek', 'Razzakova str 26, Bishkek 720001 Kyrgyzstan', '', '9.97E+11', '', '42.870679', '74.592627', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(606, '24106384', NULL, 'Cycling Tours Kyrgyzstan', 'Biking Trails', 'Biking Trails', 'Chui', 'chui', 'Bishkek', 'Jumabeka 29, Bishkek 720000 Kyrgyzstan', 'http://www.facebook.com/cyclingtourskyrgyzstan', '9.97E+11', 'cyclingtourskyrgyzstan@gmail.com', '42.870679', '74.592627', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(607, '24135486', NULL, 'Paragliding.kg', 'Parasailing & Paragliding', 'Parasailing & Paragliding', 'Chui', 'chui', 'Bishkek', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(608, '24142782', NULL, 'KladOFFka', 'Bars & Clubs', 'Bars & Clubs', 'Chui', 'chui', 'Bishkek', 'Chui, 187a, Bishkek 720000 Kyrgyzstan', 'https://www.instagram.com/kladoffka.bar/', '', '', '42.870679', '74.592627', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(609, '22952079', NULL, 'Oasis Residence', 'Karaoke Bars', 'Karaoke Bars', 'Chui', 'chui', 'Bishkek', 'Maldybayeva, 69/1, Bishkek 720000 Kyrgyzstan', 'https://www.instagram.com/oasis_residencekg/', '9.97E+11', 'office@oasis-residence.com', '42.844247', '74.59484', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(610, '22867338', NULL, 'Vintazh  Wine&Beer', 'Wine Bars', 'Wine Bars', 'Chui', 'chui', 'Bishkek', 'Isanova, 100, Bishkek 720000 Kyrgyzstan', 'http://www.facebook.com/Vintage.wb.bishkek', '9.97E+11', '', '42.870679', '74.592627', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(611, '23805620', NULL, 'Little Birds City Bar', 'Bars & Clubs', 'Bars & Clubs', 'Chui', 'chui', 'Bishkek', 'Yunusaliyeva, 147, Bishkek 720000 Kyrgyzstan', 'https://www.instagram.com/bar_littlebirds/?hl=en', '9.97E+11', '', '42.844247', '74.614305', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(612, '25210351', NULL, 'Ala-archa National Park', 'Mountains', 'Mountains', 'Chui', 'chui', 'Bishkek', 'Kiev St, Bishkek 720000 Kyrgyzstan', 'https://kymyz.com/', '9.97E+11', '', '42.878544', '74.592627', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(613, '17839788', NULL, 'Sport Shooting Complex', 'Shooting Ranges', 'Shooting Ranges', 'Chui', 'chui', 'Bishkek', 'Valikhanova, 2/14, Bishkek 720000 Kyrgyzstan', '', '%28996%29999919919', 'ssf.kgz@gmail.com', '', '', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(614, '25409275', NULL, 'Boho', 'Bars & Clubs', 'Bars & Clubs', 'Chui', 'chui', 'Bishkek', 'Yunusalieva, 40 A Kosmopark, 3rd floor, Bishkek 720028 Kyrgyzstan', 'https://www.facebook.com/profile.php?id=100063667838920', '9.97E+11', 'agent.reklamnyy@list.ru', '42.84398', '74.59484', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(615, '23460834', NULL, 'Minibar', 'Bars & Clubs', 'Bars & Clubs', 'Chui', 'chui', 'Bishkek', 'Chingiz Aitmatov, 56 Intersection of Aini, Bishkek 720000 Kyrgyzstan', 'http://www.instagram.com/minibar.bishkek/', '9.97E+11', '', '42.84398', '74.59484', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(616, '23949888', NULL, 'Chabad Bishkek', 'Religious Sites', 'Religious Sites', 'Chui', 'chui', 'Bishkek', '193 Karpinskogo St., Bishkek 720000 Kyrgyzstan', '', '9.96E+11', 'jbishkek@gmail.com', '42.867355', '74.59064', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(617, '24968334', NULL, 'Oxygen', 'Bars & Clubs', 'Bars & Clubs', 'Chui', 'chui', 'Bishkek', '1/4 Baitik Baatyr St., 8 Md., Bishkek 720000 Kyrgyzstan', 'https://www.instagram.com/o2loungebar/', '9.97E+11', '', '42.842936', '74.611045', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(618, '25154035', NULL, 'L-Studio', 'Spas', 'Spas', 'Chui', 'chui', 'Bishkek', '210 Toktogul Street, Bishkek 720000 Kyrgyzstan', 'http://www.lstudio.kg/', '9.97E+11', 'office@lstudio.kg', '42.870679', '74.592487', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(619, '25256620', NULL, 'Quest Kapaghost', 'Escape Games', 'Escape Games', 'Chui', 'chui', 'Bishkek', 'Oktyabrskaya Street, 250 Verhniy Tokoldosh, Bishkek 720000 Kyrgyzstan', 'https://instagram.com/kapaghost_kg?igshid=ymmymta2m2y=', '9.97E+11', 'getecorporation@gmail.com', '42.870679', '74.59064', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(620, '25410722', NULL, 'Boho Clubar?ars & ClubsDance Clubs & Discos', 'Bars & Clubs Dance Clubs & Discos', 'Chui', 'chui', 'Bishkek', 'Yunusalieva, 40A, Bishkek 720028 Kyrgyzstan', 'https://www.facebook.com/people/BOHO/100063667838920/', '9.97E+11', 'agent.reklamnyy@list.ru', '42.867355', '74.59064', '', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(621, '25416658', NULL, 'Everyday Saturday Bar', 'Bars & Clubs', 'Bars & Clubs', 'Chui', 'chui', 'Bishkek', 'Kamchybeka Shakirova, 31, Bishkek 720020 Kyrgyzstan', 'https://www.instagram.com/everyday__saturday/', '', '', '42.867355', '74.59064', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(622, '14779872', NULL, 'Kol-Tor Lake', 'Bodies of Water', 'Bodies of Water', 'Chuy Province', 'chui', 'Bishkek', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(623, '10092267', NULL, 'Kegety Waterfall', 'Bodies of WaterMountains', 'Bodies of Water Mountains Nature & Wildlife Areas Waterfalls', 'Chuy Province', 'Chuy', 'Bishkek', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(624, '10235109', NULL, 'Ratsek Cabin', 'MountainsNature & Wildlife Areas', 'Mountains Nature & Wildlife Areas', 'Chuy Province', 'Chuy', 'Bishkek', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(625, '10021401', NULL, 'Zhashyl-Kel Lake', 'Bodies of WaterValleys', 'Bodies of Water Valleys', 'Chuy Province', 'Chuy', 'Bishkek', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(626, '12698593', NULL, 'Gorge Kara Bulak', 'Geologic Formations', 'Geologic Formations', 'Chuy Province Arashan', 'Chuy', 'Bishkek', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(627, '10021370', NULL, 'Chon-Kemin National Park', 'National Parks', 'National Parks', 'Chuy Province Kemin', 'Chuy', 'Bishkek', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(628, '10516495', NULL, 'Kel-Kogur Lake', 'Bodies of Water', 'Bodies of Water', 'Chuy Province Kemin', 'Chuy', 'Bishkek', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(629, '23636209', NULL, 'Kyrgyz Handmade', 'Speciality & Gift ShopsLessons & Workshops', 'Speciality & Gift Shops Lessons & Workshops', 'Chuy Province Kok Jar', 'Chuy', 'Bishkek', '18, Madieva Taryh Ordo Hall of Baibol Chaihana, Kok Jar 724316 Kyrgyzstan', 'http://handmade.kg/qr/', '9.97E+11', 'info@handmade.kg', '42.852249', '74.61726', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(630, '9820732', NULL, 'The Temple in Honour of Icon of \"All the Afflicted\"', 'Religious Sites', 'Religious Sites', 'Chuy Province Novopokrovka', 'Chuy', 'Bishkek', '', '', '9.96E+11', '', '42.869319', '74.701322', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(631, '25075499', NULL, 'Museum of the Great Emptiness', 'Art Museums', 'Art Museums', 'Chuy Province Orto Say', 'Chuy', 'Bishkek', 'Ormokoyeva, 31, Orto Say 720000 Kyrgyzstan', 'http://greatemptiness.net/', '9.96E+11', '', '', '', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(632, '9996566', NULL, 'Suusamyr Valley', 'MountainsNature & Wildlife Areas', 'Mountains Nature & Wildlife Areas Geologic Formations', 'Chuy Province Suusamyr', 'Chuy', 'Bishkek', '', 'http://www.facebook.com/Pegasadventure/', '9.97E+11', '', '', '', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(633, '15549071', NULL, 'Ata Beyit Memorial', 'Historic SitesMonuments & Statues', 'Historic Sites Monuments & Statues', 'Chuy Province Tash-Dobo', 'Chuy', 'Bishkek', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(634, '4176350', NULL, 'Burana Tower', 'Historic SitesObservation Decks & Towers', 'Historic Sites Observation Decks & Towers', 'Chuy Province Tokmok', 'Chuy', 'Tokmok', 'Don-Aryk, Tokmok 722201 Kyrgyzstan', '', '', '', '', '', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(635, '10330907', NULL, 'Kegety Gorge', 'MountainsNature & Wildlife Areas', 'Mountains Nature & Wildlife Areas Valleys', 'Chuy Province Tokmok', 'Chuy', 'Tokmok', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(636, '8403671', NULL, 'Tokmok Mosque', 'Religious SitesChurches & Cathedrals', 'Religious Sites Churches & Cathedrals', 'Chuy Province Tokmok', 'Chuy', 'Tokmok', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(637, '6652740', NULL, 'Jeti-Oguz Canyon (Seven Bulls Rocks)', 'Canyons', 'Canyons', 'Issyk Kul Province', 'Issyk Kul ', 'Issyk-kul', '', 'http://tourtapp.com/destinations/jeti-oguz-canyon/', '9.97E+11', '', '', '', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(638, '8404243', NULL, 'Semenovskoye Canyon', 'MountainsCanyons', 'Mountains Canyons Geologic Formations', 'Issyk Kul Province', 'Issyk Kul ', 'Tosor', '', 'http://www.tuk.kg/', '9.96E+11', '', '', '', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(639, '10229094', NULL, 'Waterfall Devichi Kosy', 'Waterfalls', 'Waterfalls', 'Issyk Kul Province', 'Issyk Kul ', 'Barskoon', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(640, '10229099', NULL, 'Roch Rzbitoye Serdtse', 'MountainsNature & Wildlife Areas', 'Mountains Nature & Wildlife Areas Geologic Formations', 'Issyk Kul Province', 'Issyk Kul ', 'Issyk-kul', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(641, '10205985', NULL, 'Burial Mound Complex San-Tash', 'Points of Interest & LandmarksGeologic Formations', 'Points of Interest & Landmarks Geologic Formations', 'Issyk Kul Province', 'Issyk Kul ', 'Issyk-kul', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(642, '10239399', NULL, 'Maiden Tears Waterfall', 'Waterfalls', 'Waterfalls', 'Issyk Kul Province', 'Issyk Kul ', 'Issyk-kul', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:09', '2023-07-03 06:15:09'),
(643, '10021270', NULL, 'Ak-Suu Gorge', 'MountainsHiking Trails', 'Mountains Hiking Trails', 'Issyk Kul Province Ak-Suu', 'Issyk Kul ', 'Altyn-Arashan', '', 'http://www.ecotrek.kg/', '9.97E+11', '', '', '', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(644, '10021294', NULL, 'Ak-Suu Hot Spring', 'SpasThermal Spas', 'Spas Thermal Spas', 'Issyk Kul Province Ak-Suu', 'Issyk Kul ', 'Altyn-Arashan', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(645, '10064795', NULL, 'Tuz-Kol, Dead Lake', 'Bodies of Water', 'Bodies of Water', 'Issyk Kul Province Balykchy', 'Issyk Kul ', 'Balykchy', '', 'http://www.ecotrek.kg/', '9.97E+11', '', '', '', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(646, '24060322', NULL, 'Asman', 'Sports Complexes', 'Sports Complexes', 'Issyk Kul Province Balykchy', 'Issyk Kul ', 'Balykchy', 'Amanbayeva, 172, Balykchy 722300 Kyrgyzstan', 'https://www.instagram.com/_asman_balykchy_/', '9.97E+11', 'asman.spa@gmail.com', '42.458124', '76.196118', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(647, '4952511', NULL, 'Barskoon Waterfall', 'Points of Interest & LandmarksWaterfalls', 'Points of Interest & Landmarks Waterfalls', 'Issyk Kul Province Barskoon', 'Issyk Kul ', 'Barskoon', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(648, '10224880', NULL, 'Barskoon Gorge', 'MountainsNature & Wildlife Areas', 'Mountains Nature & Wildlife Areas', 'Issyk Kul Province Barskoon', 'Issyk Kul ', 'Barskoon', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(649, '10224889', NULL, 'Barskoon Plateau', 'Nature & Wildlife Areas', 'Nature & Wildlife Areas', 'Issyk Kul Province Barskoon', 'Issyk Kul ', 'Barskoon', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(650, '10228930', NULL, 'Monument to Yuriy Gagarin', 'Monuments & Statues', 'Monuments & Statues', 'Issyk Kul Province Barskoon', 'Issyk Kul ', 'Barskoon', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(651, '10324919', NULL, 'Ak-Shyyrak Ridge', 'MountainsNature & Wildlife Areas', 'Mountains Nature & Wildlife Areas', 'Issyk Kul Province Barskoon', 'Issyk Kul ', 'Barskoon', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(652, '17353327', NULL, 'Ak Orgo Yurt Workshop', 'Paint & Pottery Studios', 'Paint & Pottery Studios', 'Issyk Kul Province Barskoon', 'Issyk Kul ', 'Barskoon', '97, Lenin street 97, ??????, Barskoon 722005 Kyrgyzstan', '', '9.97E+11', 'akorgo.kyrgyzstan@gmail.com', '', '', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(653, '10024295', NULL, 'Teshik-Kul Lake', 'Bodies of Water', 'Bodies of Water', 'Issyk Kul Province Bokombayevskoye', 'Issyk Kul ', 'Bokombayevskoye', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(654, '13582305', NULL, 'Destination South Shore', 'Visitor Centers', 'Visitor Centers', 'Issyk Kul Province Bokonbayevo', 'Issyk Kul ', 'Province-Bokonbayevo', 'Mambetov Street, 37B Toichubekov Culture House, 2nd floor, Bokonbayevo 722300 Kyrgyzstan', 'http://southshorekg.com/contact/', '9.97E+11', 'southshoreik@gmail.com', '', '', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(655, '25418309', NULL, 'Kolfest ?nternational Music and Arts Festival', 'Music Festivals', 'Music Festivals', 'Issyk Kul Province Bokonbayevo', 'Issyk Kul ', 'Bokombaevo', '', 'http://www.kolfest.com/', '9.97E+11', 'kolfestkg@gmail.com', '', '', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(656, '12662287', NULL, 'Ferris Wheel', 'Observation Decks & Towers', 'Observation Decks & Towers', 'Issyk Kul Province Bosteri', 'Issyk Kul ', 'Bosteri', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(657, '5000141', NULL, 'Ruh Ordo Cultural Center', 'Civic Centres', 'Civic Centres', 'Issyk Kul Province Cholpon Ata', 'Issyk Kul ', 'Cholpon-Ata', 'Sovetskaya St President Summer Residency - Sovmin, Cholpon Ata 722315 Kyrgyzstan', 'http://rukhordo.kg/', '9.97E+11', 'ruhordo2007@gmail.com', '42.64649', '77.104517', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(658, '4946285', NULL, 'Museum of Petroglyphs', 'Speciality Museums', 'Speciality Museums', 'Issyk Kul Province Cholpon Ata', 'Issyk Kul ', 'Cholpon-Ata', '', 'http://www.kyrgyztours.com/', '9.97E+11', '', '42.643233', '77.095295', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(659, '6429016', NULL, 'Historical Museum', 'Speciality Museums', 'Speciality Museums', 'Issyk Kul Province Cholpon Ata', 'Issyk Kul ', 'Cholpon-Ata', 'A363 Cholpon Ata, Cholpon Ata 722315 Kyrgyzstan', '', '9.96E+11', '', '42.64649', '77.099568', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(660, '13098578', NULL, 'The Equestrian Hippodrome', 'Sports Complexes', 'Sports Complexes', 'Issyk Kul Province Cholpon Ata', 'Issyk Kul ', 'Cholpon-Ata', '', 'http://worldnomadgames.com/en/places/Hippodrome/#', '', '', '42.64649', '77.119224', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(661, '10224016', NULL, 'Abandoned Airport Cholpon Ata', 'Points of Interest & LandmarksMysterious Sites', 'Points of Interest & Landmarks Mysterious Sites', 'Issyk Kul Province Cholpon Ata', 'Issyk Kul ', 'Cholpon-Ata', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(662, '10031701', NULL, 'Oluya Cholpon Ata Mausoleum', 'Architectural BuildingsCemeteries', 'Architectural Buildings Cemeteries', 'Issyk Kul Province Cholpon Ata', 'Issyk Kul ', 'Cholpon-Ata', '', 'http://www.applehostel.kg/en/', '', '', '', '', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(663, '10224000', NULL, 'Abandoned Runway', 'Points of Interest & LandmarksMysterious Sites', 'Points of Interest & Landmarks Mysterious Sites', 'Issyk Kul Province Cholpon Ata', 'Issyk Kul ', 'Cholpon-Ata', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(664, '10229108', NULL, 'Lenin Statue', 'Monuments & Statues', 'Monuments & Statues', 'Issyk Kul Province Cholpon Ata', 'Issyk Kul ', 'Cholpon-Ata', 'Sovetskaya St., Cholpon Ata 722315 Kyrgyzstan', '', '', '', '42.64649', '77.084075', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(665, '17600084', NULL, 'Cholpon Fountain', 'Fountains', 'Fountains', 'Issyk Kul Province Cholpon Ata', 'Issyk Kul ', 'Cholpon-Ata', 'A363, Cholpon Ata 722315 Kyrgyzstan', '', '', '', '', '', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(666, '17469704', NULL, 'Hippodrome Cholpon-Ata', 'Horse Tracks', 'Horse Tracks', 'Issyk Kul Province Cholpon Ata', 'Issyk Kul ', 'Cholpon-Ata', 'A363, Cholpon Ata 722315 Kyrgyzstan', '', '', '', '', '', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(667, '25163894', NULL, 'Termal', 'Hot Springs & Geysers', 'Hot Springs & Geysers', 'Issyk Kul Province Cholpon Ata', 'Issyk Kul ', 'Cholpon-Ata', 'Alleya Aitmatova 6a/1, Cholpon Ata 722315 Kyrgyzstan', '', '9.97E+11', 'ovoazim@gmail.com', '42.646781', '77.095005', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(668, '17599963', NULL, 'Veterans Monument', 'Monuments & Statues', 'Monuments & Statues', 'Issyk Kul Province Cholpon Ata', 'Issyk Kul ', 'Cholpon-Ata', 'A363, Cholpon Ata 722315 Kyrgyzstan', '', '', '', '', '', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(669, '24928967', NULL, 'Termal Spa Center', 'Thermal Spas', 'Thermal Spas', 'Issyk Kul Province Cholpon Ata', 'Issyk Kul ', 'Cholpon-Ata', 'Alleya Aitmatova, 6a/1, Cholpon Ata 722315 Kyrgyzstan', '', '9.97E+11', 'aikamusiconly@gmail.com', '42.646421', '77.089227', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(670, '8059960', NULL, 'Hot springs', 'Thermal Spas', 'Thermal Spas', 'Issyk Kul Province Chon-Uryukty', 'Issyk Kul ', 'Uryukty', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(671, '13388773', NULL, 'Keremet Suu Hot Spring', 'Thermal Spas', 'Thermal Spas', 'Issyk Kul Province Chon-Uryukty', 'Issyk Kul ', 'Uryukty', 'Akademiya, 25, Chon-Uryukty 722360 Kyrgyzstan', '', '', '', '', '', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(672, '9996607', NULL, 'Engilchek Glacier', 'MountainsNature & Wildlife Areas', 'Mountains Nature & Wildlife Areas Geologic Formations', 'Issyk Kul Province Engilchek', 'Issyk Kul ', 'Engilchek', '', 'http://www.ecotrek.kg/', '9.97E+11', '', '', '', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(673, '8404242', NULL, 'Grigorevskoye Canyon', 'Forests', 'Forests', 'Issyk Kul Province Grigoryevka', 'Issyk Kul ', 'Grigoryevka', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(674, '10224023', NULL, 'Abandoned Pension Utyos', 'Points of Interest & LandmarksMysterious Sites', 'Points of Interest & Landmarks Mysterious Sites', 'Issyk Kul Province Kaji-Say', 'Issyk Kul ', 'Kaji-Say', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(675, '10228913', NULL, 'Tyoploye Lake', 'Bodies of Water', 'Bodies of Water', 'Issyk Kul Province Kaji-Say', 'Issyk Kul ', 'Kaji-Say', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(676, '19436423', NULL, 'Shygaev Museum of Modern Art', 'Art Museums', 'Art Museums', 'Issyk Kul Province Kaji-Say', 'Issyk Kul ', 'Kaji-Say', 'Issyk-Kulskaya St., 34A, Kaji-Say 722304 Kyrgyzstan', 'http://www.facebook.com/shygaevmuseum', '9.97E+11', 'shygaevmuseum@gmail.com', '', '', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(677, '10091505', NULL, 'Manjyly-Ata Valley', 'Valleys', 'Valleys', 'Issyk Kul Province Kaji-Say', 'Issyk Kul ', 'Kaji-Say', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(678, '13294456', NULL, 'Kadzhi-Saz Gorge', 'Canyons', 'Canyons', 'Issyk Kul Province Kaji-Say', 'Issyk Kul ', 'Kaji-Say', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(679, '1060132', NULL, 'Issyk-Kul Lake', 'Bodies of Water', 'Bodies of Water', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', 'Tian Shan Mountains, Karakol 722360 Kyrgyzstan', '', '', '', '42.443169', '78.430655', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(680, '2709342', NULL, 'Altyn Arashan', 'Hot Springs & Geysers', 'Hot Springs & Geysers', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '', '', '9.97E+11', '', '42.346957', '78.574065', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(681, '8791818', NULL, 'Ala Kul Lake', 'Bodies of Water', 'Bodies of Water', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '', 'http://tourtapp.com/destinations/ala-kul-lake/', '9.97E+11', 'info@tourtapp.com', '42.37472', '78.61', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(682, '5529525', NULL, 'Holy Trinity Russian Orthodox Cathederal', 'Churches & Cathedrals', 'Churches & Cathedrals', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', 'Holy Trinity Russian Orthodox Cathederal, Karakol 722360 Kyrgyzstan', '', '', '', '42.485223', '78.391378', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(683, '736889', NULL, 'Karakol Ski Base', 'Ski & Snowboard Areas', 'Ski & Snowboard Areas', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '', 'http://www.ski-karakol.com/', '9.97E+11', '', '42.414671', '78.411884', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(684, '4221145', NULL, 'Nikolai Przhevalsky Museum', 'Speciality Museums', 'Speciality Museums', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', 'Ak-Su, Karakol 722360 Kyrgyzstan', 'http://www.ecotrek.kg/', '9.97E+11', '', '42.573498', '78.307578', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(685, '5999969', NULL, 'Dungan Mosque', 'Points of Interest & Landmarks', 'Points of Interest & Landmarks', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '', 'http://hikingkyrgyzstan.com/blog-about-kyrgyzstan/karakol/', '9.97E+11', 'hikingkyrgzystan@gmail.com', '42.485223', '78.391378', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(686, '6834930', NULL, 'Monument N.M. Przhevalsky', 'Points of Interest & LandmarksMonuments & Statues', 'Points of Interest & Landmarks Monuments & Statues', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', 'Dzerzhinsky Street, Karakol 722360 Kyrgyzstan', 'http://www.ecotrek.kg/', '9.97E+11', '', '42.573117', '78.309015', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(687, '6908490', NULL, 'Karakol Cattle Market', 'Farmers Markets', 'Farmers Markets', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '', 'http://www.advantour.com/kyrgyzstan/karakol/karakol-cattle-market.htm', '9.97E+11', '', '', '', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(688, '11933521', NULL, 'Jyrgalan Valley', 'Ski & Snowboard AreasValleys', 'Ski & Snowboard Areas Valleys', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '', '', '', '', '42.604531', '79.019198', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(689, '9996574', NULL, 'Karakol Gorge', 'MountainsGeologic Formations', 'Mountains Geologic Formations', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Province-Karakol', '', 'http://www.facebook.com/Kyrgyzguides', '9.97E+11', '', '', '', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(690, '7597610', NULL, 'Karakol Historical Museum', 'History Museums', 'History Museums', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Province-Karakol', 'Gagarin/Jamansariev, Karakol 722360 Kyrgyzstan', 'http://visitkarakol.com/localhistorymuseum', '9.96E+11', '', '42.485223', '78.391378', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(691, '9996588', NULL, 'Karakol Peak', 'State ParksMountains', 'State Parks Mountains', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '', 'http://karakolnaturepark.com/', '9.97E+11', '', '', '', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(692, '7155859', NULL, 'Saimaluu-Tash Reserve Museum', 'Speciality MuseumsPoints of Interest & Landmarks', 'Speciality Museums Points of Interest & Landmarks', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', 'Nordbredden Pa Issyk-Kul Soen, Karakol 722360 Kyrgyzstan', 'http://www.advantour.com/kyrgyzstan/museums/saimaluu-tash.htm', '', '', '', '', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(693, '10021276', NULL, 'Juuku Gorge', 'MountainsNature & Wildlife Areas', 'Mountains Nature & Wildlife Areas Canyons Geologic Formations', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '', 'http://www.ecotrek.kg/', '9.97E+11', '', '', '', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(694, '7602031', NULL, 'Karakol Tourist Information Center', 'Visitor Centers', 'Visitor Centers', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', 'Abdrahmanov St 130, Karakol 722360 Kyrgyzstan', 'https://www.facebook.com/Tourist-Information-Center-in-Karakol-1123711857671978/?ref=page_internal', '9.97E+11', '', '', '', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(695, '7393405', NULL, 'Bugu-Ene Zoo', 'Zoos', 'Zoos', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', 'Koenkozov/Parkovaya St., Karakol 722360 Kyrgyzstan', 'http://www.ecotrek.kg/', '9.97E+11', '', '', '', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(696, '9996561', NULL, 'Khan Tengri Peak', 'Mountains', 'Mountains', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(697, '10084870', NULL, 'Oguz-Bashi Peak', 'Geologic Formations', 'Geologic Formations', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(698, '12474845', NULL, 'Destination Karakol Visitor Center', 'Visitor Centers', 'Visitor Centers', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '22 Gagarin St Situated next to Fat Cat Coffee, Karakol 722360 Kyrgyzstan', 'https://destinationkarakol.com/about/services/', '9.97E+11', 'info@destinationkarakol.com', '42.486534', '78.391378', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(699, '10209155', NULL, 'Karkara Valley', 'MountainsNature & Wildlife Areas', 'Mountains Nature & Wildlife Areas Valleys', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(700, '10024241', NULL, 'Przewalski Peak', 'MountainsNature & Wildlife Areas', 'Mountains Nature & Wildlife Areas Geologic Formations', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '', 'http://www.ecotrek.kg/', '9.97E+11', '', '', '', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(701, '8066338', NULL, 'Children Park Balakai', 'Playgrounds', 'Playgrounds', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '', 'https://www.facebook.com/pages/%D0%94%D0%B5%D1%82%D1%81%D0%BA%D0%B8%D0%B9-%D0%9F%D0%B0%D1%80%D0%BA-%D0%91%D0%B0%D0%BB%D0%B0%D0%BA%D0%B0%D0%B9/1480074908912578?sk=timeline', '9.97E+11', '', '', '', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(702, '11897942', NULL, 'Antique Shop of Aleksandr Korablev', 'Antique Shops', 'Antique Shops', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Province-Karakol', 'Jamansariev Street Corner of Toktogul & Jamansariev, Karakol 722360 Kyrgyzstan', 'http://visitkarakol.com/antique_shop_karakol', '9.97E+11', '', '', '', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(703, '12501259', NULL, 'Karakol Meeting Point', 'Visitor Centers', 'Visitor Centers', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Province-Karakol', '86 Jusaev Street Karasaev St., Karakol 722200 Kyrgyzstan', 'http://duetkarakol.wordpress.com/meeting-point/', '9.97E+11', 'duetkarakol@gmail.com', '42.484449', '78.391378', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(704, '10516482', NULL, 'Sary-Jaz Valley', 'MountainsNature & Wildlife Areas', 'Mountains Nature & Wildlife Areas Valleys', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Province-Karakol', '', 'http://visitkarakol.com/sary_jaz', '9.97E+11', '', '', '', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(705, '10324956', NULL, 'Boris Yeltsin Peak', 'Mountains', 'Mountains', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(706, '10064765', NULL, 'Merzbacher Lake', 'Bodies of Water', 'Bodies of Water', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(707, '10024209', NULL, 'Djigit Peak', 'MountainsNature & Wildlife Areas', 'Mountains Nature & Wildlife Areas Geologic Formations', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '', 'http://www.ecotrek.kg/', '9.97E+11', '', '', '', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(708, '9996631', NULL, 'Telety Pass', 'MountainsNature & Wildlife Areas', 'Mountains Nature & Wildlife Areas Geologic Formations', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '', 'http://www.ecotrek.kg/', '9.97E+11', '', '', '', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(709, '13094936', NULL, 'River Park', 'Parks', 'Parks', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '195 Shapak Baatyr, Karakol 722360 Kyrgyzstan', 'http://www.destinationkarakol.com/', '', '', '', '', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(710, '15042333', NULL, 'Park Pobedy', 'Parks', 'Parks', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(711, '9996660', NULL, 'Jengish Peak', 'MountainsNature & Wildlife Areas', 'Mountains Nature & Wildlife Areas Geologic Formations', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '', 'http://www.ecotrek.kg/', '9.97E+11', '', '', '', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(712, '10236655', NULL, 'Tolgonai Ene Handcraft Workshop', 'Speciality Museums', 'Speciality Museums', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', 'Lenina St., 150, Karakol 722360 Kyrgyzstan', '', '9.97E+11', '', '', '', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(713, '14994464', NULL, 'The Monument of Aryk Myrza', 'Monuments & Statues', 'Monuments & Statues', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', 'Tsentralny Skver, Karakol 722360 Kyrgyzstan', '', '', '', '', '', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(714, '15042355', NULL, 'Monument to Tagai-Biy', 'Points of Interest & LandmarksMonuments & Statues', 'Points of Interest & Landmarks Monuments & Statues', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(715, '8805474', NULL, 'Issyk Kul Brand Shop', 'Speciality & Gift Shops', 'Speciality & Gift Shops', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Province-Karakol', 'Toktogula, Karakol 722360 Kyrgyzstan', 'http://www.facebook.com/One-Village-One-Product-Issyk-kul-236219876529319', '9.96E+11', '', '', '', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(716, '15042493', NULL, 'Pushkin Park', 'Parks', 'Parks', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(717, '15042315', NULL, 'Tsentralny Skver', 'Parks', 'Parks', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(718, '23839711', NULL, 'The Hut', 'Bars & Clubs', 'Bars & Clubs', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Province-Karakol', '', 'http://instagram.com/the_hut_karakol?utm_medium=copy_link', '9.97E+11', '', '42.484449', '78.391378', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(719, '17562257', NULL, 'Karakol Big Bazaar', 'Farmers Markets', 'Farmers Markets', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', 'Corner of Torgoev and Aldashev Streets, Karakol 722360 Kyrgyzstan', '', '', '', '', '', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(720, '17562255', NULL, 'Small Bazaar', 'Farmers Markets', 'Farmers Markets', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', 'Corner of Alybakov & Gagarin Streets, Karakol 722360 Kyrgyzstan', '', '', '', '', '', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(721, '17604359', NULL, 'Massage Karakol Tatiana', 'Spas', 'Spas', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', 'Koenkozova/ Jamansarieva, Karakol 722200 Kyrgyzstan', 'https://massagekarakol.business.site/', '9.97E+11', '', '42.484449', '78.391378', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(722, '17539793', NULL, 'Issyk-Kul Kayaking', 'Kayaking & Canoeing', 'Kayaking & Canoeing', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(723, '10105957', NULL, 'Sky Trial', 'Parasailing & Paragliding', 'Parasailing & Paragliding', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(724, '10021290', NULL, 'Jyrgalan Hot Spring', 'SpasThermal Spas', 'Spas Thermal Spas', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(725, '16816548', NULL, 'Duet SPA & Salon', 'Spas', 'Spas', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Province-Karakol', '150 Karasaeva Street Jusaev Street, Karakol 722200 Kyrgyzstan', 'http://www.facebook.com/duetspasalon/', '9.97E+11', 'duetspasalon@gmail.com', '42.484449', '78.391378', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(726, '17540227', NULL, 'Urban Monkey', 'Bars & Clubs', 'Bars & Clubs', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', 'Kydyr Ake, 4 Urban Monkey Tent Hostel &bar, Karakol 722360 Kyrgyzstan', 'http://hostelinkarakol.com/', '9.97E+11', '', '', '', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(727, '7787967', NULL, 'Zum Depart', 'Speciality & Gift ShopsDepartment Stores', 'Speciality & Gift Shops Department Stores Shopping Malls', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', 'Toktogula St., Karakol 722360 Kyrgyzstan', '', '', '', '', '', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(728, '10021304', NULL, 'Saruu Hot Spring', 'SpasThermal Spas', 'Spas Thermal Spas', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '', '', '9.96E+11', '', '', '', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(729, '11911195', NULL, 'Time for Travel', 'Bus Services', 'Bus Services', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '', 'http://www.ecotrek.kg/index.php/en/', '9.97E+11', 'vbn_nbv@mail.ru', '', '', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(730, '17708724', NULL, 'Aibek Omurbek uulu', 'Escape GamesTaxis & Shuttles', 'Escape Games Taxis & Shuttles Bike Tours Hiking & Camping Tours Food Tours Horseback Riding Tours Day Trips', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(731, '23309574', NULL, 'Lake Zhashyl Kol', 'Bodies of Water', 'Bodies of Water', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', 'Karakol gorge, Karakol 722360 Kyrgyzstan', '', '', '', '42.447042', '78.3848', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(732, '6628585', NULL, 'Radon Springs Djuuku', 'Bodies of Water', 'Bodies of Water', 'Issyk Kul Province Saruu', 'Issyk Kul ', 'Saruu', '', 'http://triptokyrgyzstan.com/ru/destinations/places/goryachie-istochniki-dzhuuku#.U3OFIigZKRM', '', '', '', '', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(733, '14971363', NULL, 'Suttu Bulak', 'Bodies of Water', 'Bodies of Water', 'Issyk Kul Province Semenovka', 'Issyk Kul ', 'Semenovka', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(734, '8066189', NULL, 'Temple of the Holy Great Martyr Demetrios', 'Churches & Cathedrals', 'Churches & Cathedrals', 'Issyk Kul Province Teploklyuchenka', 'Issyk Kul ', 'Teplokyuchenko', 'Lenina St., 95, Teploklyuchenka 722347 Kyrgyzstan', 'http://www.eparchia.kg/hramy/36', '9.97E+11', '', '', '', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(735, '7020995', NULL, 'Canyon Fairy Tale', 'Canyons', 'Canyons', 'Issyk Kul Province Tosor', 'Issyk Kul ', 'Province-Tosor', '', 'http://www.facebook.com/Pegasadventure/', '9.97E+11', '', '42.162282', '77.347672', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(736, '12899912', NULL, 'Canyon Skazka', 'Geologic Formations', 'Geologic Formations', 'Issyk Kul Province Tosor', 'Issyk Kul ', 'Tosor', '', '', '', '', '42.162257', '77.348095', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(737, '10325110', NULL, 'Tosor Pass', 'MountainsCanyons', 'Mountains Canyons Valleys', 'Issyk Kul Province Tosor', 'Issyk Kul ', 'Tosor', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10');
INSERT INTO `places` (`id`, `CSV_Id`, `image`, `Name`, `Category`, `Attraction_Type`, `Region`, `Rayon`, `City`, `Address`, `Website`, `Telephone`, `Email`, `Latitude`, `Longitude`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
(738, '8504342', NULL, 'Sary Chelek Biosphere Reserve', 'National Parks', 'National Parks', 'Jalal-Abad Province', 'Jalal-Abad', 'Province', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(739, '6433871', NULL, 'Saimaluu Tash', 'National Parks', 'National Parks', 'Jalal-Abad Province', 'Jalal-Abad', 'Jalal-Abad', '', 'http://whc.unesco.org/en/tentativelists/1512/', '', '', '', '', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(740, '10113022', NULL, 'Kara-Suu Lake', 'Bodies of WaterMountains', 'Bodies of Water Mountains Nature & Wildlife Areas Canyons Geologic Formations', 'Jalal-Abad Province', 'Jalal-Abad', 'Province', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(741, '10084882', NULL, 'Arslanbob Walnut Forest', 'National ParksNature & Wildlife Areas', 'National Parks Nature & Wildlife Areas Forests', 'Jalal-Abad Province Arslanbob', 'Jalal-Abad', 'Arslanbob', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(742, '10089052', NULL, 'Arslanbob Waterfalls', 'Bodies of WaterNature & Wildlife Areas', 'Bodies of Water Nature & Wildlife Areas Waterfalls', 'Jalal-Abad Province Arslanbob', 'Jalal-Abad', 'Arslanbob', '', 'http://www.cbtkyrgyzstan.kg/en/cbt-groups/cbt-arstanbap', '9.97E+11', '', '', '', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(743, '10091476', NULL, 'Holy Rock', 'MountainsNational Parks', 'Mountains National Parks Canyons Forests Geologic Formations', 'Jalal-Abad Province Arslanbob', 'Jalal-Abad', 'Arslanbob', '', 'http://www.cbtkyrgyzstan.kg/en/cbt-groups/cbt-arstanbap', '9.97E+11', '', '', '', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(744, '10209139', NULL, 'Padysh-Ata Reserve', 'State ParksNational Parks', 'State Parks National Parks Nature & Wildlife Areas', 'Jalal-Abad Province Jalal-Abad', 'Jalal-Abad', 'Jalal-Abad', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(745, '10112277', NULL, 'Shah-Fazil', 'Religious Sites', 'Religious Sites', 'Jalal-Abad Province Safed-Bulan', 'Jalal-Abad', 'Bulan', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(746, '7912835', NULL, 'Toktogul Lake', 'Bodies of Water', 'Bodies of Water', 'Jalal-Abad Province Toktogul', 'Jalal-Abad', 'Toktogul', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(747, '10205989', NULL, 'Chichkan Gorge', 'MountainsCanyons', 'Mountains Canyons Geologic Formations', 'Jalal-Abad Province Toktogul', 'Jalal-Abad', 'Toktogul', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(748, '14000902', NULL, 'Ak-Tash Ski Resort', 'Ski & Snowboard Areas', 'Ski & Snowboard Areas', 'Kashka Suu', 'Chuy', 'Kashka-Suu', '', 'http://aktash.kg/', '9.97E+11', 'ak-tash@inbox.ru', '', '', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(749, '2701597', NULL, 'Song Kol Lake', 'Bodies of Water', 'Bodies of Water', 'Naryn Province', 'Naryn', 'Province', 'Song Kol lake pionerskaya 20, Kochkor, 722600 Kyrgyzstan', '', '', 'Pegasadventure@gmail.com', '42.20082', '75.765575', '1', 14, '2023-07-03 06:15:10', '2023-07-03 06:15:10'),
(750, '459861', NULL, 'Son Kul Lake', 'Bodies of Water', 'Bodies of Water', 'Naryn Province', 'Naryn', 'Province', 'Kyrgyzstan, Kyrgyzstan, 720000 Kyrgyzstan', '', '', '', '', '', '1', 14, '2023-07-03 06:15:11', '2023-07-03 06:15:11'),
(751, '459862', NULL, 'Tash Rabat', 'Valleys', 'Valleys', 'Naryn Province', 'Naryn', 'Naryn-Province', '', 'http://www.facebook.com/Pegasadventure/', '9.97E+11', '', '', '', '1', 14, '2023-07-03 06:15:11', '2023-07-03 06:15:11'),
(752, '10063840', NULL, 'Shyrdakbek Korgon', 'Ancient RuinsPoints of Interest & Landmarks', 'Ancient Ruins Points of Interest & Landmarks', 'Naryn Province', 'Naryn', 'Province', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:11', '2023-07-03 06:15:11'),
(753, '8756348', NULL, 'Kol Suu', 'Bodies of Water', 'Bodies of Water', 'Naryn Province At-Bashi', 'Naryn', 'At-Bashi', '', 'http://www.facebook.com/Pegasadventure/', '9.97E+11', '', '40.63896', '76.40482', '1', 14, '2023-07-03 06:15:11', '2023-07-03 06:15:11'),
(754, '8408187', NULL, 'Chatyr-Kul Lake', 'Bodies of WaterBeaches', 'Bodies of Water Beaches', 'Naryn Province At-Bashi', 'Naryn', 'Bashi', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:11', '2023-07-03 06:15:11'),
(755, '10021352', NULL, 'Shar Waterfall', 'Waterfalls', 'Waterfalls', 'Naryn Province At-Bashi', 'Naryn', 'Bashi', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:11', '2023-07-03 06:15:11'),
(756, '8791689', NULL, 'Kashka Suu', 'Geologic Formations', 'Geologic Formations', 'Naryn Province At-Bashi', 'Naryn', 'Bashi', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:11', '2023-07-03 06:15:11'),
(757, '10168566', NULL, 'Koshoy Korgon', 'Ancient RuinsPoints of Interest & Landmarks', 'Ancient Ruins Points of Interest & Landmarks Nature & Wildlife Areas', 'Naryn Province Kara-Suu', 'Naryn', 'Suu', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:11', '2023-07-03 06:15:11'),
(758, '9996546', NULL, 'Kol-Ukok Lake', 'Bodies of Water', 'Bodies of Water', 'Naryn Province Kochkor', 'Naryn', 'Kochkor', 'Kyrgyzstan, Kochkor Kol ukok, Kochkor 722500 Kyrgyzstan', '', '9.97E+11', 'azizovmaxi@gmail.com', '', '', '1', 14, '2023-07-03 06:15:11', '2023-07-03 06:15:11'),
(759, '10357610', NULL, 'Orto-Tokoy Water Reservoir', 'Bodies of Water', 'Bodies of Water', 'Naryn Province Kochkor', 'Naryn', 'Kochkor', '', 'http://kyrgyznature.com/', '9.97E+11', '', '', '', '1', 14, '2023-07-03 06:15:11', '2023-07-03 06:15:11'),
(760, '10239217', NULL, 'Kyzart Pass', 'Scenic Drives', 'Scenic Drives', 'Naryn Province Kochkor', 'Naryn', 'Kochkor', '', '', '', '', '42.201778', '75.76652', '1', 14, '2023-07-03 06:15:11', '2023-07-03 06:15:11'),
(761, '10239307', NULL, 'Dolon Pass', 'Scenic Drives', 'Scenic Drives', 'Naryn Province Kochkor', 'Naryn', 'Kochkor', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:11', '2023-07-03 06:15:11'),
(762, '10224561', NULL, 'Jailoo Sarala-Saz', 'MountainsNature & Wildlife Areas', 'Mountains Nature & Wildlife Areas', 'Naryn Province Kochkor', 'Naryn', 'Kochkor', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:11', '2023-07-03 06:15:11'),
(763, '10239316', NULL, 'Altyn Kol', 'Speciality & Gift Shops', 'Speciality & Gift Shops', 'Naryn Province Kochkor', 'Naryn', 'Kochkor', 'Pionerskaya St., 22 A next door to CBT Kochkor office, Kochkor 722500 Kyrgyzstan', '', '9.97E+11', 'altynkol@gmail.com', '', '', '1', 14, '2023-07-03 06:15:11', '2023-07-03 06:15:11'),
(764, '10063829', NULL, 'Cholok Korgon', 'Ancient RuinsPoints of Interest & Landmarks', 'Ancient Ruins Points of Interest & Landmarks', 'Naryn Province Konorchok', 'Naryn', 'Konorchok', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:11', '2023-07-03 06:15:11'),
(765, '17690462', NULL, 'Museum of Kozhomkul', 'Speciality Museums', 'Speciality Museums', 'Naryn Province Kyzyloy', 'Naryn', 'Kyzyl-oi', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:11', '2023-07-03 06:15:11'),
(766, '12876326', NULL, 'Kel-Suu Lake', 'Bodies of Water', 'Bodies of Water', 'Naryn Province Naryn', 'Naryn', 'Province-Naryn', '', 'http://m.facebook.com/Pegasadventure/', '9.97E+11', '', '40.70197', '76.39013', '1', 14, '2023-07-03 06:15:11', '2023-07-03 06:15:11'),
(767, '6882292', NULL, 'National Park Salkyn-Tor', 'National ParksParks', 'National Parks Parks', 'Naryn Province Naryn', 'Naryn', 'Naryn', '', 'http://triptokyrgyzstan.com/en/destinations/places/national-park-salkyn-tor', '', '', '', '', '1', 14, '2023-07-03 06:15:11', '2023-07-03 06:15:11'),
(768, '10091968', NULL, 'Kok-Kiya Valley', 'Valleys', 'Valleys', 'Naryn Province Naryn', 'Naryn', 'Naryn', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:11', '2023-07-03 06:15:11'),
(769, '10091978', NULL, 'Moldo-Ashu Pass', 'Mountains', 'Mountains', 'Naryn Province Naryn', 'Naryn', 'Naryn', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:11', '2023-07-03 06:15:11'),
(770, '6881749', NULL, 'Blue Mosque', 'Points of Interest & LandmarksArchitectural Buildings', 'Points of Interest & Landmarks Architectural Buildings Religious Sites', 'Naryn Province Naryn', 'Naryn', 'Naryn', '1200 Lenin St, Naryn 722600 Kyrgyzstan', 'http://everythingturkic.tumblr.com/post/64415800832/mosque-in-naryn-kyrgyzstan', '', '', '', '', '1', 14, '2023-07-03 06:15:11', '2023-07-03 06:15:11'),
(771, '10021326', NULL, 'Eki-Naryn Valley', 'Hiking TrailsValleys', 'Hiking Trails Valleys', 'Naryn Province Naryn', 'Naryn', 'Naryn', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:11', '2023-07-03 06:15:11'),
(772, '10091805', NULL, 'Kara-Keche Pass', 'Biking TrailsValleys', 'Biking Trails Valleys', 'Naryn Province Naryn', 'Naryn', 'Naryn', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:11', '2023-07-03 06:15:11'),
(773, '10021324', NULL, 'Torugart Pass', 'Mountains', 'Mountains', 'Naryn Province Naryn', 'Naryn', 'Naryn', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:11', '2023-07-03 06:15:11'),
(774, '10085186', NULL, 'Naryn National Reserve', 'MountainsNational Parks', 'Mountains National Parks Nature & Wildlife Areas Forests', 'Naryn Province Naryn', 'Naryn', 'Naryn', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:11', '2023-07-03 06:15:11'),
(775, '10126683', NULL, 'Ala Mischuk', 'Mountains', 'Mountains', 'Naryn Province Naryn', 'Naryn', 'Naryn', '', '', '9.97E+11', '', '', '', '1', 14, '2023-07-03 06:15:11', '2023-07-03 06:15:11'),
(776, '10089079', NULL, '.', 'Nature & Wildlife AreasWaterfalls', 'Nature & Wildlife Areas Waterfalls', 'Naryn Province Naryn', 'Naryn', 'Naryn', '', 'http://www.facebook.com/Pegasadventure/', '9.97E+11', '', '', '', '1', 14, '2023-07-03 06:15:11', '2023-07-03 06:15:11'),
(777, '7022968', NULL, 'River Kekemeren', 'Bodies of Water', 'Bodies of Water', 'Naryn Province Naryn', 'Naryn', 'Naryn', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:11', '2023-07-03 06:15:11'),
(778, '10239409', NULL, 'Arpa Valley', 'MountainsNature & Wildlife Areas', 'Mountains Nature & Wildlife Areas Valleys', 'Naryn Province Naryn', 'Naryn', 'Naryn', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:11', '2023-07-03 06:15:11'),
(779, '10158584', NULL, 'Ala Myshyk Caves', 'Caverns & Caves', 'Caverns & Caves', 'Naryn Province Naryn', 'Naryn', 'Naryn', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:11', '2023-07-03 06:15:11'),
(780, '6697330', NULL, 'Mountain Sulaiman-Too', 'Mountains', 'Mountains', 'Osh', 'Osh', 'Osh', '', '', '', '', '40.540166', '72.78528', '1', 14, '2023-07-03 06:15:11', '2023-07-03 06:15:11'),
(781, '3377828', NULL, 'Lenin Peak', 'Mountains', 'Mountains', 'Osh', 'Osh', 'Osh', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:11', '2023-07-03 06:15:11'),
(782, '6697323', NULL, 'Museum Sulaiman Too', 'History Museums', 'History Museums', 'Osh', 'Osh', 'Osh', 'Mountain Sulaiman Too, Osh 714000 Kyrgyzstan', 'http://www.facebook.com/Pegasadventure/', '9.96E+11', 'sulaimanto@mail.ru', '40.540166', '72.78528', '1', 14, '2023-07-03 06:15:11', '2023-07-03 06:15:11'),
(783, '8403820', NULL, 'Abshir Ata Falls', 'Bodies of WaterWaterfalls', 'Bodies of Water Waterfalls', 'Osh', 'Osh', 'Osh', '', 'http://www.visitalay.kg/', '9.96E+11', '', '', '', '1', 14, '2023-07-03 06:15:11', '2023-07-03 06:15:11'),
(784, '10206006', NULL, 'Alay Valley', 'Valleys', 'Valleys', 'Osh', 'Osh', 'Osh', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:11', '2023-07-03 06:15:11'),
(785, '8286089', NULL, 'Osh New Mosque', 'Religious Sites', 'Religious Sites', 'Osh', 'Osh', 'Osh', '', 'http://www.visitalay.kg/', '9.96E+11', '', '40.540166', '72.78528', '1', 14, '2023-07-03 06:15:11', '2023-07-03 06:15:11'),
(786, '15036886', NULL, 'Lenin Monument', 'Points of Interest & LandmarksMonuments & Statues', 'Points of Interest & Landmarks Monuments & Statues', 'Osh', 'Osh', 'Osh', 'Lenin Ave, Osh 714000 Kyrgyzstan', '', '', '', '40.531855', '72.786448', '1', 14, '2023-07-03 06:15:11', '2023-07-03 06:15:11'),
(787, '10801308', NULL, 'Kyrgyz Ata National Park', 'MountainsNature & Wildlife Areas', 'Mountains Nature & Wildlife Areas Hiking Trails', 'Osh', 'Osh', 'Osh', 'Nootkat region 40 km from the city of Osh, Osh 714000 Kyrgyzstan', 'http://www.visitalay.com/', '9.97E+11', '', '', '', '1', 14, '2023-07-03 06:15:11', '2023-07-03 06:15:11'),
(788, '10196880', NULL, 'Irkeshtam Pass', 'MountainsPoints of Interest & Landmarks', 'Mountains Points of Interest & Landmarks Nature & Wildlife Areas', 'Osh', 'Osh', 'Osh', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:11', '2023-07-03 06:15:11'),
(789, '15036895', NULL, 'Russian Orthodox Church', 'Points of Interest & LandmarksReligious Sites', 'Points of Interest & Landmarks Religious Sites Churches & Cathedrals', 'Osh', 'Osh', 'Osh', 'Kumanjan Datka St., Osh 714000 Kyrgyzstan', '', '', '', '', '', '1', 14, '2023-07-03 06:15:11', '2023-07-03 06:15:11'),
(790, '10832719', NULL, 'Mausoleum of Asaf ibn Burkhiy', 'Points of Interest & LandmarksReligious Sites', 'Points of Interest & Landmarks Religious Sites', 'Osh', 'Osh', 'Osh', '', '', '', '', '40.53989', '72.781655', '1', 14, '2023-07-03 06:15:11', '2023-07-03 06:15:11'),
(791, '15675538', NULL, 'Alay Mountains', 'Mountains', 'Mountains', 'Osh', 'Osh', 'Osh', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:11', '2023-07-03 06:15:11'),
(792, '11909476', NULL, 'Osh Regional Museum of Fine Arts of Sadykov', 'Art Museums', 'Art Museums', 'Osh', 'Osh', 'Osh', 'Alebastrova St., 31, Osh 714000 Kyrgyzstan', 'http://www.facebook.com/oshksm/', '9.96E+11', '', '40.540166', '72.78528', '1', 14, '2023-07-03 06:15:11', '2023-07-03 06:15:11'),
(793, '15036873', NULL, 'Alymbek Datkanyn Aykeli', 'Points of Interest & LandmarksMonuments & Statues', 'Points of Interest & Landmarks Monuments & Statues', 'Osh', 'Osh', 'Osh', '', '', '', '', '40.540166', '72.78528', '1', 14, '2023-07-03 06:15:11', '2023-07-03 06:15:11'),
(794, '2711666', NULL, 'Jayma Bazaar Osh', 'Speciality & Gift Shops', 'Speciality & Gift Shops', 'Osh', 'Osh', 'Osh', 'Zainabetdinova, Osh 714000 Kyrgyzstan', '', '', '', '40.540166', '72.78528', '1', 14, '2023-07-03 06:15:11', '2023-07-03 06:15:11'),
(795, '10209115', NULL, 'Kulunatin National Reserve', 'State ParksNational Parks', 'State Parks National Parks Nature & Wildlife Areas', 'Osh', 'Osh', 'Osh', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:11', '2023-07-03 06:15:11'),
(796, '15036833', NULL, 'Dom Babura Mosque', 'Historic SitesPoints of Interest & Landmarks', 'Historic Sites Points of Interest & Landmarks Religious Sites', 'Osh', 'Osh', 'Osh', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:11', '2023-07-03 06:15:11'),
(797, '10832714', NULL, 'Mosque of Ravat Abdullakhan', 'Points of Interest & LandmarksReligious Sites', 'Points of Interest & Landmarks Religious Sites Churches & Cathedrals', 'Osh', 'Osh', 'Osh', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:11', '2023-07-03 06:15:11'),
(798, '10205995', NULL, 'Abshir-Say Valley', 'Nature & Wildlife AreasValleys', 'Nature & Wildlife Areas Valleys', 'Osh', 'Osh', 'Osh', '', 'http://www.visitalay.kg/#_=_', '', '', '', '', '1', 14, '2023-07-03 06:15:11', '2023-07-03 06:15:11'),
(799, '10205997', NULL, 'Kozhokelen Valley', 'MountainsNature & Wildlife Areas', 'Mountains Nature & Wildlife Areas Valleys', 'Osh', 'Osh', 'Osh', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:11', '2023-07-03 06:15:11'),
(800, '15036931', NULL, 'Monument to Toktogul Satylganov', 'Points of Interest & LandmarksMonuments & Statues', 'Points of Interest & Landmarks Monuments & Statues', 'Osh', 'Osh', 'Osh', 'Lenina Ave., Osh 714000 Kyrgyzstan', '', '', '', '40.518914', '72.795365', '1', 14, '2023-07-03 06:15:11', '2023-07-03 06:15:11'),
(801, '15036941', NULL, 'Enenin Koz Zhashy Park', 'Parks', 'Parks', 'Osh', 'Osh', 'Osh', 'Lenina Ave., Osh 714000 Kyrgyzstan', '', '', '', '40.518914', '72.795365', '1', 14, '2023-07-03 06:15:11', '2023-07-03 06:15:11'),
(802, '13959294', NULL, 'Nomad Store', 'Speciality & Gift Shops', 'Speciality & Gift Shops', 'Osh', 'Osh', 'Osh', 'Bayalinova St., 1 Osh Nuru Hotel, Osh 714000 Kyrgyzstan', 'http://www.facebook.com/oshnomadstore/', '9.97E+11', 'nomadstore.osh@gmail.com', '40.535271', '72.78528', '1', 14, '2023-07-03 06:15:11', '2023-07-03 06:15:11'),
(803, '14073257', NULL, 'Harley Club', 'Bars & ClubsKaraoke Bars', 'Bars & Clubs Karaoke Bars Dance Clubs & Discos', 'Osh', 'Osh', 'Osh', 'Shakirova st., 108a, Osh 714000 Kyrgyzstan', 'http://www.dolcevitaosh.tilda.ws/', '9.97E+11', 'dvita.osh@gmail.com', '', '', '1', 14, '2023-07-03 06:15:11', '2023-07-03 06:15:11'),
(804, '21223119', NULL, 'Quicktransfer - Osh', 'Taxis & Shuttles', 'Taxis & Shuttles', 'Osh', 'Osh', 'Osh', '86-90 Paul Street, Osh EC2A 4NE Kyrgyzstan', 'https://quicktransfer.com/', '1347-980-7145', 'booking@quicktransfer.com', '', '', '1', 14, '2023-07-03 06:15:11', '2023-07-03 06:15:11'),
(805, '10068410', NULL, 'Lake Tulpar-Kol', 'Bodies of Water', 'Bodies of Water', 'Osh Province Sary Mogul', 'Osh', 'Sary-Mogul', '', '', '9.97E+11', '', '', '', '1', 14, '2023-07-03 06:15:11', '2023-07-03 06:15:11'),
(806, '8514323', NULL, 'Uzgen Archaeological-Architectural Museum Complex', 'Historic SitesArchitectural Buildings', 'Historic Sites Architectural Buildings', 'Osh Province Uzgen', 'Osh', 'Uzgen', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:11', '2023-07-03 06:15:11'),
(807, '10091498', NULL, 'Kirov Reservoir', 'Bodies of WaterNature & Wildlife Areas', 'Bodies of Water Nature & Wildlife Areas', 'Talas Province Manas', 'Talas', 'Manas', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:11', '2023-07-03 06:15:11'),
(808, '10205982', NULL, 'Gumbez of Manas', 'Points of Interest & Landmarks', 'Points of Interest & Landmarks', 'Talas Province Talas', 'Talas', 'Talas', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:11', '2023-07-03 06:15:11'),
(809, '10091481', NULL, 'Besh-Tash Lake', 'Bodies of WaterNature & Wildlife Areas', 'Bodies of Water Nature & Wildlife Areas', 'Talas Province Talas', 'Talas', 'Talas', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:11', '2023-07-03 06:15:11'),
(810, '10084867', NULL, 'Manas Peak', 'MountainsNational Parks', 'Mountains National Parks Geologic Formations Valleys', 'Talas Province Talas', 'Talas', 'Talas', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:11', '2023-07-03 06:15:11'),
(811, '10209161', NULL, 'Aisha Bibi - Chongkapka Border', 'MountainsPoints of Interest & Landmarks', 'Mountains Points of Interest & Landmarks Nature & Wildlife Areas', 'Talas Province Talas', 'Talas', 'Talas', '', '', '', '', '', '', '1', 14, '2023-07-03 06:15:11', '2023-07-03 06:15:11'),
(812, '15639909', NULL, 'Karavshin Valley', 'Valleys', 'Valleys', 'Batken', 'Batken', 'Batken', 'Bus Stop, 150 Feet Ring Rd, near Sheetalpark, Sheetal Park, Manharpura 1, Madhapar, Rajkot, Gujarat 360007', NULL, NULL, NULL, '42.8509131sd', '74.594841das', '1', 1, '2023-07-17 00:47:01', '2023-07-31 04:47:09'),
(813, '24990462', NULL, 'Batken Central Mosque', 'Religious Sites', 'Religious Sites', 'Batken ', 'Batken', 'Batken', 'Batken, Batken 715100 Kyrgyzstan', '', '', '', '', '', '1', 1, '2023-07-17 00:47:01', '2023-07-17 00:47:01'),
(814, '24990464', NULL, 'Mechet', 'Religious Sites', 'Religious Sites', 'Batken ', 'Batken', 'Batken', 'Batken, Batken 715100 Kyrgyzstan', '', '', '', '', '', '1', 1, '2023-07-17 00:47:01', '2023-07-17 00:47:01'),
(815, '735790', NULL, 'Ala-Archa Gorge', 'National ParksGeologic Formations', 'National Parks Geologic Formations', 'Chui', 'Chui', 'Bishkek', '', 'http://ala-archa.kg/', '9.97E+11', 'info@ala-archa.kg', '', '', '1', 1, '2023-07-17 00:47:01', '2023-07-17 00:47:01'),
(816, '611200', NULL, 'Osh Bazaar', 'Flea & Street Markets', 'Flea & Street Markets', 'Chui', 'Chui', 'Bishkek', '', 'http://www.facebook.com/Kyrgyzguides/', '9.97E+11', '', '42.870679', '74.59064', '1', 1, '2023-07-17 00:47:01', '2023-07-17 00:47:01'),
(817, '3665606', NULL, 'Panfilov Park', 'Parks', 'Parks', 'Chui', 'Chui', 'Bishkek', '368 Frunze Street, Bishkek 720000 Kyrgyzstan', 'https://www.facebook.com/park.panfilova/', '9.96E+11', '', '42.867355', '74.592627', '1', 1, '2023-07-17 00:47:01', '2023-07-17 00:47:01'),
(818, '459876', NULL, 'State History Museum', 'History Museums', 'History Museums', 'Chui', 'Chui', 'Bishkek', 'Ala-Too Square, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '42.867355', '74.592627', '1', 1, '2023-07-17 00:47:01', '2023-07-17 00:47:01'),
(819, '7396665', NULL, 'Ala-Too Square', 'Historic Sites', 'Historic Sites', 'Chui', 'Chui', 'Bishkek', '', '', '', '', '42.867355', '74.592627', '1', 1, '2023-07-17 00:47:01', '2023-07-17 00:47:01'),
(820, '459878', NULL, 'Mikhail Frunze Museum', 'Military Museums', 'Military Museums', 'Chui', 'Chui', 'Bishkek', '364, Frunze Str., Bishkek 720000 Kyrgyzstan', 'http://domfrunze.kg/', '227700', '', '42.867355', '74.592627', '1', 1, '2023-07-17 00:47:01', '2023-07-17 00:47:01'),
(821, '6726558', NULL, 'Spa Center Afrodita and Apollo', 'Spas', 'Spas', 'Chui', 'Chui', 'Bishkek', 'Zhukeyeva-Pudovkina St., 41/Skryabina, Bishkek 720000 Kyrgyzstan', 'http://baytur.kg/', '9.97E+11', 'pr@baytur.kg', '42.850913', '74.59484', '1', 1, '2023-07-17 00:47:01', '2023-07-17 00:47:01'),
(822, '8761397', NULL, 'Monument to Manas the Great', 'Historic SitesPoints of Interest & Landmarks', 'Historic Sites Points of Interest & Landmarks Monuments & Statues', 'Chui', 'Chui', 'Bishkek', '', 'http://daniyarov.kg/', '9.97E+11', 'assele@gmail.com', '42.867355', '74.592627', '1', 1, '2023-07-17 00:47:01', '2023-07-17 00:47:01'),
(823, '3710581', NULL, 'Dordoi Bazaar', 'Flea & Street Markets', 'Flea & Street Markets', 'Chui', 'Chui', 'Bishkek', '', 'http://www.dordoi.net/', '9.99E+11', '', '42.906078', '74.60261', '1', 1, '2023-07-17 00:47:01', '2023-07-17 00:47:01'),
(824, '459877', NULL, 'Museum of Fine Arts', 'Art Museums', 'Art Museums', 'Chui', 'Chui', 'Bishkek', '196, Sovietskaya Str., Bishkek 720000 Kyrgyzstan', 'http://knmii.kg/', '266867', '', '42.867355', '74.592627', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(825, '7790854', NULL, 'Monument to Those Who Died For Freedom', 'Monuments & Statues', 'Monuments & Statues', 'Chui', 'Chui', 'Bishkek', 'Crossing of Chui Avenue and Panfilova St., Bishkek 720000 Kyrgyzstan', '', '', '', '42.867355', '74.592627', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(826, '10021245', NULL, 'Issyk-Ata Gorge', 'Hiking Trails', 'Hiking Trails', 'Chui', 'Chui', 'Bishkek', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(827, '10206030', NULL, 'Konorchek Canyons', 'MountainsNature & Wildlife Areas', 'Mountains Nature & Wildlife Areas Canyons', 'Chui', 'Chui', 'Bishkek', '', 'http://www.facebook.com/Pegasadventure/', '9.96E+11', '', '', '', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(828, '8411429', NULL, 'Bishkek Park', 'Shopping Malls', 'Shopping Malls', 'Chui', 'Chui', 'Bishkek', 'Kiyevskaya St., 148, Bishkek 720000 Kyrgyzstan', 'http://bishkekpark.kg/', '9.96E+11', '', '42.867355', '74.592627', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(829, '10758340', NULL, 'Victory Square', 'Points of Interest & Landmarks', 'Points of Interest & Landmarks', 'Chui', 'Chui', 'Bishkek', '', '', '', '', '42.867355', '74.594163', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(830, '10021159', NULL, 'Alamedin Gorge', 'MountainsNature & Wildlife Areas', 'Mountains Nature & Wildlife Areas Geologic Formations', 'Chui', 'Chui', 'Bishkek', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(831, '8090038', NULL, 'Flagstaff With Country Flag', 'Points of Interest & LandmarksLookouts', 'Points of Interest & Landmarks Lookouts', 'Chui', 'Chui', 'Bishkek', 'Ala-Too Square, Bishkek, Kyrgyzstan Boz-Boltok Mountain, Bishkek 720000 Kyrgyzstan', '', '', '', '42.867355', '74.592627', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(832, '7790830', NULL, 'Monument to Baatyr Kaba Uulu Kozhomkul', 'Monuments & Statues', 'Monuments & Statues', 'Chui', 'Chui', 'Bishkek', 'Togolok Moldo St., Bishkek 720000 Kyrgyzstan', 'http://www.tuk.kg/index.php', '9.96E+11', '', '42.867355', '74.592627', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(833, '8761392', NULL, 'Monument to Chingiz Aitmatov', 'Points of Interest & LandmarksMonuments & Statues', 'Points of Interest & Landmarks Monuments & Statues', 'Chui', 'Chui', 'Bishkek', '', '', '', '', '42.867355', '74.592627', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(834, '8323655', NULL, 'Ski Complex Chunkurchak', 'Ski & Snowboard Areas', 'Ski & Snowboard Areas', 'Chui', 'Chui', 'Bishkek', 'Tract Chunkurchak, Bishkek 720000 Kyrgyzstan', 'http://chunkurchak.kg/', '9.97E+11', 'info@chunkurchak.kg', '', '', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(835, '10021148', NULL, 'Chunkurchak Gorge', 'Hiking Trails', 'Hiking Trails', 'Chui', 'Chui', 'Bishkek', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(836, '8059938', NULL, 'Holy Resurrection Cathedral', 'Churches & Cathedrals', 'Churches & Cathedrals', 'Chui', 'Chui', 'Bishkek', 'Zhibek-Zholu Avenue, 497, Bishkek 720000 Kyrgyzstan', 'http://www.eparchia.kg/blagochiniya/1', '9.96E+11', '', '', '', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(837, '9798292', NULL, 'Bishkek-City', 'Shopping Malls', 'Shopping Malls', 'Bish+E27:F50kek', 'Bishkek', 'Bishkek', 'Suyumbayeva, 142/2, Bishkek 720000 Kyrgyzstan', 'http://nomadsland.ch/', '9.97E+11', '', '42.870679', '74.598728', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(838, '5999967', NULL, 'Central Mosque', 'Points of Interest & Landmarks', 'Points of Interest & Landmarks', 'Chui', 'Chui', 'Bishkek', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(839, '4942172', NULL, 'Erkindik Statue', 'Points of Interest & LandmarksMonuments & Statues', 'Points of Interest & Landmarks Monuments & Statues', 'Chui', 'Chui', 'Bishkek', 'Ala-Too Square, Bishkek 720000 Kyrgyzstan', '', '', '', '42.870679', '74.592627', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(840, '6478895', NULL, 'Kashka-Suu Ski Resort', 'Ski & Snowboard Areas', 'Ski & Snowboard Areas', 'Chui', 'Chui', 'Bishkek', '', 'http://www.kashka-suu.kg/', '9.97E+11', '', '', '', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(841, '13428134', NULL, 'Ski resort Too-Ashuu', 'Ski & Snowboard Areas', 'Ski & Snowboard Areas', 'Chui', 'Chui', 'Bishkek', 'Zhukeeva-Pudovkina St., 41, Bishkek 720005 Kyrgyzstan', 'http://www.baytur.kg/', '9.97E+11', 'booking@baytur.kg', '', '', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(842, '12529324', NULL, 'Oak Park', 'Parks', 'Parks', 'Chui', 'Chui', 'Bishkek', 'Pushkin St., Bishkek 720000 Kyrgyzstan', '', '', '', '42.870679', '74.592627', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(843, '10324965', NULL, 'Boom Gorge', 'MountainsValleys', 'Mountains Valleys', 'Chui', 'Chui', 'Bishkek', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(844, '9560733', NULL, 'Tsum Center', 'Shopping Malls', 'Shopping Malls', 'Chui', 'Chui', 'Bishkek', '155 Chuy Ave, Bishkek 720000 Kyrgyzstan', 'http://tsum.kg/', '9.97E+11', 'tsum2@tsum.kg', '42.870679', '74.592627', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(845, '11797255', NULL, 'Sport Complex T-CLUB', 'Sports Complexes', 'Sports Complexes', 'Chui', 'chui', 'Bishkek', 'Toktogula St., 75, Bishkek 720000 Kyrgyzstan', 'http://t-club.business.site/', '9.97E+11', 'tclub.kg@gmail.com', '42.870679', '74.592627', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(846, '13094364', NULL, 'Asia Mall', 'Shopping Malls', 'Shopping Malls', 'Chui', 'chui', 'Bishkek', '3 Manas Ave, Bishkek 720000 Kyrgyzstan', 'http://www.asiamall.kg/', '', '', '42.866735', '74.592627', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(847, '6474885', NULL, 'Tower with Chimes', 'Points of Interest & LandmarksObservation Decks & Towers', 'Points of Interest & Landmarks Observation Decks & Towers', 'Chui', 'chui', 'Bishkek', 'Chui ave and Abdrakhmanova st building KyrgyzTelecom, Bishkek 720000 Kyrgyzstan', 'http://www.kt.kg/news/?ELEMENT_ID=1663', '', '', '42.870679', '74.592487', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(848, '459882', NULL, 'Museum of Graphic Arts /Tinibek Sadykov', 'Art Museums', 'Art Museums', 'Chui', 'Chui', 'Bishkek', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(849, '459880', NULL, 'Zoological Museum', 'Speciality Museums', 'Speciality Museums', 'Chui', 'Chui', 'Bishkek', '78, Pushkin Str., Bishkek 720000 Kyrgyzstan', 'http://www.zm.kg/', '9.96E+11', '', '', '', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(850, '21008109', NULL, 'Banya Baytur', 'Spas', 'Spas', 'Chui', 'chui', 'Bishkek', 'Zhukeyeva Pudovkina St., 41, Bishkek 720000 Kyrgyzstan', 'http://www.baytur.kg/', '9.96E+11', 'info@baytur.kg', '42.861373', '74.59484', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(851, '459860', NULL, 'Manas Museum', 'Speciality Museums', 'Speciality Museums', 'Chui', 'Chui', 'Bishkek', 'Talas, Bishkek 720000 Kyrgyzstan', '', '', '', '', '', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(852, '10112269', NULL, 'Too-Ashu Pass', 'Scenic Drives', 'Scenic Drives', 'chui', 'Chui', 'Bishkek', 'Bishkek-Osh Highway, Bishkek 720000 Kyrgyzstan', '', '', '', '', '', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(853, '10112272', NULL, 'Ak-Sai Glacier', 'MountainsNature & Wildlife Areas', 'Mountains Nature & Wildlife Areas Valleys', 'Chui', 'chui', 'Bishkek', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(854, '13202367', NULL, 'Aichurek Mall Fountains', 'Fountains', 'Fountains', 'Chui', 'Chui', 'Bishkek', 'Chui Ave., 155, Bishkek 720000 Kyrgyzstan', '', '', '', '42.870679', '74.592627', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(855, '15056456', NULL, 'Kurmanzhan Datka Statue', 'Points of Interest & LandmarksMonuments & Statues', 'Points of Interest & Landmarks Monuments & Statues', 'Chui', 'chui', 'Bishkek', 'Pushkin St. Dubovy Park, Bishkek 720000 Kyrgyzstan', '', '', '', '', '', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(856, '13417622', NULL, 'Vladimir Lenin Statue', 'Monuments & Statues', 'Monuments & Statues', 'Chui', 'Chui', 'Bishkek', 'Abdumomunov Street Behind the State History Museum, Bishkek 720000 Kyrgyzstan', '', '', '', '42.870679', '74.592627', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(857, '459879', NULL, 'Aaly Tokombaev House Museum', 'Speciality Museums', 'Speciality Museums', 'Chui', 'Chui', 'Bishkek', '109, Chuykov Str., Bishkek 720000 Kyrgyzstan', '', '664756', '', '', '', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(858, '9798267', NULL, 'Ataturk Park', 'National Parks', 'National Parks', 'Chui', 'Chui', 'Bishkek', 'Shakirova, 31A, Bishkek 720000 Kyrgyzstan', '', '', '', '42.850913', '74.59484', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(859, '10021099', NULL, 'Sokuluk Gorge', 'MountainsNature & Wildlife Areas', 'Mountains Nature & Wildlife Areas Geologic Formations', 'Chui', 'Chui', 'Bishkek', '', 'http://www.tuk.kg/index.php', '9.96E+11', '', '', '', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(860, '459881', NULL, 'Geological Museum and Mineralogical Museum', 'Science Museums', 'Science Museums', 'Chui', 'Chui', 'Bishkek', '1, Erkindik Prospect, Bishkek 720000 Kyrgyzstan', '', '', '', '', '', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(861, '459884', NULL, 'Toktogul Literary Museum', 'Speciality Museums', 'Speciality Museums', 'Chui', 'chui', 'Bishkek', '109, Kievskaya Str., Bishkek 720000 Kyrgyzstan', '', '227693', '', '', '', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(862, '10084861', NULL, 'Korona Peak', 'MountainsNational Parks', 'Mountains National Parks Forests Geologic Formations Valleys', 'chui', 'Chui', 'Bishkek', '', 'http://www.tuk.kg/index.php', '9.96E+11', '', '', '', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(863, '14018184', NULL, 'Asanbay Center', 'Civic Centres', 'Civic Centres', 'Chui', 'chui', 'Bishkek', 'Tokombayeva St., 21?, Bishkek 720000 Kyrgyzstan', 'https://www.facebook.com/AsanbayCenter/', '9.97E+11', 'asanbayart@gmail.com', '42.842936', '74.61703', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(864, '9798261', NULL, 'Church of the Holy Prince Vladimir', 'Religious SitesChurches & Cathedrals', 'Religious Sites Churches & Cathedrals', 'chui', 'Chui', 'Bishkek', 'Tokombayeva, 52A/3, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '42.842936', '74.60581', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(865, '10021126', NULL, 'Bir-Bulak Gorge', 'MountainsHiking Trails', 'Mountains Hiking Trails', 'chui', 'Chui', 'Bishkek', '20 km from Bishkek, Bishkek 720000 Kyrgyzstan', 'http://www.tuk.kg/index.php', '9.96E+11', '', '', '', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(866, '9798291', NULL, 'Exhibition Hall of Union of Artists', 'Art Galleries', 'Art Galleries', 'Chui', 'Chui', 'Bishkek', 'Pushkina, 78, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '42.870679', '74.592627', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(867, '15056855', NULL, 'Borborduk Mosque', 'Points of Interest & LandmarksReligious Sites', 'Points of Interest & Landmarks Religious Sites', 'Chui', 'Chui', 'Bishkek', 'Semashko St., Bishkek 720000 Kyrgyzstan', '', '', '', '', '', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(868, '6781770', NULL, 'State National Academic Drama Theater', 'Theaters', 'Theaters', 'Chui', 'Chui', 'Bishkek', '273, Panfilov st., Bishkek 720000 Kyrgyzstan', 'http://www.operaballet.lg.kg/', '66-58-02', '', '', '', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(869, '7166257', NULL, 'Mystic Spa', 'Spas', 'Spas', 'Chui', 'Chui', 'Bishkek', 'Pr. Chui Ave, 219 Crossing Toglokmoldo, Bishkek 720000 Kyrgyzstan', 'http://mysticspa.kg/', '9.97E+11', 'mystic.spasalon@gmail.com', '42.870679', '74.592627', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(870, '459883', NULL, 'Archaeological Museum', 'History Museums', 'History Museums', 'Chui', 'Chui', 'Bishkek', '265-a, Chuisky Prospect, Bishkek 720000 Kyrgyzstan', '', '', '', '', '', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(871, '10758360', NULL, 'Spartak Stadium', 'Arenas & Stadiums', 'Arenas & Stadiums', 'Chui', 'Chui', 'Bishkek', 'Togolok Moldo St., 17, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '', '', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(872, '', NULL, 'E. Gareyev Botanical Garden', 'Gardens', 'Gardens', 'Chui', 'Chui', 'Bishkek', 'Maksima Gorkogo, 212, Bishkek 720000 Kyrgyzstan', 'http://www.facebook.com/bishkekbotsad/', '9.96E+11', 'gareev100@mail.ru', '42.868602', '74.592627', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(873, '9798299', NULL, 'Kyrgyz National Museum of Fine Arts', 'Art Museums', 'Art Museums', 'Chui', 'Chui', 'Bishkek', 'Abdrakhmanova, 196, Bishkek 720000 Kyrgyzstan', 'https://www.facebook.com/knmiiNationalmuseum/', '9.96E+11', '', '42.870679', '74.592627', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(874, '12272464', NULL, 'Smile', 'Sports Complexes', 'Sports Complexes', 'Chui', 'Chui', 'Bishkek', 'Maksim Gorkiy St., 1v/1, Bishkek 720000 Kyrgyzstan', 'http://www.facebook.com/sk.smile.kg/', '9.97E+11', 'sk.smile.kg@gmail.com', '', '', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(875, '8411431', NULL, 'Dordoi-Plaza', 'Shopping Malls', 'Shopping Malls', 'Chui', 'Chui', 'Bishkek', 'Ibraimova St., 115, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '', '', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(876, '9798301', NULL, 'Madina', 'Shopping Malls', 'Shopping Malls', 'Chui', 'Chui', 'Bishkek', 'Chui Ave., 4B, Bishkek 720000 Kyrgyzstan', 'http://www.madina.kg/', '9.96E+11', '', '42.870679', '74.614575', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(877, '8818732', NULL, 'Mall Tashrabat', 'Shopping Malls', 'Shopping Malls', 'Chui', 'Chui', 'Bishkek', 'Gorkogo St., 1G, Bishkek 720000 Kyrgyzstan', 'https://www.facebook.com/tashrabat.kg/', '9.96E+11', 'tashrabattrk@gmail.com', '42.870679', '74.60704', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(878, '9798300', NULL, 'Park Im. I. Panfilova', 'National Parks', 'National Parks', 'Chui', 'Chui', 'Bishkek', 'Frunze, 370, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '42.870679', '74.60536', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(879, '9798268', NULL, 'Vefa', 'Shopping Malls', 'Shopping Malls', 'Chui', 'Chui', 'Bishkek', 'Gorkogo St., 27/1 Lane of the Baitik Baatyra St., Bishkek 720000 Kyrgyzstan', 'http://www.vefacenter.kg/', '9.97E+11', 'vefacenter@mail.ru', '42.870679', '74.60536', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(880, '9798293', NULL, 'Gym-N-Roll', 'Sports Complexes', 'Sports Complexes', 'Chui', 'Chui', 'Bishkek', 'Kurmanzhan Datka, 59, Bishkek 720000 Kyrgyzstan', 'http://gymnroll.kg/', '9.96E+11', '', '42.870679', '74.6232', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(881, '9798273', NULL, 'Kalipso', 'Water Parks', 'Water Parks', 'Chui', 'Chui', 'Bishkek', 'Mira Ave., 299, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '42.84398', '74.592718', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(882, '10077712', NULL, 'Flea Market', 'Flea & Street Markets', 'Flea & Street Markets', 'Chui', 'Chui', 'Bishkek', 'Yunusaliev St. 7 - Microdistrict, Bishkek 720000 Kyrgyzstan', 'http://www.tuk.kg/index.php', '9.96E+11', '', '', '', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(883, '8124671', NULL, 'Tunguch Mosque', 'Religious SitesChurches & Cathedrals', 'Religious Sites Churches & Cathedrals', 'Chui', 'Chui', 'Bishkek', 'Gorkogo St., Bishkek 720000 Kyrgyzstan', '', '', '', '', '', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(884, '9798277', NULL, 'Grand Stone', 'Shopping Malls', 'Shopping Malls', 'Chui', 'Chui', 'Bishkek', 'Matrosova, 6, Bishkek 720000 Kyrgyzstan', 'http://grandstone.kg/', '9.96E+11', '', '42.870679', '74.60704', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(885, '9798297', NULL, 'Galeria M', 'Art Galleries', 'Art Galleries', 'Chui', 'Chui', 'Bishkek', 'Manasa Ave., 40, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '42.870679', '74.592627', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(886, '9798288', NULL, 'Detskiy Mir', 'Shopping Malls', 'Shopping Malls', 'Chui', 'Chui', 'Bishkek', 'Chui Ave., 147/4, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', 'info@detmir.kg', '42.870679', '74.594163', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(887, '9798543', NULL, 'Central City Mosque', 'Religious Sites', 'Religious Sites', 'Chui', 'Chui', 'Bishkek', 'Gogolya, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '', '', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(888, '9798308', NULL, 'Tabylga', 'Shopping Malls', 'Shopping Malls', 'Chui', 'Chui', 'Bishkek', 'Zhibek-Zholu Ave., 150, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '42.876129', '74.614575', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(889, '15057029', NULL, 'Makhmud Kashkari Mosque', 'Points of Interest & LandmarksReligious Sites', 'Points of Interest & Landmarks Religious Sites', 'Chui', 'Chui', 'Bishkek', 'Osmonkul St., Bishkek 720000 Kyrgyzstan', '', '', '', '', '', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(890, '9798257', NULL, 'Flamingo', 'National Parks', 'National Parks', 'Chui', 'Chui', 'Bishkek', 'Mira Ave., 303, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '42.84111', '74.579152', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(891, '9798258', NULL, 'Zhashtyk', 'Arenas & Stadiums', 'Arenas & Stadiums', 'Chui', 'Chui', 'Bishkek', 'Maldybayeva, 1, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '42.84398', '74.59484', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(892, '10021223', NULL, 'Takyr-Tor Gorge', 'Geologic Formations', 'Geologic Formations', 'Chui', 'Chui', 'Bishkek', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(893, '9798282', NULL, 'Chelsea', 'Arenas & Stadiums', 'Arenas & Stadiums', 'Chui', 'Chui', 'Bishkek', 'Timiryazeva, 245A, Bishkek 720000 Kyrgyzstan', '', '9.97E+11', '', '42.870679', '74.592627', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(894, '10206017', NULL, 'Shamsi Gorge', 'MountainsCanyons', 'Mountains Canyons Geologic Formations', 'Chui', 'Chui', 'Bishkek', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(895, '9798279', NULL, 'Katok City', 'Sports Complexes', 'Sports Complexes', 'Chui', 'chui', 'Bishkek', 'Vinogradnaya, 1/3, Bishkek 720000 Kyrgyzstan', 'http://katok.kg/', '9.96E+11', '', '42.859714', '74.629325', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(896, '3665610', NULL, 'Fuchik Park', 'Parks', 'Parks', 'Chui', 'chui', 'Bishkek', '1 Fuchik Street, Bishkek 720000 Kyrgyzstan', '', '', '', '42.870679', '74.59064', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(897, '9798278', NULL, 'Lokomotiv', 'Sports Complexes', 'Sports Complexes', 'Chui', 'chui', 'Bishkek', 'Osmonova, 1, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '42.864556', '74.55846', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(898, '9798306', NULL, 'Home Sports Arena', 'Arenas & Stadiums', 'Arenas & Stadiums', 'Chui', 'Chui', 'Bishkek', 'Togoloka Moldo, 17, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '42.870679', '74.592627', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(899, '9798307', NULL, 'Taatan', 'Shopping Malls', 'Shopping Malls', 'Chui', 'Chui', 'Bishkek', 'Lermontova, 35, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '42.873704', '74.63257', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(900, '9798262', NULL, 'Zateryanny Mir', 'Zoos', 'Zoos', 'Chui', 'chui', 'Bishkek', 'Tokombayeva, 21/4, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '42.842936', '74.61703', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(901, '9798311', NULL, 'Bakhodyrkhon-Toro Uulu Musakhon-Toro Mosque', 'Religious Sites', 'Religious Sites', 'Chui', 'Chui', 'Bishkek', 'Kurenkeyeva, 137, Bishkek 720000 Kyrgyzstan', '', '', '', '42.870679', '74.592627', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(902, '15056787', NULL, 'Manas Statue', 'Points of Interest & LandmarksMonuments & Statues', 'Points of Interest & Landmarks Monuments & Statues', 'Chui', 'Chui', 'Bishkek', 'Chuy Ave., Bishkek 720000 Kyrgyzstan', '', '', '', '', '', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(903, '15057330', NULL, 'Victory Park', 'Parks', 'Parks', 'Chui', 'chui', 'Bishkek', 'Baitik Baatyr St., Bishkek 720000 Kyrgyzstan', '', '', '', '42.844247', '74.59484', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(904, '9798264', NULL, 'Asanbai', 'Arenas & Stadiums', 'Arenas & Stadiums', 'Chui', 'Chui', 'Bishkek', 'Asanbai Microrayon, 43/1, Bishkek 720000 Kyrgyzstan', '', '9.97E+11', '', '42.835961', '74.63145', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(905, '9820700', NULL, '\"Taberik\" Children?s Musical Theatre', 'Theaters', 'Theaters', 'Chui', 'chui', 'Bishkek', 'Shakirova St., 17, Bishkek 720000 Kyrgyzstan', 'http://taberik.org/', '9.96E+11', '', '42.844247', '74.59484', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(906, '9798287', NULL, 'Kyrgyz State Museum of Literature and Art', 'Art Galleries', 'Art Galleries', 'Chui', 'Chui', 'Bishkek', 'Toktogula, 109, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '42.870679', '74.592627', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(907, '9798284', NULL, 'Ice Park', 'Sports Complexes', 'Sports Complexes', 'Chui', 'Chui', 'Bishkek', 'Kiyevskaya, 148, Bishkek 720000 Kyrgyzstan', '', '', '', '42.870679', '74.592627', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(908, '9798283', NULL, 'Akun', 'Arenas & Stadiums', 'Arenas & Stadiums', 'Chui', 'Chui', 'Bishkek', 'Den Syaopina Ave., 308, Bishkek 720000 Kyrgyzstan', '', '9.97E+11', '', '42.873399', '74.535655', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(909, '9798274', NULL, 'El Clasico', 'Arenas & Stadiums', 'Arenas & Stadiums', 'Chui', 'Chui', 'Bishkek', 'Geologicheskiy Lane, 3/1, Bishkek 720000 Kyrgyzstan', '', '9.97E+11', '', '42.870679', '74.60536', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(910, '9798322', NULL, 'Bereket Grand', 'Shopping Malls', 'Shopping Malls', 'Chui', 'Chui', 'Bishkek', 'Chui Ave., 204, Bishkek 720000 Kyrgyzstan', 'http://bereket.kg/', '', '', '42.870679', '74.59064', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(911, '9798265', NULL, 'Dk', 'Shopping Malls', 'Shopping Malls', 'Chui', 'chui', 'Bishkek', 'Zhetikashkayevoi, 29, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', 'delemplus@mail.ru', '42.835961', '74.626103', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(912, '10024282', NULL, 'The Rescue Mountain Tashtar-Ata', 'MountainsNature & Wildlife Areas', 'Mountains Nature & Wildlife Areas Geologic Formations', 'Chui', 'Chui', 'Bishkek', '', 'http://www.tuk.kg/index.php', '9.96E+11', '', '', '', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(913, '25063001', NULL, 'Teplo Bar', 'Bars & Clubs', 'Bars & Clubs', 'Chui', 'chui', 'Bishkek', 'Toktogula 75/1, Bishkek 720000 Kyrgyzstan', 'https://www.facebook.com/teplobarkg/', '9.97E+11', 'teplobarkg@gmail.com', '42.870679', '74.592627', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(914, '9798310', NULL, 'Caravan', 'Shopping Malls', 'Shopping Malls', 'Chui', 'Chui', 'Bishkek', 'Kiyevskaya, 128, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '42.870679', '74.592627', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(915, '15056734', NULL, 'Stella of Friendship of Nation', 'Points of Interest & LandmarksMonuments & Statues', 'Points of Interest & Landmarks Monuments & Statues', 'Chui', 'Chui', 'Bishkek', 'Panfilov St., Bishkek 720000 Kyrgyzstan', '', '', '', '', '', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(916, '9798256', NULL, 'Detskiy Dosug', 'National Parks', 'National Parks', 'Chui', 'Chui', 'Bishkek', 'Tokombayeva, 21/11, Bishkek 720000 Kyrgyzstan', '', '', 'tikoow@mail.ru', '42.842936', '74.61703', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(917, '13165355', NULL, 'Ak Emir Bazaar', 'Farmers Markets', 'Farmers Markets', 'Chui', 'Chui', 'Bishkek', 'Shopokov Street, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '', '', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(918, '9798294', NULL, 'Moto', 'Shopping Malls', 'Shopping Malls', 'Chui', 'Chui', 'Bishkek', 'Abdrakhmanova, 170V, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '42.870679', '74.592627', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(919, '15056435', NULL, 'Zero Kilometer', 'Points of Interest & Landmarks', 'Points of Interest & Landmarks', 'Chui', 'Chui', 'Bishkek', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(920, '9798286', NULL, 'Izumrud', 'Shopping Malls', 'Shopping Malls', 'Chui', 'Chui', 'Bishkek', 'Chui Ave., 34/3, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '42.870679', '74.614575', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(921, '15056949', NULL, 'Alley of Heroes of World War II', 'Points of Interest & Landmarks', 'Points of Interest & Landmarks', 'Chui', 'Chui', 'Bishkek', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(922, '9798312', NULL, 'Yiman Mosque', 'Religious Sites', 'Religious Sites', 'Chui', 'Chui', 'Bishkek', 'Makhatmy Gandi Blvd, 175A, Bishkek 720000 Kyrgyzstan', '', '', '', '42.878544', '74.592627', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(923, '9798305', NULL, 'Kazakstan', 'Arenas & Stadiums', 'Arenas & Stadiums', 'Chui', 'Chui', 'Bishkek', 'Zhibek-Zholu Ave., 601, Bishkek 720000 Kyrgyzstan', '', '9.97E+11', '', '42.879232', '74.59064', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(924, '15057809', NULL, 'The Mahatma Gandhi Memorial Complex', 'Points of Interest & LandmarksMonuments & Statues', 'Points of Interest & Landmarks Monuments & Statues', 'Chui', 'Chui', 'Bishkek', 'Mahatma Gandhi St., Bishkek 720000 Kyrgyzstan', '', '', '', '', '', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(925, '17651089', NULL, 'GUM Chynar Mall', 'Shopping Malls', 'Shopping Malls', 'Chui', 'Chui', 'Bishkek', 'Chui ave., 92, Bishkek 720000 Kyrgyzstan', 'http://tashbolot.kg/gum/', '9.97E+11', 'gum@tashbolot.kg', '', '', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(926, '9798303', NULL, 'Dordoimarket', 'Shopping Malls', 'Shopping Malls', 'Chui', 'Chui', 'Bishkek', 'Yuliusa Fuchika, 3, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '42.876129', '74.59159', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(927, '9798285', NULL, 'Vesna', 'Shopping Malls', 'Shopping Malls', 'Chui', 'Chui', 'Bishkek', 'Kalyka Akiyeva, 66, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '42.870679', '74.592627', '1', 1, '2023-07-17 00:47:02', '2023-07-17 00:47:02'),
(928, '9798533', NULL, 'Bai Terek', 'Arenas & Stadiums', 'Arenas & Stadiums', 'Chui', 'Chui', 'Bishkek', '5-I Microrayon, Bishkek 720000 Kyrgyzstan', 'http://www.tuk.kg/index.php', '9.97E+11', '', '', '', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(929, '15056512', NULL, 'Revolution Militants Square', 'Points of Interest & Landmarks', 'Points of Interest & Landmarks', 'Chui', 'Chui', 'Bishkek', '100 Chuy Ave., Bishkek 720000 Kyrgyzstan', '', '', '', '', '', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(930, '9798296', NULL, 'Red Centre', 'Shopping Malls', 'Shopping Malls', 'Chui', 'Chui', 'Bishkek', 'Shopokova, 121/1, Bishkek 720000 Kyrgyzstan', 'http://www.red.kg/', '9.96E+11', '', '42.870679', '74.594163', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03');
INSERT INTO `places` (`id`, `CSV_Id`, `image`, `Name`, `Category`, `Attraction_Type`, `Region`, `Rayon`, `City`, `Address`, `Website`, `Telephone`, `Email`, `Latitude`, `Longitude`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
(931, '9798263', NULL, 'Korzinka', 'Shopping Malls', 'Shopping Malls', 'Chui', 'Chui', 'Bishkek', 'Tynaliyeva, 3/2, Bishkek 720000 Kyrgyzstan', '', '', '', '42.84398', '74.59284', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(932, '15056697', NULL, 'Monument to the Soldiers of Batken', 'Points of Interest & LandmarksMonuments & Statues', 'Points of Interest & Landmarks Monuments & Statues', 'Chui', 'Chui', 'Bishkek', 'Yakov Logvinenko St., Bishkek 720000 Kyrgyzstan', '', '', '', '42.865697', '74.59903', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(933, '15057984', NULL, 'Monument to MiG-', 'Points of Interest & LandmarksMonuments & Statues', 'Points of Interest & Landmarks Monuments & Statues', 'Chui', 'Chui', 'Bishkek', '114 Kiyevskaya St., Bishkek 720000 Kyrgyzstan', '', '', '', '', '', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(934, '15198311', NULL, 'Togolok Moldo Park', 'Parks', 'Parks', 'Chui', 'Chui', 'Bishkek', 'Koyonkozov St., Bishkek 720000 Kyrgyzstan', '', '', '', '', '', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(935, '15056957', NULL, 'Molodaya Gvardiya Monument', 'Points of Interest & LandmarksMonuments & Statues', 'Points of Interest & Landmarks Monuments & Statues', 'Chui', 'Chui', 'Bishkek', 'Jash Gvardiya Blvd., Bishkek 720000 Kyrgyzstan', '', '', '', '', '', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(936, '9798270', NULL, 'Korgonbek Uulu Saiid Moldo Mosque', 'Religious Sites', 'Religious Sites', 'Chui', 'Chui', 'Bishkek', 'Shabdan Baatyra, 21B, Bishkek 720000 Kyrgyzstan', '', '', '', '42.850693', '74.60551', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(937, '15347811', NULL, 'Lake GES-', 'Bodies of Water', 'Bodies of Water', 'Chui', 'Chui', 'Bishkek', 'Cholpon-Atinskaya / Obyezdnaya St., Bishkek 720000 Kyrgyzstan', '', '9.97E+11', '', '', '', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(938, '15057234', NULL, 'Kubanychbek Malikov Monument', 'Points of Interest & LandmarksMonuments & Statues', 'Points of Interest & Landmarks Monuments & Statues', 'Chui', 'Chui', 'Bishkek', 'Erkindik Ave., 7, Bishkek 720000 Kyrgyzstan', '', '', '', '', '', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(939, '15056967', NULL, 'Talgat Begeldinov Monument', 'Points of Interest & LandmarksMonuments & Statues', 'Points of Interest & Landmarks Monuments & Statues', 'Chui', 'Chui', 'Bishkek', 'Intersection of Moscow street / Molodaya Gvardia avenue, Bishkek 720000 Kyrgyzstan', '', '', '', '', '', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(940, '8411418', NULL, 'COSMOPARK', 'Bowling AlleysMovie Theaters', 'Bowling Alleys Movie Theaters Game & Entertainment Centers', 'Chui', 'Chui', 'Bishkek', '', 'http://www.cosmopark.kg/', '9.96E+11', '', '', '', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(941, '13131313', NULL, 'Mini-Zoopark Zhivaya Ekzotika', 'Zoos', 'Zoos', 'Chui', 'Chui', 'Bishkek', 'Chuy Ave., 92, Bishkek 720000 Kyrgyzstan', 'http://exolife.asia/', '9.96E+11', 'exolife.asia@gmail.com', '42.870679', '74.592627', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(942, '15056497', NULL, 'Monument to Suimenkul Chokmorov', 'Points of Interest & LandmarksMonuments & Statues', 'Points of Interest & Landmarks Monuments & Statues', 'Chui', 'Chui', 'Bishkek', 'Intersection of Chui Avenue and Tynystanov Street, Bishkek 720000 Kyrgyzstan', '', '', '', '', '', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(943, '11621137', NULL, 'Shifu Massage', 'Spas', 'Spas', 'Chui', 'Chui', 'Bishkek', 'Moskovskaya St., 154-25, Bishkek 720000 Kyrgyzstan', 'https://www.facebook.com/shifumassage/', '9.97E+11', '', '42.867355', '74.592627', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(944, '9820709', NULL, '\"Uchur\" State Youth Theatre', 'Theaters', 'Theaters', 'Chui', 'Chui', 'Bishkek', 'Toktonaliyeva St., 6G, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '42.847241', '74.592627', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(945, '10403759', NULL, 'Tumar Art Salon', 'Speciality & Gift Shops', 'Speciality & Gift Shops', 'Chui', 'chui', 'Bishkek', 'Isanov St., 80-2, Bishkek 720000 Kyrgyzstan', 'http://www.tumar.com/', '9.96E+11', '', '', '', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(946, '9798541', NULL, 'Taalai', 'Shopping Malls', 'Shopping Malls', 'Chui', 'chui', 'Bishkek', 'Chui Ave, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '', '', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(947, '9798275', NULL, 'Futbolistan', 'Arenas & Stadiums', 'Arenas & Stadiums', 'Chui', 'chui', 'Bishkek', 'Maksima Gorkogo, 136/2, Bishkek 720000 Kyrgyzstan', '', '9.97E+11', '', '42.870679', '74.592627', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(948, '7745327', NULL, 'Maple Leaf Golf & Country Club', 'Golf Courses', 'Golf Courses', 'Chui', 'Chui', 'Bishkek', '', 'http://mapleleaf.vacau.com/', '9.97E+11', '', '42.831251', '74.674912', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(949, '9798313', NULL, 'Ikhlyas Mosque', 'Religious SitesChurches & Cathedrals', 'Religious Sites Churches & Cathedrals', 'Chui', 'Chui', 'Bishkek', 'Samarskiy Lane, 10A, Bishkek 720000 Kyrgyzstan', '', '', '', '42.879232', '74.592627', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(950, '7825751', NULL, 'Kyrgyz National Opera and Ballet Theatre of Abdylas Maldybayev', 'Theatre & Performances', 'Theatre & Performances', 'Chui', 'chui', 'Bishkek', 'Abdrakhmanova St., 167, Bishkek 720000 Kyrgyzstan', 'http://www.operaballet.lg.kg/', '9.96E+11', '', '', '', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(951, '11823472', NULL, 'Territoriya Spa', 'Spas', 'Spas', 'Chui', 'Chui', 'Bishkek', 'Moskovskaya St., 184, Bishkek 720000 Kyrgyzstan', 'http://www.spa.kg/', '9.96E+11', '', '42.871441', '74.687667', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(952, '12128388', NULL, 'Siam Massage', 'Spas', 'Spas', 'Chui', 'Chui', 'Bishkek', 'Toktogula St., 124/1, Bishkek 720000 Kyrgyzstan', 'http://www.siam.kg/', '9.97E+11', 'info@siam.kg', '42.870679', '74.592627', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(953, '9821221', NULL, 'Kyrgyz State Philharmonic Hall', 'Concerts', 'Concerts', 'Chui', 'chui', 'Bishkek', 'Chui Ave., 251, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '42.870679', '74.592627', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(954, '6781767', NULL, 'Raritet BookStore', 'Speciality & Gift Shops', 'Speciality & Gift Shops', 'Chui', 'Chui', 'Bishkek', 'Pushkin 78 Ala Too Square, Bishkek 720000 Kyrgyzstan', '', '', '', '', '', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(955, '12249112', NULL, 'DIVISION Shooting range', 'Shooting Ranges', 'Shooting Ranges', 'Chui', 'chui', 'Bishkek', 'Kulatova Str. 9/1 crossing Ibraimova Str., Bishkek 720000 Kyrgyzstan', 'http://www.facebook.com/division.kg', '9.97E+11', '', '', '', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(956, '12272461', NULL, 'Galaxy Family Park', 'PlaygroundsGame & Entertainment Centers', 'Playgrounds Game & Entertainment Centers', 'Chui', 'Chui', 'Bishkek', 'Chui Ave., 147/4, Bishkek 720000 Kyrgyzstan', 'http://www.galaxypark.kg/', '9.96E+11', '', '', '', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(957, '12245358', NULL, 'Saima', 'Speciality & Gift Shops', 'Speciality & Gift Shops', 'Chui', 'Chui', 'Bishkek', 'Chui Ave., 140, Bishkek 720000 Kyrgyzstan', 'http://www.embroidery.com.kg/', '9.97E+11', '', '42.870679', '74.592627', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(958, '12658159', NULL, 'Indi Massage', 'Spas', 'Spas', 'Chui', 'Chui', 'Bishkek', 'Chui Ave., 158, Bishkek 720000 Kyrgyzstan', 'http://indi.com.kg/', '9.97E+11', 'indimassage.kg@gmail.com', '42.870679', '74.592627', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(959, '24133504', NULL, 'Bar KladOFFka', 'Bars & Clubs', 'Bars & Clubs', 'Chui', 'Chui', 'Bishkek', 'Chui Ave., 187A, Bishkek 720000 Kyrgyzstan', 'http://instagram.com/kladoffka.bar?igshid=ymmymta2m2y=', '9.97E+11', '', '42.870679', '74.592627', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(960, '15130358', NULL, 'Retro Metro Night Club', 'Bars & ClubsKaraoke Bars', 'Bars & Clubs Karaoke Bars Dance Clubs & Discos', 'Chui', 'Chui', 'Bishkek', 'Aitmatova Ave., 24, Bishkek 720000 Kyrgyzstan', 'http://www.retro-metro.kg/', '9.97E+11', 'retrometronk@gmail.com', '42.866735', '74.592627', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(961, '12002392', NULL, 'Promzona Club', 'Bars & ClubsDance Clubs & Discos', 'Bars & Clubs Dance Clubs & Discos', 'Chui', 'chui', 'Bishkek', 'Cholpon-Ata St., 16, Bishkek 720000 Kyrgyzstan', 'http://www.promzona.kg/', '9.96E+11', '', '42.859841', '74.630505', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(962, '3965937', NULL, 'Life Style Spa', 'Spas', 'Spas', 'Chui', 'Chui', 'Bishkek', '35 Erkindin Boulevard, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '', '', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(963, '9798260', NULL, 'Kosmopark', 'Bowling Alleys', 'Bowling Alleys', 'Chui', 'chui', 'Bishkek', 'Yunusaliyeva, 40A, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '42.842936', '74.61461', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(964, '7272741', NULL, 'Fresh Style', 'Spas', 'Spas', 'Chui', 'Chui', 'Bishkek', 'Razzakova St., 22, Bishkek 720000 Kyrgyzstan', 'http://www.freshstyle.kg/', '9.96E+11', '', '', '', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(965, '14780285', NULL, 'Green Mile', 'Game & Entertainment Centers', 'Game & Entertainment Centers', 'Chui', 'Chui', 'Bishkek', 'Chokana Valikhanova, 2/1, Bishkek 720000 Kyrgyzstan', 'https://www.facebook.com/%D0%A1%D1%82%D1%80%D0%B0%D0%B9%D0%BA%D0%B1%D0%BE%D0%BB%D1%8C%D0%BD%D1%8B%D0%B9-%D0%BA%D0%BB%D1%83%D0%B1-Greenmile-393746864467653/?hc_ref=ART3uUL4HeKqEZr2iRgOGecSbp3G7XHjckzoLJe-587bA50RyPdlsQB69H3aslOCu8k&fref=n', '9.97E+11', 'greenmile.airsoft@gmail.com', '42.870757', '74.630505', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(966, '9798316', NULL, 'Rossiya', 'Movie Theaters', 'Movie Theaters', 'Chui', 'Chui', 'Bishkek', 'Chui Ave., 213, Bishkek 720000 Kyrgyzstan', 'http://cinema.kg/', '', 'info@cinema.kg', '42.870679', '74.592487', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(967, '14210450', NULL, 'Oasis', 'Spas', 'Spas', 'Chui', 'Chui', 'Bishkek', 'Chui Ave., 136, Bishkek 720000 Kyrgyzstan', 'http://www.oasis-massage.kg/', '9.97E+11', 'massageoasis312@gmail.com', '42.870679', '74.592627', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(968, '24142766', NULL, 'Transfer KG', 'Taxis & Shuttles', 'Taxis & Shuttles', 'Chui', 'Chui', 'Bishkek', 'Leo Tolstoy, 19, Bishkek 720000 Kyrgyzstan', 'https://transfer-kg.ru/en', '9.97E+11', 'info@transfer-kg.ru', '', '', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(969, '9798272', NULL, 'Manas', 'Movie Theaters', 'Movie Theaters', 'Chui', 'Chui', 'Bishkek', 'Mira Ave., 47, Bishkek 720000 Kyrgyzstan', 'http://www.manascinema.com/', '', '', '42.870679', '74.592627', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(970, '611202', NULL, 'Central Asian Bookshop', 'Speciality & Gift Shops', 'Speciality & Gift Shops', 'Chui', 'Chui', 'Bishkek', '104 Chui Prospect, Bishkek 720000 Kyrgyzstan', '', '', '', '', '', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(971, '9820717', NULL, 'Airsoft Arena', 'Game & Entertainment Centers', 'Game & Entertainment Centers', 'Chui', 'Chui', 'Bishkek', 'Lushhikhina St., 99V, Bishkek 720000 Kyrgyzstan', 'http://www.arena.kg/', '9.97E+11', '', '42.864556', '74.553005', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(972, '8411411', NULL, 'Cinema Oktyabr', 'Movie Theaters', 'Movie Theaters', 'Chui', 'Chui', 'Bishkek', 'Chui Avenue, 184, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '', '', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(973, '10911025', NULL, 'Children Scientific Complex', 'Children\'s MuseumsGame & Entertainment Centers', 'Children\'s Museums Game & Entertainment Centers', 'Chui', 'Chui', 'Bishkek', 'Moskovskaya St., 163 V, Bishkek 720000 Kyrgyzstan', '', '9.97E+11', 'saikal@ukr.net', '42.870679', '74.592627', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(974, '13428342', NULL, 'One Village One Product', 'Speciality & Gift Shops', 'Speciality & Gift Shops', 'Chui', 'Chui', 'Bishkek', 'Toktogula, 140, Bishkek 720000 Kyrgyzstan', 'http://www.facebook.com/ovop.kg/', '9.97E+11', 'davlenbaeva.olga@gmail.com', '42.870679', '74.592627', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(975, '25044833', NULL, 'Soulist', 'Karaoke Bars', 'Karaoke Bars', 'Chui', 'Chui', 'Bishkek', '119 Jumabeka St. Opposite the Central Registry Office, Bishkek 720000 Kyrgyzstan', 'https://www.instagram.com/soulist_bishkek/', '9.97E+11', '', '42.870679', '74.592627', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(976, '9798259', NULL, 'Kyrgyz Kinosu', 'Movie Theaters', 'Movie Theaters', 'Chui', 'Chui', 'Bishkek', 'Akhunbayeva, 92V, Bishkek 720000 Kyrgyzstan', 'http://kyrgyzkinosu.kg/', '9.96E+11', 'kyrgyzkinosu@mail.ru', '42.854963', '74.59527', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(977, '17651164', NULL, 'Raritet', 'Speciality & Gift Shops', 'Speciality & Gift Shops', 'Chui', 'Chui', 'Bishkek', 'Chuy Avenue, 271, Bishkek 720000 Kyrgyzstan', 'http://books.kg/', '9.96E+11', 'rarityfirm@mail.ru', '42.870679', '74.592627', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(978, '12640732', NULL, 'SAIMALUU TASH Art Gallery', 'Speciality & Gift ShopsArt Galleries', 'Speciality & Gift Shops Art Galleries', 'Chui', 'Chui', 'Bishkek', 'Panfilova St., 136/33, Bishkek 720000 Kyrgyzstan', 'http://saimaluutash.kg/', '9.97E+11', 'saimaluu.t@gmail.com', '42.870679', '74.592627', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(979, '13431128', NULL, 'Bex', 'Bus ServicesTaxis & Shuttles', 'Bus Services Taxis & Shuttles', 'Chui', 'Chui', 'Bishkek', '', 'http://www.bex.kg/', '9.97E+11', 'order@bex.kg', '42.844247', '74.603785', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(980, '9820722', NULL, 'Zolotoi Telenok', 'Bars & Clubs', 'Bars & Clubs', 'Chui', 'Chui', 'Bishkek', 'Lva Tolstogo St., 7/3, Bishkek 720000 Kyrgyzstan', '', '', '', '42.870679', '74.592627', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(981, '25380986', NULL, 'Night Club Suzie Wong', 'Bars & Clubs', 'Bars & Clubs', 'Chui', 'Chui', 'Bishkek', 'Tokombayeva, 21a/4, Bishkek 720060 Kyrgyzstan', 'https://www.instagram.com/suziewong.bishkek/', '9.97E+11', '', '42.842936', '74.61703', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(982, '25349909', NULL, 'Norm Bar', 'Bars & Clubs', 'Bars & Clubs', 'Chui', 'Chui', 'Bishkek', '', 'http://instagram.com/norm_bar_', '9.97E+11', '', '42.870679', '74.592627', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(983, '12269121', NULL, 'Daairy', 'Speciality & Gift Shops', 'Speciality & Gift Shops', 'Chui', 'Chui', 'Bishkek', 'Chui Ave., 114, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '42.870679', '74.592627', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(984, '11878392', NULL, 'ZIL Ski Base', 'Gear RentalsSki & Snowboard Areas', 'Gear Rentals Ski & Snowboard Areas', 'Chui', 'Chui', 'Bishkek', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(985, '10112267', NULL, 'Fitness House', 'Health ClubsYoga & Pilates', 'Health Clubs Yoga & Pilates Lessons & Workshops', 'Chui', 'chui', 'Bishkek', 'Baitik Baatyra St., 67/1, Bishkek 720000 Kyrgyzstan', 'https://www.facebook.com/Fitness-House-1668785406675794/', '9.97E+11', '', '', '', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(986, '9798266', NULL, 'Arbat', 'Dance Clubs & Discos', 'Dance Clubs & Discos', 'Chui', 'chui ', 'Bishkek', 'Yunusaliyeva, 93, Bishkek 720000 Kyrgyzstan', '', '9.96E+11', '', '42.850913', '74.614305', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(987, '13536598', NULL, 'Tuman', 'Bars & Clubs', 'Bars & Clubs', 'Chui', 'chui', 'Bishkek', 'Abdurakhmanova St., 152 Mossovet, Dom Torgovli, Bishkek 720000 Kyrgyzstan', 'https://www.facebook.com/tuman.bar/', '9.97E+11', '', '', '', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(988, '9821184', NULL, 'Plaza-Vostok', 'Game & Entertainment Centers', 'Game & Entertainment Centers', 'Chui', 'chui', 'Bishkek', 'Chui Ave., 30A, Bishkek 720000 Kyrgyzstan', '', '', '', '42.870679', '74.614575', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(989, '12667688', NULL, 'Dilbar', 'Speciality & Gift Shops', 'Speciality & Gift Shops', 'Chui', 'chui', 'Bishkek', 'Gorky St., 27/1, Bishkek 720000 Kyrgyzstan', 'http://www.dilbarstyle.com/', '9.97E+11', 'ludmila78e@yandex.ru', '', '', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(990, '13456285', NULL, 'Crystal', 'Health ClubsYoga & Pilates', 'Health Clubs Yoga & Pilates Spas', 'Chui', 'chui', 'Bishkek', 'Lineynaya St., 67, Bishkek 720000 Kyrgyzstan', 'http://www.crystal.kg/', '9.97E+11', 'Ira.crystal@mail.ru', '42.870679', '74.592627', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(991, '12375425', NULL, 'Cook Story', 'Cooking Classes', 'Cooking Classes', 'c', 'chui', 'Bishkek', 'Tokombayeva St., 53/2, Bishkek 720000 Kyrgyzstan', 'https://www.facebook.com/cookstory/', '9.97E+11', '', '', '', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(992, '19896931', NULL, 'Chakra SPA', 'Spas', 'Spas', 'Chui', 'chui', 'Bishkek', 'Elebayeva St., 60 Golden Dragon Hotel, Bishkek 720000 Kyrgyzstan', 'http://website--5049397282702365540161-massagespa.business.site/?fbclid=IwAR3ZJ6TwaB2Hn0OoQlql7comWfDHD0Gz1hbPPtIokHeB8f1L9HA1OiCAdEo', '9.97E+11', '', '', '', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(993, '14210522', NULL, 'S Legkim Parom', 'Hammams & Turkish BathsSpas', 'Hammams & Turkish Baths Spas', 'Chui', 'chui', 'Bishkek', '', 'http://slegkim-parom.kg/', '9.97E+11', 'mail@slegkim-parom.kg', '42.870679', '74.594163', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(994, '15042516', NULL, 'Enoteca', 'Wine Bars', 'Wine Bars', 'Chui', 'chui', 'Bishkek', 'Moskovskaya, 197, Bishkek 720000 Kyrgyzstan', 'https://www.facebook.com/toscanatf/', '9.97E+11', 'toscanatf@gmail.com', '42.870679', '74.592627', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(995, '12871357', NULL, 'The Pirate Bay', 'Bars & Clubs', 'Bars & Clubs', 'Chui', 'chui', 'Bishkek', 'Mira Ave., 90/92, Bishkek 720000 Kyrgyzstan', 'https://www.facebook.com/thepiratebaykg/', '9.97E+11', '', '', '', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(996, '16746121', NULL, 'Family Spa Avenue', 'Spas', 'Spas', 'Chui', 'chui', 'Bishkek', 'Chui ave., 158, Bishkek 720000 Kyrgyzstan', 'https://www.facebook.com/familyspaavenue/', '9.97E+11', '', '', '', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(997, '17464720', NULL, 'Gergert Sport', 'Gear Rentals', 'Gear Rentals', 'Chui', 'chui', 'Bishkek', 'Gorkogo, 182, Bishkek 720000 Kyrgyzstan', 'http://www.gergert.kg/', '9.96E+11', 'info@gergert.kg', '42.868602', '74.5947', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(998, '25294095', NULL, 'Archa Spa Center', 'Spas', 'Spas', 'Chui', 'chui', 'Bishkek', 'Chyngyza Aitmatova Ave., 93, Bishkek 720000 Kyrgyzstan', 'https://www.instagram.com/archa_spa/', '9.97E+11', '', '42.844247', '74.594123', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(999, '14199763', NULL, 'Nomads', 'Gear Rentals', 'Gear Rentals', 'Chui', 'chui', 'Bishkek', '', 'http://nomads4x4.com/', '9.97E+11', 'erkin@nomads4x4.com', '42.870679', '74.60536', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(1000, '19416209', NULL, 'Verba', 'Speciality & Gift Shops', 'Speciality & Gift Shops', 'Chui', 'chui', 'Bishkek', 'Logvinenko, 26a, Bishkek 720000 Kyrgyzstan', '', '9.97E+11', '', '', '', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(1001, '23017309', NULL, 'Ega Hall', 'Yoga & Pilates', 'Yoga & Pilates', 'Chui', 'chui', 'Bishkek', 'Bokonbayeva, 103, Bishkek 720000 Kyrgyzstan', 'http://egahall.kg/', '9.97E+11', 'egahall.kg@gmail.com', '42.870679', '74.592627', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(1002, '19397154', NULL, 'Quicktransfer', 'Taxis & Shuttles', 'Taxis & Shuttles', 'Chui', 'chui', 'Bishkek', '', 'http://quicktransfer.com/', '4.42E+11', 'info@quicktransfer.com', '', '', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(1003, '23528314', NULL, 'Content Park', 'Game & Entertainment Centers', 'Game & Entertainment Centers', 'Chui', 'chui', 'Bishkek', 'Shopokova 91, Bishkek 720000 Kyrgyzstan', '', '9.97E+11', '', '42.870679', '74.594163', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(1004, '23612245', NULL, 'Antikino The Story', 'Movie Theaters', 'Movie Theaters', 'Chui', 'chui', 'Bishkek', 'Tynystanova St., 99 West side of the building 1st floor, Bishkek 720000 Kyrgyzstan', '', '9.97E+11', '', '42.86769', '74.592627', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(1005, '20316882', NULL, 'Sequoia Rent Service', 'Gear Rentals', 'Gear Rentals', 'Chui', 'chui', 'Bishkek', 'Sydykova, 250-38, Bishkek 720000 Kyrgyzstan', 'https://www.facebook.com/srsinkyrgyzstan/', '9.97E+11', 'srs.autorent.kg@gmail.com', '', '', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(1006, '17746918', NULL, 'Arkan Tokoi', 'Zipline & Aerial Adventure Parks', 'Zipline & Aerial Adventure Parks', 'Chui', 'chui', 'Bishkek', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(1007, '15688322', NULL, 'Gergert Sport Outlet', 'Gear Rentals', 'Gear Rentals', 'Chui', 'chui', 'Bishkek', 'Gorkogo, 119, Bishkek 720000 Kyrgyzstan', 'http://www.gergert.kg/', '9.97E+11', 'gergertsportweb@gmail.com', '42.868602', '74.592627', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(1008, '17456292', NULL, 'Sommeliers', 'Speciality & Gift Shops', 'Speciality & Gift Shops', 'Chui', 'chui', 'Bishkek', 'Erkindik blvd., 16, Bishkek 720000 Kyrgyzstan', '', '9.97E+11', 'sommeliers.kg@gmail.com', '42.870679', '74.592627', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(1009, '25551368', NULL, 'Sunny Bar', 'Bars & Clubs', 'Bars & Clubs', 'Chui', 'chui', 'Bishkek', 'Razzakova str 26, Bishkek 720001 Kyrgyzstan', '', '9.97E+11', '', '42.870679', '74.592627', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(1010, '24106384', NULL, 'Cycling Tours Kyrgyzstan', 'Biking Trails', 'Biking Trails', 'Chui', 'chui', 'Bishkek', 'Jumabeka 29, Bishkek 720000 Kyrgyzstan', 'http://www.facebook.com/cyclingtourskyrgyzstan', '9.97E+11', 'cyclingtourskyrgyzstan@gmail.com', '42.870679', '74.592627', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(1011, '24135486', NULL, 'Paragliding.kg', 'Parasailing & Paragliding', 'Parasailing & Paragliding', 'Chui', 'chui', 'Bishkek', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(1012, '24142782', NULL, 'KladOFFka', 'Bars & Clubs', 'Bars & Clubs', 'Chui', 'chui', 'Bishkek', 'Chui, 187a, Bishkek 720000 Kyrgyzstan', 'https://www.instagram.com/kladoffka.bar/', '', '', '42.870679', '74.592627', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(1013, '22952079', NULL, 'Oasis Residence', 'Karaoke Bars', 'Karaoke Bars', 'Chui', 'chui', 'Bishkek', 'Maldybayeva, 69/1, Bishkek 720000 Kyrgyzstan', 'https://www.instagram.com/oasis_residencekg/', '9.97E+11', 'office@oasis-residence.com', '42.844247', '74.59484', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(1014, '22867338', NULL, 'Vintazh  Wine&Beer', 'Wine Bars', 'Wine Bars', 'Chui', 'chui', 'Bishkek', 'Isanova, 100, Bishkek 720000 Kyrgyzstan', 'http://www.facebook.com/Vintage.wb.bishkek', '9.97E+11', '', '42.870679', '74.592627', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(1015, '23805620', NULL, 'Little Birds City Bar', 'Bars & Clubs', 'Bars & Clubs', 'Chui', 'chui', 'Bishkek', 'Yunusaliyeva, 147, Bishkek 720000 Kyrgyzstan', 'https://www.instagram.com/bar_littlebirds/?hl=en', '9.97E+11', '', '42.844247', '74.614305', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(1016, '25210351', NULL, 'Ala-archa National Park', 'Mountains', 'Mountains', 'Chui', 'chui', 'Bishkek', 'Kiev St, Bishkek 720000 Kyrgyzstan', 'https://kymyz.com/', '9.97E+11', '', '42.878544', '74.592627', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(1017, '17839788', NULL, 'Sport Shooting Complex', 'Shooting Ranges', 'Shooting Ranges', 'Chui', 'chui', 'Bishkek', 'Valikhanova, 2/14, Bishkek 720000 Kyrgyzstan', '', '%28996%29999919919', 'ssf.kgz@gmail.com', '', '', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(1018, '25409275', NULL, 'Boho', 'Bars & Clubs', 'Bars & Clubs', 'Chui', 'chui', 'Bishkek', 'Yunusalieva, 40 A Kosmopark, 3rd floor, Bishkek 720028 Kyrgyzstan', 'https://www.facebook.com/profile.php?id=100063667838920', '9.97E+11', 'agent.reklamnyy@list.ru', '42.84398', '74.59484', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(1019, '23460834', NULL, 'Minibar', 'Bars & Clubs', 'Bars & Clubs', 'Chui', 'chui', 'Bishkek', 'Chingiz Aitmatov, 56 Intersection of Aini, Bishkek 720000 Kyrgyzstan', 'http://www.instagram.com/minibar.bishkek/', '9.97E+11', '', '42.84398', '74.59484', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(1020, '23949888', NULL, 'Chabad Bishkek', 'Religious Sites', 'Religious Sites', 'Chui', 'chui', 'Bishkek', '193 Karpinskogo St., Bishkek 720000 Kyrgyzstan', '', '9.96E+11', 'jbishkek@gmail.com', '42.867355', '74.59064', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(1021, '24968334', NULL, 'Oxygen', 'Bars & Clubs', 'Bars & Clubs', 'Chui', 'chui', 'Bishkek', '1/4 Baitik Baatyr St., 8 Md., Bishkek 720000 Kyrgyzstan', 'https://www.instagram.com/o2loungebar/', '9.97E+11', '', '42.842936', '74.611045', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(1022, '25154035', NULL, 'L-Studio', 'Spas', 'Spas', 'Chui', 'chui', 'Bishkek', '210 Toktogul Street, Bishkek 720000 Kyrgyzstan', 'http://www.lstudio.kg/', '9.97E+11', 'office@lstudio.kg', '42.870679', '74.592487', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(1023, '25256620', NULL, 'Quest Kapaghost', 'Escape Games', 'Escape Games', 'Chui', 'chui', 'Bishkek', 'Oktyabrskaya Street, 250 Verhniy Tokoldosh, Bishkek 720000 Kyrgyzstan', 'https://instagram.com/kapaghost_kg?igshid=ymmymta2m2y=', '9.97E+11', 'getecorporation@gmail.com', '42.870679', '74.59064', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(1024, '25410722', NULL, 'Boho Clubar?ars & ClubsDance Clubs & Discos', 'Bars & Clubs Dance Clubs & Discos', 'Chui', 'chui', 'Bishkek', 'Yunusalieva, 40A, Bishkek 720028 Kyrgyzstan', 'https://www.facebook.com/people/BOHO/100063667838920/', '9.97E+11', 'agent.reklamnyy@list.ru', '42.867355', '74.59064', '', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(1025, '25416658', NULL, 'Everyday Saturday Bar', 'Bars & Clubs', 'Bars & Clubs', 'Chui', 'chui', 'Bishkek', 'Kamchybeka Shakirova, 31, Bishkek 720020 Kyrgyzstan', 'https://www.instagram.com/everyday__saturday/', '', '', '42.867355', '74.59064', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(1026, '14779872', NULL, 'Kol-Tor Lake', 'Bodies of Water', 'Bodies of Water', 'Chuy Province', 'chui', 'Bishkek', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:03', '2023-07-17 00:47:03'),
(1027, '10092267', NULL, 'Kegety Waterfall', 'Bodies of WaterMountains', 'Bodies of Water Mountains Nature & Wildlife Areas Waterfalls', 'Chuy Province', 'Chuy', 'Bishkek', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:04', '2023-07-17 00:47:04'),
(1028, '10235109', NULL, 'Ratsek Cabin', 'MountainsNature & Wildlife Areas', 'Mountains Nature & Wildlife Areas', 'Chuy Province', 'Chuy', 'Bishkek', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:04', '2023-07-17 00:47:04'),
(1029, '10021401', NULL, 'Zhashyl-Kel Lake', 'Bodies of WaterValleys', 'Bodies of Water Valleys', 'Chuy Province', 'Chuy', 'Bishkek', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:04', '2023-07-17 00:47:04'),
(1030, '12698593', NULL, 'Gorge Kara Bulak', 'Geologic Formations', 'Geologic Formations', 'Chuy Province Arashan', 'Chuy', 'Bishkek', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:04', '2023-07-17 00:47:04'),
(1031, '10021370', NULL, 'Chon-Kemin National Park', 'National Parks', 'National Parks', 'Chuy Province Kemin', 'Chuy', 'Bishkek', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:04', '2023-07-17 00:47:04'),
(1032, '10516495', NULL, 'Kel-Kogur Lake', 'Bodies of Water', 'Bodies of Water', 'Chuy Province Kemin', 'Chuy', 'Bishkek', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:04', '2023-07-17 00:47:04'),
(1033, '23636209', NULL, 'Kyrgyz Handmade', 'Speciality & Gift ShopsLessons & Workshops', 'Speciality & Gift Shops Lessons & Workshops', 'Chuy Province Kok Jar', 'Chuy', 'Bishkek', '18, Madieva Taryh Ordo Hall of Baibol Chaihana, Kok Jar 724316 Kyrgyzstan', 'http://handmade.kg/qr/', '9.97E+11', 'info@handmade.kg', '42.852249', '74.61726', '1', 1, '2023-07-17 00:47:04', '2023-07-17 00:47:04'),
(1034, '9820732', NULL, 'The Temple in Honour of Icon of \"All the Afflicted\"', 'Religious Sites', 'Religious Sites', 'Chuy Province Novopokrovka', 'Chuy', 'Bishkek', '', '', '9.96E+11', '', '42.869319', '74.701322', '1', 1, '2023-07-17 00:47:04', '2023-07-17 00:47:04'),
(1035, '25075499', NULL, 'Museum of the Great Emptiness', 'Art Museums', 'Art Museums', 'Chuy Province Orto Say', 'Chuy', 'Bishkek', 'Ormokoyeva, 31, Orto Say 720000 Kyrgyzstan', 'http://greatemptiness.net/', '9.96E+11', '', '', '', '1', 1, '2023-07-17 00:47:04', '2023-07-17 00:47:04'),
(1036, '9996566', NULL, 'Suusamyr Valley', 'MountainsNature & Wildlife Areas', 'Mountains Nature & Wildlife Areas Geologic Formations', 'Chuy Province Suusamyr', 'Chuy', 'Bishkek', '', 'http://www.facebook.com/Pegasadventure/', '9.97E+11', '', '', '', '1', 1, '2023-07-17 00:47:04', '2023-07-17 00:47:04'),
(1037, '15549071', NULL, 'Ata Beyit Memorial', 'Historic SitesMonuments & Statues', 'Historic Sites Monuments & Statues', 'Chuy Province Tash-Dobo', 'Chuy', 'Bishkek', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:04', '2023-07-17 00:47:04'),
(1038, '4176350', NULL, 'Burana Tower', 'Historic SitesObservation Decks & Towers', 'Historic Sites Observation Decks & Towers', 'Chuy Province Tokmok', 'Chuy', 'Tokmok', 'Don-Aryk, Tokmok 722201 Kyrgyzstan', '', '', '', '', '', '1', 1, '2023-07-17 00:47:04', '2023-07-17 00:47:04'),
(1039, '10330907', NULL, 'Kegety Gorge', 'MountainsNature & Wildlife Areas', 'Mountains Nature & Wildlife Areas Valleys', 'Chuy Province Tokmok', 'Chuy', 'Tokmok', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:04', '2023-07-17 00:47:04'),
(1040, '8403671', NULL, 'Tokmok Mosque', 'Religious SitesChurches & Cathedrals', 'Religious Sites Churches & Cathedrals', 'Chuy Province Tokmok', 'Chuy', 'Tokmok', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:04', '2023-07-17 00:47:04'),
(1041, '6652740', NULL, 'Jeti-Oguz Canyon (Seven Bulls Rocks)', 'Canyons', 'Canyons', 'Issyk Kul Province', 'Issyk Kul ', 'Issyk-kul', '', 'http://tourtapp.com/destinations/jeti-oguz-canyon/', '9.97E+11', '', '', '', '1', 1, '2023-07-17 00:47:04', '2023-07-17 00:47:04'),
(1042, '8404243', NULL, 'Semenovskoye Canyon', 'MountainsCanyons', 'Mountains Canyons Geologic Formations', 'Issyk Kul Province', 'Issyk Kul ', 'Tosor', '', 'http://www.tuk.kg/', '9.96E+11', '', '', '', '1', 1, '2023-07-17 00:47:04', '2023-07-17 00:47:04'),
(1043, '10229094', NULL, 'Waterfall Devichi Kosy', 'Waterfalls', 'Waterfalls', 'Issyk Kul Province', 'Issyk Kul ', 'Barskoon', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:04', '2023-07-17 00:47:04'),
(1044, '10229099', NULL, 'Roch Rzbitoye Serdtse', 'MountainsNature & Wildlife Areas', 'Mountains Nature & Wildlife Areas Geologic Formations', 'Issyk Kul Province', 'Issyk Kul ', 'Issyk-kul', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:04', '2023-07-17 00:47:04'),
(1045, '10205985', NULL, 'Burial Mound Complex San-Tash', 'Points of Interest & LandmarksGeologic Formations', 'Points of Interest & Landmarks Geologic Formations', 'Issyk Kul Province', 'Issyk Kul ', 'Issyk-kul', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:04', '2023-07-17 00:47:04'),
(1046, '10239399', NULL, 'Maiden Tears Waterfall', 'Waterfalls', 'Waterfalls', 'Issyk Kul Province', 'Issyk Kul ', 'Issyk-kul', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:04', '2023-07-17 00:47:04'),
(1047, '10021270', NULL, 'Ak-Suu Gorge', 'MountainsHiking Trails', 'Mountains Hiking Trails', 'Issyk Kul Province Ak-Suu', 'Issyk Kul ', 'Altyn-Arashan', '', 'http://www.ecotrek.kg/', '9.97E+11', '', '', '', '1', 1, '2023-07-17 00:47:04', '2023-07-17 00:47:04'),
(1048, '10021294', NULL, 'Ak-Suu Hot Spring', 'SpasThermal Spas', 'Spas Thermal Spas', 'Issyk Kul Province Ak-Suu', 'Issyk Kul ', 'Altyn-Arashan', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:04', '2023-07-17 00:47:04'),
(1049, '10064795', NULL, 'Tuz-Kol, Dead Lake', 'Bodies of Water', 'Bodies of Water', 'Issyk Kul Province Balykchy', 'Issyk Kul ', 'Balykchy', '', 'http://www.ecotrek.kg/', '9.97E+11', '', '', '', '1', 1, '2023-07-17 00:47:04', '2023-07-17 00:47:04'),
(1050, '24060322', NULL, 'Asman', 'Sports Complexes', 'Sports Complexes', 'Issyk Kul Province Balykchy', 'Issyk Kul ', 'Balykchy', 'Amanbayeva, 172, Balykchy 722300 Kyrgyzstan', 'https://www.instagram.com/_asman_balykchy_/', '9.97E+11', 'asman.spa@gmail.com', '42.458124', '76.196118', '1', 1, '2023-07-17 00:47:04', '2023-07-17 00:47:04'),
(1051, '4952511', NULL, 'Barskoon Waterfall', 'Points of Interest & LandmarksWaterfalls', 'Points of Interest & Landmarks Waterfalls', 'Issyk Kul Province Barskoon', 'Issyk Kul ', 'Barskoon', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:04', '2023-07-17 00:47:04'),
(1052, '10224880', NULL, 'Barskoon Gorge', 'MountainsNature & Wildlife Areas', 'Mountains Nature & Wildlife Areas', 'Issyk Kul Province Barskoon', 'Issyk Kul ', 'Barskoon', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:04', '2023-07-17 00:47:04'),
(1053, '10224889', NULL, 'Barskoon Plateau', 'Nature & Wildlife Areas', 'Nature & Wildlife Areas', 'Issyk Kul Province Barskoon', 'Issyk Kul ', 'Barskoon', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:04', '2023-07-17 00:47:04'),
(1054, '10228930', NULL, 'Monument to Yuriy Gagarin', 'Monuments & Statues', 'Monuments & Statues', 'Issyk Kul Province Barskoon', 'Issyk Kul ', 'Barskoon', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:04', '2023-07-17 00:47:04'),
(1055, '10324919', NULL, 'Ak-Shyyrak Ridge', 'MountainsNature & Wildlife Areas', 'Mountains Nature & Wildlife Areas', 'Issyk Kul Province Barskoon', 'Issyk Kul ', 'Barskoon', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:04', '2023-07-17 00:47:04'),
(1056, '17353327', NULL, 'Ak Orgo Yurt Workshop', 'Paint & Pottery Studios', 'Paint & Pottery Studios', 'Issyk Kul Province Barskoon', 'Issyk Kul ', 'Barskoon', '97, Lenin street 97, ??????, Barskoon 722005 Kyrgyzstan', '', '9.97E+11', 'akorgo.kyrgyzstan@gmail.com', '', '', '1', 1, '2023-07-17 00:47:04', '2023-07-17 00:47:04'),
(1057, '10024295', NULL, 'Teshik-Kul Lake', 'Bodies of Water', 'Bodies of Water', 'Issyk Kul Province Bokombayevskoye', 'Issyk Kul ', 'Bokombayevskoye', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:04', '2023-07-17 00:47:04'),
(1058, '13582305', NULL, 'Destination South Shore', 'Visitor Centers', 'Visitor Centers', 'Issyk Kul Province Bokonbayevo', 'Issyk Kul ', 'Province-Bokonbayevo', 'Mambetov Street, 37B Toichubekov Culture House, 2nd floor, Bokonbayevo 722300 Kyrgyzstan', 'http://southshorekg.com/contact/', '9.97E+11', 'southshoreik@gmail.com', '', '', '1', 1, '2023-07-17 00:47:04', '2023-07-17 00:47:04'),
(1059, '25418309', NULL, 'Kolfest ?nternational Music and Arts Festival', 'Music Festivals', 'Music Festivals', 'Issyk Kul Province Bokonbayevo', 'Issyk Kul ', 'Bokombaevo', '', 'http://www.kolfest.com/', '9.97E+11', 'kolfestkg@gmail.com', '', '', '1', 1, '2023-07-17 00:47:04', '2023-07-17 00:47:04'),
(1060, '12662287', NULL, 'Ferris Wheel', 'Observation Decks & Towers', 'Observation Decks & Towers', 'Issyk Kul Province Bosteri', 'Issyk Kul ', 'Bosteri', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:04', '2023-07-17 00:47:04'),
(1061, '5000141', NULL, 'Ruh Ordo Cultural Center', 'Civic Centres', 'Civic Centres', 'Issyk Kul Province Cholpon Ata', 'Issyk Kul ', 'Cholpon-Ata', 'Sovetskaya St President Summer Residency - Sovmin, Cholpon Ata 722315 Kyrgyzstan', 'http://rukhordo.kg/', '9.97E+11', 'ruhordo2007@gmail.com', '42.64649', '77.104517', '1', 1, '2023-07-17 00:47:04', '2023-07-17 00:47:04'),
(1062, '4946285', NULL, 'Museum of Petroglyphs', 'Speciality Museums', 'Speciality Museums', 'Issyk Kul Province Cholpon Ata', 'Issyk Kul ', 'Cholpon-Ata', '', 'http://www.kyrgyztours.com/', '9.97E+11', '', '42.643233', '77.095295', '1', 1, '2023-07-17 00:47:04', '2023-07-17 00:47:04'),
(1063, '6429016', NULL, 'Historical Museum', 'Speciality Museums', 'Speciality Museums', 'Issyk Kul Province Cholpon Ata', 'Issyk Kul ', 'Cholpon-Ata', 'A363 Cholpon Ata, Cholpon Ata 722315 Kyrgyzstan', '', '9.96E+11', '', '42.64649', '77.099568', '1', 1, '2023-07-17 00:47:04', '2023-07-17 00:47:04'),
(1064, '13098578', NULL, 'The Equestrian Hippodrome', 'Sports Complexes', 'Sports Complexes', 'Issyk Kul Province Cholpon Ata', 'Issyk Kul ', 'Cholpon-Ata', '', 'http://worldnomadgames.com/en/places/Hippodrome/#', '', '', '42.64649', '77.119224', '1', 1, '2023-07-17 00:47:04', '2023-07-17 00:47:04'),
(1065, '10224016', NULL, 'Abandoned Airport Cholpon Ata', 'Points of Interest & LandmarksMysterious Sites', 'Points of Interest & Landmarks Mysterious Sites', 'Issyk Kul Province Cholpon Ata', 'Issyk Kul ', 'Cholpon-Ata', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:04', '2023-07-17 00:47:04'),
(1066, '10031701', NULL, 'Oluya Cholpon Ata Mausoleum', 'Architectural BuildingsCemeteries', 'Architectural Buildings Cemeteries', 'Issyk Kul Province Cholpon Ata', 'Issyk Kul ', 'Cholpon-Ata', '', 'http://www.applehostel.kg/en/', '', '', '', '', '1', 1, '2023-07-17 00:47:04', '2023-07-17 00:47:04'),
(1067, '10224000', NULL, 'Abandoned Runway', 'Points of Interest & LandmarksMysterious Sites', 'Points of Interest & Landmarks Mysterious Sites', 'Issyk Kul Province Cholpon Ata', 'Issyk Kul ', 'Cholpon-Ata', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:04', '2023-07-17 00:47:04'),
(1068, '10229108', NULL, 'Lenin Statue', 'Monuments & Statues', 'Monuments & Statues', 'Issyk Kul Province Cholpon Ata', 'Issyk Kul ', 'Cholpon-Ata', 'Sovetskaya St., Cholpon Ata 722315 Kyrgyzstan', '', '', '', '42.64649', '77.084075', '1', 1, '2023-07-17 00:47:04', '2023-07-17 00:47:04'),
(1069, '17600084', NULL, 'Cholpon Fountain', 'Fountains', 'Fountains', 'Issyk Kul Province Cholpon Ata', 'Issyk Kul ', 'Cholpon-Ata', 'A363, Cholpon Ata 722315 Kyrgyzstan', '', '', '', '', '', '1', 1, '2023-07-17 00:47:04', '2023-07-17 00:47:04'),
(1070, '17469704', NULL, 'Hippodrome Cholpon-Ata', 'Horse Tracks', 'Horse Tracks', 'Issyk Kul Province Cholpon Ata', 'Issyk Kul ', 'Cholpon-Ata', 'A363, Cholpon Ata 722315 Kyrgyzstan', '', '', '', '', '', '1', 1, '2023-07-17 00:47:04', '2023-07-17 00:47:04'),
(1071, '25163894', NULL, 'Termal', 'Hot Springs & Geysers', 'Hot Springs & Geysers', 'Issyk Kul Province Cholpon Ata', 'Issyk Kul ', 'Cholpon-Ata', 'Alleya Aitmatova 6a/1, Cholpon Ata 722315 Kyrgyzstan', '', '9.97E+11', 'ovoazim@gmail.com', '42.646781', '77.095005', '1', 1, '2023-07-17 00:47:04', '2023-07-17 00:47:04'),
(1072, '17599963', NULL, 'Veterans Monument', 'Monuments & Statues', 'Monuments & Statues', 'Issyk Kul Province Cholpon Ata', 'Issyk Kul ', 'Cholpon-Ata', 'A363, Cholpon Ata 722315 Kyrgyzstan', '', '', '', '', '', '1', 1, '2023-07-17 00:47:04', '2023-07-17 00:47:04'),
(1073, '24928967', NULL, 'Termal Spa Center', 'Thermal Spas', 'Thermal Spas', 'Issyk Kul Province Cholpon Ata', 'Issyk Kul ', 'Cholpon-Ata', 'Alleya Aitmatova, 6a/1, Cholpon Ata 722315 Kyrgyzstan', '', '9.97E+11', 'aikamusiconly@gmail.com', '42.646421', '77.089227', '1', 1, '2023-07-17 00:47:04', '2023-07-17 00:47:04'),
(1074, '8059960', NULL, 'Hot springs', 'Thermal Spas', 'Thermal Spas', 'Issyk Kul Province Chon-Uryukty', 'Issyk Kul ', 'Uryukty', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:04', '2023-07-17 00:47:04'),
(1075, '13388773', NULL, 'Keremet Suu Hot Spring', 'Thermal Spas', 'Thermal Spas', 'Issyk Kul Province Chon-Uryukty', 'Issyk Kul ', 'Uryukty', 'Akademiya, 25, Chon-Uryukty 722360 Kyrgyzstan', '', '', '', '', '', '1', 1, '2023-07-17 00:47:04', '2023-07-17 00:47:04'),
(1076, '9996607', NULL, 'Engilchek Glacier', 'MountainsNature & Wildlife Areas', 'Mountains Nature & Wildlife Areas Geologic Formations', 'Issyk Kul Province Engilchek', 'Issyk Kul ', 'Engilchek', '', 'http://www.ecotrek.kg/', '9.97E+11', '', '', '', '1', 1, '2023-07-17 00:47:04', '2023-07-17 00:47:04'),
(1077, '8404242', NULL, 'Grigorevskoye Canyon', 'Forests', 'Forests', 'Issyk Kul Province Grigoryevka', 'Issyk Kul ', 'Grigoryevka', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:04', '2023-07-17 00:47:04'),
(1078, '10224023', NULL, 'Abandoned Pension Utyos', 'Points of Interest & LandmarksMysterious Sites', 'Points of Interest & Landmarks Mysterious Sites', 'Issyk Kul Province Kaji-Say', 'Issyk Kul ', 'Kaji-Say', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:04', '2023-07-17 00:47:04'),
(1079, '10228913', NULL, 'Tyoploye Lake', 'Bodies of Water', 'Bodies of Water', 'Issyk Kul Province Kaji-Say', 'Issyk Kul ', 'Kaji-Say', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:04', '2023-07-17 00:47:04'),
(1080, '19436423', NULL, 'Shygaev Museum of Modern Art', 'Art Museums', 'Art Museums', 'Issyk Kul Province Kaji-Say', 'Issyk Kul ', 'Kaji-Say', 'Issyk-Kulskaya St., 34A, Kaji-Say 722304 Kyrgyzstan', 'http://www.facebook.com/shygaevmuseum', '9.97E+11', 'shygaevmuseum@gmail.com', '', '', '1', 1, '2023-07-17 00:47:04', '2023-07-17 00:47:04'),
(1081, '10091505', NULL, 'Manjyly-Ata Valley', 'Valleys', 'Valleys', 'Issyk Kul Province Kaji-Say', 'Issyk Kul ', 'Kaji-Say', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:04', '2023-07-17 00:47:04'),
(1082, '13294456', NULL, 'Kadzhi-Saz Gorge', 'Canyons', 'Canyons', 'Issyk Kul Province Kaji-Say', 'Issyk Kul ', 'Kaji-Say', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:04', '2023-07-17 00:47:04'),
(1083, '1060132', NULL, 'Issyk-Kul Lake', 'Bodies of Water', 'Bodies of Water', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', 'Tian Shan Mountains, Karakol 722360 Kyrgyzstan', '', '', '', '42.443169', '78.430655', '1', 1, '2023-07-17 00:47:04', '2023-07-17 00:47:04'),
(1084, '2709342', NULL, 'Altyn Arashan', 'Hot Springs & Geysers', 'Hot Springs & Geysers', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '', '', '9.97E+11', '', '42.346957', '78.574065', '1', 1, '2023-07-17 00:47:04', '2023-07-17 00:47:04'),
(1085, '8791818', NULL, 'Ala Kul Lake', 'Bodies of Water', 'Bodies of Water', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '', 'http://tourtapp.com/destinations/ala-kul-lake/', '9.97E+11', 'info@tourtapp.com', '42.37472', '78.61', '1', 1, '2023-07-17 00:47:04', '2023-07-17 00:47:04'),
(1086, '5529525', NULL, 'Holy Trinity Russian Orthodox Cathederal', 'Churches & Cathedrals', 'Churches & Cathedrals', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', 'Holy Trinity Russian Orthodox Cathederal, Karakol 722360 Kyrgyzstan', '', '', '', '42.485223', '78.391378', '1', 1, '2023-07-17 00:47:04', '2023-07-17 00:47:04'),
(1087, '736889', NULL, 'Karakol Ski Base', 'Ski & Snowboard Areas', 'Ski & Snowboard Areas', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '', 'http://www.ski-karakol.com/', '9.97E+11', '', '42.414671', '78.411884', '1', 1, '2023-07-17 00:47:04', '2023-07-17 00:47:04'),
(1088, '4221145', NULL, 'Nikolai Przhevalsky Museum', 'Speciality Museums', 'Speciality Museums', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', 'Ak-Su, Karakol 722360 Kyrgyzstan', 'http://www.ecotrek.kg/', '9.97E+11', '', '42.573498', '78.307578', '1', 1, '2023-07-17 00:47:04', '2023-07-17 00:47:04'),
(1089, '5999969', NULL, 'Dungan Mosque', 'Points of Interest & Landmarks', 'Points of Interest & Landmarks', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '', 'http://hikingkyrgyzstan.com/blog-about-kyrgyzstan/karakol/', '9.97E+11', 'hikingkyrgzystan@gmail.com', '42.485223', '78.391378', '1', 1, '2023-07-17 00:47:04', '2023-07-17 00:47:04'),
(1090, '6834930', NULL, 'Monument N.M. Przhevalsky', 'Points of Interest & LandmarksMonuments & Statues', 'Points of Interest & Landmarks Monuments & Statues', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', 'Dzerzhinsky Street, Karakol 722360 Kyrgyzstan', 'http://www.ecotrek.kg/', '9.97E+11', '', '42.573117', '78.309015', '1', 1, '2023-07-17 00:47:04', '2023-07-17 00:47:04'),
(1091, '6908490', NULL, 'Karakol Cattle Market', 'Farmers Markets', 'Farmers Markets', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '', 'http://www.advantour.com/kyrgyzstan/karakol/karakol-cattle-market.htm', '9.97E+11', '', '', '', '1', 1, '2023-07-17 00:47:04', '2023-07-17 00:47:04'),
(1092, '11933521', NULL, 'Jyrgalan Valley', 'Ski & Snowboard AreasValleys', 'Ski & Snowboard Areas Valleys', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '', '', '', '', '42.604531', '79.019198', '1', 1, '2023-07-17 00:47:04', '2023-07-17 00:47:04'),
(1093, '9996574', NULL, 'Karakol Gorge', 'MountainsGeologic Formations', 'Mountains Geologic Formations', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Province-Karakol', '', 'http://www.facebook.com/Kyrgyzguides', '9.97E+11', '', '', '', '1', 1, '2023-07-17 00:47:04', '2023-07-17 00:47:04'),
(1094, '7597610', NULL, 'Karakol Historical Museum', 'History Museums', 'History Museums', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Province-Karakol', 'Gagarin/Jamansariev, Karakol 722360 Kyrgyzstan', 'http://visitkarakol.com/localhistorymuseum', '9.96E+11', '', '42.485223', '78.391378', '1', 1, '2023-07-17 00:47:04', '2023-07-17 00:47:04'),
(1095, '9996588', NULL, 'Karakol Peak', 'State ParksMountains', 'State Parks Mountains', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '', 'http://karakolnaturepark.com/', '9.97E+11', '', '', '', '1', 1, '2023-07-17 00:47:04', '2023-07-17 00:47:04'),
(1096, '7155859', NULL, 'Saimaluu-Tash Reserve Museum', 'Speciality MuseumsPoints of Interest & Landmarks', 'Speciality Museums Points of Interest & Landmarks', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', 'Nordbredden Pa Issyk-Kul Soen, Karakol 722360 Kyrgyzstan', 'http://www.advantour.com/kyrgyzstan/museums/saimaluu-tash.htm', '', '', '', '', '1', 1, '2023-07-17 00:47:04', '2023-07-17 00:47:04'),
(1097, '10021276', NULL, 'Juuku Gorge', 'MountainsNature & Wildlife Areas', 'Mountains Nature & Wildlife Areas Canyons Geologic Formations', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '', 'http://www.ecotrek.kg/', '9.97E+11', '', '', '', '1', 1, '2023-07-17 00:47:04', '2023-07-17 00:47:04'),
(1098, '7602031', NULL, 'Karakol Tourist Information Center', 'Visitor Centers', 'Visitor Centers', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', 'Abdrahmanov St 130, Karakol 722360 Kyrgyzstan', 'https://www.facebook.com/Tourist-Information-Center-in-Karakol-1123711857671978/?ref=page_internal', '9.97E+11', '', '', '', '1', 1, '2023-07-17 00:47:04', '2023-07-17 00:47:04'),
(1099, '7393405', NULL, 'Bugu-Ene Zoo', 'Zoos', 'Zoos', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', 'Koenkozov/Parkovaya St., Karakol 722360 Kyrgyzstan', 'http://www.ecotrek.kg/', '9.97E+11', '', '', '', '1', 1, '2023-07-17 00:47:04', '2023-07-17 00:47:04'),
(1100, '9996561', NULL, 'Khan Tengri Peak', 'Mountains', 'Mountains', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:04', '2023-07-17 00:47:04'),
(1101, '10084870', NULL, 'Oguz-Bashi Peak', 'Geologic Formations', 'Geologic Formations', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:04', '2023-07-17 00:47:04'),
(1102, '12474845', NULL, 'Destination Karakol Visitor Center', 'Visitor Centers', 'Visitor Centers', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '22 Gagarin St Situated next to Fat Cat Coffee, Karakol 722360 Kyrgyzstan', 'https://destinationkarakol.com/about/services/', '9.97E+11', 'info@destinationkarakol.com', '42.486534', '78.391378', '1', 1, '2023-07-17 00:47:04', '2023-07-17 00:47:04'),
(1103, '10209155', NULL, 'Karkara Valley', 'MountainsNature & Wildlife Areas', 'Mountains Nature & Wildlife Areas Valleys', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:04', '2023-07-17 00:47:04'),
(1104, '10024241', NULL, 'Przewalski Peak', 'MountainsNature & Wildlife Areas', 'Mountains Nature & Wildlife Areas Geologic Formations', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '', 'http://www.ecotrek.kg/', '9.97E+11', '', '', '', '1', 1, '2023-07-17 00:47:04', '2023-07-17 00:47:04'),
(1105, '8066338', NULL, 'Children Park Balakai', 'Playgrounds', 'Playgrounds', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '', 'https://www.facebook.com/pages/%D0%94%D0%B5%D1%82%D1%81%D0%BA%D0%B8%D0%B9-%D0%9F%D0%B0%D1%80%D0%BA-%D0%91%D0%B0%D0%BB%D0%B0%D0%BA%D0%B0%D0%B9/1480074908912578?sk=timeline', '9.97E+11', '', '', '', '1', 1, '2023-07-17 00:47:04', '2023-07-17 00:47:04'),
(1106, '11897942', NULL, 'Antique Shop of Aleksandr Korablev', 'Antique Shops', 'Antique Shops', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Province-Karakol', 'Jamansariev Street Corner of Toktogul & Jamansariev, Karakol 722360 Kyrgyzstan', 'http://visitkarakol.com/antique_shop_karakol', '9.97E+11', '', '', '', '1', 1, '2023-07-17 00:47:04', '2023-07-17 00:47:04');
INSERT INTO `places` (`id`, `CSV_Id`, `image`, `Name`, `Category`, `Attraction_Type`, `Region`, `Rayon`, `City`, `Address`, `Website`, `Telephone`, `Email`, `Latitude`, `Longitude`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
(1107, '12501259', NULL, 'Karakol Meeting Point', 'Visitor Centers', 'Visitor Centers', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Province-Karakol', '86 Jusaev Street Karasaev St., Karakol 722200 Kyrgyzstan', 'http://duetkarakol.wordpress.com/meeting-point/', '9.97E+11', 'duetkarakol@gmail.com', '42.484449', '78.391378', '1', 1, '2023-07-17 00:47:04', '2023-07-17 00:47:04'),
(1108, '10516482', NULL, 'Sary-Jaz Valley', 'MountainsNature & Wildlife Areas', 'Mountains Nature & Wildlife Areas Valleys', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Province-Karakol', '', 'http://visitkarakol.com/sary_jaz', '9.97E+11', '', '', '', '1', 1, '2023-07-17 00:47:04', '2023-07-17 00:47:04'),
(1109, '10324956', NULL, 'Boris Yeltsin Peak', 'Mountains', 'Mountains', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:04', '2023-07-17 00:47:04'),
(1110, '10064765', NULL, 'Merzbacher Lake', 'Bodies of Water', 'Bodies of Water', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:04', '2023-07-17 00:47:04'),
(1111, '10024209', NULL, 'Djigit Peak', 'MountainsNature & Wildlife Areas', 'Mountains Nature & Wildlife Areas Geologic Formations', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '', 'http://www.ecotrek.kg/', '9.97E+11', '', '', '', '1', 1, '2023-07-17 00:47:04', '2023-07-17 00:47:04'),
(1112, '9996631', NULL, 'Telety Pass', 'MountainsNature & Wildlife Areas', 'Mountains Nature & Wildlife Areas Geologic Formations', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '', 'http://www.ecotrek.kg/', '9.97E+11', '', '', '', '1', 1, '2023-07-17 00:47:04', '2023-07-17 00:47:04'),
(1113, '13094936', NULL, 'River Park', 'Parks', 'Parks', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '195 Shapak Baatyr, Karakol 722360 Kyrgyzstan', 'http://www.destinationkarakol.com/', '', '', '', '', '1', 1, '2023-07-17 00:47:04', '2023-07-17 00:47:04'),
(1114, '15042333', NULL, 'Park Pobedy', 'Parks', 'Parks', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1115, '9996660', NULL, 'Jengish Peak', 'MountainsNature & Wildlife Areas', 'Mountains Nature & Wildlife Areas Geologic Formations', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '', 'http://www.ecotrek.kg/', '9.97E+11', '', '', '', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1116, '10236655', NULL, 'Tolgonai Ene Handcraft Workshop', 'Speciality Museums', 'Speciality Museums', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', 'Lenina St., 150, Karakol 722360 Kyrgyzstan', '', '9.97E+11', '', '', '', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1117, '14994464', NULL, 'The Monument of Aryk Myrza', 'Monuments & Statues', 'Monuments & Statues', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', 'Tsentralny Skver, Karakol 722360 Kyrgyzstan', '', '', '', '', '', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1118, '15042355', NULL, 'Monument to Tagai-Biy', 'Points of Interest & LandmarksMonuments & Statues', 'Points of Interest & Landmarks Monuments & Statues', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1119, '8805474', NULL, 'Issyk Kul Brand Shop', 'Speciality & Gift Shops', 'Speciality & Gift Shops', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Province-Karakol', 'Toktogula, Karakol 722360 Kyrgyzstan', 'http://www.facebook.com/One-Village-One-Product-Issyk-kul-236219876529319', '9.96E+11', '', '', '', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1120, '15042493', NULL, 'Pushkin Park', 'Parks', 'Parks', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1121, '15042315', NULL, 'Tsentralny Skver', 'Parks', 'Parks', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1122, '23839711', NULL, 'The Hut', 'Bars & Clubs', 'Bars & Clubs', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Province-Karakol', '', 'http://instagram.com/the_hut_karakol?utm_medium=copy_link', '9.97E+11', '', '42.484449', '78.391378', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1123, '17562257', NULL, 'Karakol Big Bazaar', 'Farmers Markets', 'Farmers Markets', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', 'Corner of Torgoev and Aldashev Streets, Karakol 722360 Kyrgyzstan', '', '', '', '', '', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1124, '17562255', NULL, 'Small Bazaar', 'Farmers Markets', 'Farmers Markets', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', 'Corner of Alybakov & Gagarin Streets, Karakol 722360 Kyrgyzstan', '', '', '', '', '', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1125, '17604359', NULL, 'Massage Karakol Tatiana', 'Spas', 'Spas', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', 'Koenkozova/ Jamansarieva, Karakol 722200 Kyrgyzstan', 'https://massagekarakol.business.site/', '9.97E+11', '', '42.484449', '78.391378', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1126, '17539793', NULL, 'Issyk-Kul Kayaking', 'Kayaking & Canoeing', 'Kayaking & Canoeing', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1127, '10105957', NULL, 'Sky Trial', 'Parasailing & Paragliding', 'Parasailing & Paragliding', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1128, '10021290', NULL, 'Jyrgalan Hot Spring', 'SpasThermal Spas', 'Spas Thermal Spas', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1129, '16816548', NULL, 'Duet SPA & Salon', 'Spas', 'Spas', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Province-Karakol', '150 Karasaeva Street Jusaev Street, Karakol 722200 Kyrgyzstan', 'http://www.facebook.com/duetspasalon/', '9.97E+11', 'duetspasalon@gmail.com', '42.484449', '78.391378', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1130, '17540227', NULL, 'Urban Monkey', 'Bars & Clubs', 'Bars & Clubs', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', 'Kydyr Ake, 4 Urban Monkey Tent Hostel &bar, Karakol 722360 Kyrgyzstan', 'http://hostelinkarakol.com/', '9.97E+11', '', '', '', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1131, '7787967', NULL, 'Zum Depart', 'Speciality & Gift ShopsDepartment Stores', 'Speciality & Gift Shops Department Stores Shopping Malls', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', 'Toktogula St., Karakol 722360 Kyrgyzstan', '', '', '', '', '', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1132, '10021304', NULL, 'Saruu Hot Spring', 'SpasThermal Spas', 'Spas Thermal Spas', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '', '', '9.96E+11', '', '', '', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1133, '11911195', NULL, 'Time for Travel', 'Bus Services', 'Bus Services', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '', 'http://www.ecotrek.kg/index.php/en/', '9.97E+11', 'vbn_nbv@mail.ru', '', '', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1134, '17708724', NULL, 'Aibek Omurbek uulu', 'Escape GamesTaxis & Shuttles', 'Escape Games Taxis & Shuttles Bike Tours Hiking & Camping Tours Food Tours Horseback Riding Tours Day Trips', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1135, '23309574', NULL, 'Lake Zhashyl Kol', 'Bodies of Water', 'Bodies of Water', 'Issyk Kul Province Karakol', 'Issyk Kul ', 'Karakol', 'Karakol gorge, Karakol 722360 Kyrgyzstan', '', '', '', '42.447042', '78.3848', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1136, '6628585', NULL, 'Radon Springs Djuuku', 'Bodies of Water', 'Bodies of Water', 'Issyk Kul Province Saruu', 'Issyk Kul ', 'Saruu', '', 'http://triptokyrgyzstan.com/ru/destinations/places/goryachie-istochniki-dzhuuku#.U3OFIigZKRM', '', '', '', '', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1137, '14971363', NULL, 'Suttu Bulak', 'Bodies of Water', 'Bodies of Water', 'Issyk Kul Province Semenovka', 'Issyk Kul ', 'Semenovka', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1138, '8066189', NULL, 'Temple of the Holy Great Martyr Demetrios', 'Churches & Cathedrals', 'Churches & Cathedrals', 'Issyk Kul Province Teploklyuchenka', 'Issyk Kul ', 'Teplokyuchenko', 'Lenina St., 95, Teploklyuchenka 722347 Kyrgyzstan', 'http://www.eparchia.kg/hramy/36', '9.97E+11', '', '', '', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1139, '7020995', NULL, 'Canyon Fairy Tale', 'Canyons', 'Canyons', 'Issyk Kul Province Tosor', 'Issyk Kul ', 'Province-Tosor', '', 'http://www.facebook.com/Pegasadventure/', '9.97E+11', '', '42.162282', '77.347672', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1140, '12899912', NULL, 'Canyon Skazka', 'Geologic Formations', 'Geologic Formations', 'Issyk Kul Province Tosor', 'Issyk Kul ', 'Tosor', '', '', '', '', '42.162257', '77.348095', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1141, '10325110', NULL, 'Tosor Pass', 'MountainsCanyons', 'Mountains Canyons Valleys', 'Issyk Kul Province Tosor', 'Issyk Kul ', 'Tosor', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1142, '8504342', NULL, 'Sary Chelek Biosphere Reserve', 'National Parks', 'National Parks', 'Jalal-Abad Province', 'Jalal-Abad', 'Province', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1143, '6433871', NULL, 'Saimaluu Tash', 'National Parks', 'National Parks', 'Jalal-Abad Province', 'Jalal-Abad', 'Jalal-Abad', '', 'http://whc.unesco.org/en/tentativelists/1512/', '', '', '', '', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1144, '10113022', NULL, 'Kara-Suu Lake', 'Bodies of WaterMountains', 'Bodies of Water Mountains Nature & Wildlife Areas Canyons Geologic Formations', 'Jalal-Abad Province', 'Jalal-Abad', 'Province', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1145, '10084882', NULL, 'Arslanbob Walnut Forest', 'National ParksNature & Wildlife Areas', 'National Parks Nature & Wildlife Areas Forests', 'Jalal-Abad Province Arslanbob', 'Jalal-Abad', 'Arslanbob', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1146, '10089052', NULL, 'Arslanbob Waterfalls', 'Bodies of WaterNature & Wildlife Areas', 'Bodies of Water Nature & Wildlife Areas Waterfalls', 'Jalal-Abad Province Arslanbob', 'Jalal-Abad', 'Arslanbob', '', 'http://www.cbtkyrgyzstan.kg/en/cbt-groups/cbt-arstanbap', '9.97E+11', '', '', '', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1147, '10091476', NULL, 'Holy Rock', 'MountainsNational Parks', 'Mountains National Parks Canyons Forests Geologic Formations', 'Jalal-Abad Province Arslanbob', 'Jalal-Abad', 'Arslanbob', '', 'http://www.cbtkyrgyzstan.kg/en/cbt-groups/cbt-arstanbap', '9.97E+11', '', '', '', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1148, '10209139', NULL, 'Padysh-Ata Reserve', 'State ParksNational Parks', 'State Parks National Parks Nature & Wildlife Areas', 'Jalal-Abad Province Jalal-Abad', 'Jalal-Abad', 'Jalal-Abad', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1149, '10112277', NULL, 'Shah-Fazil', 'Religious Sites', 'Religious Sites', 'Jalal-Abad Province Safed-Bulan', 'Jalal-Abad', 'Bulan', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1150, '7912835', NULL, 'Toktogul Lake', 'Bodies of Water', 'Bodies of Water', 'Jalal-Abad Province Toktogul', 'Jalal-Abad', 'Toktogul', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1151, '10205989', NULL, 'Chichkan Gorge', 'MountainsCanyons', 'Mountains Canyons Geologic Formations', 'Jalal-Abad Province Toktogul', 'Jalal-Abad', 'Toktogul', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1152, '14000902', NULL, 'Ak-Tash Ski Resort', 'Ski & Snowboard Areas', 'Ski & Snowboard Areas', 'Kashka Suu', 'Chuy', 'Kashka-Suu', '', 'http://aktash.kg/', '9.97E+11', 'ak-tash@inbox.ru', '', '', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1153, '2701597', NULL, 'Song Kol Lake', 'Bodies of Water', 'Bodies of Water', 'Naryn Province', 'Naryn', 'Province', 'Song Kol lake pionerskaya 20, Kochkor, 722600 Kyrgyzstan', '', '', 'Pegasadventure@gmail.com', '42.20082', '75.765575', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1154, '459861', NULL, 'Son Kul Lake', 'Bodies of Water', 'Bodies of Water', 'Naryn Province', 'Naryn', 'Province', 'Kyrgyzstan, Kyrgyzstan, 720000 Kyrgyzstan', '', '', '', '', '', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1155, '459862', NULL, 'Tash Rabat', 'Valleys', 'Valleys', 'Naryn Province', 'Naryn', 'Naryn-Province', '', 'http://www.facebook.com/Pegasadventure/', '9.97E+11', '', '', '', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1156, '10063840', NULL, 'Shyrdakbek Korgon', 'Ancient RuinsPoints of Interest & Landmarks', 'Ancient Ruins Points of Interest & Landmarks', 'Naryn Province', 'Naryn', 'Province', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1157, '8756348', NULL, 'Kol Suu', 'Bodies of Water', 'Bodies of Water', 'Naryn Province At-Bashi', 'Naryn', 'At-Bashi', '', 'http://www.facebook.com/Pegasadventure/', '9.97E+11', '', '40.63896', '76.40482', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1158, '8408187', NULL, 'Chatyr-Kul Lake', 'Bodies of WaterBeaches', 'Bodies of Water Beaches', 'Naryn Province At-Bashi', 'Naryn', 'Bashi', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1159, '10021352', NULL, 'Shar Waterfall', 'Waterfalls', 'Waterfalls', 'Naryn Province At-Bashi', 'Naryn', 'Bashi', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1160, '8791689', NULL, 'Kashka Suu', 'Geologic Formations', 'Geologic Formations', 'Naryn Province At-Bashi', 'Naryn', 'Bashi', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1161, '10168566', NULL, 'Koshoy Korgon', 'Ancient RuinsPoints of Interest & Landmarks', 'Ancient Ruins Points of Interest & Landmarks Nature & Wildlife Areas', 'Naryn Province Kara-Suu', 'Naryn', 'Suu', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1162, '9996546', NULL, 'Kol-Ukok Lake', 'Bodies of Water', 'Bodies of Water', 'Naryn Province Kochkor', 'Naryn', 'Kochkor', 'Kyrgyzstan, Kochkor Kol ukok, Kochkor 722500 Kyrgyzstan', '', '9.97E+11', 'azizovmaxi@gmail.com', '', '', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1163, '10357610', NULL, 'Orto-Tokoy Water Reservoir', 'Bodies of Water', 'Bodies of Water', 'Naryn Province Kochkor', 'Naryn', 'Kochkor', '', 'http://kyrgyznature.com/', '9.97E+11', '', '', '', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1164, '10239217', NULL, 'Kyzart Pass', 'Scenic Drives', 'Scenic Drives', 'Naryn Province Kochkor', 'Naryn', 'Kochkor', '', '', '', '', '42.201778', '75.76652', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1165, '10239307', NULL, 'Dolon Pass', 'Scenic Drives', 'Scenic Drives', 'Naryn Province Kochkor', 'Naryn', 'Kochkor', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1166, '10224561', NULL, 'Jailoo Sarala-Saz', 'MountainsNature & Wildlife Areas', 'Mountains Nature & Wildlife Areas', 'Naryn Province Kochkor', 'Naryn', 'Kochkor', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1167, '10239316', NULL, 'Altyn Kol', 'Speciality & Gift Shops', 'Speciality & Gift Shops', 'Naryn Province Kochkor', 'Naryn', 'Kochkor', 'Pionerskaya St., 22 A next door to CBT Kochkor office, Kochkor 722500 Kyrgyzstan', '', '9.97E+11', 'altynkol@gmail.com', '', '', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1168, '10063829', NULL, 'Cholok Korgon', 'Ancient RuinsPoints of Interest & Landmarks', 'Ancient Ruins Points of Interest & Landmarks', 'Naryn Province Konorchok', 'Naryn', 'Konorchok', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1169, '17690462', NULL, 'Museum of Kozhomkul', 'Speciality Museums', 'Speciality Museums', 'Naryn Province Kyzyloy', 'Naryn', 'Kyzyl-oi', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1170, '12876326', NULL, 'Kel-Suu Lake', 'Bodies of Water', 'Bodies of Water', 'Naryn Province Naryn', 'Naryn', 'Province-Naryn', '', 'http://m.facebook.com/Pegasadventure/', '9.97E+11', '', '40.70197', '76.39013', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1171, '6882292', NULL, 'National Park Salkyn-Tor', 'National ParksParks', 'National Parks Parks', 'Naryn Province Naryn', 'Naryn', 'Naryn', '', 'http://triptokyrgyzstan.com/en/destinations/places/national-park-salkyn-tor', '', '', '', '', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1172, '10091968', NULL, 'Kok-Kiya Valley', 'Valleys', 'Valleys', 'Naryn Province Naryn', 'Naryn', 'Naryn', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1173, '10091978', NULL, 'Moldo-Ashu Pass', 'Mountains', 'Mountains', 'Naryn Province Naryn', 'Naryn', 'Naryn', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1174, '6881749', NULL, 'Blue Mosque', 'Points of Interest & LandmarksArchitectural Buildings', 'Points of Interest & Landmarks Architectural Buildings Religious Sites', 'Naryn Province Naryn', 'Naryn', 'Naryn', '1200 Lenin St, Naryn 722600 Kyrgyzstan', 'http://everythingturkic.tumblr.com/post/64415800832/mosque-in-naryn-kyrgyzstan', '', '', '', '', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1175, '10021326', NULL, 'Eki-Naryn Valley', 'Hiking TrailsValleys', 'Hiking Trails Valleys', 'Naryn Province Naryn', 'Naryn', 'Naryn', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1176, '10091805', NULL, 'Kara-Keche Pass', 'Biking TrailsValleys', 'Biking Trails Valleys', 'Naryn Province Naryn', 'Naryn', 'Naryn', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1177, '10021324', NULL, 'Torugart Pass', 'Mountains', 'Mountains', 'Naryn Province Naryn', 'Naryn', 'Naryn', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1178, '10085186', NULL, 'Naryn National Reserve', 'MountainsNational Parks', 'Mountains National Parks Nature & Wildlife Areas Forests', 'Naryn Province Naryn', 'Naryn', 'Naryn', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1179, '10126683', NULL, 'Ala Mischuk', 'Mountains', 'Mountains', 'Naryn Province Naryn', 'Naryn', 'Naryn', '', '', '9.97E+11', '', '', '', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1180, '10089079', NULL, '.', 'Nature & Wildlife AreasWaterfalls', 'Nature & Wildlife Areas Waterfalls', 'Naryn Province Naryn', 'Naryn', 'Naryn', '', 'http://www.facebook.com/Pegasadventure/', '9.97E+11', '', '', '', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1181, '7022968', NULL, 'River Kekemeren', 'Bodies of Water', 'Bodies of Water', 'Naryn Province Naryn', 'Naryn', 'Naryn', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1182, '10239409', NULL, 'Arpa Valley', 'MountainsNature & Wildlife Areas', 'Mountains Nature & Wildlife Areas Valleys', 'Naryn Province Naryn', 'Naryn', 'Naryn', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1183, '10158584', NULL, 'Ala Myshyk Caves', 'Caverns & Caves', 'Caverns & Caves', 'Naryn Province Naryn', 'Naryn', 'Naryn', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1184, '6697330', NULL, 'Mountain Sulaiman-Too', 'Mountains', 'Mountains', 'Osh', 'Osh', 'Osh', '', '', '', '', '40.540166', '72.78528', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1185, '3377828', NULL, 'Lenin Peak', 'Mountains', 'Mountains', 'Osh', 'Osh', 'Osh', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1186, '6697323', NULL, 'Museum Sulaiman Too', 'History Museums', 'History Museums', 'Osh', 'Osh', 'Osh', 'Mountain Sulaiman Too, Osh 714000 Kyrgyzstan', 'http://www.facebook.com/Pegasadventure/', '9.96E+11', 'sulaimanto@mail.ru', '40.540166', '72.78528', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1187, '8403820', NULL, 'Abshir Ata Falls', 'Bodies of WaterWaterfalls', 'Bodies of Water Waterfalls', 'Osh', 'Osh', 'Osh', '', 'http://www.visitalay.kg/', '9.96E+11', '', '', '', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1188, '10206006', NULL, 'Alay Valley', 'Valleys', 'Valleys', 'Osh', 'Osh', 'Osh', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1189, '8286089', NULL, 'Osh New Mosque', 'Religious Sites', 'Religious Sites', 'Osh', 'Osh', 'Osh', '', 'http://www.visitalay.kg/', '9.96E+11', '', '40.540166', '72.78528', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1190, '15036886', NULL, 'Lenin Monument', 'Points of Interest & LandmarksMonuments & Statues', 'Points of Interest & Landmarks Monuments & Statues', 'Osh', 'Osh', 'Osh', 'Lenin Ave, Osh 714000 Kyrgyzstan', '', '', '', '40.531855', '72.786448', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1191, '10801308', NULL, 'Kyrgyz Ata National Park', 'MountainsNature & Wildlife Areas', 'Mountains Nature & Wildlife Areas Hiking Trails', 'Osh', 'Osh', 'Osh', 'Nootkat region 40 km from the city of Osh, Osh 714000 Kyrgyzstan', 'http://www.visitalay.com/', '9.97E+11', '', '', '', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1192, '10196880', NULL, 'Irkeshtam Pass', 'MountainsPoints of Interest & Landmarks', 'Mountains Points of Interest & Landmarks Nature & Wildlife Areas', 'Osh', 'Osh', 'Osh', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1193, '15036895', NULL, 'Russian Orthodox Church', 'Points of Interest & LandmarksReligious Sites', 'Points of Interest & Landmarks Religious Sites Churches & Cathedrals', 'Osh', 'Osh', 'Osh', 'Kumanjan Datka St., Osh 714000 Kyrgyzstan', '', '', '', '', '', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1194, '10832719', NULL, 'Mausoleum of Asaf ibn Burkhiy', 'Points of Interest & LandmarksReligious Sites', 'Points of Interest & Landmarks Religious Sites', 'Osh', 'Osh', 'Osh', '', '', '', '', '40.53989', '72.781655', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1195, '15675538', NULL, 'Alay Mountains', 'Mountains', 'Mountains', 'Osh', 'Osh', 'Osh', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1196, '11909476', NULL, 'Osh Regional Museum of Fine Arts of Sadykov', 'Art Museums', 'Art Museums', 'Osh', 'Osh', 'Osh', 'Alebastrova St., 31, Osh 714000 Kyrgyzstan', 'http://www.facebook.com/oshksm/', '9.96E+11', '', '40.540166', '72.78528', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1197, '15036873', NULL, 'Alymbek Datkanyn Aykeli', 'Points of Interest & LandmarksMonuments & Statues', 'Points of Interest & Landmarks Monuments & Statues', 'Osh', 'Osh', 'Osh', '', '', '', '', '40.540166', '72.78528', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1198, '2711666', NULL, 'Jayma Bazaar Osh', 'Speciality & Gift Shops', 'Speciality & Gift Shops', 'Osh', 'Osh', 'Osh', 'Zainabetdinova, Osh 714000 Kyrgyzstan', '', '', '', '40.540166', '72.78528', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1199, '10209115', NULL, 'Kulunatin National Reserve', 'State ParksNational Parks', 'State Parks National Parks Nature & Wildlife Areas', 'Osh', 'Osh', 'Osh', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1200, '15036833', NULL, 'Dom Babura Mosque', 'Historic SitesPoints of Interest & Landmarks', 'Historic Sites Points of Interest & Landmarks Religious Sites', 'Osh', 'Osh', 'Osh', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1201, '10832714', NULL, 'Mosque of Ravat Abdullakhan', 'Points of Interest & LandmarksReligious Sites', 'Points of Interest & Landmarks Religious Sites Churches & Cathedrals', 'Osh', 'Osh', 'Osh', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1202, '10205995', NULL, 'Abshir-Say Valley', 'Nature & Wildlife AreasValleys', 'Nature & Wildlife Areas Valleys', 'Osh', 'Osh', 'Osh', '', 'http://www.visitalay.kg/#_=_', '', '', '', '', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1203, '10205997', NULL, 'Kozhokelen Valley', 'MountainsNature & Wildlife Areas', 'Mountains Nature & Wildlife Areas Valleys', 'Osh', 'Osh', 'Osh', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1204, '15036931', NULL, 'Monument to Toktogul Satylganov', 'Points of Interest & LandmarksMonuments & Statues', 'Points of Interest & Landmarks Monuments & Statues', 'Osh', 'Osh', 'Osh', 'Lenina Ave., Osh 714000 Kyrgyzstan', '', '', '', '40.518914', '72.795365', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1205, '15036941', NULL, 'Enenin Koz Zhashy Park', 'Parks', 'Parks', 'Osh', 'Osh', 'Osh', 'Lenina Ave., Osh 714000 Kyrgyzstan', '', '', '', '40.518914', '72.795365', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1206, '13959294', NULL, 'Nomad Store', 'Speciality & Gift Shops', 'Speciality & Gift Shops', 'Osh', 'Osh', 'Osh', 'Bayalinova St., 1 Osh Nuru Hotel, Osh 714000 Kyrgyzstan', 'http://www.facebook.com/oshnomadstore/', '9.97E+11', 'nomadstore.osh@gmail.com', '40.535271', '72.78528', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1207, '14073257', NULL, 'Harley Club', 'Bars & ClubsKaraoke Bars', 'Bars & Clubs Karaoke Bars Dance Clubs & Discos', 'Osh', 'Osh', 'Osh', 'Shakirova st., 108a, Osh 714000 Kyrgyzstan', 'http://www.dolcevitaosh.tilda.ws/', '9.97E+11', 'dvita.osh@gmail.com', '', '', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1208, '21223119', NULL, 'Quicktransfer - Osh', 'Taxis & Shuttles', 'Taxis & Shuttles', 'Osh', 'Osh', 'Osh', '86-90 Paul Street, Osh EC2A 4NE Kyrgyzstan', 'https://quicktransfer.com/', '1347-980-7145', 'booking@quicktransfer.com', '', '', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1209, '10068410', NULL, 'Lake Tulpar-Kol', 'Bodies of Water', 'Bodies of Water', 'Osh Province Sary Mogul', 'Osh', 'Sary-Mogul', '', '', '9.97E+11', '', '', '', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1210, '8514323', NULL, 'Uzgen Archaeological-Architectural Museum Complex', 'Historic SitesArchitectural Buildings', 'Historic Sites Architectural Buildings', 'Osh Province Uzgen', 'Osh', 'Uzgen', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1211, '10091498', NULL, 'Kirov Reservoir', 'Bodies of WaterNature & Wildlife Areas', 'Bodies of Water Nature & Wildlife Areas', 'Talas Province Manas', 'Talas', 'Manas', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1212, '10205982', NULL, 'Gumbez of Manas', 'Points of Interest & Landmarks', 'Points of Interest & Landmarks', 'Talas Province Talas', 'Talas', 'Talas', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1213, '10091481', NULL, 'Besh-Tash Lake', 'Bodies of WaterNature & Wildlife Areas', 'Bodies of Water Nature & Wildlife Areas', 'Talas Province Talas', 'Talas', 'Talas', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1214, '10084867', NULL, 'Manas Peak', 'MountainsNational Parks', 'Mountains National Parks Geologic Formations Valleys', 'Talas Province Talas', 'Talas', 'Talas', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1215, '10209161', NULL, 'Aisha Bibi - Chongkapka Border', 'MountainsPoints of Interest & Landmarks', 'Mountains Points of Interest & Landmarks Nature & Wildlife Areas', 'Talas Province Talas', 'Talas', 'Talas', '', '', '', '', '', '', '1', 1, '2023-07-17 00:47:05', '2023-07-17 00:47:05'),
(1216, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 1, '2023-07-17 06:12:07', '2023-07-17 06:12:07'),
(1217, '0', '1690784028.jpg', 'New Test Image', 'test', 'Valleys1', 'Gujrat', 'Batken1', 'Rajkot', 'Test Name', 'test.com', '07894561231', 'sidg@gmail.com', '42.8509131', '74.594841', '1', 1, '2023-07-31 00:29:18', '2023-07-31 00:43:48');

-- --------------------------------------------------------

--
-- Table structure for table `register_user`
--

CREATE TABLE `register_user` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `gender` text NOT NULL,
  `number` varchar(255) NOT NULL,
  `image` text,
  `address` longtext,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `otp` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register_user`
--

INSERT INTO `register_user` (`id`, `name`, `gender`, `number`, `image`, `address`, `email`, `password`, `role`, `dob`, `status`, `otp`, `created_at`, `updated_at`) VALUES
(1, 'Divy', 'Male', '89235698741', '1671444972.jpg', 'test @', 'divy@gmail.com', '123456789', 'enduser', '2022-12-17', 1, NULL, '2022-12-19 10:16:12', '2022-12-19 10:16:12'),
(2, 'sid', 'Male', '7069467466', '1674623852.png', 'test', 'sid@gmail.com', '123456789', 'enduser', '2003-07-18', 1, NULL, '2023-01-25 05:17:32', '2023-01-25 05:17:32'),
(3, 'asd', 'Female', '123464564', '1674637132.png', 'adas', 'test@gmail.com', 'asdasd', 'enduser', '2000-03-10', 1, NULL, '2023-01-25 08:58:52', '2023-01-25 08:58:52'),
(4, 'Kalmurat Kim', 'Male', '+996123456789', '1675263385.jpg', '1947 Eulah Trail, 301\r\nIssyk-Kul Region, 722103\r\nKyrgyzstan', 'teste530001+user1@gmail.com', '123456', 'enduser', '1990-01-01', 1, 2516, '2023-02-01 14:56:25', '2023-03-13 12:59:51'),
(5, 'Devil Sid', 'Male', '6532982154', '1677235392.jpg', 'Test Account', 'devilsid@gmail.com', '123456789', 'enduser', '2023-02-27', 1, NULL, '2023-02-24 10:43:12', '2023-02-24 10:43:12'),
(6, 'Pradip Ahuja', 'Male', '9865329865', '1677321563.jpg', 'test address', 'pradip.ahuja@gmail.com', '123456789', 'enduser', '1998-11-24', 1, NULL, '2023-02-25 10:39:23', '2023-02-25 10:39:23'),
(7, 'Pedro Ferreira', 'Male', '+351932788888', '1681067180.jpg', 'Passeio Fenicios 4\r\n1990 Lisbon', 'pedro.ferreira+mytravel2@gmail.com', 't5dxq6mytravel2', 'enduser', '1970-07-16', 1, NULL, '2023-04-09 19:06:20', '2023-04-09 19:06:20'),
(8, 'Sid Developer', 'Male', '8956231245', '1684476371.png', 'Jay Siyaram', 'siddev@gmail.com', '123456789', 'enduser', '2003-07-18', 1, NULL, '2023-05-19 00:36:11', '2023-05-19 00:36:11');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'agent', 'web', '2023-05-02 05:05:38', '2023-05-02 05:05:38'),
(2, 'admin', 'web', '2023-05-02 05:05:38', '2023-05-02 05:05:38'),
(3, 'partner', 'web', '2023-05-02 05:05:38', '2023-05-02 05:05:38'),
(4, 'operator', 'web', '2023-05-02 05:05:38', '2023-05-02 05:05:38');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(3, 1),
(1, 2),
(2, 3),
(4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `scan_logs`
--

CREATE TABLE `scan_logs` (
  `id` int(11) NOT NULL,
  `trip_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `p_b_id` int(11) NOT NULL,
  `payment` int(11) DEFAULT '0',
  `amt` float NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trip`
--

CREATE TABLE `trip` (
  `id` int(11) NOT NULL,
  `trip_number` text,
  `created_by` int(11) DEFAULT NULL,
  `created_by_user_name` varchar(255) DEFAULT NULL,
  `trip_name` text,
  `member_count` text,
  `trip_start_date` date DEFAULT NULL,
  `trip_end_date` date DEFAULT NULL,
  `date_created` date DEFAULT NULL,
  `date_closed` date DEFAULT NULL,
  `user_id` longtext,
  `trip_status` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trip`
--

INSERT INTO `trip` (`id`, `trip_number`, `created_by`, `created_by_user_name`, `trip_name`, `member_count`, `trip_start_date`, `trip_end_date`, `date_created`, `date_closed`, `user_id`, `trip_status`, `created_at`, `updated_at`) VALUES
(1, '63a03a1a5b322', 1, 'Divy', 'Rajkot To Mumbai', NULL, '2022-12-20', '2023-01-22', '2023-01-22', '1970-01-01', '1', 'active', '2022-12-19 10:16:58', '2023-02-24 10:07:47'),
(2, '63a03c6b91de7', 1, 'Divy', 'Abu Dhabi', NULL, '2022-12-25', '2023-01-06', '2022-12-25', '2023-01-06', '1', 'active', '2022-12-19 10:26:51', '2022-12-19 10:42:12'),
(3, '63dba148f294a', 4, 'Kalmurat Kim', 'Bishkek Summer Trip', NULL, '2023-07-01', '2023-07-15', '2023-07-01', '2023-07-15', '4', 'active', '2023-02-02 11:40:57', '2023-02-02 15:27:34'),
(4, '63dbe22eea42e', 4, 'Kalmurat Kim', 'Test', NULL, '2023-02-03', '2023-02-10', '2023-02-03', '2023-02-10', '4', 'draft', '2023-02-02 16:17:50', '2023-02-02 16:17:50'),
(5, '63dd1478c507a', 4, 'Kalmurat Kim', 'Bishkek Summer Trip', NULL, '2023-07-01', '2023-07-15', '2023-07-01', '2023-07-15', '4', 'draft', '2023-02-03 14:04:40', '2023-02-03 14:04:40'),
(6, '63f5a69e37ca0', 1, 'Divy', 'New Test', NULL, '2023-02-25', '2023-03-26', '2023-03-26', '1970-01-01', '1', 'active', '2023-02-22 05:22:38', '2023-02-24 10:14:31'),
(7, '63f844ec29fa8', 1, 'Divy', 'Hotel test', NULL, '2023-02-26', '2023-03-24', '2023-02-26', '2023-03-24', '1', 'active', '2023-02-24 05:02:36', '2023-02-24 05:03:21'),
(8, '63f88cfc40728', 1, 'Divy', 'App Test trip', NULL, '2023-03-01', '2023-03-31', '2023-03-31', '1970-01-01', '1', 'active', '2023-02-24 10:10:04', '2023-02-24 10:13:49'),
(9, '63f8950c31c2d', 5, 'Devil Sid', 'New Account Trip', NULL, '2023-03-01', '2023-03-31', '2023-03-01', '2023-03-31', '5', 'active', '2023-02-24 10:44:28', '2023-02-24 10:50:05'),
(10, '63f9e57a87e0d', 6, 'Pradip Ahuja', 'test', NULL, '2023-02-26', '2023-02-27', '2023-02-26', '2023-02-27', '6', 'draft', '2023-02-25 10:39:54', '2023-02-25 10:39:54'),
(11, '64331403227f7', 7, 'Pedro Ferreira', 'Bishkek and surroundings', NULL, '2023-04-12', '2023-04-15', '2023-04-12', '2023-04-15', '7', 'active', '2023-04-09 19:24:12', '2023-04-09 19:37:51'),
(12, '644b8fc975b8d', 1, 'Divy', 'Test trip Data', NULL, '2023-04-30', '2023-05-26', '2023-04-30', '2023-05-26', '1', 'active', '2023-04-28 09:20:09', '2023-04-28 09:22:28'),
(13, '64646bc4af67b', 1, 'Divy', 'New Test Like New Test Like', NULL, '2023-05-19', '2023-05-30', '2023-05-19', '2023-05-30', '1', 'active', '2023-05-17 00:23:08', '2023-05-17 00:23:31'),
(14, '64647d99ca5f4', 1, 'Divy', 'new test for remove columnss', NULL, '2023-05-19', '2023-07-30', '2023-05-19', '2023-07-30', '1', 'draft', '2023-05-17 01:27:21', '2023-05-17 01:39:13'),
(15, '646711fdae546', 8, 'Sid Developer', 'Rajkot To Goa', NULL, '2023-06-01', '2023-06-30', '2023-06-01', '2023-06-30', '8', 'draft', '2023-05-19 00:36:53', '2023-05-19 00:36:53'),
(16, '64c0f4b17322b', 2, 'sid', 'New Trip Created By Admin 1', NULL, '2023-07-30', '2023-07-31', '2023-07-30', '2023-07-31', '2', 'draft', '2023-07-26 01:46:51', '2023-07-26 04:55:53'),
(17, '64c76471c47eb', 1, 'Divy', 'New Trip By Admin', NULL, '2023-08-01', '2023-08-30', '2023-08-01', '2023-08-30', '1', 'draft', '2023-07-31 02:06:17', '2023-07-31 02:06:17');

-- --------------------------------------------------------

--
-- Table structure for table `trip_form`
--

CREATE TABLE `trip_form` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_type` text COLLATE utf8_unicode_ci,
  `trip_id` int(11) DEFAULT NULL,
  `hotels_camping_w_t_amt` text COLLATE utf8_unicode_ci,
  `hotels_camping_w_t_c_code` text COLLATE utf8_unicode_ci,
  `hotels_camping_estimate_t_r_c` text COLLATE utf8_unicode_ci,
  `restaurants_and_bars_w_t_amt` text COLLATE utf8_unicode_ci,
  `restaurants_and_bars_w_t_c_code` text COLLATE utf8_unicode_ci,
  `restaurants_and_bars_t_r_c` text COLLATE utf8_unicode_ci,
  `transportation_in_country_w_t_amt` text COLLATE utf8_unicode_ci,
  `transportation_in_country_w_t_c_code` text COLLATE utf8_unicode_ci,
  `transportation_in_country_t_r_c` text COLLATE utf8_unicode_ci,
  `entertainment_cultural_w_t_amt` text COLLATE utf8_unicode_ci,
  `entertainment_cultural_w_t_c_code` text COLLATE utf8_unicode_ci,
  `entertainment_cultural_t_r_c` text COLLATE utf8_unicode_ci,
  `purchases_and_other_expenditure_w_t_amt` text COLLATE utf8_unicode_ci,
  `purchases_and_other_expenditure_w_t_c_code` text COLLATE utf8_unicode_ci,
  `purchases_and_other_expenditure_t_r_c` text COLLATE utf8_unicode_ci,
  `a_one_country_overall_w_t_amt` text COLLATE utf8_unicode_ci,
  `a_two_w_t_c` text COLLATE utf8_unicode_ci,
  `one_traveller_and_trip_country` text COLLATE utf8_unicode_ci,
  `one_traveller_and_trip_country_code` text COLLATE utf8_unicode_ci,
  `two_one_what_was_the_main_traveller_and_trip` text COLLATE utf8_unicode_ci,
  `two_two_family_visit_traveller_and_trip` text COLLATE utf8_unicode_ci,
  `two_three_question_two_is_code_traveller_and_trip` text COLLATE utf8_unicode_ci,
  `two_for_WRITE_THE_NUMBER_OF_NIGHTS_traveller_and_trip` text COLLATE utf8_unicode_ci,
  `two_for_number_of_overnigh_traveller_and_trip` text COLLATE utf8_unicode_ci,
  `please_hotel_overnight_in_this_trip` text COLLATE utf8_unicode_ci,
  `number_of_night_hotel_overnight_in_this_trip` text COLLATE utf8_unicode_ci,
  `please_rented_room_overnight_in_this_trip` text COLLATE utf8_unicode_ci,
  `number_of_night_rented_room_overnight_in_this_trip` text COLLATE utf8_unicode_ci,
  `please_my_own_house_overnight_in_this_trip` text COLLATE utf8_unicode_ci,
  `number_of_night_my_own_house_overnight_in_this_trip` text COLLATE utf8_unicode_ci,
  `please_with_relatives_overnight_in_this_trip` text COLLATE utf8_unicode_ci,
  `number_of_night_with_relatives_overnight_in_this_trip` text COLLATE utf8_unicode_ci,
  `please_i_was_camping_overnight_in_this_trip` text COLLATE utf8_unicode_ci,
  `number_of_night_i_was_camping_overnight_in_this_trip` text COLLATE utf8_unicode_ci,
  `please_private_cruiser_overnight_in_this_trip` text COLLATE utf8_unicode_ci,
  `number_of_night_private_cruiser_overnight_in_this_trip` text COLLATE utf8_unicode_ci,
  `please_cruise_liner_overnight_in_this_trip` text COLLATE utf8_unicode_ci,
  `number_of_night_cruise_liner_overnight_in_this_trip` text COLLATE utf8_unicode_ci,
  `please_hospital_overnight_in_this_trip` text COLLATE utf8_unicode_ci,
  `number_of_night_hospital_overnight_in_this_trip` text COLLATE utf8_unicode_ci,
  `please_other_overnight_in_this_trip` text COLLATE utf8_unicode_ci,
  `number_of_night_other_overnight_in_this_trip` text COLLATE utf8_unicode_ci,
  `six_TRAVELLED_ALONE` text COLLATE utf8_unicode_ci,
  `six_travelled_with_other` text COLLATE utf8_unicode_ci,
  `c_did_you_make_any_payment` text COLLATE utf8_unicode_ci,
  `c_which_services_you_paid` text COLLATE utf8_unicode_ci,
  `c_which_of_these_services` text COLLATE utf8_unicode_ci,
  `c_solely_for_the_tickets_w_t_amt` text COLLATE utf8_unicode_ci,
  `c_solely_for_the_tickets_w_t_currency` text COLLATE utf8_unicode_ci,
  `total_before_your_departure_w_t_amt` text COLLATE utf8_unicode_ci,
  `total_before_your_departure_w_t_currency` text COLLATE utf8_unicode_ci,
  `during_your_stay_w_t_amt` text COLLATE utf8_unicode_ci,
  `during_your_stay_w_t_currency` text COLLATE utf8_unicode_ci,
  `c_accommodation_split_the_money_you_spent_w_t_amt` text COLLATE utf8_unicode_ci,
  `c_accommodation_split_the_money_you_spent_w_t_currency` text COLLATE utf8_unicode_ci,
  `c_accommodation_split_the_money_you_spent_e_t_p` text COLLATE utf8_unicode_ci,
  `c_restaurants_split_the_money_you_spent_w_t_amt` text COLLATE utf8_unicode_ci,
  `c_restaurants_split_the_money_you_spent_w_t_currency` text COLLATE utf8_unicode_ci,
  `c_restaurants_split_the_money_you_spent_e_t_p` text COLLATE utf8_unicode_ci,
  `c_transportation_split_the_money_you_spent_w_t_amt` text COLLATE utf8_unicode_ci,
  `c_transportation_split_the_money_you_spent_w_t_currency` text COLLATE utf8_unicode_ci,
  `c_transportation_split_the_money_you_spent_e_t_p` text COLLATE utf8_unicode_ci,
  `c_entertainment_split_the_money_you_spent_w_t_amt` text COLLATE utf8_unicode_ci,
  `c_entertainment_split_the_money_you_spent_w_t_currency` text COLLATE utf8_unicode_ci,
  `c_entertainment_split_the_money_you_spent_e_t_p` text COLLATE utf8_unicode_ci,
  `c_purchases_split_the_money_you_spent_w_t_amt` text COLLATE utf8_unicode_ci,
  `c_purchases_split_the_money_you_spent_w_t_currency` text COLLATE utf8_unicode_ci,
  `c_purchases_split_the_money_you_spent_e_t_p` text COLLATE utf8_unicode_ci,
  `e_overall_including_w_t_amt` text COLLATE utf8_unicode_ci,
  `e_overall_including_w_t_currency` text COLLATE utf8_unicode_ci,
  `e_column_two_no_of_night_stays_1` text COLLATE utf8_unicode_ci,
  `e_column_two_no_of_night_stays_2` text COLLATE utf8_unicode_ci,
  `e_column_two_no_of_night_stays_3` text COLLATE utf8_unicode_ci,
  `e_column_two_no_of_night_stays_4` text COLLATE utf8_unicode_ci,
  `e_column_two_no_of_night_stays_5` text COLLATE utf8_unicode_ci,
  `e_column_two_no_of_night_stays_6` text COLLATE utf8_unicode_ci,
  `e_column_two_no_of_night_stays_7` text COLLATE utf8_unicode_ci,
  `e_column_two_no_of_night_stays_8` text COLLATE utf8_unicode_ci,
  `e_column_two_no_of_night_stays_9` text COLLATE utf8_unicode_ci,
  `e_column_two_no_of_night_stays_10` text COLLATE utf8_unicode_ci,
  `e_column_two_no_of_night_stays_11` text COLLATE utf8_unicode_ci,
  `e_column_two_no_of_night_stays_12` text COLLATE utf8_unicode_ci,
  `e_column_two_no_of_night_stays_13` text COLLATE utf8_unicode_ci,
  `e_column_three_expenditure_estimation_1` text COLLATE utf8_unicode_ci,
  `e_column_three_expenditure_estimation_2` text COLLATE utf8_unicode_ci,
  `e_column_three_expenditure_estimation_3` text COLLATE utf8_unicode_ci,
  `e_column_three_expenditure_estimation_4` text COLLATE utf8_unicode_ci,
  `e_column_three_expenditure_estimation_5` text COLLATE utf8_unicode_ci,
  `e_column_three_expenditure_estimation_6` text COLLATE utf8_unicode_ci,
  `e_column_three_expenditure_estimation_7` text COLLATE utf8_unicode_ci,
  `e_column_three_expenditure_estimation_8` text COLLATE utf8_unicode_ci,
  `e_column_three_expenditure_estimation_9` text COLLATE utf8_unicode_ci,
  `e_column_three_expenditure_estimation_10` text COLLATE utf8_unicode_ci,
  `e_column_three_expenditure_estimation_11` text COLLATE utf8_unicode_ci,
  `e_column_three_expenditure_estimation_12` text COLLATE utf8_unicode_ci,
  `e_column_three_expenditure_estimation_13` text COLLATE utf8_unicode_ci,
  `e_luxury_goods_w_t_amt` text COLLATE utf8_unicode_ci,
  `e_luxury_goods_w_t_currency` text COLLATE utf8_unicode_ci,
  `a_two_w_t_c_c_f_t_l_a` text COLLATE utf8_unicode_ci,
  `hotels_camping_w_t_amt_t` text COLLATE utf8_unicode_ci,
  `restaurants_and_bars_w_t_amt_t` text COLLATE utf8_unicode_ci,
  `transportation_in_country_w_t_amt_t` text COLLATE utf8_unicode_ci,
  `entertainment_cultural_w_t_amt_t` text COLLATE utf8_unicode_ci,
  `purchases_and_other_expenditure_w_t_amt_t` text COLLATE utf8_unicode_ci,
  `please_fill_in_rating_a_i_c` text COLLATE utf8_unicode_ci,
  `please_fill_in_rating_r_a_b_i_c` text COLLATE utf8_unicode_ci,
  `please_fill_in_rating_t_i_c` text COLLATE utf8_unicode_ci,
  `please_fill_in_rating_e_c_s_a_i_c` text COLLATE utf8_unicode_ci,
  `please_fill_in_rating_p_a_s_i_c` text COLLATE utf8_unicode_ci,
  `please_fill_in_rating_p_s_i_c` text COLLATE utf8_unicode_ci,
  `please_fill_in_rating_o` text COLLATE utf8_unicode_ci,
  `any_comments` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `trip_form`
--

INSERT INTO `trip_form` (`id`, `user_id`, `user_type`, `trip_id`, `hotels_camping_w_t_amt`, `hotels_camping_w_t_c_code`, `hotels_camping_estimate_t_r_c`, `restaurants_and_bars_w_t_amt`, `restaurants_and_bars_w_t_c_code`, `restaurants_and_bars_t_r_c`, `transportation_in_country_w_t_amt`, `transportation_in_country_w_t_c_code`, `transportation_in_country_t_r_c`, `entertainment_cultural_w_t_amt`, `entertainment_cultural_w_t_c_code`, `entertainment_cultural_t_r_c`, `purchases_and_other_expenditure_w_t_amt`, `purchases_and_other_expenditure_w_t_c_code`, `purchases_and_other_expenditure_t_r_c`, `a_one_country_overall_w_t_amt`, `a_two_w_t_c`, `one_traveller_and_trip_country`, `one_traveller_and_trip_country_code`, `two_one_what_was_the_main_traveller_and_trip`, `two_two_family_visit_traveller_and_trip`, `two_three_question_two_is_code_traveller_and_trip`, `two_for_WRITE_THE_NUMBER_OF_NIGHTS_traveller_and_trip`, `two_for_number_of_overnigh_traveller_and_trip`, `please_hotel_overnight_in_this_trip`, `number_of_night_hotel_overnight_in_this_trip`, `please_rented_room_overnight_in_this_trip`, `number_of_night_rented_room_overnight_in_this_trip`, `please_my_own_house_overnight_in_this_trip`, `number_of_night_my_own_house_overnight_in_this_trip`, `please_with_relatives_overnight_in_this_trip`, `number_of_night_with_relatives_overnight_in_this_trip`, `please_i_was_camping_overnight_in_this_trip`, `number_of_night_i_was_camping_overnight_in_this_trip`, `please_private_cruiser_overnight_in_this_trip`, `number_of_night_private_cruiser_overnight_in_this_trip`, `please_cruise_liner_overnight_in_this_trip`, `number_of_night_cruise_liner_overnight_in_this_trip`, `please_hospital_overnight_in_this_trip`, `number_of_night_hospital_overnight_in_this_trip`, `please_other_overnight_in_this_trip`, `number_of_night_other_overnight_in_this_trip`, `six_TRAVELLED_ALONE`, `six_travelled_with_other`, `c_did_you_make_any_payment`, `c_which_services_you_paid`, `c_which_of_these_services`, `c_solely_for_the_tickets_w_t_amt`, `c_solely_for_the_tickets_w_t_currency`, `total_before_your_departure_w_t_amt`, `total_before_your_departure_w_t_currency`, `during_your_stay_w_t_amt`, `during_your_stay_w_t_currency`, `c_accommodation_split_the_money_you_spent_w_t_amt`, `c_accommodation_split_the_money_you_spent_w_t_currency`, `c_accommodation_split_the_money_you_spent_e_t_p`, `c_restaurants_split_the_money_you_spent_w_t_amt`, `c_restaurants_split_the_money_you_spent_w_t_currency`, `c_restaurants_split_the_money_you_spent_e_t_p`, `c_transportation_split_the_money_you_spent_w_t_amt`, `c_transportation_split_the_money_you_spent_w_t_currency`, `c_transportation_split_the_money_you_spent_e_t_p`, `c_entertainment_split_the_money_you_spent_w_t_amt`, `c_entertainment_split_the_money_you_spent_w_t_currency`, `c_entertainment_split_the_money_you_spent_e_t_p`, `c_purchases_split_the_money_you_spent_w_t_amt`, `c_purchases_split_the_money_you_spent_w_t_currency`, `c_purchases_split_the_money_you_spent_e_t_p`, `e_overall_including_w_t_amt`, `e_overall_including_w_t_currency`, `e_column_two_no_of_night_stays_1`, `e_column_two_no_of_night_stays_2`, `e_column_two_no_of_night_stays_3`, `e_column_two_no_of_night_stays_4`, `e_column_two_no_of_night_stays_5`, `e_column_two_no_of_night_stays_6`, `e_column_two_no_of_night_stays_7`, `e_column_two_no_of_night_stays_8`, `e_column_two_no_of_night_stays_9`, `e_column_two_no_of_night_stays_10`, `e_column_two_no_of_night_stays_11`, `e_column_two_no_of_night_stays_12`, `e_column_two_no_of_night_stays_13`, `e_column_three_expenditure_estimation_1`, `e_column_three_expenditure_estimation_2`, `e_column_three_expenditure_estimation_3`, `e_column_three_expenditure_estimation_4`, `e_column_three_expenditure_estimation_5`, `e_column_three_expenditure_estimation_6`, `e_column_three_expenditure_estimation_7`, `e_column_three_expenditure_estimation_8`, `e_column_three_expenditure_estimation_9`, `e_column_three_expenditure_estimation_10`, `e_column_three_expenditure_estimation_11`, `e_column_three_expenditure_estimation_12`, `e_column_three_expenditure_estimation_13`, `e_luxury_goods_w_t_amt`, `e_luxury_goods_w_t_currency`, `a_two_w_t_c_c_f_t_l_a`, `hotels_camping_w_t_amt_t`, `restaurants_and_bars_w_t_amt_t`, `transportation_in_country_w_t_amt_t`, `entertainment_cultural_w_t_amt_t`, `purchases_and_other_expenditure_w_t_amt_t`, `please_fill_in_rating_a_i_c`, `please_fill_in_rating_r_a_b_i_c`, `please_fill_in_rating_t_i_c`, `please_fill_in_rating_e_c_s_a_i_c`, `please_fill_in_rating_p_a_s_i_c`, `please_fill_in_rating_p_s_i_c`, `please_fill_in_rating_o`, `any_comments`, `created_at`, `updated_at`) VALUES
(1, 1, 'created_By', 17, '7', 'India', '2', '2', 'India', '22', '2', 'India', '60', '22', 'India', '13', '56', 'IN', '56', '1200', 'test', '103', 'IN', 'Health reasons', 'Other reasons', 'permanently and return', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'on', '12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Hello', '7', '1', '2', '12', '23', '1', '1', '1', '1', '1', '1', '1', 'Something went wrong', '2023-08-21 06:56:31', '2023-08-21 06:56:31');

-- --------------------------------------------------------

--
-- Table structure for table `trip_group`
--

CREATE TABLE `trip_group` (
  `id` int(11) NOT NULL,
  `group_code` bigint(20) DEFAULT NULL,
  `name` text,
  `partner_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `is_delete` int(11) NOT NULL DEFAULT '0',
  `agent_id` int(11) DEFAULT NULL,
  `default_status` int(11) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trip_group`
--

INSERT INTO `trip_group` (`id`, `group_code`, `name`, `partner_id`, `status`, `is_delete`, `agent_id`, `default_status`, `created_at`, `updated_at`) VALUES
(2, 916871745402, 'Group 1', 23, 0, 1, 23, 0, '2023-06-19 06:05:40', '2023-07-19 01:14:06'),
(3, 116872440462, 'Group 2', 23, 0, 1, 23, 0, '2023-06-20 01:24:06', '2023-06-26 02:27:31'),
(4, 316872440577, 'Group 3', 23, 0, 1, 23, 0, '2023-06-20 01:24:17', '2023-06-23 04:07:54'),
(6, 616872603578, 'New Test', 22, 0, 1, 22, 0, '2023-06-20 05:55:57', '2023-07-28 03:20:55'),
(7, 916872603906, 'Hello', 22, 0, 1, 22, 0, '2023-06-20 05:56:30', '2023-07-03 04:15:57'),
(8, 316872604037, 'group 2', 22, 0, 1, 22, 0, '2023-06-20 05:56:43', '2023-07-03 04:15:38'),
(9, 516872625248, 'Android', 22, 0, 1, 22, 0, '2023-06-20 06:32:04', '2023-07-28 04:42:29'),
(10, 616872625919, 'Group 4', 23, 0, 1, 23, 0, '2023-06-20 06:33:11', '2023-06-23 01:13:40'),
(11, 716875133771, 'Group 2', 23, 0, 1, 23, 0, '2023-06-23 04:12:57', '2023-06-23 04:16:43'),
(12, 816875157125, 'Group 2', 23, 0, 1, 23, 0, '2023-06-23 04:51:52', '2023-07-19 01:14:02'),
(13, 816876000999, 'Group 3', 23, 0, 1, 23, 0, '2023-06-24 04:18:19', '2023-07-19 01:13:58'),
(14, 616876001117, 'Group 4', 23, 0, 1, 23, 0, '2023-06-24 04:18:31', '2023-06-26 03:40:54'),
(15, 916877746123, 'Group 4', 23, 0, 1, 23, 0, '2023-06-26 04:46:52', '2023-07-25 02:00:46'),
(16, 416877748382, 'Group 5', 23, 0, 1, 23, 0, '2023-06-26 04:50:38', '2023-07-19 01:12:58'),
(17, 616877750128, 'Group 6', 23, 0, 1, 23, 0, '2023-06-26 04:53:32', '2023-07-19 01:12:47'),
(18, 916877750786, 'Group 7', 23, 0, 1, 23, 0, '2023-06-26 04:54:38', '2023-07-19 01:12:52'),
(19, 716881283642, 'test', 14, 1, 0, 16, NULL, '2023-06-30 07:02:44', '2023-07-02 23:40:17'),
(20, 616883616835, 'Swati', 22, 0, 1, 22, 0, '2023-07-02 23:51:23', '2023-07-03 00:06:17'),
(21, 516883617422, 'First', 22, 0, 1, 22, 0, '2023-07-02 23:52:22', '2023-07-03 04:14:47'),
(22, 116883617531, 'Second', 22, 0, 1, 22, 0, '2023-07-02 23:52:33', '2023-07-02 23:58:41'),
(23, 516883617619, 'Third', 22, 0, 1, 22, 0, '2023-07-02 23:52:41', '2023-07-02 23:52:57'),
(24, 416883633407, 'abc', 22, 0, 1, 22, 0, '2023-07-03 00:19:00', '2023-07-03 04:04:26'),
(25, 816883646416, 'First', 23, 0, 1, 23, 0, '2023-07-03 00:40:41', '2023-07-03 00:40:50'),
(26, 716883648228, 'First', 23, 0, 1, 23, 0, '2023-07-03 00:43:42', '2023-07-03 00:43:51'),
(27, 416883649756, 'First', 23, 0, 1, 23, 0, '2023-07-03 00:46:15', '2023-07-03 00:46:22'),
(28, 416883649896, 'Second', 23, 0, 1, 23, 0, '2023-07-03 00:46:29', '2023-07-03 00:46:46'),
(29, 916883649977, 'First', 23, 0, 1, 23, 0, '2023-07-03 00:46:37', '2023-07-03 00:46:52'),
(30, 616883650546, 'Swati1', 23, 0, 1, 23, 0, '2023-07-03 00:47:34', '2023-07-03 00:47:51'),
(31, 316883650632, 'Swati2', 23, 0, 1, 23, 0, '2023-07-03 00:47:43', '2023-07-03 00:47:57'),
(32, 216883652094, 'Demo1', 23, 0, 1, 23, 0, '2023-07-03 00:50:09', '2023-07-03 00:50:43'),
(33, 216883652196, 'Demo2', 23, 0, 1, 23, 0, '2023-07-03 00:50:19', '2023-07-03 00:50:35'),
(34, 816883652275, 'Demo3', 23, 0, 1, 23, 0, '2023-07-03 00:50:27', '2023-07-03 01:00:01'),
(35, 116883660075, '1', 23, 0, 1, 23, 0, '2023-07-03 01:03:27', '2023-07-03 01:03:40'),
(36, 516883661256, 'First', 23, 0, 1, 23, 0, '2023-07-03 01:05:25', '2023-07-03 01:36:35'),
(37, 316883662519, 'Second', 23, 0, 1, 23, 0, '2023-07-03 01:07:31', '2023-07-03 01:36:48'),
(38, 616883663344, 'Third', 23, 0, 1, 23, 0, '2023-07-03 01:08:54', '2023-07-03 01:36:53'),
(39, 116883666479, 'Four', 23, 0, 1, 23, 0, '2023-07-03 01:14:07', '2023-07-03 01:36:29'),
(40, 716883667062, 'Hello', 23, 0, 1, 23, 0, '2023-07-03 01:15:06', '2023-07-03 01:36:41'),
(41, 516883667737, 'Badminton', 28, 1, 0, 29, NULL, '2023-07-03 01:16:13', '2023-07-03 01:16:13'),
(42, 716883672221, 'Hello', 23, 0, 1, 23, 0, '2023-07-03 01:23:42', '2023-07-03 01:36:59'),
(43, 916883676743, 'Dfdfd', 23, 0, 1, 23, 0, '2023-07-03 01:31:14', '2023-07-03 01:37:04'),
(44, 816883680303, 'Hello', 23, 0, 1, 23, 0, '2023-07-03 01:37:10', '2023-07-03 01:39:27'),
(45, 516883680673, '1', 23, 0, 1, 23, 0, '2023-07-03 01:37:47', '2023-07-03 01:39:31'),
(46, 116883681779, '1', 23, 0, 1, 23, 0, '2023-07-03 01:39:37', '2023-07-03 01:43:23'),
(47, 816883682161, '2', 23, 0, 1, 23, 0, '2023-07-03 01:40:16', '2023-07-03 01:43:28'),
(48, 916883683107, '3', 23, 0, 1, 23, 0, '2023-07-03 01:41:50', '2023-07-03 01:43:37'),
(49, 316883683777, '4', 23, 0, 1, 23, 0, '2023-07-03 01:42:57', '2023-07-03 01:43:33'),
(50, 216883684221, '1', 23, 0, 1, 23, 0, '2023-07-03 01:43:42', '2023-07-03 01:44:26'),
(51, 416883684495, '2', 23, 0, 1, 23, 0, '2023-07-03 01:44:09', '2023-07-03 01:44:30'),
(52, 316883684955, '1', 23, 0, 1, 23, 0, '2023-07-03 01:44:55', '2023-07-03 01:50:32'),
(53, 416883685746, '2', 23, 0, 1, 23, 0, '2023-07-03 01:46:14', '2023-07-03 01:50:37'),
(54, 816883688417, '1', 23, 0, 1, 23, 0, '2023-07-03 01:50:41', '2023-07-03 01:52:28'),
(55, 216883689268, '1', 23, 0, 1, 23, 0, '2023-07-03 01:52:06', '2023-07-03 01:52:33'),
(56, 916883690098, '1', 23, 0, 1, 23, 0, '2023-07-03 01:53:29', '2023-07-03 01:56:04'),
(57, 316883690972, '2', 23, 0, 1, 23, 0, '2023-07-03 01:54:57', '2023-07-03 01:56:08'),
(58, 416883691119, '2', 23, 0, 1, 23, 0, '2023-07-03 01:55:11', '2023-07-03 01:56:12'),
(59, 516883691182, 'group 1', 27, 0, 1, 27, 0, '2023-07-03 01:55:18', '2023-07-03 07:31:37'),
(60, 216883691329, '3', 23, 0, 1, 23, 0, '2023-07-03 01:55:32', '2023-07-03 01:56:17'),
(61, 516883691827, '1', 23, 0, 1, 23, 0, '2023-07-03 01:56:22', '2023-07-03 02:05:01'),
(62, 616883695794, '1', 23, 0, 1, 23, 0, '2023-07-03 02:02:59', '2023-07-03 02:05:06'),
(63, 816883697111, '1', 23, 0, 1, 23, 0, '2023-07-03 02:05:11', '2023-07-03 02:06:07'),
(64, 216883697728, '1', 23, 0, 1, 23, 0, '2023-07-03 02:06:12', '2023-07-03 02:17:45'),
(65, 816883699156, '2', 23, 0, 1, 23, 0, '2023-07-03 02:08:35', '2023-07-03 02:17:51'),
(66, 916883704751, '1', 23, 0, 1, 23, 0, '2023-07-03 02:17:55', '2023-07-03 02:18:59'),
(67, 716883705433, '`', 23, 0, 1, 23, 0, '2023-07-03 02:19:03', '2023-07-03 02:19:59'),
(68, 516883705611, '2', 23, 0, 1, 23, 0, '2023-07-03 02:19:21', '2023-07-03 02:20:04'),
(69, 416883706138, '1', 23, 0, 1, 23, 0, '2023-07-03 02:20:13', '2023-07-03 02:25:15'),
(70, 616883706925, '2', 23, 0, 1, 23, 0, '2023-07-03 02:21:32', '2023-07-03 02:25:20'),
(71, 516883708343, '3', 23, 0, 1, 23, 0, '2023-07-03 02:23:54', '2023-07-03 02:25:24'),
(72, 116883709329, '1', 23, 0, 1, 23, 0, '2023-07-03 02:25:32', '2023-07-03 02:54:39'),
(73, 416883725646, '2', 23, 0, 1, 23, 0, '2023-07-03 02:52:44', '2023-07-03 02:54:44'),
(74, 716883726883, '1', 23, 0, 1, 23, 0, '2023-07-03 02:54:48', '2023-07-03 03:06:57'),
(75, 216883732725, '2', 23, 0, 1, 23, 0, '2023-07-03 03:04:32', '2023-07-03 03:07:02'),
(76, 716883734261, '1', 23, 0, 1, 23, 0, '2023-07-03 03:07:06', '2023-07-03 03:43:06'),
(77, 916883736004, '2', 23, 0, 1, 23, 0, '2023-07-03 03:10:00', '2023-07-03 03:43:10'),
(78, 916883736712, '3', 23, 0, 1, 23, 0, '2023-07-03 03:11:11', '2023-07-03 03:43:16'),
(79, 316883737583, '4', 23, 0, 1, 23, 0, '2023-07-03 03:12:38', '2023-07-03 03:43:22'),
(80, 516883751172, 'grp1', 27, 0, 1, 27, 0, '2023-07-03 03:35:17', '2023-07-03 03:38:09'),
(81, 816883754528, 'sss', 27, 0, 1, 27, 0, '2023-07-03 03:40:52', '2023-07-03 03:40:58'),
(82, 316883755553, 'gwhdh', 27, 0, 1, 27, 0, '2023-07-03 03:42:35', '2023-07-03 03:42:40'),
(83, 616883757619, 'abc', 27, 0, 1, 27, 0, '2023-07-03 03:46:01', '2023-07-03 03:46:06'),
(84, 816883766739, '1', 23, 0, 1, 23, 0, '2023-07-03 04:01:13', '2023-07-03 04:12:03'),
(85, 616883767773, '2', 23, 0, 1, 23, 0, '2023-07-03 04:02:57', '2023-07-03 04:12:08'),
(86, 616883768776, '3', 23, 0, 1, 23, 0, '2023-07-03 04:04:37', '2023-07-03 04:12:12'),
(87, 216883773369, '1', 23, 0, 1, 23, 0, '2023-07-03 04:12:16', '2023-07-19 01:13:49'),
(88, 516883775723, 'Group 3', 22, 0, 1, 22, 0, '2023-07-03 04:16:12', '2023-07-03 04:21:08'),
(89, 316883776694, '2', 23, 0, 1, 23, 0, '2023-07-03 04:17:49', '2023-07-19 01:13:28'),
(90, 316883777023, '3', 23, 0, 1, 23, 0, '2023-07-03 04:18:22', '2023-07-19 01:13:03'),
(91, 316883777838, '4', 23, 0, 1, 23, 0, '2023-07-03 04:19:43', '2023-07-19 01:13:07'),
(92, 816883778069, 'absb', 27, 0, 0, 27, 0, '2023-07-03 04:20:06', '2023-07-30 23:42:12'),
(93, 916883802707, '5', 23, 0, 1, 23, 0, '2023-07-03 05:01:10', '2023-07-19 01:13:16'),
(94, 916883825429, 'New Group', 22, 0, 1, 22, 0, '2023-07-03 05:39:02', '2023-07-28 03:21:05'),
(95, 616883826273, 'New Group 2', 22, 0, 1, 22, 0, '2023-07-03 05:40:27', '2023-07-07 06:46:42'),
(96, 816883837339, 'Test', 23, 0, 1, 23, 0, '2023-07-03 05:58:53', '2023-07-19 01:13:11'),
(97, 916883838379, 'Test 2', 23, 0, 1, 23, 0, '2023-07-03 06:00:37', '2023-07-19 01:13:24'),
(98, 916883839029, 'Test 3', 23, 0, 1, 23, 0, '2023-07-03 06:01:42', '2023-07-19 01:13:37'),
(99, 116883884679, 'Group 8', 23, 0, 1, 23, 0, '2023-07-03 07:17:47', '2023-07-19 01:12:42'),
(100, 216883886622, 'Group 9', 23, 0, 1, 23, 0, '2023-07-03 07:21:02', '2023-07-19 01:13:20'),
(101, 616883889478, 'Group 10', 23, 0, 1, 23, 0, '2023-07-03 07:25:47', '2023-07-19 01:13:33'),
(102, 716883889702, 'Group 11', 23, 0, 1, 23, 0, '2023-07-03 07:26:10', '2023-07-19 01:13:41'),
(103, 516883892869, 'Group 12', 23, 0, 1, 23, 0, '2023-07-03 07:31:26', '2023-07-19 01:12:37'),
(104, 616883893574, 'Group 13', 23, 0, 1, 23, 0, '2023-07-03 07:32:37', '2023-07-19 01:13:45'),
(105, 916887333348, 'testnew', 22, 0, 1, 22, 0, '2023-07-07 07:05:34', '2023-07-28 03:21:09'),
(106, 316897491016, 'Group 1', 23, 0, 0, 23, 0, '2023-07-19 01:15:01', '2023-07-25 04:48:23'),
(107, 516897491349, 'Group 2', 23, 0, 0, 23, 0, '2023-07-19 01:15:34', '2023-07-28 07:07:09'),
(108, 116897661171, 'New group create', 29, 0, 0, 29, 0, '2023-07-19 05:58:37', '2023-07-19 05:58:37'),
(109, 616897661531, 'testgdfgdfgdfg', 28, 1, 0, 29, 0, '2023-07-19 05:59:13', '2023-07-27 12:23:45'),
(110, 416897676569, 'ychc', 28, 1, 0, 29, 0, '2023-07-19 06:24:16', '2023-07-19 06:25:20'),
(111, 716902008286, 'New', 14, 0, 0, 23, 1, '2023-07-24 06:43:48', '2023-07-31 01:32:53'),
(112, 816904590159, 'Create By Admin Group', 14, 1, 0, 23, 0, '2023-07-27 06:26:55', '2023-07-27 12:23:41'),
(113, 116904611432, 'admin sid create new group', 14, 1, 0, 23, 0, '2023-07-27 07:02:23', '2023-07-27 07:02:23'),
(114, 616905384936, 'Android 1', 20, 0, 1, 22, 0, '2023-07-28 04:31:33', '2023-07-28 05:46:36'),
(115, 616905385007, 'Android 2', 20, 0, 1, 22, 0, '2023-07-28 04:31:40', '2023-07-28 04:42:38'),
(116, 216905385134, 'Android 3', 20, 0, 1, 22, 0, '2023-07-28 04:31:53', '2023-07-28 04:42:44'),
(117, 816905395137, 'Test', 20, 0, 1, 22, 0, '2023-07-28 04:48:33', '2023-07-28 05:01:47'),
(118, 116905411793, 'Android1', 20, 0, 1, 22, 0, '2023-07-28 05:16:19', '2023-07-28 05:17:40'),
(119, 216905412818, '1', 20, 0, 1, 22, 0, '2023-07-28 05:18:01', '2023-07-31 01:33:50'),
(120, 716905430051, 'Android Studio', 20, 0, 1, 22, 0, '2023-07-28 05:46:45', '2023-07-29 03:51:39'),
(121, 316905475266, 'Group to delete', 14, 0, 1, 23, 0, '2023-07-28 07:02:06', '2023-07-28 07:24:41'),
(122, 216905475651, 'Android 123', 20, 0, 1, 22, 0, '2023-07-28 07:02:45', '2023-07-29 03:58:20'),
(123, 116906064799, 'Group to delete', 14, 0, 1, 23, 0, '2023-07-28 23:24:39', '2023-07-31 01:32:53'),
(124, 216906065485, 'Another group to delete', 18, 1, 0, 19, 0, '2023-07-28 23:25:48', '2023-07-29 00:52:36'),
(125, 116906069468, 'Group 3', 14, 0, 0, 23, 0, '2023-07-28 23:32:26', '2023-07-28 23:32:26'),
(126, 416906091764, 'Group 4', 14, 0, 0, 23, 0, '2023-07-29 00:09:36', '2023-07-29 00:09:36'),
(127, 616906093572, 'Group 5', 14, 0, 0, 23, 0, '2023-07-29 00:12:37', '2023-07-29 00:12:37'),
(128, 216906114571, 'Group 5', 14, 1, 0, 23, 0, '2023-07-29 00:47:37', '2023-07-29 00:47:37'),
(129, 516906114819, 'Another group to delete', 14, 1, 0, 23, 0, '2023-07-29 00:48:01', '2023-07-29 00:48:01'),
(130, 216906117852, 'last test admin', 14, 1, 0, 23, 0, '2023-07-29 00:53:05', '2023-07-29 00:53:54'),
(131, 416906231209, 'Group A', 20, 0, 1, 22, 0, '2023-07-29 04:02:00', '2023-07-29 04:20:05'),
(132, 416906231268, 'Group B', 20, 0, 1, 22, 0, '2023-07-29 04:02:06', '2023-07-29 04:21:11'),
(133, 216906231315, 'Group C', 20, 0, 1, 22, 0, '2023-07-29 04:02:11', '2023-07-30 23:38:05'),
(134, 316906231363, 'Group D', 20, 0, 1, 22, 0, '2023-07-29 04:02:16', '2023-07-30 23:38:17'),
(135, 616906231416, 'Group E', 20, 0, 1, 22, 0, '2023-07-29 04:02:21', '2023-07-30 23:40:33'),
(136, 316907800896, '1', 14, 0, 0, 27, 1, '2023-07-30 23:38:09', '2023-07-30 23:42:12'),
(137, 416907801093, 'Group F', 20, 0, 0, 22, 1, '2023-07-30 23:38:29', '2023-07-31 02:13:43'),
(138, 416907805111, 'Created By Admin For Partner', 28, 1, 0, 29, 0, '2023-07-30 23:45:11', '2023-07-30 23:45:11'),
(139, 616907846384, 'Group G', 20, 0, 0, 22, 0, '2023-07-31 00:53:58', '2023-07-31 00:53:58'),
(140, 716907851432, 'sid agent group', 30, 1, 0, 31, 1, '2023-07-31 01:02:23', '2023-07-31 01:38:29'),
(141, 516922549156, 'group g', 20, 0, 0, 22, 0, '2023-08-17 01:18:35', '2023-08-17 01:18:35'),
(142, 616922549238, 'group hh', 20, 0, 0, 22, 0, '2023-08-17 01:18:43', '2023-08-17 01:18:43');

-- --------------------------------------------------------

--
-- Table structure for table `trip_people`
--

CREATE TABLE `trip_people` (
  `id` int(11) NOT NULL,
  `people_id_code` text COLLATE utf8_unicode_ci,
  `trip_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `family_name` text COLLATE utf8_unicode_ci,
  `gender` text COLLATE utf8_unicode_ci,
  `dob` date DEFAULT NULL,
  `document_type` text COLLATE utf8_unicode_ci,
  `document_number` text COLLATE utf8_unicode_ci,
  `valid_untill` date DEFAULT NULL,
  `document_country` text COLLATE utf8_unicode_ci,
  `residence_address` text COLLATE utf8_unicode_ci,
  `residence_country` text COLLATE utf8_unicode_ci,
  `residence_city` text COLLATE utf8_unicode_ci,
  `residence_post_code` text COLLATE utf8_unicode_ci,
  `contacts_email` text COLLATE utf8_unicode_ci,
  `contacts_phone` text COLLATE utf8_unicode_ci,
  `trip_data_visa_information` text COLLATE utf8_unicode_ci,
  `experience_date` date DEFAULT NULL,
  `visa_motive` text COLLATE utf8_unicode_ci,
  `visa_document` text COLLATE utf8_unicode_ci,
  `motivation_of_trip` text COLLATE utf8_unicode_ci,
  `mean_of_transport` text COLLATE utf8_unicode_ci,
  `airline` text COLLATE utf8_unicode_ci,
  `orginating_form_country` text COLLATE utf8_unicode_ci,
  `orginating_form_city` text COLLATE utf8_unicode_ci,
  `orginating_form_via` text COLLATE utf8_unicode_ci,
  `arrival_crossing_point_border_crossing_point` text COLLATE utf8_unicode_ci,
  `arrival_crossing_point_arrival_date` date DEFAULT NULL,
  `departure_crossing_point_border_crossing_point` text COLLATE utf8_unicode_ci,
  `departure_crossing_point_departure_date` date DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `room_no` text COLLATE utf8_unicode_ci,
  `hotel_name` text COLLATE utf8_unicode_ci,
  `arrival_date` date DEFAULT NULL,
  `dep_date` date DEFAULT NULL,
  `document_image` text COLLATE utf8_unicode_ci,
  `document_id_data` text COLLATE utf8_unicode_ci,
  `is_draft` int(11) DEFAULT NULL,
  `profession` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `trip_people`
--

INSERT INTO `trip_people` (`id`, `people_id_code`, `trip_id`, `user_id`, `name`, `family_name`, `gender`, `dob`, `document_type`, `document_number`, `valid_untill`, `document_country`, `residence_address`, `residence_country`, `residence_city`, `residence_post_code`, `contacts_email`, `contacts_phone`, `trip_data_visa_information`, `experience_date`, `visa_motive`, `visa_document`, `motivation_of_trip`, `mean_of_transport`, `airline`, `orginating_form_country`, `orginating_form_city`, `orginating_form_via`, `arrival_crossing_point_border_crossing_point`, `arrival_crossing_point_arrival_date`, `departure_crossing_point_border_crossing_point`, `departure_crossing_point_departure_date`, `status`, `room_no`, `hotel_name`, `arrival_date`, `dep_date`, `document_image`, `document_id_data`, `is_draft`, `profession`, `created_at`, `updated_at`) VALUES
(1, '516871697253', 17, NULL, 'sid', 'test family', 'Male', '2022-12-19', '1', 'drivinglicence', '2023-04-30', '3', 'The Taj Mahal Palace, Mumbai', '3', 'Rajkot', '360001', 'sidg@gmail.com', '07894561231', NULL, '1970-01-01', NULL, NULL, '3', '2', NULL, NULL, NULL, NULL, '13', '1970-01-01', '13', '1970-01-01', NULL, NULL, NULL, '1970-01-01', '1970-01-01', '1671445085.jpg', '1671445085.jpg', 1, 'engineer', '2022-12-19 10:18:05', '2023-08-07 00:28:03'),
(10, '599116350910', 10, NULL, 'test', 'Test', 'Male', '2023-02-25', '2', '23423423423434', '1970-01-01', '53', 'ewtwetet', '8', 'er', '545342', 'sdasfdsa@gmail.com', '576576553563', '427775373', '2023-02-25', NULL, NULL, '4', '1', '413243231323123', '8', 'gjncghjf', 'xfghxh', '8', '2023-02-25', '9', '2023-02-28', NULL, 'xdgxh', 'xdfxh', '2023-02-25', '2023-02-28', NULL, NULL, 1, 'engineer', '2023-02-25 11:10:47', '2023-05-23 05:53:14'),
(11, '599116350911', 11, NULL, 'Pedro', 'Ferreira', 'Male', '1970-07-16', '3', 'pedro.ferreira+mytravel2@gmail.com', '2026-07-18', '173', 'Passeio Fenicios 4, 3A', '173', 'Lisbon', '1990', 'pedro.ferreira+mytravel2@gmail.com', '123456789', '123456789', '2023-04-29', '2', NULL, '2', '1', '123456789', 'Select Country', 'Lisbon', NULL, 'Select Arrival Crossing Point', '2023-04-12', 'Select Border Crossing Point', '2023-04-15', NULL, NULL, NULL, '1970-01-01', '1970-01-01', '1681068882.jpg', '1681068882.jpg', 1, 'engineer', '2023-04-09 19:34:42', '2023-05-23 05:53:14'),
(12, '599116350912', 12, NULL, 'sid', 'test family', 'Male', '2022-12-19', '1', 'drivinglicence', '2023-04-30', '3', 'The Taj Mahal Palace, Mumbai', '3', 'Rajkot', '360001', 'sidg@gmail.com', '07894561231', 'SD35', '2022-12-19', '3', NULL, '3', '2', 'test', '13', 'Rajkot', 'test', 'Select Arrival Crossing Point', '2023-05-04', 'Select Border Crossing Point', '2023-05-05', NULL, NULL, NULL, '1970-01-01', '1970-01-01', NULL, '1682673746.png', 1, 'engineer', '2023-04-28 09:22:26', '2023-05-23 05:53:14'),
(13, '599116350913', 13, NULL, 'sid', 'test family', 'Male', '2022-12-19', '1', 'drivinglicence', '2023-05-19', '3', 'The Taj Mahal Palace, Mumbai', '3', 'Rajkot', '360001', 'sidg@gmail.com', '07894561231', NULL, '1970-01-01', NULL, NULL, '3', '2', NULL, NULL, NULL, NULL, '5', '1970-01-01', '11', '1970-01-01', NULL, NULL, NULL, '1970-01-01', '1970-01-01', NULL, NULL, 1, 'engineer', '2023-05-17 00:23:27', '2023-05-23 05:53:14'),
(14, '599116350914', 14, NULL, 'sid', 'test family', 'Male', '2022-12-19', '1', 'drivinglicence', '2023-05-19', '3', 'The Taj Mahal Palace, Mumbai', '3', 'Rajkot', '360001', 'sidg@gmail.com', '07894561231', NULL, '1970-01-01', NULL, NULL, '3', '2', NULL, NULL, NULL, NULL, 'Select Arrival Crossing Point', '1970-01-01', 'Select Border Crossing Point', '1970-01-01', NULL, NULL, NULL, '1970-01-01', '1970-01-01', NULL, NULL, 1, 'engineer', '2023-05-17 01:27:34', '2023-05-23 05:53:14'),
(15, '616871697489', 15, NULL, 'Umang1', 'Umang', 'Male', '1992-09-19', '1', 'Fgdf8562', '2023-05-27', '98', 'Jay Siyaram', '98', 'Rajkot', '360001', 'umang@gmail.com', '7845123265', NULL, '1970-01-01', NULL, NULL, '2', '1', NULL, NULL, NULL, NULL, '2', '1970-01-01', '5', '1970-01-01', NULL, NULL, NULL, '1970-01-01', '1970-01-01', NULL, NULL, 1, 'engineer', '2023-05-19 00:38:32', '2023-08-08 22:58:39'),
(16, '916871697651', 15, NULL, 'siddharth', 'siddharth', 'Male', '2003-07-18', '1', 'Fgdf8562', '2024-04-22', '3', 'Jay Siyaram', '3', 'Rajkot', '360001', 'siddnew@gmail.com', '7845123265', NULL, '1970-01-01', NULL, NULL, '2', '1', NULL, NULL, NULL, NULL, 'Select Arrival Crossing Point', '1970-01-01', 'Select Border Crossing Point', '1970-01-01', NULL, NULL, NULL, '1970-01-01', '1970-01-01', NULL, NULL, 1, 'engineer', '2023-05-19 02:32:30', '2023-06-19 10:16:11'),
(17, '716871697765', 15, NULL, 'Mrugesh', 'Mrugesh', 'Male', '1992-06-19', '1', '6541654654', '2023-05-22', '6', 'Test Name', '98', 'Rajkot', '360001', 'sidg@gmail.com', '9865321245', NULL, '1970-01-01', NULL, NULL, '3', '2', NULL, NULL, NULL, NULL, '3', '1970-01-01', '15', '1970-01-01', NULL, NULL, NULL, '2023-06-25', '2023-06-21', NULL, NULL, 1, 'engineer', '2023-05-22 02:12:42', '2023-06-19 10:16:21'),
(18, '616871697853', 15, NULL, 'prince', 'prince', 'Male', '2023-05-01', '1', 'drivinglicence', '2023-05-22', '3', 'Test Name', '98', 'Rajkot', '360001', 'princesdfedfc@gmail.com', '07894561231', NULL, '1970-01-01', NULL, NULL, '3', '4', NULL, NULL, NULL, NULL, '12', '1970-01-01', '8', '1970-01-01', NULL, NULL, NULL, '2023-06-25', '2023-06-12', NULL, NULL, 1, 'engineer', '2023-05-22 05:58:09', '2023-06-19 10:16:30'),
(19, '416907890282', 17, NULL, 'sid', 'test family', 'Male', '2022-12-19', '1', 'drivinglicence', '2023-04-30', '3', 'The Taj Mahal Palace, Mumbai', '3', 'Rajkot', '360001', 'sidg@gmail.com', '07894561231', NULL, '1970-01-01', NULL, NULL, '3', '2', NULL, NULL, NULL, NULL, '13', '1970-01-01', '13', '1970-01-01', NULL, NULL, NULL, '2023-08-12', '2023-08-12', NULL, NULL, 1, '123456', '2023-07-31 02:07:08', '2023-07-31 02:07:08'),
(20, '616916471062', 17, NULL, 'Siddhart', 'Kakkad', 'Male', '2023-08-03', '2', '56897845232', '2023-08-10', '98', 'Test Name', NULL, 'Rajkot', '360001', 'sidgsdsds@gmail.com', '07894561231', NULL, NULL, NULL, NULL, '3', '3', NULL, NULL, NULL, NULL, '10', NULL, '11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'dfdsfd', '2023-08-10 00:28:26', '2023-08-10 06:23:28'),
(21, '516916567883', 17, NULL, 'admin test', 'admin test', 'Male', '2023-08-11', '1', '56897845232', '2023-08-03', '19', 'Test Name', NULL, 'Rajkot', '360001', 'adminddsdsdsdtest@gmail.com', '07894561231', NULL, NULL, NULL, NULL, '2', '1', NULL, NULL, NULL, NULL, '12', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'dfdsfd', '2023-08-10 03:09:48', '2023-08-10 03:09:48');

-- --------------------------------------------------------

--
-- Table structure for table `trip_people_document`
--

CREATE TABLE `trip_people_document` (
  `id` int(11) NOT NULL,
  `document_path` text COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `trip_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
  `view_password` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login_date_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` text COLLATE utf8mb4_unicode_ci,
  `number` text COLLATE utf8mb4_unicode_ci,
  `created_by` int(11) DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `location` text COLLATE utf8mb4_unicode_ci,
  `business_name` text COLLATE utf8mb4_unicode_ci,
  `business_type` text COLLATE utf8mb4_unicode_ci,
  `business_logo` text COLLATE utf8mb4_unicode_ci,
  `country` text COLLATE utf8mb4_unicode_ci,
  `state` text COLLATE utf8mb4_unicode_ci,
  `city` text COLLATE utf8mb4_unicode_ci,
  `address` text COLLATE utf8mb4_unicode_ci,
  `status` text COLLATE utf8mb4_unicode_ci,
  `document_name` text COLLATE utf8mb4_unicode_ci,
  `document_image` text COLLATE utf8mb4_unicode_ci,
  `otp` int(11) DEFAULT NULL,
  `api_token` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `view_password`, `remember_token`, `ip_address`, `last_login_date_time`, `role`, `number`, `created_by`, `image`, `location`, `business_name`, `business_type`, `business_logo`, `country`, `state`, `city`, `address`, `status`, `document_name`, `document_image`, `otp`, `api_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$UWq4tuiRb/GW8/h3XnnjrOSTcC/GzMzN/9RiT1Ez8Rmurq/TKv3zS', NULL, 'JRU7byXSSmHfvPehV8uREp2WT6sZO1CnKEDrVb2bqwMlMev2Zd6nk9RzrXoW', NULL, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-03 07:44:51', '2022-06-03 07:44:51'),
(2, 'sid', 'sidkakkad13@gmail.com', '2023-05-02 05:05:39', '$2y$10$UWq4tuiRb/GW8/h3XnnjrOSTcC/GzMzN/9RiT1Ez8Rmurq/TKv3zS', NULL, 'dYasR6UE4lgwK1CQqXxTBIZaTjQIyl4Nv8fYE28zxYZglGkvgi1wrudBRihw', NULL, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, 4833, NULL, '2022-06-18 09:35:14', '2023-06-07 05:42:00'),
(3, 'pedro ferreira', 'pedro.ferreira@gmail.com', NULL, '$2y$10$8t8Ov/2uoS7y6QQCa1wDWerxDmZ6d2LTaGAIIcGde9WdI9lGp6XOy', NULL, 'Lbq5U3QNWYJSLTl4JuXXHmehJ4TM9bytWr7DOR5zkReEmDlFxwzD5lLj8fPz', NULL, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-18 09:35:14', '2023-02-02 18:39:41'),
(4, 'paulosilva', 'paulosilva581@gmail.com', NULL, '$2y$10$zxnEH0xo2R2398IJ.jaoHuwtxRT440x7mPpHcCKqhZjLbKMAn.jPe', NULL, 'JAaZgG4RYS5fJZijWzbqk3ys3ikoNMJ5mkwFSNeyvTVDBdgKZy31pCPWpsyh', NULL, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-18 09:35:14', '2023-02-02 12:00:54'),
(5, 'cfmarquesfaria', 'cfmarquesfaria@gmail.com', NULL, '$2y$10$y.g8zYHlIQzewGbTQz66TuNgjvSwkef7RFCcFzaWgy7Qps82AsplS', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-18 09:35:14', '2022-06-18 09:35:14'),
(6, 'Super Admin', 'partner@gmail.com', '2023-05-02 05:05:39', '$2y$10$sHk9hXRpY3m/WELftQsu9./S4kDVh30Zdipmy85meRaUKCyLL8.X6', '123456789', 'NHnje9ieSYUcc2tJwTV9xdZZea8myKhRu1LfXgBo33nzZf5X9s4c1xLyitRN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-02 05:05:39', '2023-05-02 05:05:39'),
(7, 'Admin User', 'admin@example.com', '2023-05-02 05:05:39', '$2y$10$sHk9hXRpY3m/WELftQsu9./S4kDVh30Zdipmy85meRaUKCyLL8.X6', NULL, 'ZrVvuNyZd16uhHysRErN286ij9GmdB17kQJJIHCSIOnv0OqPvy36Iylqc96C', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-02 05:05:39', '2023-05-02 05:05:39'),
(32, 'sidpartner', 'sidpartner@gmail.com', NULL, '$2y$10$MJdPLN7DZwukG.GoZFXhzOqAHc8BwYVoCHej6x9mcCVuMHXYlollu', '123456789', NULL, NULL, NULL, 'partner', '8956231245', NULL, '1690802117.jpg', 'Location', 'hotel', 'operator', '1690802117.jpg', 'India', 'Gujrat', 'Rajkot', 'Test Name', '1', 'tsdfd', '1690802117.jpg', NULL, NULL, '2023-07-31 11:15:17', '2023-07-31 11:15:17'),
(33, 'Umang', 'umang@gteches.net', NULL, '$2y$10$UWq4tuiRb/GW8/h3XnnjrOSTcC/GzMzN/9RiT1Ez8Rmurq/TKv3zS', '123456789', NULL, NULL, NULL, 'agent', '9870061217', 32, '1690802244.png', 'Rajkot', NULL, NULL, NULL, 'India', 'Gujarat', 'Rajkot', NULL, '1', 'Pan Card', '1690802244.jpg', 7560, '$2y$10$R0ASd4B33GIchoH1BFKJYu6AKB2NP/lz7J/lF5yHedbbsXENK5LMq', '2023-07-31 11:17:24', '2023-07-31 11:32:11'),
(34, 'newdata', 'test13@gmail.com', NULL, '$2y$10$3Sj7Yy1O9L1m78XUtvzyL.EqcKFsb7uIAZ0/uxhuLP3GIKdYzsuA2', '123456789', NULL, NULL, NULL, 'partner', '8956232154', NULL, '1690802639.jpg', 'Hello Test', 'hotel', 'accommodation', '1690802639.png', 'India', 'Gujrat', 'Rajkot', 'Test Name', '1', 'tsdfd', '1690802639.jpg', NULL, NULL, '2023-07-31 11:23:59', '2023-07-31 11:23:59'),
(35, 'teste001', 'teste530001+teste001@gmail.com', NULL, '$2y$10$pf6dV9lJt1JMDLc5FD/a7OBZFA0bQUqs10.LzCwLTT1FKJLVuIuYO', '123456', NULL, NULL, NULL, 'partner', '123', NULL, '1690887076.jpg', 'Location_test', 'Business_test', 'accommodation', '1690887076.jpg', 'Kyrgyzstan', 'state', 'city', NULL, '1', 'doc', '1690887076.jpg', NULL, NULL, '2023-08-01 10:51:16', '2023-08-01 10:51:16'),
(36, 'Agent_001', 'teste530001+agent001@gmail.com', NULL, '$2y$10$/tUm7A.WgwfGRUvltAQ0je5ooE7EUc3KjXuRg0km8dHMas5h.5tOK', '123456', NULL, NULL, NULL, 'agent', '123', 35, '1690887159.jpg', 'loc', NULL, NULL, NULL, 'Kyrgyzstan', 'state', 'city', NULL, '1', 'doc', '1690887159.jpg', 5069, '$2y$10$sUBlBRdpH8kV3MJaoICM/.VcuuaPdFazNiBqL8ahjfI.3WzId5d32', '2023-08-01 10:52:39', '2023-08-08 10:09:00'),
(37, 'BorderScanner_001', 'teste530001+borderscanner@gmail.com', NULL, '$2y$10$P6u7XOYhpQ/iBtt6zv1hy.BgTXYgd9Vv9QfEz5macEFAGS9vBiO2.', '123456', NULL, NULL, NULL, 'border_scanner', '123', NULL, '1690898616.jpg', 'location', NULL, NULL, NULL, 'Pakistan', 'state', 'city', NULL, '1', 'doc', '1690898616.jpg', NULL, NULL, '2023-08-01 14:03:36', '2023-08-01 14:03:36'),
(38, 'Operator001', 'teste530001+partner001@gmail.com', NULL, '$2y$10$CDBElwtpMA1FvfZS4APpnuvHqWid9Mdj6SUw2H.A3PizHTfjhic3S', '123456', NULL, NULL, NULL, 'partner', '123', NULL, '1690898927.jpg', 'location', 'Business', 'operator', '1690898927.jpg', 'Pakistan', 'state', 'city', NULL, '1', 'doc', '1690898927.jpg', NULL, NULL, '2023-08-01 14:08:47', '2023-08-01 14:08:47'),
(39, 'Attraction_001', 'teste530001+attraction_001@gmail.com', NULL, '$2y$10$obwAkFQlllvyJr14v9vJWu68m6qa/T7u6hV5DMhQXnKPStwyvD7J2', '123456', NULL, NULL, NULL, 'partner', '123', NULL, '1690899145.jpg', 'location', 'Business', 'attraction', '1690899145.jpg', 'Pakistan', 'state', 'city', NULL, '1', 'doc', '1690899145.jpg', NULL, NULL, '2023-08-01 14:12:25', '2023-08-01 14:12:25'),
(40, 'Hospitality001', 'teste530001+hospitality001@gmail.com', NULL, '$2y$10$KYglQ3FnGD3vmhdJZA4z2et6X13b3Lwxgqs7FFRbdbXkFBuPAzaxO', '123456', NULL, NULL, NULL, 'partner', '123', NULL, '1690899826.jpg', 'location', 'Business', 'hospitality', '1690899826.jpg', 'Pakistan', 'state', 'city', NULL, '1', 'doc', '1690899826.jpg', NULL, NULL, '2023-08-01 14:23:46', '2023-08-01 14:23:46'),
(41, 'Border scanner pedro test', 'pedro.ferreira+borderscanner@gmail.com', NULL, '$2y$10$qBtIP93yEgZ.6uQJhuvsF.Lg0AqYk344u46qe7AfjJM9Atpo4Cmma', '123456789', NULL, NULL, NULL, 'border_scanner', '123456789', NULL, '1691230649.png', 'WXC', NULL, NULL, NULL, 'Kyrgyzstan', 'wsd', 'wer', NULL, '1', 'Doc name test', '1691230649.png', NULL, NULL, '2023-08-05 10:17:29', '2023-08-05 10:17:29'),
(42, 'Pedro Partner test', 'pedro.ferreira+partnertest@gmail.com', NULL, '$2y$10$ZEzskt9jIuvwpNnD4jeRBOZaO7QNQsepUMsIdljF7kBnpmLdjTQjK', '123456789', NULL, NULL, NULL, 'partner', '123456789', NULL, '1691231409.png', 'WXC', 'Business name pedro test', 'operator', '1691231409.png', 'Kyrgyzstan', 'osh', 'osh', NULL, '1', 'Doc name test', '1691231409.png', NULL, NULL, '2023-08-05 10:30:09', '2023-08-05 10:30:09'),
(43, 'Pedro test Agent', 'pedro.ferreira+testagent@gmail.com', NULL, '$2y$10$MECSv7LKPhYo10.XK/9bme.4XQyStDto.HiARvuC0SzyG5oiFgHpO', '123456789', NULL, NULL, NULL, 'agent', '123456789', 42, '1691232237.png', 'WXC', NULL, NULL, NULL, 'Kyrgyzstan', 'osh', 'osh', NULL, '1', 'Doc name test', '1691232237.png', 3778, '$2y$10$6Ol6KAV1KefQAxUn2dTEvefxBio3qs8MOaJL1jI3U6AzIW6/05wtO', '2023-08-05 10:43:57', '2023-08-05 11:55:26'),
(44, 'Agent_Operator', 'teste530001+agentoperator@gmail.com', NULL, '$2y$10$kArqABYYhjnE.fQNGaDpHeG4db6xXiXa3uWpJ7t5lhDSR0xaM2Ege', '123456', NULL, NULL, NULL, 'agent', '123', 38, '1691490173.jpg', 'loca', NULL, NULL, NULL, 'Algeria', 'state', 'city', NULL, '1', 'document', '1691490173.jpg', NULL, NULL, '2023-08-08 10:22:53', '2023-08-08 10:22:53');

-- --------------------------------------------------------

--
-- Table structure for table `user_logs`
--

CREATE TABLE `user_logs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `log_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_logs`
--

INSERT INTO `user_logs` (`id`, `user_id`, `log_date`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-12-19 10:44:49', '2022-12-19 10:44:49', '2022-12-19 10:44:49'),
(2, 1, '2022-12-19 13:02:08', '2022-12-19 13:02:08', '2022-12-19 13:02:08'),
(3, 1, '2023-01-25 05:13:20', '2023-01-25 05:13:20', '2023-01-25 05:13:20'),
(4, 1, '2023-01-25 05:15:48', '2023-01-25 05:15:48', '2023-01-25 05:15:48'),
(5, 2, '2023-01-25 05:26:52', '2023-01-25 05:26:52', '2023-01-25 05:26:52'),
(6, 2, '2023-01-25 05:39:30', '2023-01-25 05:39:30', '2023-01-25 05:39:30'),
(7, 1, '2023-01-28 11:10:24', '2023-01-28 11:10:24', '2023-01-28 11:10:24'),
(8, 1, '2023-01-28 11:11:22', '2023-01-28 11:11:22', '2023-01-28 11:11:22'),
(9, 1, '2023-01-28 11:20:26', '2023-01-28 11:20:26', '2023-01-28 11:20:26'),
(10, 2, '2023-01-31 10:47:17', '2023-01-31 10:47:17', '2023-01-31 10:47:17'),
(11, 2, '2023-01-31 17:24:17', '2023-01-31 17:24:17', '2023-01-31 17:24:17'),
(12, 1, '2023-02-02 06:19:50', '2023-02-02 06:19:50', '2023-02-02 06:19:50'),
(13, 4, '2023-02-02 11:16:37', '2023-02-02 11:16:37', '2023-02-02 11:16:37'),
(14, 4, '2023-02-02 15:21:53', '2023-02-02 15:21:53', '2023-02-02 15:21:53'),
(15, 2, '2023-02-03 06:14:11', '2023-02-03 06:14:11', '2023-02-03 06:14:11'),
(16, 4, '2023-02-03 13:23:58', '2023-02-03 13:23:58', '2023-02-03 13:23:58'),
(17, 2, '2023-02-22 05:07:14', '2023-02-22 05:07:14', '2023-02-22 05:07:14'),
(18, 1, '2023-02-22 05:09:48', '2023-02-22 05:09:48', '2023-02-22 05:09:48'),
(19, 1, '2023-02-22 05:47:48', '2023-02-22 05:47:48', '2023-02-22 05:47:48'),
(20, 1, '2023-02-22 09:41:14', '2023-02-22 09:41:14', '2023-02-22 09:41:14'),
(21, 1, '2023-02-22 09:41:26', '2023-02-22 09:41:26', '2023-02-22 09:41:26'),
(22, 1, '2023-02-24 05:02:12', '2023-02-24 05:02:12', '2023-02-24 05:02:12'),
(23, 1, '2023-02-24 09:12:42', '2023-02-24 09:12:42', '2023-02-24 09:12:42'),
(24, 1, '2023-02-24 09:29:13', '2023-02-24 09:29:13', '2023-02-24 09:29:13'),
(25, 1, '2023-02-24 09:44:43', '2023-02-24 09:44:43', '2023-02-24 09:44:43'),
(26, 1, '2023-02-24 09:49:39', '2023-02-24 09:49:39', '2023-02-24 09:49:39'),
(27, 1, '2023-02-24 09:50:06', '2023-02-24 09:50:06', '2023-02-24 09:50:06'),
(28, 1, '2023-02-24 10:06:24', '2023-02-24 10:06:24', '2023-02-24 10:06:24'),
(29, 1, '2023-02-24 10:32:19', '2023-02-24 10:32:19', '2023-02-24 10:32:19'),
(30, 6, '2023-02-25 10:57:09', '2023-02-25 10:57:09', '2023-02-25 10:57:09'),
(31, 6, '2023-02-25 11:13:09', '2023-02-25 11:13:09', '2023-02-25 11:13:09'),
(32, 6, '2023-02-25 11:16:02', '2023-02-25 11:16:02', '2023-02-25 11:16:02'),
(33, 6, '2023-02-28 08:09:06', '2023-02-28 08:09:06', '2023-02-28 08:09:06'),
(34, 6, '2023-02-28 08:09:22', '2023-02-28 08:09:22', '2023-02-28 08:09:22'),
(35, 4, '2023-03-13 13:00:16', '2023-03-13 13:00:16', '2023-03-13 13:00:16'),
(36, 4, '2023-03-14 13:46:44', '2023-03-14 13:46:44', '2023-03-14 13:46:44'),
(37, 4, '2023-03-15 12:15:51', '2023-03-15 12:15:51', '2023-03-15 12:15:51'),
(38, 1, '2023-03-17 10:59:06', '2023-03-17 10:59:06', '2023-03-17 10:59:06'),
(39, 1, '2023-03-17 11:03:49', '2023-03-17 11:03:49', '2023-03-17 11:03:49'),
(40, 1, '2023-03-17 11:04:48', '2023-03-17 11:04:48', '2023-03-17 11:04:48'),
(41, 4, '2023-03-21 13:57:57', '2023-03-21 13:57:57', '2023-03-21 13:57:57'),
(42, 4, '2023-03-21 23:37:58', '2023-03-21 23:37:58', '2023-03-21 23:37:58'),
(43, 4, '2023-04-27 12:17:26', '2023-04-27 12:17:26', '2023-04-27 12:17:26'),
(44, 1, '2023-04-28 09:19:08', '2023-04-28 09:19:08', '2023-04-28 09:19:08'),
(45, 1, '2023-04-28 09:33:03', '2023-04-28 09:33:03', '2023-04-28 09:33:03'),
(46, 4, '2023-04-28 09:45:27', '2023-04-28 09:45:27', '2023-04-28 09:45:27'),
(47, 2, '2023-04-29 04:46:32', '2023-04-28 23:16:32', '2023-04-28 23:16:32'),
(48, 1, '2023-05-08 11:47:56', '2023-05-08 06:17:56', '2023-05-08 06:17:56'),
(49, 1, '2023-05-09 05:43:14', '2023-05-09 00:13:14', '2023-05-09 00:13:14'),
(50, 1, '2023-05-12 06:26:00', '2023-05-12 00:56:00', '2023-05-12 00:56:00'),
(51, 1, '2023-05-15 11:41:54', '2023-05-15 06:11:54', '2023-05-15 06:11:54'),
(52, 1, '2023-05-16 10:09:31', '2023-05-16 04:39:31', '2023-05-16 04:39:31'),
(53, 1, '2023-05-17 04:57:35', '2023-05-16 23:27:34', '2023-05-16 23:27:34'),
(54, 1, '2023-05-17 06:52:10', '2023-05-17 01:22:10', '2023-05-17 01:22:10'),
(55, 1, '2023-05-18 04:28:22', '2023-05-17 22:58:22', '2023-05-17 22:58:22'),
(56, 1, '2023-05-18 06:17:44', '2023-05-18 00:47:44', '2023-05-18 00:47:44'),
(57, 1, '2023-05-18 09:38:37', '2023-05-18 04:08:37', '2023-05-18 04:08:37'),
(58, 1, '2023-05-19 05:59:35', '2023-05-19 00:29:35', '2023-05-19 00:29:35'),
(59, 1, '2023-05-22 04:48:30', '2023-05-21 23:18:30', '2023-05-21 23:18:30'),
(60, 8, '2023-05-22 05:35:13', '2023-05-22 00:05:13', '2023-05-22 00:05:13'),
(61, 1, '2023-05-22 10:37:29', '2023-05-22 05:07:29', '2023-05-22 05:07:29'),
(62, 8, '2023-05-22 10:37:54', '2023-05-22 05:07:54', '2023-05-22 05:07:54'),
(63, 8, '2023-05-22 11:58:40', '2023-05-22 06:28:40', '2023-05-22 06:28:40'),
(64, 8, '2023-05-23 04:57:14', '2023-05-22 23:27:14', '2023-05-22 23:27:14'),
(65, 8, '2023-05-30 09:48:49', '2023-05-30 04:18:49', '2023-05-30 04:18:49'),
(66, 8, '2023-05-30 10:23:40', '2023-05-30 04:53:40', '2023-05-30 04:53:40'),
(67, 1, '2023-06-13 09:28:25', '2023-06-13 03:58:25', '2023-06-13 03:58:25'),
(68, 8, '2023-06-13 09:37:36', '2023-06-13 04:07:36', '2023-06-13 04:07:36'),
(69, 8, '2023-06-15 05:34:19', '2023-06-15 00:04:19', '2023-06-15 00:04:19'),
(70, 8, '2023-06-15 05:34:20', '2023-06-15 00:04:20', '2023-06-15 00:04:20'),
(71, 8, '2023-06-19 10:13:28', '2023-06-19 04:43:28', '2023-06-19 04:43:28'),
(72, 8, '2023-06-20 04:57:13', '2023-06-19 23:27:13', '2023-06-19 23:27:13'),
(73, 1, '2023-07-24 06:26:23', '2023-07-24 00:56:23', '2023-07-24 00:56:23'),
(74, 1, '2023-07-26 05:38:00', '2023-07-26 00:08:00', '2023-07-26 00:08:00'),
(75, 1, '2023-07-31 07:36:29', '2023-07-31 02:06:29', '2023-07-31 02:06:29'),
(76, 1, '2023-08-03 10:32:04', '2023-08-03 05:02:04', '2023-08-03 05:02:04'),
(77, 1, '2023-08-03 12:41:30', '2023-08-03 07:11:30', '2023-08-03 07:11:30'),
(78, 1, '2023-08-04 08:23:52', '2023-08-04 02:53:52', '2023-08-04 02:53:52'),
(79, 1, '2023-08-07 04:31:01', '2023-08-06 23:01:01', '2023-08-06 23:01:01'),
(80, 1, '2023-08-07 07:44:03', '2023-08-07 02:14:03', '2023-08-07 02:14:03'),
(81, 1, '2023-08-07 11:42:45', '2023-08-07 06:12:45', '2023-08-07 06:12:45'),
(82, 1, '2023-08-09 06:34:42', '2023-08-09 01:04:42', '2023-08-09 01:04:42'),
(83, 1, '2023-08-09 12:10:37', '2023-08-09 06:40:37', '2023-08-09 06:40:37'),
(84, 1, '2023-08-10 08:37:07', '2023-08-10 03:07:07', '2023-08-10 03:07:07');

-- --------------------------------------------------------

--
-- Table structure for table `usre_places`
--

CREATE TABLE `usre_places` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `place_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usre_places`
--

INSERT INTO `usre_places` (`id`, `user_id`, `place_id`, `created_at`, `updated_at`) VALUES
(8, 20, 813, '2023-07-17 07:36:18', '2023-07-17 07:36:18'),
(15, 14, 861, '2023-07-24 07:15:11', '2023-07-24 07:15:11'),
(16, 18, 861, '2023-07-24 07:15:11', '2023-07-24 07:15:11'),
(17, 20, 861, '2023-07-24 07:15:11', '2023-07-24 07:15:11'),
(18, 28, 861, '2023-07-24 07:15:11', '2023-07-24 07:15:11'),
(19, 14, 851, '2023-07-24 07:26:34', '2023-07-24 07:26:34'),
(20, 18, 851, '2023-07-24 07:26:34', '2023-07-24 07:26:34'),
(21, 20, 851, '2023-07-24 07:26:34', '2023-07-24 07:26:34'),
(22, 28, 851, '2023-07-24 07:26:34', '2023-07-24 07:26:34'),
(27, 14, 821, '2023-07-31 00:16:41', '2023-07-31 00:16:41'),
(28, 18, 821, '2023-07-31 00:16:41', '2023-07-31 00:16:41'),
(29, 20, 821, '2023-07-31 00:16:41', '2023-07-31 00:16:41'),
(30, 28, 821, '2023-07-31 00:16:41', '2023-07-31 00:16:41'),
(33, 14, 1217, '2023-07-31 01:58:48', '2023-07-31 01:58:48'),
(34, 18, 1217, '2023-07-31 01:58:48', '2023-07-31 01:58:48'),
(35, 20, 1217, '2023-07-31 01:58:48', '2023-07-31 01:58:48'),
(36, 28, 1217, '2023-07-31 01:58:48', '2023-07-31 01:58:48'),
(37, 30, 1217, '2023-07-31 01:58:48', '2023-07-31 01:58:48'),
(38, 14, 812, '2023-07-31 04:46:54', '2023-07-31 04:46:54'),
(39, 18, 812, '2023-07-31 04:46:54', '2023-07-31 04:46:54'),
(40, 20, 812, '2023-07-31 04:46:54', '2023-07-31 04:46:54'),
(41, 28, 812, '2023-07-31 04:46:54', '2023-07-31 04:46:54'),
(42, 30, 812, '2023-07-31 04:46:54', '2023-07-31 04:46:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `arrival_crossing_point`
--
ALTER TABLE `arrival_crossing_point`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `border_scanner_partner`
--
ALTER TABLE `border_scanner_partner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `check_in`
--
ALTER TABLE `check_in`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departure_crossing_point`
--
ALTER TABLE `departure_crossing_point`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `document_type`
--
ALTER TABLE `document_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `group_logs`
--
ALTER TABLE `group_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group_people`
--
ALTER TABLE `group_people`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mean_of_transport`
--
ALTER TABLE `mean_of_transport`
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
-- Indexes for table `motivation_of_trip`
--
ALTER TABLE `motivation_of_trip`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partner_scanner_logs`
--
ALTER TABLE `partner_scanner_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register_user`
--
ALTER TABLE `register_user`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `scan_logs`
--
ALTER TABLE `scan_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trip`
--
ALTER TABLE `trip`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trip_form`
--
ALTER TABLE `trip_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trip_group`
--
ALTER TABLE `trip_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trip_people`
--
ALTER TABLE `trip_people`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trip_people_document`
--
ALTER TABLE `trip_people_document`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_logs`
--
ALTER TABLE `user_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usre_places`
--
ALTER TABLE `usre_places`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `arrival_crossing_point`
--
ALTER TABLE `arrival_crossing_point`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `border_scanner_partner`
--
ALTER TABLE `border_scanner_partner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `check_in`
--
ALTER TABLE `check_in`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- AUTO_INCREMENT for table `departure_crossing_point`
--
ALTER TABLE `departure_crossing_point`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `document_type`
--
ALTER TABLE `document_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `group_logs`
--
ALTER TABLE `group_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `group_people`
--
ALTER TABLE `group_people`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=235;

--
-- AUTO_INCREMENT for table `mean_of_transport`
--
ALTER TABLE `mean_of_transport`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `motivation_of_trip`
--
ALTER TABLE `motivation_of_trip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `partner_scanner_logs`
--
ALTER TABLE `partner_scanner_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `places`
--
ALTER TABLE `places`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1218;

--
-- AUTO_INCREMENT for table `register_user`
--
ALTER TABLE `register_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `scan_logs`
--
ALTER TABLE `scan_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trip`
--
ALTER TABLE `trip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `trip_form`
--
ALTER TABLE `trip_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `trip_group`
--
ALTER TABLE `trip_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT for table `trip_people`
--
ALTER TABLE `trip_people`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `trip_people_document`
--
ALTER TABLE `trip_people_document`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `user_logs`
--
ALTER TABLE `user_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `usre_places`
--
ALTER TABLE `usre_places`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

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
