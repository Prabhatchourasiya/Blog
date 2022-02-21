-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2022 at 05:44 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blogdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(11, 'Food', '2022-02-21 04:14:09', '2022-02-21 04:14:09'),
(12, 'Travel', '2022-02-21 04:14:22', '2022-02-21 04:14:22'),
(13, 'Health', '2022-02-21 04:14:35', '2022-02-21 10:07:09'),
(14, 'Lifestyle', '2022-02-21 04:14:54', '2022-02-21 04:14:54'),
(15, 'Fashion', '2022-02-21 04:15:05', '2022-02-21 10:07:18'),
(16, 'Photography', '2022-02-21 04:15:20', '2022-02-21 04:15:20'),
(17, 'Personal', '2022-02-21 04:15:27', '2022-02-21 04:15:27'),
(18, 'Music', '2022-02-21 04:15:40', '2022-02-21 04:15:40'),
(19, 'Business', '2022-02-21 04:15:55', '2022-02-21 04:15:55'),
(20, 'Sports', '2022-02-21 04:16:08', '2022-02-21 04:16:08'),
(21, 'Movies', '2022-02-21 04:16:14', '2022-02-21 04:16:14'),
(22, 'Religon', '2022-02-21 04:16:21', '2022-02-21 04:16:21'),
(23, 'Politics', '2022-02-21 04:16:29', '2022-02-21 04:16:29'),
(24, 'Motivation', '2022-02-21 04:16:51', '2022-02-21 04:16:51');

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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_02_19_181346_create_categories_table', 1),
(6, '2022_02_20_064230_create_posts_table', 1);

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
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `imagePath` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `user_id`, `category_id`, `imagePath`, `body`, `created_at`, `updated_at`) VALUES
(7, 'What a Trip', 'what-a-trip-7', 1, 12, 'storage/postImages/EACS0W7UjxuAwvMDtfRd1PQLvhjsznSo8GmiIzRv.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.</p>', '2022-02-21 04:33:47', '2022-02-21 04:33:47'),
(8, 'Eat Healthy, Live Healthy', 'eat-healthy-live-healthy-8', 1, 13, 'storage/postImages/9JAbeWGZqUcH5z0Z5BCT9ZS4Iil6t8ZY34MR6t78.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.</p>', '2022-02-21 04:34:39', '2022-02-21 04:34:39'),
(10, 'Kickback Lifestyle', 'kickback-lifestyle-10', 1, 14, 'storage/postImages/gNQ3mb6NHzqp3h4hMgMVd6ssG6qv1WeZOPyPA3Ps.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.</p>', '2022-02-21 04:39:07', '2022-02-21 04:39:07'),
(11, 'Insta Fashion World', 'insta-fashion-world-11', 1, 15, 'storage/postImages/94zi7qly9JZO4V54r54UWVqPUtkUSzPzkfCcQXza.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.</p>', '2022-02-21 04:40:34', '2022-02-21 04:40:34'),
(12, 'Great Indian Photography', 'great-indian-photography-12', 1, 16, 'storage/postImages/X5w2R7gBKmafxQLiVSNfQE7RgdsVzptwgqQrPNUu.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.</p>', '2022-02-21 04:42:51', '2022-02-21 04:42:51'),
(13, 'A day of my life', 'a-day-of-my-life-13', 1, 17, 'storage/postImages/0gY4cF77gfAdRf1oXmyfTXRzdBah1212nsA8CdTu.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.</p>', '2022-02-21 04:44:11', '2022-02-21 04:44:11'),
(14, 'Music for life', 'music-for-life-14', 1, 18, 'storage/postImages/kXAchymR1Bedor5uPFudNpiUboJegh4ryaOSKkvt.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.</p>', '2022-02-21 04:44:35', '2022-02-21 04:44:35'),
(15, 'A day at my office', 'a-day-at-my-office-15', 1, 19, 'storage/postImages/iJb9Zg7njV2osZlju3WE6upz9s72RbP5kgTh74ZU.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.</p>', '2022-02-21 04:45:05', '2022-02-21 04:45:05'),
(16, 'Sachin Tendulkar Aka God of Cricket', 'sachin-tendulkar-aka-god-of-cricket-16', 1, 20, 'storage/postImages/28S9W7AHdhoaLIZzKMnIIhD0q9iGY8yNBlNwHbD6.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.</p>', '2022-02-21 04:45:51', '2022-02-21 04:45:51'),
(17, 'Drishyam , What a Movie', 'drishyam-what-a-movie-17', 1, 21, 'storage/postImages/sN8hn28o5MUDePndAK2wkXrLEUjea0Jpnlw9HkdW.png', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.</p>', '2022-02-21 04:47:26', '2022-02-21 04:47:26'),
(18, 'Religonup', 'religonup-18', 1, 22, 'storage/postImages/76bMmmKdADn2JCMALbpEhEH5N90BDJ99QKGE1jxt.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similiquejjjjjjjj</p>', '2022-02-21 04:47:59', '2022-02-21 10:12:15'),
(19, 'A Good Leader', 'a-good-leader-19', 1, 23, 'storage/postImages/jG2hf9NRegzmHzvUesnfnLLU3dh1ij8bacIxWHVE.png', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.</p>', '2022-02-21 04:48:29', '2022-02-21 04:48:29'),
(20, 'Nerver Give Up', 'nerver-give-up-20', 1, 24, 'storage/postImages/zq0aCn6pIq5G21FGWJDdjvb2m4UYuxDjq3nbkmwl.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.</p>', '2022-02-21 04:49:53', '2022-02-21 04:49:53'),
(21, 'Healthy food', 'healthy-food-21', 1, 11, 'storage/postImages/EnR64hx5rL8j5LGJkDwgxwJWejCtk1Q0Cbt5OHkB.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.</p>', '2022-02-21 04:51:25', '2022-02-21 04:51:25'),
(22, 'Food for life', 'food-for-life-22', 1, 11, 'storage/postImages/8BrzfbT7v6bEzSgWhYipYSskiejFmAXKCyCZwQDv.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, quisquam nulla aliquid assumenda dolores voluptates, architecto magnam corporis reiciendis ut ipsa quis sunt voluptatibus tempora at vero adipisci non similique.</p>', '2022-02-21 04:51:56', '2022-02-21 04:51:56'),
(23, 'My First Blog', 'my-first-blog-23', 2, 17, 'storage/postImages/36PbUHaMYSeqjU6iHzh7FE5S6IBJcaWNACNjGBy5.jpg', '<p>this is my first blog.</p>', '2022-02-21 08:58:02', '2022-02-21 08:58:02');

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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'prabhat', 'prabhatchourasiya44@gmail.com', NULL, '$2y$10$VrTff0UQ58K2PPCo255z5.IA2/QIJN9vC27eyLDXJaDUpJEx0mdd6', NULL, '2022-02-19 13:53:32', '2022-02-19 13:53:32'),
(2, 'shubham', 'schourasiya19@gmail.com', NULL, '$2y$10$Gjarlym9mPUnYU7I8o2p7.SGR0tx.nUIu0YZODODr5r4vKNfmX9/q', NULL, '2022-02-21 08:55:41', '2022-02-21 08:55:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`),
  ADD KEY `posts_category_id_foreign` (`category_id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
