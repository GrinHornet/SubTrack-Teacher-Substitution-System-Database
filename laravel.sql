-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 09, 2025 at 12:24 AM
-- Server version: 8.0.40
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `absences`
--

CREATE TABLE `absences` (
  `id` bigint UNSIGNED NOT NULL,
  `teacher_id` bigint UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `absences`
--

INSERT INTO `absences` (`id`, `teacher_id`, `date`, `reason`, `created_at`, `updated_at`) VALUES
(60, 23, '2025-11-10', 'VACATION LEAVE', '2025-11-05 13:35:27', '2025-11-05 13:35:27'),
(61, 17, '2025-11-10', 'VACATION LEAVE', '2025-11-05 22:18:19', '2025-11-05 22:18:19');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'HUMSS 1', 'HUMSS 1, RM 14-04 (GRND FLR 611- BLG)', '2025-10-02 20:54:22', '2025-10-19 21:31:47'),
(2, 'HUMSS 2', 'HUMSS 2, RM 14-05 (2ND FLR 611- BLG)', '2025-10-19 17:25:34', '2025-10-19 21:31:55'),
(3, 'HUMSS 3', 'HUMSS 3, RM 14-06 (2ND FLR 611- BLG)', '2025-10-19 17:27:11', '2025-10-19 21:32:06'),
(4, 'HUMSS 4', 'HUMSS 4, RM 14-07 (2ND FLR 611- BLG)', '2025-10-19 17:27:29', '2025-10-19 21:32:14'),
(5, 'HUMSS 5', 'HUMSS 5, RM 14-08 (2ND FLR 611- BLG)', '2025-10-19 17:27:47', '2025-10-19 21:32:21'),
(6, 'HUMSS 6', 'HUMSS 6, RM 14-09 (3RD FLR 611- BLG)', '2025-10-19 17:28:07', '2025-10-19 21:32:29'),
(7, 'HUMSS 7', 'HUMSS 7, RM 14-10 (3RD FLR 611- BLG)', '2025-10-19 17:28:18', '2025-10-19 21:32:36'),
(8, 'HUMSS 8', 'HUMSS 8, RM 14-11 (3RD FLR 611- BLG)', '2025-10-19 17:28:31', '2025-10-19 21:32:45'),
(9, 'HUMSS 9', 'HUMSS 9, RM 14-12 (3RD FLR 611- BLG)', '2025-10-19 17:28:43', '2025-10-19 21:32:51'),
(10, 'HUMSS 10', 'HUMSS 10, RM 14-13 (4TH FLR 611- BLG)', '2025-10-19 17:28:54', '2025-10-19 21:32:59'),
(11, 'COMPUTER LAB', 'COM LAB, RM 14-14 (4TH FLR 611- BLG)', '2025-10-19 17:29:09', '2025-10-19 21:33:11'),
(12, 'STEM 1', 'STEM 1, RM 14-15 (4TH FLR 611- BLG)', '2025-10-19 17:30:22', '2025-10-19 21:33:21'),
(13, 'STEM 2', 'STEM 2, RM 14-16 (4TH FLR 611- BLG)', '2025-10-19 17:30:36', '2025-10-19 21:33:28'),
(14, 'MASTER TEACHERS OFFICE', 'MT OFFICE, RM 17-01 (GRND FLR G 12 -BLG)', '2025-10-19 17:31:00', '2025-10-19 21:33:40'),
(15, 'SHS SUPPLY OFFICE', 'SUPP, RM 17-02 (GRND FLR G12 -BLG)', '2025-10-19 17:31:18', '2025-10-19 21:33:48'),
(16, 'SNED ROOM', 'SNED RM, RM 17-03 (GRND FLR G -12 BLG)', '2025-10-19 17:31:31', '2025-10-19 21:34:00'),
(17, 'ABM 1', 'ABM 1, RM 17-04 (2ND FLR G -12 BLG)', '2025-10-19 17:32:01', '2025-10-19 21:34:07'),
(18, 'ABM 2', 'ABM 2, RM 17-05 (2ND FLR G -12 BLG)', '2025-10-19 17:32:29', '2025-10-19 21:34:14'),
(19, 'ABM 3', 'ABM 3, RM 17-06 (2ND FLR G -12 BLG)', '2025-10-19 17:32:44', '2025-10-19 21:34:21'),
(20, 'HE 1', 'HE 1, RM 17-07 (3RD FLR G -12 BLG)', '2025-10-19 17:33:10', '2025-10-19 21:34:28'),
(21, 'HE 2', 'HE 2, RM 17-08 (3RD FLR G -12 BLG)', '2025-10-19 17:33:22', '2025-10-19 21:34:35'),
(22, 'ABM 4', 'ABM 4, RM 17-09 (3RD FLR G -12 BLG)', '2025-10-19 17:33:37', '2025-10-19 21:34:44'),
(23, 'ICT 1', 'ICT 1, RM 17-10 (4TH FLR G -12 BLG)', '2025-10-19 17:33:50', '2025-10-19 21:34:50'),
(24, 'ICT 2', 'ICT 2, RM 17-11 (4TH FLR G -12 BLG)', '2025-10-19 17:34:05', '2025-10-19 21:34:57'),
(25, 'HUMSS 11', 'HUMSS 11, RM 17-12 (4TH FLR G -12 BLG)', '2025-10-19 17:34:24', '2025-10-19 21:35:05');

-- --------------------------------------------------------

--
-- Table structure for table `class_models`
--

