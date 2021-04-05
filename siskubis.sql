-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2021 at 02:27 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `siskubis`
--

-- --------------------------------------------------------

--
-- Table structure for table `arus_kas`
--

CREATE TABLE `arus_kas` (
  `id` int(11) NOT NULL,
  `tenant_id` int(11) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `jenis` int(11) NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `tanggal` datetime NOT NULL,
  `foto` varchar(255) NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `arus_kas`
--

INSERT INTO `arus_kas` (`id`, `tenant_id`, `keterangan`, `jenis`, `jumlah`, `tanggal`, `foto`, `updated_at`) VALUES
(1, 1, 'Modal test', 1, '30000000', '2020-11-12 04:32:21', '', '2020-11-12 04:32:21'),
(2, 1, 'Pembelian persediaan bahan', 0, '20000000', '2020-11-02 17:05:04', '', '2020-10-23 16:01:07'),
(3, 1, 'Pembelian peralatan', 0, '1000000', '2020-11-02 14:29:22', '', '2020-10-23 16:01:20'),
(4, 1, 'Beban operasi', 0, '3000000', '2020-11-02 13:41:54', '', '2020-10-23 15:45:31'),
(5, 1, 'Penjualan barang', 1, '50000000', '2020-11-03 11:06:05', '', '2020-10-23 16:01:11'),
(6, 1, 'Piutang penjualan barang', 1, '4500000', '2020-11-02 13:31:16', '', '2020-10-23 16:34:58'),
(7, 1, 'Pendapatan bunga', 1, '500000', '2020-11-02 13:54:07', '', '2020-10-26 13:54:43'),
(8, 1, 'Penjualan mesin tidak digunakan', 1, '10000000', '2020-11-03 13:54:51', '', '2020-10-26 13:56:06'),
(9, 1, 'penjualan saham', 1, '5000000', '2020-11-06 13:44:02', '1603630571coba.jpg', '2020-10-25 12:56:11'),
(10, 1, 'pajak penghasilan', 0, '1500000', '2020-11-30 12:59:26', '1603630766kas.jpg', '2020-10-25 12:59:26'),
(11, 1, 'pembayaran deviden', 0, '500000', '2020-11-02 13:54:51', '', '2020-10-26 13:56:06'),
(12, 1, 'pembayaran hutang bank', 0, '10000000', '2020-11-09 04:25:01', '1604895901dana-segar.jpg', '2020-11-09 04:25:01'),
(14, 1, 'pembayaran beban bunga', 0, '1000000', '2020-11-09 04:22:11', '1604895731coba.jpg', '2020-11-09 04:22:11'),
(15, 1, 'bayar hutang bank', 0, '10000000', '2020-11-30 13:54:10', '', '2020-11-10 13:54:54'),
(16, 1, 'coba', 1, '2000000', '2020-11-12 09:55:38', '1605174938coba.jpg', '2020-11-12 09:55:38');

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `tittle` varchar(255) NOT NULL,
  `berita_category_id` int(11) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `berita` longtext NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `publish` enum('1','0') NOT NULL,
  `author_id` int(11) NOT NULL,
  `inkubator_id` int(11) NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id`, `slug`, `tittle`, `berita_category_id`, `foto`, `berita`, `views`, `publish`, `author_id`, `inkubator_id`, `updated_at`, `created_at`) VALUES
(45, 'wisuda-amikom-ke-999', 'Wisuda amikom ke 999', 82, '1617570077wisuda-amikom-ke-999.png', '<p>djasdsasjakdjsaf</p>', 3, '1', 8, 0, '2021-04-04 21:21:28', '2021-04-04 21:01:20'),
(46, 'gop-rep-greg-murphy-slammed-for-invoking-911-while-tagging-ilhan-omar-in-deleted-tweet', 'GOP Rep. Greg Murphy Slammed for Invoking 9/11 While Tagging Ilhan Omar in Deleted Tweet', 82, '1617570302gop-rep-greg-murphy-slammed-for-invoking-911-while-tagging-ilhan-omar-in-deleted-tweet.jpg', '<p>Representative Greg Murphy, a North Carolina Republican, received backlash after he invoked the terrorist attacks of September 11, 2001, in a since-deleted&nbsp;<a href=\"https://www.newsweek.com/topic/twitter\" target=\"_blank\">Twitter</a>&nbsp;response to Democratic Representative&nbsp;<a href=\"https://www.newsweek.com/topic/ilhan-omar\" target=\"_blank\">Ilhan Omar</a>&#39;s condolences over the death of a Capitol Police officer after the Friday attack targeting the U.S. Capitol.</p>\r\n\r\n<p><img alt=\"Ilhan Omar wearing a blue hat: Representative Greg Murphy (R-North Carolina) referenced the 9/11 terrorist attacks in a response to a Twitter post by Representative Ilhan Omar (D-Minnesota), a Muslim member of Congress. In this photo, Omar speaks during a news conference outside the U.S. Capitol on March 11 in Washington, D.C.\" src=\"https://img-s-msn-com.akamaized.net/tenant/amp/entityid/BB1fiEpv.img?h=533&amp;w=799&amp;m=6&amp;q=60&amp;o=f&amp;l=f&amp;x=641&amp;y=438\" />&copy; Drew Angerer/Getty Images&nbsp;Representative Greg Murphy (R-North Carolina) referenced the 9/11 terrorist attacks in a response to a Twitter post by Representative Ilhan Omar (D-Minnesota), a Muslim member of Congress. In this photo, Omar speaks during a news conference outside the U.S. Capitol on March 11 in Washington, D.C.</p>\r\n\r\n<p>Omar, who is Muslim and represents Minnesota, has routinely&nbsp;<a href=\"https://www.newsweek.com/ilhan-omar-slams-gop-after-posters-linking-her-911-hijackers-causes-physical-1349703\" target=\"_blank\">faced Islamophobic and racist attacks</a>&nbsp;since she became one of the first two Muslim women elected to&nbsp;<a href=\"https://www.newsweek.com/topic/congress\" target=\"_blank\">Congress</a>&nbsp;back in 2018. Memes and baseless conspiracy theories have circulated widely within right-wing circles falsely connecting her to Islamist terrorist groups and suggesting that she was somehow associated with the 9/11 terrorist attacks.</p>', 1, '1', 5, 2, '2021-04-04 21:05:34', '2021-04-04 21:05:24');

-- --------------------------------------------------------

--
-- Table structure for table `berita_category`
--

CREATE TABLE `berita_category` (
  `id` int(11) NOT NULL,
  `category` varchar(100) NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `berita_category`
--

INSERT INTO `berita_category` (`id`, `category`, `updated_at`, `created_at`) VALUES
(1, 'Travel', '2020-09-11 07:25:16', '2020-09-11 07:25:16'),
(3, 'Sport', '2020-09-11 07:25:49', '2020-09-11 07:25:49'),
(13, 'Teknologi', '2020-09-18 07:21:09', '2020-09-18 07:21:09'),
(15, 'Tips & Trick', '2020-09-18 07:21:52', '2020-09-18 07:21:52'),
(81, 'Games', '2020-09-24 07:59:34', '2020-09-24 07:59:34'),
(82, 'News', '2020-09-24 07:59:41', '2020-09-24 07:59:41'),
(83, 'Pemrograman', '2020-09-24 07:59:50', '2020-09-24 07:59:50'),
(87, 'Olahraga', '2020-09-25 07:38:05', '2020-09-25 07:38:05'),
(88, 'Cyberlife', '2020-09-25 07:45:59', '2020-09-25 07:45:59');

-- --------------------------------------------------------

--
-- Table structure for table `berita_komentar`
--

CREATE TABLE `berita_komentar` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `komentar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `berita_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `berita_komentar`
--

INSERT INTO `berita_komentar` (`id`, `komentar`, `user_id`, `berita_id`, `created_at`, `updated_at`, `name`) VALUES
(1, 'adsasdads', 4, 1, '2020-09-15 01:41:43', '2020-09-15 01:41:43', 'Supreme'),
(2, 'Billlllllll gate', 4, 15, '2020-09-15 02:58:50', '2020-09-15 02:58:50', 'inkubator'),
(3, 'aklsdjaksdkjaldka\'d', 5, 14, '2020-09-16 20:33:22', '2020-09-16 20:33:22', 'Tenant'),
(4, 'gnhdfh', 4, 10, '2020-09-17 20:20:34', '2020-09-17 20:20:34', 'inkubator'),
(5, 'iwak', 4, 10, '2020-09-17 20:52:36', '2020-09-17 20:52:36', 'inkubator'),
(6, 'beutifull', 4, 16, '2020-09-18 02:21:50', '2020-09-18 02:21:50', 'inkubator'),
(7, 'yey', 5, 11, '2020-09-18 02:33:55', '2020-09-18 02:33:55', 'Tenant'),
(8, 'odading', 2, 17, '2020-09-18 02:40:47', '2020-09-18 02:40:47', 'user'),
(9, 'ps5', 2, 14, '2020-09-20 21:13:47', '2020-09-20 21:13:47', 'user'),
(11, 'mmmmmmmmmmmmmmmmmmmmm', 4, 32, '2020-09-25 07:07:06', '2020-09-25 07:07:06', 'inkubator');

-- --------------------------------------------------------

--
-- Table structure for table `berita_like`
--

CREATE TABLE `berita_like` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `berita_id` int(11) NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `berita_like`
--

INSERT INTO `berita_like` (`id`, `user_id`, `berita_id`, `updated_at`, `created_at`) VALUES
(1, 4, 17, '2020-09-18 09:16:50', '2020-09-18 09:16:50'),
(2, 4, 14, '2020-09-18 09:17:07', '2020-09-18 09:17:07'),
(3, 4, 16, '2020-09-18 09:20:36', '2020-09-18 09:20:36'),
(4, 4, 11, '2020-09-18 09:27:20', '2020-09-18 09:27:20'),
(5, 5, 11, '2020-09-18 09:33:48', '2020-09-18 09:33:48'),
(6, 2, 17, '2020-09-18 09:40:53', '2020-09-18 09:40:53'),
(7, 2, 16, '2020-09-21 09:09:52', '2020-09-21 09:09:52'),
(11, 4, 45, '2021-04-04 21:21:27', '2021-04-04 21:21:27');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `priority_id` int(11) DEFAULT NULL,
  `event` longtext NOT NULL,
  `author_id` int(11) NOT NULL,
  `inkubator_id` int(11) NOT NULL,
  `publish` enum('1','0') NOT NULL,
  `tgl_mulai` date NOT NULL,
  `waktu_mulai` time NOT NULL,
  `tgl_selesai` date NOT NULL,
  `waktu_selesai` time NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `title`, `slug`, `foto`, `priority_id`, `event`, `author_id`, `inkubator_id`, `publish`, `tgl_mulai`, `waktu_mulai`, `tgl_selesai`, `waktu_selesai`, `updated_at`, `created_at`) VALUES
(3, 'Pembekalan Maba', 'pembekalan-maba', 'image/event/pembekalan-maba.jpeg', 2, '<p>&quot;At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.&quot; 1914 translation by H. Rackham</p>', 4, 1, '1', '2020-09-24', '05:00:00', '2020-09-28', '02:00:00', '2020-09-24 07:02:23', '2020-09-10 03:36:37'),
(26, 'Desa Digital', 'desa-digital', 'image/event/desa-digital.jpeg', 3, '<p>Desa Digital Pertama Dijawa Timur</p>', 4, 1, '1', '2020-09-24', '13:45:00', '2020-09-25', '13:45:00', '2020-09-24 06:46:17', '2020-09-24 06:40:54'),
(29, 'Amikom Entrepreneur Days', 'amikom-entrepreneur-days', 'image/event/amikom-entrepreneur-days.png', 1, '<p>Entrepreneur Days Ke 79</p>', 4, 1, '1', '2020-10-01', '09:15:00', '2020-10-03', '16:15:00', '2020-09-25 03:14:05', '2020-09-25 03:14:05'),
(30, 'Pembukaan Wisata Goa Jepang', 'pembukaan-wisata-goa-jepang', 'image/event/pembukaan-wisata-goa-jepang.png', 1, '<p>Karang Taruna Bimanusa X KKN UNY Seloharjo 2020 proudly present :<br />\r\n<br />\r\n✨Pembukaan Wisata Goa Jepang✨<br />\r\n<br />\r\nWill be held on :<br />\r\n📆 Minggu, 20 September 2020<br />\r\n⏰ 14.00 WIB - selesai<br />\r\n📍Wisata Goa Jepang, Surocolo, Pundong, Bantul&nbsp;<a href=\"https://www.instagram.com/surocolo_goajepang/\">@surocolo_goajepang</a><br />\r\n<br />\r\nWith special performance :<br />\r\n💫Losskita<br />\r\n&nbsp;</p>', 4, 1, '1', '2020-09-27', '10:20:00', '2020-09-27', '15:20:00', '2020-09-25 03:17:48', '2020-09-25 03:17:48'),
(31, 'Pesta Virtual dalam rangka perayaan HUT ke-264 Kota Jogja.', 'pesta-virtual-dalam-rangka-perayaan-hut-ke-264-kota-jogja', 'image/event/pesta-virtual-dalam-rangka-perayaan-hut-ke-264-kota-jogja.png', 1, '<p>Kamu Kangen Jogja, Jogja Juga Kangen Kamu<br />\r\n<br />\r\nHai warga Jogja dan siapa saja yang punya kenangan tentang Jogja, mari melepas rindu dengan ikut Pesta Virtual dalam rangka perayaan HUT ke-264 Kota Jogja.<br />\r\n<br />\r\nDalam Pesta Virtual yang diselengarakan Pemkot Jogja ini, kalian bisa nimbrung melalui karya ungkapan kerinduan. Wujud kangen pada Kota Jogja yang selalu ngangenin.<br />\r\n&nbsp;</p>', 4, 1, '1', '2020-09-15', '10:20:00', '2020-10-15', '10:20:00', '2020-09-25 03:20:13', '2020-09-25 03:20:13'),
(35, 'Pak Tuo Sehat Anak Bahagia', 'pak-tuo-sehat-anak-bahagia', 'image/event/pak-tuo-sehat-anak-bahagia.jpeg', 1, '<p>Acara Kesehatan Untujk Pak tUo&nbsp;</p>', 4, 1, '1', '2020-09-25', '10:30:00', '2020-09-25', '12:30:00', '2020-09-30 08:41:48', '2020-09-25 03:28:13'),
(36, 'Lari Pagi', 'lari-pagi', 'image/event/lari-pagi.jpeg', 1, '<p>Acara desa Kapuk randu</p>', 4, 1, '1', '2020-10-01', '10:30:00', '2020-10-01', '15:30:00', '2020-09-28 06:55:14', '2020-09-25 03:29:27'),
(38, 'Last but not least', 'last-but-not-least', 'image/event/last-but-not-least.png', 4, '<p>OPSSSSSS</p>', 4, 1, '0', '2020-11-01', '10:30:00', '2020-11-05', '10:30:00', '2020-10-04 07:32:05', '2020-09-25 03:31:16'),
(41, 'SKIPPPPPPPPPPPPPPPP', 'skipppppppppppppppp', 'image/event/skipppppppppppppppp.png', 1, '<p>SKOPPPPPPPPPPPPPPPP</p>', 4, 1, '0', '2020-09-28', '11:35:00', '2020-09-29', '11:35:00', '2020-10-04 07:31:32', '2020-09-28 04:33:09');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `inkubator`
--

CREATE TABLE `inkubator` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `kontak` varchar(20) NOT NULL,
  `deskripsi` text NOT NULL,
  `foto` varchar(100) NOT NULL,
  `status` enum('1','0') NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `inkubator`
--

INSERT INTO `inkubator` (`id`, `nama`, `alamat`, `kontak`, `deskripsi`, `foto`, `status`, `updated_at`, `created_at`) VALUES
(1, 'LPPM UNY', 'Universitas Negri Yogyakarta', '0212454545', 'LPPM UNY Adalah inkubator terbaik di indonesia', '2.jpg', '1', '2020-08-12 17:28:28', '2020-08-12 17:28:28'),
(2, 'Inkubator Amikom', 'Sebelah ringroad', '00000', 'mantap slurr', 'amikom.jpg', '1', '2020-09-11 10:53:57', '2020-09-11 07:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `laba_rugi`
--

CREATE TABLE `laba_rugi` (
  `id` int(11) NOT NULL,
  `tenant_id` int(11) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `jenis` int(11) NOT NULL DEFAULT 1,
  `jumlah` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `tanggal` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `laba_rugi`
--

INSERT INTO `laba_rugi` (`id`, `tenant_id`, `keterangan`, `jenis`, `jumlah`, `foto`, `tanggal`, `updated_at`) VALUES
(1, 1, 'Penjualan', 1, '2000000', '', '2020-11-25 13:28:30', '2020-10-25 13:28:30'),
(6, 1, 'Pendapatan jasa', 1, '50000000', '', '2020-11-03 16:59:11', '2020-11-03 16:59:11'),
(7, 1, 'Pendapatan bunga', 1, '500000', '', '2020-11-03 17:01:02', '2020-11-03 17:01:02'),
(8, 1, 'Beban gaji', 0, '10000000', '', '2020-11-03 17:01:43', '2020-11-03 17:01:43'),
(9, 1, 'Beban sewa', 0, '2500000', '', '2020-11-03 17:02:29', '2020-11-03 17:02:29'),
(10, 1, 'Beban perlengkapan', 0, '1000000', '', '2020-11-03 17:03:31', '2020-11-03 17:03:31'),
(11, 1, 'Beban iklan', 0, '500000', '', '2020-11-03 17:04:06', '2020-11-03 17:04:06'),
(12, 1, 'Beban penyusutan', 0, '400000', '', '2020-11-03 17:04:55', '2020-11-03 17:04:55'),
(13, 1, 'Beban pantry', 0, '300000', '', '2020-11-03 00:08:04', '0000-00-00 00:00:00'),
(14, 1, 'Beban premi asuransi', 0, '1000000', '', '2020-11-03 00:08:04', '0000-00-00 00:00:00'),
(15, 1, 'Beban listrik dan air', 0, '500000', '', '2020-11-03 00:09:42', '0000-00-00 00:00:00'),
(16, 1, 'Beban administrasi', 0, '300000', '', '2020-11-03 00:09:42', '0000-00-00 00:00:00'),
(17, 1, 'Beban bunga', 0, '200000', '', '2020-11-03 00:09:42', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(11) NOT NULL,
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
(4, '2016_01_15_105324_create_roles_table', 2),
(5, '2016_01_15_114412_create_role_user_table', 2),
(6, '2016_01_26_115212_create_permissions_table', 2),
(7, '2016_01_26_115523_create_permission_role_table', 2),
(8, '2016_02_09_132439_create_permission_user_table', 2),
(9, '2020_04_19_142517_create_jobs_table', 3),
(10, '2020_09_10_145713_modify_table_berita', 4),
(15, '2020_09_11_071141_modify_table_berita_category', 5),
(17, '2020_09_09_225005_create_berita_komentar_table', 6),
(18, '2020_09_15_063509_add_field_table_berita_komentar', 6),
(19, '2020_09_17_071902_modify_table_berita_like', 7);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('admin@admin.com', '$2y$10$erMdqZNC2hqMDCCdJ4gkveQVMyCkOaqA655AjmEUlFwCJyWKKkEJu', '2020-03-21 21:12:36'),
('admin@admin.com', '$2y$10$erMdqZNC2hqMDCCdJ4gkveQVMyCkOaqA655AjmEUlFwCJyWKKkEJu', '2020-03-21 21:12:36');

-- --------------------------------------------------------

--
-- Table structure for table `pengumuman`
--

CREATE TABLE `pengumuman` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `priority_id` int(11) NOT NULL,
  `pengumuman` longtext NOT NULL,
  `author_id` int(11) NOT NULL,
  `inkubator_id` int(11) NOT NULL,
  `publish` int(11) NOT NULL DEFAULT 1,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengumuman`
--

INSERT INTO `pengumuman` (`id`, `title`, `slug`, `foto`, `priority_id`, `pengumuman`, `author_id`, `inkubator_id`, `publish`, `updated_at`, `created_at`) VALUES
(19, 'pengumuman kelulusan tahun 2021', 'pengumuman-kelulusan-tahun-2021', 'foto1.png', 2, '<p>kdjkajhdbjejajhdjhjwhjh</p>', 7, 1, 1, '2020-09-22 07:29:28', '2020-09-22 06:50:47'),
(43, 'LPPM UNY SELENGGARAKAN TES PERANGKAT DESA CATURHARJO', 'lppm-uny-selenggarakan-tes-perangkat-desa-caturharjo', '1601447467lppm-uny-selenggarakan-tes-perangkat-desa-caturharjo.jpeg', 2, '<p>Untuk kesekian kalinya Lembaga Penelitian dan Pengabdian Kepada Masyarakat (LPPM) UNY dipercaya untuk menyelenggarkan tes bagi perangkat desa. Setelah beberapa waktu yang lalu menyelenggarakan tes untuk perangkat Desa Bangunkerto,&nbsp; Kecamatan Turi,&nbsp; Kabupaten Sleman, kali ini untuk Desa Caturharjo,&nbsp; Kecamatan Pandak, Kabupaten Bantul.</p>\r\n\r\n<p>Tes yang berlangsung pada 25 Agustus 2020 kemarin bertujuan untuk memilih Kepala Urusan Keuangan dan Kepala Seksi Kesejahteraan untuk Desa Caturharjo. Peserta seleksi kali ini berjumlah 19 orang yang hampir semuanya adalah warga desa setempat dan rata- rata semua lulusan dari jenjang S1 (Strata 1). Materi tes sendiri meliputi, tes psikologi, tes praktik komputer, tes tertulis, dan tes wawancara.</p>\r\n\r\n<p>&ldquo;Camat Pandak sangat tertarik untuk menjalin kerjasama dengan LPPM UNY dari segala bidang selain bekerjasama dalam seleksi perangkat desa, juga menawarkan kerjasama dalam hal pembinaan Usaha Mikro Kecil dan Menengah (UMKM), kegiatan kepemudaan, dan peningkatan tentang kewirausahaan warga desa setempat, serta produktivitas Badan Usaha Milik Desa (Bumdes).&rsquo;&rsquo; jelas Siswantoyo sebagai Ketua LPPM UNY.</p>\r\n\r\n<p>Ditambahkan Siswantoyo, &ldquo;hasil tes akan langsung diambil dan diumumkan sore hari ini oleh Camat Pandak, Kabupaten Bantul.&rdquo;</p>', 4, 0, 1, '2020-09-30 06:31:07', '2020-09-30 06:31:07'),
(44, 'TENANT LPPM UNY IKUTI INDONESIA START-UP SUMMIT 2019 DI JAKARTA INTERNATIONAL EXPO', 'tenant-lppm-uny-ikuti-indonesia-start-up-summit-2019-di-jakarta-international-expo', '1601447571tenant-lppm-uny-ikuti-indonesia-start-up-summit-2019-di-jakarta-international-expo.jpg', 3, '<p>Berbagai perusahaan&nbsp;<em>start</em><em>-</em><em>up</em>&nbsp;yang didirikan anak muda Indonesia dinilai mulai mampu menghasilkan karya yang tidak hanya bernilai inovatif dan berteknologi tinggi, namun juga sudah mencapai nilai komersial yang baik. Lebih dari enam puluh karya yang diproduksi oleh generasi milenial terbaik Indonesia digelar dalam&nbsp;<em>Indonesia Start</em><em>-U</em><em>p Summit</em>&nbsp;(ISS)&nbsp;&ndash;&nbsp;Kementerian Riset Teknologi dan Pendidikan Tinggi (Kemenristekdikti)&nbsp;di Jakarta International Expo,&nbsp;pada&nbsp;Rabu, 10 April 2019.</p>\r\n\r\n<p>Menteri Riset, Teknologi dan Pendidikan Tinggi Mohammad Nasir menilai proyeksi positif atas masa depan Indonesia yang banyak diberikan oleh lembaga luar negeri ke negara kita bukanlah sekedar isapan jempol. Bonus demografi yang diprediksi Badan Pusat Statitik (BPS) mencapai puncaknya pada sekitar tahun 2030 akan makin mendorong peluang lahirnya&nbsp;<em>start</em><em>-</em><em>up</em>&nbsp;terbaik dalam beberapa tahun ke depan.&nbsp;Dengan kemampuan inovasi teknologi, maka suatu bangsa dapat mengoptimalkan pemanfaatan sumberdaya yang dimiliki secara efektif dan efisien, memberikan nilai tambah pada produk teknologi, serta pada akhirnya memberikan kontribusi yang sangat signifikan terhadap perekonomian.&nbsp;&nbsp;&ldquo;Penguasaan iptek dan inovasi memberikan kekuatan untuk bersaing di kancah perdagangan yang kompetitif. Ini sejalan dengan paradigma baru di era globalisasi yaitu inovasi and&nbsp;<em>technology based economy.</em>&nbsp;Inovasi dan teknologi akan menjadi faktor terpenting dalam peningkatan kualitas hidup suatu bangsa di masa depan,&rdquo;&nbsp;begitu arahan Menristekdikti Mohammad&nbsp;Nasir.</p>\r\n\r\n<p>Sebelumnya, mengawali ISS 2019 puluhan peserta startup dilatih soal strategi pengembangan bisnis dan kisah sukses usaha dalam&nbsp;<em>Business&nbsp;</em><em>Camp Start</em><em>-U</em><em>p</em>&nbsp;2019&nbsp;yang diselenggarakan di Grand Mercure Hotel Kemayoran Jakarta yang berlangsung pada tanggal 9 -14 April 2019. Mayoritas generasi milenial tersebut dimotivasi untuk mampu membawa produknya menuju pasar. Mereka juga dilatih soal legal, branding,&nbsp;<em>design thinking</em>&nbsp;dan model bisnis. Kemenristekdikti menargetkan mereka mampu menyinergikan proses inovasi yang efektif dengan aspek komersialitasnya.&nbsp;Universitas Negeri Yogyakarta (UNY) mengikutkan peserta sebanyak 26 orang yang berasal dari 13 tenant yang didampingi oleh 13 pendamping dari Inkubator Bisnis Lembaga Penelitian dan Pengabdian kepada Masyarakat (LPPM) UNY (Inkubi)).</p>\r\n\r\n<p>Kemenristekdikti&nbsp;&nbsp;berusaha menjaga keseimbangan antara permintaan kalangan industri atas temuan baru dari mereka, dengan kebutuhan pengembangan berbagai alat-alat kehidupan masyarakat sehari-hari di masing-masing daerah asal tenant bersangkutan.&nbsp;Ini salah satu alasan ISS 2019 diselenggarakan , untuk mempertemukan para&nbsp;<em>start-up</em>&nbsp;dan saling bertukar ide, gagasan dan pengalaman dalam mengembangkan&nbsp;<em>start-up</em>, yang dihadiri sekitar 5 ribu peserta baik&nbsp;<em>start-up</em>, calon&nbsp;<em>start-up</em>&nbsp; yang berasal dari Perguruan Tinggi maupun dari mayarakat, UNY memberangkatkan sekitar 150 peserta yang terdiri dari tenant, calon tenant, mahasiswa dan Inkubi, yang dipimpin langsung oleh Rektor UNY, Prof Dr. Sutrisna Wibawa, M.Pd, Ketua LPPM UNY Dr. Suyanta, M.Si, Sekretaris LPPM UNY Prof. Dr. Siswantoyo M.Kes, Pimpinan Inkubi&nbsp;Prof. Dr. Nahiyah Jaidi Faraz, M.Pd&nbsp;dan Dr. Mujiyono, MT selaku Pimpinan Sentra HKI UNY.</p>\r\n\r\n<p>Dalam gelaran ISS 2019 kali ini, tersedia zona konsultasi yang diberikan kepada peserta untuk mendorong bisnis start-up antara lain dari Badan Standardisasi Nasional (BSN), Badan Pengawas Obat dan Makanan (BPOM) , Sertifikat Halal (MUI), dan Hak Kekayaan Intelektual dari Kemenkumham. Diadakan juga pameran dari tenant di arena ISS, Inkubi mengirimkan produk tenant antara lain SPD Speedometer (<a href=\"https://www.spdspeedometer.com/\">https://www.spdspeedometer.com</a>) -&nbsp;berfokus untuk mengubah tampilan speedometer sesuai dengan keinginan pelanggan, sehingga karya yang dihasilkan dapat merepresentasikan pemilik kendaraan tersebut, Astrobike (<a href=\"https://www.astro-bike.com/\">https://www.astro-bike.com</a>)-&nbsp;sepeda listrik berbasis Smartphone&nbsp;yang&nbsp;melayani penjualan sepeda konvensional atau sepeda custom yang dilengkapi dengan Astrobike Kits dan juga melayani jasa service sepeda listrik apapun&nbsp;dan asap cair</p>\r\n\r\n<p>Dialog bisnis dalam mengembangkan startup dengan pembicara kunci antara lain: Ari Sutanti dari British Council Indonesia, dengan tema Creative dan Socioentrepreunership , Maju dan Berkembang Star-Up Indonesia dengan kasus Warung Upnormal, dan Andy F Noya membahas Berani Melangkah dan Berubah. &ldquo;Bisnis tidak mengajar materi semata,&nbsp; karena materi bukan satu satunya sarana untuk mencapai kebahagiaan hidup. Bagi yang mengejar materi, akan cenderung serakah.&nbsp; Oleh karena itu, sekarang banyak usaha yang didasarkan karena aspek sosial,&nbsp; biasa kita sebut socioentrepreneurship. Contoh,&nbsp; Tom Shoes di Argentina, pembeli sepatu selain mempertimbangkan kualitas,&nbsp; mereka juga membeli untuk membantu warga Argentina mampu memakai sepatu. Hidup ini singkat,&nbsp; kita harus bermanfaat bagi orang lain. Tangan kosong memiliki kemampuan yang luar biasa,&nbsp; tidak ada alasan untuk tidak berkarya. Dengan tangan kosong kita menghentikan kendaraan,&nbsp; menahan pintu lift yang akan tertututp,&nbsp; menangkap balon lepas, menunjukkan arah orang yang tersesat. Gunakan waktu yang ada untuk berbuat baik, memberikan makna pada kehidupan&rdquo; pungkas Andy F Noya. (har/ags)</p>', 4, 1, 0, '2020-09-30 06:32:51', '2020-09-30 06:32:51');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `slug`, `description`, `model`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Can View Users', 'view.users', 'Can view users', 'Permission', '2020-03-20 07:35:51', '2020-03-20 07:35:51', NULL),
(2, 'Can Create Users', 'create.users', 'Can create new users', 'Permission', '2020-03-20 07:35:51', '2020-03-20 07:35:51', NULL),
(3, 'Can Edit Users', 'edit.users', 'Can edit users', 'Permission', '2020-03-20 07:35:51', '2020-03-20 07:35:51', NULL),
(4, 'Can Delete Users', 'delete.users', 'Can delete users', 'Permission', '2020-03-20 07:35:51', '2020-03-20 07:35:51', NULL),
(1, 'Can View Users', 'view.users', 'Can view users', 'Permission', '2020-03-20 07:35:51', '2020-03-20 07:35:51', NULL),
(2, 'Can Create Users', 'create.users', 'Can create new users', 'Permission', '2020-03-20 07:35:51', '2020-03-20 07:35:51', NULL),
(3, 'Can Edit Users', 'edit.users', 'Can edit users', 'Permission', '2020-03-20 07:35:51', '2020-03-20 07:35:51', NULL),
(4, 'Can Delete Users', 'delete.users', 'Can delete users', 'Permission', '2020-03-20 07:35:51', '2020-03-20 07:35:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`id`, `permission_id`, `role_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, '2020-03-20 07:35:51', '2020-03-20 07:35:51', NULL),
(2, 2, 1, '2020-03-20 07:35:51', '2020-03-20 07:35:51', NULL),
(3, 3, 1, '2020-03-20 07:35:52', '2020-03-20 07:35:52', NULL),
(4, 4, 1, '2020-03-20 07:35:52', '2020-03-20 07:35:52', NULL),
(7, 1, 5, '2020-03-22 06:09:13', '2020-03-22 06:09:13', NULL),
(8, 1, 4, '2020-03-22 06:10:35', '2020-03-22 06:10:35', NULL),
(9, 3, 4, '2020-03-22 06:10:35', '2020-03-22 06:10:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `priority`
--

CREATE TABLE `priority` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `priority`
--

INSERT INTO `priority` (`id`, `name`) VALUES
(1, 'Proposal'),
(2, 'Pra Start Up'),
(3, 'Start Up'),
(4, 'Scale Up');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `tenant_id` int(11) NOT NULL,
  `inventor_id` int(11) NOT NULL,
  `priority_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `subtitle` text NOT NULL,
  `harga_pokok` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `tag` text NOT NULL,
  `location` text NOT NULL,
  `address` text NOT NULL,
  `contact` varchar(20) NOT NULL,
  `tentang` longtext NOT NULL,
  `latar` longtext NOT NULL,
  `keterbaharuan` longtext NOT NULL,
  `spesifikasi` longtext NOT NULL,
  `manfaat` longtext NOT NULL,
  `keunggulan` longtext NOT NULL,
  `teknologi` longtext NOT NULL,
  `pengembangan` longtext NOT NULL,
  `proposal` varchar(200) NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `tenant_id`, `inventor_id`, `priority_id`, `title`, `subtitle`, `harga_pokok`, `harga_jual`, `kategori_id`, `tag`, `location`, `address`, `contact`, `tentang`, `latar`, `keterbaharuan`, `spesifikasi`, `manfaat`, `keunggulan`, `teknologi`, `pengembangan`, `proposal`, `update_at`, `created_at`) VALUES
(13, 2, 0, 3, 'Ayam Goreng Kampung', 'ayam goreng kampung khas temanggung dengan bumbu laos yang gurih', 8000, 12000, 2, 'Siskubis,ayam,indonesia,unggas,makanan', 'Temanggung', 'Jalan raya kedu km. 6 temanggung', '081238844999', 'Ayam goreng yang berasal dari ayam pilihan. Dengan daging yang lembuat dan rasa yang mantap tentunya', 'Terciptanya produk ini berasal dari salah satu foundernya yang suka makan ayam tetapi belum menemukan rasa yang sesuai dengan lidahnya', 'tidak ada', 'Ayam; Rempah; Kecap; Gula', 'Dapat membuat kenyang', 'Daging yang lembut;Lebih Gurih;Dimasak dengan hati', 'tidak ada', 'tidak ada', '1617580233ayam-goreng-kampung.pdf', '2021-04-04 23:50:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `produk_bisnis`
--

CREATE TABLE `produk_bisnis` (
  `id` int(11) NOT NULL,
  `produk_id` int(11) NOT NULL,
  `kompetitor` longtext NOT NULL,
  `target_pasar` longtext NOT NULL,
  `dampak_sosek` longtext NOT NULL,
  `produksi_harga` longtext NOT NULL,
  `pemasaran` longtext NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk_bisnis`
--

INSERT INTO `produk_bisnis` (`id`, `produk_id`, `kompetitor`, `target_pasar`, `dampak_sosek`, `produksi_harga`, `pemasaran`, `updated_at`, `created_at`) VALUES
(4, 13, 'Warung Makan dengan produk sejenis', 'Semua kalangan', 'Memberantas kelaparan', 'Ayam : 40000;Bumbu : 20000', 'Didistribusikan secara langsung ke konsumen', '2021-04-04 17:08:57', '2021-04-04 16:50:34');

-- --------------------------------------------------------

--
-- Table structure for table `produk_canvas`
--

CREATE TABLE `produk_canvas` (
  `id` int(11) NOT NULL,
  `produk_id` int(11) NOT NULL,
  `canvas` longtext NOT NULL,
  `kategori` varchar(100) NOT NULL,
  `tanggal` date NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk_canvas`
--

INSERT INTO `produk_canvas` (`id`, `produk_id`, `canvas`, `kategori`, `tanggal`, `updated_at`, `created_at`) VALUES
(3, 13, '<figure class=\"table\"><table><tbody><tr><td>Ini model canvasnya</td><td>Ini model canvasnya</td><td>Ini model canvasnya</td></tr><tr><td>Ini model canvasnya</td><td>Ini model canvasnya</td><td>Ini model canvasnya</td></tr></tbody></table></figure>', '2', '2021-04-02', '2021-04-04 17:08:57', '2021-04-04 16:50:34');

-- --------------------------------------------------------

--
-- Table structure for table `produk_ijin`
--

CREATE TABLE `produk_ijin` (
  `id` int(11) NOT NULL,
  `produk_id` int(11) NOT NULL,
  `jenis_ijin` varchar(100) NOT NULL,
  `pemberi` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `tahun` year(4) NOT NULL,
  `tanggal` date NOT NULL,
  `dokumen` varchar(100) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk_ijin`
--

INSERT INTO `produk_ijin` (`id`, `produk_id`, `jenis_ijin`, `pemberi`, `status`, `tahun`, `tanggal`, `dokumen`, `updated_at`, `created_at`) VALUES
(3, 13, 'P-IRT', 'Eko Suprianto', 'Aktif', 2020, '2021-04-04', '1617580234ayam-goreng-kampung.pdf', '2021-04-04 17:08:57', '2021-04-04 16:50:34');

-- --------------------------------------------------------

--
-- Table structure for table `produk_image`
--

CREATE TABLE `produk_image` (
  `id` int(11) NOT NULL,
  `produk_id` int(11) NOT NULL,
  `judul` text NOT NULL,
  `image` text NOT NULL,
  `caption` text NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk_image`
--

INSERT INTO `produk_image` (`id`, `produk_id`, `judul`, `image`, `caption`, `updated_at`, `created_at`) VALUES
(1, 1, 'Folding Bike Astro Kits', 'Folding Bike Astro Kits.JPG', '', '2020-10-12 19:26:28', NULL),
(2, 3, 'Premium Bike Astro Kits', 'Premium Bike Astro Kits.jpg', '', '2020-10-12 19:27:10', NULL),
(3, 2, 'Standard Bike Astro Kits', 'Standard Bike Astro Kits.JPG', '', '2020-10-12 19:27:13', NULL),
(4, 4, 'Das Solen Pembersih Sepatu', 'Das Solen Pembersih Sepatu.JPG', '', '2020-10-12 21:34:07', NULL),
(5, 5, 'Sneaker Parfume', 'Sneaker Parfume.PNG', '', '2020-10-12 21:34:07', NULL),
(6, 6, 'Robot Edukasi Lite Version Anami', 'indobot.jpg', '', '2020-10-12 21:45:23', NULL),
(7, 7, 'Speedometer Custom Daihatsu Sigra dan Toyota Calya', 'Calya.PNG', '', '2020-10-12 21:50:18', NULL),
(8, 8, 'Speedometer Custom Toyota All New Avanza', 'All new avanza.PNG', '', '2020-10-12 21:50:18', NULL),
(9, 9, 'Speedometer Custom Toyota Agya dan Daihatsu Ayla', 'Agya alya.PNG', '', '2020-10-12 21:50:45', NULL),
(13, 13, 'Ayam Goreng Kampung', '1617580234ayam-goreng-kampung0.jpg', 'O', '2021-04-04 23:50:39', NULL),
(14, 13, 'Ayam Goreng Kampung', '1617580236ayam-goreng-kampung1.jpg', 'u', '2021-04-04 23:50:39', NULL),
(15, 13, 'Ayam Goreng Kampung', '1617581329ayam-goreng-kampung0.jpg', 'Alat Transportasi', '2021-04-05 00:08:57', NULL),
(16, 13, 'Ayam Goreng Kampung', '1617581331ayam-goreng-kampung1.jpg', 'Alat Transportasi', '2021-04-05 00:08:57', NULL),
(17, 13, 'Ayam Goreng Kampung', '1617581334ayam-goreng-kampung2.jpg', 'Alat Transportasi', '2021-04-05 00:08:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `produk_ki`
--

CREATE TABLE `produk_ki` (
  `id` int(11) NOT NULL,
  `produk_id` int(11) NOT NULL,
  `jenis_ki` int(11) NOT NULL,
  `status_ki` varchar(100) NOT NULL,
  `permohonan` varchar(100) NOT NULL,
  `sertifikat` varchar(100) NOT NULL,
  `berlaku_mulai` date NOT NULL,
  `berlaku_sampai` date NOT NULL,
  `pemilik_ki` varchar(100) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk_ki`
--

INSERT INTO `produk_ki` (`id`, `produk_id`, `jenis_ki`, `status_ki`, `permohonan`, `sertifikat`, `berlaku_mulai`, `berlaku_sampai`, `pemilik_ki`, `updated_at`, `created_at`) VALUES
(3, 13, 1, 'Aktif', 'Tidak tau diisi apa', '1617580234ayam-goreng-kampung.pdf', '2021-04-05', '2022-12-11', 'Adnan Vazshola', '2021-04-04 17:08:57', '2021-04-04 16:50:34');

-- --------------------------------------------------------

--
-- Table structure for table `produk_riset`
--

CREATE TABLE `produk_riset` (
  `id` int(11) NOT NULL,
  `produk_id` int(11) NOT NULL,
  `nama_riset` varchar(100) NOT NULL,
  `pelaksana` varchar(100) NOT NULL,
  `tahun` varchar(100) NOT NULL,
  `pendanaan` varchar(100) NOT NULL,
  `skema` varchar(100) NOT NULL,
  `nilai` varchar(100) NOT NULL,
  `aktifitas` varchar(100) NOT NULL,
  `tujuan` varchar(100) NOT NULL,
  `hasil` varchar(100) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk_riset`
--

INSERT INTO `produk_riset` (`id`, `produk_id`, `nama_riset`, `pelaksana`, `tahun`, `pendanaan`, `skema`, `nilai`, `aktifitas`, `tujuan`, `hasil`, `updated_at`, `created_at`) VALUES
(3, 13, 'Uji Kelayakan Makanan', 'MUI', '2020', 'Pihak pengelola', 'Riset kelayakan dan kehalalan makanan', 'Sangat Baik', 'Lancar', 'Mengetahui kelayakan makanan. Serta mendapat sertifikat halal', 'Sangat Baik', '2021-04-04 17:08:57', '2021-04-04 16:50:34');

-- --------------------------------------------------------

--
-- Table structure for table `produk_sertifikasi`
--

CREATE TABLE `produk_sertifikasi` (
  `id` int(11) NOT NULL,
  `produk_id` int(11) NOT NULL,
  `jenis_sertif` varchar(100) NOT NULL,
  `pemberi_sertif` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `tahun` year(4) NOT NULL,
  `tanggal` date NOT NULL,
  `dokumen` varchar(100) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk_sertifikasi`
--

INSERT INTO `produk_sertifikasi` (`id`, `produk_id`, `jenis_sertif`, `pemberi_sertif`, `status`, `tahun`, `tanggal`, `dokumen`, `updated_at`, `created_at`) VALUES
(3, 13, 'Halal', 'LPPOM MUI', 'Aktif', 2020, '2021-04-04', '1617580234ayam-goreng-kampung.pdf', '2021-04-04 17:08:57', '2021-04-04 16:50:34');

-- --------------------------------------------------------

--
-- Table structure for table `produk_team`
--

CREATE TABLE `produk_team` (
  `id` int(11) NOT NULL,
  `produk_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `jabatan` varchar(100) NOT NULL,
  `divisi` varchar(100) NOT NULL,
  `tugas` text NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk_team`
--

INSERT INTO `produk_team` (`id`, `produk_id`, `user_id`, `jabatan`, `divisi`, `tugas`, `updated_at`, `created_at`) VALUES
(3, 13, 11, 'Founder', 'Direksi', 'Memimpin jalannya produksi', '2021-04-05 00:08:57', NULL),
(4, 13, 14, 'Marketing', 'Pemasaran', 'Memasarkan produk', '2021-04-05 00:08:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `profil_user`
--

CREATE TABLE `profil_user` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `jenkel` enum('L','P') NOT NULL,
  `kontak` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  `nik` varchar(16) NOT NULL,
  `foto` varchar(200) NOT NULL,
  `deskripsi` text NOT NULL,
  `status` enum('0','1') NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `profil_user`
--

INSERT INTO `profil_user` (`id`, `user_id`, `nama`, `jenkel`, `kontak`, `alamat`, `nik`, `foto`, `deskripsi`, `status`, `updated_at`, `created_at`) VALUES
(1, 3, 'Rafif Adziabi', 'L', '082346666', 'Catur Tunggal, Depok Sleman', '1010101', 'Picture1.jpg', 'Saya Pribadi yang ulet jujur dan disiplin', '1', '2020-08-12 16:20:24', '2020-08-12 16:20:24'),
(2, 8, 'Muhammad Hidayat Rifai\r\n', 'L', '081238844944', 'Temanggung', '3323000000001', 'Picture2.jpg', 'Punten. go put', '1', '2020-09-12 09:21:21', '2020-09-12 06:16:36'),
(3, 7, 'Alif Mundi Adi\r\n', 'L', '082346666', 'Catur Tunggal, Depok Sleman', '1010101', 'Picture3.jpg', 'Saya Pribadi yang ulet jujur dan disiplin', '1', '2020-08-12 16:20:24', '2020-08-12 16:20:24'),
(4, 9, 'Ardy Pratama Putra W', 'L', '082542452', '', '', 'Picture4.jpg', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 10, 'Rachmat Hidayat Yulianto\r\n', 'L', '0852453', '', '', 'Picture5.jpg', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 11, 'Fajar Indra Prasetyo', 'L', '082542452', '', '', 'Picture6.jpg', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 12, 'Rizqi Muhammad Humami\r\n', 'L', '0852453', '', '', 'Picture7.jpg', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 13, 'Azizah Durroh F', 'P', '082542452', '', '', 'Picture8.jpg', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 14, 'Dwi Novita Sari', 'P', '0852453', '', '', 'Picture9.jpg', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 15, 'Ismiyati', 'P', '082542452', '', '', 'Picture10.jpg', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 16, 'Novi Kurnia Setyawati\r\n', 'P', '0852453', '', '', 'Picture11.jpg', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `description`, `level`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', 'admin', 'Admin Role', 5, '2020-03-20 07:35:51', '2020-03-20 07:35:51', NULL),
(2, 'User', 'user', 'User Role', 1, '2020-03-20 07:35:51', '2020-03-20 07:35:51', NULL),
(3, 'Unverified', 'unverified', 'Unverified Role', 0, '2020-03-20 07:35:51', '2020-03-20 07:35:51', NULL),
(4, 'Mentor', 'mentor', 'Pendamping Tenant', 3, '2020-03-22 06:08:30', '2020-03-22 06:10:35', NULL),
(5, 'Inkubator', 'inkubator', 'Inkubator', 4, '2020-03-22 06:09:13', '2020-03-22 06:09:13', NULL),
(6, 'Tenant', 'tenant', 'Tenant', 2, '2020-03-22 06:10:05', '2020-03-22 06:10:05', NULL),
(1, 'Admin', 'admin', 'Admin Role', 5, '2020-03-20 07:35:51', '2020-03-20 07:35:51', NULL),
(2, 'User', 'user', 'User Role', 1, '2020-03-20 07:35:51', '2020-03-20 07:35:51', NULL),
(3, 'Unverified', 'unverified', 'Unverified Role', 0, '2020-03-20 07:35:51', '2020-03-20 07:35:51', NULL),
(4, 'Mentor', 'mentor', 'Pendamping Tenant', 3, '2020-03-22 06:08:30', '2020-03-22 06:10:35', NULL),
(5, 'Inkubator', 'inkubator', 'Inkubator', 4, '2020-03-22 06:09:13', '2020-03-22 06:09:13', NULL),
(6, 'Tenant', 'tenant', 'Tenant', 2, '2020-03-22 06:10:05', '2020-03-22 06:10:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, NULL, NULL, NULL),
(2, 2, 2, '2020-03-22 06:36:00', '2020-03-22 06:36:00', NULL),
(3, 4, 3, '2020-03-22 07:14:17', '2020-03-22 07:14:17', NULL),
(4, 5, 4, '2020-03-22 07:14:51', '2020-03-22 07:14:51', NULL),
(5, 6, 5, '2020-03-22 08:05:58', '2020-03-22 08:05:58', NULL),
(6, 6, 6, '2020-08-04 20:05:40', '2020-08-04 20:05:40', NULL),
(7, 4, 7, '2020-08-04 20:05:40', '2020-08-04 20:05:40', NULL),
(8, 4, 8, '2020-08-04 20:05:40', '2020-08-04 20:05:40', NULL),
(9, 4, 9, '2020-08-04 20:05:40', '2020-08-04 20:05:40', NULL),
(10, 4, 10, '2020-08-04 20:05:40', '2020-08-04 20:05:40', NULL),
(11, 4, 11, '2020-08-04 20:05:40', '2020-08-04 20:05:40', NULL),
(12, 4, 12, '2020-08-04 20:05:40', '2020-08-04 20:05:40', NULL),
(13, 4, 13, '2020-08-04 20:05:40', '2020-08-04 20:05:40', NULL),
(14, 4, 14, '2020-08-04 20:05:40', '2020-08-04 20:05:40', NULL),
(15, 4, 15, '2020-08-04 20:05:40', '2020-08-04 20:05:40', NULL),
(16, 4, 16, '2020-08-04 20:05:40', '2020-08-04 20:05:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `surat`
--

CREATE TABLE `surat` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `dari` varchar(255) NOT NULL,
  `kepada` int(11) NOT NULL,
  `perihal` text NOT NULL,
  `dokumen` mediumtext DEFAULT NULL,
  `jenis_surat` enum('masuk','keluar') DEFAULT NULL,
  `author_id` int(11) NOT NULL,
  `priority_id` int(11) NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `surat`
--

INSERT INTO `surat` (`id`, `title`, `dari`, `kepada`, `perihal`, `dokumen`, `jenis_surat`, `author_id`, `priority_id`, `updated_at`, `created_at`) VALUES
(20, 'Untuk tenant', 'inkubator@inkubator.com', 5, 'Bandar Lampung, 23 November 2019\r\n\r\nKepada Yth.\r\nHRD PT. Traveloka Group\r\ndi Tempat\r\n\r\nDengan hormat,\r\nSaya yang bertanda tangan dibawah ini :\r\n\r\nNama                                : Udin Hermawan\r\nTempat & tanggal Lahir : Medan, 10 Mei 1998\r\nAlamat                              : Tanjung Karang, RT 01 RW 03 Bandar Lampung\r\nNo. HP                              : 085 768 207 239\r\n\r\n\r\n \r\nDengan ini mengajukan surat lamaran pekerjaan kepada Bapak / Ibu Pimpinan untuk diterima menjadi karyawan di perusahaan yang Bapak / Ibu Pimpin. Sebagai bahan pertimbangan bersama ini saya lampirkan :\r\n\r\nFotocopy Ijazah Terakhir\r\nDaftar Riwayat Hidup\r\nFotocopy SKCK\r\nFotocopy KTP\r\nPas Foto 4×6\r\nDemikian untuk menjadikan periksa adanya, besar harapan saya untuk dapat diterima di Perusahaan ini. Atas perhatian dan terkabulnya permohonan ini saya ucapkan Terima kasih.\r\n\r\nHormat saya,\r\n\r\nUdin Hermawan', 'percobaan.pdf', 'keluar', 4, 3, '2020-09-15 07:53:00', '2020-09-15 07:53:00'),
(23, 'Surat Masuk', 'inkubator@inkubator.com', 5, 'Bandar Lampung, 23 November 2019\r\n\r\nKepada Yth.\r\nHRD PT. Traveloka Group\r\ndi Tempat\r\n\r\nDengan hormat,\r\nSaya yang bertanda tangan dibawah ini :\r\n\r\nNama                                : Udin Hermawan\r\nTempat & tanggal Lahir : Medan, 10 Mei 1998\r\nAlamat                              : Tanjung Karang, RT 01 RW 03 Bandar Lampung\r\nNo. HP                              : 085 768 207 239\r\n\r\n\r\n \r\nDengan ini mengajukan surat lamaran pekerjaan kepada Bapak / Ibu Pimpinan untuk diterima menjadi karyawan di perusahaan yang Bapak / Ibu Pimpin. Sebagai bahan pertimbangan bersama ini saya lampirkan :\r\n\r\nFotocopy Ijazah Terakhir\r\nDaftar Riwayat Hidup\r\nFotocopy SKCK\r\nFotocopy KTP\r\nPas Foto 4×6\r\nDemikian untuk menjadikan periksa adanya, besar harapan saya untuk dapat diterima di Perusahaan ini. Atas perhatian dan terkabulnya permohonan ini saya ucapkan Terima kasih.\r\n\r\nHormat saya,\r\n\r\nUdin Hermawan', 'percobaan.pdf', 'keluar', 4, 3, '2020-09-22 08:30:57', '2020-09-17 03:26:59'),
(24, 'Surat Keluar', 'mentor@mentor.com', 5, 'Bandar Lampung, 23 November 2019\r\n\r\nKepada Yth.\r\nHRD PT. Traveloka Group\r\ndi Tempat\r\n\r\nDengan hormat,\r\nSaya yang bertanda tangan dibawah ini :\r\n\r\nNama                                : Udin Hermawan\r\nTempat & tanggal Lahir : Medan, 10 Mei 1998\r\nAlamat                              : Tanjung Karang, RT 01 RW 03 Bandar Lampung\r\nNo. HP                              : 085 768 207 239\r\n\r\n\r\n \r\nDengan ini mengajukan surat lamaran pekerjaan kepada Bapak / Ibu Pimpinan untuk diterima menjadi karyawan di perusahaan yang Bapak / Ibu Pimpin. Sebagai bahan pertimbangan bersama ini saya lampirkan :\r\n\r\nFotocopy Ijazah Terakhir\r\nDaftar Riwayat Hidup\r\nFotocopy SKCK\r\nFotocopy KTP\r\nPas Foto 4×6\r\nDemikian untuk menjadikan periksa adanya, besar harapan saya untuk dapat diterima di Perusahaan ini. Atas perhatian dan terkabulnya permohonan ini saya ucapkan Terima kasih.\r\n\r\nHormat saya,\r\n\r\nUdin Hermawan', 'percobaan.pdf', 'keluar', 4, 4, '2020-09-22 14:07:22', '2020-09-22 14:05:49'),
(25, 'Surat Keluar', 'inkubator@inkubator.com', 3, 'Bandar Lampung, 23 November 2019\r\n\r\nKepada Yth.\r\nHRD PT. Traveloka Group\r\ndi Tempat\r\n\r\nDengan hormat,\r\nSaya yang bertanda tangan dibawah ini :\r\n\r\nNama                                : Udin Hermawan\r\nTempat & tanggal Lahir : Medan, 10 Mei 1998\r\nAlamat                              : Tanjung Karang, RT 01 RW 03 Bandar Lampung\r\nNo. HP                              : 085 768 207 239\r\n\r\n\r\n \r\nDengan ini mengajukan surat lamaran pekerjaan kepada Bapak / Ibu Pimpinan untuk diterima menjadi karyawan di perusahaan yang Bapak / Ibu Pimpin. Sebagai bahan pertimbangan bersama ini saya lampirkan :\r\n\r\nFotocopy Ijazah Terakhir\r\nDaftar Riwayat Hidup\r\nFotocopy SKCK\r\nFotocopy KTP\r\nPas Foto 4×6\r\nDemikian untuk menjadikan periksa adanya, besar harapan saya untuk dapat diterima di Perusahaan ini. Atas perhatian dan terkabulnya permohonan ini saya ucapkan Terima kasih.\r\n\r\nHormat saya,\r\n\r\nUdin Hermawan', 'percobaan.pdf', 'keluar', 4, 1, '2020-09-17 03:33:38', '2020-09-17 03:33:38'),
(26, 'Surat Keluar', 'inkubator@inkubator.com', 3, 'Bandar Lampung, 23 November 2019\r\n\r\nKepada Yth.\r\nHRD PT. Traveloka Group\r\ndi Tempat\r\n\r\nDengan hormat,\r\nSaya yang bertanda tangan dibawah ini :\r\n\r\nNama                                : Udin Hermawan\r\nTempat & tanggal Lahir : Medan, 10 Mei 1998\r\nAlamat                              : Tanjung Karang, RT 01 RW 03 Bandar Lampung\r\nNo. HP                              : 085 768 207 239\r\n\r\n\r\n \r\nDengan ini mengajukan surat lamaran pekerjaan kepada Bapak / Ibu Pimpinan untuk diterima menjadi karyawan di perusahaan yang Bapak / Ibu Pimpin. Sebagai bahan pertimbangan bersama ini saya lampirkan :\r\n\r\nFotocopy Ijazah Terakhir\r\nDaftar Riwayat Hidup\r\nFotocopy SKCK\r\nFotocopy KTP\r\nPas Foto 4×6\r\nDemikian untuk menjadikan periksa adanya, besar harapan saya untuk dapat diterima di Perusahaan ini. Atas perhatian dan terkabulnya permohonan ini saya ucapkan Terima kasih.\r\n\r\nHormat saya,\r\n\r\nUdin Hermawan', 'percobaan.pdf', 'keluar', 4, 4, '2020-09-17 03:34:09', '2020-09-17 03:34:09'),
(54, 'Surat Masuk', 'inkubator@inkubator.com', 3, 'Bandar Lampung, 23 November 2019\r\n\r\nKepada Yth.\r\nHRD PT. Traveloka Group\r\ndi Tempat\r\n\r\nDengan hormat,\r\nSaya yang bertanda tangan dibawah ini :\r\n\r\nNama                                : Udin Hermawan\r\nTempat & tanggal Lahir : Medan, 10 Mei 1998\r\nAlamat                              : Tanjung Karang, RT 01 RW 03 Bandar Lampung\r\nNo. HP                              : 085 768 207 239\r\n\r\n\r\n \r\nDengan ini mengajukan surat lamaran pekerjaan kepada Bapak / Ibu Pimpinan untuk diterima menjadi karyawan di perusahaan yang Bapak / Ibu Pimpin. Sebagai bahan pertimbangan bersama ini saya lampirkan :\r\n\r\nFotocopy Ijazah Terakhir\r\nDaftar Riwayat Hidup\r\nFotocopy SKCK\r\nFotocopy KTP\r\nPas Foto 4×6\r\nDemikian untuk menjadikan periksa adanya, besar harapan saya untuk dapat diterima di Perusahaan ini. Atas perhatian dan terkabulnya permohonan ini saya ucapkan Terima kasih.\r\n\r\nHormat saya,\r\n\r\nUdin Hermawan', 'inkubator_1600758148.percobaan.pdf', 'keluar', 4, 4, '2020-09-22 07:16:40', '2020-09-22 07:02:28'),
(55, 'Surat Masuk', 'inkubator@inkubator.com', 5, 'Bandar Lampung, 23 November 2019\r\n\r\nKepada Yth.\r\nHRD PT. Traveloka Group\r\ndi Tempat\r\n\r\nDengan hormat,\r\nSaya yang bertanda tangan dibawah ini :\r\n\r\nNama                                : Udin Hermawan\r\nTempat & tanggal Lahir : Medan, 10 Mei 1998\r\nAlamat                              : Tanjung Karang, RT 01 RW 03 Bandar Lampung\r\nNo. HP                              : 085 768 207 239\r\n\r\n\r\n \r\nDengan ini mengajukan surat lamaran pekerjaan kepada Bapak / Ibu Pimpinan untuk diterima menjadi karyawan di perusahaan yang Bapak / Ibu Pimpin. Sebagai bahan pertimbangan bersama ini saya lampirkan :\r\n\r\nFotocopy Ijazah Terakhir\r\nDaftar Riwayat Hidup\r\nFotocopy SKCK\r\nFotocopy KTP\r\nPas Foto 4×6\r\nDemikian untuk menjadikan periksa adanya, besar harapan saya untuk dapat diterima di Perusahaan ini. Atas perhatian dan terkabulnya permohonan ini saya ucapkan Terima kasih.\r\n\r\nHormat saya,\r\n\r\nUdin Hermawan', 'inkubator_1600758312.percobaan.pdf', 'keluar', 4, 1, '2020-09-23 13:30:12', '2020-09-22 07:05:12'),
(57, 'Surat Masuk', 'inkubator@inkubator.com', 3, 'Bandar Lampung, 23 November 2019\r\n\r\nKepada Yth.\r\nHRD PT. Traveloka Group\r\ndi Tempat\r\n\r\nDengan hormat,\r\nSaya yang bertanda tangan dibawah ini :\r\n\r\nNama                                : Udin Hermawan\r\nTempat & tanggal Lahir : Medan, 10 Mei 1998\r\nAlamat                              : Tanjung Karang, RT 01 RW 03 Bandar Lampung\r\nNo. HP                              : 085 768 207 239\r\n\r\n\r\n \r\nDengan ini mengajukan surat lamaran pekerjaan kepada Bapak / Ibu Pimpinan untuk diterima menjadi karyawan di perusahaan yang Bapak / Ibu Pimpin. Sebagai bahan pertimbangan bersama ini saya lampirkan :\r\n\r\nFotocopy Ijazah Terakhir\r\nDaftar Riwayat Hidup\r\nFotocopy SKCK\r\nFotocopy KTP\r\nPas Foto 4×6\r\nDemikian untuk menjadikan periksa adanya, besar harapan saya untuk dapat diterima di Perusahaan ini. Atas perhatian dan terkabulnya permohonan ini saya ucapkan Terima kasih.\r\n\r\nHormat saya,\r\n\r\nUdin Hermawan', 'inkubator_1600758621.percobaan.pdf', 'keluar', 4, 3, '2020-09-22 07:17:43', '2020-09-22 07:10:21'),
(59, 'Surat Masuk', 'inkubator@inkubator.com', 4, 'Bandar Lampung, 23 November 2019\r\n\r\nKepada Yth.\r\nHRD PT. Traveloka Group\r\ndi Tempat\r\n\r\nDengan hormat,\r\nSaya yang bertanda tangan dibawah ini :\r\n\r\nNama                                : Udin Hermawan\r\nTempat & tanggal Lahir : Medan, 10 Mei 1998\r\nAlamat                              : Tanjung Karang, RT 01 RW 03 Bandar Lampung\r\nNo. HP                              : 085 768 207 239\r\n\r\n\r\n \r\nDengan ini mengajukan surat lamaran pekerjaan kepada Bapak / Ibu Pimpinan untuk diterima menjadi karyawan di perusahaan yang Bapak / Ibu Pimpin. Sebagai bahan pertimbangan bersama ini saya lampirkan :\r\n\r\nFotocopy Ijazah Terakhir\r\nDaftar Riwayat Hidup\r\nFotocopy SKCK\r\nFotocopy KTP\r\nPas Foto 4×6\r\nDemikian untuk menjadikan periksa adanya, besar harapan saya untuk dapat diterima di Perusahaan ini. Atas perhatian dan terkabulnya permohonan ini saya ucapkan Terima kasih.\r\n\r\nHormat saya,\r\n\r\nUdin Hermawan', 'inkubator_1600760726.percobaan.pdf', 'keluar', 4, 3, '2020-09-22 08:30:26', '2020-09-22 07:45:26'),
(64, 'Surat dari mentor untuk inkubator', 'mentor@mentor.com', 5, '<p>Bandar Lampung, 23 November 2019</p>\r\n\r\n<p>Kepada Yth.<br />\r\nHRD PT. Traveloka Group<br />\r\ndi Tempat</p>\r\n\r\n<p>Dengan hormat,<br />\r\nSaya yang bertanda tangan dibawah ini :</p>\r\n\r\n<p>Nama&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; : Udin Hermawan<br />\r\nTempat &amp; tanggal Lahir : Medan, 10 Mei 1998<br />\r\nAlamat&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; : Tanjung Karang, RT 01 RW 03 Bandar Lampung<br />\r\nNo. HP&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; : 085 768 207 239</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dengan ini mengajukan surat lamaran pekerjaan kepada Bapak / Ibu Pimpinan untuk diterima menjadi karyawan di perusahaan yang Bapak / Ibu Pimpin. Sebagai bahan pertimbangan bersama ini saya lampirkan :</p>\r\n\r\n<ul>\r\n	<li>Fotocopy Ijazah Terakhir</li>\r\n	<li>Daftar Riwayat Hidup</li>\r\n	<li>Fotocopy SKCK</li>\r\n	<li>Fotocopy KTP</li>\r\n	<li>Pas Foto 4&times;6</li>\r\n</ul>\r\n\r\n<p>Demikian untuk menjadikan periksa adanya, besar harapan saya untuk dapat diterima di Perusahaan ini. Atas perhatian dan terkabulnya permohonan ini saya ucapkan Terima kasih.</p>\r\n\r\n<p>Hormat saya,</p>\r\n\r\n<p>Udin Hermawan</p>', 'percobaan.pdf', 'keluar', 3, 2, '2020-09-24 14:18:02', '2020-09-23 14:30:47'),
(65, 'Surat dari mentor untuk tenant edit', 'mentor@mentor.com', 5, '<p>Bandar Lampung, 23 November 2019</p>\r\n\r\n<p>Kepada Yth.<br />\r\nHRD PT. Traveloka Group<br />\r\ndi Tempat</p>\r\n\r\n<p>Dengan hormat,<br />\r\nSaya yang bertanda tangan dibawah ini :</p>\r\n\r\n<p>Nama&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; : Udin Hermawan<br />\r\nTempat &amp; tanggal Lahir : Medan, 10 Mei 1998<br />\r\nAlamat&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; : Tanjung Karang, RT 01 RW 03 Bandar Lampung<br />\r\nNo. HP&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; : 085 768 207 239</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dengan ini mengajukan surat lamaran pekerjaan kepada Bapak / Ibu Pimpinan untuk diterima menjadi karyawan di perusahaan yang Bapak / Ibu Pimpin. Sebagai bahan pertimbangan bersama ini saya lampirkan :</p>\r\n\r\n<ul>\r\n	<li>Fotocopy Ijazah Terakhir</li>\r\n	<li>Daftar Riwayat Hidup</li>\r\n	<li>Fotocopy SKCK</li>\r\n	<li>Fotocopy KTP</li>\r\n	<li>Pas Foto 4&times;6</li>\r\n</ul>\r\n\r\n<p>Demikian untuk menjadikan periksa adanya, besar harapan saya untuk dapat diterima di Perusahaan ini. Atas perhatian dan terkabulnya permohonan ini saya ucapkan Terima kasih.</p>\r\n\r\n<p>Hormat saya,</p>\r\n\r\n<p>Udin Hermawan</p>', 'mentor_1600872130.percobaan.pdf', 'keluar', 3, 1, '2020-09-28 08:35:46', '2020-09-28 08:35:46'),
(66, 'Surat untuk multi insert', 'inkubator@inkubator.com', 5, '<p>test surat insert</p>', 'inkubator_1600919865.percobaan.pdf', 'masuk', 4, 1, '2020-09-24 03:57:45', '2020-09-24 03:57:45'),
(67, 'Surat untuk multi insert', 'inkubator@inkubator.com', 5, '<p>test surat insert</p>', 'inkubator_1600920000.percobaan - Copy.pdf', 'keluar', 4, 1, '2020-09-24 09:22:24', '2020-09-24 04:00:00'),
(68, 'Surat untuk multi insert', 'inkubator@inkubator.com', 5, '<p>test surat insert</p>', 'inkubator_1600921609.percobaan - Copy.pdf', 'masuk', 4, 1, '2020-09-24 04:26:49', '2020-09-24 04:26:49'),
(69, 'Surat untuk mentor', 'inkubator@inkubator.com', 3, '<p>Bandar Lampung, 23 November 2019</p>\r\n\r\n<p>Kepada Yth.<br />\r\nHRD PT. Traveloka Group<br />\r\ndi Tempat</p>\r\n\r\n<p>Dengan hormat,<br />\r\nSaya yang bertanda tangan dibawah ini :</p>\r\n\r\n<p>Nama&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; : Udin Hermawan<br />\r\nTempat &amp; tanggal Lahir : Medan, 10 Mei 1998<br />\r\nAlamat&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; : Tanjung Karang, RT 01 RW 03 Bandar Lampung<br />\r\nNo. HP&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; : 085 768 207 239</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dengan ini mengajukan surat lamaran pekerjaan kepada Bapak / Ibu Pimpinan untuk diterima menjadi karyawan di perusahaan yang Bapak / Ibu Pimpin. Sebagai bahan pertimbangan bersama ini saya lampirkan :</p>\r\n\r\n<ul>\r\n	<li>Fotocopy Ijazah Terakhir</li>\r\n	<li>Daftar Riwayat Hidup</li>\r\n	<li>Fotocopy SKCK</li>\r\n	<li>Fotocopy KTP</li>\r\n	<li>Pas Foto 4&times;6</li>\r\n</ul>\r\n\r\n<p>Demikian untuk menjadikan periksa adanya, besar harapan saya untuk dapat diterima di Perusahaan ini. Atas perhatian dan terkabulnya permohonan ini saya ucapkan Terima kasih.</p>\r\n\r\n<p>Hormat saya,</p>\r\n\r\n<p>Udin Hermawan</p>', 'inkubator_1600939602.percobaan.pdf', 'masuk', 4, 2, '2020-09-24 09:26:42', '2020-09-24 09:26:42'),
(71, 'Surat untuk mentor', 'tenant@tenant.com', 3, '<p>surat masuk dari tenant</p>', 'Tenant_1600941352.percobaan.pdf', 'keluar', 5, 1, '2020-09-25 07:06:09', '2020-09-24 09:55:52'),
(73, 'Surat masuk dari tenant', 'tenant@tenant.com', 3, '<p>percobaan membuat surat masuk tenant</p>', 'Tenant_1601007090.percobaan.pdf', 'masuk', 5, 2, '2020-09-25 04:11:30', '2020-09-25 04:11:30'),
(75, 'Surat Keluar dari tenant', 'tenant@tenant.com', 3, '<p>percobaan surat keluar dari tenant</p>', 'Tenant_1601008321.percobaan.pdf', 'keluar', 5, 1, '2020-09-25 04:32:01', '2020-09-25 04:32:01'),
(76, 'Surat Keluar dari tenant', 'tenant@tenant.com', 3, '<p>percobaan surat keluar dari tenant</p>', 'Tenant_1601008398.percobaan.pdf', 'keluar', 5, 1, '2020-09-25 04:33:18', '2020-09-25 04:33:18'),
(77, 'Surat Keluar dari tenant', 'tenant@tenant.com', 3, '<p>percobaan surat keluar dari tenant</p>', 'Tenant_1601008687.percobaan.pdf', 'keluar', 5, 1, '2020-09-25 04:38:07', '2020-09-25 04:38:07'),
(78, 'Surat Keluar dari tenant', 'tenant@tenant.com', 3, '<p>percobaan surat keluar dari tenant</p>', 'Tenant_1601008715.percobaan.pdf', 'keluar', 5, 1, '2020-09-25 04:38:35', '2020-09-25 04:38:35'),
(79, 'Surat Keluar dari tenant', 'tenant@tenant.com', 1, '<p>percobaan controller</p>', 'Tenant_1601008778.percobaan.pdf', 'keluar', 5, 1, '2020-09-25 04:39:38', '2020-09-25 04:39:38'),
(80, 'Surat Keluar dari tenant', 'tenant@tenant.com', 1, '<p>percobaan controller</p>', 'Tenant_1601008806.percobaan.pdf', 'keluar', 5, 1, '2020-09-25 04:40:07', '2020-09-25 04:40:07'),
(81, 'Surat untuk mentor', 'inkubator@inkubator.com', 3, '<p>percobaan controller</p>', 'inkubator_1601008929.percobaan.pdf', 'keluar', 4, 2, '2020-09-25 04:42:09', '2020-09-25 04:42:09'),
(84, 'Surat untuk mentor', 'inkubator@inkubator.com', 3, '<p>dhdttbdtbddth</p>', 'inkubator_1601014951.percobaan.pdf', 'keluar', 4, 1, '2020-09-25 06:22:31', '2020-09-25 06:22:31'),
(85, 'Surat untuk mentor', 'inkubator@inkubator.com', 3, '<p>nfkjdbrodbgprkgn</p>', 'inkubator_1601015248.percobaan.pdf', 'masuk', 4, 3, '2020-09-25 06:27:28', '2020-09-25 06:27:28'),
(86, 'Surat masuk dari tenant', 'tenant@tenant.com', 4, '<p>Surat masuk dari tenant oke??? yaa444</p>', 'Tenant_1601015315.7905-21972-1-PB.pdf', 'masuk', 5, 2, '2020-09-28 08:32:25', '2020-09-28 08:32:25'),
(87, 'Surat Keluar dari tenant', 'tenant@tenant.com', 4, '<p>Surat keluar dari tenant yaaa</p>', 'Tenant_1601015394.7905-21972-1-PB.pdf', 'keluar', 5, 3, '2020-09-25 06:29:54', '2020-09-25 06:29:54'),
(89, 'Surat Keluar dari tenant', 'tenant@tenant.com', 3, '<p>Untuk mentor</p>', 'Tenant_1601017117.7905-21972-1-PB.pdf', 'masuk', 5, 3, '2020-09-25 06:58:37', '2020-09-25 06:58:37'),
(91, 'Lamaran Kerja untuk mentor', 'mentor@mentor.com', 4, '<p>Surat masuk dari mentor edit</p>', 'mentor_1601018385.1600313649.pdf', 'keluar', 3, 1, '2020-09-29 08:32:54', '2020-09-29 08:32:54'),
(93, 'Lamaran Kerja dari mentor', 'mentor@mentor.com', 4, '<p>Surat ini surat keluar&nbsp; yang dibuat oleh mentor</p>', 'mentor_1601019154.754432661.pdf', 'masuk', 3, 4, '2020-09-25 07:32:34', '2020-09-25 07:32:34'),
(94, 'Lamaran Kerja', 'mentor@mentor.com', 4, '<p>Surat ini surat keluar yang dibuat oleh mentor dan sudah di edit</p>', 'mentor_1601019297.percobaan.pdf', 'masuk', 3, 2, '2020-09-28 08:36:26', '2020-09-28 08:36:26'),
(96, 'Surat masuk dari mentor', 'mentor@mentor.com', 4, '<p>tesy</p>', 'mentor_1601368545.7905-21972-1-PB.pdf', 'keluar', 3, 1, '2020-09-29 08:35:45', '2020-09-29 08:35:45');

-- --------------------------------------------------------

--
-- Table structure for table `surat_disposisi`
--

CREATE TABLE `surat_disposisi` (
  `id` int(11) NOT NULL,
  `surat_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `inkubator_id` int(11) NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `surat_disposisi`
--

INSERT INTO `surat_disposisi` (`id`, `surat_id`, `user_id`, `author_id`, `inkubator_id`, `updated_at`, `created_at`) VALUES
(16, 67, 5, 4, 1, '2020-09-24 09:22:24', '2020-09-24 09:22:24'),
(20, 64, 5, 3, 1, '2020-09-24 14:18:02', '2020-09-24 14:18:02'),
(23, 71, 3, 5, 1, '2020-09-25 07:06:09', '2020-09-25 07:06:09');

-- --------------------------------------------------------

--
-- Table structure for table `tenant`
--

CREATE TABLE `tenant` (
  `id` int(11) NOT NULL,
  `inkubator_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `subtitle` text NOT NULL,
  `description` longtext NOT NULL,
  `priority` int(11) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `status` enum('1','0') NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tenant`
--

INSERT INTO `tenant` (`id`, `inkubator_id`, `title`, `subtitle`, `description`, `priority`, `foto`, `status`, `updated_at`, `created_at`) VALUES
(1, 1, 'PT Astro Teknologi Internasional', 'Perusahaan pembuat komponen elektrik sepeda konvensional', 'Astrobike kits adalah paket komponen eletrik yang dapat dipasang pada sepeda konvensional sehingga menjadi sepeda listrik. Astrobike memiliki 3 mode bersepeda yaitu pertama mode full elektrik dengan menggunakan handle gas atau thumb trottle, mode kedua yaitu mode pedal assist yang berfungsi meringankan gowes dengan bantuan elektrik ketika pedal diputar, dan yang ketiga adalah mode manual yaitu sepeda menjadi konvensional kembali dimana kits tidak mempengaruhi berat dan kenyamanan bersepeda seperti sebelumnya.', 3, 'astrobike.jpg', '1', '2020-08-12 17:45:34', '2020-08-12 17:45:34'),
(2, 1, 'SPD Speedometer', 'Custom, Service, & Restorasi Speedo Mobil', 'CUSTOM, SERVICE, & RESTORASI SPEEDO MOBIL', 3, 'spd.jpg', '1', '2020-08-12 17:45:34', '2020-08-12 17:45:34'),
(3, 1, 'Indobot', 'Perusahaan pembuat Robot Edukasi', 'Robot Edukasi Lite Version Anami Line Follower Arduino Uno R3', 3, 'indobot.jpg', '1', '2020-08-12 17:45:34', '2020-08-12 17:45:34'),
(4, 1, 'Fresher58', 'Perusahaan pembuat Parfume Antiseptik Sepatu | Shoe Cleaner | Leather Care', 'Parfume Antiseptik Sepatu | Shoe Cleaner | Leather Care', 3, 'shoesayhelp.jpg', '1', '2020-08-12 17:45:34', '2020-08-12 17:45:34');

-- --------------------------------------------------------

--
-- Table structure for table `tenant_dokumen`
--

CREATE TABLE `tenant_dokumen` (
  `id` int(11) NOT NULL,
  `tenant_id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `caption` longtext NOT NULL,
  `dokumen` varchar(255) NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tenant_gallery`
--

CREATE TABLE `tenant_gallery` (
  `id` int(11) NOT NULL,
  `tenant_id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `caption` longtext NOT NULL,
  `foto` varchar(255) NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tenant_mentor`
--

CREATE TABLE `tenant_mentor` (
  `id` int(11) NOT NULL,
  `tenant_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` enum('1','0') NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tenant_mentor`
--

INSERT INTO `tenant_mentor` (`id`, `tenant_id`, `user_id`, `status`, `updated_at`, `created_at`) VALUES
(1, 1, 3, '1', '2020-08-12 17:57:33', '2020-08-12 17:57:33'),
(3, 1, 7, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 1, 8, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 1, 9, '1', '2020-08-12 17:57:33', '2020-08-12 17:57:33'),
(6, 1, 10, '1', '2020-08-12 17:57:33', '2020-08-12 17:57:33'),
(7, 1, 11, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 1, 12, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 1, 13, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 1, 14, '1', '2020-08-12 17:57:33', '2020-08-12 17:57:33'),
(11, 1, 15, '1', '2020-08-12 17:57:33', '2020-08-12 17:57:33'),
(12, 1, 16, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 1, 17, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tenant_user`
--

CREATE TABLE `tenant_user` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `tenant_id` int(11) NOT NULL,
  `status` enum('1','0') NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tenant_user`
--

INSERT INTO `tenant_user` (`id`, `user_id`, `tenant_id`, `status`, `updated_at`, `created_at`) VALUES
(1, 6, 1, '1', '2020-08-12 17:57:48', '2020-08-12 17:57:48'),
(2, 5, 2, '1', '2020-08-12 17:57:48', '2020-08-12 17:57:48'),
(3, 10, 2, '1', '2021-04-05 01:34:23', '2021-04-05 01:34:23'),
(4, 8, 2, '1', '2021-04-05 01:34:23', '2021-04-05 01:34:23'),
(5, 11, 2, '1', '2021-04-05 01:35:58', '2021-04-05 01:35:58'),
(6, 12, 2, '1', '2021-04-05 01:35:58', '2021-04-05 01:35:58'),
(7, 13, 2, '1', '2021-04-05 01:35:58', '2021-04-05 01:35:58'),
(8, 14, 2, '1', '2021-04-05 01:35:58', '2021-04-05 01:35:58'),
(9, 15, 2, '1', '2021-04-05 01:35:58', '2021-04-05 01:35:58');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `inkubator_id` int(11) NOT NULL,
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

INSERT INTO `users` (`id`, `name`, `inkubator_id`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 0, 'admin@admin.com', NULL, '$2y$10$MXFftVBVzG1XedI0z4ra1eocB7ZvdbfNRwQqnSK8NlLXkTAPF9A52', NULL, '2020-03-20 07:32:53', '2020-03-20 07:32:53'),
(2, 'user', 1, 'user@user.com', NULL, '$2y$10$4PGRZxoAh6oFtCpqdxayr.C2BVJZQdnDX.pARF9Hsqw8VevK5OxWO', NULL, '2020-03-22 06:36:00', '2020-03-22 06:36:00'),
(3, 'mentor', 1, 'mentor@mentor.com', NULL, '$2y$10$yuMlp0koulndAPmTfS9M6u713m8qGjE6El4DFYiJzb/BnPNclCHG.', NULL, '2020-03-22 07:14:17', '2020-03-22 07:14:17'),
(4, 'inkubator', 1, 'inkubator@inkubator.com', NULL, '$2y$10$GZ7fat1Za0qq9Rx/1hhmUutQjoJhTJb/0JbNJ4eI/btLxZQdopYPa', NULL, '2020-03-22 07:14:51', '2020-03-22 07:14:51'),
(5, 'Tenant', 1, 'tenant@tenant.com', NULL, '$2y$10$YoCm5k6TfiKHmmKe.R8fDeB6wn1bpYluwiwnK78FXG5VEN7UCESdW', NULL, '2020-03-22 08:05:58', '2020-03-22 08:05:58'),
(6, 'user test', 1, 'testreg@gmail.com', NULL, '$2y$10$IY.4DH58sblmjOVxkTW9puMwR.dcUrnbrIrxk3UlO9Szt2voUE15a', NULL, '2020-08-04 20:05:40', '2020-08-04 20:05:40'),
(7, 'mentor2', 1, 'mentor2@mentor.com', NULL, '$2y$10$yuMlp0koulndAPmTfS9M6u713m8qGjE6El4DFYiJzb/BnPNclCHG.', NULL, '2020-03-22 07:14:17', '2020-03-22 07:14:17'),
(8, 'mentor3', 1, 'mentor3@mentor.com', NULL, '$2y$10$yuMlp0koulndAPmTfS9M6u713m8qGjE6El4DFYiJzb/BnPNclCHG.', NULL, '2020-03-22 07:14:17', '2020-03-22 07:14:17'),
(9, 'mentor4', 1, 'mentor4@mentor.com', NULL, '$2y$10$yuMlp0koulndAPmTfS9M6u713m8qGjE6El4DFYiJzb/BnPNclCHG.', NULL, '2020-03-22 07:14:17', '2020-03-22 07:14:17'),
(10, 'mentor5', 1, 'mentor5@mentor.com', NULL, '$2y$10$yuMlp0koulndAPmTfS9M6u713m8qGjE6El4DFYiJzb/BnPNclCHG.', NULL, '2020-03-22 07:14:17', '2020-03-22 07:14:17'),
(11, 'mentor6', 1, 'mentor6@mentor.com', NULL, '$2y$10$yuMlp0koulndAPmTfS9M6u713m8qGjE6El4DFYiJzb/BnPNclCHG.', NULL, '2020-03-22 07:14:17', '2020-03-22 07:14:17'),
(12, 'mentor7', 1, 'mentor7@mentor.com', NULL, '$2y$10$yuMlp0koulndAPmTfS9M6u713m8qGjE6El4DFYiJzb/BnPNclCHG.', NULL, '2020-03-22 07:14:17', '2020-03-22 07:14:17'),
(13, 'mentor8', 1, 'mentor8@mentor.com', NULL, '$2y$10$yuMlp0koulndAPmTfS9M6u713m8qGjE6El4DFYiJzb/BnPNclCHG.', NULL, '2020-03-22 07:14:17', '2020-03-22 07:14:17'),
(14, 'mentor9', 1, 'mentor9@mentor.com', NULL, '$2y$10$yuMlp0koulndAPmTfS9M6u713m8qGjE6El4DFYiJzb/BnPNclCHG.', NULL, '2020-03-22 07:14:17', '2020-03-22 07:14:17'),
(15, 'mentor10', 1, 'mentor10@mentor.com', NULL, '$2y$10$yuMlp0koulndAPmTfS9M6u713m8qGjE6El4DFYiJzb/BnPNclCHG.', NULL, '2020-03-22 07:14:17', '2020-03-22 07:14:17'),
(16, 'mentor11', 1, 'mentor11@mentor.com', NULL, '$2y$10$yuMlp0koulndAPmTfS9M6u713m8qGjE6El4DFYiJzb/BnPNclCHG.', NULL, '2020-03-22 07:14:17', '2020-03-22 07:14:17'),
(17, 'mentor12', 1, 'mentor12@mentor.com', NULL, '$2y$10$yuMlp0koulndAPmTfS9M6u713m8qGjE6El4DFYiJzb/BnPNclCHG.', NULL, '2020-03-22 07:14:17', '2020-03-22 07:14:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `arus_kas`
--
ALTER TABLE `arus_kas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tenant_id` (`tenant_id`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`),
  ADD KEY `berita_category_id` (`berita_category_id`),
  ADD KEY `author_id` (`author_id`),
  ADD KEY `inkubator_id` (`inkubator_id`);

--
-- Indexes for table `berita_category`
--
ALTER TABLE `berita_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `berita_komentar`
--
ALTER TABLE `berita_komentar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `berita_like`
--
ALTER TABLE `berita_like`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `berita_id` (`berita_id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`),
  ADD KEY `priority_id` (`priority_id`),
  ADD KEY `author_id` (`author_id`),
  ADD KEY `inkubator_id` (`inkubator_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inkubator`
--
ALTER TABLE `inkubator`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`(191));

--
-- Indexes for table `laba_rugi`
--
ALTER TABLE `laba_rugi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tenant_id` (`tenant_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`(191));

--
-- Indexes for table `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD PRIMARY KEY (`id`),
  ADD KEY `priority_id` (`priority_id`),
  ADD KEY `author_id` (`author_id`),
  ADD KEY `inkubator_id` (`inkubator_id`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `priority`
--
ALTER TABLE `priority`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produk_bisnis`
--
ALTER TABLE `produk_bisnis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produk_canvas`
--
ALTER TABLE `produk_canvas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produk_ijin`
--
ALTER TABLE `produk_ijin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produk_image`
--
ALTER TABLE `produk_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produk_ki`
--
ALTER TABLE `produk_ki`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produk_riset`
--
ALTER TABLE `produk_riset`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produk_sertifikasi`
--
ALTER TABLE `produk_sertifikasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produk_team`
--
ALTER TABLE `produk_team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profil_user`
--
ALTER TABLE `profil_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `surat`
--
ALTER TABLE `surat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author_id` (`author_id`);

--
-- Indexes for table `surat_disposisi`
--
ALTER TABLE `surat_disposisi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `surat_id` (`surat_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `author_id` (`author_id`),
  ADD KEY `inkubator_id` (`inkubator_id`);

--
-- Indexes for table `tenant`
--
ALTER TABLE `tenant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tenant_dokumen`
--
ALTER TABLE `tenant_dokumen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tenant_mentor`
--
ALTER TABLE `tenant_mentor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tenant_user`
--
ALTER TABLE `tenant_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `arus_kas`
--
ALTER TABLE `arus_kas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `berita_category`
--
ALTER TABLE `berita_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `berita_komentar`
--
ALTER TABLE `berita_komentar`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `berita_like`
--
ALTER TABLE `berita_like`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `laba_rugi`
--
ALTER TABLE `laba_rugi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `pengumuman`
--
ALTER TABLE `pengumuman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `produk_bisnis`
--
ALTER TABLE `produk_bisnis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `produk_canvas`
--
ALTER TABLE `produk_canvas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `produk_ijin`
--
ALTER TABLE `produk_ijin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `produk_image`
--
ALTER TABLE `produk_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `produk_ki`
--
ALTER TABLE `produk_ki`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `produk_riset`
--
ALTER TABLE `produk_riset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `produk_sertifikasi`
--
ALTER TABLE `produk_sertifikasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `produk_team`
--
ALTER TABLE `produk_team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `profil_user`
--
ALTER TABLE `profil_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `surat`
--
ALTER TABLE `surat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `surat_disposisi`
--
ALTER TABLE `surat_disposisi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tenant`
--
ALTER TABLE `tenant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tenant_dokumen`
--
ALTER TABLE `tenant_dokumen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tenant_mentor`
--
ALTER TABLE `tenant_mentor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tenant_user`
--
ALTER TABLE `tenant_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
