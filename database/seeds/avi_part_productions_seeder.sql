-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versi server:                 5.5.41-MariaDB - MariaDB Server
-- OS Server:                    Win32
-- HeidiSQL Versi:               9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table avicenna_dev.avi_part_productions
CREATE TABLE IF NOT EXISTS `avi_part_productions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `part_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `part_number_ag` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `part_number_kanban` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `line_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `line_number_ag` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `back_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qty_kanban` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table avicenna.avi_part_productions: ~0 rows (approximately)
/*!40000 ALTER TABLE `avi_part_productions` DISABLE KEYS */;
REPLACE INTO `avi_part_productions` (`id`, `part_number`, `part_number_ag`, `part_number_kanban`, `line_number`, `line_number_ag`, `back_number`, `qty_kanban`, `created_at`, `updated_at`) VALUES
	(1, '439430-12511', '', '', 'AS600', '', 'PPH1', 18.00, '2017-09-27 00:00:00', '2017-09-27 00:00:00'),
	(2, '439430-12521', '', '', 'AS600', '', 'PPH2', 18.00, '2017-09-27 00:00:00', '2017-09-27 00:00:00'),
	(3, '439430-12511', '', '', 'AS600', '', 'PPI1', 18.00, '2017-09-27 00:00:00', '2017-09-27 00:00:00'),
	(4, '439430-12521', '', '', 'AS600', '', 'PPI2', 18.00, '2017-09-27 00:00:00', '2017-09-27 00:00:00'),
	(5, '439430-13330', '', '', 'AS600', '', 'PPH3', 14.00, '2017-09-27 00:00:00', '2017-09-27 00:00:00'),
	(6, '439430-13340', '', '', 'AS600', '', 'PPH4', 14.00, '2017-09-27 00:00:00', '2017-09-27 00:00:00'),
	(7, '439430-13330', '', '', 'AS600', '', 'PPI3', 14.00, '2017-09-27 00:00:00', '2017-09-27 00:00:00'),
	(8, '439430-13340', '', '', 'AS600', '', 'PPI4', 14.00, '2017-09-27 00:00:00', '2017-09-27 00:00:00'),
	(9, '439430-12531', '', '', 'AS600', '', 'PPH5', 12.00, '2017-09-27 00:00:00', '2017-09-27 00:00:00'),
	(10, '439430-12541', '', '', 'AS600', '', 'PPH6', 12.00, '2017-09-27 00:00:00', '2017-09-27 00:00:00'),
	(11, '439430-12531', '', '', 'AS600', '', 'PPI5', 12.00, '2017-09-27 00:00:00', '2017-09-27 00:00:00'),
	(12, '439430-12541', '', '', 'AS600', '', 'PPI6', 12.00, '2017-09-27 00:00:00', '2017-09-27 00:00:00'),
	(13, '416520-10430-A', '', '', 'AS731', '', 'RP21', 16.00, '2017-09-27 00:00:00', '2017-09-27 00:00:00'),
	(14, '416520-10430-A', '', '', 'AS731', '', 'RP23', 16.00, '2017-09-27 00:00:00', '2017-09-27 00:00:00'),
	(15, '416740-10300-A', '', '', 'AS731', '', 'RP22', 10.00, '2017-09-27 00:00:00', '2017-09-27 00:00:00'),
	(16, '426110-10602', '', '', 'AS751', '', 'RP31', 0.00, '2017-09-27 00:00:00', '2017-09-27 00:00:00'),
	(17, '426120-10651', '', '', 'AS751', '', 'RP28', 0.00, '2017-09-27 00:00:00', '2017-09-27 00:00:00'),
	(18, '426120-10732', '', '', 'AS751', '', 'RP33', 0.00, '2017-09-27 00:00:00', '2017-09-27 00:00:00'),
	(19, '423105-11660-Z1', '', '', 'AS547', '', 'MPAB', 0.00, '2017-09-27 00:00:00', '2017-09-27 00:00:00'),
	(20, '423105-11950', '', '', 'AS547', '', 'MPJ3', 0.00, '2017-09-27 00:00:00', '2017-09-27 00:00:00'),
	(21, '423106-11660-Z1', '', '', 'AS547', '', 'MPAC', 0.00, '2017-09-27 00:00:00', '2017-09-27 00:00:00'),
	(22, '423106-11770', '', '', 'AS547', '', 'MPJ4', 0.00, '2017-09-27 00:00:00', '2017-09-27 00:00:00'),
	(23, '423107-11940', '', '', 'AS547', '', 'MPAD', 0.00, '2017-09-27 00:00:00', '2017-09-27 00:00:00'),
	(24, '423108-11940', '', '', 'AS547', '', 'MPAE', 0.00, '2017-09-27 00:00:00', '2017-09-27 00:00:00'),
	(25, '423105-11660', '', '', 'AS546', '', 'MP21', 0.00, '2017-09-27 00:00:00', '2017-09-27 00:00:00'),
	(26, '423106-11660', '', '', 'AS546', '', 'MP22', 0.00, '2017-09-27 00:00:00', '2017-09-27 00:00:00'),
	(27, '423107-11770', '', '', 'AS546', '', 'MP23', 0.00, '2017-09-27 00:00:00', '2017-09-27 00:00:00'),
	(28, '423108-11770', '', '', 'AS546', '', 'MP24', 0.00, '2017-09-27 00:00:00', '2017-09-27 00:00:00'),
	(29, '423110-13830', '', '', 'AS523', '', 'KP2O', 0.00, '2017-09-27 00:00:00', '2017-09-27 00:00:00'),
	(30, '484170-10850', '', '', 'AS523', '', 'KP45', 0.00, '2017-09-27 00:00:00', '2017-09-27 00:00:00'),
	(31, '484170-10870-040 (A01)', '', '', 'AS523', '', 'KP47', 0.00, '2017-09-27 00:00:00', '2017-09-27 00:00:00'),
	(32, '484170-10870-1D4 (BIL)', '', '', 'AS523', '', 'KP48', 0.00, '2017-09-27 00:00:00', '2017-09-27 00:00:00'),
	(33, '484170-10870-1G3 (B2M)', '', '', 'AS523', '', 'KP49', 0.00, '2017-09-27 00:00:00', '2017-09-27 00:00:00'),
	(34, '484170-10870-218 (C0H)', '', '', 'AS523', '', 'KP4A', 0.00, '2017-09-27 00:00:00', '2017-09-27 00:00:00'),
	(35, '484170-10870-4R8 (F10)', '', '', 'AS523', '', 'KP4C', 0.00, '2017-09-27 00:00:00', '2017-09-27 00:00:00'),
	(36, '484170-10870-4U3 (E2N)', '', '', 'AS523', '', 'KP4D', 0.00, '2017-09-27 00:00:00', '2017-09-27 00:00:00'),
	(37, '484170-10870-4W0 (E37)', '', '', 'AS523', '', 'KP4B', 0.00, '2017-09-27 00:00:00', '2017-09-27 00:00:00'),
	(38, '484170-10870-D2D', '', '', 'AS523', '', 'KP5W', 0.00, '2017-09-27 00:00:00', '2017-09-27 00:00:00'),
	(39, '484170-11210-AA7', '', '', 'AS523', '', 'SPJ3', 0.00, '2017-09-27 00:00:00', '2017-09-27 00:00:00'),
	(40, '484170-11210-BAQ', '', '', 'AS523', '', 'SPJ4', 0.00, '2017-09-27 00:00:00', '2017-09-27 00:00:00'),
	(41, '484170-11210-CA8', '', '', 'AS523', '', 'SPJ5', 0.00, '2017-09-27 00:00:00', '2017-09-27 00:00:00'),
	(42, '484170-11210-BAN', '', '', 'AS523', '', 'SPJ6', 0.00, '2017-09-27 00:00:00', '2017-09-27 00:00:00'),
	(43, '484170-11210-EAD', '', '', 'AS523', '', 'SPJ7', 0.00, '2017-09-27 00:00:00', '2017-09-27 00:00:00'),
	(44, '484170-11210-DAD', '', '', 'AS523', '', 'SPJ8', 0.00, '2017-09-27 00:00:00', '2017-09-27 00:00:00'),
	(45, '484170-11270', '', '', 'AS523', '', 'SPJ1', 0.00, '2017-09-27 00:00:00', '2017-09-27 00:00:00'),
	(46, '484170-11290', '', '', 'AS523', '', 'SP11', 0.00, '2017-09-27 00:00:00', '2017-09-27 00:00:00'),
	(47, '484180-11210-AA7', '', '', 'AS523', '', 'SPJ9', 0.00, '2017-09-27 00:00:00', '2017-09-27 00:00:00'),
	(48, '484180-11210-BAQ', '', '', 'AS523', '', 'SPJA', 0.00, '2017-09-27 00:00:00', '2017-09-27 00:00:00'),
	(49, '484180-11210-CA8', '', '', 'AS523', '', 'SPJB', 0.00, '2017-09-27 00:00:00', '2017-09-27 00:00:00'),
	(50, '484180-11210-BAN', '', '', 'AS523', '', 'SPJC', 0.00, '2017-09-27 00:00:00', '2017-09-27 00:00:00'),
	(51, '484180-11210-EAD', '', '', 'AS523', '', 'SPJD', 0.00, '2017-09-27 00:00:00', '2017-09-27 00:00:00'),
	(52, '484180-11210-DAD', '', '', 'AS523', '', 'SPJE', 0.00, '2017-09-27 00:00:00', '2017-09-27 00:00:00'),
	(53, '484180-11270', '', '', 'AS523', '', 'SPJ2', 0.00, '2017-09-27 00:00:00', '2017-09-27 00:00:00'),
	(54, '423670-11021', '', '', 'AS721', '', 'RP35', 0.00, '2017-09-27 00:00:00', '2017-09-27 00:00:00'),
	(55, '423670-11011', '', '', 'AS721', '', 'RP34', 0.00, '2017-09-27 00:00:00', '2017-09-27 00:00:00'),
	(56, '423680-11041', '', '', 'AS721', '', 'RP36', 0.00, '2017-09-27 00:00:00', '2017-09-27 00:00:00'),
	(57, '423670-10890', '', '', 'AS721', '', 'RP37', 0.00, '2017-09-27 00:00:00', '2017-09-27 00:00:00');
/*!40000 ALTER TABLE `avi_part_productions` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
