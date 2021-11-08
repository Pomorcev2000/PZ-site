-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Ноя 08 2021 г., 21:11
-- Версия сервера: 8.0.24
-- Версия PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `tipograf`
--
CREATE DATABASE IF NOT EXISTS `tipograf` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `tipograf`;

-- --------------------------------------------------------

--
-- Структура таблицы `attribute_labels`
--

DROP TABLE IF EXISTS `attribute_labels`;
CREATE TABLE `attribute_labels` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `attribute_values`
--

DROP TABLE IF EXISTS `attribute_values`;
CREATE TABLE `attribute_values` (
  `id` int UNSIGNED NOT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `label_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `brands`
--

DROP TABLE IF EXISTS `brands`;
CREATE TABLE `brands` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `img`, `created_at`, `updated_at`) VALUES
(1, 'Бренд1', 'brend1', 'brands/HWobggjZsxJeOGNU78tWQua1W3cpcCej7PLh84vB.png', '2021-11-01 02:08:07', '2021-11-04 14:03:57'),
(2, 'Бренд2', 'brend2', 'brands/EBJvbfKLGk1mOVIck1qil6VOzNU9IPXIsilK1gP8.png', '2021-11-01 02:08:19', '2021-11-04 14:04:22'),
(3, 'Бренд3', 'brend3', 'brands/k0qBjHJC6as0RnLNTzzwqMpVLfcahWaLReZF3KGc.png', '2021-11-01 02:08:30', '2021-11-04 14:04:38'),
(4, 'Бренд4', 'brend4', 'brands/Q65rEbRC8KbC0N39fFPrtm9qi5lBhqpMyzJFJASv.png', '2021-11-01 02:08:48', '2021-11-04 14:04:53');

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Визитки', 'vizitki', NULL, '2021-11-04 13:55:03'),
(2, 'Календари', 'kalendari', NULL, '2021-11-04 13:55:17'),
(3, 'Буклеты', 'buklety', NULL, '2021-11-04 13:55:31'),
(4, 'Плакаты', 'plakaty', NULL, '2021-11-04 13:55:41'),
(5, 'Наклейки', 'nakleyki', NULL, '2021-11-04 13:55:52'),
(6, 'Каталоги', 'katalogi', NULL, '2021-11-04 13:56:18');

-- --------------------------------------------------------

--
-- Структура таблицы `deliveries`
--

DROP TABLE IF EXISTS `deliveries`;
CREATE TABLE `deliveries` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `deliveries`
--

INSERT INTO `deliveries` (`id`, `name`, `description`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Почта России', 'Доставка почтой России', '500', NULL, '2021-10-31 16:44:47'),
(2, 'Курьером', 'Доставка курьеров в пределах города', '200', NULL, NULL),
(3, 'Экспресс доставка', 'Доставка транспортной компанией', '800', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `status_id` int UNSIGNED NOT NULL DEFAULT '1',
  `delivery_id` int UNSIGNED NOT NULL,
  `payment_id` int UNSIGNED NOT NULL,
  `sum` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `status_id`, `delivery_id`, `payment_id`, `sum`, `created_at`, `updated_at`) VALUES
(1, 2, 3, 2, 2, '11677.00', '2021-10-31 13:53:18', '2021-10-31 18:24:38'),
(2, 2, 1, 1, 1, '13495.00', '2021-10-31 18:34:53', '2021-10-31 18:34:53'),
(3, 1, 1, 3, 3, '130.00', '2021-10-30 18:37:17', '2021-10-31 18:37:17'),
(4, 2, 1, 2, 2, '4465.00', '2021-10-31 19:01:43', '2021-10-31 18:56:43'),
(5, 2, 5, 3, 3, '13495.00', '2021-10-31 19:48:54', '2021-11-01 15:33:48'),
(7, 2, 1, 1, 1, '240034.00', '2021-11-01 15:15:15', '2021-11-01 15:15:15'),
(8, 2, 1, 1, 1, '2574.00', '2021-11-04 10:12:02', '2021-11-04 10:12:02');

-- --------------------------------------------------------

--
-- Структура таблицы `order_items`
--

DROP TABLE IF EXISTS `order_items`;
CREATE TABLE `order_items` (
  `id` int UNSIGNED NOT NULL,
  `order_id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `payments`
--

DROP TABLE IF EXISTS `payments`;
CREATE TABLE `payments` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `payments`
--

INSERT INTO `payments` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Перевод на карту Сбербанк', 'Оплата осуществляется переводом на карту Сбербанк 1212 1212 1212 1212', NULL, '2021-10-29 06:32:25'),
(2, 'Оплата при получении', 'Оплата наложенным платежом при получении на почте', NULL, NULL),
(3, 'Рассрочка', 'Рассрочка платежа', NULL, '2021-11-04 15:07:02');

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `price` decimal(8,2) NOT NULL,
  `SKU` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock_status` tinyint(1) NOT NULL,
  `hit` tinyint(1) NOT NULL,
  `quantity` int UNSIGNED NOT NULL DEFAULT '10',
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int UNSIGNED DEFAULT NULL,
  `brand_id` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `short_description`, `description`, `price`, `SKU`, `stock_status`, `hit`, `quantity`, `img`, `category_id`, `brand_id`, `created_at`, `updated_at`) VALUES
(127, 'Плакат', 'plakat', 'Профессиональная печать плакатов', '<p>Профессиональная печать плакатов</p>', '150.00', 'ID007', 1, 1, 100, 'products/znS4LMqTgIqaxewyJklfkGsBk9rnJnoe6tdWEMcq.jpg', 4, 1, '2021-11-04 14:47:11', '2021-11-04 14:47:11'),
(128, 'Наклейка стример', 'nakleyka-strimer', 'Универсальная наклейка', NULL, '200.00', 'SD09542-25', 1, 0, 12, 'products/iJkcMfXcgvZXYLohGyiQQWea3soBnDn8WAZSaBBH.jpg', 5, 2, '2021-11-04 14:52:08', '2021-11-04 14:52:08'),
(129, 'Наклейки на продукты, прозрачные', 'nakleyki-na-produkty-prozrachnye', 'Наклейки на продукты', NULL, '100.00', '5AC7854', 1, 0, 502, 'products/RQ7JMCevc5S4S5NDfGocuIpuitfPCyuFfXCbN5km.jpg', 5, 4, '2021-11-04 14:56:29', '2021-11-04 14:56:29'),
(130, 'Универсальная наклейка на продукты', 'universalnaya-nakleyka-na-produkty', 'Наклейки на продукты', NULL, '100.00', '5AC7845', 1, 0, 5, 'products/x9J4wYjezjpcV2lz8hSJcGUB5EUZyZJcjg8gP179.jpg', 5, 4, '2021-11-04 15:01:43', '2021-11-04 15:01:43'),
(131, 'Подарочный календарь', 'podarochnyy-kalendar', 'Календари в подарок', NULL, '350.00', '2548515DEFJ84755', 1, 0, 17, 'products/o5r4pRvvjbmmhQfJwgQ9XnSLtwqhGkgpeICB674f.jpg', 2, 1, '2021-11-04 16:23:44', '2021-11-04 16:23:44'),
(132, 'Подарочный календарь, цвет белый', 'podarochnyy-kalendar-cvet-belyy', 'Календари в подарок', NULL, '350.00', '2548515DEFJ22755', 1, 0, 5, 'products/3hjsalort4an66MXZpdnNVn74OKa8cdMyUTAyGqE.jpg', 2, 1, '2021-11-04 16:24:57', '2021-11-04 16:24:57'),
(133, 'Наклейки праздничные, набор', 'nakleyki-prazdnichnye-nabor', 'Наклейка праздничная', NULL, '350.00', '7845', 1, 0, 100, 'products/KJksNnzPW1BWHDtDFCSPqanuWFwofjK8H9Fd4hbG.jpg', 5, 1, '2021-11-04 16:32:39', '2021-11-04 16:32:39'),
(134, 'Наклейки на мороженое', 'nakleyki-na-morozhenoe', 'Наклейки на продукты', NULL, '150.00', '7847', 1, 0, 54, 'products/2PKZ9EpbsqZu7He8qNgkH4kTotcuyShPHeQBdY8Z.jpg', 5, 3, '2021-11-04 16:33:30', '2021-11-04 16:33:30'),
(135, 'Наклейки праздничные, набор', 'nakleyki-prazdnichnye-nabor-2', 'Наклейка праздничная', NULL, '170.00', '7847', 1, 0, 432, 'products/dtt2go7zWx2CqcGCj8VWOIj5cN2OU3FXrIru6oHB.jpg', 5, 4, '2021-11-04 16:34:49', '2021-11-04 16:34:49'),
(136, 'Наклейки праздничные, набор', 'nakleyki-prazdnichnye-nabor-3', 'Наклейка праздничная', NULL, '170.00', '7847', 1, 0, 100, 'products/3HiAObXNQuaEXBZTou3UIrSZMQol7X4KinsYrWsP.jpg', 5, 1, '2021-11-04 16:38:47', '2021-11-04 16:38:47'),
(137, 'Наклейки, набор', 'nakleyki-nabor', 'Наклейка стандартная', NULL, '200.00', '7847', 1, 0, 17, 'products/d41Ak1KQ01qZZnuymJLpKiJPOizgLySlNBNcBvFG.png', 5, 3, '2021-11-04 16:40:08', '2021-11-04 16:40:08'),
(138, 'Плакат призывающий', 'plakat-prizyvayushchiy', 'Плакаты универсальные', NULL, '450.00', 'DFID0787785', 1, 1, 55, 'products/N2eqot5zMGR7MpDWYQukjpSBiNaofW1PtfQqvXRs.jpg', 4, 2, '2021-11-04 16:41:22', '2021-11-04 16:42:03'),
(139, 'Плакат праздничный', 'plakat-prazdnichnyy', 'Плакаты праздничные', NULL, '450.00', '5AC7854', 1, 0, 100, 'products/ImW9mYKd6y1xQJLNzzaoGCKQo5CwqEfQ4HNivPfR.jpg', 4, 4, '2021-11-04 16:43:24', '2021-11-04 16:43:24'),
(140, 'Плакат разыскивается', 'plakat-razyskivaetsya', 'Плакат разыскивается на диком Западе', NULL, '350.00', '5AC7554', 1, 0, 12, 'products/NWNfFObNMeyvZTJjRFxZbNpfWW8rBe6jvwjKJ6zd.jpg', 4, 1, '2021-11-04 16:44:32', '2021-11-04 16:44:32'),
(141, 'Плакат разыскивается', 'plakat-razyskivaetsya-2', 'Плакат разыскивается на диком Западе', NULL, '350.00', '7847', 1, 0, 12, 'products/rJHLXy6UIwevfrmn4S3FHrHyJjxqEl93sMEt2weO.png', 4, 1, '2021-11-04 16:45:47', '2021-11-04 16:45:47'),
(142, 'Каталог на каждый день', 'katalog-na-kazhdyy-den', 'Каталог универсальный', NULL, '450.00', 'ID117', 1, 0, 3, 'products/8jMkZGGqZUWJCehwjsngvawXyd45QopFUgMNNcAK.jpg', 6, 2, '2021-11-04 18:19:35', '2021-11-04 18:19:35'),
(143, 'Каталог на каждый день', 'katalog-na-kazhdyy-den-2', 'Каталог универсальный', NULL, '100.00', 'ID033', 1, 0, 100, 'products/hxCeEJ5Z3WTgOOo1jJkgDC4vpz0iwXu9bdRrWxqk.jpg', 6, 2, '2021-11-04 18:20:23', '2021-11-04 18:20:23'),
(144, 'Буклет на все случаи жизни', 'buklet-na-vse-sluchai-zhizni', 'Буклет универсальный', NULL, '150.00', 'ID07545', 1, 0, 17, 'products/VIH8wdkAgtUVVi5zizJzbhCIcJ9XSqA5nX2IJuSx.jpg', 3, 2, '2021-11-04 18:29:54', '2021-11-04 18:29:54');

-- --------------------------------------------------------

--
-- Структура таблицы `products_of_day`
--

DROP TABLE IF EXISTS `products_of_day`;
CREATE TABLE `products_of_day` (
  `id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `products_of_day`
--

INSERT INTO `products_of_day` (`id`, `product_id`, `title`, `description`, `img`, `created_at`, `updated_at`) VALUES
(4, 127, 'Профессиональная печать плакатов', '<p>Печать прекрасных плакатов выского качества любого размера и объема.</p>', 'products_of_day/HjT3VHmbsZMlZ8OY9q35zaOEJln8lTiAFYfgwinP.png', '2021-11-04 16:59:48', '2021-11-04 16:59:48');

-- --------------------------------------------------------

--
-- Структура таблицы `sliders`
--

DROP TABLE IF EXISTS `sliders`;
CREATE TABLE `sliders` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sliders`
--

INSERT INTO `sliders` (`id`, `product_id`, `title`, `description`, `img`, `created_at`, `updated_at`) VALUES
(4, 127, 'Профессиональная печать плакатов', NULL, 'sliders/4hPR9oogGN4rjNY1lUCFHu7n7tnOhlG1V1G67xOL.jpg', '2021-11-04 16:52:44', '2021-11-04 16:52:44'),
(5, 127, 'Профессиональная печать плакатов', NULL, 'sliders/oS0YLjBTscBoMqcMaCJqPEv5CSxdTHX1brGEZzDQ.jpg', '2021-11-04 16:53:02', '2021-11-04 16:53:02');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int UNSIGNED NOT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `middle_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int UNSIGNED DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `middle_name`, `address`, `post_code`, `role_id`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Петров', 'Иван', 'Иванович', 'Киров, Маклина 01', '234567', NULL, 'user@mail.ru', NULL, '$2y$10$3cjAdHaFsnepG6Q4tM4MGeC2K12e/xryo13GnjEPQWsomTiALF35S', NULL, '2021-10-29 17:15:06', '2021-11-07 18:05:19'),
(2, 'Администратор', 'Admin', NULL, 'Киров, Маклина 31', '234235', 1, 'admin@eshop.loc', NULL, '$2y$10$8QTqo2pbCAQ/p6yjom/6c.rmF45qigL3Km3J.omHqs5lpzfNsH9Ie', NULL, '2021-10-30 18:47:18', '2021-11-04 10:10:55');

-- --------------------------------------------------------

--
-- Структура таблицы `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE `user_roles` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `user_roles`
--

INSERT INTO `user_roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', NULL, NULL),
(2, 'Менеджер', '2021-10-31 17:32:37', '2021-10-31 17:32:37');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `attribute_labels`
--
ALTER TABLE `attribute_labels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `label_id` (`label_id`);

--
-- Индексы таблицы `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Индексы таблицы `deliveries`
--
ALTER TABLE `deliveries`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `delivery_id` (`delivery_id`),
  ADD KEY `payment_id` (`payment_id`);

--
-- Индексы таблицы `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `brand_id` (`brand_id`);

--
-- Индексы таблицы `products_of_day`
--
ALTER TABLE `products_of_day`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sliders_product_id_foreign` (`product_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `role_id` (`role_id`);

--
-- Индексы таблицы `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `attribute_labels`
--
ALTER TABLE `attribute_labels`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `attribute_values`
--
ALTER TABLE `attribute_values`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `deliveries`
--
ALTER TABLE `deliveries`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT для таблицы `products_of_day`
--
ALTER TABLE `products_of_day`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `attribute_labels`
--
ALTER TABLE `attribute_labels`
  ADD CONSTRAINT `attribute_labels_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD CONSTRAINT `attribute_values_ibfk_1` FOREIGN KEY (`label_id`) REFERENCES `attribute_labels` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`delivery_id`) REFERENCES `deliveries` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `orders_ibfk_4` FOREIGN KEY (`payment_id`) REFERENCES `payments` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `products_of_day`
--
ALTER TABLE `products_of_day`
  ADD CONSTRAINT `products_of_day_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `sliders`
--
ALTER TABLE `sliders`
  ADD CONSTRAINT `sliders_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `user_roles` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
