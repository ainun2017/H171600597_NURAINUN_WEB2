-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Okt 2019 pada 07.27
-- Versi server: 10.4.6-MariaDB
-- Versi PHP: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ainunlaravel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `artikel`
--

CREATE TABLE `artikel` (
  `id` int(10) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isi` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `users_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `kategori_artikel_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `artikel`
--

INSERT INTO `artikel` (`id`, `judul`, `isi`, `users_id`, `created_at`, `updated_at`, `kategori_artikel_id`) VALUES
(1, 'ain', 'pengertian ain', 1, '2019-10-07 04:32:44', '2019-10-07 04:32:44', 1),
(2, 'obat', 'kkkkkhdd', 1, '2019-10-07 04:33:33', '2019-10-07 04:33:33', 1),
(3, 'inuncxmms', 'ssss', 1, '2019-10-07 04:50:38', '2019-10-07 04:50:38', 6),
(4, 'aa', 'aa', 1, '2019-10-07 05:16:32', '2019-10-07 05:16:32', 1),
(5, 'sss', 'aa', 1, '2019-10-07 06:38:12', '2019-10-07 06:38:12', 1),
(6, 'as', 'ss', 1, '2019-10-08 02:31:23', '2019-10-08 02:31:23', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `berita`
--

CREATE TABLE `berita` (
  `id` int(10) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isi` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `users_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `kategori_berita_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `berita`
--

INSERT INTO `berita` (`id`, `judul`, `isi`, `users_id`, `created_at`, `updated_at`, `kategori_berita_id`) VALUES
(1, 'ain', 'hh', 1, '2019-10-07 06:35:41', '2019-10-07 06:35:41', 1),
(2, 'banjir', 'berita adalah nahdkfmglhl', 1, '2019-10-07 06:37:11', '2019-10-07 06:37:11', 4),
(3, 'kebkaran', 'samarinda', 1, '2019-10-08 02:32:07', '2019-10-08 02:32:07', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `galeri`
--

CREATE TABLE `galeri` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `users_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `kategori_galeri_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `galeri`
--

INSERT INTO `galeri` (`id`, `nama`, `keterangan`, `path`, `users_id`, `created_at`, `updated_at`, `kategori_galeri_id`) VALUES
(1, 'aasdd', NULL, 'aaaa', 1, '2019-10-07 08:02:45', '2019-10-07 08:02:45', 1),
(2, 'ainunnnnnnn', NULL, 'ssss', 1, '2019-10-07 08:21:40', '2019-10-07 08:21:40', 1),
(3, 'ainun cantik', NULL, 'jjj', 1, '2019-10-08 02:32:40', '2019-10-08 02:32:40', 1),
(4, 'sejarah islam', NULL, 'ain', 1, '2019-10-08 03:20:53', '2019-10-08 03:20:53', 4),
(5, 'sejarah islam', NULL, 'ssss', 1, '2019-10-08 03:21:56', '2019-10-08 03:21:56', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategoris`
--

CREATE TABLE `kategoris` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_artikel`
--

CREATE TABLE `kategori_artikel` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `users_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kategori_artikel`
--

INSERT INTO `kategori_artikel` (`id`, `nama`, `users_id`, `created_at`, `updated_at`) VALUES
(1, 'sejarah islam', 1, '2019-10-06 06:47:15', '2019-10-06 06:47:15'),
(2, 'bola', 1, '2019-10-06 06:47:36', '2019-10-06 06:47:36'),
(3, 'bola', 1, '2019-10-06 06:56:24', '2019-10-06 06:56:24'),
(4, 'bola', 1, '2019-10-06 06:59:00', '2019-10-06 06:59:00'),
(5, 'bola', 1, '2019-10-06 06:59:28', '2019-10-06 06:59:28'),
(6, 'olahraga', 1, '2019-10-06 07:01:42', '2019-10-06 07:01:42'),
(7, 'olahraga', 1, '2019-10-06 07:02:43', '2019-10-06 07:02:43'),
(8, 'olahraga', 1, '2019-10-06 07:04:48', '2019-10-06 07:04:48'),
(9, 'ssdd', 1, '2019-10-06 07:05:15', '2019-10-06 07:05:15'),
(10, 'nunukan', 1, '2019-10-06 23:08:10', '2019-10-06 23:08:10'),
(11, 'dd', 1, '2019-10-06 23:08:25', '2019-10-06 23:08:25'),
(12, 'werd', 1, '2019-10-07 01:21:18', '2019-10-07 01:21:18'),
(13, 'agamaislam', 1, '2019-10-07 01:34:19', '2019-10-07 01:34:19'),
(14, 'asfhy', 1, '2019-10-07 01:48:36', '2019-10-07 01:48:36'),
(15, 'ss', 1, '2019-10-07 02:43:30', '2019-10-07 02:43:30'),
(16, 'moosdd', 1, '2019-10-07 04:50:07', '2019-10-07 04:50:07'),
(17, 'assddfs', 1, '2019-10-07 05:16:55', '2019-10-07 05:16:55'),
(18, 'ainunnnn', 1, '2019-10-07 06:37:54', '2019-10-07 06:37:54'),
(19, 'baca', 1, '2019-10-08 02:34:05', '2019-10-08 02:34:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_berita`
--

CREATE TABLE `kategori_berita` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `users_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kategori_berita`
--

INSERT INTO `kategori_berita` (`id`, `nama`, `users_id`, `created_at`, `updated_at`) VALUES
(1, 'skrip', 1, '2019-10-07 04:43:35', '2019-10-07 04:43:35'),
(2, 'skrip', 1, '2019-10-07 04:44:27', '2019-10-07 04:44:27'),
(3, 'skrip', 1, '2019-10-07 04:45:57', '2019-10-07 04:45:57'),
(4, 'bola', 1, '2019-10-07 04:48:14', '2019-10-07 04:48:14'),
(5, 'banjir', 1, '2019-10-07 05:11:24', '2019-10-07 05:11:24'),
(6, 'banjir', 1, '2019-10-07 05:14:24', '2019-10-07 05:14:24'),
(7, 'banjir', 1, '2019-10-07 05:16:09', '2019-10-07 05:16:09'),
(8, 'jj', 1, '2019-10-07 05:55:38', '2019-10-07 05:55:38'),
(9, 'jj', 1, '2019-10-07 05:57:41', '2019-10-07 05:57:41'),
(10, 'jj', 1, '2019-10-07 06:02:03', '2019-10-07 06:02:03'),
(11, 'jj', 1, '2019-10-07 06:04:36', '2019-10-07 06:04:36'),
(12, 'jj', 1, '2019-10-07 06:06:54', '2019-10-07 06:06:54'),
(13, 'marii', 1, '2019-10-07 06:07:26', '2019-10-07 06:07:26'),
(14, 'marii', 1, '2019-10-07 06:12:06', '2019-10-07 06:12:06'),
(15, 'hh', 1, '2019-10-07 06:12:17', '2019-10-07 06:12:17'),
(16, 'mj', 1, '2019-10-07 06:18:07', '2019-10-07 06:18:07'),
(17, 'bb', 1, '2019-10-07 06:30:57', '2019-10-07 06:30:57'),
(18, 'aaa', 1, '2019-10-07 06:37:37', '2019-10-07 06:37:37'),
(19, 'bola', 1, '2019-10-07 06:45:55', '2019-10-07 06:45:55'),
(20, 'sukaa', 1, '2019-10-08 02:34:28', '2019-10-08 02:34:28'),
(21, 'stunami', 1, '2019-10-08 03:19:26', '2019-10-08 03:19:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_galeri`
--

CREATE TABLE `kategori_galeri` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `users_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kategori_galeri`
--

INSERT INTO `kategori_galeri` (`id`, `nama`, `users_id`, `created_at`, `updated_at`) VALUES
(1, 'jj', 1, '2019-10-07 07:47:13', '2019-10-07 07:47:13'),
(2, 'jjj', 1, '2019-10-07 08:05:59', '2019-10-07 08:05:59'),
(3, 'gununggg ainun naik tutunnnsn', 1, '2019-10-08 02:35:02', '2019-10-08 02:35:02'),
(4, 'model', 1, '2019-10-08 03:19:47', '2019-10-08 03:19:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_pengumuman`
--

CREATE TABLE `kategori_pengumuman` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `users_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kategori_pengumuman`
--

INSERT INTO `kategori_pengumuman` (`id`, `nama`, `users_id`, `created_at`, `updated_at`) VALUES
(1, 'bola', 1, '2019-10-07 06:41:52', '2019-10-07 06:41:52'),
(2, 'jj', 1, '2019-10-07 07:27:14', '2019-10-07 07:27:14'),
(3, 'ko', 1, '2019-10-07 07:28:48', '2019-10-07 07:28:48'),
(4, 'kkkk', 1, '2019-10-07 07:28:55', '2019-10-07 07:28:55'),
(5, 'apa yang terhadiiisnn', 1, '2019-10-08 02:35:33', '2019-10-08 02:35:33');

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_09_25_062558_create_kategoris_table', 2),
(4, '2019_09_25_012800_create_kategori_artikel_table', 3),
(5, '2019_09_25_012800_create_kategori_berita_table', 3),
(6, '2019_09_25_012800_create_kategori_galeri_table', 3),
(7, '2019_09_25_012800_create_kategori_pengumuman_table', 3),
(8, '2019_09_25_012801_create_artikel_table', 3),
(9, '2019_09_25_012801_create_berita_table', 3),
(10, '2019_09_25_012801_create_galeri_table', 3),
(11, '2019_09_25_012801_create_pengumuman_table', 3),
(12, '2019_09_25_012802_add_foreign_keys_to_artikel_table', 3),
(13, '2019_09_25_012802_add_foreign_keys_to_berita_table', 3),
(14, '2019_09_25_012802_add_foreign_keys_to_galeri_table', 3),
(15, '2019_09_25_012802_add_foreign_keys_to_kategori_artikel_table', 3),
(16, '2019_09_25_012802_add_foreign_keys_to_kategori_berita_table', 3),
(17, '2019_09_25_012802_add_foreign_keys_to_kategori_galeri_table', 3),
(18, '2019_09_25_012802_add_foreign_keys_to_kategori_pengumuman_table', 3),
(19, '2019_09_25_012802_add_foreign_keys_to_pengumuman_table', 3);

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
-- Struktur dari tabel `pengumuman`
--

CREATE TABLE `pengumuman` (
  `id` int(10) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isi` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `users_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `kategori_pengumuman_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pengumuman`
--

INSERT INTO `pengumuman` (`id`, `judul`, `isi`, `users_id`, `created_at`, `updated_at`, `kategori_pengumuman_id`) VALUES
(1, 'jjj', 'kkk', 1, '2019-10-07 06:57:25', '2019-10-07 06:57:25', 1),
(2, 'kkkkk', ',,,', 1, '2019-10-07 06:57:55', '2019-10-07 06:57:55', 1),
(3, 'jjj', ',,,,', 1, '2019-10-07 07:27:35', '2019-10-07 07:27:35', 1),
(4, 'jjj', 'mm', 1, '2019-10-07 07:28:27', '2019-10-07 07:28:27', 1),
(5, 'banjirrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr', 'samrindaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 1, '2019-10-08 02:33:20', '2019-10-08 02:33:20', 1),
(6, 'liburrrrrrrrrrrrrrrrrrrr', 'sss', 1, '2019-10-08 02:33:47', '2019-10-08 02:33:47', 1),
(7, 'obat', 'Sejarah Islam adalah sejarah agama Islam mulai turunnya wahyu pertama pada tahun 610 yang diturunkan kepada rasul yang terakhir yaitu Muhammad bin Abdullah di Gua Hira, Arab Saudi sampai dengan sekarang.', 1, '2019-10-08 03:22:25', '2019-10-08 03:22:25', 1);

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
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `phone`) VALUES
(1, 'nur', 'ainun2017@gmail.com', NULL, '$2y$10$FapXoFQCA2Mdq1Yd7yRiM.kw8LCMVbJ5HH8HLsUcIeiBVFewdraQ6', NULL, '2019-09-21 01:50:16', '2019-09-21 01:50:16', ''),
(2, 'ainun', 'ainunkhansa80@gmail', NULL, '$2y$10$zWFauBYerLX2CeZOidzKjeCKRyHL3WytB72/8MLgtEuL6YXDTAFVS', NULL, '2019-09-21 04:54:43', '2019-09-21 04:54:43', ''),
(3, 'nurr', 'nurainunain1000@gmail.com', NULL, '$2y$10$RyGX.e4z89bGpVZRlejbx.eUjsJXYCIq4upl5jlojLSc5XNfgC.7S', NULL, '2019-09-21 06:12:21', '2019-09-21 06:12:21', '085241245123'),
(4, 'ainun2018', 'nurainun1000@gmail.com', NULL, '$2y$10$W33O.vIqZSWWBkncjc6EIuiqApt8xpi/B6xVv71Wgx17s6b0z53tK', NULL, '2019-09-21 06:29:01', '2019-09-21 06:29:01', '085245246122'),
(5, 'anafi', 'love@gmail.com', NULL, '$2y$10$f2pMJqlS7z5HW64tfjWZD.gBeFpcCVgBCjeaHubk49D5fCHAw4sSa', NULL, '2019-09-24 21:55:39', '2019-09-24 21:55:39', '081212121212'),
(6, 'yy', 'yy2@gmail.com', NULL, '$2y$10$3KpcVGvA8ysHqXE4AtY19uqRqdc04ve5Fohw.GZnmt98HPZFsHd0a', NULL, '2019-09-24 22:24:27', '2019-09-24 22:24:27', '111111111111'),
(7, 'ainur', 'ainunmkhansa80@gmail', NULL, '$2y$10$Q9pU.LhGzixVsMv2ShTC/.7gnNB1xIaahta0CJF2TT2auF8s3079K', NULL, '2019-10-03 06:35:29', '2019-10-03 06:35:29', '085245246121'),
(8, 'ain', 'syrfhsybns@gmail.com', NULL, '$2y$10$w8b1L25NG3v75F4ZBNPuRuBkKB6MFY.bfoHBvpkOn6ZcwHHi/vWWS', NULL, '2019-10-03 19:54:18', '2019-10-03 19:54:18', '085241245876');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_kategori_users_idx` (`users_id`),
  ADD KEY `fk_artikel_kategori_artikel1_idx` (`kategori_artikel_id`);

--
-- Indeks untuk tabel `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_kategori_users_idx` (`users_id`),
  ADD KEY `fk_berita_kategori_berita1_idx` (`kategori_berita_id`);

--
-- Indeks untuk tabel `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_galeri_users_idx` (`users_id`),
  ADD KEY `fk_galeri_kategori_berita1_idx` (`kategori_galeri_id`);

--
-- Indeks untuk tabel `kategoris`
--
ALTER TABLE `kategoris`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategori_artikel`
--
ALTER TABLE `kategori_artikel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_kategori_users_idx` (`users_id`);

--
-- Indeks untuk tabel `kategori_berita`
--
ALTER TABLE `kategori_berita`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_kategori_users_idx` (`users_id`);

--
-- Indeks untuk tabel `kategori_galeri`
--
ALTER TABLE `kategori_galeri`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_kategori_galeri_users_idx` (`users_id`);

--
-- Indeks untuk tabel `kategori_pengumuman`
--
ALTER TABLE `kategori_pengumuman`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_kategori_users_idx` (`users_id`);

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
-- Indeks untuk tabel `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_kategori_users_idx` (`users_id`),
  ADD KEY `fk_pengumuman_kategori_pengumuman1_idx` (`kategori_pengumuman_id`);

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
-- AUTO_INCREMENT untuk tabel `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `berita`
--
ALTER TABLE `berita`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `kategoris`
--
ALTER TABLE `kategoris`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kategori_artikel`
--
ALTER TABLE `kategori_artikel`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `kategori_berita`
--
ALTER TABLE `kategori_berita`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `kategori_galeri`
--
ALTER TABLE `kategori_galeri`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `kategori_pengumuman`
--
ALTER TABLE `kategori_pengumuman`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `pengumuman`
--
ALTER TABLE `pengumuman`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `artikel`
--
ALTER TABLE `artikel`
  ADD CONSTRAINT `fk_artikel_kategori_artikel1` FOREIGN KEY (`kategori_artikel_id`) REFERENCES `kategori_artikel` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_kategori_users0` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `berita`
--
ALTER TABLE `berita`
  ADD CONSTRAINT `fk_berita_kategori_berita1` FOREIGN KEY (`kategori_berita_id`) REFERENCES `kategori_berita` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_kategori_users000` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `galeri`
--
ALTER TABLE `galeri`
  ADD CONSTRAINT `fk_galeri_kategori_berita1` FOREIGN KEY (`kategori_galeri_id`) REFERENCES `kategori_berita` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_galeri_users000` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `kategori_artikel`
--
ALTER TABLE `kategori_artikel`
  ADD CONSTRAINT `fk_kategori_users` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `kategori_berita`
--
ALTER TABLE `kategori_berita`
  ADD CONSTRAINT `fk_kategori_users1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `kategori_galeri`
--
ALTER TABLE `kategori_galeri`
  ADD CONSTRAINT `fk_galeri_users10` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `kategori_pengumuman`
--
ALTER TABLE `kategori_pengumuman`
  ADD CONSTRAINT `fk_kategori_users10` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD CONSTRAINT `fk_kategori_users00` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_pengumuman_kategori_pengumuman1` FOREIGN KEY (`kategori_pengumuman_id`) REFERENCES `kategori_pengumuman` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
