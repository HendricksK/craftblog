-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2016 at 01:46 PM
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
(13, 1, 1, '2016-Volkswagen-GTE-by-Paddy-McGrath-34-800x533.jpg', 'image', 800, 533, 192877, '2016-03-01 10:19:08', '2016-03-01 10:19:13', '2016-03-01 12:21:59', 'c3c1712a-ce1a-4f70-99e0-29889891207f'),
(14, 1, 1, '01_CHIRON_grand-palais_34-front_WEB.0.jpg', 'image', 1020, 681, 159755, '2016-03-01 10:19:47', '2016-03-01 10:19:47', '2016-03-01 12:21:57', 'd2240606-2ea6-4129-8325-83c99505754f'),
(15, 1, 1, '02_CHIRON_grand-palais_side_WEB.0.jpg', 'image', 1020, 681, 150350, '2016-03-01 10:19:48', '2016-03-01 10:19:48', '2016-03-01 12:21:57', '3420eb44-99b0-4df9-9594-41b19100404b'),
(16, 1, 1, '03_CHIRON_grand-palais_side_WEB.0.jpg', 'image', 1020, 680, 128845, '2016-03-01 10:19:49', '2016-03-01 10:19:49', '2016-03-01 12:21:58', '88cad6a5-c5c8-4fd6-ad68-6cf868ec09ad'),
(17, 1, 1, '04_CHIRON_grand-palais_34front_WEB.0.jpg', 'image', 1020, 681, 113320, '2016-03-01 10:19:49', '2016-03-01 10:19:49', '2016-03-01 12:21:57', '74472c52-cc78-4abc-9d6a-887cb5ce9c54'),
(18, 1, 1, '05_CHIRON_grand-palais_34-rear_WEB.0.jpg', 'image', 1020, 681, 94720, '2016-03-01 10:19:50', '2016-03-01 10:19:50', '2016-03-01 12:21:58', '9382a5f3-6ffc-486e-be47-f2909a8e4dd7'),
(19, 1, 1, '06_CHIRON_grand-palais_34-rear_WEB.0.jpg', 'image', 1020, 681, 79132, '2016-03-01 10:19:50', '2016-03-01 10:19:50', '2016-03-01 12:21:58', 'b4fff0cd-a333-4edb-94d4-bccc5c9a8d70'),
(20, 1, 1, '09_CHIRON_grand-palais_side_WEB.0.jpg', 'image', 1020, 680, 68709, '2016-03-01 10:19:51', '2016-03-01 10:19:51', '2016-03-01 12:21:58', 'acf6527d-f4ea-425f-9b56-390923a0a42f'),
(21, 1, 1, '2016-Volkswagen-GTE-by-Paddy-McGrath-1-1200x800.jpg', 'image', 1200, 800, 271483, '2016-03-01 09:59:59', '2016-03-01 10:56:23', '2016-03-01 12:21:58', '7ef52a9d-572c-4854-bb03-0f68bd5939df'),
(22, 1, 1, '2016-Volkswagen-GTE-by-Paddy-McGrath-18-1200x800.jpg', 'image', 1200, 800, 161585, '2016-03-01 09:59:50', '2016-03-01 10:56:24', '2016-03-01 12:21:59', '15ce4a41-910c-42ab-88af-c895ef1f60b1'),
(23, 1, 1, '2016-Volkswagen-GTE-by-Paddy-McGrath-19-800x533.jpg', 'image', 800, 533, 110545, '2016-03-01 10:04:41', '2016-03-01 10:56:24', '2016-03-01 12:21:59', '7a948045-0223-497a-b5e8-839b0d5f6820'),
(24, 1, 1, '2016-Volkswagen-GTE-by-Paddy-McGrath-2-1200x800.jpg', 'image', 1200, 800, 425835, '2016-03-01 10:00:03', '2016-03-01 10:56:24', '2016-03-01 12:21:59', '39a91736-6a0d-4e63-8f3f-5ef55f85fc3b'),
(25, 1, 3, '01_CHIRON_grand-palais_34-front_WEB.0.jpg', 'image', 1020, 681, 162525, '2016-03-01 09:49:59', '2016-03-01 10:56:25', '2016-03-01 12:22:00', '2ad57c77-4af2-4c48-a3bd-fb2928006ae4'),
(26, 1, 3, '02_CHIRON_grand-palais_side_WEB.0.jpg', 'image', 1020, 681, 153490, '2016-03-01 09:50:02', '2016-03-01 10:56:25', '2016-03-01 12:22:00', '3497b69c-8334-4430-bf7d-93014cf399b9'),
(27, 1, 3, '03_CHIRON_grand-palais_side_WEB.0.jpg', 'image', 1020, 680, 132937, '2016-03-01 09:50:17', '2016-03-01 10:56:25', '2016-03-01 12:22:01', 'e01ca2cd-40ff-4bc9-bea8-56861f7ba484'),
(28, 1, 3, '04_CHIRON_grand-palais_34front_WEB.0.jpg', 'image', 1020, 681, 116893, '2016-03-01 09:50:06', '2016-03-01 10:56:25', '2016-03-01 12:22:01', 'b77954e3-daeb-43ee-a178-e3929a7b1ab2'),
(29, 1, 3, '05_CHIRON_grand-palais_34-rear_WEB.0.jpg', 'image', 1020, 681, 98229, '2016-03-01 09:50:09', '2016-03-01 10:56:26', '2016-03-01 12:22:01', '6e22531a-782d-4731-abf5-8b2f227067d8'),
(30, 1, 3, '06_CHIRON_grand-palais_34-rear_WEB.0.jpg', 'image', 1020, 681, 84381, '2016-03-01 09:50:21', '2016-03-01 10:56:26', '2016-03-01 12:22:01', '9a11b236-f5e4-4209-b9cd-05d4b5c9ad8c'),
(31, 1, 3, '09_CHIRON_grand-palais_side_WEB.0.jpg', 'image', 1020, 680, 72455, '2016-03-01 09:50:12', '2016-03-01 10:56:26', '2016-03-01 12:22:01', '2c846326-c78d-4a10-b19b-d1783829bf8c'),
(32, 1, 4, '2016-Volkswagen-GTE-by-Paddy-McGrath-1-1200x800.jpg', 'image', 1200, 800, 271483, '2016-03-01 09:59:59', '2016-03-01 10:56:27', '2016-03-01 12:22:02', '47f2d352-52c0-4977-861a-89836c720df3'),
(33, 1, 4, '2016-Volkswagen-GTE-by-Paddy-McGrath-18-1200x800.jpg', 'image', 1200, 800, 161585, '2016-03-01 09:59:50', '2016-03-01 10:56:27', '2016-03-01 12:22:02', '2efa534e-68a3-4edd-adf5-157b8a40f353'),
(34, 1, 4, '2016-Volkswagen-GTE-by-Paddy-McGrath-19-800x533.jpg', 'image', 800, 533, 110545, '2016-03-01 10:04:41', '2016-03-01 10:56:27', '2016-03-01 12:22:02', 'eafc44ee-db44-4145-8d31-22c28c893230'),
(35, 1, 4, '2016-Volkswagen-GTE-by-Paddy-McGrath-2-1200x800.jpg', 'image', 1200, 800, 425835, '2016-03-01 10:00:03', '2016-03-01 10:56:28', '2016-03-01 12:22:02', '08567a21-dcc6-4110-91b2-af1c0533912f'),
(36, 1, 4, '2016-Volkswagen-GTE-by-Paddy-McGrath-34-800x533.jpg', 'image', 800, 533, 193026, '2016-03-01 10:06:10', '2016-03-01 10:56:28', '2016-03-01 12:22:02', '4736bb9c-4f94-4952-95e4-abe625dd830b'),
(37, 1, 1, 'News_765x350px.jpg', 'image', 765, 350, 39897, '2016-03-01 11:05:01', '2016-03-01 11:04:46', '2016-03-01 12:22:03', '311b019f-7517-4d37-8793-9e9af2feacb0'),
(38, 1, 1, 'craft-blog-graphic1.png', 'image', 1200, 674, 47533, '2016-03-01 11:05:01', '2016-03-01 11:04:47', '2016-03-01 12:22:04', '1d9c15a3-bbd4-4d9f-be9f-7b5648ac3f7d'),
(41, 1, 1, 'ngbbs4f9c54f32e11b_zps46460b6b.gif', 'image', 200, 205, 14555, '2016-03-01 11:38:12', '2016-03-01 11:38:12', '2016-03-01 12:22:04', '89fcb49f-0bba-473f-95e0-fb7d34607a38'),
(43, 1, 1, '220px-Who_Killed_The_Electric_Car_cover.jpg', 'image', 220, 317, 26107, '2016-03-01 11:41:40', '2016-03-01 11:41:43', '2016-03-01 12:21:59', 'bdef98f5-4323-4592-90a6-37ede951f33d'),
(46, 1, 1, 'fisker-karma.jpg', 'image', 1280, 782, 173435, '2016-03-01 11:46:06', '2016-03-01 11:46:19', '2016-03-01 12:22:04', '01905355-7f5c-4d01-80cb-c549f4e0bf1c'),
(51, 1, 1, 'Rage_Against_The_Machine.jpg', 'image', 3072, 2304, 3859876, '2016-03-01 12:07:55', '2016-03-01 12:08:12', '2016-03-01 12:22:03', '5b12d41d-ee5f-472b-a5f9-06760201e160'),
(55, 1, 1, 'Dwayne_Johnson_at_the_2009_Tribeca_Film_Festival.jpg', 'image', 2100, 2803, 635420, '2016-03-01 12:21:29', '2016-03-01 12:22:00', '2016-03-01 12:22:00', 'f20085a4-d865-40d6-9e6b-ae1e16623534');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=191 ;

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
(1, 'Images', 'Images', 'Local', '{"path":"{basePath}assets\\/images\\/","url":"{baseUrl}\\/assets\\/images\\/"}', 1, 14, '2016-03-01 10:13:59', '2016-03-01 11:35:59', '6b91e622-3596-445d-9345-23c1ecdb2250');

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
(48, 1, '2016-03-01 11:55:49', '2016-03-01 12:26:48', '0eddff9f-c320-418a-9289-cd392008691d'),
(49, 1, '2016-03-01 11:56:38', '2016-03-01 11:56:38', 'e98981cc-4291-4df0-8eda-8363c09b0e4f'),
(50, 1, '2016-03-01 11:56:52', '2016-03-01 11:56:52', 'a12a6c90-c6dd-4f8b-b2f5-93ed1f811320');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `craft_categorygroups`
--

INSERT INTO `craft_categorygroups` (`id`, `structureId`, `fieldLayoutId`, `name`, `handle`, `hasUrls`, `template`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 21, 'Music', 'music', 1, '{baseUrl}/craft/templates/music', '2016-03-01 11:52:51', '2016-03-01 12:31:56', '72e581b5-ed7d-46ff-a87a-8b5e4d9b9434');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `craft_categorygroups_i18n`
--

