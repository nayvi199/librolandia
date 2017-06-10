-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-06-2017 a las 08:29:55
-- Versión del servidor: 10.1.22-MariaDB
-- Versión de PHP: 7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `librolandia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banners`
--

CREATE TABLE `banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'images/banners/default.png',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'images/default.jpg',
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `brands`
--

INSERT INTO `brands` (`id`, `name`, `image`, `url`, `created_at`, `updated_at`) VALUES
(1, 'Planeta', 'images/categories/logoplanetalector.png', 'https://www.planetadelibros.com/editorial/editorial-planeta/8', '2017-06-04 16:21:04', '2017-06-08 11:11:49'),
(2, 'Alfaguara', 'images/brands/Alfaguara-e1431540527187-510x186.jpg', 'https://pendulo.com/tiendas/alfaguara/', '2017-06-08 11:14:31', '2017-06-08 11:14:31'),
(3, 'Fenix', 'images/brands/LOGO-GRUPO-SM.jpg', 'http://www.editorialfenix.com/?gclid=CPrkite9rdQCFURufgodHbEOZA', '2017-06-08 11:14:57', '2017-06-08 11:14:57'),
(4, 'Balam', 'images/brands/balam logo.jpg', 'http://servicioseditoriales.net/', '2017-06-08 11:16:09', '2017-06-08 11:16:09'),
(5, 'Alpha', 'images/brands/Logo_Alpha_Decay__foto__opt.jpg', 'https://pendulo.com/tiendas/alpha_decay', '2017-06-08 11:17:52', '2017-06-08 11:17:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'images/categories/default.jpg',
  `gender_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `image`, `gender_id`, `created_at`, `updated_at`) VALUES