CREATE TABLE `class_models` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_09_30_062910_create_teachers_table', 1),
(5, '2025_09_30_062920_create_absences_table', 1),
(6, '2025_09_30_062920_create_classes_table', 1),
(7, '2025_09_30_062920_create_substitutions_table', 1),
(8, '2025_10_02_005401_create_schedules_table', 1),
(9, '2025_10_02_021137_add_day_to_schedules_table', 1),
(10, '2025_10_02_035658_add_name_to_class_models_table', 1),
(11, '2025_10_02_052843_add_description_to_class_models_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` bigint UNSIGNED NOT NULL,
  `teacher_id` bigint UNSIGNED NOT NULL,
  `class_id` bigint DEFAULT NULL,
  `subject_id` bigint DEFAULT NULL,
  `subject_room` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_slot` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `day` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `absence_id` bigint DEFAULT NULL,
  `substitute_id` bigint DEFAULT NULL,
  `is_vacant` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`id`, `teacher_id`, `class_id`, `subject_id`, `subject_room`, `time_slot`, `day`, `absence_id`, `substitute_id`, `is_vacant`, `created_at`, `updated_at`) VALUES
(2999, 17, NULL, 3, 'EALS-HUMSS-5', '6:00-7:00', 'Monday', NULL, NULL, '0', '2025-11-02 13:13:40', '2025-11-02 13:13:40'),
(3000, 17, NULL, 0, 'Available', '7:00-8:00', 'Monday', NULL, NULL, '1', '2025-11-02 13:13:40', '2025-11-02 13:13:40'),
(3001, 17, NULL, 0, 'Available', '8:15-9:15', 'Monday', NULL, NULL, '1', '2025-11-02 13:13:40', '2025-11-02 13:13:40'),
(3002, 17, NULL, 4, 'MIL-HUMSS-7', '9:15-10:15', 'Monday', NULL, NULL, '0', '2025-11-02 13:13:40', '2025-11-02 13:13:40'),
(3003, 17, NULL, 0, 'Available', '10:15-11:15', 'Monday', NULL, NULL, '1', '2025-11-02 13:13:40', '2025-11-02 13:13:40'),
(3004, 17, NULL, 0, 'Available', '11:15-12:15', 'Monday', NULL, NULL, '1', '2025-11-02 13:13:40', '2025-11-02 13:13:40'),
(3005, 17, NULL, 0, 'Available', '6:00-7:00', 'Tuesday', NULL, NULL, '1', '2025-11-02 13:13:40', '2025-11-02 13:13:40'),
(3006, 17, NULL, 0, 'Available', '7:00-8:00', 'Tuesday', NULL, NULL, '1', '2025-11-02 13:13:40', '2025-11-02 13:13:40'),
(3007, 17, NULL, 3, 'EALS-HUMSS-5', '8:15-9:15', 'Tuesday', NULL, NULL, '0', '2025-11-02 13:13:40', '2025-11-02 13:13:40'),
(3008, 17, NULL, 0, 'Available', '9:15-10:15', 'Tuesday', NULL, NULL, '1', '2025-11-02 13:13:40', '2025-11-02 13:13:40'),
(3009, 17, NULL, 0, 'Available', '10:15-11:15', 'Tuesday', NULL, NULL, '1', '2025-11-02 13:13:40', '2025-11-02 13:13:40'),
(3010, 17, NULL, 0, 'Available', '11:15-12:15', 'Tuesday', NULL, NULL, '1', '2025-11-02 13:13:40', '2025-11-02 13:13:40'),
(3011, 17, NULL, 0, 'Available', '6:00-7:00', 'Wednesday', NULL, NULL, '1', '2025-11-02 13:13:40', '2025-11-02 13:13:40'),
(3012, 17, NULL, 0, 'Available', '7:00-8:00', 'Wednesday', NULL, NULL, '1', '2025-11-02 13:13:40', '2025-11-02 13:13:40'),
(3013, 17, NULL, 0, 'Available', '8:15-9:15', 'Wednesday', NULL, NULL, '1', '2025-11-02 13:13:40', '2025-11-02 13:13:40'),
(3014, 17, NULL, 0, 'Available', '9:15-10:15', 'Wednesday', NULL, NULL, '1', '2025-11-02 13:13:40', '2025-11-02 13:13:40'),
(3015, 17, NULL, 3, 'EALS-HUMSS-5', '10:15-11:15', 'Wednesday', NULL, NULL, '0', '2025-11-02 13:13:40', '2025-11-02 13:13:40'),
(3016, 17, NULL, 0, 'Available', '11:15-12:15', 'Wednesday', NULL, NULL, '1', '2025-11-02 13:13:40', '2025-11-02 13:13:40'),
(3017, 17, NULL, 0, 'Available', '6:00-7:00', 'Thursday', NULL, NULL, '1', '2025-11-02 13:13:40', '2025-11-02 13:13:40'),
(3018, 17, NULL, 0, 'Available', '7:00-8:00', 'Thursday', NULL, NULL, '1', '2025-11-02 13:13:40', '2025-11-02 13:13:40'),
(3019, 17, NULL, 3, 'EALS-HUMSS-5', '8:15-9:15', 'Thursday', NULL, NULL, '0', '2025-11-02 13:13:40', '2025-11-02 13:13:40'),
(3020, 17, NULL, 0, 'Available', '9:15-10:15', 'Thursday', NULL, NULL, '1', '2025-11-02 13:13:40', '2025-11-02 13:13:40'),
(3021, 17, NULL, 0, 'Available', '10:15-11:15', 'Thursday', NULL, NULL, '1', '2025-11-02 13:13:40', '2025-11-02 13:13:40'),
(3022, 17, NULL, 0, 'Available', '11:15-12:15', 'Thursday', NULL, NULL, '1', '2025-11-02 13:13:40', '2025-11-02 13:13:40'),
(3023, 17, NULL, 0, 'Available', '6:00-7:00', 'Friday', NULL, NULL, '1', '2025-11-02 13:13:40', '2025-11-02 13:13:40'),
(3024, 17, NULL, 3, 'EALS-HUMSS-5', '7:00-8:00', 'Friday', NULL, NULL, '0', '2025-11-02 13:13:40', '2025-11-02 13:13:40'),
(3025, 17, NULL, 0, 'Available', '8:15-9:15', 'Friday', NULL, NULL, '1', '2025-11-02 13:13:40', '2025-11-02 13:13:40'),
(3026, 17, NULL, 0, 'Available', '9:15-10:15', 'Friday', NULL, NULL, '1', '2025-11-02 13:13:40', '2025-11-02 13:13:40'),
(3027, 17, NULL, 0, 'Available', '10:15-11:15', 'Friday', NULL, NULL, '1', '2025-11-02 13:13:40', '2025-11-02 13:13:40'),
(3028, 17, NULL, 0, 'Available', '11:15-12:15', 'Friday', NULL, NULL, '1', '2025-11-02 13:13:40', '2025-11-02 13:13:40'),
(3029, 24, NULL, 2, 'MIL-STEM-1', '6:00-7:00', 'Monday', NULL, NULL, '0', '2025-11-02 13:28:10', '2025-11-02 13:28:10'),
(3030, 24, NULL, 3, 'EALS-HUMSS-5', '7:00-8:00', 'Monday', NULL, NULL, '0', '2025-11-02 13:28:10', '2025-11-02 13:28:10'),
(3031, 24, NULL, 2, 'MIL-STEM-1', '8:15-9:15', 'Monday', NULL, NULL, '0', '2025-11-02 13:28:10', '2025-11-02 13:28:10'),
(3032, 24, NULL, 0, 'Available', '9:15-10:15', 'Monday', NULL, NULL, '1', '2025-11-02 13:28:10', '2025-11-02 13:28:10'),
(3033, 24, NULL, 0, 'Available', '10:15-11:15', 'Monday', NULL, NULL, '1', '2025-11-02 13:28:10', '2025-11-02 13:28:10'),
(3034, 24, NULL, 0, 'Available', '11:15-12:15', 'Monday', NULL, NULL, '1', '2025-11-02 13:28:10', '2025-11-02 13:28:10'),
(3035, 24, NULL, 0, 'Available', '6:00-7:00', 'Tuesday', NULL, NULL, '1', '2025-11-02 13:28:10', '2025-11-02 13:28:10'),
(3036, 24, NULL, 2, 'MIL-STEM-1', '7:00-8:00', 'Tuesday', NULL, NULL, '0', '2025-11-02 13:28:10', '2025-11-02 13:28:10'),
(3037, 24, NULL, 3, 'EALS-HUMSS-5', '8:15-9:15', 'Tuesday', NULL, NULL, '0', '2025-11-02 13:28:10', '2025-11-02 13:28:10'),
(3038, 24, NULL, 2, 'MIL-STEM-1', '9:15-10:15', 'Tuesday', NULL, NULL, '0', '2025-11-02 13:28:10', '2025-11-02 13:28:10'),
(3039, 24, NULL, 0, 'Available', '10:15-11:15', 'Tuesday', NULL, NULL, '1', '2025-11-02 13:28:10', '2025-11-02 13:28:10'),
(3040, 24, NULL, 0, 'Available', '11:15-12:15', 'Tuesday', NULL, NULL, '1', '2025-11-02 13:28:10', '2025-11-02 13:28:10'),
(3041, 24, NULL, 0, 'Available', '6:00-7:00', 'Wednesday', NULL, NULL, '1', '2025-11-02 13:28:10', '2025-11-02 13:28:10'),
(3042, 24, NULL, 0, 'Available', '7:00-8:00', 'Wednesday', NULL, NULL, '1', '2025-11-02 13:28:10', '2025-11-02 13:28:10'),
(3043, 24, NULL, 0, 'Available', '8:15-9:15', 'Wednesday', NULL, NULL, '1', '2025-11-02 13:28:10', '2025-11-02 13:28:10'),
(3044, 24, NULL, 3, 'EALS-HUMSS-5', '9:15-10:15', 'Wednesday', NULL, NULL, '0', '2025-11-02 13:28:10', '2025-11-02 13:28:10'),
(3045, 24, NULL, 2, 'MIL-STEM-1', '10:15-11:15', 'Wednesday', NULL, NULL, '0', '2025-11-02 13:28:10', '2025-11-02 13:28:10'),
(3046, 24, NULL, 0, 'Available', '11:15-12:15', 'Wednesday', NULL, NULL, '1', '2025-11-02 13:28:10', '2025-11-02 13:28:10'),
(3047, 24, NULL, 0, 'Available', '6:00-7:00', 'Thursday', NULL, NULL, '1', '2025-11-02 13:28:10', '2025-11-02 13:28:10'),
(3048, 24, NULL, 0, 'Available', '7:00-8:00', 'Thursday', NULL, NULL, '1', '2025-11-02 13:28:10', '2025-11-02 13:28:10'),
(3049, 24, NULL, 2, 'MIL-STEM-1', '8:15-9:15', 'Thursday', NULL, NULL, '0', '2025-11-02 13:28:10', '2025-11-02 13:28:10'),
(3050, 24, NULL, 0, 'Available', '9:15-10:15', 'Thursday', NULL, NULL, '1', '2025-11-02 13:28:10', '2025-11-02 13:28:10'),
(3051, 24, NULL, 3, 'EALS-HUMSS-5', '10:15-11:15', 'Thursday', NULL, NULL, '0', '2025-11-02 13:28:10', '2025-11-02 13:28:10'),
(3052, 24, NULL, 0, 'Available', '11:15-12:15', 'Thursday', NULL, NULL, '1', '2025-11-02 13:28:10', '2025-11-02 13:28:10'),
(3053, 24, NULL, 0, 'Available', '6:00-7:00', 'Friday', NULL, NULL, '1', '2025-11-02 13:28:10', '2025-11-02 13:28:10'),
(3054, 24, NULL, 0, 'Available', '7:00-8:00', 'Friday', NULL, NULL, '1', '2025-11-02 13:28:10', '2025-11-02 13:28:10'),
(3055, 24, NULL, 0, 'Available', '8:15-9:15', 'Friday', NULL, NULL, '1', '2025-11-02 13:28:10', '2025-11-02 13:28:10'),
(3056, 24, NULL, 2, 'MIL-STEM-1', '9:15-10:15', 'Friday', NULL, NULL, '0', '2025-11-02 13:28:10', '2025-11-02 13:28:10'),
(3057, 24, NULL, 1, 'MIL-HUMSS-8', '10:15-11:15', 'Friday', NULL, NULL, '0', '2025-11-02 13:28:10', '2025-11-02 13:28:10'),
(3058, 24, NULL, 2, 'MIL-STEM-1', '11:15-12:15', 'Friday', NULL, NULL, '0', '2025-11-02 13:28:10', '2025-11-02 13:28:10'),
(3059, 23, NULL, 2, 'MIL-STEM-1 / RM 14-15 (4TH)', '6:00-7:00', 'Monday', NULL, NULL, '0', '2025-11-02 13:28:47', '2025-11-02 14:07:39'),
(3060, 23, NULL, 2, 'MIL-STEM-1 / RM 14-15 (4TH)', '7:00-8:00', 'Monday', NULL, NULL, '0', '2025-11-02 13:28:47', '2025-11-02 14:07:39'),
(3061, 23, NULL, 3, 'EALS-HUMSS-5 / RM 13-10 (2nd Flr.)', '8:15-9:15', 'Monday', NULL, NULL, '0', '2025-11-02 13:28:47', '2025-11-02 14:07:39'),
(3062, 23, NULL, NULL, NULL, '9:15-10:15', 'Monday', NULL, NULL, '1', '2025-11-02 13:28:47', '2025-11-02 14:07:39'),
(3063, 23, NULL, NULL, NULL, '10:15-11:15', 'Monday', NULL, NULL, '1', '2025-11-02 13:28:47', '2025-11-02 14:07:39'),
(3064, 23, NULL, NULL, NULL, '11:15-12:15', 'Monday', NULL, NULL, '1', '2025-11-02 13:28:47', '2025-11-02 14:07:39'),
(3065, 23, NULL, NULL, NULL, '6:00-7:00', 'Tuesday', NULL, NULL, '1', '2025-11-02 13:28:47', '2025-11-02 14:07:39'),
(3066, 23, NULL, 2, 'MIL-STEM-1 / RM 14-15 (4TH)', '7:00-8:00', 'Tuesday', NULL, NULL, '0', '2025-11-02 13:28:47', '2025-11-02 14:07:39'),
(3067, 23, NULL, 3, 'EALS-HUMSS-5 / RM 13-10 (2nd Flr.)', '8:15-9:15', 'Tuesday', NULL, NULL, '0', '2025-11-02 13:28:47', '2025-11-02 14:07:39'),
(3068, 23, NULL, NULL, NULL, '9:15-10:15', 'Tuesday', NULL, NULL, '1', '2025-11-02 13:28:47', '2025-11-02 14:07:39'),
(3069, 23, NULL, 2, 'MIL-STEM-1 / RM 14-15 (4TH)', '10:15-11:15', 'Tuesday', NULL, NULL, '0', '2025-11-02 13:28:47', '2025-11-02 14:07:39'),
(3070, 23, NULL, NULL, NULL, '11:15-12:15', 'Tuesday', NULL, NULL, '1', '2025-11-02 13:28:47', '2025-11-02 14:07:39'),
(3071, 23, NULL, 3, 'EALS-HUMSS-5 / RM 13-10 (2nd Flr.)', '6:00-7:00', 'Wednesday', NULL, NULL, '0', '2025-11-02 13:28:47', '2025-11-02 14:07:39'),
(3072, 23, NULL, NULL, NULL, '7:00-8:00', 'Wednesday', NULL, NULL, '1', '2025-11-02 13:28:47', '2025-11-02 14:07:39'),
(3073, 23, NULL, NULL, NULL, '8:15-9:15', 'Wednesday', NULL, NULL, '1', '2025-11-02 13:28:47', '2025-11-02 14:07:39'),
(3074, 23, NULL, NULL, NULL, '9:15-10:15', 'Wednesday', NULL, NULL, '1', '2025-11-02 13:28:47', '2025-11-02 14:07:39'),
(3075, 23, NULL, NULL, NULL, '10:15-11:15', 'Wednesday', NULL, NULL, '1', '2025-11-02 13:28:47', '2025-11-02 14:07:39'),
(3076, 23, NULL, NULL, NULL, '11:15-12:15', 'Wednesday', NULL, NULL, '1', '2025-11-02 13:28:47', '2025-11-02 14:07:39'),
(3077, 23, NULL, NULL, NULL, '6:00-7:00', 'Thursday', NULL, NULL, '1', '2025-11-02 13:28:47', '2025-11-02 14:07:39'),
(3078, 23, NULL, NULL, NULL, '7:00-8:00', 'Thursday', NULL, NULL, '1', '2025-11-02 13:28:47', '2025-11-02 14:07:39'),
(3079, 23, NULL, NULL, NULL, '8:15-9:15', 'Thursday', NULL, NULL, '1', '2025-11-02 13:28:47', '2025-11-02 14:07:39'),
(3080, 23, NULL, 2, 'MIL-STEM-1 / RM 14-15 (4TH)', '9:15-10:15', 'Thursday', NULL, NULL, '0', '2025-11-02 13:28:47', '2025-11-02 14:07:39'),
(3081, 23, NULL, 3, 'EALS-HUMSS-5 / RM 13-10 (2nd Flr.)', '10:15-11:15', 'Thursday', NULL, NULL, '0', '2025-11-02 13:28:47', '2025-11-02 14:07:39'),
(3082, 23, NULL, NULL, NULL, '11:15-12:15', 'Thursday', NULL, NULL, '1', '2025-11-02 13:28:47', '2025-11-02 14:07:39'),
(3083, 23, NULL, NULL, NULL, '6:00-7:00', 'Friday', NULL, NULL, '1', '2025-11-02 13:28:47', '2025-11-02 14:07:39'),
(3084, 23, NULL, NULL, NULL, '7:00-8:00', 'Friday', NULL, NULL, '1', '2025-11-02 13:28:47', '2025-11-02 14:07:39'),
(3085, 23, NULL, 3, 'EALS-HUMSS-5 / RM 13-10 (2nd Flr.)', '8:15-9:15', 'Friday', NULL, NULL, '0', '2025-11-02 13:28:47', '2025-11-02 14:07:39'),
(3086, 23, NULL, 3, 'EALS-HUMSS-5 / RM 13-10 (2nd Flr.)', '9:15-10:15', 'Friday', NULL, NULL, '0', '2025-11-02 13:28:47', '2025-11-02 14:07:39'),
(3087, 23, NULL, NULL, NULL, '10:15-11:15', 'Friday', NULL, NULL, '1', '2025-11-02 13:28:47', '2025-11-02 14:07:39'),
(3088, 23, NULL, NULL, NULL, '11:15-12:15', 'Friday', NULL, NULL, '1', '2025-11-02 13:28:47', '2025-11-02 14:07:39'),
(3089, 28, NULL, 0, 'Available', '6:00-7:00', 'Monday', NULL, NULL, '1', '2025-11-02 13:29:14', '2025-11-02 13:29:14'),
(3090, 28, NULL, 2, 'MIL-STEM-1', '7:00-8:00', 'Monday', NULL, NULL, '0', '2025-11-02 13:29:14', '2025-11-02 13:29:14'),
(3091, 28, NULL, 2, 'MIL-STEM-1', '8:15-9:15', 'Monday', NULL, NULL, '0', '2025-11-02 13:29:14', '2025-11-02 13:29:14'),
(3092, 28, NULL, 0, 'Available', '9:15-10:15', 'Monday', NULL, NULL, '1', '2025-11-02 13:29:14', '2025-11-02 13:29:14'),
(3093, 28, NULL, 0, 'Available', '10:15-11:15', 'Monday', NULL, NULL, '1', '2025-11-02 13:29:14', '2025-11-02 13:29:14'),
(3094, 28, NULL, 0, 'Available', '11:15-12:15', 'Monday', NULL, NULL, '1', '2025-11-02 13:29:14', '2025-11-02 13:29:14'),
(3095, 28, NULL, 0, 'Available', '6:00-7:00', 'Tuesday', NULL, NULL, '1', '2025-11-02 13:29:14', '2025-11-02 13:29:14'),
(3096, 28, NULL, 0, 'Available', '7:00-8:00', 'Tuesday', NULL, NULL, '1', '2025-11-02 13:29:14', '2025-11-02 13:29:14'),
(3097, 28, NULL, 2, 'MIL-STEM-1', '8:15-9:15', 'Tuesday', NULL, NULL, '0', '2025-11-02 13:29:14', '2025-11-02 13:29:14'),
(3098, 28, NULL, 2, 'MIL-STEM-1', '9:15-10:15', 'Tuesday', NULL, NULL, '0', '2025-11-02 13:29:14', '2025-11-02 13:29:14'),
(3099, 28, NULL, 0, 'Available', '10:15-11:15', 'Tuesday', NULL, NULL, '1', '2025-11-02 13:29:14', '2025-11-02 13:29:14'),
(3100, 28, NULL, 0, 'Available', '11:15-12:15', 'Tuesday', NULL, NULL, '1', '2025-11-02 13:29:14', '2025-11-02 13:29:14'),
(3101, 28, NULL, 0, 'Available', '6:00-7:00', 'Wednesday', NULL, NULL, '1', '2025-11-02 13:29:14', '2025-11-02 13:29:14'),
(3102, 28, NULL, 0, 'Available', '7:00-8:00', 'Wednesday', NULL, NULL, '1', '2025-11-02 13:29:14', '2025-11-02 13:29:14'),
(3103, 28, NULL, 2, 'MIL-STEM-1', '8:15-9:15', 'Wednesday', NULL, NULL, '0', '2025-11-02 13:29:14', '2025-11-02 13:29:14'),
(3104, 28, NULL, 0, 'Available', '9:15-10:15', 'Wednesday', NULL, NULL, '1', '2025-11-02 13:29:14', '2025-11-02 13:29:14'),
(3105, 28, NULL, 0, 'Available', '10:15-11:15', 'Wednesday', NULL, NULL, '1', '2025-11-02 13:29:14', '2025-11-02 13:29:14'),
(3106, 28, NULL, 0, 'Available', '11:15-12:15', 'Wednesday', NULL, NULL, '1', '2025-11-02 13:29:14', '2025-11-02 13:29:14'),
(3107, 28, NULL, 0, 'Available', '6:00-7:00', 'Thursday', NULL, NULL, '1', '2025-11-02 13:29:14', '2025-11-02 13:29:14'),
(3108, 28, NULL, 0, 'Available', '7:00-8:00', 'Thursday', NULL, NULL, '1', '2025-11-02 13:29:14', '2025-11-02 13:29:14'),
(3109, 28, NULL, 0, 'Available', '8:15-9:15', 'Thursday', NULL, NULL, '1', '2025-11-02 13:29:14', '2025-11-02 13:29:14'),
(3110, 28, NULL, 0, 'Available', '9:15-10:15', 'Thursday', NULL, NULL, '1', '2025-11-02 13:29:14', '2025-11-02 13:29:14'),
(3111, 28, NULL, 2, 'MIL-STEM-1', '10:15-11:15', 'Thursday', NULL, NULL, '0', '2025-11-02 13:29:14', '2025-11-02 13:29:14'),
(3112, 28, NULL, 0, 'Available', '11:15-12:15', 'Thursday', NULL, NULL, '1', '2025-11-02 13:29:14', '2025-11-02 13:29:14'),
(3113, 28, NULL, 0, 'Available', '6:00-7:00', 'Friday', NULL, NULL, '1', '2025-11-02 13:29:14', '2025-11-02 13:29:14'),
(3114, 28, NULL, 0, 'Available', '7:00-8:00', 'Friday', NULL, NULL, '1', '2025-11-02 13:29:14', '2025-11-02 13:29:14'),
(3115, 28, NULL, 0, 'Available', '8:15-9:15', 'Friday', NULL, NULL, '1', '2025-11-02 13:29:14', '2025-11-02 13:29:14'),
(3116, 28, NULL, 3, 'EALS-HUMSS-5', '9:15-10:15', 'Friday', NULL, NULL, '0', '2025-11-02 13:29:14', '2025-11-02 13:29:14'),
(3117, 28, NULL, 0, 'Available', '10:15-11:15', 'Friday', NULL, NULL, '1', '2025-11-02 13:29:14', '2025-11-02 13:29:14'),
(3118, 28, NULL, 0, 'Available', '11:15-12:15', 'Friday', NULL, NULL, '1', '2025-11-02 13:29:14', '2025-11-02 13:29:14'),
(3119, 31, NULL, 2, 'MIL-STEM-1', '6:00-7:00', 'Monday', NULL, NULL, '0', '2025-11-02 14:06:34', '2025-11-02 14:06:34'),
(3120, 31, NULL, 2, 'MIL-STEM-1', '7:00-8:00', 'Monday', NULL, NULL, '0', '2025-11-02 14:06:34', '2025-11-02 14:06:34'),
(3121, 31, NULL, 0, 'Available', '8:15-9:15', 'Monday', NULL, NULL, '1', '2025-11-02 14:06:34', '2025-11-02 14:06:34'),
(3122, 31, NULL, 0, 'Available', '9:15-10:15', 'Monday', NULL, NULL, '1', '2025-11-02 14:06:34', '2025-11-02 14:06:34'),
(3123, 31, NULL, 0, 'Available', '10:15-11:15', 'Monday', NULL, NULL, '1', '2025-11-02 14:06:34', '2025-11-02 14:06:34'),
(3124, 31, NULL, 0, 'Available', '11:15-12:15', 'Monday', NULL, NULL, '1', '2025-11-02 14:06:34', '2025-11-02 14:06:34'),
(3125, 31, NULL, 0, 'Available', '6:00-7:00', 'Tuesday', NULL, NULL, '1', '2025-11-02 14:06:34', '2025-11-02 14:06:34'),
(3126, 31, NULL, 0, 'Available', '7:00-8:00', 'Tuesday', NULL, NULL, '1', '2025-11-02 14:06:34', '2025-11-02 14:06:34'),
(3127, 31, NULL, 2, 'MIL-STEM-1', '8:15-9:15', 'Tuesday', NULL, NULL, '0', '2025-11-02 14:06:34', '2025-11-02 14:06:34'),
(3128, 31, NULL, 0, 'Available', '9:15-10:15', 'Tuesday', NULL, NULL, '1', '2025-11-02 14:06:34', '2025-11-02 14:06:34'),
(3129, 31, NULL, 0, 'Available', '10:15-11:15', 'Tuesday', NULL, NULL, '1', '2025-11-02 14:06:34', '2025-11-02 14:06:34'),
(3130, 31, NULL, 0, 'Available', '11:15-12:15', 'Tuesday', NULL, NULL, '1', '2025-11-02 14:06:34', '2025-11-02 14:06:34'),
(3131, 31, NULL, 3, 'EALS-HUMSS-5', '6:00-7:00', 'Wednesday', NULL, NULL, '0', '2025-11-02 14:06:34', '2025-11-02 14:06:34'),
(3132, 31, NULL, 3, 'EALS-HUMSS-5', '7:00-8:00', 'Wednesday', NULL, NULL, '0', '2025-11-02 14:06:34', '2025-11-02 14:06:34'),
(3133, 31, NULL, 0, 'Available', '8:15-9:15', 'Wednesday', NULL, NULL, '1', '2025-11-02 14:06:34', '2025-11-02 14:06:34'),
(3134, 31, NULL, 2, 'MIL-STEM-1', '9:15-10:15', 'Wednesday', NULL, NULL, '0', '2025-11-02 14:06:34', '2025-11-02 14:06:34'),
(3135, 31, NULL, 2, 'MIL-STEM-1', '10:15-11:15', 'Wednesday', NULL, NULL, '0', '2025-11-02 14:06:34', '2025-11-02 14:06:34'),
(3136, 31, NULL, 0, 'Available', '11:15-12:15', 'Wednesday', NULL, NULL, '1', '2025-11-02 14:06:34', '2025-11-02 14:06:34'),
(3137, 31, NULL, 0, 'Available', '6:00-7:00', 'Thursday', NULL, NULL, '1', '2025-11-02 14:06:34', '2025-11-02 14:06:34'),
(3138, 31, NULL, 2, 'MIL-STEM-1', '7:00-8:00', 'Thursday', NULL, NULL, '0', '2025-11-02 14:06:34', '2025-11-02 14:06:34'),
(3139, 31, NULL, 0, 'Available', '8:15-9:15', 'Thursday', NULL, NULL, '1', '2025-11-02 14:06:34', '2025-11-02 14:06:34'),
(3140, 31, NULL, 0, 'Available', '9:15-10:15', 'Thursday', NULL, NULL, '1', '2025-11-02 14:06:34', '2025-11-02 14:06:34'),
(3141, 31, NULL, 2, 'MIL-STEM-1', '10:15-11:15', 'Thursday', NULL, NULL, '0', '2025-11-02 14:06:34', '2025-11-02 14:06:34'),
(3142, 31, NULL, 0, 'Available', '11:15-12:15', 'Thursday', NULL, NULL, '1', '2025-11-02 14:06:34', '2025-11-02 14:06:34'),
(3143, 31, NULL, 0, 'Available', '6:00-7:00', 'Friday', NULL, NULL, '1', '2025-11-02 14:06:34', '2025-11-02 14:06:34'),
(3144, 31, NULL, 0, 'Available', '7:00-8:00', 'Friday', NULL, NULL, '1', '2025-11-02 14:06:34', '2025-11-02 14:06:34'),
(3145, 31, NULL, 0, 'Available', '8:15-9:15', 'Friday', NULL, NULL, '1', '2025-11-02 14:06:34', '2025-11-02 14:06:34'),
(3146, 31, NULL, 3, 'EALS-HUMSS-5', '9:15-10:15', 'Friday', NULL, NULL, '0', '2025-11-02 14:06:34', '2025-11-02 14:06:34'),
(3147, 31, NULL, 0, 'Available', '10:15-11:15', 'Friday', NULL, NULL, '1', '2025-11-02 14:06:34', '2025-11-02 14:06:34'),
(3148, 31, NULL, 0, 'Available', '11:15-12:15', 'Friday', NULL, NULL, '1', '2025-11-02 14:06:34', '2025-11-02 14:06:34'),
(3149, 25, NULL, 0, 'Available', '6:00-7:00', 'Monday', NULL, NULL, '1', '2025-11-02 14:08:28', '2025-11-02 14:08:28'),
(3150, 25, NULL, 1, 'MIL-HUMSS-8', '7:00-8:00', 'Monday', NULL, NULL, '0', '2025-11-02 14:08:28', '2025-11-02 14:08:28'),
(3151, 25, NULL, 2, 'MIL-STEM-1', '8:15-9:15', 'Monday', NULL, NULL, '0', '2025-11-02 14:08:28', '2025-11-02 14:08:28'),
(3152, 25, NULL, 0, 'Available', '9:15-10:15', 'Monday', NULL, NULL, '1', '2025-11-02 14:08:28', '2025-11-02 14:08:28'),
(3153, 25, NULL, 0, 'Available', '10:15-11:15', 'Monday', NULL, NULL, '1', '2025-11-02 14:08:28', '2025-11-02 14:08:28'),
(3154, 25, NULL, 0, 'Available', '11:15-12:15', 'Monday', NULL, NULL, '1', '2025-11-02 14:08:28', '2025-11-02 14:08:28'),
(3155, 25, NULL, 2, 'MIL-STEM-1', '6:00-7:00', 'Tuesday', NULL, NULL, '0', '2025-11-02 14:08:28', '2025-11-02 14:08:28'),
(3156, 25, NULL, 0, 'Available', '7:00-8:00', 'Tuesday', NULL, NULL, '1', '2025-11-02 14:08:28', '2025-11-02 14:08:28'),
(3157, 25, NULL, 0, 'Available', '8:15-9:15', 'Tuesday', NULL, NULL, '1', '2025-11-02 14:08:28', '2025-11-02 14:08:28'),
(3158, 25, NULL, 0, 'Available', '9:15-10:15', 'Tuesday', NULL, NULL, '1', '2025-11-02 14:08:28', '2025-11-02 14:08:28'),
(3159, 25, NULL, 3, 'EALS-HUMSS-5', '10:15-11:15', 'Tuesday', NULL, NULL, '0', '2025-11-02 14:08:28', '2025-11-02 14:08:28'),
(3160, 25, NULL, 0, 'Available', '11:15-12:15', 'Tuesday', NULL, NULL, '1', '2025-11-02 14:08:28', '2025-11-02 14:08:28'),
(3161, 25, NULL, 0, 'Available', '6:00-7:00', 'Wednesday', NULL, NULL, '1', '2025-11-02 14:08:28', '2025-11-02 14:08:28'),
(3162, 25, NULL, 0, 'Available', '7:00-8:00', 'Wednesday', NULL, NULL, '1', '2025-11-02 14:08:28', '2025-11-02 14:08:28'),
(3163, 25, NULL, 0, 'Available', '8:15-9:15', 'Wednesday', NULL, NULL, '1', '2025-11-02 14:08:28', '2025-11-02 14:08:28'),
(3164, 25, NULL, 0, 'Available', '9:15-10:15', 'Wednesday', NULL, NULL, '1', '2025-11-02 14:08:28', '2025-11-02 14:08:28'),
(3165, 25, NULL, 3, 'EALS-HUMSS-5', '10:15-11:15', 'Wednesday', NULL, NULL, '0', '2025-11-02 14:08:28', '2025-11-02 14:08:28'),
(3166, 25, NULL, 0, 'Available', '11:15-12:15', 'Wednesday', NULL, NULL, '1', '2025-11-02 14:08:28', '2025-11-02 14:08:28'),
(3167, 25, NULL, 0, 'Available', '6:00-7:00', 'Thursday', NULL, NULL, '1', '2025-11-02 14:08:28', '2025-11-02 14:08:28'),
(3168, 25, NULL, 0, 'Available', '7:00-8:00', 'Thursday', NULL, NULL, '1', '2025-11-02 14:08:28', '2025-11-02 14:08:28'),
(3169, 25, NULL, 2, 'MIL-STEM-1', '8:15-9:15', 'Thursday', NULL, NULL, '0', '2025-11-02 14:08:28', '2025-11-02 14:08:28'),
(3170, 25, NULL, 0, 'Available', '9:15-10:15', 'Thursday', NULL, NULL, '1', '2025-11-02 14:08:28', '2025-11-02 14:08:28'),
(3171, 25, NULL, 0, 'Available', '10:15-11:15', 'Thursday', NULL, NULL, '1', '2025-11-02 14:08:28', '2025-11-02 14:08:28'),
(3172, 25, NULL, 0, 'Available', '11:15-12:15', 'Thursday', NULL, NULL, '1', '2025-11-02 14:08:28', '2025-11-02 14:08:28'),
(3173, 25, NULL, 0, 'Available', '6:00-7:00', 'Friday', NULL, NULL, '1', '2025-11-02 14:08:28', '2025-11-02 14:08:28'),
(3174, 25, NULL, 0, 'Available', '7:00-8:00', 'Friday', NULL, NULL, '1', '2025-11-02 14:08:28', '2025-11-02 14:08:28'),
(3175, 25, NULL, 0, 'Available', '8:15-9:15', 'Friday', NULL, NULL, '1', '2025-11-02 14:08:28', '2025-11-02 14:08:28'),
(3176, 25, NULL, 3, 'EALS-HUMSS-5', '9:15-10:15', 'Friday', NULL, NULL, '0', '2025-11-02 14:08:28', '2025-11-02 14:08:28'),
(3177, 25, NULL, 0, 'Available', '10:15-11:15', 'Friday', NULL, NULL, '1', '2025-11-02 14:08:28', '2025-11-02 14:08:28'),
(3178, 25, NULL, 0, 'Available', '11:15-12:15', 'Friday', NULL, NULL, '1', '2025-11-02 14:08:28', '2025-11-02 14:08:28'),
(3179, 24, NULL, 0, 'Available', '6:00-7:00', 'Monday', NULL, NULL, '1', '2025-11-02 14:08:50', '2025-11-02 14:08:50'),
(3180, 24, NULL, 0, 'Available', '7:00-8:00', 'Monday', NULL, NULL, '1', '2025-11-02 14:08:50', '2025-11-02 14:08:50'),
(3181, 24, NULL, 0, 'Available', '8:15-9:15', 'Monday', NULL, NULL, '1', '2025-11-02 14:08:50', '2025-11-02 14:08:50'),
(3182, 24, NULL, 0, 'Available', '9:15-10:15', 'Monday', NULL, NULL, '1', '2025-11-02 14:08:50', '2025-11-02 14:08:50'),
(3183, 24, NULL, 0, 'Available', '10:15-11:15', 'Monday', NULL, NULL, '1', '2025-11-02 14:08:50', '2025-11-02 14:08:50'),
(3184, 24, NULL, 0, 'Available', '11:15-12:15', 'Monday', NULL, NULL, '1', '2025-11-02 14:08:50', '2025-11-02 14:08:50'),
(3185, 24, NULL, 0, 'Available', '6:00-7:00', 'Tuesday', NULL, NULL, '1', '2025-11-02 14:08:50', '2025-11-02 14:08:50'),
(3186, 24, NULL, 0, 'Available', '7:00-8:00', 'Tuesday', NULL, NULL, '1', '2025-11-02 14:08:50', '2025-11-02 14:08:50'),
(3187, 24, NULL, 0, 'Available', '8:15-9:15', 'Tuesday', NULL, NULL, '1', '2025-11-02 14:08:50', '2025-11-02 14:08:50'),
(3188, 24, NULL, 0, 'Available', '9:15-10:15', 'Tuesday', NULL, NULL, '1', '2025-11-02 14:08:50', '2025-11-02 14:08:50'),
(3189, 24, NULL, 0, 'Available', '10:15-11:15', 'Tuesday', NULL, NULL, '1', '2025-11-02 14:08:50', '2025-11-02 14:08:50'),
(3190, 24, NULL, 0, 'Available', '11:15-12:15', 'Tuesday', NULL, NULL, '1', '2025-11-02 14:08:50', '2025-11-02 14:08:50'),
(3191, 24, NULL, 0, 'Available', '6:00-7:00', 'Wednesday', NULL, NULL, '1', '2025-11-02 14:08:50', '2025-11-02 14:08:50'),
(3192, 24, NULL, 0, 'Available', '7:00-8:00', 'Wednesday', NULL, NULL, '1', '2025-11-02 14:08:50', '2025-11-02 14:08:50'),
(3193, 24, NULL, 0, 'Available', '8:15-9:15', 'Wednesday', NULL, NULL, '1', '2025-11-02 14:08:50', '2025-11-02 14:08:50'),
(3194, 24, NULL, 0, 'Available', '9:15-10:15', 'Wednesday', NULL, NULL, '1', '2025-11-02 14:08:50', '2025-11-02 14:08:50'),
(3195, 24, NULL, 0, 'Available', '10:15-11:15', 'Wednesday', NULL, NULL, '1', '2025-11-02 14:08:50', '2025-11-02 14:08:50'),
(3196, 24, NULL, 0, 'Available', '11:15-12:15', 'Wednesday', NULL, NULL, '1', '2025-11-02 14:08:50', '2025-11-02 14:08:50'),
(3197, 24, NULL, 0, 'Available', '6:00-7:00', 'Thursday', NULL, NULL, '1', '2025-11-02 14:08:50', '2025-11-02 14:08:50'),
(3198, 24, NULL, 0, 'Available', '7:00-8:00', 'Thursday', NULL, NULL, '1', '2025-11-02 14:08:50', '2025-11-02 14:08:50'),
(3199, 24, NULL, 0, 'Available', '8:15-9:15', 'Thursday', NULL, NULL, '1', '2025-11-02 14:08:50', '2025-11-02 14:08:50'),
(3200, 24, NULL, 0, 'Available', '9:15-10:15', 'Thursday', NULL, NULL, '1', '2025-11-02 14:08:50', '2025-11-02 14:08:50'),
(3201, 24, NULL, 0, 'Available', '10:15-11:15', 'Thursday', NULL, NULL, '1', '2025-11-02 14:08:50', '2025-11-02 14:08:50'),
(3202, 24, NULL, 0, 'Available', '11:15-12:15', 'Thursday', NULL, NULL, '1', '2025-11-02 14:08:50', '2025-11-02 14:08:50'),
(3203, 24, NULL, 0, 'Available', '6:00-7:00', 'Friday', NULL, NULL, '1', '2025-11-02 14:08:50', '2025-11-02 14:08:50'),
(3204, 24, NULL, 0, 'Available', '7:00-8:00', 'Friday', NULL, NULL, '1', '2025-11-02 14:08:50', '2025-11-02 14:08:50'),
(3205, 24, NULL, 0, 'Available', '8:15-9:15', 'Friday', NULL, NULL, '1', '2025-11-02 14:08:50', '2025-11-02 14:08:50'),
(3206, 24, NULL, 0, 'Available', '9:15-10:15', 'Friday', NULL, NULL, '1', '2025-11-02 14:08:50', '2025-11-02 14:08:50'),
(3207, 24, NULL, 0, 'Available', '10:15-11:15', 'Friday', NULL, NULL, '1', '2025-11-02 14:08:50', '2025-11-02 14:08:50'),
(3208, 24, NULL, 0, 'Available', '11:15-12:15', 'Friday', NULL, NULL, '1', '2025-11-02 14:08:50', '2025-11-02 14:08:50'),
(3209, 24, NULL, 0, 'Available', '6:00-7:00', 'Monday', NULL, NULL, '1', '2025-11-02 14:09:06', '2025-11-02 14:09:06'),
(3210, 24, NULL, 0, 'Available', '7:00-8:00', 'Monday', NULL, NULL, '1', '2025-11-02 14:09:06', '2025-11-02 14:09:06'),
(3211, 24, NULL, 0, 'Available', '8:15-9:15', 'Monday', NULL, NULL, '1', '2025-11-02 14:09:06', '2025-11-02 14:09:06'),
(3212, 24, NULL, 0, 'Available', '9:15-10:15', 'Monday', NULL, NULL, '1', '2025-11-02 14:09:06', '2025-11-02 14:09:06'),
(3213, 24, NULL, 0, 'Available', '10:15-11:15', 'Monday', NULL, NULL, '1', '2025-11-02 14:09:06', '2025-11-02 14:09:06'),
(3214, 24, NULL, 0, 'Available', '11:15-12:15', 'Monday', NULL, NULL, '1', '2025-11-02 14:09:06', '2025-11-02 14:09:06'),
(3215, 24, NULL, 0, 'Available', '6:00-7:00', 'Tuesday', NULL, NULL, '1', '2025-11-02 14:09:06', '2025-11-02 14:09:06'),
(3216, 24, NULL, 0, 'Available', '7:00-8:00', 'Tuesday', NULL, NULL, '1', '2025-11-02 14:09:06', '2025-11-02 14:09:06'),
(3217, 24, NULL, 0, 'Available', '8:15-9:15', 'Tuesday', NULL, NULL, '1', '2025-11-02 14:09:06', '2025-11-02 14:09:06'),
(3218, 24, NULL, 0, 'Available', '9:15-10:15', 'Tuesday', NULL, NULL, '1', '2025-11-02 14:09:06', '2025-11-02 14:09:06'),
(3219, 24, NULL, 0, 'Available', '10:15-11:15', 'Tuesday', NULL, NULL, '1', '2025-11-02 14:09:06', '2025-11-02 14:09:06'),
(3220, 24, NULL, 0, 'Available', '11:15-12:15', 'Tuesday', NULL, NULL, '1', '2025-11-02 14:09:06', '2025-11-02 14:09:06'),
(3221, 24, NULL, 0, 'Available', '6:00-7:00', 'Wednesday', NULL, NULL, '1', '2025-11-02 14:09:06', '2025-11-02 14:09:06'),
(3222, 24, NULL, 0, 'Available', '7:00-8:00', 'Wednesday', NULL, NULL, '1', '2025-11-02 14:09:06', '2025-11-02 14:09:06'),
(3223, 24, NULL, 0, 'Available', '8:15-9:15', 'Wednesday', NULL, NULL, '1', '2025-11-02 14:09:06', '2025-11-02 14:09:06'),
(3224, 24, NULL, 0, 'Available', '9:15-10:15', 'Wednesday', NULL, NULL, '1', '2025-11-02 14:09:06', '2025-11-02 14:09:06'),
(3225, 24, NULL, 0, 'Available', '10:15-11:15', 'Wednesday', NULL, NULL, '1', '2025-11-02 14:09:06', '2025-11-02 14:09:06'),
(3226, 24, NULL, 0, 'Available', '11:15-12:15', 'Wednesday', NULL, NULL, '1', '2025-11-02 14:09:06', '2025-11-02 14:09:06'),
(3227, 24, NULL, 0, 'Available', '6:00-7:00', 'Thursday', NULL, NULL, '1', '2025-11-02 14:09:06', '2025-11-02 14:09:06'),
(3228, 24, NULL, 0, 'Available', '7:00-8:00', 'Thursday', NULL, NULL, '1', '2025-11-02 14:09:06', '2025-11-02 14:09:06'),
(3229, 24, NULL, 0, 'Available', '8:15-9:15', 'Thursday', NULL, NULL, '1', '2025-11-02 14:09:06', '2025-11-02 14:09:06'),
(3230, 24, NULL, 0, 'Available', '9:15-10:15', 'Thursday', NULL, NULL, '1', '2025-11-02 14:09:06', '2025-11-02 14:09:06'),
(3231, 24, NULL, 0, 'Available', '10:15-11:15', 'Thursday', NULL, NULL, '1', '2025-11-02 14:09:06', '2025-11-02 14:09:06'),
(3232, 24, NULL, 0, 'Available', '11:15-12:15', 'Thursday', NULL, NULL, '1', '2025-11-02 14:09:06', '2025-11-02 14:09:06'),
(3233, 24, NULL, 0, 'Available', '6:00-7:00', 'Friday', NULL, NULL, '1', '2025-11-02 14:09:06', '2025-11-02 14:09:06'),
(3234, 24, NULL, 0, 'Available', '7:00-8:00', 'Friday', NULL, NULL, '1', '2025-11-02 14:09:06', '2025-11-02 14:09:06'),
(3235, 24, NULL, 0, 'Available', '8:15-9:15', 'Friday', NULL, NULL, '1', '2025-11-02 14:09:06', '2025-11-02 14:09:06'),
(3236, 24, NULL, 0, 'Available', '9:15-10:15', 'Friday', NULL, NULL, '1', '2025-11-02 14:09:06', '2025-11-02 14:09:06'),
(3237, 24, NULL, 0, 'Available', '10:15-11:15', 'Friday', NULL, NULL, '1', '2025-11-02 14:09:06', '2025-11-02 14:09:06'),
(3238, 24, NULL, 0, 'Available', '11:15-12:15', 'Friday', NULL, NULL, '1', '2025-11-02 14:09:06', '2025-11-02 14:09:06'),
(3239, 35, NULL, 2, 'MIL-STEM-1', '6:00-7:00', 'Monday', NULL, NULL, '0', '2025-11-04 21:55:59', '2025-11-04 21:55:59'),
(3240, 35, NULL, 2, 'MIL-STEM-1', '7:00-8:00', 'Monday', NULL, NULL, '0', '2025-11-04 21:55:59', '2025-11-04 21:55:59'),
(3241, 35, NULL, 0, 'Available', '8:15-9:15', 'Monday', NULL, NULL, '1', '2025-11-04 21:55:59', '2025-11-04 21:55:59'),
(3242, 35, NULL, 0, 'Available', '9:15-10:15', 'Monday', NULL, NULL, '1', '2025-11-04 21:55:59', '2025-11-04 21:55:59'),
(3243, 35, NULL, 0, 'Available', '10:15-11:15', 'Monday', NULL, NULL, '1', '2025-11-04 21:55:59', '2025-11-04 21:55:59'),
(3244, 35, NULL, 0, 'Available', '11:15-12:15', 'Monday', NULL, NULL, '1', '2025-11-04 21:55:59', '2025-11-04 21:55:59'),
(3245, 35, NULL, 0, 'Available', '6:00-7:00', 'Tuesday', NULL, NULL, '1', '2025-11-04 21:55:59', '2025-11-04 21:55:59'),
(3246, 35, NULL, 0, 'Available', '7:00-8:00', 'Tuesday', NULL, NULL, '1', '2025-11-04 21:55:59', '2025-11-04 21:55:59'),
(3247, 35, NULL, 0, 'Available', '8:15-9:15', 'Tuesday', NULL, NULL, '1', '2025-11-04 21:55:59', '2025-11-04 21:55:59'),
(3248, 35, NULL, 0, 'Available', '9:15-10:15', 'Tuesday', NULL, NULL, '1', '2025-11-04 21:55:59', '2025-11-04 21:55:59'),
(3249, 35, NULL, 0, 'Available', '10:15-11:15', 'Tuesday', NULL, NULL, '1', '2025-11-04 21:55:59', '2025-11-04 21:55:59'),
(3250, 35, NULL, 3, 'EALS-HUMSS-5', '11:15-12:15', 'Tuesday', NULL, NULL, '0', '2025-11-04 21:55:59', '2025-11-04 21:55:59'),
(3251, 35, NULL, 0, 'Available', '6:00-7:00', 'Wednesday', NULL, NULL, '1', '2025-11-04 21:55:59', '2025-11-04 21:55:59'),
(3252, 35, NULL, 3, 'EALS-HUMSS-5', '7:00-8:00', 'Wednesday', NULL, NULL, '0', '2025-11-04 21:55:59', '2025-11-04 21:55:59'),
(3253, 35, NULL, 0, 'Available', '8:15-9:15', 'Wednesday', NULL, NULL, '1', '2025-11-04 21:55:59', '2025-11-04 21:55:59'),
(3254, 35, NULL, 0, 'Available', '9:15-10:15', 'Wednesday', NULL, NULL, '1', '2025-11-04 21:55:59', '2025-11-04 21:55:59'),
(3255, 35, NULL, 0, 'Available', '10:15-11:15', 'Wednesday', NULL, NULL, '1', '2025-11-04 21:55:59', '2025-11-04 21:55:59'),
(3256, 35, NULL, 0, 'Available', '11:15-12:15', 'Wednesday', NULL, NULL, '1', '2025-11-04 21:55:59', '2025-11-04 21:55:59'),
(3257, 35, NULL, 0, 'Available', '6:00-7:00', 'Thursday', NULL, NULL, '1', '2025-11-04 21:55:59', '2025-11-04 21:55:59'),
(3258, 35, NULL, 0, 'Available', '7:00-8:00', 'Thursday', NULL, NULL, '1', '2025-11-04 21:55:59', '2025-11-04 21:55:59'),
(3259, 35, NULL, 1, 'MIL-HUMSS-8', '8:15-9:15', 'Thursday', NULL, NULL, '0', '2025-11-04 21:55:59', '2025-11-04 21:55:59'),
(3260, 35, NULL, 1, 'MIL-HUMSS-8', '9:15-10:15', 'Thursday', NULL, NULL, '0', '2025-11-04 21:55:59', '2025-11-04 21:55:59'),
(3261, 35, NULL, 0, 'Available', '10:15-11:15', 'Thursday', NULL, NULL, '1', '2025-11-04 21:55:59', '2025-11-04 21:55:59'),
(3262, 35, NULL, 0, 'Available', '11:15-12:15', 'Thursday', NULL, NULL, '1', '2025-11-04 21:55:59', '2025-11-04 21:55:59'),
(3263, 35, NULL, 0, 'Available', '6:00-7:00', 'Friday', NULL, NULL, '1', '2025-11-04 21:55:59', '2025-11-04 21:55:59'),
(3264, 35, NULL, 2, 'MIL-STEM-1', '7:00-8:00', 'Friday', NULL, NULL, '0', '2025-11-04 21:55:59', '2025-11-04 21:55:59'),
(3265, 35, NULL, 0, 'Available', '8:15-9:15', 'Friday', NULL, NULL, '1', '2025-11-04 21:55:59', '2025-11-04 21:55:59'),
(3266, 35, NULL, 3, 'EALS-HUMSS-5', '9:15-10:15', 'Friday', NULL, NULL, '0', '2025-11-04 21:55:59', '2025-11-04 21:55:59'),
(3267, 35, NULL, 0, 'Available', '10:15-11:15', 'Friday', NULL, NULL, '1', '2025-11-04 21:55:59', '2025-11-04 21:55:59'),
(3268, 35, NULL, 0, 'Available', '11:15-12:15', 'Friday', NULL, NULL, '1', '2025-11-04 21:55:59', '2025-11-04 21:55:59'),
(3269, 23, NULL, 0, 'Available', '6:00-7:00', 'Monday', NULL, NULL, '1', '2025-11-05 16:32:12', '2025-11-05 16:32:12'),
(3270, 23, NULL, 0, 'Available', '7:00-8:00', 'Monday', NULL, NULL, '1', '2025-11-05 16:32:12', '2025-11-05 16:32:12'),
(3271, 23, NULL, 0, 'Available', '8:15-9:15', 'Monday', NULL, NULL, '1', '2025-11-05 16:32:12', '2025-11-05 16:32:12'),
(3272, 23, NULL, 0, 'Available', '9:15-10:15', 'Monday', NULL, NULL, '1', '2025-11-05 16:32:12', '2025-11-05 16:32:12'),
(3273, 23, NULL, 0, 'Available', '10:15-11:15', 'Monday', NULL, NULL, '1', '2025-11-05 16:32:12', '2025-11-05 16:32:12'),
(3274, 23, NULL, 0, 'Available', '11:15-12:15', 'Monday', NULL, NULL, '1', '2025-11-05 16:32:12', '2025-11-05 16:32:12'),
(3275, 23, NULL, 0, 'Available', '6:00-7:00', 'Tuesday', NULL, NULL, '1', '2025-11-05 16:32:12', '2025-11-05 16:32:12'),
(3276, 23, NULL, 0, 'Available', '7:00-8:00', 'Tuesday', NULL, NULL, '1', '2025-11-05 16:32:12', '2025-11-05 16:32:12'),
(3277, 23, NULL, 0, 'Available', '8:15-9:15', 'Tuesday', NULL, NULL, '1', '2025-11-05 16:32:12', '2025-11-05 16:32:12'),
(3278, 23, NULL, 0, 'Available', '9:15-10:15', 'Tuesday', NULL, NULL, '1', '2025-11-05 16:32:12', '2025-11-05 16:32:12'),
(3279, 23, NULL, 0, 'Available', '10:15-11:15', 'Tuesday', NULL, NULL, '1', '2025-11-05 16:32:12', '2025-11-05 16:32:12'),
(3280, 23, NULL, 0, 'Available', '11:15-12:15', 'Tuesday', NULL, NULL, '1', '2025-11-05 16:32:12', '2025-11-05 16:32:12'),
(3281, 23, NULL, 0, 'Available', '6:00-7:00', 'Wednesday', NULL, NULL, '1', '2025-11-05 16:32:12', '2025-11-05 16:32:12'),
(3282, 23, NULL, 0, 'Available', '7:00-8:00', 'Wednesday', NULL, NULL, '1', '2025-11-05 16:32:12', '2025-11-05 16:32:12'),
(3283, 23, NULL, 0, 'Available', '8:15-9:15', 'Wednesday', NULL, NULL, '1', '2025-11-05 16:32:12', '2025-11-05 16:32:12'),
(3284, 23, NULL, 0, 'Available', '9:15-10:15', 'Wednesday', NULL, NULL, '1', '2025-11-05 16:32:12', '2025-11-05 16:32:12'),
(3285, 23, NULL, 0, 'Available', '10:15-11:15', 'Wednesday', NULL, NULL, '1', '2025-11-05 16:32:12', '2025-11-05 16:32:12'),
(3286, 23, NULL, 0, 'Available', '11:15-12:15', 'Wednesday', NULL, NULL, '1', '2025-11-05 16:32:12', '2025-11-05 16:32:12'),
(3287, 23, NULL, 0, 'Available', '6:00-7:00', 'Thursday', NULL, NULL, '1', '2025-11-05 16:32:12', '2025-11-05 16:32:12'),
(3288, 23, NULL, 0, 'Available', '7:00-8:00', 'Thursday', NULL, NULL, '1', '2025-11-05 16:32:12', '2025-11-05 16:32:12'),
(3289, 23, NULL, 0, 'Available', '8:15-9:15', 'Thursday', NULL, NULL, '1', '2025-11-05 16:32:12', '2025-11-05 16:32:12'),
(3290, 23, NULL, 0, 'Available', '9:15-10:15', 'Thursday', NULL, NULL, '1', '2025-11-05 16:32:12', '2025-11-05 16:32:12'),
(3291, 23, NULL, 0, 'Available', '10:15-11:15', 'Thursday', NULL, NULL, '1', '2025-11-05 16:32:12', '2025-11-05 16:32:12'),
(3292, 23, NULL, 0, 'Available', '11:15-12:15', 'Thursday', NULL, NULL, '1', '2025-11-05 16:32:12', '2025-11-05 16:32:12'),
(3293, 23, NULL, 0, 'Available', '6:00-7:00', 'Friday', NULL, NULL, '1', '2025-11-05 16:32:12', '2025-11-05 16:32:12'),
(3294, 23, NULL, 0, 'Available', '7:00-8:00', 'Friday', NULL, NULL, '1', '2025-11-05 16:32:12', '2025-11-05 16:32:12'),
(3295, 23, NULL, 0, 'Available', '8:15-9:15', 'Friday', NULL, NULL, '1', '2025-11-05 16:32:12', '2025-11-05 16:32:12'),
(3296, 23, NULL, 0, 'Available', '9:15-10:15', 'Friday', NULL, NULL, '1', '2025-11-05 16:32:12', '2025-11-05 16:32:12'),
(3297, 23, NULL, 0, 'Available', '10:15-11:15', 'Friday', NULL, NULL, '1', '2025-11-05 16:32:12', '2025-11-05 16:32:12'),
(3298, 23, NULL, 0, 'Available', '11:15-12:15', 'Friday', NULL, NULL, '1', '2025-11-05 16:32:12', '2025-11-05 16:32:12'),
(3299, 23, NULL, 0, 'Available', '6:00-7:00', 'Monday', NULL, NULL, '1', '2025-11-05 21:37:54', '2025-11-05 21:37:54'),
(3300, 23, NULL, 0, 'Available', '7:00-8:00', 'Monday', NULL, NULL, '1', '2025-11-05 21:37:54', '2025-11-05 21:37:54'),
(3301, 23, NULL, 0, 'Available', '8:15-9:15', 'Monday', NULL, NULL, '1', '2025-11-05 21:37:54', '2025-11-05 21:37:54'),
(3302, 23, NULL, 0, 'Available', '9:15-10:15', 'Monday', NULL, NULL, '1', '2025-11-05 21:37:54', '2025-11-05 21:37:54'),
(3303, 23, NULL, 0, 'Available', '10:15-11:15', 'Monday', NULL, NULL, '1', '2025-11-05 21:37:54', '2025-11-05 21:37:54'),
(3304, 23, NULL, 0, 'Available', '11:15-12:15', 'Monday', NULL, NULL, '1', '2025-11-05 21:37:54', '2025-11-05 21:37:54'),
(3305, 23, NULL, 0, 'Available', '6:00-7:00', 'Tuesday', NULL, NULL, '1', '2025-11-05 21:37:54', '2025-11-05 21:37:54'),
(3306, 23, NULL, 0, 'Available', '7:00-8:00', 'Tuesday', NULL, NULL, '1', '2025-11-05 21:37:54', '2025-11-05 21:37:54'),
(3307, 23, NULL, 0, 'Available', '8:15-9:15', 'Tuesday', NULL, NULL, '1', '2025-11-05 21:37:54', '2025-11-05 21:37:54'),
(3308, 23, NULL, 0, 'Available', '9:15-10:15', 'Tuesday', NULL, NULL, '1', '2025-11-05 21:37:54', '2025-11-05 21:37:54'),
(3309, 23, NULL, 0, 'Available', '10:15-11:15', 'Tuesday', NULL, NULL, '1', '2025-11-05 21:37:54', '2025-11-05 21:37:54'),
(3310, 23, NULL, 0, 'Available', '11:15-12:15', 'Tuesday', NULL, NULL, '1', '2025-11-05 21:37:54', '2025-11-05 21:37:54'),
(3311, 23, NULL, 0, 'Available', '6:00-7:00', 'Wednesday', NULL, NULL, '1', '2025-11-05 21:37:54', '2025-11-05 21:37:54'),
(3312, 23, NULL, 0, 'Available', '7:00-8:00', 'Wednesday', NULL, NULL, '1', '2025-11-05 21:37:54', '2025-11-05 21:37:54'),
(3313, 23, NULL, 0, 'Available', '8:15-9:15', 'Wednesday', NULL, NULL, '1', '2025-11-05 21:37:54', '2025-11-05 21:37:54'),
(3314, 23, NULL, 0, 'Available', '9:15-10:15', 'Wednesday', NULL, NULL, '1', '2025-11-05 21:37:54', '2025-11-05 21:37:54'),
(3315, 23, NULL, 0, 'Available', '10:15-11:15', 'Wednesday', NULL, NULL, '1', '2025-11-05 21:37:54', '2025-11-05 21:37:54'),
(3316, 23, NULL, 0, 'Available', '11:15-12:15', 'Wednesday', NULL, NULL, '1', '2025-11-05 21:37:54', '2025-11-05 21:37:54'),
(3317, 23, NULL, 0, 'Available', '6:00-7:00', 'Thursday', NULL, NULL, '1', '2025-11-05 21:37:54', '2025-11-05 21:37:54'),
(3318, 23, NULL, 0, 'Available', '7:00-8:00', 'Thursday', NULL, NULL, '1', '2025-11-05 21:37:54', '2025-11-05 21:37:54'),
(3319, 23, NULL, 0, 'Available', '8:15-9:15', 'Thursday', NULL, NULL, '1', '2025-11-05 21:37:54', '2025-11-05 21:37:54'),
(3320, 23, NULL, 0, 'Available', '9:15-10:15', 'Thursday', NULL, NULL, '1', '2025-11-05 21:37:54', '2025-11-05 21:37:54'),
(3321, 23, NULL, 0, 'Available', '10:15-11:15', 'Thursday', NULL, NULL, '1', '2025-11-05 21:37:54', '2025-11-05 21:37:54'),
(3322, 23, NULL, 0, 'Available', '11:15-12:15', 'Thursday', NULL, NULL, '1', '2025-11-05 21:37:54', '2025-11-05 21:37:54'),
(3323, 23, NULL, 0, 'Available', '6:00-7:00', 'Friday', NULL, NULL, '1', '2025-11-05 21:37:54', '2025-11-05 21:37:54'),
(3324, 23, NULL, 0, 'Available', '7:00-8:00', 'Friday', NULL, NULL, '1', '2025-11-05 21:37:54', '2025-11-05 21:37:54'),
(3325, 23, NULL, 0, 'Available', '8:15-9:15', 'Friday', NULL, NULL, '1', '2025-11-05 21:37:54', '2025-11-05 21:37:54'),
(3326, 23, NULL, 0, 'Available', '9:15-10:15', 'Friday', NULL, NULL, '1', '2025-11-05 21:37:54', '2025-11-05 21:37:54'),
(3327, 23, NULL, 0, 'Available', '10:15-11:15', 'Friday', NULL, NULL, '1', '2025-11-05 21:37:54', '2025-11-05 21:37:54'),
(3328, 23, NULL, 0, 'Available', '11:15-12:15', 'Friday', NULL, NULL, '1', '2025-11-05 21:37:54', '2025-11-05 21:37:54'),
(3329, 37, NULL, 3, 'EALS-HUMSS-5', '6:00-7:00', 'Monday', NULL, NULL, '0', '2025-11-05 22:17:37', '2025-11-05 22:17:37'),
(3330, 37, NULL, 0, 'Available', '7:00-8:00', 'Monday', NULL, NULL, '1', '2025-11-05 22:17:37', '2025-11-05 22:17:37'),
(3331, 37, NULL, 0, 'Available', '8:15-9:15', 'Monday', NULL, NULL, '1', '2025-11-05 22:17:37', '2025-11-05 22:17:37'),
(3332, 37, NULL, 0, 'Available', '9:15-10:15', 'Monday', NULL, NULL, '1', '2025-11-05 22:17:37', '2025-11-05 22:17:37'),
(3333, 37, NULL, 0, 'Available', '10:15-11:15', 'Monday', NULL, NULL, '1', '2025-11-05 22:17:37', '2025-11-05 22:17:37'),
(3334, 37, NULL, 0, 'Available', '11:15-12:15', 'Monday', NULL, NULL, '1', '2025-11-05 22:17:37', '2025-11-05 22:17:37'),
(3335, 37, NULL, 0, 'Available', '6:00-7:00', 'Tuesday', NULL, NULL, '1', '2025-11-05 22:17:37', '2025-11-05 22:17:37'),
(3336, 37, NULL, 0, 'Available', '7:00-8:00', 'Tuesday', NULL, NULL, '1', '2025-11-05 22:17:37', '2025-11-05 22:17:37'),
(3337, 37, NULL, 0, 'Available', '8:15-9:15', 'Tuesday', NULL, NULL, '1', '2025-11-05 22:17:37', '2025-11-05 22:17:37'),
(3338, 37, NULL, 0, 'Available', '9:15-10:15', 'Tuesday', NULL, NULL, '1', '2025-11-05 22:17:37', '2025-11-05 22:17:37'),
(3339, 37, NULL, 0, 'Available', '10:15-11:15', 'Tuesday', NULL, NULL, '1', '2025-11-05 22:17:37', '2025-11-05 22:17:37'),
(3340, 37, NULL, 0, 'Available', '11:15-12:15', 'Tuesday', NULL, NULL, '1', '2025-11-05 22:17:37', '2025-11-05 22:17:37'),
(3341, 37, NULL, 0, 'Available', '6:00-7:00', 'Wednesday', NULL, NULL, '1', '2025-11-05 22:17:37', '2025-11-05 22:17:37'),
(3342, 37, NULL, 0, 'Available', '7:00-8:00', 'Wednesday', NULL, NULL, '1', '2025-11-05 22:17:37', '2025-11-05 22:17:37'),
(3343, 37, NULL, 0, 'Available', '8:15-9:15', 'Wednesday', NULL, NULL, '1', '2025-11-05 22:17:37', '2025-11-05 22:17:37'),
(3344, 37, NULL, 0, 'Available', '9:15-10:15', 'Wednesday', NULL, NULL, '1', '2025-11-05 22:17:37', '2025-11-05 22:17:37'),
(3345, 37, NULL, 0, 'Available', '10:15-11:15', 'Wednesday', NULL, NULL, '1', '2025-11-05 22:17:37', '2025-11-05 22:17:37'),
(3346, 37, NULL, 0, 'Available', '11:15-12:15', 'Wednesday', NULL, NULL, '1', '2025-11-05 22:17:37', '2025-11-05 22:17:37'),
(3347, 37, NULL, 0, 'Available', '6:00-7:00', 'Thursday', NULL, NULL, '1', '2025-11-05 22:17:37', '2025-11-05 22:17:37'),
(3348, 37, NULL, 0, 'Available', '7:00-8:00', 'Thursday', NULL, NULL, '1', '2025-11-05 22:17:37', '2025-11-05 22:17:37'),
(3349, 37, NULL, 0, 'Available', '8:15-9:15', 'Thursday', NULL, NULL, '1', '2025-11-05 22:17:37', '2025-11-05 22:17:37'),
(3350, 37, NULL, 0, 'Available', '9:15-10:15', 'Thursday', NULL, NULL, '1', '2025-11-05 22:17:37', '2025-11-05 22:17:37'),
(3351, 37, NULL, 0, 'Available', '10:15-11:15', 'Thursday', NULL, NULL, '1', '2025-11-05 22:17:37', '2025-11-05 22:17:37'),
(3352, 37, NULL, 0, 'Available', '11:15-12:15', 'Thursday', NULL, NULL, '1', '2025-11-05 22:17:37', '2025-11-05 22:17:37'),
(3353, 37, NULL, 0, 'Available', '6:00-7:00', 'Friday', NULL, NULL, '1', '2025-11-05 22:17:37', '2025-11-05 22:17:37'),
(3354, 37, NULL, 0, 'Available', '7:00-8:00', 'Friday', NULL, NULL, '1', '2025-11-05 22:17:37', '2025-11-05 22:17:37'),
(3355, 37, NULL, 0, 'Available', '8:15-9:15', 'Friday', NULL, NULL, '1', '2025-11-05 22:17:37', '2025-11-05 22:17:37'),
(3356, 37, NULL, 0, 'Available', '9:15-10:15', 'Friday', NULL, NULL, '1', '2025-11-05 22:17:37', '2025-11-05 22:17:37'),
(3357, 37, NULL, 0, 'Available', '10:15-11:15', 'Friday', NULL, NULL, '1', '2025-11-05 22:17:37', '2025-11-05 22:17:37'),
(3358, 37, NULL, 0, 'Available', '11:15-12:15', 'Friday', NULL, NULL, '1', '2025-11-05 22:17:37', '2025-11-05 22:17:37');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('GrAdIilSDu73ys9FyYfXKdHrjJBrGtreqqvTBoOu', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTEtvUmJ2Q1pWZWZESGN0QkswYjI2NWVSSlBlMUtUM2tPVklpb0xaciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zY2hlZHVsZXMvYXZhaWxhYmxlLXRlYWNoZXJzP2RheT1Nb25kYXkmdGltZV9zbG90PTExJTNBMTUtMTIlM0ExNSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1762486754);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` bigint NOT NULL,
  `name` varchar(225) NOT NULL,
  `code` varchar(225) NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `code`, `description`, `created_at`, `updated_at`) VALUES
