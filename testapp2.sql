-- phpMyAdmin SQL Dump
-- version 5.2.1deb3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 30, 2024 at 02:30 PM
-- Server version: 10.11.8-MariaDB-0ubuntu0.24.04.1
-- PHP Version: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testapp2`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Personal', 'personal', '2024-10-30 13:58:35', '2024-10-30 13:58:35'),
(2, 'Work', 'work', '2024-10-30 13:58:35', '2024-10-30 13:58:35'),
(3, 'Hobbies', 'hobbies', '2024-10-30 13:58:35', '2024-10-30 13:58:35');

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_10_27_103151_create_posts_table', 1),
(5, '2024_10_29_111022_create_categories_table', 1);

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `excerpt` text NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `category_id`, `slug`, `title`, `excerpt`, `body`, `created_at`, `updated_at`, `published_at`) VALUES
(1, 1, 1, 'vitae-impedit-ad-repudiandae-quas-voluptas', 'Aspernatur dignissimos accusantium enim excepturi dolores est.', 'Unde officia autem incidunt eaque.', 'Quaerat dicta qui eos unde officiis iure quo. Molestias omnis nemo magni consequatur. Est vel sint id quo ut. Magnam impedit numquam pariatur.', '2024-10-30 13:58:35', '2024-10-30 13:58:35', '1993-01-18 17:17:16'),
(2, 1, 2, 'recusandae-et-minima-minus-enim', 'Facilis ut sint est et rerum.', 'Eos quaerat ex itaque quidem cum voluptatibus cum.', 'Aut ea harum excepturi dicta hic et accusamus. Provident sed ut temporibus dolorem id. Voluptas quae voluptatem quisquam. Soluta laborum praesentium doloribus aliquid molestias recusandae praesentium.', '2024-10-30 13:58:35', '2024-10-30 13:58:35', '1992-10-30 00:06:31'),
(3, 1, 3, 'ut-ut-quia-voluptatem-sint', 'Rerum iure in in libero illo.', 'Praesentium possimus et magnam nobis.', 'Facilis consequatur a dolorem sed voluptas voluptas at. Laboriosam id nisi quia. Non iusto laboriosam dolorem nostrum omnis et autem tenetur. Sed accusantium ut numquam vero facilis.', '2024-10-30 13:58:35', '2024-10-30 13:58:35', '2006-02-09 19:24:29'),
(4, 2, 1, 'blanditiis-id-consequatur-maiores-est-eius-quod', 'Incidunt esse eos aspernatur eius est consequatur sapiente.', 'Totam blanditiis qui ratione doloribus neque atque.', 'Vel ut qui numquam quis voluptas in quod voluptatem. Dolores qui quam non sit quidem tempora officia. Illum id voluptatem at non repellat dolor quia. Vel rerum dicta quas quae voluptatem enim magni. Et harum dolor minima laboriosam numquam similique itaque ipsam.', '2024-10-30 13:58:35', '2024-10-30 13:58:35', '1999-11-09 22:06:36'),
(5, 2, 2, 'incidunt-assumenda-suscipit-eum-incidunt-voluptate-eos-id-eaque', 'Est ut voluptatem modi maiores.', 'Mollitia libero laborum est et.', 'Sed id rerum ipsa. Atque non ducimus distinctio consectetur a doloremque. Labore in aspernatur possimus voluptate sit qui magni fuga.', '2024-10-30 13:58:35', '2024-10-30 13:58:35', '1976-12-12 08:43:13'),
(6, 2, 3, 'minus-est-sit-omnis-ut', 'Distinctio facilis quam quia quo assumenda voluptas ea.', 'Qui ad rerum deserunt est nobis nisi animi numquam.', 'Repellat iusto officia iure similique reiciendis porro dolor. Molestiae facilis fugiat sunt porro. Minima amet exercitationem qui sit. Reprehenderit neque ut ipsum placeat fugiat nemo eum dolorum.', '2024-10-30 13:58:35', '2024-10-30 13:58:35', '2008-02-28 14:30:54'),
(7, 3, 1, 'architecto-ut-et-maiores-quas-architecto-iure-et', 'Ut tempore quia nihil nisi.', 'Odio quisquam ut iure neque.', 'Pariatur magni ipsum quas et dolorem. Aut porro est corrupti et ut accusantium atque consequatur. Magni fugiat magni commodi totam. Quae tempora dolores alias ut maxime id.', '2024-10-30 13:58:35', '2024-10-30 13:58:35', '1994-10-19 20:51:54'),
(8, 3, 2, 'error-possimus-illo-ipsam', 'Ad voluptas hic dolor necessitatibus odit voluptas quia.', 'Sunt qui est quas.', 'Et libero ipsam et et velit. Doloribus possimus nam ut incidunt. Vero voluptas ut accusamus commodi sit qui voluptatum. Et et tempora ipsum ea consequatur harum repellat.', '2024-10-30 13:58:35', '2024-10-30 13:58:35', '1973-08-22 17:11:29'),
(9, 3, 3, 'possimus-molestiae-assumenda-incidunt-velit-id', 'Eius animi voluptate mollitia voluptatem aperiam eligendi necessitatibus labore.', 'Quis sint dolorem animi debitis sunt autem ducimus.', 'Consequatur autem rem earum accusantium ut iste. Blanditiis error occaecati non fugit omnis vel quibusdam odio. Nobis error laudantium hic rerum molestiae id et.', '2024-10-30 13:58:35', '2024-10-30 13:58:35', '1971-04-13 17:43:24');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('vvEeKEQH0NL3uMiCxCrkTzHs8dyU3WjNSBt7cSqM', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVzNrdzVMWTJOMmlCN2FTOHFsOGtuMlJiRzJrUnBIeDVIMUhVaVdZZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hdXRob3JzL3J1dGgxNCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1730298286);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Miss Ozella Fisher', 'drau', 'raynor.nicholas@example.com', '2024-10-30 13:58:35', '$2y$12$ahGG0svPMkvOPXCy7VE5ROBBFGhcBpYTAhUQ.k2Fs9dn6guLuAa9u', 'T7tK3i2ScH', '2024-10-30 13:58:35', '2024-10-30 13:58:35'),
(2, 'Kevon Nolan', 'ruth14', 'althea.berge@example.org', '2024-10-30 13:58:35', '$2y$12$ahGG0svPMkvOPXCy7VE5ROBBFGhcBpYTAhUQ.k2Fs9dn6guLuAa9u', '44lOwtFxfp', '2024-10-30 13:58:35', '2024-10-30 13:58:35'),
(3, 'Dejah Gerlach', 'aracely.hodkiewicz', 'zdoyle@example.org', '2024-10-30 13:58:35', '$2y$12$ahGG0svPMkvOPXCy7VE5ROBBFGhcBpYTAhUQ.k2Fs9dn6guLuAa9u', 'Z8t8ShkPoT', '2024-10-30 13:58:35', '2024-10-30 13:58:35');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
