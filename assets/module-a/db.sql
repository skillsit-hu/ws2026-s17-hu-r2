-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Jan 31, 2025 at 08:07 AM
-- Server version: 11.6.2-MariaDB-ubu2404
-- PHP Version: 8.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `last_login_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `username`, `password`, `token`, `last_login_at`, `created_at`, `updated_at`) VALUES
(1, 'Sudsy Admin', 'admin', '$2y$12$UKNo5Qd0Z8LgJ1oGcSj/CeIdD5RS/5tkr8PXjx/XRHX2d2samixQu', NULL, NULL, '2025-01-31 08:06:19', '2025-01-31 08:06:19'),
(2, 'Johnny the Admin', 'johnny', '$2y$12$N3n7KPeA8R51RP29erRK7.7wWnq/Mhm0x6qyKwAgy0ftouxGYWwge', NULL, NULL, '2025-01-31 08:06:19', '2025-01-31 08:06:19');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `opens_at` time NOT NULL,
  `closes_at` time NOT NULL,
  `postal_code` int(11) NOT NULL,
  `city` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `amenities` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`amenities`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `name`, `slug`, `description`, `opens_at`, `closes_at`, `postal_code`, `city`, `address`, `amenities`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Riverbank Laundromat', 'riverbank-laundromat', '<p>A modern laundromat located near the <strong>riverbank</strong> for easy access and a great view while you wait.</p>', '06:00:00', '23:00:00', 1011, 'Budapest', 'Folyópart utca 12', '{\"wifi\":true,\"accessible\":true,\"lounge_area\":true,\"music\":false,\"easy_parking\":false}', '2025-01-31 08:06:19', '2025-01-31 08:06:19', NULL),
(2, 'Downtown Sudsy', 'downtown-sudsy', '<p>Perfect for city dwellers, this laundromat is in the <em>heart of downtown</em>.</p>', '07:00:00', '21:00:00', 1054, 'Budapest', 'Belváros tér 8', '{\"wifi\":false,\"accessible\":true,\"lounge_area\":true,\"music\":false,\"easy_parking\":true}', '2025-01-31 08:06:19', '2025-01-31 08:06:19', NULL),
(3, 'Thermal Springs Laundry', 'thermal-springs-laundry', '<p>Relax in this spa town while your laundry gets done! Located near the <strong>thermal baths</strong>.</p>', '07:00:00', '22:00:00', 4200, 'Hajdúszoboszló', 'Fürdő utca 23', '{\"wifi\":false,\"accessible\":true,\"lounge_area\":true,\"music\":true,\"easy_parking\":true}', '2025-01-31 08:06:19', '2025-01-31 08:06:19', NULL),
(4, 'Historic Washhouse', 'historic-washhouse', '<p>Situated near the famous castle, this laundromat offers a <strong>historic charm</strong>.</p>', '06:00:00', '22:00:00', 3300, 'Eger', 'Vár utca 19', '{\"wifi\":true,\"accessible\":true,\"lounge_area\":false,\"music\":false,\"easy_parking\":true}', '2025-01-31 08:06:19', '2025-01-31 08:06:19', NULL),
(5, 'Sudsy Central', 'sudsy-central', '<p>The go-to spot for laundry in the <em>center of Győr</em>.</p>', '07:00:00', '22:30:00', 9021, 'Győr', 'Központi tér 3', '{\"wifi\":false,\"accessible\":false,\"lounge_area\":false,\"music\":false,\"easy_parking\":true}', '2025-01-31 08:06:19', '2025-01-31 08:06:19', NULL),
(6, 'The Clean Loft', 'the-clean-loft', '<p>A stylish laundromat on the top floor of a modern building with <strong>great views</strong>.</p>', '05:00:00', '23:59:00', 6000, 'Kecskemét', 'Padlás utca 5', '{\"wifi\":true,\"accessible\":true,\"lounge_area\":false,\"music\":true,\"easy_parking\":false}', '2025-01-31 08:06:19', '2025-01-31 08:06:19', NULL),
(7, 'Sudsy Hills', 'sudsy-hills', '<p>Set in the rolling hills of Pécs, this location is perfect for those seeking <em>peace and quiet</em>.</p>', '07:00:00', '23:59:00', 7625, 'Pécs', 'Domb utca 14', '{\"wifi\":false,\"accessible\":false,\"lounge_area\":true,\"music\":false,\"easy_parking\":false}', '2025-01-31 08:06:19', '2025-01-31 08:06:19', NULL),
(8, 'Clean City Laundromat', 'clean-city-laundromat', '<p>A modern facility in the <strong>heart of Veszprém</strong>, close to shopping and cafes.</p>', '07:00:00', '23:59:00', 8200, 'Veszprém', 'Tiszta utca 9', '{\"wifi\":true,\"accessible\":false,\"lounge_area\":true,\"music\":true,\"easy_parking\":false}', '2025-01-31 08:06:19', '2025-01-31 08:06:19', NULL),
(9, 'Suburban Sudsy', 'suburban-sudsy', '<p>Conveniently located for families in the <em>suburbs of Érd</em>.</p>', '07:00:00', '23:59:00', 2030, 'Érd', 'Kertvárosi út 7', '{\"wifi\":true,\"accessible\":false,\"lounge_area\":true,\"music\":true,\"easy_parking\":true}', '2025-01-31 08:06:19', '2025-01-31 08:06:19', NULL),
(10, 'Lakeview Laundry', 'lakeview-laundry', '<p>Enjoy views of Lake Balaton while your clothes get <strong>fresh and clean</strong>.</p>', '07:00:00', '22:00:00', 8220, 'Balatonalmádi', 'Tópart utca 15', '{\"wifi\":true,\"accessible\":true,\"lounge_area\":true,\"music\":true,\"easy_parking\":false}', '2025-01-31 08:06:19', '2025-01-31 08:06:19', NULL),
(11, 'Parkside Wash', 'parkside-wash', '<p>Located next to a beautiful park, perfect for a walk while you wait.</p>', '06:00:00', '23:00:00', 5000, 'Szolnok', 'Park utca 11', '{\"wifi\":true,\"accessible\":true,\"lounge_area\":false,\"music\":false,\"easy_parking\":true}', '2025-01-31 08:06:19', '2025-01-31 08:06:19', NULL),
(12, 'Clean & Green Laundry', 'clean-and-green-laundry', '<p>This eco-friendly laundromat is ideal for <strong>green-conscious</strong> customers.</p>', '07:00:00', '22:00:00', 3100, 'Salgótarján', 'Zöld tér 8', '{\"wifi\":true,\"accessible\":false,\"lounge_area\":true,\"music\":true,\"easy_parking\":true}', '2025-01-31 08:06:19', '2025-01-31 08:06:19', NULL),
(13, 'The Washer\'s Haven', 'the-washers-haven', '<p>Your go-to spot for <em>hassle-free laundry</em> in Szeged.</p>', '07:00:00', '21:00:00', 6725, 'Szeged', 'Márvány utca 4', '{\"wifi\":true,\"accessible\":false,\"lounge_area\":true,\"music\":false,\"easy_parking\":false}', '2025-01-31 08:06:19', '2025-01-31 08:06:19', NULL),
(14, 'Castle View Laundry', 'castle-view-laundry', '<p>Overlooking the <strong>castle grounds</strong>, this laundromat is a Tata favorite.</p>', '08:00:00', '19:00:00', 2890, 'Tata', 'Vár utca 22', '{\"wifi\":false,\"accessible\":true,\"lounge_area\":false,\"music\":true,\"easy_parking\":true}', '2025-01-31 08:06:19', '2025-01-31 08:06:19', NULL),
(15, 'Clean & Cozy Corner', 'clean-and-cozy-corner', '<p>A <em>cozy atmosphere</em> with quick and efficient machines.</p>', '07:00:00', '19:00:00', 2400, 'Dunaújváros', 'Sark utca 13', '{\"wifi\":true,\"accessible\":true,\"lounge_area\":true,\"music\":false,\"easy_parking\":false}', '2025-01-31 08:06:19', '2025-01-31 08:06:19', NULL),
(16, 'Market Square Laundry', 'market-square-laundry', '<p>Conveniently located near the market square for <strong>busy shoppers</strong>.</p>', '05:00:00', '20:00:00', 9700, 'Szombathely', 'Piac tér 2', '{\"wifi\":false,\"accessible\":false,\"lounge_area\":false,\"music\":false,\"easy_parking\":true}', '2025-01-31 08:06:19', '2025-01-31 08:06:19', NULL),
(17, 'Sudsy Heights', 'sudsy-heights', '<p>A premium laundromat on the <em>outskirts of Sopron</em>.</p>', '07:00:00', '22:00:00', 9400, 'Sopron', 'Felső utca 10', '{\"wifi\":false,\"accessible\":false,\"lounge_area\":true,\"music\":true,\"easy_parking\":false}', '2025-01-31 08:06:19', '2025-01-31 08:06:19', NULL),
(18, 'Sudsy Shores', 'sudsy-shores', '<p>Located right by the shores of <strong>Lake Balaton</strong>.</p>', '07:00:00', '22:00:00', 8621, 'Zamárdi', 'Part utca 3', '{\"wifi\":false,\"accessible\":true,\"lounge_area\":true,\"music\":false,\"easy_parking\":true}', '2025-01-31 08:06:19', '2025-01-31 08:06:19', NULL),
(19, 'Golden Lane Laundry', 'golden-lane-laundry', '<p>A quiet and efficient laundromat, perfect for residents of <strong>Zalaegerszeg</strong>.</p>', '06:00:00', '22:00:00', 8900, 'Zalaegerszeg', 'Arany János utca 14', '{\"wifi\":true,\"accessible\":false,\"lounge_area\":false,\"music\":false,\"easy_parking\":true}', '2025-01-31 08:06:19', '2025-01-31 08:06:19', NULL),
(20, 'Buda Hills Sudsy', 'buda-hills-sudsy', '<p>Enjoy fresh air and modern amenities at this Buda Hills laundromat.</p>', '06:00:00', '22:00:00', 1124, 'Budapest', 'Hegyvidék tér 5', '{\"wifi\":true,\"accessible\":false,\"lounge_area\":true,\"music\":true,\"easy_parking\":true}', '2025-01-31 08:06:19', '2025-01-31 08:06:19', NULL),
(21, 'Chain Bridge Laundry', 'chain-bridge-laundry', '<p>A stone\'s throw from the <strong>iconic Chain Bridge</strong>, offering quick and efficient services.</p>', '05:00:00', '21:00:00', 1013, 'Budapest', 'Lánchíd utca 20', '{\"wifi\":true,\"accessible\":true,\"lounge_area\":true,\"music\":true,\"easy_parking\":false}', '2025-01-31 08:06:19', '2025-01-31 08:06:19', NULL),
(22, 'Grand Market Wash', 'grand-market-wash', '<p>Located next to the famous <strong>Central Market Hall</strong> for ultimate convenience.</p>', '07:00:00', '22:00:00', 1093, 'Budapest', 'Vásárcsarnok tér 7', '{\"wifi\":true,\"accessible\":false,\"lounge_area\":false,\"music\":true,\"easy_parking\":false}', '2025-01-31 08:06:19', '2025-01-31 08:06:19', NULL),
(23, 'Sudsy Millennium', 'sudsy-millennium', '<p>A futuristic laundromat situated near the <em>City Park</em> and Heroes\' Square.</p>', '08:00:00', '22:00:00', 1146, 'Budapest', 'Millennium tér 1', '{\"wifi\":true,\"accessible\":true,\"lounge_area\":false,\"music\":false,\"easy_parking\":false}', '2025-01-31 08:06:19', '2025-01-31 08:06:19', NULL),
(24, 'Urban Suds Laundry', 'urban-suds-laundry', '<p>This trendy laundromat is nestled in the bustling <strong>Corvin Quarter</strong>.</p>', '07:30:00', '22:00:00', 1082, 'Budapest', 'Corvin sétány 4', '{\"wifi\":false,\"accessible\":true,\"lounge_area\":false,\"music\":false,\"easy_parking\":true}', '2025-01-31 08:06:19', '2025-01-31 08:06:19', NULL),
(25, 'Forest Edge Laundry', 'forest-edge-laundry', '<p>Relax by the forest edge while your clothes are cleaned with care.</p>', '07:30:00', '23:00:00', 2025, 'Visegrád', 'Erdei út 12', '{\"wifi\":true,\"accessible\":true,\"lounge_area\":true,\"music\":false,\"easy_parking\":false}', '2025-01-31 08:06:19', '2025-01-31 08:06:19', NULL),
(26, 'Danube Wash & Fold', 'danube-wash-and-fold', '<p>Overlooking the Danube, this laundromat offers a <strong>relaxing view</strong> and fast service.</p>', '07:30:00', '23:00:00', 1211, 'Budapest', 'Duna-parti út 3', '{\"wifi\":true,\"accessible\":false,\"lounge_area\":true,\"music\":false,\"easy_parking\":false}', '2025-01-31 08:06:19', '2025-01-31 08:06:19', NULL),
(27, 'Town Square Laundry', 'town-square-laundry', '<p>Right on the main square of Hatvan, this laundromat is perfect for <em>locals and visitors</em>.</p>', '09:00:00', '21:00:00', 3000, 'Hatvan', 'Főtér utca 11', '{\"wifi\":false,\"accessible\":true,\"lounge_area\":false,\"music\":true,\"easy_parking\":false}', '2025-01-31 08:06:19', '2025-01-31 08:06:19', NULL),
(28, 'Old Town Sudsy', 'old-town-sudsy', '<p>Experience the charm of Sopron\'s Old Town while taking care of your laundry needs.</p>', '06:00:00', '22:45:00', 9401, 'Sopron', 'Óváros tér 6', '{\"wifi\":true,\"accessible\":true,\"lounge_area\":false,\"music\":false,\"easy_parking\":true}', '2025-01-31 08:06:19', '2025-01-31 08:06:19', NULL),
(29, 'Hajdú Wash Center', 'hajdu-wash-center', '<p>A modern laundromat in the heart of Debrecen, offering <strong>clean and fast service</strong> for all your laundry needs.</p>', '08:00:00', '20:00:00', 4026, 'Debrecen', 'Kossuth utca 18', '{\"wifi\":true,\"accessible\":false,\"lounge_area\":true,\"music\":true,\"easy_parking\":false}', '2025-01-31 08:06:19', '2025-01-31 08:06:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `location_machine`
--

CREATE TABLE `location_machine` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `machine_id` bigint(20) UNSIGNED NOT NULL,
  `location_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `location_machine`
