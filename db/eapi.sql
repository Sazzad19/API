-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2019 at 06:56 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eapi`
--

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_05_20_172000_create_products_table', 1),
(9, '2019_05_20_172232_create_reviews_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('73c27f8cedf3f8cdff84cefb0391d16c51ab1d3ccfa923b8f88228e3487fc6d70e87ed6761becec0', 6, 2, NULL, '[]', 0, '2019-07-27 03:01:29', '2019-07-27 03:01:29', '2020-07-27 09:01:29'),
('bca8bed788fb5e72310adf5822364bfb4a20a28f0247de5a9b52cb2cea93e6d22c5a7e0e3ec4b9a2', 6, 2, NULL, '[]', 0, '2019-06-14 11:41:50', '2019-06-14 11:41:50', '2020-06-14 17:41:50'),
('dc46bd4178538d6c0854f6ece220ac19e7fb9a2fc86cb29122804f2e83a9e67f8024889a6d337b83', 6, 2, NULL, '[]', 0, '2019-06-09 22:46:46', '2019-06-09 22:46:46', '2020-06-10 04:46:46'),
('dc7273d08c1d604d87101324d9d8867f04cdccfae7bacdf752464f5b32f6b5454566f0d481f00194', 1, 2, NULL, '[]', 0, '2019-06-09 22:21:26', '2019-06-09 22:21:26', '2020-06-10 04:21:26');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'B6BcOPfofXyaaUPRP1j3PjnBOfV69hXDsWlMeNKX', 'http://localhost', 1, 0, 0, '2019-06-09 22:19:33', '2019-06-09 22:19:33'),
(2, NULL, 'Laravel Password Grant Client', 'eIY51ykkRymKB9C6HlLIKCSMUDxpxyBOxdkExMbS', 'http://localhost', 0, 1, 0, '2019-06-09 22:19:33', '2019-06-09 22:19:33');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2019-06-09 22:19:33', '2019-06-09 22:19:33');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('29e36581a47b5bf6f1ce84b723e54f2e145bb9f89b889848844cc3aba2f34b14e959d92c58ce84fe', '73c27f8cedf3f8cdff84cefb0391d16c51ab1d3ccfa923b8f88228e3487fc6d70e87ed6761becec0', 0, '2020-07-27 09:01:29'),
('354026a40a390b28a4994ba0c04cfa2a36684a9a3ca005e7df2c2661d3875d859fbeb63c2af9d60d', 'dc7273d08c1d604d87101324d9d8867f04cdccfae7bacdf752464f5b32f6b5454566f0d481f00194', 0, '2020-06-10 04:21:27'),
('cb6ba1760d5e4cb406164a71c72afe6506f17a2fd74aa2369c8b684716758026b429e25c6451e761', 'dc46bd4178538d6c0854f6ece220ac19e7fb9a2fc86cb29122804f2e83a9e67f8024889a6d337b83', 0, '2020-06-10 04:46:47'),
('d342fde45a0234bb31c91705b7f84c48b6bde1da3bb8a2172e02a1dee454b9d43b0083b02e79a1cb', 'bca8bed788fb5e72310adf5822364bfb4a20a28f0247de5a9b52cb2cea93e6d22c5a7e0e3ec4b9a2', 0, '2020-06-14 17:41:51');

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `use_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `detail`, `price`, `stock`, `discount`, `use_id`, `created_at`, `updated_at`) VALUES
(1, 'iPhone2', 'Not Highly priced Mobile phone', 822, 0, 21, 6, '2019-06-09 21:56:07', '2019-12-02 09:41:25'),
(2, 'quas', 'Vero facilis nobis est velit adipisci autem incidunt nulla. Alias nesciunt dolorem dicta dolores. Eius quia libero non vel. Qui in voluptas eaque voluptas repellat voluptatem eos.', 924, 1, 14, 2, '2019-06-09 21:56:07', '2019-06-09 21:56:07'),
(3, 'quas', 'Veritatis eveniet quaerat rerum et maxime. Modi magni quis aliquid delectus tempore enim. Nesciunt in vel culpa ducimus vel.', 163, 4, 13, 5, '2019-06-09 21:56:07', '2019-06-09 21:56:07'),
(4, 'consectetur', 'Nisi dicta non voluptatem minima adipisci ad expedita. Dicta fugiat facere possimus neque molestias. Voluptas quos repellendus vel. Quidem est aspernatur saepe dignissimos voluptatem facere quod.', 444, 1, 26, 3, '2019-06-09 21:56:07', '2019-06-09 21:56:07'),
(5, 'optio', 'Iste molestiae incidunt reprehenderit mollitia temporibus officia. Dolorem fugit velit debitis ducimus aperiam. Minima culpa adipisci vitae voluptas. Laborum dolor dolorem fuga voluptatem.', 858, 9, 23, 2, '2019-06-09 21:56:07', '2019-06-09 21:56:07'),
(6, 'ea', 'Ducimus natus expedita ut necessitatibus quos quam ut commodi. Delectus quae at et ea et error quas. Nisi ipsam dicta et aut consequatur.', 354, 7, 30, 2, '2019-06-09 21:56:08', '2019-06-09 21:56:08'),
(7, 'et', 'Numquam ad itaque ut et. Aspernatur animi sit accusantium omnis. Ut non itaque odio doloremque.', 471, 2, 10, 4, '2019-06-09 21:56:08', '2019-06-09 21:56:08'),
(8, 'atque', 'Vel sit quod voluptatem quidem nobis eum molestiae. Repudiandae quidem impedit et ipsa minima. Nesciunt consectetur aut est dolorum saepe modi.', 383, 0, 18, 4, '2019-06-09 21:56:08', '2019-06-09 21:56:08'),
(9, 'alias', 'Aspernatur vel vel cupiditate et itaque. Et veniam aut voluptas. Amet facilis illo amet aut reprehenderit. Quod quod quis est doloribus laborum.', 746, 9, 10, 3, '2019-06-09 21:56:08', '2019-06-09 21:56:08'),
(10, 'amet', 'Soluta corrupti nisi accusantium et natus. Incidunt quo necessitatibus et at amet hic. Perspiciatis aliquam ad et ad.', 596, 8, 20, 1, '2019-06-09 21:56:08', '2019-06-09 21:56:08'),
(11, 'sit', 'Velit eveniet et est ex quisquam id sint beatae. Nihil error itaque porro natus eos sapiente. Molestiae quasi magni doloribus.', 217, 5, 19, 3, '2019-06-09 21:56:08', '2019-06-09 21:56:08'),
(12, 'porro', 'Ut delectus omnis repellendus omnis aperiam atque sit. Unde itaque consequatur praesentium eum doloribus. Quidem necessitatibus expedita accusamus amet qui qui nemo.', 193, 3, 19, 5, '2019-06-09 21:56:08', '2019-06-09 21:56:08'),
(13, 'exercitationem', 'Vero voluptas dolor nisi officia. Laudantium ea quis ut quia ipsa. Repellendus et magnam ut tenetur voluptates rerum recusandae. In vitae amet sapiente voluptatibus. Molestias amet quaerat asperiores et nobis nostrum.', 448, 5, 21, 3, '2019-06-09 21:56:08', '2019-06-09 21:56:08'),
(15, 'dolor', 'Numquam optio est nesciunt tempora assumenda reiciendis. Deleniti rem dolores in. Fugit quia numquam culpa. Asperiores voluptas rerum dolores iure sapiente est maiores. Qui blanditiis voluptatem distinctio quo dignissimos rem.', 711, 4, 28, 1, '2019-06-09 21:56:08', '2019-06-09 21:56:08'),
(16, 'fugiat', 'Voluptatem dolor molestias error illo sunt. Et aut in voluptatem veniam. Dicta eos quia alias aut. Blanditiis facilis quia placeat eveniet saepe sunt.', 966, 5, 13, 3, '2019-06-09 21:56:08', '2019-06-09 21:56:08'),
(17, 'reiciendis', 'Atque unde in vitae voluptate provident. Enim ipsam ipsum officia nisi consequatur. Voluptatum harum rerum natus eos dolorum.', 739, 4, 12, 5, '2019-06-09 21:56:08', '2019-06-09 21:56:08'),
(18, 'nihil', 'Qui nihil autem modi est esse quaerat consectetur rerum. Rerum beatae et perferendis voluptas natus repudiandae. Excepturi corporis molestias vitae voluptatem ex. Numquam dolorum at repellendus dolores sunt. Iusto quia error ab velit aspernatur autem.', 564, 0, 29, 2, '2019-06-09 21:56:08', '2019-06-09 21:56:08'),
(19, 'sed', 'Exercitationem vitae quas et similique. Qui enim quas beatae. Illo ab aliquid ducimus qui dignissimos pariatur. Eum dolorem autem deserunt quia rerum libero. Incidunt reiciendis molestiae eum.', 313, 6, 30, 3, '2019-06-09 21:56:08', '2019-06-09 21:56:08'),
(20, 'voluptatem', 'Distinctio accusamus recusandae quo quo corporis eius voluptatem est. Nulla deserunt officia omnis consequatur doloribus. Totam sit ratione voluptate aut. Officia non ut enim. Quo eveniet repellendus repudiandae corrupti exercitationem incidunt enim.', 611, 7, 28, 1, '2019-06-09 21:56:08', '2019-06-09 21:56:08'),
(21, 'debitis', 'Ea ut cumque rem totam rerum. Quis consequatur ad vero officiis. Maxime facilis quibusdam nobis aut deleniti eum. Aperiam consectetur fuga eos eos est et magnam.', 213, 9, 19, 5, '2019-06-09 21:56:08', '2019-06-09 21:56:08'),
(22, 'dolorem', 'Nisi ea dolor est et deleniti quaerat optio. Eveniet excepturi soluta iure sed laborum. Velit delectus asperiores dolorem. Molestias officiis veritatis et nam veniam. Voluptate totam eos aut et.', 928, 3, 15, 5, '2019-06-09 21:56:08', '2019-06-09 21:56:08'),
(23, 'dolorum', 'Deleniti tempore dolorem commodi laborum inventore et. Consequatur libero ut minima magnam magnam velit dicta. Quo sint est omnis. Aut quia non assumenda quis sint veritatis et.', 782, 6, 15, 1, '2019-06-09 21:56:08', '2019-06-09 21:56:08'),
(24, 'illum', 'Qui molestias tempore corporis inventore laudantium laboriosam. Aut soluta voluptatem et. Illum et voluptate accusantium vel facere ratione ex.', 357, 3, 22, 2, '2019-06-09 21:56:08', '2019-06-09 21:56:08'),
(25, 'et', 'Et dicta hic ut omnis molestiae. Maiores nulla magni quisquam odio itaque et voluptatem. Autem quisquam temporibus consequuntur dolore et id perspiciatis. Animi id facilis recusandae corrupti.', 395, 8, 29, 4, '2019-06-09 21:56:08', '2019-06-09 21:56:08'),
(26, 'aut', 'Et omnis vel fugit ea explicabo eveniet. Debitis exercitationem voluptatibus praesentium sunt eos provident ab. Dolores culpa ut quidem doloremque rerum. Est officiis et culpa aut voluptas ipsa.', 268, 7, 23, 1, '2019-06-09 21:56:08', '2019-06-09 21:56:08'),
(27, 'quaerat', 'Vel unde incidunt ratione. Hic aliquid sed provident. Odio ducimus quia quas dolore reprehenderit eum quia.', 351, 5, 24, 5, '2019-06-09 21:56:08', '2019-06-09 21:56:08'),
(28, 'modi', 'Velit eum aliquid omnis quo doloremque voluptas. Eius repellat nostrum est amet et illo. In similique voluptatem nobis. Voluptatem ullam saepe impedit commodi voluptas.', 378, 7, 23, 5, '2019-06-09 21:56:08', '2019-06-09 21:56:08'),
(29, 'est', 'Fugiat nam nemo qui temporibus neque consequuntur. Laborum deleniti dignissimos quia excepturi. Provident consequatur eius qui quam ad ipsam sed eveniet. Libero quia est ducimus tempore non harum possimus.', 856, 9, 24, 2, '2019-06-09 21:56:08', '2019-06-09 21:56:08'),
(30, 'ut', 'Enim voluptatem et modi delectus. Maiores sunt pariatur est veniam labore exercitationem et. Quia provident sed est aperiam voluptas libero.', 694, 8, 30, 3, '2019-06-09 21:56:08', '2019-06-09 21:56:08'),
(31, 'Pc', 'HP', 15000, 3, 30, 6, NULL, NULL),
(32, 'pc', 'HP', 15000, 3, 30, 6, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `customer` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `star` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `product_id`, `customer`, `review`, `star`, `created_at`, `updated_at`) VALUES
(1, 19, 'Sazzad', 'khub kharap jinis', 0, '2019-06-09 21:56:08', '2019-12-02 11:51:04'),
(2, 5, 'Sazzad', 'khub valo jinis', 0, '2019-06-09 21:56:09', '2019-12-02 11:55:06'),
(3, 30, 'Andres Goldner', 'Error dolores tempore atque veniam voluptatem. Quos voluptatum accusamus sunt odit sint. Sed voluptas nihil et consequatur iste ut. Modi ad et dolor aspernatur.', 3, '2019-06-09 21:56:09', '2019-06-09 21:56:09'),
(4, 16, 'Guiseppe Hartmann V', 'Non consequatur qui voluptatum voluptatem et hic accusamus ea. Veritatis officia repudiandae libero pariatur nemo laborum. Cumque id aspernatur dolorem impedit voluptatum.', 2, '2019-06-09 21:56:09', '2019-06-09 21:56:09'),
(5, 19, 'Dr. Orville Kunze', 'Modi beatae autem mollitia doloremque. Quia non occaecati tempore rem optio recusandae ullam non. Est fugiat delectus labore tempora et.', 3, '2019-06-09 21:56:09', '2019-06-09 21:56:09'),
(6, 29, 'Ashton Collier', 'Et sapiente harum doloribus eveniet amet quis error. Necessitatibus et rerum et temporibus quos. Nihil laudantium fugit possimus eum voluptatem.', 3, '2019-06-09 21:56:09', '2019-06-09 21:56:09'),
(7, 18, 'Prof. Ashleigh Daniel', 'Iusto inventore nobis et dolores eligendi distinctio hic. Rerum provident autem eum non explicabo doloribus eos. Hic inventore et expedita ut eum est. Quam nesciunt veritatis illum quaerat quia.', 3, '2019-06-09 21:56:09', '2019-06-09 21:56:09'),
(8, 13, 'Kathryne Wisozk', 'Perferendis quia necessitatibus magni sed. Magni consequatur perspiciatis repellat qui explicabo odit minima. Atque quia dolor labore rerum aspernatur enim. Hic quis architecto et.', 0, '2019-06-09 21:56:09', '2019-06-09 21:56:09'),
(9, 16, 'Leann Weber', 'Nesciunt temporibus unde aut provident. Vel vero voluptas quam.', 0, '2019-06-09 21:56:09', '2019-06-09 21:56:09'),
(10, 18, 'Anastacio Ruecker', 'Illum pariatur accusantium minima et. Voluptatem alias totam velit eum non libero. Labore qui facilis sit quaerat assumenda. Amet quae tenetur vel est laudantium et.', 5, '2019-06-09 21:56:09', '2019-06-09 21:56:09'),
(11, 15, 'Alivia Ledner Jr.', 'Omnis provident qui aliquam voluptatibus voluptas. Et eligendi eos quia facere rerum. Neque dolores nostrum beatae dolorum aut ratione.', 0, '2019-06-09 21:56:09', '2019-06-09 21:56:09'),
(12, 7, 'Prof. Claud Emard II', 'Non dolores eum et rem perspiciatis aut quas. Numquam pariatur ipsam inventore ducimus. Placeat sunt quis aspernatur modi totam sint consequatur. Dicta consectetur odio et dolor. Culpa qui ducimus vitae corporis in.', 4, '2019-06-09 21:56:09', '2019-06-09 21:56:09'),
(13, 7, 'Juliet Luettgen', 'Eveniet rerum modi et et provident quia repudiandae est. Architecto perspiciatis iure et ea hic. Id natus numquam tenetur voluptas omnis. Explicabo delectus provident nostrum quisquam consequatur.', 1, '2019-06-09 21:56:09', '2019-06-09 21:56:09'),
(14, 1, 'Kamren Schamberger Jr.', 'Iusto rerum qui non neque autem nihil consequatur deleniti. Dolores id reprehenderit qui fugit quia. Delectus aut ad est amet aut et.', 2, '2019-06-09 21:56:09', '2019-06-09 21:56:09'),
(15, 12, 'Dorcas Dach', 'Dolores est aperiam vel vel qui id porro est. Esse inventore sit quia porro. Voluptatem ea ea quis non provident possimus aut. Provident voluptates debitis magni provident velit ut optio. Ad rerum ea explicabo velit voluptatem et et.', 0, '2019-06-09 21:56:09', '2019-06-09 21:56:09'),
(16, 16, 'Seamus Hettinger', 'Odit sed itaque officia dolorum. Eligendi non nesciunt molestias nostrum est aperiam mollitia.', 2, '2019-06-09 21:56:09', '2019-06-09 21:56:09'),
(17, 4, 'Valentine Wunsch', 'Iusto et qui neque est aut sequi. Odio mollitia sunt qui. Numquam laboriosam ipsa id doloremque fuga.', 3, '2019-06-09 21:56:09', '2019-06-09 21:56:09'),
(18, 10, 'Rigoberto Brekke', 'Vel et veritatis voluptas accusamus incidunt dolorem. Dolor quisquam libero sit consequatur debitis atque adipisci. Et qui nihil cum error aliquam. Itaque omnis nam quidem et quae.', 2, '2019-06-09 21:56:09', '2019-06-09 21:56:09'),
(19, 3, 'Herminia Franecki', 'Necessitatibus accusantium officiis asperiores expedita deserunt velit. Eum et natus laudantium aut. Ut perferendis laudantium qui laboriosam alias consequuntur. Pariatur non tempora labore sed velit rerum delectus.', 4, '2019-06-09 21:56:09', '2019-06-09 21:56:09'),
(20, 26, 'Diamond Schinner', 'Et velit in atque dolores. Qui consequatur iure nisi in et illum nobis. Saepe consectetur quia et nihil est minima. Nemo quod sit soluta quo animi.', 0, '2019-06-09 21:56:09', '2019-06-09 21:56:09'),
(21, 26, 'Dr. Pansy Langosh Sr.', 'Et laboriosam voluptates consequuntur fugit quae odio. Hic rerum nulla necessitatibus eos voluptatem laudantium. Perferendis suscipit incidunt quo accusantium veritatis illo fuga. Ut neque sunt quisquam quos. Et velit autem odit molestias in modi.', 2, '2019-06-09 21:56:09', '2019-06-09 21:56:09'),
(22, 11, 'Nigel Hand', 'Iure nemo reprehenderit enim commodi ullam et illo. Quisquam eveniet suscipit reprehenderit deserunt voluptatibus officia architecto praesentium. Iusto assumenda perferendis voluptas fugit. Rerum quod voluptatem quisquam sequi.', 3, '2019-06-09 21:56:09', '2019-06-09 21:56:09'),
(23, 9, 'Dr. Bennett Reinger DDS', 'Iusto voluptates dicta ad rerum debitis voluptas eum ad. Odio quas quasi aut. Aut qui et quam qui. Nemo rem minima libero aliquid aperiam accusantium. Et ut blanditiis aspernatur.', 1, '2019-06-09 21:56:09', '2019-06-09 21:56:09'),
(24, 27, 'Mr. Shane Mante', 'Et et qui nisi deserunt. Rem qui qui voluptatibus eum repellat magni. Et deleniti iste et qui tempora est vel accusantium. Et at tenetur est autem nesciunt architecto omnis.', 1, '2019-06-09 21:56:09', '2019-06-09 21:56:09'),
(25, 30, 'Stella Buckridge', 'Eligendi quia ipsa temporibus aspernatur explicabo dolorem deleniti. Soluta assumenda ea saepe cum aut magnam atque ex. Exercitationem sunt consequatur nesciunt fugiat esse. Consectetur et est quo.', 2, '2019-06-09 21:56:09', '2019-06-09 21:56:09'),
(26, 9, 'Miss Lucienne Shanahan PhD', 'Vel quis optio accusamus consequatur. Veniam et sint mollitia maxime reiciendis.', 3, '2019-06-09 21:56:09', '2019-06-09 21:56:09'),
(27, 1, 'Hermina Blanda', 'Qui dignissimos ut corrupti distinctio voluptatem magnam. Et maxime aut perspiciatis quo aut. Laudantium quo enim in fugiat.', 5, '2019-06-09 21:56:09', '2019-06-09 21:56:09'),
(28, 13, 'Tyreek Haag', 'Nihil voluptatem odio necessitatibus numquam aut in. Molestias nobis fugit ea odio sit. Corporis et pariatur voluptas et rerum quisquam. In autem consequatur nam.', 0, '2019-06-09 21:56:09', '2019-06-09 21:56:09'),
(29, 17, 'Dino Nicolas', 'Mollitia aperiam autem velit necessitatibus voluptas tempore quos. Qui ullam quia ut laudantium animi. Voluptatem pariatur magni possimus sint odio ut rerum. Vero dolore hic minima consequatur. Et natus voluptas dolores optio unde sit.', 5, '2019-06-09 21:56:09', '2019-06-09 21:56:09'),
(30, 17, 'Alexander Simonis', 'Ab officiis soluta nulla vero iusto sint eos. Ut veniam odit consequatur quia sit id. Et odio iste harum. Doloremque fugiat laboriosam non consequuntur dolor doloremque.', 5, '2019-06-09 21:56:09', '2019-06-09 21:56:09'),
(31, 23, 'Emmet Nolan', 'Quod ipsam nisi saepe eveniet. Dicta rerum officiis unde numquam ipsam quo asperiores.', 2, '2019-06-09 21:56:09', '2019-06-09 21:56:09'),
(32, 29, 'Hailee Little', 'Enim doloribus quos et molestias. Tempora vero rerum quam laboriosam aut dolorum.', 1, '2019-06-09 21:56:09', '2019-06-09 21:56:09'),
(33, 17, 'Ruthe Bahringer', 'Maiores blanditiis corporis est et. Perferendis aut voluptatem voluptates quis fugiat. Alias quasi deserunt omnis.', 4, '2019-06-09 21:56:09', '2019-06-09 21:56:09'),
(34, 13, 'Dr. Samantha VonRueden Sr.', 'Sunt in est maxime iure et hic sequi voluptate. Deserunt perferendis ab quas sunt.', 4, '2019-06-09 21:56:09', '2019-06-09 21:56:09'),
(35, 10, 'Kasandra Huel MD', 'Occaecati sequi maxime aut et at non. Harum commodi dolor aut libero possimus in. In suscipit fugit voluptas voluptas. Sed sequi autem consequatur sed repellendus et.', 5, '2019-06-09 21:56:09', '2019-06-09 21:56:09'),
(36, 17, 'Tristian Buckridge', 'Qui a corrupti sint fuga. Quo perspiciatis est asperiores eum magnam. Quis fugiat sit quae iste.', 4, '2019-06-09 21:56:09', '2019-06-09 21:56:09'),
(37, 30, 'Herman Connelly', 'Nesciunt iusto voluptas et aperiam. Optio eos quasi quaerat quae.', 1, '2019-06-09 21:56:09', '2019-06-09 21:56:09'),
(38, 3, 'Cathy Lueilwitz', 'Perspiciatis porro commodi quia qui repellat. Assumenda impedit tempore blanditiis voluptate illum.', 4, '2019-06-09 21:56:09', '2019-06-09 21:56:09'),
(39, 21, 'Cathy Maggio', 'Sed ut distinctio recusandae labore. Repudiandae excepturi natus nisi facere odio. Ut soluta libero quas sunt non eum.', 4, '2019-06-09 21:56:09', '2019-06-09 21:56:09'),
(40, 30, 'Sheldon Gleichner I', 'Consequatur voluptas laudantium labore molestiae assumenda perferendis. Minus tempore tempora veritatis. Molestias expedita autem unde officiis mollitia. Accusamus eos quaerat et et enim saepe. Eos aliquid autem quia libero est.', 0, '2019-06-09 21:56:10', '2019-06-09 21:56:10'),
(41, 30, 'Dr. Destinee McLaughlin', 'Quaerat dolores et qui deserunt suscipit omnis. Expedita nulla labore ipsam est error vel. Fuga eveniet soluta et quo voluptatem. Voluptas non itaque quaerat inventore.', 1, '2019-06-09 21:56:10', '2019-06-09 21:56:10'),
(42, 2, 'Rashad White', 'Error voluptas dolor nemo recusandae aut. Id sit aut omnis unde rerum hic expedita. Ea voluptates sint nam quos unde quae reprehenderit.', 2, '2019-06-09 21:56:10', '2019-06-09 21:56:10'),
(43, 11, 'Twila Ratke III', 'Dolore cum eos ea. Optio odit accusantium eius iusto tempore doloribus laborum. Vel mollitia et qui totam sint velit.', 4, '2019-06-09 21:56:10', '2019-06-09 21:56:10'),
(44, 15, 'Hans Conn', 'Ad animi earum sapiente. Ea deleniti necessitatibus corporis reprehenderit quibusdam ea. Voluptatem hic et veritatis molestiae. Esse et minima temporibus.', 5, '2019-06-09 21:56:10', '2019-06-09 21:56:10'),
(45, 9, 'Kiel Moen', 'Corporis error rem quo molestias quisquam suscipit. Atque est impedit est quidem animi eveniet. Saepe esse eveniet sit voluptatibus. Omnis facere inventore omnis aut. Omnis dolor doloremque inventore.', 2, '2019-06-09 21:56:10', '2019-06-09 21:56:10'),
(46, 18, 'Prof. Stephan Welch', 'Veniam aut illo aut a nemo tempore quam aliquam. Ut pariatur et ut molestiae culpa inventore accusantium. At non porro debitis sit et reprehenderit quisquam explicabo.', 0, '2019-06-09 21:56:10', '2019-06-09 21:56:10'),
(47, 28, 'Troy Schuster', 'Dolorem tenetur et tenetur quaerat sunt fugit. Maiores magnam explicabo tempora vel quis assumenda aut. Nulla dolorem ducimus similique culpa quia dolores ut.', 0, '2019-06-09 21:56:10', '2019-06-09 21:56:10'),
(48, 11, 'Chance Price', 'Voluptatem numquam soluta at omnis. Est illo non ut et eius voluptas consequuntur maiores. Culpa blanditiis totam debitis sunt voluptate soluta. Labore reiciendis rerum aut.', 0, '2019-06-09 21:56:10', '2019-06-09 21:56:10'),
(49, 5, 'Dr. Keenan Howell PhD', 'Ut blanditiis aut velit autem. Voluptatem velit et placeat natus facere recusandae quae.', 5, '2019-06-09 21:56:10', '2019-06-09 21:56:10'),
(50, 1, 'Frederique Schuster', 'Sint enim ipsum velit voluptatem dolor. Soluta voluptatibus esse nihil vel. Qui voluptates laboriosam ad qui labore mollitia molestiae.', 4, '2019-06-09 21:56:10', '2019-06-09 21:56:10'),
(51, 1, 'Hattie Homenick', 'Velit cum ut iusto modi. Voluptate eos et similique ad eveniet. Beatae maxime labore distinctio reprehenderit eveniet repudiandae. Ipsa consequatur suscipit veritatis tempora ab sint veritatis delectus.', 2, '2019-06-09 21:56:10', '2019-06-09 21:56:10'),
(52, 9, 'Tyrel Bashirian', 'Provident quis officia impedit blanditiis aspernatur rerum rerum. Doloribus minus sunt sapiente minus odio. Minima assumenda voluptas quasi qui sit. Rerum delectus enim et.', 4, '2019-06-09 21:56:10', '2019-06-09 21:56:10'),
(53, 21, 'Bryana Turner', 'Unde magni odit numquam pariatur itaque officiis. Suscipit distinctio amet eligendi. Et nostrum dolorem eos explicabo illo.', 5, '2019-06-09 21:56:10', '2019-06-09 21:56:10'),
(54, 23, 'Horacio Casper', 'Exercitationem iusto ut tempora vero. Exercitationem natus dolorum totam quisquam voluptas dolorem. Sed fuga dolorum voluptas saepe ullam est. Beatae et adipisci magnam ab ut delectus vitae.', 5, '2019-06-09 21:56:10', '2019-06-09 21:56:10'),
(55, 25, 'Rolando Harber', 'Vel ea ut eligendi est culpa. Asperiores aut ut ducimus. Maiores qui unde non distinctio.', 2, '2019-06-09 21:56:10', '2019-06-09 21:56:10'),
(56, 17, 'Mireille Konopelski III', 'Enim commodi modi inventore saepe. Deserunt reiciendis eos minus quasi distinctio. Fuga aut accusantium doloremque distinctio ut deserunt distinctio.', 4, '2019-06-09 21:56:10', '2019-06-09 21:56:10'),
(57, 1, 'Prof. Brian O\'Connell', 'Cupiditate minima placeat id. Autem magnam nostrum aut velit dolor. Amet et ad cumque laudantium accusantium.', 4, '2019-06-09 21:56:10', '2019-06-09 21:56:10'),
(58, 12, 'Narciso Kozey DDS', 'Sit cum dolores aut itaque eius quo sint. Repellat quam nihil qui nisi. Eum aspernatur non fuga.', 2, '2019-06-09 21:56:10', '2019-06-09 21:56:10'),
(59, 8, 'Cole Larson DVM', 'Sunt facilis in quae dolorum rem voluptate voluptatem totam. Laborum doloremque sed nostrum similique. Aut eligendi a vero velit rerum labore. Natus sit qui rerum voluptas et numquam.', 0, '2019-06-09 21:56:10', '2019-06-09 21:56:10'),
(60, 4, 'Prof. Daron Koepp', 'Et harum esse unde ducimus doloribus quia. Quia fugiat sit blanditiis dolor. Quaerat blanditiis est quia minus eos possimus numquam.', 5, '2019-06-09 21:56:10', '2019-06-09 21:56:10'),
(61, 8, 'Janae Kunze', 'Error tenetur repudiandae et ut neque consequatur. Tempora velit sed assumenda voluptate omnis. Beatae labore possimus et unde ducimus consequatur. Ipsa et dolor nesciunt repellendus iure voluptas. In ipsam qui quo qui molestiae.', 5, '2019-06-09 21:56:10', '2019-06-09 21:56:10'),
(63, 8, 'Jamie Lesch III', 'Saepe sit distinctio harum voluptas eum excepturi. Odio consectetur harum vel tenetur. Eius quae sit quo recusandae natus consequuntur asperiores.', 3, '2019-06-09 21:56:10', '2019-06-09 21:56:10'),
(64, 21, 'Ola McCullough', 'Quisquam laboriosam blanditiis rerum. Dolore incidunt molestias aliquam ad est in.', 3, '2019-06-09 21:56:10', '2019-06-09 21:56:10'),
(65, 19, 'Bridget Veum MD', 'Molestiae magni tempora sapiente ipsa qui modi dolorem eveniet. Provident explicabo non sit in ea. Quam necessitatibus facilis ipsum est occaecati aut.', 1, '2019-06-09 21:56:10', '2019-06-09 21:56:10'),
(66, 11, 'Prof. Jermey Ernser PhD', 'Quis est animi consequatur voluptas voluptas odio. Neque voluptatem vitae qui fugiat iste sed culpa. Qui consequatur alias tenetur doloremque inventore commodi. Et ipsa rerum repudiandae et deleniti fuga sapiente.', 4, '2019-06-09 21:56:10', '2019-06-09 21:56:10'),
(67, 30, 'Garland Hettinger', 'Nostrum ullam officiis harum sed perspiciatis autem soluta. Odio esse ab ea aliquam consequuntur quae. Esse odit eius beatae labore in. Doloremque illum modi optio eius.', 4, '2019-06-09 21:56:10', '2019-06-09 21:56:10'),
(68, 20, 'Vanessa Borer', 'Placeat omnis architecto deleniti ut nihil voluptas. Facilis et molestiae autem assumenda qui. Velit aut et quae tempore aut dicta quia.', 4, '2019-06-09 21:56:10', '2019-06-09 21:56:10'),
(69, 8, 'Isai Harvey DVM', 'Quia cupiditate voluptas est consequatur optio nihil. Rem magnam corporis fugiat amet. Alias ducimus et eligendi qui et. Provident officiis ab natus fugit dolore quidem eum.', 2, '2019-06-09 21:56:10', '2019-06-09 21:56:10'),
(70, 28, 'Jerald Gottlieb', 'Omnis assumenda et id et veniam. Ut aspernatur consequatur voluptas perspiciatis.', 0, '2019-06-09 21:56:10', '2019-06-09 21:56:10'),
(71, 21, 'Marcelino Tillman', 'Id ab autem saepe omnis molestiae nihil. Qui est sint quia dolore vel numquam natus. Voluptatem non nam ex commodi aut inventore ut. Nobis natus praesentium harum adipisci assumenda.', 2, '2019-06-09 21:56:10', '2019-06-09 21:56:10'),
(72, 3, 'Demarcus Skiles', 'Aut vel dolor et consequatur eum autem aliquam corrupti. Pariatur aut qui sit qui repellendus quam ratione.', 4, '2019-06-09 21:56:10', '2019-06-09 21:56:10'),
(73, 4, 'Roscoe Moore', 'Eos beatae quisquam sint velit. Explicabo voluptas maxime vero quis soluta. Aut ad dolorem quia eum minima quidem.', 4, '2019-06-09 21:56:10', '2019-06-09 21:56:10'),
(74, 28, 'Dr. Karen Schulist', 'Numquam et dolorem qui. Eum voluptate sit occaecati velit.', 4, '2019-06-09 21:56:10', '2019-06-09 21:56:10'),
(75, 22, 'Neha Hayes DDS', 'Aliquid quibusdam atque nobis architecto incidunt quidem. Provident libero nihil architecto incidunt laudantium alias. Non eos quos ut odio voluptatibus sint.', 2, '2019-06-09 21:56:10', '2019-06-09 21:56:10'),
(76, 18, 'Prof. Watson Kunde III', 'Recusandae inventore et aut impedit. Beatae et eum aperiam ea aut qui quia. Voluptatem qui tenetur facere dolorem. Perspiciatis sed sint consequuntur eum. Nihil distinctio tempore et rerum eaque.', 2, '2019-06-09 21:56:10', '2019-06-09 21:56:10'),
(77, 8, 'Makenna Prosacco MD', 'Saepe illum molestiae ipsa ipsa quae. Ratione optio aperiam exercitationem voluptatem est ex. Et accusamus est esse dolores. Praesentium ipsum voluptas quod alias eos accusamus nisi numquam.', 5, '2019-06-09 21:56:10', '2019-06-09 21:56:10'),
(78, 28, 'Dr. Lottie Cruickshank', 'A et ut eos. Dolore vel velit blanditiis ipsam qui. Repellat qui optio corrupti repudiandae.', 1, '2019-06-09 21:56:10', '2019-06-09 21:56:10'),
(79, 30, 'Clay Howell', 'Tempore aut sint unde aut hic. Dolores rem omnis ut quisquam. Ex odit natus culpa. Molestias doloremque ab placeat corrupti consequatur.', 2, '2019-06-09 21:56:10', '2019-06-09 21:56:10'),
(81, 23, 'Harrison Johnston', 'Perferendis quos aperiam accusantium quas et. Sequi debitis laborum vero omnis nam qui ipsam. Quisquam impedit ut voluptatem tenetur veniam voluptatem consequuntur.', 2, '2019-06-09 21:56:11', '2019-06-09 21:56:11'),
(82, 29, 'Alda Kerluke', 'Enim veritatis in explicabo et aliquam commodi. Asperiores et quae reiciendis odit sit et. Facilis quasi et impedit et corporis quod.', 3, '2019-06-09 21:56:11', '2019-06-09 21:56:11'),
(83, 29, 'Edmond Runte', 'Aut incidunt modi non odio. Perferendis accusantium eligendi esse quaerat quibusdam. Odio et corrupti eum delectus incidunt eligendi ipsum.', 0, '2019-06-09 21:56:11', '2019-06-09 21:56:11'),
(84, 11, 'Ariel Connelly', 'Qui rerum sint consequatur deleniti rem repudiandae et. Dignissimos et minus ducimus aut. Optio molestias ea mollitia eveniet debitis in. Veritatis aperiam tempora esse sit quasi laboriosam id.', 5, '2019-06-09 21:56:11', '2019-06-09 21:56:11'),
(85, 20, 'April Wyman', 'Libero perspiciatis dolor quia. Quas odit et sapiente. Repudiandae deserunt cupiditate quasi tenetur aspernatur in est.', 3, '2019-06-09 21:56:11', '2019-06-09 21:56:11'),
(86, 1, 'Shanie Ernser III', 'Cumque voluptatem quia sapiente consequatur fugiat nisi. Quia consectetur aut tempora id quaerat expedita. Ipsam voluptas aliquid sapiente minus. Ipsum aliquam asperiores blanditiis non quis nemo.', 1, '2019-06-09 21:56:11', '2019-06-09 21:56:11'),
(87, 12, 'Laney Turner', 'Qui sed eligendi distinctio ut est architecto. Maiores temporibus eveniet recusandae consequuntur. Quam voluptatem expedita id laudantium occaecati quod. Voluptas asperiores nesciunt explicabo vel consequatur eaque.', 5, '2019-06-09 21:56:11', '2019-06-09 21:56:11'),
(88, 17, 'Providenci Hirthe MD', 'Dolorem omnis est est et itaque recusandae excepturi quia. Consectetur provident atque sed non voluptatem. Fugiat natus quia ut inventore aut. Totam et qui quo quia nemo.', 0, '2019-06-09 21:56:11', '2019-06-09 21:56:11'),
(89, 25, 'Eileen Schmitt', 'Omnis ut officia deserunt et perferendis voluptates sed. Ea optio sed sapiente aut. Quisquam non voluptatum qui aperiam voluptatibus praesentium ut. Sit rem omnis dignissimos cupiditate quis magnam.', 2, '2019-06-09 21:56:11', '2019-06-09 21:56:11'),
(90, 6, 'Jared Johnson', 'Porro blanditiis quibusdam alias ut inventore voluptatem ut. Iste sed rerum reprehenderit est laboriosam quos maiores animi. Dolor eum omnis amet iusto beatae minima. Quaerat est natus molestiae incidunt iste eaque.', 3, '2019-06-09 21:56:11', '2019-06-09 21:56:11'),
(91, 24, 'Ivy Brakus', 'Qui esse adipisci mollitia ea pariatur. Consequatur quasi velit architecto tempore inventore quo non. Dolorem adipisci magnam quia in culpa sequi aut. Ipsam asperiores ut sint ex delectus.', 3, '2019-06-09 21:56:11', '2019-06-09 21:56:11'),
(92, 26, 'Nora Runolfsson', 'Molestiae numquam voluptatem minima. Incidunt debitis aut velit quia. Natus sit ea accusamus culpa ducimus exercitationem nobis.', 2, '2019-06-09 21:56:11', '2019-06-09 21:56:11'),
(93, 8, 'Retha Jenkins', 'Tempore suscipit error reiciendis est. Maiores culpa nemo eum mollitia. Eos neque magni voluptate qui provident qui at natus. Rerum omnis consequatur in.', 0, '2019-06-09 21:56:11', '2019-06-09 21:56:11'),
(94, 26, 'Sierra Gutmann', 'Voluptatem facere in sint voluptas quos qui sequi earum. Vel quidem adipisci molestias expedita. Blanditiis quisquam nihil sint perferendis hic atque.', 2, '2019-06-09 21:56:11', '2019-06-09 21:56:11'),
(95, 17, 'Piper Lang II', 'Et aut veniam dolores eaque quisquam voluptas excepturi. Consequatur dolore ut facilis ratione dolore. Voluptatem earum non modi sunt aut earum qui enim.', 3, '2019-06-09 21:56:11', '2019-06-09 21:56:11'),
(96, 28, 'Prof. Marquise Cormier', 'Et ut ipsam ipsa perferendis. Blanditiis et amet ea est aut sunt aut. Totam debitis facere minima ut. Soluta error amet vel et numquam sequi omnis.', 2, '2019-06-09 21:56:11', '2019-06-09 21:56:11'),
(98, 7, 'Mr. Julien Wilkinson', 'Sint rem harum et omnis et sed quia. Fugiat eveniet illum nostrum in eius. Sint omnis omnis dolor. Qui et velit nihil est suscipit ipsa.', 5, '2019-06-09 21:56:11', '2019-06-09 21:56:11'),
(99, 25, 'Emery Kohler', 'Libero sint sunt eos dolor cupiditate quas. Sit sit sit doloribus enim. Aut voluptates minus tempora dolore aliquid natus. Tenetur non error laudantium dolores ea libero.', 5, '2019-06-09 21:56:11', '2019-06-09 21:56:11'),
(100, 24, 'Prof. Darrel Nienow Jr.', 'Nihil recusandae vel vitae exercitationem quasi et eos. Sit eum possimus repudiandae nam. Architecto dolore enim quia enim in. Dolorem laborum reprehenderit sed ut.', 0, '2019-06-09 21:56:11', '2019-06-09 21:56:11');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Rosalyn Harber', 'shayne60@example.com', '2019-06-09 21:56:07', '$2y$10$hjZ1Vq96QBINEJvgc/wRUOm2NIqutolc.aSaLhOBAnmzwzNU.v6hq', 'bMVbLjc4C6', '2019-06-09 21:56:07', '2019-06-09 21:56:07'),
(2, 'Abigail Kovacek', 'ricky.schuppe@example.net', '2019-06-09 21:56:07', '$2y$10$hjZ1Vq96QBINEJvgc/wRUOm2NIqutolc.aSaLhOBAnmzwzNU.v6hq', 'iKXgQZU4LQ', '2019-06-09 21:56:07', '2019-06-09 21:56:07'),
(3, 'Lavinia Brown III', 'rhianna31@example.com', '2019-06-09 21:56:07', '$2y$10$hjZ1Vq96QBINEJvgc/wRUOm2NIqutolc.aSaLhOBAnmzwzNU.v6hq', 'ZR0c1IoUIG', '2019-06-09 21:56:07', '2019-06-09 21:56:07'),
(4, 'Kelley Brekke', 'judge94@example.net', '2019-06-09 21:56:07', '$2y$10$hjZ1Vq96QBINEJvgc/wRUOm2NIqutolc.aSaLhOBAnmzwzNU.v6hq', 'WRdHjM9ugr', '2019-06-09 21:56:07', '2019-06-09 21:56:07'),
(5, 'Sven Schroeder PhD', 'alvah73@example.org', '2019-06-09 21:56:07', '$2y$10$hjZ1Vq96QBINEJvgc/wRUOm2NIqutolc.aSaLhOBAnmzwzNU.v6hq', 'siWbAO3FXP', '2019-06-09 21:56:07', '2019-06-09 21:56:07'),
(6, 'Sazzad Shakil', 'shakilahmedzx@gmail.com', NULL, '$2y$10$5Tlp7Lq56IZQ3zFriy07C.XQDjvdfk4fLFmgpBPYXV2904v1Ec5IK', NULL, '2019-06-09 22:45:39', '2019-06-09 22:45:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_use_id_index` (`use_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_product_id_index` (`product_id`);

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