(1, 'Griega', 'Libro', 'images/categories/default.jpg', 1, '2017-06-04 16:19:05', '2017-06-05 11:44:49'),
(2, 'Arte mistico', 'Libros de Arte mistico', 'images/categories/descarga.jpg', 2, '2017-06-05 23:51:55', '2017-06-05 23:51:55'),
(3, 'Culturismo', 'Libros del culturismo en Zonas de Sinaloa', 'images/categories/cultura.jpg', 3, '2017-06-06 00:02:04', '2017-06-06 00:02:04'),
(4, 'Personales', 'Libros de historias personales.', 'images/categories/personal.jpg', 4, '2017-06-06 00:02:50', '2017-06-06 00:02:50'),
(5, 'Sociologia', 'Libros sobre la sociologia.', 'images/categories/p.jpg', 5, '2017-06-06 00:04:19', '2017-06-06 00:04:19'),
(6, 'Surrealismo', 'Libros para intentar reflejar el funcionamiento del subconsciente. ', 'images/categories/123.jpg', 2, '2017-06-08 15:31:44', '2017-06-08 15:31:44'),
(7, 'Paranormal', 'Libros sobre ciencia ficcion enfocado a lo paranormal.', 'images/categories/zen-pinball-paranormal_logo_black-1280px-50p.jpg', 6, '2017-06-08 17:34:49', '2017-06-08 17:37:56'),
(8, 'Estructural', 'Libros en referencia a la estructura de los edificios. ', 'images/categories/olis.jpg', 1, '2017-06-09 14:21:26', '2017-06-09 14:22:05'),
(9, 'Libros de ciencias de la comunicacion', '\r\nSección de libros enfocados en TIC\'S.\r\n', 'images/categories/default.jpg', 7, '2017-06-10 11:41:48', '2017-06-10 11:41:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colors`
--

CREATE TABLE `colors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `example` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `colors`
--

INSERT INTO `colors` (`id`, `name`, `example`, `created_at`, `updated_at`) VALUES
(1, 'Generico', '#ff0000', '2017-06-04 16:19:41', '2017-06-04 16:19:41'),
(2, 'Adolescentes', '#8000ff', '2017-06-08 11:19:49', '2017-06-08 11:19:49'),
(3, 'Adultos', '#000000', '2017-06-08 11:20:20', '2017-06-08 11:20:20'),
(4, 'Todaslas edades', '#ffff80', '2017-06-08 11:20:36', '2017-06-08 11:20:36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `product_id`, `message`, `status`, `created_at`, `updated_at`) VALUES
(1, 15, 29, '', 2, '2017-06-09 09:09:09', '2017-06-09 09:15:09'),
(2, 15, 29, 'Creo que este libro tiene muy buena pinta, me gustaria obtenerlo. Muy buenos productos. ', 0, '2017-06-09 09:09:44', '2017-06-09 09:09:44'),
(3, 15, 27, 'Esta muy bien este libro, me gusta especialmente la pelicula. ', 0, '2017-06-09 12:39:00', '2017-06-09 12:39:00'),
(4, 15, 29, 'Me gusta este libro. ', 1, '2017-06-09 23:07:36', '2017-06-09 23:07:45'),
(5, 15, 14, 'Hola, me gusto mucho su pagina, en especial el libro. ', 1, '2017-06-10 05:25:17', '2017-06-10 05:25:36'),
(6, 17, 30, 'Este libro es de mis favorito, espero para que llegue a casa. Saludos.', 0, '2017-06-10 05:36:08', '2017-06-10 05:36:08'),
(7, 15, 4, 'Este libro me gusto mucho. ', 1, '2017-06-10 10:50:50', '2017-06-10 10:51:17'),
(8, 13, 16, 'Me gusta este libro, version web. ', 1, '2017-06-10 11:34:03', '2017-06-10 11:37:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `discounts`
--

CREATE TABLE `discounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8_unicode_ci NOT NULL,
  `percentage` int(11) NOT NULL,
  `specification_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genders`
--

CREATE TABLE `genders` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'images/categories/default.jpg',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `genders`
--

INSERT INTO `genders` (`id`, `name`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Arquitectura', 'Edificacion antigua y moderna', 'images/genders/genero_arquitectura.jpg', '2017-06-04 16:18:13', '2017-06-05 11:37:14'),
(2, 'Arte Contemporáneo', 'Textos de arte', 'images/categories/genero_arteContemporaneo.jpg', NULL, '2017-06-05 21:48:00'),
(3, 'Arte Mexicano', 'Obras de autores mexicanos', 'images/categories/genero_arteMexicano.gif', NULL, NULL),
(4, 'Biografias', 'Vidas de personajes famosos', 'images/categories/genero_biografia.gif', NULL, NULL),
(5, 'Ciencia', 'Libros de ciencia y tecnologia', 'images/categories/genero_ciencia.gif', NULL, NULL),
(6, 'Urban Fantasy', 'Libros de Ciencia ficcion. ', 'images/genders/urbanfantasy.jpg', '2017-06-08 17:30:22', '2017-06-08 17:32:42'),
(7, 'Programacion', 'Seccion dedicada a todos los aspectos de programacion\r\n', 'images/genders/a.jpg', '2017-06-10 11:40:04', '2017-06-10 11:40:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'images/default.png',
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `images`
--

INSERT INTO `images` (`id`, `image`, `product_id`, `created_at`, `updated_at`) VALUES
(2, 'images/products/978849389850.GIF', 2, '2017-06-05 11:50:18', '2017-06-05 21:24:35'),
(3, 'images/products/habitarlaciudad.jpg', 3, '2017-06-05 11:52:30', '2017-06-05 22:56:02'),
(4, 'images/products/historiadelaarquitectura.jpg', 4, '2017-06-05 11:52:49', '2017-06-05 22:57:26'),
(5, 'images/products/comoleerparis.GIF', 5, '2017-06-05 11:53:16', '2017-06-05 23:00:02'),
(13, 'images/products/america.GIF', 13, '2017-06-05 23:01:16', '2017-06-05 23:01:16'),
(14, 'images/products/animitas.png', 14, '2017-06-05 23:15:31', '2017-06-05 23:15:31'),
(15, 'images/products/creaticity.jpg', 15, '2017-06-05 23:16:55', '2017-06-05 23:16:55'),
(16, 'images/products/sacredmirriors.GIF', 16, '2017-06-05 23:17:59', '2017-06-05 23:17:59'),
(17, 'images/products/remedios.jpg', 17, '2017-06-05 23:20:15', '2017-06-05 23:20:15'),
(18, 'images/products/frida.GIF', 18, '2017-06-05 23:24:19', '2017-06-05 23:24:19'),
(19, 'images/products/encuentros.GIF', 19, '2017-06-05 23:25:40', '2017-06-05 23:25:40'),
(20, 'images/products/malintzin1_2.jpg', 20, '2017-06-05 23:26:33', '2017-06-05 23:26:33'),
(21, 'images/products/kafka_5.jpg', 21, '2017-06-05 23:27:22', '2017-06-05 23:27:22'),
(22, 'images/products/gabriel.jpg', 22, '2017-06-05 23:27:55', '2017-06-05 23:27:55'),
(23, 'images/products/espacio_3.jpg', 23, '2017-06-05 23:29:25', '2017-06-05 23:29:25'),
(24, 'images/products/sexoenlatierra.GIF', 24, '2017-06-05 23:30:13', '2017-06-05 23:30:13'),
(25, 'images/products/mitos_23.jpg', 25, '2017-06-05 23:31:04', '2017-06-05 23:31:04'),
(26, 'images/products/la_chica_del_tren.jpg', 26, '2017-06-08 15:55:47', '2017-06-08 15:55:47'),
(27, 'images/products/lunanueva.jpg', 27, '2017-06-08 16:11:04', '2017-06-08 16:11:04'),
(28, 'images/products/eclipse.jpg', 28, '2017-06-08 17:29:23', '2017-06-08 17:29:23'),
(29, 'images/products/echo.png', 29, '2017-06-08 17:40:35', '2017-06-08 17:40:35'),
(30, 'images/products/amanecer.jpg', 30, '2017-06-09 15:16:46', '2017-06-09 15:16:46'),
(31, 'images/products/eclipse.jpg', 31, '2017-06-10 11:44:27', '2017-06-10 11:44:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventories`
--

CREATE TABLE `inventories` (
  `id` int(10) UNSIGNED NOT NULL,
  `amount` int(11) NOT NULL,
  `specification_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `inventories`
--

INSERT INTO `inventories` (`id`, `amount`, `specification_id`, `created_at`, `updated_at`) VALUES
(1, 8, 5, '2017-06-07 09:52:20', '2017-06-07 09:56:51'),
(2, 2, 6, '2017-06-08 15:17:13', '2017-06-10 05:38:31'),
(3, 22, 7, '2017-06-08 15:17:44', '2017-06-08 22:18:22'),
(4, 41, 8, '2017-06-08 15:18:07', '2017-06-10 10:52:58'),
(5, 100, 9, '2017-06-08 15:18:25', '2017-06-08 15:18:25'),
(6, 150, 10, '2017-06-08 15:18:51', '2017-06-08 15:18:51'),
(7, 25, 11, '2017-06-08 17:13:52', '2017-06-08 17:13:52'),
(8, 148, 12, '2017-06-08 17:14:21', '2017-06-10 05:26:40'),
(9, 40, 13, '2017-06-08 17:14:48', '2017-06-08 17:14:48'),
(10, 96, 14, '2017-06-08 17:15:09', '2017-06-09 13:12:56'),
(11, 18, 15, '2017-06-08 17:15:45', '2017-06-10 11:35:59'),
(12, 12, 16, '2017-06-08 17:16:02', '2017-06-08 17:16:02'),
(13, 5, 17, '2017-06-09 14:46:04', '2017-06-10 00:46:40'),
(14, 25, 18, '2017-06-09 14:46:22', '2017-06-09 14:46:22'),
(15, 42, 19, '2017-06-09 14:46:46', '2017-06-09 14:46:46'),
(16, 142, 20, '2017-06-09 14:47:00', '2017-06-09 14:47:00'),
(17, 50, 21, '2017-06-10 05:30:33', '2017-06-10 05:30:33'),
(18, 50, 22, '2017-06-10 11:38:57', '2017-06-10 11:38:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `line_sales`
--

CREATE TABLE `line_sales` (
  `id` int(10) UNSIGNED NOT NULL,
  `sale_id` int(10) UNSIGNED NOT NULL,
  `specification_id` int(10) UNSIGNED NOT NULL,
  `amount` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `line_sales`
--

INSERT INTO `line_sales` (`id`, `sale_id`, `specification_id`, `amount`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 187, '2017-06-05 12:35:54', '2017-06-05 12:35:54'),
(2, 2, 5, 2, 350, '2017-06-07 09:56:51', '2017-06-07 09:56:51'),
(3, 3, 7, 2, 120, '2017-06-08 22:18:22', '2017-06-08 22:18:22'),
(4, 4, 8, 3, 380, '2017-06-09 13:12:56', '2017-06-09 13:12:56'),
(5, 4, 14, 4, 250, '2017-06-09 13:12:56', '2017-06-09 13:12:56'),
(6, 5, 17, 1, 510, '2017-06-09 15:19:53', '2017-06-09 15:19:53'),
(7, 6, 17, 2, 510, '2017-06-09 23:06:20', '2017-06-09 23:06:20'),
(8, 7, 17, 2, 510, '2017-06-10 00:46:40', '2017-06-10 00:46:40'),
(9, 8, 12, 2, 980, '2017-06-10 05:26:40', '2017-06-10 05:26:40'),
(10, 9, 6, 3, 400, '2017-06-10 05:38:31', '2017-06-10 05:38:31'),
(11, 10, 8, 3, 380, '2017-06-10 10:52:58', '2017-06-10 10:52:58'),
(12, 11, 15, 2, 410, '2017-06-10 11:35:59', '2017-06-10 11:35:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_11_07_073612_create_roles_table', 1),
(4, '2016_11_07_073718_create_categories_table', 1),
(5, '2016_11_07_073802_create_discounts_table', 1),
(6, '2016_11_07_080223_add_relations_users_table', 1),
(7, '2016_11_08_095440_create_size_table', 1),
(8, '2016_11_08_095555_create_brands_table', 1),
(9, '2016_11_08_095615_create_colors_table', 1),
(10, '2016_11_08_100212_create_subcategories_table', 1),
(11, '2016_11_08_100433_add_relations_subcategories_table', 1),
(12, '2016_11_09_102851_create_products_table', 1),
(13, '2016_11_09_113236_create_inventories_table', 1),
(14, '2016_11_17_170751_create_comment_table', 1),
(15, '2016_11_17_170819_add_relations_comment_table', 1),
(16, '2016_11_21_075914_create_sales_table', 1),
(17, '2016_11_21_080005_create_line_sales_table', 1),
(18, '2016_11_21_082025_add_relations_seles_table', 1),
(19, '2016_11_21_085145_create_specifications_table', 1),
(20, '2016_11_21_090045_add_relations_line_sales_table', 1),
(21, '2016_11_21_090110_add_relations_discounts_table', 1),
(22, '2016_11_21_090141_add_relations_specifications_table', 1),
(23, '2016_11_21_090232_add_relation_inventories_table', 1),
(24, '2016_11_21_220819_create_scores_table', 1),
(25, '2016_11_21_220928_add_relations_scores_table', 1),
(26, '2016_12_03_202015_create_genders_table', 1),
(27, '2016_12_03_202200_add_relations_categories_table', 1),
(28, '2016_12_03_204610_add_relation_products_table', 1),
(29, '2016_12_04_032442_create_images_table', 1),
(30, '2016_12_04_032523_add_relation_images_table', 1),
(31, '2016_12_05_144510_create_banners_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `price` int(11) NOT NULL DEFAULT '0',
  `brand_id` int(10) UNSIGNED DEFAULT NULL,
  `color_id` int(10) UNSIGNED DEFAULT NULL,
  `subcategory_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `brand_id`, `color_id`, `subcategory_id`, `created_at`, `updated_at`, `image`) VALUES
(2, 'Muerte y vida de las grandes ', 'es una rica fuente de ideas sobre los aspectos que actúan y rigen la sociedad.', 0, 1, 1, 1, '2017-06-05 11:50:18', '2017-06-05 11:50:18', 'images/libroantiguo.jpg'),
(3, 'Habitar la ciudad', 'Esperando nueva actualizacion de sinopsis.', 0, 1, 1, 1, '2017-06-05 11:52:30', '2017-06-05 11:52:30', NULL),
(4, 'Historia de la arquitectura ', 'Esperando en actualizacion de sinopsis.', 0, 1, 1, 1, '2017-06-05 11:52:49', '2017-06-05 11:52:49', 'images/default.jpg'),
(5, 'Como leer París', 'Sin sinopsis por el momento.', 0, 1, 1, 1, '2017-06-05 11:53:16', '2017-06-05 11:53:16', NULL),
(13, 'América', 'Informacion sobre todo lo referente al titulo.', 0, 5, 1, 2, '2017-06-05 23:01:16', '2017-06-08 17:12:51', NULL),
(14, 'Animitas', 'Un culto que se resiste a los embates de la modernización La animita es una expresión de nuestra particular forma de experimentar la religiosidad.', 0, 1, 1, 2, '2017-06-05 23:15:31', '2017-06-05 23:58:21', NULL),
(15, 'Creaticity', 'Guia para vencer las adversidades.', 0, 1, 1, 2, '2017-06-05 23:16:55', '2017-06-05 23:58:47', NULL),
(16, 'Sacred Mirrors: The Visionary Art of Alex Grey', 'Esperando actualizacion por el momento', 0, 5, 1, 2, '2017-06-05 23:17:58', '2017-06-08 17:17:11', NULL),
(17, 'Remedios Varo: El hilo invisible', NULL, 0, 1, 1, 3, '2017-06-05 23:20:14', '2017-06-06 00:05:13', NULL),
(18, 'Frida: el pincel de la angustia', NULL, 0, 1, 1, 3, '2017-06-05 23:24:19', '2017-06-06 00:05:34', NULL),
(19, 'Encuentro de creadores mexicanos', 'Sinopsis en proceso de actualizarse a la ultima version de la acutora.', 0, 1, 1, 3, '2017-06-05 23:25:40', '2017-06-06 00:06:12', NULL),
(20, 'Malintzin: Una mujer indígena en la Conquista ', 'Toda la informacion detras del secreto de esta mujer.', 0, 1, 1, 4, '2017-06-05 23:26:33', '2017-06-06 00:06:25', NULL),
(21, 'Kafka: Los primeros años / Los años de las decisiones / Los años del conocimiento', 'Sinopsis en proceso de pasar a la version 2017.', 0, 1, 1, 4, '2017-06-05 23:27:22', '2017-06-06 00:06:43', NULL),
(22, 'Juan Gabriel: Lo que se ve no se pregunta', 'El transcurso de la vida de este genero mexicano,', 0, 5, 3, 3, '2017-06-05 23:27:55', '2017-06-09 14:48:56', NULL),
(23, 'Crónicas del espacio: Ante la última frontera', 'Las revelaciones que suceden en el espacio y como tener un mejor avance en proyectos futuros.', 0, 1, 1, 5, '2017-06-05 23:29:25', '2017-06-06 00:07:12', NULL),
(24, 'Sexo en la tierra', 'Un homenaje a la reproducccion.', 0, 5, 2, 5, '2017-06-05 23:30:13', '2017-06-09 14:48:08', NULL),
(25, 'Mitos de la evolución humana', 'Todas las posibles causas y sus aportes para llegar a la verdad.', 0, 1, 1, 5, '2017-06-05 23:31:04', '2017-06-06 00:07:41', NULL),
(26, 'La chica del tren', 'Rachel toma siempre el tren de las 8.04 h. Cada mañana lo mismo: el mismo paisaje, las mismas casas… y la misma parada en la señal roja. Son solo unos segundos, pero le permiten observar a una pareja desayunando tranquilamente en su terraza. Siente que los conoce y se inventa unos nombres para ellos: Jess y Jason. Su vida es perfecta, no como la suya. Pero un día ve algo.', 0, 1, 2, 6, '2017-06-08 15:55:47', '2017-06-08 15:55:47', NULL),
(27, 'Luna Nueva', 'En La Saga Crepúsculo: Luna Nueva, segunda entrega de la serie de Stephenie Meyer, el romance entre mortal y vampiro alcanza nuevas cotas cuando Bella Swan (Kristen Stewart) tienta al destino en su intento de conocer mejor a su amado vampiro, Edward Cullen (Robert Pattinson). A medida que se sume en los misterios del mundo sobrenatural del que ansía formar parte, descubre un par de antiguos secretos que la ponen más en peligro que nunca.\r\nuna nueva (New Moon) es una novela de fantasía y romance para jóvenes creada por Stephenie Meyer y publicada en 2006; es la segunda parte de una serie de cuatro libros', 0, 5, 2, 1, '2017-06-08 16:11:04', '2017-06-08 16:11:04', NULL),
(28, 'Eclipse ', 'Después de Crepúsculo y Luna Nueva llega por fin Eclipse, la tan esperada continuación de esta saga de vampiros destinada a convertirse en un clásico del género. Bella se encuentra de nuevo en peligro: una serie de misteriosos asesinatos está sembrando el pánico en la localidad y hay un ser maligno tras ella, sediento de venganza. Además, tendrá que elegir entre su amor por Edward y su amistad con Jacob, consciente de que su decisión podrá desencadenar definitivamente la guerra entre vampiros y hombres lobo.', 0, 3, 2, 1, '2017-06-08 17:29:23', '2017-06-08 17:29:23', NULL),
(29, 'Echo l1', 'ecientemente salido de la cárcel, Bobby Reynolds trata de rehacer su vida mudándose al apartamento de su madre, vacante desde su intempestiva muerta. A su llegada, pronto es plagado por extrañas ocurrencias en el apartamento y encuentros extraños con sus vecinos, particularmente Gina, su esposo Walter, un policía abusivo, y su hija Carly. ', 0, 3, 2, 8, '2017-06-08 17:40:34', '2017-06-08 17:40:34', NULL),
(30, 'Saga Crepusculo 4- Amanecer', 'Cuarto libro de la saga, El destino de los protagonistas se decidirá en esta entrega. ', 0, 5, 2, 9, '2017-06-09 15:16:46', '2017-06-09 15:16:46', NULL),
(31, 'Eclipse Edicion especial. ', 'Bella se encuentra de nuevo en peligro: una serie de misteriosos asesinatos está sembrando el pánico en la localidad y hay un ser maligno tras ella, sediento de venganza. Además, tendrá que elegir entre su amor por Edward y su amistad con Jacob, consciente de que su decisión podrá desencadenar definitivamente la guerra entre vampiros y hombres lobo.\r\n Mientras, se va acercando su graduación y\r\n tendrá una decisión más que tomar: vida o muerte.', 0, 5, 2, 8, '2017-06-10 11:44:27', '2017-06-10 11:44:27', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
('1', 'admin', '2017-06-04 15:16:35', '2017-06-04 15:16:35'),
('2', 'guest', NULL, NULL),
('admin', 'admin', '2017-06-04 15:16:35', '2017-06-04 15:16:35'),
('user', 'user', '2017-06-04 15:16:36', '2017-06-04 15:16:36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sales`
--

CREATE TABLE `sales` (
  `id` int(10) UNSIGNED NOT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `sales`
--

INSERT INTO `sales` (`id`, `country`, `address`, `postal_code`, `city`, `phone`, `user_id`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, 2, '2017-06-05 12:35:53', '2017-06-05 12:35:53'),
(2, NULL, NULL, NULL, NULL, NULL, 2, '2017-06-07 09:56:51', '2017-06-07 09:56:51'),
(3, NULL, NULL, NULL, NULL, NULL, 15, '2017-06-08 22:18:22', '2017-06-08 22:18:22'),
(4, NULL, NULL, NULL, NULL, NULL, 15, '2017-06-09 13:12:56', '2017-06-09 13:12:56'),
(5, NULL, NULL, NULL, NULL, NULL, 15, '2017-06-09 15:19:53', '2017-06-09 15:19:53'),
(6, NULL, NULL, NULL, NULL, NULL, 15, '2017-06-09 23:06:20', '2017-06-09 23:06:20'),
(7, NULL, NULL, NULL, NULL, NULL, 15, '2017-06-10 00:46:40', '2017-06-10 00:46:40'),
(8, NULL, NULL, NULL, NULL, NULL, 15, '2017-06-10 05:26:40', '2017-06-10 05:26:40'),
(9, NULL, NULL, NULL, NULL, NULL, 17, '2017-06-10 05:38:31', '2017-06-10 05:38:31'),
(10, NULL, NULL, NULL, NULL, NULL, 15, '2017-06-10 10:52:58', '2017-06-10 10:52:58'),
(11, NULL, NULL, NULL, NULL, NULL, 13, '2017-06-10 11:35:59', '2017-06-10 11:35:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `scores`
--

CREATE TABLE `scores` (
  `id` int(10) UNSIGNED NOT NULL,
  `score` int(11) NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `scores`
--

INSERT INTO `scores` (`id`, `score`, `product_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 5, 29, 15, '2017-06-09 09:08:51', '2017-06-09 09:08:51'),
(2, 5, 27, 15, '2017-06-09 12:38:34', '2017-06-09 12:38:34'),
(3, 5, 30, 15, '2017-06-09 15:17:32', '2017-06-09 15:17:32'),
(4, 5, 30, 15, '2017-06-09 15:17:46', '2017-06-09 15:17:46'),
(5, 5, 14, 15, '2017-06-10 05:24:54', '2017-06-10 05:24:54'),
(6, 5, 27, 17, '2017-06-10 05:45:12', '2017-06-10 05:45:12'),
(7, 3, 4, 15, '2017-06-10 10:51:58', '2017-06-10 10:51:58'),
(8, 4, 16, 13, '2017-06-10 11:33:38', '2017-06-10 11:33:38');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sizes`
--

CREATE TABLE `sizes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `sizes`
--

INSERT INTO `sizes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Fisico de Bolsillo', NULL, NULL),
(2, 'Fisico Tapa dura', NULL, NULL),
(3, 'Libro de Edición Especial', '2017-06-09 12:23:48', '2017-06-09 12:23:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `specifications`
--

CREATE TABLE `specifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `price` int(11) NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `size_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `specifications`
--

INSERT INTO `specifications` (`id`, `price`, `product_id`, `size_id`, `created_at`, `updated_at`) VALUES
(1, 187, 2, 1, '2017-06-05 11:59:45', '2017-06-05 11:59:45'),
(2, 812, 3, 1, '2017-06-05 12:00:00', '2017-06-05 12:00:00'),
(3, 652, 4, 1, '2017-06-05 12:00:13', '2017-06-05 12:00:13'),
(4, 356, 5, 1, '2017-06-05 12:06:24', '2017-06-05 12:06:24'),
(5, 350, 18, 1, '2017-06-07 09:52:20', '2017-06-07 09:52:20'),
(6, 400, 2, 2, '2017-06-08 15:17:13', '2017-06-08 15:17:13'),
(7, 120, 3, 1, '2017-06-08 15:17:44', '2017-06-08 15:17:44'),
(8, 380, 4, 2, '2017-06-08 15:18:07', '2017-06-08 15:18:07'),
(9, 600, 23, 1, '2017-06-08 15:18:25', '2017-06-08 15:18:25'),
(10, 650, 5, 1, '2017-06-08 15:18:51', '2017-06-08 15:18:51'),
(11, 369, 13, 1, '2017-06-08 17:13:52', '2017-06-08 17:13:52'),
(12, 980, 14, 2, '2017-06-08 17:14:21', '2017-06-08 17:14:21'),
(13, 1000, 15, 1, '2017-06-08 17:14:47', '2017-06-08 17:14:47'),
(14, 250, 27, 2, '2017-06-08 17:15:09', '2017-06-08 17:15:09'),
(15, 410, 16, 2, '2017-06-08 17:15:44', '2017-06-08 17:15:44'),
(16, 510, 17, 2, '2017-06-08 17:16:02', '2017-06-08 17:16:02'),
(17, 510, 29, 2, '2017-06-09 14:46:04', '2017-06-09 14:46:04'),
(18, 369, 19, 2, '2017-06-09 14:46:22', '2017-06-09 14:46:22'),
(19, 120, 20, 2, '2017-06-09 14:46:46', '2017-06-09 14:46:46'),
(20, 125, 22, 3, '2017-06-09 14:47:00', '2017-06-09 14:47:00'),
(21, 310, 21, 3, '2017-06-10 05:30:33', '2017-06-10 05:30:33'),
(22, 500, 30, 3, '2017-06-10 11:38:56', '2017-06-10 11:38:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subcategories`
--

CREATE TABLE `subcategories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'images/categories/default.jpg',
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `subcategories`
--

INSERT INTO `subcategories` (`id`, `name`, `description`, `image`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Libro de texto', NULL, 'images/categories/default.jpg', 1, NULL, NULL),
(2, 'Arte Contemporáneo', 'Arte Contemporaneo', 'images/categories/default.jpg', 2, '2017-06-05 23:54:17', '2017-06-05 23:54:17'),
(3, 'Arte Mexicano', 'Arte Mexicano', 'images/subcategory/zen-pinball-paranormal_logo_black-1280px-50p.jpg', 3, '2017-06-06 00:02:21', '2017-06-09 14:37:01'),
(4, 'Biografias en Autores', 'Libros de autores sobre su vida.', 'images/categories/p.jpg', 4, '2017-06-06 00:03:12', '2017-06-06 00:03:12'),
(5, 'Ciencia', 'Ciencia', 'images/categories/ciencis.jpg', 5, '2017-06-06 00:04:33', '2017-06-06 00:04:33'),
(6, 'Local', 'Subgenero del Arte Contemporaneo. ', 'images/categories/default.jpg', 2, '2017-06-08 15:01:41', '2017-06-08 15:01:41'),
(7, 'Surrealista 2', 'Fase de pensamiento mas profunda.', 'images/categories/default.jpg', 3, '2017-06-08 15:55:14', '2017-06-08 15:55:14'),
(8, 'Licantropos', 'Libros de ciencia ficcion enfocados en mitologia licantropa.', 'images/categories/default.jpg', 7, '2017-06-08 17:38:55', '2017-06-08 17:38:55'),
(9, 'Vampiros', 'Libros enfocados en mundo gotic. ', 'images/categories/default.jpg', 7, '2017-06-08 17:41:51', '2017-06-08 17:41:51'),
(10, 'Gargolas', 'Libros enfocados en mitologia', 'images/subcategory/zen-pinball-paranormal_logo_black-1280px-50p.jpg', 7, '2017-06-08 17:42:16', '2017-06-08 17:42:37'),
(11, 'Edificios', 'Libros con información acerca de la estructuración de edificios.', 'images/categories/default.jpg', 8, '2017-06-09 14:25:53', '2017-06-09 14:25:53'),
(12, 'Personajes importantes', 'Bibliográficas de personajes históricos.', 'images/categories/default.jpg', 4, '2017-06-09 14:40:14', '2017-06-09 14:40:14'),
(13, 'LIbros de C++', 'Libros en el lenguaje C++', 'images/subcategory/c++.jpg', 9, '2017-06-10 11:42:38', '2017-06-10 11:43:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `full_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'user',
  `confirmation_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT '0dDyG3zC2DluNHTCWadgD77BYO5RI5',
  `confirmed` tinyint(1) NOT NULL DEFAULT '1',
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `full_name`, `email`, `password`, `role_id`, `confirmation_code`, `confirmed`, `country`, `address`, `postal_code`, `city`, `phone`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'nai199', 'Naibi Ibarra', 'naibi_chib@outlook.com', '$2y$10$oPw2wxauzVPDZaOQYccMwulIz.IRsY0Yt27cAhg1a4t1hIgXNIns2', 'admin', 'bCPD2EppFFyyFNs4T5UxPW9qDoaH9e', 1, NULL, NULL, NULL, NULL, NULL, 'HtMCPKWY96MG8modRPq3Hjol1On11MPgAgph7H5nUcQmj7q5kqKBC41ZKFT5', '2017-06-04 15:16:35', '2017-06-08 22:16:06'),
(2, 'nay199', 'Naibi Chiquete', 'nayvinight12@gmail.com', '$2y$10$wKv4Pduq0vkqODcvCB7.4OhL9wY5At4/FAqUYbMFcTJom/UAQ94NO', 'user', '0dDyG3zC2DluNHTCWadgD77BYO5RI5', 1, 'MX', 'Cul', '80376', 'Sin', '6671002223', 'Zckl3IOo28RyFv6zxxcaRV8lrMzEFYcfxRf9b8hHPpYbxDsj6tutcBVmKPu8', '2017-06-04 15:29:34', '2017-06-07 09:57:25'),
(13, 'jorgemario', 'Jorge Luis ', 'a@gmail.com', '$2y$10$t/AR52ogS2hO/BZOwfavWewlDR68UBJXbEOlw/MwLKeSfb.Waqro.', 'user', '', 1, 'Mexico', 'Ignacio Ramirez, poste #9.', '80376', 'Culiacan', '6721134589', NULL, '2017-06-04 15:16:35', '2017-06-10 11:35:58'),
(15, 'yayo', 'Candelario Reyes', 'cande_mp@live.com', '$2y$10$bp8D5FFW/P41JREH28SIw.2vOzMVM.PiWIyUsXfmplXj1nkKDR/yW', 'user', '', 1, 'Mexico', 'Ignacio ramirez poste #9, San Pedro. ', '80376', 'Culiacan', '6677853936', 'cH6AToLVB6JCbgfEv8KgeZlO1vG0Q5Kq5AJeVLfat2nQGc2Hi5zqwjwGfMOM', '2017-06-08 16:56:33', '2017-06-10 10:54:18'),
(17, 'Rosa123', 'Rosalina Zazueta', 'rosa@gmail.com', '$2y$10$vNV8CoQGVcrISV4IiMUsnuMIOggbit3dPGQvaxQ2MYk.NhQPjsZh6', 'user', '', 1, 'Mexico', 'Lomas del madrigal, #2343, Nav.', '80180', 'Navolato', '6874589658', 'I3jEuZInaKm7wGnLqTCG2BDx8tR24g6JrpS2k1OGn3Vw6R0WmU95JeuNqAG0', '2017-06-08 19:24:09', '2017-06-10 06:18:49'),
(19, 'Carlos123', 'Carlos Zazueta', 'carlos@gmail.com', '$2y$10$tTEHj8mGljyHLEXAW55O..nZ4NS9tbjSpxOjA1cOsOTRt.NmAeiH.', 'user', '0dDyG3zC2DluNHTCWadgD77BYO5RI5', 1, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-08 19:26:54', '2017-06-08 19:26:54'),
(20, 'GERMAN123', 'German Salazar', 'ggerman@gmail.com', '$2y$10$TXPr6chenYf4BLpm8f/w.uJpYjGO8FNsiArBOxIsPLbiRKSIc9Uy6', 'user', '0dDyG3zC2DluNHTCWadgD77BYO5RI5', 1, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-10 10:56:30', '2017-06-10 10:56:30');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_gender_id_foreign` (`gender_id`);

--
-- Indices de la tabla `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_product_id_foreign` (`product_id`);

--
-- Indices de la tabla `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `discounts_specification_id_foreign` (`specification_id`);

--
-- Indices de la tabla `genders`
--
ALTER TABLE `genders`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_product_id_foreign` (`product_id`);

--
-- Indices de la tabla `inventories`
--
ALTER TABLE `inventories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inventories_specification_id_foreign` (`specification_id`);

--
-- Indices de la tabla `line_sales`
--
ALTER TABLE `line_sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `line_sales_specification_id_foreign` (`specification_id`),
  ADD KEY `line_sales_sale_id_foreign` (`sale_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`),
  ADD KEY `products_color_id_foreign` (`color_id`),
  ADD KEY `products_subcategory_id_foreign` (`subcategory_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `scores`
--
ALTER TABLE `scores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `scores_user_id_foreign` (`user_id`),
  ADD KEY `scores_product_id_foreign` (`product_id`);

--
-- Indices de la tabla `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `specifications`
--
ALTER TABLE `specifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `specifications_product_id_foreign` (`product_id`),
  ADD KEY `specifications_size_id_foreign` (`size_id`);

--
-- Indices de la tabla `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subcategories_category_id_foreign` (`category_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `genders`
--
ALTER TABLE `genders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT de la tabla `inventories`
--
ALTER TABLE `inventories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT de la tabla `line_sales`
--
ALTER TABLE `line_sales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT de la tabla `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de la tabla `scores`
--
ALTER TABLE `scores`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `specifications`
--
ALTER TABLE `specifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT de la tabla `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_gender_id_foreign` FOREIGN KEY (`gender_id`) REFERENCES `genders` (`id`);

--
-- Filtros para la tabla `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `discounts`
--
ALTER TABLE `discounts`
  ADD CONSTRAINT `discounts_specification_id_foreign` FOREIGN KEY (`specification_id`) REFERENCES `specifications` (`id`);

--
-- Filtros para la tabla `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Filtros para la tabla `inventories`
--
ALTER TABLE `inventories`
  ADD CONSTRAINT `inventories_specification_id_foreign` FOREIGN KEY (`specification_id`) REFERENCES `specifications` (`id`);

--
-- Filtros para la tabla `line_sales`
--
ALTER TABLE `line_sales`
  ADD CONSTRAINT `line_sales_sale_id_foreign` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`),
  ADD CONSTRAINT `line_sales_specification_id_foreign` FOREIGN KEY (`specification_id`) REFERENCES `specifications` (`id`);

--
-- Filtros para la tabla `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`),
  ADD CONSTRAINT `products_color_id_foreign` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`),
  ADD CONSTRAINT `products_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`);

--
-- Filtros para la tabla `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `scores`
--
ALTER TABLE `scores`
  ADD CONSTRAINT `scores_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `scores_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `specifications`
--
ALTER TABLE `specifications`
  ADD CONSTRAINT `specifications_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `specifications_size_id_foreign` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`id`);

--
-- Filtros para la tabla `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `subcategories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
