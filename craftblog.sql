-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2016 at 03:06 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `craftblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `craft_assetfiles`
--

CREATE TABLE IF NOT EXISTS `craft_assetfiles` (
  `id` int(11) NOT NULL,
  `sourceId` int(11) DEFAULT NULL,
  `folderId` int(11) NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kind` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unknown',
  `width` int(11) unsigned DEFAULT NULL,
  `height` int(11) unsigned DEFAULT NULL,
  `size` int(11) unsigned DEFAULT NULL,
  `dateModified` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_assetfiles_filename_folderId_unq_idx` (`filename`,`folderId`),
  KEY `craft_assetfiles_sourceId_fk` (`sourceId`),
  KEY `craft_assetfiles_folderId_fk` (`folderId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_assetfiles`
--

INSERT INTO `craft_assetfiles` (`id`, `sourceId`, `folderId`, `filename`, `kind`, `width`, `height`, `size`, `dateModified`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(13, 1, 1, '2016-Volkswagen-GTE-by-Paddy-McGrath-34-800x533.jpg', 'image', 800, 533, 192877, '2016-03-01 10:19:08', '2016-03-01 10:19:13', '2016-03-03 11:50:05', 'c3c1712a-ce1a-4f70-99e0-29889891207f'),
(14, 1, 1, '01_CHIRON_grand-palais_34-front_WEB.0.jpg', 'image', 1020, 681, 159755, '2016-03-01 10:19:47', '2016-03-01 10:19:47', '2016-03-03 11:50:02', 'd2240606-2ea6-4129-8325-83c99505754f'),
(15, 1, 1, '02_CHIRON_grand-palais_side_WEB.0.jpg', 'image', 1020, 681, 150350, '2016-03-01 10:19:48', '2016-03-01 10:19:48', '2016-03-03 11:50:02', '3420eb44-99b0-4df9-9594-41b19100404b'),
(16, 1, 1, '03_CHIRON_grand-palais_side_WEB.0.jpg', 'image', 1020, 680, 128845, '2016-03-01 10:19:49', '2016-03-01 10:19:49', '2016-03-03 11:50:02', '88cad6a5-c5c8-4fd6-ad68-6cf868ec09ad'),
(17, 1, 1, '04_CHIRON_grand-palais_34front_WEB.0.jpg', 'image', 1020, 681, 113320, '2016-03-01 10:19:49', '2016-03-01 10:19:49', '2016-03-03 11:50:03', '74472c52-cc78-4abc-9d6a-887cb5ce9c54'),
(18, 1, 1, '05_CHIRON_grand-palais_34-rear_WEB.0.jpg', 'image', 1020, 681, 94720, '2016-03-01 10:19:50', '2016-03-01 10:19:50', '2016-03-03 11:50:03', '9382a5f3-6ffc-486e-be47-f2909a8e4dd7'),
(19, 1, 1, '06_CHIRON_grand-palais_34-rear_WEB.0.jpg', 'image', 1020, 681, 79132, '2016-03-01 10:19:50', '2016-03-01 10:19:50', '2016-03-03 11:50:03', 'b4fff0cd-a333-4edb-94d4-bccc5c9a8d70'),
(20, 1, 1, '09_CHIRON_grand-palais_side_WEB.0.jpg', 'image', 1020, 680, 68709, '2016-03-01 10:19:51', '2016-03-01 10:19:51', '2016-03-03 11:50:04', 'acf6527d-f4ea-425f-9b56-390923a0a42f'),
(21, 1, 1, '2016-Volkswagen-GTE-by-Paddy-McGrath-1-1200x800.jpg', 'image', 1200, 800, 271483, '2016-03-01 09:59:59', '2016-03-01 10:56:23', '2016-03-03 11:50:04', '7ef52a9d-572c-4854-bb03-0f68bd5939df'),
(22, 1, 1, '2016-Volkswagen-GTE-by-Paddy-McGrath-18-1200x800.jpg', 'image', 1200, 800, 161585, '2016-03-01 09:59:50', '2016-03-01 10:56:24', '2016-03-03 11:50:04', '15ce4a41-910c-42ab-88af-c895ef1f60b1'),
(23, 1, 1, '2016-Volkswagen-GTE-by-Paddy-McGrath-19-800x533.jpg', 'image', 800, 533, 110545, '2016-03-01 10:04:41', '2016-03-01 10:56:24', '2016-03-03 11:50:05', '7a948045-0223-497a-b5e8-839b0d5f6820'),
(24, 1, 1, '2016-Volkswagen-GTE-by-Paddy-McGrath-2-1200x800.jpg', 'image', 1200, 800, 425835, '2016-03-01 10:00:03', '2016-03-01 10:56:24', '2016-03-03 11:50:05', '39a91736-6a0d-4e63-8f3f-5ef55f85fc3b'),
(25, 1, 3, '01_CHIRON_grand-palais_34-front_WEB.0.jpg', 'image', 1020, 681, 162525, '2016-03-01 09:49:59', '2016-03-01 10:56:25', '2016-03-03 11:50:10', '2ad57c77-4af2-4c48-a3bd-fb2928006ae4'),
(26, 1, 3, '02_CHIRON_grand-palais_side_WEB.0.jpg', 'image', 1020, 681, 153490, '2016-03-01 09:50:02', '2016-03-01 10:56:25', '2016-03-03 11:50:10', '3497b69c-8334-4430-bf7d-93014cf399b9'),
(27, 1, 3, '03_CHIRON_grand-palais_side_WEB.0.jpg', 'image', 1020, 680, 132937, '2016-03-01 09:50:17', '2016-03-01 10:56:25', '2016-03-03 11:50:11', 'e01ca2cd-40ff-4bc9-bea8-56861f7ba484'),
(28, 1, 3, '04_CHIRON_grand-palais_34front_WEB.0.jpg', 'image', 1020, 681, 116893, '2016-03-01 09:50:06', '2016-03-01 10:56:25', '2016-03-03 11:50:11', 'b77954e3-daeb-43ee-a178-e3929a7b1ab2'),
(29, 1, 3, '05_CHIRON_grand-palais_34-rear_WEB.0.jpg', 'image', 1020, 681, 98229, '2016-03-01 09:50:09', '2016-03-01 10:56:26', '2016-03-03 11:50:11', '6e22531a-782d-4731-abf5-8b2f227067d8'),
(30, 1, 3, '06_CHIRON_grand-palais_34-rear_WEB.0.jpg', 'image', 1020, 681, 84381, '2016-03-01 09:50:21', '2016-03-01 10:56:26', '2016-03-03 11:50:12', '9a11b236-f5e4-4209-b9cd-05d4b5c9ad8c'),
(31, 1, 3, '09_CHIRON_grand-palais_side_WEB.0.jpg', 'image', 1020, 680, 72455, '2016-03-01 09:50:12', '2016-03-01 10:56:26', '2016-03-03 11:50:12', '2c846326-c78d-4a10-b19b-d1783829bf8c'),
(32, 1, 4, '2016-Volkswagen-GTE-by-Paddy-McGrath-1-1200x800.jpg', 'image', 1200, 800, 271483, '2016-03-01 09:59:59', '2016-03-01 10:56:27', '2016-03-03 11:50:12', '47f2d352-52c0-4977-861a-89836c720df3'),
(33, 1, 4, '2016-Volkswagen-GTE-by-Paddy-McGrath-18-1200x800.jpg', 'image', 1200, 800, 161585, '2016-03-01 09:59:50', '2016-03-01 10:56:27', '2016-03-03 11:50:13', '2efa534e-68a3-4edd-adf5-157b8a40f353'),
(34, 1, 4, '2016-Volkswagen-GTE-by-Paddy-McGrath-19-800x533.jpg', 'image', 800, 533, 110545, '2016-03-01 10:04:41', '2016-03-01 10:56:27', '2016-03-03 11:50:13', 'eafc44ee-db44-4145-8d31-22c28c893230'),
(35, 1, 4, '2016-Volkswagen-GTE-by-Paddy-McGrath-2-1200x800.jpg', 'image', 1200, 800, 425835, '2016-03-01 10:00:03', '2016-03-01 10:56:28', '2016-03-03 11:50:13', '08567a21-dcc6-4110-91b2-af1c0533912f'),
(36, 1, 4, '2016-Volkswagen-GTE-by-Paddy-McGrath-34-800x533.jpg', 'image', 800, 533, 193026, '2016-03-01 10:06:10', '2016-03-01 10:56:28', '2016-03-03 11:50:14', '4736bb9c-4f94-4952-95e4-abe625dd830b'),
(37, 1, 1, 'News_765x350px.jpg', 'image', 765, 350, 39897, '2016-03-01 11:05:01', '2016-03-01 11:04:46', '2016-03-03 11:50:14', '311b019f-7517-4d37-8793-9e9af2feacb0'),
(38, 1, 1, 'craft-blog-graphic1.png', 'image', 1200, 674, 47533, '2016-03-01 11:05:01', '2016-03-01 11:04:47', '2016-03-03 11:50:16', '1d9c15a3-bbd4-4d9f-be9f-7b5648ac3f7d'),
(43, 1, 1, '220px-Who_Killed_The_Electric_Car_cover.jpg', 'image', 220, 317, 26107, '2016-03-01 11:41:40', '2016-03-01 11:41:43', '2016-03-03 11:50:06', 'bdef98f5-4323-4592-90a6-37ede951f33d'),
(46, 1, 1, 'fisker-karma.jpg', 'image', 1280, 782, 173435, '2016-03-01 11:46:06', '2016-03-01 11:46:19', '2016-03-03 11:50:17', '01905355-7f5c-4d01-80cb-c549f4e0bf1c'),
(51, 1, 1, 'Rage_Against_The_Machine.jpg', 'image', 3072, 2304, 3859876, '2016-03-01 12:07:55', '2016-03-01 12:08:12', '2016-03-03 11:50:15', '5b12d41d-ee5f-472b-a5f9-06760201e160'),
(55, 1, 1, 'Dwayne_Johnson_at_the_2009_Tribeca_Film_Festival.jpg', 'image', 2100, 2803, 635420, '2016-03-01 12:21:29', '2016-03-01 12:22:00', '2016-03-03 11:50:10', 'f20085a4-d865-40d6-9e6b-ae1e16623534'),
(61, 1, 1, 'batman-logo-big.gif', 'image', 2072, 1225, 35665, '2016-03-02 12:27:34', '2016-03-02 12:40:39', '2016-03-03 11:50:16', '0e045b81-efe4-4d79-b67b-91e13f52f798'),
(62, 1, 1, 'fallout__.gif', 'image', 200, 205, 14555, '2016-03-01 11:38:12', '2016-03-02 12:40:40', '2016-03-03 11:50:17', '50221d48-3465-45a1-b3ae-ba22d82f4816'),
(64, 1, 1, '3056637-poster-p-2-ok-go-to-space.jpg', 'image', 1280, 720, 156853, '2016-03-03 07:00:36', '2016-03-03 07:00:52', '2016-03-03 11:50:06', 'df66bd2b-4f68-455d-8818-40dd832ff3fe'),
(65, 1, 1, 'OKGo-41_2130373b.jpg', 'image', 620, 388, 68359, '2016-03-03 07:00:16', '2016-03-03 07:00:56', '2016-03-03 11:50:14', '88fc7868-b369-4b20-9a3f-4ab9bb4490d5'),
(66, 1, 1, 'OK_Go11.jpg', 'image', 1600, 1067, 250170, '2016-03-03 06:59:49', '2016-03-03 07:00:56', '2016-03-03 11:50:14', '657f3b24-5b90-4b80-b386-c2e44d9ca49e'),
(67, 1, 1, '_88236937_ok_go.jpg', 'image', 976, 549, 139949, '2016-03-03 07:00:30', '2016-03-03 07:00:58', '2016-03-03 11:50:16', '2b51b853-de50-4e8c-823a-7ddfe8ada625'),
(68, 1, 1, 'flux_ok-go.jpg', 'image', 600, 450, 142190, '2016-03-03 07:00:24', '2016-03-03 07:00:59', '2016-03-03 11:50:17', 'ab24291a-9f84-4060-a01e-e469753338f9'),
(83, 1, 1, 'Datsun-1600-Wagon-8185-800x533.jpg', 'image', 800, 533, 307008, '2016-03-03 11:48:27', '2016-03-03 11:50:06', '2016-03-03 11:50:06', 'dee3aa85-16dd-47de-8c1a-e51650507df7'),
(84, 1, 1, 'Datsun-1600-Wagon-8197-800x533.jpg', 'image', 800, 533, 217422, '2016-03-03 11:48:36', '2016-03-03 11:50:07', '2016-03-03 11:50:07', 'f37821d7-c68c-437c-8916-68512ca06456'),
(85, 1, 1, 'Datsun-1600-Wagon-8232-800x533.jpg', 'image', 800, 533, 315224, '2016-03-03 11:49:14', '2016-03-03 11:50:07', '2016-03-03 11:50:07', '72fa7bbf-58ed-4d04-bb2f-b1df6fb08c15'),
(86, 1, 1, 'Datsun-1600-Wagon-8269-800x533.jpg', 'image', 800, 533, 322645, '2016-03-03 11:49:22', '2016-03-03 11:50:07', '2016-03-03 11:50:07', '6fd9698f-e2a6-4855-a191-9a7029402ea7'),
(87, 1, 1, 'Datsun-1600-Wagon-8279-800x533.jpg', 'image', 800, 533, 452718, '2016-03-03 11:49:10', '2016-03-03 11:50:08', '2016-03-03 11:50:08', 'b3c7dbb7-c340-483e-ad10-de2728eb7618'),
(88, 1, 1, 'Datsun-1600-Wagon-8289-800x533.jpg', 'image', 800, 533, 309244, '2016-03-03 11:49:17', '2016-03-03 11:50:08', '2016-03-03 11:50:08', 'd70f79ce-5cdb-4a92-8e19-b95202c0369d'),
(89, 1, 1, 'Datsun-1600-Wagon-8293-800x533.jpg', 'image', 800, 533, 401568, '2016-03-03 11:49:25', '2016-03-03 11:50:08', '2016-03-03 11:50:08', '71cb1586-06e3-4134-9497-df23be7d9b66'),
(90, 1, 1, 'Datsun-1600-Wagon-8305-800x533.jpg', 'image', 800, 533, 365336, '2016-03-03 11:48:31', '2016-03-03 11:50:09', '2016-03-03 11:50:09', '9f595e31-05c7-4d23-a44b-59f556563275'),
(91, 1, 1, 'Datsun-1600-Wagon-8308-800x533.jpg', 'image', 800, 533, 386335, '2016-03-03 11:49:29', '2016-03-03 11:50:09', '2016-03-03 11:50:09', '444de04b-58a6-4a99-ad11-64917ac66dcf'),
(92, 1, 1, 'Datsun-1600-Wagon-8460-800x533.jpg', 'image', 800, 533, 227587, '2016-03-03 11:49:33', '2016-03-03 11:50:09', '2016-03-03 11:50:09', '6b08940b-4c5b-4a9b-aba7-a496ada56b18');

-- --------------------------------------------------------

--
-- Table structure for table `craft_assetfolders`
--

CREATE TABLE IF NOT EXISTS `craft_assetfolders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentId` int(11) DEFAULT NULL,
  `sourceId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_assetfolders_name_parentId_sourceId_unq_idx` (`name`,`parentId`,`sourceId`),
  KEY `craft_assetfolders_parentId_fk` (`parentId`),
  KEY `craft_assetfolders_sourceId_fk` (`sourceId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `craft_assetfolders`
--

INSERT INTO `craft_assetfolders` (`id`, `parentId`, `sourceId`, `name`, `path`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, NULL, 1, 'Images', '', '2016-03-01 10:13:59', '2016-03-01 11:35:59', 'd00b280e-27f2-4eba-956d-def1829ab4de'),
(2, 1, 1, 'March-01-2016', 'March-01-2016/', '2016-03-01 10:56:20', '2016-03-01 10:56:20', '315ec183-65c5-4f58-b73f-cf000703daae'),
(3, 2, 1, 'Bugatti_Chirion', 'March-01-2016/Bugatti_Chirion/', '2016-03-01 10:56:20', '2016-03-01 10:56:20', '7d206b6c-7b63-4c06-b82d-f888cf75b340'),
(4, 2, 1, 'Golf_GTE', 'March-01-2016/Golf_GTE/', '2016-03-01 10:56:20', '2016-03-01 10:56:20', 'ed90ad57-687b-4cfc-931c-83bdcccd5f83');

-- --------------------------------------------------------

--
-- Table structure for table `craft_assetindexdata`
--

CREATE TABLE IF NOT EXISTS `craft_assetindexdata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sessionId` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sourceId` int(11) NOT NULL,
  `offset` int(11) NOT NULL,
  `uri` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `recordId` int(11) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_assetindexdata_sessionId_sourceId_offset_unq_idx` (`sessionId`,`sourceId`,`offset`),
  KEY `craft_assetindexdata_sourceId_fk` (`sourceId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=307 ;

-- --------------------------------------------------------

--
-- Table structure for table `craft_assetsources`
--

CREATE TABLE IF NOT EXISTS `craft_assetsources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_assetsources_name_unq_idx` (`name`),
  UNIQUE KEY `craft_assetsources_handle_unq_idx` (`handle`),
  KEY `craft_assetsources_fieldLayoutId_fk` (`fieldLayoutId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `craft_assetsources`
--

INSERT INTO `craft_assetsources` (`id`, `name`, `handle`, `type`, `settings`, `sortOrder`, `fieldLayoutId`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Images', 'Images', 'Local', '{"path":"{basePath}assets\\/images\\/","url":"{baseUrl}\\/assets\\/images\\/"}', 1, 26, '2016-03-01 10:13:59', '2016-03-02 13:28:06', '6b91e622-3596-445d-9345-23c1ecdb2250');

-- --------------------------------------------------------

--
-- Table structure for table `craft_assettransformindex`
--

CREATE TABLE IF NOT EXISTS `craft_assettransformindex` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fileId` int(11) NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `format` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sourceId` int(11) DEFAULT NULL,
  `fileExists` tinyint(1) DEFAULT NULL,
  `inProgress` tinyint(1) DEFAULT NULL,
  `dateIndexed` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_assettransformindex_sourceId_fileId_location_idx` (`sourceId`,`fileId`,`location`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `craft_assettransforms`
--

CREATE TABLE IF NOT EXISTS `craft_assettransforms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mode` enum('stretch','fit','crop') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'crop',
  `position` enum('top-left','top-center','top-right','center-left','center-center','center-right','bottom-left','bottom-center','bottom-right') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'center-center',
  `height` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `format` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `dimensionChangeTime` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_assettransforms_name_unq_idx` (`name`),
  UNIQUE KEY `craft_assettransforms_handle_unq_idx` (`handle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `craft_categories`
--

CREATE TABLE IF NOT EXISTS `craft_categories` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_categories_groupId_fk` (`groupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_categories`
--

INSERT INTO `craft_categories` (`id`, `groupId`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(72, 2, '2016-03-03 07:22:59', '2016-03-03 08:08:30', '67e7b6c1-8f90-45a3-87fb-f94bb05b4d4d'),
(73, 2, '2016-03-03 07:24:27', '2016-03-03 07:24:27', '09810331-8082-4ebf-a871-2a59966bf1b3'),
(74, 2, '2016-03-03 07:24:46', '2016-03-03 07:24:46', 'a37dde00-696a-43c2-a3be-ac600f6a95d7'),
(75, 2, '2016-03-03 07:24:58', '2016-03-03 07:24:58', '1ad5a14b-ef5a-4121-909e-b08bc11093d3'),
(76, 2, '2016-03-03 08:08:26', '2016-03-03 08:08:26', '9a400abf-4132-4c46-babe-4b7ac80a6e40');

-- --------------------------------------------------------

--
-- Table structure for table `craft_categorygroups`
--

CREATE TABLE IF NOT EXISTS `craft_categorygroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `structureId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hasUrls` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `template` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_categorygroups_name_unq_idx` (`name`),
  UNIQUE KEY `craft_categorygroups_handle_unq_idx` (`handle`),
  KEY `craft_categorygroups_structureId_fk` (`structureId`),
  KEY `craft_categorygroups_fieldLayoutId_fk` (`fieldLayoutId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `craft_categorygroups`
--

INSERT INTO `craft_categorygroups` (`id`, `structureId`, `fieldLayoutId`, `name`, `handle`, `hasUrls`, `template`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(2, 2, 32, 'Categories', 'categories', 1, '{baseUrl}/craft/templates/categories/index.html', '2016-03-03 07:21:44', '2016-03-03 07:30:18', '288d8143-688f-428c-9bb1-0d9d5e3c6d55');

-- --------------------------------------------------------

--
-- Table structure for table `craft_categorygroups_i18n`
--

CREATE TABLE IF NOT EXISTS `craft_categorygroups_i18n` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `urlFormat` text COLLATE utf8_unicode_ci,
  `nestedUrlFormat` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_categorygroups_i18n_groupId_locale_unq_idx` (`groupId`,`locale`),
  KEY `craft_categorygroups_i18n_locale_fk` (`locale`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `craft_categorygroups_i18n`
--

INSERT INTO `craft_categorygroups_i18n` (`id`, `groupId`, `locale`, `urlFormat`, `nestedUrlFormat`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(2, 2, 'en', 'categories/{slug}', '{parent.uri}/{slug}', '2016-03-03 07:21:44', '2016-03-03 07:21:44', 'c776ee94-6c6e-4909-b72f-90dd41e6cc65');

-- --------------------------------------------------------

--
-- Table structure for table `craft_content`
--

CREATE TABLE IF NOT EXISTS `craft_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_body` text COLLATE utf8_unicode_ci,
  `field_imageUrl` text COLLATE utf8_unicode_ci,
  `field_musicArticleBody` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_content_elementId_locale_unq_idx` (`elementId`,`locale`),
  KEY `craft_content_title_idx` (`title`),
  KEY `craft_content_locale_fk` (`locale`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=88 ;

--
-- Dumping data for table `craft_content`
--

INSERT INTO `craft_content` (`id`, `elementId`, `locale`, `title`, `field_body`, `field_imageUrl`, `field_musicArticleBody`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'en', NULL, NULL, NULL, NULL, '2016-03-01 09:25:59', '2016-03-01 09:25:59', 'be69736c-5da9-493f-96cd-608c774ea23c'),
(2, 2, 'en', 'We just installed CRAFT! ', '<p>It’s true, this site doesn’t have a whole lot of content yet, but don’t worry. Our web developers have just installed the CMS, and they’re setting things up for the content editors this very moment. Soon Dev.craftblog.com will be an oasis of fresh perspectives, sharp analyses, and astute opinions that will keep you coming back again and again.</p>', NULL, NULL, '2016-03-01 09:26:01', '2016-03-02 09:57:07', '0b441de9-df9e-4546-9793-2a3b8fa39d37'),
(3, 3, 'en', 'We just installed Craft!', '<p>Craft is the CMS that’s powering Dev.craftblog.com. It’s beautiful, powerful, flexible, and easy-to-use, and it’s made by Pixel & Tonic. We can’t wait to dive in and see what it’s capable of!</p>\r\n\r\n<!--pagebreak-->\r\n\r\n<p>This is even more captivating content, which you couldn’t see on the News index page because it was entered after a Page Break, and the News index template only likes to show the content on the first page.</p>\r\n\r\n<p>Craft: a nice alternative to Word, if you’re making a website.</p>', NULL, NULL, '2016-03-01 09:26:01', '2016-03-01 11:05:14', 'c89e6730-38bf-434a-9b46-a68f3c4f58ea'),
(4, 4, 'en', 'Bugatti Chirion', '<p><img src="/assets/images/March-01-2016/Bugatti_Chirion/01_CHIRON_grand-palais_34-front_WEB.0.jpg"></p>\r\n\r\n<p>There are many absurd facts about the Bugatti Chiron that was just introduced today ahead of the Geneva Motor Show. Its top speed is electronically limited &mdash;&nbsp;<em>limited!</em>&nbsp;&mdash; to 261 miles per hour. It can reach 125 miles per hour in 6.5 seconds, which may very well be faster than the time it takes your personal vehicle to reach half that. And the base price is an astounding €2.4 million ($2.6 million), which you can presumably run up with options and customization. Nothing about this rare machine (just 500 will be made) is for the faint of heart.&nbsp;We''ve&nbsp;\r\n<a href="http://www.theverge.com/2016/2/29/11132084/bugatti-chiron-announced-geneva-motor-show-2016">already given you all the details about this ridiculous machine</a>&nbsp;&mdash; but Bugatti, in its infinite generosity, has provided a huge and extremely awesome set of photos to go along with it. We thought you might enjoy some of them.</p>\r\n\r\n\r\n\r\n<p>- Original article at <a href="http://www.theverge.com/2016/2/29/11133374/bugatti-chiron-pictures">The Verge</a></p>\r\n\r\n\r\n\r\n<p><br></p>', NULL, NULL, '2016-03-01 09:33:00', '2016-03-02 13:30:46', 'ff9cd096-c608-4072-84b6-5b53701190af'),
(5, 5, 'en', 'chirion', NULL, NULL, NULL, '2016-03-01 09:51:07', '2016-03-01 09:51:07', 'bd2d297d-4314-4f41-a75c-d29106a99c62'),
(6, 6, 'en', 'bugatti', NULL, NULL, NULL, '2016-03-01 09:51:12', '2016-03-01 09:51:12', 'd01010dc-3ce3-4a66-b940-7e540ea4e084'),
(7, 7, 'en', 'hypercar', NULL, NULL, NULL, '2016-03-01 09:51:18', '2016-03-01 09:51:18', '46933ac4-d967-4ed1-8fbb-8cf1a51c491c'),
(8, 8, 'en', 'Golf GTE', '<p><img src="/assets/images/March-01-2016/Golf_GTE/2016-Volkswagen-GTE-by-Paddy-McGrath-1-1200x800.jpg"></p>\r\n<iframe width="1000" height="600" src="https://www.youtube.com/embed/2UyIM55UoIY" frameborder="0" allowfullscreen=""></iframe>\r\n<p> Take a look at this. I start the video in electric mode and make my way around the hairpin in complete silence, which is a surreal feeling at first. Coming out of the hairpin, I switch to ‘GTE’ and to manual shifting before accelerating. For a car that weighs nearly 1,600kg (3,527lb) it completely belies its on-paper engine size and performance. </p>\r\n<p><img src="/assets/images/March-01-2016/Golf_GTE/2016-Volkswagen-GTE-by-Paddy-McGrath-19-800x533.jpg"></p>\r\n<p> I suppose the most ringing endorsement I can give the GTE is that, as I write this, it’s parked outside my house for another few days before I drop it back to Volkswagen. I’m off to Mondello in two days for some Speedhunting activities and I have the choice of taking it or Project GTI. Honestly, I’m stumped as to which car to choose.\r\n</p>\r\n<p><img src="/assets/images/March-01-2016/Golf_GTE/2016-Volkswagen-GTE-by-Paddy-McGrath-34-800x533.jpg"></p>\r\n<p>Where as the other GT-grade&nbsp;cars are of 2.0-litre capacity (regardless of petrol or diesel, both are also turbocharged) the GTE is fitted with a smaller 1.4-litre turbocharged motor. In isolation, this unit produces around 150hp, but it’s not alone under the bonnet.<br></p>', NULL, NULL, '2016-03-01 10:05:39', '2016-03-02 12:53:36', 'e4c55ac0-d821-4c15-af5b-902a47780261'),
(9, 9, 'en', 'GTE', NULL, NULL, NULL, '2016-03-01 10:05:48', '2016-03-01 10:05:48', '832d384d-75e9-46fa-9dc7-cdbffd425fdc'),
(10, 10, 'en', 'Golf', NULL, NULL, NULL, '2016-03-01 10:05:51', '2016-03-01 10:05:51', '85478df7-cf49-4a44-825b-e872d28ab33f'),
(11, 11, 'en', 'Hybrid', NULL, NULL, NULL, '2016-03-01 10:05:56', '2016-03-01 10:05:56', '56597749-ed11-48c5-8727-9d3bf6290dfd'),
(13, 13, 'en', '2016  Volkswagen  Gte By  Paddy  Mc Grath 34 800X533', NULL, NULL, NULL, '2016-03-01 10:19:13', '2016-03-03 11:50:05', '27e1ef79-5c16-4b7f-bf97-4656437c7b87'),
(14, 14, 'en', '01 Chiron Grand Palais 34 Front Web 0', NULL, NULL, NULL, '2016-03-01 10:19:47', '2016-03-03 11:50:02', '3c3b8dd0-4fc3-4d45-bba8-9963c8ab650f'),
(15, 15, 'en', '02 Chiron Grand Palais Side Web 0', NULL, NULL, NULL, '2016-03-01 10:19:48', '2016-03-03 11:50:02', 'ae5ad1c7-ec99-4230-8c7a-8a1a303ac2e5'),
(16, 16, 'en', '03 Chiron Grand Palais Side Web 0', NULL, NULL, NULL, '2016-03-01 10:19:49', '2016-03-03 11:50:02', '4708915a-7747-44f0-b0cb-27f80bfb19a0'),
(17, 17, 'en', '04 Chiron Grand Palais 34Front Web 0', NULL, NULL, NULL, '2016-03-01 10:19:49', '2016-03-03 11:50:03', '7c168a42-de55-4555-89d9-d644a4432e89'),
(18, 18, 'en', '05 Chiron Grand Palais 34 Rear Web 0', NULL, NULL, NULL, '2016-03-01 10:19:50', '2016-03-03 11:50:03', '407f7d8c-46af-4541-98e6-d59ef9e6c098'),
(19, 19, 'en', '06 Chiron Grand Palais 34 Rear Web 0', NULL, NULL, NULL, '2016-03-01 10:19:50', '2016-03-03 11:50:03', '7cdf5861-81b4-4340-85c3-1f05edce3795'),
(20, 20, 'en', '09 Chiron Grand Palais Side Web 0', NULL, NULL, NULL, '2016-03-01 10:19:51', '2016-03-03 11:50:04', '752bb753-9e0f-4f23-b6af-ccc72f0cd1a6'),
(21, 21, 'en', '2016  Volkswagen  Gte By  Paddy  Mc Grath 1 1200X800', NULL, NULL, NULL, '2016-03-01 10:56:23', '2016-03-03 11:50:04', '082e73e8-01dc-4407-b509-53cd24e804ca'),
(22, 22, 'en', '2016  Volkswagen  Gte By  Paddy  Mc Grath 18 1200X800', NULL, NULL, NULL, '2016-03-01 10:56:23', '2016-03-03 11:50:04', 'fa5b6853-0c88-4164-912f-2206f7f0aec3'),
(23, 23, 'en', '2016  Volkswagen  Gte By  Paddy  Mc Grath 19 800X533', NULL, NULL, NULL, '2016-03-01 10:56:24', '2016-03-03 11:50:05', 'fa17761a-bc66-431f-b95a-ee2f976f3a23'),
(24, 24, 'en', '2016  Volkswagen  Gte By  Paddy  Mc Grath 2 1200X800', NULL, NULL, NULL, '2016-03-01 10:56:24', '2016-03-03 11:50:05', 'a16d0cec-2e6f-4353-adc5-1d1fdeea7123'),
(25, 25, 'en', '01  Chiron Grand Palais 34 Front  Web 0', NULL, NULL, NULL, '2016-03-01 10:56:25', '2016-03-03 11:50:10', 'bd48a639-d0e0-4bc0-98e8-52950b29c74e'),
(26, 26, 'en', '02  Chiron Grand Palais Side  Web 0', NULL, NULL, NULL, '2016-03-01 10:56:25', '2016-03-03 11:50:10', '23a7a0c5-6c85-411c-8095-6899b5be2439'),
(27, 27, 'en', '03  Chiron Grand Palais Side  Web 0', NULL, NULL, NULL, '2016-03-01 10:56:25', '2016-03-03 11:50:11', '5b9aadcc-6c19-4bc5-b9fc-34441a2b2749'),
(28, 28, 'en', '04  Chiron Grand Palais 34Front  Web 0', NULL, NULL, NULL, '2016-03-01 10:56:25', '2016-03-03 11:50:11', '2c60cf91-bd64-4062-b95d-6b6a28c4f7f4'),
(29, 29, 'en', '05  Chiron Grand Palais 34 Rear  Web 0', NULL, NULL, NULL, '2016-03-01 10:56:26', '2016-03-03 11:50:11', 'f97c0dec-307b-4ff6-9a0f-ec1cd1091554'),
(30, 30, 'en', '06  Chiron Grand Palais 34 Rear  Web 0', NULL, NULL, NULL, '2016-03-01 10:56:26', '2016-03-03 11:50:12', '053d230f-2fe9-40d3-a85d-e2bca6927200'),
(31, 31, 'en', '09  Chiron Grand Palais Side  Web 0', NULL, NULL, NULL, '2016-03-01 10:56:26', '2016-03-03 11:50:12', '50cfa498-a0dc-4f6f-8e0e-68b66954e0d6'),
(32, 32, 'en', '2016  Volkswagen  Gte By  Paddy  Mc Grath 1 1200X800', NULL, NULL, NULL, '2016-03-01 10:56:27', '2016-03-03 11:50:12', '203b432e-5bc1-4fe3-932b-2174eef9b555'),
(33, 33, 'en', '2016  Volkswagen  Gte By  Paddy  Mc Grath 18 1200X800', NULL, NULL, NULL, '2016-03-01 10:56:27', '2016-03-03 11:50:13', '48a1f7ac-1e29-4afc-ba3b-9a6897302154'),
(34, 34, 'en', '2016  Volkswagen  Gte By  Paddy  Mc Grath 19 800X533', NULL, NULL, NULL, '2016-03-01 10:56:27', '2016-03-03 11:50:13', '185fa283-772a-44f0-a8ce-75b248667129'),
(35, 35, 'en', '2016  Volkswagen  Gte By  Paddy  Mc Grath 2 1200X800', NULL, NULL, NULL, '2016-03-01 10:56:28', '2016-03-03 11:50:13', '85552c93-bc95-49be-a5e1-d4d142f4ef66'),
(36, 36, 'en', '2016  Volkswagen  Gte By  Paddy  Mc Grath 34 800X533', NULL, NULL, NULL, '2016-03-01 10:56:28', '2016-03-03 11:50:13', '3ce32462-276b-432b-a83c-364779d36749'),
(37, 37, 'en', 'News 765X350Px', NULL, NULL, NULL, '2016-03-01 11:04:46', '2016-03-03 11:50:14', '06c46409-2d26-43e6-b6bf-675e595f9817'),
(38, 38, 'en', 'Craft Blog Graphic1', NULL, NULL, NULL, '2016-03-01 11:04:47', '2016-03-03 11:50:16', 'c30509c0-86e0-4fe2-b36e-0e66454c2d84'),
(43, 43, 'en', '220Px  Who  Killed  The  Electric  Car Cover', NULL, NULL, NULL, '2016-03-01 11:41:42', '2016-03-03 11:50:06', 'dd28c391-0311-4a58-9cdf-32637f35d726'),
(44, 44, 'en', 'electric car', NULL, NULL, NULL, '2016-03-01 11:42:23', '2016-03-01 11:42:23', '11f0d9e2-f7bb-49f2-810e-ae71f6c21d60'),
(45, 45, 'en', 'Screening of who killed the electric car.', '<p>A screening of who killed the electric car will take place on the 06/06/16 at the Durbanville quarry.&nbsp;</p>\r\n\r\n<p><em><strong>Who Killed the Electric Car?</strong></em>&nbsp;is a&nbsp;<a href="https://en.wikipedia.org/wiki/2006_in_film">2006</a>&nbsp;<a href="https://en.wikipedia.org/wiki/Documentary_film">documentary film</a>&nbsp;that explores the creation, limited commercialization, and subsequent destruction of the&nbsp;<a href="https://en.wikipedia.org/wiki/Battery_electric_vehicle">battery electric vehicle</a>&nbsp;in the&nbsp;<a href="https://en.wikipedia.org/wiki/United_States">United States</a>, specifically the&nbsp;<a href="https://en.wikipedia.org/wiki/General_Motors_EV1">General Motors EV1</a>&nbsp;of the mid-1990s. The film explores the roles of&nbsp;<a href="https://en.wikipedia.org/wiki/Automobile_manufacturer">automobile manufacturers</a>, the&nbsp;<a href="https://en.wikipedia.org/wiki/Oil_industry">oil industry</a>, the&nbsp;<a href="https://en.wikipedia.org/wiki/U.S._government">U.S. government</a>, the&nbsp;<a href="https://en.wikipedia.org/wiki/Government_of_California">California government</a>,<a href="https://en.wikipedia.org/wiki/Battery_(electricity)">batteries</a>,&nbsp;<a href="https://en.wikipedia.org/wiki/Hydrogen_vehicle">hydrogen vehicles</a>, and&nbsp;<a href="https://en.wikipedia.org/wiki/Consumer">consumers</a>&nbsp;in limiting the development and adoption of this technology.</p>\r\n\r\n<p>After a premiere at the&nbsp;<a href="https://en.wikipedia.org/wiki/Sundance_Film_Festival">Sundance Film Festival</a>, it was released theatrically by&nbsp;<a href="https://en.wikipedia.org/wiki/Sony_Pictures_Classics">Sony Pictures Classics</a>&nbsp;in June, 2006 and then on&nbsp;<a href="https://en.wikipedia.org/wiki/DVD">DVD</a>&nbsp;by&nbsp;<a href="https://en.wikipedia.org/wiki/Sony_Pictures_Home_Entertainment">Sony Pictures Home Entertainment</a>&nbsp;on November 14, 2006.<br>During an interview with&nbsp;<a href="https://en.wikipedia.org/wiki/CBS_News">CBS News</a>, director&nbsp;<a href="https://en.wikipedia.org/wiki/Chris_Paine">Chris Paine</a>&nbsp;announced that he had started a new documentary about electric cars with a working title of&nbsp;<em>Who Saved the Electric Car?</em>,<sup><a href="https://en.wikipedia.org/wiki/Who_Killed_the_Electric_Car%3F#cite_note-2">[2]</a></sup>&nbsp;later renamed&nbsp;<em><a href="https://en.wikipedia.org/wiki/Revenge_of_the_Electric_Car">Revenge of the Electric Car</a></em>, which had its world premiere at the 2011&nbsp;<a href="https://en.wikipedia.org/wiki/Tribeca_Film_Festival">Tribeca Film Festival</a>&nbsp;on&nbsp;<a href="https://en.wikipedia.org/wiki/Earth_Day">Earth Day</a>, April 22, 2011.<sup><a href="https://en.wikipedia.org/wiki/Who_Killed_the_Electric_Car%3F#cite_note-3">[3]</a></sup></p>\r\n\r\n<p>-&nbsp;<a href="https://en.wikipedia.org/wiki/Who_Killed_the_Electric_Car%3F" target="_blank">Wikipedia</a></p>', NULL, NULL, '2016-03-01 11:43:47', '2016-03-01 11:46:38', 'ca2d2a51-72ec-4371-b4cf-3296451769dd'),
(46, 46, 'en', 'Fisker Karma', NULL, NULL, NULL, '2016-03-01 11:46:19', '2016-03-03 11:50:17', 'c578c1fb-06af-4ac8-a300-29aff4287b7a'),
(51, 51, 'en', 'Rage  Against  The  Machine', NULL, NULL, NULL, '2016-03-01 12:08:12', '2016-03-03 11:50:15', 'f557f901-e606-4b74-8322-3904e9d527b9'),
(52, 52, 'en', 'Metal', NULL, NULL, NULL, '2016-03-01 12:08:47', '2016-03-01 12:08:47', 'b40172de-128f-49f3-9e98-66ce778be4c7'),
(53, 53, 'en', 'RATM', NULL, NULL, NULL, '2016-03-01 12:08:54', '2016-03-01 12:08:54', '3eab44dc-5768-4946-a0de-f6208896a334'),
(54, 54, 'en', 'Rage Againts The Machine - 10 Years on? ', '<p><strong><a href="https://www.youtube.com/watch?v=j8V_dpqwK5c">Evil Empire</a>Rage Against the Machine</strong>&nbsp;(also known as&nbsp;<strong>RATM</strong>&nbsp;or just&nbsp;<strong>Rage</strong>) is an American political&nbsp;<a href="https://en.wikipedia.org/wiki/Rap_metal">rap metal</a>&nbsp;band from&nbsp;<a href="https://en.wikipedia.org/wiki/Los_Angeles">Los Angeles</a>,&nbsp;<a href="https://en.wikipedia.org/wiki/California">California</a>. Formed in 1991, the group consists of rapper and vocalist&nbsp;<a href="https://en.wikipedia.org/wiki/Zack_de_la_Rocha">Zack de la Rocha</a>, bassist and backing vocalist&nbsp;<a href="https://en.wikipedia.org/wiki/Tim_Commerford">Tim Commerford</a>, guitarist&nbsp;<a href="https://en.wikipedia.org/wiki/Tom_Morello">Tom Morello</a>&nbsp;and drummer&nbsp;<a href="https://en.wikipedia.org/wiki/Brad_Wilk">Brad Wilk</a>. They draw inspiration from early&nbsp;<a href="https://en.wikipedia.org/wiki/Heavy_metal_music">heavy metal</a>&nbsp;instrumentation, as well as&nbsp;<a href="https://en.wikipedia.org/wiki/Hip_hop_music">hip hop</a>&nbsp;acts such as&nbsp;<a href="https://en.wikipedia.org/wiki/Afrika_Bambaataa">Afrika Bambaataa</a>,<sup><a href="https://en.wikipedia.org/wiki/Rage_Against_the_Machine#cite_note-allmusic-1">[1]</a></sup>&nbsp;<a href="https://en.wikipedia.org/wiki/Public_Enemy_(band)">Public Enemy</a>, the&nbsp;<a href="https://en.wikipedia.org/wiki/Beastie_Boys">Beastie Boys</a>&nbsp;and Dutch crossover band&nbsp;<a href="https://en.wikipedia.org/wiki/Urban_Dance_Squad">Urban Dance Squad</a>.<sup><a href="https://en.wikipedia.org/wiki/Rage_Against_the_Machine#cite_note-metrolyrics-2">[2]</a></sup>&nbsp;Rage Against the Machine is well known for the members''&nbsp;<a href="https://en.wikipedia.org/wiki/Left-wing_politics">leftist</a>&nbsp;and&nbsp;<a href="https://en.wikipedia.org/wiki/Revolutionary">revolutionary</a>&nbsp;<a href="https://en.wikipedia.org/wiki/Political_views_and_activism_of_Rage_Against_the_Machine">political views</a>, which are expressed in many of the band''s songs. As of 2010, they have sold over 16 million records worldwide.<sup><a href="https://en.wikipedia.org/wiki/Rage_Against_the_Machine#cite_note-WordPress-3">[3]</a></sup></p>\r\n\r\n<p>In 1992, the band released its&nbsp;<a href="https://en.wikipedia.org/wiki/Rage_Against_the_Machine_(album)">self-titled debut album</a>, which became a commercial and critical success, leading to a slot in the 1993&nbsp;<a href="https://en.wikipedia.org/wiki/Lollapalooza">Lollapalooza</a>&nbsp;festival. In 2003, the album was ranked number 368 on&nbsp;<em><a href="https://en.wikipedia.org/wiki/Rolling_Stone">Rolling Stone</a></em>&nbsp;magazine''s list of the&nbsp;<a href="https://en.wikipedia.org/wiki/The_500_Greatest_Albums_of_All_Time">500 greatest albums of all time</a>. The band did not release a follow-up record until 1996, with&nbsp;<em><a href="https://en.wikipedia.org/wiki/Evil_Empire_(album)">Evil Empire</a></em>. The band''s third album,&nbsp;<em><a href="https://en.wikipedia.org/wiki/The_Battle_of_Los_Angeles_(album)">The Battle of Los Angeles</a></em>, followed in 1999, and in 2003, the album was ranked number 426 on the same list. During their initial nine-year run, they became one of the most popular and influential bands in music history, according to music journalist Colin Devenish.<sup><a href="https://en.wikipedia.org/wiki/Rage_Against_the_Machine#cite_note-Devenish-4">[4]</a></sup>&nbsp;They were also ranked No.&nbsp;33 on&nbsp;<a href="https://en.wikipedia.org/wiki/VH1">VH1</a>''s&nbsp;<em>100 Greatest Artists of Hard Rock</em>. The band had a large influence on the&nbsp;<a href="https://en.wikipedia.org/wiki/Nu_metal">nu metal</a>&nbsp;genre which came to prominence during the second half of the 1990s.<br>In 2000, the band released the cover album,&nbsp;<em><a href="https://en.wikipedia.org/wiki/Renegades_(Rage_Against_the_Machine_album)">Renegades</a></em>. The same year, growing tensions over the direction of the band prompted de la Rocha to quit, leading to the band''s breakup.<sup><a href="https://en.wikipedia.org/wiki/Rage_Against_the_Machine#cite_note-5">[5]</a></sup>De la Rocha started a low-key solo career, while the rest of the band formed the rock&nbsp;<a href="https://en.wikipedia.org/wiki/Supergroup_(music)">supergroup</a>&nbsp;<a href="https://en.wikipedia.org/wiki/Audioslave">Audioslave</a>&nbsp;with&nbsp;<a href="https://en.wikipedia.org/wiki/Chris_Cornell">Chris Cornell</a>, then-former&nbsp;<a href="https://en.wikipedia.org/wiki/Frontman">frontman</a>&nbsp;of&nbsp;<a href="https://en.wikipedia.org/wiki/Soundgarden">Soundgarden</a>; Audioslave recorded three albums before disbanding in 2007. The same year, Rage Against the Machine announced a reunion and performed together for the first time in seven years at the<a href="https://en.wikipedia.org/wiki/Coachella_Valley_Music_and_Arts_Festival">Coachella Valley Music and Arts Festival</a>&nbsp;in April 2007. Up until 2011, the band continued to perform at more live venues and festivals around the world. As of 2016, the group has no plans to perform or release new music.<sup><a href="https://en.wikipedia.org/wiki/Rage_Against_the_Machine#cite_note-newalbum-6">[6]</a></sup></p>\r\n\r\n<p>-&nbsp;<a href="https://en.wikipedia.org/wiki/Rage_Against_the_Machine" target="_blank">wikipedia</a></p>\r\n\r\n<p>After a wonderful wikipedia entry to wet our apatite''s, the question remains, is RATM still great after a ten year break?&nbsp;They were great before they decided to split ways, and their subsequent projects have all built followings in their respective rights. Fans will tell you that the bands thrash and metal style is still some of the best sounding <a href="{category:48:url}">Rock&nbsp;</a>music you can sink your teeth into, at the end of the day it is all very objective, I still love the band, but I only started listening to them after they broke up, which is a real shame.&nbsp;</p>\r\n\r\n<p>I have searched the net looking for live shows and thoroughly enjoyed watching a young RATM&nbsp;jump around stage and throw a massive amount of energy at the crowd, and wished I were there, and I still really enjoy their music, right now I am listening to Evil Empire...&nbsp;<a href="https://www.youtube.com/watch?v=j8V_dpqwK5c" target="_blank">Evil Empire</a>&nbsp;</p>\r\n\r\n<p>So I believe ten years on their music lives on and makes for some amazing listening</p>\r\n\r\n<p>-&nbsp;K</p>\r\n\r\n', '', '', '2016-03-01 12:14:52', '2016-03-03 07:31:27', 'a56e345e-71cc-47e4-9194-f26cdc8ba0ec'),
(55, 55, 'en', 'Dwayne  Johnson At The 2009  Tribeca  Film  Festival', NULL, NULL, NULL, '2016-03-01 12:22:00', '2016-03-03 11:50:10', '2ddf47c7-c02a-4f20-8c95-2054103ea281'),
(60, 60, 'en', NULL, NULL, '/assets/images/batman-logo-big.gif', NULL, '2016-03-02 12:25:56', '2016-03-02 12:47:24', '7bf3801c-0ce9-4993-8b83-ff9f74e92567'),
(61, 61, 'en', 'Batman Logo Big', NULL, NULL, NULL, '2016-03-02 12:40:39', '2016-03-03 11:50:16', '69ff5fb7-86cd-4b73-a01b-64c951ede458'),
(62, 62, 'en', 'Fallout', NULL, NULL, NULL, '2016-03-02 12:40:40', '2016-03-03 11:50:16', '5b84e8e3-314f-47af-b310-e53864244811'),
(64, 64, 'en', '3056637 Poster P 2 Ok Go To Space', NULL, NULL, NULL, '2016-03-03 07:00:51', '2016-03-03 11:50:06', '7779f7e0-33ee-48c7-a80c-453dc11ec5ba'),
(65, 65, 'en', 'Okgo 41 2130373B', NULL, NULL, NULL, '2016-03-03 07:00:56', '2016-03-03 11:50:14', '61531cd6-c40c-4c33-a7a5-bcc4284091b8'),
(66, 66, 'en', 'Ok  Go11', NULL, NULL, NULL, '2016-03-03 07:00:56', '2016-03-03 11:50:14', '8287291e-f202-4922-90d7-cde6b68f9f49'),
(67, 67, 'en', '88236937 Ok Go', NULL, NULL, NULL, '2016-03-03 07:00:58', '2016-03-03 11:50:15', '76076ebd-2de1-4787-a0c4-ebe1e7620a56'),
(68, 68, 'en', 'Flux Ok Go', NULL, NULL, NULL, '2016-03-03 07:00:59', '2016-03-03 11:50:17', 'dd9eb03c-db3d-4756-97b7-395ebd9cf9d4'),
(69, 69, 'en', 'Indy', NULL, NULL, NULL, '2016-03-03 07:02:49', '2016-03-03 07:02:49', '5b99db1d-6943-43b0-ba08-63b671e8d6fd'),
(70, 70, 'en', 'Music', NULL, NULL, NULL, '2016-03-03 07:02:53', '2016-03-03 07:02:53', '060de4a9-6919-4d17-b152-d668a924e8ba'),
(71, 71, 'en', 'OK GO - Lets get Indy', '<p>If there''s one rock journalist cliché that bugs me, it''s that relentless tendency to dwell heavily on a band''s image, allowing it to supercede the importance of the music in the interest of provoking a laugh or making what is often a frivolous, irrelevant point. A great deal of bands, from the early mop-top days of The Beatles to the afro''d At the Drive-In of today, have found their otherwise wonderful and perfectly noteworthy music suffocated by the ink given to their hair, outfits or backstage antics. Conversely, painfully mediocre bands like Kiss and Cinderella find substantial, undeserved attention simply through their flashy dress codes, using their image to blanket lifeless, pedestrian songs. Needless to say, it''s a tactic I usually try to avoid.</p>\r\n\r\n<p>And so here I try, objectively as I can, to sit through the self-titled debut of Chicago foursome Ok Go. From the outset, their look is positively loathsome; four clean-cut, Suburbia-ripped pretty boys aspiring to toe the line between indie respectability and commercial adulation. I slide the disc into my CD player, glancing briefly at the&nbsp;<em>Blue</em>-era Weezer poster on my wall which optimistically reminds me of the joy that could abound. But as the music begins, and the bland onslaught of creative ineptitude soaks my room, my mood takes a nosedive.<br>Fact is, Ok Go seemed to have made every effort to live up to their immaculate, airbrushed image in their music. That the kind of mindless, commercial monotony that dilutes every hint of vibrancy on the record seems wholly intentional is telling, as a comparatively lo-fi collection of songs were apparently scrapped in favor of this supposedly more accessible dreck. The sort of middle-of-the-road, half power-pop/half hair-metal hooks heard on first track and single "Get Over It" plays itself out on nearly every track, using the monster power chords, obtusely ironic lyrics and anthemic send-up chorus as a blueprint for the kind of 21st century arena-rock most people knew we didn''t need.<br>For forty minutes,&nbsp;<em>Ok Go</em>&nbsp;drags on laboriously, with each passing song more desperately anticipating the end. Damian Kulash''s lyrics are almost uniformly dreadful, but no more so than on "You''re So Damn Hot", what seems to be some kind of aggravating rewrite of "Bang a Gong" with all the substance and style drained from it. Lines like, "You''re a bad-hearted boy trap, baby doll, but you''re/ So damn hot," are enough to make you despise the English language. Fortunately, the album is saved from&nbsp;<em>total</em>&nbsp;disaster by the band''s occasional ear for a good hook, and though you''ll knock yourself for it, the reasonably hummable melodies of a handful of these tracks may stay with you for the rest of the day.<br>When push comes to shove though,&nbsp;<em>Ok Go</em>&nbsp;is either a dreadfully calculated, shot-in-the-dark attempt at accessibility from a band whose heart is in the underground or simply a dull, styrofoam pop record from a bunch of fresh-faced hacks who happened to come across a Weezer fakebook and decided to turn it into a career. Either way, their heart doesn''t seem in it, and if you''re gonna win the public over, you''ve gotta at least fool them into thinking you mean it.</p>', '', '<p>Reverse the pronunciation guide for "INXS." That''s "okay, go," not "oakgoo." "OKGO" sounds more like a He-Man villain, and therefore seems more suitable as a name for a math-rock band.</p>\r\n\r\n<p>Ok Go have been masterfully collecting hype by plastering their flashy posters on <em>Exito!</em>newspaper dispensers and opening for <em>every single band</em> in Chicago over the last year, including Don Caballero, The Promise Ring, Elliott Smith, and OMD. (Yes, Orchestral Maneuvers in the Dark.) It''s actually been fascinating to watch their inevitable rise. Local press now invariably strokes the band''s egos; in a city still sadly yearning for their next "Pumpkins," these guys seem to have become the prime candidates.<br />Image counts, kids, and a flashy <a href="http://www.okgo.net">www.okgo.net</a> website with press photos was born even before these guys had-- oh, right!-- a record. But now that their meticulous, year-long recording sessions can finally be heard, however briefly, the band can get on with gathering devoted fans and lukewarm reviews.<br />This sub-10-minute EP was crafted in <em>five</em> studios, including the spiffy workplaces of Dave Trumfio, Steve Albini, and Butch Vig. (At this point, it should be noted that Ok Go have trust funds.) And despite minor songwriting triumphs, it can be difficult to wrap your head around the fact that five studios, two producers, and five assistants worked to create a Weezer knock-off called "Bye Bye Baby".<br />On stage, Ok Go play the shiniest gear, filtered through electronics and a laptop. The silicon sound offers pinches-- tiny pinches-- of Brainiac moments, most notably on their tune, "This Is Not the Sound of a Train". Sadly, that''s not included here. Instead, we get the lithe acoustic throwaway "It''s Tough to Have a Crush When the Boy Doesn''t Feel the Same Way You Do". Jeremy Jacobsen of Five Style and The Lonesome Organist, and The Coctails'' Mark Greenberg supply some nifty vaudevillian twinkling underneath, but it fails to detract from the fact that everything the song has to offer is handed over in the title alone. Quick, guess the chorus! Reading the sleeve can be just as melodic, and at least saves you from the line, "Who ever knew such hullabaloo?" "We Dug a Hole" opens with "Strawberry Fields" organ and hides pleasant choruses. However, the verses serve up layers of "loops" and "rapping" that could only make Amy Heckerling wet, and their anal studio attention dominates every guitar chug and vocal harmony.<br />Of course, considering the competition, Ok Go have a brilliant future. Even this beats the living lisp out of The Promise Ring. (Oddly, Jade Tree turned Ok Go down-- this could have been their retirement fund.) Still, the band fully embraces the cheddar pleasures of major label pop, and for every crispy curveball thrown, there''s a lyric like, "C-C-C-Cinnamon lips and candy kisses on my tongue." And if these sound like bitter, grizzled complaints, it''s only because I''m trying to brace you for the moment they ditch self-released CDs and come to your town with Fruit-by-the-Foot''s Generation Flav''R Fest.</p>', '2016-03-03 07:03:26', '2016-03-03 07:31:29', '4f4142b0-277d-40e2-9bd0-8a40c79e7cc4'),
(72, 72, 'en', 'Music', NULL, NULL, NULL, '2016-03-03 07:22:59', '2016-03-03 08:08:30', 'c11b813c-1f08-478a-90a9-981b12b4c825'),
(73, 73, 'en', 'Metal', NULL, NULL, NULL, '2016-03-03 07:24:27', '2016-03-03 07:24:27', '2072276a-dea7-4944-b534-b724f86674d1'),
(74, 74, 'en', 'Metal-Core', NULL, NULL, NULL, '2016-03-03 07:24:46', '2016-03-03 07:24:46', '24c7c4bf-2689-46c4-8336-29f587bee98e'),
(75, 75, 'en', 'Rock', NULL, NULL, NULL, '2016-03-03 07:24:58', '2016-03-03 07:24:58', '7f2a9470-a715-43db-9149-a26f7ff27625'),
(76, 76, 'en', 'Categories', NULL, NULL, NULL, '2016-03-03 08:08:26', '2016-03-03 08:08:26', 'fb2d1aad-b4b7-492d-b9a4-f9c6cd53aeb8'),
(77, 77, 'en', '1600 Reasons To Love This Datsun - Speed Hunters', NULL, NULL, NULL, '2016-03-03 11:39:15', '2016-03-03 13:55:36', 'ee9f4142-ea12-4812-b8e3-36fffb8fd24d'),
(78, 83, 'en', 'Datsun 1600  Wagon 8185 800X533', NULL, NULL, NULL, '2016-03-03 11:50:06', '2016-03-03 11:50:06', '3b19dbed-f741-42a6-b956-aad57e9ea3dc'),
(79, 84, 'en', 'Datsun 1600  Wagon 8197 800X533', NULL, NULL, NULL, '2016-03-03 11:50:07', '2016-03-03 11:50:07', '2912eba3-29ee-4651-b427-7ffb09647743'),
(80, 85, 'en', 'Datsun 1600  Wagon 8232 800X533', NULL, NULL, NULL, '2016-03-03 11:50:07', '2016-03-03 11:50:07', '95e38275-1da5-40c7-b6fa-cc0aae869098'),
(81, 86, 'en', 'Datsun 1600  Wagon 8269 800X533', NULL, NULL, NULL, '2016-03-03 11:50:07', '2016-03-03 11:50:07', '80d76c66-1d4b-44c0-806c-179efe711f5c'),
(82, 87, 'en', 'Datsun 1600  Wagon 8279 800X533', NULL, NULL, NULL, '2016-03-03 11:50:08', '2016-03-03 11:50:08', '5aa58ee1-1364-46b9-b3e9-0bb19c8d65bc'),
(83, 88, 'en', 'Datsun 1600  Wagon 8289 800X533', NULL, NULL, NULL, '2016-03-03 11:50:08', '2016-03-03 11:50:08', '3cbffe0d-def1-48b1-a273-7d8cb0a3e310'),
(84, 89, 'en', 'Datsun 1600  Wagon 8293 800X533', NULL, NULL, NULL, '2016-03-03 11:50:08', '2016-03-03 11:50:08', '1ae6b610-a2ff-4ac7-b050-8a3131a1a0aa'),
(85, 90, 'en', 'Datsun 1600  Wagon 8305 800X533', NULL, NULL, NULL, '2016-03-03 11:50:09', '2016-03-03 11:50:09', '3672ea19-3cb3-41be-9890-96403c2afadc'),
(86, 91, 'en', 'Datsun 1600  Wagon 8308 800X533', NULL, NULL, NULL, '2016-03-03 11:50:09', '2016-03-03 11:50:09', '7455bb05-db0d-48c2-9f42-34ef0cf33e2f'),
(87, 92, 'en', 'Datsun 1600  Wagon 8460 800X533', NULL, NULL, NULL, '2016-03-03 11:50:09', '2016-03-03 11:50:09', '7b493d69-4f9e-46fe-8296-a214840945fa');

-- --------------------------------------------------------

--
-- Table structure for table `craft_deprecationerrors`
--

CREATE TABLE IF NOT EXISTS `craft_deprecationerrors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fingerprint` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastOccurrence` datetime NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `line` smallint(6) unsigned NOT NULL,
  `class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `method` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `template` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `templateLine` smallint(6) unsigned DEFAULT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `traces` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_deprecationerrors_key_fingerprint_unq_idx` (`key`,`fingerprint`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `craft_elementindexsettings`
--

CREATE TABLE IF NOT EXISTS `craft_elementindexsettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_elementindexsettings_type_unq_idx` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `craft_elements`
--

CREATE TABLE IF NOT EXISTS `craft_elements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `archived` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_elements_type_idx` (`type`),
  KEY `craft_elements_enabled_idx` (`enabled`),
  KEY `craft_elements_archived_dateCreated_idx` (`archived`,`dateCreated`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=94 ;

--
-- Dumping data for table `craft_elements`
--

INSERT INTO `craft_elements` (`id`, `type`, `enabled`, `archived`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'User', 1, 0, '2016-03-01 09:25:59', '2016-03-01 09:25:59', 'ca92fdde-826d-46ff-ad42-15fe276f1930'),
(2, 'Entry', 0, 0, '2016-03-01 09:26:01', '2016-03-02 09:57:07', '59536647-a295-4a00-b7af-212094dc5a35'),
(3, 'Entry', 1, 0, '2016-03-01 09:26:01', '2016-03-01 11:05:14', '829c7f01-f52d-4130-8237-32a3696ef1db'),
(4, 'Entry', 1, 0, '2016-03-01 09:32:59', '2016-03-02 13:30:46', '5f77761e-a99e-4478-9db4-ddcc0bf21b3d'),
(5, 'Tag', 1, 0, '2016-03-01 09:51:07', '2016-03-01 09:51:07', '6056f95e-b9f0-43c2-b8c8-6619ae9cd9c3'),
(6, 'Tag', 1, 0, '2016-03-01 09:51:12', '2016-03-01 09:51:12', '24391e10-913a-420f-8880-c694583302a2'),
(7, 'Tag', 1, 0, '2016-03-01 09:51:18', '2016-03-01 09:51:18', 'bec54d8b-1718-4b78-8ce4-cae201fdbf3a'),
(8, 'Entry', 1, 0, '2016-03-01 10:05:39', '2016-03-02 12:53:36', 'c8245f90-5456-4d36-806c-402eca85d289'),
(9, 'Tag', 1, 0, '2016-03-01 10:05:48', '2016-03-01 10:05:48', '93d133dc-53ad-4d4c-ba57-ba3e3fe0b9fe'),
(10, 'Tag', 1, 0, '2016-03-01 10:05:51', '2016-03-01 10:05:51', 'ac9d22df-30ab-4c9a-94b7-b33f9e08f726'),
(11, 'Tag', 1, 0, '2016-03-01 10:05:56', '2016-03-01 10:05:56', '4e944d23-086f-4e6a-9926-ad996616d9e7'),
(13, 'Asset', 1, 0, '2016-03-01 10:19:13', '2016-03-03 11:50:05', '5dc72718-3339-4b7b-889c-33a43090df00'),
(14, 'Asset', 1, 0, '2016-03-01 10:19:47', '2016-03-03 11:50:02', '948872c2-b542-44f8-8917-4d4ee40b8884'),
(15, 'Asset', 1, 0, '2016-03-01 10:19:48', '2016-03-03 11:50:02', 'e9b4bfb0-64c4-4e59-bedd-7aa960e06d45'),
(16, 'Asset', 1, 0, '2016-03-01 10:19:49', '2016-03-03 11:50:02', '9b9dc789-3882-460c-a794-56ad320305ec'),
(17, 'Asset', 1, 0, '2016-03-01 10:19:49', '2016-03-03 11:50:03', '3e1ab642-710d-4472-8b9c-9adf0d361b18'),
(18, 'Asset', 1, 0, '2016-03-01 10:19:50', '2016-03-03 11:50:03', '5820aad5-ee61-4e51-a3c5-96ffd273e3cc'),
(19, 'Asset', 1, 0, '2016-03-01 10:19:50', '2016-03-03 11:50:03', '305b347c-88cb-4204-b5fe-9193bd3e048e'),
(20, 'Asset', 1, 0, '2016-03-01 10:19:51', '2016-03-03 11:50:04', '162bdfc3-2586-44a2-bd28-2fc4a2855552'),
(21, 'Asset', 1, 0, '2016-03-01 10:56:23', '2016-03-03 11:50:04', '0b4055b8-9e33-4492-b660-775688effefd'),
(22, 'Asset', 1, 0, '2016-03-01 10:56:23', '2016-03-03 11:50:04', '74c6c64b-e847-41b4-960f-5e72d8308603'),
(23, 'Asset', 1, 0, '2016-03-01 10:56:24', '2016-03-03 11:50:05', '175ad775-1cbc-45f5-8729-4ba76922b61b'),
(24, 'Asset', 1, 0, '2016-03-01 10:56:24', '2016-03-03 11:50:05', 'be0dc549-0751-47fb-9323-77ef9df0115c'),
(25, 'Asset', 1, 0, '2016-03-01 10:56:25', '2016-03-03 11:50:10', '625f2ea8-05fa-4f5a-8577-527bef875855'),
(26, 'Asset', 1, 0, '2016-03-01 10:56:25', '2016-03-03 11:50:10', '64559088-e9e4-4978-8906-c173e726d8c4'),
(27, 'Asset', 1, 0, '2016-03-01 10:56:25', '2016-03-03 11:50:11', '5fa8eb28-5756-42b5-8edc-61d2f35c5f9a'),
(28, 'Asset', 1, 0, '2016-03-01 10:56:25', '2016-03-03 11:50:11', 'e00926d0-7592-4226-9217-329dfa85f3fb'),
(29, 'Asset', 1, 0, '2016-03-01 10:56:26', '2016-03-03 11:50:11', '4e9b281a-92f0-4b18-b4fa-fbf4fa265056'),
(30, 'Asset', 1, 0, '2016-03-01 10:56:26', '2016-03-03 11:50:12', '4fd6a4d1-f614-47af-b828-91e8e92cc3f1'),
(31, 'Asset', 1, 0, '2016-03-01 10:56:26', '2016-03-03 11:50:12', '97256e74-d203-4131-8e5d-02f056d5f55d'),
(32, 'Asset', 1, 0, '2016-03-01 10:56:27', '2016-03-03 11:50:12', '976a2422-5fe4-484d-9cde-2d8c76f021f1'),
(33, 'Asset', 1, 0, '2016-03-01 10:56:27', '2016-03-03 11:50:13', 'a3b8d2e0-e59d-478f-af55-511854f2989b'),
(34, 'Asset', 1, 0, '2016-03-01 10:56:27', '2016-03-03 11:50:13', '25ed3ed7-8f66-497f-85fe-c295a1cba849'),
(35, 'Asset', 1, 0, '2016-03-01 10:56:28', '2016-03-03 11:50:13', '62e95192-ab62-4cd3-a8e7-71bb8f210fab'),
(36, 'Asset', 1, 0, '2016-03-01 10:56:28', '2016-03-03 11:50:13', '6823b0a1-404c-4d2d-b77a-4292a1173079'),
(37, 'Asset', 1, 0, '2016-03-01 11:04:46', '2016-03-03 11:50:14', '5510743c-b4c6-4d95-8578-1f13124acdd8'),
(38, 'Asset', 1, 0, '2016-03-01 11:04:47', '2016-03-03 11:50:16', 'bd04a646-25ab-44fa-9d8a-381e1bef92d9'),
(43, 'Asset', 1, 0, '2016-03-01 11:41:42', '2016-03-03 11:50:06', '871f0220-d76b-4023-beb7-c799baf3508d'),
(44, 'Tag', 1, 0, '2016-03-01 11:42:23', '2016-03-01 11:42:23', '2f2cef8e-e0a5-42ba-95df-85df63a6f90f'),
(45, 'Entry', 1, 0, '2016-03-01 11:43:47', '2016-03-01 11:46:38', 'da3cc0ea-7d31-4e61-94ee-2f7d4ab2126c'),
(46, 'Asset', 1, 0, '2016-03-01 11:46:19', '2016-03-03 11:50:17', '73475737-1850-4575-98b1-38afed8ad314'),
(51, 'Asset', 1, 0, '2016-03-01 12:08:12', '2016-03-03 11:50:15', '11a5b1ff-542a-4d38-a8d8-39087330d0d8'),
(52, 'Tag', 1, 0, '2016-03-01 12:08:47', '2016-03-01 12:08:47', '17752924-6d79-48fc-80a6-78c9fd199acf'),
(53, 'Tag', 1, 0, '2016-03-01 12:08:54', '2016-03-01 12:08:54', '3d638053-ea32-47ac-8aa0-632721ef4c2e'),
(54, 'Entry', 1, 0, '2016-03-01 12:14:52', '2016-03-03 07:31:27', 'a7072486-5b47-4e4b-9536-003ac59d8f83'),
(55, 'Asset', 1, 0, '2016-03-01 12:22:00', '2016-03-03 11:50:10', '1227cb97-6734-4bce-b28e-1fb73372396e'),
(60, 'GlobalSet', 1, 0, '2016-03-02 12:25:56', '2016-03-02 12:47:24', 'a4386e99-664c-400c-b67d-6ac4d6463d05'),
(61, 'Asset', 1, 0, '2016-03-02 12:40:39', '2016-03-03 11:50:16', '2b1cf7d8-ec3e-49bb-a270-b37908599362'),
(62, 'Asset', 1, 0, '2016-03-02 12:40:40', '2016-03-03 11:50:16', '5dfa7746-9268-42cc-800c-187d4094a8e6'),
(64, 'Asset', 1, 0, '2016-03-03 07:00:51', '2016-03-03 11:50:06', 'f8a31c2e-5968-4dc5-9b5b-7362a9a6f64b'),
(65, 'Asset', 1, 0, '2016-03-03 07:00:56', '2016-03-03 11:50:14', 'e98de4b3-1f69-4a7d-8a04-dfb7162fcce6'),
(66, 'Asset', 1, 0, '2016-03-03 07:00:56', '2016-03-03 11:50:14', '8fb870c6-923c-435a-aefb-31f77c51f33c'),
(67, 'Asset', 1, 0, '2016-03-03 07:00:58', '2016-03-03 11:50:15', 'f195a6d6-28b6-4df9-ba57-d80324431586'),
(68, 'Asset', 1, 0, '2016-03-03 07:00:59', '2016-03-03 11:50:17', 'bd710b9a-5739-4ec9-a9ee-5bccb628d998'),
(69, 'Tag', 1, 0, '2016-03-03 07:02:49', '2016-03-03 07:02:49', 'cf1124fb-cab8-43b5-996b-fa8811712336'),
(70, 'Tag', 1, 0, '2016-03-03 07:02:53', '2016-03-03 07:02:53', '0600c9fa-982f-442e-9387-406c9b18d472'),
(71, 'Entry', 1, 0, '2016-03-03 07:03:26', '2016-03-03 07:31:29', 'f2c23fa6-e7fc-4275-b20d-58ff3a605ca0'),
(72, 'Category', 1, 0, '2016-03-03 07:22:59', '2016-03-03 08:08:30', '50bf28e3-8bbe-4506-b4fb-72e8de18f942'),
(73, 'Category', 1, 0, '2016-03-03 07:24:27', '2016-03-03 07:24:27', '63c940f8-dbe3-4664-869b-4a7a35f6626a'),
(74, 'Category', 1, 0, '2016-03-03 07:24:46', '2016-03-03 07:24:46', '60dfcf84-a394-46d0-81b0-f585045f2f83'),
(75, 'Category', 1, 0, '2016-03-03 07:24:58', '2016-03-03 07:24:58', '235ad8fe-d9bb-4276-8796-76f2b10bcc5e'),
(76, 'Category', 1, 0, '2016-03-03 08:08:26', '2016-03-03 08:08:26', '40712869-6135-478a-9137-948a876437b5'),
(77, 'Entry', 1, 0, '2016-03-03 11:39:15', '2016-03-03 13:55:36', '4518648c-1c03-4007-b770-b05aad745476'),
(78, 'MatrixBlock', 1, 0, '2016-03-03 11:39:15', '2016-03-03 13:55:36', 'a056bbda-173a-4092-b9d1-97fc223cdf76'),
(80, 'MatrixBlock', 1, 0, '2016-03-03 11:39:15', '2016-03-03 13:55:36', '5e70fab6-acaf-4e5c-9ae4-0b5edb9fbd35'),
(81, 'MatrixBlock', 1, 0, '2016-03-03 11:39:15', '2016-03-03 13:55:36', 'a71327b7-a0ad-47ae-967a-8d56a2befe76'),
(82, 'MatrixBlock', 1, 0, '2016-03-03 11:43:43', '2016-03-03 13:55:36', '5df680a0-0b6a-49ba-9037-811fc6fe1202'),
(83, 'Asset', 1, 0, '2016-03-03 11:50:06', '2016-03-03 11:50:06', 'caf2e408-36aa-4e81-a2d9-bddf3f648a0c'),
(84, 'Asset', 1, 0, '2016-03-03 11:50:07', '2016-03-03 11:50:07', '7d397834-0fc4-4bae-ab02-4b2ed40327ef'),
(85, 'Asset', 1, 0, '2016-03-03 11:50:07', '2016-03-03 11:50:07', '71dff019-212d-4f74-97e3-bb322cfe6143'),
(86, 'Asset', 1, 0, '2016-03-03 11:50:07', '2016-03-03 11:50:07', 'b839cb24-ec51-48b6-b78e-d36fd98de052'),
(87, 'Asset', 1, 0, '2016-03-03 11:50:08', '2016-03-03 11:50:08', '455c7356-9f71-4f2d-8699-03eab43e0e59'),
(88, 'Asset', 1, 0, '2016-03-03 11:50:08', '2016-03-03 11:50:08', '0e42dae1-d729-430f-936e-cf00cf5ea040'),
(89, 'Asset', 1, 0, '2016-03-03 11:50:08', '2016-03-03 11:50:08', '3a7a95ac-f477-4550-8871-b4e2f9675f25'),
(90, 'Asset', 1, 0, '2016-03-03 11:50:09', '2016-03-03 11:50:09', 'eb24bdff-3fd9-48dd-b048-262a2b349ad4'),
(91, 'Asset', 1, 0, '2016-03-03 11:50:09', '2016-03-03 11:50:09', 'c10599e5-fbb9-497d-bef6-02b68fca8019'),
(92, 'Asset', 1, 0, '2016-03-03 11:50:09', '2016-03-03 11:50:09', 'b3b8b84d-d05d-413b-aa0b-5f7fdbc962ab'),
(93, 'MatrixBlock', 1, 0, '2016-03-03 11:51:56', '2016-03-03 13:55:36', 'cebab182-1199-4002-b250-2b3db4724c8e');

-- --------------------------------------------------------

--
-- Table structure for table `craft_elements_i18n`
--

CREATE TABLE IF NOT EXISTS `craft_elements_i18n` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uri` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_elements_i18n_elementId_locale_unq_idx` (`elementId`,`locale`),
  UNIQUE KEY `craft_elements_i18n_uri_locale_unq_idx` (`uri`,`locale`),
  KEY `craft_elements_i18n_slug_locale_idx` (`slug`,`locale`),
  KEY `craft_elements_i18n_enabled_idx` (`enabled`),
  KEY `craft_elements_i18n_locale_fk` (`locale`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=94 ;

--
-- Dumping data for table `craft_elements_i18n`
--

INSERT INTO `craft_elements_i18n` (`id`, `elementId`, `locale`, `slug`, `uri`, `enabled`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'en', '', NULL, 1, '2016-03-01 09:25:59', '2016-03-01 09:25:59', '62bc076f-a2a5-4faa-a8f8-f40105aa69b5'),
(2, 2, 'en', 'homepage', '__home__', 1, '2016-03-01 09:26:01', '2016-03-02 09:57:07', 'a3b4f4c5-e1da-45dc-9ded-8191451efdd3'),
(3, 3, 'en', 'we-just-installed-craft', 'news/2016/we-just-installed-craft', 1, '2016-03-01 09:26:01', '2016-03-01 11:05:14', '23ec7ebf-61d2-4554-ba49-5c1622eccdae'),
(4, 4, 'en', 'bugatti-chirion', 'vehicles/bugatti-chirion', 1, '2016-03-01 09:33:00', '2016-03-02 13:30:46', 'dca6c67d-0ab5-4730-8026-316a38e7dc19'),
(5, 5, 'en', 'chirion', NULL, 1, '2016-03-01 09:51:07', '2016-03-01 09:51:07', 'd114a50f-4f97-43b9-9614-1e9faca4d9d7'),
(6, 6, 'en', 'bugatti', NULL, 1, '2016-03-01 09:51:12', '2016-03-01 09:51:12', '5d58afc4-9330-4b67-8415-e5cb3aa54d98'),
(7, 7, 'en', 'hypercar', NULL, 1, '2016-03-01 09:51:18', '2016-03-01 09:51:18', 'd70aafbd-b465-45a3-aece-d988d71d6332'),
(8, 8, 'en', 'golf-gte', 'vehicles/golf-gte', 1, '2016-03-01 10:05:39', '2016-03-02 12:53:36', '835cca1e-ee00-4c3f-89ba-e55017ecfa27'),
(9, 9, 'en', 'gte', NULL, 1, '2016-03-01 10:05:48', '2016-03-01 10:05:48', '5e11f910-3620-42e3-8d89-44b2916c12cd'),
(10, 10, 'en', 'golf', NULL, 1, '2016-03-01 10:05:51', '2016-03-01 10:05:51', '177acb55-361a-472a-99a9-9928b563c6a1'),
(11, 11, 'en', 'hybrid', NULL, 1, '2016-03-01 10:05:56', '2016-03-01 10:05:56', '5f8d7e2e-9dbc-45b6-83a6-9c2c854c22d9'),
(13, 13, 'en', '2016-volkswagen-gte-by-paddy-mc-grath-34-800x533', NULL, 1, '2016-03-01 10:19:13', '2016-03-03 11:50:05', '1be4f7eb-32e7-41d9-8931-0d3f6085a96e'),
(14, 14, 'en', '01-chiron-grand-palais-34-front-web-0', NULL, 1, '2016-03-01 10:19:47', '2016-03-03 11:50:02', 'f1c691c0-d66d-40fa-8ed1-8bd193a271a9'),
(15, 15, 'en', '02-chiron-grand-palais-side-web-0', NULL, 1, '2016-03-01 10:19:48', '2016-03-03 11:50:02', '6694c53f-9c2b-4e11-a4bf-925466338032'),
(16, 16, 'en', '03-chiron-grand-palais-side-web-0', NULL, 1, '2016-03-01 10:19:49', '2016-03-03 11:50:02', '2ae7b023-2811-4716-9b16-2b005f886843'),
(17, 17, 'en', '04-chiron-grand-palais-34front-web-0', NULL, 1, '2016-03-01 10:19:49', '2016-03-03 11:50:03', '7b12be09-0269-4062-b9f6-5681778b2a35'),
(18, 18, 'en', '05-chiron-grand-palais-34-rear-web-0', NULL, 1, '2016-03-01 10:19:50', '2016-03-03 11:50:03', 'a038a556-d10d-4a82-b7af-f206cf800799'),
(19, 19, 'en', '06-chiron-grand-palais-34-rear-web-0', NULL, 1, '2016-03-01 10:19:50', '2016-03-03 11:50:03', '2a60bcd4-9919-42ab-a38a-6a3cde44bda5'),
(20, 20, 'en', '09-chiron-grand-palais-side-web-0', NULL, 1, '2016-03-01 10:19:51', '2016-03-03 11:50:04', 'aa060d5c-ba22-492e-b6b3-065c7e143586'),
(21, 21, 'en', '2016-volkswagen-gte-by-paddy-mc-grath-1-1200x800', NULL, 1, '2016-03-01 10:56:23', '2016-03-03 11:50:04', 'ceb59638-fcd2-446e-9668-4182198f592d'),
(22, 22, 'en', '2016-volkswagen-gte-by-paddy-mc-grath-18-1200x800', NULL, 1, '2016-03-01 10:56:24', '2016-03-03 11:50:04', '6c746c0e-dfb5-4c74-a08f-30b0abddcb9b'),
(23, 23, 'en', '2016-volkswagen-gte-by-paddy-mc-grath-19-800x533', NULL, 1, '2016-03-01 10:56:24', '2016-03-03 11:50:05', '25e39ff3-e6fe-4be6-ae19-91dc681ca940'),
(24, 24, 'en', '2016-volkswagen-gte-by-paddy-mc-grath-2-1200x800', NULL, 1, '2016-03-01 10:56:24', '2016-03-03 11:50:05', '61e53a9e-14e6-48a3-a547-02d5b6605c3f'),
(25, 25, 'en', '01-chiron-grand-palais-34-front-web-0', NULL, 1, '2016-03-01 10:56:25', '2016-03-03 11:50:10', 'd35794c6-128d-4c38-9c53-79c4ba4cb302'),
(26, 26, 'en', '02-chiron-grand-palais-side-web-0', NULL, 1, '2016-03-01 10:56:25', '2016-03-03 11:50:10', 'b6f2a0cf-b734-4719-aea1-3ca106a04c0a'),
(27, 27, 'en', '03-chiron-grand-palais-side-web-0', NULL, 1, '2016-03-01 10:56:25', '2016-03-03 11:50:11', '3a618c1a-ed60-4c16-b1cf-fdfa1cd607f9'),
(28, 28, 'en', '04-chiron-grand-palais-34front-web-0', NULL, 1, '2016-03-01 10:56:25', '2016-03-03 11:50:11', 'd4890530-ab6b-432b-83da-382fbd923b1b'),
(29, 29, 'en', '05-chiron-grand-palais-34-rear-web-0', NULL, 1, '2016-03-01 10:56:26', '2016-03-03 11:50:11', 'fbf9f809-1e78-4f01-9839-8d281f2260db'),
(30, 30, 'en', '06-chiron-grand-palais-34-rear-web-0', NULL, 1, '2016-03-01 10:56:26', '2016-03-03 11:50:12', 'fb737007-ce63-4c8f-bb61-2fe4cd543e0d'),
(31, 31, 'en', '09-chiron-grand-palais-side-web-0', NULL, 1, '2016-03-01 10:56:26', '2016-03-03 11:50:12', 'e1eba9d8-601b-4796-8fbd-b49b3f796ff5'),
(32, 32, 'en', '2016-volkswagen-gte-by-paddy-mc-grath-1-1200x800', NULL, 1, '2016-03-01 10:56:27', '2016-03-03 11:50:12', '7f466393-82aa-448d-a224-a3c9f4ffdd42'),
(33, 33, 'en', '2016-volkswagen-gte-by-paddy-mc-grath-18-1200x800', NULL, 1, '2016-03-01 10:56:27', '2016-03-03 11:50:13', '22b1b200-e713-42b8-8160-7ec9935d490c'),
(34, 34, 'en', '2016-volkswagen-gte-by-paddy-mc-grath-19-800x533', NULL, 1, '2016-03-01 10:56:27', '2016-03-03 11:50:13', '6d566c51-ec1c-49ad-8111-a9f23838d6a2'),
(35, 35, 'en', '2016-volkswagen-gte-by-paddy-mc-grath-2-1200x800', NULL, 1, '2016-03-01 10:56:28', '2016-03-03 11:50:13', '919a3ebc-e82c-46d7-b1e7-7a7bb269c150'),
(36, 36, 'en', '2016-volkswagen-gte-by-paddy-mc-grath-34-800x533', NULL, 1, '2016-03-01 10:56:28', '2016-03-03 11:50:13', '9c5265e4-edb4-4760-a434-cd38dd698806'),
(37, 37, 'en', 'news-765x350px', NULL, 1, '2016-03-01 11:04:46', '2016-03-03 11:50:14', '3b1f2f53-0920-4d18-bc59-be8dfb59504e'),
(38, 38, 'en', 'craft-blog-graphic1', NULL, 1, '2016-03-01 11:04:47', '2016-03-03 11:50:16', '7a70ddf4-d22a-497f-ab3b-f1a587baa98a'),
(43, 43, 'en', '220px-who-killed-the-electric-car-cover', NULL, 1, '2016-03-01 11:41:43', '2016-03-03 11:50:06', 'f1e7f862-580a-4602-aeae-7355b2814e2c'),
(44, 44, 'en', 'electric-car', NULL, 1, '2016-03-01 11:42:23', '2016-03-01 11:42:23', '47950a90-28e7-451a-abe0-4b03cfd18677'),
(45, 45, 'en', 'screening-of-who-killed-the-electric-car', 'news/2016/screening-of-who-killed-the-electric-car', 1, '2016-03-01 11:43:47', '2016-03-01 11:46:39', '9a654dd3-2c38-402e-b41b-0e3f899c743b'),
(46, 46, 'en', 'fisker-karma', NULL, 1, '2016-03-01 11:46:19', '2016-03-03 11:50:17', '0b55c59f-9401-48b8-934f-334f29621c02'),
(51, 51, 'en', 'rage-against-the-machine', NULL, 1, '2016-03-01 12:08:12', '2016-03-03 11:50:15', '73d18856-6bc0-4f01-845b-9e9d2eed19be'),
(52, 52, 'en', 'metal', NULL, 1, '2016-03-01 12:08:47', '2016-03-01 12:08:47', '194542e1-dae5-4671-a24a-a61623072d0a'),
(53, 53, 'en', 'ratm', NULL, 1, '2016-03-01 12:08:54', '2016-03-01 12:08:54', '4227260d-7892-4c88-a094-94bd649eeb35'),
(54, 54, 'en', 'rage-againts-the-machine-10-years-on', 'music/rage-againts-the-machine-10-years-on', 1, '2016-03-01 12:14:52', '2016-03-03 07:31:27', 'c1e6c879-cd34-4bfb-b3b2-94b5b316517a'),
(55, 55, 'en', 'dwayne-johnson-at-the-2009-tribeca-film-festival', NULL, 1, '2016-03-01 12:22:00', '2016-03-03 11:50:10', '3e8b16dc-4c2d-478b-a985-75d0def812b0'),
(60, 60, 'en', '', NULL, 1, '2016-03-02 12:25:56', '2016-03-02 12:47:24', '2ffce50e-f668-4383-b1fe-10c25431f5dc'),
(61, 61, 'en', 'batman-logo-big', NULL, 1, '2016-03-02 12:40:39', '2016-03-03 11:50:16', 'e6791211-29c4-4cab-9994-dd5c0a4ab040'),
(62, 62, 'en', 'fallout', NULL, 1, '2016-03-02 12:40:40', '2016-03-03 11:50:16', '9317ca73-27c3-4407-8581-39b4f8bdb625'),
(64, 64, 'en', '3056637-poster-p-2-ok-go-to-space', NULL, 1, '2016-03-03 07:00:51', '2016-03-03 11:50:06', '13b495ce-79db-48d4-b8ff-114233071fc8'),
(65, 65, 'en', 'okgo-41-2130373b', NULL, 1, '2016-03-03 07:00:56', '2016-03-03 11:50:14', 'dded9a7c-ca09-4bde-be85-64bff85443a1'),
(66, 66, 'en', 'ok-go11', NULL, 1, '2016-03-03 07:00:56', '2016-03-03 11:50:14', '40fbb9ca-f6cf-4440-9914-76c3766a19d8'),
(67, 67, 'en', '88236937-ok-go', NULL, 1, '2016-03-03 07:00:58', '2016-03-03 11:50:16', '94c9d362-73b5-4991-adcb-e17580ef26c7'),
(68, 68, 'en', 'flux-ok-go', NULL, 1, '2016-03-03 07:00:59', '2016-03-03 11:50:17', '87d0573f-6fff-4117-9e72-efec06c7fb28'),
(69, 69, 'en', 'indy', NULL, 1, '2016-03-03 07:02:49', '2016-03-03 07:02:49', '4387c18a-148f-4102-939f-5cec099b01d3'),
(70, 70, 'en', 'music', NULL, 1, '2016-03-03 07:02:53', '2016-03-03 07:02:53', 'c055856a-33ed-4731-8916-fa942bc91f55'),
(71, 71, 'en', 'ok-go-lets-get-indy', 'music/ok-go-lets-get-indy', 1, '2016-03-03 07:03:26', '2016-03-03 07:31:29', '47e604e4-13f0-41c6-aacd-d56938fb28b8'),
(72, 72, 'en', 'music', 'categories/categories/music', 1, '2016-03-03 07:22:59', '2016-03-03 08:08:30', '572406d6-6e22-491c-be4a-aba3c2eb2928'),
(73, 73, 'en', 'metal', 'categories/categories/music/metal', 1, '2016-03-03 07:24:27', '2016-03-03 08:08:30', '51494631-6075-4021-aedb-2de704a5b181'),
(74, 74, 'en', 'metal-core', 'categories/categories/music/metal/metal-core', 1, '2016-03-03 07:24:46', '2016-03-03 08:08:31', 'd9db54c5-c45c-47c3-a292-db1bc076f067'),
(75, 75, 'en', 'rock', 'categories/categories/music/rock', 1, '2016-03-03 07:24:58', '2016-03-03 08:08:31', 'b761c005-d91f-4170-93a0-e6c776af13e9'),
(76, 76, 'en', 'categories', 'categories/categories', 1, '2016-03-03 08:08:26', '2016-03-03 08:08:30', '1d726047-dbe1-4e22-ba57-73363d99a779'),
(77, 77, 'en', '1600-reasons-to-love-this-datsun-speed-hunters', 'vehicle-reviews/1600-reasons-to-love-this-datsun-speed-hunters', 1, '2016-03-03 11:39:15', '2016-03-03 13:55:36', 'dc9a1096-e641-43f8-b810-6523c02ea76d'),
(78, 78, 'en', '', NULL, 1, '2016-03-03 11:39:15', '2016-03-03 13:55:36', 'ba0e6eed-bfbe-4bde-87bb-2046aa18edac'),
(80, 80, 'en', '', NULL, 1, '2016-03-03 11:39:15', '2016-03-03 13:55:36', '7c54eeaf-2e83-4b92-806d-61c8fab0f086'),
(81, 81, 'en', '', NULL, 1, '2016-03-03 11:39:15', '2016-03-03 13:55:36', '9533c95e-51e6-491b-9d4d-5fc9669af243'),
(82, 82, 'en', '', NULL, 1, '2016-03-03 11:43:43', '2016-03-03 13:55:36', 'b331bb83-8c18-482d-aa41-277acd92f54c'),
(83, 83, 'en', 'datsun-1600-wagon-8185-800x533', NULL, 1, '2016-03-03 11:50:06', '2016-03-03 11:50:06', '23fbb859-1eac-483a-9f94-4d349fe316d4'),
(84, 84, 'en', 'datsun-1600-wagon-8197-800x533', NULL, 1, '2016-03-03 11:50:07', '2016-03-03 11:50:07', '78e8d430-6af5-4116-a057-c620e243e4a3'),
(85, 85, 'en', 'datsun-1600-wagon-8232-800x533', NULL, 1, '2016-03-03 11:50:07', '2016-03-03 11:50:07', 'e1a9f053-cc2a-4abe-ade8-c35c6ea19e06'),
(86, 86, 'en', 'datsun-1600-wagon-8269-800x533', NULL, 1, '2016-03-03 11:50:07', '2016-03-03 11:50:07', 'c0f21b38-8b38-446c-8a17-7a4372e87490'),
(87, 87, 'en', 'datsun-1600-wagon-8279-800x533', NULL, 1, '2016-03-03 11:50:08', '2016-03-03 11:50:08', 'ea500c24-6efa-48aa-bd2e-aa9d41f05366'),
(88, 88, 'en', 'datsun-1600-wagon-8289-800x533', NULL, 1, '2016-03-03 11:50:08', '2016-03-03 11:50:08', 'bd2fa9bd-f586-4cf0-8527-1f25092ff9e5'),
(89, 89, 'en', 'datsun-1600-wagon-8293-800x533', NULL, 1, '2016-03-03 11:50:08', '2016-03-03 11:50:08', '8db5789f-e51b-44df-a85d-2aa3e0bad433'),
(90, 90, 'en', 'datsun-1600-wagon-8305-800x533', NULL, 1, '2016-03-03 11:50:09', '2016-03-03 11:50:09', '3fbf0080-22ec-42e7-9511-e46d2af3604a'),
(91, 91, 'en', 'datsun-1600-wagon-8308-800x533', NULL, 1, '2016-03-03 11:50:09', '2016-03-03 11:50:09', '471d5c0b-4d72-42fd-b361-538542f416a1'),
(92, 92, 'en', 'datsun-1600-wagon-8460-800x533', NULL, 1, '2016-03-03 11:50:09', '2016-03-03 11:50:09', '6986d1b3-fdf9-4cbe-9922-75affddb8c6a'),
(93, 93, 'en', '', NULL, 1, '2016-03-03 11:51:56', '2016-03-03 13:55:36', '0dbd482f-7688-4354-8539-4aa573a711ce');

-- --------------------------------------------------------

--
-- Table structure for table `craft_emailmessages`
--

CREATE TABLE IF NOT EXISTS `craft_emailmessages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` char(150) COLLATE utf8_unicode_ci NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_emailmessages_key_locale_unq_idx` (`key`,`locale`),
  KEY `craft_emailmessages_locale_fk` (`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `craft_entries`
--

CREATE TABLE IF NOT EXISTS `craft_entries` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `typeId` int(11) DEFAULT NULL,
  `authorId` int(11) DEFAULT NULL,
  `postDate` datetime DEFAULT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_entries_sectionId_idx` (`sectionId`),
  KEY `craft_entries_typeId_idx` (`typeId`),
  KEY `craft_entries_postDate_idx` (`postDate`),
  KEY `craft_entries_expiryDate_idx` (`expiryDate`),
  KEY `craft_entries_authorId_fk` (`authorId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_entries`
--

INSERT INTO `craft_entries` (`id`, `sectionId`, `typeId`, `authorId`, `postDate`, `expiryDate`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(2, 1, NULL, NULL, '2016-03-01 09:26:01', NULL, '2016-03-01 09:26:01', '2016-03-02 09:57:07', '42621c06-8a84-4b18-8dd0-8cd5a90e4c0a'),
(3, 2, 2, 1, '2016-03-01 09:26:00', NULL, '2016-03-01 09:26:01', '2016-03-01 11:05:14', 'a8e7b4e7-2921-48c3-8dae-d156903df05f'),
(4, 3, 3, 1, '2016-03-01 09:32:00', NULL, '2016-03-01 09:33:00', '2016-03-02 13:30:46', '8a647676-0447-43e0-978f-928b8b9f86a1'),
(8, 3, 3, 1, '2016-03-01 10:05:00', NULL, '2016-03-01 10:05:39', '2016-03-02 12:53:36', '8be24826-1ae2-45e6-b90d-848c59f58f1b'),
(45, 2, 2, 1, '2016-03-01 11:43:00', NULL, '2016-03-01 11:43:47', '2016-03-01 11:46:39', '5bf4e066-7bc3-48ad-bf75-8885b84a5570'),
(54, 4, 4, 1, '2016-03-01 12:14:00', NULL, '2016-03-01 12:14:52', '2016-03-03 07:31:27', '9575e870-d806-4458-bf66-75f320d54ac5'),
(71, 4, 4, 1, '2016-03-03 07:03:00', NULL, '2016-03-03 07:03:26', '2016-03-03 07:31:29', '52d6f57d-a614-4f8c-9b7d-f66b7b0fc699'),
(77, 5, 5, 1, '2016-03-03 11:39:00', NULL, '2016-03-03 11:39:15', '2016-03-03 13:55:36', '133a1808-6e11-4086-8fb2-df3aaaeffd25');

-- --------------------------------------------------------

--
-- Table structure for table `craft_entrydrafts`
--

CREATE TABLE IF NOT EXISTS `craft_entrydrafts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entryId` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `creatorId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notes` tinytext COLLATE utf8_unicode_ci,
  `data` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_entrydrafts_entryId_locale_idx` (`entryId`,`locale`),
  KEY `craft_entrydrafts_sectionId_fk` (`sectionId`),
  KEY `craft_entrydrafts_creatorId_fk` (`creatorId`),
  KEY `craft_entrydrafts_locale_fk` (`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `craft_entrytypes`
--

CREATE TABLE IF NOT EXISTS `craft_entrytypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sectionId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hasTitleField` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `titleLabel` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'Title',
  `titleFormat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_entrytypes_name_sectionId_unq_idx` (`name`,`sectionId`),
  UNIQUE KEY `craft_entrytypes_handle_sectionId_unq_idx` (`handle`,`sectionId`),
  KEY `craft_entrytypes_sectionId_fk` (`sectionId`),
  KEY `craft_entrytypes_fieldLayoutId_fk` (`fieldLayoutId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `craft_entrytypes`
--

INSERT INTO `craft_entrytypes` (`id`, `sectionId`, `fieldLayoutId`, `name`, `handle`, `hasTitleField`, `titleLabel`, `titleFormat`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 13, 'Homepage', 'homepage', 1, 'Title', NULL, NULL, '2016-03-01 09:26:01', '2016-03-01 11:02:18', 'e7ad133c-34dd-4441-95e9-dc8c8fafe649'),
(2, 2, 12, 'News', 'news', 1, 'Title', NULL, NULL, '2016-03-01 09:26:01', '2016-03-01 11:02:00', '5fff7d15-5b02-4160-ac6a-5a0636b3b093'),
(3, 3, 27, 'Vehicles', 'vehicles', 1, 'Title', NULL, NULL, '2016-03-01 09:31:20', '2016-03-02 13:30:04', 'df453d72-e06d-490e-95c1-114c655eb786'),
(4, 4, 29, 'Music', 'music', 1, 'Title', NULL, NULL, '2016-03-01 11:48:20', '2016-03-03 06:57:52', 'c8446e64-b089-4425-8e2d-53eac4ad9818'),
(5, 5, 41, 'Vehicle Reviews', 'vehicleReviews', 1, 'Title', NULL, NULL, '2016-03-03 11:35:53', '2016-03-03 11:36:35', '94050c8d-e332-45f9-b985-b51ecdb8a828');

-- --------------------------------------------------------

--
-- Table structure for table `craft_entryversions`
--

CREATE TABLE IF NOT EXISTS `craft_entryversions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entryId` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `creatorId` int(11) DEFAULT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `num` smallint(6) unsigned NOT NULL,
  `notes` tinytext COLLATE utf8_unicode_ci,
  `data` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_entryversions_entryId_locale_idx` (`entryId`,`locale`),
  KEY `craft_entryversions_sectionId_fk` (`sectionId`),
  KEY `craft_entryversions_creatorId_fk` (`creatorId`),
  KEY `craft_entryversions_locale_fk` (`locale`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=45 ;

--
-- Dumping data for table `craft_entryversions`
--

INSERT INTO `craft_entryversions` (`id`, `entryId`, `sectionId`, `creatorId`, `locale`, `num`, `notes`, `data`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 2, 1, 1, 'en', 1, NULL, '{"typeId":"1","authorId":null,"title":"Homepage","slug":"homepage","postDate":1456824361,"expiryDate":null,"enabled":1,"parentId":null,"fields":[]}', '2016-03-01 09:26:01', '2016-03-01 09:26:01', '1cc3eebf-3b75-47a2-a2c5-154ae5b06e8c'),
(2, 2, 1, 1, 'en', 2, NULL, '{"typeId":null,"authorId":null,"title":"Welcome to Dev.craftblog.com!","slug":"homepage","postDate":1456824361,"expiryDate":null,"enabled":"1","parentId":null,"fields":{"1":"<p>It\\u2019s true, this site doesn\\u2019t have a whole lot of content yet, but don\\u2019t worry. Our web developers have just installed the CMS, and they\\u2019re setting things up for the content editors this very moment. Soon Dev.craftblog.com will be an oasis of fresh perspectives, sharp analyses, and astute opinions that will keep you coming back again and again.<\\/p>"}}', '2016-03-01 09:26:01', '2016-03-01 09:26:01', '14e6a16f-8171-40c0-be2e-8b6658542aed'),
(3, 3, 2, 1, 'en', 1, NULL, '{"typeId":"2","authorId":"1","title":"We just installed Craft!","slug":"we-just-installed-craft","postDate":1456824361,"expiryDate":null,"enabled":1,"parentId":null,"fields":[]}', '2016-03-01 09:26:01', '2016-03-01 09:26:01', '4f8dc50b-79f1-4d08-afdd-63f2216e304c'),
(4, 4, 3, 1, 'en', 1, NULL, '{"typeId":"3","authorId":"1","title":"Bugatti Chirion","slug":"bugatti-chirion","postDate":1456824779,"expiryDate":null,"enabled":1,"parentId":null,"fields":[]}', '2016-03-01 09:33:00', '2016-03-01 09:33:00', '724c5a99-ac78-47e8-8910-34a4de99de58'),
(5, 4, 3, 1, 'en', 2, '', '{"typeId":"3","authorId":"1","title":"Bugatti Chirion","slug":"bugatti-chirion","postDate":1456824720,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>&lt;img src=\\"\\/assets\\/images\\/01_CHIRON_grand-palais_34-front_WEB.0.jpg\\"&gt;<\\/p>\\r\\n\\r\\n<p>There are many absurd facts about the Bugatti Chiron that was just introduced today ahead of the Geneva Motor Show. Its top speed is electronically limited &mdash;&nbsp;<em>limited!<\\/em>&nbsp;&mdash; to 261 miles per hour. It can reach 125 miles per hour in 6.5 seconds, which may very well be faster than the time it takes your personal vehicle to reach half that. And the base price is an astounding \\u20ac2.4 million ($2.6 million), which you can presumably run up with options and customization. Nothing about this rare machine (just 500 will be made) is for the faint of heart.<br>We''ve&nbsp;<a href=\\"http:\\/\\/www.theverge.com\\/2016\\/2\\/29\\/11132084\\/bugatti-chiron-announced-geneva-motor-show-2016\\">already given you all the details about this ridiculous machine<\\/a>&nbsp;&mdash; but Bugatti, in its infinite generosity, has provided a huge and extremely awesome set of photos to go along with it. We thought you might enjoy some of them.<\\/p><p>- Original article at &lt;a href=\\"<a href=\\"http:\\/\\/www.theverge.com\\/2016\\/2\\/29\\/11133374\\/bugatti-chiron-pictures\\">http:\\/\\/www.theverge.com\\/2016\\/2...<\\/a>\\"&gt;The Verge&lt;\\/a&gt;<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n<p><br><\\/p>","2":["5","6","7"]}}', '2016-03-01 09:51:58', '2016-03-01 09:51:58', '154d2828-40d4-44b5-ad3a-3e2634073aa3'),
(6, 4, 3, 1, 'en', 3, '', '{"typeId":"3","authorId":"1","title":"Bugatti Chirion","slug":"bugatti-chirion","postDate":1456824720,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<img src=\\"\\/assets\\/images\\/01_CHIRON_grand-palais_34-front_WEB.0.jpg\\">\\r\\n<p>There are many absurd facts about the Bugatti Chiron that was just introduced today ahead of the Geneva Motor Show. Its top speed is electronically limited &mdash;&nbsp;<em>limited!<\\/em>&nbsp;&mdash; to 261 miles per hour. It can reach 125 miles per hour in 6.5 seconds, which may very well be faster than the time it takes your personal vehicle to reach half that. And the base price is an astounding \\u20ac2.4 million ($2.6 million), which you can presumably run up with options and customization. Nothing about this rare machine (just 500 will be made) is for the faint of heart.<br>We''ve&nbsp;\\r\\n\\r\\n<a href=\\"http:\\/\\/www.theverge.com\\/2016\\/2\\/29\\/11132084\\/bugatti-chiron-announced-geneva-motor-show-2016\\">already given you all the details about this ridiculous machine<\\/a>&nbsp;&mdash; but Bugatti, in its infinite generosity, has provided a huge and extremely awesome set of photos to go along with it. We thought you might enjoy some of them.<\\/p>\\r\\n<p>- Original article at &lt; <a href=\\"http:\\/\\/www.theverge.com\\/2016\\/2\\/29\\/11133374\\/bugatti-chiron-pictures\\">The Verge&lt<\\/a><\\/p>\\r\\n<p><br><\\/p>","2":["5","6","7"]}}', '2016-03-01 09:54:26', '2016-03-01 09:54:26', 'b2b11f05-f16c-4513-9b8e-a0dea1362647'),
(7, 4, 3, 1, 'en', 4, '', '{"typeId":"3","authorId":"1","title":"Bugatti Chirion","slug":"bugatti-chirion","postDate":1456824720,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p><img src=\\"\\/assets\\/images\\/01_CHIRON_grand-palais_34-front_WEB.0.jpg\\" style=\\"width:auto\\"><\\/p>\\r\\n<p>There are many absurd facts about the Bugatti Chiron that was just introduced today ahead of the Geneva Motor Show. Its top speed is electronically limited &mdash;&nbsp;<em>limited!<\\/em>&nbsp;&mdash; to 261 miles per hour. It can reach 125 miles per hour in 6.5 seconds, which may very well be faster than the time it takes your personal vehicle to reach half that. And the base price is an astounding \\u20ac2.4 million ($2.6 million), which you can presumably run up with options and customization. Nothing about this rare machine (just 500 will be made) is for the faint of heart.<br>We''ve&nbsp;\\r\\n<a href=\\"http:\\/\\/www.theverge.com\\/2016\\/2\\/29\\/11132084\\/bugatti-chiron-announced-geneva-motor-show-2016\\">already given you all the details about this ridiculous machine<\\/a>&nbsp;&mdash; but Bugatti, in its infinite generosity, has provided a huge and extremely awesome set of photos to go along with it. We thought you might enjoy some of them.<\\/p>\\r\\n<p>- Original article at &lt; <a href=\\"http:\\/\\/www.theverge.com\\/2016\\/2\\/29\\/11133374\\/bugatti-chiron-pictures\\">The Verge&lt;<\\/a><\\/p>\\r\\n<p><br><\\/p>","2":["5","6","7"]}}', '2016-03-01 09:55:03', '2016-03-01 09:55:03', '38a7161a-d3a2-42fa-a268-375476f2fcbe'),
(8, 4, 3, 1, 'en', 5, '', '{"typeId":"3","authorId":"1","title":"Bugatti Chirion","slug":"bugatti-chirion","postDate":1456824720,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p><img src=\\"\\/assets\\/images\\/01_CHIRON_grand-palais_34-front_WEB.0.jpg\\" style=\\"width:auto\\"><\\/p>\\r\\n\\r\\n<p>There are many absurd facts about the Bugatti Chiron that was just introduced today ahead of the Geneva Motor Show. Its top speed is electronically limited &mdash;&nbsp;<em>limited!<\\/em>&nbsp;&mdash; to 261 miles per hour. It can reach 125 miles per hour in 6.5 seconds, which may very well be faster than the time it takes your personal vehicle to reach half that. And the base price is an astounding \\u20ac2.4 million ($2.6 million), which you can presumably run up with options and customization. Nothing about this rare machine (just 500 will be made) is for the faint of heart.<br>We''ve&nbsp;\\r\\n<a href=\\"http:\\/\\/www.theverge.com\\/2016\\/2\\/29\\/11132084\\/bugatti-chiron-announced-geneva-motor-show-2016\\">already given you all the details about this ridiculous machine<\\/a>&nbsp;&mdash; but Bugatti, in its infinite generosity, has provided a huge and extremely awesome set of photos to go along with it. We thought you might enjoy some of them.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n<p>- Original article at &lt; <a href=\\"http:\\/\\/www.theverge.com\\/2016\\/2\\/29\\/11133374\\/bugatti-chiron-pictures\\">The Verge&lt;<\\/a><\\/p>\\r\\n\\r\\n\\r\\n\\r\\n<p><br><\\/p>","2":["5","6","7"]}}', '2016-03-01 09:55:08', '2016-03-01 09:55:08', 'ef91f6b6-44bf-4b8b-8a08-554e1db040cc'),
(9, 4, 3, 1, 'en', 6, '', '{"typeId":"3","authorId":"1","title":"Bugatti Chirion","slug":"bugatti-chirion","postDate":1456824720,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p><img src=\\"\\/assets\\/images\\/01_CHIRON_grand-palais_34-front_WEB.0.jpg\\" style=\\"width:400px\\"><\\/p>\\r\\n<p>There are many absurd facts about the Bugatti Chiron that was just introduced today ahead of the Geneva Motor Show. Its top speed is electronically limited &mdash;&nbsp;<em>limited!<\\/em>&nbsp;&mdash; to 261 miles per hour. It can reach 125 miles per hour in 6.5 seconds, which may very well be faster than the time it takes your personal vehicle to reach half that. And the base price is an astounding \\u20ac2.4 million ($2.6 million), which you can presumably run up with options and customization. Nothing about this rare machine (just 500 will be made) is for the faint of heart.<br>We''ve&nbsp;\\r\\n<a href=\\"http:\\/\\/www.theverge.com\\/2016\\/2\\/29\\/11132084\\/bugatti-chiron-announced-geneva-motor-show-2016\\">already given you all the details about this ridiculous machine<\\/a>&nbsp;&mdash; but Bugatti, in its infinite generosity, has provided a huge and extremely awesome set of photos to go along with it. We thought you might enjoy some of them.<\\/p>\\r\\n<p>- Original article at &lt; <a href=\\"http:\\/\\/www.theverge.com\\/2016\\/2\\/29\\/11133374\\/bugatti-chiron-pictures\\">The Verge&lt;<\\/a><\\/p>\\r\\n<p><br><\\/p>","2":["5","6","7"]}}', '2016-03-01 09:55:51', '2016-03-01 09:55:51', 'a5ad276d-bfe7-4d02-b52e-78cb5a98eeee'),
(10, 4, 3, 1, 'en', 7, '', '{"typeId":"3","authorId":"1","title":"Bugatti Chirion","slug":"bugatti-chirion","postDate":1456824720,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p><img src=\\"\\/assets\\/images\\/01_CHIRON_grand-palais_34-front_WEB.0.jpg\\" style=\\"width:400px\\"><\\/p>\\r\\n\\r\\n<p>There are many absurd facts about the Bugatti Chiron that was just introduced today ahead of the Geneva Motor Show. Its top speed is electronically limited &mdash;&nbsp;<em>limited!<\\/em>&nbsp;&mdash; to 261 miles per hour. It can reach 125 miles per hour in 6.5 seconds, which may very well be faster than the time it takes your personal vehicle to reach half that. And the base price is an astounding \\u20ac2.4 million ($2.6 million), which you can presumably run up with options and customization. Nothing about this rare machine (just 500 will be made) is for the faint of heart.<br>We''ve&nbsp;\\r\\n<a href=\\"http:\\/\\/www.theverge.com\\/2016\\/2\\/29\\/11132084\\/bugatti-chiron-announced-geneva-motor-show-2016\\">already given you all the details about this ridiculous machine<\\/a>&nbsp;&mdash; but Bugatti, in its infinite generosity, has provided a huge and extremely awesome set of photos to go along with it. We thought you might enjoy some of them.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n<p>- Original article at <a href=\\"http:\\/\\/www.theverge.com\\/2016\\/2\\/29\\/11133374\\/bugatti-chiron-pictures\\">The Verge<\\/a><\\/p>\\r\\n\\r\\n\\r\\n\\r\\n<p><br><\\/p>","2":["5","6","7"]}}', '2016-03-01 09:56:09', '2016-03-01 09:56:09', '5bda08cb-6c14-4fc4-aee7-0aa138e4b12f'),
(11, 4, 3, 1, 'en', 8, '', '{"typeId":"3","authorId":"1","title":"Bugatti Chirion","slug":"bugatti-chirion","postDate":1456824720,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p><img src=\\"\\/assets\\/images\\/01_CHIRON_grand-palais_34-front_WEB.0.jpg\\" style=\\"width:400px\\"><\\/p>\\r\\n\\r\\n<p>There are many absurd facts about the Bugatti Chiron that was just introduced today ahead of the Geneva Motor Show. Its top speed is electronically limited &mdash;&nbsp;<em>limited!<\\/em>&nbsp;&mdash; to 261 miles per hour. It can reach 125 miles per hour in 6.5 seconds, which may very well be faster than the time it takes your personal vehicle to reach half that. And the base price is an astounding \\u20ac2.4 million ($2.6 million), which you can presumably run up with options and customization. Nothing about this rare machine (just 500 will be made) is for the faint of heart.&nbsp;We''ve&nbsp;\\r\\n<a href=\\"http:\\/\\/www.theverge.com\\/2016\\/2\\/29\\/11132084\\/bugatti-chiron-announced-geneva-motor-show-2016\\">already given you all the details about this ridiculous machine<\\/a>&nbsp;&mdash; but Bugatti, in its infinite generosity, has provided a huge and extremely awesome set of photos to go along with it. We thought you might enjoy some of them.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>- Original article at <a href=\\"http:\\/\\/www.theverge.com\\/2016\\/2\\/29\\/11133374\\/bugatti-chiron-pictures\\">The Verge<\\/a><\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p><br><\\/p>","2":["5","6","7"]}}', '2016-03-01 09:56:29', '2016-03-01 09:56:29', '1c213df3-052f-4d62-9850-de0e556c1709'),
(12, 4, 3, 1, 'en', 9, '', '{"typeId":"3","authorId":"1","title":"Bugatti Chirion","slug":"bugatti-chirion","postDate":1456824720,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p><img src=\\"\\/assets\\/images\\/March-01-2016\\/Bugatti_Chirion\\/01_CHIRON_grand-palais_34-front_WEB.0.jpg\\" style=\\"width:400px\\"><\\/p>\\r\\n<p>There are many absurd facts about the Bugatti Chiron that was just introduced today ahead of the Geneva Motor Show. Its top speed is electronically limited &mdash;&nbsp;<em>limited!<\\/em>&nbsp;&mdash; to 261 miles per hour. It can reach 125 miles per hour in 6.5 seconds, which may very well be faster than the time it takes your personal vehicle to reach half that. And the base price is an astounding \\u20ac2.4 million ($2.6 million), which you can presumably run up with options and customization. Nothing about this rare machine (just 500 will be made) is for the faint of heart.&nbsp;We''ve&nbsp;\\r\\n<a href=\\"http:\\/\\/www.theverge.com\\/2016\\/2\\/29\\/11132084\\/bugatti-chiron-announced-geneva-motor-show-2016\\">already given you all the details about this ridiculous machine<\\/a>&nbsp;&mdash; but Bugatti, in its infinite generosity, has provided a huge and extremely awesome set of photos to go along with it. We thought you might enjoy some of them.<\\/p>\\r\\n\\r\\n<p>- Original article at <a href=\\"http:\\/\\/www.theverge.com\\/2016\\/2\\/29\\/11133374\\/bugatti-chiron-pictures\\">The Verge<\\/a><\\/p>\\r\\n\\r\\n<p><br><\\/p>","2":["5","6","7"]}}', '2016-03-01 09:59:27', '2016-03-01 09:59:27', '888a4e7e-0494-456c-a935-6579eb1fa6c6'),
(13, 8, 3, 1, 'en', 1, '', '{"typeId":null,"authorId":"1","title":"Golf GTE","slug":"golf-gte","postDate":1456826739,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p><img src=\\"\\/assets\\/images\\/March-01-2016\\/Golf_GTE\\/2016-Volkswagen-GTE-by-Paddy-McGrath-1-1200x800.jpg\\" style=\\"width: 400px\\"><\\/p>\\r\\n<iframe width=\\"400\\" height=\\"auto\\" src=\\"https:\\/\\/www.youtube.com\\/embed\\/2UyIM55UoIY\\" frameborder=\\"0\\" allowfullscreen=\\"\\"><\\/iframe>\\r\\n<p> Take a look at this. I start the video in electric mode and make my way around the hairpin in complete silence, which is a surreal feeling at first. Coming out of the hairpin, I switch to \\u2018GTE\\u2019 and to manual shifting before accelerating. For a car that weighs nearly 1,600kg (3,527lb) it completely belies its on-paper engine size and performance. <\\/p>\\r\\n<p><img src=\\"\\/assets\\/images\\/March-01-2016\\/Golf_GTE\\/2016-Volkswagen-GTE-by-Paddy-McGrath-19-800x533.jpg\\" style=\\"width: 400px\\"><\\/p>\\r\\n<p> I suppose the most ringing endorsement I can give the GTE is that, as I write this, it\\u2019s parked outside my house for another few days before I drop it back to Volkswagen. I\\u2019m off to Mondello in two days for some Speedhunting activities and I have the choice of taking it or Project GTI. Honestly, I\\u2019m stumped as to which car to choose.\\r\\nI guess a hybrid future isn\\u2019t something to be afraid of after all. <\\/p>","2":""}}', '2016-03-01 10:05:40', '2016-03-01 10:05:40', '83c0871f-5791-4bdd-af40-4b7eb09976f4'),
(14, 8, 3, 1, 'en', 2, '', '{"typeId":"3","authorId":"1","title":"Golf GTE","slug":"golf-gte","postDate":1456826700,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p><img src=\\"\\/assets\\/images\\/March-01-2016\\/Golf_GTE\\/2016-Volkswagen-GTE-by-Paddy-McGrath-1-1200x800.jpg\\" style=\\"width: 400px\\"><\\/p>\\r\\n\\r\\n<iframe width=\\"400\\" height=\\"auto\\" src=\\"https:\\/\\/www.youtube.com\\/embed\\/2UyIM55UoIY\\" frameborder=\\"0\\" allowfullscreen=\\"\\"><\\/iframe>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p> Take a look at this. I start the video in electric mode and make my way around the hairpin in complete silence, which is a surreal feeling at first. Coming out of the hairpin, I switch to \\u2018GTE\\u2019 and to manual shifting before accelerating. For a car that weighs nearly 1,600kg (3,527lb) it completely belies its on-paper engine size and performance. <\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p><img src=\\"\\/assets\\/images\\/March-01-2016\\/Golf_GTE\\/2016-Volkswagen-GTE-by-Paddy-McGrath-19-800x533.jpg\\" style=\\"width: 400px\\"><\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p> I suppose the most ringing endorsement I can give the GTE is that, as I write this, it\\u2019s parked outside my house for another few days before I drop it back to Volkswagen. I\\u2019m off to Mondello in two days for some Speedhunting activities and I have the choice of taking it or Project GTI. Honestly, I\\u2019m stumped as to which car to choose.\\r\\n<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p><img src=\\"\\/assets\\/images\\/March-01-2016\\/Golf_GTE\\/2016-Volkswagen-GTE-by-Paddy-McGrath-34-800x533.jpg\\" style=\\"width: 400px\\"><\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>Where as the other GT-grade&nbsp;cars are of 2.0-litre capacity (regardless of petrol or diesel, both are also turbocharged) the GTE is fitted with a smaller 1.4-litre turbocharged motor. In isolation, this unit produces around 150hp, but it\\u2019s not alone under the bonnet.<br><\\/p>","2":["9","10","11"]}}', '2016-03-01 10:08:14', '2016-03-01 10:08:14', '04d95a7f-dedf-4ff8-bf80-a9b665a17153'),
(15, 8, 3, 1, 'en', 3, '', '{"typeId":"3","authorId":"1","title":"Golf GTE","slug":"golf-gte","postDate":1456826700,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p><img src=\\"\\/assets\\/images\\/March-01-2016\\/Golf_GTE\\/2016-Volkswagen-GTE-by-Paddy-McGrath-1-1200x800.jpg\\" style=\\"width: 400px\\"><\\/p>\\r\\n\\r\\n<iframe width=\\"400\\" height=\\"auto\\" src=\\"https:\\/\\/www.youtube.com\\/embed\\/2UyIM55UoIY\\" frameborder=\\"0\\" allowfullscreen=\\"\\"><\\/iframe>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p> Take a look at this. I start the video in electric mode and make my way around the hairpin in complete silence, which is a surreal feeling at first. Coming out of the hairpin, I switch to \\u2018GTE\\u2019 and to manual shifting before accelerating. For a car that weighs nearly 1,600kg (3,527lb) it completely belies its on-paper engine size and performance. <\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p><img src=\\"\\/assets\\/images\\/March-01-2016\\/Golf_GTE\\/2016-Volkswagen-GTE-by-Paddy-McGrath-19-800x533.jpg\\" style=\\"width: 400px\\"><\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p> I suppose the most ringing endorsement I can give the GTE is that, as I write this, it\\u2019s parked outside my house for another few days before I drop it back to Volkswagen. I\\u2019m off to Mondello in two days for some Speedhunting activities and I have the choice of taking it or Project GTI. Honestly, I\\u2019m stumped as to which car to choose.\\r\\n<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p><img src=\\"\\/assets\\/images\\/March-01-2016\\/Golf_GTE\\/2016-Volkswagen-GTE-by-Paddy-McGrath-34-800x533.jpg\\" style=\\"width: 400px\\"><\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>Where as the other GT-grade&nbsp;cars are of 2.0-litre capacity (regardless of petrol or diesel, both are also turbocharged) the GTE is fitted with a smaller 1.4-litre turbocharged motor. In isolation, this unit produces around 150hp, but it\\u2019s not alone under the bonnet.<br><\\/p>","3":["13"],"2":["9","10","11"]}}', '2016-03-01 10:19:23', '2016-03-01 10:19:23', '32d80ba2-7a3c-4077-b8ff-8741ec828c16'),
(16, 4, 3, 1, 'en', 10, '', '{"typeId":"3","authorId":"1","title":"Bugatti Chirion","slug":"bugatti-chirion","postDate":1456824720,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p><img src=\\"\\/assets\\/images\\/March-01-2016\\/Bugatti_Chirion\\/01_CHIRON_grand-palais_34-front_WEB.0.jpg\\" style=\\"width:400px\\"><\\/p>\\r\\n\\r\\n<p>There are many absurd facts about the Bugatti Chiron that was just introduced today ahead of the Geneva Motor Show. Its top speed is electronically limited &mdash;&nbsp;<em>limited!<\\/em>&nbsp;&mdash; to 261 miles per hour. It can reach 125 miles per hour in 6.5 seconds, which may very well be faster than the time it takes your personal vehicle to reach half that. And the base price is an astounding \\u20ac2.4 million ($2.6 million), which you can presumably run up with options and customization. Nothing about this rare machine (just 500 will be made) is for the faint of heart.&nbsp;We''ve&nbsp;\\r\\n<a href=\\"http:\\/\\/www.theverge.com\\/2016\\/2\\/29\\/11132084\\/bugatti-chiron-announced-geneva-motor-show-2016\\">already given you all the details about this ridiculous machine<\\/a>&nbsp;&mdash; but Bugatti, in its infinite generosity, has provided a huge and extremely awesome set of photos to go along with it. We thought you might enjoy some of them.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n<p>- Original article at <a href=\\"http:\\/\\/www.theverge.com\\/2016\\/2\\/29\\/11133374\\/bugatti-chiron-pictures\\">The Verge<\\/a><\\/p>\\r\\n\\r\\n\\r\\n\\r\\n<p><br><\\/p>","3":["17"],"2":["5","6","7"]}}', '2016-03-01 10:20:03', '2016-03-01 10:20:03', '64881da5-f705-461d-a2a9-db1b4a020d39'),
(17, 8, 3, 1, 'en', 4, '', '{"typeId":"3","authorId":"1","title":"Golf GTE","slug":"golf-gte","postDate":1456826700,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p><img src=\\"\\/assets\\/images\\/March-01-2016\\/Golf_GTE\\/2016-Volkswagen-GTE-by-Paddy-McGrath-1-1200x800.jpg\\" style=\\"width: 400px\\"><\\/p>\\r\\n\\r\\n<iframe width=\\"400\\" height=\\"auto\\" src=\\"https:\\/\\/www.youtube.com\\/embed\\/2UyIM55UoIY\\" frameborder=\\"0\\" allowfullscreen=\\"\\"><\\/iframe>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p> Take a look at this. I start the video in electric mode and make my way around the hairpin in complete silence, which is a surreal feeling at first. Coming out of the hairpin, I switch to \\u2018GTE\\u2019 and to manual shifting before accelerating. For a car that weighs nearly 1,600kg (3,527lb) it completely belies its on-paper engine size and performance. <\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p><img src=\\"\\/assets\\/images\\/March-01-2016\\/Golf_GTE\\/2016-Volkswagen-GTE-by-Paddy-McGrath-19-800x533.jpg\\" style=\\"width: 400px\\"><\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p> I suppose the most ringing endorsement I can give the GTE is that, as I write this, it\\u2019s parked outside my house for another few days before I drop it back to Volkswagen. I\\u2019m off to Mondello in two days for some Speedhunting activities and I have the choice of taking it or Project GTI. Honestly, I\\u2019m stumped as to which car to choose.\\r\\n<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p><img src=\\"\\/assets\\/images\\/March-01-2016\\/Golf_GTE\\/2016-Volkswagen-GTE-by-Paddy-McGrath-34-800x533.jpg\\" style=\\"width: 400px\\"><\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>Where as the other GT-grade&nbsp;cars are of 2.0-litre capacity (regardless of petrol or diesel, both are also turbocharged) the GTE is fitted with a smaller 1.4-litre turbocharged motor. In isolation, this unit produces around 150hp, but it\\u2019s not alone under the bonnet.<br><\\/p>","3":["13"],"2":["9","10","11"]}}', '2016-03-01 10:45:22', '2016-03-01 10:45:22', 'dd6f3cf9-8e45-4d97-8c61-b6a15b9faf38'),
(18, 3, 2, 1, 'en', 2, '', '{"typeId":"2","authorId":"1","title":"We just installed Craft!","slug":"we-just-installed-craft","postDate":1456824360,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>Craft is the CMS that\\u2019s powering Dev.craftblog.com. It\\u2019s beautiful, powerful, flexible, and easy-to-use, and it\\u2019s made by Pixel & Tonic. We can\\u2019t wait to dive in and see what it\\u2019s capable of!<\\/p>\\r\\n\\r\\n<hr class=\\"redactor_pagebreak\\" style=\\"display:none\\" unselectable=\\"on\\" contenteditable=\\"false\\">\\r\\n\\r\\n<p>This is even more captivating content, which you couldn\\u2019t see on the News index page because it was entered after a Page Break, and the News index template only likes to show the content on the first page.<\\/p>\\r\\n\\r\\n<p>Craft: a nice alternative to Word, if you\\u2019re making a website.<\\/p>","3":["38"],"2":""}}', '2016-03-01 11:05:14', '2016-03-01 11:05:14', '09b8c1c8-15ea-48cf-a84b-6ebd5141d1c8'),
(19, 2, 1, 1, 'en', 3, '', '{"typeId":null,"authorId":null,"title":"Welcome to Dev.craftblog.com!","slug":"homepage","postDate":1456824361,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>It\\u2019s true, this site doesn\\u2019t have a whole lot of content yet, but don\\u2019t worry. Our web developers have just installed the CMS, and they\\u2019re setting things up for the content editors this very moment. Soon Dev.craftblog.com will be an oasis of fresh perspectives, sharp analyses, and astute opinions that will keep you coming back again and again.<\\/p>","3":["37"]}}', '2016-03-01 11:05:29', '2016-03-01 11:05:29', 'bc4bf6bb-51a5-4629-af38-93d9bf575c93'),
(20, 45, 2, 1, 'en', 1, '', '{"typeId":null,"authorId":"1","title":"Screening of who killed the electric car.","slug":"screening-of-who-killed-the-electric-car","postDate":1456832627,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>A screening of who killed the electric car will take place on the 06\\/06\\/16 at the Durbanville quarry.&nbsp;<\\/p><p><i><b>Who Killed the Electric Car?<\\/b><\\/i>&nbsp;is a&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/2006_in_film\\">2006<\\/a>&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Documentary_film\\">documentary film<\\/a>&nbsp;that explores the creation, limited commercialization, and subsequent destruction of the&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Battery_electric_vehicle\\">battery electric vehicle<\\/a>&nbsp;in the&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/United_States\\">United States<\\/a>, specifically the&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/General_Motors_EV1\\">General Motors EV1<\\/a>&nbsp;of the mid-1990s. The film explores the roles of&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Automobile_manufacturer\\">automobile manufacturers<\\/a>, the&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Oil_industry\\">oil industry<\\/a>, the&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/U.S._government\\">U.S. government<\\/a>, the&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Government_of_California\\">California government<\\/a>,<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Battery_(electricity)\\">batteries<\\/a>,&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Hydrogen_vehicle\\">hydrogen vehicles<\\/a>, and&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Consumer\\">consumers<\\/a>&nbsp;in limiting the development and adoption of this technology.<\\/p><p>After a premiere at the&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Sundance_Film_Festival\\">Sundance Film Festival<\\/a>, it was released theatrically by&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Sony_Pictures_Classics\\">Sony Pictures Classics<\\/a>&nbsp;in June, 2006 and then on&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/DVD\\">DVD<\\/a>&nbsp;by&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Sony_Pictures_Home_Entertainment\\">Sony Pictures Home Entertainment<\\/a>&nbsp;on November 14, 2006.<br>During an interview with&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/CBS_News\\">CBS News<\\/a>, director&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Chris_Paine\\">Chris Paine<\\/a>&nbsp;announced that he had started a new documentary about electric cars with a working title of&nbsp;<i>Who Saved the Electric Car?<\\/i>,<sup><a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Who_Killed_the_Electric_Car%3F#cite_note-2\\">[2]<\\/a><\\/sup>&nbsp;later renamed&nbsp;<i><a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Revenge_of_the_Electric_Car\\">Revenge of the Electric Car<\\/a><\\/i>, which had its world premiere at the 2011&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Tribeca_Film_Festival\\">Tribeca Film Festival<\\/a>&nbsp;on&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Earth_Day\\">Earth Day<\\/a>, April 22, 2011.<sup><a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Who_Killed_the_Electric_Car%3F#cite_note-3\\">[3]<\\/a><\\/sup><\\/p><p>-&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Who_Killed_the_Electric_Car%3F\\" target=\\"_blank\\">Wikipedia<\\/a><\\/p>","3":["43"],"2":["44"]}}', '2016-03-01 11:43:47', '2016-03-01 11:43:47', 'a8f2ef0c-a5ac-4e61-981e-b0ef0d9a4744'),
(21, 45, 2, 1, 'en', 2, '', '{"typeId":"2","authorId":"1","title":"Screening of who killed the electric car.","slug":"screening-of-who-killed-the-electric-car","postDate":1456832580,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>A screening of who killed the electric car will take place on the 06\\/06\\/16 at the Durbanville quarry.&nbsp;<\\/p>\\r\\n\\r\\n<p><em><strong>Who Killed the Electric Car?<\\/strong><\\/em>&nbsp;is a&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/2006_in_film\\">2006<\\/a>&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Documentary_film\\">documentary film<\\/a>&nbsp;that explores the creation, limited commercialization, and subsequent destruction of the&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Battery_electric_vehicle\\">battery electric vehicle<\\/a>&nbsp;in the&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/United_States\\">United States<\\/a>, specifically the&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/General_Motors_EV1\\">General Motors EV1<\\/a>&nbsp;of the mid-1990s. The film explores the roles of&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Automobile_manufacturer\\">automobile manufacturers<\\/a>, the&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Oil_industry\\">oil industry<\\/a>, the&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/U.S._government\\">U.S. government<\\/a>, the&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Government_of_California\\">California government<\\/a>,<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Battery_(electricity)\\">batteries<\\/a>,&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Hydrogen_vehicle\\">hydrogen vehicles<\\/a>, and&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Consumer\\">consumers<\\/a>&nbsp;in limiting the development and adoption of this technology.<\\/p>\\r\\n\\r\\n<p>After a premiere at the&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Sundance_Film_Festival\\">Sundance Film Festival<\\/a>, it was released theatrically by&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Sony_Pictures_Classics\\">Sony Pictures Classics<\\/a>&nbsp;in June, 2006 and then on&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/DVD\\">DVD<\\/a>&nbsp;by&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Sony_Pictures_Home_Entertainment\\">Sony Pictures Home Entertainment<\\/a>&nbsp;on November 14, 2006.<br>During an interview with&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/CBS_News\\">CBS News<\\/a>, director&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Chris_Paine\\">Chris Paine<\\/a>&nbsp;announced that he had started a new documentary about electric cars with a working title of&nbsp;<em>Who Saved the Electric Car?<\\/em>,<sup><a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Who_Killed_the_Electric_Car%3F#cite_note-2\\">[2]<\\/a><\\/sup>&nbsp;later renamed&nbsp;<em><a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Revenge_of_the_Electric_Car\\">Revenge of the Electric Car<\\/a><\\/em>, which had its world premiere at the 2011&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Tribeca_Film_Festival\\">Tribeca Film Festival<\\/a>&nbsp;on&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Earth_Day\\">Earth Day<\\/a>, April 22, 2011.<sup><a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Who_Killed_the_Electric_Car%3F#cite_note-3\\">[3]<\\/a><\\/sup><\\/p>\\r\\n\\r\\n<p>-&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Who_Killed_the_Electric_Car%3F\\" target=\\"_blank\\">Wikipedia<\\/a><\\/p>","3":["46"],"2":["44"]}}', '2016-03-01 11:46:39', '2016-03-01 11:46:39', '9e5f36a0-5e5f-4b53-bc0a-4dff98b1e1ad'),
(22, 54, 4, 1, 'en', 1, '', '{"typeId":null,"authorId":"1","title":"Rage Againts The Machine - 10 Years on? ","slug":"rage-againts-the-machine-10-years-on","postDate":1456834492,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p><b><a href=\\"https:\\/\\/www.youtube.com\\/watch?v=j8V_dpqwK5c\\">Evil Empire<\\/a>Rage Against the Machine<\\/b>&nbsp;(also known as&nbsp;<b>RATM<\\/b>&nbsp;or just&nbsp;<b>Rage<\\/b>) is an American political&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Rap_metal\\">rap metal<\\/a>&nbsp;band from&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Los_Angeles\\">Los Angeles<\\/a>,&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/California\\">California<\\/a>. Formed in 1991, the group consists of rapper and vocalist&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Zack_de_la_Rocha\\">Zack de la Rocha<\\/a>, bassist and backing vocalist&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Tim_Commerford\\">Tim Commerford<\\/a>, guitarist&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Tom_Morello\\">Tom Morello<\\/a>&nbsp;and drummer&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Brad_Wilk\\">Brad Wilk<\\/a>. They draw inspiration from early&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Heavy_metal_music\\">heavy metal<\\/a>&nbsp;instrumentation, as well as&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Hip_hop_music\\">hip hop<\\/a>&nbsp;acts such as&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Afrika_Bambaataa\\">Afrika Bambaataa<\\/a>,<sup><a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Rage_Against_the_Machine#cite_note-allmusic-1\\">[1]<\\/a><\\/sup>&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Public_Enemy_(band)\\">Public Enemy<\\/a>, the&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Beastie_Boys\\">Beastie Boys<\\/a>&nbsp;and Dutch crossover band&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Urban_Dance_Squad\\">Urban Dance Squad<\\/a>.<sup><a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Rage_Against_the_Machine#cite_note-metrolyrics-2\\">[2]<\\/a><\\/sup>&nbsp;Rage Against the Machine is well known for the members''&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Left-wing_politics\\">leftist<\\/a>&nbsp;and&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Revolutionary\\">revolutionary<\\/a>&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Political_views_and_activism_of_Rage_Against_the_Machine\\">political views<\\/a>, which are expressed in many of the band''s songs. As of 2010, they have sold over 16 million records worldwide.<sup><a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Rage_Against_the_Machine#cite_note-WordPress-3\\">[3]<\\/a><\\/sup><\\/p><p>In 1992, the band released its&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Rage_Against_the_Machine_(album)\\">self-titled debut album<\\/a>, which became a commercial and critical success, leading to a slot in the 1993&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Lollapalooza\\">Lollapalooza<\\/a>&nbsp;festival. In 2003, the album was ranked number 368 on&nbsp;<i><a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Rolling_Stone\\">Rolling Stone<\\/a><\\/i>&nbsp;magazine''s list of the&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/The_500_Greatest_Albums_of_All_Time\\">500 greatest albums of all time<\\/a>. The band did not release a follow-up record until 1996, with&nbsp;<i><a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Evil_Empire_(album)\\">Evil Empire<\\/a><\\/i>. The band''s third album,&nbsp;<i><a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/The_Battle_of_Los_Angeles_(album)\\">The Battle of Los Angeles<\\/a><\\/i>, followed in 1999, and in 2003, the album was ranked number 426 on the same list. During their initial nine-year run, they became one of the most popular and influential bands in music history, according to music journalist Colin Devenish.<sup><a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Rage_Against_the_Machine#cite_note-Devenish-4\\">[4]<\\/a><\\/sup>&nbsp;They were also ranked No.&nbsp;33 on&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/VH1\\">VH1<\\/a>''s&nbsp;<i>100 Greatest Artists of Hard Rock<\\/i>. The band had a large influence on the&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Nu_metal\\">nu metal<\\/a>&nbsp;genre which came to prominence during the second half of the 1990s.<br>In 2000, the band released the cover album,&nbsp;<i><a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Renegades_(Rage_Against_the_Machine_album)\\">Renegades<\\/a><\\/i>. The same year, growing tensions over the direction of the band prompted de la Rocha to quit, leading to the band''s breakup.<sup><a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Rage_Against_the_Machine#cite_note-5\\">[5]<\\/a><\\/sup>De la Rocha started a low-key solo career, while the rest of the band formed the rock&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Supergroup_(music)\\">supergroup<\\/a>&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Audioslave\\">Audioslave<\\/a>&nbsp;with&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Chris_Cornell\\">Chris Cornell<\\/a>, then-former&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Frontman\\">frontman<\\/a>&nbsp;of&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Soundgarden\\">Soundgarden<\\/a>; Audioslave recorded three albums before disbanding in 2007. The same year, Rage Against the Machine announced a reunion and performed together for the first time in seven years at the<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Coachella_Valley_Music_and_Arts_Festival\\">Coachella Valley Music and Arts Festival<\\/a>&nbsp;in April 2007. Up until 2011, the band continued to perform at more live venues and festivals around the world. As of 2016, the group has no plans to perform or release new music.<sup><a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Rage_Against_the_Machine#cite_note-newalbum-6\\">[6]<\\/a><\\/sup><\\/p><p>-&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Rage_Against_the_Machine\\" target=\\"_blank\\">wikipedia<\\/a><\\/p><p>After a wonderful wikipedia entry to wet our apatite''s, the question remains, is RATM still great after a ten year break?&nbsp;They were great before they decided to split ways, and their subsequent projects have all built followings in their respective rights. Fans will tell you that the bands thrash and metal style is still some of the best sounding <a href=\\"http:\\/\\/dev.craftblog.com\\/music\\/rock#category:48\\">Rock&nbsp;<\\/a>music you can sink your teeth into, at the end of the day it is all very objective, I still love the band, but I only started listening to them after they broke up, which is a real shame.&nbsp;<\\/p><p>I have searched the net looking for live shows and thoroughly enjoyed watching a young RATM&nbsp;jump around stage and throw a massive amount of energy at the crowd, and wished I were there, and I still really enjoy their music, right now I am listening to Evil Empire...&nbsp;<a href=\\"https:\\/\\/www.youtube.com\\/watch?v=j8V_dpqwK5c\\" target=\\"_blank\\">Evil Empire<\\/a>&nbsp;<\\/p><p>So I believe ten years on their music lives on and makes for some amazing listening<\\/p><p>-&nbsp;K<\\/p><p><b><\\/b><\\/p>","4":["48","49"],"3":["51"],"2":["52","53"]}}', '2016-03-01 12:14:52', '2016-03-01 12:14:52', 'bfe6183b-3c84-43e6-a49d-b7b5de387902'),
(23, 8, 3, 1, 'en', 5, '', '{"typeId":"3","authorId":"1","title":"Golf GTE","slug":"golf-gte","postDate":1456826700,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p><img src=\\"\\/assets\\/images\\/March-01-2016\\/Golf_GTE\\/2016-Volkswagen-GTE-by-Paddy-McGrath-1-1200x800.jpg\\" style=\\"width: 400px\\"><\\/p>\\r\\n\\r\\n<iframe width=\\"400\\" height=\\"auto\\" src=\\"https:\\/\\/www.youtube.com\\/embed\\/2UyIM55UoIY\\" frameborder=\\"0\\" allowfullscreen=\\"\\"><\\/iframe>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p> Take a look at this. I start the video in electric mode and make my way around the hairpin in complete silence, which is a surreal feeling at first. Coming out of the hairpin, I switch to \\u2018GTE\\u2019 and to manual shifting before accelerating. For a car that weighs nearly 1,600kg (3,527lb) it completely belies its on-paper engine size and performance. <\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p><img src=\\"\\/assets\\/images\\/March-01-2016\\/Golf_GTE\\/2016-Volkswagen-GTE-by-Paddy-McGrath-19-800x533.jpg\\" style=\\"width: 400px\\"><\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p> I suppose the most ringing endorsement I can give the GTE is that, as I write this, it\\u2019s parked outside my house for another few days before I drop it back to Volkswagen. I\\u2019m off to Mondello in two days for some Speedhunting activities and I have the choice of taking it or Project GTI. Honestly, I\\u2019m stumped as to which car to choose.\\r\\n<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p><img src=\\"\\/assets\\/images\\/March-01-2016\\/Golf_GTE\\/2016-Volkswagen-GTE-by-Paddy-McGrath-34-800x533.jpg\\" style=\\"width: 400px\\"><\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>Where as the other GT-grade&nbsp;cars are of 2.0-litre capacity (regardless of petrol or diesel, both are also turbocharged) the GTE is fitted with a smaller 1.4-litre turbocharged motor. In isolation, this unit produces around 150hp, but it\\u2019s not alone under the bonnet.<br><\\/p>","4":["59"],"3":["13"],"2":["9","10","11"]}}', '2016-03-02 09:53:59', '2016-03-02 09:53:59', '4bc1bb9d-9f75-4cf2-8685-16b02bdb885f'),
(24, 4, 3, 1, 'en', 11, '', '{"typeId":"3","authorId":"1","title":"Bugatti Chirion","slug":"bugatti-chirion","postDate":1456824720,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p><img src=\\"\\/assets\\/images\\/March-01-2016\\/Bugatti_Chirion\\/01_CHIRON_grand-palais_34-front_WEB.0.jpg\\" style=\\"width:400px\\"><\\/p>\\r\\n\\r\\n<p>There are many absurd facts about the Bugatti Chiron that was just introduced today ahead of the Geneva Motor Show. Its top speed is electronically limited &mdash;&nbsp;<em>limited!<\\/em>&nbsp;&mdash; to 261 miles per hour. It can reach 125 miles per hour in 6.5 seconds, which may very well be faster than the time it takes your personal vehicle to reach half that. And the base price is an astounding \\u20ac2.4 million ($2.6 million), which you can presumably run up with options and customization. Nothing about this rare machine (just 500 will be made) is for the faint of heart.&nbsp;We''ve&nbsp;\\r\\n<a href=\\"http:\\/\\/www.theverge.com\\/2016\\/2\\/29\\/11132084\\/bugatti-chiron-announced-geneva-motor-show-2016\\">already given you all the details about this ridiculous machine<\\/a>&nbsp;&mdash; but Bugatti, in its infinite generosity, has provided a huge and extremely awesome set of photos to go along with it. We thought you might enjoy some of them.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p>- Original article at <a href=\\"http:\\/\\/www.theverge.com\\/2016\\/2\\/29\\/11133374\\/bugatti-chiron-pictures\\">The Verge<\\/a><\\/p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<p><br><\\/p>","4":["59","56","57"],"3":["17"],"2":["5","6","7"]}}', '2016-03-02 09:54:10', '2016-03-02 09:54:10', '9a5a8b58-ea81-4f08-9712-d845f5828053'),
(25, 2, 1, 1, 'en', 4, '', '{"typeId":null,"authorId":null,"title":"Home","slug":"homepage","postDate":1456824361,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>It\\u2019s true, this site doesn\\u2019t have a whole lot of content yet, but don\\u2019t worry. Our web developers have just installed the CMS, and they\\u2019re setting things up for the content editors this very moment. Soon Dev.craftblog.com will be an oasis of fresh perspectives, sharp analyses, and astute opinions that will keep you coming back again and again.<\\/p>","3":["37"]}}', '2016-03-02 09:55:40', '2016-03-02 09:55:40', '14a26c66-381d-452d-886b-f8bcddab3f13'),
(26, 2, 1, 1, 'en', 5, '', '{"typeId":null,"authorId":null,"title":"Home","slug":"homepage","postDate":1456824361,"expiryDate":null,"enabled":0,"parentId":null,"fields":{"1":"<p>It\\u2019s true, this site doesn\\u2019t have a whole lot of content yet, but don\\u2019t worry. Our web developers have just installed the CMS, and they\\u2019re setting things up for the content editors this very moment. Soon Dev.craftblog.com will be an oasis of fresh perspectives, sharp analyses, and astute opinions that will keep you coming back again and again.<\\/p>","3":["37"]}}', '2016-03-02 09:56:38', '2016-03-02 09:56:38', 'c860cc4d-174c-4a1d-84f5-7e29e89572d8'),
(27, 2, 1, 1, 'en', 6, '', '{"typeId":null,"authorId":null,"title":"We just installed CRAFT! ","slug":"homepage","postDate":1456824361,"expiryDate":null,"enabled":0,"parentId":null,"fields":{"1":"<p>It\\u2019s true, this site doesn\\u2019t have a whole lot of content yet, but don\\u2019t worry. Our web developers have just installed the CMS, and they\\u2019re setting things up for the content editors this very moment. Soon Dev.craftblog.com will be an oasis of fresh perspectives, sharp analyses, and astute opinions that will keep you coming back again and again.<\\/p>","3":["37"]}}', '2016-03-02 09:57:07', '2016-03-02 09:57:07', '7f627df5-4a57-4794-861f-987fffe9ca2d'),
(28, 8, 3, 1, 'en', 6, '', '{"typeId":"3","authorId":"1","title":"Golf GTE","slug":"golf-gte","postDate":1456826700,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p><img src=\\"\\/assets\\/images\\/March-01-2016\\/Golf_GTE\\/2016-Volkswagen-GTE-by-Paddy-McGrath-1-1200x800.jpg\\" ><\\/p>\\r\\n<iframe width=\\"400\\" height=\\"auto\\" src=\\"https:\\/\\/www.youtube.com\\/embed\\/2UyIM55UoIY\\" frameborder=\\"0\\" allowfullscreen=\\"\\"><\\/iframe>\\r\\n\\r\\n\\r\\n<p> Take a look at this. I start the video in electric mode and make my way around the hairpin in complete silence, which is a surreal feeling at first. Coming out of the hairpin, I switch to \\u2018GTE\\u2019 and to manual shifting before accelerating. For a car that weighs nearly 1,600kg (3,527lb) it completely belies its on-paper engine size and performance. <\\/p>\\r\\n\\r\\n\\r\\n<p><img src=\\"\\/assets\\/images\\/March-01-2016\\/Golf_GTE\\/2016-Volkswagen-GTE-by-Paddy-McGrath-19-800x533.jpg\\" ><\\/p>\\r\\n\\r\\n\\r\\n<p> I suppose the most ringing endorsement I can give the GTE is that, as I write this, it\\u2019s parked outside my house for another few days before I drop it back to Volkswagen. I\\u2019m off to Mondello in two days for some Speedhunting activities and I have the choice of taking it or Project GTI. Honestly, I\\u2019m stumped as to which car to choose.\\r\\n<\\/p>\\r\\n\\r\\n\\r\\n<p><img src=\\"\\/assets\\/images\\/March-01-2016\\/Golf_GTE\\/2016-Volkswagen-GTE-by-Paddy-McGrath-34-800x533.jpg\\" ><\\/p>\\r\\n\\r\\n\\r\\n<p>Where as the other GT-grade&nbsp;cars are of 2.0-litre capacity (regardless of petrol or diesel, both are also turbocharged) the GTE is fitted with a smaller 1.4-litre turbocharged motor. In isolation, this unit produces around 150hp, but it\\u2019s not alone under the bonnet.<br><\\/p>","4":["59"],"3":["13"],"2":["9","10","11"]}}', '2016-03-02 12:52:11', '2016-03-02 12:52:11', 'ca8bbd7a-4c3a-4fd9-a1a3-10e7e59fafbe');
INSERT INTO `craft_entryversions` (`id`, `entryId`, `sectionId`, `creatorId`, `locale`, `num`, `notes`, `data`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(29, 4, 3, 1, 'en', 12, '', '{"typeId":"3","authorId":"1","title":"Bugatti Chirion","slug":"bugatti-chirion","postDate":1456824720,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p><img src=\\"\\/assets\\/images\\/March-01-2016\\/Bugatti_Chirion\\/01_CHIRON_grand-palais_34-front_WEB.0.jpg\\" ><\\/p>\\r\\n<p>There are many absurd facts about the Bugatti Chiron that was just introduced today ahead of the Geneva Motor Show. Its top speed is electronically limited &mdash;&nbsp;<em>limited!<\\/em>&nbsp;&mdash; to 261 miles per hour. It can reach 125 miles per hour in 6.5 seconds, which may very well be faster than the time it takes your personal vehicle to reach half that. And the base price is an astounding \\u20ac2.4 million ($2.6 million), which you can presumably run up with options and customization. Nothing about this rare machine (just 500 will be made) is for the faint of heart.&nbsp;We''ve&nbsp;\\r\\n<a href=\\"http:\\/\\/www.theverge.com\\/2016\\/2\\/29\\/11132084\\/bugatti-chiron-announced-geneva-motor-show-2016\\">already given you all the details about this ridiculous machine<\\/a>&nbsp;&mdash; but Bugatti, in its infinite generosity, has provided a huge and extremely awesome set of photos to go along with it. We thought you might enjoy some of them.<\\/p>\\r\\n\\r\\n<p>- Original article at <a href=\\"http:\\/\\/www.theverge.com\\/2016\\/2\\/29\\/11133374\\/bugatti-chiron-pictures\\">The Verge<\\/a><\\/p>\\r\\n\\r\\n<p><br><\\/p>","4":["59","56","57"],"3":["17"],"2":["5","6","7"]}}', '2016-03-02 12:52:23', '2016-03-02 12:52:23', '4aec622f-13b2-4c87-a2dd-88eb1c20ae01'),
(30, 8, 3, 1, 'en', 7, '', '{"typeId":"3","authorId":"1","title":"Golf GTE","slug":"golf-gte","postDate":1456826700,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p><img src=\\"\\/assets\\/images\\/March-01-2016\\/Golf_GTE\\/2016-Volkswagen-GTE-by-Paddy-McGrath-1-1200x800.jpg\\"><\\/p>\\r\\n\\r\\n<iframe width=\\"auto\\" height=\\"auto\\" src=\\"https:\\/\\/www.youtube.com\\/embed\\/2UyIM55UoIY\\" frameborder=\\"0\\" allowfullscreen=\\"\\"><\\/iframe>\\r\\n\\r\\n<p> Take a look at this. I start the video in electric mode and make my way around the hairpin in complete silence, which is a surreal feeling at first. Coming out of the hairpin, I switch to \\u2018GTE\\u2019 and to manual shifting before accelerating. For a car that weighs nearly 1,600kg (3,527lb) it completely belies its on-paper engine size and performance. <\\/p>\\r\\n<p><img src=\\"\\/assets\\/images\\/March-01-2016\\/Golf_GTE\\/2016-Volkswagen-GTE-by-Paddy-McGrath-19-800x533.jpg\\"><\\/p>\\r\\n<p> I suppose the most ringing endorsement I can give the GTE is that, as I write this, it\\u2019s parked outside my house for another few days before I drop it back to Volkswagen. I\\u2019m off to Mondello in two days for some Speedhunting activities and I have the choice of taking it or Project GTI. Honestly, I\\u2019m stumped as to which car to choose.\\r\\n<\\/p>\\r\\n<p><img src=\\"\\/assets\\/images\\/March-01-2016\\/Golf_GTE\\/2016-Volkswagen-GTE-by-Paddy-McGrath-34-800x533.jpg\\"><\\/p>\\r\\n<p>Where as the other GT-grade&nbsp;cars are of 2.0-litre capacity (regardless of petrol or diesel, both are also turbocharged) the GTE is fitted with a smaller 1.4-litre turbocharged motor. In isolation, this unit produces around 150hp, but it\\u2019s not alone under the bonnet.<br><\\/p>","4":["59"],"3":["13"],"2":["9","10","11"]}}', '2016-03-02 12:52:57', '2016-03-02 12:52:57', 'b366db1f-12b3-4dfb-8a99-cc5c5d371a60'),
(31, 8, 3, 1, 'en', 8, '', '{"typeId":"3","authorId":"1","title":"Golf GTE","slug":"golf-gte","postDate":1456826700,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p><img src=\\"\\/assets\\/images\\/March-01-2016\\/Golf_GTE\\/2016-Volkswagen-GTE-by-Paddy-McGrath-1-1200x800.jpg\\"><\\/p>\\r\\n\\r\\n<iframe width=\\"auto\\" height=\\"auto\\" src=\\"https:\\/\\/www.youtube.com\\/embed\\/2UyIM55UoIY\\" frameborder=\\"0\\" allowfullscreen=\\"\\"><\\/iframe>\\r\\n\\r\\n\\r\\n\\r\\n<p> Take a look at this. I start the video in electric mode and make my way around the hairpin in complete silence, which is a surreal feeling at first. Coming out of the hairpin, I switch to \\u2018GTE\\u2019 and to manual shifting before accelerating. For a car that weighs nearly 1,600kg (3,527lb) it completely belies its on-paper engine size and performance. <\\/p>\\r\\n\\r\\n\\r\\n\\r\\n<p><img src=\\"\\/assets\\/images\\/March-01-2016\\/Golf_GTE\\/2016-Volkswagen-GTE-by-Paddy-McGrath-19-800x533.jpg\\"><\\/p>\\r\\n\\r\\n\\r\\n\\r\\n<p> I suppose the most ringing endorsement I can give the GTE is that, as I write this, it\\u2019s parked outside my house for another few days before I drop it back to Volkswagen. I\\u2019m off to Mondello in two days for some Speedhunting activities and I have the choice of taking it or Project GTI. Honestly, I\\u2019m stumped as to which car to choose.\\r\\n<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n<p><img src=\\"\\/assets\\/images\\/March-01-2016\\/Golf_GTE\\/2016-Volkswagen-GTE-by-Paddy-McGrath-34-800x533.jpg\\"><\\/p>\\r\\n\\r\\n\\r\\n\\r\\n<p>Where as the other GT-grade&nbsp;cars are of 2.0-litre capacity (regardless of petrol or diesel, both are also turbocharged) the GTE is fitted with a smaller 1.4-litre turbocharged motor. In isolation, this unit produces around 150hp, but it\\u2019s not alone under the bonnet.<br><\\/p>","4":["59"],"3":["13"],"2":["9","10","11"]}}', '2016-03-02 12:53:00', '2016-03-02 12:53:00', 'fd5efd93-7431-4f93-8a00-96042421008d'),
(32, 8, 3, 1, 'en', 9, '', '{"typeId":"3","authorId":"1","title":"Golf GTE","slug":"golf-gte","postDate":1456826700,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p><img src=\\"\\/assets\\/images\\/March-01-2016\\/Golf_GTE\\/2016-Volkswagen-GTE-by-Paddy-McGrath-1-1200x800.jpg\\"><\\/p>\\r\\n<iframe width=\\"600\\" height=\\"auto\\" src=\\"https:\\/\\/www.youtube.com\\/embed\\/2UyIM55UoIY\\" frameborder=\\"0\\" allowfullscreen=\\"\\"><\\/iframe>\\r\\n<p> Take a look at this. I start the video in electric mode and make my way around the hairpin in complete silence, which is a surreal feeling at first. Coming out of the hairpin, I switch to \\u2018GTE\\u2019 and to manual shifting before accelerating. For a car that weighs nearly 1,600kg (3,527lb) it completely belies its on-paper engine size and performance. <\\/p>\\r\\n<p><img src=\\"\\/assets\\/images\\/March-01-2016\\/Golf_GTE\\/2016-Volkswagen-GTE-by-Paddy-McGrath-19-800x533.jpg\\"><\\/p>\\r\\n<p> I suppose the most ringing endorsement I can give the GTE is that, as I write this, it\\u2019s parked outside my house for another few days before I drop it back to Volkswagen. I\\u2019m off to Mondello in two days for some Speedhunting activities and I have the choice of taking it or Project GTI. Honestly, I\\u2019m stumped as to which car to choose.\\r\\n<\\/p>\\r\\n<p><img src=\\"\\/assets\\/images\\/March-01-2016\\/Golf_GTE\\/2016-Volkswagen-GTE-by-Paddy-McGrath-34-800x533.jpg\\"><\\/p>\\r\\n<p>Where as the other GT-grade&nbsp;cars are of 2.0-litre capacity (regardless of petrol or diesel, both are also turbocharged) the GTE is fitted with a smaller 1.4-litre turbocharged motor. In isolation, this unit produces around 150hp, but it\\u2019s not alone under the bonnet.<br><\\/p>","4":["59"],"3":["13"],"2":["9","10","11"]}}', '2016-03-02 12:53:19', '2016-03-02 12:53:19', 'fbe13422-f3ea-4338-abc6-a2b9d928095a'),
(33, 8, 3, 1, 'en', 10, '', '{"typeId":"3","authorId":"1","title":"Golf GTE","slug":"golf-gte","postDate":1456826700,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p><img src=\\"\\/assets\\/images\\/March-01-2016\\/Golf_GTE\\/2016-Volkswagen-GTE-by-Paddy-McGrath-1-1200x800.jpg\\"><\\/p>\\r\\n\\r\\n<iframe width=\\"600\\" height=\\"auto\\" src=\\"https:\\/\\/www.youtube.com\\/embed\\/2UyIM55UoIY\\" frameborder=\\"0\\" allowfullscreen=\\"\\"><\\/iframe>\\r\\n\\r\\n\\r\\n\\r\\n<p> Take a look at this. I start the video in electric mode and make my way around the hairpin in complete silence, which is a surreal feeling at first. Coming out of the hairpin, I switch to \\u2018GTE\\u2019 and to manual shifting before accelerating. For a car that weighs nearly 1,600kg (3,527lb) it completely belies its on-paper engine size and performance. <\\/p>\\r\\n\\r\\n\\r\\n\\r\\n<p><img src=\\"\\/assets\\/images\\/March-01-2016\\/Golf_GTE\\/2016-Volkswagen-GTE-by-Paddy-McGrath-19-800x533.jpg\\"><\\/p>\\r\\n\\r\\n\\r\\n\\r\\n<p> I suppose the most ringing endorsement I can give the GTE is that, as I write this, it\\u2019s parked outside my house for another few days before I drop it back to Volkswagen. I\\u2019m off to Mondello in two days for some Speedhunting activities and I have the choice of taking it or Project GTI. Honestly, I\\u2019m stumped as to which car to choose.\\r\\n<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n<p><img src=\\"\\/assets\\/images\\/March-01-2016\\/Golf_GTE\\/2016-Volkswagen-GTE-by-Paddy-McGrath-34-800x533.jpg\\"><\\/p>\\r\\n\\r\\n\\r\\n\\r\\n<p>Where as the other GT-grade&nbsp;cars are of 2.0-litre capacity (regardless of petrol or diesel, both are also turbocharged) the GTE is fitted with a smaller 1.4-litre turbocharged motor. In isolation, this unit produces around 150hp, but it\\u2019s not alone under the bonnet.<br><\\/p>","4":["59"],"3":["13"],"2":["9","10","11"]}}', '2016-03-02 12:53:20', '2016-03-02 12:53:20', '5ecea1bf-2ef8-4615-b08c-876f57d21be0'),
(34, 8, 3, 1, 'en', 11, '', '{"typeId":"3","authorId":"1","title":"Golf GTE","slug":"golf-gte","postDate":1456826700,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p><img src=\\"\\/assets\\/images\\/March-01-2016\\/Golf_GTE\\/2016-Volkswagen-GTE-by-Paddy-McGrath-1-1200x800.jpg\\"><\\/p>\\r\\n<iframe width=\\"1000\\" height=\\"600\\" src=\\"https:\\/\\/www.youtube.com\\/embed\\/2UyIM55UoIY\\" frameborder=\\"0\\" allowfullscreen=\\"\\"><\\/iframe>\\r\\n<p> Take a look at this. I start the video in electric mode and make my way around the hairpin in complete silence, which is a surreal feeling at first. Coming out of the hairpin, I switch to \\u2018GTE\\u2019 and to manual shifting before accelerating. For a car that weighs nearly 1,600kg (3,527lb) it completely belies its on-paper engine size and performance. <\\/p>\\r\\n<p><img src=\\"\\/assets\\/images\\/March-01-2016\\/Golf_GTE\\/2016-Volkswagen-GTE-by-Paddy-McGrath-19-800x533.jpg\\"><\\/p>\\r\\n<p> I suppose the most ringing endorsement I can give the GTE is that, as I write this, it\\u2019s parked outside my house for another few days before I drop it back to Volkswagen. I\\u2019m off to Mondello in two days for some Speedhunting activities and I have the choice of taking it or Project GTI. Honestly, I\\u2019m stumped as to which car to choose.\\r\\n<\\/p>\\r\\n<p><img src=\\"\\/assets\\/images\\/March-01-2016\\/Golf_GTE\\/2016-Volkswagen-GTE-by-Paddy-McGrath-34-800x533.jpg\\"><\\/p>\\r\\n<p>Where as the other GT-grade&nbsp;cars are of 2.0-litre capacity (regardless of petrol or diesel, both are also turbocharged) the GTE is fitted with a smaller 1.4-litre turbocharged motor. In isolation, this unit produces around 150hp, but it\\u2019s not alone under the bonnet.<br><\\/p>","4":["59"],"3":["13"],"2":["9","10","11"]}}', '2016-03-02 12:53:37', '2016-03-02 12:53:37', '74a91c47-f681-4760-b3d9-f5f05ab2123f'),
(35, 4, 3, 1, 'en', 13, '', '{"typeId":"3","authorId":"1","title":"Bugatti Chirion","slug":"bugatti-chirion","postDate":1456824720,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p><img src=\\"\\/assets\\/images\\/March-01-2016\\/Bugatti_Chirion\\/01_CHIRON_grand-palais_34-front_WEB.0.jpg\\"><\\/p>\\r\\n\\r\\n<p>There are many absurd facts about the Bugatti Chiron that was just introduced today ahead of the Geneva Motor Show. Its top speed is electronically limited &mdash;&nbsp;<em>limited!<\\/em>&nbsp;&mdash; to 261 miles per hour. It can reach 125 miles per hour in 6.5 seconds, which may very well be faster than the time it takes your personal vehicle to reach half that. And the base price is an astounding \\u20ac2.4 million ($2.6 million), which you can presumably run up with options and customization. Nothing about this rare machine (just 500 will be made) is for the faint of heart.&nbsp;We''ve&nbsp;\\r\\n<a href=\\"http:\\/\\/www.theverge.com\\/2016\\/2\\/29\\/11132084\\/bugatti-chiron-announced-geneva-motor-show-2016\\">already given you all the details about this ridiculous machine<\\/a>&nbsp;&mdash; but Bugatti, in its infinite generosity, has provided a huge and extremely awesome set of photos to go along with it. We thought you might enjoy some of them.<\\/p>\\r\\n\\r\\n\\r\\n\\r\\n<p>- Original article at <a href=\\"http:\\/\\/www.theverge.com\\/2016\\/2\\/29\\/11133374\\/bugatti-chiron-pictures\\">The Verge<\\/a><\\/p>\\r\\n\\r\\n\\r\\n\\r\\n<p><br><\\/p>","4":["59","56","57"],"3":["17"],"5":["19","17","16"],"2":["5","6","7"]}}', '2016-03-02 13:30:46', '2016-03-02 13:30:46', 'c1117076-a4ef-4849-8904-9c4f98f05a78'),
(36, 71, 4, 1, 'en', 1, '', '{"typeId":null,"authorId":"1","title":"OK GO - Lets get Indy","slug":"ok-go-lets-get-indy","postDate":1456988606,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>If there''s one rock journalist clich\\u00e9 that bugs me, it''s that relentless tendency to dwell heavily on a band''s image, allowing it to supercede the importance of the music in the interest of provoking a laugh or making what is often a frivolous, irrelevant point. A great deal of bands, from the early mop-top days of The Beatles to the afro''d At the Drive-In of today, have found their otherwise wonderful and perfectly noteworthy music suffocated by the ink given to their hair, outfits or backstage antics. Conversely, painfully mediocre bands like Kiss and Cinderella find substantial, undeserved attention simply through their flashy dress codes, using their image to blanket lifeless, pedestrian songs. Needless to say, it''s a tactic I usually try to avoid.<\\/p><p>And so here I try, objectively as I can, to sit through the self-titled debut of Chicago foursome Ok Go. From the outset, their look is positively loathsome; four clean-cut, Suburbia-ripped pretty boys aspiring to toe the line between indie respectability and commercial adulation. I slide the disc into my CD player, glancing briefly at the&nbsp;<i>Blue<\\/i>-era Weezer poster on my wall which optimistically reminds me of the joy that could abound. But as the music begins, and the bland onslaught of creative ineptitude soaks my room, my mood takes a nosedive.<br>Fact is, Ok Go seemed to have made every effort to live up to their immaculate, airbrushed image in their music. That the kind of mindless, commercial monotony that dilutes every hint of vibrancy on the record seems wholly intentional is telling, as a comparatively lo-fi collection of songs were apparently scrapped in favor of this supposedly more accessible dreck. The sort of middle-of-the-road, half power-pop\\/half hair-metal hooks heard on first track and single \\"Get Over It\\" plays itself out on nearly every track, using the monster power chords, obtusely ironic lyrics and anthemic send-up chorus as a blueprint for the kind of 21st century arena-rock most people knew we didn''t need.<br>For forty minutes,&nbsp;<i>Ok Go<\\/i>&nbsp;drags on laboriously, with each passing song more desperately anticipating the end. Damian Kulash''s lyrics are almost uniformly dreadful, but no more so than on \\"You''re So Damn Hot\\", what seems to be some kind of aggravating rewrite of \\"Bang a Gong\\" with all the substance and style drained from it. Lines like, \\"You''re a bad-hearted boy trap, baby doll, but you''re\\/ So damn hot,\\" are enough to make you despise the English language. Fortunately, the album is saved from&nbsp;<i>total<\\/i>&nbsp;disaster by the band''s occasional ear for a good hook, and though you''ll knock yourself for it, the reasonably hummable melodies of a handful of these tracks may stay with you for the rest of the day.<br>When push comes to shove though,&nbsp;<i>Ok Go<\\/i>&nbsp;is either a dreadfully calculated, shot-in-the-dark attempt at accessibility from a band whose heart is in the underground or simply a dull, styrofoam pop record from a bunch of fresh-faced hacks who happened to come across a Weezer fakebook and decided to turn it into a career. Either way, their heart doesn''t seem in it, and if you''re gonna win the public over, you''ve gotta at least fool them into thinking you mean it.<\\/p>","4":["63"],"3":["66"],"5":["68","64","65"],"6":"","7":"<p>Reverse the pronunciation guide for \\"INXS.\\" That''s \\"okay, go,\\" not \\"oakgoo.\\" \\"OKGO\\" sounds more like a He-Man villain, and therefore seems more suitable as a name for a math-rock band.<\\/p><p>Ok Go have been masterfully collecting hype by plastering their flashy posters on&nbsp;<i>Exito!<\\/i>newspaper dispensers and opening for&nbsp;<i>every single band<\\/i>&nbsp;in Chicago over the last year, including Don Caballero, The Promise Ring, Elliott Smith, and OMD. (Yes, Orchestral Maneuvers in the Dark.) It''s actually been fascinating to watch their inevitable rise. Local press now invariably strokes the band''s egos; in a city still sadly yearning for their next \\"Pumpkins,\\" these guys seem to have become the prime candidates.<br>Image counts, kids, and a flashy <a href=\\"http:\\/\\/www.okgo.net\\">www.okgo.net<\\/a> website with press photos was born even before these guys had-- oh, right!-- a record. But now that their meticulous, year-long recording sessions can finally be heard, however briefly, the band can get on with gathering devoted fans and lukewarm reviews.<br>This sub-10-minute EP was crafted in&nbsp;<i>five<\\/i>&nbsp;studios, including the spiffy workplaces of Dave Trumfio, Steve Albini, and Butch Vig. (At this point, it should be noted that Ok Go have trust funds.) And despite minor songwriting triumphs, it can be difficult to wrap your head around the fact that five studios, two producers, and five assistants worked to create a Weezer knock-off called \\"Bye Bye Baby\\".<br>On stage, Ok Go play the shiniest gear, filtered through electronics and a laptop. The silicon sound offers pinches-- tiny pinches-- of Brainiac moments, most notably on their tune, \\"This Is Not the Sound of a Train\\". Sadly, that''s not included here. Instead, we get the lithe acoustic throwaway \\"It''s Tough to Have a Crush When the Boy Doesn''t Feel the Same Way You Do\\". Jeremy Jacobsen of Five Style and The Lonesome Organist, and The Coctails'' Mark Greenberg supply some nifty vaudevillian twinkling underneath, but it fails to detract from the fact that everything the song has to offer is handed over in the title alone. Quick, guess the chorus! Reading the sleeve can be just as melodic, and at least saves you from the line, \\"Who ever knew such hullabaloo?\\" \\"We Dug a Hole\\" opens with \\"Strawberry Fields\\" organ and hides pleasant choruses. However, the verses serve up layers of \\"loops\\" and \\"rapping\\" that could only make Amy Heckerling wet, and their anal studio attention dominates every guitar chug and vocal harmony.<br>Of course, considering the competition, Ok Go have a brilliant future. Even this beats the living lisp out of The Promise Ring. (Oddly, Jade Tree turned Ok Go down-- this could have been their retirement fund.) Still, the band fully embraces the cheddar pleasures of major label pop, and for every crispy curveball thrown, there''s a lyric like, \\"C-C-C-Cinnamon lips and candy kisses on my tongue.\\" And if these sound like bitter, grizzled complaints, it''s only because I''m trying to brace you for the moment they ditch self-released CDs and come to your town with Fruit-by-the-Foot''s Generation Flav''R Fest.<\\/p>","2":["69","70"]}}', '2016-03-03 07:03:26', '2016-03-03 07:03:26', '5419b60b-5ffd-4a95-8de6-f4a611e8aba5'),
(37, 54, 4, 1, 'en', 2, '', '{"typeId":"4","authorId":"1","title":"Rage Againts The Machine - 10 Years on? ","slug":"rage-againts-the-machine-10-years-on","postDate":1456834440,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p><strong><a href=\\"https:\\/\\/www.youtube.com\\/watch?v=j8V_dpqwK5c\\">Evil Empire<\\/a>Rage Against the Machine<\\/strong>&nbsp;(also known as&nbsp;<strong>RATM<\\/strong>&nbsp;or just&nbsp;<strong>Rage<\\/strong>) is an American political&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Rap_metal\\">rap metal<\\/a>&nbsp;band from&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Los_Angeles\\">Los Angeles<\\/a>,&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/California\\">California<\\/a>. Formed in 1991, the group consists of rapper and vocalist&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Zack_de_la_Rocha\\">Zack de la Rocha<\\/a>, bassist and backing vocalist&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Tim_Commerford\\">Tim Commerford<\\/a>, guitarist&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Tom_Morello\\">Tom Morello<\\/a>&nbsp;and drummer&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Brad_Wilk\\">Brad Wilk<\\/a>. They draw inspiration from early&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Heavy_metal_music\\">heavy metal<\\/a>&nbsp;instrumentation, as well as&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Hip_hop_music\\">hip hop<\\/a>&nbsp;acts such as&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Afrika_Bambaataa\\">Afrika Bambaataa<\\/a>,<sup><a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Rage_Against_the_Machine#cite_note-allmusic-1\\">[1]<\\/a><\\/sup>&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Public_Enemy_(band)\\">Public Enemy<\\/a>, the&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Beastie_Boys\\">Beastie Boys<\\/a>&nbsp;and Dutch crossover band&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Urban_Dance_Squad\\">Urban Dance Squad<\\/a>.<sup><a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Rage_Against_the_Machine#cite_note-metrolyrics-2\\">[2]<\\/a><\\/sup>&nbsp;Rage Against the Machine is well known for the members''&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Left-wing_politics\\">leftist<\\/a>&nbsp;and&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Revolutionary\\">revolutionary<\\/a>&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Political_views_and_activism_of_Rage_Against_the_Machine\\">political views<\\/a>, which are expressed in many of the band''s songs. As of 2010, they have sold over 16 million records worldwide.<sup><a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Rage_Against_the_Machine#cite_note-WordPress-3\\">[3]<\\/a><\\/sup><\\/p>\\r\\n\\r\\n<p>In 1992, the band released its&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Rage_Against_the_Machine_(album)\\">self-titled debut album<\\/a>, which became a commercial and critical success, leading to a slot in the 1993&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Lollapalooza\\">Lollapalooza<\\/a>&nbsp;festival. In 2003, the album was ranked number 368 on&nbsp;<em><a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Rolling_Stone\\">Rolling Stone<\\/a><\\/em>&nbsp;magazine''s list of the&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/The_500_Greatest_Albums_of_All_Time\\">500 greatest albums of all time<\\/a>. The band did not release a follow-up record until 1996, with&nbsp;<em><a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Evil_Empire_(album)\\">Evil Empire<\\/a><\\/em>. The band''s third album,&nbsp;<em><a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/The_Battle_of_Los_Angeles_(album)\\">The Battle of Los Angeles<\\/a><\\/em>, followed in 1999, and in 2003, the album was ranked number 426 on the same list. During their initial nine-year run, they became one of the most popular and influential bands in music history, according to music journalist Colin Devenish.<sup><a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Rage_Against_the_Machine#cite_note-Devenish-4\\">[4]<\\/a><\\/sup>&nbsp;They were also ranked No.&nbsp;33 on&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/VH1\\">VH1<\\/a>''s&nbsp;<em>100 Greatest Artists of Hard Rock<\\/em>. The band had a large influence on the&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Nu_metal\\">nu metal<\\/a>&nbsp;genre which came to prominence during the second half of the 1990s.<br>In 2000, the band released the cover album,&nbsp;<em><a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Renegades_(Rage_Against_the_Machine_album)\\">Renegades<\\/a><\\/em>. The same year, growing tensions over the direction of the band prompted de la Rocha to quit, leading to the band''s breakup.<sup><a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Rage_Against_the_Machine#cite_note-5\\">[5]<\\/a><\\/sup>De la Rocha started a low-key solo career, while the rest of the band formed the rock&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Supergroup_(music)\\">supergroup<\\/a>&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Audioslave\\">Audioslave<\\/a>&nbsp;with&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Chris_Cornell\\">Chris Cornell<\\/a>, then-former&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Frontman\\">frontman<\\/a>&nbsp;of&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Soundgarden\\">Soundgarden<\\/a>; Audioslave recorded three albums before disbanding in 2007. The same year, Rage Against the Machine announced a reunion and performed together for the first time in seven years at the<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Coachella_Valley_Music_and_Arts_Festival\\">Coachella Valley Music and Arts Festival<\\/a>&nbsp;in April 2007. Up until 2011, the band continued to perform at more live venues and festivals around the world. As of 2016, the group has no plans to perform or release new music.<sup><a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Rage_Against_the_Machine#cite_note-newalbum-6\\">[6]<\\/a><\\/sup><\\/p>\\r\\n\\r\\n<p>-&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Rage_Against_the_Machine\\" target=\\"_blank\\">wikipedia<\\/a><\\/p>\\r\\n\\r\\n<p>After a wonderful wikipedia entry to wet our apatite''s, the question remains, is RATM still great after a ten year break?&nbsp;They were great before they decided to split ways, and their subsequent projects have all built followings in their respective rights. Fans will tell you that the bands thrash and metal style is still some of the best sounding <a href=\\"{category:48:url}#category:48:url\\">Rock&nbsp;<\\/a>music you can sink your teeth into, at the end of the day it is all very objective, I still love the band, but I only started listening to them after they broke up, which is a real shame.&nbsp;<\\/p>\\r\\n\\r\\n<p>I have searched the net looking for live shows and thoroughly enjoyed watching a young RATM&nbsp;jump around stage and throw a massive amount of energy at the crowd, and wished I were there, and I still really enjoy their music, right now I am listening to Evil Empire...&nbsp;<a href=\\"https:\\/\\/www.youtube.com\\/watch?v=j8V_dpqwK5c\\" target=\\"_blank\\">Evil Empire<\\/a>&nbsp;<\\/p>\\r\\n\\r\\n<p>So I believe ten years on their music lives on and makes for some amazing listening<\\/p>\\r\\n\\r\\n<p>-&nbsp;K<\\/p>\\r\\n\\r\\n","4":["72","73","74","75"],"3":["51"],"5":"","6":"","7":"","2":["52","53"]}}', '2016-03-03 07:31:27', '2016-03-03 07:31:27', '75904dc0-c730-4e7f-b6da-59f75773362a'),
(38, 71, 4, 1, 'en', 2, '', '{"typeId":"4","authorId":"1","title":"OK GO - Lets get Indy","slug":"ok-go-lets-get-indy","postDate":1456988580,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>If there''s one rock journalist clich\\u00e9 that bugs me, it''s that relentless tendency to dwell heavily on a band''s image, allowing it to supercede the importance of the music in the interest of provoking a laugh or making what is often a frivolous, irrelevant point. A great deal of bands, from the early mop-top days of The Beatles to the afro''d At the Drive-In of today, have found their otherwise wonderful and perfectly noteworthy music suffocated by the ink given to their hair, outfits or backstage antics. Conversely, painfully mediocre bands like Kiss and Cinderella find substantial, undeserved attention simply through their flashy dress codes, using their image to blanket lifeless, pedestrian songs. Needless to say, it''s a tactic I usually try to avoid.<\\/p>\\r\\n\\r\\n<p>And so here I try, objectively as I can, to sit through the self-titled debut of Chicago foursome Ok Go. From the outset, their look is positively loathsome; four clean-cut, Suburbia-ripped pretty boys aspiring to toe the line between indie respectability and commercial adulation. I slide the disc into my CD player, glancing briefly at the&nbsp;<em>Blue<\\/em>-era Weezer poster on my wall which optimistically reminds me of the joy that could abound. But as the music begins, and the bland onslaught of creative ineptitude soaks my room, my mood takes a nosedive.<br>Fact is, Ok Go seemed to have made every effort to live up to their immaculate, airbrushed image in their music. That the kind of mindless, commercial monotony that dilutes every hint of vibrancy on the record seems wholly intentional is telling, as a comparatively lo-fi collection of songs were apparently scrapped in favor of this supposedly more accessible dreck. The sort of middle-of-the-road, half power-pop\\/half hair-metal hooks heard on first track and single \\"Get Over It\\" plays itself out on nearly every track, using the monster power chords, obtusely ironic lyrics and anthemic send-up chorus as a blueprint for the kind of 21st century arena-rock most people knew we didn''t need.<br>For forty minutes,&nbsp;<em>Ok Go<\\/em>&nbsp;drags on laboriously, with each passing song more desperately anticipating the end. Damian Kulash''s lyrics are almost uniformly dreadful, but no more so than on \\"You''re So Damn Hot\\", what seems to be some kind of aggravating rewrite of \\"Bang a Gong\\" with all the substance and style drained from it. Lines like, \\"You''re a bad-hearted boy trap, baby doll, but you''re\\/ So damn hot,\\" are enough to make you despise the English language. Fortunately, the album is saved from&nbsp;<em>total<\\/em>&nbsp;disaster by the band''s occasional ear for a good hook, and though you''ll knock yourself for it, the reasonably hummable melodies of a handful of these tracks may stay with you for the rest of the day.<br>When push comes to shove though,&nbsp;<em>Ok Go<\\/em>&nbsp;is either a dreadfully calculated, shot-in-the-dark attempt at accessibility from a band whose heart is in the underground or simply a dull, styrofoam pop record from a bunch of fresh-faced hacks who happened to come across a Weezer fakebook and decided to turn it into a career. Either way, their heart doesn''t seem in it, and if you''re gonna win the public over, you''ve gotta at least fool them into thinking you mean it.<\\/p>","4":["72","75"],"3":["66"],"5":["68","64","65"],"6":"","7":"<p>Reverse the pronunciation guide for \\"INXS.\\" That''s \\"okay, go,\\" not \\"oakgoo.\\" \\"OKGO\\" sounds more like a He-Man villain, and therefore seems more suitable as a name for a math-rock band.<\\/p>\\r\\n\\r\\n<p>Ok Go have been masterfully collecting hype by plastering their flashy posters on&nbsp;<em>Exito!<\\/em>newspaper dispensers and opening for&nbsp;<em>every single band<\\/em>&nbsp;in Chicago over the last year, including Don Caballero, The Promise Ring, Elliott Smith, and OMD. (Yes, Orchestral Maneuvers in the Dark.) It''s actually been fascinating to watch their inevitable rise. Local press now invariably strokes the band''s egos; in a city still sadly yearning for their next \\"Pumpkins,\\" these guys seem to have become the prime candidates.<br>Image counts, kids, and a flashy <a href=\\"http:\\/\\/www.okgo.net\\">www.okgo.net<\\/a> website with press photos was born even before these guys had-- oh, right!-- a record. But now that their meticulous, year-long recording sessions can finally be heard, however briefly, the band can get on with gathering devoted fans and lukewarm reviews.<br>This sub-10-minute EP was crafted in&nbsp;<em>five<\\/em>&nbsp;studios, including the spiffy workplaces of Dave Trumfio, Steve Albini, and Butch Vig. (At this point, it should be noted that Ok Go have trust funds.) And despite minor songwriting triumphs, it can be difficult to wrap your head around the fact that five studios, two producers, and five assistants worked to create a Weezer knock-off called \\"Bye Bye Baby\\".<br>On stage, Ok Go play the shiniest gear, filtered through electronics and a laptop. The silicon sound offers pinches-- tiny pinches-- of Brainiac moments, most notably on their tune, \\"This Is Not the Sound of a Train\\". Sadly, that''s not included here. Instead, we get the lithe acoustic throwaway \\"It''s Tough to Have a Crush When the Boy Doesn''t Feel the Same Way You Do\\". Jeremy Jacobsen of Five Style and The Lonesome Organist, and The Coctails'' Mark Greenberg supply some nifty vaudevillian twinkling underneath, but it fails to detract from the fact that everything the song has to offer is handed over in the title alone. Quick, guess the chorus! Reading the sleeve can be just as melodic, and at least saves you from the line, \\"Who ever knew such hullabaloo?\\" \\"We Dug a Hole\\" opens with \\"Strawberry Fields\\" organ and hides pleasant choruses. However, the verses serve up layers of \\"loops\\" and \\"rapping\\" that could only make Amy Heckerling wet, and their anal studio attention dominates every guitar chug and vocal harmony.<br>Of course, considering the competition, Ok Go have a brilliant future. Even this beats the living lisp out of The Promise Ring. (Oddly, Jade Tree turned Ok Go down-- this could have been their retirement fund.) Still, the band fully embraces the cheddar pleasures of major label pop, and for every crispy curveball thrown, there''s a lyric like, \\"C-C-C-Cinnamon lips and candy kisses on my tongue.\\" And if these sound like bitter, grizzled complaints, it''s only because I''m trying to brace you for the moment they ditch self-released CDs and come to your town with Fruit-by-the-Foot''s Generation Flav''R Fest.<\\/p>","2":["69","70"]}}', '2016-03-03 07:31:29', '2016-03-03 07:31:29', '35be5987-eafd-4387-b052-b36d78d9dad0'),
(39, 77, 5, 1, 'en', 1, '', '{"typeId":null,"authorId":"1","title":"1600 Reasons To Love This Datsun - Speed Hunters","slug":"1600-reasons-to-love-this-datsun-speed-hunters","postDate":1457005155,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"8":{"new1":{"type":"heading","enabled":"1","fields":{"heading":"1600 Reasons To Love This Datsun - Speed Hunters"}},"new2":{"type":"subHeading","enabled":"1","fields":{"subHeading":"Old School Slow - Fast"}},"new3":{"type":"introduction","enabled":"1","fields":{"introduction":"Looking back at the feature cars I\\u2019ve photographed and written about over the past 12 months, it\\u2019s hard to find much similarity. Between wide-body Porsches, blown burnout machines and retro Mopar racers, four tyres are pretty much all they\\u2019ve shared in common. But then again, that\\u2019s half the fun of being a Speedhunter \\u2013 we get to write our own rules."}},"new4":{"type":"body","enabled":"1","fields":{"paragraph1":"However, there is one common theme that I\\u2019ve identified in the cars I choose from the many, many possibilities: overall completeness. Yes, there are plenty of eye-catching rides out there, but the ones that really make a mark on me are those where the owner has well and truly reinvented the vehicle into something different and new.","paragraph2":"","paragraph3":"","paragraph4":"","paragraph5":"","paragraph6":""}}}}}', '2016-03-03 11:39:16', '2016-03-03 11:39:16', '27550ba9-bfa7-4ca0-9766-e2743f16f437'),
(40, 77, 5, 1, 'en', 2, '', '{"typeId":"5","authorId":"1","title":"1600 Reasons To Love This Datsun - Speed Hunters","slug":"1600-reasons-to-love-this-datsun-speed-hunters","postDate":1457005140,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"8":{"78":{"type":"heading","enabled":"1","fields":{"heading":"1600 Reasons To Love This Datsun - Speed Hunters"}},"79":{"type":"subHeading","enabled":"1","fields":{"subHeading":"Old School Slow - Fast"}},"80":{"type":"introduction","enabled":"1","fields":{"introduction":"Looking back at the feature cars I\\u2019ve photographed and written about over the past 12 months, it\\u2019s hard to find much similarity. Between wide-body Porsches, blown burnout machines and retro Mopar racers, four tyres are pretty much all they\\u2019ve shared in common. But then again, that\\u2019s half the fun of being a Speedhunter \\u2013 we get to write our own rules."}},"81":{"type":"body","enabled":"1","fields":{"paragraph1":"<p>However, there is one common theme that I\\u2019ve identified in the cars I choose from the many, many possibilities: overall completeness. Yes, there are plenty of eye-catching rides out there, but the ones that really make a mark on me are those where the owner has well and truly reinvented the vehicle into something different and new.<\\/p>","paragraph2":"<p>When this little Datsun 1600 wagon arrived at our shoot location, it was actually the first time I\\u2019d seen it completed in the flesh. But having spied the car as a&nbsp;work-in-progress at the&nbsp;<a href=\\"http:\\/\\/www.speedhunters.com\\/2015\\/10\\/the-speedhunters-wtac-wrap-up\\/\\">World Time Attack Challenge<\\/a>&nbsp;last year, I started following every step of the build on the owner\\u2019s social media pages. Thus, it was a bit of&nbsp;<em>deja<\\/em><em>&nbsp;vu<\\/em>&nbsp;to see the car for the first time despite knowing it quite well.<\\/p>","paragraph3":"<p>As we all know, seeing a car in the flesh is infinitely better than in some poorly compressed Facebook photo album. The first thing that struck me about the wagon was the paint \\u2013 such a subtle colour, but expertly mixed and applied.<\\/p>","paragraph4":"<p>It\\u2019s a custom hue that is closely related to the \\u2018Gun Metallic\\u2019 available on the R35 GT-R, keeping things in the family so to speak. I really wanted to let the paintwork speak for itself in these photos,&nbsp;so hopefully you can enjoy it as much as I did on this mercifully grey mid-summer\\u2019s morning.<\\/p>","paragraph5":"<p>The owner and creator is no stranger to vehicular customisation. John\\u2019s past rides have included an eclectic mix of Australian and Japanese models both old and new, and he currently manages the motorsport operation at Sydney\\u2019s V-Sport, meaning he is intimately acquainted with the&nbsp;<a href=\\"http:\\/\\/www.speedhunters.com\\/2015\\/11\\/is-this-the-fastest-86-in-the-world\\/\\">V-Sport Toyota 86<\\/a>&nbsp;that impressed all who saw it at WTAC.<\\/p>","paragraph6":"<p>A friend of John\\u2019s had an exceptionally straight 1600 and no space to keep it, so John did the only sensible thing and bought it from him. Over the next two years it was transformed by John and whatever friends could lend a hand after hours at V-Sport\\u2019s Western Sydney workshop.<\\/p>"}},"new1":{"type":"image","enabled":"1","fields":{"image1":"","image2":"","image3":"","image4":"","image5":"","image6":"","image7":""}}}}}', '2016-03-03 11:43:43', '2016-03-03 11:43:43', 'f7d1b82a-38b9-404b-9ff7-4fdfbeafa9c6'),
(41, 77, 5, 1, 'en', 3, '', '{"typeId":"5","authorId":"1","title":"1600 Reasons To Love This Datsun - Speed Hunters","slug":"1600-reasons-to-love-this-datsun-speed-hunters","postDate":1457005140,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"8":{"78":{"type":"heading","enabled":"1","fields":{"heading":"1600 Reasons To Love This Datsun - Speed Hunters"}},"79":{"type":"subHeading","enabled":"1","fields":{"subHeading":"Old School Slow - Fast"}},"80":{"type":"introduction","enabled":"1","fields":{"introduction":"Looking back at the feature cars I\\u2019ve photographed and written about over the past 12 months, it\\u2019s hard to find much similarity. Between wide-body Porsches, blown burnout machines and retro Mopar racers, four tyres are pretty much all they\\u2019ve shared in common. But then again, that\\u2019s half the fun of being a Speedhunter \\u2013 we get to write our own rules."}},"81":{"type":"body","enabled":"1","fields":{"paragraph1":"<p>However, there is one common theme that I\\u2019ve identified in the cars I choose from the many, many possibilities: overall completeness. Yes, there are plenty of eye-catching rides out there, but the ones that really make a mark on me are those where the owner has well and truly reinvented the vehicle into something different and new.<\\/p>","paragraph2":"<p>When this little Datsun 1600 wagon arrived at our shoot location, it was actually the first time I\\u2019d seen it completed in the flesh. But having spied the car as a&nbsp;work-in-progress at the&nbsp;<a href=\\"http:\\/\\/www.speedhunters.com\\/2015\\/10\\/the-speedhunters-wtac-wrap-up\\/\\">World Time Attack Challenge<\\/a>&nbsp;last year, I started following every step of the build on the owner\\u2019s social media pages. Thus, it was a bit of&nbsp;<em>deja<\\/em><em>&nbsp;vu<\\/em>&nbsp;to see the car for the first time despite knowing it quite well.<\\/p>","paragraph3":"<p>As we all know, seeing a car in the flesh is infinitely better than in some poorly compressed Facebook photo album. The first thing that struck me about the wagon was the paint \\u2013 such a subtle colour, but expertly mixed and applied.<\\/p>","paragraph4":"<p>It\\u2019s a custom hue that is closely related to the \\u2018Gun Metallic\\u2019 available on the R35 GT-R, keeping things in the family so to speak. I really wanted to let the paintwork speak for itself in these photos,&nbsp;so hopefully you can enjoy it as much as I did on this mercifully grey mid-summer\\u2019s morning.<\\/p>","paragraph5":"<p>The owner and creator is no stranger to vehicular customisation. John\\u2019s past rides have included an eclectic mix of Australian and Japanese models both old and new, and he currently manages the motorsport operation at Sydney\\u2019s V-Sport, meaning he is intimately acquainted with the&nbsp;<a href=\\"http:\\/\\/www.speedhunters.com\\/2015\\/11\\/is-this-the-fastest-86-in-the-world\\/\\">V-Sport Toyota 86<\\/a>&nbsp;that impressed all who saw it at WTAC.<\\/p>","paragraph6":"<p>A friend of John\\u2019s had an exceptionally straight 1600 and no space to keep it, so John did the only sensible thing and bought it from him. Over the next two years it was transformed by John and whatever friends could lend a hand after hours at V-Sport\\u2019s Western Sydney workshop.<\\/p>"}},"82":{"type":"image","enabled":"1","fields":{"image1":["84"],"image2":["83"],"image3":["85"],"image4":["90"],"image5":["92"],"image6":["91"],"image7":["88"]}},"new1":{"type":"bonusImages","enabled":"1","fields":{"image":["86","87","89"]}}}}}', '2016-03-03 11:51:56', '2016-03-03 11:51:56', '41404015-40a9-42bc-8448-eaf62a540f5e'),
(42, 77, 5, 1, 'en', 4, '', '{"typeId":"5","authorId":"1","title":"1600 Reasons To Love This Datsun - Speed Hunters","slug":"1600-reasons-to-love-this-datsun-speed-hunters","postDate":1457005140,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"8":{"78":{"type":"heading","enabled":"1","fields":{"heading":"1600 Reasons To Love This Datsun - Speed Hunters","subHeading":"Old School Slow Living - Fast"}},"80":{"type":"introduction","enabled":"1","fields":{"introduction":"Looking back at the feature cars I\\u2019ve photographed and written about over the past 12 months, it\\u2019s hard to find much similarity. Between wide-body Porsches, blown burnout machines and retro Mopar racers, four tyres are pretty much all they\\u2019ve shared in common. But then again, that\\u2019s half the fun of being a Speedhunter \\u2013 we get to write our own rules."}},"81":{"type":"body","enabled":"1","fields":{"paragraph1":"<p>However, there is one common theme that I\\u2019ve identified in the cars I choose from the many, many possibilities: overall completeness. Yes, there are plenty of eye-catching rides out there, but the ones that really make a mark on me are those where the owner has well and truly reinvented the vehicle into something different and new.<\\/p>","paragraph2":"<p>When this little Datsun 1600 wagon arrived at our shoot location, it was actually the first time I\\u2019d seen it completed in the flesh. But having spied the car as a&nbsp;work-in-progress at the&nbsp;<a href=\\"http:\\/\\/www.speedhunters.com\\/2015\\/10\\/the-speedhunters-wtac-wrap-up\\/\\">World Time Attack Challenge<\\/a>&nbsp;last year, I started following every step of the build on the owner\\u2019s social media pages. Thus, it was a bit of&nbsp;<em>deja<\\/em><em>&nbsp;vu<\\/em>&nbsp;to see the car for the first time despite knowing it quite well.<\\/p>","paragraph3":"<p>As we all know, seeing a car in the flesh is infinitely better than in some poorly compressed Facebook photo album. The first thing that struck me about the wagon was the paint \\u2013 such a subtle colour, but expertly mixed and applied.<\\/p>","paragraph4":"<p>It\\u2019s a custom hue that is closely related to the \\u2018Gun Metallic\\u2019 available on the R35 GT-R, keeping things in the family so to speak. I really wanted to let the paintwork speak for itself in these photos,&nbsp;so hopefully you can enjoy it as much as I did on this mercifully grey mid-summer\\u2019s morning.<\\/p>","paragraph5":"<p>The owner and creator is no stranger to vehicular customisation. John\\u2019s past rides have included an eclectic mix of Australian and Japanese models both old and new, and he currently manages the motorsport operation at Sydney\\u2019s V-Sport, meaning he is intimately acquainted with the&nbsp;<a href=\\"http:\\/\\/www.speedhunters.com\\/2015\\/11\\/is-this-the-fastest-86-in-the-world\\/\\">V-Sport Toyota 86<\\/a>&nbsp;that impressed all who saw it at WTAC.<\\/p>","paragraph6":"<p>A friend of John\\u2019s had an exceptionally straight 1600 and no space to keep it, so John did the only sensible thing and bought it from him. Over the next two years it was transformed by John and whatever friends could lend a hand after hours at V-Sport\\u2019s Western Sydney workshop.<\\/p>"}},"82":{"type":"image","enabled":"1","fields":{"image1":["84"],"image2":["83"],"image3":["85"],"image4":["90"],"image5":["92"],"image6":["91"],"image7":["88"]}},"93":{"type":"bonusImages","enabled":"1","fields":{"image":["86","87","89"]}}}}}', '2016-03-03 12:11:45', '2016-03-03 12:11:45', 'f7eee950-b1fe-43df-ba7a-3aa43818a412'),
(43, 77, 5, 1, 'en', 5, '', '{"typeId":"5","authorId":"1","title":"1600 Reasons To Love This Datsun - Speed Hunters","slug":"1600-reasons-to-love-this-datsun-speed-hunters","postDate":1457005140,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"8":{"78":{"type":"heading","enabled":"1","fields":{"heading":"1600 Reasons To Love This Datsun - Speed Hunters","subHeading":"Old School Slow Living - Fast"}},"80":{"type":"introduction","enabled":"1","fields":{"introduction":"Looking back at the feature cars I\\u2019ve photographed and written about over the past 12 months, it\\u2019s hard to find much similarity. Between wide-body Porsches, blown burnout machines and retro Mopar racers, four tyres are pretty much all they\\u2019ve shared in common. But then again, that\\u2019s half the fun of being a Speedhunter \\u2013 we get to write our own rules."}},"81":{"type":"body","enabled":"1","fields":{"paragraph":"<p>However, there is one common theme that I\\u2019ve identified in the cars I choose from the many, many possibilities: overall completeness. Yes, there are plenty of eye-catching rides out there, but the ones that really make a mark on me are those where the owner has well and truly reinvented the vehicle into something different and new.<\\/p>"}},"82":{"type":"image","enabled":"1","fields":{"image":["84","85","86","87","88","89","90","91","92"]}},"93":{"type":"bonusImages","enabled":"1","fields":{"image":["86","87","89"]}}}}}', '2016-03-03 13:47:10', '2016-03-03 13:47:10', '88c03507-4767-4983-8e9e-a2fabae2997d');
INSERT INTO `craft_entryversions` (`id`, `entryId`, `sectionId`, `creatorId`, `locale`, `num`, `notes`, `data`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(44, 77, 5, 1, 'en', 6, '', '{"typeId":"5","authorId":"1","title":"1600 Reasons To Love This Datsun - Speed Hunters","slug":"1600-reasons-to-love-this-datsun-speed-hunters","postDate":1457005140,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"8":{"78":{"type":"heading","enabled":"1","fields":{"heading":"1600 Reasons To Love This Datsun - Speed Hunters","subHeading":"Old School Slow Living - Fast"}},"80":{"type":"introduction","enabled":"1","fields":{"introduction":"Looking back at the feature cars I\\u2019ve photographed and written about over the past 12 months, it\\u2019s hard to find much similarity. Between wide-body Porsches, blown burnout machines and retro Mopar racers, four tyres are pretty much all they\\u2019ve shared in common. But then again, that\\u2019s half the fun of being a Speedhunter \\u2013 we get to write our own rules."}},"81":{"type":"body","enabled":"1","fields":{"paragraph":"<p>However, there is one common theme that I\\u2019ve identified in the cars I choose from the many, many possibilities: overall completeness. Yes, there are plenty of eye-catching rides out there, but the ones that really make a mark on me are those where the owner has well and truly reinvented the vehicle into something different and new.<span><\\/span><\\/p><p><span><\\/span><img src=\\"http:\\/\\/dev.craftblog.com\\/\\/assets\\/images\\/Datsun-1600-Wagon-8185-800x533.jpg#asset:83\\" style=\\"text-align: center; background-color: initial;\\"><\\/p><p>When this little Datsun 1600 wagon arrived at our shoot location, it was actually the first time I\\u2019d seen it completed in the flesh. But having spied the car as a&nbsp;work-in-progress at the&nbsp;<a href=\\"http:\\/\\/www.speedhunters.com\\/2015\\/10\\/the-speedhunters-wtac-wrap-up\\/\\">World Time Attack Challenge<\\/a>&nbsp;last year, I started following every step of the build on the owner\\u2019s social media pages. Thus, it was a bit of&nbsp;<em>deja<\\/em><em>&nbsp;vu<\\/em>&nbsp;to see the car for the first time despite knowing it quite well.<\\/p><p><img src=\\"http:\\/\\/dev.craftblog.com\\/\\/assets\\/images\\/Datsun-1600-Wagon-8197-800x533.jpg#asset:84\\"><br><\\/p><p>As we all know, seeing a car in the flesh is infinitely better than in some poorly compressed Facebook photo album. The first thing that struck me about the wagon was the paint \\u2013 such a subtle colour, but expertly mixed and applied.<br><\\/p><p><img src=\\"http:\\/\\/dev.craftblog.com\\/\\/assets\\/images\\/Datsun-1600-Wagon-8232-800x533.jpg#asset:85\\"><br><\\/p><p>It\\u2019s a custom hue that is closely related to the \\u2018Gun Metallic\\u2019 available on the R35 GT-R, keeping things in the family so to speak. I really wanted to let the paintwork speak for itself in these photos,&nbsp;so hopefully you can enjoy it as much as I did on this mercifully grey mid-summer\\u2019s morning.<br><\\/p><p><img src=\\"http:\\/\\/dev.craftblog.com\\/\\/assets\\/images\\/Datsun-1600-Wagon-8269-800x533.jpg#asset:86\\"><br><\\/p><p>The owner and creator is no stranger to vehicular customisation. John\\u2019s past rides have included an eclectic mix of Australian and Japanese models both old and new, and he currently manages the motorsport operation at Sydney\\u2019s V-Sport, meaning he is intimately acquainted with the&nbsp;<a href=\\"http:\\/\\/www.speedhunters.com\\/2015\\/11\\/is-this-the-fastest-86-in-the-world\\/\\">V-Sport Toyota 86<\\/a>&nbsp;that impressed all who saw it at WTAC.<br><\\/p>"}},"82":{"type":"image","enabled":"1","fields":{"image":""}},"93":{"type":"bonusImages","enabled":"1","fields":{"image":["86","87","89","83","84","85","88","90","91","92"]}}}}}', '2016-03-03 13:55:36', '2016-03-03 13:55:36', '6619f6ff-bb8b-401e-9aa3-d511c8375863');

-- --------------------------------------------------------

--
-- Table structure for table `craft_fieldgroups`
--

CREATE TABLE IF NOT EXISTS `craft_fieldgroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_fieldgroups_name_unq_idx` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `craft_fieldgroups`
--

INSERT INTO `craft_fieldgroups` (`id`, `name`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Default', '2016-03-01 09:26:00', '2016-03-01 09:26:00', 'c296737b-cf66-454a-881b-43baa0d0c306'),
(2, 'Music', '2016-03-03 06:55:02', '2016-03-03 06:55:02', '53aef9ce-7ed4-43fe-bfbd-d7ececfe3658');

-- --------------------------------------------------------

--
-- Table structure for table `craft_fieldlayoutfields`
--

CREATE TABLE IF NOT EXISTS `craft_fieldlayoutfields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `layoutId` int(11) NOT NULL,
  `tabId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `required` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_fieldlayoutfields_layoutId_fieldId_unq_idx` (`layoutId`,`fieldId`),
  KEY `craft_fieldlayoutfields_sortOrder_idx` (`sortOrder`),
  KEY `craft_fieldlayoutfields_tabId_fk` (`tabId`),
  KEY `craft_fieldlayoutfields_fieldId_fk` (`fieldId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=212 ;

--
-- Dumping data for table `craft_fieldlayoutfields`
--

INSERT INTO `craft_fieldlayoutfields` (`id`, `layoutId`, `tabId`, `fieldId`, `required`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(12, 12, 8, 3, 0, 1, '2016-03-01 11:02:00', '2016-03-01 11:02:00', 'd7d098f7-eed1-4e0a-bba3-3581f5868ef5'),
(13, 12, 8, 1, 1, 2, '2016-03-01 11:02:00', '2016-03-01 11:02:00', '141f32fa-8bcf-4b6b-b2e6-772c589c3321'),
(14, 12, 8, 2, 0, 3, '2016-03-01 11:02:00', '2016-03-01 11:02:00', 'd62d70ff-6e8f-45db-b365-08465f142eb3'),
(15, 13, 9, 3, 0, 1, '2016-03-01 11:02:18', '2016-03-01 11:02:18', 'd97b7eab-87af-4b1d-83d3-e10ee4246df0'),
(16, 13, 9, 1, 1, 2, '2016-03-01 11:02:18', '2016-03-01 11:02:18', 'e309bb28-51f3-41d8-8fb1-d856d397cee4'),
(39, 25, 17, 6, 0, 1, '2016-03-02 12:46:24', '2016-03-02 12:46:24', 'a257d106-2e7f-47e1-bcf1-c57f314dbf4e'),
(40, 26, 18, 3, 0, 1, '2016-03-02 13:28:06', '2016-03-02 13:28:06', '2e51c26e-8c70-40e2-91a7-26d0b7841c06'),
(41, 27, 19, 3, 0, 1, '2016-03-02 13:30:04', '2016-03-02 13:30:04', '8856782d-a399-4d06-b079-6748a3659ed6'),
(42, 27, 19, 1, 0, 2, '2016-03-02 13:30:04', '2016-03-02 13:30:04', '8e697d39-1c87-43e1-a828-4030bbdb638b'),
(43, 27, 19, 2, 0, 3, '2016-03-02 13:30:04', '2016-03-02 13:30:04', 'a7c7f670-5747-4888-9a67-8e05ae4092b0'),
(44, 27, 19, 5, 0, 4, '2016-03-02 13:30:04', '2016-03-02 13:30:04', '456ef3a4-05da-4e91-b53e-27e0ffd37089'),
(45, 27, 19, 4, 0, 5, '2016-03-02 13:30:04', '2016-03-02 13:30:04', '4788e0b5-90cb-4d9e-963b-86e662ff14f7'),
(46, 28, 20, 1, 0, 1, '2016-03-02 14:13:54', '2016-03-02 14:13:54', '8f56879a-7888-45bf-af56-7a1b1e773a4f'),
(47, 29, 21, 4, 0, 1, '2016-03-03 06:57:52', '2016-03-03 06:57:52', 'd411c82c-e139-4041-ab25-b6e66cf3c0b6'),
(48, 29, 21, 3, 0, 2, '2016-03-03 06:57:52', '2016-03-03 06:57:52', '353a0a42-4cb9-46f3-b1a6-b7c086e4069f'),
(49, 29, 21, 1, 0, 3, '2016-03-03 06:57:52', '2016-03-03 06:57:52', '79f65668-0d6a-45aa-b5b5-72280a56bad3'),
(50, 29, 21, 7, 0, 4, '2016-03-03 06:57:52', '2016-03-03 06:57:52', '4980ba1e-cfb0-493e-9366-1bc5a228b9ee'),
(51, 29, 21, 6, 0, 5, '2016-03-03 06:57:52', '2016-03-03 06:57:52', '3536acef-b189-4fba-a17e-fcece8781ee2'),
(52, 29, 21, 5, 0, 6, '2016-03-03 06:57:52', '2016-03-03 06:57:52', '14dd8fb0-d261-448d-9f09-f70d5891c405'),
(53, 29, 21, 2, 0, 7, '2016-03-03 06:57:52', '2016-03-03 06:57:52', 'cb6d6e71-63d6-435b-a320-857b811cd44a'),
(74, 41, 30, 8, 0, 1, '2016-03-03 11:36:35', '2016-03-03 11:36:35', 'da015f80-66e3-4e27-89d7-c67350d89b45'),
(206, 89, 78, 9, 1, 1, '2016-03-03 13:47:07', '2016-03-03 13:47:07', 'eae03a7f-3f7a-419a-92c3-91f6ea48bd4f'),
(207, 89, 78, 26, 0, 2, '2016-03-03 13:47:07', '2016-03-03 13:47:07', 'f3958699-e540-4db6-8799-425e679bc6ba'),
(208, 90, 79, 11, 0, 1, '2016-03-03 13:47:07', '2016-03-03 13:47:07', '6af46911-0fec-41ed-a099-de766c05f7ec'),
(209, 91, 80, 12, 0, 1, '2016-03-03 13:47:07', '2016-03-03 13:47:07', '52b10247-431d-4695-bd69-b1ad9bfe3ca1'),
(210, 92, 81, 18, 0, 1, '2016-03-03 13:47:07', '2016-03-03 13:47:07', 'd30637d4-5603-49c3-9e0a-6dc9668b9581'),
(211, 93, 82, 25, 0, 1, '2016-03-03 13:47:07', '2016-03-03 13:47:07', '87a479c2-d2cc-48b5-ad03-f5aebbe336f8');

-- --------------------------------------------------------

--
-- Table structure for table `craft_fieldlayouts`
--

CREATE TABLE IF NOT EXISTS `craft_fieldlayouts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_fieldlayouts_type_idx` (`type`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=94 ;

--
-- Dumping data for table `craft_fieldlayouts`
--

INSERT INTO `craft_fieldlayouts` (`id`, `type`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(12, 'Entry', '2016-03-01 11:02:00', '2016-03-01 11:02:00', '15f6904d-eca7-48ad-8622-30199dfbd74b'),
(13, 'Entry', '2016-03-01 11:02:18', '2016-03-01 11:02:18', 'e4461cdb-458b-4c49-94d3-0f718ced2231'),
(25, 'GlobalSet', '2016-03-02 12:46:24', '2016-03-02 12:46:24', '89dbec41-e7be-413e-9f50-b53fbc626517'),
(26, 'Asset', '2016-03-02 13:28:06', '2016-03-02 13:28:06', '163dfa37-b071-4de9-aac0-6bedf7b78690'),
(27, 'Entry', '2016-03-02 13:30:04', '2016-03-02 13:30:04', 'cab917ef-0d8f-4f00-b0fe-559740f0433c'),
(28, 'Tag', '2016-03-02 14:13:54', '2016-03-02 14:13:54', 'fa596f18-e5ad-4e2f-905b-cd1c8dd2ef54'),
(29, 'Entry', '2016-03-03 06:57:52', '2016-03-03 06:57:52', 'ea024eaf-f3eb-404c-8085-0e137f77ff3b'),
(32, 'Category', '2016-03-03 07:30:18', '2016-03-03 07:30:18', 'a3d656da-8f38-4a97-af73-3b214ab7a8df'),
(41, 'Entry', '2016-03-03 11:36:35', '2016-03-03 11:36:35', '13a37fd5-a9a3-4205-9d94-05829b186465'),
(89, 'MatrixBlock', '2016-03-03 13:47:07', '2016-03-03 13:47:07', '747700ad-f320-417d-a69c-7ce378d360c2'),
(90, 'MatrixBlock', '2016-03-03 13:47:07', '2016-03-03 13:47:07', '4a2dd7ca-a9ed-44a7-ab00-ff7b4143d953'),
(91, 'MatrixBlock', '2016-03-03 13:47:07', '2016-03-03 13:47:07', 'fbc6dab4-0068-4ea9-ad40-3aff24d325a5'),
(92, 'MatrixBlock', '2016-03-03 13:47:07', '2016-03-03 13:47:07', '9bcb15ab-466f-4cdf-b11e-e643859ca78c'),
(93, 'MatrixBlock', '2016-03-03 13:47:07', '2016-03-03 13:47:07', '76120dca-a0ee-4118-94bd-18fbbe3ac2f2');

-- --------------------------------------------------------

--
-- Table structure for table `craft_fieldlayouttabs`
--

CREATE TABLE IF NOT EXISTS `craft_fieldlayouttabs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `layoutId` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_fieldlayouttabs_sortOrder_idx` (`sortOrder`),
  KEY `craft_fieldlayouttabs_layoutId_fk` (`layoutId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=83 ;

--
-- Dumping data for table `craft_fieldlayouttabs`
--

INSERT INTO `craft_fieldlayouttabs` (`id`, `layoutId`, `name`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(8, 12, 'Content', 1, '2016-03-01 11:02:00', '2016-03-01 11:02:00', 'd26c1b83-09f8-4ca5-b5f6-f009f733fddb'),
(9, 13, 'Content', 1, '2016-03-01 11:02:18', '2016-03-01 11:02:18', '7b605edb-ce21-493d-99f4-db41adc9e0fd'),
(17, 25, 'Content', 1, '2016-03-02 12:46:24', '2016-03-02 12:46:24', '8e976b3c-ee79-4eb2-b4e2-6bcdfe1ca600'),
(18, 26, 'Content', 1, '2016-03-02 13:28:06', '2016-03-02 13:28:06', 'b83d51d0-900f-4f52-ae98-7b773ea19af4'),
(19, 27, 'Default', 1, '2016-03-02 13:30:04', '2016-03-02 13:30:04', 'effab9b6-2116-45ef-804c-fda6f20682ab'),
(20, 28, 'Content', 1, '2016-03-02 14:13:54', '2016-03-02 14:13:54', 'e80dff08-d3dc-46ff-a72e-d44c90df75c3'),
(21, 29, 'Default', 1, '2016-03-03 06:57:52', '2016-03-03 06:57:52', 'ce9aa5b2-cea1-4c8f-a6ff-2a21f1150798'),
(30, 41, 'Full Review Article Layout', 1, '2016-03-03 11:36:35', '2016-03-03 11:36:35', 'c0278a0e-c93a-49e5-a6b6-3fcc42c89305'),
(78, 89, 'Content', 1, '2016-03-03 13:47:07', '2016-03-03 13:47:07', 'dd7d4f8f-af77-47f7-a16b-92c84cf29e0d'),
(79, 90, 'Content', 1, '2016-03-03 13:47:07', '2016-03-03 13:47:07', '232236f1-3e00-4dfd-9d14-2a121b2acb5a'),
(80, 91, 'Content', 1, '2016-03-03 13:47:07', '2016-03-03 13:47:07', '25a3bece-8aeb-4e33-bcab-36b0c110d6fd'),
(81, 92, 'Content', 1, '2016-03-03 13:47:07', '2016-03-03 13:47:07', 'e5013feb-44a7-4697-90fd-518142cbd368'),
(82, 93, 'Content', 1, '2016-03-03 13:47:07', '2016-03-03 13:47:07', '8c61d127-8247-4d93-8682-4ee04a13ac62');

-- --------------------------------------------------------

--
-- Table structure for table `craft_fields`
--

CREATE TABLE IF NOT EXISTS `craft_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(58) COLLATE utf8_unicode_ci NOT NULL,
  `context` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'global',
  `instructions` text COLLATE utf8_unicode_ci,
  `translatable` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_fields_handle_context_unq_idx` (`handle`,`context`),
  KEY `craft_fields_context_idx` (`context`),
  KEY `craft_fields_groupId_fk` (`groupId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=27 ;

--
-- Dumping data for table `craft_fields`
--

INSERT INTO `craft_fields` (`id`, `groupId`, `name`, `handle`, `context`, `instructions`, `translatable`, `type`, `settings`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'Body', 'body', 'global', NULL, 1, 'RichText', '{"configFile":"Standard.json","columnType":"text"}', '2016-03-01 09:26:01', '2016-03-01 09:26:01', '4c7e854b-9ad9-495f-afa8-d77d235ed434'),
(2, 1, 'Tags', 'tags', 'global', NULL, 0, 'Tags', '{"source":"taggroup:1"}', '2016-03-01 09:26:01', '2016-03-01 09:26:01', '0fd862c3-bf46-4c86-b000-e614793dfa35'),
(3, 1, 'Header Image', 'headerImage', 'global', 'the header image, which will show up in the blog listing\r\n', 0, 'Assets', '{"useSingleFolder":"","sources":"*","defaultUploadLocationSource":"1","defaultUploadLocationSubpath":"","singleUploadLocationSource":"1","singleUploadLocationSubpath":"","restrictFiles":"","limit":"","viewMode":"list","selectionLabel":""}', '2016-03-01 10:10:32', '2016-03-02 14:08:28', '7ec60a2f-35b4-4c7b-a6d8-e91767d9a08b'),
(4, 1, 'Categories', 'categories', 'global', '', 0, 'Categories', '{"source":"group:2","limit":"","selectionLabel":""}', '2016-03-01 12:01:55', '2016-03-03 07:29:59', 'ec7218d8-1d6c-4778-aada-7049caa84a9e'),
(5, 1, 'Image', 'image', 'global', 'field for adding images to content', 0, 'Assets', '{"useSingleFolder":"","sources":"*","defaultUploadLocationSource":"1","defaultUploadLocationSubpath":"{baseUrl}\\/assets\\/images\\/","singleUploadLocationSource":"1","singleUploadLocationSubpath":"","restrictFiles":"","limit":"","viewMode":"list","selectionLabel":""}', '2016-03-02 12:26:36', '2016-03-02 12:45:45', '6b0c5dc0-7658-42f0-9adc-417d3b8b8867'),
(6, 1, 'Image_Url', 'imageUrl', 'global', '', 0, 'PlainText', '{"placeholder":"","maxLength":"","multiline":"","initialRows":"4"}', '2016-03-02 12:46:01', '2016-03-02 12:46:01', 'd6a97fa2-4d81-47a5-87f1-91eb3e3cea62'),
(7, 2, 'Music Article Body', 'musicArticleBody', 'global', 'Body of the article', 0, 'RichText', '{"configFile":"","cleanupHtml":"1","purifyHtml":"1","columnType":"text"}', '2016-03-03 06:57:00', '2016-03-03 06:57:00', 'd05b0f1c-3a14-42c1-8a15-cb1e44ce5a25'),
(8, 1, 'Neo', 'neo', 'global', 'Unfortunately, no one can be told what The Matrix is. You''ll have to see it for yourself.', 0, 'Matrix', '{"maxBlocks":null}', '2016-03-03 11:25:16', '2016-03-03 13:47:06', '462f4066-a66a-4663-aab3-8f7324fa5e80'),
(9, NULL, 'Heading', 'heading', 'matrixBlockType:1', 'Page heading', 0, 'PlainText', '{"placeholder":"You used to call me on my cellphone","maxLength":"","multiline":"","initialRows":"4"}', '2016-03-03 11:25:17', '2016-03-03 13:47:06', '97232640-862e-46c1-83a1-5a6d6781ed82'),
(11, NULL, 'Introduction', 'introduction', 'matrixBlockType:3', 'This is the introduction portion of your article', 0, 'PlainText', '{"placeholder":"","maxLength":"","multiline":"","initialRows":"4"}', '2016-03-03 11:34:43', '2016-03-03 13:47:07', '2843abbe-2d9c-4068-850c-d373151e1c49'),
(12, NULL, 'Paragraph', 'paragraph', 'matrixBlockType:4', 'The first paragraph of your article ', 0, 'RichText', '{"configFile":"","cleanupHtml":"1","purifyHtml":"","columnType":"text"}', '2016-03-03 11:34:44', '2016-03-03 13:47:07', '5adc6c23-0674-44a5-938a-52c5c05d0a6a'),
(18, NULL, 'Image', 'image', 'matrixBlockType:5', 'The first image in an article', 0, 'Assets', '{"useSingleFolder":"","sources":"*","defaultUploadLocationSource":"1","defaultUploadLocationSubpath":"{baseUrl}\\/assets\\/images\\/","singleUploadLocationSource":"1","singleUploadLocationSubpath":"","restrictFiles":"","limit":"","viewMode":"large","selectionLabel":""}', '2016-03-03 11:34:46', '2016-03-03 13:47:07', '94ce01d0-9a79-49b3-a9eb-a4f10d94ebcb'),
(25, NULL, 'Image', 'image', 'matrixBlockType:6', 'for bonus images', 0, 'Assets', '{"useSingleFolder":"","sources":"*","defaultUploadLocationSource":"1","defaultUploadLocationSubpath":"{baseUrl}\\/assets\\/images\\/","singleUploadLocationSource":"1","singleUploadLocationSubpath":"","restrictFiles":"","limit":"","viewMode":"large","selectionLabel":"Add an image"}', '2016-03-03 11:34:48', '2016-03-03 13:47:07', '7d9b73b6-7343-483b-a16d-a5660b28b233'),
(26, NULL, 'Sub-heading', 'subHeading', 'matrixBlockType:1', '', 0, 'PlainText', '{"placeholder":"","maxLength":"","multiline":"","initialRows":"4"}', '2016-03-03 12:11:01', '2016-03-03 13:47:06', '5ca2746c-01d9-4cad-a9c5-744c31cfa21e');

-- --------------------------------------------------------

--
-- Table structure for table `craft_globalsets`
--

CREATE TABLE IF NOT EXISTS `craft_globalsets` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_globalsets_name_unq_idx` (`name`),
  UNIQUE KEY `craft_globalsets_handle_unq_idx` (`handle`),
  KEY `craft_globalsets_fieldLayoutId_fk` (`fieldLayoutId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_globalsets`
--

INSERT INTO `craft_globalsets` (`id`, `name`, `handle`, `fieldLayoutId`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(60, 'logo', 'logo', 25, '2016-03-02 12:25:56', '2016-03-02 12:46:24', 'e00cb2ce-ae9d-49a5-9aef-a7df353f9bc2');

-- --------------------------------------------------------

--
-- Table structure for table `craft_info`
--

CREATE TABLE IF NOT EXISTS `craft_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `build` int(11) unsigned NOT NULL,
  `schemaVersion` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `releaseDate` datetime NOT NULL,
  `edition` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `siteName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `siteUrl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `timezone` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `on` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `maintenance` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `track` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `craft_info`
--

INSERT INTO `craft_info` (`id`, `version`, `build`, `schemaVersion`, `releaseDate`, `edition`, `siteName`, `siteUrl`, `timezone`, `on`, `maintenance`, `track`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, '2.5', 2767, '2.5.12', '2016-02-24 20:48:05', 0, 'Craftblog', 'http://dev.craftblog.com', 'UTC', 1, 0, 'stable', '2016-03-01 09:25:57', '2016-03-01 09:25:57', 'fbe3f65d-23b1-46b8-b768-7d7ece8bc571');

-- --------------------------------------------------------

--
-- Table structure for table `craft_locales`
--

CREATE TABLE IF NOT EXISTS `craft_locales` (
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`locale`),
  KEY `craft_locales_sortOrder_idx` (`sortOrder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_locales`
--

INSERT INTO `craft_locales` (`locale`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
('en', 1, '2016-03-01 09:25:58', '2016-03-01 09:25:58', '5d7d60e6-fecf-435e-8c1e-cd5db398bed0');

-- --------------------------------------------------------

--
-- Table structure for table `craft_matrixblocks`
--

CREATE TABLE IF NOT EXISTS `craft_matrixblocks` (
  `id` int(11) NOT NULL,
  `ownerId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `typeId` int(11) DEFAULT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `ownerLocale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_matrixblocks_ownerId_idx` (`ownerId`),
  KEY `craft_matrixblocks_fieldId_idx` (`fieldId`),
  KEY `craft_matrixblocks_typeId_idx` (`typeId`),
  KEY `craft_matrixblocks_sortOrder_idx` (`sortOrder`),
  KEY `craft_matrixblocks_ownerLocale_fk` (`ownerLocale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_matrixblocks`
--

INSERT INTO `craft_matrixblocks` (`id`, `ownerId`, `fieldId`, `typeId`, `sortOrder`, `ownerLocale`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(78, 77, 8, 1, 1, NULL, '2016-03-03 11:39:15', '2016-03-03 13:55:36', '75d221b1-6155-4d7e-9b30-9960d294eeba'),
(80, 77, 8, 3, 2, NULL, '2016-03-03 11:39:15', '2016-03-03 13:55:36', 'b74f36b9-958e-4107-8c04-9a98d6df1d78'),
(81, 77, 8, 4, 3, NULL, '2016-03-03 11:39:15', '2016-03-03 13:55:36', 'ed86d098-3b51-42c1-97ed-a60b75c1f2b6'),
(82, 77, 8, 5, 4, NULL, '2016-03-03 11:43:43', '2016-03-03 13:55:36', '17c581ed-647d-4006-8bad-8a70b669b95f'),
(93, 77, 8, 6, 5, NULL, '2016-03-03 11:51:56', '2016-03-03 13:55:36', '4e0242b9-e60f-4bdb-88d9-67720c2684d0');

-- --------------------------------------------------------

--
-- Table structure for table `craft_matrixblocktypes`
--

CREATE TABLE IF NOT EXISTS `craft_matrixblocktypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fieldId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_matrixblocktypes_name_fieldId_unq_idx` (`name`,`fieldId`),
  UNIQUE KEY `craft_matrixblocktypes_handle_fieldId_unq_idx` (`handle`,`fieldId`),
  KEY `craft_matrixblocktypes_fieldId_fk` (`fieldId`),
  KEY `craft_matrixblocktypes_fieldLayoutId_fk` (`fieldLayoutId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `craft_matrixblocktypes`
--

INSERT INTO `craft_matrixblocktypes` (`id`, `fieldId`, `fieldLayoutId`, `name`, `handle`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 8, 89, 'Heading', 'heading', 1, '2016-03-03 11:25:17', '2016-03-03 13:47:07', '0b13eba9-cd45-48c1-b98c-f0b0eac9e553'),
(3, 8, 90, 'Introduction', 'introduction', 2, '2016-03-03 11:34:43', '2016-03-03 13:47:07', '9ba5dcc4-178c-431d-9e10-13e7b867657f'),
(4, 8, 91, 'Body', 'body', 3, '2016-03-03 11:34:44', '2016-03-03 13:47:07', 'f3fac35e-efd5-4da4-9847-bdbc1ece4697'),
(5, 8, 92, 'Image', 'image', 4, '2016-03-03 11:34:45', '2016-03-03 13:47:07', 'eb919c35-b295-4925-8e2b-ebacf363dbf5'),
(6, 8, 93, 'Bonus Images', 'bonusImages', 5, '2016-03-03 11:34:48', '2016-03-03 13:47:07', '07270518-3475-4e45-acd2-b46001f2231d');

-- --------------------------------------------------------

--
-- Table structure for table `craft_matrixcontent_neo`
--

CREATE TABLE IF NOT EXISTS `craft_matrixcontent_neo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `field_heading_heading` text COLLATE utf8_unicode_ci,
  `field_introduction_introduction` text COLLATE utf8_unicode_ci,
  `field_body_paragraph` text COLLATE utf8_unicode_ci,
  `field_heading_subHeading` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_matrixcontent_neo_elementId_locale_unq_idx` (`elementId`,`locale`),
  KEY `craft_matrixcontent_neo_locale_fk` (`locale`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `craft_matrixcontent_neo`
--

INSERT INTO `craft_matrixcontent_neo` (`id`, `elementId`, `locale`, `field_heading_heading`, `field_introduction_introduction`, `field_body_paragraph`, `field_heading_subHeading`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 78, 'en', '1600 Reasons To Love This Datsun - Speed Hunters', NULL, NULL, 'Old School Slow Living - Fast', '2016-03-03 11:39:15', '2016-03-03 13:55:36', '1ec6f018-8164-458a-bb4a-14d08ce6b9a8'),
(3, 80, 'en', NULL, 'Looking back at the feature cars I’ve photographed and written about over the past 12 months, it’s hard to find much similarity. Between wide-body Porsches, blown burnout machines and retro Mopar racers, four tyres are pretty much all they’ve shared in common. But then again, that’s half the fun of being a Speedhunter – we get to write our own rules.', NULL, NULL, '2016-03-03 11:39:15', '2016-03-03 13:55:36', '2be58eba-3574-4bad-b0eb-835cd19a3889'),
(4, 81, 'en', NULL, NULL, '<p>However, there is one common theme that I’ve identified in the cars I choose from the many, many possibilities: overall completeness. Yes, there are plenty of eye-catching rides out there, but the ones that really make a mark on me are those where the owner has well and truly reinvented the vehicle into something different and new.</p><p><img src="{asset:83:url}" style="text-align: center; background-color: initial;"></p><p>When this little Datsun 1600 wagon arrived at our shoot location, it was actually the first time I’d seen it completed in the flesh. But having spied the car as a&nbsp;work-in-progress at the&nbsp;<a href="http://www.speedhunters.com/2015/10/the-speedhunters-wtac-wrap-up/">World Time Attack Challenge</a>&nbsp;last year, I started following every step of the build on the owner’s social media pages. Thus, it was a bit of&nbsp;<em>deja</em><em>&nbsp;vu</em>&nbsp;to see the car for the first time despite knowing it quite well.</p><p><img src="{asset:84:url}"><br></p><p>As we all know, seeing a car in the flesh is infinitely better than in some poorly compressed Facebook photo album. The first thing that struck me about the wagon was the paint – such a subtle colour, but expertly mixed and applied.<br></p><p><img src="{asset:85:url}"><br></p><p>It’s a custom hue that is closely related to the ‘Gun Metallic’ available on the R35 GT-R, keeping things in the family so to speak. I really wanted to let the paintwork speak for itself in these photos,&nbsp;so hopefully you can enjoy it as much as I did on this mercifully grey mid-summer’s morning.<br></p><p><img src="{asset:86:url}"><br></p><p>The owner and creator is no stranger to vehicular customisation. John’s past rides have included an eclectic mix of Australian and Japanese models both old and new, and he currently manages the motorsport operation at Sydney’s V-Sport, meaning he is intimately acquainted with the&nbsp;<a href="http://www.speedhunters.com/2015/11/is-this-the-fastest-86-in-the-world/">V-Sport Toyota 86</a>&nbsp;that impressed all who saw it at WTAC.<br></p>', NULL, '2016-03-03 11:39:15', '2016-03-03 13:55:36', '8684cd24-f151-4678-bfe4-f116edcf898d'),
(5, 82, 'en', NULL, NULL, NULL, NULL, '2016-03-03 11:43:43', '2016-03-03 13:55:36', 'bd9ea0ed-f205-4981-ad86-269e9b4927a9'),
(6, 93, 'en', NULL, NULL, NULL, NULL, '2016-03-03 11:51:56', '2016-03-03 13:55:36', '783d8fa1-aa70-4ffe-bcc9-b6b483fe9c30');

-- --------------------------------------------------------

--
-- Table structure for table `craft_migrations`
--

CREATE TABLE IF NOT EXISTS `craft_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pluginId` int(11) DEFAULT NULL,
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `applyTime` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_migrations_version_unq_idx` (`version`),
  KEY `craft_migrations_pluginId_fk` (`pluginId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=42 ;

--
-- Dumping data for table `craft_migrations`
--

INSERT INTO `craft_migrations` (`id`, `pluginId`, `version`, `applyTime`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, NULL, 'm000000_000000_base', '2016-03-01 09:25:58', '2016-03-01 09:25:58', '2016-03-01 09:25:58', 'c4450f65-890c-41d3-83c5-8e0a5db3893a'),
(2, NULL, 'm140730_000001_add_filename_and_format_to_transformindex', '2016-03-01 09:25:58', '2016-03-01 09:25:58', '2016-03-01 09:25:58', '430eec30-aea3-42b8-b130-7f874269a308'),
(3, NULL, 'm140815_000001_add_format_to_transforms', '2016-03-01 09:25:58', '2016-03-01 09:25:58', '2016-03-01 09:25:58', '0e7286c6-f515-44a3-833e-2d9622c74145'),
(4, NULL, 'm140822_000001_allow_more_than_128_items_per_field', '2016-03-01 09:25:58', '2016-03-01 09:25:58', '2016-03-01 09:25:58', 'ab9b9066-133d-46f3-bd90-c999ee364c0f'),
(5, NULL, 'm140829_000001_single_title_formats', '2016-03-01 09:25:58', '2016-03-01 09:25:58', '2016-03-01 09:25:58', '72168bb7-b9be-46b8-b978-07b5e9d0899b'),
(6, NULL, 'm140831_000001_extended_cache_keys', '2016-03-01 09:25:58', '2016-03-01 09:25:58', '2016-03-01 09:25:58', 'acb61b91-6833-45cf-aa43-2935e2d325fa'),
(7, NULL, 'm140922_000001_delete_orphaned_matrix_blocks', '2016-03-01 09:25:58', '2016-03-01 09:25:58', '2016-03-01 09:25:58', '9a63464a-7aba-4238-8b4c-98590ab7145f'),
(8, NULL, 'm141008_000001_elements_index_tune', '2016-03-01 09:25:58', '2016-03-01 09:25:58', '2016-03-01 09:25:58', '25647dce-71a4-4a13-8b6e-0dd40236a60c'),
(9, NULL, 'm141009_000001_assets_source_handle', '2016-03-01 09:25:58', '2016-03-01 09:25:58', '2016-03-01 09:25:58', 'b5b14628-5f51-452f-864b-17f09065566f'),
(10, NULL, 'm141024_000001_field_layout_tabs', '2016-03-01 09:25:58', '2016-03-01 09:25:58', '2016-03-01 09:25:58', '2ec74efa-7c91-4e71-9f68-d89c4386f267'),
(11, NULL, 'm141030_000000_plugin_schema_versions', '2016-03-01 09:25:58', '2016-03-01 09:25:58', '2016-03-01 09:25:58', '9cd6c00a-bd3d-49ed-90f9-68f77bd61bd9'),
(12, NULL, 'm141030_000001_drop_structure_move_permission', '2016-03-01 09:25:58', '2016-03-01 09:25:58', '2016-03-01 09:25:58', '026cda3f-252c-4d72-831b-ce3486ce8afc'),
(13, NULL, 'm141103_000001_tag_titles', '2016-03-01 09:25:58', '2016-03-01 09:25:58', '2016-03-01 09:25:58', '9c8079d5-05d2-4784-ba5d-fd71b7aea79a'),
(14, NULL, 'm141109_000001_user_status_shuffle', '2016-03-01 09:25:58', '2016-03-01 09:25:58', '2016-03-01 09:25:58', 'b0252af3-2ed4-48d0-8600-76e879e01bb2'),
(15, NULL, 'm141126_000001_user_week_start_day', '2016-03-01 09:25:58', '2016-03-01 09:25:58', '2016-03-01 09:25:58', 'cba51a62-f7c3-4976-8782-c0a081d361b3'),
(16, NULL, 'm150210_000001_adjust_user_photo_size', '2016-03-01 09:25:58', '2016-03-01 09:25:58', '2016-03-01 09:25:58', 'adbce76d-2a07-4da6-9083-0cd88886e355'),
(17, NULL, 'm150724_000001_adjust_quality_settings', '2016-03-01 09:25:58', '2016-03-01 09:25:58', '2016-03-01 09:25:58', 'cccd1056-3d58-465c-8e59-d2d2179a45e7'),
(18, NULL, 'm150827_000000_element_index_settings', '2016-03-01 09:25:58', '2016-03-01 09:25:58', '2016-03-01 09:25:58', 'b8a43672-592c-4607-8df1-bb6d85163e88'),
(19, NULL, 'm150918_000001_add_colspan_to_widgets', '2016-03-01 09:25:58', '2016-03-01 09:25:58', '2016-03-01 09:25:58', '32d71c7a-d26e-4d39-9623-2a6ad0caeb2c'),
(20, NULL, 'm151007_000000_clear_asset_caches', '2016-03-01 09:25:58', '2016-03-01 09:25:58', '2016-03-01 09:25:58', 'd0afd93e-83c7-473b-96dd-ffccb2af1330'),
(21, NULL, 'm151109_000000_text_url_formats', '2016-03-01 09:25:58', '2016-03-01 09:25:58', '2016-03-01 09:25:58', '79dfc54b-6165-4641-9863-3eda44cd50cd'),
(22, NULL, 'm151110_000000_move_logo', '2016-03-01 09:25:58', '2016-03-01 09:25:58', '2016-03-01 09:25:58', '83f68d2c-e9a3-46f6-a1d6-69c655defe4e'),
(23, NULL, 'm151117_000000_adjust_image_widthheight', '2016-03-01 09:25:58', '2016-03-01 09:25:58', '2016-03-01 09:25:58', 'f080c128-39f6-4971-b372-6857d00e2f37'),
(24, NULL, 'm151127_000000_clear_license_key_status', '2016-03-01 09:25:58', '2016-03-01 09:25:58', '2016-03-01 09:25:58', 'ec1ea49b-2498-4e94-8c53-3c4f80db9236'),
(25, NULL, 'm151127_000000_plugin_license_keys', '2016-03-01 09:25:58', '2016-03-01 09:25:58', '2016-03-01 09:25:58', 'aa55e3a8-90e4-419e-840f-f332d8e7de3f'),
(26, NULL, 'm151130_000000_update_pt_widget_feeds', '2016-03-01 09:25:58', '2016-03-01 09:25:58', '2016-03-01 09:25:58', 'd90519db-f96a-4399-9271-d0bb155a3d3a'),
(27, NULL, 'm160223_000000_sortorder_to_smallint', '2016-03-01 09:25:58', '2016-03-01 09:25:58', '2016-03-01 09:25:58', 'd82914e4-7d4b-4d35-874c-4398fe120277'),
(28, 1, 'm151225_000000_seomatic_addHumansField', '2016-03-03 09:56:35', '2016-03-03 09:56:35', '2016-03-03 09:56:35', '944b152d-c40c-4c8a-902d-3726ff57b934'),
(29, 1, 'm151226_000000_seomatic_addTwitterFacebookFields', '2016-03-03 09:56:35', '2016-03-03 09:56:35', '2016-03-03 09:56:35', 'f009e12f-5200-4e40-a914-cb3b1a8e4353'),
(30, 1, 'm160101_000000_seomatic_addRobotsFields', '2016-03-03 09:56:35', '2016-03-03 09:56:35', '2016-03-03 09:56:35', '95f22254-980c-4053-89b6-11f9cd32aca0'),
(31, 1, 'm160111_000000_seomatic_addTitleFields', '2016-03-03 09:56:35', '2016-03-03 09:56:35', '2016-03-03 09:56:35', 'dcb70796-fbb7-4a84-9752-f2352234de14'),
(32, 1, 'm160122_000000_seomatic_addTypeFields', '2016-03-03 09:56:35', '2016-03-03 09:56:35', '2016-03-03 09:56:35', 'd78a4eac-7cfd-498c-8cff-b30cdde0f30e'),
(33, 1, 'm160123_000000_seomatic_addOpeningHours', '2016-03-03 09:56:35', '2016-03-03 09:56:35', '2016-03-03 09:56:35', '7f801735-bc1b-4878-bd95-450ecf02b7f6'),
(34, 1, 'm160202_000000_seomatic_addSocialHandles', '2016-03-03 09:56:35', '2016-03-03 09:56:35', '2016-03-03 09:56:35', 'c4ee7622-d16b-44ff-81c5-7dbce8f80db6'),
(35, 1, 'm160204_000000_seomatic_addGoogleAnalytics', '2016-03-03 09:56:35', '2016-03-03 09:56:35', '2016-03-03 09:56:35', '960c0492-e56c-42d7-9019-c6ef44c4f00b'),
(36, 1, 'm160205_000000_seomatic_addResturantMenu', '2016-03-03 09:56:35', '2016-03-03 09:56:35', '2016-03-03 09:56:35', '83d5ca20-f935-45e6-826a-90e2c53d881c'),
(37, 1, 'm160206_000000_seomatic_addGoogleAnalyticsPlugins', '2016-03-03 09:56:35', '2016-03-03 09:56:35', '2016-03-03 09:56:35', '76a380e4-e135-4af6-b6c8-7fd4b0b0fcc1'),
(38, 1, 'm160206_000000_seomatic_addGoogleAnalyticsSendPageView', '2016-03-03 09:56:35', '2016-03-03 09:56:35', '2016-03-03 09:56:35', '6a65f306-da84-4b2b-a706-6b137cd0e261'),
(39, 1, 'm160209_000000_seomatic_alterDescriptionsColumns', '2016-03-03 09:56:35', '2016-03-03 09:56:35', '2016-03-03 09:56:35', '0a72f5f9-49c6-4de1-b829-68c92908f578'),
(40, 1, 'm160209_000001_seomatic_addRobotsTxt', '2016-03-03 09:56:35', '2016-03-03 09:56:35', '2016-03-03 09:56:35', '82b8bd63-dba1-445c-b5de-a1bffb91ec39'),
(41, 1, 'm160227_000000_seomatic_addFacebookAppId', '2016-03-03 09:56:35', '2016-03-03 09:56:35', '2016-03-03 09:56:35', 'be740f76-42db-4b17-8575-c49bfeb1e18e');

-- --------------------------------------------------------

--
-- Table structure for table `craft_plugins`
--

CREATE TABLE IF NOT EXISTS `craft_plugins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `version` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `schemaVersion` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `licenseKey` char(24) COLLATE utf8_unicode_ci DEFAULT NULL,
  `licenseKeyStatus` enum('valid','invalid','mismatched','unknown') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unknown',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `settings` text COLLATE utf8_unicode_ci,
  `installDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `craft_plugins`
--

INSERT INTO `craft_plugins` (`id`, `class`, `version`, `schemaVersion`, `licenseKey`, `licenseKeyStatus`, `enabled`, `settings`, `installDate`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Seomatic', '1.1.5', '1.1.5', NULL, 'unknown', 1, NULL, '2016-03-03 09:56:35', '2016-03-03 09:56:35', '2016-03-03 09:56:35', 'fbbcc135-663b-4ba9-bd42-82545e1bc2e9');

-- --------------------------------------------------------

--
-- Table structure for table `craft_rackspaceaccess`
--

CREATE TABLE IF NOT EXISTS `craft_rackspaceaccess` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `connectionKey` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `storageUrl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cdnUrl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_rackspaceaccess_connectionKey_unq_idx` (`connectionKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `craft_relations`
--

CREATE TABLE IF NOT EXISTS `craft_relations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fieldId` int(11) NOT NULL,
  `sourceId` int(11) NOT NULL,
  `sourceLocale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `targetId` int(11) NOT NULL,
  `sortOrder` smallint(6) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_relations_fieldId_sourceId_sourceLocale_targetId_unq_idx` (`fieldId`,`sourceId`,`sourceLocale`,`targetId`),
  KEY `craft_relations_sourceId_fk` (`sourceId`),
  KEY `craft_relations_sourceLocale_fk` (`sourceLocale`),
  KEY `craft_relations_targetId_fk` (`targetId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=187 ;

--
-- Dumping data for table `craft_relations`
--

INSERT INTO `craft_relations` (`id`, `fieldId`, `sourceId`, `sourceLocale`, `targetId`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(40, 3, 3, NULL, 38, 1, '2016-03-01 11:05:14', '2016-03-01 11:05:14', '07228bb1-789f-4960-8dd2-8929db1832d2'),
(44, 3, 45, NULL, 46, 1, '2016-03-01 11:46:39', '2016-03-01 11:46:39', 'c0a02f54-8e3b-4531-995e-2108fa436ae2'),
(45, 2, 45, NULL, 44, 1, '2016-03-01 11:46:39', '2016-03-01 11:46:39', 'f1b872d5-a1e3-4c8d-aa74-feef9c87407a'),
(70, 3, 2, NULL, 37, 1, '2016-03-02 09:57:07', '2016-03-02 09:57:07', '41f208c3-14c2-4591-b975-9ed131af4626'),
(73, 5, 60, NULL, 61, 1, '2016-03-02 12:43:14', '2016-03-02 12:43:14', '85d0d658-adcb-4e60-b6eb-78b197bed090'),
(106, 3, 8, NULL, 13, 1, '2016-03-02 12:53:36', '2016-03-02 12:53:36', '8a20b93f-e83f-4532-bbd5-870fb708dd31'),
(107, 2, 8, NULL, 9, 1, '2016-03-02 12:53:36', '2016-03-02 12:53:36', 'e73c9f42-a60a-4ca7-bde2-92e7301b8a9a'),
(108, 2, 8, NULL, 10, 2, '2016-03-02 12:53:36', '2016-03-02 12:53:36', '4a081065-839d-41da-bf25-2164fe520b60'),
(109, 2, 8, NULL, 11, 3, '2016-03-02 12:53:36', '2016-03-02 12:53:36', 'd32fb32e-bc35-45f7-b1e2-3c70bc25e77e'),
(111, 3, 4, NULL, 17, 1, '2016-03-02 13:30:46', '2016-03-02 13:30:46', 'eff3e204-6f01-40ad-bb0a-0cb62b398707'),
(112, 2, 4, NULL, 5, 1, '2016-03-02 13:30:46', '2016-03-02 13:30:46', '47d6f437-4563-4c91-b584-99d26b20efee'),
(113, 2, 4, NULL, 6, 2, '2016-03-02 13:30:46', '2016-03-02 13:30:46', 'e8102dd2-584c-467e-9fed-6b51310632e2'),
(114, 2, 4, NULL, 7, 3, '2016-03-02 13:30:46', '2016-03-02 13:30:46', '1b88b9f9-8b14-4bd4-954b-741919cbabeb'),
(115, 5, 4, NULL, 19, 1, '2016-03-02 13:30:46', '2016-03-02 13:30:46', 'b299d739-416f-4004-9985-91217ac667e4'),
(116, 5, 4, NULL, 17, 2, '2016-03-02 13:30:46', '2016-03-02 13:30:46', 'a12d3546-ca87-43b3-9213-2d39f0e83003'),
(117, 5, 4, NULL, 16, 3, '2016-03-02 13:30:46', '2016-03-02 13:30:46', '9c901e02-1b7d-4785-a07b-27de10776d34'),
(128, 4, 54, NULL, 72, 1, '2016-03-03 07:31:27', '2016-03-03 07:31:27', 'e14b4ff7-e599-4cd9-b13b-c8af565eba16'),
(129, 4, 54, NULL, 73, 2, '2016-03-03 07:31:27', '2016-03-03 07:31:27', 'c2beed11-79d1-443e-80bb-75c14458028a'),
(130, 4, 54, NULL, 74, 3, '2016-03-03 07:31:27', '2016-03-03 07:31:27', 'eecdbb8c-9a50-4437-a548-3b6e87a0afc3'),
(131, 4, 54, NULL, 75, 5, '2016-03-03 07:31:27', '2016-03-03 07:31:27', '2ba9d67a-b917-4e61-97b0-eb48e95d44e2'),
(132, 3, 54, NULL, 51, 1, '2016-03-03 07:31:27', '2016-03-03 07:31:27', '81858758-a527-4e77-8b04-33c533d80348'),
(133, 2, 54, NULL, 52, 1, '2016-03-03 07:31:27', '2016-03-03 07:31:27', '2d446f7a-43e2-4fa9-8c00-56dfdf993730'),
(134, 2, 54, NULL, 53, 2, '2016-03-03 07:31:27', '2016-03-03 07:31:27', '0fa22603-eb81-4cbe-902f-e822cb9797e0'),
(135, 4, 71, NULL, 72, 1, '2016-03-03 07:31:29', '2016-03-03 07:31:29', '49465127-7e69-4cd9-845b-0fbc238fe583'),
(136, 4, 71, NULL, 75, 2, '2016-03-03 07:31:29', '2016-03-03 07:31:29', '2e16de40-c93e-416b-8b2d-f2ed58cb7a6c'),
(137, 3, 71, NULL, 66, 1, '2016-03-03 07:31:29', '2016-03-03 07:31:29', 'b065c15f-e098-4fc9-86e5-426afe8a09d0'),
(138, 5, 71, NULL, 68, 1, '2016-03-03 07:31:29', '2016-03-03 07:31:29', 'f7b66b68-7267-4add-b831-40f53d677076'),
(139, 5, 71, NULL, 64, 2, '2016-03-03 07:31:29', '2016-03-03 07:31:29', '13e3b763-2ecd-4c5b-9c7a-684e618bf735'),
(140, 5, 71, NULL, 65, 3, '2016-03-03 07:31:29', '2016-03-03 07:31:29', 'fcbe624d-963e-462b-9173-92c4ddd33c5c'),
(141, 2, 71, NULL, 69, 1, '2016-03-03 07:31:29', '2016-03-03 07:31:29', 'bcc45f38-4668-4949-8fb6-c9044b5af5fd'),
(142, 2, 71, NULL, 70, 2, '2016-03-03 07:31:29', '2016-03-03 07:31:29', '6ad7a6da-0787-4c20-b210-29dc8ebf6441'),
(143, 4, 54, NULL, 76, NULL, '2016-03-03 08:08:30', '2016-03-03 08:08:30', '846ba1f7-4114-46e7-9f9d-a61be3ae3ac4'),
(144, 4, 71, NULL, 76, NULL, '2016-03-03 08:08:30', '2016-03-03 08:08:30', '62862d22-4f0c-4468-9b8a-4f0fef6d9d16'),
(177, 25, 93, NULL, 86, 1, '2016-03-03 13:55:36', '2016-03-03 13:55:36', '13974946-d437-4cb7-8add-f2cfb90973df'),
(178, 25, 93, NULL, 87, 2, '2016-03-03 13:55:36', '2016-03-03 13:55:36', 'fe9a0542-83a4-4591-ba57-b6e0603d7061'),
(179, 25, 93, NULL, 89, 3, '2016-03-03 13:55:36', '2016-03-03 13:55:36', '3ce386e3-1e22-43e7-bef7-a4316989883f'),
(180, 25, 93, NULL, 83, 4, '2016-03-03 13:55:36', '2016-03-03 13:55:36', '7bd7e624-def4-442a-8e52-f2e366b39f6c'),
(181, 25, 93, NULL, 84, 5, '2016-03-03 13:55:36', '2016-03-03 13:55:36', '8c1003eb-4299-4328-a441-5c9fa5a8cac5'),
(182, 25, 93, NULL, 85, 6, '2016-03-03 13:55:36', '2016-03-03 13:55:36', '28817e17-8d43-448b-b9b1-bf2a1b62e047'),
(183, 25, 93, NULL, 88, 7, '2016-03-03 13:55:36', '2016-03-03 13:55:36', '959069a8-6fe7-462b-87f3-21e4ba0c0ab4'),
(184, 25, 93, NULL, 90, 8, '2016-03-03 13:55:36', '2016-03-03 13:55:36', 'fa36b4d1-8e5c-4052-8938-b76825aefd66'),
(185, 25, 93, NULL, 91, 9, '2016-03-03 13:55:36', '2016-03-03 13:55:36', '5182f5d9-3d64-4d9e-895f-79835804d441'),
(186, 25, 93, NULL, 92, 10, '2016-03-03 13:55:36', '2016-03-03 13:55:36', '2331af03-1b19-47cd-a23c-31e69fa31097');

-- --------------------------------------------------------

--
-- Table structure for table `craft_routes`
--

CREATE TABLE IF NOT EXISTS `craft_routes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `locale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `urlParts` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `urlPattern` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `template` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_routes_urlPattern_unq_idx` (`urlPattern`),
  KEY `craft_routes_locale_idx` (`locale`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `craft_routes`
--

INSERT INTO `craft_routes` (`id`, `locale`, `urlParts`, `urlPattern`, `template`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, NULL, '{"0":"categories\\/","1":["*","[^\\\\\\/]+"],"3":["slug","[^\\\\\\/]+"]}', 'categories\\/([^\\/]+)(?P<slug>[^\\/]+)', 'categories/_entry', 1, '2016-03-02 09:10:08', '2016-03-03 08:07:12', '82a7625d-502a-4c1a-9328-f87111203e58'),
(3, NULL, '{"0":"tags\\/","1":["*","[^\\\\\\/]+"],"3":["slug","[^\\\\\\/]+"]}', 'tags\\/([^\\/]+)(?P<slug>[^\\/]+)', '/tags/_entry', 2, '2016-03-02 10:45:31', '2016-03-03 08:07:20', 'd8d4b063-178c-455f-a1fe-67a1cc430186'),
(4, NULL, '["search\\/results?",["*","[^\\\\\\/]+"]]', 'search\\/results?([^\\/]+)', 'result', 3, '2016-03-03 10:20:25', '2016-03-03 10:21:26', '5d3eb4ae-d10d-4660-835e-ff9ee7845aeb');

-- --------------------------------------------------------

--
-- Table structure for table `craft_searchindex`
--

CREATE TABLE IF NOT EXISTS `craft_searchindex` (
  `elementId` int(11) NOT NULL,
  `attribute` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `fieldId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`elementId`,`attribute`,`fieldId`,`locale`),
  FULLTEXT KEY `craft_searchindex_keywords_idx` (`keywords`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_searchindex`
--

INSERT INTO `craft_searchindex` (`elementId`, `attribute`, `fieldId`, `locale`, `keywords`) VALUES
(1, 'username', 0, 'en', ' kurvin '),
(1, 'firstname', 0, 'en', ''),
(1, 'lastname', 0, 'en', ''),
(1, 'fullname', 0, 'en', ''),
(1, 'email', 0, 'en', ' kurvin limabean co za '),
(1, 'slug', 0, 'en', ''),
(2, 'slug', 0, 'en', ' homepage '),
(2, 'title', 0, 'en', ' we just installed craft '),
(2, 'field', 1, 'en', ' it s true this site doesn t have a whole lot of content yet but don t worry our web developers have just installed the cms and they re setting things up for the content editors this very moment soon dev craftblog com will be an oasis of fresh perspectives sharp analyses and astute opinions that will keep you coming back again and again '),
(3, 'field', 1, 'en', ' craft is the cms that s powering dev craftblog com it s beautiful powerful flexible and easy to use and it s made by pixel tonic we can t wait to dive in and see what it s capable of this is even more captivating content which you couldn t see on the news index page because it was entered after a page break and the news index template only likes to show the content on the first page craft a nice alternative to word if you re making a website '),
(3, 'field', 2, 'en', ''),
(3, 'slug', 0, 'en', ' we just installed craft '),
(3, 'title', 0, 'en', ' we just installed craft '),
(4, 'slug', 0, 'en', ' bugatti chirion '),
(4, 'title', 0, 'en', ' bugatti chirion '),
(5, 'name', 0, 'en', ' chirion '),
(5, 'slug', 0, 'en', ''),
(5, 'title', 0, 'en', ' chirion '),
(6, 'name', 0, 'en', ' bugatti '),
(6, 'slug', 0, 'en', ''),
(6, 'title', 0, 'en', ' bugatti '),
(7, 'name', 0, 'en', ' hypercar '),
(7, 'slug', 0, 'en', ''),
(7, 'title', 0, 'en', ' hypercar '),
(4, 'field', 1, 'en', ' there are many absurd facts about the bugatti chiron that was just introduced today ahead of the geneva motor show its top speed is electronically limited limited to 261 miles per hour it can reach 125 miles per hour in 6 5 seconds which may very well be faster than the time it takes your personal vehicle to reach half that and the base price is an astounding 2 4 million $2 6 million which you can presumably run up with options and customization nothing about this rare machine just 500 will be made is for the faint of heart we ve already given you all the details about this ridiculous machine but bugatti in its infinite generosity has provided a huge and extremely awesome set of photos to go along with it we thought you might enjoy some of them original article at the verge '),
(8, 'field', 1, 'en', ' take a look at this i start the video in electric mode and make my way around the hairpin in complete silence which is a surreal feeling at first coming out of the hairpin i switch to gte and to manual shifting before accelerating for a car that weighs nearly 1 600kg 3 527lb it completely belies its on paper engine size and performance i suppose the most ringing endorsement i can give the gte is that as i write this it s parked outside my house for another few days before i drop it back to volkswagen i m off to mondello in two days for some speedhunting activities and i have the choice of taking it or project gti honestly i m stumped as to which car to choose where as the other gt grade cars are of 2 0 litre capacity regardless of petrol or diesel both are also turbocharged the gte is fitted with a smaller 1 4 litre turbocharged motor in isolation this unit produces around 150hp but it s not alone under the bonnet '),
(4, 'field', 2, 'en', ' chirion bugatti hypercar '),
(8, 'field', 2, 'en', ' gte golf hybrid '),
(8, 'slug', 0, 'en', ' golf gte '),
(8, 'title', 0, 'en', ' golf gte '),
(9, 'name', 0, 'en', ' gte '),
(9, 'slug', 0, 'en', ''),
(9, 'title', 0, 'en', ' gte '),
(10, 'name', 0, 'en', ' golf '),
(10, 'slug', 0, 'en', ''),
(10, 'title', 0, 'en', ' golf '),
(11, 'name', 0, 'en', ' hybrid '),
(11, 'slug', 0, 'en', ''),
(11, 'title', 0, 'en', ' hybrid '),
(14, 'kind', 0, 'en', ' image '),
(14, 'extension', 0, 'en', ' jpg '),
(14, 'filename', 0, 'en', ' 01_chiron_grand palais_34 front_web 0 jpg '),
(8, 'field', 3, 'en', ' 2016 volkswagen gte by paddy mc grath 34 800x533 '),
(13, 'field', 3, 'en', ''),
(13, 'filename', 0, 'en', ' 2016 volkswagen gte by paddy mcgrath 34 800x533 jpg '),
(13, 'extension', 0, 'en', ' jpg '),
(13, 'kind', 0, 'en', ' image '),
(13, 'slug', 0, 'en', ' 2016 volkswagen gte by paddy mc grath 34 800x533 '),
(13, 'title', 0, 'en', ' 2016 volkswagen gte by paddy mc grath 34 800x533 '),
(14, 'field', 3, 'en', ''),
(14, 'slug', 0, 'en', ' 01 chiron grand palais 34 front web 0 '),
(14, 'title', 0, 'en', ' 01 chiron grand palais 34 front web 0 '),
(15, 'field', 3, 'en', ''),
(15, 'filename', 0, 'en', ' 02_chiron_grand palais_side_web 0 jpg '),
(15, 'extension', 0, 'en', ' jpg '),
(15, 'kind', 0, 'en', ' image '),
(15, 'slug', 0, 'en', ' 02 chiron grand palais side web 0 '),
(15, 'title', 0, 'en', ' 02 chiron grand palais side web 0 '),
(16, 'field', 3, 'en', ''),
(16, 'filename', 0, 'en', ' 03_chiron_grand palais_side_web 0 jpg '),
(16, 'extension', 0, 'en', ' jpg '),
(16, 'kind', 0, 'en', ' image '),
(16, 'slug', 0, 'en', ' 03 chiron grand palais side web 0 '),
(16, 'title', 0, 'en', ' 03 chiron grand palais side web 0 '),
(17, 'field', 3, 'en', ''),
(17, 'filename', 0, 'en', ' 04_chiron_grand palais_34front_web 0 jpg '),
(17, 'extension', 0, 'en', ' jpg '),
(17, 'kind', 0, 'en', ' image '),
(17, 'slug', 0, 'en', ' 04 chiron grand palais 34front web 0 '),
(17, 'title', 0, 'en', ' 04 chiron grand palais 34front web 0 '),
(18, 'field', 3, 'en', ''),
(18, 'filename', 0, 'en', ' 05_chiron_grand palais_34 rear_web 0 jpg '),
(18, 'extension', 0, 'en', ' jpg '),
(18, 'kind', 0, 'en', ' image '),
(18, 'slug', 0, 'en', ' 05 chiron grand palais 34 rear web 0 '),
(18, 'title', 0, 'en', ' 05 chiron grand palais 34 rear web 0 '),
(19, 'field', 3, 'en', ''),
(19, 'filename', 0, 'en', ' 06_chiron_grand palais_34 rear_web 0 jpg '),
(19, 'extension', 0, 'en', ' jpg '),
(19, 'kind', 0, 'en', ' image '),
(19, 'slug', 0, 'en', ' 06 chiron grand palais 34 rear web 0 '),
(19, 'title', 0, 'en', ' 06 chiron grand palais 34 rear web 0 '),
(20, 'field', 3, 'en', ''),
(20, 'filename', 0, 'en', ' 09_chiron_grand palais_side_web 0 jpg '),
(20, 'extension', 0, 'en', ' jpg '),
(20, 'kind', 0, 'en', ' image '),
(20, 'slug', 0, 'en', ' 09 chiron grand palais side web 0 '),
(20, 'title', 0, 'en', ' 09 chiron grand palais side web 0 '),
(4, 'field', 3, 'en', ' 04 chiron grand palais 34front web 0 '),
(21, 'field', 3, 'en', ''),
(21, 'filename', 0, 'en', ' 2016 volkswagen gte by paddy mcgrath 1 1200x800 jpg '),
(21, 'extension', 0, 'en', ' jpg '),
(21, 'kind', 0, 'en', ' image '),
(21, 'slug', 0, 'en', ' 2016 volkswagen gte by paddy mc grath 1 1200x800 '),
(21, 'title', 0, 'en', ' 2016 volkswagen gte by paddy mc grath 1 1200x800 '),
(22, 'field', 3, 'en', ''),
(22, 'filename', 0, 'en', ' 2016 volkswagen gte by paddy mcgrath 18 1200x800 jpg '),
(22, 'extension', 0, 'en', ' jpg '),
(22, 'kind', 0, 'en', ' image '),
(22, 'slug', 0, 'en', ' 2016 volkswagen gte by paddy mc grath 18 1200x800 '),
(22, 'title', 0, 'en', ' 2016 volkswagen gte by paddy mc grath 18 1200x800 '),
(23, 'field', 3, 'en', ''),
(23, 'filename', 0, 'en', ' 2016 volkswagen gte by paddy mcgrath 19 800x533 jpg '),
(23, 'extension', 0, 'en', ' jpg '),
(23, 'kind', 0, 'en', ' image '),
(23, 'slug', 0, 'en', ' 2016 volkswagen gte by paddy mc grath 19 800x533 '),
(23, 'title', 0, 'en', ' 2016 volkswagen gte by paddy mc grath 19 800x533 '),
(24, 'field', 3, 'en', ''),
(24, 'filename', 0, 'en', ' 2016 volkswagen gte by paddy mcgrath 2 1200x800 jpg '),
(24, 'extension', 0, 'en', ' jpg '),
(24, 'kind', 0, 'en', ' image '),
(24, 'slug', 0, 'en', ' 2016 volkswagen gte by paddy mc grath 2 1200x800 '),
(24, 'title', 0, 'en', ' 2016 volkswagen gte by paddy mc grath 2 1200x800 '),
(25, 'field', 3, 'en', ''),
(25, 'filename', 0, 'en', ' 01_chiron_grand palais_34 front_web 0 jpg '),
(25, 'extension', 0, 'en', ' jpg '),
(25, 'kind', 0, 'en', ' image '),
(25, 'slug', 0, 'en', ' 01 chiron grand palais 34 front web 0 '),
(25, 'title', 0, 'en', ' 01 chiron grand palais 34 front web 0 '),
(26, 'field', 3, 'en', ''),
(26, 'filename', 0, 'en', ' 02_chiron_grand palais_side_web 0 jpg '),
(26, 'extension', 0, 'en', ' jpg '),
(26, 'kind', 0, 'en', ' image '),
(26, 'slug', 0, 'en', ' 02 chiron grand palais side web 0 '),
(26, 'title', 0, 'en', ' 02 chiron grand palais side web 0 '),
(27, 'field', 3, 'en', ''),
(27, 'filename', 0, 'en', ' 03_chiron_grand palais_side_web 0 jpg '),
(27, 'extension', 0, 'en', ' jpg '),
(27, 'kind', 0, 'en', ' image '),
(27, 'slug', 0, 'en', ' 03 chiron grand palais side web 0 '),
(27, 'title', 0, 'en', ' 03 chiron grand palais side web 0 '),
(28, 'field', 3, 'en', ''),
(28, 'filename', 0, 'en', ' 04_chiron_grand palais_34front_web 0 jpg '),
(28, 'extension', 0, 'en', ' jpg '),
(28, 'kind', 0, 'en', ' image '),
(28, 'slug', 0, 'en', ' 04 chiron grand palais 34front web 0 '),
(28, 'title', 0, 'en', ' 04 chiron grand palais 34front web 0 '),
(29, 'field', 3, 'en', ''),
(29, 'filename', 0, 'en', ' 05_chiron_grand palais_34 rear_web 0 jpg '),
(29, 'extension', 0, 'en', ' jpg '),
(29, 'kind', 0, 'en', ' image '),
(29, 'slug', 0, 'en', ' 05 chiron grand palais 34 rear web 0 '),
(29, 'title', 0, 'en', ' 05 chiron grand palais 34 rear web 0 '),
(30, 'field', 3, 'en', ''),
(30, 'filename', 0, 'en', ' 06_chiron_grand palais_34 rear_web 0 jpg '),
(30, 'extension', 0, 'en', ' jpg '),
(30, 'kind', 0, 'en', ' image '),
(30, 'slug', 0, 'en', ' 06 chiron grand palais 34 rear web 0 '),
(30, 'title', 0, 'en', ' 06 chiron grand palais 34 rear web 0 '),
(31, 'field', 3, 'en', ''),
(31, 'filename', 0, 'en', ' 09_chiron_grand palais_side_web 0 jpg '),
(31, 'extension', 0, 'en', ' jpg '),
(31, 'kind', 0, 'en', ' image '),
(31, 'slug', 0, 'en', ' 09 chiron grand palais side web 0 '),
(31, 'title', 0, 'en', ' 09 chiron grand palais side web 0 '),
(32, 'field', 3, 'en', ''),
(32, 'filename', 0, 'en', ' 2016 volkswagen gte by paddy mcgrath 1 1200x800 jpg '),
(32, 'extension', 0, 'en', ' jpg '),
(32, 'kind', 0, 'en', ' image '),
(32, 'slug', 0, 'en', ' 2016 volkswagen gte by paddy mc grath 1 1200x800 '),
(32, 'title', 0, 'en', ' 2016 volkswagen gte by paddy mc grath 1 1200x800 '),
(33, 'field', 3, 'en', ''),
(33, 'filename', 0, 'en', ' 2016 volkswagen gte by paddy mcgrath 18 1200x800 jpg '),
(33, 'extension', 0, 'en', ' jpg '),
(33, 'kind', 0, 'en', ' image '),
(33, 'slug', 0, 'en', ' 2016 volkswagen gte by paddy mc grath 18 1200x800 '),
(33, 'title', 0, 'en', ' 2016 volkswagen gte by paddy mc grath 18 1200x800 '),
(34, 'field', 3, 'en', ''),
(34, 'filename', 0, 'en', ' 2016 volkswagen gte by paddy mcgrath 19 800x533 jpg '),
(34, 'extension', 0, 'en', ' jpg '),
(34, 'kind', 0, 'en', ' image '),
(34, 'slug', 0, 'en', ' 2016 volkswagen gte by paddy mc grath 19 800x533 '),
(34, 'title', 0, 'en', ' 2016 volkswagen gte by paddy mc grath 19 800x533 '),
(35, 'field', 3, 'en', ''),
(35, 'filename', 0, 'en', ' 2016 volkswagen gte by paddy mcgrath 2 1200x800 jpg '),
(35, 'extension', 0, 'en', ' jpg '),
(35, 'kind', 0, 'en', ' image '),
(35, 'slug', 0, 'en', ' 2016 volkswagen gte by paddy mc grath 2 1200x800 '),
(35, 'title', 0, 'en', ' 2016 volkswagen gte by paddy mc grath 2 1200x800 '),
(36, 'field', 3, 'en', ''),
(36, 'filename', 0, 'en', ' 2016 volkswagen gte by paddy mcgrath 34 800x533 jpg '),
(36, 'extension', 0, 'en', ' jpg '),
(36, 'kind', 0, 'en', ' image '),
(36, 'slug', 0, 'en', ' 2016 volkswagen gte by paddy mc grath 34 800x533 '),
(36, 'title', 0, 'en', ' 2016 volkswagen gte by paddy mc grath 34 800x533 '),
(37, 'field', 3, 'en', ''),
(37, 'filename', 0, 'en', ' news_765x350px jpg '),
(37, 'extension', 0, 'en', ' jpg '),
(37, 'kind', 0, 'en', ' image '),
(37, 'slug', 0, 'en', ' news 765x350px '),
(37, 'title', 0, 'en', ' news 765x350px '),
(38, 'field', 3, 'en', ''),
(38, 'filename', 0, 'en', ' craft blog graphic1 png '),
(38, 'extension', 0, 'en', ' png '),
(38, 'kind', 0, 'en', ' image '),
(38, 'slug', 0, 'en', ' craft blog graphic1 '),
(38, 'title', 0, 'en', ' craft blog graphic1 '),
(72, 'title', 0, 'en', ' music '),
(72, 'slug', 0, 'en', ' music '),
(2, 'field', 3, 'en', ' news 765x350px '),
(3, 'field', 3, 'en', ' craft blog graphic1 '),
(4, 'field', 5, 'en', ' 06 chiron grand palais 34 rear web 0 04 chiron grand palais 34front web 0 03 chiron grand palais side web 0 '),
(60, 'field', 6, 'en', ' assets images batman logo big gif '),
(45, 'field', 3, 'en', ' fisker karma '),
(45, 'field', 1, 'en', ' a screening of who killed the electric car will take place on the 06 06 16 at the durbanville quarry who killed the electric car is a 2006 documentary film that explores the creation limited commercialization and subsequent destruction of the battery electric vehicle in the united states specifically the general motors ev1 of the mid 1990s the film explores the roles of automobile manufacturers the oil industry the u s government the california government batteries hydrogen vehicles and consumers in limiting the development and adoption of this technology after a premiere at the sundance film festival it was released theatrically by sony pictures classics in june 2006 and then on dvd by sony pictures home entertainment on november 14 2006 during an interview with cbs news director chris paine announced that he had started a new documentary about electric cars with a working title of who saved the electric car 2 later renamed revenge of the electric car which had its world premiere at the 2011 tribeca film festival on earth day april 22 2011 3 wikipedia '),
(44, 'title', 0, 'en', ' electric car '),
(44, 'name', 0, 'en', ' electric car '),
(43, 'field', 3, 'en', ''),
(43, 'filename', 0, 'en', ' 220px who_killed_the_electric_car_cover jpg '),
(43, 'extension', 0, 'en', ' jpg '),
(43, 'kind', 0, 'en', ' image '),
(43, 'slug', 0, 'en', ' 220px who killed the electric car cover '),
(43, 'title', 0, 'en', ' 220px who killed the electric car cover '),
(44, 'slug', 0, 'en', ''),
(45, 'field', 2, 'en', ' electric car '),
(45, 'slug', 0, 'en', ' screening of who killed the electric car '),
(45, 'title', 0, 'en', ' screening of who killed the electric car '),
(46, 'field', 3, 'en', ''),
(46, 'filename', 0, 'en', ' fisker karma jpg '),
(46, 'extension', 0, 'en', ' jpg '),
(46, 'kind', 0, 'en', ' image '),
(46, 'slug', 0, 'en', ' fisker karma '),
(46, 'title', 0, 'en', ' fisker karma '),
(76, 'slug', 0, 'en', ' categories '),
(54, 'field', 5, 'en', ''),
(54, 'field', 6, 'en', ''),
(51, 'field', 3, 'en', ''),
(51, 'filename', 0, 'en', ' rage_against_the_machine jpg '),
(51, 'extension', 0, 'en', ' jpg '),
(51, 'kind', 0, 'en', ' image '),
(51, 'slug', 0, 'en', ' rage against the machine '),
(51, 'title', 0, 'en', ' rage against the machine '),
(52, 'name', 0, 'en', ' metal '),
(52, 'slug', 0, 'en', ''),
(52, 'title', 0, 'en', ' metal '),
(53, 'name', 0, 'en', ' ratm '),
(53, 'slug', 0, 'en', ''),
(53, 'title', 0, 'en', ' ratm '),
(54, 'field', 1, 'en', ' evil empirerage against the machine also known as ratm or just rage is an american political rap metal band from los angeles california formed in 1991 the group consists of rapper and vocalist zack de la rocha bassist and backing vocalist tim commerford guitarist tom morello and drummer brad wilk they draw inspiration from early heavy metal instrumentation as well as hip hop acts such as afrika bambaataa 1 public enemy the beastie boys and dutch crossover band urban dance squad 2 rage against the machine is well known for the members leftist and revolutionary political views which are expressed in many of the band s songs as of 2010 they have sold over 16 million records worldwide 3 in 1992 the band released its self titled debut album which became a commercial and critical success leading to a slot in the 1993 lollapalooza festival in 2003 the album was ranked number 368 on rolling stone magazine s list of the 500 greatest albums of all time the band did not release a follow up record until 1996 with evil empire the band s third album the battle of los angeles followed in 1999 and in 2003 the album was ranked number 426 on the same list during their initial nine year run they became one of the most popular and influential bands in music history according to music journalist colin devenish 4 they were also ranked no 33 on vh1 s 100 greatest artists of hard rock the band had a large influence on the nu metal genre which came to prominence during the second half of the 1990s in 2000 the band released the cover album renegades the same year growing tensions over the direction of the band prompted de la rocha to quit leading to the band s breakup 5 de la rocha started a low key solo career while the rest of the band formed the rock supergroup audioslave with chris cornell then former frontman of soundgarden audioslave recorded three albums before disbanding in 2007 the same year rage against the machine announced a reunion and performed together for the first time in seven years at thecoachella valley music and arts festival in april 2007 up until 2011 the band continued to perform at more live venues and festivals around the world as of 2016 the group has no plans to perform or release new music 6 wikipedia after a wonderful wikipedia entry to wet our apatite s the question remains is ratm still great after a ten year break they were great before they decided to split ways and their subsequent projects have all built followings in their respective rights fans will tell you that the bands thrash and metal style is still some of the best sounding rock music you can sink your teeth into at the end of the day it is all very objective i still love the band but i only started listening to them after they broke up which is a real shame i have searched the net looking for live shows and thoroughly enjoyed watching a young ratm jump around stage and throw a massive amount of energy at the crowd and wished i were there and i still really enjoy their music right now i am listening to evil empire evil empire so i believe ten years on their music lives on and makes for some amazing listening k '),
(54, 'field', 4, 'en', ' music metal metal core rock '),
(54, 'field', 3, 'en', ' rage against the machine '),
(54, 'field', 2, 'en', ' metal ratm '),
(54, 'slug', 0, 'en', ' rage againts the machine 10 years on '),
(54, 'title', 0, 'en', ' rage againts the machine 10 years on '),
(55, 'field', 3, 'en', ''),
(55, 'filename', 0, 'en', ' dwayne_johnson_at_the_2009_tribeca_film_festival jpg '),
(55, 'extension', 0, 'en', ' jpg '),
(55, 'kind', 0, 'en', ' image '),
(55, 'slug', 0, 'en', ' dwayne johnson at the 2009 tribeca film festival '),
(55, 'title', 0, 'en', ' dwayne johnson at the 2009 tribeca film festival '),
(77, 'slug', 0, 'en', ' 1600 reasons to love this datsun speed hunters '),
(77, 'title', 0, 'en', ' 1600 reasons to love this datsun speed hunters '),
(78, 'field', 9, 'en', ' 1600 reasons to love this datsun speed hunters '),
(78, 'slug', 0, 'en', ''),
(78, 'field', 26, 'en', ' old school slow living fast '),
(80, 'field', 11, 'en', ' looking back at the feature cars i ve photographed and written about over the past 12 months it s hard to find much similarity between wide body porsches blown burnout machines and retro mopar racers four tyres are pretty much all they ve shared in common but then again that s half the fun of being a speedhunter we get to write our own rules '),
(80, 'slug', 0, 'en', ''),
(81, 'field', 12, 'en', ' however there is one common theme that i ve identified in the cars i choose from the many many possibilities overall completeness yes there are plenty of eye catching rides out there but the ones that really make a mark on me are those where the owner has well and truly reinvented the vehicle into something different and new when this little datsun 1600 wagon arrived at our shoot location it was actually the first time i d seen it completed in the flesh but having spied the car as a work in progress at the world time attack challenge last year i started following every step of the build on the owner s social media pages thus it was a bit of deja vu to see the car for the first time despite knowing it quite well as we all know seeing a car in the flesh is infinitely better than in some poorly compressed facebook photo album the first thing that struck me about the wagon was the paint such a subtle colour but expertly mixed and applied it s a custom hue that is closely related to the gun metallic available on the r35 gt r keeping things in the family so to speak i really wanted to let the paintwork speak for itself in these photos so hopefully you can enjoy it as much as i did on this mercifully grey mid summer s morning the owner and creator is no stranger to vehicular customisation john s past rides have included an eclectic mix of australian and japanese models both old and new and he currently manages the motorsport operation at sydney s v sport meaning he is intimately acquainted with the v sport toyota 86 that impressed all who saw it at wtac '),
(81, 'field', 13, 'en', ' when this little datsun 1600 wagon arrived at our shoot location it was actually the first time i d seen it completed in the flesh but having spied the car as a work in progress at the world time attack challenge last year i started following every step of the build on the owner s social media pages thus it was a bit of deja vu to see the car for the first time despite knowing it quite well '),
(81, 'field', 14, 'en', ' as we all know seeing a car in the flesh is infinitely better than in some poorly compressed facebook photo album the first thing that struck me about the wagon was the paint such a subtle colour but expertly mixed and applied '),
(81, 'field', 15, 'en', ' it s a custom hue that is closely related to the gun metallic available on the r35 gt r keeping things in the family so to speak i really wanted to let the paintwork speak for itself in these photos so hopefully you can enjoy it as much as i did on this mercifully grey mid summer s morning '),
(81, 'field', 16, 'en', ' the owner and creator is no stranger to vehicular customisation john s past rides have included an eclectic mix of australian and japanese models both old and new and he currently manages the motorsport operation at sydney s v sport meaning he is intimately acquainted with the v sport toyota 86 that impressed all who saw it at wtac '),
(81, 'field', 17, 'en', ' a friend of john s had an exceptionally straight 1600 and no space to keep it so john did the only sensible thing and bought it from him over the next two years it was transformed by john and whatever friends could lend a hand after hours at v sport s western sydney workshop '),
(81, 'slug', 0, 'en', ''),
(76, 'title', 0, 'en', ' categories '),
(77, 'field', 8, 'en', ' 1600 reasons to love this datsun speed hunters old school slow living fast looking back at the feature cars i ve photographed and written about over the past 12 months it s hard to find much similarity between wide body porsches blown burnout machines and retro mopar racers four tyres are pretty much all they ve shared in common but then again that s half the fun of being a speedhunter we get to write our own rules however there is one common theme that i ve identified in the cars i choose from the many many possibilities overall completeness yes there are plenty of eye catching rides out there but the ones that really make a mark on me are those where the owner has well and truly reinvented the vehicle into something different and new when this little datsun 1600 wagon arrived at our shoot location it was actually the first time i d seen it completed in the flesh but having spied the car as a work in progress at the world time attack challenge last year i started following every step of the build on the owner s social media pages thus it was a bit of deja vu to see the car for the first time despite knowing it quite well as we all know seeing a car in the flesh is infinitely better than in some poorly compressed facebook photo album the first thing that struck me about the wagon was the paint such a subtle colour but expertly mixed and applied it s a custom hue that is closely related to the gun metallic available on the r35 gt r keeping things in the family so to speak i really wanted to let the paintwork speak for itself in these photos so hopefully you can enjoy it as much as i did on this mercifully grey mid summer s morning the owner and creator is no stranger to vehicular customisation john s past rides have included an eclectic mix of australian and japanese models both old and new and he currently manages the motorsport operation at sydney s v sport meaning he is intimately acquainted with the v sport toyota 86 that impressed all who saw it at wtac datsun 1600 wagon 8269 800x533 datsun 1600 wagon 8279 800x533 datsun 1600 wagon 8293 800x533 datsun 1600 wagon 8185 800x533 datsun 1600 wagon 8197 800x533 datsun 1600 wagon 8232 800x533 datsun 1600 wagon 8289 800x533 datsun 1600 wagon 8305 800x533 datsun 1600 wagon 8308 800x533 datsun 1600 wagon 8460 800x533 '),
(54, 'field', 7, 'en', ''),
(75, 'title', 0, 'en', ' rock '),
(75, 'slug', 0, 'en', ' rock '),
(74, 'title', 0, 'en', ' metal core '),
(74, 'slug', 0, 'en', ' metal core '),
(73, 'title', 0, 'en', ' metal '),
(73, 'slug', 0, 'en', ' metal '),
(8, 'field', 4, 'en', ' vehicles '),
(4, 'field', 4, 'en', ' vehicles speed sports cars '),
(60, 'slug', 0, 'en', ''),
(60, 'field', 5, 'en', ' batman logo big '),
(61, 'field', 3, 'en', ''),
(61, 'filename', 0, 'en', ' batman logo big gif '),
(61, 'extension', 0, 'en', ' gif '),
(61, 'kind', 0, 'en', ' image '),
(61, 'slug', 0, 'en', ' batman logo big '),
(61, 'title', 0, 'en', ' batman logo big '),
(62, 'field', 3, 'en', ''),
(62, 'filename', 0, 'en', ' fallout__ gif '),
(62, 'extension', 0, 'en', ' gif '),
(62, 'kind', 0, 'en', ' image '),
(62, 'slug', 0, 'en', ' fallout '),
(62, 'title', 0, 'en', ' fallout '),
(64, 'field', 3, 'en', ''),
(64, 'filename', 0, 'en', ' 3056637 poster p 2 ok go to space jpg '),
(64, 'extension', 0, 'en', ' jpg '),
(64, 'kind', 0, 'en', ' image '),
(64, 'slug', 0, 'en', ' 3056637 poster p 2 ok go to space '),
(64, 'title', 0, 'en', ' 3056637 poster p 2 ok go to space '),
(65, 'field', 3, 'en', ''),
(65, 'filename', 0, 'en', ' okgo 41_2130373b jpg '),
(65, 'extension', 0, 'en', ' jpg '),
(65, 'kind', 0, 'en', ' image '),
(65, 'slug', 0, 'en', ' okgo 41 2130373b '),
(65, 'title', 0, 'en', ' okgo 41 2130373b '),
(66, 'field', 3, 'en', ''),
(66, 'filename', 0, 'en', ' ok_go11 jpg '),
(66, 'extension', 0, 'en', ' jpg '),
(66, 'kind', 0, 'en', ' image '),
(66, 'slug', 0, 'en', ' ok go11 '),
(66, 'title', 0, 'en', ' ok go11 '),
(67, 'field', 3, 'en', ''),
(67, 'filename', 0, 'en', ' _88236937_ok_go jpg '),
(67, 'extension', 0, 'en', ' jpg '),
(67, 'kind', 0, 'en', ' image '),
(67, 'slug', 0, 'en', ' 88236937 ok go '),
(67, 'title', 0, 'en', ' 88236937 ok go '),
(68, 'field', 3, 'en', ''),
(68, 'filename', 0, 'en', ' flux_ok go jpg '),
(68, 'extension', 0, 'en', ' jpg '),
(68, 'kind', 0, 'en', ' image '),
(68, 'slug', 0, 'en', ' flux ok go '),
(68, 'title', 0, 'en', ' flux ok go '),
(69, 'field', 1, 'en', ''),
(69, 'name', 0, 'en', ' indy '),
(69, 'slug', 0, 'en', ''),
(69, 'title', 0, 'en', ' indy '),
(70, 'field', 1, 'en', ''),
(70, 'name', 0, 'en', ' music '),
(70, 'slug', 0, 'en', ''),
(70, 'title', 0, 'en', ' music '),
(71, 'field', 4, 'en', ' music rock '),
(71, 'field', 3, 'en', ' ok go11 '),
(71, 'field', 1, 'en', ' if there s one rock journalist cliche that bugs me it s that relentless tendency to dwell heavily on a band s image allowing it to supercede the importance of the music in the interest of provoking a laugh or making what is often a frivolous irrelevant point a great deal of bands from the early mop top days of the beatles to the afro d at the drive in of today have found their otherwise wonderful and perfectly noteworthy music suffocated by the ink given to their hair outfits or backstage antics conversely painfully mediocre bands like kiss and cinderella find substantial undeserved attention simply through their flashy dress codes using their image to blanket lifeless pedestrian songs needless to say it s a tactic i usually try to avoid and so here i try objectively as i can to sit through the self titled debut of chicago foursome ok go from the outset their look is positively loathsome four clean cut suburbia ripped pretty boys aspiring to toe the line between indie respectability and commercial adulation i slide the disc into my cd player glancing briefly at the blue era weezer poster on my wall which optimistically reminds me of the joy that could abound but as the music begins and the bland onslaught of creative ineptitude soaks my room my mood takes a nosedive fact is ok go seemed to have made every effort to live up to their immaculate airbrushed image in their music that the kind of mindless commercial monotony that dilutes every hint of vibrancy on the record seems wholly intentional is telling as a comparatively lo fi collection of songs were apparently scrapped in favor of this supposedly more accessible dreck the sort of middle of the road half power pop half hair metal hooks heard on first track and single get over it plays itself out on nearly every track using the monster power chords obtusely ironic lyrics and anthemic send up chorus as a blueprint for the kind of 21st century arena rock most people knew we didn t need for forty minutes ok go drags on laboriously with each passing song more desperately anticipating the end damian kulash s lyrics are almost uniformly dreadful but no more so than on you re so damn hot what seems to be some kind of aggravating rewrite of bang a gong with all the substance and style drained from it lines like you re a bad hearted boy trap baby doll but you re so damn hot are enough to make you despise the english language fortunately the album is saved from total disaster by the band s occasional ear for a good hook and though you ll knock yourself for it the reasonably hummable melodies of a handful of these tracks may stay with you for the rest of the day when push comes to shove though ok go is either a dreadfully calculated shot in the dark attempt at accessibility from a band whose heart is in the underground or simply a dull styrofoam pop record from a bunch of fresh faced hacks who happened to come across a weezer fakebook and decided to turn it into a career either way their heart doesn t seem in it and if you re gonna win the public over you ve gotta at least fool them into thinking you mean it '),
(71, 'field', 7, 'en', ' reverse the pronunciation guide for inxs that s okay go not oakgoo okgo sounds more like a he man villain and therefore seems more suitable as a name for a math rock band ok go have been masterfully collecting hype by plastering their flashy posters on exito newspaper dispensers and opening for every single band in chicago over the last year including don caballero the promise ring elliott smith and omd yes orchestral maneuvers in the dark it s actually been fascinating to watch their inevitable rise local press now invariably strokes the band s egos in a city still sadly yearning for their next pumpkins these guys seem to have become the prime candidates image counts kids and a flashy www okgo net website with press photos was born even before these guys had oh right a record but now that their meticulous year long recording sessions can finally be heard however briefly the band can get on with gathering devoted fans and lukewarm reviews this sub 10 minute ep was crafted in five studios including the spiffy workplaces of dave trumfio steve albini and butch vig at this point it should be noted that ok go have trust funds and despite minor songwriting triumphs it can be difficult to wrap your head around the fact that five studios two producers and five assistants worked to create a weezer knock off called bye bye baby on stage ok go play the shiniest gear filtered through electronics and a laptop the silicon sound offers pinches tiny pinches of brainiac moments most notably on their tune this is not the sound of a train sadly that s not included here instead we get the lithe acoustic throwaway it s tough to have a crush when the boy doesn t feel the same way you do jeremy jacobsen of five style and the lonesome organist and the coctails mark greenberg supply some nifty vaudevillian twinkling underneath but it fails to detract from the fact that everything the song has to offer is handed over in the title alone quick guess the chorus reading the sleeve can be just as melodic and at least saves you from the line who ever knew such hullabaloo we dug a hole opens with strawberry fields organ and hides pleasant choruses however the verses serve up layers of loops and rapping that could only make amy heckerling wet and their anal studio attention dominates every guitar chug and vocal harmony of course considering the competition ok go have a brilliant future even this beats the living lisp out of the promise ring oddly jade tree turned ok go down this could have been their retirement fund still the band fully embraces the cheddar pleasures of major label pop and for every crispy curveball thrown there s a lyric like c c c cinnamon lips and candy kisses on my tongue and if these sound like bitter grizzled complaints it s only because i m trying to brace you for the moment they ditch self released cds and come to your town with fruit by the foot s generation flav r fest '),
(71, 'field', 6, 'en', ''),
(71, 'field', 5, 'en', ' flux ok go 3056637 poster p 2 ok go to space okgo 41 2130373b '),
(71, 'field', 2, 'en', ' indy music '),
(71, 'slug', 0, 'en', ' ok go lets get indy '),
(71, 'title', 0, 'en', ' ok go lets get indy '),
(82, 'field', 18, 'en', ''),
(82, 'field', 19, 'en', ' datsun 1600 wagon 8185 800x533 '),
(82, 'field', 20, 'en', ' datsun 1600 wagon 8232 800x533 '),
(82, 'field', 21, 'en', ' datsun 1600 wagon 8305 800x533 '),
(82, 'field', 22, 'en', ' datsun 1600 wagon 8460 800x533 '),
(82, 'field', 23, 'en', ' datsun 1600 wagon 8308 800x533 '),
(82, 'field', 24, 'en', ' datsun 1600 wagon 8289 800x533 '),
(82, 'slug', 0, 'en', ''),
(83, 'field', 3, 'en', ''),
(83, 'filename', 0, 'en', ' datsun 1600 wagon 8185 800x533 jpg '),
(83, 'extension', 0, 'en', ' jpg '),
(83, 'kind', 0, 'en', ' image '),
(83, 'slug', 0, 'en', ' datsun 1600 wagon 8185 800x533 '),
(83, 'title', 0, 'en', ' datsun 1600 wagon 8185 800x533 '),
(84, 'field', 3, 'en', ''),
(84, 'filename', 0, 'en', ' datsun 1600 wagon 8197 800x533 jpg '),
(84, 'extension', 0, 'en', ' jpg '),
(84, 'kind', 0, 'en', ' image '),
(84, 'slug', 0, 'en', ' datsun 1600 wagon 8197 800x533 '),
(84, 'title', 0, 'en', ' datsun 1600 wagon 8197 800x533 '),
(85, 'field', 3, 'en', ''),
(85, 'filename', 0, 'en', ' datsun 1600 wagon 8232 800x533 jpg '),
(85, 'extension', 0, 'en', ' jpg '),
(85, 'kind', 0, 'en', ' image '),
(85, 'slug', 0, 'en', ' datsun 1600 wagon 8232 800x533 '),
(85, 'title', 0, 'en', ' datsun 1600 wagon 8232 800x533 '),
(86, 'field', 3, 'en', ''),
(86, 'filename', 0, 'en', ' datsun 1600 wagon 8269 800x533 jpg '),
(86, 'extension', 0, 'en', ' jpg '),
(86, 'kind', 0, 'en', ' image '),
(86, 'slug', 0, 'en', ' datsun 1600 wagon 8269 800x533 '),
(86, 'title', 0, 'en', ' datsun 1600 wagon 8269 800x533 '),
(87, 'field', 3, 'en', ''),
(87, 'filename', 0, 'en', ' datsun 1600 wagon 8279 800x533 jpg '),
(87, 'extension', 0, 'en', ' jpg '),
(87, 'kind', 0, 'en', ' image '),
(87, 'slug', 0, 'en', ' datsun 1600 wagon 8279 800x533 '),
(87, 'title', 0, 'en', ' datsun 1600 wagon 8279 800x533 '),
(88, 'field', 3, 'en', ''),
(88, 'filename', 0, 'en', ' datsun 1600 wagon 8289 800x533 jpg '),
(88, 'extension', 0, 'en', ' jpg '),
(88, 'kind', 0, 'en', ' image '),
(88, 'slug', 0, 'en', ' datsun 1600 wagon 8289 800x533 '),
(88, 'title', 0, 'en', ' datsun 1600 wagon 8289 800x533 '),
(89, 'field', 3, 'en', ''),
(89, 'filename', 0, 'en', ' datsun 1600 wagon 8293 800x533 jpg '),
(89, 'extension', 0, 'en', ' jpg '),
(89, 'kind', 0, 'en', ' image '),
(89, 'slug', 0, 'en', ' datsun 1600 wagon 8293 800x533 '),
(89, 'title', 0, 'en', ' datsun 1600 wagon 8293 800x533 '),
(90, 'field', 3, 'en', ''),
(90, 'filename', 0, 'en', ' datsun 1600 wagon 8305 800x533 jpg '),
(90, 'extension', 0, 'en', ' jpg '),
(90, 'kind', 0, 'en', ' image '),
(90, 'slug', 0, 'en', ' datsun 1600 wagon 8305 800x533 '),
(90, 'title', 0, 'en', ' datsun 1600 wagon 8305 800x533 '),
(91, 'field', 3, 'en', ''),
(91, 'filename', 0, 'en', ' datsun 1600 wagon 8308 800x533 jpg '),
(91, 'extension', 0, 'en', ' jpg '),
(91, 'kind', 0, 'en', ' image '),
(91, 'slug', 0, 'en', ' datsun 1600 wagon 8308 800x533 '),
(91, 'title', 0, 'en', ' datsun 1600 wagon 8308 800x533 '),
(92, 'field', 3, 'en', ''),
(92, 'filename', 0, 'en', ' datsun 1600 wagon 8460 800x533 jpg '),
(92, 'extension', 0, 'en', ' jpg '),
(92, 'kind', 0, 'en', ' image '),
(92, 'slug', 0, 'en', ' datsun 1600 wagon 8460 800x533 '),
(92, 'title', 0, 'en', ' datsun 1600 wagon 8460 800x533 '),
(93, 'field', 25, 'en', ' datsun 1600 wagon 8269 800x533 datsun 1600 wagon 8279 800x533 datsun 1600 wagon 8293 800x533 datsun 1600 wagon 8185 800x533 datsun 1600 wagon 8197 800x533 datsun 1600 wagon 8232 800x533 datsun 1600 wagon 8289 800x533 datsun 1600 wagon 8305 800x533 datsun 1600 wagon 8308 800x533 datsun 1600 wagon 8460 800x533 '),
(93, 'slug', 0, 'en', '');

-- --------------------------------------------------------

--
-- Table structure for table `craft_sections`
--

CREATE TABLE IF NOT EXISTS `craft_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `structureId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('single','channel','structure') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'channel',
  `hasUrls` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `template` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enableVersioning` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_sections_name_unq_idx` (`name`),
  UNIQUE KEY `craft_sections_handle_unq_idx` (`handle`),
  KEY `craft_sections_structureId_fk` (`structureId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `craft_sections`
--

INSERT INTO `craft_sections` (`id`, `structureId`, `name`, `handle`, `type`, `hasUrls`, `template`, `enableVersioning`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, NULL, 'Homepage', 'homepage', 'single', 1, 'index', 1, '2016-03-01 09:26:01', '2016-03-01 09:26:01', '7a785372-c000-4378-994e-0c5b9eb6009f'),
(2, NULL, 'News', 'news', 'channel', 1, 'news/_entry', 1, '2016-03-01 09:26:01', '2016-03-01 09:26:01', '56abb807-156f-4eee-b6b3-e7b33907a286'),
(3, NULL, 'Vehicles', 'vehicles', 'channel', 1, 'vehicles/_entry', 1, '2016-03-01 09:31:20', '2016-03-01 09:31:20', '1d8ed7bf-ec6f-46c2-bbd8-851d321bef40'),
(4, NULL, 'Music', 'music', 'channel', 1, 'music/_entry', 1, '2016-03-01 11:48:19', '2016-03-01 11:48:19', '28a1c61b-4dbd-4ac1-828a-1e10b124f296'),
(5, NULL, 'Vehicle Reviews', 'vehicleReviews', 'channel', 1, 'vehicle-reviews/_entry', 1, '2016-03-03 11:35:53', '2016-03-03 11:35:53', '65d7f409-3d53-4d04-b38b-61d887022460');

-- --------------------------------------------------------

--
-- Table structure for table `craft_sections_i18n`
--

CREATE TABLE IF NOT EXISTS `craft_sections_i18n` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sectionId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `enabledByDefault` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `urlFormat` text COLLATE utf8_unicode_ci,
  `nestedUrlFormat` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_sections_i18n_sectionId_locale_unq_idx` (`sectionId`,`locale`),
  KEY `craft_sections_i18n_locale_fk` (`locale`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `craft_sections_i18n`
--

INSERT INTO `craft_sections_i18n` (`id`, `sectionId`, `locale`, `enabledByDefault`, `urlFormat`, `nestedUrlFormat`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'en', 1, '__home__', NULL, '2016-03-01 09:26:01', '2016-03-01 09:26:01', '2c5de27f-6a94-4f4a-861c-fba51b799b49'),
(2, 2, 'en', 1, 'news/{postDate.year}/{slug}', NULL, '2016-03-01 09:26:01', '2016-03-01 09:26:01', 'b3c5bf12-e86e-421f-8f84-4712c89fe9e9'),
(3, 3, 'en', 0, 'vehicles/{slug}', NULL, '2016-03-01 09:31:20', '2016-03-01 09:31:20', '4dfe44de-760b-4686-85e6-4bc806632861'),
(4, 4, 'en', 0, 'music/{slug}', NULL, '2016-03-01 11:48:19', '2016-03-01 11:48:19', '65c08f2f-8191-43c8-b906-6859403b8e8a'),
(5, 5, 'en', 0, 'vehicle-reviews/{slug}', NULL, '2016-03-03 11:35:53', '2016-03-03 11:35:53', '06571227-3cbc-4cdc-a5b9-ac9182099c06');

-- --------------------------------------------------------

--
-- Table structure for table `craft_seomatic_meta`
--

CREATE TABLE IF NOT EXISTS `craft_seomatic_meta` (
  `id` int(11) NOT NULL,
  `seoImageId` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'en',
  `elementId` int(11) DEFAULT '0',
  `metaType` enum('default','template') COLLATE utf8_unicode_ci DEFAULT 'template',
  `metaPath` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `seoTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `seoDescription` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `seoKeywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `twitterCardType` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'summary',
  `openGraphType` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'website',
  `robots` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_seomatic_meta_seoImageId_fk` (`seoImageId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_seomatic_settings`
--

CREATE TABLE IF NOT EXISTS `craft_seomatic_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siteSeoImageId` int(11) DEFAULT NULL,
  `genericOwnerImageId` int(11) DEFAULT NULL,
  `genericCreatorImageId` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `siteSeoName` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `siteSeoTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `siteSeoTitleSeparator` varchar(255) COLLATE utf8_unicode_ci DEFAULT '|',
  `siteSeoTitlePlacement` enum('before','after','none') COLLATE utf8_unicode_ci DEFAULT 'after',
  `siteSeoDescription` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `siteSeoKeywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `siteTwitterCardType` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `siteOpenGraphType` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `siteRobots` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `siteRobotsTxt` text COLLATE utf8_unicode_ci,
  `googleSiteVerification` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `googleAnalyticsUID` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `googleAnalyticsSendPageview` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `googleAnalyticsAdvertising` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `googleAnalyticsEcommerce` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `googleAnalyticsEEcommerce` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `googleAnalyticsLinkAttribution` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `googleAnalyticsLinker` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `siteOwnerType` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `siteOwnerSubType` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `siteOwnerSpecificType` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `genericOwnerName` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `genericOwnerAlternateName` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `genericOwnerDescription` varchar(1024) COLLATE utf8_unicode_ci DEFAULT '',
  `genericOwnerUrl` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `genericOwnerTelephone` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `genericOwnerEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `genericOwnerStreetAddress` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `genericOwnerAddressLocality` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `genericOwnerAddressRegion` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `genericOwnerPostalCode` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `genericOwnerAddressCountry` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `genericOwnerGeoLatitude` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `genericOwnerGeoLongitude` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `organizationOwnerDuns` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `organizationOwnerFounder` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `organizationOwnerFoundingDate` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `organizationOwnerFoundingLocation` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `localBusinessOwnerOpeningHours` text COLLATE utf8_unicode_ci,
  `corporationOwnerTickerSymbol` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `restaurantOwnerServesCuisine` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `restaurantOwnerMenuUrl` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `restaurantOwnerReservationsUrl` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `personOwnerGender` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `personOwnerBirthPlace` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `twitterHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `facebookHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `facebookProfileId` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `facebookAppId` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `linkedInHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `googlePlusHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `youtubeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `youtubeChannelHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `instagramHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `pinterestHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `githubHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `siteCreatorType` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `siteCreatorSubType` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `siteCreatorSpecificType` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `genericCreatorName` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `genericCreatorAlternateName` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `genericCreatorDescription` varchar(1024) COLLATE utf8_unicode_ci DEFAULT '',
  `genericCreatorUrl` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `genericCreatorTelephone` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `genericCreatorEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `genericCreatorStreetAddress` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `genericCreatorAddressLocality` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `genericCreatorAddressRegion` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `genericCreatorPostalCode` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `genericCreatorAddressCountry` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `genericCreatorGeoLatitude` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `genericCreatorGeoLongitude` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `organizationCreatorDuns` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `organizationCreatorFounder` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `organizationCreatorFoundingDate` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `organizationCreatorFoundingLocation` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `localBusinessCreatorOpeningHours` text COLLATE utf8_unicode_ci,
  `corporationCreatorTickerSymbol` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `restaurantCreatorServesCuisine` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `restaurantCreatorMenuUrl` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `restaurantCreatorReservationsUrl` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `personCreatorGender` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `personCreatorBirthPlace` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `genericCreatorHumansTxt` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_seomatic_settings_siteSeoImageId_fk` (`siteSeoImageId`),
  KEY `craft_seomatic_settings_genericOwnerImageId_fk` (`genericOwnerImageId`),
  KEY `craft_seomatic_settings_genericCreatorImageId_fk` (`genericCreatorImageId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `craft_seomatic_settings`
--

INSERT INTO `craft_seomatic_settings` (`id`, `siteSeoImageId`, `genericOwnerImageId`, `genericCreatorImageId`, `locale`, `siteSeoName`, `siteSeoTitle`, `siteSeoTitleSeparator`, `siteSeoTitlePlacement`, `siteSeoDescription`, `siteSeoKeywords`, `siteTwitterCardType`, `siteOpenGraphType`, `siteRobots`, `siteRobotsTxt`, `googleSiteVerification`, `googleAnalyticsUID`, `googleAnalyticsSendPageview`, `googleAnalyticsAdvertising`, `googleAnalyticsEcommerce`, `googleAnalyticsEEcommerce`, `googleAnalyticsLinkAttribution`, `googleAnalyticsLinker`, `siteOwnerType`, `siteOwnerSubType`, `siteOwnerSpecificType`, `genericOwnerName`, `genericOwnerAlternateName`, `genericOwnerDescription`, `genericOwnerUrl`, `genericOwnerTelephone`, `genericOwnerEmail`, `genericOwnerStreetAddress`, `genericOwnerAddressLocality`, `genericOwnerAddressRegion`, `genericOwnerPostalCode`, `genericOwnerAddressCountry`, `genericOwnerGeoLatitude`, `genericOwnerGeoLongitude`, `organizationOwnerDuns`, `organizationOwnerFounder`, `organizationOwnerFoundingDate`, `organizationOwnerFoundingLocation`, `localBusinessOwnerOpeningHours`, `corporationOwnerTickerSymbol`, `restaurantOwnerServesCuisine`, `restaurantOwnerMenuUrl`, `restaurantOwnerReservationsUrl`, `personOwnerGender`, `personOwnerBirthPlace`, `twitterHandle`, `facebookHandle`, `facebookProfileId`, `facebookAppId`, `linkedInHandle`, `googlePlusHandle`, `youtubeHandle`, `youtubeChannelHandle`, `instagramHandle`, `pinterestHandle`, `githubHandle`, `siteCreatorType`, `siteCreatorSubType`, `siteCreatorSpecificType`, `genericCreatorName`, `genericCreatorAlternateName`, `genericCreatorDescription`, `genericCreatorUrl`, `genericCreatorTelephone`, `genericCreatorEmail`, `genericCreatorStreetAddress`, `genericCreatorAddressLocality`, `genericCreatorAddressRegion`, `genericCreatorPostalCode`, `genericCreatorAddressCountry`, `genericCreatorGeoLatitude`, `genericCreatorGeoLongitude`, `organizationCreatorDuns`, `organizationCreatorFounder`, `organizationCreatorFoundingDate`, `organizationCreatorFoundingLocation`, `localBusinessCreatorOpeningHours`, `corporationCreatorTickerSymbol`, `restaurantCreatorServesCuisine`, `restaurantCreatorMenuUrl`, `restaurantCreatorReservationsUrl`, `personCreatorGender`, `personCreatorBirthPlace`, `genericCreatorHumansTxt`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, NULL, NULL, NULL, 'en', 'Craftblog', 'This is the default global title of the site pages.', '|', 'after', 'This is the default global natural language description of the content on the site pages.', 'blog, cars, music, tech, news', 'summary', 'website', '', '# robots.txt for {{ siteUrl }}\r\n\r\nSitemap: {{ siteUrl }}/sitemap.xml\r\n\r\n# Don''t allow web crawlers to index Craft\r\n\r\nUser-agent: *\r\nDisallow: /craft/\r\n', '', '', 1, 0, 0, 0, 0, 0, 'Organization', 'Corporation', '', 'Craftblog', '', '', 'http://dev.craftblog.com/', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Organization', 'Corporation', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '/* TEAM */\n\n{% if seomaticCreator.name is defined and seomaticCreator.name %}\nCreator: {{ seomaticCreator.name }}\n{% endif %}\n{% if seomaticCreator.url is defined and seomaticCreator.url %}\nURL: {{ seomaticCreator.url }}\n{% endif %}\n{% if seomaticCreator.description is defined and seomaticCreator.description %}\nDescription: {{ seomaticCreator.description }}\n{% endif %}\n\n/* THANKS */\n\nPixel & Tonic - https://pixelandtonic.com\n\n/* SITE */\n\nStandards: HTML5, CSS3\nComponents: Craft CMS, Yii, PHP, Javascript, SEOmatic', '2016-03-03 09:56:41', '2016-03-03 09:57:40', 'b9c0633e-89b1-41d4-81b2-3dd4f76ad3d6');

-- --------------------------------------------------------

--
-- Table structure for table `craft_sessions`
--

CREATE TABLE IF NOT EXISTS `craft_sessions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `token` char(100) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_sessions_uid_idx` (`uid`),
  KEY `craft_sessions_token_idx` (`token`),
  KEY `craft_sessions_dateUpdated_idx` (`dateUpdated`),
  KEY `craft_sessions_userId_fk` (`userId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `craft_sessions`
--

INSERT INTO `craft_sessions` (`id`, `userId`, `token`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'b18f0db4cc88619dc9779a91cc785b3687b48961czozMjoiVXh4N1FKYVlmaGxNU2F4VVo2NlBmSDVaQVdHY050TnciOw==', '2016-03-01 09:26:00', '2016-03-01 09:26:00', '84094211-60ac-421b-8d1d-1654f99a8672'),
(2, 1, 'efb3d05db5b1d298c85cf3985c3185089b8a5a7bczozMjoicG5GUFZDX1hWWDdpU3BPOEFuaTg0WG1KWmlTZXBxZGoiOw==', '2016-03-02 09:08:04', '2016-03-03 06:54:32', '44719507-dd9b-42df-8653-883624a11012');

-- --------------------------------------------------------

--
-- Table structure for table `craft_shunnedmessages`
--

CREATE TABLE IF NOT EXISTS `craft_shunnedmessages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_shunnedmessages_userId_message_unq_idx` (`userId`,`message`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `craft_structureelements`
--

CREATE TABLE IF NOT EXISTS `craft_structureelements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `structureId` int(11) NOT NULL,
  `elementId` int(11) DEFAULT NULL,
  `root` int(11) unsigned DEFAULT NULL,
  `lft` int(11) unsigned NOT NULL,
  `rgt` int(11) unsigned NOT NULL,
  `level` smallint(6) unsigned NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_structureelements_structureId_elementId_unq_idx` (`structureId`,`elementId`),
  KEY `craft_structureelements_root_idx` (`root`),
  KEY `craft_structureelements_lft_idx` (`lft`),
  KEY `craft_structureelements_rgt_idx` (`rgt`),
  KEY `craft_structureelements_level_idx` (`level`),
  KEY `craft_structureelements_elementId_fk` (`elementId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=17 ;

--
-- Dumping data for table `craft_structureelements`
--

INSERT INTO `craft_structureelements` (`id`, `structureId`, `elementId`, `root`, `lft`, `rgt`, `level`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, NULL, 1, 1, 2, 0, '2016-03-01 11:55:01', '2016-03-01 11:55:01', '15458672-4e43-45c1-8cfc-ce7c77d48525'),
(11, 2, NULL, 11, 1, 12, 0, '2016-03-03 07:22:59', '2016-03-03 07:22:59', '1331c13e-6f0b-48fe-8f25-e1352b18a064'),
(12, 2, 72, 11, 3, 10, 2, '2016-03-03 07:22:59', '2016-03-03 07:22:59', 'b4f85fe1-c3fa-4c6a-8445-16ab4971b2b1'),
(13, 2, 73, 11, 4, 7, 3, '2016-03-03 07:24:27', '2016-03-03 07:24:27', '541ffff3-88c8-4a56-a347-5dd51a4ab8e4'),
(14, 2, 74, 11, 5, 6, 4, '2016-03-03 07:24:46', '2016-03-03 07:24:46', 'b3ff5f7a-c78a-4722-96e4-664eef1d27ff'),
(15, 2, 75, 11, 8, 9, 3, '2016-03-03 07:24:58', '2016-03-03 07:24:58', 'fa0aa719-2206-4b8a-b0d1-16cc4a614d16'),
(16, 2, 76, 11, 2, 11, 1, '2016-03-03 08:08:26', '2016-03-03 08:08:26', '5eda9862-c4b9-41c5-9367-335cde681a86');

-- --------------------------------------------------------

--
-- Table structure for table `craft_structures`
--

CREATE TABLE IF NOT EXISTS `craft_structures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `maxLevels` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `craft_structures`
--

INSERT INTO `craft_structures` (`id`, `maxLevels`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, NULL, '2016-03-01 11:52:51', '2016-03-01 12:31:56', 'f850fdb3-756e-49b9-9294-81704b29356b'),
(2, NULL, '2016-03-03 07:21:44', '2016-03-03 07:30:18', '66cf7633-3b1b-4eb0-9524-fcb2d7563bc8');

-- --------------------------------------------------------

--
-- Table structure for table `craft_systemsettings`
--

CREATE TABLE IF NOT EXISTS `craft_systemsettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_systemsettings_category_unq_idx` (`category`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `craft_systemsettings`
--

INSERT INTO `craft_systemsettings` (`id`, `category`, `settings`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'email', '{"protocol":"php","emailAddress":"kurvin@limabean.co.za","senderName":"Craftblog"}', '2016-03-01 09:26:00', '2016-03-01 09:26:00', 'bf8b6949-a468-4431-b1aa-c82faf3e2021');

-- --------------------------------------------------------

--
-- Table structure for table `craft_taggroups`
--

CREATE TABLE IF NOT EXISTS `craft_taggroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_taggroups_name_unq_idx` (`name`),
  UNIQUE KEY `craft_taggroups_handle_unq_idx` (`handle`),
  KEY `craft_taggroups_fieldLayoutId_fk` (`fieldLayoutId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `craft_taggroups`
--

INSERT INTO `craft_taggroups` (`id`, `name`, `handle`, `fieldLayoutId`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Default', 'default', 28, '2016-03-01 09:26:00', '2016-03-02 14:13:54', '16cb0b77-1bc9-4b23-86dc-360dc267a4c6');

-- --------------------------------------------------------

--
-- Table structure for table `craft_tags`
--

CREATE TABLE IF NOT EXISTS `craft_tags` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_tags_groupId_fk` (`groupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_tags`
--

INSERT INTO `craft_tags` (`id`, `groupId`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(5, 1, '2016-03-01 09:51:07', '2016-03-01 09:51:07', 'c4d032ee-7b15-4acd-9172-25d309b1da14'),
(6, 1, '2016-03-01 09:51:12', '2016-03-01 09:51:12', '049e3b77-1193-49d3-8caa-f0c6b4e5421b'),
(7, 1, '2016-03-01 09:51:18', '2016-03-01 09:51:18', '9b2c65bb-3289-4dfb-ba31-d2c5cc6e6cb5'),
(9, 1, '2016-03-01 10:05:48', '2016-03-01 10:05:48', '156a047b-34db-4eef-bba2-ae7217b3e274'),
(10, 1, '2016-03-01 10:05:51', '2016-03-01 10:05:51', 'be653539-6a06-471e-9b3c-6f0e49178d41'),
(11, 1, '2016-03-01 10:05:56', '2016-03-01 10:05:56', '7428340d-33fe-428d-91fe-1bef1a729379'),
(44, 1, '2016-03-01 11:42:23', '2016-03-01 11:42:23', 'eee654a0-422e-4314-9dbb-21c200f8d729'),
(52, 1, '2016-03-01 12:08:47', '2016-03-01 12:08:47', '99882f52-45a3-43a5-8e22-de70c32fb506'),
(53, 1, '2016-03-01 12:08:54', '2016-03-01 12:08:54', '26240696-1608-4655-9642-18669023dfc9'),
(69, 1, '2016-03-03 07:02:49', '2016-03-03 07:02:49', '0ff3f0de-b721-474a-a099-29f9f6381ad6'),
(70, 1, '2016-03-03 07:02:53', '2016-03-03 07:02:53', '5427fabf-0829-4739-bce6-b18768335329');

-- --------------------------------------------------------

--
-- Table structure for table `craft_tasks`
--

CREATE TABLE IF NOT EXISTS `craft_tasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `root` int(11) unsigned DEFAULT NULL,
  `lft` int(11) unsigned NOT NULL,
  `rgt` int(11) unsigned NOT NULL,
  `level` smallint(6) unsigned NOT NULL,
  `currentStep` int(11) unsigned DEFAULT NULL,
  `totalSteps` int(11) unsigned DEFAULT NULL,
  `status` enum('pending','error','running') COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_tasks_root_idx` (`root`),
  KEY `craft_tasks_lft_idx` (`lft`),
  KEY `craft_tasks_rgt_idx` (`rgt`),
  KEY `craft_tasks_level_idx` (`level`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=138 ;

-- --------------------------------------------------------

--
-- Table structure for table `craft_templatecachecriteria`
--

CREATE TABLE IF NOT EXISTS `craft_templatecachecriteria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cacheId` int(11) NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `criteria` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `craft_templatecachecriteria_cacheId_fk` (`cacheId`),
  KEY `craft_templatecachecriteria_type_idx` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `craft_templatecacheelements`
--

CREATE TABLE IF NOT EXISTS `craft_templatecacheelements` (
  `cacheId` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  KEY `craft_templatecacheelements_cacheId_fk` (`cacheId`),
  KEY `craft_templatecacheelements_elementId_fk` (`elementId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_templatecaches`
--

CREATE TABLE IF NOT EXISTS `craft_templatecaches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cacheKey` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expiryDate` datetime NOT NULL,
  `body` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `craft_templatecaches_expiryDate_cacheKey_locale_path_idx` (`expiryDate`,`cacheKey`,`locale`,`path`),
  KEY `craft_templatecaches_locale_fk` (`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `craft_tokens`
--

CREATE TABLE IF NOT EXISTS `craft_tokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `route` text COLLATE utf8_unicode_ci,
  `usageLimit` tinyint(3) unsigned DEFAULT NULL,
  `usageCount` tinyint(3) unsigned DEFAULT NULL,
  `expiryDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_tokens_token_unq_idx` (`token`),
  KEY `craft_tokens_expiryDate_idx` (`expiryDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `craft_usergroups`
--

CREATE TABLE IF NOT EXISTS `craft_usergroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `craft_usergroups_users`
--

CREATE TABLE IF NOT EXISTS `craft_usergroups_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_usergroups_users_groupId_userId_unq_idx` (`groupId`,`userId`),
  KEY `craft_usergroups_users_userId_fk` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `craft_userpermissions`
--

CREATE TABLE IF NOT EXISTS `craft_userpermissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_userpermissions_name_unq_idx` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `craft_userpermissions_usergroups`
--

CREATE TABLE IF NOT EXISTS `craft_userpermissions_usergroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permissionId` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_userpermissions_usergroups_permissionId_groupId_unq_idx` (`permissionId`,`groupId`),
  KEY `craft_userpermissions_usergroups_groupId_fk` (`groupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `craft_userpermissions_users`
--

CREATE TABLE IF NOT EXISTS `craft_userpermissions_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permissionId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_userpermissions_users_permissionId_userId_unq_idx` (`permissionId`,`userId`),
  KEY `craft_userpermissions_users_userId_fk` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `craft_users`
--

CREATE TABLE IF NOT EXISTS `craft_users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `preferredLocale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weekStartDay` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `admin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `client` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `locked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `suspended` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pending` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `archived` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `lastLoginDate` datetime DEFAULT NULL,
  `lastLoginAttemptIPAddress` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `invalidLoginWindowStart` datetime DEFAULT NULL,
  `invalidLoginCount` tinyint(4) unsigned DEFAULT NULL,
  `lastInvalidLoginDate` datetime DEFAULT NULL,
  `lockoutDate` datetime DEFAULT NULL,
  `verificationCode` char(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `verificationCodeIssuedDate` datetime DEFAULT NULL,
  `unverifiedEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `passwordResetRequired` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `lastPasswordChangeDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_users_username_unq_idx` (`username`),
  UNIQUE KEY `craft_users_email_unq_idx` (`email`),
  KEY `craft_users_verificationCode_idx` (`verificationCode`),
  KEY `craft_users_uid_idx` (`uid`),
  KEY `craft_users_preferredLocale_fk` (`preferredLocale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_users`
--

INSERT INTO `craft_users` (`id`, `username`, `photo`, `firstName`, `lastName`, `email`, `password`, `preferredLocale`, `weekStartDay`, `admin`, `client`, `locked`, `suspended`, `pending`, `archived`, `lastLoginDate`, `lastLoginAttemptIPAddress`, `invalidLoginWindowStart`, `invalidLoginCount`, `lastInvalidLoginDate`, `lockoutDate`, `verificationCode`, `verificationCodeIssuedDate`, `unverifiedEmail`, `passwordResetRequired`, `lastPasswordChangeDate`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'kurvin', NULL, NULL, NULL, 'kurvin@limabean.co.za', '$2y$13$IG0hi.7XBhy13vps/G5MN.X6QYbtR3mhMTMdo4730cjINFJGvAgi.', NULL, 0, 1, 0, 0, 0, 0, 0, '2016-03-02 09:08:04', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2016-03-01 09:25:59', '2016-03-01 09:25:59', '2016-03-02 09:08:04', 'dc07bd4f-b7fc-41f0-a699-b93d8e657e7f');

-- --------------------------------------------------------

--
-- Table structure for table `craft_widgets`
--

CREATE TABLE IF NOT EXISTS `craft_widgets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `colspan` tinyint(4) unsigned DEFAULT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_widgets_userId_fk` (`userId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `craft_widgets`
--

INSERT INTO `craft_widgets` (`id`, `userId`, `type`, `sortOrder`, `colspan`, `settings`, `enabled`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'RecentEntries', 1, NULL, NULL, 1, '2016-03-01 09:26:05', '2016-03-01 09:26:05', '7a6deab6-9b50-4d02-bfd1-5bed6f2692ec'),
(2, 1, 'GetHelp', 2, NULL, NULL, 1, '2016-03-01 09:26:05', '2016-03-01 09:26:05', '4d6e5b42-9f3f-4620-9b36-786d64749c1a'),
(3, 1, 'Updates', 3, NULL, NULL, 1, '2016-03-01 09:26:05', '2016-03-01 09:26:05', '39c0187c-9093-4056-a00b-093b11312f3c'),
(4, 1, 'Feed', 4, NULL, '{"url":"https:\\/\\/craftcms.com\\/news.rss","title":"Craft News"}', 1, '2016-03-01 09:26:05', '2016-03-01 09:26:05', '78f21469-0cce-482d-84e6-afe2a9466640'),
(5, 1, 'QuickPost', 5, NULL, '{"section":"3","entryType":""}', 0, '2016-03-01 09:31:38', '2016-03-01 09:42:44', '0f6a9927-af65-4798-94bd-8e75618dd08c');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `craft_assetfiles`
--
ALTER TABLE `craft_assetfiles`
  ADD CONSTRAINT `craft_assetfiles_folderId_fk` FOREIGN KEY (`folderId`) REFERENCES `craft_assetfolders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_assetfiles_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_assetfiles_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `craft_assetsources` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_assetfolders`
--
ALTER TABLE `craft_assetfolders`
  ADD CONSTRAINT `craft_assetfolders_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `craft_assetsources` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_assetfolders_parentId_fk` FOREIGN KEY (`parentId`) REFERENCES `craft_assetfolders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_assetindexdata`
--
ALTER TABLE `craft_assetindexdata`
  ADD CONSTRAINT `craft_assetindexdata_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `craft_assetsources` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_assetsources`
--
ALTER TABLE `craft_assetsources`
  ADD CONSTRAINT `craft_assetsources_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `craft_categories`
--
ALTER TABLE `craft_categories`
  ADD CONSTRAINT `craft_categories_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_categorygroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_categories_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_categorygroups`
--
ALTER TABLE `craft_categorygroups`
  ADD CONSTRAINT `craft_categorygroups_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `craft_categorygroups_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `craft_structures` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_categorygroups_i18n`
--
ALTER TABLE `craft_categorygroups_i18n`
  ADD CONSTRAINT `craft_categorygroups_i18n_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_categorygroups_i18n_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_categorygroups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_content`
--
ALTER TABLE `craft_content`
  ADD CONSTRAINT `craft_content_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_content_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craft_elements_i18n`
--
ALTER TABLE `craft_elements_i18n`
  ADD CONSTRAINT `craft_elements_i18n_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_elements_i18n_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_emailmessages`
--
ALTER TABLE `craft_emailmessages`
  ADD CONSTRAINT `craft_emailmessages_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craft_entries`
--
ALTER TABLE `craft_entries`
  ADD CONSTRAINT `craft_entries_authorId_fk` FOREIGN KEY (`authorId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_entries_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_entries_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_entries_typeId_fk` FOREIGN KEY (`typeId`) REFERENCES `craft_entrytypes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_entrydrafts`
--
ALTER TABLE `craft_entrydrafts`
  ADD CONSTRAINT `craft_entrydrafts_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_entrydrafts_creatorId_fk` FOREIGN KEY (`creatorId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_entrydrafts_entryId_fk` FOREIGN KEY (`entryId`) REFERENCES `craft_entries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_entrydrafts_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_entrytypes`
--
ALTER TABLE `craft_entrytypes`
  ADD CONSTRAINT `craft_entrytypes_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `craft_entrytypes_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_entryversions`
--
ALTER TABLE `craft_entryversions`
  ADD CONSTRAINT `craft_entryversions_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_entryversions_creatorId_fk` FOREIGN KEY (`creatorId`) REFERENCES `craft_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `craft_entryversions_entryId_fk` FOREIGN KEY (`entryId`) REFERENCES `craft_entries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_entryversions_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_fieldlayoutfields`
--
ALTER TABLE `craft_fieldlayoutfields`
  ADD CONSTRAINT `craft_fieldlayoutfields_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_fieldlayoutfields_layoutId_fk` FOREIGN KEY (`layoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_fieldlayoutfields_tabId_fk` FOREIGN KEY (`tabId`) REFERENCES `craft_fieldlayouttabs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_fieldlayouttabs`
--
ALTER TABLE `craft_fieldlayouttabs`
  ADD CONSTRAINT `craft_fieldlayouttabs_layoutId_fk` FOREIGN KEY (`layoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_fields`
--
ALTER TABLE `craft_fields`
  ADD CONSTRAINT `craft_fields_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_fieldgroups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_globalsets`
--
ALTER TABLE `craft_globalsets`
  ADD CONSTRAINT `craft_globalsets_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `craft_globalsets_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_matrixblocks`
--
ALTER TABLE `craft_matrixblocks`
  ADD CONSTRAINT `craft_matrixblocks_typeId_fk` FOREIGN KEY (`typeId`) REFERENCES `craft_matrixblocktypes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_matrixblocks_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_matrixblocks_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_matrixblocks_ownerId_fk` FOREIGN KEY (`ownerId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_matrixblocks_ownerLocale_fk` FOREIGN KEY (`ownerLocale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craft_matrixblocktypes`
--
ALTER TABLE `craft_matrixblocktypes`
  ADD CONSTRAINT `craft_matrixblocktypes_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `craft_matrixblocktypes_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_matrixcontent_neo`
--
ALTER TABLE `craft_matrixcontent_neo`
  ADD CONSTRAINT `craft_matrixcontent_neo_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_matrixcontent_neo_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craft_migrations`
--
ALTER TABLE `craft_migrations`
  ADD CONSTRAINT `craft_migrations_pluginId_fk` FOREIGN KEY (`pluginId`) REFERENCES `craft_plugins` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_relations`
--
ALTER TABLE `craft_relations`
  ADD CONSTRAINT `craft_relations_targetId_fk` FOREIGN KEY (`targetId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_relations_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_relations_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_relations_sourceLocale_fk` FOREIGN KEY (`sourceLocale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craft_routes`
--
ALTER TABLE `craft_routes`
  ADD CONSTRAINT `craft_routes_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craft_sections`
--
ALTER TABLE `craft_sections`
  ADD CONSTRAINT `craft_sections_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `craft_structures` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `craft_sections_i18n`
--
ALTER TABLE `craft_sections_i18n`
  ADD CONSTRAINT `craft_sections_i18n_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_sections_i18n_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_seomatic_meta`
--
ALTER TABLE `craft_seomatic_meta`
  ADD CONSTRAINT `craft_seomatic_meta_seoImageId_fk` FOREIGN KEY (`seoImageId`) REFERENCES `craft_assetfiles` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `craft_seomatic_meta_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_seomatic_settings`
--
ALTER TABLE `craft_seomatic_settings`
  ADD CONSTRAINT `craft_seomatic_settings_genericCreatorImageId_fk` FOREIGN KEY (`genericCreatorImageId`) REFERENCES `craft_assetfiles` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `craft_seomatic_settings_genericOwnerImageId_fk` FOREIGN KEY (`genericOwnerImageId`) REFERENCES `craft_assetfiles` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `craft_seomatic_settings_siteSeoImageId_fk` FOREIGN KEY (`siteSeoImageId`) REFERENCES `craft_assetfiles` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `craft_sessions`
--
ALTER TABLE `craft_sessions`
  ADD CONSTRAINT `craft_sessions_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_shunnedmessages`
--
ALTER TABLE `craft_shunnedmessages`
  ADD CONSTRAINT `craft_shunnedmessages_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_structureelements`
--
ALTER TABLE `craft_structureelements`
  ADD CONSTRAINT `craft_structureelements_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_structureelements_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `craft_structures` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_taggroups`
--
ALTER TABLE `craft_taggroups`
  ADD CONSTRAINT `craft_taggroups_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `craft_tags`
--
ALTER TABLE `craft_tags`
  ADD CONSTRAINT `craft_tags_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_taggroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_tags_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_templatecachecriteria`
--
ALTER TABLE `craft_templatecachecriteria`
  ADD CONSTRAINT `craft_templatecachecriteria_cacheId_fk` FOREIGN KEY (`cacheId`) REFERENCES `craft_templatecaches` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_templatecacheelements`
--
ALTER TABLE `craft_templatecacheelements`
  ADD CONSTRAINT `craft_templatecacheelements_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_templatecacheelements_cacheId_fk` FOREIGN KEY (`cacheId`) REFERENCES `craft_templatecaches` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_templatecaches`
--
ALTER TABLE `craft_templatecaches`
  ADD CONSTRAINT `craft_templatecaches_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craft_usergroups_users`
--
ALTER TABLE `craft_usergroups_users`
  ADD CONSTRAINT `craft_usergroups_users_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_usergroups_users_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_usergroups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_userpermissions_usergroups`
--
ALTER TABLE `craft_userpermissions_usergroups`
  ADD CONSTRAINT `craft_userpermissions_usergroups_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_usergroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_userpermissions_usergroups_permissionId_fk` FOREIGN KEY (`permissionId`) REFERENCES `craft_userpermissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_userpermissions_users`
--
ALTER TABLE `craft_userpermissions_users`
  ADD CONSTRAINT `craft_userpermissions_users_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_userpermissions_users_permissionId_fk` FOREIGN KEY (`permissionId`) REFERENCES `craft_userpermissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_users`
--
ALTER TABLE `craft_users`
  ADD CONSTRAINT `craft_users_preferredLocale_fk` FOREIGN KEY (`preferredLocale`) REFERENCES `craft_locales` (`locale`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_users_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_widgets`
--
ALTER TABLE `craft_widgets`
  ADD CONSTRAINT `craft_widgets_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
