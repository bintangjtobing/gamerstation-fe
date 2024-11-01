-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 01, 2024 at 10:07 PM
-- Server version: 8.0.40
-- PHP Version: 8.3.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bintangtobing_gsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint UNSIGNED NOT NULL,
  `firstname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ADMIN',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_postal` int DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `device_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `device_info` text COLLATE utf8mb4_unicode_ci,
  `last_logged_in` timestamp NULL DEFAULT NULL,
  `last_logged_out` timestamp NULL DEFAULT NULL,
  `login_status` tinyint(1) NOT NULL DEFAULT '0',
  `notification_clear_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `admin_role_id` bigint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `firstname`, `lastname`, `username`, `user_type`, `email`, `password`, `image`, `email_verified_at`, `remember_token`, `mobile_code`, `phone`, `country`, `city`, `state`, `zip_postal`, `address`, `device_id`, `status`, `device_info`, `last_logged_in`, `last_logged_out`, `login_status`, `notification_clear_at`, `created_at`, `updated_at`, `admin_role_id`) VALUES
(1, 'Bintang', 'Tobing', 'admin', 'ADMIN', 'bintangjtobing@gmail.com', '$2y$10$WzEcTPQ4R97uA4Fb/HB9w./rhcnTh.WYu1bNEakl93wlOEqgjlCb2', NULL, NULL, NULL, NULL, '081262845980', 'Indonesia', 'Kota Administrasi Jakarta Barat', 'DKI Jakarta', 11830, 'Jl. Taman Palem Lestari No.37 38 blok C15', NULL, 1, NULL, '2024-10-27 04:09:31', '2024-10-27 06:26:52', 0, NULL, '2024-10-21 05:48:08', '2024-10-27 06:26:52', 1);

-- --------------------------------------------------------

--
-- Table structure for table `admin_has_roles`
--