INSERT INTO `craft_categorygroups_i18n` (`id`, `groupId`, `locale`, `urlFormat`, `nestedUrlFormat`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'en', 'music/{slug}', '{parent.uri}/{slug}', '2016-03-01 11:52:51', '2016-03-01 11:52:51', 'ab410e06-49a3-468a-b3b8-4602398bc43d');

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
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_content_elementId_locale_unq_idx` (`elementId`,`locale`),
  KEY `craft_content_title_idx` (`title`),
  KEY `craft_content_locale_fk` (`locale`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=56 ;

--
-- Dumping data for table `craft_content`
--

INSERT INTO `craft_content` (`id`, `elementId`, `locale`, `title`, `field_body`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'en', NULL, NULL, '2016-03-01 09:25:59', '2016-03-01 09:25:59', 'be69736c-5da9-493f-96cd-608c774ea23c'),
(2, 2, 'en', 'Welcome to Dev.craftblog.com!', '<p>It’s true, this site doesn’t have a whole lot of content yet, but don’t worry. Our web developers have just installed the CMS, and they’re setting things up for the content editors this very moment. Soon Dev.craftblog.com will be an oasis of fresh perspectives, sharp analyses, and astute opinions that will keep you coming back again and again.</p>', '2016-03-01 09:26:01', '2016-03-01 11:05:29', '0b441de9-df9e-4546-9793-2a3b8fa39d37'),
(3, 3, 'en', 'We just installed Craft!', '<p>Craft is the CMS that’s powering Dev.craftblog.com. It’s beautiful, powerful, flexible, and easy-to-use, and it’s made by Pixel & Tonic. We can’t wait to dive in and see what it’s capable of!</p>\r\n\r\n<!--pagebreak-->\r\n\r\n<p>This is even more captivating content, which you couldn’t see on the News index page because it was entered after a Page Break, and the News index template only likes to show the content on the first page.</p>\r\n\r\n<p>Craft: a nice alternative to Word, if you’re making a website.</p>', '2016-03-01 09:26:01', '2016-03-01 11:05:14', 'c89e6730-38bf-434a-9b46-a68f3c4f58ea'),
(4, 4, 'en', 'Bugatti Chirion', '<p><img src="/assets/images/March-01-2016/Bugatti_Chirion/01_CHIRON_grand-palais_34-front_WEB.0.jpg" style="width:400px"></p>\r\n\r\n<p>There are many absurd facts about the Bugatti Chiron that was just introduced today ahead of the Geneva Motor Show. Its top speed is electronically limited &mdash;&nbsp;<em>limited!</em>&nbsp;&mdash; to 261 miles per hour. It can reach 125 miles per hour in 6.5 seconds, which may very well be faster than the time it takes your personal vehicle to reach half that. And the base price is an astounding €2.4 million ($2.6 million), which you can presumably run up with options and customization. Nothing about this rare machine (just 500 will be made) is for the faint of heart.&nbsp;We''ve&nbsp;\r\n<a href="http://www.theverge.com/2016/2/29/11132084/bugatti-chiron-announced-geneva-motor-show-2016">already given you all the details about this ridiculous machine</a>&nbsp;&mdash; but Bugatti, in its infinite generosity, has provided a huge and extremely awesome set of photos to go along with it. We thought you might enjoy some of them.</p>\r\n\r\n\r\n\r\n<p>- Original article at <a href="http://www.theverge.com/2016/2/29/11133374/bugatti-chiron-pictures">The Verge</a></p>\r\n\r\n\r\n\r\n<p><br></p>', '2016-03-01 09:33:00', '2016-03-01 10:20:03', 'ff9cd096-c608-4072-84b6-5b53701190af'),
(5, 5, 'en', 'chirion', NULL, '2016-03-01 09:51:07', '2016-03-01 09:51:07', 'bd2d297d-4314-4f41-a75c-d29106a99c62'),
(6, 6, 'en', 'bugatti', NULL, '2016-03-01 09:51:12', '2016-03-01 09:51:12', 'd01010dc-3ce3-4a66-b940-7e540ea4e084'),
(7, 7, 'en', 'hypercar', NULL, '2016-03-01 09:51:18', '2016-03-01 09:51:18', '46933ac4-d967-4ed1-8fbb-8cf1a51c491c'),
(8, 8, 'en', 'Golf GTE', '<p><img src="/assets/images/March-01-2016/Golf_GTE/2016-Volkswagen-GTE-by-Paddy-McGrath-1-1200x800.jpg" style="width: 400px"></p>\r\n\r\n<iframe width="400" height="auto" src="https://www.youtube.com/embed/2UyIM55UoIY" frameborder="0" allowfullscreen=""></iframe>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p> Take a look at this. I start the video in electric mode and make my way around the hairpin in complete silence, which is a surreal feeling at first. Coming out of the hairpin, I switch to ‘GTE’ and to manual shifting before accelerating. For a car that weighs nearly 1,600kg (3,527lb) it completely belies its on-paper engine size and performance. </p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p><img src="/assets/images/March-01-2016/Golf_GTE/2016-Volkswagen-GTE-by-Paddy-McGrath-19-800x533.jpg" style="width: 400px"></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p> I suppose the most ringing endorsement I can give the GTE is that, as I write this, it’s parked outside my house for another few days before I drop it back to Volkswagen. I’m off to Mondello in two days for some Speedhunting activities and I have the choice of taking it or Project GTI. Honestly, I’m stumped as to which car to choose.\r\n</p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p><img src="/assets/images/March-01-2016/Golf_GTE/2016-Volkswagen-GTE-by-Paddy-McGrath-34-800x533.jpg" style="width: 400px"></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p>Where as the other GT-grade&nbsp;cars are of 2.0-litre capacity (regardless of petrol or diesel, both are also turbocharged) the GTE is fitted with a smaller 1.4-litre turbocharged motor. In isolation, this unit produces around 150hp, but it’s not alone under the bonnet.<br></p>', '2016-03-01 10:05:39', '2016-03-01 10:45:22', 'e4c55ac0-d821-4c15-af5b-902a47780261'),
(9, 9, 'en', 'GTE', NULL, '2016-03-01 10:05:48', '2016-03-01 10:05:48', '832d384d-75e9-46fa-9dc7-cdbffd425fdc'),
(10, 10, 'en', 'Golf', NULL, '2016-03-01 10:05:51', '2016-03-01 10:05:51', '85478df7-cf49-4a44-825b-e872d28ab33f'),
(11, 11, 'en', 'Hybrid', NULL, '2016-03-01 10:05:56', '2016-03-01 10:05:56', '56597749-ed11-48c5-8727-9d3bf6290dfd'),
(13, 13, 'en', '2016  Volkswagen  Gte By  Paddy  Mc Grath 34 800X533', NULL, '2016-03-01 10:19:13', '2016-03-01 12:21:59', '27e1ef79-5c16-4b7f-bf97-4656437c7b87'),
(14, 14, 'en', '01 Chiron Grand Palais 34 Front Web 0', NULL, '2016-03-01 10:19:47', '2016-03-01 12:21:57', '3c3b8dd0-4fc3-4d45-bba8-9963c8ab650f'),
(15, 15, 'en', '02 Chiron Grand Palais Side Web 0', NULL, '2016-03-01 10:19:48', '2016-03-01 12:21:57', 'ae5ad1c7-ec99-4230-8c7a-8a1a303ac2e5'),
(16, 16, 'en', '03 Chiron Grand Palais Side Web 0', NULL, '2016-03-01 10:19:49', '2016-03-01 12:21:57', '4708915a-7747-44f0-b0cb-27f80bfb19a0'),
(17, 17, 'en', '04 Chiron Grand Palais 34Front Web 0', NULL, '2016-03-01 10:19:49', '2016-03-01 12:21:57', '7c168a42-de55-4555-89d9-d644a4432e89'),
(18, 18, 'en', '05 Chiron Grand Palais 34 Rear Web 0', NULL, '2016-03-01 10:19:50', '2016-03-01 12:21:58', '407f7d8c-46af-4541-98e6-d59ef9e6c098'),
(19, 19, 'en', '06 Chiron Grand Palais 34 Rear Web 0', NULL, '2016-03-01 10:19:50', '2016-03-01 12:21:58', '7cdf5861-81b4-4340-85c3-1f05edce3795'),
(20, 20, 'en', '09 Chiron Grand Palais Side Web 0', NULL, '2016-03-01 10:19:51', '2016-03-01 12:21:58', '752bb753-9e0f-4f23-b6af-ccc72f0cd1a6'),
(21, 21, 'en', '2016  Volkswagen  Gte By  Paddy  Mc Grath 1 1200X800', NULL, '2016-03-01 10:56:23', '2016-03-01 12:21:58', '082e73e8-01dc-4407-b509-53cd24e804ca'),
(22, 22, 'en', '2016  Volkswagen  Gte By  Paddy  Mc Grath 18 1200X800', NULL, '2016-03-01 10:56:23', '2016-03-01 12:21:59', 'fa5b6853-0c88-4164-912f-2206f7f0aec3'),
(23, 23, 'en', '2016  Volkswagen  Gte By  Paddy  Mc Grath 19 800X533', NULL, '2016-03-01 10:56:24', '2016-03-01 12:21:59', 'fa17761a-bc66-431f-b95a-ee2f976f3a23'),
(24, 24, 'en', '2016  Volkswagen  Gte By  Paddy  Mc Grath 2 1200X800', NULL, '2016-03-01 10:56:24', '2016-03-01 12:21:59', 'a16d0cec-2e6f-4353-adc5-1d1fdeea7123'),
(25, 25, 'en', '01  Chiron Grand Palais 34 Front  Web 0', NULL, '2016-03-01 10:56:25', '2016-03-01 12:22:00', 'bd48a639-d0e0-4bc0-98e8-52950b29c74e'),
(26, 26, 'en', '02  Chiron Grand Palais Side  Web 0', NULL, '2016-03-01 10:56:25', '2016-03-01 12:22:00', '23a7a0c5-6c85-411c-8095-6899b5be2439'),
(27, 27, 'en', '03  Chiron Grand Palais Side  Web 0', NULL, '2016-03-01 10:56:25', '2016-03-01 12:22:00', '5b9aadcc-6c19-4bc5-b9fc-34441a2b2749'),
(28, 28, 'en', '04  Chiron Grand Palais 34Front  Web 0', NULL, '2016-03-01 10:56:25', '2016-03-01 12:22:01', '2c60cf91-bd64-4062-b95d-6b6a28c4f7f4'),
(29, 29, 'en', '05  Chiron Grand Palais 34 Rear  Web 0', NULL, '2016-03-01 10:56:26', '2016-03-01 12:22:01', 'f97c0dec-307b-4ff6-9a0f-ec1cd1091554'),
(30, 30, 'en', '06  Chiron Grand Palais 34 Rear  Web 0', NULL, '2016-03-01 10:56:26', '2016-03-01 12:22:01', '053d230f-2fe9-40d3-a85d-e2bca6927200'),
(31, 31, 'en', '09  Chiron Grand Palais Side  Web 0', NULL, '2016-03-01 10:56:26', '2016-03-01 12:22:01', '50cfa498-a0dc-4f6f-8e0e-68b66954e0d6'),
(32, 32, 'en', '2016  Volkswagen  Gte By  Paddy  Mc Grath 1 1200X800', NULL, '2016-03-01 10:56:27', '2016-03-01 12:22:02', '203b432e-5bc1-4fe3-932b-2174eef9b555'),
(33, 33, 'en', '2016  Volkswagen  Gte By  Paddy  Mc Grath 18 1200X800', NULL, '2016-03-01 10:56:27', '2016-03-01 12:22:02', '48a1f7ac-1e29-4afc-ba3b-9a6897302154'),
(34, 34, 'en', '2016  Volkswagen  Gte By  Paddy  Mc Grath 19 800X533', NULL, '2016-03-01 10:56:27', '2016-03-01 12:22:02', '185fa283-772a-44f0-a8ce-75b248667129'),
(35, 35, 'en', '2016  Volkswagen  Gte By  Paddy  Mc Grath 2 1200X800', NULL, '2016-03-01 10:56:28', '2016-03-01 12:22:02', '85552c93-bc95-49be-a5e1-d4d142f4ef66'),
(36, 36, 'en', '2016  Volkswagen  Gte By  Paddy  Mc Grath 34 800X533', NULL, '2016-03-01 10:56:28', '2016-03-01 12:22:02', '3ce32462-276b-432b-a83c-364779d36749'),
(37, 37, 'en', 'News 765X350Px', NULL, '2016-03-01 11:04:46', '2016-03-01 12:22:03', '06c46409-2d26-43e6-b6bf-675e595f9817'),
(38, 38, 'en', 'Craft Blog Graphic1', NULL, '2016-03-01 11:04:47', '2016-03-01 12:22:04', 'c30509c0-86e0-4fe2-b36e-0e66454c2d84'),
(41, 41, 'en', 'Ngbbs4F9C54F32E11B Zps46460B6B', NULL, '2016-03-01 11:38:12', '2016-03-01 12:22:04', 'b8d045d3-af35-4bfe-a51e-871e89f5b8b8'),
(43, 43, 'en', '220Px  Who  Killed  The  Electric  Car Cover', NULL, '2016-03-01 11:41:42', '2016-03-01 12:21:59', 'dd28c391-0311-4a58-9cdf-32637f35d726'),
(44, 44, 'en', 'electric car', NULL, '2016-03-01 11:42:23', '2016-03-01 11:42:23', '11f0d9e2-f7bb-49f2-810e-ae71f6c21d60'),
(45, 45, 'en', 'Screening of who killed the electric car.', '<p>A screening of who killed the electric car will take place on the 06/06/16 at the Durbanville quarry.&nbsp;</p>\r\n\r\n<p><em><strong>Who Killed the Electric Car?</strong></em>&nbsp;is a&nbsp;<a href="https://en.wikipedia.org/wiki/2006_in_film">2006</a>&nbsp;<a href="https://en.wikipedia.org/wiki/Documentary_film">documentary film</a>&nbsp;that explores the creation, limited commercialization, and subsequent destruction of the&nbsp;<a href="https://en.wikipedia.org/wiki/Battery_electric_vehicle">battery electric vehicle</a>&nbsp;in the&nbsp;<a href="https://en.wikipedia.org/wiki/United_States">United States</a>, specifically the&nbsp;<a href="https://en.wikipedia.org/wiki/General_Motors_EV1">General Motors EV1</a>&nbsp;of the mid-1990s. The film explores the roles of&nbsp;<a href="https://en.wikipedia.org/wiki/Automobile_manufacturer">automobile manufacturers</a>, the&nbsp;<a href="https://en.wikipedia.org/wiki/Oil_industry">oil industry</a>, the&nbsp;<a href="https://en.wikipedia.org/wiki/U.S._government">U.S. government</a>, the&nbsp;<a href="https://en.wikipedia.org/wiki/Government_of_California">California government</a>,<a href="https://en.wikipedia.org/wiki/Battery_(electricity)">batteries</a>,&nbsp;<a href="https://en.wikipedia.org/wiki/Hydrogen_vehicle">hydrogen vehicles</a>, and&nbsp;<a href="https://en.wikipedia.org/wiki/Consumer">consumers</a>&nbsp;in limiting the development and adoption of this technology.</p>\r\n\r\n<p>After a premiere at the&nbsp;<a href="https://en.wikipedia.org/wiki/Sundance_Film_Festival">Sundance Film Festival</a>, it was released theatrically by&nbsp;<a href="https://en.wikipedia.org/wiki/Sony_Pictures_Classics">Sony Pictures Classics</a>&nbsp;in June, 2006 and then on&nbsp;<a href="https://en.wikipedia.org/wiki/DVD">DVD</a>&nbsp;by&nbsp;<a href="https://en.wikipedia.org/wiki/Sony_Pictures_Home_Entertainment">Sony Pictures Home Entertainment</a>&nbsp;on November 14, 2006.<br>During an interview with&nbsp;<a href="https://en.wikipedia.org/wiki/CBS_News">CBS News</a>, director&nbsp;<a href="https://en.wikipedia.org/wiki/Chris_Paine">Chris Paine</a>&nbsp;announced that he had started a new documentary about electric cars with a working title of&nbsp;<em>Who Saved the Electric Car?</em>,<sup><a href="https://en.wikipedia.org/wiki/Who_Killed_the_Electric_Car%3F#cite_note-2">[2]</a></sup>&nbsp;later renamed&nbsp;<em><a href="https://en.wikipedia.org/wiki/Revenge_of_the_Electric_Car">Revenge of the Electric Car</a></em>, which had its world premiere at the 2011&nbsp;<a href="https://en.wikipedia.org/wiki/Tribeca_Film_Festival">Tribeca Film Festival</a>&nbsp;on&nbsp;<a href="https://en.wikipedia.org/wiki/Earth_Day">Earth Day</a>, April 22, 2011.<sup><a href="https://en.wikipedia.org/wiki/Who_Killed_the_Electric_Car%3F#cite_note-3">[3]</a></sup></p>\r\n\r\n<p>-&nbsp;<a href="https://en.wikipedia.org/wiki/Who_Killed_the_Electric_Car%3F" target="_blank">Wikipedia</a></p>', '2016-03-01 11:43:47', '2016-03-01 11:46:38', 'ca2d2a51-72ec-4371-b4cf-3296451769dd'),
(46, 46, 'en', 'Fisker Karma', NULL, '2016-03-01 11:46:19', '2016-03-01 12:22:04', 'c578c1fb-06af-4ac8-a300-29aff4287b7a'),
(48, 48, 'en', 'Rock', '<p><strong>Rock music</strong>&nbsp;is a genre of&nbsp;<a href="https://en.wikipedia.org/wiki/Popular_music">popular music</a>&nbsp;that originated as "<a href="https://en.wikipedia.org/wiki/Rock_and_roll">rock and roll</a>" in the United States in the 1950s, and developed into a range of different styles in the 1960s and later, particularly in the United Kingdom and the United States.<sup><a href="https://en.wikipedia.org/wiki/Rock_music#cite_note-studwell-1">[1]</a></sup><sup><a href="https://en.wikipedia.org/wiki/Rock_music#cite_note-2">[2]</a></sup>&nbsp;It has its roots in 1940s'' and 1950s'' rock and roll, itself heavily influenced by&nbsp;<a href="https://en.wikipedia.org/wiki/Blues">blues</a>,&nbsp;<a href="https://en.wikipedia.org/wiki/Rhythm_and_blues">rhythm and blues</a>&nbsp;and&nbsp;<a href="https://en.wikipedia.org/wiki/Country_music">country music</a>. Rock music also drew strongly on a number of other genres such as&nbsp;<a href="https://en.wikipedia.org/wiki/Electric_blues">electric blues</a>&nbsp;and&nbsp;<a href="https://en.wikipedia.org/wiki/Folk_music">folk</a>, and incorporated influences from&nbsp;<a href="https://en.wikipedia.org/wiki/Jazz">jazz</a>,&nbsp;<a href="https://en.wikipedia.org/wiki/Classical_music">classical</a>&nbsp;and other musical sources.<br>Musically, rock has centered on the&nbsp;<a href="https://en.wikipedia.org/wiki/Electric_guitar">electric guitar</a>, usually as part of a&nbsp;<a href="https://en.wikipedia.org/wiki/Rock_group">rock group</a>&nbsp;with&nbsp;<a href="https://en.wikipedia.org/wiki/Electric_bass_guitar">electric bass guitar</a>&nbsp;and&nbsp;<a href="https://en.wikipedia.org/wiki/Drum_kit">drums</a>. Typically, rock is song-based music usually with a&nbsp;<a href="https://en.wikipedia.org/wiki/Time_signature">4/4 time signature</a>using a&nbsp;<a href="https://en.wikipedia.org/wiki/Verse-chorus_form">verse-chorus form</a>, but the genre has become extremely diverse. Like&nbsp;<a href="https://en.wikipedia.org/wiki/Pop_music">pop music</a>, lyrics often stress romantic love but also address a wide variety of other themes that are frequently social or political in emphasis. The dominance of rock by white, male musicians has been seen as one of the key factors shaping the themes explored in rock music. Rock places a higher degree of emphasis on musicianship, live performance, and an ideology of&nbsp;<a href="https://en.wikipedia.org/wiki/Authenticity_(philosophy)">authenticity</a>&nbsp;than pop music.<br>By the late 1960s, referred to as the "golden age"<sup><a href="https://en.wikipedia.org/wiki/Rock_music#cite_note-3">[3]</a></sup>&nbsp;or "classic rock"<sup><a href="https://en.wikipedia.org/wiki/Rock_music#cite_note-studwell-1">[1]</a></sup>&nbsp;period, a number of distinct rock music subgenres had emerged, including hybrids like&nbsp;<a href="https://en.wikipedia.org/wiki/Blues_rock">blues rock</a>,&nbsp;<a href="https://en.wikipedia.org/wiki/Folk_rock">folk rock</a>,&nbsp;<a href="https://en.wikipedia.org/wiki/Country_rock">country rock</a>,&nbsp;<a href="https://en.wikipedia.org/wiki/Raga_rock">raga rock</a>, and&nbsp;<a href="https://en.wikipedia.org/wiki/Jazz_fusion">jazz-rock fusion</a>, many of which contributed to the development of&nbsp;<a href="https://en.wikipedia.org/wiki/Psychedelic_rock">psychedelic rock</a>, which was influenced by the&nbsp;<a href="https://en.wikipedia.org/wiki/Counterculture_of_the_1960s">countercultural</a>&nbsp;<a href="https://en.wikipedia.org/wiki/Psychedelia">psychedelic scene</a>. New genres that emerged from this scene included&nbsp;<a href="https://en.wikipedia.org/wiki/Progressive_rock">progressive rock</a>, which extended the artistic elements;&nbsp;<a href="https://en.wikipedia.org/wiki/Glam_rock">glam rock</a>, which highlighted showmanship and visual style; and the diverse and enduring subgenre of&nbsp;<a href="https://en.wikipedia.org/wiki/Heavy_metal_music">heavy metal</a>, which emphasized volume, power, and speed. In the second half of the 1970s,&nbsp;<a href="https://en.wikipedia.org/wiki/Punk_rock">punk rock</a>&nbsp;reacted against the perceived overblown, inauthentic and overly mainstream aspects of these genres to produce a stripped-down, energetic form of music valuing raw expression and often lyrically characterised by social and political critiques. Punk was an influence into the 1980s on the subsequent development of other subgenres, including&nbsp;<a href="https://en.wikipedia.org/wiki/New_wave_music">new wave</a>,&nbsp;<a href="https://en.wikipedia.org/wiki/Post-punk">post-punk</a>&nbsp;and eventually the&nbsp;<a href="https://en.wikipedia.org/wiki/Alternative_rock">alternative rock</a>&nbsp;movement. From the 1990s alternative rock began to dominate rock music and break through into the mainstream in the form of&nbsp;<a href="https://en.wikipedia.org/wiki/Grunge">grunge</a>,&nbsp;<a href="https://en.wikipedia.org/wiki/Britpop">Britpop</a>, and&nbsp;<a href="https://en.wikipedia.org/wiki/Indie_rock">indie rock</a>. Further fusion subgenres have since emerged, including&nbsp;<a href="https://en.wikipedia.org/wiki/Pop_punk">pop punk</a>,&nbsp;<a href="https://en.wikipedia.org/wiki/Rap_rock">rap rock</a>, and&nbsp;<a href="https://en.wikipedia.org/wiki/Rap_metal">rap metal</a>, as well as conscious attempts to revisit rock''s history, including the&nbsp;<a href="https://en.wikipedia.org/wiki/Garage_rock">garage rock</a>/<a href="https://en.wikipedia.org/wiki/Post-punk_revival">post-punk</a>&nbsp;and&nbsp;<a href="https://en.wikipedia.org/wiki/Synthpop">synthpop</a>&nbsp;revivals at the beginning of the new millennium.<br>Rock music has also embodied and served as the vehicle for cultural and social movements, leading to major sub-cultures including&nbsp;<a href="https://en.wikipedia.org/wiki/Mod_(subculture)">mods</a>&nbsp;and&nbsp;<a href="https://en.wikipedia.org/wiki/Rocker_(subculture)">rockers</a>&nbsp;in the UK and the&nbsp;<a href="https://en.wikipedia.org/wiki/Hippie">hippie</a>counterculture that spread out from San Francisco in the US in the 1960s. Similarly, 1970s&nbsp;<a href="https://en.wikipedia.org/wiki/Punk_culture">punk culture</a>&nbsp;spawned the visually distinctive&nbsp;<a href="https://en.wikipedia.org/wiki/Goth_subculture">goth</a>&nbsp;and&nbsp;<a href="https://en.wikipedia.org/wiki/Emo">emo</a>&nbsp;subcultures. Inheriting the folk tradition of the&nbsp;<a href="https://en.wikipedia.org/wiki/Protest_song">protest song</a>, rock music has been associated with political activism as well as changes in social attitudes to race, sex and drug use, and is often seen as an expression of youth revolt against adult&nbsp;<a href="https://en.wikipedia.org/wiki/Consumerism">consumerism</a>&nbsp;and conformity.</p>', '2016-03-01 11:55:49', '2016-03-01 12:26:48', '409d5b81-11b0-4f8a-8c45-c84847fe52d2'),
(49, 49, 'en', 'Metal', NULL, '2016-03-01 11:56:38', '2016-03-01 11:56:38', '4145da0a-3dda-4e3a-9788-c96bd666f3da'),
(50, 50, 'en', 'Metal-core', NULL, '2016-03-01 11:56:52', '2016-03-01 11:56:52', '95b6a019-4214-4b70-9fad-08473576d3e4'),
(51, 51, 'en', 'Rage  Against  The  Machine', NULL, '2016-03-01 12:08:12', '2016-03-01 12:22:03', 'f557f901-e606-4b74-8322-3904e9d527b9'),
(52, 52, 'en', 'Metal', NULL, '2016-03-01 12:08:47', '2016-03-01 12:08:47', 'b40172de-128f-49f3-9e98-66ce778be4c7'),
(53, 53, 'en', 'RATM', NULL, '2016-03-01 12:08:54', '2016-03-01 12:08:54', '3eab44dc-5768-4946-a0de-f6208896a334'),
(54, 54, 'en', 'Rage Againts The Machine - 10 Years on? ', '<p><b><a href="https://www.youtube.com/watch?v=j8V_dpqwK5c">Evil Empire</a>Rage Against the Machine</b>&nbsp;(also known as&nbsp;<b>RATM</b>&nbsp;or just&nbsp;<b>Rage</b>) is an American political&nbsp;<a href="https://en.wikipedia.org/wiki/Rap_metal">rap metal</a>&nbsp;band from&nbsp;<a href="https://en.wikipedia.org/wiki/Los_Angeles">Los Angeles</a>,&nbsp;<a href="https://en.wikipedia.org/wiki/California">California</a>. Formed in 1991, the group consists of rapper and vocalist&nbsp;<a href="https://en.wikipedia.org/wiki/Zack_de_la_Rocha">Zack de la Rocha</a>, bassist and backing vocalist&nbsp;<a href="https://en.wikipedia.org/wiki/Tim_Commerford">Tim Commerford</a>, guitarist&nbsp;<a href="https://en.wikipedia.org/wiki/Tom_Morello">Tom Morello</a>&nbsp;and drummer&nbsp;<a href="https://en.wikipedia.org/wiki/Brad_Wilk">Brad Wilk</a>. They draw inspiration from early&nbsp;<a href="https://en.wikipedia.org/wiki/Heavy_metal_music">heavy metal</a>&nbsp;instrumentation, as well as&nbsp;<a href="https://en.wikipedia.org/wiki/Hip_hop_music">hip hop</a>&nbsp;acts such as&nbsp;<a href="https://en.wikipedia.org/wiki/Afrika_Bambaataa">Afrika Bambaataa</a>,<sup><a href="https://en.wikipedia.org/wiki/Rage_Against_the_Machine#cite_note-allmusic-1">[1]</a></sup>&nbsp;<a href="https://en.wikipedia.org/wiki/Public_Enemy_(band)">Public Enemy</a>, the&nbsp;<a href="https://en.wikipedia.org/wiki/Beastie_Boys">Beastie Boys</a>&nbsp;and Dutch crossover band&nbsp;<a href="https://en.wikipedia.org/wiki/Urban_Dance_Squad">Urban Dance Squad</a>.<sup><a href="https://en.wikipedia.org/wiki/Rage_Against_the_Machine#cite_note-metrolyrics-2">[2]</a></sup>&nbsp;Rage Against the Machine is well known for the members''&nbsp;<a href="https://en.wikipedia.org/wiki/Left-wing_politics">leftist</a>&nbsp;and&nbsp;<a href="https://en.wikipedia.org/wiki/Revolutionary">revolutionary</a>&nbsp;<a href="https://en.wikipedia.org/wiki/Political_views_and_activism_of_Rage_Against_the_Machine">political views</a>, which are expressed in many of the band''s songs. As of 2010, they have sold over 16 million records worldwide.<sup><a href="https://en.wikipedia.org/wiki/Rage_Against_the_Machine#cite_note-WordPress-3">[3]</a></sup></p><p>In 1992, the band released its&nbsp;<a href="https://en.wikipedia.org/wiki/Rage_Against_the_Machine_(album)">self-titled debut album</a>, which became a commercial and critical success, leading to a slot in the 1993&nbsp;<a href="https://en.wikipedia.org/wiki/Lollapalooza">Lollapalooza</a>&nbsp;festival. In 2003, the album was ranked number 368 on&nbsp;<i><a href="https://en.wikipedia.org/wiki/Rolling_Stone">Rolling Stone</a></i>&nbsp;magazine''s list of the&nbsp;<a href="https://en.wikipedia.org/wiki/The_500_Greatest_Albums_of_All_Time">500 greatest albums of all time</a>. The band did not release a follow-up record until 1996, with&nbsp;<i><a href="https://en.wikipedia.org/wiki/Evil_Empire_(album)">Evil Empire</a></i>. The band''s third album,&nbsp;<i><a href="https://en.wikipedia.org/wiki/The_Battle_of_Los_Angeles_(album)">The Battle of Los Angeles</a></i>, followed in 1999, and in 2003, the album was ranked number 426 on the same list. During their initial nine-year run, they became one of the most popular and influential bands in music history, according to music journalist Colin Devenish.<sup><a href="https://en.wikipedia.org/wiki/Rage_Against_the_Machine#cite_note-Devenish-4">[4]</a></sup>&nbsp;They were also ranked No.&nbsp;33 on&nbsp;<a href="https://en.wikipedia.org/wiki/VH1">VH1</a>''s&nbsp;<i>100 Greatest Artists of Hard Rock</i>. The band had a large influence on the&nbsp;<a href="https://en.wikipedia.org/wiki/Nu_metal">nu metal</a>&nbsp;genre which came to prominence during the second half of the 1990s.<br>In 2000, the band released the cover album,&nbsp;<i><a href="https://en.wikipedia.org/wiki/Renegades_(Rage_Against_the_Machine_album)">Renegades</a></i>. The same year, growing tensions over the direction of the band prompted de la Rocha to quit, leading to the band''s breakup.<sup><a href="https://en.wikipedia.org/wiki/Rage_Against_the_Machine#cite_note-5">[5]</a></sup>De la Rocha started a low-key solo career, while the rest of the band formed the rock&nbsp;<a href="https://en.wikipedia.org/wiki/Supergroup_(music)">supergroup</a>&nbsp;<a href="https://en.wikipedia.org/wiki/Audioslave">Audioslave</a>&nbsp;with&nbsp;<a href="https://en.wikipedia.org/wiki/Chris_Cornell">Chris Cornell</a>, then-former&nbsp;<a href="https://en.wikipedia.org/wiki/Frontman">frontman</a>&nbsp;of&nbsp;<a href="https://en.wikipedia.org/wiki/Soundgarden">Soundgarden</a>; Audioslave recorded three albums before disbanding in 2007. The same year, Rage Against the Machine announced a reunion and performed together for the first time in seven years at the<a href="https://en.wikipedia.org/wiki/Coachella_Valley_Music_and_Arts_Festival">Coachella Valley Music and Arts Festival</a>&nbsp;in April 2007. Up until 2011, the band continued to perform at more live venues and festivals around the world. As of 2016, the group has no plans to perform or release new music.<sup><a href="https://en.wikipedia.org/wiki/Rage_Against_the_Machine#cite_note-newalbum-6">[6]</a></sup></p><p>-&nbsp;<a href="https://en.wikipedia.org/wiki/Rage_Against_the_Machine" target="_blank">wikipedia</a></p><p>After a wonderful wikipedia entry to wet our apatite''s, the question remains, is RATM still great after a ten year break?&nbsp;They were great before they decided to split ways, and their subsequent projects have all built followings in their respective rights. Fans will tell you that the bands thrash and metal style is still some of the best sounding <a href="{category:48:url}">Rock&nbsp;</a>music you can sink your teeth into, at the end of the day it is all very objective, I still love the band, but I only started listening to them after they broke up, which is a real shame.&nbsp;</p><p>I have searched the net looking for live shows and thoroughly enjoyed watching a young RATM&nbsp;jump around stage and throw a massive amount of energy at the crowd, and wished I were there, and I still really enjoy their music, right now I am listening to Evil Empire...&nbsp;<a href="https://www.youtube.com/watch?v=j8V_dpqwK5c" target="_blank">Evil Empire</a>&nbsp;</p><p>So I believe ten years on their music lives on and makes for some amazing listening</p><p>-&nbsp;K</p><p></p>', '2016-03-01 12:14:52', '2016-03-01 12:14:52', 'a56e345e-71cc-47e4-9194-f26cdc8ba0ec'),
(55, 55, 'en', 'Dwayne  Johnson At The 2009  Tribeca  Film  Festival', NULL, '2016-03-01 12:22:00', '2016-03-01 12:22:00', '2ddf47c7-c02a-4f20-8c95-2054103ea281');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=56 ;

--
-- Dumping data for table `craft_elements`
--

INSERT INTO `craft_elements` (`id`, `type`, `enabled`, `archived`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'User', 1, 0, '2016-03-01 09:25:59', '2016-03-01 09:25:59', 'ca92fdde-826d-46ff-ad42-15fe276f1930'),
(2, 'Entry', 1, 0, '2016-03-01 09:26:01', '2016-03-01 11:05:29', '59536647-a295-4a00-b7af-212094dc5a35'),
(3, 'Entry', 1, 0, '2016-03-01 09:26:01', '2016-03-01 11:05:14', '829c7f01-f52d-4130-8237-32a3696ef1db'),
(4, 'Entry', 1, 0, '2016-03-01 09:32:59', '2016-03-01 10:20:03', '5f77761e-a99e-4478-9db4-ddcc0bf21b3d'),
(5, 'Tag', 1, 0, '2016-03-01 09:51:07', '2016-03-01 09:51:07', '6056f95e-b9f0-43c2-b8c8-6619ae9cd9c3'),
(6, 'Tag', 1, 0, '2016-03-01 09:51:12', '2016-03-01 09:51:12', '24391e10-913a-420f-8880-c694583302a2'),
(7, 'Tag', 1, 0, '2016-03-01 09:51:18', '2016-03-01 09:51:18', 'bec54d8b-1718-4b78-8ce4-cae201fdbf3a'),
(8, 'Entry', 1, 0, '2016-03-01 10:05:39', '2016-03-01 10:45:22', 'c8245f90-5456-4d36-806c-402eca85d289'),
(9, 'Tag', 1, 0, '2016-03-01 10:05:48', '2016-03-01 10:05:48', '93d133dc-53ad-4d4c-ba57-ba3e3fe0b9fe'),
(10, 'Tag', 1, 0, '2016-03-01 10:05:51', '2016-03-01 10:05:51', 'ac9d22df-30ab-4c9a-94b7-b33f9e08f726'),
(11, 'Tag', 1, 0, '2016-03-01 10:05:56', '2016-03-01 10:05:56', '4e944d23-086f-4e6a-9926-ad996616d9e7'),
(13, 'Asset', 1, 0, '2016-03-01 10:19:13', '2016-03-01 12:21:59', '5dc72718-3339-4b7b-889c-33a43090df00'),
(14, 'Asset', 1, 0, '2016-03-01 10:19:47', '2016-03-01 12:21:57', '948872c2-b542-44f8-8917-4d4ee40b8884'),
(15, 'Asset', 1, 0, '2016-03-01 10:19:48', '2016-03-01 12:21:57', 'e9b4bfb0-64c4-4e59-bedd-7aa960e06d45'),
(16, 'Asset', 1, 0, '2016-03-01 10:19:49', '2016-03-01 12:21:57', '9b9dc789-3882-460c-a794-56ad320305ec'),
(17, 'Asset', 1, 0, '2016-03-01 10:19:49', '2016-03-01 12:21:57', '3e1ab642-710d-4472-8b9c-9adf0d361b18'),
(18, 'Asset', 1, 0, '2016-03-01 10:19:50', '2016-03-01 12:21:58', '5820aad5-ee61-4e51-a3c5-96ffd273e3cc'),
(19, 'Asset', 1, 0, '2016-03-01 10:19:50', '2016-03-01 12:21:58', '305b347c-88cb-4204-b5fe-9193bd3e048e'),
(20, 'Asset', 1, 0, '2016-03-01 10:19:51', '2016-03-01 12:21:58', '162bdfc3-2586-44a2-bd28-2fc4a2855552'),
(21, 'Asset', 1, 0, '2016-03-01 10:56:23', '2016-03-01 12:21:58', '0b4055b8-9e33-4492-b660-775688effefd'),
(22, 'Asset', 1, 0, '2016-03-01 10:56:23', '2016-03-01 12:21:59', '74c6c64b-e847-41b4-960f-5e72d8308603'),
(23, 'Asset', 1, 0, '2016-03-01 10:56:24', '2016-03-01 12:21:59', '175ad775-1cbc-45f5-8729-4ba76922b61b'),
(24, 'Asset', 1, 0, '2016-03-01 10:56:24', '2016-03-01 12:21:59', 'be0dc549-0751-47fb-9323-77ef9df0115c'),
(25, 'Asset', 1, 0, '2016-03-01 10:56:25', '2016-03-01 12:22:00', '625f2ea8-05fa-4f5a-8577-527bef875855'),
(26, 'Asset', 1, 0, '2016-03-01 10:56:25', '2016-03-01 12:22:00', '64559088-e9e4-4978-8906-c173e726d8c4'),
(27, 'Asset', 1, 0, '2016-03-01 10:56:25', '2016-03-01 12:22:00', '5fa8eb28-5756-42b5-8edc-61d2f35c5f9a'),
(28, 'Asset', 1, 0, '2016-03-01 10:56:25', '2016-03-01 12:22:01', 'e00926d0-7592-4226-9217-329dfa85f3fb'),
(29, 'Asset', 1, 0, '2016-03-01 10:56:26', '2016-03-01 12:22:01', '4e9b281a-92f0-4b18-b4fa-fbf4fa265056'),
(30, 'Asset', 1, 0, '2016-03-01 10:56:26', '2016-03-01 12:22:01', '4fd6a4d1-f614-47af-b828-91e8e92cc3f1'),
(31, 'Asset', 1, 0, '2016-03-01 10:56:26', '2016-03-01 12:22:01', '97256e74-d203-4131-8e5d-02f056d5f55d'),
(32, 'Asset', 1, 0, '2016-03-01 10:56:27', '2016-03-01 12:22:02', '976a2422-5fe4-484d-9cde-2d8c76f021f1'),
(33, 'Asset', 1, 0, '2016-03-01 10:56:27', '2016-03-01 12:22:02', 'a3b8d2e0-e59d-478f-af55-511854f2989b'),
(34, 'Asset', 1, 0, '2016-03-01 10:56:27', '2016-03-01 12:22:02', '25ed3ed7-8f66-497f-85fe-c295a1cba849'),
(35, 'Asset', 1, 0, '2016-03-01 10:56:28', '2016-03-01 12:22:02', '62e95192-ab62-4cd3-a8e7-71bb8f210fab'),
(36, 'Asset', 1, 0, '2016-03-01 10:56:28', '2016-03-01 12:22:02', '6823b0a1-404c-4d2d-b77a-4292a1173079'),
(37, 'Asset', 1, 0, '2016-03-01 11:04:46', '2016-03-01 12:22:03', '5510743c-b4c6-4d95-8578-1f13124acdd8'),
(38, 'Asset', 1, 0, '2016-03-01 11:04:47', '2016-03-01 12:22:04', 'bd04a646-25ab-44fa-9d8a-381e1bef92d9'),
(41, 'Asset', 1, 0, '2016-03-01 11:38:12', '2016-03-01 12:22:04', '94d9e4b2-1bca-4936-afe0-488d1b3e92d4'),
(43, 'Asset', 1, 0, '2016-03-01 11:41:42', '2016-03-01 12:21:59', '871f0220-d76b-4023-beb7-c799baf3508d'),
(44, 'Tag', 1, 0, '2016-03-01 11:42:23', '2016-03-01 11:42:23', '2f2cef8e-e0a5-42ba-95df-85df63a6f90f'),
(45, 'Entry', 1, 0, '2016-03-01 11:43:47', '2016-03-01 11:46:38', 'da3cc0ea-7d31-4e61-94ee-2f7d4ab2126c'),
(46, 'Asset', 1, 0, '2016-03-01 11:46:19', '2016-03-01 12:22:04', '73475737-1850-4575-98b1-38afed8ad314'),
(48, 'Category', 1, 0, '2016-03-01 11:55:49', '2016-03-01 12:26:48', '67f6f73c-777e-45e7-a00f-11d818805e9d'),
(49, 'Category', 1, 0, '2016-03-01 11:56:38', '2016-03-01 11:56:38', 'f63ed0a7-a476-41d1-a45b-98ad6451b312'),
(50, 'Category', 1, 0, '2016-03-01 11:56:52', '2016-03-01 11:56:52', 'c8b04827-1dc3-4739-a4f1-ebbddd30520e'),
(51, 'Asset', 1, 0, '2016-03-01 12:08:12', '2016-03-01 12:22:03', '11a5b1ff-542a-4d38-a8d8-39087330d0d8'),
(52, 'Tag', 1, 0, '2016-03-01 12:08:47', '2016-03-01 12:08:47', '17752924-6d79-48fc-80a6-78c9fd199acf'),
(53, 'Tag', 1, 0, '2016-03-01 12:08:54', '2016-03-01 12:08:54', '3d638053-ea32-47ac-8aa0-632721ef4c2e'),
(54, 'Entry', 1, 0, '2016-03-01 12:14:52', '2016-03-01 12:14:52', 'a7072486-5b47-4e4b-9536-003ac59d8f83'),
(55, 'Asset', 1, 0, '2016-03-01 12:22:00', '2016-03-01 12:22:00', '1227cb97-6734-4bce-b28e-1fb73372396e');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=56 ;

--
-- Dumping data for table `craft_elements_i18n`
--

INSERT INTO `craft_elements_i18n` (`id`, `elementId`, `locale`, `slug`, `uri`, `enabled`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'en', '', NULL, 1, '2016-03-01 09:25:59', '2016-03-01 09:25:59', '62bc076f-a2a5-4faa-a8f8-f40105aa69b5'),
(2, 2, 'en', 'homepage', '__home__', 1, '2016-03-01 09:26:01', '2016-03-01 11:05:29', 'a3b4f4c5-e1da-45dc-9ded-8191451efdd3'),
(3, 3, 'en', 'we-just-installed-craft', 'news/2016/we-just-installed-craft', 1, '2016-03-01 09:26:01', '2016-03-01 11:05:14', '23ec7ebf-61d2-4554-ba49-5c1622eccdae'),
(4, 4, 'en', 'bugatti-chirion', 'vehicles/bugatti-chirion', 1, '2016-03-01 09:33:00', '2016-03-01 10:20:03', 'dca6c67d-0ab5-4730-8026-316a38e7dc19'),
(5, 5, 'en', 'chirion', NULL, 1, '2016-03-01 09:51:07', '2016-03-01 09:51:07', 'd114a50f-4f97-43b9-9614-1e9faca4d9d7'),
(6, 6, 'en', 'bugatti', NULL, 1, '2016-03-01 09:51:12', '2016-03-01 09:51:12', '5d58afc4-9330-4b67-8415-e5cb3aa54d98'),
(7, 7, 'en', 'hypercar', NULL, 1, '2016-03-01 09:51:18', '2016-03-01 09:51:18', 'd70aafbd-b465-45a3-aece-d988d71d6332'),
(8, 8, 'en', 'golf-gte', 'vehicles/golf-gte', 1, '2016-03-01 10:05:39', '2016-03-01 10:45:22', '835cca1e-ee00-4c3f-89ba-e55017ecfa27'),
(9, 9, 'en', 'gte', NULL, 1, '2016-03-01 10:05:48', '2016-03-01 10:05:48', '5e11f910-3620-42e3-8d89-44b2916c12cd'),
(10, 10, 'en', 'golf', NULL, 1, '2016-03-01 10:05:51', '2016-03-01 10:05:51', '177acb55-361a-472a-99a9-9928b563c6a1'),
(11, 11, 'en', 'hybrid', NULL, 1, '2016-03-01 10:05:56', '2016-03-01 10:05:56', '5f8d7e2e-9dbc-45b6-83a6-9c2c854c22d9'),
(13, 13, 'en', '2016-volkswagen-gte-by-paddy-mc-grath-34-800x533', NULL, 1, '2016-03-01 10:19:13', '2016-03-01 12:21:59', '1be4f7eb-32e7-41d9-8931-0d3f6085a96e'),
(14, 14, 'en', '01-chiron-grand-palais-34-front-web-0', NULL, 1, '2016-03-01 10:19:47', '2016-03-01 12:21:57', 'f1c691c0-d66d-40fa-8ed1-8bd193a271a9'),
(15, 15, 'en', '02-chiron-grand-palais-side-web-0', NULL, 1, '2016-03-01 10:19:48', '2016-03-01 12:21:57', '6694c53f-9c2b-4e11-a4bf-925466338032'),
(16, 16, 'en', '03-chiron-grand-palais-side-web-0', NULL, 1, '2016-03-01 10:19:49', '2016-03-01 12:21:58', '2ae7b023-2811-4716-9b16-2b005f886843'),
(17, 17, 'en', '04-chiron-grand-palais-34front-web-0', NULL, 1, '2016-03-01 10:19:49', '2016-03-01 12:21:57', '7b12be09-0269-4062-b9f6-5681778b2a35'),
(18, 18, 'en', '05-chiron-grand-palais-34-rear-web-0', NULL, 1, '2016-03-01 10:19:50', '2016-03-01 12:21:58', 'a038a556-d10d-4a82-b7af-f206cf800799'),
(19, 19, 'en', '06-chiron-grand-palais-34-rear-web-0', NULL, 1, '2016-03-01 10:19:50', '2016-03-01 12:21:58', '2a60bcd4-9919-42ab-a38a-6a3cde44bda5'),
(20, 20, 'en', '09-chiron-grand-palais-side-web-0', NULL, 1, '2016-03-01 10:19:51', '2016-03-01 12:21:58', 'aa060d5c-ba22-492e-b6b3-065c7e143586'),
(21, 21, 'en', '2016-volkswagen-gte-by-paddy-mc-grath-1-1200x800', NULL, 1, '2016-03-01 10:56:23', '2016-03-01 12:21:58', 'ceb59638-fcd2-446e-9668-4182198f592d'),
(22, 22, 'en', '2016-volkswagen-gte-by-paddy-mc-grath-18-1200x800', NULL, 1, '2016-03-01 10:56:24', '2016-03-01 12:21:59', '6c746c0e-dfb5-4c74-a08f-30b0abddcb9b'),
(23, 23, 'en', '2016-volkswagen-gte-by-paddy-mc-grath-19-800x533', NULL, 1, '2016-03-01 10:56:24', '2016-03-01 12:21:59', '25e39ff3-e6fe-4be6-ae19-91dc681ca940'),
(24, 24, 'en', '2016-volkswagen-gte-by-paddy-mc-grath-2-1200x800', NULL, 1, '2016-03-01 10:56:24', '2016-03-01 12:21:59', '61e53a9e-14e6-48a3-a547-02d5b6605c3f'),
(25, 25, 'en', '01-chiron-grand-palais-34-front-web-0', NULL, 1, '2016-03-01 10:56:25', '2016-03-01 12:22:00', 'd35794c6-128d-4c38-9c53-79c4ba4cb302'),
(26, 26, 'en', '02-chiron-grand-palais-side-web-0', NULL, 1, '2016-03-01 10:56:25', '2016-03-01 12:22:00', 'b6f2a0cf-b734-4719-aea1-3ca106a04c0a'),
(27, 27, 'en', '03-chiron-grand-palais-side-web-0', NULL, 1, '2016-03-01 10:56:25', '2016-03-01 12:22:00', '3a618c1a-ed60-4c16-b1cf-fdfa1cd607f9'),
(28, 28, 'en', '04-chiron-grand-palais-34front-web-0', NULL, 1, '2016-03-01 10:56:25', '2016-03-01 12:22:01', 'd4890530-ab6b-432b-83da-382fbd923b1b'),
(29, 29, 'en', '05-chiron-grand-palais-34-rear-web-0', NULL, 1, '2016-03-01 10:56:26', '2016-03-01 12:22:01', 'fbf9f809-1e78-4f01-9839-8d281f2260db'),
(30, 30, 'en', '06-chiron-grand-palais-34-rear-web-0', NULL, 1, '2016-03-01 10:56:26', '2016-03-01 12:22:01', 'fb737007-ce63-4c8f-bb61-2fe4cd543e0d'),
(31, 31, 'en', '09-chiron-grand-palais-side-web-0', NULL, 1, '2016-03-01 10:56:26', '2016-03-01 12:22:01', 'e1eba9d8-601b-4796-8fbd-b49b3f796ff5'),
(32, 32, 'en', '2016-volkswagen-gte-by-paddy-mc-grath-1-1200x800', NULL, 1, '2016-03-01 10:56:27', '2016-03-01 12:22:02', '7f466393-82aa-448d-a224-a3c9f4ffdd42'),
(33, 33, 'en', '2016-volkswagen-gte-by-paddy-mc-grath-18-1200x800', NULL, 1, '2016-03-01 10:56:27', '2016-03-01 12:22:02', '22b1b200-e713-42b8-8160-7ec9935d490c'),
(34, 34, 'en', '2016-volkswagen-gte-by-paddy-mc-grath-19-800x533', NULL, 1, '2016-03-01 10:56:27', '2016-03-01 12:22:02', '6d566c51-ec1c-49ad-8111-a9f23838d6a2'),
(35, 35, 'en', '2016-volkswagen-gte-by-paddy-mc-grath-2-1200x800', NULL, 1, '2016-03-01 10:56:28', '2016-03-01 12:22:02', '919a3ebc-e82c-46d7-b1e7-7a7bb269c150'),
(36, 36, 'en', '2016-volkswagen-gte-by-paddy-mc-grath-34-800x533', NULL, 1, '2016-03-01 10:56:28', '2016-03-01 12:22:02', '9c5265e4-edb4-4760-a434-cd38dd698806'),
(37, 37, 'en', 'news-765x350px', NULL, 1, '2016-03-01 11:04:46', '2016-03-01 12:22:03', '3b1f2f53-0920-4d18-bc59-be8dfb59504e'),
(38, 38, 'en', 'craft-blog-graphic1', NULL, 1, '2016-03-01 11:04:47', '2016-03-01 12:22:04', '7a70ddf4-d22a-497f-ab3b-f1a587baa98a'),
(41, 41, 'en', 'ngbbs4f9c54f32e11b-zps46460b6b', NULL, 1, '2016-03-01 11:38:12', '2016-03-01 12:22:04', '7277b876-cb1d-44c9-9c5c-dc4a7c83e8ff'),
(43, 43, 'en', '220px-who-killed-the-electric-car-cover', NULL, 1, '2016-03-01 11:41:43', '2016-03-01 12:21:59', 'f1e7f862-580a-4602-aeae-7355b2814e2c'),
(44, 44, 'en', 'electric-car', NULL, 1, '2016-03-01 11:42:23', '2016-03-01 11:42:23', '47950a90-28e7-451a-abe0-4b03cfd18677'),
(45, 45, 'en', 'screening-of-who-killed-the-electric-car', 'news/2016/screening-of-who-killed-the-electric-car', 1, '2016-03-01 11:43:47', '2016-03-01 11:46:39', '9a654dd3-2c38-402e-b41b-0e3f899c743b'),
(46, 46, 'en', 'fisker-karma', NULL, 1, '2016-03-01 11:46:19', '2016-03-01 12:22:04', '0b55c59f-9401-48b8-934f-334f29621c02'),
(48, 48, 'en', 'rock', 'music/rock', 1, '2016-03-01 11:55:49', '2016-03-01 12:26:48', '30d17b3e-9872-4b34-83c0-1c60034b2628'),
(49, 49, 'en', 'metal', 'music/rock/metal', 1, '2016-03-01 11:56:38', '2016-03-01 12:26:48', '6c6e9fcb-e093-434d-bbf6-78abc0799bee'),
(50, 50, 'en', 'metal-core', 'music/rock/metal/metal-core', 1, '2016-03-01 11:56:52', '2016-03-01 12:26:48', 'acef7aed-4333-4c6b-a862-f2d77d1b9166'),
(51, 51, 'en', 'rage-against-the-machine', NULL, 1, '2016-03-01 12:08:12', '2016-03-01 12:22:03', '73d18856-6bc0-4f01-845b-9e9d2eed19be'),
(52, 52, 'en', 'metal', NULL, 1, '2016-03-01 12:08:47', '2016-03-01 12:08:47', '194542e1-dae5-4671-a24a-a61623072d0a'),
(53, 53, 'en', 'ratm', NULL, 1, '2016-03-01 12:08:54', '2016-03-01 12:08:54', '4227260d-7892-4c88-a094-94bd649eeb35'),
(54, 54, 'en', 'rage-againts-the-machine-10-years-on', 'music/rage-againts-the-machine-10-years-on', 1, '2016-03-01 12:14:52', '2016-03-01 12:14:52', 'c1e6c879-cd34-4bfb-b3b2-94b5b316517a'),
(55, 55, 'en', 'dwayne-johnson-at-the-2009-tribeca-film-festival', NULL, 1, '2016-03-01 12:22:00', '2016-03-01 12:22:00', '3e8b16dc-4c2d-478b-a985-75d0def812b0');

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
(2, 1, NULL, NULL, '2016-03-01 09:26:01', NULL, '2016-03-01 09:26:01', '2016-03-01 11:05:29', '42621c06-8a84-4b18-8dd0-8cd5a90e4c0a'),
(3, 2, 2, 1, '2016-03-01 09:26:00', NULL, '2016-03-01 09:26:01', '2016-03-01 11:05:14', 'a8e7b4e7-2921-48c3-8dae-d156903df05f'),
(4, 3, 3, 1, '2016-03-01 09:32:00', NULL, '2016-03-01 09:33:00', '2016-03-01 10:20:03', '8a647676-0447-43e0-978f-928b8b9f86a1'),
(8, 3, 3, 1, '2016-03-01 10:05:00', NULL, '2016-03-01 10:05:39', '2016-03-01 10:45:22', '8be24826-1ae2-45e6-b90d-848c59f58f1b'),
(45, 2, 2, 1, '2016-03-01 11:43:00', NULL, '2016-03-01 11:43:47', '2016-03-01 11:46:39', '5bf4e066-7bc3-48ad-bf75-8885b84a5570'),
(54, 4, 4, 1, '2016-03-01 12:14:52', NULL, '2016-03-01 12:14:52', '2016-03-01 12:14:52', '9575e870-d806-4458-bf66-75f320d54ac5');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `craft_entrytypes`
--

INSERT INTO `craft_entrytypes` (`id`, `sectionId`, `fieldLayoutId`, `name`, `handle`, `hasTitleField`, `titleLabel`, `titleFormat`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 13, 'Homepage', 'homepage', 1, 'Title', NULL, NULL, '2016-03-01 09:26:01', '2016-03-01 11:02:18', 'e7ad133c-34dd-4441-95e9-dc8c8fafe649'),
(2, 2, 12, 'News', 'news', 1, 'Title', NULL, NULL, '2016-03-01 09:26:01', '2016-03-01 11:02:00', '5fff7d15-5b02-4160-ac6a-5a0636b3b093'),
(3, 3, 8, 'Vehicles', 'vehicles', 1, 'Title', NULL, NULL, '2016-03-01 09:31:20', '2016-03-01 10:10:57', 'df453d72-e06d-490e-95c1-114c655eb786'),
(4, 4, 17, 'Music', 'music', 1, 'Title', NULL, NULL, '2016-03-01 11:48:20', '2016-03-01 12:02:14', 'c8446e64-b089-4425-8e2d-53eac4ad9818');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=23 ;

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
(22, 54, 4, 1, 'en', 1, '', '{"typeId":null,"authorId":"1","title":"Rage Againts The Machine - 10 Years on? ","slug":"rage-againts-the-machine-10-years-on","postDate":1456834492,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p><b><a href=\\"https:\\/\\/www.youtube.com\\/watch?v=j8V_dpqwK5c\\">Evil Empire<\\/a>Rage Against the Machine<\\/b>&nbsp;(also known as&nbsp;<b>RATM<\\/b>&nbsp;or just&nbsp;<b>Rage<\\/b>) is an American political&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Rap_metal\\">rap metal<\\/a>&nbsp;band from&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Los_Angeles\\">Los Angeles<\\/a>,&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/California\\">California<\\/a>. Formed in 1991, the group consists of rapper and vocalist&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Zack_de_la_Rocha\\">Zack de la Rocha<\\/a>, bassist and backing vocalist&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Tim_Commerford\\">Tim Commerford<\\/a>, guitarist&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Tom_Morello\\">Tom Morello<\\/a>&nbsp;and drummer&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Brad_Wilk\\">Brad Wilk<\\/a>. They draw inspiration from early&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Heavy_metal_music\\">heavy metal<\\/a>&nbsp;instrumentation, as well as&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Hip_hop_music\\">hip hop<\\/a>&nbsp;acts such as&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Afrika_Bambaataa\\">Afrika Bambaataa<\\/a>,<sup><a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Rage_Against_the_Machine#cite_note-allmusic-1\\">[1]<\\/a><\\/sup>&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Public_Enemy_(band)\\">Public Enemy<\\/a>, the&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Beastie_Boys\\">Beastie Boys<\\/a>&nbsp;and Dutch crossover band&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Urban_Dance_Squad\\">Urban Dance Squad<\\/a>.<sup><a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Rage_Against_the_Machine#cite_note-metrolyrics-2\\">[2]<\\/a><\\/sup>&nbsp;Rage Against the Machine is well known for the members''&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Left-wing_politics\\">leftist<\\/a>&nbsp;and&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Revolutionary\\">revolutionary<\\/a>&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Political_views_and_activism_of_Rage_Against_the_Machine\\">political views<\\/a>, which are expressed in many of the band''s songs. As of 2010, they have sold over 16 million records worldwide.<sup><a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Rage_Against_the_Machine#cite_note-WordPress-3\\">[3]<\\/a><\\/sup><\\/p><p>In 1992, the band released its&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Rage_Against_the_Machine_(album)\\">self-titled debut album<\\/a>, which became a commercial and critical success, leading to a slot in the 1993&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Lollapalooza\\">Lollapalooza<\\/a>&nbsp;festival. In 2003, the album was ranked number 368 on&nbsp;<i><a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Rolling_Stone\\">Rolling Stone<\\/a><\\/i>&nbsp;magazine''s list of the&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/The_500_Greatest_Albums_of_All_Time\\">500 greatest albums of all time<\\/a>. The band did not release a follow-up record until 1996, with&nbsp;<i><a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Evil_Empire_(album)\\">Evil Empire<\\/a><\\/i>. The band''s third album,&nbsp;<i><a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/The_Battle_of_Los_Angeles_(album)\\">The Battle of Los Angeles<\\/a><\\/i>, followed in 1999, and in 2003, the album was ranked number 426 on the same list. During their initial nine-year run, they became one of the most popular and influential bands in music history, according to music journalist Colin Devenish.<sup><a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Rage_Against_the_Machine#cite_note-Devenish-4\\">[4]<\\/a><\\/sup>&nbsp;They were also ranked No.&nbsp;33 on&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/VH1\\">VH1<\\/a>''s&nbsp;<i>100 Greatest Artists of Hard Rock<\\/i>. The band had a large influence on the&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Nu_metal\\">nu metal<\\/a>&nbsp;genre which came to prominence during the second half of the 1990s.<br>In 2000, the band released the cover album,&nbsp;<i><a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Renegades_(Rage_Against_the_Machine_album)\\">Renegades<\\/a><\\/i>. The same year, growing tensions over the direction of the band prompted de la Rocha to quit, leading to the band''s breakup.<sup><a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Rage_Against_the_Machine#cite_note-5\\">[5]<\\/a><\\/sup>De la Rocha started a low-key solo career, while the rest of the band formed the rock&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Supergroup_(music)\\">supergroup<\\/a>&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Audioslave\\">Audioslave<\\/a>&nbsp;with&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Chris_Cornell\\">Chris Cornell<\\/a>, then-former&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Frontman\\">frontman<\\/a>&nbsp;of&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Soundgarden\\">Soundgarden<\\/a>; Audioslave recorded three albums before disbanding in 2007. The same year, Rage Against the Machine announced a reunion and performed together for the first time in seven years at the<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Coachella_Valley_Music_and_Arts_Festival\\">Coachella Valley Music and Arts Festival<\\/a>&nbsp;in April 2007. Up until 2011, the band continued to perform at more live venues and festivals around the world. As of 2016, the group has no plans to perform or release new music.<sup><a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Rage_Against_the_Machine#cite_note-newalbum-6\\">[6]<\\/a><\\/sup><\\/p><p>-&nbsp;<a href=\\"https:\\/\\/en.wikipedia.org\\/wiki\\/Rage_Against_the_Machine\\" target=\\"_blank\\">wikipedia<\\/a><\\/p><p>After a wonderful wikipedia entry to wet our apatite''s, the question remains, is RATM still great after a ten year break?&nbsp;They were great before they decided to split ways, and their subsequent projects have all built followings in their respective rights. Fans will tell you that the bands thrash and metal style is still some of the best sounding <a href=\\"http:\\/\\/dev.craftblog.com\\/music\\/rock#category:48\\">Rock&nbsp;<\\/a>music you can sink your teeth into, at the end of the day it is all very objective, I still love the band, but I only started listening to them after they broke up, which is a real shame.&nbsp;<\\/p><p>I have searched the net looking for live shows and thoroughly enjoyed watching a young RATM&nbsp;jump around stage and throw a massive amount of energy at the crowd, and wished I were there, and I still really enjoy their music, right now I am listening to Evil Empire...&nbsp;<a href=\\"https:\\/\\/www.youtube.com\\/watch?v=j8V_dpqwK5c\\" target=\\"_blank\\">Evil Empire<\\/a>&nbsp;<\\/p><p>So I believe ten years on their music lives on and makes for some amazing listening<\\/p><p>-&nbsp;K<\\/p><p><b><\\/b><\\/p>","4":["48","49"],"3":["51"],"2":["52","53"]}}', '2016-03-01 12:14:52', '2016-03-01 12:14:52', 'bfe6183b-3c84-43e6-a49d-b7b5de387902');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `craft_fieldgroups`
--

INSERT INTO `craft_fieldgroups` (`id`, `name`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Default', '2016-03-01 09:26:00', '2016-03-01 09:26:00', 'c296737b-cf66-454a-881b-43baa0d0c306');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=34 ;

--
-- Dumping data for table `craft_fieldlayoutfields`
--

INSERT INTO `craft_fieldlayoutfields` (`id`, `layoutId`, `tabId`, `fieldId`, `required`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(6, 8, 4, 3, 0, 1, '2016-03-01 10:10:56', '2016-03-01 10:10:56', '44790ecc-5bb6-4fc5-bdfb-efce49c1c489'),
(7, 8, 4, 1, 0, 2, '2016-03-01 10:10:56', '2016-03-01 10:10:56', '3f145e14-cc3a-48b6-bd71-ea5cf5b8afa4'),
(8, 8, 4, 2, 0, 3, '2016-03-01 10:10:56', '2016-03-01 10:10:56', 'aec32dc6-2ae2-4b10-a32a-e45bb69caa59'),
(12, 12, 8, 3, 0, 1, '2016-03-01 11:02:00', '2016-03-01 11:02:00', 'd7d098f7-eed1-4e0a-bba3-3581f5868ef5'),
(13, 12, 8, 1, 1, 2, '2016-03-01 11:02:00', '2016-03-01 11:02:00', '141f32fa-8bcf-4b6b-b2e6-772c589c3321'),
(14, 12, 8, 2, 0, 3, '2016-03-01 11:02:00', '2016-03-01 11:02:00', 'd62d70ff-6e8f-45db-b365-08465f142eb3'),
(15, 13, 9, 3, 0, 1, '2016-03-01 11:02:18', '2016-03-01 11:02:18', 'd97b7eab-87af-4b1d-83d3-e10ee4246df0'),
(16, 13, 9, 1, 1, 2, '2016-03-01 11:02:18', '2016-03-01 11:02:18', 'e309bb28-51f3-41d8-8fb1-d856d397cee4'),
(17, 14, 10, 3, 0, 1, '2016-03-01 11:35:59', '2016-03-01 11:35:59', 'aa435d81-25fd-4ca0-91ba-80fbb3ef1c4a'),
(18, 17, 11, 1, 0, 1, '2016-03-01 12:02:14', '2016-03-01 12:02:14', '04f7b6a6-0db3-43c3-8cd6-ca5726d7bc5c'),
(19, 17, 11, 4, 0, 2, '2016-03-01 12:02:14', '2016-03-01 12:02:14', 'daac52f6-2541-412d-aa0a-1fa97e13df7e'),
(20, 17, 11, 3, 0, 3, '2016-03-01 12:02:14', '2016-03-01 12:02:14', '38826ec8-88a9-42df-9571-80f115200ced'),
(21, 17, 11, 2, 0, 4, '2016-03-01 12:02:14', '2016-03-01 12:02:14', '224090d3-9e85-4e2e-9fcd-d45bd6896490');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=22 ;

--
-- Dumping data for table `craft_fieldlayouts`
--

INSERT INTO `craft_fieldlayouts` (`id`, `type`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Tag', '2016-03-01 09:26:00', '2016-03-01 09:26:00', '513937e0-afdd-47b5-92a5-bc88722570a5'),
(8, 'Entry', '2016-03-01 10:10:56', '2016-03-01 10:10:56', '2414a415-64d6-4bfb-acbc-325260ffc7a4'),
(12, 'Entry', '2016-03-01 11:02:00', '2016-03-01 11:02:00', '15f6904d-eca7-48ad-8622-30199dfbd74b'),
(13, 'Entry', '2016-03-01 11:02:18', '2016-03-01 11:02:18', 'e4461cdb-458b-4c49-94d3-0f718ced2231'),
(14, 'Asset', '2016-03-01 11:35:59', '2016-03-01 11:35:59', '5f1bd0f5-7c2a-4c1e-b46f-63b143cc4c7a'),
(17, 'Entry', '2016-03-01 12:02:14', '2016-03-01 12:02:14', 'b505603d-8e48-4d1a-ab8a-0cd0dccfeba7'),
(21, 'Category', '2016-03-01 12:31:56', '2016-03-01 12:31:56', '026951fa-580a-4545-a63b-7e7917001a80');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=15 ;

--
-- Dumping data for table `craft_fieldlayouttabs`
--

INSERT INTO `craft_fieldlayouttabs` (`id`, `layoutId`, `name`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(4, 8, 'Default', 1, '2016-03-01 10:10:56', '2016-03-01 10:10:56', 'b9c63ef3-326b-467d-842a-3b9111ad917a'),
(8, 12, 'Content', 1, '2016-03-01 11:02:00', '2016-03-01 11:02:00', 'd26c1b83-09f8-4ca5-b5f6-f009f733fddb'),
(9, 13, 'Content', 1, '2016-03-01 11:02:18', '2016-03-01 11:02:18', '7b605edb-ce21-493d-99f4-db41adc9e0fd'),
(10, 14, 'Content', 1, '2016-03-01 11:35:59', '2016-03-01 11:35:59', '0073426c-a95b-4677-a377-764b482bb973'),
(11, 17, 'Default', 1, '2016-03-01 12:02:14', '2016-03-01 12:02:14', 'f2ff2c67-0f0a-4424-8edd-c0adb2cbfdd9');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `craft_fields`
--

INSERT INTO `craft_fields` (`id`, `groupId`, `name`, `handle`, `context`, `instructions`, `translatable`, `type`, `settings`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'Body', 'body', 'global', NULL, 1, 'RichText', '{"configFile":"Standard.json","columnType":"text"}', '2016-03-01 09:26:01', '2016-03-01 09:26:01', '4c7e854b-9ad9-495f-afa8-d77d235ed434'),
(2, 1, 'Tags', 'tags', 'global', NULL, 0, 'Tags', '{"source":"taggroup:1"}', '2016-03-01 09:26:01', '2016-03-01 09:26:01', '0fd862c3-bf46-4c86-b000-e614793dfa35'),
(3, 1, 'Header Image', 'headerImage', 'global', 'the header image, which will show up in the blog listing\r\n', 0, 'Assets', '{"useSingleFolder":"","sources":"*","defaultUploadLocationSource":"1","defaultUploadLocationSubpath":"\\/assets\\/images\\/","singleUploadLocationSource":"1","singleUploadLocationSubpath":"","restrictFiles":"","limit":"","viewMode":"large","selectionLabel":""}', '2016-03-01 10:10:32', '2016-03-01 10:14:21', '7ec60a2f-35b4-4c7b-a6d8-e91767d9a08b'),
(4, 1, 'Categories', 'categories', 'global', '', 0, 'Categories', '{"source":"group:1","limit":"","selectionLabel":""}', '2016-03-01 12:01:55', '2016-03-01 12:01:55', 'ec7218d8-1d6c-4778-aada-7049caa84a9e');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=28 ;

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
(27, NULL, 'm160223_000000_sortorder_to_smallint', '2016-03-01 09:25:58', '2016-03-01 09:25:58', '2016-03-01 09:25:58', 'd82914e4-7d4b-4d35-874c-4398fe120277');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=56 ;

--
-- Dumping data for table `craft_relations`
--

INSERT INTO `craft_relations` (`id`, `fieldId`, `sourceId`, `sourceLocale`, `targetId`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(32, 3, 4, NULL, 17, 1, '2016-03-01 10:20:03', '2016-03-01 10:20:03', '64addda6-b607-4358-9733-75e1e57f5d45'),
(33, 2, 4, NULL, 5, 1, '2016-03-01 10:20:03', '2016-03-01 10:20:03', '692b35e8-1a1b-4930-b39b-8d8e2eb0463c'),
(34, 2, 4, NULL, 6, 2, '2016-03-01 10:20:03', '2016-03-01 10:20:03', '41e3229b-d548-4741-b37c-fd376d4d02ea'),
(35, 2, 4, NULL, 7, 3, '2016-03-01 10:20:03', '2016-03-01 10:20:03', '8112b959-6f79-4bd2-9d5b-cfaee9b8fc54'),
(36, 3, 8, NULL, 13, 1, '2016-03-01 10:45:22', '2016-03-01 10:45:22', '05b6ff6e-b067-48f1-a25b-82f5c5f939fc'),
(37, 2, 8, NULL, 9, 1, '2016-03-01 10:45:22', '2016-03-01 10:45:22', '62cf0127-8673-442d-af79-e64ca6e41cb8'),
(38, 2, 8, NULL, 10, 2, '2016-03-01 10:45:22', '2016-03-01 10:45:22', '71fc4dc7-0c93-4ef6-bcc0-347dea321924'),
(39, 2, 8, NULL, 11, 3, '2016-03-01 10:45:22', '2016-03-01 10:45:22', '654cd536-c9d9-4f69-bb56-125848139184'),
(40, 3, 3, NULL, 38, 1, '2016-03-01 11:05:14', '2016-03-01 11:05:14', '07228bb1-789f-4960-8dd2-8929db1832d2'),
(41, 3, 2, NULL, 37, 1, '2016-03-01 11:05:29', '2016-03-01 11:05:29', 'c6107d38-1b56-48c7-a2f4-e9b965ad41e2'),
(44, 3, 45, NULL, 46, 1, '2016-03-01 11:46:39', '2016-03-01 11:46:39', 'c0a02f54-8e3b-4531-995e-2108fa436ae2'),
(45, 2, 45, NULL, 44, 1, '2016-03-01 11:46:39', '2016-03-01 11:46:39', 'f1b872d5-a1e3-4c8d-aa74-feef9c87407a'),
(46, 4, 54, NULL, 48, 1, '2016-03-01 12:14:52', '2016-03-01 12:14:52', 'f274f5f3-477f-4d15-917d-8d3c1434980d'),
(47, 4, 54, NULL, 49, 2, '2016-03-01 12:14:52', '2016-03-01 12:14:52', '97d6240d-4f06-40d3-8209-0467d634cf7b'),
(48, 3, 54, NULL, 51, 1, '2016-03-01 12:14:52', '2016-03-01 12:14:52', '51e7e4b8-000f-4fc4-83a4-61b2367a8000'),
(49, 2, 54, NULL, 52, 1, '2016-03-01 12:14:52', '2016-03-01 12:14:52', '26f89d62-779b-48b7-bac6-bfeee064f16a'),
(50, 2, 54, NULL, 53, 2, '2016-03-01 12:14:52', '2016-03-01 12:14:52', '95d57609-55d5-4cb2-921d-dba29678fc0b'),
(55, 3, 48, NULL, 55, 1, '2016-03-01 12:26:48', '2016-03-01 12:26:48', '33a16e95-3eeb-4e95-90f5-19165e93bc80');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

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
(2, 'title', 0, 'en', ' welcome to dev craftblog com '),
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
(41, 'kind', 0, 'en', ' image '),
(41, 'extension', 0, 'en', ' gif '),
(41, 'filename', 0, 'en', ' ngbbs4f9c54f32e11b_zps46460b6b gif '),
(41, 'field', 3, 'en', ''),
(2, 'field', 3, 'en', ' news 765x350px '),
(3, 'field', 3, 'en', ' craft blog graphic1 '),
(41, 'slug', 0, 'en', ' ngbbs4f9c54f32e11b zps46460b6b '),
(41, 'title', 0, 'en', ' ngbbs4f9c54f32e11b zps46460b6b '),
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
(49, 'title', 0, 'en', ' metal '),
(49, 'slug', 0, 'en', ' metal '),
(48, 'slug', 0, 'en', ' rock '),
(48, 'title', 0, 'en', ' rock '),
(50, 'slug', 0, 'en', ' metal core '),
(50, 'title', 0, 'en', ' metal core '),
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
(54, 'field', 1, 'en', ' evil empirerage against the machine also known as ratm or just rage is an american political rap metal band from los angeles california formed in 1991 the group consists of rapper and vocalist zack de la rocha bassist and backing vocalist tim commerford guitarist tom morello and drummer brad wilk they draw inspiration from early heavy metal instrumentation as well as hip hop acts such as afrika bambaataa 1 public enemy the beastie boys and dutch crossover band urban dance squad 2 rage against the machine is well known for the members leftist and revolutionary political views which are expressed in many of the band s songs as of 2010 they have sold over 16 million records worldwide 3 in 1992 the band released its self titled debut album which became a commercial and critical success leading to a slot in the 1993 lollapalooza festival in 2003 the album was ranked number 368 on rolling stone magazine s list of the 500 greatest albums of all time the band did not release a follow up record until 1996 with evil empire the band s third album the battle of los angeles followed in 1999 and in 2003 the album was ranked number 426 on the same list during their initial nine year run they became one of the most popular and influential bands in music history according to music journalist colin devenish 4 they were also ranked no 33 on vh1 s 100 greatest artists of hard rock the band had a large influence on the nu metal genre which came to prominence during the second half of the 1990s in 2000 the band released the cover album renegades the same year growing tensions over the direction of the band prompted de la rocha to quit leading to the band s breakup 5 de la rocha started a low key solo career while the rest of the band formed the rock supergroup audioslave with chris cornell then former frontman of soundgarden audioslave recorded three albums before disbanding in 2007 the same year rage against the machine announced a reunion and performed together for the first time in seven years at thecoachella valley music and arts festival in april 2007 up until 2011 the band continued to perform at more live venues and festivals around the world as of 2016 the group has no plans to perform or release new music 6 wikipediaafter a wonderful wikipedia entry to wet our apatite s the question remains is ratm still great after a ten year break they were great before they decided to split ways and their subsequent projects have all built followings in their respective rights fans will tell you that the bands thrash and metal style is still some of the best sounding rock music you can sink your teeth into at the end of the day it is all very objective i still love the band but i only started listening to them after they broke up which is a real shame i have searched the net looking for live shows and thoroughly enjoyed watching a young ratm jump around stage and throw a massive amount of energy at the crowd and wished i were there and i still really enjoy their music right now i am listening to evil empire evil empire so i believe ten years on their music lives on and makes for some amazing listening k '),
(54, 'field', 4, 'en', ' rock metal '),
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
(48, 'field', 1, 'en', ' rock music is a genre of popular music that originated as rock and roll in the united states in the 1950s and developed into a range of different styles in the 1960s and later particularly in the united kingdom and the united states 1 2 it has its roots in 1940s and 1950s rock and roll itself heavily influenced by blues rhythm and blues and country music rock music also drew strongly on a number of other genres such as electric blues and folk and incorporated influences from jazz classical and other musical sources musically rock has centered on the electric guitar usually as part of a rock group with electric bass guitar and drums typically rock is song based music usually with a 4 4 time signatureusing a verse chorus form but the genre has become extremely diverse like pop music lyrics often stress romantic love but also address a wide variety of other themes that are frequently social or political in emphasis the dominance of rock by white male musicians has been seen as one of the key factors shaping the themes explored in rock music rock places a higher degree of emphasis on musicianship live performance and an ideology of authenticity than pop music by the late 1960s referred to as the golden age 3 or classic rock 1 period a number of distinct rock music subgenres had emerged including hybrids like blues rock folk rock country rock raga rock and jazz rock fusion many of which contributed to the development of psychedelic rock which was influenced by the countercultural psychedelic scene new genres that emerged from this scene included progressive rock which extended the artistic elements glam rock which highlighted showmanship and visual style and the diverse and enduring subgenre of heavy metal which emphasized volume power and speed in the second half of the 1970s punk rock reacted against the perceived overblown inauthentic and overly mainstream aspects of these genres to produce a stripped down energetic form of music valuing raw expression and often lyrically characterised by social and political critiques punk was an influence into the 1980s on the subsequent development of other subgenres including new wave post punk and eventually the alternative rock movement from the 1990s alternative rock began to dominate rock music and break through into the mainstream in the form of grunge britpop and indie rock further fusion subgenres have since emerged including pop punk rap rock and rap metal as well as conscious attempts to revisit rock s history including the garage rock post punk and synthpop revivals at the beginning of the new millennium rock music has also embodied and served as the vehicle for cultural and social movements leading to major sub cultures including mods and rockers in the uk and the hippiecounterculture that spread out from san francisco in the us in the 1960s similarly 1970s punk culture spawned the visually distinctive goth and emo subcultures inheriting the folk tradition of the protest song rock music has been associated with political activism as well as changes in social attitudes to race sex and drug use and is often seen as an expression of youth revolt against adult consumerism and conformity '),
(48, 'field', 4, 'en', ''),
(48, 'field', 3, 'en', ' dwayne johnson at the 2009 tribeca film festival '),
(48, 'field', 2, 'en', '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `craft_sections`
--

INSERT INTO `craft_sections` (`id`, `structureId`, `name`, `handle`, `type`, `hasUrls`, `template`, `enableVersioning`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, NULL, 'Homepage', 'homepage', 'single', 1, 'index', 1, '2016-03-01 09:26:01', '2016-03-01 09:26:01', '7a785372-c000-4378-994e-0c5b9eb6009f'),
(2, NULL, 'News', 'news', 'channel', 1, 'news/_entry', 1, '2016-03-01 09:26:01', '2016-03-01 09:26:01', '56abb807-156f-4eee-b6b3-e7b33907a286'),
(3, NULL, 'Vehicles', 'vehicles', 'channel', 1, 'vehicles/_entry', 1, '2016-03-01 09:31:20', '2016-03-01 09:31:20', '1d8ed7bf-ec6f-46c2-bbd8-851d321bef40'),
(4, NULL, 'Music', 'music', 'channel', 1, 'music/_entry', 1, '2016-03-01 11:48:19', '2016-03-01 11:48:19', '28a1c61b-4dbd-4ac1-828a-1e10b124f296');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `craft_sections_i18n`
--

INSERT INTO `craft_sections_i18n` (`id`, `sectionId`, `locale`, `enabledByDefault`, `urlFormat`, `nestedUrlFormat`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'en', 1, '__home__', NULL, '2016-03-01 09:26:01', '2016-03-01 09:26:01', '2c5de27f-6a94-4f4a-861c-fba51b799b49'),
(2, 2, 'en', 1, 'news/{postDate.year}/{slug}', NULL, '2016-03-01 09:26:01', '2016-03-01 09:26:01', 'b3c5bf12-e86e-421f-8f84-4712c89fe9e9'),
(3, 3, 'en', 0, 'vehicles/{slug}', NULL, '2016-03-01 09:31:20', '2016-03-01 09:31:20', '4dfe44de-760b-4686-85e6-4bc806632861'),
(4, 4, 'en', 0, 'music/{slug}', NULL, '2016-03-01 11:48:19', '2016-03-01 11:48:19', '65c08f2f-8191-43c8-b906-6859403b8e8a');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `craft_sessions`
--

INSERT INTO `craft_sessions` (`id`, `userId`, `token`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'b18f0db4cc88619dc9779a91cc785b3687b48961czozMjoiVXh4N1FKYVlmaGxNU2F4VVo2NlBmSDVaQVdHY050TnciOw==', '2016-03-01 09:26:00', '2016-03-01 09:26:00', '84094211-60ac-421b-8d1d-1654f99a8672');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `craft_structureelements`
--

INSERT INTO `craft_structureelements` (`id`, `structureId`, `elementId`, `root`, `lft`, `rgt`, `level`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, NULL, 1, 1, 8, 0, '2016-03-01 11:55:01', '2016-03-01 11:55:01', '15458672-4e43-45c1-8cfc-ce7c77d48525'),
(3, 1, 48, 1, 2, 7, 1, '2016-03-01 11:55:49', '2016-03-01 11:55:49', '5f8adda0-76ed-4cb3-8b27-4328d8b09cfd'),
(4, 1, 49, 1, 3, 6, 2, '2016-03-01 11:56:38', '2016-03-01 11:56:38', '14c683df-bbae-4829-a057-986fa6f47bae'),
(5, 1, 50, 1, 4, 5, 3, '2016-03-01 11:56:52', '2016-03-01 11:56:52', '5428cf51-e847-4139-8368-d00584ea858b');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `craft_structures`
--

INSERT INTO `craft_structures` (`id`, `maxLevels`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, NULL, '2016-03-01 11:52:51', '2016-03-01 12:31:56', 'f850fdb3-756e-49b9-9294-81704b29356b');

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
(1, 'Default', 'default', 1, '2016-03-01 09:26:00', '2016-03-01 09:26:00', '16cb0b77-1bc9-4b23-86dc-360dc267a4c6');

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
(53, 1, '2016-03-01 12:08:54', '2016-03-01 12:08:54', '26240696-1608-4655-9642-18669023dfc9');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=62 ;

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
(1, 'kurvin', NULL, NULL, NULL, 'kurvin@limabean.co.za', '$2y$13$IG0hi.7XBhy13vps/G5MN.X6QYbtR3mhMTMdo4730cjINFJGvAgi.', NULL, 0, 1, 0, 0, 0, 0, 0, '2016-03-01 09:26:00', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2016-03-01 09:25:59', '2016-03-01 09:25:59', '2016-03-01 09:26:00', 'dc07bd4f-b7fc-41f0-a699-b93d8e657e7f');

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