--

INSERT INTO `location_machine` (`id`, `machine_id`, `location_id`) VALUES
(1, 2, 1),
(2, 3, 1),
(3, 3, 1),
(4, 4, 1),
(5, 3, 1),
(6, 3, 1),
(7, 2, 2),
(8, 3, 2),
(9, 1, 2),
(10, 1, 2),
(11, 2, 2),
(12, 1, 3),
(13, 1, 3),
(14, 2, 3),
(15, 2, 3),
(16, 4, 3),
(17, 2, 3),
(18, 4, 4),
(19, 2, 4),
(20, 1, 4),
(21, 4, 5),
(22, 3, 5),
(23, 4, 5),
(24, 1, 5),
(25, 2, 5),
(26, 2, 5),
(27, 4, 6),
(28, 4, 6),
(29, 3, 6),
(30, 4, 6),
(31, 3, 6),
(32, 4, 6),
(33, 1, 7),
(34, 4, 7),
(35, 4, 7),
(36, 1, 7),
(37, 3, 7),
(38, 1, 7),
(39, 2, 8),
(40, 4, 8),
(41, 3, 8),
(42, 3, 8),
(43, 2, 8),
(44, 2, 8),
(45, 3, 9),
(46, 1, 9),
(47, 3, 9),
(48, 4, 10),
(49, 1, 10),
(50, 1, 10),
(51, 3, 10),
(52, 1, 11),
(53, 2, 11),
(54, 4, 11),
(55, 1, 11),
(56, 3, 11),
(57, 3, 12),
(58, 4, 12),
(59, 3, 12),
(60, 1, 12),
(61, 4, 12),
(62, 1, 12),
(63, 2, 13),
(64, 3, 13),
(65, 4, 13),
(66, 1, 13),
(67, 1, 13),
(68, 3, 14),
(69, 2, 14),
(70, 2, 14),
(71, 4, 14),
(72, 3, 15),
(73, 1, 15),
(74, 4, 15),
(75, 3, 15),
(76, 2, 15),
(77, 4, 16),
(78, 1, 16),
(79, 4, 16),
(80, 1, 16),
(81, 4, 17),
(82, 4, 17),
(83, 1, 17),
(84, 2, 17),
(85, 2, 17),
(86, 2, 18),
(87, 3, 18),
(88, 2, 18),
(89, 3, 18),
(90, 4, 19),
(91, 3, 19),
(92, 2, 19),
(93, 2, 19),
(94, 1, 20),
(95, 2, 20),
(96, 2, 20),
(97, 1, 20),
(98, 3, 21),
(99, 2, 21),
(100, 3, 21),
(101, 3, 21),
(102, 2, 21),
(103, 1, 21),
(104, 1, 22),
(105, 4, 22),
(106, 4, 22),
(107, 4, 22),
(108, 2, 23),
(109, 1, 23),
(110, 2, 23),
(111, 4, 24),
(112, 3, 24),
(113, 4, 24),
(114, 4, 24),
(115, 1, 25),
(116, 2, 25),
(117, 3, 25),
(118, 3, 25),
(119, 3, 25),
(120, 4, 26),
(121, 1, 26),
(122, 4, 26),
(123, 4, 26),
(124, 2, 26),
(125, 3, 27),
(126, 3, 27),
(127, 4, 27),
(128, 4, 27),
(129, 2, 28),
(130, 2, 28),
(131, 3, 28),
(132, 1, 28),
(133, 1, 28);

