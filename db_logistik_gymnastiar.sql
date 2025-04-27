-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 27, 2025 at 01:10 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_logistik_gymnastiar`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `goods`
--

CREATE TABLE `goods` (
  `id` char(26) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` int NOT NULL DEFAULT '0',
  `unit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `goods`
--

INSERT INTO `goods` (`id`, `code`, `name`, `stock`, `unit`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
('01jsvnxf6prh559wn7zznbg9a6', '761588', 'Lenovo ThinkPad X1 Carbon', 40, NULL, NULL, NULL, '2025-04-27 06:10:19', '2025-04-27 06:10:19'),
('01jsvnxf6svcs91xpryrvrrzpw', '945041', 'Dell XPS 13', 72, NULL, NULL, NULL, '2025-04-27 06:10:19', '2025-04-27 06:10:19'),
('01jsvnxf6tra8m025dy2bqwjbg', '763247', 'Apple MacBook Pro 16\"', 58, NULL, NULL, NULL, '2025-04-27 06:10:19', '2025-04-27 06:10:19'),
('01jsvnxf6w08qs5hnvvym7da5s', '282303', 'HP Spectre x360', 84, NULL, NULL, NULL, '2025-04-27 06:10:19', '2025-04-27 06:10:19'),
('01jsvnxf6y7h9chebtfxekty71', '503539', 'Asus ZenBook 14', 76, NULL, NULL, NULL, '2025-04-27 06:10:19', '2025-04-27 06:10:19'),
('01jsvnxf70xm001vg6psv2943n', '881881', 'Acer Swift 3', 93, NULL, NULL, NULL, '2025-04-27 06:10:19', '2025-04-27 06:10:19'),
('01jsvnxf72jmc8ethxejpdcg7m', '318896', 'Microsoft Surface Laptop 4', 65, NULL, NULL, NULL, '2025-04-27 06:10:19', '2025-04-27 06:10:19'),
('01jsvnxf74b56j5htwtp9b0662', '331672', 'Razer Blade Stealth 13', 50, NULL, NULL, NULL, '2025-04-27 06:10:19', '2025-04-27 06:10:19'),
('01jsvnxf75efc6qya740q0js9h', '205574', 'LG Gram 17', 30, NULL, NULL, NULL, '2025-04-27 06:10:19', '2025-04-27 06:10:19'),
('01jsvnxf77qbznv8d6s7ff2xx1', '163443', 'Samsung Galaxy Book Pro 360', 45, NULL, NULL, NULL, '2025-04-27 06:10:19', '2025-04-27 06:10:19'),
('01jsvnxf79sn9a18ej0ex3d7qs', '203148', 'Huawei MateBook X Pro', 55, NULL, NULL, NULL, '2025-04-27 06:10:19', '2025-04-27 06:10:19'),
('01jsvnxf7appwwc3ezetq562fr', '732661', 'Toshiba Dynabook Tecra A50', 80, NULL, NULL, NULL, '2025-04-27 06:10:19', '2025-04-27 06:10:19'),
('01jsvnxf7c8mt0jr9mw13t17bk', '112767', 'Fujitsu Lifebook U9311X', 70, NULL, NULL, NULL, '2025-04-27 06:10:19', '2025-04-27 06:10:19'),
('01jsvnxf7eca9j8f9a6hwens7w', '474036', 'Sony VAIO Z', 60, NULL, NULL, NULL, '2025-04-27 06:10:19', '2025-04-27 06:10:19'),
('01jsvnxf7fgtsam9ek14wjwtkw', '815040', 'MSI Prestige 14', 85, NULL, NULL, NULL, '2025-04-27 06:10:19', '2025-04-27 06:10:19'),
('01jsvnxf7jx0xb06h84cgcbqw2', '742466', 'Gigabyte Aero 15', 90, NULL, NULL, NULL, '2025-04-27 06:10:19', '2025-04-27 06:10:19'),
('01jsvnxf7mfkp1wddwbe587q9e', '893444', 'Lenovo Yoga 9i', 75, NULL, NULL, NULL, '2025-04-27 06:10:19', '2025-04-27 06:10:19'),
('01jsvnxf7n9tzzzys1e5fndfwa', '972632', 'Dell Inspiron 14', 88, NULL, NULL, NULL, '2025-04-27 06:10:19', '2025-04-27 06:10:19'),
('01jsvnxf7qvxdpyq4ehnqaa3je', '471197', 'Apple MacBook Air M1', 95, NULL, NULL, NULL, '2025-04-27 06:10:19', '2025-04-27 06:10:19'),
('01jsvnxf7s77g2xsbeyk2nyqnn', '561975', 'HP Envy x360', 78, NULL, NULL, NULL, '2025-04-27 06:10:19', '2025-04-27 06:10:19'),
('01jsvnxf7vchw2ffkkvhqzjqc3', '356021', 'Asus ROG Zephyrus G14', 82, NULL, NULL, NULL, '2025-04-27 06:10:19', '2025-04-27 06:10:19');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2025_04_25_144728_create_goods_table', 1),
(6, '2025_04_25_144737_create_transactions_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint UNSIGNED NOT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `goods_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `quantity` int DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `category` enum('inbound','outbound') COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `number`, `goods_code`, `user_id`, `quantity`, `status`, `category`, `location`, `description`, `date`, `created_at`, `updated_at`) VALUES
(1, NULL, '761588', 1, 3, 0, 'outbound', 'Framiside', 'Sample transaction description', '2025-04-12', '2025-03-31 06:10:19', '2025-04-09 06:10:19'),
(2, NULL, '945041', 1, 1, 0, 'inbound', 'Mariamton', 'Sample transaction description', '2025-04-16', '2025-04-14 06:10:19', '2025-03-28 06:10:19'),
(3, 'IN-680E2CBBA2B68', '972632', 1, 2, 1, 'inbound', 'New Maye', 'Sample transaction description', '2025-04-09', '2025-04-04 06:10:19', '2025-04-17 06:10:19'),
(4, NULL, '203148', 1, 3, 0, 'inbound', 'Sadyefurt', 'Sample transaction description', '2025-04-19', '2025-03-29 06:10:19', '2025-04-06 06:10:19'),
(5, 'OUT-680E2CBBA3CB8', '331672', 1, 3, 1, 'outbound', 'North Alva', 'Sample transaction description', '2025-04-20', '2025-04-01 06:10:19', '2025-04-16 06:10:19'),
(6, NULL, '972632', 1, 1, 0, 'inbound', 'Ricardoville', 'Sample transaction description', '2025-04-13', '2025-04-23 06:10:19', '2025-04-06 06:10:19'),
(7, 'OUT-680E2CBBA4CD9', '761588', 1, 1, 1, 'outbound', 'Schimmelmouth', 'Sample transaction description', '2025-04-15', '2025-04-06 06:10:19', '2025-04-04 06:10:19'),
(8, 'IN-680E2CBBA53A2', '163443', 1, 1, 1, 'inbound', 'Ullrichborough', 'Sample transaction description', '2025-04-07', '2025-04-20 06:10:19', '2025-04-23 06:10:19'),
(9, 'OUT-680E2CBBA5B2F', '742466', 1, 3, 1, 'outbound', 'Margaretttown', 'Sample transaction description', '2025-04-06', '2025-04-20 06:10:19', '2025-03-28 06:10:19'),
(10, 'OUT-680E2CBBA6590', '203148', 1, 1, 1, 'outbound', 'Bednarchester', 'Sample transaction description', '2025-03-31', '2025-04-15 06:10:19', '2025-04-20 06:10:19'),
(11, 'OUT-680E2CBBA724C', '205574', 1, 3, 1, 'outbound', 'Antoniettamouth', 'Sample transaction description', '2025-04-09', '2025-04-11 06:10:19', '2025-04-22 06:10:19'),
(12, NULL, '881881', 1, 3, 0, 'inbound', 'Lake Adelefurt', 'Sample transaction description', '2025-03-31', '2025-03-31 06:10:19', '2025-04-23 06:10:19'),
(13, NULL, '503539', 1, 1, 0, 'outbound', 'Kittyberg', 'Sample transaction description', '2025-04-16', '2025-04-05 06:10:19', '2025-04-14 06:10:19'),
(14, NULL, '503539', 1, 2, 0, 'outbound', 'West Winona', 'Sample transaction description', '2025-04-14', '2025-04-22 06:10:19', '2025-04-14 06:10:19'),
(15, NULL, '503539', 1, 1, 0, 'inbound', 'Russelbury', 'Sample transaction description', '2025-04-24', '2025-04-22 06:10:19', '2025-04-10 06:10:19'),
(16, NULL, '282303', 1, 1, 0, 'inbound', 'East Bailey', 'Sample transaction description', '2025-04-09', '2025-04-07 06:10:19', '2025-04-26 06:10:19'),
(17, 'OUT-680E2CBBAA612', '761588', 1, 2, 1, 'outbound', 'East Devan', 'Sample transaction description', '2025-04-23', '2025-04-01 06:10:19', '2025-04-02 06:10:19'),
(18, NULL, '163443', 1, 3, 0, 'inbound', 'New Desireeborough', 'Sample transaction description', '2025-03-31', '2025-04-24 06:10:19', '2025-04-20 06:10:19'),
(19, 'OUT-680E2CBBAB9C0', '203148', 1, 3, 1, 'outbound', 'Braedenshire', 'Sample transaction description', '2025-04-16', '2025-04-01 06:10:19', '2025-04-17 06:10:19'),
(20, NULL, '331672', 1, 2, 0, 'outbound', 'Thompsonfort', 'Sample transaction description', '2025-04-06', '2025-04-12 06:10:19', '2025-04-08 06:10:19'),
(21, 'OUT-680E2CBBACA7D', '203148', 1, 2, 1, 'outbound', 'South Quincytown', 'Sample transaction description', '2025-04-09', '2025-04-22 06:10:19', '2025-04-01 06:10:19'),
(22, 'OUT-680E2CBBAD262', '972632', 1, 1, 1, 'outbound', 'Maeganmouth', 'Sample transaction description', '2025-04-06', '2025-04-17 06:10:19', '2025-04-24 06:10:19'),
(23, 'OUT-680E2CBBADA5A', '205574', 1, 2, 1, 'outbound', 'Elliotville', 'Sample transaction description', '2025-04-02', '2025-04-19 06:10:19', '2025-03-30 06:10:19'),
(24, NULL, '815040', 1, 2, 0, 'inbound', 'Wallaceberg', 'Sample transaction description', '2025-04-04', '2025-04-11 06:10:19', '2025-04-05 06:10:19'),
(25, 'OUT-680E2CBBAECA5', '112767', 1, 3, 1, 'outbound', 'West Darrin', 'Sample transaction description', '2025-04-19', '2025-04-17 06:10:19', '2025-04-15 06:10:19'),
(26, 'IN-680E2CBBAF4E3', '205574', 1, 2, 1, 'inbound', 'Fernandoland', 'Sample transaction description', '2025-04-07', '2025-04-08 06:10:19', '2025-04-14 06:10:19'),
(27, NULL, '331672', 1, 1, 0, 'inbound', 'Caylatown', 'Sample transaction description', '2025-04-16', '2025-04-12 06:10:19', '2025-04-23 06:10:19'),
(28, 'IN-680E2CBBB0353', '282303', 1, 3, 1, 'inbound', 'New Stevehaven', 'Sample transaction description', '2025-04-18', '2025-04-05 06:10:19', '2025-04-07 06:10:19'),
(29, NULL, '742466', 1, 3, 0, 'outbound', 'Port Violetteville', 'Sample transaction description', '2025-03-31', '2025-04-12 06:10:19', '2025-04-23 06:10:19'),
(30, 'IN-680E2CBBB10AF', '474036', 1, 2, 1, 'inbound', 'Gleichnerville', 'Sample transaction description', '2025-04-06', '2025-03-29 06:10:19', '2025-04-16 06:10:19'),
(31, 'OUT-680E2CBBB169E', '203148', 1, 3, 1, 'outbound', 'Walshland', 'Sample transaction description', '2025-03-28', '2025-04-16 06:10:19', '2025-04-01 06:10:19'),
(32, NULL, '163443', 1, 3, 0, 'outbound', 'Haneside', 'Sample transaction description', '2025-04-15', '2025-04-10 06:10:19', '2025-04-04 06:10:19'),
(33, 'OUT-680E2CBBB23EC', '761588', 1, 1, 1, 'outbound', 'Ernserberg', 'Sample transaction description', '2025-04-05', '2025-04-21 06:10:19', '2025-04-15 06:10:19'),
(34, 'IN-680E2CBBB2D39', '163443', 1, 2, 1, 'inbound', 'South Sharon', 'Sample transaction description', '2025-04-14', '2025-04-04 06:10:19', '2025-04-25 06:10:19'),
(35, 'OUT-680E2CBBB3604', '331672', 1, 1, 1, 'outbound', 'Pfefferfort', 'Sample transaction description', '2025-04-03', '2025-04-02 06:10:19', '2025-04-19 06:10:19'),
(36, 'OUT-680E2CBBB3E0B', '503539', 1, 2, 1, 'outbound', 'East Marcelland', 'Sample transaction description', '2025-04-03', '2025-04-05 06:10:19', '2025-04-04 06:10:19'),
(37, NULL, '945041', 1, 2, 0, 'inbound', 'Baumbachfort', 'Sample transaction description', '2025-04-07', '2025-03-30 06:10:19', '2025-04-12 06:10:19'),
(38, 'IN-680E2CBBB4D63', '205574', 1, 1, 1, 'inbound', 'Lake Jillian', 'Sample transaction description', '2025-04-03', '2025-04-23 06:10:19', '2025-04-19 06:10:19'),
(39, NULL, '893444', 1, 2, 0, 'outbound', 'Yundtberg', 'Sample transaction description', '2025-04-15', '2025-04-19 06:10:19', '2025-04-12 06:10:19'),
(40, NULL, '356021', 1, 2, 0, 'inbound', 'East Berniece', 'Sample transaction description', '2025-04-02', '2025-04-23 06:10:19', '2025-04-11 06:10:19'),
(41, 'IN-680E2CBBB63DB', '893444', 1, 1, 1, 'inbound', 'Grayceshire', 'Sample transaction description', '2025-04-15', '2025-04-05 06:10:19', '2025-04-04 06:10:19'),
(42, 'OUT-680E2CBBB70F2', '893444', 1, 1, 1, 'outbound', 'Donnellybury', 'Sample transaction description', '2025-04-14', '2025-04-18 06:10:19', '2025-04-20 06:10:19'),
(43, 'OUT-680E2CBBB7973', '742466', 1, 3, 1, 'outbound', 'Meganechester', 'Sample transaction description', '2025-04-20', '2025-04-17 06:10:19', '2025-04-19 06:10:19'),
(44, NULL, '893444', 1, 3, 0, 'inbound', 'Lubowitzburgh', 'Sample transaction description', '2025-04-22', '2025-04-08 06:10:19', '2025-04-22 06:10:19'),
(45, 'IN-680E2CBBB8A85', '893444', 1, 2, 1, 'inbound', 'New Tryciatown', 'Sample transaction description', '2025-04-14', '2025-04-03 06:10:19', '2025-04-11 06:10:19'),
(46, 'OUT-680E2CBBB925E', '881881', 1, 1, 1, 'outbound', 'Schroedermouth', 'Sample transaction description', '2025-04-08', '2025-03-28 06:10:19', '2025-04-23 06:10:19'),
(47, 'OUT-680E2CBBB9A51', '742466', 1, 3, 1, 'outbound', 'Lake Maribelhaven', 'Sample transaction description', '2025-04-18', '2025-04-09 06:10:19', '2025-04-12 06:10:19'),
(48, 'IN-680E2CBBBA26D', '471197', 1, 2, 1, 'inbound', 'West Ernestinaview', 'Sample transaction description', '2025-04-24', '2025-03-30 06:10:19', '2025-03-30 06:10:19'),
(49, 'IN-680E2CBBBABDF', '881881', 1, 2, 1, 'inbound', 'Scottiefort', 'Sample transaction description', '2025-03-28', '2025-04-21 06:10:19', '2025-04-26 06:10:19'),
(50, NULL, '205574', 1, 2, 0, 'inbound', 'Gaetanofurt', 'Sample transaction description', '2025-04-12', '2025-04-10 06:10:19', '2025-04-08 06:10:19'),
(51, NULL, '474036', 1, 3, 0, 'outbound', 'Port Skye', 'Sample transaction description', '2025-04-11', '2025-04-04 06:10:19', '2025-04-25 06:10:19'),
(52, 'IN-680E2CBBBC60D', '972632', 1, 3, 1, 'inbound', 'Pinkieville', 'Sample transaction description', '2025-04-01', '2025-04-07 06:10:19', '2025-04-26 06:10:19'),
(53, 'IN-680E2CBBBCD26', '945041', 1, 2, 1, 'inbound', 'South Mavisland', 'Sample transaction description', '2025-04-01', '2025-04-20 06:10:19', '2025-04-09 06:10:19'),
(54, 'IN-680E2CBBBD3F3', '205574', 1, 2, 1, 'inbound', 'Ruthiemouth', 'Sample transaction description', '2025-04-20', '2025-04-04 06:10:19', '2025-04-02 06:10:19'),
(55, 'IN-680E2CBBBDB74', '205574', 1, 2, 1, 'inbound', 'North Mabelleport', 'Sample transaction description', '2025-04-18', '2025-03-31 06:10:19', '2025-04-09 06:10:19'),
(56, NULL, '945041', 1, 1, 0, 'outbound', 'East Delilahview', 'Sample transaction description', '2025-04-10', '2025-04-01 06:10:19', '2025-04-22 06:10:19'),
(57, 'OUT-680E2CBBBE8E7', '163443', 1, 3, 1, 'outbound', 'Port Winifredbury', 'Sample transaction description', '2025-04-19', '2025-04-19 06:10:19', '2025-04-02 06:10:19'),
(58, 'OUT-680E2CBBBF3AC', '282303', 1, 2, 1, 'outbound', 'Yundtview', 'Sample transaction description', '2025-03-30', '2025-04-06 06:10:19', '2025-03-29 06:10:19'),
(59, 'IN-680E2CBBBFBA8', '112767', 1, 1, 1, 'inbound', 'New Pricemouth', 'Sample transaction description', '2025-04-04', '2025-04-01 06:10:19', '2025-04-23 06:10:19'),
(60, NULL, '893444', 1, 1, 0, 'inbound', 'Rolfsonfurt', 'Sample transaction description', '2025-04-17', '2025-03-31 06:10:19', '2025-04-26 06:10:19'),
(61, NULL, '356021', 1, 1, 0, 'inbound', 'Kihnborough', 'Sample transaction description', '2025-04-11', '2025-04-20 06:10:19', '2025-04-05 06:10:19'),
(62, 'IN-680E2CBBC121E', '318896', 1, 2, 1, 'inbound', 'Port Anais', 'Sample transaction description', '2025-03-28', '2025-04-10 06:10:19', '2025-04-24 06:10:19'),
(63, NULL, '356021', 1, 1, 0, 'outbound', 'Otiliafort', 'Sample transaction description', '2025-04-06', '2025-04-16 06:10:19', '2025-03-30 06:10:19'),
(64, 'OUT-680E2CBBC2045', '471197', 1, 2, 1, 'outbound', 'East Darianaburgh', 'Sample transaction description', '2025-04-16', '2025-04-13 06:10:19', '2025-04-09 06:10:19'),
(65, 'OUT-680E2CBBC2672', '318896', 1, 2, 1, 'outbound', 'Markschester', 'Sample transaction description', '2025-04-05', '2025-04-24 06:10:19', '2025-04-12 06:10:19'),
(66, 'OUT-680E2CBBC2F5E', '763247', 1, 2, 1, 'outbound', 'Langberg', 'Sample transaction description', '2025-03-31', '2025-04-11 06:10:19', '2025-04-18 06:10:19'),
(67, NULL, '972632', 1, 2, 0, 'outbound', 'Vestafort', 'Sample transaction description', '2025-04-20', '2025-04-19 06:10:19', '2025-04-25 06:10:19'),
(68, 'OUT-680E2CBBC3E8D', '881881', 1, 1, 1, 'outbound', 'New Magdalenabury', 'Sample transaction description', '2025-04-21', '2025-04-14 06:10:19', '2025-04-08 06:10:19'),
(69, NULL, '471197', 1, 2, 0, 'outbound', 'West Wyman', 'Sample transaction description', '2025-04-25', '2025-04-13 06:10:19', '2025-04-13 06:10:19'),
(70, 'OUT-680E2CBBC4B7E', '503539', 1, 1, 1, 'outbound', 'Janaemouth', 'Sample transaction description', '2025-04-19', '2025-04-02 06:10:19', '2025-04-22 06:10:19'),
(71, NULL, '972632', 1, 3, 0, 'outbound', 'Terryview', 'Sample transaction description', '2025-04-06', '2025-04-23 06:10:19', '2025-04-16 06:10:19'),
(72, NULL, '163443', 1, 3, 0, 'inbound', 'Albinport', 'Sample transaction description', '2025-04-14', '2025-04-18 06:10:19', '2025-04-24 06:10:19'),
(73, NULL, '815040', 1, 2, 0, 'outbound', 'West Olliebury', 'Sample transaction description', '2025-04-05', '2025-03-28 06:10:19', '2025-04-24 06:10:19'),
(74, NULL, '742466', 1, 2, 0, 'inbound', 'Hellerville', 'Sample transaction description', '2025-04-23', '2025-04-17 06:10:19', '2025-04-24 06:10:19'),
(75, 'IN-680E2CBBC6F4D', '205574', 1, 1, 1, 'inbound', 'Benjaminfort', 'Sample transaction description', '2025-04-18', '2025-04-04 06:10:19', '2025-04-23 06:10:19'),
(76, NULL, '742466', 1, 3, 0, 'outbound', 'Wintheiserburgh', 'Sample transaction description', '2025-04-20', '2025-04-16 06:10:19', '2025-04-25 06:10:19'),
(77, NULL, '503539', 1, 2, 0, 'inbound', 'Rathfurt', 'Sample transaction description', '2025-04-17', '2025-04-03 06:10:19', '2025-04-26 06:10:19'),
(78, 'IN-680E2CBBC8686', '503539', 1, 3, 1, 'inbound', 'South Natalieborough', 'Sample transaction description', '2025-04-26', '2025-04-20 06:10:19', '2025-04-05 06:10:19'),
(79, 'IN-680E2CBBC8D29', '972632', 1, 1, 1, 'inbound', 'Deloresview', 'Sample transaction description', '2025-04-05', '2025-04-23 06:10:19', '2025-04-21 06:10:19'),
(80, 'OUT-680E2CBBC93FB', '815040', 1, 2, 1, 'outbound', 'Larissatown', 'Sample transaction description', '2025-04-01', '2025-04-03 06:10:19', '2025-03-28 06:10:19'),
(81, NULL, '815040', 1, 2, 0, 'inbound', 'Port Kaylifurt', 'Sample transaction description', '2025-04-04', '2025-04-16 06:10:19', '2025-04-13 06:10:19'),
(82, NULL, '761588', 1, 3, 0, 'outbound', 'Wunschville', 'Sample transaction description', '2025-04-13', '2025-04-25 06:10:19', '2025-03-30 06:10:19'),
(83, 'OUT-680E2CBBCA85F', '881881', 1, 1, 1, 'outbound', 'Gerlachhaven', 'Sample transaction description', '2025-03-31', '2025-04-16 06:10:19', '2025-03-31 06:10:19'),
(84, 'IN-680E2CBBCB017', '318896', 1, 3, 1, 'inbound', 'South Josiane', 'Sample transaction description', '2025-04-26', '2025-04-08 06:10:19', '2025-04-25 06:10:19'),
(85, NULL, '761588', 1, 3, 0, 'outbound', 'New Rosaleeshire', 'Sample transaction description', '2025-04-22', '2025-04-03 06:10:19', '2025-04-05 06:10:19'),
(86, 'IN-680E2CBBCC1E6', '474036', 1, 1, 1, 'inbound', 'Paucekmouth', 'Sample transaction description', '2025-03-29', '2025-04-01 06:10:19', '2025-04-05 06:10:19'),
(87, 'OUT-680E2CBBCC8B7', '474036', 1, 2, 1, 'outbound', 'West Mikaylashire', 'Sample transaction description', '2025-03-29', '2025-04-17 06:10:19', '2025-04-11 06:10:19'),
(88, NULL, '763247', 1, 2, 0, 'inbound', 'Macejkovicmouth', 'Sample transaction description', '2025-04-17', '2025-04-17 06:10:19', '2025-04-16 06:10:19'),
(89, NULL, '761588', 1, 1, 0, 'inbound', 'Einomouth', 'Sample transaction description', '2025-04-24', '2025-04-25 06:10:19', '2025-03-28 06:10:19'),
(90, NULL, '471197', 1, 3, 0, 'inbound', 'Lindsaybury', 'Sample transaction description', '2025-04-08', '2025-04-23 06:10:19', '2025-04-22 06:10:19'),
(91, 'IN-680E2CBBCE976', '972632', 1, 2, 1, 'inbound', 'Enahaven', 'Sample transaction description', '2025-04-23', '2025-03-31 06:10:19', '2025-04-02 06:10:19'),
(92, NULL, '742466', 1, 1, 0, 'inbound', 'Schultzberg', 'Sample transaction description', '2025-03-28', '2025-04-08 06:10:19', '2025-04-07 06:10:19'),
(93, 'OUT-680E2CBBCFE3F', '471197', 1, 2, 1, 'outbound', 'Rolfsonville', 'Sample transaction description', '2025-04-15', '2025-04-24 06:10:19', '2025-04-09 06:10:19'),
(94, NULL, '561975', 1, 2, 0, 'outbound', 'Lisandroside', 'Sample transaction description', '2025-04-22', '2025-04-05 06:10:19', '2025-04-06 06:10:19'),
(95, NULL, '815040', 1, 3, 0, 'inbound', 'Port Lila', 'Sample transaction description', '2025-03-30', '2025-04-11 06:10:19', '2025-04-13 06:10:19'),
(96, 'IN-680E2CBBD1318', '471197', 1, 2, 1, 'inbound', 'West Letha', 'Sample transaction description', '2025-04-13', '2025-04-19 06:10:19', '2025-04-16 06:10:19'),
(97, NULL, '503539', 1, 3, 0, 'outbound', 'New Leo', 'Sample transaction description', '2025-04-19', '2025-04-19 06:10:19', '2025-04-21 06:10:19'),
(98, 'OUT-680E2CBBD21B3', '972632', 1, 1, 1, 'outbound', 'Margotchester', 'Sample transaction description', '2025-04-07', '2025-04-24 06:10:19', '2025-04-20 06:10:19'),
(99, NULL, '471197', 1, 3, 0, 'inbound', 'East Howellton', 'Sample transaction description', '2025-04-26', '2025-04-18 06:10:19', '2025-04-10 06:10:19'),
(100, NULL, '561975', 1, 1, 0, 'outbound', 'Lake Jewellside', 'Sample transaction description', '2025-04-23', '2025-04-20 06:10:19', '2025-04-23 06:10:19'),
(101, 'IN-680E2CBBD399E', '356021', 1, 2, 1, 'inbound', 'Romaside', 'Sample transaction description', '2025-04-05', '2025-04-23 06:10:19', '2025-04-14 06:10:19'),
(102, NULL, '203148', 1, 3, 0, 'outbound', 'Kautzerville', 'Sample transaction description', '2025-04-05', '2025-04-06 06:10:19', '2025-04-24 06:10:19'),
(103, NULL, '112767', 1, 3, 0, 'inbound', 'South Orland', 'Sample transaction description', '2025-04-19', '2025-03-29 06:10:19', '2025-04-25 06:10:19'),
(104, 'IN-680E2CBBD51F1', '203148', 1, 3, 1, 'inbound', 'West Monserratetown', 'Sample transaction description', '2025-04-23', '2025-03-29 06:10:19', '2025-04-13 06:10:19'),
(105, 'IN-680E2CBBD5B3C', '282303', 1, 2, 1, 'inbound', 'Port Corbin', 'Sample transaction description', '2025-04-26', '2025-03-29 06:10:19', '2025-04-21 06:10:19'),
(106, 'OUT-680E2CBBD630C', '761588', 1, 1, 1, 'outbound', 'Lake Leraland', 'Sample transaction description', '2025-04-25', '2025-04-02 06:10:19', '2025-04-05 06:10:19'),
(107, 'OUT-680E2CBBD6A77', '761588', 1, 2, 1, 'outbound', 'Clarkbury', 'Sample transaction description', '2025-04-24', '2025-04-08 06:10:19', '2025-03-29 06:10:19'),
(108, 'IN-680E2CBBD758D', '761588', 1, 3, 1, 'inbound', 'North Monteton', 'Sample transaction description', '2025-04-26', '2025-03-30 06:10:19', '2025-04-14 06:10:19'),
(109, NULL, '893444', 1, 1, 0, 'inbound', 'Alizatown', 'Sample transaction description', '2025-04-25', '2025-03-29 06:10:19', '2025-04-09 06:10:19'),
(110, 'IN-680E2CBBD8762', '112767', 1, 1, 1, 'inbound', 'East Dominiqueview', 'Sample transaction description', '2025-04-11', '2025-04-14 06:10:19', '2025-03-28 06:10:19'),
(111, 'IN-680E2CBBD8E56', '163443', 1, 3, 1, 'inbound', 'New Jamarcusmouth', 'Sample transaction description', '2025-04-02', '2025-04-26 06:10:19', '2025-04-07 06:10:19'),
(112, 'OUT-680E2CBBD95CA', '471197', 1, 3, 1, 'outbound', 'Colinton', 'Sample transaction description', '2025-04-03', '2025-04-06 06:10:19', '2025-04-09 06:10:19'),
(113, 'OUT-680E2CBBD9CD9', '318896', 1, 2, 1, 'outbound', 'Lake Daltonport', 'Sample transaction description', '2025-04-09', '2025-04-14 06:10:19', '2025-04-02 06:10:19'),
(114, 'IN-680E2CBBDA35A', '112767', 1, 1, 1, 'inbound', 'East Jalon', 'Sample transaction description', '2025-04-19', '2025-03-31 06:10:19', '2025-04-15 06:10:19'),
(115, NULL, '282303', 1, 1, 0, 'inbound', 'Gislasonfort', 'Sample transaction description', '2025-04-24', '2025-04-24 06:10:19', '2025-04-17 06:10:19'),
(116, NULL, '763247', 1, 2, 0, 'outbound', 'Lillianastad', 'Sample transaction description', '2025-04-20', '2025-04-01 06:10:19', '2025-04-04 06:10:19'),
(117, NULL, '474036', 1, 2, 0, 'outbound', 'Queeniechester', 'Sample transaction description', '2025-04-13', '2025-04-09 06:10:19', '2025-04-19 06:10:19'),
(118, 'IN-680E2CBBDC524', '331672', 1, 3, 1, 'inbound', 'Okunevaside', 'Sample transaction description', '2025-04-01', '2025-03-31 06:10:19', '2025-04-08 06:10:19'),
(119, 'IN-680E2CBBDCBAA', '742466', 1, 3, 1, 'inbound', 'Boscofurt', 'Sample transaction description', '2025-04-13', '2025-04-14 06:10:19', '2025-04-12 06:10:19'),
(120, 'IN-680E2CBBDD356', '503539', 1, 1, 1, 'inbound', 'Harmonymouth', 'Sample transaction description', '2025-04-09', '2025-03-30 06:10:19', '2025-04-26 06:10:19'),
(121, NULL, '881881', 1, 1, 0, 'inbound', 'Shieldsburgh', 'Sample transaction description', '2025-04-16', '2025-04-02 06:10:19', '2025-04-24 06:10:19'),
(122, NULL, '881881', 1, 2, 0, 'outbound', 'Boehmton', 'Sample transaction description', '2025-04-09', '2025-04-08 06:10:19', '2025-04-17 06:10:19'),
(123, 'IN-680E2CBBDE76C', '893444', 1, 3, 1, 'inbound', 'Olinburgh', 'Sample transaction description', '2025-04-11', '2025-04-12 06:10:19', '2025-04-17 06:10:19'),
(124, NULL, '112767', 1, 2, 0, 'outbound', 'Borerland', 'Sample transaction description', '2025-04-11', '2025-04-14 06:10:19', '2025-03-29 06:10:19'),
(125, 'OUT-680E2CBBDF64E', '815040', 1, 2, 1, 'outbound', 'North Rossie', 'Sample transaction description', '2025-04-23', '2025-04-26 06:10:19', '2025-04-04 06:10:19'),
(126, NULL, '561975', 1, 1, 0, 'outbound', 'Cathrynmouth', 'Sample transaction description', '2025-04-19', '2025-03-28 06:10:19', '2025-04-08 06:10:19'),
(127, 'IN-680E2CBBE072C', '945041', 1, 3, 1, 'inbound', 'West Jada', 'Sample transaction description', '2025-04-23', '2025-04-22 06:10:19', '2025-03-30 06:10:19'),
(128, 'IN-680E2CBBE0DF5', '893444', 1, 2, 1, 'inbound', 'Port Jeffrytown', 'Sample transaction description', '2025-04-21', '2025-04-04 06:10:19', '2025-04-14 06:10:19'),
(129, NULL, '112767', 1, 3, 0, 'inbound', 'Parisianland', 'Sample transaction description', '2025-04-18', '2025-04-21 06:10:19', '2025-04-19 06:10:19'),
(130, NULL, '503539', 1, 2, 0, 'outbound', 'East Edmond', 'Sample transaction description', '2025-04-05', '2025-04-19 06:10:19', '2025-04-03 06:10:19'),
(131, 'IN-680E2CBBE219A', '318896', 1, 3, 1, 'inbound', 'Murazikberg', 'Sample transaction description', '2025-04-24', '2025-04-08 06:10:19', '2025-04-26 06:10:19'),
(132, NULL, '561975', 1, 3, 0, 'outbound', 'Lake Stefaniemouth', 'Sample transaction description', '2025-04-25', '2025-04-09 06:10:19', '2025-04-07 06:10:19'),
(133, 'IN-680E2CBBE2E79', '203148', 1, 3, 1, 'inbound', 'Hermannstad', 'Sample transaction description', '2025-04-16', '2025-04-21 06:10:19', '2025-04-06 06:10:19'),
(134, 'OUT-680E2CBBE3748', '474036', 1, 3, 1, 'outbound', 'North Jessieland', 'Sample transaction description', '2025-04-06', '2025-03-30 06:10:19', '2025-04-03 06:10:19'),
(135, 'IN-680E2CBBE408F', '972632', 1, 1, 1, 'inbound', 'Lake Ginatown', 'Sample transaction description', '2025-04-20', '2025-04-12 06:10:19', '2025-04-22 06:10:19'),
(136, 'OUT-680E2CBBE4A31', '815040', 1, 3, 1, 'outbound', 'East Norachester', 'Sample transaction description', '2025-04-11', '2025-04-09 06:10:19', '2025-04-10 06:10:19'),
(137, NULL, '474036', 1, 3, 0, 'outbound', 'Dinoton', 'Sample transaction description', '2025-04-10', '2025-03-31 06:10:19', '2025-04-23 06:10:19'),
(138, NULL, '474036', 1, 1, 0, 'inbound', 'West Elody', 'Sample transaction description', '2025-04-11', '2025-04-07 06:10:19', '2025-04-26 06:10:19'),
(139, 'OUT-680E2CBBE5E1C', '945041', 1, 1, 1, 'outbound', 'Lexusburgh', 'Sample transaction description', '2025-04-02', '2025-04-06 06:10:19', '2025-03-31 06:10:19'),
(140, 'OUT-680E2CBBE64C7', '815040', 1, 2, 1, 'outbound', 'Chynashire', 'Sample transaction description', '2025-04-13', '2025-04-21 06:10:19', '2025-04-18 06:10:19'),
(141, 'OUT-680E2CBBE6B88', '893444', 1, 2, 1, 'outbound', 'East Lonzoton', 'Sample transaction description', '2025-04-22', '2025-04-22 06:10:19', '2025-04-21 06:10:19'),
(142, NULL, '881881', 1, 3, 0, 'inbound', 'West Margarettaside', 'Sample transaction description', '2025-04-10', '2025-03-31 06:10:19', '2025-03-28 06:10:19'),
(143, 'OUT-680E2CBBE7D23', '318896', 1, 3, 1, 'outbound', 'Lake Floyville', 'Sample transaction description', '2025-04-22', '2025-03-28 06:10:19', '2025-04-08 06:10:19'),
(144, 'OUT-680E2CBBE84E1', '945041', 1, 3, 1, 'outbound', 'East Thaliaside', 'Sample transaction description', '2025-04-14', '2025-03-28 06:10:19', '2025-04-22 06:10:19'),
(145, 'IN-680E2CBBE8BF5', '881881', 1, 1, 1, 'inbound', 'Alvisville', 'Sample transaction description', '2025-04-05', '2025-04-18 06:10:19', '2025-04-11 06:10:19'),
(146, NULL, '474036', 1, 1, 0, 'outbound', 'Armanimouth', 'Sample transaction description', '2025-04-11', '2025-03-31 06:10:19', '2025-04-21 06:10:19'),
(147, 'IN-680E2CBBE9944', '881881', 1, 3, 1, 'inbound', 'Zboncaktown', 'Sample transaction description', '2025-04-14', '2025-04-22 06:10:19', '2025-04-23 06:10:19'),
(148, NULL, '474036', 1, 2, 0, 'outbound', 'New Lesly', 'Sample transaction description', '2025-04-08', '2025-04-06 06:10:19', '2025-04-08 06:10:19'),
(149, NULL, '474036', 1, 3, 0, 'outbound', 'Waelchiland', 'Sample transaction description', '2025-04-06', '2025-04-22 06:10:19', '2025-04-20 06:10:19'),
(150, 'OUT-680E2CBBEAE9E', '471197', 1, 3, 1, 'outbound', 'Leannonmouth', 'Sample transaction description', '2025-04-11', '2025-04-23 06:10:19', '2025-04-08 06:10:19'),
(151, 'OUT-680E2CBBEB8C2', '893444', 1, 2, 1, 'outbound', 'East Berthafurt', 'Sample transaction description', '2025-04-25', '2025-04-04 06:10:19', '2025-03-31 06:10:19'),
(152, 'IN-680E2CBBEC36D', '503539', 1, 1, 1, 'inbound', 'Runolfssonside', 'Sample transaction description', '2025-04-20', '2025-04-24 06:10:19', '2025-04-21 06:10:19'),
(153, NULL, '503539', 1, 3, 0, 'outbound', 'Lilychester', 'Sample transaction description', '2025-03-31', '2025-04-10 06:10:19', '2025-03-30 06:10:19'),
(154, NULL, '471197', 1, 2, 0, 'outbound', 'Wittingland', 'Sample transaction description', '2025-04-09', '2025-04-26 06:10:19', '2025-04-23 06:10:19'),
(155, NULL, '972632', 1, 1, 0, 'outbound', 'North Eleazarhaven', 'Sample transaction description', '2025-04-25', '2025-04-14 06:10:19', '2025-04-08 06:10:19'),
(156, 'IN-680E2CBBEE122', '761588', 1, 3, 1, 'inbound', 'Marlinport', 'Sample transaction description', '2025-04-23', '2025-04-14 06:10:19', '2025-04-01 06:10:19'),
(157, NULL, '893444', 1, 1, 0, 'outbound', 'West Burley', 'Sample transaction description', '2025-04-06', '2025-04-22 06:10:19', '2025-04-23 06:10:19'),
(158, 'IN-680E2CBBEF026', '815040', 1, 1, 1, 'inbound', 'Port Mozelle', 'Sample transaction description', '2025-04-11', '2025-04-26 06:10:19', '2025-04-19 06:10:19'),
(159, 'IN-680E2CBBEF7B5', '205574', 1, 3, 1, 'inbound', 'Jerdeshire', 'Sample transaction description', '2025-03-30', '2025-04-25 06:10:19', '2025-03-31 06:10:19'),
(160, NULL, '972632', 1, 1, 0, 'outbound', 'Roxanestad', 'Sample transaction description', '2025-04-26', '2025-04-15 06:10:19', '2025-04-19 06:10:19'),
(161, 'OUT-680E2CBBF08C3', '561975', 1, 2, 1, 'outbound', 'East Vesta', 'Sample transaction description', '2025-04-07', '2025-04-02 06:10:19', '2025-04-19 06:10:19'),
(162, NULL, '474036', 1, 1, 0, 'inbound', 'New Gerryborough', 'Sample transaction description', '2025-04-21', '2025-04-01 06:10:19', '2025-04-06 06:10:19'),
(163, 'IN-680E2CBBF1683', '893444', 1, 3, 1, 'inbound', 'Port Vance', 'Sample transaction description', '2025-04-06', '2025-04-07 06:10:19', '2025-04-25 06:10:19'),
(164, 'IN-680E2CBBF1D9F', '763247', 1, 3, 1, 'inbound', 'Garfieldburgh', 'Sample transaction description', '2025-04-02', '2025-04-22 06:10:19', '2025-04-09 06:10:19'),
(165, 'IN-680E2CBBF23CC', '318896', 1, 1, 1, 'inbound', 'Lake Max', 'Sample transaction description', '2025-03-31', '2025-03-29 06:10:19', '2025-04-01 06:10:19'),
(166, NULL, '503539', 1, 3, 0, 'inbound', 'West Fannieberg', 'Sample transaction description', '2025-04-20', '2025-04-26 06:10:19', '2025-04-12 06:10:19'),
(167, NULL, '761588', 1, 3, 0, 'inbound', 'Lake Seamusburgh', 'Sample transaction description', '2025-04-03', '2025-04-04 06:10:19', '2025-03-29 06:10:19'),
(168, NULL, '972632', 1, 3, 0, 'outbound', 'Baileyview', 'Sample transaction description', '2025-04-20', '2025-04-08 06:10:19', '2025-04-01 06:10:19'),
(169, 'IN-680E2CBC00202', '893444', 1, 3, 1, 'inbound', 'Lake Kobebury', 'Sample transaction description', '2025-04-25', '2025-04-05 06:10:20', '2025-04-06 06:10:20'),
(170, 'IN-680E2CBC009F5', '205574', 1, 3, 1, 'inbound', 'Carterside', 'Sample transaction description', '2025-04-02', '2025-03-28 06:10:20', '2025-04-21 06:10:20'),
(171, NULL, '763247', 1, 2, 0, 'outbound', 'South Isabelchester', 'Sample transaction description', '2025-04-17', '2025-04-03 06:10:20', '2025-04-06 06:10:20'),
(172, NULL, '503539', 1, 2, 0, 'inbound', 'Doramouth', 'Sample transaction description', '2025-03-29', '2025-04-03 06:10:20', '2025-04-13 06:10:20'),
(173, 'OUT-680E2CBC01EA0', '163443', 1, 1, 1, 'outbound', 'East Elliottown', 'Sample transaction description', '2025-04-22', '2025-04-14 06:10:20', '2025-03-30 06:10:20'),
(174, 'OUT-680E2CBC0251A', '318896', 1, 2, 1, 'outbound', 'Aniyamouth', 'Sample transaction description', '2025-04-15', '2025-04-20 06:10:20', '2025-03-31 06:10:20'),
(175, NULL, '761588', 1, 2, 0, 'inbound', 'Prosaccoview', 'Sample transaction description', '2025-04-04', '2025-03-30 06:10:20', '2025-04-18 06:10:20'),
(176, NULL, '331672', 1, 3, 0, 'outbound', 'Alethaview', 'Sample transaction description', '2025-04-16', '2025-04-26 06:10:20', '2025-04-11 06:10:20'),
(177, NULL, '163443', 1, 3, 0, 'outbound', 'Noeview', 'Sample transaction description', '2025-04-26', '2025-03-29 06:10:20', '2025-04-01 06:10:20'),
(178, NULL, '112767', 1, 3, 0, 'outbound', 'Stromanstad', 'Sample transaction description', '2025-04-18', '2025-04-19 06:10:20', '2025-04-21 06:10:20'),
(179, NULL, '761588', 1, 3, 0, 'inbound', 'Rebekahland', 'Sample transaction description', '2025-04-13', '2025-04-15 06:10:20', '2025-04-23 06:10:20'),
(180, NULL, '972632', 1, 3, 0, 'outbound', 'Deborahton', 'Sample transaction description', '2025-04-16', '2025-04-11 06:10:20', '2025-04-14 06:10:20'),
(181, 'IN-680E2CBC05A63', '203148', 1, 2, 1, 'inbound', 'Littelborough', 'Sample transaction description', '2025-04-23', '2025-04-19 06:10:20', '2025-04-02 06:10:20'),
(182, 'IN-680E2CBC061B3', '972632', 1, 2, 1, 'inbound', 'New Loy', 'Sample transaction description', '2025-04-26', '2025-04-24 06:10:20', '2025-04-16 06:10:20'),
(183, 'IN-680E2CBC0696F', '471197', 1, 2, 1, 'inbound', 'South Lizziemouth', 'Sample transaction description', '2025-04-26', '2025-04-03 06:10:20', '2025-04-13 06:10:20'),
(184, 'OUT-680E2CBC06FC2', '503539', 1, 1, 1, 'outbound', 'Mrazbury', 'Sample transaction description', '2025-04-16', '2025-04-12 06:10:20', '2025-04-20 06:10:20'),
(185, NULL, '112767', 1, 1, 0, 'inbound', 'New Sheldonmouth', 'Sample transaction description', '2025-04-14', '2025-04-26 06:10:20', '2025-04-08 06:10:20'),
(186, 'IN-680E2CBC07FAD', '561975', 1, 3, 1, 'inbound', 'Paucekmouth', 'Sample transaction description', '2025-04-02', '2025-04-20 06:10:20', '2025-04-15 06:10:20'),
(187, NULL, '945041', 1, 1, 0, 'inbound', 'Cummeratafurt', 'Sample transaction description', '2025-04-02', '2025-04-13 06:10:20', '2025-04-26 06:10:20'),
(188, NULL, '331672', 1, 1, 0, 'outbound', 'North Beverlymouth', 'Sample transaction description', '2025-04-18', '2025-04-21 06:10:20', '2025-04-19 06:10:20'),
(189, NULL, '205574', 1, 3, 0, 'inbound', 'New Claire', 'Sample transaction description', '2025-04-02', '2025-04-17 06:10:20', '2025-04-24 06:10:20'),
(190, 'OUT-680E2CBC09CF2', '972632', 1, 1, 1, 'outbound', 'Lilyton', 'Sample transaction description', '2025-04-07', '2025-04-08 06:10:20', '2025-04-10 06:10:20'),
(191, NULL, '945041', 1, 2, 0, 'outbound', 'Schneiderstad', 'Sample transaction description', '2025-04-24', '2025-04-05 06:10:20', '2025-04-12 06:10:20'),
(192, NULL, '112767', 1, 1, 0, 'outbound', 'Marianeland', 'Sample transaction description', '2025-04-26', '2025-03-28 06:10:20', '2025-04-03 06:10:20'),
(193, 'IN-680E2CBC0B100', '893444', 1, 3, 1, 'inbound', 'Lake Ambrosechester', 'Sample transaction description', '2025-03-30', '2025-04-01 06:10:20', '2025-04-12 06:10:20'),
(194, 'OUT-680E2CBC0B75C', '815040', 1, 1, 1, 'outbound', 'South Gwendolyn', 'Sample transaction description', '2025-03-31', '2025-04-26 06:10:20', '2025-04-13 06:10:20'),
(195, 'OUT-680E2CBC0C16C', '331672', 1, 2, 1, 'outbound', 'North Jarretthaven', 'Sample transaction description', '2025-04-13', '2025-04-15 06:10:20', '2025-04-09 06:10:20'),
(196, 'OUT-680E2CBC0CA08', '881881', 1, 1, 1, 'outbound', 'Port Claudia', 'Sample transaction description', '2025-04-12', '2025-04-20 06:10:20', '2025-03-31 06:10:20'),
(197, 'IN-680E2CBC0D205', '471197', 1, 1, 1, 'inbound', 'East Jaimeshire', 'Sample transaction description', '2025-04-24', '2025-04-23 06:10:20', '2025-04-10 06:10:20'),
(198, NULL, '205574', 1, 2, 0, 'inbound', 'South Jessyca', 'Sample transaction description', '2025-04-10', '2025-04-03 06:10:20', '2025-03-28 06:10:20'),
(199, 'OUT-680E2CBC0EB15', '761588', 1, 1, 1, 'outbound', 'Port Chasity', 'Sample transaction description', '2025-04-25', '2025-04-01 06:10:20', '2025-04-03 06:10:20'),
(200, NULL, '561975', 1, 3, 0, 'outbound', 'Simonischester', 'Sample transaction description', '2025-04-05', '2025-04-20 06:10:20', '2025-04-10 06:10:20'),
(201, NULL, '763247', 1, 3, 0, 'outbound', 'South Nadia', 'Sample transaction description', '2025-04-02', '2025-04-03 06:10:20', '2025-04-19 06:10:20'),
(202, NULL, '203148', 1, 2, 0, 'outbound', 'Elliotberg', 'Sample transaction description', '2025-04-04', '2025-04-08 06:10:20', '2025-04-15 06:10:20'),
(203, NULL, '474036', 1, 2, 0, 'inbound', 'East Dax', 'Sample transaction description', '2025-04-01', '2025-04-26 06:10:20', '2025-04-08 06:10:20'),
(204, NULL, '893444', 1, 3, 0, 'inbound', 'South Janet', 'Sample transaction description', '2025-04-01', '2025-04-17 06:10:20', '2025-03-29 06:10:20'),
(205, 'IN-680E2CBC12733', '474036', 1, 3, 1, 'inbound', 'Lake Favianview', 'Sample transaction description', '2025-04-26', '2025-04-15 06:10:20', '2025-04-23 06:10:20'),
(206, 'IN-680E2CBC12DF5', '972632', 1, 1, 1, 'inbound', 'West Randal', 'Sample transaction description', '2025-04-17', '2025-04-06 06:10:20', '2025-04-25 06:10:20'),
(207, NULL, '945041', 1, 2, 0, 'inbound', 'Brendonchester', 'Sample transaction description', '2025-04-13', '2025-04-14 06:10:20', '2025-04-14 06:10:20'),
(208, NULL, '815040', 1, 1, 0, 'inbound', 'Janestad', 'Sample transaction description', '2025-04-01', '2025-04-10 06:10:20', '2025-04-08 06:10:20'),
(209, 'OUT-680E2CBC147E8', '112767', 1, 2, 1, 'outbound', 'Adelechester', 'Sample transaction description', '2025-04-26', '2025-04-23 06:10:20', '2025-04-25 06:10:20'),
(210, NULL, '815040', 1, 1, 0, 'inbound', 'Port Taurean', 'Sample transaction description', '2025-04-21', '2025-04-21 06:10:20', '2025-04-20 06:10:20'),
(211, NULL, '318896', 1, 3, 0, 'inbound', 'North Camylle', 'Sample transaction description', '2025-04-21', '2025-04-16 06:10:20', '2025-04-07 06:10:20'),
(212, NULL, '282303', 1, 3, 0, 'outbound', 'Hodkiewiczchester', 'Sample transaction description', '2025-04-24', '2025-04-03 06:10:20', '2025-04-15 06:10:20'),
(213, 'OUT-680E2CBC16915', '331672', 1, 1, 1, 'outbound', 'Port Dayanashire', 'Sample transaction description', '2025-04-17', '2025-04-07 06:10:20', '2025-04-10 06:10:20'),
(214, 'IN-680E2CBC1707B', '356021', 1, 2, 1, 'inbound', 'East Peytonchester', 'Sample transaction description', '2025-04-16', '2025-03-28 06:10:20', '2025-04-16 06:10:20'),
(215, 'OUT-680E2CBC177E3', '763247', 1, 3, 1, 'outbound', 'Emmettside', 'Sample transaction description', '2025-04-23', '2025-04-16 06:10:20', '2025-04-24 06:10:20'),
(216, 'IN-680E2CBC18358', '945041', 1, 3, 1, 'inbound', 'Lake Joyceport', 'Sample transaction description', '2025-03-30', '2025-04-16 06:10:20', '2025-04-15 06:10:20'),
(217, NULL, '732661', 1, 2, 0, 'inbound', 'Port Pearlie', 'Sample transaction description', '2025-04-19', '2025-03-31 06:10:20', '2025-03-28 06:10:20'),
(218, NULL, '471197', 1, 2, 0, 'inbound', 'Abbottmouth', 'Sample transaction description', '2025-04-04', '2025-04-08 06:10:20', '2025-04-20 06:10:20'),
(219, NULL, '318896', 1, 2, 0, 'inbound', 'Julienburgh', 'Sample transaction description', '2025-04-01', '2025-04-20 06:10:20', '2025-04-13 06:10:20'),
(220, NULL, '815040', 1, 1, 0, 'inbound', 'West Jessikaview', 'Sample transaction description', '2025-04-24', '2025-03-29 06:10:20', '2025-04-14 06:10:20'),
(221, NULL, '205574', 1, 3, 0, 'inbound', 'Kirlinland', 'Sample transaction description', '2025-04-02', '2025-03-29 06:10:20', '2025-04-11 06:10:20'),
(222, 'IN-680E2CBC1B599', '112767', 1, 3, 1, 'inbound', 'New Freedaton', 'Sample transaction description', '2025-04-14', '2025-04-01 06:10:20', '2025-04-25 06:10:20'),
(223, 'IN-680E2CBC1BF11', '561975', 1, 1, 1, 'inbound', 'New Katheryn', 'Sample transaction description', '2025-03-30', '2025-03-30 06:10:20', '2025-04-08 06:10:20'),
(224, 'IN-680E2CBC1CA2A', '972632', 1, 3, 1, 'inbound', 'Lake Jefferey', 'Sample transaction description', '2025-04-25', '2025-03-28 06:10:20', '2025-04-12 06:10:20'),
(225, NULL, '163443', 1, 2, 0, 'inbound', 'West Bricebury', 'Sample transaction description', '2025-04-22', '2025-04-13 06:10:20', '2025-04-14 06:10:20'),
(226, 'OUT-680E2CBC1DEE7', '282303', 1, 3, 1, 'outbound', 'South Gretchenshire', 'Sample transaction description', '2025-04-24', '2025-04-24 06:10:20', '2025-03-29 06:10:20'),
(227, 'IN-680E2CBC1E5F7', '561975', 1, 3, 1, 'inbound', 'Maynardfort', 'Sample transaction description', '2025-04-11', '2025-04-03 06:10:20', '2025-04-25 06:10:20'),
(228, NULL, '205574', 1, 3, 0, 'outbound', 'Hintzville', 'Sample transaction description', '2025-03-31', '2025-04-25 06:10:20', '2025-04-04 06:10:20'),
(229, NULL, '503539', 1, 2, 0, 'inbound', 'Adrienneshire', 'Sample transaction description', '2025-04-25', '2025-04-04 06:10:20', '2025-04-25 06:10:20'),
(230, NULL, '205574', 1, 3, 0, 'outbound', 'North Fleta', 'Sample transaction description', '2025-03-28', '2025-04-13 06:10:20', '2025-04-16 06:10:20'),
(231, 'IN-680E2CBC20352', '471197', 1, 3, 1, 'inbound', 'North Glennafurt', 'Sample transaction description', '2025-04-09', '2025-04-20 06:10:20', '2025-03-28 06:10:20'),
(232, 'OUT-680E2CBC20CF1', '282303', 1, 3, 1, 'outbound', 'Dickensbury', 'Sample transaction description', '2025-04-25', '2025-04-05 06:10:20', '2025-04-07 06:10:20'),
(233, NULL, '282303', 1, 2, 0, 'outbound', 'Lake Rhodahaven', 'Sample transaction description', '2025-04-08', '2025-04-16 06:10:20', '2025-04-21 06:10:20'),
(234, 'IN-680E2CBC21AA1', '815040', 1, 1, 1, 'inbound', 'Maureenfort', 'Sample transaction description', '2025-04-25', '2025-04-16 06:10:20', '2025-04-03 06:10:20'),
(235, NULL, '112767', 1, 3, 0, 'inbound', 'Dillanland', 'Sample transaction description', '2025-04-09', '2025-04-10 06:10:20', '2025-03-29 06:10:20'),
(236, NULL, '972632', 1, 2, 0, 'outbound', 'Parkerchester', 'Sample transaction description', '2025-04-01', '2025-04-08 06:10:20', '2025-04-16 06:10:20'),
(237, NULL, '112767', 1, 2, 0, 'outbound', 'Columbusburgh', 'Sample transaction description', '2025-04-10', '2025-04-09 06:10:20', '2025-04-24 06:10:20'),
(238, NULL, '972632', 1, 3, 0, 'outbound', 'New Zionfort', 'Sample transaction description', '2025-03-29', '2025-03-28 06:10:20', '2025-04-05 06:10:20'),
(239, NULL, '474036', 1, 3, 0, 'inbound', 'Deborahview', 'Sample transaction description', '2025-04-17', '2025-04-07 06:10:20', '2025-04-13 06:10:20'),
(240, NULL, '331672', 1, 3, 0, 'inbound', 'West Aleenside', 'Sample transaction description', '2025-04-15', '2025-04-24 06:10:20', '2025-04-21 06:10:20'),
(241, 'IN-680E2CBC24D5D', '503539', 1, 2, 1, 'inbound', 'Port Silasfort', 'Sample transaction description', '2025-04-16', '2025-04-17 06:10:20', '2025-04-24 06:10:20'),
(242, 'OUT-680E2CBC2544E', '112767', 1, 2, 1, 'outbound', 'Gutkowskimouth', 'Sample transaction description', '2025-04-13', '2025-04-10 06:10:20', '2025-04-22 06:10:20'),
(243, 'IN-680E2CBC25BC4', '561975', 1, 1, 1, 'inbound', 'Champlintown', 'Sample transaction description', '2025-03-30', '2025-04-15 06:10:20', '2025-04-09 06:10:20'),
(244, 'OUT-680E2CBC2626E', '163443', 1, 3, 1, 'outbound', 'Hammesmouth', 'Sample transaction description', '2025-04-06', '2025-04-17 06:10:20', '2025-04-03 06:10:20'),
(245, 'IN-680E2CBC2691C', '163443', 1, 3, 1, 'inbound', 'Reynoldsport', 'Sample transaction description', '2025-04-05', '2025-04-22 06:10:20', '2025-04-07 06:10:20'),
(246, NULL, '356021', 1, 3, 0, 'inbound', 'Lake Christystad', 'Sample transaction description', '2025-03-30', '2025-04-13 06:10:20', '2025-03-29 06:10:20'),
(247, NULL, '205574', 1, 1, 0, 'inbound', 'Ulisesborough', 'Sample transaction description', '2025-04-06', '2025-04-20 06:10:20', '2025-04-05 06:10:20'),
(248, NULL, '893444', 1, 2, 0, 'inbound', 'Brakusmouth', 'Sample transaction description', '2025-04-21', '2025-04-17 06:10:20', '2025-04-15 06:10:20'),
(249, 'OUT-680E2CBC28D6B', '881881', 1, 1, 1, 'outbound', 'West Jessymouth', 'Sample transaction description', '2025-04-17', '2025-04-04 06:10:20', '2025-04-06 06:10:20'),
(250, 'OUT-680E2CBC294C2', '893444', 1, 2, 1, 'outbound', 'East Stanley', 'Sample transaction description', '2025-04-24', '2025-04-07 06:10:20', '2025-03-30 06:10:20'),
(251, 'IN-680E2CBC29BB8', '503539', 1, 3, 1, 'inbound', 'Port Aniya', 'Sample transaction description', '2025-04-21', '2025-03-28 06:10:20', '2025-04-14 06:10:20'),
(252, 'IN-680E2CBC2A292', '972632', 1, 2, 1, 'inbound', 'Julianmouth', 'Sample transaction description', '2025-04-11', '2025-04-26 06:10:20', '2025-04-20 06:10:20'),
(253, NULL, '761588', 1, 1, 0, 'inbound', 'Port Noe', 'Sample transaction description', '2025-04-19', '2025-04-18 06:10:20', '2025-04-03 06:10:20'),
(254, 'OUT-680E2CBC2AF8E', '972632', 1, 2, 1, 'outbound', 'Julienfurt', 'Sample transaction description', '2025-04-11', '2025-04-11 06:10:20', '2025-04-01 06:10:20'),
(255, 'IN-680E2CBC2B75E', '318896', 1, 2, 1, 'inbound', 'Jastton', 'Sample transaction description', '2025-04-07', '2025-03-31 06:10:20', '2025-04-06 06:10:20'),
(256, 'OUT-680E2CBC2BED7', '742466', 1, 1, 1, 'outbound', 'East Carolyneborough', 'Sample transaction description', '2025-03-31', '2025-04-07 06:10:20', '2025-04-05 06:10:20'),
(257, 'IN-680E2CBC2C702', '331672', 1, 1, 1, 'inbound', 'Lake Jacquelyn', 'Sample transaction description', '2025-03-28', '2025-04-12 06:10:20', '2025-04-03 06:10:20'),
(258, 'IN-680E2CBC2CF69', '112767', 1, 2, 1, 'inbound', 'Lake Wilhelmshire', 'Sample transaction description', '2025-04-08', '2025-04-01 06:10:20', '2025-04-24 06:10:20'),
(259, 'IN-680E2CBC2DA8B', '471197', 1, 1, 1, 'inbound', 'Lake Jakob', 'Sample transaction description', '2025-04-14', '2025-04-21 06:10:20', '2025-04-07 06:10:20'),
(260, 'OUT-680E2CBC2E1F3', '503539', 1, 3, 1, 'outbound', 'North Elyse', 'Sample transaction description', '2025-04-13', '2025-04-11 06:10:20', '2025-04-05 06:10:20'),
(261, NULL, '945041', 1, 1, 0, 'outbound', 'New Eileen', 'Sample transaction description', '2025-04-11', '2025-04-21 06:10:20', '2025-03-31 06:10:20'),
(262, NULL, '503539', 1, 3, 0, 'inbound', 'Lauriehaven', 'Sample transaction description', '2025-04-14', '2025-04-12 06:10:20', '2025-04-06 06:10:20'),
(263, 'OUT-680E2CBC2F6CF', '474036', 1, 2, 1, 'outbound', 'South Sincere', 'Sample transaction description', '2025-04-08', '2025-04-03 06:10:20', '2025-04-09 06:10:20'),
(264, 'OUT-680E2CBC2FEC9', '763247', 1, 2, 1, 'outbound', 'West Asa', 'Sample transaction description', '2025-04-17', '2025-03-31 06:10:20', '2025-04-20 06:10:20'),
(265, 'OUT-680E2CBC30852', '815040', 1, 1, 1, 'outbound', 'Terrencechester', 'Sample transaction description', '2025-04-15', '2025-04-01 06:10:20', '2025-04-24 06:10:20'),
(266, 'OUT-680E2CBC31142', '112767', 1, 1, 1, 'outbound', 'Ulicesside', 'Sample transaction description', '2025-03-31', '2025-04-05 06:10:20', '2025-04-09 06:10:20'),
(267, 'OUT-680E2CBC318EF', '503539', 1, 1, 1, 'outbound', 'South Maidaview', 'Sample transaction description', '2025-04-17', '2025-04-02 06:10:20', '2025-04-04 06:10:20'),
(268, NULL, '318896', 1, 2, 0, 'outbound', 'Ameliaville', 'Sample transaction description', '2025-03-29', '2025-04-13 06:10:20', '2025-04-11 06:10:20'),
(269, NULL, '282303', 1, 2, 0, 'inbound', 'Sipesborough', 'Sample transaction description', '2025-04-10', '2025-04-20 06:10:20', '2025-03-30 06:10:20'),
(270, NULL, '474036', 1, 1, 0, 'inbound', 'Rueckerside', 'Sample transaction description', '2025-03-29', '2025-04-16 06:10:20', '2025-04-15 06:10:20'),
(271, NULL, '972632', 1, 3, 0, 'inbound', 'Pfefferbury', 'Sample transaction description', '2025-04-11', '2025-04-24 06:10:20', '2025-04-24 06:10:20'),
(272, 'OUT-680E2CBC33FE4', '282303', 1, 3, 1, 'outbound', 'North Troy', 'Sample transaction description', '2025-04-10', '2025-04-23 06:10:20', '2025-04-24 06:10:20'),
(273, NULL, '503539', 1, 1, 0, 'inbound', 'Jessicashire', 'Sample transaction description', '2025-04-06', '2025-04-17 06:10:20', '2025-04-01 06:10:20'),
(274, 'OUT-680E2CBC352E6', '331672', 1, 1, 1, 'outbound', 'Port Johnsonfurt', 'Sample transaction description', '2025-04-15', '2025-04-18 06:10:20', '2025-04-11 06:10:20'),
(275, 'IN-680E2CBC35A95', '318896', 1, 2, 1, 'inbound', 'Kozeyfurt', 'Sample transaction description', '2025-04-12', '2025-04-19 06:10:20', '2025-03-28 06:10:20'),
(276, 'IN-680E2CBC36161', '356021', 1, 3, 1, 'inbound', 'Port Kaitlynshire', 'Sample transaction description', '2025-04-14', '2025-04-15 06:10:20', '2025-04-22 06:10:20'),
(277, 'OUT-680E2CBC36825', '205574', 1, 3, 1, 'outbound', 'Port Justinachester', 'Sample transaction description', '2025-04-17', '2025-04-02 06:10:20', '2025-04-09 06:10:20'),
(278, 'OUT-680E2CBC36F31', '761588', 1, 3, 1, 'outbound', 'Westleymouth', 'Sample transaction description', '2025-04-06', '2025-04-10 06:10:20', '2025-04-20 06:10:20'),
(279, 'IN-680E2CBC37772', '282303', 1, 3, 1, 'inbound', 'Meredithton', 'Sample transaction description', '2025-04-10', '2025-04-02 06:10:20', '2025-04-05 06:10:20'),
(280, 'OUT-680E2CBC37E9E', '203148', 1, 3, 1, 'outbound', 'Addiehaven', 'Sample transaction description', '2025-04-09', '2025-04-17 06:10:20', '2025-04-18 06:10:20'),
(281, NULL, '112767', 1, 1, 0, 'inbound', 'West Eltachester', 'Sample transaction description', '2025-04-13', '2025-04-18 06:10:20', '2025-04-25 06:10:20'),
(282, NULL, '331672', 1, 3, 0, 'inbound', 'East Myrticeburgh', 'Sample transaction description', '2025-03-30', '2025-04-18 06:10:20', '2025-04-03 06:10:20'),
(283, NULL, '503539', 1, 2, 0, 'outbound', 'East Makaylastad', 'Sample transaction description', '2025-04-25', '2025-04-23 06:10:20', '2025-04-19 06:10:20'),
(284, NULL, '331672', 1, 1, 0, 'inbound', 'South Francomouth', 'Sample transaction description', '2025-04-16', '2025-04-10 06:10:20', '2025-04-06 06:10:20'),
(285, NULL, '203148', 1, 1, 0, 'inbound', 'West Laney', 'Sample transaction description', '2025-04-13', '2025-04-08 06:10:20', '2025-03-28 06:10:20'),
(286, 'IN-680E2CBC3AEF2', '112767', 1, 2, 1, 'inbound', 'Minabury', 'Sample transaction description', '2025-03-31', '2025-03-28 06:10:20', '2025-04-23 06:10:20'),
(287, 'IN-680E2CBC3B661', '163443', 1, 1, 1, 'inbound', 'Port Jane', 'Sample transaction description', '2025-04-19', '2025-04-18 06:10:20', '2025-04-23 06:10:20'),
(288, 'OUT-680E2CBC3BE4C', '561975', 1, 1, 1, 'outbound', 'Lake Jeanette', 'Sample transaction description', '2025-03-31', '2025-03-28 06:10:20', '2025-04-22 06:10:20'),
(289, 'IN-680E2CBC3C670', '945041', 1, 1, 1, 'inbound', 'Port Abelardo', 'Sample transaction description', '2025-04-22', '2025-04-03 06:10:20', '2025-04-23 06:10:20'),
(290, 'OUT-680E2CBC3D1C0', '331672', 1, 1, 1, 'outbound', 'Esteltown', 'Sample transaction description', '2025-04-16', '2025-03-31 06:10:20', '2025-03-31 06:10:20'),
(291, NULL, '972632', 1, 2, 0, 'inbound', 'Jaysonland', 'Sample transaction description', '2025-04-08', '2025-04-15 06:10:20', '2025-04-01 06:10:20'),
(292, 'OUT-680E2CBC3DF9D', '318896', 1, 3, 1, 'outbound', 'Dibberthaven', 'Sample transaction description', '2025-04-12', '2025-04-22 06:10:20', '2025-04-11 06:10:20'),
(293, NULL, '474036', 1, 2, 0, 'outbound', 'Prohaskaton', 'Sample transaction description', '2025-04-19', '2025-04-10 06:10:20', '2025-04-13 06:10:20'),
(294, 'IN-680E2CBC3ECCC', '972632', 1, 1, 1, 'inbound', 'South Stefanie', 'Sample transaction description', '2025-04-22', '2025-03-28 06:10:20', '2025-04-14 06:10:20'),
(295, NULL, '282303', 1, 3, 0, 'outbound', 'East Neilfurt', 'Sample transaction description', '2025-04-06', '2025-04-12 06:10:20', '2025-04-13 06:10:20'),
(296, NULL, '761588', 1, 1, 0, 'outbound', 'Opheliaburgh', 'Sample transaction description', '2025-04-18', '2025-04-01 06:10:20', '2025-04-13 06:10:20'),
(297, NULL, '331672', 1, 2, 0, 'outbound', 'Wittingchester', 'Sample transaction description', '2025-04-24', '2025-04-18 06:10:20', '2025-04-20 06:10:20'),
(298, 'OUT-680E2CBC40999', '881881', 1, 3, 1, 'outbound', 'Lake Kristaberg', 'Sample transaction description', '2025-04-02', '2025-04-10 06:10:20', '2025-04-06 06:10:20'),
(299, NULL, '474036', 1, 2, 0, 'outbound', 'Powlowskiport', 'Sample transaction description', '2025-04-06', '2025-04-22 06:10:20', '2025-04-17 06:10:20'),
(300, 'OUT-680E2CBC41E74', '318896', 1, 3, 1, 'outbound', 'South Diamondborough', 'Sample transaction description', '2025-04-21', '2025-04-17 06:10:20', '2025-04-13 06:10:20'),
(301, 'IN-680E2CBC428CF', '945041', 1, 3, 1, 'inbound', 'South Nasir', 'Sample transaction description', '2025-04-19', '2025-04-25 06:10:20', '2025-04-17 06:10:20'),
(302, 'IN-680E2CBC43094', '471197', 1, 1, 1, 'inbound', 'Beckerbury', 'Sample transaction description', '2025-04-11', '2025-03-28 06:10:20', '2025-04-01 06:10:20'),
(303, 'OUT-680E2CBC437AD', '331672', 1, 3, 1, 'outbound', 'Lemketon', 'Sample transaction description', '2025-04-14', '2025-03-28 06:10:20', '2025-04-23 06:10:20'),
(304, NULL, '331672', 1, 3, 0, 'outbound', 'North Jovan', 'Sample transaction description', '2025-04-10', '2025-04-01 06:10:20', '2025-04-05 06:10:20'),
(305, 'IN-680E2CBC44628', '742466', 1, 2, 1, 'inbound', 'North Jalyn', 'Sample transaction description', '2025-04-01', '2025-04-04 06:10:20', '2025-04-03 06:10:20'),
(306, 'OUT-680E2CBC45149', '163443', 1, 1, 1, 'outbound', 'South Miloberg', 'Sample transaction description', '2025-04-14', '2025-04-06 06:10:20', '2025-04-06 06:10:20'),
(307, 'IN-680E2CBC45B30', '112767', 1, 3, 1, 'inbound', 'Wisozkside', 'Sample transaction description', '2025-04-17', '2025-04-21 06:10:20', '2025-04-05 06:10:20'),
(308, 'OUT-680E2CBC465BE', '945041', 1, 2, 1, 'outbound', 'South Verdietown', 'Sample transaction description', '2025-04-07', '2025-04-07 06:10:20', '2025-04-17 06:10:20');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '2025-04-27 06:10:19', '$2y$12$8n74l6w3VS4FHqVHoeQUK.8kNCq1WMZI2jAT7N8akxUZl6gOovv9S', 'WSiGoF1vNA', '2025-04-27 06:10:19', '2025-04-27 06:10:19'),
(2, 'Gymnastiar Ramadhan', 'gymnas@gmail.com', '2025-04-27 06:10:19', '$2y$12$79.s3wg3SNvTrP4yGyTmXeQSv3ZiwQfbZ8Wm8nv3XQZSXwtaFL3tC', 'NwJ5uc6FPY', '2025-04-27 06:10:19', '2025-04-27 06:10:19');

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
-- Indexes for table `goods`
--
ALTER TABLE `goods`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `goods_code_unique` (`code`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transactions_number_unique` (`number`),
  ADD KEY `transactions_user_id_foreign` (`user_id`),
  ADD KEY `transactions_goods_code_foreign` (`goods_code`);

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=309;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_goods_code_foreign` FOREIGN KEY (`goods_code`) REFERENCES `goods` (`code`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
