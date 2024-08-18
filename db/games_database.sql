-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 18, 2024 at 07:29 PM
-- Server version: 5.7.24
-- PHP Version: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `games_database`
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
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `game_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publisher_id` bigint(20) UNSIGNED NOT NULL,
  `genre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `release_date` date NOT NULL,
  `summary` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`id`, `game_name`, `publisher_id`, `genre`, `release_date`, `summary`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Fortnite', 1, 'Battle Royale', '2017-07-25', 'A co-op sandbox survival game and battle royale.', NULL, '2024-08-18 17:43:09', '2024-08-18 17:43:09'),
(2, 'Assassin\'s Creed', 2, 'Action-Adventure', '2007-11-13', 'A historical action-adventure game series set in various periods.', NULL, '2024-08-18 17:43:09', '2024-08-18 17:43:09'),
(3, 'Final Fantasy VII', 3, 'RPG', '1997-01-31', 'A JRPG set in a dystopian world where a mercenary battles a mega-corporation.', NULL, '2024-08-18 17:43:09', '2024-08-18 17:43:09'),
(4, 'The Sims', 4, 'Simulation', '2000-02-04', 'A life simulation game where players create and control people.', NULL, '2024-08-18 17:43:09', '2024-08-18 17:43:09'),
(5, 'Metal Gear Solid', 5, 'Stealth', '1998-09-03', 'A stealth action-adventure game featuring a special forces operative.', NULL, '2024-08-18 17:43:09', '2024-08-18 17:43:09'),
(6, 'Watch Dogs', 2, 'Action-Adventure', '2014-05-27', 'An action-adventure game centered on hacking and surveillance.', NULL, '2024-08-18 17:43:09', '2024-08-18 17:43:09'),
(7, 'Kingdom Hearts', 3, 'Action RPG', '2002-03-28', 'An action RPG that combines Disney and Final Fantasy characters.', NULL, '2024-08-18 17:43:09', '2024-08-18 17:43:09'),
(8, 'Battlefield 1942', 4, 'First-Person Shooter', '2002-09-10', 'A WWII first-person shooter game focused on large-scale battles.', NULL, '2024-08-18 17:43:09', '2024-08-18 17:43:09'),
(9, 'Pro Evolution Soccer', 5, 'Sports', '2001-07-27', 'A football simulation game.', NULL, '2024-08-18 17:43:09', '2024-08-18 17:43:09'),
(10, 'Rainbow Six Siege', 2, 'First-Person Shooter', '2015-12-01', 'A tactical shooter that focuses on team-based combat.', NULL, '2024-08-18 17:43:09', '2024-08-18 17:43:09'),
(11, 'Gears of War', 1, 'Third-Person Shooter', '2006-11-07', 'A third-person shooter featuring soldiers battling an alien threat.', NULL, '2024-08-18 17:44:25', '2024-08-18 17:44:25'),
(12, 'Far Cry 3', 2, 'First-Person Shooter', '2012-11-29', 'An open-world first-person shooter set on a tropical island.', NULL, '2024-08-18 17:44:25', '2024-08-18 17:44:25'),
(13, 'Dragon Quest XI', 3, 'RPG', '2017-07-29', 'A traditional JRPG with a mix of fantasy and adventure.', NULL, '2024-08-18 17:44:25', '2024-08-18 17:44:25'),
(14, 'FIFA 21', 4, 'Sports', '2020-10-09', 'A football simulation game with real-world teams and players.', NULL, '2024-08-18 17:44:25', '2024-08-18 17:44:25'),
(15, 'Silent Hill', 5, 'Survival Horror', '1999-02-23', 'A survival horror game set in a mysterious town filled with terrifying creatures.', NULL, '2024-08-18 17:44:25', '2024-08-18 17:44:25'),
(16, 'Tom Clancy\'s Ghost Recon', 2, 'Tactical Shooter', '2001-11-13', 'A tactical shooter focusing on realistic squad-based combat.', NULL, '2024-08-18 17:44:25', '2024-08-18 17:44:25'),
(17, 'NieR: Automata', 3, 'Action RPG', '2017-02-23', 'An action RPG featuring a post-apocalyptic world and androids.', NULL, '2024-08-18 17:44:25', '2024-08-18 17:44:25'),
(18, 'Mass Effect', 4, 'Action RPG', '2007-11-20', 'A sci-fi action RPG where players explore the galaxy and combat alien threats.', NULL, '2024-08-18 17:44:25', '2024-08-18 17:44:25'),
(19, 'Castlevania: Symphony of the Night', 5, 'Action-Adventure', '1997-03-20', 'An action-adventure game featuring exploration and RPG elements.', NULL, '2024-08-18 17:44:25', '2024-08-18 17:44:25'),
(20, 'Rocket League', 1, 'Sports', '2015-07-07', 'A high-octane combination of soccer and driving in futuristic arenas.', '2024-08-18 21:38:07', '2024-08-18 17:44:25', '2024-08-18 21:38:07');

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
(16, '2014_10_12_000000_create_users_table', 1),
(17, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(18, '2019_08_19_000000_create_failed_jobs_table', 1),
(19, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(20, '2024_08_17_013027_create_publishers_table', 1),
(21, '2024_08_17_232306_create_games_table', 1);

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
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
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
-- Table structure for table `publishers`
--

CREATE TABLE `publishers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` date NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `publishers`
--

INSERT INTO `publishers` (`id`, `name`, `date_created`, `country`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Epic Games', '1991-01-01', 'USA', 'active', NULL, '2024-08-18 17:33:23', '2024-08-18 17:33:23'),
(2, 'Ubisoft', '1986-03-28', 'France', 'active', NULL, '2024-08-18 17:33:23', '2024-08-18 17:33:23'),
(3, 'Square Enix', '1975-09-22', 'Japan', 'active', NULL, '2024-08-18 17:33:23', '2024-08-18 17:33:23'),
(4, 'Electronic Arts', '1982-05-28', 'USA', 'active', NULL, '2024-08-18 17:33:23', '2024-08-18 17:33:23'),
(5, 'Konami', '1969-03-21', 'Japan', 'not active', NULL, '2024-08-18 17:33:23', '2024-08-18 17:33:23');

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
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`),
  ADD KEY `games_publisher_id_foreign` (`publisher_id`);

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
-- Indexes for table `publishers`
--
ALTER TABLE `publishers`
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
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `publishers`
--
ALTER TABLE `publishers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `games`
--
ALTER TABLE `games`
  ADD CONSTRAINT `games_publisher_id_foreign` FOREIGN KEY (`publisher_id`) REFERENCES `publishers` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