-- --------------------------------------------------------

--
-- Table structure for table `machines`
--

CREATE TABLE `machines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` enum('WASHER','DRYER') NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `weekend_price_multiplier` double NOT NULL,
  `size_in_kg` int(11) NOT NULL,
  `running_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `machines`
--

INSERT INTO `machines` (`id`, `type`, `price`, `weekend_price_multiplier`, `size_in_kg`, `running_time`) VALUES
(1, 'WASHER', 6.99, 0.1, 11, 30),
(2, 'DRYER', 6.99, 0.15, 16, 37),
(3, 'DRYER', 7.99, 0.125, 25, 42),
(4, 'WASHER', 7.99, 0.075, 16, 34);

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
(1, '2025_01_26_095651_create_admins_table', 1),
(2, '2025_01_26_140341_create_machines_table', 1),
(3, '2025_01_26_150544_create_locations_table', 1),
(4, '2025_01_26_153902_create_location_machine_table', 1),
(5, '2025_01_28_081042_create_subscriptions_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `display_email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `nickname`, `email`, `display_email`, `created_at`, `updated_at`) VALUES
(1, 'Joshua', 'josh@gmail.com', 'josh+sudsy@gmail.com', '2025-01-31 08:06:19', '2025-01-31 08:06:19'),
(2, 'Nick', 'nick@gmail.com', 'nick+subscriptions@gmail.com', '2025-01-31 08:06:19', '2025-01-31 08:06:19'),
(3, 'Kyle', 'kyleee@gmail.com', 'kyleee@gmail.com', '2025-01-31 08:06:19', '2025-01-31 08:06:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_username_unique` (`username`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `locations_slug_unique` (`slug`);

--
-- Indexes for table `location_machine`
--
ALTER TABLE `location_machine`
  ADD PRIMARY KEY (`id`),
  ADD KEY `location_machine_machine_id_foreign` (`machine_id`),
  ADD KEY `location_machine_location_id_foreign` (`location_id`);

--
-- Indexes for table `machines`
--
ALTER TABLE `machines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscriptions_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `location_machine`
--
ALTER TABLE `location_machine`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `machines`
--
ALTER TABLE `machines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `location_machine`
--
ALTER TABLE `location_machine`
  ADD CONSTRAINT `location_machine_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`),
  ADD CONSTRAINT `location_machine_machine_id_foreign` FOREIGN KEY (`machine_id`) REFERENCES `machines` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
