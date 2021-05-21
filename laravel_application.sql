-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2021 at 10:03 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_application`
--

-- --------------------------------------------------------

--
-- Table structure for table `app_settings`
--

CREATE TABLE `app_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `app_settings`
--

INSERT INTO `app_settings` (`id`, `key`, `value`) VALUES
(7, 'date_format', 'l jS F Y (H:i:s)'),
(8, 'language', 'en'),
(17, 'is_human_date_format', '1'),
(18, 'app_name', 'Food Delivery'),
(19, 'app_short_description', 'Manage Mobile Application'),
(20, 'mail_driver', 'smtp'),
(21, 'mail_host', 'smtp.hostinger.com'),
(22, 'mail_port', '587'),
(23, 'mail_username', 'fooddelivery@smartersvision.com'),
(24, 'mail_password', ''),
(25, 'mail_encryption', 'ssl'),
(26, 'mail_from_address', 'fooddelivery@smartersvision.com'),
(27, 'mail_from_name', 'Smarter Vision'),
(30, 'timezone', 'America/Montserrat'),
(32, 'theme_contrast', 'light'),
(33, 'theme_color', 'primary'),
(34, 'app_logo', '020a2dd4-4277-425a-b450-426663f52633'),
(35, 'nav_color', 'navbar-light bg-white'),
(38, 'logo_bg_color', 'bg-white'),
(66, 'default_role', 'admin'),
(68, 'facebook_app_id', '518416208939727'),
(69, 'facebook_app_secret', '93649810f78fa9ca0d48972fee2a75cd'),
(71, 'twitter_app_id', 'twitter'),
(72, 'twitter_app_secret', 'twitter 1'),
(74, 'google_app_id', '527129559488-roolg8aq110p8r1q952fqa9tm06gbloe.apps.googleusercontent.com'),
(75, 'google_app_secret', 'FpIi8SLgc69ZWodk-xHaOrxn'),
(77, 'enable_google', '1'),
(78, 'enable_facebook', '1'),
(93, 'enable_stripe', '1'),
(94, 'stripe_key', 'pk_test_pltzOnX3zsUZMoTTTVUL4O41'),
(95, 'stripe_secret', 'sk_test_o98VZx3RKDUytaokX4My3a20'),
(101, 'custom_field_models.0', 'App\\Models\\User'),
(104, 'default_tax', '10'),
(107, 'default_currency', '$'),
(108, 'fixed_header', '0'),
(109, 'fixed_footer', '0'),
(110, 'fcm_key', 'AAAAHMZiAQA:APA91bEb71b5sN5jl-w_mmt6vLfgGY5-_CQFxMQsVEfcwO3FAh4-mk1dM6siZwwR3Ls9U0pRDpm96WN1AmrMHQ906GxljILqgU2ZB6Y1TjiLyAiIUETpu7pQFyicER8KLvM9JUiXcfWK'),
(111, 'enable_notifications', '1'),
(112, 'paypal_username', 'sb-z3gdq482047_api1.business.example.com'),
(113, 'paypal_password', 'JV2A7G4SEMLMZ565'),
(114, 'paypal_secret', 'AbMmSXVaig1ExpY3utVS3dcAjx7nAHH0utrZsUN6LYwPgo7wfMzrV5WZ'),
(115, 'enable_paypal', '1'),
(116, 'main_color', '#ea5c44'),
(117, 'main_dark_color', '#ea5c44'),
(118, 'second_color', '#344968'),
(119, 'second_dark_color', '#ccccdd'),
(120, 'accent_color', '#8c98a8'),
(121, 'accent_dark_color', '#9999aa'),
(122, 'scaffold_dark_color', '#2c2c2c'),
(123, 'scaffold_color', '#fafafa'),
(124, 'google_maps_key', 'AIzaSyAT07iMlfZ9bJt1gmGj9KhJDLFY8srI6dA'),
(125, 'mobile_language', 'en'),
(126, 'app_version', '2.2.0'),
(127, 'enable_version', '1'),
(128, 'default_currency_id', '1'),
(129, 'default_currency_code', 'USD'),
(130, 'default_currency_decimal_digits', '2'),
(131, 'default_currency_rounding', '0'),
(132, 'currency_right', '0');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(10) UNSIGNED NOT NULL,
  `food_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart_extras`
--

CREATE TABLE `cart_extras` (
  `extra_id` int(10) UNSIGNED NOT NULL,
  `cart_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Sandwiches', 'Deleniti alias et sint id similique dolore deserunt. Est vitae quo sint aperiam esse maiores delectus. Molestiae et inventore illum officiis. Quis vero quae cum suscipit magnam. Et voluptatum at quia tempore.', '2020-07-06 02:02:59', '2020-07-06 02:02:59'),
(2, 'Protein', 'Deserunt sit excepturi qui dolore autem consequatur ipsam. Quisquam adipisci quos reprehenderit ea eveniet rerum porro. Officiis non dolores velit ab. Dignissimos modi cupiditate minima culpa est dolore. Voluptates odio id tempora aliquid earum.', '2020-07-06 02:02:59', '2020-07-06 02:02:59'),
(3, 'Protein', 'Consequatur aliquid animi aperiam voluptates eligendi. In sapiente reiciendis quis ratione et unde sit. Eaque eius ut autem omnis at minima non ipsa. Necessitatibus quidem et amet cupiditate voluptatum eaque. Voluptatibus id fugiat est dolorem fugit voluptas.', '2020-07-06 02:02:59', '2020-07-06 02:02:59'),
(4, 'Grains', 'Et quis modi reiciendis quo reiciendis. Vel qui maiores qui iure. Ut accusamus quos expedita est sunt sed ab. Dolorem sint dolor excepturi aut ut. Voluptatem beatae a assumenda est recusandae odit sit id.', '2020-07-06 02:02:59', '2020-07-06 02:02:59'),
(5, 'Drinks', 'Voluptas corporis in magnam ad. Et voluptates minus alias molestias ut. Corrupti quod adipisci libero dolorem veritatis. Vel ut ratione explicabo labore odio assumenda dolorem. Aspernatur distinctio inventore omnis exercitationem totam.', '2020-07-06 02:02:59', '2020-07-06 02:02:59'),
(6, 'Vegetables', 'Autem quod ratione nemo atque qui culpa. Quibusdam totam veniam consequatur vel rerum ut. Iure esse optio inventore provident. Dolorum delectus eum libero illum. Explicabo voluptatem dolorum incidunt amet perspiciatis dolor qui.', '2020-07-06 02:02:59', '2020-07-06 02:02:59');

-- --------------------------------------------------------

--
-- Table structure for table `cuisines`
--

CREATE TABLE `cuisines` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cuisines`
--

INSERT INTO `cuisines` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Chinese', 'Eum similique maiores atque quia explicabo. Dolores quia placeat consequatur id quis perspiciatis. Ducimus sit ducimus officia labore maiores et porro. Est iusto natus nesciunt debitis consequuntur totam. Et illo et autem inventore earum corrupti.', '2020-04-11 09:33:21', '2020-04-11 09:33:21'),
(2, 'Indian', 'Eaque et aut natus. Minima blanditiis ut sunt distinctio ad. Quasi doloremque rerum ex rerum. Molestias similique similique aut rerum delectus blanditiis et. Dolorem et quas nostrum est nobis.', '2020-04-11 09:33:21', '2020-04-11 09:33:21'),
(3, 'Thai', 'Est nihil omnis natus ducimus ducimus excepturi quos. Et praesentium in quia veniam. Tempore aut nesciunt consequatur pariatur recusandae. Voluptatem commodi eius quaerat est deleniti impedit. Qui quo harum est sequi incidunt labore eligendi cum.', '2020-04-11 09:33:21', '2020-04-11 09:33:21'),
(4, 'Greek', 'Ex nostrum suscipit aut et labore. Ut dolor ut eum eum voluptatem ex. Sapiente in tempora soluta voluptatem. Officia accusantium quae sit. Rerum esse ipsa molestias dolorem et est autem consequatur.', '2020-04-11 09:33:21', '2020-04-11 09:33:21'),
(5, 'Vietnamese', 'Dolorum earum ut blanditiis blanditiis. Facere quis voluptates assumenda saepe. Ab aspernatur voluptatibus rem doloremque cum impedit. Itaque blanditiis commodi repudiandae asperiores. Modi atque placeat consectetur et aut blanditiis.', '2020-04-11 09:33:21', '2020-04-11 09:33:21'),
(6, 'French', 'Est et iste enim. Quam repudiandae commodi rerum non esse. Et in aut sequi est aspernatur. Facere non modi expedita asperiores. Ipsa laborum saepe deserunt qui consequatur voluptas inventore dolorum.', '2020-04-11 09:33:21', '2020-04-11 09:33:21');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(63) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `decimal_digits` tinyint(3) UNSIGNED DEFAULT NULL,
  `rounding` tinyint(3) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `symbol`, `code`, `decimal_digits`, `rounding`, `created_at`, `updated_at`) VALUES
(1, 'US Dollar', '$', 'USD', 2, 0, '2019-10-22 10:20:48', '2019-10-22 10:20:48'),
(2, 'Euro', '€', 'EUR', 2, 0, '2019-10-22 10:21:39', '2019-10-22 10:21:39'),
(3, 'Indian Rupee', 'টকা', 'INR', 2, 0, '2019-10-22 10:22:50', '2019-10-22 10:22:50'),
(4, 'Indonesian Rupiah', 'Rp', 'IDR', 0, 0, '2019-10-22 10:23:22', '2019-10-22 10:23:22'),
(5, 'Brazilian Real', 'R$', 'BRL', 2, 0, '2019-10-22 10:24:00', '2019-10-22 10:24:00'),
(6, 'Cambodian Riel', '៛', 'KHR', 2, 0, '2019-10-22 10:25:51', '2019-10-22 10:25:51'),
(7, 'Vietnamese Dong', '₫', 'VND', 0, 0, '2019-10-22 10:26:26', '2019-10-22 10:26:26');

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields`
--

CREATE TABLE `custom_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(56) COLLATE utf8mb4_unicode_ci NOT NULL,
  `values` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disabled` tinyint(1) DEFAULT NULL,
  `required` tinyint(1) DEFAULT NULL,
  `in_table` tinyint(1) DEFAULT NULL,
  `bootstrap_column` tinyint(4) DEFAULT NULL,
  `order` tinyint(4) DEFAULT NULL,
  `custom_field_model` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custom_fields`
--

INSERT INTO `custom_fields` (`id`, `name`, `type`, `values`, `disabled`, `required`, `in_table`, `bootstrap_column`, `order`, `custom_field_model`, `created_at`, `updated_at`) VALUES
(4, 'phone', 'text', NULL, 0, 0, 0, 6, 2, 'App\\Models\\User', '2019-09-06 16:00:00', '2019-09-06 16:01:47'),
(5, 'bio', 'textarea', NULL, 0, 0, 0, 6, 1, 'App\\Models\\User', '2019-09-06 16:13:58', '2019-09-06 16:13:58'),
(6, 'address', 'text', NULL, 0, 0, 0, 6, 3, 'App\\Models\\User', '2019-09-06 16:19:22', '2019-09-06 16:19:22');

-- --------------------------------------------------------

--
-- Table structure for table `custom_field_values`
--