(1, 'MIL-HUMSS-8', 'RM 14-11 (3RD)', 'ADVISORY', '2025-10-23 14:24:57', '2025-10-23 16:47:52'),
(2, 'MIL-STEM-1', 'RM 14-15 (4TH)', '', '2025-10-23 14:27:13', '2025-10-23 14:27:13'),
(3, 'EALS-HUMSS-5', 'RM 13-10 (2nd Flr.)', NULL, '2025-10-23 17:53:23', '2025-10-23 18:03:32'),
(4, 'MIL-HUMSS-7', 'RM 14-12 (3RD)', NULL, '2025-10-24 00:07:11', '2025-10-24 00:07:11'),
(5, 'P.E. - HUMSS-5', 'RM 13-10 (2ND Flr.)', NULL, '2025-10-24 06:56:01', '2025-10-24 06:56:01'),
(6, 'EALS-HUMSS-3', 'RM 14-10-(2nd Flr.)', NULL, '2025-10-28 15:36:37', '2025-10-28 15:36:37'),
(7, 'ETECH-HUMSS-3', 'RM 17-08 (2ND Flr.)', NULL, '2025-11-05 13:36:07', '2025-11-05 13:36:47');

-- --------------------------------------------------------

--
-- Table structure for table `substitutions`
--

