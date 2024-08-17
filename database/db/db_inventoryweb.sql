-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 17 Jun 2024 pada 15.27
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_inventoryweb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
(1, '2019_08_19_000000_create_failed_jobs_table', 1),
(2, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(3, '2022_10_31_061811_create_menu_table', 1),
(4, '2022_11_01_041110_create_table_role', 1),
(5, '2022_11_01_083314_create_table_user', 1),
(6, '2022_11_03_023905_create_table_submenu', 1),
(7, '2022_11_03_064417_create_tbl_akses', 1),
(8, '2022_11_08_024215_create_tbl_web', 1),
(9, '2022_11_15_131148_create_tbl_jenisbarang', 2),
(10, '2022_11_15_173700_create_tbl_satuan', 3),
(11, '2022_11_15_180434_create_tbl_merk', 4),
(12, '2022_11_16_120018_create_tbl_appreance', 5),
(13, '2022_11_25_141731_create_tbl_barang', 6),
(14, '2022_11_26_011349_create_tbl_suplier'', 7),
(16, '2022_11_28_151108_create_tbl_barangmasuk', 8),
(17, '2022_11_30_115904_create_tbl_barangkeluar', 9);

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_akses`
--

CREATE TABLE `tbl_akses` (
  `akses_id` int(10) UNSIGNED NOT NULL,
  `menu_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `submenu_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `othermenu_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `akses_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tbl_akses`
--

INSERT INTO `tbl_akses` (`akses_id`, `menu_id`, `submenu_id`, `othermenu_id`, `role_id`, `akses_type`, `created_at`, `updated_at`) VALUES
(224, '1667444041', NULL, NULL, '1', 'view', '2022-11-24 04:07:30', '2022-11-24 04:07:30'),
(225, '1667444041', NULL, NULL, '1', 'create', '2022-11-24 04:07:30', '2022-11-24 04:07:30'),
(226, '1667444041', NULL, NULL, '1', 'update', '2022-11-24 04:07:30', '2022-11-24 04:07:30'),
(227, '1667444041', NULL, NULL, '1', 'delete', '2022-11-24 04:07:30', '2022-11-24 04:07:30'),
(228, '1668509889', NULL, NULL, '1', 'view', '2022-11-24 04:07:30', '2022-11-24 04:07:30'),
(229, '1668509889', NULL, NULL, '1', 'create', '2022-11-24 04:07:30', '2022-11-24 04:07:30'),
(230, '1668509889', NULL, NULL, '1', 'update', '2022-11-24 04:07:30', '2022-11-24 04:07:30'),
(231, '1668509889', NULL, NULL, '1', 'delete', '2022-11-24 04:07:30', '2022-11-24 04:07:30'),
(232, '1668510437', NULL, NULL, '1', 'view', '2022-11-24 04:07:30', '2022-11-24 04:07:30'),
(233, '1668510437', NULL, NULL, '1', 'create', '2022-11-24 04:07:30', '2022-11-24 04:07:30'),
(234, '1668510437', NULL, NULL, '1', 'update', '2022-11-24 04:07:30', '2022-11-24 04:07:30'),
(235, '1668510437', NULL, NULL, '1', 'delete', '2022-11-24 04:07:30', '2022-11-24 04:07:30'),
(236, '1668510568', NULL, NULL, '1', 'view', '2022-11-24 04:07:30', '2022-11-24 04:07:30'),
(237, '1668510568', NULL, NULL, '1', 'create', '2022-11-24 04:07:30', '2022-11-24 04:07:30'),
(238, '1668510568', NULL, NULL, '1', 'update', '2022-11-24 04:07:30', '2022-11-24 04:07:30'),
(239, '1668510568', NULL, NULL, '1', 'delete', '2022-11-24 04:07:30', '2022-11-24 04:07:30'),
(240, NULL, '9', NULL, '1', 'view', '2022-11-24 04:07:30', '2022-11-24 04:07:30'),
(241, NULL, '9', NULL, '1', 'create', '2022-11-24 04:07:30', '2022-11-24 04:07:30'),
(242, NULL, '9', NULL, '1', 'update', '2022-11-24 04:07:30', '2022-11-24 04:07:30'),
(243, NULL, '9', NULL, '1', 'delete', '2022-11-24 04:07:30', '2022-11-24 04:07:30'),
(248, NULL, '17', NULL, '1', 'view', '2022-11-24 04:07:30', '2022-11-24 04:07:30'),
(249, NULL, '17', NULL, '1', 'create', '2022-11-24 04:07:30', '2022-11-24 04:07:30'),
(250, NULL, '17', NULL, '1', 'update', '2022-11-24 04:07:30', '2022-11-24 04:07:30'),
(251, NULL, '17', NULL, '1', 'delete', '2022-11-24 04:07:30', '2022-11-24 04:07:30'),
(252, NULL, '10', NULL, '1', 'view', '2022-11-24 04:07:30', '2022-11-24 04:07:30'),
(253, NULL, '10', NULL, '1', 'create', '2022-11-24 04:07:30', '2022-11-24 04:07:30'),
(254, NULL, '10', NULL, '1', 'update', '2022-11-24 04:07:30', '2022-11-24 04:07:30'),
(255, NULL, '10', NULL, '1', 'delete', '2022-11-24 04:07:30', '2022-11-24 04:07:30'),
(260, NULL, '18', NULL, '1', 'view', '2022-11-24 04:07:30', '2022-11-24 04:07:30'),
(261, NULL, '18', NULL, '1', 'create', '2022-11-24 04:07:30', '2022-11-24 04:07:30'),
(262, NULL, '18', NULL, '1', 'update', '2022-11-24 04:07:30', '2022-11-24 04:07:30'),
(263, NULL, '18', NULL, '1', 'delete', '2022-11-24 04:07:30', '2022-11-24 04:07:30'),
(264, NULL, '19', NULL, '1', 'view', '2022-11-24 04:07:30', '2022-11-24 04:07:30'),
(265, NULL, '19', NULL, '1', 'create', '2022-11-24 04:07:30', '2022-11-24 04:07:30'),
(266, NULL, '19', NULL, '1', 'update', '2022-11-24 04:07:30', '2022-11-24 04:07:30'),
(267, NULL, '19', NULL, '1', 'delete', '2022-11-24 04:07:30', '2022-11-24 04:07:30'),
(268, NULL, '20', NULL, '1', 'view', '2022-11-24 04:07:30', '2022-11-24 04:07:30'),
(269, NULL, '20', NULL, '1', 'create', '2022-11-24 04:07:30', '2022-11-24 04:07:30'),
(270, NULL, '20', NULL, '1', 'update', '2022-11-24 04:07:30', '2022-11-24 04:07:30'),
(271, NULL, '20', NULL, '1', 'delete', '2022-11-24 04:07:30', '2022-11-24 04:07:30'),
(272, NULL, NULL, '1', '1', 'view', '2022-11-24 04:07:30', '2022-11-24 04:07:30'),
(273, NULL, NULL, '2', '1', 'view', '2022-11-24 04:07:30', '2022-11-24 04:07:30'),
(274, NULL, NULL, '3', '1', 'view', '2022-11-24 04:07:30', '2022-11-24 04:07:30'),
(275, NULL, NULL, '4', '1', 'view', '2022-11-24 04:07:30', '2022-11-24 04:07:30'),
(276, NULL, NULL, '5', '1', 'view', '2022-11-24 04:07:30', '2022-11-24 04:07:30'),
(277, NULL, NULL, '6', '1', 'view', '2022-11-24 04:07:30', '2022-11-24 04:07:30'),
(278, NULL, NULL, '1', '1', 'create', '2022-11-24 04:07:30', '2022-11-24 04:07:30'),
(279, NULL, NULL, '2', '1', 'create', '2022-11-24 04:07:30', '2022-11-24 04:07:30'),
(280, NULL, NULL, '3', '1', 'create', '2022-11-24 04:07:30', '2022-11-24 04:07:30'),
(281, NULL, NULL, '4', '1', 'create', '2022-11-24 04:07:30', '2022-11-24 04:07:30'),
(282, NULL, NULL, '5', '1', 'create', '2022-11-24 04:07:30', '2022-11-24 04:07:30'),
(283, NULL, NULL, '6', '1', 'create', '2022-11-24 04:07:30', '2022-11-24 04:07:30'),
(284, NULL, NULL, '1', '1', 'update', '2022-11-24 04:07:30', '2022-11-24 04:07:30'),
(285, NULL, NULL, '2', '1', 'update', '2022-11-24 04:07:30', '2022-11-24 04:07:30'),
(286, NULL, NULL, '3', '1', 'update', '2022-11-24 04:07:30', '2022-11-24 04:07:30'),
(287, NULL, NULL, '4', '1', 'update', '2022-11-24 04:07:30', '2022-11-24 04:07:30'),
(288, NULL, NULL, '5', '1', 'update', '2022-11-24 04:07:30', '2022-11-24 04:07:30'),
(289, NULL, NULL, '6', '1', 'update', '2022-11-24 04:07:30', '2022-11-24 04:07:30'),
(290, NULL, NULL, '1', '1', 'delete', '2022-11-24 04:07:30', '2022-11-24 04:07:30'),
(291, NULL, NULL, '2', '1', 'delete', '2022-11-24 04:07:30', '2022-11-24 04:07:30'),
(292, NULL, NULL, '3', '1', 'delete', '2022-11-24 04:07:30', '2022-11-24 04:07:30'),
(293, NULL, NULL, '4', '1', 'delete', '2022-11-24 04:07:30', '2022-11-24 04:07:30'),
(294, NULL, NULL, '5', '1', 'delete', '2022-11-24 04:07:30', '2022-11-24 04:07:30'),
(295, NULL, NULL, '6', '1', 'delete', '2022-11-24 04:07:30', '2022-11-24 04:07:30'),
(368, '1667444041', NULL, NULL, '3', 'view', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(369, '1667444041', NULL, NULL, '3', 'create', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(370, '1667444041', NULL, NULL, '3', 'update', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(371, '1667444041', NULL, NULL, '3', 'delete', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(373, '1668509889', NULL, NULL, '3', 'create', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(374, '1668509889', NULL, NULL, '3', 'update', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(375, '1668509889', NULL, NULL, '3', 'delete', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(376, '1668510437', NULL, NULL, '3', 'view', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(377, '1668510437', NULL, NULL, '3', 'create', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(378, '1668510437', NULL, NULL, '3', 'update', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(379, '1668510437', NULL, NULL, '3', 'delete', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(381, '1668510568', NULL, NULL, '3', 'create', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(382, '1668510568', NULL, NULL, '3', 'update', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(383, '1668510568', NULL, NULL, '3', 'delete', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(385, NULL, '9', NULL, '3', 'create', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(386, NULL, '9', NULL, '3', 'update', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(387, NULL, '9', NULL, '3', 'delete', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(392, NULL, '17', NULL, '3', 'view', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(393, NULL, '17', NULL, '3', 'create', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(394, NULL, '17', NULL, '3', 'update', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(395, NULL, '17', NULL, '3', 'delete', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(396, NULL, '10', NULL, '3', 'view', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(397, NULL, '10', NULL, '3', 'create', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(398, NULL, '10', NULL, '3', 'update', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(399, NULL, '10', NULL, '3', 'delete', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(404, NULL, '18', NULL, '3', 'view', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(405, NULL, '18', NULL, '3', 'create', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(406, NULL, '18', NULL, '3', 'update', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(407, NULL, '18', NULL, '3', 'delete', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(408, NULL, '19', NULL, '3', 'view', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(409, NULL, '19', NULL, '3', 'create', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(410, NULL, '19', NULL, '3', 'update', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(411, NULL, '19', NULL, '3', 'delete', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(412, NULL, '20', NULL, '3', 'view', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(413, NULL, '20', NULL, '3', 'create', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(414, NULL, '20', NULL, '3', 'update', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(415, NULL, '20', NULL, '3', 'delete', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(417, NULL, NULL, '2', '3', 'view', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(418, NULL, NULL, '3', '3', 'view', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(419, NULL, NULL, '4', '3', 'view', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(420, NULL, NULL, '5', '3', 'view', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(421, NULL, NULL, '6', '3', 'view', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(422, NULL, NULL, '1', '3', 'create', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(423, NULL, NULL, '2', '3', 'create', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(424, NULL, NULL, '3', '3', 'create', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(425, NULL, NULL, '4', '3', 'create', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(426, NULL, NULL, '5', '3', 'create', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(427, NULL, NULL, '6', '3', 'create', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(428, NULL, NULL, '1', '3', 'update', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(429, NULL, NULL, '2', '3', 'update', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(430, NULL, NULL, '3', '3', 'update', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(431, NULL, NULL, '4', '3', 'update', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(432, NULL, NULL, '5', '3', 'update', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(433, NULL, NULL, '6', '3', 'update', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(434, NULL, NULL, '1', '3', 'delete', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(435, NULL, NULL, '2', '3', 'delete', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(436, NULL, NULL, '3', '3', 'delete', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(437, NULL, NULL, '4', '3', 'delete', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(438, NULL, NULL, '5', '3', 'delete', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(439, NULL, NULL, '6', '3', 'delete', '2022-11-24 05:08:11', '2022-11-24 05:08:11'),
(440, '1669390641', NULL, NULL, '1', 'view', '2022-11-25 07:37:59', '2022-11-25 07:37:59'),
(441, '1669390641', NULL, NULL, '1', 'create', '2022-11-25 07:38:06', '2022-11-25 07:38:06'),
(442, '1669390641', NULL, NULL, '1', 'update', '2022-11-25 07:38:07', '2022-11-25 07:38:07'),
(443, '1669390641', NULL, NULL, '1', 'delete', '2022-11-25 07:38:08', '2022-11-25 07:38:08'),
(449, '1669390641', NULL, NULL, '3', 'create', '2022-11-25 07:38:55', '2022-11-25 07:38:55'),
(450, '1669390641', NULL, NULL, '3', 'update', '2022-11-25 07:38:55', '2022-11-25 07:38:55'),
(451, '1669390641', NULL, NULL, '3', 'delete', '2022-11-25 07:38:57', '2022-11-25 07:38:57'),
(452, NULL, '21', NULL, '1', 'view', '2022-11-30 04:57:38', '2022-11-30 04:57:38'),
(453, NULL, '22', NULL, '1', 'view', '2022-11-30 04:57:39', '2022-11-30 04:57:39'),
(454, NULL, '23', NULL, '1', 'view', '2022-11-30 04:57:40', '2022-11-30 04:57:40'),
(455, NULL, '21', NULL, '1', 'create', '2022-11-30 04:57:53', '2022-11-30 04:57:53'),
(456, NULL, '22', NULL, '1', 'create', '2022-11-30 04:57:54', '2022-11-30 04:57:54'),
(457, NULL, '23', NULL, '1', 'create', '2022-11-30 04:57:55', '2022-11-30 04:57:55'),
(458, NULL, '23', NULL, '1', 'update', '2022-11-30 04:57:56', '2022-11-30 04:57:56'),
(459, NULL, '22', NULL, '1', 'update', '2022-11-30 04:57:56', '2022-11-30 04:57:56'),
(460, NULL, '21', NULL, '1', 'update', '2022-11-30 04:57:57', '2022-11-30 04:57:57'),
(461, NULL, '21', NULL, '1', 'delete', '2022-11-30 04:57:57', '2022-11-30 04:57:57'),
(462, NULL, '22', NULL, '1', 'delete', '2022-11-30 04:57:58', '2022-11-30 04:57:58'),
(463, NULL, '23', NULL, '1', 'delete', '2022-11-30 04:57:58', '2022-11-30 04:57:58'),
(476, NULL, '21', NULL, '3', 'view', '2022-11-30 04:59:47', '2022-11-30 04:59:47'),
(477, NULL, '22', NULL, '3', 'view', '2022-11-30 04:59:48', '2022-11-30 04:59:48'),
(478, NULL, '23', NULL, '3', 'view', '2022-11-30 04:59:48', '2022-11-30 04:59:48'),
(479, NULL, '21', NULL, '3', 'create', '2022-11-30 05:00:24', '2022-11-30 05:00:24'),
(480, NULL, '21', NULL, '3', 'update', '2022-11-30 05:00:25', '2022-11-30 05:00:25'),
(481, NULL, '21', NULL, '3', 'delete', '2022-11-30 05:00:26', '2022-11-30 05:00:26'),
(482, NULL, '22', NULL, '3', 'delete', '2022-11-30 05:00:27', '2022-11-30 05:00:27'),
(483, NULL, '22', NULL, '3', 'update', '2022-11-30 05:00:28', '2022-11-30 05:00:28'),
(484, NULL, '22', NULL, '3', 'create', '2022-11-30 05:00:29', '2022-11-30 05:00:29'),
(485, NULL, '23', NULL, '3', 'create', '2022-11-30 05:00:30', '2022-11-30 05:00:30'),
(486, NULL, '23', NULL, '3', 'update', '2022-11-30 05:00:30', '2022-11-30 05:00:30'),
(487, NULL, '23', NULL, '3', 'delete', '2022-11-30 05:00:31', '2022-11-30 05:00:31'),
(568, '1667444041', NULL, NULL, '5', 'view', '2024-06-05 20:01:52', '2024-06-05 20:01:52'),
(569, '1667444041', NULL, NULL, '5', 'create', '2024-06-05 20:01:52', '2024-06-05 20:01:52'),
(570, '1667444041', NULL, NULL, '5', 'update', '2024-06-05 20:01:52', '2024-06-05 20:01:52'),
(571, '1667444041', NULL, NULL, '5', 'delete', '2024-06-05 20:01:52', '2024-06-05 20:01:52'),
(573, '1668509889', NULL, NULL, '5', 'create', '2024-06-05 20:01:52', '2024-06-05 20:01:52'),
(574, '1668509889', NULL, NULL, '5', 'update', '2024-06-05 20:01:52', '2024-06-05 20:01:52'),
(575, '1668509889', NULL, NULL, '5', 'delete', '2024-06-05 20:01:52', '2024-06-05 20:01:52'),
(580, '1668510437', NULL, NULL, '5', 'view', '2024-06-05 20:01:52', '2024-06-05 20:01:52'),
(581, '1668510437', NULL, NULL, '5', 'create', '2024-06-05 20:01:52', '2024-06-05 20:01:52'),
(582, '1668510437', NULL, NULL, '5', 'update', '2024-06-05 20:01:52', '2024-06-05 20:01:52'),
(583, '1668510437', NULL, NULL, '5', 'delete', '2024-06-05 20:01:52', '2024-06-05 20:01:52'),
(585, '1668510568', NULL, NULL, '5', 'create', '2024-06-05 20:01:52', '2024-06-05 20:01:52'),
(586, '1668510568', NULL, NULL, '5', 'update', '2024-06-05 20:01:52', '2024-06-05 20:01:52'),
(587, '1668510568', NULL, NULL, '5', 'delete', '2024-06-05 20:01:52', '2024-06-05 20:01:52'),
(589, NULL, '9', NULL, '5', 'create', '2024-06-05 20:01:52', '2024-06-05 20:01:52'),
(590, NULL, '9', NULL, '5', 'update', '2024-06-05 20:01:52', '2024-06-05 20:01:52'),
(591, NULL, '9', NULL, '5', 'delete', '2024-06-05 20:01:52', '2024-06-05 20:01:52'),
(592, NULL, '17', NULL, '5', 'view', '2024-06-05 20:01:52', '2024-06-05 20:01:52'),
(593, NULL, '17', NULL, '5', 'create', '2024-06-05 20:01:52', '2024-06-05 20:01:52'),
(594, NULL, '17', NULL, '5', 'update', '2024-06-05 20:01:52', '2024-06-05 20:01:52'),
(595, NULL, '17', NULL, '5', 'delete', '2024-06-05 20:01:52', '2024-06-05 20:01:52'),
(596, NULL, '21', NULL, '5', 'view', '2024-06-05 20:01:52', '2024-06-05 20:01:52'),
(597, NULL, '21', NULL, '5', 'create', '2024-06-05 20:01:52', '2024-06-05 20:01:52'),
(598, NULL, '21', NULL, '5', 'update', '2024-06-05 20:01:52', '2024-06-05 20:01:52'),
(599, NULL, '21', NULL, '5', 'delete', '2024-06-05 20:01:52', '2024-06-05 20:01:52'),
(600, NULL, '10', NULL, '5', 'view', '2024-06-05 20:01:52', '2024-06-05 20:01:52'),
(602, NULL, '10', NULL, '5', 'update', '2024-06-05 20:01:52', '2024-06-05 20:01:52'),
(604, NULL, '18', NULL, '5', 'view', '2024-06-05 20:01:52', '2024-06-05 20:01:52'),
(605, NULL, '18', NULL, '5', 'create', '2024-06-05 20:01:52', '2024-06-05 20:01:52'),
(606, NULL, '18', NULL, '5', 'update', '2024-06-05 20:01:52', '2024-06-05 20:01:52'),
(607, NULL, '18', NULL, '5', 'delete', '2024-06-05 20:01:52', '2024-06-05 20:01:52'),
(608, NULL, '22', NULL, '5', 'view', '2024-06-05 20:01:52', '2024-06-05 20:01:52'),
(609, NULL, '22', NULL, '5', 'create', '2024-06-05 20:01:52', '2024-06-05 20:01:52'),
(610, NULL, '22', NULL, '5', 'update', '2024-06-05 20:01:52', '2024-06-05 20:01:52'),
(611, NULL, '22', NULL, '5', 'delete', '2024-06-05 20:01:52', '2024-06-05 20:01:52'),
(612, NULL, '19', NULL, '5', 'view', '2024-06-05 20:01:52', '2024-06-05 20:01:52'),
(613, NULL, '19', NULL, '5', 'create', '2024-06-05 20:01:52', '2024-06-05 20:01:52'),
(614, NULL, '19', NULL, '5', 'update', '2024-06-05 20:01:52', '2024-06-05 20:01:52'),
(615, NULL, '19', NULL, '5', 'delete', '2024-06-05 20:01:52', '2024-06-05 20:01:52'),
(616, NULL, '23', NULL, '5', 'view', '2024-06-05 20:01:52', '2024-06-05 20:01:52'),
(617, NULL, '23', NULL, '5', 'create', '2024-06-05 20:01:52', '2024-06-05 20:01:52'),
(618, NULL, '23', NULL, '5', 'update', '2024-06-05 20:01:52', '2024-06-05 20:01:52'),
(619, NULL, '23', NULL, '5', 'delete', '2024-06-05 20:01:52', '2024-06-05 20:01:52'),
(620, NULL, '20', NULL, '5', 'view', '2024-06-05 20:01:52', '2024-06-05 20:01:52'),
(621, NULL, '20', NULL, '5', 'create', '2024-06-05 20:01:52', '2024-06-05 20:01:52'),
(622, NULL, '20', NULL, '5', 'update', '2024-06-05 20:01:52', '2024-06-05 20:01:52'),
(623, NULL, '20', NULL, '5', 'delete', '2024-06-05 20:01:52', '2024-06-05 20:01:52'),
(625, NULL, NULL, '2', '5', 'view', '2024-06-05 20:01:52', '2024-06-05 20:01:52'),
(626, NULL, NULL, '3', '5', 'view', '2024-06-05 20:01:52', '2024-06-05 20:01:52'),
(627, NULL, NULL, '4', '5', 'view', '2024-06-05 20:01:52', '2024-06-05 20:01:52'),
(628, NULL, NULL, '5', '5', 'view', '2024-06-05 20:01:52', '2024-06-05 20:01:52'),
(629, NULL, NULL, '6', '5', 'view', '2024-06-05 20:01:52', '2024-06-05 20:01:52'),
(630, NULL, NULL, '1', '5', 'create', '2024-06-05 20:01:52', '2024-06-05 20:01:52'),
(631, NULL, NULL, '2', '5', 'create', '2024-06-05 20:01:52', '2024-06-05 20:01:52'),
(632, NULL, NULL, '3', '5', 'create', '2024-06-05 20:01:52', '2024-06-05 20:01:52'),
(633, NULL, NULL, '4', '5', 'create', '2024-06-05 20:01:52', '2024-06-05 20:01:52'),
(634, NULL, NULL, '5', '5', 'create', '2024-06-05 20:01:52', '2024-06-05 20:01:52'),
(635, NULL, NULL, '6', '5', 'create', '2024-06-05 20:01:52', '2024-06-05 20:01:52'),
(636, NULL, NULL, '1', '5', 'update', '2024-06-05 20:01:52', '2024-06-05 20:01:52'),
(637, NULL, NULL, '2', '5', 'update', '2024-06-05 20:01:52', '2024-06-05 20:01:52'),
(638, NULL, NULL, '3', '5', 'update', '2024-06-05 20:01:52', '2024-06-05 20:01:52'),
(639, NULL, NULL, '4', '5', 'update', '2024-06-05 20:01:52', '2024-06-05 20:01:52'),
(640, NULL, NULL, '5', '5', 'update', '2024-06-05 20:01:52', '2024-06-05 20:01:52'),
(641, NULL, NULL, '6', '5', 'update', '2024-06-05 20:01:52', '2024-06-05 20:01:52'),
(642, NULL, NULL, '1', '5', 'delete', '2024-06-05 20:01:52', '2024-06-05 20:01:52'),
(643, NULL, NULL, '2', '5', 'delete', '2024-06-05 20:01:52', '2024-06-05 20:01:52'),
(644, NULL, NULL, '3', '5', 'delete', '2024-06-05 20:01:52', '2024-06-05 20:01:52'),
(645, NULL, NULL, '4', '5', 'delete', '2024-06-05 20:01:52', '2024-06-05 20:01:52'),
(646, NULL, NULL, '5', '5', 'delete', '2024-06-05 20:01:52', '2024-06-05 20:01:52'),
(647, NULL, NULL, '6', '5', 'delete', '2024-06-05 20:01:52', '2024-06-05 20:01:52'),
(648, '1667444041', NULL, NULL, '6', 'view', '2024-06-06 18:23:25', '2024-06-06 18:23:25'),
(649, '1667444041', NULL, NULL, '6', 'create', '2024-06-06 18:23:25', '2024-06-06 18:23:25'),
(650, '1667444041', NULL, NULL, '6', 'update', '2024-06-06 18:23:25', '2024-06-06 18:23:25'),
(651, '1667444041', NULL, NULL, '6', 'delete', '2024-06-06 18:23:25', '2024-06-06 18:23:25'),
(652, '1668509889', NULL, NULL, '6', 'view', '2024-06-06 18:23:25', '2024-06-06 18:23:25'),
(653, '1668509889', NULL, NULL, '6', 'create', '2024-06-06 18:23:25', '2024-06-06 18:23:25'),
(654, '1668509889', NULL, NULL, '6', 'update', '2024-06-06 18:23:25', '2024-06-06 18:23:25'),
(655, '1668509889', NULL, NULL, '6', 'delete', '2024-06-06 18:23:25', '2024-06-06 18:23:25'),
(657, '1669390641', NULL, NULL, '6', 'create', '2024-06-06 18:23:25', '2024-06-06 18:23:25'),
(658, '1669390641', NULL, NULL, '6', 'update', '2024-06-06 18:23:25', '2024-06-06 18:23:25'),
(659, '1669390641', NULL, NULL, '6', 'delete', '2024-06-06 18:23:25', '2024-06-06 18:23:25'),
(660, '1668510437', NULL, NULL, '6', 'view', '2024-06-06 18:23:25', '2024-06-06 18:23:25'),
(661, '1668510437', NULL, NULL, '6', 'create', '2024-06-06 18:23:25', '2024-06-06 18:23:25'),
(662, '1668510437', NULL, NULL, '6', 'update', '2024-06-06 18:23:25', '2024-06-06 18:23:25'),
(663, '1668510437', NULL, NULL, '6', 'delete', '2024-06-06 18:23:25', '2024-06-06 18:23:25'),
(665, '1668510568', NULL, NULL, '6', 'create', '2024-06-06 18:23:25', '2024-06-06 18:23:25'),
(666, '1668510568', NULL, NULL, '6', 'update', '2024-06-06 18:23:25', '2024-06-06 18:23:25'),
(667, '1668510568', NULL, NULL, '6', 'delete', '2024-06-06 18:23:25', '2024-06-06 18:23:25'),
(668, NULL, '9', NULL, '6', 'view', '2024-06-06 18:23:25', '2024-06-06 18:23:25'),
(669, NULL, '9', NULL, '6', 'create', '2024-06-06 18:23:25', '2024-06-06 18:23:25'),
(670, NULL, '9', NULL, '6', 'update', '2024-06-06 18:23:25', '2024-06-06 18:23:25'),
(671, NULL, '9', NULL, '6', 'delete', '2024-06-06 18:23:25', '2024-06-06 18:23:25'),
(673, NULL, '17', NULL, '6', 'create', '2024-06-06 18:23:25', '2024-06-06 18:23:25'),
(674, NULL, '17', NULL, '6', 'update', '2024-06-06 18:23:25', '2024-06-06 18:23:25'),
(675, NULL, '17', NULL, '6', 'delete', '2024-06-06 18:23:25', '2024-06-06 18:23:25'),
(676, NULL, '21', NULL, '6', 'view', '2024-06-06 18:23:25', '2024-06-06 18:23:25'),
(677, NULL, '21', NULL, '6', 'create', '2024-06-06 18:23:25', '2024-06-06 18:23:25'),
(678, NULL, '21', NULL, '6', 'update', '2024-06-06 18:23:25', '2024-06-06 18:23:25'),
(679, NULL, '21', NULL, '6', 'delete', '2024-06-06 18:23:25', '2024-06-06 18:23:25'),
(681, NULL, '10', NULL, '6', 'create', '2024-06-06 18:23:25', '2024-06-06 18:23:25'),
(682, NULL, '10', NULL, '6', 'update', '2024-06-06 18:23:25', '2024-06-06 18:23:25'),
(683, NULL, '10', NULL, '6', 'delete', '2024-06-06 18:23:25', '2024-06-06 18:23:25'),
(685, NULL, '18', NULL, '6', 'create', '2024-06-06 18:23:25', '2024-06-06 18:23:25'),
(686, NULL, '18', NULL, '6', 'update', '2024-06-06 18:23:25', '2024-06-06 18:23:25'),
(687, NULL, '18', NULL, '6', 'delete', '2024-06-06 18:23:25', '2024-06-06 18:23:25'),
(688, NULL, '22', NULL, '6', 'view', '2024-06-06 18:23:25', '2024-06-06 18:23:25'),
(689, NULL, '22', NULL, '6', 'create', '2024-06-06 18:23:25', '2024-06-06 18:23:25'),
(690, NULL, '22', NULL, '6', 'update', '2024-06-06 18:23:25', '2024-06-06 18:23:25'),
(691, NULL, '22', NULL, '6', 'delete', '2024-06-06 18:23:25', '2024-06-06 18:23:25'),
(693, NULL, '19', NULL, '6', 'create', '2024-06-06 18:23:25', '2024-06-06 18:23:25'),
(694, NULL, '19', NULL, '6', 'update', '2024-06-06 18:23:25', '2024-06-06 18:23:25'),
(695, NULL, '19', NULL, '6', 'delete', '2024-06-06 18:23:25', '2024-06-06 18:23:25'),
(696, NULL, '23', NULL, '6', 'view', '2024-06-06 18:23:25', '2024-06-06 18:23:25'),
(697, NULL, '23', NULL, '6', 'create', '2024-06-06 18:23:25', '2024-06-06 18:23:25'),
(698, NULL, '23', NULL, '6', 'update', '2024-06-06 18:23:25', '2024-06-06 18:23:25'),
(699, NULL, '23', NULL, '6', 'delete', '2024-06-06 18:23:25', '2024-06-06 18:23:25'),
(700, NULL, '20', NULL, '6', 'view', '2024-06-06 18:23:25', '2024-06-06 18:23:25'),
(701, NULL, '20', NULL, '6', 'create', '2024-06-06 18:23:25', '2024-06-06 18:23:25'),
(702, NULL, '20', NULL, '6', 'update', '2024-06-06 18:23:25', '2024-06-06 18:23:25'),
(703, NULL, '20', NULL, '6', 'delete', '2024-06-06 18:23:25', '2024-06-06 18:23:25'),
(705, NULL, NULL, '2', '6', 'view', '2024-06-06 18:23:25', '2024-06-06 18:23:25'),
(706, NULL, NULL, '3', '6', 'view', '2024-06-06 18:23:25', '2024-06-06 18:23:25'),
(707, NULL, NULL, '4', '6', 'view', '2024-06-06 18:23:25', '2024-06-06 18:23:25'),
(708, NULL, NULL, '5', '6', 'view', '2024-06-06 18:23:25', '2024-06-06 18:23:25'),
(709, NULL, NULL, '6', '6', 'view', '2024-06-06 18:23:25', '2024-06-06 18:23:25'),
(710, NULL, NULL, '1', '6', 'create', '2024-06-06 18:23:25', '2024-06-06 18:23:25'),
(711, NULL, NULL, '2', '6', 'create', '2024-06-06 18:23:25', '2024-06-06 18:23:25'),
(712, NULL, NULL, '3', '6', 'create', '2024-06-06 18:23:25', '2024-06-06 18:23:25'),
(713, NULL, NULL, '4', '6', 'create', '2024-06-06 18:23:25', '2024-06-06 18:23:25'),
(714, NULL, NULL, '5', '6', 'create', '2024-06-06 18:23:25', '2024-06-06 18:23:25'),
(715, NULL, NULL, '6', '6', 'create', '2024-06-06 18:23:25', '2024-06-06 18:23:25'),
(716, NULL, NULL, '1', '6', 'update', '2024-06-06 18:23:25', '2024-06-06 18:23:25'),
(717, NULL, NULL, '2', '6', 'update', '2024-06-06 18:23:25', '2024-06-06 18:23:25'),
(718, NULL, NULL, '3', '6', 'update', '2024-06-06 18:23:25', '2024-06-06 18:23:25'),
(719, NULL, NULL, '4', '6', 'update', '2024-06-06 18:23:25', '2024-06-06 18:23:25'),
(720, NULL, NULL, '5', '6', 'update', '2024-06-06 18:23:25', '2024-06-06 18:23:25'),
(721, NULL, NULL, '6', '6', 'update', '2024-06-06 18:23:25', '2024-06-06 18:23:25'),
(722, NULL, NULL, '1', '6', 'delete', '2024-06-06 18:23:25', '2024-06-06 18:23:25'),
(723, NULL, NULL, '2', '6', 'delete', '2024-06-06 18:23:25', '2024-06-06 18:23:25'),
(724, NULL, NULL, '3', '6', 'delete', '2024-06-06 18:23:25', '2024-06-06 18:23:25'),
(725, NULL, NULL, '4', '6', 'delete', '2024-06-06 18:23:25', '2024-06-06 18:23:25'),
(726, NULL, NULL, '5', '6', 'delete', '2024-06-06 18:23:25', '2024-06-06 18:23:25'),
(727, NULL, NULL, '6', '6', 'delete', '2024-06-06 18:23:25', '2024-06-06 18:23:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_appreance`
--

CREATE TABLE `tbl_appreance` (
  `appreance_id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `appreance_layout` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `appreance_theme` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `appreance_menu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `appreance_header` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `appreance_sidestyle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tbl_appreance`
--

INSERT INTO `tbl_appreance` (`appreance_id`, `user_id`, `appreance_layout`, `appreance_theme`, `appreance_menu`, `appreance_header`, `appreance_sidestyle`, `created_at`, `updated_at`) VALUES
(2, '1', 'sidebar-mini', 'light-mode', 'light-menu', 'header-light', 'default-menu', '2022-11-22 01:45:47', '2022-11-24 05:00:20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_barang`
--

CREATE TABLE `tbl_barang` (
  `barang_id` int(11) NOT NULL,
  `jenisbarang_id` varchar(255) DEFAULT NULL,
  `satuan_id` varchar(255) DEFAULT NULL,
  `merk_id` varchar(255) DEFAULT NULL,
  `barang_kode` varchar(255) NOT NULL,
  `barang_nama` varchar(255) NOT NULL,
  `barang_slug` varchar(255) DEFAULT NULL,
  `barang_harga` varchar(255) NOT NULL,
  `barang_stok` varchar(255) NOT NULL,
  `barang_gambar` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_barang`
--

INSERT INTO `tbl_barang` (`barang_id`, `jenisbarang_id`, `satuan_id`, `merk_id`, `barang_kode`, `barang_nama`, `barang_slug`, `barang_harga`, `barang_stok`, `barang_gambar`, `created_at`, `updated_at`) VALUES
(5, '12', '7', '2', 'BRG-1669390175622', 'Motherboard', 'motherboard', '4000000', '0', 'image.png', '2022-11-25 07:30:12', '2022-11-25 07:30:12'),
(6, '13', '1', '7', 'BRG-1669390220236', 'Baut 24mm', 'baut-24mm', '1000000', '0', 'image.png', '2022-11-25 07:30:50', '2022-11-29 06:30:37');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_barangkeluar`
--

CREATE TABLE `tbl_barangkeluar` (
  `bk_id` int(10) UNSIGNED NOT NULL,
  `bk_kode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barang_kode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bk_tanggal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bk_tujuan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bk_jumlah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `bk_harga` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `bk_total` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `bk_status` enum('pending','terkirim','selesai') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tbl_barangkeluar`
--

INSERT INTO `tbl_barangkeluar` (`bk_id`, `bk_kode`, `barang_kode`, `bk_tanggal`, `bk_tujuan`, `bk_jumlah`, `bk_harga`, `bk_total`, `bk_status`, `created_at`, `updated_at`) VALUES
(2, 'BK-1669811950758', 'BRG-1669390220236', '2022-11-01', 'Gudang Tasikmalaya', '20', '1000000', '20000000', 'selesai', '2022-11-30 04:39:22', '2024-06-07 01:22:04'),
(3, 'BK-1669812439198', 'BRG-1669390175622', '2022-11-02', 'Gudang Prindapan', '2', '4000000', '8000000', 'terkirim', '2022-11-30 04:47:39', '2024-06-06 19:44:23'),
(4, 'BK-1717730560614', 'BRG-1669390220236', '2024-06-07', 'Jakarta', '10', '1000000', '10000000', 'terkirim', '2024-06-06 19:23:07', '2024-06-07 01:22:00'),
(5, 'BK-1717751988788', 'BRG-1669390220236', '2024-06-07', 'Pelanggan 1', '10', '1000000', '10000000', 'pending', '2024-06-07 01:20:16', '2024-06-07 01:21:56');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_barangmasuk`
--

CREATE TABLE `tbl_barangmasuk` (
  `bm_id` int(10) UNSIGNED NOT NULL,
  `bm_kode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barang_kode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `suplier'_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bm_tanggal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bm_jumlah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tbl_barangmasuk`
--

INSERT INTO `tbl_barangmasuk` (`bm_id`, `bm_kode`, `barang_kode`, `suplier'_id`, `bm_tanggal`, `bm_jumlah`, `created_at`, `updated_at`) VALUES
(1, 'BM-1669730554623', 'BRG-1669390220236', '2', '2022-11-01', '50', '2022-11-29 06:02:43', '2022-11-29 06:20:13'),
(2, 'BM-1669731639801', 'BRG-1669390175622', '2', '2022-11-30', '10', '2022-11-29 06:20:55', '2022-11-29 06:20:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_suplier'`
--

CREATE TABLE `tbl_suplier'` (
  `suplier'_id` int(10) UNSIGNED NOT NULL,
  `suplier'_nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `suplier'_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `suplier'_alamat` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `suplier'_notelp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tbl_suplier'`
--

INSERT INTO `tbl_suplier'` (`suplier'_id`, `suplier'_nama`, `suplier'_slug`, `suplier'_alamat`, `suplier'_notelp`, `created_at`, `updated_at`) VALUES
(2, 'Radhian Sobarna', 'radhian-sobarna', 'Sumedang', '087817379229', '2022-11-25 17:36:34', '2022-11-25 17:43:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_jenisbarang`
--

CREATE TABLE `tbl_jenisbarang` (
  `jenisbarang_id` int(10) UNSIGNED NOT NULL,
  `jenisbarang_nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenisbarang_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenisbarang_ket` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tbl_jenisbarang`
--

INSERT INTO `tbl_jenisbarang` (`jenisbarang_id`, `jenisbarang_nama`, `jenisbarang_slug`, `jenisbarang_ket`, `created_at`, `updated_at`) VALUES
(11, 'Elektronik', 'elektronik', NULL, '2022-11-25 07:24:18', '2022-11-25 07:25:39'),
(12, 'Perangkat Komputer', 'perangkat-komputer', NULL, '2022-11-25 07:26:15', '2022-11-25 07:27:16'),
(13, 'Besi', 'besi', NULL, '2022-11-25 07:27:33', '2022-11-25 07:27:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_menu`
--

CREATE TABLE `tbl_menu` (
  `menu_id` int(10) UNSIGNED NOT NULL,
  `menu_judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_redirect` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_sort` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tbl_menu`
--

INSERT INTO `tbl_menu` (`menu_id`, `menu_judul`, `menu_slug`, `menu_icon`, `menu_redirect`, `menu_sort`, `menu_type`, `created_at`, `updated_at`) VALUES
(1667444041, 'Dashboard', 'dashboard', 'home', '/dashboard', '1', '1', '2022-11-15 02:51:04', '2022-11-15 02:51:04'),
(1668509889, 'Master Barang', 'master-barang', 'package', '-', '2', '2', '2022-11-15 02:58:09', '2022-11-15 03:03:15'),
(1668510437, 'Transaksi', 'transaksi', 'repeat', '-', '4', '2', '2022-11-15 03:07:17', '2022-11-25 07:37:36'),
(1668510568, 'Laporan', 'laporan', 'printer', '-', '5', '2', '2022-11-15 03:09:28', '2022-11-25 07:37:28'),
(1669390641, 'Suplier', 'suplier', 'user', '/suplier'', '3', '1', '2022-11-25 07:37:21', '2024-06-17 05:24:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_merk`
--

CREATE TABLE `tbl_merk` (
  `merk_id` int(10) UNSIGNED NOT NULL,
  `merk_nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `merk_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `merk_keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tbl_merk`
--

INSERT INTO `tbl_merk` (`merk_id`, `merk_nama`, `merk_slug`, `merk_keterangan`, `created_at`, `updated_at`) VALUES
(1, 'Huawei', 'huawei', NULL, '2022-11-15 10:14:09', '2022-11-15 10:14:09'),
(2, 'Lenovo', 'lenovo', NULL, '2022-11-15 10:14:33', '2022-11-15 10:14:45'),
(7, 'Steel', 'steel', NULL, '2022-11-25 07:29:27', '2022-11-25 07:29:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_role`
--

CREATE TABLE `tbl_role` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `role_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tbl_role`
--

INSERT INTO `tbl_role` (`role_id`, `role_title`, `role_slug`, `role_desc`, `created_at`, `updated_at`) VALUES
(1, 'Owner', 'owner', '-', '2022-11-15 02:51:04', '2022-11-15 02:51:04'),
(3, 'Kasir', 'kasir', '-', '2022-11-15 02:51:04', '2024-06-06 18:19:10'),
(5, 'Pengiriman', 'pengiriman', '-', '2024-06-05 20:01:26', '2024-06-06 18:23:06'),
(6, 'Gudang', 'gudang', '-', '2024-06-06 18:22:56', '2024-06-06 18:23:02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_satuan`
--

CREATE TABLE `tbl_satuan` (
  `satuan_id` int(10) UNSIGNED NOT NULL,
  `satuan_nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `satuan_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `satuan_keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tbl_satuan`
--

INSERT INTO `tbl_satuan` (`satuan_id`, `satuan_nama`, `satuan_slug`, `satuan_keterangan`, `created_at`, `updated_at`) VALUES
(1, 'Kg', 'kg', NULL, '2022-11-15 09:50:38', '2022-11-24 04:39:04'),
(5, 'Pcs', 'pcs', NULL, '2022-11-24 04:39:15', '2022-11-24 04:39:21'),
(7, 'Qty', 'qty', NULL, '2022-11-24 04:39:59', '2022-11-24 04:39:59');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_submenu`
--

CREATE TABLE `tbl_submenu` (
  `submenu_id` int(10) UNSIGNED NOT NULL,
  `menu_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `submenu_judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `submenu_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `submenu_redirect` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `submenu_sort` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tbl_submenu`
--

INSERT INTO `tbl_submenu` (`submenu_id`, `menu_id`, `submenu_judul`, `submenu_slug`, `submenu_redirect`, `submenu_sort`, `created_at`, `updated_at`) VALUES
(9, '1668510437', 'Barang Masuk', 'barang-masuk', '/barang-masuk', '1', '2022-11-15 03:08:19', '2022-11-15 03:08:19'),
(10, '1668510437', 'Barang Keluar', 'barang-keluar', '/barang-keluar', '2', '2022-11-15 03:08:19', '2022-11-15 03:08:19'),
(17, '1668509889', 'Jenis', 'jenis', '/jenisbarang', '1', '2022-11-24 04:06:48', '2022-11-24 04:06:48'),
(18, '1668509889', 'Satuan', 'satuan', '/satuan', '2', '2022-11-24 04:06:48', '2022-11-24 04:06:48'),
(19, '1668509889', 'Merk', 'merk', '/merk', '3', '2022-11-24 04:06:48', '2022-11-24 04:06:48'),
(20, '1668509889', 'Barang', 'barang', '/barang', '4', '2022-11-24 04:06:48', '2022-11-24 04:06:48'),
(21, '1668510568', 'Lap Barang Masuk', 'lap-barang-masuk', '/lap-barang-masuk', '1', '2022-11-30 04:56:24', '2022-11-30 04:56:24'),
(22, '1668510568', 'Lap Barang Keluar', 'lap-barang-keluar', '/lap-barang-keluar', '2', '2022-11-30 04:56:24', '2022-11-30 04:56:24'),
(23, '1668510568', 'Lap Stok Barang', 'lap-stok-barang', '/lap-stok-barang', '3', '2022-11-30 04:56:24', '2022-11-30 04:56:24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_nmlengkap` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `role_id`, `user_nmlengkap`, `user_nama`, `user_email`, `user_foto`, `user_password`, `created_at`, `updated_at`) VALUES
(1, '1', 'Owner', 'owner', 'superadmin@gmail.com', 'KST7sLKvJbPVRvMaOLKoG0MkmBzzoBF5OM7y2Zpu.jpg', '25d55ad283aa400af464c76d713c07ad', '2022-11-15 02:51:04', '2024-06-17 05:21:43'),
(3, '3', 'Kasir', 'kasir', 'kasir@mail.com', 'undraw_profile.svg', '25d55ad283aa400af464c76d713c07ad', '2022-11-15 02:51:04', '2024-06-06 18:18:38'),
(5, '5', 'Pengiriman', 'pengiriman', 'pengiriman@mail.com', 'undraw_profile.svg', '25d55ad283aa400af464c76d713c07ad', '2024-06-05 20:05:16', '2024-06-05 20:05:16'),
(6, '6', 'Gudang', 'gudang', 'gudang@mail.com', 'undraw_profile.svg', '25d55ad283aa400af464c76d713c07ad', '2024-06-06 18:30:06', '2024-06-06 18:30:06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_web`
--

CREATE TABLE `tbl_web` (
  `web_id` int(10) UNSIGNED NOT NULL,
  `web_nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `web_logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `web_deskripsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tbl_web`
--

INSERT INTO `tbl_web` (`web_id`, `web_nama`, `web_logo`, `web_deskripsi`, `created_at`, `updated_at`) VALUES
(1, 'CIANTEN MEBEUL', 'NEC9xk6p5AUqP3Q2v9KYZyWzIveMPPWbgaoX11w4.png', 'Mengelola Data Barang Masuk & Barang Keluar', '2022-11-15 02:51:04', '2024-06-06 18:17:16');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `tbl_akses`
--
ALTER TABLE `tbl_akses`
  ADD PRIMARY KEY (`akses_id`);

--
-- Indeks untuk tabel `tbl_appreance`
--
ALTER TABLE `tbl_appreance`
  ADD PRIMARY KEY (`appreance_id`);

--
-- Indeks untuk tabel `tbl_barang`
--
ALTER TABLE `tbl_barang`
  ADD PRIMARY KEY (`barang_id`,`barang_kode`,`barang_nama`,`barang_harga`,`barang_stok`);

--
-- Indeks untuk tabel `tbl_barangkeluar`
--
ALTER TABLE `tbl_barangkeluar`
  ADD PRIMARY KEY (`bk_id`);

--
-- Indeks untuk tabel `tbl_barangmasuk`
--
ALTER TABLE `tbl_barangmasuk`
  ADD PRIMARY KEY (`bm_id`);

--
-- Indeks untuk tabel `tbl_suplier'`
--
ALTER TABLE `tbl_suplier'`
  ADD PRIMARY KEY (`suplier'_id`);

--
-- Indeks untuk tabel `tbl_jenisbarang`
--
ALTER TABLE `tbl_jenisbarang`
  ADD PRIMARY KEY (`jenisbarang_id`);

--
-- Indeks untuk tabel `tbl_menu`
--
ALTER TABLE `tbl_menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indeks untuk tabel `tbl_merk`
--
ALTER TABLE `tbl_merk`
  ADD PRIMARY KEY (`merk_id`);

--
-- Indeks untuk tabel `tbl_role`
--
ALTER TABLE `tbl_role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indeks untuk tabel `tbl_satuan`
--
ALTER TABLE `tbl_satuan`
  ADD PRIMARY KEY (`satuan_id`);

--
-- Indeks untuk tabel `tbl_submenu`
--
ALTER TABLE `tbl_submenu`
  ADD PRIMARY KEY (`submenu_id`);

--
-- Indeks untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indeks untuk tabel `tbl_web`
--
ALTER TABLE `tbl_web`
  ADD PRIMARY KEY (`web_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_akses`
--
ALTER TABLE `tbl_akses`
  MODIFY `akses_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=728;

--
-- AUTO_INCREMENT untuk tabel `tbl_appreance`
--
ALTER TABLE `tbl_appreance`
  MODIFY `appreance_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tbl_barang`
--
ALTER TABLE `tbl_barang`
  MODIFY `barang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tbl_barangkeluar`
--
ALTER TABLE `tbl_barangkeluar`
  MODIFY `bk_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tbl_barangmasuk`
--
ALTER TABLE `tbl_barangmasuk`
  MODIFY `bm_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tbl_suplier'`
--
ALTER TABLE `tbl_suplier'`
  MODIFY `suplier'_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tbl_jenisbarang`
--
ALTER TABLE `tbl_jenisbarang`
  MODIFY `jenisbarang_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `tbl_menu`
--
ALTER TABLE `tbl_menu`
  MODIFY `menu_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1669390642;

--
-- AUTO_INCREMENT untuk tabel `tbl_merk`
--
ALTER TABLE `tbl_merk`
  MODIFY `merk_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tbl_role`
--
ALTER TABLE `tbl_role`
  MODIFY `role_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tbl_satuan`
--
ALTER TABLE `tbl_satuan`
  MODIFY `satuan_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tbl_submenu`
--
ALTER TABLE `tbl_submenu`
  MODIFY `submenu_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tbl_web`
--
ALTER TABLE `tbl_web`
  MODIFY `web_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
