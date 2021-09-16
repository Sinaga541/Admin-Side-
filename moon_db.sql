-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Jun 2020 pada 15.02
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
-- Database: `moon_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `contactperson`
--

CREATE TABLE `contactperson` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `historyofkota`
--

CREATE TABLE `historyofkota` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `whoarekota_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_history` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `meetourteams`
--

CREATE TABLE `meetourteams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `meetourteams`
--

INSERT INTO `meetourteams` (`id`, `name`, `position`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Stella Hodkiewicz', 'Salvatore Bergstrom', 'Qui nihil ut corrupti corrupti ea dolores sapiente voluptatum non.', 'https://picsum.photos/id/21/200/300', NULL, NULL),
(2, 'Cindy Walker I', 'Prof. Jordy Hartmann', 'Ut est illo voluptatum repellendus sit iusto perspiciatis.', 'https://picsum.photos/id/8/200/300', NULL, NULL),
(3, 'Ryley Hoeger', 'Peter Hintz', 'Sit ab nesciunt optio voluptates ut sunt tenetur omnis magni est facilis.', 'https://picsum.photos/id/12/200/300', NULL, NULL),
(4, 'Macie Kilback', 'Faye Dibbert', 'Iste facilis consequatur voluptas omnis beatae et ut dolorum.', 'https://picsum.photos/id/17/200/300', NULL, NULL),
(5, 'Dr. Kelley Lueilwitz', 'Ariel Feil', 'Error aut temporibus dolor non odio quidem nemo.', 'https://picsum.photos/id/94/200/300', NULL, NULL),
(6, 'Nayeli Ebert', 'Prof. Toney Toy PhD', 'Explicabo totam et excepturi ab consequatur et voluptatem praesentium quis id.', 'https://picsum.photos/id/11/200/300', NULL, NULL),
(7, 'Andrew Klocko', 'Prof. Caleb Corkery', 'Quasi impedit sunt quae facilis dolorem autem excepturi aperiam impedit.', 'https://picsum.photos/id/26/200/300', NULL, NULL),
(8, 'Heber Lind', 'Flo Feest', 'Ut quod est dolores repellendus non quos vel sit consectetur consequatur debitis.', 'https://picsum.photos/id/99/200/300', NULL, NULL),
(9, 'Anya Lockman', 'Nelson Cremin', 'Possimus nam sunt quis ullam quidem a velit ab.', 'https://picsum.photos/id/74/200/300', NULL, NULL),
(10, 'Kristian Waters', 'Maria Rohan', 'Doloremque voluptatibus pariatur omnis aspernatur molestiae incidunt omnis consequatur illum quis consectetur eaque neque.', 'https://picsum.photos/id/36/200/300', NULL, NULL),
(11, 'Ivan Felix Sinaga', 'Intership', 'Ivan Felix SinagaIvan Felix SinagaIvan Felix SinagaIvan Felix SinagaIvan Felix SinagaIvan Felix SinagaIvan Felix Sinaga', 'adminassets/image/6JgOamTEsIOgdCRQg1Tfy8ZtAewBeqw6JBevTjdy.jpeg', NULL, NULL),
(12, 'Ivan Felix Sinaga', 'Intership', 'Ivan Felix SinagaIvan Felix SinagaIvan Felix Sinaga\'skfasjfsal;j;asf', NULL, NULL, NULL);

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
(3, '2020_06_24_104230_create_meetourteams_table', 1),
(4, '2020_06_24_105055_create_portfolio_table', 1),
(5, '2020_06_24_105708_create_whoarekota_table', 1),
(6, '2020_06_24_110028_create_historyofkota_table', 1),
(7, '2020_06_24_110518_create_ourfootprints_table', 1),
(8, '2020_06_24_110716_create_contactperson_table', 1),
(9, '2020_06_24_110927_create_product_table', 1),
(10, '2020_06_24_111130_create_productimages_table', 1),
(11, '2020_06_24_111158_create_service_table', 1),
(12, '2020_06_24_111205_create_serviceimages_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ourfootprints`
--

CREATE TABLE `ourfootprints` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `ourfootprints`
--

INSERT INTO `ourfootprints` (`id`, `name`, `number`, `created_at`, `updated_at`) VALUES
(1, 'Brayan Weissnat', '15', '2020-06-30 00:39:45', '2020-06-30 00:39:45'),
(2, 'Miss Antonia Cormier', '12', '2020-06-30 00:39:45', '2020-06-30 00:39:45'),
(3, 'Haley Terry', '15', '2020-06-30 00:39:45', '2020-06-30 00:39:45'),
(4, 'Dr. Darlene Daniel MD', '9', '2020-06-30 00:39:45', '2020-06-30 00:39:45'),
(5, 'Keon Boehm', '18', '2020-06-30 00:39:45', '2020-06-30 00:39:45'),
(6, 'Catharine Dietrich', '15', '2020-06-30 00:39:45', '2020-06-30 00:39:45'),
(7, 'Laurence Larson', '4', '2020-06-30 00:39:45', '2020-06-30 00:39:45'),
(8, 'Pinkie Gusikowski', '9', '2020-06-30 00:39:45', '2020-06-30 00:39:45'),
(9, 'Danyka Feeney', '19', '2020-06-30 00:39:45', '2020-06-30 00:39:45'),
(10, 'Herbert Kshlerin', '18', '2020-06-30 00:39:46', '2020-06-30 00:39:46');

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
-- Struktur dari tabel `portfolio`
--

CREATE TABLE `portfolio` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `portfolio`
--

INSERT INTO `portfolio` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Gilbert Hammes V', 'Consequuntur at aut amet occaecati et sed corrupti impedit.', '2020-06-30 00:39:44', '2020-06-30 00:39:44'),
(2, 'Lucile Sawayn', 'Temporibus atque eveniet a ad et ipsam et.', '2020-06-30 00:39:44', '2020-06-30 00:39:44'),
(3, 'Lia Fay', 'Ipsa incidunt ut dolor id tempore dolores porro qui aperiam quis sequi.', '2020-06-30 00:39:44', '2020-06-30 00:39:44'),
(4, 'Mr. Rene Graham', 'Itaque vel quia dolor quia expedita ea ut voluptates excepturi laborum modi.', '2020-06-30 00:39:44', '2020-06-30 00:39:44'),
(5, 'Maddison Collins', 'Magnam quae neque debitis facilis voluptas alias occaecati a et quae blanditiis.', '2020-06-30 00:39:44', '2020-06-30 00:39:44'),
(6, 'Lorenz Rolfson', 'Ipsa itaque numquam consectetur dolorum ullam iure.', '2020-06-30 00:39:44', '2020-06-30 00:39:44'),
(7, 'Prof. Curt Lindgren MD', 'Aut dolorem officiis ducimus consequatur rem itaque mollitia vitae consequatur veritatis aperiam perspiciatis.', '2020-06-30 00:39:44', '2020-06-30 00:39:44'),
(8, 'Mrs. Alvera Balistreri', 'Consequatur quis perferendis cupiditate ex non eligendi.', '2020-06-30 00:39:44', '2020-06-30 00:39:44'),
(9, 'Theresia Kunde Sr.', 'Possimus distinctio cumque velit quae eum deserunt quibusdam ad quod ut neque totam.', '2020-06-30 00:39:44', '2020-06-30 00:39:44'),
(10, 'Meredith Schumm DVM', 'Illo delectus omnis velit consequatur labore inventore eius qui est laudantium accusantium id.', '2020-06-30 00:39:44', '2020-06-30 00:39:44');

-- --------------------------------------------------------

--
-- Struktur dari tabel `product`
--

CREATE TABLE `product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_brief` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripton` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_product` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `productimages`
--

CREATE TABLE `productimages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `img_detail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `service`
--

CREATE TABLE `service` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_brief` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripton` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_service` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `serviceimages`
--

CREATE TABLE `serviceimages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `service_id` bigint(20) UNSIGNED NOT NULL,
  `img_detail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `whoarekota`
--

CREATE TABLE `whoarekota` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_kota` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `whoarekota`
--

INSERT INTO `whoarekota` (`id`, `description`, `img_kota`, `created_at`, `updated_at`) VALUES
(1, 'Ullam omnis et sunt nihil aut est ut incidunt necessitatibus porro voluptatem.', 'https://picsum.photos/id/24/200/300', '2020-06-30 00:39:46', '2020-06-30 00:39:46'),
(2, 'Porro ducimus veritatis earum voluptas doloribus eum.', 'https://picsum.photos/id/52/200/300', '2020-06-30 00:39:46', '2020-06-30 00:39:46'),
(3, 'Est harum consectetur suscipit et accusamus et non corrupti dolor sed molestias quam quia.', 'https://picsum.photos/id/17/200/300', '2020-06-30 00:39:46', '2020-06-30 00:39:46'),
(4, 'Eveniet id qui voluptate ut ut excepturi repellendus non hic sunt molestiae alias ea.', 'https://picsum.photos/id/98/200/300', '2020-06-30 00:39:46', '2020-06-30 00:39:46'),
(5, 'Consequuntur inventore perferendis perferendis qui assumenda aperiam eveniet nostrum dolorum.', 'https://picsum.photos/id/60/200/300', '2020-06-30 00:39:46', '2020-06-30 00:39:46'),
(6, 'Et error eum architecto commodi et et labore impedit est maiores deserunt occaecati vel.', 'https://picsum.photos/id/9/200/300', '2020-06-30 00:39:46', '2020-06-30 00:39:46'),
(7, 'Consequatur mollitia est ea doloribus quod atque minima pariatur aspernatur maxime dolorem.', 'https://picsum.photos/id/98/200/300', '2020-06-30 00:39:46', '2020-06-30 00:39:46'),
(8, 'Quia perferendis iure est laborum sint atque aperiam quia.', 'https://picsum.photos/id/83/200/300', '2020-06-30 00:39:46', '2020-06-30 00:39:46'),
(9, 'Rerum quibusdam dolor qui rem explicabo autem sit consequuntur est optio consequatur.', 'https://picsum.photos/id/90/200/300', '2020-06-30 00:39:46', '2020-06-30 00:39:46'),
(10, 'Fugit qui provident quidem consequatur facilis illum.', 'https://picsum.photos/id/85/200/300', '2020-06-30 00:39:46', '2020-06-30 00:39:46');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `contactperson`
--
ALTER TABLE `contactperson`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `historyofkota`
--
ALTER TABLE `historyofkota`
  ADD PRIMARY KEY (`id`),
  ADD KEY `historyofkota_whoarekota_id_foreign` (`whoarekota_id`);

--
-- Indeks untuk tabel `meetourteams`
--
ALTER TABLE `meetourteams`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ourfootprints`
--
ALTER TABLE `ourfootprints`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `portfolio`
--
ALTER TABLE `portfolio`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `productimages`
--
ALTER TABLE `productimages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productimages_product_id_foreign` (`product_id`);

--
-- Indeks untuk tabel `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `serviceimages`
--
ALTER TABLE `serviceimages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `serviceimages_service_id_foreign` (`service_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indeks untuk tabel `whoarekota`
--
ALTER TABLE `whoarekota`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `contactperson`
--
ALTER TABLE `contactperson`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `historyofkota`
--
ALTER TABLE `historyofkota`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `meetourteams`
--
ALTER TABLE `meetourteams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `ourfootprints`
--
ALTER TABLE `ourfootprints`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `portfolio`
--
ALTER TABLE `portfolio`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `product`
--
ALTER TABLE `product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `productimages`
--
ALTER TABLE `productimages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `service`
--
ALTER TABLE `service`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `serviceimages`
--
ALTER TABLE `serviceimages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `whoarekota`
--
ALTER TABLE `whoarekota`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `historyofkota`
--
ALTER TABLE `historyofkota`
  ADD CONSTRAINT `historyofkota_whoarekota_id_foreign` FOREIGN KEY (`whoarekota_id`) REFERENCES `whoarekota` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `productimages`
--
ALTER TABLE `productimages`
  ADD CONSTRAINT `productimages_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `serviceimages`
--
ALTER TABLE `serviceimages`
  ADD CONSTRAINT `serviceimages_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `service` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
