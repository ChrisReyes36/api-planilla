-- --------------------------------------------------------
-- Host:                         192.168.1.78
-- Versión del servidor:         5.7.33 - MySQL Community Server (GPL)
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.3.0.6589
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para planilla
CREATE DATABASE IF NOT EXISTS `planilla` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci */;
USE `planilla`;

-- Volcando estructura para tabla planilla.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `connection` text COLLATE utf8mb4_spanish2_ci NOT NULL,
  `queue` text COLLATE utf8mb4_spanish2_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_spanish2_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_spanish2_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- Volcando datos para la tabla planilla.failed_jobs: ~0 rows (aproximadamente)

-- Volcando estructura para tabla planilla.jobs_execution
CREATE TABLE IF NOT EXISTS `jobs_execution` (
  `Id_tarea` int(11) NOT NULL AUTO_INCREMENT,
  `TipoTarea` text COLLATE utf8mb4_spanish2_ci,
  `Fecha` datetime DEFAULT NULL,
  KEY `Id_tarea` (`Id_tarea`)
) ENGINE=InnoDB AUTO_INCREMENT=1418 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci COMMENT='Ejecución de tarea programada';

-- Volcando datos para la tabla planilla.jobs_execution: ~1,417 rows (aproximadamente)
INSERT INTO `jobs_execution` (`Id_tarea`, `TipoTarea`, `Fecha`) VALUES
	(1, 'ETL Carga Planilla Ejecutado', '2023-01-19 16:15:10'),
	(2, 'ETL Carga Planilla Ejecutado', '2023-01-19 16:19:06'),
	(3, 'ETL Carga Planilla Ejecutado', '2023-01-19 16:24:06'),
	(4, 'ETL Carga Planilla Ejecutado', '2023-01-19 16:29:05'),
	(5, 'ETL Carga Planilla Ejecutado', '2023-01-19 16:34:03'),
	(6, 'ETL Carga Planilla Ejecutado', '2023-01-19 16:39:03'),
	(7, 'ETL Carga Planilla Ejecutado', '2023-01-19 16:44:04'),
	(8, 'ETL Carga Planilla Ejecutado', '2023-01-19 16:49:04'),
	(9, 'ETL Carga Planilla Ejecutado', '2023-01-19 16:54:03'),
	(10, 'ETL Carga Planilla Ejecutado', '2023-01-19 16:59:03'),
	(11, 'ETL Carga Planilla Ejecutado', '2023-01-19 17:04:04'),
	(12, 'ETL Carga Planilla Ejecutado', '2023-01-19 17:09:03'),
	(13, 'ETL Carga Planilla Ejecutado', '2023-01-19 17:14:03'),
	(14, 'ETL Carga Planilla Ejecutado', '2023-01-19 17:19:01'),
	(15, 'ETL Carga Planilla Ejecutado', '2023-01-19 17:24:01'),
	(16, 'ETL Carga Planilla Ejecutado', '2023-01-19 17:29:00'),
	(17, 'ETL Carga Planilla Ejecutado', '2023-01-19 17:34:02'),
	(18, 'ETL Carga Planilla Ejecutado', '2023-01-19 17:39:01'),
	(19, 'ETL Carga Planilla Ejecutado', '2023-01-19 17:44:01'),
	(20, 'ETL Carga Planilla Ejecutado', '2023-01-19 17:49:01'),
	(21, 'ETL Carga Planilla Ejecutado', '2023-01-19 17:54:00'),
	(22, 'ETL Carga Planilla Ejecutado', '2023-01-19 17:59:00'),
	(23, 'ETL Carga Planilla Ejecutado', '2023-01-19 18:04:01'),
	(24, 'ETL Carga Planilla Ejecutado', '2023-01-19 18:09:00'),
	(25, 'ETL Carga Planilla Ejecutado', '2023-01-19 18:13:59'),
	(26, 'ETL Carga Planilla Ejecutado', '2023-01-19 18:19:00'),
	(27, 'ETL Carga Planilla Ejecutado', '2023-01-19 18:23:58'),
	(28, 'ETL Carga Planilla Ejecutado', '2023-01-19 18:28:58'),
	(29, 'ETL Carga Planilla Ejecutado', '2023-01-19 18:33:59'),
	(30, 'ETL Carga Planilla Ejecutado', '2023-01-19 18:38:55'),
	(31, 'ETL Carga Planilla Ejecutado', '2023-01-19 18:43:58'),
	(32, 'ETL Carga Planilla Ejecutado', '2023-01-19 18:48:57'),
	(33, 'ETL Carga Planilla Ejecutado', '2023-01-19 18:53:56'),
	(34, 'ETL Carga Planilla Ejecutado', '2023-01-19 18:58:57'),
	(35, 'ETL Carga Planilla Ejecutado', '2023-01-19 19:03:55'),
	(36, 'ETL Carga Planilla Ejecutado', '2023-01-19 19:08:56'),
	(37, 'ETL Carga Planilla Ejecutado', '2023-01-19 19:13:56'),
	(38, 'ETL Carga Planilla Ejecutado', '2023-01-19 19:18:56'),
	(39, 'ETL Carga Planilla Ejecutado', '2023-01-19 19:23:54'),
	(40, 'ETL Carga Planilla Ejecutado', '2023-01-19 19:28:56'),
	(41, 'ETL Carga Planilla Ejecutado', '2023-01-19 19:33:56'),
	(42, 'ETL Carga Planilla Ejecutado', '2023-01-19 19:38:53'),
	(43, 'ETL Carga Planilla Ejecutado', '2023-01-19 19:43:55'),
	(44, 'ETL Carga Planilla Ejecutado', '2023-01-19 19:48:54'),
	(45, 'ETL Carga Planilla Ejecutado', '2023-01-19 19:53:55'),
	(46, 'ETL Carga Planilla Ejecutado', '2023-01-19 19:58:54'),
	(47, 'ETL Carga Planilla Ejecutado', '2023-01-19 20:03:54'),
	(48, 'ETL Carga Planilla Ejecutado', '2023-01-19 20:08:53'),
	(49, 'ETL Carga Planilla Ejecutado', '2023-01-19 20:13:53'),
	(50, 'ETL Carga Planilla Ejecutado', '2023-01-19 20:18:53'),
	(51, 'ETL Carga Planilla Ejecutado', '2023-01-19 20:23:54'),
	(52, 'ETL Carga Planilla Ejecutado', '2023-01-19 20:28:52'),
	(53, 'ETL Carga Planilla Ejecutado', '2023-01-19 20:33:52'),
	(54, 'ETL Carga Planilla Ejecutado', '2023-01-19 20:38:53'),
	(55, 'ETL Carga Planilla Ejecutado', '2023-01-19 20:43:51'),
	(56, 'ETL Carga Planilla Ejecutado', '2023-01-19 20:48:51'),
	(57, 'ETL Carga Planilla Ejecutado', '2023-01-19 20:53:51'),
	(58, 'ETL Carga Planilla Ejecutado', '2023-01-19 20:58:52'),
	(59, 'ETL Carga Planilla Ejecutado', '2023-01-19 21:03:51'),
	(60, 'ETL Carga Planilla Ejecutado', '2023-01-19 21:08:51'),
	(61, 'ETL Carga Planilla Ejecutado', '2023-01-19 21:13:49'),
	(62, 'ETL Carga Planilla Ejecutado', '2023-01-19 21:18:50'),
	(63, 'ETL Carga Planilla Ejecutado', '2023-01-19 21:23:49'),
	(64, 'ETL Carga Planilla Ejecutado', '2023-01-19 21:28:50'),
	(65, 'ETL Carga Planilla Ejecutado', '2023-01-19 21:33:49'),
	(66, 'ETL Carga Planilla Ejecutado', '2023-01-19 21:38:49'),
	(67, 'ETL Carga Planilla Ejecutado', '2023-01-19 21:43:49'),
	(68, 'ETL Carga Planilla Ejecutado', '2023-01-19 21:48:48'),
	(69, 'ETL Carga Planilla Ejecutado', '2023-01-19 21:58:48'),
	(70, 'ETL Carga Planilla Ejecutado', '2023-01-19 22:03:48'),
	(71, 'ETL Carga Planilla Ejecutado', '2023-01-19 22:08:48'),
	(72, 'ETL Carga Planilla Ejecutado', '2023-01-19 22:13:47'),
	(73, 'ETL Carga Planilla Ejecutado', '2023-01-19 22:18:47'),
	(74, 'ETL Carga Planilla Ejecutado', '2023-01-19 22:23:48'),
	(75, 'ETL Carga Planilla Ejecutado', '2023-01-19 22:28:47'),
	(76, 'ETL Carga Planilla Ejecutado', '2023-01-19 22:33:46'),
	(77, 'ETL Carga Planilla Ejecutado', '2023-01-19 22:38:47'),
	(78, 'ETL Carga Planilla Ejecutado', '2023-01-19 22:43:46'),
	(79, 'ETL Carga Planilla Ejecutado', '2023-01-19 22:48:44'),
	(80, 'ETL Carga Planilla Ejecutado', '2023-01-19 22:53:46'),
	(81, 'ETL Carga Planilla Ejecutado', '2023-01-19 22:58:46'),
	(82, 'ETL Carga Planilla Ejecutado', '2023-01-19 23:03:45'),
	(83, 'ETL Carga Planilla Ejecutado', '2023-01-19 23:08:45'),
	(84, 'ETL Carga Planilla Ejecutado', '2023-01-19 23:13:44'),
	(85, 'ETL Carga Planilla Ejecutado', '2023-01-19 23:18:44'),
	(86, 'ETL Carga Planilla Ejecutado', '2023-01-19 23:23:45'),
	(87, 'ETL Carga Planilla Ejecutado', '2023-01-19 23:28:43'),
	(88, 'ETL Carga Planilla Ejecutado', '2023-01-19 23:33:43'),
	(89, 'ETL Carga Planilla Ejecutado', '2023-01-19 23:38:44'),
	(90, 'ETL Carga Planilla Ejecutado', '2023-01-19 23:43:44'),
	(91, 'ETL Carga Planilla Ejecutado', '2023-01-19 23:48:42'),
	(92, 'ETL Carga Planilla Ejecutado', '2023-01-19 23:53:41'),
	(93, 'ETL Carga Planilla Ejecutado', '2023-01-19 23:58:43'),
	(94, 'ETL Carga Planilla Ejecutado', '2023-01-20 00:03:40'),
	(95, 'ETL Carga Planilla Ejecutado', '2023-01-20 00:08:43'),
	(96, 'ETL Carga Planilla Ejecutado', '2023-01-20 00:13:43'),
	(97, 'ETL Carga Planilla Ejecutado', '2023-01-20 00:18:42'),
	(98, 'ETL Carga Planilla Ejecutado', '2023-01-20 00:23:41'),
	(99, 'ETL Carga Planilla Ejecutado', '2023-01-20 00:28:42'),
	(100, 'ETL Carga Planilla Ejecutado', '2023-01-20 00:33:41'),
	(101, 'ETL Carga Planilla Ejecutado', '2023-01-20 00:38:42'),
	(102, 'ETL Carga Planilla Ejecutado', '2023-01-20 00:43:42'),
	(103, 'ETL Carga Planilla Ejecutado', '2023-01-20 00:48:40'),
	(104, 'ETL Carga Planilla Ejecutado', '2023-01-20 00:53:40'),
	(105, 'ETL Carga Planilla Ejecutado', '2023-01-20 00:58:41'),
	(106, 'ETL Carga Planilla Ejecutado', '2023-01-20 01:03:40'),
	(107, 'ETL Carga Planilla Ejecutado', '2023-01-20 01:08:41'),
	(108, 'ETL Carga Planilla Ejecutado', '2023-01-20 01:13:40'),
	(109, 'ETL Carga Planilla Ejecutado', '2023-01-20 01:18:39'),
	(110, 'ETL Carga Planilla Ejecutado', '2023-01-20 01:23:38'),
	(111, 'ETL Carga Planilla Ejecutado', '2023-01-20 01:28:40'),
	(112, 'ETL Carga Planilla Ejecutado', '2023-01-20 01:33:37'),
	(113, 'ETL Carga Planilla Ejecutado', '2023-01-20 01:38:38'),
	(114, 'ETL Carga Planilla Ejecutado', '2023-01-20 01:43:39'),
	(115, 'ETL Carga Planilla Ejecutado', '2023-01-20 01:48:38'),
	(116, 'ETL Carga Planilla Ejecutado', '2023-01-20 01:53:37'),
	(117, 'ETL Carga Planilla Ejecutado', '2023-01-20 01:58:38'),
	(118, 'ETL Carga Planilla Ejecutado', '2023-01-20 02:03:39'),
	(119, 'ETL Carga Planilla Ejecutado', '2023-01-20 02:08:38'),
	(120, 'ETL Carga Planilla Ejecutado', '2023-01-20 02:13:37'),
	(121, 'ETL Carga Planilla Ejecutado', '2023-01-20 02:18:37'),
	(122, 'ETL Carga Planilla Ejecutado', '2023-01-20 02:23:39'),
	(123, 'ETL Carga Planilla Ejecutado', '2023-01-20 02:28:39'),
	(124, 'ETL Carga Planilla Ejecutado', '2023-01-20 02:33:38'),
	(125, 'ETL Carga Planilla Ejecutado', '2023-01-20 02:38:37'),
	(126, 'ETL Carga Planilla Ejecutado', '2023-01-20 02:43:36'),
	(127, 'ETL Carga Planilla Ejecutado', '2023-01-20 02:48:35'),
	(128, 'ETL Carga Planilla Ejecutado', '2023-01-20 02:53:37'),
	(129, 'ETL Carga Planilla Ejecutado', '2023-01-20 02:58:36'),
	(130, 'ETL Carga Planilla Ejecutado', '2023-01-20 03:03:36'),
	(131, 'ETL Carga Planilla Ejecutado', '2023-01-20 03:08:36'),
	(132, 'ETL Carga Planilla Ejecutado', '2023-01-20 03:13:34'),
	(133, 'ETL Carga Planilla Ejecutado', '2023-01-20 03:18:34'),
	(134, 'ETL Carga Planilla Ejecutado', '2023-01-20 03:23:35'),
	(135, 'ETL Carga Planilla Ejecutado', '2023-01-20 03:28:34'),
	(136, 'ETL Carga Planilla Ejecutado', '2023-01-20 03:33:32'),
	(137, 'ETL Carga Planilla Ejecutado', '2023-01-20 03:38:34'),
	(138, 'ETL Carga Planilla Ejecutado', '2023-01-20 03:43:34'),
	(139, 'ETL Carga Planilla Ejecutado', '2023-01-20 03:48:31'),
	(140, 'ETL Carga Planilla Ejecutado', '2023-01-20 03:53:33'),
	(141, 'ETL Carga Planilla Ejecutado', '2023-01-20 04:03:32'),
	(142, 'ETL Carga Planilla Ejecutado', '2023-01-20 04:08:33'),
	(143, 'ETL Carga Planilla Ejecutado', '2023-01-20 04:13:32'),
	(144, 'ETL Carga Planilla Ejecutado', '2023-01-20 04:18:31'),
	(145, 'ETL Carga Planilla Ejecutado', '2023-01-20 04:23:31'),
	(146, 'ETL Carga Planilla Ejecutado', '2023-01-20 04:28:32'),
	(147, 'ETL Carga Planilla Ejecutado', '2023-01-20 04:33:30'),
	(148, 'ETL Carga Planilla Ejecutado', '2023-01-20 04:38:31'),
	(149, 'ETL Carga Planilla Ejecutado', '2023-01-20 04:43:31'),
	(150, 'ETL Carga Planilla Ejecutado', '2023-01-20 04:48:30'),
	(151, 'ETL Carga Planilla Ejecutado', '2023-01-20 04:53:29'),
	(152, 'ETL Carga Planilla Ejecutado', '2023-01-20 04:58:28'),
	(153, 'ETL Carga Planilla Ejecutado', '2023-01-20 05:03:28'),
	(154, 'ETL Carga Planilla Ejecutado', '2023-01-20 05:08:28'),
	(155, 'ETL Carga Planilla Ejecutado', '2023-01-20 05:13:30'),
	(156, 'ETL Carga Planilla Ejecutado', '2023-01-20 05:18:29'),
	(157, 'ETL Carga Planilla Ejecutado', '2023-01-20 05:23:28'),
	(158, 'ETL Carga Planilla Ejecutado', '2023-01-20 05:28:30'),
	(159, 'ETL Carga Planilla Ejecutado', '2023-01-20 05:33:30'),
	(160, 'ETL Carga Planilla Ejecutado', '2023-01-20 05:38:27'),
	(161, 'ETL Carga Planilla Ejecutado', '2023-01-20 05:43:29'),
	(162, 'ETL Carga Planilla Ejecutado', '2023-01-20 05:48:26'),
	(163, 'ETL Carga Planilla Ejecutado', '2023-01-20 05:53:28'),
	(164, 'ETL Carga Planilla Ejecutado', '2023-01-20 05:58:29'),
	(165, 'ETL Carga Planilla Ejecutado', '2023-01-20 06:03:27'),
	(166, 'ETL Carga Planilla Ejecutado', '2023-01-20 06:08:28'),
	(167, 'ETL Carga Planilla Ejecutado', '2023-01-20 06:13:27'),
	(168, 'ETL Carga Planilla Ejecutado', '2023-01-20 06:18:26'),
	(169, 'ETL Carga Planilla Ejecutado', '2023-01-20 06:23:25'),
	(170, 'ETL Carga Planilla Ejecutado', '2023-01-20 06:28:27'),
	(171, 'ETL Carga Planilla Ejecutado', '2023-01-20 06:33:25'),
	(172, 'ETL Carga Planilla Ejecutado', '2023-01-20 06:38:26'),
	(173, 'ETL Carga Planilla Ejecutado', '2023-01-20 06:43:26'),
	(174, 'ETL Carga Planilla Ejecutado', '2023-01-20 06:48:26'),
	(175, 'ETL Carga Planilla Ejecutado', '2023-01-20 06:53:25'),
	(176, 'ETL Carga Planilla Ejecutado', '2023-01-20 07:03:24'),
	(177, 'ETL Carga Planilla Ejecutado', '2023-01-20 07:08:24'),
	(178, 'ETL Carga Planilla Ejecutado', '2023-01-20 07:13:25'),
	(179, 'ETL Carga Planilla Ejecutado', '2023-01-20 07:18:24'),
	(180, 'ETL Carga Planilla Ejecutado', '2023-01-20 07:23:23'),
	(181, 'ETL Carga Planilla Ejecutado', '2023-01-20 07:28:23'),
	(182, 'ETL Carga Planilla Ejecutado', '2023-01-20 07:33:23'),
	(183, 'ETL Carga Planilla Ejecutado', '2023-01-20 07:38:22'),
	(184, 'ETL Carga Planilla Ejecutado', '2023-01-20 07:43:22'),
	(185, 'ETL Carga Planilla Ejecutado', '2023-01-20 07:48:23'),
	(186, 'ETL Carga Planilla Ejecutado', '2023-01-20 07:53:22'),
	(187, 'ETL Carga Planilla Ejecutado', '2023-01-20 07:58:19'),
	(188, 'ETL Carga Planilla Ejecutado', '2023-01-20 08:03:22'),
	(189, 'ETL Carga Planilla Ejecutado', '2023-01-20 08:08:21'),
	(190, 'ETL Carga Planilla Ejecutado', '2023-01-20 08:13:20'),
	(191, 'ETL Carga Planilla Ejecutado', '2023-01-20 08:19:23'),
	(192, 'ETL Carga Planilla Ejecutado', '2023-01-20 08:24:21'),
	(193, 'ETL Carga Planilla Ejecutado', '2023-01-20 08:29:23'),
	(194, 'ETL Carga Planilla Ejecutado', '2023-01-20 08:34:22'),
	(195, 'ETL Carga Planilla Ejecutado', '2023-01-20 08:39:21'),
	(196, 'ETL Carga Planilla Ejecutado', '2023-01-20 08:44:21'),
	(197, 'ETL Carga Planilla Ejecutado', '2023-01-20 08:49:22'),
	(198, 'ETL Carga Planilla Ejecutado', '2023-01-20 08:54:19'),
	(199, 'ETL Carga Planilla Ejecutado', '2023-01-20 08:59:20'),
	(200, 'ETL Carga Planilla Ejecutado', '2023-01-20 09:04:20'),
	(201, 'ETL Carga Planilla Ejecutado', '2023-01-20 09:09:20'),
	(202, 'ETL Carga Planilla Ejecutado', '2023-01-20 09:14:19'),
	(203, 'ETL Carga Planilla Ejecutado', '2023-01-20 09:19:18'),
	(204, 'ETL Carga Planilla Ejecutado', '2023-01-20 09:24:19'),
	(205, 'ETL Carga Planilla Ejecutado', '2023-01-20 09:29:19'),
	(206, 'ETL Carga Planilla Ejecutado', '2023-01-20 09:34:19'),
	(207, 'ETL Carga Planilla Ejecutado', '2023-01-20 09:39:19'),
	(208, 'ETL Carga Planilla Ejecutado', '2023-01-20 09:44:18'),
	(209, 'ETL Carga Planilla Ejecutado', '2023-01-20 09:49:19'),
	(210, 'ETL Carga Planilla Ejecutado', '2023-01-20 09:54:16'),
	(211, 'ETL Carga Planilla Ejecutado', '2023-01-20 09:59:17'),
	(212, 'ETL Carga Planilla Ejecutado', '2023-01-20 10:04:18'),
	(213, 'ETL Carga Planilla Ejecutado', '2023-01-20 10:09:18'),
	(214, 'ETL Carga Planilla Ejecutado', '2023-01-20 10:14:18'),
	(215, 'ETL Carga Planilla Ejecutado', '2023-01-20 10:19:17'),
	(216, 'ETL Carga Planilla Ejecutado', '2023-01-20 10:24:17'),
	(217, 'ETL Carga Planilla Ejecutado', '2023-01-20 10:29:17'),
	(218, 'ETL Carga Planilla Ejecutado', '2023-01-20 10:34:16'),
	(219, 'ETL Carga Planilla Ejecutado', '2023-01-20 10:39:16'),
	(220, 'ETL Carga Planilla Ejecutado', '2023-01-20 10:44:16'),
	(221, 'ETL Carga Planilla Ejecutado', '2023-01-20 10:49:16'),
	(222, 'ETL Carga Planilla Ejecutado', '2023-01-20 10:54:15'),
	(223, 'ETL Carga Planilla Ejecutado', '2023-01-20 10:59:15'),
	(224, 'ETL Carga Planilla Ejecutado', '2023-01-20 11:04:12'),
	(225, 'ETL Carga Planilla Ejecutado', '2023-01-20 11:09:14'),
	(226, 'ETL Carga Planilla Ejecutado', '2023-01-20 11:14:13'),
	(227, 'ETL Carga Planilla Ejecutado', '2023-01-20 11:19:13'),
	(228, 'ETL Carga Planilla Ejecutado', '2023-01-20 11:24:13'),
	(229, 'ETL Carga Planilla Ejecutado', '2023-01-20 11:29:13'),
	(230, 'ETL Carga Planilla Ejecutado', '2023-01-20 11:34:13'),
	(231, 'ETL Carga Planilla Ejecutado', '2023-01-20 11:39:13'),
	(232, 'ETL Carga Planilla Ejecutado', '2023-01-20 11:44:13'),
	(233, 'ETL Carga Planilla Ejecutado', '2023-01-20 11:49:12'),
	(234, 'ETL Carga Planilla Ejecutado', '2023-01-20 11:54:12'),
	(235, 'ETL Carga Planilla Ejecutado', '2023-01-20 11:59:12'),
	(236, 'ETL Carga Planilla Ejecutado', '2023-01-20 12:04:10'),
	(237, 'ETL Carga Planilla Ejecutado', '2023-01-20 12:09:09'),
	(238, 'ETL Carga Planilla Ejecutado', '2023-01-20 12:14:09'),
	(239, 'ETL Carga Planilla Ejecutado', '2023-01-20 12:19:09'),
	(240, 'ETL Carga Planilla Ejecutado', '2023-01-20 12:24:09'),
	(241, 'ETL Carga Planilla Ejecutado', '2023-01-20 12:29:09'),
	(242, 'ETL Carga Planilla Ejecutado', '2023-01-20 12:34:09'),
	(243, 'ETL Carga Planilla Ejecutado', '2023-01-20 12:39:09'),
	(244, 'ETL Carga Planilla Ejecutado', '2023-01-20 12:44:09'),
	(245, 'ETL Carga Planilla Ejecutado', '2023-01-20 12:49:09'),
	(246, 'ETL Carga Planilla Ejecutado', '2023-01-20 12:54:08'),
	(247, 'ETL Carga Planilla Ejecutado', '2023-01-20 12:59:08'),
	(248, 'ETL Carga Planilla Ejecutado', '2023-01-20 13:04:08'),
	(249, 'ETL Carga Planilla Ejecutado', '2023-01-20 13:09:08'),
	(250, 'ETL Carga Planilla Ejecutado', '2023-01-20 13:14:08'),
	(251, 'ETL Carga Planilla Ejecutado', '2023-01-20 13:19:07'),
	(252, 'ETL Carga Planilla Ejecutado', '2023-01-20 13:24:07'),
	(253, 'ETL Carga Planilla Ejecutado', '2023-01-20 13:29:07'),
	(254, 'ETL Carga Planilla Ejecutado', '2023-01-20 13:34:05'),
	(255, 'ETL Carga Planilla Ejecutado', '2023-01-20 13:39:06'),
	(256, 'ETL Carga Planilla Ejecutado', '2023-01-20 13:44:06'),
	(257, 'ETL Carga Planilla Ejecutado', '2023-01-20 13:49:06'),
	(258, 'ETL Carga Planilla Ejecutado', '2023-01-20 13:54:06'),
	(259, 'ETL Carga Planilla Ejecutado', '2023-01-20 13:59:05'),
	(260, 'ETL Carga Planilla Ejecutado', '2023-01-20 14:04:05'),
	(261, 'ETL Carga Planilla Ejecutado', '2023-01-20 14:09:05'),
	(262, 'ETL Carga Planilla Ejecutado', '2023-01-20 14:14:05'),
	(263, 'ETL Carga Planilla Ejecutado', '2023-01-20 14:19:05'),
	(264, 'ETL Carga Planilla Ejecutado', '2023-01-20 14:24:05'),
	(265, 'ETL Carga Planilla Ejecutado', '2023-01-20 14:29:05'),
	(266, 'ETL Carga Planilla Ejecutado', '2023-01-20 14:34:02'),
	(267, 'ETL Carga Planilla Ejecutado', '2023-01-20 14:39:03'),
	(268, 'ETL Carga Planilla Ejecutado', '2023-01-20 14:44:02'),
	(269, 'ETL Carga Planilla Ejecutado', '2023-01-20 14:49:02'),
	(270, 'ETL Carga Planilla Ejecutado', '2023-01-20 14:54:02'),
	(271, 'ETL Carga Planilla Ejecutado', '2023-01-20 14:59:02'),
	(272, 'ETL Carga Planilla Ejecutado', '2023-01-20 15:04:02'),
	(273, 'ETL Carga Planilla Ejecutado', '2023-01-20 15:09:01'),
	(274, 'ETL Carga Planilla Ejecutado', '2023-01-20 15:14:01'),
	(275, 'ETL Carga Planilla Ejecutado', '2023-01-20 15:19:01'),
	(276, 'ETL Carga Planilla Ejecutado', '2023-01-20 15:24:01'),
	(277, 'ETL Carga Planilla Ejecutado', '2023-01-20 15:29:00'),
	(278, 'ETL Carga Planilla Ejecutado', '2023-01-20 15:34:02'),
	(279, 'ETL Carga Planilla Ejecutado', '2023-01-20 15:39:01'),
	(280, 'ETL Carga Planilla Ejecutado', '2023-01-20 15:44:01'),
	(281, 'ETL Carga Planilla Ejecutado', '2023-01-20 15:49:01'),
	(282, 'ETL Carga Planilla Ejecutado', '2023-01-20 15:54:00'),
	(283, 'ETL Carga Planilla Ejecutado', '2023-01-20 15:58:58'),
	(284, 'ETL Carga Planilla Ejecutado', '2023-01-20 16:03:57'),
	(285, 'ETL Carga Planilla Ejecutado', '2023-01-20 16:08:57'),
	(286, 'ETL Carga Planilla Ejecutado', '2023-01-20 16:13:56'),
	(287, 'ETL Carga Planilla Ejecutado', '2023-01-20 16:18:56'),
	(288, 'ETL Carga Planilla Ejecutado', '2023-01-20 16:23:56'),
	(289, 'ETL Carga Planilla Ejecutado', '2023-01-20 16:28:57'),
	(290, 'ETL Carga Planilla Ejecutado', '2023-01-20 16:33:57'),
	(291, 'ETL Carga Planilla Ejecutado', '2023-01-20 16:38:57'),
	(292, 'ETL Carga Planilla Ejecutado', '2023-01-20 16:43:57'),
	(293, 'ETL Carga Planilla Ejecutado', '2023-01-20 16:48:56'),
	(294, 'ETL Carga Planilla Ejecutado', '2023-01-20 16:53:56'),
	(295, 'ETL Carga Planilla Ejecutado', '2023-01-20 16:58:56'),
	(296, 'ETL Carga Planilla Ejecutado', '2023-01-20 17:03:54'),
	(297, 'ETL Carga Planilla Ejecutado', '2023-01-20 17:08:54'),
	(298, 'ETL Carga Planilla Ejecutado', '2023-01-20 17:13:54'),
	(299, 'ETL Carga Planilla Ejecutado', '2023-01-20 17:18:55'),
	(300, 'ETL Carga Planilla Ejecutado', '2023-01-20 17:23:54'),
	(301, 'ETL Carga Planilla Ejecutado', '2023-01-20 17:28:54'),
	(302, 'ETL Carga Planilla Ejecutado', '2023-01-20 17:33:54'),
	(303, 'ETL Carga Planilla Ejecutado', '2023-01-20 17:38:52'),
	(304, 'ETL Carga Planilla Ejecutado', '2023-01-20 17:43:53'),
	(305, 'ETL Carga Planilla Ejecutado', '2023-01-20 17:48:53'),
	(306, 'ETL Carga Planilla Ejecutado', '2023-01-20 17:53:52'),
	(307, 'ETL Carga Planilla Ejecutado', '2023-01-20 17:58:52'),
	(308, 'ETL Carga Planilla Ejecutado', '2023-01-20 18:03:52'),
	(309, 'ETL Carga Planilla Ejecutado', '2023-01-20 18:08:52'),
	(310, 'ETL Carga Planilla Ejecutado', '2023-01-20 18:13:50'),
	(311, 'ETL Carga Planilla Ejecutado', '2023-01-20 18:18:51'),
	(312, 'ETL Carga Planilla Ejecutado', '2023-01-20 18:23:51'),
	(313, 'ETL Carga Planilla Ejecutado', '2023-01-20 18:28:52'),
	(314, 'ETL Carga Planilla Ejecutado', '2023-01-20 18:33:51'),
	(315, 'ETL Carga Planilla Ejecutado', '2023-01-20 18:38:51'),
	(316, 'ETL Carga Planilla Ejecutado', '2023-01-20 18:43:51'),
	(317, 'ETL Carga Planilla Ejecutado', '2023-01-20 18:48:49'),
	(318, 'ETL Carga Planilla Ejecutado', '2023-01-20 18:53:51'),
	(319, 'ETL Carga Planilla Ejecutado', '2023-01-20 18:58:49'),
	(320, 'ETL Carga Planilla Ejecutado', '2023-01-20 19:03:49'),
	(321, 'ETL Carga Planilla Ejecutado', '2023-01-20 19:08:50'),
	(322, 'ETL Carga Planilla Ejecutado', '2023-01-20 19:13:50'),
	(323, 'ETL Carga Planilla Ejecutado', '2023-01-20 19:18:48'),
	(324, 'ETL Carga Planilla Ejecutado', '2023-01-20 19:23:48'),
	(325, 'ETL Carga Planilla Ejecutado', '2023-01-20 19:28:48'),
	(326, 'ETL Carga Planilla Ejecutado', '2023-01-20 19:33:47'),
	(327, 'ETL Carga Planilla Ejecutado', '2023-01-20 19:38:48'),
	(328, 'ETL Carga Planilla Ejecutado', '2023-01-20 19:43:48'),
	(329, 'ETL Carga Planilla Ejecutado', '2023-01-20 19:48:48'),
	(330, 'ETL Carga Planilla Ejecutado', '2023-01-20 19:53:45'),
	(331, 'ETL Carga Planilla Ejecutado', '2023-01-20 19:58:47'),
	(332, 'ETL Carga Planilla Ejecutado', '2023-01-20 20:03:43'),
	(333, 'ETL Carga Planilla Ejecutado', '2023-01-20 20:08:46'),
	(334, 'ETL Carga Planilla Ejecutado', '2023-01-20 20:13:45'),
	(335, 'ETL Carga Planilla Ejecutado', '2023-01-20 20:18:46'),
	(336, 'ETL Carga Planilla Ejecutado', '2023-01-20 20:23:43'),
	(337, 'ETL Carga Planilla Ejecutado', '2023-01-20 20:28:45'),
	(338, 'ETL Carga Planilla Ejecutado', '2023-01-20 20:33:45'),
	(339, 'ETL Carga Planilla Ejecutado', '2023-01-20 20:38:43'),
	(340, 'ETL Carga Planilla Ejecutado', '2023-01-20 20:43:44'),
	(341, 'ETL Carga Planilla Ejecutado', '2023-01-20 20:48:44'),
	(342, 'ETL Carga Planilla Ejecutado', '2023-01-20 20:53:44'),
	(343, 'ETL Carga Planilla Ejecutado', '2023-01-20 20:58:41'),
	(344, 'ETL Carga Planilla Ejecutado', '2023-01-20 21:03:44'),
	(345, 'ETL Carga Planilla Ejecutado', '2023-01-20 21:08:41'),
	(346, 'ETL Carga Planilla Ejecutado', '2023-01-20 21:13:43'),
	(347, 'ETL Carga Planilla Ejecutado', '2023-01-20 21:18:43'),
	(348, 'ETL Carga Planilla Ejecutado', '2023-01-20 21:23:43'),
	(349, 'ETL Carga Planilla Ejecutado', '2023-01-20 21:28:40'),
	(350, 'ETL Carga Planilla Ejecutado', '2023-01-20 21:33:42'),
	(351, 'ETL Carga Planilla Ejecutado', '2023-01-20 21:38:42'),
	(352, 'ETL Carga Planilla Ejecutado', '2023-01-20 21:43:42'),
	(353, 'ETL Carga Planilla Ejecutado', '2023-01-20 21:48:41'),
	(354, 'ETL Carga Planilla Ejecutado', '2023-01-20 21:53:39'),
	(355, 'ETL Carga Planilla Ejecutado', '2023-01-20 21:58:41'),
	(356, 'ETL Carga Planilla Ejecutado', '2023-01-20 22:03:41'),
	(357, 'ETL Carga Planilla Ejecutado', '2023-01-20 22:08:40'),
	(358, 'ETL Carga Planilla Ejecutado', '2023-01-20 22:13:40'),
	(359, 'ETL Carga Planilla Ejecutado', '2023-01-20 22:18:41'),
	(360, 'ETL Carga Planilla Ejecutado', '2023-01-20 22:23:40'),
	(361, 'ETL Carga Planilla Ejecutado', '2023-01-20 22:28:39'),
	(362, 'ETL Carga Planilla Ejecutado', '2023-01-20 22:33:40'),
	(363, 'ETL Carga Planilla Ejecutado', '2023-01-20 22:38:39'),
	(364, 'ETL Carga Planilla Ejecutado', '2023-01-20 22:43:39'),
	(365, 'ETL Carga Planilla Ejecutado', '2023-01-20 22:48:38'),
	(366, 'ETL Carga Planilla Ejecutado', '2023-01-20 22:53:39'),
	(367, 'ETL Carga Planilla Ejecutado', '2023-01-20 22:58:38'),
	(368, 'ETL Carga Planilla Ejecutado', '2023-01-20 23:03:38'),
	(369, 'ETL Carga Planilla Ejecutado', '2023-01-20 23:08:38'),
	(370, 'ETL Carga Planilla Ejecutado', '2023-01-20 23:13:37'),
	(371, 'ETL Carga Planilla Ejecutado', '2023-01-20 23:18:38'),
	(372, 'ETL Carga Planilla Ejecutado', '2023-01-20 23:23:37'),
	(373, 'ETL Carga Planilla Ejecutado', '2023-01-20 23:28:36'),
	(374, 'ETL Carga Planilla Ejecutado', '2023-01-20 23:33:37'),
	(375, 'ETL Carga Planilla Ejecutado', '2023-01-20 23:38:36'),
	(376, 'ETL Carga Planilla Ejecutado', '2023-01-20 23:43:36'),
	(377, 'ETL Carga Planilla Ejecutado', '2023-01-20 23:48:35'),
	(378, 'ETL Carga Planilla Ejecutado', '2023-01-20 23:53:36'),
	(379, 'ETL Carga Planilla Ejecutado', '2023-01-20 23:58:35'),
	(380, 'ETL Carga Planilla Ejecutado', '2023-01-21 00:03:36'),
	(381, 'ETL Carga Planilla Ejecutado', '2023-01-21 00:08:35'),
	(382, 'ETL Carga Planilla Ejecutado', '2023-01-21 00:13:34'),
	(383, 'ETL Carga Planilla Ejecutado', '2023-01-21 00:18:34'),
	(384, 'ETL Carga Planilla Ejecutado', '2023-01-21 00:23:35'),
	(385, 'ETL Carga Planilla Ejecutado', '2023-01-21 00:28:34'),
	(386, 'ETL Carga Planilla Ejecutado', '2023-01-21 00:38:34'),
	(387, 'ETL Carga Planilla Ejecutado', '2023-01-21 00:43:33'),
	(388, 'ETL Carga Planilla Ejecutado', '2023-01-21 00:48:33'),
	(389, 'ETL Carga Planilla Ejecutado', '2023-01-21 00:53:34'),
	(390, 'ETL Carga Planilla Ejecutado', '2023-01-21 00:58:33'),
	(391, 'ETL Carga Planilla Ejecutado', '2023-01-21 01:03:33'),
	(392, 'ETL Carga Planilla Ejecutado', '2023-01-21 01:08:32'),
	(393, 'ETL Carga Planilla Ejecutado', '2023-01-21 01:13:31'),
	(394, 'ETL Carga Planilla Ejecutado', '2023-01-21 01:18:32'),
	(395, 'ETL Carga Planilla Ejecutado', '2023-01-21 01:23:32'),
	(396, 'ETL Carga Planilla Ejecutado', '2023-01-21 01:28:31'),
	(397, 'ETL Carga Planilla Ejecutado', '2023-01-21 01:33:31'),
	(398, 'ETL Carga Planilla Ejecutado', '2023-01-21 01:38:31'),
	(399, 'ETL Carga Planilla Ejecutado', '2023-01-21 01:43:31'),
	(400, 'ETL Carga Planilla Ejecutado', '2023-01-21 01:48:30'),
	(401, 'ETL Carga Planilla Ejecutado', '2023-01-21 01:53:29'),
	(402, 'ETL Carga Planilla Ejecutado', '2023-01-21 01:58:31'),
	(403, 'ETL Carga Planilla Ejecutado', '2023-01-21 02:03:32'),
	(404, 'ETL Carga Planilla Ejecutado', '2023-01-21 02:08:31'),
	(405, 'ETL Carga Planilla Ejecutado', '2023-01-21 02:13:31'),
	(406, 'ETL Carga Planilla Ejecutado', '2023-01-21 02:18:30'),
	(407, 'ETL Carga Planilla Ejecutado', '2023-01-21 02:23:31'),
	(408, 'ETL Carga Planilla Ejecutado', '2023-01-21 02:28:31'),
	(409, 'ETL Carga Planilla Ejecutado', '2023-01-21 02:33:31'),
	(410, 'ETL Carga Planilla Ejecutado', '2023-01-21 02:38:30'),
	(411, 'ETL Carga Planilla Ejecutado', '2023-01-21 02:43:28'),
	(412, 'ETL Carga Planilla Ejecutado', '2023-01-21 02:48:29'),
	(413, 'ETL Carga Planilla Ejecutado', '2023-01-21 02:53:29'),
	(414, 'ETL Carga Planilla Ejecutado', '2023-01-21 02:58:29'),
	(415, 'ETL Carga Planilla Ejecutado', '2023-01-21 03:03:29'),
	(416, 'ETL Carga Planilla Ejecutado', '2023-01-21 03:08:29'),
	(417, 'ETL Carga Planilla Ejecutado', '2023-01-21 03:13:26'),
	(418, 'ETL Carga Planilla Ejecutado', '2023-01-21 03:18:28'),
	(419, 'ETL Carga Planilla Ejecutado', '2023-01-21 03:23:28'),
	(420, 'ETL Carga Planilla Ejecutado', '2023-01-21 03:28:28'),
	(421, 'ETL Carga Planilla Ejecutado', '2023-01-21 03:33:27'),
	(422, 'ETL Carga Planilla Ejecutado', '2023-01-21 03:38:28'),
	(423, 'ETL Carga Planilla Ejecutado', '2023-01-21 03:43:27'),
	(424, 'ETL Carga Planilla Ejecutado', '2023-01-21 03:48:24'),
	(425, 'ETL Carga Planilla Ejecutado', '2023-01-21 03:53:26'),
	(426, 'ETL Carga Planilla Ejecutado', '2023-01-21 03:58:27'),
	(427, 'ETL Carga Planilla Ejecutado', '2023-01-21 04:03:25'),
	(428, 'ETL Carga Planilla Ejecutado', '2023-01-21 04:08:26'),
	(429, 'ETL Carga Planilla Ejecutado', '2023-01-21 04:13:25'),
	(430, 'ETL Carga Planilla Ejecutado', '2023-01-21 04:18:24'),
	(431, 'ETL Carga Planilla Ejecutado', '2023-01-21 04:23:24'),
	(432, 'ETL Carga Planilla Ejecutado', '2023-01-21 04:28:25'),
	(433, 'ETL Carga Planilla Ejecutado', '2023-01-21 04:33:23'),
	(434, 'ETL Carga Planilla Ejecutado', '2023-01-21 04:38:22'),
	(435, 'ETL Carga Planilla Ejecutado', '2023-01-21 04:43:24'),
	(436, 'ETL Carga Planilla Ejecutado', '2023-01-21 04:48:23'),
	(437, 'ETL Carga Planilla Ejecutado', '2023-01-21 04:53:23'),
	(438, 'ETL Carga Planilla Ejecutado', '2023-01-21 04:58:21'),
	(439, 'ETL Carga Planilla Ejecutado', '2023-01-21 05:03:22'),
	(440, 'ETL Carga Planilla Ejecutado', '2023-01-21 05:08:21'),
	(441, 'ETL Carga Planilla Ejecutado', '2023-01-21 05:13:23'),
	(442, 'ETL Carga Planilla Ejecutado', '2023-01-21 05:19:21'),
	(443, 'ETL Carga Planilla Ejecutado', '2023-01-21 05:24:21'),
	(444, 'ETL Carga Planilla Ejecutado', '2023-01-21 05:29:22'),
	(445, 'ETL Carga Planilla Ejecutado', '2023-01-21 05:34:22'),
	(446, 'ETL Carga Planilla Ejecutado', '2023-01-21 05:39:22'),
	(447, 'ETL Carga Planilla Ejecutado', '2023-01-21 05:44:20'),
	(448, 'ETL Carga Planilla Ejecutado', '2023-01-21 05:49:21'),
	(449, 'ETL Carga Planilla Ejecutado', '2023-01-21 05:54:21'),
	(450, 'ETL Carga Planilla Ejecutado', '2023-01-21 05:59:19'),
	(451, 'ETL Carga Planilla Ejecutado', '2023-01-21 06:04:20'),
	(452, 'ETL Carga Planilla Ejecutado', '2023-01-21 06:09:18'),
	(453, 'ETL Carga Planilla Ejecutado', '2023-01-21 06:14:19'),
	(454, 'ETL Carga Planilla Ejecutado', '2023-01-21 06:19:19'),
	(455, 'ETL Carga Planilla Ejecutado', '2023-01-21 06:24:19'),
	(456, 'ETL Carga Planilla Ejecutado', '2023-01-21 06:29:16'),
	(457, 'ETL Carga Planilla Ejecutado', '2023-01-21 06:34:17'),
	(458, 'ETL Carga Planilla Ejecutado', '2023-01-21 06:39:18'),
	(459, 'ETL Carga Planilla Ejecutado', '2023-01-21 06:44:16'),
	(460, 'ETL Carga Planilla Ejecutado', '2023-01-21 06:49:17'),
	(461, 'ETL Carga Planilla Ejecutado', '2023-01-21 06:54:16'),
	(462, 'ETL Carga Planilla Ejecutado', '2023-01-21 06:59:17'),
	(463, 'ETL Carga Planilla Ejecutado', '2023-01-21 07:04:16'),
	(464, 'ETL Carga Planilla Ejecutado', '2023-01-21 07:09:16'),
	(465, 'ETL Carga Planilla Ejecutado', '2023-01-21 07:14:13'),
	(466, 'ETL Carga Planilla Ejecutado', '2023-01-21 07:19:15'),
	(467, 'ETL Carga Planilla Ejecutado', '2023-01-21 07:24:15'),
	(468, 'ETL Carga Planilla Ejecutado', '2023-01-21 07:29:16'),
	(469, 'ETL Carga Planilla Ejecutado', '2023-01-21 07:34:15'),
	(470, 'ETL Carga Planilla Ejecutado', '2023-01-21 07:39:14'),
	(471, 'ETL Carga Planilla Ejecutado', '2023-01-21 07:44:15'),
	(472, 'ETL Carga Planilla Ejecutado', '2023-01-21 07:49:12'),
	(473, 'ETL Carga Planilla Ejecutado', '2023-01-21 07:54:14'),
	(474, 'ETL Carga Planilla Ejecutado', '2023-01-21 07:59:13'),
	(475, 'ETL Carga Planilla Ejecutado', '2023-01-21 08:04:14'),
	(476, 'ETL Carga Planilla Ejecutado', '2023-01-21 08:09:13'),
	(477, 'ETL Carga Planilla Ejecutado', '2023-01-21 08:14:14'),
	(478, 'ETL Carga Planilla Ejecutado', '2023-01-21 08:19:12'),
	(479, 'ETL Carga Planilla Ejecutado', '2023-01-21 08:24:12'),
	(480, 'ETL Carga Planilla Ejecutado', '2023-01-21 08:29:13'),
	(481, 'ETL Carga Planilla Ejecutado', '2023-01-21 08:34:12'),
	(482, 'ETL Carga Planilla Ejecutado', '2023-01-21 08:39:13'),
	(483, 'ETL Carga Planilla Ejecutado', '2023-01-21 08:44:11'),
	(484, 'ETL Carga Planilla Ejecutado', '2023-01-21 08:49:12'),
	(485, 'ETL Carga Planilla Ejecutado', '2023-01-21 08:54:10'),
	(486, 'ETL Carga Planilla Ejecutado', '2023-01-21 08:59:11'),
	(487, 'ETL Carga Planilla Ejecutado', '2023-01-21 09:04:10'),
	(488, 'ETL Carga Planilla Ejecutado', '2023-01-21 09:09:11'),
	(489, 'ETL Carga Planilla Ejecutado', '2023-01-21 09:14:09'),
	(490, 'ETL Carga Planilla Ejecutado', '2023-01-21 09:19:11'),
	(491, 'ETL Carga Planilla Ejecutado', '2023-01-21 09:24:08'),
	(492, 'ETL Carga Planilla Ejecutado', '2023-01-21 09:29:09'),
	(493, 'ETL Carga Planilla Ejecutado', '2023-01-21 09:34:10'),
	(494, 'ETL Carga Planilla Ejecutado', '2023-01-21 09:39:07'),
	(495, 'ETL Carga Planilla Ejecutado', '2023-01-21 09:44:08'),
	(496, 'ETL Carga Planilla Ejecutado', '2023-01-21 09:49:07'),
	(497, 'ETL Carga Planilla Ejecutado', '2023-01-21 09:54:05'),
	(498, 'ETL Carga Planilla Ejecutado', '2023-01-21 09:59:08'),
	(499, 'ETL Carga Planilla Ejecutado', '2023-01-21 10:04:06'),
	(500, 'ETL Carga Planilla Ejecutado', '2023-01-21 10:09:07'),
	(501, 'ETL Carga Planilla Ejecutado', '2023-01-21 10:14:06'),
	(502, 'ETL Carga Planilla Ejecutado', '2023-01-21 10:19:08'),
	(503, 'ETL Carga Planilla Ejecutado', '2023-01-21 10:24:07'),
	(504, 'ETL Carga Planilla Ejecutado', '2023-01-21 10:29:07'),
	(505, 'ETL Carga Planilla Ejecutado', '2023-01-21 10:34:05'),
	(506, 'ETL Carga Planilla Ejecutado', '2023-01-21 10:39:04'),
	(507, 'ETL Carga Planilla Ejecutado', '2023-01-21 10:44:04'),
	(508, 'ETL Carga Planilla Ejecutado', '2023-01-21 10:49:04'),
	(509, 'ETL Carga Planilla Ejecutado', '2023-01-21 10:54:04'),
	(510, 'ETL Carga Planilla Ejecutado', '2023-01-21 10:59:04'),
	(511, 'ETL Carga Planilla Ejecutado', '2023-01-21 11:04:04'),
	(512, 'ETL Carga Planilla Ejecutado', '2023-01-21 11:09:03'),
	(513, 'ETL Carga Planilla Ejecutado', '2023-01-21 11:14:04'),
	(514, 'ETL Carga Planilla Ejecutado', '2023-01-21 11:19:04'),
	(515, 'ETL Carga Planilla Ejecutado', '2023-01-21 11:24:04'),
	(516, 'ETL Carga Planilla Ejecutado', '2023-01-21 11:29:03'),
	(517, 'ETL Carga Planilla Ejecutado', '2023-01-21 11:34:04'),
	(518, 'ETL Carga Planilla Ejecutado', '2023-01-21 11:39:02'),
	(519, 'ETL Carga Planilla Ejecutado', '2023-01-21 11:44:03'),
	(520, 'ETL Carga Planilla Ejecutado', '2023-01-21 11:49:01'),
	(521, 'ETL Carga Planilla Ejecutado', '2023-01-21 11:54:01'),
	(522, 'ETL Carga Planilla Ejecutado', '2023-01-21 11:59:01'),
	(523, 'ETL Carga Planilla Ejecutado', '2023-01-21 12:04:01'),
	(524, 'ETL Carga Planilla Ejecutado', '2023-01-21 12:09:02'),
	(525, 'ETL Carga Planilla Ejecutado', '2023-01-21 12:14:02'),
	(526, 'ETL Carga Planilla Ejecutado', '2023-01-21 12:19:02'),
	(527, 'ETL Carga Planilla Ejecutado', '2023-01-21 12:24:00'),
	(528, 'ETL Carga Planilla Ejecutado', '2023-01-21 12:29:00'),
	(529, 'ETL Carga Planilla Ejecutado', '2023-01-21 12:34:01'),
	(530, 'ETL Carga Planilla Ejecutado', '2023-01-21 12:39:01'),
	(531, 'ETL Carga Planilla Ejecutado', '2023-01-21 12:44:00'),
	(532, 'ETL Carga Planilla Ejecutado', '2023-01-21 12:49:00'),
	(533, 'ETL Carga Planilla Ejecutado', '2023-01-21 12:53:57'),
	(534, 'ETL Carga Planilla Ejecutado', '2023-01-21 12:58:58'),
	(535, 'ETL Carga Planilla Ejecutado', '2023-01-21 13:04:00'),
	(536, 'ETL Carga Planilla Ejecutado', '2023-01-21 13:08:59'),
	(537, 'ETL Carga Planilla Ejecutado', '2023-01-21 13:13:59'),
	(538, 'ETL Carga Planilla Ejecutado', '2023-01-21 13:18:58'),
	(539, 'ETL Carga Planilla Ejecutado', '2023-01-21 13:23:58'),
	(540, 'ETL Carga Planilla Ejecutado', '2023-01-21 13:28:58'),
	(541, 'ETL Carga Planilla Ejecutado', '2023-01-21 13:33:56'),
	(542, 'ETL Carga Planilla Ejecutado', '2023-01-21 13:38:56'),
	(543, 'ETL Carga Planilla Ejecutado', '2023-01-21 13:43:57'),
	(544, 'ETL Carga Planilla Ejecutado', '2023-01-21 13:48:57'),
	(545, 'ETL Carga Planilla Ejecutado', '2023-01-21 13:53:56'),
	(546, 'ETL Carga Planilla Ejecutado', '2023-01-21 13:58:56'),
	(547, 'ETL Carga Planilla Ejecutado', '2023-01-21 14:03:56'),
	(548, 'ETL Carga Planilla Ejecutado', '2023-01-21 14:08:55'),
	(549, 'ETL Carga Planilla Ejecutado', '2023-01-21 14:13:55'),
	(550, 'ETL Carga Planilla Ejecutado', '2023-01-21 14:18:55'),
	(551, 'ETL Carga Planilla Ejecutado', '2023-01-21 14:23:56'),
	(552, 'ETL Carga Planilla Ejecutado', '2023-01-21 14:28:55'),
	(553, 'ETL Carga Planilla Ejecutado', '2023-01-21 14:33:55'),
	(554, 'ETL Carga Planilla Ejecutado', '2023-01-21 14:38:55'),
	(555, 'ETL Carga Planilla Ejecutado', '2023-01-21 14:43:54'),
	(556, 'ETL Carga Planilla Ejecutado', '2023-01-21 14:48:54'),
	(557, 'ETL Carga Planilla Ejecutado', '2023-01-21 14:53:53'),
	(558, 'ETL Carga Planilla Ejecutado', '2023-01-21 14:58:54'),
	(559, 'ETL Carga Planilla Ejecutado', '2023-01-21 15:03:52'),
	(560, 'ETL Carga Planilla Ejecutado', '2023-01-21 15:08:54'),
	(561, 'ETL Carga Planilla Ejecutado', '2023-01-21 15:13:53'),
	(562, 'ETL Carga Planilla Ejecutado', '2023-01-21 15:18:52'),
	(563, 'ETL Carga Planilla Ejecutado', '2023-01-21 15:23:51'),
	(564, 'ETL Carga Planilla Ejecutado', '2023-01-21 15:28:53'),
	(565, 'ETL Carga Planilla Ejecutado', '2023-01-21 15:33:52'),
	(566, 'ETL Carga Planilla Ejecutado', '2023-01-21 15:38:52'),
	(567, 'ETL Carga Planilla Ejecutado', '2023-01-21 15:43:52'),
	(568, 'ETL Carga Planilla Ejecutado', '2023-01-21 15:48:52'),
	(569, 'ETL Carga Planilla Ejecutado', '2023-01-21 15:53:51'),
	(570, 'ETL Carga Planilla Ejecutado', '2023-01-21 15:58:51'),
	(571, 'ETL Carga Planilla Ejecutado', '2023-01-21 16:03:50'),
	(572, 'ETL Carga Planilla Ejecutado', '2023-01-21 16:08:49'),
	(573, 'ETL Carga Planilla Ejecutado', '2023-01-21 16:13:51'),
	(574, 'ETL Carga Planilla Ejecutado', '2023-01-21 16:18:51'),
	(575, 'ETL Carga Planilla Ejecutado', '2023-01-21 16:23:50'),
	(576, 'ETL Carga Planilla Ejecutado', '2023-01-21 16:28:49'),
	(577, 'ETL Carga Planilla Ejecutado', '2023-01-21 16:33:50'),
	(578, 'ETL Carga Planilla Ejecutado', '2023-01-21 16:38:50'),
	(579, 'ETL Carga Planilla Ejecutado', '2023-01-21 16:43:48'),
	(580, 'ETL Carga Planilla Ejecutado', '2023-01-21 16:48:50'),
	(581, 'ETL Carga Planilla Ejecutado', '2023-01-21 16:53:50'),
	(582, 'ETL Carga Planilla Ejecutado', '2023-01-21 16:58:49'),
	(583, 'ETL Carga Planilla Ejecutado', '2023-01-21 17:03:49'),
	(584, 'ETL Carga Planilla Ejecutado', '2023-01-21 17:08:49'),
	(585, 'ETL Carga Planilla Ejecutado', '2023-01-21 17:13:48'),
	(586, 'ETL Carga Planilla Ejecutado', '2023-01-21 17:18:49'),
	(587, 'ETL Carga Planilla Ejecutado', '2023-01-21 17:23:48'),
	(588, 'ETL Carga Planilla Ejecutado', '2023-01-21 17:28:47'),
	(589, 'ETL Carga Planilla Ejecutado', '2023-01-21 17:33:47'),
	(590, 'ETL Carga Planilla Ejecutado', '2023-01-21 17:38:47'),
	(591, 'ETL Carga Planilla Ejecutado', '2023-01-21 17:43:48'),
	(592, 'ETL Carga Planilla Ejecutado', '2023-01-21 17:48:47'),
	(593, 'ETL Carga Planilla Ejecutado', '2023-01-21 17:53:46'),
	(594, 'ETL Carga Planilla Ejecutado', '2023-01-21 17:58:46'),
	(595, 'ETL Carga Planilla Ejecutado', '2023-01-21 18:03:45'),
	(596, 'ETL Carga Planilla Ejecutado', '2023-01-21 18:08:45'),
	(597, 'ETL Carga Planilla Ejecutado', '2023-01-21 18:13:44'),
	(598, 'ETL Carga Planilla Ejecutado', '2023-01-21 18:18:46'),
	(599, 'ETL Carga Planilla Ejecutado', '2023-01-21 18:23:42'),
	(600, 'ETL Carga Planilla Ejecutado', '2023-01-21 18:28:44'),
	(601, 'ETL Carga Planilla Ejecutado', '2023-01-21 18:33:44'),
	(602, 'ETL Carga Planilla Ejecutado', '2023-01-21 18:38:42'),
	(603, 'ETL Carga Planilla Ejecutado', '2023-01-21 18:43:44'),
	(604, 'ETL Carga Planilla Ejecutado', '2023-01-21 18:48:42'),
	(605, 'ETL Carga Planilla Ejecutado', '2023-01-21 18:53:44'),
	(606, 'ETL Carga Planilla Ejecutado', '2023-01-21 18:58:42'),
	(607, 'ETL Carga Planilla Ejecutado', '2023-01-21 19:03:43'),
	(608, 'ETL Carga Planilla Ejecutado', '2023-01-21 19:08:41'),
	(609, 'ETL Carga Planilla Ejecutado', '2023-01-21 19:13:42'),
	(610, 'ETL Carga Planilla Ejecutado', '2023-01-21 19:18:41'),
	(611, 'ETL Carga Planilla Ejecutado', '2023-01-21 19:23:43'),
	(612, 'ETL Carga Planilla Ejecutado', '2023-01-21 19:28:40'),
	(613, 'ETL Carga Planilla Ejecutado', '2023-01-21 19:33:41'),
	(614, 'ETL Carga Planilla Ejecutado', '2023-01-21 19:38:42'),
	(615, 'ETL Carga Planilla Ejecutado', '2023-01-21 19:43:40'),
	(616, 'ETL Carga Planilla Ejecutado', '2023-01-21 19:48:41'),
	(617, 'ETL Carga Planilla Ejecutado', '2023-01-21 19:53:41'),
	(618, 'ETL Carga Planilla Ejecutado', '2023-01-21 19:58:38'),
	(619, 'ETL Carga Planilla Ejecutado', '2023-01-21 20:03:40'),
	(620, 'ETL Carga Planilla Ejecutado', '2023-01-21 20:08:39'),
	(621, 'ETL Carga Planilla Ejecutado', '2023-01-21 20:13:39'),
	(622, 'ETL Carga Planilla Ejecutado', '2023-01-21 20:18:39'),
	(623, 'ETL Carga Planilla Ejecutado', '2023-01-21 20:23:39'),
	(624, 'ETL Carga Planilla Ejecutado', '2023-01-21 20:28:38'),
	(625, 'ETL Carga Planilla Ejecutado', '2023-01-21 20:33:38'),
	(626, 'ETL Carga Planilla Ejecutado', '2023-01-21 20:38:38'),
	(627, 'ETL Carga Planilla Ejecutado', '2023-01-21 20:43:36'),
	(628, 'ETL Carga Planilla Ejecutado', '2023-01-21 20:48:37'),
	(629, 'ETL Carga Planilla Ejecutado', '2023-01-21 20:53:37'),
	(630, 'ETL Carga Planilla Ejecutado', '2023-01-21 20:58:38'),
	(631, 'ETL Carga Planilla Ejecutado', '2023-01-21 21:03:36'),
	(632, 'ETL Carga Planilla Ejecutado', '2023-01-21 21:08:37'),
	(633, 'ETL Carga Planilla Ejecutado', '2023-01-21 21:13:35'),
	(634, 'ETL Carga Planilla Ejecutado', '2023-01-21 21:18:36'),
	(635, 'ETL Carga Planilla Ejecutado', '2023-01-21 21:23:36'),
	(636, 'ETL Carga Planilla Ejecutado', '2023-01-21 21:28:36'),
	(637, 'ETL Carga Planilla Ejecutado', '2023-01-21 21:33:35'),
	(638, 'ETL Carga Planilla Ejecutado', '2023-01-21 21:38:35'),
	(639, 'ETL Carga Planilla Ejecutado', '2023-01-21 21:43:35'),
	(640, 'ETL Carga Planilla Ejecutado', '2023-01-21 21:48:35'),
	(641, 'ETL Carga Planilla Ejecutado', '2023-01-21 21:53:34'),
	(642, 'ETL Carga Planilla Ejecutado', '2023-01-21 21:58:34'),
	(643, 'ETL Carga Planilla Ejecutado', '2023-01-21 22:03:35'),
	(644, 'ETL Carga Planilla Ejecutado', '2023-01-21 22:08:34'),
	(645, 'ETL Carga Planilla Ejecutado', '2023-01-21 22:13:33'),
	(646, 'ETL Carga Planilla Ejecutado', '2023-01-21 22:18:34'),
	(647, 'ETL Carga Planilla Ejecutado', '2023-01-21 22:23:33'),
	(648, 'ETL Carga Planilla Ejecutado', '2023-01-21 22:28:34'),
	(649, 'ETL Carga Planilla Ejecutado', '2023-01-21 22:33:32'),
	(650, 'ETL Carga Planilla Ejecutado', '2023-01-21 22:38:34'),
	(651, 'ETL Carga Planilla Ejecutado', '2023-01-21 22:43:33'),
	(652, 'ETL Carga Planilla Ejecutado', '2023-01-21 22:48:32'),
	(653, 'ETL Carga Planilla Ejecutado', '2023-01-21 22:58:33'),
	(654, 'ETL Carga Planilla Ejecutado', '2023-01-21 23:03:31'),
	(655, 'ETL Carga Planilla Ejecutado', '2023-01-21 23:08:32'),
	(656, 'ETL Carga Planilla Ejecutado', '2023-01-21 23:13:32'),
	(657, 'ETL Carga Planilla Ejecutado', '2023-01-21 23:18:31'),
	(658, 'ETL Carga Planilla Ejecutado', '2023-01-21 23:23:31'),
	(659, 'ETL Carga Planilla Ejecutado', '2023-01-21 23:28:31'),
	(660, 'ETL Carga Planilla Ejecutado', '2023-01-21 23:33:30'),
	(661, 'ETL Carga Planilla Ejecutado', '2023-01-21 23:38:30'),
	(662, 'ETL Carga Planilla Ejecutado', '2023-01-21 23:43:31'),
	(663, 'ETL Carga Planilla Ejecutado', '2023-01-21 23:48:30'),
	(664, 'ETL Carga Planilla Ejecutado', '2023-01-21 23:53:29'),
	(665, 'ETL Carga Planilla Ejecutado', '2023-01-21 23:58:29'),
	(666, 'ETL Carga Planilla Ejecutado', '2023-01-22 00:03:28'),
	(667, 'ETL Carga Planilla Ejecutado', '2023-01-22 00:08:29'),
	(668, 'ETL Carga Planilla Ejecutado', '2023-01-22 00:13:29'),
	(669, 'ETL Carga Planilla Ejecutado', '2023-01-22 00:18:29'),
	(670, 'ETL Carga Planilla Ejecutado', '2023-01-22 00:23:28'),
	(671, 'ETL Carga Planilla Ejecutado', '2023-01-22 00:28:28'),
	(672, 'ETL Carga Planilla Ejecutado', '2023-01-22 00:33:28'),
	(673, 'ETL Carga Planilla Ejecutado', '2023-01-22 00:38:27'),
	(674, 'ETL Carga Planilla Ejecutado', '2023-01-22 00:43:28'),
	(675, 'ETL Carga Planilla Ejecutado', '2023-01-22 00:48:28'),
	(676, 'ETL Carga Planilla Ejecutado', '2023-01-22 00:53:26'),
	(677, 'ETL Carga Planilla Ejecutado', '2023-01-22 00:58:25'),
	(678, 'ETL Carga Planilla Ejecutado', '2023-01-22 01:04:36'),
	(679, 'ETL Carga Planilla Ejecutado', '2023-01-22 01:09:37'),
	(680, 'ETL Carga Planilla Ejecutado', '2023-01-22 01:14:36'),
	(681, 'ETL Carga Planilla Ejecutado', '2023-01-22 01:19:34'),
	(682, 'ETL Carga Planilla Ejecutado', '2023-01-22 01:24:35'),
	(683, 'ETL Carga Planilla Ejecutado', '2023-01-22 01:29:36'),
	(684, 'ETL Carga Planilla Ejecutado', '2023-01-22 01:34:34'),
	(685, 'ETL Carga Planilla Ejecutado', '2023-01-22 01:39:33'),
	(686, 'ETL Carga Planilla Ejecutado', '2023-01-22 01:44:35'),
	(687, 'ETL Carga Planilla Ejecutado', '2023-01-22 01:49:32'),
	(688, 'ETL Carga Planilla Ejecutado', '2023-01-22 01:54:33'),
	(689, 'ETL Carga Planilla Ejecutado', '2023-01-22 01:59:32'),
	(690, 'ETL Carga Planilla Ejecutado', '2023-01-22 02:04:32'),
	(691, 'ETL Carga Planilla Ejecutado', '2023-01-22 02:09:34'),
	(692, 'ETL Carga Planilla Ejecutado', '2023-01-22 02:14:34'),
	(693, 'ETL Carga Planilla Ejecutado', '2023-01-22 02:19:34'),
	(694, 'ETL Carga Planilla Ejecutado', '2023-01-22 02:24:34'),
	(695, 'ETL Carga Planilla Ejecutado', '2023-01-22 02:29:35'),
	(696, 'ETL Carga Planilla Ejecutado', '2023-01-22 02:34:34'),
	(697, 'ETL Carga Planilla Ejecutado', '2023-01-22 02:39:34'),
	(698, 'ETL Carga Planilla Ejecutado', '2023-01-22 02:44:31'),
	(699, 'ETL Carga Planilla Ejecutado', '2023-01-22 02:49:33'),
	(700, 'ETL Carga Planilla Ejecutado', '2023-01-22 02:54:34'),
	(701, 'ETL Carga Planilla Ejecutado', '2023-01-22 02:59:31'),
	(702, 'ETL Carga Planilla Ejecutado', '2023-01-22 03:09:30'),
	(703, 'ETL Carga Planilla Ejecutado', '2023-01-22 03:14:32'),
	(704, 'ETL Carga Planilla Ejecutado', '2023-01-22 03:19:32'),
	(705, 'ETL Carga Planilla Ejecutado', '2023-01-22 03:24:32'),
	(706, 'ETL Carga Planilla Ejecutado', '2023-01-22 03:29:29'),
	(707, 'ETL Carga Planilla Ejecutado', '2023-01-22 03:34:29'),
	(708, 'ETL Carga Planilla Ejecutado', '2023-01-22 03:39:31'),
	(709, 'ETL Carga Planilla Ejecutado', '2023-01-22 03:44:29'),
	(710, 'ETL Carga Planilla Ejecutado', '2023-01-22 03:49:29'),
	(711, 'ETL Carga Planilla Ejecutado', '2023-01-22 03:54:30'),
	(712, 'ETL Carga Planilla Ejecutado', '2023-01-22 03:59:30'),
	(713, 'ETL Carga Planilla Ejecutado', '2023-01-22 04:04:29'),
	(714, 'ETL Carga Planilla Ejecutado', '2023-01-22 04:09:29'),
	(715, 'ETL Carga Planilla Ejecutado', '2023-01-22 04:14:27'),
	(716, 'ETL Carga Planilla Ejecutado', '2023-01-22 04:19:28'),
	(717, 'ETL Carga Planilla Ejecutado', '2023-01-22 04:24:28'),
	(718, 'ETL Carga Planilla Ejecutado', '2023-01-22 04:29:28'),
	(719, 'ETL Carga Planilla Ejecutado', '2023-01-22 04:34:26'),
	(720, 'ETL Carga Planilla Ejecutado', '2023-01-22 04:39:27'),
	(721, 'ETL Carga Planilla Ejecutado', '2023-01-22 04:44:28'),
	(722, 'ETL Carga Planilla Ejecutado', '2023-01-22 04:49:25'),
	(723, 'ETL Carga Planilla Ejecutado', '2023-01-22 04:54:27'),
	(724, 'ETL Carga Planilla Ejecutado', '2023-01-22 04:59:26'),
	(725, 'ETL Carga Planilla Ejecutado', '2023-01-22 05:04:26'),
	(726, 'ETL Carga Planilla Ejecutado', '2023-01-22 05:09:25'),
	(727, 'ETL Carga Planilla Ejecutado', '2023-01-22 05:14:26'),
	(728, 'ETL Carga Planilla Ejecutado', '2023-01-22 05:19:22'),
	(729, 'ETL Carga Planilla Ejecutado', '2023-01-22 05:24:25'),
	(730, 'ETL Carga Planilla Ejecutado', '2023-01-22 05:29:26'),
	(731, 'ETL Carga Planilla Ejecutado', '2023-01-22 05:34:25'),
	(732, 'ETL Carga Planilla Ejecutado', '2023-01-22 05:39:24'),
	(733, 'ETL Carga Planilla Ejecutado', '2023-01-22 05:44:25'),
	(734, 'ETL Carga Planilla Ejecutado', '2023-01-22 05:49:25'),
	(735, 'ETL Carga Planilla Ejecutado', '2023-01-22 05:54:24'),
	(736, 'ETL Carga Planilla Ejecutado', '2023-01-22 05:59:24'),
	(737, 'ETL Carga Planilla Ejecutado', '2023-01-22 06:04:23'),
	(738, 'ETL Carga Planilla Ejecutado', '2023-01-22 06:09:23'),
	(739, 'ETL Carga Planilla Ejecutado', '2023-01-22 06:14:24'),
	(740, 'ETL Carga Planilla Ejecutado', '2023-01-22 06:19:23'),
	(741, 'ETL Carga Planilla Ejecutado', '2023-01-22 06:24:23'),
	(742, 'ETL Carga Planilla Ejecutado', '2023-01-22 06:29:22'),
	(743, 'ETL Carga Planilla Ejecutado', '2023-01-22 06:34:22'),
	(744, 'ETL Carga Planilla Ejecutado', '2023-01-22 06:39:22'),
	(745, 'ETL Carga Planilla Ejecutado', '2023-01-22 06:44:22'),
	(746, 'ETL Carga Planilla Ejecutado', '2023-01-22 06:49:23'),
	(747, 'ETL Carga Planilla Ejecutado', '2023-01-22 06:54:22'),
	(748, 'ETL Carga Planilla Ejecutado', '2023-01-22 06:59:22'),
	(749, 'ETL Carga Planilla Ejecutado', '2023-01-22 07:04:21'),
	(750, 'ETL Carga Planilla Ejecutado', '2023-01-22 07:09:21'),
	(751, 'ETL Carga Planilla Ejecutado', '2023-01-22 07:14:20'),
	(752, 'ETL Carga Planilla Ejecutado', '2023-01-22 07:19:21'),
	(753, 'ETL Carga Planilla Ejecutado', '2023-01-22 07:24:21'),
	(754, 'ETL Carga Planilla Ejecutado', '2023-01-22 07:29:20'),
	(755, 'ETL Carga Planilla Ejecutado', '2023-01-22 07:34:21'),
	(756, 'ETL Carga Planilla Ejecutado', '2023-01-22 07:39:20'),
	(757, 'ETL Carga Planilla Ejecutado', '2023-01-22 07:44:20'),
	(758, 'ETL Carga Planilla Ejecutado', '2023-01-22 07:49:19'),
	(759, 'ETL Carga Planilla Ejecutado', '2023-01-22 07:54:20'),
	(760, 'ETL Carga Planilla Ejecutado', '2023-01-22 07:59:19'),
	(761, 'ETL Carga Planilla Ejecutado', '2023-01-22 08:04:19'),
	(762, 'ETL Carga Planilla Ejecutado', '2023-01-22 08:09:19'),
	(763, 'ETL Carga Planilla Ejecutado', '2023-01-22 08:14:16'),
	(764, 'ETL Carga Planilla Ejecutado', '2023-01-22 08:19:19'),
	(765, 'ETL Carga Planilla Ejecutado', '2023-01-22 08:24:18'),
	(766, 'ETL Carga Planilla Ejecutado', '2023-01-22 08:29:17'),
	(767, 'ETL Carga Planilla Ejecutado', '2023-01-22 08:34:18'),
	(768, 'ETL Carga Planilla Ejecutado', '2023-01-22 08:39:17'),
	(769, 'ETL Carga Planilla Ejecutado', '2023-01-22 08:44:17'),
	(770, 'ETL Carga Planilla Ejecutado', '2023-01-22 08:49:16'),
	(771, 'ETL Carga Planilla Ejecutado', '2023-01-22 08:54:17'),
	(772, 'ETL Carga Planilla Ejecutado', '2023-01-22 08:59:16'),
	(773, 'ETL Carga Planilla Ejecutado', '2023-01-22 09:04:16'),
	(774, 'ETL Carga Planilla Ejecutado', '2023-01-22 09:09:17'),
	(775, 'ETL Carga Planilla Ejecutado', '2023-01-22 09:14:16'),
	(776, 'ETL Carga Planilla Ejecutado', '2023-01-22 09:19:15'),
	(777, 'ETL Carga Planilla Ejecutado', '2023-01-22 09:24:16'),
	(778, 'ETL Carga Planilla Ejecutado', '2023-01-22 09:29:15'),
	(779, 'ETL Carga Planilla Ejecutado', '2023-01-22 09:34:12'),
	(780, 'ETL Carga Planilla Ejecutado', '2023-01-22 09:39:16'),
	(781, 'ETL Carga Planilla Ejecutado', '2023-01-22 09:44:14'),
	(782, 'ETL Carga Planilla Ejecutado', '2023-01-22 09:49:14'),
	(783, 'ETL Carga Planilla Ejecutado', '2023-01-22 09:54:15'),
	(784, 'ETL Carga Planilla Ejecutado', '2023-01-22 09:59:14'),
	(785, 'ETL Carga Planilla Ejecutado', '2023-01-22 10:04:14'),
	(786, 'ETL Carga Planilla Ejecutado', '2023-01-22 10:09:13'),
	(787, 'ETL Carga Planilla Ejecutado', '2023-01-22 10:14:13'),
	(788, 'ETL Carga Planilla Ejecutado', '2023-01-22 10:19:12'),
	(789, 'ETL Carga Planilla Ejecutado', '2023-01-22 10:24:14'),
	(790, 'ETL Carga Planilla Ejecutado', '2023-01-22 10:29:13'),
	(791, 'ETL Carga Planilla Ejecutado', '2023-01-22 10:34:12'),
	(792, 'ETL Carga Planilla Ejecutado', '2023-01-22 10:39:13'),
	(793, 'ETL Carga Planilla Ejecutado', '2023-01-22 10:44:12'),
	(794, 'ETL Carga Planilla Ejecutado', '2023-01-22 10:49:12'),
	(795, 'ETL Carga Planilla Ejecutado', '2023-01-22 10:54:11'),
	(796, 'ETL Carga Planilla Ejecutado', '2023-01-22 10:59:12'),
	(797, 'ETL Carga Planilla Ejecutado', '2023-01-22 11:04:10'),
	(798, 'ETL Carga Planilla Ejecutado', '2023-01-22 11:09:11'),
	(799, 'ETL Carga Planilla Ejecutado', '2023-01-22 11:14:10'),
	(800, 'ETL Carga Planilla Ejecutado', '2023-01-22 11:19:10'),
	(801, 'ETL Carga Planilla Ejecutado', '2023-01-22 11:24:09'),
	(802, 'ETL Carga Planilla Ejecutado', '2023-01-22 11:29:11'),
	(803, 'ETL Carga Planilla Ejecutado', '2023-01-22 11:34:10'),
	(804, 'ETL Carga Planilla Ejecutado', '2023-01-22 11:44:10'),
	(805, 'ETL Carga Planilla Ejecutado', '2023-01-22 11:49:10'),
	(806, 'ETL Carga Planilla Ejecutado', '2023-01-22 11:54:09'),
	(807, 'ETL Carga Planilla Ejecutado', '2023-01-22 11:59:08'),
	(808, 'ETL Carga Planilla Ejecutado', '2023-01-22 12:04:08'),
	(809, 'ETL Carga Planilla Ejecutado', '2023-01-22 12:09:09'),
	(810, 'ETL Carga Planilla Ejecutado', '2023-01-22 12:14:09'),
	(811, 'ETL Carga Planilla Ejecutado', '2023-01-22 12:19:07'),
	(812, 'ETL Carga Planilla Ejecutado', '2023-01-22 12:24:08'),
	(813, 'ETL Carga Planilla Ejecutado', '2023-01-22 12:29:07'),
	(814, 'ETL Carga Planilla Ejecutado', '2023-01-22 12:34:07'),
	(815, 'ETL Carga Planilla Ejecutado', '2023-01-22 12:39:07'),
	(816, 'ETL Carga Planilla Ejecutado', '2023-01-22 12:44:07'),
	(817, 'ETL Carga Planilla Ejecutado', '2023-01-22 12:49:07'),
	(818, 'ETL Carga Planilla Ejecutado', '2023-01-22 12:54:07'),
	(819, 'ETL Carga Planilla Ejecutado', '2023-01-22 12:59:06'),
	(820, 'ETL Carga Planilla Ejecutado', '2023-01-22 13:04:07'),
	(821, 'ETL Carga Planilla Ejecutado', '2023-01-22 13:09:06'),
	(822, 'ETL Carga Planilla Ejecutado', '2023-01-22 13:14:03'),
	(823, 'ETL Carga Planilla Ejecutado', '2023-01-22 13:19:06'),
	(824, 'ETL Carga Planilla Ejecutado', '2023-01-22 13:24:06'),
	(825, 'ETL Carga Planilla Ejecutado', '2023-01-22 13:29:05'),
	(826, 'ETL Carga Planilla Ejecutado', '2023-01-22 13:34:05'),
	(827, 'ETL Carga Planilla Ejecutado', '2023-01-22 13:39:05'),
	(828, 'ETL Carga Planilla Ejecutado', '2023-01-22 13:44:04'),
	(829, 'ETL Carga Planilla Ejecutado', '2023-01-22 13:49:05'),
	(830, 'ETL Carga Planilla Ejecutado', '2023-01-22 13:54:04'),
	(831, 'ETL Carga Planilla Ejecutado', '2023-01-22 13:59:03'),
	(832, 'ETL Carga Planilla Ejecutado', '2023-01-22 14:04:03'),
	(833, 'ETL Carga Planilla Ejecutado', '2023-01-22 14:09:02'),
	(834, 'ETL Carga Planilla Ejecutado', '2023-01-22 14:14:03'),
	(835, 'ETL Carga Planilla Ejecutado', '2023-01-22 14:19:03'),
	(836, 'ETL Carga Planilla Ejecutado', '2023-01-22 14:24:03'),
	(837, 'ETL Carga Planilla Ejecutado', '2023-01-22 14:29:01'),
	(838, 'ETL Carga Planilla Ejecutado', '2023-01-22 14:34:02'),
	(839, 'ETL Carga Planilla Ejecutado', '2023-01-22 14:39:02'),
	(840, 'ETL Carga Planilla Ejecutado', '2023-01-22 14:44:00'),
	(841, 'ETL Carga Planilla Ejecutado', '2023-01-22 14:48:59'),
	(842, 'ETL Carga Planilla Ejecutado', '2023-01-22 14:54:01'),
	(843, 'ETL Carga Planilla Ejecutado', '2023-01-22 14:59:01'),
	(844, 'ETL Carga Planilla Ejecutado', '2023-01-22 15:04:01'),
	(845, 'ETL Carga Planilla Ejecutado', '2023-01-22 15:09:00'),
	(846, 'ETL Carga Planilla Ejecutado', '2023-01-22 15:13:58'),
	(847, 'ETL Carga Planilla Ejecutado', '2023-01-22 15:18:59'),
	(848, 'ETL Carga Planilla Ejecutado', '2023-01-22 15:24:00'),
	(849, 'ETL Carga Planilla Ejecutado', '2023-01-22 15:28:59'),
	(850, 'ETL Carga Planilla Ejecutado', '2023-01-22 15:33:59'),
	(851, 'ETL Carga Planilla Ejecutado', '2023-01-22 15:38:59'),
	(852, 'ETL Carga Planilla Ejecutado', '2023-01-22 15:43:58'),
	(853, 'ETL Carga Planilla Ejecutado', '2023-01-22 15:48:56'),
	(854, 'ETL Carga Planilla Ejecutado', '2023-01-22 15:53:58'),
	(855, 'ETL Carga Planilla Ejecutado', '2023-01-22 15:58:58'),
	(856, 'ETL Carga Planilla Ejecutado', '2023-01-22 16:03:57'),
	(857, 'ETL Carga Planilla Ejecutado', '2023-01-22 16:08:57'),
	(858, 'ETL Carga Planilla Ejecutado', '2023-01-22 16:13:57'),
	(859, 'ETL Carga Planilla Ejecutado', '2023-01-22 16:18:56'),
	(860, 'ETL Carga Planilla Ejecutado', '2023-01-22 16:23:54'),
	(861, 'ETL Carga Planilla Ejecutado', '2023-01-22 16:28:56'),
	(862, 'ETL Carga Planilla Ejecutado', '2023-01-22 16:33:55'),
	(863, 'ETL Carga Planilla Ejecutado', '2023-01-22 16:38:54'),
	(864, 'ETL Carga Planilla Ejecutado', '2023-01-22 16:43:56'),
	(865, 'ETL Carga Planilla Ejecutado', '2023-01-22 16:48:55'),
	(866, 'ETL Carga Planilla Ejecutado', '2023-01-22 16:53:54'),
	(867, 'ETL Carga Planilla Ejecutado', '2023-01-22 16:58:55'),
	(868, 'ETL Carga Planilla Ejecutado', '2023-01-22 17:03:53'),
	(869, 'ETL Carga Planilla Ejecutado', '2023-01-22 17:08:54'),
	(870, 'ETL Carga Planilla Ejecutado', '2023-01-22 17:13:53'),
	(871, 'ETL Carga Planilla Ejecutado', '2023-01-22 17:18:52'),
	(872, 'ETL Carga Planilla Ejecutado', '2023-01-22 17:23:51'),
	(873, 'ETL Carga Planilla Ejecutado', '2023-01-22 17:28:53'),
	(874, 'ETL Carga Planilla Ejecutado', '2023-01-22 17:33:49'),
	(875, 'ETL Carga Planilla Ejecutado', '2023-01-22 17:38:51'),
	(876, 'ETL Carga Planilla Ejecutado', '2023-01-22 17:43:52'),
	(877, 'ETL Carga Planilla Ejecutado', '2023-01-22 17:48:52'),
	(878, 'ETL Carga Planilla Ejecutado', '2023-01-22 17:53:50'),
	(879, 'ETL Carga Planilla Ejecutado', '2023-01-22 17:58:50'),
	(880, 'ETL Carga Planilla Ejecutado', '2023-01-22 18:03:50'),
	(881, 'ETL Carga Planilla Ejecutado', '2023-01-22 18:08:50'),
	(882, 'ETL Carga Planilla Ejecutado', '2023-01-22 18:13:50'),
	(883, 'ETL Carga Planilla Ejecutado', '2023-01-22 18:18:50'),
	(884, 'ETL Carga Planilla Ejecutado', '2023-01-22 18:23:47'),
	(885, 'ETL Carga Planilla Ejecutado', '2023-01-22 18:28:49'),
	(886, 'ETL Carga Planilla Ejecutado', '2023-01-22 18:33:49'),
	(887, 'ETL Carga Planilla Ejecutado', '2023-01-22 18:38:47'),
	(888, 'ETL Carga Planilla Ejecutado', '2023-01-22 18:43:47'),
	(889, 'ETL Carga Planilla Ejecutado', '2023-01-22 18:48:49'),
	(890, 'ETL Carga Planilla Ejecutado', '2023-01-22 18:53:48'),
	(891, 'ETL Carga Planilla Ejecutado', '2023-01-22 18:58:47'),
	(892, 'ETL Carga Planilla Ejecutado', '2023-01-22 19:03:47'),
	(893, 'ETL Carga Planilla Ejecutado', '2023-01-22 19:08:46'),
	(894, 'ETL Carga Planilla Ejecutado', '2023-01-22 19:13:46'),
	(895, 'ETL Carga Planilla Ejecutado', '2023-01-22 19:18:47'),
	(896, 'ETL Carga Planilla Ejecutado', '2023-01-22 19:23:46'),
	(897, 'ETL Carga Planilla Ejecutado', '2023-01-22 19:28:45'),
	(898, 'ETL Carga Planilla Ejecutado', '2023-01-22 19:33:46'),
	(899, 'ETL Carga Planilla Ejecutado', '2023-01-22 19:38:45'),
	(900, 'ETL Carga Planilla Ejecutado', '2023-01-22 19:43:44'),
	(901, 'ETL Carga Planilla Ejecutado', '2023-01-22 19:48:44'),
	(902, 'ETL Carga Planilla Ejecutado', '2023-01-22 19:53:45'),
	(903, 'ETL Carga Planilla Ejecutado', '2023-01-22 19:58:45'),
	(904, 'ETL Carga Planilla Ejecutado', '2023-01-22 20:03:45'),
	(905, 'ETL Carga Planilla Ejecutado', '2023-01-22 20:08:44'),
	(906, 'ETL Carga Planilla Ejecutado', '2023-01-22 20:13:42'),
	(907, 'ETL Carga Planilla Ejecutado', '2023-01-22 20:18:43'),
	(908, 'ETL Carga Planilla Ejecutado', '2023-01-22 20:23:43'),
	(909, 'ETL Carga Planilla Ejecutado', '2023-01-22 20:28:43'),
	(910, 'ETL Carga Planilla Ejecutado', '2023-01-22 20:33:42'),
	(911, 'ETL Carga Planilla Ejecutado', '2023-01-22 20:38:43'),
	(912, 'ETL Carga Planilla Ejecutado', '2023-01-22 20:43:42'),
	(913, 'ETL Carga Planilla Ejecutado', '2023-01-22 20:48:41'),
	(914, 'ETL Carga Planilla Ejecutado', '2023-01-22 20:53:41'),
	(915, 'ETL Carga Planilla Ejecutado', '2023-01-22 20:58:42'),
	(916, 'ETL Carga Planilla Ejecutado', '2023-01-22 21:03:40'),
	(917, 'ETL Carga Planilla Ejecutado', '2023-01-22 21:08:41'),
	(918, 'ETL Carga Planilla Ejecutado', '2023-01-22 21:13:41'),
	(919, 'ETL Carga Planilla Ejecutado', '2023-01-22 21:18:39'),
	(920, 'ETL Carga Planilla Ejecutado', '2023-01-22 21:23:39'),
	(921, 'ETL Carga Planilla Ejecutado', '2023-01-22 21:28:40'),
	(922, 'ETL Carga Planilla Ejecutado', '2023-01-22 21:33:38'),
	(923, 'ETL Carga Planilla Ejecutado', '2023-01-22 21:38:38'),
	(924, 'ETL Carga Planilla Ejecutado', '2023-01-22 21:43:39'),
	(925, 'ETL Carga Planilla Ejecutado', '2023-01-22 21:48:37'),
	(926, 'ETL Carga Planilla Ejecutado', '2023-01-22 21:53:38'),
	(927, 'ETL Carga Planilla Ejecutado', '2023-01-22 21:58:37'),
	(928, 'ETL Carga Planilla Ejecutado', '2023-01-22 22:03:38'),
	(929, 'ETL Carga Planilla Ejecutado', '2023-01-22 22:08:35'),
	(930, 'ETL Carga Planilla Ejecutado', '2023-01-22 22:13:37'),
	(931, 'ETL Carga Planilla Ejecutado', '2023-01-22 22:18:37'),
	(932, 'ETL Carga Planilla Ejecutado', '2023-01-22 22:23:37'),
	(933, 'ETL Carga Planilla Ejecutado', '2023-01-22 22:28:35'),
	(934, 'ETL Carga Planilla Ejecutado', '2023-01-22 22:33:36'),
	(935, 'ETL Carga Planilla Ejecutado', '2023-01-22 22:38:37'),
	(936, 'ETL Carga Planilla Ejecutado', '2023-01-22 22:43:32'),
	(937, 'ETL Carga Planilla Ejecutado', '2023-01-22 22:48:34'),
	(938, 'ETL Carga Planilla Ejecutado', '2023-01-22 22:53:35'),
	(939, 'ETL Carga Planilla Ejecutado', '2023-01-22 22:58:36'),
	(940, 'ETL Carga Planilla Ejecutado', '2023-01-22 23:03:35'),
	(941, 'ETL Carga Planilla Ejecutado', '2023-01-22 23:08:35'),
	(942, 'ETL Carga Planilla Ejecutado', '2023-01-22 23:13:32'),
	(943, 'ETL Carga Planilla Ejecutado', '2023-01-22 23:19:36'),
	(944, 'ETL Carga Planilla Ejecutado', '2023-01-22 23:24:34'),
	(945, 'ETL Carga Planilla Ejecutado', '2023-01-22 23:29:37'),
	(946, 'ETL Carga Planilla Ejecutado', '2023-01-22 23:34:36'),
	(947, 'ETL Carga Planilla Ejecutado', '2023-01-22 23:39:33'),
	(948, 'ETL Carga Planilla Ejecutado', '2023-01-22 23:44:36'),
	(949, 'ETL Carga Planilla Ejecutado', '2023-01-22 23:49:35'),
	(950, 'ETL Carga Planilla Ejecutado', '2023-01-22 23:54:34'),
	(951, 'ETL Carga Planilla Ejecutado', '2023-01-22 23:59:35'),
	(952, 'ETL Carga Planilla Ejecutado', '2023-01-23 00:04:35'),
	(953, 'ETL Carga Planilla Ejecutado', '2023-01-23 00:09:35'),
	(954, 'ETL Carga Planilla Ejecutado', '2023-01-23 00:14:34'),
	(955, 'ETL Carga Planilla Ejecutado', '2023-01-23 00:19:34'),
	(956, 'ETL Carga Planilla Ejecutado', '2023-01-23 00:24:33'),
	(957, 'ETL Carga Planilla Ejecutado', '2023-01-23 00:29:34'),
	(958, 'ETL Carga Planilla Ejecutado', '2023-01-23 00:34:33'),
	(959, 'ETL Carga Planilla Ejecutado', '2023-01-23 00:39:34'),
	(960, 'ETL Carga Planilla Ejecutado', '2023-01-23 00:44:33'),
	(961, 'ETL Carga Planilla Ejecutado', '2023-01-23 00:49:32'),
	(962, 'ETL Carga Planilla Ejecutado', '2023-01-23 00:54:32'),
	(963, 'ETL Carga Planilla Ejecutado', '2023-01-23 00:59:33'),
	(964, 'ETL Carga Planilla Ejecutado', '2023-01-23 01:04:32'),
	(965, 'ETL Carga Planilla Ejecutado', '2023-01-23 01:09:32'),
	(966, 'ETL Carga Planilla Ejecutado', '2023-01-23 01:14:32'),
	(967, 'ETL Carga Planilla Ejecutado', '2023-01-23 01:19:32'),
	(968, 'ETL Carga Planilla Ejecutado', '2023-01-23 01:24:31'),
	(969, 'ETL Carga Planilla Ejecutado', '2023-01-23 01:29:31'),
	(970, 'ETL Carga Planilla Ejecutado', '2023-01-23 01:34:31'),
	(971, 'ETL Carga Planilla Ejecutado', '2023-01-23 01:39:30'),
	(972, 'ETL Carga Planilla Ejecutado', '2023-01-23 01:44:32'),
	(973, 'ETL Carga Planilla Ejecutado', '2023-01-23 01:49:30'),
	(974, 'ETL Carga Planilla Ejecutado', '2023-01-23 01:54:30'),
	(975, 'ETL Carga Planilla Ejecutado', '2023-01-23 01:59:27'),
	(976, 'ETL Carga Planilla Ejecutado', '2023-01-23 02:04:32'),
	(977, 'ETL Carga Planilla Ejecutado', '2023-01-23 02:09:30'),
	(978, 'ETL Carga Planilla Ejecutado', '2023-01-23 02:14:29'),
	(979, 'ETL Carga Planilla Ejecutado', '2023-01-23 02:19:29'),
	(980, 'ETL Carga Planilla Ejecutado', '2023-01-23 02:24:30'),
	(981, 'ETL Carga Planilla Ejecutado', '2023-01-23 02:29:30'),
	(982, 'ETL Carga Planilla Ejecutado', '2023-01-23 02:34:28'),
	(983, 'ETL Carga Planilla Ejecutado', '2023-01-23 02:39:29'),
	(984, 'ETL Carga Planilla Ejecutado', '2023-01-23 02:44:28'),
	(985, 'ETL Carga Planilla Ejecutado', '2023-01-23 02:49:28'),
	(986, 'ETL Carga Planilla Ejecutado', '2023-01-23 02:54:27'),
	(987, 'ETL Carga Planilla Ejecutado', '2023-01-23 02:59:28'),
	(988, 'ETL Carga Planilla Ejecutado', '2023-01-23 03:04:28'),
	(989, 'ETL Carga Planilla Ejecutado', '2023-01-23 03:09:28'),
	(990, 'ETL Carga Planilla Ejecutado', '2023-01-23 03:14:27'),
	(991, 'ETL Carga Planilla Ejecutado', '2023-01-23 03:19:25'),
	(992, 'ETL Carga Planilla Ejecutado', '2023-01-23 03:24:27'),
	(993, 'ETL Carga Planilla Ejecutado', '2023-01-23 03:29:27'),
	(994, 'ETL Carga Planilla Ejecutado', '2023-01-23 03:34:25'),
	(995, 'ETL Carga Planilla Ejecutado', '2023-01-23 03:39:27'),
	(996, 'ETL Carga Planilla Ejecutado', '2023-01-23 03:44:26'),
	(997, 'ETL Carga Planilla Ejecutado', '2023-01-23 03:49:25'),
	(998, 'ETL Carga Planilla Ejecutado', '2023-01-23 03:54:24'),
	(999, 'ETL Carga Planilla Ejecutado', '2023-01-23 03:59:26'),
	(1000, 'ETL Carga Planilla Ejecutado', '2023-01-23 04:04:25'),
	(1001, 'ETL Carga Planilla Ejecutado', '2023-01-23 04:09:25'),
	(1002, 'ETL Carga Planilla Ejecutado', '2023-01-23 04:14:25'),
	(1003, 'ETL Carga Planilla Ejecutado', '2023-01-23 04:19:24'),
	(1004, 'ETL Carga Planilla Ejecutado', '2023-01-23 04:24:22'),
	(1005, 'ETL Carga Planilla Ejecutado', '2023-01-23 04:29:25'),
	(1006, 'ETL Carga Planilla Ejecutado', '2023-01-23 04:34:24'),
	(1007, 'ETL Carga Planilla Ejecutado', '2023-01-23 04:39:23'),
	(1008, 'ETL Carga Planilla Ejecutado', '2023-01-23 04:44:24'),
	(1009, 'ETL Carga Planilla Ejecutado', '2023-01-23 04:49:24'),
	(1010, 'ETL Carga Planilla Ejecutado', '2023-01-23 04:54:22'),
	(1011, 'ETL Carga Planilla Ejecutado', '2023-01-23 04:59:21'),
	(1012, 'ETL Carga Planilla Ejecutado', '2023-01-23 05:04:23'),
	(1013, 'ETL Carga Planilla Ejecutado', '2023-01-23 05:09:22'),
	(1014, 'ETL Carga Planilla Ejecutado', '2023-01-23 05:14:23'),
	(1015, 'ETL Carga Planilla Ejecutado', '2023-01-23 05:19:22'),
	(1016, 'ETL Carga Planilla Ejecutado', '2023-01-23 05:24:21'),
	(1017, 'ETL Carga Planilla Ejecutado', '2023-01-23 05:29:23'),
	(1018, 'ETL Carga Planilla Ejecutado', '2023-01-23 05:34:22'),
	(1019, 'ETL Carga Planilla Ejecutado', '2023-01-23 05:39:21'),
	(1020, 'ETL Carga Planilla Ejecutado', '2023-01-23 05:44:22'),
	(1021, 'ETL Carga Planilla Ejecutado', '2023-01-23 05:49:21'),
	(1022, 'ETL Carga Planilla Ejecutado', '2023-01-23 05:54:20'),
	(1023, 'ETL Carga Planilla Ejecutado', '2023-01-23 05:59:22'),
	(1024, 'ETL Carga Planilla Ejecutado', '2023-01-23 06:04:20'),
	(1025, 'ETL Carga Planilla Ejecutado', '2023-01-23 06:09:21'),
	(1026, 'ETL Carga Planilla Ejecutado', '2023-01-23 06:14:21'),
	(1027, 'ETL Carga Planilla Ejecutado', '2023-01-23 06:19:19'),
	(1028, 'ETL Carga Planilla Ejecutado', '2023-01-23 06:24:18'),
	(1029, 'ETL Carga Planilla Ejecutado', '2023-01-23 06:29:20'),
	(1030, 'ETL Carga Planilla Ejecutado', '2023-01-23 06:34:19'),
	(1031, 'ETL Carga Planilla Ejecutado', '2023-01-23 06:39:19'),
	(1032, 'ETL Carga Planilla Ejecutado', '2023-01-23 06:44:19'),
	(1033, 'ETL Carga Planilla Ejecutado', '2023-01-23 06:49:19'),
	(1034, 'ETL Carga Planilla Ejecutado', '2023-01-23 06:54:17'),
	(1035, 'ETL Carga Planilla Ejecutado', '2023-01-23 06:59:19'),
	(1036, 'ETL Carga Planilla Ejecutado', '2023-01-23 07:04:17'),
	(1037, 'ETL Carga Planilla Ejecutado', '2023-01-23 07:09:18'),
	(1038, 'ETL Carga Planilla Ejecutado', '2023-01-23 07:14:17'),
	(1039, 'ETL Carga Planilla Ejecutado', '2023-01-23 07:19:17'),
	(1040, 'ETL Carga Planilla Ejecutado', '2023-01-23 07:24:15'),
	(1041, 'ETL Carga Planilla Ejecutado', '2023-01-23 07:29:18'),
	(1042, 'ETL Carga Planilla Ejecutado', '2023-01-23 07:34:16'),
	(1043, 'ETL Carga Planilla Ejecutado', '2023-01-23 07:39:14'),
	(1044, 'ETL Carga Planilla Ejecutado', '2023-01-23 07:44:17'),
	(1045, 'ETL Carga Planilla Ejecutado', '2023-01-23 07:49:17'),
	(1046, 'ETL Carga Planilla Ejecutado', '2023-01-23 07:54:16'),
	(1047, 'ETL Carga Planilla Ejecutado', '2023-01-23 07:59:14'),
	(1048, 'ETL Carga Planilla Ejecutado', '2023-01-23 08:04:15'),
	(1049, 'ETL Carga Planilla Ejecutado', '2023-01-23 08:09:15'),
	(1050, 'ETL Carga Planilla Ejecutado', '2023-01-23 08:14:16'),
	(1051, 'ETL Carga Planilla Ejecutado', '2023-01-23 08:19:15'),
	(1052, 'ETL Carga Planilla Ejecutado', '2023-01-23 08:24:14'),
	(1053, 'ETL Carga Planilla Ejecutado', '2023-01-23 08:29:14'),
	(1054, 'ETL Carga Planilla Ejecutado', '2023-01-23 08:34:14'),
	(1055, 'ETL Carga Planilla Ejecutado', '2023-01-23 08:39:14'),
	(1056, 'ETL Carga Planilla Ejecutado', '2023-01-23 08:44:15'),
	(1057, 'ETL Carga Planilla Ejecutado', '2023-01-23 08:49:14'),
	(1058, 'ETL Carga Planilla Ejecutado', '2023-01-23 08:54:13'),
	(1059, 'ETL Carga Planilla Ejecutado', '2023-01-23 08:59:14'),
	(1060, 'ETL Carga Planilla Ejecutado', '2023-01-23 09:04:13'),
	(1061, 'ETL Carga Planilla Ejecutado', '2023-01-23 09:09:13'),
	(1062, 'ETL Carga Planilla Ejecutado', '2023-01-23 09:14:13'),
	(1063, 'ETL Carga Planilla Ejecutado', '2023-01-23 09:19:11'),
	(1064, 'ETL Carga Planilla Ejecutado', '2023-01-23 09:24:13'),
	(1065, 'ETL Carga Planilla Ejecutado', '2023-01-23 09:29:12'),
	(1066, 'ETL Carga Planilla Ejecutado', '2023-01-23 09:34:12'),
	(1067, 'ETL Carga Planilla Ejecutado', '2023-01-23 09:39:10'),
	(1068, 'ETL Carga Planilla Ejecutado', '2023-01-23 09:44:10'),
	(1069, 'ETL Carga Planilla Ejecutado', '2023-01-23 09:49:12'),
	(1070, 'ETL Carga Planilla Ejecutado', '2023-01-23 09:54:12'),
	(1071, 'ETL Carga Planilla Ejecutado', '2023-01-23 09:59:11'),
	(1072, 'ETL Carga Planilla Ejecutado', '2023-01-23 10:04:11'),
	(1073, 'ETL Carga Planilla Ejecutado', '2023-01-23 10:09:10'),
	(1074, 'ETL Carga Planilla Ejecutado', '2023-02-20 10:14:08'),
	(1075, 'ETL Carga Planilla Ejecutado', '2023-05-01 10:19:05'),
	(1076, 'ETL Carga Planilla Ejecutado', '2023-09-01 10:24:01'),
	(1077, 'ETL Carga Planilla Ejecutado', '2023-12-20 10:28:58'),
	(1078, 'ETL Carga Planilla Ejecutado', '2023-01-23 10:33:57'),
	(1079, 'ETL Carga Planilla Ejecutado', '2023-01-23 10:38:57'),
	(1080, 'ETL Carga Planilla Ejecutado', '2023-01-23 10:43:57'),
	(1081, 'ETL Carga Planilla Ejecutado', '2023-01-23 10:48:56'),
	(1082, 'ETL Carga Planilla Ejecutado', '2023-01-23 10:53:56'),
	(1083, 'ETL Carga Planilla Ejecutado', '2023-01-23 10:58:56'),
	(1084, 'ETL Carga Planilla Ejecutado', '2023-01-23 11:03:55'),
	(1085, 'ETL Carga Planilla Ejecutado', '2023-01-23 11:08:54'),
	(1086, 'ETL Carga Planilla Ejecutado', '2023-01-23 11:13:54'),
	(1087, 'ETL Carga Planilla Ejecutado', '2023-01-23 11:18:53'),
	(1088, 'ETL Carga Planilla Ejecutado', '2023-01-23 11:23:53'),
	(1089, 'ETL Carga Planilla Ejecutado', '2023-01-23 11:28:53'),
	(1090, 'ETL Carga Planilla Ejecutado', '2023-01-23 11:33:52'),
	(1091, 'ETL Carga Planilla Ejecutado', '2023-01-23 11:38:52'),
	(1092, 'ETL Carga Planilla Ejecutado', '2023-01-23 11:43:52'),
	(1093, 'ETL Carga Planilla Ejecutado', '2023-01-23 11:48:52'),
	(1094, 'ETL Carga Planilla Ejecutado', '2023-01-23 11:53:51'),
	(1095, 'ETL Carga Planilla Ejecutado', '2023-01-23 11:58:51'),
	(1096, 'ETL Carga Planilla Ejecutado', '2023-01-23 12:03:53'),
	(1097, 'ETL Carga Planilla Ejecutado', '2023-01-23 12:08:53'),
	(1098, 'ETL Carga Planilla Ejecutado', '2023-01-23 12:13:52'),
	(1099, 'ETL Carga Planilla Ejecutado', '2023-01-23 12:18:52'),
	(1100, 'ETL Carga Planilla Ejecutado', '2023-01-23 12:23:52'),
	(1101, 'ETL Carga Planilla Ejecutado', '2023-01-23 12:28:52'),
	(1102, 'ETL Carga Planilla Ejecutado', '2023-01-23 12:33:50'),
	(1103, 'ETL Carga Planilla Ejecutado', '2023-01-23 12:38:51'),
	(1104, 'ETL Carga Planilla Ejecutado', '2023-01-23 12:43:50'),
	(1105, 'ETL Carga Planilla Ejecutado', '2023-01-23 12:48:50'),
	(1106, 'ETL Carga Planilla Ejecutado', '2023-01-23 12:53:50'),
	(1107, 'ETL Carga Planilla Ejecutado', '2023-01-23 12:58:49'),
	(1108, 'ETL Carga Planilla Ejecutado', '2023-01-23 13:03:50'),
	(1109, 'ETL Carga Planilla Ejecutado', '2023-01-23 13:08:50'),
	(1110, 'ETL Carga Planilla Ejecutado', '2023-01-23 13:13:49'),
	(1111, 'ETL Carga Planilla Ejecutado', '2023-01-23 13:18:49'),
	(1112, 'ETL Carga Planilla Ejecutado', '2023-01-23 13:23:49'),
	(1113, 'ETL Carga Planilla Ejecutado', '2023-01-23 13:28:49'),
	(1114, 'ETL Carga Planilla Ejecutado', '2023-01-23 13:33:48'),
	(1115, 'ETL Carga Planilla Ejecutado', '2023-01-23 13:38:48'),
	(1116, 'ETL Carga Planilla Ejecutado', '2023-01-23 13:43:46'),
	(1117, 'ETL Carga Planilla Ejecutado', '2023-01-23 13:48:45'),
	(1118, 'ETL Carga Planilla Ejecutado', '2023-01-23 13:53:47'),
	(1119, 'ETL Carga Planilla Ejecutado', '2023-01-23 13:58:47'),
	(1120, 'ETL Carga Planilla Ejecutado', '2023-01-23 14:03:47'),
	(1121, 'ETL Carga Planilla Ejecutado', '2023-01-23 14:08:47'),
	(1122, 'ETL Carga Planilla Ejecutado', '2023-01-23 14:13:47'),
	(1123, 'ETL Carga Planilla Ejecutado', '2023-01-23 14:18:46'),
	(1124, 'ETL Carga Planilla Ejecutado', '2023-01-23 14:23:46'),
	(1125, 'ETL Carga Planilla Ejecutado', '2023-01-23 14:28:46'),
	(1126, 'ETL Carga Planilla Ejecutado', '2023-01-23 14:33:44'),
	(1127, 'ETL Carga Planilla Ejecutado', '2023-01-23 14:38:44'),
	(1128, 'ETL Carga Planilla Ejecutado', '2023-01-23 14:43:44'),
	(1129, 'ETL Carga Planilla Ejecutado', '2023-01-23 14:48:43'),
	(1130, 'ETL Carga Planilla Ejecutado', '2023-01-23 14:53:44'),
	(1131, 'ETL Carga Planilla Ejecutado', '2023-01-23 14:58:42'),
	(1132, 'ETL Carga Planilla Ejecutado', '2023-01-23 15:03:44'),
	(1133, 'ETL Carga Planilla Ejecutado', '2023-01-23 15:08:44'),
	(1134, 'ETL Carga Planilla Ejecutado', '2023-01-23 15:13:44'),
	(1135, 'ETL Carga Planilla Ejecutado', '2023-01-23 15:18:44'),
	(1136, 'ETL Carga Planilla Ejecutado', '2023-01-23 15:23:43'),
	(1137, 'ETL Carga Planilla Ejecutado', '2023-01-23 15:28:43'),
	(1138, 'ETL Carga Planilla Ejecutado', '2023-01-23 15:33:42'),
	(1139, 'ETL Carga Planilla Ejecutado', '2023-01-23 15:38:42'),
	(1140, 'ETL Carga Planilla Ejecutado', '2023-01-23 15:43:41'),
	(1141, 'ETL Carga Planilla Ejecutado', '2023-01-23 15:48:41'),
	(1142, 'ETL Carga Planilla Ejecutado', '2023-01-23 15:53:41'),
	(1143, 'ETL Carga Planilla Ejecutado', '2023-01-23 15:58:41'),
	(1144, 'ETL Carga Planilla Ejecutado', '2023-01-23 16:03:42'),
	(1145, 'ETL Carga Planilla Ejecutado', '2023-01-23 16:08:40'),
	(1146, 'ETL Carga Planilla Ejecutado', '2023-01-23 16:13:41'),
	(1147, 'ETL Carga Planilla Ejecutado', '2023-01-23 16:18:40'),
	(1148, 'ETL Carga Planilla Ejecutado', '2023-01-23 16:23:40'),
	(1149, 'ETL Carga Planilla Ejecutado', '2023-01-23 16:28:40'),
	(1150, 'ETL Carga Planilla Ejecutado', '2023-01-23 16:33:38'),
	(1151, 'ETL Carga Planilla Ejecutado', '2023-01-23 16:38:39'),
	(1152, 'ETL Carga Planilla Ejecutado', '2023-01-23 16:43:38'),
	(1153, 'ETL Carga Planilla Ejecutado', '2023-01-23 16:48:37'),
	(1154, 'ETL Carga Planilla Ejecutado', '2023-01-23 16:53:37'),
	(1155, 'ETL Carga Planilla Ejecutado', '2023-01-23 16:58:35'),
	(1156, 'ETL Carga Planilla Ejecutado', '2023-01-23 17:03:38'),
	(1157, 'ETL Carga Planilla Ejecutado', '2023-01-23 17:08:38'),
	(1158, 'ETL Carga Planilla Ejecutado', '2023-01-23 17:13:37'),
	(1159, 'ETL Carga Planilla Ejecutado', '2023-01-23 17:18:37'),
	(1160, 'ETL Carga Planilla Ejecutado', '2023-01-23 17:23:37'),
	(1161, 'ETL Carga Planilla Ejecutado', '2023-01-23 17:28:37'),
	(1162, 'ETL Carga Planilla Ejecutado', '2023-01-23 17:33:36'),
	(1163, 'ETL Carga Planilla Ejecutado', '2023-01-23 17:38:36'),
	(1164, 'ETL Carga Planilla Ejecutado', '2023-01-23 17:43:35'),
	(1165, 'ETL Carga Planilla Ejecutado', '2023-01-23 17:48:35'),
	(1166, 'ETL Carga Planilla Ejecutado', '2023-01-23 17:53:35'),
	(1167, 'ETL Carga Planilla Ejecutado', '2023-01-23 17:58:35'),
	(1168, 'ETL Carga Planilla Ejecutado', '2023-01-23 18:03:34'),
	(1169, 'ETL Carga Planilla Ejecutado', '2023-01-23 18:08:34'),
	(1170, 'ETL Carga Planilla Ejecutado', '2023-01-23 18:18:33'),
	(1171, 'ETL Carga Planilla Ejecutado', '2023-01-23 18:23:34'),
	(1172, 'ETL Carga Planilla Ejecutado', '2023-01-23 18:28:33'),
	(1173, 'ETL Carga Planilla Ejecutado', '2023-01-23 18:33:33'),
	(1174, 'ETL Carga Planilla Ejecutado', '2023-01-23 18:38:33'),
	(1175, 'ETL Carga Planilla Ejecutado', '2023-01-23 18:43:32'),
	(1176, 'ETL Carga Planilla Ejecutado', '2023-01-23 18:48:31'),
	(1177, 'ETL Carga Planilla Ejecutado', '2023-01-23 18:53:31'),
	(1178, 'ETL Carga Planilla Ejecutado', '2023-01-23 18:58:32'),
	(1179, 'ETL Carga Planilla Ejecutado', '2023-01-23 19:03:31'),
	(1180, 'ETL Carga Planilla Ejecutado', '2023-01-23 19:08:31'),
	(1181, 'ETL Carga Planilla Ejecutado', '2023-01-23 19:13:31'),
	(1182, 'ETL Carga Planilla Ejecutado', '2023-01-23 19:18:29'),
	(1183, 'ETL Carga Planilla Ejecutado', '2023-01-23 19:23:30'),
	(1184, 'ETL Carga Planilla Ejecutado', '2023-01-23 19:28:31'),
	(1185, 'ETL Carga Planilla Ejecutado', '2023-01-23 19:33:29'),
	(1186, 'ETL Carga Planilla Ejecutado', '2023-01-23 19:38:29'),
	(1187, 'ETL Carga Planilla Ejecutado', '2023-01-23 19:43:30'),
	(1188, 'ETL Carga Planilla Ejecutado', '2023-01-23 19:48:30'),
	(1189, 'ETL Carga Planilla Ejecutado', '2023-01-23 19:53:27'),
	(1190, 'ETL Carga Planilla Ejecutado', '2023-01-23 19:58:28'),
	(1191, 'ETL Carga Planilla Ejecutado', '2023-01-23 20:03:28'),
	(1192, 'ETL Carga Planilla Ejecutado', '2023-01-23 20:08:28'),
	(1193, 'ETL Carga Planilla Ejecutado', '2023-01-23 20:13:28'),
	(1194, 'ETL Carga Planilla Ejecutado', '2023-01-23 20:18:28'),
	(1195, 'ETL Carga Planilla Ejecutado', '2023-01-23 20:23:26'),
	(1196, 'ETL Carga Planilla Ejecutado', '2023-01-23 20:28:27'),
	(1197, 'ETL Carga Planilla Ejecutado', '2023-01-23 20:33:27'),
	(1198, 'ETL Carga Planilla Ejecutado', '2023-01-23 20:38:25'),
	(1199, 'ETL Carga Planilla Ejecutado', '2023-01-23 20:43:25'),
	(1200, 'ETL Carga Planilla Ejecutado', '2023-01-23 20:48:27'),
	(1201, 'ETL Carga Planilla Ejecutado', '2023-01-23 20:53:24'),
	(1202, 'ETL Carga Planilla Ejecutado', '2023-01-23 20:58:25'),
	(1203, 'ETL Carga Planilla Ejecutado', '2023-01-23 21:03:24'),
	(1204, 'ETL Carga Planilla Ejecutado', '2023-01-23 21:08:24'),
	(1205, 'ETL Carga Planilla Ejecutado', '2023-01-23 21:13:25'),
	(1206, 'ETL Carga Planilla Ejecutado', '2023-01-23 21:18:25'),
	(1207, 'ETL Carga Planilla Ejecutado', '2023-01-23 21:23:22'),
	(1208, 'ETL Carga Planilla Ejecutado', '2023-01-23 21:28:23'),
	(1209, 'ETL Carga Planilla Ejecutado', '2023-01-23 21:33:24'),
	(1210, 'ETL Carga Planilla Ejecutado', '2023-01-23 21:38:22'),
	(1211, 'ETL Carga Planilla Ejecutado', '2023-01-23 21:43:23'),
	(1212, 'ETL Carga Planilla Ejecutado', '2023-01-23 21:48:23'),
	(1213, 'ETL Carga Planilla Ejecutado', '2023-01-23 21:53:21'),
	(1214, 'ETL Carga Planilla Ejecutado', '2023-01-23 21:58:22'),
	(1215, 'ETL Carga Planilla Ejecutado', '2023-01-23 22:03:22'),
	(1216, 'ETL Carga Planilla Ejecutado', '2023-01-23 22:08:20'),
	(1217, 'ETL Carga Planilla Ejecutado', '2023-01-23 22:14:22'),
	(1218, 'ETL Carga Planilla Ejecutado', '2023-01-23 22:19:23'),
	(1219, 'ETL Carga Planilla Ejecutado', '2023-01-23 22:24:24'),
	(1220, 'ETL Carga Planilla Ejecutado', '2023-01-23 22:29:23'),
	(1221, 'ETL Carga Planilla Ejecutado', '2023-01-23 22:34:21'),
	(1222, 'ETL Carga Planilla Ejecutado', '2023-01-23 22:39:23'),
	(1223, 'ETL Carga Planilla Ejecutado', '2023-01-23 22:44:22'),
	(1224, 'ETL Carga Planilla Ejecutado', '2023-01-23 22:49:22'),
	(1225, 'ETL Carga Planilla Ejecutado', '2023-01-23 22:54:22'),
	(1226, 'ETL Carga Planilla Ejecutado', '2023-01-23 22:59:22'),
	(1227, 'ETL Carga Planilla Ejecutado', '2023-01-23 23:04:20'),
	(1228, 'ETL Carga Planilla Ejecutado', '2023-01-23 23:09:22'),
	(1229, 'ETL Carga Planilla Ejecutado', '2023-01-23 23:14:21'),
	(1230, 'ETL Carga Planilla Ejecutado', '2023-01-23 23:19:20'),
	(1231, 'ETL Carga Planilla Ejecutado', '2023-01-23 23:24:21'),
	(1232, 'ETL Carga Planilla Ejecutado', '2023-01-23 23:29:21'),
	(1233, 'ETL Carga Planilla Ejecutado', '2023-01-23 23:34:20'),
	(1234, 'ETL Carga Planilla Ejecutado', '2023-01-23 23:39:19'),
	(1235, 'ETL Carga Planilla Ejecutado', '2023-01-23 23:44:21'),
	(1236, 'ETL Carga Planilla Ejecutado', '2023-01-23 23:49:20'),
	(1237, 'ETL Carga Planilla Ejecutado', '2023-01-23 23:54:20'),
	(1238, 'ETL Carga Planilla Ejecutado', '2023-01-23 23:59:19'),
	(1239, 'ETL Carga Planilla Ejecutado', '2023-01-24 00:04:19'),
	(1240, 'ETL Carga Planilla Ejecutado', '2023-01-24 00:09:19'),
	(1241, 'ETL Carga Planilla Ejecutado', '2023-01-24 00:14:19'),
	(1242, 'ETL Carga Planilla Ejecutado', '2023-01-24 00:19:18'),
	(1243, 'ETL Carga Planilla Ejecutado', '2023-01-24 00:24:18'),
	(1244, 'ETL Carga Planilla Ejecutado', '2023-01-24 00:29:17'),
	(1245, 'ETL Carga Planilla Ejecutado', '2023-01-24 00:34:17'),
	(1246, 'ETL Carga Planilla Ejecutado', '2023-01-24 00:39:17'),
	(1247, 'ETL Carga Planilla Ejecutado', '2023-01-24 00:44:18'),
	(1248, 'ETL Carga Planilla Ejecutado', '2023-01-24 00:49:18'),
	(1249, 'ETL Carga Planilla Ejecutado', '2023-01-24 00:54:16'),
	(1250, 'ETL Carga Planilla Ejecutado', '2023-01-24 00:59:16'),
	(1251, 'ETL Carga Planilla Ejecutado', '2023-01-24 01:04:15'),
	(1252, 'ETL Carga Planilla Ejecutado', '2023-01-24 01:09:16'),
	(1253, 'ETL Carga Planilla Ejecutado', '2023-01-24 01:14:16'),
	(1254, 'ETL Carga Planilla Ejecutado', '2023-01-24 01:19:16'),
	(1255, 'ETL Carga Planilla Ejecutado', '2023-01-24 01:24:13'),
	(1256, 'ETL Carga Planilla Ejecutado', '2023-01-24 01:29:14'),
	(1257, 'ETL Carga Planilla Ejecutado', '2023-01-24 01:34:15'),
	(1258, 'ETL Carga Planilla Ejecutado', '2023-01-24 01:39:14'),
	(1259, 'ETL Carga Planilla Ejecutado', '2023-01-24 01:44:14'),
	(1260, 'ETL Carga Planilla Ejecutado', '2023-01-24 01:49:15'),
	(1261, 'ETL Carga Planilla Ejecutado', '2023-01-24 01:54:14'),
	(1262, 'ETL Carga Planilla Ejecutado', '2023-01-24 01:59:13'),
	(1263, 'ETL Carga Planilla Ejecutado', '2023-01-24 02:04:13'),
	(1264, 'ETL Carga Planilla Ejecutado', '2023-01-24 02:09:14'),
	(1265, 'ETL Carga Planilla Ejecutado', '2023-01-24 02:14:15'),
	(1266, 'ETL Carga Planilla Ejecutado', '2023-01-24 02:19:15'),
	(1267, 'ETL Carga Planilla Ejecutado', '2023-01-24 02:24:14'),
	(1268, 'ETL Carga Planilla Ejecutado', '2023-01-24 02:29:14'),
	(1269, 'ETL Carga Planilla Ejecutado', '2023-01-24 02:34:13'),
	(1270, 'ETL Carga Planilla Ejecutado', '2023-01-24 02:39:13'),
	(1271, 'ETL Carga Planilla Ejecutado', '2023-01-24 02:44:14'),
	(1272, 'ETL Carga Planilla Ejecutado', '2023-01-24 02:49:13'),
	(1273, 'ETL Carga Planilla Ejecutado', '2023-01-24 02:54:11'),
	(1274, 'ETL Carga Planilla Ejecutado', '2023-01-24 02:59:12'),
	(1275, 'ETL Carga Planilla Ejecutado', '2023-01-24 03:04:12'),
	(1276, 'ETL Carga Planilla Ejecutado', '2023-01-24 03:09:11'),
	(1277, 'ETL Carga Planilla Ejecutado', '2023-01-24 03:14:12'),
	(1278, 'ETL Carga Planilla Ejecutado', '2023-01-24 03:19:12'),
	(1279, 'ETL Carga Planilla Ejecutado', '2023-01-24 03:24:09'),
	(1280, 'ETL Carga Planilla Ejecutado', '2023-01-24 03:29:11'),
	(1281, 'ETL Carga Planilla Ejecutado', '2023-01-24 03:34:10'),
	(1282, 'ETL Carga Planilla Ejecutado', '2023-01-24 03:39:08'),
	(1283, 'ETL Carga Planilla Ejecutado', '2023-01-24 03:44:09'),
	(1284, 'ETL Carga Planilla Ejecutado', '2023-01-24 03:49:10'),
	(1285, 'ETL Carga Planilla Ejecutado', '2023-01-24 03:54:07'),
	(1286, 'ETL Carga Planilla Ejecutado', '2023-01-24 03:59:07'),
	(1287, 'ETL Carga Planilla Ejecutado', '2023-01-24 04:04:07'),
	(1288, 'ETL Carga Planilla Ejecutado', '2023-01-24 04:09:07'),
	(1289, 'ETL Carga Planilla Ejecutado', '2023-01-24 04:14:09'),
	(1290, 'ETL Carga Planilla Ejecutado', '2023-01-24 04:19:08'),
	(1291, 'ETL Carga Planilla Ejecutado', '2023-01-24 04:24:07'),
	(1292, 'ETL Carga Planilla Ejecutado', '2023-01-24 04:29:06'),
	(1293, 'ETL Carga Planilla Ejecutado', '2023-01-24 04:34:07'),
	(1294, 'ETL Carga Planilla Ejecutado', '2023-01-24 04:39:05'),
	(1295, 'ETL Carga Planilla Ejecutado', '2023-01-24 04:44:06'),
	(1296, 'ETL Carga Planilla Ejecutado', '2023-01-24 04:49:07'),
	(1297, 'ETL Carga Planilla Ejecutado', '2023-01-24 04:54:06'),
	(1298, 'ETL Carga Planilla Ejecutado', '2023-01-24 04:59:05'),
	(1299, 'ETL Carga Planilla Ejecutado', '2023-01-24 05:04:06'),
	(1300, 'ETL Carga Planilla Ejecutado', '2023-01-24 05:09:03'),
	(1301, 'ETL Carga Planilla Ejecutado', '2023-01-24 05:14:04'),
	(1302, 'ETL Carga Planilla Ejecutado', '2023-01-24 05:19:05'),
	(1303, 'ETL Carga Planilla Ejecutado', '2023-01-24 05:24:05'),
	(1304, 'ETL Carga Planilla Ejecutado', '2023-01-24 05:29:04'),
	(1305, 'ETL Carga Planilla Ejecutado', '2023-01-24 05:39:03'),
	(1306, 'ETL Carga Planilla Ejecutado', '2023-01-24 05:44:04'),
	(1307, 'ETL Carga Planilla Ejecutado', '2023-01-24 05:49:04'),
	(1308, 'ETL Carga Planilla Ejecutado', '2023-01-24 05:54:02'),
	(1309, 'ETL Carga Planilla Ejecutado', '2023-01-24 05:59:03'),
	(1310, 'ETL Carga Planilla Ejecutado', '2023-01-24 06:04:02'),
	(1311, 'ETL Carga Planilla Ejecutado', '2023-01-24 06:09:02'),
	(1312, 'ETL Carga Planilla Ejecutado', '2023-01-24 06:14:02'),
	(1313, 'ETL Carga Planilla Ejecutado', '2023-01-24 06:19:02'),
	(1314, 'ETL Carga Planilla Ejecutado', '2023-01-24 06:24:00'),
	(1315, 'ETL Carga Planilla Ejecutado', '2023-01-24 06:29:01'),
	(1316, 'ETL Carga Planilla Ejecutado', '2023-01-24 06:33:59'),
	(1317, 'ETL Carga Planilla Ejecutado', '2023-01-24 06:39:00'),
	(1318, 'ETL Carga Planilla Ejecutado', '2023-01-24 06:43:59'),
	(1319, 'ETL Carga Planilla Ejecutado', '2023-01-24 06:49:00'),
	(1320, 'ETL Carga Planilla Ejecutado', '2023-01-24 06:53:57'),
	(1321, 'ETL Carga Planilla Ejecutado', '2023-01-24 06:58:59'),
	(1322, 'ETL Carga Planilla Ejecutado', '2023-01-24 07:03:56'),
	(1323, 'ETL Carga Planilla Ejecutado', '2023-01-24 07:13:58'),
	(1324, 'ETL Carga Planilla Ejecutado', '2023-01-24 07:18:59'),
	(1325, 'ETL Carga Planilla Ejecutado', '2023-01-24 07:23:57'),
	(1326, 'ETL Carga Planilla Ejecutado', '2023-01-24 07:28:57'),
	(1327, 'ETL Carga Planilla Ejecutado', '2023-01-24 07:33:58'),
	(1328, 'ETL Carga Planilla Ejecutado', '2023-01-24 07:38:55'),
	(1329, 'ETL Carga Planilla Ejecutado', '2023-01-24 07:43:57'),
	(1330, 'ETL Carga Planilla Ejecutado', '2023-01-24 07:48:56'),
	(1331, 'ETL Carga Planilla Ejecutado', '2023-01-24 07:53:57'),
	(1332, 'ETL Carga Planilla Ejecutado', '2023-01-24 07:58:55'),
	(1333, 'ETL Carga Planilla Ejecutado', '2023-01-24 08:03:55'),
	(1334, 'ETL Carga Planilla Ejecutado', '2023-01-24 08:08:56'),
	(1335, 'ETL Carga Planilla Ejecutado', '2023-01-24 08:13:55'),
	(1336, 'ETL Carga Planilla Ejecutado', '2023-01-24 08:18:56'),
	(1337, 'ETL Carga Planilla Ejecutado', '2023-01-24 08:23:53'),
	(1338, 'ETL Carga Planilla Ejecutado', '2023-01-24 08:28:55'),
	(1339, 'ETL Carga Planilla Ejecutado', '2023-01-24 08:33:55'),
	(1340, 'ETL Carga Planilla Ejecutado', '2023-01-24 08:38:54'),
	(1341, 'ETL Carga Planilla Ejecutado', '2023-01-24 08:43:54'),
	(1342, 'ETL Carga Planilla Ejecutado', '2023-01-24 08:48:55'),
	(1343, 'ETL Carga Planilla Ejecutado', '2023-01-24 08:53:53'),
	(1344, 'ETL Carga Planilla Ejecutado', '2023-01-24 08:58:54'),
	(1345, 'ETL Carga Planilla Ejecutado', '2023-01-24 09:03:51'),
	(1346, 'ETL Carga Planilla Ejecutado', '2023-01-24 09:08:53'),
	(1347, 'ETL Carga Planilla Ejecutado', '2023-01-24 09:13:52'),
	(1348, 'ETL Carga Planilla Ejecutado', '2023-01-24 09:18:53'),
	(1349, 'ETL Carga Planilla Ejecutado', '2023-01-24 09:23:51'),
	(1350, 'ETL Carga Planilla Ejecutado', '2023-01-24 09:28:51'),
	(1351, 'ETL Carga Planilla Ejecutado', '2023-01-24 09:33:51'),
	(1352, 'ETL Carga Planilla Ejecutado', '2023-01-24 09:38:51'),
	(1353, 'ETL Carga Planilla Ejecutado', '2023-01-24 09:43:50'),
	(1354, 'ETL Carga Planilla Ejecutado', '2023-01-24 09:48:51'),
	(1355, 'ETL Carga Planilla Ejecutado', '2023-01-24 09:53:50'),
	(1356, 'ETL Carga Planilla Ejecutado', '2023-01-24 09:58:50'),
	(1357, 'ETL Carga Planilla Ejecutado', '2023-01-24 10:03:50'),
	(1358, 'ETL Carga Planilla Ejecutado', '2023-01-24 10:08:49'),
	(1359, 'ETL Carga Planilla Ejecutado', '2023-01-24 10:13:51'),
	(1360, 'ETL Carga Planilla Ejecutado', '2023-01-24 10:18:48'),
	(1361, 'ETL Carga Planilla Ejecutado', '2023-01-24 10:23:48'),
	(1362, 'ETL Carga Planilla Ejecutado', '2023-01-24 10:28:47'),
	(1363, 'ETL Carga Planilla Ejecutado', '2023-01-24 10:33:49'),
	(1364, 'ETL Carga Planilla Ejecutado', '2023-01-24 10:38:49'),
	(1365, 'ETL Carga Planilla Ejecutado', '2023-01-24 10:43:49'),
	(1366, 'ETL Carga Planilla Ejecutado', '2023-01-24 10:44:28'),
	(1367, 'ETL Carga Planilla Ejecutado', '2023-01-24 10:48:49'),
	(1368, 'ETL Carga Planilla Ejecutado', '2023-01-24 10:53:48'),
	(1369, 'ETL Carga Planilla Ejecutado', '2023-01-24 10:58:48'),
	(1370, 'ETL Carga Planilla Ejecutado', '2023-01-24 11:03:47'),
	(1371, 'ETL Carga Planilla Ejecutado', '2023-01-24 11:08:47'),
	(1372, 'ETL Carga Planilla Ejecutado', '2023-01-24 11:13:47'),
	(1373, 'ETL Carga Planilla Ejecutado', '2023-01-24 11:18:47'),
	(1374, 'ETL Carga Planilla Ejecutado', '2023-01-24 11:23:47'),
	(1375, 'ETL Carga Planilla Ejecutado', '2023-01-24 11:28:45'),
	(1376, 'ETL Carga Planilla Ejecutado', '2023-01-24 11:33:47'),
	(1377, 'ETL Carga Planilla Ejecutado', '2023-01-24 11:38:47'),
	(1378, 'ETL Carga Planilla Ejecutado', '2023-01-24 11:43:47'),
	(1379, 'ETL Carga Planilla Ejecutado', '2023-01-24 11:48:46'),
	(1380, 'ETL Carga Planilla Ejecutado', '2023-01-24 11:53:46'),
	(1381, 'ETL Carga Planilla Ejecutado', '2023-01-24 11:58:46'),
	(1382, 'ETL Carga Planilla Ejecutado', '2023-01-24 12:03:45'),
	(1383, 'ETL Carga Planilla Ejecutado', '2023-01-24 12:08:45'),
	(1384, 'ETL Carga Planilla Ejecutado', '2023-01-24 12:13:45'),
	(1385, 'ETL Carga Planilla Ejecutado', '2023-01-24 12:18:45'),
	(1386, 'ETL Carga Planilla Ejecutado', '2023-01-24 12:23:44'),
	(1387, 'ETL Carga Planilla Ejecutado', '2023-01-24 12:28:44'),
	(1388, 'ETL Carga Planilla Ejecutado', '2023-01-24 12:33:43'),
	(1389, 'ETL Carga Planilla Ejecutado', '2023-01-24 12:38:43'),
	(1390, 'ETL Carga Planilla Ejecutado', '2023-01-24 12:43:44'),
	(1391, 'ETL Carga Planilla Ejecutado', '2023-01-24 12:53:43'),
	(1392, 'ETL Carga Planilla Ejecutado', '2023-01-24 12:58:43'),
	(1393, 'ETL Carga Planilla Ejecutado', '2023-01-24 13:03:43'),
	(1394, 'ETL Carga Planilla Ejecutado', '2023-01-24 13:08:43'),
	(1395, 'ETL Carga Planilla Ejecutado', '2023-01-24 13:13:43'),
	(1396, 'ETL Carga Planilla Ejecutado', '2023-01-24 13:18:42'),
	(1397, 'ETL Carga Planilla Ejecutado', '2023-01-24 13:23:42'),
	(1398, 'ETL Carga Planilla Ejecutado', '2023-01-24 13:28:42'),
	(1399, 'ETL Carga Planilla Ejecutado', '2023-01-24 13:33:41'),
	(1400, 'ETL Carga Planilla Ejecutado', '2023-01-24 13:38:42'),
	(1401, 'ETL Carga Planilla Ejecutado', '2023-01-24 13:43:40'),
	(1402, 'ETL Carga Planilla Ejecutado', '2023-01-24 13:48:41'),
	(1403, 'ETL Carga Planilla Ejecutado', '2023-01-24 13:53:41'),
	(1404, 'ETL Carga Planilla Ejecutado', '2023-01-24 13:58:40'),
	(1405, 'ETL Carga Planilla Ejecutado', '2023-01-24 14:03:40'),
	(1406, 'ETL Carga Planilla Ejecutado', '2023-01-24 14:08:40'),
	(1407, 'ETL Carga Planilla Ejecutado', '2023-01-24 14:13:40'),
	(1408, 'ETL Carga Planilla Ejecutado', '2023-01-24 14:18:40'),
	(1409, 'ETL Carga Planilla Ejecutado', '2023-01-24 14:23:39'),
	(1410, 'ETL Carga Planilla Ejecutado', '2023-01-24 14:28:38'),
	(1411, 'ETL Carga Planilla Ejecutado', '2023-01-24 14:33:38'),
	(1412, 'ETL Carga Planilla Ejecutado', '2023-01-24 14:38:39'),
	(1413, 'ETL Carga Planilla Ejecutado', '2023-01-24 14:43:38'),
	(1414, 'ETL Carga Planilla Ejecutado', '2023-01-24 14:48:37'),
	(1415, 'ETL Carga Planilla Ejecutado', '2023-01-24 14:53:38'),
	(1416, 'ETL Carga Planilla Ejecutado', '2023-01-24 14:58:37'),
	(1417, 'ETL Carga Planilla Ejecutado', '2023-01-24 15:03:38');

-- Volcando estructura para tabla planilla.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- Volcando datos para la tabla planilla.migrations: ~3 rows (aproximadamente)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_100000_create_password_resets_table', 1),
	(2, '2019_08_19_000000_create_failed_jobs_table', 1),
	(3, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- Volcando estructura para tabla planilla.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- Volcando datos para la tabla planilla.password_resets: ~0 rows (aproximadamente)

-- Volcando estructura para tabla planilla.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_spanish2_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- Volcando datos para la tabla planilla.personal_access_tokens: ~107 rows (aproximadamente)
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
	(5, 'App\\Models\\User', 1, 'auth_token', '343d1738fd9ff7b0cc0a1a8f9cf43ef67b574184af7d28eff732887a4be60b31', '["*"]', '2023-01-05 20:56:17', '2023-01-05 23:55:24', '2023-01-05 20:55:24', '2023-01-05 20:56:17'),
	(6, 'App\\Models\\User', 1, 'auth_token', '0af47a7e22d6fee451f9886217cf61b553210fb305b4a41a7c3c5a01c5df0a81', '["*"]', '2023-01-05 22:10:39', '2023-01-06 00:19:26', '2023-01-05 21:19:26', '2023-01-05 22:10:39'),
	(7, 'App\\Models\\User', 1, 'auth_token', '7d91ade14599f1b537402064443e34787a419f3228e0dbd7896a40efa9e650a5', '["*"]', '2023-01-06 20:17:49', '2023-01-06 20:26:19', '2023-01-06 17:26:19', '2023-01-06 20:17:49'),
	(9, 'App\\Models\\User', 1, 'auth_token', '4130647540f729baf259d3c8ebe98d0cddcb896e5388621f997257b0c088e5be', '["*"]', '2023-01-06 21:42:59', '2023-01-06 23:56:52', '2023-01-06 20:56:52', '2023-01-06 21:42:59'),
	(10, 'App\\Models\\User', 1, 'auth_token', '559a67be85da46bd7794a7aba13fd911e75c56b3b0234bd2d94b41f944798911', '["*"]', '2023-01-07 17:29:34', '2023-01-07 20:06:02', '2023-01-07 17:06:02', '2023-01-07 17:29:34'),
	(11, 'App\\Models\\User', 1, 'auth_token', 'fba1bee4a962000e2cf70cf5d5f515253790e55faeef7b9664e508dcee6ab922', '["*"]', '2023-01-09 17:17:46', '2023-01-09 20:17:17', '2023-01-09 17:17:17', '2023-01-09 17:17:46'),
	(13, 'App\\Models\\User', 1, 'auth_token', 'f35e94a3a6ca6ac1d22f81bb970665adb96419f9a43c850e049adc67c0e1c131', '["*"]', '2023-01-09 21:23:00', '2023-01-10 00:22:53', '2023-01-09 21:22:53', '2023-01-09 21:23:00'),
	(16, 'App\\Models\\User', 1, 'auth_token', '31606e1ec04884aaffa5bbd8d1cca32e422778eb63ab21dc3ac169eb2a09a0fd', '["*"]', '2023-01-10 15:53:29', '2023-01-10 18:12:25', '2023-01-10 15:12:25', '2023-01-10 15:53:29'),
	(18, 'App\\Models\\User', 1, 'auth_token', 'a9b39953db3d29fb487f5bfd1ae5db7f33bb30aa4b62fcc4f22f1e4a094b2dc9', '["*"]', '2023-01-10 16:08:07', '2023-01-10 19:07:47', '2023-01-10 16:07:47', '2023-01-10 16:08:07'),
	(19, 'App\\Models\\User', 1, 'auth_token', 'eb620b59ca3e146987d2b64a38df52769f2df83a58efb592868ceedef1ec4e5c', '["*"]', '2023-01-10 23:21:02', '2023-01-11 00:47:20', '2023-01-10 21:47:20', '2023-01-10 23:21:02'),
	(20, 'App\\Models\\User', 1, 'auth_token', '620bbddc3a24f59df35158c0367ea69f269ad26abb3a7fd027f64e66ef7c42fd', '["*"]', '2023-01-11 01:11:31', '2023-01-11 04:11:22', '2023-01-11 01:11:22', '2023-01-11 01:11:31'),
	(22, 'App\\Models\\User', 1, 'auth_token', 'b36de499aeb5b7e7bcad74dc49c380a9dfdfe72fbfe434d63f840e55baad5616', '["*"]', '2023-01-12 00:58:35', '2023-01-12 02:27:48', '2023-01-11 23:27:48', '2023-01-12 00:58:35'),
	(23, 'App\\Models\\User', 1, 'auth_token', '794666e171c3476c2f98cb70060c27c8598db61551b59fd62d1c2aeea3ecb50f', '["*"]', '2023-01-12 16:44:38', '2023-01-12 17:07:39', '2023-01-12 14:07:39', '2023-01-12 16:44:38'),
	(25, 'App\\Models\\User', 1, 'auth_token', '7bb369495ee44a3d5732da8f26453d3e93bf2f0f5389533c4e6979d780ef12d2', '["*"]', '2023-01-12 16:10:58', '2023-01-12 19:10:54', '2023-01-12 16:10:54', '2023-01-12 16:10:58'),
	(26, 'App\\Models\\User', 1, 'auth_token', '04c48315ed221cc967c6bd9c071a25945be30bf2f75a5b18c03eea6c7f7946ad', '["*"]', '2023-01-12 17:28:53', '2023-01-12 20:26:37', '2023-01-12 17:26:37', '2023-01-12 17:28:53'),
	(29, 'App\\Models\\User', 1, 'auth_token', '1641313a6286f890b946556041c4006b1a5616cc2284fbbb71f5b726c1bba90b', '["*"]', '2023-01-12 22:50:22', '2023-01-13 01:28:32', '2023-01-12 22:28:32', '2023-01-12 22:50:22'),
	(30, 'App\\Models\\User', 1, 'auth_token', '82a377336b7913acf28a1e7708a444f144bfafdd20c0f0a9e0621a9c85203c58', '["*"]', '2023-01-13 23:25:04', '2023-01-14 01:33:26', '2023-01-13 22:33:26', '2023-01-13 23:25:04'),
	(32, 'App\\Models\\User', 1, 'auth_token', 'f8612b93c78c3f8cd6c5d5603746eab3a0c5ffbb1d90c50c8c02c37263640b8a', '["*"]', '2023-01-14 16:19:15', '2023-01-14 17:34:44', '2023-01-14 14:34:44', '2023-01-14 16:19:15'),
	(34, 'App\\Models\\User', 1, 'auth_token', '3d7d9ef69669c59c634652fdeba26c41c7553b780e2eb74dbf469a8a4adeb123', '["*"]', '2023-01-16 04:15:15', '2023-01-16 06:38:11', '2023-01-16 03:38:11', '2023-01-16 04:15:15'),
	(35, 'App\\Models\\User', 1, 'auth_token', '269d1cbf98d539b44dce7197c67686a0409550ac2e2618e908a9d81db00a22a6', '["*"]', '2023-01-16 13:49:02', '2023-01-16 16:48:58', '2023-01-16 13:48:58', '2023-01-16 13:49:02'),
	(36, 'App\\Models\\User', 1, 'auth_token', '3319071fe8775c32ff3c074f045ca48473ce3892890e7956aebdf8c230ecabb6', '["*"]', '2023-01-16 13:54:05', '2023-01-16 16:53:26', '2023-01-16 13:53:26', '2023-01-16 13:54:05'),
	(37, 'App\\Models\\User', 1, 'auth_token', '44b840360ec0a04e90dd0240f9490987dccdda07cb1ed25e9d0fd7b0b820e4ff', '["*"]', '2023-01-16 20:07:47', '2023-01-16 20:28:35', '2023-01-16 17:28:35', '2023-01-16 20:07:47'),
	(38, 'App\\Models\\User', 1, 'auth_token', '84532da028567b7d1466de22ee9f38c30688e50d7511ebb4ee997058cd5e8513', '["*"]', '2023-01-16 21:56:50', '2023-01-16 23:24:58', '2023-01-16 20:24:58', '2023-01-16 21:56:50'),
	(39, 'App\\Models\\User', 1, 'auth_token', '61ee0708421748d3071aabd28e2ff168efb1dd101820fb4f08c1312a23e73958', '["*"]', '2023-01-16 23:08:08', '2023-01-17 00:22:44', '2023-01-16 21:22:44', '2023-01-16 23:08:08'),
	(40, 'App\\Models\\User', 1, 'auth_token', 'fa79eed38e5f1ec11a1a0577ea40d2902f3975c8fdc1aea9c0af36f22c36f63f', '["*"]', '2023-01-17 17:47:51', '2023-01-17 19:44:57', '2023-01-17 16:44:57', '2023-01-17 17:47:51'),
	(41, 'App\\Models\\User', 1, 'auth_token', '76e89c961aeda8b59404f05943d9a69b0891713f2c263fbc28519df322ce0fca', '["*"]', '2023-01-17 22:52:59', '2023-01-18 00:20:44', '2023-01-17 21:20:44', '2023-01-17 22:52:59'),
	(42, 'App\\Models\\User', 1, 'auth_token', 'c6d5f2c654463c7ca380cfd0eeb012197903247742a9c2412b8d877bd77a25a6', '["*"]', '2023-01-17 22:42:15', '2023-01-18 01:40:42', '2023-01-17 22:40:42', '2023-01-17 22:42:15'),
	(43, 'App\\Models\\User', 1, 'auth_token', 'cf5fef67a2572b7600c908c3861d4bb7687f41346f09c590d919cc10f0452326', '["*"]', '2023-01-18 17:58:16', '2023-01-18 18:44:19', '2023-01-18 15:44:19', '2023-01-18 17:58:16'),
	(44, 'App\\Models\\User', 1, 'auth_token', '2eeaff52394c4918f327df586b26e8d8dac9af7a2bab722d1a8083932a388cc2', '["*"]', '2023-01-18 20:52:22', '2023-01-18 21:08:09', '2023-01-18 18:08:09', '2023-01-18 20:52:22'),
	(45, 'App\\Models\\User', 1, 'auth_token', '59817e773a6fede7e7a2d81eceaffff3c8afbe07000e8b52d4873a31f7c66527', '["*"]', '2023-01-18 22:38:11', '2023-01-18 22:51:21', '2023-01-18 19:51:21', '2023-01-18 22:38:11'),
	(46, 'App\\Models\\User', 1, 'auth_token', 'b97fc0252b13e1a2072f3c84c2ffe7b3e64f0b99958d7c6ff3d02d731b071d94', '["*"]', '2023-01-18 23:46:53', '2023-01-19 02:46:47', '2023-01-18 23:46:47', '2023-01-18 23:46:53'),
	(47, 'App\\Models\\User', 1, 'auth_token', '40d49fca975c0e0f893a41772466366876f4671bf4467640bdd6e2a474eb0572', '["*"]', '2023-01-19 14:31:17', '2023-01-19 17:31:07', '2023-01-19 14:31:07', '2023-01-19 14:31:17'),
	(48, 'App\\Models\\User', 1, 'auth_token', '0204945680e40b0b2d190226185a77b68a66cbb510ae2d0bc717cb6fc2e30535', '["*"]', '2023-01-19 16:05:38', '2023-01-19 18:32:35', '2023-01-19 15:32:35', '2023-01-19 16:05:38'),
	(49, 'App\\Models\\User', 1, 'auth_token', '9d3387c4a94b2388e4b599faf702c14fe744e293fac9f37f2895d872466eae26', '["*"]', '2023-01-19 18:04:30', '2023-01-19 20:58:36', '2023-01-19 17:58:36', '2023-01-19 18:04:30'),
	(50, 'App\\Models\\User', 1, 'auth_token', 'e10d5b7d4d1ef98bb1c22c120be2bb81403c8cb8a22b9434bb79ffd9c9373cb3', '["*"]', '2023-01-19 21:57:50', '2023-01-20 00:28:27', '2023-01-19 21:28:27', '2023-01-19 21:57:50'),
	(51, 'App\\Models\\User', 1, 'auth_token', 'f0b3246665558baaeef5f5181a3382b2ccace2b15f06204e98de5eb5f73e4b39', '["*"]', '2023-01-20 15:18:32', '2023-01-20 18:18:28', '2023-01-20 15:18:28', '2023-01-20 15:18:32'),
	(52, 'App\\Models\\User', 1, 'auth_token', '534dca2a34d57ffcba782e7f13d5b481b477a57cb59331b73e89b6a90536d780', '["*"]', '2023-01-20 20:39:03', '2023-01-20 21:21:01', '2023-01-20 18:21:01', '2023-01-20 20:39:03'),
	(53, 'App\\Models\\User', 1, 'auth_token', '97e901b620d0dc6ed1ffc03bcfc48afdfa52970b87afa8deefbefab2cc7b104c', '["*"]', '2023-01-20 22:00:13', '2023-01-21 00:50:58', '2023-01-20 21:50:58', '2023-01-20 22:00:13'),
	(54, 'App\\Models\\User', 1, 'auth_token', '22127b2a565bf5f70e0ef0ab1c7cb90a1c2d2d59380690fe8dd098920ee7568d', '["*"]', '2023-01-23 16:11:49', '2023-01-23 18:31:58', '2023-01-23 15:31:58', '2023-01-23 16:11:49'),
	(55, 'App\\Models\\User', 1, 'auth_token', '0abc46914a077417c7e73465020801bdf84b4a3c9436f7581028b61cf0e012c4', '["*"]', '2023-02-01 16:12:46', '2023-02-01 19:12:25', '2023-02-01 16:12:25', '2023-02-01 16:12:46'),
	(56, 'App\\Models\\User', 1, 'auth_token', '28891c31a4341a3174c67ac85c02245de7c59889e530931c55c0ddb6a1203c39', '["*"]', '2023-02-20 16:14:37', '2023-02-20 19:13:43', '2023-02-20 16:13:43', '2023-02-20 16:14:37'),
	(57, 'App\\Models\\User', 1, 'auth_token', '3ba30d06603991d9b197fd9e502c41d221822f5d603b6d3c1f29a56631df7c92', '["*"]', '2023-03-01 16:15:33', '2023-03-01 19:15:15', '2023-03-01 16:15:15', '2023-03-01 16:15:33'),
	(58, 'App\\Models\\User', 1, 'auth_token', 'f03c9571df11ebbdf33ac059ebf9b841b59426f5b95f6e27858f78484b2614fc', '["*"]', '2023-03-20 16:16:26', '2023-03-20 19:16:01', '2023-03-20 16:16:01', '2023-03-20 16:16:26'),
	(59, 'App\\Models\\User', 1, 'auth_token', 'f6e38c5d3001bcac8a339d988733c66a2656a850adc1dd1a0ddbc221ba5eddf1', '["*"]', '2023-04-01 16:17:11', '2023-04-01 19:17:00', '2023-04-01 16:17:00', '2023-04-01 16:17:11'),
	(60, 'App\\Models\\User', 1, 'auth_token', 'fe3fae2e3ad01ae4e501bf639408ffd10e64250cc16efbd64b17a124592e6de5', '["*"]', '2023-04-20 16:18:23', '2023-04-20 19:17:35', '2023-04-20 16:17:35', '2023-04-20 16:18:23'),
	(61, 'App\\Models\\User', 1, 'auth_token', '4cd56526a9764d66a8390970bc779887bf21ffaa90503e73998686b3d03b68eb', '["*"]', '2023-05-01 16:19:27', '2023-05-01 19:19:15', '2023-05-01 16:19:15', '2023-05-01 16:19:27'),
	(62, 'App\\Models\\User', 1, 'auth_token', '27b44a4da29ed22b13f36f26e26afe734efa3d0a8e089eb686b691d2ed11bb93', '["*"]', '2023-05-22 16:19:58', '2023-05-22 19:19:41', '2023-05-22 16:19:41', '2023-05-22 16:19:58'),
	(63, 'App\\Models\\User', 1, 'auth_token', '0d2df94b93fd69ec828b972e216123cba28fd5a47f82e11e065ae8212159ebaf', '["*"]', '2023-06-01 16:20:32', '2023-06-01 19:20:21', '2023-06-01 16:20:21', '2023-06-01 16:20:32'),
	(64, 'App\\Models\\User', 1, 'auth_token', '6ffd5d0cc0a2c621f11089f141265833bb3f29ecaa0ad14c3e158aee30ae5d0b', '["*"]', '2023-06-20 16:21:06', '2023-06-20 19:20:45', '2023-06-20 16:20:45', '2023-06-20 16:21:06'),
	(65, 'App\\Models\\User', 1, 'auth_token', 'ab9f2e7cb700628dfc95913506e80399ffbb26fa0f2a09a5b06f6f0d6bf3ce3b', '["*"]', '2023-07-01 16:21:41', '2023-07-01 19:21:30', '2023-07-01 16:21:30', '2023-07-01 16:21:41'),
	(66, 'App\\Models\\User', 1, 'auth_token', 'b049c22131c1faf7c3e09afc5980b59bdb9031419c35f41b1b71fe764a4480b1', '["*"]', '2023-07-20 16:22:47', '2023-07-20 19:22:28', '2023-07-20 16:22:28', '2023-07-20 16:22:47'),
	(67, 'App\\Models\\User', 1, 'auth_token', 'c75ab08c1a04345d0ef33f13a77dc4d7a718673eb8fff9dba1157c6737617d03', '["*"]', '2023-08-01 16:23:14', '2023-08-01 19:23:03', '2023-08-01 16:23:03', '2023-08-01 16:23:14'),
	(68, 'App\\Models\\User', 1, 'auth_token', '111ebb1738371b2b560cae3032d68059dfef34d82566abf25038167f2e3eba9f', '["*"]', '2023-08-21 16:23:42', '2023-08-21 19:23:24', '2023-08-21 16:23:24', '2023-08-21 16:23:42'),
	(69, 'App\\Models\\User', 1, 'auth_token', '0103faf77c3fd39d5ad23ba257444be691d47371c8cccab0a23a5095e4465454', '["*"]', '2023-09-01 16:24:05', '2023-09-01 19:23:54', '2023-09-01 16:23:54', '2023-09-01 16:24:05'),
	(70, 'App\\Models\\User', 1, 'auth_token', '25ec32409f12d1a9127e4496dd08fb536f42a36aecfe0a944c399a3c308ddfbd', '["*"]', '2023-09-20 16:24:33', '2023-09-20 19:24:16', '2023-09-20 16:24:16', '2023-09-20 16:24:33'),
	(71, 'App\\Models\\User', 1, 'auth_token', 'f5042ff0d39dfbdb4ac429289729c4e044dd39b303370a3239e72a780b53ca3a', '["*"]', '2023-10-01 16:24:58', '2023-10-01 19:24:46', '2023-10-01 16:24:46', '2023-10-01 16:24:58'),
	(72, 'App\\Models\\User', 1, 'auth_token', 'ecc5ddc2095e579a85a9bada9014a8cec3f22c90a8149a794d29dd3ae0659242', '["*"]', '2023-10-20 16:25:31', '2023-10-20 19:25:10', '2023-10-20 16:25:10', '2023-10-20 16:25:31'),
	(73, 'App\\Models\\User', 1, 'auth_token', '87d56dda973aa31e98c99128635d3195dfa400a610f67b6e8eeea7fbf28fa076', '["*"]', '2023-11-01 16:26:02', '2023-11-01 19:25:50', '2023-11-01 16:25:50', '2023-11-01 16:26:02'),
	(74, 'App\\Models\\User', 1, 'auth_token', '828bb52b7e47885efa859c73885f959ed682051cf19525df26c94c92e36f1645', '["*"]', '2023-11-20 16:26:56', '2023-11-20 19:26:18', '2023-11-20 16:26:18', '2023-11-20 16:26:56'),
	(75, 'App\\Models\\User', 1, 'auth_token', '88608ad6b64bb8ab8eb18453c31b064b4aca4158a3081c77b8a1475294ada3ce', '["*"]', '2023-12-01 16:27:34', '2023-12-01 19:27:18', '2023-12-01 16:27:18', '2023-12-01 16:27:34'),
	(76, 'App\\Models\\User', 1, 'auth_token', '93a3b737796951fb6dfa33f29d5a4b7126e5b4d3763a1eddaf3a1a2d9866a397', '["*"]', '2023-01-23 16:32:35', '2023-12-20 19:27:59', '2023-12-20 16:27:59', '2023-01-23 16:32:35'),
	(78, 'App\\Models\\User', 1, 'auth_token', 'c9f411f76e661fc4cc8287b60818982cfd00b88e6dd00b695ddfe4fe9b98b443', '["*"]', '2023-01-23 17:48:17', '2023-01-23 20:45:50', '2023-01-23 17:45:50', '2023-01-23 17:48:17'),
	(79, 'App\\Models\\User', 1, 'auth_token', 'ac141df176ce62eb2e28fd24f93535957c243bff256609fea512aa0f15964ef0', '["*"]', '2023-01-24 18:23:33', '2023-01-24 19:59:19', '2023-01-24 16:59:19', '2023-01-24 18:23:33'),
	(80, 'App\\Models\\User', 2, 'auth_token', 'c9086a3ec63ec30a5f147a6fc3be7f66ebe9e5cf3c706bf373f88759dd33757b', '["*"]', '2023-01-24 21:04:32', '2023-01-24 23:25:50', '2023-01-24 20:25:50', '2023-01-24 21:04:32'),
	(83, 'App\\Models\\User', 1, 'auth_token', 'cee7938e20c2bfd3975c74deb7fb337f8dc4655803584e1b019291389f5589f8', '["*"]', '2023-01-27 17:10:48', '2023-01-27 20:10:37', '2023-01-27 17:10:37', '2023-01-27 17:10:48'),
	(84, 'App\\Models\\User', 1, 'auth_token', '6f72ddedbe15cfafc493bc0d606f5fc0028e9b6c8c3998931df567f483dc64c1', '["*"]', '2023-01-27 22:35:59', '2023-01-28 01:33:40', '2023-01-27 22:33:40', '2023-01-27 22:35:59'),
	(85, 'App\\Models\\User', 1, 'auth_token', '9b7b3b1351e211109c7ffca2f3c04d3063a2f6443e409954a05b5323c3c72cab', '["*"]', '2023-01-27 23:02:51', '2023-01-28 01:52:42', '2023-01-27 22:52:42', '2023-01-27 23:02:51'),
	(86, 'App\\Models\\User', 1, 'auth_token', '2a71d2071b60a3583dd9b79cb37687e1c0e70f4a0713dfafee0e0d649e8ee2c4', '["*"]', '2023-01-28 18:04:16', '2023-01-28 18:50:52', '2023-01-28 15:50:52', '2023-01-28 18:04:16'),
	(87, 'App\\Models\\User', 1, 'auth_token', 'e36e67439c77d2852a73a1aa7a56a8ff1f4bf608bdb183fa604000349012b755', '["*"]', '2023-01-31 17:42:09', '2023-01-31 19:51:48', '2023-01-31 16:51:48', '2023-01-31 17:42:09'),
	(90, 'App\\Models\\User', 3, 'auth_token', 'ba1f7e63fc3b913cbe073bf48c83b2c8e9af2dc92c1ced2bd4c15379be59b134', '["*"]', '2023-02-02 20:41:54', '2023-02-02 20:42:02', '2023-02-02 17:42:02', '2023-02-02 20:41:54'),
	(91, 'App\\Models\\User', 3, 'auth_token', 'dc3d8274e71f561e592840c62556ebd893d3cf0735c15d4a2ec0c28b5001fb3a', '["*"]', '2023-02-02 21:00:14', '2023-02-02 23:42:31', '2023-02-02 20:42:31', '2023-02-02 21:00:14'),
	(93, 'App\\Models\\User', 3, 'auth_token', '87af9a9633c7648c22e4b8fe3a05e91d74b40aafb32b58c772fd56397d136d8b', '["*"]', '2023-02-03 00:04:08', '2023-02-03 00:48:25', '2023-02-02 21:48:25', '2023-02-03 00:04:08'),
	(94, 'App\\Models\\User', 1, 'auth_token', 'f50ad684c5a1bf1420fcd6d1939b1376bf2cd3bcb74fe0dd48956954b85c3e9e', '["*"]', '2023-02-02 23:31:06', '2023-02-03 01:52:48', '2023-02-02 22:52:48', '2023-02-02 23:31:06'),
	(95, 'App\\Models\\User', 1, 'auth_token', 'cdd5e2e93b201d0a2761eef9dc5572c9b2ae727c78f424fc761b88b6405795ff', '["*"]', '2023-02-02 23:37:33', '2023-02-03 02:30:53', '2023-02-02 23:30:53', '2023-02-02 23:37:33'),
	(96, 'App\\Models\\User', 3, 'auth_token', 'c5bca267ad25805eceaa25c530ace06d46c93ae38d7eafc7cb05875a06bb9120', '["*"]', '2023-02-03 16:13:05', '2023-02-03 17:42:33', '2023-02-03 14:42:33', '2023-02-03 16:13:05'),
	(97, 'App\\Models\\User', 1, 'auth_token', '4b7496d1af8f3fd72a9478d560e0fa7d0c76a45e05b3cb32f42122b70b8ebb25', '["*"]', '2023-02-03 16:47:13', '2023-02-03 17:51:56', '2023-02-03 14:51:56', '2023-02-03 16:47:13'),
	(100, 'App\\Models\\User', 3, 'auth_token', '147c7a697994e392e5aeb8e666f63c49eaee18c4204702e55034a8848f0e4462', '["*"]', '2023-02-03 19:54:16', '2023-02-03 21:36:59', '2023-02-03 18:36:59', '2023-02-03 19:54:16'),
	(102, 'App\\Models\\User', 2, 'auth_token', '40f94d2c39166eeb1072923d2b298dc472d1b61c9ba4cfac4dedf59db1cfd029', '["*"]', '2023-02-03 21:13:22', '2023-02-03 22:58:49', '2023-02-03 19:58:49', '2023-02-03 21:13:22'),
	(104, 'App\\Models\\User', 1, 'auth_token', '2d401086316504d460db8b6fd0f95388a559c2eae0d3f9c6f75251d5e7a7d0a7', '["*"]', '2023-02-03 22:03:41', '2023-02-04 00:55:18', '2023-02-03 21:55:18', '2023-02-03 22:03:41'),
	(105, 'App\\Models\\User', 1, 'auth_token', '3b394ee7bd9b4b972a2e3893fe330e2f136bda49aba2acf3b50405c9e2d6599c', '["*"]', '2023-02-03 22:37:25', '2023-02-04 01:36:47', '2023-02-03 22:36:47', '2023-02-03 22:37:25'),
	(107, 'App\\Models\\User', 3, 'auth_token', 'a36b2c3f7689ce4681fbcc732f8ec24199bcaaf46690931b459faae2bdab0f39', '["*"]', '2023-02-03 23:51:21', '2023-02-04 02:07:39', '2023-02-03 23:07:39', '2023-02-03 23:51:21'),
	(108, 'App\\Models\\User', 1, 'auth_token', '7bd81ecbae728c0e8fd50f39fcde22f086867a13bfc2b009213b7728b3d1e75b', '["*"]', '2023-02-04 15:47:40', '2023-02-04 18:43:01', '2023-02-04 15:43:01', '2023-02-04 15:47:40'),
	(109, 'App\\Models\\User', 3, 'auth_token', 'dd0b86ee282da05ace36e6a0c681c656b5f9815160734e593693ac660c15538d', '["*"]', '2023-02-04 16:13:33', '2023-02-04 19:13:30', '2023-02-04 16:13:30', '2023-02-04 16:13:33'),
	(111, 'App\\Models\\User', 3, 'auth_token', '8c31bc6d6ddf058d530e0afe337177b22858516cddc5107ebae4de24399f99f8', '["*"]', '2023-02-06 17:16:19', '2023-02-06 18:39:10', '2023-02-06 15:39:10', '2023-02-06 17:16:19'),
	(112, 'App\\Models\\User', 1, 'auth_token', '85638a4dda67c43f9ad916e621472a6c8b36bea487ee878dd7d997e61deb75c8', '["*"]', '2023-02-06 17:14:28', '2023-02-06 19:54:24', '2023-02-06 16:54:24', '2023-02-06 17:14:28'),
	(113, 'App\\Models\\User', 3, 'auth_token', '3edd644626d9d51e28d53d38019db37a4044d1a43882baf665cc1b884a5a91be', '["*"]', '2023-02-06 22:55:00', '2023-02-06 23:04:35', '2023-02-06 20:04:35', '2023-02-06 22:55:00'),
	(114, 'App\\Models\\User', 1, 'auth_token', 'e049e8d21b470d93aaca7cdba1eb90e7a32641f6201518a1443a6a885b73826b', '["*"]', '2023-02-06 20:47:21', '2023-02-06 23:20:37', '2023-02-06 20:20:37', '2023-02-06 20:47:21'),
	(115, 'App\\Models\\User', 2, 'auth_token', 'a70c2714870f26b12f3dc197d8df50e3f067b509c71f961d60613ce2310263ad', '["*"]', '2023-02-06 22:48:38', '2023-02-07 01:48:05', '2023-02-06 22:48:05', '2023-02-06 22:48:38'),
	(116, 'App\\Models\\User', 3, 'auth_token', 'd0a5555be16814b467e54991f66c64af42b2b912d0f46252d366500a887497f4', '["*"]', '2023-02-07 23:59:15', '2023-02-08 01:17:37', '2023-02-07 22:17:37', '2023-02-07 23:59:15'),
	(117, 'App\\Models\\User', 3, 'auth_token', '11ebd16b947ea1c9647db930803f8f2be087082860b648a26821fb000a82dd9a', '["*"]', '2023-02-08 17:59:28', '2023-02-08 18:58:04', '2023-02-08 15:58:04', '2023-02-08 17:59:28'),
	(118, 'App\\Models\\User', 1, 'auth_token', '9815c79374bcfd0574c01a3b7f81a1f74e00beff3e3c6a29f60d76a20d3ed3e9', '["*"]', '2023-02-08 16:45:28', '2023-02-08 19:42:55', '2023-02-08 16:42:55', '2023-02-08 16:45:28'),
	(119, 'App\\Models\\User', 3, 'auth_token', '1f4d1b9d4feea5597247f2ff5d3d4a3e92cdbc25d4cc2069d5a87744c5d3dd97', '["*"]', '2023-02-09 16:05:54', '2023-02-09 18:34:38', '2023-02-09 15:34:38', '2023-02-09 16:05:54'),
	(120, 'App\\Models\\User', 3, 'auth_token', '06e525deeb2a5300017ed4194e1ca3af4dde24f140b2a3c53f8de434bc721d1f', '["*"]', '2023-02-10 17:33:06', '2023-02-10 18:02:32', '2023-02-10 15:02:32', '2023-02-10 17:33:06'),
	(122, 'App\\Models\\User', 3, 'auth_token', '8bad060d20ea6334d6dceb9710a4aef6252516aacde8275b5b0599a90078cee6', '["*"]', '2023-02-10 23:36:39', '2023-02-11 02:09:32', '2023-02-10 23:09:32', '2023-02-10 23:36:39'),
	(123, 'App\\Models\\User', 3, 'auth_token', 'e90c5714ddc6695a68b8a6f74bff5734cde9800063550b3d19ff472eeb071635', '["*"]', '2023-02-11 15:35:12', '2023-02-11 17:32:31', '2023-02-11 14:32:31', '2023-02-11 15:35:12'),
	(124, 'App\\Models\\User', 3, 'auth_token', '983fcaaaa3b08b83917cd272088e7d047be5549b7e3de81e3ddd7bd865eb0a2b', '["*"]', '2023-02-11 17:27:09', '2023-02-11 19:44:13', '2023-02-11 16:44:13', '2023-02-11 17:27:09'),
	(125, 'App\\Models\\User', 3, 'auth_token', 'e968875534f5b6dbadcec5e5b9662ed05718da52a61ed2a0ddef76bfe3a9d2fb', '["*"]', '2023-02-13 16:05:20', '2023-02-13 17:03:31', '2023-02-13 14:03:31', '2023-02-13 16:05:20'),
	(126, 'App\\Models\\User', 3, 'auth_token', '49306daf369fa55edbbdaeb9739137e6878f844e17dd24140453b827dfa9c657', '["*"]', '2023-02-13 20:19:18', '2023-02-13 20:27:13', '2023-02-13 17:27:13', '2023-02-13 20:19:18'),
	(128, 'App\\Models\\User', 2, 'auth_token', '18f8b5a7b1bf040daff0d364557136e6412891a65a789338f2495ac96e13096a', '["*"]', '2023-02-13 21:45:14', '2023-02-14 00:45:11', '2023-02-13 21:45:11', '2023-02-13 21:45:14'),
	(129, 'App\\Models\\User', 3, 'auth_token', '08b73f3eed6349e217d19badea116914fe5e8d44c9e602dd2ac19ff7669b1784', '["*"]', '2023-02-13 22:54:44', '2023-02-14 01:21:41', '2023-02-13 22:21:41', '2023-02-13 22:54:44'),
	(131, 'App\\Models\\User', 3, 'auth_token', '4ed6ed101d40e15f30f33a78c4c5d2173180cd8ec2ee6fa3e0de0c44518c06e7', '["*"]', '2023-02-14 17:29:11', '2023-02-14 19:19:05', '2023-02-14 16:19:05', '2023-02-14 17:29:11'),
	(132, 'App\\Models\\User', 3, 'auth_token', 'bd93e8cd94241bd69eb71ba472d8bac8d252d67096f83441d2aba9129e1c6ced', '["*"]', '2023-02-14 23:31:07', '2023-02-15 00:53:16', '2023-02-14 21:53:16', '2023-02-14 23:31:07'),
	(134, 'App\\Models\\User', 3, 'auth_token', '9332afe62faa38a8472cf546eaf23ff645b709754a6a946313423209f0d3d05c', '["*"]', '2023-02-15 17:15:49', '2023-02-15 19:17:02', '2023-02-15 16:17:02', '2023-02-15 17:15:49'),
	(135, 'App\\Models\\User', 3, 'auth_token', '7e48986c6fc530ef50ff635ce956742c7a43698af62adaf5c7b7d44d97905818', '["*"]', '2023-02-15 23:28:53', '2023-02-16 00:10:05', '2023-02-15 21:10:05', '2023-02-15 23:28:53'),
	(136, 'App\\Models\\User', 2, 'auth_token', '2348905b7166571611531d76b0ec2b45f48e794582a030e8dff2adc4e6124c96', '["*"]', '2023-02-15 15:17:07', '2023-02-16 17:45:16', '2023-02-16 14:45:16', '2023-02-15 15:17:07'),
	(137, 'App\\Models\\User', 3, 'auth_token', '8750b480b8cdd479ab203d7d675b097c5e3b1cabdd1e5de376e7c6271aec124b', '["*"]', '2023-02-16 17:33:18', '2023-02-16 17:47:43', '2023-02-16 14:47:43', '2023-02-16 17:33:18'),
	(138, 'App\\Models\\User', 1, 'auth_token', '771dcd0cf1e5d8299c5c2e5146a1d14734332c50648a58b2e7a1e7b6e7dfb704', '["*"]', '2023-02-16 16:54:02', '2023-02-16 17:54:26', '2023-02-16 14:54:26', '2023-02-16 16:54:02'),
	(139, 'App\\Models\\User', 3, 'auth_token', 'ccdfd746a39fcb3defbdfd1d11a5f2fef28570b75a3ee8aa1e1504537862d4db', '["*"]', '2023-02-15 15:35:02', '2023-02-15 18:34:50', '2023-02-15 15:34:50', '2023-02-15 15:35:02'),
	(140, 'App\\Models\\User', 3, 'auth_token', 'ee7a370342d799e612abf79937f8b89d077a1fc3e6f9c687d99e4e1b36b08707', '["*"]', '2023-02-16 21:50:59', '2023-02-16 23:14:09', '2023-02-16 20:14:09', '2023-02-16 21:50:59'),
	(141, 'App\\Models\\User', 3, 'auth_token', '44cff03050e88c006af6d66abc95a0c5d79e017ce61b83a0018a482270505928', '["*"]', '2023-02-16 23:17:36', '2023-02-17 02:16:57', '2023-02-16 23:16:57', '2023-02-16 23:17:36'),
	(142, 'App\\Models\\User', 3, 'auth_token', '19d14f933cf4e12b414ecc465fe6c3553130e74c884f17ee70e1a94ca9414151', '["*"]', '2023-02-17 15:35:26', '2023-02-17 17:28:01', '2023-02-17 14:28:01', '2023-02-17 15:35:26');

-- Volcando estructura para procedimiento planilla.Sp_Insertar_Biacora
DELIMITER //
CREATE PROCEDURE `Sp_Insertar_Biacora`(
	IN `v_usuario` INT,
	IN `v_accion` TEXT
)
    COMMENT 'sp para insertar las acciones creadas por el usuario '
BEGIN

	DECLARE var_usuario INT(11) DEFAULT v_usuario;
	DECLARE var_accion text DEFAULT v_accion ;
	DECLARE var_created_at DATETIME DEFAULT NOW();
   DECLARE var_updated_at DATETIME DEFAULT NOW();

	INSERT INTO tbl_bitacoras (id_usuario,accion,created_at,updated_at)  VALUES (var_usuario,var_accion,var_created_at,var_updated_at);

END//
DELIMITER ;

-- Volcando estructura para procedimiento planilla.Sp_Insertar_D_planilla
DELIMITER //
CREATE PROCEDURE `Sp_Insertar_D_planilla`(
	IN `v_Id_planilla` INT
)
    COMMENT 'Insertar Detalle de Planilla Quincenal/Mensual'
BEGIN


  DECLARE var_final INTEGER DEFAULT 0;
  
   DECLARE var_id_empleado INT(11) ;
	DECLARE var_sueldo DECIMAL(20,8) ;
	DECLARE var_dias_planilla INT(11) ;
	DECLARE var_dias_trabajados INT(11) ;
	DECLARE var_calculo_salario DECIMAL(20,8) ;
	DECLARE var_prestamos DECIMAL(20,8) ;
	DECLARE var_anticipos DECIMAL(20,8) ;
	DECLARE var_bonos DECIMAL(20,8) ;
	DECLARE var_bonos_variables DECIMAL(20,8) ;
	DECLARE var_vacaciones DECIMAL(20,8) ;
	DECLARE var_comision DECIMAL(20,8) ;
	DECLARE var_isss DECIMAL(20,8) ;
	DECLARE var_afp DECIMAL(20,8) ;
	DECLARE var_ipsfa DECIMAL(20,8) ;
	DECLARE var_fosafi DECIMAL(20,8) ;
	DECLARE var_renta DECIMAL(20,8) ;
	DECLARE var_total_descuentos DECIMAL(20,8) ;
	DECLARE var_pgr DECIMAL(20,8) ;
	DECLARE var_fsv DECIMAL(20,8) ;
	DECLARE var_dv DECIMAL(20,8) ;
	DECLARE var_viaticos DECIMAL(20,8) ;
	DECLARE var_reintegros DECIMAL(20,8) ;
	DECLARE var_sueldo_liquido DECIMAL(20,8) ;
	DECLARE var_Id_planilla INT(11) DEFAULT v_Id_planilla;
	DECLARE var_created_at DATETIME DEFAULT NOW();
   DECLARE var_updated_at DATETIME DEFAULT NOW();

  
  DECLARE cursor1 CURSOR FOR
  
  
SELECT
ID_EMPLEADO,
SUELDO,
DIAS_QUINCENA,
DIAS_TRABAJADOS,
calculo_salario,
PRESTAMOS,
ANTICIPO,
BONOS,
BONOSV,
VACACION,
COMISION,
ISSS,
AFP,
IPSFA,
FOSAFI,
RENTA,
TOTAL_DESCUENTOS,
PGR,
FSV,
DV,
VIATICOS,
REINTEGRO ,
LIQUIDO_PAGAR
FROM v_detalles_planilla_quincenal;

  DECLARE CONTINUE HANDLER FOR NOT FOUND SET var_final = 1;

  OPEN cursor1;

  bucle: LOOP

   FETCH cursor1 
	INTO 
	var_id_empleado,
	var_sueldo,
	var_dias_planilla,
	var_dias_trabajados,
	var_calculo_salario,
	var_prestamos,
	var_anticipos,
	var_bonos,
	var_bonos_variables,
	var_vacaciones,
	var_comision,
	var_isss,
	var_afp,
	var_ipsfa,
	var_fosafi,
	var_renta,
	var_total_descuentos,
	var_pgr,
	var_fsv,
	var_dv,
	var_viaticos,
	var_reintegros,
	var_sueldo_liquido
	;

  
  IF var_final = 1 THEN
      LEAVE bucle;
    END IF;

   INSERT INTO tbl_detalle_planillas 
	(id_empleado,
	sueldo,
	dias_planilla,
	dias_trabajados,
	calculo_salario,
	prestamos,
	anticipos,
	bonos,
	bonos_variables,
	vacaciones,
	comision,
	isss,
	afp,
	ipsfa,
	fosafi,
	renta,
	total_descuentos,
	pgr,
	fsv,
	dv,
	viaticos,
	reintegros,
	sueldo_liquido,
	id_planilla,
	created_at,
	updated_at
	)
	VALUES 
	(var_id_empleado,
	var_sueldo,
	var_dias_planilla,
	var_dias_trabajados,
	var_calculo_salario,
	var_prestamos,
	var_anticipos,
	var_bonos,
	var_bonos_variables,
	var_vacaciones,
	var_comision,
	var_isss,
	var_afp,
	var_ipsfa,
	var_fosafi,
	var_renta,
	var_total_descuentos,
	var_pgr,
	var_fsv,
	var_dv,
	var_viaticos,
	var_reintegros,
	var_sueldo_liquido,
	v_Id_planilla,
	var_created_at,
	var_updated_at
	);
	


  END LOOP bucle;
  CLOSE cursor1;

END//
DELIMITER ;

-- Volcando estructura para procedimiento planilla.Sp_Insertar_D_planilla_aguinaldo
DELIMITER //
CREATE PROCEDURE `Sp_Insertar_D_planilla_aguinaldo`(
	IN `v_Id_planilla` INT
)
    COMMENT 'SP para insertar la planilla de aguinaldo'
BEGIN

	
	DECLARE var_final INTEGER DEFAULT 0;
  
   DECLARE var_id_empleado INT(11) ;
   DECLARE var_fecha_corte DATETIME ;
   DECLARE var_tiempo_lab_corte DECIMAL(20,8) ;
   DECLARE var_dias_laborados INT(11) ;
   DECLARE var_tiempo_lab_ltrs varchar(200) ;
   DECLARE var_comision DECIMAL(20,8) ;
   DECLARE var_sueldo DECIMAL(20,8) ;
   DECLARE var_ingreso_ley DECIMAL(20,8) ;
   DECLARE var_ingreso_politica DECIMAL(20,8) ;
   DECLARE var_total_agui DECIMAL(20,8) ;
   DECLARE var_tope_ingreso DECIMAL(20,8) ;
   DECLARE var_base_isr DECIMAL(20,8) ;
	DECLARE var_renta DECIMAL(20,8) ;
	DECLARE var_pgr DECIMAL(20,8) ;
	DECLARE var_total_descuentos DECIMAL(20,8) ;
	DECLARE var_liquido_pagar DECIMAL(20,8) ;
	DECLARE var_Id_planilla INT(11) DEFAULT v_Id_planilla;
 	DECLARE var_created_at DATETIME DEFAULT NOW();
   DECLARE var_updated_at DATETIME DEFAULT NOW();

  
  DECLARE cursor1 CURSOR FOR
  
  
SELECT 
	ID_EMPLEADO,
	FECHACORTE,
	TIEMPO_LAB_CORTE,
	DIAS_LABORADOS,
	TIEMPOLABORADO,
	COMISION,
	SUELDO,
	AGUIINALDO_LEY,
	COMPLEMENTO_POLITICA,
	TOTAL_AGUINALDO,
	TOPE_AGUINALDO,
	BASE_RETENCION,
	RENTA,
	PGR,
	TOTAL_RETENIDO,
	LQUIDO_PAGAR
FROM v_detalles_planilla_aguinaldo;



 DECLARE CONTINUE HANDLER FOR NOT FOUND SET var_final = 1;

  OPEN cursor1;

  bucle: LOOP

   FETCH cursor1 
	INTO 
	var_id_empleado,
   var_fecha_corte,
   var_tiempo_lab_corte,
   var_dias_laborados,
   var_tiempo_lab_ltrs, 
   var_comision,
   var_sueldo,
   var_ingreso_ley,
   var_ingreso_politica,
   var_total_agui,
   var_tope_ingreso,
	var_base_isr,
	var_renta,
	var_pgr,
	var_total_descuentos,
	var_liquido_pagar
	 ;
	

  
  IF var_final = 1 THEN
      LEAVE bucle;
    END IF;

   INSERT INTO tbl_detalle_planillas_ai 
	(
	ID_EMPLEADO,
	FECHA_CORTE,
	TIEMPO_LAB_CORTE,
	DIAS_LABORADOS,
	TIEMPO_LABORADO_LTRS,
	COMISION,
	SUELDO,
	INGRESO_LEY,
	INGRESO_POLITICA,
	TOTAL_AGUINALDO,
	TOPE_INGRESO,
	BASE_INGRESO_ISR,
	RENTA,
	PGR,
	TOTAL_DESCUENTOS,
	LIQUIDO_PAGAR,
 	id_planilla,
	created_at,
	updated_at
	)
	VALUES 
	(
	var_id_empleado,
   var_fecha_corte,
   var_tiempo_lab_corte,
   var_dias_laborados,
   var_tiempo_lab_ltrs,
   var_comision,
   var_sueldo,
   var_ingreso_ley,
   var_ingreso_politica,
   var_total_agui,
   var_tope_ingreso,
	var_base_isr,
	var_renta,
	var_pgr,
	var_total_descuentos,
	var_liquido_pagar,
	var_Id_planilla,
 	var_created_at,
   var_updated_at
	);


  END LOOP bucle;
  CLOSE cursor1;

END//
DELIMITER ;

-- Volcando estructura para procedimiento planilla.Sp_Insertar_D_planilla_indemnizacion
DELIMITER //
CREATE PROCEDURE `Sp_Insertar_D_planilla_indemnizacion`(
	IN `v_Id_planilla` INT
)
    COMMENT 'SP para insertar la planilla de indemnizacion'
BEGIN

	
	DECLARE var_final INTEGER DEFAULT 0;
  
   DECLARE var_id_empleado INT(11) ;
   DECLARE var_fecha_corte DATETIME ;
   DECLARE var_tiempo_lab_corte DECIMAL(20,8) ;
   DECLARE var_dias_laborados INT(11) ;
   DECLARE var_tiempo_lab_ltrs varchar(200) ;
   DECLARE var_comision DECIMAL(20,8) ;
   DECLARE var_sueldo DECIMAL(20,8) ;
   DECLARE var_ingreso_ley DECIMAL(20,8) ;
   DECLARE var_ingreso_politica DECIMAL(20,8) ;
   DECLARE var_total_agui DECIMAL(20,8) ;
   DECLARE var_tope_ingreso DECIMAL(20,8) ;
   DECLARE var_base_isr DECIMAL(20,8) ;
	DECLARE var_renta DECIMAL(20,8) ;
	DECLARE var_pgr DECIMAL(20,8) ;
	DECLARE var_total_descuentos DECIMAL(20,8) ;
	DECLARE var_liquido_pagar DECIMAL(20,8) ;
	DECLARE var_Id_planilla INT(11) DEFAULT v_Id_planilla;
 	DECLARE var_created_at DATETIME DEFAULT NOW();
   DECLARE var_updated_at DATETIME DEFAULT NOW();

  
  DECLARE cursor1 CURSOR FOR
  
  
SELECT 
	ID_EMPLEADO,
	FECHACORTE,
	TIEMPO_LAB_CORTE,
	DIAS_LABORADOS,
	TIEMPOLABORADO,
	COMISION,
	SUELDO,
	INDEMNIZACION,
	0 COMPLEMENTO_POLITICA,
	0 TOTAL_AGUINALDO,
   TOPE_INDEMNIZACION,
	BASE_RETENCION,
	RENTA,
	PGR,
	TOTAL_RETENIDO,
	LQUIDO_PAGAR 
FROM v_detalles_planilla_indemnizacion;



 DECLARE CONTINUE HANDLER FOR NOT FOUND SET var_final = 1;

  OPEN cursor1;

  bucle: LOOP

   FETCH cursor1 
	INTO 
	var_id_empleado,
   var_fecha_corte,
   var_tiempo_lab_corte,
   var_dias_laborados,
   var_tiempo_lab_ltrs, 
   var_comision,
   var_sueldo,
   var_ingreso_ley,
   var_ingreso_politica,
   var_total_agui,
   var_tope_ingreso,
	var_base_isr,
	var_renta,
	var_pgr,
	var_total_descuentos,
	var_liquido_pagar
	 ;
	

  
  IF var_final = 1 THEN
      LEAVE bucle;
    END IF;

   INSERT INTO tbl_detalle_planillas_ai 
	(
	ID_EMPLEADO,
	FECHA_CORTE,
	TIEMPO_LAB_CORTE,
	DIAS_LABORADOS,
	TIEMPO_LABORADO_LTRS,
	COMISION,
	SUELDO,
	INGRESO_LEY,
	INGRESO_POLITICA,
	TOTAL_AGUINALDO,
	TOPE_INGRESO,
	BASE_INGRESO_ISR,
	RENTA,
	PGR,
	TOTAL_DESCUENTOS,
	LIQUIDO_PAGAR,
 	id_planilla,
	created_at,
	updated_at
	)
	VALUES 
	(
	var_id_empleado,
   var_fecha_corte,
   var_tiempo_lab_corte,
   var_dias_laborados,
   var_tiempo_lab_ltrs,
   var_comision,
   var_sueldo,
   var_ingreso_ley,
   var_ingreso_politica,
   var_total_agui,
   var_tope_ingreso,
	var_base_isr,
	var_renta,
	var_pgr,
	var_total_descuentos,
	var_liquido_pagar,
	var_Id_planilla,
 	var_created_at,
   var_updated_at
	);


  END LOOP bucle;
  CLOSE cursor1;

END//
DELIMITER ;

-- Volcando estructura para procedimiento planilla.Sp_Insertar_Jobs
DELIMITER //
CREATE PROCEDURE `Sp_Insertar_Jobs`()
    COMMENT 'Ingresar Al finalizar ETL'
BEGIN
INSERT INTO Jobs_execution values(NULL,'ETL Carga Planilla Ejecutado',now());
END//
DELIMITER ;

-- Volcando estructura para procedimiento planilla.Sp_Insertar_M_Planilla
DELIMITER //
CREATE PROCEDURE `Sp_Insertar_M_Planilla`(
	IN `v_Id_planilla` INT,
	IN `v_Mes_Planilla` INT,
	IN `v_Anio_Planilla` INT
)
    COMMENT 'Sp para insertar el detalle de la planilla mensual'
BEGIN 
   /*INICIO DE VARIABLES DE ASIGNACION*/
	DECLARE var_final INTEGER DEFAULT 0;
   DECLARE var_id_empleado INT(11) ;
	DECLARE var_sueldo DECIMAL(20,8) ;
	DECLARE var_dias_planilla INT(11) ;
	DECLARE var_dias_trabajados INT(11) ;
	DECLARE var_calculo_salario DECIMAL(20,8) ;
	DECLARE var_prestamos DECIMAL(20,8) ;
	DECLARE var_anticipos DECIMAL(20,8) ;
	DECLARE var_bonos DECIMAL(20,8) ;
	DECLARE var_bonos_variables DECIMAL(20,8) ;
	DECLARE var_vacaciones DECIMAL(20,8) ;
	DECLARE var_comision DECIMAL(20,8) ;
	DECLARE var_isss DECIMAL(20,8) ;
	DECLARE var_afp DECIMAL(20,8) ;
	DECLARE var_ipsfa DECIMAL(20,8) ;
	DECLARE var_fosafi DECIMAL(20,8) ;
	DECLARE var_renta DECIMAL(20,8) ;
	DECLARE var_total_descuentos DECIMAL(20,8) ;
	DECLARE var_pgr DECIMAL(20,8) ;
	DECLARE var_fsv DECIMAL(20,8) ;
	DECLARE var_dv DECIMAL(20,8) ;
	DECLARE var_viaticos DECIMAL(20,8) ;
	DECLARE var_reintegros DECIMAL(20,8) ;
	DECLARE var_sueldo_liquido DECIMAL(20,8) ;
	DECLARE var_Id_planilla INT(11) DEFAULT v_Id_planilla;
	DECLARE var_created_at DATETIME DEFAULT NOW();
   DECLARE var_updated_at DATETIME DEFAULT NOW();
   /*FIN DE VARIABLES DE ASIGNACION*/
   
   DECLARE cursor1 CURSOR FOR
	
SELECT tbl_general.* FROM (SELECT a.id_empleado ID_EMPLEADO,
	SUM(a.calculo_salario) SUELDO,
	SUM(a.dias_planilla) DIAS_MENSUAL, 
	SUM(a.dias_trabajados) DIAS_TRABAJADOS,
	SUM(a.calculo_salario) CALCULO_SALARIO, 
	SUM(a.prestamos)PRESTAMOS, 
	SUM(a.anticipos)ANTICIPOS,
	SUM(a.bonos)BONOS,
	SUM(a.bonos_variables)BONOSV,
	SUM(a.vacaciones)VACACION,
	SUM(a.comision)COMISION, 
	SUM(a.isss)ISS,
	SUM(a.afp)AFP,
	SUM(a.ipsfa)IPSFA,
	SUM(a.fosafi)FOSAFI,
	SUM(a.renta)RENTA, 
	SUM(a.total_descuentos)TOTAL_DESCUENTOS,
SUM(a.pgr)PGR,
	SUM(a.fsv)FSV, 
	SUM(a.dv)DV, 
	SUM(a.viaticos)VIATICOS,
	 SUM(a.reintegros)REINTEGRO,
	SUM(a.sueldo_liquido)LIQUIDO_PAGAR
	FROM tbl_detalle_planillas a
	LEFT JOIN tbl_planillas b ON a.id_planilla = b.id
	WHERE (MONTH(b.f_inicio_planilla) = v_Mes_Planilla AND YEAR(b.f_inicio_planilla) = v_Anio_Planilla) AND b.id_tipo_planilla = 1
	GROUP BY a.id_empleado) tbl_general INNER JOIN tbl_empleados d ON tbl_general.id_empleado = d.id;
	-- WHERE d.estado='A';
	/*GROUP BY tbl_general.id_empleado, d.sueldo;*/
	
	
	
   
	  
  DECLARE CONTINUE HANDLER FOR NOT FOUND SET var_final = 1;

  OPEN cursor1;

  bucle: LOOP

   FETCH cursor1 
	INTO 
	var_id_empleado,
	var_sueldo,
	var_dias_planilla,
	var_dias_trabajados,
	var_calculo_salario,
	var_prestamos,
	var_anticipos,
	var_bonos,
	var_bonos_variables,
	var_vacaciones,
	var_comision,
	var_isss,
	var_afp,
	var_ipsfa,
	var_fosafi,
	var_renta,
	var_total_descuentos,
	var_pgr,
	var_fsv,
	var_dv,
	var_viaticos,
	var_reintegros,
	var_sueldo_liquido
	;

  
  IF var_final = 1 THEN
      LEAVE bucle;
    END IF;

   INSERT INTO tbl_detalle_planillas 
	(id_empleado,
	sueldo,
	dias_planilla,
	dias_trabajados,
	calculo_salario,
	prestamos,
	anticipos,
	bonos,
	bonos_variables,
	vacaciones,
	comision,
	isss,
	afp,
	ipsfa,
	fosafi,
	renta,
	total_descuentos,
	pgr,
	fsv,
	dv,
	viaticos,
	reintegros,
	sueldo_liquido,
	id_planilla,
	created_at,
	updated_at
	)
	VALUES 
	(var_id_empleado,
	var_sueldo,
	var_dias_planilla,
	var_dias_trabajados,
	var_calculo_salario,
	var_prestamos,
	var_anticipos,
	var_bonos,
	var_bonos_variables,
	var_vacaciones,
	var_comision,
	var_isss,
	var_afp,
	var_ipsfa,
	var_fosafi,
	var_renta,
	var_total_descuentos,
	var_pgr,
	var_fsv,
	var_dv,
	var_viaticos,
	var_reintegros,
	var_sueldo_liquido,
	v_Id_planilla,
	var_created_at,
	var_updated_at
	);

  END LOOP bucle;
  CLOSE cursor1;	 
		 END//
DELIMITER ;

-- Volcando estructura para procedimiento planilla.Sp_InsertRecal_planilla_1Q_Dic
DELIMITER //
CREATE PROCEDURE `Sp_InsertRecal_planilla_1Q_Dic`(
	IN `v_Id_planilla` INT
)
    COMMENT 'sp para insertar la primera quincena de diciembre con los calculos de aguinaldo '
BEGIN
  DECLARE var_final INTEGER DEFAULT 0;
   DECLARE var_id_empleado INT(11) ;
   DECLARE var_id_empleado_select INT DEFAULT NULL;
	DECLARE var_sueldo DECIMAL(20,8) ;
	DECLARE var_dias_planilla INT(11) ;
	DECLARE var_dias_trabajados INT(11) ;
	DECLARE var_calculo_salario DECIMAL(20,8) ;
	DECLARE var_prestamos DECIMAL(20,8) ;
	DECLARE var_anticipos DECIMAL(20,8) ;
	DECLARE var_bonos DECIMAL(20,8) ;
	DECLARE var_bonos_variables DECIMAL(20,8) ;
	DECLARE var_vacaciones DECIMAL(20,8) ;
	DECLARE var_comision DECIMAL(20,8) ;
	DECLARE var_isss DECIMAL(20,8) ;
	DECLARE var_afp DECIMAL(20,8) ;
	DECLARE var_ipsfa DECIMAL(20,8) ;
	DECLARE var_fosafi DECIMAL(20,8) ;
	DECLARE var_renta DECIMAL(20,8) ;
	DECLARE var_total_descuentos DECIMAL(20,8) ;
	DECLARE var_pgr DECIMAL(20,8) ;
	DECLARE var_fsv DECIMAL(20,8) ;
	DECLARE var_dv DECIMAL(20,8) ;
	DECLARE var_viaticos DECIMAL(20,8) ;
	DECLARE var_reintegros DECIMAL(20,8) ;
	DECLARE var_sueldo_liquido DECIMAL(20,8) ;
	DECLARE var_base_agravado DECIMAL(20,8) ;
	DECLARE var_Id_planilla INT(11) DEFAULT v_Id_planilla;
	DECLARE var_created_at DATETIME DEFAULT NOW();
   DECLARE var_updated_at DATETIME DEFAULT NOW();
  DECLARE cursor1 CURSOR FOR

SELECT 
ID_EMPLEADO,
SUELDO,
DIAS_QUINCENA,
DIAS_TRABAJADOS,
calculo_salario,
PRESTAMOS,
ANTICIPO,
BONOS,
BONOSV,
VACACION,
COMISION,
ISSS,
AFP,
IPSFA,
FOSAFI,
RENTA,
TOTAL_DESCUENTOS,
PGR,
FSV,
DV,
VIATICOS,
REINTEGRO ,
AGUINALDO_AGRAVADO,
LIQUIDO_PAGAR
FROM v_detalles_planilla_1q_quincenal_dic;





  DECLARE CONTINUE HANDLER FOR NOT FOUND SET var_final = 1;
  OPEN cursor1;
  bucle: LOOP
   FETCH cursor1
	INTO
	var_id_empleado,
	var_sueldo,
	var_dias_planilla,
	var_dias_trabajados,
	var_calculo_salario,
	var_prestamos,
	var_anticipos,
	var_bonos,
	var_bonos_variables,
	var_vacaciones,
	var_comision,
	var_isss,
	var_afp,
	var_ipsfa,
	var_fosafi,
	var_renta,
	var_total_descuentos,
	var_pgr,
	var_fsv,
	var_dv,
	var_viaticos,
	var_reintegros,
	var_base_agravado,
	var_sueldo_liquido
	;
  IF var_final = 1 THEN
      LEAVE bucle;
    END IF;
    SELECT COUNT(*) INTO var_id_empleado_select FROM tbl_detalle_planillas WHERE id_empleado = var_id_empleado AND id_planilla = v_Id_planilla;
	
	IF var_id_empleado_select = 0 THEN
	  INSERT INTO tbl_detalle_planillas
	(id_empleado,
	sueldo,
	dias_planilla,
	dias_trabajados,
	calculo_salario,
	prestamos,
	anticipos,
	bonos,
	bonos_variables,
	vacaciones,
	comision,
	isss,
	afp,
	ipsfa,
	fosafi,
	renta,
	total_descuentos,
	pgr,
	fsv,
	dv,
	viaticos,
	reintegros,
	base_agravado,
	sueldo_liquido,
	id_planilla,
	created_at,
	updated_at
	)
	VALUES
	(var_id_empleado,
	var_sueldo,
	var_dias_planilla,
	var_dias_trabajados,
	var_calculo_salario,
	var_prestamos,
	var_anticipos,
	var_bonos,
	var_bonos_variables,
	var_vacaciones,
	var_comision,
	var_isss,
	var_afp,
	var_ipsfa,
	var_fosafi,
	var_renta,
	var_total_descuentos,
	var_pgr,
	var_fsv,
	var_dv,
	var_viaticos,
	var_reintegros,
	var_base_agravado,
	var_sueldo_liquido,
	v_Id_planilla,
	var_created_at,
	var_updated_at
	);
	
	ELSE
   UPDATE tbl_detalle_planillas
	SET
	sueldo = var_sueldo,
	dias_planilla = var_dias_planilla,
	dias_trabajados = var_dias_trabajados,
	calculo_salario = var_calculo_salario,
	prestamos = var_prestamos,
	anticipos = var_anticipos,
	bonos = var_bonos,
	bonos_variables = var_bonos_variables,
	vacaciones = var_vacaciones,
	comision = var_comision,
	isss = var_isss,
	afp = var_afp,
	ipsfa = var_ipsfa,
	fosafi = var_fosafi,
	renta = var_renta,
	total_descuentos = var_total_descuentos,
	pgr = var_pgr,
	fsv = var_fsv,
	dv = var_dv,
	viaticos = var_viaticos,
	reintegros = var_reintegros,
	base_agravado=var_base_agravado,
	sueldo_liquido = var_sueldo_liquido,
	updated_at = var_updated_at
	
	WHERE id_planilla=v_Id_planilla AND id_empleado=var_id_empleado;
  END IF;
  END LOOP bucle;
  CLOSE cursor1;
END//
DELIMITER ;

-- Volcando estructura para procedimiento planilla.Sp_InsertRecal_planilla_2Q_Dic
DELIMITER //
CREATE PROCEDURE `Sp_InsertRecal_planilla_2Q_Dic`(
	IN `v_Id_planilla` INT
)
    COMMENT 'sp para insertar la segunda quincena de diciembre con los calculos de Indemnizacion'
BEGIN 
  DECLARE var_final INTEGER DEFAULT 0;
   DECLARE var_id_empleado INT(11) ;
   DECLARE var_id_empleado_select INT DEFAULT NULL;
	DECLARE var_sueldo DECIMAL(20,8) ;
	DECLARE var_dias_planilla INT(11) ;
	DECLARE var_dias_trabajados INT(11) ;
	DECLARE var_calculo_salario DECIMAL(20,8) ;
	DECLARE var_prestamos DECIMAL(20,8) ;
	DECLARE var_anticipos DECIMAL(20,8) ;
	DECLARE var_bonos DECIMAL(20,8) ;
	DECLARE var_bonos_variables DECIMAL(20,8) ;
	DECLARE var_vacaciones DECIMAL(20,8) ;
	DECLARE var_comision DECIMAL(20,8) ;
	DECLARE var_isss DECIMAL(20,8) ;
	DECLARE var_afp DECIMAL(20,8) ;
	DECLARE var_ipsfa DECIMAL(20,8) ;
	DECLARE var_fosafi DECIMAL(20,8) ;
	DECLARE var_renta DECIMAL(20,8) ;
	DECLARE var_total_descuentos DECIMAL(20,8) ;
	DECLARE var_pgr DECIMAL(20,8) ;
	DECLARE var_fsv DECIMAL(20,8) ;
	DECLARE var_dv DECIMAL(20,8) ;
	DECLARE var_viaticos DECIMAL(20,8) ;
	DECLARE var_reintegros DECIMAL(20,8) ;
	DECLARE var_sueldo_liquido DECIMAL(20,8) ;
	DECLARE var_base_agravado DECIMAL(20,8) ;
	DECLARE var_Id_planilla INT(11) DEFAULT v_Id_planilla;
	DECLARE var_created_at DATETIME DEFAULT NOW();
   DECLARE var_updated_at DATETIME DEFAULT NOW();
  DECLARE cursor1 CURSOR FOR

SELECT 
ID_EMPLEADO,
SUELDO,
DIAS_QUINCENA,
DIAS_TRABAJADOS,
calculo_salario,
PRESTAMOS,
ANTICIPO,
BONOS,
BONOSV,
VACACION,
COMISION,
ISSS,
AFP,
IPSFA,
FOSAFI,
RENTA,
TOTAL_DESCUENTOS,
PGR,
FSV,
DV,
VIATICOS,
REINTEGRO ,
INDEMNIZACION_AGRAVADO,
LIQUIDO_PAGAR
FROM v_detalles_planilla_2q_quincenal_dic ;





  DECLARE CONTINUE HANDLER FOR NOT FOUND SET var_final = 1;
  OPEN cursor1;
  bucle: LOOP
   FETCH cursor1
	INTO
	var_id_empleado,
	var_sueldo,
	var_dias_planilla,
	var_dias_trabajados,
	var_calculo_salario,
	var_prestamos,
	var_anticipos,
	var_bonos,
	var_bonos_variables,
	var_vacaciones,
	var_comision,
	var_isss,
	var_afp,
	var_ipsfa,
	var_fosafi,
	var_renta,
	var_total_descuentos,
	var_pgr,
	var_fsv,
	var_dv,
	var_viaticos,
	var_reintegros,
	var_base_agravado,
	var_sueldo_liquido
	;
  IF var_final = 1 THEN
      LEAVE bucle;
    END IF;
    SELECT COUNT(*) INTO var_id_empleado_select FROM tbl_detalle_planillas WHERE id_empleado = var_id_empleado AND id_planilla = v_Id_planilla;
	
	IF var_id_empleado_select = 0 THEN
	  INSERT INTO tbl_detalle_planillas
	(id_empleado,
	sueldo,
	dias_planilla,
	dias_trabajados,
	calculo_salario,
	prestamos,
	anticipos,
	bonos,
	bonos_variables,
	vacaciones,
	comision,
	isss,
	afp,
	ipsfa,
	fosafi,
	renta,
	total_descuentos,
	pgr,
	fsv,
	dv,
	viaticos,
	reintegros,
	base_agravado,
	sueldo_liquido,
	id_planilla,
	created_at,
	updated_at
	)
	VALUES
	(var_id_empleado,
	var_sueldo,
	var_dias_planilla,
	var_dias_trabajados,
	var_calculo_salario,
	var_prestamos,
	var_anticipos,
	var_bonos,
	var_bonos_variables,
	var_vacaciones,
	var_comision,
	var_isss,
	var_afp,
	var_ipsfa,
	var_fosafi,
	var_renta,
	var_total_descuentos,
	var_pgr,
	var_fsv,
	var_dv,
	var_viaticos,
	var_reintegros,
	var_base_agravado,
	var_sueldo_liquido,
	v_Id_planilla,
	var_created_at,
	var_updated_at
	);
	
	ELSE
   UPDATE tbl_detalle_planillas
	SET
	sueldo = var_sueldo,
	dias_planilla = var_dias_planilla,
	dias_trabajados = var_dias_trabajados,
	calculo_salario = var_calculo_salario,
	prestamos = var_prestamos,
	anticipos = var_anticipos,
	bonos = var_bonos,
	bonos_variables = var_bonos_variables,
	vacaciones = var_vacaciones,
	comision = var_comision,
	isss = var_isss,
	afp = var_afp,
	ipsfa = var_ipsfa,
	fosafi = var_fosafi,
	renta = var_renta,
	total_descuentos = var_total_descuentos,
	pgr = var_pgr,
	fsv = var_fsv,
	dv = var_dv,
	viaticos = var_viaticos,
	reintegros = var_reintegros,
	base_agravado=var_base_agravado,
	sueldo_liquido = var_sueldo_liquido,
	updated_at = var_updated_at
	
	WHERE id_planilla=v_Id_planilla AND id_empleado=var_id_empleado;
  END IF;
  END LOOP bucle;
  CLOSE cursor1;
END//
DELIMITER ;

-- Volcando estructura para procedimiento planilla.Sp_Mostrar_boleta_Aguinaldo
DELIMITER //
CREATE PROCEDURE `Sp_Mostrar_boleta_Aguinaldo`(
	IN `VAR_ANIO` INT,
	IN `VAR_ID_EMPLEADO` INT
)
    COMMENT 'sp para mostrar el recivo de boleta de aguinaldo segun año y empleado'
BEGIN
SET lc_time_names = 'es_ES';
SELECT
C.ID ID_EMPLEADO,
DATE_FORMAT(B.FECHA_PAGO, "%d de %M del mismo año") FECHA_PAGO,
CONCAT(C.NOMBRES,' ',C.APELLIDOS) NOMBRE_COMP,
YEAR (B.F_INICIO_PLANILLA) PERIODO,
A.TOTAL_AGUINALDO,
A.PGR,
A.TOTAL_DESCUENTOS,
A.LIQUIDO_PAGAR
FROM TBL_DETALLE_PLANILLAS_AI A
INNER JOIN TBL_PLANILLAS B ON (A.ID_PLANILLA=B.ID)
INNER JOIN TBL_EMPLEADOS C ON (A.ID_EMPLEADO=C.ID)
INNER JOIN TBL_TIPO_PLANILLAS D ON (D.ID=B.ID_TIPO_PLANILLA AND D.ID=3)
WHERE YEAR (B.F_INICIO_PLANILLA) =VAR_ANIO  AND C.ID IN (VAR_ID_EMPLEADO);
END//
DELIMITER ;

-- Volcando estructura para procedimiento planilla.Sp_Mostrar_boleta_Aguinaldo_Full
DELIMITER //
CREATE PROCEDURE `Sp_Mostrar_boleta_Aguinaldo_Full`(
	IN `VAR_ANIO` INT
)
    COMMENT 'sp para motrar todas las bolestas de agunaldo'
BEGIN
SET lc_time_names = 'es_ES';
SELECT
C.ID ID_EMPLEADO,
DATE_FORMAT(B.FECHA_PAGO, "%d de %M del mismo año") FECHA_PAGO,
CONCAT(C.NOMBRES,' ',C.APELLIDOS) NOMBRE_COMP,
YEAR (B.F_INICIO_PLANILLA) PERIODO,
A.TOTAL_AGUINALDO,
A.PGR,
A.TOTAL_DESCUENTOS,
A.LIQUIDO_PAGAR
FROM TBL_DETALLE_PLANILLAS_AI A
INNER JOIN TBL_PLANILLAS B ON (A.ID_PLANILLA=B.ID)
INNER JOIN TBL_EMPLEADOS C ON (A.ID_EMPLEADO=C.ID)
INNER JOIN TBL_TIPO_PLANILLAS D ON (D.ID=B.ID_TIPO_PLANILLA AND D.ID=3)
WHERE YEAR (B.F_INICIO_PLANILLA) =VAR_ANIO  AND C.ID IN (SELECT id FROM TBL_EMPLEADOS);
END//
DELIMITER ;

-- Volcando estructura para procedimiento planilla.Sp_Mostrar_Boleta_Quincenal
DELIMITER //
CREATE PROCEDURE `Sp_Mostrar_Boleta_Quincenal`(
	IN `v_id_empleado` VARCHAR(100),
	IN `v_id_planilla` INT
)
    COMMENT 'Sp para mostrar boleta quincenal por empleado y planilla individual '
BEGIN
SET lc_time_names = 'es_ES';
SELECT
A.ID ID_EMPLEADO,
CONCAT(A.NOMBRES,' ',A.APELLIDOS)NOMBRE_COMPLETO,
E.NOMBRE,
DATE_FORMAT(C.F_INICIO_PLANILLA, "%d-%b-%Y") F_INICIO_PLANILLA,
DATE_FORMAT(C.F_FIN_PLANILLA, "%d-%b-%Y") F_FIN_PLANILLA,
B.CALCULO_SALARIO SUELDO_QUINCENAL,
B.BONOS BONOS_PERMANENTES,
B.BONOS_VARIABLES,
B.COMISION,
B.VACACIONES PRIMA_VACACIONAL,
B.DIAS_PLANILLA DIAS_PAGADOS,
B.DIAS_TRABAJADOS ,
(B.SUELDO/2) DEVENGADO,
B.ISSS,
B.AFP,
B.RENTA ISR,
B.PRESTAMOS,
B.FSV,
B.VIATICOS,
B.PGR,
B.IPSFA,
B.FOSAFI,
B.REINTEGROS,
B.DV,
B.BASE_AGRAVADO,
b.ANTICIPOS,
(B.TOTAL_DESCUENTOS+B.PRESTAMOS+B.FSV+B.PGR+B.FOSAFI+B.DV+b.anticipoS)TOTAL_DESCUENTOS,
B.SUELDO_LIQUIDO VALOR_RECIBIDO
FROM TBL_EMPLEADOS A
LEFT JOIN TBL_DETALLE_PLANILLAS B ON (A.ID=B.ID_EMPLEADO)
LEFT JOIN TBL_PLANILLAS  C ON (C.ID=B.ID_PLANILLA)
LEFT JOIN TBL_TIPO_PLANILLAS D ON (D.ID=C.ID_TIPO_PLANILLA)
LEFT JOIN TBL_PUESTOS E ON (E.ID=A.ID_PUESTO)
WHERE (C.ID=V_ID_PLANILLA AND A.ID  IN (V_ID_EMPLEADO))
ORDER BY A.ID ASC;
END//
DELIMITER ;

-- Volcando estructura para procedimiento planilla.Sp_Mostrar_Boleta_Quincenal_Full
DELIMITER //
CREATE PROCEDURE `Sp_Mostrar_Boleta_Quincenal_Full`(
	IN `V_ID_PLANILLA` INT
)
    COMMENT 'sp para obtener todas las boletas  de pago '
BEGIN
SET lc_time_names = 'es_ES';
SELECT
A.ID ID_EMPLEADO,
CONCAT(A.NOMBRES,' ',A.APELLIDOS)NOMBRE_COMPLETO,
E.NOMBRE,
DATE_FORMAT(C.F_INICIO_PLANILLA, "%d-%b-%Y") F_INICIO_PLANILLA,
DATE_FORMAT(C.F_FIN_PLANILLA, "%d-%b-%Y") F_FIN_PLANILLA,
B.CALCULO_SALARIO SUELDO_QUINCENAL,
B.BONOS BONOS_PERMANENTES,
B.BONOS_VARIABLES,
B.COMISION,
B.VACACIONES PRIMA_VACACIONAL,
B.DIAS_PLANILLA DIAS_PAGADOS,
B.DIAS_TRABAJADOS ,
(B.SUELDO/2) DEVENGADO,
B.ISSS,
B.AFP,
B.RENTA ISR,
B.PRESTAMOS,
B.FSV,
B.VIATICOS,
B.PGR,
B.IPSFA,
B.FOSAFI,
B.REINTEGROS,
B.DV,
B.BASE_AGRAVADO,
b.ANTICIPOS,
(B.TOTAL_DESCUENTOS+B.PRESTAMOS+B.FSV+B.PGR+B.FOSAFI+B.DV+b.anticipoS)TOTAL_DESCUENTOS,
B.SUELDO_LIQUIDO VALOR_RECIBIDO
FROM TBL_EMPLEADOS A
LEFT JOIN TBL_DETALLE_PLANILLAS B ON (A.ID=B.ID_EMPLEADO)
LEFT JOIN TBL_PLANILLAS  C ON (C.ID=B.ID_PLANILLA)
LEFT JOIN TBL_TIPO_PLANILLAS D ON (D.ID=C.ID_TIPO_PLANILLA)
LEFT JOIN TBL_PUESTOS E ON (E.ID=A.ID_PUESTO)
WHERE (C.ID=V_ID_PLANILLA)
ORDER BY A.ID ASC;
END//
DELIMITER ;

-- Volcando estructura para procedimiento planilla.sp_Mostrar_carta_renta
DELIMITER //
CREATE PROCEDURE `sp_Mostrar_carta_renta`(
	IN `var_anio` INT
)
    COMMENT 'sp para mostrar el detalle de la carta de renta'
BEGIN
SELECT c.id,concat(c.nombres,' ',c.apellidos)nombrecompleto,
c.nit,CONCAT('01 de enero ',var_anio,' al 31 de diciembre de ',var_anio)fechaperiodo,
(SUM(a.sueldo/2)-(SUM(a.total_descuentos)))total_devengado,
(SUM(a.bonos))bonos,SUM(a.isss)isss,SUM(a.afp)afp,
(SUM(a.renta)+ E.AGUINALDO_RENTA)Renta_retenida,e.EXENTO,e.base_ingreso_isr GRAVADO

FROM tbl_detalle_planillas a 
INNER JOIN tbl_planillas b ON (a.id_planilla=b.id)
INNER JOIN tbl_empleados c ON (a.id_empleado=c.id)
INNER JOIN tbl_tipo_planillas d ON (d.id=b.id_tipo_planilla AND d.id=1)
LEFT JOIN 
(
SELECT c.id id_empleado,(a.tope_ingreso) AGUINALDO,A.RENTA AGUINALDO_RENTA,a.base_ingreso_isr,A.TOTAL_AGUINALDO,
(CASE WHEN A.TOTAL_AGUINALDO > A.TOPE_INGRESO THEN A.TOTAL_AGUINALDO - a.base_ingreso_isr
ELSE A.TOTAL_AGUINALDO END)EXENTO
FROM  tbl_detalle_planillas_ai a 
INNER JOIN tbl_planillas b ON (a.id_planilla=b.id)
INNER JOIN tbl_empleados c ON (a.id_empleado=c.id)
INNER JOIN tbl_tipo_planillas d ON (d.id=b.id_tipo_planilla AND d.id=3)
WHERE (YEAR(b.f_inicio_planilla)=var_anio) AND c.id IN (SELECT id FROM tbl_empleados)
) E ON (E.id_empleado=c.id)

WHERE (YEAR(b.f_inicio_planilla)=var_anio) AND c.id IN (SELECT id FROM tbl_empleados)
GROUP BY  c.id,concat(c.nombres,' ',c.apellidos),c.nit,E.AGUINALDO_RENTA,E.AGUINALDO,e.EXENTO,e.base_ingreso_isr;


END//
DELIMITER ;

-- Volcando estructura para procedimiento planilla.Sp_Mostrar_Constancia_empleo
DELIMITER //
CREATE PROCEDURE `Sp_Mostrar_Constancia_empleo`(
	IN `var_id_empleado` INT
)
    COMMENT 'Sp para mostrar la constancia de empleo del empleado y exportar a pdf'
BEGIN

SELECT A.ID,CONCAT(A.NOMBRES,' ',A.APELLIDOS) NOMBRE_COMPLETO,
A.FECHA_INGRESO,A.FECHA_BAJA,(SELECT Nombre FROM tbl_puestos WHERE id=A.id_puesto)PUESTO
FROM tbl_empleados A
WHERE A.ID = var_id_empleado;
END//
DELIMITER ;

-- Volcando estructura para procedimiento planilla.sp_Mostrar_Constancia_ingreso
DELIMITER //
CREATE PROCEDURE `sp_Mostrar_Constancia_ingreso`(
	IN `var_id_empleado` INT
)
    COMMENT 'sp para mostrar el detalle de la Constancia_ingreso '
BEGIN
SELECT
a.ID_EMPLEADO,
CONCAT(B.NOMBRES,' ',B.APELLIDOS)NOMBRE,
UPPER((SELECT c.nombre FROM tbl_puestos c WHERE c.id = b.id_puesto)) puesto,
b.fecha_ingreso,
b.fecha_baja,
a.SUELDO,
(a.PRESTAMOS*2)PRESTAMOS,
(a.ISSS*2)ISSS,
(a.AFP*2)AFP,
(a.RENTA*2)RENTA,
(A.DV*2)DV,
ROUND((A.DV*2)+(a.PRESTAMOS*2)+(a.ISSS*2)+(a.AFP*2)+(a.RENTA*2),4) TOTAL_DESCUENTOS,
(CASE WHEN C.ESTADO = 'A' THEN C.MONTO ELSE 0 END) OID,
(a.COMISION*2)COMISION,
ROUND(((a.BONOS * 2) + (a.BONOSV  * 2)),4)BONOS
FROM v_detalles_planilla_quincenal a
LEFT JOIN tbl_empleados b ON (a.ID_EMPLEADO=b.id)
LEFT JOIN
(SELECT ID_EMPLEADO,MONTO,ESTADO FROM tbl_asignaciones WHERE ID_CONCEPTO = 23) C
ON (c.ID_EMPLEADO=a.ID_EMPLEADO)
WHERE a.ID_EMPLEADO=var_id_empleado;
END//
DELIMITER ;

-- Volcando estructura para procedimiento planilla.Sp_Mostrar_Finiquito_Indem
DELIMITER //
CREATE PROCEDURE `Sp_Mostrar_Finiquito_Indem`(
	IN `v_anio` INT
)
    COMMENT 'Sp para mostrar el detalle del finiquito de indemnizacion '
BEGIN
  SELECT
	a.id id_empleado,
	concat(a.nombres,' ',a.apellidos)nombre_completo,
	a.dui,
	(case when  YEAR(a.fecha_ingreso)<v_anio then CONCAT('02/01/',v_anio)
	ELSE DATE_FORMAT(a.fecha_ingreso, '%d/%m/%Y')END)fecha_ingreso,
	CONCAT('31/12/',v_anio)fecha_corte,
	b.ingreso_ley inde_recivida,
	b.renta isr,
	b.pgr,
	b.total_descuentos,
	b.liquido_Pagar
	FROM tbl_empleados a
	INNER JOIN tbl_detalle_planillas_ai b ON (a.id=b.id_empleado)
	INNER JOIN tbl_planillas  c ON (c.id=b.id_planilla)
	INNER JOIN tbl_tipo_planillas d ON (d.id=c.id_tipo_planilla AND d.id=4)
	WHERE YEAR(c.f_inicio_planilla)=v_anio AND a.id  IN (SELECT id FROM tbl_empleados);
END//
DELIMITER ;

-- Volcando estructura para procedimiento planilla.Sp_Recalcular_aguinaldo
DELIMITER //
CREATE PROCEDURE `Sp_Recalcular_aguinaldo`(
	IN `v_Id_planilla` INT
)
    COMMENT 'Sp para el recarlculo de aguinaldo'
BEGIN
  
  	DECLARE var_final INTEGER DEFAULT 0;
   DECLARE var_id_empleado INT(11) ;
   DECLARE var_fecha_corte DATETIME ;
   DECLARE var_id_empleado_select INT DEFAULT NULL;
   DECLARE var_tiempo_lab_corte DECIMAL(20,8) ;
   DECLARE var_dias_laborados INT(11) ;
   DECLARE var_tiempo_lab_ltrs varchar(200) ;
   DECLARE var_comision DECIMAL(20,8) ;
   DECLARE var_sueldo DECIMAL(20,8) ;
   DECLARE var_ingreso_ley DECIMAL(20,8) ;
   DECLARE var_ingreso_politica DECIMAL(20,8) ;
   DECLARE var_total_agui DECIMAL(20,8) ;
   DECLARE var_tope_ingreso DECIMAL(20,8) ;
   DECLARE var_base_isr DECIMAL(20,8) ;
   DECLARE var_renta DECIMAL(20,8) ;
   DECLARE var_pgr DECIMAL(20,8) ;
   DECLARE var_total_descuentos DECIMAL(20,8) ;
   DECLARE var_liquido_pagar DECIMAL(20,8) ;
   DECLARE var_Id_planilla INT(11) DEFAULT v_Id_planilla;
   DECLARE var_created_at DATETIME DEFAULT NOW();
   DECLARE var_updated_at DATETIME DEFAULT NOW();
   
  DECLARE cursor1 CURSOR FOR

SELECT 
	ID_EMPLEADO,
	FECHACORTE,
	TIEMPO_LAB_CORTE,
	DIAS_LABORADOS,
	TIEMPOLABORADO,
	COMISION,
	SUELDO,
	AGUIINALDO_LEY,
	COMPLEMENTO_POLITICA,
	TOTAL_AGUINALDO,
	TOPE_AGUINALDO,
	BASE_RETENCION,
	RENTA,
	PGR,
	TOTAL_RETENIDO,
	LQUIDO_PAGAR
FROM v_detalles_planilla_aguinaldo;

  DECLARE CONTINUE HANDLER FOR NOT FOUND SET var_final = 1;
  OPEN cursor1;
  bucle: LOOP
   FETCH cursor1
  INTO
	
	var_id_empleado,
   var_fecha_corte,
   var_tiempo_lab_corte,
   var_dias_laborados,
   var_tiempo_lab_ltrs, 
   var_comision,
   var_sueldo,
   var_ingreso_ley,
   var_ingreso_politica,
   var_total_agui,
   var_tope_ingreso,
	var_base_isr,
	var_renta,
	var_pgr,
	var_total_descuentos,
	var_liquido_pagar
	;
  IF var_final = 1 THEN
      LEAVE bucle;
    END IF;
    SELECT COUNT(*) INTO var_id_empleado_select FROM tbl_detalle_planillas_ai WHERE id_empleado = var_id_empleado AND id_planilla = v_Id_planilla;
	
	IF var_id_empleado_select = 0 THEN
	INSERT INTO tbl_detalle_planillas_ai 
	(
	ID_EMPLEADO,
	FECHA_CORTE,
	TIEMPO_LAB_CORTE,
	DIAS_LABORADOS,
	TIEMPO_LABORADO_LTRS,
	COMISION,
	SUELDO,
	INGRESO_LEY,
	INGRESO_POLITICA,
	TOTAL_AGUINALDO,
	TOPE_INGRESO,
	BASE_INGRESO_ISR,
	RENTA,
	PGR,
	TOTAL_DESCUENTOS,
	LIQUIDO_PAGAR,
 	id_planilla,
	created_at,
	updated_at
	)
	VALUES 
	(
	var_id_empleado,
   var_fecha_corte,
   var_tiempo_lab_corte,
   var_dias_laborados,
   var_tiempo_lab_ltrs,
   var_comision,
   var_sueldo,
   var_ingreso_ley,
   var_ingreso_politica,
   var_total_agui,
   var_tope_ingreso,
	var_base_isr,
	var_renta,
	var_pgr,
	var_total_descuentos,
	var_liquido_pagar,
	var_Id_planilla,
 	var_created_at,
   var_updated_at
	);
	
	ELSE
   UPDATE tbl_detalle_planillas_ai
	SET
	ID_EMPLEADO = var_id_empleado,
	FECHA_CORTE = var_fecha_corte,
	TIEMPO_LAB_CORTE = var_tiempo_lab_corte,
	DIAS_LABORADOS = var_dias_laborados,
	TIEMPO_LABORADO_LTRS = var_tiempo_lab_ltrs,
	COMISION = var_comision,
	SUELDO = var_sueldo,
	INGRESO_LEY = var_ingreso_ley,
	INGRESO_POLITICA = var_ingreso_politica,
	TOTAL_AGUINALDO = var_total_agui,
	TOPE_INGRESO = var_tope_ingreso,
	BASE_INGRESO_ISR = var_base_isr,
	RENTA = var_renta,
	PGR = var_pgr,
	TOTAL_DESCUENTOS = var_total_descuentos,
	LIQUIDO_PAGAR = var_liquido_pagar,
 	id_planilla = var_Id_planilla,
	created_at = var_created_at,
	updated_at = var_updated_at
	
  WHERE id_planilla=v_Id_planilla AND id_empleado=var_id_empleado;
  END IF;
  END LOOP bucle;
  CLOSE cursor1;
END//
DELIMITER ;

-- Volcando estructura para procedimiento planilla.Sp_Recalcular_indemnizacion
DELIMITER //
CREATE PROCEDURE `Sp_Recalcular_indemnizacion`(
	IN `v_Id_planilla` INT
)
    COMMENT 'Sp para mostrar el recalculo de indemnizacion'
BEGIN
  
  	DECLARE var_final INTEGER DEFAULT 0;
   DECLARE var_id_empleado INT(11) ;
   DECLARE var_fecha_corte DATETIME ;
   DECLARE var_id_empleado_select INT DEFAULT NULL;
   DECLARE var_tiempo_lab_corte DECIMAL(20,8) ;
   DECLARE var_dias_laborados INT(11) ;
   DECLARE var_tiempo_lab_ltrs varchar(200) ;
   DECLARE var_comision DECIMAL(20,8) ;
   DECLARE var_sueldo DECIMAL(20,8) ;
   DECLARE var_ingreso_ley DECIMAL(20,8) ;
   DECLARE var_ingreso_politica DECIMAL(20,8) ;
   DECLARE var_total_agui DECIMAL(20,8) ;
   DECLARE var_tope_ingreso DECIMAL(20,8) ;
   DECLARE var_base_isr DECIMAL(20,8) ;
   DECLARE var_renta DECIMAL(20,8) ;
   DECLARE var_pgr DECIMAL(20,8) ;
   DECLARE var_total_descuentos DECIMAL(20,8) ;
   DECLARE var_liquido_pagar DECIMAL(20,8) ;
   DECLARE var_Id_planilla INT(11) DEFAULT v_Id_planilla;
   DECLARE var_created_at DATETIME DEFAULT NOW();
   DECLARE var_updated_at DATETIME DEFAULT NOW();
   
  DECLARE cursor1 CURSOR FOR

SELECT 
	ID_EMPLEADO,
	FECHACORTE,
	TIEMPO_LAB_CORTE,
	DIAS_LABORADOS,
	TIEMPOLABORADO,
	COMISION,
	SUELDO,
	INDEMNIZACION,
	0 COMPLEMENTO_POLITICA,
	0 TOTAL_AGUINALDO,
   TOPE_INDEMNIZACION,
	BASE_RETENCION,
	RENTA,
	PGR,
	TOTAL_RETENIDO,
	LQUIDO_PAGAR 
FROM v_detalles_planilla_indemnizacion;


  DECLARE CONTINUE HANDLER FOR NOT FOUND SET var_final = 1;
  OPEN cursor1;
  bucle: LOOP
   FETCH cursor1
  INTO
	
	var_id_empleado,
   var_fecha_corte,
   var_tiempo_lab_corte,
   var_dias_laborados,
   var_tiempo_lab_ltrs, 
   var_comision,
   var_sueldo,
   var_ingreso_ley,
   var_ingreso_politica,
   var_total_agui,
   var_tope_ingreso,
	var_base_isr,
	var_renta,
	var_pgr,
	var_total_descuentos,
	var_liquido_pagar
	;
  IF var_final = 1 THEN
      LEAVE bucle;
    END IF;
    SELECT COUNT(*) INTO var_id_empleado_select FROM tbl_detalle_planillas_ai WHERE id_empleado = var_id_empleado AND id_planilla = v_Id_planilla;
	
	IF var_id_empleado_select = 0 THEN
	INSERT INTO tbl_detalle_planillas_ai 
	(
	ID_EMPLEADO,
	FECHA_CORTE,
	TIEMPO_LAB_CORTE,
	DIAS_LABORADOS,
	TIEMPO_LABORADO_LTRS,
	COMISION,
	SUELDO,
	INGRESO_LEY,
	INGRESO_POLITICA,
	TOTAL_AGUINALDO,
	TOPE_INGRESO,
	BASE_INGRESO_ISR,
	RENTA,
	PGR,
	TOTAL_DESCUENTOS,
	LIQUIDO_PAGAR,
 	id_planilla,
	created_at,
	updated_at
	)
	VALUES 
	(
	var_id_empleado,
   var_fecha_corte,
   var_tiempo_lab_corte,
   var_dias_laborados,
   var_tiempo_lab_ltrs,
   var_comision,
   var_sueldo,
   var_ingreso_ley,
   var_ingreso_politica,
   var_total_agui,
   var_tope_ingreso,
	var_base_isr,
	var_renta,
	var_pgr,
	var_total_descuentos,
	var_liquido_pagar,
	var_Id_planilla,
 	var_created_at,
   var_updated_at
	);
	
	ELSE
   UPDATE tbl_detalle_planillas_ai
	SET
	ID_EMPLEADO = var_id_empleado,
	FECHA_CORTE = var_fecha_corte,
	TIEMPO_LAB_CORTE = var_tiempo_lab_corte,
	DIAS_LABORADOS = var_dias_laborados,
	TIEMPO_LABORADO_LTRS = var_tiempo_lab_ltrs,
	COMISION = var_comision,
	SUELDO = var_sueldo,
	INGRESO_LEY = var_ingreso_ley,
	INGRESO_POLITICA = var_ingreso_politica,
	TOTAL_AGUINALDO = var_total_agui,
	TOPE_INGRESO = var_tope_ingreso,
	BASE_INGRESO_ISR = var_base_isr,
	RENTA = var_renta,
	PGR = var_pgr,
	TOTAL_DESCUENTOS = var_total_descuentos,
	LIQUIDO_PAGAR = var_liquido_pagar,
 	id_planilla = var_Id_planilla,
	created_at = var_created_at,
	updated_at = var_updated_at
	
  WHERE id_planilla=v_Id_planilla AND id_empleado=var_id_empleado;
  END IF;
  END LOOP bucle;
  CLOSE cursor1;
END//
DELIMITER ;

-- Volcando estructura para procedimiento planilla.Sp_Recalcular_planilla
DELIMITER //
CREATE PROCEDURE `Sp_Recalcular_planilla`(
	IN `v_Id_planilla` INT
)
    COMMENT 'Sp para el recalculo de planilla quincenal'
BEGIN
  DECLARE var_final INTEGER DEFAULT 0;
   DECLARE var_id_empleado INT(11) ;
   DECLARE var_id_empleado_select INT DEFAULT NULL;
	DECLARE var_sueldo DECIMAL(20,8) ;
	DECLARE var_dias_planilla INT(11) ;
	DECLARE var_dias_trabajados INT(11) ;
	DECLARE var_calculo_salario DECIMAL(20,8) ;
	DECLARE var_prestamos DECIMAL(20,8) ;
	DECLARE var_anticipos DECIMAL(20,8) ;
	DECLARE var_bonos DECIMAL(20,8) ;
	DECLARE var_bonos_variables DECIMAL(20,8) ;
	DECLARE var_vacaciones DECIMAL(20,8) ;
	DECLARE var_comision DECIMAL(20,8) ;
	DECLARE var_isss DECIMAL(20,8) ;
	DECLARE var_afp DECIMAL(20,8) ;
	DECLARE var_ipsfa DECIMAL(20,8) ;
	DECLARE var_fosafi DECIMAL(20,8) ;
	DECLARE var_renta DECIMAL(20,8) ;
	DECLARE var_total_descuentos DECIMAL(20,8) ;
	DECLARE var_pgr DECIMAL(20,8) ;
	DECLARE var_fsv DECIMAL(20,8) ;
	DECLARE var_dv DECIMAL(20,8) ;
	DECLARE var_viaticos DECIMAL(20,8) ;
	DECLARE var_reintegros DECIMAL(20,8) ;
	DECLARE var_sueldo_liquido DECIMAL(20,8) ;
	DECLARE var_Id_planilla INT(11) DEFAULT v_Id_planilla;
	DECLARE var_created_at DATETIME DEFAULT NOW();
   DECLARE var_updated_at DATETIME DEFAULT NOW();
  DECLARE cursor1 CURSOR FOR
SELECT
ID_EMPLEADO,
SUELDO,
DIAS_QUINCENA,
DIAS_TRABAJADOS,
calculo_salario,
PRESTAMOS,
ANTICIPO,
BONOS,
BONOSV,
VACACION,
COMISION,
ISSS,
AFP,
IPSFA,
FOSAFI,
RENTA,
TOTAL_DESCUENTOS,
PGR,
FSV,
DV,
VIATICOS,
REINTEGRO ,
LIQUIDO_PAGAR
FROM v_detalles_planilla_quincenal;
  DECLARE CONTINUE HANDLER FOR NOT FOUND SET var_final = 1;
  OPEN cursor1;
  bucle: LOOP
   FETCH cursor1
	INTO
	var_id_empleado,
	var_sueldo,
	var_dias_planilla,
	var_dias_trabajados,
	var_calculo_salario,
	var_prestamos,
	var_anticipos,
	var_bonos,
	var_bonos_variables,
	var_vacaciones,
	var_comision,
	var_isss,
	var_afp,
	var_ipsfa,
	var_fosafi,
	var_renta,
	var_total_descuentos,
	var_pgr,
	var_fsv,
	var_dv,
	var_viaticos,
	var_reintegros,
	var_sueldo_liquido
	;
  IF var_final = 1 THEN
      LEAVE bucle;
    END IF;
    SELECT COUNT(*) INTO var_id_empleado_select FROM tbl_detalle_planillas WHERE id_empleado = var_id_empleado AND id_planilla = v_Id_planilla;
	
	IF var_id_empleado_select = 0 THEN
	  INSERT INTO tbl_detalle_planillas
	(id_empleado,
	sueldo,
	dias_planilla,
	dias_trabajados,
	calculo_salario,
	prestamos,
	anticipos,
	bonos,
	bonos_variables,
	vacaciones,
	comision,
	isss,
	afp,
	ipsfa,
	fosafi,
	renta,
	total_descuentos,
	pgr,
	fsv,
	dv,
	viaticos,
	reintegros,
	sueldo_liquido,
	id_planilla,
	created_at,
	updated_at
	)
	VALUES
	(var_id_empleado,
	var_sueldo,
	var_dias_planilla,
	var_dias_trabajados,
	var_calculo_salario,
	var_prestamos,
	var_anticipos,
	var_bonos,
	var_bonos_variables,
	var_vacaciones,
	var_comision,
	var_isss,
	var_afp,
	var_ipsfa,
	var_fosafi,
	var_renta,
	var_total_descuentos,
	var_pgr,
	var_fsv,
	var_dv,
	var_viaticos,
	var_reintegros,
	var_sueldo_liquido,
	v_Id_planilla,
	var_created_at,
	var_updated_at
	);
	
	ELSE
   UPDATE tbl_detalle_planillas
	SET
	sueldo = var_sueldo,
	dias_planilla = var_dias_planilla,
	dias_trabajados = var_dias_trabajados,
	calculo_salario = var_calculo_salario,
	prestamos = var_prestamos,
	anticipos = var_anticipos,
	bonos = var_bonos,
	bonos_variables = var_bonos_variables,
	vacaciones = var_vacaciones,
	comision = var_comision,
	isss = var_isss,
	afp = var_afp,
	ipsfa = var_ipsfa,
	fosafi = var_fosafi,
	renta = var_renta,
	total_descuentos = var_total_descuentos,
	pgr = var_pgr,
	fsv = var_fsv,
	dv = var_dv,
	viaticos = var_viaticos,
	reintegros = var_reintegros,
	sueldo_liquido = var_sueldo_liquido,
	updated_at = var_updated_at
	
	WHERE id_planilla=v_Id_planilla AND id_empleado=var_id_empleado;
  END IF;
  END LOOP bucle;
  CLOSE cursor1;
END//
DELIMITER ;

-- Volcando estructura para procedimiento planilla.Sp_Recalcular_Planilla_Mensual
DELIMITER //
CREATE PROCEDURE `Sp_Recalcular_Planilla_Mensual`(
	IN `v_Id_planilla` INT,
	IN `v_Mes_Planilla` INT,
	IN `v_Anio_Planilla` INT
)
    COMMENT 'Sp para el recalculo de planilla Mensual'
BEGIN 
   /*INICIO DE VARIABLES DE ASIGNACION*/
	DECLARE var_final INTEGER DEFAULT 0;
   DECLARE var_id_empleado INT(11);
   DECLARE var_id_empleado_select INT DEFAULT NULL;
	DECLARE var_sueldo DECIMAL(20,8);
	DECLARE var_dias_planilla INT(11);
	DECLARE var_dias_trabajados INT(11);
	DECLARE var_calculo_salario DECIMAL(20,8);
	DECLARE var_prestamos DECIMAL(20,8);
	DECLARE var_anticipos DECIMAL(20,8);
	DECLARE var_bonos DECIMAL(20,8);
	DECLARE var_bonos_variables DECIMAL(20,8);
	DECLARE var_vacaciones DECIMAL(20,8);
	DECLARE var_comision DECIMAL(20,8);
	DECLARE var_isss DECIMAL(20,8);
	DECLARE var_afp DECIMAL(20,8);
	DECLARE var_ipsfa DECIMAL(20,8);
	DECLARE var_fosafi DECIMAL(20,8);
	DECLARE var_renta DECIMAL(20,8);
	DECLARE var_total_descuentos DECIMAL(20,8);
	DECLARE var_pgr DECIMAL(20,8);
	DECLARE var_fsv DECIMAL(20,8);
	DECLARE var_dv DECIMAL(20,8);
	DECLARE var_viaticos DECIMAL(20,8);
	DECLARE var_reintegros DECIMAL(20,8);
	DECLARE var_sueldo_liquido DECIMAL(20,8);
	DECLARE var_Id_planilla INT(11) DEFAULT v_Id_planilla;
	DECLARE var_created_at DATETIME DEFAULT NOW();
   DECLARE var_updated_at DATETIME DEFAULT NOW();
   /*FIN DE VARIABLES DE ASIGNACION*/
--  
   DECLARE cursor1 CURSOR FOR
--	
SELECT tbl_general.* FROM (SELECT a.id_empleado ID_EMPLEADO,
	SUM(a.calculo_salario) SUELDO,
	SUM(a.dias_planilla) DIAS_MENSUAL, 
	SUM(a.dias_trabajados) DIAS_TRABAJADOS,
	SUM(a.calculo_salario) CALCULO_SALARIO, 
	SUM(a.prestamos)PRESTAMOS, 
	SUM(a.anticipos)ANTICIPOS,
	SUM(a.bonos)BONOS,
	SUM(a.bonos_variables)BONOSV,
	SUM(a.vacaciones)VACACION,
	SUM(a.comision)COMISION, 
	SUM(a.isss)ISS,
	SUM(a.afp)AFP,
	SUM(a.ipsfa)IPSFA,
	SUM(a.fosafi)FOSAFI,
	SUM(a.renta)RENTA, 
	SUM(a.total_descuentos)TOTAL_DESCUENTOS,
SUM(a.pgr)PGR,
	SUM(a.fsv)FSV, 
	SUM(a.dv)DV, 
	SUM(a.viaticos)VIATICOS,
	 SUM(a.reintegros)REINTEGRO,
	SUM(a.sueldo_liquido)LIQUIDO_PAGAR
	FROM tbl_detalle_planillas a
	LEFT JOIN tbl_planillas b ON a.id_planilla = b.id
	WHERE (MONTH(b.f_inicio_planilla) = v_Mes_Planilla AND YEAR(b.f_inicio_planilla) = v_Anio_Planilla) AND b.id_tipo_planilla = 1
	GROUP BY a.id_empleado) tbl_general INNER JOIN tbl_empleados d ON tbl_general.id_empleado = d.id;
	-- WHERE d.estado='A';
--  	  
  DECLARE CONTINUE HANDLER FOR NOT FOUND SET var_final = 1;
--
  OPEN cursor1;
--
  bucle: LOOP
--
   FETCH cursor1 
	INTO 
	var_id_empleado,
	var_sueldo,
	var_dias_planilla,
	var_dias_trabajados,
	var_calculo_salario,
	var_prestamos,
	var_anticipos,
	var_bonos,
	var_bonos_variables,
	var_vacaciones,
	var_comision,
	var_isss,
	var_afp,
	var_ipsfa,
	var_fosafi,
	var_renta,
	var_total_descuentos,
	var_pgr,
	var_fsv,
	var_dv,
	var_viaticos,
	var_reintegros,
	var_sueldo_liquido
	;
--
-- 
  IF var_final = 1 THEN
      LEAVE bucle;
    END IF;
--

SELECT COUNT(*) INTO var_id_empleado_select FROM tbl_detalle_planillas WHERE id_empleado = var_id_empleado AND id_planilla = v_Id_planilla;

	
	IF var_id_empleado_select = 0 THEN
   INSERT INTO tbl_detalle_planillas 
	(id_empleado,
	sueldo,
	dias_planilla,
	dias_trabajados,
	calculo_salario,
	prestamos,
	anticipos,
	bonos,
	bonos_variables,
	vacaciones,
	comision,
	isss,
	afp,
	ipsfa,
	fosafi,
	renta,
	total_descuentos,
	pgr,
	fsv,
	dv,
	viaticos,
	reintegros,
	sueldo_liquido,
	id_planilla,
	created_at,
	updated_at
	)
	VALUES 
	(var_id_empleado,
	var_sueldo,
	var_dias_planilla,
	var_dias_trabajados,
	var_calculo_salario,
	var_prestamos,
	var_anticipos,
	var_bonos,
	var_bonos_variables,
	var_vacaciones,
	var_comision,
	var_isss,
	var_afp,
	var_ipsfa,
	var_fosafi,
	var_renta,
	var_total_descuentos,
	var_pgr,
	var_fsv,
	var_dv,
	var_viaticos,
	var_reintegros,
	var_sueldo_liquido,
	v_Id_planilla,
	var_created_at,
	var_updated_at
	);
	ELSE 
	
   UPDATE tbl_detalle_planillas
	SET 
	sueldo = var_sueldo,
	dias_planilla = var_dias_planilla,
	dias_trabajados = var_dias_trabajados,
	calculo_salario = var_calculo_salario,
	prestamos = var_prestamos,
	anticipos = var_anticipos,
	bonos = var_bonos,
	bonos_variables = var_bonos_variables,
	vacaciones = var_vacaciones,
	comision = var_comision,
	isss = var_isss,
	afp = var_afp,
	ipsfa = var_ipsfa,
	fosafi = var_fosafi,
	renta = var_renta,
	total_descuentos = var_total_descuentos,
	pgr = var_pgr,
	fsv = var_fsv,
	dv = var_dv,
	viaticos = var_viaticos,
	reintegros = var_reintegros,
	sueldo_liquido = var_sueldo_liquido,
	updated_at = var_updated_at
	
	WHERE id_planilla=v_Id_planilla AND id_empleado=var_id_empleado;
  END IF;

  END LOOP bucle;
  CLOSE cursor1;	 
		 END//
DELIMITER ;

-- Volcando estructura para tabla planilla.tbl_agencias
CREATE TABLE IF NOT EXISTS `tbl_agencias` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id de la agencia',
  `nombre` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL COMMENT 'nombre de la agencia',
  `direccion` text COLLATE utf8mb4_spanish2_ci COMMENT 'direccion donde esta ubicada la agencia',
  `telefono` varchar(25) COLLATE utf8mb4_spanish2_ci DEFAULT NULL COMMENT 'telefono de la agencia',
  `created_at` datetime DEFAULT NULL COMMENT 'Campo para almacenar la hora y la fecha en que se inserto el registro',
  `updated_at` datetime DEFAULT NULL COMMENT 'Campo para almacenar la hora y la fecha en que se actualizo el registro',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci COMMENT='Tabla de agencias donde se almacena la agencia de los empleados a que pretenece';

-- Volcando datos para la tabla planilla.tbl_agencias: ~3 rows (aproximadamente)
INSERT INTO `tbl_agencias` (`id`, `nombre`, `direccion`, `telefono`, `created_at`, `updated_at`) VALUES
	(1, 'AGENCIA OLIMPICA', '71 Avenida Sur 3719, San Salvador', '2561-2300', '2022-12-30 10:37:48', '2022-12-30 10:37:48'),
	(2, 'AGENCIA MERLIOT', 'Centro Comercial Plaza Merliot Tercer Nivel Local #396s', '2288-2103', '2022-12-30 10:37:48', '2023-01-05 15:35:04'),
	(3, 'AGENCIA ROOSEVELT', 'Alameda Roosevelt y 37 Av.Norte,N° 2002, 2300, PBX.2239, San Salvador', '2561-2300', '2022-12-30 10:37:48', '2022-12-30 10:37:48');

-- Volcando estructura para tabla planilla.tbl_asignaciones
CREATE TABLE IF NOT EXISTS `tbl_asignaciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Campo de identificador de la tabla',
  `id_empleado` int(11) NOT NULL COMMENT 'Campo de  relacionador de la tambla de empleados ',
  `id_concepto` int(11) NOT NULL COMMENT 'Campo de relacion de la tabla de conceptos',
  `id_tipo_asignacion` int(11) NOT NULL COMMENT 'Campo de relacion de la tabla tipo asignacion donde define la asigacion',
  `monto` decimal(10,2) DEFAULT '0.00' COMMENT 'Campo operable que se ocupa en algunos calculos para la pllanilla',
  `estado` enum('A','I') COLLATE utf8mb4_spanish2_ci NOT NULL DEFAULT 'A' COMMENT 'Campo para definir el estado de la Asignacion',
  `created_at` datetime DEFAULT NULL COMMENT 'Campo para almacenar la hora y la fecha en que se inserto el registro',
  `updated_at` datetime DEFAULT NULL COMMENT 'Campo para almacenar la hora y la fecha en que se actualizo el registro\r\n',
  PRIMARY KEY (`id`),
  KEY `fk_tbl_asignaciones_tbl_empleados` (`id_empleado`),
  KEY `fk_tbl_asignaciones_tbl_conceptos` (`id_concepto`),
  KEY `fk_tbl_tipo_asignaciones` (`id_tipo_asignacion`),
  CONSTRAINT `fk_tbl_asignaciones_tbl_conceptos` FOREIGN KEY (`id_concepto`) REFERENCES `tbl_conceptos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_tbl_asignaciones_tbl_empleados` FOREIGN KEY (`id_empleado`) REFERENCES `tbl_empleados` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_tbl_tipo_asignaciones` FOREIGN KEY (`id_tipo_asignacion`) REFERENCES `tbl_tipo_asignaciones` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2409 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci COMMENT='tabla de asignaciones donde se inserta las asignaciones que tendra cada empleado para poder generar el porceso de la planialla aqui es donde se lleva el control de las asignaciones y los montos para  las planillas\r\n';

-- Volcando datos para la tabla planilla.tbl_asignaciones: ~1,913 rows (aproximadamente)
INSERT INTO `tbl_asignaciones` (`id`, `id_empleado`, `id_concepto`, `id_tipo_asignacion`, `monto`, `estado`, `created_at`, `updated_at`) VALUES
	(1, 1, 1, 1, 0.00, 'A', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(2, 1, 2, 1, 0.00, 'A', '2023-01-19 15:18:35', '2023-01-30 14:49:27'),
	(3, 1, 4, 1, 0.00, 'A', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(4, 1, 5, 1, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(5, 1, 6, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(6, 1, 7, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(7, 1, 8, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(9, 1, 10, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(10, 1, 11, 2, 30.00, 'A', '2023-01-19 15:18:35', '2023-02-02 17:42:14'),
	(11, 1, 12, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(12, 1, 13, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(13, 1, 14, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(14, 1, 15, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(15, 1, 16, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(16, 1, 17, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(17, 1, 18, 2, 0.00, 'A', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(18, 1, 19, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(19, 1, 20, 2, 0.00, 'A', '2023-01-19 15:18:35', '2023-01-30 14:49:39'),
	(21, 1, 22, 2, 0.00, 'A', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(22, 2, 1, 1, 0.00, 'A', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(23, 2, 2, 1, 0.00, 'A', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(24, 2, 4, 1, 0.00, 'A', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(25, 2, 5, 1, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(26, 2, 6, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(27, 2, 7, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(28, 2, 8, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(30, 2, 10, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(31, 2, 11, 2, 29.00, 'A', '2023-01-19 15:18:35', '2023-02-14 16:44:26'),
	(32, 2, 12, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(33, 2, 13, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(34, 2, 14, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(35, 2, 15, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(36, 2, 16, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(37, 2, 17, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(38, 2, 18, 2, 0.00, 'A', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(39, 2, 19, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(40, 2, 20, 2, 0.00, 'A', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(42, 2, 22, 2, 0.00, 'A', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(43, 3, 1, 1, 0.00, 'A', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(44, 3, 2, 1, 0.00, 'A', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(45, 3, 4, 1, 0.00, 'A', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(46, 3, 5, 1, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(47, 3, 6, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(48, 3, 7, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(49, 3, 8, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(51, 3, 10, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(52, 3, 11, 2, 30.00, 'A', '2023-01-19 15:18:35', '2023-02-02 15:58:12'),
	(53, 3, 12, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(54, 3, 13, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-02-07 17:41:05'),
	(55, 3, 14, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-02-07 17:41:13'),
	(56, 3, 15, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(57, 3, 16, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(58, 3, 17, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(59, 3, 18, 2, 0.00, 'A', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(60, 3, 19, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(61, 3, 20, 2, 0.00, 'A', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(63, 3, 22, 2, 0.00, 'A', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(64, 4, 1, 1, 0.00, 'A', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(65, 4, 2, 1, 0.00, 'A', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(66, 4, 4, 1, 0.00, 'A', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(67, 4, 5, 1, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(68, 4, 6, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(69, 4, 7, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(70, 4, 8, 2, 26.62, 'A', '2023-01-19 15:18:35', '2023-02-02 17:44:16'),
	(72, 4, 10, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(73, 4, 11, 2, 56.00, 'A', '2023-01-19 15:18:35', '2023-02-14 16:48:22'),
	(74, 4, 12, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(75, 4, 13, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(76, 4, 14, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(77, 4, 15, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(78, 4, 16, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(79, 4, 17, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(80, 4, 18, 2, 0.00, 'A', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(81, 4, 19, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(82, 4, 20, 2, 0.00, 'A', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(84, 4, 22, 2, 0.00, 'A', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(85, 5, 1, 1, 0.00, 'A', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(86, 5, 2, 1, 0.00, 'A', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(87, 5, 4, 1, 0.00, 'A', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(88, 5, 5, 1, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(89, 5, 6, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(90, 5, 7, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(91, 5, 8, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(93, 5, 10, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(94, 5, 11, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(95, 5, 12, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(96, 5, 13, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-02-07 17:41:25'),
	(97, 5, 14, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-02-07 17:41:33'),
	(98, 5, 15, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(99, 5, 16, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(100, 5, 17, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(101, 5, 18, 2, 0.00, 'A', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(102, 5, 19, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(103, 5, 20, 2, 0.00, 'A', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(105, 5, 22, 2, 0.00, 'A', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(106, 6, 1, 1, 0.00, 'A', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(107, 6, 2, 1, 0.00, 'A', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(108, 6, 4, 1, 0.00, 'A', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(109, 6, 5, 1, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(110, 6, 6, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(111, 6, 7, 2, 50.00, 'A', '2023-01-19 15:18:35', '2023-02-02 17:43:17'),
	(112, 6, 8, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(114, 6, 10, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(115, 6, 11, 2, 41.00, 'A', '2023-01-19 15:18:35', '2023-02-14 16:43:30'),
	(116, 6, 12, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(117, 6, 13, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(118, 6, 14, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(119, 6, 15, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(120, 6, 16, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(121, 6, 17, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(122, 6, 18, 2, 0.00, 'A', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(123, 6, 19, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(124, 6, 20, 2, 0.00, 'A', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(126, 6, 22, 2, 0.00, 'A', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(127, 7, 1, 1, 0.00, 'A', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(128, 7, 2, 1, 0.00, 'A', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(129, 7, 4, 1, 0.00, 'A', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(130, 7, 5, 1, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(131, 7, 6, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(132, 7, 7, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(133, 7, 8, 2, 102.72, 'A', '2023-01-19 15:18:35', '2023-02-02 17:42:57'),
	(135, 7, 10, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(136, 7, 11, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(137, 7, 12, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(138, 7, 13, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(139, 7, 14, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(140, 7, 15, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(141, 7, 16, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(142, 7, 17, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(143, 7, 18, 2, 0.00, 'A', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(144, 7, 19, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(145, 7, 20, 2, 0.00, 'A', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(147, 7, 22, 2, 0.00, 'A', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(148, 8, 1, 1, 0.00, 'A', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(149, 8, 2, 1, 0.00, 'A', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(150, 8, 4, 1, 0.00, 'A', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(151, 8, 5, 1, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(152, 8, 6, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(153, 8, 7, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(154, 8, 8, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(156, 8, 10, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(157, 8, 11, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(158, 8, 12, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(159, 8, 13, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(160, 8, 14, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(161, 8, 15, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(162, 8, 16, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(163, 8, 17, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(164, 8, 18, 2, 0.00, 'A', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(165, 8, 19, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(166, 8, 20, 2, 0.00, 'A', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(168, 8, 22, 2, 0.00, 'A', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(169, 9, 1, 1, 0.00, 'A', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(170, 9, 2, 1, 0.00, 'A', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(171, 9, 4, 1, 0.00, 'A', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(172, 9, 5, 1, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(173, 9, 6, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(174, 9, 7, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(175, 9, 8, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(177, 9, 10, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(178, 9, 11, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-02-10 09:15:27'),
	(179, 9, 12, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(180, 9, 13, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(181, 9, 14, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(182, 9, 15, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(183, 9, 16, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(184, 9, 17, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(185, 9, 18, 2, 0.00, 'A', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(186, 9, 19, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(187, 9, 20, 2, 0.00, 'A', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(189, 9, 22, 2, 0.00, 'A', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(190, 10, 1, 1, 0.00, 'A', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(191, 10, 2, 1, 0.00, 'I', '2023-01-19 15:18:35', '2023-02-02 14:16:11'),
	(192, 10, 4, 1, 0.00, 'A', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(193, 10, 5, 1, 0.00, 'A', '2023-01-19 15:18:35', '2023-02-02 14:16:25'),
	(194, 10, 6, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(195, 10, 7, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(196, 10, 8, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(198, 10, 10, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(199, 10, 11, 2, 0.00, 'A', '2023-01-19 15:18:35', '2023-02-10 09:18:43'),
	(200, 10, 12, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(201, 10, 13, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-02-07 17:41:56'),
	(202, 10, 14, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-02-07 17:42:03'),
	(203, 10, 15, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(204, 10, 16, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(205, 10, 17, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(206, 10, 18, 2, 0.00, 'A', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(207, 10, 19, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(208, 10, 20, 2, 0.00, 'A', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(210, 10, 22, 2, 0.00, 'A', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(211, 11, 1, 1, 0.00, 'A', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(212, 11, 2, 1, 0.00, 'A', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(213, 11, 4, 1, 0.00, 'A', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(214, 11, 5, 1, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(215, 11, 6, 2, 30.00, 'A', '2023-01-19 15:18:35', '2023-02-02 17:44:36'),
	(216, 11, 7, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(217, 11, 8, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(219, 11, 10, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(220, 11, 11, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(221, 11, 12, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(222, 11, 13, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(223, 11, 14, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(224, 11, 15, 2, 100.00, 'I', '2023-01-19 15:18:35', '2023-02-07 16:26:32'),
	(225, 11, 16, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(226, 11, 17, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(227, 11, 18, 2, 0.00, 'A', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(228, 11, 19, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(229, 11, 20, 2, 0.00, 'A', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(231, 11, 22, 2, 0.00, 'A', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(232, 12, 1, 1, 0.00, 'A', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(233, 12, 2, 1, 0.00, 'I', '2023-01-19 15:18:35', '2023-02-02 14:14:15'),
	(234, 12, 4, 1, 0.00, 'I', '2023-01-19 15:18:35', '2023-02-02 14:14:08'),
	(235, 12, 5, 1, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(236, 12, 6, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(237, 12, 7, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(238, 12, 8, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(240, 12, 10, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(241, 12, 11, 2, 46.00, 'A', '2023-01-19 15:18:35', '2023-02-14 16:49:18'),
	(242, 12, 12, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(243, 12, 13, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(244, 12, 14, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(245, 12, 15, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(246, 12, 16, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(247, 12, 17, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(248, 12, 18, 2, 0.00, 'A', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(249, 12, 19, 2, 0.00, 'I', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(250, 12, 20, 2, 0.00, 'A', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(252, 12, 22, 2, 0.00, 'A', '2023-01-19 15:18:35', '2023-01-19 15:18:35'),
	(253, 13, 1, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(254, 13, 2, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(255, 13, 4, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(256, 13, 5, 1, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(257, 13, 6, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(258, 13, 7, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(259, 13, 8, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(261, 13, 10, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(262, 13, 11, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(263, 13, 12, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(264, 13, 13, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(265, 13, 14, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(266, 13, 15, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(267, 13, 16, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(268, 13, 17, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(269, 13, 18, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(270, 13, 19, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(271, 13, 20, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(273, 13, 22, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(274, 14, 1, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(275, 14, 2, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(276, 14, 4, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(277, 14, 5, 1, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(278, 14, 6, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(279, 14, 7, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(280, 14, 8, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(282, 14, 10, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(283, 14, 11, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(284, 14, 12, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(285, 14, 13, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(286, 14, 14, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(287, 14, 15, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(288, 14, 16, 2, 35.00, 'A', '2023-01-19 15:18:36', '2023-02-13 14:18:00'),
	(289, 14, 17, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(290, 14, 18, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(291, 14, 19, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(292, 14, 20, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(294, 14, 22, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(295, 15, 1, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(296, 15, 2, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(297, 15, 4, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(298, 15, 5, 1, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(299, 15, 6, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(300, 15, 7, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(301, 15, 8, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(303, 15, 10, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(304, 15, 11, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(305, 15, 12, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(306, 15, 13, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(307, 15, 14, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(308, 15, 15, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(309, 15, 16, 2, 37.50, 'A', '2023-01-19 15:18:36', '2023-02-13 14:18:52'),
	(310, 15, 17, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(311, 15, 18, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(312, 15, 19, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(313, 15, 20, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(315, 15, 22, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(316, 16, 1, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(317, 16, 2, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(318, 16, 4, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(319, 16, 5, 1, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(320, 16, 6, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(321, 16, 7, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(322, 16, 8, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(324, 16, 10, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(325, 16, 11, 2, 10.00, 'I', '2023-01-19 15:18:36', '2023-02-10 09:08:23'),
	(326, 16, 12, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(327, 16, 13, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(328, 16, 14, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(329, 16, 15, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(330, 16, 16, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(331, 16, 17, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(332, 16, 18, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(333, 16, 19, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(334, 16, 20, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(336, 16, 22, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(337, 17, 1, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(338, 17, 2, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(339, 17, 4, 1, 0.00, 'I', '2023-01-19 15:18:36', '2023-02-02 14:13:52'),
	(340, 17, 5, 1, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(341, 17, 6, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(342, 17, 7, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(343, 17, 8, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(345, 17, 10, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(346, 17, 11, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(347, 17, 12, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(348, 17, 13, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(349, 17, 14, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(350, 17, 15, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(351, 17, 16, 2, 16.67, 'I', '2023-01-19 15:18:36', '2023-02-08 11:59:25'),
	(352, 17, 17, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(353, 17, 18, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(354, 17, 19, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(355, 17, 20, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(357, 17, 22, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(358, 18, 1, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(359, 18, 2, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(360, 18, 4, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(361, 18, 5, 1, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(362, 18, 6, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(363, 18, 7, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(364, 18, 8, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(366, 18, 10, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(367, 18, 11, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(368, 18, 12, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(369, 18, 13, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(370, 18, 14, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(371, 18, 15, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(372, 18, 16, 2, 15.00, 'A', '2023-01-19 15:18:36', '2023-02-13 11:49:56'),
	(373, 18, 17, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(374, 18, 18, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(375, 18, 19, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(376, 18, 20, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(378, 18, 22, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(379, 19, 1, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(380, 19, 2, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-23 16:08:19'),
	(381, 19, 4, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-25 15:20:43'),
	(382, 19, 5, 1, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(383, 19, 6, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(384, 19, 7, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(385, 19, 8, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(387, 19, 10, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(388, 19, 11, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(389, 19, 12, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(390, 19, 13, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(391, 19, 14, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(392, 19, 15, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(393, 19, 16, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(394, 19, 17, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(395, 19, 18, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(396, 19, 19, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(397, 19, 20, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(399, 19, 22, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(400, 20, 1, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(401, 20, 2, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(402, 20, 4, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(403, 20, 5, 1, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(404, 20, 6, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(405, 20, 7, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(406, 20, 8, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(408, 20, 10, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(409, 20, 11, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(410, 20, 12, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(411, 20, 13, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(412, 20, 14, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(413, 20, 15, 2, 250.00, 'A', '2023-01-19 15:18:36', '2023-02-02 14:45:14'),
	(414, 20, 16, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(415, 20, 17, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(416, 20, 18, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(417, 20, 19, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(418, 20, 20, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(420, 20, 22, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(421, 21, 1, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(422, 21, 2, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(423, 21, 4, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(424, 21, 5, 1, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(425, 21, 6, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(426, 21, 7, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(427, 21, 8, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(429, 21, 10, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(430, 21, 11, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(431, 21, 12, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(432, 21, 13, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(433, 21, 14, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(434, 21, 15, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(435, 21, 16, 2, 16.66, 'I', '2023-01-19 15:18:36', '2023-02-07 17:37:08'),
	(436, 21, 17, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(437, 21, 18, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(438, 21, 19, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(439, 21, 20, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(441, 21, 22, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(442, 22, 1, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(443, 22, 2, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(444, 22, 4, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(445, 22, 5, 1, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(446, 22, 6, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(447, 22, 7, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(448, 22, 8, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(450, 22, 10, 2, 100.00, 'A', '2023-01-19 15:18:36', '2023-02-10 16:21:00'),
	(451, 22, 11, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(452, 22, 12, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(453, 22, 13, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(454, 22, 14, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(455, 22, 15, 2, 24.00, 'A', '2023-01-19 15:18:36', '2023-02-13 10:05:17'),
	(456, 22, 16, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(457, 22, 17, 2, 1.00, 'A', '2023-01-19 15:18:36', '2023-02-10 16:14:19'),
	(458, 22, 18, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(459, 22, 19, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(460, 22, 20, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(462, 22, 22, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(463, 23, 1, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(464, 23, 2, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(465, 23, 4, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(466, 23, 5, 1, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(467, 23, 6, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(468, 23, 7, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(469, 23, 8, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(471, 23, 10, 2, 25.00, 'I', '2023-01-19 15:18:36', '2023-02-10 09:03:21'),
	(472, 23, 11, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(473, 23, 12, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(474, 23, 13, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(475, 23, 14, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(476, 23, 15, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(477, 23, 16, 2, 414.00, 'I', '2023-01-19 15:18:36', '2023-02-10 09:03:17'),
	(478, 23, 17, 2, 8.00, 'I', '2023-01-19 15:18:36', '2023-02-09 09:52:56'),
	(479, 23, 18, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(480, 23, 19, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(481, 23, 20, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(483, 23, 22, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(484, 24, 1, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(485, 24, 2, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(486, 24, 4, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(487, 24, 5, 1, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(488, 24, 6, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(489, 24, 7, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(490, 24, 8, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(492, 24, 10, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(493, 24, 11, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(494, 24, 12, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(495, 24, 13, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(496, 24, 14, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(497, 24, 15, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(498, 24, 16, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(499, 24, 17, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(500, 24, 18, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(501, 24, 19, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(502, 24, 20, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(504, 24, 22, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(505, 25, 1, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(506, 25, 2, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(507, 25, 4, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(508, 25, 5, 1, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(509, 25, 6, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(510, 25, 7, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(511, 25, 8, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(513, 25, 10, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(514, 25, 11, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(515, 25, 12, 2, 1.98, 'A', '2023-01-19 15:18:36', '2023-02-13 15:42:18'),
	(516, 25, 13, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(517, 25, 14, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(518, 25, 15, 2, 250.00, 'A', '2023-01-19 15:18:36', '2023-02-02 14:45:01'),
	(519, 25, 16, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(520, 25, 17, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(521, 25, 18, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(522, 25, 19, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(523, 25, 20, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(525, 25, 22, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(526, 26, 1, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(527, 26, 2, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(528, 26, 4, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(529, 26, 5, 1, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(530, 26, 6, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(531, 26, 7, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(532, 26, 8, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(534, 26, 10, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(535, 26, 11, 2, 68.00, 'A', '2023-01-19 15:18:36', '2023-02-14 16:45:00'),
	(536, 26, 12, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(537, 26, 13, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(538, 26, 14, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(539, 26, 15, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(540, 26, 16, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(541, 26, 17, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(542, 26, 18, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(543, 26, 19, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(544, 26, 20, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(546, 26, 22, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(547, 27, 1, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(548, 27, 2, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(549, 27, 4, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(550, 27, 5, 1, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(551, 27, 6, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(552, 27, 7, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(553, 27, 8, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(555, 27, 10, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(556, 27, 11, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(557, 27, 12, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(558, 27, 13, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-02-07 17:40:33'),
	(559, 27, 14, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-02-07 17:55:08'),
	(560, 27, 15, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(561, 27, 16, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(562, 27, 17, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(563, 27, 18, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(564, 27, 19, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(565, 27, 20, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-02-07 17:40:40'),
	(567, 27, 22, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(568, 28, 1, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(569, 28, 2, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(570, 28, 4, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(571, 28, 5, 1, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(572, 28, 6, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(573, 28, 7, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(574, 28, 8, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(576, 28, 10, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(577, 28, 11, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(578, 28, 12, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(579, 28, 13, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(580, 28, 14, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(581, 28, 15, 2, 100.00, 'A', '2023-01-19 15:18:36', '2023-02-14 11:23:49'),
	(582, 28, 16, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(583, 28, 17, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(584, 28, 18, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(585, 28, 19, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(586, 28, 20, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(588, 28, 22, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(589, 29, 1, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(590, 29, 2, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(591, 29, 4, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(592, 29, 5, 1, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(593, 29, 6, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(594, 29, 7, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(595, 29, 8, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(597, 29, 10, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(598, 29, 11, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(599, 29, 12, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(600, 29, 13, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(601, 29, 14, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(602, 29, 15, 2, 250.00, 'A', '2023-01-19 15:18:36', '2023-02-02 14:45:28'),
	(603, 29, 16, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(604, 29, 17, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(605, 29, 18, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(606, 29, 19, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(607, 29, 20, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(609, 29, 22, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(610, 30, 1, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(611, 30, 2, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(612, 30, 4, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(613, 30, 5, 1, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(614, 30, 6, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(615, 30, 7, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(616, 30, 8, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(618, 30, 10, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(619, 30, 11, 2, 36.67, 'A', '2023-01-19 15:18:36', '2023-02-13 14:33:37'),
	(620, 30, 12, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(621, 30, 13, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(622, 30, 14, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(623, 30, 15, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(624, 30, 16, 2, 13.54, 'A', '2023-01-19 15:18:36', '2023-02-13 14:15:17'),
	(625, 30, 17, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(626, 30, 18, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(627, 30, 19, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(628, 30, 20, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(630, 30, 22, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(631, 31, 1, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(632, 31, 2, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(633, 31, 4, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(634, 31, 5, 1, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(635, 31, 6, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(636, 31, 7, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(637, 31, 8, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(639, 31, 10, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(640, 31, 11, 2, 30.00, 'A', '2023-01-19 15:18:36', '2023-02-02 14:59:00'),
	(641, 31, 12, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(642, 31, 13, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(643, 31, 14, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(644, 31, 15, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(645, 31, 16, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(646, 31, 17, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(647, 31, 18, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(648, 31, 19, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(649, 31, 20, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(651, 31, 22, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(652, 32, 1, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(653, 32, 2, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(654, 32, 4, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(655, 32, 5, 1, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(656, 32, 6, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(657, 32, 7, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(658, 32, 8, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(660, 32, 10, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(661, 32, 11, 2, 30.00, 'A', '2023-01-19 15:18:36', '2023-02-02 14:58:04'),
	(662, 32, 12, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(663, 32, 13, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(664, 32, 14, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(665, 32, 15, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(666, 32, 16, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(667, 32, 17, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(668, 32, 18, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(669, 32, 19, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(670, 32, 20, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(672, 32, 22, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(673, 33, 1, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(674, 33, 2, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(675, 33, 4, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(676, 33, 5, 1, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(677, 33, 6, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(678, 33, 7, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(679, 33, 8, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(681, 33, 10, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(682, 33, 11, 2, 11.33, 'A', '2023-01-19 15:18:36', '2023-02-13 14:12:21'),
	(683, 33, 12, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(684, 33, 13, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-02-07 17:39:12'),
	(685, 33, 14, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-02-07 17:39:05'),
	(686, 33, 15, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(687, 33, 16, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(688, 33, 17, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(689, 33, 18, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(690, 33, 19, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(691, 33, 20, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(693, 33, 22, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(694, 34, 1, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(695, 34, 2, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(696, 34, 4, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(697, 34, 5, 1, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(698, 34, 6, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(699, 34, 7, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(700, 34, 8, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(702, 34, 10, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(703, 34, 11, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(704, 34, 12, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(705, 34, 13, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(706, 34, 14, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(707, 34, 15, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(708, 34, 16, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(709, 34, 17, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(710, 34, 18, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(711, 34, 19, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(712, 34, 20, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(714, 34, 22, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(715, 35, 1, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(716, 35, 2, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(717, 35, 4, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(718, 35, 5, 1, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(719, 35, 6, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(720, 35, 7, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(721, 35, 8, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(723, 35, 10, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(724, 35, 11, 2, 10.00, 'A', '2023-01-19 15:18:36', '2023-02-14 16:46:23'),
	(725, 35, 12, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(726, 35, 13, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(727, 35, 14, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(728, 35, 15, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(729, 35, 16, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(730, 35, 17, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(731, 35, 18, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(732, 35, 19, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(733, 35, 20, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(735, 35, 22, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(736, 36, 1, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(737, 36, 2, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(738, 36, 4, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(739, 36, 5, 1, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(740, 36, 6, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(741, 36, 7, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(742, 36, 8, 2, 62.00, 'A', '2023-01-19 15:18:36', '2023-02-02 17:43:45'),
	(744, 36, 10, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(745, 36, 11, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(746, 36, 12, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(747, 36, 13, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(748, 36, 14, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(749, 36, 15, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-02-02 14:48:43'),
	(750, 36, 16, 2, 21.67, 'I', '2023-01-19 15:18:36', '2023-02-08 11:58:23'),
	(751, 36, 17, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(752, 36, 18, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(753, 36, 19, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(754, 36, 20, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(756, 36, 22, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(757, 37, 1, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(758, 37, 2, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(759, 37, 4, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(760, 37, 5, 1, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(761, 37, 6, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(762, 37, 7, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(763, 37, 8, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(765, 37, 10, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(766, 37, 11, 2, 5.00, 'A', '2023-01-19 15:18:36', '2023-02-10 09:56:02'),
	(767, 37, 12, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(768, 37, 13, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(769, 37, 14, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(770, 37, 15, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(771, 37, 16, 2, 13.13, 'A', '2023-01-19 15:18:36', '2023-02-13 14:16:11'),
	(772, 37, 17, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(773, 37, 18, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(774, 37, 19, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(775, 37, 20, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(777, 37, 22, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(778, 38, 1, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(779, 38, 2, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(780, 38, 4, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(781, 38, 5, 1, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(782, 38, 6, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(783, 38, 7, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(784, 38, 8, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(786, 38, 10, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(787, 38, 11, 2, 59.00, 'A', '2023-01-19 15:18:36', '2023-02-14 16:47:20'),
	(788, 38, 12, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(789, 38, 13, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(790, 38, 14, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(791, 38, 15, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(792, 38, 16, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(793, 38, 17, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(794, 38, 18, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(795, 38, 19, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(796, 38, 20, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(798, 38, 22, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(799, 39, 1, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(800, 39, 2, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(801, 39, 4, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(802, 39, 5, 1, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(803, 39, 6, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(804, 39, 7, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(805, 39, 8, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(807, 39, 10, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(808, 39, 11, 2, 56.00, 'A', '2023-01-19 15:18:36', '2023-02-14 16:47:54'),
	(809, 39, 12, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(810, 39, 13, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(811, 39, 14, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(812, 39, 15, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(813, 39, 16, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(814, 39, 17, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(815, 39, 18, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(816, 39, 19, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(817, 39, 20, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(819, 39, 22, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(820, 40, 1, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(821, 40, 2, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(822, 40, 4, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(823, 40, 5, 1, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(824, 40, 6, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(825, 40, 7, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(826, 40, 8, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(828, 40, 10, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(829, 40, 11, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(830, 40, 12, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(831, 40, 13, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(832, 40, 14, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(833, 40, 15, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(834, 40, 16, 2, 37.50, 'A', '2023-01-19 15:18:36', '2023-02-13 14:19:15'),
	(835, 40, 17, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(836, 40, 18, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(837, 40, 19, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(838, 40, 20, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(840, 40, 22, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(841, 41, 1, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(842, 41, 2, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(843, 41, 4, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(844, 41, 5, 1, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(845, 41, 6, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(846, 41, 7, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(847, 41, 8, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(849, 41, 10, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(850, 41, 11, 2, 56.00, 'A', '2023-01-19 15:18:36', '2023-02-14 16:47:35'),
	(851, 41, 12, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(852, 41, 13, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-02-07 17:39:52'),
	(853, 41, 14, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-02-07 17:40:00'),
	(854, 41, 15, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(855, 41, 16, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(856, 41, 17, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(857, 41, 18, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(858, 41, 19, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(859, 41, 20, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(861, 41, 22, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(862, 42, 1, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(863, 42, 2, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(864, 42, 4, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(865, 42, 5, 1, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(866, 42, 6, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(867, 42, 7, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(868, 42, 8, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(870, 42, 10, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(871, 42, 11, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(872, 42, 12, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(873, 42, 13, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(874, 42, 14, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(875, 42, 15, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(876, 42, 16, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(877, 42, 17, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(878, 42, 18, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(879, 42, 19, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(880, 42, 20, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(882, 42, 22, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(883, 43, 1, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(884, 43, 2, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(885, 43, 4, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(886, 43, 5, 1, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(887, 43, 6, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(888, 43, 7, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(889, 43, 8, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(891, 43, 10, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(892, 43, 11, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(893, 43, 12, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(894, 43, 13, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-02-07 17:39:29'),
	(895, 43, 14, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-02-07 17:39:36'),
	(896, 43, 15, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(897, 43, 16, 2, 16.66, 'I', '2023-01-19 15:18:36', '2023-02-07 17:37:29'),
	(898, 43, 17, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(899, 43, 18, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(900, 43, 19, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(901, 43, 20, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(903, 43, 22, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(904, 44, 1, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(905, 44, 2, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(906, 44, 4, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(907, 44, 5, 1, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(908, 44, 6, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(909, 44, 7, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(910, 44, 8, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(912, 44, 10, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(913, 44, 11, 2, 33.00, 'A', '2023-01-19 15:18:36', '2023-02-14 17:07:02'),
	(914, 44, 12, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(915, 44, 13, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-02-10 09:22:43'),
	(916, 44, 14, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-02-10 09:22:51'),
	(917, 44, 15, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(918, 44, 16, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(919, 44, 17, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(920, 44, 18, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(921, 44, 19, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(922, 44, 20, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(924, 44, 22, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(925, 45, 1, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(926, 45, 2, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(927, 45, 4, 1, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(928, 45, 5, 1, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(929, 45, 6, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(930, 45, 7, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(931, 45, 8, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(933, 45, 10, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(934, 45, 11, 2, 40.00, 'A', '2023-01-19 15:18:36', '2023-02-14 16:48:53'),
	(935, 45, 12, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(936, 45, 13, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(937, 45, 14, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(938, 45, 15, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(939, 45, 16, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(940, 45, 17, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(941, 45, 18, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(942, 45, 19, 2, 0.00, 'I', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(943, 45, 20, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(945, 45, 22, 2, 0.00, 'A', '2023-01-19 15:18:36', '2023-01-19 15:18:36'),
	(946, 46, 1, 1, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(947, 46, 2, 1, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(948, 46, 4, 1, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(949, 46, 5, 1, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(950, 46, 6, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(951, 46, 7, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(952, 46, 8, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(954, 46, 10, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(955, 46, 11, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-02-10 09:11:36'),
	(956, 46, 12, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(957, 46, 13, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(958, 46, 14, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(959, 46, 15, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(960, 46, 16, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(961, 46, 17, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(962, 46, 18, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(963, 46, 19, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(964, 46, 20, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(966, 46, 22, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(967, 47, 1, 1, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(968, 47, 2, 1, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(969, 47, 4, 1, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(970, 47, 5, 1, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(971, 47, 6, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(972, 47, 7, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(973, 47, 8, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(975, 47, 10, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(976, 47, 11, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(977, 47, 12, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(978, 47, 13, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(979, 47, 14, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(980, 47, 15, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(981, 47, 16, 2, 47.50, 'I', '2023-01-19 15:18:37', '2023-02-08 11:57:51'),
	(982, 47, 17, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(983, 47, 18, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(984, 47, 19, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(985, 47, 20, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(987, 47, 22, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(988, 48, 1, 1, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(989, 48, 2, 1, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(990, 48, 4, 1, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(991, 48, 5, 1, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(992, 48, 6, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(993, 48, 7, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(994, 48, 8, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(996, 48, 10, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(997, 48, 11, 2, 138.30, 'I', '2023-01-19 15:18:37', '2023-02-10 09:05:34'),
	(998, 48, 12, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(999, 48, 13, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1000, 48, 14, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1001, 48, 15, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1002, 48, 16, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1003, 48, 17, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1004, 48, 18, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1005, 48, 19, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1006, 48, 20, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1008, 48, 22, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1009, 49, 1, 1, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1010, 49, 2, 1, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1011, 49, 4, 1, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1012, 49, 5, 1, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1013, 49, 6, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1014, 49, 7, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1015, 49, 8, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1017, 49, 10, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1018, 49, 11, 2, 17.46, 'A', '2023-01-19 15:18:37', '2023-02-14 17:07:27'),
	(1019, 49, 12, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1020, 49, 13, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1021, 49, 14, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1022, 49, 15, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1023, 49, 16, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1024, 49, 17, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1025, 49, 18, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1026, 49, 19, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1027, 49, 20, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1029, 49, 22, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1030, 50, 1, 1, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1031, 50, 2, 1, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1032, 50, 4, 1, 0.00, 'I', '2023-01-19 15:18:37', '2023-02-02 14:13:17'),
	(1033, 50, 5, 1, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1034, 50, 6, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1035, 50, 7, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1036, 50, 8, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1038, 50, 10, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1039, 50, 11, 2, 30.00, 'A', '2023-01-19 15:18:37', '2023-02-13 09:19:53'),
	(1040, 50, 12, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1041, 50, 13, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1042, 50, 14, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1043, 50, 15, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1044, 50, 16, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1045, 50, 17, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1046, 50, 18, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1047, 50, 19, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1048, 50, 20, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1050, 50, 22, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1051, 51, 1, 1, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1052, 51, 2, 1, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1053, 51, 4, 1, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1054, 51, 5, 1, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1055, 51, 6, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1056, 51, 7, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1057, 51, 8, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1059, 51, 10, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1060, 51, 11, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1061, 51, 12, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1062, 51, 13, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-02-10 09:23:43'),
	(1063, 51, 14, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-02-10 09:23:51'),
	(1064, 51, 15, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1065, 51, 16, 2, 11.25, 'A', '2023-01-19 15:18:37', '2023-02-13 14:16:39'),
	(1066, 51, 17, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1067, 51, 18, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1068, 51, 19, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1069, 51, 20, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1071, 51, 22, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1072, 52, 1, 1, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1073, 52, 2, 1, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1074, 52, 4, 1, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1075, 52, 5, 1, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1076, 52, 6, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1077, 52, 7, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1078, 52, 8, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1080, 52, 10, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1081, 52, 11, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1082, 52, 12, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1083, 52, 13, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1084, 52, 14, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1085, 52, 15, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1086, 52, 16, 2, 16.66, 'I', '2023-01-19 15:18:37', '2023-02-07 17:36:51'),
	(1087, 52, 17, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1088, 52, 18, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1089, 52, 19, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1090, 52, 20, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1092, 52, 22, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1093, 53, 1, 1, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1094, 53, 2, 1, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1095, 53, 4, 1, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1096, 53, 5, 1, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1097, 53, 6, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1098, 53, 7, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1099, 53, 8, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1101, 53, 10, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1102, 53, 11, 2, 15.00, 'A', '2023-01-19 15:18:37', '2023-02-13 08:22:04'),
	(1103, 53, 12, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1104, 53, 13, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1105, 53, 14, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1106, 53, 15, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1107, 53, 16, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1108, 53, 17, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1109, 53, 18, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1110, 53, 19, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1111, 53, 20, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1113, 53, 22, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1114, 54, 1, 1, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1115, 54, 2, 1, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1116, 54, 4, 1, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1117, 54, 5, 1, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1118, 54, 6, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1119, 54, 7, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1120, 54, 8, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1122, 54, 10, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1123, 54, 11, 2, 30.00, 'A', '2023-01-19 15:18:37', '2023-02-02 15:00:11'),
	(1124, 54, 12, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1125, 54, 13, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1126, 54, 14, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1127, 54, 15, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1128, 54, 16, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1129, 54, 17, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1130, 54, 18, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1131, 54, 19, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1132, 54, 20, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1134, 54, 22, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1135, 55, 1, 1, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1136, 55, 2, 1, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1137, 55, 4, 1, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1138, 55, 5, 1, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1139, 55, 6, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1140, 55, 7, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1141, 55, 8, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1143, 55, 10, 2, 20.00, 'A', '2023-01-19 15:18:37', '2023-02-10 09:55:14'),
	(1144, 55, 11, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1145, 55, 12, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1146, 55, 13, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-02-10 09:22:15'),
	(1147, 55, 14, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-02-10 09:22:27'),
	(1148, 55, 15, 2, 100.00, 'A', '2023-01-19 15:18:37', '2023-02-10 17:09:52'),
	(1149, 55, 16, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1150, 55, 17, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1151, 55, 18, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1152, 55, 19, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1153, 55, 20, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1155, 55, 22, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1156, 56, 1, 1, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1157, 56, 2, 1, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1158, 56, 4, 1, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1159, 56, 5, 1, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1160, 56, 6, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1161, 56, 7, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1162, 56, 8, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1164, 56, 10, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1165, 56, 11, 2, 23.00, 'A', '2023-01-19 15:18:37', '2023-02-14 16:44:42'),
	(1166, 56, 12, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1167, 56, 13, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1168, 56, 14, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1169, 56, 15, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1170, 56, 16, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1171, 56, 17, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1172, 56, 18, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1173, 56, 19, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1174, 56, 20, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1176, 56, 22, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1177, 57, 1, 1, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1178, 57, 2, 1, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1179, 57, 4, 1, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1180, 57, 5, 1, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1181, 57, 6, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1182, 57, 7, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1183, 57, 8, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1185, 57, 10, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1186, 57, 11, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1187, 57, 12, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1188, 57, 13, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1189, 57, 14, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1190, 57, 15, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1191, 57, 16, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1192, 57, 17, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1193, 57, 18, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1194, 57, 19, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1195, 57, 20, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1197, 57, 22, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1198, 58, 1, 1, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1199, 58, 2, 1, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1200, 58, 4, 1, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1201, 58, 5, 1, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1202, 58, 6, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1203, 58, 7, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1204, 58, 8, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1206, 58, 10, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1207, 58, 11, 2, 50.00, 'A', '2023-01-19 15:18:37', '2023-02-13 08:21:48'),
	(1208, 58, 12, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1209, 58, 13, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1210, 58, 14, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1211, 58, 15, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1212, 58, 16, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1213, 58, 17, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1214, 58, 18, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1215, 58, 19, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1216, 58, 20, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1218, 58, 22, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1219, 59, 1, 1, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1220, 59, 2, 1, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1221, 59, 4, 1, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1222, 59, 5, 1, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1223, 59, 6, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1224, 59, 7, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1225, 59, 8, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1227, 59, 10, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1228, 59, 11, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1229, 59, 12, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1230, 59, 13, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1231, 59, 14, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1232, 59, 15, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1233, 59, 16, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1234, 59, 17, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1235, 59, 18, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1236, 59, 19, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1237, 59, 20, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1239, 59, 22, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1240, 60, 1, 1, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1241, 60, 2, 1, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1242, 60, 4, 1, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1243, 60, 5, 1, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1244, 60, 6, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1245, 60, 7, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1246, 60, 8, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1248, 60, 10, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1249, 60, 11, 2, 11.49, 'A', '2023-01-19 15:18:37', '2023-02-10 16:28:24'),
	(1250, 60, 12, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1251, 60, 13, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1252, 60, 14, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1253, 60, 15, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1254, 60, 16, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1255, 60, 17, 2, 9.00, 'A', '2023-01-19 15:18:37', '2023-02-10 16:27:53'),
	(1256, 60, 18, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1257, 60, 19, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1258, 60, 20, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1260, 60, 22, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1261, 61, 1, 1, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1262, 61, 2, 1, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1263, 61, 4, 1, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1264, 61, 5, 1, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1265, 61, 6, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1266, 61, 7, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1267, 61, 8, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1269, 61, 10, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1270, 61, 11, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1271, 61, 12, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1272, 61, 13, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1273, 61, 14, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1274, 61, 15, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1275, 61, 16, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1276, 61, 17, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1277, 61, 18, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1278, 61, 19, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1279, 61, 20, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1281, 61, 22, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1282, 62, 1, 1, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1283, 62, 2, 1, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1284, 62, 4, 1, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1285, 62, 5, 1, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1286, 62, 6, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1287, 62, 7, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1288, 62, 8, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1290, 62, 10, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1291, 62, 11, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1292, 62, 12, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1293, 62, 13, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1294, 62, 14, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1295, 62, 15, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1296, 62, 16, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1297, 62, 17, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1298, 62, 18, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1299, 62, 19, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1300, 62, 20, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1302, 62, 22, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1303, 63, 1, 1, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1304, 63, 2, 1, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1305, 63, 4, 1, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1306, 63, 5, 1, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1307, 63, 6, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1308, 63, 7, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1309, 63, 8, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1311, 63, 10, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1312, 63, 11, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1313, 63, 12, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1314, 63, 13, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1315, 63, 14, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1316, 63, 15, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1317, 63, 16, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1318, 63, 17, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1319, 63, 18, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1320, 63, 19, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1321, 63, 20, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1323, 63, 22, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1324, 64, 1, 1, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1325, 64, 2, 1, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1326, 64, 4, 1, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1327, 64, 5, 1, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1328, 64, 6, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1329, 64, 7, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1330, 64, 8, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1332, 64, 10, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1333, 64, 11, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1334, 64, 12, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1335, 64, 13, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1336, 64, 14, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1337, 64, 15, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1338, 64, 16, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1339, 64, 17, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1340, 64, 18, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1341, 64, 19, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1342, 64, 20, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1344, 64, 22, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1345, 65, 1, 1, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1346, 65, 2, 1, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1347, 65, 4, 1, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1348, 65, 5, 1, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1349, 65, 6, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1350, 65, 7, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1351, 65, 8, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1353, 65, 10, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1354, 65, 11, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1355, 65, 12, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1356, 65, 13, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1357, 65, 14, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1358, 65, 15, 2, 100.00, 'A', '2023-01-19 15:18:37', '2023-02-13 09:55:38'),
	(1359, 65, 16, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1360, 65, 17, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1361, 65, 18, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1362, 65, 19, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1363, 65, 20, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1365, 65, 22, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1366, 66, 1, 1, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1367, 66, 2, 1, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1368, 66, 4, 1, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1369, 66, 5, 1, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1370, 66, 6, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1371, 66, 7, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1372, 66, 8, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1374, 66, 10, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1375, 66, 11, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1376, 66, 12, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1377, 66, 13, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1378, 66, 14, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1379, 66, 15, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1380, 66, 16, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1381, 66, 17, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1382, 66, 18, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1383, 66, 19, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1384, 66, 20, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1386, 66, 22, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1387, 67, 1, 1, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1388, 67, 2, 1, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1389, 67, 4, 1, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1390, 67, 5, 1, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1391, 67, 6, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1392, 67, 7, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1393, 67, 8, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1395, 67, 10, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1396, 67, 11, 2, 30.00, 'A', '2023-01-19 15:18:37', '2023-02-02 15:57:41'),
	(1397, 67, 12, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1398, 67, 13, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1399, 67, 14, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1400, 67, 15, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1401, 67, 16, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1402, 67, 17, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1403, 67, 18, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1404, 67, 19, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1405, 67, 20, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1407, 67, 22, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1408, 68, 1, 1, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1409, 68, 2, 1, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1410, 68, 4, 1, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1411, 68, 5, 1, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1412, 68, 6, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1413, 68, 7, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1414, 68, 8, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1416, 68, 10, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1417, 68, 11, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1418, 68, 12, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1419, 68, 13, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-02-10 09:25:14'),
	(1420, 68, 14, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-02-10 09:25:24'),
	(1421, 68, 15, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1422, 68, 16, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1423, 68, 17, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1424, 68, 18, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1425, 68, 19, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1426, 68, 20, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1428, 68, 22, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1429, 69, 1, 1, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1430, 69, 2, 1, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1431, 69, 4, 1, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1432, 69, 5, 1, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1433, 69, 6, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1434, 69, 7, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1435, 69, 8, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1437, 69, 10, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1438, 69, 11, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1439, 69, 12, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1440, 69, 13, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-02-10 09:20:35'),
	(1441, 69, 14, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-02-10 09:20:58'),
	(1442, 69, 15, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1443, 69, 16, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1444, 69, 17, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1445, 69, 18, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1446, 69, 19, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1447, 69, 20, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1449, 69, 22, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1450, 70, 1, 1, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1451, 70, 2, 1, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1452, 70, 4, 1, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1453, 70, 5, 1, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1454, 70, 6, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1455, 70, 7, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1456, 70, 8, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1458, 70, 10, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1459, 70, 11, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1460, 70, 12, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1461, 70, 13, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1462, 70, 14, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1463, 70, 15, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1464, 70, 16, 2, 5.00, 'A', '2023-01-19 15:18:37', '2023-02-13 14:17:34'),
	(1465, 70, 17, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1466, 70, 18, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1467, 70, 19, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1468, 70, 20, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1470, 70, 22, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1471, 71, 1, 1, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1472, 71, 2, 1, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1473, 71, 4, 1, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1474, 71, 5, 1, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1475, 71, 6, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1476, 71, 7, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1477, 71, 8, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1479, 71, 10, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1480, 71, 11, 2, 34.00, 'A', '2023-01-19 15:18:37', '2023-02-14 16:48:37'),
	(1481, 71, 12, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1482, 71, 13, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1483, 71, 14, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1484, 71, 15, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1485, 71, 16, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1486, 71, 17, 2, 2.00, 'I', '2023-01-19 15:18:37', '2023-02-07 17:32:54'),
	(1487, 71, 18, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1488, 71, 19, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1489, 71, 20, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1491, 71, 22, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1492, 72, 1, 1, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1493, 72, 2, 1, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1494, 72, 4, 1, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1495, 72, 5, 1, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1496, 72, 6, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1497, 72, 7, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1498, 72, 8, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1500, 72, 10, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1501, 72, 11, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1502, 72, 12, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1503, 72, 13, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1504, 72, 14, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1505, 72, 15, 2, 400.00, 'I', '2023-01-19 15:18:37', '2023-02-07 17:33:51'),
	(1506, 72, 16, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1507, 72, 17, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1508, 72, 18, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1509, 72, 19, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1510, 72, 20, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1512, 72, 22, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1513, 73, 1, 1, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1514, 73, 2, 1, 0.00, 'I', '2023-01-19 15:18:37', '2023-02-02 14:15:12'),
	(1515, 73, 4, 1, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1516, 73, 5, 1, 0.00, 'A', '2023-01-19 15:18:37', '2023-02-02 14:15:23'),
	(1517, 73, 6, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1518, 73, 7, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1519, 73, 8, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1521, 73, 10, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1522, 73, 11, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1523, 73, 12, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1524, 73, 13, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-02-07 17:38:24'),
	(1525, 73, 14, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-02-07 17:38:15'),
	(1526, 73, 15, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1527, 73, 16, 2, 16.66, 'I', '2023-01-19 15:18:37', '2023-02-07 17:38:36'),
	(1528, 73, 17, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1529, 73, 18, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1530, 73, 19, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1531, 73, 20, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1533, 73, 22, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1534, 74, 1, 1, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1535, 74, 2, 1, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1536, 74, 4, 1, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1537, 74, 5, 1, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1538, 74, 6, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1539, 74, 7, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1540, 74, 8, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1542, 74, 10, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1543, 74, 11, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1544, 74, 12, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1545, 74, 13, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1546, 74, 14, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1547, 74, 15, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1548, 74, 16, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1549, 74, 17, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1550, 74, 18, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1551, 74, 19, 2, 0.00, 'I', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1552, 74, 20, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1554, 74, 22, 2, 0.00, 'A', '2023-01-19 15:18:37', '2023-01-19 15:18:37'),
	(1555, 75, 1, 1, 0.00, 'A', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1556, 75, 2, 1, 0.00, 'A', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1557, 75, 4, 1, 0.00, 'A', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1558, 75, 5, 1, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1559, 75, 6, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1560, 75, 7, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1561, 75, 8, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1563, 75, 10, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1564, 75, 11, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1565, 75, 12, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1566, 75, 13, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1567, 75, 14, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1568, 75, 15, 2, 100.00, 'I', '2023-01-19 15:18:38', '2023-02-07 16:25:55'),
	(1569, 75, 16, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1570, 75, 17, 2, 15.00, 'A', '2023-01-19 15:18:38', '2023-02-13 09:35:30'),
	(1571, 75, 18, 2, 0.00, 'A', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1572, 75, 19, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1573, 75, 20, 2, 0.00, 'A', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1575, 75, 22, 2, 0.00, 'A', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1576, 76, 1, 1, 0.00, 'A', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1577, 76, 2, 1, 0.00, 'A', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1578, 76, 4, 1, 0.00, 'A', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1579, 76, 5, 1, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1580, 76, 6, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1581, 76, 7, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1582, 76, 8, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1584, 76, 10, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1585, 76, 11, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1586, 76, 12, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1587, 76, 13, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1588, 76, 14, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1589, 76, 15, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1590, 76, 16, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1591, 76, 17, 2, 3.00, 'I', '2023-01-19 15:18:38', '2023-01-27 17:02:33'),
	(1592, 76, 18, 2, 0.00, 'A', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1593, 76, 19, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1594, 76, 20, 2, 0.00, 'A', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1596, 76, 22, 2, 0.00, 'A', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1597, 77, 1, 1, 0.00, 'A', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1598, 77, 2, 1, 0.00, 'A', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1599, 77, 4, 1, 0.00, 'A', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1600, 77, 5, 1, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1601, 77, 6, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1602, 77, 7, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1603, 77, 8, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1605, 77, 10, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1606, 77, 11, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1607, 77, 12, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1608, 77, 13, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1609, 77, 14, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1610, 77, 15, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1611, 77, 16, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1612, 77, 17, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1613, 77, 18, 2, 0.00, 'A', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1614, 77, 19, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1615, 77, 20, 2, 0.00, 'A', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1617, 77, 22, 2, 0.00, 'A', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1618, 78, 1, 1, 0.00, 'A', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1619, 78, 2, 1, 0.00, 'A', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1620, 78, 4, 1, 0.00, 'A', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1621, 78, 5, 1, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1622, 78, 6, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1623, 78, 7, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1624, 78, 8, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1626, 78, 10, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1627, 78, 11, 2, 18.00, 'A', '2023-01-19 15:18:38', '2023-02-14 16:47:00'),
	(1628, 78, 12, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1629, 78, 13, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1630, 78, 14, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1631, 78, 15, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1632, 78, 16, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1633, 78, 17, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1634, 78, 18, 2, 0.00, 'A', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1635, 78, 19, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1636, 78, 20, 2, 0.00, 'A', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1638, 78, 22, 2, 0.00, 'A', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1639, 79, 1, 1, 0.00, 'A', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1640, 79, 2, 1, 0.00, 'A', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1641, 79, 4, 1, 0.00, 'A', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1642, 79, 5, 1, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1643, 79, 6, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1644, 79, 7, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1645, 79, 8, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1647, 79, 10, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1648, 79, 11, 2, 67.00, 'A', '2023-01-19 15:18:38', '2023-02-14 16:35:09'),
	(1649, 79, 12, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1650, 79, 13, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1651, 79, 14, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1652, 79, 15, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1653, 79, 16, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1654, 79, 17, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1655, 79, 18, 2, 0.00, 'A', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1656, 79, 19, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1657, 79, 20, 2, 0.00, 'A', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1659, 79, 22, 2, 0.00, 'A', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1660, 80, 1, 1, 0.00, 'A', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1661, 80, 2, 1, 0.00, 'A', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1662, 80, 4, 1, 0.00, 'A', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1663, 80, 5, 1, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1664, 80, 6, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1665, 80, 7, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1666, 80, 8, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1668, 80, 10, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1669, 80, 11, 2, 55.00, 'A', '2023-01-19 15:18:38', '2023-02-14 16:36:35'),
	(1670, 80, 12, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1671, 80, 13, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1672, 80, 14, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1673, 80, 15, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1674, 80, 16, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1675, 80, 17, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1676, 80, 18, 2, 0.00, 'A', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1677, 80, 19, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1678, 80, 20, 2, 0.00, 'A', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1680, 80, 22, 2, 0.00, 'A', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1681, 81, 1, 1, 0.00, 'A', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1682, 81, 2, 1, 0.00, 'A', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1683, 81, 4, 1, 0.00, 'A', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1684, 81, 5, 1, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1685, 81, 6, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1686, 81, 7, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1687, 81, 8, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1689, 81, 10, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1690, 81, 11, 2, 22.00, 'I', '2023-01-19 15:18:38', '2023-02-10 09:06:56'),
	(1691, 81, 12, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1692, 81, 13, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1693, 81, 14, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1694, 81, 15, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1695, 81, 16, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1696, 81, 17, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1697, 81, 18, 2, 0.00, 'A', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1698, 81, 19, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1699, 81, 20, 2, 0.00, 'A', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1701, 81, 22, 2, 0.00, 'A', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1702, 82, 1, 1, 0.00, 'A', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1703, 82, 2, 1, 0.00, 'A', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1704, 82, 4, 1, 0.00, 'I', '2023-01-19 15:18:38', '2023-02-02 14:15:57'),
	(1705, 82, 5, 1, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1706, 82, 6, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1707, 82, 7, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1708, 82, 8, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1710, 82, 10, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1711, 82, 11, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1712, 82, 12, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1713, 82, 13, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1714, 82, 14, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1715, 82, 15, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1716, 82, 16, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1717, 82, 17, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1718, 82, 18, 2, 0.00, 'A', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1719, 82, 19, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1720, 82, 20, 2, 0.00, 'A', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1722, 82, 22, 2, 0.00, 'A', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1723, 83, 1, 1, 0.00, 'A', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1724, 83, 2, 1, 0.00, 'A', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1725, 83, 4, 1, 0.00, 'A', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1726, 83, 5, 1, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1727, 83, 6, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1728, 83, 7, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1729, 83, 8, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1731, 83, 10, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1732, 83, 11, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1733, 83, 12, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1734, 83, 13, 2, 0.00, 'A', '2023-01-19 15:18:38', '2023-02-10 09:23:13'),
	(1735, 83, 14, 2, 0.00, 'A', '2023-01-19 15:18:38', '2023-02-10 09:23:22'),
	(1736, 83, 15, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-02-10 16:04:48'),
	(1737, 83, 16, 2, 25.00, 'A', '2023-01-19 15:18:38', '2023-02-13 11:48:35'),
	(1738, 83, 17, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1739, 83, 18, 2, 0.00, 'A', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1740, 83, 19, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1741, 83, 20, 2, 0.00, 'A', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1743, 83, 22, 2, 0.00, 'A', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1744, 84, 1, 1, 0.00, 'A', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1745, 84, 2, 1, 0.00, 'A', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1746, 84, 4, 1, 0.00, 'A', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1747, 84, 5, 1, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1748, 84, 6, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1749, 84, 7, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1750, 84, 8, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1752, 84, 10, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1753, 84, 11, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1754, 84, 12, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1755, 84, 13, 2, 0.00, 'A', '2023-01-19 15:18:38', '2023-02-10 09:21:40'),
	(1756, 84, 14, 2, 0.00, 'A', '2023-01-19 15:18:38', '2023-02-10 09:21:33'),
	(1757, 84, 15, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1758, 84, 16, 2, 16.66, 'I', '2023-01-19 15:18:38', '2023-02-07 17:37:45'),
	(1759, 84, 17, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1760, 84, 18, 2, 0.00, 'A', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1761, 84, 19, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1762, 84, 20, 2, 0.00, 'A', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1764, 84, 22, 2, 0.00, 'A', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1765, 85, 1, 1, 0.00, 'A', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1766, 85, 2, 1, 0.00, 'A', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1767, 85, 4, 1, 0.00, 'A', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1768, 85, 5, 1, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1769, 85, 6, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1770, 85, 7, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1771, 85, 8, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1773, 85, 10, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1774, 85, 11, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1775, 85, 12, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1776, 85, 13, 2, 0.00, 'A', '2023-01-19 15:18:38', '2023-02-10 09:24:33'),
	(1777, 85, 14, 2, 0.00, 'A', '2023-01-19 15:18:38', '2023-02-10 09:24:43'),
	(1778, 85, 15, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1779, 85, 16, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1780, 85, 17, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1781, 85, 18, 2, 0.00, 'A', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1782, 85, 19, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1783, 85, 20, 2, 0.00, 'A', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1785, 85, 22, 2, 0.00, 'A', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1786, 86, 1, 1, 0.00, 'A', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1787, 86, 2, 1, 0.00, 'A', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1788, 86, 4, 1, 0.00, 'A', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1789, 86, 5, 1, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1790, 86, 6, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1791, 86, 7, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1792, 86, 8, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1794, 86, 10, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1795, 86, 11, 2, 30.00, 'A', '2023-01-19 15:18:38', '2023-02-02 14:58:27'),
	(1796, 86, 12, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1797, 86, 13, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1798, 86, 14, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1799, 86, 15, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1800, 86, 16, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1801, 86, 17, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1802, 86, 18, 2, 0.00, 'A', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1803, 86, 19, 2, 0.00, 'I', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1804, 86, 20, 2, 0.00, 'A', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1806, 86, 22, 2, 0.00, 'A', '2023-01-19 15:18:38', '2023-01-19 15:18:38'),
	(1807, 19, 23, 2, 30.00, 'A', '2023-01-24 09:08:08', '2023-01-24 09:08:10'),
	(1808, 1, 23, 2, 25.00, 'I', '2023-01-24 09:26:11', '2023-01-24 09:26:11'),
	(1809, 87, 1, 1, 0.00, 'A', '2023-01-24 10:28:46', '2023-01-24 10:28:46'),
	(1810, 87, 2, 1, 0.00, 'A', '2023-01-24 10:28:46', '2023-01-24 10:28:46'),
	(1811, 87, 4, 1, 0.00, 'A', '2023-01-24 10:28:46', '2023-01-24 10:28:46'),
	(1812, 87, 5, 1, 0.00, 'I', '2023-01-24 10:28:46', '2023-01-24 10:28:46'),
	(1813, 87, 6, 2, 0.00, 'I', '2023-01-24 10:28:46', '2023-01-24 10:28:46'),
	(1814, 87, 7, 2, 0.00, 'I', '2023-01-24 10:28:46', '2023-01-24 10:28:46'),
	(1815, 87, 8, 2, 0.00, 'I', '2023-01-24 10:28:46', '2023-01-24 10:28:46'),
	(1817, 87, 10, 2, 3.43, 'I', '2023-01-24 10:28:46', '2023-02-07 17:54:40'),
	(1818, 87, 11, 2, 0.00, 'I', '2023-01-24 10:28:46', '2023-01-24 10:28:46'),
	(1819, 87, 12, 2, 0.00, 'I', '2023-01-24 10:28:46', '2023-01-24 10:28:46'),
	(1820, 87, 13, 2, 0.00, 'I', '2023-01-24 10:28:46', '2023-01-24 10:28:46'),
	(1821, 87, 14, 2, 0.00, 'I', '2023-01-24 10:28:46', '2023-01-24 10:28:46'),
	(1822, 87, 15, 2, 0.00, 'I', '2023-01-24 10:28:46', '2023-01-24 10:28:46'),
	(1823, 87, 16, 2, 0.00, 'I', '2023-01-24 10:28:46', '2023-01-24 10:28:46'),
	(1824, 87, 17, 2, 5.00, 'A', '2023-01-24 10:28:46', '2023-02-02 14:43:15'),
	(1825, 87, 18, 2, 0.00, 'A', '2023-01-24 10:28:46', '2023-01-24 10:28:46'),
	(1826, 87, 19, 2, 0.00, 'I', '2023-01-24 10:28:46', '2023-01-24 10:28:46'),
	(1827, 87, 20, 2, 0.00, 'A', '2023-01-24 10:28:46', '2023-01-24 10:28:46'),
	(1829, 87, 22, 2, 0.00, 'A', '2023-01-24 10:28:46', '2023-01-24 10:28:46'),
	(1830, 87, 23, 2, 0.00, 'I', '2023-01-24 10:28:46', '2023-01-24 10:28:46'),
	(1831, 88, 1, 1, 0.00, 'A', '2023-01-24 15:53:21', '2023-01-24 15:53:21'),
	(1832, 88, 2, 1, 0.00, 'A', '2023-01-24 15:53:21', '2023-01-24 15:53:21'),
	(1833, 88, 4, 1, 0.00, 'A', '2023-01-24 15:53:21', '2023-01-24 15:53:21'),
	(1834, 88, 5, 1, 0.00, 'I', '2023-01-24 15:53:21', '2023-01-24 15:53:21'),
	(1835, 88, 6, 2, 0.00, 'I', '2023-01-24 15:53:21', '2023-01-24 15:53:21'),
	(1836, 88, 7, 2, 0.00, 'I', '2023-01-24 15:53:21', '2023-01-24 15:53:21'),
	(1837, 88, 8, 2, 0.00, 'I', '2023-01-24 15:53:21', '2023-01-24 15:53:21'),
	(1839, 88, 10, 2, 0.00, 'I', '2023-01-24 15:53:21', '2023-01-24 15:53:21'),
	(1840, 88, 11, 2, 0.00, 'I', '2023-01-24 15:53:21', '2023-01-24 15:53:21'),
	(1841, 88, 12, 2, 0.00, 'I', '2023-01-24 15:53:21', '2023-01-24 15:53:21'),
	(1842, 88, 13, 2, 0.00, 'I', '2023-01-24 15:53:21', '2023-01-24 15:53:21'),
	(1843, 88, 14, 2, 0.00, 'I', '2023-01-24 15:53:21', '2023-01-24 15:53:21'),
	(1844, 88, 15, 2, 0.00, 'I', '2023-01-24 15:53:21', '2023-01-24 15:53:21'),
	(1845, 88, 16, 2, 0.00, 'I', '2023-01-24 15:53:21', '2023-01-24 15:53:21'),
	(1846, 88, 17, 2, 0.00, 'I', '2023-01-24 15:53:21', '2023-01-24 15:53:21'),
	(1847, 88, 18, 2, 0.00, 'A', '2023-01-24 15:53:21', '2023-01-24 15:53:21'),
	(1848, 88, 19, 2, 0.00, 'I', '2023-01-24 15:53:21', '2023-01-24 15:53:21'),
	(1849, 88, 20, 2, 0.00, 'A', '2023-01-24 15:53:21', '2023-01-24 15:53:21'),
	(1851, 88, 22, 2, 0.00, 'A', '2023-01-24 15:53:21', '2023-01-24 15:53:21'),
	(1852, 88, 23, 2, 0.00, 'I', '2023-01-24 15:53:21', '2023-01-24 15:53:21'),
	(1853, 89, 1, 1, 0.00, 'A', '2023-01-24 15:57:20', '2023-01-24 15:57:20'),
	(1854, 89, 2, 1, 0.00, 'A', '2023-01-24 15:57:20', '2023-01-24 15:57:20'),
	(1855, 89, 4, 1, 0.00, 'A', '2023-01-24 15:57:20', '2023-01-24 15:57:20'),
	(1856, 89, 5, 1, 0.00, 'I', '2023-01-24 15:57:20', '2023-01-24 15:57:20'),
	(1857, 89, 6, 2, 0.00, 'I', '2023-01-24 15:57:20', '2023-01-24 15:57:20'),
	(1858, 89, 7, 2, 0.00, 'I', '2023-01-24 15:57:20', '2023-01-24 15:57:20'),
	(1859, 89, 8, 2, 0.00, 'I', '2023-01-24 15:57:20', '2023-01-24 15:57:20'),
	(1861, 89, 10, 2, 0.00, 'I', '2023-01-24 15:57:20', '2023-01-24 15:57:20'),
	(1862, 89, 11, 2, 0.00, 'I', '2023-01-24 15:57:20', '2023-01-24 15:57:20'),
	(1863, 89, 12, 2, 0.00, 'I', '2023-01-24 15:57:20', '2023-01-24 15:57:20'),
	(1864, 89, 13, 2, 0.00, 'I', '2023-01-24 15:57:20', '2023-01-24 15:57:20'),
	(1865, 89, 14, 2, 0.00, 'I', '2023-01-24 15:57:20', '2023-01-24 15:57:20'),
	(1866, 89, 15, 2, 0.00, 'I', '2023-01-24 15:57:20', '2023-01-24 15:57:20'),
	(1867, 89, 16, 2, 0.00, 'I', '2023-01-24 15:57:20', '2023-01-24 15:57:20'),
	(1868, 89, 17, 2, 0.00, 'I', '2023-01-24 15:57:20', '2023-01-24 15:57:20'),
	(1869, 89, 18, 2, 0.00, 'A', '2023-01-24 15:57:20', '2023-01-24 15:57:20'),
	(1870, 89, 19, 2, 0.00, 'I', '2023-01-24 15:57:20', '2023-01-24 15:57:20'),
	(1871, 89, 20, 2, 0.00, 'A', '2023-01-24 15:57:20', '2023-01-24 15:57:20'),
	(1873, 89, 22, 2, 0.00, 'A', '2023-01-24 15:57:20', '2023-01-24 15:57:20'),
	(1874, 89, 23, 2, 0.00, 'I', '2023-01-24 15:57:20', '2023-01-24 15:57:20'),
	(1875, 90, 1, 1, 0.00, 'A', '2023-01-24 16:04:17', '2023-01-24 16:04:17'),
	(1876, 90, 2, 1, 0.00, 'A', '2023-01-24 16:04:17', '2023-01-24 16:04:17'),
	(1877, 90, 4, 1, 0.00, 'A', '2023-01-24 16:04:17', '2023-01-24 16:04:17'),
	(1878, 90, 5, 1, 0.00, 'I', '2023-01-24 16:04:17', '2023-01-24 16:04:17'),
	(1879, 90, 6, 2, 0.00, 'I', '2023-01-24 16:04:17', '2023-01-24 16:04:17'),
	(1880, 90, 7, 2, 0.00, 'I', '2023-01-24 16:04:17', '2023-01-24 16:04:17'),
	(1881, 90, 8, 2, 0.00, 'I', '2023-01-24 16:04:17', '2023-01-24 16:04:17'),
	(1883, 90, 10, 2, 0.00, 'I', '2023-01-24 16:04:17', '2023-01-24 16:04:17'),
	(1884, 90, 11, 2, 0.00, 'I', '2023-01-24 16:04:17', '2023-01-24 16:04:17'),
	(1885, 90, 12, 2, 0.00, 'I', '2023-01-24 16:04:17', '2023-01-24 16:04:17'),
	(1886, 90, 13, 2, 0.00, 'I', '2023-01-24 16:04:17', '2023-01-24 16:04:17'),
	(1887, 90, 14, 2, 0.00, 'I', '2023-01-24 16:04:17', '2023-01-24 16:04:17'),
	(1888, 90, 15, 2, 0.00, 'I', '2023-01-24 16:04:17', '2023-01-24 16:04:17'),
	(1889, 90, 16, 2, 0.00, 'I', '2023-01-24 16:04:17', '2023-01-24 16:04:17'),
	(1890, 90, 17, 2, 12.00, 'A', '2023-01-24 16:04:17', '2023-02-10 16:29:07'),
	(1891, 90, 18, 2, 0.00, 'A', '2023-01-24 16:04:17', '2023-01-24 16:04:17'),
	(1892, 90, 19, 2, 0.00, 'I', '2023-01-24 16:04:17', '2023-01-24 16:04:17'),
	(1893, 90, 20, 2, 0.00, 'A', '2023-01-24 16:04:17', '2023-01-24 16:04:17'),
	(1895, 90, 22, 2, 0.00, 'A', '2023-01-24 16:04:17', '2023-01-24 16:04:17'),
	(1896, 90, 23, 2, 0.00, 'I', '2023-01-24 16:04:17', '2023-01-24 16:04:17'),
	(2161, 103, 1, 1, 0.00, 'A', '2023-01-24 16:33:55', '2023-01-24 16:33:55'),
	(2162, 103, 2, 1, 0.00, 'A', '2023-01-24 16:33:55', '2023-01-24 16:33:55'),
	(2163, 103, 4, 1, 0.00, 'A', '2023-01-24 16:33:55', '2023-01-24 16:33:55'),
	(2164, 103, 5, 1, 0.00, 'I', '2023-01-24 16:33:55', '2023-01-24 16:33:55'),
	(2165, 103, 6, 2, 0.00, 'I', '2023-01-24 16:33:55', '2023-01-24 16:33:55'),
	(2166, 103, 7, 2, 0.00, 'I', '2023-01-24 16:33:55', '2023-01-24 16:33:55'),
	(2167, 103, 8, 2, 0.00, 'I', '2023-01-24 16:33:55', '2023-01-24 16:33:55'),
	(2169, 103, 10, 2, 0.00, 'I', '2023-01-24 16:33:55', '2023-01-24 16:33:55'),
	(2170, 103, 11, 2, 0.00, 'I', '2023-01-24 16:33:55', '2023-01-24 16:33:55'),
	(2171, 103, 12, 2, 0.00, 'I', '2023-01-24 16:33:55', '2023-01-24 16:33:55'),
	(2172, 103, 13, 2, 0.00, 'I', '2023-01-24 16:33:55', '2023-01-24 16:33:55'),
	(2173, 103, 14, 2, 0.00, 'I', '2023-01-24 16:33:55', '2023-01-24 16:33:55'),
	(2174, 103, 15, 2, 0.00, 'I', '2023-01-24 16:33:55', '2023-01-24 16:33:55'),
	(2175, 103, 16, 2, 0.00, 'I', '2023-01-24 16:33:55', '2023-01-24 16:33:55'),
	(2176, 103, 17, 2, 0.00, 'I', '2023-01-24 16:33:55', '2023-01-24 16:33:55'),
	(2177, 103, 18, 2, 0.00, 'A', '2023-01-24 16:33:55', '2023-01-24 16:33:55'),
	(2178, 103, 19, 2, 0.00, 'I', '2023-01-24 16:33:55', '2023-01-24 16:33:55'),
	(2179, 103, 20, 2, 0.00, 'A', '2023-01-24 16:33:55', '2023-01-24 16:33:55'),
	(2181, 103, 22, 2, 0.00, 'A', '2023-01-24 16:33:55', '2023-01-24 16:33:55'),
	(2182, 103, 23, 2, 0.00, 'I', '2023-01-24 16:33:55', '2023-01-24 16:33:55'),
	(2183, 104, 1, 1, 0.00, 'A', '2023-01-24 16:33:55', '2023-01-24 16:33:55'),
	(2184, 104, 2, 1, 0.00, 'A', '2023-01-24 16:33:55', '2023-01-24 16:33:55'),
	(2185, 104, 4, 1, 0.00, 'A', '2023-01-24 16:33:55', '2023-01-24 16:33:55'),
	(2186, 104, 5, 1, 0.00, 'I', '2023-01-24 16:33:55', '2023-01-24 16:33:55'),
	(2187, 104, 6, 2, 0.00, 'I', '2023-01-24 16:33:55', '2023-01-24 16:33:55'),
	(2188, 104, 7, 2, 0.00, 'I', '2023-01-24 16:33:55', '2023-01-24 16:33:55'),
	(2189, 104, 8, 2, 0.00, 'I', '2023-01-24 16:33:55', '2023-01-24 16:33:55'),
	(2191, 104, 10, 2, 0.00, 'I', '2023-01-24 16:33:55', '2023-01-24 16:33:55'),
	(2192, 104, 11, 2, 70.00, 'A', '2023-01-24 16:33:55', '2023-02-14 16:05:55'),
	(2193, 104, 12, 2, 0.00, 'I', '2023-01-24 16:33:55', '2023-01-24 16:33:55'),
	(2194, 104, 13, 2, 0.00, 'I', '2023-01-24 16:33:55', '2023-01-24 16:33:55'),
	(2195, 104, 14, 2, 0.00, 'I', '2023-01-24 16:33:55', '2023-02-02 14:56:24'),
	(2196, 104, 15, 2, 0.00, 'I', '2023-01-24 16:33:55', '2023-01-24 16:33:55'),
	(2197, 104, 16, 2, 0.00, 'I', '2023-01-24 16:33:55', '2023-01-24 16:33:55'),
	(2198, 104, 17, 2, 0.00, 'I', '2023-01-24 16:33:55', '2023-01-24 16:33:55'),
	(2199, 104, 18, 2, 0.00, 'A', '2023-01-24 16:33:55', '2023-01-24 16:33:55'),
	(2200, 104, 19, 2, 0.00, 'I', '2023-01-24 16:33:55', '2023-01-24 16:33:55'),
	(2201, 104, 20, 2, 0.00, 'A', '2023-01-24 16:33:55', '2023-01-24 16:33:55'),
	(2203, 104, 22, 2, 0.00, 'A', '2023-01-24 16:33:55', '2023-01-24 16:33:55'),
	(2204, 104, 23, 2, 0.00, 'I', '2023-01-24 16:33:55', '2023-01-24 16:33:55'),
	(2205, 105, 1, 1, 0.00, 'A', '2023-01-24 16:46:12', '2023-01-24 16:46:12'),
	(2206, 105, 2, 1, 0.00, 'A', '2023-01-24 16:46:12', '2023-01-24 16:46:12'),
	(2207, 105, 4, 1, 0.00, 'A', '2023-01-24 16:46:12', '2023-01-24 16:46:12'),
	(2208, 105, 5, 1, 0.00, 'I', '2023-01-24 16:46:12', '2023-01-24 16:46:12'),
	(2209, 105, 6, 2, 0.00, 'I', '2023-01-24 16:46:12', '2023-01-24 16:46:12'),
	(2210, 105, 7, 2, 0.00, 'I', '2023-01-24 16:46:12', '2023-01-24 16:46:12'),
	(2211, 105, 8, 2, 0.00, 'I', '2023-01-24 16:46:12', '2023-01-24 16:46:12'),
	(2213, 105, 10, 2, 0.00, 'I', '2023-01-24 16:46:12', '2023-01-24 16:46:12'),
	(2214, 105, 11, 2, 0.00, 'I', '2023-01-24 16:46:12', '2023-01-24 16:46:12'),
	(2215, 105, 12, 2, 0.00, 'I', '2023-01-24 16:46:12', '2023-01-24 16:46:12'),
	(2216, 105, 13, 2, 0.00, 'I', '2023-01-24 16:46:12', '2023-01-24 16:46:12'),
	(2217, 105, 14, 2, 0.00, 'I', '2023-01-24 16:46:12', '2023-01-24 16:46:12'),
	(2218, 105, 15, 2, 100.00, 'A', '2023-01-24 16:46:12', '2023-02-13 09:56:08'),
	(2219, 105, 16, 2, 0.00, 'I', '2023-01-24 16:46:12', '2023-01-24 16:46:12'),
	(2220, 105, 17, 2, 0.00, 'I', '2023-01-24 16:46:12', '2023-01-24 16:46:12'),
	(2221, 105, 18, 2, 0.00, 'A', '2023-01-24 16:46:12', '2023-01-24 16:46:12'),
	(2222, 105, 19, 2, 0.00, 'I', '2023-01-24 16:46:12', '2023-01-24 16:46:12'),
	(2223, 105, 20, 2, 0.00, 'A', '2023-01-24 16:46:12', '2023-01-24 16:46:12'),
	(2225, 105, 22, 2, 0.00, 'A', '2023-01-24 16:46:12', '2023-01-24 16:46:12'),
	(2226, 105, 23, 2, 0.00, 'I', '2023-01-24 16:46:12', '2023-01-24 16:46:12'),
	(2227, 106, 1, 1, 0.00, 'A', '2023-01-26 15:12:12', '2023-01-26 15:12:12'),
	(2228, 106, 2, 1, 0.00, 'A', '2023-01-26 15:12:12', '2023-01-26 15:12:12'),
	(2229, 106, 4, 1, 0.00, 'A', '2023-01-26 15:12:12', '2023-01-26 15:12:12'),
	(2230, 106, 5, 1, 0.00, 'I', '2023-01-26 15:12:12', '2023-01-26 15:12:12'),
	(2231, 106, 6, 2, 0.00, 'I', '2023-01-26 15:12:12', '2023-01-26 15:12:12'),
	(2232, 106, 7, 2, 0.00, 'I', '2023-01-26 15:12:12', '2023-01-26 15:12:12'),
	(2233, 106, 8, 2, 0.00, 'I', '2023-01-26 15:12:12', '2023-01-26 15:12:12'),
	(2235, 106, 10, 2, 0.00, 'I', '2023-01-26 15:12:12', '2023-01-26 15:12:12'),
	(2236, 106, 11, 2, 0.00, 'I', '2023-01-26 15:12:12', '2023-01-26 15:12:12'),
	(2237, 106, 12, 2, 0.00, 'I', '2023-01-26 15:12:12', '2023-01-26 15:12:12'),
	(2238, 106, 13, 2, 0.00, 'I', '2023-01-26 15:12:12', '2023-01-26 15:12:12'),
	(2239, 106, 14, 2, 0.00, 'I', '2023-01-26 15:12:12', '2023-01-26 15:12:12'),
	(2240, 106, 15, 2, 0.00, 'I', '2023-01-26 15:12:12', '2023-01-26 15:12:12'),
	(2241, 106, 16, 2, 0.00, 'I', '2023-01-26 15:12:12', '2023-01-26 15:12:12'),
	(2242, 106, 17, 2, 0.00, 'I', '2023-01-26 15:12:12', '2023-01-26 15:12:12'),
	(2243, 106, 18, 2, 0.00, 'A', '2023-01-26 15:12:12', '2023-01-26 15:12:12'),
	(2244, 106, 19, 2, 0.00, 'I', '2023-01-26 15:12:12', '2023-01-26 15:12:12'),
	(2245, 106, 20, 2, 0.00, 'A', '2023-01-26 15:12:12', '2023-01-26 15:12:12'),
	(2247, 106, 22, 2, 0.00, 'A', '2023-01-26 15:12:12', '2023-01-26 15:12:12'),
	(2248, 106, 23, 2, 0.00, 'I', '2023-01-26 15:12:12', '2023-01-26 15:12:12'),
	(2249, 76, 24, 1, 0.00, 'A', '2023-02-02 14:59:52', '2023-02-02 14:59:54'),
	(2250, 107, 1, 1, 0.00, 'A', '2023-02-03 17:07:41', '2023-02-03 17:07:41'),
	(2251, 107, 2, 1, 0.00, 'A', '2023-02-03 17:07:41', '2023-02-03 17:07:41'),
	(2252, 107, 4, 1, 0.00, 'A', '2023-02-03 17:07:41', '2023-02-03 17:07:41'),
	(2253, 107, 5, 1, 0.00, 'I', '2023-02-03 17:07:41', '2023-02-03 17:07:41'),
	(2254, 107, 6, 2, 0.00, 'I', '2023-02-03 17:07:41', '2023-02-03 17:07:41'),
	(2255, 107, 7, 2, 0.00, 'I', '2023-02-03 17:07:41', '2023-02-03 17:07:41'),
	(2256, 107, 8, 2, 0.00, 'I', '2023-02-03 17:07:41', '2023-02-03 17:07:41'),
	(2258, 107, 10, 2, 0.00, 'I', '2023-02-03 17:07:41', '2023-02-03 17:07:41'),
	(2259, 107, 11, 2, 53.43, 'A', '2023-02-03 17:07:41', '2023-02-03 17:21:49'),
	(2260, 107, 12, 2, 0.00, 'I', '2023-02-03 17:07:41', '2023-02-03 17:07:41'),
	(2261, 107, 13, 2, 0.00, 'I', '2023-02-03 17:07:41', '2023-02-03 17:07:41'),
	(2262, 107, 14, 2, 0.00, 'I', '2023-02-03 17:07:41', '2023-02-03 17:07:41'),
	(2263, 107, 15, 2, 0.00, 'I', '2023-02-03 17:07:41', '2023-02-03 17:07:41'),
	(2264, 107, 16, 2, 0.00, 'I', '2023-02-03 17:07:41', '2023-02-03 17:07:41'),
	(2265, 107, 17, 2, 0.00, 'I', '2023-02-03 17:07:41', '2023-02-03 17:07:41'),
	(2266, 107, 18, 2, 0.00, 'A', '2023-02-03 17:07:41', '2023-02-03 17:07:41'),
	(2267, 107, 19, 2, 0.00, 'I', '2023-02-03 17:07:41', '2023-02-03 17:07:41'),
	(2268, 107, 20, 2, 0.00, 'A', '2023-02-03 17:07:41', '2023-02-03 17:07:41'),
	(2269, 107, 22, 2, 0.00, 'A', '2023-02-03 17:07:41', '2023-02-03 17:07:41'),
	(2270, 107, 23, 2, 0.00, 'I', '2023-02-03 17:07:41', '2023-02-03 17:07:41'),
	(2271, 1, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-03 17:22:51'),
	(2272, 2, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-03 17:22:51'),
	(2273, 3, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-03 17:22:51'),
	(2274, 4, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-07 16:58:53'),
	(2275, 5, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-07 16:53:50'),
	(2276, 6, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-03 17:22:51'),
	(2277, 7, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-03 17:22:51'),
	(2278, 8, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-07 16:54:12'),
	(2279, 9, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-03 17:22:51'),
	(2280, 10, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-03 17:22:51'),
	(2281, 11, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-03 17:22:51'),
	(2282, 12, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-07 17:00:53'),
	(2283, 13, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-03 17:22:51'),
	(2284, 14, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-07 16:55:41'),
	(2285, 15, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-07 16:55:53'),
	(2286, 16, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-03 17:22:51'),
	(2287, 17, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-07 16:56:05'),
	(2288, 18, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-03 17:22:51'),
	(2289, 19, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-03 17:22:51'),
	(2290, 20, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-03 17:22:51'),
	(2291, 21, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-07 16:54:26'),
	(2292, 22, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-06 11:09:37'),
	(2293, 23, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-10 09:04:12'),
	(2294, 24, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-03 17:22:51'),
	(2295, 25, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-03 17:22:51'),
	(2296, 26, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-03 17:22:51'),
	(2297, 27, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-03 17:22:51'),
	(2298, 28, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-03 17:22:51'),
	(2299, 29, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-03 17:22:51'),
	(2300, 30, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-07 16:53:42'),
	(2301, 31, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-07 16:40:27'),
	(2302, 32, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-07 16:58:12'),
	(2303, 33, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-03 17:22:51'),
	(2304, 34, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-03 17:22:51'),
	(2305, 35, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-03 17:22:51'),
	(2306, 36, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-07 16:54:46'),
	(2307, 37, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-03 17:22:51'),
	(2308, 38, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-07 16:59:05'),
	(2309, 39, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-07 17:01:07'),
	(2310, 40, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-07 16:57:25'),
	(2311, 41, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-03 17:22:51'),
	(2312, 42, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-07 16:58:23'),
	(2313, 43, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-07 16:55:31'),
	(2314, 44, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-03 17:22:51'),
	(2315, 45, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-07 16:59:45'),
	(2316, 46, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-03 17:22:51'),
	(2317, 47, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-07 16:57:59'),
	(2318, 48, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-03 17:22:51'),
	(2319, 49, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-03 17:22:51'),
	(2320, 50, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-03 17:22:51'),
	(2321, 51, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-07 16:54:02'),
	(2322, 52, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-07 16:56:26'),
	(2323, 53, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-03 17:22:51'),
	(2324, 54, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-03 17:22:51'),
	(2325, 55, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-03 17:22:51'),
	(2326, 56, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-03 17:22:51'),
	(2327, 57, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-03 17:22:51'),
	(2328, 58, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-03 17:22:51'),
	(2329, 59, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-03 17:22:51'),
	(2330, 60, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-03 17:22:51'),
	(2331, 61, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-03 17:22:51'),
	(2332, 62, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-03 17:22:51'),
	(2333, 63, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-03 17:22:51'),
	(2334, 65, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-03 17:22:51'),
	(2335, 66, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-03 17:22:51'),
	(2336, 67, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-03 17:22:51'),
	(2337, 68, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-03 17:22:51'),
	(2338, 69, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-03 17:22:51'),
	(2339, 70, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-07 16:54:59'),
	(2340, 71, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-07 16:59:31'),
	(2341, 72, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-07 16:59:19'),
	(2342, 73, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-07 16:55:09'),
	(2343, 76, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-03 17:22:51'),
	(2344, 78, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-03 17:22:51'),
	(2345, 79, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-03 17:22:51'),
	(2346, 80, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-03 17:22:51'),
	(2347, 81, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-03 17:22:51'),
	(2348, 82, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-03 17:22:51'),
	(2349, 83, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-03 17:22:51'),
	(2350, 84, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-07 16:57:15'),
	(2351, 85, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-07 16:54:37'),
	(2352, 86, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-03 17:22:51'),
	(2353, 87, 9, 2, 3.43, 'A', '2023-02-03 17:22:51', '2023-02-07 17:09:22'),
	(2354, 88, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-03 17:22:51'),
	(2355, 89, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-03 17:22:51'),
	(2356, 90, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-03 17:22:51'),
	(2357, 103, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-03 17:22:51'),
	(2358, 104, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-03 17:22:51'),
	(2359, 105, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-03 17:22:51'),
	(2360, 106, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-03 17:22:51'),
	(2361, 107, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-03 17:22:51'),
	(2362, 64, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-03 17:22:51'),
	(2363, 74, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-03 17:22:51'),
	(2364, 75, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-03 17:22:51'),
	(2365, 77, 9, 2, 3.43, 'I', '2023-02-03 17:22:51', '2023-02-03 17:22:51'),
	(2366, 108, 1, 1, 0.00, 'A', '2023-02-09 09:28:08', '2023-02-09 09:28:08'),
	(2367, 108, 2, 1, 0.00, 'A', '2023-02-09 09:28:08', '2023-02-09 09:28:08'),
	(2368, 108, 4, 1, 0.00, 'A', '2023-02-09 09:28:08', '2023-02-09 09:28:08'),
	(2369, 108, 5, 1, 0.00, 'I', '2023-02-09 09:28:08', '2023-02-09 09:28:08'),
	(2370, 108, 6, 2, 0.00, 'I', '2023-02-09 09:28:08', '2023-02-09 09:28:08'),
	(2371, 108, 7, 2, 0.00, 'I', '2023-02-09 09:28:08', '2023-02-09 09:28:08'),
	(2372, 108, 8, 2, 0.00, 'I', '2023-02-09 09:28:08', '2023-02-09 09:28:08'),
	(2373, 108, 9, 2, 0.00, 'I', '2023-02-09 09:28:08', '2023-02-09 09:28:08'),
	(2374, 108, 10, 2, 0.00, 'I', '2023-02-09 09:28:08', '2023-02-09 09:28:08'),
	(2375, 108, 11, 2, 0.00, 'I', '2023-02-09 09:28:08', '2023-02-09 09:28:08'),
	(2376, 108, 12, 2, 0.00, 'I', '2023-02-09 09:28:08', '2023-02-09 09:28:08'),
	(2377, 108, 13, 2, 0.00, 'I', '2023-02-09 09:28:08', '2023-02-09 09:28:08'),
	(2378, 108, 14, 2, 0.00, 'I', '2023-02-09 09:28:08', '2023-02-09 09:28:08'),
	(2379, 108, 15, 2, 0.00, 'I', '2023-02-09 09:28:08', '2023-02-09 09:28:08'),
	(2380, 108, 16, 2, 15.00, 'A', '2023-02-09 09:28:08', '2023-02-13 14:18:28'),
	(2381, 108, 17, 2, 2.00, 'A', '2023-02-09 09:28:08', '2023-02-09 09:52:04'),
	(2382, 108, 18, 2, 0.00, 'A', '2023-02-09 09:28:08', '2023-02-09 09:28:08'),
	(2383, 108, 19, 2, 0.00, 'I', '2023-02-09 09:28:08', '2023-02-09 09:28:08'),
	(2384, 108, 20, 2, 0.00, 'A', '2023-02-09 09:28:08', '2023-02-09 09:28:08'),
	(2385, 108, 22, 2, 0.00, 'A', '2023-02-09 09:28:08', '2023-02-09 09:28:08'),
	(2386, 108, 23, 2, 0.00, 'I', '2023-02-09 09:28:08', '2023-02-09 09:28:08'),
	(2387, 109, 1, 1, 0.00, 'A', '2023-02-09 09:34:05', '2023-02-09 09:34:05'),
	(2388, 109, 2, 1, 0.00, 'A', '2023-02-09 09:34:05', '2023-02-09 09:34:05'),
	(2389, 109, 4, 1, 0.00, 'A', '2023-02-09 09:34:05', '2023-02-09 09:34:05'),
	(2390, 109, 5, 1, 0.00, 'I', '2023-02-09 09:34:05', '2023-02-09 09:34:05'),
	(2391, 109, 6, 2, 0.00, 'I', '2023-02-09 09:34:05', '2023-02-09 09:34:05'),
	(2392, 109, 7, 2, 0.00, 'I', '2023-02-09 09:34:05', '2023-02-09 09:34:05'),
	(2393, 109, 8, 2, 0.00, 'I', '2023-02-09 09:34:05', '2023-02-09 09:34:05'),
	(2394, 109, 9, 2, 0.00, 'I', '2023-02-09 09:34:05', '2023-02-09 09:34:05'),
	(2395, 109, 10, 2, 0.00, 'I', '2023-02-09 09:34:05', '2023-02-09 09:34:05'),
	(2396, 109, 11, 2, 0.00, 'I', '2023-02-09 09:34:05', '2023-02-09 09:34:05'),
	(2397, 109, 12, 2, 0.00, 'I', '2023-02-09 09:34:05', '2023-02-09 09:34:05'),
	(2398, 109, 13, 2, 0.00, 'I', '2023-02-09 09:34:05', '2023-02-09 09:34:05'),
	(2399, 109, 14, 2, 0.00, 'I', '2023-02-09 09:34:05', '2023-02-09 09:34:05'),
	(2400, 109, 15, 2, 0.00, 'I', '2023-02-09 09:34:05', '2023-02-09 09:34:05'),
	(2401, 109, 16, 2, 0.00, 'I', '2023-02-09 09:34:05', '2023-02-09 09:34:05'),
	(2402, 109, 17, 2, 6.00, 'A', '2023-02-09 09:34:05', '2023-02-09 09:52:26'),
	(2403, 109, 18, 2, 0.00, 'A', '2023-02-09 09:34:05', '2023-02-09 09:34:05'),
	(2404, 109, 19, 2, 0.00, 'I', '2023-02-09 09:34:05', '2023-02-09 09:34:05'),
	(2405, 109, 20, 2, 0.00, 'A', '2023-02-09 09:34:05', '2023-02-09 09:34:05'),
	(2406, 109, 22, 2, 0.00, 'A', '2023-02-09 09:34:05', '2023-02-09 09:34:05'),
	(2407, 109, 23, 2, 0.00, 'I', '2023-02-09 09:34:05', '2023-02-09 09:34:05'),
	(2408, 9, 23, 1, 39.87, 'A', '2023-02-15 10:49:42', '2023-02-15 10:49:42');

-- Volcando estructura para tabla planilla.tbl_bancos
CREATE TABLE IF NOT EXISTS `tbl_bancos` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Campo identificador de la tabla',
  `nombre` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL COMMENT 'Campo para el nombre del banco',
  `direccion` text COLLATE utf8mb4_spanish2_ci NOT NULL COMMENT 'Campo para la direccion del banco',
  `telefono` varchar(11) COLLATE utf8mb4_spanish2_ci NOT NULL COMMENT 'Campo donde se almacena el telefono del banco',
  `created_at` datetime DEFAULT NULL COMMENT 'Campo para almacenar la hora y la fecha en que se inserto el registro',
  `updated_at` datetime DEFAULT NULL COMMENT 'Campo para almacenar la hora y la fecha en que se actualizo el registro',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci COMMENT='Tabla para lamacenar los bancos donde se pagara la planilla  se guarda info general';

-- Volcando datos para la tabla planilla.tbl_bancos: ~0 rows (aproximadamente)
INSERT INTO `tbl_bancos` (`id`, `nombre`, `direccion`, `telefono`, `created_at`, `updated_at`) VALUES
	(1, 'Banco de América Central (BAC)', 'Centro Roosevelt, 55° Av.Sur Entre Alameda Roosevelt y, Av. Olímpica Edificio "D", El Salvador, San Salvador', '2206-4000', '2023-01-05 14:25:28', '2023-01-05 14:26:14');

-- Volcando estructura para tabla planilla.tbl_bitacoras
CREATE TABLE IF NOT EXISTS `tbl_bitacoras` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Campo identificador de la tabla',
  `id_usuario` int(11) DEFAULT NULL COMMENT 'Campo donde se almacena el id del usario que relaizo unaccion ',
  `accion` text COLLATE utf8mb4_spanish2_ci COMMENT 'Campo donde se almacena la accion que realizo el usuario',
  `created_at` datetime DEFAULT NULL COMMENT 'Campo para almacenar la hora y la fecha en que se inserto el registro',
  `updated_at` datetime DEFAULT NULL COMMENT 'Campo para almacenar la hora y la fecha en que se actualizo el registro',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=376 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci COMMENT='tabla para el almacenaminetos de las acciones que realiza el usario ';

-- Volcando datos para la tabla planilla.tbl_bitacoras: ~341 rows (aproximadamente)
INSERT INTO `tbl_bitacoras` (`id`, `id_usuario`, `accion`, `created_at`, `updated_at`) VALUES
	(1, 3, 'HA INICIADO SESIÓN EN SIPLA', '2023-02-09 09:34:38', '2023-02-09 09:34:38'),
	(2, 3, 'HA DESACTIVADO UNA ASIGNACIÓN EN SIPLA', '2023-02-09 09:50:39', '2023-02-09 09:50:39'),
	(3, 3, 'HA ACTIVADO UNA ASIGNACIÓN EN SIPLA', '2023-02-09 09:50:56', '2023-02-09 09:50:56'),
	(4, 3, 'HA DESACTIVADO UNA ASIGNACIÓN EN SIPLA', '2023-02-09 09:51:12', '2023-02-09 09:51:12'),
	(5, 3, 'HA OBTENIDO INFORMACIÓN DE UNA ASIGNACIÓN PARA ACTUALIZAR EN SIPLA', '2023-02-09 09:51:31', '2023-02-09 09:51:31'),
	(6, 3, 'HA ACTUALIZADO UNA ASIGNACIÓN EN SIPLA', '2023-02-09 09:51:52', '2023-02-09 09:51:52'),
	(7, 3, 'HA ACTIVADO UNA ASIGNACIÓN EN SIPLA', '2023-02-09 09:52:04', '2023-02-09 09:52:04'),
	(8, 3, 'HA ACTIVADO UNA ASIGNACIÓN EN SIPLA', '2023-02-09 09:52:17', '2023-02-09 09:52:17'),
	(9, 3, 'HA OBTENIDO INFORMACIÓN DE UNA ASIGNACIÓN PARA ACTUALIZAR EN SIPLA', '2023-02-09 09:52:24', '2023-02-09 09:52:24'),
	(10, 3, 'HA ACTUALIZADO UNA ASIGNACIÓN EN SIPLA', '2023-02-09 09:52:26', '2023-02-09 09:52:26'),
	(11, 3, 'HA DESACTIVADO UNA ASIGNACIÓN EN SIPLA', '2023-02-09 09:52:56', '2023-02-09 09:52:56'),
	(12, 3, 'HA GENERADO PLANILLA 2023-FE-PQ-Q1 EN SIPLA', '2023-02-09 10:04:45', '2023-02-09 10:04:45'),
	(13, 3, 'HA GENERADO REPORTE DE PLANILLA 2023-FE-PQ-Q1 EN SIPLA', '2023-02-09 10:05:54', '2023-02-09 10:05:54'),
	(14, 3, 'HA INICIADO SESIÓN EN SIPLA', '2023-02-10 09:02:32', '2023-02-10 09:02:32'),
	(15, 3, 'HA DESACTIVADO UNA ASIGNACIÓN EN SIPLA', '2023-02-10 09:02:50', '2023-02-10 09:02:50'),
	(16, 3, 'HA DESACTIVADO UNA ASIGNACIÓN EN SIPLA', '2023-02-10 09:03:04', '2023-02-10 09:03:04'),
	(17, 3, 'HA DESACTIVADO UNA ASIGNACIÓN EN SIPLA', '2023-02-10 09:03:17', '2023-02-10 09:03:17'),
	(18, 3, 'HA DESACTIVADO UNA ASIGNACIÓN EN SIPLA', '2023-02-10 09:03:21', '2023-02-10 09:03:21'),
	(19, 3, 'HA DESACTIVADO UNA ASIGNACIÓN EN SIPLA', '2023-02-10 09:04:12', '2023-02-10 09:04:12'),
	(20, 3, 'HA DESACTIVADO UNA ASIGNACIÓN EN SIPLA', '2023-02-10 09:05:34', '2023-02-10 09:05:34'),
	(21, 3, 'HA OBTENIDO INFORMACIÓN DE UNA ASIGNACIÓN PARA ACTUALIZAR EN SIPLA', '2023-02-10 09:05:58', '2023-02-10 09:05:58'),
	(22, 3, 'HA ACTUALIZADO UNA ASIGNACIÓN EN SIPLA', '2023-02-10 09:06:05', '2023-02-10 09:06:05'),
	(23, 3, 'HA DESACTIVADO UNA ASIGNACIÓN EN SIPLA', '2023-02-10 09:06:56', '2023-02-10 09:06:56'),
	(24, 3, 'HA DESACTIVADO UNA ASIGNACIÓN EN SIPLA', '2023-02-10 09:08:23', '2023-02-10 09:08:23'),
	(25, 3, 'HA DESACTIVADO UNA ASIGNACIÓN EN SIPLA', '2023-02-10 09:08:48', '2023-02-10 09:08:48'),
	(26, 3, 'HA OBTENIDO INFORMACIÓN DE UNA ASIGNACIÓN PARA ACTUALIZAR EN SIPLA', '2023-02-10 09:09:05', '2023-02-10 09:09:05'),
	(27, 3, 'HA ACTUALIZADO UNA ASIGNACIÓN EN SIPLA', '2023-02-10 09:09:09', '2023-02-10 09:09:09'),
	(28, 3, 'HA DESACTIVADO UNA ASIGNACIÓN EN SIPLA', '2023-02-10 09:09:32', '2023-02-10 09:09:32'),
	(29, 3, 'HA OBTENIDO INFORMACIÓN DE UNA ASIGNACIÓN PARA ACTUALIZAR EN SIPLA', '2023-02-10 09:09:52', '2023-02-10 09:09:52'),
	(30, 3, 'HA ACTUALIZADO UNA ASIGNACIÓN EN SIPLA', '2023-02-10 09:09:55', '2023-02-10 09:09:55'),
	(31, 3, 'HA OBTENIDO INFORMACIÓN DE UNA ASIGNACIÓN PARA ACTUALIZAR EN SIPLA', '2023-02-10 09:10:09', '2023-02-10 09:10:09'),
	(32, 3, 'HA ACTUALIZADO UNA ASIGNACIÓN EN SIPLA', '2023-02-10 09:10:13', '2023-02-10 09:10:13'),
	(33, 3, 'HA OBTENIDO INFORMACIÓN DE UNA ASIGNACIÓN PARA ACTUALIZAR EN SIPLA', '2023-02-10 09:10:34', '2023-02-10 09:10:34'),
	(34, 3, 'HA ACTUALIZADO UNA ASIGNACIÓN EN SIPLA', '2023-02-10 09:10:37', '2023-02-10 09:10:37'),
	(35, 3, 'HA OBTENIDO INFORMACIÓN DE UNA ASIGNACIÓN PARA ACTUALIZAR EN SIPLA', '2023-02-10 09:11:10', '2023-02-10 09:11:10'),
	(36, 3, 'HA ACTUALIZADO UNA ASIGNACIÓN EN SIPLA', '2023-02-10 09:11:14', '2023-02-10 09:11:14'),
	(37, 3, 'HA OBTENIDO INFORMACIÓN DE UNA ASIGNACIÓN PARA ACTUALIZAR EN SIPLA', '2023-02-10 09:11:33', '2023-02-10 09:11:33'),
	(38, 3, 'HA ACTUALIZADO UNA ASIGNACIÓN EN SIPLA', '2023-02-10 09:11:36', '2023-02-10 09:11:36'),
	(39, 3, 'HA OBTENIDO INFORMACIÓN DE UNA ASIGNACIÓN PARA ACTUALIZAR EN SIPLA', '2023-02-10 09:11:55', '2023-02-10 09:11:55'),
	(40, 3, 'HA ACTUALIZADO UNA ASIGNACIÓN EN SIPLA', '2023-02-10 09:11:58', '2023-02-10 09:11:58'),
	(41, 3, 'HA DESACTIVADO UNA ASIGNACIÓN EN SIPLA', '2023-02-10 09:13:19', '2023-02-10 09:13:19'),
	(42, 3, 'HA DESACTIVADO UNA ASIGNACIÓN EN SIPLA', '2023-02-10 09:13:46', '2023-02-10 09:13:46'),
	(43, 3, 'HA OBTENIDO INFORMACIÓN DE UNA ASIGNACIÓN PARA ACTUALIZAR EN SIPLA', '2023-02-10 09:14:57', '2023-02-10 09:14:57'),
	(44, 3, 'HA ACTUALIZADO UNA ASIGNACIÓN EN SIPLA', '2023-02-10 09:15:00', '2023-02-10 09:15:00'),
	(45, 3, 'HA OBTENIDO INFORMACIÓN DE UNA ASIGNACIÓN PARA ACTUALIZAR EN SIPLA', '2023-02-10 09:15:24', '2023-02-10 09:15:24'),
	(46, 3, 'HA ACTUALIZADO UNA ASIGNACIÓN EN SIPLA', '2023-02-10 09:15:27', '2023-02-10 09:15:27'),
	(47, 3, 'HA OBTENIDO INFORMACIÓN DE UNA ASIGNACIÓN PARA ACTUALIZAR EN SIPLA', '2023-02-10 09:15:48', '2023-02-10 09:15:48'),
	(48, 3, 'HA ACTUALIZADO UNA ASIGNACIÓN EN SIPLA', '2023-02-10 09:15:51', '2023-02-10 09:15:51'),
	(49, 3, 'HA OBTENIDO INFORMACIÓN DE UNA ASIGNACIÓN PARA ACTUALIZAR EN SIPLA', '2023-02-10 09:16:33', '2023-02-10 09:16:33'),
	(50, 3, 'HA ACTUALIZADO UNA ASIGNACIÓN EN SIPLA', '2023-02-10 09:16:37', '2023-02-10 09:16:37'),
	(51, 3, 'HA DESACTIVADO UNA ASIGNACIÓN EN SIPLA', '2023-02-10 09:16:58', '2023-02-10 09:16:58'),
	(52, 3, 'HA OBTENIDO INFORMACIÓN DE UNA ASIGNACIÓN PARA ACTUALIZAR EN SIPLA', '2023-02-10 09:17:15', '2023-02-10 09:17:15'),
	(53, 3, 'HA ACTUALIZADO UNA ASIGNACIÓN EN SIPLA', '2023-02-10 09:17:19', '2023-02-10 09:17:19'),
	(54, 3, 'HA OBTENIDO INFORMACIÓN DE UNA ASIGNACIÓN PARA ACTUALIZAR EN SIPLA', '2023-02-10 09:17:52', '2023-02-10 09:17:52'),
	(55, 3, 'HA ACTUALIZADO UNA ASIGNACIÓN EN SIPLA', '2023-02-10 09:17:55', '2023-02-10 09:17:55'),
	(56, 3, 'HA OBTENIDO INFORMACIÓN DE UNA ASIGNACIÓN PARA ACTUALIZAR EN SIPLA', '2023-02-10 09:18:19', '2023-02-10 09:18:19'),
	(57, 3, 'HA ACTUALIZADO UNA ASIGNACIÓN EN SIPLA', '2023-02-10 09:18:22', '2023-02-10 09:18:22'),
	(58, 3, 'HA OBTENIDO INFORMACIÓN DE UNA ASIGNACIÓN PARA ACTUALIZAR EN SIPLA', '2023-02-10 09:18:40', '2023-02-10 09:18:40'),
	(59, 3, 'HA ACTUALIZADO UNA ASIGNACIÓN EN SIPLA', '2023-02-10 09:18:43', '2023-02-10 09:18:43'),
	(60, 3, 'HA OBTENIDO INFORMACIÓN DE UNA ASIGNACIÓN PARA ACTUALIZAR EN SIPLA', '2023-02-10 09:19:00', '2023-02-10 09:19:00'),
	(61, 3, 'HA ACTUALIZADO UNA ASIGNACIÓN EN SIPLA', '2023-02-10 09:19:03', '2023-02-10 09:19:03'),
	(62, 3, 'HA OBTENIDO INFORMACIÓN DE UNA ASIGNACIÓN PARA ACTUALIZAR EN SIPLA', '2023-02-10 09:19:22', '2023-02-10 09:19:22'),
	(63, 3, 'HA ACTUALIZADO UNA ASIGNACIÓN EN SIPLA', '2023-02-10 09:19:25', '2023-02-10 09:19:25'),
	(64, 3, 'HA ACTIVADO UNA ASIGNACIÓN EN SIPLA', '2023-02-10 09:20:35', '2023-02-10 09:20:35'),
	(65, 3, 'HA ACTIVADO UNA ASIGNACIÓN EN SIPLA', '2023-02-10 09:20:58', '2023-02-10 09:20:58'),
	(66, 3, 'HA ACTIVADO UNA ASIGNACIÓN EN SIPLA', '2023-02-10 09:21:33', '2023-02-10 09:21:33'),
	(67, 3, 'HA ACTIVADO UNA ASIGNACIÓN EN SIPLA', '2023-02-10 09:21:40', '2023-02-10 09:21:40'),
	(68, 3, 'HA ACTIVADO UNA ASIGNACIÓN EN SIPLA', '2023-02-10 09:22:15', '2023-02-10 09:22:15'),
	(69, 3, 'HA ACTIVADO UNA ASIGNACIÓN EN SIPLA', '2023-02-10 09:22:27', '2023-02-10 09:22:27'),
	(70, 3, 'HA ACTIVADO UNA ASIGNACIÓN EN SIPLA', '2023-02-10 09:22:43', '2023-02-10 09:22:43'),
	(71, 3, 'HA ACTIVADO UNA ASIGNACIÓN EN SIPLA', '2023-02-10 09:22:51', '2023-02-10 09:22:51'),
	(72, 3, 'HA ACTIVADO UNA ASIGNACIÓN EN SIPLA', '2023-02-10 09:23:13', '2023-02-10 09:23:13'),
	(73, 3, 'HA ACTIVADO UNA ASIGNACIÓN EN SIPLA', '2023-02-10 09:23:22', '2023-02-10 09:23:22'),
	(74, 3, 'HA ACTIVADO UNA ASIGNACIÓN EN SIPLA', '2023-02-10 09:23:43', '2023-02-10 09:23:43'),
	(75, 3, 'HA ACTIVADO UNA ASIGNACIÓN EN SIPLA', '2023-02-10 09:23:51', '2023-02-10 09:23:51'),
	(76, 3, 'HA ACTIVADO UNA ASIGNACIÓN EN SIPLA', '2023-02-10 09:24:33', '2023-02-10 09:24:33'),
	(77, 3, 'HA ACTIVADO UNA ASIGNACIÓN EN SIPLA', '2023-02-10 09:24:43', '2023-02-10 09:24:43'),
	(78, 3, 'HA ACTIVADO UNA ASIGNACIÓN EN SIPLA', '2023-02-10 09:25:14', '2023-02-10 09:25:14'),
	(79, 3, 'HA ACTIVADO UNA ASIGNACIÓN EN SIPLA', '2023-02-10 09:25:24', '2023-02-10 09:25:24'),
	(80, 3, 'HA DESACTIVADO UNA ASIGNACIÓN EN SIPLA', '2023-02-10 09:27:55', '2023-02-10 09:27:55'),
	(81, 3, 'HA DESACTIVADO UNA ASIGNACIÓN EN SIPLA', '2023-02-10 09:28:29', '2023-02-10 09:28:29'),
	(82, 3, 'HA ACTIVADO UNA ASIGNACIÓN EN SIPLA', '2023-02-10 09:54:54', '2023-02-10 09:54:54'),
	(83, 3, 'HA OBTENIDO INFORMACIÓN DE UNA ASIGNACIÓN PARA ACTUALIZAR EN SIPLA', '2023-02-10 09:55:00', '2023-02-10 09:55:00'),
	(84, 3, 'HA ACTUALIZADO UNA ASIGNACIÓN EN SIPLA', '2023-02-10 09:55:14', '2023-02-10 09:55:14'),
	(85, 3, 'HA ACTIVADO UNA ASIGNACIÓN EN SIPLA', '2023-02-10 09:55:41', '2023-02-10 09:55:41'),
	(86, 3, 'HA OBTENIDO INFORMACIÓN DE UNA ASIGNACIÓN PARA ACTUALIZAR EN SIPLA', '2023-02-10 09:55:50', '2023-02-10 09:55:50'),
	(87, 3, 'HA ACTUALIZADO UNA ASIGNACIÓN EN SIPLA', '2023-02-10 09:56:02', '2023-02-10 09:56:02'),
	(88, 3, 'HA OBTENIDO INFORMACIÓN DE UNA ASIGNACIÓN PARA ACTUALIZAR EN SIPLA', '2023-02-10 09:56:19', '2023-02-10 09:56:19'),
	(89, 3, 'HA ACTUALIZADO UNA ASIGNACIÓN EN SIPLA', '2023-02-10 09:56:26', '2023-02-10 09:56:26'),
	(90, 3, 'HA DESACTIVADO UN PRÉSTAMO EN SIPLA', '2023-02-10 10:03:30', '2023-02-10 10:03:30'),
	(91, 3, 'HA INICIADO SESIÓN EN SIPLA', '2023-02-10 16:01:31', '2023-02-10 16:01:31'),
	(92, 3, 'HA ACTIVADO UNA ASIGNACIÓN EN SIPLA', '2023-02-10 16:02:43', '2023-02-10 16:02:43'),
	(93, 3, 'HA DESACTIVADO UNA ASIGNACIÓN EN SIPLA', '2023-02-10 16:04:48', '2023-02-10 16:04:48'),
	(94, 3, 'HA ACTIVADO UNA ASIGNACIÓN EN SIPLA', '2023-02-10 16:04:58', '2023-02-10 16:04:58'),
	(95, 3, 'HA OBTENIDO INFORMACIÓN DE UNA ASIGNACIÓN PARA ACTUALIZAR EN SIPLA', '2023-02-10 16:05:05', '2023-02-10 16:05:05'),
	(96, 3, 'HA ACTUALIZADO UNA ASIGNACIÓN EN SIPLA', '2023-02-10 16:05:23', '2023-02-10 16:05:23'),
	(97, 3, 'HA ACTIVADO UNA ASIGNACIÓN EN SIPLA', '2023-02-10 16:05:41', '2023-02-10 16:05:41'),
	(98, 3, 'HA OBTENIDO INFORMACIÓN DE UNA ASIGNACIÓN PARA ACTUALIZAR EN SIPLA', '2023-02-10 16:05:47', '2023-02-10 16:05:47'),
	(99, 3, 'HA ACTUALIZADO UNA ASIGNACIÓN EN SIPLA', '2023-02-10 16:05:51', '2023-02-10 16:05:51'),
	(100, 3, 'HA OBTENIDO INFORMACIÓN DE UNA ASIGNACIÓN PARA ACTUALIZAR EN SIPLA', '2023-02-10 16:14:15', '2023-02-10 16:14:15'),
	(101, 3, 'HA ACTUALIZADO UNA ASIGNACIÓN EN SIPLA', '2023-02-10 16:14:19', '2023-02-10 16:14:19'),
	(102, 3, 'HA ACTIVADO UNA ASIGNACIÓN EN SIPLA', '2023-02-10 16:14:33', '2023-02-10 16:14:33'),
	(103, 3, 'HA OBTENIDO INFORMACIÓN DE UNA ASIGNACIÓN PARA ACTUALIZAR EN SIPLA', '2023-02-10 16:14:39', '2023-02-10 16:14:39'),
	(104, 3, 'HA ACTUALIZADO UNA ASIGNACIÓN EN SIPLA', '2023-02-10 16:14:46', '2023-02-10 16:14:46'),
	(105, 3, 'HA ACTIVADO UNA ASIGNACIÓN EN SIPLA', '2023-02-10 16:17:35', '2023-02-10 16:17:35'),
	(106, 3, 'HA OBTENIDO INFORMACIÓN DE UNA ASIGNACIÓN PARA ACTUALIZAR EN SIPLA', '2023-02-10 16:20:56', '2023-02-10 16:20:56'),
	(107, 3, 'HA ACTUALIZADO UNA ASIGNACIÓN EN SIPLA', '2023-02-10 16:21:00', '2023-02-10 16:21:00'),
	(108, 3, 'HA ACTIVADO UNA ASIGNACIÓN EN SIPLA', '2023-02-10 16:27:37', '2023-02-10 16:27:37'),
	(109, 3, 'HA OBTENIDO INFORMACIÓN DE UNA ASIGNACIÓN PARA ACTUALIZAR EN SIPLA', '2023-02-10 16:27:50', '2023-02-10 16:27:50'),
	(110, 3, 'HA ACTUALIZADO UNA ASIGNACIÓN EN SIPLA', '2023-02-10 16:27:53', '2023-02-10 16:27:53'),
	(111, 3, 'HA OBTENIDO INFORMACIÓN DE UNA ASIGNACIÓN PARA ACTUALIZAR EN SIPLA', '2023-02-10 16:28:04', '2023-02-10 16:28:04'),
	(112, 3, 'HA ACTUALIZADO UNA ASIGNACIÓN EN SIPLA', '2023-02-10 16:28:24', '2023-02-10 16:28:24'),
	(113, 3, 'HA ACTIVADO UNA ASIGNACIÓN EN SIPLA', '2023-02-10 16:28:54', '2023-02-10 16:28:54'),
	(114, 3, 'HA OBTENIDO INFORMACIÓN DE UNA ASIGNACIÓN PARA ACTUALIZAR EN SIPLA', '2023-02-10 16:29:01', '2023-02-10 16:29:01'),
	(115, 3, 'HA ACTUALIZADO UNA ASIGNACIÓN EN SIPLA', '2023-02-10 16:29:07', '2023-02-10 16:29:07'),
	(116, 3, 'HA RECALCULADO PLANILLA 2023-FE-PQ-Q1 EN SIPLA', '2023-02-10 16:29:31', '2023-02-10 16:29:31'),
	(117, 3, 'HA GENERADO REPORTE DE PLANILLA 2023-FE-PQ-Q1 EN SIPLA', '2023-02-10 16:29:43', '2023-02-10 16:29:43'),
	(118, 3, 'HA GENERADO UN RECIBO DE VACACIÓN EN SIPLA', '2023-02-10 16:30:08', '2023-02-10 16:30:08'),
	(119, 3, 'HA INICIADO SESIÓN EN SIPLA', '2023-02-10 17:09:32', '2023-02-10 17:09:32'),
	(120, 3, 'HA ACTIVADO UNA ASIGNACIÓN EN SIPLA', '2023-02-10 17:09:52', '2023-02-10 17:09:52'),
	(121, 3, 'HA RECALCULADO PLANILLA 2023-FE-PQ-Q1 EN SIPLA', '2023-02-10 17:10:06', '2023-02-10 17:10:06'),
	(122, 3, 'HA RECALCULADO PLANILLA 2023-FE-PQ-Q1 EN SIPLA', '2023-02-10 17:36:34', '2023-02-10 17:36:34'),
	(123, 3, 'HA CERRADO SESIÓN EN SIPLA', '2023-02-10 17:40:51', '2023-02-10 17:40:51'),
	(124, 3, 'HA INICIADO SESIÓN EN SIPLA', '2023-02-11 08:32:31', '2023-02-11 08:32:31'),
	(125, 3, 'HA RECALCULADO PLANILLA 2023-FE-PQ-Q1 EN SIPLA', '2023-02-11 08:32:46', '2023-02-11 08:32:46'),
	(126, 3, 'HA GENERADO REPORTE DE PLANILLA 2023-FE-PQ-Q1 EN SIPLA', '2023-02-11 08:32:50', '2023-02-11 08:32:50'),
	(127, 3, 'HA INGRESADO UNA COMISIÓN EN SIPLA', '2023-02-11 09:08:16', '2023-02-11 09:08:16'),
	(128, 3, 'HA INGRESADO UNA COMISIÓN EN SIPLA', '2023-02-11 09:15:34', '2023-02-11 09:15:34'),
	(129, 3, 'HA INGRESADO UNA COMISIÓN EN SIPLA', '2023-02-11 09:16:22', '2023-02-11 09:16:22'),
	(130, 3, 'HA INGRESADO UNA COMISIÓN EN SIPLA', '2023-02-11 09:17:06', '2023-02-11 09:17:06'),
	(131, 3, 'HA OBTENIDO INFORMACIÓN DE UNA COMISIÓN PARA ACTUALIZAR EN SIPLA', '2023-02-11 09:18:14', '2023-02-11 09:18:14'),
	(132, 3, 'HA ACTUALIZADO UNA COMISIÓN EN SIPLA', '2023-02-11 09:18:22', '2023-02-11 09:18:22'),
	(133, 3, 'HA OBTENIDO INFORMACIÓN DE UNA COMISIÓN PARA ACTUALIZAR EN SIPLA', '2023-02-11 09:19:50', '2023-02-11 09:19:50'),
	(134, 3, 'HA ACTUALIZADO UNA COMISIÓN EN SIPLA', '2023-02-11 09:20:13', '2023-02-11 09:20:13'),
	(135, 3, 'HA GENERADO REPORTE DE PLANILLA 2023-ENE-PQ-Q1 EN SIPLA', '2023-02-11 09:20:47', '2023-02-11 09:20:47'),
	(136, 3, 'HA INGRESADO UNA COMISIÓN EN SIPLA', '2023-02-11 09:23:59', '2023-02-11 09:23:59'),
	(137, 3, 'HA GENERADO UN RECIBO DE VACACIÓN EN SIPLA', '2023-02-11 09:35:12', '2023-02-11 09:35:12'),
	(138, 1, 'HA CERRADO SESIÓN EN SIPLA', '2023-02-11 10:43:46', '2023-02-11 10:43:46'),
	(139, 3, 'HA INICIADO SESIÓN EN SIPLA', '2023-02-11 10:44:13', '2023-02-11 10:44:13'),
	(140, 3, 'HA INICIADO SESIÓN EN SIPLA', '2023-02-13 08:03:31', '2023-02-13 08:03:31'),
	(141, 3, 'HA GENERADO REPORTE PRÉSTAMOS EN SIPLA', '2023-02-13 08:09:56', '2023-02-13 08:09:56'),
	(142, 3, 'HA ACTIVADO UNA ASIGNACIÓN EN SIPLA', '2023-02-13 08:21:48', '2023-02-13 08:21:48'),
	(143, 3, 'HA ACTIVADO UNA ASIGNACIÓN EN SIPLA', '2023-02-13 08:22:04', '2023-02-13 08:22:04'),
	(144, 3, 'HA RECALCULADO PLANILLA 2023-FE-PQ-Q1 EN SIPLA', '2023-02-13 09:03:25', '2023-02-13 09:03:25'),
	(145, 3, 'HA GENERADO REPORTE DE PLANILLA 2023-FE-PQ-Q1 EN SIPLA', '2023-02-13 09:08:58', '2023-02-13 09:08:58'),
	(146, 3, 'HA ACTIVADO UNA ASIGNACIÓN EN SIPLA', '2023-02-13 09:19:53', '2023-02-13 09:19:53'),
	(147, 3, 'HA ACTIVADO UN EMPLEADO EN SIPLA', '2023-02-13 09:30:11', '2023-02-13 09:30:11'),
	(148, 3, 'HA RECALCULADO PLANILLA 2023-FE-PQ-Q1 EN SIPLA', '2023-02-13 09:30:23', '2023-02-13 09:30:23'),
	(149, 3, 'HA RECALCULADO PLANILLA 2023-FE-PQ-Q1 EN SIPLA', '2023-02-13 09:30:35', '2023-02-13 09:30:35'),
	(150, 3, 'HA GENERADO REPORTE DE PLANILLA 2023-FE-PQ-Q1 EN SIPLA', '2023-02-13 09:30:38', '2023-02-13 09:30:38'),
	(151, 3, 'HA OBTENIDO INFORMACIÓN DE UNA ASIGNACIÓN PARA ACTUALIZAR EN SIPLA', '2023-02-13 09:35:26', '2023-02-13 09:35:26'),
	(152, 3, 'HA ACTUALIZADO UNA ASIGNACIÓN EN SIPLA', '2023-02-13 09:35:30', '2023-02-13 09:35:30'),
	(153, 3, 'HA ACTIVADO UN EMPLEADO EN SIPLA', '2023-02-13 09:37:21', '2023-02-13 09:37:21'),
	(154, 3, 'HA RECALCULADO PLANILLA 2023-FE-PQ-Q1 EN SIPLA', '2023-02-13 09:37:48', '2023-02-13 09:37:48'),
	(155, 3, 'HA GENERADO REPORTE DE PLANILLA 2023-FE-PQ-Q1 EN SIPLA', '2023-02-13 09:39:58', '2023-02-13 09:39:58'),
	(156, 3, 'HA ACTIVADO UNA ASIGNACIÓN EN SIPLA', '2023-02-13 09:55:38', '2023-02-13 09:55:38'),
	(157, 3, 'HA ACTIVADO UNA ASIGNACIÓN EN SIPLA', '2023-02-13 09:56:08', '2023-02-13 09:56:08'),
	(158, 3, 'HA OBTENIDO INFORMACIÓN DE UNA ASIGNACIÓN PARA ACTUALIZAR EN SIPLA', '2023-02-13 10:05:14', '2023-02-13 10:05:14'),
	(159, 3, 'HA ACTUALIZADO UNA ASIGNACIÓN EN SIPLA', '2023-02-13 10:05:17', '2023-02-13 10:05:17'),
	(160, 3, 'HA INICIADO SESIÓN EN SIPLA', '2023-02-13 11:27:13', '2023-02-13 11:27:13'),
	(161, 3, 'HA RECALCULADO PLANILLA 2023-FE-PQ-Q1 EN SIPLA', '2023-02-13 11:28:10', '2023-02-13 11:28:10'),
	(162, 3, 'HA RECALCULADO PLANILLA 2023-FE-PQ-Q1 EN SIPLA', '2023-02-13 11:28:19', '2023-02-13 11:28:19'),
	(163, 3, 'HA RECALCULADO PLANILLA 2023-FE-PQ-Q1 EN SIPLA', '2023-02-13 11:41:31', '2023-02-13 11:41:31'),
	(164, 3, 'HA GENERADO REPORTE DE PLANILLA 2023-FE-PQ-Q1 EN SIPLA', '2023-02-13 11:41:36', '2023-02-13 11:41:36'),
	(165, 3, 'HA OBTENIDO INFORMACIÓN DE UNA ASIGNACIÓN PARA ACTUALIZAR EN SIPLA', '2023-02-13 11:43:22', '2023-02-13 11:43:22'),
	(166, 3, 'HA ACTUALIZADO UNA ASIGNACIÓN EN SIPLA', '2023-02-13 11:43:27', '2023-02-13 11:43:27'),
	(167, 3, 'HA OBTENIDO INFORMACIÓN DE UNA ASIGNACIÓN PARA ACTUALIZAR EN SIPLA', '2023-02-13 11:43:47', '2023-02-13 11:43:47'),
	(168, 3, 'HA ACTUALIZADO UNA ASIGNACIÓN EN SIPLA', '2023-02-13 11:43:52', '2023-02-13 11:43:52'),
	(169, 3, 'HA RECALCULADO PLANILLA 2023-FE-PQ-Q1 EN SIPLA', '2023-02-13 11:46:46', '2023-02-13 11:46:46'),
	(170, 3, 'HA GENERADO REPORTE DE PLANILLA 2023-FE-PQ-Q1 EN SIPLA', '2023-02-13 11:46:50', '2023-02-13 11:46:50'),
	(171, 3, 'HA OBTENIDO INFORMACIÓN DE UNA ASIGNACIÓN PARA ACTUALIZAR EN SIPLA', '2023-02-13 11:48:31', '2023-02-13 11:48:31'),
	(172, 3, 'HA ACTUALIZADO UNA ASIGNACIÓN EN SIPLA', '2023-02-13 11:48:35', '2023-02-13 11:48:35'),
	(173, 3, 'HA OBTENIDO INFORMACIÓN DE UNA ASIGNACIÓN PARA ACTUALIZAR EN SIPLA', '2023-02-13 11:49:52', '2023-02-13 11:49:52'),
	(174, 3, 'HA ACTUALIZADO UNA ASIGNACIÓN EN SIPLA', '2023-02-13 11:49:56', '2023-02-13 11:49:56'),
	(175, 3, 'HA ACTIVADO UN PRÉSTAMO EN SIPLA', '2023-02-13 11:57:50', '2023-02-13 11:57:50'),
	(176, 3, 'HA RECALCULADO PLANILLA 2023-FE-PQ-Q1 EN SIPLA', '2023-02-13 12:04:35', '2023-02-13 12:04:35'),
	(177, 3, 'HA RECALCULADO PLANILLA 2023-FE-PQ-Q1 EN SIPLA', '2023-02-13 12:04:43', '2023-02-13 12:04:43'),
	(178, 3, 'HA OBTENIDO INFORMACIÓN DE UNA ASIGNACIÓN PARA ACTUALIZAR EN SIPLA', '2023-02-13 14:12:02', '2023-02-13 14:12:02'),
	(179, 3, 'HA ACTUALIZADO UNA ASIGNACIÓN EN SIPLA', '2023-02-13 14:12:21', '2023-02-13 14:12:21'),
	(180, 3, 'HA OBTENIDO INFORMACIÓN DE UNA ASIGNACIÓN PARA ACTUALIZAR EN SIPLA', '2023-02-13 14:15:00', '2023-02-13 14:15:00'),
	(181, 3, 'HA ACTUALIZADO UNA ASIGNACIÓN EN SIPLA', '2023-02-13 14:15:08', '2023-02-13 14:15:08'),
	(182, 3, 'HA ACTIVADO UNA ASIGNACIÓN EN SIPLA', '2023-02-13 14:15:17', '2023-02-13 14:15:17'),
	(183, 3, 'HA OBTENIDO INFORMACIÓN DE UNA ASIGNACIÓN PARA ACTUALIZAR EN SIPLA', '2023-02-13 14:15:57', '2023-02-13 14:15:57'),
	(184, 3, 'HA ACTUALIZADO UNA ASIGNACIÓN EN SIPLA', '2023-02-13 14:16:02', '2023-02-13 14:16:02'),
	(185, 3, 'HA ACTIVADO UNA ASIGNACIÓN EN SIPLA', '2023-02-13 14:16:11', '2023-02-13 14:16:11'),
	(186, 3, 'HA ACTIVADO UNA ASIGNACIÓN EN SIPLA', '2023-02-13 14:16:27', '2023-02-13 14:16:27'),
	(187, 3, 'HA OBTENIDO INFORMACIÓN DE UNA ASIGNACIÓN PARA ACTUALIZAR EN SIPLA', '2023-02-13 14:16:33', '2023-02-13 14:16:33'),
	(188, 3, 'HA ACTUALIZADO UNA ASIGNACIÓN EN SIPLA', '2023-02-13 14:16:39', '2023-02-13 14:16:39'),
	(189, 3, 'HA ACTIVADO UNA ASIGNACIÓN EN SIPLA', '2023-02-13 14:17:21', '2023-02-13 14:17:21'),
	(190, 3, 'HA OBTENIDO INFORMACIÓN DE UNA ASIGNACIÓN PARA ACTUALIZAR EN SIPLA', '2023-02-13 14:17:29', '2023-02-13 14:17:29'),
	(191, 3, 'HA ACTUALIZADO UNA ASIGNACIÓN EN SIPLA', '2023-02-13 14:17:34', '2023-02-13 14:17:34'),
	(192, 3, 'HA ACTIVADO UNA ASIGNACIÓN EN SIPLA', '2023-02-13 14:17:48', '2023-02-13 14:17:48'),
	(193, 3, 'HA OBTENIDO INFORMACIÓN DE UNA ASIGNACIÓN PARA ACTUALIZAR EN SIPLA', '2023-02-13 14:17:55', '2023-02-13 14:17:55'),
	(194, 3, 'HA ACTUALIZADO UNA ASIGNACIÓN EN SIPLA', '2023-02-13 14:18:00', '2023-02-13 14:18:00'),
	(195, 3, 'HA ACTIVADO UNA ASIGNACIÓN EN SIPLA', '2023-02-13 14:18:16', '2023-02-13 14:18:16'),
	(196, 3, 'HA OBTENIDO INFORMACIÓN DE UNA ASIGNACIÓN PARA ACTUALIZAR EN SIPLA', '2023-02-13 14:18:23', '2023-02-13 14:18:23'),
	(197, 3, 'HA ACTUALIZADO UNA ASIGNACIÓN EN SIPLA', '2023-02-13 14:18:28', '2023-02-13 14:18:28'),
	(198, 3, 'HA ACTIVADO UNA ASIGNACIÓN EN SIPLA', '2023-02-13 14:18:40', '2023-02-13 14:18:40'),
	(199, 3, 'HA OBTENIDO INFORMACIÓN DE UNA ASIGNACIÓN PARA ACTUALIZAR EN SIPLA', '2023-02-13 14:18:47', '2023-02-13 14:18:47'),
	(200, 3, 'HA ACTUALIZADO UNA ASIGNACIÓN EN SIPLA', '2023-02-13 14:18:52', '2023-02-13 14:18:52'),
	(201, 3, 'HA ACTIVADO UNA ASIGNACIÓN EN SIPLA', '2023-02-13 14:19:03', '2023-02-13 14:19:03'),
	(202, 3, 'HA OBTENIDO INFORMACIÓN DE UNA ASIGNACIÓN PARA ACTUALIZAR EN SIPLA', '2023-02-13 14:19:10', '2023-02-13 14:19:10'),
	(203, 3, 'HA ACTUALIZADO UNA ASIGNACIÓN EN SIPLA', '2023-02-13 14:19:15', '2023-02-13 14:19:15'),
	(204, 3, 'HA INICIADO SESIÓN EN SIPLA', '2023-02-13 14:28:14', '2023-02-13 14:28:14'),
	(205, 3, 'HA OBTENIDO INFORMACIÓN DE UNA ASIGNACIÓN PARA ACTUALIZAR EN SIPLA', '2023-02-13 14:33:30', '2023-02-13 14:33:30'),
	(206, 3, 'HA ACTUALIZADO UNA ASIGNACIÓN EN SIPLA', '2023-02-13 14:33:37', '2023-02-13 14:33:37'),
	(207, 3, 'HA OBTENIDO INFORMACIÓN DE UN PRÉSTAMO PARA ACTUALIZAR EN SIPLA', '2023-02-13 15:15:21', '2023-02-13 15:15:21'),
	(208, 3, 'HA ACTUALIZADO UN PRÉSTAMO EN SIPLA', '2023-02-13 15:15:28', '2023-02-13 15:15:28'),
	(209, 3, 'HA RECALCULADO PLANILLA 2023-FE-PQ-Q1 EN SIPLA', '2023-02-13 15:32:45', '2023-02-13 15:32:45'),
	(210, 3, 'HA DESACTIVADO UN PRÉSTAMO EN SIPLA', '2023-02-13 15:35:06', '2023-02-13 15:35:06'),
	(211, 3, 'HA ACTIVADO UNA ASIGNACIÓN EN SIPLA', '2023-02-13 15:40:24', '2023-02-13 15:40:24'),
	(212, 3, 'HA OBTENIDO INFORMACIÓN DE UNA ASIGNACIÓN PARA ACTUALIZAR EN SIPLA', '2023-02-13 15:42:11', '2023-02-13 15:42:11'),
	(213, 3, 'HA ACTUALIZADO UNA ASIGNACIÓN EN SIPLA', '2023-02-13 15:42:18', '2023-02-13 15:42:18'),
	(214, 2, 'HA INICIADO SESIÓN EN SIPLA', '2023-02-13 15:45:11', '2023-02-13 15:45:11'),
	(215, 3, 'HA CERRADO SESIÓN EN SIPLA', '2023-02-13 16:02:11', '2023-02-13 16:02:11'),
	(216, 3, 'HA INICIADO SESIÓN EN SIPLA', '2023-02-13 16:21:41', '2023-02-13 16:21:41'),
	(217, 3, 'HA GENERADO REPORTE DE PLANILLA 2023-FE-PQ-Q1 EN SIPLA', '2023-02-13 16:22:13', '2023-02-13 16:22:13'),
	(218, 1, 'HA REALIZADO BUSQUEDA PARA ACTUALIZAR CONTRASEÑA EN SIPLA', '2023-02-13 16:23:57', '2023-02-13 16:23:57'),
	(219, 1, 'HA ACTUALIZADO SU CONTRASEÑA EN SIPLA', '2023-02-13 16:24:29', '2023-02-13 16:24:29'),
	(220, 1, 'HA INICIADO SESIÓN EN SIPLA', '2023-02-13 16:24:34', '2023-02-13 16:24:34'),
	(221, 1, 'HA CERRADO SESIÓN EN SIPLA', '2023-02-13 16:24:56', '2023-02-13 16:24:56'),
	(222, 3, 'HA GENERADO REPORTE DE PLANILLA 2023-ENE-PQ-Q1 EN SIPLA', '2023-02-13 16:25:54', '2023-02-13 16:25:54'),
	(223, 3, 'HA GENERADO REPORTE DE PLANILLA 2023-FE-PQ-Q1 EN SIPLA', '2023-02-13 16:25:59', '2023-02-13 16:25:59'),
	(224, 3, 'HA INICIADO SESIÓN EN SIPLA', '2023-02-14 10:19:05', '2023-02-14 10:19:05'),
	(225, 3, 'HA GENERADO REPORTE DE EMPLEADOS EN SIPLA', '2023-02-14 10:19:49', '2023-02-14 10:19:49'),
	(226, 3, 'HA ACTIVADO UNA ASIGNACIÓN EN SIPLA', '2023-02-14 11:23:49', '2023-02-14 11:23:49'),
	(227, 3, 'HA RECALCULADO PLANILLA 2023-FE-PQ-Q1 EN SIPLA', '2023-02-14 11:24:31', '2023-02-14 11:24:31'),
	(228, 3, 'HA RECALCULADO PLANILLA 2023-FE-PQ-Q1 EN SIPLA', '2023-02-14 11:29:08', '2023-02-14 11:29:08'),
	(229, 3, 'HA INICIADO SESIÓN EN SIPLA', '2023-02-14 15:53:16', '2023-02-14 15:53:16'),
	(230, 3, 'HA OBTENIDO INFORMACIÓN DE UNA COMISIÓN PARA ACTUALIZAR EN SIPLA', '2023-02-14 16:02:58', '2023-02-14 16:02:58'),
	(231, 3, 'HA ACTUALIZADO UNA COMISIÓN EN SIPLA', '2023-02-14 16:03:25', '2023-02-14 16:03:25'),
	(232, 3, 'HA OBTENIDO INFORMACIÓN DE UNA COMISIÓN PARA ACTUALIZAR EN SIPLA', '2023-02-14 16:03:33', '2023-02-14 16:03:33'),
	(233, 3, 'HA ACTUALIZADO UNA COMISIÓN EN SIPLA', '2023-02-14 16:03:38', '2023-02-14 16:03:38'),
	(234, 3, 'HA OBTENIDO INFORMACIÓN DE UNA COMISIÓN PARA ACTUALIZAR EN SIPLA', '2023-02-14 16:03:46', '2023-02-14 16:03:46'),
	(235, 3, 'HA ACTUALIZADO UNA COMISIÓN EN SIPLA', '2023-02-14 16:03:51', '2023-02-14 16:03:51'),
	(236, 3, 'HA ACTIVADO UNA ASIGNACIÓN EN SIPLA', '2023-02-14 16:05:55', '2023-02-14 16:05:55'),
	(237, 3, 'HA RECALCULADO PLANILLA 2023-FE-PQ-Q1 EN SIPLA', '2023-02-14 16:11:07', '2023-02-14 16:11:07'),
	(238, 3, 'HA ACTIVADO UNA ASIGNACIÓN EN SIPLA', '2023-02-14 16:34:57', '2023-02-14 16:34:57'),
	(239, 3, 'HA OBTENIDO INFORMACIÓN DE UNA ASIGNACIÓN PARA ACTUALIZAR EN SIPLA', '2023-02-14 16:35:04', '2023-02-14 16:35:04'),
	(240, 3, 'HA ACTUALIZADO UNA ASIGNACIÓN EN SIPLA', '2023-02-14 16:35:09', '2023-02-14 16:35:09'),
	(241, 3, 'HA OBTENIDO INFORMACIÓN DE UNA ASIGNACIÓN PARA ACTUALIZAR EN SIPLA', '2023-02-14 16:36:29', '2023-02-14 16:36:29'),
	(242, 3, 'HA ACTUALIZADO UNA ASIGNACIÓN EN SIPLA', '2023-02-14 16:36:35', '2023-02-14 16:36:35'),
	(243, 3, 'HA ACTIVADO UNA ASIGNACIÓN EN SIPLA', '2023-02-14 16:43:16', '2023-02-14 16:43:16'),
	(244, 3, 'HA OBTENIDO INFORMACIÓN DE UNA ASIGNACIÓN PARA ACTUALIZAR EN SIPLA', '2023-02-14 16:43:24', '2023-02-14 16:43:24'),
	(245, 3, 'HA ACTUALIZADO UNA ASIGNACIÓN EN SIPLA', '2023-02-14 16:43:30', '2023-02-14 16:43:30'),
	(246, 3, 'HA OBTENIDO INFORMACIÓN DE UNA ASIGNACIÓN PARA ACTUALIZAR EN SIPLA', '2023-02-14 16:44:16', '2023-02-14 16:44:16'),
	(247, 3, 'HA ACTUALIZADO UNA ASIGNACIÓN EN SIPLA', '2023-02-14 16:44:26', '2023-02-14 16:44:26'),
	(248, 3, 'HA OBTENIDO INFORMACIÓN DE UNA ASIGNACIÓN PARA ACTUALIZAR EN SIPLA', '2023-02-14 16:44:39', '2023-02-14 16:44:39'),
	(249, 3, 'HA ACTUALIZADO UNA ASIGNACIÓN EN SIPLA', '2023-02-14 16:44:42', '2023-02-14 16:44:42'),
	(250, 3, 'HA OBTENIDO INFORMACIÓN DE UNA ASIGNACIÓN PARA ACTUALIZAR EN SIPLA', '2023-02-14 16:44:54', '2023-02-14 16:44:54'),
	(251, 3, 'HA ACTUALIZADO UNA ASIGNACIÓN EN SIPLA', '2023-02-14 16:45:00', '2023-02-14 16:45:00'),
	(252, 3, 'HA OBTENIDO INFORMACIÓN DE UNA ASIGNACIÓN PARA ACTUALIZAR EN SIPLA', '2023-02-14 16:45:25', '2023-02-14 16:45:25'),
	(253, 3, 'HA ACTUALIZADO UNA ASIGNACIÓN EN SIPLA', '2023-02-14 16:46:01', '2023-02-14 16:46:01'),
	(254, 3, 'HA OBTENIDO INFORMACIÓN DE UNA ASIGNACIÓN PARA ACTUALIZAR EN SIPLA', '2023-02-14 16:46:18', '2023-02-14 16:46:18'),
	(255, 3, 'HA ACTUALIZADO UNA ASIGNACIÓN EN SIPLA', '2023-02-14 16:46:23', '2023-02-14 16:46:23'),
	(256, 3, 'HA OBTENIDO INFORMACIÓN DE UNA ASIGNACIÓN PARA ACTUALIZAR EN SIPLA', '2023-02-14 16:46:39', '2023-02-14 16:46:39'),
	(257, 3, 'HA ACTUALIZADO UNA ASIGNACIÓN EN SIPLA', '2023-02-14 16:46:44', '2023-02-14 16:46:44'),
	(258, 3, 'HA OBTENIDO INFORMACIÓN DE UNA ASIGNACIÓN PARA ACTUALIZAR EN SIPLA', '2023-02-14 16:46:56', '2023-02-14 16:46:56'),
	(259, 3, 'HA ACTUALIZADO UNA ASIGNACIÓN EN SIPLA', '2023-02-14 16:47:00', '2023-02-14 16:47:00'),
	(260, 3, 'HA OBTENIDO INFORMACIÓN DE UNA ASIGNACIÓN PARA ACTUALIZAR EN SIPLA', '2023-02-14 16:47:16', '2023-02-14 16:47:16'),
	(261, 3, 'HA ACTUALIZADO UNA ASIGNACIÓN EN SIPLA', '2023-02-14 16:47:20', '2023-02-14 16:47:20'),
	(262, 3, 'HA OBTENIDO INFORMACIÓN DE UNA ASIGNACIÓN PARA ACTUALIZAR EN SIPLA', '2023-02-14 16:47:31', '2023-02-14 16:47:31'),
	(263, 3, 'HA ACTUALIZADO UNA ASIGNACIÓN EN SIPLA', '2023-02-14 16:47:35', '2023-02-14 16:47:35'),
	(264, 3, 'HA OBTENIDO INFORMACIÓN DE UNA ASIGNACIÓN PARA ACTUALIZAR EN SIPLA', '2023-02-14 16:47:50', '2023-02-14 16:47:50'),
	(265, 3, 'HA ACTUALIZADO UNA ASIGNACIÓN EN SIPLA', '2023-02-14 16:47:54', '2023-02-14 16:47:54'),
	(266, 3, 'HA ACTIVADO UNA ASIGNACIÓN EN SIPLA', '2023-02-14 16:48:12', '2023-02-14 16:48:12'),
	(267, 3, 'HA OBTENIDO INFORMACIÓN DE UNA ASIGNACIÓN PARA ACTUALIZAR EN SIPLA', '2023-02-14 16:48:18', '2023-02-14 16:48:18'),
	(268, 3, 'HA ACTUALIZADO UNA ASIGNACIÓN EN SIPLA', '2023-02-14 16:48:22', '2023-02-14 16:48:22'),
	(269, 3, 'HA OBTENIDO INFORMACIÓN DE UNA ASIGNACIÓN PARA ACTUALIZAR EN SIPLA', '2023-02-14 16:48:33', '2023-02-14 16:48:33'),
	(270, 3, 'HA ACTUALIZADO UNA ASIGNACIÓN EN SIPLA', '2023-02-14 16:48:37', '2023-02-14 16:48:37'),
	(271, 3, 'HA OBTENIDO INFORMACIÓN DE UNA ASIGNACIÓN PARA ACTUALIZAR EN SIPLA', '2023-02-14 16:48:49', '2023-02-14 16:48:49'),
	(272, 3, 'HA ACTUALIZADO UNA ASIGNACIÓN EN SIPLA', '2023-02-14 16:48:53', '2023-02-14 16:48:53'),
	(273, 3, 'HA OBTENIDO INFORMACIÓN DE UNA ASIGNACIÓN PARA ACTUALIZAR EN SIPLA', '2023-02-14 16:49:13', '2023-02-14 16:49:13'),
	(274, 3, 'HA ACTUALIZADO UNA ASIGNACIÓN EN SIPLA', '2023-02-14 16:49:18', '2023-02-14 16:49:18'),
	(275, 3, 'HA RECALCULADO PLANILLA 2023-FE-PQ-Q1 EN SIPLA', '2023-02-14 16:49:33', '2023-02-14 16:49:33'),
	(276, 3, 'HA OBTENIDO INFORMACIÓN DE UNA ASIGNACIÓN PARA ACTUALIZAR EN SIPLA', '2023-02-14 17:06:59', '2023-02-14 17:06:59'),
	(277, 3, 'HA ACTUALIZADO UNA ASIGNACIÓN EN SIPLA', '2023-02-14 17:07:02', '2023-02-14 17:07:02'),
	(278, 3, 'HA OBTENIDO INFORMACIÓN DE UNA ASIGNACIÓN PARA ACTUALIZAR EN SIPLA', '2023-02-14 17:07:21', '2023-02-14 17:07:21'),
	(279, 3, 'HA ACTUALIZADO UNA ASIGNACIÓN EN SIPLA', '2023-02-14 17:07:27', '2023-02-14 17:07:27'),
	(280, 3, 'HA RECALCULADO PLANILLA 2023-FE-PQ-Q1 EN SIPLA', '2023-02-14 17:24:46', '2023-02-14 17:24:46'),
	(281, 3, 'HA RECALCULADO PLANILLA 2023-FE-PQ-Q1 EN SIPLA', '2023-02-14 17:24:53', '2023-02-14 17:24:53'),
	(282, 3, 'HA RECALCULADO PLANILLA 2023-FE-PQ-Q1 EN SIPLA', '2023-02-14 17:25:07', '2023-02-14 17:25:07'),
	(283, 3, 'HA GENERADO REPORTE DE PLANILLA 2023-FE-PQ-Q1 EN SIPLA', '2023-02-14 17:25:12', '2023-02-14 17:25:12'),
	(284, 3, 'HA OBTENIDO INFORMACIÓN DE UNA COMISIÓN PARA ACTUALIZAR EN SIPLA', '2023-02-14 17:28:37', '2023-02-14 17:28:37'),
	(285, 3, 'HA ACTUALIZADO UNA COMISIÓN EN SIPLA', '2023-02-14 17:28:43', '2023-02-14 17:28:43'),
	(286, 3, 'HA OBTENIDO INFORMACIÓN DE UNA COMISIÓN PARA ACTUALIZAR EN SIPLA', '2023-02-14 17:28:54', '2023-02-14 17:28:54'),
	(287, 3, 'HA ACTUALIZADO UNA COMISIÓN EN SIPLA', '2023-02-14 17:29:04', '2023-02-14 17:29:04'),
	(288, 3, 'HA OBTENIDO INFORMACIÓN DE UNA COMISIÓN PARA ACTUALIZAR EN SIPLA', '2023-02-14 17:29:12', '2023-02-14 17:29:12'),
	(289, 3, 'HA ACTUALIZADO UNA COMISIÓN EN SIPLA', '2023-02-14 17:29:17', '2023-02-14 17:29:17'),
	(290, 3, 'HA INGRESADO UNA COMISIÓN EN SIPLA', '2023-02-14 17:29:35', '2023-02-14 17:29:35'),
	(291, 3, 'HA OBTENIDO INFORMACIÓN DE UNA COMISIÓN PARA ACTUALIZAR EN SIPLA', '2023-02-14 17:29:55', '2023-02-14 17:29:55'),
	(292, 3, 'HA INGRESADO UNA COMISIÓN EN SIPLA', '2023-02-14 17:30:17', '2023-02-14 17:30:17'),
	(293, 3, 'HA INGRESADO UNA COMISIÓN EN SIPLA', '2023-02-14 17:30:31', '2023-02-14 17:30:31'),
	(294, 3, 'HA RECALCULADO PLANILLA 2023-FE-PQ-Q1 EN SIPLA', '2023-02-14 17:30:42', '2023-02-14 17:30:42'),
	(295, 3, 'HA RECALCULADO PLANILLA 2023-FE-PQ-Q1 EN SIPLA', '2023-02-14 17:30:51', '2023-02-14 17:30:51'),
	(296, 3, 'HA RECALCULADO PLANILLA 2023-FE-PQ-Q1 EN SIPLA', '2023-02-14 17:31:02', '2023-02-14 17:31:02'),
	(297, 3, 'HA GENERADO REPORTE DE PLANILLA 2023-FE-PQ-Q1 EN SIPLA', '2023-02-14 17:31:07', '2023-02-14 17:31:07'),
	(298, 3, 'HA INICIADO SESIÓN EN SIPLA', '2023-02-15 08:57:38', '2023-02-15 08:57:38'),
	(299, 3, 'HA RECALCULADO PLANILLA 2023-FE-PQ-Q1 EN SIPLA', '2023-02-15 08:57:52', '2023-02-15 08:57:52'),
	(300, 3, 'HA GENERADO REPORTE DE PLANILLA 2023-FE-PQ-Q1 EN SIPLA', '2023-02-15 08:57:56', '2023-02-15 08:57:56'),
	(301, 3, 'HA RECALCULADO PLANILLA 2023-FE-PQ-Q1 EN SIPLA', '2023-02-15 09:08:50', '2023-02-15 09:08:50'),
	(302, 3, 'HA GENERADO REPORTE DE PLANILLA 2023-FE-PQ-Q1 EN SIPLA', '2023-02-15 09:08:55', '2023-02-15 09:08:55'),
	(303, 3, 'HA RECALCULADO PLANILLA 2023-FE-PQ-Q1 EN SIPLA', '2023-02-15 09:10:58', '2023-02-15 09:10:58'),
	(304, 3, 'HA GENERADO REPORTE DE PLANILLA 2023-FE-PQ-Q1 EN SIPLA', '2023-02-15 09:11:01', '2023-02-15 09:11:01'),
	(305, 3, 'HA RECALCULADO PLANILLA 2023-FE-PQ-Q1 EN SIPLA', '2023-02-15 09:12:47', '2023-02-15 09:12:47'),
	(306, 3, 'HA GENERADO REPORTE DE PLANILLA 2023-FE-PQ-Q1 EN SIPLA', '2023-02-15 09:12:51', '2023-02-15 09:12:51'),
	(307, 3, 'HA RECALCULADO PLANILLA 2023-FE-PQ-Q1 EN SIPLA', '2023-02-15 09:35:27', '2023-02-15 09:35:27'),
	(308, 3, 'HA GENERADO REPORTE DE PLANILLA 2023-FE-PQ-Q1 EN SIPLA', '2023-02-15 09:35:31', '2023-02-15 09:35:31'),
	(309, 3, 'HA RECALCULADO PLANILLA 2023-FE-PQ-Q1 EN SIPLA', '2023-02-15 09:38:59', '2023-02-15 09:38:59'),
	(310, 3, 'HA GENERADO REPORTE DE PLANILLA 2023-FE-PQ-Q1 EN SIPLA', '2023-02-15 09:39:04', '2023-02-15 09:39:04'),
	(311, 3, 'HA OBTENIDO INFORMACIÓN DE UNA COMISIÓN PARA ACTUALIZAR EN SIPLA', '2023-02-15 09:49:28', '2023-02-15 09:49:28'),
	(312, 3, 'HA ACTUALIZADO UNA COMISIÓN EN SIPLA', '2023-02-15 09:49:33', '2023-02-15 09:49:33'),
	(313, 3, 'HA RECALCULADO PLANILLA 2023-FE-PQ-Q1 EN SIPLA', '2023-02-15 09:49:43', '2023-02-15 09:49:43'),
	(314, 3, 'HA GENERADO REPORTE DE PLANILLA 2023-FE-PQ-Q1 EN SIPLA', '2023-02-15 09:49:47', '2023-02-15 09:49:47'),
	(315, 3, 'HA OBTENIDO INFORMACIÓN DE UNA COMISIÓN PARA ACTUALIZAR EN SIPLA', '2023-02-15 09:50:35', '2023-02-15 09:50:35'),
	(316, 3, 'HA ACTUALIZADO UNA COMISIÓN EN SIPLA', '2023-02-15 09:50:41', '2023-02-15 09:50:41'),
	(317, 3, 'HA RECALCULADO PLANILLA 2023-FE-PQ-Q1 EN SIPLA', '2023-02-15 09:51:10', '2023-02-15 09:51:10'),
	(318, 3, 'HA GENERADO REPORTE DE PLANILLA 2023-FE-PQ-Q1 EN SIPLA', '2023-02-15 09:51:19', '2023-02-15 09:51:19'),
	(319, 3, 'HA RECALCULADO PLANILLA 2023-FE-PQ-Q1 EN SIPLA', '2023-02-15 09:57:53', '2023-02-15 09:57:53'),
	(320, 3, 'HA GENERADO REPORTE DE PLANILLA 2023-FE-PQ-Q1 EN SIPLA', '2023-02-15 09:57:57', '2023-02-15 09:57:57'),
	(321, 3, 'HA GENERADO REPORTE DE PLANILLA 2023-FE-PQ-Q1 EN SIPLA', '2023-02-15 10:08:47', '2023-02-15 10:08:47'),
	(322, 3, 'HA INICIADO SESIÓN EN SIPLA', '2023-02-15 10:17:02', '2023-02-15 10:17:02'),
	(323, 3, 'HA RECALCULADO PLANILLA 2023-FE-PQ-Q1 EN SIPLA', '2023-02-15 10:17:15', '2023-02-15 10:17:15'),
	(324, 3, 'HA GENERADO REPORTE DE PLANILLA 2023-FE-PQ-Q1 EN SIPLA', '2023-02-15 10:17:19', '2023-02-15 10:17:19'),
	(325, 3, 'HA GENERADO CSV DE PLANILLA 2023-FE-PQ-Q1 EN SIPLA', '2023-02-15 10:28:44', '2023-02-15 10:28:44'),
	(326, 3, 'HA GENERADO CSV DE PLANILLA 2023-FE-PQ-Q1 EN SIPLA', '2023-02-15 10:49:48', '2023-02-15 10:49:48'),
	(327, 3, 'HA INICIADO SESIÓN EN SIPLA', '2023-02-15 15:10:05', '2023-02-15 15:10:05'),
	(328, 3, 'HA OBTENIDO INFORMACIÓN DE UNA COMISIÓN PARA ACTUALIZAR EN SIPLA', '2023-02-15 15:15:55', '2023-02-15 15:15:55'),
	(329, 3, 'HA ACTUALIZADO UNA COMISIÓN EN SIPLA', '2023-02-15 15:16:27', '2023-02-15 15:16:27'),
	(330, 3, 'HA OBTENIDO INFORMACIÓN DE UNA COMISIÓN PARA ACTUALIZAR EN SIPLA', '2023-02-15 15:16:35', '2023-02-15 15:16:35'),
	(331, 3, 'HA OBTENIDO INFORMACIÓN DE UNA COMISIÓN PARA ACTUALIZAR EN SIPLA', '2023-02-15 15:16:41', '2023-02-15 15:16:41'),
	(332, 3, 'HA OBTENIDO INFORMACIÓN DE UNA COMISIÓN PARA ACTUALIZAR EN SIPLA', '2023-02-15 15:16:46', '2023-02-15 15:16:46'),
	(333, 3, 'HA ACTUALIZADO UNA COMISIÓN EN SIPLA', '2023-02-15 15:16:52', '2023-02-15 15:16:52'),
	(334, 3, 'HA OBTENIDO INFORMACIÓN DE UNA COMISIÓN PARA ACTUALIZAR EN SIPLA', '2023-02-15 15:17:05', '2023-02-15 15:17:05'),
	(335, 3, 'HA ACTUALIZADO UNA COMISIÓN EN SIPLA', '2023-02-15 15:17:20', '2023-02-15 15:17:20'),
	(336, 3, 'HA OBTENIDO INFORMACIÓN DE UNA COMISIÓN PARA ACTUALIZAR EN SIPLA', '2023-02-15 15:17:39', '2023-02-15 15:17:39'),
	(337, 3, 'HA ACTUALIZADO UNA COMISIÓN EN SIPLA', '2023-02-15 15:17:51', '2023-02-15 15:17:51'),
	(338, 3, 'HA OBTENIDO INFORMACIÓN DE UNA COMISIÓN PARA ACTUALIZAR EN SIPLA', '2023-02-15 15:18:14', '2023-02-15 15:18:14'),
	(339, 3, 'HA ACTUALIZADO UNA COMISIÓN EN SIPLA', '2023-02-15 15:18:26', '2023-02-15 15:18:26'),
	(340, 3, 'HA RECALCULADO PLANILLA 2023-FE-PQ-Q1 EN SIPLA', '2023-02-15 15:24:59', '2023-02-15 15:24:59'),
	(341, 3, 'HA RECALCULADO PLANILLA 2023-FE-PQ-Q1 EN SIPLA', '2023-02-15 15:25:11', '2023-02-15 15:25:11'),
	(342, 3, 'HA GENERADO REPORTE DE PLANILLA 2023-FE-PQ-Q1 EN SIPLA', '2023-02-15 15:25:14', '2023-02-15 15:25:14'),
	(343, 3, 'HA GENERADO CSV DE PLANILLA 2023-FE-PQ-Q1 EN SIPLA', '2023-02-15 15:44:02', '2023-02-15 15:44:02'),
	(344, 3, 'HA RECALCULADO PLANILLA 2023-FE-PQ-Q1 EN SIPLA', '2023-02-15 16:14:54', '2023-02-15 16:14:54'),
	(345, 3, 'HA RECALCULADO PLANILLA 2023-FE-PQ-Q1 EN SIPLA', '2023-02-15 16:15:51', '2023-02-15 16:15:51'),
	(346, 3, 'HA GENERADO REPORTE DE PLANILLA 2023-FE-PQ-Q1 EN SIPLA', '2023-02-15 16:16:04', '2023-02-15 16:16:04'),
	(347, 3, 'HA GENERADO REPORTE PRÉSTAMOS EN SIPLA', '2023-02-15 16:24:37', '2023-02-15 16:24:37'),
	(348, 3, 'HA GENERADO UNA CONSTANCIA DE EMPLEO EN SIPLA', '2023-02-15 17:23:23', '2023-02-15 17:23:23'),
	(349, 3, 'HA GENERADO LAS CARTAS DE RENTA DEL AÑO 2023 DE SUELDO EN SIPLA', '2023-02-15 17:23:57', '2023-02-15 17:23:57'),
	(350, 2, 'HA INICIADO SESIÓN EN SIPLA', '2023-02-16 08:45:16', '2023-02-16 08:45:16'),
	(351, 2, 'HA RECALCULADO PLANILLA 2023-FE-PQ-Q1 EN SIPLA', '2023-02-16 08:45:47', '2023-02-16 08:45:47'),
	(352, 2, 'HA GENERADO REPORTE DE PLANILLA 2023-FE-PQ-Q1 EN SIPLA', '2023-02-16 08:45:52', '2023-02-16 08:45:52'),
	(353, 3, 'HA INICIADO SESIÓN EN SIPLA', '2023-02-16 08:47:43', '2023-02-16 08:47:43'),
	(354, 3, 'HA RECALCULADO PLANILLA 2023-FE-PQ-Q1 EN SIPLA', '2023-02-16 08:48:23', '2023-02-16 08:48:23'),
	(355, 1, 'HA INICIADO SESIÓN EN SIPLA', '2023-02-16 08:54:26', '2023-02-16 08:54:26'),
	(356, 1, 'HA RECALCULADO PLANILLA 2023-FE-PQ-Q1 EN SIPLA', '2023-02-16 08:54:50', '2023-02-16 08:54:50'),
	(357, 1, 'HA RECALCULADO PLANILLA 2023-FE-PQ-Q1 EN SIPLA', '2023-02-16 09:02:55', '2023-02-16 09:02:55'),
	(358, 1, 'HA RECALCULADO PLANILLA 2023-FE-PQ-Q1 EN SIPLA', '2023-02-15 09:05:51', '2023-02-15 09:05:51'),
	(359, 1, 'HA GENERADO REPORTE DE PLANILLA 2023-FE-PQ-Q1 EN SIPLA', '2023-02-15 09:09:24', '2023-02-15 09:09:24'),
	(360, 1, 'HA ACTIVADO UN PRÉSTAMO EN SIPLA', '2023-02-15 09:13:41', '2023-02-15 09:13:41'),
	(361, 1, 'HA RECALCULADO PLANILLA 2023-FE-PQ-Q1 EN SIPLA', '2023-02-15 09:13:57', '2023-02-15 09:13:57'),
	(362, 1, 'HA GENERADO REPORTE DE PLANILLA 2023-FE-PQ-Q1 EN SIPLA', '2023-02-15 09:14:03', '2023-02-15 09:14:03'),
	(363, 2, 'HA GENERADO REPORTE DE PLANILLA 2023-FE-PQ-Q1 EN SIPLA', '2023-02-15 09:16:04', '2023-02-15 09:16:04'),
	(364, 2, 'HA ASIGNADO PAGO PLANILLA 2023-FE-PQ-Q1 EN SIPLA', '2023-02-15 09:16:56', '2023-02-15 09:16:56'),
	(365, 2, 'HA APROBADO PLANILLA 2023-FE-PQ-Q1 EN SIPLA', '2023-02-15 09:17:04', '2023-02-15 09:17:04'),
	(366, 3, 'HA CERRADO SESIÓN EN SIPLA', '2023-02-15 09:34:28', '2023-02-15 09:34:28'),
	(367, 3, 'HA INICIADO SESIÓN EN SIPLA', '2023-02-15 09:34:50', '2023-02-15 09:34:50'),
	(368, 3, 'HA GENERADO UNA CONSTANCIA DE SUELDO EN SIPLA', '2023-02-15 10:45:29', '2023-02-15 10:45:29'),
	(369, 3, 'HA INGRESADO UNA ASIGNACIÓN EN SIPLA', '2023-02-15 10:49:42', '2023-02-15 10:49:42'),
	(370, 3, 'HA GENERADO UNA CONSTANCIA DE SUELDO EN SIPLA', '2023-02-15 10:50:03', '2023-02-15 10:50:03'),
	(371, 3, 'HA GENERADO UNA CONSTANCIA DE SUELDO EN SIPLA', '2023-02-16 10:54:09', '2023-02-16 10:54:09'),
	(372, 3, 'HA GENERADO REPORTE DE EMPLEADOS EN SIPLA', '2023-02-16 11:33:18', '2023-02-16 11:33:18'),
	(373, 3, 'HA INICIADO SESIÓN EN SIPLA', '2023-02-16 14:14:09', '2023-02-16 14:14:09'),
	(374, 3, 'HA INICIADO SESIÓN EN SIPLA', '2023-02-16 17:16:57', '2023-02-16 17:16:57'),
	(375, 3, 'HA INICIADO SESIÓN EN SIPLA', '2023-02-17 08:28:01', '2023-02-17 08:28:01');

-- Volcando estructura para tabla planilla.tbl_comisiones
CREATE TABLE IF NOT EXISTS `tbl_comisiones` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Campo identificador de la tabla',
  `num_cliente` varchar(25) COLLATE utf8mb4_spanish2_ci NOT NULL COMMENT 'Campo donde se almacena el id del cliente del speed bankig',
  `fecha_creacion` date NOT NULL COMMENT 'Campo donde se almacena la fecha de cracion de la comision ',
  `comision` decimal(10,2) DEFAULT NULL COMMENT 'Campo donde se almacena el monto de la comision',
  `observaciones` text COLLATE utf8mb4_spanish2_ci COMMENT 'Campo donde se almacena las observacion de orque se edita el monto o porque se inserto una comision manual',
  `created_at` datetime DEFAULT NULL COMMENT 'Campo para almacenar la hora y la fecha en que se inserto el registro',
  `updated_at` datetime DEFAULT NULL COMMENT 'Campo para almacenar la hora y la fecha en que se actualizo el registro',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci COMMENT='Tabla para insertar las comisiones se generan por un proceso ETL de una base de datos oracle o tambine se puede insertar una comision manual o editar las comisiones almacenadas en esta \r\ntabla aque se toma las comisiones para las planillas\r\n';

-- Volcando datos para la tabla planilla.tbl_comisiones: ~93 rows (aproximadamente)
INSERT INTO `tbl_comisiones` (`id`, `num_cliente`, `fecha_creacion`, `comision`, `observaciones`, `created_at`, `updated_at`) VALUES
	(1, '996292', '2022-12-01', 188.94, 'comisión mes de diciembre 2022', '2023-02-03 17:28:41', '2023-02-11 09:20:13'),
	(2, '996339', '2022-12-01', 83.33, NULL, '2023-02-06 10:16:27', '2023-02-14 17:28:43'),
	(3, '996155', '2022-12-01', 83.33, NULL, '2023-02-06 10:16:44', '2023-02-14 17:29:17'),
	(4, '996306', '2022-12-01', 83.33, NULL, '2023-02-06 10:17:07', '2023-02-14 17:29:04'),
	(5, '996128', '2022-12-01', 781.04, NULL, '2023-02-06 10:29:52', '2023-02-07 17:42:44'),
	(6, '996256', '2022-12-01', 306.80, NULL, '2023-02-06 10:30:17', '2023-02-07 17:43:08'),
	(7, '996009', '2022-12-01', 0.00, NULL, '2023-02-06 10:30:55', '2023-02-07 17:42:36'),
	(8, '996362', '2022-12-01', 0.00, NULL, '2023-02-06 10:31:25', '2023-02-07 17:43:41'),
	(9, '996309', '2022-12-01', 264.27, NULL, '2023-02-06 10:31:49', '2023-02-07 17:43:32'),
	(10, '996197', '2022-12-01', 0.00, NULL, '2023-02-06 10:32:10', '2023-02-07 17:43:00'),
	(11, '996328', '2022-12-01', 636.68, NULL, '2023-02-06 10:32:30', '2023-02-06 10:32:30'),
	(12, '996292', '2023-02-01', 0.00, NULL, '2023-02-08 14:39:13', '2023-02-08 14:39:13'),
	(13, '996362', '2023-02-01', 905.77, 'cambios realizados por Gerencia de Negocios y Gerencia General', '2023-02-08 14:39:13', '2023-02-15 15:16:27'),
	(14, '996117', '2023-02-01', 169.16, 'cambios realizados por Gerencia de Negocios y Gerencia General', '2023-02-08 14:39:13', '2023-02-15 15:18:26'),
	(15, '996328', '2023-02-01', 0.00, NULL, '2023-02-08 14:39:13', '2023-02-08 14:39:13'),
	(16, '996197', '2023-02-01', 145.15, 'cambios realizados por Gerencia de Negocios y Gerencia General', '2023-02-08 14:39:13', '2023-02-15 15:17:51'),
	(17, '996341', '2023-02-01', 0.00, NULL, '2023-02-08 14:39:13', '2023-02-08 14:39:13'),
	(18, '996009', '2023-02-01', 122.64, 'cambios realizados por Gerencia de Negocios y Gerencia General', '2023-02-08 14:39:13', '2023-02-15 15:17:20'),
	(19, '996240', '2023-02-01', 0.00, NULL, '2023-02-08 14:39:13', '2023-02-08 14:39:13'),
	(20, '996309', '2023-02-01', 28.81, 'cambios realizados por Gerencia de Negocios y Gerencia General', '2023-02-08 14:39:13', '2023-02-15 15:16:52'),
	(21, '996335', '2023-02-01', 157.43, NULL, '2023-02-08 14:39:13', '2023-02-08 14:39:13'),
	(22, '996310', '2023-02-01', 0.00, NULL, '2023-02-08 14:39:13', '2023-02-08 14:39:13'),
	(23, '996256', '2023-02-01', 0.00, NULL, '2023-02-08 14:39:13', '2023-02-08 14:39:13'),
	(24, '996302', '2023-02-01', 0.00, NULL, '2023-02-08 14:39:13', '2023-02-08 14:39:13'),
	(25, '996223', '2023-02-01', 376.60, NULL, '2023-02-08 14:39:13', '2023-02-08 14:39:13'),
	(26, '996128', '2023-02-01', 147.06, NULL, '2023-02-08 14:39:13', '2023-02-08 14:39:13'),
	(27, '996244', '2023-02-01', 178.91, NULL, '2023-02-08 14:39:13', '2023-02-08 14:39:13'),
	(28, '996336', '2023-02-01', 200.00, NULL, '2023-02-08 14:39:13', '2023-02-08 14:39:13'),
	(29, '996292', '2022-08-01', 237.71, 'comisión mes de Agosto', '2023-02-11 09:08:16', '2023-02-11 09:08:16'),
	(31, '996292', '2022-10-01', 158.17, 'comisión mes de octubre 2022', '2023-02-11 09:16:22', '2023-02-11 09:16:22'),
	(32, '996292', '2022-11-01', 269.10, 'comisión mes de noviembre 2022', '2023-02-11 09:17:06', '2023-02-11 09:18:22'),
	(33, '996292', '2023-01-01', 197.72, 'comisión mes de enero 2023', '2023-02-11 09:23:59', '2023-02-11 09:23:59'),
	(34, '996306', '2023-02-28', 100.00, 'comisión departamento de jurídico', '2023-02-14 17:29:35', '2023-02-14 17:29:35'),
	(35, '996155', '2023-02-28', 100.00, 'comisión departamento de jurídico', '2023-02-14 17:30:17', '2023-02-14 17:30:17'),
	(36, '996339', '2023-02-28', 100.00, 'comisión departamento de jurídico', '2023-02-14 17:30:31', '2023-02-14 17:30:31'),
	(37, '996009', '2022-08-01', 123.08, 'comision ingresada para cuadrar futuras planillas ', '2022-08-01 00:00:00', '2022-08-01 00:00:00'),
	(38, '996117', '2022-08-01', 161.29, 'comision ingresada para cuadrar futuras planillas ', '2022-08-01 00:00:00', '2022-08-01 00:00:00'),
	(39, '996128', '2022-08-01', 877.52, 'comision ingresada para cuadrar futuras planillas ', '2022-08-01 00:00:00', '2022-08-01 00:00:00'),
	(40, '996155', '2022-08-01', 116.66, 'comision ingresada para cuadrar futuras planillas ', '2022-08-01 00:00:00', '2022-08-01 00:00:00'),
	(41, '996180', '2022-08-01', 210.31, 'comision ingresada para cuadrar futuras planillas ', '2022-08-01 00:00:00', '2022-08-01 00:00:00'),
	(42, '996192', '2022-08-01', 170.54, 'comision ingresada para cuadrar futuras planillas ', '2022-08-01 00:00:00', '2022-08-01 00:00:00'),
	(43, '996240', '2022-08-01', 326.80, 'comision ingresada para cuadrar futuras planillas ', '2022-08-01 00:00:00', '2022-08-01 00:00:00'),
	(44, '996244', '2022-08-01', 218.39, 'comision ingresada para cuadrar futuras planillas ', '2022-08-01 00:00:00', '2022-08-01 00:00:00'),
	(45, '996256', '2022-08-01', 727.94, 'comision ingresada para cuadrar futuras planillas ', '2022-08-01 00:00:00', '2022-08-01 00:00:00'),
	(48, '996273', '2022-08-01', 200.00, 'comision ingresada para cuadrar futuras planillas ', '2022-08-01 00:00:00', '2022-08-01 00:00:00'),
	(49, '996292', '2022-08-01', 237.71, 'comision ingresada para cuadrar futuras planillas ', '2022-08-01 00:00:00', '2022-08-01 00:00:00'),
	(50, '996306', '2022-08-01', 116.66, 'comision ingresada para cuadrar futuras planillas ', '2022-08-01 00:00:00', '2022-08-01 00:00:00'),
	(51, '996309', '2022-08-01', 418.91, 'comision ingresada para cuadrar futuras planillas ', '2022-08-01 00:00:00', '2022-08-01 00:00:00'),
	(52, '996310', '2022-08-01', 306.45, 'comision ingresada para cuadrar futuras planillas ', '2022-08-01 00:00:00', '2022-08-01 00:00:00'),
	(55, '996336', '2022-08-01', 200.00, 'comision ingresada para cuadrar futuras planillas ', '2022-08-01 00:00:00', '2022-08-01 00:00:00'),
	(57, '996339', '2022-08-01', 116.66, 'comision ingresada para cuadrar futuras planillas ', '2022-08-01 00:00:00', '2022-08-01 00:00:00'),
	(58, '996341', '2022-08-01', 88.00, 'comision ingresada para cuadrar futuras planillas ', '2022-08-01 00:00:00', '2022-08-01 00:00:00'),
	(87, '996155', '2022-10-01', 83.33, 'comision ingresada para cuadrar futuras planillas ', '2022-10-01 00:00:00', '2022-10-01 00:00:00'),
	(88, '996256', '2022-10-01', 262.21, 'comision ingresada para cuadrar futuras planillas ', '2022-10-01 00:00:00', '2022-10-01 00:00:00'),
	(89, '996009', '2022-10-01', 100.28, 'comision ingresada para cuadrar futuras planillas ', '2022-10-01 00:00:00', '2022-10-01 00:00:00'),
	(90, '996306', '2022-10-01', 83.33, 'comision ingresada para cuadrar futuras planillas ', '2022-10-01 00:00:00', '2022-10-01 00:00:00'),
	(91, '996339', '2022-10-01', 83.33, 'comision ingresada para cuadrar futuras planillas ', '2022-10-01 00:00:00', '2022-10-01 00:00:00'),
	(92, '996117', '2022-10-01', 10.10, 'comision ingresada para cuadrar futuras planillas ', '2022-10-01 00:00:00', '2022-10-01 00:00:00'),
	(93, '996180', '2022-10-01', 172.49, 'comision ingresada para cuadrar futuras planillas ', '2022-10-01 00:00:00', '2022-10-01 00:00:00'),
	(94, '996240', '2022-10-01', 319.17, 'comision ingresada para cuadrar futuras planillas ', '2022-10-01 00:00:00', '2022-10-01 00:00:00'),
	(95, '996197', '2022-10-01', 161.91, 'comision ingresada para cuadrar futuras planillas ', '2022-10-01 00:00:00', '2022-10-01 00:00:00'),
	(96, '996292', '2022-10-01', 158.17, 'comision ingresada para cuadrar futuras planillas ', '2022-10-01 00:00:00', '2022-10-01 00:00:00'),
	(97, '996309', '2022-10-01', 141.50, 'comision ingresada para cuadrar futuras planillas ', '2022-10-01 00:00:00', '2022-10-01 00:00:00'),
	(98, '996244', '2022-10-01', 195.27, 'comision ingresada para cuadrar futuras planillas ', '2022-10-01 00:00:00', '2022-10-01 00:00:00'),
	(99, '996341', '2022-10-01', 183.38, 'comision ingresada para cuadrar futuras planillas ', '2022-10-01 00:00:00', '2022-10-01 00:00:00'),
	(100, '996192', '2022-10-01', 175.00, 'comision ingresada para cuadrar futuras planillas ', '2022-10-01 00:00:00', '2022-10-01 00:00:00'),
	(101, '996194', '2022-10-01', 54.86, 'comision ingresada para cuadrar futuras planillas ', '2022-10-01 00:00:00', '2022-10-01 00:00:00'),
	(102, '996155', '2022-09-01', 116.66, 'comision ingresada para cuadrar futuras planillas ', '2022-09-01 00:00:00', '2022-09-01 00:00:00'),
	(103, '996256', '2022-09-01', 181.25, 'comision ingresada para cuadrar futuras planillas ', '2022-09-01 00:00:00', '2022-09-01 00:00:00'),
	(104, '996009', '2022-09-01', 427.95, 'comision ingresada para cuadrar futuras planillas ', '2022-09-01 00:00:00', '2022-09-01 00:00:00'),
	(105, '996306', '2022-09-01', 116.66, 'comision ingresada para cuadrar futuras planillas ', '2022-09-01 00:00:00', '2022-09-01 00:00:00'),
	(106, '996339', '2022-09-01', 116.66, 'comision ingresada para cuadrar futuras planillas ', '2022-09-01 00:00:00', '2022-09-01 00:00:00'),
	(107, '996117', '2022-09-01', 75.25, 'comision ingresada para cuadrar futuras planillas ', '2022-09-01 00:00:00', '2022-09-01 00:00:00'),
	(108, '996180', '2022-09-01', 241.79, 'comision ingresada para cuadrar futuras planillas ', '2022-09-01 00:00:00', '2022-09-01 00:00:00'),
	(109, '996240', '2022-09-01', 42.00, 'comision ingresada para cuadrar futuras planillas ', '2022-09-01 00:00:00', '2022-09-01 00:00:00'),
	(110, '996244', '2022-09-01', 130.05, 'comision ingresada para cuadrar futuras planillas ', '2022-09-01 00:00:00', '2022-09-01 00:00:00'),
	(111, '996292', '2022-09-01', 216.68, 'comision ingresada para cuadrar futuras planillas ', '2022-09-01 00:00:00', '2022-09-01 00:00:00'),
	(112, '996309', '2022-09-01', 203.34, 'comision ingresada para cuadrar futuras planillas ', '2022-09-01 00:00:00', '2022-09-01 00:00:00'),
	(113, '996192', '2022-09-01', 152.92, 'comision ingresada para cuadrar futuras planillas ', '2022-09-01 00:00:00', '2022-09-01 00:00:00'),
	(114, '996341', '2022-09-01', 13.75, 'comision ingresada para cuadrar futuras planillas ', '2022-09-01 00:00:00', '2022-09-01 00:00:00'),
	(115, '996155', '2022-09-01', 116.66, 'comision ingresada para cuadrar futuras planillas ', '2022-09-01 00:00:00', '2022-09-01 00:00:00'),
	(116, '996256', '2022-09-01', 181.25, 'comision ingresada para cuadrar futuras planillas ', '2022-09-01 00:00:00', '2022-09-01 00:00:00'),
	(117, '996009', '2022-09-01', 427.95, 'comision ingresada para cuadrar futuras planillas ', '2022-09-01 00:00:00', '2022-09-01 00:00:00'),
	(118, '996306', '2022-09-01', 116.66, 'comision ingresada para cuadrar futuras planillas ', '2022-09-01 00:00:00', '2022-09-01 00:00:00'),
	(119, '996339', '2022-09-01', 116.66, 'comision ingresada para cuadrar futuras planillas ', '2022-09-01 00:00:00', '2022-09-01 00:00:00'),
	(120, '996117', '2022-09-01', 75.25, 'comision ingresada para cuadrar futuras planillas ', '2022-09-01 00:00:00', '2022-09-01 00:00:00'),
	(121, '996180', '2022-09-01', 241.79, 'comision ingresada para cuadrar futuras planillas ', '2022-09-01 00:00:00', '2022-09-01 00:00:00'),
	(122, '996240', '2022-09-01', 42.00, 'comision ingresada para cuadrar futuras planillas ', '2022-09-01 00:00:00', '2022-09-01 00:00:00'),
	(123, '996244', '2022-09-01', 130.05, 'comision ingresada para cuadrar futuras planillas ', '2022-09-01 00:00:00', '2022-09-01 00:00:00'),
	(124, '996292', '2022-09-01', 216.68, 'comision ingresada para cuadrar futuras planillas ', '2022-09-01 00:00:00', '2022-09-01 00:00:00'),
	(125, '996309', '2022-09-01', 203.34, 'comision ingresada para cuadrar futuras planillas ', '2022-09-01 00:00:00', '2022-09-01 00:00:00'),
	(126, '996192', '2022-09-01', 152.92, 'comision ingresada para cuadrar futuras planillas ', '2022-09-01 00:00:00', '2022-09-01 00:00:00'),
	(127, '996341', '2022-09-01', 13.75, 'comision ingresada para cuadrar futuras planillas ', '2022-09-01 00:00:00', '2022-09-01 00:00:00'),
	(128, '996180', '2022-11-01', 151.43, 'comision ingresada para cuadrar futuras planillas ', '2022-11-01 00:00:00', '2022-11-01 00:00:00'),
	(129, '996292', '2022-11-01', 269.10, 'comision ingresada para cuadrar futuras planillas ', '2022-11-01 00:00:00', '2022-11-01 00:00:00'),
	(130, '996362', '2022-11-01', 100.25, 'comision ingresada para cuadrar futuras planillas ', '2022-11-01 00:00:00', '2022-11-01 00:00:00'),
	(131, '996197', '2022-11-01', 581.44, 'comision ingresada para cuadrar futuras planillas ', '2022-11-01 00:00:00', '2022-11-01 00:00:00'),
	(132, '996256', '2022-11-01', 455.52, 'comision ingresada para cuadrar futuras planillas ', '2022-11-01 00:00:00', '2022-11-01 00:00:00'),
	(133, '996192', '2022-11-01', 243.30, 'comision ingresada para cuadrar futuras planillas ', '2022-11-01 00:00:00', '2022-11-01 00:00:00'),
	(134, '996194', '2022-11-01', 199.28, 'comision ingresada para cuadrar futuras planillas ', '2022-11-01 00:00:00', '2022-11-01 00:00:00'),
	(135, '996244', '2022-11-01', 486.14, 'comision ingresada para cuadrar futuras planillas ', '2022-11-01 00:00:00', '2022-11-01 00:00:00'),
	(136, '996128', '2022-11-01', 158.79, 'comision ingresada para cuadrar futuras planillas ', '2022-11-01 00:00:00', '2022-11-01 00:00:00');

-- Volcando estructura para tabla planilla.tbl_conceptos
CREATE TABLE IF NOT EXISTS `tbl_conceptos` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Campo identificador de la tabl',
  `nombre` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL COMMENT 'Campo donde se almacena el nombre del concepto',
  `detalle` text COLLATE utf8mb4_spanish2_ci COMMENT 'Campo donde se almacena el detalle del concepto',
  `tipo` enum('Ingreso','Descuento','Bono') COLLATE utf8mb4_spanish2_ci DEFAULT NULL COMMENT 'Campo donde se almacena el tipo el concepto que es',
  `created_at` datetime DEFAULT NULL COMMENT 'Campo para almacenar la hora y la fecha en que se inserto el registro',
  `updated_at` datetime DEFAULT NULL COMMENT 'Campo para almacenar la hora y la fecha en que se actualizo el registro',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci COMMENT='Tabla donde se guarda los conceptos(son los titulos para formar las planillas como isss,afp etc)  aqui se almacena el concepto y el tipo de concepto';

-- Volcando datos para la tabla planilla.tbl_conceptos: ~23 rows (aproximadamente)
INSERT INTO `tbl_conceptos` (`id`, `nombre`, `detalle`, `tipo`, `created_at`, `updated_at`) VALUES
	(1, 'ISR', 'Impuesto sobre la renta', NULL, '2023-01-19 14:00:32', '2023-01-19 14:00:33'),
	(2, 'AFP', 'CRECER-CONFIA', NULL, '2023-01-19 14:00:34', '2023-01-10 17:11:22'),
	(4, 'ISSS', 'Seguro social', NULL, '2023-01-19 14:00:34', '2023-01-19 14:00:35'),
	(5, 'IPSFA', 'Instituto de pensionados de la fuerza armada', NULL, '2023-01-19 14:00:36', '2023-01-19 14:00:35'),
	(6, 'FOSAFI', 'Fondo de Saneamiento y Fortalecimiento Financiero', NULL, '2023-01-19 14:00:37', '2023-01-06 15:42:52'),
	(7, 'PGR', 'Procuraduria', NULL, '2023-01-19 14:00:36', '2023-01-19 14:00:37'),
	(8, 'FSV', 'Fondo social para la vivienda', NULL, '2023-01-19 14:00:38', '2023-01-19 14:00:38'),
	(9, 'VIALIDAD', 'Pago de Vialidad', NULL, '2023-01-19 14:00:38', '2023-02-03 14:45:50'),
	(10, 'D.V', 'Deudores varios', NULL, '2023-01-19 14:00:39', '2023-01-19 14:00:41'),
	(11, 'VIATICOS', 'Viaticos', NULL, '2023-01-19 14:00:41', '2023-01-19 14:00:40'),
	(12, 'REINTEGRO', 'Reintegro a salario', NULL, '2023-01-19 14:00:42', '2023-01-19 14:00:43'),
	(13, 'VACACION LEY ', 'Prestación de vacación según ley', NULL, '2023-01-19 14:00:44', '2023-01-19 14:00:43'),
	(14, 'VACACION POLITICA', 'Prestación de vacación según política', NULL, '2023-01-19 14:00:44', '2023-01-19 14:00:45'),
	(15, 'BONOS FIJOS', 'Bonos fijos', NULL, '2023-01-19 14:00:46', '2023-01-19 14:00:46'),
	(16, 'BONOS VARIABLES', 'Bonos Variables', NULL, '2023-01-19 14:00:47', '2023-01-19 14:00:47'),
	(17, 'FALTA INJUSTIFICADA', 'Descuento de Falta Injustificada', NULL, '2023-01-19 14:00:49', '2023-01-19 14:00:48'),
	(18, 'ISR AGUINALDO', 'Calculo de Renta de Aguinaldo', NULL, '2023-01-19 14:00:49', '2023-01-19 14:00:50'),
	(19, 'PGR VARIOS', 'Calculo para aguinaldo, indemnización y Vacación', NULL, '2023-01-13 17:08:29', '2023-01-13 17:08:29'),
	(20, 'AGUINALDO SEGUN LEY', 'Calculo de aguinaldo segun ley', NULL, '2023-01-19 14:00:52', '2023-01-19 14:00:51'),
	(21, 'ISR MENSUAL', 'Calculo de Impuesto sobre la Renta Mensual', NULL, '2023-01-19 14:00:53', '2023-01-19 14:00:51'),
	(22, 'INDEMNIZACION SEGUN LEY', 'Calculo de indemnizacion ', NULL, '2023-01-19 14:00:53', '2023-01-19 14:00:52'),
	(23, 'NIVEL DE ENDEUDAMIENTO CON OID', 'OID', NULL, '2023-01-24 09:07:26', '2023-01-24 09:07:27'),
	(24, 'IRS RECALCULO_1', 'Recalculo 1 de la renta ', NULL, '2023-02-02 14:53:03', '2023-02-02 14:53:04');

-- Volcando estructura para tabla planilla.tbl_cuentas
CREATE TABLE IF NOT EXISTS `tbl_cuentas` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Campo identificador de la tabla de cuentas',
  `num_cuenta` varchar(25) COLLATE utf8mb4_spanish2_ci NOT NULL COMMENT 'Campo de numero de cuenta de los empleados',
  `id_banco` int(11) NOT NULL COMMENT 'Campo donde se inserta el id del banco',
  `estado` enum('A','I') COLLATE utf8mb4_spanish2_ci NOT NULL DEFAULT 'A' COMMENT 'Campo del estado de la cuenta ',
  `created_at` datetime DEFAULT NULL COMMENT 'Campo para almacenar la hora y la fecha en que se inserto el registro',
  `updated_at` datetime DEFAULT NULL COMMENT 'Campo para almacenar la hora y la fecha en que se actualizo el registro',
  `num_cliente` varchar(6) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tbl_cuentas_tbl_bancos` (`id_banco`),
  CONSTRAINT `fk_tbl_cuentas_tbl_bancos` FOREIGN KEY (`id_banco`) REFERENCES `tbl_bancos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci COMMENT='Tabla donde se almacenan las cuentas de los empelado y el banco al que pertencen se carga por un proceso ETL';

-- Volcando datos para la tabla planilla.tbl_cuentas: ~94 rows (aproximadamente)
INSERT INTO `tbl_cuentas` (`id`, `num_cuenta`, `id_banco`, `estado`, `created_at`, `updated_at`, `num_cliente`) VALUES
	(1, '123752610', 1, 'A', '2023-01-19 10:57:36', '2023-02-17 09:35:48', '996179'),
	(2, '123752636', 1, 'A', '2023-01-19 12:05:04', '2023-02-17 09:35:48', '996354'),
	(3, '124484031', 1, 'A', '2023-01-24 10:22:41', '2023-02-09 09:41:11', '996370'),
	(4, '123754517', 1, 'A', '2023-01-24 14:52:30', '2023-02-17 09:35:48', '996346'),
	(5, '123752214', 1, 'A', '2023-01-24 15:02:30', '2023-02-17 09:35:48', '996180'),
	(6, '123752057', 1, 'A', '2023-01-24 15:06:28', '2023-02-17 09:35:48', '996327'),
	(7, '123754491', 1, 'A', '2023-01-24 15:11:26', '2023-02-17 09:35:48', '996192'),
	(8, '123811465', 1, 'A', '2023-01-24 15:15:25', '2023-02-09 09:38:13', '996118'),
	(9, '121258420', 1, 'A', '2023-01-24 15:29:24', '2023-02-17 09:35:48', '996351'),
	(10, '123752107', 1, 'A', '2023-01-24 15:29:24', '2023-02-17 09:35:48', '996313'),
	(11, '111731964', 1, 'A', '2023-01-24 15:36:19', '2023-02-17 09:35:48', '996363'),
	(12, '123752420', 1, 'A', '2023-01-24 15:39:19', '2023-02-17 09:35:48', '996357'),
	(13, '123752545', 1, 'A', '2023-01-24 15:41:17', '2023-02-17 09:35:48', '996350'),
	(14, '123754103', 1, 'A', '2023-01-24 15:45:17', '2023-02-17 09:35:48', '996352'),
	(15, '123752081', 1, 'A', '2023-01-24 15:46:17', '2023-02-17 09:35:48', '996348'),
	(16, '123754509', 1, 'A', '2023-01-24 15:48:15', '2023-02-17 09:35:48', '996342'),
	(17, '124133406', 1, 'A', '2023-01-24 15:52:15', '2023-02-17 09:35:48', '996373'),
	(18, '124109919', 1, 'A', '2023-01-24 15:56:14', '2023-02-16 11:30:14', '996372'),
	(19, '124418468', 1, 'A', '2023-01-24 16:03:11', '2023-02-09 09:40:14', '996371'),
	(20, '123754087', 1, 'A', '2023-01-24 16:33:10', '2023-02-17 09:35:48', '996197'),
	(21, '123752644', 1, 'A', '2023-01-24 16:33:10', '2023-02-17 09:35:48', '996358'),
	(22, '124129941', 1, 'A', '2023-01-24 16:33:10', '2023-02-17 09:35:48', '996368'),
	(23, '123943342', 1, 'A', '2023-01-24 16:33:10', '2023-02-17 09:35:48', '996366'),
	(24, '123752024', 1, 'A', '2023-01-24 16:33:10', '2023-02-17 09:35:48', '996359'),
	(25, '123754178', 1, 'A', '2023-01-24 16:33:10', '2023-02-17 09:35:48', '996362'),
	(26, '124309394', 1, 'A', '2023-01-24 16:33:10', '2023-02-17 09:35:48', '996369'),
	(27, '123802761', 1, 'A', '2023-01-24 16:39:08', '2023-02-17 09:35:48', '996344'),
	(28, '123752495', 1, 'A', '2023-01-24 16:41:34', '2023-02-09 09:39:13', '996356'),
	(29, '123943441', 1, 'A', '2023-01-24 16:45:06', '2023-02-17 09:35:48', '996367'),
	(30, '123754038', 1, 'A', '2023-01-24 16:48:06', '2023-02-17 09:35:48', '996343'),
	(31, '123752339', 1, 'A', '2023-01-24 16:50:06', '2023-02-17 09:35:48', '996349'),
	(32, '123752461', 1, 'A', '2023-01-24 16:52:04', '2023-02-17 09:35:48', '996347'),
	(33, '123754004', 1, 'A', '2023-01-25 15:14:48', '2023-02-17 09:35:48', '996117'),
	(34, '123752230', 1, 'A', '2023-01-25 15:14:48', '2023-02-17 09:35:48', '996240'),
	(35, '123780306', 1, 'A', '2023-01-25 15:14:48', '2023-02-17 09:35:48', '996238'),
	(36, '123752487', 1, 'A', '2023-01-25 15:14:48', '2023-02-17 09:35:48', '996205'),
	(37, '123831372', 1, 'A', '2023-01-25 15:14:48', '2023-02-17 09:35:48', '996292'),
	(38, '123752198', 1, 'A', '2023-01-25 15:14:48', '2023-02-17 09:35:48', '996326'),
	(39, '123752016', 1, 'A', '2023-01-25 15:14:48', '2023-02-17 09:35:48', '996309'),
	(40, '123752222', 1, 'A', '2023-01-25 15:14:48', '2023-02-17 09:35:48', '996322'),
	(41, '123877235', 1, 'A', '2023-01-26 15:11:01', '2023-02-17 09:35:48', '996003'),
	(42, '123924243', 1, 'A', '2023-01-26 15:11:01', '2023-02-17 09:35:48', '996115'),
	(43, '123752602', 1, 'A', '2023-01-26 15:11:01', '2023-02-17 09:35:48', '996137'),
	(44, '123752586', 1, 'A', '2023-01-26 15:11:01', '2023-02-17 09:35:48', '996140'),
	(45, '123762163', 1, 'A', '2023-01-26 15:11:01', '2023-02-17 09:35:48', '996151'),
	(46, '123752065', 1, 'A', '2023-01-26 15:11:01', '2023-02-17 09:35:48', '996126'),
	(47, '123781627', 1, 'A', '2023-01-26 15:11:01', '2023-02-17 09:35:48', '996170'),
	(48, '123752594', 1, 'A', '2023-01-26 15:11:01', '2023-02-17 09:35:48', '996199'),
	(49, '123752180', 1, 'A', '2023-01-26 15:11:01', '2023-02-17 09:35:48', '996209'),
	(50, '123752438', 1, 'A', '2023-01-26 15:11:01', '2023-02-17 09:35:48', '996253'),
	(51, '123752453', 1, 'A', '2023-01-26 15:11:01', '2023-02-17 09:35:48', '996271'),
	(52, '123752552', 1, 'A', '2023-01-26 15:11:01', '2023-02-17 09:35:48', '996242'),
	(53, '123754640', 1, 'A', '2023-01-26 15:11:01', '2023-02-17 09:35:48', '996193'),
	(54, '123752628', 1, 'A', '2023-01-26 15:11:01', '2023-02-17 09:35:48', '996365'),
	(55, '123764581', 1, 'A', '2023-01-26 15:11:01', '2023-02-17 09:35:48', '996287'),
	(56, '123752412', 1, 'A', '2023-01-26 15:11:01', '2023-02-17 09:35:48', '996306'),
	(57, '123754152', 1, 'A', '2023-01-26 15:11:01', '2023-02-17 09:35:48', '996312'),
	(58, '123878134', 1, 'A', '2023-01-26 15:11:01', '2023-02-17 09:35:48', '996320'),
	(59, '123752040', 1, 'A', '2023-01-26 15:11:01', '2023-02-17 09:35:48', '996278'),
	(60, '123754095', 1, 'A', '2023-01-26 15:11:01', '2023-02-17 09:35:48', '996300'),
	(61, '123752578', 1, 'A', '2023-01-26 15:11:01', '2023-02-17 09:35:48', '996294'),
	(62, '123772246', 1, 'A', '2023-01-26 15:11:01', '2023-02-17 09:35:48', '996324'),
	(63, '123761777', 1, 'A', '2023-01-26 15:11:01', '2023-02-17 09:35:48', '996325'),
	(64, '123927105', 1, 'A', '2023-01-27 14:45:06', '2023-02-17 09:35:48', '996000'),
	(65, '123754483', 1, 'A', '2023-01-27 14:45:06', '2023-02-17 09:35:48', '996128'),
	(66, '123927113', 1, 'A', '2023-01-27 14:45:06', '2023-02-17 09:35:48', '996256'),
	(67, '123754111', 1, 'A', '2023-01-27 14:45:06', '2023-02-17 09:35:48', '996223'),
	(68, '123754418', 1, 'A', '2023-01-28 11:28:30', '2023-02-17 09:35:48', '996244'),
	(69, '123752206', 1, 'A', '2023-01-28 11:32:30', '2023-02-17 09:35:48', '996310'),
	(70, '123753998', 1, 'A', '2023-01-28 11:50:26', '2023-02-17 09:35:48', '996331'),
	(71, '123779936', 1, 'A', '2023-01-28 12:27:19', '2023-02-17 09:35:48', '996335'),
	(72, '123754392', 1, 'A', '2023-01-31 11:15:12', '2023-02-17 09:35:48', '996161'),
	(73, '124126186', 1, 'A', '2023-01-31 11:15:12', '2023-02-17 09:35:48', '996187'),
	(74, '123754459', 1, 'A', '2023-01-31 11:15:12', '2023-02-17 09:35:48', '996336'),
	(75, '123754079', 1, 'A', '2023-01-31 11:15:12', '2023-02-17 09:35:48', '996290'),
	(76, '123754376', 1, 'A', '2023-01-31 23:18:19', '2023-02-17 09:35:48', '996009'),
	(77, '123752297', 1, 'A', '2023-01-31 23:18:19', '2023-02-17 09:35:48', '996030'),
	(78, '117314492', 1, 'A', '2023-01-31 23:18:19', '2023-02-17 09:35:48', '996005'),
	(79, '123752321', 1, 'A', '2023-01-31 23:18:19', '2023-02-17 09:35:48', '996071'),
	(80, '123752479', 1, 'A', '2023-01-31 23:18:19', '2023-02-17 09:35:48', '996059'),
	(81, '115578742', 1, 'A', '2023-01-31 23:18:19', '2023-02-17 09:35:48', '996155'),
	(82, '123754061', 1, 'A', '2023-01-31 23:18:19', '2023-02-17 09:35:48', '996121'),
	(83, '124053869', 1, 'A', '2023-01-31 23:18:19', '2023-02-17 09:35:48', '996208'),
	(84, '123752560', 1, 'A', '2023-01-31 23:18:19', '2023-02-17 09:35:48', '996258'),
	(85, '123795015', 1, 'A', '2023-01-31 23:18:19', '2023-02-17 09:35:48', '996259'),
	(86, '123754053', 1, 'A', '2023-01-31 23:18:19', '2023-02-17 09:35:48', '996194'),
	(87, '123752099', 1, 'A', '2023-01-31 23:18:19', '2023-02-17 09:35:48', '996295'),
	(88, '121962591', 1, 'A', '2023-01-31 23:18:19', '2023-02-17 09:35:48', '996338'),
	(89, '123754368', 1, 'A', '2023-01-31 23:18:19', '2023-02-17 09:35:48', '996341'),
	(90, '123752248', 1, 'A', '2023-01-31 23:18:19', '2023-02-17 09:35:48', '996339'),
	(91, '123752446', 1, 'A', '2023-01-31 23:18:19', '2023-02-17 09:35:48', '996364'),
	(92, '123752115', 1, 'A', '2023-01-31 23:18:19', '2023-02-17 09:35:48', '996318'),
	(93, '123832057', 1, 'A', '2023-01-31 23:18:19', '2023-02-17 09:35:48', '996315'),
	(94, '123753493', 1, 'A', '2023-01-31 23:18:19', '2023-02-17 09:35:48', '996305'),
	(95, '124558859', 1, 'A', '2023-02-10 09:32:16', '2023-02-17 09:35:48', '996375'),
	(96, '124617176', 1, 'A', '2023-02-10 09:54:13', '2023-02-17 09:35:48', '996374');

-- Volcando estructura para tabla planilla.tbl_departamentos
CREATE TABLE IF NOT EXISTS `tbl_departamentos` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Campo indetificador d ela tabla de departamentos de la empresa',
  `nombre` varchar(255) COLLATE utf8mb4_spanish2_ci DEFAULT NULL COMMENT 'Campo identificador del nombre del de',
  `descripcion` text COLLATE utf8mb4_spanish2_ci,
  `created_at` datetime DEFAULT NULL COMMENT 'Campo para almacenar la hora y la fecha en que se inserto el registro',
  `updated_at` datetime DEFAULT NULL COMMENT 'Campo para almacenar la hora y la fecha en que se actualizo el registro',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- Volcando datos para la tabla planilla.tbl_departamentos: ~11 rows (aproximadamente)
INSERT INTO `tbl_departamentos` (`id`, `nombre`, `descripcion`, `created_at`, `updated_at`) VALUES
	(1, 'Administración', 'Departamento de Administración.', '2023-01-11 15:59:30', '2023-01-12 09:14:10'),
	(2, 'Auditoría', 'Departamento de Auditoría', '2023-01-11 15:59:31', '2023-01-11 17:57:55'),
	(3, 'Cobros', 'Departamento de Cobros', '2023-01-11 15:59:33', '2023-01-11 17:58:18'),
	(4, 'Finanzas', 'Departamento de Finanzas', '2023-01-11 15:59:34', '2023-01-11 17:58:32'),
	(5, 'Gerencia General', 'Departamento de Gerencia General', '2023-01-11 16:03:39', '2023-01-11 17:58:49'),
	(6, 'Informática', 'Departamento de Informática', '2023-01-11 16:03:39', '2023-01-11 17:59:08'),
	(7, 'Jurídico', 'Departamento de Jurídico', '2023-01-11 16:03:39', '2023-01-11 17:59:29'),
	(8, 'Negocios', 'Departamento de Negocios', '2023-01-11 16:03:39', '2023-01-11 17:59:42'),
	(9, 'Oficialía de Cumplimiento', 'Departamento de Oficialía de Cumplimiento', '2023-01-11 16:03:39', '2023-01-11 18:00:09'),
	(10, 'Operaciones', 'Departamento de Operaciones', '2023-01-11 16:03:39', '2023-01-11 18:00:29'),
	(11, 'Recursos Humanos', 'Departamento de Recursos Humanos', '2023-01-11 16:03:39', '2023-01-11 18:00:51');

-- Volcando estructura para tabla planilla.tbl_detalle_planillas
CREATE TABLE IF NOT EXISTS `tbl_detalle_planillas` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id del registro',
  `id_empleado` int(11) DEFAULT NULL COMMENT 'ID del empleado',
  `sueldo` decimal(20,8) DEFAULT '0.00000000' COMMENT 'sueldo completo segun planilla  del empleado',
  `dias_planilla` int(11) DEFAULT NULL COMMENT 'Dias segun planilla',
  `dias_trabajados` int(11) DEFAULT NULL COMMENT 'Dias laborados del empleado aque se verifican las faltas ',
  `calculo_salario` decimal(20,8) DEFAULT '0.00000000' COMMENT 'Calculo del salario segun dias descontados del empleado',
  `prestamos` decimal(20,8) DEFAULT '0.00000000' COMMENT 'Prestamos del empleado',
  `anticipos` decimal(20,8) DEFAULT '0.00000000' COMMENT 'anticipos del empleado siempre estara a 0',
  `bonos` decimal(20,8) DEFAULT '0.00000000' COMMENT 'Bonos fijos del empleado',
  `bonos_variables` decimal(20,8) DEFAULT '0.00000000' COMMENT 'Bonos variables del empleado ',
  `vacaciones` decimal(20,8) DEFAULT '0.00000000' COMMENT 'Vacaciones del empleado si aplica en la planilla generada',
  `comision` decimal(20,8) DEFAULT '0.00000000' COMMENT 'Comisiones del empleado pagada cada quincena',
  `isss` decimal(20,8) DEFAULT '0.00000000' COMMENT 'Isss del empleado',
  `afp` decimal(20,8) DEFAULT '0.00000000' COMMENT 'Afp del empleado',
  `ipsfa` decimal(20,8) DEFAULT '0.00000000' COMMENT 'ipsfa del empleado',
  `fosafi` decimal(20,8) DEFAULT '0.00000000' COMMENT 'fosafi del empleado',
  `renta` decimal(20,8) DEFAULT '0.00000000' COMMENT 'Descuento de renta del empleado',
  `total_descuentos` decimal(20,8) DEFAULT '0.00000000' COMMENT 'Total de descunetos del empleado',
  `pgr` decimal(20,8) DEFAULT '0.00000000' COMMENT 'Procuraduría General de la República decuento',
  `fsv` decimal(20,8) DEFAULT '0.00000000' COMMENT 'descuento del Fondo Social para la Vivivenda',
  `dv` decimal(20,8) DEFAULT '0.00000000' COMMENT 'Deudores Vrarios del empleado',
  `viaticos` decimal(20,8) DEFAULT '0.00000000' COMMENT 'Reintegros de viaticos del empleado',
  `reintegros` decimal(20,8) DEFAULT '0.00000000' COMMENT 'Reintegros del empleado',
  `base_agravado` decimal(20,8) DEFAULT '0.00000000' COMMENT 'Campo para inseratar la  base de retenecion del aguinaldo o indemnizacion ',
  `sueldo_liquido` decimal(20,8) DEFAULT '0.00000000' COMMENT 'El sueldo Liquido a pagar con todos y descuentos',
  `id_planilla` int(11) DEFAULT NULL COMMENT 'id de planilla a  la que peretenece',
  `observaciones` text COLLATE utf8mb4_spanish2_ci COMMENT 'Campo para observaciones del porque se hizo algun descuento',
  `created_at` datetime DEFAULT NULL COMMENT 'Campo para almacenar la hora y la fecha en que se inserto el registro',
  `updated_at` datetime DEFAULT NULL COMMENT 'Campo para almacenar la hora y la fecha en que se actualizo el registro',
  PRIMARY KEY (`id`),
  KEY `fk_tbl_detalle_planillas_tbl_empleados` (`id_empleado`),
  KEY `fk_tbl_detalle_planillas_tbl_planillas` (`id_planilla`),
  CONSTRAINT `fk_tbl_detalle_planillas_tbl_empleados` FOREIGN KEY (`id_empleado`) REFERENCES `tbl_empleados` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_tbl_detalle_planillas_tbl_planillas` FOREIGN KEY (`id_planilla`) REFERENCES `tbl_planillas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4416 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- Volcando datos para la tabla planilla.tbl_detalle_planillas: ~435 rows (aproximadamente)
INSERT INTO `tbl_detalle_planillas` (`id`, `id_empleado`, `sueldo`, `dias_planilla`, `dias_trabajados`, `calculo_salario`, `prestamos`, `anticipos`, `bonos`, `bonos_variables`, `vacaciones`, `comision`, `isss`, `afp`, `ipsfa`, `fosafi`, `renta`, `total_descuentos`, `pgr`, `fsv`, `dv`, `viaticos`, `reintegros`, `base_agravado`, `sueldo_liquido`, `id_planilla`, `observaciones`, `created_at`, `updated_at`) VALUES
	(1, 6, 1200.00000000, 15, 15, 600.00000000, 114.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 15.00000000, 43.50000000, 0.00000000, 0.00000000, 48.77600000, 107.27600000, 25.00000000, 0.00000000, 0.00000000, 70.00000000, 0.00000000, 0.00000000, 423.72400000, 2, NULL, '2023-01-20 15:56:13', '2023-02-08 09:58:34'),
	(2, 8, 420.00000000, 15, 15, 210.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 6.30000000, 15.22500000, 0.00000000, 0.00000000, 0.00000000, 21.52500000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 188.47500000, 2, NULL, '2023-01-20 15:56:13', '2023-02-08 09:58:34'),
	(3, 10, 467.00000000, 15, 15, 233.50000000, 50.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 7.00500000, 0.00000000, 14.01000000, 0.00000000, 0.00000000, 21.01500000, 0.00000000, 0.00000000, 0.00000000, 28.77000000, 0.00000000, 0.00000000, 191.25500000, 2, NULL, '2023-01-20 15:56:13', '2023-02-08 09:58:34'),
	(4, 11, 452.00000000, 15, 15, 226.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 6.78000000, 16.38500000, 0.00000000, 15.00000000, 0.00000000, 23.16500000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 187.83500000, 2, NULL, '2023-01-20 15:56:13', '2023-02-08 09:58:34'),
	(5, 12, 368.00000000, 15, 15, 184.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 64.56000000, 0.00000000, 0.00000000, 248.56000000, 2, NULL, '2023-01-20 15:56:13', '2023-02-08 09:58:34'),
	(6, 14, 400.00000000, 15, 15, 200.00000000, 43.50000000, 0.00000000, 0.00000000, 64.17000000, 0.00000000, 0.00000000, 6.00000000, 14.50000000, 0.00000000, 0.00000000, 9.59700000, 30.09700000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 190.57300000, 2, NULL, '2023-01-20 15:56:13', '2023-02-08 09:58:34'),
	(7, 15, 400.00000000, 15, 15, 200.00000000, 45.50000000, 0.00000000, 0.00000000, 70.83000000, 0.00000000, 0.00000000, 6.00000000, 14.50000000, 0.00000000, 0.00000000, 10.26300000, 30.76300000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 194.56700000, 2, NULL, '2023-01-20 15:56:13', '2023-02-08 09:58:34'),
	(8, 17, 400.00000000, 15, 15, 200.00000000, 96.50000000, 0.00000000, 0.00000000, 16.67000000, 0.00000000, 0.00000000, 0.00000000, 14.50000000, 0.00000000, 0.00000000, 0.00000000, 14.50000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 105.67000000, 2, NULL, '2023-01-20 15:56:13', '2023-02-08 09:58:34'),
	(9, 18, 500.00000000, 15, 15, 250.00000000, 61.50000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 7.50000000, 18.12500000, 0.00000000, 0.00000000, 0.00000000, 25.62500000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 162.87500000, 2, NULL, '2023-01-20 15:56:13', '2023-02-08 09:58:34'),
	(10, 20, 450.00000000, 15, 15, 225.00000000, 22.00000000, 0.00000000, 125.00000000, 0.00000000, 0.00000000, 0.00000000, 10.50000000, 25.37500000, 0.00000000, 0.00000000, 16.64250000, 52.51750000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 275.48250000, 2, NULL, '2023-01-20 15:56:13', '2023-02-08 09:58:34'),
	(11, 21, 400.00000000, 15, 15, 200.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 6.00000000, 14.50000000, 0.00000000, 0.00000000, 0.00000000, 20.50000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 179.50000000, 2, NULL, '2023-01-20 15:56:13', '2023-02-08 09:58:34'),
	(12, 22, 450.00000000, 15, 0, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 2, NULL, '2023-01-20 15:56:13', '2023-02-08 09:58:34'),
	(13, 24, 425.00000000, 15, 15, 212.50000000, 47.50000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 6.37500000, 15.40630000, 0.00000000, 0.00000000, 0.00000000, 21.78130000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 143.21880000, 2, NULL, '2023-01-20 15:56:13', '2023-02-08 09:58:34'),
	(14, 25, 425.00000000, 15, 15, 212.50000000, 67.00000000, 0.00000000, 125.00000000, 0.00000000, 0.00000000, 0.00000000, 10.12500000, 24.46880000, 0.00000000, 0.00000000, 15.52060000, 50.11440000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 220.38560000, 2, NULL, '2023-01-20 15:56:13', '2023-02-08 09:58:34'),
	(15, 26, 450.00000000, 15, 15, 225.00000000, 112.50000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 6.75000000, 16.31250000, 0.00000000, 0.00000000, 0.00000000, 23.06250000, 0.00000000, 0.00000000, 0.00000000, 33.52000000, 0.00000000, 0.00000000, 122.95750000, 2, NULL, '2023-01-20 15:56:13', '2023-02-08 09:58:34'),
	(16, 27, 525.00000000, 15, 15, 262.50000000, 66.50000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 7.87500000, 19.03130000, 0.00000000, 0.00000000, 0.00000000, 26.90630000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 169.09380000, 2, NULL, '2023-01-20 15:56:13', '2023-02-08 09:58:34'),
	(17, 28, 425.00000000, 15, 15, 212.50000000, 36.50000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 6.37500000, 15.40630000, 0.00000000, 0.00000000, 0.00000000, 21.78130000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 154.21880000, 2, NULL, '2023-01-20 15:56:13', '2023-02-08 09:58:34'),
	(18, 30, 650.00000000, 15, 15, 325.00000000, 55.00000000, 0.00000000, 0.00000000, 31.15000000, 0.00000000, 0.00000000, 9.75000000, 23.56250000, 0.00000000, 0.00000000, 17.51380000, 50.82630000, 0.00000000, 0.00000000, 0.00000000, 55.00000000, 0.00000000, 0.00000000, 305.32380000, 2, NULL, '2023-01-20 15:56:13', '2023-02-08 09:58:34'),
	(19, 34, 425.00000000, 15, 15, 212.50000000, 37.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 6.37500000, 15.40630000, 0.00000000, 0.00000000, 0.00000000, 21.78130000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 153.71880000, 2, NULL, '2023-01-20 15:56:13', '2023-02-08 09:58:34'),
	(20, 35, 450.00000000, 15, 15, 225.00000000, 96.50000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 6.75000000, 16.31250000, 0.00000000, 0.00000000, 0.00000000, 23.06250000, 0.00000000, 0.00000000, 0.00000000, 29.66000000, 0.00000000, 0.00000000, 135.09750000, 2, NULL, '2023-01-20 15:56:13', '2023-02-08 09:58:34'),
	(21, 36, 400.00000000, 15, 15, 200.00000000, 38.50000000, 0.00000000, 0.00000000, 21.67000000, 0.00000000, 0.00000000, 6.00000000, 14.50000000, 0.00000000, 0.00000000, 0.00000000, 20.50000000, 0.00000000, 31.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 131.67000000, 2, NULL, '2023-01-20 15:56:13', '2023-02-08 09:58:34'),
	(22, 37, 525.00000000, 15, 15, 262.50000000, 52.50000000, 0.00000000, 0.00000000, 18.59000000, 0.00000000, 0.00000000, 7.87500000, 19.03130000, 0.00000000, 0.00000000, 10.64840000, 37.55460000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 191.03540000, 2, NULL, '2023-01-20 15:56:13', '2023-02-08 09:58:34'),
	(23, 38, 400.00000000, 15, 15, 200.00000000, 70.50000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 6.00000000, 14.50000000, 0.00000000, 0.00000000, 0.00000000, 20.50000000, 0.00000000, 0.00000000, 0.00000000, 69.94000000, 0.00000000, 0.00000000, 178.94000000, 2, NULL, '2023-01-20 15:56:13', '2023-02-08 09:58:34'),
	(24, 39, 365.00000000, 15, 15, 182.50000000, 66.50000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 7.50500000, 13.23130000, 0.00000000, 0.00000000, 0.00000000, 20.73630000, 0.00000000, 0.00000000, 0.00000000, 69.94000000, 0.00000000, 0.00000000, 165.20380000, 2, NULL, '2023-01-20 15:56:13', '2023-02-08 09:58:34'),
	(25, 40, 435.00000000, 15, 15, 217.50000000, 0.00000000, 0.00000000, 0.00000000, 64.17000000, 0.00000000, 0.00000000, 6.52500000, 15.76880000, 0.00000000, 0.00000000, 11.16760000, 33.46140000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 248.20860000, 2, NULL, '2023-01-20 15:56:13', '2023-02-08 09:58:34'),
	(26, 41, 365.00000000, 15, 15, 182.50000000, 38.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 5.47500000, 13.23130000, 0.00000000, 0.00000000, 0.00000000, 18.70630000, 0.00000000, 0.00000000, 0.00000000, 26.90000000, 0.00000000, 0.00000000, 152.69380000, 2, NULL, '2023-01-20 15:56:13', '2023-02-08 09:58:34'),
	(27, 43, 400.00000000, 15, 15, 200.00000000, 65.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 6.00000000, 14.50000000, 0.00000000, 0.00000000, 0.00000000, 20.50000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 114.50000000, 2, NULL, '2023-01-20 15:56:13', '2023-02-08 09:58:34'),
	(28, 44, 450.00000000, 15, 15, 225.00000000, 125.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 6.75000000, 16.31250000, 0.00000000, 0.00000000, 0.00000000, 23.06250000, 0.00000000, 0.00000000, 0.00000000, 36.99000000, 0.00000000, 0.00000000, 113.92750000, 2, NULL, '2023-01-20 15:56:13', '2023-02-08 09:58:34'),
	(29, 45, 375.00000000, 15, 15, 187.50000000, 31.97000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 5.62500000, 13.59380000, 0.00000000, 0.00000000, 0.00000000, 19.21880000, 0.00000000, 0.00000000, 0.00000000, 59.18000000, 0.00000000, 0.00000000, 195.49130000, 2, NULL, '2023-01-20 15:56:13', '2023-02-08 09:58:34'),
	(30, 47, 435.00000000, 15, 15, 217.50000000, 0.00000000, 0.00000000, 0.00000000, 47.50000000, 0.00000000, 0.00000000, 6.52500000, 15.76880000, 0.00000000, 0.00000000, 9.50060000, 31.79440000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 233.20560000, 2, NULL, '2023-01-20 15:56:13', '2023-02-08 09:58:34'),
	(31, 48, 500.00000000, 15, 15, 250.00000000, 22.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 7.50000000, 18.12500000, 0.00000000, 0.00000000, 0.00000000, 25.62500000, 0.00000000, 0.00000000, 0.00000000, 138.30000000, 0.00000000, 0.00000000, 340.67500000, 2, NULL, '2023-01-20 15:56:13', '2023-02-08 09:58:34'),
	(32, 49, 450.00000000, 15, 15, 225.00000000, 22.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 6.75000000, 16.31250000, 0.00000000, 0.00000000, 0.00000000, 23.06250000, 0.00000000, 0.00000000, 0.00000000, 69.11000000, 0.00000000, 0.00000000, 249.04750000, 2, NULL, '2023-01-20 15:56:13', '2023-02-08 09:58:34'),
	(33, 51, 450.00000000, 15, 15, 225.00000000, 44.00000000, 0.00000000, 0.00000000, 23.44000000, 0.00000000, 0.00000000, 6.75000000, 16.31250000, 0.00000000, 0.00000000, 0.00000000, 23.06250000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 181.37750000, 2, NULL, '2023-01-20 15:56:13', '2023-02-08 09:58:34'),
	(34, 52, 400.00000000, 15, 15, 200.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 6.00000000, 14.50000000, 0.00000000, 0.00000000, 0.00000000, 20.50000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 179.50000000, 2, NULL, '2023-01-20 15:56:13', '2023-02-08 09:58:34'),
	(35, 53, 500.00000000, 15, 15, 250.00000000, 74.50000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 7.50000000, 18.12500000, 0.00000000, 0.00000000, 0.00000000, 25.62500000, 0.00000000, 0.00000000, 0.00000000, 15.00000000, 0.00000000, 0.00000000, 164.87500000, 2, NULL, '2023-01-20 15:56:13', '2023-02-08 09:58:34'),
	(36, 55, 375.00000000, 15, 15, 187.50000000, 22.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 5.62500000, 13.59380000, 0.00000000, 0.00000000, 0.00000000, 19.21880000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 146.28130000, 2, NULL, '2023-01-20 15:56:13', '2023-02-08 09:58:34'),
	(37, 56, 450.00000000, 15, 15, 225.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 6.75000000, 16.31250000, 0.00000000, 0.00000000, 0.00000000, 23.06250000, 0.00000000, 0.00000000, 0.00000000, 29.33000000, 0.00000000, 0.00000000, 231.26750000, 2, NULL, '2023-01-20 15:56:13', '2023-02-08 09:58:34'),
	(38, 57, 550.00000000, 15, 15, 275.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 8.25000000, 19.93750000, 0.00000000, 0.00000000, 9.91130000, 38.09880000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 236.90130000, 2, NULL, '2023-01-20 15:56:13', '2023-02-08 09:58:34'),
	(39, 59, 400.00000000, 15, 15, 200.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 6.00000000, 14.50000000, 0.00000000, 0.00000000, 0.00000000, 20.50000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 179.50000000, 2, NULL, '2023-01-20 15:56:13', '2023-02-08 09:58:34'),
	(40, 60, 600.00000000, 15, 15, 300.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 9.00000000, 21.75000000, 0.00000000, 0.00000000, 12.15500000, 42.90500000, 0.00000000, 0.00000000, 0.00000000, 27.86000000, 0.00000000, 0.00000000, 284.95500000, 2, NULL, '2023-01-20 15:56:13', '2023-02-08 09:58:34'),
	(41, 64, 500.00000000, 15, 15, 250.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 7.50000000, 18.12500000, 0.00000000, 0.00000000, 0.00000000, 25.62500000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 224.37500000, 2, NULL, '2023-01-20 15:56:13', '2023-02-08 09:58:34'),
	(42, 65, 375.00000000, 15, 15, 187.50000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 5.62500000, 13.59380000, 0.00000000, 0.00000000, 0.00000000, 19.21880000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 168.28130000, 2, NULL, '2023-01-20 15:56:13', '2023-02-08 09:58:34'),
	(43, 66, 375.00000000, 15, 15, 187.50000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 5.62500000, 13.59380000, 0.00000000, 0.00000000, 0.00000000, 19.21880000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 168.28130000, 2, NULL, '2023-01-20 15:56:13', '2023-02-08 09:58:34'),
	(44, 68, 375.00000000, 15, 15, 187.50000000, 22.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 5.62500000, 13.59380000, 0.00000000, 0.00000000, 0.00000000, 19.21880000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 146.28130000, 2, NULL, '2023-01-20 15:56:13', '2023-02-08 09:58:34'),
	(45, 69, 500.00000000, 15, 15, 250.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 7.50000000, 18.12500000, 0.00000000, 0.00000000, 0.00000000, 25.62500000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 224.37500000, 2, NULL, '2023-01-20 15:56:13', '2023-02-08 09:58:34'),
	(46, 70, 400.00000000, 15, 15, 200.00000000, 30.41000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 6.00000000, 14.50000000, 0.00000000, 0.00000000, 0.00000000, 20.50000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 149.09000000, 2, NULL, '2023-01-20 15:56:13', '2023-02-08 09:58:34'),
	(47, 71, 375.00000000, 15, 15, 187.50000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 5.62500000, 13.59380000, 0.00000000, 0.00000000, 0.00000000, 19.21880000, 0.00000000, 0.00000000, 0.00000000, 59.18000000, 0.00000000, 0.00000000, 227.46130000, 2, NULL, '2023-01-20 15:56:13', '2023-02-08 09:58:34'),
	(48, 72, 400.00000000, 15, 15, 200.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 6.00000000, 14.50000000, 0.00000000, 0.00000000, 0.00000000, 20.50000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 179.50000000, 2, NULL, '2023-01-20 15:56:13', '2023-02-08 09:58:34'),
	(49, 73, 400.00000000, 15, 15, 200.00000000, 22.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 6.00000000, 0.00000000, 12.00000000, 0.00000000, 0.00000000, 18.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 160.00000000, 2, NULL, '2023-01-20 15:56:13', '2023-02-08 09:58:34'),
	(50, 74, 400.00000000, 15, 15, 200.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 6.00000000, 14.50000000, 0.00000000, 0.00000000, 0.00000000, 20.50000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 179.50000000, 2, NULL, '2023-01-20 15:56:13', '2023-02-08 09:58:34'),
	(51, 75, 375.00000000, 15, 3, 37.50000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 1.12500000, 2.71880000, 0.00000000, 0.00000000, 0.00000000, 3.84380000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 33.65630000, 2, NULL, '2023-01-20 15:56:13', '2023-02-08 09:58:34'),
	(52, 77, 400.00000000, 15, 15, 200.00000000, 22.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 6.00000000, 14.50000000, 0.00000000, 0.00000000, 0.00000000, 20.50000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 179.50000000, 2, NULL, '2023-01-20 15:56:13', '2023-02-08 09:58:34'),
	(53, 78, 450.00000000, 15, 15, 225.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 6.75000000, 16.31250000, 0.00000000, 0.00000000, 0.00000000, 23.06250000, 0.00000000, 0.00000000, 0.00000000, 70.00000000, 0.00000000, 0.00000000, 271.93750000, 2, NULL, '2023-01-20 15:56:13', '2023-02-08 09:58:34'),
	(54, 83, 400.00000000, 15, 15, 200.00000000, 22.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 6.00000000, 14.50000000, 0.00000000, 0.00000000, 0.00000000, 20.50000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 157.50000000, 2, NULL, '2023-01-20 15:56:13', '2023-02-08 09:58:34'),
	(55, 84, 400.00000000, 15, 15, 200.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 6.00000000, 14.50000000, 0.00000000, 0.00000000, 0.00000000, 20.50000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 179.50000000, 2, NULL, '2023-01-20 15:56:13', '2023-02-08 09:58:34'),
	(56, 85, 400.00000000, 15, 15, 200.00000000, 36.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 6.00000000, 14.50000000, 0.00000000, 0.00000000, 0.00000000, 20.50000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 143.50000000, 2, NULL, '2023-01-20 15:56:13', '2023-02-08 09:58:34'),
	(57, 2, 783.00000000, 15, 15, 391.50000000, 126.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 11.74500000, 28.38380000, 0.00000000, 0.00000000, 20.36710000, 60.49590000, 0.00000000, 0.00000000, 0.00000000, 8.38000000, 0.00000000, 0.00000000, 213.38410000, 2, NULL, '2023-01-20 15:56:13', '2023-02-08 09:58:34'),
	(58, 3, 900.00000000, 15, 15, 450.00000000, 163.50000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 8.40000000, 32.62500000, 0.00000000, 0.00000000, 26.12750000, 67.15250000, 0.00000000, 0.00000000, 0.00000000, 30.00000000, 0.00000000, 0.00000000, 249.34750000, 2, NULL, '2023-01-20 15:56:13', '2023-02-08 09:58:34'),
	(59, 4, 669.00000000, 15, 15, 334.50000000, 30.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 10.03500000, 24.25130000, 0.00000000, 0.00000000, 15.25140000, 49.53760000, 0.00000000, 13.31000000, 0.00000000, 69.94000000, 0.00000000, 0.00000000, 311.59240000, 2, NULL, '2023-01-20 15:56:13', '2023-02-08 09:58:34'),
	(60, 5, 561.00000000, 15, 15, 280.50000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 8.41500000, 20.33630000, 0.00000000, 0.00000000, 10.40490000, 39.15610000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 241.34390000, 2, NULL, '2023-01-20 15:56:13', '2023-02-08 09:58:34'),
	(61, 9, 750.00000000, 15, 15, 375.00000000, 149.50000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 11.25000000, 27.18750000, 0.00000000, 0.00000000, 18.88630000, 57.32380000, 0.00000000, 0.00000000, 0.00000000, 13.00000000, 0.00000000, 0.00000000, 181.17630000, 2, NULL, '2023-01-20 15:56:13', '2023-02-08 09:58:34'),
	(62, 23, 900.00000000, 15, 7, 210.00000000, 88.00000000, 3.43000000, 0.00000000, 414.00000000, 0.00000000, 0.00000000, 6.30000000, 15.22500000, 0.00000000, 0.00000000, 60.97100000, 82.49600000, 0.00000000, 0.00000000, 25.00000000, 0.00000000, 0.00000000, 0.00000000, 425.07400000, 2, NULL, '2023-01-20 15:56:13', '2023-02-08 09:58:34'),
	(63, 29, 425.00000000, 15, 15, 212.50000000, 85.50000000, 0.00000000, 125.00000000, 0.00000000, 0.00000000, 0.00000000, 10.12500000, 24.46880000, 0.00000000, 0.00000000, 15.52060000, 50.11440000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 201.88560000, 2, NULL, '2023-01-20 15:56:13', '2023-02-08 09:58:34'),
	(64, 33, 1100.00000000, 15, 15, 550.00000000, 53.50000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 15.00000000, 39.87500000, 0.00000000, 0.00000000, 39.50100000, 94.37600000, 0.00000000, 0.00000000, 0.00000000, 11.00000000, 0.00000000, 0.00000000, 413.12400000, 2, NULL, '2023-01-20 15:56:13', '2023-02-08 09:58:34'),
	(65, 42, 900.00000000, 15, 15, 450.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 13.50000000, 32.62500000, 0.00000000, 0.00000000, 25.61750000, 71.74250000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 378.25750000, 2, NULL, '2023-01-20 15:56:13', '2023-02-08 09:58:34'),
	(66, 46, 700.00000000, 15, 15, 350.00000000, 22.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 10.50000000, 25.37500000, 0.00000000, 0.00000000, 16.64250000, 52.51750000, 0.00000000, 0.00000000, 0.00000000, 22.00000000, 0.00000000, 0.00000000, 297.48250000, 2, NULL, '2023-01-20 15:56:13', '2023-02-08 09:58:34'),
	(67, 61, 700.00000000, 15, 15, 350.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 10.50000000, 25.37500000, 0.00000000, 0.00000000, 16.64250000, 52.51750000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 297.48250000, 2, NULL, '2023-01-20 15:56:13', '2023-02-08 09:58:34'),
	(68, 62, 600.00000000, 15, 15, 300.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 9.00000000, 21.75000000, 0.00000000, 0.00000000, 12.15500000, 42.90500000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 257.09500000, 2, NULL, '2023-01-20 15:56:13', '2023-02-08 09:58:34'),
	(69, 63, 550.00000000, 15, 15, 275.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 8.25000000, 19.93750000, 0.00000000, 0.00000000, 9.91130000, 38.09880000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 236.90130000, 2, NULL, '2023-01-20 15:56:13', '2023-02-08 09:58:34'),
	(71, 81, 550.00000000, 15, 15, 275.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 8.25000000, 19.93750000, 0.00000000, 0.00000000, 9.91130000, 38.09880000, 0.00000000, 0.00000000, 0.00000000, 22.00000000, 0.00000000, 0.00000000, 236.90130000, 2, NULL, '2023-01-20 15:56:13', '2023-02-08 09:58:34'),
	(72, 82, 900.00000000, 15, 15, 450.00000000, 43.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 32.62500000, 0.00000000, 0.00000000, 26.96750000, 59.59250000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 347.40750000, 2, NULL, '2023-01-20 15:56:13', '2023-02-08 09:58:34'),
	(73, 1, 2000.00000000, 15, 15, 1000.00000000, 307.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 15.00000000, 72.50000000, 0.00000000, 0.00000000, 122.97600000, 210.47600000, 0.00000000, 0.00000000, 0.00000000, 30.00000000, 0.00000000, 0.00000000, 512.52400000, 2, NULL, '2023-01-20 15:56:13', '2023-02-08 09:58:34'),
	(74, 7, 1250.00000000, 15, 15, 625.00000000, 99.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 15.00000000, 45.31250000, 0.00000000, 0.00000000, 53.41350000, 113.72600000, 0.00000000, 51.36000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 360.91400000, 2, NULL, '2023-01-20 15:56:13', '2023-02-08 09:58:34'),
	(75, 13, 1250.00000000, 15, 15, 625.00000000, 77.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 15.00000000, 45.31250000, 0.00000000, 0.00000000, 53.41350000, 113.72600000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 434.27400000, 2, NULL, '2023-01-20 15:56:13', '2023-02-08 09:58:34'),
	(76, 16, 1250.00000000, 15, 15, 625.00000000, 114.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 15.00000000, 45.31250000, 0.00000000, 0.00000000, 53.41350000, 113.72600000, 0.00000000, 0.00000000, 0.00000000, 10.00000000, 0.00000000, 0.00000000, 407.27400000, 2, NULL, '2023-01-20 15:56:13', '2023-02-08 09:58:34'),
	(77, 19, 1200.00000000, 15, 15, 600.00000000, 227.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 15.00000000, 43.50000000, 0.00000000, 0.00000000, 48.77600000, 107.27600000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 265.72400000, 2, NULL, '2023-01-20 15:56:13', '2023-02-08 09:58:34'),
	(78, 31, 1500.00000000, 15, 15, 750.00000000, 76.50000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 15.00000000, 54.37500000, 0.00000000, 0.00000000, 76.60100000, 145.97600000, 0.00000000, 0.00000000, 0.00000000, 30.00000000, 0.00000000, 0.00000000, 557.52400000, 2, NULL, '2023-01-20 15:56:13', '2023-02-08 09:58:34'),
	(79, 32, 1800.00000000, 15, 15, 900.00000000, 362.44000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 15.00000000, 65.25000000, 0.00000000, 0.00000000, 104.42600000, 184.67600000, 0.00000000, 0.00000000, 0.00000000, 30.00000000, 0.00000000, 0.00000000, 382.88400000, 2, NULL, '2023-01-20 15:56:13', '2023-02-08 09:58:34'),
	(80, 50, 2000.00000000, 15, 15, 1000.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 72.50000000, 0.00000000, 0.00000000, 125.97600000, 198.47600000, 0.00000000, 0.00000000, 0.00000000, 30.00000000, 0.00000000, 0.00000000, 831.52400000, 2, NULL, '2023-01-20 15:56:13', '2023-02-08 09:58:34'),
	(81, 54, 1200.00000000, 15, 15, 600.00000000, 148.50000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 15.00000000, 43.50000000, 0.00000000, 0.00000000, 48.77600000, 107.27600000, 0.00000000, 0.00000000, 0.00000000, 30.00000000, 0.00000000, 0.00000000, 374.22400000, 2, NULL, '2023-01-20 15:56:13', '2023-02-08 09:58:34'),
	(82, 67, 1000.00000000, 15, 15, 500.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 15.00000000, 36.25000000, 0.00000000, 0.00000000, 30.22600000, 81.47600000, 0.00000000, 0.00000000, 0.00000000, 30.00000000, 0.00000000, 0.00000000, 448.52400000, 2, NULL, '2023-01-20 15:56:13', '2023-02-08 09:58:34'),
	(83, 79, 1200.00000000, 15, 15, 600.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 15.00000000, 43.50000000, 0.00000000, 0.00000000, 48.77600000, 107.27600000, 0.00000000, 0.00000000, 0.00000000, 70.00000000, 0.00000000, 0.00000000, 562.72400000, 2, NULL, '2023-01-20 15:56:13', '2023-02-08 09:58:34'),
	(84, 80, 1200.00000000, 15, 15, 600.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 15.00000000, 43.50000000, 0.00000000, 0.00000000, 48.77600000, 107.27600000, 0.00000000, 0.00000000, 0.00000000, 86.99000000, 0.00000000, 0.00000000, 579.71400000, 2, NULL, '2023-01-20 15:56:13', '2023-02-08 09:58:34'),
	(85, 86, 1700.00000000, 15, 15, 850.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 15.00000000, 61.62500000, 0.00000000, 0.00000000, 95.15100000, 171.77600000, 0.00000000, 0.00000000, 0.00000000, 30.00000000, 0.00000000, 0.00000000, 708.22400000, 2, NULL, '2023-01-20 15:56:13', '2023-02-08 09:58:34'),
	(86, 58, 3500.00000000, 15, 15, 1750.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 15.00000000, 126.87500000, 0.00000000, 0.00000000, 320.99950000, 462.87450000, 0.00000000, 0.00000000, 0.00000000, 50.00000000, 0.00000000, 0.00000000, 1337.12550000, 2, NULL, '2023-01-20 15:56:13', '2023-02-08 09:58:34'),
	(87, 2, 783.00000000, 15, 15, 391.50000000, 126.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 199.53000000, 17.73090000, 42.84970000, 0.00000000, 0.00000000, 46.56590000, 107.14650000, 0.00000000, 0.00000000, 0.00000000, 29.33000000, 0.00000000, 0.00000000, 383.78350000, 1, NULL, '2023-01-10 15:57:50', '2023-02-06 14:46:59'),
	(88, 10, 467.00000000, 15, 15, 233.50000000, 50.00000000, 3.43000000, 0.00000000, 0.00000000, 140.10000000, 0.00000000, 11.20800000, 0.00000000, 22.41600000, 0.00000000, 19.22760000, 52.85160000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 267.31840000, 1, NULL, '2023-01-10 15:57:50', '2023-02-06 14:46:59'),
	(89, 12, 368.00000000, 15, 15, 184.00000000, 0.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 347.57000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 46.79000000, 46.79000000, 0.00000000, 0.00000000, 0.00000000, 42.88000000, 0.00000000, 0.00000000, 524.23000000, 1, NULL, '2023-01-10 15:57:50', '2023-02-06 14:46:59'),
	(90, 25, 425.00000000, 15, 15, 212.50000000, 67.00000000, 3.43000000, 125.00000000, 0.00000000, 0.00000000, 0.00000000, 10.12500000, 24.46880000, 0.00000000, 0.00000000, 15.52060000, 50.11440000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 216.95560000, 1, NULL, '2023-01-10 15:57:50', '2023-02-06 14:46:59'),
	(91, 26, 450.00000000, 15, 15, 225.00000000, 112.50000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 328.42000000, 16.60260000, 40.12300000, 0.00000000, 0.00000000, 39.81490000, 96.54040000, 0.00000000, 0.00000000, 0.00000000, 46.09000000, 0.00000000, 0.00000000, 387.03960000, 1, NULL, '2023-01-10 15:57:50', '2023-02-06 14:46:59'),
	(92, 35, 450.00000000, 15, 15, 225.00000000, 96.50000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 6.75000000, 16.31250000, 0.00000000, 0.00000000, 0.00000000, 23.06250000, 0.00000000, 0.00000000, 0.00000000, 51.92000000, 0.00000000, 0.00000000, 153.92750000, 1, NULL, '2023-01-10 15:57:50', '2023-02-06 14:46:59'),
	(93, 39, 365.00000000, 15, 15, 182.50000000, 66.50000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 723.27000000, 22.49310000, 65.66830000, 0.00000000, 0.00000000, 103.99770000, 192.15910000, 0.00000000, 0.00000000, 0.00000000, 48.24000000, 0.00000000, 0.00000000, 691.92090000, 1, NULL, '2023-01-10 15:57:50', '2023-02-06 14:46:59'),
	(94, 41, 365.00000000, 15, 15, 182.50000000, 38.00000000, 3.43000000, 0.00000000, 0.00000000, 109.50000000, 0.00000000, 8.76000000, 21.17000000, 0.00000000, 0.00000000, 11.43700000, 41.36700000, 0.00000000, 0.00000000, 0.00000000, 37.52000000, 0.00000000, 0.00000000, 246.72300000, 1, NULL, '2023-01-10 15:57:50', '2023-02-06 14:46:59'),
	(95, 44, 450.00000000, 15, 15, 225.00000000, 125.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 197.72000000, 12.68160000, 30.64720000, 0.00000000, 0.00000000, 23.16910000, 66.49790000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 227.79210000, 1, NULL, '2023-01-10 15:57:50', '2023-02-06 14:46:59'),
	(96, 45, 375.00000000, 15, 15, 187.50000000, 31.97000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 5.62500000, 13.59380000, 0.00000000, 0.00000000, 0.00000000, 19.21880000, 0.00000000, 0.00000000, 0.00000000, 37.52000000, 0.00000000, 0.00000000, 170.40130000, 1, NULL, '2023-01-10 15:57:50', '2023-02-06 14:46:59'),
	(97, 49, 450.00000000, 15, 15, 225.00000000, 22.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 152.34000000, 11.32020000, 27.35720000, 0.00000000, 0.00000000, 19.09630000, 57.77360000, 0.00000000, 0.00000000, 0.00000000, 57.68000000, 0.00000000, 0.00000000, 351.81640000, 1, NULL, '2023-01-10 15:57:50', '2023-02-06 14:46:59'),
	(98, 56, 450.00000000, 15, 15, 225.00000000, 0.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 6.75000000, 16.31250000, 0.00000000, 0.00000000, 0.00000000, 23.06250000, 0.00000000, 0.00000000, 0.00000000, 54.47000000, 0.00000000, 0.00000000, 252.97750000, 1, NULL, '2023-01-10 15:57:50', '2023-02-06 14:46:59'),
	(99, 71, 375.00000000, 15, 13, 162.50000000, 0.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 4.87500000, 11.78130000, 0.00000000, 0.00000000, 0.00000000, 16.65630000, 0.00000000, 0.00000000, 0.00000000, 16.08000000, 0.00000000, 0.00000000, 158.49380000, 1, NULL, '2023-01-10 15:57:50', '2023-02-06 14:46:59'),
	(100, 72, 400.00000000, 15, 15, 200.00000000, 0.00000000, 3.43000000, 200.00000000, 0.00000000, 0.00000000, 0.00000000, 12.00000000, 29.00000000, 0.00000000, 0.00000000, 21.13000000, 62.13000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 334.44000000, 1, NULL, '2023-01-10 15:57:50', '2023-02-06 14:46:59'),
	(101, 78, 450.00000000, 15, 15, 225.00000000, 0.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 434.17000000, 19.77510000, 47.78980000, 0.00000000, 0.00000000, 58.79700000, 126.36190000, 0.00000000, 0.00000000, 0.00000000, 36.99000000, 0.00000000, 0.00000000, 566.36810000, 1, NULL, '2023-01-10 15:57:50', '2023-02-06 14:46:59'),
	(102, 6, 1200.00000000, 15, 15, 600.00000000, 114.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 15.00000000, 43.50000000, 0.00000000, 0.00000000, 48.77600000, 107.27600000, 25.00000000, 0.00000000, 0.00000000, 70.00000000, 0.00000000, 0.00000000, 420.29400000, 1, NULL, '2023-01-10 15:57:50', '2023-02-06 14:46:59'),
	(103, 8, 420.00000000, 15, 15, 210.00000000, 0.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 6.30000000, 15.22500000, 0.00000000, 0.00000000, 0.00000000, 21.52500000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 185.04500000, 1, NULL, '2023-01-10 15:57:50', '2023-02-06 14:46:59'),
	(104, 11, 452.00000000, 15, 15, 226.00000000, 0.00000000, 3.43000000, 50.00000000, 0.00000000, 0.00000000, 0.00000000, 8.28000000, 20.01000000, 0.00000000, 15.00000000, 10.00100000, 38.29100000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 219.27900000, 1, NULL, '2023-01-10 15:57:50', '2023-02-06 14:46:59'),
	(105, 14, 400.00000000, 15, 15, 200.00000000, 43.50000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 6.00000000, 14.50000000, 0.00000000, 0.00000000, 0.00000000, 20.50000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 132.57000000, 1, NULL, '2023-01-10 15:57:50', '2023-02-06 14:46:59'),
	(106, 15, 400.00000000, 15, 15, 200.00000000, 45.50000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 6.00000000, 14.50000000, 0.00000000, 0.00000000, 0.00000000, 20.50000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 130.57000000, 1, NULL, '2023-01-10 15:57:50', '2023-02-06 14:46:59'),
	(107, 17, 400.00000000, 15, 15, 200.00000000, 96.50000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 14.50000000, 0.00000000, 0.00000000, 0.00000000, 14.50000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 85.57000000, 1, NULL, '2023-01-10 15:57:50', '2023-02-06 14:46:59'),
	(108, 18, 500.00000000, 15, 15, 250.00000000, 61.50000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 7.50000000, 18.12500000, 0.00000000, 0.00000000, 0.00000000, 25.62500000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 159.44500000, 1, NULL, '2023-01-10 15:57:50', '2023-02-06 14:46:59'),
	(109, 20, 450.00000000, 15, 15, 225.00000000, 22.00000000, 3.43000000, 125.00000000, 0.00000000, 0.00000000, 0.00000000, 10.50000000, 25.37500000, 0.00000000, 0.00000000, 16.64250000, 52.51750000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 272.05250000, 1, NULL, '2023-01-10 15:57:50', '2023-02-06 14:46:59'),
	(110, 21, 400.00000000, 15, 15, 200.00000000, 0.00000000, 3.43000000, 0.00000000, 16.66000000, 0.00000000, 0.00000000, 6.00000000, 14.50000000, 0.00000000, 0.00000000, 0.00000000, 20.50000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 192.73000000, 1, NULL, '2023-01-10 15:57:50', '2023-02-06 14:46:59'),
	(111, 22, 450.00000000, 15, 0, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-01-10 15:57:50', '2023-02-06 14:46:59'),
	(112, 24, 425.00000000, 15, 15, 212.50000000, 47.50000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 6.37500000, 15.40630000, 0.00000000, 0.00000000, 0.00000000, 21.78130000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 139.78880000, 1, NULL, '2023-01-10 15:57:50', '2023-02-06 14:46:59'),
	(113, 27, 525.00000000, 15, 15, 262.50000000, 66.50000000, 3.43000000, 0.00000000, 0.00000000, 157.50000000, 0.00000000, 12.60000000, 30.45000000, 0.00000000, 0.00000000, 22.92500000, 65.97500000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 284.09500000, 1, NULL, '2023-01-10 15:57:50', '2023-02-06 14:46:59'),
	(114, 28, 425.00000000, 15, 15, 212.50000000, 36.50000000, 3.43000000, 50.00000000, 0.00000000, 0.00000000, 0.00000000, 7.87500000, 19.03130000, 0.00000000, 0.00000000, 0.00000000, 26.90630000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 195.66380000, 1, NULL, '2023-01-10 15:57:50', '2023-02-06 14:46:59'),
	(115, 30, 650.00000000, 15, 15, 325.00000000, 55.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 9.75000000, 23.56250000, 0.00000000, 0.00000000, 14.39880000, 47.71130000, 0.00000000, 0.00000000, 0.00000000, 55.00000000, 0.00000000, 0.00000000, 273.85880000, 1, NULL, '2023-01-10 15:57:50', '2023-02-06 14:46:59'),
	(116, 34, 425.00000000, 15, 15, 212.50000000, 65.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 6.37500000, 15.40630000, 0.00000000, 0.00000000, 0.00000000, 21.78130000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 122.28880000, 1, NULL, '2023-01-10 15:57:50', '2023-02-06 14:46:59'),
	(117, 36, 400.00000000, 15, 15, 200.00000000, 38.50000000, 3.43000000, 0.00000000, 16.66000000, 0.00000000, 0.00000000, 6.00000000, 14.50000000, 0.00000000, 0.00000000, 0.00000000, 20.50000000, 0.00000000, 31.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 123.23000000, 1, NULL, '2023-01-10 15:57:50', '2023-02-06 14:46:59'),
	(118, 37, 525.00000000, 15, 15, 262.50000000, 52.50000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 7.87500000, 19.03130000, 0.00000000, 0.00000000, 0.00000000, 26.90630000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 179.66380000, 1, NULL, '2023-01-10 15:57:50', '2023-02-06 14:46:59'),
	(119, 38, 400.00000000, 15, 15, 200.00000000, 70.50000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 6.00000000, 14.50000000, 0.00000000, 0.00000000, 0.00000000, 20.50000000, 0.00000000, 0.00000000, 0.00000000, 42.88000000, 0.00000000, 0.00000000, 148.45000000, 1, NULL, '2023-01-10 15:57:50', '2023-02-06 14:46:59'),
	(120, 40, 365.00000000, 15, 15, 182.50000000, 0.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 5.47500000, 13.23130000, 0.00000000, 0.00000000, 0.00000000, 18.70630000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 160.36380000, 1, NULL, '2023-01-10 15:57:50', '2023-02-06 14:46:59'),
	(121, 43, 400.00000000, 15, 15, 200.00000000, 65.00000000, 3.43000000, 0.00000000, 16.66000000, 120.00000000, 0.00000000, 9.60000000, 23.20000000, 0.00000000, 0.00000000, 15.61600000, 48.41600000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 219.81400000, 1, NULL, '2023-01-10 15:57:50', '2023-02-06 14:46:59'),
	(122, 47, 365.00000000, 15, 15, 182.50000000, 0.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 5.47500000, 13.23130000, 0.00000000, 0.00000000, 0.00000000, 18.70630000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 160.36380000, 1, NULL, '2023-01-10 15:57:50', '2023-02-06 14:46:59'),
	(123, 48, 500.00000000, 15, 15, 250.00000000, 22.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 7.50000000, 18.12500000, 0.00000000, 0.00000000, 0.00000000, 25.62500000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 198.94500000, 1, NULL, '2023-01-10 15:57:50', '2023-02-06 14:46:59'),
	(124, 51, 450.00000000, 15, 15, 225.00000000, 44.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 6.75000000, 16.31250000, 0.00000000, 0.00000000, 0.00000000, 23.06250000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 154.50750000, 1, NULL, '2023-01-10 15:57:50', '2023-02-06 14:46:59'),
	(125, 52, 400.00000000, 15, 15, 200.00000000, 0.00000000, 3.43000000, 0.00000000, 16.66000000, 0.00000000, 0.00000000, 6.00000000, 14.50000000, 0.00000000, 0.00000000, 0.00000000, 20.50000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 192.73000000, 1, NULL, '2023-01-10 15:57:50', '2023-02-06 14:46:59'),
	(126, 53, 500.00000000, 15, 15, 250.00000000, 74.50000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 7.50000000, 18.12500000, 0.00000000, 0.00000000, 0.00000000, 25.62500000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 146.44500000, 1, NULL, '2023-01-10 15:57:50', '2023-02-06 14:46:59'),
	(127, 55, 375.00000000, 15, 15, 187.50000000, 22.00000000, 3.43000000, 50.00000000, 0.00000000, 0.00000000, 0.00000000, 7.12500000, 17.21880000, 0.00000000, 0.00000000, 0.00000000, 24.34380000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 187.72630000, 1, NULL, '2023-01-10 15:57:50', '2023-02-06 14:46:59'),
	(128, 57, 550.00000000, 15, 15, 275.00000000, 0.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 8.25000000, 19.93750000, 0.00000000, 0.00000000, 9.91130000, 38.09880000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 233.47130000, 1, NULL, '2023-01-10 15:57:50', '2023-02-06 14:46:59'),
	(129, 59, 400.00000000, 15, 15, 200.00000000, 0.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 6.00000000, 14.50000000, 0.00000000, 0.00000000, 0.00000000, 20.50000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 176.07000000, 1, NULL, '2023-01-10 15:57:50', '2023-02-06 14:46:59'),
	(130, 60, 600.00000000, 15, 15, 300.00000000, 0.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 9.00000000, 21.75000000, 0.00000000, 0.00000000, 12.15500000, 42.90500000, 0.00000000, 0.00000000, 0.00000000, 10.77000000, 0.00000000, 0.00000000, 264.43500000, 1, NULL, '2023-01-10 15:57:50', '2023-02-06 14:46:59'),
	(131, 64, 500.00000000, 15, 15, 250.00000000, 0.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 7.50000000, 18.12500000, 0.00000000, 0.00000000, 0.00000000, 25.62500000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 220.94500000, 1, NULL, '2023-01-10 15:57:50', '2023-02-06 14:46:59'),
	(132, 65, 375.00000000, 15, 15, 187.50000000, 0.00000000, 3.43000000, 50.00000000, 0.00000000, 0.00000000, 0.00000000, 7.12500000, 17.21880000, 0.00000000, 0.00000000, 0.00000000, 24.34380000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 209.72630000, 1, NULL, '2023-01-10 15:57:50', '2023-02-06 14:46:59'),
	(133, 66, 375.00000000, 15, 15, 187.50000000, 0.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 5.62500000, 13.59380000, 0.00000000, 0.00000000, 0.00000000, 19.21880000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 164.85130000, 1, NULL, '2023-01-10 15:57:50', '2023-02-06 14:46:59'),
	(134, 68, 375.00000000, 15, 15, 187.50000000, 22.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 5.62500000, 13.59380000, 0.00000000, 0.00000000, 0.00000000, 19.21880000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 142.85130000, 1, NULL, '2023-01-10 15:57:50', '2023-02-06 14:46:59'),
	(135, 69, 500.00000000, 15, 15, 250.00000000, 0.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 7.50000000, 18.12500000, 0.00000000, 0.00000000, 0.00000000, 25.62500000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 220.94500000, 1, NULL, '2023-01-10 15:57:50', '2023-02-06 14:46:59'),
	(136, 70, 400.00000000, 15, 15, 200.00000000, 30.41000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 6.00000000, 14.50000000, 0.00000000, 0.00000000, 0.00000000, 20.50000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 145.66000000, 1, NULL, '2023-01-10 15:57:50', '2023-02-06 14:46:59'),
	(137, 73, 400.00000000, 15, 15, 200.00000000, 22.00000000, 3.43000000, 0.00000000, 16.66000000, 120.00000000, 0.00000000, 9.60000000, 0.00000000, 19.20000000, 0.00000000, 16.01600000, 44.81600000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 266.41400000, 1, NULL, '2023-01-10 15:57:50', '2023-02-06 14:46:59'),
	(138, 74, 400.00000000, 15, 15, 200.00000000, 0.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 6.00000000, 14.50000000, 0.00000000, 0.00000000, 0.00000000, 20.50000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 176.07000000, 1, NULL, '2023-01-10 15:57:50', '2023-02-06 14:46:59'),
	(139, 75, 375.00000000, 15, 15, 187.50000000, 0.00000000, 3.43000000, 50.00000000, 0.00000000, 0.00000000, 0.00000000, 7.12500000, 17.21880000, 0.00000000, 0.00000000, 0.00000000, 24.34380000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 209.72630000, 1, NULL, '2023-01-10 15:57:50', '2023-02-06 14:46:59'),
	(140, 77, 400.00000000, 15, 15, 200.00000000, 0.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 6.00000000, 14.50000000, 0.00000000, 0.00000000, 0.00000000, 20.50000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 176.07000000, 1, NULL, '2023-01-10 15:57:50', '2023-02-06 14:46:59'),
	(141, 83, 400.00000000, 15, 15, 200.00000000, 22.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 6.00000000, 14.50000000, 0.00000000, 0.00000000, 0.00000000, 20.50000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 154.07000000, 1, NULL, '2023-01-10 15:57:50', '2023-02-06 14:46:59'),
	(142, 84, 400.00000000, 15, 15, 200.00000000, 0.00000000, 3.43000000, 0.00000000, 16.66000000, 0.00000000, 0.00000000, 6.00000000, 14.50000000, 0.00000000, 0.00000000, 0.00000000, 20.50000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 192.73000000, 1, NULL, '2023-01-10 15:57:50', '2023-02-06 14:46:59'),
	(143, 85, 400.00000000, 15, 15, 200.00000000, 36.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 6.00000000, 14.50000000, 0.00000000, 0.00000000, 0.00000000, 20.50000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 140.07000000, 1, NULL, '2023-01-10 15:57:50', '2023-02-06 14:46:59'),
	(144, 3, 900.00000000, 15, 15, 450.00000000, 163.50000000, 3.43000000, 0.00000000, 0.00000000, 270.00000000, 0.00000000, 21.60000000, 52.20000000, 0.00000000, 0.00000000, 69.71600000, 143.51600000, 0.00000000, 0.00000000, 0.00000000, 30.00000000, 0.00000000, 0.00000000, 439.55400000, 1, NULL, '2023-01-10 15:57:50', '2023-02-06 14:46:59'),
	(145, 4, 669.00000000, 15, 15, 334.50000000, 30.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 10.03500000, 24.25130000, 0.00000000, 0.00000000, 15.25140000, 49.53760000, 0.00000000, 13.31000000, 0.00000000, 10.72000000, 0.00000000, 0.00000000, 248.94240000, 1, NULL, '2023-01-10 15:57:50', '2023-02-06 14:46:59'),
	(146, 5, 561.00000000, 15, 15, 280.50000000, 0.00000000, 3.43000000, 0.00000000, 0.00000000, 168.30000000, 0.00000000, 13.46400000, 32.53800000, 0.00000000, 0.00000000, 25.50980000, 71.51180000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 373.85820000, 1, NULL, '2023-01-10 15:57:50', '2023-02-06 14:46:59'),
	(147, 9, 750.00000000, 15, 15, 375.00000000, 149.50000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 11.25000000, 27.18750000, 0.00000000, 0.00000000, 18.88620000, 57.32380000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 164.74630000, 1, NULL, '2023-01-10 15:57:50', '2023-02-06 14:46:59'),
	(148, 23, 900.00000000, 15, 0, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-01-10 15:57:50', '2023-02-06 14:46:59'),
	(149, 29, 425.00000000, 15, 15, 212.50000000, 85.50000000, 3.43000000, 125.00000000, 0.00000000, 0.00000000, 0.00000000, 10.12500000, 24.46880000, 0.00000000, 0.00000000, 15.52060000, 50.11440000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 198.45560000, 1, NULL, '2023-01-10 15:57:50', '2023-02-06 14:46:59'),
	(150, 33, 1100.00000000, 15, 15, 550.00000000, 53.50000000, 3.43000000, 0.00000000, 0.00000000, 330.00000000, 0.00000000, 15.00000000, 63.80000000, 0.00000000, 0.00000000, 100.71600000, 179.51600000, 0.00000000, 0.00000000, 0.00000000, 5.00000000, 0.00000000, 0.00000000, 648.55400000, 1, NULL, '2023-01-10 15:57:50', '2023-02-06 14:46:59'),
	(151, 42, 900.00000000, 15, 15, 450.00000000, 0.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 13.50000000, 32.62500000, 0.00000000, 0.00000000, 25.61750000, 71.74250000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 374.82750000, 1, NULL, '2023-01-10 15:57:50', '2023-02-06 14:46:59'),
	(152, 46, 700.00000000, 15, 15, 350.00000000, 22.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 216.67000000, 17.00010000, 41.08360000, 0.00000000, 0.00000000, 42.19330000, 100.27690000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 440.96310000, 1, NULL, '2023-01-10 15:57:50', '2023-02-06 14:46:59'),
	(153, 61, 700.00000000, 15, 15, 350.00000000, 0.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 10.50000000, 25.37500000, 0.00000000, 0.00000000, 16.64250000, 52.51750000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 294.05250000, 1, NULL, '2023-01-10 15:57:50', '2023-02-06 14:46:59'),
	(154, 62, 600.00000000, 15, 15, 300.00000000, 0.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 9.00000000, 21.75000000, 0.00000000, 0.00000000, 12.15500000, 42.90500000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 253.66500000, 1, NULL, '2023-01-10 15:57:50', '2023-02-06 14:46:59'),
	(155, 63, 550.00000000, 15, 15, 275.00000000, 0.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 8.25000000, 19.93750000, 0.00000000, 0.00000000, 9.91130000, 38.09880000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 233.47130000, 1, NULL, '2023-01-10 15:57:50', '2023-02-06 14:46:59'),
	(157, 81, 550.00000000, 15, 15, 275.00000000, 0.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 216.67000000, 14.75010000, 35.64610000, 0.00000000, 0.00000000, 29.35740000, 79.75360000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 408.48640000, 1, NULL, '2023-01-10 15:57:50', '2023-02-06 14:46:59'),
	(158, 82, 900.00000000, 15, 15, 450.00000000, 43.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 32.62500000, 0.00000000, 0.00000000, 26.96750000, 59.59250000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 343.97750000, 1, NULL, '2023-01-10 15:57:50', '2023-02-06 14:46:59'),
	(159, 1, 2000.00000000, 15, 15, 1000.00000000, 307.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 15.00000000, 72.50000000, 0.00000000, 0.00000000, 122.97600000, 210.47600000, 0.00000000, 0.00000000, 0.00000000, 30.00000000, 0.00000000, 0.00000000, 509.09400000, 1, NULL, '2023-01-10 15:57:50', '2023-02-06 14:46:59'),
	(160, 7, 1250.00000000, 15, 15, 625.00000000, 99.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 15.00000000, 45.31250000, 0.00000000, 0.00000000, 53.41350000, 113.72600000, 0.00000000, 51.36000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 357.48400000, 1, NULL, '2023-01-10 15:57:50', '2023-02-06 14:46:59'),
	(161, 13, 1250.00000000, 15, 15, 625.00000000, 77.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 15.00000000, 45.31250000, 0.00000000, 0.00000000, 53.41350000, 113.72600000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 430.84400000, 1, NULL, '2023-01-10 15:57:50', '2023-02-06 14:46:59'),
	(162, 16, 1250.00000000, 15, 15, 625.00000000, 114.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 216.67000000, 15.00000000, 61.02110000, 0.00000000, 0.00000000, 93.60580000, 169.62690000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 554.61310000, 1, NULL, '2023-01-10 15:57:50', '2023-02-06 14:46:59'),
	(163, 19, 1200.00000000, 15, 15, 600.00000000, 227.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 15.00000000, 43.50000000, 0.00000000, 0.00000000, 48.77600000, 107.27600000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 262.29400000, 1, NULL, '2023-01-10 15:57:50', '2023-02-06 14:46:59'),
	(164, 31, 1500.00000000, 15, 15, 750.00000000, 76.50000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 15.00000000, 54.37500000, 0.00000000, 0.00000000, 76.60100000, 145.97600000, 0.00000000, 0.00000000, 0.00000000, 30.00000000, 0.00000000, 0.00000000, 554.09400000, 1, NULL, '2023-01-10 15:57:50', '2023-02-06 14:46:59'),
	(165, 32, 1800.00000000, 15, 15, 900.00000000, 0.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 15.00000000, 65.25000000, 0.00000000, 0.00000000, 104.42600000, 184.67600000, 0.00000000, 0.00000000, 0.00000000, 30.00000000, 0.00000000, 0.00000000, 741.89400000, 1, NULL, '2023-01-10 15:57:50', '2023-02-06 14:46:59'),
	(166, 50, 2000.00000000, 15, 15, 1000.00000000, 0.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 72.50000000, 0.00000000, 0.00000000, 125.97600000, 198.47600000, 0.00000000, 0.00000000, 0.00000000, 30.00000000, 0.00000000, 0.00000000, 828.09400000, 1, NULL, '2023-01-10 15:57:50', '2023-02-06 14:46:59'),
	(167, 54, 1200.00000000, 15, 15, 600.00000000, 142.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 15.00000000, 43.50000000, 0.00000000, 0.00000000, 48.77600000, 107.27600000, 0.00000000, 0.00000000, 0.00000000, 30.00000000, 0.00000000, 0.00000000, 377.29400000, 1, NULL, '2023-01-10 15:57:50', '2023-02-06 14:46:59'),
	(168, 67, 1000.00000000, 15, 15, 500.00000000, 0.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 15.00000000, 36.25000000, 0.00000000, 0.00000000, 30.22600000, 81.47600000, 0.00000000, 0.00000000, 0.00000000, 30.00000000, 0.00000000, 0.00000000, 445.09400000, 1, NULL, '2023-01-10 15:57:50', '2023-02-06 14:46:59'),
	(169, 79, 1200.00000000, 15, 15, 600.00000000, 0.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 15.00000000, 43.50000000, 0.00000000, 0.00000000, 48.77600000, 107.27600000, 0.00000000, 0.00000000, 0.00000000, 70.00000000, 0.00000000, 0.00000000, 559.29400000, 1, NULL, '2023-01-10 15:57:50', '2023-02-06 14:46:59'),
	(170, 80, 1200.00000000, 15, 15, 600.00000000, 0.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 15.00000000, 43.50000000, 0.00000000, 0.00000000, 48.77600000, 107.27600000, 0.00000000, 0.00000000, 0.00000000, 84.93000000, 0.00000000, 0.00000000, 574.22400000, 1, NULL, '2023-01-10 15:57:50', '2023-02-06 14:46:59'),
	(171, 86, 1700.00000000, 15, 15, 850.00000000, 0.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 15.00000000, 61.62500000, 0.00000000, 0.00000000, 95.15100000, 171.77600000, 0.00000000, 0.00000000, 0.00000000, 30.00000000, 0.00000000, 0.00000000, 704.79400000, 1, NULL, '2023-01-10 15:57:50', '2023-02-06 14:46:59'),
	(172, 58, 3500.00000000, 15, 15, 1750.00000000, 0.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 15.00000000, 126.87500000, 0.00000000, 0.00000000, 320.99950000, 462.87450000, 0.00000000, 0.00000000, 0.00000000, 50.00000000, 0.00000000, 0.00000000, 1333.69550000, 1, NULL, '2023-01-10 15:57:50', '2023-02-06 14:46:59'),
	(173, 1, 2000.00000000, 30, 30, 2000.00000000, 614.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 30.00000000, 145.00000000, 0.00000000, 0.00000000, 245.95200000, 420.95200000, 0.00000000, 0.00000000, 0.00000000, 60.00000000, 0.00000000, 0.00000000, 1021.61800000, 3, NULL, '2023-01-23 10:11:30', '2023-02-08 11:12:17'),
	(174, 2, 783.00000000, 30, 30, 783.00000000, 252.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 199.53000000, 29.47590000, 71.23350000, 0.00000000, 0.00000000, 66.93300000, 167.64240000, 0.00000000, 0.00000000, 0.00000000, 37.71000000, 0.00000000, 0.00000000, 597.16760000, 3, NULL, '2023-01-23 10:11:30', '2023-02-08 11:12:17'),
	(175, 3, 900.00000000, 30, 30, 900.00000000, 327.00000000, 3.43000000, 0.00000000, 0.00000000, 270.00000000, 0.00000000, 30.00000000, 84.82500000, 0.00000000, 0.00000000, 95.84350000, 210.66850000, 0.00000000, 0.00000000, 0.00000000, 60.00000000, 0.00000000, 0.00000000, 688.90150000, 3, NULL, '2023-01-23 10:11:30', '2023-02-08 11:12:17'),
	(176, 4, 669.00000000, 30, 30, 669.00000000, 60.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 20.07000000, 48.50260000, 0.00000000, 0.00000000, 30.50280000, 99.07520000, 0.00000000, 26.62000000, 0.00000000, 80.66000000, 0.00000000, 0.00000000, 560.53480000, 3, NULL, '2023-01-23 10:11:30', '2023-02-08 11:12:17'),
	(177, 5, 561.00000000, 30, 30, 561.00000000, 0.00000000, 3.43000000, 0.00000000, 0.00000000, 168.30000000, 0.00000000, 21.87900000, 52.87430000, 0.00000000, 0.00000000, 35.91470000, 110.66790000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 615.20210000, 3, NULL, '2023-01-23 10:11:30', '2023-02-08 11:12:17'),
	(178, 6, 1200.00000000, 30, 30, 1200.00000000, 228.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 30.00000000, 87.00000000, 0.00000000, 0.00000000, 97.55200000, 214.55200000, 50.00000000, 0.00000000, 0.00000000, 140.00000000, 0.00000000, 0.00000000, 844.01800000, 3, NULL, '2023-01-23 10:11:30', '2023-02-08 11:12:17'),
	(179, 7, 1250.00000000, 30, 30, 1250.00000000, 198.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 30.00000000, 90.62500000, 0.00000000, 0.00000000, 106.82700000, 227.45200000, 0.00000000, 102.72000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 718.39800000, 3, NULL, '2023-01-23 10:11:30', '2023-02-08 11:12:17'),
	(180, 8, 420.00000000, 30, 30, 420.00000000, 0.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 12.60000000, 30.45000000, 0.00000000, 0.00000000, 0.00000000, 43.05000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 373.52000000, 3, NULL, '2023-01-23 10:11:30', '2023-02-08 11:12:17'),
	(181, 9, 750.00000000, 30, 30, 750.00000000, 299.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 22.50000000, 54.37500000, 0.00000000, 0.00000000, 37.77250000, 114.64760000, 0.00000000, 0.00000000, 0.00000000, 13.00000000, 0.00000000, 0.00000000, 345.92260000, 3, NULL, '2023-01-23 10:11:30', '2023-02-08 11:12:17'),
	(182, 10, 467.00000000, 30, 30, 467.00000000, 100.00000000, 3.43000000, 0.00000000, 0.00000000, 140.10000000, 0.00000000, 18.21300000, 0.00000000, 36.42600000, 0.00000000, 19.22760000, 73.86660000, 0.00000000, 0.00000000, 0.00000000, 28.77000000, 0.00000000, 0.00000000, 458.57340000, 3, NULL, '2023-01-23 10:11:30', '2023-02-08 11:12:17'),
	(183, 11, 452.00000000, 30, 30, 452.00000000, 0.00000000, 3.43000000, 50.00000000, 0.00000000, 0.00000000, 0.00000000, 15.06000000, 36.39500000, 0.00000000, 30.00000000, 10.00100000, 61.45600000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 407.11400000, 3, NULL, '2023-01-23 10:11:30', '2023-02-08 11:12:17'),
	(184, 12, 368.00000000, 30, 30, 368.00000000, 0.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 347.57000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 46.79000000, 46.79000000, 0.00000000, 0.00000000, 0.00000000, 107.44000000, 0.00000000, 0.00000000, 772.79000000, 3, NULL, '2023-01-23 10:11:30', '2023-02-08 11:12:17'),
	(185, 13, 1250.00000000, 30, 30, 1250.00000000, 154.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 30.00000000, 90.62500000, 0.00000000, 0.00000000, 106.82700000, 227.45200000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 865.11800000, 3, NULL, '2023-01-23 10:11:30', '2023-02-08 11:12:17'),
	(186, 14, 400.00000000, 30, 30, 400.00000000, 87.00000000, 3.43000000, 0.00000000, 64.17000000, 0.00000000, 0.00000000, 12.00000000, 29.00000000, 0.00000000, 0.00000000, 9.59700000, 50.59700000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 323.14300000, 3, NULL, '2023-01-23 10:11:30', '2023-02-08 11:12:17'),
	(187, 15, 400.00000000, 30, 30, 400.00000000, 91.00000000, 3.43000000, 0.00000000, 70.83000000, 0.00000000, 0.00000000, 12.00000000, 29.00000000, 0.00000000, 0.00000000, 10.26300000, 51.26300000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 325.13700000, 3, NULL, '2023-01-23 10:11:30', '2023-02-08 11:12:17'),
	(188, 16, 1250.00000000, 30, 30, 1250.00000000, 228.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 216.67000000, 30.00000000, 106.33360000, 0.00000000, 0.00000000, 147.01930000, 283.35290000, 0.00000000, 0.00000000, 0.00000000, 10.00000000, 0.00000000, 0.00000000, 961.88710000, 3, NULL, '2023-01-23 10:11:30', '2023-02-08 11:12:17'),
	(189, 17, 400.00000000, 30, 30, 400.00000000, 193.00000000, 3.43000000, 0.00000000, 16.67000000, 0.00000000, 0.00000000, 0.00000000, 29.00000000, 0.00000000, 0.00000000, 0.00000000, 29.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 191.24000000, 3, NULL, '2023-01-23 10:11:30', '2023-02-08 11:12:17'),
	(190, 18, 500.00000000, 30, 30, 500.00000000, 123.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 15.00000000, 36.25000000, 0.00000000, 0.00000000, 0.00000000, 51.25000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 322.32000000, 3, NULL, '2023-01-23 10:11:30', '2023-02-08 11:12:17'),
	(191, 19, 1200.00000000, 30, 30, 1200.00000000, 454.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 30.00000000, 87.00000000, 0.00000000, 0.00000000, 97.55200000, 214.55200000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 528.01800000, 3, NULL, '2023-01-23 10:11:30', '2023-02-08 11:12:17'),
	(192, 20, 450.00000000, 30, 30, 450.00000000, 44.00000000, 3.43000000, 250.00000000, 0.00000000, 0.00000000, 0.00000000, 21.00000000, 50.75000000, 0.00000000, 0.00000000, 33.28500000, 105.03500000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 547.53500000, 3, NULL, '2023-01-23 10:11:30', '2023-02-08 11:12:17'),
	(193, 21, 400.00000000, 30, 30, 400.00000000, 0.00000000, 3.43000000, 0.00000000, 16.66000000, 0.00000000, 0.00000000, 12.00000000, 29.00000000, 0.00000000, 0.00000000, 0.00000000, 41.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 372.23000000, 3, NULL, '2023-01-23 10:11:30', '2023-02-08 11:12:17'),
	(194, 22, 0.00000000, 30, 0, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 3, NULL, '2023-01-23 10:11:30', '2023-02-08 11:12:17'),
	(195, 23, 210.00000000, 30, 7, 210.00000000, 88.00000000, 3.43000000, 0.00000000, 414.00000000, 0.00000000, 0.00000000, 6.30000000, 15.22500000, 0.00000000, 0.00000000, 60.97100000, 82.49600000, 0.00000000, 0.00000000, 25.00000000, 0.00000000, 0.00000000, 0.00000000, 425.07400000, 3, NULL, '2023-01-23 10:11:30', '2023-02-08 11:12:17'),
	(196, 24, 425.00000000, 30, 30, 425.00000000, 95.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 12.75000000, 30.81260000, 0.00000000, 0.00000000, 0.00000000, 43.56260000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 283.00760000, 3, NULL, '2023-01-23 10:11:30', '2023-02-08 11:12:17'),
	(197, 25, 425.00000000, 30, 30, 425.00000000, 134.00000000, 3.43000000, 250.00000000, 0.00000000, 0.00000000, 0.00000000, 20.25000000, 48.93760000, 0.00000000, 0.00000000, 31.04120000, 100.22880000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 437.34120000, 3, NULL, '2023-01-23 10:11:30', '2023-02-08 11:12:17'),
	(198, 26, 450.00000000, 30, 30, 450.00000000, 225.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 328.42000000, 23.35260000, 56.43550000, 0.00000000, 0.00000000, 39.81490000, 119.60290000, 0.00000000, 0.00000000, 0.00000000, 79.61000000, 0.00000000, 0.00000000, 509.99710000, 3, NULL, '2023-01-23 10:11:30', '2023-02-08 11:12:17'),
	(199, 27, 525.00000000, 30, 30, 525.00000000, 133.00000000, 3.43000000, 0.00000000, 0.00000000, 157.50000000, 0.00000000, 20.47500000, 49.48130000, 0.00000000, 0.00000000, 22.92500000, 92.88130000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 453.18880000, 3, NULL, '2023-01-23 10:11:30', '2023-02-08 11:12:17'),
	(200, 28, 425.00000000, 30, 30, 425.00000000, 73.00000000, 3.43000000, 50.00000000, 0.00000000, 0.00000000, 0.00000000, 14.25000000, 34.43760000, 0.00000000, 0.00000000, 0.00000000, 48.68760000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 349.88260000, 3, NULL, '2023-01-23 10:11:30', '2023-02-08 11:12:17'),
	(201, 29, 425.00000000, 30, 30, 425.00000000, 171.00000000, 3.43000000, 250.00000000, 0.00000000, 0.00000000, 0.00000000, 20.25000000, 48.93760000, 0.00000000, 0.00000000, 31.04120000, 100.22880000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 400.34120000, 3, NULL, '2023-01-23 10:11:30', '2023-02-08 11:12:17'),
	(202, 30, 650.00000000, 30, 30, 650.00000000, 110.00000000, 3.43000000, 0.00000000, 31.15000000, 0.00000000, 0.00000000, 19.50000000, 47.12500000, 0.00000000, 0.00000000, 31.91260000, 98.53760000, 0.00000000, 0.00000000, 0.00000000, 110.00000000, 0.00000000, 0.00000000, 579.18260000, 3, NULL, '2023-01-23 10:11:30', '2023-02-08 11:12:17'),
	(203, 31, 1500.00000000, 30, 30, 1500.00000000, 153.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 30.00000000, 108.75000000, 0.00000000, 0.00000000, 153.20200000, 291.95200000, 0.00000000, 0.00000000, 0.00000000, 60.00000000, 0.00000000, 0.00000000, 1111.61800000, 3, NULL, '2023-01-23 10:11:30', '2023-02-08 11:12:17'),
	(204, 32, 1800.00000000, 30, 30, 1800.00000000, 362.44000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 30.00000000, 130.50000000, 0.00000000, 0.00000000, 208.85200000, 369.35200000, 0.00000000, 0.00000000, 0.00000000, 60.00000000, 0.00000000, 0.00000000, 1124.77800000, 3, NULL, '2023-01-23 10:11:30', '2023-02-08 11:12:17'),
	(205, 33, 1100.00000000, 30, 30, 1100.00000000, 107.00000000, 3.43000000, 0.00000000, 0.00000000, 330.00000000, 0.00000000, 30.00000000, 103.67500000, 0.00000000, 0.00000000, 140.21700000, 273.89200000, 0.00000000, 0.00000000, 0.00000000, 16.00000000, 0.00000000, 0.00000000, 1061.67800000, 3, NULL, '2023-01-23 10:11:30', '2023-02-08 11:12:17'),
	(206, 34, 425.00000000, 30, 30, 425.00000000, 102.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 12.75000000, 30.81260000, 0.00000000, 0.00000000, 0.00000000, 43.56260000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 276.00760000, 3, NULL, '2023-01-23 10:11:30', '2023-02-08 11:12:17'),
	(207, 35, 450.00000000, 30, 30, 450.00000000, 193.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 13.50000000, 32.62500000, 0.00000000, 0.00000000, 0.00000000, 46.12500000, 0.00000000, 0.00000000, 0.00000000, 81.58000000, 0.00000000, 0.00000000, 289.02500000, 3, NULL, '2023-01-23 10:11:30', '2023-02-08 11:12:17'),
	(208, 36, 400.00000000, 30, 30, 400.00000000, 77.00000000, 3.43000000, 0.00000000, 38.33000000, 0.00000000, 0.00000000, 12.00000000, 29.00000000, 0.00000000, 0.00000000, 0.00000000, 41.00000000, 0.00000000, 62.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 254.90000000, 3, NULL, '2023-01-23 10:11:30', '2023-02-08 11:12:17'),
	(209, 37, 525.00000000, 30, 30, 525.00000000, 105.00000000, 3.43000000, 0.00000000, 18.59000000, 0.00000000, 0.00000000, 15.75000000, 38.06260000, 0.00000000, 0.00000000, 10.64840000, 64.46090000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 370.69920000, 3, NULL, '2023-01-23 10:11:30', '2023-02-08 11:12:17'),
	(210, 38, 400.00000000, 30, 30, 400.00000000, 141.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 12.00000000, 29.00000000, 0.00000000, 0.00000000, 0.00000000, 41.00000000, 0.00000000, 0.00000000, 0.00000000, 112.82000000, 0.00000000, 0.00000000, 327.39000000, 3, NULL, '2023-01-23 10:11:30', '2023-02-08 11:12:17'),
	(211, 39, 365.00000000, 30, 30, 365.00000000, 133.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 723.27000000, 29.99810000, 78.89960000, 0.00000000, 0.00000000, 103.99770000, 212.89540000, 0.00000000, 0.00000000, 0.00000000, 118.18000000, 0.00000000, 0.00000000, 857.12470000, 3, NULL, '2023-01-23 10:11:30', '2023-02-08 11:12:17'),
	(212, 40, 400.00000000, 30, 30, 400.00000000, 0.00000000, 3.43000000, 0.00000000, 64.17000000, 0.00000000, 0.00000000, 12.00000000, 29.00010000, 0.00000000, 0.00000000, 11.16760000, 52.16770000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 408.57240000, 3, NULL, '2023-01-23 10:11:30', '2023-02-08 11:12:17'),
	(213, 41, 365.00000000, 30, 30, 365.00000000, 76.00000000, 3.43000000, 0.00000000, 0.00000000, 109.50000000, 0.00000000, 14.23500000, 34.40130000, 0.00000000, 0.00000000, 11.43700000, 60.07330000, 0.00000000, 0.00000000, 0.00000000, 64.42000000, 0.00000000, 0.00000000, 399.41680000, 3, NULL, '2023-01-23 10:11:30', '2023-02-08 11:12:17'),
	(214, 42, 900.00000000, 30, 30, 900.00000000, 0.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 27.00000000, 65.25000000, 0.00000000, 0.00000000, 51.23500000, 143.48500000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 753.08500000, 3, NULL, '2023-01-23 10:11:30', '2023-02-08 11:12:17'),
	(215, 43, 400.00000000, 30, 30, 400.00000000, 130.00000000, 3.43000000, 0.00000000, 16.66000000, 120.00000000, 0.00000000, 15.60000000, 37.70000000, 0.00000000, 0.00000000, 15.61600000, 68.91600000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 334.31400000, 3, NULL, '2023-01-23 10:11:30', '2023-02-08 11:12:17'),
	(216, 44, 450.00000000, 30, 30, 450.00000000, 250.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 197.72000000, 19.43160000, 46.95970000, 0.00000000, 0.00000000, 23.16910000, 89.56040000, 0.00000000, 0.00000000, 0.00000000, 36.99000000, 0.00000000, 0.00000000, 341.71960000, 3, NULL, '2023-01-23 10:11:30', '2023-02-08 11:12:17'),
	(217, 45, 375.00000000, 30, 30, 375.00000000, 63.94000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 11.25000000, 27.18760000, 0.00000000, 0.00000000, 0.00000000, 38.43760000, 0.00000000, 0.00000000, 0.00000000, 96.70000000, 0.00000000, 0.00000000, 365.89260000, 3, NULL, '2023-01-23 10:11:30', '2023-02-08 11:12:17'),
	(218, 46, 700.00000000, 30, 30, 700.00000000, 44.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 216.67000000, 27.50010000, 66.45860000, 0.00000000, 0.00000000, 58.83580000, 152.79440000, 0.00000000, 0.00000000, 0.00000000, 22.00000000, 0.00000000, 0.00000000, 738.44560000, 3, NULL, '2023-01-23 10:11:30', '2023-02-08 11:12:17'),
	(219, 47, 400.00000000, 30, 30, 400.00000000, 0.00000000, 3.43000000, 0.00000000, 47.50000000, 0.00000000, 0.00000000, 12.00000000, 29.00010000, 0.00000000, 0.00000000, 9.50060000, 50.50070000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 393.56940000, 3, NULL, '2023-01-23 10:11:30', '2023-02-08 11:12:17'),
	(220, 48, 500.00000000, 30, 30, 500.00000000, 44.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 15.00000000, 36.25000000, 0.00000000, 0.00000000, 0.00000000, 51.25000000, 0.00000000, 0.00000000, 0.00000000, 138.30000000, 0.00000000, 0.00000000, 539.62000000, 3, NULL, '2023-01-23 10:11:30', '2023-02-08 11:12:17'),
	(221, 49, 450.00000000, 30, 30, 450.00000000, 44.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 152.34000000, 18.07020000, 43.66970000, 0.00000000, 0.00000000, 19.09630000, 80.83610000, 0.00000000, 0.00000000, 0.00000000, 126.79000000, 0.00000000, 0.00000000, 600.86390000, 3, NULL, '2023-01-23 10:11:30', '2023-02-08 11:12:17'),
	(222, 50, 2000.00000000, 30, 30, 2000.00000000, 0.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 145.00000000, 0.00000000, 0.00000000, 251.95200000, 396.95200000, 0.00000000, 0.00000000, 0.00000000, 60.00000000, 0.00000000, 0.00000000, 1659.61800000, 3, NULL, '2023-01-23 10:11:30', '2023-02-08 11:12:17'),
	(223, 51, 450.00000000, 30, 30, 450.00000000, 88.00000000, 3.43000000, 0.00000000, 23.44000000, 0.00000000, 0.00000000, 13.50000000, 32.62500000, 0.00000000, 0.00000000, 0.00000000, 46.12500000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 335.88500000, 3, NULL, '2023-01-23 10:11:30', '2023-02-08 11:12:17'),
	(224, 52, 400.00000000, 30, 30, 400.00000000, 0.00000000, 3.43000000, 0.00000000, 16.66000000, 0.00000000, 0.00000000, 12.00000000, 29.00000000, 0.00000000, 0.00000000, 0.00000000, 41.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 372.23000000, 3, NULL, '2023-01-23 10:11:30', '2023-02-08 11:12:17'),
	(225, 53, 500.00000000, 30, 30, 500.00000000, 149.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 15.00000000, 36.25000000, 0.00000000, 0.00000000, 0.00000000, 51.25000000, 0.00000000, 0.00000000, 0.00000000, 15.00000000, 0.00000000, 0.00000000, 311.32000000, 3, NULL, '2023-01-23 10:11:30', '2023-02-08 11:12:17'),
	(226, 54, 1200.00000000, 30, 30, 1200.00000000, 290.50000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 30.00000000, 87.00000000, 0.00000000, 0.00000000, 97.55200000, 214.55200000, 0.00000000, 0.00000000, 0.00000000, 60.00000000, 0.00000000, 0.00000000, 751.51800000, 3, NULL, '2023-01-23 10:11:30', '2023-02-08 11:12:17'),
	(227, 55, 375.00000000, 30, 30, 375.00000000, 44.00000000, 3.43000000, 50.00000000, 0.00000000, 0.00000000, 0.00000000, 12.75000000, 30.81260000, 0.00000000, 0.00000000, 0.00000000, 43.56260000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 334.00760000, 3, NULL, '2023-01-23 10:11:30', '2023-02-08 11:12:17'),
	(228, 56, 450.00000000, 30, 30, 450.00000000, 0.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 13.50000000, 32.62500000, 0.00000000, 0.00000000, 0.00000000, 46.12500000, 0.00000000, 0.00000000, 0.00000000, 83.80000000, 0.00000000, 0.00000000, 484.24500000, 3, NULL, '2023-01-23 10:11:30', '2023-02-08 11:12:17'),
	(229, 57, 550.00000000, 30, 30, 550.00000000, 0.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 16.50000000, 39.87500000, 0.00000000, 0.00000000, 19.82260000, 76.19760000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 470.37260000, 3, NULL, '2023-01-23 10:11:30', '2023-02-08 11:12:17'),
	(230, 58, 3500.00000000, 30, 30, 3500.00000000, 0.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 30.00000000, 253.75000000, 0.00000000, 0.00000000, 641.99900000, 925.74900000, 0.00000000, 0.00000000, 0.00000000, 100.00000000, 0.00000000, 0.00000000, 2670.82100000, 3, NULL, '2023-01-23 10:11:30', '2023-02-08 11:12:17'),
	(231, 59, 400.00000000, 30, 30, 400.00000000, 0.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 12.00000000, 29.00000000, 0.00000000, 0.00000000, 0.00000000, 41.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 355.57000000, 3, NULL, '2023-01-23 10:11:30', '2023-02-08 11:12:17'),
	(232, 60, 600.00000000, 30, 30, 600.00000000, 0.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 18.00000000, 43.50000000, 0.00000000, 0.00000000, 24.31000000, 85.81000000, 0.00000000, 0.00000000, 0.00000000, 38.63000000, 0.00000000, 0.00000000, 549.39000000, 3, NULL, '2023-01-23 10:11:30', '2023-02-08 11:12:17'),
	(233, 61, 700.00000000, 30, 30, 700.00000000, 0.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 21.00000000, 50.75000000, 0.00000000, 0.00000000, 33.28500000, 105.03500000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 591.53500000, 3, NULL, '2023-01-23 10:11:30', '2023-02-08 11:12:17'),
	(234, 62, 600.00000000, 30, 30, 600.00000000, 0.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 18.00000000, 43.50000000, 0.00000000, 0.00000000, 24.31000000, 85.81000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 510.76000000, 3, NULL, '2023-01-23 10:11:30', '2023-02-08 11:12:17'),
	(235, 63, 550.00000000, 30, 30, 550.00000000, 0.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 16.50000000, 39.87500000, 0.00000000, 0.00000000, 19.82260000, 76.19760000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 470.37260000, 3, NULL, '2023-01-23 10:11:30', '2023-02-08 11:12:17'),
	(236, 64, 500.00000000, 30, 30, 500.00000000, 0.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 15.00000000, 36.25000000, 0.00000000, 0.00000000, 0.00000000, 51.25000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 445.32000000, 3, NULL, '2023-01-23 10:11:30', '2023-02-08 11:12:17'),
	(237, 65, 375.00000000, 30, 30, 375.00000000, 0.00000000, 3.43000000, 50.00000000, 0.00000000, 0.00000000, 0.00000000, 12.75000000, 30.81260000, 0.00000000, 0.00000000, 0.00000000, 43.56260000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 378.00760000, 3, NULL, '2023-01-23 10:11:30', '2023-02-08 11:12:17'),
	(238, 66, 375.00000000, 30, 30, 375.00000000, 0.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 11.25000000, 27.18760000, 0.00000000, 0.00000000, 0.00000000, 38.43760000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 333.13260000, 3, NULL, '2023-01-23 10:11:30', '2023-02-08 11:12:17'),
	(239, 67, 1000.00000000, 30, 30, 1000.00000000, 0.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 30.00000000, 72.50000000, 0.00000000, 0.00000000, 60.45200000, 162.95200000, 0.00000000, 0.00000000, 0.00000000, 60.00000000, 0.00000000, 0.00000000, 893.61800000, 3, NULL, '2023-01-23 10:11:30', '2023-02-08 11:12:17'),
	(240, 68, 375.00000000, 30, 30, 375.00000000, 44.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 11.25000000, 27.18760000, 0.00000000, 0.00000000, 0.00000000, 38.43760000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 289.13260000, 3, NULL, '2023-01-23 10:11:30', '2023-02-08 11:12:17'),
	(241, 69, 500.00000000, 30, 30, 500.00000000, 0.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 15.00000000, 36.25000000, 0.00000000, 0.00000000, 0.00000000, 51.25000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 445.32000000, 3, NULL, '2023-01-23 10:11:30', '2023-02-08 11:12:17'),
	(242, 70, 400.00000000, 30, 30, 400.00000000, 60.82000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 12.00000000, 29.00000000, 0.00000000, 0.00000000, 0.00000000, 41.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 294.75000000, 3, NULL, '2023-01-23 10:11:30', '2023-02-08 11:12:17'),
	(243, 71, 350.00000000, 30, 28, 350.00000000, 0.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 10.50000000, 25.37510000, 0.00000000, 0.00000000, 0.00000000, 35.87510000, 0.00000000, 0.00000000, 0.00000000, 75.26000000, 0.00000000, 0.00000000, 385.95510000, 3, NULL, '2023-01-23 10:11:30', '2023-02-08 11:12:17'),
	(244, 72, 400.00000000, 30, 30, 400.00000000, 0.00000000, 3.43000000, 200.00000000, 0.00000000, 0.00000000, 0.00000000, 18.00000000, 43.50000000, 0.00000000, 0.00000000, 21.13000000, 82.63000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 513.94000000, 3, NULL, '2023-01-23 10:11:30', '2023-02-08 11:12:17'),
	(245, 73, 400.00000000, 30, 30, 400.00000000, 44.00000000, 3.43000000, 0.00000000, 16.66000000, 120.00000000, 0.00000000, 15.60000000, 0.00000000, 31.20000000, 0.00000000, 16.01600000, 62.81600000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 426.41400000, 3, NULL, '2023-01-23 10:11:30', '2023-02-08 11:12:17'),
	(246, 74, 400.00000000, 30, 30, 400.00000000, 0.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 12.00000000, 29.00000000, 0.00000000, 0.00000000, 0.00000000, 41.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 355.57000000, 3, NULL, '2023-01-23 10:11:30', '2023-02-08 11:12:17'),
	(247, 75, 225.00000000, 30, 18, 225.00000000, 0.00000000, 3.43000000, 50.00000000, 0.00000000, 0.00000000, 0.00000000, 8.25000000, 19.93760000, 0.00000000, 0.00000000, 0.00000000, 28.18760000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 243.38260000, 3, NULL, '2023-01-23 10:11:30', '2023-02-08 11:12:17'),
	(248, 76, 900.00000000, 30, 30, 900.00000000, 0.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 27.00000000, 65.25000000, 0.00000000, 0.00000000, 51.23500000, 143.48500000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 753.08500000, 3, NULL, '2023-01-23 10:11:30', '2023-02-08 11:12:17'),
	(249, 77, 400.00000000, 30, 30, 400.00000000, 22.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 12.00000000, 29.00000000, 0.00000000, 0.00000000, 0.00000000, 41.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 355.57000000, 3, NULL, '2023-01-23 10:11:30', '2023-02-08 11:12:17'),
	(250, 78, 450.00000000, 30, 30, 450.00000000, 0.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 434.17000000, 26.52510000, 64.10230000, 0.00000000, 0.00000000, 58.79700000, 149.42440000, 0.00000000, 0.00000000, 0.00000000, 106.99000000, 0.00000000, 0.00000000, 838.30560000, 3, NULL, '2023-01-23 10:11:30', '2023-02-08 11:12:17'),
	(251, 79, 1200.00000000, 30, 30, 1200.00000000, 0.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 30.00000000, 87.00000000, 0.00000000, 0.00000000, 97.55200000, 214.55200000, 0.00000000, 0.00000000, 0.00000000, 140.00000000, 0.00000000, 0.00000000, 1122.01800000, 3, NULL, '2023-01-23 10:11:30', '2023-02-08 11:12:17'),
	(252, 80, 1200.00000000, 30, 30, 1200.00000000, 0.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 30.00000000, 87.00000000, 0.00000000, 0.00000000, 97.55200000, 214.55200000, 0.00000000, 0.00000000, 0.00000000, 171.92000000, 0.00000000, 0.00000000, 1153.93800000, 3, NULL, '2023-01-23 10:11:30', '2023-02-08 11:12:17'),
	(253, 81, 550.00000000, 30, 30, 550.00000000, 0.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 216.67000000, 23.00010000, 55.58360000, 0.00000000, 0.00000000, 39.26870000, 117.85240000, 0.00000000, 0.00000000, 0.00000000, 22.00000000, 0.00000000, 0.00000000, 645.38770000, 3, NULL, '2023-01-23 10:11:30', '2023-02-08 11:12:17'),
	(254, 82, 900.00000000, 30, 30, 900.00000000, 86.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 65.25000000, 0.00000000, 0.00000000, 53.93500000, 119.18500000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 691.38500000, 3, NULL, '2023-01-23 10:11:30', '2023-02-08 11:12:17'),
	(255, 83, 400.00000000, 30, 30, 400.00000000, 44.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 12.00000000, 29.00000000, 0.00000000, 0.00000000, 0.00000000, 41.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 311.57000000, 3, NULL, '2023-01-23 10:11:30', '2023-02-08 11:12:17'),
	(256, 84, 400.00000000, 30, 30, 400.00000000, 0.00000000, 3.43000000, 0.00000000, 16.66000000, 0.00000000, 0.00000000, 12.00000000, 29.00000000, 0.00000000, 0.00000000, 0.00000000, 41.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 372.23000000, 3, NULL, '2023-01-23 10:11:30', '2023-02-08 11:12:17'),
	(257, 85, 400.00000000, 30, 30, 400.00000000, 72.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 12.00000000, 29.00000000, 0.00000000, 0.00000000, 0.00000000, 41.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 283.57000000, 3, NULL, '2023-01-23 10:11:30', '2023-02-08 11:12:17'),
	(258, 86, 1700.00000000, 30, 30, 1700.00000000, 0.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 30.00000000, 123.25000000, 0.00000000, 0.00000000, 190.30200000, 343.55200000, 0.00000000, 0.00000000, 0.00000000, 60.00000000, 0.00000000, 0.00000000, 1413.01800000, 3, NULL, '2023-01-23 10:11:30', '2023-02-08 11:12:17'),
	(259, 76, 900.00000000, 15, 15, 450.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 13.50000000, 32.62500000, 0.00000000, 0.00000000, 25.61750000, 71.74250000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 378.25750000, 2, NULL, '2023-01-24 11:08:28', '2023-02-08 09:58:34'),
	(260, 76, 900.00000000, 15, 15, 450.00000000, 0.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 13.50000000, 32.62500000, 0.00000000, 0.00000000, 25.61750000, 71.74250000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 374.82750000, 1, NULL, '2023-01-24 11:29:25', '2023-02-06 14:46:59'),
	(261, 88, 450.00000000, 15, 15, 225.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 6.75000000, 16.31250000, 0.00000000, 0.00000000, 0.00000000, 23.06250000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 201.93750000, 2, NULL, '2023-01-25 15:18:01', '2023-02-08 09:58:34'),
	(262, 89, 425.00000000, 15, 15, 212.50000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 6.37500000, 15.40630000, 0.00000000, 0.00000000, 0.00000000, 21.78130000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 190.71880000, 2, NULL, '2023-01-25 15:18:01', '2023-02-08 09:58:34'),
	(263, 103, 400.00000000, 15, 15, 200.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 6.00000000, 14.50000000, 0.00000000, 0.00000000, 0.00000000, 20.50000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 179.50000000, 2, NULL, '2023-01-25 15:18:01', '2023-02-08 09:58:34'),
	(264, 105, 375.00000000, 15, 15, 187.50000000, 38.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 5.62500000, 13.59380000, 0.00000000, 0.00000000, 0.00000000, 19.21880000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 130.28130000, 2, NULL, '2023-01-25 15:18:01', '2023-02-08 09:58:34'),
	(265, 90, 2000.00000000, 15, 15, 1000.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 18.00000000, 72.50000000, 0.00000000, 0.00000000, 122.37600000, 212.87600000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 787.12400000, 2, NULL, '2023-01-25 15:18:01', '2023-02-08 09:58:34'),
	(266, 104, 1800.00000000, 15, 15, 900.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 15.00000000, 65.25000000, 0.00000000, 0.00000000, 104.42600000, 184.67600000, 0.00000000, 0.00000000, 0.00000000, 70.00000000, 0.00000000, 0.00000000, 785.32400000, 2, NULL, '2023-01-25 15:18:01', '2023-02-08 09:58:34'),
	(267, 88, 450.00000000, 15, 15, 225.00000000, 0.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 6.75000000, 16.31250000, 0.00000000, 0.00000000, 0.00000000, 23.06250000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 198.50750000, 1, NULL, '2023-01-27 16:34:41', '2023-02-06 14:46:59'),
	(268, 89, 425.00000000, 15, 15, 212.50000000, 0.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 6.37500000, 15.40630000, 0.00000000, 0.00000000, 0.00000000, 21.78130000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 187.28880000, 1, NULL, '2023-01-27 16:34:41', '2023-02-06 14:46:59'),
	(269, 90, 2000.00000000, 15, 6, 400.00000000, 0.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 12.00000000, 29.00000000, 0.00000000, 0.00000000, 21.13000000, 62.13000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 334.44000000, 1, NULL, '2023-01-27 16:34:41', '2023-02-06 14:46:59'),
	(270, 103, 400.00000000, 15, 15, 200.00000000, 0.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 6.00000000, 14.50000000, 0.00000000, 0.00000000, 0.00000000, 20.50000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 176.07000000, 1, NULL, '2023-01-27 16:34:41', '2023-02-06 14:46:59'),
	(271, 104, 1800.00000000, 15, 15, 900.00000000, 0.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 15.00000000, 65.25000000, 0.00000000, 0.00000000, 104.42600000, 184.67600000, 0.00000000, 0.00000000, 0.00000000, 70.00000000, 0.00000000, 0.00000000, 781.89400000, 1, NULL, '2023-01-27 16:34:41', '2023-02-06 14:46:59'),
	(272, 105, 375.00000000, 15, 15, 187.50000000, 38.00000000, 3.43000000, 50.00000000, 0.00000000, 0.00000000, 0.00000000, 7.12500000, 17.21880000, 0.00000000, 0.00000000, 0.00000000, 24.34380000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 171.72630000, 1, NULL, '2023-01-27 16:34:41', '2023-02-06 14:46:59'),
	(273, 106, 550.00000000, 15, 15, 275.00000000, 0.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 8.25000000, 19.93750000, 0.00000000, 0.00000000, 9.91130000, 38.09880000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 233.47130000, 1, NULL, '2023-01-27 16:34:41', '2023-02-06 14:46:59'),
	(274, 106, 550.00000000, 15, 15, 275.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 8.25000000, 19.93750000, 0.00000000, 0.00000000, 9.91130000, 38.09880000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 236.90130000, 2, NULL, '2023-01-27 16:35:53', '2023-02-08 09:58:34'),
	(275, 107, 450.00000000, 15, 15, 225.00000000, 0.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 636.68000000, 25.85040000, 62.47180000, 0.00000000, 0.00000000, 95.14760000, 183.46980000, 0.00000000, 0.00000000, 0.00000000, 53.43000000, 0.00000000, 0.00000000, 728.21020000, 1, NULL, '2023-02-03 17:35:44', '2023-02-06 14:46:59'),
	(276, 87, 450.00000000, 15, 10, 150.00000000, 0.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 4.50000000, 10.87500000, 0.00000000, 0.00000000, 0.00000000, 15.37500000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 131.19500000, 2, NULL, '2023-02-07 17:24:22', '2023-02-08 09:58:34'),
	(277, 87, 150.00000000, 15, 10, 150.00000000, 0.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 4.50000000, 10.87500000, 0.00000000, 0.00000000, 0.00000000, 15.37500000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 131.19500000, 3, NULL, '2023-02-08 10:52:34', '2023-02-08 11:12:17'),
	(278, 88, 450.00000000, 30, 30, 450.00000000, 0.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 13.50000000, 32.62500000, 0.00000000, 0.00000000, 0.00000000, 46.12500000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 400.44500000, 3, NULL, '2023-02-08 10:52:34', '2023-02-08 11:12:17'),
	(279, 89, 425.00000000, 30, 30, 425.00000000, 0.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 12.75000000, 30.81260000, 0.00000000, 0.00000000, 0.00000000, 43.56260000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 378.00760000, 3, NULL, '2023-02-08 10:52:34', '2023-02-08 11:12:17'),
	(280, 90, 1400.00000000, 30, 21, 1400.00000000, 0.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 30.00000000, 101.50000000, 0.00000000, 0.00000000, 143.50600000, 275.00600000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 1121.56400000, 3, NULL, '2023-02-08 10:52:34', '2023-02-08 11:12:17'),
	(281, 103, 400.00000000, 30, 30, 400.00000000, 0.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 12.00000000, 29.00000000, 0.00000000, 0.00000000, 0.00000000, 41.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 355.57000000, 3, NULL, '2023-02-08 10:52:34', '2023-02-08 11:12:17'),
	(282, 104, 1800.00000000, 30, 30, 1800.00000000, 0.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 30.00000000, 130.50000000, 0.00000000, 0.00000000, 208.85200000, 369.35200000, 0.00000000, 0.00000000, 0.00000000, 140.00000000, 0.00000000, 0.00000000, 1567.21800000, 3, NULL, '2023-02-08 10:52:34', '2023-02-08 11:12:17'),
	(283, 105, 375.00000000, 30, 30, 375.00000000, 76.00000000, 3.43000000, 50.00000000, 0.00000000, 0.00000000, 0.00000000, 12.75000000, 30.81260000, 0.00000000, 0.00000000, 0.00000000, 43.56260000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 302.00760000, 3, NULL, '2023-02-08 10:52:34', '2023-02-08 11:12:17'),
	(284, 106, 550.00000000, 30, 30, 550.00000000, 0.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 16.50000000, 39.87500000, 0.00000000, 0.00000000, 19.82260000, 76.19760000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 470.37260000, 3, NULL, '2023-02-08 10:52:34', '2023-02-08 11:12:17'),
	(4263, 107, 450.00000000, 15, 15, 225.00000000, 0.00000000, 3.43000000, 0.00000000, 0.00000000, 0.00000000, 636.68000000, 25.85040000, 62.47180000, 0.00000000, 0.00000000, 95.14760000, 183.46980000, 0.00000000, 0.00000000, 0.00000000, 53.43000000, 0.00000000, 0.00000000, 728.21020000, 3, NULL, '2023-02-08 10:54:09', '2023-02-08 10:54:09'),
	(4264, 8, 420.00000000, 15, 15, 210.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 6.30000000, 15.22500000, 0.00000000, 0.00000000, 0.00000000, 21.52500000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 188.47500000, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4265, 10, 467.00000000, 15, 15, 233.50000000, 50.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 169.16000000, 12.07980000, 0.00000000, 24.15960000, 0.00000000, 21.87206000, 58.11146000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 294.54854000, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4266, 12, 368.00000000, 15, 15, 184.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 147.06000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 18.33600000, 18.33600000, 0.00000000, 0.00000000, 0.00000000, 46.00000000, 0.00000000, 0.00000000, 358.72400000, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4267, 14, 400.00000000, 15, 15, 200.00000000, 43.50000000, 0.00000000, 0.00000000, 35.00000000, 0.00000000, 0.00000000, 6.00000000, 14.50000000, 0.00000000, 0.00000000, 0.00000000, 20.50000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 171.00000000, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4268, 15, 400.00000000, 15, 15, 200.00000000, 45.50000000, 0.00000000, 0.00000000, 37.50000000, 0.00000000, 0.00000000, 6.00000000, 14.50000000, 0.00000000, 0.00000000, 0.00000000, 20.50000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 171.50000000, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4269, 17, 400.00000000, 15, 15, 200.00000000, 96.50000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 14.50000000, 0.00000000, 0.00000000, 0.00000000, 14.50000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 89.00000000, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4270, 18, 500.00000000, 15, 15, 250.00000000, 61.50000000, 0.00000000, 0.00000000, 15.00000000, 0.00000000, 0.00000000, 7.50000000, 18.12500000, 0.00000000, 0.00000000, 9.16750000, 34.79250000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 168.70750000, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4271, 21, 400.00000000, 15, 15, 200.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 6.00000000, 14.50000000, 0.00000000, 0.00000000, 0.00000000, 20.50000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 179.50000000, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4272, 22, 450.00000000, 15, 14, 210.00000000, 0.00000000, 0.00000000, 12.00000000, 0.00000000, 0.00000000, 0.00000000, 6.66000000, 16.09500000, 0.00000000, 0.00000000, 0.00000000, 22.75500000, 0.00000000, 0.00000000, 100.00000000, 0.00000000, 0.00000000, 0.00000000, 99.24500000, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4273, 24, 425.00000000, 15, 15, 212.50000000, 47.50000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 6.37500000, 15.40625000, 0.00000000, 0.00000000, 0.00000000, 21.78125000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 143.21875000, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4274, 26, 450.00000000, 15, 15, 225.00000000, 112.50000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 145.15000000, 11.10450000, 26.83587500, 0.00000000, 0.00000000, 18.45096250, 56.39133750, 0.00000000, 0.00000000, 0.00000000, 68.00000000, 0.00000000, 0.00000000, 269.25866250, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4275, 27, 525.00000000, 15, 15, 262.50000000, 66.50000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 7.87500000, 19.03125000, 0.00000000, 0.00000000, 0.00000000, 26.90625000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 169.09375000, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4276, 28, 425.00000000, 15, 15, 212.50000000, 36.50000000, 0.00000000, 50.00000000, 0.00000000, 0.00000000, 0.00000000, 7.87500000, 19.03125000, 0.00000000, 0.00000000, 0.00000000, 26.90625000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 199.09375000, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4277, 34, 425.00000000, 15, 15, 212.50000000, 37.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 6.37500000, 15.40625000, 0.00000000, 0.00000000, 0.00000000, 21.78125000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 153.71875000, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4278, 35, 450.00000000, 15, 15, 225.00000000, 96.50000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 6.75000000, 16.31250000, 0.00000000, 0.00000000, 0.00000000, 23.06250000, 0.00000000, 0.00000000, 0.00000000, 10.00000000, 0.00000000, 0.00000000, 115.43750000, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4279, 36, 400.00000000, 15, 15, 200.00000000, 38.50000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 6.00000000, 14.50000000, 0.00000000, 0.00000000, 0.00000000, 20.50000000, 0.00000000, 31.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 110.00000000, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4280, 38, 400.00000000, 15, 15, 200.00000000, 70.50000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 178.91000000, 11.36730000, 27.47097500, 0.00000000, 0.00000000, 19.23717250, 58.07544750, 0.00000000, 0.00000000, 0.00000000, 59.00000000, 0.00000000, 0.00000000, 309.33455250, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4281, 39, 365.00000000, 15, 15, 182.50000000, 66.50000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 5.47500000, 13.23125000, 0.00000000, 0.00000000, 0.00000000, 18.70625000, 0.00000000, 0.00000000, 0.00000000, 56.00000000, 0.00000000, 0.00000000, 153.29375000, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4282, 40, 400.00000000, 15, 15, 200.00000000, 0.00000000, 0.00000000, 0.00000000, 37.50000000, 0.00000000, 0.00000000, 6.00000000, 14.50000000, 0.00000000, 0.00000000, 0.00000000, 20.50000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 217.00000000, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4283, 41, 365.00000000, 15, 15, 182.50000000, 38.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 376.60000000, 16.77300000, 40.53475000, 0.00000000, 0.00000000, 40.83445000, 98.14220000, 0.00000000, 0.00000000, 0.00000000, 56.00000000, 0.00000000, 0.00000000, 478.95780000, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4284, 43, 400.00000000, 15, 15, 200.00000000, 65.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 6.00000000, 14.50000000, 0.00000000, 0.00000000, 0.00000000, 20.50000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 114.50000000, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4285, 44, 450.00000000, 15, 15, 225.00000000, 125.00000000, 0.00000000, 0.00000000, 0.00000000, 325.24800000, 0.00000000, 16.50744000, 39.89298000, 0.00000000, 0.00000000, 39.24551600, 95.64593600, 0.00000000, 0.00000000, 0.00000000, 33.00000000, 0.00000000, 0.00000000, 362.60206400, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4286, 45, 375.00000000, 15, 15, 187.50000000, 31.97000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 5.62500000, 13.59375000, 0.00000000, 0.00000000, 0.00000000, 19.21875000, 0.00000000, 0.00000000, 0.00000000, 40.00000000, 0.00000000, 0.00000000, 176.31125000, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4287, 47, 400.00000000, 15, 15, 200.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 6.00000000, 14.50000000, 0.00000000, 0.00000000, 0.00000000, 20.50000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 179.50000000, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4288, 48, 500.00000000, 15, 15, 250.00000000, 22.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 7.50000000, 18.12500000, 0.00000000, 0.00000000, 0.00000000, 25.62500000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 202.37500000, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4289, 49, 450.00000000, 15, 15, 225.00000000, 22.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 28.81000000, 7.61430000, 18.40122500, 0.00000000, 0.00000000, 0.00000000, 26.01552500, 0.00000000, 0.00000000, 0.00000000, 17.46000000, 0.00000000, 0.00000000, 223.25447500, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4290, 51, 450.00000000, 15, 15, 225.00000000, 44.00000000, 0.00000000, 0.00000000, 11.25000000, 135.00000000, 0.00000000, 10.80000000, 26.10000000, 0.00000000, 0.00000000, 18.66500000, 55.56500000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 271.68500000, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4291, 52, 400.00000000, 15, 15, 200.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 6.00000000, 14.50000000, 0.00000000, 0.00000000, 0.00000000, 20.50000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 179.50000000, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4292, 53, 500.00000000, 15, 15, 250.00000000, 74.50000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 7.50000000, 18.12500000, 0.00000000, 0.00000000, 0.00000000, 25.62500000, 0.00000000, 0.00000000, 0.00000000, 15.00000000, 0.00000000, 0.00000000, 164.87500000, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4293, 55, 375.00000000, 15, 15, 187.50000000, 37.00000000, 0.00000000, 50.00000000, 0.00000000, 157.50000000, 0.00000000, 11.85000000, 28.63750000, 0.00000000, 0.00000000, 20.68125000, 61.16875000, 0.00000000, 0.00000000, 20.00000000, 0.00000000, 0.00000000, 0.00000000, 276.83125000, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4294, 56, 450.00000000, 15, 15, 225.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 6.75000000, 16.31250000, 0.00000000, 0.00000000, 0.00000000, 23.06250000, 0.00000000, 0.00000000, 0.00000000, 23.00000000, 0.00000000, 0.00000000, 224.93750000, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4295, 59, 400.00000000, 15, 15, 200.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 6.00000000, 14.50000000, 0.00000000, 0.00000000, 0.00000000, 20.50000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 179.50000000, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4296, 64, 500.00000000, 15, 15, 250.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 7.50000000, 18.12500000, 0.00000000, 0.00000000, 0.00000000, 25.62500000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 224.37500000, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4297, 65, 375.00000000, 15, 15, 187.50000000, 0.00000000, 0.00000000, 50.00000000, 0.00000000, 0.00000000, 0.00000000, 7.12500000, 17.21875000, 0.00000000, 0.00000000, 0.00000000, 24.34375000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 213.15625000, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4298, 66, 375.00000000, 15, 15, 187.50000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 5.62500000, 13.59375000, 0.00000000, 0.00000000, 0.00000000, 19.21875000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 168.28125000, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4299, 68, 375.00000000, 15, 15, 187.50000000, 22.00000000, 0.00000000, 0.00000000, 0.00000000, 112.50000000, 0.00000000, 9.00000000, 21.75000000, 0.00000000, 0.00000000, 12.15500000, 42.90500000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 235.09500000, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4300, 69, 500.00000000, 15, 15, 250.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 150.00000000, 0.00000000, 12.00000000, 29.00000000, 0.00000000, 0.00000000, 21.13000000, 62.13000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 337.87000000, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4301, 70, 400.00000000, 15, 15, 200.00000000, 30.41000000, 0.00000000, 0.00000000, 5.00000000, 0.00000000, 0.00000000, 6.00000000, 14.50000000, 0.00000000, 0.00000000, 0.00000000, 20.50000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 154.09000000, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4302, 71, 375.00000000, 15, 15, 187.50000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 157.43000000, 10.34790000, 25.00742500, 0.00000000, 0.00000000, 16.18746750, 51.54279250, 0.00000000, 0.00000000, 0.00000000, 34.00000000, 0.00000000, 0.00000000, 327.38720750, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4303, 72, 400.00000000, 15, 15, 200.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 200.00000000, 12.00000000, 29.00000000, 0.00000000, 0.00000000, 21.13000000, 62.13000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 337.87000000, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4304, 73, 400.00000000, 15, 15, 200.00000000, 22.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 6.00000000, 0.00000000, 12.00000000, 0.00000000, 0.00000000, 18.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 160.00000000, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4305, 74, 400.00000000, 15, 15, 200.00000000, 15.50000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 6.00000000, 14.50000000, 0.00000000, 0.00000000, 0.00000000, 20.50000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 164.00000000, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4306, 75, 375.00000000, 15, 0, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4307, 77, 400.00000000, 15, 15, 200.00000000, 22.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 6.00000000, 14.50000000, 0.00000000, 0.00000000, 0.00000000, 20.50000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 157.50000000, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4308, 78, 450.00000000, 15, 15, 225.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 905.77000000, 30.00000000, 81.98082500, 0.00000000, 0.00000000, 144.23383500, 256.21466000, 0.00000000, 0.00000000, 0.00000000, 18.00000000, 0.00000000, 0.00000000, 892.55534000, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4309, 83, 400.00000000, 15, 15, 200.00000000, 22.00000000, 0.00000000, 0.00000000, 25.00000000, 120.00000000, 0.00000000, 9.60000000, 23.20000000, 0.00000000, 0.00000000, 16.45000000, 49.25000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 273.75000000, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4310, 84, 400.00000000, 15, 15, 200.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 120.00000000, 0.00000000, 9.60000000, 23.20000000, 0.00000000, 0.00000000, 13.95000000, 46.75000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 273.25000000, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4311, 85, 400.00000000, 15, 15, 200.00000000, 60.00000000, 0.00000000, 0.00000000, 0.00000000, 120.00000000, 0.00000000, 9.60000000, 23.20000000, 0.00000000, 0.00000000, 13.95000000, 46.75000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 213.25000000, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4312, 88, 450.00000000, 15, 15, 225.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 6.75000000, 16.31250000, 0.00000000, 0.00000000, 0.00000000, 23.06250000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 201.93750000, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4313, 89, 425.00000000, 15, 15, 212.50000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 6.37500000, 15.40625000, 0.00000000, 0.00000000, 0.00000000, 21.78125000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 190.71875000, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4314, 103, 400.00000000, 15, 15, 200.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 6.00000000, 14.50000000, 0.00000000, 0.00000000, 0.00000000, 20.50000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 179.50000000, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4315, 105, 375.00000000, 15, 15, 187.50000000, 38.00000000, 0.00000000, 50.00000000, 0.00000000, 0.00000000, 0.00000000, 7.12500000, 17.21875000, 0.00000000, 0.00000000, 0.00000000, 24.34375000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 175.15625000, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4316, 108, 600.00000000, 15, 13, 260.00000000, 0.00000000, 0.00000000, 0.00000000, 15.00000000, 0.00000000, 0.00000000, 7.80000000, 18.85000000, 0.00000000, 0.00000000, 10.06500000, 36.71500000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 238.28500000, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4317, 2, 783.00000000, 15, 15, 391.50000000, 126.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 122.64000000, 15.42420000, 37.27515000, 0.00000000, 0.00000000, 32.76413000, 85.46348000, 0.00000000, 0.00000000, 0.00000000, 29.00000000, 0.00000000, 0.00000000, 331.67652000, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4318, 3, 900.00000000, 15, 15, 450.00000000, 163.50000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 13.50000000, 32.62500000, 0.00000000, 0.00000000, 25.61750000, 71.74250000, 0.00000000, 0.00000000, 0.00000000, 30.00000000, 0.00000000, 0.00000000, 244.75750000, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4319, 4, 669.00000000, 15, 15, 334.50000000, 30.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 10.03500000, 24.25125000, 0.00000000, 0.00000000, 15.25137500, 49.53762500, 0.00000000, 13.31000000, 0.00000000, 56.00000000, 0.00000000, 0.00000000, 297.65237500, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4320, 5, 561.00000000, 15, 15, 280.50000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 8.41500000, 20.33625000, 0.00000000, 0.00000000, 10.40487500, 39.15612500, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 241.34387500, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4321, 9, 750.00000000, 15, 15, 375.00000000, 149.50000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 11.25000000, 27.18750000, 0.00000000, 0.00000000, 18.88625000, 57.32375000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 168.17625000, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4322, 20, 450.00000000, 15, 15, 225.00000000, 22.00000000, 0.00000000, 125.00000000, 0.00000000, 0.00000000, 0.00000000, 10.50000000, 25.37500000, 0.00000000, 0.00000000, 16.64250000, 52.51750000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 275.48250000, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4323, 25, 425.00000000, 15, 15, 212.50000000, 45.00000000, 0.00000000, 125.00000000, 0.00000000, 0.00000000, 0.00000000, 10.12500000, 24.46875000, 0.00000000, 0.00000000, 15.52062500, 50.11437500, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 1.98000000, 0.00000000, 244.36562500, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4324, 29, 425.00000000, 15, 15, 212.50000000, 85.50000000, 0.00000000, 125.00000000, 0.00000000, 0.00000000, 0.00000000, 10.12500000, 24.46875000, 0.00000000, 0.00000000, 15.52062500, 50.11437500, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 201.88562500, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4325, 30, 650.00000000, 15, 15, 325.00000000, 55.00000000, 0.00000000, 0.00000000, 13.54000000, 0.00000000, 0.00000000, 9.75000000, 23.56250000, 0.00000000, 0.00000000, 15.75275000, 49.06525000, 0.00000000, 0.00000000, 0.00000000, 36.67000000, 0.00000000, 0.00000000, 271.14475000, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4326, 37, 525.00000000, 15, 15, 262.50000000, 52.50000000, 0.00000000, 0.00000000, 13.13000000, 0.00000000, 0.00000000, 7.87500000, 19.03125000, 0.00000000, 0.00000000, 10.10237500, 37.00862500, 0.00000000, 0.00000000, 0.00000000, 5.00000000, 0.00000000, 0.00000000, 191.12137500, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4327, 42, 900.00000000, 15, 15, 450.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 13.50000000, 32.62500000, 0.00000000, 0.00000000, 25.61750000, 71.74250000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 378.25750000, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4328, 46, 700.00000000, 15, 15, 350.00000000, 22.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 100.00000000, 13.50000000, 32.62500000, 0.00000000, 0.00000000, 25.61750000, 71.74250000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 356.25750000, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4329, 57, 550.00000000, 15, 15, 275.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 8.25000000, 19.93750000, 0.00000000, 0.00000000, 9.91125000, 38.09875000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 236.90125000, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4330, 61, 700.00000000, 15, 15, 350.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 10.50000000, 25.37500000, 0.00000000, 0.00000000, 16.64250000, 52.51750000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 297.48250000, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4331, 62, 600.00000000, 15, 15, 300.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 9.00000000, 21.75000000, 0.00000000, 0.00000000, 12.15500000, 42.90500000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 257.09500000, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4332, 63, 550.00000000, 15, 15, 275.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 8.25000000, 19.93750000, 0.00000000, 0.00000000, 9.91125000, 38.09875000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 236.90125000, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4333, 76, 900.00000000, 15, 15, 450.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 13.50000000, 32.62500000, 0.00000000, 0.00000000, 25.61750000, 71.74250000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 378.25750000, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4334, 81, 550.00000000, 15, 15, 275.00000000, 22.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 100.00000000, 11.25000000, 27.18750000, 0.00000000, 0.00000000, 18.88625000, 57.32375000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 295.67625000, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4335, 82, 900.00000000, 15, 15, 450.00000000, 43.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 32.62500000, 0.00000000, 0.00000000, 26.96750000, 59.59250000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 347.40750000, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4336, 106, 550.00000000, 15, 15, 275.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 8.25000000, 19.93750000, 0.00000000, 0.00000000, 9.91125000, 38.09875000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 236.90125000, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4337, 109, 900.00000000, 15, 9, 270.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 8.10000000, 19.57500000, 0.00000000, 0.00000000, 9.46250000, 37.13750000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 232.86250000, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4338, 1, 2000.00000000, 15, 15, 1000.00000000, 307.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 30.00000000, 72.50000000, 0.00000000, 0.00000000, 119.97600000, 222.47600000, 0.00000000, 0.00000000, 0.00000000, 30.00000000, 0.00000000, 0.00000000, 500.52400000, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4339, 6, 1200.00000000, 15, 15, 600.00000000, 114.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 18.00000000, 43.50000000, 0.00000000, 0.00000000, 48.17600000, 109.67600000, 25.00000000, 0.00000000, 0.00000000, 41.00000000, 0.00000000, 0.00000000, 392.32400000, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4340, 7, 1250.00000000, 15, 15, 625.00000000, 99.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 18.75000000, 45.31250000, 0.00000000, 0.00000000, 52.66350000, 116.72600000, 0.00000000, 51.36000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 357.91400000, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4341, 13, 1250.00000000, 15, 15, 625.00000000, 77.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 18.75000000, 45.31250000, 0.00000000, 0.00000000, 52.66350000, 116.72600000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 431.27400000, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4342, 16, 1250.00000000, 15, 15, 625.00000000, 114.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 100.00000000, 21.75000000, 52.56250000, 0.00000000, 0.00000000, 70.61350000, 144.92600000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 466.07400000, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4343, 19, 1200.00000000, 15, 15, 600.00000000, 227.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 18.00000000, 43.50000000, 0.00000000, 0.00000000, 48.17600000, 109.67600000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 263.32400000, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4344, 23, 900.00000000, 15, 15, 450.00000000, 88.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 13.50000000, 32.62500000, 0.00000000, 0.00000000, 25.61750000, 71.74250000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 290.25750000, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4345, 31, 1500.00000000, 15, 15, 750.00000000, 76.50000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 22.50000000, 54.37500000, 0.00000000, 0.00000000, 75.10100000, 151.97600000, 0.00000000, 0.00000000, 0.00000000, 30.00000000, 0.00000000, 0.00000000, 551.52400000, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4346, 32, 1800.00000000, 15, 15, 900.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 27.00000000, 65.25000000, 0.00000000, 0.00000000, 102.02600000, 194.27600000, 0.00000000, 0.00000000, 0.00000000, 30.00000000, 0.00000000, 0.00000000, 735.72400000, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4347, 33, 1100.00000000, 15, 15, 550.00000000, 53.50000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 16.50000000, 39.87500000, 0.00000000, 0.00000000, 39.20100000, 95.57600000, 0.00000000, 0.00000000, 0.00000000, 11.33000000, 0.00000000, 0.00000000, 412.25400000, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4348, 50, 2000.00000000, 15, 15, 1000.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 72.50000000, 0.00000000, 0.00000000, 125.97600000, 198.47600000, 0.00000000, 0.00000000, 0.00000000, 30.00000000, 0.00000000, 0.00000000, 831.52400000, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4349, 54, 1200.00000000, 15, 15, 600.00000000, 148.50000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 18.00000000, 43.50000000, 0.00000000, 0.00000000, 48.17600000, 109.67600000, 0.00000000, 0.00000000, 0.00000000, 30.00000000, 0.00000000, 0.00000000, 371.82400000, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4350, 67, 1000.00000000, 15, 15, 500.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 15.00000000, 36.25000000, 0.00000000, 0.00000000, 30.22600000, 81.47600000, 0.00000000, 0.00000000, 0.00000000, 30.00000000, 0.00000000, 0.00000000, 448.52400000, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4351, 79, 1200.00000000, 15, 15, 600.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 18.00000000, 43.50000000, 0.00000000, 0.00000000, 48.17600000, 109.67600000, 0.00000000, 0.00000000, 0.00000000, 67.00000000, 0.00000000, 0.00000000, 557.32400000, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4352, 80, 1200.00000000, 15, 15, 600.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 18.00000000, 43.50000000, 0.00000000, 0.00000000, 48.17600000, 109.67600000, 0.00000000, 0.00000000, 0.00000000, 55.00000000, 0.00000000, 0.00000000, 545.32400000, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4353, 86, 1700.00000000, 15, 15, 850.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 25.50000000, 61.62500000, 0.00000000, 0.00000000, 93.05100000, 180.17600000, 0.00000000, 0.00000000, 0.00000000, 30.00000000, 0.00000000, 0.00000000, 699.82400000, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4354, 104, 1800.00000000, 15, 15, 900.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 27.00000000, 65.25000000, 0.00000000, 0.00000000, 102.02600000, 194.27600000, 0.00000000, 0.00000000, 0.00000000, 70.00000000, 0.00000000, 0.00000000, 775.72400000, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4355, 58, 3500.00000000, 15, 15, 1750.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 30.00000000, 126.87500000, 0.00000000, 0.00000000, 316.50250000, 473.37750000, 0.00000000, 0.00000000, 0.00000000, 50.00000000, 0.00000000, 0.00000000, 1326.62250000, 4, NULL, '2023-02-09 10:04:45', '2023-02-15 09:13:55'),
	(4356, 90, 2000.00000000, 15, 3, 200.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 6.00000000, 14.50000000, 0.00000000, 0.00000000, 0.00000000, 20.50000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 179.50000000, 4, NULL, '2023-02-13 09:30:21', '2023-02-13 09:30:33'),
	(4357, 60, 600.00000000, 15, 6, 120.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 3.60000000, 8.70000000, 0.00000000, 0.00000000, 0.00000000, 12.30000000, 0.00000000, 0.00000000, 0.00000000, 11.49000000, 0.00000000, 0.00000000, 119.19000000, 4, NULL, '2023-02-13 09:37:46', '2023-02-13 09:37:46'),
	(4358, 20, 0.00000000, NULL, NULL, 0.00000000, 0.00000000, 0.00000000, 125.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 9, NULL, NULL, NULL),
	(4359, 25, 0.00000000, NULL, NULL, 0.00000000, 0.00000000, 0.00000000, 125.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 9, NULL, NULL, NULL),
	(4360, 29, 0.00000000, NULL, NULL, 0.00000000, 0.00000000, 0.00000000, 125.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 9, NULL, NULL, NULL),
	(4361, 28, 0.00000000, NULL, NULL, 0.00000000, 0.00000000, 0.00000000, 50.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 9, NULL, NULL, NULL),
	(4362, 55, 0.00000000, NULL, NULL, 0.00000000, 0.00000000, 0.00000000, 50.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 9, NULL, NULL, NULL),
	(4363, 72, 0.00000000, NULL, NULL, 0.00000000, 0.00000000, 0.00000000, 300.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 9, NULL, NULL, NULL),
	(4364, 65, 0.00000000, NULL, NULL, 0.00000000, 0.00000000, 0.00000000, 50.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 9, NULL, NULL, NULL),
	(4365, 75, 0.00000000, NULL, NULL, 0.00000000, 0.00000000, 0.00000000, 50.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 9, NULL, NULL, NULL),
	(4366, 20, 0.00000000, NULL, NULL, 0.00000000, 0.00000000, 0.00000000, 125.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 7, NULL, NULL, NULL),
	(4367, 25, 0.00000000, NULL, NULL, 0.00000000, 0.00000000, 0.00000000, 125.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 7, NULL, NULL, NULL),
	(4368, 28, 0.00000000, NULL, NULL, 0.00000000, 0.00000000, 0.00000000, 50.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 7, NULL, NULL, NULL),
	(4369, 55, 0.00000000, NULL, NULL, 0.00000000, 0.00000000, 0.00000000, 50.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 7, NULL, NULL, NULL),
	(4370, 72, 0.00000000, NULL, NULL, 0.00000000, 0.00000000, 0.00000000, 200.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 7, NULL, NULL, NULL),
	(4371, 75, 0.00000000, NULL, NULL, 0.00000000, 0.00000000, 0.00000000, 50.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 7, NULL, NULL, NULL),
	(4372, 20, 0.00000000, NULL, NULL, 0.00000000, 0.00000000, 0.00000000, 125.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 13, NULL, NULL, NULL),
	(4373, 25, 0.00000000, NULL, NULL, 0.00000000, 0.00000000, 0.00000000, 125.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 13, NULL, NULL, NULL),
	(4374, 29, 0.00000000, NULL, NULL, 0.00000000, 0.00000000, 0.00000000, 125.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 13, NULL, NULL, NULL),
	(4375, 28, 0.00000000, NULL, NULL, 0.00000000, 0.00000000, 0.00000000, 50.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 13, NULL, NULL, NULL),
	(4376, 55, 0.00000000, NULL, NULL, 0.00000000, 0.00000000, 0.00000000, 50.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 13, NULL, NULL, NULL),
	(4377, 72, 0.00000000, NULL, NULL, 0.00000000, 0.00000000, 0.00000000, 200.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 13, NULL, NULL, NULL),
	(4378, 65, 0.00000000, NULL, NULL, 0.00000000, 0.00000000, 0.00000000, 50.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 13, NULL, NULL, NULL),
	(4379, 75, 0.00000000, NULL, NULL, 0.00000000, 0.00000000, 0.00000000, 50.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 13, NULL, NULL, NULL),
	(4380, 105, 0.00000000, NULL, NULL, 0.00000000, 0.00000000, 0.00000000, 50.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 13, NULL, NULL, NULL),
	(4381, 20, 0.00000000, NULL, NULL, 0.00000000, 0.00000000, 0.00000000, 125.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 11, NULL, NULL, NULL),
	(4382, 25, 0.00000000, NULL, NULL, 0.00000000, 0.00000000, 0.00000000, 125.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 11, NULL, NULL, NULL),
	(4383, 29, 0.00000000, NULL, NULL, 0.00000000, 0.00000000, 0.00000000, 125.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 11, NULL, NULL, NULL),
	(4384, 28, 0.00000000, NULL, NULL, 0.00000000, 0.00000000, 0.00000000, 50.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 11, NULL, NULL, NULL),
	(4385, 55, 0.00000000, NULL, NULL, 0.00000000, 0.00000000, 0.00000000, 50.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 11, NULL, NULL, NULL),
	(4386, 72, 0.00000000, NULL, NULL, 0.00000000, 0.00000000, 0.00000000, 300.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 11, NULL, NULL, NULL),
	(4387, 65, 0.00000000, NULL, NULL, 0.00000000, 0.00000000, 0.00000000, 50.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 11, NULL, NULL, NULL),
	(4388, 75, 0.00000000, NULL, NULL, 0.00000000, 0.00000000, 0.00000000, 50.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 11, NULL, NULL, NULL),
	(4389, 20, 0.00000000, NULL, NULL, 0.00000000, 0.00000000, 0.00000000, 125.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 10, NULL, NULL, NULL),
	(4390, 25, 0.00000000, NULL, NULL, 0.00000000, 0.00000000, 0.00000000, 125.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 10, NULL, NULL, NULL),
	(4391, 29, 0.00000000, NULL, NULL, 0.00000000, 0.00000000, 0.00000000, 125.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 10, NULL, NULL, NULL),
	(4392, 20, 0.00000000, NULL, NULL, 0.00000000, 0.00000000, 0.00000000, 125.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 8, NULL, NULL, NULL),
	(4393, 25, 0.00000000, NULL, NULL, 0.00000000, 0.00000000, 0.00000000, 125.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 8, NULL, NULL, NULL),
	(4394, 29, 0.00000000, NULL, NULL, 0.00000000, 0.00000000, 0.00000000, 125.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 8, NULL, NULL, NULL),
	(4395, 20, 0.00000000, NULL, NULL, 0.00000000, 0.00000000, 0.00000000, 125.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 14, NULL, NULL, NULL),
	(4396, 25, 0.00000000, NULL, NULL, 0.00000000, 0.00000000, 0.00000000, 125.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 14, NULL, NULL, NULL),
	(4397, 29, 0.00000000, NULL, NULL, 0.00000000, 0.00000000, 0.00000000, 125.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 14, NULL, NULL, NULL),
	(4398, 20, 0.00000000, NULL, NULL, 0.00000000, 0.00000000, 0.00000000, 125.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 12, NULL, NULL, NULL),
	(4399, 25, 0.00000000, NULL, NULL, 0.00000000, 0.00000000, 0.00000000, 125.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 12, NULL, NULL, NULL),
	(4400, 29, 0.00000000, NULL, NULL, 0.00000000, 0.00000000, 0.00000000, 125.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 12, NULL, NULL, NULL),
	(4401, 20, 0.00000000, NULL, NULL, 0.00000000, 0.00000000, 0.00000000, 125.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 6, NULL, NULL, NULL),
	(4402, 25, 0.00000000, NULL, NULL, 0.00000000, 0.00000000, 0.00000000, 125.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 6, NULL, NULL, NULL),
	(4403, 70, 0.00000000, NULL, NULL, 0.00000000, 0.00000000, 0.00000000, 16.67000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 6, NULL, NULL, NULL),
	(4404, 21, 0.00000000, NULL, NULL, 0.00000000, 0.00000000, 0.00000000, 33.33000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 5, NULL, NULL, NULL),
	(4405, 20, 0.00000000, NULL, NULL, 0.00000000, 0.00000000, 0.00000000, 125.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 5, NULL, NULL, NULL),
	(4406, 25, 0.00000000, NULL, NULL, 0.00000000, 0.00000000, 0.00000000, 125.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 5, NULL, NULL, NULL),
	(4407, 28, 0.00000000, NULL, NULL, 0.00000000, 0.00000000, 0.00000000, 50.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 5, NULL, NULL, NULL),
	(4408, 43, 0.00000000, NULL, NULL, 0.00000000, 0.00000000, 0.00000000, 33.33000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 5, NULL, NULL, NULL),
	(4409, 55, 0.00000000, NULL, NULL, 0.00000000, 0.00000000, 0.00000000, 50.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 5, NULL, NULL, NULL),
	(4410, 73, 0.00000000, NULL, NULL, 0.00000000, 0.00000000, 0.00000000, 16.67000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 5, NULL, NULL, NULL),
	(4411, 83, 0.00000000, NULL, NULL, 0.00000000, 0.00000000, 0.00000000, 53.17000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 5, NULL, NULL, NULL),
	(4412, 84, 0.00000000, NULL, NULL, 0.00000000, 0.00000000, 0.00000000, 33.33000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 5, NULL, NULL, NULL),
	(4413, 85, 0.00000000, NULL, NULL, 0.00000000, 0.00000000, 0.00000000, 16.67000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 5, NULL, NULL, NULL),
	(4414, 65, 0.00000000, NULL, NULL, 0.00000000, 0.00000000, 0.00000000, 50.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 5, NULL, NULL, NULL),
	(4415, 75, 0.00000000, NULL, NULL, 0.00000000, 0.00000000, 0.00000000, 50.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 5, NULL, NULL, NULL);

-- Volcando estructura para tabla planilla.tbl_detalle_planillas_ai
CREATE TABLE IF NOT EXISTS `tbl_detalle_planillas_ai` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id del registro',
  `id_empleado` int(11) DEFAULT NULL COMMENT 'ID del empleado',
  `fecha_corte` datetime DEFAULT NULL COMMENT 'Fecha corte del proceso se hara cada año es variable',
  `tiempo_lab_corte` decimal(20,8) DEFAULT '0.00000000' COMMENT 'la fraccion de tiempo laborado hasta la fecha corte',
  `Dias_laborados` int(11) DEFAULT NULL COMMENT 'Dias laborados del empleado hasta la fecha corte',
  `tiempo_laborado_Ltrs` varchar(200) COLLATE utf8mb4_spanish2_ci DEFAULT NULL COMMENT 'Dias laborados del empleado hasta la fecha corte en letras',
  `comision` decimal(20,8) DEFAULT '0.00000000' COMMENT 'Comisiones del empleado',
  `sueldo` decimal(20,8) DEFAULT '0.00000000' COMMENT 'El sueldo Liquido a pagar con todos y descuentos',
  `ingreso_ley` decimal(20,8) DEFAULT '0.00000000' COMMENT 'indemnizacion o aguinaldo segun ley',
  `ingreso_politica` decimal(20,8) DEFAULT '0.00000000' COMMENT 'aguinaldo segun ppolitica empresarial',
  `total_aguinaldo` decimal(20,8) DEFAULT '0.00000000' COMMENT 'total aguinaldo',
  `tope_ingreso` decimal(20,8) DEFAULT '0.00000000' COMMENT 'tope de indemnizacion o aguinaldo para sacar isr del residuo',
  `base_ingreso_isr` decimal(20,8) DEFAULT '0.00000000' COMMENT 'base de retencion de indemnizacon y aguinaldo para isr',
  `renta` decimal(20,8) DEFAULT '0.00000000' COMMENT 'Descuento de renta del empleado',
  `pgr` decimal(20,8) DEFAULT '0.00000000' COMMENT 'Procuraduría General de la República decuento',
  `total_descuentos` decimal(20,8) DEFAULT '0.00000000' COMMENT 'Total de descunetos del empleado',
  `liquido_Pagar` decimal(20,8) DEFAULT '0.00000000' COMMENT 'Total de descunetos del empleado',
  `id_planilla` int(11) DEFAULT NULL COMMENT 'ID de la planilla de indenizacion o aguinaldo',
  `created_at` datetime DEFAULT NULL COMMENT 'Campo para almacenar la hora y la fecha en que se inserto el registro',
  `updated_at` datetime DEFAULT NULL COMMENT 'Campo para almacenar la hora y la fecha en que se actualizo el registro',
  PRIMARY KEY (`id`),
  KEY `FK_planilla_detalle_planilla_AI` (`id_planilla`),
  CONSTRAINT `FK_planilla_detalle_planilla_AI` FOREIGN KEY (`id_planilla`) REFERENCES `tbl_planillas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- Volcando datos para la tabla planilla.tbl_detalle_planillas_ai: ~0 rows (aproximadamente)

-- Volcando estructura para tabla planilla.tbl_empleados
CREATE TABLE IF NOT EXISTS `tbl_empleados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num_cliente` varchar(25) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `nombres` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `apellidos` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `correo_institucional` text COLLATE utf8mb4_spanish2_ci,
  `correo_personal` text COLLATE utf8mb4_spanish2_ci,
  `telfijo` varchar(11) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `telfijo_per` varchar(11) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `celular` varchar(11) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `celular_per` varchar(11) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `direccion` text COLLATE utf8mb4_spanish2_ci,
  `dui` varchar(25) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `nit` varchar(25) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `num_isss` varchar(25) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `num_afp` varchar(25) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `num_ipsfa` varchar(25) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `sexo` enum('F','M','D') COLLATE utf8mb4_spanish2_ci NOT NULL,
  `fecha_ingreso` date NOT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `fecha_baja` date DEFAULT NULL,
  `estado` enum('A','I') COLLATE utf8mb4_spanish2_ci NOT NULL,
  `sueldo` decimal(10,2) NOT NULL,
  `id_agencia` int(11) DEFAULT NULL,
  `id_puesto` int(11) DEFAULT NULL,
  `id_cuenta` int(11) DEFAULT NULL,
  `fecha_expedicion` date DEFAULT NULL,
  `fecha_expiracion` date DEFAULT NULL,
  `lugar_expedicion` varchar(255) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `profesion` varchar(150) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `estado_civil` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `nacionalidad` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL COMMENT 'Campo para almacenar la hora y la fecha en que se inserto el registro',
  `updated_at` datetime DEFAULT NULL COMMENT 'Campo para almacenar la hora y la fecha en que se actualizo el registro',
  PRIMARY KEY (`id`),
  KEY `fk_tbl_empleados_tbl_agencias` (`id_agencia`),
  KEY `fk_tbl_empleados_tbl_puestos` (`id_puesto`),
  KEY `fk_tbl_empleados_tbl_cuentas` (`id_cuenta`),
  CONSTRAINT `fk_tbl_empleados_tbl_agencias` FOREIGN KEY (`id_agencia`) REFERENCES `tbl_agencias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_tbl_empleados_tbl_cuentas` FOREIGN KEY (`id_cuenta`) REFERENCES `tbl_cuentas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_tbl_empleados_tbl_puestos` FOREIGN KEY (`id_puesto`) REFERENCES `tbl_puestos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- Volcando datos para la tabla planilla.tbl_empleados: ~97 rows (aproximadamente)
INSERT INTO `tbl_empleados` (`id`, `num_cliente`, `nombres`, `apellidos`, `correo_institucional`, `correo_personal`, `telfijo`, `telfijo_per`, `celular`, `celular_per`, `direccion`, `dui`, `nit`, `num_isss`, `num_afp`, `num_ipsfa`, `sexo`, `fecha_ingreso`, `fecha_nacimiento`, `fecha_baja`, `estado`, `sueldo`, `id_agencia`, `id_puesto`, `id_cuenta`, `fecha_expedicion`, `fecha_expiracion`, `lugar_expedicion`, `edad`, `profesion`, `estado_civil`, `nacionalidad`, `created_at`, `updated_at`) VALUES
	(1, '996005', 'Mauricio Enrique', 'Ortiz ', NULL, 'mauenortizz@gmail.com', '2561-2300', NULL, '6200-4645', '7456-9068', 'Res. Los Tulipanes Pje Las Azucenas Casa #15-C', '02058988-8', '0814-240972-101-8', '891720886', '265642330008', NULL, 'M', '2015-10-26', '1972-09-24', NULL, 'A', 2000.00, 1, 39, 78, '2018-09-28', '2026-09-27', 'San Salvador,San Salvador', 50, 'Lic.(A) En Contaduria Publica', 'Soltero(A)', 'Salvadoreño', '2023-01-19 15:17:23', '2023-01-19 15:17:23'),
	(2, '996009', 'Maria De Los Angeles', 'Gomez De Hernandez', NULL, NULL, '2228-4611', '2288-8061', '6200-4663', '6200-4663', 'Col. Quezaltepec Pje. 5 Casa#23  Santa Tecla', '00059432-6', '0511-201267-002-7', '691670559', NULL, NULL, 'F', '1997-11-01', '1967-12-20', NULL, 'A', 783.00, 2, 31, 76, '2019-01-14', '2027-01-13', 'Antiguo Cuscatlan,La Libertad', 55, 'Empleado(A)', 'Casado(A)', 'Salvadoreña', '2023-01-19 15:17:23', '2023-01-19 15:17:23'),
	(3, '996030', 'Luz Maria', 'Machado De Aldana', NULL, 'consejo.administracion@acaces.com.sv', '2561-2303', NULL, NULL, '7308-3248', 'Urb. Villa Lourdes, Pje. 1 Pol. "L" Casa #29 .Lourdes.', '02448217-7', '0614-140475-108-0', '895753693', '274968140005', NULL, 'F', '2001-01-02', '1975-04-14', NULL, 'A', 900.00, 1, 25, 77, '2018-07-25', '2026-07-24', 'San Salvador,San Salvador', 48, 'Empleado(A)', 'Casado(A)', 'Salvadoreña', '2023-01-19 15:17:23', '2023-01-19 15:17:23'),
	(4, '996000', 'Pedro Antonio', 'Lopez Reyes', NULL, NULL, '2239-2300', NULL, NULL, '6200-4647', 'Com. Nueva Isarael, Sector Shell, Calle Ant. A Santa Tecla #20', '00329015-9', '0614-090267-101-1', '487671713', '245102510000', NULL, 'M', '1987-04-01', '1967-02-09', NULL, 'A', 669.00, 3, 43, 64, '2016-07-26', '2024-07-25', 'San Salvador,San Salvador', 56, 'Empleado(A)', 'Soltero(A)', 'Salvadoreño', '2023-01-19 15:17:23', '2023-01-19 15:17:23'),
	(5, '996003', 'Miguel Angel', 'Vaquerano Hernandez', NULL, NULL, '2561-2300', '2270-7131', NULL, '7332-7472', 'Col Minerva Barrio San Jacinto Cl Circunvalacion #1', '00340815-0', '1119-010257-101-6', '177575389', '208502160001', NULL, 'M', '1996-01-02', '1957-02-01', NULL, 'A', 561.00, 1, 1, 41, '2018-02-23', '2026-02-22', 'San Salvador,San Salvador', 66, 'Empleado(A)', 'Soltero(A)', 'Salvadoreño', '2023-01-19 15:17:23', '2023-01-19 15:17:23'),
	(6, '996121', 'Hazel Mariela', 'Chavez ', NULL, NULL, '2288-4542', NULL, NULL, '7308-8273', 'Residencial Versalles Pol #32 N° 58', '02902312-2', '0602-150485-103-5', '104854247', '311506610000', NULL, 'F', '2009-11-01', '1985-04-15', NULL, 'A', 1200.00, 2, 44, 82, '2018-07-19', '2026-07-18', 'San Salvador,San Salvador', 38, 'Empleado(A)', 'Soltero(A)', 'Salvadoreña', '2023-01-19 15:17:23', '2023-01-19 15:17:23'),
	(7, '996071', 'Jose Carlos', 'Arevalo Burgos', NULL, 'brad_gheb@hotmail.com', '2561-2300', '2288-9191', '6200-4667', NULL, 'Colonia Quezaltepec Pasaje #2 Casa #99', '02222888-6', '0502-151080-103-8', '198804891', '295072000003', NULL, 'M', '2004-03-01', '1980-10-15', NULL, 'A', 1250.00, 1, 45, 79, '2018-12-14', '2026-12-13', 'San Salvador,San Salvador', 42, 'Empleado(A)', 'Soltero(A)', 'Salvadoreño', '2023-01-19 15:17:23', '2023-01-19 15:17:23'),
	(8, '996115', 'Ilda Gladis', 'Juarez ', NULL, NULL, NULL, NULL, '6200-4651', '6060-4387', 'Lot. Brisas Del Mar', '03182644-7', '0815-221267-101-4', '108670265', '248266080005', NULL, 'F', '2008-08-01', '1967-12-22', NULL, 'A', 420.00, 1, 48, 42, '2017-01-13', '2024-05-12', 'Zacatecoluca,La Paz', 55, 'Oficios Domesticos', 'Soltero(A)', 'Salvadoreña', '2023-01-19 15:17:23', '2023-01-19 15:17:23'),
	(9, '996059', 'Maria Del Rosario', 'Ardon De Velasquez', NULL, NULL, '2561-2300', NULL, '6200-4665', '7085-0065', 'Resd.Bosques  De La Paz Polg 25 12 C.Pte.NO.3', '02753126-8', '0608-180871-102-0', '892712084', '261617210015', NULL, 'F', '2002-05-10', '1971-08-18', NULL, 'A', 750.00, 1, 13, 80, '2020-07-15', '2028-07-14', 'San Salvador,San Salvador', 52, 'Empleado(A)', 'Casado(A)', 'Salvadoreña', '2023-01-19 15:17:23', '2023-01-19 15:17:23'),
	(10, '996117', 'Oscar Luis', 'Lopez Esquivel', NULL, 'luis.esq975@gmail.com', '2261-2300', '2224-2378', '7319-4365', NULL, 'Col. Flor Blanca, Calle El Progreso #2740', '01574629-7', '0614-100875-111-5', '106750040', NULL, '75-94-0476', 'M', '2014-01-14', '1975-08-10', NULL, 'A', 467.00, 1, 54, 33, '2020-07-28', '2026-08-19', 'San Salvador,San Salvador', 48, 'Empleado(A)', 'Casado(A)', 'Salvadoreño', '2023-01-19 15:17:23', '2023-01-19 15:17:23'),
	(11, '996118', 'Astridd Celeste', 'Chavez Ayala', NULL, 'astridd_ayala@hotmail.com', '2561-2300', '2556-9156', NULL, '7068-4726', 'Bo. Lourdes Ote. 50 Av. Norte, Pol.1 Casa#12.', '00171831-3', '0614-070383-132-8', '103837307', '303806540009', NULL, 'F', '2008-12-01', '1983-03-07', NULL, 'I', 452.00, 1, 19, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-19 15:17:23', '2023-02-17 09:35:49'),
	(12, '996128', 'Jose Ernesto', 'Lopez Molina', NULL, NULL, '2239-2300', '2216-9036', '6200-4664', '7428-1243', 'Final Barrio El Rosario', '01405688-5', '0614-040765-109-8', '793650327', NULL, NULL, 'M', '2014-11-01', '1965-07-04', NULL, 'A', 368.00, 3, 43, 65, '2016-07-23', '2024-07-22', 'San Salvador,San Salvador', 58, 'Empleado(A)', 'Casado(A)', 'Salvadoreño', '2023-01-19 15:17:23', '2023-01-19 15:17:23'),
	(13, '996126', 'Reina Janett', 'Alfaro ', 'reina.alfaro@acaces.com.sv', NULL, '2561-2300', NULL, '6200-4649', '7398-7221', 'Res. Sta Alegria Pje 6 Pol G-4 #15', '02166145-5', '0614-251066-111-8', '195661156', '244036210004', NULL, 'F', '2010-06-01', '1966-10-25', NULL, 'A', 1250.00, 1, 34, 46, '2018-10-30', '2026-10-29', 'San Salvador,San Salvador', 56, 'Lic.(A) En Admon De Empresas', 'Casado(A)', 'Salvadoreña', '2023-01-19 15:17:23', '2023-01-19 15:17:23'),
	(14, '996137', 'Darwin Antonio', 'Aguilar Reyes', NULL, NULL, '2561-2300', NULL, NULL, '7979-3091', 'Canton El Conacaste, Caserio El Obraje.', '03722361-3', '0311-240487-102-5', '107877170', '318892430000', NULL, 'M', '2012-03-01', '1987-04-24', NULL, 'A', 400.00, 1, 50, 43, '2015-11-07', '2023-11-06', 'San Salvador,San Salvador', 36, 'Empleado(A)', 'Casado(A)', 'Salvadoreño', '2023-01-19 15:17:23', '2023-01-19 15:17:23'),
	(15, '996140', 'David Gregorio', 'Perez ', NULL, NULL, '2561-2300', NULL, NULL, '7354-6127', 'Col. El Porvenir Pje "A" #27', '03333204-6', '0614-120385-134-5', '106850046', '311161860003', NULL, 'M', '2012-05-02', '1985-03-12', NULL, 'A', 400.00, 1, 50, 44, '2018-04-03', '2026-04-02', 'San Salvador,San Salvador', 38, 'Estudiante', 'Soltero(A)', 'Salvadoreño', '2023-01-19 15:17:23', '2023-01-19 15:17:23'),
	(16, '996155', 'Digna Ahiza', 'Morataya De Henriquez', 'jf.roosevelt@acaces.com.sv', 'ahenriquez@hotmail.com', '2239-2300', NULL, '6200-4633', '7180-4220', 'Urbanizacion Valle De San Marcos Sda. 3 Pol. E #21', '01483906-3', '1123-060767-001-7', '486673052', '246577130002', NULL, 'F', '2013-07-01', '1967-07-06', NULL, 'A', 1250.00, 1, 22, 81, '2018-07-05', '2026-07-04', 'San Salvador,San Salvador', 56, 'Abogado(A)', 'Casado(A)', 'Salvadoreña', '2023-01-19 15:17:23', '2023-01-19 15:17:23'),
	(17, '996151', 'Carmen ', 'Martinez Garcia', NULL, NULL, '2561-2300', '2272-2842', NULL, '7194-5678', 'Col. Sn Antonio Cl Al Volcan #12', '00787972-7', '0504-300449-001-7', NULL, '180161800002', NULL, 'M', '2013-06-01', '1949-04-30', NULL, 'A', 400.00, 1, 1, 45, '2018-05-08', '2026-05-07', 'San Salvador,San Salvador', 74, 'Electricista', 'Casado(A)', 'Salvadoreño', '2023-01-19 15:17:23', '2023-01-19 15:17:23'),
	(18, '996161', 'Erika Rossana', 'Rosales De Guerrero', NULL, 'ertrejo@gmail.com', '2239-2300', '2557-1938', NULL, '7944-6521', 'Rpto. Los Santos 1, Pje. San Gregorio, Block "C" Casa #143', '02252383-8', '0614-061182-130-0', '102828115', '302598100000', NULL, 'F', '2014-03-01', '1982-11-06', NULL, 'A', 500.00, 3, 14, 72, '2016-06-08', '2024-06-07', 'San Salvador,San Salvador', 40, 'Empleado(A)', 'Casado(A)', 'Salvadoreña', '2023-01-19 15:17:23', '2023-01-19 15:17:23'),
	(19, '996179', 'Roberto Carlos', 'Vasquez Abarca', 'desarrollo@acaces.com.sv', 'robcar1992@hotmail.com', '2561-2300', '2220-3969', NULL, '7191-9556', 'Km 6 1/2 Clle Zacatecoluca Frente A Gas. Texaco N°492', '04718855-6', '0614-090992-113-7', '193922307', '338542120020', NULL, 'M', '2015-06-01', '1992-09-09', NULL, 'A', 1200.00, 1, 29, 1, '2018-11-28', '2026-11-27', 'San Salvador,San Salvador', 30, 'Estudiante', 'Soltero(A)', 'Salvadoreño', '2023-01-19 15:17:23', '2023-01-19 15:17:23'),
	(20, '996180', 'Adriana Briseida', 'Rojas Olivares', 'operadora.olimpica@acaces.com.sv', 'adriana_briseida@hotmail.com', '2561-2300', NULL, '6200-4662', '7848-0497', 'Col. Costa Rica, Rpto Los Lencas Pje Cachiquel #23', '04295961-9', '0702-090890-104-1', '109901893', '330927360026', NULL, 'F', '2015-07-01', '1990-08-09', NULL, 'A', 450.00, 1, 24, 5, '2021-11-05', '2029-11-04', 'San Salvador,San Salvador', 33, 'Empleado(A)', 'Soltero(A)', 'Salvadoreña', '2023-01-19 15:17:23', '2023-01-19 15:17:23'),
	(21, '996170', 'Victor Manuel', 'Campos Angel', NULL, NULL, '2561-2300', '2130-1312', NULL, '7954-5070', 'Lot. Miraflores Calle Los Girasoles Pol. 75 # 12 El Carmen', '00831268-9', '0819-090470-102-8', '493701316', '256651270000', NULL, 'M', '2014-08-01', '1970-04-09', NULL, 'A', 400.00, 1, 1, 47, '2018-01-05', '2026-01-04', 'San Salvador,San Salvador', 53, 'Empleado(A)', 'Casado(A)', 'Salvadoreño', '2023-01-19 15:17:23', '2023-01-19 15:17:23'),
	(22, '996187', 'Veronica Yaneth', 'Ramirez De Gil', 'agencia.roosevelt@acaces.com.sv', 'vyramirez1@gmail.com', '2239-2300', NULL, '7469-3551', '7989-9676', 'Lotif Providencia Ii Cto A Res La Gloria #2', '04577314-3', '1121-021291-102-6', '110911902', '335727950008', NULL, 'F', '2016-09-01', '1991-12-02', NULL, 'A', 450.00, 3, 14, 73, '2020-11-06', '2028-11-05', 'Mejicanos,San Salvador', 31, 'Empleado(A)', 'Casado(A)', 'Salvadoreña', '2023-01-19 15:17:23', '2023-01-19 15:17:23'),
	(23, '996208', 'Zuleyma Alejandra', 'Vasquez Cañas', 'educacion@acaces.com.sv', 'zuleyma182@gmail.com', '2561-2300', NULL, NULL, '7926-9254', 'Colonia Ferrocarril, Bulevar Venezuela 9 Av Sur #605', '04265669-3', '0614-081189-146-9', '111891267', '328187520006', NULL, 'F', '2018-07-02', '1989-11-08', NULL, 'A', 900.00, 1, 26, 83, '2021-12-06', '2029-12-05', 'San Salvador,San Salvador', 33, 'Lic.(A) En  Mercadotecnia Y Publicidad', 'Soltero(A)', 'Salvadoreña', '2023-01-19 15:17:23', '2023-01-19 15:17:23'),
	(24, '996209', 'Fatima Xiomara', 'Soto Cerna', NULL, NULL, '2561-2300', NULL, NULL, '7396-9930', 'Com Nueva Israel Cl Antga A Santa Tecla #39-D', '04151831-3', '0511-220288-103-4', '108881580', '321937740007', NULL, 'F', '2018-06-13', '1988-02-22', NULL, 'A', 425.00, 1, 17, 49, '2021-01-22', '2030-06-30', 'San Salvador,San Salvador', 35, 'Empleado(A)', 'Soltero(A)', 'Salvadoreña', '2023-01-19 15:17:23', '2023-01-19 15:17:23'),
	(25, '996192', 'Ana Ruth', 'Hernandez Ayala', NULL, 'anarherna@hotmail.com', '2239-2300', '2290-8540', NULL, '7792-6330', 'Reparto San Jose 2, Pje. 22. Bk. "J" Casa #164', '04122707-7', '0614-090789-122-2', '108893935', '326966640009', NULL, 'F', '2017-07-01', '1989-07-09', NULL, 'A', 425.00, 3, 24, 7, '2020-11-13', '2028-11-12', 'San Salvador,San Salvador', 34, 'Empleado(A)', 'Soltero(A)', 'Salvadoreña', '2023-01-19 15:17:23', '2023-01-19 15:17:23'),
	(26, '996197', 'Sandra Georgina', 'Perez Valle', NULL, 'georginavalle790@gmail.com', '2228-4611', NULL, NULL, '7672-2487', 'Res. Nvo Lourdes Pte Mega Manzana 1 Senda Los Pepetos Casa #5-C', '04398903-1', '0614-221290-108-4', '111903051', '332277780012', NULL, 'F', '2022-09-09', '1990-12-22', NULL, 'A', 450.00, 2, 31, 20, '2022-07-25', '2030-07-24', 'Nueva San Salvador,La Libertad', 32, 'Estudiante', 'Soltero(A)', 'Salvadoreña', '2023-01-19 15:17:23', '2023-01-19 15:17:23'),
	(27, '996199', 'Santos Daniel', 'Sibrian Campos', NULL, 'danielcampos0390@hotmail.com', '2239-2300', '2204-3067', NULL, '6185-7199', 'Pje. Campos Ramirez #2, Cton Y Cas. Chandanta.', '04150498-2', '0614-120989-142-0', '109893622', '327611910000', NULL, 'M', '2018-01-02', '1989-09-12', NULL, 'A', 525.00, 1, 33, 48, '2019-05-24', '2027-05-23', 'Mejicanos,San Salvador', 33, 'Empleado(A)', 'Casado(A)', 'Salvadoreño', '2023-01-19 15:17:23', '2023-01-19 15:17:23'),
	(28, '996205', 'Jose Leonardo', 'Barahona Hernandez', NULL, 'leonardob187@gmail.com', '2239-2300', NULL, NULL, '7005-7432', 'Col. Antekirta, Cond. Victorias Pje. G #211', '03651471-0', '1006-111286-101-4', '106868659', '317552340015', NULL, 'M', '2018-07-01', '1986-12-11', NULL, 'A', 425.00, 1, 19, 36, '2018-06-12', '2026-06-11', 'San Salvador,San Salvador', 36, 'Estudiante', 'Soltero(A)', 'Salvadoreño', '2023-01-19 15:17:23', '2023-01-19 15:17:23'),
	(29, '996194', 'Vicente Rodrigo', 'Perez Funes', 'cooperativacacesderl@gmail.com', 'rodrifunes@gmail.com', '2561-2300', NULL, NULL, '7624-9698', 'Res. San Antonio  Las Palmeras 10ª Av Nte Pje 21 #71', '04641112-6', '0614-300692-121-0', '195924592', '337832030003', NULL, 'M', '2017-10-01', '1992-06-30', NULL, 'A', 425.00, 2, 24, 86, '2018-07-03', '2026-07-02', 'Nueva San Salvador,La Libertad', 31, 'Tec. En Relaciones Publicas', 'Soltero(A)', 'Salvadoreño', '2023-01-19 15:17:23', '2023-01-19 15:17:23'),
	(30, '996193', 'Carlos Miguel', 'Aparicio Castillo', NULL, NULL, '2561-2300', NULL, '6200-4638', '7005-4770', 'Cton. Los Arenales, El Arenal', '04817746-9', '0308-070593-102-4', '117932658', '340941400004', NULL, 'M', '2015-05-23', '1993-05-07', NULL, 'A', 650.00, 1, 52, 53, '2020-01-13', '2028-01-12', 'San Salvador,San Salvador', 30, 'Empleado(A)', 'Soltero(A)', 'Salvadoreño', '2023-01-19 15:17:23', '2023-01-19 15:17:23'),
	(31, '996253', 'Blanca Estela', 'Castro De Cabrera', 'jefe.administracion@acaces.com.sv', 'estela.decabrera@yahoo.com', '2561-2300', NULL, NULL, '7308-9771', 'Col. Miralvalle, Av. Los Bambues, Casa #225', '00185473-7', '0811-220176-101-0', '198765831', '277796790027', NULL, 'F', '2019-11-19', '1976-01-22', NULL, 'A', 1500.00, 1, 35, 50, '2018-04-14', '2026-04-13', 'San Salvador,San Salvador', 47, 'Lic.(A) En Admon De Empresas', 'Casado(A)', 'Salvadoreña', '2023-01-19 15:17:23', '2023-01-19 15:17:23'),
	(32, '996258', 'Noe Jesus', 'Vasquez Flores', 'auditoria.interna@acaces.com.sv', 'noejvf@gmail.com', '2561-2300', '2294-3369', '7435-8534', '7874-1280', 'Rpto. Venecia I, Pje. Milan #37', '02012923-0', '0511-120980-108-0', '105803021', '294742550001', NULL, 'M', '2019-12-16', '1980-09-12', NULL, 'A', 1800.00, 1, 15, 84, '2018-01-16', '2026-01-15', 'San Salvador,San Salvador', 42, 'Lic.(A) En Contaduria Publica', 'Soltero(A)', 'Salvadoreño', '2023-01-19 15:17:23', '2023-01-19 15:17:23'),
	(33, '996259', 'Jessica Sugey', 'Chavez Rosales', NULL, '10jessy11@gmail.com', '2561-2300', NULL, NULL, '7986-6844', 'Res. Brisas Del Bosque, Senda 4 #126. Km 7 Tcal. Del Norte', '02287138-8', '0614-011079-121-4', '199798163', '291277100009', NULL, 'F', '2019-12-19', '1979-10-01', NULL, 'A', 1100.00, 1, 23, 85, '2018-12-14', '2026-12-13', 'Antiguo Cuscatlan,La Libertad', 43, 'Lic.(A) En Contaduria Publica', 'Soltero(A)', 'Salvadoreña', '2023-01-19 15:17:23', '2023-01-19 15:17:23'),
	(34, '996271', 'Jose Atilio', 'Garcia Hernandez', 'agarcia@acaces.com.sv', 'atgar003@gmail.com', '2561-2300', NULL, NULL, '7178-8663', 'Km. 6, Carret. A Planes De Renderos, Col. La Fuente, N° 1', '02866166-8', '0819-080379-102-6', '100792811', '289202240005', NULL, 'M', '2020-05-23', '1979-03-08', NULL, 'A', 425.00, 1, 10, 51, '2022-07-08', '2027-07-02', 'San Salvador,San Salvador', 44, 'Comerciante', 'Casado(A)', 'Salvadoreño', '2023-01-19 15:17:23', '2023-01-19 15:17:23'),
	(35, '996240', 'Nelson Eduardo', 'Menjivar Aparicio', NULL, 'nelson_yoshy@hotmail.com', '2561-2300', NULL, NULL, '7764-3878', 'Col. San Jose I, Calle Y Bk. 4 #17. Soyapango.', '04514530-8', '0614-120991-142-0', '117910925', '334911580006', NULL, 'M', '2019-06-10', '1991-09-12', NULL, 'A', 450.00, 1, 31, 34, '2020-10-29', '2028-10-28', 'San Salvador,San Salvador', 31, 'Estudiante', 'Soltero(A)', 'Salvadoreño', '2023-01-19 15:17:23', '2023-01-19 15:17:23'),
	(36, '996238', 'Jose Luis', 'Cortez Martinez', NULL, NULL, '2561-2300', NULL, '6436-2935', '6436-2935', 'Urb Campos Verdes Canton Lourdes Senda 14 Orte #14 Polg 32', '02006632-7', '0519-280981-101-2', '101814447', '298552530000', NULL, 'M', '2019-05-06', '1981-09-28', NULL, 'A', 400.00, 1, 1, 35, '2021-12-16', '2029-12-15', 'Nueva San Salvador,La Libertad', 41, 'Empleado(A)', 'Soltero(A)', 'Salvadoreño', '2023-01-19 15:17:23', '2023-01-19 15:17:23'),
	(37, '996242', 'Ronald Raul', 'Flores Navas', 'rflores@acaces.com.sv', 'ronaldflores94@outlook.es', '2561-2300', NULL, NULL, '7116-8219', 'Col. Bosques Del Rio, Pje 34, Gpo. 49 #34. Soyapango.', '04966236-0', '0614-110394-122-3', '119942081', '344022830000', NULL, 'M', '2019-06-20', '1994-03-11', NULL, 'A', 525.00, 1, 12, 52, '2020-03-11', '2028-03-10', 'San Salvador,San Salvador', 29, 'Empleado(A)', 'Soltero(A)', 'Salvadoreño', '2023-01-19 15:17:23', '2023-01-19 15:17:23'),
	(38, '996244', 'Norma Jaqueline', 'Orellana Vigil', NULL, 'njov2086@gmail.com', '2239-2300', '2292-5412', NULL, '7714-2034', 'Col. Sn Carlos I, Cl El Rincon, Pje. 3 #15 Ctn Plan Del Pino', '03544755-4', '0617-200586-101-0', '104863192', '315508020006', NULL, 'F', '2019-09-06', '1986-05-20', NULL, 'A', 400.00, 3, 43, 68, '2018-10-23', '2023-11-29', 'Soyapango,San Salvador', 37, 'Empleado(A)', 'Soltero(A)', 'Salvadoreña', '2023-01-19 15:17:23', '2023-01-19 15:17:23'),
	(39, '996256', 'Carlos Gilberto', 'Garcia Moreira', NULL, 'carlosgilbertogarciamoreira@gmail.com', '2561-2300', NULL, NULL, '7286-1837', 'Rpto. San Bartolo, Pol. 1, Pje. 4, Casa #92. Ilopango.', '00829758-8', '0501-060480-101-3', '196800058', '293152110001', NULL, 'M', '2019-12-05', '1980-04-06', NULL, 'A', 365.00, 3, 43, 66, '2019-01-08', '2027-01-07', 'Ilopango,San Salvador', 43, 'Empleado(A)', 'Soltero(A)', 'Salvadoreño', '2023-01-19 15:17:23', '2023-01-19 15:17:23'),
	(40, '996278', 'Irma Aracely', 'Crespin De Cruz', NULL, 'aracely.crespin1180@gmail.com', '2561-2300', NULL, NULL, '7823-7338', 'Res. Santisima Trinidad, Block H, Pje 12 #40', '00228786-0', '0614-261180-134-4', '106801311', '295496270009', NULL, 'F', '2020-09-16', '1980-11-26', NULL, 'A', 400.00, 1, 50, 59, '2019-03-02', '2027-03-01', 'San Salvador,San Salvador', 42, 'Empleado(A)', 'Casado(A)', 'Salvadoreña', '2023-01-19 15:17:23', '2023-01-19 15:17:23'),
	(41, '996223', 'Jose Martin', 'Cua ', NULL, NULL, '2239-2300', NULL, NULL, '7608-4408', 'Urbanizacion Cumbres De San Bartolo, Pje. 11, Bk. 30 Casa #32', '00618813-1', '0307-060373-101-7', '395735208', '267271860016', NULL, 'M', '2019-01-02', '1972-03-06', NULL, 'A', 365.00, 3, 43, 67, '2020-08-29', '2026-07-19', 'San Salvador,San Salvador', 51, 'Estudiante', 'Casado(A)', 'Salvadoreño', '2023-01-19 15:17:23', '2023-01-19 15:17:23'),
	(42, '996295', 'Blanca Olivia', 'Campos De Sevillano', NULL, 'blancasevillano@gmail.com', '2561-2300', NULL, NULL, '7318-6766', '2ª Cl Ote #30-A', '00955862-8', '0210-220382-102-0', '101822616', '300306520009', NULL, 'F', '2021-02-16', '1982-03-22', NULL, 'A', 900.00, 1, 2, 87, '2018-11-27', '2026-11-26', 'Mejicanos,San Salvador', 41, 'Lic.(A) Contador Publico Y Auditoria', 'Casado(A)', 'Salvadoreña', '2023-01-19 15:17:23', '2023-01-19 15:17:23'),
	(43, '996287', 'Jonathan Stanleyn', 'Fuentes Guzman', NULL, NULL, '2561-2300', NULL, '7956-0783', '7956-0783', 'Cnton El Rosario Clle A Sn Jose Guayabal Cas.Los Guzman', '05012590-7', '0709-190694-101-6', '114942304', '345022040025', NULL, 'M', '2021-01-04', '1994-06-19', NULL, 'A', 400.00, 1, 1, 55, '2016-05-18', '2024-05-17', 'Soyapango,San Salvador', 29, 'Estudiante', 'Soltero(A)', 'Salvadoreño', '2023-01-19 15:17:23', '2023-01-19 15:17:23'),
	(44, '996292', 'Kenia Emperatriz', 'Callejas ', NULL, 'kennycallejas123@gmail.com', '2561-2300', '2310-1251', NULL, '7245-0380', 'Res Villa Palmeras Cl Maquilishuat Pol 2 Casa #2', '03616817-9', '0614-310786-131-6', '111860143', '316226360002', NULL, 'F', '2021-02-01', '1986-07-31', NULL, 'A', 450.00, 1, 31, 37, '2018-09-25', '2026-09-24', 'Mejicanos,San Salvador', 37, 'Empleado(A)', 'Soltero(A)', 'Salvadoreña', '2023-01-19 15:17:23', '2023-01-19 15:17:23'),
	(45, '996310', 'Samuel Elias', 'Rivera Palacios', NULL, 'samuel240586@gmail.com', '2239-2300', NULL, NULL, '7464-5470', 'C. Urbanizacion Las Conchas Edf. A Apto 16', '03648902-0', '0614-240586-129-2', '107864656', '315542590007', NULL, 'M', '2021-09-16', '1986-05-24', NULL, 'A', 375.00, 3, 43, 69, '2020-03-12', '2024-01-05', 'San Salvador,San Salvador', 37, 'Bartender', 'Soltero(A)', 'Salvadoreño', '2023-01-19 15:17:23', '2023-01-19 15:17:23'),
	(46, '996306', 'Juan Antonio', 'Torres Quijano', NULL, 'quijanoj1608@gmail.com', '2561-2300', '2206-0642', NULL, '7854-1809', 'Col Y Cond Chavez Galeano Apto #25', '01700478-0', '0614-160883-124-4', '102834636', '305422800005', NULL, 'M', '2021-09-01', '1983-08-16', NULL, 'A', 700.00, 1, 20, 56, '2019-08-08', '2027-08-07', 'Mejicanos,San Salvador', 40, 'Lic.(A) En Ciencias Juridicas', 'Soltero(A)', 'Salvadoreño', '2023-01-19 15:17:23', '2023-01-19 15:17:23'),
	(47, '996312', 'Elba Rocio', 'Majano De Guevara', NULL, 'rociodeguevara5@yahoo.es', '2561-2300', NULL, NULL, '7127-3562', 'Bo San Miguelito 17 Cl Ote #10', '03536481-1', '0614-020586-132-5', '106865236', '315326380000', NULL, 'F', '2021-09-13', '1986-05-02', NULL, 'A', 400.00, 1, 50, 57, '2020-02-11', '2028-02-10', 'Mejicanos,San Salvador', 37, 'Empleado(A)', 'Casado(A)', 'Salvadoreña', '2023-01-19 15:17:23', '2023-01-19 15:17:23'),
	(48, '996313', 'Beatriz Graciela', 'Garcia Zepeda', NULL, 'bgarcia.z1106@gmail.com', '2561-2300', '2226-4752', NULL, '7111-2801', 'Res.Barcelona 3a Av. Nte #4-C', '04296239-5', '0614-110690-119-2', '113900953', '330336820008', NULL, 'F', '2021-09-16', '1990-06-11', NULL, 'A', 500.00, 1, 18, 10, '2017-12-08', '2024-12-08', 'San Salvador,San Salvador', 33, 'Estudiante', 'Soltero(A)', 'Salvadoreña', '2023-01-19 15:17:23', '2023-01-19 15:17:23'),
	(49, '996309', 'Miguel Angel', 'Velasquez Jimenez', NULL, 'miguelvj2014@hotmail.com', '2228-4611', NULL, NULL, '6197-5945', 'Col Guadalupe Calle Ppal Casa #6', '04673981-7', '0614-260588-145-0', '117880916', '322872080020', NULL, 'M', '2021-09-16', '1988-05-26', NULL, 'A', 450.00, 1, 31, 39, '2021-07-02', '2029-07-01', 'Apopa,San Salvador', 35, 'Empleado(A)', 'Soltero(A)', 'Salvadoreño', '2023-01-19 15:17:23', '2023-01-19 15:17:23'),
	(50, '996305', 'Blanca Elena', 'Contreras Benitez', 'gerencia.informatica@acaces.com.sv', NULL, '2561-2300', '2288-5445', '7469-8336', '6427-4416', 'Parque Res. Primavera 1 Senda Las Camelias Sur #42', '01705120-8', '0614-180861-012-1', NULL, '225095970005', NULL, 'F', '2021-08-23', '1961-08-18', NULL, 'A', 2000.00, 1, 36, 94, '2018-08-18', '2026-08-17', 'Antiguo Cuscatlan,La Libertad', 62, 'Lic.(A) En Computacion', 'Soltero(A)', 'Salvadoreña', '2023-01-19 15:17:23', '2023-01-19 15:17:23'),
	(51, '996294', 'Marcos Isaac', 'Belloso Trigueros', 'mbelloso@acaces.com.sv', 'mactrigueros69@gmail.com', NULL, NULL, NULL, '7702-8810', 'Av. Cuscatlan #820', '03671070-6', '0614-130187-118-4', '106875217', '317891908006', NULL, 'M', '2021-02-10', '1987-01-13', NULL, 'A', 450.00, 1, 32, 61, '2018-07-13', '2026-07-12', 'San Salvador,San Salvador', 36, 'Empleado(A)', 'Soltero(A)', 'Salvadoreño', '2023-01-19 15:17:23', '2023-01-19 15:17:23'),
	(52, '996300', 'Rigoberto ', 'Pascual Miranda', NULL, 'rigobertopascualm@gmail.com', '2561-2300', NULL, NULL, '6138-9891', 'Col. San Jose 2 Bk "I" Pje 21 #90', '01329702-2', '0610-240680-101-1', '101802490', '293942080016', NULL, 'M', '2021-11-16', '1980-06-24', NULL, 'A', 400.00, 1, 1, 60, '2021-01-29', '2026-09-20', 'Soyapango,San Salvador', 43, 'Empleado(A)', 'Soltero(A)', 'Salvadoreño', '2023-01-19 15:17:23', '2023-01-19 15:17:23'),
	(53, '996318', 'Monica Lourdes', 'Montoya Mejia', NULL, 'monicamontoya977@gmail.com', NULL, '2204-0658', NULL, '7464-7934', 'Res Villa Hermosa Pje 26 Pol 46 Casa 2', '05590649-7', '0614-110797-125-9', '297976291', '356207750002', NULL, 'F', '2021-11-16', '1997-07-11', NULL, 'A', 500.00, 1, 8, 92, '2021-02-23', '2021-02-23', 'Mejicanos,San Salvador', 26, 'Estudiante', 'Soltero(A)', 'Salvadoreña', '2023-01-19 15:17:23', '2023-01-19 15:17:23'),
	(54, '996315', 'Diana Liseth', 'Gochez De Paul', 'jf.operaciones@acaces.com.sv', 'dianagochezdepaul@gmail.com', '2561-2300', NULL, '7468-9661', '6006-8033', 'Urb. Jardines De La Hacienda Block "E" Pje 5 Sur #225', '03985240-0', '0501-200988-101-4', '106883884', '324046930000', NULL, 'F', '2021-10-16', '1988-09-20', NULL, 'A', 1200.00, 1, 46, 93, '2021-12-20', '2029-12-19', 'San Salvador,San Salvador', 34, 'Lic.(A) En Finanzas Empresariales', 'Soltero(A)', 'Salvadoreña', '2023-01-19 15:17:23', '2023-01-19 15:17:23'),
	(55, '996290', 'Katya Elizabeth', 'Portillo Guerra', NULL, NULL, '2561-2300', NULL, NULL, '6001-0654', 'Col. La Coruña Ii Pje 4 Casa #54', '03386755-4', '0614-281185-104-4', '104858690', NULL, NULL, 'F', '2021-02-01', '1985-11-28', NULL, 'A', 375.00, 1, 19, 75, '2018-12-07', '2026-12-06', 'San Salvador,San Salvador', 37, 'Empleado(A)', 'Soltero(A)', 'Salvadoreña', '2023-01-19 15:17:23', '2023-01-19 15:17:23'),
	(56, '996341', 'Franklin Alexander', 'Hernandez Gamez', NULL, 'alexgamezr98@gmail.com', '2561-2300', NULL, NULL, '7479-1604', 'Calle La Granjita Pje Primavera Final Casa #14 San Antonio Abad', '05682993-1', '05682993-1', '198982159', '358071590016', NULL, 'M', '2022-05-23', '1998-01-14', NULL, 'A', 450.00, 1, 31, 89, '2016-03-31', '2024-03-30', 'San Salvador,San Salvador', 25, 'Estudiante', 'Soltero(A)', 'Salvadoreño', '2023-01-19 15:17:23', '2023-01-19 15:17:23'),
	(57, '996338', 'Maria Elena', 'Landaverde Velasco', NULL, 'marialandaverde1993@gmail.com', '2561-2313', NULL, NULL, '7217-8086', 'Colonia Layco 17 Clle Poniente #231', '04878961-4', '04878961-4', '194932627', '343277330012', NULL, 'F', '2022-04-16', '1993-12-26', NULL, 'A', 550.00, 1, 51, 88, '2020-01-07', '2028-01-06', 'Apopa,San Salvador', 29, 'Estudiante', 'Soltero(A)', 'Salvadoreña', '2023-01-19 15:17:23', '2023-01-19 15:17:23'),
	(58, '996350', 'Jose Laminio', 'Hernandez Mejia', NULL, 'gerencia.general@acaces.com.sv', '2261-2300', '2520-4236', NULL, '7050-4057', 'Res. Florida 1 Cl Al Volcan Pol "A" #4', '00990079-4', '00990079-4', '105814779', '297062560004', NULL, 'M', '2022-07-11', '1981-05-02', NULL, 'A', 3500.00, 1, 40, 13, '2016-12-13', '2024-12-12', 'San Salvador,San Salvador', 42, 'Lic.(A) En Contaduria Publica', 'Casado(A)', 'Salvadoreño', '2023-01-19 15:17:23', '2023-01-19 15:17:23'),
	(59, '996352', 'Patricia Estefany', 'Salguero Ventura', 'AGENCIA.CENTRAL@ACACES.COM.SV', 'ventura.estefany1998@gmail.com', NULL, NULL, '6200-4662', '7968-7393', 'Colonia Lincol Pje #14 Casa #103', '05812519-7', '05812519-7', '100980851', '361517970007', NULL, 'F', '2022-07-25', '1998-12-24', NULL, 'A', 400.00, 2, 14, 14, '2020-11-05', '2025-01-02', 'San Salvador,San Salvador', 24, 'Empleado(A)', 'Soltero(A)', 'Salvadoreña', '2023-01-19 15:17:23', '2023-01-19 15:17:23'),
	(60, '996356', 'Glenda Elizabeth', 'Mancia Moreno', NULL, 'glenda.mancia@yahoo.com', NULL, '2508-1784', NULL, '7484-1374', 'Colonia El Pepeto Pje 1 Poligono L Casa #3', '05172852-0', '05172852-0', '114954294', '348426950003', NULL, 'F', '2022-08-24', '1995-05-25', NULL, 'I', 600.00, 1, 5, 28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-19 15:17:23', '2023-02-17 09:35:49'),
	(61, '996357', 'Karla Mercedes', 'Moran Godinez', NULL, 'karlamoran3030@gmail.com', '2561-2300', '7515-3877', NULL, '7515-3877', 'Urb. La Sabana Ii Pol 2 Senda 14', '00137160-8', '00137160-8', '107831087', '306627390007', NULL, 'F', '2022-08-24', '1983-12-14', NULL, 'A', 700.00, 1, 7, 12, '2018-08-15', '2026-08-14', 'San Salvador,San Salvador', 39, 'Abogado(A)', 'Soltero(A)', 'Salvadoreña', '2023-01-19 15:17:23', '2023-01-19 15:17:23'),
	(62, '996358', 'Fany Emperatriz', 'Hernandez Ochoa', NULL, 'fanyhernandez72@outlook.com', '2561-2300', '2557-2278', NULL, '7144-5336', 'Bo Paleca 2a Calle La Ronda #8', '01091894-6', '01091894-6', '198753560', '275237140006', NULL, 'F', '2022-08-24', '1975-05-11', NULL, 'A', 600.00, 1, 27, 21, '2018-06-23', '2026-06-22', 'Mejicanos,San Salvador', 48, 'Empleado(A)', 'Casado(A)', 'Salvadoreña', '2023-01-19 15:17:23', '2023-01-19 15:17:23'),
	(63, '996359', 'Katherine Brendali', 'Argueta Pineda', NULL, 'brendali3024argueta@gmail.com', '2561-2300', '7850-0631', NULL, '7850-0631', 'Urb. Las Margaritas Pje 7 Ote Pol G Casa #163', '04811954-2', '04811954-2', '111932705', '340876890001', NULL, 'F', '2022-08-26', '1993-04-30', NULL, 'A', 550.00, 1, 6, 24, '2019-12-14', '2027-12-13', 'Soyapango,San Salvador', 30, 'Empleado(A)', 'Soltero(A)', 'Salvadoreña', '2023-01-19 15:17:23', '2023-01-19 15:17:23'),
	(64, '996349', 'Christopher Alberto', 'Muñoz Reyes', NULL, 'christopherreyes456@gmail.com', '2561-2300', '2564-6625', '7739-3235', '7739-3235', 'Col. San Jose 2, Calle C, Bk. G, Casa #86', '06364784-5', '06364784-5', '122023847', '374082550004', NULL, 'M', '2022-06-23', '2002-06-03', NULL, 'A', 500.00, 1, 30, 31, '2020-08-02', '2028-08-01', 'Soyapango,San Salvador', 21, 'Estudiante', 'Soltero(A)', 'Salvadoreño', '2023-01-19 15:17:23', '2023-01-19 15:17:23'),
	(65, '996342', 'Priscila Magaly', 'Hernandez De Lizama', NULL, 'prisci092@gmail.com', '2561-2300', NULL, NULL, '7184-3282', 'Col Rubio Pje Campos #4-B', '05587128-6', '05587128-6', '297971469', '356827040009', NULL, 'F', '2022-06-01', '1997-09-11', NULL, 'A', 375.00, 3, 19, 16, '2022-04-04', '2030-04-03', 'San Salvador,San Salvador', 25, 'Empleado(A)', 'Casado(A)', 'Salvadoreña', '2023-01-19 15:17:23', '2023-01-19 15:17:23'),
	(66, '996343', 'Jacqueline Vanessa', 'Calderon Romero', NULL, NULL, '2239-2300', '2272-4359', NULL, '7690-1219', 'Com. Primavera Final Calle El Cubo #10', '06123843-8', '06123843-8', '200002024', '367566760008', NULL, 'F', '2022-06-01', '2000-08-20', NULL, 'A', 375.00, 3, 49, 30, '2020-03-05', '2026-10-30', 'Mejicanos,San Salvador', 23, 'Estudiante', 'Soltero(A)', 'Salvadoreña', '2023-01-19 15:17:23', '2023-01-19 15:17:23'),
	(67, '996351', 'Mirna Lisseth', 'Calderon Escamilla', NULL, 'lisseth_1304@hotmail.com', '2561-2300', NULL, NULL, '7526-8729', 'Residencial Villa Los Angeles Pje 1, 1ra Etapa Apartamento 7-B', '03876376-3', '03876376-3', '108885905', '321656920004', NULL, 'F', '2022-07-15', '1988-01-25', NULL, 'A', 1000.00, 1, 47, 9, '2019-05-15', '2027-05-14', 'Mejicanos,San Salvador', 35, 'Estudiante', 'Soltero(A)', 'Salvadoreña', '2023-01-19 15:17:23', '2023-01-19 15:17:23'),
	(68, '996326', 'Sofia Esther', 'Mulato Arriaga', NULL, 'sofiamulato123@gmail.com', '2561-2300', NULL, NULL, '7470-2714', 'Jose Manuel Enrique Araujo Apto Arce #2', '05195073-7', '0614-240195-138-6', '195950139', '347217240023', NULL, 'F', '2022-02-09', '1995-01-24', NULL, 'A', 375.00, 1, 49, 38, '2021-08-13', '2029-08-12', 'San Salvador,San Salvador', 28, 'Estudiante', 'Soltero(A)', 'Salvadoreña', '2023-01-19 15:17:23', '2023-01-19 15:17:23'),
	(69, '996327', 'Ana Alexandra', 'Angelino Ramos', NULL, 'alex|_angelino@hotmail.com', '2561-2300', '2291-05555', NULL, '7874-1266', 'Reparto San Fernando, Polg N #35', '05160512-0', '0614-160195-127-9', '195951078', '347136440000', NULL, 'F', '2022-02-09', '1995-01-16', NULL, 'A', 500.00, 1, 9, 6, '2021-07-03', '2029-07-02', 'Soyapango,San Salvador', 28, 'Empleado(A)', 'Soltero(A)', 'Salvadoreña', '2023-01-19 15:17:23', '2023-01-19 15:17:23'),
	(70, '996344', 'Carlos Roberto', 'Ramos Hernandez', NULL, NULL, '2561-2300', NULL, NULL, NULL, 'Calle Antigua Al Matazano #57', '01369025-4', '01369025-4', '293671929', '246702120005', NULL, 'M', '2022-06-01', '1967-07-19', NULL, 'A', 400.00, 1, 1, 27, '2018-08-22', '2026-08-21', 'Soyapango,San Salvador', 56, 'Empleado(A)', 'Soltero(A)', 'Salvadoreño', '2023-01-19 15:17:23', '2023-01-19 15:17:23'),
	(71, '996335', 'Jaime Alexander Gonzalo', 'Moran Perez', NULL, NULL, '2239-2300', NULL, NULL, NULL, 'Col. Bosques Del Matazano 3pje Los Amates #476', '02938852-2', '02938852-2', '987681287', '249982130017', NULL, 'M', '2022-04-05', '1968-06-11', NULL, 'A', 375.00, 3, 43, 71, '2021-11-12', '2027-05-15', 'San Salvador,San Salvador', 55, 'Empleado(A)', 'Casado(A)', 'Salvadoreño', '2023-01-19 15:17:23', '2023-01-19 15:17:23'),
	(72, '996336', 'Karla Yaneth', 'Beltran Ramirez', NULL, NULL, '2239-2300', NULL, NULL, NULL, 'Lot. Villa Mercedes Cl A Mariona Km 81/2 Lote 8 San Luis Mariona', '04730987-7', '04730987-7', '113921341', '339077290001', NULL, 'F', '2022-04-04', '1992-11-01', NULL, 'A', 400.00, 3, 42, 74, '2017-05-05', '2025-05-04', 'San Salvador,San Salvador', 30, 'Secretaria(O)', 'Soltero(A)', 'Salvadoreña', '2023-01-19 15:17:23', '2023-01-19 15:17:23'),
	(73, '996320', 'Juan Ramon', 'Valladares Trejo', NULL, 'juan.rvalladares83@gmail.com', NULL, NULL, '7448-8757', '7748-8757', 'Bo El Calvario Pje 1#16', '01315175-5', '0821-300883-102-8', '102834593', NULL, '83110019', 'M', '2022-01-03', '1983-08-30', NULL, 'A', 400.00, 1, 1, 58, '2019-01-08', '2027-01-07', 'San Salvador,San Salvador', 39, 'Empleado(A)', 'Casado(A)', 'Salvadoreño', '2023-01-19 15:17:23', '2023-01-19 15:17:23'),
	(74, '996346', 'Adela Marcela', 'Perez Melara', NULL, 'marze02963@gmail.com', '2239-2300', NULL, NULL, '7176-1985', 'Final Col. Escalon, Las Lajas Poniente Contiguo A Ex Pedrera', '05044948-2', '05044948-2', '112943170', '345867200004', NULL, 'F', '2022-06-16', '1994-09-11', NULL, 'A', 400.00, 3, 14, 4, '2021-02-02', '2029-02-01', 'San Salvador,San Salvador', 28, 'Empleado(A)', 'Soltero(A)', 'Salvadoreña', '2023-01-19 15:17:23', '2023-01-19 15:17:23'),
	(75, '996347', 'Edwin Geovanny', 'Orellana Escalante', NULL, 'geovann7escalante@gmail.com', '2561-2300', NULL, NULL, '7248-2077', 'Urb. Majucla, Pje. 3 N° 8', '04880446-4', '04880446-4', '212930453', '343082190006', NULL, 'M', '2022-06-23', '1993-12-07', NULL, 'A', 375.00, 1, 19, 32, '2018-01-24', '2024-06-20', 'San Salvador,San Salvador', 29, 'Empleado(A)', 'Soltero(A)', 'Salvadoreño', '2023-01-19 15:17:23', '2023-01-19 15:17:23'),
	(76, '996354', 'Dennis Alberto', 'Vasquez Murcia', NULL, 'dennismurcia9@gmail.com', '2561-2300', '7620-6627', NULL, '7620-6627', 'Barrio Paleca Segunda Calle La Ronda #22', '05733363-2', '05733363-2', '101981336', '359852290027', NULL, 'M', '2022-08-08', '1998-07-11', NULL, 'A', 900.00, 1, 29, 2, '2016-07-13', '2024-07-12', 'Apopa,San Salvador', 25, 'Estudiante', 'Soltero(A)', 'Salvadoreño', '2023-01-19 15:17:23', '2023-01-19 15:17:23'),
	(77, '996348', 'Valeria Alejandra', 'Lara Cruz', NULL, 'valerialcruz20@gmail.com', '2561-2300', '2100-4221', NULL, '7568-9310', 'Col. San Francisco Pje. 3 N° 23', '06077417-2', '06077417-2', '102000521', '367206780002', NULL, 'F', '2022-06-16', '2000-07-15', NULL, 'A', 400.00, 1, 14, 15, '2019-05-29', '2026-07-24', 'Mejicanos,San Salvador', 23, 'Estudiante', 'Soltero(A)', 'Salvadoreña', '2023-01-19 15:17:23', '2023-01-19 15:17:23'),
	(78, '996362', 'Miguel Angel', 'Romero Martinez', NULL, 'mromeromartinez@gmail.com', '2239-2300', NULL, NULL, '6109-6917', 'Col. Brisas Del Eden Casa #119', '02578286-3', '02578286-3', '094750204', '277252240000', NULL, 'M', '2022-09-12', '1975-11-29', NULL, 'A', 450.00, 3, 31, 25, '2019-06-21', '2027-06-20', 'Mejicanos,San Salvador', 47, 'Empleado(A)', 'Casado(A)', 'Salvadoreño', '2023-01-19 15:17:23', '2023-01-19 15:17:23'),
	(79, '996363', 'Douglas Roberto', 'Chacon Aguilar', NULL, 'achaconrdouglas@gmail.com', '2561-2300', NULL, NULL, '7989-7427', 'Urb. Sierra Morena 1° Etapa Pol 12 Pje 1 Pte #72', '03573033-9', '03573033-9', '105868758', '316031690000', NULL, 'M', '2022-09-12', '1986-07-12', NULL, 'A', 1200.00, 3, 44, 11, '2021-05-22', '2029-01-04', 'Soyapango,San Salvador', 37, 'Lic.(A) En Admon De Empresas', 'Casado(A)', 'Salvadoreño', '2023-01-19 15:17:23', '2023-01-19 15:17:23'),
	(80, '996364', 'Oscar Eduardo', 'Linares ', NULL, 'oslina17@gmail.com', '2561-2300', '2517-3898', NULL, '7165-5356', 'Final Paseo General Escalon Zona Norte #11 #95 El Carmen', '01130800-5', '01130800-5', '103813747', '299051870003', NULL, 'M', '2022-09-12', '1981-11-17', NULL, 'A', 1200.00, 1, 44, 91, '2014-10-06', '2022-10-05', 'San Salvador,San Salvador', 41, 'Empleado(A)', 'Casado(A)', 'Salvadoreño', '2023-01-19 15:17:23', '2023-01-19 15:17:23'),
	(81, '996339', 'Catherine Melissa', 'Lozano Salazar', NULL, 'melissalozanosalazar9@gmial.com', '2561-2300', '2563-6345', NULL, '6030-5239', 'Urb Quinta Lolita Senda 2 #31', '04964584-7', '04964584-7', '116945542', '343767830007', NULL, 'F', '2022-05-16', '1994-02-13', NULL, 'A', 550.00, 1, 21, 90, '2021-04-26', '2029-04-25', 'San Salvador,San Salvador', 29, 'Estudiante', 'Soltero(A)', 'Salvadoreña', '2023-01-19 15:17:23', '2023-01-19 15:17:23'),
	(82, '996331', 'Gilberto Antonio', 'Flores Jeorge', NULL, NULL, '2561-2300', NULL, NULL, '6192-4135', 'Res Altos De Santa Monica Pje 4 #48-E', '02674355-3', '02674355-3', NULL, '221792120005', NULL, 'M', '2022-03-18', '1960-09-22', NULL, 'A', 900.00, 3, 4, 70, '2018-09-19', '2026-09-18', 'Antiguo Cuscatlan,La Libertad', 62, 'Empleado(A)', 'Casado(A)', 'Salvadoreño', '2023-01-19 15:17:23', '2023-01-19 15:17:23'),
	(83, '996322', 'Krissia Carolina', 'Jacinto Castaneda', NULL, 'kricarojacinto@gmail.com', NULL, '2227-0289', NULL, '7853-6800', 'Col Las Arboledas Pje 4 Casa #22-G', '04671586-3', '0614-220892-146-1', '111926127', '338366830004', NULL, 'F', '2022-01-24', '1992-08-22', NULL, 'A', 400.00, 1, 14, 40, '2018-09-07', '2026-09-06', 'San Salvador,San Salvador', 31, 'Estudiante', 'Soltero(A)', 'Salvadoreña', '2023-01-19 15:17:23', '2023-01-19 15:17:23'),
	(84, '996324', 'Jose Antonio', 'Flores Reyes', NULL, NULL, NULL, NULL, NULL, '7139-0528', 'Cl El Carrizal San Ramon', '02163868-0', '0308-211078-101-3', '196783435', '287822900007', NULL, 'M', '2022-01-24', '1978-10-21', NULL, 'A', 400.00, 1, 1, 62, '2020-09-28', '2026-10-14', 'Sonsonate,Sonsonate', 44, 'Operario(A) Industrial', 'Soltero(A)', 'Salvadoreño', '2023-01-19 15:17:23', '2023-01-19 15:17:23'),
	(85, '996325', 'Oswaldo Neftali', 'Lemus ', NULL, 'lemus.osw10@gmail.com', NULL, NULL, NULL, '7855-4266', 'Bo San Jose 4ª Cl Ote Casa #11', '03886281-8', '0315-101287-101-4', '106878705', '321192180007', NULL, 'M', '2022-01-17', '1987-12-10', NULL, 'A', 400.00, 1, 1, 63, '2018-01-17', '2026-01-16', 'San Salvador,San Salvador', 35, 'Empleado(A)', 'Soltero(A)', 'Salvadoreño', '2023-01-19 15:17:23', '2023-01-19 15:17:23'),
	(86, '996369', 'Julio Cesar', 'Montes Dubon', 'jmontes@acaces.com.sv', 'montesdubon@gmail.com', NULL, '7844-7110', NULL, '7844-7110', 'Res Los Eliseos Pje 5, Pol "H" #5', '03584471-4', '03584471-4', '109861709', '316062300005', NULL, 'M', '2022-12-19', '1986-07-15', NULL, 'A', 1700.00, 1, 38, 26, '2015-11-09', '2023-11-08', 'San Salvador,San Salvador', 37, 'Estudiante', 'Soltero(A)', 'Salvadoreño', '2023-01-19 15:17:23', '2023-01-19 15:17:23'),
	(87, '996370', 'Diana Maria', 'Orellana ', NULL, 'dianaorellanaluna7@gmail.com', NULL, NULL, '7802-4723', '7481-4000', 'San Salvador, San Salvador', '04168387-5', '04168387-5', NULL, NULL, NULL, 'F', '2023-01-20', '1989-10-16', NULL, 'I', 450.00, 1, 31, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-24 10:27:39', '2023-02-17 09:35:49'),
	(88, '996373', 'Gabriela Alexandra', 'Salazar Chavez', NULL, NULL, NULL, NULL, NULL, NULL, 'Col.Buena Vista Pol.6 #21', '05310865-3', '05310865-3', '196950247', '350256210014', NULL, 'F', '2022-11-22', '1995-11-24', NULL, 'A', 450.00, 1, 16, 17, '2022-11-28', '2030-11-27', 'San Salvador,San Salvador', 27, 'Empleado(A)', 'Soltero(A)', 'Salvadoreña', '2023-01-24 15:52:14', '2023-01-24 15:52:14'),
	(89, '996372', 'Ana Cecilia', 'Gonzalez Carranza', NULL, NULL, NULL, NULL, NULL, NULL, 'Com.Las Margaritas Calle Al Volcan Sector 1 #48 -A', '04666425-8', '04666425-8', '110923261', '36886590009', NULL, 'F', '2022-11-17', '1992-03-07', NULL, 'I', 425.00, 1, 17, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-24 15:56:13', '2023-02-17 09:35:49'),
	(90, '996371', 'Raul Ernesto', 'Pineda Merino', NULL, NULL, NULL, NULL, NULL, NULL, 'Res.Las Acacias Prol.Alameda Juan Pablo Segundo Pje Aquino #21', '01077564-9', '01077564-9', '994672789', '247822660007', NULL, 'M', '2023-01-10', '1967-11-08', NULL, 'I', 2000.00, 1, 41, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-24 16:03:10', '2023-02-17 09:35:49'),
	(103, '996366', 'Elva Carolina', 'Aquino Garcia', NULL, NULL, NULL, NULL, NULL, NULL, 'Col.Grecia Pol 3 Lote 3-4', '05369516-3', '0612-010396-103-0', '115964720', '351237570000', NULL, 'F', '2022-10-31', '1996-03-01', NULL, 'A', 400.00, 2, 14, 23, '2019-01-15', '2027-01-14', 'Mejicanos,San Salvador', 27, 'Estudiante', 'Soltero(A)', 'Salvadoreña', '2023-01-24 16:32:48', '2023-01-24 16:32:48'),
	(104, '996368', 'Manuel Heriberto', 'Amaya Villegas', 'hamaya@acaces.com.sv', NULL, NULL, NULL, NULL, NULL, 'Col 14 De Julio Calle Los Almendros N° 21', '03650355-7', '03650355-7', '113861461', '314952020020', NULL, 'M', '2022-11-21', '1986-03-26', NULL, 'A', 1800.00, 1, 37, 22, '2020-02-17', '2028-02-16', NULL, 37, 'Empleado(A)', 'Casado(A)', 'Salvadoreño', '2023-01-24 16:32:48', '2023-01-24 16:32:48'),
	(105, '996367', 'Ricardo Antonio', 'Aguirre Velasquez', NULL, NULL, NULL, NULL, NULL, NULL, 'Soyapango , San Salvador', '04674095-7', '0614-150892-144-0', '111922650', '338292240006', NULL, 'M', '2022-10-31', '1992-08-15', NULL, 'A', 375.00, 2, 19, 29, '2022-09-08', '2030-09-07', 'San Salvador,San Salvador', 31, 'Empleado(A)', 'Soltero(A)', 'Salvadoreño', '2023-01-24 16:45:05', '2023-01-24 16:45:05'),
	(106, '996365', 'Josselin Xiomara', 'Quintanilla Guillen', 'cv.rh@acaces.com.sv', 'jguillen.xio17@gmail.com', NULL, NULL, '76953734', '72262893', 'Colonia Los Andes 7ª Etapa Calle Pte #138', '05305213-7', '05305213-7', '104951120', '349877830004', NULL, 'F', '2022-09-13', '1995-10-17', NULL, 'A', 550.00, 1, 11, 54, '2019-12-27', '2027-12-26', 'San Marcos,San Salvador', 27, 'Estudiante', 'Soltero(A)', 'Salvadoreña', '2023-01-26 15:10:59', '2023-01-26 15:10:59'),
	(107, '996328', 'Wilber Reydel', 'Rivas Matal', NULL, 'wrmatal@gmail.com', '2561-2300', NULL, NULL, '7894-2903', 'Col Alfaro Final 5a Av Nte #22', '04441788-3', '0604-120291-102-1', NULL, NULL, NULL, 'M', '2022-02-09', '1991-02-12', NULL, 'I', 450.00, 1, 31, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-03 17:05:48', '2023-02-08 10:57:12'),
	(108, '996374', 'Jonathan Ediberto', 'Santos Ramirez', NULL, 'jonathansantosg@gmail.com', '2561-2300', NULL, NULL, '7742-1606', 'Colonia , Santa Juanita Casa #8 Calle Ernesto Delgado Sobre Bulevar Constitucion', '04907219-1', '0710-090993-101-0', '118930508', '342192660011', NULL, 'M', '2023-02-02', '1993-09-09', NULL, 'A', 600.00, 1, 3, 96, '2022-09-02', '2030-09-01', 'San Salvador,San Salvador', 29, 'Lic.(A) En Admon De Empresas', 'Soltero(A)', 'Salvadoreño', '2023-02-09 09:27:16', '2023-02-09 09:27:16'),
	(109, '996375', 'Miguel Angel', 'Morales Polio', NULL, 'mikemoralesmamp@gmail.com', NULL, NULL, NULL, '6039-9537', 'Col Atlacatl Av.Noroña Pje Guajoyo #8-A', '02061656-2', '0607-090981-101-5', '106810805', '298362230020', NULL, 'M', '2023-02-06', '1981-09-09', NULL, 'A', 900.00, 3, 53, 95, '2021-09-01', '2029-08-31', 'Mejicanos,San Salvador', 41, 'Abogado(A)', 'Casado(A)', 'Salvadoreño', '2023-02-09 09:33:12', '2023-02-09 09:33:12');

-- Volcando estructura para tabla planilla.tbl_operaciones
CREATE TABLE IF NOT EXISTS `tbl_operaciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` text COLLATE utf8mb4_spanish2_ci,
  `desde` decimal(10,2) DEFAULT '0.00',
  `hasta` decimal(10,2) DEFAULT '0.00',
  `porcentaje_min` decimal(10,6) DEFAULT '0.000000',
  `porcentaje_max` decimal(10,6) DEFAULT '0.000000',
  `sobre_exceso` decimal(10,2) DEFAULT '0.00',
  `cuota` decimal(10,2) DEFAULT '0.00',
  `id_concepto` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL COMMENT 'Campo para almacenar la hora y la fecha en que se inserto el registro',
  `updated_at` datetime DEFAULT NULL COMMENT 'Campo para almacenar la hora y la fecha en que se actualizo el registro',
  PRIMARY KEY (`id`),
  KEY `fk_tbl_operaciones_tbl_conceptos` (`id_concepto`),
  CONSTRAINT `fk_tbl_operaciones_tbl_conceptos` FOREIGN KEY (`id_concepto`) REFERENCES `tbl_conceptos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- Volcando datos para la tabla planilla.tbl_operaciones: ~25 rows (aproximadamente)
INSERT INTO `tbl_operaciones` (`id`, `descripcion`, `desde`, `hasta`, `porcentaje_min`, `porcentaje_max`, `sobre_exceso`, `cuota`, `id_concepto`, `created_at`, `updated_at`) VALUES
	(1, '1 TRAMO RENTA', 0.00, 236.00, 0.000000, 0.000000, 0.00, 0.00, 1, NULL, NULL),
	(2, '2 TRAMO RENTA', 236.01, 447.62, 0.100000, 0.100000, 236.00, 8.83, 1, NULL, NULL),
	(3, '3 TRAMO RENTA', 447.63, 1019.05, 0.200000, 0.200000, 447.62, 30.00, 1, NULL, NULL),
	(4, '4 TRAMO RENTA', 1019.06, 1000000.00, 0.300000, 0.300000, 1019.05, 144.28, 1, NULL, NULL),
	(5, 'CRECER', 0.00, 1000000.00, 0.072500, 0.072500, 0.00, 0.00, 2, NULL, NULL),
	(7, 'ISSS', 0.00, 500.00, 0.030000, 0.030000, 0.00, 15.00, 4, NULL, NULL),
	(8, 'IPSFA', 0.00, 1000000.00, 0.060000, 0.060000, 0.00, 0.00, 5, NULL, NULL),
	(9, 'FOSAFI', 0.00, 1000000.00, 0.000000, 0.000000, 0.00, 15.00, 6, NULL, NULL),
	(10, 'VACACION LEY', 0.00, 0.00, 0.000000, 0.300000, 0.00, 0.00, 13, NULL, '2023-01-06 15:39:58'),
	(11, 'VACACION POLITICA', 0.00, 0.00, 0.000000, 0.200000, 0.00, 0.00, 14, NULL, NULL),
	(12, '1 TRAMO RENTA', 0.01, 472.00, 0.000000, 0.000000, 0.00, 0.00, 18, NULL, NULL),
	(13, '2 TRAMO RENTA', 472.01, 895.24, 0.100000, 1500.000000, 236.00, 8.83, 18, NULL, NULL),
	(14, '3 TRAMO RENTA', 895.25, 2038.10, 0.200000, 1500.000000, 447.62, 30.00, 18, NULL, NULL),
	(15, '4 TRAMO RENTA', 2038.11, 1000000.00, 0.300000, 1500.000000, 1019.05, 144.28, 18, NULL, NULL),
	(16, 'PGR-VARIOS', 0.00, 1000000.00, 0.300000, 0.300000, 0.00, 0.00, 19, '2023-01-13 17:09:42', '2023-01-13 17:09:58'),
	(17, '1 TRAMO AGUINALDO', 0.00, 179.00, 0.000000, 0.000000, 1500.00, 0.00, 20, NULL, NULL),
	(18, '2 TRAMO AGUINALDO', 180.00, 1095.00, 15.000000, 15.000000, 1500.00, 0.00, 20, NULL, NULL),
	(19, '3 TRAMO AGUINALDO', 1096.00, 3650.00, 19.000000, 19.000000, 1500.00, 0.00, 20, NULL, NULL),
	(20, '4 TRAMO AGUINALDO', 3651.00, 1000000.00, 21.000000, 21.000000, 1500.00, 0.00, 20, NULL, NULL),
	(25, 'INMDENIZACION PROPORCIONAL', 1.00, 364.00, 365.000000, 365.000000, 1460.00, 0.00, 22, NULL, NULL),
	(26, 'INMDENIZACION COMPLETA', 365.00, 1000000.00, 0.000000, 0.000000, 1460.00, 0.00, 22, NULL, NULL),
	(27, '1 TRAMO RECALCULO RENTA', 0.01, 2832.00, 0.000000, 0.000000, 0.00, 0.00, 24, NULL, NULL),
	(28, '2 TRAMO RECALCULO RENTA', 2832.01, 5371.44, 0.100000, 0.100000, 2832.00, 106.20, 24, NULL, NULL),
	(29, '3 TRAMO RECALCULO RENTA', 5371.45, 12228.60, 0.200000, 0.200000, 5371.44, 360.00, 24, NULL, NULL),
	(30, '4 TRAMO RECALCULO RENTA', 12228.61, 1000000.00, 0.300000, 0.300000, 12228.60, 1731.42, 24, NULL, NULL);

-- Volcando estructura para tabla planilla.tbl_permisos_usuarios
CREATE TABLE IF NOT EXISTS `tbl_permisos_usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) NOT NULL,
  `id_ruta` int(11) NOT NULL,
  `estado` enum('A','I') COLLATE utf8mb4_spanish2_ci NOT NULL DEFAULT 'A',
  `created_at` datetime DEFAULT NULL COMMENT 'Campo para almacenar la hora y la fecha en que se inserto el registro',
  `updated_at` datetime DEFAULT NULL COMMENT 'Campo para almacenar la hora y la fecha en que se actualizo el registro',
  PRIMARY KEY (`id`),
  KEY `fk_tbl_permisos_usuarios_tbl_usuarios` (`id_usuario`),
  KEY `fk_tbl_permisos_usuarios_tbl_rutas` (`id_ruta`),
  CONSTRAINT `fk_tbl_permisos_usuarios_tbl_rutas` FOREIGN KEY (`id_ruta`) REFERENCES `tbl_rutas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_tbl_permisos_usuarios_tbl_usuarios` FOREIGN KEY (`id_usuario`) REFERENCES `tbl_usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- Volcando datos para la tabla planilla.tbl_permisos_usuarios: ~27 rows (aproximadamente)
INSERT INTO `tbl_permisos_usuarios` (`id`, `id_usuario`, `id_ruta`, `estado`, `created_at`, `updated_at`) VALUES
	(1, 1, 1, 'A', '2023-01-05 14:10:06', '2023-01-05 14:10:07'),
	(2, 1, 2, 'A', '2023-01-05 14:10:19', '2023-01-11 17:30:19'),
	(3, 1, 3, 'A', '2023-01-05 14:10:28', '2023-01-05 14:10:28'),
	(4, 1, 4, 'A', '2023-01-05 14:10:35', '2023-01-05 14:10:36'),
	(5, 1, 5, 'A', '2023-01-05 14:10:44', '2023-01-05 14:10:45'),
	(6, 1, 6, 'A', '2023-01-05 14:15:14', '2023-01-05 14:15:14'),
	(7, 1, 7, 'A', '2023-01-05 14:15:23', '2023-01-05 14:15:23'),
	(8, 1, 8, 'A', '2023-01-05 14:15:32', '2023-01-09 17:53:28'),
	(9, 1, 9, 'A', '2023-01-05 14:15:50', '2023-01-05 14:15:50'),
	(10, 1, 10, 'A', '2023-01-06 11:29:36', '2023-01-06 11:29:36'),
	(11, 1, 11, 'A', '2023-01-06 11:29:50', '2023-01-06 11:29:50'),
	(12, 1, 12, 'A', '2023-01-06 11:29:58', '2023-01-06 11:29:58'),
	(13, 1, 13, 'A', '2023-01-11 17:21:12', '2023-01-11 17:21:12'),
	(14, 2, 12, 'A', '2023-01-12 14:52:46', '2023-01-12 14:52:46'),
	(15, 2, 13, 'A', '2023-01-12 14:52:57', '2023-01-12 14:52:57'),
	(16, 1, 15, 'A', '2023-01-16 11:49:56', '2023-01-16 11:49:56'),
	(17, 1, 14, 'A', '2023-01-16 11:50:07', '2023-01-16 11:50:07'),
	(18, 2, 8, 'A', '2023-01-24 14:55:34', '2023-01-24 14:55:34'),
	(19, 3, 13, 'A', '2023-02-02 11:36:08', '2023-02-02 11:36:08'),
	(20, 3, 15, 'A', '2023-02-02 11:36:27', '2023-02-02 11:36:27'),
	(21, 3, 14, 'A', '2023-02-02 11:36:39', '2023-02-02 11:36:39'),
	(22, 3, 8, 'A', '2023-02-02 11:40:25', '2023-02-02 11:40:25'),
	(23, 3, 6, 'A', '2023-02-02 11:40:47', '2023-02-02 11:40:47'),
	(24, 3, 12, 'A', '2023-02-02 11:41:15', '2023-02-02 11:41:15'),
	(25, 3, 16, 'A', '2023-02-02 14:55:46', '2023-02-02 14:55:46'),
	(26, 2, 16, 'A', '2023-02-02 14:55:55', '2023-02-02 14:55:55'),
	(27, 1, 16, 'A', '2023-02-02 14:56:08', '2023-02-02 14:56:08'),
	(28, 1, 17, 'A', '2023-02-07 09:37:46', '2023-02-07 09:37:46');

-- Volcando estructura para tabla planilla.tbl_planillas
CREATE TABLE IF NOT EXISTS `tbl_planillas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(25) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `f_inicio_planilla` date NOT NULL,
  `f_fin_planilla` date NOT NULL,
  `total_planilla` decimal(10,2) DEFAULT '0.00',
  `id_tipo_planilla` int(11) NOT NULL,
  `fecha_pago` date DEFAULT NULL,
  `correlativo_pago` varchar(10) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `estado` enum('A','P','I') COLLATE utf8mb4_spanish2_ci NOT NULL DEFAULT 'P',
  `created_at` datetime DEFAULT NULL COMMENT 'Campo para almacenar la hora y la fecha en que se inserto el registro',
  `updated_at` datetime DEFAULT NULL COMMENT 'Campo para almacenar la hora y la fecha en que se actualizo el registro',
  PRIMARY KEY (`id`),
  KEY `fk_tbl_tipo_planillas` (`id_tipo_planilla`),
  CONSTRAINT `fk_tbl_tipo_planillas` FOREIGN KEY (`id_tipo_planilla`) REFERENCES `tbl_tipo_planillas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- Volcando datos para la tabla planilla.tbl_planillas: ~14 rows (aproximadamente)
INSERT INTO `tbl_planillas` (`id`, `codigo`, `f_inicio_planilla`, `f_fin_planilla`, `total_planilla`, `id_tipo_planilla`, `fecha_pago`, `correlativo_pago`, `estado`, `created_at`, `updated_at`) VALUES
	(1, '2023-ENE-PQ-Q1', '2023-01-01', '2023-01-15', 28556.58, 1, '2023-01-14', NULL, 'A', '2023-01-10 15:57:50', '2023-02-06 16:48:35'),
	(2, '2023-ENE-PQ-Q2', '2023-01-16', '2023-01-31', 25537.40, 1, '2023-01-31', '', 'A', '2023-01-20 15:56:13', '2023-01-20 15:56:13'),
	(3, '2023-ENE-PM', '2023-01-01', '2023-01-31', 54093.98, 2, NULL, NULL, 'A', '2023-01-23 10:11:30', '2023-01-23 10:11:30'),
	(4, '2023-FE-PQ-Q1', '2023-02-01', '2023-02-15', 27691.19, 1, '2023-02-15', '00013', 'A', '2023-02-09 10:04:45', '2023-02-15 09:17:04'),
	(5, '2022-AGO-PQ-Q1', '2022-08-01', '2022-08-15', 0.00, 1, '2022-08-15', NULL, 'I', '2023-02-14 11:46:12', '2023-02-14 11:46:12'),
	(6, '2022-AGO-PQ-Q2', '2022-08-16', '2022-08-31', 0.00, 1, '2022-08-31', NULL, 'I', '2023-02-14 11:46:12', '2023-02-14 11:46:12'),
	(7, '2022-SEP-PQ-Q1', '2022-09-01', '2022-09-15', 0.00, 1, '2022-09-15', NULL, 'I', '2023-02-14 11:46:12', '2023-02-14 11:46:12'),
	(8, '2022-SEP-PQ-Q2', '2022-09-16', '2022-09-30', 0.00, 1, '2022-09-30', NULL, 'I', '2023-02-14 11:46:12', '2023-02-14 11:46:12'),
	(9, '2022-OCT-PQ-Q1', '2022-10-01', '2022-10-15', 0.00, 1, '2022-10-15', NULL, 'I', '2023-02-14 11:46:12', '2023-02-14 11:46:15'),
	(10, '2022-OCT-PQ-Q2', '2022-10-16', '2022-10-31', 0.00, 1, '2022-10-31', NULL, 'I', '2023-02-14 11:50:27', '2023-02-14 11:50:28'),
	(11, '2022-NOV-PQ-Q1', '2022-11-01', '2022-11-15', 0.00, 1, '2022-11-15', NULL, 'I', '2022-11-15 00:00:00', '2022-11-15 00:00:00'),
	(12, '2022-NOV-PQ-Q2', '2022-11-16', '2022-11-30', 0.00, 1, '2022-11-30', NULL, 'I', '2023-02-14 12:00:37', '2023-02-14 12:02:38'),
	(13, '2022-DIC-PQ-Q1', '2022-12-01', '2022-12-15', 0.00, 1, '2022-12-15', NULL, 'I', '2023-02-14 12:03:26', '2023-02-14 12:03:27'),
	(14, '2022-DIC-PQ-Q2', '2022-12-16', '2022-12-31', 0.00, 1, '2022-12-31', NULL, 'I', '2023-02-14 12:08:12', '2023-02-14 12:08:12');

-- Volcando estructura para tabla planilla.tbl_prestamos
CREATE TABLE IF NOT EXISTS `tbl_prestamos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num_cliente` varchar(25) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `num_prestamo` varchar(25) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `saldo_prestamo` decimal(10,2) DEFAULT NULL,
  `cuota_mensual` decimal(10,2) DEFAULT NULL,
  `cuota_quincena` decimal(10,2) DEFAULT NULL,
  `valor_descuento` decimal(10,2) DEFAULT NULL,
  `tipo_prestamo` enum('E','I') COLLATE utf8mb4_spanish2_ci NOT NULL DEFAULT 'I',
  `fecha_cancelado` datetime DEFAULT NULL,
  `estado` enum('A','I') COLLATE utf8mb4_spanish2_ci NOT NULL DEFAULT 'A',
  `created_at` datetime DEFAULT NULL COMMENT 'Campo para almacenar la hora y la fecha en que se inserto el registro',
  `updated_at` datetime DEFAULT NULL COMMENT 'Campo para almacenar la hora y la fecha en que se actualizo el registro',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- Volcando datos para la tabla planilla.tbl_prestamos: ~80 rows (aproximadamente)
INSERT INTO `tbl_prestamos` (`id`, `num_cliente`, `num_prestamo`, `saldo_prestamo`, `cuota_mensual`, `cuota_quincena`, `valor_descuento`, `tipo_prestamo`, `fecha_cancelado`, `estado`, `created_at`, `updated_at`) VALUES
	(1, '996005', '001-55-000511', 32575.10, 308.00, 154.00, 154.00, 'I', NULL, 'A', NULL, NULL),
	(2, '996005', '001-57-000829', 158.38, 23.00, 11.50, 11.50, 'I', NULL, 'A', NULL, NULL),
	(3, '996005', '001-55-000558', 55836.13, 566.00, 283.00, 141.50, 'I', NULL, 'A', NULL, '2023-02-02 12:02:39'),
	(4, '996009', '001-55-000170', 18151.22, 252.00, 126.00, 126.00, 'I', NULL, 'A', NULL, NULL),
	(5, '996030', '001-55-000569', 48870.20, 544.00, 272.00, 163.50, 'I', NULL, 'A', NULL, '2023-02-02 12:03:33'),
	(6, '996000', '001-57-000739', 284.98, 60.00, 30.00, 30.00, 'I', NULL, 'A', NULL, NULL),
	(7, '996121', '001-55-000565', 24433.83, 228.00, 114.00, 114.00, 'I', NULL, 'A', NULL, NULL),
	(8, '996071', '003-57-000671', 4523.03, 130.00, 65.00, 65.00, 'I', NULL, 'A', NULL, NULL),
	(9, '996071', '001-57-000827', 169.17, 24.00, 12.00, 12.00, 'I', NULL, 'A', NULL, NULL),
	(10, '996071', '001-57-000812', 255.64, 44.00, 22.00, 22.00, 'I', NULL, 'A', NULL, NULL),
	(11, '996059', '001-55-000549', 18632.75, 255.00, 127.50, 127.50, 'I', NULL, 'A', NULL, NULL),
	(12, '996059', '001-57-000801', 148.96, 44.00, 22.00, 22.00, 'I', NULL, 'A', NULL, NULL),
	(13, '996117', '001-57-000626', 3491.05, 100.00, 50.00, 50.00, 'I', NULL, 'A', NULL, NULL),
	(14, '996126', '001-57-000838', 357.37, 44.00, 22.00, 22.00, 'I', NULL, 'A', NULL, NULL),
	(15, '996126', '001-57-000715', 1333.74, 110.00, 55.00, 55.00, 'I', NULL, 'A', NULL, NULL),
	(16, '996137', '001-57-000691', 1430.63, 51.00, 25.50, 25.50, 'I', NULL, 'A', NULL, NULL),
	(17, '996137', '001-57-000800', 112.13, 36.00, 18.00, 18.00, 'I', NULL, 'A', NULL, NULL),
	(18, '996140', '001-57-000570', 3213.76, 91.00, 45.50, 45.50, 'I', NULL, 'A', NULL, NULL),
	(19, '996155', '001-57-000683', 14551.82, 228.00, 114.00, 114.00, 'I', NULL, 'A', NULL, '2023-01-16 13:45:14'),
	(20, '996151', '001-57-000658', 2106.66, 90.00, 45.00, 96.50, 'I', NULL, 'A', NULL, '2023-02-02 12:00:43'),
	(21, '996161', '003-57-000802', 1165.47, 79.00, 39.50, 39.50, 'I', NULL, 'A', NULL, NULL),
	(22, '996161', '002-57-000836', 357.51, 44.00, 22.00, 22.00, 'I', NULL, 'A', NULL, NULL),
	(23, '996179', '001-57-000472', 653.36, 67.00, 33.50, 33.50, 'I', NULL, 'A', NULL, NULL),
	(24, '996179', '003-55-000662', 36101.14, 387.00, 193.50, 193.50, 'I', NULL, 'A', NULL, NULL),
	(25, '996180', '001-57-000842', 399.06, 44.00, 22.00, 22.00, 'I', NULL, 'A', NULL, NULL),
	(26, '996185', '001-57-000822', 380.83, 44.00, 22.00, 22.00, 'I', NULL, 'A', NULL, NULL),
	(27, '996185', '002-57-000809', 11496.33, 155.00, 77.50, 77.50, 'I', NULL, 'A', NULL, NULL),
	(28, '996187', '003-57-000638', 3672.34, 106.00, 53.00, 53.00, 'I', NULL, 'I', NULL, '2023-02-02 14:37:40'),
	(29, '996187', '003-57-000797', 165.54, 44.00, 22.00, 22.00, 'I', NULL, 'I', NULL, '2023-02-02 14:37:45'),
	(30, '996208', '001-57-000817', 10047.27, 176.00, 88.00, 88.00, 'I', NULL, 'A', NULL, '2023-02-07 16:40:05'),
	(31, '996209', '001-57-000832', 2199.57, 95.00, 47.50, 47.50, 'I', NULL, 'A', NULL, NULL),
	(32, '996192', '001-57-000548', 456.17, 90.00, 45.00, 45.00, 'I', NULL, 'A', NULL, NULL),
	(33, '996192', '003-57-000772', 0.00, 44.00, 22.00, 22.00, 'I', '2023-01-30 00:00:00', 'I', NULL, NULL),
	(34, '996197', '003-55-000584', 44676.66, 440.00, 220.00, 112.50, 'I', NULL, 'A', NULL, '2023-02-02 14:09:06'),
	(35, '996199', '001-57-000808', 1323.11, 52.00, 26.00, 26.00, 'I', NULL, 'A', NULL, NULL),
	(36, '996199', '001-57-000621', 2862.03, 81.00, 40.50, 40.50, 'I', NULL, 'A', NULL, NULL),
	(37, '996205', '001-57-000792', 542.46, 73.00, 36.50, 36.50, 'I', NULL, 'A', NULL, NULL),
	(38, '996194', '002-57-000790', 6964.17, 127.00, 63.50, 63.50, 'I', NULL, 'A', NULL, NULL),
	(39, '996194', '002-57-000834', 337.22, 44.00, 22.00, 22.00, 'I', NULL, 'A', NULL, NULL),
	(40, '996193', '001-57-000591', 763.10, 66.00, 33.00, 33.00, 'I', NULL, 'A', NULL, NULL),
	(41, '996193', '001-57-000826', 317.98, 44.00, 22.00, 22.00, 'I', NULL, 'A', NULL, NULL),
	(42, '996253', '001-57-000782', 4656.07, 153.00, 76.50, 76.50, 'I', NULL, 'A', NULL, NULL),
	(43, '996259', '001-57-000714', 2378.98, 107.00, 53.50, 53.50, 'I', NULL, 'A', NULL, NULL),
	(44, '996271', '001-57-000741', 0.00, 62.00, 31.00, 31.00, 'I', '2023-01-16 00:00:00', 'I', NULL, '2023-02-07 16:38:04'),
	(45, '996271', '001-57-000828', 0.00, 24.00, 12.00, 12.00, 'I', '2023-01-16 00:00:00', 'I', NULL, '2023-02-07 16:37:59'),
	(46, '996271', '001-57-000815', 0.00, 44.00, 22.00, 22.00, 'I', '2023-01-16 00:00:00', 'I', NULL, '2023-02-07 16:37:53'),
	(47, '996240', '001-57-000841', 377.69, 44.00, 22.00, 22.00, 'I', NULL, 'A', NULL, NULL),
	(48, '996240', '001-57-000771', 3154.48, 149.00, 74.50, 74.50, 'I', NULL, 'A', NULL, NULL),
	(49, '996238', '001-57-000780', 0.00, 44.00, 22.00, 22.00, 'I', '2023-02-15 00:00:00', 'I', NULL, '2023-02-15 09:13:41'),
	(50, '996238', '001-57-000811', 533.73, 33.00, 16.50, 16.50, 'I', NULL, 'A', NULL, NULL),
	(51, '996244', '003-57-000662', 4046.94, 97.00, 48.50, 48.50, 'I', NULL, 'A', NULL, NULL),
	(52, '996244', '001-57-000833', 337.93, 44.00, 22.00, 22.00, 'I', NULL, 'A', NULL, NULL),
	(53, '996256', '003-57-000695', 1758.03, 89.00, 44.50, 44.50, 'I', NULL, 'A', NULL, NULL),
	(54, '996256', '001-57-000818', 276.44, 44.00, 22.00, 22.00, 'I', NULL, 'A', NULL, NULL),
	(55, '996223', '001-57-000740', 341.50, 76.00, 38.00, 38.00, 'I', NULL, 'A', NULL, NULL),
	(56, '996287', '001-57-000799', 6376.01, 130.00, 65.00, 65.00, 'I', NULL, 'A', NULL, NULL),
	(57, '996292', '001-57-000831', 14389.23, 250.00, 125.00, 125.00, 'I', NULL, 'A', NULL, NULL),
	(58, '996306', '001-57-000803', 171.20, 44.00, 22.00, 22.00, 'I', NULL, 'A', NULL, NULL),
	(59, '996313', '001-57-000798', 127.38, 44.00, 22.00, 22.00, 'I', NULL, 'A', NULL, NULL),
	(60, '996309', '001-57-000837', 357.51, 44.00, 22.00, 22.00, 'I', NULL, 'A', NULL, NULL),
	(61, '996294', '001-57-000814', 5504.23, 88.00, 44.00, 44.00, 'I', NULL, 'A', NULL, NULL),
	(62, '996318', '001-57-000840', 7728.50, 149.00, 74.50, 74.50, 'I', NULL, 'A', NULL, NULL),
	(63, '996315', '001-57-000807', 0.00, 44.00, 22.00, 22.00, 'I', '2023-01-25 00:00:00', 'I', NULL, '2023-02-07 16:38:17'),
	(64, '996290', '001-57-000820', 0.00, 44.00, 22.00, 22.00, 'I', '2023-02-13 00:00:00', 'I', NULL, NULL),
	(65, '996326', '001-57-000825', 317.98, 44.00, 22.00, 22.00, 'I', NULL, 'A', NULL, NULL),
	(66, '996320', '001-57-000819', 344.14, 44.00, 22.00, 22.00, 'I', NULL, 'A', NULL, NULL),
	(67, '996331', '003-57-000830', 124.50, 86.00, 43.00, 43.00, 'I', NULL, 'A', NULL, NULL),
	(68, '996322', '001-57-000839', 378.54, 44.00, 22.00, 22.00, 'I', NULL, 'A', NULL, NULL),
	(69, '996325', '001-57-000805', 0.00, 72.00, 36.00, 36.00, 'I', '2023-02-09 00:00:00', 'I', NULL, NULL),
	(70, '996271', '001-57-000843', 1539.86, 74.00, 37.00, 37.00, 'I', NULL, 'A', NULL, '2023-02-07 16:37:48'),
	(71, '996339', '001-57-000844', 460.14, 44.00, 22.00, 22.00, 'I', NULL, 'A', NULL, '2023-02-13 11:57:50'),
	(72, '996315', '001-57-000845', 1955.46, 57.00, 28.50, 28.50, 'I', NULL, 'A', NULL, '2023-02-07 16:38:22'),
	(73, '996258', '735467447', 20625.77, 362.44, 181.22, 362.44, 'E', NULL, 'I', '2023-02-02 11:56:58', '2023-02-10 10:03:30'),
	(74, '996315', '736069216', 18749.11, 240.00, 120.00, 120.00, 'E', NULL, 'A', '2023-02-02 14:21:45', '2023-02-02 14:21:45'),
	(75, '996242', '15751642927', 3782.67, 105.00, 52.50, 52.50, 'E', NULL, 'A', '2023-02-02 14:23:04', '2023-02-02 14:23:04'),
	(76, '996367', '2130007622', 4031.91, 76.00, 38.00, 38.00, 'E', NULL, 'A', '2023-02-02 14:24:34', '2023-02-02 14:24:34'),
	(77, '996310', '7090670', 0.00, 63.93, 31.97, 31.97, 'E', NULL, 'A', '2023-02-02 14:25:37', '2023-02-06 10:58:50'),
	(78, '996344', '6693641', 3334.07, 60.81, 30.41, 30.41, 'E', NULL, 'A', '2023-02-02 14:28:58', '2023-02-02 14:28:58'),
	(79, '996192', '2644861', 0.00, 44.00, 22.00, 22.00, 'I', NULL, 'I', '2023-02-02 18:03:35', '2023-02-13 15:35:06'),
	(80, '996348', '001-57-000847', 479.36, 44.00, 22.00, 22.00, 'I', NULL, 'A', NULL, NULL),
	(81, '996325', '001-57-000846', 7155.75, 120.00, 60.00, 60.00, 'I', NULL, 'A', NULL, NULL),
	(82, '996290', '001-57-000849', 1564.73, 74.00, 37.00, 37.00, 'I', NULL, 'A', NULL, '2023-02-13 15:15:28'),
	(83, '996346', '003-57-000850', 485.04, 31.00, 15.50, 15.50, 'I', NULL, 'A', NULL, NULL),
	(84, '996349', '001-57-000848', 8202.25, 137.00, 68.50, 68.50, 'I', NULL, 'A', NULL, NULL);

-- Volcando estructura para tabla planilla.tbl_puestos
CREATE TABLE IF NOT EXISTS `tbl_puestos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `id_departamento` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL COMMENT 'Campo para almacenar la hora y la fecha en que se inserto el registro',
  `updated_at` datetime DEFAULT NULL COMMENT 'Campo para almacenar la hora y la fecha en que se actualizo el registro',
  PRIMARY KEY (`id`),
  KEY `fk_tbl_puestos_tbl_departamentos` (`id_departamento`),
  CONSTRAINT `fk_tbl_puestos_tbl_departamentos` FOREIGN KEY (`id_departamento`) REFERENCES `tbl_departamentos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- Volcando datos para la tabla planilla.tbl_puestos: ~54 rows (aproximadamente)
INSERT INTO `tbl_puestos` (`id`, `nombre`, `id_departamento`, `created_at`, `updated_at`) VALUES
	(1, 'Agente De Seguridad', 1, '2023-01-11 18:15:29', '2023-01-11 18:15:29'),
	(2, 'Analista De A.I', 2, '2023-01-11 18:15:44', '2023-01-11 18:15:44'),
	(3, 'Analista De Compras', 1, '2023-01-11 18:15:44', '2023-01-11 18:15:44'),
	(4, 'Analista De Creditos', 8, '2023-01-11 18:15:44', '2023-01-11 18:15:44'),
	(5, 'Asistente Contable', 4, '2023-01-11 18:15:44', '2023-01-11 18:15:44'),
	(6, 'Asistente De Gerencia', 5, '2023-01-11 18:15:44', '2023-01-11 18:15:44'),
	(7, 'Asistente De Gerencia-Directivos', 5, '2023-01-11 18:15:44', '2023-01-11 18:15:44'),
	(8, 'Asistente De Mercadeo', 8, '2023-01-11 18:15:44', '2023-01-11 18:15:44'),
	(9, 'Asistente De Oficialia De Cumplimiento', 9, '2023-01-11 18:15:44', '2023-01-11 18:15:44'),
	(10, 'Asistente De Operaciones', 10, '2023-01-11 18:15:44', '2023-01-11 18:15:44'),
	(11, 'Asistente De Recursos Humanos', 11, '2023-01-11 18:15:44', '2023-01-11 18:15:44'),
	(12, 'Asistente De Tesoreria', 4, '2023-01-11 18:15:44', '2023-01-11 18:15:44'),
	(13, 'Asistente Juridico', 7, '2023-01-11 18:15:44', '2023-01-11 18:15:44'),
	(14, 'Atencion Al Asociado', 8, '2023-01-11 18:15:44', '2023-01-11 18:15:44'),
	(15, 'Auditor Interno', 2, '2023-01-11 18:15:44', '2023-01-11 18:15:44'),
	(16, 'Auxiliar Contable ', 4, '2023-01-11 18:15:44', '2023-01-11 18:15:44'),
	(17, 'Auxiliar De Operaciones', 10, '2023-01-11 18:15:44', '2023-01-11 18:15:44'),
	(18, 'Auxiliar Juridico', 7, '2023-01-11 18:15:44', '2023-01-11 18:15:44'),
	(19, 'Cajero', 8, '2023-01-11 18:15:44', '2023-01-11 18:15:44'),
	(20, 'Colaborador Juridico', 7, '2023-01-11 18:15:44', '2023-01-11 18:15:44'),
	(21, 'Colaborador Juridico Jr', 7, '2023-01-11 18:15:44', '2023-01-11 18:15:44'),
	(22, 'Colaborador Juridico Senior', 7, '2023-01-11 18:15:44', '2023-01-11 18:15:44'),
	(23, 'Contador General', 4, '2023-01-11 18:15:44', '2023-01-11 18:15:44'),
	(24, 'Coordinador Administrativo', 8, '2023-01-11 18:15:44', '2023-01-11 18:15:44'),
	(25, 'Coordinadora De Educacion', 5, '2023-01-11 18:15:44', '2023-01-11 18:15:44'),
	(26, 'Coordinadora De Mercadeo', 8, '2023-01-11 18:15:44', '2023-01-11 18:15:44'),
	(27, 'Custodia De Valores', 10, '2023-01-11 18:15:44', '2023-01-11 18:15:44'),
	(28, 'Desarrollador de Base de Datos', 6, '2023-01-11 18:15:44', '2023-01-11 18:15:44'),
	(29, 'Desarrollador Oracle', 6, '2023-01-11 18:15:44', '2023-01-11 18:15:44'),
	(30, 'Desarrollador Web', 6, '2023-01-11 18:15:44', '2023-01-11 18:15:44'),
	(31, 'Ejecutivo De Negocios ', 8, '2023-01-11 18:15:44', '2023-01-11 18:15:44'),
	(32, 'Encargado De Archivo', 1, '2023-01-11 18:15:44', '2023-01-11 18:15:44'),
	(33, 'Encargado De Pagadurias', 10, '2023-01-11 18:15:44', '2023-01-11 18:15:44'),
	(34, 'Coord.De Fidelizacion Y Retenciones', 8, '2023-01-11 18:15:44', '2023-01-11 18:15:44'),
	(35, 'Gerente Administrativo', 1, '2023-01-11 18:15:44', '2023-01-11 18:15:44'),
	(36, 'Gerente De Informatica', 6, '2023-01-11 18:15:44', '2023-01-11 18:15:44'),
	(37, 'Gerente De Negocios', 8, '2023-01-11 18:15:44', '2023-01-11 18:15:44'),
	(38, 'Gerente De Oficialia De Cumplimiento', 9, '2023-01-11 18:15:44', '2023-01-11 18:15:44'),
	(39, 'Gerente Financiero', 4, '2023-01-11 18:15:44', '2023-01-11 18:15:44'),
	(40, 'Gerente General', 5, '2023-01-11 18:15:44', '2023-01-11 18:15:44'),
	(41, 'Gerente Legal', 7, '2023-01-11 18:15:44', '2023-01-11 18:15:44'),
	(42, 'Gestor De Recuperación Call Center', 3, '2023-01-11 18:15:44', '2023-01-11 18:15:44'),
	(43, 'Gestores De Recuperacion ', 3, '2023-01-11 18:15:44', '2023-01-11 18:15:44'),
	(44, 'Jefe De Agencia', 8, '2023-01-11 18:15:44', '2023-01-11 18:15:44'),
	(45, 'Jefe De Informatica', 6, '2023-01-11 18:15:44', '2023-01-11 18:15:44'),
	(46, 'Jefe De Operaciones', 10, '2023-01-11 18:15:44', '2023-01-11 18:15:44'),
	(47, 'Jefe De Recursos Humanos', 11, '2023-01-11 18:15:44', '2023-01-11 18:15:44'),
	(48, 'Mantenimiento', 1, '2023-01-11 18:15:44', '2023-01-11 18:15:44'),
	(49, 'Recepcionista', 8, '2023-01-11 18:15:44', '2023-01-11 18:15:44'),
	(50, 'Servicios Generales', 1, '2023-01-11 18:15:44', '2023-01-11 18:15:44'),
	(51, 'Soporte Tecnico', 6, '2023-01-11 18:15:44', '2023-01-11 18:15:44'),
	(52, 'Supervisor De Seguridad', 1, '2023-01-11 18:15:44', '2023-01-11 18:15:44'),
	(53, 'Jefe De Cobros', 3, NULL, NULL),
	(54, 'Analista De Operaciones', 10, NULL, NULL);

-- Volcando estructura para tabla planilla.tbl_rutas
CREATE TABLE IF NOT EXISTS `tbl_rutas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `icono` varchar(250) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `ruta` varchar(150) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_spanish2_ci NOT NULL,
  `created_at` datetime DEFAULT NULL COMMENT 'Campo para almacenar la hora y la fecha en que se inserto el registro',
  `updated_at` datetime DEFAULT NULL COMMENT 'Campo para almacenar la hora y la fecha en que se actualizo el registro',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- Volcando datos para la tabla planilla.tbl_rutas: ~16 rows (aproximadamente)
INSERT INTO `tbl_rutas` (`id`, `icono`, `ruta`, `descripcion`, `created_at`, `updated_at`) VALUES
	(1, 'pi pi-arrows-alt', '/rutas', 'Mant. Rutas', '2022-12-28 16:23:12', '2022-12-30 12:00:43'),
	(2, 'pi  pi-sitemap', '/agencias', 'Mant. Agencias', '2022-12-28 16:56:28', '2022-12-30 12:03:10'),
	(3, 'pi pi-desktop', '/departamentos', 'Mant. Departamentos', '2022-12-28 16:57:39', '2022-12-30 12:03:51'),
	(4, 'pi pi-fw pi-pencil', '/puestos', 'Mant. Puestos', '2022-12-28 16:57:53', '2022-12-28 16:57:54'),
	(5, 'pi pi-lock', '/permisos', 'Mant. Permisos', '2022-12-29 10:58:56', '2022-12-30 12:00:51'),
	(6, 'pi pi-credit-card', '/cuentas', 'Mant. Cuentas Bancarias', '2022-12-30 09:05:05', '2022-12-30 12:01:34'),
	(7, 'pi pi-dollar', '/bancos', 'Mant. Bancos', '2022-12-30 09:05:58', '2022-12-30 12:02:34'),
	(8, 'pi pi-users', '/empleados', 'Mant. Empleados', '2023-01-03 10:24:36', '2023-01-03 10:24:36'),
	(9, 'pi pi-users', '/usuarios', 'Mant. Usuarios', '2023-01-03 16:18:56', '2023-01-03 16:18:56'),
	(10, 'pi pi-sliders-h', '/conceptos', 'Mant. Conceptos', '2023-01-06 11:28:44', '2023-01-06 11:28:44'),
	(11, 'pi pi-dollar', '/operaciones', 'Mant. Operaciones', '2023-01-06 11:29:04', '2023-01-06 11:29:04'),
	(12, 'pi pi-external-link', '/asignaciones', 'Mant. Asignaciones', '2023-01-06 11:29:21', '2023-01-06 11:29:21'),
	(13, 'pi pi-file-excel', '/planillas', 'Generar Planillas', '2023-01-11 17:19:31', '2023-01-11 17:19:31'),
	(14, 'pi pi-dollar', '/comisiones', 'Mant. Comisiones', '2023-01-16 11:49:15', '2023-01-16 11:49:15'),
	(15, 'pi pi-dollar', '/prestamos', 'Mant. Préstamos', '2023-01-16 11:49:36', '2023-01-16 11:49:36'),
	(16, 'pi pi-file-export', '/reportes', 'Generar Reportes', '2023-02-02 14:55:28', '2023-02-02 14:55:28'),
	(17, 'pi pi-car', '/vacaciones', 'Ingresar Vacaciones', '2023-02-07 09:37:08', '2023-02-07 09:37:26');

-- Volcando estructura para tabla planilla.tbl_tipo_asignaciones
CREATE TABLE IF NOT EXISTS `tbl_tipo_asignaciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `created_at` datetime DEFAULT NULL COMMENT 'Campo para almacenar la hora y la fecha en que se inserto el registro',
  `updated_at` datetime DEFAULT NULL COMMENT 'Campo para almacenar la hora y la fecha en que se actualizo el registro',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- Volcando datos para la tabla planilla.tbl_tipo_asignaciones: ~2 rows (aproximadamente)
INSERT INTO `tbl_tipo_asignaciones` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
	(1, 'Asignaciones Fijas', '2023-01-05 16:30:12', '2023-01-05 16:30:13'),
	(2, 'Asignaciones Variables', '2023-01-05 16:30:14', '2023-01-05 16:30:14');

-- Volcando estructura para tabla planilla.tbl_tipo_planillas
CREATE TABLE IF NOT EXISTS `tbl_tipo_planillas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `detalle` text COLLATE utf8mb4_spanish2_ci NOT NULL,
  `created_at` datetime DEFAULT NULL COMMENT 'Campo para almacenar la hora y la fecha en que se inserto el registro',
  `updated_at` datetime DEFAULT NULL COMMENT 'Campo para almacenar la hora y la fecha en que se actualizo el registro',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- Volcando datos para la tabla planilla.tbl_tipo_planillas: ~4 rows (aproximadamente)
INSERT INTO `tbl_tipo_planillas` (`id`, `nombre`, `detalle`, `created_at`, `updated_at`) VALUES
	(1, 'PQ', 'Planilla Quincenal', '2023-01-06 16:55:11', '2023-01-06 16:55:12'),
	(2, 'PM', 'Planilla Mensual', '2023-01-06 16:55:13', '2023-01-06 16:55:14'),
	(3, 'PA', 'Planilla de Aguinaldo', '2023-01-06 16:55:07', '2023-01-06 16:55:08'),
	(4, 'PI', 'Planilla de Indemnización', '2023-01-06 16:55:15', '2023-01-06 16:55:16');

-- Volcando estructura para tabla planilla.tbl_usuarios
CREATE TABLE IF NOT EXISTS `tbl_usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(25) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `contrasenia` varchar(255) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `vencimiento_contrasenia` date DEFAULT NULL,
  `id_empleado` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL COMMENT 'Campo para almacenar la hora y la fecha en que se inserto el registro',
  `updated_at` datetime DEFAULT NULL COMMENT 'Campo para almacenar la hora y la fecha en que se actualizo el registro',
  PRIMARY KEY (`id`),
  KEY `fk_tbl_usuarios_tbl_empleados` (`id_empleado`),
  CONSTRAINT `fk_tbl_usuarios_tbl_empleados` FOREIGN KEY (`id_empleado`) REFERENCES `tbl_empleados` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- Volcando datos para la tabla planilla.tbl_usuarios: ~3 rows (aproximadamente)
INSERT INTO `tbl_usuarios` (`id`, `codigo`, `contrasenia`, `vencimiento_contrasenia`, `id_empleado`, `created_at`, `updated_at`) VALUES
	(1, 'OP3', '$2y$10$ku1tK1QtvFvgL7SfzxW.v.jqF6T5YAD4uAGDsCRWXRfXSz9M9e7Xq', '2023-03-13', 19, '2023-01-05 14:05:46', '2023-01-12 14:51:40'),
	(2, 'MC3', '$2y$10$F2hLq1h07KQkaiVJpQ/25OJT9x6wOZZPMt82CK1TR/8KL0nHhRHxW', '2023-03-06', 67, '2023-01-12 14:51:27', '2023-01-24 14:55:58'),
	(3, 'XQ1', '$2y$10$ZncekB.r0H/RCcXqiz.z0.k6/fP/2Xd0N8bIPDmV2hWRfpqw4vgy.', '2023-03-02', 106, '2023-02-02 11:28:43', '2023-02-02 11:28:43');

-- Volcando estructura para tabla planilla.tbl_vacaciones
CREATE TABLE IF NOT EXISTS `tbl_vacaciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_empleado` int(11) NOT NULL,
  `f_inicio` datetime DEFAULT NULL,
  `f_fin` datetime DEFAULT NULL,
  `dias` int(11) DEFAULT NULL,
  `estado` enum('D','F') COLLATE utf8mb4_spanish2_ci DEFAULT 'D',
  `tipo` enum('D','T') COLLATE utf8mb4_spanish2_ci DEFAULT 'T',
  `created_at` datetime DEFAULT NULL COMMENT 'Campo para almacenar la hora y la fecha en que se inserto el registro',
  `updated_at` datetime DEFAULT NULL COMMENT 'Campo para almacenar la hora y la fecha en que se actualizo el registro',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- Volcando datos para la tabla planilla.tbl_vacaciones: ~0 rows (aproximadamente)
INSERT INTO `tbl_vacaciones` (`id`, `id_empleado`, `f_inicio`, `f_fin`, `dias`, `estado`, `tipo`, `created_at`, `updated_at`) VALUES
	(1, 4, '2023-02-07 00:00:00', '2023-02-15 00:00:00', 8, 'F', 'T', '2023-02-07 09:44:55', '2023-02-07 09:45:31');

-- Volcando estructura para vista planilla.v_detalles_planilla_1q_quincenal_dic
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `v_detalles_planilla_1q_quincenal_dic` (
	`ID_EMPLEADO` INT(11) NOT NULL,
	`SUELDO` DECIMAL(10,2) NOT NULL,
	`DIAS_QUINCENA` INT(2) NOT NULL,
	`DIAS_TRABAJADOS` DECIMAL(10,0) NOT NULL,
	`calculo_salario` DECIMAL(25,8) NULL,
	`PRESTAMOS` DECIMAL(32,2) NOT NULL,
	`ANTICIPO` DECIMAL(32,2) NULL,
	`BONOS` DECIMAL(36,6) NULL,
	`BONOSV` DECIMAL(32,2) NULL,
	`VACACION` DECIMAL(65,8) NOT NULL,
	`COMISION` DECIMAL(10,2) NOT NULL,
	`TOTALQUINCENA` DECIMAL(65,8) NULL,
	`ISSS` DECIMAL(60,8) NOT NULL,
	`AFP` DOUBLE NOT NULL,
	`IPSFA` DECIMAL(65,14) NULL,
	`FOSAFI` DECIMAL(36,6) NULL,
	`AGUINALDO_AGRAVADO` DECIMAL(20,8) NOT NULL,
	`RENTA` DOUBLE(25,8) NULL,
	`TOTAL_DESCUENTOS` DOUBLE(25,8) NULL,
	`PGR` DECIMAL(36,6) NULL,
	`FSV` DECIMAL(36,6) NULL,
	`DV` DECIMAL(32,2) NULL,
	`VIATICOS` DECIMAL(32,2) NULL,
	`REINTEGRO` DECIMAL(32,2) NULL,
	`LIQUIDO_PAGAR` DOUBLE(25,8) NULL
) ENGINE=MyISAM;

-- Volcando estructura para vista planilla.v_detalles_planilla_2q_quincenal_dic
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `v_detalles_planilla_2q_quincenal_dic` (
	`ID_EMPLEADO` INT(11) NOT NULL,
	`SUELDO` DECIMAL(10,2) NOT NULL,
	`DIAS_QUINCENA` INT(2) NOT NULL,
	`DIAS_TRABAJADOS` DECIMAL(10,0) NOT NULL,
	`calculo_salario` DECIMAL(25,8) NULL,
	`PRESTAMOS` DECIMAL(32,2) NOT NULL,
	`ANTICIPO` DECIMAL(32,2) NULL,
	`BONOS` DECIMAL(36,6) NULL,
	`BONOSV` DECIMAL(32,2) NULL,
	`VACACION` DECIMAL(65,8) NOT NULL,
	`COMISION` DECIMAL(10,2) NOT NULL,
	`TOTALQUINCENA` DECIMAL(65,8) NULL,
	`ISSS` DECIMAL(60,8) NOT NULL,
	`AFP` DOUBLE NOT NULL,
	`IPSFA` DECIMAL(65,14) NULL,
	`FOSAFI` DECIMAL(36,6) NULL,
	`INDEMNIZACION_AGRAVADO` DECIMAL(20,8) NOT NULL,
	`RENTA` DOUBLE(25,8) NULL,
	`TOTAL_DESCUENTOS` DOUBLE(25,8) NULL,
	`PGR` DECIMAL(36,6) NULL,
	`FSV` DECIMAL(36,6) NULL,
	`DV` DECIMAL(32,2) NULL,
	`VIATICOS` DECIMAL(32,2) NULL,
	`REINTEGRO` DECIMAL(32,2) NULL,
	`LIQUIDO_PAGAR` DOUBLE(25,8) NULL
) ENGINE=MyISAM;

-- Volcando estructura para vista planilla.v_detalles_planilla_aguinaldo
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `v_detalles_planilla_aguinaldo` (
	`ID_EMPLEADO` INT(11) NOT NULL,
	`NOMBRECOMPLETO` VARCHAR(511) NOT NULL COLLATE 'utf8mb4_spanish2_ci',
	`CARGO` VARCHAR(255) NULL COLLATE 'utf8mb4_spanish2_ci',
	`NUM_CLIENTE` VARCHAR(25) NOT NULL COLLATE 'utf8mb4_spanish2_ci',
	`FECHA_INGRESO` DATE NOT NULL,
	`FECHACORTE` DATE NULL,
	`TIEMPO_LAB_CORTE` DECIMAL(28,8) NULL,
	`DIAS_LABORADOS` BIGINT(21) NULL,
	`TIEMPOLABORADO` VARCHAR(70) NULL COLLATE 'utf8mb4_general_ci',
	`COMISION` DECIMAL(44,8) NULL,
	`SUELDO` DECIMAL(10,2) NOT NULL,
	`AGUIINALDO_LEY` DECIMAL(56,8) NULL,
	`COMPLEMENTO_POLITICA` DECIMAL(51,8) NULL,
	`TOTAL_AGUINALDO` DECIMAL(57,8) NULL,
	`TOPE_AGUINALDO` DECIMAL(10,2) NULL,
	`BASE_RETENCION` DECIMAL(58,8) NULL,
	`PGR` DECIMAL(50,8) NULL,
	`RENTA` DECIMAL(60,8) NULL,
	`TOTAL_RETENIDO` DECIMAL(50,8) NULL,
	`LQUIDO_PAGAR` DECIMAL(58,8) NULL
) ENGINE=MyISAM;

-- Volcando estructura para vista planilla.v_detalles_planilla_indemnizacion
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `v_detalles_planilla_indemnizacion` (
	`ID_EMPLEADO` INT(11) NOT NULL,
	`FECHACORTE` DATE NULL,
	`TIEMPO_LAB_CORTE` DECIMAL(28,8) NULL,
	`DIAS_LABORADOS` BIGINT(21) NULL,
	`TIEMPOLABORADO` VARCHAR(70) NULL COLLATE 'utf8mb4_general_ci',
	`COMISION` DECIMAL(44,8) NULL,
	`SUELDO` DECIMAL(10,2) NOT NULL,
	`INDEMNIZACION` DECIMAL(42,8) NULL,
	`TOPE_INDEMNIZACION` DECIMAL(10,2) NULL,
	`BASE_RETENCION` DECIMAL(46,8) NULL,
	`RENTA` DECIMAL(53,8) NULL,
	`PGR` DECIMAL(51,8) NULL,
	`TOTAL_RETENIDO` DECIMAL(51,8) NULL,
	`LQUIDO_PAGAR` DECIMAL(52,8) NULL
) ENGINE=MyISAM;

-- Volcando estructura para vista planilla.v_detalles_planilla_quincenal
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `v_detalles_planilla_quincenal` (
	`ID_EMPLEADO` INT(11) NOT NULL,
	`SUELDO` DECIMAL(10,2) NOT NULL,
	`DIAS_QUINCENA` INT(2) NOT NULL,
	`DIAS_TRABAJADOS` DECIMAL(10,0) NOT NULL,
	`calculo_salario` DECIMAL(25,8) NULL,
	`PRESTAMOS` DECIMAL(32,2) NOT NULL,
	`ANTICIPO` DECIMAL(32,2) NULL,
	`BONOS` DECIMAL(36,6) NULL,
	`BONOSV` DECIMAL(32,2) NULL,
	`VACACION` DECIMAL(65,8) NOT NULL,
	`COMISION` DECIMAL(10,2) NOT NULL,
	`TOTALQUINCENA` DECIMAL(65,8) NULL,
	`ISSS` DECIMAL(60,8) NOT NULL,
	`AFP` DOUBLE NOT NULL,
	`IPSFA` DECIMAL(65,14) NULL,
	`FOSAFI` DECIMAL(36,6) NULL,
	`RENTA` DOUBLE(25,8) NULL,
	`TOTAL_DESCUENTOS` DOUBLE(25,8) NULL,
	`PGR` DECIMAL(36,6) NULL,
	`FSV` DECIMAL(36,6) NULL,
	`DV` DECIMAL(32,2) NULL,
	`VIATICOS` DECIMAL(32,2) NULL,
	`REINTEGRO` DECIMAL(32,2) NULL,
	`LIQUIDO_PAGAR` DOUBLE(25,8) NULL
) ENGINE=MyISAM;

-- Volcando estructura para vista planilla.v_recibo_vacacion
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `v_recibo_vacacion` (
	`ID_EMPLEADO` INT(11) NOT NULL,
	`NOMBRECOMPLETO` VARCHAR(511) NOT NULL COLLATE 'utf8mb4_spanish2_ci',
	`NUM_CLIENTE` VARCHAR(25) NOT NULL COLLATE 'utf8mb4_spanish2_ci',
	`PUESTO` VARCHAR(255) NULL COLLATE 'utf8mb4_spanish2_ci',
	`FECHA_INGRESO` DATE NOT NULL,
	`TOTALDIAS` BIGINT(21) NULL,
	`DESDE` DATE NULL,
	`HASTA` DATE NULL,
	`F_GOZE_INICIO` DATETIME NULL,
	`F_GOZE_FIN` DATETIME NULL,
	`DIAS_GOZADOS` INT(11) NULL,
	`SUELDO` DECIMAL(10,2) NOT NULL,
	`PROMEDIO_DE_COMISION_6_MESES` DECIMAL(44,8) NOT NULL,
	`PROMEDIO_DE_COMISION_18_DIAS` DECIMAL(47,8) NULL,
	`SUELDO_MAS_COMISION_18_DIAS` DECIMAL(48,8) NULL,
	`VACACION_POLITICA` DECIMAL(65,8) NULL,
	`VACACION_LEY` DECIMAL(65,8) NULL,
	`vacacionsinpgr` DECIMAL(65,8) NULL,
	`pgr` DECIMAL(60,8) NULL,
	`vaciontotal` DECIMAL(60,8) NULL
) ENGINE=MyISAM;

-- Volcando estructura para disparador planilla.TG_INSERTAR_ASIGNACIONES
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `TG_INSERTAR_ASIGNACIONES` AFTER INSERT ON `tbl_empleados` FOR EACH ROW BEGIN

DECLARE VAR_CONCEP_1 INTEGER;
DECLARE VAR_CONCEP_2 INTEGER;
DECLARE VAR_CONCEP_4 INTEGER;
DECLARE VAR_CONCEP_5 INTEGER;
DECLARE VAR_CONCEP_6 INTEGER;
DECLARE VAR_CONCEP_7 INTEGER;
DECLARE VAR_CONCEP_8 INTEGER;
DECLARE VAR_CONCEP_9 INTEGER;
DECLARE VAR_CONCEP_10 INTEGER;
DECLARE VAR_CONCEP_11 INTEGER;
DECLARE VAR_CONCEP_12 INTEGER;
DECLARE VAR_CONCEP_13 INTEGER;
DECLARE VAR_CONCEP_14 INTEGER;
DECLARE VAR_CONCEP_15 INTEGER;
DECLARE VAR_CONCEP_16 INTEGER;
DECLARE VAR_CONCEP_17 INTEGER;
DECLARE VAR_CONCEP_18 INTEGER;
DECLARE VAR_CONCEP_19 INTEGER;
DECLARE VAR_CONCEP_20 INTEGER;
/*DECLARE VAR_CONCEP_21 INTEGER;*/
DECLARE VAR_CONCEP_22 INTEGER;
DECLARE VAR_CONCEP_23 INTEGER;


/*CONCEPTO #1*/
SELECT COUNT(ID_EMPLEADO) INTO VAR_CONCEP_1 FROM TBL_ASIGNACIONES WHERE ID_EMPLEADO = NEW.ID AND ID_CONCEPTO=1;
IF VAR_CONCEP_1 = 0 THEN
INSERT INTO TBL_ASIGNACIONES (ID_EMPLEADO,ID_CONCEPTO,ID_TIPO_ASIGNACION,MONTO,ESTADO,CREATED_AT,UPDATED_AT) 
VALUES (NEW.ID,1,1,0,'A', NOW(), NOW()); 
END IF; 

/*CONCEPTO #2*/
SELECT COUNT(ID_EMPLEADO) INTO VAR_CONCEP_2 FROM TBL_ASIGNACIONES WHERE ID_EMPLEADO = NEW.ID AND ID_CONCEPTO=2;
IF VAR_CONCEP_2 = 0 THEN
INSERT INTO TBL_ASIGNACIONES (ID_EMPLEADO,ID_CONCEPTO,ID_TIPO_ASIGNACION,MONTO,ESTADO,CREATED_AT,UPDATED_AT) 
VALUES (NEW.ID,2,1,0,'A',NOW(),NOW());
END IF; 

/*CONCEPTO #4*/
SELECT COUNT(ID_EMPLEADO) INTO VAR_CONCEP_4 FROM TBL_ASIGNACIONES WHERE ID_EMPLEADO = NEW.ID AND ID_CONCEPTO=4;
IF VAR_CONCEP_4 = 0 THEN
INSERT INTO TBL_ASIGNACIONES  (ID_EMPLEADO,ID_CONCEPTO,ID_TIPO_ASIGNACION,MONTO,ESTADO,CREATED_AT,UPDATED_AT)
VALUES (NEW.ID,4,1,0,'A',NOW(),NOW());
END IF; 

/*CONCEPTO #5*/
SELECT COUNT(ID_EMPLEADO) INTO VAR_CONCEP_5 FROM TBL_ASIGNACIONES WHERE ID_EMPLEADO = NEW.ID AND ID_CONCEPTO=5;
IF VAR_CONCEP_5 = 0 THEN
INSERT INTO TBL_ASIGNACIONES  (ID_EMPLEADO,ID_CONCEPTO,ID_TIPO_ASIGNACION,MONTO,ESTADO,CREATED_AT,UPDATED_AT)
VALUES (NEW.ID,5,1,0,'I',NOW(),NOW());
END IF; 

/*CONCEPTO #6*/
SELECT COUNT(ID_EMPLEADO) INTO VAR_CONCEP_6 FROM TBL_ASIGNACIONES WHERE ID_EMPLEADO = NEW.ID AND ID_CONCEPTO=6;
IF VAR_CONCEP_6 = 0 THEN
INSERT INTO TBL_ASIGNACIONES  (ID_EMPLEADO,ID_CONCEPTO,ID_TIPO_ASIGNACION,MONTO,ESTADO,CREATED_AT,UPDATED_AT) 
VALUES (NEW.ID,6,2,0,'I',NOW(),NOW());
END IF; 

/*CONCEPTO #7*/
SELECT COUNT(ID_EMPLEADO) INTO VAR_CONCEP_7 FROM TBL_ASIGNACIONES WHERE ID_EMPLEADO = NEW.ID AND ID_CONCEPTO=7;
IF VAR_CONCEP_7 = 0 THEN
INSERT INTO TBL_ASIGNACIONES  (ID_EMPLEADO,ID_CONCEPTO,ID_TIPO_ASIGNACION,MONTO,ESTADO,CREATED_AT,UPDATED_AT)
VALUES (NEW.ID,7,2,0,'I',NOW(),NOW());
END IF; 

/*CONCEPTO #8*/
SELECT COUNT(ID_EMPLEADO) INTO VAR_CONCEP_8 FROM TBL_ASIGNACIONES WHERE ID_EMPLEADO = NEW.ID AND ID_CONCEPTO=8;
IF VAR_CONCEP_8 = 0 THEN
INSERT INTO TBL_ASIGNACIONES  (ID_EMPLEADO,ID_CONCEPTO,ID_TIPO_ASIGNACION,MONTO,ESTADO,CREATED_AT,UPDATED_AT)
VALUES (NEW.ID,8,2,0,'I',NOW(),NOW());
END IF; 

/*CONCEPTO #9*/
SELECT COUNT(ID_EMPLEADO) INTO VAR_CONCEP_9 FROM TBL_ASIGNACIONES WHERE ID_EMPLEADO = NEW.ID AND ID_CONCEPTO=9;
IF VAR_CONCEP_9 = 0 THEN
INSERT INTO TBL_ASIGNACIONES  (ID_EMPLEADO,ID_CONCEPTO,ID_TIPO_ASIGNACION,MONTO,ESTADO,CREATED_AT,UPDATED_AT) 
VALUES (NEW.ID,9,2,0,'I',NOW(),NOW());
END IF; 

/*CONCEPTO #10*/
SELECT COUNT(ID_EMPLEADO) INTO VAR_CONCEP_10 FROM TBL_ASIGNACIONES WHERE ID_EMPLEADO = NEW.ID AND ID_CONCEPTO=10;
IF VAR_CONCEP_10 = 0 THEN
INSERT INTO TBL_ASIGNACIONES  (ID_EMPLEADO,ID_CONCEPTO,ID_TIPO_ASIGNACION,MONTO,ESTADO,CREATED_AT,UPDATED_AT)
VALUES (NEW.ID,10,2,0,'I',NOW(),NOW());
END IF; 

/*CONCEPTO #11*/
SELECT COUNT(ID_EMPLEADO) INTO VAR_CONCEP_11 FROM TBL_ASIGNACIONES WHERE ID_EMPLEADO = NEW.ID AND ID_CONCEPTO=11;
IF VAR_CONCEP_11 = 0 THEN
INSERT INTO TBL_ASIGNACIONES  (ID_EMPLEADO,ID_CONCEPTO,ID_TIPO_ASIGNACION,MONTO,ESTADO,CREATED_AT,UPDATED_AT) 
VALUES (NEW.ID,11,2,0,'I',NOW(),NOW());
END IF; 

/*CONCEPTO #12*/
SELECT COUNT(ID_EMPLEADO) INTO VAR_CONCEP_12 FROM TBL_ASIGNACIONES WHERE ID_EMPLEADO = NEW.ID AND ID_CONCEPTO=12;
IF VAR_CONCEP_12 = 0 THEN
INSERT INTO TBL_ASIGNACIONES  (ID_EMPLEADO,ID_CONCEPTO,ID_TIPO_ASIGNACION,MONTO,ESTADO,CREATED_AT,UPDATED_AT)
VALUES (NEW.ID,12,2,0,'I',NOW(),NOW());
END IF; 

/*CONCEPTO #13*/
SELECT COUNT(ID_EMPLEADO) INTO VAR_CONCEP_13 FROM TBL_ASIGNACIONES WHERE ID_EMPLEADO = NEW.ID AND ID_CONCEPTO=13;
IF VAR_CONCEP_13 = 0 THEN
INSERT INTO TBL_ASIGNACIONES  (ID_EMPLEADO,ID_CONCEPTO,ID_TIPO_ASIGNACION,MONTO,ESTADO,CREATED_AT,UPDATED_AT) 
VALUES (NEW.ID,13,2,0,'I',NOW(),NOW());
END IF; 

/*CONCEPTO #14*/
SELECT COUNT(ID_EMPLEADO) INTO VAR_CONCEP_14 FROM TBL_ASIGNACIONES WHERE ID_EMPLEADO = NEW.ID AND ID_CONCEPTO=14;
IF VAR_CONCEP_14 = 0 THEN
INSERT INTO TBL_ASIGNACIONES  (ID_EMPLEADO,ID_CONCEPTO,ID_TIPO_ASIGNACION,MONTO,ESTADO,CREATED_AT,UPDATED_AT)
VALUES (NEW.ID,14,2,0,'I',NOW(),NOW());
END IF; 

/*CONCEPTO #15*/
SELECT COUNT(ID_EMPLEADO) INTO VAR_CONCEP_15 FROM TBL_ASIGNACIONES WHERE ID_EMPLEADO = NEW.ID AND ID_CONCEPTO=15;
IF VAR_CONCEP_15 = 0 THEN
INSERT INTO TBL_ASIGNACIONES  (ID_EMPLEADO,ID_CONCEPTO,ID_TIPO_ASIGNACION,MONTO,ESTADO,CREATED_AT,UPDATED_AT) 
VALUES (NEW.ID,15,2,0,'I',NOW(),NOW());
END IF; 

/*CONCEPTO #16*/
SELECT COUNT(ID_EMPLEADO) INTO VAR_CONCEP_16 FROM TBL_ASIGNACIONES WHERE ID_EMPLEADO = NEW.ID AND ID_CONCEPTO=16;
IF VAR_CONCEP_16 = 0 THEN
INSERT INTO TBL_ASIGNACIONES  (ID_EMPLEADO,ID_CONCEPTO,ID_TIPO_ASIGNACION,MONTO,ESTADO,CREATED_AT,UPDATED_AT) 
VALUES (NEW.ID,16,2,0,'I',NOW(),NOW());
END IF; 

/*CONCEPTO #17*/
SELECT COUNT(ID_EMPLEADO) INTO VAR_CONCEP_17 FROM TBL_ASIGNACIONES WHERE ID_EMPLEADO = NEW.ID AND ID_CONCEPTO=17;
IF VAR_CONCEP_17 = 0 THEN
INSERT INTO TBL_ASIGNACIONES  (ID_EMPLEADO,ID_CONCEPTO,ID_TIPO_ASIGNACION,MONTO,ESTADO,CREATED_AT,UPDATED_AT) 
VALUES (NEW.ID,17,2,0,'I',NOW(),NOW());
END IF; 

/*CONCEPTO #18*/
SELECT COUNT(ID_EMPLEADO) INTO VAR_CONCEP_18 FROM TBL_ASIGNACIONES WHERE ID_EMPLEADO = NEW.ID AND ID_CONCEPTO=18;
IF VAR_CONCEP_18 = 0 THEN
INSERT INTO TBL_ASIGNACIONES  (ID_EMPLEADO,ID_CONCEPTO,ID_TIPO_ASIGNACION,MONTO,ESTADO,CREATED_AT,UPDATED_AT) 
VALUES (NEW.ID,18,2,0,'A',NOW(),NOW());
END IF; 

/*CONCEPTO #19*/
SELECT COUNT(ID_EMPLEADO) INTO VAR_CONCEP_19 FROM TBL_ASIGNACIONES WHERE ID_EMPLEADO = NEW.ID AND ID_CONCEPTO=19;
IF VAR_CONCEP_19 = 0 THEN
INSERT INTO TBL_ASIGNACIONES  (ID_EMPLEADO,ID_CONCEPTO,ID_TIPO_ASIGNACION,MONTO,ESTADO,CREATED_AT,UPDATED_AT) 
VALUES (NEW.ID,19,2,0,'I',NOW(),NOW());
END IF; 

/*CONCEPTO #20*/
SELECT COUNT(ID_EMPLEADO) INTO VAR_CONCEP_20 FROM TBL_ASIGNACIONES WHERE ID_EMPLEADO = NEW.ID AND ID_CONCEPTO=20;
IF VAR_CONCEP_20 = 0 THEN
INSERT INTO TBL_ASIGNACIONES  (ID_EMPLEADO,ID_CONCEPTO,ID_TIPO_ASIGNACION,MONTO,ESTADO,CREATED_AT,UPDATED_AT) 
VALUES (NEW.ID,20,2,0,'A',NOW(),NOW());
END IF; 

/*CONCEPTO #21
SELECT COUNT(ID_EMPLEADO) INTO VAR_CONCEP_21 FROM TBL_ASIGNACIONES WHERE ID_EMPLEADO = NEW.ID AND ID_CONCEPTO=21;
IF VAR_CONCEP_21 = 0 THEN
INSERT INTO TBL_ASIGNACIONES  (ID_EMPLEADO,ID_CONCEPTO,ID_TIPO_ASIGNACION,MONTO,ESTADO,CREATED_AT,UPDATED_AT) 
VALUES (NEW.ID,21,2,0,'A',NOW(),NOW());
END IF; */

/*CONCEPTO #22*/
SELECT COUNT(ID_EMPLEADO) INTO VAR_CONCEP_22 FROM TBL_ASIGNACIONES WHERE ID_EMPLEADO = NEW.ID AND ID_CONCEPTO=22;
IF VAR_CONCEP_22 = 0 THEN
INSERT INTO TBL_ASIGNACIONES  (ID_EMPLEADO,ID_CONCEPTO,ID_TIPO_ASIGNACION,MONTO,ESTADO,CREATED_AT,UPDATED_AT) 
VALUES (NEW.ID,22,2,0,'A',NOW(),NOW());
END IF; 


/*CONCEPTO #22*/
SELECT COUNT(ID_EMPLEADO) INTO VAR_CONCEP_22 FROM TBL_ASIGNACIONES WHERE ID_EMPLEADO = NEW.ID AND ID_CONCEPTO=23;
IF VAR_CONCEP_22 = 0 THEN
INSERT INTO TBL_ASIGNACIONES  (ID_EMPLEADO,ID_CONCEPTO,ID_TIPO_ASIGNACION,MONTO,ESTADO,CREATED_AT,UPDATED_AT) 
VALUES (NEW.ID,23,2,0,'I',NOW(),NOW());
END IF; 

END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Volcando estructura para vista planilla.v_detalles_planilla_1q_quincenal_dic
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `v_detalles_planilla_1q_quincenal_dic`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `v_detalles_planilla_1q_quincenal_dic` AS SELECT 
tbl_descue_ley.ID_EMPLEADO,
tbl_descue_ley.SUELDO,
15 DIAS_QUINCENA,
(15-IFNULL(DIAS_FALTADOS,0)) DIAS_TRABAJADOS,
ROUND(tbl_descue_ley.SUELDO_QUINCENAL,8)calculo_salario,
IFNULL(tbl_prests.couota_mensual,0.00) PRESTAMOS,
tbl_varios.ANTICIPO,
tbl_descue_ley.BONOS,
tbl_descue_ley.BONOSV,
tbl_descue_ley.VACACION,
tbl_descue_ley.COMISION,
tbl_descue_ley.TOTALQUINCENA,
tbl_descue_ley.ISSS,
tbl_descue_ley.AFP,
tbl_descue_ley.IPSFA,
tbl_varios.FOSAFI,
tbl_descue_ley.baseret  AGUINALDO_AGRAVADO, 
tbl_descue_ley.RENTA,
ROUND(tbl_descue_ley.TOTAL_DESCUENTOS,8)TOTAL_DESCUENTOS, 
tbl_varios.PGR,
tbl_varios.FSV,
tbl_varios.DV,
tbl_varios.VIATICOS,
tbl_varios.REINTEGRO ,
ROUND(
(tbl_descue_ley.TOTALQUINCENA-tbl_descue_ley.TOTAL_DESCUENTOS-IFNULL(tbl_prests.couota_mensual,0.00)-
tbl_varios.PGR-tbl_varios.FSV-tbl_varios.ANTICIPO-tbl_varios.DV)
+tbl_varios.VIATICOS+tbl_varios.REINTEGRO,8)LIQUIDO_PAGAR

FROM
(
SELECT 
A.ID ID_EMPLEADO, A.NUM_CLIENTE, A.SUELDO,
((A.SUELDO-
IFNULL((SELECT A.DESCUENTO_PORFALTAS FROM (
SELECT A.id_empleado,((B.sueldo/30)*A.monto)DESCUENTO_PORFALTAS
FROM tbl_asignaciones A LEFT JOIN tbl_empleados B ON (A.id_empleado=B.id)
WHERE A.id_concepto=17  AND A.estado='A')A WHERE A.id_empleado =A.ID),0)

))SUELDO_MENSUAL,

((A.SUELDO/2)-IFNULL((SELECT A.DESCUENTO_PORFALTAS FROM (
SELECT A.id_empleado,((B.sueldo/30)*A.monto)DESCUENTO_PORFALTAS
FROM tbl_asignaciones A LEFT JOIN tbl_empleados B ON (A.id_empleado=B.id)
WHERE A.id_concepto=17  AND A.estado='A')A WHERE A.id_empleado =A.ID),0)) SUELDO_QUINCENAL,

CONCAT(Nombres, ' ', Apellidos) AS Nombre,
A.fecha_ingreso, tbl_bonos.BONOS, tbl_bonos.BONOSV, IFNULL(TBL_VACAC.vacacion,0.0) VACACION,

IFNULL(TBL_COMIC.COMISION,0.0)COMISION,

((A.SUELDO/2)-IFNULL((SELECT A.DESCUENTO_PORFALTAS FROM (
SELECT A.id_empleado,((B.sueldo/30)*A.monto)DESCUENTO_PORFALTAS
FROM tbl_asignaciones A LEFT JOIN tbl_empleados B ON (A.id_empleado=B.id)
WHERE A.id_concepto=17  AND A.estado='A')A WHERE A.id_empleado =A.ID),0))+IFNULL(tbl_bonos.BONOSV,0.0)+
IFNULL(tbl_bonos.BONOS,0.0)+ IFNULL(TBL_VACAC.vacacion,0.0)+ IFNULL(TBL_COMIC.COMISION,0.0)TOTALQUINCENA,

IFNULL(TBL_AFP.AFP,0)AFP,IFNULL(TBL_ISSS.ISSS,0)ISSS, TBL_IPSFA.IPSFA,tbl_bonos.FOSAFI, 

((((A.SUELDO/2)-IFNULL((SELECT A.DESCUENTO_PORFALTAS FROM (
SELECT A.id_empleado,((B.sueldo/30)*A.monto)DESCUENTO_PORFALTAS
FROM tbl_asignaciones A LEFT JOIN tbl_empleados B ON (A.id_empleado=B.id)
WHERE A.id_concepto=17  AND A.estado='A')A WHERE A.id_empleado =A.ID),0))+ 
IFNULL(tbl_bonos.BONOS,0.0)+ IFNULL(TBL_VACAC.vacacion,0.0)+ IFNULL(TBL_COMIC.COMISION,0.0)
-IFNULL(TBL_ISSS.ISSS,0)-TBL_AFP.AFP-TBL_IPSFA.IPSFA)+tbl_bonos.BONOSV)QUINCENARENTA,

IFNULL((SELECT A.DESCUENTO_PORFALTAS FROM (
SELECT A.id_empleado,((B.sueldo/30)*A.monto)DESCUENTO_PORFALTAS
FROM tbl_asignaciones A LEFT JOIN tbl_empleados B ON (A.id_empleado=B.id)
WHERE A.id_concepto=17  AND A.estado='A')A WHERE A.id_empleado =A.ID),0) DESCUENTO_FALTA,

IFNULL((SELECT A.DIAS_FALTADOS FROM (
SELECT A.id_empleado,ROUND(A.monto,0) DIAS_FALTADOS
FROM tbl_asignaciones A LEFT JOIN tbl_empleados B ON (A.id_empleado=B.id)
WHERE A.id_concepto=17  AND A.estado='A')A WHERE A.id_empleado =A.ID),0) DIAS_FALTADOS,

 
ifnull(TBL_BRETENC.BASE_RETENCION,0.0)baseret,


ROUND(
(((((A.SUELDO/2)+ifnull(TBL_BRETENC.BASE_RETENCION,0.0)+
IFNULL(tbl_bonos.BONOS,0.0)+ IFNULL(TBL_VACAC.vacacion,0.0)+ IFNULL(TBL_COMIC.COMISION,0.0)+tbl_bonos.BONOSV)
-
(IFNULL((SELECT A.DESCUENTO_PORFALTAS FROM (
SELECT A.id_empleado,((B.sueldo/30)*A.monto)DESCUENTO_PORFALTAS
FROM tbl_asignaciones A LEFT JOIN tbl_empleados B ON (A.id_empleado=B.id)
WHERE A.id_concepto=17  AND A.estado='A')A WHERE A.id_empleado =A.ID),0)
+IFNULL(TBL_ISSS.ISSS,0)+TBL_AFP.AFP+TBL_IPSFA.IPSFA))-D.SOBRE_EXCESO)*D.PORCENTAJE_MIN)+D.CUOTA,8)RENTA,


(TBL_AFP.AFP+IFNULL(TBL_ISSS.ISSS,0)+TBL_IPSFA.IPSFA+tbl_bonos.FOSAFI
+
ROUND(
(((((A.SUELDO/2)+ifnull(TBL_BRETENC.BASE_RETENCION,0.0)+
IFNULL(tbl_bonos.BONOS,0.0)+ IFNULL(TBL_VACAC.vacacion,0.0)+ IFNULL(TBL_COMIC.COMISION,0.0)+tbl_bonos.BONOSV)
-
(IFNULL((SELECT A.DESCUENTO_PORFALTAS FROM (
SELECT A.id_empleado,((B.sueldo/30)*A.monto)DESCUENTO_PORFALTAS
FROM tbl_asignaciones A LEFT JOIN tbl_empleados B ON (A.id_empleado=B.id)
WHERE A.id_concepto=17  AND A.estado='A')A WHERE A.id_empleado =A.ID),0)
+IFNULL(TBL_ISSS.ISSS,0)+TBL_AFP.AFP+TBL_IPSFA.IPSFA))-D.SOBRE_EXCESO)*D.PORCENTAJE_MIN)+D.CUOTA,8)

)TOTAL_DESCUENTOS

FROM TBL_EMPLEADOS A
LEFT JOIN TBL_ASIGNACIONES B ON (A.ID=B.ID_EMPLEADO AND a.estado = 'A')
LEFT JOIN TBL_CONCEPTOS C ON (C.ID=B.ID_CONCEPTO)
LEFT JOIN TBL_OPERACIONES D ON (C.ID=D.ID_CONCEPTO)
LEFT JOIN -- --------------------------------------------------------------------EL DATO DE BASE DE RETENCION 

(SELECT (A.base_ingreso_isr) BASE_RETENCION ,A.CREATED_AT,B.id_tipo_planilla,A.ID_EMPLEADO
 FROM tbl_detalle_planillas_ai A INNER JOIN 
 tbl_planillas B ON (A.ID_PLANILLA=B.id)
 ) TBL_BRETENC ON (TBL_BRETENC.ID_EMPLEADO=A.ID AND YEAR(TBL_BRETENC.CREATED_AT) = YEAR(NOW()) AND TBL_BRETENC.id_tipo_planilla= 3)

LEFT JOIN -- --------------------------------------------------------------------BONOS 
(SELECT id_empleado, SUM((CASE WHEN (id_concepto = 15 AND estado ='A') THEN (monto/2) ELSE 0 END))BONOS, 
SUM((CASE WHEN (id_concepto = 16 AND estado ='A') THEN (monto) ELSE 0 END))BONOSV,
SUM((case when (id_concepto = 6  AND estado ='A') then (monto/2) ELSE 0 END))FOSAFI
FROM tbl_asignaciones
GROUP BY id_empleado ) tbl_bonos ON (A.ID=tbl_bonos.id_empleado) -- SUBCONSULTA PARA SACAR LOS BONOS ACTIVOS y el descuento de fosafi
LEFT JOIN -- -----------------------------------------------------------------------AFP 
(
SELECT A.ID ID_EMPLEADO, 
(CASE WHEN B.ESTADO ='A' THEN  
SUM((CASE WHEN (ROUND(((A.SUELDO/2)-IFNULL((SELECT A.DESCUENTO_PORFALTAS FROM (
SELECT A.id_empleado,((B.sueldo/30)*A.monto)DESCUENTO_PORFALTAS
FROM tbl_asignaciones A LEFT JOIN tbl_empleados B ON (A.id_empleado=B.id)
WHERE A.id_concepto=17  AND A.estado='A')A WHERE A.id_empleado =A.ID),0)),8)+ IFNULL(E.BONOS,0.0)+ IFNULL(F.vacacion,0.0)+ IFNULL(G.COMISION,0.0) > D.HASTA) 
THEN (D.HASTA*D.PORCENTAJE_MIN) 
WHEN (ROUND(((A.SUELDO/2)-IFNULL((SELECT A.DESCUENTO_PORFALTAS FROM (
SELECT A.id_empleado,((B.sueldo/30)*A.monto)DESCUENTO_PORFALTAS
FROM tbl_asignaciones A LEFT JOIN tbl_empleados B ON (A.id_empleado=B.id)
WHERE A.id_concepto=17  AND A.estado='A')A WHERE A.id_empleado =A.ID),0)),8)+ IFNULL(E.BONOS,0.0)+ IFNULL(F.vacacion,0.0)+ IFNULL(G.COMISION,0.0) < D.HASTA) 
THEN FORMAT((ROUND(((A.SUELDO/2)-IFNULL((SELECT A.DESCUENTO_PORFALTAS FROM (
SELECT A.id_empleado,((B.sueldo/30)*A.monto)DESCUENTO_PORFALTAS
FROM tbl_asignaciones A LEFT JOIN tbl_empleados B ON (A.id_empleado=B.id)
WHERE A.id_concepto=17  AND A.estado='A')A WHERE A.id_empleado =A.ID),0)),8)+ IFNULL(E.BONOS,0.0)+ IFNULL(F.vacacion,0.0)+ IFNULL(G.COMISION,0.0))*D.PORCENTAJE_MIN,8) END))
ELSE 0 END)
 AFP

FROM tbl_empleados A
LEFT JOIN TBL_ASIGNACIONES B ON (A.ID=B.ID_EMPLEADO)
LEFT JOIN TBL_CONCEPTOS C ON (C.ID=B.ID_CONCEPTO)
LEFT JOIN TBL_OPERACIONES D ON (C.ID=D.ID_CONCEPTO)
LEFT JOIN 
(
SELECT id_empleado, SUM((CASE WHEN (id_concepto = 15 AND estado ='A') THEN (monto/2) ELSE 0 END))BONOS
FROM tbl_asignaciones
GROUP BY id_empleado)E ON (A.ID=E.id_empleado)
LEFT JOIN 
(

SELECT
VACACION.ID_EMPLEADO,

ROUND(
(CASE WHEN VACACION.ESTADOVACA='A' THEN 
(VACACION.VACACION_LEY+VACACION.VACACION_POLITICA+VACACION.PROMEDIO_DE_COMISION_18_DIAS)
ELSE 0 END ),8)vacacion

FROM(
SELECT A.ID_EMPLEADO,NOMBRECOMPLETO,SUM(A.VACACION_LEY)VACACION_LEY,SUM(A.VACACION_POLITICA)VACACION_POLITICA,
A.PROMEDIO_DE_COMISION_18_DIAS, A.ESTADOVACA,A.COMSION,A.SUELDO,A.NUM_CLIENTE,A.TOTALDIAS,A.COMISIONS,
A.PUESTO,A.FECHA_INGRESO,A.DESDE,A.HASTA,(CASE WHEN B.ESTADO= 'A' THEN B.PORCENTAJE_MIN ELSE 0 END)PGR
FROM
(SELECT B.ESTADO ESTADOVACA,A.ID ID_EMPLEADO, A.SUELDO,IFNULL(F.COMSION,0)COMSION,
CONCAT(A.NOMBRES,' ',A.APELLIDOS) NOMBRECOMPLETO,A.NUM_CLIENTE,G.NOMBRE PUESTO,
A.FECHA_INGRESO,
TIMESTAMPDIFF(DAY, DATE_ADD(A.FECHA_INGRESO, INTERVAL TIMESTAMPDIFF(YEAR, A.FECHA_INGRESO, CURDATE()) YEAR),
DATE_ADD(DATE_ADD(A.FECHA_INGRESO, INTERVAL TIMESTAMPDIFF(YEAR, A.FECHA_INGRESO, CURDATE()) YEAR), INTERVAL '1' YEAR))TOTALDIAS,
DATE_ADD(A.FECHA_INGRESO, INTERVAL TIMESTAMPDIFF(YEAR, A.FECHA_INGRESO,CURDATE()) YEAR)DESDE,
DATE_ADD(DATE_ADD(A.FECHA_INGRESO, INTERVAL TIMESTAMPDIFF(YEAR, A.FECHA_INGRESO, CURDATE()) YEAR), INTERVAL '1' YEAR)HASTA,
ROUND((CASE WHEN B.ID_CONCEPTO IN (14) THEN ((((A.SUELDO+IFNULL(F.COMSION,0))/30)*18)*D.PORCENTAJE_MAX) ELSE 0 END),8) VACACION_LEY,
ROUND((CASE WHEN B.ID_CONCEPTO IN (13) THEN ((((A.SUELDO+IFNULL(F.COMSION,0))/30)*18)*D.PORCENTAJE_MAX)ELSE 0 END),8) VACACION_POLITICA,
ROUND((IFNULL(F.COMSION,0)/30)*18,8) PROMEDIO_DE_COMISION_18_DIAS,
ROUND((IFNULL(A.SUELDO+IFNULL(F.COMSION,0),0)/30)*18,8)  COMISIONS    


FROM TBL_EMPLEADOS A
LEFT JOIN TBL_ASIGNACIONES B ON (A.ID=B.ID_EMPLEADO)
LEFT JOIN TBL_CONCEPTOS C ON (C.ID=B.ID_CONCEPTO)
LEFT JOIN TBL_OPERACIONES D ON (C.ID=D.ID_CONCEPTO)
LEFT JOIN
(


SELECT  A.ID_EMPLEADO,ROUND(IFNULL((CASE WHEN A.CANTIDAD>=6 THEN IFNULL(A.COMISION,0.0)/6
ELSE IFNULL(A.COMISION,0.0)/A.CANTIDAD END ),0)+IFNULL(b.total_bono,0.0),8)COMSION ,A.NUM_CLIENTE
FROM  (SELECT A.ID ID_EMPLEADO,F.num_cliente ,
SUM((CASE WHEN F.FECHA_CREACION BETWEEN DATE_SUB(CURDATE(), INTERVAL 7 MONTH) AND DATE_SUB(CURDATE(),INTERVAL 1  MONTH) 
THEN F.COMISION ELSE 0 END)) COMISION, COUNT(F.COMISION)CANTIDAD
FROM TBL_EMPLEADOS A LEFT JOIN TBL_COMISIONES F ON (F.NUM_CLIENTE=A.NUM_CLIENTE)
 GROUP BY A.ID,F.num_cliente 
)A

LEFT JOIN 
(
SELECT
 A.ID_EMPLEADO,ROUND(IFNULL((CASE WHEN A.CANTIDAD>=6 THEN (A.totalbonos)/6
ELSE (A.totalbonos)/A.CANTIDAD END ),0),8)total_bono 
FROM 
(
SELECT a.id_empleado, 
SUM(a.bonos)totalbonos,
COUNT(a.bonos)CANTIDAD
FROM tbl_detalle_planillas a 
INNER JOIN tbl_planillas b ON (a.id_planilla=b.id AND b.id_tipo_planilla=1)
WHERE a.bonos >0
AND (CASE WHEN b.f_inicio_planilla BETWEEN DATE_SUB(CURDATE(), INTERVAL '6' MONTH) AND DATE_SUB(CURDATE(),INTERVAL 1  MONTH) 
THEN a.bonos ELSE 0 END)
GROUP BY a.id_empleado
)A )b ON (A.ID_EMPLEADO=b.id_empleado)

) F ON (F.ID_EMPLEADO=A.id)
LEFT JOIN TBL_PUESTOS G ON (G.ID=A.ID_PUESTO)
WHERE C.ID IN (13,14) AND B.ID_CONCEPTO IS NOT NULL
)A INNER JOIN
(SELECT A.ESTADO,B.PORCENTAJE_MIN,A.ID_EMPLEADO FROM TBL_ASIGNACIONES A
INNER JOIN TBL_OPERACIONES B ON (A.ID_CONCEPTO=B.ID_CONCEPTO)
WHERE A.ID_CONCEPTO =19)B ON (A.ID_EMPLEADO=B.ID_EMPLEADO)
GROUP BY PROMEDIO_DE_COMISION_18_DIAS,B.PORCENTAJE_MIN,A.ID_EMPLEADO,A.ESTADOVACA,B.ESTADO,A.COMSION,
NOMBRECOMPLETO,A.NUM_CLIENTE,A.SUELDO,A.FECHA_INGRESO,A.DESDE,A.HASTA,A.PUESTO,A.COMISIONS
)VACACION 

) F ON (A.ID=F.id_empleado) LEFT JOIN 
( SELECT B.id id_empleado,A.NUM_CLIENTE,A.COMISION
FROM tbl_comisiones A LEFT JOIN tbl_empleados B ON (A.num_cliente=B.num_cliente)
WHERE MONTH(FECHA_CREACION) = MONTH(CURDATE() ) AND DAY(CURDATE()) BETWEEN 1 AND 15) G ON (A.ID=G.id_empleado)
WHERE C.ID IN (2) GROUP BY A.ID , B.ESTADO

)	tBL_AFP ON (TBL_AFP.ID_EMPLEADO=A.ID)  -- ---------------------------------------------FIN
/* QUERY PARA SACAR EL CALCULO INDIVIDUAL DE AFP EN EL ESTAN SUB CONSULTAS
PARA SACAR LA RENTA COMISIONES Y BONOS FIJOS  ESTAN ECHOS DE SUB CONSULTAS TODOS LOS CALCULOS MENSUALES*/
-- -----------------------------------------------------------------------ISSs
LEFT JOIN
( 




SELECT A.ID_EMPLEADO,
(case when A.estado = 'A' then A.ISSS ELSE 0 END )ISSS,A.estado
FROM (SELECT A.ID ID_EMPLEADO,
ROUND ((case when DAY(NOW()) BETWEEN 1 AND 15 then
(CASE WHEN
(((A.SUELDO/2)-IFNULL((SELECT A.DESCUENTO_PORFALTAS FROM (
SELECT A.id_empleado,((B.sueldo/30)*A.monto)DESCUENTO_PORFALTAS
FROM tbl_asignaciones A LEFT JOIN tbl_empleados B ON (A.id_empleado=B.id)
WHERE A.id_concepto=17  AND A.estado='A')A WHERE A.id_empleado =A.ID),0))
+ IFNULL(E.BONOS,0.0)+ IFNULL(F.vacacion,0.0)+ IFNULL(G.COMISION,0.0)) >=1000 THEN 30
 ELSE 
(((A.SUELDO/2)-IFNULL((SELECT A.DESCUENTO_PORFALTAS FROM (
SELECT A.id_empleado,((B.sueldo/30)*A.monto)DESCUENTO_PORFALTAS
FROM tbl_asignaciones A LEFT JOIN tbl_empleados B ON (A.id_empleado=B.id)
WHERE A.id_concepto=17  AND A.estado='A')A WHERE A.id_empleado =A.ID),0))+ IFNULL(E.BONOS,0.0)+ IFNULL(F.vacacion,0.0)+ IFNULL(G.COMISION,0.0))*D.PORCENTAJE_MIN
END)

when DAY(NOW()) BETWEEN 16 AND 31 then
(CASE WHEN ifnull(h.isss_anterior,0.0) = 30 THEN 
0 ELSE
(case when ifnull(h.salarioplanillaisss,0.0)+
(((A.SUELDO/2)-IFNULL((SELECT A.DESCUENTO_PORFALTAS FROM (
SELECT A.id_empleado,((B.sueldo/30)*A.monto)DESCUENTO_PORFALTAS
FROM tbl_asignaciones A LEFT JOIN tbl_empleados B ON (A.id_empleado=B.id)
WHERE A.id_concepto=17  AND A.estado='A')A WHERE A.id_empleado =A.ID),0))+ IFNULL(E.BONOS,0.0)
+ IFNULL(F.vacacion,0.0)+ IFNULL(G.COMISION,0.0)) >=1000 then (30-ifnull(h.isss_anterior,0.0))
ELSE 
(((A.SUELDO/2)-IFNULL((SELECT A.DESCUENTO_PORFALTAS FROM (
SELECT A.id_empleado,((B.sueldo/30)*A.monto)DESCUENTO_PORFALTAS
FROM tbl_asignaciones A LEFT JOIN tbl_empleados B ON (A.id_empleado=B.id)
WHERE A.id_concepto=17  AND A.estado='A')A WHERE A.id_empleado =A.ID),0))+ IFNULL(E.BONOS,0.0)+ 
IFNULL(F.vacacion,0.0)+ IFNULL(G.COMISION,0.0)) *D.PORCENTAJE_MIN END )
END) END ),8) ISSS,b.estado
FROM tbl_empleados A LEFT JOIN TBL_ASIGNACIONES B ON (A.ID=B.ID_EMPLEADO) LEFT JOIN TBL_CONCEPTOS C ON (C.ID=B.ID_CONCEPTO)
LEFT JOIN TBL_OPERACIONES D ON (C.ID=D.ID_CONCEPTO) LEFT JOIN 
( SELECT id_empleado, SUM((CASE WHEN (id_concepto = 15 AND estado ='A') THEN (monto/2) ELSE 0 END))BONOS
FROM tbl_asignaciones GROUP BY id_empleado)E ON (A.ID=E.id_empleado)
LEFT JOIN 
( 
SELECT
VACACION.ID_EMPLEADO,

ROUND(
(CASE WHEN VACACION.ESTADOVACA='A' THEN 
(VACACION.VACACION_LEY+VACACION.VACACION_POLITICA+VACACION.PROMEDIO_DE_COMISION_18_DIAS)
ELSE 0 END ),8)vacacion

FROM(
SELECT A.ID_EMPLEADO,NOMBRECOMPLETO,SUM(A.VACACION_LEY)VACACION_LEY,SUM(A.VACACION_POLITICA)VACACION_POLITICA,
A.PROMEDIO_DE_COMISION_18_DIAS, A.ESTADOVACA,A.COMSION,A.SUELDO,A.NUM_CLIENTE,A.TOTALDIAS,A.COMISIONS,
A.PUESTO,A.FECHA_INGRESO,A.DESDE,A.HASTA,(CASE WHEN B.ESTADO= 'A' THEN B.PORCENTAJE_MIN ELSE 0 END)PGR
FROM
(SELECT B.ESTADO ESTADOVACA,A.ID ID_EMPLEADO, A.SUELDO,IFNULL(F.COMSION,0)COMSION,
CONCAT(A.NOMBRES,' ',A.APELLIDOS) NOMBRECOMPLETO,A.NUM_CLIENTE,G.NOMBRE PUESTO,
A.FECHA_INGRESO,
TIMESTAMPDIFF(DAY, DATE_ADD(A.FECHA_INGRESO, INTERVAL TIMESTAMPDIFF(YEAR, A.FECHA_INGRESO, CURDATE()) YEAR),
DATE_ADD(DATE_ADD(A.FECHA_INGRESO, INTERVAL TIMESTAMPDIFF(YEAR, A.FECHA_INGRESO, CURDATE()) YEAR), INTERVAL '1' YEAR))TOTALDIAS,
DATE_ADD(A.FECHA_INGRESO, INTERVAL TIMESTAMPDIFF(YEAR, A.FECHA_INGRESO,CURDATE()) YEAR)DESDE,
DATE_ADD(DATE_ADD(A.FECHA_INGRESO, INTERVAL TIMESTAMPDIFF(YEAR, A.FECHA_INGRESO, CURDATE()) YEAR), INTERVAL '1' YEAR)HASTA,
ROUND((CASE WHEN B.ID_CONCEPTO IN (14) THEN ((((A.SUELDO+IFNULL(F.COMSION,0))/30)*18)*D.PORCENTAJE_MAX) ELSE 0 END),8) VACACION_LEY,
ROUND((CASE WHEN B.ID_CONCEPTO IN (13) THEN ((((A.SUELDO+IFNULL(F.COMSION,0))/30)*18)*D.PORCENTAJE_MAX)ELSE 0 END),8) VACACION_POLITICA,
ROUND((IFNULL(F.COMSION,0)/30)*18,8) PROMEDIO_DE_COMISION_18_DIAS,
ROUND((IFNULL(A.SUELDO+IFNULL(F.COMSION,0),0)/30)*18,8)  COMISIONS    


FROM TBL_EMPLEADOS A
LEFT JOIN TBL_ASIGNACIONES B ON (A.ID=B.ID_EMPLEADO)
LEFT JOIN TBL_CONCEPTOS C ON (C.ID=B.ID_CONCEPTO)
LEFT JOIN TBL_OPERACIONES D ON (C.ID=D.ID_CONCEPTO)
LEFT JOIN
(


SELECT  A.ID_EMPLEADO,ROUND(IFNULL((CASE WHEN A.CANTIDAD>=6 THEN IFNULL(A.COMISION,0.0)/6
ELSE IFNULL(A.COMISION,0.0)/A.CANTIDAD END ),0)+IFNULL(b.total_bono,0.0),8)COMSION ,A.NUM_CLIENTE
FROM  (SELECT A.ID ID_EMPLEADO,F.num_cliente ,
SUM((CASE WHEN F.FECHA_CREACION BETWEEN DATE_SUB(CURDATE(), INTERVAL 7 MONTH) AND DATE_SUB(CURDATE(),INTERVAL 1  MONTH) 
THEN F.COMISION ELSE 0 END)) COMISION, COUNT(F.COMISION)CANTIDAD
FROM TBL_EMPLEADOS A LEFT JOIN TBL_COMISIONES F ON (F.NUM_CLIENTE=A.NUM_CLIENTE)
 GROUP BY A.ID,F.num_cliente 
)A

LEFT JOIN 
(
SELECT
 A.ID_EMPLEADO,ROUND(IFNULL((CASE WHEN A.CANTIDAD>=6 THEN (A.totalbonos)/6
ELSE (A.totalbonos)/A.CANTIDAD END ),0),8)total_bono 
FROM 
(
SELECT a.id_empleado, 
SUM(a.bonos)totalbonos,
COUNT(a.bonos)CANTIDAD
FROM tbl_detalle_planillas a 
INNER JOIN tbl_planillas b ON (a.id_planilla=b.id AND b.id_tipo_planilla=1)
WHERE a.bonos >0
AND (CASE WHEN b.f_inicio_planilla BETWEEN DATE_SUB(CURDATE(), INTERVAL '6' MONTH) AND DATE_SUB(CURDATE(),INTERVAL 1  MONTH) 
THEN a.bonos ELSE 0 END)
GROUP BY a.id_empleado
)A )b ON (A.ID_EMPLEADO=b.id_empleado)

) F ON (F.ID_EMPLEADO=A.id)
LEFT JOIN TBL_PUESTOS G ON (G.ID=A.ID_PUESTO)
WHERE C.ID IN (13,14) AND B.ID_CONCEPTO IS NOT NULL
)A INNER JOIN
(SELECT A.ESTADO,B.PORCENTAJE_MIN,A.ID_EMPLEADO FROM TBL_ASIGNACIONES A
INNER JOIN TBL_OPERACIONES B ON (A.ID_CONCEPTO=B.ID_CONCEPTO)
WHERE A.ID_CONCEPTO =19)B ON (A.ID_EMPLEADO=B.ID_EMPLEADO)
GROUP BY PROMEDIO_DE_COMISION_18_DIAS,B.PORCENTAJE_MIN,A.ID_EMPLEADO,A.ESTADOVACA,B.ESTADO,A.COMSION,
NOMBRECOMPLETO,A.NUM_CLIENTE,A.SUELDO,A.FECHA_INGRESO,A.DESDE,A.HASTA,A.PUESTO,A.COMISIONS
)VACACION 

) F ON (A.ID=F.id_empleado)
LEFT JOIN  ( SELECT B.id id_empleado,A
.NUM_CLIENTE,A.COMISION, MONTH(A.FECHA_CREACION),FECHA_CREACION, MONTH(CURDATE() - INTERVAL 1 MONTH), DAY(A.FECHA_CREACION)
FROM tbl_comisiones A LEFT JOIN tbl_empleados B ON (A.num_cliente=B.num_cliente)
WHERE MONTH(FECHA_CREACION) = MONTH(CURDATE() ) AND DAY(CURDATE()) BETWEEN 1 AND 15) G ON (A.ID=G.id_empleado)
LEFT JOIN 
(SELECT a.id_empleado,a.isss isss_anterior,(a.calculo_salario+a.bonos+a.vacaciones+a.comision)salarioplanillaisss
FROM  tbl_detalle_planillas a  
INNER JOIN tbl_planillas b ON (a.id_planilla=b.id AND b.id_tipo_planilla=1)
WHERE YEAR(b.f_inicio_planilla)=YEAR(NOW()) AND MONTH(b.f_inicio_planilla)=MONTH(NOW()) ) h ON (A.ID=h.id_empleado)
WHERE C.ID = 4 
)
A GROUP BY  A.ID_EMPLEADO,A.ISSS ,A.estado 





) TBL_ISSS ON (TBL_ISSS.ID_EMPLEADO=A.ID)
-- ---------------------------------------------FIN
/* QUERY PARA SACAR EL CALCULO INDIVIDUAL DE ISS EN EL ESTAN SUB CONSULTAS
PARA SACAR LA RENTA COMISIONES Y BONOS FIJOS  ESTAN ECHOS DE SUB CONSULTAS TODOS LOS CALCULOS MENSUALES*/
-- -----------------------------------------------------------------------TBL_IPSFA
LEFT JOIN
(
SELECT A.ID ID_EMPLEADO,
 (CASE WHEN B.ESTADO = 'A' THEN  (((A.SUELDO/2)-IFNULL((SELECT A.DESCUENTO_PORFALTAS FROM (
SELECT A.id_empleado,((B.sueldo/30)*A.monto)DESCUENTO_PORFALTAS
FROM tbl_asignaciones A LEFT JOIN tbl_empleados B ON (A.id_empleado=B.id)
WHERE A.id_concepto=17  AND A.estado='A')A WHERE A.id_empleado =A.ID),0))+ IFNULL(E.BONOS,0.0)+ IFNULL(F.vacacion,0.0)+ IFNULL(G.COMISION,0.0))*d.porcentaje_min ELSE 0 END) IPSFA


FROM tbl_empleados A LEFT JOIN TBL_ASIGNACIONES B ON (A.ID=B.ID_EMPLEADO) LEFT JOIN TBL_CONCEPTOS C ON (C.ID=B.ID_CONCEPTO)
LEFT JOIN TBL_OPERACIONES D ON (C.ID=D.ID_CONCEPTO) LEFT JOIN  (SELECT id_empleado, SUM((CASE WHEN (id_concepto = 15 AND estado ='A') THEN (monto/2) ELSE 0 END))BONOS
FROM tbl_asignaciones GROUP BY id_empleado)E ON (A.ID=E.id_empleado) LEFT JOIN 
(

SELECT
VACACION.ID_EMPLEADO,

ROUND(
(CASE WHEN VACACION.ESTADOVACA='A' THEN 
(VACACION.VACACION_LEY+VACACION.VACACION_POLITICA+VACACION.PROMEDIO_DE_COMISION_18_DIAS)
ELSE 0 END ),8)vacacion

FROM(
SELECT A.ID_EMPLEADO,NOMBRECOMPLETO,SUM(A.VACACION_LEY)VACACION_LEY,SUM(A.VACACION_POLITICA)VACACION_POLITICA,
A.PROMEDIO_DE_COMISION_18_DIAS, A.ESTADOVACA,A.COMSION,A.SUELDO,A.NUM_CLIENTE,A.TOTALDIAS,A.COMISIONS,
A.PUESTO,A.FECHA_INGRESO,A.DESDE,A.HASTA,(CASE WHEN B.ESTADO= 'A' THEN B.PORCENTAJE_MIN ELSE 0 END)PGR
FROM
(SELECT B.ESTADO ESTADOVACA,A.ID ID_EMPLEADO, A.SUELDO,IFNULL(F.COMSION,0)COMSION,
CONCAT(A.NOMBRES,' ',A.APELLIDOS) NOMBRECOMPLETO,A.NUM_CLIENTE,G.NOMBRE PUESTO,
A.FECHA_INGRESO,
TIMESTAMPDIFF(DAY, DATE_ADD(A.FECHA_INGRESO, INTERVAL TIMESTAMPDIFF(YEAR, A.FECHA_INGRESO, CURDATE()) YEAR),
DATE_ADD(DATE_ADD(A.FECHA_INGRESO, INTERVAL TIMESTAMPDIFF(YEAR, A.FECHA_INGRESO, CURDATE()) YEAR), INTERVAL '1' YEAR))TOTALDIAS,
DATE_ADD(A.FECHA_INGRESO, INTERVAL TIMESTAMPDIFF(YEAR, A.FECHA_INGRESO,CURDATE()) YEAR)DESDE,
DATE_ADD(DATE_ADD(A.FECHA_INGRESO, INTERVAL TIMESTAMPDIFF(YEAR, A.FECHA_INGRESO, CURDATE()) YEAR), INTERVAL '1' YEAR)HASTA,
ROUND((CASE WHEN B.ID_CONCEPTO IN (14) THEN ((((A.SUELDO+IFNULL(F.COMSION,0))/30)*18)*D.PORCENTAJE_MAX) ELSE 0 END),8) VACACION_LEY,
ROUND((CASE WHEN B.ID_CONCEPTO IN (13) THEN ((((A.SUELDO+IFNULL(F.COMSION,0))/30)*18)*D.PORCENTAJE_MAX)ELSE 0 END),8) VACACION_POLITICA,
ROUND((IFNULL(F.COMSION,0)/30)*18,8) PROMEDIO_DE_COMISION_18_DIAS,
ROUND((IFNULL(A.SUELDO+IFNULL(F.COMSION,0),0)/30)*18,8)  COMISIONS    


FROM TBL_EMPLEADOS A
LEFT JOIN TBL_ASIGNACIONES B ON (A.ID=B.ID_EMPLEADO)
LEFT JOIN TBL_CONCEPTOS C ON (C.ID=B.ID_CONCEPTO)
LEFT JOIN TBL_OPERACIONES D ON (C.ID=D.ID_CONCEPTO)
LEFT JOIN
(


SELECT  A.ID_EMPLEADO,ROUND(IFNULL((CASE WHEN A.CANTIDAD>=6 THEN IFNULL(A.COMISION,0.0)/6
ELSE IFNULL(A.COMISION,0.0)/A.CANTIDAD END ),0)+IFNULL(b.total_bono,0.0),8)COMSION ,A.NUM_CLIENTE
FROM  (SELECT A.ID ID_EMPLEADO,F.num_cliente ,
SUM((CASE WHEN F.FECHA_CREACION BETWEEN DATE_SUB(CURDATE(), INTERVAL 7 MONTH) AND DATE_SUB(CURDATE(),INTERVAL 1  MONTH) 
THEN F.COMISION ELSE 0 END)) COMISION, COUNT(F.COMISION)CANTIDAD
FROM TBL_EMPLEADOS A LEFT JOIN TBL_COMISIONES F ON (F.NUM_CLIENTE=A.NUM_CLIENTE)
 GROUP BY A.ID,F.num_cliente 
)A

LEFT JOIN 
(
SELECT
 A.ID_EMPLEADO,ROUND(IFNULL((CASE WHEN A.CANTIDAD>=6 THEN (A.totalbonos)/6
ELSE (A.totalbonos)/A.CANTIDAD END ),0),8)total_bono 
FROM 
(
SELECT a.id_empleado, 
SUM(a.bonos)totalbonos,
COUNT(a.bonos)CANTIDAD
FROM tbl_detalle_planillas a 
INNER JOIN tbl_planillas b ON (a.id_planilla=b.id AND b.id_tipo_planilla=1)
WHERE a.bonos >0
AND (CASE WHEN b.f_inicio_planilla BETWEEN DATE_SUB(CURDATE(), INTERVAL '6' MONTH) AND DATE_SUB(CURDATE(),INTERVAL 1  MONTH) 
THEN a.bonos ELSE 0 END)
GROUP BY a.id_empleado
)A )b ON (A.ID_EMPLEADO=b.id_empleado)

) F ON (F.ID_EMPLEADO=A.id)
LEFT JOIN TBL_PUESTOS G ON (G.ID=A.ID_PUESTO)
WHERE C.ID IN (13,14) AND B.ID_CONCEPTO IS NOT NULL
)A INNER JOIN
(SELECT A.ESTADO,B.PORCENTAJE_MIN,A.ID_EMPLEADO FROM TBL_ASIGNACIONES A
INNER JOIN TBL_OPERACIONES B ON (A.ID_CONCEPTO=B.ID_CONCEPTO)
WHERE A.ID_CONCEPTO =19)B ON (A.ID_EMPLEADO=B.ID_EMPLEADO)
GROUP BY PROMEDIO_DE_COMISION_18_DIAS,B.PORCENTAJE_MIN,A.ID_EMPLEADO,A.ESTADOVACA,B.ESTADO,A.COMSION,
NOMBRECOMPLETO,A.NUM_CLIENTE,A.SUELDO,A.FECHA_INGRESO,A.DESDE,A.HASTA,A.PUESTO,A.COMISIONS
)VACACION 
) F ON (A.ID=F.id_empleado)
LEFT JOIN  ( SELECT B.id id_empleado,A.NUM_CLIENTE,A.COMISION, MONTH(A.FECHA_CREACION),FECHA_CREACION, MONTH(CURDATE() - INTERVAL 1 MONTH), DAY(A.FECHA_CREACION)
FROM tbl_comisiones A LEFT JOIN tbl_empleados B ON (A.num_cliente=B.num_cliente)
WHERE MONTH(FECHA_CREACION) = MONTH(CURDATE()) AND DAY(CURDATE()) BETWEEN 1 AND 15) G ON (A.ID=G.id_empleado)
WHERE C.ID = 5



) 	TBL_IPSFA ON (A.ID=TBL_IPSFA.ID_EMPLEADO)
-- ---------------------------------------------FIN
/* QUERY PARA SACAR EL CALCULO INDIVIDUAL DE TBL_IPSFA EN EL ESTAN SUB CONSULTAS
PARA SACAR LA RENTA COMISIONES Y BONOS FIJOS  ESTAN ECHOS DE SUB CONSULTAS TODOS LOS CALCULOS MENSUALES*/
-- -----------------------------------------------------------------------VACACIONES 
LEFT JOIN
( 
SELECT
VACACION.ID_EMPLEADO,
ROUND(
(CASE WHEN VACACION.ESTADOVACA='A' THEN 
(VACACION.VACACION_LEY+VACACION.VACACION_POLITICA+VACACION.PROMEDIO_DE_COMISION_18_DIAS)
ELSE 0 END ),8)vacacion
FROM(
SELECT A.ID_EMPLEADO,NOMBRECOMPLETO,SUM(A.VACACION_LEY)VACACION_LEY,SUM(A.VACACION_POLITICA)VACACION_POLITICA,
A.PROMEDIO_DE_COMISION_18_DIAS, A.ESTADOVACA,A.COMSION,A.SUELDO,A.NUM_CLIENTE,A.TOTALDIAS,A.COMISIONS,
A.PUESTO,A.FECHA_INGRESO,A.DESDE,A.HASTA,(CASE WHEN B.ESTADO= 'A' THEN B.PORCENTAJE_MIN ELSE 0 END)PGR
FROM
(SELECT B.ESTADO ESTADOVACA,A.ID ID_EMPLEADO, A.SUELDO,IFNULL(F.COMSION,0)COMSION,
CONCAT(A.NOMBRES,' ',A.APELLIDOS) NOMBRECOMPLETO,A.NUM_CLIENTE,G.NOMBRE PUESTO,
A.FECHA_INGRESO,
TIMESTAMPDIFF(DAY, DATE_ADD(A.FECHA_INGRESO, INTERVAL TIMESTAMPDIFF(YEAR, A.FECHA_INGRESO, CURDATE()) YEAR),
DATE_ADD(DATE_ADD(A.FECHA_INGRESO, INTERVAL TIMESTAMPDIFF(YEAR, A.FECHA_INGRESO, CURDATE()) YEAR), INTERVAL '1' YEAR))TOTALDIAS,
DATE_ADD(A.FECHA_INGRESO, INTERVAL TIMESTAMPDIFF(YEAR, A.FECHA_INGRESO,CURDATE()) YEAR)DESDE,
DATE_ADD(DATE_ADD(A.FECHA_INGRESO, INTERVAL TIMESTAMPDIFF(YEAR, A.FECHA_INGRESO, CURDATE()) YEAR), INTERVAL '1' YEAR)HASTA,
ROUND((CASE WHEN B.ID_CONCEPTO IN (14) THEN ((((A.SUELDO+IFNULL(F.COMSION,0))/30)*18)*D.PORCENTAJE_MAX) ELSE 0 END),8) VACACION_LEY,
ROUND((CASE WHEN B.ID_CONCEPTO IN (13) THEN ((((A.SUELDO+IFNULL(F.COMSION,0))/30)*18)*D.PORCENTAJE_MAX)ELSE 0 END),8) VACACION_POLITICA,
ROUND((IFNULL(F.COMSION,0)/30)*18,8) PROMEDIO_DE_COMISION_18_DIAS,
ROUND((IFNULL(A.SUELDO+IFNULL(F.COMSION,0),0)/30)*18,8)  COMISIONS    


FROM TBL_EMPLEADOS A
LEFT JOIN TBL_ASIGNACIONES B ON (A.ID=B.ID_EMPLEADO)
LEFT JOIN TBL_CONCEPTOS C ON (C.ID=B.ID_CONCEPTO)
LEFT JOIN TBL_OPERACIONES D ON (C.ID=D.ID_CONCEPTO)
LEFT JOIN
(
SELECT  A.ID_EMPLEADO,ROUND(IFNULL((CASE WHEN A.CANTIDAD>=6 THEN IFNULL(A.COMISION,0.0)/6
ELSE IFNULL(A.COMISION,0.0)/A.CANTIDAD END ),0)+IFNULL(b.total_bono,0.0),8)COMSION ,A.NUM_CLIENTE
FROM  (SELECT A.ID ID_EMPLEADO,F.num_cliente ,
SUM((CASE WHEN F.FECHA_CREACION BETWEEN DATE_SUB(CURDATE(), INTERVAL 7 MONTH) AND DATE_SUB(CURDATE(),INTERVAL 1  MONTH) 
THEN F.COMISION ELSE 0 END)) COMISION, COUNT(F.COMISION)CANTIDAD
FROM TBL_EMPLEADOS A LEFT JOIN TBL_COMISIONES F ON (F.NUM_CLIENTE=A.NUM_CLIENTE)
 GROUP BY A.ID,F.num_cliente 
)A
LEFT JOIN 
(
SELECT
 A.ID_EMPLEADO,ROUND(IFNULL((CASE WHEN A.CANTIDAD>=6 THEN (A.totalbonos)/6
ELSE (A.totalbonos)/A.CANTIDAD END ),0),8)total_bono 
FROM 
(
SELECT a.id_empleado, 
SUM(a.bonos)totalbonos,
COUNT(a.bonos)CANTIDAD
FROM tbl_detalle_planillas a 
INNER JOIN tbl_planillas b ON (a.id_planilla=b.id AND b.id_tipo_planilla=1)
WHERE a.bonos >0
AND (CASE WHEN b.f_inicio_planilla BETWEEN DATE_SUB(CURDATE(), INTERVAL '6' MONTH) AND DATE_SUB(CURDATE(),INTERVAL 1  MONTH) 
THEN a.bonos ELSE 0 END)
GROUP BY a.id_empleado
)A )b ON (A.ID_EMPLEADO=b.id_empleado)

) F ON (F.ID_EMPLEADO=A.id)
LEFT JOIN TBL_PUESTOS G ON (G.ID=A.ID_PUESTO)
WHERE C.ID IN (13,14) AND B.ID_CONCEPTO IS NOT NULL
)A INNER JOIN
(SELECT A.ESTADO,B.PORCENTAJE_MIN,A.ID_EMPLEADO FROM TBL_ASIGNACIONES A
INNER JOIN TBL_OPERACIONES B ON (A.ID_CONCEPTO=B.ID_CONCEPTO)
WHERE A.ID_CONCEPTO =19)B ON (A.ID_EMPLEADO=B.ID_EMPLEADO)
GROUP BY PROMEDIO_DE_COMISION_18_DIAS,B.PORCENTAJE_MIN,A.ID_EMPLEADO,A.ESTADOVACA,B.ESTADO,A.COMSION,
NOMBRECOMPLETO,A.NUM_CLIENTE,A.SUELDO,A.FECHA_INGRESO,A.DESDE,A.HASTA,A.PUESTO,A.COMISIONS
)VACACION 

) TBL_VACAC ON (A.ID=TBL_VACAC.ID_EMPLEADO)
-- ---------------------------------------------FIN
/* QUERY PARA SACAR EL CALCULO INDIVIDUAL DE DE VACACIONES  EN EL ESTAN SUB CONSULTAS TODOS LOS CALCULOS MENSUALES*/


LEFT JOIN -- -----------------------------------------------------------------------COMISIONES 
( SELECT B.id id_empleado,A.NUM_CLIENTE,A.COMISION, MONTH(A.FECHA_CREACION),FECHA_CREACION, MONTH(CURDATE() - INTERVAL 1 MONTH), DAY(A.FECHA_CREACION)
FROM tbl_comisiones A
LEFT JOIN tbl_empleados B ON (A.num_cliente=B.num_cliente)
WHERE MONTH(FECHA_CREACION) = MONTH(CURDATE() - INTERVAL 1 MONTH) AND DAY(CURDATE()) BETWEEN 1 AND 15)
TBL_COMIC ON (A.ID=TBL_COMIC.ID_EMPLEADO)
-- ---------------------------------------------FIN
/* QUERY PARA SACAR EL CALCULO INDIVIDUAL DE LAS COMISIONES   EN EL ESTAN SUB CONSULTAS MENSUALES*/

WHERE C.ID IN (1) AND (


(((A.SUELDO/2)+IFNULL(TBL_BRETENC.BASE_RETENCION,0.0)+
IFNULL(tbl_bonos.BONOS,0.0)+ IFNULL(TBL_VACAC.vacacion,0.0)+ IFNULL(TBL_COMIC.COMISION,0.0)+tbl_bonos.BONOSV)
-
(IFNULL((SELECT A.DESCUENTO_PORFALTAS FROM (
SELECT A.id_empleado,((B.sueldo/30)*A.monto)DESCUENTO_PORFALTAS
FROM tbl_asignaciones A LEFT JOIN tbl_empleados B ON (A.id_empleado=B.id)
WHERE A.id_concepto=17  AND A.estado='A')A WHERE A.id_empleado =A.ID),0)
+IFNULL(TBL_ISSS.ISSS,0)+TBL_AFP.AFP+TBL_IPSFA.IPSFA))


BETWEEN D.DESDE AND D.HASTA)
-- - finalizacion de consulta de descuentos de ley 

)tbl_descue_ley -- ---------------- subconsula de descuentos de ly fosafi 

LEFT JOIN -- ------------subconsulta para los prestamos mensuales
(
SELECT  b.id id_empleado, a.num_cliente,
SUM((case when a.estado='A' then (a.valor_descuento) ELSE 0 END))couota_mensual
FROM tbl_prestamos a LEFT JOIN tbl_empleados b ON (a.num_cliente=b.num_cliente) GROUP BY  b.id , a.num_cliente
) tbl_prests ON (tbl_prests.id_empleado=tbl_descue_ley.ID_EMPLEADO)
-- fin de los descuentos de prestamos todos los prestamos sumados 

LEFT JOIN -- ------------subconsulta para los descuentos varios
(SELECT id_empleado, 
SUM((case when (id_concepto = 6  AND estado ='A') then (monto/2) ELSE 0 END))FOSAFI,
SUM((case when (id_concepto = 7  AND estado ='A') then (monto/2) ELSE 0 END))PGR,
SUM((case when (id_concepto = 8  AND estado ='A') then (monto/2) ELSE 0 END))FSV,
SUM((case when (id_concepto = 9  AND estado ='A') then (monto) ELSE 0 END))ANTICIPO,
SUM((case when (id_concepto = 10 AND estado ='A') then (monto) ELSE 0 END))DV,
SUM((case when (id_concepto = 11 AND estado ='A') then (monto) ELSE 0 END))VIATICOS,
SUM((case when (id_concepto = 12 AND estado ='A') then (monto) ELSE 0 END))REINTEGRO 
FROM tbl_asignaciones GROUP BY id_empleado  ) tbl_varios ON (tbl_descue_ley.ID_EMPLEADO=tbl_varios.id_empleado) ;

-- Volcando estructura para vista planilla.v_detalles_planilla_2q_quincenal_dic
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `v_detalles_planilla_2q_quincenal_dic`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `v_detalles_planilla_2q_quincenal_dic` AS SELECT  
tbl_descue_ley.ID_EMPLEADO,
tbl_descue_ley.SUELDO,
15 DIAS_QUINCENA,
(15-IFNULL(DIAS_FALTADOS,0)) DIAS_TRABAJADOS,
ROUND(tbl_descue_ley.SUELDO_QUINCENAL,8)calculo_salario,
IFNULL(tbl_prests.couota_mensual,0.00) PRESTAMOS,
tbl_varios.ANTICIPO,
tbl_descue_ley.BONOS,
tbl_descue_ley.BONOSV,
tbl_descue_ley.VACACION,
tbl_descue_ley.COMISION,
tbl_descue_ley.TOTALQUINCENA,
tbl_descue_ley.ISSS,
tbl_descue_ley.AFP,
tbl_descue_ley.IPSFA,
tbl_varios.FOSAFI,
tbl_descue_ley.baseret  INDEMNIZACION_AGRAVADO, 
tbl_descue_ley.RENTA,
ROUND(tbl_descue_ley.TOTAL_DESCUENTOS,8)TOTAL_DESCUENTOS, 
tbl_varios.PGR,
tbl_varios.FSV,
tbl_varios.DV,
tbl_varios.VIATICOS,
tbl_varios.REINTEGRO ,
ROUND(
(tbl_descue_ley.TOTALQUINCENA-tbl_descue_ley.TOTAL_DESCUENTOS-IFNULL(tbl_prests.couota_mensual,0.00)-
tbl_varios.PGR-tbl_varios.FSV-tbl_varios.ANTICIPO-tbl_varios.DV)
+tbl_varios.VIATICOS+tbl_varios.REINTEGRO,8)LIQUIDO_PAGAR

FROM
(
SELECT 
A.ID ID_EMPLEADO, A.NUM_CLIENTE, 
A.SUELDO,
((A.SUELDO-
IFNULL((SELECT A.DESCUENTO_PORFALTAS FROM (
SELECT A.id_empleado,((B.sueldo/30)*A.monto)DESCUENTO_PORFALTAS
FROM tbl_asignaciones A LEFT JOIN tbl_empleados B ON (A.id_empleado=B.id)
WHERE A.id_concepto=17  AND A.estado='A')A WHERE A.id_empleado =A.ID),0)

))SUELDO_MENSUAL,

((A.SUELDO/2)-IFNULL((SELECT A.DESCUENTO_PORFALTAS FROM (
SELECT A.id_empleado,((B.sueldo/30)*A.monto)DESCUENTO_PORFALTAS
FROM tbl_asignaciones A LEFT JOIN tbl_empleados B ON (A.id_empleado=B.id)
WHERE A.id_concepto=17  AND A.estado='A')A WHERE A.id_empleado =A.ID),0)) SUELDO_QUINCENAL,

CONCAT(Nombres, ' ', Apellidos) AS Nombre,
A.fecha_ingreso, tbl_bonos.BONOS, tbl_bonos.BONOSV, IFNULL(TBL_VACAC.vacacion,0.0) VACACION,

IFNULL(TBL_COMIC.COMISION,0.0)COMISION,

((A.SUELDO/2)-IFNULL((SELECT A.DESCUENTO_PORFALTAS FROM (
SELECT A.id_empleado,((B.sueldo/30)*A.monto)DESCUENTO_PORFALTAS
FROM tbl_asignaciones A LEFT JOIN tbl_empleados B ON (A.id_empleado=B.id)
WHERE A.id_concepto=17  AND A.estado='A')A WHERE A.id_empleado =A.ID),0))+IFNULL(tbl_bonos.BONOSV,0.0)+
 IFNULL(tbl_bonos.BONOS,0.0)+ IFNULL(TBL_VACAC.vacacion,0.0)+ IFNULL(TBL_COMIC.COMISION,0.0)TOTALQUINCENA,

IFNULL(TBL_AFP.AFP,0)AFP,IFNULL(TBL_ISSS.ISSS,0)ISSS, TBL_IPSFA.IPSFA,tbl_bonos.FOSAFI, 

((((A.SUELDO/2)-IFNULL((SELECT A.DESCUENTO_PORFALTAS FROM (
SELECT A.id_empleado,((B.sueldo/30)*A.monto)DESCUENTO_PORFALTAS
FROM tbl_asignaciones A LEFT JOIN tbl_empleados B ON (A.id_empleado=B.id)
WHERE A.id_concepto=17  AND A.estado='A')A WHERE A.id_empleado =A.ID),0))+ 
IFNULL(tbl_bonos.BONOS,0.0)+ IFNULL(TBL_VACAC.vacacion,0.0)+ IFNULL(TBL_COMIC.COMISION,0.0)
-IFNULL(TBL_ISSS.ISSS,0)-TBL_AFP.AFP-TBL_IPSFA.IPSFA)+tbl_bonos.BONOSV)QUINCENARENTA,

IFNULL((SELECT A.DESCUENTO_PORFALTAS FROM (
SELECT A.id_empleado,((B.sueldo/30)*A.monto)DESCUENTO_PORFALTAS
FROM tbl_asignaciones A LEFT JOIN tbl_empleados B ON (A.id_empleado=B.id)
WHERE A.id_concepto=17  AND A.estado='A')A WHERE A.id_empleado =A.ID),0) DESCUENTO_FALTA,

IFNULL((SELECT A.DIAS_FALTADOS FROM (
SELECT A.id_empleado,ROUND(A.monto,0) DIAS_FALTADOS
FROM tbl_asignaciones A LEFT JOIN tbl_empleados B ON (A.id_empleado=B.id)
WHERE A.id_concepto=17  AND A.estado='A')A WHERE A.id_empleado =A.ID),0) DIAS_FALTADOS,

 
ifnull(TBL_BRETENC.BASE_RETENCION,0.0)baseret,



ROUND((((((A.SUELDO/2)+ifnull(TBL_BRETENC.BASE_RETENCION,0.0)+
IFNULL(tbl_bonos.BONOS,0.0)+ IFNULL(TBL_VACAC.vacacion,0.0)+ IFNULL(TBL_COMIC.COMISION,0.0)+tbl_bonos.BONOSV)
-
(IFNULL((SELECT A.DESCUENTO_PORFALTAS FROM (
SELECT A.id_empleado,((B.sueldo/30)*A.monto)DESCUENTO_PORFALTAS
FROM tbl_asignaciones A LEFT JOIN tbl_empleados B ON (A.id_empleado=B.id)
WHERE A.id_concepto=17  AND A.estado='A')A WHERE A.id_empleado =A.ID),0)
+IFNULL(TBL_ISSS.ISSS,0)+TBL_AFP.AFP+TBL_IPSFA.IPSFA))-D.SOBRE_EXCESO)*D.PORCENTAJE_MIN)+D.CUOTA,8)RENTA,


(TBL_AFP.AFP+IFNULL(TBL_ISSS.ISSS,0)+TBL_IPSFA.IPSFA+tbl_bonos.FOSAFI
+
ROUND((((((A.SUELDO/2)+ifnull(TBL_BRETENC.BASE_RETENCION,0.0)+
IFNULL(tbl_bonos.BONOS,0.0)+ IFNULL(TBL_VACAC.vacacion,0.0)+ IFNULL(TBL_COMIC.COMISION,0.0)+tbl_bonos.BONOSV)
-
(IFNULL((SELECT A.DESCUENTO_PORFALTAS FROM (
SELECT A.id_empleado,((B.sueldo/30)*A.monto)DESCUENTO_PORFALTAS
FROM tbl_asignaciones A LEFT JOIN tbl_empleados B ON (A.id_empleado=B.id)
WHERE A.id_concepto=17  AND A.estado='A')A WHERE A.id_empleado =A.ID),0)
+IFNULL(TBL_ISSS.ISSS,0)+TBL_AFP.AFP+TBL_IPSFA.IPSFA))-D.SOBRE_EXCESO)*D.PORCENTAJE_MIN)+D.CUOTA,8)

)TOTAL_DESCUENTOS

FROM TBL_EMPLEADOS A
LEFT JOIN TBL_ASIGNACIONES B ON (A.ID=B.ID_EMPLEADO AND a.estado = 'A')
LEFT JOIN TBL_CONCEPTOS C ON (C.ID=B.ID_CONCEPTO)
LEFT JOIN TBL_OPERACIONES D ON (C.ID=D.ID_CONCEPTO)
LEFT JOIN -- --------------------------------------------------------------------EL DATO DE BASE DE RETENCION 

(SELECT (A.base_ingreso_isr) BASE_RETENCION ,A.CREATED_AT,B.id_tipo_planilla,A.ID_EMPLEADO
 FROM tbl_detalle_planillas_ai A INNER JOIN 
 tbl_planillas B ON (A.ID_PLANILLA=B.id)
 ) TBL_BRETENC ON (TBL_BRETENC.ID_EMPLEADO=A.ID AND YEAR(TBL_BRETENC.CREATED_AT) = YEAR(NOW()) 
 AND TBL_BRETENC.id_tipo_planilla= 4)

LEFT JOIN -- --------------------------------------------------------------------BONOS 
(SELECT id_empleado, SUM((CASE WHEN (id_concepto = 15 AND estado ='A') THEN (monto/2) ELSE 0 END))BONOS, 
SUM((CASE WHEN (id_concepto = 16 AND estado ='A') THEN (monto) ELSE 0 END))BONOSV,
SUM((case when (id_concepto = 6  AND estado ='A') then (monto/2) ELSE 0 END))FOSAFI
FROM tbl_asignaciones
GROUP BY id_empleado ) tbl_bonos ON (A.ID=tbl_bonos.id_empleado) -- SUBCONSULTA PARA SACAR LOS BONOS ACTIVOS y el descuento de fosafi
LEFT JOIN -- -----------------------------------------------------------------------AFP 
(
SELECT A.ID ID_EMPLEADO, 
(CASE WHEN B.ESTADO ='A' THEN  
SUM((CASE WHEN (ROUND(((A.SUELDO/2)-IFNULL((SELECT A.DESCUENTO_PORFALTAS FROM (
SELECT A.id_empleado,((B.sueldo/30)*A.monto)DESCUENTO_PORFALTAS
FROM tbl_asignaciones A LEFT JOIN tbl_empleados B ON (A.id_empleado=B.id)
WHERE A.id_concepto=17  AND A.estado='A')A WHERE A.id_empleado =A.ID),0)),8)+ IFNULL(E.BONOS,0.0)+ IFNULL(F.vacacion,0.0)+ IFNULL(G.COMISION,0.0) > D.HASTA) 
THEN (D.HASTA*D.PORCENTAJE_MIN) 
WHEN (ROUND(((A.SUELDO/2)-IFNULL((SELECT A.DESCUENTO_PORFALTAS FROM (
SELECT A.id_empleado,((B.sueldo/30)*A.monto)DESCUENTO_PORFALTAS
FROM tbl_asignaciones A LEFT JOIN tbl_empleados B ON (A.id_empleado=B.id)
WHERE A.id_concepto=17  AND A.estado='A')A WHERE A.id_empleado =A.ID),0)),8)+ IFNULL(E.BONOS,0.0)+ IFNULL(F.vacacion,0.0)+ IFNULL(G.COMISION,0.0) < D.HASTA) 
THEN FORMAT((ROUND(((A.SUELDO/2)-IFNULL((SELECT A.DESCUENTO_PORFALTAS FROM (
SELECT A.id_empleado,((B.sueldo/30)*A.monto)DESCUENTO_PORFALTAS
FROM tbl_asignaciones A LEFT JOIN tbl_empleados B ON (A.id_empleado=B.id)
WHERE A.id_concepto=17  AND A.estado='A')A WHERE A.id_empleado =A.ID),0)),8)+ IFNULL(E.BONOS,0.0)+ IFNULL(F.vacacion,0.0)+ IFNULL(G.COMISION,0.0))*D.PORCENTAJE_MIN,8) END))
ELSE 0 END)
 AFP

FROM tbl_empleados A
LEFT JOIN TBL_ASIGNACIONES B ON (A.ID=B.ID_EMPLEADO)
LEFT JOIN TBL_CONCEPTOS C ON (C.ID=B.ID_CONCEPTO)
LEFT JOIN TBL_OPERACIONES D ON (C.ID=D.ID_CONCEPTO)
LEFT JOIN 
(
SELECT id_empleado, SUM((CASE WHEN (id_concepto = 15 AND estado ='A') THEN (monto/2) ELSE 0 END))BONOS
FROM tbl_asignaciones
GROUP BY id_empleado)E ON (A.ID=E.id_empleado)
LEFT JOIN 
(

SELECT
VACACION.ID_EMPLEADO,

ROUND(
(CASE WHEN VACACION.ESTADOVACA='A' THEN 
(VACACION.VACACION_LEY+VACACION.VACACION_POLITICA+VACACION.PROMEDIO_DE_COMISION_18_DIAS)
ELSE 0 END ),8)vacacion

FROM(
SELECT A.ID_EMPLEADO,NOMBRECOMPLETO,SUM(A.VACACION_LEY)VACACION_LEY,SUM(A.VACACION_POLITICA)VACACION_POLITICA,
A.PROMEDIO_DE_COMISION_18_DIAS, A.ESTADOVACA,A.COMSION,A.SUELDO,A.NUM_CLIENTE,A.TOTALDIAS,A.COMISIONS,
A.PUESTO,A.FECHA_INGRESO,A.DESDE,A.HASTA,(CASE WHEN B.ESTADO= 'A' THEN B.PORCENTAJE_MIN ELSE 0 END)PGR
FROM
(SELECT B.ESTADO ESTADOVACA,A.ID ID_EMPLEADO, A.SUELDO,IFNULL(F.COMSION,0)COMSION,
CONCAT(A.NOMBRES,' ',A.APELLIDOS) NOMBRECOMPLETO,A.NUM_CLIENTE,G.NOMBRE PUESTO,
A.FECHA_INGRESO,
TIMESTAMPDIFF(DAY, DATE_ADD(A.FECHA_INGRESO, INTERVAL TIMESTAMPDIFF(YEAR, A.FECHA_INGRESO, CURDATE()) YEAR),
DATE_ADD(DATE_ADD(A.FECHA_INGRESO, INTERVAL TIMESTAMPDIFF(YEAR, A.FECHA_INGRESO, CURDATE()) YEAR), INTERVAL '1' YEAR))TOTALDIAS,
DATE_ADD(A.FECHA_INGRESO, INTERVAL TIMESTAMPDIFF(YEAR, A.FECHA_INGRESO,CURDATE()) YEAR)DESDE,
DATE_ADD(DATE_ADD(A.FECHA_INGRESO, INTERVAL TIMESTAMPDIFF(YEAR, A.FECHA_INGRESO, CURDATE()) YEAR), INTERVAL '1' YEAR)HASTA,
ROUND((CASE WHEN B.ID_CONCEPTO IN (14) THEN ((((A.SUELDO+IFNULL(F.COMSION,0))/30)*18)*D.PORCENTAJE_MAX) ELSE 0 END),8) VACACION_LEY,
ROUND((CASE WHEN B.ID_CONCEPTO IN (13) THEN ((((A.SUELDO+IFNULL(F.COMSION,0))/30)*18)*D.PORCENTAJE_MAX)ELSE 0 END),8) VACACION_POLITICA,
ROUND((IFNULL(F.COMSION,0)/30)*18,8) PROMEDIO_DE_COMISION_18_DIAS,
ROUND((IFNULL(A.SUELDO+IFNULL(F.COMSION,0),0)/30)*18,8)  COMISIONS    


FROM TBL_EMPLEADOS A
LEFT JOIN TBL_ASIGNACIONES B ON (A.ID=B.ID_EMPLEADO)
LEFT JOIN TBL_CONCEPTOS C ON (C.ID=B.ID_CONCEPTO)
LEFT JOIN TBL_OPERACIONES D ON (C.ID=D.ID_CONCEPTO)
LEFT JOIN
(


SELECT  A.ID_EMPLEADO,ROUND(IFNULL((CASE WHEN A.CANTIDAD>=6 THEN IFNULL(A.COMISION,0.0)/6
ELSE IFNULL(A.COMISION,0.0)/A.CANTIDAD END ),0)+IFNULL(b.total_bono,0.0),8)COMSION ,A.NUM_CLIENTE
FROM  (SELECT A.ID ID_EMPLEADO,F.num_cliente ,
SUM((CASE WHEN F.FECHA_CREACION BETWEEN DATE_SUB(CURDATE(), INTERVAL 7 MONTH) AND DATE_SUB(CURDATE(),INTERVAL 1  MONTH) 
THEN F.COMISION ELSE 0 END)) COMISION, COUNT(F.COMISION)CANTIDAD
FROM TBL_EMPLEADOS A LEFT JOIN TBL_COMISIONES F ON (F.NUM_CLIENTE=A.NUM_CLIENTE)
 GROUP BY A.ID,F.num_cliente 
)A

LEFT JOIN 
(
SELECT
 A.ID_EMPLEADO,ROUND(IFNULL((CASE WHEN A.CANTIDAD>=6 THEN (A.totalbonos)/6
ELSE (A.totalbonos)/A.CANTIDAD END ),0),8)total_bono 
FROM 
(
SELECT a.id_empleado, 
SUM(a.bonos)totalbonos,
COUNT(a.bonos)CANTIDAD
FROM tbl_detalle_planillas a 
INNER JOIN tbl_planillas b ON (a.id_planilla=b.id AND b.id_tipo_planilla=1)
WHERE a.bonos >0
AND (CASE WHEN b.f_inicio_planilla BETWEEN DATE_SUB(CURDATE(), INTERVAL '6' MONTH) AND DATE_SUB(CURDATE(),INTERVAL 1  MONTH) 
THEN a.bonos ELSE 0 END)
GROUP BY a.id_empleado
)A )b ON (A.ID_EMPLEADO=b.id_empleado)

) F ON (F.ID_EMPLEADO=A.id)
LEFT JOIN TBL_PUESTOS G ON (G.ID=A.ID_PUESTO)
WHERE C.ID IN (13,14) AND B.ID_CONCEPTO IS NOT NULL
)A INNER JOIN
(SELECT A.ESTADO,B.PORCENTAJE_MIN,A.ID_EMPLEADO FROM TBL_ASIGNACIONES A
INNER JOIN TBL_OPERACIONES B ON (A.ID_CONCEPTO=B.ID_CONCEPTO)
WHERE A.ID_CONCEPTO =19)B ON (A.ID_EMPLEADO=B.ID_EMPLEADO)
GROUP BY PROMEDIO_DE_COMISION_18_DIAS,B.PORCENTAJE_MIN,A.ID_EMPLEADO,A.ESTADOVACA,B.ESTADO,A.COMSION,
NOMBRECOMPLETO,A.NUM_CLIENTE,A.SUELDO,A.FECHA_INGRESO,A.DESDE,A.HASTA,A.PUESTO,A.COMISIONS
)VACACION 

) F ON (A.ID=F.id_empleado) LEFT JOIN 
( SELECT B.id id_empleado,A.NUM_CLIENTE,A.COMISION
FROM tbl_comisiones A LEFT JOIN tbl_empleados B ON (A.num_cliente=B.num_cliente)
WHERE MONTH(FECHA_CREACION) = MONTH(CURDATE() ) AND DAY(CURDATE()) BETWEEN 1 AND 15) G ON (A.ID=G.id_empleado)
WHERE C.ID IN (2) GROUP BY A.ID , B.ESTADO


)	tBL_AFP ON (TBL_AFP.ID_EMPLEADO=A.ID)  -- ---------------------------------------------FIN
/* QUERY PARA SACAR EL CALCULO INDIVIDUAL DE AFP EN EL ESTAN SUB CONSULTAS
PARA SACAR LA RENTA COMISIONES Y BONOS FIJOS  ESTAN ECHOS DE SUB CONSULTAS TODOS LOS CALCULOS MENSUALES*/
-- -----------------------------------------------------------------------ISSs
LEFT JOIN
( 



SELECT A.ID_EMPLEADO,
(case when A.estado = 'A' then A.ISSS ELSE 0 END )ISSS,A.estado
FROM (SELECT A.ID ID_EMPLEADO,
ROUND ((case when DAY(NOW()) BETWEEN 1 AND 15 then
(CASE WHEN
(((A.SUELDO/2)-IFNULL((SELECT A.DESCUENTO_PORFALTAS FROM (
SELECT A.id_empleado,((B.sueldo/30)*A.monto)DESCUENTO_PORFALTAS
FROM tbl_asignaciones A LEFT JOIN tbl_empleados B ON (A.id_empleado=B.id)
WHERE A.id_concepto=17  AND A.estado='A')A WHERE A.id_empleado =A.ID),0))
+ IFNULL(E.BONOS,0.0)+ IFNULL(F.vacacion,0.0)+ IFNULL(G.COMISION,0.0)) >=1000 THEN 30
 ELSE 
(((A.SUELDO/2)-IFNULL((SELECT A.DESCUENTO_PORFALTAS FROM (
SELECT A.id_empleado,((B.sueldo/30)*A.monto)DESCUENTO_PORFALTAS
FROM tbl_asignaciones A LEFT JOIN tbl_empleados B ON (A.id_empleado=B.id)
WHERE A.id_concepto=17  AND A.estado='A')A WHERE A.id_empleado =A.ID),0))+ IFNULL(E.BONOS,0.0)+ IFNULL(F.vacacion,0.0)+ IFNULL(G.COMISION,0.0))*D.PORCENTAJE_MIN
END)

when DAY(NOW()) BETWEEN 16 AND 31 then
(CASE WHEN ifnull(h.isss_anterior,0.0) = 30 THEN 
0 ELSE
(case when ifnull(h.salarioplanillaisss,0.0)+
(((A.SUELDO/2)-IFNULL((SELECT A.DESCUENTO_PORFALTAS FROM (
SELECT A.id_empleado,((B.sueldo/30)*A.monto)DESCUENTO_PORFALTAS
FROM tbl_asignaciones A LEFT JOIN tbl_empleados B ON (A.id_empleado=B.id)
WHERE A.id_concepto=17  AND A.estado='A')A WHERE A.id_empleado =A.ID),0))+ IFNULL(E.BONOS,0.0)
+ IFNULL(F.vacacion,0.0)+ IFNULL(G.COMISION,0.0)) >=1000 then (30-ifnull(h.isss_anterior,0.0))
ELSE 
(((A.SUELDO/2)-IFNULL((SELECT A.DESCUENTO_PORFALTAS FROM (
SELECT A.id_empleado,((B.sueldo/30)*A.monto)DESCUENTO_PORFALTAS
FROM tbl_asignaciones A LEFT JOIN tbl_empleados B ON (A.id_empleado=B.id)
WHERE A.id_concepto=17  AND A.estado='A')A WHERE A.id_empleado =A.ID),0))+ IFNULL(E.BONOS,0.0)+ 
IFNULL(F.vacacion,0.0)+ IFNULL(G.COMISION,0.0)) *D.PORCENTAJE_MIN END )
END) END ),8) ISSS,b.estado
FROM tbl_empleados A LEFT JOIN TBL_ASIGNACIONES B ON (A.ID=B.ID_EMPLEADO) LEFT JOIN TBL_CONCEPTOS C ON (C.ID=B.ID_CONCEPTO)
LEFT JOIN TBL_OPERACIONES D ON (C.ID=D.ID_CONCEPTO) LEFT JOIN 
( SELECT id_empleado, SUM((CASE WHEN (id_concepto = 15 AND estado ='A') THEN (monto/2) ELSE 0 END))BONOS
FROM tbl_asignaciones GROUP BY id_empleado)E ON (A.ID=E.id_empleado)
LEFT JOIN 
( 
SELECT
VACACION.ID_EMPLEADO,

ROUND(
(CASE WHEN VACACION.ESTADOVACA='A' THEN 
(VACACION.VACACION_LEY+VACACION.VACACION_POLITICA+VACACION.PROMEDIO_DE_COMISION_18_DIAS)
ELSE 0 END ),8)vacacion

FROM(
SELECT A.ID_EMPLEADO,NOMBRECOMPLETO,SUM(A.VACACION_LEY)VACACION_LEY,SUM(A.VACACION_POLITICA)VACACION_POLITICA,
A.PROMEDIO_DE_COMISION_18_DIAS, A.ESTADOVACA,A.COMSION,A.SUELDO,A.NUM_CLIENTE,A.TOTALDIAS,A.COMISIONS,
A.PUESTO,A.FECHA_INGRESO,A.DESDE,A.HASTA,(CASE WHEN B.ESTADO= 'A' THEN B.PORCENTAJE_MIN ELSE 0 END)PGR
FROM
(SELECT B.ESTADO ESTADOVACA,A.ID ID_EMPLEADO, A.SUELDO,IFNULL(F.COMSION,0)COMSION,
CONCAT(A.NOMBRES,' ',A.APELLIDOS) NOMBRECOMPLETO,A.NUM_CLIENTE,G.NOMBRE PUESTO,
A.FECHA_INGRESO,
TIMESTAMPDIFF(DAY, DATE_ADD(A.FECHA_INGRESO, INTERVAL TIMESTAMPDIFF(YEAR, A.FECHA_INGRESO, CURDATE()) YEAR),
DATE_ADD(DATE_ADD(A.FECHA_INGRESO, INTERVAL TIMESTAMPDIFF(YEAR, A.FECHA_INGRESO, CURDATE()) YEAR), INTERVAL '1' YEAR))TOTALDIAS,
DATE_ADD(A.FECHA_INGRESO, INTERVAL TIMESTAMPDIFF(YEAR, A.FECHA_INGRESO,CURDATE()) YEAR)DESDE,
DATE_ADD(DATE_ADD(A.FECHA_INGRESO, INTERVAL TIMESTAMPDIFF(YEAR, A.FECHA_INGRESO, CURDATE()) YEAR), INTERVAL '1' YEAR)HASTA,
ROUND((CASE WHEN B.ID_CONCEPTO IN (14) THEN ((((A.SUELDO+IFNULL(F.COMSION,0))/30)*18)*D.PORCENTAJE_MAX) ELSE 0 END),8) VACACION_LEY,
ROUND((CASE WHEN B.ID_CONCEPTO IN (13) THEN ((((A.SUELDO+IFNULL(F.COMSION,0))/30)*18)*D.PORCENTAJE_MAX)ELSE 0 END),8) VACACION_POLITICA,
ROUND((IFNULL(F.COMSION,0)/30)*18,8) PROMEDIO_DE_COMISION_18_DIAS,
ROUND((IFNULL(A.SUELDO+IFNULL(F.COMSION,0),0)/30)*18,8)  COMISIONS    


FROM TBL_EMPLEADOS A
LEFT JOIN TBL_ASIGNACIONES B ON (A.ID=B.ID_EMPLEADO)
LEFT JOIN TBL_CONCEPTOS C ON (C.ID=B.ID_CONCEPTO)
LEFT JOIN TBL_OPERACIONES D ON (C.ID=D.ID_CONCEPTO)
LEFT JOIN
(


SELECT  A.ID_EMPLEADO,ROUND(IFNULL((CASE WHEN A.CANTIDAD>=6 THEN IFNULL(A.COMISION,0.0)/6
ELSE IFNULL(A.COMISION,0.0)/A.CANTIDAD END ),0)+IFNULL(b.total_bono,0.0),8)COMSION ,A.NUM_CLIENTE
FROM  (SELECT A.ID ID_EMPLEADO,F.num_cliente ,
SUM((CASE WHEN F.FECHA_CREACION BETWEEN DATE_SUB(CURDATE(), INTERVAL 7 MONTH) AND DATE_SUB(CURDATE(),INTERVAL 1  MONTH) 
THEN F.COMISION ELSE 0 END)) COMISION, COUNT(F.COMISION)CANTIDAD
FROM TBL_EMPLEADOS A LEFT JOIN TBL_COMISIONES F ON (F.NUM_CLIENTE=A.NUM_CLIENTE)
 GROUP BY A.ID,F.num_cliente 
)A

LEFT JOIN 
(
SELECT
 A.ID_EMPLEADO,ROUND(IFNULL((CASE WHEN A.CANTIDAD>=6 THEN (A.totalbonos)/6
ELSE (A.totalbonos)/A.CANTIDAD END ),0),8)total_bono 
FROM 
(
SELECT a.id_empleado, 
SUM(a.bonos)totalbonos,
COUNT(a.bonos)CANTIDAD
FROM tbl_detalle_planillas a 
INNER JOIN tbl_planillas b ON (a.id_planilla=b.id AND b.id_tipo_planilla=1)
WHERE a.bonos >0
AND (CASE WHEN b.f_inicio_planilla BETWEEN DATE_SUB(CURDATE(), INTERVAL '6' MONTH) AND DATE_SUB(CURDATE(),INTERVAL 1  MONTH) 
THEN a.bonos ELSE 0 END)
GROUP BY a.id_empleado
)A )b ON (A.ID_EMPLEADO=b.id_empleado)

) F ON (F.ID_EMPLEADO=A.id)
LEFT JOIN TBL_PUESTOS G ON (G.ID=A.ID_PUESTO)
WHERE C.ID IN (13,14) AND B.ID_CONCEPTO IS NOT NULL
)A INNER JOIN
(SELECT A.ESTADO,B.PORCENTAJE_MIN,A.ID_EMPLEADO FROM TBL_ASIGNACIONES A
INNER JOIN TBL_OPERACIONES B ON (A.ID_CONCEPTO=B.ID_CONCEPTO)
WHERE A.ID_CONCEPTO =19)B ON (A.ID_EMPLEADO=B.ID_EMPLEADO)
GROUP BY PROMEDIO_DE_COMISION_18_DIAS,B.PORCENTAJE_MIN,A.ID_EMPLEADO,A.ESTADOVACA,B.ESTADO,A.COMSION,
NOMBRECOMPLETO,A.NUM_CLIENTE,A.SUELDO,A.FECHA_INGRESO,A.DESDE,A.HASTA,A.PUESTO,A.COMISIONS
)VACACION 

) F ON (A.ID=F.id_empleado)
LEFT JOIN  ( SELECT B.id id_empleado,A
.NUM_CLIENTE,A.COMISION, MONTH(A.FECHA_CREACION),FECHA_CREACION, MONTH(CURDATE() - INTERVAL 1 MONTH), DAY(A.FECHA_CREACION)
FROM tbl_comisiones A LEFT JOIN tbl_empleados B ON (A.num_cliente=B.num_cliente)
WHERE MONTH(FECHA_CREACION) = MONTH(CURDATE() ) AND DAY(CURDATE()) BETWEEN 1 AND 15) G ON (A.ID=G.id_empleado)
LEFT JOIN 
(SELECT a.id_empleado,a.isss isss_anterior,(a.calculo_salario+a.bonos+a.vacaciones+a.comision)salarioplanillaisss
FROM  tbl_detalle_planillas a  
INNER JOIN tbl_planillas b ON (a.id_planilla=b.id AND b.id_tipo_planilla=1)
WHERE YEAR(b.f_inicio_planilla)=YEAR(NOW()) AND MONTH(b.f_inicio_planilla)=MONTH(NOW()) ) h ON (A.ID=h.id_empleado)
WHERE C.ID = 4 
)
A GROUP BY  A.ID_EMPLEADO,A.ISSS ,A.estado 






) TBL_ISSS ON (TBL_ISSS.ID_EMPLEADO=A.ID)
-- ---------------------------------------------FIN
/* QUERY PARA SACAR EL CALCULO INDIVIDUAL DE ISS EN EL ESTAN SUB CONSULTAS
PARA SACAR LA RENTA COMISIONES Y BONOS FIJOS  ESTAN ECHOS DE SUB CONSULTAS TODOS LOS CALCULOS MENSUALES*/
-- -----------------------------------------------------------------------TBL_IPSFA
LEFT JOIN
(
SELECT A.ID ID_EMPLEADO,
 (CASE WHEN B.ESTADO = 'A' THEN  (((A.SUELDO/2)-IFNULL((SELECT A.DESCUENTO_PORFALTAS FROM (
SELECT A.id_empleado,((B.sueldo/30)*A.monto)DESCUENTO_PORFALTAS
FROM tbl_asignaciones A LEFT JOIN tbl_empleados B ON (A.id_empleado=B.id)
WHERE A.id_concepto=17  AND A.estado='A')A WHERE A.id_empleado =A.ID),0))+ IFNULL(E.BONOS,0.0)+ IFNULL(F.vacacion,0.0)+ IFNULL(G.COMISION,0.0))*d.porcentaje_min ELSE 0 END) IPSFA


FROM tbl_empleados A LEFT JOIN TBL_ASIGNACIONES B ON (A.ID=B.ID_EMPLEADO) LEFT JOIN TBL_CONCEPTOS C ON (C.ID=B.ID_CONCEPTO)
LEFT JOIN TBL_OPERACIONES D ON (C.ID=D.ID_CONCEPTO) LEFT JOIN  (SELECT id_empleado, SUM((CASE WHEN (id_concepto = 15 AND estado ='A') THEN (monto/2) ELSE 0 END))BONOS
FROM tbl_asignaciones GROUP BY id_empleado)E ON (A.ID=E.id_empleado) LEFT JOIN 
(

SELECT
VACACION.ID_EMPLEADO,

ROUND(
(CASE WHEN VACACION.ESTADOVACA='A' THEN 
(VACACION.VACACION_LEY+VACACION.VACACION_POLITICA+VACACION.PROMEDIO_DE_COMISION_18_DIAS)
ELSE 0 END ),8)vacacion

FROM(
SELECT A.ID_EMPLEADO,NOMBRECOMPLETO,SUM(A.VACACION_LEY)VACACION_LEY,SUM(A.VACACION_POLITICA)VACACION_POLITICA,
A.PROMEDIO_DE_COMISION_18_DIAS, A.ESTADOVACA,A.COMSION,A.SUELDO,A.NUM_CLIENTE,A.TOTALDIAS,A.COMISIONS,
A.PUESTO,A.FECHA_INGRESO,A.DESDE,A.HASTA,(CASE WHEN B.ESTADO= 'A' THEN B.PORCENTAJE_MIN ELSE 0 END)PGR
FROM
(SELECT B.ESTADO ESTADOVACA,A.ID ID_EMPLEADO, A.SUELDO,IFNULL(F.COMSION,0)COMSION,
CONCAT(A.NOMBRES,' ',A.APELLIDOS) NOMBRECOMPLETO,A.NUM_CLIENTE,G.NOMBRE PUESTO,
A.FECHA_INGRESO,
TIMESTAMPDIFF(DAY, DATE_ADD(A.FECHA_INGRESO, INTERVAL TIMESTAMPDIFF(YEAR, A.FECHA_INGRESO, CURDATE()) YEAR),
DATE_ADD(DATE_ADD(A.FECHA_INGRESO, INTERVAL TIMESTAMPDIFF(YEAR, A.FECHA_INGRESO, CURDATE()) YEAR), INTERVAL '1' YEAR))TOTALDIAS,
DATE_ADD(A.FECHA_INGRESO, INTERVAL TIMESTAMPDIFF(YEAR, A.FECHA_INGRESO,CURDATE()) YEAR)DESDE,
DATE_ADD(DATE_ADD(A.FECHA_INGRESO, INTERVAL TIMESTAMPDIFF(YEAR, A.FECHA_INGRESO, CURDATE()) YEAR), INTERVAL '1' YEAR)HASTA,
ROUND((CASE WHEN B.ID_CONCEPTO IN (14) THEN ((((A.SUELDO+IFNULL(F.COMSION,0))/30)*18)*D.PORCENTAJE_MAX) ELSE 0 END),8) VACACION_LEY,
ROUND((CASE WHEN B.ID_CONCEPTO IN (13) THEN ((((A.SUELDO+IFNULL(F.COMSION,0))/30)*18)*D.PORCENTAJE_MAX)ELSE 0 END),8) VACACION_POLITICA,
ROUND((IFNULL(F.COMSION,0)/30)*18,8) PROMEDIO_DE_COMISION_18_DIAS,
ROUND((IFNULL(A.SUELDO+IFNULL(F.COMSION,0),0)/30)*18,8)  COMISIONS    


FROM TBL_EMPLEADOS A
LEFT JOIN TBL_ASIGNACIONES B ON (A.ID=B.ID_EMPLEADO)
LEFT JOIN TBL_CONCEPTOS C ON (C.ID=B.ID_CONCEPTO)
LEFT JOIN TBL_OPERACIONES D ON (C.ID=D.ID_CONCEPTO)
LEFT JOIN
(


SELECT  A.ID_EMPLEADO,ROUND(IFNULL((CASE WHEN A.CANTIDAD>=6 THEN IFNULL(A.COMISION,0.0)/6
ELSE IFNULL(A.COMISION,0.0)/A.CANTIDAD END ),0)+IFNULL(b.total_bono,0.0),8)COMSION ,A.NUM_CLIENTE
FROM  (SELECT A.ID ID_EMPLEADO,F.num_cliente ,
SUM((CASE WHEN F.FECHA_CREACION BETWEEN DATE_SUB(CURDATE(), INTERVAL 7 MONTH) AND DATE_SUB(CURDATE(),INTERVAL 1  MONTH) 
THEN F.COMISION ELSE 0 END)) COMISION, COUNT(F.COMISION)CANTIDAD
FROM TBL_EMPLEADOS A LEFT JOIN TBL_COMISIONES F ON (F.NUM_CLIENTE=A.NUM_CLIENTE)
 GROUP BY A.ID,F.num_cliente 
)A

LEFT JOIN 
(
SELECT
 A.ID_EMPLEADO,ROUND(IFNULL((CASE WHEN A.CANTIDAD>=6 THEN (A.totalbonos)/6
ELSE (A.totalbonos)/A.CANTIDAD END ),0),8)total_bono 
FROM 
(
SELECT a.id_empleado, 
SUM(a.bonos)totalbonos,
COUNT(a.bonos)CANTIDAD
FROM tbl_detalle_planillas a 
INNER JOIN tbl_planillas b ON (a.id_planilla=b.id AND b.id_tipo_planilla=1)
WHERE a.bonos >0
AND (CASE WHEN b.f_inicio_planilla BETWEEN DATE_SUB(CURDATE(), INTERVAL '6' MONTH) AND DATE_SUB(CURDATE(),INTERVAL 1  MONTH) 
THEN a.bonos ELSE 0 END)
GROUP BY a.id_empleado
)A )b ON (A.ID_EMPLEADO=b.id_empleado)

) F ON (F.ID_EMPLEADO=A.id)
LEFT JOIN TBL_PUESTOS G ON (G.ID=A.ID_PUESTO)
WHERE C.ID IN (13,14) AND B.ID_CONCEPTO IS NOT NULL
)A INNER JOIN
(SELECT A.ESTADO,B.PORCENTAJE_MIN,A.ID_EMPLEADO FROM TBL_ASIGNACIONES A
INNER JOIN TBL_OPERACIONES B ON (A.ID_CONCEPTO=B.ID_CONCEPTO)
WHERE A.ID_CONCEPTO =19)B ON (A.ID_EMPLEADO=B.ID_EMPLEADO)
GROUP BY PROMEDIO_DE_COMISION_18_DIAS,B.PORCENTAJE_MIN,A.ID_EMPLEADO,A.ESTADOVACA,B.ESTADO,A.COMSION,
NOMBRECOMPLETO,A.NUM_CLIENTE,A.SUELDO,A.FECHA_INGRESO,A.DESDE,A.HASTA,A.PUESTO,A.COMISIONS
)VACACION 
) F ON (A.ID=F.id_empleado)
LEFT JOIN  ( SELECT B.id id_empleado,A.NUM_CLIENTE,A.COMISION, MONTH(A.FECHA_CREACION),FECHA_CREACION, MONTH(CURDATE() - INTERVAL 1 MONTH), DAY(A.FECHA_CREACION)
FROM tbl_comisiones A LEFT JOIN tbl_empleados B ON (A.num_cliente=B.num_cliente)
WHERE MONTH(FECHA_CREACION) = MONTH(CURDATE()) AND DAY(CURDATE()) BETWEEN 1 AND 15) G ON (A.ID=G.id_empleado)
WHERE C.ID = 5) 	TBL_IPSFA ON (A.ID=TBL_IPSFA.ID_EMPLEADO)
-- ---------------------------------------------FIN
/* QUERY PARA SACAR EL CALCULO INDIVIDUAL DE TBL_IPSFA EN EL ESTAN SUB CONSULTAS
PARA SACAR LA RENTA COMISIONES Y BONOS FIJOS  ESTAN ECHOS DE SUB CONSULTAS TODOS LOS CALCULOS MENSUALES*/
-- -----------------------------------------------------------------------VACACIONES 
LEFT JOIN
( 


SELECT
VACACION.ID_EMPLEADO,
ROUND(
(CASE WHEN VACACION.ESTADOVACA='A' THEN 
(VACACION.VACACION_LEY+VACACION.VACACION_POLITICA+VACACION.PROMEDIO_DE_COMISION_18_DIAS)
ELSE 0 END ),8)vacacion
FROM(
SELECT A.ID_EMPLEADO,NOMBRECOMPLETO,SUM(A.VACACION_LEY)VACACION_LEY,SUM(A.VACACION_POLITICA)VACACION_POLITICA,
A.PROMEDIO_DE_COMISION_18_DIAS, A.ESTADOVACA,A.COMSION,A.SUELDO,A.NUM_CLIENTE,A.TOTALDIAS,A.COMISIONS,
A.PUESTO,A.FECHA_INGRESO,A.DESDE,A.HASTA,(CASE WHEN B.ESTADO= 'A' THEN B.PORCENTAJE_MIN ELSE 0 END)PGR
FROM
(SELECT B.ESTADO ESTADOVACA,A.ID ID_EMPLEADO, A.SUELDO,IFNULL(F.COMSION,0)COMSION,
CONCAT(A.NOMBRES,' ',A.APELLIDOS) NOMBRECOMPLETO,A.NUM_CLIENTE,G.NOMBRE PUESTO,
A.FECHA_INGRESO,
TIMESTAMPDIFF(DAY, DATE_ADD(A.FECHA_INGRESO, INTERVAL TIMESTAMPDIFF(YEAR, A.FECHA_INGRESO, CURDATE()) YEAR),
DATE_ADD(DATE_ADD(A.FECHA_INGRESO, INTERVAL TIMESTAMPDIFF(YEAR, A.FECHA_INGRESO, CURDATE()) YEAR), INTERVAL '1' YEAR))TOTALDIAS,
DATE_ADD(A.FECHA_INGRESO, INTERVAL TIMESTAMPDIFF(YEAR, A.FECHA_INGRESO,CURDATE()) YEAR)DESDE,
DATE_ADD(DATE_ADD(A.FECHA_INGRESO, INTERVAL TIMESTAMPDIFF(YEAR, A.FECHA_INGRESO, CURDATE()) YEAR), INTERVAL '1' YEAR)HASTA,
ROUND((CASE WHEN B.ID_CONCEPTO IN (14) THEN ((((A.SUELDO+IFNULL(F.COMSION,0))/30)*18)*D.PORCENTAJE_MAX) ELSE 0 END),8) VACACION_LEY,
ROUND((CASE WHEN B.ID_CONCEPTO IN (13) THEN ((((A.SUELDO+IFNULL(F.COMSION,0))/30)*18)*D.PORCENTAJE_MAX)ELSE 0 END),8) VACACION_POLITICA,
ROUND((IFNULL(F.COMSION,0)/30)*18,8) PROMEDIO_DE_COMISION_18_DIAS,
ROUND((IFNULL(A.SUELDO+IFNULL(F.COMSION,0),0)/30)*18,8)  COMISIONS    


FROM TBL_EMPLEADOS A
LEFT JOIN TBL_ASIGNACIONES B ON (A.ID=B.ID_EMPLEADO)
LEFT JOIN TBL_CONCEPTOS C ON (C.ID=B.ID_CONCEPTO)
LEFT JOIN TBL_OPERACIONES D ON (C.ID=D.ID_CONCEPTO)
LEFT JOIN
(
SELECT  A.ID_EMPLEADO,ROUND(IFNULL((CASE WHEN A.CANTIDAD>=6 THEN IFNULL(A.COMISION,0.0)/6
ELSE IFNULL(A.COMISION,0.0)/A.CANTIDAD END ),0)+IFNULL(b.total_bono,0.0),8)COMSION ,A.NUM_CLIENTE
FROM  (SELECT A.ID ID_EMPLEADO,F.num_cliente ,
SUM((CASE WHEN F.FECHA_CREACION BETWEEN DATE_SUB(CURDATE(), INTERVAL 7 MONTH) AND DATE_SUB(CURDATE(),INTERVAL 1  MONTH) 
THEN F.COMISION ELSE 0 END)) COMISION, COUNT(F.COMISION)CANTIDAD
FROM TBL_EMPLEADOS A LEFT JOIN TBL_COMISIONES F ON (F.NUM_CLIENTE=A.NUM_CLIENTE)
 GROUP BY A.ID,F.num_cliente 
)A
LEFT JOIN 
(
SELECT
 A.ID_EMPLEADO,ROUND(IFNULL((CASE WHEN A.CANTIDAD>=6 THEN (A.totalbonos)/6
ELSE (A.totalbonos)/A.CANTIDAD END ),0),8)total_bono 
FROM 
(
SELECT a.id_empleado, 
SUM(a.bonos)totalbonos,
COUNT(a.bonos)CANTIDAD
FROM tbl_detalle_planillas a 
INNER JOIN tbl_planillas b ON (a.id_planilla=b.id AND b.id_tipo_planilla=1)
WHERE a.bonos >0
AND (CASE WHEN b.f_inicio_planilla BETWEEN DATE_SUB(CURDATE(), INTERVAL '6' MONTH) AND DATE_SUB(CURDATE(),INTERVAL 1  MONTH) 
THEN a.bonos ELSE 0 END)
GROUP BY a.id_empleado
)A )b ON (A.ID_EMPLEADO=b.id_empleado)

) F ON (F.ID_EMPLEADO=A.id)
LEFT JOIN TBL_PUESTOS G ON (G.ID=A.ID_PUESTO)
WHERE C.ID IN (13,14) AND B.ID_CONCEPTO IS NOT NULL
)A INNER JOIN
(SELECT A.ESTADO,B.PORCENTAJE_MIN,A.ID_EMPLEADO FROM TBL_ASIGNACIONES A
INNER JOIN TBL_OPERACIONES B ON (A.ID_CONCEPTO=B.ID_CONCEPTO)
WHERE A.ID_CONCEPTO =19)B ON (A.ID_EMPLEADO=B.ID_EMPLEADO)
GROUP BY PROMEDIO_DE_COMISION_18_DIAS,B.PORCENTAJE_MIN,A.ID_EMPLEADO,A.ESTADOVACA,B.ESTADO,A.COMSION,
NOMBRECOMPLETO,A.NUM_CLIENTE,A.SUELDO,A.FECHA_INGRESO,A.DESDE,A.HASTA,A.PUESTO,A.COMISIONS
)VACACION 

) TBL_VACAC ON (A.ID=TBL_VACAC.ID_EMPLEADO)
-- ---------------------------------------------FIN
/* QUERY PARA SACAR EL CALCULO INDIVIDUAL DE DE VACACIONES  EN EL ESTAN SUB CONSULTAS TODOS LOS CALCULOS MENSUALES*/


LEFT JOIN -- -----------------------------------------------------------------------COMISIONES 
( SELECT B.id id_empleado,A.NUM_CLIENTE,A.COMISION, MONTH(A.FECHA_CREACION),FECHA_CREACION, MONTH(CURDATE() - INTERVAL 1 MONTH), DAY(A.FECHA_CREACION)
FROM tbl_comisiones A
LEFT JOIN tbl_empleados B ON (A.num_cliente=B.num_cliente)
WHERE MONTH(FECHA_CREACION) = MONTH(CURDATE() - INTERVAL 1 MONTH) AND DAY(CURDATE()) BETWEEN 1 AND 15)
TBL_COMIC ON (A.ID=TBL_COMIC.ID_EMPLEADO)
-- ---------------------------------------------FIN
/* QUERY PARA SACAR EL CALCULO INDIVIDUAL DE LAS COMISIONES   EN EL ESTAN SUB CONSULTAS MENSUALES*/

WHERE C.ID IN (1) AND (
(((A.SUELDO/2)+ifnull(TBL_BRETENC.BASE_RETENCION,0.0)+
IFNULL(tbl_bonos.BONOS,0.0)+ IFNULL(TBL_VACAC.vacacion,0.0)+ IFNULL(TBL_COMIC.COMISION,0.0)+tbl_bonos.BONOSV)
-
(IFNULL((SELECT A.DESCUENTO_PORFALTAS FROM (
SELECT A.id_empleado,((B.sueldo/30)*A.monto)DESCUENTO_PORFALTAS
FROM tbl_asignaciones A LEFT JOIN tbl_empleados B ON (A.id_empleado=B.id)
WHERE A.id_concepto=17  AND A.estado='A')A WHERE A.id_empleado =A.ID),0)
+IFNULL(TBL_ISSS.ISSS,0)+TBL_AFP.AFP+TBL_IPSFA.IPSFA))

 BETWEEN D.DESDE AND D.HASTA)
-- - finalizacion de consulta de descuentos de ley 

)tbl_descue_ley -- ---------------- subconsula de descuentos de ly fosafi 

LEFT JOIN -- ------------subconsulta para los prestamos mensuales
(
SELECT  b.id id_empleado, a.num_cliente,
SUM((case when a.estado='A' then (a.valor_descuento) ELSE 0 END))couota_mensual
FROM tbl_prestamos a LEFT JOIN tbl_empleados b ON (a.num_cliente=b.num_cliente) GROUP BY  b.id , a.num_cliente
) tbl_prests ON (tbl_prests.id_empleado=tbl_descue_ley.ID_EMPLEADO)
-- fin de los descuentos de prestamos todos los prestamos sumados 

LEFT JOIN -- ------------subconsulta para los descuentos varios
(SELECT id_empleado, 
SUM((case when (id_concepto = 6  AND estado ='A') then (monto/2) ELSE 0 END))FOSAFI,
SUM((case when (id_concepto = 7  AND estado ='A') then (monto/2) ELSE 0 END))PGR,
SUM((case when (id_concepto = 8  AND estado ='A') then (monto/2) ELSE 0 END))FSV,
SUM((case when (id_concepto = 9  AND estado ='A') then (monto) ELSE 0 END))ANTICIPO,
SUM((case when (id_concepto = 10 AND estado ='A') then (monto) ELSE 0 END))DV,
SUM((case when (id_concepto = 11 AND estado ='A') then (monto) ELSE 0 END))VIATICOS,
SUM((case when (id_concepto = 12 AND estado ='A') then (monto) ELSE 0 END))REINTEGRO 
FROM tbl_asignaciones GROUP BY id_empleado  ) tbl_varios ON (tbl_descue_ley.ID_EMPLEADO=tbl_varios.id_empleado) ;

-- Volcando estructura para vista planilla.v_detalles_planilla_aguinaldo
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `v_detalles_planilla_aguinaldo`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `v_detalles_planilla_aguinaldo` AS SELECT  
TBLAGUINALDO.ID_EMPLEADO,
TBLAGUINALDO.NOMBRECOMPLETO,
TBLAGUINALDO.CARGO,
TBLAGUINALDO.NUM_CLIENTE,
TBLAGUINALDO.FECHA_INGRESO,
TBLAGUINALDO.FECHACORTE,
TBLAGUINALDO.TIEMPO_LAB_CORTE,
TBLAGUINALDO.DIAS_LABORADOS,
TBLAGUINALDO.TIEMPOLABORADO,
TBLAGUINALDO.COMISION,
TBLAGUINALDO.SUELDO,
TBLAGUINALDO.AGUIINALDO_LEY,
TBLAGUINALDO.COMPLEMENTO_POLITICA,
TBLAGUINALDO.TOTAL_AGUINALDO,
TBLAGUINALDO.TOPE_AGUINALDO,
TBLAGUINALDO.BASE_RETENCION,
TBLAGUINALDO.PGR,
ROUND(TBLISR.CUOTA+(TBLISR.PORCENTAJE_MIN*(TBLAGUINALDO.BASE_RETENCION-TBLISR.SOBRE_EXCESO)),8)RENTA,
(TBLAGUINALDO.PGR)TOTAL_RETENIDO,
(TBLAGUINALDO.TOTAL_AGUINALDO-(TBLAGUINALDO.PGR))LQUIDO_PAGAR
FROM 
(
SELECT A.ID ID_EMPLEADO, A.NUM_CLIENTE,A.FECHA_INGRESO,CONCAT(A.NOMBRES,' ',A.APELLIDOS) NOMBRECOMPLETO,G.NOMBRE CARGO,
(STR_TO_DATE(CONCAT('12-','12-',YEAR(CURDATE())),'%d-%m-%Y'))FECHACORTE,
ROUND((TIMESTAMPDIFF(DAY, A.FECHA_INGRESO, STR_TO_DATE(CONCAT('12-','12-',YEAR(CURDATE())),'%d-%m-%Y'))/360),8) TIEMPO_LAB_CORTE,
TIMESTAMPDIFF(DAY, A.FECHA_INGRESO, STR_TO_DATE(CONCAT('12-','12-',YEAR(CURDATE())),'%d-%m-%Y')) DIAS_LABORADOS,

CONCAT((SELECT TIMESTAMPDIFF(YEAR,A.FECHA_INGRESO,(STR_TO_DATE(CONCAT('12-','12-',YEAR(CURDATE())),'%d-%m-%Y')))),' AÑOS ',
(SELECT (TIMESTAMPDIFF(MONTH,A.FECHA_INGRESO,(STR_TO_DATE(CONCAT('12-','12-',YEAR(CURDATE())),'%d-%m-%Y')))) - 
(TIMESTAMPDIFF(YEAR,A.FECHA_INGRESO,(STR_TO_DATE(CONCAT('12-','12-',YEAR(CURDATE())),'%d-%m-%Y'))) * 12)),' MESES ',
(SELECT DATEDIFF((STR_TO_DATE(CONCAT('12-','12-',YEAR(CURDATE())),'%d-%m-%Y')),
DATE_ADD(DATE_ADD(A.FECHA_INGRESO, INTERVAL TIMESTAMPDIFF(YEAR,A.FECHA_INGRESO,(STR_TO_DATE(CONCAT('12-','12-',YEAR(CURDATE())),'%d-%m-%Y'))) YEAR), 
INTERVAL (TIMESTAMPDIFF(MONTH,A.FECHA_INGRESO,(STR_TO_DATE(CONCAT('12-','12-',YEAR(CURDATE())),'%d-%m-%Y')))) -
 (TIMESTAMPDIFF(YEAR,A.FECHA_INGRESO,(STR_TO_DATE(CONCAT('12-','12-',YEAR(CURDATE())),'%d-%m-%Y'))) * 12) MONTH))),' DIAS'
)TIEMPOLABORADO,

ROUND(F.PROMEDIO_DE_COMISION_6_MESES,8)COMISION,A.SUELDO,D.PORCENTAJE_MIN,

ROUND((CASE WHEN TIMESTAMPDIFF(DAY, A.FECHA_INGRESO, STR_TO_DATE(CONCAT('12-','12-',YEAR(CURDATE())),'%d-%m-%Y'))<180
THEN(((((ROUND(F.PROMEDIO_DE_COMISION_6_MESES,8)+A.SUELDO)/30)*15)/360)*
TIMESTAMPDIFF(DAY, A.FECHA_INGRESO, STR_TO_DATE(CONCAT('12-','12-',YEAR(CURDATE())),'%d-%m-%Y')))
WHEN TIMESTAMPDIFF(DAY, A.FECHA_INGRESO, STR_TO_DATE(CONCAT('12-','12-',YEAR(CURDATE())),'%d-%m-%Y'))>=180
THEN((ROUND(F.PROMEDIO_DE_COMISION_6_MESES,8)+A.SUELDO)/30)*D.PORCENTAJE_MIN END ),8) AGUIINALDO_LEY,

(ROUND((CASE WHEN TIMESTAMPDIFF(DAY, A.FECHA_INGRESO, STR_TO_DATE(CONCAT('12-','12-',YEAR(CURDATE())),'%d-%m-%Y'))<180 THEN 0.00
WHEN TIMESTAMPDIFF(DAY, A.FECHA_INGRESO, STR_TO_DATE(CONCAT('12-','12-',YEAR(CURDATE())),'%d-%m-%Y'))>=180 THEN 
(ROUND(F.PROMEDIO_DE_COMISION_6_MESES,8)+A.SUELDO)-((ROUND(F.PROMEDIO_DE_COMISION_6_MESES,8)+A.SUELDO)/30)*D.PORCENTAJE_MIN
END ),8))COMPLEMENTO_POLITICA,

(ROUND((CASE WHEN TIMESTAMPDIFF(DAY, A.FECHA_INGRESO, STR_TO_DATE(CONCAT('12-','12-',YEAR(CURDATE())),'%d-%m-%Y'))<180
THEN(((((ROUND(F.PROMEDIO_DE_COMISION_6_MESES,8)+A.SUELDO)/30)*15)/360)*
TIMESTAMPDIFF(DAY, A.FECHA_INGRESO, STR_TO_DATE(CONCAT('12-','12-',YEAR(CURDATE())),'%d-%m-%Y')))
WHEN TIMESTAMPDIFF(DAY, A.FECHA_INGRESO, STR_TO_DATE(CONCAT('12-','12-',YEAR(CURDATE())),'%d-%m-%Y'))>=180
THEN((ROUND(F.PROMEDIO_DE_COMISION_6_MESES,8)+A.SUELDO)/30)*D.PORCENTAJE_MIN END ),8) 
+(ROUND((CASE WHEN TIMESTAMPDIFF(DAY, A.FECHA_INGRESO, STR_TO_DATE(CONCAT('12-','12-',YEAR(CURDATE())),'%d-%m-%Y'))<180 THEN 0.00
WHEN TIMESTAMPDIFF(DAY, A.FECHA_INGRESO, STR_TO_DATE(CONCAT('12-','12-',YEAR(CURDATE())),'%d-%m-%Y'))>=180 THEN 
(ROUND(F.PROMEDIO_DE_COMISION_6_MESES,8)+A.SUELDO)-((ROUND(F.PROMEDIO_DE_COMISION_6_MESES,8)+A.SUELDO)/30)*D.PORCENTAJE_MIN
END ),8))) TOTAL_AGUINALDO,

D.SOBRE_EXCESO TOPE_AGUINALDO,

(CASE WHEN (ROUND((CASE WHEN TIMESTAMPDIFF(DAY, A.FECHA_INGRESO, STR_TO_DATE(CONCAT('12-','12-',YEAR(CURDATE())),'%d-%m-%Y'))<180
THEN(((((ROUND(F.PROMEDIO_DE_COMISION_6_MESES,8)+A.SUELDO)/30)*15)/360)*
TIMESTAMPDIFF(DAY, A.FECHA_INGRESO, STR_TO_DATE(CONCAT('12-','12-',YEAR(CURDATE())),'%d-%m-%Y')))
WHEN TIMESTAMPDIFF(DAY, A.FECHA_INGRESO, STR_TO_DATE(CONCAT('12-','12-',YEAR(CURDATE())),'%d-%m-%Y'))>=180
THEN ((ROUND(F.PROMEDIO_DE_COMISION_6_MESES,8)+A.SUELDO)/30)*D.PORCENTAJE_MIN
END ),8)+ (ROUND((CASE WHEN TIMESTAMPDIFF(DAY, A.FECHA_INGRESO, STR_TO_DATE(CONCAT('12-','12-',YEAR(CURDATE())),'%d-%m-%Y'))<180 THEN 0.00
WHEN TIMESTAMPDIFF(DAY, A.FECHA_INGRESO, STR_TO_DATE(CONCAT('12-','12-',YEAR(CURDATE())),'%d-%m-%Y'))>=180 THEN 
(ROUND(F.PROMEDIO_DE_COMISION_6_MESES,8)+A.SUELDO)-((ROUND(F.PROMEDIO_DE_COMISION_6_MESES,8)+A.SUELDO)/30)*D.PORCENTAJE_MIN
END ),8))) > D.SOBRE_EXCESO  THEN 
(ROUND((CASE WHEN TIMESTAMPDIFF(DAY, A.FECHA_INGRESO, STR_TO_DATE(CONCAT('12-','12-',YEAR(CURDATE())),'%d-%m-%Y'))<180
THEN(((((ROUND(F.PROMEDIO_DE_COMISION_6_MESES,8)+A.SUELDO)/30)*15)/360)*
TIMESTAMPDIFF(DAY, A.FECHA_INGRESO, STR_TO_DATE(CONCAT('12-','12-',YEAR(CURDATE())),'%d-%m-%Y')))
WHEN TIMESTAMPDIFF(DAY, A.FECHA_INGRESO, STR_TO_DATE(CONCAT('12-','12-',YEAR(CURDATE())),'%d-%m-%Y'))>=180
THEN ((ROUND(F.PROMEDIO_DE_COMISION_6_MESES,8)+A.SUELDO)/30)*D.PORCENTAJE_MIN
END ),8)+ (ROUND((CASE WHEN TIMESTAMPDIFF(DAY, A.FECHA_INGRESO, STR_TO_DATE(CONCAT('12-','12-',YEAR(CURDATE())),'%d-%m-%Y'))<180 THEN 0.00
WHEN TIMESTAMPDIFF(DAY, A.FECHA_INGRESO, STR_TO_DATE(CONCAT('12-','12-',YEAR(CURDATE())),'%d-%m-%Y'))>=180 THEN 
(ROUND(F.PROMEDIO_DE_COMISION_6_MESES,8)+A.SUELDO)-((ROUND(F.PROMEDIO_DE_COMISION_6_MESES,8)+A.SUELDO)/30)*D.PORCENTAJE_MIN
END ),8)))-D.SOBRE_EXCESO ELSE 0 END 
) BASE_RETENCION,

ROUND(((CASE WHEN TIMESTAMPDIFF(DAY, A.FECHA_INGRESO, STR_TO_DATE(CONCAT('12-','12-',YEAR(CURDATE())),'%d-%m-%Y'))<180
THEN(((((ROUND(F.PROMEDIO_DE_COMISION_6_MESES,8)+A.SUELDO)/30)*15)/360)*
TIMESTAMPDIFF(DAY, A.FECHA_INGRESO, STR_TO_DATE(CONCAT('12-','12-',YEAR(CURDATE())),'%d-%m-%Y')))
WHEN TIMESTAMPDIFF(DAY, A.FECHA_INGRESO, STR_TO_DATE(CONCAT('12-','12-',YEAR(CURDATE())),'%d-%m-%Y'))>=180
THEN((ROUND(F.PROMEDIO_DE_COMISION_6_MESES,8)+A.SUELDO)/30)*D.PORCENTAJE_MIN END ) 
+((CASE WHEN TIMESTAMPDIFF(DAY, A.FECHA_INGRESO, STR_TO_DATE(CONCAT('12-','12-',YEAR(CURDATE())),'%d-%m-%Y'))<180 THEN 0.00
WHEN TIMESTAMPDIFF(DAY, A.FECHA_INGRESO, STR_TO_DATE(CONCAT('12-','12-',YEAR(CURDATE())),'%d-%m-%Y'))>=180 THEN 
(ROUND(F.PROMEDIO_DE_COMISION_6_MESES,8)+A.SUELDO)-((ROUND(F.PROMEDIO_DE_COMISION_6_MESES,8)+A.SUELDO)/30)*D.PORCENTAJE_MIN
END )))*
(CASE WHEN H.ESTADOPGR = 'A' THEN H.PORCENPGR ELSE 0 END),8)PGR
FROM TBL_EMPLEADOS A 
LEFT JOIN TBL_ASIGNACIONES B ON (A.ID=B.ID_EMPLEADO) 
LEFT JOIN TBL_CONCEPTOS C ON (C.ID = 20)  AND (C.ID=B.ID_CONCEPTO)
LEFT JOIN TBL_OPERACIONES D ON (C.ID=D.ID_CONCEPTO)  
LEFT JOIN TBL_PUESTOS E ON (E.ID=A.ID_PUESTO) 
LEFT JOIN
(
SELECT  A.ID_EMPLEADO,ROUND(IFNULL((CASE WHEN A.CANTIDAD>=6 THEN IFNULL(A.COMISION,0.0)/6
ELSE IFNULL(A.COMISION,0.0)/A.CANTIDAD END ),0)+IFNULL(b.total_bono,0.0),8)PROMEDIO_DE_COMISION_6_MESES ,A.NUM_CLIENTE
FROM  (SELECT A.ID ID_EMPLEADO,F.num_cliente ,
SUM((CASE WHEN F.FECHA_CREACION BETWEEN DATE_SUB(CURDATE(), INTERVAL 7 MONTH) AND DATE_SUB(CURDATE(),INTERVAL 1  MONTH) 
THEN F.COMISION ELSE 0 END)) COMISION, COUNT(F.COMISION)CANTIDAD
FROM TBL_EMPLEADOS A LEFT JOIN TBL_COMISIONES F ON (F.NUM_CLIENTE=A.NUM_CLIENTE)
 GROUP BY A.ID,F.num_cliente 
)A

LEFT JOIN 
(
SELECT
 A.ID_EMPLEADO,ROUND(IFNULL((CASE WHEN A.CANTIDAD>=6 THEN (A.totalbonos)/6
ELSE (A.totalbonos)/A.CANTIDAD END ),0),8)total_bono 
FROM 
(
SELECT a.id_empleado, 
SUM(a.bonos)totalbonos,
COUNT(a.bonos)CANTIDAD
FROM tbl_detalle_planillas a 
INNER JOIN tbl_planillas b ON (a.id_planilla=b.id AND b.id_tipo_planilla=1)
WHERE a.bonos >0
AND (CASE WHEN b.f_inicio_planilla BETWEEN DATE_SUB(CURDATE(), INTERVAL '6' MONTH) AND DATE_SUB(CURDATE(),INTERVAL 1  MONTH) 
THEN a.bonos ELSE 0 END)
GROUP BY a.id_empleado
)A )b ON (A.ID_EMPLEADO=b.id_empleado)
) F ON (A.ID=F.ID_EMPLEADO)
LEFT JOIN TBL_PUESTOS G ON (G.ID=A.ID_PUESTO) 
LEFT JOIN 
(SELECT A.id_empleado,B.PORCENTAJE_MIN PORCENPGR,A.estado ESTADOPGR
FROM  TBL_ASIGNACIONES A INNER JOIN TBL_OPERACIONES B 
ON (B.ID_CONCEPTO=A.ID_CONCEPTO) AND (A.ID_CONCEPTO=19)) H ON (A.ID=H.ID_EMPLEADO) 
WHERE (TIMESTAMPDIFF(DAY, A.FECHA_INGRESO, STR_TO_DATE(CONCAT('12-','12-',YEAR(CURDATE())),'%d-%m-%Y')) BETWEEN D.DESDE AND D.HASTA)
 AND a.estado='A'
) TBLAGUINALDO
LEFT  JOIN 
(SELECT A.id_empleado,B.desde,B.hasta,B.porcentaje_min,B.porcentaje_max,B.cuota,B.sobre_exceso,A.estado
FROM  TBL_ASIGNACIONES A INNER JOIN TBL_OPERACIONES B 
ON (B.ID_CONCEPTO=A.ID_CONCEPTO) AND (A.ID_CONCEPTO=1))TBLISR ON (TBLAGUINALDO.id_empleado=TBLISR.id_empleado)

WHERE TBLAGUINALDO.BASE_RETENCION BETWEEN TBLISR.DESDE AND TBLISR.HASTA
ORDER BY TBLAGUINALDO.ID_EMPLEADO ASC ;

-- Volcando estructura para vista planilla.v_detalles_planilla_indemnizacion
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `v_detalles_planilla_indemnizacion`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `v_detalles_planilla_indemnizacion` AS SELECT  
TBL_INDEMNIZACION.ID_EMPLEADO,
TBL_INDEMNIZACION.FECHACORTE,
TBL_INDEMNIZACION.TIEMPO_LAB_CORTE,
TBL_INDEMNIZACION.DIAS_LABORADOS,
TBL_INDEMNIZACION.TIEMPOLABORADO,
TBL_INDEMNIZACION.COMISION,
TBL_INDEMNIZACION.SUELDO,
TBL_INDEMNIZACION.INDEMNIZACION,
TBL_INDEMNIZACION.TOPE_INDEMNIZACION,
TBL_INDEMNIZACION.BASE_RETENCION,
ROUND(TBLISR.CUOTA+(TBLISR.PORCENTAJE_MIN*(TBL_INDEMNIZACION.BASE_RETENCION-TBLISR.SOBRE_EXCESO)),8)RENTA,
TBL_INDEMNIZACION.PGR,
(TBL_INDEMNIZACION.PGR)TOTAL_RETENIDO,
(TBL_INDEMNIZACION.INDEMNIZACION-TBL_INDEMNIZACION.PGR)LQUIDO_PAGAR
FROM 
(


SELECT A.ID ID_EMPLEADO, A.NUM_CLIENTE,A.FECHA_INGRESO,CONCAT(A.NOMBRES,' ',A.APELLIDOS) NOMBRECOMPLETO,G.NOMBRE CARGO,
(STR_TO_DATE(CONCAT('30-','12-',YEAR(CURDATE())),'%d-%m-%Y'))FECHACORTE,
ROUND((TIMESTAMPDIFF(DAY, A.FECHA_INGRESO, STR_TO_DATE(CONCAT('30-','12-',YEAR(CURDATE())),'%d-%m-%Y'))/360),8) TIEMPO_LAB_CORTE,
TIMESTAMPDIFF(DAY, A.FECHA_INGRESO, STR_TO_DATE(CONCAT('30-','12-',YEAR(CURDATE())),'%d-%m-%Y')) DIAS_LABORADOS,

CONCAT((SELECT TIMESTAMPDIFF(YEAR,A.FECHA_INGRESO,(STR_TO_DATE(CONCAT('30-','12-',YEAR(CURDATE())),'%d-%m-%Y')))),' AÑOS ',
(SELECT (TIMESTAMPDIFF(MONTH,A.FECHA_INGRESO,(STR_TO_DATE(CONCAT('30-','12-',YEAR(CURDATE())),'%d-%m-%Y')))) - 
(TIMESTAMPDIFF(YEAR,A.FECHA_INGRESO,(STR_TO_DATE(CONCAT('30-','12-',YEAR(CURDATE())),'%d-%m-%Y'))) * 12)),' MESES ',
(SELECT DATEDIFF((STR_TO_DATE(CONCAT('30-','12-',YEAR(CURDATE())),'%d-%m-%Y')),
DATE_ADD(DATE_ADD(A.FECHA_INGRESO, INTERVAL TIMESTAMPDIFF(YEAR,A.FECHA_INGRESO,(STR_TO_DATE(CONCAT('30-','12-',YEAR(CURDATE())),'%d-%m-%Y'))) YEAR), 
INTERVAL (TIMESTAMPDIFF(MONTH,A.FECHA_INGRESO,(STR_TO_DATE(CONCAT('30-','12-',YEAR(CURDATE())),'%d-%m-%Y')))) -
 (TIMESTAMPDIFF(YEAR,A.FECHA_INGRESO,(STR_TO_DATE(CONCAT('30-','12-',YEAR(CURDATE())),'%d-%m-%Y'))) * 12) MONTH))),' DIAS'
)TIEMPOLABORADO,

ROUND(F.PROMEDIO_DE_COMISION_6_MESES,8)COMISION,A.SUELDO,

ROUND((CASE WHEN (TIMESTAMPDIFF(DAY, A.FECHA_INGRESO, STR_TO_DATE(CONCAT('30-','12-',YEAR(CURDATE())),'%d-%m-%Y')) <= 364)
THEN (TIMESTAMPDIFF(DAY, A.FECHA_INGRESO, STR_TO_DATE(CONCAT('30-','12-',YEAR(CURDATE())),'%d-%m-%Y')) *A.SUELDO)/D.PORCENTAJE_MAX
ELSE A.SUELDO END ),8)INDEMNIZACION,

D.SOBRE_EXCESO TOPE_INDEMNIZACION,

(CASE WHEN ROUND((CASE WHEN (TIMESTAMPDIFF(DAY, A.FECHA_INGRESO, STR_TO_DATE(CONCAT('30-','12-',YEAR(CURDATE())),'%d-%m-%Y')) <= 364)
THEN (TIMESTAMPDIFF(DAY, A.FECHA_INGRESO, STR_TO_DATE(CONCAT('30-','12-',YEAR(CURDATE())),'%d-%m-%Y')) *A.SUELDO)/D.PORCENTAJE_MAX
ELSE A.SUELDO END ),8)> D.SOBRE_EXCESO
THEN
(ROUND((CASE WHEN (TIMESTAMPDIFF(DAY, A.FECHA_INGRESO, STR_TO_DATE(CONCAT('30-','12-',YEAR(CURDATE())),'%d-%m-%Y')) <= 364)
THEN (TIMESTAMPDIFF(DAY, A.FECHA_INGRESO, STR_TO_DATE(CONCAT('30-','12-',YEAR(CURDATE())),'%d-%m-%Y')) *A.SUELDO)/D.PORCENTAJE_MAX
ELSE A.SUELDO END ),8)+ROUND(F.PROMEDIO_DE_COMISION_6_MESES,8))-D.SOBRE_EXCESO
ELSE 0 END)BASE_RETENCION,

ROUND(
(ROUND((CASE WHEN (TIMESTAMPDIFF(DAY, A.FECHA_INGRESO, STR_TO_DATE(CONCAT('30-','12-',YEAR(CURDATE())),'%d-%m-%Y')) <= 364)
THEN (TIMESTAMPDIFF(DAY, A.FECHA_INGRESO, STR_TO_DATE(CONCAT('30-','12-',YEAR(CURDATE())),'%d-%m-%Y')) *A.SUELDO)/D.PORCENTAJE_MAX
ELSE A.SUELDO END ),8)+ROUND(F.PROMEDIO_DE_COMISION_6_MESES,2)) * (CASE WHEN H.ESTADOPGR = 'A' THEN H.PORCENPGR ELSE 0 END),8)PGR

FROM TBL_EMPLEADOS A 
LEFT JOIN TBL_ASIGNACIONES B ON (A.ID=B.ID_EMPLEADO) 
LEFT JOIN TBL_CONCEPTOS C ON (C.ID = 22)  AND (C.ID=B.ID_CONCEPTO)
LEFT JOIN TBL_OPERACIONES D ON (C.ID=D.ID_CONCEPTO)  
LEFT JOIN TBL_PUESTOS E ON (E.ID=A.ID_PUESTO) 
LEFT JOIN
(
SELECT  A.ID_EMPLEADO,ROUND(IFNULL((CASE WHEN A.CANTIDAD>=6 THEN IFNULL(A.COMISION,0.0)/6
ELSE IFNULL(A.COMISION,0.0)/A.CANTIDAD END ),0)+IFNULL(b.total_bono,0.0),8)PROMEDIO_DE_COMISION_6_MESES ,A.NUM_CLIENTE
FROM  (SELECT A.ID ID_EMPLEADO,F.num_cliente ,
SUM((CASE WHEN F.FECHA_CREACION BETWEEN DATE_SUB(CURDATE(), INTERVAL 7 MONTH) AND DATE_SUB(CURDATE(),INTERVAL 1  MONTH) 
THEN F.COMISION ELSE 0 END)) COMISION, COUNT(F.COMISION)CANTIDAD
FROM TBL_EMPLEADOS A LEFT JOIN TBL_COMISIONES F ON (F.NUM_CLIENTE=A.NUM_CLIENTE)
 GROUP BY A.ID,F.num_cliente 
)A

LEFT JOIN 
(
SELECT
 A.ID_EMPLEADO,ROUND(IFNULL((CASE WHEN A.CANTIDAD>=6 THEN (A.totalbonos)/6
ELSE (A.totalbonos)/A.CANTIDAD END ),0),8)total_bono 
FROM 
(
SELECT a.id_empleado, 
SUM(a.bonos)totalbonos,
COUNT(a.bonos)CANTIDAD
FROM tbl_detalle_planillas a 
INNER JOIN tbl_planillas b ON (a.id_planilla=b.id AND b.id_tipo_planilla=1)
WHERE a.bonos >0
AND (CASE WHEN b.f_inicio_planilla BETWEEN DATE_SUB(CURDATE(), INTERVAL '6' MONTH) AND DATE_SUB(CURDATE(),INTERVAL 1  MONTH) 
THEN a.bonos ELSE 0 END)
GROUP BY a.id_empleado
)A )b ON (A.ID_EMPLEADO=b.id_empleado)



) F ON (A.ID=F.ID_EMPLEADO)
LEFT JOIN TBL_PUESTOS G ON (G.ID=A.ID_PUESTO) 
LEFT JOIN 
(SELECT A.id_empleado,B.PORCENTAJE_MIN PORCENPGR,A.estado ESTADOPGR
FROM  TBL_ASIGNACIONES A INNER JOIN TBL_OPERACIONES B 
ON (B.ID_CONCEPTO=A.ID_CONCEPTO) AND (A.ID_CONCEPTO=19)) H ON (A.ID=H.ID_EMPLEADO) 
 WHERE ( TIMESTAMPDIFF(DAY, A.FECHA_INGRESO, STR_TO_DATE(CONCAT('30-','12-',YEAR(CURDATE())),'%d-%m-%Y')) BETWEEN D.DESDE AND D.HASTA)
AND a.estado='A'
 ) TBL_INDEMNIZACION
LEFT  JOIN 
(SELECT A.id_empleado,B.desde,B.hasta,B.porcentaje_min,B.porcentaje_max,B.cuota,B.sobre_exceso,A.estado
FROM  TBL_ASIGNACIONES A INNER JOIN TBL_OPERACIONES B 
ON (B.ID_CONCEPTO=A.ID_CONCEPTO) AND (A.ID_CONCEPTO=1))TBLISR ON (TBL_INDEMNIZACION.id_empleado=TBLISR.id_empleado)

WHERE TBL_INDEMNIZACION.BASE_RETENCION BETWEEN TBLISR.DESDE AND TBLISR.HASTA
ORDER BY TBL_INDEMNIZACION.ID_EMPLEADO ASC ;

-- Volcando estructura para vista planilla.v_detalles_planilla_quincenal
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `v_detalles_planilla_quincenal`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `v_detalles_planilla_quincenal` AS SELECT 
tbl_descue_ley.ID_EMPLEADO,
tbl_descue_ley.SUELDO,
15 DIAS_QUINCENA,
(15-IFNULL(DIAS_FALTADOS,0)) DIAS_TRABAJADOS,
ROUND(tbl_descue_ley.SUELDO_QUINCENAL,8)calculo_salario,
IFNULL(tbl_prests.couota_mensual,0.00) PRESTAMOS,
tbl_varios.ANTICIPO,
tbl_descue_ley.BONOS,
tbl_descue_ley.BONOSV,
tbl_descue_ley.VACACION,
tbl_descue_ley.COMISION,
tbl_descue_ley.TOTALQUINCENA,
tbl_descue_ley.ISSS,
tbl_descue_ley.AFP,
tbl_descue_ley.IPSFA,
tbl_varios.FOSAFI,
tbl_descue_ley.RENTA,
ROUND(tbl_descue_ley.TOTAL_DESCUENTOS,8)TOTAL_DESCUENTOS, 
tbl_varios.PGR,
tbl_varios.FSV,
tbl_varios.DV,
tbl_varios.VIATICOS,
tbl_varios.REINTEGRO ,
ROUND(((tbl_descue_ley.TOTALQUINCENA-tbl_descue_ley.TOTAL_DESCUENTOS-IFNULL(tbl_prests.couota_mensual,0.00)-
tbl_varios.PGR-tbl_varios.FSV-tbl_varios.ANTICIPO-tbl_varios.DV)+tbl_varios.VIATICOS+tbl_varios.REINTEGRO),8)LIQUIDO_PAGAR
FROM
(
SELECT 
A.ID ID_EMPLEADO, A.NUM_CLIENTE, 
A.SUELDO,
((A.SUELDO-
IFNULL((SELECT A.DESCUENTO_PORFALTAS FROM (
SELECT A.id_empleado,((B.sueldo/30)*A.monto)DESCUENTO_PORFALTAS
FROM tbl_asignaciones A LEFT JOIN tbl_empleados B ON (A.id_empleado=B.id)
WHERE A.id_concepto=17  AND A.estado='A')A WHERE A.id_empleado =A.ID),0)

))SUELDO_MENSUAL,

((A.SUELDO/2)-IFNULL((SELECT A.DESCUENTO_PORFALTAS FROM (
SELECT A.id_empleado,((B.sueldo/30)*A.monto)DESCUENTO_PORFALTAS
FROM tbl_asignaciones A LEFT JOIN tbl_empleados B ON (A.id_empleado=B.id)
WHERE A.id_concepto=17  AND A.estado='A')A WHERE A.id_empleado =A.ID),0)) SUELDO_QUINCENAL,

CONCAT(Nombres, ' ', Apellidos) AS Nombre,
A.fecha_ingreso, tbl_bonos.BONOS, tbl_bonos.BONOSV, IFNULL(TBL_VACAC.vacacion,0.0) VACACION,

IFNULL(TBL_COMIC.COMISION,0.0)COMISION,

ROUND(((A.SUELDO/2)-IFNULL((SELECT A.DESCUENTO_PORFALTAS FROM (
SELECT A.id_empleado,((B.sueldo/30)*A.monto)DESCUENTO_PORFALTAS
FROM tbl_asignaciones A LEFT JOIN tbl_empleados B ON (A.id_empleado=B.id)
WHERE A.id_concepto=17  AND A.estado='A')A WHERE A.id_empleado =A.ID),0))+
 IFNULL(tbl_bonos.BONOS,0.0)+ IFNULL(TBL_VACAC.vacacion,0.0)+ 
 IFNULL(tbl_bonos.BONOSV,0.0)+IFNULL(TBL_COMIC.COMISION,0.0),8) TOTALQUINCENA,

IFNULL(TBL_AFP.AFP,0)AFP,IFNULL(TBL_ISSS.ISSS,0)ISSS, TBL_IPSFA.IPSFA,tbl_bonos.FOSAFI, 
 
IFNULL((SELECT A.DESCUENTO_PORFALTAS FROM (
SELECT A.id_empleado,((B.sueldo/30)*A.monto)DESCUENTO_PORFALTAS
FROM tbl_asignaciones A LEFT JOIN tbl_empleados B ON (A.id_empleado=B.id)
WHERE A.id_concepto=17  AND A.estado='A')A WHERE A.id_empleado =A.ID),0) DESCUENTO_FALTA,

IFNULL((SELECT A.DIAS_FALTADOS FROM (
SELECT A.id_empleado,ROUND(A.monto,0) DIAS_FALTADOS
FROM tbl_asignaciones A LEFT JOIN tbl_empleados B ON (A.id_empleado=B.id)
WHERE A.id_concepto=17  AND A.estado='A')A WHERE A.id_empleado =A.ID),0) DIAS_FALTADOS,



ROUND(
(((((A.SUELDO/2)+IFNULL(tbl_bonos.BONOS,0.0)+ IFNULL(TBL_VACAC.vacacion,0.0)+ IFNULL(TBL_COMIC.COMISION,0.0)+tbl_bonos.BONOSV)
-(IFNULL((SELECT A.DESCUENTO_PORFALTAS FROM (
SELECT A.id_empleado,((B.sueldo/30)*A.monto)DESCUENTO_PORFALTAS
FROM tbl_asignaciones A LEFT JOIN tbl_empleados B ON (A.id_empleado=B.id)
WHERE A.id_concepto=17  AND A.estado='A')A WHERE A.id_empleado =A.ID),0)
+IFNULL(TBL_ISSS.ISSS,0)+TBL_AFP.AFP+TBL_IPSFA.IPSFA))-D.SOBRE_EXCESO)*D.PORCENTAJE_MIN)+D.CUOTA,8)

RENTA,



(TBL_AFP.AFP+IFNULL(TBL_ISSS.ISSS,0)+TBL_IPSFA.IPSFA+tbl_bonos.FOSAFI
+
ROUND(
(((((A.SUELDO/2)+IFNULL(tbl_bonos.BONOS,0.0)+ IFNULL(TBL_VACAC.vacacion,0.0)+ IFNULL(TBL_COMIC.COMISION,0.0)+tbl_bonos.BONOSV)
-(IFNULL((SELECT A.DESCUENTO_PORFALTAS FROM (
SELECT A.id_empleado,((B.sueldo/30)*A.monto)DESCUENTO_PORFALTAS
FROM tbl_asignaciones A LEFT JOIN tbl_empleados B ON (A.id_empleado=B.id)
WHERE A.id_concepto=17  AND A.estado='A')A WHERE A.id_empleado =A.ID),0)
+IFNULL(TBL_ISSS.ISSS,0)+TBL_AFP.AFP+TBL_IPSFA.IPSFA))-D.SOBRE_EXCESO)*D.PORCENTAJE_MIN)+D.CUOTA,8)
 
)TOTAL_DESCUENTOS

FROM TBL_EMPLEADOS A
LEFT JOIN TBL_ASIGNACIONES B ON (A.ID=B.ID_EMPLEADO AND a.estado = 'A')
LEFT JOIN TBL_CONCEPTOS C ON (C.ID=B.ID_CONCEPTO)
LEFT JOIN TBL_OPERACIONES D ON (C.ID=D.ID_CONCEPTO)
LEFT JOIN -- --------------------------------------------------------------------BONOS 
(SELECT id_empleado, SUM((CASE WHEN (id_concepto = 15 AND estado ='A') THEN (monto/2) ELSE 0 END))BONOS, 
SUM((CASE WHEN (id_concepto = 16 AND estado ='A') THEN (monto) ELSE 0 END))BONOSV,
SUM((case when (id_concepto = 6  AND estado ='A') then (monto/2) ELSE 0 END))FOSAFI
FROM tbl_asignaciones
GROUP BY id_empleado ) tbl_bonos ON (A.ID=tbl_bonos.id_empleado) -- SUBCONSULTA PARA SACAR LOS BONOS ACTIVOS y el descuento de fosafi
LEFT JOIN -- -----------------------------------------------------------------------AFP 
(
SELECT A.ID ID_EMPLEADO, 
(CASE WHEN B.ESTADO ='A' THEN  
SUM((CASE WHEN (ROUND(((A.SUELDO/2)-IFNULL((SELECT A.DESCUENTO_PORFALTAS FROM (
SELECT A.id_empleado,((B.sueldo/30)*A.monto)DESCUENTO_PORFALTAS
FROM tbl_asignaciones A LEFT JOIN tbl_empleados B ON (A.id_empleado=B.id)
WHERE A.id_concepto=17  AND A.estado='A')A WHERE A.id_empleado =A.ID),0)),8)+ IFNULL(E.BONOS,0.0)+ IFNULL(F.vacacion,0.0)+ IFNULL(G.COMISION,0.0) > D.HASTA) 
THEN (D.HASTA*D.PORCENTAJE_MIN) 
WHEN (ROUND(((A.SUELDO/2)-IFNULL((SELECT A.DESCUENTO_PORFALTAS FROM (
SELECT A.id_empleado,((B.sueldo/30)*A.monto)DESCUENTO_PORFALTAS
FROM tbl_asignaciones A LEFT JOIN tbl_empleados B ON (A.id_empleado=B.id)
WHERE A.id_concepto=17  AND A.estado='A')A WHERE A.id_empleado =A.ID),0)),8)+ IFNULL(E.BONOS,0.0)+ IFNULL(F.vacacion,0.0)+ IFNULL(G.COMISION,0.0) < D.HASTA) 
THEN FORMAT((ROUND(((A.SUELDO/2)-IFNULL((SELECT A.DESCUENTO_PORFALTAS FROM (
SELECT A.id_empleado,((B.sueldo/30)*A.monto)DESCUENTO_PORFALTAS
FROM tbl_asignaciones A LEFT JOIN tbl_empleados B ON (A.id_empleado=B.id)
WHERE A.id_concepto=17  AND A.estado='A')A WHERE A.id_empleado =A.ID),0)),8)+ IFNULL(E.BONOS,0.0)+ IFNULL(F.vacacion,0.0)+ IFNULL(G.COMISION,0.0))*D.PORCENTAJE_MIN,8) END))
ELSE 0 END)
 AFP

FROM tbl_empleados A
LEFT JOIN TBL_ASIGNACIONES B ON (A.ID=B.ID_EMPLEADO)
LEFT JOIN TBL_CONCEPTOS C ON (C.ID=B.ID_CONCEPTO)
LEFT JOIN TBL_OPERACIONES D ON (C.ID=D.ID_CONCEPTO)
LEFT JOIN 
(
SELECT id_empleado, SUM((CASE WHEN (id_concepto = 15 AND estado ='A') THEN (monto/2) ELSE 0 END))BONOS
FROM tbl_asignaciones
GROUP BY id_empleado)E ON (A.ID=E.id_empleado)
LEFT JOIN 
(

SELECT
VACACION.ID_EMPLEADO,

ROUND(
(CASE WHEN VACACION.ESTADOVACA='A' THEN 
(VACACION.VACACION_LEY+VACACION.VACACION_POLITICA+VACACION.PROMEDIO_DE_COMISION_18_DIAS)
ELSE 0 END ),8)vacacion

FROM(
SELECT A.ID_EMPLEADO,NOMBRECOMPLETO,SUM(A.VACACION_LEY)VACACION_LEY,SUM(A.VACACION_POLITICA)VACACION_POLITICA,
A.PROMEDIO_DE_COMISION_18_DIAS, A.ESTADOVACA,A.COMSION,A.SUELDO,A.NUM_CLIENTE,A.TOTALDIAS,A.COMISIONS,
A.PUESTO,A.FECHA_INGRESO,A.DESDE,A.HASTA,(CASE WHEN B.ESTADO= 'A' THEN B.PORCENTAJE_MIN ELSE 0 END)PGR
FROM
(SELECT B.ESTADO ESTADOVACA,A.ID ID_EMPLEADO, A.SUELDO,IFNULL(F.COMSION,0)COMSION,
CONCAT(A.NOMBRES,' ',A.APELLIDOS) NOMBRECOMPLETO,A.NUM_CLIENTE,G.NOMBRE PUESTO,
A.FECHA_INGRESO,
TIMESTAMPDIFF(DAY, DATE_ADD(A.FECHA_INGRESO, INTERVAL TIMESTAMPDIFF(YEAR, A.FECHA_INGRESO, CURDATE()) YEAR),
DATE_ADD(DATE_ADD(A.FECHA_INGRESO, INTERVAL TIMESTAMPDIFF(YEAR, A.FECHA_INGRESO, CURDATE()) YEAR), INTERVAL '1' YEAR))TOTALDIAS,
DATE_ADD(A.FECHA_INGRESO, INTERVAL TIMESTAMPDIFF(YEAR, A.FECHA_INGRESO,CURDATE()) YEAR)DESDE,
DATE_ADD(DATE_ADD(A.FECHA_INGRESO, INTERVAL TIMESTAMPDIFF(YEAR, A.FECHA_INGRESO, CURDATE()) YEAR), INTERVAL '1' YEAR)HASTA,
ROUND((CASE WHEN B.ID_CONCEPTO IN (14) THEN ((((A.SUELDO+IFNULL(F.COMSION,0))/30)*18)*D.PORCENTAJE_MAX) ELSE 0 END),8) VACACION_LEY,
ROUND((CASE WHEN B.ID_CONCEPTO IN (13) THEN ((((A.SUELDO+IFNULL(F.COMSION,0))/30)*18)*D.PORCENTAJE_MAX)ELSE 0 END),8) VACACION_POLITICA,
ROUND((IFNULL(F.COMSION,0)/30)*18,8) PROMEDIO_DE_COMISION_18_DIAS,
ROUND((IFNULL(A.SUELDO+IFNULL(F.COMSION,0),0)/30)*18,8)  COMISIONS    


FROM TBL_EMPLEADOS A
LEFT JOIN TBL_ASIGNACIONES B ON (A.ID=B.ID_EMPLEADO)
LEFT JOIN TBL_CONCEPTOS C ON (C.ID=B.ID_CONCEPTO)
LEFT JOIN TBL_OPERACIONES D ON (C.ID=D.ID_CONCEPTO)
LEFT JOIN
(


SELECT  A.ID_EMPLEADO,ROUND(IFNULL((CASE WHEN A.CANTIDAD>=6 THEN IFNULL(A.COMISION,0.0)/6
ELSE IFNULL(A.COMISION,0.0)/A.CANTIDAD END ),0)+IFNULL(b.total_bono,0.0),8)COMSION ,A.NUM_CLIENTE
FROM  (SELECT A.ID ID_EMPLEADO,F.num_cliente ,
SUM((CASE WHEN F.FECHA_CREACION BETWEEN DATE_SUB(CURDATE(), INTERVAL 7 MONTH) AND DATE_SUB(CURDATE(),INTERVAL 1  MONTH) 
THEN F.COMISION ELSE 0 END)) COMISION, COUNT(F.COMISION)CANTIDAD
FROM TBL_EMPLEADOS A LEFT JOIN TBL_COMISIONES F ON (F.NUM_CLIENTE=A.NUM_CLIENTE)
 GROUP BY A.ID,F.num_cliente 
)A

LEFT JOIN 
(
SELECT
 A.ID_EMPLEADO,ROUND(IFNULL((CASE WHEN A.CANTIDAD>=6 THEN (A.totalbonos)/6
ELSE (A.totalbonos)/A.CANTIDAD END ),0),8)total_bono 
FROM 
(
SELECT a.id_empleado, 
SUM(a.bonos)totalbonos,
COUNT(a.bonos)CANTIDAD
FROM tbl_detalle_planillas a 
INNER JOIN tbl_planillas b ON (a.id_planilla=b.id AND b.id_tipo_planilla=1)
WHERE a.bonos >0
AND (CASE WHEN b.f_inicio_planilla BETWEEN DATE_SUB(CURDATE(), INTERVAL '6' MONTH) AND DATE_SUB(CURDATE(),INTERVAL 1  MONTH) 
THEN a.bonos ELSE 0 END)
GROUP BY a.id_empleado
)A )b ON (A.ID_EMPLEADO=b.id_empleado)

) F ON (F.ID_EMPLEADO=A.id)
LEFT JOIN TBL_PUESTOS G ON (G.ID=A.ID_PUESTO)
WHERE C.ID IN (13,14) AND B.ID_CONCEPTO IS NOT NULL
)A INNER JOIN
(SELECT A.ESTADO,B.PORCENTAJE_MIN,A.ID_EMPLEADO FROM TBL_ASIGNACIONES A
INNER JOIN TBL_OPERACIONES B ON (A.ID_CONCEPTO=B.ID_CONCEPTO)
WHERE A.ID_CONCEPTO =19)B ON (A.ID_EMPLEADO=B.ID_EMPLEADO)
GROUP BY PROMEDIO_DE_COMISION_18_DIAS,B.PORCENTAJE_MIN,A.ID_EMPLEADO,A.ESTADOVACA,B.ESTADO,A.COMSION,
NOMBRECOMPLETO,A.NUM_CLIENTE,A.SUELDO,A.FECHA_INGRESO,A.DESDE,A.HASTA,A.PUESTO,A.COMISIONS
)VACACION 

) F ON (A.ID=F.id_empleado) LEFT JOIN 
( SELECT B.id id_empleado,A.NUM_CLIENTE,A.COMISION
FROM tbl_comisiones A LEFT JOIN tbl_empleados B ON (A.num_cliente=B.num_cliente)
WHERE MONTH(FECHA_CREACION) = MONTH(CURDATE() ) AND DAY(CURDATE()) BETWEEN 1 AND 15) G ON (A.ID=G.id_empleado)
WHERE C.ID IN (2) GROUP BY A.ID , B.ESTADO


)	tBL_AFP ON (TBL_AFP.ID_EMPLEADO=A.ID)  -- ---------------------------------------------FIN
/* QUERY PARA SACAR EL CALCULO INDIVIDUAL DE AFP EN EL ESTAN SUB CONSULTAS
PARA SACAR LA RENTA COMISIONES Y BONOS FIJOS  ESTAN ECHOS DE SUB CONSULTAS TODOS LOS CALCULOS MENSUALES*/
-- -----------------------------------------------------------------------ISSs
LEFT JOIN
( 

SELECT A.ID_EMPLEADO,
(case when A.estado = 'A' then A.ISSS ELSE 0 END )ISSS,A.estado
FROM (SELECT A.ID ID_EMPLEADO,
ROUND ((case when DAY(NOW()) BETWEEN 1 AND 15 then
(CASE WHEN
(((A.SUELDO/2)-IFNULL((SELECT A.DESCUENTO_PORFALTAS FROM (
SELECT A.id_empleado,((B.sueldo/30)*A.monto)DESCUENTO_PORFALTAS
FROM tbl_asignaciones A LEFT JOIN tbl_empleados B ON (A.id_empleado=B.id)
WHERE A.id_concepto=17  AND A.estado='A')A WHERE A.id_empleado =A.ID),0))
+ IFNULL(E.BONOS,0.0)+ IFNULL(F.vacacion,0.0)+ IFNULL(G.COMISION,0.0)) >=1000 THEN 30
 ELSE 
(((A.SUELDO/2)-IFNULL((SELECT A.DESCUENTO_PORFALTAS FROM (
SELECT A.id_empleado,((B.sueldo/30)*A.monto)DESCUENTO_PORFALTAS
FROM tbl_asignaciones A LEFT JOIN tbl_empleados B ON (A.id_empleado=B.id)
WHERE A.id_concepto=17  AND A.estado='A')A WHERE A.id_empleado =A.ID),0))+ IFNULL(E.BONOS,0.0)+ IFNULL(F.vacacion,0.0)+ IFNULL(G.COMISION,0.0))*D.PORCENTAJE_MIN
END)

when DAY(NOW()) BETWEEN 16 AND 31 then
(CASE WHEN ifnull(h.isss_anterior,0.0) = 30 THEN 
0 ELSE
(case when ifnull(h.salarioplanillaisss,0.0)+
(((A.SUELDO/2)-IFNULL((SELECT A.DESCUENTO_PORFALTAS FROM (
SELECT A.id_empleado,((B.sueldo/30)*A.monto)DESCUENTO_PORFALTAS
FROM tbl_asignaciones A LEFT JOIN tbl_empleados B ON (A.id_empleado=B.id)
WHERE A.id_concepto=17  AND A.estado='A')A WHERE A.id_empleado =A.ID),0))+ IFNULL(E.BONOS,0.0)
+ IFNULL(F.vacacion,0.0)+ IFNULL(G.COMISION,0.0)) >=1000 then (30-ifnull(h.isss_anterior,0.0))
ELSE 
(((A.SUELDO/2)-IFNULL((SELECT A.DESCUENTO_PORFALTAS FROM (
SELECT A.id_empleado,((B.sueldo/30)*A.monto)DESCUENTO_PORFALTAS
FROM tbl_asignaciones A LEFT JOIN tbl_empleados B ON (A.id_empleado=B.id)
WHERE A.id_concepto=17  AND A.estado='A')A WHERE A.id_empleado =A.ID),0))+ IFNULL(E.BONOS,0.0)+ 
IFNULL(F.vacacion,0.0)+ IFNULL(G.COMISION,0.0)) *D.PORCENTAJE_MIN END )
END) END ),8) ISSS,b.estado
FROM tbl_empleados A LEFT JOIN TBL_ASIGNACIONES B ON (A.ID=B.ID_EMPLEADO) LEFT JOIN TBL_CONCEPTOS C ON (C.ID=B.ID_CONCEPTO)
LEFT JOIN TBL_OPERACIONES D ON (C.ID=D.ID_CONCEPTO) LEFT JOIN 
( SELECT id_empleado, SUM((CASE WHEN (id_concepto = 15 AND estado ='A') THEN (monto/2) ELSE 0 END))BONOS
FROM tbl_asignaciones GROUP BY id_empleado)E ON (A.ID=E.id_empleado)
LEFT JOIN 
( 
SELECT
VACACION.ID_EMPLEADO,

ROUND(
(CASE WHEN VACACION.ESTADOVACA='A' THEN 
(VACACION.VACACION_LEY+VACACION.VACACION_POLITICA+VACACION.PROMEDIO_DE_COMISION_18_DIAS)
ELSE 0 END ),8)vacacion

FROM(
SELECT A.ID_EMPLEADO,NOMBRECOMPLETO,SUM(A.VACACION_LEY)VACACION_LEY,SUM(A.VACACION_POLITICA)VACACION_POLITICA,
A.PROMEDIO_DE_COMISION_18_DIAS, A.ESTADOVACA,A.COMSION,A.SUELDO,A.NUM_CLIENTE,A.TOTALDIAS,A.COMISIONS,
A.PUESTO,A.FECHA_INGRESO,A.DESDE,A.HASTA,(CASE WHEN B.ESTADO= 'A' THEN B.PORCENTAJE_MIN ELSE 0 END)PGR
FROM
(SELECT B.ESTADO ESTADOVACA,A.ID ID_EMPLEADO, A.SUELDO,IFNULL(F.COMSION,0)COMSION,
CONCAT(A.NOMBRES,' ',A.APELLIDOS) NOMBRECOMPLETO,A.NUM_CLIENTE,G.NOMBRE PUESTO,
A.FECHA_INGRESO,
TIMESTAMPDIFF(DAY, DATE_ADD(A.FECHA_INGRESO, INTERVAL TIMESTAMPDIFF(YEAR, A.FECHA_INGRESO, CURDATE()) YEAR),
DATE_ADD(DATE_ADD(A.FECHA_INGRESO, INTERVAL TIMESTAMPDIFF(YEAR, A.FECHA_INGRESO, CURDATE()) YEAR), INTERVAL '1' YEAR))TOTALDIAS,
DATE_ADD(A.FECHA_INGRESO, INTERVAL TIMESTAMPDIFF(YEAR, A.FECHA_INGRESO,CURDATE()) YEAR)DESDE,
DATE_ADD(DATE_ADD(A.FECHA_INGRESO, INTERVAL TIMESTAMPDIFF(YEAR, A.FECHA_INGRESO, CURDATE()) YEAR), INTERVAL '1' YEAR)HASTA,
ROUND((CASE WHEN B.ID_CONCEPTO IN (14) THEN ((((A.SUELDO+IFNULL(F.COMSION,0))/30)*18)*D.PORCENTAJE_MAX) ELSE 0 END),8) VACACION_LEY,
ROUND((CASE WHEN B.ID_CONCEPTO IN (13) THEN ((((A.SUELDO+IFNULL(F.COMSION,0))/30)*18)*D.PORCENTAJE_MAX)ELSE 0 END),8) VACACION_POLITICA,
ROUND((IFNULL(F.COMSION,0)/30)*18,8) PROMEDIO_DE_COMISION_18_DIAS,
ROUND((IFNULL(A.SUELDO+IFNULL(F.COMSION,0),0)/30)*18,8)  COMISIONS    


FROM TBL_EMPLEADOS A
LEFT JOIN TBL_ASIGNACIONES B ON (A.ID=B.ID_EMPLEADO)
LEFT JOIN TBL_CONCEPTOS C ON (C.ID=B.ID_CONCEPTO)
LEFT JOIN TBL_OPERACIONES D ON (C.ID=D.ID_CONCEPTO)
LEFT JOIN
(


SELECT  A.ID_EMPLEADO,ROUND(IFNULL((CASE WHEN A.CANTIDAD>=6 THEN IFNULL(A.COMISION,0.0)/6
ELSE IFNULL(A.COMISION,0.0)/A.CANTIDAD END ),0)+IFNULL(b.total_bono,0.0),8)COMSION ,A.NUM_CLIENTE
FROM  (SELECT A.ID ID_EMPLEADO,F.num_cliente ,
SUM((CASE WHEN F.FECHA_CREACION BETWEEN DATE_SUB(CURDATE(), INTERVAL 7 MONTH) AND DATE_SUB(CURDATE(),INTERVAL 1  MONTH) 
THEN F.COMISION ELSE 0 END)) COMISION, COUNT(F.COMISION)CANTIDAD
FROM TBL_EMPLEADOS A LEFT JOIN TBL_COMISIONES F ON (F.NUM_CLIENTE=A.NUM_CLIENTE)
 GROUP BY A.ID,F.num_cliente 
)A

LEFT JOIN 
(
SELECT
 A.ID_EMPLEADO,ROUND(IFNULL((CASE WHEN A.CANTIDAD>=6 THEN (A.totalbonos)/6
ELSE (A.totalbonos)/A.CANTIDAD END ),0),8)total_bono 
FROM 
(
SELECT a.id_empleado, 
SUM(a.bonos)totalbonos,
COUNT(a.bonos)CANTIDAD
FROM tbl_detalle_planillas a 
INNER JOIN tbl_planillas b ON (a.id_planilla=b.id AND b.id_tipo_planilla=1)
WHERE a.bonos >0
AND (CASE WHEN b.f_inicio_planilla BETWEEN DATE_SUB(CURDATE(), INTERVAL '6' MONTH) AND DATE_SUB(CURDATE(),INTERVAL 1  MONTH) 
THEN a.bonos ELSE 0 END)
GROUP BY a.id_empleado
)A )b ON (A.ID_EMPLEADO=b.id_empleado)

) F ON (F.ID_EMPLEADO=A.id)
LEFT JOIN TBL_PUESTOS G ON (G.ID=A.ID_PUESTO)
WHERE C.ID IN (13,14) AND B.ID_CONCEPTO IS NOT NULL
)A INNER JOIN
(SELECT A.ESTADO,B.PORCENTAJE_MIN,A.ID_EMPLEADO FROM TBL_ASIGNACIONES A
INNER JOIN TBL_OPERACIONES B ON (A.ID_CONCEPTO=B.ID_CONCEPTO)
WHERE A.ID_CONCEPTO =19)B ON (A.ID_EMPLEADO=B.ID_EMPLEADO)
GROUP BY PROMEDIO_DE_COMISION_18_DIAS,B.PORCENTAJE_MIN,A.ID_EMPLEADO,A.ESTADOVACA,B.ESTADO,A.COMSION,
NOMBRECOMPLETO,A.NUM_CLIENTE,A.SUELDO,A.FECHA_INGRESO,A.DESDE,A.HASTA,A.PUESTO,A.COMISIONS
)VACACION 

) F ON (A.ID=F.id_empleado)
LEFT JOIN  ( SELECT B.id id_empleado,A
.NUM_CLIENTE,A.COMISION, MONTH(A.FECHA_CREACION),FECHA_CREACION, MONTH(CURDATE() - INTERVAL 1 MONTH), DAY(A.FECHA_CREACION)
FROM tbl_comisiones A LEFT JOIN tbl_empleados B ON (A.num_cliente=B.num_cliente)
WHERE MONTH(FECHA_CREACION) = MONTH(CURDATE() ) AND DAY(CURDATE()) BETWEEN 1 AND 15) G ON (A.ID=G.id_empleado)
LEFT JOIN 
(SELECT a.id_empleado,a.isss isss_anterior,(a.calculo_salario+a.bonos+a.vacaciones+a.comision)salarioplanillaisss
FROM  tbl_detalle_planillas a  
INNER JOIN tbl_planillas b ON (a.id_planilla=b.id AND b.id_tipo_planilla=1)
WHERE YEAR(b.f_inicio_planilla)=YEAR(NOW()) AND MONTH(b.f_inicio_planilla)=MONTH(NOW()) ) h ON (A.ID=h.id_empleado)
WHERE C.ID = 4 
)
A GROUP BY  A.ID_EMPLEADO,A.ISSS ,A.estado 






) TBL_ISSS ON (TBL_ISSS.ID_EMPLEADO=A.ID)
-- ---------------------------------------------FIN
/* QUERY PARA SACAR EL CALCULO INDIVIDUAL DE ISS EN EL ESTAN SUB CONSULTAS
PARA SACAR LA RENTA COMISIONES Y BONOS FIJOS  ESTAN ECHOS DE SUB CONSULTAS TODOS LOS CALCULOS MENSUALES*/
-- -----------------------------------------------------------------------TBL_IPSFA
LEFT JOIN
(
SELECT A.ID ID_EMPLEADO,
 (CASE WHEN B.ESTADO = 'A' THEN  (((A.SUELDO/2)-IFNULL((SELECT A.DESCUENTO_PORFALTAS FROM (
SELECT A.id_empleado,((B.sueldo/30)*A.monto)DESCUENTO_PORFALTAS
FROM tbl_asignaciones A LEFT JOIN tbl_empleados B ON (A.id_empleado=B.id)
WHERE A.id_concepto=17  AND A.estado='A')A WHERE A.id_empleado =A.ID),0))+ IFNULL(E.BONOS,0.0)+ IFNULL(F.vacacion,0.0)+ IFNULL(G.COMISION,0.0))*d.porcentaje_min ELSE 0 END) IPSFA


FROM tbl_empleados A LEFT JOIN TBL_ASIGNACIONES B ON (A.ID=B.ID_EMPLEADO) LEFT JOIN TBL_CONCEPTOS C ON (C.ID=B.ID_CONCEPTO)
LEFT JOIN TBL_OPERACIONES D ON (C.ID=D.ID_CONCEPTO) LEFT JOIN  (SELECT id_empleado, SUM((CASE WHEN (id_concepto = 15 AND estado ='A') THEN (monto/2) ELSE 0 END))BONOS
FROM tbl_asignaciones GROUP BY id_empleado)E ON (A.ID=E.id_empleado) LEFT JOIN 
(

SELECT
VACACION.ID_EMPLEADO,

ROUND(
(CASE WHEN VACACION.ESTADOVACA='A' THEN 
(VACACION.VACACION_LEY+VACACION.VACACION_POLITICA+VACACION.PROMEDIO_DE_COMISION_18_DIAS)
ELSE 0 END ),8)vacacion

FROM(
SELECT A.ID_EMPLEADO,NOMBRECOMPLETO,SUM(A.VACACION_LEY)VACACION_LEY,SUM(A.VACACION_POLITICA)VACACION_POLITICA,
A.PROMEDIO_DE_COMISION_18_DIAS, A.ESTADOVACA,A.COMSION,A.SUELDO,A.NUM_CLIENTE,A.TOTALDIAS,A.COMISIONS,
A.PUESTO,A.FECHA_INGRESO,A.DESDE,A.HASTA,(CASE WHEN B.ESTADO= 'A' THEN B.PORCENTAJE_MIN ELSE 0 END)PGR
FROM
(SELECT B.ESTADO ESTADOVACA,A.ID ID_EMPLEADO, A.SUELDO,IFNULL(F.COMSION,0)COMSION,
CONCAT(A.NOMBRES,' ',A.APELLIDOS) NOMBRECOMPLETO,A.NUM_CLIENTE,G.NOMBRE PUESTO,
A.FECHA_INGRESO,
TIMESTAMPDIFF(DAY, DATE_ADD(A.FECHA_INGRESO, INTERVAL TIMESTAMPDIFF(YEAR, A.FECHA_INGRESO, CURDATE()) YEAR),
DATE_ADD(DATE_ADD(A.FECHA_INGRESO, INTERVAL TIMESTAMPDIFF(YEAR, A.FECHA_INGRESO, CURDATE()) YEAR), INTERVAL '1' YEAR))TOTALDIAS,
DATE_ADD(A.FECHA_INGRESO, INTERVAL TIMESTAMPDIFF(YEAR, A.FECHA_INGRESO,CURDATE()) YEAR)DESDE,
DATE_ADD(DATE_ADD(A.FECHA_INGRESO, INTERVAL TIMESTAMPDIFF(YEAR, A.FECHA_INGRESO, CURDATE()) YEAR), INTERVAL '1' YEAR)HASTA,
ROUND((CASE WHEN B.ID_CONCEPTO IN (14) THEN ((((A.SUELDO+IFNULL(F.COMSION,0))/30)*18)*D.PORCENTAJE_MAX) ELSE 0 END),8) VACACION_LEY,
ROUND((CASE WHEN B.ID_CONCEPTO IN (13) THEN ((((A.SUELDO+IFNULL(F.COMSION,0))/30)*18)*D.PORCENTAJE_MAX)ELSE 0 END),8) VACACION_POLITICA,
ROUND((IFNULL(F.COMSION,0)/30)*18,8) PROMEDIO_DE_COMISION_18_DIAS,
ROUND((IFNULL(A.SUELDO+IFNULL(F.COMSION,0),0)/30)*18,8)  COMISIONS    


FROM TBL_EMPLEADOS A
LEFT JOIN TBL_ASIGNACIONES B ON (A.ID=B.ID_EMPLEADO)
LEFT JOIN TBL_CONCEPTOS C ON (C.ID=B.ID_CONCEPTO)
LEFT JOIN TBL_OPERACIONES D ON (C.ID=D.ID_CONCEPTO)
LEFT JOIN
(


SELECT  A.ID_EMPLEADO,ROUND(IFNULL((CASE WHEN A.CANTIDAD>=6 THEN IFNULL(A.COMISION,0.0)/6
ELSE IFNULL(A.COMISION,0.0)/A.CANTIDAD END ),0)+IFNULL(b.total_bono,0.0),8)COMSION ,A.NUM_CLIENTE
FROM  (SELECT A.ID ID_EMPLEADO,F.num_cliente ,
SUM((CASE WHEN F.FECHA_CREACION BETWEEN DATE_SUB(CURDATE(), INTERVAL 7 MONTH) AND DATE_SUB(CURDATE(),INTERVAL 1  MONTH) 
THEN F.COMISION ELSE 0 END)) COMISION, COUNT(F.COMISION)CANTIDAD
FROM TBL_EMPLEADOS A LEFT JOIN TBL_COMISIONES F ON (F.NUM_CLIENTE=A.NUM_CLIENTE)
 GROUP BY A.ID,F.num_cliente 
)A

LEFT JOIN 
(
SELECT
 A.ID_EMPLEADO,ROUND(IFNULL((CASE WHEN A.CANTIDAD>=6 THEN (A.totalbonos)/6
ELSE (A.totalbonos)/A.CANTIDAD END ),0),8)total_bono 
FROM 
(
SELECT a.id_empleado, 
SUM(a.bonos)totalbonos,
COUNT(a.bonos)CANTIDAD
FROM tbl_detalle_planillas a 
INNER JOIN tbl_planillas b ON (a.id_planilla=b.id AND b.id_tipo_planilla=1)
WHERE a.bonos >0
AND (CASE WHEN b.f_inicio_planilla BETWEEN DATE_SUB(CURDATE(), INTERVAL '6' MONTH) AND DATE_SUB(CURDATE(),INTERVAL 1  MONTH) 
THEN a.bonos ELSE 0 END)
GROUP BY a.id_empleado
)A )b ON (A.ID_EMPLEADO=b.id_empleado)

) F ON (F.ID_EMPLEADO=A.id)
LEFT JOIN TBL_PUESTOS G ON (G.ID=A.ID_PUESTO)
WHERE C.ID IN (13,14) AND B.ID_CONCEPTO IS NOT NULL
)A INNER JOIN
(SELECT A.ESTADO,B.PORCENTAJE_MIN,A.ID_EMPLEADO FROM TBL_ASIGNACIONES A
INNER JOIN TBL_OPERACIONES B ON (A.ID_CONCEPTO=B.ID_CONCEPTO)
WHERE A.ID_CONCEPTO =19)B ON (A.ID_EMPLEADO=B.ID_EMPLEADO)
GROUP BY PROMEDIO_DE_COMISION_18_DIAS,B.PORCENTAJE_MIN,A.ID_EMPLEADO,A.ESTADOVACA,B.ESTADO,A.COMSION,
NOMBRECOMPLETO,A.NUM_CLIENTE,A.SUELDO,A.FECHA_INGRESO,A.DESDE,A.HASTA,A.PUESTO,A.COMISIONS
)VACACION 
) F ON (A.ID=F.id_empleado)
LEFT JOIN  ( SELECT B.id id_empleado,A.NUM_CLIENTE,A.COMISION, MONTH(A.FECHA_CREACION),FECHA_CREACION, MONTH(CURDATE() - INTERVAL 1 MONTH), DAY(A.FECHA_CREACION)
FROM tbl_comisiones A LEFT JOIN tbl_empleados B ON (A.num_cliente=B.num_cliente)
WHERE MONTH(FECHA_CREACION) = MONTH(CURDATE()) AND DAY(CURDATE()) BETWEEN 1 AND 15) G ON (A.ID=G.id_empleado)
WHERE C.ID = 5) 	TBL_IPSFA ON (A.ID=TBL_IPSFA.ID_EMPLEADO)
-- ---------------------------------------------FIN
/* QUERY PARA SACAR EL CALCULO INDIVIDUAL DE TBL_IPSFA EN EL ESTAN SUB CONSULTAS
PARA SACAR LA RENTA COMISIONES Y BONOS FIJOS  ESTAN ECHOS DE SUB CONSULTAS TODOS LOS CALCULOS MENSUALES*/
-- -----------------------------------------------------------------------VACACIONES 
LEFT JOIN
( 

SELECT
VACACION.ID_EMPLEADO,

ROUND(
(CASE WHEN VACACION.ESTADOVACA='A' THEN 
(VACACION.VACACION_LEY+VACACION.VACACION_POLITICA+VACACION.PROMEDIO_DE_COMISION_18_DIAS)
ELSE 0 END ),8)vacacion

FROM(
SELECT A.ID_EMPLEADO,NOMBRECOMPLETO,SUM(A.VACACION_LEY)VACACION_LEY,SUM(A.VACACION_POLITICA)VACACION_POLITICA,
A.PROMEDIO_DE_COMISION_18_DIAS, A.ESTADOVACA,A.COMSION,A.SUELDO,A.NUM_CLIENTE,A.TOTALDIAS,A.COMISIONS,
A.PUESTO,A.FECHA_INGRESO,A.DESDE,A.HASTA,(CASE WHEN B.ESTADO= 'A' THEN B.PORCENTAJE_MIN ELSE 0 END)PGR
FROM
(SELECT B.ESTADO ESTADOVACA,A.ID ID_EMPLEADO, A.SUELDO,IFNULL(F.COMSION,0)COMSION,
CONCAT(A.NOMBRES,' ',A.APELLIDOS) NOMBRECOMPLETO,A.NUM_CLIENTE,G.NOMBRE PUESTO,
A.FECHA_INGRESO,
TIMESTAMPDIFF(DAY, DATE_ADD(A.FECHA_INGRESO, INTERVAL TIMESTAMPDIFF(YEAR, A.FECHA_INGRESO, CURDATE()) YEAR),
DATE_ADD(DATE_ADD(A.FECHA_INGRESO, INTERVAL TIMESTAMPDIFF(YEAR, A.FECHA_INGRESO, CURDATE()) YEAR), INTERVAL '1' YEAR))TOTALDIAS,
DATE_ADD(A.FECHA_INGRESO, INTERVAL TIMESTAMPDIFF(YEAR, A.FECHA_INGRESO,CURDATE()) YEAR)DESDE,
DATE_ADD(DATE_ADD(A.FECHA_INGRESO, INTERVAL TIMESTAMPDIFF(YEAR, A.FECHA_INGRESO, CURDATE()) YEAR), INTERVAL '1' YEAR)HASTA,
ROUND((CASE WHEN B.ID_CONCEPTO IN (14) THEN ((((A.SUELDO+IFNULL(F.COMSION,0))/30)*18)*D.PORCENTAJE_MAX) ELSE 0 END),8) VACACION_LEY,
ROUND((CASE WHEN B.ID_CONCEPTO IN (13) THEN ((((A.SUELDO+IFNULL(F.COMSION,0))/30)*18)*D.PORCENTAJE_MAX)ELSE 0 END),8) VACACION_POLITICA,
ROUND((IFNULL(F.COMSION,0)/30)*18,8) PROMEDIO_DE_COMISION_18_DIAS,
ROUND((IFNULL(A.SUELDO+IFNULL(F.COMSION,0),0)/30)*18,8)  COMISIONS    


FROM TBL_EMPLEADOS A
LEFT JOIN TBL_ASIGNACIONES B ON (A.ID=B.ID_EMPLEADO)
LEFT JOIN TBL_CONCEPTOS C ON (C.ID=B.ID_CONCEPTO)
LEFT JOIN TBL_OPERACIONES D ON (C.ID=D.ID_CONCEPTO)
LEFT JOIN
(


SELECT  A.ID_EMPLEADO,ROUND(IFNULL((CASE WHEN A.CANTIDAD>=6 THEN IFNULL(A.COMISION,0.0)/6
ELSE IFNULL(A.COMISION,0.0)/A.CANTIDAD END ),0)+IFNULL(b.total_bono,0.0),8)COMSION ,A.NUM_CLIENTE
FROM  (SELECT A.ID ID_EMPLEADO,F.num_cliente ,
SUM((CASE WHEN F.FECHA_CREACION BETWEEN DATE_SUB(CURDATE(), INTERVAL 7 MONTH) AND DATE_SUB(CURDATE(),INTERVAL 1  MONTH) 
THEN F.COMISION ELSE 0 END)) COMISION, COUNT(F.COMISION)CANTIDAD
FROM TBL_EMPLEADOS A LEFT JOIN TBL_COMISIONES F ON (F.NUM_CLIENTE=A.NUM_CLIENTE)
 GROUP BY A.ID,F.num_cliente 
)A

LEFT JOIN 
(
SELECT
 A.ID_EMPLEADO,ROUND(IFNULL((CASE WHEN A.CANTIDAD>=6 THEN (A.totalbonos)/6
ELSE (A.totalbonos)/A.CANTIDAD END ),0),8)total_bono 
FROM 
(
SELECT a.id_empleado, 
SUM(a.bonos)totalbonos,
COUNT(a.bonos)CANTIDAD
FROM tbl_detalle_planillas a 
INNER JOIN tbl_planillas b ON (a.id_planilla=b.id AND b.id_tipo_planilla=1)
WHERE a.bonos >0
AND (CASE WHEN b.f_inicio_planilla BETWEEN DATE_SUB(CURDATE(), INTERVAL '6' MONTH) AND DATE_SUB(CURDATE(),INTERVAL 1  MONTH) 
THEN a.bonos ELSE 0 END)
GROUP BY a.id_empleado
)A )b ON (A.ID_EMPLEADO=b.id_empleado)

) F ON (F.ID_EMPLEADO=A.id)
LEFT JOIN TBL_PUESTOS G ON (G.ID=A.ID_PUESTO)
WHERE C.ID IN (13,14) AND B.ID_CONCEPTO IS NOT NULL
)A INNER JOIN
(SELECT A.ESTADO,B.PORCENTAJE_MIN,A.ID_EMPLEADO FROM TBL_ASIGNACIONES A
INNER JOIN TBL_OPERACIONES B ON (A.ID_CONCEPTO=B.ID_CONCEPTO)
WHERE A.ID_CONCEPTO =19)B ON (A.ID_EMPLEADO=B.ID_EMPLEADO)
GROUP BY PROMEDIO_DE_COMISION_18_DIAS,B.PORCENTAJE_MIN,A.ID_EMPLEADO,A.ESTADOVACA,B.ESTADO,A.COMSION,
NOMBRECOMPLETO,A.NUM_CLIENTE,A.SUELDO,A.FECHA_INGRESO,A.DESDE,A.HASTA,A.PUESTO,A.COMISIONS
)VACACION 



) TBL_VACAC ON (A.ID=TBL_VACAC.ID_EMPLEADO)
-- ---------------------------------------------FIN
/* QUERY PARA SACAR EL CALCULO INDIVIDUAL DE DE VACACIONES  EN EL ESTAN SUB CONSULTAS TODOS LOS CALCULOS MENSUALES*/


LEFT JOIN -- -----------------------------------------------------------------------COMISIONES 
( SELECT B.id id_empleado,A.NUM_CLIENTE,A.COMISION, MONTH(A.FECHA_CREACION),FECHA_CREACION, MONTH(CURDATE() - INTERVAL 1 MONTH), DAY(A.FECHA_CREACION)
FROM tbl_comisiones A
LEFT JOIN tbl_empleados B ON (A.num_cliente=B.num_cliente)
WHERE MONTH(FECHA_CREACION) = MONTH(CURDATE()) AND DAY(CURDATE()) BETWEEN 1 AND 15)
TBL_COMIC ON (A.ID=TBL_COMIC.ID_EMPLEADO)
-- ---------------------------------------------FIN
/* QUERY PARA SACAR EL CALCULO INDIVIDUAL DE LAS COMISIONES   EN EL ESTAN SUB CONSULTAS MENSUALES*/

WHERE C.ID IN (1) AND (

(((A.SUELDO/2)+IFNULL(tbl_bonos.BONOS,0.0)+ IFNULL(TBL_VACAC.vacacion,0.0)+ IFNULL(TBL_COMIC.COMISION,0.0)+tbl_bonos.BONOSV)
-(IFNULL((SELECT A.DESCUENTO_PORFALTAS FROM (
SELECT A.id_empleado,((B.sueldo/30)*A.monto)DESCUENTO_PORFALTAS
FROM tbl_asignaciones A LEFT JOIN tbl_empleados B ON (A.id_empleado=B.id)
WHERE A.id_concepto=17  AND A.estado='A')A WHERE A.id_empleado =A.ID),0)
+IFNULL(TBL_ISSS.ISSS,0)+TBL_AFP.AFP+TBL_IPSFA.IPSFA))

BETWEEN D.DESDE AND D.HASTA)
-- - finalizacion de consulta de descuentos de ley 

)tbl_descue_ley -- ---------------- subconsula de descuentos de ly fosafi 

LEFT JOIN -- ------------subconsulta para los prestamos mensuales
(
SELECT  b.id id_empleado, a.num_cliente,
SUM((case when a.estado='A' then (a.valor_descuento) ELSE 0 END))couota_mensual
FROM tbl_prestamos a LEFT JOIN tbl_empleados b ON (a.num_cliente=b.num_cliente) GROUP BY  b.id , a.num_cliente
) tbl_prests ON (tbl_prests.id_empleado=tbl_descue_ley.ID_EMPLEADO)
-- fin de los descuentos de prestamos todos los prestamos sumados 

LEFT JOIN -- ------------subconsulta para los descuentos varios
(SELECT id_empleado, 
SUM((case when (id_concepto = 6  AND estado ='A') then (monto/2) ELSE 0 END))FOSAFI,
SUM((case when (id_concepto = 7  AND estado ='A') then (monto/2) ELSE 0 END))PGR,
SUM((case when (id_concepto = 8  AND estado ='A') then (monto/2) ELSE 0 END))FSV,
SUM((case when (id_concepto = 9  AND estado ='A') then (monto) ELSE 0 END))ANTICIPO,
SUM((case when (id_concepto = 10 AND estado ='A') then (monto) ELSE 0 END))DV,
SUM((case when (id_concepto = 11 AND estado ='A') then (monto) ELSE 0 END))VIATICOS,
SUM((case when (id_concepto = 12 AND estado ='A') then (monto) ELSE 0 END))REINTEGRO 
FROM tbl_asignaciones GROUP BY id_empleado  ) tbl_varios ON (tbl_descue_ley.ID_EMPLEADO=tbl_varios.id_empleado) ;

-- Volcando estructura para vista planilla.v_recibo_vacacion
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `v_recibo_vacacion`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `v_recibo_vacacion` AS SELECT
VACACION.ID_EMPLEADO,
VACACION.NOMBRECOMPLETO,
VACACION.NUM_CLIENTE,
VACACION.PUESTO,
VACACION.FECHA_INGRESO,
VACACION.TOTALDIAS,
VACACION.DESDE,
VACACION.HASTA,
TBLVACA.F_INICIO F_GOZE_INICIO,
TBLVACA.F_FIN F_GOZE_FIN,
TBLVACA.DIAS DIAS_GOZADOS,
VACACION.SUELDO,
VACACION.COMSION PROMEDIO_DE_COMISION_6_MESES,
VACACION.PROMEDIO_DE_COMISION_18_DIAS,
VACACION.COMISIONS SUELDO_MAS_COMISION_18_DIAS,
VACACION.VACACION_LEY VACACION_POLITICA,
VACACION.VACACION_POLITICA VACACION_LEY,
ROUND((VACACION.VACACION_LEY+VACACION.VACACION_POLITICA+VACACION.PROMEDIO_DE_COMISION_18_DIAS),8)vacacionsinpgr,
ROUND(((VACACION.VACACION_LEY+VACACION.VACACION_POLITICA+VACACION.PROMEDIO_DE_COMISION_18_DIAS)*VACACION.PGR),8) pgr,

ROUND((VACACION.VACACION_LEY+VACACION.VACACION_POLITICA+VACACION.PROMEDIO_DE_COMISION_18_DIAS)-

((VACACION.VACACION_LEY+VACACION.VACACION_POLITICA+VACACION.PROMEDIO_DE_COMISION_18_DIAS)*VACACION.PGR),8)vaciontotal


FROM(
SELECT A.ID_EMPLEADO,NOMBRECOMPLETO,SUM(A.VACACION_LEY)VACACION_LEY,SUM(A.VACACION_POLITICA)VACACION_POLITICA,
A.PROMEDIO_DE_COMISION_18_DIAS, A.ESTADOVACA,A.COMSION,A.SUELDO,A.NUM_CLIENTE,A.TOTALDIAS,A.COMISIONS,
A.PUESTO,A.FECHA_INGRESO,A.DESDE,A.HASTA,(CASE WHEN B.ESTADO= 'A' THEN B.PORCENTAJE_MIN ELSE 0 END)PGR
FROM
(SELECT B.ESTADO ESTADOVACA,A.ID ID_EMPLEADO, A.SUELDO,IFNULL(F.COMSION,0)COMSION,
CONCAT(A.NOMBRES,' ',A.APELLIDOS) NOMBRECOMPLETO,A.NUM_CLIENTE,G.NOMBRE PUESTO,
A.FECHA_INGRESO,
TIMESTAMPDIFF(DAY, DATE_ADD(A.FECHA_INGRESO, INTERVAL TIMESTAMPDIFF(YEAR, A.FECHA_INGRESO, CURDATE()) YEAR),
DATE_ADD(DATE_ADD(A.FECHA_INGRESO, INTERVAL TIMESTAMPDIFF(YEAR, A.FECHA_INGRESO, CURDATE()) YEAR), INTERVAL '1' YEAR))TOTALDIAS,
DATE_ADD(A.FECHA_INGRESO, INTERVAL TIMESTAMPDIFF(YEAR, A.FECHA_INGRESO,CURDATE()) YEAR)DESDE,
DATE_ADD(DATE_ADD(A.FECHA_INGRESO, INTERVAL TIMESTAMPDIFF(YEAR, A.FECHA_INGRESO, CURDATE()) YEAR), INTERVAL '1' YEAR)HASTA,
ROUND((CASE WHEN B.ID_CONCEPTO IN (14) THEN ((((A.SUELDO+IFNULL(F.COMSION,0))/30)*18)*D.PORCENTAJE_MAX) ELSE 0 END),8) VACACION_LEY,
ROUND((CASE WHEN B.ID_CONCEPTO IN (13) THEN ((((A.SUELDO+IFNULL(F.COMSION,0))/30)*18)*D.PORCENTAJE_MAX)ELSE 0 END),8) VACACION_POLITICA,
ROUND((IFNULL(F.COMSION,0)/30)*18,8) PROMEDIO_DE_COMISION_18_DIAS,
ROUND((IFNULL(A.SUELDO+IFNULL(F.COMSION,0),0)/30)*18,8)  COMISIONS    


FROM TBL_EMPLEADOS A
LEFT JOIN TBL_ASIGNACIONES B ON (A.ID=B.ID_EMPLEADO)
LEFT JOIN TBL_CONCEPTOS C ON (C.ID=B.ID_CONCEPTO)
LEFT JOIN TBL_OPERACIONES D ON (C.ID=D.ID_CONCEPTO)
LEFT JOIN
(


SELECT  A.ID_EMPLEADO,ROUND(IFNULL((CASE WHEN A.CANTIDAD>=6 THEN IFNULL(A.COMISION,0.0)/6
ELSE IFNULL(A.COMISION,0.0)/A.CANTIDAD END ),0)+IFNULL(b.total_bono,0.0),8)COMSION ,A.NUM_CLIENTE
FROM  (SELECT A.ID ID_EMPLEADO,F.num_cliente ,
SUM((CASE WHEN F.FECHA_CREACION BETWEEN DATE_SUB(CURDATE(), INTERVAL 7 MONTH) AND DATE_SUB(CURDATE(),INTERVAL 1  MONTH) 
THEN F.COMISION ELSE 0 END)) COMISION, COUNT(F.COMISION)CANTIDAD
FROM TBL_EMPLEADOS A LEFT JOIN TBL_COMISIONES F ON (F.NUM_CLIENTE=A.NUM_CLIENTE)
 GROUP BY A.ID,F.num_cliente 
)A

LEFT JOIN 
(
SELECT
 A.ID_EMPLEADO,ROUND(IFNULL((CASE WHEN A.CANTIDAD>=6 THEN (A.totalbonos)/6
ELSE (A.totalbonos)/A.CANTIDAD END ),0),8)total_bono 
FROM 
(
SELECT a.id_empleado, 
SUM(a.bonos)totalbonos,
COUNT(a.bonos)CANTIDAD
FROM tbl_detalle_planillas a 
INNER JOIN tbl_planillas b ON (a.id_planilla=b.id AND b.id_tipo_planilla=1)
WHERE a.bonos >0
AND (CASE WHEN b.f_inicio_planilla BETWEEN DATE_SUB(CURDATE(), INTERVAL '6' MONTH) AND DATE_SUB(CURDATE(),INTERVAL 1  MONTH) 
THEN a.bonos ELSE 0 END)
GROUP BY a.id_empleado
)A )b ON (A.ID_EMPLEADO=b.id_empleado)

) F ON (F.ID_EMPLEADO=A.id)
LEFT JOIN TBL_PUESTOS G ON (G.ID=A.ID_PUESTO)
WHERE C.ID IN (13,14) AND B.ID_CONCEPTO IS NOT NULL
)A INNER JOIN
(SELECT A.ESTADO,B.PORCENTAJE_MIN,A.ID_EMPLEADO FROM TBL_ASIGNACIONES A
INNER JOIN TBL_OPERACIONES B ON (A.ID_CONCEPTO=B.ID_CONCEPTO)
WHERE A.ID_CONCEPTO =19)B ON (A.ID_EMPLEADO=B.ID_EMPLEADO)
GROUP BY PROMEDIO_DE_COMISION_18_DIAS,B.PORCENTAJE_MIN,A.ID_EMPLEADO,A.ESTADOVACA,B.ESTADO,A.COMSION,
NOMBRECOMPLETO,A.NUM_CLIENTE,A.SUELDO,A.FECHA_INGRESO,A.DESDE,A.HASTA,A.PUESTO,A.COMISIONS
)VACACION LEFT JOIN tbl_vacaciones TBLVACA ON (VACACION.ID_EMPLEADO=TBLVACA.ID_EMPLEADO  AND TBLVACA.tipo='T' AND YEAR(TBLVACA.F_INICIO)=YEAR(NOW())) ;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
