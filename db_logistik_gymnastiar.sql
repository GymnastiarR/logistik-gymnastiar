-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 27, 2025 at 03:06 PM
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
('01jsvw4xejm0v7ayea9pnkgh47', '737183', 'Lenovo ThinkPad X1 Carbon', 40, 'pcs', NULL, NULL, '2025-04-27 07:59:15', '2025-04-27 07:59:15'),
('01jsvw4xennax064g7xymta1x5', '383855', 'Dell XPS 13', 72, 'pcs', NULL, NULL, '2025-04-27 07:59:15', '2025-04-27 07:59:15'),
('01jsvw4xeq0j404811n38989fw', '417271', 'Apple MacBook Pro 16\"', 58, 'pcs', NULL, NULL, '2025-04-27 07:59:15', '2025-04-27 07:59:15'),
('01jsvw4xesaaxtjzzy78csx8nq', '828571', 'HP Spectre x360', 84, 'pcs', NULL, NULL, '2025-04-27 07:59:15', '2025-04-27 07:59:15'),
('01jsvw4xete75fd9zgrvmswdey', '804992', 'Asus ZenBook 14', 76, 'pcs', NULL, NULL, '2025-04-27 07:59:15', '2025-04-27 07:59:15'),
('01jsvw4xewsywy5ses27x3hw26', '625638', 'Acer Swift 3', 93, 'pcs', NULL, NULL, '2025-04-27 07:59:15', '2025-04-27 07:59:15'),
('01jsvw4xex06mkbwfgrw0p5eqe', '434635', 'Microsoft Surface Laptop 4', 65, 'pcs', NULL, NULL, '2025-04-27 07:59:15', '2025-04-27 07:59:15'),
('01jsvw4xezq6h8x4m3mxsjj39q', '635823', 'Razer Blade Stealth 13', 50, 'pcs', NULL, NULL, '2025-04-27 07:59:15', '2025-04-27 07:59:15'),
('01jsvw4xf1h12eqdf8k74y2nnq', '586001', 'LG Gram 17', 30, 'pcs', NULL, NULL, '2025-04-27 07:59:15', '2025-04-27 07:59:15'),
('01jsvw4xf2stkdr9jpa87jtaah', '298943', 'Samsung Galaxy Book Pro 360', 45, 'pcs', NULL, NULL, '2025-04-27 07:59:15', '2025-04-27 07:59:15'),
('01jsvw4xf4gjadxmy29j8k7cjs', '362191', 'Huawei MateBook X Pro', 55, 'pcs', NULL, NULL, '2025-04-27 07:59:15', '2025-04-27 07:59:15'),
('01jsvw4xf6e8dd2scrfm0nxzpr', '728107', 'Toshiba Dynabook Tecra A50', 80, 'pcs', NULL, NULL, '2025-04-27 07:59:15', '2025-04-27 07:59:15'),
('01jsvw4xf86sjyp17cfqt1yyah', '914528', 'Fujitsu Lifebook U9311X', 70, 'pcs', NULL, NULL, '2025-04-27 07:59:15', '2025-04-27 07:59:15'),
('01jsvw4xf960q6sfabddbp4308', '394402', 'Sony VAIO Z', 60, 'pcs', NULL, NULL, '2025-04-27 07:59:15', '2025-04-27 07:59:15'),
('01jsvw4xfbdje9k1b2pt7pv2d5', '230477', 'MSI Prestige 14', 85, 'pcs', NULL, NULL, '2025-04-27 07:59:15', '2025-04-27 07:59:15'),
('01jsvw4xfcq8cmr7hzzqsf7e8h', '531445', 'Gigabyte Aero 15', 90, 'pcs', NULL, NULL, '2025-04-27 07:59:15', '2025-04-27 07:59:15'),
('01jsvw4xfehbn88fpwp58ay316', '404542', 'Lenovo Yoga 9i', 75, 'pcs', NULL, NULL, '2025-04-27 07:59:15', '2025-04-27 07:59:15'),
('01jsvw4xfgmfxnayw4kx2svmcs', '544612', 'Dell Inspiron 14', 88, 'pcs', NULL, NULL, '2025-04-27 07:59:15', '2025-04-27 07:59:15'),
('01jsvw4xfhz319ce5119mbaqfr', '419004', 'Apple MacBook Air M1', 95, 'pcs', NULL, NULL, '2025-04-27 07:59:15', '2025-04-27 07:59:15'),
('01jsvw4xfkwt9fk8e3dyex677w', '325714', 'HP Envy x360', 78, 'pcs', NULL, NULL, '2025-04-27 07:59:15', '2025-04-27 07:59:15'),
('01jsvw4xfna4jh34vx39jky2fv', '561069', 'Asus ROG Zephyrus G14', 82, 'pcs', NULL, NULL, '2025-04-27 07:59:15', '2025-04-27 07:59:15');

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
(1, NULL, '728107', 1, 1, 0, 'inbound', 'Christiansenmouth', 'Sample transaction description', '2025-04-14', '2025-04-05 07:59:15', '2025-04-01 07:59:15'),
(2, NULL, '404542', 1, 1, 0, 'outbound', 'Kingtown', 'Sample transaction description', '2025-04-07', '2025-04-11 07:59:15', '2025-04-14 07:59:15'),
(3, 'IN-680E46431456B', '728107', 1, 1, 1, 'inbound', 'Kerlukechester', 'Sample transaction description', '2025-04-07', '2025-04-20 07:59:15', '2025-04-17 07:59:15'),
(4, 'IN-680E464314D3D', '561069', 1, 1, 1, 'inbound', 'Estherland', 'Sample transaction description', '2025-04-17', '2025-03-31 07:59:15', '2025-04-05 07:59:15'),
(5, 'OUT-680E4643154E8', '298943', 1, 2, 1, 'outbound', 'Chazberg', 'Sample transaction description', '2025-04-26', '2025-04-13 07:59:15', '2025-04-13 07:59:15'),
(6, 'IN-680E464315D77', '417271', 1, 3, 1, 'inbound', 'West Randal', 'Sample transaction description', '2025-04-01', '2025-04-15 07:59:15', '2025-04-06 07:59:15'),
(7, NULL, '544612', 1, 1, 0, 'inbound', 'Luthermouth', 'Sample transaction description', '2025-04-07', '2025-04-08 07:59:15', '2025-04-19 07:59:15'),
(8, 'IN-680E464316FA9', '419004', 1, 3, 1, 'inbound', 'Trishaburgh', 'Sample transaction description', '2025-04-15', '2025-04-11 07:59:15', '2025-04-06 07:59:15'),
(9, NULL, '362191', 1, 2, 0, 'inbound', 'South Janietown', 'Sample transaction description', '2025-04-19', '2025-04-18 07:59:15', '2025-04-02 07:59:15'),
(10, 'IN-680E464318288', '586001', 1, 2, 1, 'inbound', 'North Hallechester', 'Sample transaction description', '2025-03-28', '2025-04-04 07:59:15', '2025-04-26 07:59:15'),
(11, 'IN-680E464318A6F', '362191', 1, 3, 1, 'inbound', 'Franzberg', 'Sample transaction description', '2025-04-22', '2025-04-24 07:59:15', '2025-04-16 07:59:15'),
(12, NULL, '417271', 1, 3, 0, 'outbound', 'Larkinton', 'Sample transaction description', '2025-04-22', '2025-04-26 07:59:15', '2025-04-13 07:59:15'),
(13, 'IN-680E4643199DF', '434635', 1, 3, 1, 'inbound', 'Americamouth', 'Sample transaction description', '2025-04-15', '2025-04-19 07:59:15', '2025-04-22 07:59:15'),
(14, 'IN-680E46431A250', '544612', 1, 2, 1, 'inbound', 'West Annamaechester', 'Sample transaction description', '2025-04-09', '2025-04-11 07:59:15', '2025-04-16 07:59:15'),
(15, NULL, '625638', 1, 1, 0, 'outbound', 'Lake Jaylenmouth', 'Sample transaction description', '2025-04-09', '2025-04-01 07:59:15', '2025-04-05 07:59:15'),
(16, NULL, '362191', 1, 1, 0, 'inbound', 'Alvertaton', 'Sample transaction description', '2025-04-08', '2025-04-04 07:59:15', '2025-04-23 07:59:15'),
(17, NULL, '728107', 1, 3, 0, 'outbound', 'Lake Lexiville', 'Sample transaction description', '2025-03-29', '2025-04-02 07:59:15', '2025-04-26 07:59:15'),
(18, 'OUT-680E46431C22E', '230477', 1, 1, 1, 'outbound', 'Tomasamouth', 'Sample transaction description', '2025-04-24', '2025-04-07 07:59:15', '2025-04-04 07:59:15'),
(19, NULL, '544612', 1, 1, 0, 'inbound', 'West Edwina', 'Sample transaction description', '2025-04-07', '2025-04-22 07:59:15', '2025-04-10 07:59:15'),
(20, NULL, '298943', 1, 2, 0, 'inbound', 'Olaland', 'Sample transaction description', '2025-04-22', '2025-03-28 07:59:15', '2025-04-10 07:59:15'),
(21, NULL, '586001', 1, 2, 0, 'outbound', 'New Brianaview', 'Sample transaction description', '2025-04-19', '2025-04-20 07:59:15', '2025-03-29 07:59:15'),
(22, 'IN-680E46431E1BF', '404542', 1, 2, 1, 'inbound', 'Joestad', 'Sample transaction description', '2025-04-26', '2025-04-01 07:59:15', '2025-04-11 07:59:15'),
(23, 'OUT-680E46431E9D5', '362191', 1, 3, 1, 'outbound', 'South Stella', 'Sample transaction description', '2025-04-14', '2025-03-28 07:59:15', '2025-04-03 07:59:15'),
(24, NULL, '544612', 1, 1, 0, 'inbound', 'Albertburgh', 'Sample transaction description', '2025-03-31', '2025-04-13 07:59:15', '2025-04-19 07:59:15'),
(25, NULL, '544612', 1, 3, 0, 'outbound', 'Ortizfort', 'Sample transaction description', '2025-04-20', '2025-04-21 07:59:15', '2025-04-16 07:59:15'),
(26, 'IN-680E4643203E3', '394402', 1, 3, 1, 'inbound', 'Brennaport', 'Sample transaction description', '2025-04-20', '2025-04-17 07:59:15', '2025-04-12 07:59:15'),
(27, NULL, '914528', 1, 3, 0, 'outbound', 'South Carrieborough', 'Sample transaction description', '2025-04-02', '2025-04-14 07:59:15', '2025-04-23 07:59:15'),
(28, 'OUT-680E4643213D1', '544612', 1, 3, 1, 'outbound', 'Willyberg', 'Sample transaction description', '2025-04-23', '2025-04-17 07:59:15', '2025-04-26 07:59:15'),
(29, 'IN-680E464321C22', '362191', 1, 3, 1, 'inbound', 'Moiseshaven', 'Sample transaction description', '2025-04-03', '2025-04-01 07:59:15', '2025-04-21 07:59:15'),
(30, 'OUT-680E464322565', '394402', 1, 2, 1, 'outbound', 'Port Kayla', 'Sample transaction description', '2025-04-05', '2025-04-02 07:59:15', '2025-04-01 07:59:15'),
(31, NULL, '298943', 1, 1, 0, 'outbound', 'Port Moniquebury', 'Sample transaction description', '2025-04-20', '2025-04-18 07:59:15', '2025-04-22 07:59:15'),
(32, 'OUT-680E464323302', '914528', 1, 1, 1, 'outbound', 'Port Annabellburgh', 'Sample transaction description', '2025-04-24', '2025-04-18 07:59:15', '2025-04-20 07:59:15'),
(33, NULL, '804992', 1, 1, 0, 'inbound', 'Port Isabellefort', 'Sample transaction description', '2025-03-31', '2025-04-10 07:59:15', '2025-04-14 07:59:15'),
(34, 'OUT-680E464323FF9', '586001', 1, 1, 1, 'outbound', 'Larkinfurt', 'Sample transaction description', '2025-04-04', '2025-04-26 07:59:15', '2025-04-04 07:59:15'),
(35, NULL, '625638', 1, 1, 0, 'inbound', 'East Nashside', 'Sample transaction description', '2025-04-16', '2025-04-13 07:59:15', '2025-04-19 07:59:15'),
(36, NULL, '325714', 1, 3, 0, 'outbound', 'Port Myrtis', 'Sample transaction description', '2025-03-28', '2025-03-30 07:59:15', '2025-04-16 07:59:15'),
(37, NULL, '635823', 1, 3, 0, 'inbound', 'Josieview', 'Sample transaction description', '2025-04-25', '2025-04-18 07:59:15', '2025-04-18 07:59:15'),
(38, 'IN-680E464325D23', '404542', 1, 1, 1, 'inbound', 'South Mozell', 'Sample transaction description', '2025-04-10', '2025-04-06 07:59:15', '2025-03-30 07:59:15'),
(39, NULL, '561069', 1, 2, 0, 'outbound', 'West Myriambury', 'Sample transaction description', '2025-04-12', '2025-04-15 07:59:15', '2025-04-14 07:59:15'),
(40, 'IN-680E464326B34', '804992', 1, 3, 1, 'inbound', 'Port Alexannechester', 'Sample transaction description', '2025-04-19', '2025-04-14 07:59:15', '2025-04-01 07:59:15'),
(41, NULL, '434635', 1, 2, 0, 'outbound', 'Dickinsonmouth', 'Sample transaction description', '2025-04-15', '2025-03-29 07:59:15', '2025-04-01 07:59:15'),
(42, NULL, '298943', 1, 2, 0, 'outbound', 'New Isaiburgh', 'Sample transaction description', '2025-04-06', '2025-04-26 07:59:15', '2025-04-02 07:59:15'),
(43, NULL, '914528', 1, 2, 0, 'inbound', 'Goodwinberg', 'Sample transaction description', '2025-04-10', '2025-04-26 07:59:15', '2025-04-19 07:59:15'),
(44, 'OUT-680E464328938', '394402', 1, 2, 1, 'outbound', 'Lake Dixiemouth', 'Sample transaction description', '2025-03-31', '2025-04-16 07:59:15', '2025-04-03 07:59:15'),
(45, 'IN-680E4643291BC', '828571', 1, 3, 1, 'inbound', 'North Gustburgh', 'Sample transaction description', '2025-04-06', '2025-04-11 07:59:15', '2025-04-04 07:59:15'),
(46, 'OUT-680E4643299F8', '635823', 1, 1, 1, 'outbound', 'Jaedenview', 'Sample transaction description', '2025-03-31', '2025-04-03 07:59:15', '2025-04-10 07:59:15'),
(47, 'OUT-680E46432A292', '914528', 1, 2, 1, 'outbound', 'Mabelton', 'Sample transaction description', '2025-04-17', '2025-04-09 07:59:15', '2025-04-12 07:59:15'),
(48, NULL, '230477', 1, 2, 0, 'inbound', 'Lake Haylie', 'Sample transaction description', '2025-04-18', '2025-03-29 07:59:15', '2025-03-30 07:59:15'),
(49, NULL, '434635', 1, 1, 0, 'inbound', 'West Valentinachester', 'Sample transaction description', '2025-04-05', '2025-04-13 07:59:15', '2025-04-22 07:59:15'),
(50, 'IN-680E46432BB6A', '635823', 1, 1, 1, 'inbound', 'Coltenshire', 'Sample transaction description', '2025-04-06', '2025-03-30 07:59:15', '2025-04-08 07:59:15'),
(51, 'OUT-680E46432C374', '828571', 1, 1, 1, 'outbound', 'Kossmouth', 'Sample transaction description', '2025-04-19', '2025-04-23 07:59:15', '2025-04-14 07:59:15'),
(52, 'OUT-680E46432CA29', '230477', 1, 2, 1, 'outbound', 'Princeville', 'Sample transaction description', '2025-04-06', '2025-03-28 07:59:15', '2025-04-12 07:59:15'),
(53, 'IN-680E46432D0A9', '728107', 1, 2, 1, 'inbound', 'Hahnchester', 'Sample transaction description', '2025-04-19', '2025-04-06 07:59:15', '2025-03-31 07:59:15'),
(54, 'IN-680E46432D827', '325714', 1, 1, 1, 'inbound', 'New Chesley', 'Sample transaction description', '2025-04-10', '2025-04-17 07:59:15', '2025-04-05 07:59:15'),
(55, 'IN-680E46432DFA1', '434635', 1, 3, 1, 'inbound', 'North Petertown', 'Sample transaction description', '2025-04-13', '2025-04-01 07:59:15', '2025-04-14 07:59:15'),
(56, NULL, '419004', 1, 1, 0, 'inbound', 'Stellaville', 'Sample transaction description', '2025-04-18', '2025-03-30 07:59:15', '2025-04-22 07:59:15'),
(57, 'IN-680E46432F391', '325714', 1, 1, 1, 'inbound', 'Erdmanberg', 'Sample transaction description', '2025-04-01', '2025-04-04 07:59:15', '2025-04-07 07:59:15'),
(58, 'IN-680E46432FB91', '625638', 1, 3, 1, 'inbound', 'Lake Jeanfort', 'Sample transaction description', '2025-04-12', '2025-04-21 07:59:15', '2025-04-16 07:59:15'),
(59, 'IN-680E464330529', '298943', 1, 3, 1, 'inbound', 'West Giovanny', 'Sample transaction description', '2025-04-09', '2025-04-25 07:59:15', '2025-04-07 07:59:15'),
(60, NULL, '544612', 1, 2, 0, 'outbound', 'Lillianmouth', 'Sample transaction description', '2025-04-11', '2025-04-25 07:59:15', '2025-04-11 07:59:15'),
(61, 'IN-680E4643315E2', '544612', 1, 2, 1, 'inbound', 'Aubreefort', 'Sample transaction description', '2025-04-25', '2025-04-23 07:59:15', '2025-04-03 07:59:15'),
(62, 'OUT-680E464331D0A', '625638', 1, 3, 1, 'outbound', 'New Joelleville', 'Sample transaction description', '2025-04-03', '2025-04-06 07:59:15', '2025-04-24 07:59:15'),
(63, NULL, '635823', 1, 3, 0, 'outbound', 'Beiermouth', 'Sample transaction description', '2025-04-02', '2025-04-03 07:59:15', '2025-04-22 07:59:15'),
(64, 'OUT-680E464332BA4', '419004', 1, 1, 1, 'outbound', 'West Verda', 'Sample transaction description', '2025-04-02', '2025-04-23 07:59:15', '2025-04-15 07:59:15'),
(65, 'OUT-680E464333373', '728107', 1, 2, 1, 'outbound', 'Mikeborough', 'Sample transaction description', '2025-04-08', '2025-03-29 07:59:15', '2025-04-25 07:59:15'),
(66, NULL, '230477', 1, 2, 0, 'outbound', 'Lake Letaborough', 'Sample transaction description', '2025-04-12', '2025-04-01 07:59:15', '2025-04-11 07:59:15'),
(67, NULL, '531445', 1, 3, 0, 'outbound', 'Demarcusland', 'Sample transaction description', '2025-04-05', '2025-04-11 07:59:15', '2025-04-01 07:59:15'),
(68, NULL, '586001', 1, 2, 0, 'inbound', 'East Odie', 'Sample transaction description', '2025-04-17', '2025-04-11 07:59:15', '2025-04-25 07:59:15'),
(69, 'OUT-680E464335271', '828571', 1, 3, 1, 'outbound', 'Christophemouth', 'Sample transaction description', '2025-04-13', '2025-04-03 07:59:15', '2025-04-07 07:59:15'),
(70, 'IN-680E464335A1E', '635823', 1, 2, 1, 'inbound', 'New Adelashire', 'Sample transaction description', '2025-04-13', '2025-04-14 07:59:15', '2025-03-30 07:59:15'),
(71, 'OUT-680E4643361AC', '531445', 1, 1, 1, 'outbound', 'Mayerthaven', 'Sample transaction description', '2025-04-18', '2025-04-18 07:59:15', '2025-04-13 07:59:15'),
(72, 'IN-680E4643369A8', '298943', 1, 3, 1, 'inbound', 'West Twilaville', 'Sample transaction description', '2025-04-26', '2025-04-12 07:59:15', '2025-04-19 07:59:15'),
(73, NULL, '230477', 1, 1, 0, 'outbound', 'West Riverberg', 'Sample transaction description', '2025-04-14', '2025-04-05 07:59:15', '2025-04-01 07:59:15'),
(74, NULL, '804992', 1, 3, 0, 'inbound', 'Astridside', 'Sample transaction description', '2025-04-24', '2025-04-04 07:59:15', '2025-04-17 07:59:15'),
(75, 'IN-680E464338135', '362191', 1, 2, 1, 'inbound', 'New Bobbie', 'Sample transaction description', '2025-04-08', '2025-04-12 07:59:15', '2025-04-05 07:59:15'),
(76, 'IN-680E46433898B', '394402', 1, 2, 1, 'inbound', 'Schmittfurt', 'Sample transaction description', '2025-04-04', '2025-04-15 07:59:15', '2025-04-23 07:59:15'),
(77, NULL, '417271', 1, 3, 0, 'outbound', 'Groverbury', 'Sample transaction description', '2025-04-26', '2025-03-29 07:59:15', '2025-04-06 07:59:15'),
(78, NULL, '230477', 1, 3, 0, 'outbound', 'South Bert', 'Sample transaction description', '2025-04-13', '2025-04-09 07:59:15', '2025-04-05 07:59:15'),
(79, NULL, '419004', 1, 3, 0, 'inbound', 'Lake Veronahaven', 'Sample transaction description', '2025-04-02', '2025-03-31 07:59:15', '2025-04-07 07:59:15'),
(80, 'OUT-680E46433A875', '419004', 1, 3, 1, 'outbound', 'South Ima', 'Sample transaction description', '2025-04-02', '2025-03-28 07:59:15', '2025-04-01 07:59:15'),
(81, NULL, '404542', 1, 1, 0, 'inbound', 'Marshallmouth', 'Sample transaction description', '2025-04-06', '2025-04-08 07:59:15', '2025-04-18 07:59:15'),
(82, NULL, '298943', 1, 3, 0, 'outbound', 'New Wyman', 'Sample transaction description', '2025-04-17', '2025-04-25 07:59:15', '2025-04-01 07:59:15'),
(83, NULL, '804992', 1, 3, 0, 'outbound', 'North Adrienmouth', 'Sample transaction description', '2025-03-30', '2025-04-22 07:59:15', '2025-04-19 07:59:15'),
(84, NULL, '728107', 1, 3, 0, 'outbound', 'New Karlifort', 'Sample transaction description', '2025-04-19', '2025-04-11 07:59:15', '2025-04-03 07:59:15'),
(85, 'OUT-680E46433D18C', '544612', 1, 2, 1, 'outbound', 'Lubowitztown', 'Sample transaction description', '2025-03-28', '2025-04-16 07:59:15', '2025-04-01 07:59:15'),
(86, 'IN-680E46433E9E0', '404542', 1, 1, 1, 'inbound', 'New Trishachester', 'Sample transaction description', '2025-04-24', '2025-04-18 07:59:15', '2025-04-25 07:59:15'),
(87, NULL, '914528', 1, 2, 0, 'inbound', 'South Frankieshire', 'Sample transaction description', '2025-04-13', '2025-04-15 07:59:15', '2025-04-02 07:59:15'),
(88, 'IN-680E46433F7EE', '298943', 1, 1, 1, 'inbound', 'West Rosemarie', 'Sample transaction description', '2025-04-01', '2025-04-24 07:59:15', '2025-03-28 07:59:15'),
(89, 'OUT-680E46433FF91', '635823', 1, 2, 1, 'outbound', 'West Jennifer', 'Sample transaction description', '2025-04-15', '2025-04-15 07:59:15', '2025-04-13 07:59:15'),
(90, NULL, '804992', 1, 1, 0, 'inbound', 'Port Rocioside', 'Sample transaction description', '2025-04-12', '2025-04-01 07:59:15', '2025-04-06 07:59:15'),
(91, NULL, '728107', 1, 1, 0, 'inbound', 'Bartellport', 'Sample transaction description', '2025-04-25', '2025-04-04 07:59:15', '2025-03-29 07:59:15'),
(92, 'IN-680E4643417A5', '394402', 1, 3, 1, 'inbound', 'Rosemariemouth', 'Sample transaction description', '2025-04-21', '2025-04-09 07:59:15', '2025-04-13 07:59:15'),
(93, NULL, '298943', 1, 3, 0, 'outbound', 'Elwinville', 'Sample transaction description', '2025-03-29', '2025-04-16 07:59:15', '2025-04-13 07:59:15'),
(94, NULL, '362191', 1, 2, 0, 'outbound', 'Stiedemannville', 'Sample transaction description', '2025-04-16', '2025-04-15 07:59:15', '2025-04-23 07:59:15'),
(95, NULL, '325714', 1, 1, 0, 'inbound', 'North Ilianaside', 'Sample transaction description', '2025-04-17', '2025-04-24 07:59:15', '2025-04-02 07:59:15'),
(96, NULL, '325714', 1, 1, 0, 'outbound', 'Keeblerhaven', 'Sample transaction description', '2025-04-13', '2025-04-09 07:59:15', '2025-04-14 07:59:15'),
(97, 'IN-680E46434429D', '362191', 1, 1, 1, 'inbound', 'South Logan', 'Sample transaction description', '2025-04-19', '2025-04-08 07:59:15', '2025-04-22 07:59:15'),
(98, 'OUT-680E464344BA4', '383855', 1, 1, 1, 'outbound', 'New Kaleb', 'Sample transaction description', '2025-04-24', '2025-04-11 07:59:15', '2025-04-22 07:59:15'),
(99, NULL, '625638', 1, 1, 0, 'inbound', 'Zboncakberg', 'Sample transaction description', '2025-04-13', '2025-04-08 07:59:15', '2025-04-18 07:59:15'),
(100, NULL, '383855', 1, 3, 0, 'inbound', 'Damianport', 'Sample transaction description', '2025-04-14', '2025-03-30 07:59:15', '2025-04-18 07:59:15'),
(101, 'OUT-680E464346616', '404542', 1, 2, 1, 'outbound', 'Kertzmannhaven', 'Sample transaction description', '2025-04-21', '2025-04-22 07:59:15', '2025-04-05 07:59:15'),
(102, NULL, '298943', 1, 2, 0, 'inbound', 'Alexandriaside', 'Sample transaction description', '2025-03-29', '2025-04-04 07:59:15', '2025-04-05 07:59:15'),
(103, 'OUT-680E4643478F2', '635823', 1, 1, 1, 'outbound', 'Noemieland', 'Sample transaction description', '2025-03-31', '2025-04-05 07:59:15', '2025-04-08 07:59:15'),
(104, 'OUT-680E4643482FF', '728107', 1, 1, 1, 'outbound', 'Kuhnfurt', 'Sample transaction description', '2025-04-07', '2025-04-09 07:59:15', '2025-04-04 07:59:15'),
(105, 'OUT-680E464348BC8', '362191', 1, 3, 1, 'outbound', 'Port Alannashire', 'Sample transaction description', '2025-04-07', '2025-04-12 07:59:15', '2025-04-13 07:59:15'),
(106, 'OUT-680E4643493CF', '394402', 1, 3, 1, 'outbound', 'Ceciliaville', 'Sample transaction description', '2025-04-20', '2025-04-07 07:59:15', '2025-04-13 07:59:15'),
(107, NULL, '383855', 1, 2, 0, 'inbound', 'Larkinland', 'Sample transaction description', '2025-04-08', '2025-04-03 07:59:15', '2025-04-05 07:59:15'),
(108, 'IN-680E46434A03C', '394402', 1, 2, 1, 'inbound', 'Arnulfoberg', 'Sample transaction description', '2025-04-04', '2025-04-01 07:59:15', '2025-04-13 07:59:15'),
(109, 'OUT-680E46434A7B8', '561069', 1, 1, 1, 'outbound', 'West Bethanybury', 'Sample transaction description', '2025-04-15', '2025-04-22 07:59:15', '2025-04-08 07:59:15'),
(110, NULL, '325714', 1, 2, 0, 'outbound', 'Langworthtown', 'Sample transaction description', '2025-04-20', '2025-04-08 07:59:15', '2025-04-01 07:59:15'),
(111, NULL, '586001', 1, 2, 0, 'outbound', 'West Sibylport', 'Sample transaction description', '2025-04-21', '2025-04-21 07:59:15', '2025-04-08 07:59:15'),
(112, NULL, '531445', 1, 3, 0, 'inbound', 'West Melba', 'Sample transaction description', '2025-04-13', '2025-04-07 07:59:15', '2025-04-09 07:59:15'),
(113, 'OUT-680E46434C4A1', '625638', 1, 1, 1, 'outbound', 'New Isacburgh', 'Sample transaction description', '2025-04-03', '2025-03-31 07:59:15', '2025-04-22 07:59:15'),
(114, NULL, '230477', 1, 1, 0, 'inbound', 'Raeganfort', 'Sample transaction description', '2025-04-24', '2025-03-31 07:59:15', '2025-04-13 07:59:15'),
(115, NULL, '914528', 1, 1, 0, 'inbound', 'Manuelaview', 'Sample transaction description', '2025-04-11', '2025-04-09 07:59:15', '2025-04-02 07:59:15'),
(116, 'OUT-680E46434DCBA', '417271', 1, 1, 1, 'outbound', 'East Matildeview', 'Sample transaction description', '2025-04-01', '2025-04-17 07:59:15', '2025-04-21 07:59:15'),
(117, NULL, '737183', 1, 1, 0, 'inbound', 'East Lurline', 'Sample transaction description', '2025-04-09', '2025-04-01 07:59:15', '2025-04-04 07:59:15'),
(118, 'OUT-680E46434EC2B', '531445', 1, 2, 1, 'outbound', 'Kaneville', 'Sample transaction description', '2025-04-14', '2025-04-10 07:59:15', '2025-04-25 07:59:15'),
(119, NULL, '914528', 1, 2, 0, 'outbound', 'Batzburgh', 'Sample transaction description', '2025-04-12', '2025-04-09 07:59:15', '2025-04-09 07:59:15'),
(120, NULL, '828571', 1, 3, 0, 'inbound', 'Port Kade', 'Sample transaction description', '2025-04-25', '2025-04-13 07:59:15', '2025-04-19 07:59:15'),
(121, NULL, '635823', 1, 2, 0, 'outbound', 'Farrelltown', 'Sample transaction description', '2025-03-31', '2025-04-04 07:59:15', '2025-03-29 07:59:15'),
(122, 'OUT-680E464350A54', '728107', 1, 1, 1, 'outbound', 'West Prince', 'Sample transaction description', '2025-04-20', '2025-04-15 07:59:15', '2025-04-03 07:59:15'),
(123, 'IN-680E46435121C', '383855', 1, 3, 1, 'inbound', 'Hyattbury', 'Sample transaction description', '2025-04-18', '2025-04-15 07:59:15', '2025-04-04 07:59:15'),
(124, NULL, '728107', 1, 2, 0, 'inbound', 'West Glennie', 'Sample transaction description', '2025-04-20', '2025-04-07 07:59:15', '2025-04-22 07:59:15'),
(125, 'IN-680E464351F51', '325714', 1, 3, 1, 'inbound', 'Germaineside', 'Sample transaction description', '2025-04-25', '2025-04-02 07:59:15', '2025-03-30 07:59:15'),
(126, NULL, '728107', 1, 2, 0, 'inbound', 'Lennyhaven', 'Sample transaction description', '2025-04-21', '2025-04-11 07:59:15', '2025-04-09 07:59:15'),
(127, NULL, '635823', 1, 1, 0, 'outbound', 'East Ali', 'Sample transaction description', '2025-04-24', '2025-04-19 07:59:15', '2025-04-16 07:59:15'),
(128, NULL, '728107', 1, 3, 0, 'inbound', 'North Reymundotown', 'Sample transaction description', '2025-04-22', '2025-04-06 07:59:15', '2025-04-18 07:59:15'),
(129, 'IN-680E464353990', '561069', 1, 2, 1, 'inbound', 'New Geovanny', 'Sample transaction description', '2025-04-19', '2025-04-21 07:59:15', '2025-04-26 07:59:15'),
(130, 'IN-680E464354193', '230477', 1, 1, 1, 'inbound', 'East Ashley', 'Sample transaction description', '2025-04-02', '2025-04-25 07:59:15', '2025-04-10 07:59:15'),
(131, NULL, '728107', 1, 3, 0, 'inbound', 'New Jazlynchester', 'Sample transaction description', '2025-04-09', '2025-04-11 07:59:15', '2025-04-25 07:59:15'),
(132, NULL, '635823', 1, 1, 0, 'inbound', 'Satterfieldside', 'Sample transaction description', '2025-04-17', '2025-04-07 07:59:15', '2025-04-11 07:59:15'),
(133, NULL, '383855', 1, 1, 0, 'inbound', 'East Yasminstad', 'Sample transaction description', '2025-03-28', '2025-04-11 07:59:15', '2025-04-08 07:59:15'),
(134, NULL, '298943', 1, 2, 0, 'outbound', 'New Carrie', 'Sample transaction description', '2025-03-29', '2025-04-12 07:59:15', '2025-04-02 07:59:15'),
(135, 'OUT-680E464356A04', '404542', 1, 3, 1, 'outbound', 'South Aryannachester', 'Sample transaction description', '2025-04-14', '2025-04-02 07:59:15', '2025-04-25 07:59:15'),
(136, 'IN-680E46435718C', '383855', 1, 1, 1, 'inbound', 'Trantowborough', 'Sample transaction description', '2025-04-05', '2025-04-14 07:59:15', '2025-04-19 07:59:15'),
(137, 'IN-680E464357D5D', '383855', 1, 2, 1, 'inbound', 'Lake Effie', 'Sample transaction description', '2025-04-25', '2025-03-29 07:59:15', '2025-04-25 07:59:15'),
(138, 'OUT-680E46435856C', '230477', 1, 2, 1, 'outbound', 'North Anderson', 'Sample transaction description', '2025-04-11', '2025-04-15 07:59:15', '2025-04-23 07:59:15'),
(139, NULL, '325714', 1, 3, 0, 'outbound', 'North Destini', 'Sample transaction description', '2025-04-26', '2025-04-03 07:59:15', '2025-04-11 07:59:15'),
(140, 'OUT-680E46435958F', '828571', 1, 3, 1, 'outbound', 'West Royce', 'Sample transaction description', '2025-04-10', '2025-04-19 07:59:15', '2025-04-21 07:59:15'),
(141, NULL, '728107', 1, 2, 0, 'outbound', 'Ivamouth', 'Sample transaction description', '2025-04-10', '2025-04-25 07:59:15', '2025-04-12 07:59:15'),
(142, NULL, '914528', 1, 3, 0, 'inbound', 'East Vincenzoborough', 'Sample transaction description', '2025-04-04', '2025-04-18 07:59:15', '2025-04-26 07:59:15'),
(143, NULL, '804992', 1, 2, 0, 'outbound', 'West Aracelyshire', 'Sample transaction description', '2025-04-17', '2025-04-02 07:59:15', '2025-04-11 07:59:15'),
(144, NULL, '728107', 1, 3, 0, 'outbound', 'New Jeanneton', 'Sample transaction description', '2025-04-24', '2025-04-26 07:59:15', '2025-04-21 07:59:15'),
(145, 'IN-680E46435BDB5', '383855', 1, 2, 1, 'inbound', 'Port Amiya', 'Sample transaction description', '2025-04-03', '2025-04-16 07:59:15', '2025-04-02 07:59:15'),
(146, NULL, '544612', 1, 2, 0, 'outbound', 'Lynchside', 'Sample transaction description', '2025-04-16', '2025-04-01 07:59:15', '2025-04-18 07:59:15'),
(147, NULL, '561069', 1, 3, 0, 'inbound', 'Cristobalside', 'Sample transaction description', '2025-03-30', '2025-04-12 07:59:15', '2025-04-17 07:59:15'),
(148, 'IN-680E46435D47C', '586001', 1, 1, 1, 'inbound', 'Lake Matilda', 'Sample transaction description', '2025-03-28', '2025-04-05 07:59:15', '2025-04-20 07:59:15'),
(149, NULL, '804992', 1, 3, 0, 'outbound', 'Schmelermouth', 'Sample transaction description', '2025-03-29', '2025-04-20 07:59:15', '2025-04-17 07:59:15'),
(150, NULL, '419004', 1, 1, 0, 'outbound', 'South Tomas', 'Sample transaction description', '2025-04-23', '2025-04-13 07:59:15', '2025-04-10 07:59:15'),
(151, 'OUT-680E46435EDEF', '728107', 1, 1, 1, 'outbound', 'Fridabury', 'Sample transaction description', '2025-04-08', '2025-04-01 07:59:15', '2025-04-26 07:59:15'),
(152, NULL, '625638', 1, 2, 0, 'outbound', 'Lake Kiera', 'Sample transaction description', '2025-04-23', '2025-04-05 07:59:15', '2025-04-01 07:59:15'),
(153, NULL, '394402', 1, 1, 0, 'outbound', 'Ginomouth', 'Sample transaction description', '2025-04-07', '2025-04-21 07:59:15', '2025-04-16 07:59:15'),
(154, 'OUT-680E4643602FF', '544612', 1, 1, 1, 'outbound', 'New Annabelle', 'Sample transaction description', '2025-04-09', '2025-04-21 07:59:15', '2025-03-30 07:59:15'),
(155, NULL, '804992', 1, 2, 0, 'outbound', 'Baumbachbury', 'Sample transaction description', '2025-04-20', '2025-03-30 07:59:15', '2025-04-26 07:59:15'),
(156, 'OUT-680E464361208', '404542', 1, 2, 1, 'outbound', 'Hegmannville', 'Sample transaction description', '2025-04-10', '2025-04-03 07:59:15', '2025-03-31 07:59:15'),
(157, 'IN-680E4643618F1', '434635', 1, 1, 1, 'inbound', 'Deltaton', 'Sample transaction description', '2025-04-20', '2025-04-07 07:59:15', '2025-03-30 07:59:15'),
(158, 'IN-680E464361FF8', '728107', 1, 3, 1, 'inbound', 'New Clemmie', 'Sample transaction description', '2025-04-10', '2025-04-18 07:59:15', '2025-04-16 07:59:15'),
(159, NULL, '828571', 1, 2, 0, 'inbound', 'West Vedafurt', 'Sample transaction description', '2025-04-23', '2025-04-20 07:59:15', '2025-04-10 07:59:15'),
(160, NULL, '828571', 1, 2, 0, 'outbound', 'Eldoraton', 'Sample transaction description', '2025-04-13', '2025-04-22 07:59:15', '2025-04-01 07:59:15'),
(161, 'IN-680E46436384E', '419004', 1, 1, 1, 'inbound', 'Wunschmouth', 'Sample transaction description', '2025-04-15', '2025-03-29 07:59:15', '2025-04-25 07:59:15'),
(162, NULL, '586001', 1, 3, 0, 'inbound', 'Balistrerihaven', 'Sample transaction description', '2025-04-01', '2025-04-26 07:59:15', '2025-03-28 07:59:15'),
(163, NULL, '419004', 1, 2, 0, 'outbound', 'West Charity', 'Sample transaction description', '2025-04-10', '2025-03-28 07:59:15', '2025-04-23 07:59:15'),
(164, NULL, '325714', 1, 2, 0, 'outbound', 'Lake Kaylah', 'Sample transaction description', '2025-04-12', '2025-04-03 07:59:15', '2025-04-04 07:59:15'),
(165, NULL, '230477', 1, 2, 0, 'inbound', 'Anthonyshire', 'Sample transaction description', '2025-04-21', '2025-04-08 07:59:15', '2025-04-20 07:59:15'),
(166, 'IN-680E464366105', '828571', 1, 3, 1, 'inbound', 'Cortezmouth', 'Sample transaction description', '2025-04-08', '2025-04-09 07:59:15', '2025-04-23 07:59:15'),
(167, 'IN-680E4643669B3', '531445', 1, 1, 1, 'inbound', 'Bayerport', 'Sample transaction description', '2025-04-13', '2025-04-12 07:59:15', '2025-04-19 07:59:15'),
(168, 'OUT-680E4643671BA', '362191', 1, 1, 1, 'outbound', 'East Aimee', 'Sample transaction description', '2025-04-20', '2025-04-25 07:59:15', '2025-04-07 07:59:15'),
(169, NULL, '625638', 1, 2, 0, 'outbound', 'Port Wendell', 'Sample transaction description', '2025-04-24', '2025-04-01 07:59:15', '2025-04-04 07:59:15'),
(170, NULL, '230477', 1, 3, 0, 'outbound', 'West Moniquefurt', 'Sample transaction description', '2025-04-07', '2025-04-12 07:59:15', '2025-04-22 07:59:15'),
(171, NULL, '625638', 1, 2, 0, 'inbound', 'Arlenetown', 'Sample transaction description', '2025-04-23', '2025-04-08 07:59:15', '2025-04-01 07:59:15'),
(172, 'OUT-680E464368ECB', '325714', 1, 1, 1, 'outbound', 'Lake Berneiceburgh', 'Sample transaction description', '2025-04-24', '2025-04-07 07:59:15', '2025-04-13 07:59:15'),
(173, 'IN-680E4643695FA', '383855', 1, 1, 1, 'inbound', 'McKenzieborough', 'Sample transaction description', '2025-04-13', '2025-04-03 07:59:15', '2025-04-02 07:59:15'),
(174, 'OUT-680E464369CD5', '362191', 1, 2, 1, 'outbound', 'Kelsieport', 'Sample transaction description', '2025-04-10', '2025-04-11 07:59:15', '2025-03-29 07:59:15'),
(175, NULL, '828571', 1, 3, 0, 'inbound', 'South Elsa', 'Sample transaction description', '2025-04-01', '2025-04-25 07:59:15', '2025-04-05 07:59:15'),
(176, 'OUT-680E46436ABBA', '531445', 1, 1, 1, 'outbound', 'East Sonyaview', 'Sample transaction description', '2025-04-26', '2025-04-05 07:59:15', '2025-04-25 07:59:15'),
(177, NULL, '383855', 1, 2, 0, 'outbound', 'Lake Rexshire', 'Sample transaction description', '2025-04-05', '2025-04-18 07:59:15', '2025-04-14 07:59:15'),
(178, NULL, '635823', 1, 2, 0, 'inbound', 'Mariloutown', 'Sample transaction description', '2025-04-05', '2025-04-06 07:59:15', '2025-04-24 07:59:15'),
(179, NULL, '828571', 1, 1, 0, 'outbound', 'East Joaquinmouth', 'Sample transaction description', '2025-04-05', '2025-04-24 07:59:15', '2025-04-12 07:59:15'),
(180, 'IN-680E46436C87F', '635823', 1, 2, 1, 'inbound', 'Lake Marioville', 'Sample transaction description', '2025-04-22', '2025-03-28 07:59:15', '2025-04-14 07:59:15'),
(181, 'OUT-680E46436CFD9', '914528', 1, 3, 1, 'outbound', 'Kuhnport', 'Sample transaction description', '2025-04-12', '2025-04-04 07:59:15', '2025-04-23 07:59:15'),
(182, 'IN-680E46436D70E', '804992', 1, 1, 1, 'inbound', 'Moseston', 'Sample transaction description', '2025-04-20', '2025-04-21 07:59:15', '2025-04-09 07:59:15'),
(183, 'IN-680E46436DEAE', '561069', 1, 3, 1, 'inbound', 'New Brandtmouth', 'Sample transaction description', '2025-03-30', '2025-04-13 07:59:15', '2025-04-25 07:59:15'),
(184, NULL, '914528', 1, 2, 0, 'inbound', 'Cesarmouth', 'Sample transaction description', '2025-03-29', '2025-04-13 07:59:15', '2025-04-11 07:59:15'),
(185, 'IN-680E46436ED68', '325714', 1, 2, 1, 'inbound', 'Bradyton', 'Sample transaction description', '2025-04-20', '2025-04-12 07:59:15', '2025-04-07 07:59:15'),
(186, 'OUT-680E46436F49A', '635823', 1, 2, 1, 'outbound', 'Kemmerborough', 'Sample transaction description', '2025-04-19', '2025-04-15 07:59:15', '2025-03-30 07:59:15'),
(187, 'IN-680E46436FB6F', '804992', 1, 2, 1, 'inbound', 'Bartellbury', 'Sample transaction description', '2025-04-17', '2025-04-22 07:59:15', '2025-04-06 07:59:15'),
(188, 'OUT-680E4643702D9', '383855', 1, 3, 1, 'outbound', 'East Alex', 'Sample transaction description', '2025-03-30', '2025-03-28 07:59:15', '2025-04-15 07:59:15'),
(189, 'IN-680E464370A66', '728107', 1, 2, 1, 'inbound', 'South Wavahaven', 'Sample transaction description', '2025-04-03', '2025-04-22 07:59:15', '2025-04-23 07:59:15'),
(190, NULL, '419004', 1, 1, 0, 'outbound', 'Fredatown', 'Sample transaction description', '2025-04-23', '2025-04-24 07:59:15', '2025-04-16 07:59:15'),
(191, NULL, '625638', 1, 1, 0, 'outbound', 'Runolfsdottirville', 'Sample transaction description', '2025-04-10', '2025-04-01 07:59:15', '2025-03-31 07:59:15'),
(192, 'OUT-680E46437202B', '914528', 1, 3, 1, 'outbound', 'East Amaya', 'Sample transaction description', '2025-04-03', '2025-04-13 07:59:15', '2025-04-04 07:59:15'),
(193, NULL, '728107', 1, 2, 0, 'inbound', 'East Traceville', 'Sample transaction description', '2025-04-22', '2025-03-29 07:59:15', '2025-04-11 07:59:15'),
(194, 'IN-680E464372E58', '434635', 1, 1, 1, 'inbound', 'Lake Adrianahaven', 'Sample transaction description', '2025-04-16', '2025-04-23 07:59:15', '2025-04-13 07:59:15'),
(195, NULL, '737183', 1, 1, 0, 'inbound', 'West Mathildefurt', 'Sample transaction description', '2025-04-12', '2025-03-29 07:59:15', '2025-03-28 07:59:15'),
(196, 'IN-680E464373EF9', '383855', 1, 2, 1, 'inbound', 'Berthachester', 'Sample transaction description', '2025-04-25', '2025-04-05 07:59:15', '2025-04-04 07:59:15'),
(197, NULL, '404542', 1, 1, 0, 'outbound', 'Carterfurt', 'Sample transaction description', '2025-03-30', '2025-04-08 07:59:15', '2025-04-23 07:59:15'),
(198, 'IN-680E464375021', '298943', 1, 2, 1, 'inbound', 'North Ida', 'Sample transaction description', '2025-04-07', '2025-04-09 07:59:15', '2025-04-01 07:59:15'),
(199, NULL, '417271', 1, 1, 0, 'outbound', 'South Ryanshire', 'Sample transaction description', '2025-03-31', '2025-04-20 07:59:15', '2025-04-17 07:59:15'),
(200, 'OUT-680E464375F90', '737183', 1, 1, 1, 'outbound', 'North Glenda', 'Sample transaction description', '2025-04-17', '2025-04-15 07:59:15', '2025-04-16 07:59:15'),
(201, 'OUT-680E464376675', '561069', 1, 1, 1, 'outbound', 'North Haliefort', 'Sample transaction description', '2025-03-29', '2025-04-07 07:59:15', '2025-04-12 07:59:15'),
(202, NULL, '914528', 1, 1, 0, 'inbound', 'Krajcikbury', 'Sample transaction description', '2025-04-11', '2025-04-20 07:59:15', '2025-04-24 07:59:15'),
(203, 'OUT-680E464377440', '737183', 1, 3, 1, 'outbound', 'West Eliane', 'Sample transaction description', '2025-04-19', '2025-04-03 07:59:15', '2025-04-10 07:59:15'),
(204, 'IN-680E464377DFC', '544612', 1, 1, 1, 'inbound', 'Port Vincent', 'Sample transaction description', '2025-04-14', '2025-04-10 07:59:15', '2025-04-04 07:59:15'),
(205, NULL, '728107', 1, 1, 0, 'inbound', 'Bodemouth', 'Sample transaction description', '2025-04-05', '2025-04-21 07:59:15', '2025-04-24 07:59:15'),
(206, 'IN-680E464378C17', '586001', 1, 1, 1, 'inbound', 'Lake Tarynberg', 'Sample transaction description', '2025-04-15', '2025-04-06 07:59:15', '2025-04-03 07:59:15'),
(207, 'IN-680E4643793F3', '586001', 1, 2, 1, 'inbound', 'West Coby', 'Sample transaction description', '2025-04-09', '2025-04-26 07:59:15', '2025-04-08 07:59:15'),
(208, NULL, '325714', 1, 3, 0, 'outbound', 'Clementinemouth', 'Sample transaction description', '2025-04-04', '2025-04-24 07:59:15', '2025-04-16 07:59:15'),
(209, 'IN-680E46437A4C3', '383855', 1, 3, 1, 'inbound', 'Kodyhaven', 'Sample transaction description', '2025-04-10', '2025-04-20 07:59:15', '2025-04-09 07:59:15'),
(210, 'OUT-680E46437ADF6', '417271', 1, 1, 1, 'outbound', 'North Winifred', 'Sample transaction description', '2025-04-13', '2025-03-29 07:59:15', '2025-04-19 07:59:15'),
(211, NULL, '914528', 1, 3, 0, 'outbound', 'Columbusburgh', 'Sample transaction description', '2025-03-28', '2025-04-08 07:59:15', '2025-03-30 07:59:15'),
(212, 'IN-680E46437BFA4', '383855', 1, 1, 1, 'inbound', 'West Kearaport', 'Sample transaction description', '2025-04-04', '2025-04-18 07:59:15', '2025-04-01 07:59:15'),
(213, 'IN-680E46437C7F6', '325714', 1, 2, 1, 'inbound', 'Wizaside', 'Sample transaction description', '2025-04-12', '2025-04-03 07:59:15', '2025-04-08 07:59:15'),
(214, 'OUT-680E46437D03E', '298943', 1, 2, 1, 'outbound', 'Quigleystad', 'Sample transaction description', '2025-04-16', '2025-04-10 07:59:15', '2025-04-21 07:59:15'),
(215, NULL, '404542', 1, 3, 0, 'outbound', 'West Lillian', 'Sample transaction description', '2025-04-15', '2025-04-23 07:59:15', '2025-03-29 07:59:15'),
(216, 'IN-680E46437E0E5', '914528', 1, 1, 1, 'inbound', 'McLaughlinshire', 'Sample transaction description', '2025-04-17', '2025-04-22 07:59:15', '2025-04-03 07:59:15'),
(217, 'OUT-680E46437EA87', '404542', 1, 3, 1, 'outbound', 'Larkinfurt', 'Sample transaction description', '2025-04-13', '2025-04-20 07:59:15', '2025-04-04 07:59:15'),
(218, NULL, '383855', 1, 3, 0, 'inbound', 'South Rickiehaven', 'Sample transaction description', '2025-04-20', '2025-03-31 07:59:15', '2025-04-06 07:59:15'),
(219, NULL, '434635', 1, 3, 0, 'outbound', 'Port Shaina', 'Sample transaction description', '2025-04-04', '2025-04-04 07:59:15', '2025-04-21 07:59:15'),
(220, NULL, '362191', 1, 3, 0, 'outbound', 'South Augustusborough', 'Sample transaction description', '2025-03-28', '2025-04-12 07:59:15', '2025-04-06 07:59:15'),
(221, NULL, '561069', 1, 1, 0, 'inbound', 'Metzchester', 'Sample transaction description', '2025-03-28', '2025-04-09 07:59:15', '2025-03-28 07:59:15'),
(222, NULL, '362191', 1, 3, 0, 'inbound', 'Jamalmouth', 'Sample transaction description', '2025-04-20', '2025-04-11 07:59:15', '2025-04-07 07:59:15'),
(223, 'OUT-680E464381E69', '394402', 1, 2, 1, 'outbound', 'Robinside', 'Sample transaction description', '2025-04-19', '2025-04-10 07:59:15', '2025-04-17 07:59:15'),
(224, NULL, '394402', 1, 3, 0, 'inbound', 'Ransombury', 'Sample transaction description', '2025-04-05', '2025-03-28 07:59:15', '2025-04-19 07:59:15'),
(225, NULL, '804992', 1, 1, 0, 'inbound', 'New Julesmouth', 'Sample transaction description', '2025-04-05', '2025-04-10 07:59:15', '2025-03-31 07:59:15'),
(226, 'OUT-680E46438384D', '625638', 1, 3, 1, 'outbound', 'New Jedidiahton', 'Sample transaction description', '2025-04-07', '2025-04-19 07:59:15', '2025-04-15 07:59:15'),
(227, NULL, '383855', 1, 2, 0, 'inbound', 'Hassanville', 'Sample transaction description', '2025-04-20', '2025-04-17 07:59:15', '2025-04-10 07:59:15'),
(228, 'IN-680E464384AE1', '544612', 1, 3, 1, 'inbound', 'South Reeseville', 'Sample transaction description', '2025-04-01', '2025-04-20 07:59:15', '2025-04-20 07:59:15'),
(229, 'OUT-680E464385392', '417271', 1, 3, 1, 'outbound', 'East Ethanbury', 'Sample transaction description', '2025-04-05', '2025-04-02 07:59:15', '2025-03-28 07:59:15'),
(230, 'OUT-680E464385CED', '394402', 1, 2, 1, 'outbound', 'Dorafurt', 'Sample transaction description', '2025-04-17', '2025-04-10 07:59:15', '2025-04-23 07:59:15'),
(231, NULL, '404542', 1, 1, 0, 'outbound', 'Lake Aryanna', 'Sample transaction description', '2025-03-29', '2025-04-09 07:59:15', '2025-04-14 07:59:15'),
(232, NULL, '561069', 1, 3, 0, 'outbound', 'West Cieloton', 'Sample transaction description', '2025-04-04', '2025-04-14 07:59:15', '2025-04-06 07:59:15'),
(233, 'OUT-680E464387BF0', '394402', 1, 3, 1, 'outbound', 'South Marquis', 'Sample transaction description', '2025-03-31', '2025-04-23 07:59:15', '2025-04-11 07:59:15'),
(234, NULL, '728107', 1, 3, 0, 'inbound', 'East Cadeberg', 'Sample transaction description', '2025-04-20', '2025-04-04 07:59:15', '2025-03-28 07:59:15'),
(235, NULL, '625638', 1, 3, 0, 'inbound', 'Velmachester', 'Sample transaction description', '2025-04-14', '2025-04-11 07:59:15', '2025-03-30 07:59:15'),
(236, 'IN-680E464389AFD', '804992', 1, 2, 1, 'inbound', 'Wiegandmouth', 'Sample transaction description', '2025-04-14', '2025-04-16 07:59:15', '2025-04-05 07:59:15'),
(237, 'OUT-680E46438A503', '383855', 1, 3, 1, 'outbound', 'North Olgahaven', 'Sample transaction description', '2025-04-21', '2025-04-25 07:59:15', '2025-04-08 07:59:15'),
(238, 'IN-680E46438AFBB', '625638', 1, 1, 1, 'inbound', 'Lake Blairview', 'Sample transaction description', '2025-04-03', '2025-04-09 07:59:15', '2025-04-19 07:59:15'),
(239, 'OUT-680E46438BABF', '804992', 1, 1, 1, 'outbound', 'Brettville', 'Sample transaction description', '2025-03-30', '2025-04-24 07:59:15', '2025-04-10 07:59:15'),
(240, 'OUT-680E46438C460', '417271', 1, 2, 1, 'outbound', 'Shanestad', 'Sample transaction description', '2025-04-06', '2025-04-04 07:59:15', '2025-03-28 07:59:15'),
(241, 'OUT-680E46438CFF5', '804992', 1, 2, 1, 'outbound', 'South Luna', 'Sample transaction description', '2025-03-31', '2025-04-13 07:59:15', '2025-04-05 07:59:15'),
(242, NULL, '561069', 1, 3, 0, 'inbound', 'Alfonsofort', 'Sample transaction description', '2025-04-02', '2025-03-30 07:59:15', '2025-04-25 07:59:15'),
(243, NULL, '804992', 1, 3, 0, 'outbound', 'Ullrichmouth', 'Sample transaction description', '2025-04-12', '2025-04-24 07:59:15', '2025-04-12 07:59:15'),
(244, 'IN-680E46438F2B5', '383855', 1, 3, 1, 'inbound', 'Reinholdmouth', 'Sample transaction description', '2025-04-01', '2025-04-06 07:59:15', '2025-04-19 07:59:15'),
(245, NULL, '914528', 1, 3, 0, 'outbound', 'Leschton', 'Sample transaction description', '2025-04-19', '2025-04-15 07:59:15', '2025-04-09 07:59:15'),
(246, 'OUT-680E4643907D2', '737183', 1, 2, 1, 'outbound', 'East Kelton', 'Sample transaction description', '2025-04-06', '2025-04-05 07:59:15', '2025-04-21 07:59:15'),
(247, 'OUT-680E464391223', '737183', 1, 2, 1, 'outbound', 'Gavinbury', 'Sample transaction description', '2025-04-10', '2025-04-01 07:59:15', '2025-04-12 07:59:15'),
(248, 'IN-680E464391D27', '325714', 1, 2, 1, 'inbound', 'North Lillianfort', 'Sample transaction description', '2025-04-01', '2025-04-10 07:59:15', '2025-04-09 07:59:15'),
(249, 'IN-680E464392896', '394402', 1, 3, 1, 'inbound', 'Lubowitzberg', 'Sample transaction description', '2025-04-23', '2025-04-20 07:59:15', '2025-04-06 07:59:15'),
(250, NULL, '325714', 1, 1, 0, 'inbound', 'South Eleanora', 'Sample transaction description', '2025-04-06', '2025-04-04 07:59:15', '2025-04-13 07:59:15'),
(251, 'OUT-680E464393CF4', '404542', 1, 1, 1, 'outbound', 'Yundtshire', 'Sample transaction description', '2025-03-31', '2025-03-28 07:59:15', '2025-04-20 07:59:15'),
(252, 'IN-680E4643947D6', '531445', 1, 2, 1, 'inbound', 'Lehnerchester', 'Sample transaction description', '2025-04-25', '2025-04-20 07:59:15', '2025-04-21 07:59:15'),
(253, 'IN-680E464395314', '230477', 1, 1, 1, 'inbound', 'Lake Jenningshaven', 'Sample transaction description', '2025-04-15', '2025-04-11 07:59:15', '2025-04-05 07:59:15'),
(254, NULL, '737183', 1, 2, 0, 'inbound', 'Travisfurt', 'Sample transaction description', '2025-03-29', '2025-03-31 07:59:15', '2025-04-21 07:59:15'),
(255, 'OUT-680E464396729', '625638', 1, 3, 1, 'outbound', 'East Ada', 'Sample transaction description', '2025-03-31', '2025-03-28 07:59:15', '2025-04-23 07:59:15'),
(256, 'IN-680E4643971E5', '804992', 1, 1, 1, 'inbound', 'Yundtstad', 'Sample transaction description', '2025-04-04', '2025-04-07 07:59:15', '2025-04-10 07:59:15'),
(257, NULL, '804992', 1, 3, 0, 'inbound', 'North Kelsi', 'Sample transaction description', '2025-04-20', '2025-03-28 07:59:15', '2025-04-21 07:59:15'),
(258, 'OUT-680E46439859D', '404542', 1, 2, 1, 'outbound', 'New Vivienfurt', 'Sample transaction description', '2025-04-01', '2025-04-01 07:59:15', '2025-04-13 07:59:15'),
(259, 'IN-680E464398F32', '362191', 1, 3, 1, 'inbound', 'Port Leopoldoside', 'Sample transaction description', '2025-04-07', '2025-04-21 07:59:15', '2025-03-30 07:59:15'),
(260, NULL, '383855', 1, 2, 0, 'outbound', 'Barneychester', 'Sample transaction description', '2025-04-05', '2025-04-07 07:59:15', '2025-03-30 07:59:15'),
(261, NULL, '419004', 1, 2, 0, 'outbound', 'East Evie', 'Sample transaction description', '2025-03-30', '2025-04-25 07:59:15', '2025-04-03 07:59:15'),
(262, 'IN-680E46439AEA3', '383855', 1, 3, 1, 'inbound', 'Port Paytonbury', 'Sample transaction description', '2025-04-01', '2025-04-18 07:59:15', '2025-04-07 07:59:15'),
(263, NULL, '804992', 1, 2, 0, 'outbound', 'South Brookeburgh', 'Sample transaction description', '2025-03-28', '2025-04-14 07:59:15', '2025-04-04 07:59:15'),
(264, NULL, '298943', 1, 2, 0, 'outbound', 'Lake Edenview', 'Sample transaction description', '2025-04-15', '2025-04-11 07:59:15', '2025-03-30 07:59:15'),
(265, NULL, '394402', 1, 1, 0, 'inbound', 'Ernestinehaven', 'Sample transaction description', '2025-04-17', '2025-04-04 07:59:15', '2025-04-21 07:59:15'),
(266, 'OUT-680E46439D943', '404542', 1, 3, 1, 'outbound', 'Walshview', 'Sample transaction description', '2025-04-18', '2025-04-25 07:59:15', '2025-04-23 07:59:15'),
(267, NULL, '625638', 1, 1, 0, 'inbound', 'Mohrton', 'Sample transaction description', '2025-04-12', '2025-04-25 07:59:15', '2025-04-06 07:59:15'),
(268, NULL, '417271', 1, 2, 0, 'inbound', 'New Melyna', 'Sample transaction description', '2025-03-31', '2025-04-17 07:59:15', '2025-04-07 07:59:15'),
(269, NULL, '434635', 1, 3, 0, 'inbound', 'Boehmport', 'Sample transaction description', '2025-04-07', '2025-04-21 07:59:15', '2025-04-09 07:59:15'),
(270, NULL, '417271', 1, 2, 0, 'inbound', 'Vestaberg', 'Sample transaction description', '2025-04-09', '2025-04-03 07:59:15', '2025-04-17 07:59:15'),
(271, 'IN-680E4643A0ED4', '434635', 1, 2, 1, 'inbound', 'New Rasheedmouth', 'Sample transaction description', '2025-04-12', '2025-04-22 07:59:15', '2025-04-06 07:59:15'),
(272, NULL, '804992', 1, 2, 0, 'outbound', 'Port Elfrieda', 'Sample transaction description', '2025-03-29', '2025-03-29 07:59:15', '2025-04-17 07:59:15'),
(273, NULL, '325714', 1, 3, 0, 'inbound', 'North Jarret', 'Sample transaction description', '2025-03-29', '2025-04-07 07:59:15', '2025-03-29 07:59:15'),
(274, NULL, '828571', 1, 1, 0, 'outbound', 'Port Kavonmouth', 'Sample transaction description', '2025-04-18', '2025-04-10 07:59:15', '2025-04-19 07:59:15'),
(275, 'IN-680E4643A3720', '586001', 1, 3, 1, 'inbound', 'Jensenside', 'Sample transaction description', '2025-04-26', '2025-04-18 07:59:15', '2025-04-15 07:59:15'),
(276, NULL, '404542', 1, 2, 0, 'inbound', 'North Tiana', 'Sample transaction description', '2025-04-13', '2025-03-30 07:59:15', '2025-04-24 07:59:15'),
(277, 'IN-680E4643A4AAB', '635823', 1, 1, 1, 'inbound', 'Hermistonhaven', 'Sample transaction description', '2025-04-07', '2025-04-03 07:59:15', '2025-04-11 07:59:15'),
(278, NULL, '914528', 1, 3, 0, 'inbound', 'Nellieburgh', 'Sample transaction description', '2025-04-06', '2025-04-14 07:59:15', '2025-04-16 07:59:15'),
(279, NULL, '625638', 1, 1, 0, 'outbound', 'East Alicia', 'Sample transaction description', '2025-04-11', '2025-04-15 07:59:15', '2025-03-30 07:59:15'),
(280, NULL, '394402', 1, 3, 0, 'outbound', 'Felicitytown', 'Sample transaction description', '2025-04-10', '2025-03-28 07:59:15', '2025-04-02 07:59:15'),
(281, NULL, '383855', 1, 2, 0, 'outbound', 'Bartolettitown', 'Sample transaction description', '2025-04-14', '2025-04-13 07:59:15', '2025-04-07 07:59:15'),
(282, 'OUT-680E4643A8109', '298943', 1, 1, 1, 'outbound', 'Port Keaton', 'Sample transaction description', '2025-04-11', '2025-04-23 07:59:15', '2025-04-10 07:59:15'),
(283, 'IN-680E4643A89DE', '804992', 1, 3, 1, 'inbound', 'South Vivienneton', 'Sample transaction description', '2025-04-03', '2025-04-20 07:59:15', '2025-04-08 07:59:15'),
(284, 'IN-680E4643A93FC', '625638', 1, 3, 1, 'inbound', 'Anabellefort', 'Sample transaction description', '2025-04-02', '2025-04-23 07:59:15', '2025-04-07 07:59:15'),
(285, NULL, '635823', 1, 1, 0, 'outbound', 'West Kevon', 'Sample transaction description', '2025-04-15', '2025-04-05 07:59:15', '2025-03-30 07:59:15'),
(286, NULL, '230477', 1, 2, 0, 'inbound', 'Lake Laverne', 'Sample transaction description', '2025-04-02', '2025-04-16 07:59:15', '2025-04-03 07:59:15'),
(287, 'IN-680E4643AB429', '419004', 1, 3, 1, 'inbound', 'Kirlinfort', 'Sample transaction description', '2025-04-26', '2025-04-22 07:59:15', '2025-04-22 07:59:15'),
(288, 'IN-680E4643ABEDF', '737183', 1, 3, 1, 'inbound', 'Delphaville', 'Sample transaction description', '2025-04-05', '2025-04-06 07:59:15', '2025-03-30 07:59:15'),
(289, NULL, '625638', 1, 3, 0, 'inbound', 'Rempelville', 'Sample transaction description', '2025-04-01', '2025-03-31 07:59:15', '2025-04-24 07:59:15'),
(290, NULL, '419004', 1, 1, 0, 'outbound', 'Haroldmouth', 'Sample transaction description', '2025-04-13', '2025-04-03 07:59:15', '2025-04-05 07:59:15'),
(291, NULL, '362191', 1, 1, 0, 'outbound', 'Quitzonton', 'Sample transaction description', '2025-04-24', '2025-04-12 07:59:15', '2025-04-10 07:59:15'),
(292, NULL, '625638', 1, 3, 0, 'inbound', 'South Carolyne', 'Sample transaction description', '2025-04-14', '2025-03-28 07:59:15', '2025-04-05 07:59:15'),
(293, 'IN-680E4643AF538', '298943', 1, 2, 1, 'inbound', 'Marisaport', 'Sample transaction description', '2025-04-13', '2025-04-04 07:59:15', '2025-04-26 07:59:15'),
(294, 'IN-680E4643AFD55', '914528', 1, 2, 1, 'inbound', 'Maxieside', 'Sample transaction description', '2025-04-11', '2025-04-11 07:59:15', '2025-04-21 07:59:15'),
(295, NULL, '828571', 1, 1, 0, 'inbound', 'Margaritachester', 'Sample transaction description', '2025-04-09', '2025-04-21 07:59:15', '2025-03-31 07:59:15'),
(296, NULL, '586001', 1, 3, 0, 'inbound', 'West Mollieland', 'Sample transaction description', '2025-04-22', '2025-04-15 07:59:15', '2025-04-22 07:59:15'),
(297, 'IN-680E4643B19B5', '419004', 1, 3, 1, 'inbound', 'East Katharinaview', 'Sample transaction description', '2025-04-04', '2025-04-25 07:59:15', '2025-04-04 07:59:15'),
(298, NULL, '635823', 1, 3, 0, 'outbound', 'Schmittchester', 'Sample transaction description', '2025-04-07', '2025-04-13 07:59:15', '2025-04-16 07:59:15'),
(299, NULL, '383855', 1, 2, 0, 'inbound', 'New Gideon', 'Sample transaction description', '2025-04-18', '2025-04-13 07:59:15', '2025-04-16 07:59:15'),
(300, NULL, '362191', 1, 3, 0, 'outbound', 'Mollieville', 'Sample transaction description', '2025-04-06', '2025-04-18 07:59:15', '2025-04-14 07:59:15'),
(301, 'IN-680E4643B4374', '737183', 1, 1, 1, 'inbound', 'Watershaven', 'Sample transaction description', '2025-04-18', '2025-04-21 07:59:15', '2025-04-22 07:59:15'),
(302, 'IN-680E4643B4CB6', '230477', 1, 2, 1, 'inbound', 'South Jewellborough', 'Sample transaction description', '2025-04-21', '2025-04-18 07:59:15', '2025-04-26 07:59:15'),
(303, 'IN-680E4643B564B', '434635', 1, 2, 1, 'inbound', 'Lelahmouth', 'Sample transaction description', '2025-04-25', '2025-04-09 07:59:15', '2025-04-15 07:59:15'),
(304, NULL, '434635', 1, 2, 0, 'inbound', 'West Heather', 'Sample transaction description', '2025-04-22', '2025-04-25 07:59:15', '2025-04-16 07:59:15'),
(305, 'OUT-680E4643B6A4E', '325714', 1, 1, 1, 'outbound', 'Margieshire', 'Sample transaction description', '2025-04-18', '2025-04-14 07:59:15', '2025-04-14 07:59:15'),
(306, 'IN-680E4643B7617', '383855', 1, 1, 1, 'inbound', 'Pfefferview', 'Sample transaction description', '2025-04-08', '2025-04-06 07:59:15', '2025-04-14 07:59:15'),
(307, NULL, '419004', 1, 3, 0, 'outbound', 'Lake Melanybury', 'Sample transaction description', '2025-04-18', '2025-04-08 07:59:15', '2025-04-01 07:59:15'),
(308, 'OUT-680E4643B85C0', '561069', 1, 3, 1, 'outbound', 'Vickyburgh', 'Sample transaction description', '2025-04-22', '2025-04-07 07:59:15', '2025-04-21 07:59:15');

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
(1, 'Admin', 'admin@gmail.com', '2025-04-27 07:59:14', '$2y$12$inpRWytt19/1L8s2IehDPeR6Tbg8wizz8GbC8nlyoCEZHq.PtYcWi', 'BrCLg1n4si', '2025-04-27 07:59:14', '2025-04-27 07:59:14'),
(2, 'Gymnastiar Ramadhan', 'gymnas@gmail.com', '2025-04-27 07:59:14', '$2y$12$sAggxgfT8nFDMGXikMUEz.agt69qQMbd6iTgXbndQ1hD.xjZ2oY8W', 'Dn9llCWxO7', '2025-04-27 07:59:15', '2025-04-27 07:59:15');

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