CREATE TABLE `substitutions` (
  `id` bigint UNSIGNED NOT NULL,
  `absence_id` bigint NOT NULL,
  `class_id` bigint UNSIGNED DEFAULT NULL,
  `teacher_id` bigint UNSIGNED DEFAULT NULL,
  `substitute_id` bigint UNSIGNED DEFAULT NULL,
  `subject_id` bigint DEFAULT NULL,
  `subject_room` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `day` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_slot` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `substitutions`
--

INSERT INTO `substitutions` (`id`, `absence_id`, `class_id`, `teacher_id`, `substitute_id`, `subject_id`, `subject_room`, `day`, `time_slot`, `date`, `created_at`, `updated_at`) VALUES
(240, 60, NULL, 23, 25, 2, NULL, 'Monday', '6:00-7:00', NULL, '2025-11-06 18:52:39', '2025-11-06 18:52:39'),
(241, 60, NULL, 23, 24, 2, NULL, 'Monday', '7:00-8:00', NULL, '2025-11-06 18:52:39', '2025-11-06 18:52:39'),
(242, 60, NULL, 23, 35, 3, NULL, 'Monday', '8:15-9:15', NULL, '2025-11-06 18:52:39', '2025-11-06 18:52:39');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_absent` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_available` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `name`, `email`, `department`, `is_absent`, `is_available`, `created_at`, `updated_at`) VALUES
(17, 'MAYFLOR CASTILLO', 'mayflor@gmail.com', 'MT OFFICE, RM 17-01 (GRND FLR G 12 -BLG)', '1', '0', '2025-10-20 18:29:20', '2025-11-05 22:18:19'),
(18, 'JOANNA MAE MAMALIS', 'joanna@gmail.com', 'HUMSS 8, RM 14-11 (3RD FLR 611- BLG)', '0', '1', '2025-10-20 18:29:47', '2025-10-27 15:12:32'),
(19, 'NEIL PATRICK BANGKAS', 'patrick@gmail.com', 'COM LAB, RM 14-14 (4TH FLR 611- BLG)', '0', '1', '2025-10-20 18:30:17', '2025-10-24 00:08:16'),
(20, 'ANGEL MAY G. MAYNOPAS', 'angel@gmail.com', 'STEM 1, RM 14-15 (4TH FLR 611- BLG)', '0', '1', '2025-10-20 18:30:51', '2025-10-23 21:09:25'),
(21, 'JEZZEL CORADOR', 'jezzel@gmail.com', 'HUMSS 3, RM 14-06 (2ND FLR 611- BLG)', '0', '1', '2025-10-20 18:31:16', '2025-10-20 18:31:16'),
(22, 'ANDRIAN B. SEMBLANTE', 'andrian@gmail.com', 'MT OFFICE, RM 17-01 (GRND FLR G 12 -BLG)', '0', '1', '2025-10-20 18:31:39', '2025-10-30 00:09:28'),
(23, 'CHRIS HEAVENLY CEÑIA', 'chris@gmail.com', 'HUMSS 1, RM 14-04 (GRND FLR 611- BLG)', '1', '0', '2025-10-20 18:31:54', '2025-11-05 13:35:27'),
(24, 'EFREN AGUATANI JR', 'efrenaguatani@gmail.com', 'ICT 1, RM 17-10 (4TH FLR G -12 BLG)', '0', '1', '2025-10-20 18:32:08', '2025-11-05 13:35:09'),
(25, 'STACY CLAIRE L. PRICE', 'stacy@gmail.com', 'HUMSS 2, RM 14-05 (2ND FLR 611- BLG)', '0', '1', '2025-10-20 18:32:40', '2025-10-20 18:32:40'),
(26, 'RALPH CORONADO', 'ralph@gmail.com', 'MT OFFICE, RM 17-01 (GRND FLR G 12 -BLG)', '0', '1', '2025-10-20 18:33:01', '2025-10-20 18:33:01'),
(27, 'GLACY LYN A. ILANDAG', 'glacy@gmail.com', 'HUMSS 7, RM 14-10 (3RD FLR 611- BLG)', '0', '1', '2025-10-20 18:33:17', '2025-10-20 18:33:17'),
(28, 'NORLEY L. FLORES', 'norly@gmail.com', 'ICT 2, RM 17-11 (4TH FLR G -12 BLG)', '0', '1', '2025-10-20 18:33:35', '2025-10-20 18:33:35'),
(29, 'MEIDY H. ALIBANGO', 'meidy@gmail.com', 'HE 1, RM 17-07 (3RD FLR G -12 BLG)', '0', '1', '2025-10-20 18:33:53', '2025-10-20 18:33:53'),
(30, 'MECY GRACE TAPERLA', 'mecy@gmail.com', 'STEM 1, RM 14-15 (4TH FLR 611- BLG)', '0', '1', '2025-10-20 18:34:32', '2025-10-20 18:34:32'),
(31, 'REGINE M. ENARIO', 'regine@gmail.com', 'HUMSS 11, RM 17-12 (4TH FLR G -12 BLG)', '0', '1', '2025-10-20 18:34:57', '2025-10-20 18:34:57'),
(33, 'GLYDEL B. DAGATAN', 'glydel@gmail.com', 'STEM 2, RM 14-16 (4TH FLR 611- BLG)', '0', '1', '2025-10-20 18:35:44', '2025-10-20 18:35:44'),
(34, 'JESTONE T. MAPAYO', 'jestone@gmail.com', 'HUMSS 5, RM 14-08 (2ND FLR 611- BLG)', '0', '1', '2025-10-20 18:35:59', '2025-10-20 18:35:59'),
(35, 'MARLITA B. NIERE', 'marlits@gmail.com', 'ABM 1, RM 17-04 (2ND FLR G -12 BLG)', '0', '1', '2025-10-20 18:36:14', '2025-10-20 18:36:14'),
(36, 'ALBERT A. FUENTES', 'albert@gmail.com', 'HUMSS 9, RM 14-12 (3RD FLR 611- BLG)', '0', '1', '2025-10-20 18:36:26', '2025-10-24 00:19:36'),
(37, 'TISA A SOLLANO', 'tisa@gmail.com', 'ABM 4, RM 17-09 (3RD FLR G -12 BLG)', '0', '1', '2025-10-20 18:36:39', '2025-10-20 18:36:39'),
(38, 'ELMER D. SUAREZ', 'elmer@gmail.com', 'MT OFFICE, RM 17-01 (GRND FLR G 12 -BLG)', '0', '1', '2025-10-20 18:37:09', '2025-10-20 18:37:09'),
(39, 'MARSHA LIZA D. GERONIMO', 'marsha@gmail.com', 'HUMSS 4, RM 14-07 (2ND FLR 611- BLG)', '0', '1', '2025-10-20 18:37:24', '2025-10-20 18:37:24'),
(40, 'AMYLYN D. LABASANO', 'amy@gmail.com', 'MT OFFICE, RM 17-01 (GRND FLR G 12 -BLG)', '0', '1', '2025-10-20 18:37:53', '2025-10-26 22:01:06'),
(41, 'JOHNAVIEVE PATALINGHUG', 'jecky@gmail.com', 'ABM 2, RM 17-05 (2ND FLR G -12 BLG)', '0', '1', '2025-10-20 18:38:24', '2025-10-20 18:38:24'),
(42, 'JOLIVER S. ANZAL', 'joliver@gmail.com', 'HUMSS 6, RM 14-09 (3RD FLR 611- BLG)', '0', '1', '2025-10-20 18:38:45', '2025-10-20 18:38:45'),
(43, 'ROGELIO B. SUDLAY', 'roger@gmail.com', 'COM LAB, RM 14-14 (4TH FLR 611- BLG)', '0', '1', '2025-10-20 18:39:11', '2025-10-20 18:39:11'),
(44, 'CAREN B. ABELLANA', 'caren@gmail.com', 'MT OFFICE, RM 17-01 (GRND FLR G 12 -BLG)', '0', '1', '2025-10-20 18:39:30', '2025-10-26 22:42:28'),
(45, 'DEBBIE BUSIA', 'debbie@gmail.com', 'HUMSS 10, RM 14-13 (4TH FLR 611- BLG)', '0', '1', '2025-10-20 18:39:46', '2025-10-23 21:09:05');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Admin', 'admin@gmail.com', NULL, '$2y$12$KFX.i79fytWXdfG1MM2xReo2GXzosjzL3cmkFaAvku7DdJZV3oQwy', NULL, '2025-10-21 17:49:14', '2025-10-21 17:49:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absences`
--
ALTER TABLE `absences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `absences_teacher_id_foreign` (`teacher_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `classes_name_unique` (`name`);

--
-- Indexes for table `class_models`
--
ALTER TABLE `class_models`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `class_models_name_unique` (`name`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schedules_teacher_id_foreign` (`teacher_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `substitutions`
--
ALTER TABLE `substitutions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `substitutions_class_id_foreign` (`class_id`),
  ADD KEY `substitutions_teacher_id_foreign` (`teacher_id`),
  ADD KEY `substitutions_substitute_id_foreign` (`substitute_id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `teachers_email_unique` (`email`);

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
-- AUTO_INCREMENT for table `absences`
--
ALTER TABLE `absences`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `class_models`
--
ALTER TABLE `class_models`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3359;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `substitutions`
--
ALTER TABLE `substitutions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `absences`
--
ALTER TABLE `absences`
  ADD CONSTRAINT `absences_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `schedules`
--
ALTER TABLE `schedules`
  ADD CONSTRAINT `schedules_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `substitutions`
--
ALTER TABLE `substitutions`
  ADD CONSTRAINT `substitutions_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `substitutions_substitute_id_foreign` FOREIGN KEY (`substitute_id`) REFERENCES `teachers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `substitutions_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
