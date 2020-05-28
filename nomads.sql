-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Bulan Mei 2020 pada 16.00
-- Versi server: 10.4.6-MariaDB
-- Versi PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nomads`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `travel_packages_id` int(11) NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `galleries`
--

INSERT INTO `galleries` (`id`, `travel_packages_id`, `image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'assets/gallery/K1x4TEDCmoVyXyIfAAMIzMwtmQlwmeNCCbY6ZjxK.jpeg', NULL, '2020-05-12 03:19:04', '2020-05-12 03:28:19'),
(3, 2, 'assets/gallery/PesCPGsQbdJWCq4nvISO2ZAw4hzhoqZG7zF6bSBD.jpeg', NULL, '2020-05-12 18:35:06', '2020-05-28 06:58:59'),
(4, 3, 'assets/gallery/qfaEbJLjDYlNs2Bh6BSljOSEtO2bhm1H9ClaT0Sp.jpeg', NULL, '2020-05-12 18:35:19', '2020-05-28 06:59:13'),
(5, 4, 'assets/gallery/7b4ic5pKxt7ZeK2reWVd7RdPhUdGrHJrwmaurQzt.jpeg', '2020-05-18 08:58:55', '2020-05-12 18:35:36', '2020-05-18 08:58:55'),
(6, 5, 'assets/gallery/rdKkPC4XuNNd9x1B60XMId1ViFDtnxoY3oaT8AZm.jpeg', NULL, '2020-05-12 18:35:50', '2020-05-18 08:59:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_05_11_063858_create_travel_packages_table', 1),
(4, '2020_05_11_065330_create_galleries_table', 2),
(5, '2020_05_11_065830_create_transaction_table', 3),
(6, '2020_05_11_070245_create_transaction_detail_table', 4),
(7, '2020_05_11_065830_create_transactions_table', 5),
(8, '2020_05_11_074750_add_roles_field_to_users_table', 5),
(9, '2014_10_12_100000_create_password_resets_table', 6),
(10, '2020_05_11_132137_add_username_field_to_users_table', 6),
(11, '2020_05_12_141701_change_transaction_status_field_to_transactions_table', 7),
(16, '2020_05_12_152019_rename_transaction_detail', 8),
(17, '2020_05_12_184834_change_transactions_id_field', 8),
(18, '2020_05_12_191120_drop_transactions_table', 9),
(19, '2020_05_12_191556_create_transactions', 10),
(20, '2020_05_12_191835_create_transaction_detail', 11);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `travel_packages_id` int(11) NOT NULL,
  `users_id` int(11) DEFAULT NULL,
  `additional_visa` int(11) NOT NULL,
  `transaction_total` int(11) NOT NULL,
  `transaction_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transactions`
--

