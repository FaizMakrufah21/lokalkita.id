-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 26, 2024 at 03:52 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_lokalkita`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `slug`, `photo`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, '‎', 'lorem-ipsum-is', '/storage/photos/1/Banner/banner-01.jpg', '<h2><font color=\"#636363\"><b>‎&nbsp;</b></font></h2>', 'inactive', '2020-08-14 01:47:38', '2024-12-17 22:30:50'),
(2, 'Super Sale', 'lorem-ipsum', '/storage/photos/1/Banner/banner-10.jpg', '<p>Up to 30%</p>', 'inactive', '2020-08-14 01:50:23', '2024-12-17 01:13:01'),
(4, 'Banner', 'banner', '/storage/photos/1/Banner/banner-06.jpg', '<h2><span style=\"color: rgb(156, 0, 255); font-size: 2rem; font-weight: bold;\">Up to 40%</span><br></h2><h2><span style=\"color: rgb(156, 0, 255);\"></span></h2>', 'inactive', '2020-08-17 20:46:59', '2024-12-16 05:59:41'),
(6, '‎', 'super-sale', '/storage/photos/1/Banner/1.png', '<h2><b>‎&nbsp;</b></h2>', 'active', '2024-12-17 01:17:45', '2024-12-17 22:31:22'),
(7, 'Diskon Terbatas!!', 'biggest-sale', '/storage/photos/1/Banner/2.png', '<h2><b>Up to 30%</b></h2>', 'active', '2024-12-17 01:23:23', '2024-12-17 01:36:16'),
(8, 'Promo Pengguna Baru!!', 'special-new-member', '/storage/photos/1/Banner/3.png', '<h2><b>Up to 40%</b></h2>', 'active', '2024-12-17 01:27:29', '2024-12-17 01:35:20');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `title`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Adidas', 'adidas', 'active', '2020-08-14 04:23:00', '2020-08-14 04:23:00'),
(2, 'Nike', 'nike', 'inactive', '2020-08-14 04:23:08', '2024-12-17 06:26:02'),
(3, 'Kappa', 'kappa', 'inactive', '2020-08-14 04:23:48', '2024-12-17 06:26:07'),
(4, 'Prada', 'prada', 'inactive', '2020-08-14 04:24:08', '2024-12-17 06:26:18'),
(6, 'Brand', 'brand', 'inactive', '2020-08-17 20:50:31', '2024-12-17 06:26:26'),
(7, 'Erigo', 'erigo', 'active', '2024-12-17 00:10:26', '2024-12-17 00:10:26'),
(8, 'Eiger Adventure', 'eiger', 'active', '2024-12-17 00:13:22', '2024-12-17 08:48:03'),
(9, 'Compass Shoes', 'compass', 'active', '2024-12-17 00:13:50', '2024-12-17 09:24:36'),
(10, 'Roughneck 1991', 'roughneck', 'active', '2024-12-17 00:14:20', '2024-12-17 08:14:40'),
(11, 'Geoff Max', 'geoff-max', 'active', '2024-12-17 00:14:51', '2024-12-17 00:14:51'),
(12, 'Thanksinsomnia', 'thanksinsomnia', 'active', '2024-12-17 00:15:37', '2024-12-17 00:15:37'),
(13, 'Dobujack', 'dobujack', 'active', '2024-12-17 00:16:17', '2024-12-17 00:16:17'),
(14, 'Bloods', 'bloods', 'active', '2024-12-17 00:16:30', '2024-12-17 00:16:30'),
(15, 'Major Minor', 'major-minor', 'active', '2024-12-17 00:17:05', '2024-12-17 00:17:05'),
(16, 'Lace Lynelle', 'lace-lynelle', 'active', '2024-12-17 00:17:35', '2024-12-17 00:17:35'),
(17, 'Merche', 'merche', 'active', '2024-12-17 00:17:50', '2024-12-17 00:17:50'),
(18, 'Parlént', 'parlent', 'active', '2024-12-17 08:15:45', '2024-12-17 08:15:45'),
(20, 'Wallts', 'wallts', 'active', '2024-12-17 09:39:48', '2024-12-17 09:39:48'),
(21, 'MSMO', 'msmo', 'active', '2024-12-17 21:43:05', '2024-12-17 21:43:05'),
(22, 'Lanccelot', 'lanccelot', 'active', '2024-12-17 21:55:03', '2024-12-17 21:55:03'),
(23, 'Merché', 'merche-2412180426-611', 'active', '2024-12-17 22:04:26', '2024-12-17 22:04:26'),
(24, 'Aerostreet', 'aerostreet', 'active', '2024-12-18 22:06:17', '2024-12-18 22:06:17'),
(25, 'COTTONINK', 'cottonink', 'active', '2024-12-18 22:15:55', '2024-12-18 22:15:55'),
(26, 'Jims Honey', 'jims-honey', 'active', '2024-12-18 22:28:28', '2024-12-18 22:28:28');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED DEFAULT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `price` double(8,2) NOT NULL,
  `status` enum('new','progress','delivered','cancel') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new',
  `quantity` int NOT NULL,
  `amount` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `product_id`, `order_id`, `user_id`, `price`, `status`, `quantity`, `amount`, `created_at`, `updated_at`) VALUES
(17, 12, NULL, 1, 84000.00, 'new', 2, 384000.00, '2024-12-17 07:34:50', '2024-12-17 07:37:51'),
(18, 26, 8, 2, 5.52, 'new', 3, 16.56, '2024-12-18 23:41:03', '2024-12-18 23:44:39'),
(19, 12, 9, 2, 4.76, 'new', 3, 51.00, '2024-12-19 03:12:27', '2024-12-19 03:13:55');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_parent` tinyint(1) NOT NULL DEFAULT '1',
  `parent_id` bigint UNSIGNED DEFAULT NULL,
  `added_by` bigint UNSIGNED DEFAULT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `slug`, `summary`, `photo`, `is_parent`, `parent_id`, `added_by`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Men\'s Fashion', 'mens-fashion', NULL, '/storage/photos/1/Category/mini-banner1.jpg', 1, NULL, NULL, 'active', '2020-08-14 04:26:15', '2020-08-14 04:26:15'),
(2, 'Women\'s Fashion', 'womens-fashion', NULL, '/storage/photos/1/Category/mini-banner2.jpg', 1, NULL, NULL, 'active', '2020-08-14 04:26:40', '2020-08-14 04:26:40'),
(3, 'Kid\'s', 'kids', NULL, '/storage/photos/1/Category/mini-banner3.jpg', 1, NULL, NULL, 'active', '2020-08-14 04:27:10', '2020-08-14 04:27:42'),
(4, 'T-shirt\'s', 't-shirts', NULL, NULL, 0, 1, NULL, 'active', '2020-08-14 04:32:14', '2020-08-14 04:32:14'),
(5, 'Jeans pants', 'jeans-pants', NULL, NULL, 0, 1, NULL, 'active', '2020-08-14 04:32:49', '2020-08-14 04:32:49'),
(6, 'Sweater & Jackets', 'sweater-jackets', NULL, NULL, 0, 1, NULL, 'active', '2020-08-14 04:33:37', '2020-08-14 04:33:37'),
(7, 'Rain Coats & Trenches', 'rain-coats-trenches', NULL, NULL, 0, 1, NULL, 'active', '2020-08-14 04:34:04', '2020-08-14 04:34:04'),
(15, 'Dress', 'dress', NULL, NULL, 0, 2, NULL, 'active', '2024-12-17 21:45:44', '2024-12-17 21:45:44'),
(16, 'Sneakers w', 'sneakers', NULL, NULL, 0, 2, NULL, 'active', '2024-12-18 22:09:17', '2024-12-18 23:21:06'),
(17, 'Bag', 'bag', NULL, NULL, 0, 2, NULL, 'active', '2024-12-18 22:27:48', '2024-12-18 22:27:48'),
(18, 'Accessories', 'accessories', NULL, NULL, 0, 2, NULL, 'active', '2024-12-18 22:31:12', '2024-12-18 22:31:12'),
(19, 'Accessories', 'accessories-2412193222-854', NULL, NULL, 0, 1, NULL, 'active', '2024-12-18 22:32:22', '2024-12-18 22:32:22'),
(20, 'Sneakers m', 'sneakers-m', NULL, NULL, 0, 1, NULL, 'active', '2024-12-18 23:21:54', '2024-12-18 23:21:54'),
(21, 'Makanan', 'makanan', NULL, NULL, 1, NULL, NULL, 'active', '2024-12-19 03:22:11', '2024-12-19 03:22:11');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint UNSIGNED NOT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('fixed','percent') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fixed',
  `value` decimal(20,2) NOT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `value`, `status`, `created_at`, `updated_at`) VALUES
(1, 'abc123', 'fixed', '300.00', 'active', NULL, NULL),
(2, '111111', 'percent', '10.00', 'active', NULL, NULL),
(5, 'abcd', 'fixed', '250.00', 'active', '2020-08-17 20:54:58', '2020-08-17 20:54:58');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
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
  `queue` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `subject`, `email`, `photo`, `phone`, `message`, `read_at`, `created_at`, `updated_at`) VALUES