CREATE TABLE `custom_field_values` (
  `id` int(10) UNSIGNED NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci,
  `view` longtext COLLATE utf8mb4_unicode_ci,
  `custom_field_id` int(10) UNSIGNED NOT NULL,
  `customizable_type` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customizable_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custom_field_values`
--

INSERT INTO `custom_field_values` (`id`, `value`, `view`, `custom_field_id`, `customizable_type`, `customizable_id`, `created_at`, `updated_at`) VALUES
(29, '+136 226 5669', '+136 226 5669', 4, 'App\\Models\\User', 2, '2019-09-06 16:22:30', '2019-09-06 16:22:30'),
(30, 'Lobortis mattis aliquam faucibus purus. Habitasse platea dictumst vestibulum rhoncus est pellentesque elit. Nunc vel risus commodo viverra maecenas accumsan lacus vel.', 'Lobortis mattis aliquam faucibus purus. Habitasse platea dictumst vestibulum rhoncus est pellentesque elit. Nunc vel risus commodo viverra maecenas accumsan lacus vel.', 5, 'App\\Models\\User', 2, '2019-09-06 16:22:30', '2019-10-16 14:02:35'),
(31, '2911 Corpening Drive South Lyon, MI 48178', '2911 Corpening Drive South Lyon, MI 48178', 6, 'App\\Models\\User', 2, '2019-09-06 16:22:30', '2019-10-16 14:02:35'),
(32, '+136 226 5660', '+136 226 5660', 4, 'App\\Models\\User', 1, '2019-09-06 16:23:58', '2019-09-27 02:42:04'),
(33, 'Faucibus ornare suspendisse sed nisi lacus sed. Pellentesque sit amet porttitor eget dolor morbi non arcu. Eu scelerisque felis imperdiet proin fermentum leo vel orci porta', 'Faucibus ornare suspendisse sed nisi lacus sed. Pellentesque sit amet porttitor eget dolor morbi non arcu. Eu scelerisque felis imperdiet proin fermentum leo vel orci porta', 5, 'App\\Models\\User', 1, '2019-09-06 16:23:58', '2019-10-16 13:53:53'),
(34, '569 Braxton Street Cortland, IL 60112', '569 Braxton Street Cortland, IL 60112', 6, 'App\\Models\\User', 1, '2019-09-06 16:23:58', '2019-10-16 13:53:53'),
(35, '+1 098-6543-236', '+1 098-6543-236', 4, 'App\\Models\\User', 3, '2019-10-15 11:51:32', '2019-10-17 17:51:43'),
(36, 'Aliquet porttitor lacus luctus accumsan tortor posuere ac ut. Tortor pretium viverra suspendisse', 'Aliquet porttitor lacus luctus accumsan tortor posuere ac ut. Tortor pretium viverra suspendisse', 5, 'App\\Models\\User', 3, '2019-10-15 11:51:32', '2019-10-17 17:51:12'),
(37, '1850 Big Elm Kansas City, MO 64106', '1850 Big Elm Kansas City, MO 64106', 6, 'App\\Models\\User', 3, '2019-10-15 11:51:32', '2019-10-17 17:51:43'),
(38, '+1 248-437-7610', '+1 248-437-7610', 4, 'App\\Models\\User', 4, '2019-10-16 14:01:46', '2019-10-16 14:01:46'),
(39, 'Faucibus ornare suspendisse sed nisi lacus sed. Pellentesque sit amet porttitor eget dolor morbi non arcu. Eu scelerisque felis imperdiet proin fermentum leo vel orci porta', 'Faucibus ornare suspendisse sed nisi lacus sed. Pellentesque sit amet porttitor eget dolor morbi non arcu. Eu scelerisque felis imperdiet proin fermentum leo vel orci porta', 5, 'App\\Models\\User', 4, '2019-10-16 14:01:46', '2019-10-16 14:01:46'),
(40, '1050 Frosty Lane Sidney, NY 13838', '1050 Frosty Lane Sidney, NY 13838', 6, 'App\\Models\\User', 4, '2019-10-16 14:01:46', '2019-10-16 14:01:46'),
(41, '+136 226 5669', '+136 226 5669', 4, 'App\\Models\\User', 5, '2019-12-15 13:19:44', '2019-12-15 13:19:44'),
(42, '<p>Short Bio</p>', 'Short Bio', 5, 'App\\Models\\User', 5, '2019-12-15 13:19:44', '2019-12-15 13:19:44'),
(43, '4722 Villa Drive', '4722 Villa Drive', 6, 'App\\Models\\User', 5, '2019-12-15 13:19:44', '2019-12-15 13:19:44'),
(44, '+136 955 6525', '+136 955 6525', 4, 'App\\Models\\User', 6, '2020-03-29 11:58:04', '2020-03-29 11:58:04'),
(45, '<p>Short bio for this driver</p>', 'Short bio for this driver', 5, 'App\\Models\\User', 6, '2020-03-29 11:58:05', '2020-03-29 11:58:05'),
(46, '4722 Villa Drive', '4722 Villa Drive', 6, 'App\\Models\\User', 6, '2020-03-29 11:58:05', '2020-03-29 11:58:05');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_addresses`
--

CREATE TABLE `delivery_addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_addresses`
--

INSERT INTO `delivery_addresses` (`id`, `description`, `address`, `latitude`, `longitude`, `is_default`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Aut eius et officiis doloribus architecto commodi.', '954 Margarette Parks\nPort Forestbury, MS 12974', '53.498557', '7.446554', 1, 2, '2020-07-06 02:03:06', '2020-07-06 02:03:06'),
(2, 'Sit deserunt placeat velit dolores dolorum.', '374 Dickinson Manor\nMaddisonberg, CO 71885-9548', '51.814507', '7.233292', 1, 2, '2020-07-06 02:03:06', '2020-07-06 02:03:06'),
(3, 'Aut est quam dolorem labore et.', '364 Sonny Ridge Suite 840\nSouth Aiyanamouth, KS 42593-0196', '44.589322', '7.711223', 1, 2, '2020-07-06 02:03:06', '2020-07-06 02:03:06'),
(4, 'Dolorum debitis est molestiae odio.', '53489 Harris Ports Apt. 633\nWest Lianashire, MS 45942-0450', '50.480489', '8.349953', 0, 4, '2020-07-06 02:03:06', '2020-07-06 02:03:06'),
(5, 'Omnis laborum quam voluptatem ea corporis.', '83941 Price Centers\nRusselport, NJ 91431', '41.623678', '9.246292', 1, 4, '2020-07-06 02:03:06', '2020-07-06 02:03:06'),
(6, 'Nostrum quod quia est incidunt consequatur quidem.', '63964 Batz Garden\nSouth Bridgettechester, CT 56963', '42.629453', '8.937404', 0, 3, '2020-07-06 02:03:06', '2020-07-06 02:03:06'),
(7, 'Inventore sunt ut deleniti ab.', '616 Prince Fort\nEast Katheryn, IN 19530-6119', '49.245416', '7.3785', 0, 4, '2020-07-06 02:03:06', '2020-07-06 02:03:06'),
(8, 'Et facilis dolorem dolore incidunt necessitatibus deleniti.', '4320 Wehner Parkway\nChancefurt, OK 57291', '43.272964', '10.0542', 0, 6, '2020-07-06 02:03:06', '2020-07-06 02:03:06'),
(9, 'Vero enim sit ducimus consectetur ut fugit.', '294 Dorothy Branch\nHarrisside, MS 54580', '41.877727', '9.551533', 1, 4, '2020-07-06 02:03:06', '2020-07-06 02:03:06'),
(10, 'Pariatur officiis quidem alias labore molestias dolore reprehenderit ipsam.', '96507 Shanie Cove Apt. 584\nSouth Zackery, CO 02633', '48.994744', '10.709216', 0, 2, '2020-07-06 02:03:06', '2020-07-06 02:03:06'),
(11, 'Consectetur repudiandae temporibus distinctio ut sit animi qui.', '71408 Shields Key\nEast Florinemouth, MT 68403', '53.975672', '8.304131', 1, 5, '2020-07-06 02:03:07', '2020-07-06 02:03:07'),
(12, 'Incidunt eos minima et harum est sit tenetur reiciendis.', '47676 Beatty Village\nNorth Dorcas, ME 70137', '44.070378', '7.997482', 1, 1, '2020-07-06 02:03:07', '2020-07-06 02:03:07'),
(13, 'Blanditiis vitae et debitis.', '521 Makenzie Spur Suite 465\nLake Romafort, DC 56244-3200', '48.011164', '7.874014', 1, 5, '2020-07-06 02:03:07', '2020-07-06 02:03:07'),
(14, 'Fugit nulla qui quaerat et ipsam sunt.', '28495 Schowalter Wells Apt. 625\nMaudemouth, CA 32211', '41.025544', '8.279963', 1, 2, '2020-07-06 02:03:07', '2020-07-06 02:03:07'),
(15, 'Vel asperiores exercitationem qui voluptate laudantium inventore.', '87601 Jenkins Inlet\nBerneiceside, ME 36276', '50.004888', '8.924919', 0, 6, '2020-07-06 02:03:07', '2020-07-06 02:03:07');

-- --------------------------------------------------------

--
-- Table structure for table `drivers`
--

CREATE TABLE `drivers` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `delivery_fee` double(5,2) NOT NULL DEFAULT '0.00',
  `total_orders` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `earning` double(9,2) NOT NULL DEFAULT '0.00',
  `available` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `drivers_payouts`
--

CREATE TABLE `drivers_payouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `method` varchar(127) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double(9,2) NOT NULL DEFAULT '0.00',
  `paid_date` datetime DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `driver_restaurants`
--

CREATE TABLE `driver_restaurants` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `restaurant_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `driver_restaurants`
--

INSERT INTO `driver_restaurants` (`user_id`, `restaurant_id`) VALUES
(5, 1),
(5, 2),
(5, 4),
(6, 2),
(6, 3),
(6, 4);

-- --------------------------------------------------------

--
-- Table structure for table `earnings`
--

CREATE TABLE `earnings` (
  `id` int(10) UNSIGNED NOT NULL,
  `restaurant_id` int(10) UNSIGNED NOT NULL,
  `total_orders` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `total_earning` double(9,2) NOT NULL DEFAULT '0.00',
  `admin_earning` double(9,2) NOT NULL DEFAULT '0.00',
  `restaurant_earning` double(9,2) NOT NULL DEFAULT '0.00',
  `delivery_fee` double(9,2) NOT NULL DEFAULT '0.00',
  `tax` double(9,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `extras`
--

CREATE TABLE `extras` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `price` double(8,2) DEFAULT '0.00',
  `food_id` int(10) UNSIGNED NOT NULL,
  `extra_group_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `extras`
--

INSERT INTO `extras` (`id`, `name`, `description`, `price`, `food_id`, `extra_group_id`, `created_at`, `updated_at`) VALUES
(1, 'Cheese', 'Nam eligendi rem occaecati.', 35.21, 19, 1, '2020-07-06 02:03:10', '2020-07-06 02:03:10'),
(2, '5L', 'Rerum consequatur sapiente.', 38.04, 2, 1, '2020-07-06 02:03:10', '2020-07-06 02:03:10'),
(3, 'Cheese', 'Eum quis aut rerum eos.', 10.67, 27, 2, '2020-07-06 02:03:10', '2020-07-06 02:03:10'),
(4, 'Oil', 'Similique quos expedita.', 26.96, 20, 3, '2020-07-06 02:03:10', '2020-07-06 02:03:10'),
(5, 'Tomato', 'Perferendis enim dolorum distinctio rem iure.', 22.44, 1, 1, '2020-07-06 02:03:10', '2020-07-06 02:03:10'),
(6, 'Oil', 'Cupiditate odio similique molestias corporis.', 45.81, 27, 2, '2020-07-06 02:03:10', '2020-07-06 02:03:10'),
(7, 'XL', 'Voluptatibus pariatur optio qui architecto.', 25.56, 25, 2, '2020-07-06 02:03:10', '2020-07-06 02:03:10'),
(8, 'Cheese', 'Qui veniam itaque.', 15.14, 12, 1, '2020-07-06 02:03:10', '2020-07-06 02:03:10'),
(9, 'Oil', 'A dolor atque.', 14.26, 23, 3, '2020-07-06 02:03:11', '2020-07-06 02:03:11'),
(10, '5L', 'Explicabo qui molestiae.', 26.43, 25, 2, '2020-07-06 02:03:11', '2020-07-06 02:03:11'),
(11, '2L', 'Est magnam sed provident.', 20.99, 2, 1, '2020-07-06 02:03:11', '2020-07-06 02:03:11'),
(12, 'Tomato', 'Omnis aut voluptatem est dolorum.', 19.92, 13, 3, '2020-07-06 02:03:11', '2020-07-06 02:03:11'),
(13, '5L', 'Rerum eum aut quibusdam temporibus.', 10.33, 4, 2, '2020-07-06 02:03:11', '2020-07-06 02:03:11'),
(14, 'Tuna', 'Sint error ut voluptas quis.', 23.65, 30, 2, '2020-07-06 02:03:11', '2020-07-06 02:03:11'),
(15, 'Tuna', 'Voluptatem corrupti sequi sapiente.', 21.19, 12, 3, '2020-07-06 02:03:11', '2020-07-06 02:03:11'),
(16, '2L', 'Culpa repellendus perferendis.', 27.39, 24, 3, '2020-07-06 02:03:11', '2020-07-06 02:03:11'),
(17, 'Cheese', 'Eveniet ea odit aut.', 19.30, 18, 1, '2020-07-06 02:03:11', '2020-07-06 02:03:11'),
(18, '2L', 'Optio earum ducimus dolor consequatur.', 36.65, 4, 3, '2020-07-06 02:03:11', '2020-07-06 02:03:11'),
(19, 'Cheese', 'Deserunt esse delectus eius ipsam.', 37.27, 19, 3, '2020-07-06 02:03:11', '2020-07-06 02:03:11'),
(20, '2L', 'Omnis et quae.', 14.21, 8, 2, '2020-07-06 02:03:11', '2020-07-06 02:03:11'),
(21, 'Cheese', 'Ad molestias voluptas enim sunt molestiae.', 17.80, 18, 1, '2020-07-06 02:03:11', '2020-07-06 02:03:11'),
(22, 'S', 'Et dolores omnis.', 48.98, 24, 1, '2020-07-06 02:03:11', '2020-07-06 02:03:11'),
(23, 'L', 'Reiciendis pariatur ea qui omnis.', 10.05, 25, 3, '2020-07-06 02:03:11', '2020-07-06 02:03:11'),
(24, 'Tuna', 'Accusamus voluptatem quia totam occaecati.', 30.79, 15, 3, '2020-07-06 02:03:11', '2020-07-06 02:03:11'),
(25, '2L', 'Officiis sit tempore consequatur.', 28.65, 8, 1, '2020-07-06 02:03:11', '2020-07-06 02:03:11'),
(26, 'XL', 'Eos modi iste quia.', 28.39, 30, 2, '2020-07-06 02:03:11', '2020-07-06 02:03:11'),
(27, 'Tomato', 'Culpa delectus repudiandae qui.', 30.95, 13, 2, '2020-07-06 02:03:11', '2020-07-06 02:03:11'),
(28, 'XL', 'Voluptatem nobis voluptatem laudantium ratione nobis.', 30.96, 11, 2, '2020-07-06 02:03:11', '2020-07-06 02:03:11'),
(29, 'Tomato', 'Id numquam quia enim quia.', 38.75, 28, 2, '2020-07-06 02:03:11', '2020-07-06 02:03:11'),
(30, '2L', 'Sunt est dolor temporibus tenetur.', 32.16, 30, 1, '2020-07-06 02:03:11', '2020-07-06 02:03:11'),
(31, 'Tomato', 'Qui alias minus amet necessitatibus.', 48.03, 2, 2, '2020-07-06 02:03:12', '2020-07-06 02:03:12'),
(32, 'XL', 'Magni eligendi non quae.', 41.63, 7, 3, '2020-07-06 02:03:12', '2020-07-06 02:03:12'),
(33, 'XL', 'In nihil facere minima.', 30.76, 4, 3, '2020-07-06 02:03:12', '2020-07-06 02:03:12'),
(34, 'Tuna', 'Perspiciatis et consequuntur possimus autem.', 45.52, 21, 2, '2020-07-06 02:03:12', '2020-07-06 02:03:12'),
(35, 'Tomato', 'Culpa ut voluptatem saepe ducimus.', 22.37, 12, 2, '2020-07-06 02:03:12', '2020-07-06 02:03:12'),
(36, 'XL', 'Modi consequatur asperiores dolores doloribus.', 13.63, 17, 1, '2020-07-06 02:03:12', '2020-07-06 02:03:12'),
(37, 'Oil', 'Voluptates officiis adipisci et qui et.', 45.34, 29, 1, '2020-07-06 02:03:12', '2020-07-06 02:03:12'),
(38, 'Tuna', 'Quidem deserunt perferendis beatae quod.', 37.53, 17, 3, '2020-07-06 02:03:12', '2020-07-06 02:03:12'),
(39, '2L', 'Quis quas ut aliquam ratione.', 43.75, 8, 3, '2020-07-06 02:03:12', '2020-07-06 02:03:12'),
(40, 'XL', 'Qui nesciunt assumenda voluptatum.', 42.20, 1, 2, '2020-07-06 02:03:12', '2020-07-06 02:03:12'),
(41, 'Oil', 'Aspernatur temporibus ex ea sint.', 49.46, 27, 3, '2020-07-06 02:03:12', '2020-07-06 02:03:12'),
(42, 'L', 'Eum id facere aut enim ex.', 40.50, 23, 1, '2020-07-06 02:03:12', '2020-07-06 02:03:12'),
(43, '5L', 'Consectetur voluptate non rerum.', 40.69, 14, 3, '2020-07-06 02:03:12', '2020-07-06 02:03:12'),
(44, 'Tuna', 'Sapiente dolor at voluptatem.', 39.67, 27, 2, '2020-07-06 02:03:12', '2020-07-06 02:03:12'),
(45, 'Tomato', 'Fuga quidem eos modi et.', 37.76, 5, 2, '2020-07-06 02:03:12', '2020-07-06 02:03:12'),
(46, 'Cheese', 'Aut iusto iure.', 27.90, 14, 3, '2020-07-06 02:03:12', '2020-07-06 02:03:12'),
(47, '2L', 'Id et alias.', 18.25, 12, 1, '2020-07-06 02:03:12', '2020-07-06 02:03:12'),
(48, 'Tuna', 'Tempora sed iure dolore.', 41.78, 22, 2, '2020-07-06 02:03:12', '2020-07-06 02:03:12'),
(49, 'Tuna', 'Minus eos consequuntur nobis.', 14.43, 10, 1, '2020-07-06 02:03:12', '2020-07-06 02:03:12'),
(50, '2L', 'Beatae ipsum quis reiciendis.', 36.48, 28, 1, '2020-07-06 02:03:12', '2020-07-06 02:03:12');

-- --------------------------------------------------------

--
-- Table structure for table `extra_groups`
--

CREATE TABLE `extra_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `extra_groups`
--

INSERT INTO `extra_groups` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Size', '2019-08-31 05:25:28', '2019-08-31 05:25:28'),
(2, 'Taste', '2019-10-09 07:56:28', '2019-10-09 07:56:28'),
(3, 'Capacity', '2019-10-09 07:56:28', '2019-10-09 07:56:28');

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(10) UNSIGNED NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci,
  `answer` text COLLATE utf8mb4_unicode_ci,
  `faq_category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `faq_category_id`, `created_at`, `updated_at`) VALUES
(1, 'Vel quod ipsam repellat. Ipsum aut eligendi id eveniet culpa.', 'Alice more boldly: \'you know you\'re growing too.\' \'Yes, but some crumbs must have a trial: For really this morning I\'ve nothing to do.\" Said the mouse doesn\'t get out.\" Only I don\'t remember where.\'.', 2, '2020-07-06 02:03:12', '2020-07-06 02:03:12'),
(2, 'Blanditiis explicabo aliquid ad. Magnam suscipit ex quas dolorem quia inventore corrupti sunt.', 'For instance, if you like!\' the Duchess said to herself as she could, and soon found herself in a tone of this rope--Will the roof of the sea.\' \'I couldn\'t help it,\' she said these words her foot.', 2, '2020-07-06 02:03:12', '2020-07-06 02:03:12'),
(3, 'Ex sunt quo neque tenetur. Illo ut quos voluptas.', 'I think--\' (she was so long since she had drunk half the bottle, she found her way out. \'I shall sit here,\' the Footman continued in the sea. The master was an uncomfortably sharp chin. However, she.', 1, '2020-07-06 02:03:13', '2020-07-06 02:03:13'),
(4, 'Quia ut aut quod. Qui corporis aut quo tenetur beatae perferendis.', 'I ever heard!\' \'Yes, I think I can listen all day about it!\' and he went on just as if a fish came to the Queen. An invitation for the end of his shrill little voice, the name \'W. RABBIT\' engraved.', 2, '2020-07-06 02:03:13', '2020-07-06 02:03:13'),
(5, 'Sit laudantium animi voluptate. Itaque quam nam eveniet et impedit qui.', 'ALL RETURNED FROM HIM TO YOU,\"\' said Alice. \'Who\'s making personal remarks now?\' the Hatter and the Hatter went on eagerly: \'There is such a tiny little thing!\' said the King; and the White Rabbit.', 1, '2020-07-06 02:03:13', '2020-07-06 02:03:13'),
(6, 'Magnam deleniti rerum fugiat dolores minus. Ad praesentium quam ipsum quibusdam.', 'Duchess. \'I make you grow shorter.\' \'One side of the room. The cook threw a frying-pan after her as hard as she was now the right size for ten minutes together!\' \'Can\'t remember WHAT things?\' said.', 1, '2020-07-06 02:03:13', '2020-07-06 02:03:13'),
(7, 'Facere ullam neque distinctio. Amet et eveniet est quo quod.', 'It was so full of soup. \'There\'s certainly too much overcome to do this, so that it was good manners for her to wink with one finger, as he could think of what sort it was) scratching and scrambling.', 1, '2020-07-06 02:03:13', '2020-07-06 02:03:13'),
(8, 'Voluptas officia esse voluptas sed ea sunt sit. Rem aut est aut esse ipsam et.', 'I COULD NOT SWIM--\" you can\'t take more.\' \'You mean you can\'t be civil, you\'d better leave off,\' said the Hatter, and here the conversation dropped, and the soldiers had to fall a long silence after.', 3, '2020-07-06 02:03:13', '2020-07-06 02:03:13'),
(9, 'Odio iusto optio corporis. Autem sint repellat rerum vel magnam. Dolor nemo rem error quia et.', 'I almost think I should understand that better,\' Alice said to herself, being rather proud of it: \'No room! No room!\' they cried out when they liked, so that her flamingo was gone across to the.', 2, '2020-07-06 02:03:13', '2020-07-06 02:03:13'),
(10, 'Sunt ut fugiat eveniet in. Dolores non eum enim necessitatibus sit. Ipsa cum rerum odit molestiae.', 'Mock Turtle drew a long and a scroll of parchment in the distance would take the place of the fact. \'I keep them to sell,\' the Hatter instead!\' CHAPTER VII. A Mad Tea-Party There was nothing else to.', 2, '2020-07-06 02:03:13', '2020-07-06 02:03:13'),
(11, 'Aut provident minus deserunt beatae. Ad in et fuga odio.', 'Do you think you could see this, as she said to the jury. \'Not yet, not yet!\' the Rabbit was still in existence; \'and now for the fan and gloves. \'How queer it seems,\' Alice said to the other arm.', 1, '2020-07-06 02:03:13', '2020-07-06 02:03:13'),
(12, 'Saepe est qui voluptas voluptatem quia et. Sit suscipit voluptates quia magni.', 'I don\'t understand. Where did they draw the treacle from?\' \'You can draw water out of the edge with each hand. \'And now which is which?\' she said to herself, as she could not think of nothing better.', 2, '2020-07-06 02:03:13', '2020-07-06 02:03:13'),
(13, 'Ullam et sequi consequatur. Deserunt dolores sequi fugit explicabo dolore quia animi.', 'Oh, my dear Dinah! I wonder what was going to do next, when suddenly a footman in livery, with a T!\' said the Lory positively refused to tell him. \'A nice muddle their slates\'ll be in Bill\'s place.', 2, '2020-07-06 02:03:13', '2020-07-06 02:03:13'),
(14, 'Aut vel sunt velit natus. Cum aspernatur enim est temporibus quis omnis autem.', 'When the Mouse replied rather crossly: \'of course you know the way of settling all difficulties, great or small. \'Off with her head!\' Alice glanced rather anxiously at the stick, running a very.', 3, '2020-07-06 02:03:13', '2020-07-06 02:03:13'),
(15, 'Et est autem et ea odit. Natus eveniet voluptatem mollitia vel distinctio totam.', 'I\'m never sure what I\'m going to dive in among the branches, and every now and then, and holding it to her chin in salt water. Her first idea was that you have just been picked up.\' \'What\'s in it?\'.', 2, '2020-07-06 02:03:13', '2020-07-06 02:03:13'),
(16, 'Sint illo iusto culpa minus dolorum. A nisi blanditiis qui dolore ut provident.', 'Alice. \'And be quick about it,\' said Alice. \'You did,\' said the March Hare was said to the other two were using it as well as if he would not join the dance. So they sat down and saying \"Come up.', 1, '2020-07-06 02:03:13', '2020-07-06 02:03:13'),
(17, 'Dolorem ab iste magni qui at. Fuga dolores consectetur minima accusantium.', 'Hatter: \'but you could keep it to the little magic bottle had now had its full effect, and she hastily dried her eyes anxiously fixed on it, (\'which certainly was not easy to take the hint; but the.', 3, '2020-07-06 02:03:13', '2020-07-06 02:03:13'),
(18, 'Veniam porro fugiat incidunt ab. Nemo aut harum veritatis vitae illum beatae.', 'Duchess! The Duchess! Oh my dear Dinah! I wonder if I\'ve been changed for Mabel! I\'ll try if I like being that person, I\'ll come up: if not, I\'ll stay down here! It\'ll be no sort of thing that would.', 2, '2020-07-06 02:03:13', '2020-07-06 02:03:13'),
(19, 'Beatae et rerum sed et atque qui. Cumque repellat vel fugit. Blanditiis sint fugiat aliquid.', 'There was a large cauldron which seemed to be true): If she should push the matter on, What would become of me?\' Luckily for Alice, the little golden key and hurried upstairs, in great disgust, and.', 3, '2020-07-06 02:03:13', '2020-07-06 02:03:13'),
(20, 'Deserunt alias ducimus possimus porro qui aut delectus. Placeat id minima nulla et facilis sequi.', 'But there seemed to Alice again. \'No, I didn\'t,\' said Alice: \'--where\'s the Duchess?\' \'Hush! Hush!\' said the Pigeon; \'but I know all sorts of things--I can\'t remember half of fright and half of.', 2, '2020-07-06 02:03:13', '2020-07-06 02:03:13'),
(21, 'Deserunt nihil a dolorem. Animi et quia delectus nesciunt error ut ex.', 'Bill\'s place for a good way off, and she felt that there was Mystery,\' the Mock Turtle to sing you a couple?\' \'You are old,\' said the Gryphon, and all would change to tinkling sheep-bells, and the.', 2, '2020-07-06 02:03:13', '2020-07-06 02:03:13'),
(22, 'Et rerum a voluptas natus molestias. Saepe voluptatem repellat consequatur. Natus soluta ut porro.', 'On various pretexts they all spoke at once, she found she could not swim. He sent them word I had it written up somewhere.\' Down, down, down. Would the fall was over. However, when they saw the.', 4, '2020-07-06 02:03:13', '2020-07-06 02:03:13'),
(23, 'Est molestiae earum sit. In illum aut odio illum soluta. Deserunt fugiat ea fugit.', 'March Hare had just begun to dream that she was considering in her life; it was all about, and make out which were the two creatures got so much contradicted in her life before, and behind them a.', 4, '2020-07-06 02:03:13', '2020-07-06 02:03:13'),
(24, 'Nesciunt autem quam dolores molestias. Et aut aut quam ipsum.', 'Queen said severely \'Who is it twelve? I--\' \'Oh, don\'t bother ME,\' said Alice in a ring, and begged the Mouse heard this, it turned round and swam slowly back to the company generally, \'You are.', 1, '2020-07-06 02:03:14', '2020-07-06 02:03:14'),
(25, 'Numquam non ullam sed quia perferendis qui. Non nobis eos excepturi.', 'Gryphon. \'The reason is,\' said the Duchess: you\'d better leave off,\' said the Mouse only shook its head impatiently, and walked off; the Dormouse say?\' one of these cakes,\' she thought, and it was.', 4, '2020-07-06 02:03:14', '2020-07-06 02:03:14'),
(26, 'Est eos ipsam ad dicta nam. Sed in distinctio consequatur quia. Vero sint corporis ratione.', 'Cat: now I shall only look up in great fear lest she should meet the real Mary Ann, what ARE you talking to?\' said one of the same thing as \"I eat what I see\"!\' \'You might just as well. The twelve.', 3, '2020-07-06 02:03:14', '2020-07-06 02:03:14'),
(27, 'Libero esse et placeat porro. Et quos quis qui odit iusto praesentium quaerat aut.', 'She hastily put down her flamingo, and began an account of the edge of her ever getting out of the Lobster; I heard him declare, \"You have baked me too brown, I must sugar my hair.\" As a duck with.', 3, '2020-07-06 02:03:14', '2020-07-06 02:03:14'),
(28, 'Nesciunt qui ut nostrum eligendi. Voluptatem consequatur asperiores vel officiis cum possimus.', 'Queen: so she took up the little creature down, and was delighted to find that she still held the pieces of mushroom in her hands, and began:-- \'You are old, Father William,\' the young Crab, a.', 1, '2020-07-06 02:03:14', '2020-07-06 02:03:14'),
(29, 'Amet est aut et quo cupiditate est. Quaerat voluptas itaque et sit aut voluptas delectus.', 'Cheshire cats always grinned; in fact, a sort of a well--\' \'What did they live at the end of your nose-- What made you so awfully clever?\' \'I have answered three questions, and that makes them so.', 4, '2020-07-06 02:03:14', '2020-07-06 02:03:14'),
(30, 'Consequuntur voluptatem ea ut iusto nulla suscipit. Eos deserunt illum dolores.', 'King, who had followed him into the air. She did not get hold of its mouth, and addressed her in a very interesting dance to watch,\' said Alice, \'we learned French and music.\' \'And washing?\' said.', 1, '2020-07-06 02:03:14', '2020-07-06 02:03:14');

-- --------------------------------------------------------

--
-- Table structure for table `faq_categories`
--

CREATE TABLE `faq_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faq_categories`
--

INSERT INTO `faq_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Foods', '2019-08-31 07:01:52', '2019-08-31 07:01:52'),
(2, 'Services', '2019-08-31 07:02:03', '2019-08-31 07:02:03'),
(3, 'Delivery', '2019-08-31 07:02:11', '2019-08-31 07:02:11'),
(4, 'Misc', '2019-08-31 07:02:17', '2019-08-31 07:02:17');

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` int(10) UNSIGNED NOT NULL,
  `food_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`id`, `food_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 22, 3, '2020-07-06 02:03:14', '2020-07-06 02:03:14'),
(2, 22, 4, '2020-07-06 02:03:14', '2020-07-06 02:03:14'),
(3, 3, 6, '2020-07-06 02:03:14', '2020-07-06 02:03:14'),
(4, 27, 1, '2020-07-06 02:03:14', '2020-07-06 02:03:14'),
(5, 1, 2, '2020-07-06 02:03:14', '2020-07-06 02:03:14'),
(6, 19, 5, '2020-07-06 02:03:14', '2020-07-06 02:03:14'),
(7, 8, 5, '2020-07-06 02:03:14', '2020-07-06 02:03:14'),
(8, 2, 6, '2020-07-06 02:03:14', '2020-07-06 02:03:14'),
(9, 19, 6, '2020-07-06 02:03:14', '2020-07-06 02:03:14'),
(10, 17, 6, '2020-07-06 02:03:14', '2020-07-06 02:03:14'),
(11, 21, 3, '2020-07-06 02:03:14', '2020-07-06 02:03:14'),
(12, 9, 1, '2020-07-06 02:03:14', '2020-07-06 02:03:14'),
(13, 27, 4, '2020-07-06 02:03:14', '2020-07-06 02:03:14'),
(14, 29, 1, '2020-07-06 02:03:14', '2020-07-06 02:03:14'),
(15, 2, 6, '2020-07-06 02:03:14', '2020-07-06 02:03:14'),
(16, 26, 2, '2020-07-06 02:03:14', '2020-07-06 02:03:14'),
(17, 27, 5, '2020-07-06 02:03:15', '2020-07-06 02:03:15'),
(18, 2, 3, '2020-07-06 02:03:15', '2020-07-06 02:03:15'),
(19, 29, 3, '2020-07-06 02:03:15', '2020-07-06 02:03:15'),
(20, 23, 2, '2020-07-06 02:03:15', '2020-07-06 02:03:15'),
(21, 17, 5, '2020-07-06 02:03:15', '2020-07-06 02:03:15'),
(22, 9, 2, '2020-07-06 02:03:15', '2020-07-06 02:03:15'),
(23, 1, 6, '2020-07-06 02:03:15', '2020-07-06 02:03:15'),
(24, 4, 1, '2020-07-06 02:03:15', '2020-07-06 02:03:15'),
(25, 13, 6, '2020-07-06 02:03:15', '2020-07-06 02:03:15'),
(26, 30, 3, '2020-07-06 02:03:15', '2020-07-06 02:03:15'),
(27, 16, 5, '2020-07-06 02:03:15', '2020-07-06 02:03:15'),
(28, 10, 4, '2020-07-06 02:03:15', '2020-07-06 02:03:15'),
(29, 8, 4, '2020-07-06 02:03:15', '2020-07-06 02:03:15'),
(30, 27, 1, '2020-07-06 02:03:15', '2020-07-06 02:03:15');

-- --------------------------------------------------------

--
-- Table structure for table `favorite_extras`
--

CREATE TABLE `favorite_extras` (
  `extra_id` int(10) UNSIGNED NOT NULL,
  `favorite_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `favorite_extras`
--

INSERT INTO `favorite_extras` (`extra_id`, `favorite_id`) VALUES
(1, 1),
(1, 5),
(2, 6),
(3, 2),
(5, 3);

-- --------------------------------------------------------

--
-- Table structure for table `foods`
--

CREATE TABLE `foods` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL DEFAULT '0.00',
  `discount_price` double(8,2) DEFAULT '0.00',
  `description` text COLLATE utf8mb4_unicode_ci,
  `ingredients` text COLLATE utf8mb4_unicode_ci,
  `package_items_count` double(9,2) DEFAULT '0.00',
  `weight` double(9,2) DEFAULT '0.00',
  `unit` varchar(127) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` tinyint(1) DEFAULT '0',
  `deliverable` tinyint(1) DEFAULT '1',
  `restaurant_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `foods`
--

INSERT INTO `foods` (`id`, `name`, `price`, `discount_price`, `description`, `ingredients`, `package_items_count`, `weight`, `unit`, `featured`, `deliverable`, `restaurant_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Pizza Margherita', 13.83, 8.42, 'Et dolor quod omnis non. Id ab aut rerum odio. Accusantium aut et occaecati vitae repellendus deleniti numquam.', NULL, 6.00, 197.99, 'Kg', 0, 1, 4, 6, '2020-07-06 02:03:00', '2020-07-06 02:03:00'),
(2, 'American fried rice', 11.81, 2.91, 'Ea magni quibusdam dolores odit eaque placeat qui. Asperiores sunt illum a nisi cupiditate. Placeat perspiciatis quod vel.', NULL, 5.00, 329.24, 'Kg', 1, 0, 2, 2, '2020-07-06 02:03:00', '2020-07-06 02:03:00'),
(3, 'Cucur Udang Kuah Kacang', 34.95, 0.00, 'Molestias et aut atque dolorum rerum ipsa ducimus incidunt. Repudiandae architecto mollitia similique eligendi. Corporis dicta cum magni sed non aut vel. Ipsum dolorem officia minus architecto et.', NULL, 6.00, 412.20, 'g', 0, 1, 5, 3, '2020-07-06 02:03:00', '2020-07-06 02:03:00'),
(4, 'Soup', 11.64, 0.00, 'Cumque reprehenderit aspernatur qui debitis. Quibusdam aliquid non ex tenetur eum deserunt sequi. Quod pariatur ad id asperiores. Minus enim neque et.', NULL, 4.00, 273.10, 'L', 0, 0, 8, 2, '2020-07-06 02:03:00', '2020-07-06 02:03:00'),
(5, 'Chicken Noodle Soup', 44.37, 0.00, 'Quas qui temporibus omnis. Laudantium temporibus aut omnis fugiat. Atque aut facere eum. Aliquid nihil illum voluptas.', NULL, 2.00, 197.83, 'Kg', 0, 1, 1, 5, '2020-07-06 02:03:00', '2020-07-06 02:03:00'),
(6, 'Angel Hair', 10.35, 1.58, 'Ipsum nemo ex dolore voluptas molestiae rerum iure dolores. Nostrum voluptatem quis molestiae et exercitationem.', NULL, 6.00, 499.60, 'Kg', 1, 0, 1, 5, '2020-07-06 02:03:00', '2020-07-06 02:03:00'),
(7, 'Pasta Campanelle', 49.64, 45.79, 'Corporis aut nisi ipsa et quia nostrum maiores. Rerum provident pariatur accusantium est at. Quasi est inventore eius quia iure repellendus beatae. Quam repellat asperiores maxime.', NULL, 6.00, 338.81, 'Kg', 1, 0, 1, 5, '2020-07-06 02:03:00', '2020-07-06 02:03:00'),
(8, 'Cucur Udang Kuah Kacang', 24.24, 0.00, 'Similique ratione dolores amet. Aut porro qui iste voluptas occaecati. Libero facere suscipit nihil voluptatibus est minus eveniet. Sunt ducimus alias voluptatem quisquam ut eaque.', NULL, 3.00, 281.03, 'ml', 0, 1, 3, 3, '2020-07-06 02:03:00', '2020-07-06 02:03:00'),
(9, 'Calas', 21.18, 0.00, 'Et est libero expedita. Officiis aut porro molestias ut odio velit. Quo minima cupiditate architecto minima rem.', NULL, 2.00, 40.15, 'L', 1, 0, 10, 6, '2020-07-06 02:03:00', '2020-07-06 02:03:00'),
(10, 'California Italian Wedding Soup', 35.57, 28.72, 'Deleniti enim fugiat est aliquam accusamus quia. Nam numquam quasi dolorem distinctio modi autem sunt. Beatae rerum qui debitis magni.', NULL, 4.00, 224.02, 'Kg', 1, 0, 3, 6, '2020-07-06 02:03:00', '2020-07-06 02:03:00'),
(11, 'Pizza Montanara', 40.07, 31.36, 'Natus in enim commodi quas quas. Illum vitae quia et error.', NULL, 6.00, 300.50, 'ml', 0, 0, 4, 1, '2020-07-06 02:03:00', '2020-07-06 02:03:00'),
(12, 'Pizza al Pesto', 36.69, 0.00, 'Laboriosam nisi ab velit id. Quis illum consequatur corporis autem. Itaque ducimus deleniti id. Numquam et est beatae aut veniam quibusdam.', NULL, 5.00, 221.36, 'Kg', 0, 1, 2, 6, '2020-07-06 02:03:00', '2020-07-06 02:03:00'),
(13, 'Soup', 40.39, 0.00, 'Cupiditate sint consequatur deleniti. Hic et totam quisquam et. Possimus sit quod eveniet accusamus. Est enim consequuntur facilis.', NULL, 4.00, 313.04, 'g', 1, 0, 5, 6, '2020-07-06 02:03:00', '2020-07-06 02:03:00'),
(14, 'Calas', 26.69, 0.00, 'Architecto deleniti non sequi illo consequatur et delectus unde. Quis ex laboriosam culpa dolore et. Totam ducimus ad cumque aut dolorem. Voluptatem enim sit impedit natus.', NULL, 6.00, 6.97, 'L', 1, 1, 7, 1, '2020-07-06 02:03:00', '2020-07-06 02:03:00'),
(15, 'Italian Sausage Soup', 41.58, 35.34, 'Molestiae reiciendis delectus accusantium voluptates rerum. Et ducimus atque sed expedita. Facilis corrupti eveniet possimus est at dolores consequuntur.', NULL, 1.00, 495.53, 'Kg', 0, 1, 7, 6, '2020-07-06 02:03:00', '2020-07-06 02:03:00'),
(16, 'Pizza Margherita', 26.41, 19.06, 'Est voluptatem optio voluptatem dolorem commodi aut dolore. Est expedita quod nesciunt consectetur sit dolorum. Et nihil et fugit eos. Repudiandae itaque est vel ipsa.', NULL, 3.00, 151.13, 'g', 1, 0, 9, 3, '2020-07-06 02:03:00', '2020-07-06 02:03:00'),
(17, 'Pizza Montanara', 43.32, 0.00, 'Fugit et blanditiis fugiat voluptate dolorem. Ratione quia qui culpa ab deserunt aliquam cum. Voluptates rerum beatae tempora placeat est id ducimus. Qui provident aut natus quia quia.', NULL, 4.00, 109.19, 'Kg', 0, 1, 4, 5, '2020-07-06 02:03:00', '2020-07-06 02:03:00'),
(18, 'Big Smokey Burgers', 41.31, 38.34, 'Veniam voluptatum tenetur et enim. Qui eos in consequatur. Accusantium sit laborum veritatis placeat ut accusamus. Tenetur iure corporis blanditiis.', NULL, 4.00, 13.10, 'L', 0, 1, 1, 5, '2020-07-06 02:03:00', '2020-07-06 02:03:00'),
(19, 'Angel Hair', 33.55, 0.00, 'Libero libero rerum temporibus molestiae molestias nostrum quo. Velit libero voluptates tenetur est rerum dolorem. Deleniti nihil quo beatae id. Minima dolorem iste quisquam.', NULL, 6.00, 146.82, 'L', 0, 0, 4, 1, '2020-07-06 02:03:00', '2020-07-06 02:03:00'),
(20, 'Angel Hair', 36.94, 0.00, 'Blanditiis et earum ipsum. Quis odio in perferendis. Ducimus et autem et iure debitis. Nostrum assumenda cum veritatis consequatur voluptate iusto sit.', NULL, 2.00, 478.68, 'L', 1, 0, 8, 5, '2020-07-06 02:03:00', '2020-07-06 02:03:00'),
(21, 'American fried rice', 33.41, 0.00, 'Deserunt quo adipisci aliquam molestiae itaque commodi laudantium. Deserunt porro architecto qui. Eius nostrum fugit qui eos. Eos id iusto eligendi autem magni tempora quidem.', NULL, 6.00, 199.56, 'Kg', 1, 0, 3, 5, '2020-07-06 02:03:01', '2020-07-06 02:03:01'),
(22, 'Italian Sausage Soup', 35.02, 0.00, 'Quisquam nesciunt nisi et debitis ullam sapiente quia. Et doloremque qui ut saepe et sit. Est voluptas voluptatem ullam perspiciatis doloremque sit hic suscipit.', NULL, 1.00, 0.86, 'g', 0, 1, 10, 2, '2020-07-06 02:03:01', '2020-07-06 02:03:01'),
(23, 'Pizza Valtellina', 30.97, 29.94, 'Dicta suscipit perspiciatis autem et voluptas aperiam voluptas. Reiciendis nulla pariatur sit est voluptas. In aspernatur neque ipsum aut iste eos sint voluptatem. Soluta nihil alias repellendus ut.', NULL, 6.00, 155.16, 'L', 0, 1, 8, 4, '2020-07-06 02:03:01', '2020-07-06 02:03:01'),
(24, 'Italian Sausage Soup', 33.72, 0.00, 'Sunt assumenda consectetur in a expedita. Necessitatibus aperiam ut cum et molestiae laborum. Qui sit id tenetur accusamus quae.', NULL, 1.00, 202.57, 'ml', 1, 0, 2, 3, '2020-07-06 02:03:01', '2020-07-06 02:03:01'),
(25, 'Calas', 42.11, 0.00, 'Eveniet est maiores quia non reprehenderit optio quisquam. Incidunt quos labore minus animi a amet. Veniam ut cumque veniam.', NULL, 6.00, 185.99, 'L', 0, 0, 10, 2, '2020-07-06 02:03:01', '2020-07-06 02:03:01'),
(26, 'Calas', 36.24, 34.48, 'Debitis laboriosam pariatur debitis deserunt. Minus reiciendis qui rerum totam sint quae. Ipsa sunt eaque est sed. Omnis consequatur autem accusamus qui qui quae quis.', NULL, 5.00, 337.02, 'g', 0, 0, 5, 6, '2020-07-06 02:03:01', '2020-07-06 02:03:01'),
(27, 'Soup', 41.55, 33.05, 'Et quo voluptates iure autem accusantium. Rerum voluptatibus nesciunt voluptatem eos ut impedit. Ullam dicta aut sunt a reiciendis est.', NULL, 5.00, 333.17, 'ml', 1, 0, 7, 6, '2020-07-06 02:03:01', '2020-07-06 02:03:01'),
(28, 'Pasta Campanelle', 48.15, 44.35, 'Cumque voluptas non expedita ut expedita. Dolor animi beatae tempore hic officiis. Facere deleniti expedita velit autem expedita eos quas. Amet quos quibusdam ullam est.', NULL, 4.00, 445.17, 'L', 0, 0, 10, 1, '2020-07-06 02:03:01', '2020-07-06 02:03:01'),
(29, 'California Italian Wedding Soup', 34.70, 32.48, 'Blanditiis aut quia quidem distinctio sunt rerum et voluptatem. Nisi enim saepe mollitia iure iste illo. Maiores cum consequatur ad quo recusandae sint quae.', NULL, 2.00, 454.35, 'Kg', 1, 1, 7, 1, '2020-07-06 02:03:01', '2020-07-06 02:03:01'),
(30, 'Pasta Campanelle', 20.55, 0.00, 'Laboriosam aut ut ea non in alias voluptatem. Ut odit voluptates molestiae vel rerum magnam itaque. Alias quae placeat et hic.', NULL, 4.00, 365.71, 'g', 0, 1, 9, 2, '2020-07-06 02:03:01', '2020-07-06 02:03:01');

-- --------------------------------------------------------

--
-- Table structure for table `food_orders`
--

CREATE TABLE `food_orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `price` double(8,2) NOT NULL DEFAULT '0.00',
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `food_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `food_order_extras`
--

CREATE TABLE `food_order_extras` (
  `food_order_id` int(10) UNSIGNED NOT NULL,
  `extra_id` int(10) UNSIGNED NOT NULL,
  `price` double(8,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `food_reviews`
--

CREATE TABLE `food_reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci,
  `rate` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL,
  `food_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `food_reviews`
--

INSERT INTO `food_reviews` (`id`, `review`, `rate`, `user_id`, `food_id`, `created_at`, `updated_at`) VALUES
(1, 'Christmas.\' And she began nursing her child again, singing a sort of way, \'Do cats eat bats, I wonder?\' Alice guessed in a shrill, passionate voice. \'Would YOU like cats if you cut your finger VERY.', 1, 5, 8, '2020-07-06 02:03:03', '2020-07-06 02:03:03'),
(2, 'TWO little shrieks, and more sounds of broken glass. \'What a funny watch!\' she remarked. \'It tells the day and night! You see the Hatter asked triumphantly. Alice did not much surprised at this, but.', 1, 5, 1, '2020-07-06 02:03:03', '2020-07-06 02:03:03'),
(3, 'Queen in a court of justice before, but she had grown up,\' she said to herself \'That\'s quite enough--I hope I shan\'t grow any more--As it is, I can\'t quite follow it as she couldn\'t answer either.', 2, 4, 18, '2020-07-06 02:03:03', '2020-07-06 02:03:03'),
(4, 'I then? Tell me that first, and then, and holding it to annoy, Because he knows it teases.\' CHORUS. (In which the wretched Hatter trembled so, that he had to pinch it to half-past one as long as it.', 5, 3, 30, '2020-07-06 02:03:03', '2020-07-06 02:03:03'),
(5, 'Which way?\', holding her hand on the ground as she could not help bursting out laughing: and when she had brought herself down to them, they set to work very diligently to write out a history of the.', 4, 6, 20, '2020-07-06 02:03:03', '2020-07-06 02:03:03'),
(6, 'The Gryphon sat up and went on: \'But why did they live at the mushroom for a good many little girls in my life!\' Just as she could see it trot away quietly into the garden with one finger, as he.', 4, 5, 28, '2020-07-06 02:03:03', '2020-07-06 02:03:03'),
(7, 'I wish you wouldn\'t squeeze so.\' said the Queen. \'It proves nothing of tumbling down stairs! How brave they\'ll all think me at home! Why, I haven\'t had a head unless there was generally a ridge or.', 4, 2, 29, '2020-07-06 02:03:03', '2020-07-06 02:03:03'),
(8, 'Queen. \'Well, I never understood what it was: she was shrinking rapidly; so she began looking at the Queen, who were lying round the hall, but they all moved off, and found that it might tell her.', 2, 5, 30, '2020-07-06 02:03:03', '2020-07-06 02:03:03'),
(9, 'WOULD not remember the simple and loving heart of her skirt, upsetting all the time he had come back with the Duchess, \'and that\'s why. Pig!\' She said the Queen, who was sitting on the bank--the.', 3, 1, 2, '2020-07-06 02:03:03', '2020-07-06 02:03:03'),
(10, 'March Hare moved into the air. This time there could be beheaded, and that you weren\'t to talk to.\' \'How are you getting on now, my dear?\' it continued, turning to Alice. \'Nothing,\' said Alice.', 4, 3, 24, '2020-07-06 02:03:03', '2020-07-06 02:03:03'),
(11, 'Mock Turtle, \'Drive on, old fellow! Don\'t be all day about it!\' and he called the Queen, pointing to the shore. CHAPTER III. A Caucus-Race and a sad tale!\' said the Hatter: \'it\'s very easy to know.', 2, 6, 15, '2020-07-06 02:03:03', '2020-07-06 02:03:03'),
(12, 'She felt that she might find another key on it, (\'which certainly was not a VERY unpleasant state of mind, she turned the corner, but the great puzzle!\' And she thought it would make with the game,\'.', 3, 4, 1, '2020-07-06 02:03:03', '2020-07-06 02:03:03'),
(13, 'Mock Turtle in a low, timid voice, \'If you do. I\'ll set Dinah at you!\' There was not much like keeping so close to her: first, because the Duchess sang the second verse of the song. \'What trial is.', 3, 1, 15, '2020-07-06 02:03:03', '2020-07-06 02:03:03'),
(14, 'Alice went on, \'you throw the--\' \'The lobsters!\' shouted the Queen. \'You make me smaller, I suppose.\' So she began thinking over all the time she had tired herself out with his head!\' she said.', 2, 1, 27, '2020-07-06 02:03:03', '2020-07-06 02:03:03'),
(15, 'I shall remember it in less than a pig, my dear,\' said Alice, \'I\'ve often seen them at last, more calmly, though still sobbing a little shriek, and went stamping about, and called out as loud as she.', 4, 1, 19, '2020-07-06 02:03:04', '2020-07-06 02:03:04'),
(16, 'Mock Turtle. So she tucked her arm affectionately into Alice\'s, and they all crowded together at one corner of it: for she felt that it signifies much,\' she said to herself how this same little.', 5, 4, 3, '2020-07-06 02:03:04', '2020-07-06 02:03:04'),
(17, 'Pigeon. \'I can tell you my adventures--beginning from this morning,\' said Alice to herself, \'whenever I eat or drink anything; so I\'ll just see what the next verse,\' the Gryphon at the mushroom (she.', 5, 2, 10, '2020-07-06 02:03:04', '2020-07-06 02:03:04'),
(18, 'Luckily for Alice, the little golden key was lying on the twelfth?\' Alice went on eagerly. \'That\'s enough about lessons,\' the Gryphon never learnt it.\' \'Hadn\'t time,\' said the Caterpillar; and it.', 3, 5, 25, '2020-07-06 02:03:04', '2020-07-06 02:03:04'),
(19, 'Heads below!\' (a loud crash)--\'Now, who did that?--It was Bill, I fancy--Who\'s to go down the chimney as she could do, lying down with one foot. \'Get up!\' said the Cat, \'a dog\'s not mad. You grant.', 4, 6, 18, '2020-07-06 02:03:04', '2020-07-06 02:03:04'),
(20, 'Nobody moved. \'Who cares for fish, Game, or any other dish? Who would not open any of them. However, on the bank, with her head!\' Those whom she sentenced were taken into custody by the little dears.', 4, 4, 24, '2020-07-06 02:03:04', '2020-07-06 02:03:04'),
(21, 'Mock Turtle. \'Certainly not!\' said Alice indignantly. \'Let me alone!\' \'Serpent, I say again!\' repeated the Pigeon, raising its voice to a lobster--\' (Alice began to repeat it, when a sharp hiss made.', 4, 6, 1, '2020-07-06 02:03:04', '2020-07-06 02:03:04'),
(22, 'And when I sleep\" is the reason and all of them can explain it,\' said Alice. \'I\'ve tried the roots of trees, and I\'ve tried hedges,\' the Pigeon had finished. \'As if it makes me grow smaller, I.', 5, 4, 11, '2020-07-06 02:03:04', '2020-07-06 02:03:04'),
(23, 'How puzzling all these strange Adventures of hers would, in the sun. (IF you don\'t like them raw.\' \'Well, be off, and had just succeeded in getting its body tucked away, comfortably enough, under.', 3, 5, 25, '2020-07-06 02:03:04', '2020-07-06 02:03:04'),
(24, 'Cheshire Cat,\' said Alice: \'three inches is such a thing before, but she felt unhappy. \'It was the only difficulty was, that anything that had made her feel very sleepy and stupid), whether the.', 2, 5, 29, '2020-07-06 02:03:04', '2020-07-06 02:03:04'),
(25, 'I suppose Dinah\'ll be sending me on messages next!\' And she began looking at everything about her, to pass away the moment she appeared; but she thought it would not give all else for two Pennyworth.', 5, 4, 6, '2020-07-06 02:03:04', '2020-07-06 02:03:04'),
(26, 'INSIDE, you might do very well without--Maybe it\'s always pepper that had a pencil that squeaked. This of course, I meant,\' the King in a few yards off. The Cat seemed to be lost: away went Alice.', 2, 4, 6, '2020-07-06 02:03:04', '2020-07-06 02:03:04'),
(27, 'WOULD always get into her face. \'Very,\' said Alice: \'besides, that\'s not a moment that it might appear to others that what you mean,\' the March Hare: she thought to herself how she would keep.', 5, 1, 20, '2020-07-06 02:03:04', '2020-07-06 02:03:04'),
(28, 'Alice. \'And where HAVE my shoulders got to? And oh, my poor hands, how is it twelve? I--\' \'Oh, don\'t talk about her repeating \'YOU ARE OLD, FATHER WILLIAM,\"\' said the Duck: \'it\'s generally a frog or.', 3, 5, 1, '2020-07-06 02:03:04', '2020-07-06 02:03:04'),
(29, 'When she got into a doze; but, on being pinched by the officers of the trees as well as she remembered that she did not quite like the look of things at all, as the jury wrote it down into a pig.', 2, 6, 19, '2020-07-06 02:03:04', '2020-07-06 02:03:04'),
(30, 'It\'s the most curious thing I ever heard!\' \'Yes, I think I could, if I like being that person, I\'ll come up: if not, I\'ll stay down here till I\'m somebody else\"--but, oh dear!\' cried Alice in a.', 2, 4, 28, '2020-07-06 02:03:04', '2020-07-06 02:03:04');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `restaurant_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `description`, `restaurant_id`, `created_at`, `updated_at`) VALUES
(1, 'Enim ab doloremque repellendus et repellat magni cupiditate.', 6, '2020-07-06 02:03:01', '2020-07-06 02:03:01'),
(2, 'Suscipit sed neque aliquam facilis.', 1, '2020-07-06 02:03:01', '2020-07-06 02:03:01'),
(3, 'Non tempore velit voluptatum magnam et illo.', 6, '2020-07-06 02:03:01', '2020-07-06 02:03:01'),
(4, 'Rerum eligendi dolor sit nulla repellat sed laudantium.', 8, '2020-07-06 02:03:01', '2020-07-06 02:03:01'),
(5, 'Ut tempora quis modi est.', 10, '2020-07-06 02:03:01', '2020-07-06 02:03:01'),
(6, 'Nesciunt voluptas distinctio fugiat voluptate aut repellendus sapiente porro.', 10, '2020-07-06 02:03:02', '2020-07-06 02:03:02'),
(7, 'Soluta quidem necessitatibus optio id perferendis asperiores harum totam.', 4, '2020-07-06 02:03:02', '2020-07-06 02:03:02'),
(8, 'Sunt architecto eaque rerum esse.', 5, '2020-07-06 02:03:02', '2020-07-06 02:03:02'),
(9, 'Eius odit consequuntur ipsum voluptas provident explicabo.', 9, '2020-07-06 02:03:02', '2020-07-06 02:03:02'),
(10, 'Quia explicabo sequi distinctio qui.', 7, '2020-07-06 02:03:02', '2020-07-06 02:03:02'),
(11, 'Dignissimos et consequuntur aut.', 5, '2020-07-06 02:03:02', '2020-07-06 02:03:02'),
(12, 'Ipsa odio pariatur ex iste cum.', 4, '2020-07-06 02:03:02', '2020-07-06 02:03:02'),
(13, 'Dolor omnis soluta et aspernatur alias nulla.', 8, '2020-07-06 02:03:02', '2020-07-06 02:03:02'),
(14, 'Nihil aut sit numquam libero et.', 2, '2020-07-06 02:03:02', '2020-07-06 02:03:02'),
(15, 'Quia voluptas sit id soluta et mollitia.', 4, '2020-07-06 02:03:02', '2020-07-06 02:03:02'),
(16, 'Eos eius possimus deleniti qui ratione.', 8, '2020-07-06 02:03:02', '2020-07-06 02:03:02'),
(17, 'Maiores ex repellendus odit laudantium est ut.', 3, '2020-07-06 02:03:02', '2020-07-06 02:03:02'),
(18, 'A illum veritatis magnam esse temporibus nobis perspiciatis.', 9, '2020-07-06 02:03:02', '2020-07-06 02:03:02'),
(19, 'Nisi et quos nihil optio eligendi fugit adipisci.', 10, '2020-07-06 02:03:02', '2020-07-06 02:03:02'),
(20, 'Consequuntur voluptates quia ab sit aut.', 7, '2020-07-06 02:03:02', '2020-07-06 02:03:02');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `collection_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int(10) UNSIGNED NOT NULL,
  `manipulations` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_properties` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `responsive_images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2018_05_26_175145_create_permission_tables', 1),
(4, '2018_06_12_140344_create_media_table', 1),
(5, '2018_06_13_035117_create_uploads_table', 1),
(6, '2018_07_17_180731_create_settings_table', 1),
(7, '2018_07_24_211308_create_custom_fields_table', 1),
(8, '2018_07_24_211327_create_custom_field_values_table', 1),
(9, '2019_08_29_213820_create_cuisines_table', 1),
(10, '2019_08_29_213821_create_restaurants_table', 1),
(11, '2019_08_29_213825_create_categories_table', 1),
(12, '2019_08_29_213826_create_extra_groups_table', 1),
(13, '2019_08_29_213829_create_faq_categories_table', 1),
(14, '2019_08_29_213833_create_order_statuses_table', 1),
(15, '2019_08_29_213837_create_foods_table', 1),
(16, '2019_08_29_213842_create_galleries_table', 1),
(17, '2019_08_29_213847_create_food_reviews_table', 1),
(18, '2019_08_29_213903_create_nutrition_table', 1),
(19, '2019_08_29_213907_create_extras_table', 1),
(20, '2019_08_29_213921_create_payments_table', 1),
(21, '2019_08_29_213926_create_faqs_table', 1),
(22, '2019_08_29_213940_create_restaurant_reviews_table', 1),
(23, '2019_08_30_152927_create_favorites_table', 1),
(24, '2019_08_31_111103_create_delivery_addresses_table', 1),
(25, '2019_08_31_111104_create_orders_table', 1),
(26, '2019_09_04_153857_create_carts_table', 1),
(27, '2019_09_04_153858_create_favorite_extras_table', 1),
(28, '2019_09_04_153859_create_cart_extras_table', 1),
(29, '2019_09_04_153958_create_food_orders_table', 1),
(30, '2019_09_04_154957_create_food_order_extras_table', 1),
(31, '2019_09_04_163857_create_user_restaurants_table', 1),
(32, '2019_10_22_144652_create_currencies_table', 1),
(33, '2019_12_14_134302_create_driver_restaurants_table', 1),
(34, '2020_03_25_094752_create_drivers_table', 1),
(35, '2020_03_25_094802_create_earnings_table', 1),
(36, '2020_03_25_094809_create_drivers_payouts_table', 1),
(37, '2020_03_25_094817_create_restaurants_payouts_table', 1),
(38, '2020_03_27_094855_create_notifications_table', 1),
(39, '2020_04_11_135804_create_restaurant_cuisines_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(2, 'App\\Models\\User', 1),
(3, 'App\\Models\\User', 2),
(4, 'App\\Models\\User', 3),
(4, 'App\\Models\\User', 4),
(5, 'App\\Models\\User', 5),
(5, 'App\\Models\\User', 6);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nutrition`
--

CREATE TABLE `nutrition` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(10) UNSIGNED DEFAULT '0',
  `food_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nutrition`
--

INSERT INTO `nutrition` (`id`, `name`, `quantity`, `food_id`, `created_at`, `updated_at`) VALUES
(1, 'Lipid', 135, 24, '2020-07-06 02:03:07', '2020-07-06 02:03:07'),
(2, 'Sugar', 107, 30, '2020-07-06 02:03:07', '2020-07-06 02:03:07'),
(3, 'Sugar', 43, 4, '2020-07-06 02:03:07', '2020-07-06 02:03:07'),
(4, 'Proteins', 80, 28, '2020-07-06 02:03:07', '2020-07-06 02:03:07'),
(5, 'Proteins', 87, 30, '2020-07-06 02:03:07', '2020-07-06 02:03:07'),
(6, 'Proteins', 190, 14, '2020-07-06 02:03:07', '2020-07-06 02:03:07'),
(7, 'Lipid', 192, 3, '2020-07-06 02:03:07', '2020-07-06 02:03:07'),
(8, 'Calcium', 26, 14, '2020-07-06 02:03:07', '2020-07-06 02:03:07'),
(9, 'Lipid', 110, 25, '2020-07-06 02:03:08', '2020-07-06 02:03:08'),
(10, 'Proteins', 50, 10, '2020-07-06 02:03:08', '2020-07-06 02:03:08'),
(11, 'Calcium', 87, 12, '2020-07-06 02:03:08', '2020-07-06 02:03:08'),
(12, 'Sugar', 136, 7, '2020-07-06 02:03:08', '2020-07-06 02:03:08'),
(13, 'Lipid', 94, 24, '2020-07-06 02:03:08', '2020-07-06 02:03:08'),
(14, 'Proteins', 56, 16, '2020-07-06 02:03:08', '2020-07-06 02:03:08'),
(15, 'Lipid', 150, 11, '2020-07-06 02:03:08', '2020-07-06 02:03:08'),
(16, 'Lipid', 199, 15, '2020-07-06 02:03:08', '2020-07-06 02:03:08'),
(17, 'Lipid', 161, 17, '2020-07-06 02:03:08', '2020-07-06 02:03:08'),
(18, 'Lipid', 194, 11, '2020-07-06 02:03:08', '2020-07-06 02:03:08'),
(19, 'Proteins', 187, 14, '2020-07-06 02:03:08', '2020-07-06 02:03:08'),
(20, 'Proteins', 141, 28, '2020-07-06 02:03:08', '2020-07-06 02:03:08'),
(21, 'Calcium', 173, 15, '2020-07-06 02:03:08', '2020-07-06 02:03:08'),
(22, 'Sugar', 108, 13, '2020-07-06 02:03:08', '2020-07-06 02:03:08'),
(23, 'Calcium', 147, 17, '2020-07-06 02:03:08', '2020-07-06 02:03:08'),
(24, 'Proteins', 150, 20, '2020-07-06 02:03:08', '2020-07-06 02:03:08'),
(25, 'Calcium', 73, 21, '2020-07-06 02:03:08', '2020-07-06 02:03:08'),
(26, 'Lipid', 63, 27, '2020-07-06 02:03:08', '2020-07-06 02:03:08'),
(27, 'Lipid', 59, 9, '2020-07-06 02:03:09', '2020-07-06 02:03:09'),
(28, 'Sugar', 18, 8, '2020-07-06 02:03:09', '2020-07-06 02:03:09'),
(29, 'Sugar', 178, 15, '2020-07-06 02:03:09', '2020-07-06 02:03:09'),
(30, 'Calcium', 183, 18, '2020-07-06 02:03:09', '2020-07-06 02:03:09'),
(31, 'Sugar', 34, 3, '2020-07-06 02:03:09', '2020-07-06 02:03:09'),
(32, 'Lipid', 180, 18, '2020-07-06 02:03:09', '2020-07-06 02:03:09'),
(33, 'Calcium', 71, 1, '2020-07-06 02:03:09', '2020-07-06 02:03:09'),
(34, 'Proteins', 166, 14, '2020-07-06 02:03:09', '2020-07-06 02:03:09'),
(35, 'Proteins', 101, 7, '2020-07-06 02:03:09', '2020-07-06 02:03:09'),
(36, 'Proteins', 14, 30, '2020-07-06 02:03:09', '2020-07-06 02:03:09'),
(37, 'Sugar', 167, 5, '2020-07-06 02:03:09', '2020-07-06 02:03:09'),
(38, 'Calcium', 147, 12, '2020-07-06 02:03:09', '2020-07-06 02:03:09'),
(39, 'Sugar', 161, 4, '2020-07-06 02:03:09', '2020-07-06 02:03:09'),
(40, 'Lipid', 13, 30, '2020-07-06 02:03:09', '2020-07-06 02:03:09'),
(41, 'Lipid', 101, 21, '2020-07-06 02:03:09', '2020-07-06 02:03:09'),
(42, 'Lipid', 170, 14, '2020-07-06 02:03:09', '2020-07-06 02:03:09'),
(43, 'Calcium', 157, 10, '2020-07-06 02:03:09', '2020-07-06 02:03:09'),
(44, 'Lipid', 161, 25, '2020-07-06 02:03:10', '2020-07-06 02:03:10'),
(45, 'Proteins', 186, 15, '2020-07-06 02:03:10', '2020-07-06 02:03:10'),
(46, 'Lipid', 69, 12, '2020-07-06 02:03:10', '2020-07-06 02:03:10'),
(47, 'Proteins', 29, 20, '2020-07-06 02:03:10', '2020-07-06 02:03:10'),
(48, 'Lipid', 147, 29, '2020-07-06 02:03:10', '2020-07-06 02:03:10'),
(49, 'Proteins', 82, 19, '2020-07-06 02:03:10', '2020-07-06 02:03:10'),
(50, 'Sugar', 146, 26, '2020-07-06 02:03:10', '2020-07-06 02:03:10');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `order_status_id` int(10) UNSIGNED NOT NULL,
  `tax` double(5,2) DEFAULT '0.00',
  `delivery_fee` double(5,2) DEFAULT '0.00',
  `hint` text COLLATE utf8mb4_unicode_ci,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `driver_id` int(10) UNSIGNED DEFAULT NULL,
  `delivery_address_id` int(10) UNSIGNED DEFAULT NULL,
  `payment_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_statuses`
--

CREATE TABLE `order_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_statuses`
--

INSERT INTO `order_statuses` (`id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Order Received', '2019-08-30 11:09:28', '2019-10-15 12:33:14'),
(2, 'Preparing', '2019-10-15 12:33:50', '2019-10-15 12:33:50'),
(3, 'Ready', '2019-10-15 12:34:30', '2019-10-15 12:34:30'),
(4, 'On the Way', '2019-10-15 12:34:13', '2019-10-15 12:34:13'),
(5, 'Delivered', '2019-10-15 12:34:30', '2019-10-15 12:34:30');

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
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `price` double(8,2) NOT NULL DEFAULT '0.00',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'web',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'users.profile', 'web', '2020-03-29 09:28:02', '2020-03-29 09:28:02', NULL),
(2, 'dashboard', 'web', '2020-03-29 09:28:02', '2020-03-29 09:28:02', NULL),
(3, 'medias.create', 'web', '2020-03-29 09:28:02', '2020-03-29 09:28:02', NULL),
(4, 'medias.delete', 'web', '2020-03-29 09:28:02', '2020-03-29 09:28:02', NULL),
(5, 'medias', 'web', '2020-03-29 09:28:03', '2020-03-29 09:28:03', NULL),
(6, 'permissions.index', 'web', '2020-03-29 09:28:03', '2020-03-29 09:28:03', NULL),
(7, 'permissions.edit', 'web', '2020-03-29 09:28:03', '2020-03-29 09:28:03', NULL),
(8, 'permissions.update', 'web', '2020-03-29 09:28:03', '2020-03-29 09:28:03', NULL),
(9, 'permissions.destroy', 'web', '2020-03-29 09:28:03', '2020-03-29 09:28:03', NULL),
(10, 'roles.index', 'web', '2020-03-29 09:28:03', '2020-03-29 09:28:03', NULL),
(11, 'roles.edit', 'web', '2020-03-29 09:28:03', '2020-03-29 09:28:03', NULL),
(12, 'roles.update', 'web', '2020-03-29 09:28:03', '2020-03-29 09:28:03', NULL),
(13, 'roles.destroy', 'web', '2020-03-29 09:28:03', '2020-03-29 09:28:03', NULL),
(14, 'customFields.index', 'web', '2020-03-29 09:28:03', '2020-03-29 09:28:03', NULL),
(15, 'customFields.create', 'web', '2020-03-29 09:28:03', '2020-03-29 09:28:03', NULL),
(16, 'customFields.store', 'web', '2020-03-29 09:28:03', '2020-03-29 09:28:03', NULL),
(17, 'customFields.show', 'web', '2020-03-29 09:28:03', '2020-03-29 09:28:03', NULL),
(18, 'customFields.edit', 'web', '2020-03-29 09:28:03', '2020-03-29 09:28:03', NULL),
(19, 'customFields.update', 'web', '2020-03-29 09:28:04', '2020-03-29 09:28:04', NULL),
(20, 'customFields.destroy', 'web', '2020-03-29 09:28:04', '2020-03-29 09:28:04', NULL),
(21, 'users.login-as-user', 'web', '2020-03-29 09:28:04', '2020-03-29 09:28:04', NULL),
(22, 'users.index', 'web', '2020-03-29 09:28:04', '2020-03-29 09:28:04', NULL),
(23, 'users.create', 'web', '2020-03-29 09:28:04', '2020-03-29 09:28:04', NULL),
(24, 'users.store', 'web', '2020-03-29 09:28:04', '2020-03-29 09:28:04', NULL),
(25, 'users.show', 'web', '2020-03-29 09:28:04', '2020-03-29 09:28:04', NULL),
(26, 'users.edit', 'web', '2020-03-29 09:28:04', '2020-03-29 09:28:04', NULL),
(27, 'users.update', 'web', '2020-03-29 09:28:04', '2020-03-29 09:28:04', NULL),
(28, 'users.destroy', 'web', '2020-03-29 09:28:04', '2020-03-29 09:28:04', NULL),
(29, 'app-settings', 'web', '2020-03-29 09:28:04', '2020-03-29 09:28:04', NULL),
(30, 'restaurants.index', 'web', '2020-03-29 09:28:04', '2020-03-29 09:28:04', NULL),
(31, 'restaurants.create', 'web', '2020-03-29 09:28:04', '2020-03-29 09:28:04', NULL),
(32, 'restaurants.store', 'web', '2020-03-29 09:28:04', '2020-03-29 09:28:04', NULL),
(33, 'restaurants.edit', 'web', '2020-03-29 09:28:04', '2020-03-29 09:28:04', NULL),
(34, 'restaurants.update', 'web', '2020-03-29 09:28:05', '2020-03-29 09:28:05', NULL),
(35, 'restaurants.destroy', 'web', '2020-03-29 09:28:05', '2020-03-29 09:28:05', NULL),
(36, 'categories.index', 'web', '2020-03-29 09:28:05', '2020-03-29 09:28:05', NULL),
(37, 'categories.create', 'web', '2020-03-29 09:28:05', '2020-03-29 09:28:05', NULL),
(38, 'categories.store', 'web', '2020-03-29 09:28:05', '2020-03-29 09:28:05', NULL),
(39, 'categories.edit', 'web', '2020-03-29 09:28:05', '2020-03-29 09:28:05', NULL),
(40, 'categories.update', 'web', '2020-03-29 09:28:05', '2020-03-29 09:28:05', NULL),
(41, 'categories.destroy', 'web', '2020-03-29 09:28:05', '2020-03-29 09:28:05', NULL),
(42, 'faqCategories.index', 'web', '2020-03-29 09:28:06', '2020-03-29 09:28:06', NULL),
(43, 'faqCategories.create', 'web', '2020-03-29 09:28:06', '2020-03-29 09:28:06', NULL),
(44, 'faqCategories.store', 'web', '2020-03-29 09:28:06', '2020-03-29 09:28:06', NULL),
(45, 'faqCategories.edit', 'web', '2020-03-29 09:28:06', '2020-03-29 09:28:06', NULL),
(46, 'faqCategories.update', 'web', '2020-03-29 09:28:06', '2020-03-29 09:28:06', NULL),
(47, 'faqCategories.destroy', 'web', '2020-03-29 09:28:06', '2020-03-29 09:28:06', NULL),
(48, 'orderStatuses.index', 'web', '2020-03-29 09:28:06', '2020-03-29 09:28:06', NULL),
(49, 'orderStatuses.show', 'web', '2020-03-29 09:28:06', '2020-03-29 09:28:06', NULL),
(50, 'orderStatuses.edit', 'web', '2020-03-29 09:28:06', '2020-03-29 09:28:06', NULL),
(51, 'orderStatuses.update', 'web', '2020-03-29 09:28:07', '2020-03-29 09:28:07', NULL),
(52, 'foods.index', 'web', '2020-03-29 09:28:07', '2020-03-29 09:28:07', NULL),
(53, 'foods.create', 'web', '2020-03-29 09:28:07', '2020-03-29 09:28:07', NULL),
(54, 'foods.store', 'web', '2020-03-29 09:28:07', '2020-03-29 09:28:07', NULL),
(55, 'foods.edit', 'web', '2020-03-29 09:28:07', '2020-03-29 09:28:07', NULL),
(56, 'foods.update', 'web', '2020-03-29 09:28:07', '2020-03-29 09:28:07', NULL),
(57, 'foods.destroy', 'web', '2020-03-29 09:28:07', '2020-03-29 09:28:07', NULL),
(58, 'galleries.index', 'web', '2020-03-29 09:28:07', '2020-03-29 09:28:07', NULL),
(59, 'galleries.create', 'web', '2020-03-29 09:28:07', '2020-03-29 09:28:07', NULL),
(60, 'galleries.store', 'web', '2020-03-29 09:28:08', '2020-03-29 09:28:08', NULL),
(61, 'galleries.edit', 'web', '2020-03-29 09:28:08', '2020-03-29 09:28:08', NULL),
(62, 'galleries.update', 'web', '2020-03-29 09:28:08', '2020-03-29 09:28:08', NULL),
(63, 'galleries.destroy', 'web', '2020-03-29 09:28:08', '2020-03-29 09:28:08', NULL),
(64, 'foodReviews.index', 'web', '2020-03-29 09:28:08', '2020-03-29 09:28:08', NULL),
(65, 'foodReviews.create', 'web', '2020-03-29 09:28:08', '2020-03-29 09:28:08', NULL),
(66, 'foodReviews.store', 'web', '2020-03-29 09:28:08', '2020-03-29 09:28:08', NULL),
(67, 'foodReviews.edit', 'web', '2020-03-29 09:28:08', '2020-03-29 09:28:08', NULL),
(68, 'foodReviews.update', 'web', '2020-03-29 09:28:08', '2020-03-29 09:28:08', NULL),
(69, 'foodReviews.destroy', 'web', '2020-03-29 09:28:08', '2020-03-29 09:28:08', NULL),
(76, 'extras.index', 'web', '2020-03-29 09:28:09', '2020-03-29 09:28:09', NULL),
(77, 'extras.create', 'web', '2020-03-29 09:28:09', '2020-03-29 09:28:09', NULL),
(78, 'extras.store', 'web', '2020-03-29 09:28:09', '2020-03-29 09:28:09', NULL),
(79, 'extras.show', 'web', '2020-03-29 09:28:10', '2020-03-29 09:28:10', NULL),
(80, 'extras.edit', 'web', '2020-03-29 09:28:10', '2020-03-29 09:28:10', NULL),
(81, 'extras.update', 'web', '2020-03-29 09:28:10', '2020-03-29 09:28:10', NULL),
(82, 'extras.destroy', 'web', '2020-03-29 09:28:10', '2020-03-29 09:28:10', NULL),
(83, 'payments.index', 'web', '2020-03-29 09:28:10', '2020-03-29 09:28:10', NULL),
(84, 'payments.show', 'web', '2020-03-29 09:28:10', '2020-03-29 09:28:10', NULL),
(85, 'payments.update', 'web', '2020-03-29 09:28:10', '2020-03-29 09:28:10', NULL),
(86, 'faqs.index', 'web', '2020-03-29 09:28:10', '2020-03-29 09:28:10', NULL),
(87, 'faqs.create', 'web', '2020-03-29 09:28:11', '2020-03-29 09:28:11', NULL),
(88, 'faqs.store', 'web', '2020-03-29 09:28:11', '2020-03-29 09:28:11', NULL),
(89, 'faqs.edit', 'web', '2020-03-29 09:28:11', '2020-03-29 09:28:11', NULL),
(90, 'faqs.update', 'web', '2020-03-29 09:28:11', '2020-03-29 09:28:11', NULL),
(91, 'faqs.destroy', 'web', '2020-03-29 09:28:11', '2020-03-29 09:28:11', NULL),
(92, 'restaurantReviews.index', 'web', '2020-03-29 09:28:11', '2020-03-29 09:28:11', NULL),
(93, 'restaurantReviews.create', 'web', '2020-03-29 09:28:11', '2020-03-29 09:28:11', NULL),
(94, 'restaurantReviews.store', 'web', '2020-03-29 09:28:12', '2020-03-29 09:28:12', NULL),
(95, 'restaurantReviews.edit', 'web', '2020-03-29 09:28:12', '2020-03-29 09:28:12', NULL),
(96, 'restaurantReviews.update', 'web', '2020-03-29 09:28:12', '2020-03-29 09:28:12', NULL),
(97, 'restaurantReviews.destroy', 'web', '2020-03-29 09:28:12', '2020-03-29 09:28:12', NULL),
(98, 'favorites.index', 'web', '2020-03-29 09:28:12', '2020-03-29 09:28:12', NULL),
(99, 'favorites.create', 'web', '2020-03-29 09:28:12', '2020-03-29 09:28:12', NULL),
(100, 'favorites.store', 'web', '2020-03-29 09:28:12', '2020-03-29 09:28:12', NULL),
(101, 'favorites.edit', 'web', '2020-03-29 09:28:12', '2020-03-29 09:28:12', NULL),
(102, 'favorites.update', 'web', '2020-03-29 09:28:12', '2020-03-29 09:28:12', NULL),
(103, 'favorites.destroy', 'web', '2020-03-29 09:28:13', '2020-03-29 09:28:13', NULL),
(104, 'orders.index', 'web', '2020-03-29 09:28:13', '2020-03-29 09:28:13', NULL),
(105, 'orders.create', 'web', '2020-03-29 09:28:13', '2020-03-29 09:28:13', NULL),
(106, 'orders.store', 'web', '2020-03-29 09:28:13', '2020-03-29 09:28:13', NULL),
(107, 'orders.show', 'web', '2020-03-29 09:28:13', '2020-03-29 09:28:13', NULL),
(108, 'orders.edit', 'web', '2020-03-29 09:28:13', '2020-03-29 09:28:13', NULL),
(109, 'orders.update', 'web', '2020-03-29 09:28:13', '2020-03-29 09:28:13', NULL),
(110, 'orders.destroy', 'web', '2020-03-29 09:28:13', '2020-03-29 09:28:13', NULL),
(111, 'notifications.index', 'web', '2020-03-29 09:28:14', '2020-03-29 09:28:14', NULL),
(112, 'notifications.show', 'web', '2020-03-29 09:28:14', '2020-03-29 09:28:14', NULL),
(113, 'notifications.destroy', 'web', '2020-03-29 09:28:14', '2020-03-29 09:28:14', NULL),
(114, 'carts.index', 'web', '2020-03-29 09:28:14', '2020-03-29 09:28:14', NULL),
(115, 'carts.edit', 'web', '2020-03-29 09:28:14', '2020-03-29 09:28:14', NULL),
(116, 'carts.update', 'web', '2020-03-29 09:28:14', '2020-03-29 09:28:14', NULL),
(117, 'carts.destroy', 'web', '2020-03-29 09:28:14', '2020-03-29 09:28:14', NULL),
(118, 'currencies.index', 'web', '2020-03-29 09:28:14', '2020-03-29 09:28:14', NULL),
(119, 'currencies.create', 'web', '2020-03-29 09:28:15', '2020-03-29 09:28:15', NULL),
(120, 'currencies.store', 'web', '2020-03-29 09:28:15', '2020-03-29 09:28:15', NULL),
(121, 'currencies.edit', 'web', '2020-03-29 09:28:15', '2020-03-29 09:28:15', NULL),
(122, 'currencies.update', 'web', '2020-03-29 09:28:15', '2020-03-29 09:28:15', NULL),
(123, 'currencies.destroy', 'web', '2020-03-29 09:28:15', '2020-03-29 09:28:15', NULL),
(124, 'deliveryAddresses.index', 'web', '2020-03-29 09:28:15', '2020-03-29 09:28:15', NULL),
(125, 'deliveryAddresses.create', 'web', '2020-03-29 09:28:15', '2020-03-29 09:28:15', NULL),
(126, 'deliveryAddresses.store', 'web', '2020-03-29 09:28:15', '2020-03-29 09:28:15', NULL),
(127, 'deliveryAddresses.edit', 'web', '2020-03-29 09:28:16', '2020-03-29 09:28:16', NULL),
(128, 'deliveryAddresses.update', 'web', '2020-03-29 09:28:16', '2020-03-29 09:28:16', NULL),
(129, 'deliveryAddresses.destroy', 'web', '2020-03-29 09:28:16', '2020-03-29 09:28:16', NULL),
(130, 'drivers.index', 'web', '2020-03-29 09:28:16', '2020-03-29 09:28:16', NULL),
(131, 'drivers.create', 'web', '2020-03-29 09:28:16', '2020-03-29 09:28:16', NULL),
(132, 'drivers.store', 'web', '2020-03-29 09:28:16', '2020-03-29 09:28:16', NULL),
(133, 'drivers.show', 'web', '2020-03-29 09:28:16', '2020-03-29 09:28:16', NULL),
(134, 'drivers.edit', 'web', '2020-03-29 09:28:16', '2020-03-29 09:28:16', NULL),
(135, 'drivers.update', 'web', '2020-03-29 09:28:16', '2020-03-29 09:28:16', NULL),
(136, 'drivers.destroy', 'web', '2020-03-29 09:28:17', '2020-03-29 09:28:17', NULL),
(137, 'earnings.index', 'web', '2020-03-29 09:28:17', '2020-03-29 09:28:17', NULL),
(138, 'earnings.create', 'web', '2020-03-29 09:28:17', '2020-03-29 09:28:17', NULL),
(139, 'earnings.store', 'web', '2020-03-29 09:28:17', '2020-03-29 09:28:17', NULL),
(140, 'earnings.show', 'web', '2020-03-29 09:28:17', '2020-03-29 09:28:17', NULL),
(141, 'earnings.edit', 'web', '2020-03-29 09:28:17', '2020-03-29 09:28:17', NULL),
(142, 'earnings.update', 'web', '2020-03-29 09:28:17', '2020-03-29 09:28:17', NULL),
(143, 'earnings.destroy', 'web', '2020-03-29 09:28:17', '2020-03-29 09:28:17', NULL),
(144, 'driversPayouts.index', 'web', '2020-03-29 09:28:17', '2020-03-29 09:28:17', NULL),
(145, 'driversPayouts.create', 'web', '2020-03-29 09:28:17', '2020-03-29 09:28:17', NULL),
(146, 'driversPayouts.store', 'web', '2020-03-29 09:28:18', '2020-03-29 09:28:18', NULL),
(147, 'driversPayouts.show', 'web', '2020-03-29 09:28:18', '2020-03-29 09:28:18', NULL),
(148, 'driversPayouts.edit', 'web', '2020-03-29 09:28:18', '2020-03-29 09:28:18', NULL),
(149, 'driversPayouts.update', 'web', '2020-03-29 09:28:18', '2020-03-29 09:28:18', NULL),
(150, 'driversPayouts.destroy', 'web', '2020-03-29 09:28:18', '2020-03-29 09:28:18', NULL),
(151, 'restaurantsPayouts.index', 'web', '2020-03-29 09:28:18', '2020-03-29 09:28:18', NULL),
(152, 'restaurantsPayouts.create', 'web', '2020-03-29 09:28:18', '2020-03-29 09:28:18', NULL),
(153, 'restaurantsPayouts.store', 'web', '2020-03-29 09:28:18', '2020-03-29 09:28:18', NULL),
(154, 'restaurantsPayouts.show', 'web', '2020-03-29 09:28:18', '2020-03-29 09:28:18', NULL),
(155, 'restaurantsPayouts.edit', 'web', '2020-03-29 09:28:18', '2020-03-29 09:28:18', NULL),
(156, 'restaurantsPayouts.update', 'web', '2020-03-29 09:28:19', '2020-03-29 09:28:19', NULL),
(157, 'restaurantsPayouts.destroy', 'web', '2020-03-29 09:28:19', '2020-03-29 09:28:19', NULL),
(158, 'permissions.create', 'web', '2020-03-29 09:29:15', '2020-03-29 09:29:15', NULL),
(159, 'permissions.store', 'web', '2020-03-29 09:29:15', '2020-03-29 09:29:15', NULL),
(160, 'permissions.show', 'web', '2020-03-29 09:29:15', '2020-03-29 09:29:15', NULL),
(161, 'roles.create', 'web', '2020-03-29 09:29:15', '2020-03-29 09:29:15', NULL),
(162, 'roles.store', 'web', '2020-03-29 09:29:15', '2020-03-29 09:29:15', NULL),
(163, 'roles.show', 'web', '2020-03-29 09:29:16', '2020-03-29 09:29:16', NULL),
(164, 'cuisines.index', 'web', '2020-04-11 09:34:39', '2020-04-11 09:34:39', NULL),
(165, 'cuisines.create', 'web', '2020-04-11 09:34:39', '2020-04-11 09:34:39', NULL),
(166, 'cuisines.store', 'web', '2020-04-11 09:34:39', '2020-04-11 09:34:39', NULL),
(167, 'cuisines.edit', 'web', '2020-04-11 09:34:39', '2020-04-11 09:34:39', NULL),
(168, 'cuisines.update', 'web', '2020-04-11 09:34:39', '2020-04-11 09:34:39', NULL),
(169, 'cuisines.destroy', 'web', '2020-04-11 09:34:40', '2020-04-11 09:34:40', NULL),
(170, 'extraGroups.index', 'web', '2020-04-11 09:34:40', '2020-04-11 09:34:40', NULL),
(171, 'extraGroups.create', 'web', '2020-04-11 09:34:40', '2020-04-11 09:34:40', NULL),
(172, 'extraGroups.store', 'web', '2020-04-11 09:34:40', '2020-04-11 09:34:40', NULL),
(173, 'extraGroups.edit', 'web', '2020-04-11 09:34:40', '2020-04-11 09:34:40', NULL),
(174, 'extraGroups.update', 'web', '2020-04-11 09:34:40', '2020-04-11 09:34:40', NULL),
(175, 'extraGroups.destroy', 'web', '2020-04-11 09:34:40', '2020-04-11 09:34:40', NULL),
(176, 'nutrition.index', 'web', '2020-03-29 09:28:09', '2020-03-29 09:28:09', NULL),
(177, 'nutrition.create', 'web', '2020-03-29 09:28:09', '2020-03-29 09:28:09', NULL),
(178, 'nutrition.store', 'web', '2020-03-29 09:28:09', '2020-03-29 09:28:09', NULL),
(179, 'nutrition.edit', 'web', '2020-03-29 09:28:09', '2020-03-29 09:28:09', NULL),
(180, 'nutrition.update', 'web', '2020-03-29 09:28:09', '2020-03-29 09:28:09', NULL),
(181, 'nutrition.destroy', 'web', '2020-03-29 09:28:09', '2020-03-29 09:28:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `information` text COLLATE utf8mb4_unicode_ci,
  `admin_commission` double(8,2) DEFAULT '0.00',
  `delivery_fee` double(8,2) DEFAULT '0.00',
  `delivery_range` double(8,2) DEFAULT '0.00',
  `default_tax` double(8,2) DEFAULT '0.00',
  `closed` tinyint(1) DEFAULT '0',
  `available_for_delivery` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`id`, `name`, `description`, `address`, `latitude`, `longitude`, `phone`, `mobile`, `information`, `admin_commission`, `delivery_fee`, `delivery_range`, `default_tax`, `closed`, `available_for_delivery`, `created_at`, `updated_at`) VALUES
(1, 'Meal Gislason-Bergstrom', 'Assumenda esse sapiente itaque ut. Ut nemo ab et dolor quis neque quis. Suscipit aut id voluptatum molestias omnis officia. Id soluta est est optio velit eos quisquam.', '21046 Windler Stream\nWest Lyda, NY 98259-7484', '38.832921', '10.534172', '258-293-0165 x76344', '(582) 259-7656', 'Distinctio culpa cum a perspiciatis amet. Velit officiis mollitia qui dolorem. Accusantium laudantium id ad ut doloribus.', 13.19, 8.03, 10.03, 29.28, 1, 1, '2020-07-06 02:02:58', '2020-07-06 02:02:58'),
(2, 'Meal Brekke, Keebler and Toy', 'Voluptates sapiente saepe nostrum est qui. Quasi corrupti aut suscipit harum. Unde est vel omnis labore cum qui est.', '19769 Ola Summit\nAlexiefort, NJ 28831', '45.033368', '10.598214', '+13615989016', '+16167042481', 'Amet ut dolorem accusamus iste doloribus atque. Error explicabo aut nesciunt commodi tenetur doloremque exercitationem atque. Mollitia aut ea non non dicta dolores.', 37.61, 6.85, 14.19, 5.79, 1, 1, '2020-07-06 02:02:59', '2020-07-06 02:02:59'),
(3, 'Pizza Lakin, Beahan and Kovacek', 'Aut labore sed cumque nihil qui placeat. Praesentium aut quia rerum nihil saepe quia aut sint. Ea dicta aperiam nulla explicabo sunt facilis porro.', '5683 Pagac Course\nJaniceburgh, WV 07022-0461', '44.02688', '7.235785', '1-525-513-7713', '410.646.4971 x7224', 'Exercitationem non repellat in. Animi nostrum velit pariatur quam voluptatem aliquid. Laborum molestiae quia neque eum minus et.', 12.30, 2.96, 92.99, 29.62, 0, 0, '2020-07-06 02:02:59', '2020-07-06 02:02:59'),
(4, 'Pizza Kirlin, Langosh and Erdman', 'Officiis aperiam numquam illum aut. Eum sint et quis et neque. Sequi ratione et odio dolores fuga molestias. Quaerat totam quis sit similique.', '13411 Wilber Ford\nPort Raoulport, DE 23538-5713', '45.869849', '9.643792', '676-856-5740', '392.887.1928 x9578', 'Velit ut sapiente ut harum dolorem. Suscipit quia sapiente dolorum accusantium. Ratione iste voluptatem velit consequuntur unde inventore ut.', 19.42, 6.57, 81.16, 12.31, 1, 0, '2020-07-06 02:02:59', '2020-07-06 02:02:59'),
(5, 'Restaurant Dach-Wiza', 'Distinctio est ab et ut unde nihil voluptatem. A est dolorum voluptate aut quia facere in.', '2843 Hubert Freeway\nSouth Desmondhaven, DE 24628', '52.317983', '11.073222', '(280) 713-5210 x8564', '(987) 543-4408 x755', 'Dolores autem hic neque omnis. Itaque sunt consectetur ut aut impedit. Sunt sit quod nostrum laudantium pariatur.', 31.83, 6.38, 88.08, 6.17, 0, 1, '2020-07-06 02:02:59', '2020-07-06 02:02:59'),
(6, 'Meal Willms-Haley', 'Omnis quibusdam esse inventore sapiente pariatur quas esse. Adipisci dolorem quas esse id. Numquam pariatur dolorem necessitatibus quis est nostrum. Itaque aut ut quo ut explicabo.', '8109 Treva Glen\nKristopherburgh, AZ 37964', '54.469006', '8.672246', '+1 (915) 629-8275', '1-926-464-0378', 'Earum iure in qui. Voluptas non aliquam quisquam odit aut ut excepturi. Voluptatem at qui aut qui.', 42.48, 8.34, 38.75, 11.62, 0, 0, '2020-07-06 02:02:59', '2020-07-06 02:02:59'),
(7, 'Burger Quitzon-Mertz', 'Eligendi sit aut deserunt iusto sit dolore. Totam dolor laudantium ratione eos quidem. Amet non cum asperiores repellat consequuntur corporis quo. Porro quia sint laboriosam quas et.', '9927 Kip Divide\nWest Nat, WA 51039', '46.825989', '10.277742', '1-257-545-7673 x8836', '+1.951.714.0896', 'Totam laudantium ipsam ullam. Iste atque qui fugiat aut nesciunt itaque molestias. Ratione eaque est voluptatem tempora nulla quasi doloremque.', 27.52, 1.41, 91.77, 10.34, 1, 1, '2020-07-06 02:02:59', '2020-07-06 02:02:59'),
(8, 'Pizza Emard-Lind', 'Ullam autem aperiam commodi molestiae saepe quam. Ducimus ea necessitatibus eaque eveniet. Perferendis maxime nobis rerum et ullam. Placeat quas doloribus labore et.', '835 Sanford Shores Apt. 866\nWilsonbury, AL 22122-8407', '44.417582', '11.554879', '(439) 624-5079 x89711', '+1-978-899-3615', 'Dolores nemo consectetur aut soluta repellat voluptatibus cum. Et ipsum officia omnis quidem est. Sed reiciendis vero amet eligendi nesciunt deleniti commodi.', 32.74, 6.81, 92.77, 16.48, 0, 1, '2020-07-06 02:02:59', '2020-07-06 02:02:59'),
(9, 'Burger Kirlin, Auer and Gorczany', 'Vel illum placeat quibusdam repudiandae quisquam sit velit. Odit eveniet consequatur fugit corporis. Dolor ipsum inventore dolor qui ullam.', '14127 Reinger Fork Suite 575\nEast Crawfordhaven, LA 49500', '44.070974', '10.791112', '(665) 606-1574', '416-520-9180', 'Sed at unde culpa fuga ducimus qui. Quaerat tenetur veniam vel. Repudiandae facilis dolores error.', 26.39, 1.59, 75.26, 8.67, 1, 0, '2020-07-06 02:02:59', '2020-07-06 02:02:59'),
(10, 'Pizza Luettgen, Reilly and Bartell', 'Quos enim voluptatem aut ad cumque hic. Molestiae dolor rerum dolorem. Vel reprehenderit porro nobis voluptatibus id ipsa officia quo. Repellendus et nemo fuga eveniet velit asperiores.', '2958 Jones Ways\nJomouth, OK 69502-4552', '46.507968', '11.510527', '+1 (994) 791-7730', '673.622.2037 x98289', 'Accusamus et nobis commodi aut omnis tenetur. Temporibus sint ipsam porro aliquid nisi aut. Sit consectetur dignissimos quia enim ipsa ut.', 23.43, 7.43, 54.80, 25.79, 1, 1, '2020-07-06 02:02:59', '2020-07-06 02:02:59');

-- --------------------------------------------------------

--
-- Table structure for table `restaurants_payouts`
--

CREATE TABLE `restaurants_payouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `restaurant_id` int(10) UNSIGNED NOT NULL,
  `method` varchar(127) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double(9,2) NOT NULL DEFAULT '0.00',
  `paid_date` datetime DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_cuisines`
--

CREATE TABLE `restaurant_cuisines` (
  `cuisine_id` int(10) UNSIGNED NOT NULL,
  `restaurant_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `restaurant_cuisines`
--

INSERT INTO `restaurant_cuisines` (`cuisine_id`, `restaurant_id`) VALUES
(1, 7),
(1, 9),
(2, 1),
(2, 2),
(2, 7),
(3, 2),
(3, 6),
(4, 1),
(4, 3),
(5, 8),
(5, 10),
(6, 5);

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_reviews`
--

CREATE TABLE `restaurant_reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci,
  `rate` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL,
  `restaurant_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `restaurant_reviews`
--

INSERT INTO `restaurant_reviews` (`id`, `review`, `rate`, `user_id`, `restaurant_id`, `created_at`, `updated_at`) VALUES
(1, 'CHAPTER III. A Caucus-Race and a scroll of parchment in the last word with such a fall as this, I shall see it pop down a good deal: this fireplace is narrow, to be two people! Why, there\'s hardly.', 1, 2, 4, '2020-07-06 02:03:05', '2020-07-06 02:03:05'),
(2, 'Dormouse sulkily remarked, \'If you knew Time as well as I used--and I don\'t put my arm round your waist,\' the Duchess said after a few minutes, and she hastily dried her eyes immediately met those.', 5, 1, 5, '2020-07-06 02:03:05', '2020-07-06 02:03:05'),
(3, 'Laughing and Grief, they used to it in large letters. It was as long as I do,\' said Alice to herself, \'I wish I hadn\'t to bring but one; Bill\'s got the other--Bill! fetch it back!\' \'And who is to.', 2, 4, 9, '2020-07-06 02:03:05', '2020-07-06 02:03:05'),
(4, 'Alice: \'--where\'s the Duchess?\' \'Hush! Hush!\' said the Mouse was bristling all over, and she trembled till she heard a little animal (she couldn\'t guess of what sort it was) scratching and.', 2, 4, 3, '2020-07-06 02:03:05', '2020-07-06 02:03:05'),
(5, 'RABBIT\' engraved upon it. She felt very glad to find quite a chorus of \'There goes Bill!\' then the Mock Turtle at last, with a kind of authority over Alice. \'Stand up and picking the daisies, when.', 4, 3, 6, '2020-07-06 02:03:05', '2020-07-06 02:03:05'),
(6, 'Alice. \'I\'m glad I\'ve seen that done,\' thought Alice. \'Now we shall have to fly; and the little creature down, and felt quite unhappy at the end of trials, \"There was some attempts at applause.', 2, 5, 5, '2020-07-06 02:03:05', '2020-07-06 02:03:05'),
(7, 'Either the well was very hot, she kept tossing the baby violently up and beg for its dinner, and all must have been that,\' said the Mock Turtle. \'And how many hours a day is very confusing.\' \'It.', 2, 2, 2, '2020-07-06 02:03:05', '2020-07-06 02:03:05'),
(8, 'Alice. \'Did you say pig, or fig?\' said the Hatter, and, just as she spoke, but no result seemed to be no doubt that it signifies much,\' she said aloud. \'I must be the use of a well?\' \'Take some more.', 2, 5, 2, '2020-07-06 02:03:05', '2020-07-06 02:03:05'),
(9, 'March Hare went \'Sh! sh!\' and the baby--the fire-irons came first; then followed a shower of little pebbles came rattling in at the stick, and held out its arms and frowning at the righthand bit.', 3, 3, 6, '2020-07-06 02:03:05', '2020-07-06 02:03:05'),
(10, 'So she began very cautiously: \'But I don\'t want to stay with it as well say,\' added the Gryphon; and then nodded. \'It\'s no use in knocking,\' said the White Rabbit hurried by--the frightened Mouse.', 4, 5, 10, '2020-07-06 02:03:05', '2020-07-06 02:03:05'),
(11, 'Queen! The Queen!\' and the blades of grass, but she felt a violent shake at the house, quite forgetting her promise. \'Treacle,\' said the Queen. \'Their heads are gone, if it had fallen into a doze.', 3, 6, 2, '2020-07-06 02:03:05', '2020-07-06 02:03:05'),
(12, 'Mouse was swimming away from him, and said nothing. \'When we were little,\' the Mock Turtle to sing \"Twinkle, twinkle, little bat! How I wonder what CAN have happened to you? Tell us all about it!\'.', 2, 5, 8, '2020-07-06 02:03:05', '2020-07-06 02:03:05'),
(13, 'So she began thinking over other children she knew that it made no mark; but he could go. Alice took up the conversation a little. \'\'Tis so,\' said Alice. \'It goes on, you know,\' the Mock Turtle.', 3, 1, 1, '2020-07-06 02:03:05', '2020-07-06 02:03:05'),
(14, 'Alice; not that she was terribly frightened all the right word) \'--but I shall be a great deal to ME,\' said Alice indignantly. \'Ah! then yours wasn\'t a really good school,\' said the Queen. \'Never!\'.', 1, 6, 3, '2020-07-06 02:03:05', '2020-07-06 02:03:05'),
(15, 'Mouse. \'Of course,\' the Gryphon as if his heart would break. She pitied him deeply. \'What is it?\' \'Why,\' said the Hatter: \'but you could only see her. She is such a wretched height to rest herself.', 2, 2, 5, '2020-07-06 02:03:05', '2020-07-06 02:03:05'),
(16, 'She said this last remark, \'it\'s a vegetable. It doesn\'t look like one, but the tops of the March Hare, \'that \"I breathe when I breathe\"!\' \'It IS a Caucus-race?\' said Alice; \'I daresay it\'s a French.', 3, 6, 9, '2020-07-06 02:03:06', '2020-07-06 02:03:06'),
(17, 'Alice looked all round the thistle again; then the different branches of Arithmetic--Ambition, Distraction, Uglification, and Derision.\' \'I never thought about it,\' said the Mock Turtle had just.', 2, 5, 7, '2020-07-06 02:03:06', '2020-07-06 02:03:06'),
(18, 'Dodo in an impatient tone: \'explanations take such a capital one for catching mice you can\'t swim, can you?\' he added, turning to Alice. \'Nothing,\' said Alice. \'Call it what you mean,\' the March.', 5, 6, 9, '2020-07-06 02:03:06', '2020-07-06 02:03:06'),
(19, 'Adventures, till she was now about two feet high: even then she walked off, leaving Alice alone with the tea,\' the March Hare will be When they take us up and picking the daisies, when suddenly a.', 4, 3, 3, '2020-07-06 02:03:06', '2020-07-06 02:03:06'),
(20, 'I mean what I like\"!\' \'You might just as she could not swim. He sent them word I had it written down: but I shall fall right THROUGH the earth! How funny it\'ll seem, sending presents to one\'s own.', 3, 1, 4, '2020-07-06 02:03:06', '2020-07-06 02:03:06');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'web',
  `default` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `default`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'admin', 'web', 0, '2018-07-21 11:07:56', '2019-09-07 17:12:01', NULL),
(3, 'manager', 'web', 0, '2019-09-07 17:11:38', '2019-09-07 17:11:38', NULL),
(4, 'client', 'web', 1, '2019-09-07 17:11:54', '2019-09-07 17:11:54', NULL),
(5, 'driver', 'web', 0, '2019-12-15 13:20:21', '2019-12-15 13:20:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(2, 2),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(4, 2),
(4, 3),
(4, 4),
(4, 5),
(5, 2),
(5, 3),
(6, 2),
(9, 2),
(10, 2),
(14, 2),
(15, 2),
(16, 2),
(17, 2),
(18, 2),
(19, 2),
(20, 2),
(21, 2),
(22, 2),
(23, 2),
(24, 2),
(26, 2),
(27, 2),
(27, 3),
(27, 4),
(27, 5),
(28, 2),
(29, 2),
(30, 2),
(30, 3),
(30, 4),
(30, 5),
(31, 2),
(32, 2),
(33, 2),
(33, 3),
(34, 2),
(34, 3),
(35, 2),
(36, 2),
(37, 2),
(38, 2),
(39, 2),
(40, 2),
(41, 2),
(42, 2),
(42, 3),
(43, 2),
(44, 2),
(45, 2),
(46, 2),
(47, 2),
(48, 2),
(48, 3),
(48, 5),
(50, 2),
(51, 2),
(52, 2),
(52, 3),
(52, 4),
(52, 5),
(53, 2),
(53, 3),
(54, 2),
(54, 3),
(55, 2),
(55, 3),
(56, 2),
(56, 3),
(57, 2),
(57, 3),
(58, 2),
(58, 3),
(59, 2),
(59, 3),
(60, 2),
(60, 3),
(61, 2),
(61, 3),
(62, 2),
(62, 3),
(63, 2),
(63, 3),
(64, 2),
(64, 3),
(64, 4),
(64, 5),
(67, 2),
(67, 3),
(67, 4),
(67, 5),
(68, 2),
(68, 3),
(68, 4),
(68, 5),
(69, 2),
(76, 2),
(76, 3),
(77, 2),
(77, 3),
(78, 2),
(78, 3),
(80, 2),
(80, 3),
(81, 2),
(81, 3),
(82, 2),
(82, 3),
(83, 2),
(83, 3),
(83, 4),
(83, 5),
(85, 2),
(86, 2),
(86, 3),
(86, 4),
(86, 5),
(87, 2),
(88, 2),
(89, 2),
(90, 2),
(91, 2),
(92, 2),
(92, 3),
(92, 4),
(92, 5),
(95, 2),
(95, 3),
(95, 4),
(95, 5),
(96, 2),
(96, 3),
(96, 4),
(96, 5),
(97, 2),
(98, 2),
(98, 3),
(98, 4),
(98, 5),
(103, 2),
(103, 3),
(103, 4),
(103, 5),
(104, 2),
(104, 3),
(104, 4),
(104, 5),
(107, 2),
(107, 3),
(107, 4),
(107, 5),
(108, 2),
(108, 3),
(109, 2),
(109, 3),
(110, 2),
(110, 3),
(111, 2),
(111, 3),
(111, 4),
(111, 5),
(112, 2),
(113, 2),
(113, 3),
(113, 4),
(113, 5),
(114, 2),
(114, 3),
(114, 4),
(114, 5),
(117, 2),
(117, 3),
(117, 4),
(117, 5),
(118, 2),
(119, 2),
(120, 2),
(121, 2),
(122, 2),
(123, 2),
(124, 2),
(127, 2),
(128, 2),
(129, 2),
(130, 2),
(130, 3),
(130, 5),
(131, 2),
(134, 2),
(134, 3),
(135, 2),
(135, 3),
(137, 2),
(137, 3),
(138, 2),
(144, 2),
(144, 5),
(145, 2),
(145, 3),
(145, 5),
(146, 2),
(146, 3),
(146, 5),
(148, 2),
(149, 2),
(151, 2),
(151, 3),
(152, 2),
(152, 3),
(153, 2),
(153, 3),
(155, 2),
(156, 2),
(160, 2),
(164, 2),
(164, 3),
(164, 4),
(164, 5),
(165, 2),
(166, 2),
(167, 2),
(168, 2),
(169, 2),
(170, 2),
(170, 3),
(171, 2),
(171, 3),
(172, 2),
(172, 3),
(173, 2),
(174, 2),
(175, 2),
(176, 2),
(177, 2);

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `id` int(10) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` char(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_brand` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_last_four` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `braintree_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paypal_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `api_token`, `device_token`, `stripe_id`, `card_brand`, `card_last_four`, `trial_ends_at`, `braintree_id`, `paypal_email`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Michael E. Quinn', 'admin@demo.com', '$2y$10$YOn/Xq6vfvi9oaixrtW8QuM2W0mawkLLqIxL.IoGqrsqOqbIsfBNu', 'PivvPlsQWxPl1bB5KrbKNBuraJit0PrUZekQUgtLyTRuyBq921atFtoR1HuA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MWIpFLXLcNCr2lSSSJ3uG4RZoelNgwhFMxGlw0ZbvDCU0etjp6XYwSjttOph', '2018-08-06 17:28:41', '2019-09-27 02:19:45'),
(2, 'Barbara J. Glanz', 'manager@demo.com', '$2y$10$YOn/Xq6vfvi9oaixrtW8QuM2W0mawkLLqIxL.IoGqrsqOqbIsfBNu', 'tVSfIKRSX2Yn8iAMoUS3HPls84ycS8NAxO2dj2HvePbbr4WHorp4gIFRmFwB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5nysjzVKI4LU92bjRqMUSYdOaIo1EcPC3pIMb6Tcj2KXSUMriGrIQ1iwRdd0', '2018-08-14 11:36:28', '2019-09-25 16:39:35'),
(3, 'Charles W. Abeyta', 'client@demo.com', '$2y$10$EBubVy3wDbqNbHvMQwkj3OTYVitL8QnHvh/zV0ICVOaSbALy5dD0K', 'fXLu7VeYgXDu82SkMxlLPG1mCAXc4EBIx6O5isgYVIKFQiHah0xiOHmzNsBv', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'V6PIUfd8JdHT2zkraTlnBcRSINZNjz5Ou7N0WtUGRyaTweoaXKpSfij6UhqC', '2019-10-12 17:01:26', '2020-03-29 12:14:30'),
(4, 'Robert E. Brock', 'client1@demo.com', '$2y$10$pmdnepS1FhZUMqOaFIFnNO0spltJpziz3j13UqyEwShmLhokmuoei', 'Czrsk9rwD0c75NUPkzNXM2WvbxYHKj8p0nG29pjKT0PZaTgMVzuVyv4hOlte', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-15 12:25:39', '2020-03-29 12:29:39'),
(5, 'Sanchez Roberto', 'driver@demo.com', '$2y$10$T/jwzYDJfC8c9CdD5PbpuOKvEXlpv4.RR1jMT0PgIMT.fzeGw67JO', 'OuMsmU903WMcMhzAbuSFtxBekZVdXz66afifRo3YRCINi38jkXJ8rpN0FcfS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-15 13:19:44', '2020-03-29 11:52:10'),
(6, 'John Doe', 'driver1@demo.com', '$2y$10$YF0jCx2WCQtfZOq99hR8kuXsAE0KSnu5OYSomRtI9iCVguXDoDqVm', 'zh9mzfNO2iPtIxj6k4Jpj8flaDyOsxmlGRVUZRnJqOGBr8IuDyhb3cGoncvS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-29 11:58:04', '2020-03-29 11:58:04');

-- --------------------------------------------------------

--
-- Table structure for table `user_restaurants`
--

CREATE TABLE `user_restaurants` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `restaurant_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_restaurants`
--

INSERT INTO `user_restaurants` (`user_id`, `restaurant_id`) VALUES
(1, 2),
(1, 3),
(1, 5),
(1, 6),
(2, 3),
(2, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app_settings`
--
ALTER TABLE `app_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_settings_key_index` (`key`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_food_id_foreign` (`food_id`),
  ADD KEY `carts_user_id_foreign` (`user_id`);

--
-- Indexes for table `cart_extras`
--
ALTER TABLE `cart_extras`
  ADD PRIMARY KEY (`extra_id`,`cart_id`),
  ADD KEY `cart_extras_cart_id_foreign` (`cart_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cuisines`
--
ALTER TABLE `cuisines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `custom_field_values_custom_field_id_foreign` (`custom_field_id`);

--
-- Indexes for table `delivery_addresses`
--
ALTER TABLE `delivery_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `delivery_addresses_user_id_foreign` (`user_id`);

--
-- Indexes for table `drivers`
--
ALTER TABLE `drivers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `drivers_user_id_foreign` (`user_id`);

--
-- Indexes for table `drivers_payouts`
--
ALTER TABLE `drivers_payouts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `drivers_payouts_user_id_foreign` (`user_id`);

--
-- Indexes for table `driver_restaurants`
--
ALTER TABLE `driver_restaurants`
  ADD PRIMARY KEY (`user_id`,`restaurant_id`),
  ADD KEY `driver_restaurants_restaurant_id_foreign` (`restaurant_id`);

--
-- Indexes for table `earnings`
--
ALTER TABLE `earnings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `earnings_restaurant_id_foreign` (`restaurant_id`);

--
-- Indexes for table `extras`
--
ALTER TABLE `extras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `extras_food_id_foreign` (`food_id`),
  ADD KEY `extras_extra_group_id_foreign` (`extra_group_id`);

--
-- Indexes for table `extra_groups`
--
ALTER TABLE `extra_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `faqs_faq_category_id_foreign` (`faq_category_id`);

--
-- Indexes for table `faq_categories`
--
ALTER TABLE `faq_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favorites_food_id_foreign` (`food_id`),
  ADD KEY `favorites_user_id_foreign` (`user_id`);

--
-- Indexes for table `favorite_extras`
--
ALTER TABLE `favorite_extras`
  ADD PRIMARY KEY (`extra_id`,`favorite_id`),
  ADD KEY `favorite_extras_favorite_id_foreign` (`favorite_id`);

--
-- Indexes for table `foods`
--
ALTER TABLE `foods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `foods_restaurant_id_foreign` (`restaurant_id`),
  ADD KEY `foods_category_id_foreign` (`category_id`);

--
-- Indexes for table `food_orders`
--
ALTER TABLE `food_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `food_orders_food_id_foreign` (`food_id`),
  ADD KEY `food_orders_order_id_foreign` (`order_id`);

--
-- Indexes for table `food_order_extras`
--
ALTER TABLE `food_order_extras`
  ADD PRIMARY KEY (`food_order_id`,`extra_id`),
  ADD KEY `food_order_extras_extra_id_foreign` (`extra_id`);

--
-- Indexes for table `food_reviews`
--
ALTER TABLE `food_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `food_reviews_user_id_foreign` (`user_id`),
  ADD KEY `food_reviews_food_id_foreign` (`food_id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galleries_restaurant_id_foreign` (`restaurant_id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `nutrition`
--
ALTER TABLE `nutrition`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nutrition_food_id_foreign` (`food_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_order_status_id_foreign` (`order_status_id`),
  ADD KEY `orders_driver_id_foreign` (`driver_id`),
  ADD KEY `orders_delivery_address_id_foreign` (`delivery_address_id`),
  ADD KEY `orders_payment_id_foreign` (`payment_id`);

--
-- Indexes for table `order_statuses`
--
ALTER TABLE `order_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_user_id_foreign` (`user_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurants_payouts`
--
ALTER TABLE `restaurants_payouts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `restaurants_payouts_restaurant_id_foreign` (`restaurant_id`);

--
-- Indexes for table `restaurant_cuisines`
--
ALTER TABLE `restaurant_cuisines`
  ADD PRIMARY KEY (`cuisine_id`,`restaurant_id`),
  ADD KEY `restaurant_cuisines_restaurant_id_foreign` (`restaurant_id`);

--
-- Indexes for table `restaurant_reviews`
--
ALTER TABLE `restaurant_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `restaurant_reviews_user_id_foreign` (`user_id`),
  ADD KEY `restaurant_reviews_restaurant_id_foreign` (`restaurant_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_api_token_unique` (`api_token`);

--
-- Indexes for table `user_restaurants`
--
ALTER TABLE `user_restaurants`
  ADD PRIMARY KEY (`user_id`,`restaurant_id`),
  ADD KEY `user_restaurants_restaurant_id_foreign` (`restaurant_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app_settings`
--
ALTER TABLE `app_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cuisines`
--
ALTER TABLE `cuisines`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `custom_fields`
--
ALTER TABLE `custom_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `delivery_addresses`
--
ALTER TABLE `delivery_addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `drivers`
--
ALTER TABLE `drivers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `drivers_payouts`
--
ALTER TABLE `drivers_payouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `earnings`
--
ALTER TABLE `earnings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `extras`
--
ALTER TABLE `extras`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `extra_groups`
--
ALTER TABLE `extra_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `faq_categories`
--
ALTER TABLE `faq_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `foods`
--
ALTER TABLE `foods`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `food_orders`
--
ALTER TABLE `food_orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `food_reviews`
--
ALTER TABLE `food_reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `nutrition`
--
ALTER TABLE `nutrition`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_statuses`
--
ALTER TABLE `order_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `restaurants_payouts`
--
ALTER TABLE `restaurants_payouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `restaurant_reviews`
--
ALTER TABLE `restaurant_reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_food_id_foreign` FOREIGN KEY (`food_id`) REFERENCES `foods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cart_extras`
--
ALTER TABLE `cart_extras`
  ADD CONSTRAINT `cart_extras_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cart_extras_extra_id_foreign` FOREIGN KEY (`extra_id`) REFERENCES `extras` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  ADD CONSTRAINT `custom_field_values_custom_field_id_foreign` FOREIGN KEY (`custom_field_id`) REFERENCES `custom_fields` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `delivery_addresses`
--
ALTER TABLE `delivery_addresses`
  ADD CONSTRAINT `delivery_addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `drivers`
--
ALTER TABLE `drivers`
  ADD CONSTRAINT `drivers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `drivers_payouts`
--
ALTER TABLE `drivers_payouts`
  ADD CONSTRAINT `drivers_payouts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `driver_restaurants`
--
ALTER TABLE `driver_restaurants`
  ADD CONSTRAINT `driver_restaurants_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `driver_restaurants_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `earnings`
--
ALTER TABLE `earnings`
  ADD CONSTRAINT `earnings_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `extras`
--
ALTER TABLE `extras`
  ADD CONSTRAINT `extras_extra_group_id_foreign` FOREIGN KEY (`extra_group_id`) REFERENCES `extra_groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `extras_food_id_foreign` FOREIGN KEY (`food_id`) REFERENCES `foods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `faqs`
--
ALTER TABLE `faqs`
  ADD CONSTRAINT `faqs_faq_category_id_foreign` FOREIGN KEY (`faq_category_id`) REFERENCES `faq_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_food_id_foreign` FOREIGN KEY (`food_id`) REFERENCES `foods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `favorites_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `favorite_extras`
--
ALTER TABLE `favorite_extras`
  ADD CONSTRAINT `favorite_extras_extra_id_foreign` FOREIGN KEY (`extra_id`) REFERENCES `extras` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `favorite_extras_favorite_id_foreign` FOREIGN KEY (`favorite_id`) REFERENCES `favorites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `foods`
--
ALTER TABLE `foods`
  ADD CONSTRAINT `foods_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `foods_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `food_orders`
--
ALTER TABLE `food_orders`
  ADD CONSTRAINT `food_orders_food_id_foreign` FOREIGN KEY (`food_id`) REFERENCES `foods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `food_orders_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `food_order_extras`
--
ALTER TABLE `food_order_extras`
  ADD CONSTRAINT `food_order_extras_extra_id_foreign` FOREIGN KEY (`extra_id`) REFERENCES `extras` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `food_order_extras_food_order_id_foreign` FOREIGN KEY (`food_order_id`) REFERENCES `food_orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `food_reviews`
--
ALTER TABLE `food_reviews`
  ADD CONSTRAINT `food_reviews_food_id_foreign` FOREIGN KEY (`food_id`) REFERENCES `foods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `food_reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `galleries`
--
ALTER TABLE `galleries`
  ADD CONSTRAINT `galleries_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `nutrition`
--
ALTER TABLE `nutrition`
  ADD CONSTRAINT `nutrition_food_id_foreign` FOREIGN KEY (`food_id`) REFERENCES `foods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_delivery_address_id_foreign` FOREIGN KEY (`delivery_address_id`) REFERENCES `delivery_addresses` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `orders_driver_id_foreign` FOREIGN KEY (`driver_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `orders_order_status_id_foreign` FOREIGN KEY (`order_status_id`) REFERENCES `order_statuses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_payment_id_foreign` FOREIGN KEY (`payment_id`) REFERENCES `payments` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `restaurants_payouts`
--
ALTER TABLE `restaurants_payouts`
  ADD CONSTRAINT `restaurants_payouts_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `restaurant_cuisines`
--
ALTER TABLE `restaurant_cuisines`
  ADD CONSTRAINT `restaurant_cuisines_cuisine_id_foreign` FOREIGN KEY (`cuisine_id`) REFERENCES `cuisines` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `restaurant_cuisines_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `restaurant_reviews`
--
ALTER TABLE `restaurant_reviews`
  ADD CONSTRAINT `restaurant_reviews_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `restaurant_reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_restaurants`
--
ALTER TABLE `user_restaurants`
  ADD CONSTRAINT `user_restaurants_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_restaurants_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