INSERT INTO `transactions` (`id`, `travel_packages_id`, `users_id`, `additional_visa`, `transaction_total`, `transaction_status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 290, 390, 'SUCCESS', NULL, '2020-05-11 12:35:50', '2020-05-12 17:26:22'),
(2, 1, 4, 340, 450, 'PENDING', '2020-05-18 08:40:11', NULL, '2020-05-18 08:40:11'),
(3, 1, 2, 0, 90, 'IN_CART', '2020-05-13 07:32:04', '2020-05-13 02:05:20', '2020-05-13 07:32:04'),
(4, 1, 2, 0, 90, 'IN_CART', '2020-05-13 07:32:01', '2020-05-13 02:05:49', '2020-05-13 07:32:01'),
(5, 1, 2, 190, 370, 'SUCCESS', NULL, '2020-05-13 03:33:27', '2020-05-18 08:40:19'),
(6, 1, 2, 0, 90, 'SUCCESS', NULL, '2020-05-13 07:31:43', '2020-05-21 10:16:43'),
(7, 3, 2, 190, 350, 'PENDING', '2020-05-21 10:18:24', '2020-05-14 15:40:51', '2020-05-21 10:18:24'),
(8, 1, 5, 0, 90, 'PENDING', NULL, '2020-05-14 16:55:50', '2020-05-14 16:55:53'),
(9, 5, 5, 0, 500, 'PENDING', NULL, '2020-05-15 08:03:10', '2020-05-15 08:03:16'),
(10, 5, 2, 0, 500, 'PENDING', NULL, '2020-05-15 16:38:20', '2020-05-15 16:38:27'),
(11, 3, 4, 0, 80, 'PENDING', NULL, '2020-05-15 18:59:22', '2020-05-15 18:59:48'),
(12, 3, 2, 0, 80, 'PENDING', NULL, '2020-05-16 10:58:51', '2020-05-16 10:59:14'),
(13, 1, 2, 190, 370, 'PENDING', NULL, '2020-05-19 09:39:12', '2020-05-19 09:39:39'),
(14, 1, 2, 190, 370, 'PENDING', NULL, '2020-05-21 10:19:23', '2020-05-21 10:20:05'),
(15, 2, 2, 190, 410, 'PENDING', NULL, '2020-05-27 08:44:37', '2020-05-27 08:44:59');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaction_details`
--

CREATE TABLE `transaction_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transactions_id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_visa` tinyint(1) NOT NULL,
  `doe_passport` date NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transaction_details`
--

INSERT INTO `transaction_details` (`id`, `transactions_id`, `username`, `nationality`, `is_visa`, `doe_passport`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'cikalbp', 'ID', 1, '2020-05-13', NULL, '2020-05-12 12:41:20', NULL),
(2, 1, 'massidiqf', 'ID', 1, '2020-05-13', NULL, '2020-05-12 14:36:00', NULL),
(3, 4, 'muhammadassidiqf', 'ID', 0, '2025-05-13', NULL, '2020-05-13 02:05:49', '2020-05-13 02:05:49'),
(4, 5, 'muhammadassidiqf', 'ID', 0, '2025-05-13', NULL, '2020-05-13 03:33:28', '2020-05-13 03:33:28'),
(5, 5, 'massidiqf', 'CN', 1, '2020-05-30', '2020-05-13 07:24:27', '2020-05-13 07:23:21', '2020-05-13 07:24:27'),
(6, 5, 'cikalbp', 'ID', 1, '2020-06-04', NULL, '2020-05-13 07:25:54', '2020-05-13 07:25:54'),
(7, 6, 'muhammadassidiqf', 'ID', 0, '2025-05-13', NULL, '2020-05-13 07:31:43', '2020-05-13 07:31:43'),
(8, 7, 'muhammadassidiqf', 'ID', 0, '2025-05-14', NULL, '2020-05-14 15:40:51', '2020-05-14 15:40:51'),
(9, 7, 'massidiqf', 'SG', 1, '2020-05-15', NULL, '2020-05-14 15:41:46', '2020-05-14 15:41:46'),
(10, 8, 'cikalbp', 'ID', 0, '2025-05-14', NULL, '2020-05-14 16:55:50', '2020-05-14 16:55:50'),
(11, 9, 'cikalbp', 'ID', 0, '2025-05-15', NULL, '2020-05-15 08:03:10', '2020-05-15 08:03:10'),
(12, 10, 'muhammadassidiqf', 'ID', 0, '2025-05-15', NULL, '2020-05-15 16:38:20', '2020-05-15 16:38:20'),
(13, 11, 'massidiqf', 'ID', 0, '2025-05-16', NULL, '2020-05-15 18:59:22', '2020-05-15 18:59:22'),
(14, 12, 'muhammadassidiqf', 'ID', 0, '2025-05-16', NULL, '2020-05-16 10:58:51', '2020-05-16 10:58:51'),
(15, 13, 'muhammadassidiqf', 'ID', 0, '2025-05-19', NULL, '2020-05-19 09:39:12', '2020-05-19 09:39:12'),
(16, 13, 'massidiqf', 'SG', 1, '2020-05-17', NULL, '2020-05-19 09:39:34', '2020-05-19 09:39:34'),
(17, 14, 'muhammadassidiqf', 'ID', 0, '2025-05-21', NULL, '2020-05-21 10:19:23', '2020-05-21 10:19:23'),
(18, 14, 'massidiqf', 'CN', 1, '2020-05-12', NULL, '2020-05-21 10:20:01', '2020-05-21 10:20:01'),
(19, 15, 'muhammadassidiqf', 'ID', 0, '2025-05-27', NULL, '2020-05-27 08:44:37', '2020-05-27 08:44:37'),
(20, 15, 'massidiqf', 'SG', 1, '2020-05-27', NULL, '2020-05-27 08:44:54', '2020-05-27 08:44:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `travel_packages`
--

CREATE TABLE `travel_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured_event` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `food` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `departure_date` date NOT NULL,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `travel_packages`
--

INSERT INTO `travel_packages` (`id`, `title`, `slug`, `location`, `about`, `featured_event`, `language`, `food`, `departure_date`, `duration`, `type`, `price`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Kepulauan indah', 'kepulauan-indah', 'Bangka Belitung', 'Kepulauan Provinsi yang indah di Indonesia.', 'Pantai', 'Melayu', 'Lempah kuning', '2020-05-13', '7D', 'Open trip', 90, NULL, '2020-05-12 00:21:50', '2020-05-18 08:41:25'),
(2, 'Visit Indonesia', 'visit-indonesia', 'Ubud Bali', 'Mengisi waktu liburan semester', 'Tari Kecak', 'Bali', 'Ikan bakar', '2020-05-14', '3D', 'Open trip', 110, NULL, '2020-05-12 00:48:27', '2020-05-21 10:18:17'),
(3, 'Relaxation', 'relaxation', 'Bromo', 'Liburan semester', 'Open Trail', 'Bahasa Jawa', 'Apel', '2020-05-13', '3D', 'Open trip', 80, NULL, '2020-05-12 17:49:38', '2020-05-13 07:34:12'),
(5, 'Beautiful moments', 'beautiful-moments', 'Dubai', 'Dubai', 'Party', 'Arab', 'Kebab', '2019-12-27', '10D', 'Open trip', 500, NULL, '2020-05-12 17:53:44', '2020-05-15 16:31:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `roles` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USER',
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `roles`, `username`) VALUES
(2, 'Muhammad Assidiq Fattah', 'massidiqfattah@mhs.itenas.ac.id', '2020-05-13 02:02:37', '$2y$10$FOeJ4GwpVkRJ3J02TjuGJu4Dlu79BzSDBtd8MGmR628J.mUT5ZrAq', NULL, '2020-05-11 02:33:49', '2020-05-13 02:02:37', 'USER', 'muhammadassidiqf'),
(3, 'Muhammad Assidiq Fattah', 'massidiqfattah@gmail.com', NULL, '$2y$10$6vzdfYfAx2yRaIHhNtjRgeYwBHe7F.HUBGdkIZTRnkb3EsXklhvIa', NULL, '2020-05-11 05:37:15', '2020-05-11 05:37:15', 'ADMIN', 'massidiqfattah'),
(4, 'Muhammad Assidiq Fattah', 'abdriqbal@gmail.com', '2020-05-11 05:46:21', '$2y$10$xGF9ryP2CpVjPwRHstZGf.CY9M7fh/qXVaWvt39ewveN9tCxFh7T.', NULL, '2020-05-11 05:44:35', '2020-05-11 05:46:21', 'USER', 'massidiqf'),
(5, 'Cikal Bingah Palenda', 'cikalbpalenda@gmail.com', '2020-05-14 16:55:43', '$2y$10$r9o0RaXEuVlr3E5XLgqkT.8vmOFayZqadCR0KR6ax57tJxoTuzjjC', NULL, '2020-05-12 09:25:49', '2020-05-14 16:55:43', 'USER', 'cikalbp');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `travel_packages`
--
ALTER TABLE `travel_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `transaction_details`
--
ALTER TABLE `transaction_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `travel_packages`
--
ALTER TABLE `travel_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