(1, 'Prajwal Rai', 'About price', 'prajwal.iar@gmail.com', NULL, '9807009999', 'Hello sir i am from kathmandu nepal.', '2020-08-14 08:25:46', '2020-08-14 08:00:01', '2020-08-14 08:25:46'),
(2, 'Prajwal Rai', 'About Price', 'prajwal.iar@gmail.com', NULL, '9800099000', 'Hello i am Prajwal Rai', '2020-08-18 03:04:15', '2020-08-15 07:52:39', '2020-08-18 03:04:16'),
(3, 'Prajwal Rai', 'lorem ipsum', 'prajwal.iar@gmail.com', NULL, '1200990009', 'hello sir sdfdfd dfdjf ;dfjd fd ldkfd', '2024-12-17 06:28:35', '2020-08-17 21:15:12', '2024-12-17 06:28:35');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_07_10_021010_create_brands_table', 1),
(5, '2020_07_10_025334_create_banners_table', 1),
(6, '2020_07_10_112147_create_categories_table', 1),
(7, '2020_07_11_063857_create_products_table', 1),
(8, '2020_07_12_073132_create_post_categories_table', 1),
(9, '2020_07_12_073701_create_post_tags_table', 1),
(10, '2020_07_12_083638_create_posts_table', 1),
(11, '2020_07_13_151329_create_messages_table', 1),
(12, '2020_07_14_023748_create_shippings_table', 1),
(13, '2020_07_15_054356_create_orders_table', 1),
(14, '2020_07_15_102626_create_carts_table', 1),
(15, '2020_07_16_041623_create_notifications_table', 1),
(16, '2020_07_16_053240_create_coupons_table', 1),
(17, '2020_07_23_143757_create_wishlists_table', 1),
(18, '2020_07_24_074930_create_product_reviews_table', 1),
(19, '2020_07_24_131727_create_post_comments_table', 1),
(20, '2020_08_01_143408_create_settings_table', 1),
(21, '2019_12_14_000001_create_personal_access_tokens_table', 2),
(22, '2023_06_21_164432_create_jobs_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint UNSIGNED NOT NULL,
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('122ce07e-80a0-44b3-8c77-0c4fbff2adaf', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/9\",\"fas\":\"fa-file-alt\"}', NULL, '2024-12-19 03:13:55', '2024-12-19 03:13:55'),
('2145a8e3-687d-444a-8873-b3b2fb77a342', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Comment created\",\"actionURL\":\"http:\\/\\/e-shop.loc\\/blog-detail\\/where-can-i-get-some\",\"fas\":\"fas fa-comment\"}', NULL, '2020-08-15 07:31:21', '2020-08-15 07:31:21'),
('2ebe83ae-7e48-415c-82c9-a33f88a2de70', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/6\",\"fas\":\"fa-file-alt\"}', NULL, '2024-12-09 00:47:29', '2024-12-09 00:47:29'),
('3a7e19e1-04df-42e2-8a1f-384748bc6ee3', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Product Rating!\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/product-detail\\/cap-theona-black-thanksinsomnia\",\"fas\":\"fa-star\"}', NULL, '2024-12-18 23:38:51', '2024-12-18 23:38:51'),
('3ab23090-df45-4f72-b35d-e002795f0768', 'App\\Notifications\\StatusNotification', 'App\\User', 31, '{\"title\":\"New Product Rating!\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/product-detail\\/cap-theona-black-thanksinsomnia\",\"fas\":\"fa-star\"}', NULL, '2024-12-18 23:38:51', '2024-12-18 23:38:51'),
('3af39f84-cab4-4152-9202-d448435c67de', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/localhost:8000\\/admin\\/order\\/4\",\"fas\":\"fa-file-alt\"}', NULL, '2020-08-15 07:54:52', '2020-08-15 07:54:52'),
('4a0afdb0-71ad-4ce6-bc70-c92ef491a525', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Comment created\",\"actionURL\":\"http:\\/\\/localhost:8000\\/blog-detail\\/the-standard-lorem-ipsum-passage-used-since-the-1500s\",\"fas\":\"fas fa-comment\"}', NULL, '2020-08-17 21:13:51', '2020-08-17 21:13:51'),
('540ca3e9-0ff9-4e2e-9db3-6b5abc823422', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Comment created\",\"actionURL\":\"http:\\/\\/e-shop.loc\\/blog-detail\\/where-can-i-get-some\",\"fas\":\"fas fa-comment\"}', '2020-08-15 07:30:44', '2020-08-14 07:12:28', '2020-08-15 07:30:44'),
('5da09dd1-3ffc-43b0-aba2-a4260ba4cc76', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Comment created\",\"actionURL\":\"http:\\/\\/localhost:8000\\/blog-detail\\/the-standard-lorem-ipsum-passage\",\"fas\":\"fas fa-comment\"}', NULL, '2020-08-15 07:51:02', '2020-08-15 07:51:02'),
('5e91e603-024e-45c5-b22f-36931fef0d90', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Product Rating!\",\"actionURL\":\"http:\\/\\/localhost:8000\\/product-detail\\/white-sports-casual-t\",\"fas\":\"fa-star\"}', NULL, '2020-08-15 07:44:07', '2020-08-15 07:44:07'),
('73a3b51a-416a-4e7d-8ca2-53b216d9ad8e', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Comment created\",\"actionURL\":\"http:\\/\\/e-shop.loc\\/blog-detail\\/where-can-i-get-some\",\"fas\":\"fas fa-comment\"}', NULL, '2020-08-14 07:11:03', '2020-08-14 07:11:03'),
('8605db5d-1462-496e-8b5f-8b923d88912c', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/e-shop.loc\\/admin\\/order\\/1\",\"fas\":\"fa-file-alt\"}', NULL, '2020-08-14 07:20:44', '2020-08-14 07:20:44'),
('a6ec5643-748c-4128-92e2-9a9f293f53b5', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/localhost:8000\\/admin\\/order\\/5\",\"fas\":\"fa-file-alt\"}', NULL, '2020-08-17 21:17:03', '2020-08-17 21:17:03'),
('b186a883-42f2-4a05-8fc5-f0d3e10309ff', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/e-shop.loc\\/admin\\/order\\/2\",\"fas\":\"fa-file-alt\"}', '2020-08-15 04:17:24', '2020-08-14 22:14:55', '2020-08-15 04:17:24'),
('b7412bd8-6e83-4b82-b82f-05ad210dbbd7', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/8\",\"fas\":\"fa-file-alt\"}', NULL, '2024-12-18 23:44:39', '2024-12-18 23:44:39'),
('c2fe88da-698d-4693-8909-b3f2a68cbd68', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/7\",\"fas\":\"fa-file-alt\"}', NULL, '2024-12-09 00:49:46', '2024-12-09 00:49:46'),
('d2fd7c33-b0fe-47d6-8bc6-f377d404080d', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Comment created\",\"actionURL\":\"http:\\/\\/e-shop.loc\\/blog-detail\\/where-can-i-get-some\",\"fas\":\"fas fa-comment\"}', NULL, '2020-08-14 07:08:50', '2020-08-14 07:08:50'),
('dff78b90-85c8-42ee-a5b1-de8ad0b21be4', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/e-shop.loc\\/admin\\/order\\/3\",\"fas\":\"fa-file-alt\"}', NULL, '2020-08-15 06:40:54', '2020-08-15 06:40:54'),
('e28b0a73-4819-4016-b915-0e525d4148f5', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Product Rating!\",\"actionURL\":\"http:\\/\\/localhost:8000\\/product-detail\\/lorem-ipsum-is-simply\",\"fas\":\"fa-star\"}', NULL, '2020-08-17 21:08:16', '2020-08-17 21:08:16'),
('ffffa177-c54e-4dfe-ba43-27c466ff1f4b', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Comment created\",\"actionURL\":\"http:\\/\\/localhost:8000\\/blog-detail\\/the-standard-lorem-ipsum-passage-used-since-the-1500s\",\"fas\":\"fas fa-comment\"}', NULL, '2020-08-17 21:13:29', '2020-08-17 21:13:29');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `order_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `sub_total` double(8,2) NOT NULL,
  `shipping_id` bigint UNSIGNED DEFAULT NULL,
  `coupon` double(8,2) DEFAULT NULL,
  `total_amount` double(8,2) NOT NULL,
  `quantity` int NOT NULL,
  `payment_method` enum('cod','paypal') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'cod',
  `payment_status` enum('paid','unpaid') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `status` enum('new','process','delivered','cancel') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new',
  `first_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address1` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address2` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_number`, `user_id`, `sub_total`, `shipping_id`, `coupon`, `total_amount`, `quantity`, `payment_method`, `payment_status`, `status`, `first_name`, `last_name`, `email`, `phone`, `country`, `post_code`, `address1`, `address2`, `created_at`, `updated_at`) VALUES
(1, 'ORD-PMIQF5MYPK', 3, 14399.00, 1, 573.90, 13925.10, 6, 'cod', 'unpaid', 'delivered', 'Prajwal', 'Rai', 'prajwal.iar@gmail.com', '9800887778', 'NP', '44600', 'Koteshwor', 'Kathmandu', '2020-08-14 07:20:44', '2020-08-14 09:37:37'),
(2, 'ORD-YFF8BF0YBK', 2, 1939.03, 1, NULL, 2039.03, 1, 'cod', 'unpaid', 'delivered', 'Sandhya', 'Rai', 'user@gmail.com', '90000000990', 'NP', NULL, 'Lalitpur', NULL, '2020-08-14 22:14:49', '2020-08-14 22:15:19'),
(3, 'ORD-1CKWRWTTIK', 3, 200.00, 1, NULL, 300.00, 1, 'paypal', 'paid', 'process', 'Prajwal', 'Rai', 'prajwal.iar@gmail.com', '9807009999', 'NP', '44600', 'Kathmandu', 'Kadaghari', '2020-08-15 06:40:49', '2020-08-17 20:52:40'),
(4, 'ORD-HVO0KX0YHW', 3, 23660.00, 3, 150.00, 23910.00, 6, 'paypal', 'paid', 'cancel', 'Prajwal', 'Rai', 'prajwal.iar@gmail.com', '9800098878', 'NP', '44600', 'Pokhara', NULL, '2020-08-15 07:54:52', '2024-12-18 23:49:07'),
(7, 'ORD-RN2EVHYWMX', 2, 200.00, 2, NULL, 500.00, 1, 'cod', 'unpaid', 'new', '3ete', 'wfr', 'admin@gmail.com', '777777777', 'CN', '123456', 'ihugfcgh', 'lihuu', '2024-12-09 00:49:45', '2024-12-09 00:49:45'),
(8, 'ORD-V1GL2L4RSG', 2, 16.56, 7, NULL, 51.56, 3, 'cod', 'unpaid', 'delivered', 'burhan', 'jawir', 'user1@gmail.com', '081255447788', 'ID', '73148', 'ujung kulon', 'depan teteh', '2024-12-18 23:44:39', '2024-12-18 23:48:44'),
(9, 'ORD-LF2VX6RSYW', 2, 51.00, NULL, NULL, 51.00, 3, 'cod', 'unpaid', 'delivered', 'burhan', 'p', 'renata@gmail.com', '12412441', 'AQ', '2133', 'ujung kulon', 'depan teteh', '2024-12-19 03:13:55', '2024-12-19 03:16:45');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `quote` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_cat_id` bigint UNSIGNED DEFAULT NULL,
  `post_tag_id` bigint UNSIGNED DEFAULT NULL,
  `added_by` bigint UNSIGNED DEFAULT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `summary`, `description`, `quote`, `photo`, `tags`, `post_cat_id`, `post_tag_id`, `added_by`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Where does it come from?', 'where-does-it-come-from', '<p><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Contrary to popular belief, Lorem Ipsum is not simply random text.&nbsp;</span><br></p>', '<h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-family: DauphinPlain; font-size: 24px; line-height: 24px;\">What is Lorem Ipsum?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\"><strong style=\"margin: 0px; padding: 0px;\">Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\"><strong style=\"margin: 0px; padding: 0px;\">Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '<p><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested.</span><br></p>', '/storage/photos/1/Blog/blog1.jpg', '2020,Visit nepal 2020', 1, NULL, 2, 'active', '2020-08-14 01:55:55', '2020-08-14 04:29:56'),
(2, 'Where can I get some?', 'where-can-i-get-some', '<h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-family: DauphinPlain; font-size: 24px; line-height: 24px;\"><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">It is a long established fact that a reader</span><br></h2>', '<h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; line-height: 24px; font-size: 24px; padding: 0px; font-family: DauphinPlain;\">Why do we use it?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; line-height: 24px; font-size: 24px; padding: 0px; font-family: DauphinPlain;\">Why do we use it?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', NULL, '/storage/photos/1/Blog/blog2.jpg', 'Enjoy', 2, NULL, 1, 'active', '2020-08-14 01:58:52', '2020-08-14 07:08:14'),
(3, 'The standard Lorem Ipsum passage, used since the 1500s', 'the-standard-lorem-ipsum-passage-used-since-the-1500s', '<p><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">\"Lorem ipsum dolor sit amet, consectetur adipiscing elit,</span><br></p>', '<h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; font-size: 14px; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">1914 translation by H. Rackham</h3><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p><h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; font-size: 14px; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Section 1.10.33 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC</h3><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"</p><h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; font-size: 14px; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">1914 translation by H. Rackham</h3><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">\"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\"</p>', NULL, '/storage/photos/1/Blog/blog3.jpg', '', 3, NULL, 3, 'active', '2020-08-14 02:59:33', '2020-08-14 04:29:44'),
(5, 'The standard Lorem Ipsum passage,', 'the-standard-lorem-ipsum-passage', '<p><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</span><br></p>', '<h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; font-size: 14px; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">The standard Lorem Ipsum passage, used since the 1500s</h3><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p><h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; font-size: 14px; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Section 1.10.32 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC</h3><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"</p><h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; font-size: 14px; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">1914 translation by H. Rackham</h3><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p><h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; font-size: 14px; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Section 1.10.33 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC</h3><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"</p><h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; font-size: 14px; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">1914 translation by H. Rackham</h3><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">\"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\"</p>', '<p><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</span><br></p>', '/storage/photos/1/Blog/blog2.jpg', ',Enjoy,2020,Visit nepal 2020', 1, NULL, 1, 'active', '2020-08-15 06:58:45', '2020-08-15 06:58:45'),
(6, 'Lorem Ipsum is simply', 'lorem-ipsum-is-simply', '<p><strong style=\"margin: 0px; padding: 0px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry.</span><br></p>', '<h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-family: DauphinPlain; font-size: 24px; line-height: 24px;\">What is Lorem Ipsum?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\"><strong style=\"margin: 0px; padding: 0px;\">Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and</p><h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-family: DauphinPlain; font-size: 24px; line-height: 24px;\">What is Lorem Ipsum?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\"><strong style=\"margin: 0px; padding: 0px;\">Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and</p><h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-family: DauphinPlain; font-size: 24px; line-height: 24px;\">What is Lorem Ipsum?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\"><strong style=\"margin: 0px; padding: 0px;\">Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and</p><hr><h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-family: DauphinPlain; font-size: 24px; line-height: 24px;\">What is Lorem Ipsum?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\"><strong style=\"margin: 0px; padding: 0px;\">Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and</p><h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-family: DauphinPlain; font-size: 24px; line-height: 24px;\">What is Lorem Ipsum?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\"><strong style=\"margin: 0px; padding: 0px;\">Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and</p>', NULL, '/storage/photos/1/Blog/blog3.jpg', 'Enjoy,2020', 2, NULL, 1, 'active', '2020-08-17 20:54:19', '2020-08-17 20:54:19');

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE `post_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_categories`
--

INSERT INTO `post_categories` (`id`, `title`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Travel', 'contrary', 'active', '2020-08-14 01:51:03', '2020-08-14 01:51:39'),
(2, 'Electronics', 'richard', 'active', '2020-08-14 01:51:22', '2020-08-14 01:52:00'),
(3, 'Cloths', 'cloths', 'active', '2020-08-14 01:52:22', '2020-08-14 01:52:22'),
(4, 'enjoy', 'enjoy', 'active', '2020-08-14 03:16:10', '2020-08-14 03:16:10'),
(5, 'Post Category', 'post-category', 'active', '2020-08-15 06:59:04', '2020-08-15 06:59:04');

-- --------------------------------------------------------

--
-- Table structure for table `post_comments`
--

CREATE TABLE `post_comments` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `post_id` bigint UNSIGNED DEFAULT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `replied_comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `parent_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_comments`
--

INSERT INTO `post_comments` (`id`, `user_id`, `post_id`, `comment`, `status`, `replied_comment`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'Testing comment edited', 'active', NULL, NULL, '2020-08-14 07:08:42', '2020-08-15 06:59:58'),
(2, 3, 2, 'testing 2', 'active', NULL, 1, '2020-08-14 07:11:03', '2020-08-14 07:11:03'),
(3, 2, 2, 'That\'s cool', 'active', NULL, 2, '2020-08-14 07:12:27', '2020-08-14 07:12:27'),
(4, 1, 2, 'nice', 'active', NULL, NULL, '2020-08-15 07:31:19', '2020-08-15 07:31:19'),
(5, 3, 5, 'nice blog', 'active', NULL, NULL, '2020-08-15 07:51:01', '2020-08-15 07:51:01'),
(6, 2, 3, 'nice', 'active', NULL, NULL, '2020-08-17 21:13:29', '2020-08-17 21:13:29'),
(7, 2, 3, 'really', 'active', NULL, 6, '2020-08-17 21:13:51', '2020-08-17 21:13:51');

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

CREATE TABLE `post_tags` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tags`
--

INSERT INTO `post_tags` (`id`, `title`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Enjoy', 'enjoy', 'active', '2020-08-14 01:53:52', '2020-08-14 01:53:52'),
(2, '2020', '2020', 'active', '2020-08-14 01:54:09', '2020-08-14 01:54:09'),
(3, 'Visit nepal 2020', 'visit-nepal-2020', 'active', '2020-08-14 01:54:33', '2020-08-14 01:54:33'),
(4, 'Tag', 'tag', 'active', '2020-08-15 06:59:31', '2020-08-15 06:59:31');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `photo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` int NOT NULL DEFAULT '1',
  `size` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'M',
  `condition` enum('default','new','hot') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `price` double(8,2) NOT NULL,
  `discount` double(8,2) NOT NULL,
  `is_featured` tinyint(1) NOT NULL,
  `cat_id` bigint UNSIGNED DEFAULT NULL,
  `child_cat_id` bigint UNSIGNED DEFAULT NULL,
  `brand_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `slug`, `summary`, `description`, `photo`, `stock`, `size`, `condition`, `status`, `price`, `discount`, `is_featured`, `cat_id`, `child_cat_id`, `brand_id`, `created_at`, `updated_at`) VALUES
(12, 'Erigo T-Shirt Graphic Tomo Black', 'erigo', '<p>Erigo T-Shirt</p>', '<p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; white-space-collapse: preserve; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px;\">Series DTF hadir dengan inovasi terbaru! Semakin nyaman dikenakan karena sekarang series DTF menggunakan cotton combed 30s yang lembut dan sejuk. T-shirt DTF kali ini didesain dengan potongan regular-fit sehingga semakin nyaman untuk beraktivitas. </p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; white-space-collapse: preserve; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px;\">\r\n</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; white-space-collapse: preserve; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px;\">DTF Series memiliki banyak sekali pilihan grafik dengan berbagai tema. Bisa dipilih sesuai mood atau suasana! </p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; white-space-collapse: preserve; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px;\">\r\n</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; white-space-collapse: preserve; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px;\"><span style=\"font-weight: bolder;\">Highlights: </span></p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; white-space-collapse: preserve; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px;\">- Regular-Fit</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; white-space-collapse: preserve; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px;\">- Sablon Depan &amp; Belakang </p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; white-space-collapse: preserve; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px;\">\r\n</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; white-space-collapse: preserve; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px;\"><span style=\"font-weight: bolder;\">Bahan</span></p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; white-space-collapse: preserve; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px;\">\r\n</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; white-space-collapse: preserve; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px;\">T-shirt: Cotton Combed 30s </p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; white-space-collapse: preserve; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px;\">\r\n</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; white-space-collapse: preserve; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px;\"><span style=\"font-weight: bolder;\">Sablon: DTF</span></p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; white-space-collapse: preserve; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px;\">\r\n</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; white-space-collapse: preserve; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px;\">Detail size lihat pada slide gambar produk</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; white-space-collapse: preserve; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px;\">Toleransi setiap size 1-2 cm</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; white-space-collapse: preserve; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px;\">\r\n</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; white-space-collapse: preserve; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px;\"><span style=\"font-weight: bolder;\">Rawat T-shirt DTF ini dengan:</span></p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; white-space-collapse: preserve; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px;\">- Setrika menggunakan suhu sedang, maksimal 150 °C. Setrika dengan posisi dibalik</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; white-space-collapse: preserve; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px;\">- Cuci menggunakan air dengan suhu ruang, jangan menggunakan mesin cuci</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; white-space-collapse: preserve; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px;\">- Jangan gunakan pemutih dan air panas</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; white-space-collapse: preserve; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px;\">- Bagian grafik jangan disikat&nbsp;atau&nbsp;diperas</p>', '/storage/photos/1/Products/erigo1.jpg,/storage/photos/1/Products/erigo2.jpg,/storage/photos/1/Products/erigo3.jpg', 48, 'M,L,XL', 'new', 'active', 17.00, 72.00, 0, 1, 4, 7, '2024-12-17 07:31:10', '2024-12-19 03:16:45'),
(13, 'Smartwatch Parlent Crown Steel', 'smartwatch-parlent-crown-steel', '<p>Smartwatch Parlent</p>', '<p><span style=\"color: rgb(33, 33, 33); font-family: &quot;Open Sauce One&quot;, sans-serif; font-size: 14px;\">CROWN ACTIVE</span><br style=\"box-sizing: inherit; color: rgb(33, 33, 33); font-family: &quot;Open Sauce One&quot;, sans-serif; font-size: 14px;\"><br style=\"box-sizing: inherit; color: rgb(33, 33, 33); font-family: &quot;Open Sauce One&quot;, sans-serif; font-size: 14px;\"><span style=\"color: rgb(33, 33, 33); font-family: &quot;Open Sauce One&quot;, sans-serif; font-size: 14px;\">𝐏𝐚𝐫𝐥𝐞𝐧𝐭 𝐀𝐜𝐭𝐢𝐯𝐞 𝐒𝐦𝐚𝐫𝐭𝐰𝐚𝐭𝐜𝐡</span><br style=\"box-sizing: inherit; color: rgb(33, 33, 33); font-family: &quot;Open Sauce One&quot;, sans-serif; font-size: 14px;\"><span style=\"color: rgb(33, 33, 33); font-family: &quot;Open Sauce One&quot;, sans-serif; font-size: 14px;\">The luxurious smartwatch from Parlent World smartwatch from Parlent World!</span><br style=\"box-sizing: inherit; color: rgb(33, 33, 33); font-family: &quot;Open Sauce One&quot;, sans-serif; font-size: 14px;\"><br style=\"box-sizing: inherit; color: rgb(33, 33, 33); font-family: &quot;Open Sauce One&quot;, sans-serif; font-size: 14px;\"><span style=\"color: rgb(33, 33, 33); font-family: &quot;Open Sauce One&quot;, sans-serif; font-size: 14px;\">ACTIVE</span><br style=\"box-sizing: inherit; color: rgb(33, 33, 33); font-family: &quot;Open Sauce One&quot;, sans-serif; font-size: 14px;\"><span style=\"color: rgb(33, 33, 33); font-family: &quot;Open Sauce One&quot;, sans-serif; font-size: 14px;\">INPUT:DC/USB 5V/1A MAX</span><br style=\"box-sizing: inherit; color: rgb(33, 33, 33); font-family: &quot;Open Sauce One&quot;, sans-serif; font-size: 14px;\"><span style=\"color: rgb(33, 33, 33); font-family: &quot;Open Sauce One&quot;, sans-serif; font-size: 14px;\">Bluetooth Version:BLE5.3</span><br style=\"box-sizing: inherit; color: rgb(33, 33, 33); font-family: &quot;Open Sauce One&quot;, sans-serif; font-size: 14px;\"><span style=\"color: rgb(33, 33, 33); font-family: &quot;Open Sauce One&quot;, sans-serif; font-size: 14px;\">Display:IPS 1.32\" AMOLED 466x466</span><br style=\"box-sizing: inherit; color: rgb(33, 33, 33); font-family: &quot;Open Sauce One&quot;, sans-serif; font-size: 14px;\"><span style=\"color: rgb(33, 33, 33); font-family: &quot;Open Sauce One&quot;, sans-serif; font-size: 14px;\">Mermary: 640K+128M</span><br style=\"box-sizing: inherit; color: rgb(33, 33, 33); font-family: &quot;Open Sauce One&quot;, sans-serif; font-size: 14px;\"><span style=\"color: rgb(33, 33, 33); font-family: &quot;Open Sauce One&quot;, sans-serif; font-size: 14px;\">Battery:230mAh</span><br style=\"box-sizing: inherit; color: rgb(33, 33, 33); font-family: &quot;Open Sauce One&quot;, sans-serif; font-size: 14px;\"><span style=\"color: rgb(33, 33, 33); font-family: &quot;Open Sauce One&quot;, sans-serif; font-size: 14px;\">Charging Time:About 2.5 Hours</span><br style=\"box-sizing: inherit; color: rgb(33, 33, 33); font-family: &quot;Open Sauce One&quot;, sans-serif; font-size: 14px;\"><span style=\"color: rgb(33, 33, 33); font-family: &quot;Open Sauce One&quot;, sans-serif; font-size: 14px;\">APP/APK Name: COFIT</span><br style=\"box-sizing: inherit; color: rgb(33, 33, 33); font-family: &quot;Open Sauce One&quot;, sans-serif; font-size: 14px;\"><span style=\"color: rgb(33, 33, 33); font-family: &quot;Open Sauce One&quot;, sans-serif; font-size: 14px;\">System Version: Android and IOS</span><br style=\"box-sizing: inherit; color: rgb(33, 33, 33); font-family: &quot;Open Sauce One&quot;, sans-serif; font-size: 14px;\"><br style=\"box-sizing: inherit; color: rgb(33, 33, 33); font-family: &quot;Open Sauce One&quot;, sans-serif; font-size: 14px;\"><span style=\"color: rgb(33, 33, 33); font-family: &quot;Open Sauce One&quot;, sans-serif; font-size: 14px;\">𝐂𝐨𝐧𝐭𝐞𝐧𝐭 𝐢𝐧 𝐭𝐡𝐞 𝐩𝐚𝐜𝐤𝐚𝐠𝐞:</span><br style=\"box-sizing: inherit; color: rgb(33, 33, 33); font-family: &quot;Open Sauce One&quot;, sans-serif; font-size: 14px;\"><span style=\"color: rgb(33, 33, 33); font-family: &quot;Open Sauce One&quot;, sans-serif; font-size: 14px;\">✅Parlent Active Smart Watch x 1</span><br style=\"box-sizing: inherit; color: rgb(33, 33, 33); font-family: &quot;Open Sauce One&quot;, sans-serif; font-size: 14px;\"><span style=\"color: rgb(33, 33, 33); font-family: &quot;Open Sauce One&quot;, sans-serif; font-size: 14px;\">✅User Manual x1</span><br style=\"box-sizing: inherit; color: rgb(33, 33, 33); font-family: &quot;Open Sauce One&quot;, sans-serif; font-size: 14px;\"><span style=\"color: rgb(33, 33, 33); font-family: &quot;Open Sauce One&quot;, sans-serif; font-size: 14px;\">✅Charging Dock x1</span><br style=\"box-sizing: inherit; color: rgb(33, 33, 33); font-family: &quot;Open Sauce One&quot;, sans-serif; font-size: 14px;\"><br style=\"box-sizing: inherit; color: rgb(33, 33, 33); font-family: &quot;Open Sauce One&quot;, sans-serif; font-size: 14px;\"><span style=\"color: rgb(33, 33, 33); font-family: &quot;Open Sauce One&quot;, sans-serif; font-size: 14px;\">[𝐒𝐦𝐚𝐫𝐭𝐰𝐚𝐭𝐜𝐡 𝐖𝐢𝐭𝐡 𝐌𝐞𝐬𝐬𝐚𝐠𝐞 𝐚𝐧𝐝 *𝐂𝐚𝐥𝐥 𝐍𝐨𝐭𝐢𝐟𝐢𝐜𝐚𝐭𝐢𝐨𝐧]</span><br style=\"box-sizing: inherit; color: rgb(33, 33, 33); font-family: &quot;Open Sauce One&quot;, sans-serif; font-size: 14px;\"><span style=\"color: rgb(33, 33, 33); font-family: &quot;Open Sauce One&quot;, sans-serif; font-size: 14px;\">This smartwatch is compatible with most iOS 9.0 and Android 4.4 or higher smartphones and supports message reminders and App notifications (Facebook, WhatsApp, Twitter, Instagram, etc.), All notifications are displayed on your wrist and reminded by vibration, allowing you to stay updated on important information even while out for a walk or exercising.</span><br style=\"box-sizing: inherit; color: rgb(33, 33, 33); font-family: &quot;Open Sauce One&quot;, sans-serif; font-size: 14px;\"><span style=\"color: rgb(33, 33, 33); font-family: &quot;Open Sauce One&quot;, sans-serif; font-size: 14px;\">*Call notification is for iOS only.</span><br style=\"box-sizing: inherit; color: rgb(33, 33, 33); font-family: &quot;Open Sauce One&quot;, sans-serif; font-size: 14px;\"><br style=\"box-sizing: inherit; color: rgb(33, 33, 33); font-family: &quot;Open Sauce One&quot;, sans-serif; font-size: 14px;\"><span style=\"color: rgb(33, 33, 33); font-family: &quot;Open Sauce One&quot;, sans-serif; font-size: 14px;\">[𝐌𝐨𝐧𝐢𝐭𝐨𝐫 𝐘𝐨𝐮𝐫 𝐇𝐞𝐚𝐥𝐭𝐡 𝐀𝐫𝐨𝐮𝐧𝐝 𝐓𝐡𝐞 𝐂𝐥𝐨𝐜𝐤]</span><br style=\"box-sizing: inherit; color: rgb(33, 33, 33); font-family: &quot;Open Sauce One&quot;, sans-serif; font-size: 14px;\"><span style=\"color: rgb(33, 33, 33); font-family: &quot;Open Sauce One&quot;, sans-serif; font-size: 14px;\">This smartwatch for Android and IOS phones helps us to understand our health better by detecting and tracking our O2, Heart Beat and Stress Levels. By syncing with the app on your phone, it gives a detailed analysis of your patterns.</span><br style=\"box-sizing: inherit; color: rgb(33, 33, 33); font-family: &quot;Open Sauce One&quot;, sans-serif; font-size: 14px;\"><br style=\"box-sizing: inherit; color: rgb(33, 33, 33); font-family: &quot;Open Sauce One&quot;, sans-serif; font-size: 14px;\"><span style=\"color: rgb(33, 33, 33); font-family: &quot;Open Sauce One&quot;, sans-serif; font-size: 14px;\">[Gaming On-The-Go]</span><br style=\"box-sizing: inherit; color: rgb(33, 33, 33); font-family: &quot;Open Sauce One&quot;, sans-serif; font-size: 14px;\"><span style=\"color: rgb(33, 33, 33); font-family: &quot;Open Sauce One&quot;, sans-serif; font-size: 14px;\">Play games on the go with our Smartwatch! Enjoy fun games right on your wrist.</span><br style=\"box-sizing: inherit; color: rgb(33, 33, 33); font-family: &quot;Open Sauce One&quot;, sans-serif; font-size: 14px;\"><br style=\"box-sizing: inherit; color: rgb(33, 33, 33); font-family: &quot;Open Sauce One&quot;, sans-serif; font-size: 14px;\"><span style=\"color: rgb(33, 33, 33); font-family: &quot;Open Sauce One&quot;, sans-serif; font-size: 14px;\">How to Connect Your Phone to Your Smartwatch:</span><br style=\"box-sizing: inherit; color: rgb(33, 33, 33); font-family: &quot;Open Sauce One&quot;, sans-serif; font-size: 14px;\"><span style=\"color: rgb(33, 33, 33); font-family: &quot;Open Sauce One&quot;, sans-serif; font-size: 14px;\">1. Download the mobile app CO-FIT.</span><br style=\"box-sizing: inherit; color: rgb(33, 33, 33); font-family: &quot;Open Sauce One&quot;, sans-serif; font-size: 14px;\"><span style=\"color: rgb(33, 33, 33); font-family: &quot;Open Sauce One&quot;, sans-serif; font-size: 14px;\">2. Turn on WiFi and enable Bluetooth on your phone.</span><br style=\"box-sizing: inherit; color: rgb(33, 33, 33); font-family: &quot;Open Sauce One&quot;, sans-serif; font-size: 14px;\"><span style=\"color: rgb(33, 33, 33); font-family: &quot;Open Sauce One&quot;, sans-serif; font-size: 14px;\">3. Open the mobile app to connect via Bluetooth.</span><br style=\"box-sizing: inherit; color: rgb(33, 33, 33); font-family: &quot;Open Sauce One&quot;, sans-serif; font-size: 14px;\"><span style=\"color: rgb(33, 33, 33); font-family: &quot;Open Sauce One&quot;, sans-serif; font-size: 14px;\">4. Pair your smartwatch with the mobile app.</span><br style=\"box-sizing: inherit; color: rgb(33, 33, 33); font-family: &quot;Open Sauce One&quot;, sans-serif; font-size: 14px;\"><span style=\"color: rgb(33, 33, 33); font-family: &quot;Open Sauce One&quot;, sans-serif; font-size: 14px;\">5. Once connected, your smartwatch can monitor various sports data as usual.</span><br style=\"box-sizing: inherit; color: rgb(33, 33, 33); font-family: &quot;Open Sauce One&quot;, sans-serif; font-size: 14px;\"><br style=\"box-sizing: inherit; color: rgb(33, 33, 33); font-family: &quot;Open Sauce One&quot;, sans-serif; font-size: 14px;\"><span style=\"color: rgb(33, 33, 33); font-family: &quot;Open Sauce One&quot;, sans-serif; font-size: 14px;\">Special Notes:</span><br style=\"box-sizing: inherit; color: rgb(33, 33, 33); font-family: &quot;Open Sauce One&quot;, sans-serif; font-size: 14px;\"><span style=\"color: rgb(33, 33, 33); font-family: &quot;Open Sauce One&quot;, sans-serif; font-size: 14px;\">1. Please ensure the smartwatch is fully charged before use.</span><br style=\"box-sizing: inherit; color: rgb(33, 33, 33); font-family: &quot;Open Sauce One&quot;, sans-serif; font-size: 14px;\"><span style=\"color: rgb(33, 33, 33); font-family: &quot;Open Sauce One&quot;, sans-serif; font-size: 14px;\">2. After connecting to your phone, the smartwatch will automatically sync with your phone\'s time, eliminating the need for manual adjustments.</span><br style=\"box-sizing: inherit; color: rgb(33, 33, 33); font-family: &quot;Open Sauce One&quot;, sans-serif; font-size: 14px;\"><span style=\"color: rgb(33, 33, 33); font-family: &quot;Open Sauce One&quot;, sans-serif; font-size: 14px;\">3. Avoid using the Smartwatch in salt water, hot water, or warm water.</span></p>', '/storage/photos/1/Products/parlent1.jpg', 15, 'L', 'hot', 'active', 94.00, 24.00, 0, 1, NULL, 18, '2024-12-17 08:28:33', '2024-12-17 09:12:26'),
(14, 'EIGER CRYSTALIN 2A WAIST BAG', 'eiger-crystalin-2a-waist-bag', '<p>Eiger Bag</p>', '<p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">Crystalin 2A adalah tas pinggang yang praktis digunakan sehari-hari. Tas ini memiliki kompartemen utama, saku depan, dan saku belakanguntuk menyimpan barang bawaan dengan mudah. Tas ini juga memiliki fitur lubang earphone untuk kenyamanan penggunaan ketika mendengarkan musik.</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">Fitur:</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">Kompartemen utama.</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">Saku depan.</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">Saku belakang.</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">Lubang earphone.</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">&nbsp;</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">\r\n</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">\r\n</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">Dimension:35 X 6 X 18</p>', '/storage/photos/1/Products/eigerbag1.jpg,/storage/photos/1/Products/eigerbag2.jpg,/storage/photos/1/Products/eigerbag3.jpg', 132, '', 'default', 'active', 16.00, 6.00, 0, 1, NULL, 8, '2024-12-17 09:02:37', '2024-12-17 09:23:09'),
(15, 'Compass Shoes Gazelle Hi Cream', 'compass-shoes-gazelle-hi-cream', '<p>Compass Shoes</p>', '<p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">Siluet pertama sepatu Compass® terlahir kembali pada 2018. Gazelle® Hi dirancang dengan sentuhan vintage klasik yang dipadukan dengan detail modern yang relevan.\r\n\r\nPotongan tinggi memberikan kesan dan keunggulan pada gaya klasik, yang menjadikannya tak lekang oleh waktu dan segar. Logo samping itu diwariskan dari tahun 1988, terinspirasi dari binatang Gazelle yang sedang berlari.\r\nㅤ\r\nㅤ\r\nSpesifikasi :\r\n• Potongan tinggi\r\n• Upper menggunakan bahan kanvas\r\n• Lining upper menggunakan bahan kanvas\r\n• Logo samping menggunakan bahan PVC\r\n• Lubang tali berwarna emas\r\n• Tali sepatu menggunakan polyester\r\n• Pesanan khusus label woven\r\n• Foxing menggunakan bahan karet\r\n• Outsole menggunakan bahan karet\r\n• Proses vulkanisasi\r\n• Buatan Indonesia\r\nㅤ\r\nPanduan Ukuran :\r\n• US 4 / UK 3 / EUR 34 / CM 22.5\r\n• US 4.5 / UK 3.5 / EUR 35 / CM 23.5\r\n• US 5 / UK 4 / EUR 36 / CM 24\r\n• US 5.5 / UK 4.5 / EUR 37 / CM 24.5\r\n• US 6.5 / UK 5.5 / EUR 38 / CM 25\r\n• US 7 / UK 6 / EUR 39 / CM 26\r\n• US 8 / UK 7 / EUR 40 / CM 26.5\r\n• US 8.5 / UK 7.5 / EUR 41 / CM 27\r\n• US 9.5 / UK 8.5 / EUR 42 / CM 27.5\r\n• US 10 / UK 9 / EUR 43 / CM 28.5\r\n• US 10.5 / UK 9.5 / EUR 44 / CM 29\r\n• US 11 / UK 10.5 / EUR 45 / CM 29.5\r\nㅤ\r\nㅤ\r\n#sepatucompass #gazelle #buatanIndonesia</span></p>', '/storage/photos/1/Products/compas1.jpg,/storage/photos/1/Products/compas2.jpg,/storage/photos/1/Products/compas3.jpg', 327, '', 'new', 'active', 28.00, 10.00, 1, 1, NULL, 9, '2024-12-17 09:22:27', '2024-12-17 09:22:27'),
(16, 'Roughneck HZ063 Blue Black Trigger Hoodie', 'roughneck-hz063-blue-black-trigger-hoodie', '<p>Roughneck Hoodie</p>', '<p>Roughneck HZ063 Blue Black Trigger Hoodie</p><p style=\"margin: var(--space-rte-paragraph) 0;\">Terbuat dari bahan Cotton fleece yang &nbsp;nyaman dikenakan, ditambah grafis dari sablon Plastisol, sehingga jaket ini sangat cocok untuk aktivitas indoor maupun outdoor.</p><p style=\"margin: var(--space-rte-paragraph) 0;\"><br></p><p style=\"margin: var(--space-rte-paragraph) 0;\">Detail Ukuran Produk: Panjang Badan x Lebar Badan x Panjang Tangan</p><p style=\"margin: var(--space-rte-paragraph) 0;\">S : &nbsp;(64 x 50 x 60)</p><p style=\"margin: var(--space-rte-paragraph) 0;\">M : (67 x 53 x 61.5)&nbsp;</p><p style=\"margin: var(--space-rte-paragraph) 0;\">L : (70 x 56 x 63)</p><p style=\"margin: var(--space-rte-paragraph) 0;\">XL : (73 x 59 x 64.5)</p><p style=\"margin: var(--space-rte-paragraph) 0;\">XXL : (76 x 62 x 65.5)</p><p style=\"margin: var(--space-rte-paragraph) 0;\">*Disarankan menambah toleransi ukuran sepanjang 1 cm</p><p style=\"margin: var(--space-rte-paragraph) 0;\"><br></p><p style=\"margin: var(--space-rte-paragraph) 0;\">Detail pada model : Tinggi (178) cm, Berat (75) kg, mengenakan ukuran (XL)</p><p style=\"margin: var(--space-rte-paragraph) 0;\"><br style=\"color: rgb(68, 68, 68); font-family: &quot;DIN Next&quot;, sans-serif; font-weight: 700; background-color: rgb(243, 243, 243);\"></p>', '/storage/photos/1/Products/hodie1.jpg,/storage/photos/1/Products/hodie2.jpg', 21, 'M,L,XL', 'default', 'active', 33.00, 75.00, 0, 1, 6, 10, '2024-12-17 09:36:33', '2024-12-17 09:37:14'),
(17, 'Wallts Dompet Lipat Kanvas Pria Anti Air - Keio Motif', 'wallts-dompet-lipat-kanvas-pria-anti-air-keio-motif', '<p>Dompet Lipat</p>', '<p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">DESKRIPSI:</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">Kamu suka bawa kartu banyak? Type Keio ini cocok buat kamu. Di design basic trifold untuk menampung 11 kartu kamu. Mau taro foto? Gak perlu khawatir, bisa kok! FYI, Type Keio ini type paling best seller looh di Wallts!</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">\r\n</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">SPESIFIKASI:</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">-Bahan polyester kanvas</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">-2 tempat uang kertas</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">-1 tempat uang rahasia</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">-1 tempat photo</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">-11 tempat kartu</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">-Dimensi 9 x 11cm</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">__________________________________________________________________________________________________________________________</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">REKOMENDASI VARIAN:</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">-Keio Dune </p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">-Keio Cruiser</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">-Keio Troops </p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">-Keio Cloak Camo</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">-Keio Spilbury  </p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">-Keio Neehan </p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">-Keio ELS </p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">-Keio Explore </p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">-Keio Sprinkle Navy</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">-Keio Sprinkle Black</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">-Keio Hexa Black </p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">-Keio Hexa Navy </p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">-Keio Dark Camo </p>', '/storage/photos/1/Products/dompet1.jpg,/storage/photos/1/Products/dompet2.jpg', 298, '', 'new', 'active', 13.00, 39.00, 0, 3, NULL, 20, '2024-12-17 09:51:24', '2024-12-17 09:51:24'),
(18, 'MSMO Clay Wrap Skirt Shirt Dress', 'msmo-clay-wrap-skirt-shirt-dress', '<p>Dress Girl</p>', '<p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">MSMO Clay Wrap Skirt Shirt Dress / Dress Wanita / Dress Casual Midi V-Neck</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">Fabric two toned woven, Dress wrap assymetricalskirt, Wrap skirt dapat diikat kebelakang</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">– Available in 5 Color : Grey | Black | Mocca | Khaki | Brown</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">– Available in one size : Bust 104 cm | Waist 98 cm | Length 112 cm</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">* Please allow 1-3 cm differences due to manual measurement and colors may change due to lighting setting or different display.</p>', '/storage/photos/1/Products/msmo1.jpg,/storage/photos/1/Products/msmo2.jpg', 31, '', 'hot', 'active', 28.00, 60.00, 1, 2, 15, 21, '2024-12-17 21:53:06', '2024-12-17 21:53:06');
INSERT INTO `products` (`id`, `title`, `slug`, `summary`, `description`, `photo`, `stock`, `size`, `condition`, `status`, `price`, `discount`, `is_featured`, `cat_id`, `child_cat_id`, `brand_id`, `created_at`, `updated_at`) VALUES
(19, 'Lanccelot Lionheart Unicorn Watch for Men and Women', 'jam-tangan-lanccelot-lionheart-of-unicorn-pria-dan-wanita', '<p>Wristwatch</p>', '<p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">Gender : Unisex</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">Case Size : 38.6 x 33.3 (mm)</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">Case Thickness : 8 (mm)</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">Case Material : Stainless Steel</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">Glass Material : Sapphire Glass with Scratch Resistant</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">Movement : Japanese Quartz Movement 3 hands with Calender</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">Strap : Mesh Strap</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">Strap Width : 18 (mm)</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">Interchangeable Straps &amp; Quick Release : Yes</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">Water Resistant : 5 ATM</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">Luminous : Yes</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">Warranty : 1 Year</p>', '/storage/photos/1/Products/lacelot1.jpg,/storage/photos/1/Products/lacelot2.jpg', 29, '', 'hot', 'active', 49.00, 3.00, 0, 3, NULL, 21, '2024-12-17 22:01:37', '2024-12-18 22:57:33'),
(20, 'Tas Wanita Moi Mini Bucket Bag', 'tas-wanita-moi-mini-bucket-bag', '<p>Tas Wanita</p>', '<p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">Introducing the Moi Mini Bucket Bag – your go-to companion for a vacation filled with style and convenience. Say goodbye to the hassle of rummaging through your bag to find what you need – the Moi Mini Bucket Bag keeps everything in its place, ensuring you can focus on enjoying your vacation to the fullest.</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">\r\n</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">\r\n</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">a.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Bahan: Faux Vegan Leather with Smooshy Texture</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">b.&nbsp;&nbsp;&nbsp;&nbsp; Keywords: Bucket Bag, Tas Serut, Sling Bag, Free Bag Charm</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">c.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Spec dan Details</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Size: 27cm (P) x 13.5cm x 18cm (L diameter) x 16cm (T)</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Compartment: Compartment utama dengan bukaan tali serut</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Muatan: Make Up, Handphone, Handsanitizer, Kunci Mobil dan essential things lainnya</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Packaging: Reusable Zip Lock </p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">\r\n</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">.       Include: </p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">Moi Bag Charm</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">\r\n</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">USP:</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">- Vacation Bag: Level up your outfit! Tas yang cocok digunakan ketika weekend ataupun berlibur</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">- Unique: Berbentuk bucket dengan bukaan Bukaan drawstring yang mudah untuk dibuka tutup serta aksen lilit pada sling</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">- Smooshy: Memiliki handfeel smooth and squishy</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">Free Charm: Include the trendy detachable carabiner charm</p>', '/storage/photos/1/Products/tas1.jpg', 20, '', 'default', 'active', 18.00, 47.00, 0, 2, NULL, 23, '2024-12-17 22:19:23', '2024-12-17 22:19:23'),
(22, 'Aerostreet 37-40 Leona Putih Putih Merah Muda - Sepatu Sneakers Casual Sport Pria Wanita Aero Street', 'aerostreet-37-40-leona-putih-putih-merah-muda-sepatu-sneakers-casual-sport-pria-wanita-aero-street', '<p>Sneakers Aerostreet</p>', '<p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">TIDAK AKAN JEBOL setelah dicuci atau kehujanan karena menggunakan technologi baru Shoes Injection Mould bahan sole dicairkan dengan tekanan tinggi menyatu sempurna dengan bahan kain dari sepatu tanpa menggunakan proses lem.</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">\r\n</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">Bahan : Kanvas - Mesh - Kulit sintetis</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">\r\n</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">Panduan ukuran :</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">\r\n</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">Ukuran 37 Panjang telapak kaki 23.9 cm</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">Ukuran 38 Panjang telapak kaki 24.6 cm</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">Ukuran 39 Panjang telapak kaki 25.2 cm</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">Ukuran 40 Panjang telapak kaki 25.9 cm</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">\r\n</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">Belanja langsung dari pabrik nya</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">now everyone can buy a good shoe</p>', '/storage/photos/31/Products/aero1.jpg,/storage/photos/31/Products/aero2.jpg,/storage/photos/31/Products/aero3.jpg', 100, '', 'default', 'active', 20.00, 35.00, 0, 2, 16, 24, '2024-12-18 22:14:48', '2024-12-18 22:14:48'),
(23, 'COTTONINK - Women\'s Patchwork Shirt Top Arnika #RetroCollection', 'cottonink-atasan-kemeja-wanita-patchwork-arnika-retrocollection', '<p>Women\'s shirt</p>', '<p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">Details\r\nMade from airy cotton, this shirt is designed with an oversized collar and billowy sleeves that exude effortless sophistication.\r\n\r\nNOTES:\r\nProduct size might have 1-2 cm differences due to measuring in production process.\r\nThe colors shown may be different from the original products because of the settings of your display screen. We can not guarantee it can be accurate.\r\n\r\nInfo &amp; Care\r\n100% Cotton\r\nLight Weight\r\nMachine wash cold. Wash with similar colors\r\nMedium iron temperature\r\n\r\nSize Guide\r\nAvailable in 6 sizes: Small, Medium, Large, Extra Large,2Extra Large,3Extra Large.\r\n\r\nSize S\r\nLength From Shoulder: 59 cm\r\nChest: 98 cm\r\nArmhole: 47 cm\r\nSleeve Opening: 21 cm\r\nSleeve Length: 58 cm\r\nBottom Width: 118 cm\r\n\r\nSize M\r\nLength From Shoulder: 60 cm\r\nChest: 102 cm\r\nArmhole: 49 cm\r\nSleeve Opening: 22 cm\r\nSleeve Length: 60 cm\r\nBottom Width: 122 cm\r\n\r\nSize L\r\nLength From Shoulder: 61 cm\r\nChest: 106 cm\r\nArmhole: 51 cm\r\nSleeve Opening: 23 cm\r\nSleeve Length: 62 cm\r\nBottom Width: 126 cm\r\n\r\nSize XL\r\nLength From Shoulder: 62 cm\r\nChest: 110 cm\r\nArmhole: 53 cm\r\nSleeve Opening: 24 cm\r\nSleeve Length: 63 cm\r\nBottom Width: 130 cm</span></p>', '/storage/photos/31/Products/cotoni1.jpg,/storage/photos/31/Products/cotoni2.jpg,/storage/photos/31/Products/cotoni3.jpg', 74, 'S,M,L,XL', 'hot', 'active', 22.00, 5.00, 0, 2, 15, 25, '2024-12-18 22:25:16', '2024-12-18 22:59:00'),
(24, 'JIMS HONEY LITTLE AGNES WALLET WOMEN\'S FOLDING WALLET', 'jims-honey-little-agnes-wallet-womens-folding-wallet', 'Jims honey wallet', '<p>New Arrival -&nbsp;</p><p>“LITTLE AGNES WALLET FROM JIMS HONEY”</p><p><br></p><p>The Agnes Wallet is designed to provide comfort and style in managing daily finances. Made of Croco material, this wallet offers durability and an elegant appearance while conveying a luxurious impression.</p><p><br></p><p>With 1 pocket on the outside of the wallet and 8 card slots, 1 photo slot, 1 coin storage compartment, and 5 cash storage compartments, the Little Agnes Wallet provides extraordinary functionality for the everyday needs of JHLadies.</p><p><br></p><p>Get practicality and style with the Little Agnes Wallet that meets the functional and aesthetic needs of JHLadies! So go get yours now!! 😉</p><p><br></p><p>PRICE: IDR 156,000 SALE 50% for IDR 78,000</p><p><br></p><p>Details:</p><p>Material: Croco Leather</p><p>Weight: 140 g</p><p>Size when closed: 12.5 x 2 x 9.5 cm</p><p>Size when open: 20 x 12.5 cm</p><p>Available in 8 colors</p><p><br></p><p>- Closure with Button material</p><p>- Contains 1 large space for Cash Storage</p><p>- Contains 1 Zip pocket for coin storage</p><p>- Contains 8 Card slots</p><p>- Contains 1 open space with 1 removable card pocket divider inside</p><p>- Contains 3 Photo storage compartments</p><p>- Contains 5 cash/bill storage compartments, etc.</p><p><br></p><p>#JimsHoney #ICarryJH #JHLadies #LittleAgnesWallet #JHLittleAgnes #JHLittleAgnesWallet #jimsoneywallet #JHWallet</p>', '/storage/photos/31/Products/jimhoney1.jpg', 100, '', 'new', 'active', 10.00, 54.00, 0, 2, 18, 26, '2024-12-18 22:43:11', '2024-12-18 22:43:11'),
(25, 'Roughneck VB004 Army Fighters Varsity Jacket - Green', 'roughneck-vb004-army-fighters-varsity-jacket-green', '<p>Roughneck varsity jacket</p>', '<p>Welcome to kojellgozelle, we sell various kinds of compass shoes at the lowest prices and of course the goods we sell are 100% ORIGINAL and proudly made in Indonesia.</p><p><br></p><p>MONEY BACK GUARANTEE IF THE PRODUCT WE SELL IS NOT 100% ORIGINAL PLEASE CHECK THE PRODUCT REVIEW.</p><p><br></p><p>Roughneck VB004 Army Fighters Varsity Jacket.</p><p>Material: fleece &amp; synthetic leather</p><p>Size: S M L XL</p><p>Status: Ready Stock</p><p><br></p><p>➖➖➖➖➖➖➖➖➖➖➖</p><p><br></p><p>S = Body Length x Body Width x Hand Length: 62 cm x 54 cm x 54CM</p><p><br></p><p>M = Body Length x Body Width x Hand Length: 64 cm x 57 cm x 55cm</p><p><br></p><p>L = Body Length x Body Width x Hand Length: 66 cm x 60 cm x 57CM</p><p><br></p><p>XL = Body Length x Body Width x Hand Length: 68 cm x 63 cm x 59cm</p><p><br></p><p>If the package arrives later, please record the unboxing video as evidence if there are problems with the product.</p><p><br></p><p>Ask first before ordering because availability is limited.</p>', '/storage/photos/31/Products/varsity1.jpg,/storage/photos/31/Products/varsity2.jpg,/storage/photos/31/Products/varsitty3.jpg', 135, 'S,M,L,XL', 'hot', 'active', 26.00, 10.00, 0, 1, 6, 10, '2024-12-18 22:54:34', '2024-12-18 22:54:34'),
(26, 'Cap Theona Black Thanksinsomnia', 'cap-theona-black-thanksinsomnia', '<p>Capp</p>', '<p><span style=\"color: rgb(33, 33, 33); font-family: &quot;Open Sauce One&quot;, sans-serif; font-size: 14px;\">Classic and comfortable cap featuring a patch on the front.</span></p>', '/storage/photos/31/Products/cap1.jpg,/storage/photos/31/Products/cap2.jpg', 196, '', 'hot', 'active', 12.00, 54.00, 0, 1, 19, 12, '2024-12-18 23:12:36', '2024-12-18 23:48:44'),
(27, 'Geoff Max - Jarvis Brown Gum Men\'s Shoes Sneakers Casual Canvas Shoes', 'geoff-max-jarvis-brown-gum-mens-shoes-sneakers-casual-canvas-shoes', '<p>Geoff Max Shoes</p>', '<p>Jarvis Brown Gum</p><p><br></p><p>Specifications:</p><p><br></p><p>1. Upper Canvas</p><p><br></p><p>A specially developed and updated Canvas material. This canvas was created for Geoff\'s shoes and is designed to resist color changes over time, ensuring the shoes look new for longer.</p><p><br></p><p>2. Outsole Thermo Rubber</p><p><br></p><p>The outsole of these shoes uses Thermo Rubber material that is highly abrasion-resistant, has low friction, and is very suitable for various types of sports. This outsole provides optimal traction and ensures stability during physical activities.</p><p><br></p><p>Jarvis Brown Gum combines strength, comfort, and performance in an elegant and durable design. These shoes are ideal for use in various conditions and activities.</p>', '/storage/photos/31/Products/geoff1.jpg,/storage/photos/31/Products/geoff2.jpg,/storage/photos/31/Products/geoff3.jpg', 345, '', 'default', 'active', 22.00, 20.00, 1, 1, 20, 11, '2024-12-18 23:30:53', '2024-12-18 23:30:53'),
(28, 'baju', 'baju', '<p>123</p>', '<p>beli lek</p>', '/storage/photos/31/Products/erigo1.jpg', 100, 'S,L', 'hot', 'active', 20.00, 8.00, 0, 1, 4, 1, '2024-12-19 03:04:36', '2024-12-19 03:04:36');

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `product_id` bigint UNSIGNED DEFAULT NULL,
  `rate` tinyint NOT NULL DEFAULT '0',
  `review` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_reviews`
--

INSERT INTO `product_reviews` (`id`, `user_id`, `product_id`, `rate`, `review`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, NULL, 5, 'nice product', 'active', '2020-08-15 07:44:05', '2020-08-15 07:44:05'),
(2, 2, NULL, 5, 'nice', 'active', '2020-08-17 21:08:14', '2020-08-17 21:18:31'),
(3, 2, 26, 5, 'cap but not cap', 'active', '2024-12-18 23:38:50', '2024-12-18 23:38:50');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_des` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `description`, `short_des`, `logo`, `photo`, `address`, `phone`, `email`, `created_at`, `updated_at`) VALUES
(1, '<div style=\"text-align: justify; \"><b>lokalkita.id E- commerce Khusus Brand Lokal #1 di Indonesia</b></div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\">lokalkita.id merupakan e - commerce khusus brand lokal pertama di Indonesia. Menyediakan lebih dari 150 brand fashion lokal, lokalkita.id menawarkan beragam produk fashion yang meliputi koleksi siap pakai, tas, sepatu, jam tangan, dan aksesori eksklusif lainnya. Ragam lokal brand seperti Erigo, Merchè, Buttonscarves, Eiger, This Is April, Major Minor, RSCH, COTTONINK, Doris Dorothea, Compas, dan masih banyak lagi, lokalkita.id menghadirkan pilihan yang menarik untuk melengkapi berbagai jenis gaya.</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\">Keaslian produk menjadi prioritas utama lokalkita.id. Melakukan transaksi tidak perlu ragu karena setiap produk yang disediakan terjamin 100% ASLI. Selalu menghadirkan koleksi terbaru dan sesuai dengan tren terkini, gaya dan tampilan pun akan terus terbaru.</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\">Dengan lebih dari 100.000 produk yang tersedia, lokalkita.id memiliki KOLEKSI TERLENGKAP untuk memenuhi semua kebutuhan fashion. Mulai dari tas Jims Honey berdesain unik hingga sepatu Aerostreet yang diminati banyak orang. Melengkapi koleksi di lokalkita.id, berbagai pilihan jam tangan keren seperti Lancelot, Dekade, Bono Watch, dan Parlént Watch dapat menjadi pilihan Anda.</div><div style=\"text-align: justify; \"><br></div><div style=\"text-align: justify;\">Nikmati pengalaman berbelanja online dengan mudah dan nyaman melalui aplikasi maupun website lokalkita.id. Berbelanja produk merek lokal bisa dilakukan dengan mudah, di manapun dan kapanpun.</div>', '<blockquote style=\"text-align: justify;\"><span style=\"font-size: 1rem;\">lokalkita.id merupakan e - commerce khusus brand lokal pertama di Indonesia. Menyediakan lebih dari 150 brand fashion lokal, lokalkita.id menawarkan beragam produk fashion yang meliputi koleksi siap pakai, tas, sepatu, jam tangan, dan aksesori eksklusif lainnya. Ragam lokal brand seperti Erigo, Merchè, Buttonscarves, Eiger, This Is April, Major Minor, RSCH, COTTONINK, Doris Dorothea, Compas, dan masih banyak lagi, lokalkita.id menghadirkan pilihan yang menarik untuk melengkapi berbagai jenis gaya.</span></blockquote>', '/storage/photos/1/logo2.png', '/storage/photos/1/blog3.jpg', 'Jl. Kali Abang Tengah No.8, Perwira, Kec. Bekasi Utara, Kota Bks, Jawa Barat 17122', '+62 812-8079-4577', 'lokalkita@gmail.com', NULL, '2024-12-18 21:47:42');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint UNSIGNED NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `type`, `price`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Kahtmandu', '100.00', 'inactive', '2020-08-14 04:22:17', '2024-12-16 18:57:41'),
(2, 'Out of valley', '300.00', 'inactive', '2020-08-14 04:22:41', '2024-12-16 18:57:46'),
(3, 'Pokhara', '400.00', 'inactive', '2020-08-15 06:54:04', '2024-12-16 18:57:57'),
(4, 'Dharan', '400.00', 'inactive', '2020-08-17 20:50:48', '2024-12-17 06:23:33'),
(5, 'JNE', '25.00', 'active', '2024-12-16 18:56:48', '2024-12-16 18:56:48'),
(6, 'JNT', '15.00', 'active', '2024-12-16 18:57:22', '2024-12-16 18:57:22'),
(7, 'SI CEPAT', '35.00', 'active', '2024-12-16 18:58:36', '2024-12-16 18:58:36');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` enum('admin','user') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `provider` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `photo`, `role`, `provider`, `provider_id`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$GOGIJdzJydYJ5nAZ42iZNO3IL1fdvXoSPdUOH3Ajy5hRmi0xBmTzm', '/storage/photos/1/users/Screenshot 2023-11-20 112050.png', 'admin', NULL, NULL, 'active', '2hNVI1gZJipmPtwSnWnijYAq8lgUVlzDfL1aR8uySQaKKeNnWrUOuc6R1p8v', NULL, '2024-12-18 08:57:34'),
(2, 'User', 'user@gmail.com', NULL, '$2y$10$10jB2lupSfvAUfocjguzSeN95LkwgZJUM7aQBdb2Op7XzJ.BhNoHq', '/storage/photos/1/users/user2.jpg', 'user', NULL, NULL, 'active', NULL, NULL, '2020-08-15 07:30:07'),
(3, 'Prajwal Rai', 'prajwal.iar@gmail.com', NULL, '$2y$10$15ZVMgH040v4Ukf9KSAFiucPJcfDwmeRKCaguVJBXplTs93m48F1G', '/storage/photos/1/users/user3.jpg', 'user', NULL, NULL, 'active', NULL, '2020-08-11 04:20:58', '2020-08-15 07:56:58'),
(31, 'FAIZZ', 'faiz@gmail.com', NULL, '$2y$10$B/GVH6yBXpEve36Pf/MB8eBFM425CkkEdK/5MGXFiROEh/XkuhM9K', '/storage/photos/1/users/jinwoo.jpg', 'admin', NULL, NULL, 'active', NULL, '2024-12-18 09:12:28', '2024-12-18 09:13:37'),
(32, 'renata', 'renata@gmail.com', NULL, '$2y$10$UY.yc.Sm3BrpduB1nPfAmedZu8aIRelbIYSX1E8e4u8wI1rvMjXcm', NULL, 'user', NULL, NULL, 'active', NULL, '2024-12-19 02:03:58', '2024-12-19 02:03:58');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `cart_id` bigint UNSIGNED DEFAULT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `price` double(8,2) NOT NULL,
  `quantity` int NOT NULL,
  `amount` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `banners_slug_unique` (`slug`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_slug_unique` (`slug`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_product_id_foreign` (`product_id`),
  ADD KEY `carts_user_id_foreign` (`user_id`),
  ADD KEY `carts_order_id_foreign` (`order_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`),
  ADD KEY `categories_added_by_foreign` (`added_by`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_order_number_unique` (`order_number`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_shipping_id_foreign` (`shipping_id`);

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
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_post_cat_id_foreign` (`post_cat_id`),
  ADD KEY `posts_post_tag_id_foreign` (`post_tag_id`),
  ADD KEY `posts_added_by_foreign` (`added_by`);

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `post_categories_slug_unique` (`slug`);

--
-- Indexes for table `post_comments`
--
ALTER TABLE `post_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_comments_user_id_foreign` (`user_id`),
  ADD KEY `post_comments_post_id_foreign` (`post_id`);

--
-- Indexes for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `post_tags_slug_unique` (`slug`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_brand_id_foreign` (`brand_id`),
  ADD KEY `products_cat_id_foreign` (`cat_id`),
  ADD KEY `products_child_cat_id_foreign` (`child_cat_id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_reviews_user_id_foreign` (`user_id`),
  ADD KEY `product_reviews_product_id_foreign` (`product_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlists_product_id_foreign` (`product_id`),
  ADD KEY `wishlists_user_id_foreign` (`user_id`),
  ADD KEY `wishlists_cart_id_foreign` (`cart_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `post_comments`
--
ALTER TABLE `post_comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `post_tags`
--
ALTER TABLE `post_tags`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_added_by_foreign` FOREIGN KEY (`added_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_shipping_id_foreign` FOREIGN KEY (`shipping_id`) REFERENCES `shippings` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_added_by_foreign` FOREIGN KEY (`added_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `posts_post_cat_id_foreign` FOREIGN KEY (`post_cat_id`) REFERENCES `post_categories` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `posts_post_tag_id_foreign` FOREIGN KEY (`post_tag_id`) REFERENCES `post_tags` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `post_comments`
--
ALTER TABLE `post_comments`
  ADD CONSTRAINT `post_comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `post_comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `products_cat_id_foreign` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `products_child_cat_id_foreign` FOREIGN KEY (`child_cat_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD CONSTRAINT `product_reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `product_reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `wishlists_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `wishlists_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