CREATE TABLE `admin_has_roles` (
  `id` bigint UNSIGNED NOT NULL,
  `admin_id` bigint UNSIGNED NOT NULL,
  `admin_role_id` bigint UNSIGNED NOT NULL,
  `last_edit_by` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_has_roles`
--

INSERT INTO `admin_has_roles` (`id`, `admin_id`, `admin_role_id`, `last_edit_by`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2024-10-21 05:48:08', '2024-10-21 05:48:08');

-- --------------------------------------------------------

--
-- Table structure for table `admin_login_logs`
--

CREATE TABLE `admin_login_logs` (
  `id` bigint UNSIGNED NOT NULL,
  `admin_id` bigint UNSIGNED NOT NULL,
  `ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mac` varchar(17) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `browser` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `os` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timezone` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_login_logs`
--

INSERT INTO `admin_login_logs` (`id`, `admin_id`, `ip`, `mac`, `city`, `country`, `longitude`, `latitude`, `browser`, `os`, `timezone`, `created_at`, `updated_at`) VALUES
(1, 1, '180.243.10.61', '', 'Jakarta', 'Indonesia', '106.8446', '-6.2114', 'Chrome', 'OS X', 'Asia/Jakarta', '2024-10-21 05:48:34', '2024-10-21 05:48:34'),
(2, 1, '180.243.10.61', '', 'Jakarta', 'Indonesia', '106.8446', '-6.2114', 'Chrome', 'OS X', 'Asia/Jakarta', '2024-10-21 06:00:41', '2024-10-21 06:00:41'),
(3, 1, '180.243.10.61', '', 'Jakarta', 'Indonesia', '106.8446', '-6.2114', 'Chrome', 'OS X', 'Asia/Jakarta', '2024-10-23 03:27:28', '2024-10-23 03:27:28'),
(4, 1, '103.197.153.53', '', 'Dhaka', 'Bangladesh', '90.4109', '23.7908', 'Chrome', 'Windows', 'Asia/Dhaka', '2024-10-23 05:14:01', '2024-10-23 05:14:01'),
(5, 1, '180.243.10.61', '', 'Jakarta', 'Indonesia', '106.8446', '-6.2114', 'Chrome', 'OS X', 'Asia/Jakarta', '2024-10-24 03:14:10', '2024-10-24 03:14:10'),
(6, 1, '180.243.1.78', '', 'Jakarta', 'Indonesia', '106.8446', '-6.2114', 'Chrome', 'OS X', 'Asia/Jakarta', '2024-10-27 04:09:30', '2024-10-27 04:09:30');

-- --------------------------------------------------------

--
-- Table structure for table `admin_notifications`
--

CREATE TABLE `admin_notifications` (
  `id` bigint UNSIGNED NOT NULL,
  `admin_id` bigint UNSIGNED NOT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_notifications`
--

INSERT INTO `admin_notifications` (`id`, `admin_id`, `type`, `message`, `created_at`, `updated_at`) VALUES
(1, 1, 'SIDE_NAV', '{\"title\":\"Bintang Tobing(admin) logged in.\",\"time\":\"1 second ago\",\"image\":\"https:\\/\\/gstation.bintangtobing.com\\/public\\/backend\\/images\\/default\\/default.webp\"}', '2024-10-21 05:48:34', '2024-10-21 05:48:34'),
(2, 1, 'SIDE_NAV', '{\"title\":\"Bintang Tobing(admin) logged in.\",\"time\":\"1 second ago\",\"image\":\"https:\\/\\/gstation.bintangtobing.com\\/public\\/backend\\/images\\/default\\/default.webp\"}', '2024-10-21 06:00:41', '2024-10-21 06:00:41'),
(3, 1, 'SIDE_NAV', '{\"title\":\"Bintang Tobing(admin) logged in.\",\"time\":\"1 second ago\",\"image\":\"https:\\/\\/gstation.bintangtobing.com\\/public\\/backend\\/images\\/default\\/default.webp\"}', '2024-10-23 03:27:28', '2024-10-23 03:27:28'),
(4, 1, 'SIDE_NAV', '{\"title\":\"Bintang Tobing(admin) logged in.\",\"time\":\"1 second ago\",\"image\":\"https:\\/\\/gstation.bintangtobing.com\\/public\\/backend\\/images\\/default\\/default.webp\"}', '2024-10-23 05:14:01', '2024-10-23 05:14:01'),
(5, 1, 'SIDE_NAV', '{\"title\":\"Bintang Tobing(admin) logged in.\",\"time\":\"1 second ago\",\"image\":\"https:\\/\\/gstation.bintangtobing.com\\/public\\/backend\\/images\\/default\\/default.webp\"}', '2024-10-24 03:14:10', '2024-10-24 03:14:10'),
(6, 1, 'SIDE_NAV', '{\"title\":\"Bintang Tobing(admin) logged in.\",\"time\":\"1 second ago\",\"image\":\"https:\\/\\/gstation.bintangtobing.com\\/public\\/backend\\/images\\/default\\/default.webp\"}', '2024-10-27 04:09:30', '2024-10-27 04:09:30');

-- --------------------------------------------------------

--
-- Table structure for table `admin_password_resets`
--

CREATE TABLE `admin_password_resets` (
  `id` bigint UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` bigint UNSIGNED NOT NULL,
  `admin_id` bigint UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `admin_id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Super Admin', 1, '2024-10-21 05:48:08', '2024-10-21 05:48:08'),
(2, 1, 'Sub Admin', 1, '2024-10-21 05:48:08', '2024-10-21 05:48:08'),
(3, 1, 'Moderator', 1, '2024-10-21 05:48:08', '2024-10-21 05:48:08'),
(4, 1, 'Editor', 1, '2024-10-21 05:48:08', '2024-10-21 05:48:08'),
(5, 1, 'Support Member', 1, '2024-10-21 05:48:08', '2024-10-21 05:48:08');

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_has_permissions`
--

CREATE TABLE `admin_role_has_permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `admin_role_permission_id` bigint UNSIGNED NOT NULL,
  `route` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_edit_by` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_permissions`
--

CREATE TABLE `admin_role_permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `admin_role_id` bigint UNSIGNED NOT NULL,
  `admin_id` bigint UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `app_onboard_screens`
--

CREATE TABLE `app_onboard_screens` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `last_edit_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `app_onboard_screens`
--

INSERT INTO `app_onboard_screens` (`id`, `title`, `sub_title`, `image`, `status`, `last_edit_by`, `created_at`, `updated_at`) VALUES
(1, 'Make Every Second Count', 'Earn money by selling game coins using game shop', '921717cb-eb9e-41ee-a3e4-66cdd9375c89.webp', 1, 1, '2023-06-23 16:35:09', '2023-09-11 06:18:23'),
(2, 'Make Every Second Count', 'Earn money by selling game coins using game shop', '62ba1a59-19fc-42a6-9594-f737033b56a1.webp', 1, 1, '2023-09-11 06:18:42', '2023-09-11 06:18:42'),
(3, 'Make Every Second Count', 'Earn money by selling game coins using game shop', '8ba979c3-e691-4fdf-aa65-c5338a18ee8f.webp', 1, 1, '2023-09-11 06:18:56', '2023-09-11 06:18:56');

-- --------------------------------------------------------

--
-- Table structure for table `app_settings`
--

CREATE TABLE `app_settings` (
  `id` bigint UNSIGNED NOT NULL,
  `version` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `splash_screen_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `android_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iso_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `app_settings`
--

INSERT INTO `app_settings` (`id`, `version`, `splash_screen_image`, `url_title`, `android_url`, `iso_url`, `created_at`, `updated_at`) VALUES
(1, '2.3.0', 'bc316d0c-7513-45ed-b9c3-df67a88d5404.webp', 'App Title', 'https://play.google.com/store', 'https://www.apple.com/app-store/', '2023-05-16 05:59:38', '2023-10-30 04:39:11');

-- --------------------------------------------------------

--
-- Table structure for table `basic_settings`
--

CREATE TABLE `basic_settings` (
  `id` bigint UNSIGNED NOT NULL,
  `web_version` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `base_color` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secondary_color` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `otp_exp_seconds` int DEFAULT NULL,
  `timezone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_registration` tinyint(1) NOT NULL DEFAULT '1',
  `secure_password` tinyint(1) NOT NULL DEFAULT '0',
  `agree_policy` tinyint(1) NOT NULL DEFAULT '0',
  `force_ssl` tinyint(1) NOT NULL DEFAULT '0',
  `email_verification` tinyint(1) NOT NULL DEFAULT '0',
  `sms_verification` tinyint(1) NOT NULL DEFAULT '0',
  `email_notification` tinyint(1) NOT NULL DEFAULT '0',
  `push_notification` tinyint(1) NOT NULL DEFAULT '0',
  `kyc_verification` tinyint(1) NOT NULL DEFAULT '0',
  `site_logo_dark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_fav_dark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_fav` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_config` text COLLATE utf8mb4_unicode_ci,
  `mail_activity` text COLLATE utf8mb4_unicode_ci,
  `push_notification_config` text COLLATE utf8mb4_unicode_ci,
  `push_notification_activity` text COLLATE utf8mb4_unicode_ci,
  `broadcast_config` text COLLATE utf8mb4_unicode_ci,
  `broadcast_activity` text COLLATE utf8mb4_unicode_ci,
  `sms_config` text COLLATE utf8mb4_unicode_ci,
  `sms_activity` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `basic_settings`
--

INSERT INTO `basic_settings` (`id`, `web_version`, `site_name`, `site_title`, `base_color`, `secondary_color`, `otp_exp_seconds`, `timezone`, `user_registration`, `secure_password`, `agree_policy`, `force_ssl`, `email_verification`, `sms_verification`, `email_notification`, `push_notification`, `kyc_verification`, `site_logo_dark`, `site_logo`, `site_fav_dark`, `site_fav`, `mail_config`, `mail_activity`, `push_notification_config`, `push_notification_activity`, `broadcast_config`, `broadcast_activity`, `sms_config`, `sms_activity`, `created_at`, `updated_at`) VALUES
(1, '2.3.0', 'Gamer Station', 'One Stop Game Hub for Every Gamer', '#126DFF', '#ea5455', 3600, 'Asia/Jakarta', 1, 0, 1, 1, 1, 0, 1, 1, 0, '1c72d20e-32ce-48b8-9484-b8ed4b9ab374.webp', 'b88efc35-a595-4d50-bc55-857d7a5dc830.webp', '2d429533-bc22-4050-b372-15ed6c046929.webp', '1839d9cf-42ce-4bd4-ac9c-ea05859b2da7.webp', '{\"method\":\"smtp\",\"host\":\"mail.bintangtobing.com\",\"port\":\"587\",\"encryption\":\"tls\",\"username\":\"hello@bintangtobing.com\",\"password\":\"LibrA21101998\",\"from\":\"hello@bintangtobing.com\",\"app_name\":\"Gamer Station\"}', NULL, '{\"method\":\"pusher\",\"instance_id\":\"78e991ff-e67d-4a48-ba11-f0c6ff84edbb\",\"primary_key\":\"C7763ADFC71C6E2E881A08CDEB60AD0AA8FA0473B3EB79260FC09FC96BF16E09\"}', NULL, '{\"method\":\"pusher\",\"app_id\":\"1883336\",\"primary_key\":\"8fc994373eef974ca5f0\",\"secret_key\":\"eb6564841845e55effe4\",\"cluster\":\"ap2\"}', NULL, NULL, NULL, '2023-05-16 05:59:38', '2024-10-27 04:43:57');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint UNSIGNED NOT NULL,
  `admin_id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `name` longtext COLLATE utf8mb4_unicode_ci,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` longtext COLLATE utf8mb4_unicode_ci,
  `lan_tags` longtext COLLATE utf8mb4_unicode_ci,
  `details` longtext COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `admin_id`, `category_id`, `name`, `slug`, `image`, `tags`, `lan_tags`, `details`, `status`, `created_at`, `updated_at`) VALUES
(2, 1, 3, '{\"language\":{\"en\":{\"name\":\"Gaming Gift Cards: The Perfect Present for Gamers\"},\"es\":{\"name\":\"Tarjetas de regalo para juegos: el regalo perfecto para los jugadores\"},\"ar\":{\"name\":\"\\u0628\\u0637\\u0627\\u0642\\u0627\\u062a \\u0647\\u062f\\u0627\\u064a\\u0627 \\u0627\\u0644\\u0623\\u0644\\u0639\\u0627\\u0628: \\u0627\\u0644\\u0647\\u062f\\u064a\\u0629 \\u0627\\u0644\\u0645\\u062b\\u0627\\u0644\\u064a\\u0629 \\u0644\\u0644\\u0627\\u0639\\u0628\\u064a\\u0646\"}}}', 'gaming-gift-cards-the-perfect-present-for-gamers', '8a13121a-0fbc-4fee-aeb7-74b0972570e8.webp', '[\"Design\"]', '{\"language\":{\"en\":{\"tags\":[\"Design\"]},\"es\":{\"tags\":null},\"ar\":{\"tags\":null}}}', '{\"language\":{\"en\":{\"details\":\"<p>In this blog, we explore the world of gaming gift cards and why they make the perfect presents for gamers of all ages. We delve into the various types of gaming gift cards available, from popular gaming platforms to online marketplaces. Discover how GameShop simplifies the process of gifting and how these gift cards unlock a world of gaming possibilities. Whether you\\u2019re a gifter or a recipient, this post will change the way you think about gaming gifts<\\/p>\"},\"es\":{\"details\":\"<p>En este blog, exploramos el mundo de las tarjetas de regalo para juegos y por qu\\u00e9 son el regalo perfecto para jugadores de todas las edades. Profundizamos en los distintos tipos de tarjetas de regalo para juegos disponibles, desde plataformas de juegos populares hasta mercados en l\\u00ednea. Descubra c\\u00f3mo GameShop simplifica el proceso de regalar y c\\u00f3mo estas tarjetas de regalo abren un mundo de posibilidades de juego. Ya seas un donante o un destinatario, esta publicaci\\u00f3n cambiar\\u00e1 tu forma de pensar sobre los obsequios de juegos.<\\/p>\"},\"ar\":{\"details\":\"<p>\\u0641\\u064a \\u0647\\u0630\\u0647 \\u0627\\u0644\\u0645\\u062f\\u0648\\u0646\\u0629\\u060c \\u0646\\u0633\\u062a\\u0643\\u0634\\u0641 \\u0639\\u0627\\u0644\\u0645 \\u0628\\u0637\\u0627\\u0642\\u0627\\u062a \\u0647\\u062f\\u0627\\u064a\\u0627 \\u0627\\u0644\\u0623\\u0644\\u0639\\u0627\\u0628 \\u0648\\u0644\\u0645\\u0627\\u0630\\u0627 \\u062a\\u0642\\u062f\\u0645 \\u0627\\u0644\\u0647\\u062f\\u0627\\u064a\\u0627 \\u0627\\u0644\\u0645\\u062b\\u0627\\u0644\\u064a\\u0629 \\u0644\\u0644\\u0627\\u0639\\u0628\\u064a\\u0646 \\u0645\\u0646 \\u062c\\u0645\\u064a\\u0639 \\u0627\\u0644\\u0623\\u0639\\u0645\\u0627\\u0631. \\u0646\\u062d\\u0646 \\u0646\\u062a\\u0639\\u0645\\u0642 \\u0641\\u064a \\u0627\\u0644\\u0623\\u0646\\u0648\\u0627\\u0639 \\u0627\\u0644\\u0645\\u062e\\u062a\\u0644\\u0641\\u0629 \\u0644\\u0628\\u0637\\u0627\\u0642\\u0627\\u062a \\u0647\\u062f\\u0627\\u064a\\u0627 \\u0627\\u0644\\u0623\\u0644\\u0639\\u0627\\u0628 \\u0627\\u0644\\u0645\\u062a\\u0627\\u062d\\u0629\\u060c \\u0628\\u062f\\u0621\\u064b\\u0627 \\u0645\\u0646 \\u0645\\u0646\\u0635\\u0627\\u062a \\u0627\\u0644\\u0623\\u0644\\u0639\\u0627\\u0628 \\u0627\\u0644\\u0634\\u0647\\u064a\\u0631\\u0629 \\u0648\\u062d\\u062a\\u0649 \\u0627\\u0644\\u0623\\u0633\\u0648\\u0627\\u0642 \\u0639\\u0628\\u0631 \\u0627\\u0644\\u0625\\u0646\\u062a\\u0631\\u0646\\u062a. \\u0627\\u0643\\u062a\\u0634\\u0641 \\u0643\\u064a\\u0641 \\u062a\\u0639\\u0645\\u0644 GameShop \\u0639\\u0644\\u0649 \\u062a\\u0628\\u0633\\u064a\\u0637 \\u0639\\u0645\\u0644\\u064a\\u0629 \\u0627\\u0644\\u0625\\u0647\\u062f\\u0627\\u0621 \\u0648\\u0643\\u064a\\u0641 \\u062a\\u0641\\u062a\\u062d \\u0628\\u0637\\u0627\\u0642\\u0627\\u062a \\u0627\\u0644\\u0647\\u062f\\u0627\\u064a\\u0627 \\u0647\\u0630\\u0647 \\u0639\\u0627\\u0644\\u0645\\u064b\\u0627 \\u0645\\u0646 \\u0625\\u0645\\u0643\\u0627\\u0646\\u064a\\u0627\\u062a \\u0627\\u0644\\u0623\\u0644\\u0639\\u0627\\u0628. \\u0633\\u0648\\u0627\\u0621 \\u0643\\u0646\\u062a \\u0645\\u0627\\u0646\\u062d\\u0627 \\u0623\\u0648 \\u0645\\u062a\\u0644\\u0642\\u064a\\u0627\\u060c \\u0641\\u0625\\u0646 \\u0647\\u0630\\u0627 \\u0627\\u0644\\u0645\\u0646\\u0634\\u0648\\u0631 \\u0633\\u064a\\u063a\\u064a\\u0631 \\u0637\\u0631\\u064a\\u0642\\u0629 \\u062a\\u0641\\u0643\\u064a\\u0631\\u0643 \\u0641\\u064a \\u0647\\u062f\\u0627\\u064a\\u0627 \\u0627\\u0644\\u0623\\u0644\\u0639\\u0627\\u0628<\\/p>\"}}}', 1, '2023-10-28 08:52:27', '2024-03-27 10:23:24'),
(3, 1, 1, '{\"language\":{\"en\":{\"name\":\"The Evolution of Online Gaming: A Deep Dive\"},\"es\":{\"name\":\"La evoluci\\u00f3n de los juegos en l\\u00ednea: una inmersi\\u00f3n profunda\"},\"ar\":{\"name\":\"\\u062a\\u0637\\u0648\\u0631 \\u0627\\u0644\\u0623\\u0644\\u0639\\u0627\\u0628 \\u0639\\u0628\\u0631 \\u0627\\u0644\\u0625\\u0646\\u062a\\u0631\\u0646\\u062a: \\u0646\\u0638\\u0631\\u0629 \\u0639\\u0645\\u064a\\u0642\\u0629\"}}}', 'the-evolution-of-online-gaming-a-deep-dive', '580753ed-9026-4190-be1a-93a06b22dcfc.webp', '[\"Money\"]', '{\"language\":{\"en\":{\"tags\":[\"Money\"]},\"es\":{\"tags\":null},\"ar\":{\"tags\":null}}}', '{\"language\":{\"en\":{\"details\":\"<p>In this blog post, we take a journey through the evolution of online gaming, from its humble beginnings to the global phenomenon it is today. We explore the technological advancements, the rise of esports, and the impact of mobile gaming. Dive into the rich history of gaming and discover how GameShop has played a pivotal role in enhancing the gaming experience for millions of players worldwide.<\\/p>\"},\"es\":{\"details\":\"<p>En esta publicaci\\u00f3n de blog, hacemos un viaje a trav\\u00e9s de la evoluci\\u00f3n de los juegos en l\\u00ednea, desde sus humildes comienzos hasta el fen\\u00f3meno global que es hoy. Exploramos los avances tecnol\\u00f3gicos, el auge de los deportes electr\\u00f3nicos y el impacto de los juegos m\\u00f3viles. Sum\\u00e9rgete en la rica historia de los juegos y descubre c\\u00f3mo GameShop ha desempe\\u00f1ado un papel fundamental a la hora de mejorar la experiencia de juego para millones de jugadores en todo el mundo.<\\/p>\"},\"ar\":{\"details\":\"<p>\\u0641\\u064a \\u0645\\u0646\\u0634\\u0648\\u0631 \\u0627\\u0644\\u0645\\u062f\\u0648\\u0646\\u0629 \\u0647\\u0630\\u0627\\u060c \\u0646\\u0642\\u0648\\u0645 \\u0628\\u0631\\u062d\\u0644\\u0629 \\u0639\\u0628\\u0631 \\u062a\\u0637\\u0648\\u0631 \\u0627\\u0644\\u0623\\u0644\\u0639\\u0627\\u0628 \\u0639\\u0628\\u0631 \\u0627\\u0644\\u0625\\u0646\\u062a\\u0631\\u0646\\u062a\\u060c \\u0645\\u0646 \\u0628\\u062f\\u0627\\u064a\\u0627\\u062a\\u0647\\u0627 \\u0627\\u0644\\u0645\\u062a\\u0648\\u0627\\u0636\\u0639\\u0629 \\u0625\\u0644\\u0649 \\u0627\\u0644\\u0638\\u0627\\u0647\\u0631\\u0629 \\u0627\\u0644\\u0639\\u0627\\u0644\\u0645\\u064a\\u0629 \\u0627\\u0644\\u062a\\u064a \\u0647\\u064a \\u0639\\u0644\\u064a\\u0647\\u0627 \\u0627\\u0644\\u064a\\u0648\\u0645. \\u0646\\u062d\\u0646 \\u0646\\u0633\\u062a\\u0643\\u0634\\u0641 \\u0627\\u0644\\u062a\\u0642\\u062f\\u0645 \\u0627\\u0644\\u062a\\u0643\\u0646\\u0648\\u0644\\u0648\\u062c\\u064a\\u060c \\u0648\\u0635\\u0639\\u0648\\u062f \\u0627\\u0644\\u0631\\u064a\\u0627\\u0636\\u0627\\u062a \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\\u0629\\u060c \\u0648\\u062a\\u0623\\u062b\\u064a\\u0631 \\u0627\\u0644\\u0623\\u0644\\u0639\\u0627\\u0628 \\u0627\\u0644\\u0645\\u062d\\u0645\\u0648\\u0644\\u0629. \\u0627\\u0646\\u063a\\u0645\\u0633 \\u0641\\u064a \\u0627\\u0644\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u063a\\u0646\\u064a \\u0644\\u0644\\u0623\\u0644\\u0639\\u0627\\u0628 \\u0648\\u0627\\u0643\\u062a\\u0634\\u0641 \\u0643\\u064a\\u0641 \\u0644\\u0639\\u0628\\u062a GameShop \\u062f\\u0648\\u0631\\u064b\\u0627 \\u0645\\u062d\\u0648\\u0631\\u064a\\u064b\\u0627 \\u0641\\u064a \\u062a\\u0639\\u0632\\u064a\\u0632 \\u062a\\u062c\\u0631\\u0628\\u0629 \\u0627\\u0644\\u0623\\u0644\\u0639\\u0627\\u0628 \\u0644\\u0645\\u0644\\u0627\\u064a\\u064a\\u0646 \\u0627\\u0644\\u0644\\u0627\\u0639\\u0628\\u064a\\u0646 \\u062d\\u0648\\u0644 \\u0627\\u0644\\u0639\\u0627\\u0644\\u0645.<\\/p>\"}}}', 1, '2023-10-28 08:53:15', '2024-03-27 10:23:24'),
(4, 1, 1, '{\"language\":{\"en\":{\"name\":\"Gaming and Business: How GameShop Empowers Entrepreneurs\"},\"es\":{\"name\":\"Juegos y negocios: c\\u00f3mo GameShop empodera a los emprendedores\"},\"ar\":{\"name\":\"\\u0627\\u0644\\u0623\\u0644\\u0639\\u0627\\u0628 \\u0648\\u0627\\u0644\\u0623\\u0639\\u0645\\u0627\\u0644: \\u0643\\u064a\\u0641 \\u062a\\u0639\\u0645\\u0644 GameShop \\u0639\\u0644\\u0649 \\u062a\\u0645\\u0643\\u064a\\u0646 \\u0631\\u0648\\u0627\\u062f \\u0627\\u0644\\u0623\\u0639\\u0645\\u0627\\u0644\"}}}', 'gaming-and-business-how-gameshop-empowers-entrepreneurs', 'b27b2e05-b802-49ef-bb8d-f869abb725a7.webp', '[\"topgame\"]', '{\"language\":{\"en\":{\"tags\":[\"topgame\"]},\"es\":{\"tags\":null},\"ar\":{\"tags\":null}}}', '{\"language\":{\"en\":{\"details\":\"<p>In this informative piece, we shed light on how GameShop is not just for gamers but also for aspiring gaming entrepreneurs. We discuss how GameShop\\u2019s user-friendly platform enables entrepreneurs to sell their gaming products with ease, reach a global audience, and transact in their local currency. Learn how GameShop is leveling the playing field for gaming business owners and discover success stories from those who have harnessed its power<\\/p>\"},\"es\":{\"details\":\"<p>En este art\\u00edculo informativo, arrojamos luz sobre c\\u00f3mo GameShop no es solo para jugadores sino tambi\\u00e9n para aspirantes a emprendedores de juegos. Analizamos c\\u00f3mo la plataforma f\\u00e1cil de usar de GameShop permite a los emprendedores vender sus productos de juegos con facilidad, llegar a una audiencia global y realizar transacciones en su moneda local. Descubra c\\u00f3mo GameShop est\\u00e1 nivelando el campo de juego para los propietarios de empresas de juegos y descubra historias de \\u00e9xito de quienes han aprovechado su poder.<\\/p>\"},\"ar\":{\"details\":\"<p>\\u0641\\u064a \\u0647\\u0630\\u0647 \\u0627\\u0644\\u0645\\u0642\\u0627\\u0644\\u0629 \\u0627\\u0644\\u0625\\u0639\\u0644\\u0627\\u0645\\u064a\\u0629\\u060c \\u0646\\u0644\\u0642\\u064a \\u0627\\u0644\\u0636\\u0648\\u0621 \\u0639\\u0644\\u0649 \\u0643\\u064a\\u0641 \\u0623\\u0646 GameShop \\u0644\\u064a\\u0633 \\u0641\\u0642\\u0637 \\u0644\\u0644\\u0627\\u0639\\u0628\\u064a\\u0646 \\u0648\\u0644\\u0643\\u0646 \\u0623\\u064a\\u0636\\u064b\\u0627 \\u0644\\u0623\\u0635\\u062d\\u0627\\u0628 \\u0627\\u0644\\u0645\\u0634\\u0627\\u0631\\u064a\\u0639 \\u0627\\u0644\\u0637\\u0645\\u0648\\u062d\\u064a\\u0646 \\u0641\\u064a \\u0645\\u062c\\u0627\\u0644 \\u0627\\u0644\\u0623\\u0644\\u0639\\u0627\\u0628. \\u0646\\u0646\\u0627\\u0642\\u0634 \\u0643\\u064a\\u0641 \\u062a\\u0645\\u0643\\u0646 \\u0645\\u0646\\u0635\\u0629 GameShop \\u0633\\u0647\\u0644\\u0629 \\u0627\\u0644\\u0627\\u0633\\u062a\\u062e\\u062f\\u0627\\u0645 \\u0631\\u0648\\u0627\\u062f \\u0627\\u0644\\u0623\\u0639\\u0645\\u0627\\u0644 \\u0645\\u0646 \\u0628\\u064a\\u0639 \\u0645\\u0646\\u062a\\u062c\\u0627\\u062a \\u0627\\u0644\\u0623\\u0644\\u0639\\u0627\\u0628 \\u0627\\u0644\\u062e\\u0627\\u0635\\u0629 \\u0628\\u0647\\u0645 \\u0628\\u0633\\u0647\\u0648\\u0644\\u0629\\u060c \\u0648\\u0627\\u0644\\u0648\\u0635\\u0648\\u0644 \\u0625\\u0644\\u0649 \\u062c\\u0645\\u0647\\u0648\\u0631 \\u0639\\u0627\\u0644\\u0645\\u064a\\u060c \\u0648\\u0627\\u0644\\u062a\\u0639\\u0627\\u0645\\u0644 \\u0628\\u0639\\u0645\\u0644\\u062a\\u0647\\u0645 \\u0627\\u0644\\u0645\\u062d\\u0644\\u064a\\u0629. \\u062a\\u0639\\u0631\\u0641 \\u0639\\u0644\\u0649 \\u0643\\u064a\\u0641\\u064a\\u0629 \\u0642\\u064a\\u0627\\u0645 GameShop \\u0628\\u062a\\u0633\\u0648\\u064a\\u0629 \\u0633\\u0627\\u062d\\u0629 \\u0627\\u0644\\u0644\\u0639\\u0628 \\u0644\\u0623\\u0635\\u062d\\u0627\\u0628 \\u0627\\u0644\\u0623\\u0639\\u0645\\u0627\\u0644 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u064a\\u0629 \\u0641\\u064a \\u0645\\u062c\\u0627\\u0644 \\u0627\\u0644\\u0623\\u0644\\u0639\\u0627\\u0628 \\u0648\\u0627\\u0643\\u062a\\u0634\\u0641 \\u0642\\u0635\\u0635 \\u0627\\u0644\\u0646\\u062c\\u0627\\u062d \\u0645\\u0646 \\u0623\\u0648\\u0644\\u0626\\u0643 \\u0627\\u0644\\u0630\\u064a\\u0646 \\u0627\\u0633\\u062a\\u063a\\u0644\\u0648\\u0627 \\u0642\\u0648\\u062a\\u0647\\u0627<\\/p>\"}}}', 1, '2023-10-28 08:51:35', '2024-03-27 10:23:24'),
(5, 1, 3, '{\"language\":{\"en\":{\"name\":\"The Future of Gaming: Trends to Watch Out For\"},\"es\":{\"name\":\"El futuro de los videojuegos: tendencias a tener en cuenta\"},\"ar\":{\"name\":\"\\u0645\\u0633\\u062a\\u0642\\u0628\\u0644 \\u0627\\u0644\\u0623\\u0644\\u0639\\u0627\\u0628: \\u0627\\u0644\\u0627\\u062a\\u062c\\u0627\\u0647\\u0627\\u062a \\u0627\\u0644\\u062a\\u064a \\u064a\\u062c\\u0628 \\u0627\\u0644\\u0627\\u0646\\u062a\\u0628\\u0627\\u0647 \\u0625\\u0644\\u064a\\u0647\\u0627\"}}}', 'the-future-of-gaming-trends-to-watch-out-for', '131aa98e-12a9-4433-9821-416a489fb730.webp', '[\"game\"]', '{\"language\":{\"en\":{\"tags\":[\"game\"]},\"es\":{\"tags\":null},\"ar\":{\"tags\":null}}}', '{\"language\":{\"en\":{\"details\":\"<p>Our final blog post explores the exciting future of gaming and the trends that are set to reshape the industry. From augmented reality (AR) gaming to the growing influence of social gaming, we delve into the innovations that will define the next generation of gaming experiences. Learn how GameShop is staying at the forefront of these trends and how it plans to continue empowering gamers and businesses in this dynamic landscape.<\\/p>\"},\"es\":{\"details\":\"<p>Nuestra \\u00faltima publicaci\\u00f3n de blog explora el apasionante futuro de los juegos y las tendencias que remodelar\\u00e1n la industria. Desde los juegos de realidad aumentada (AR) hasta la creciente influencia de los juegos sociales, profundizamos en las innovaciones que definir\\u00e1n la pr\\u00f3xima generaci\\u00f3n de experiencias de juego. Descubra c\\u00f3mo GameShop se mantiene a la vanguardia de estas tendencias y c\\u00f3mo planea continuar empoderando a los jugadores y las empresas en este panorama din\\u00e1mico.<\\/p>\"},\"ar\":{\"details\":\"<p>\\u064a\\u0633\\u062a\\u0643\\u0634\\u0641 \\u0645\\u0646\\u0634\\u0648\\u0631 \\u0645\\u062f\\u0648\\u0646\\u062a\\u0646\\u0627 \\u0627\\u0644\\u0623\\u062e\\u064a\\u0631 \\u0627\\u0644\\u0645\\u0633\\u062a\\u0642\\u0628\\u0644 \\u0627\\u0644\\u0645\\u062b\\u064a\\u0631 \\u0644\\u0644\\u0623\\u0644\\u0639\\u0627\\u0628 \\u0648\\u0627\\u0644\\u0627\\u062a\\u062c\\u0627\\u0647\\u0627\\u062a \\u0627\\u0644\\u062a\\u064a \\u062a\\u0645 \\u0625\\u0639\\u062f\\u0627\\u062f\\u0647\\u0627 \\u0644\\u0625\\u0639\\u0627\\u062f\\u0629 \\u062a\\u0634\\u0643\\u064a\\u0644 \\u0627\\u0644\\u0635\\u0646\\u0627\\u0639\\u0629. \\u0628\\u062f\\u0621\\u064b\\u0627 \\u0645\\u0646 \\u0623\\u0644\\u0639\\u0627\\u0628 \\u0627\\u0644\\u0648\\u0627\\u0642\\u0639 \\u0627\\u0644\\u0645\\u0639\\u0632\\u0632 (AR) \\u0648\\u062d\\u062a\\u0649 \\u0627\\u0644\\u062a\\u0623\\u062b\\u064a\\u0631 \\u0627\\u0644\\u0645\\u062a\\u0632\\u0627\\u064a\\u062f \\u0644\\u0644\\u0623\\u0644\\u0639\\u0627\\u0628 \\u0627\\u0644\\u0627\\u062c\\u062a\\u0645\\u0627\\u0639\\u064a\\u0629\\u060c \\u0641\\u0625\\u0646\\u0646\\u0627 \\u0646\\u062a\\u0639\\u0645\\u0642 \\u0641\\u064a \\u0627\\u0644\\u0627\\u0628\\u062a\\u0643\\u0627\\u0631\\u0627\\u062a \\u0627\\u0644\\u062a\\u064a \\u0633\\u062a\\u062d\\u062f\\u062f \\u0627\\u0644\\u062c\\u064a\\u0644 \\u0627\\u0644\\u0642\\u0627\\u062f\\u0645 \\u0645\\u0646 \\u062a\\u062c\\u0627\\u0631\\u0628 \\u0627\\u0644\\u0623\\u0644\\u0639\\u0627\\u0628. \\u062a\\u0639\\u0631\\u0641 \\u0639\\u0644\\u0649 \\u0643\\u064a\\u0641\\u064a\\u0629 \\u0628\\u0642\\u0627\\u0621 GameShop \\u0641\\u064a \\u0637\\u0644\\u064a\\u0639\\u0629 \\u0647\\u0630\\u0647 \\u0627\\u0644\\u0627\\u062a\\u062c\\u0627\\u0647\\u0627\\u062a \\u0648\\u0643\\u064a\\u0641 \\u062a\\u062e\\u0637\\u0637 \\u0644\\u0645\\u0648\\u0627\\u0635\\u0644\\u0629 \\u062a\\u0645\\u0643\\u064a\\u0646 \\u0627\\u0644\\u0644\\u0627\\u0639\\u0628\\u064a\\u0646 \\u0648\\u0627\\u0644\\u0634\\u0631\\u0643\\u0627\\u062a \\u0641\\u064a \\u0647\\u0630\\u0627 \\u0627\\u0644\\u0645\\u0634\\u0647\\u062f \\u0627\\u0644\\u062f\\u064a\\u0646\\u0627\\u0645\\u064a\\u0643\\u064a.<\\/p>\"}}}', 1, '2023-10-28 08:50:34', '2024-03-27 10:23:24');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `admin_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `admin_id`, `name`, `data`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Money', '{\"language\":{\"en\":{\"name\":\"Money\"},\"id\":{\"name\":\"Money\"}}}', 'money', 1, '2023-09-06 09:54:25', '2024-10-27 05:56:57'),
(3, 1, 'Game', '{\"language\":{\"en\":{\"name\":\"Game\"},\"id\":{\"name\":\"Game\"}}}', 'game', 1, '2023-09-07 08:27:02', '2024-10-27 05:56:50');

-- --------------------------------------------------------

--
-- Table structure for table `coinbase_webhook_calls`
--

CREATE TABLE `coinbase_webhook_calls` (
  `id` int UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci,
  `exception` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint UNSIGNED NOT NULL,
  `admin_id` bigint UNSIGNED NOT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('CRYPTO','FIAT') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'FIAT',
  `flag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate` decimal(28,8) NOT NULL DEFAULT '1.00000000',
  `sender` tinyint(1) NOT NULL DEFAULT '0',
  `receiver` tinyint(1) NOT NULL DEFAULT '0',
  `default` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `admin_id`, `country`, `name`, `code`, `symbol`, `type`, `flag`, `rate`, `sender`, `receiver`, `default`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Indonesia', 'Indonesian rupiah', 'IDR', 'Rp', 'FIAT', 'd1e3ac81-eeb9-453f-a291-c6f80ce29a54.webp', 16500.00000000, 1, 1, 1, 1, '2024-10-21 05:48:08', '2024-10-21 06:07:28');

-- --------------------------------------------------------

--
-- Table structure for table `extensions`
--

CREATE TABLE `extensions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `script` text COLLATE utf8mb4_unicode_ci,
  `shortcode` text COLLATE utf8mb4_unicode_ci,
  `support_image` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1=>enable, 2=>disable',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `extensions`
--

INSERT INTO `extensions` (`id`, `name`, `slug`, `description`, `image`, `script`, `shortcode`, `support_image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Tawk', 'tawk-to', 'Go to your tawk to dashbaord. Click [setting icon] on top bar. Then click [Chat Widget] link from sidebar and follow the screenshot bellow. Copy property ID and paste it in Property ID field. Then copy widget ID and paste it in Widget ID field. Finally click on [Update] button and you are ready to go.', 'logo-tawk-to.png', NULL, '{\"property_id\":{\"title\":\"Property ID\",\"value\":\"6711e7fc4304e3196ad38adc\"},\"widget_id\":{\"title\":\"Widget ID\",\"value\":\"1iaev4dfa\"}}', 'instruction-tawk-to.png', 0, '2023-05-16 05:59:39', '2024-10-23 03:27:55');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `last_edit_by` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `dir` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ltr'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `code`, `status`, `last_edit_by`, `created_at`, `updated_at`, `dir`) VALUES
(4, 'English', 'en', 1, 1, '2023-06-17 10:35:32', NULL, 'ltr'),
(7, 'Indonesian', 'id', 0, 1, '2024-10-27 05:14:26', '2024-10-27 05:14:56', 'ltr');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2022_12_11_061454_create_admins_table', 1),
(11, '2022_12_13_060252_create_transaction_settings_table', 1),
(12, '2022_12_14_103353_create_currencies_table', 1),
(13, '2022_12_17_104923_create_basic_settings_table', 1),
(14, '2022_12_18_093156_create_setup_seos_table', 1),
(15, '2022_12_19_072039_create_app_settings_table', 1),
(16, '2022_12_24_071800_create_site_sections_table', 1),
(17, '2022_12_24_110923_create_app_onboard_screens_table', 1),
(18, '2022_12_25_082623_create_payment_gateways_table', 1),
(19, '2022_12_26_060705_create_payment_gateway_currencies_table', 1),
(20, '2023_01_03_095454_create_extensions_table', 1),
(21, '2023_01_04_061756_create_setup_kycs_table', 1),
(22, '2023_01_07_053411_create_user_profiles_table', 1),
(23, '2023_01_08_133258_create_push_notification_records_table', 1),
(24, '2023_01_10_105235_create_user_password_resets_table', 1),
(25, '2023_01_10_115626_create_admin_login_logs_table', 1),
(26, '2023_01_11_121649_create_admin_roles_table', 1),
(27, '2023_01_11_122240_create_user_login_logs_table', 1),
(28, '2023_01_11_135434_update_admins_table', 1),
(29, '2023_01_12_052750_create_admin_role_permissions_table', 1),
(30, '2023_01_12_055705_create_user_wallets_table', 1),
(31, '2023_01_14_093411_create_transactions_table', 1),
(32, '2023_01_14_154700_create_admin_role_has_permissions_table', 1),
(33, '2023_01_15_051638_create_admin_has_roles_table', 1),
(34, '2023_01_16_095331_create_temporary_datas_table', 1),
(35, '2023_01_18_043653_create_admin_notifications_table', 1),
(36, '2023_01_18_102653_create_languages_table', 1),
(37, '2023_01_19_060838_create_coinbase_webhook_calls_table', 1),
(38, '2023_01_28_075936_create_user_support_tickets_table', 1),
(39, '2023_01_28_081512_create_user_support_chats_table', 1),
(40, '2023_01_28_101246_create_user_support_ticket_attachments_table', 1),
(41, '2023_02_06_070418_create_user_mail_logs_table', 1),
(42, '2023_02_06_143558_create_user_authorizations_table', 1),
(43, '2023_02_07_154740_create_user_kyc_data_table', 1),
(44, '2023_02_09_083658_create_setup_pages_table', 1),
(45, '2023_02_23_072239_create_transaction_charges_table', 1),
(46, '2023_02_23_073232_create_transaction_devices_table', 1),
(47, '2023_03_11_054132_create_user_notifications_table', 1),
(48, '2023_06_20_102014_create_useful_links_table', 1),
(49, '2023_06_21_041424_create_subscribes_table', 1),
(50, '2023_06_21_045303_create_messages_table', 1),
(51, '2023_06_21_133800_create_script_table', 1),
(52, '2023_08_10_053317_create_top_up_games_table', 1),
(53, '2023_09_03_173051_add_column_on_languages_table', 1),
(54, '2023_09_06_090224_create_blog_categories_table', 1),
(55, '2023_09_06_090536_create_blogs_table', 1),
(56, '2024_01_29_063122_add_callback_ref_to_transactions_table', 1),
(57, '2024_02_27_180149_update_blog_categories_table_column', 1),
(58, '2024_02_27_180149_update_blogs_table_column', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'AppDevs Personal Access Client', 'wjGJeSNti2umUTc8cexruggMTzKIUu40YJvqUhzL', NULL, 'http://localhost', 1, 0, 0, '2024-10-21 05:48:11', '2024-10-21 05:48:11'),
(2, NULL, 'AppDevs Password Grant Client', 'ZifrvaekMAa7RHMYvzu3hpWYPUy6DmoNXNTTwvZd', 'users', 'http://localhost', 0, 1, 0, '2024-10-21 05:48:11', '2024-10-21 05:48:11');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint UNSIGNED NOT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2024-10-21 05:48:11', '2024-10-21 05:48:11');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateways`
--

CREATE TABLE `payment_gateways` (
  `id` bigint UNSIGNED NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` int UNSIGNED NOT NULL,
  `type` enum('AUTOMATIC','MANUAL') COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alias` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `credentials` text COLLATE utf8mb4_unicode_ci,
  `supported_currencies` text COLLATE utf8mb4_unicode_ci,
  `crypto` tinyint(1) NOT NULL DEFAULT '0',
  `desc` text COLLATE utf8mb4_unicode_ci,
  `input_fields` text COLLATE utf8mb4_unicode_ci,
  `env` enum('SANDBOX','PRODUCTION') COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Payment Gateway Environment (Ex: Production/Sandbox)',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `last_edit_by` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_gateways`
--

INSERT INTO `payment_gateways` (`id`, `slug`, `code`, `type`, `name`, `title`, `alias`, `image`, `credentials`, `supported_currencies`, `crypto`, `desc`, `input_fields`, `env`, `status`, `last_edit_by`, `created_at`, `updated_at`) VALUES
(17, 'add-money', 105, 'AUTOMATIC', 'Paypal', 'Global Setting for paypal in bellow', 'paypal', '14ad4bf6-f2cb-4883-a54a-019cf7b2e1f8.webp', '[{\"label\":\"Secret Key\",\"placeholder\":\"Enter Secret Key\",\"name\":\"secret-key\",\"value\":\"ENK3pTxBq0qdbYiyd6yIe1NWbI1Y8SRbrslX_o7OLeF9Xyo-rAZSVe2pjvP5vozz-dog6EmYIVEkBRQn\"},{\"label\":\"Client ID\",\"placeholder\":\"Enter Client ID\",\"name\":\"client-id\",\"value\":\"ASBnxWkjSDubeSl2diYlvFaSiNrdYJ2w2XK3EBfALxFIVaRC09snaPD0qjKPvxwpmkL1QFmp-CTBmoql\"}]', '[\"USD\",\"GBP\",\"PHP\",\"NZD\",\"MYR\",\"EUR\",\"CNY\",\"CAD\",\"AUD\"]', 0, NULL, NULL, 'SANDBOX', 1, 1, '2023-08-13 09:52:32', '2023-08-13 09:53:03'),
(18, 'add-money', 110, 'AUTOMATIC', 'Stripe', 'Global Setting for stripe in bellow', 'stripe', 'adfcfc2d-ddf1-4045-9fe3-92428dc4acae.webp', '[{\"label\":\"Publishable Key\",\"placeholder\":\"Enter Publishable Key\",\"name\":\"publishable-key\",\"value\":\"pk_test_51N2RvKLjZn37cB06JN5uFzoB5m1EytdSHmd9VWY35yBErpIyhZrxCXSinEtIYQrvfmPQPAM6WCvDLMolY84hDHkS00TaXUISX5\"},{\"label\":\"Secret Key\",\"placeholder\":\"Enter Secret Key\",\"name\":\"secret-key\",\"value\":\"sk_test_51N2RvKLjZn37cB06dDUoMluTmliLOLhnihQgf2lBgGd9ftUrKji4isdhOT0ZNY17LsjBvMDyKk4QTI3kFNoSUYIM003IyxPPZn\"}]', '[\"USD\",\"AUD\",\"AED\",\"BDT\",\"BGN\",\"CAD\",\"EGP\",\"EUR\",\"GBP\",\"INR\",\"PKR\",\"MYR\",\"NGN\"]', 0, NULL, NULL, 'SANDBOX', 1, 1, '2023-08-13 09:59:56', '2023-08-13 10:00:28'),
(21, 'add-money', 125, 'MANUAL', 'ADPay', 'ADPay Gateway', 'adpay', NULL, NULL, '[\"GBP\"]', 0, '<p><strong>Instructions:</strong><br>To initiate a payment using our manual payment gateway, please follow the instructions provided below. We offer two convenient methods for you to choose from:</p><p><strong>Bank Transfer</strong></p><ol><li>Visit your local bank or access your online banking platform.</li><li>Initiate a new fund transfer or payment.</li><li>Enter the recipient’s bank account details:</li><li>Bank Name: HSBC</li><li>IBAN (International Bank Account Number): 01234567890</li><li>Specify the payment amount in the currency you intend to use.</li><li>Double-check all details, including the recipient’s account information.</li><li>Confirm and authorize the transfer.</li><li>Retain the payment receipt or confirmation for future reference.</li></ol><p>Please ensure that you keep a record of your payment as proof of the transaction. In case of any discrepancies or verification requirements, you may be asked to provide this documentation.Your payment will be manually verified by our team, and once confirmed, your order will be processed promptly. We appreciate your cooperation and look forward to serving you!</p>', '[{\"type\":\"text\",\"label\":\"TRX ID\",\"name\":\"trx_id\",\"required\":true,\"validation\":{\"max\":\"30\",\"mimes\":[],\"min\":\"0\",\"options\":[],\"required\":true}},{\"type\":\"file\",\"label\":\"Screenshot\",\"name\":\"screenshot\",\"required\":true,\"validation\":{\"max\":\"20\",\"mimes\":[\"jpg\",\"png\",\"jpeg\"],\"min\":0,\"options\":[],\"required\":true}}]', NULL, 1, 1, NULL, '2023-08-23 09:29:03'),
(22, 'add-money', 130, 'AUTOMATIC', 'RazorPay', 'Global Setting for RazorPay in bellow', 'razorpay', '8f8b1296-4b99-42f9-82b6-106ddc7a5868.webp', '[{\"label\":\"Public key\",\"placeholder\":\"Enter Public key\",\"name\":\"public-key\",\"value\":\"rzp_test_voV4gKUbSxoQez\"},{\"label\":\"Secret Key\",\"placeholder\":\"Enter Secret Key\",\"name\":\"secret-key\",\"value\":\"cJltc1jy6evA4Vvh9lTO7SWr\"}]', '[\"USD\",\"EUR\",\"GBP\",\"SGD\",\"AED\",\"AUD\",\"CAD\",\"CNY\",\"SEK\",\"NZD\",\"MXN\",\"BDT\",\"EGP\",\"HKD\",\"INR\",\"LBP\",\"LKR\",\"MAD\",\"MYR\",\"NGN\",\"NPR\",\"PHP\",\"PKR\",\"QAR\",\"SAR\",\"UZS\",\"GHS\"]', 0, NULL, NULL, 'SANDBOX', 1, 1, '2023-10-21 03:46:15', '2024-01-29 06:45:52'),
(23, 'add-money', 135, 'AUTOMATIC', 'SSLCommerz', 'Global Setting for SSLCommerz in bellow', 'sslcommerz', '2e49074f-50c9-4b77-b809-ba07d0d5e20b.webp', '[{\"label\":\"Store Id\",\"placeholder\":\"Enter Store Id\",\"name\":\"store-id\",\"value\":\"appde6513b3970d62c\"},{\"label\":\"Store Password\",\"placeholder\":\"Enter Store Password\",\"name\":\"store-password\",\"value\":\"appde6513b3970d62c@ssl\"},{\"label\":\"Sandbox Url\",\"placeholder\":\"Enter Sandbox Url\",\"name\":\"sandbox-url\",\"value\":\"https:\\/\\/sandbox.sslcommerz.com\"},{\"label\":\"Live Url\",\"placeholder\":\"Enter Live Url\",\"name\":\"live-url\",\"value\":\"https:\\/\\/securepay.sslcommerz.com\"}]', '[\"BDT\",\"EUR\",\"GBP\",\"AUD\",\"USD\",\"CAD\"]', 0, NULL, NULL, 'SANDBOX', 1, 1, '2023-10-21 03:49:50', '2023-10-21 03:50:23'),
(24, 'add-money', 140, 'AUTOMATIC', 'Flutterwave', 'Global Setting for Flutterwave in bellow', 'flutterwave', '287deba1-2755-41ca-afda-6cdff051b763.webp', '[{\"label\":\"Encryption key\",\"placeholder\":\"Enter Encryption key\",\"name\":\"encryption-key\",\"value\":\"FLWSECK_TEST27bee2235efd\"},{\"label\":\"Secret Key\",\"placeholder\":\"Enter Secret Key\",\"name\":\"secret-key\",\"value\":\"FLWSECK_TEST-da35e3dbd28be1e7dc5d5f3519e2ebef-X\"},{\"label\":\"Public key\",\"placeholder\":\"Enter Public key\",\"name\":\"public-key\",\"value\":\"FLWPUBK_TEST-e0bc02a00395b938a4a2bed65e1bc94f-X\"}]', '[\"AED\", \"ARS\", \"AUD\", \"CAD\", \"CHF\", \"CZK\", \"ETB\", \"EUR\", \"GBP\", \"GHS\", \"ILS\", \"INR\", \"JPY\", \"KES\", \"MAD\", \"MUR\", \"MYR\", \"NGN\", \"NOK\", \"NZD\", \"PEN\", \"PLN\", \"RUB\", \"RWF\", \"SAR\", \"SEK\", \"SGD\", \"SLL\", \"TZS\", \"UGX\", \"USD\", \"XAF\", \"XOF\", \"ZAR\", \"ZMK\", \"ZMW\", \"MWK\"]', 0, NULL, NULL, 'SANDBOX', 1, 1, '2023-10-21 03:54:34', '2023-10-21 03:55:02'),
(25, 'add-money', 145, 'AUTOMATIC', 'UddoktaPay', 'Global Setting for uddoktapay in bellow', 'uddoktapay', '66adc70b-ecc0-4fd8-82cc-0d74e9b39b82.webp', '[{\"label\":\"Secret Key\",\"placeholder\":\"Enter Secret Key\",\"name\":\"secret-key\",\"value\":\"982d381360a69d419689740d9f2e26ce36fb7a50\"},{\"label\":\"Production URL\",\"placeholder\":\"Enter Production URL\",\"name\":\"production-url\",\"value\":\"https:\\/\\/uddoktapay.com\\/api\\/checkout-v2\"},{\"label\":\"Sandbox URL\",\"placeholder\":\"Enter Sandbox URL\",\"name\":\"sandbox-url\",\"value\":\"https:\\/\\/sandbox.uddoktapay.com\\/api\\/checkout-v2\"}]', '[\"USD\"]', 0, NULL, NULL, 'SANDBOX', 1, 1, '2023-12-04 11:06:24', '2023-12-04 11:06:49');

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateway_currencies`
--

CREATE TABLE `payment_gateway_currencies` (
  `id` bigint UNSIGNED NOT NULL,
  `payment_gateway_id` bigint UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_symbol` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_limit` decimal(28,8) UNSIGNED NOT NULL DEFAULT '0.00000000',
  `max_limit` decimal(28,8) UNSIGNED NOT NULL DEFAULT '0.00000000',
  `percent_charge` decimal(28,8) UNSIGNED NOT NULL DEFAULT '0.00000000',
  `fixed_charge` decimal(28,8) UNSIGNED NOT NULL DEFAULT '0.00000000',
  `rate` decimal(28,8) UNSIGNED NOT NULL DEFAULT '0.00000000',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_gateway_currencies`
--

INSERT INTO `payment_gateway_currencies` (`id`, `payment_gateway_id`, `name`, `alias`, `currency_code`, `currency_symbol`, `image`, `min_limit`, `max_limit`, `percent_charge`, `fixed_charge`, `rate`, `created_at`, `updated_at`) VALUES
(43, 17, 'Paypal USD', 'add-money-paypal-usd-automatic', 'USD', '$', 'a17d7b9e-6012-4b39-a835-176e63c3d10e.webp', 0.00000000, 5000.00000000, 2.00000000, 2.00000000, 1.00000000, '2023-08-13 09:53:03', '2023-08-13 09:57:08'),
(45, 18, 'Stripe USD', 'add-money-stripe-usd-automatic', 'USD', '$', NULL, 0.00000000, 5000.00000000, 2.00000000, 2.00000000, 1.00000000, '2023-08-13 10:00:28', '2023-08-13 10:00:28'),
(48, 21, 'ADPay GBP', 'adpay-gbp-manual', 'GBP', '£', NULL, 0.00000000, 5000.00000000, 2.00000000, 2.00000000, 1.00000000, '2023-08-22 11:46:40', '2023-08-22 11:46:40'),
(51, 23, 'SSLCommerz USD', 'add-money-sslcommerz-usd-automatic', 'USD', '$', 'e15bbfe2-0b1d-44a7-ac02-a2cfb0b961c6.webp', 0.00000000, 5000.00000000, 2.00000000, 2.00000000, 1.00000000, '2023-10-21 03:50:25', '2023-10-21 03:50:25'),
(52, 24, 'Flutterwave USD', 'add-money-flutterwave-usd-automatic', 'USD', '$', 'b209a8e6-1c03-4ee4-82b9-88c9eba020e9.webp', 0.00000000, 5000.00000000, 2.00000000, 2.00000000, 1.00000000, '2023-10-21 03:55:04', '2023-10-21 03:55:04'),
(53, 25, 'UddoktaPay USD', 'add-money-uddoktapay-usd-automatic', 'USD', '$', '72ebd889-3766-44c5-ae80-5e9e8a72cb75.webp', 0.00000000, 500.00000000, 2.00000000, 2.00000000, 1.00000000, '2023-12-04 11:06:49', '2023-12-04 11:07:01'),
(54, 22, 'RazorPay INR', 'add-money-razorpay-inr-automatic', 'INR', '₹', '8165521a-5d8e-49b7-b9f5-15ff4d1d93dd.webp', 0.00000000, 500000.00000000, 2.00000000, 2.00000000, 83.00000000, '2023-12-24 03:49:09', '2023-12-24 03:51:01');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `push_notification_records`
--

CREATE TABLE `push_notification_records` (
  `id` bigint UNSIGNED NOT NULL,
  `user_ids` text COLLATE utf8mb4_unicode_ci,
  `device_ids` text COLLATE utf8mb4_unicode_ci,
  `method` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `response` text COLLATE utf8mb4_unicode_ci,
  `message` text COLLATE utf8mb4_unicode_ci,
  `send_by` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `push_notification_records`
--

INSERT INTO `push_notification_records` (`id`, `user_ids`, `device_ids`, `method`, `response`, `message`, `send_by`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 'pusher', '{\"publishId\":\"pubid-8a7f33cd-ccd2-4235-9567-e956ce1faa23\"}', '{\"title\":\"Tes\",\"body\":\"Tes\",\"icon\":\"https:\\/\\/gstation.bintangtobing.com\\/public\\/backend\\/images\\/web-settings\\/image-assets\\/8896f970-0593-4578-a55f-167fc1bc21b3.webp\"}', 1, '2024-10-21 06:16:56', '2024-10-21 06:16:56');

-- --------------------------------------------------------

--
-- Table structure for table `script`
--

CREATE TABLE `script` (
  `id` bigint UNSIGNED NOT NULL,
  `client` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `signature` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `script`
--

INSERT INTO `script` (`id`, `client`, `signature`, `created_at`, `updated_at`) VALUES
(1, 'gstation.bintangtobing.com', 'eyJfdG9rZW4iOiJMcllpSDNHZ0ZZYlJyMnFKNTlzZUpkclFtSklMeVZPT1FoUlJkSzU2IiwidXNlcm5hbWUiOiJiaW50YW5nanRvYmluZyIsImNvZGUiOiJkOWJiNjQ0YS03ZmY0LTQ5YmYtYjFhYi05ZGQwOTNlN2Y5MTkiLCJjbGllbnQiOnsiY2xpZW50IjoiaHR0cHM6XC9cL2dzdGF0aW9uLmJpbnRhbmd0b2JpbmcuY29tIn0sImFwcF9uYW1lIjoiR2FtZXIgU3RhdGlvbiIsImhvc3QiOiJsb2NhbGhvc3QiLCJwb3J0IjoiMzMwNiIsImRiX25hbWUiOiJiaW50YW5ndG9iaW5nX2dzZGIiLCJkYl91c2VyIjoiYmludGFuZ3RvYmluZ19nc2RiX3VzZXIiLCJkYl91c2VyX3Bhc3N3b3JkIjoiTHlxOEFRRkJTNmFveU1YIiwiZW1haWwiOiJiaW50YW5nanRvYmluZ0BnbWFpbC5jb20iLCJmX25hbWUiOiJCaW50YW5nIiwibF9uYW1lIjoiVG9iaW5nIiwicGFzc3dvcmQiOiJsaWJyYTIxMTAifQ==', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `setup_kycs`
--

CREATE TABLE `setup_kycs` (
  `id` bigint UNSIGNED NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fields` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `last_edit_by` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setup_kycs`
--

INSERT INTO `setup_kycs` (`id`, `slug`, `user_type`, `fields`, `status`, `last_edit_by`, `created_at`, `updated_at`) VALUES
(1, 'user', 'USER', NULL, 1, 1, '2024-10-21 05:48:08', '2024-10-21 05:48:08');

-- --------------------------------------------------------

--
-- Table structure for table `setup_pages`
--

CREATE TABLE `setup_pages` (
  `id` bigint UNSIGNED NOT NULL,
  `slug` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_edit_by` bigint UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setup_pages`
--

INSERT INTO `setup_pages` (`id`, `slug`, `title`, `url`, `last_edit_by`, `status`, `created_at`, `updated_at`) VALUES
(1, 'home', 'Home', '/', 1, 1, '2024-10-21 05:48:08', NULL),
(2, 'about', 'About', '/about', 1, 1, '2024-10-21 05:48:08', NULL),
(3, 'how-its-works', 'How It\'s Works', '/how-its-works', 1, 1, '2024-10-21 05:48:08', NULL),
(4, 'contact', 'Contact', '/contact', 1, 1, '2024-10-21 05:48:08', NULL),
(5, 'faq', 'FAQ', '/faq', 1, 1, '2024-10-21 05:48:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `setup_seos`
--

CREATE TABLE `setup_seos` (
  `id` bigint UNSIGNED NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci,
  `tags` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_edit_by` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setup_seos`
--

INSERT INTO `setup_seos` (`id`, `slug`, `title`, `desc`, `tags`, `image`, `last_edit_by`, `created_at`, `updated_at`) VALUES
(1, 'appdevs', 'Gamer Station - One Stop Game Hub for Every Gamer', 'With GamerStation, gamers can buy vouchers quickly and safely, directly through the website or mobile application.', '[\"gamer\",\"voucher\"]', '9e195de4-04df-437a-83a5-49dae485e984.webp', 1, '2024-10-21 05:48:08', '2024-10-21 06:05:02');

-- --------------------------------------------------------

--
-- Table structure for table `site_sections`
--

CREATE TABLE `site_sections` (
  `id` bigint UNSIGNED NOT NULL,
  `key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `serialize` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_sections`
--

INSERT INTO `site_sections` (`id`, `key`, `value`, `status`, `serialize`, `created_at`, `updated_at`) VALUES
(1, 'site_cookie', '{\"status\":true,\"link\":\"page\\/privacy-policy\",\"desc\":\"We may use cookies or any other tracking technologies when you visit our website, including any other media form, mobile website, or mobile application related or connected to help customize the Site and improve your experience.\"}', 1, NULL, NULL, '2024-10-21 05:48:10'),
(4, 'services-section', '{\"language\":{\"en\":{\"social_icon\":\"las la-gamepad\",\"sub_heading\":\"Empowering Every Gamer with Essential Tools\",\"heading\":\"What We Serve To You\",\"description\":\"Instantly access game vouchers, gift cards, and tokens to elevate your gaming experience. GamerStation offers secure, user-friendly services to ensure you\'re always ready to play, anytime and anywhere.\"},\"id\":{\"social_icon\":\"las la-gamepad\",\"sub_heading\":\"Bikin Gamer Makin Kuat dengan Perlengkapan Wajib\",\"heading\":\"Apa yang Kami Siapkan Buat Kamu\",\"description\":\"Dapatkan voucher game, gift card, dan token secara instan untuk upgrade pengalaman gaming kamu. GamerStation hadir dengan layanan aman dan gampang dipakai, bikin kamu siap main kapan pun dan di mana pun.\"}},\"items\":{\"64928f8f9899a\":{\"language\":{\"en\":{\"item_social_icon\":\"fas fa-ticket-alt\",\"item_title\":\"Game Vouchers for Popular Titles\",\"item_description\":\"Get instant access to top game vouchers for popular titles like Mobile Legends, PUBG, and Free Fire. Purchase with ease and jump right into the action!\"},\"id\":{\"item_social_icon\":\"fas fa-ticket-alt\",\"item_title\":\"Voucher Game untuk Judul-Judul Populer\",\"item_description\":\"Dapatkan akses instan ke voucher game terbaik untuk judul populer seperti Mobile Legends, PUBG, dan Free Fire. Beli dengan mudah dan langsung lompat ke aksi!\"}},\"id\":\"64928f8f9899a\",\"image\":\"\"},\"64928fd0bdd8d\":{\"language\":{\"en\":{\"item_social_icon\":\"fas fa-gift\",\"item_title\":\"Gift Cards for Leading Gaming Platforms\",\"item_description\":\"Choose from various gift cards for platforms like PlayStation, Xbox, Steam, and Nintendo. These are perfect gifts for yourself or the gamer in your life.\"},\"id\":{\"item_social_icon\":\"fas fa-gift\",\"item_title\":\"Gift Card untuk Platform Gaming Terkemuka\",\"item_description\":\"Pilih dari berbagai gift card untuk platform seperti PlayStation, Xbox, Steam, dan Nintendo. Ini adalah hadiah sempurna untuk diri sendiri atau gamer dalam hidup Anda.\"}},\"id\":\"64928fd0bdd8d\",\"image\":\"\"},\"64929003d93bb\":{\"language\":{\"en\":{\"item_social_icon\":\"fas fa-hand-holding-usd\",\"item_title\":\"Digital Currency and Game Tokens\",\"item_description\":\"Power up your gaming experience with game tokens and in-game currency for various platforms, helping you achieve more in every game you play.\"},\"id\":{\"item_social_icon\":\"fas fa-hand-holding-usd\",\"item_title\":\"Mata Uang Digital dan Token Game\",\"item_description\":\"Tingkatkan pengalaman gaming Anda dengan token game dan mata uang dalam game untuk berbagai platform, membantu Anda meraih lebih banyak di setiap game yang Anda mainkan.\"}},\"id\":\"64929003d93bb\",\"image\":\"\"},\"64929095e0128\":{\"language\":{\"en\":{\"item_social_icon\":\"fas fa-wallet\",\"item_title\":\"Quick and Easy In-Game Top-Ups\",\"item_description\":\"Top up your game account instantly, with in-game items and boosts delivered right when needed. Enjoy seamless transactions every time.\"},\"id\":{\"item_social_icon\":\"fas fa-wallet\",\"item_title\":\"Top-Up Game Cepat dan Mudah\",\"item_description\":\"Isi saldo akun game Anda secara instan, dengan item dalam game dan boost yang langsung tersedia saat dibutuhkan. Nikmati transaksi yang lancar setiap saat.\"}},\"id\":\"64929095e0128\",\"image\":\"\"},\"671dbe38c3215\":{\"language\":{\"en\":{\"item_social_icon\":\"fas fa-credit-card\",\"item_title\":\"Recharge Game Credit Instantly\",\"item_description\":\"Recharge your diamonds, coins, or other game credits with ease. Our quick recharge options help you stay in the game without missing a beat.\"},\"id\":{\"item_social_icon\":\"fas fa-credit-card\",\"item_title\":\"Isi Ulang Kredit Game Instan\",\"item_description\":\"Isi ulang diamond, koin, atau kredit game lainnya dengan mudah. Pilihan isi ulang cepat kami membantu Anda tetap dalam permainan tanpa jeda.\"}},\"id\":\"671dbe38c3215\",\"image\":\"\"},\"671dbe4e6f525\":{\"language\":{\"en\":{\"item_social_icon\":\"fas fa-shield-alt\",\"item_title\":\"User Wallet with Secure Payments\",\"item_description\":\"Manage your transactions easily with our user wallet, supporting secure payments via PayPal, Stripe, Flutterwave, Razorpay, and more.\"},\"id\":{\"item_social_icon\":\"fas fa-shield-alt\",\"item_title\":\"Dompet Pengguna dengan Pembayaran Aman\",\"item_description\":\"Kelola transaksi Anda dengan mudah melalui dompet pengguna kami, mendukung pembayaran aman lewat PayPal, Stripe, Flutterwave, Razorpay, dan lainnya.\"}},\"id\":\"671dbe4e6f525\",\"image\":\"\"},\"671dbe63a45c9\":{\"language\":{\"en\":{\"item_social_icon\":\"fas fa-headset\",\"item_title\":\"24\\/7 Community Support\",\"item_description\":\"Join our community of gamers and get support anytime through live chat. Connect, share tips, and enjoy gaming with a vibrant community.\"},\"id\":{\"item_social_icon\":\"fas fa-headset\",\"item_title\":\"Dukungan Komunitas 24\\/7\",\"item_description\":\"Bergabunglah dengan komunitas gamer kami dan dapatkan dukungan kapan saja melalui live chat. Terhubung, berbagi tips, dan nikmati pengalaman gaming bersama komunitas yang seru.\"}},\"id\":\"671dbe63a45c9\",\"image\":\"\"}}}', 1, NULL, NULL, '2024-10-27 05:39:54'),
(9, 'contact-section', '{\"language\":{\"en\":{\"title\":\"Reach Out to Us\",\"description\":\"Do you have questions or need help leveling up your experience? Drop us a message through the feedback form, and our team will get back to you ASAP!\",\"location\":\"ALTIRA BUSINESS PARK BLOK D 08, JALAN YOS SUDARSO KAV 85, Desa\\/Kelurahan Sunter Jaya, Kec. Tanjung Priok, Kota Adm. Jakarta Utara, Provinsi DKI Jakarta, 14360\",\"phone\":\"-\",\"office_hours\":\"Our office hours are Monday \\u2013 Friday, 9 am-6 pm\",\"email\":\"support@gamerstation.com\"},\"id\":{\"title\":\"Jangan ragu untuk hubungi kami\",\"description\":\"Punya pertanyaan atau butuh bantuan untuk memberikan saran? Kirimkan kami pesan lewat formulir, dan tim kami akan menghubungi kamu secepatnya.\",\"location\":\"ALTIRA BUSINESS PARK BLOK D 08, JALAN YOS SUDARSO KAV 85, Desa\\/Kelurahan Sunter Jaya, Kec. Tanjung Priok, Kota Adm. Jakarta Utara, Provinsi DKI Jakarta, 14360\",\"phone\":\"62 8577 5614 240\",\"office_hours\":\"Our office hours are Monday \\u2013 Friday, 9 am-6 pm\",\"email\":\"support@gamerstation.com\"}}}', 1, NULL, NULL, '2024-10-27 06:25:26'),
(10, 'footer-section', '{\"language\":{\"en\":{\"footer_description\":\"Step into a world of endless gaming possibilities with GamerStation. Join us and discover the ultimate gaming experience, where every top-up, voucher, and token brings you closer to your next adventure!\",\"newsletter_description\":\"Stay in the loop with the latest gaming news, exclusive discounts, and special offers. Subscribe to our newsletter and keep your game strong!\",\"app_description\":\"Right now apps is under construction\"},\"id\":{\"footer_description\":\"Masuki dunia tanpa batas dengan GamerStation. Bergabunglah dengan kami dan temukan pengalaman gaming terbaik, di mana setiap top-up, voucher, dan token membawa Anda lebih dekat ke petualangan berikutnya!\",\"newsletter_description\":\"Tetap terupdate dengan berita gaming terbaru, diskon eksklusif, dan penawaran spesial. Daftar ke newsletter kami dan jaga performa game Anda tetap kuat!\",\"app_description\":\"Saat ini aplikasi sedang dalam tahap pengembangan\"}},\"items\":{\"649618bc598ee\":{\"language\":{\"en\":{\"item_social_icon\":\"lab la-facebook-f\",\"item_title\":\"Facebook\",\"item_link\":\"https:\\/\\/www.facebook.com\"},\"es\":{\"item_social_icon\":\"lab la-facebook-f\",\"item_title\":\"Facebook\",\"item_link\":\"https:\\/\\/www.facebook.com\"},\"ar\":{\"item_social_icon\":\"lab la-facebook-f\",\"item_title\":\"\\u0641\\u064a\\u0633\\u0628\\u0648\\u0643\",\"item_link\":\"https:\\/\\/www.facebook.com\"}},\"id\":\"649618bc598ee\",\"image\":\"\"},\"649618dbdc83e\":{\"language\":{\"en\":{\"item_social_icon\":\"lab la-twitter\",\"item_title\":\"Twitter\",\"item_link\":\"https:\\/\\/www.twitter.com\"},\"es\":{\"item_social_icon\":\"lab la-twitter\",\"item_title\":\"Gorjeo\",\"item_link\":\"https:\\/\\/www.twitter.com\"},\"ar\":{\"item_social_icon\":\"lab la-twitter\",\"item_title\":\"\\u062a\\u0648\\u064a\\u062a\\u0631\",\"item_link\":\"https:\\/\\/www.twitter.com\"}},\"id\":\"649618dbdc83e\",\"image\":\"\"},\"64961b9796bc2\":{\"language\":{\"en\":{\"item_social_icon\":\"lab la-instagram\",\"item_title\":\"Instagram\",\"item_link\":\"https:\\/\\/www.instagram.com\"},\"es\":{\"item_social_icon\":\"lab la-instagram\",\"item_title\":\"Instagram\",\"item_link\":\"https:\\/\\/www.instagram.com\"},\"ar\":{\"item_social_icon\":\"lab la-instagram\",\"item_title\":\"\\u0627\\u0646\\u0633\\u062a\\u063a\\u0631\\u0627\\u0645\",\"item_link\":\"https:\\/\\/www.instagram.com\"}},\"id\":\"64961b9796bc2\",\"image\":\"\"}}}', 1, NULL, NULL, '2024-10-27 05:48:45'),
(11, 'faq-section', '{\"items\":{\"649122a64224e\":{\"language\":{\"en\":{\"title\":\"What is GamerStation?\",\"description\":\"GamerStation is a platform that provides a variety of gaming services, including in-game currency top-ups, gift cards, and digital tokens. We are dedicated to supporting both casual gamers and gaming entrepreneurs around the world.\"},\"id\":{\"title\":\"Apa itu GamerStation?\",\"description\":\"GamerStation adalah platform yang menyediakan berbagai layanan gaming, termasuk top-up mata uang dalam game, gift card, dan token digital. Kami berdedikasi untuk mendukung baik gamer santai maupun pengusaha gaming di seluruh dunia.\"}},\"id\":\"649122a64224e\",\"image\":\"\"},\"6491236a8cef2\":{\"language\":{\"en\":{\"title\":\"How do I purchase in-game currency or assets?\",\"description\":\"To purchase in-game currency or assets, simply browse our catalog, select your desired item, and follow the secure payment process. Your purchase will be processed instantly.\"},\"id\":{\"title\":\"Bagaimana cara membeli mata uang atau aset dalam game?\",\"description\":\"Untuk membeli mata uang atau aset dalam game, cukup telusuri katalog kami, pilih item yang diinginkan, dan ikuti proses pembayaran yang aman. Pembelian Anda akan diproses secara instan.\"}},\"id\":\"6491236a8cef2\",\"image\":\"\"},\"6495e5db1fb2b\":{\"language\":{\"en\":{\"title\":\"What types of gift cards do you offer?\",\"description\":\"We offer a wide selection of gaming gift cards, including options for popular gaming platforms like PlayStation, Xbox, Steam, and more. Explore our store for the latest gift card options.\"},\"id\":{\"title\":\"Jenis gift card apa saja yang kalian tawarkan?\",\"description\":\"Kami menawarkan berbagai pilihan gift card untuk gaming, termasuk opsi untuk platform gaming populer seperti PlayStation, Xbox, Steam, dan lainnya. Jelajahi toko kami untuk pilihan gift card terbaru.\"}},\"id\":\"6495e5db1fb2b\",\"image\":\"\"},\"6495e5e80b96d\":{\"language\":{\"en\":{\"title\":\"Can I transact in my local currency?\",\"description\":\"Yes, we support transactions in multiple currencies to provide a seamless experience for our users worldwide.\"},\"id\":{\"title\":\"Apakah saya bisa bertransaksi dengan mata uang lokal?\",\"description\":\"Ya, kami mendukung transaksi dalam berbagai mata uang untuk memberikan pengalaman yang nyaman bagi pengguna kami di seluruh dunia.\"}},\"id\":\"6495e5e80b96d\",\"image\":\"\"},\"6495e5f523508\":{\"language\":{\"en\":{\"title\":\"Is my data safe with GamerStation?\",\"description\":\"We take data security seriously. Please refer to our Privacy Policy for detailed information on how we protect your personal information.\"},\"id\":{\"title\":\"Apakah data saya aman di GamerStation?\",\"description\":\"Kami sangat serius dalam menjaga keamanan data Anda. Silakan merujuk ke Kebijakan Privasi kami untuk informasi lebih lanjut tentang cara kami melindungi informasi pribadi Anda.\"}},\"id\":\"6495e5f523508\",\"image\":\"\"},\"6495e601f1377\":{\"language\":{\"en\":{\"title\":\"What payment methods do you accept?\",\"description\":\"We accept a wide range of payment methods, including credit\\/debit cards, digital wallets, and other secure payment options. Visit our Payment Policy for more details.\"},\"id\":{\"title\":\"Metode pembayaran apa saja yang diterima?\",\"description\":\"Kami menerima berbagai metode pembayaran, termasuk kartu kredit\\/debit, dompet digital, dan opsi pembayaran aman lainnya. Kunjungi Kebijakan Pembayaran kami untuk informasi lebih lanjut.\"}},\"id\":\"6495e601f1377\",\"image\":\"\"},\"6495e61470916\":{\"language\":{\"en\":{\"title\":\"How can I reach customer support?\",\"description\":\"Our dedicated support team is available 24\\/7. Reach out to us via email at support@gamerstation.com or through our website\\u2019s contact form.\"},\"id\":{\"title\":\"Bagaimana cara menghubungi layanan pelanggan?\",\"description\":\"Tim dukungan kami siap membantu Anda 24\\/7. Hubungi kami melalui email di support@gamerstation.com atau melalui formulir kontak di website kami.\"}},\"id\":\"6495e61470916\",\"image\":\"\"},\"6495e6219eff4\":{\"language\":{\"en\":{\"title\":\"Do you have a mobile app?\",\"description\":\"No, only on website applications we can provide this time. Later we will send you an email once we have done with the development.\"},\"id\":{\"title\":\"Apakah kalian punya aplikasi mobile?\",\"description\":\"Saat ini, kami hanya menyediakan aplikasi berbasis website. Nanti kami akan mengirimkan email kepada Anda setelah pengembangan aplikasi selesai.\"}},\"id\":\"6495e6219eff4\",\"image\":\"\"},\"65018ca155133\":{\"language\":{\"en\":{\"title\":\"How can I stay updated with GamerStation news and offers?\",\"description\":\"To stay informed about the latest gaming news, discounts, and offers, subscribe to our newsletter. You can find the subscription option in our website footer.\"},\"id\":{\"title\":\"Bagaimana cara tetap mendapatkan update berita dan penawaran GameShop?\",\"description\":\"Untuk informasi terbaru tentang berita gaming, diskon, dan penawaran, langgananlah newsletter kami. Anda dapat menemukan opsi langganan di bagian footer website kami.\"}},\"id\":\"65018ca155133\",\"image\":\"\"},\"65018ccaea801\":{\"language\":{\"en\":{\"title\":\"I\\u2019m a gaming entrepreneur. How can GamerStation benefit my business?\",\"description\":\"GamerStation supports gaming entrepreneurs by providing a platform to reach a global audience, sell gaming products, and manage transactions in local currencies. Learn more in our \\u201cGaming and Business\\u201d blog post.\"},\"id\":{\"title\":\"Saya seorang pengusaha di bidang gaming. Bagaimana GamerStation bisa membantu bisnis saya?\",\"description\":\"GamerStation mendukung para pengusaha gaming dengan menyediakan platform untuk menjangkau audiens global, menjual produk gaming, dan mengelola transaksi dalam mata uang lokal. Pelajari lebih lanjut di blog kami \\\"Gaming dan Bisnis\\\".\"}},\"id\":\"65018ccaea801\",\"image\":\"\"}}}', 1, NULL, NULL, '2024-10-27 05:56:39'),
(13, 'about-section', '{\"image\":\"94d59292-e49d-4e62-ba4f-5f7bac506e9b.webp\",\"language\":{\"en\":{\"social_icon\":\"las la-gamepad\",\"sub_heading\":\"Our Features\",\"heading\":\"Ultimate Choice for Gamers and Gaming Entrepreneurs\",\"users\":\"2024\",\"transactions\":\"1000\",\"country\":\"800\",\"description\":\"Experience a new era in gaming with our user-friendly platform and powerful tools tailored for gamers and gaming entrepreneurs alike. Join us as we redefine the way you top up, recharge, and connect with the gaming community worldwide.\"},\"id\":{\"social_icon\":\"las la-gamepad\",\"sub_heading\":\"Fitur Kami\",\"heading\":\"Pilihan Terbaik untuk Gamer dan Pengusaha Gaming\",\"users\":\"2024\",\"transactions\":\"1000\",\"country\":\"800\",\"description\":\"Rasakan era baru dalam gaming dengan platform ramah pengguna kami dan alat canggih yang dirancang khusus untuk gamer dan pengusaha di dunia gaming. Bergabunglah dengan kami saat kami mendefinisikan ulang cara Anda top-up, isi ulang, dan terhubung dengan komunitas gaming di seluruh dunia.\"}},\"items\":{\"64f6bbc4e37e1\":{\"language\":{\"en\":{\"item_title\":\"Easy In-Game Top-Ups\"},\"id\":{\"item_title\":\"Easy In-Game Top-Ups\"}},\"id\":\"64f6bbc4e37e1\",\"image\":\"\"},\"64f6bbd742485\":{\"language\":{\"en\":{\"item_title\":\"Wide Range of Gift Cards\"},\"id\":{\"item_title\":\"Wide Range of Gift Cards\"}},\"id\":\"64f6bbd742485\",\"image\":\"\"},\"64f6bbe36dcfe\":{\"language\":{\"en\":{\"item_title\":\"Multiple Currency Support\"},\"id\":{\"item_title\":\"Multiple Currency Support\"}},\"id\":\"64f6bbe36dcfe\",\"image\":\"\"},\"64f6bbfe47169\":{\"language\":{\"en\":{\"item_title\":\"24\\/7 Customer Support\"},\"id\":{\"item_title\":\"24\\/7 Customer Support\"}},\"id\":\"64f6bbfe47169\",\"image\":\"\"},\"64f6bc1048c5a\":{\"language\":{\"en\":{\"item_title\":\"Secure Transactions\"},\"id\":{\"item_title\":\"Transaksi Teraman\"}},\"id\":\"64f6bc1048c5a\",\"image\":\"\"},\"64f6bc1cd03c5\":{\"language\":{\"en\":{\"item_title\":\"User-Friendly Interface\"},\"id\":{\"item_title\":\"Interface yang bersahabat\"}},\"id\":\"64f6bc1cd03c5\",\"image\":\"\"},\"650173f5571d9\":{\"language\":{\"en\":{\"item_title\":\"Compatible Across Devices\"},\"id\":{\"item_title\":\"Design yang aman untuk semua perangkat\"}},\"id\":\"650173f5571d9\",\"image\":\"\"},\"6501742bb61d4\":{\"language\":{\"en\":{\"item_title\":\"Multiple Payment Options\"},\"id\":{\"item_title\":\"Kaya pilihan pembayaran\"}},\"id\":\"6501742bb61d4\",\"image\":\"\"}}}', 1, NULL, '2023-09-05 05:14:56', '2024-10-27 05:47:58'),
(14, 'why-choose-section', '{\"language\":{\"en\":{\"social_icon\":\"las la-shopping-bag\",\"sub_heading\":\"Why Choose Us\",\"heading\":\"Premier Choice for All Your Gaming Needs\"},\"id\":{\"social_icon\":\"las la-shopping-bag\",\"sub_heading\":\"Mengapa kami?\",\"heading\":\"Pilihan ekslusif untuk kebutuhan gaming kamu.\"}},\"items\":{\"64f6bc929abbe\":{\"language\":{\"en\":{\"item_social_icon\":\"las la-stopwatch\",\"item_title\":\"Comprehensive Gaming Solutions\",\"item_description\":\"GamerStation offers a wide range of services, including instant top-ups, game vouchers, and digital currency options to keep you game-ready at all times.\"},\"id\":{\"item_social_icon\":\"las la-stopwatch\",\"item_title\":\"Comprehensive Gaming Solutions\",\"item_description\":\"GamerStation offers a wide range of services, including instant top-ups, game vouchers, and digital currency options to keep you game-ready at all times.\"}},\"id\":\"64f6bc929abbe\",\"image\":\"\"},\"64f6bcb0aa7ed\":{\"language\":{\"en\":{\"item_social_icon\":\"las la-bolt\",\"item_title\":\"Reliability and Security\",\"item_description\":\"We prioritize the safety of your transactions with secure payment gateways and high standards of data protection, ensuring a dependable experience every time.\"},\"id\":{\"item_social_icon\":\"las la-bolt\",\"item_title\":\"Reliability and Security\",\"item_description\":\"We prioritize the safety of your transactions with secure payment gateways and high standards of data protection, ensuring a dependable experience every time.\"}},\"id\":\"64f6bcb0aa7ed\",\"image\":\"\"},\"64f6bcce2cd8d\":{\"language\":{\"en\":{\"item_social_icon\":\"fas fa-globe-americas\",\"item_title\":\"Global Reach with Local Focus\",\"item_description\":\"Transact in your preferred currency and access a global network of gamers. GamerStation bridges the world, connecting players everywhere with localized convenience.\"},\"id\":{\"item_social_icon\":\"fas fa-globe-americas\",\"item_title\":\"Global Reach with Local Focus\",\"item_description\":\"Transact in your preferred currency and access a global network of gamers. GamerStation bridges the world, connecting players everywhere with localized convenience.\"}},\"id\":\"64f6bcce2cd8d\",\"image\":\"\"},\"64f6bceb69c50\":{\"language\":{\"en\":{\"item_social_icon\":\"fas fa-american-sign-language-interpreting\",\"item_title\":\"User-Centric Experience\",\"item_description\":\"Our platform is designed with gamers in mind, providing an intuitive, seamless interface for fast, hassle-free transactions that keep you in the game.\"},\"id\":{\"item_social_icon\":\"fas fa-american-sign-language-interpreting\",\"item_title\":\"User-Centric Experience\",\"item_description\":\"Our platform is designed with gamers in mind, providing an intuitive, seamless interface for fast, hassle-free transactions that keep you in the game.\"}},\"id\":\"64f6bceb69c50\",\"image\":\"\"}}}', 1, NULL, '2023-09-05 05:28:19', '2024-10-27 05:46:42'),
(15, 'header-sliders-section', '{\"items\":{\"64f6fb1c2eab7\":{\"language\":{\"en\":{\"item_title\":\"Level Up Your Gaming Experience\",\"left_button_text\":\"Top Up\",\"left_button_link\":\"topup\",\"right_button_text\":\"Contact\",\"right_button_link\":\"contact\",\"item_description\":\"We offer a comprehensive platform for Online Game Diamond Top-Up and Gift Card Business, empowering you to enhance your gaming experience. Purchase in-game assets, top-ups, and more with ease, ensuring you stay ahead in the gaming arena.\"},\"id\":{\"item_title\":\"Tingkatkan Pengalaman Gaming Anda\",\"left_button_text\":\"Top Up\",\"left_button_link\":\"topup\",\"right_button_text\":\"Contact\",\"right_button_link\":\"contact\",\"item_description\":\"Kami menawarkan platform lengkap untuk Top-Up Diamond Game Online dan Bisnis Gift Card, memberi Anda kemudahan untuk meningkatkan pengalaman gaming Anda. Dapatkan berbagai aset dalam game, top-up, dan lainnya dengan mudah, memastikan Anda selalu terdepan di arena gaming.\"}},\"id\":\"64f6fb1c2eab7\",\"image\":\"3d8806a4-6d51-4680-b0da-0cdf474042e6.webp\"},\"64f7005387c61\":{\"language\":{\"en\":{\"item_title\":\"Instant Game Top-Ups\",\"left_button_text\":\"Browse Vouchers\",\"left_button_link\":\"topup\",\"right_button_text\":\"Learn More\",\"right_button_link\":\"contact\",\"item_description\":\"Get quick access to your favorite in-game currency and items. With GamerStation, topping up your game balance has never been easier and faster. Dive back into the game without delays!\"},\"id\":{\"item_title\":\"Top-Up Game Instan\",\"left_button_text\":\"Browse Vouchers\",\"left_button_link\":\"topup\",\"right_button_text\":\"Learn More\",\"right_button_link\":\"contact\",\"item_description\":\"Dapatkan akses cepat ke mata uang dan item favorit Anda dalam game. Dengan GamerStation, top-up saldo game Anda menjadi lebih mudah dan cepat. Langsung kembali ke game tanpa harus menunggu!\"}},\"id\":\"64f7005387c61\",\"image\":\"5450feff-72b6-47e8-b206-eda6690f7c1d.webp\"},\"671dca1a0f3dc\":{\"language\":{\"en\":{\"item_title\":\"Exclusive Gift Cards for Gamers\",\"left_button_text\":\"Shop Now\",\"left_button_link\":\"https:\\/\\/gstation.bintangtobing.com\",\"right_button_text\":\"Support\",\"right_button_link\":\"https:\\/\\/gstation.bintangtobing.com\",\"item_description\":\"Explore a wide selection of gift cards for PlayStation, Xbox, Steam, and more. Perfect for yourself or as a gift for your fellow gamers. Enjoy seamless and secure transactions every time.\"},\"id\":{\"item_title\":\"Gift Card Eksklusif untuk Gamer\",\"left_button_text\":\"Shop Now\",\"left_button_link\":\"topup\",\"right_button_text\":\"Support\",\"right_button_link\":\"contact\",\"item_description\":\"Jelajahi beragam pilihan gift card untuk PlayStation, Xbox, Steam, dan lainnya. Cocok untuk Anda atau sebagai hadiah bagi teman gamer Anda. Nikmati transaksi yang aman dan nyaman setiap saat.\"}},\"id\":\"671dca1a0f3dc\",\"image\":\"c98023d9-9576-4bdb-b251-a477d590c26b.webp\"},\"671dca308871d\":{\"language\":{\"en\":{\"item_title\":\"Stay Connected, Game Globally\",\"left_button_text\":\"Subscribe\",\"left_button_link\":\"https:\\/\\/gstation.bintangtobing.com\",\"right_button_text\":\"Get Deals\",\"right_button_link\":\"https:\\/\\/gstation.bintangtobing.com\",\"item_description\":\"Join our global community and get the latest updates, exclusive deals, and news from the world of gaming. Sign up for our newsletter to stay in the loop and keep your game strong.\"},\"id\":{\"item_title\":\"Tetap Terhubung bersama Gamer Secara Global\",\"left_button_text\":\"Subscribe\",\"left_button_link\":\"topup\",\"right_button_text\":\"Get Deals\",\"right_button_link\":\"topup\",\"item_description\":\"Bergabunglah dengan komunitas global kami dan dapatkan update terbaru, penawaran eksklusif, dan berita dari dunia gaming. Daftar newsletter kami untuk tetap up-to-date dan menjaga performa game Anda tetap kuat.\"}},\"id\":\"671dca308871d\",\"image\":\"12f729ae-c5f2-441e-b1a4-a5433ad30944.webp\"}}}', 1, NULL, '2023-09-05 06:03:29', '2024-10-27 05:34:41'),
(16, 'recharge-section', '{\"language\":{\"en\":{\"social_icon\":\"las la-gamepad\",\"sub_heading\":\"Recharge\",\"heading\":\"TOP UP GAMES\"},\"id\":{\"social_icon\":\"las la-gamepad\",\"sub_heading\":\"Topup\",\"heading\":\"Top Up Games\"}}}', 1, NULL, '2023-09-05 10:48:39', '2024-10-27 05:41:25'),
(17, 'testimonial-section', '{\"items\":{\"64f7f24bc35ea\":{\"language\":{\"en\":{\"item_name\":\"John Doe\",\"item_testimonial_title\":\"Gaming Enthusiast\",\"item_testimonial_rating\":\"4\",\"item_testimonial_description\":\"I\\u2019ve been using GamerStation for a while now, and I can\\u2019t imagine gaming without it. The convenience of purchasing in-game currency and gift cards in my local currency is a game-changer. GamerStation has truly leveled up my gaming experience.\"},\"id\":{\"item_name\":\"John Doe\",\"item_testimonial_title\":\"Gaming Enthusiast\",\"item_testimonial_rating\":\"4\",\"item_testimonial_description\":\"I\\u2019ve been using GamerStation for a while now, and I can\\u2019t imagine gaming without it. The convenience of purchasing in-game currency and gift cards in my local currency is a game-changer. GamerStation has truly leveled up my gaming experience.\"}},\"id\":\"64f7f24bc35ea\",\"image\":\"eb585a9a-dff6-4b66-bf3e-720f0ada7bb4.webp\",\"created_at\":\"2023-09-06T03:30:19.800262Z\"},\"64f7f301ef96c\":{\"language\":{\"en\":{\"item_name\":\"Sarah Smith\",\"item_testimonial_title\":\"Game Developer\",\"item_testimonial_rating\":\"3\",\"item_testimonial_description\":\"As a game developer, I appreciate platforms like GamerStation that support local currency transactions. It makes it easier for me to reach a wider audience and sell my products. The user-friendly interface and reliable service make GamerStation a valuable partner in the gaming industry.\"},\"id\":{\"item_name\":\"Sarah Smith\",\"item_testimonial_title\":\"Game Developer\",\"item_testimonial_rating\":\"3\",\"item_testimonial_description\":\"As a game developer, I appreciate platforms like GamerStation that support local currency transactions. It makes it easier for me to reach a wider audience and sell my products. The user-friendly interface and reliable service make GamerStation a valuable partner in the gaming industry.\"}},\"id\":\"64f7f301ef96c\",\"image\":\"88a04ac6-11c1-4ce5-9eed-47c6a02dc33b.webp\",\"created_at\":\"2023-09-06T03:33:21.981386Z\"},\"650179d90fd46\":{\"language\":{\"en\":{\"item_name\":\"David Carter\",\"item_testimonial_title\":\"Casual Gamer\",\"item_testimonial_rating\":\"5\",\"item_testimonial_description\":\"GamerStation\'s 24\\/7 customer support is incredible. Whenever I had a question or needed assistance, their team was quick to respond and resolve my issues. It\\u2019s rare to find such excellent customer service in the gaming world.\"},\"id\":{\"item_name\":\"David Carter\",\"item_testimonial_title\":\"Casual Gamer\",\"item_testimonial_rating\":\"5\",\"item_testimonial_description\":\"GamerStation\'s 24\\/7 customer support is incredible. Whenever I had a question or needed assistance, their team was quick to respond and resolve my issues. It\\u2019s rare to find such excellent customer service in the gaming world.\"}},\"id\":\"650179d90fd46\",\"image\":\"c905f85e-90a4-4226-96e0-8f8b195f2bfb.webp\",\"created_at\":\"2023-09-13T08:59:05.064863Z\"},\"65017a51db2b4\":{\"language\":{\"en\":{\"item_name\":\"Lisa Anderson\",\"item_testimonial_title\":\"Online Retailer\",\"item_testimonial_rating\":\"4\",\"item_testimonial_description\":\"GamerStation has transformed the way I do business. With their extensive collection of gaming gift cards and secure transactions, I\\u2019ve seen a significant boost in my sales. It\\u2019s a win-win for both gamers and entrepreneurs like me. I highly recommend GameShop!\"},\"id\":{\"item_name\":\"Lisa Anderson\",\"item_testimonial_title\":\"Online Retailer\",\"item_testimonial_rating\":\"4\",\"item_testimonial_description\":\"GamerStation has transformed the way I do business. With their extensive collection of gaming gift cards and secure transactions, I\\u2019ve seen a significant boost in my sales. It\\u2019s a win-win for both gamers and entrepreneurs like me. I highly recommend GameShop!\"}},\"id\":\"65017a51db2b4\",\"image\":\"cf35445e-5cd1-4caa-a5b8-a2e13f7255cc.webp\",\"created_at\":\"2023-09-13T09:01:05.897746Z\"}},\"language\":{\"en\":{\"social_icon\":\"las la-gamepad\",\"sub_heading\":\"Player Feedback\",\"heading\":\"What Gamers Are Saying About Us\"},\"id\":{\"social_icon\":\"las la-gamepad\",\"sub_heading\":\"Feedback gamer\",\"heading\":\"Apa yang mereka katakan soal kami?\"}}}', 1, NULL, '2023-09-06 03:30:20', '2024-10-27 05:46:00'),
(18, 'donetion-section', '{\"image\":\"718d2ed5-d00e-4b54-a0f1-dfc7d1615106.webp\",\"language\":{\"en\":{\"social_icon\":\"las la-gamepad\",\"sub_heading\":\"Promotional\",\"heading\":\"Unlock the Ultimate Gaming Experience!\",\"button_text\":\"Shop Now\",\"button_link\":\"topup\",\"description\":\"Level up your gaming journey with unbeatable deals on game vouchers, gift cards, and top-ups! Whether you\'re a casual player or a pro, GamerStation has everything you need to enhance your gameplay without breaking the bank. Don\\u2019t miss out \\u2013 start your adventure today!\"},\"id\":{\"social_icon\":\"las la-gamepad\",\"sub_heading\":\"Promosi\",\"heading\":\"Buka Pengalaman Gaming Terbaik!\",\"button_text\":\"Topup Sekarang\",\"button_link\":\"topup\",\"description\":\"Tingkatkan perjalanan gaming Anda dengan penawaran terbaik untuk voucher game, gift card, dan top-up! Baik Anda pemain santai atau pro, GamerStation punya segalanya yang Anda butuhkan untuk meningkatkan gameplay tanpa bikin kantong jebol. Jangan lewatkan \\u2013 mulai petualangan Anda hari ini!\"}}}', 1, NULL, '2023-09-06 04:05:33', '2024-10-27 05:41:07'),
(19, 'blog-section', '{\"language\":{\"en\":{\"social_icon\":\"fas fa-bullhorn\",\"sub_heading\":\"Announcement\",\"heading\":\"Our Recent Announcement\"},\"id\":{\"social_icon\":\"fas fa-bullhorn\",\"sub_heading\":\"Pengumuman\",\"heading\":\"Pengumuman kami\"}}}', 1, NULL, '2023-09-06 11:02:04', '2024-10-27 05:57:38');

-- --------------------------------------------------------

--
-- Table structure for table `subscribes`
--

CREATE TABLE `subscribes` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `temporary_datas`
--

CREATE TABLE `temporary_datas` (
  `id` bigint UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `identifier` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gateway_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `temporary_datas`
--

INSERT INTO `temporary_datas` (`id`, `type`, `identifier`, `gateway_code`, `currency_code`, `data`, `created_at`, `updated_at`) VALUES
(1, 'TOPUPGAME', '0377269079543212', NULL, NULL, '{\"player_id\":[{\"name\":\"player_id\",\"label\":\"Player ID\",\"required\":true,\"type\":\"text\",\"value\":\"766758758687\"}],\"recharge_coin\":[\"10\",\"10\"],\"total_charge\":1.100000000000000088817841970012523233890533447265625,\"payable\":11.0999999999999996447286321199499070644378662109375,\"coin_type\":\"coin\",\"currency\":\"IDR\"}', '2024-10-21 08:23:10', '2024-10-21 08:23:10'),
(2, 'TOPUPGAME', '8919094309532463', NULL, NULL, '{\"player_id\":[{\"name\":\"player_tag\",\"label\":\"Player Tag\",\"required\":true,\"type\":\"text\",\"value\":\"76576576576\"}],\"recharge_coin\":[\"50\",\"5\"],\"total_charge\":1.0500000000000000444089209850062616169452667236328125,\"payable\":6.04999999999999982236431605997495353221893310546875,\"coin_type\":\"gem\",\"currency\":\"IDR\"}', '2024-10-21 09:31:02', '2024-10-21 09:31:02'),
(3, 'TOPUPGAME', '8520392050200695', NULL, NULL, '{\"player_id\":[{\"name\":\"user_id\",\"label\":\"User ID\",\"required\":true,\"type\":\"text\",\"value\":\"8767687687\"}],\"recharge_coin\":[\"30\",\"20\"],\"total_charge\":1.1999999999999999555910790149937383830547332763671875,\"payable\":21.199999999999999289457264239899814128875732421875,\"coin_type\":\"point\",\"currency\":\"IDR\"}', '2024-10-22 01:06:33', '2024-10-22 01:06:33'),
(4, 'TOPUPGAME', '0601498713083133', NULL, NULL, '{\"player_id\":[{\"name\":\"user_id\",\"label\":\"User ID\",\"required\":true,\"type\":\"text\",\"value\":\"7657657657\"}],\"recharge_coin\":[\"30\",\"12\"],\"total_charge\":1.12000000000000010658141036401502788066864013671875,\"payable\":13.120000000000000994759830064140260219573974609375,\"coin_type\":\"coin\",\"currency\":\"IDR\"}', '2024-10-22 03:17:04', '2024-10-22 03:17:04'),
(5, 'TOPUPGAME', '1816924526522320', NULL, NULL, '{\"player_id\":[{\"name\":\"user_id\",\"label\":\"User ID\",\"required\":true,\"type\":\"text\",\"value\":\"7868768768\"}],\"recharge_coin\":[\"20\",\"15\"],\"total_charge\":1.149999999999999911182158029987476766109466552734375,\"payable\":16.14999999999999857891452847979962825775146484375,\"coin_type\":\"point\",\"currency\":\"IDR\"}', '2024-10-27 06:18:48', '2024-10-27 06:18:48'),
(6, 'TOPUPGAME', '8478200419562248', NULL, NULL, '{\"player_id\":[{\"name\":\"player_id\",\"label\":\"Player ID\",\"required\":true,\"type\":\"text\",\"value\":\"87687687687687\"}],\"recharge_coin\":[\"10\",\"1\"],\"total_charge\":1.0100000000000000088817841970012523233890533447265625,\"payable\":2.0099999999999997868371792719699442386627197265625,\"coin_type\":\"diamond\",\"currency\":\"IDR\"}', '2024-10-27 06:21:52', '2024-10-27 06:21:52'),
(7, 'TOPUPGAME', '8518291211416936', NULL, NULL, '{\"player_id\":[{\"name\":\"player_id\",\"label\":\"Player ID\",\"required\":true,\"type\":\"text\",\"value\":\"827349283674834\"}],\"recharge_coin\":[\"10\",\"10\"],\"total_charge\":1.100000000000000088817841970012523233890533447265625,\"payable\":11.0999999999999996447286321199499070644378662109375,\"coin_type\":\"diamond\",\"currency\":\"IDR\"}', '2024-10-30 05:51:54', '2024-10-30 05:51:54'),
(8, 'TOPUPGAME', '9219086705713819', NULL, NULL, '{\"player_id\":[{\"name\":\"user_id\",\"label\":\"User ID\",\"required\":true,\"type\":\"text\",\"value\":\"3233467476567\"}],\"recharge_coin\":[\"20\",\"15\"],\"total_charge\":1.149999999999999911182158029987476766109466552734375,\"payable\":16.14999999999999857891452847979962825775146484375,\"coin_type\":\"point\",\"currency\":\"IDR\"}', '2024-11-01 03:50:35', '2024-11-01 03:50:35'),
(9, 'TOPUPGAME', '3332601134817514', NULL, NULL, '{\"player_id\":[{\"name\":\"user_id\",\"label\":\"User ID\",\"required\":true,\"type\":\"text\",\"value\":\"765756757\"}],\"recharge_coin\":[\"10\",\"20\"],\"total_charge\":1.1999999999999999555910790149937383830547332763671875,\"payable\":21.199999999999999289457264239899814128875732421875,\"coin_type\":\"point\",\"currency\":\"IDR\"}', '2024-11-01 04:58:04', '2024-11-01 04:58:04'),
(10, 'TOPUPGAME', '9559621751331933', NULL, NULL, '{\"player_id\":[{\"name\":\"user_id\",\"label\":\"User ID\",\"required\":true,\"type\":\"text\",\"value\":\"7657657657\"}],\"recharge_coin\":[\"10\",\"20\"],\"total_charge\":1.1999999999999999555910790149937383830547332763671875,\"payable\":21.199999999999999289457264239899814128875732421875,\"coin_type\":\"point\",\"currency\":\"IDR\"}', '2024-11-01 06:42:58', '2024-11-01 06:42:58'),
(11, 'TOPUPGAME', '5898576796735367', NULL, NULL, '{\"player_id\":[{\"name\":\"player_id\",\"label\":\"Player ID\",\"required\":true,\"type\":\"text\",\"value\":\"ashshasa\"}],\"recharge_coin\":[\"10\",\"10\"],\"total_charge\":1.100000000000000088817841970012523233890533447265625,\"payable\":11.0999999999999996447286321199499070644378662109375,\"coin_type\":\"coin\",\"currency\":\"IDR\"}', '2024-11-01 06:43:00', '2024-11-01 06:43:00'),
(12, 'TOPUPGAME', '7074794495686863', NULL, NULL, '{\"player_id\":[{\"name\":\"user_id\",\"label\":\"User ID\",\"required\":true,\"type\":\"text\",\"value\":\"nhhhh\"}],\"recharge_coin\":[\"10\",\"10\"],\"total_charge\":1.100000000000000088817841970012523233890533447265625,\"payable\":11.0999999999999996447286321199499070644378662109375,\"coin_type\":\"point\",\"currency\":\"IDR\"}', '2024-11-01 06:51:25', '2024-11-01 06:51:25');

-- --------------------------------------------------------

--
-- Table structure for table `top_up_games`
--

CREATE TABLE `top_up_games` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `google_store` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apple_store` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input_fields` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `top_up_games`
--

INSERT INTO `top_up_games` (`id`, `title`, `slug`, `description`, `google_store`, `apple_store`, `profile_image`, `cover_image`, `input_fields`, `status`, `created_at`, `updated_at`) VALUES
(1, '8 Ball Pool', '8-ball-pool', 'Top up Modern Combat 5: Blackout Credits and VIP Points in seconds! Just enter your Modern Combat 5: Blackout user ID, select the value of Credits and VIP Points you wish to purchase, complete the payment, and the Credits and VIP Points will be added immediately to your Modern Combat 5: Blackout account.\r\n\r\n                    Pay with convenience using bKash and Robi. There\'s no credit card, registration, or log-in required!', '#', '##', '0e1de3d0-0786-462a-8590-0d5626409070.webp', '79bf3c9f-d34c-4c01-8ed8-ec285db2619d.webp', '{\"input_fields_player_id\":[{\"name\":\"player_id\",\"label\":\"Player ID\",\"required\":true,\"type\":\"text\"},{\"name\":\"client_id\",\"label\":\"User ID\",\"required\":true,\"type\":\"text\"}],\"input_fields_recharge\":[{\"credit_amount\":\"10\",\"type\":\"coin\",\"currency_amount\":\"20\"},{\"credit_amount\":\"20\",\"type\":\"coin\",\"currency_amount\":\"25\"}]}', '1', '2023-09-09 10:10:08', '2023-09-09 10:10:08'),
(2, 'Asphalt 9: Legends', 'asphalt-9-legends', 'Top up Modern Combat 5: Blackout Credits and VIP Points in seconds! Just enter your Modern Combat 5: Blackout user ID, select the value of Credits and VIP Points you wish to purchase, complete the payment, and the Credits and VIP Points will be added immediately to your Modern Combat 5: Blackout account.\r\n\r\n                    Pay with convenience using bKash and Robi. There\'s no credit card, registration, or log-in required!', NULL, NULL, '0be3bdaa-82e3-412f-8709-728254e9f001.webp', '5cbd15a0-efdb-46e9-9cfb-298959b92859.webp', '{\"input_fields_player_id\":[{\"name\":\"player_tag\",\"label\":\"Player Tag\",\"required\":true,\"type\":\"text\"}],\"input_fields_recharge\":[{\"credit_amount\":\"100\",\"type\":\"gem\",\"currency_amount\":\"10\"},{\"credit_amount\":\"50\",\"type\":\"gem\",\"currency_amount\":\"5\"}]}', '1', '2023-09-09 10:11:43', '2023-09-09 10:11:43'),
(3, 'Minecraft', 'minecraft', 'Top up Modern Combat 5: Blackout Credits and VIP Points in seconds! Just enter your Modern Combat 5: Blackout user ID, select the value of Credits and VIP Points you wish to purchase, complete the payment, and the Credits and VIP Points will be added immediately to your Modern Combat 5: Blackout account.\r\n\r\n                    Pay with convenience using bKash and Robi. There\'s no credit card, registration, or log-in required!', NULL, NULL, '5e899850-dae2-4370-a144-576b3fd43caf.webp', '5d48b37b-f196-4827-8b48-94dca78a8f39.webp', '{\"input_fields_player_id\":[{\"name\":\"player_id\",\"label\":\"Player ID\",\"required\":true,\"type\":\"text\"}],\"input_fields_recharge\":[{\"credit_amount\":\"10\",\"type\":\"diamond\",\"currency_amount\":\"1\"},{\"credit_amount\":\"20\",\"type\":\"diamond\",\"currency_amount\":\"2\"}]}', '1', '2023-09-09 10:14:05', '2023-09-09 10:14:05'),
(4, 'World War Heroes', 'world-war-heroes', 'Top up Modern Combat 5: Blackout Credits and VIP Points in seconds! Just enter your Modern Combat 5: Blackout user ID, select the value of Credits and VIP Points you wish to purchase, complete the payment, and the Credits and VIP Points will be added immediately to your Modern Combat 5: Blackout account.\r\n\r\n                    Pay with convenience using bKash and Robi. There\'s no credit card, registration, or log-in required!', NULL, NULL, '281985ef-6f62-49f0-b4ee-ed102228a6da.webp', '2474840d-a5a4-4aa7-bff9-6e574a1232f2.webp', '{\"input_fields_player_id\":[{\"name\":\"user_id\",\"label\":\"User ID\",\"required\":true,\"type\":\"text\"}],\"input_fields_recharge\":[{\"credit_amount\":\"10\",\"type\":\"point\",\"currency_amount\":\"20\"},{\"credit_amount\":\"20\",\"type\":\"point\",\"currency_amount\":\"15\"},{\"credit_amount\":\"30\",\"type\":\"point\",\"currency_amount\":\"20\"}]}', '1', '2023-09-09 10:17:09', '2023-09-09 10:17:09'),
(5, 'Mobile Legends', 'mobile-legends', 'Top up Modern Combat 5: Blackout Credits and VIP Points in seconds! Just enter your Modern Combat 5: Blackout user ID, select the value of Credits and VIP Points you wish to purchase, complete the payment, and the Credits and VIP Points will be added immediately to your Modern Combat 5: Blackout account.\r\n\r\n                    Pay with convenience using bKash and Robi. There\'s no credit card, registration, or log-in required!', '#', '##', '50513084-976b-4b67-9ff7-e06749698ac5.webp', '93c3ae25-13f3-40af-8005-4b839168e4f2.webp', '{\"input_fields_player_id\":[{\"name\":\"player_id\",\"label\":\"Player ID\",\"required\":true,\"type\":\"text\"}],\"input_fields_recharge\":[{\"credit_amount\":\"10\",\"type\":\"code\",\"currency_amount\":\"5\"},{\"credit_amount\":\"20\",\"type\":\"code\",\"currency_amount\":\"8\"},{\"credit_amount\":\"30\",\"type\":\"code\",\"currency_amount\":\"15\"}]}', '1', '2023-09-09 10:18:42', '2023-09-09 10:18:42'),
(6, 'Top Eleven', 'top-eleven', 'Top up Modern Combat 5: Blackout Credits and VIP Points in seconds! Just enter your Modern Combat 5: Blackout user ID, select the value of Credits and VIP Points you wish to purchase, complete the payment, and the Credits and VIP Points will be added immediately to your Modern Combat 5: Blackout account.\r\n\r\n                    Pay with convenience using bKash and Robi. There\'s no credit card, registration, or log-in required!', NULL, NULL, '58024549-9244-40bc-85a7-ef57158368fa.webp', '4a8acd2b-6e82-40ba-be0a-879dc0e91234.webp', '{\"input_fields_player_id\":[{\"name\":\"user_id\",\"label\":\"User ID\",\"required\":true,\"type\":\"text\"}],\"input_fields_recharge\":[{\"credit_amount\":\"5\",\"type\":\"gem\",\"currency_amount\":\"10\"},{\"credit_amount\":\"10\",\"type\":\"gem\",\"currency_amount\":\"15\"}]}', '1', '2023-09-09 10:20:03', '2023-09-09 10:20:03'),
(7, 'Grand Theft Auto V', 'grand-theft-auto-v', 'Top up Modern Combat 5: Blackout Credits and VIP Points in seconds! Just enter your Modern Combat 5: Blackout user ID, select the value of Credits and VIP Points you wish to purchase, complete the payment, and the Credits and VIP Points will be added immediately to your Modern Combat 5: Blackout account.\r\n\r\n                    Pay with convenience using bKash and Robi. There\'s no credit card, registration, or log-in required!', NULL, NULL, 'f8d63484-a3cf-4cff-b131-66eb5a4e3b2d.webp', '1d02ff66-3e51-4da8-9557-5f455b9f7ebb.webp', '{\"input_fields_player_id\":[{\"name\":\"user_id\",\"label\":\"User ID\",\"required\":true,\"type\":\"text\"}],\"input_fields_recharge\":[{\"credit_amount\":\"5\",\"type\":\"credit\",\"currency_amount\":\"10\"},{\"credit_amount\":\"10\",\"type\":\"credit\",\"currency_amount\":\"8\"},{\"credit_amount\":\"20\",\"type\":\"credit\",\"currency_amount\":\"12\"}]}', '1', '2023-09-09 10:21:13', '2023-09-09 10:21:13'),
(8, 'Modern Strike', 'modern-strike', 'Top up Modern Combat 5: Blackout Credits and VIP Points in seconds! Just enter your Modern Combat 5: Blackout user ID, select the value of Credits and VIP Points you wish to purchase, complete the payment, and the Credits and VIP Points will be added immediately to your Modern Combat 5: Blackout account.\r\n\r\n                    Pay with convenience using bKash and Robi. There\'s no credit card, registration, or log-in required!', '#', '##', '273f96d0-f7bd-4ee9-8838-8a525c9332b4.webp', '98bb2eba-2e22-4e52-93e5-a1476f0eaa97.webp', '{\"input_fields_player_id\":[{\"name\":\"user_id\",\"label\":\"User ID\",\"required\":true,\"type\":\"text\"}],\"input_fields_recharge\":[{\"credit_amount\":\"10\",\"type\":\"coin\",\"currency_amount\":\"5\"},{\"credit_amount\":\"20\",\"type\":\"coin\",\"currency_amount\":\"8\"},{\"credit_amount\":\"30\",\"type\":\"coin\",\"currency_amount\":\"12\"}]}', '1', '2023-09-09 10:22:36', '2023-09-09 10:22:36'),
(9, 'Ludo Club', 'ludo-club', 'The value of Credits and VIP Points you wish to purchase, complete the payment, and the Credits and VIP Points will be added immediately to your Modern Combat 5: Blackout account. Pay with convenience using bKash and Robi. There\'s no credit card, registration, or log-in required!', NULL, NULL, 'bac69339-1f2a-4757-a7fb-c79ca5931b56.webp', '16746b1d-bbe2-46fd-8e2c-cc6f6eb42d51.webp', '{\"input_fields_player_id\":[{\"name\":\"user_id\",\"label\":\"User ID\",\"required\":true,\"type\":\"text\"}],\"input_fields_recharge\":[{\"credit_amount\":\"10\",\"type\":\"coin\",\"currency_amount\":\"100\"}]}', '1', '2023-09-14 10:43:16', '2023-09-14 10:43:16'),
(10, 'Carrom Gold', 'carrom-gold', 'Just enter your Modern Combat 5: Blackout user ID, select the value of Credits and VIP Points you wish to purchase, complete the payment, and the Credits and VIP Points will be added immediately to your Modern Combat 5: Blackout account. Pay with convenience using bKash and Robi. There\'s no credit card, registration, or log-in required!', NULL, NULL, '9d50b10e-639c-4cb5-96e3-8b1dcb90acbe.webp', 'b9f576f7-714a-4b96-a8c5-5a2928edb457.webp', '{\"input_fields_player_id\":[{\"name\":\"player_id\",\"label\":\"Player ID\",\"required\":true,\"type\":\"text\"}],\"input_fields_recharge\":[{\"credit_amount\":\"10\",\"type\":\"diamond\",\"currency_amount\":\"10\"}]}', '1', '2023-09-14 10:44:34', '2023-09-14 10:44:34'),
(11, 'Be The King: Judge Destiny', 'be-the-king-judge-destiny', 'Complete the payment, and the Credits and VIP Points will be added immediately to your Modern Combat 5: Blackout account. Pay with convenience using bKash and Robi. There\'s no credit card, registration, or log-in required!', NULL, NULL, '92727b32-ece7-4096-91f7-ed18666af633.webp', '0a068a2b-1b6f-490e-a5f7-d961bf928acc.webp', '{\"input_fields_player_id\":[{\"name\":\"user_id\",\"label\":\"User ID\",\"required\":true,\"type\":\"text\"}],\"input_fields_recharge\":[{\"credit_amount\":\"10\",\"type\":\"point\",\"currency_amount\":\"10\"}]}', '1', '2023-09-14 10:45:55', '2023-09-14 10:45:55'),
(12, 'Clash of Clans', 'clash-of-clans', 'Points you wish to purchase, complete the payment, and the Credits and VIP Points will be added immediately to your Modern Combat 5: Blackout account. Pay with convenience using bKash and Robi. There\'s no credit card, registration, or log-in required!', NULL, NULL, 'd6a9159b-e747-4395-b39d-0313995a20cb.webp', '91d7ea64-108f-4554-b738-8777b016a953.webp', '{\"input_fields_player_id\":[{\"name\":\"player_id\",\"label\":\"Player ID\",\"required\":true,\"type\":\"text\"}],\"input_fields_recharge\":[{\"credit_amount\":\"10\",\"type\":\"coin\",\"currency_amount\":\"10\"}]}', '1', '2023-09-14 10:46:49', '2023-09-14 10:46:49');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint UNSIGNED NOT NULL,
  `admin_id` bigint UNSIGNED DEFAULT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `user_wallet_id` bigint UNSIGNED DEFAULT NULL,
  `payment_gateway_currency_id` bigint UNSIGNED DEFAULT NULL,
  `type` enum('ADD-MONEY','ADD-BALANCE','ADD-SUBTRACT-BALANCE','TOP-UP') COLLATE utf8mb4_unicode_ci NOT NULL,
  `trx_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Transaction ID',
  `request_amount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `payable` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `available_balance` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `remark` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `reject_reason` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '1: Review Payment, 2: Pending, 3: Confirm Payment, 4: On Hold, 5: Settled, 6: Completed, 7: Canceled, 8: Failed, 9: Refunded, 10: Delayed',
  `attribute` enum('SEND','RECEIVED') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `callback_ref` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaction_charges`
--

CREATE TABLE `transaction_charges` (
  `id` bigint UNSIGNED NOT NULL,
  `transaction_id` bigint UNSIGNED NOT NULL,
  `percent_charge` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `fixed_charge` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `total_charge` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaction_devices`
--

CREATE TABLE `transaction_devices` (
  `id` bigint UNSIGNED NOT NULL,
  `transaction_id` bigint UNSIGNED NOT NULL,
  `ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mac` varchar(17) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `browser` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `os` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timezone` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaction_settings`
--

CREATE TABLE `transaction_settings` (
  `id` bigint UNSIGNED NOT NULL,
  `admin_id` bigint UNSIGNED NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fixed_charge` decimal(8,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `percent_charge` decimal(8,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `min_limit` decimal(8,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `max_limit` decimal(8,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `monthly_limit` decimal(8,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `daily_limit` decimal(8,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaction_settings`
--

INSERT INTO `transaction_settings` (`id`, `admin_id`, `slug`, `title`, `fixed_charge`, `percent_charge`, `min_limit`, `max_limit`, `monthly_limit`, `daily_limit`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'topup', 'Game Top Up Charges', 1.00, 1.00, 0.00, 50000.00, 50000.00, 5000.00, 1, NULL, '2023-06-17 23:18:11');

-- --------------------------------------------------------

--
-- Table structure for table `useful_links`
--

CREATE TABLE `useful_links` (
  `id` bigint UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `editable` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `useful_links`
--

INSERT INTO `useful_links` (`id`, `type`, `title`, `slug`, `url`, `content`, `status`, `editable`, `created_at`, `updated_at`) VALUES
(1, 'UNKNOWN', '{\"language\":{\"en\":{\"title\":\"Privacy Policy\"},\"es\":{\"title\":\"pol\\u00edtica de privacidad\"},\"ar\":{\"title\":\"\\u0633\\u064a\\u0627\\u0633\\u0629 \\u0627\\u0644\\u062e\\u0635\\u0648\\u0635\\u064a\\u0629\"}}}', 'privacy-policy', 'privacy-policy', '{\"language\":{\"en\":{\"content\":\"<h3><strong>The standard Lorem Ipsum passage, used since the 1500s<\\/strong><\\/h3><p>\\\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\\\"<\\/p><h3><strong>Section 1.10.32 of \\\"de Finibus Bonorum et Malorum\\\", written by Cicero in 45 BC<\\/strong><\\/h3><p>\\\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\\\"<\\/p><h3><strong>1914 translation by H. Rackham<\\/strong><\\/h3><p>\\\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\\\"<\\/p><h3><strong>Section 1.10.33 of \\\"de Finibus Bonorum et Malorum\\\", written by Cicero in 45 BC<\\/strong><\\/h3><p>\\\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\\\"<\\/p><h3><strong>1914 translation by H. Rackham<\\/strong><\\/h3><p>\\\"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\\\"<\\/p>\"},\"es\":{\"content\":\"<p>El pasaje est\\u00e1ndar de Lorem Ipsum, utilizado desde el siglo XVI.<\\/p><p>\\\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\\\"<\\/p><p>Secci\\u00f3n 1.10.32 de \\\"de Finibus Bonorum et Malorum\\\", escrito por Cicer\\u00f3n en el 45 a.C.<\\/p><p>\\\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi arquitecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam , quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\\\"<\\/p><p>Traducci\\u00f3n de 1914 de H. Rackham<\\/p><p>\\\"Pero debo explicarles c\\u00f3mo naci\\u00f3 toda esta idea equivocada de denunciar el placer y alabar el dolor y les dar\\u00e9 una descripci\\u00f3n completa del sistema y les expondr\\u00e9 las verdaderas ense\\u00f1anzas del gran explorador de la verdad, el maestro constructor de la verdad. la felicidad humana. Nadie rechaza, desagrada o evita el placer mismo, porque es placer, sino porque quien no sabe buscarlo racionalmente encuentra consecuencias extremadamente dolorosas. Tampoco hay nadie que ame, persiga o desee obtiene el dolor por s\\u00ed mismo, porque es dolor, sino porque ocasionalmente se dan circunstancias en las que el trabajo y el dolor pueden proporcionarle alg\\u00fan gran placer. Para tomar un ejemplo trivial, \\u00bfqui\\u00e9n de nosotros emprende alguna vez un ejercicio f\\u00edsico laborioso, excepto para obtener de \\u00e9l alguna ventaja? Pero \\u00bfqui\\u00e9n tiene derecho a criticar a un hombre que elige disfrutar de un placer que no tiene consecuencias molestas, o a uno que evita un dolor que no produce ning\\u00fan placer resultante?<\\/p><p>Secci\\u00f3n 1.10.33 de \\\"de Finibus Bonorum et Malorum\\\", escrito por Cicer\\u00f3n en el 45 a.C.<\\/p><p>\\\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distintivo. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas asumirda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\\\"<\\/p><p>Traducci\\u00f3n de 1914 de H. Rackham<\\/p><p>\\\"Por otra parte, denunciamos con justa indignaci\\u00f3n y disgusto a los hombres que est\\u00e1n tan enga\\u00f1ados y desmoralizados por los encantos del placer del momento, tan cegados por el deseo, que no pueden prever el dolor y los problemas que seguramente seguir\\u00e1n; e igual La culpa es de quienes fallan en su deber por debilidad de voluntad, lo que es lo mismo que decir por huir del trabajo y del dolor. Estos casos son perfectamente simples y f\\u00e1ciles de distinguir. En una hora libre, cuando nuestro poder de elecci\\u00f3n est\\u00e1 libre y Cuando nada impide que podamos hacer lo que m\\u00e1s nos gusta, todo placer debe ser bienvenido y todo dolor evitado, pero en determinadas circunstancias y debido a las exigencias del deber o de las obligaciones de los negocios, ocurrir\\u00e1 frecuentemente que los placeres deban ser repudiados. y las molestias aceptadas. El hombre sabio, por tanto, siempre se atiene en estas materias a este principio de selecci\\u00f3n: rechaza los placeres para asegurarse otros placeres mayores, o bien soporta dolores para evitar dolores peores.\\\"<\\/p>\"},\"ar\":{\"content\":\"<p>\\u0645\\u0642\\u0637\\u0639 \\u0644\\u0648\\u0631\\u064a\\u0645 \\u0625\\u064a\\u0628\\u0633\\u0648\\u0645 \\u0627\\u0644\\u0642\\u064a\\u0627\\u0633\\u064a\\u060c \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 \\u0645\\u0646\\u0630 \\u0627\\u0644\\u0642\\u0631\\u0646 \\u0627\\u0644\\u0633\\u0627\\u062f\\u0633 \\u0639\\u0634\\u0631<\\/p><p>\\\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut Labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco Laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in rerehenderit in voluptate \\\"\\\"\\\"\\\"<\\/p><p>\\u0627\\u0644\\u0642\\u0633\\u0645 1.10.32 \\u0645\\u0646 \\\"de Finibus Bonorum et Malorum\\\"\\u060c \\u0643\\u062a\\u0628\\u0647 \\u0634\\u064a\\u0634\\u0631\\u0648\\u0646 \\u0641\\u064a 45 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u0645\\u064a\\u0644\\u0627\\u062f<\\/p><p>\\\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium\\u060c totam rem aperiam\\u060c eaque ipsa quae ab illo inventre veritatis \\u0648\\u0634\\u0628\\u0647 \\u0627\\u0644\\u0645\\u0647\\u0646\\u062f\\u0633 \\u0627\\u0644\\u0645\\u0639\\u0645\\u0627\\u0631\\u064a Beatae vitae vitae sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit\\u060c s \\u0625\\u062f \\u0643\\u064a\\u0627 \\u0646\\u062a\\u064a\\u062c\\u0629 \\u0644\\u0622\\u0644\\u0627\\u0645 \\u0643\\u0628\\u064a\\u0631\\u0629 \\u0644\\u0627 \\u064a\\u0645\\u0643\\u0646 \\u0623\\u0646 \\u062a\\u062a\\u0631\\u062a\\u0628 \\u0639\\u0644\\u0649 \\u0630\\u0644\\u0643. \\u0625\\u0646\\u064a\\u0645 \\u0625\\u0644\\u0649 \\u0627\\u0644\\u062d\\u062f \\u0627\\u0644\\u0623\\u062f\\u0646\\u0649 \\u0645\\u0646 \\u0627\\u0644\\u0633\\u0645 \\u0647\\u0644 \\u0646\\u0631\\u063a\\u0628 \\u0641\\u064a \\u0645\\u0645\\u0627\\u0631\\u0633\\u0629 \\u0623\\u0639\\u0645\\u0627\\u0644\\u0646\\u0627 \\u0627\\u0644\\u062c\\u0633\\u062f\\u064a\\u0629\\u060c \\u0623\\u0648 \\u0644\\u0627 \\u0646\\u0645\\u0644\\u0643 \\u0623\\u064a \\u0633\\u0627\\u0626\\u0644 \\u0645\\u0646 \\u0623\\u064a \\u0633\\u0644\\u0639\\u0629 \\u0645\\u0643\\u062a\\u0633\\u0628\\u0629\\u061f \\u0647\\u0644 \\u0646\\u0644\\u0648\\u0645 \\u0623\\u0646\\u0641\\u0633\\u0646\\u0627 \\u0623\\u0648 \\u0646\\u0643\\u0631\\u0647 \\u0623\\u0646 \\u0646\\u0631\\u063a\\u0628 \\u0641\\u064a \\u0623\\u0646 \\u064a\\u0643\\u0648\\u0646 \\u0647\\u0646\\u0627\\u0643 \\u0634\\u064a\\u0621 \\u0644\\u0627 \\u064a\\u0636\\u0627\\u064a\\u0642\\u0646\\u0627\\u060c \\u0623\\u0648 \\u0645\\u0627 \\u0627\\u0644\\u0630\\u064a \\u064a\\u062c\\u0639\\u0644\\u0646\\u0627 \\u0646\\u0639\\u0627\\u0646\\u064a \\u0645\\u0646 \\u0627\\u0644\\u0647\\u0631\\u0628 \\u0645\\u0646 \\u062f\\u0648\\u0646 \\u062c\\u062f\\u0648\\u0649\\u061f\\\"<\\/p><p>\\u062a\\u0631\\u062c\\u0645\\u0629 \\u0639\\u0627\\u0645 1914 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 \\u0647\\u0640. \\u0631\\u0627\\u0643\\u0647\\u0627\\u0645<\\/p><p>\\\"\\u0648\\u0644\\u0643\\u0646 \\u064a\\u062c\\u0628 \\u0623\\u0646 \\u0623\\u0634\\u0631\\u062d \\u0644\\u0643 \\u0643\\u064a\\u0641 \\u0648\\u0644\\u062f\\u062a \\u0643\\u0644 \\u0647\\u0630\\u0647 \\u0627\\u0644\\u0641\\u0643\\u0631\\u0629 \\u0627\\u0644\\u062e\\u0627\\u0637\\u0626\\u0629 \\u0627\\u0644\\u0645\\u062a\\u0645\\u062b\\u0644\\u0629 \\u0641\\u064a \\u0625\\u062f\\u0627\\u0646\\u0629 \\u0627\\u0644\\u0644\\u0630\\u0629 \\u0648\\u062a\\u0645\\u062c\\u064a\\u062f \\u0627\\u0644\\u0623\\u0644\\u0645\\u060c \\u0648\\u0633\\u0623\\u0642\\u062f\\u0645 \\u0644\\u0643 \\u0648\\u0635\\u0641\\u064b\\u0627 \\u0643\\u0627\\u0645\\u0644\\u0627\\u064b \\u0644\\u0644\\u0646\\u0638\\u0627\\u0645\\u060c \\u0648\\u0623\\u0634\\u0631\\u062d \\u0627\\u0644\\u062a\\u0639\\u0627\\u0644\\u064a\\u0645 \\u0627\\u0644\\u0641\\u0639\\u0644\\u064a\\u0629 \\u0644\\u0644\\u0645\\u0633\\u062a\\u0643\\u0634\\u0641 \\u0627\\u0644\\u0639\\u0638\\u064a\\u0645 \\u0644\\u0644\\u062d\\u0642\\u064a\\u0642\\u0629\\u060c \\u0648\\u0628\\u0627\\u0646\\u064a \\u0627\\u0644\\u0639\\u0627\\u0644\\u0645 \\u0627\\u0644\\u0639\\u0638\\u064a\\u0645. \\\"\\u0627\\u0644\\u0633\\u0639\\u0627\\u062f\\u0629 \\u0627\\u0644\\u0625\\u0646\\u0633\\u0627\\u0646\\u064a\\u0629. \\u0644\\u0627 \\u0623\\u062d\\u062f \\u064a\\u0631\\u0641\\u0636 \\u0623\\u0648 \\u064a\\u0643\\u0631\\u0647 \\u0623\\u0648 \\u064a\\u062a\\u062c\\u0646\\u0628 \\u0627\\u0644\\u0645\\u062a\\u0639\\u0629 \\u0646\\u0641\\u0633\\u0647\\u0627\\u060c \\u0644\\u0623\\u0646\\u0647\\u0627 \\u0645\\u062a\\u0639\\u0629\\u060c \\u0648\\u0644\\u0643\\u0646 \\u0644\\u0623\\u0646 \\u0623\\u0648\\u0644\\u0626\\u0643 \\u0627\\u0644\\u0630\\u064a\\u0646 \\u0644\\u0627 \\u064a\\u0639\\u0631\\u0641\\u0648\\u0646 \\u0643\\u064a\\u0641\\u064a\\u0629 \\u0627\\u0644\\u0633\\u0639\\u064a \\u0648\\u0631\\u0627\\u0621 \\u0627\\u0644\\u0645\\u062a\\u0639\\u0629 \\u0628\\u0639\\u0642\\u0644\\u0627\\u0646\\u064a\\u0629 \\u064a\\u0648\\u0627\\u062c\\u0647\\u0648\\u0646 \\u0639\\u0648\\u0627\\u0642\\u0628 \\u0645\\u0624\\u0644\\u0645\\u0629 \\u0644\\u0644\\u063a\\u0627\\u064a\\u0629. \\u0648\\u0644\\u0627 \\u064a\\u0648\\u062c\\u062f \\u0645\\u0631\\u0629 \\u0623\\u062e\\u0631\\u0649 \\u0623\\u064a \\u0634\\u062e\\u0635 \\u064a\\u062d\\u0628 \\u0623\\u0648 \\u064a\\u0633\\u0639\\u0649 \\u0623\\u0648 \\u064a\\u0631\\u063a\\u0628 \\u0641\\u064a \\u0630\\u0644\\u0643\\\" \\u064a\\u062d\\u0635\\u0644 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u0623\\u0644\\u0645 \\u0641\\u064a \\u062d\\u062f \\u0630\\u0627\\u062a\\u0647\\u060c \\u0644\\u0623\\u0646\\u0647 \\u0623\\u0644\\u0645\\u060c \\u0648\\u0644\\u0643\\u0646 \\u0644\\u0623\\u0646\\u0647 \\u0641\\u064a \\u0628\\u0639\\u0636 \\u0627\\u0644\\u0623\\u062d\\u064a\\u0627\\u0646 \\u062a\\u062d\\u062f\\u062b \\u0638\\u0631\\u0648\\u0641 \\u064a\\u0645\\u0643\\u0646 \\u0623\\u0646 \\u064a\\u062c\\u0644\\u0628 \\u0641\\u064a\\u0647\\u0627 \\u0627\\u0644\\u0643\\u062f\\u062d \\u0648\\u0627\\u0644\\u0623\\u0644\\u0645 \\u0628\\u0639\\u0636 \\u0627\\u0644\\u0645\\u062a\\u0639\\u0629 \\u0627\\u0644\\u0639\\u0638\\u064a\\u0645\\u0629.\\u0644\\u0646\\u0623\\u062e\\u0630 \\u0645\\u062b\\u0627\\u0644\\u064b\\u0627 \\u062a\\u0627\\u0641\\u0647\\u064b\\u0627\\u060c \\u0645\\u0646 \\u0645\\u0646\\u0627 \\u064a\\u0642\\u0648\\u0645 \\u0628\\u062a\\u0645\\u0631\\u064a\\u0646 \\u0628\\u062f\\u0646\\u064a \\u0634\\u0627\\u0642\\u060c \\u0625\\u0644\\u0627 \\u0644\\u0644\\u062d\\u0635\\u0648\\u0644 \\u0639\\u0644\\u0649 \\u0628\\u0639\\u0636 \\u0627\\u0644\\u0641\\u0627\\u0626\\u062f\\u0629 \\u0645\\u0646\\u0647\\u061f \\u0648\\u0644\\u0643\\u0646 \\u0645\\u0646 \\u0644\\u0647 \\u0627\\u0644\\u062d\\u0642 \\u0641\\u064a \\u0623\\u0646 \\u064a\\u0644\\u0648\\u0645 \\u0631\\u062c\\u0644\\u0627\\u064b \\u0627\\u062e\\u062a\\u0627\\u0631 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0645\\u062a\\u0627\\u0639 \\u0628\\u0644\\u0630\\u0629 \\u0644\\u0627 \\u0639\\u0648\\u0627\\u0642\\u0628 \\u0644\\u0647\\u0627\\u060c \\u0623\\u0648 \\u0631\\u062c\\u0644\\u0627\\u064b \\u062a\\u062c\\u0646\\u0628 \\u0627\\u0644\\u0623\\u0644\\u0645 \\u0627\\u0644\\u0630\\u064a \\u0644\\u0627 \\u064a\\u0646\\u062a\\u062c \\u0639\\u0646\\u0647 \\u0645\\u062a\\u0639\\u0629\\u061f<\\/p><p>\\u0627\\u0644\\u0642\\u0633\\u0645 1.10.33 \\u0645\\u0646 \\\"de Finibus Bonorum et Malorum\\\"\\u060c \\u0643\\u062a\\u0628\\u0647 \\u0634\\u064a\\u0634\\u0631\\u0648\\u0646 \\u0641\\u064a 45 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u0645\\u064a\\u0644\\u0627\\u062f<\\/p><p>\\\"At vero eos et acusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque \\u0641\\u0627\\u0633\\u062f quos dolores \\u0648 quas molestias \\u0628\\u0627\\u0633\\u062a\\u062b\\u0646\\u0627\\u0621 \\u0633\\u064a\\u0646\\u062a occaecati cupiditate \\u063a\\u064a\\u0631 \\u0645\\u0642\\u062f\\u0645\\u060c similique sunt in culpa qui office deserunt mollitia animi\\u060c id est Laborum et dolorum fuga. \\u0648\\u0647\\u0627 \\u0645\\u0634\\u0631\\u0648\\u0628 \\u0627\\u0644\\u0631\\u0648\\u0645 \\u0627\\u0644\\u0648\\u0642\\u062a \\u0627\\u0644\\u0645\\u062a\\u0627\\u062d \\u0633\\u0647\\u0644 \\u0644\\u0644\\u063a\\u0627\\u064a\\u0629\\u060c \\u0645\\u0639 \\u0627\\u0644\\u062d\\u0644 \\u0627\\u0644\\u062c\\u062f\\u064a\\u062f \\u0647\\u0648 \\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0627\\u062e\\u062a\\u064a\\u0627\\u0631\\u064a \\u0644\\u0627 \\u064a\\u0639\\u064a\\u0642 \\u0627\\u0644\\u062d\\u062f \\u0627\\u0644\\u0623\\u062f\\u0646\\u0649 \\u0645\\u0646 \\u0627\\u0644\\u062d\\u062f \\u0627\\u0644\\u0623\\u0642\\u0635\\u0649 \\u0627\\u0644\\u0630\\u064a \\u064a\\u0645\\u0643\\u0646 \\u0623\\u0646 \\u064a\\u0648\\u0627\\u062c\\u0647\\u0647\\u060c \\u0643\\u0644 \\u0627\\u0644\\u0631\\u063a\\u0628\\u0627\\u062a \\u0627\\u0644\\u0645\\u0641\\u062a\\u0631\\u0636\\u0629\\u060c \\u0643\\u0644 \\u0627\\u0644\\u0623\\u0644\\u0645 \\u0627\\u0644\\u0645\\u0624\\u0644\\u0645. ut et voluptates repudiandae sint et molestiae not recusandae.<\\/p><p>\\u062a\\u0631\\u062c\\u0645\\u0629 \\u0639\\u0627\\u0645 1914 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 \\u0647\\u0640. \\u0631\\u0627\\u0643\\u0647\\u0627\\u0645<\\/p><p>\\\"\\u0645\\u0646 \\u0646\\u0627\\u062d\\u064a\\u0629 \\u0623\\u062e\\u0631\\u0649\\u060c \\u0641\\u0625\\u0646\\u0646\\u0627 \\u0646\\u062f\\u064a\\u0646 \\u0628\\u0633\\u062e\\u0637 \\u0639\\u0627\\u062f\\u0644 \\u0648\\u0646\\u0643\\u0631\\u0647 \\u0627\\u0644\\u0631\\u062c\\u0627\\u0644 \\u0627\\u0644\\u0630\\u064a\\u0646 \\u062e\\u062f\\u0639\\u062a\\u0647\\u0645 \\u0633\\u062d\\u0631 \\u0645\\u062a\\u0639\\u0629 \\u0647\\u0630\\u0647 \\u0627\\u0644\\u0644\\u062d\\u0638\\u0629 \\u0648\\u0623\\u062d\\u0628\\u0637\\u062a\\u0647\\u0645\\u060c \\u0648\\u0623\\u0639\\u0645\\u062a\\u0647\\u0645 \\u0627\\u0644\\u0631\\u063a\\u0628\\u0629\\u060c \\u0644\\u062f\\u0631\\u062c\\u0629 \\u0623\\u0646\\u0647\\u0645 \\u0644\\u0627 \\u064a\\u0633\\u062a\\u0637\\u064a\\u0639\\u0648\\u0646 \\u0627\\u0644\\u062a\\u0646\\u0628\\u0624 \\u0628\\u0627\\u0644\\u0623\\u0644\\u0645 \\u0648\\u0627\\u0644\\u0645\\u062a\\u0627\\u0639\\u0628 \\u0627\\u0644\\u062a\\u064a \\u0644\\u0627 \\u0628\\u062f \\u0623\\u0646 \\u062a\\u062a\\u0631\\u062a\\u0628 \\u0639\\u0644\\u0649 \\u0630\\u0644\\u0643\\u061b \\u0648\\u0639\\u0644\\u0649 \\u0642\\u062f\\u0645 \\u0627\\u0644\\u0645\\u0633\\u0627\\u0648\\u0627\\u0629 \\\"\\u0627\\u0644\\u0644\\u0648\\u0645 \\u064a\\u0642\\u0639 \\u0639\\u0644\\u0649 \\u0623\\u0648\\u0644\\u0626\\u0643 \\u0627\\u0644\\u0630\\u064a\\u0646 \\u064a\\u0641\\u0634\\u0644\\u0648\\u0646 \\u0641\\u064a \\u0623\\u062f\\u0627\\u0621 \\u0648\\u0627\\u062c\\u0628\\u0647\\u0645 \\u0628\\u0633\\u0628\\u0628 \\u0636\\u0639\\u0641 \\u0627\\u0644\\u0625\\u0631\\u0627\\u062f\\u0629\\u060c \\u0648\\u0647\\u0648 \\u0646\\u0641\\u0633 \\u0627\\u0644\\u0642\\u0648\\u0644 \\u0645\\u0646 \\u062e\\u0644\\u0627\\u0644 \\u0627\\u0644\\u062a\\u0642\\u0644\\u0635 \\u0645\\u0646 \\u0627\\u0644\\u0643\\u062f\\u062d \\u0648\\u0627\\u0644\\u0623\\u0644\\u0645. \\u0647\\u0630\\u0647 \\u0627\\u0644\\u062d\\u0627\\u0644\\u0627\\u062a \\u0628\\u0633\\u064a\\u0637\\u0629 \\u062a\\u0645\\u0627\\u0645\\u0627 \\u0648\\u0633\\u0647\\u0644\\u0629 \\u0627\\u0644\\u062a\\u0645\\u064a\\u064a\\u0632. \\u0641\\u064a \\u0633\\u0627\\u0639\\u0629 \\u062d\\u0631\\u0629\\u060c \\u0639\\u0646\\u062f\\u0645\\u0627 \\u062a\\u0643\\u0648\\u0646 \\u0642\\u0648\\u062a\\u0646\\u0627 \\u0641\\u064a \\u0627\\u0644\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u063a\\u064a\\u0631 \\u0645\\u0642\\u064a\\u062f\\u0629 \\u0648 \\\"\\u0639\\u0646\\u062f\\u0645\\u0627 \\u0644\\u0627 \\u0634\\u064a\\u0621 \\u064a\\u0645\\u0646\\u0639\\u0646\\u0627 \\u0645\\u0646 \\u0627\\u0644\\u0642\\u064a\\u0627\\u0645 \\u0628\\u0645\\u0627 \\u0646\\u062d\\u0628 \\u0623\\u0643\\u062b\\u0631\\u060c \\u064a\\u062c\\u0628 \\u0627\\u0644\\u062a\\u0631\\u062d\\u064a\\u0628 \\u0628\\u0643\\u0644 \\u0645\\u062a\\u0639\\u0629 \\u0648\\u062a\\u062c\\u0646\\u0628 \\u0643\\u0644 \\u0623\\u0644\\u0645. \\u0648\\u0644\\u0643\\u0646 \\u0641\\u064a \\u0638\\u0631\\u0648\\u0641 \\u0645\\u0639\\u064a\\u0646\\u0629\\u060c \\u0648\\u0628\\u0633\\u0628\\u0628 \\u0645\\u0637\\u0627\\u0644\\u0628\\u0627\\u062a \\u0627\\u0644\\u0648\\u0627\\u062c\\u0628 \\u0623\\u0648 \\u0627\\u0644\\u062a\\u0632\\u0627\\u0645\\u0627\\u062a \\u0627\\u0644\\u0639\\u0645\\u0644\\u060c \\u0641\\u0625\\u0646\\u0647 \\u064a\\u062d\\u062f\\u062b \\u0641\\u064a \\u0643\\u062b\\u064a\\u0631 \\u0645\\u0646 \\u0627\\u0644\\u0623\\u062d\\u064a\\u0627\\u0646 \\u0623\\u0646\\u0647 \\u064a\\u062c\\u0628 \\u0627\\u0644\\u062a\\u062e\\u0644\\u064a \\u0639\\u0646 \\u0627\\u0644\\u0645\\u0644\\u0630\\u0627\\u062a \\\"\\u0648\\u0627\\u0644\\u0645\\u0636\\u0627\\u064a\\u0642\\u0627\\u062a \\u0645\\u0642\\u0628\\u0648\\u0644\\u0629. \\u0648\\u0644\\u0630\\u0644\\u0643 \\u0641\\u0625\\u0646 \\u0627\\u0644\\u0631\\u062c\\u0644 \\u0627\\u0644\\u062d\\u0643\\u064a\\u0645 \\u064a\\u062a\\u0645\\u0633\\u0643 \\u062f\\u0627\\u0626\\u0645\\u064b\\u0627 \\u0641\\u064a \\u0647\\u0630\\u0647 \\u0627\\u0644\\u0623\\u0645\\u0648\\u0631 \\u0628\\u0645\\u0628\\u062f\\u0623 \\u0627\\u0644\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0647\\u0630\\u0627: \\u0641\\u0647\\u0648 \\u064a\\u0631\\u0641\\u0636 \\u0627\\u0644\\u0645\\u0644\\u0630\\u0627\\u062a \\u0644\\u064a\\u0636\\u0645\\u0646 \\u0645\\u0644\\u0630\\u0627\\u062a \\u0623\\u062e\\u0631\\u0649 \\u0623\\u0643\\u0628\\u0631\\u060c \\u0623\\u0648 \\u064a\\u062a\\u062d\\u0645\\u0644 \\u0627\\u0644\\u0622\\u0644\\u0627\\u0645 \\u0644\\u062a\\u062c\\u0646\\u0628 \\u0622\\u0644\\u0627\\u0645 \\u0623\\u0633\\u0648\\u0623\\\".<\\/p>\"}}}', 1, 1, '2023-06-20 04:32:20', '2023-10-29 04:21:26'),
(2, 'UNKNOWN', '{\"language\":{\"en\":{\"title\":\"Terms and Condition\"},\"es\":{\"title\":\"T\\u00e9rminos y Condiciones\"},\"ar\":{\"title\":\"\\u0623\\u062d\\u0643\\u0627\\u0645 \\u0648\\u0634\\u0631\\u0648\\u0637\"}}}', 'terms-of-use', 'terms-of-use', '{\"language\":{\"en\":{\"content\":\"<h3><strong>The standard Lorem Ipsum passage, used since the 1500s<\\/strong><\\/h3><p>\\\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\\\"<\\/p><h3><strong>Section 1.10.32 of \\\"de Finibus Bonorum et Malorum\\\", written by Cicero in 45 BC<\\/strong><\\/h3><p>\\\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\\\"<\\/p><h3><strong>1914 translation by H. Rackham<\\/strong><\\/h3><p>\\\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\\\"<\\/p><h3><strong>Section 1.10.33 of \\\"de Finibus Bonorum et Malorum\\\", written by Cicero in 45 BC<\\/strong><\\/h3><p>\\\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\\\"<\\/p><h3><strong>1914 translation by Sabbir Mia<\\/strong><\\/h3><p>\\\"On the other hand, we denounce with righteousgnation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\\\"<\\/p>\"},\"es\":{\"content\":\"<p>El pasaje est\\u00e1ndar de Lorem Ipsum, utilizado desde el siglo XVI.<\\/p><p>\\\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\\\"<\\/p><p>Secci\\u00f3n 1.10.32 de \\\"de Finibus Bonorum et Malorum\\\", escrito por Cicer\\u00f3n en el 45 a.C.<\\/p><p>\\\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi arquitecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam , quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\\\"<\\/p><p>Traducci\\u00f3n de 1914 de H. Rackham<\\/p><p>\\\"Pero debo explicarles c\\u00f3mo naci\\u00f3 toda esta idea equivocada de denunciar el placer y alabar el dolor y les dar\\u00e9 una descripci\\u00f3n completa del sistema y les expondr\\u00e9 las verdaderas ense\\u00f1anzas del gran explorador de la verdad, el maestro constructor de la verdad. la felicidad humana. Nadie rechaza, desagrada o evita el placer mismo, porque es placer, sino porque quien no sabe buscarlo racionalmente encuentra consecuencias extremadamente dolorosas. Tampoco hay nadie que ame, persiga o desee obtiene el dolor por s\\u00ed mismo, porque es dolor, sino porque ocasionalmente se dan circunstancias en las que el trabajo y el dolor pueden proporcionarle alg\\u00fan gran placer. Para tomar un ejemplo trivial, \\u00bfqui\\u00e9n de nosotros emprende alguna vez un ejercicio f\\u00edsico laborioso, excepto para obtener de \\u00e9l alguna ventaja? Pero \\u00bfqui\\u00e9n tiene derecho a criticar a un hombre que elige disfrutar de un placer que no tiene consecuencias molestas, o a uno que evita un dolor que no produce ning\\u00fan placer resultante?<\\/p><p>Secci\\u00f3n 1.10.33 de \\\"de Finibus Bonorum et Malorum\\\", escrito por Cicer\\u00f3n en el 45 a.C.<\\/p><p>\\\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distintivo. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas asumirda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\\\"<\\/p><p>Traducci\\u00f3n de 1914 de Sabbir Mia<\\/p><p>\\\"Por otro lado, denunciamos con justificaci\\u00f3n y desagrado a los hombres que est\\u00e1n tan enga\\u00f1ados y desmoralizados por los encantos del placer del momento, tan cegados por el deseo, que no pueden prever el dolor y los problemas que seguramente seguir\\u00e1n; e igual culpa pertenece a aquellos que fallan en su deber por debilidad de voluntad, que es lo mismo que decir por huir del trabajo y del dolor. Estos casos son perfectamente simples y f\\u00e1ciles de distinguir. En una hora libre, cuando nuestro poder de elecci\\u00f3n est\\u00e1 libre y cuando nada impide que podamos hacer lo que m\\u00e1s nos gusta, todo placer debe ser bienvenido y todo dolor evitado, pero en determinadas circunstancias y debido a las exigencias del deber o de las obligaciones de los negocios, ocurrir\\u00e1 frecuentemente que los placeres deban ser repudiados y Se aceptan molestias. Por lo tanto, el hombre sabio siempre se atiene en estas materias a este principio de selecci\\u00f3n: rechaza los placeres para asegurarse otros placeres mayores, o bien soporta dolores para evitar dolores peores.<\\/p>\"},\"ar\":{\"content\":\"<p>\\u0645\\u0642\\u0637\\u0639 \\u0644\\u0648\\u0631\\u064a\\u0645 \\u0625\\u064a\\u0628\\u0633\\u0648\\u0645 \\u0627\\u0644\\u0642\\u064a\\u0627\\u0633\\u064a\\u060c \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 \\u0645\\u0646\\u0630 \\u0627\\u0644\\u0642\\u0631\\u0646 \\u0627\\u0644\\u0633\\u0627\\u062f\\u0633 \\u0639\\u0634\\u0631<\\/p><p>\\\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut Labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco Laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in rerehenderit in voluptate \\\"\\\"\\\"\\\"<\\/p><p>\\u0627\\u0644\\u0642\\u0633\\u0645 1.10.32 \\u0645\\u0646 \\\"de Finibus Bonorum et Malorum\\\"\\u060c \\u0643\\u062a\\u0628\\u0647 \\u0634\\u064a\\u0634\\u0631\\u0648\\u0646 \\u0641\\u064a 45 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u0645\\u064a\\u0644\\u0627\\u062f<\\/p><p>\\\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium\\u060c totam rem aperiam\\u060c eaque ipsa quae ab illo inventre veritatis \\u0648\\u0634\\u0628\\u0647 \\u0627\\u0644\\u0645\\u0647\\u0646\\u062f\\u0633 \\u0627\\u0644\\u0645\\u0639\\u0645\\u0627\\u0631\\u064a Beatae vitae vitae sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit\\u060c s \\u0625\\u062f \\u0643\\u064a\\u0627 \\u0646\\u062a\\u064a\\u062c\\u0629 \\u0644\\u0622\\u0644\\u0627\\u0645 \\u0643\\u0628\\u064a\\u0631\\u0629 \\u0644\\u0627 \\u064a\\u0645\\u0643\\u0646 \\u0623\\u0646 \\u062a\\u062a\\u0631\\u062a\\u0628 \\u0639\\u0644\\u0649 \\u0630\\u0644\\u0643. \\u0625\\u0646\\u064a\\u0645 \\u0625\\u0644\\u0649 \\u0627\\u0644\\u062d\\u062f \\u0627\\u0644\\u0623\\u062f\\u0646\\u0649 \\u0645\\u0646 \\u0627\\u0644\\u0633\\u0645 \\u0647\\u0644 \\u0646\\u0631\\u063a\\u0628 \\u0641\\u064a \\u0645\\u0645\\u0627\\u0631\\u0633\\u0629 \\u0623\\u0639\\u0645\\u0627\\u0644\\u0646\\u0627 \\u0627\\u0644\\u062c\\u0633\\u062f\\u064a\\u0629\\u060c \\u0623\\u0648 \\u0644\\u0627 \\u0646\\u0645\\u0644\\u0643 \\u0623\\u064a \\u0633\\u0627\\u0626\\u0644 \\u0645\\u0646 \\u0623\\u064a \\u0633\\u0644\\u0639\\u0629 \\u0645\\u0643\\u062a\\u0633\\u0628\\u0629\\u061f \\u0647\\u0644 \\u0646\\u0644\\u0648\\u0645 \\u0623\\u0646\\u0641\\u0633\\u0646\\u0627 \\u0623\\u0648 \\u0646\\u0643\\u0631\\u0647 \\u0623\\u0646 \\u0646\\u0631\\u063a\\u0628 \\u0641\\u064a \\u0623\\u0646 \\u064a\\u0643\\u0648\\u0646 \\u0647\\u0646\\u0627\\u0643 \\u0634\\u064a\\u0621 \\u0644\\u0627 \\u064a\\u0636\\u0627\\u064a\\u0642\\u0646\\u0627\\u060c \\u0623\\u0648 \\u0645\\u0627 \\u0627\\u0644\\u0630\\u064a \\u064a\\u062c\\u0639\\u0644\\u0646\\u0627 \\u0646\\u0639\\u0627\\u0646\\u064a \\u0645\\u0646 \\u0627\\u0644\\u0647\\u0631\\u0628 \\u0645\\u0646 \\u062f\\u0648\\u0646 \\u062c\\u062f\\u0648\\u0649\\u061f\\\"<\\/p><p>\\u062a\\u0631\\u062c\\u0645\\u0629 \\u0639\\u0627\\u0645 1914 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 \\u0647\\u0640. \\u0631\\u0627\\u0643\\u0647\\u0627\\u0645<\\/p><p>\\\"\\u0648\\u0644\\u0643\\u0646 \\u064a\\u062c\\u0628 \\u0623\\u0646 \\u0623\\u0634\\u0631\\u062d \\u0644\\u0643 \\u0643\\u064a\\u0641 \\u0648\\u0644\\u062f\\u062a \\u0643\\u0644 \\u0647\\u0630\\u0647 \\u0627\\u0644\\u0641\\u0643\\u0631\\u0629 \\u0627\\u0644\\u062e\\u0627\\u0637\\u0626\\u0629 \\u0627\\u0644\\u0645\\u062a\\u0645\\u062b\\u0644\\u0629 \\u0641\\u064a \\u0625\\u062f\\u0627\\u0646\\u0629 \\u0627\\u0644\\u0644\\u0630\\u0629 \\u0648\\u062a\\u0645\\u062c\\u064a\\u062f \\u0627\\u0644\\u0623\\u0644\\u0645\\u060c \\u0648\\u0633\\u0623\\u0642\\u062f\\u0645 \\u0644\\u0643 \\u0648\\u0635\\u0641\\u064b\\u0627 \\u0643\\u0627\\u0645\\u0644\\u0627\\u064b \\u0644\\u0644\\u0646\\u0638\\u0627\\u0645\\u060c \\u0648\\u0623\\u0634\\u0631\\u062d \\u0627\\u0644\\u062a\\u0639\\u0627\\u0644\\u064a\\u0645 \\u0627\\u0644\\u0641\\u0639\\u0644\\u064a\\u0629 \\u0644\\u0644\\u0645\\u0633\\u062a\\u0643\\u0634\\u0641 \\u0627\\u0644\\u0639\\u0638\\u064a\\u0645 \\u0644\\u0644\\u062d\\u0642\\u064a\\u0642\\u0629\\u060c \\u0648\\u0628\\u0627\\u0646\\u064a \\u0627\\u0644\\u0639\\u0627\\u0644\\u0645 \\u0627\\u0644\\u0639\\u0638\\u064a\\u0645. \\\"\\u0627\\u0644\\u0633\\u0639\\u0627\\u062f\\u0629 \\u0627\\u0644\\u0625\\u0646\\u0633\\u0627\\u0646\\u064a\\u0629. \\u0644\\u0627 \\u0623\\u062d\\u062f \\u064a\\u0631\\u0641\\u0636 \\u0623\\u0648 \\u064a\\u0643\\u0631\\u0647 \\u0623\\u0648 \\u064a\\u062a\\u062c\\u0646\\u0628 \\u0627\\u0644\\u0645\\u062a\\u0639\\u0629 \\u0646\\u0641\\u0633\\u0647\\u0627\\u060c \\u0644\\u0623\\u0646\\u0647\\u0627 \\u0645\\u062a\\u0639\\u0629\\u060c \\u0648\\u0644\\u0643\\u0646 \\u0644\\u0623\\u0646 \\u0623\\u0648\\u0644\\u0626\\u0643 \\u0627\\u0644\\u0630\\u064a\\u0646 \\u0644\\u0627 \\u064a\\u0639\\u0631\\u0641\\u0648\\u0646 \\u0643\\u064a\\u0641\\u064a\\u0629 \\u0627\\u0644\\u0633\\u0639\\u064a \\u0648\\u0631\\u0627\\u0621 \\u0627\\u0644\\u0645\\u062a\\u0639\\u0629 \\u0628\\u0639\\u0642\\u0644\\u0627\\u0646\\u064a\\u0629 \\u064a\\u0648\\u0627\\u062c\\u0647\\u0648\\u0646 \\u0639\\u0648\\u0627\\u0642\\u0628 \\u0645\\u0624\\u0644\\u0645\\u0629 \\u0644\\u0644\\u063a\\u0627\\u064a\\u0629. \\u0648\\u0644\\u0627 \\u064a\\u0648\\u062c\\u062f \\u0645\\u0631\\u0629 \\u0623\\u062e\\u0631\\u0649 \\u0623\\u064a \\u0634\\u062e\\u0635 \\u064a\\u062d\\u0628 \\u0623\\u0648 \\u064a\\u0633\\u0639\\u0649 \\u0623\\u0648 \\u064a\\u0631\\u063a\\u0628 \\u0641\\u064a \\u0630\\u0644\\u0643\\\" \\u064a\\u062d\\u0635\\u0644 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u0623\\u0644\\u0645 \\u0641\\u064a \\u062d\\u062f \\u0630\\u0627\\u062a\\u0647\\u060c \\u0644\\u0623\\u0646\\u0647 \\u0623\\u0644\\u0645\\u060c \\u0648\\u0644\\u0643\\u0646 \\u0644\\u0623\\u0646\\u0647 \\u0641\\u064a \\u0628\\u0639\\u0636 \\u0627\\u0644\\u0623\\u062d\\u064a\\u0627\\u0646 \\u062a\\u062d\\u062f\\u062b \\u0638\\u0631\\u0648\\u0641 \\u064a\\u0645\\u0643\\u0646 \\u0623\\u0646 \\u064a\\u062c\\u0644\\u0628 \\u0641\\u064a\\u0647\\u0627 \\u0627\\u0644\\u0643\\u062f\\u062d \\u0648\\u0627\\u0644\\u0623\\u0644\\u0645 \\u0628\\u0639\\u0636 \\u0627\\u0644\\u0645\\u062a\\u0639\\u0629 \\u0627\\u0644\\u0639\\u0638\\u064a\\u0645\\u0629.\\u0644\\u0646\\u0623\\u062e\\u0630 \\u0645\\u062b\\u0627\\u0644\\u064b\\u0627 \\u062a\\u0627\\u0641\\u0647\\u064b\\u0627\\u060c \\u0645\\u0646 \\u0645\\u0646\\u0627 \\u064a\\u0642\\u0648\\u0645 \\u0628\\u062a\\u0645\\u0631\\u064a\\u0646 \\u0628\\u062f\\u0646\\u064a \\u0634\\u0627\\u0642\\u060c \\u0625\\u0644\\u0627 \\u0644\\u0644\\u062d\\u0635\\u0648\\u0644 \\u0639\\u0644\\u0649 \\u0628\\u0639\\u0636 \\u0627\\u0644\\u0641\\u0627\\u0626\\u062f\\u0629 \\u0645\\u0646\\u0647\\u061f \\u0648\\u0644\\u0643\\u0646 \\u0645\\u0646 \\u0644\\u0647 \\u0627\\u0644\\u062d\\u0642 \\u0641\\u064a \\u0623\\u0646 \\u064a\\u0644\\u0648\\u0645 \\u0631\\u062c\\u0644\\u0627\\u064b \\u0627\\u062e\\u062a\\u0627\\u0631 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0645\\u062a\\u0627\\u0639 \\u0628\\u0644\\u0630\\u0629 \\u0644\\u0627 \\u0639\\u0648\\u0627\\u0642\\u0628 \\u0644\\u0647\\u0627\\u060c \\u0623\\u0648 \\u0631\\u062c\\u0644\\u0627\\u064b \\u062a\\u062c\\u0646\\u0628 \\u0627\\u0644\\u0623\\u0644\\u0645 \\u0627\\u0644\\u0630\\u064a \\u0644\\u0627 \\u064a\\u0646\\u062a\\u062c \\u0639\\u0646\\u0647 \\u0645\\u062a\\u0639\\u0629\\u061f<\\/p><p>\\u0627\\u0644\\u0642\\u0633\\u0645 1.10.33 \\u0645\\u0646 \\\"de Finibus Bonorum et Malorum\\\"\\u060c \\u0643\\u062a\\u0628\\u0647 \\u0634\\u064a\\u0634\\u0631\\u0648\\u0646 \\u0641\\u064a 45 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u0645\\u064a\\u0644\\u0627\\u062f<\\/p><p>\\\"At vero eos et acusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque \\u0641\\u0627\\u0633\\u062f quos dolores \\u0648 quas molestias \\u0628\\u0627\\u0633\\u062a\\u062b\\u0646\\u0627\\u0621 \\u0633\\u064a\\u0646\\u062a occaecati cupiditate \\u063a\\u064a\\u0631 \\u0645\\u0642\\u062f\\u0645\\u060c similique sunt in culpa qui office deserunt mollitia animi\\u060c id est Laborum et dolorum fuga. \\u0648\\u0647\\u0627 \\u0645\\u0634\\u0631\\u0648\\u0628 \\u0627\\u0644\\u0631\\u0648\\u0645 \\u0627\\u0644\\u0648\\u0642\\u062a \\u0627\\u0644\\u0645\\u062a\\u0627\\u062d \\u0633\\u0647\\u0644 \\u0644\\u0644\\u063a\\u0627\\u064a\\u0629\\u060c \\u0645\\u0639 \\u0627\\u0644\\u062d\\u0644 \\u0627\\u0644\\u062c\\u062f\\u064a\\u062f \\u0647\\u0648 \\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0627\\u062e\\u062a\\u064a\\u0627\\u0631\\u064a \\u0644\\u0627 \\u064a\\u0639\\u064a\\u0642 \\u0627\\u0644\\u062d\\u062f \\u0627\\u0644\\u0623\\u062f\\u0646\\u0649 \\u0645\\u0646 \\u0627\\u0644\\u062d\\u062f \\u0627\\u0644\\u0623\\u0642\\u0635\\u0649 \\u0627\\u0644\\u0630\\u064a \\u064a\\u0645\\u0643\\u0646 \\u0623\\u0646 \\u064a\\u0648\\u0627\\u062c\\u0647\\u0647\\u060c \\u0643\\u0644 \\u0627\\u0644\\u0631\\u063a\\u0628\\u0627\\u062a \\u0627\\u0644\\u0645\\u0641\\u062a\\u0631\\u0636\\u0629\\u060c \\u0643\\u0644 \\u0627\\u0644\\u0623\\u0644\\u0645 \\u0627\\u0644\\u0645\\u0624\\u0644\\u0645. ut et voluptates repudiandae sint et molestiae not recusandae.<\\/p><p>1914 \\u062a\\u0631\\u062c\\u0645\\u0629 \\u0635\\u0627\\u0628\\u0631 \\u0645\\u064a\\u0627<\\/p><p>\\\"\\u0645\\u0646 \\u0646\\u0627\\u062d\\u064a\\u0629 \\u0623\\u062e\\u0631\\u0649\\u060c \\u0641\\u0625\\u0646\\u0646\\u0627 \\u0646\\u062f\\u064a\\u0646 \\u0628\\u0627\\u0633\\u062a\\u0642\\u0627\\u0645\\u0629 \\u0648\\u0646\\u0643\\u0631\\u0647 \\u0627\\u0644\\u0631\\u062c\\u0627\\u0644 \\u0627\\u0644\\u0630\\u064a\\u0646 \\u062e\\u062f\\u0639\\u062a\\u0647\\u0645 \\u0633\\u062d\\u0631 \\u0645\\u062a\\u0639\\u0629 \\u0627\\u0644\\u0644\\u062d\\u0638\\u0629 \\u0648\\u0623\\u062d\\u0628\\u0637\\u062a\\u0647\\u0645\\u060c \\u0648\\u0623\\u0639\\u0645\\u062a\\u0647\\u0645 \\u0627\\u0644\\u0631\\u063a\\u0628\\u0629\\u060c \\u0644\\u062f\\u0631\\u062c\\u0629 \\u0623\\u0646\\u0647\\u0645 \\u0644\\u0627 \\u064a\\u0633\\u062a\\u0637\\u064a\\u0639\\u0648\\u0646 \\u0627\\u0644\\u062a\\u0646\\u0628\\u0624 \\u0628\\u0627\\u0644\\u0623\\u0644\\u0645 \\u0648\\u0627\\u0644\\u0645\\u062a\\u0627\\u0639\\u0628 \\u0627\\u0644\\u062a\\u064a \\u0644\\u0627 \\u0628\\u062f \\u0623\\u0646 \\u062a\\u062a\\u0631\\u062a\\u0628 \\u0639\\u0644\\u0649 \\u0630\\u0644\\u0643\\u061b \\u0648\\u0646\\u062d\\u0645\\u0644 \\u0646\\u0641\\u0633 \\u0627\\u0644\\u0642\\u062f\\u0631 \\u0645\\u0646 \\u0627\\u0644\\u0644\\u0648\\u0645 \\\"\\u064a\\u0646\\u062a\\u0645\\u064a \\u0625\\u0644\\u0649 \\u0623\\u0648\\u0644\\u0626\\u0643 \\u0627\\u0644\\u0630\\u064a\\u0646 \\u064a\\u0641\\u0634\\u0644\\u0648\\u0646 \\u0641\\u064a \\u0623\\u062f\\u0627\\u0621 \\u0648\\u0627\\u062c\\u0628\\u0647\\u0645 \\u0628\\u0633\\u0628\\u0628 \\u0636\\u0639\\u0641 \\u0627\\u0644\\u0625\\u0631\\u0627\\u062f\\u0629\\u060c \\u0648\\u0647\\u0648 \\u0646\\u0641\\u0633 \\u0627\\u0644\\u0642\\u0648\\u0644 \\u0645\\u0646 \\u062e\\u0644\\u0627\\u0644 \\u0627\\u0644\\u062a\\u0642\\u0644\\u0635 \\u0645\\u0646 \\u0627\\u0644\\u0643\\u062f\\u062d \\u0648\\u0627\\u0644\\u0623\\u0644\\u0645. \\u0647\\u0630\\u0647 \\u0627\\u0644\\u062d\\u0627\\u0644\\u0627\\u062a \\u0628\\u0633\\u064a\\u0637\\u0629 \\u062a\\u0645\\u0627\\u0645\\u064b\\u0627 \\u0648\\u0633\\u0647\\u0644\\u0629 \\u0627\\u0644\\u062a\\u0645\\u064a\\u064a\\u0632. \\u0641\\u064a \\u0633\\u0627\\u0639\\u0629 \\u062d\\u0631\\u0629\\u060c \\u0639\\u0646\\u062f\\u0645\\u0627 \\u062a\\u0643\\u0648\\u0646 \\u0642\\u062f\\u0631\\u062a\\u0646\\u0627 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u063a\\u064a\\u0631 \\u0645\\u0642\\u064a\\u062f\\u0629 \\u0648\\u0639\\u0646\\u062f\\u0645\\u0627 \\u0644\\u0627 \\u0634\\u064a\\u0621 \\u064a\\u0645\\u0646\\u0639\\u0646\\u0627 \\u0645\\u0646 \\u0623\\u0646 \\u0646\\u0643\\u0648\\u0646 \\u0642\\u0627\\u062f\\u0631\\u064a\\u0646 \\u0639\\u0644\\u0649 \\u0641\\u0639\\u0644 \\u0645\\u0627 \\u0646\\u062d\\u0628 \\u0623\\u0643\\u062b\\u0631\\u060c \\u0643\\u0644 \\u0645\\u062a\\u0639\\u0629 \\u064a\\u062c\\u0628 \\u0627\\u0644\\u062a\\u0631\\u062d\\u064a\\u0628 \\u0628\\u0647\\u0627 \\u0648\\u062a\\u062c\\u0646\\u0628 \\u0643\\u0644 \\u0623\\u0644\\u0645\\u060c \\u0648\\u0644\\u0643\\u0646 \\u0641\\u064a \\u0638\\u0631\\u0648\\u0641 \\u0645\\u0639\\u064a\\u0646\\u0629 \\u0648\\u0628\\u0633\\u0628\\u0628 \\u0645\\u0637\\u0627\\u0644\\u0628\\u0627\\u062a \\u0627\\u0644\\u0648\\u0627\\u062c\\u0628 \\u0623\\u0648 \\u0627\\u0644\\u062a\\u0632\\u0627\\u0645\\u0627\\u062a \\u0627\\u0644\\u0639\\u0645\\u0644\\u060c \\u0641\\u0625\\u0646\\u0647 \\u064a\\u062d\\u062f\\u062b \\u0641\\u064a \\u0643\\u062b\\u064a\\u0631 \\u0645\\u0646 \\u0627\\u0644\\u0623\\u062d\\u064a\\u0627\\u0646 \\u0623\\u0646\\u0647 \\u064a\\u062c\\u0628 \\u0627\\u0644\\u062a\\u0646\\u0635\\u0644 \\u0645\\u0646 \\u0627\\u0644\\u0645\\u0644\\u0630\\u0627\\u062a \\u0648 \\\"\\u0642\\u0628\\u0644\\u062a \\u0627\\u0644\\u0645\\u0636\\u0627\\u064a\\u0642\\u0627\\u062a. \\u0648\\u0644\\u0630\\u0644\\u0643 \\u0641\\u0625\\u0646 \\u0627\\u0644\\u0631\\u062c\\u0644 \\u0627\\u0644\\u062d\\u0643\\u064a\\u0645 \\u064a\\u062a\\u0645\\u0633\\u0643 \\u062f\\u0627\\u0626\\u0645\\u064b\\u0627 \\u0641\\u064a \\u0647\\u0630\\u0647 \\u0627\\u0644\\u0623\\u0645\\u0648\\u0631 \\u0628\\u0645\\u0628\\u062f\\u0623 \\u0627\\u0644\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0647\\u0630\\u0627: \\u0641\\u0647\\u0648 \\u064a\\u0631\\u0641\\u0636 \\u0627\\u0644\\u0645\\u0644\\u0630\\u0627\\u062a \\u0644\\u0636\\u0645\\u0627\\u0646 \\u0645\\u062a\\u0639 \\u0623\\u062e\\u0631\\u0649 \\u0623\\u0643\\u0628\\u0631\\u060c \\u0623\\u0648 \\u064a\\u062a\\u062d\\u0645\\u0644 \\u0627\\u0644\\u0622\\u0644\\u0627\\u0645 \\u0644\\u062a\\u062c\\u0646\\u0628 \\u0622\\u0644\\u0627\\u0645 \\u0623\\u0633\\u0648\\u0623.\\\"<\\/p>\"}}}', 1, 1, '2023-06-20 04:33:32', '2023-10-29 04:22:55');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `firstname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `full_mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `refferal_user_id` bigint UNSIGNED DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 = Active, 0 == Banned',
  `address` text COLLATE utf8mb4_unicode_ci,
  `email_verified` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 == Verifiend, 0 == Not verifiend',
  `sms_verified` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 == Verifiend, 0 == Not verifiend',
  `kyc_verified` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: Default, 1: Approved, 2: Pending, 3:Rejected',
  `ver_code` int DEFAULT NULL,
  `ver_code_send_at` timestamp NULL DEFAULT NULL,
  `two_factor_verified` tinyint(1) NOT NULL DEFAULT '0',
  `two_factor_status` tinyint(1) NOT NULL DEFAULT '0',
  `two_factor_secret` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_authorizations`
--

CREATE TABLE `user_authorizations` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `code` int NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_kyc_data`
--

CREATE TABLE `user_kyc_data` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `reject_reason` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_login_logs`
--

CREATE TABLE `user_login_logs` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mac` varchar(17) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `browser` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `os` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timezone` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_mail_logs`
--

CREATE TABLE `user_mail_logs` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_notifications`
--

CREATE TABLE `user_notifications` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_password_resets`
--

CREATE TABLE `user_password_resets` (
  `id` bigint UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` bigint UNSIGNED DEFAULT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_profiles`
--

CREATE TABLE `user_profiles` (
  `id` bigint UNSIGNED NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `information` text COLLATE utf8mb4_unicode_ci,
  `reject_reason` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_support_chats`
--

CREATE TABLE `user_support_chats` (
  `id` bigint UNSIGNED NOT NULL,
  `user_support_ticket_id` bigint UNSIGNED NOT NULL,
  `sender` bigint UNSIGNED NOT NULL,
  `sender_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `receiver` bigint UNSIGNED DEFAULT NULL,
  `receiver_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_support_tickets`
--

CREATE TABLE `user_support_tickets` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `token` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '0: Default, 1: Solved, 2: Active, 3: Pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_support_ticket_attachments`
--

CREATE TABLE `user_support_ticket_attachments` (
  `id` bigint UNSIGNED NOT NULL,
  `user_support_ticket_id` bigint UNSIGNED NOT NULL,
  `attachment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment_info` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_wallets`
--

CREATE TABLE `user_wallets` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `currency_id` bigint UNSIGNED NOT NULL,
  `balance` decimal(28,8) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_image_unique` (`image`),
  ADD KEY `admins_username_index` (`username`),
  ADD KEY `admins_email_index` (`email`),
  ADD KEY `admins_phone_index` (`phone`),
  ADD KEY `admins_admin_role_id_foreign` (`admin_role_id`);

--
-- Indexes for table `admin_has_roles`
--
ALTER TABLE `admin_has_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_has_roles_admin_id_foreign` (`admin_id`),
  ADD KEY `admin_has_roles_admin_role_id_foreign` (`admin_role_id`),
  ADD KEY `admin_has_roles_last_edit_by_foreign` (`last_edit_by`);

--
-- Indexes for table `admin_login_logs`
--
ALTER TABLE `admin_login_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_login_logs_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_notifications_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `admin_password_resets`
--
ALTER TABLE `admin_password_resets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_password_resets_email_index` (`email`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_roles_name_unique` (`name`),
  ADD KEY `admin_roles_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `admin_role_has_permissions`
--
ALTER TABLE `admin_role_has_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_role_has_permissions_admin_role_permission_id_foreign` (`admin_role_permission_id`),
  ADD KEY `admin_role_has_permissions_last_edit_by_foreign` (`last_edit_by`);

--
-- Indexes for table `admin_role_permissions`
--
ALTER TABLE `admin_role_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_role_permissions_name_unique` (`name`),
  ADD UNIQUE KEY `admin_role_permissions_slug_unique` (`slug`),
  ADD KEY `admin_role_permissions_admin_role_id_foreign` (`admin_role_id`),
  ADD KEY `admin_role_permissions_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `app_onboard_screens`
--
ALTER TABLE `app_onboard_screens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `app_onboard_screens_image_unique` (`image`),
  ADD KEY `app_onboard_screens_last_edit_by_foreign` (`last_edit_by`);

--
-- Indexes for table `app_settings`
--
ALTER TABLE `app_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `basic_settings`
--
ALTER TABLE `basic_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogs_admin_id_foreign` (`admin_id`),
  ADD KEY `blogs_category_id_foreign` (`category_id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_categories_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `coinbase_webhook_calls`
--
ALTER TABLE `coinbase_webhook_calls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `currencies_flag_unique` (`flag`),
  ADD KEY `currencies_admin_id_foreign` (`admin_id`),
  ADD KEY `currencies_country_index` (`country`),
  ADD KEY `currencies_name_index` (`name`),
  ADD KEY `currencies_code_index` (`code`);

--
-- Indexes for table `extensions`
--
ALTER TABLE `extensions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `extensions_name_unique` (`name`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `languages_name_unique` (`name`),
  ADD UNIQUE KEY `languages_code_unique` (`code`),
  ADD KEY `languages_last_edit_by_foreign` (`last_edit_by`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payment_gateways_code_unique` (`code`),
  ADD KEY `payment_gateways_last_edit_by_foreign` (`last_edit_by`);

--
-- Indexes for table `payment_gateway_currencies`
--
ALTER TABLE `payment_gateway_currencies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payment_gateway_currencies_alias_unique` (`alias`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `push_notification_records`
--
ALTER TABLE `push_notification_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `push_notification_records_send_by_foreign` (`send_by`);

--
-- Indexes for table `script`
--
ALTER TABLE `script`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setup_kycs`
--
ALTER TABLE `setup_kycs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `setup_kycs_slug_unique` (`slug`);

--
-- Indexes for table `setup_pages`
--
ALTER TABLE `setup_pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `setup_pages_slug_unique` (`slug`),
  ADD KEY `setup_pages_last_edit_by_foreign` (`last_edit_by`);

--
-- Indexes for table `setup_seos`
--
ALTER TABLE `setup_seos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `setup_seos_last_edit_by_foreign` (`last_edit_by`);

--
-- Indexes for table `site_sections`
--
ALTER TABLE `site_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribes`
--
ALTER TABLE `subscribes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temporary_datas`
--
ALTER TABLE `temporary_datas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `top_up_games`
--
ALTER TABLE `top_up_games`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_admin_id_foreign` (`admin_id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`),
  ADD KEY `transactions_user_wallet_id_foreign` (`user_wallet_id`),
  ADD KEY `transactions_payment_gateway_currency_id_foreign` (`payment_gateway_currency_id`);

--
-- Indexes for table `transaction_charges`
--
ALTER TABLE `transaction_charges`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_charges_transaction_id_foreign` (`transaction_id`);

--
-- Indexes for table `transaction_devices`
--
ALTER TABLE `transaction_devices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_devices_transaction_id_foreign` (`transaction_id`);

--
-- Indexes for table `transaction_settings`
--
ALTER TABLE `transaction_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_settings_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `useful_links`
--
ALTER TABLE `useful_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_full_mobile_unique` (`full_mobile`),
  ADD KEY `users_mobile_index` (`mobile`);

--
-- Indexes for table `user_authorizations`
--
ALTER TABLE `user_authorizations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_kyc_data`
--
ALTER TABLE `user_kyc_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_kyc_data_user_id_foreign` (`user_id`);

--
-- Indexes for table `user_login_logs`
--
ALTER TABLE `user_login_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_login_logs_user_id_foreign` (`user_id`);

--
-- Indexes for table `user_mail_logs`
--
ALTER TABLE `user_mail_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_mail_logs_user_id_foreign` (`user_id`);

--
-- Indexes for table `user_notifications`
--
ALTER TABLE `user_notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_notifications_user_id_foreign` (`user_id`);

--
-- Indexes for table `user_password_resets`
--
ALTER TABLE `user_password_resets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_password_resets_token_unique` (`token`),
  ADD UNIQUE KEY `user_password_resets_code_unique` (`code`),
  ADD KEY `user_password_resets_user_id_foreign` (`user_id`);

--
-- Indexes for table `user_profiles`
--
ALTER TABLE `user_profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_profiles_user_id_foreign` (`user_id`);

--
-- Indexes for table `user_support_chats`
--
ALTER TABLE `user_support_chats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_support_chats_user_support_ticket_id_foreign` (`user_support_ticket_id`);

--
-- Indexes for table `user_support_tickets`
--
ALTER TABLE `user_support_tickets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_support_tickets_token_unique` (`token`),
  ADD KEY `user_support_tickets_user_id_foreign` (`user_id`);

--
-- Indexes for table `user_support_ticket_attachments`
--
ALTER TABLE `user_support_ticket_attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_support_ticket_attachments_user_support_ticket_id_foreign` (`user_support_ticket_id`);

--
-- Indexes for table `user_wallets`
--
ALTER TABLE `user_wallets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_wallets_currency_id_foreign` (`currency_id`),
  ADD KEY `user_wallets_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_has_roles`
--
ALTER TABLE `admin_has_roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_login_logs`
--
ALTER TABLE `admin_login_logs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `admin_password_resets`
--
ALTER TABLE `admin_password_resets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `admin_role_has_permissions`
--
ALTER TABLE `admin_role_has_permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin_role_permissions`
--
ALTER TABLE `admin_role_permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app_onboard_screens`
--
ALTER TABLE `app_onboard_screens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `app_settings`
--
ALTER TABLE `app_settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `basic_settings`
--
ALTER TABLE `basic_settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `coinbase_webhook_calls`
--
ALTER TABLE `coinbase_webhook_calls`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `extensions`
--
ALTER TABLE `extensions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `payment_gateway_currencies`
--
ALTER TABLE `payment_gateway_currencies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `push_notification_records`
--
ALTER TABLE `push_notification_records`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `script`
--
ALTER TABLE `script`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `setup_kycs`
--
ALTER TABLE `setup_kycs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `setup_pages`
--
ALTER TABLE `setup_pages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `setup_seos`
--
ALTER TABLE `setup_seos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `site_sections`
--
ALTER TABLE `site_sections`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `subscribes`
--
ALTER TABLE `subscribes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `temporary_datas`
--
ALTER TABLE `temporary_datas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `top_up_games`
--
ALTER TABLE `top_up_games`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaction_charges`
--
ALTER TABLE `transaction_charges`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaction_devices`
--
ALTER TABLE `transaction_devices`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaction_settings`
--
ALTER TABLE `transaction_settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `useful_links`
--
ALTER TABLE `useful_links`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_authorizations`
--
ALTER TABLE `user_authorizations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_kyc_data`
--
ALTER TABLE `user_kyc_data`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_login_logs`
--
ALTER TABLE `user_login_logs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_mail_logs`
--
ALTER TABLE `user_mail_logs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_notifications`
--
ALTER TABLE `user_notifications`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_password_resets`
--
ALTER TABLE `user_password_resets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_profiles`
--
ALTER TABLE `user_profiles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_support_chats`
--
ALTER TABLE `user_support_chats`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_support_tickets`
--
ALTER TABLE `user_support_tickets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_support_ticket_attachments`
--
ALTER TABLE `user_support_ticket_attachments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_wallets`
--
ALTER TABLE `user_wallets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admins`
--
ALTER TABLE `admins`
  ADD CONSTRAINT `admins_admin_role_id_foreign` FOREIGN KEY (`admin_role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `admin_has_roles`
--
ALTER TABLE `admin_has_roles`
  ADD CONSTRAINT `admin_has_roles_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `admin_has_roles_admin_role_id_foreign` FOREIGN KEY (`admin_role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `admin_has_roles_last_edit_by_foreign` FOREIGN KEY (`last_edit_by`) REFERENCES `admins` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `admin_login_logs`
--
ALTER TABLE `admin_login_logs`
  ADD CONSTRAINT `admin_login_logs_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  ADD CONSTRAINT `admin_notifications_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD CONSTRAINT `admin_roles_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `admin_role_has_permissions`
--
ALTER TABLE `admin_role_has_permissions`
  ADD CONSTRAINT `admin_role_has_permissions_admin_role_permission_id_foreign` FOREIGN KEY (`admin_role_permission_id`) REFERENCES `admin_role_permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `admin_role_has_permissions_last_edit_by_foreign` FOREIGN KEY (`last_edit_by`) REFERENCES `admins` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `admin_role_permissions`
--
ALTER TABLE `admin_role_permissions`
  ADD CONSTRAINT `admin_role_permissions_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `admin_role_permissions_admin_role_id_foreign` FOREIGN KEY (`admin_role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `app_onboard_screens`
--
ALTER TABLE `app_onboard_screens`
  ADD CONSTRAINT `app_onboard_screens_last_edit_by_foreign` FOREIGN KEY (`last_edit_by`) REFERENCES `admins` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `blogs_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `blog_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD CONSTRAINT `blog_categories_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `currencies`
--
ALTER TABLE `currencies`
  ADD CONSTRAINT `currencies_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `languages`
--
ALTER TABLE `languages`
  ADD CONSTRAINT `languages_last_edit_by_foreign` FOREIGN KEY (`last_edit_by`) REFERENCES `admins` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  ADD CONSTRAINT `payment_gateways_last_edit_by_foreign` FOREIGN KEY (`last_edit_by`) REFERENCES `admins` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `push_notification_records`
--
ALTER TABLE `push_notification_records`
  ADD CONSTRAINT `push_notification_records_send_by_foreign` FOREIGN KEY (`send_by`) REFERENCES `admins` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `setup_pages`
--
ALTER TABLE `setup_pages`
  ADD CONSTRAINT `setup_pages_last_edit_by_foreign` FOREIGN KEY (`last_edit_by`) REFERENCES `admins` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `setup_seos`
--
ALTER TABLE `setup_seos`
  ADD CONSTRAINT `setup_seos_last_edit_by_foreign` FOREIGN KEY (`last_edit_by`) REFERENCES `admins` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transactions_payment_gateway_currency_id_foreign` FOREIGN KEY (`payment_gateway_currency_id`) REFERENCES `payment_gateway_currencies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transactions_user_wallet_id_foreign` FOREIGN KEY (`user_wallet_id`) REFERENCES `user_wallets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaction_charges`
--
ALTER TABLE `transaction_charges`
  ADD CONSTRAINT `transaction_charges_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaction_devices`
--
ALTER TABLE `transaction_devices`
  ADD CONSTRAINT `transaction_devices_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaction_settings`
--
ALTER TABLE `transaction_settings`
  ADD CONSTRAINT `transaction_settings_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_kyc_data`
--
ALTER TABLE `user_kyc_data`
  ADD CONSTRAINT `user_kyc_data_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_login_logs`
--
ALTER TABLE `user_login_logs`
  ADD CONSTRAINT `user_login_logs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_mail_logs`
--
ALTER TABLE `user_mail_logs`
  ADD CONSTRAINT `user_mail_logs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_notifications`
--
ALTER TABLE `user_notifications`
  ADD CONSTRAINT `user_notifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_password_resets`
--
ALTER TABLE `user_password_resets`
  ADD CONSTRAINT `user_password_resets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_profiles`
--
ALTER TABLE `user_profiles`
  ADD CONSTRAINT `user_profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_support_chats`
--
ALTER TABLE `user_support_chats`
  ADD CONSTRAINT `user_support_chats_user_support_ticket_id_foreign` FOREIGN KEY (`user_support_ticket_id`) REFERENCES `user_support_tickets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_support_tickets`
--
ALTER TABLE `user_support_tickets`
  ADD CONSTRAINT `user_support_tickets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_support_ticket_attachments`
--
ALTER TABLE `user_support_ticket_attachments`
  ADD CONSTRAINT `user_support_ticket_attachments_user_support_ticket_id_foreign` FOREIGN KEY (`user_support_ticket_id`) REFERENCES `user_support_tickets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_wallets`
--
ALTER TABLE `user_wallets`
  ADD CONSTRAINT `user_wallets_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_wallets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
