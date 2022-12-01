-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 01, 2022 at 01:56 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vahatra`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

DROP TABLE IF EXISTS `activity`;
CREATE TABLE IF NOT EXISTS `activity` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_fr` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `description_en` longtext COLLATE utf8_unicode_ci,
  `description_fr` longtext COLLATE utf8_unicode_ci,
  `date` date DEFAULT NULL,
  `note` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note_fr` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `idtypeactivity` bigint(20) NOT NULL,
  `idtypesubactivity` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activity_idtypeactivity_8153ff68_fk_typeactivity_id` (`idtypeactivity`),
  KEY `activity_idtypesubactivity_edc37fdf_fk_typesubactivity_id` (`idtypesubactivity`),
  KEY `activity_slug_67fd3e44` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`id`, `title`, `title_en`, `title_fr`, `description`, `description_en`, `description_fr`, `date`, `note`, `note_en`, `note_fr`, `slug`, `idtypeactivity`, `idtypesubactivity`) VALUES
(1, 'Visit villages', 'Visit villages', 'Visite des villages', 'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud : Cap Est', 'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud : Cap Est', 'Aux alentours du PN de Marojejy et de la RS d’Anjanaharibe-Sud : Cap Est', '2015-01-01', NULL, NULL, NULL, 'visit/science-for-the-people/visit-villages-1', 1, 1),
(2, 'Visit villages', 'Visit villages', 'Visite des villages', 'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud', 'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud', 'Aux alentours du PN de Marojejy et de la RS d’Anjanaharibe-Sud', '2015-01-01', NULL, NULL, NULL, 'visit/science-for-the-people/visit-villages-2', 1, 1),
(3, 'Visit villages', 'Visit villages', 'Visite des villages', 'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud', 'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud', 'Aux alentours du PN de Marojejy et de la RS d’Anjanaharibe-Sud', '2015-01-01', NULL, NULL, NULL, 'visit/science-for-the-people/visit-villages-3', 1, 1),
(4, 'Visit villages', 'Visit villages', 'Visite des villages', 'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud', 'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud', 'Aux alentours du PN de Marojejy et de la RS d’Anjanaharibe-Sud', '2015-01-01', NULL, NULL, NULL, 'visit/science-for-the-people/visit-villages-4', 1, 1),
(5, 'Visit villages', 'Visit villages', 'Visite des villages', 'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud', 'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud', 'Aux alentours du PN de Marojejy et de la RS d’Anjanaharibe-Sud', '2015-01-01', NULL, NULL, NULL, 'visit/science-for-the-people/visit-villages-5', 1, 1),
(6, 'Visit villages', 'Visit villages', 'Visite des villages', 'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud', 'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud', 'Aux alentours du PN de Marojejy et de la RS d’Anjanaharibe-Sud', '2015-01-01', NULL, NULL, NULL, 'visit/science-for-the-people/visit-villages-6', 1, 1),
(7, 'Visit villages', 'Visit villages', 'Visite des villages', 'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud', 'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud', 'Aux alentours du PN de Marojejy et de la RS d’Anjanaharibe-Sud', '2015-01-01', NULL, NULL, NULL, 'visit/science-for-the-people/visit-villages-7', 1, 1),
(8, 'Visit villages', 'Visit villages', 'Visite des villages', 'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud', 'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud', 'Aux alentours du PN de Marojejy et de la RS d’Anjanaharibe-Sud', '2015-01-01', NULL, NULL, NULL, 'visit/science-for-the-people/visit-villages-8', 1, 1),
(9, 'Visit villages', 'Visit villages', 'Visite des villages', 'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud', 'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud', 'Aux alentours du PN de Marojejy et de la RS d’Anjanaharibe-Sud', '2015-01-01', NULL, NULL, NULL, 'visit/science-for-the-people/visit-villages-9', 1, 1),
(10, 'Visit villages', 'Visit villages', 'Visite des villages', 'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud', 'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud', 'Aux alentours du PN de Marojejy et de la RS d’Anjanaharibe-Sud', '2015-01-01', NULL, NULL, NULL, 'visit/science-for-the-people/visit-villages-10', 1, 1),
(11, 'Visit villages', 'Visit villages', 'Visite des villages', 'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud', 'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud', 'Aux alentours du PN de Marojejy et de la RS d’Anjanaharibe-Sud', '2015-01-01', NULL, NULL, NULL, 'visit/science-for-the-people/visit-villages-11', 1, 1),
(12, 'Visit villages', 'Visit villages', 'Visite des villages', 'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud', 'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud', 'Aux alentours du PN de Marojejy et de la RS d’Anjanaharibe-Sud', '2015-01-01', NULL, NULL, NULL, 'visit/science-for-the-people/visit-villages-12', 1, 1),
(13, 'Visit villages', 'Visit villages', 'Visite des villages', 'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud', 'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud', 'Aux alentours du PN de Marojejy et de la RS d’Anjanaharibe-Sud', '2015-01-01', NULL, NULL, NULL, 'visit/science-for-the-people/visit-villages-13', 1, 1),
(14, 'Visit villages', 'Visit villages', 'Visite des villages', 'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud', 'In the immediate vicinity of PN de Marojejy and the RS d’Anjanaharibe-Sud', 'Aux alentours du PN de Marojejy et de la RS d’Anjanaharibe-Sud', '2015-01-01', NULL, NULL, NULL, 'visit/science-for-the-people/visit-villages-14', 1, 1),
(15, 'Visit villages', 'Visit villages', 'Visite des villages', 'In the immediate vicinity of the RS de Marotandrano and of the PN de Sahamalaza', 'In the immediate vicinity of the RS de Marotandrano and of the PN de Sahamalaza', 'Aux alentours de la RS de Marotandrano et du PN de Sahamalaza', '2015-01-01', NULL, NULL, NULL, 'visit/science-for-the-people/visit-villages-15', 1, 1),
(16, 'Visit villages', 'Visit villages', 'Visite des villages', 'In the immediate vicinity of the RS de Marotandrano and of the PN de Sahamalaza', 'In the immediate vicinity of the RS de Marotandrano and of the PN de Sahamalaza', 'Aux alentours de la RS de Marotandrano et du PN de Sahamalaza', '2015-01-01', NULL, NULL, NULL, 'visit/science-for-the-people/visit-villages-16', 1, 1),
(17, 'Visit villages', 'Visit villages', 'Visite des villages', 'In the immediate vicinity of the RS de Marotandrano and of the PN de Sahamalaza', 'In the immediate vicinity of the RS de Marotandrano and of the PN de Sahamalaza', 'Aux alentours de la RS de Marotandrano et du PN de Sahamalaza', '2015-01-01', NULL, NULL, NULL, 'visit/science-for-the-people/visit-villages-17', 1, 1),
(18, 'Visit villages', 'Visit villages', 'Visite des villages', 'In the immediate vicinity of the RS de Marotandrano and of the PN de Sahamalaza', 'In the immediate vicinity of the RS de Marotandrano and of the PN de Sahamalaza', 'Aux alentours de la RS de Marotandrano et du PN de Sahamalaza', '2015-01-01', NULL, NULL, NULL, 'visit/science-for-the-people/visit-villages-18', 1, 1),
(19, 'Visit villages', 'Visit villages', 'Visite des villages', 'In the immediate vicinity of the RS de Marotandrano and of the PN de Sahamalaza', 'In the immediate vicinity of the RS de Marotandrano and of the PN de Sahamalaza', 'Aux alentours de la RS de Marotandrano et du PN de Sahamalaza', '2015-01-01', NULL, NULL, NULL, 'visit/science-for-the-people/visit-villages-19', 1, 1),
(20, 'Visit villages', 'Visit villages', 'Visite des villages', 'In the immediate vicinity of the RS de Marotandrano and of the PN de Sahamalaza', 'In the immediate vicinity of the RS de Marotandrano and of the PN de Sahamalaza', 'Aux alentours de la RS de Marotandrano et du PN de Sahamalaza', '2015-01-01', NULL, NULL, NULL, 'visit/science-for-the-people/visit-villages-20', 1, 1),
(21, 'Visit villages', 'Visit villages', 'Visite des villages', 'In the immediate vicinity of the RS de Marotandrano and of the PN de Sahamalaza', 'In the immediate vicinity of the RS de Marotandrano and of the PN de Sahamalaza', 'Aux alentours de la RS de Marotandrano et du PN de Sahamalaza', '2015-01-01', NULL, NULL, NULL, 'visit/science-for-the-people/visit-villages-21', 1, 1),
(22, 'Visit villages', 'Visit villages', 'Visite des villages', 'In the immediate vicinity of the RS de Marotandrano and of the PN de Sahamalaza', 'In the immediate vicinity of the RS de Marotandrano and of the PN de Sahamalaza', 'Aux alentours de la RS de Marotandrano et du PN de Sahamalaza', '2015-01-01', NULL, NULL, NULL, 'visit/science-for-the-people/visit-villages-22', 1, 1),
(23, 'Visit villages', 'Visit villages', 'Visite des villages', 'In the immediate vicinity of the RS de Marotandrano and of the PN de Sahamalaza', 'In the immediate vicinity of the RS de Marotandrano and of the PN de Sahamalaza', 'Aux alentours de la RS de Marotandrano et du PN de Sahamalaza', '2015-01-01', NULL, NULL, NULL, 'visit/science-for-the-people/visit-villages-23', 1, 1),
(24, 'Visit villages', 'Visit villages', 'Visite des villages', 'In the immediate vicinity of the RS de Marotandrano and of the PN de Sahamalaza', 'In the immediate vicinity of the RS de Marotandrano and of the PN de Sahamalaza', 'Aux alentours de la RS de Marotandrano et du PN de Sahamalaza', '2015-01-01', NULL, NULL, NULL, 'visit/science-for-the-people/visit-villages-24', 1, 1),
(25, 'Visit villages', 'Visit villages', 'Visite des villages', 'In the immediate vicinity of the RS de Marotandrano and of the PN de Sahamalaza', 'In the immediate vicinity of the RS de Marotandrano and of the PN de Sahamalaza', 'Aux alentours de la RS de Marotandrano et du PN de Sahamalaza', '2015-01-01', NULL, NULL, NULL, 'visit/science-for-the-people/visit-villages-25', 1, 1),
(26, 'Visit villages', 'Visit villages', 'Visite des villages', 'In the immediate vicinity of the RS de Marotandrano and of the PN de Sahamalaza', 'In the immediate vicinity of the RS de Marotandrano and of the PN de Sahamalaza', 'Aux alentours de la RS de Marotandrano et du PN de Sahamalaza', '2015-01-01', NULL, NULL, NULL, 'visit/science-for-the-people/visit-villages-26', 1, 1),
(27, 'Field Schools', 'Field Schools', 'Ecole de terrain', NULL, NULL, NULL, '2015-01-01', NULL, NULL, NULL, 'visit/field-school/field-schools-27', 1, 2),
(28, 'Field Schools', 'Field Schools', 'Ecole de terrain', NULL, NULL, NULL, '2014-01-01', NULL, NULL, NULL, 'visit/biological-inventories/field-schools-28', 1, 2),
(29, 'Field Schools', 'Field Schools', 'Ecole de terrain', NULL, NULL, NULL, '2014-01-01', NULL, NULL, NULL, 'visit/field-school/field-schools-29', 1, 2),
(30, 'Field Schools', 'Field Schools', 'Ecole de terrain', NULL, NULL, NULL, '2013-01-01', NULL, NULL, NULL, 'visit/biological-inventories/field-schools-30', 1, 2),
(31, 'Field Schools', 'Field Schools', 'Ecole de terrain', NULL, NULL, NULL, '2013-01-01', NULL, NULL, NULL, 'visit/field-school/field-schools-31', 1, 2),
(32, 'Field Schools', 'Field Schools', 'Ecole de terrain', NULL, NULL, NULL, '2012-01-01', NULL, NULL, NULL, 'visit/biological-inventories/field-schools-32', 1, 2),
(33, 'Field Schools', 'Field Schools', 'Ecole de terrain', NULL, NULL, NULL, '2011-01-01', NULL, NULL, NULL, 'visit/field-school/field-schools-33', 1, 2),
(34, 'Field Schools', 'Field Schools', 'Ecole de terrain', NULL, NULL, NULL, '2010-01-01', NULL, NULL, NULL, 'visit/field-school/field-schools-34', 1, 2),
(35, 'Field Schools', 'Field Schools', 'Ecole de terrain', NULL, NULL, NULL, '2010-01-01', NULL, NULL, NULL, 'visit/field-school/field-schools-35', 1, 2),
(36, 'Field Schools', 'Field Schools', 'Ecole de terrain', NULL, NULL, NULL, '2009-01-01', NULL, NULL, NULL, 'visit/field-school/field-schools-36', 1, 2),
(37, 'Field Schools', 'Field Schools', 'Ecole de terrain', NULL, NULL, NULL, '2008-01-01', NULL, NULL, NULL, 'visit/biological-inventories/field-schools-37', 1, 2),
(38, 'Field Schools', 'Field Schools', 'Ecole de terrain', NULL, NULL, NULL, '2008-01-01', NULL, NULL, NULL, 'visit/field-school/field-schools-38', 1, 2),
(39, 'Field Schools', 'Field Schools', 'Ecole de terrain', NULL, NULL, NULL, '2007-01-01', NULL, NULL, NULL, 'visit/field-school/field-schools-39', 1, 2),
(40, 'Field Schools', 'Field Schools', 'Ecole de terrain', NULL, NULL, NULL, '2004-01-01', NULL, NULL, NULL, 'visit/field-school/field-schools-40', 1, 2),
(41, 'Field Schools', 'Field Schools', 'Ecole de terrain', NULL, NULL, NULL, '2003-01-01', NULL, NULL, NULL, 'visit/field-school/field-schools-41', 1, 2),
(42, 'Field Schools', 'Field Schools', 'Ecole de terrain', NULL, NULL, NULL, '2002-01-01', NULL, NULL, NULL, 'visit/field-school/field-schools-42', 1, 2),
(43, 'Field Schools', 'Field Schools', 'Ecole de terrain', NULL, NULL, NULL, '2001-01-01', NULL, NULL, NULL, 'visit/field-school/field-schools-43', 1, 2),
(44, 'Field Schools', 'Field Schools', 'Ecole de terrain', NULL, NULL, NULL, '2001-01-01', NULL, NULL, NULL, 'visit/field-school/field-schools-44', 1, 2),
(45, 'Field Schools', 'Field Schools', 'Ecole de terrain', NULL, NULL, NULL, '2001-01-01', NULL, NULL, NULL, 'visit/field-school/field-schools-45', 1, 2),
(46, 'Field Schools', 'Field Schools', 'Ecole de terrain', NULL, NULL, NULL, '2000-01-01', NULL, NULL, NULL, 'visit/biological-inventories/field-schools-46', 1, 2),
(47, 'Field Schools', 'Field Schools', 'Ecole de terrain', NULL, NULL, NULL, '1998-01-01', NULL, NULL, NULL, 'visit/biological-inventories/field-schools-47', 1, 2),
(48, 'Field Schools', 'Field Schools', 'Ecole de terrain', NULL, NULL, NULL, '1997-01-01', NULL, NULL, NULL, 'visit/field-school/field-schools-48', 1, 2),
(49, 'Field Schools', 'Field Schools', 'Ecole de terrain', NULL, NULL, NULL, '1997-01-01', NULL, NULL, NULL, 'visit/field-school/field-schools-49', 1, 2),
(50, 'Field Schools', 'Field Schools', 'Ecole de terrain', NULL, NULL, NULL, '1997-01-01', NULL, NULL, NULL, 'visit/field-school/field-schools-50', 1, 2),
(51, 'Field Schools', 'Field Schools', 'Ecole de terrain', NULL, NULL, NULL, '1996-01-01', NULL, NULL, NULL, 'visit/field-school/field-schools-51', 1, 2),
(52, 'Biological inventories', 'Biological inventories', 'Inventaires biologiques', 'Obtaining field data on terrestrial vertebrates for the action of the \"Ala Maiky\" project of WWF. In collaboration with WWF.', 'Obtaining field data on terrestrial vertebrates for the action of the \"Ala Maiky\" project of WWF. In collaboration with WWF.', 'Constitution d\'une base de données pour le plan d\'action du projet \"Ala Maiky\" du WWF', '2003-02-01', NULL, NULL, NULL, 'visit/biological-inventories/biological-inventories-52', 1, 3),
(53, 'Biological inventories', 'Biological inventories', 'Inventaires biologiques', 'Obtaining data on terrestrial organisms to help with the management of a new marine protected area. In collaboration with WWF.', 'Obtaining data on terrestrial organisms to help with the management of a new marine protected area. In collaboration with WWF.', 'Constitution d\'une base de données pour le plan d\'aménagement d\'une nouvelle aire protégée marine à Madagascar. En collaboration avec le WWF', '2005-09-01', NULL, NULL, NULL, 'visit/biological-inventories/biological-inventories-53', 1, 3),
(54, 'Biological inventories', 'Biological inventories', 'Inventaires biologiques', 'To understand patterns of terrestrial animal distribution in this forested corridor, evaluation of remaining natural habitats, and the important of the remaining forest for the conservation of biodiversity. In collaboration with WWF and Fanamby.', 'To understand patterns of terrestrial animal distribution in this forested corridor, evaluation of remaining natural habitats, and the important of the remaining forest for the conservation of biodiversity. In collaboration with WWF and Fanamby.', 'Etude de la représentativité et l\'hétérogéneité du couloir, évaluation des habitats et détermination du rôle du couloir forestier dans la conservation de la biodiversité. En collaboration avec WWF et Fanamby', '2005-11-01', NULL, NULL, NULL, 'visit/biological-inventories/biological-inventories-54', 1, 3),
(55, 'Biological inventories', 'Biological inventories', 'Inventaires biologiques', 'Obtaining field data on terrestrial vertebrates for the extension of the Kirindy Mite National Park. In collaboration with WWF and Madagascar national Parks.', 'Obtaining field data on terrestrial vertebrates for the extension of the Kirindy Mite National Park. In collaboration with WWF and Madagascar national Parks.', 'Constitution d\'une base de données pour l\'extension du Parc National de Kirindy Mitea. En Collaboration avec le WWF et Parcs Nationaux Madagascar', '2007-02-01', NULL, NULL, NULL, 'visit/biological-inventories/biological-inventories-55', 1, 3),
(56, 'Biological inventories', 'Biological inventories', 'Inventaires biologiques', 'Obtaining field data on the biological riches of identified protected areas for the extension of a humid forest of a UNESCO World Heritage site. In collaboration with UNESCO World Heritage program.', 'Obtaining field data on the biological riches of identified protected areas for the extension of a humid forest of a UNESCO World Heritage site. In collaboration with UNESCO World Heritage program.', 'Mettre à jour la base de données sur la richesse biologique (Faune et Flore) des aires protégées identifiées pour l\'extension du site du Patrimoine Mondial des forêt humides de l\'Antsinanana. En collaboration avec Patrimoine Mondial.', '2008-01-01', NULL, NULL, NULL, 'visit/biological-inventories/biological-inventories-56', 1, 3),
(57, 'Biological inventories', 'Biological inventories', 'Inventaires biologiques', 'Obtaining field data for a biological compensation program associated with a mining project. In collaboration with Ambatovy Project.', 'Obtaining field data for a biological compensation program associated with a mining project. In collaboration with Ambatovy Project.', 'Constitution d\'une base de données pour le Programme de Compensation. En collaboration avec Sherritt International.', '2009-01-01', NULL, NULL, NULL, 'visit/biological-inventories/biological-inventories-57', 1, 3),
(58, 'Biological inventories', 'Biological inventories', 'Inventaires biologiques', 'Obtaining scientific information on the RS of Andranomena ant the Ampataka forest. In collaboration with Madagascar National Parks', 'Obtaining scientific information on the RS of Andranomena ant the Ampataka forest. In collaboration with Madagascar National Parks', 'Collecte d\'informations scientifiques sur la RS d\'ANdranomena et la forêt d\'Ampataka. En collaboration avec Parcs Nationaux Madagascar.', '2010-03-01', NULL, NULL, NULL, 'visit/biological-inventories/biological-inventories-58', 1, 3),
(59, 'Biological inventories', 'Biological inventories', 'Inventaires biologiques', 'Biological exploration of the dry forest on karst of Beanka. In collaboration with the Universities of Geneva and Antananarivo.', 'Biological exploration of the dry forest on karst of Beanka. In collaboration with the Universities of Geneva and Antananarivo.', 'Exploration biologique de la forêt sèche du plateau calcaire de Beanka. En collaboration avec les Universités de Genève et d\'Antananarivo', '2011-11-01', NULL, NULL, NULL, 'visit/biological-inventories/biological-inventories-59', 1, 3),
(60, 'Biological inventories', 'Biological inventories', 'Inventaires biologiques', 'Biological exploration for the conception of a management and conservation plan. In collaboration with PGME-GIZ', 'Biological exploration for the conception of a management and conservation plan. In collaboration with PGME-GIZ', 'Exploration biologique en vue de la conception d\'un plan de gestion et de conservation. En collaboration avec PME-GIZ', '2011-01-01', NULL, NULL, NULL, 'visit/biological-inventories/biological-inventories-60', 1, 3),
(61, 'Biological inventories', 'Biological inventories', 'Inventaires biologiques', 'Exploration of the biological diversity of Bemanevika Forest. In collaboration with the Peregrine Fund.', 'Exploration of the biological diversity of Bemanevika Forest. In collaboration with the Peregrine Fund.', 'Exploration de la diversité biologique de la forêt de Bemanevika. En collaboration avec The Peregrine Fund', '2013-10-01', NULL, NULL, NULL, 'visit/biological-inventories/biological-inventories-61', 1, 3),
(62, 'Transect altimétrique dans la zone protégée d\'Andohahela', 'Elevational transect in the Andohahela protected area', 'Transect altimétrique dans la zone protégée d\'Andohahela', 'A la fin de l\'\'année 2022 l\'\'équipe de Vahatra refera un autre transect d\'\'altitude dans la zone protégée d\'\'Andohahela, de la même manière que Marojejy et dans le cadre du projet Rainforest. de la même manière que Marojejy et dans le cadre de la forêt tropicale de l\'\'Atsinanana. de l\'\'Atsinanana.', 'In late 2022\r\n\r\nthe Vahatra team will redo another elevational transect in the Andohahela\r\n\r\nprotected area in the same fashion as Marojejy and part of the The Rainforest\r\n\r\nof the Atsinanana.', 'A la fin de l\'\'année 2022 l\'\'équipe de Vahatra refera un autre transect d\'\'altitude dans la zone protégée d\'\'Andohahela, de la même manière que Marojejy et dans le cadre du projet Rainforest. de la même manière que Marojejy et dans le cadre de la forêt tropicale de l\'\'Atsinanana. de l\'\'Atsinanana.', '2022-10-15', NULL, NULL, NULL, 'visit/biological-inventories/elevational-transect-in-the-andohahela-protected-area-62', 1, 3),
(63, 'Micro-endemism à Madagascar', 'Micro-endemism in Madagascar', 'Micro-endemism à Madagascar', 'Une nouvelle hypothèse sur le modèle de Micro-endémisme à Madagascar et de son application à la conservation de la Biodiversité malgache.', 'A new hypothesis and model of micro-endemism in Madagascar and its application to the conservation of Malagasy biodiversity. (Presented in French.)', 'Une nouvelle hypothèse sur le modèle de Micro-endémisme à Madagascar et de son application à la conservation de la Biodiversité malgache.', '2008-01-01', NULL, NULL, NULL, 'seminaire/evenement-de-vahatra/micro-endemism-a-madagascar-63', 2, 4),
(64, 'Deux nouveaux Traversodontidae du Trias de Madagascar', 'New Traversodontidae from the Triassic of Madagascar', 'Deux nouveaux Traversodontidae du Trias de Madagascar', 'Deux nouveaux Traversodontidae du Trias de Madagascar : implications pour la paléoécologie et la question des vertébrés terrestres malgaches endémiques du Pré-Jurassique. (Présenté en français.)', 'Two new Traversodontidae from the Triassic of Madagascar: implications for paleoecology and the issue of endemic Malagasy terrestrial vertebrates in the Pre-Jurassic. (Presented in French.)', 'Deux nouveaux Traversodontidae du Trias de Madagascar : implications pour la paléoécologie et la question des vertébrés terrestres malgaches endémiques du Pré-Jurassique. (Présenté en français.)', '2009-01-01', NULL, NULL, NULL, 'seminaire/evenement-de-vahatra/deux-nouveaux-traversodontidae-du-trias-de-madagascar-64', 2, 4),
(65, 'Système d\'Information Géographique au service de la conservation', 'Geographic Information Systems In Conservation', 'Système d\'Information Géographique au service de la conservation', 'Le Système d\'Information Géographique au service de la conservation : études de cas.', 'Geographic Information Systems at the service of conservation: case studies. (Presented in French.)', 'Le Système d\'Information Géographique au service de la conservation : études de cas.', '2010-01-01', NULL, NULL, NULL, 'seminaire/evenement-de-vahatra/systeme-dinformation-geographique-au-service-de-la-conservation-65', 2, 4),
(66, 'Effets d\'un cyclone  sur Varecia variegata', 'Effects of cyclone on Varecia variegata', 'Effets d\'un cyclone  sur Varecia variegata', 'Effets d\'un cyclone ou d\'une perturbation de l\'habitat sur Varecia variegata (reproduction, comportement alimentaire, etc.).', 'Effects of cyclone or habitat disturbance on Varecia variegata (reproduction, feeding behavior, etc.). (Presented in French.)', 'Effets d\'un cyclone ou d\'une perturbation de l\'habitat sur Varecia variegata (reproduction, comportement alimentaire, etc.).', '2011-01-01', NULL, NULL, NULL, 'seminaire/evenement-de-vahatra/effets-dun-cyclone-sur-varecia-variegata-66', 2, 4),
(67, 'Fragmentation de l’habitat et diversité génétique', 'Fragmentation and genetic diversity', 'Fragmentation de l’habitat et diversité génétique', 'Fragmentation de l’habitat et diversité génétique dans l’espace et dans le temps.', 'Fragmentation of habitat and genetic diversity in space and time. (Presented in French.) ', 'Fragmentation de l’habitat et diversité génétique dans l’espace et dans le temps.', '2011-01-01', NULL, NULL, NULL, 'seminaire/evenement-de-vahatra/fragmentation-de-lhabitat-et-diversite-genetique-67', 2, 4),
(68, 'Solution pour les espèces exotiques envahissantes', 'Solution for invasive alien species', 'Solution pour les espèces exotiques envahissantes', 'L\'impact des espèces exotiques envahissantes sur la biodiversité insulaire - Quelles solutions ?', 'The impact of invasive alien species on island biodiversity - What solutions? (Presented in French.) ', 'L\'impact des espèces exotiques envahissantes sur la biodiversité insulaire - Quelles solutions ?', '2012-01-01', NULL, NULL, NULL, 'seminaire/evenement-de-vahatra/solution-pour-les-especes-exotiques-envahissantes-68', 2, 4),
(69, 'Animaux et écosystèmes récemment disparus de Madagascar.', 'Extinct animals and ecosystems of Madagascar', 'Animaux et écosystèmes récemment disparus de Madagascar.', 'Fenêtres sur les animaux extraordinaires et les écosystèmes récemment disparus de Madagascar.', 'Windows into the extraordinary extinct animals and ecosystems of Madagascar. (Presented in French.) ', 'Fenêtres sur les animaux extraordinaires et les écosystèmes récemment disparus de Madagascar.', '2012-01-01', NULL, NULL, NULL, 'seminaire/evenement-de-vahatra/animaux-et-ecosystemes-recemment-disparus-de-madagascar-69', 2, 4),
(70, 'Génétique et applications', 'Genetics  and applications', 'Génétique et applications', 'Génétique des Populations, Conservation génétique et leurs applications.', 'Population genetics, conservation genetics, and their applications. (Presented in French.) ', 'Génétique des Populations, Conservation génétique et leurs applications.', '2012-01-01', NULL, NULL, NULL, 'conference/vahatras-cooperation/genetics-and-applications-70', 2, 5),
(72, 'ArcGIS', 'ArcGIS', 'ArcGIS', 'Formation sur ArcGIS.', 'ArcGIS training. (Presented in French.) ', 'Formation sur ArcGIS.', '2014-01-01', NULL, NULL, NULL, 'seminaire/evenement-de-vahatra/arcgis-72', 2, 4),
(73, 'High spatial resolution cloud climatology', 'High spatial resolution cloud climatology', 'High spatial resolution cloud climatology', 'High spatial resolution cloud climatology of Madagascar and implications for biodiversity conservation activities', 'High spatial resolution cloud climatology of Madagascar and implications for biodiversity conservation activities', 'High spatial resolution cloud climatology of Madagascar and implications for biodiversity conservation activities', '2015-01-01', NULL, NULL, NULL, 'seminaire/evenement-de-vahatra/high-spatial-resolution-cloud-climatology-73', 2, 4),
(74, 'Grosphus mavo', 'Grosphus mavo', 'Grosphus mavo', '<p>The remarkable diversity of the genus <i>Grosphus simon</i>, 1880 (<i>scorpiones: buthidae</i>) in southern madagascar and in particular in the region of cap sainte marie. <i>Arachnida – Rivista Aracnologica Italiana</i>, 27(1): 2-35.</p>', '<p>The remarkable diversity of the genus <i>Grosphus simon</i>, 1880 (<i>scorpiones: buthidae</i>) in southern madagascar and in particular in the region of cap sainte marie. <i>Arachnida – Rivista Aracnologica Italiana</i>, 27(1): 2-35.</p>', '<p>La remarquable diversité du genre <i>Grosphus simon</i>, 1880 (<i>scorpiones </i>: <i>buthidae</i>) dans le sud de madagascar et en particulier dans la région du cap sainte marie. <i>Arachnida </i>- <i>Rivista Aracnologica Italiana</i>, 27(1) : 2-35.</p>', '2020-01-01', 'endemic scorpion in the extreme south of the island', 'endemic scorpion in the extreme south of the island', 'scorpion endémique dans l\'extrême sud de l\'île', 'project/scientific-research/grosphus-mavo-74', 3, 7),
(75, 'Haemaphysalis galidiae', 'Haemaphysalis galidiae', 'Haemaphysalis galidiae', '<p>Description d\'une nouvelle espèce de <i>Haemaphysalis koch</i>, 1844 (<i>Acari : ixodidae</i>) du sous-groupe H. (<i>Rhipistoma</i>) asiatica, parasite d\'un carnivore malgache endémique (famille <i>eupleridae</i>). Systematic Parasitology, 97 : 591-599.</p>', '<p>Description of a new species of <i>Haemaphysalis koch,</i> 1844 (<i>Acari: ixodidae</i>) from the H. (<i>Rhipistoma</i>) asiatica subgroup, parasite of an endemic malagasy carnivoran (family <i>eupleridae</i>). Systematic Parasitology, 97: 591-599.</p>', '<p>Description d\'une nouvelle espèce de <i>Haemaphysalis koch</i>, 1844 (<i>Acari : ixodidae</i>) du sous-groupe H. (<i>Rhipistoma</i>) asiatica, parasite d\'un carnivore malgache endémique (famille <i>eupleridae</i>). Systematic Parasitology, 97 : 591-599.</p>', '2020-01-01', 'tique endémique connue des carnivores endémiques', 'endemic tick known from endemic carnivora', 'tique endémique connue des carnivores endémiques', 'project/scientific-research/haemaphysalis-galidiae-75', 3, 7),
(76, 'Ixodes soarimalalae', 'Ixodes soarimalalae', 'Ixodes soarimalalae', '<p>Description de trois nouvelles espèces d\'<i>Ixodes latreille</i>, 1795 (<i>acari : ixodidae</i>), parasites des tenrecs (<i>Afrotheria : tenrecidae</i>) à Madagascar. Systematic Parasitology, 97 : 623-637.</p>', '<p>Description of three new species of<i> Ixodes latreille</i>, 1795 (<i>acari: ixodidae</i>), parasites of tenrecs (<i>Afrotheria: tenrecidae</i>) on Madagascar. Systematic Parasitology, 97: 623-637.</p>', '<p>Description de trois nouvelles espèces d\'<i>Ixodes latreille</i>, 1795 (<i>acari : ixodidae</i>), parasites des tenrecs (<i>Afrotheria : tenrecidae</i>) à Madagascar. Systematic Parasitology, 97 : 623-637.</p>', '2020-01-01', 'tique endémique connue des tenrecs musaraignes malgaches et nommée d\'après Voahangy Soarimalala', 'endemic tick known from malagasy shrew tenrecs and named after Voahangy Soarimalala', 'tique endémique connue des tenrecs musaraignes malgaches et nommée d\'après Voahangy Soarimalala', 'project/scientific-research/ixodes-soarimalalae-76', 3, 7),
(77, 'Ixodes uilenbergi', 'Ixodes uilenbergi', 'Ixodes uilenbergi', '<p>Description de trois nouvelles espèces d<i>\'Ixodes latreille</i>, 1795 (<i>Acari : ixodidae</i>), parasites des tenrecs (<i>Afrotheria : tenrecidae</i>) à madagascar. Systematic Parasitology, 97 : 623-637.</p>', '<p>Description of three new species of<i> Ixodes latreille</i>, 1795 (<i>Acari: ixodidae</i>), parasites of tenrecs (<i>Afrotheria: tenrecidae</i>) on Madagascar. Systematic Parasitology, 97: 623-637.</p>', '<p>Description de trois nouvelles espèces d<i>\'Ixodes latreille</i>, 1795 (<i>Acari : ixodidae</i>), parasites des tenrecs (<i>Afrotheria : tenrecidae</i>) à madagascar. Systematic Parasitology, 97 : 623-637.</p>', '2020-01-01', 'tique endémique connue chez différentes espèces de tenrecs malgaches', 'endemic tick known from different species of malagasy tenrecs', 'tique endémique connue chez différentes espèces de tenrecs malgaches', 'project/scientific-research/ixodes-uilenbergi-77', 3, 7),
(78, 'Ixodes uncus', 'Ixodes uncus', 'Ixodes uncus', '<p>Description of three new species of<i> Ixodes latreille</i>, 1795 (<i>Acari: ixodidae</i>), parasites of tenrecs (<i>Afrotheria: tenrecidae</i>) on Madagascar. Systematic Parasitology, 97: 623-637</p>', '<p>Description of three new species of<i> Ixodes latreille</i>, 1795 (<i>Acari: ixodidae</i>), parasites of tenrecs (<i>Afrotheria: tenrecidae</i>) on Madagascar. Systematic Parasitology, 97: 623-637</p>', '<p>Description de trois nouvelles espèces d\'<i>Ixodes latreille</i>, 1795 (<i>Acari : ixodidae</i>), parasites des tenrecs (<i>Afrotheria : tenrecidae</i>) à Madagascar. Parasitologie Systématique, 97 : 623-637</p>', '2020-01-01', 'endemic tick known from malagasy shrew tenrecs', 'endemic tick known from malagasy shrew tenrecs', 'tique endémique connue des tenrecs malgaches à musaraigne', 'project/scientific-research/ixodes-uncus-78', 3, 7),
(79, 'Mantidactylus ambony', 'Mantidactylus ambony', 'Mantidactylus ambony ', '<p>‘Barcode fishing’ for archival DNA from historical type material overcomes taxonomic hurdles, enabling the description of a new frog species. Scientific Reports, 10, 19109 (2020).</p>', '<p>‘Barcode fishing’ for archival DNA from historical type material overcomes taxonomic hurdles, enabling the description of a new frog species. Scientific Reports, 10, 19109 (2020).</p>', 'La \" pêche au code-barres \" pour l\'ADN d\'archives provenant de matériel de type historique surmonte les obstacles taxonomiques, permettant la description d\'une nouvelle espèce de grenouille. Rapports scientifiques, 10, 19109 (2020).', '2020-01-01', 'endemic to a massif in the extreme north of the island', 'endemic to a massif in the extreme north of the island', 'endémique d\'un massif à l\'extrême nord de l\'île', 'project/scientific-research/mantidactylus-ambony-79', 3, 7),
(80, 'Platypelis ranjomena', 'Platypelis ranjomena', 'Platypelis ranjomena', '<p>genetic variability and partial integrative revision of <i>Platypelis </i>frogs (<i>microhylidae</i>) with red flash marks from eastern madagascar. Vertebrate Zoology, 70(2): 141-156</p>', '<p>genetic variability and partial integrative revision of <i>Platypelis </i>frogs (<i>microhylidae</i>) with red flash marks from eastern madagascar. Vertebrate Zoology, 70(2): 141-156</p>', '<p>variabilité génétique et révision intégrative partielle des grenouilles <i>Platypelis </i>(<i>microhylidae</i>) avec des marques d\'éclair rouge de l\'est de madagascar. Zoologie des vertébrés, 70(2) : 141-156</p>', '2020-01-01', 'endemic the central east and northeastern madagascar', 'endemic the central east and northeastern madagascar', 'endémique du centre-est et du nord-est de madagascar', 'project/scientific-research/platypelis-ranjomena-80', 3, 7),
(81, 'Uroplatus fangorn', 'Uroplatus fangorn', 'Uroplatus fangorn', '<p>vers l\'achèvement de l\'inventaire des espèces de geckos à queue de feuille de petite taille : deux nouvelles espèces d\'<i>Uroplatus </i>du nord de madagascar. <i>Zootaxa</i>, 4892(2) : 251-275.</p>', '<p>towards completion of species inventory of smallsized leaf-tailed geckos: two new species of <i>Uroplatus </i>from northern madagascar. <i>Zootaxa</i>, 4892(2): 251-275.</p>', '<p>vers l\'achèvement de l\'inventaire des espèces de geckos à queue de feuille de petite taille : deux nouvelles espèces d\'<i>Uroplatus </i>du nord de madagascar. <i>Zootaxa</i>, 4892(2) : 251-275.</p>', '2020-01-01', 'gecko endémique à un massif au nord de l\'île', 'endemic gecko to a massif in the north of the island', 'gecko endémique à un massif au nord de l\'île', 'project/scientific-research/uroplatus-fangorn-81', 3, 7),
(82, 'Uroplatus fivehy', 'Uroplatus fivehy', 'Uroplatus fivehy', '<p>towards completion of species inventory of smallsized leaf-tailed geckos: two new species of <i>Uroplatus </i>from northern madagascar. <i>Zootaxa</i>, 4892(2): 251-275.</p>', '<p>towards completion of species inventory of smallsized leaf-tailed geckos: two new species of <i>Uroplatus </i>from northern madagascar. <i>Zootaxa</i>, 4892(2): 251-275.</p>', '<p>vers l\'achèvement de l\'inventaire des espèces de geckos à queue de feuille de petite taille : deux nouvelles espèces d\'<i>Uroplatus </i>du nord de madagascar. <i>Zootaxa</i>, 4892(2) : 251-275.</p>', '2020-01-01', 'endemic gecko to a massif in the north of the island', 'endemic gecko to a massif in the north of the island', 'gecko endémique à un massif au nord de l\'île', 'project/scientific-research/uroplatus-fivehy-82', 3, 7),
(83, 'Climate change', 'Climate change', 'Changement climatique', '<p>The intent of this project is to measure possible effects of global climatic change on certain endemic terrestrial vertebrates. This is being accomplished by revisiting three different mountains on the island intensively studied along an elevational gradient over 15 years ago and repeating the inventory methods down to very fine details, such as the same dates and placements of different types of traps.</p><p>While data on the presence and absence of a given taxonomic group will be used in comparing the previous and recent inventories, the unique aspect we have added to the project is employing molecular genetic data.</p><p>We will becomparing shifts in haplotypic frequencies through time and this measure may be directly correlated with global warming, pushing animals to higher altitudes to find preferable biotypes.</p>', '<p>The intent of this project is to measure possible effects of global climatic change on certain endemic terrestrial vertebrates. This is being accomplished by revisiting three different mountains on the island intensively studied along an elevational gradient over 15 years ago and repeating the inventory methods down to very fine details, such as the same dates and placements of different types of traps.</p><p>While data on the presence and absence of a given taxonomic group will be used in comparing the previous and recent inventories, the unique aspect we have added to the project is employing molecular genetic data.</p><p>We will becomparing shifts in haplotypic frequencies through time and this measure may be directly correlated with global warming, pushing animals to higher altitudes to find preferable biotypes.</p>', '<p>L’objectif de ce projet est de mesurer les effets possibles des changements climatiques sur certains vertébrés terrestres endémiques. L’approche étant de refaire l’inventaire biologique le long de transects altitudinaux dans trois massifs montagnards de l\'île intensément étudiés il y a 15 ans. Les méthodes d’inventaire utilisées, tels que les dates et les emplacements des différents types de pièges, seront respectées au détail près.</p><p>Les anciennes et les nouvelles données sur la présence et l\'absence d\'un groupe taxonomique donné seront comparées entre elles. L’unique aspect que nous avons ajouté à ce projet est l’utilisation de données génétiques moléculaires.</p><p>Ceci permettra de comparer l\'évolution des fréquences haplotypiques à travers le temps et les mesures des aspects qui pourrait être mis en corrélation avec le réchauffement de la planète, poussant les animaux à monter vers des altitudes plus élevées pour trouver les biotypes qui leur conviennent.</p>', '2015-01-01', NULL, NULL, NULL, 'project/grant/climate-change-83', 3, 6),
(84, 'Maladies transmissibles', 'Transmissible diseases', 'Maladies transmissibles', '<p>Dans ce projet, des suivis viro-sérologiques des populations des vecteurs et des vertébrés sauvages ainsi qu’une évaluation quantitative dans un contexte régional du risque d’introduction et de propagation de la maladie sont réalisés. C’est un projet financé par le CRVOI (Centre de Recherche et de Veille sur les maladies émergentes dans l\'Océan Indien) de La Réunion et associe l’équipe de l’Institut Pasteur de Madagascar (IPM) qui travaillent depuis plusieurs années sur les mécanismes de transmission des nombreuses maladies.</p><p>Les objectifs spécifiques de ce projet sont de : évaluer l’intensité de la circulation virale et les périodes de circulation dans une zone pilote de Madagascar, identifier les réservoirs sauvages potentiels du virus à Madagascar, établir un bilan épidémiologique à Madagascar, identifier le/les modes d’introduction et de transmission potentiels à Madagascar, et évaluer le risque d’endémisation de la maladie.</p>', '<p>In this project, followed viro-serological and vector populations of wild vertebrates and a quantitative assessment on a regional risk of introduction and spread of the disease are done. This is a project funded by the CRVOI (Centre for Research and Watch on emerging diseases in the Indian Ocean) Reunion and associated team from the Institut Pasteur de Madagascar (IPM).</p><p>The latter has been working for several years on transmission mechanisms of many diseases. The specific objectives of this project are to assess the intensity of viral circulation and circulation periods in a pilot area of Madagascar, identify potential wild reservoirs of the virus in Madagascar, establish an epidemiological assessment in Madagascar, identify the various potential modes of introduction and transmission in Madagascar, and assess the risk of endemicity of the disease.</p>', '<p>Dans ce projet, des suivis viro-sérologiques des populations des vecteurs et des vertébrés sauvages ainsi qu’une évaluation quantitative dans un contexte régional du risque d’introduction et de propagation de la maladie sont réalisés. C’est un projet financé par le CRVOI (Centre de Recherche et de Veille sur les maladies émergentes dans l\'Océan Indien) de La Réunion et associe l’équipe de l’Institut Pasteur de Madagascar (IPM) qui travaillent depuis plusieurs années sur les mécanismes de transmission des nombreuses maladies.</p><p>Les objectifs spécifiques de ce projet sont de : évaluer l’intensité de la circulation virale et les périodes de circulation dans une zone pilote de Madagascar, identifier les réservoirs sauvages potentiels du virus à Madagascar, établir un bilan épidémiologique à Madagascar, identifier le/les modes d’introduction et de transmission potentiels à Madagascar, et évaluer le risque d’endémisation de la maladie.</p>', '2015-01-01', NULL, NULL, NULL, 'project/grant/transmissible-diseases-84', 3, 6),
(85, 'Biologie de la conservation', 'Conservation biology', 'Biologie de la conservation', 'Vahatra s’intéresse également aux différents types de recherche impliquant : la taxinomie et la phylogénie des vertébrés , la biogéographie des vertébrés , l’écologie et la biologie, la conservation, et l’étude d’impact.', 'Vahatra is also interested in different types of research involving: vertebrates taxonomy and phylogeny, vertebrates biogeography, ecology and biology\r\n\r\n, conservation and impact assessment', 'Vahatra s’intéresse également aux différents types de recherche impliquant : la taxinomie et la phylogénie des vertébrés , la biogéographie des vertébrés , l’écologie et la biologie, la conservation, et l’étude d’impact.', '2015-01-01', NULL, NULL, NULL, 'project/grant/conservation-biology-85', 3, 6),
(86, 'StopRats', 'StopRats', 'StopRats', '<p>Stoprats est un projet multipartenaires, financé par le Secrétariat du Groupe des États d’Afrique et des Caraïbes dirigé par Natural Resources Institute, Université de Greenwich, Royaume-Uni et incluant différents pays comme la Namibie, Madagascar, Sierra Leone, l’Afrique du Sud, Swaziland et Tanzanie.</p><p>Les objectifs généraux du projet est de renforcer la capacité en science, en technologie et en innovation de la gestion des rongeurs ravageurs et de contribuer au développement durable de l\'Afrique et Madagascar afin que ces institutions pourrait avoir des connaissances sur les principaux indicateurs sur la pauvreté à travers les impacts de rongeurs sur les systèmes de production agricole et la sécurité alimentaire.</p><p>Des étudiants de l’Institut des Sciences et Techniques de l’Environnement, Université de Fianarantsoa, des étudiants du département de Biologie Animale de l’Université d’Antananarivo, une équipe de l’Education environnementale et des collègues de l’Institut Pasteur de Madagascar assurent le bon déroulement des activités sur ce projet. En 2014, quinze scientifiques des pays membres du projet Stoprats ont été à Madagascar pour le field school. Ensuite, des séries d’enquêtes ont été conduites dans les hautes terres Malgaches pour avoir des connaissances sur l’ampleur des dégâts des rats et les méthodes utilisées pour lutter contre ces problèmes.</p><p>Des réunions avec les parties prenantes des problèmes des rats, à savoir, le responsable sur l’agriculture, l’élevage et la santé ont été également conduite à Fianarantsoa.<br>Des recherches sur les régimes alimentaires et les habitats utilisés par les rats et des rongeurs endémiques en utilisant les isotopes stables ont été entreprises dans le cadre de ce projet.</p>', '<p>Stoprats is a multi-partner project financed by the Secretariat of the African and Caribbean Group, led by Natural Resources Institute, University of Greenwich, United Kingdom and including countries like Namibia, Madagascar, Sierra Leone, South Africa, Swaziland , Tanzania.</p><p>The general objectives of the project are to build capacity in science, in technology and innovation in the management of rodent pests and to contribute to the sustainable development of Africa and Madagascar, so that these institutions could have knowledge of the main indicators of poverty through rodent impacts on agricultural production and food security systems.</p><p>Students from the Institute of Technical Science and Environment, University of Fianarantsoa, from the Animal Biology Department, University of Antananarivo, a team of environmental educators, and colleagues from the Institut Pasteur de Madagascar, provide the smooth running of the activities of this project. In 2014, fifteen scientists from the countries members of Stoprats project were in Madagascar for the field school.</p><p>Then the series of investigations were conducted in the Malagasy highplands to have knowledge about the extent of damage caused by rats and the methods used to fight against these problems. Meetings with stakeholders on the problems of rats, namely, the responsible of the agriculture, breeding and health were also conducted in Fianarantsoa.<br>Researches on diets and habitats used by the rats and endemic rodents, by using stable isotopes have been undertaken as part of this project.</p>', '<p>Stoprats est un projet multipartenaires, financé par le Secrétariat du Groupe des États d’Afrique et des Caraïbes dirigé par Natural Resources Institute, Université de Greenwich, Royaume-Uni et incluant différents pays comme la Namibie, Madagascar, Sierra Leone, l’Afrique du Sud, Swaziland et Tanzanie.</p><p>Les objectifs généraux du projet est de renforcer la capacité en science, en technologie et en innovation de la gestion des rongeurs ravageurs et de contribuer au développement durable de l\'Afrique et Madagascar afin que ces institutions pourrait avoir des connaissances sur les principaux indicateurs sur la pauvreté à travers les impacts de rongeurs sur les systèmes de production agricole et la sécurité alimentaire.</p><p>Des étudiants de l’Institut des Sciences et Techniques de l’Environnement, Université de Fianarantsoa, des étudiants du département de Biologie Animale de l’Université d’Antananarivo, une équipe de l’Education environnementale et des collègues de l’Institut Pasteur de Madagascar assurent le bon déroulement des activités sur ce projet. En 2014, quinze scientifiques des pays membres du projet Stoprats ont été à Madagascar pour le field school. Ensuite, des séries d’enquêtes ont été conduites dans les hautes terres Malgaches pour avoir des connaissances sur l’ampleur des dégâts des rats et les méthodes utilisées pour lutter contre ces problèmes.</p><p>Des réunions avec les parties prenantes des problèmes des rats, à savoir, le responsable sur l’agriculture, l’élevage et la santé ont été également conduite à Fianarantsoa.<br>Des recherches sur les régimes alimentaires et les habitats utilisés par les rats et des rongeurs endémiques en utilisant les isotopes stables ont été entreprises dans le cadre de ce projet.</p>', '2014-01-01', NULL, NULL, NULL, 'project/grant/stoprats-86', 3, 6);
INSERT INTO `activity` (`id`, `title`, `title_en`, `title_fr`, `description`, `description_en`, `description_fr`, `date`, `note`, `note_en`, `note_fr`, `slug`, `idtypeactivity`, `idtypesubactivity`) VALUES
(87, 'E-book sur les aires protégées de madagascar et autres outils pour les utilisateurs', 'E-book on the protected areas of madagascar and other user tools', 'E-book sur les aires protégées de madagascar et autres outils pour les utilisateurs', '<p>Fin 2015, l\'Association Vahatra a reçu une subvention de trois ans de la part du CEPF pour réaliser une revue à grande échelle du système des aires protégées de Madagascar. L\'ouvrage bilingue français-anglais en trois volumes intitulé <i>\"Les aires protégées terrestres de Madagascar : leur histoire, description et biote\"</i> / \"<i>Terrestrial protected areas of Madagascar : Leur histoire, description et biote</i>\" a été publié par l\'Association Vahatra fin 2018.</p><p>Sur la base d\'une subvention supplémentaire du CEPF à Strand Life Science (Bangalore, Inde), avec l\'association Vahatra en tant que partenaire, un livre électronique d\'une version revue et corrigée du livre sur les aires protégées a été produit et est distribué par The University de Chicago (<a href=\"https://w.bibliovault.org/BV.titles.epl?pc=596&amp;sort=title\">https://w.bibliovault.org/BV.titles.epl?pc=596&amp;sort=title</a>). Les volumes imprimés du livre sur les aires protégées sont pour le moins encombrants, pesant près de 7 kg, et la version e-book facilite grandement leur utilisation. De plus, afin de simplifier l\'utilisation et d\'être plus convivial, des e-books distincts ont été préparés pour les versions française et anglaise.</p><p>D\'autres aspects de ce projet comprennent la création d\'un site web en malgache, français et anglais, contenant de nombreux détails sur les 98 aires protégées terrestres de Madagascar couvertes par le livre, y compris des listes d\'espèces de vertébrés connus de chaque site, ainsi que les moyens pour les scientifiques et naturalistes citoyens de mettre à jour les listes d\'espèces téléchargeables en fonction de nouvelles observations et de données publiées. Basé sur la présentation d\'un séminaire d\'une journée à Antananarivo par Thomas Vattakaven et Prabhakar Rajagopal de Strand Life Science et différents membres de l\'Association Vitalia. Life Science et différents membres de l\'Association Vahatra aux utilisateurs potentiels du site, d\'importantes contributions ont été reçues sur les aspects facilitant l\'organisation du site. Le séminaire a eu lieu juste avant le début de l\'épidémie de COVID-19 et tout le travail ultérieur sur le projet s\'est fait par courrier électronique et par vidéoconférence.</p><p>Un autre aspect important de ce projet a été le téléchargement sur cloud et la fourniture d\'un accès gratuit à environ 9000 fichiers pdf utilisés pour la rédaction du livre, qui comprennent une gamme de différents types de publications, des rapports inédits, des mémoires de DEA et de maîtrise, des thèses de doctorat, etc. Le site portail des Aires Protégées de Madagascar est accessible à l\'adresse <a href=\"https://protectedareas.mg/\">https://protectedareas.mg/</a>. Ce portail est un outil important pour chercheurs, étudiants et défenseurs de l\'environnement à Madagascar et à l\'étranger, nous espérons faire évoluer le projet vers des étapes plus avancées.</p><p>Au début du mois de décembre 2021, nos collègues de Strand Life Sciences à Bangalore ont présenté officiellement le portail à Madagascar par vidéoconférence, qui a été suivie d\'une réception. L\'événement a été couvert par la presse et de la télévision. Le rapport final accepté par le CEPF a été soumis fin 2021 et la première phase du projet est maintenant terminée.</p>', '<p>In late 2015, Association Vahatra received a three-year grant from CEPF to conduct a large-scale review of the protected areas system of Madagascar. The bilingual French-English three volume book entitled \"<i>Les aires protégées terrestres de Madagascar : leur histoire, description et biote</i>\" / \"<i>Terrestrial protected areas of Madagascar: Their history, description and biota</i>\" was published by Association Vahatra in late 2018.</p><p> Based on an additional grant from CEPF to Strand Life Science (Bangalore, India), with Association Vahatra as a partner, an e-book of a revised and corrected version of the protected area book has been produced, and is distributed by The University of Chicago Press (<a href=\"https://w.bibliovault.org/BV.titles.epl?pc=596&amp;sort=title\">https://w.bibliovault.org/BV.titles.epl?pc=596&amp;sort=title</a>). The printed volumes of the protected area book are cumbersome to say the least, weighing close to 7 kg, and the e-book version greatly facilitates their utilization. Further, to simplify usage and be more user-friendly, separate e-books have been prepared for the French and English language versions.</p><p>Other aspects of this project included the creation of a website in Malagasy, French, and English containing lots of details on the 98 terrestrial protected areas of Madagascar covered in the book, including up-to-date species lists of vertebrates known from each site, as well as the means for citizen scientists and naturalists to update the downloadable species lists based on new observations and published data. Based on a day-seminar presentation in Antananarivo by Thomas Vattakaven and Prabhakar Rajagopal of Strand Life Science and different members of Association Vahatra to potential users of the site, important input was received on aspects that facilitated the website organization.</p><p>The timing of the seminar was just before the start of the COVID-19 epidemic and all subsequent work on the project has been via email and video conferences. Another important aspect of this project was uploading on to a cloud and providing free access to about 9000 pdf files used in writing the book, which include a range of different types of publications, unpublished reports, previously unavailable DEA and Master’s memoires, Ph.D. theses, and other types of diploma documents from the Malagasy university system. The Madagascar Protected Areas portal site can be accessed at <a href=\"https://protectedareas.mg/\">https://protectedareas.mg/</a>. The portal is an important tool for researchers, students, and conservationists on Madagascar and overseas and we hope to amend the project to more advanced stages.</p><p>In early December 2021, our colleagues at Strand Life Sciences in Bangalore via a video conference formally presented the portal in Madagascar to an assortment of interested individuals physically present at Vahatra or connected via a video conference, which was followed by a reception. The event received press and television coverage. The final accepted report to CEPF was submitted in late 2021 and the first phase of the project has now been completed.</p>', '<p>Fin 2015, l\'Association Vahatra a reçu une subvention de trois ans de la part du CEPF pour réaliser une revue à grande échelle du système des aires protégées de Madagascar. L\'ouvrage bilingue français-anglais en trois volumes intitulé <i>\"Les aires protégées terrestres de Madagascar : leur histoire, description et biote\"</i> / \"<i>Terrestrial protected areas of Madagascar : Leur histoire, description et biote</i>\" a été publié par l\'Association Vahatra fin 2018.</p><p>Sur la base d\'une subvention supplémentaire du CEPF à Strand Life Science (Bangalore, Inde), avec l\'association Vahatra en tant que partenaire, un livre électronique d\'une version revue et corrigée du livre sur les aires protégées a été produit et est distribué par The University de Chicago (<a href=\"https://w.bibliovault.org/BV.titles.epl?pc=596&amp;sort=title\">https://w.bibliovault.org/BV.titles.epl?pc=596&amp;sort=title</a>). Les volumes imprimés du livre sur les aires protégées sont pour le moins encombrants, pesant près de 7 kg, et la version e-book facilite grandement leur utilisation. De plus, afin de simplifier l\'utilisation et d\'être plus convivial, des e-books distincts ont été préparés pour les versions française et anglaise.</p><p>D\'autres aspects de ce projet comprennent la création d\'un site web en malgache, français et anglais, contenant de nombreux détails sur les 98 aires protégées terrestres de Madagascar couvertes par le livre, y compris des listes d\'espèces de vertébrés connus de chaque site, ainsi que les moyens pour les scientifiques et naturalistes citoyens de mettre à jour les listes d\'espèces téléchargeables en fonction de nouvelles observations et de données publiées. Basé sur la présentation d\'un séminaire d\'une journée à Antananarivo par Thomas Vattakaven et Prabhakar Rajagopal de Strand Life Science et différents membres de l\'Association Vitalia. Life Science et différents membres de l\'Association Vahatra aux utilisateurs potentiels du site, d\'importantes contributions ont été reçues sur les aspects facilitant l\'organisation du site. Le séminaire a eu lieu juste avant le début de l\'épidémie de COVID-19 et tout le travail ultérieur sur le projet s\'est fait par courrier électronique et par vidéoconférence.</p><p>Un autre aspect important de ce projet a été le téléchargement sur cloud et la fourniture d\'un accès gratuit à environ 9000 fichiers pdf utilisés pour la rédaction du livre, qui comprennent une gamme de différents types de publications, des rapports inédits, des mémoires de DEA et de maîtrise, des thèses de doctorat, etc. Le site portail des Aires Protégées de Madagascar est accessible à l\'adresse <a href=\"https://protectedareas.mg/\">https://protectedareas.mg/</a>. Ce portail est un outil important pour chercheurs, étudiants et défenseurs de l\'environnement à Madagascar et à l\'étranger, nous espérons faire évoluer le projet vers des étapes plus avancées.</p><p>Au début du mois de décembre 2021, nos collègues de Strand Life Sciences à Bangalore ont présenté officiellement le portail à Madagascar par vidéoconférence, qui a été suivie d\'une réception. L\'événement a été couvert par la presse et de la télévision. Le rapport final accepté par le CEPF a été soumis fin 2021 et la première phase du projet est maintenant terminée.</p>', '2015-01-01', NULL, NULL, NULL, 'project/grant/e-book-on-the-protected-areas-of-madagascar-and-other-user-tools-87', 3, 6),
(88, 'Éradication de la corneille domestique indienne et surveillance des espèces envahissantes', 'Indian house Crow eradication and invasive species surveillance', 'Éradication de la corneille domestique indienne et surveillance des espèces envahissantes', '<p>Dans le cadre de ce projet, Madagascar Fauna and Flora Group (MFG) en collaboration avec l\'Association Vahatra et d\'autres partenaires a reçu une subvention pour éradiquer la Corneille d\'Inde (Corvus splendens), récemment introduite et très envahissant dans la région de Toamasina, sur la côte centrale et orientale de Madagascar, ainsi que dans d\'autres zones où l\'espèce est apparue sur l\'île.</p><p>La subvention comprenait également l\'avancement de différents types de recherche associés aux problèmes imposés aux écosystèmes de Madagascar et à la population malgache par les espèces animales invasives. La MFG était chargée d\'orchestrer l\'éradication de la corneille domestique indienne et les interventions de Vahatra se sont concentrées sur les aspects scientifiques associés à la biologie, la distribution et les zoonoses de la corneille et du moineau domestique (Passer domesticus) dans et autour de Toamasina.</p><p>Plus spécifiquement, la recherche scientifique sur les espèces invasives comprenaient des projets menés par trois étudiants en Master de l\'Université d\'Antananarivo et travaillant avec des scientifiques de Vahatra, qui ont tous été présentés en 2021. Ces études portaient notamment sur la présence et l\'absence de corbeaux domestiques dans tous les principaux ports de l\'île et l\'estimation de la population (par Estelle Raobson Hanitrandrasana) ; la biologie de la reproduction et le régime alimentaire des moineaux domestiques dans la ville de Toamasina (par Saholy Raolihanitrasina) ; et le régime alimentaire d\'une espèce de chauve-souris quasi-invasive vivant dans des structures construites par l\'homme (par Lomeris Todilahy).</p><p>A la fin de l\'année 2021, MFG et les collaborateurs du projet ont éliminé tous les corbeaux domestiques connus à Madagascar, ce qui est une accomplissement majeur.</p>', '<p>In the context of this project, Madagascar Fauna and Flora Group (MFG) in collaboration with Association Vahatra and other partners received a grant to eradicate the recently introduced and highly invasive Indian House Crow (Corvus splendens) in the Toamasina area, central eastern coast of Madagascar, as well as other areas the species has turned up on the island. </p><p>The grant also included advancing different types of research associated with problems imposed on Madagascar’s ecosystems and the Malagasy people by invasive animal species. MFG was responsible for orchestrating the eradication of the Indian House Crow and Vahatra’s interventions focused on scientific aspects associated with the biology, distribution, and zoonotic diseases of the crow and House Sparrows (Passer domesticus) in and around Toamasina.</p><p>More specifically, scientific research on invasive species included projects conducted by three Master’s students from The University of Antananarivo and working with Vahatra scientists, all of which were presented in 2021. These studies included the presence and absence of Indian House Crows in all major ports on the island and population estimates (by Estelle Raobson Hanitrandrasana); the breeding biology and dietary regime of House Sparrows in the city of Toamasina (by Saholy Raolihanitrasina); and the diet of a quasi-invasive bat species living in human-built structures (by Lomeris Todilahy).</p><p>As of late 2021, MFG and the project collaborators have removed all of the known House Crows on Madagascar, which is a major accomplishment.</p>', '<p>Dans le cadre de ce projet, Madagascar Fauna and Flora Group (MFG) en collaboration avec l\'Association Vahatra et d\'autres partenaires a reçu une subvention pour éradiquer la Corneille d\'Inde (Corvus splendens), récemment introduite et très envahissant dans la région de Toamasina, sur la côte centrale et orientale de Madagascar, ainsi que dans d\'autres zones où l\'espèce est apparue sur l\'île.</p><p>La subvention comprenait également l\'avancement de différents types de recherche associés aux problèmes imposés aux écosystèmes de Madagascar et à la population malgache par les espèces animales invasives. La MFG était chargée d\'orchestrer l\'éradication de la corneille domestique indienne et les interventions de Vahatra se sont concentrées sur les aspects scientifiques associés à la biologie, la distribution et les zoonoses de la corneille et du moineau domestique (Passer domesticus) dans et autour de Toamasina.</p><p>Plus spécifiquement, la recherche scientifique sur les espèces invasives comprenaient des projets menés par trois étudiants en Master de l\'Université d\'Antananarivo et travaillant avec des scientifiques de Vahatra, qui ont tous été présentés en 2021. Ces études portaient notamment sur la présence et l\'absence de corbeaux domestiques dans tous les principaux ports de l\'île et l\'estimation de la population (par Estelle Raobson Hanitrandrasana) ; la biologie de la reproduction et le régime alimentaire des moineaux domestiques dans la ville de Toamasina (par Saholy Raolihanitrasina) ; et le régime alimentaire d\'une espèce de chauve-souris quasi-invasive vivant dans des structures construites par l\'homme (par Lomeris Todilahy).</p><p>A la fin de l\'année 2021, MFG et les collaborateurs du projet ont éliminé tous les corbeaux domestiques connus à Madagascar, ce qui est une accomplissement majeur.</p>', '2015-01-01', NULL, NULL, NULL, 'project/grant/indian-house-crow-eradication-and-invasive-species-surveillance-88', 3, 6),
(89, 'Land use in the Sava region and global health challenges', 'Land use in the Sava region and global health challenges', 'L\'utilisation des sols dans la région de Sava et les défis de la santé mondiale', '<p>This project is based on a grant awarded to Duke University, with Dr. Charles Nunn as the Principal Investigator, in 2019 through the Ecology and Evolution of Infectious Diseases (EEID) program, a joint initiative between the National Institute of Health and the National Science Foundation (NSF). </p><p>This large-scale project aims to understand the linkages between diseases circulating in the foothills of the Marojejy Massif across a habitat mosaic of native forest, agricultural areas, and near villages for which endemic and introduced animals may act as reservoirs and the source of transmission. <br>Association Vahatra is one of the collaborating organizations focused on field capture of bats, endemic and introduced small mammals, and collecting the needed samples for the zoonotic disease analyses.</p><p>Toky Randriamoria, a post-doc in the context of the project, is responsible for the field sampling and seconded by Voahangy and Steve. A new assistant, Rianja Nantenaina Randriamifidisoa, has been engaged to reinforce the field team. Fifaliantsoa Rasolobera, the previous field assistant, is now incorporated in the project as a PhD student and working on small mammal ecology and distribution. </p><p>Three different field camps at the foothills of the massif, each visited during three different seasons for sampling in a range of habitats, have solar panels to provide the needed energy to run a refrigerator to keep samples at the required low temperatures. In association with a considerable range of collaborators studying multiple facets of local circulating zoonotic diseases and parasites, this research project aims to study novel methods to predict disease spread, particularly different infectious diseases being important human health concerns on Madagascar.</p><p>Three Vahatra students from The University of Antananarivo and one from The University of Antsiranana are taking part in this project: Tamby Ranaivoson (PhD student) and Fifaliantsoa Rasolobera (PhD student, mentioned above) working on small mammal ecology and reproduction; Daniel Falimiarintsoa (Masters student) working on bat ecology and habitat associations on the southwestern slopes of the Marojejy Massif; and Johanna Rafanomezanjanahary working on bat ecology and habitat associations on the southwestern slopes of the Marojejy Massif.</p><p>Daniel will present in March 2022 and Johanna presented in March 2021. Fieldwork for this project continues until mid-2023.</p>', '<p>This project is based on a grant awarded to Duke University, with Dr. Charles Nunn as the Principal Investigator, in 2019 through the Ecology and Evolution of Infectious Diseases (EEID) program, a joint initiative between the National Institute of Health and the National Science Foundation (NSF). </p><p>This large-scale project aims to understand the linkages between diseases circulating in the foothills of the Marojejy Massif across a habitat mosaic of native forest, agricultural areas, and near villages for which endemic and introduced animals may act as reservoirs and the source of transmission. <br>Association Vahatra is one of the collaborating organizations focused on field capture of bats, endemic and introduced small mammals, and collecting the needed samples for the zoonotic disease analyses.</p><p>Toky Randriamoria, a post-doc in the context of the project, is responsible for the field sampling and seconded by Voahangy and Steve. A new assistant, Rianja Nantenaina Randriamifidisoa, has been engaged to reinforce the field team. Fifaliantsoa Rasolobera, the previous field assistant, is now incorporated in the project as a PhD student and working on small mammal ecology and distribution. </p><p>Three different field camps at the foothills of the massif, each visited during three different seasons for sampling in a range of habitats, have solar panels to provide the needed energy to run a refrigerator to keep samples at the required low temperatures. In association with a considerable range of collaborators studying multiple facets of local circulating zoonotic diseases and parasites, this research project aims to study novel methods to predict disease spread, particularly different infectious diseases being important human health concerns on Madagascar.</p><p>Three Vahatra students from The University of Antananarivo and one from The University of Antsiranana are taking part in this project: Tamby Ranaivoson (PhD student) and Fifaliantsoa Rasolobera (PhD student, mentioned above) working on small mammal ecology and reproduction; Daniel Falimiarintsoa (Masters student) working on bat ecology and habitat associations on the southwestern slopes of the Marojejy Massif; and Johanna Rafanomezanjanahary working on bat ecology and habitat associations on the southwestern slopes of the Marojejy Massif.</p><p>Daniel will present in March 2022 and Johanna presented in March 2021. Fieldwork for this project continues until mid-2023.</p>', '<p>Ce projet est basé sur une subvention accordée à l\'Université Duke, avec le Dr. Charles Nunn en tant que chercheur principal, en 2019 par le biais du programme Ecology and Evolution of Infectious Diseases (EEID), une initiative conjointe entre l\'Institut national de la santé et la Fondation nationale des sciences (NSF). </p><p>Ce projet à grande échelle a pour objectif de comprendre les liens entre les maladies circulant dans les contreforts du Massif de Marojejy à travers une mosaïque d\'habitat de forêts indigènes, de zones agricoles et de villages proches pour lesquels des animaux endémiques et introduits peuvent servir de réservoirs et de sources de transmission. <br>L\'Association Vahatra est l\'une des organisations collaboratrices qui s\'occupe de la capture sur le terrain de chauves-souris, de petits mammifères endémiques et introduits, et la collecte des échantillons nécessaires aux analyses des zoonoses. </p><p>Toky Randriamoria, un post-doc dans le cadre du projet, est responsable de l\'échantillonnage sur le terrain et est secondé par Voahangy et Steve. Une nouvelle assistante, Rianja Nantenaina Randriamifidisoa, a été engagée pour renforcer l\'équipe de terrain. Fifaliantsoa Rasolobera, l\'ancienne assistante de terrain, est maintenant intégrée au projet en tant que doctorante et travaille sur l\'écologie et la distribution des petits mammifères. </p><p>Trois camps de terrain différents au pied du massif, chacun visité pendant trois saisons différentes pour l\'échantillonnage de divers habitats, sont équipés de panneaux solaires pour fournir l\'énergie nécessaire au fonctionnement d\'un réfrigérateur pour conserver les échantillons aux basses températures requises. </p><p>En association avec un nombre considérable de collaborateurs qui étudient les multiples facettes des zoonoses et des parasites circulant localement, ce projet de recherche vise à étudier de nouvelles méthodes de prédiction de la la propagation des maladies, en particulier les différentes maladies infectieuses qui sont importantes pour la santé humaine à Madagascar. </p><p>Trois étudiants de Vahatra de l\'Université d\'Antananarivo et un de l\'Université d\'Antsiranana participent à ce projet : Tamby Ranaivoson (doctorant) et Fifaliantsoa Rasolobera (doctorant) travaillant sur l\'écologie et la reproduction des petits mammifères ; Daniel Falimiarintsoa (étudiant en master) travaillant sur l\'écologie des chauves-souris et les l\'écologie et les associations d\'habitats des chauves-souris sur les pentes sud-ouest du massif de Marojejy ; et Johanna Rafanomezanjanahary travaillant sur l\'écologie des chauves-souris et les associations d\'habitats.</p><p> Daniel a présenté en mars 2022 et Johanna a présenté en mars 2021. Le travail de terrain pour ce projet se poursuit jusqu\'à la mi-2023.</p>', '2019-01-01', NULL, NULL, NULL, 'project/grant/land-use-in-the-sava-region-and-global-health-challenges-89', 3, 6),
(90, 'World Heritage Restoration: Atsinanana Rainforests', 'World Heritage Restoration: Atsinanana Rainforests', 'Restauration Patrimoine mondial: Forêts humides de l’Atsinanana', '<p>The moist evergreen moist evergreen forests of the eastern region of Madagascar are home to an exceptional diversity of plants and animals and these ecosystems play a fundamental role in maintaining biodiversity and ecological processes.</p><p>Their integration some years back within UNESCO’s network of World Heritage Sites, the series of protected areas known as “The Rainforest of the Atsinanana”, was a crucial step in supporting efforts to preserve their Outstanding Universal Values. Unfortunately, these ecosystems for different economic and cultural reasons are often subject to anthropogenic pressures. The 2009 political crisis on Madagascar, a period of near total anarchy in certain areas of the island, allowed people to rush massively into protected areas for illegal exploitation of rosewoods, gold panning, charcoal production, and to acquire new agricultural lands via deforestation.The integrity of the biological diversity of The Rainforest of the Atsinanana and their Outstanding Universal Values have been seriously threatened. The magnitude of the situation was such that UNESCO’s World Heritage Committee decided in 2010 to classify The Rainforest of the Atsinanana in the World Heritage list of sites “In Danger”. <br>The purpose of this current project financed at the level of several million US dollars by the Korea International Cooperation Agency (KOICA) is to rectify the situation through several different approaches:</p><ul><li>economic development,</li><li>public education,</li><li>studies of the regional biota.</li></ul><p>The role of Association Vahatra in the project is to examine patterns of biotic diversity at the focal sites through biological inventories, with a focus on change through time. Vahatra scientists and students surveyed several of these sites some 20-25 years ago and comparisons of possible change at the scale of several decades can be made, and if such changes have taken place, to determine the probable causal reasons. Finally, with biodiversity data across nearly 20+ years, it will be possible to strengthen protection of the sites and better understanding different pressures. Another aspect is to install a system of ecological monitoring sites and automated meteorological stations to provide measures of climate change in the future.</p><p>In early 2021, in the context of this BIOCOM project, a Vahatra field team, together with nine students from The University of Antsiranana and another individual working for the protected area manager took part in a field school and conducted an eco-biological evaluation of the dry forests of Montagne de Français in the far north. The results of this field project have been accepted for publication in Malagasy Nature and will appear in 2023. Further, over the course of nearly eight weeks in October and November 2021, a large field team conducted an elevational transect of Marojejy, one of The Rainforest of the Atsinanana sites.</p><p>The survey repeated in fine detail the transect of 1996 and across different groups of organisms. <br>This was a large-scale logistic exercise, with five camps between the lowland forest and summital zone of the massif, and with displacements of over 40 porters at a time to carry gear, supplies, and food. The material included solar panels, a large battery, and a small refrigerator to maintain collected samples from forest-dwelling mammals on the massif and tie-in to the Duke University (NIH and NSF) zoonotic disease research project mentioned above.</p><p>Vahatra and colleagues are in the process of analyzing data to understand patterns of possible change through time and the scientific results will be available in the near future.</p><p>In october 2022 the Vahatra team has redone another elevational transect in the Andohahela protected area in the same fashion as Marojejy and part of the The Rainforest of the Atsinanana.</p>', '<p>The moist evergreen moist evergreen forests of the eastern region of Madagascar are home to an exceptional diversity of plants and animals and these ecosystems play a fundamental role in maintaining biodiversity and ecological processes.</p><p>Their integration some years back within UNESCO’s network of World Heritage Sites, the series of protected areas known as “The Rainforest of the Atsinanana”, was a crucial step in supporting efforts to preserve their Outstanding Universal Values. Unfortunately, these ecosystems for different economic and cultural reasons are often subject to anthropogenic pressures. The 2009 political crisis on Madagascar, a period of near total anarchy in certain areas of the island, allowed people to rush massively into protected areas for illegal exploitation of rosewoods, gold panning, charcoal production, and to acquire new agricultural lands via deforestation.The integrity of the biological diversity of The Rainforest of the Atsinanana and their Outstanding Universal Values have been seriously threatened. The magnitude of the situation was such that UNESCO’s World Heritage Committee decided in 2010 to classify The Rainforest of the Atsinanana in the World Heritage list of sites “In Danger”. <br>The purpose of this current project financed at the level of several million US dollars by the Korea International Cooperation Agency (KOICA) is to rectify the situation through several different approaches:</p><ul><li>economic development,</li><li>public education,</li><li>studies of the regional biota.</li></ul><p>The role of Association Vahatra in the project is to examine patterns of biotic diversity at the focal sites through biological inventories, with a focus on change through time. Vahatra scientists and students surveyed several of these sites some 20-25 years ago and comparisons of possible change at the scale of several decades can be made, and if such changes have taken place, to determine the probable causal reasons. Finally, with biodiversity data across nearly 20+ years, it will be possible to strengthen protection of the sites and better understanding different pressures. Another aspect is to install a system of ecological monitoring sites and automated meteorological stations to provide measures of climate change in the future.</p><p>In early 2021, in the context of this BIOCOM project, a Vahatra field team, together with nine students from The University of Antsiranana and another individual working for the protected area manager took part in a field school and conducted an eco-biological evaluation of the dry forests of Montagne de Français in the far north. The results of this field project have been accepted for publication in Malagasy Nature and will appear in 2023. Further, over the course of nearly eight weeks in October and November 2021, a large field team conducted an elevational transect of Marojejy, one of The Rainforest of the Atsinanana sites.</p><p>The survey repeated in fine detail the transect of 1996 and across different groups of organisms. <br>This was a large-scale logistic exercise, with five camps between the lowland forest and summital zone of the massif, and with displacements of over 40 porters at a time to carry gear, supplies, and food. The material included solar panels, a large battery, and a small refrigerator to maintain collected samples from forest-dwelling mammals on the massif and tie-in to the Duke University (NIH and NSF) zoonotic disease research project mentioned above.</p><p>Vahatra and colleagues are in the process of analyzing data to understand patterns of possible change through time and the scientific results will be available in the near future.</p><p>In october 2022 the Vahatra team has redone another elevational transect in the Andohahela protected area in the same fashion as Marojejy and part of the The Rainforest of the Atsinanana.</p>', 'Les forêts humides sempervirentes de la région orientale de Madagascar abritent une diversité exceptionnelle de plantes et d\'animaux.\r\n\r\nMadagascar abritent une diversité exceptionnelle de plantes et d\'animaux.\r\n\r\nces écosystèmes jouent un rôle fondamental dans le maintien de la biodiversité et des\r\n\r\nprocessus écologiques. Leur intégration, il y a quelques années, dans le\r\n\r\nde l\'UNESCO, la série d\'aires protégées connue sous le nom de \"Forêt tropicale de l\'Est de Madagascar\"  a été une étape cruciale pour soutenir les efforts visant à préserver leurs valeurs universelles exceptionnelles.\r\n\r\n\r\n\r\nMalheureusement, ces écosystèmes, pour différentes raisons économiques et culturelles, sont souvent soumis à des\r\n\r\npressions anthropiques. La crise politique de 2009 à Madagascar, une période\r\n\r\npériode d\'anarchie quasi-totale dans certaines régions de l\'île, a permis à la population de se précipiter massivement dans les aires protégées pour les exploiter illégalement.\r\n\r\ndans les zones protégées pour l\'exploitation illégale de bois de rose, l\'orpaillage, la production de charbon de bois, etc.  et d\'acquérir de nouvelles terres agricoles via la déforestation.\r\n\r\n\r\n\r\nL\'intégrité de la diversité biologique de la forêt tropicale des\r\n\r\nl\'Atsinanana et leurs valeurs universelles exceptionnelles ont été sérieusement\r\n\r\nmenacées. L\'ampleur de la situation était telle que le Comité du patrimoine mondial de l\'UNESCO a décidé en 2010 de classer la Forêt tropicale de\r\n\r\nl\'Atsinanana dans la liste du patrimoine mondial des sites \"en danger\". \r\n\r\nL\'objectif de ce projet actuel financé à hauteur de plusieurs millions de dollars américains\r\n\r\npar l\'Agence coréenne de coopération internationale (KOICA) est de remédier à la\r\n\r\nsituation à travers plusieurs approches différentes : développement économique\r\n\r\nl\'éducation du public et l\'étude du biote régional.\r\n\r\n\r\n\r\nLe rôle de l\'Association Vahatra dans le projet est d\'examiner les modèles de \r\n\r\ndiversité biotique sur les sites focaux par le biais d\'inventaires biologiques, en se concentrant\r\n\r\nl\'évolution dans le temps. Les scientifiques et les étudiants de Vahatra ont étudié \r\n\r\nplusieurs de ces sites il y a environ 20-25 ans et des comparaisons des changements possibles à l\'échelle de plusieurs décennies peuvent être faites.\r\n\r\nl\'échelle de plusieurs décennies et, \r\n\r\nsi de tels changements ont eu lieu, d\'en déterminer les causes probables.\r\n\r\nEnfin, avec des données sur la biodiversité\r\n\r\ndonnées sur la biodiversité sur près de 20+ ans, il sera possible de renforcer la protection des sites et de mieux comprendre les différentes pressions.\r\n\r\n\r\n\r\nUn autre aspect est \r\n\r\nl\'installation d\'un système de sites de surveillance écologique et de stations \r\n\r\nmétéorologiques automatisées pour fournir des mesures du changement climatique à l\'avenir.\r\n\r\nAu début de l\'année 2021, dans le cadre de ce projet BIOCOM, une équipe de terrain Vahatra\r\n\r\n, ainsi que neuf étudiants de l\'Université d\'Antsiranana et une autre personne travaillant pour le gestionnaire de l\'aire protégée, ont participé à une campagne de terrain et ont effectué une évaluation éco-biologique des forêts sèches de la Montagne de Français dans l\'extrême nord.\r\n\r\n\r\n\r\nLes résultats de ce projet de terrain\r\n\r\nont été acceptés pour publication\r\n\r\ndans Malagasy Nature et paraîtront\r\n\r\nen 2023. En outre, pendant\r\n\r\nprès de huit semaines en octobre et novembre\r\n\r\nnovembre 2021, une grande équipe de terrain\r\n\r\na réalisé un transect en altitude\r\n\r\nde Marojejy, l\'un des sites de la forêt pluviale\r\n\r\ndes sites d\'Atsinanana. \r\n\r\n\r\n\r\nL\'enquête\r\n\r\na répété dans les moindres détails le transect de\r\n\r\n1996 et à travers différents groupes de\r\n\r\norganismes. Il s\'agissait d\'un exercice logistique à grande échelle.\r\n\r\nlogistique à grande échelle, avec cinq camps entre la forêt de plaine et la zone sommitale du massif, et avec des déplacements de plus de 40 porteurs à la fois pour transporter le matériel et la nourriture.\r\n\r\n\r\n\r\nLe matériel comprenait des panneaux solaires, une grande batterie, et un petit réfrigérateur\r\n\r\npour conserver les échantillons collectés sur les mammifères vivant en forêt sur le massif et\r\n\r\nmammifères vivant dans les forêts du massif et de faire le lien avec le projet de recherche sur les zoonoses \r\n\r\nde l\'Université Duke (NIH et NSF) mentionné ci-dessus. \r\n\r\nVahatra et ses collègues sont en train d\'analyser les données pour comprendre les modèles de changement possible à travers le temps et les résultats scientifiques seront disponibles dans un avenir proche.\r\n\r\n\r\n\r\nÀ la fin de l\'année 2022\r\n\r\nl\'équipe de Vahatra refera un autre transect altimétrique dans la zone protégée d\'Andohahela, de la même manière que Marojejy et dans le cadre de la forêt tropicale de l\'Atsinanana.\r\n\r\nde l\'Atsinanana.', '2021-01-01', NULL, NULL, NULL, 'project/grant/world-heritage-restoration-atsinanana-rainforests-90', 3, 6),
(91, 'Diversité et dynamique de transmission des agents infectieux chez les chauves-souris malgaches', 'Diversity and transmission dynamics of infectious agents in malagasy bats', 'Diversité et dynamique de transmission des agents infectieux chez les chauves-souris malgaches', '<p>Les objectifs scientifiques de ce projet sont de caractériser la diversité des agents infectieux circulant dans les populations de chauves-souris du nord de Madagascar et d\'étudier la dynamique temporelle de la transmission, notamment au sein des colonies de reproduction et les colonies de jour.&nbsp;</p><p>Le financement est basé sur une subvention du Fonds Européen de Développement Régional (FEDER). L\'étude en collaboration avec le Dr Camille Lebarbenchon du Processus Infectieux en Milieu Insulaire Tropical (PIMIT) et associé à l\'Université de La Réunion, , et avec un post-doc malgache, Riana Ramanantsalama, qui a fait son doctorat avec Vahatra., emploie des échantillons de chauves-souris capturées/marquées/relâchées pour des analyses en laboratoire. Pour chaque chauve-souris, les échantillons comprennent des prélèvements oraux et rectaux, ainsi que des ectoparasites.&nbsp;</p><p>Dans le plan initial du travail de terrain, il était proposé que chaque colonie d\'étude, y compris les grottes de l\'Ankarana et les sites de perchage synanthropiques dans les bâtiments dans la ville voisine d\'Ambilobe, soient visitées tous les 3-4 mois pour étudier les changements saisonniers dans la dynamique temporelle de l\'infection au niveau de la population. Les individus de la chauve-souris frugivore<i> Rousettus madagascariensis </i>(famille des <i>Pteropodidae</i>)vivant dans les grottes d\'Ankarana sont marqués avec des anneaux numérotés de façon unique afin d\'étudier la dynamique de l\'infection au niveau des individus.&nbsp;</p><p>Avec le confinement de 2020, seules deux visites ont été effectuées sur les sites d\'étude cette année-là et nous n\'avons pu reprendre le travail de terrain que fin 2021. En raison de tous les retards liés à COVID-19, une extension du projet a été demandée à l\'organisme subventionnaire.</p>', '<p>The scientific objectives of this project are to characterize the diversity of infectious agents circulating in bat populations of northern Madagascar and to study the temporal dynamics of transmission, particularly within breeding and day-roosting colonies.</p><p>Funding is based on a grant from the Fonds Européen de Développement Régional (FEDER). The study in collaboration with Dr. Camille Lebarbenchon from the Processus Infectieux en Milieu Insulaire Tropical (PIMIT) laboratory and associated with The University of La Reunion, and with a Malagasy post-doc, Riana Ramanantsalama, who did his PhD with Vahatra, employs samples of captured/marked/released bats for laboratory analysis.</p><p>For each bat, samples include oral and rectal swabs, as well as ectoparasites. In the original plan for fieldwork, it was proposed that each study colony, including caves in Ankarana and synanthropic roost sites in buildings in the nearby town of Ambilobe, to be visited every 3-4 months to study seasonal shifts in the temporal dynamics of infection at the population level. Individuals of the fruit bat <i>Rousettus madagascariensis</i> (family <i>Pteropodidae</i>) living in the caves of Ankarana are marked with uniquely numbered rings in order to study infection dynamics at the level of individuals. With the lockdown of 2020, only two visits were conducted to the study sites in that year and we were only able to restart the fieldwork in late 2021.</p><p>Because of all of the COVID-19 related delays, an extension of the project has been requested from the granting agency. We are still awaiting that decision.</p>', '<p>Les objectifs scientifiques de ce projet sont de caractériser la diversité des agents infectieux circulant dans les populations de chauves-souris du nord de Madagascar et d\'étudier la dynamique temporelle de la transmission, notamment au sein des colonies de reproduction et les colonies de jour.&nbsp;</p><p>Le financement est basé sur une subvention du Fonds Européen de Développement Régional (FEDER). L\'étude en collaboration avec le Dr Camille Lebarbenchon du Processus Infectieux en Milieu Insulaire Tropical (PIMIT) et associé à l\'Université de La Réunion, , et avec un post-doc malgache, Riana Ramanantsalama, qui a fait son doctorat avec Vahatra., emploie des échantillons de chauves-souris capturées/marquées/relâchées pour des analyses en laboratoire. Pour chaque chauve-souris, les échantillons comprennent des prélèvements oraux et rectaux, ainsi que des ectoparasites.&nbsp;</p><p>Dans le plan initial du travail de terrain, il était proposé que chaque colonie d\'étude, y compris les grottes de l\'Ankarana et les sites de perchage synanthropiques dans les bâtiments dans la ville voisine d\'Ambilobe, soient visitées tous les 3-4 mois pour étudier les changements saisonniers dans la dynamique temporelle de l\'infection au niveau de la population. Les individus de la chauve-souris frugivore<i> Rousettus madagascariensis </i>(famille des <i>Pteropodidae</i>)vivant dans les grottes d\'Ankarana sont marqués avec des anneaux numérotés de façon unique afin d\'étudier la dynamique de l\'infection au niveau des individus.&nbsp;</p><p>Avec le confinement de 2020, seules deux visites ont été effectuées sur les sites d\'étude cette année-là et nous n\'avons pu reprendre le travail de terrain que fin 2021. En raison de tous les retards liés à COVID-19, une extension du projet a été demandée à l\'organisme subventionnaire.</p>', '2021-12-01', NULL, NULL, NULL, 'project/grant/diversity-and-transmission-dynamics-of-infectious-agents-in-malagasy-bats-91', 3, 6);
INSERT INTO `activity` (`id`, `title`, `title_en`, `title_fr`, `description`, `description_en`, `description_fr`, `date`, `note`, `note_en`, `note_fr`, `slug`, `idtypeactivity`, `idtypesubactivity`) VALUES
(92, 'Save the rainforest sweden (Rädda Regnskog) project at Ambohitantely', 'Save the rainforest sweden (Rädda Regnskog) project at Ambohitantely', 'Projet \"Save the rainforest sweden\" (Rädda Regnskog) à Ambohitantely', '<p>The Réserve Spéciale d’Ambohitantely is one of the last remnant Central Highland montane forests on the island and it is of high priority to conserve, even though already notably fragmented. This fragile and vulnerable relict forest is home to rich and unique biodiversity from the invertebrate to the vertebrate fauna as well as for the flora. </p><p>Since 2007, the Association Vahatra has organized in this protected area a series of regular research missions, field schools or forms of ecological and biological training for students, as well as for conservation agents and managers. Over the past decades, between the anthropogenic pressures of wild grassland fires, some being set as acts of anarchy, which enter into the remaining natural forest, the number of forest parcels and their surface areas have been dramatically reduced or disappeared forever. In a collaborative project between Association Vahatra and Madagascar National Parks, the organization responsible for the management of the protected area, and with funding from Save the Rainforest Sweden, and in collaboration with Johannes Bergsten, Swedish Museum of Natural History in Stockholm, we have taken steps to try to conserve Ambohitantely and in association with local villagers.</p><p>The first critical step to conserve the forest was the completion of a firebreak around the largest remnant parcel, a massive activity and done 100% by hand. Between April and June 2021, just before the bush fire season, about 19 km of firebreaks were completed and these were installed in a manner to stop open country fire progression into the forest. Since 2015, scientific members of Association Vahatra with different colleagues were solicited to conceive and design a simple and practical guide for ecological restoration of three protected areas (Marojejy, Masoala, and Ranomafana).</p><p>To restore the ecological integrity of Ambohitantely, a significant portion of which has been destroyed or heavily degraded by bush fires, and several blocks will soon not be viable without intervention, the same methods and technics have been applied as for the sites mentioned above. An expert Malagasy Botanist in collaboration with Achille is in charge of the implementation of this challenging project. For now, we adopt active and assisted passive restoration strategy. A plant nursery has been established and the restoration site, that will link in a corridor fashion the main forest and a nearby forest fragment, is already prepared with a matrix of dug planting holes filled with compost and ready for transplantation in early 2022.</p><p>Previous studies carried out at Ambohitantely mainly concern vertebrates and plants, but the site includes different aquatic habitats for insects. To advance studies on the diversity and ecology of aquatic insects, Vahatra has engaged a post-doc student from the Entomology Department at The University of Antananarivo to carry out biological inventories of aquatic insects within and around the protected area. He is also in charge of the training and mentoring of Master students working on insects at his home institution.</p><p>Two of these students finalized the preparation of their memoirs in late 2021. In Ambohitantely, there is no functional infrastructure other than rugged camping sites for researchers, students or for other visitors.<br>To promote research activities and to increase the frequency of visitors, in the context of this project, we are in the process of constructing a humble biological station of 14 x 5 m with three rooms (kitchen, lab, and large room/dormitory for 8 persons).<br>Construction is now well underway and 40 000 fires clay bricks, cement, iron, etc. have been delivered to the site. The building is at the edge of the Madagascar National Parks village complex and a short distance from the main forest.</p>', '<p>The Réserve Spéciale d’Ambohitantely is one of the last remnant Central Highland montane forests on the island and it is of high priority to conserve, even though already notably fragmented. This fragile and vulnerable relict forest is home to rich and unique biodiversity from the invertebrate to the vertebrate fauna as well as for the flora. </p><p>Since 2007, the Association Vahatra has organized in this protected area a series of regular research missions, field schools or forms of ecological and biological training for students, as well as for conservation agents and managers. Over the past decades, between the anthropogenic pressures of wild grassland fires, some being set as acts of anarchy, which enter into the remaining natural forest, the number of forest parcels and their surface areas have been dramatically reduced or disappeared forever. In a collaborative project between Association Vahatra and Madagascar National Parks, the organization responsible for the management of the protected area, and with funding from Save the Rainforest Sweden, and in collaboration with Johannes Bergsten, Swedish Museum of Natural History in Stockholm, we have taken steps to try to conserve Ambohitantely and in association with local villagers.</p><p>The first critical step to conserve the forest was the completion of a firebreak around the largest remnant parcel, a massive activity and done 100% by hand. Between April and June 2021, just before the bush fire season, about 19 km of firebreaks were completed and these were installed in a manner to stop open country fire progression into the forest. Since 2015, scientific members of Association Vahatra with different colleagues were solicited to conceive and design a simple and practical guide for ecological restoration of three protected areas (Marojejy, Masoala, and Ranomafana).</p><p>To restore the ecological integrity of Ambohitantely, a significant portion of which has been destroyed or heavily degraded by bush fires, and several blocks will soon not be viable without intervention, the same methods and technics have been applied as for the sites mentioned above. An expert Malagasy Botanist in collaboration with Achille is in charge of the implementation of this challenging project. For now, we adopt active and assisted passive restoration strategy. A plant nursery has been established and the restoration site, that will link in a corridor fashion the main forest and a nearby forest fragment, is already prepared with a matrix of dug planting holes filled with compost and ready for transplantation in early 2022.</p><p>Previous studies carried out at Ambohitantely mainly concern vertebrates and plants, but the site includes different aquatic habitats for insects. To advance studies on the diversity and ecology of aquatic insects, Vahatra has engaged a post-doc student from the Entomology Department at The University of Antananarivo to carry out biological inventories of aquatic insects within and around the protected area. He is also in charge of the training and mentoring of Master students working on insects at his home institution.</p><p>Two of these students finalized the preparation of their memoirs in late 2021. In Ambohitantely, there is no functional infrastructure other than rugged camping sites for researchers, students or for other visitors.<br>To promote research activities and to increase the frequency of visitors, in the context of this project, we are in the process of constructing a humble biological station of 14 x 5 m with three rooms (kitchen, lab, and large room/dormitory for 8 persons).<br>Construction is now well underway and 40 000 fires clay bricks, cement, iron, etc. have been delivered to the site. The building is at the edge of the Madagascar National Parks village complex and a short distance from the main forest.</p>', '<p>La Réserve Spéciale d\'Ambohitantely est l\'un des derniers vestiges des forêts montagnardes de l\'île et sa conservation est hautement prioritaire, même si elle est déjà très fragmentée. Cette forêt relictuelle, fragile et vulnérable abrite une biodiversité riche et unique, de la faune invertébrée à la faune vertébrée ainsi que pour la flore. </p><p>Depuis 2007, l\'Association Vahatra organise dans cette zone protégée une série de missions de recherche régulières, des écoles de terrain ou des formations écologiques et biologiques pour les étudiants, ainsi que pour les agents et gestionnaires de la conservation. Au cours des dernières décennies, entre les pressions anthropiques des incendies de feux de prairie, dont certains sont allumés de manière anarchique, qui pénètrent dans les forêt naturelle restante, le nombre de parcelles forestières et leur superficie ont été dramatiquement réduits ou ont disparu à jamais. Dans le cadre d\'un projet de collaboration entre l\'Association Vahatra et Madagascar National Parks, l\'organisation l\'organisation responsable de la gestion de la zone protégée, et avec le financement de Save the Rainforest Suède, et en collaboration avec Johannes Bergsten, du Musée suédois d\'histoire naturelle à Stockholm, nous avons pris des mesures pour essayer de conserver Ambohitantely et en association avec les villageois locaux.</p><p>La première étape critique pour la conservation de la forêt a été la a été l\'achèvement d\'un coupe-feu autour de la plus grande parcelle restante: activité massive et réalisée à 100% à la main. Entre avril et juin 2021, juste avant la la saison des feux de brousse, environ 19 km de pare-feux ont été installés de manière à stopper la progression des feux de brousse dans la forêt.<br>Depuis 2015, les membres scientifiques de l\'association Vahatra avec différents collègues ont été sollicités pour concevoir et réaliser un guide pour la restauration écologique de trois aires protégées (Marojejy, Masoala, et Ranomafana). </p><p>Restaurer l\'intégrité écologique d\'Ambohitantely, dont une partie importante a été détruite ou fortement dégradée par des feux de brousse, et plusieurs blocs ne seront bientôt plus viables sans intervention, les mêmes méthodes et techniques ont été appliquées que pour les sites mentionnés ci-dessus. Un expert botaniste malgache, en collaboration avec Achille, est chargé de la mise en œuvre de ce projet ambitieux.<br>Pour l\'instant, nous adoptons une stratégie de restauration active et passive assistée. Une pépinière de plantes a été mise en place et le site de restauration, qui reliera dans un couloir de mode la forêt principale et un fragment de forêt voisin, est déjà préparé avec une matrice de trous de plantation creusés et remplis d\'eau, de trous de plantation remplis de compost et prêts à être transplantés au début de 2022 Les études précédentes réalisées à Ambohitantely concernent principalement les vertébrés et les plantes, mais le site comprend différents habitats aquatiques pour les insectes. Afin de faire progresser les études sur la diversité et l\'écologie des insectes aquatiques, Vahatra a engagé un étudiant post-doctoral de l\'Université d\'Oxford, un étudiant post-doc du département d\'entomologie de l\'Université d\'Antananarivo pour effectuer des inventaires biologiques des aquatiques dans et autour de l\'aire protégée. Il est également en charge de la de la formation et de l\'encadrement des étudiants de Master travaillant sur les insectes dans son institution.</p><p>Deux de ces étudiants ont finalisé la préparation de leurs mémoires en 2021. A Ambohitantely, il n\'y a pas d\'infrastructure fonctionnelle autre que des sites de camping pour les chercheurs, les étudiants ou d\'autres visiteurs.</p><p>Pour promouvoir activités de recherche et d\'augmenter la fréquence des visiteurs, dans le cadre de ce projet, nous avons construit une humble station biologique de 14 x 5 m avec trois pièces (cuisine, laboratoire, et grande chambre/dortoir pour 8 personnes). La construction est maintenant bien avancée et 40 000 briques d\'argile réfractaire, ciment, fer, etc. ont été livrés sur le site. Le bâtiment se trouve à la limite du complexe villageois de Madagascar National Parks et à une courte distance de la forêt principale.</p>', '2021-01-01', NULL, NULL, NULL, 'project/grant/save-the-rainforest-sweden-radda-regnskog-project-at-ambohitantely-92', 3, 6),
(93, 'Élaboration de stratégies efficaces de lutte contre les rongeurs afin de réduire le risque de maladie dans des paysages ruraux écologiquement et culturellement diversifiés', 'Developing effective rodent control strategies to reduce disease risk in ecologically and culturally diverse rural landscapes', 'Élaboration de stratégies efficaces de lutte contre les rongeurs afin de réduire le risque de maladie dans des paysages ruraux écologiquement et culturellement diversifiés', '<p>Le projet, appelé REDROZ (Reduce Rodent Zoonosis), vise à réduire le risque d\'infections transmises par les rongeurs en Afrique, y compris à Madagascar, en augmentant les connaissances et l\'expertise nécessaires pour développer une gestion holistique des rongeurs applicable aux conditions locales et au niveau communautaire. La recherche est conçue pour répondre à la question de savoir si la gestion des rongeurs peut réduire les risques de transmission de maladies et améliorer la santé et le bien-être de l\'homme. Les activités multidisciplinaires menées en Tanzanie et à Madagascar, se concentrent sur trois infections transmises par les rongeurs (<i>leptospirose</i>, <i>peste </i>et <i>rickettsiose</i>) et se déroulent en deux étapes.</p><p>Tout d\'abord, nous comblons les lacunes en matière de connaissances et approfondissons nos collaborations existantes avec les communautés et les parties prenantes, ce qui nous permet de co-développer la lutte contre les rongeurs qui sont évalués de manière holistique dans la deuxième étape. Nous développons un outil de modélisation réaliste dans l\'espace pour explorer les réponses probables des populations de rongeurs et des infections transmises par les rongeurs à des situations localisées. <br>Des analyses de riches ensembles de données archivées et de nouveaux essais expérimentaux sont utilisés pour paramétrer les modèles et tester les résultats. À Madagascar, l\'étude est menée en collaboration avec l\'Institut Pasteur de Madagascar. Dans une première phase, nous travaillons dans 12 villages dans la commune d\'Analavory/Miarinarivo (Hautes Terres centrales à l\'ouest d\'Antananarivo), où les villages servent de réplicats, déterminant expérimentalement. Comment les mouvements des rongeurs et la prévalence des infections transmises par les rongeurs sont influencés par le contrôle. Nous utilisons une gamme de sciences sociales qualitatives et quantitatives pour parvenir à une compréhension plus approfondie des pratiques communautaires, comportement et de la compréhension des communautés sur les questions de santé, d\'hygiène et de gestion des nuisibles, et travaillons avec les parties prenantes des sphères de la santé, de l\'agriculture et de l\'environnement pour comprendre leurs perceptions, leurs politiques et leurs services de soutien.</p><p>Dans la deuxième étape, nous menons un essai comparatif dans 12 paires de villages d\'intervention et de non-intervention (n=24) stratégies de gestion des rongeurs pendant un an, et en surveillant les changements dans les pratiques et les attitudes humaines, les dommages causés par les rongeurs (<i>leptospirose</i>, <i>peste </i>et <i>rickettsiose</i>), les indicateurs de santé humaine et les apports temporels et financiers. <br>Les ateliers collaboratifs sont conçus pour pour faciliter les comparaisons entre pays et la formation de haut niveau des chercheurs en début de carrière. </p><p>Un doctorant de l\'Université d\'Antananarivo, Todisoa Radovimiandrinifarany, est intégré à ce projet dans le cadre de sa thèse de doctorat, et deux étudiants de l\'Université de Fianarantsoa ont pris part au travail de terrain dans le cadre du capacity building.</p>', '<p>The project, named REDROZ (Reduce Rodent Zoonosis), aims at reducing the risk from rodent-borne infections in Africa, including Madagascar, by increasing knowledge and expertise needed to develop holistic rodent management applicable for local conditions and at the community level.<br>Research is designed to answer whether sustainable community-based rodent management can reduce risks of disease transmission and improve overall human health and wellbeing. Multidisciplinary activities conducted in Tanzania and Madagascar, focus on three rodent-borne infections (<i>leptospirosis</i>, <i>plague</i>, and <i>rickettsiosis</i>) and proceed in two stages.</p><p>First, we fill knowledge gaps, and deepening our existing collaborations with communities and stakeholders, allowing us to co-develop rodent control that are holistically evaluated in the second stage. We are developing a spatially realistic modelling tool to explore likely responses of rodent populations and rodent-borne infections to localized rodent control. Analyses of rich archived datasets and new experimental trials are being used to parameterize models and test output. In Madagascar, the study is carried-out in collaboration with Institut Pasteur de Madagascar. <br>In the first stage, we work in 12 villages within Analavory/Miarinarivo commune (Central Highlands to the west of Antananarivo), where villages act as replicates, experimentally determining how rodent movements and the prevalence of rodent-borne infections are impacted by control. We use a range of qualitative and quantitative social science to produce a deeper understanding of community practices, behavior, and understanding around relevant issues of health, hygiene and pest management, and work with stakeholders from health, agriculture, and environment spheres to understand their perceptions, policies, and support services.</p><p>In the second stage, we conduct a comparative trial in 12 intervention - non-intervention village pairs (n=24), co-developing and trialing rodent management strategies over one year, and monitoring changes to human practices and attitudes, rodent damage, disease within the rodent population (i.e. <i>leptospirosis</i>, <i>plague</i>, and <i>rickettsiosis</i>), human health indicators and time/financial inputs. <br>Collaborative workshops are designed to facilitate cross-country comparisons and high-level training to early career researchers. </p><p>A PhD student from The University of Antananarivo, Todisoa Radovimiandrinifarany, is integrated in this project in the context of his PhD thesis, and two students from The University of Fianarantsoa was taking part in the fieldwork in the context of capacity building.</p>', '<p>Le projet, appelé REDROZ (Reduce Rodent Zoonosis), vise à réduire le risque d\'infections transmises par les rongeurs en Afrique, y compris à Madagascar, en augmentant les connaissances et l\'expertise nécessaires pour développer une gestion holistique des rongeurs applicable aux conditions locales et au niveau communautaire. La recherche est conçue pour répondre à la question de savoir si la gestion des rongeurs peut réduire les risques de transmission de maladies et améliorer la santé et le bien-être de l\'homme. Les activités multidisciplinaires menées en Tanzanie et à Madagascar, se concentrent sur trois infections transmises par les rongeurs (<i>leptospirose</i>, <i>peste </i>et <i>rickettsiose</i>) et se déroulent en deux étapes.</p><p>Tout d\'abord, nous comblons les lacunes en matière de connaissances et approfondissons nos collaborations existantes avec les communautés et les parties prenantes, ce qui nous permet de co-développer la lutte contre les rongeurs qui sont évalués de manière holistique dans la deuxième étape. Nous développons un outil de modélisation réaliste dans l\'espace pour explorer les réponses probables des populations de rongeurs et des infections transmises par les rongeurs à des situations localisées. <br>Des analyses de riches ensembles de données archivées et de nouveaux essais expérimentaux sont utilisés pour paramétrer les modèles et tester les résultats. À Madagascar, l\'étude est menée en collaboration avec l\'Institut Pasteur de Madagascar. Dans une première phase, nous travaillons dans 12 villages dans la commune d\'Analavory/Miarinarivo (Hautes Terres centrales à l\'ouest d\'Antananarivo), où les villages servent de réplicats, déterminant expérimentalement. Comment les mouvements des rongeurs et la prévalence des infections transmises par les rongeurs sont influencés par le contrôle. Nous utilisons une gamme de sciences sociales qualitatives et quantitatives pour parvenir à une compréhension plus approfondie des pratiques communautaires, comportement et de la compréhension des communautés sur les questions de santé, d\'hygiène et de gestion des nuisibles, et travaillons avec les parties prenantes des sphères de la santé, de l\'agriculture et de l\'environnement pour comprendre leurs perceptions, leurs politiques et leurs services de soutien.</p><p>Dans la deuxième étape, nous menons un essai comparatif dans 12 paires de villages d\'intervention et de non-intervention (n=24) stratégies de gestion des rongeurs pendant un an, et en surveillant les changements dans les pratiques et les attitudes humaines, les dommages causés par les rongeurs (<i>leptospirose</i>, <i>peste </i>et <i>rickettsiose</i>), les indicateurs de santé humaine et les apports temporels et financiers. <br>Les ateliers collaboratifs sont conçus pour pour faciliter les comparaisons entre pays et la formation de haut niveau des chercheurs en début de carrière. </p><p>Un doctorant de l\'Université d\'Antananarivo, Todisoa Radovimiandrinifarany, est intégré à ce projet dans le cadre de sa thèse de doctorat, et deux étudiants de l\'Université de Fianarantsoa ont pris part au travail de terrain dans le cadre du capacity building.</p>', '2021-01-01', NULL, NULL, NULL, 'project/grant/developing-effective-rodent-control-strategies-to-reduce-disease-risk-in-ecologically-and-culturally-diverse-rural-landscapes-93', 3, 6),
(131, 'The biodiversity of Madagascar', 'The biodiversity of Madagascar', 'La biodiversité de Madagascar', 'The biodiversity of Madagascar: Endemism, introductions\r\n\r\n\r\n\r\nand zoonotic diseases. 6th African Network for Influenza Surveillance and\r\n\r\n\r\n\r\nEpidemiology (ANISE) meeting, March 2018. S.M 2018', 'The biodiversity of Madagascar: Endemism, introductions\r\n\r\n\r\n\r\nand zoonotic diseases. 6th African Network for Influenza Surveillance and\r\n\r\n\r\n\r\nEpidemiology (ANISE) meeting, March 2018. S.M 2018', 'La biodiversité de Madagascar : Endémisme, introductions\r\n\r\n\r\n\r\net zoonoses. 6ème réunion du Réseau africain de surveillance et d\'épidémiologie de la grippe\r\n\r\n\r\n\r\nEpidémiologie (ANISE), mars 2018. S.M 2018', '2018-03-01', NULL, NULL, NULL, 'conference/vahatras-event/the-biodiversity-of-madagascar-131', 2, 4),
(132, 'Risques d\'extinction des oiseaux vivant dans les forêts malgaches', 'Extinction risks of Malagasy forest-dwelling bird', 'Risques d\'extinction des oiseaux vivant dans les forêts malgaches', 'Risques d\'extinction des espèces d\'oiseaux vivant dans les forêts malgaches en cas de déforestation anthropique.\r\n\r\n27e Congrès ornithologique international, Vancouver, Canada, août 2018.', 'Extinction risks of Malagasy forest-dwelling bird species under anthropogenic deforestation.\r\n\r\n27th International Ornithological Congress, Vancouver, Canada, August 2018.', 'Risques d\'extinction des espèces d\'oiseaux vivant dans les forêts malgaches en cas de déforestation anthropique.\r\n\r\n27e Congrès ornithologique international, Vancouver, Canada, août 2018.', '2018-08-01', NULL, NULL, NULL, 'conference/vahatras-cooperation/extinction-risks-of-malagasy-forest-dwelling-bird-132', 2, 5),
(133, 'Comparaison des taux d\'évolution phénotypique', 'Comparison of rates of phenotypic evolution', 'Comparaison des taux d\'évolution phénotypique', 'Comparaison des taux d\'évolution phénotypique', 'Comparison of rates of phenotypic evolution in two Malagasy adaptive\r\n\r\nradiations. 27th International Ornithological Congress, Vancouver, Canada,\r\n\r\nAugust 2018.', 'Comparaison des taux d\'évolution phénotypique', '2018-08-01', NULL, NULL, NULL, 'conference/vahatras-cooperation/comparison-of-rates-of-phenotypic-evolution-133', 2, 5),
(134, 'Diversification de deux radiations aviaires endémiques', 'Diversification of two endemic avian radiations', 'Diversification de deux radiations aviaires endémiques', 'La diversification de deux radiations aviaires endémiques dans le\r\n\r\ndans le hotspot de biodiversité de Madagascar. 27e congrès international d\'ornithologie,\r\n\r\nVancouver, Canada, août 2018', 'Diversification of two endemic avian radiations in the\r\n\r\nbiodiversity hotspot of Madagascar. 27th International Ornithological Congress,\r\n\r\nVancouver, Canada, August 2018', 'La diversification de deux radiations aviaires endémiques dans le\r\n\r\ndans le hotspot de biodiversité de Madagascar. 27e congrès international d\'ornithologie,\r\n\r\nVancouver, Canada, août 2018', '2018-08-01', NULL, NULL, NULL, 'conference/vahatras-cooperation/diversification-of-two-endemic-avian-radiations-134', 2, 5),
(135, 'Diversité et biogéographie du paludisme aviaire à Madagascar.', 'Diversity and biogeography of avian malaria in Madagascar.', 'Diversité et biogéographie du paludisme aviaire à Madagascar.', 'Diversité et biogéographie du paludisme aviaire à Madagascar. 27ème Congrès international\r\n\r\nOrnithological Congress, Vancouver, Canada, août 2018.', 'Diversity and biogeography of avian malaria in Madagascar. 27th International\r\n\r\nOrnithological Congress, Vancouver, Canada, August 2018.', 'Diversité et biogéographie du paludisme aviaire à Madagascar. 27ème Congrès international\r\n\r\nOrnithological Congress, Vancouver, Canada, août 2018.', '2018-08-01', NULL, NULL, NULL, 'conference/vahatras-cooperation/diversity-and-biogeography-of-avian-malaria-in-madagascar-135', 2, 5),
(136, 'Rodent pets in rural Afro-malagasy farming communities', 'Rodent pets in rural Afro-malagasy farming communities', 'Les rongeurs domestiques dans les communautés agricoles rurales afro-malgaches', '<p>A comparative study of the characterization, impacts and locally-adapted management strategies of rodent pets in rural Afro-malagasy farming communities. <br>13th African Small Mammal Symposium. september 2019. Mekelle, Ethiopia.</p>', '<p>A comparative study of the characterization, impacts and locally-adapted management strategies of rodent pets in rural Afro-malagasy farming communities. <br>13th African Small Mammal Symposium. september 2019. Mekelle, Ethiopia.</p>', 'Une étude comparative de la caractérisation, des impacts et des stratégies de gestion adaptées localement des rongeurs domestiques dans les zones rurales afro-malgaches.\r\n\r\nstratégies de gestion adaptées localement des rongeurs domestiques dans les communautés agricoles afro-malgaches. 13e symposium africain sur les petits mammifères. \r\n\r\nseptembre 2019. mekelle, éthiopie.', '2019-07-01', NULL, NULL, NULL, 'conference/vahatras-cooperation/rodent-pets-in-rural-afro-malagasy-farming-communities-136', 2, 5),
(137, 'Variation of weight of some malagasy understory bird species', 'Variation of weight of some malagasy understory bird species', 'Variation du poids de quelques espèces d\'oiseaux de sous-bois malgaches.', '<p>Latitudinal and longitudinal variation of weight of some malagasy understory bird species. <br>III International Conference: Island Biology 2019. July 2019. st denis, la Réunion.</p>', '<p>Latitudinal and longitudinal variation of weight of some malagasy understory bird species. <br>III International Conference: Island Biology 2019. July 2019. st denis, la Réunion.</p>', '<p>Variation latitudinale et longitudinale du poids de quelques espèces d\'oiseaux de sous-bois malgaches. malgaches.<br>IIIe Conférence internationale : Island Biology 2019. Juillet 2019. st Denis, la Réunion.</p>', '2019-08-30', NULL, NULL, NULL, 'conference/vahatras-cooperation/variation-of-weight-of-some-malagasy-understory-bird-species-137', 2, 5),
(138, 'Variation des communautés d\'oiseaux de sous-bois dans les forêts sèches malgaches', 'Variation of understory bird communities in the malagasy dry forests', 'Variation des communautés d\'oiseaux de sous-bois dans les forêts sèches malgaches', 'Variation des communautés d\'oiseaux de sous-bois dans les forêts sèches malgaches :\r\n\r\neffets des perturbations anthropogéniques. 56e réunion annuelle de l\'association\r\n\r\nfor tropical Biology and Conservation, août-septembre 2019, antananarivo,\r\n\r\nmadagascar', 'Variation of understory bird communities in the malagasy dry forests:\r\n\r\neffects of anthropogenic disturbances. 56th annual meeting of the association\r\n\r\nfor tropical Biology and Conservation, august-september 2019, antananarivo,\r\n\r\nmadagascar', 'Variation des communautés d\'oiseaux de sous-bois dans les forêts sèches malgaches :\r\n\r\neffets des perturbations anthropogéniques. 56e réunion annuelle de l\'association\r\n\r\nfor tropical Biology and Conservation, août-septembre 2019, antananarivo,\r\n\r\nmadagascar', '2019-08-30', NULL, NULL, NULL, 'conference/biological-inventories/variation-of-understory-bird-communities-in-the-malagasy-dry-forests-138', 2, 3),
(139, 'L\'histoire, le statut actuel et l\'avenir des aires protégées à Madagascar', 'The history, current status, and future of the protected areas in Madagascar', 'L\'histoire, le statut actuel et l\'avenir des aires protégées à Madagascar', '<p>L\'histoire, le statut actuel et l\'avenir des aires protégées à Madagascar. protégées à Madagascar.<br>Plénière invitée. 56e réunion annuelle de l\'Association for Tropical Biology and Conservation, 30 juillet au 3 août 2019, Antananarivo, Madagascar</p>', '<p>The history, current status, and future of the protected areas in Madagascar.<br>Invited plenary. 56th annual meeting of the Association for Tropical Biology and Conservation, 30 July to 3 august 2019, Antananarivo, Madagascar</p>', '<p>L\'histoire, le statut actuel et l\'avenir des aires protégées à Madagascar. protégées à Madagascar.<br>Plénière invitée. 56e réunion annuelle de l\'Association for Tropical Biology and Conservation, 30 juillet au 3 août 2019, Antananarivo, Madagascar</p>', '2019-07-08', NULL, NULL, NULL, 'conference/vahatras-cooperation/the-history-current-status-and-future-of-the-protected-areas-in-madagascar-139', 2, 5),
(141, 'Changements environnementaux pléistocène-holocène à Madagascar', 'Pleistocene-holocene environmental changes on Madagascar', 'Changements environnementaux pléistocène-holocène à Madagascar', 'Changements environnementaux pléistocènes-holocènes sur\r\n\r\nMadagascar et les extinctions associées. Conférence invitée. troisième conférence internationale.\r\n\r\nConférence, 8-13 juillet 2019, st. Clotide, La réunion, france.', 'Pleistocene-holocene environmental changes on\r\n\r\nMadagascar and associated extinctions. Invited lecture. third international\r\n\r\nConference, 8-13 July 2019, st. Clotide, La réunion, france', 'Changements environnementaux pléistocènes-holocènes sur\r\n\r\nMadagascar et les extinctions associées. Conférence invitée. troisième conférence internationale.\r\n\r\nConférence, 8-13 juillet 2019, st. Clotide, La réunion, france.', '2019-07-08', NULL, NULL, NULL, 'conference/vahatras-cooperation/pleistocene-holocene-environmental-changes-on-madagascar-141', 2, 5),
(142, 'Une fenêtre sur le passé récent', 'A window into the recent past', 'Une fenêtre sur le passé récent', '<p>Une fenêtre sur le passé récent: les animaux disparus et les écosystèmes de Madagascar.<br> Conférence invitée. Alexander Von Humboldt, 16-19 octobre, bonn, allemagne.</p>', '<p>A window into the recent past: the extinct animals and ecosystems of Madagascar.<br> Invited lecture. Alexander Von Humboldt, 16-19 october, bonn, Germany.</p>', '<p>Une fenêtre sur le passé récent: les animaux disparus et les écosystèmes de Madagascar.<br> Conférence invitée. Alexander Von Humboldt, 16-19 octobre, bonn, allemagne.</p>', '2019-10-16', NULL, NULL, NULL, 'conference/vahatras-cooperation/a-window-into-the-recent-past-142', 2, 5),
(143, 'Personne en vedette : Lovanomenjanahary Marline or \"Lova\"', 'Person In focus: Lovanomenjanahary Marline or \"Lova\"', 'Personne en vedette : Lovanomenjanahary Marline or \"Lova\"', '<p>Après avoir terminé son doctorat à l\'Université du Cap en 2018 sur la diversité et la biogéographie des bryophytes malgaches sur le massif du Marojejy , Lova est \"rentrée à la maison\" et a commencé ses études post-doctorales en août 2020.</p><p>Avant de partir pour l\'Afrique du Sud, elle a terminé son master au Département de Biologie et Ecologie Végétale de l\'Université d\'Antananarivo. Sa base post-doctorale locale étant l\'Association Vahatra et collaborant également avec le Centre de Conservation de Kew Madagascar, elle continuera son exploration de Madagascar sur une série de sites avec une flore bryophyte inconnue ou mal connue. En utilisant les données sur les bryophytes locales des régions montagnardes de Madagascar, elle sera en mesure d\'examiner certaines de ses intérêts sur les processus écologiques et évolutifs qui déterminent l\'assemblage des communautés et la biodiversité à l\'échelle locale, paysagère et biogéographique.</p><p>En outre, les bryophytes sont présumés être un excellent groupe pourcomprendre l\'effet du changement climatiquesur la biodiversité. <br>Le post-doc de Lova est d\'une durée de deux ans et repose sur les subventions qu\'elle a obtenues de la National Geographic Society, du RoyalRoyal Botanical Garden (Kew) et du Deutscher Akademischer Austauschdienst (DAAD).</p>', '<p>After finishing her Ph.D. at the University of Cape Town in 2018 on the diversity and biogeography of Malagasy bryophytes on the Marojejy Massif in the north, Lova “returned home” and started her post-doctoral studies in August 2020.</p><p>Before leaving for South Africa, she completed her Master’s degree in the Département de Biologie et Ecologie Végétale, Université d’Antananarivo. With her local post-doc base being Association Vahatra and also collaborating with Kew Madagascar Conservation Centre, she will continue her exploration of Madagascar at a series of sites with unknown or poorly known bryophyte floras. Using data on the local bryophytes from montane regions of Madagascar, she will be able to examine some of her broad interests on the ecological and evolutionary processes that determine community assembly and biodiversity pattern at local, landscape, and broader biogeographic scales.</p><p>Further, bryophytes are presumed to be an excellent group to understand the effect of climate change on biodiversity. Lova’s post-doc is for two years and based on grants she has obtained from National Geographic Society, Royal Botanical Garden (Kew), and Deutscher Akademischer Austauschdienst (DAAD).</p>', '<p>Après avoir terminé son doctorat à l\'Université du Cap en 2018 sur la diversité et la biogéographie des bryophytes malgaches sur le massif du Marojejy , Lova est \"rentrée à la maison\" et a commencé ses études post-doctorales en août 2020.</p><p>Avant de partir pour l\'Afrique du Sud, elle a terminé son master au Département de Biologie et Ecologie Végétale de l\'Université d\'Antananarivo. Sa base post-doctorale locale étant l\'Association Vahatra et collaborant également avec le Centre de Conservation de Kew Madagascar, elle continuera son exploration de Madagascar sur une série de sites avec une flore bryophyte inconnue ou mal connue. En utilisant les données sur les bryophytes locales des régions montagnardes de Madagascar, elle sera en mesure d\'examiner certaines de ses intérêts sur les processus écologiques et évolutifs qui déterminent l\'assemblage des communautés et la biodiversité à l\'échelle locale, paysagère et biogéographique.</p><p>En outre, les bryophytes sont présumés être un excellent groupe pourcomprendre l\'effet du changement climatiquesur la biodiversité. <br>Le post-doc de Lova est d\'une durée de deux ans et repose sur les subventions qu\'elle a obtenues de la National Geographic Society, du RoyalRoyal Botanical Garden (Kew) et du Deutscher Akademischer Austauschdienst (DAAD).</p>', '2020-08-01', NULL, NULL, NULL, 'conference/vahatras-event/person-in-focus-lovanomenjanahary-marline-or-lova-143', 2, 4),
(144, 'Disscussion avec Monsieur Jean-Yves Le Drian,  Ministre français de l\'Europe et des Affaires étrangères', 'Disscussion with Monsieur Jean-Yves Le Drian, french minister of Europe and foreign affairs', 'Disscussion avec Monsieur Jean-Yves Le Drian,  Ministre français de l\'Europe et des Affaires étrangères', '<p>A la demande du Ministre lors d\'une visite à Madagascar fin février, une réunion a été organisée par l\'ambassade de France à Antananarivo afin de discuter avec des individus travaillant dans le secteur privé.</p><p>Certaines questions critiques concernant l\'avancement des programmes de conservation à Madagascar. Claude-Anne Gauthier, la représentante nationale de l\'Institut de Recherche pour le Développement, a invité Steve Goodman à participer à la réunion.&nbsp;</p><p>Les questions tournent autour de plusieurs thèmes :&nbsp;</p><ul><li>&nbsp;L\' urgence de la préservation globale de l\'environnement et de la biodiversité</li><li>&nbsp;La réponse des politiques publiques locales aux besoins</li><li>La nécessité d\'une politique de développement durable</li></ul>', '<p>At the request of the Minister during a visit to Madagascar in late February, a meeting was organized by the French Embassy in Antananarivo to discuss with individuals working in the private sector some critical questions concerning the advancement of conservation programs on Madagascar.</p><p>Claude-Anne Gauthier, the national representative of the Institut de Recherche pour le Développement, invited Steve Goodman to take part in the meeting. The questions revolve around several themes:&nbsp;</p><ul><li>The urgency in the overall preservation of the environment and biodiversity</li><li>Do local public policies respond to the needs&nbsp;</li><li>How to remedy the shortcomings identified.</li></ul>', '<p>A la demande du Ministre lors d\'une visite à Madagascar fin février, une réunion a été organisée par l\'ambassade de France à Antananarivo afin de discuter avec des individus travaillant dans le secteur privé.</p><p>Certaines questions critiques concernant l\'avancement des programmes de conservation à Madagascar. Claude-Anne Gauthier, la représentante nationale de l\'Institut de Recherche pour le Développement, a invité Steve Goodman à participer à la réunion.&nbsp;</p><p>Les questions tournent autour de plusieurs thèmes :&nbsp;</p><ul><li>&nbsp;L\' urgence de la préservation globale de l\'environnement et de la biodiversité</li><li>&nbsp;La réponse des politiques publiques locales aux besoins</li><li>La nécessité d\'une politique de développement durable</li></ul>', '2020-02-27', NULL, NULL, NULL, 'conference/vahatras-cooperation/disscussion-with-monsieur-jean-yves-le-drian-french-minister-of-europe-and-foreign-affairs-144', 2, 5),
(145, 'Helmsley Charitable trust – capacity building, phase II', 'Helmsley Charitable trust – capacity building, phase II', 'Helmsley Charitable trust – renforcement des capacités, phase II', '<p>This project, entitled “Development of scientific capacity for Malagasy conservation biologists”, commenced in January 2017. The project has four different aspects: </p><ul><li>field schools each year focusing on young Malagasy graduate student to help in their scientific orientation and skill development; the participant groups will also include some individuals working in protected areas management (e.g. Madagascar National Parks) and field practitioners for conservation organizations (most selected from other HCT financed projects)</li><li> field studies and different forms of mentoring for five Ph.D. students and two Master’s II students enrolled at The University of Antananarivo</li><li> continued advancement of scientific and general publications associated with Vahatra scientists and students, as well as the Malagasy scientific community</li><li>the publication of a large-scale synthesis on the protected areas of Madagascar (see above, “Presentation of protected areas book”). </li></ul><p>In 2019, two different field schools were carried out. The first was held between 20 and 26 April, in the Réserve Spéciale d’Ambohitantely, Analamanga Region and was attended by 18 students from the University of Antananarivo, as well as one from the Lycée Français of Ambatobe, Antananarivo. The second took place in the Réserve Spéciale d’Ankarana with six students from The University of Antsiranana and one from The University of Antananarivo, and two conservation agents of Madagascar National Parks working in the same protected area During the course of these multidisciplinary field schools, these students interact directly with professional biologists working in different disciplines of zoology. During the second field trip, they have also the opportunity to profit the presence of a specialist on botany and another scientist specialist on lichens.</p><p>This kind of training provides an excellent means for each student to decide what group of animal or type of study they are the most interested with respect to their future research project and study. These outings are often eye-opening experiences for the young Malagasy participants. <br>At the same time, they provide an excellent means for Vahatra to pick the students they would like to work with in advancing their Master or Ph.D. studies Concerning the status of student projects, three of the seven students (one Ph.D. degree and two master’s degrees) affiliated with this grant have defended the results of their studies in 2019. The remaining ones are at a very advanced stage and will presented their researches at the first portion of 2020.</p>', '<p>This project, entitled “Development of scientific capacity for Malagasy conservation biologists”, commenced in January 2017. The project has four different aspects: </p><ul><li>field schools each year focusing on young Malagasy graduate student to help in their scientific orientation and skill development; the participant groups will also include some individuals working in protected areas management (e.g. Madagascar National Parks) and field practitioners for conservation organizations (most selected from other HCT financed projects)</li><li> field studies and different forms of mentoring for five Ph.D. students and two Master’s II students enrolled at The University of Antananarivo</li><li> continued advancement of scientific and general publications associated with Vahatra scientists and students, as well as the Malagasy scientific community</li><li>the publication of a large-scale synthesis on the protected areas of Madagascar (see above, “Presentation of protected areas book”). </li></ul><p>In 2019, two different field schools were carried out. The first was held between 20 and 26 April, in the Réserve Spéciale d’Ambohitantely, Analamanga Region and was attended by 18 students from the University of Antananarivo, as well as one from the Lycée Français of Ambatobe, Antananarivo. The second took place in the Réserve Spéciale d’Ankarana with six students from The University of Antsiranana and one from The University of Antananarivo, and two conservation agents of Madagascar National Parks working in the same protected area During the course of these multidisciplinary field schools, these students interact directly with professional biologists working in different disciplines of zoology. During the second field trip, they have also the opportunity to profit the presence of a specialist on botany and another scientist specialist on lichens.</p><p>This kind of training provides an excellent means for each student to decide what group of animal or type of study they are the most interested with respect to their future research project and study. These outings are often eye-opening experiences for the young Malagasy participants. <br>At the same time, they provide an excellent means for Vahatra to pick the students they would like to work with in advancing their Master or Ph.D. studies Concerning the status of student projects, three of the seven students (one Ph.D. degree and two master’s degrees) affiliated with this grant have defended the results of their studies in 2019. The remaining ones are at a very advanced stage and will presented their researches at the first portion of 2020.</p>', '<p>Ce projet, intitulé \"Développement de la capacité scientifique des biologistes de biologistes de la conservation\", a débuté en janvier 2017. Le projet comporte quatre différents aspects : </p><ul><li> des écoles de terrain chaque année se concentrant sur les jeunes Malgaches étudiants diplômés pour les aider dans leur orientation scientifique et le développement de leurs compétences ; les groupes de participants comprendront également des personnes travaillant dans la gestion des aires protégées (par exemple Madagascar National Parks) et des praticiens de terrain pour des organisations de conservation (la plupart sélectionnés dans d\'autres projets financés par HCT)</li><li> études de terrain et différentes formes de mentorat pour cinq étudiants en doctorat et deux étudiants en Master II inscrits à l\'Université d\'Antananarivo. </li><li>l\'avancement continu des publications scientifiques et générales associées aux scientifiques et aux étudiants de Vahatra, ainsi qu\'à la communauté scientifique malgache</li><li>la publication d\'une synthèse à grande échelle sur les aires protégées de Madagascar.</li></ul><p> En 2019, deux écoles de terrain différentes ont été réalisées. La première s\'est tenue entre le 20 et le 26 avril, dans la Réserve Spéciale d\'Ambohitantely, Région d\'Analamanga, et a été suivie par 18 étudiants de l\'Université de l\'Université d\'Antananarivo, ainsi qu\'un étudiant du Lycée français Français d\'Ambatobe, Antananarivo. La seconde a eu lieu dans la Réserve Spéciale d\'Ankarana avec six étudiants de l\'Université d\'Antsiranana et de l\'Université d\'Antananarivo, et deux agents de conservation de Madagascar National Parks travaillant dans la même aire protégée.</p><p> Au cours de ces écoles de terrain multidisciplinaires, ces étudiants interagissent directement avec des biologistes professionnels travaillant dans différentes disciplines de la zoologie. Lors de la deuxième sortie sur le terrain, ils ont également l\'occasion de profiter de la présence d\'un spécialiste de la botanique et d\'un autre scientifique spécialiste des lichens. Ce type de formation constitue un excellent moyen pour chaque étudiant de de décider quel groupe d\'animaux ou quel type d\'étude l\'intéresse le plus pour son futur projet de recherche et d\'étude. Ces sorties sont souvent des expériences révélatrices pour les jeunes participants malgaches. En même temps, elles constituent un excellent moyen pour Vahatra de choisir les étudiants avec lesquels elle souhaite travailler pour faire avancer le projet. avec lesquels ils souhaitent travailler pour faire avancer leurs études de master ou de doctorat.</p><p>En ce qui concerne l\'état d\'avancement des projets des étudiants, trois des sept étudiants (un doctorat et deux maîtrises) affiliés à cette subvention ont défendu les résultats de leurs études en 2019. Les autres sont à un stade très avancé et ont présentés leurs recherches lors de la la première partie de 2020.</p>', '2020-01-01', NULL, NULL, NULL, 'project/grant/helmsley-charitable-trust-capacity-building-phase-ii-145', 3, 6);
INSERT INTO `activity` (`id`, `title`, `title_en`, `title_fr`, `description`, `description_en`, `description_fr`, `date`, `note`, `note_en`, `note_fr`, `slug`, `idtypeactivity`, `idtypesubactivity`) VALUES
(146, 'Conférence sur la biologie des îles à La Réunion', 'Island Biology Conference on La Réunion', 'Conférence sur la biologie des îles à La Réunion', '<p>L\'Université de La Réunion a accueilli la IIIe conférence internationale sur la Biologie des îles, qui se tient tous les trois ans dans un endroit différent dans le monde et rassemble des étudiants et des chercheurs travaillant sur différents aspects de la biologie des îles.</p><p>L\'association Vahatra a été invitée par l\'université de La Réunion à participer à la conférence qui s\'est tenue du 8 au 13 juillet 2019 et à participer à une session de formation spéciale de deux jours pour les étudiants diplômés régionaux, assister à la conférence sur la rédaction d\'articles scientifiques et la publication, notamment le choix de la revue, le respect du format de revue proposé, et les différentes étapes à suivre. <br>Grâce à une subvention reçue par l\'Université de La Réunion de la part du Conseil régional de LaVahatra Rapport annuel 2019 Réunion via le programme INTERREG Océan Indien 2014-2020 pour un projet dont l\'acronyme est \"MIMUSOPS\" et dont le titre est \"Partage des connaissances et promouvoir la biodiversité marine et terrestre dans la région de l\'Océan Indien\", un soutien financier a été apporté à huit étudiants malgaches de troisième cycle, à post-doc, et trois professeurs de l\'Association Vahatra et un autre de l\'Université d\'Antananarivo pour participer à la réunion et à l\'atelier.</p><p>Ces étudiants ont fait des présentations orales et des posters lors de la réunion, Steve Goodman a également donné une conférence plénière lors de la réunion et une autre présentation associée aux extinctions de faune dans les temps géologiques récents.<br>L\'association Vahatra a également eu un stand de livres lors de la réunion.<br>Pendant cette rencontre, Achille a été interviewé par le programme de communication régional associé à l\'Université de La Réunion, sur l\'histoire et les activités de l\'association Vahatra en ce qui concerne La Réunion, concernant l\'histoire et les activités de Vahatra en matière de le renforcement des capacités et le développement.</p>', '<p>The University of La Réunion was the host of the III International Island Biology conference, which is held every three years at a different place in the world and brings together students and researchers working on different aspects of island biology.</p><p>Association Vahatra was invited by the University of La Réunion to attend the conference held between 8 and 13 July 2019 and take part in a special two day training session for regional graduate students attending the conference on writing scientific papers and publication, including the choose of the journal, respect proposed journal format, and the different steps to follow. <br>Thanks to a grant received by the University of La Réunion from the regional Council of LaVahatra 2019 Annual Report 18 Réunion via the INTERREG Océan Indian 2014-2020 program for a project with the acronym “MIMUSOPS” and under the title “Sharing knowledge and promoting marine and terrestrial biodiversity in the Indian Ocean region” financial support was provided for eight Malagasy graduate students, one postdoc, and three professors from Association Vahatra and another from the University of Antananarivo to attended the meeting and workshop.</p><p>These students gave either oral or poster presentations during the Island Biology meeting. Steve Goodman also gave a plenary lecture at the meeting and another presentation associated with faunal extinctions in recent geological time.<br>Association Vahatra also had a book stall at the meeting. During this meeting, Achille was interviewed by the regional communication program associated with The University of La Réunion, concerning the history and activities of Vahatra with respect to capacity building and development.</p>', '<p>L\'Université de La Réunion a accueilli la IIIe conférence internationale sur la Biologie des îles, qui se tient tous les trois ans dans un endroit différent dans le monde et rassemble des étudiants et des chercheurs travaillant sur différents aspects de la biologie des îles.</p><p>L\'association Vahatra a été invitée par l\'université de La Réunion à participer à la conférence qui s\'est tenue du 8 au 13 juillet 2019 et à participer à une session de formation spéciale de deux jours pour les étudiants diplômés régionaux, assister à la conférence sur la rédaction d\'articles scientifiques et la publication, notamment le choix de la revue, le respect du format de revue proposé, et les différentes étapes à suivre. <br>Grâce à une subvention reçue par l\'Université de La Réunion de la part du Conseil régional de LaVahatra Rapport annuel 2019 Réunion via le programme INTERREG Océan Indien 2014-2020 pour un projet dont l\'acronyme est \"MIMUSOPS\" et dont le titre est \"Partage des connaissances et promouvoir la biodiversité marine et terrestre dans la région de l\'Océan Indien\", un soutien financier a été apporté à huit étudiants malgaches de troisième cycle, à post-doc, et trois professeurs de l\'Association Vahatra et un autre de l\'Université d\'Antananarivo pour participer à la réunion et à l\'atelier.</p><p>Ces étudiants ont fait des présentations orales et des posters lors de la réunion, Steve Goodman a également donné une conférence plénière lors de la réunion et une autre présentation associée aux extinctions de faune dans les temps géologiques récents.<br>L\'association Vahatra a également eu un stand de livres lors de la réunion.<br>Pendant cette rencontre, Achille a été interviewé par le programme de communication régional associé à l\'Université de La Réunion, sur l\'histoire et les activités de l\'association Vahatra en ce qui concerne La Réunion, concernant l\'histoire et les activités de Vahatra en matière de le renforcement des capacités et le développement.</p>', '2019-06-08', NULL, NULL, NULL, 'conference/vahatras-cooperation/island-biology-conference-on-la-reunion-146', 2, 5),
(147, '56ème réunion annuelle de l\'Association de Biologie Tropicale et de Conservation. (ATBC)', '56th annual meeting of the Association of Tropical Biology and Conservation', '56ème réunion annuelle de l\'Association de Biologie Tropicale et de Conservation. (ATBC)', '<p>Madagascar a été choisi pour accueillir la réunion annuelle 2019 de l\'Association. de biologie tropicale et de conservation, qui s\'est tenue à Antananarivo du 30 juillet au 3 août 2019. </p><p>Au total, 723 délégués de 44 pays, dont 250 participants malgaches, ont assisté à la conférence de cinq jours qui s\'est tenue au Ivato Conference Center. Il s\'agissait d\'un événement majeur pour Madagascar et l\'une des intentions du comité local d\'organiser la réunion à Madagascar était d\'informer les politiciens nationaux et locaux et les entreprises de l\'importance de la biodiversité renommée de l\'île et de mettre en lumière le besoin critique pour le pays de prendre les mesures nécessaires pour conserver ce patrimoine naturel de façon immédiate et claire.</p><p> Cet aspect a été concrétisé par la pétition d\' Ivato, présentée en quatre langues (anglais, français, malgache et espagnol). (voir<a href=\" https://www.atbc2019.org/\"> https://www.atbc2019.org/</a>), signée par des centaines de personnes du monde entier, et qui devait être signée par le Président de Madagascar ou un ministre désigné lors de la cérémonie de clôture de la réunion. En 2020, cette dernière étape n\'a pas encore eu lieu. </p><p>L\'association Vahatra était l\'une des organisations de soutien locales et dont les différents membres jouaient des rôles différents : <strong>Achille Raselimanana</strong> était membre du comité scientifique et président de cinq sessions et <strong>Steve Goodman</strong> était le co-président de la composante académique. Steve a également présenté une conférence plénière pendant la conférence. L\'Association Vahatra a mis à disposition des bourses compétitives pour 30 participants malgaches, dont 17 étudiants diplômés et 13 étudiants professeurs/chercheurs pour prendre part à la réunion. <br>Un certain nombre de présentations orales et de posters ont été faites par les étudiants de Vahatra lors de la réunion. Vahatra a également tenu un stand de livres.</p>', '<p>Madagascar was chosen to host the 2019 annual meeting of the Association of Tropical Biology and Conservation, which was held in Antananarivo from 30 July to 3 August 2019. </p><p>Overall 723 delegates from 44 countries, including 250 Malagasy participants, attended the five day conference held at the Ivato Conference Center. This was a major event for Madagascar and one of the intents of the local committee to have the meeting in Madagascar was to informnational and local politicians and business groups of the importance of the island’s renown biodiversity and bring to light the critical need for the country to take the necessary steps to conserve this natural patrimony in an immediate and clear fashion.</p><p>This aspect was embodied in the petition of Ivato, presented in four languages (English, French, Malagasy, and Spanish (see <a href=\"https://www.atbc2019.org/\">https://www.atbc2019.org/</a>), which was signed by hundreds of people from around the world and envisioned to be signed by the President of Madagascar or a designated Minister at the closing ceremony of the meeting. To date (January 2020), this latter step has yet to occur.</p><p> Association Vahatra was one of the local supporting organizations and with different members taking different roles: <strong>Achille Raselimanana</strong> was a member of the scientific committee, and chair for five sessions and <strong>Steve Goodman</strong> was the co-chair of the academic component. Steve also presented a plenary lecture during the conference. Association Vahatra made available competitive grants for 30 Malagasy participants, including 17 graduate students and 13 professors/researchers to take part in the meeting. <br>A number of oral and poster presentations were made by Vahatra students at the meeting. Vahatra also had a book stand.</p>', '<p>Madagascar a été choisi pour accueillir la réunion annuelle 2019 de l\'Association. de biologie tropicale et de conservation, qui s\'est tenue à Antananarivo du 30 juillet au 3 août 2019. </p><p>Au total, 723 délégués de 44 pays, dont 250 participants malgaches, ont assisté à la conférence de cinq jours qui s\'est tenue au Ivato Conference Center. Il s\'agissait d\'un événement majeur pour Madagascar et l\'une des intentions du comité local d\'organiser la réunion à Madagascar était d\'informer les politiciens nationaux et locaux et les entreprises de l\'importance de la biodiversité renommée de l\'île et de mettre en lumière le besoin critique pour le pays de prendre les mesures nécessaires pour conserver ce patrimoine naturel de façon immédiate et claire.</p><p> Cet aspect a été concrétisé par la pétition d\' Ivato, présentée en quatre langues (anglais, français, malgache et espagnol). (voir<a href=\" https://www.atbc2019.org/\"> https://www.atbc2019.org/</a>), signée par des centaines de personnes du monde entier, et qui devait être signée par le Président de Madagascar ou un ministre désigné lors de la cérémonie de clôture de la réunion. En 2020, cette dernière étape n\'a pas encore eu lieu. </p><p>L\'association Vahatra était l\'une des organisations de soutien locales et dont les différents membres jouaient des rôles différents : <strong>Achille Raselimanana</strong> était membre du comité scientifique et président de cinq sessions et <strong>Steve Goodman</strong> était le co-président de la composante académique. Steve a également présenté une conférence plénière pendant la conférence. L\'Association Vahatra a mis à disposition des bourses compétitives pour 30 participants malgaches, dont 17 étudiants diplômés et 13 étudiants professeurs/chercheurs pour prendre part à la réunion. <br>Un certain nombre de présentations orales et de posters ont été faites par les étudiants de Vahatra lors de la réunion. Vahatra a également tenu un stand de livres.</p>', '2019-07-30', NULL, NULL, NULL, 'conference/vahatras-cooperation/56th-annual-meeting-of-the-association-of-tropical-biology-and-conservation-147', 2, 5),
(148, '13e African Small Mammals Symposium (ASMS), Mekelle, Ethiopia', '13th African Small Mammals Symposium (ASMS), Mekelle, Ethiopia', '13e African Small Mammals Symposium (ASMS), Mekelle, Ethiopia', '<p>Le 13ème ASMS s\'est tenue à l\'université de Mekelle, dans le nord de l\'Éthiopie, du 16 au 21 septembre 2019. <br>La réunion précédente avait eu lieu à Madagascar en septembre 2015 et organisée par l\'Association Vahatra, plus précisément Voahangy Soarimalala et Steve Goodman.</p><p>Ces deux personnes étaient membres du comité scientifique international de la réunion de Mekelle, à laquelle ils ont participé avec trois étudiants en doctorat de l\'Association Vahatra. Toutes ces personnes ont fait des présentations orales ou des posters lors de la réunion. </p><p>La participation de ces différentes personnes a été financée par un don de Bob et Gail Loveman. <br>L\'une des étudiantes de Vahatra, Judith Vololona, a reçu le prix du meilleur poster étudiant lors de l\'ASMS 2019.</p>', '<p>The 13th ASMS was held at Mekelle University in northern Ethiopia from 16 to 21 September 2019.<br>The previous meeting was held in Madagascar in September 2015 and organized by Association Vahatra, specifically Voahangy Soarimalala and Steve Goodman.</p><p>These two individuals were members of the International Scientific Committee for the Mekelle meeting, which they attended along with three Ph.D. students from Association Vahatra – all of these individuals gave oral or poster presentations at the meeting. </p><p>The attendance of these different people was financed by a gift from Bob and Gail Loveman. <br>One of the Vahatra students, Judith Vololona, was awarded as best student poster during the ASMS 2019.</p>', '<p>Le 13ème ASMS s\'est tenue à l\'université de Mekelle, dans le nord de l\'Éthiopie, du 16 au 21 septembre 2019. <br>La réunion précédente avait eu lieu à Madagascar en septembre 2015 et organisée par l\'Association Vahatra, plus précisément Voahangy Soarimalala et Steve Goodman.</p><p>Ces deux personnes étaient membres du comité scientifique international de la réunion de Mekelle, à laquelle ils ont participé avec trois étudiants en doctorat de l\'Association Vahatra. Toutes ces personnes ont fait des présentations orales ou des posters lors de la réunion. </p><p>La participation de ces différentes personnes a été financée par un don de Bob et Gail Loveman. <br>L\'une des étudiantes de Vahatra, Judith Vololona, a reçu le prix du meilleur poster étudiant lors de l\'ASMS 2019.</p>', '2019-09-21', NULL, NULL, NULL, 'conference/vahatras-cooperation/13th-african-small-mammals-symposium-asms-mekelle-ethiopia-148', 2, 5),
(149, 'Personne en vedette:  Steven M. Goodman', 'Person in Focus:  Steven M. Goodman', 'Personne en vedette:  Steven M. Goodman', '<p>En 2019, Steve Goodman a reçu plusieurs prix. Lors de la cérémonie de clôture cérémonie de clôture de la 56e réunion annuelle de l\'Association pour la biologie tropicale et de la conservation à Antananarivo , Steve a été nommé par le conseil de l\'association membre honoraire à vie. Cette récompense, qui est la plus haute distinction accordée par l\'association lui a été décernée en reconnaissance de ses contributions scientifiques liées à la biodiversité et à la conservation de Madagascar au cours des trois dernières décennies et de ses efforts dans différents aspects de la réunion de Madagascar.</p><p>Lors de la réunion annuelle 2019 de la Société Américaine des Mammalogistes, Steve a reçu le prix Aldo Leopold pour la conservation. Dans la citation du prix, il est mentionné que \"Bien que la recherche du Dr. Goodman se concentre sur les mammifères de Madagascar, il a mené des recherches dans de nombreux autres pays Africains. Ses principaux intérêts de recherche sont : les inventaires de inconnues ou mal connues, la description de nouvelles espèces et l\'élucidation de l\'histoire de l\'évolution des mammifères malgaches, l\'application des données recueillies dans l\'avancement des programmes de conservation et le renforcement des capacités des biologistes malgaches, en particulier des étudiants diplômés. Le Dr Goodman est cofondateur de l\'Association Vahatra, une organisation de base qui promeut la conservation de la faune indigène de Madagascar, tout en formant la prochaine génération de scientifiques malgaches en écologie et en biologie de la conservation. Au cours des trois dernières décennies, le Dr Goodman a contribué à la création de toute une génération de biologistes et de scientifiques, une génération entière de biologistes et d\'écologistes en formant des dizaines d\'étudiants malgaches diplômés. En formant des dizaines d\'étudiants malgaches de troisième cycle et des centaines d\'étudiants de premier cycle aux techniques écologiques modernes, notamment aux meilleures pratiques en matière de gestion des ressources naturelles, techniques écologiques modernes, y compris les meilleures pratiques pour les enquêtes de terrain, les collections de musée, l\'acquisition et l\'analyse de données... <br>Chaque lettre de soutien a souligné l\'impact profond et durable de son travail, non seulement sur la compréhension de la taxonomie et de la conservation des mammifères, mais aussi sur le peuple malgache.\"</p>', '<p>In 2019, Steve Goodman received a couple of awards. At the closing ceremony of the 56th annual meeting of Association for Tropical Biology and Conservation in Antananarivo, Steve was named by the association’s council a life-time Honorary Fellow. This award which is the highest honor given by the association was given to him in recognition of his scientific contributions associated with biodiversity and conservation on Madagascar over the past three decades and his efforts in different aspects of the Madagascar meeting.</p><p>During the 2019 annual meeting of the American Society of Mammalogists Steve received the Aldo Leopold Conservation Award. In the citation for the award it was mentioned “Although the primary focus of Dr. Goodman’s research has been on the mammals of Madagascar, he has conducted research in numerous other African countries. His principal research interests are: inventories of unknown or poorly known forested areas, describing new species and elucidating the evolutionary history of Malagasy mammals, application of gathered data in the advancement of conservation programs, and capacity building for Malagasy conservation biologists, particularly graduate students. Dr. Goodman is a co-founder of the Association Vahatra, a grassroots organization that promotes conservation of Madagascar’s native fauna while training the next generation of Malagasy scientists in ecology and conservation biology. Over the last three decades, Dr. Goodman has helped create a whole generation of biologist and conservationists by training dozens of Malagasy graduate students and hundreds of undergraduates in modern ecological techniques, including best practices for field surveys, museum collections, data acquisition, and analysis…<br>Every letter of support highlighted the profound and lasting impact he has had, not only on the understanding of mammalian taxonomy and conservation, but on the Malagasy people as well.\"</p>', '<p>En 2019, Steve Goodman a reçu plusieurs prix. Lors de la cérémonie de clôture cérémonie de clôture de la 56e réunion annuelle de l\'Association pour la biologie tropicale et de la conservation à Antananarivo , Steve a été nommé par le conseil de l\'association membre honoraire à vie. Cette récompense, qui est la plus haute distinction accordée par l\'association lui a été décernée en reconnaissance de ses contributions scientifiques liées à la biodiversité et à la conservation de Madagascar au cours des trois dernières décennies et de ses efforts dans différents aspects de la réunion de Madagascar.</p><p>Lors de la réunion annuelle 2019 de la Société Américaine des Mammalogistes, Steve a reçu le prix Aldo Leopold pour la conservation. Dans la citation du prix, il est mentionné que \"Bien que la recherche du Dr. Goodman se concentre sur les mammifères de Madagascar, il a mené des recherches dans de nombreux autres pays Africains. Ses principaux intérêts de recherche sont : les inventaires de inconnues ou mal connues, la description de nouvelles espèces et l\'élucidation de l\'histoire de l\'évolution des mammifères malgaches, l\'application des données recueillies dans l\'avancement des programmes de conservation et le renforcement des capacités des biologistes malgaches, en particulier des étudiants diplômés. Le Dr Goodman est cofondateur de l\'Association Vahatra, une organisation de base qui promeut la conservation de la faune indigène de Madagascar, tout en formant la prochaine génération de scientifiques malgaches en écologie et en biologie de la conservation. Au cours des trois dernières décennies, le Dr Goodman a contribué à la création de toute une génération de biologistes et de scientifiques, une génération entière de biologistes et d\'écologistes en formant des dizaines d\'étudiants malgaches diplômés. En formant des dizaines d\'étudiants malgaches de troisième cycle et des centaines d\'étudiants de premier cycle aux techniques écologiques modernes, notamment aux meilleures pratiques en matière de gestion des ressources naturelles, techniques écologiques modernes, y compris les meilleures pratiques pour les enquêtes de terrain, les collections de musée, l\'acquisition et l\'analyse de données... <br>Chaque lettre de soutien a souligné l\'impact profond et durable de son travail, non seulement sur la compréhension de la taxonomie et de la conservation des mammifères, mais aussi sur le peuple malgache.\"</p>', '2019-12-31', NULL, NULL, NULL, 'conference/vahatras-event/person-in-focus-steven-m-goodman-149', 2, 4),
(150, 'Personne en vedette: Marie Jeanne Raherilalao', 'Person In Focus: Marie Jeanne Raherilalao', 'Personne en vedette: Marie Jeanne Raherilalao', '<p>Après avoir terminé son doctorat à l\'Université d\'Antananarivo en 2006 et dans le cadre du programme de formation en écologie du WWF-Madagascar, qui a été précurseur de la création de l\'Association Vahatra, sur la répartition et la biogéographie des oiseaux dans les Hautes Terres Centrales de Madagascar et les zones voisines, Marie Jeanne s\'est engagée dans une série d\'études ornithologiques de terrain et de projets liés à la conservation.</p><p> Elle est l\'un des membres fondateurs de l\'Association Vahatra et a joué un rôle majeur comme coéditeur de Malagasy Nature et de la série Guides de la diversité biologique de Madagascar. Notamment en tant que co-auteur d\'un ouvrage sur l\'histoire naturelle des oiseaux endémiques malgaches. Elle a également coédité le livre sur les aires protégées terrestres de Madagascar. En 2008, elle a été recrutée comme maître de conférences dans le département de zoologie et de biodiversité animale de l\'Université d\'Antananarivo, où elle donne des cours sur une grande variété de sujets et est responsable de l\'encadrement d\'un nombre considérable d\'étudiants malgaches diplômés.</p><p> En juin 2021, Marie Jeanne a présenté son mémoire d\'\"Habilitation à Diriger des recherches\" (HDR) à l\'Université d\'Antananarivo, qui est le diplôme scientifique le plus élevé dans le système académique européen et malgache. Le titre de son mémoire, \"Réconcilier la recherche et le renforcement des capacités pour la pour la conservation de la biodiversité à Madagascar\", montre clairement sa vision visionnaire de la recherche à Madagascar et de l\'utilisation des technologies associées pour faire avancer la conservation sur l\'île.</p><p>Nous souhaitons ici souligner sa contribution à Zoologie malgache et aux futures générations de chercheurs malgaches et lui adresser nos félicitations pour la présentation de son HDR.</p>', '<p>After finishing her PhD at The University of Antananarivo in 2006 and in the context of the Ecology Training Program of WWF-Madagascar, which was the precursor to the creation of Association Vahatra, on the distribution and biogeography of birds in the Madagascar Central Highlands and neighboring areas, Marie Jeanne was engaged in a range of different ornithological field studies and different conservation-related projects.</p><p>She is one of the founding members of Association Vahatra and has played a major role as co-editor of Malagasy Nature and the Guides to the biological diversity of Madagascar series, including co-authoring a book on the natural history of Malagasy endemic birds. She also co-edited the Madagascar terrestrial protected areas book.</p><p>In 2008, she was recruited as lecturer in the Zoology and Animal Biodiversity Department at The University of Antananarivo, where she gives courses on a wide diversity of subjects and is responsible for the mentorship of a considerable number of Malagasy graduate students In June 2021.</p><p> Marie Jeanne presented her “Habilitation à Diriger des Recherches” (HDR) memoir at The University of Antananarivo, which is the highest scientific diploma in the European and Malagasy academic system. The title of her memoir, “Reconciling research and capacity building for the conservation of biodiversity in Madagascar”, clearly shows her visionary view of research on Madagascar and using associated data for advancing conservation on the island. </p><p>We wish here to highlight her contribution to Malagasy Zoology and future generations of Malagasy researchers and send our congratulations for presenting her HDR.</p>', '<p>Après avoir terminé son doctorat à l\'Université d\'Antananarivo en 2006 et dans le cadre du programme de formation en écologie du WWF-Madagascar, qui a été précurseur de la création de l\'Association Vahatra, sur la répartition et la biogéographie des oiseaux dans les Hautes Terres Centrales de Madagascar et les zones voisines, Marie Jeanne s\'est engagée dans une série d\'études ornithologiques de terrain et de projets liés à la conservation.</p><p> Elle est l\'un des membres fondateurs de l\'Association Vahatra et a joué un rôle majeur comme coéditeur de Malagasy Nature et de la série Guides de la diversité biologique de Madagascar. Notamment en tant que co-auteur d\'un ouvrage sur l\'histoire naturelle des oiseaux endémiques malgaches. Elle a également coédité le livre sur les aires protégées terrestres de Madagascar. En 2008, elle a été recrutée comme maître de conférences dans le département de zoologie et de biodiversité animale de l\'Université d\'Antananarivo, où elle donne des cours sur une grande variété de sujets et est responsable de l\'encadrement d\'un nombre considérable d\'étudiants malgaches diplômés.</p><p> En juin 2021, Marie Jeanne a présenté son mémoire d\'\"Habilitation à Diriger des recherches\" (HDR) à l\'Université d\'Antananarivo, qui est le diplôme scientifique le plus élevé dans le système académique européen et malgache. Le titre de son mémoire, \"Réconcilier la recherche et le renforcement des capacités pour la pour la conservation de la biodiversité à Madagascar\", montre clairement sa vision visionnaire de la recherche à Madagascar et de l\'utilisation des technologies associées pour faire avancer la conservation sur l\'île.</p><p>Nous souhaitons ici souligner sa contribution à Zoologie malgache et aux futures générations de chercheurs malgaches et lui adresser nos félicitations pour la présentation de son HDR.</p>', '2021-10-01', NULL, NULL, NULL, 'conference/vahatras-event/person-in-focus-marie-jeanne-raherilalao-150', 2, 4),
(151, 'New project', 'New project', 'New project', '<p>Simple project <strong>test</strong></p>', '<p>Simple project <strong>test</strong></p>', '<p>Simple project <strong>test</strong> </p>', '2022-11-29', NULL, NULL, NULL, 'project/grant/new-project-151', 3, 6);

-- --------------------------------------------------------

--
-- Table structure for table `activityimage`
--

DROP TABLE IF EXISTS `activityimage`;
CREATE TABLE IF NOT EXISTS `activityimage` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `idactivity` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `activityimage_idactivity_76641d8a_fk_activity_id` (`idactivity`)
) ENGINE=InnoDB AUTO_INCREMENT=368 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `activityimage`
--

INSERT INTO `activityimage` (`id`, `image`, `idactivity`) VALUES
(1, 'mikea01.webp', 52),
(2, 'nosyhara01.webp', 53),
(3, 'anjozorobe01.webp', 54),
(4, 'kirindymitea01.webp', 55),
(5, 'midongy01.webp', 56),
(6, 'ambatovy01.webp', 57),
(7, 'andranomena01.webp', 58),
(8, 'beanka01.webp', 59),
(9, 'salaryeng.webp', 60),
(10, 'bemanevika01.webp', 61),
(36, 'DSC_0833.webp', 90),
(37, 'IMG_20220815_153540_834.webp', 92),
(38, 'IMG_20220818_143216_656.webp', 92),
(44, 'DSC_0553.webp', 89),
(45, 'DSC_2930.webp', 89),
(48, 'Amena_035.webp', 93),
(50, 'Grosphus-mavo.webp', 74),
(51, 'Ixodes-uilenbergi.webp', 77),
(52, 'Haemaphysalis-galidiae.webp', 75),
(53, 'Platypelis_ranjomena_BTP.webp', 80),
(54, 'Uroplatus_fangorn_MRJ_C5.webp', 81),
(55, 'Uroplatus_fivehy_Mo_MRJ_C5.webp', 82),
(56, 'IMG_9014.webp', 85),
(57, 'DSC_7.webp', 85),
(58, 'DSCN9463.webp', 83),
(61, 'Picture_067.webp', 84),
(62, 'Lab_054.webp', 84),
(63, 'IMG_7685.webp', 86),
(70, 'Tsi_003.webp', 27),
(71, 'Tsi_369.webp', 27),
(72, 'Tsi_405.webp', 27),
(76, 'Agents_avec_empaillage.webp', 29),
(77, 'Beman_079.webp', 29),
(87, 'Amena_027.webp', 35),
(88, 'Amena_037.webp', 35),
(89, 'Amna_363.webp', 35),
(90, 'Andranomena_kids-2010.webp', 35),
(97, 'Field_School_Master_Ambohitantely_5.webp', 39),
(127, 'Lounes-Chikhi.webp', 70),
(133, 'DSC_0434.webp', 62),
(134, 'P1730326.webp', 62),
(135, 'betsiboka-river-26.webp', 6),
(137, '16.webp', 17),
(138, 'marotandrano.webp', 18),
(139, '17.webp', 19),
(140, '11.webp', 20),
(141, '12.webp', 21),
(142, '8.webp', 22),
(143, '19.webp', 23),
(144, '13.webp', 24),
(145, '4.webp', 2),
(146, '1.webp', 3),
(147, '14.webp', 4),
(148, '600px-Marotolana_Ambanja_033.webp', 12),
(149, 'marovato.webp', 13),
(150, 'img_8199.webp', 14),
(151, '6.webp', 15),
(152, '15.webp', 16),
(153, 'petit-village-de-manantenina.webp', 5),
(154, 'zizanie-a-betsiaka.webp', 11),
(156, '18.webp', 7),
(157, '7.webp', 8),
(160, 'ambodivoara.webp', 9),
(161, '3.webp', 10),
(162, '9.webp', 1),
(163, '2.webp', 25),
(164, '10.webp', 26),
(165, 'bat1.webp', 91),
(166, 'bat2.webp', 91),
(167, 'mantidactylus_ambony.webp', 79),
(168, 'Ixodes-uncus.webp', 78),
(169, 'ebook1.webp', 87),
(170, 'ebook2.webp', 87),
(171, 'ebook3.webp', 87),
(172, 'indiancrowhouse.webp', 88),
(177, 'DSC_0359.webp', 48),
(178, 'P1740439.webp', 48),
(179, 'Remplissage_des_pots_Ambohitantely_1.webp', 48),
(180, 'Ixodes-soarimalalae.webp', 76),
(197, 'Field_School_Manager_Ambohitantely_3.webp', 92),
(199, 'DSC_0511.webp', 92),
(200, 'Remplissage_des_pots_Ambohitantely_1.webp', 92),
(201, 'Reboisement_Ambohitantely_1.webp', 92),
(203, '20190408_104059.webp', 90),
(204, '20190409_135213.webp', 90),
(205, 'dsc_0325.webp', 90),
(206, 'DSC_0549.webp', 90),
(207, 'DSC_0894.webp', 90),
(208, 'DSC_0931.webp', 89),
(209, 'DSC_3033.webp', 89),
(210, 'DSC_0839.webp', 89),
(211, 'DSC_0854.webp', 89),
(212, 'House_Crow_RWD2.webp', 88),
(213, '_80212512_img_0284.webp', 88),
(214, 'DSC_0203.webp', 62),
(215, 'DSC_0420.webp', 62),
(216, 'DSC_0882.webp', 62),
(217, 'Bem1.webp', 29),
(218, 'Bem2.webp', 29),
(219, 'Tsim2.webp', 27),
(220, 'IMG_20220820_173441_351.webp', 92),
(221, 'classe-laurence-small-1.webp', 33),
(222, 'paysage-salary-small-4--1.webp', 33),
(223, 'NewPh_041.webp', 42),
(224, 'Tsim_089.webp', 42),
(225, 'Tsim_250.webp', 42),
(226, 'Tsima_119.webp', 42),
(227, 'Tsima_370.webp', 42),
(228, '20190520_130444.webp', 37),
(229, '20190526_101613.webp', 37),
(230, 'DSC_1816.webp', 37),
(231, 'DSC_0532.webp', 37),
(232, 'M2-DBA_001.webp', 38),
(233, 'M2-DBA_226.webp', 38),
(234, 'M2-DBA_254.webp', 38),
(235, 'M2-DBA_366.webp', 38),
(236, 'DSC_3033.webp', 44),
(237, 'DSC_0733.webp', 44),
(238, 'DSC_0931.webp', 44),
(239, 'DSC_0984.webp', 44),
(240, 'Field_School_Ankarana_2.webp', 46),
(241, 'Field_School_Ankarana_3.webp', 46),
(242, 'P1750105.webp', 46),
(243, 'Reserve_Naturelle_Ankarana_1.webp', 46),
(244, 'Ankazo_041.webp', 47),
(245, 'Ankazo_063.webp', 47),
(246, 'Ankazo_141.webp', 47),
(247, 'APR&Friends.webp', 47),
(248, 'Amena_042.webp', 49),
(249, 'Amena_048.webp', 49),
(250, 'Picture_608.webp', 49),
(251, 'Picture_637.webp', 49),
(252, 'Tsiaf_027.webp', 51),
(253, 'Tsiaf_028.webp', 51),
(254, 'Tsiaf_227.webp', 51),
(255, 'Uroplatus_fetsy.webp', 46),
(256, 'Sahambaky_Camp.webp', 34),
(257, 'DSCN2414.webp', 40),
(258, 'fb3.webp', 41),
(260, 'Bea_354.webp', 43),
(261, 'DSC_1811.webp', 92),
(262, 'P1730885.webp', 92),
(265, 'Anodonthyla_boulengeri_AHL.webp', 90),
(266, 'Palleon_nasus_RMF.webp', 90),
(267, 'Agents_avec_empaillage.webp', 31),
(268, 'Bema_283.webp', 31),
(269, 'DSCN6580.webp', 31),
(270, 'Martin_in_lab_(Daraina).webp', 45),
(271, 'Lak_141.webp', 34),
(272, 'Lak_143.webp', 34),
(273, 'Laka_052.webp', 34),
(274, 'Laka_055.webp', 34),
(275, 'Laka_058.webp', 34),
(276, 'Laka_063.webp', 34),
(277, 'Laka_156.webp', 34),
(278, 'Laka_159.webp', 34),
(279, 'Laka_160.webp', 34),
(280, 'P1000029.webp', 44),
(281, 'P1000215.webp', 44),
(282, 'Last_day-FS_Maromizaha.webp', 38),
(283, 'M2-DBA_048.webp', 38),
(284, 'M2-DBA_338.webp', 38),
(285, 'Field_school_1(Tamp).webp', 50),
(286, 'Field_school_2_(Tamp).webp', 50),
(303, 'jeanyves.webp', 144),
(306, 'DSC_2203.webp', 145),
(310, '20190712_152519.webp', 146),
(311, 'IMG-2597.webp', 146),
(312, 'IMG-2799.webp', 146),
(313, 'IMG-2864.webp', 146),
(315, 'DSC_2357_2019.webp', 147),
(316, 'IMG_3510.webp', 148),
(317, 'asms22.webp', 148),
(321, 'symposium12121.webp', 148),
(322, 'sgc1.webp', 142),
(323, 'sgc2.webp', 137),
(324, 'sgc3.webp', 138),
(325, 'sgc4.webp', 139),
(326, 'sgc5.webp', 141),
(328, 'sgc7.webp', 136),
(329, 'sgc8.webp', 132),
(330, 'sgc9.webp', 135),
(331, 'sgc10.webp', 133),
(332, 'sgc11.webp', 134),
(335, '20190525_112646.webp', 145),
(340, 'Conf_2012_Steve_Goodman.webp', 69),
(341, 'g5.webp', 69),
(342, 'Conf_2012_Olivier_Langrand.webp', 68),
(343, 'Lounes-Chikhi.webp', 67),
(344, 'infocusmj.webp', 150),
(345, 'lova.webp', 143),
(346, 'goodmanthanks.webp', 149),
(347, 'IMG-2597.webp', 149),
(348, 'Capture2.webp', 73),
(349, 'Capture.webp', 72),
(350, 'Capture5.webp', 66),
(351, 'Conf_2010_Rebioma.webp', 65),
(352, 'pala12302-fig-0003-m.webp', 64),
(353, 'IMG-2597.webp', 63),
(354, 'Capture7.webp', 131),
(358, 'asms22.webp', 136),
(359, 'img-2669.webp', 146),
(360, '20190710_072524.webp', 146),
(364, 'dsc_0325.webp', 151);

-- --------------------------------------------------------

--
-- Table structure for table `activityinstitution`
--

DROP TABLE IF EXISTS `activityinstitution`;
CREATE TABLE IF NOT EXISTS `activityinstitution` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `idactivity` bigint(20) NOT NULL,
  `idinst` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `activityinstitution_idactivity_ef745460_fk_activity_id` (`idactivity`),
  KEY `activityinstitution_idinst_d34d2727_fk_institution_id` (`idinst`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `activityinstitution`
--

INSERT INTO `activityinstitution` (`id`, `idactivity`, `idinst`) VALUES
(1, 29, 36),
(2, 31, 36),
(3, 87, 14),
(4, 88, 14),
(5, 88, 20),
(6, 89, 21),
(7, 89, 22),
(8, 89, 23),
(9, 90, 24),
(10, 90, 25),
(11, 90, 7),
(12, 91, 26),
(13, 91, 27),
(14, 91, 28),
(15, 93, 29),
(16, 93, 30),
(35, 146, 1),
(36, 65, 32),
(37, 151, 1);

-- --------------------------------------------------------

--
-- Table structure for table `activityperson`
--

DROP TABLE IF EXISTS `activityperson`;
CREATE TABLE IF NOT EXISTS `activityperson` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `idactivity` bigint(20) NOT NULL,
  `idperson` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `activityperson_idactivity_410644dd_fk_activity_id` (`idactivity`),
  KEY `activityperson_idperson_9c78d1db_fk_person_id` (`idperson`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `activityperson`
--

INSERT INTO `activityperson` (`id`, `idactivity`, `idperson`) VALUES
(8, 70, 25),
(12, 74, 48),
(13, 74, 95),
(14, 74, 29),
(15, 74, 78),
(16, 75, 79),
(17, 75, 4),
(18, 76, 79),
(19, 76, 4),
(20, 76, 3),
(21, 77, 79),
(22, 77, 4),
(23, 78, 79),
(24, 78, 4),
(25, 79, 80),
(26, 79, 81),
(27, 79, 82),
(28, 79, 83),
(29, 79, 84),
(30, 79, 85),
(31, 79, 86),
(32, 79, 87),
(33, 79, 88),
(34, 79, 89),
(35, 79, 1),
(36, 80, 88),
(37, 80, 80),
(38, 80, 84),
(39, 80, 1),
(40, 80, 90),
(41, 80, 1),
(42, 80, 91),
(43, 80, 82),
(44, 80, 89),
(45, 81, 92),
(46, 81, 93),
(47, 81, 94),
(48, 81, 88),
(49, 81, 1),
(50, 81, 84),
(51, 81, 89),
(52, 81, 80),
(53, 82, 92),
(54, 82, 93),
(55, 82, 94),
(56, 82, 88),
(57, 82, 1),
(58, 82, 84),
(59, 82, 89),
(60, 82, 80),
(85, 132, 2),
(86, 132, 4),
(88, 132, 391),
(89, 133, 4),
(90, 133, 2),
(91, 134, 2),
(92, 134, 4),
(93, 135, 2),
(94, 135, 4),
(95, 136, 3),
(96, 136, 4),
(97, 137, 4),
(98, 137, 2),
(99, 137, 105),
(100, 138, 105),
(101, 138, 4),
(102, 138, 32),
(103, 138, 2),
(104, 139, 4),
(106, 141, 4),
(107, 142, 4),
(110, 146, 4),
(111, 148, 3),
(112, 148, 4),
(113, 148, 232),
(116, 73, 27),
(117, 72, 26),
(118, 69, 4),
(119, 68, 20),
(120, 67, 25),
(121, 150, 2),
(122, 143, 392),
(123, 149, 4),
(124, 64, 22),
(125, 65, 23),
(126, 66, 24),
(127, 63, 4),
(128, 131, 4),
(129, 131, 18),
(130, 131, 29),
(131, 151, 4),
(132, 151, 2);

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add permission', 1, 'add_permission'),
(2, 'Can change permission', 1, 'change_permission'),
(3, 'Can delete permission', 1, 'delete_permission'),
(4, 'Can view permission', 1, 'view_permission'),
(5, 'Can add group', 2, 'add_group'),
(6, 'Can change group', 2, 'change_group'),
(7, 'Can delete group', 2, 'delete_group'),
(8, 'Can view group', 2, 'view_group'),
(9, 'Can add user', 3, 'add_user'),
(10, 'Can change user', 3, 'change_user'),
(11, 'Can delete user', 3, 'delete_user'),
(12, 'Can view user', 3, 'view_user'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add department', 6, 'add_department'),
(22, 'Can change department', 6, 'change_department'),
(23, 'Can delete department', 6, 'delete_department'),
(24, 'Can view department', 6, 'view_department'),
(25, 'Can add imagetype', 7, 'add_imagetype'),
(26, 'Can change imagetype', 7, 'change_imagetype'),
(27, 'Can delete imagetype', 7, 'delete_imagetype'),
(28, 'Can view imagetype', 7, 'view_imagetype'),
(29, 'Can add institution', 8, 'add_institution'),
(30, 'Can change institution', 8, 'change_institution'),
(31, 'Can delete institution', 8, 'delete_institution'),
(32, 'Can view institution', 8, 'view_institution'),
(33, 'Can add member', 9, 'add_member'),
(34, 'Can change member', 9, 'change_member'),
(35, 'Can delete member', 9, 'delete_member'),
(36, 'Can view member', 9, 'view_member'),
(37, 'Can add person', 10, 'add_person'),
(38, 'Can change person', 10, 'change_person'),
(39, 'Can delete person', 10, 'delete_person'),
(40, 'Can view person', 10, 'view_person'),
(41, 'Can add post', 11, 'add_post'),
(42, 'Can change post', 11, 'change_post'),
(43, 'Can delete post', 11, 'delete_post'),
(44, 'Can view post', 11, 'view_post'),
(45, 'Can add report', 12, 'add_report'),
(46, 'Can change report', 12, 'change_report'),
(47, 'Can delete report', 12, 'delete_report'),
(48, 'Can view report', 12, 'view_report'),
(49, 'Can add typemember', 13, 'add_typemember'),
(50, 'Can change typemember', 13, 'change_typemember'),
(51, 'Can delete typemember', 13, 'delete_typemember'),
(52, 'Can view typemember', 13, 'view_typemember'),
(53, 'Can add typememberimage', 14, 'add_typememberimage'),
(54, 'Can change typememberimage', 14, 'change_typememberimage'),
(55, 'Can delete typememberimage', 14, 'delete_typememberimage'),
(56, 'Can view typememberimage', 14, 'view_typememberimage'),
(57, 'Can add partner', 15, 'add_partner'),
(58, 'Can change partner', 15, 'change_partner'),
(59, 'Can delete partner', 15, 'delete_partner'),
(60, 'Can view partner', 15, 'view_partner'),
(61, 'Can add messageofyear', 16, 'add_messageofyear'),
(62, 'Can change messageofyear', 16, 'change_messageofyear'),
(63, 'Can delete messageofyear', 16, 'delete_messageofyear'),
(64, 'Can view messageofyear', 16, 'view_messageofyear'),
(65, 'Can add memberpostinst', 17, 'add_memberpostinst'),
(66, 'Can change memberpostinst', 17, 'change_memberpostinst'),
(67, 'Can delete memberpostinst', 17, 'delete_memberpostinst'),
(68, 'Can view memberpostinst', 17, 'view_memberpostinst'),
(69, 'Can add image', 18, 'add_image'),
(70, 'Can change image', 18, 'change_image'),
(71, 'Can delete image', 18, 'delete_image'),
(72, 'Can view image', 18, 'view_image'),
(73, 'Can add intervenantfieldschool', 19, 'add_intervenantfieldschool'),
(74, 'Can change intervenantfieldschool', 19, 'change_intervenantfieldschool'),
(75, 'Can delete intervenantfieldschool', 19, 'delete_intervenantfieldschool'),
(76, 'Can view intervenantfieldschool', 19, 'view_intervenantfieldschool'),
(77, 'Can add activity', 20, 'add_activity'),
(78, 'Can change activity', 20, 'change_activity'),
(79, 'Can delete activity', 20, 'delete_activity'),
(80, 'Can view activity', 20, 'view_activity'),
(81, 'Can add location', 21, 'add_location'),
(82, 'Can change location', 21, 'change_location'),
(83, 'Can delete location', 21, 'delete_location'),
(84, 'Can view location', 21, 'view_location'),
(85, 'Can add typeactivity', 22, 'add_typeactivity'),
(86, 'Can change typeactivity', 22, 'change_typeactivity'),
(87, 'Can delete typeactivity', 22, 'delete_typeactivity'),
(88, 'Can view typeactivity', 22, 'view_typeactivity'),
(89, 'Can add visit', 23, 'add_visit'),
(90, 'Can change visit', 23, 'change_visit'),
(91, 'Can delete visit', 23, 'delete_visit'),
(92, 'Can view visit', 23, 'view_visit'),
(93, 'Can add typesubactivity', 24, 'add_typesubactivity'),
(94, 'Can change typesubactivity', 24, 'change_typesubactivity'),
(95, 'Can delete typesubactivity', 24, 'delete_typesubactivity'),
(96, 'Can view typesubactivity', 24, 'view_typesubactivity'),
(97, 'Can add fieldschool', 25, 'add_fieldschool'),
(98, 'Can change fieldschool', 25, 'change_fieldschool'),
(99, 'Can delete fieldschool', 25, 'delete_fieldschool'),
(100, 'Can view fieldschool', 25, 'view_fieldschool'),
(101, 'Can add activityperson', 26, 'add_activityperson'),
(102, 'Can change activityperson', 26, 'change_activityperson'),
(103, 'Can delete activityperson', 26, 'delete_activityperson'),
(104, 'Can view activityperson', 26, 'view_activityperson'),
(105, 'Can add activityinstitution', 27, 'add_activityinstitution'),
(106, 'Can change activityinstitution', 27, 'change_activityinstitution'),
(107, 'Can delete activityinstitution', 27, 'delete_activityinstitution'),
(108, 'Can view activityinstitution', 27, 'view_activityinstitution'),
(109, 'Can add activityimage', 28, 'add_activityimage'),
(110, 'Can change activityimage', 28, 'change_activityimage'),
(111, 'Can delete activityimage', 28, 'delete_activityimage'),
(112, 'Can view activityimage', 28, 'view_activityimage'),
(113, 'Can add publication', 29, 'add_publication'),
(114, 'Can change publication', 29, 'change_publication'),
(115, 'Can delete publication', 29, 'delete_publication'),
(116, 'Can view publication', 29, 'view_publication'),
(117, 'Can add typepublication', 30, 'add_typepublication'),
(118, 'Can change typepublication', 30, 'change_typepublication'),
(119, 'Can delete typepublication', 30, 'delete_typepublication'),
(120, 'Can view typepublication', 30, 'view_typepublication'),
(121, 'Can add publicationdetail', 31, 'add_publicationdetail'),
(122, 'Can change publicationdetail', 31, 'change_publicationdetail'),
(123, 'Can delete publicationdetail', 31, 'delete_publicationdetail'),
(124, 'Can view publicationdetail', 31, 'view_publicationdetail'),
(125, 'Can add publicationauthor', 32, 'add_publicationauthor'),
(126, 'Can change publicationauthor', 32, 'change_publicationauthor'),
(127, 'Can delete publicationauthor', 32, 'delete_publicationauthor'),
(128, 'Can view publicationauthor', 32, 'view_publicationauthor'),
(129, 'Can add sequence', 33, 'add_sequence'),
(130, 'Can change sequence', 33, 'change_sequence'),
(131, 'Can delete sequence', 33, 'delete_sequence'),
(132, 'Can view sequence', 33, 'view_sequence');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$320000$mlr3iEB4PQiubH4xACJkSs$zrt7rptZNosIUB9lfuafEn3KFzaaACEpY/EheokhU3g=', '2022-12-01 12:28:52.096354', 1, 'Vahatra', '', '', 'rotsyvonimanitra@hotmail.com', 1, 1, '2022-09-29 10:57:53.533944');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
CREATE TABLE IF NOT EXISTS `department` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `name`) VALUES
(1, 'Department of Animal Biology'),
(2, 'Department of Water and Forests'),
(3, 'Tierökologie und Naturschutz'),
(4, 'Biological Science Department'),
(5, 'Institut des Sciences et Techniques de l’Environnement (ISTE)'),
(6, 'School of Agronomy, Forest Department');

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(20, 'activities', 'activity'),
(28, 'activities', 'activityimage'),
(27, 'activities', 'activityinstitution'),
(26, 'activities', 'activityperson'),
(25, 'activities', 'fieldschool'),
(19, 'activities', 'intervenantfieldschool'),
(21, 'activities', 'location'),
(22, 'activities', 'typeactivity'),
(24, 'activities', 'typesubactivity'),
(23, 'activities', 'visit'),
(6, 'association', 'department'),
(18, 'association', 'image'),
(7, 'association', 'imagetype'),
(8, 'association', 'institution'),
(9, 'association', 'member'),
(17, 'association', 'memberpostinst'),
(16, 'association', 'messageofyear'),
(15, 'association', 'partner'),
(10, 'association', 'person'),
(11, 'association', 'post'),
(12, 'association', 'report'),
(13, 'association', 'typemember'),
(14, 'association', 'typememberimage'),
(2, 'auth', 'group'),
(1, 'auth', 'permission'),
(3, 'auth', 'user'),
(4, 'contenttypes', 'contenttype'),
(29, 'publications', 'publication'),
(32, 'publications', 'publicationauthor'),
(31, 'publications', 'publicationdetail'),
(30, 'publications', 'typepublication'),
(33, 'sequences', 'sequence'),
(5, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'association', '0001_initial', '2022-11-29 06:47:04.861467'),
(2, 'activities', '0001_initial', '2022-11-29 06:47:16.048200'),
(3, 'activities', '0002_alter_activity_date_alter_activity_slug', '2022-11-29 06:47:18.069126'),
(4, 'contenttypes', '0001_initial', '2022-11-29 06:47:18.835609'),
(5, 'contenttypes', '0002_remove_content_type_name', '2022-11-29 06:47:19.570828'),
(6, 'auth', '0001_initial', '2022-11-29 06:47:45.915841'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-11-29 06:47:46.684392'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-11-29 06:47:47.417898'),
(9, 'auth', '0004_alter_user_username_opts', '2022-11-29 06:47:47.474797'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-11-29 06:47:51.026284'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-11-29 06:47:51.192847'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-11-29 06:47:51.569726'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-11-29 06:47:54.121760'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-11-29 06:47:55.211460'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-11-29 06:47:58.127253'),
(16, 'auth', '0011_update_proxy_permissions', '2022-11-29 06:47:58.216015'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-11-29 06:47:59.054783'),
(18, 'publications', '0001_initial', '2022-11-29 06:48:16.341696'),
(19, 'sequences', '0001_initial', '2022-11-29 06:48:17.669705'),
(20, 'sequences', '0002_alter_sequence_last', '2022-11-29 06:48:18.556166'),
(21, 'sessions', '0001_initial', '2022-11-29 06:48:24.462761'),
(22, 'activities', '0003_alter_activity_date', '2022-11-29 06:49:17.830474'),
(23, 'association', '0002_alter_report_pdf', '2022-11-29 06:49:18.678510'),
(24, 'activities', '0004_alter_activity_date', '2022-11-29 06:50:00.924455'),
(25, 'activities', '0005_delete_intervenantfieldschool_alter_activity_date', '2022-12-01 06:51:32.237600');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('8b7n8riu35xytqlwmrdvxeycxgarhdye', '.eJxVjsEOwiAQRP-FsyGF0kI9evcbyC67WNSAKW2iMf671vSg13lvJvMUHpZ59EvlyScSe6HE7jdDCBfOK6Az5FORoeR5SihXRW60ymMhvh42929ghDp-2q7tUPemhwCNYTUodhQjaNfZ1rBV0RqNuiUbWFMPnVVuQFIhohvY4vdV5VpTyZ7vtzQ9xL55vQGIqj9J:1ozve7:8IDWgz1LzqhwQkSbR-BZ1a1UnozBOWv3WZTAm0OGuZA', '2022-12-13 08:07:15.687022'),
('lkose6gvs91z8whvx31e3z7r0u432ys5', '.eJxVjEsOwiAUAO_C2pBHK78u3XsGArynRQ000CYa490NSRe6nZnMmzm_rbPbGlWXkE1MsMMvCz7eKXeBN5-vhceS15oC7wnfbePngvQ47e3fYPZt7luwCmEcpECMEACtFFERjcGYo9cBkaSRVhBYBDTigl7pIUYrjNKgqE8btZZKdvRcUn2xCT5fhNI_EQ:1p0feB:geT7jIlrtWIb-IgFOfVTZPL0imUx4GrC7in-dVTpzL4', '2022-12-15 09:14:23.919499'),
('zcxrfelr7tpffya4w2ljlv2kxjrt2f30', '.eJxVjEsOwiAUAO_C2pBHK78u3XsGArynRQ000CYa490NSRe6nZnMmzm_rbPbGlWXkE1MsMMvCz7eKXeBN5-vhceS15oC7wnfbePngvQ47e3fYPZt7luwCmEcpECMEACtFFERjcGYo9cBkaSRVhBYBDTigl7pIUYrjNKgqE8btZZKdvRcUn2xCT5fhNI_EQ:1p0igO:nHifTKB257JasujYEA2tqcrPsR14p-ghupB-DnshHJc', '2022-12-15 12:28:52.129446');

-- --------------------------------------------------------

--
-- Table structure for table `fieldschool`
--

DROP TABLE IF EXISTS `fieldschool`;
CREATE TABLE IF NOT EXISTS `fieldschool` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `iddept` bigint(20) DEFAULT NULL,
  `idinst` bigint(20) NOT NULL,
  `idvisit` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fieldschool_iddept_c231946d_fk_department_id` (`iddept`),
  KEY `fieldschool_idinst_93831da0_fk_institution_id` (`idinst`),
  KEY `fieldschool_idvisit_0fb3b620_fk_visit_id` (`idvisit`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fieldschool`
--

INSERT INTO `fieldschool` (`id`, `iddept`, `idinst`, `idvisit`) VALUES
(1, 1, 2, 27),
(2, 4, 16, 27),
(3, 5, 3, 27),
(4, 1, 2, 28),
(5, 4, 16, 28),
(6, 5, 3, 28),
(7, 1, 2, 29),
(8, 1, 2, 30),
(9, 2, 9, 30),
(10, 4, 16, 30),
(11, 5, 3, 30),
(12, 1, 2, 31),
(13, 1, 2, 32),
(14, 4, 16, 32),
(15, 5, 3, 32),
(16, 1, 2, 33),
(17, 4, 16, 33),
(18, NULL, 17, 33),
(19, NULL, 18, 33),
(20, 1, 2, 34),
(21, NULL, 17, 34),
(22, NULL, 18, 34),
(23, 1, 2, 35),
(24, NULL, 18, 35),
(25, 1, 2, 36),
(26, NULL, 17, 36),
(27, 1, 2, 37),
(28, 1, 2, 38),
(29, NULL, 17, 38),
(30, NULL, 19, 38),
(31, 1, 2, 39),
(32, NULL, 5, 39),
(33, 1, 2, 40),
(34, 6, 9, 40),
(35, 1, 2, 41),
(36, 1, 2, 42),
(37, 1, 2, 43),
(38, 1, 2, 44),
(39, 1, 2, 45),
(40, 1, 2, 46),
(41, 1, 2, 47),
(42, NULL, 5, 47),
(43, 1, 2, 48),
(44, 1, 2, 49),
(45, 1, 2, 50),
(46, 6, 9, 50),
(47, 1, 2, 51);

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
CREATE TABLE IF NOT EXISTS `image` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `idtype` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `image_idtype_9ed792c0_fk_imagetype_id` (`idtype`)
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`id`, `name`, `title`, `idtype`) VALUES
(60, 'a1.webp', 'Amna', 4),
(61, 'Avy_166.webp', 'Micro leilahytsara', 4),
(62, 'Bokar_032.webp', 'Bokar 032', 4),
(63, 'Eulemur_coronatus.webp', 'Eulemur coronatus', 4),
(64, 'Alcedo_vintsioides.webp', 'Alcedo vintsioides', 1),
(65, 'Amena_295.webp', 'Amena 295', 1),
(66, 'Copsychus_albospecularis.webp', 'Copsychus albospecularis', 1),
(67, 'Corythornis_madagascariensis.webp', 'Corythornis madagascariensis', 1),
(68, 'Euryceros_prevostii.webp', 'Euryceros prevostii', 1),
(69, 'Monticola_sharpei_female.webp', 'Monticola sharpei female', 1),
(70, 'Neodrepanis_coruscans.webp', 'Neodrepanis coruscans', 1),
(71, 'Sahafina_176.webp', 'Sahafina 176', 1),
(72, 'a2.webp', 'Boophis boehmei', 2),
(73, 'a3.webp', 'Calumma nasutum roosts_AKL', 2),
(74, 'a6.webp', 'Uroplatus phantasticus', 2),
(75, 'Boophis_marojezensis_ZHM.webp', 'Boophis marojezensis ZHM', 2),
(76, 'Furcifer_pardalis.webp', 'Furcifer pardalis', 2),
(78, 'Amna_046.webp', 'Amna 046', 3),
(79, 'Microgale_principula_1.webp', 'Microgale principula 1', 3),
(80, 'Miza_242.webp', 'Miza 242', 3),
(81, 'a7.webp', 'a7', 5),
(82, 'a8.webp', 'a8', 5),
(83, 'Amna_001.webp', 'Amna 001', 5),
(84, 'banniere3.webp', 'banniere3', 5),
(85, 'Bea_354.webp', 'Bea 354', 5),
(86, 'DSC_0153.webp', 'DSC 0153', 5),
(87, 'DSC_0702.webp', 'DSC 0702', 5),
(88, 'DSCN9380.webp', 'DSCN9380', 5),
(89, 'DSCN9463.webp', 'DSCN9463', 5),
(90, 'Landscape_MF_view.webp', 'Landscape MF view', 5),
(91, 'P1760372.webp', 'P1760372', 5),
(92, 'Reserve_Naturelle_Ankarana_2.webp', 'Réserve Naturelle Ankarana 2', 5),
(93, 'Reserve_Naturelle_Ankarana_3.webp', 'Réserve Naturelle Ankarana 3', 5),
(95, 'DSC_0587.webp', 'DSC 0587', 7),
(96, 'IMG_4999.webp', 'IMG 4999', 7),
(97, 'Photos_146.webp', 'Photos 146', 7),
(98, 'Ampas_196.webp', 'Ampas 196', 6),
(100, 'BB_MRT.webp', 'BB MRT', 6),
(101, 'Bea_291.webp', 'Bea 291', 6),
(102, 'IMG_5951.webp', 'IMG 5951', 6),
(103, 'IMG_8773.webp', 'IMG 8773', 6),
(104, 'Insectes_Ankarafa.webp', 'Insectes Ankarafa', 6),
(105, 'MD_029.webp', 'MD 029', 6),
(106, 'aaa_be_primate.webp', 'Microcebus jonahi', 4),
(107, 'Amena_035.webp', 'Amena 035', 7),
(108, 'BEA_113.webp', 'BEA 113', 7),
(112, 'Beman_037.webp', 'Beman 037', 7),
(113, 'IMG_1444.webp', 'IMG 1444', 5),
(114, 'DSC_0553.webp', 'DSC 0553', 5),
(115, 'DSC_0918.webp', 'DSC 0918', 5),
(116, 'Calicalicus_madagascariensis_jpg.webp', 'Calicalicus madagascariensis', 1),
(117, 'Copsychus_albospecularis_oisillons_jpg.webp', 'Copsychus albospecularis oisillons', 1),
(118, 'Coua_olivaceiceps_jpg.webp', 'Coua olivaceiceps ', 1),
(119, 'Falculea_palliata_jpg.webp', 'Falculea palliata ', 1),
(120, 'Upupa_marginata_jpg.webp', 'Upupa marginata ', 1),
(121, 'Xanthomixis_zosterops_jpg.webp', 'Xanthomixis zosterops ', 1),
(122, 'Brookesia_superciliaris_1_jpg.webp', 'Brookesia superciliaris 1 ', 2),
(123, 'Calumma_brevicorne_jpg.webp', 'Calumma brevicorne ', 2),
(124, 'Lycrodryas_pseudogranuliceps_jpg.webp', 'Lycrodryas pseudogranuliceps ', 2),
(125, 'Sanzinia_madagascariensis_1_jpg.webp', 'Sanzinia madagascariensis 1 ', 2),
(126, 'Uroplatus_phantasticus_jpg.webp', 'Uroplatus phantasticus ', 2),
(127, 'Uroplatus_sikorae_jpg.webp', 'Uroplatus sikorae ', 2),
(128, 'Dyscophus_antongili_jpg.webp', 'Dyscophus antongili ', 2),
(129, 'Geochelone_radiata_jpg.webp', 'Geochelone radiata ', 2),
(130, 'Gephiromantis_jpg.webp', 'Gephiromantis ', 2),
(131, 'Eliurus_minor_jpg.webp', 'Eliurus minor ', 3),
(132, 'Gymnuromys_roberti_jpg.webp', 'Gymnuromys roberti ', 3),
(133, 'Hipposideros_commersoni_jpg.webp', 'Hipposideros commersoni ', 3),
(134, 'Myotis_goudoti_jpg.webp', 'Myotis goudoti ', 3),
(135, 'Voalavo_antsahabensis1_jpg.webp', 'Voalavo antsahabensis1 ', 3),
(136, 'Baobab_jpg.webp', 'Baobab ', 5),
(137, 'Cascade_jpg.webp', 'Cascade ', 5),
(138, 'Midongy_jpg.webp', 'Midongy ', 5),
(139, 'Pic_Boby1_jpg.webp', 'Pic Boby1 ', 5),
(140, 'Sakalava_house_jpg.webp', 'Sakalava house ', 5),
(141, 'Sunrise1_jpg.webp', 'Sunrise1 ', 5),
(142, 'Sunset2_JPG.webp', 'Sunset2 JPG', 5),
(143, 'Argema_mittrei_jpg.webp', 'Argema mittrei ', 6),
(144, 'Butterfly2_jpg.webp', 'Butterfly2 ', 6),
(145, 'Butterfly4_jpg.webp', 'Butterfly4 ', 6),
(146, 'Children3_jpg.webp', 'Children3 ', 6),
(147, 'Mushroom04_jpg.webp', 'Mushroom04 ', 6),
(148, 'Mushroom05_jpg.webp', 'Mushroom05 ', 6),
(149, 'Field_School1_jpg.webp', 'Field School1 ', 7),
(151, 'Team13_jpg.webp', 'Team13 ', 7),
(152, 'Team21_jpg.webp', 'Team21 ', 7),
(153, 'Team22_jpg.webp', 'Team22 ', 7),
(154, 'Team51_jpg.webp', 'Team51 ', 7),
(155, 'Team55_jpg.webp', 'Team55 ', 7);

-- --------------------------------------------------------

--
-- Table structure for table `imagetype`
--

DROP TABLE IF EXISTS `imagetype`;
CREATE TABLE IF NOT EXISTS `imagetype` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type_en` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type_fr` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `imagetype`
--

INSERT INTO `imagetype` (`id`, `type`, `type_en`, `type_fr`) VALUES
(1, 'avifauna', 'avifauna', 'avifaune'),
(2, 'herpetofauna', 'herpetofauna', 'herpétofaune'),
(3, 'small mammal', 'small mammal', 'petit mammifère'),
(4, 'primate', 'primate', 'primate'),
(5, 'landscape', 'landscape', 'paysage'),
(6, 'miscellaneous', 'miscellaneous', 'divers'),
(7, 'team', 'team', 'équipe');

-- --------------------------------------------------------

--
-- Table structure for table `institution`
--

DROP TABLE IF EXISTS `institution`;
CREATE TABLE IF NOT EXISTS `institution` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `institution`
--

INSERT INTO `institution` (`id`, `name`) VALUES
(1, 'Association Vahatra'),
(2, 'University of Antananarivo'),
(3, 'University of Fianarantsoa'),
(4, 'University of Mahajanga'),
(5, 'WWF Madagascar'),
(6, 'Strategy Seminar'),
(7, 'Madagascar National Parks'),
(8, 'Indian Ocean Commission'),
(9, 'Ecole Supérieure des Sciences Agronomiques'),
(10, 'Office National pour l\'Environnement (ONE)'),
(11, 'Institut National des Sciences et Techniques Nucléaires'),
(12, 'University of Hamburg'),
(13, 'Kingfisher Group'),
(14, 'Critical Ecosystem Partnership Fund (CEPF)'),
(15, 'Invenergy'),
(16, 'University of Toliara'),
(17, 'University of Kwa-Zulu Natal, South Africa'),
(18, 'University of Venda, South Africa '),
(19, 'CRVOI La Réunion'),
(20, 'Madagascar Fauna and Flora Group '),
(21, 'Duke University'),
(22, 'National Institute of Health (NIH)'),
(23, 'National Science Foundation (NSF)'),
(24, 'Korea International Cooperation Agency (KOICA)'),
(25, 'United Nations Educational, Scientific and Cultural Organization (UNESCO)'),
(26, 'Fonds Européen de Développement Régional (FEDER)'),
(27, 'University of La Reunion'),
(28, 'Processus Infectieux en Milieu Insulaire Tropical (PIMIT)'),
(29, 'Global Challenges Research Fund (GCRF)'),
(30, 'United Kingdom Research and Innovation (UKRI)'),
(31, 'System of Protected Areas of Madagascar (SAPM)'),
(32, 'REBIOMA'),
(33, 'Tany Meva and UNESCO World Heritage program'),
(34, 'CITES'),
(35, 'Ministry of the Environment'),
(36, 'The Peregrine Fund'),
(37, 'Ambatovy-Sherritt International');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
CREATE TABLE IF NOT EXISTS `location` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `name`, `longitude`, `latitude`) VALUES
(1, 'Anjahamarina', 50.35, -15.0833),
(2, 'Ambavala', 49.6167, -16.2),
(3, 'Ambalamanasy', 49.95, -13.7333),
(4, 'Antanimbaribe', 46.85, -17.1833),
(5, 'Manantenina', 47.3167, -24.2833),
(6, 'Belambo', 47.3167, -17.8),
(7, 'Maroambihy', 49.85, -14.5),
(8, 'Analanambe', 49.95, -14.4),
(9, 'Ambodivoara', 47.5167, -18.1667),
(10, 'Ambariotelo', 48.36667, -13.4333),
(11, 'Betsiaka', 49.237267499999, -13.1581959),
(12, 'Marotolana', 49.03333, -14.61667),
(13, 'Marovato', 48.9167, -12.6667),
(14, 'Bemanevika', 47.9333, -16.1833),
(15, 'Ampatakamaroreny', 48.8, -16.4833),
(16, 'Antsiatsiaka', 49.3667, -17.0333),
(17, 'Antsiraka', 49.6167, -16.2667),
(18, 'Marotandrano', 48.70795, -16.42044),
(19, 'Djangoa', 48.3167, -13.7833),
(20, 'Ankaramibe', 48.17956506, -13.9752602),
(21, 'Ankaramikely', 48.1667, -14.0167),
(22, 'Analanatsoa', 49.766667, -14.433333),
(23, 'Maromandia', 48.0833, -14.2167),
(24, 'Ankitsika', 48.3833, -17.3167),
(25, 'Ambarijeby', 47.95, -14.6667),
(26, 'Anjiamangirana', 47.7833, -15.1667),
(27, 'Tsimanampetsotsa', 43.74921, -24.12882),
(28, 'Salary Bay', 43.284246, -22.5547423),
(29, 'Lakato', 48.4333, -19.1833),
(30, 'Andranomena', 44.33333, -21.46667),
(31, 'Ambohitantely', 47.2833, -18.1667),
(32, 'Tampolo Fenérive-Est', 49.9667, -15.7333),
(33, 'Midongy du Sud', 47.0167, -23.5833),
(34, 'Bemaraha', 45.1667, -19.3333),
(35, 'Marojejy', 49.7333, -14.4333),
(36, 'Daraina', 49.6667, -13.2),
(37, 'Ankarana', 48.5, -16.95),
(38, 'Ankazomivady', 47.1833, -20.7667),
(39, 'Andranomay', 47.95, -18.5),
(40, 'Ankaratra', 47.2, -19.4167),
(41, 'Maromiza', 48.45, -18.95),
(42, 'Mikea', 43.3833, -22.5),
(43, 'Nosy Hara', 49.0167, -12.2333),
(44, 'Anjozorobe', 47.8667, -18.4),
(45, 'Kirindy-Mitea', 44.138666112, -20.806163442),
(46, 'Ambatovy', 48.3, -18.8167),
(47, 'Beanka', 44.559567, -17.925304),
(48, 'Andohahela', 46.7, -24.6),
(49, 'Botswana', 23.22740233055, -22.246415281866987);

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
CREATE TABLE IF NOT EXISTS `member` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `mail` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `description_en` longtext COLLATE utf8_unicode_ci,
  `description_fr` longtext COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `idperson` bigint(20) NOT NULL,
  `idtypemember` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `member_idperson_4b45cdf7_fk_person_id` (`idperson`),
  KEY `member_idtypemember_a1701687_fk_typemember_id` (`idtypemember`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `mail`, `description`, `description_en`, `description_fr`, `image`, `idperson`, `idtypemember`) VALUES
(1, 'raselimananaachille@gmail.com', 'Founding member. His fields of interest include herpetology, including systematics, biogeography, ecology and biological evaluation as well as study of environmental impact. Responsible for courses on reptiles and amphibians biology for second year students as well as biogeography, ecological monitoring and ecomorphology for master level students.', 'Founding member. His fields of interest include herpetology, including systematics, biogeography, ecology and biological evaluation as well as study of environmental impact. Responsible for courses on reptiles and amphibians biology for second year students as well as biogeography, ecological monitoring and ecomorphology for master level students.', 'Membre fondateur. Ses champs d’intérêt touchent l’herpétologie en général, incluant la systématique, la biogéographie, l’écologie, l’évaluation biologique et l’étude d’impact environnemental. Responsable de l\'enseignement de la biologie des reptiles et amphibiens en deuxième année ; de la biogéographie, du suivi écologique et de l’éco-morphologie au niveau de Master. Responsable du cours sur le diagnostique biologique au niveau du DESS. ', 'achille.webp', 1, 2),
(2, 'jraherilalao@gmail.com', 'Founding member. She has interests in ornithology including biology, ecology, systematics, biogeography, biological evaluation, and the study of environmental impact. Responsible for teaching of bird biology for second year students as well as evolutionary biology and biodiversity evaluation, especially terrestrial vertebrates for master level students.', 'Founding member. She has interests in ornithology including biology, ecology, systematics, biogeography, biological evaluation, and the study of environmental impact. Responsible for teaching of bird biology for second year students as well as evolutionary biology and biodiversity evaluation, especially terrestrial vertebrates for master level students.', 'Membre fondatrice. Elle s’intéresse à l’ornithologie en général incluant la biologie, l’écologie, la systématique, la biogéographie, l’évaluation biologique et l’étude d’impact environnemental. Responsable de l\'enseignement de la biologie des oiseaux en deuxième année ; de l’évolution biologique et de l’évaluation de la biodiversité surtout les vertébrés terrestres au niveau du Master. ', 'marie_jeanne.webp', 2, 2),
(3, 'voahangysoarimalala@gmail.com', 'Founding member. Her research interests include mammals, especially small mammals and carnivores which includes systematics, biogeography, ecology, biological evaluation and environmental impact study. Responsible for teaching ecology and animal systematics for first and second year students; biodiversity conservation and valorisation for third year students.', 'Founding member. Her research interests include mammals, especially small mammals and carnivores which includes systematics, biogeography, ecology, biological evaluation and environmental impact study. Responsible for teaching ecology and animal systematics for first and second year students; biodiversity conservation and valorisation for third year students.', 'Membre fondatrice. Ses champs d’intérêt dans le domaine de la recherche touchent les mammifères, surtout les petits mammifères et carnivores  incluant la systématique, la biogéographie, l’écologie, l’évaluation biologique et l’étude d’impact environnemental. Responsable de l’enseignement de l’écologie et la systématique animale en première et deuxième années ; la conservation et la valorisation de la biodiversité en troisième année. ', 'voahangy.webp', 3, 2),
(4, 'sgoodman@fieldmuseum.org', ' Founding member. His fields of research interests include several domains such as mammals, bats and birds. He is particularly interested in biology, ecology, systematics, biogeography, paleoecology, etc.', ' Founding member. His fields of research interests include several domains such as mammals, bats and birds. He is particularly interested in biology, ecology, systematics, biogeography, paleoecology, etc.', 'Membre fondateur. ses champs d’intérêt dans le domaine de la recherche touchent les mammifères, surtout les petits mammifères et carnivores  incluant la systématique, la biogéographie, l’écologie, l’évaluation biologique et l’étude d’impact environnemental. Responsable de l’enseignement de l’écologie et la systématique animale en première et deuxième années ; la conservation et la valorisation de la biodiversité en troisième année. ', 'steve.webp', 4, 2),
(5, 'msraharinirina@gmail.com', 'Sabrina joined the association in October 2015.', 'Sabrina joined the association in October 2015.', 'Sabrina a rejoint l\'association en octobre 2015.', 'staff_Sabrina_Raharinirina.webp', 5, 4),
(6, NULL, ' Ledada\r\n\r\nstarted working with the ETP some 29 years ago and transferred to\r\n\r\nVahatra in October 2007. He has helped organize logistics for hundreds\r\n\r\nof field missions to some of the remotest areas on Madagascar.', ' Ledada\r\n\r\nstarted working with the ETP some 29 years ago and transferred to\r\n\r\nVahatra in October 2007. He has helped organize logistics for hundreds\r\n\r\nof field missions to some of the remotest areas on Madagascar.', 'Ledada a commencé à travailler avec l\'ETP il y a environ 29 ans et a été transféré à Vahatra en octobre 2007. Il a aidé à organiser la logistique de centaines de missions sur le terrain dans certaines des régions les plus reculées de Madagascar.', 'staff_Rachel-Ledada.webp', 7, 4),
(7, NULL, 'She has worked with\r\n\r\nVahatra since May 2016.', 'She has worked with\r\n\r\nVahatra since May 2016.', 'Elle travaille pour Vahatra depuis mai 2016.', 'staff_Haingo.webp', 6, 4),
(8, NULL, NULL, NULL, NULL, 'staff_Elisa.webp', 8, 4),
(9, NULL, NULL, NULL, NULL, 'staff_Mara_Avy.webp', 9, 4),
(10, NULL, NULL, NULL, NULL, 'staff_Francois_Tsitindria.webp', 10, 4),
(11, NULL, 'He is actually retired', 'He is actually retired', 'Il est actuellement retraité', 'Pr_Daniel.webp', 11, 1),
(12, NULL, NULL, NULL, NULL, 'Conseil_Ratsifandrihamanana_Nanie.webp', 12, 1),
(13, NULL, 'He died in 2022 ✞', 'He died in 2022 ✞', 'Il est mort en 2022 ✞', 'Conseil_Ratrimoarivony_Guy.webp', 13, 1),
(14, NULL, NULL, NULL, NULL, 'Conseil_Chantal_Andrianarivo.webp', 14, 1),
(15, NULL, NULL, NULL, NULL, 'Conseil_Joelisoa_Ratsirarson.webp', 15, 1),
(16, NULL, NULL, NULL, NULL, 'Jean_Chrysostome_Rakotoary.webp', 16, 1),
(17, NULL, NULL, NULL, NULL, 'Conseil_Raoelina_Andriambololona.webp', 17, 1),
(18, NULL, NULL, NULL, NULL, 'jganzhorn.webp', 18, 1),
(19, NULL, NULL, NULL, NULL, 'none.webp', 19, 1),
(20, NULL, NULL, NULL, NULL, 'AVT_Olivier-Langrand_4944.webp', 20, 1),
(21, NULL, NULL, NULL, NULL, 'Leadership_Polsky_489x489.webp', 21, 1),
(25, NULL, NULL, NULL, NULL, NULL, 99, 3),
(28, NULL, NULL, NULL, NULL, NULL, 101, 3),
(29, NULL, NULL, NULL, NULL, NULL, 102, 3),
(30, NULL, NULL, NULL, NULL, NULL, 103, 3),
(31, NULL, NULL, NULL, NULL, NULL, 104, 3),
(32, NULL, NULL, NULL, NULL, NULL, 105, 3),
(33, NULL, NULL, NULL, NULL, NULL, 106, 3),
(34, NULL, NULL, NULL, NULL, NULL, 107, 3),
(35, NULL, NULL, NULL, NULL, NULL, 108, 3),
(36, NULL, NULL, NULL, NULL, NULL, 109, 3),
(37, NULL, NULL, NULL, NULL, NULL, 110, 3),
(38, NULL, NULL, NULL, NULL, NULL, 111, 3),
(39, NULL, NULL, NULL, NULL, NULL, 112, 3),
(40, NULL, NULL, NULL, NULL, NULL, 113, 3),
(41, NULL, NULL, NULL, NULL, NULL, 114, 3),
(42, NULL, NULL, NULL, NULL, NULL, 115, 3),
(43, NULL, NULL, NULL, NULL, NULL, 116, 3),
(44, NULL, NULL, NULL, NULL, NULL, 117, 3),
(45, NULL, NULL, NULL, NULL, NULL, 118, 3),
(46, NULL, NULL, NULL, NULL, NULL, 119, 3),
(47, NULL, NULL, NULL, NULL, NULL, 120, 3),
(48, NULL, NULL, NULL, NULL, NULL, 121, 3),
(49, NULL, NULL, NULL, NULL, NULL, 122, 3),
(50, NULL, NULL, NULL, NULL, NULL, 123, 3),
(51, NULL, NULL, NULL, NULL, NULL, 124, 3),
(52, NULL, NULL, NULL, NULL, NULL, 125, 3),
(53, NULL, NULL, NULL, NULL, NULL, 126, 3),
(54, NULL, NULL, NULL, NULL, NULL, 127, 3),
(55, NULL, NULL, NULL, NULL, NULL, 128, 3),
(56, NULL, NULL, NULL, NULL, NULL, 129, 3),
(57, NULL, NULL, NULL, NULL, NULL, 130, 3),
(58, NULL, NULL, NULL, NULL, NULL, 131, 3),
(59, NULL, NULL, NULL, NULL, NULL, 132, 3),
(60, NULL, NULL, NULL, NULL, NULL, 133, 3),
(61, NULL, NULL, NULL, NULL, NULL, 134, 3),
(62, NULL, NULL, NULL, NULL, NULL, 135, 3),
(63, NULL, NULL, NULL, NULL, NULL, 136, 3),
(64, NULL, NULL, NULL, NULL, NULL, 137, 3),
(65, NULL, NULL, NULL, NULL, NULL, 138, 3),
(67, NULL, NULL, NULL, NULL, NULL, 140, 3),
(68, NULL, NULL, NULL, NULL, NULL, 141, 3),
(69, NULL, NULL, NULL, NULL, NULL, 142, 3),
(70, NULL, NULL, NULL, NULL, NULL, 143, 3),
(71, NULL, NULL, NULL, NULL, NULL, 144, 3),
(72, NULL, NULL, NULL, NULL, NULL, 145, 3);

-- --------------------------------------------------------

--
-- Table structure for table `memberpostinst`
--

DROP TABLE IF EXISTS `memberpostinst`;
CREATE TABLE IF NOT EXISTS `memberpostinst` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `iddept` bigint(20) DEFAULT NULL,
  `idinst` bigint(20) DEFAULT NULL,
  `idmember` bigint(20) NOT NULL,
  `idpost` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `memberpostinst_iddept_130bb226_fk_department_id` (`iddept`),
  KEY `memberpostinst_idinst_dc6e2b3f_fk_institution_id` (`idinst`),
  KEY `memberpostinst_idmember_ec7fad30_fk_member_id` (`idmember`),
  KEY `memberpostinst_idpost_dfb553ea_fk_post_id` (`idpost`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `memberpostinst`
--

INSERT INTO `memberpostinst` (`id`, `iddept`, `idinst`, `idmember`, `idpost`) VALUES
(1, NULL, 1, 1, 1),
(2, 1, 2, 1, 2),
(3, NULL, 1, 2, 3),
(4, NULL, 1, 2, 4),
(5, NULL, 1, 2, 5),
(6, 1, 2, 2, 2),
(7, NULL, 1, 3, 3),
(8, NULL, 1, 3, 6),
(9, NULL, 1, 3, 7),
(10, 1, 2, 3, 9),
(11, 1, 3, 3, 2),
(12, NULL, 1, 4, 10),
(13, NULL, 1, 4, 11),
(14, NULL, 1, 4, 12),
(15, 1, 2, 4, 13),
(16, 1, 2, 4, 2),
(17, 1, 4, 4, 2),
(18, NULL, 1, 5, 14),
(19, NULL, 1, 6, 15),
(20, NULL, 1, 7, 16),
(21, NULL, 1, 8, 17),
(22, NULL, 1, 8, 18),
(23, NULL, 1, 9, 17),
(24, NULL, 1, 9, 18),
(25, NULL, 1, 10, 17),
(26, NULL, 1, 10, 18),
(27, 1, 2, 11, 2),
(28, NULL, 5, 12, 19),
(29, NULL, NULL, 13, 20),
(30, NULL, NULL, 13, 21),
(31, NULL, 6, 13, 28),
(32, NULL, 7, 14, 22),
(33, NULL, 8, 14, 23),
(34, 2, 9, 15, 2),
(35, NULL, 2, 15, 24),
(36, NULL, 10, 16, 25),
(37, NULL, 11, 17, 25),
(38, 3, 12, 18, 2),
(39, NULL, 13, 19, 26),
(40, NULL, 14, 20, 27),
(41, NULL, 15, 21, 1);

-- --------------------------------------------------------

--
-- Table structure for table `messageofyear`
--

DROP TABLE IF EXISTS `messageofyear`;
CREATE TABLE IF NOT EXISTS `messageofyear` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `year` int(11) DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `description_en` longtext COLLATE utf8_unicode_ci,
  `description_fr` longtext COLLATE utf8_unicode_ci,
  `idmember` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `messageofyear_idmember_2ab1dbf4_fk_member_id` (`idmember`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `messageofyear`
--

INSERT INTO `messageofyear` (`id`, `year`, `description`, `description_en`, `description_fr`, `idmember`) VALUES
(1, 2021, '<blockquote><p>\" After two successive years of anguish in the shadow of the Covid-19 pandemic, living and working in greater serenity during the year 2021 was everyone’s wish and with the hope of catching up with much that could not be done in 2020.</p><p>Unfortunately, the situation has only worsened in 2021, despite the precautions taken at a previously non-imaginable scale to prevent the spread of the disease and the associated vaccination efforts. The impacts of Covid-19 are multiple not only in the domains of health and work, but also redirecting the life and dynamics of society in general, as well as local and international communities.</p><p>With the worry of being contaminated, fear and panic reign everywhere and people are afraid of being in contact with their friends and even families. Superimposed on this is the many individuals that fell sick and worse those that succumbed to the virus. It is a total psychosis. Life has slowed down and hovers in limitless anxiety, without anyone being able to say how and when it will end.</p><p>Here in Madagascar associated with the lack of clear dissemination of information, the situation is largely unknown concerning the prevalence of the disease in Malagasy society and the number of deaths; at the time of writing this message only about 3% of the population of Madagascar has being vaccinated.</p><p>However, we realize that this is not a time for the lighthearted, that is to say to give up hope. Learning to live with the prevailing situation is the best strategy to cross this difficult period. It is in this spirit of harmonizing the way of life, even given the existing conditions, that the Association Vahatra has been able to advance with some level of serenity through the year 2021. The members and students affiliated with the association have been 100% fully vaccinated, some already with boosters, and taking the needed precautions in social contexts to protect better one other and with the intent to complete what was planned to be accomplish in 2021.</p><p>Thus, despite the difficulties and uncertain conditions in which we had to work, the association was able to make numerous important achievements. These include, for example, <strong>large-scale biological inventories</strong>, as part of the BIOCOM project in collaboration with UNESCO with funding from The Korea International Cooperation Agency (KOICA) that were carried out in the protected areas of Montagne des Français in March and in the Marojejy in October and November. In addition, this year we were able to launch an ambitious new project with funding from <strong>Save the Rainforest Sweden</strong> that aims to support the efforts to conserve the Ambohitantely protected area via three different axes: research on aquatic insects; ecological restoration, including a the large-scale installation of firebreaks surrounding the remaining forests; and the establishment of a multifunctional biological station. The Ambohitantely project illustrates the association’s desire to have a broad approach to its interventions directly needed to the management and protection of biodiversity, in addition to what we have been doing for many years concerning research, <strong>dissemination of information on the island’s biodiversity, and human capacity building</strong>.</p><p>Taken together these different aspects help to advance the national perspective on the importance of science and train a whole range of young Malagasy scientists, which in the end is to protect the natural patrimony of the island. In addition, the<strong> Madagascar Protected Areas portal</strong> is up and functioning and a revised version of the three volume titanic project The Terrestrial Protected Areas of Madagascar: Their History, Description and Biota published by Vahatra in 2018 is now in e-book form (see<a href=\" http://www.press.uchicago.edu/ucp/books/publisher/pu3431914_3431915.html\"> http://www.press.uchicago.edu/ucp/books/publisher/pu3431914_3431915.html</a> ).</p><p>In addition, despite a range of Covid-19 restrictions, the staff and students associated with Vahatra presented an HDR memoir, two PhD thesis, and five Masters, as well as a large assortment of scientific articles being published or submitted. Admittedly, the current world health crisis is a nightmare for any institution whatever their field of intervention, but accepting to live with the current situation and finding other solutions to overcome the challenge is the only way forward.</p><p>Let us hope that with the experiences already lived during this past fateful year, we will all be able to face 2022 with a new and positive perspective and with more hope for the future.</p><p>Good luck to all because with a valiant heart nothing is impossible! \"</p></blockquote><p> </p>', '<blockquote><p>\" After two successive years of anguish in the shadow of the Covid-19 pandemic, living and working in greater serenity during the year 2021 was everyone’s wish and with the hope of catching up with much that could not be done in 2020.</p><p>Unfortunately, the situation has only worsened in 2021, despite the precautions taken at a previously non-imaginable scale to prevent the spread of the disease and the associated vaccination efforts. The impacts of Covid-19 are multiple not only in the domains of health and work, but also redirecting the life and dynamics of society in general, as well as local and international communities.</p><p>With the worry of being contaminated, fear and panic reign everywhere and people are afraid of being in contact with their friends and even families. Superimposed on this is the many individuals that fell sick and worse those that succumbed to the virus. It is a total psychosis. Life has slowed down and hovers in limitless anxiety, without anyone being able to say how and when it will end.</p><p>Here in Madagascar associated with the lack of clear dissemination of information, the situation is largely unknown concerning the prevalence of the disease in Malagasy society and the number of deaths; at the time of writing this message only about 3% of the population of Madagascar has being vaccinated.</p><p>However, we realize that this is not a time for the lighthearted, that is to say to give up hope. Learning to live with the prevailing situation is the best strategy to cross this difficult period. It is in this spirit of harmonizing the way of life, even given the existing conditions, that the Association Vahatra has been able to advance with some level of serenity through the year 2021. The members and students affiliated with the association have been 100% fully vaccinated, some already with boosters, and taking the needed precautions in social contexts to protect better one other and with the intent to complete what was planned to be accomplish in 2021.</p><p>Thus, despite the difficulties and uncertain conditions in which we had to work, the association was able to make numerous important achievements. These include, for example, <strong>large-scale biological inventories</strong>, as part of the BIOCOM project in collaboration with UNESCO with funding from The Korea International Cooperation Agency (KOICA) that were carried out in the protected areas of Montagne des Français in March and in the Marojejy in October and November. In addition, this year we were able to launch an ambitious new project with funding from <strong>Save the Rainforest Sweden</strong> that aims to support the efforts to conserve the Ambohitantely protected area via three different axes: research on aquatic insects; ecological restoration, including a the large-scale installation of firebreaks surrounding the remaining forests; and the establishment of a multifunctional biological station. The Ambohitantely project illustrates the association’s desire to have a broad approach to its interventions directly needed to the management and protection of biodiversity, in addition to what we have been doing for many years concerning research, <strong>dissemination of information on the island’s biodiversity, and human capacity building</strong>.</p><p>Taken together these different aspects help to advance the national perspective on the importance of science and train a whole range of young Malagasy scientists, which in the end is to protect the natural patrimony of the island. In addition, the<strong> Madagascar Protected Areas portal</strong> is up and functioning and a revised version of the three volume titanic project The Terrestrial Protected Areas of Madagascar: Their History, Description and Biota published by Vahatra in 2018 is now in e-book form (see<a href=\" http://www.press.uchicago.edu/ucp/books/publisher/pu3431914_3431915.html\"> http://www.press.uchicago.edu/ucp/books/publisher/pu3431914_3431915.html</a> ).</p><p>In addition, despite a range of Covid-19 restrictions, the staff and students associated with Vahatra presented an HDR memoir, two PhD thesis, and five Masters, as well as a large assortment of scientific articles being published or submitted. Admittedly, the current world health crisis is a nightmare for any institution whatever their field of intervention, but accepting to live with the current situation and finding other solutions to overcome the challenge is the only way forward.</p><p>Let us hope that with the experiences already lived during this past fateful year, we will all be able to face 2022 with a new and positive perspective and with more hope for the future.</p><p>Good luck to all because with a valiant heart nothing is impossible! \"</p></blockquote><p> </p>', '<blockquote><p>\" Après deux années successives d\'angoisse dans l\'ombre de la pandémie Covid-19, vivre et travailler plus sereinement durant l\'année 2021 était le souhait de tous, avec l\'espoir de rattraper beaucoup de choses qui n\'ont pas pu être faites en 2020.</p><p>Malheureusement, la situation n\'a fait qu\'empirer en 2021, malgré les précautions prises à une échelle jusqu\'alors inimaginable pour empêcher la propagation de la maladie et les efforts de vaccination associés. Les impacts de Covid-19 sont multiples, non seulement dans les domaines de la santé et du travail, mais aussi en réorientant la vie et la dynamique de la société en général, ainsi que des communautés locales et internationales.</p><p>Avec l\'inquiétude d\'être contaminé, la peur et la panique règnent partout et les gens ont peur d\'être en contact avec leurs amis et même leur famille. À cela s\'ajoutent les nombreuses personnes qui sont tombées malades et, pire encore, celles qui ont succombé au virus. C\'est une psychose totale. La vie s\'est ralentie et plane dans une angoisse sans limite, sans que personne ne puisse dire comment et quand elle va se terminer.</p><p>Ici à Madagascar, en raison de l\'absence d\'une diffusion claire de l\'information, la situation est largement inconnue en ce qui concerne la prévalence de la maladie dans la société malgache et le nombre de décès ; au moment de la rédaction de ce message, seulement 3 % environ de la population de Madagascar a été vaccinée.</p><p>Cependant, nous sommes conscients que ce n\'est pas le moment de perdre espoir. Apprendre à vivre avec la situation qui prévaut est la meilleure stratégie pour traverser cette période difficile. C\'est dans cet esprit d\'harmonisation du mode de vie, même dans les conditions existantes, que l\'Association Vahatra a pu avancer avec une certaine sérénité jusqu\'en 2021. Les membres et les étudiants affiliés à l\'association ont été vaccinés à 100%, certains avec des rappels, et ont pris les précautions nécessaires dans les contextes sociaux pour mieux se protéger les uns les autres et avec l\'intention de compléter ce qui était prévu d\'être accompli en 2021.</p><p>Ainsi, malgré les difficultés et les conditions incertaines dans lesquelles nous avons dû travailler, l\'association a pu réaliser de nombreuses réalisations importantes.</p><p>&nbsp;Il s\'agit par exemple d\'<strong>inventaires biologiques à grande échelle</strong>, dans le cadre du projet BIOCOM en collaboration avec l\'UNESCO et avec le financement de l\'Agence Coréenne de Coopération Internationale (KOICA), qui ont été réalisés dans les aires protégées de la Montagne des Français en mars et du Marojejy en octobre et novembre.&nbsp;</p><p>En outre, cette année, nous avons pu lancer un nouveau projet ambitieux grâce au financement de <strong>Save the Rainforest Sweden</strong>, qui vise à soutenir les efforts de conservation de l\'aire protégée d\'Ambohitantely par le biais de trois axes différents : la recherche sur les insectes aquatiques, la restauration écologique, y compris l\'installation à grande échelle de coupe-feu autour des forêts restantes, et l\'établissement d\'une station biologique multifonctionnelle. Le projet Ambohitantely illustre la volonté de l\'association d\'avoir une approche large de ses interventions directement nécessaires à la gestion et à la protection de la biodiversité, en plus de ce que nous faisons depuis de nombreuses années en matière de recherche, de<strong> diffusion d\'informations sur la biodiversité de l\'île et de renforcement des capacités humaines</strong>.</p><p>&nbsp;Pris ensemble, ces différents aspects contribuent à faire progresser la perspective nationale sur l\'importance de la science et à former toute une série de jeunes scientifiques malgaches, ce qui, au final, permet de protéger le patrimoine naturel de l\'île. En outre, le portail <strong>Madagascar Protected Areas</strong> est opérationnel et une version révisée du projet titanesque en trois volumes The Terrestrial Protected Areas of Madagascar : Their History, Description and Biota publié par Vahatra en 2018 est désormais sous forme de livre électronique (voir <a href=\"http://www.press.uchicago.edu/ucp/books/publisher/pu3431914_3431915.html\">http://www.press.uchicago.edu/ucp/books/publisher/pu3431914_3431915.html</a> ).</p><p>En outre, malgré une série de restrictions Covid-19, le personnel et les étudiants associés à Vahatra ont présenté un mémoire HDR, deux thèses de doctorat et cinq masters, ainsi qu\'un large assortiment d\'articles scientifiques en cours de publication ou soumis. Certes, la crise sanitaire mondiale actuelle est un cauchemar pour toute institution quel que soit son domaine d\'intervention, mais accepter de vivre avec la situation actuelle et trouver d\'autres solutions pour surmonter le défi est la seule voie possible.</p><p>Espérons qu\'avec les expériences déjà vécues au cours de cette dernière année fatidique, nous serons tous en mesure d\'affronter 2022 avec une perspective nouvelle et positive et avec plus d\'espoir pour l\'avenir.</p><p>Bonne chance à tous, car avec un cœur vaillant, rien n\'est impossible !\"&nbsp;</p></blockquote>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `partner`
--

DROP TABLE IF EXISTS `partner`;
CREATE TABLE IF NOT EXISTS `partner` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` longtext COLLATE utf8_unicode_ci,
  `description_en` longtext COLLATE utf8_unicode_ci,
  `description_fr` longtext COLLATE utf8_unicode_ci,
  `link` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isLink` tinyint(1) NOT NULL,
  `idinst` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `partner_idinst_630ec2e1_fk_institution_id` (`idinst`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `partner`
--

INSERT INTO `partner` (`id`, `description`, `description_en`, `description_fr`, `link`, `logo`, `isLink`, `idinst`) VALUES
(1, 'working for the creation and delimitation of new protected areas on Madagascar.', 'working for the creation and delimitation of new protected areas on Madagascar.', 'contribution à la création et à la délimitation des nouvelles Aires Protégées à Madagascar.', 'https://protectedareas.mg/', 'protected-areas.webp', 0, 31),
(2, ' helping with the establishment of a Biodiversity Business Operational Program (BBOP)', ' helping with the establishment of a Biodiversity Business Operational Program (BBOP)', 'contribution dans la mise en œuvre du BBOP (Biodiversity Business Operational Program)', 'https://ambatovy.com/en/', 'ambatovy.webp', 0, 37),
(3, 'Specialist in data exploitation and tools development for the management and conservation through modeling based on scientific information on biodiversity and ecological data.', 'Specialist in data exploitation and tools development for the management and conservation through modeling based on scientific information on biodiversity and ecological data.', 'Spécialiste dans l\'exploitation des données et dans le développement des outils au service de la gestion et de la conservation à travers la modélisation basée sur des informations scientifiques sur la biodiversité et les données écologiques.', 'https://www.rebioma.org/', 'rebioma.webp', 0, 32),
(4, 'biological evaluation and analysis of human pressures in a new UNESCO site.', 'biological evaluation and analysis of human pressures in a new UNESCO site.', 'Evaluation éco-biologique et analyse des pressions, des menaces et des potentialités.', 'https://tanymeva.org/', 'tanymeva.webp', 0, 33),
(5, 'scientific aid in evaluating biodiversity and training of field agents.', 'scientific aid in evaluating biodiversity and training of field agents.', ' Evaluation éco-biologique et analyse des pressions, des menaces et des potentialités – contribution à l’appui scientifique et à la formation des agents de PNM(Parcs National de Madagascar).', 'https://www.parcs-madagascar.com/', 'mnp.webp', 0, 7),
(6, ' helping with the compilation of data concerning Malagasy taxa.', ' helping with the compilation of data concerning Malagasy taxa.', 'Contribution à la compilation des données pour la CITES à travers l’appui en matière d’information au Secrétariat Permanent, à l’autorité scientifique et à l’organe de gestion.', 'https://cites.org/eng', 'cites.webp', 0, 34),
(7, ' helping with the preparation of national report for the Convention on Biodiversity.', ' helping with the preparation of national report for the Convention on Biodiversity.', ' contribution dans la préparation du rapport national pour la CDB (Convention sur la Diversité Biologique). ', 'https://www.environnement.mg/', 'logo-medd-presidence.webp', 0, 35),
(8, 'Capacity building for conservation agents and students. This project is generously funded by Helmsley Charitable Trust (HCT)', 'Capacity building for conservation agents and students. This project is generously funded by Helmsley Charitable Trust (HCT)', 'Renforcement de capacité des agents de conservation et des étudiants - Ce projet est généreusement financé par Helmsley Charitable Trust.', 'https://www.peregrinefund.org/', 'peregrine.webp', 0, 36);

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
CREATE TABLE IF NOT EXISTS `person` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=403 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`id`, `name`, `username`, `title`) VALUES
(1, 'Raselimanana', 'Achille P.', 'Pr.'),
(2, 'Raherilalao', 'Marie Jeanne', 'Dr.'),
(3, 'Soarimalala', 'Voahangy', 'Dr.'),
(4, 'Goodman', 'Steven M.', 'Pr.'),
(5, 'Raharinirina', 'Sabrina', 'Ms.'),
(6, 'Ratsirahaingotiana', 'Sandra Cathy', 'Ms.'),
(7, 'Razafindravao', 'Rachel (Ledada)', 'Mr.'),
(8, 'Malaimbolohitsy', 'Elisa', 'Mr.'),
(9, 'Avisoa', 'Mara', 'Mr.'),
(10, 'Tsitindria', 'François', 'Mr.'),
(11, 'Rakotondravony', 'Daniel', 'Pr.'),
(12, 'Ratsifandrihamanana', 'Nanie', 'Ms.'),
(13, 'Ratrimoarivony ✞', 'Guy', 'General'),
(14, 'Andrianarivo', 'Chantal', 'Ms.'),
(15, 'Ratsirarson', 'Joelisoa', 'Pr.'),
(16, 'Rakotoary', 'Jean Chrysostome', 'Mr.'),
(17, 'Andriambololona', 'Raoelina', 'Pr.'),
(18, 'Ganzhorn', 'Jörg U.', 'Pr.'),
(19, 'Goodman', 'Paul', 'Mr.'),
(20, 'Langrand', 'Olivier', 'Mr.'),
(21, 'Polsky', 'Michael', 'Mr.'),
(22, 'Ranivoharimanana', 'Lovasoa', 'Ms.'),
(23, 'REBIOMA', 'Equipe', ''),
(24, 'Ratsimbazafy', 'Jonah', 'Mr.'),
(25, 'Chikhi', 'Lounès', 'Mr.'),
(26, 'Rakotondratsimba', 'Mbola', 'Ms.'),
(27, 'Douglas', 'Michael', 'Dr.'),
(28, 'Ralison', 'J.', NULL),
(29, 'Wilmé', 'L.', NULL),
(31, 'Gardner', 'Charlie J.', NULL),
(32, 'Andrianarimisa', 'Aristide', NULL),
(33, 'Andrianjakarivelo', 'Vonjy', NULL),
(34, 'Rakotomalala', 'Zafimahery', NULL),
(35, 'Anjeriniaina', 'Mirana', NULL),
(36, 'Rakotondravony', 'Hery A.', NULL),
(37, 'Irwin', 'Mitchell T.', NULL),
(38, 'Raharison', 'Jean-Luc', NULL),
(39, 'Roux', 'Fabrice', NULL),
(40, 'Bejoma', 'Benitoto', NULL),
(41, 'Cheban', 'Saoly Alfred', NULL),
(42, 'Rejo-Fienena', 'Félicitée', NULL),
(43, 'Tostain', 'Serge', NULL),
(44, 'Maminirina', 'Claudette P.', NULL),
(45, 'Appleton', 'Belinda', NULL),
(46, 'Bradman', 'Helen M.', NULL),
(47, 'Christidis', 'Les', NULL),
(48, 'Lourenço', 'Wilson R.', NULL),
(49, 'Razafindratsita', 'Vololontiana', NULL),
(50, 'Zack', 'Steve', NULL),
(53, 'Griffiths', 'Owen', NULL),
(54, 'Barratt', 'Nicola', NULL),
(55, 'Lashaway', 'Caleb', NULL),
(56, 'Rai', 'Ashutosh', NULL),
(57, 'Molou', 'Irfane', NULL),
(58, 'Kartchner', 'Zachary', NULL),
(59, 'Holley', 'Aidan', NULL),
(60, 'Bechtolsheim', 'Matthias von', NULL),
(61, 'Renoul', 'Julien P.', NULL),
(62, 'Dickinson', 'Steven', NULL),
(63, 'Berner', 'Pierre O.', NULL),
(64, 'Phillipson', 'Peter B.', NULL),
(65, 'Lowry II', 'Porter P.', NULL),
(66, 'AndriamahMartin farivo', 'Lalao', NULL),
(67, 'Antilahimena', 'Patrice', NULL),
(68, 'Birkinshaw', 'Christopher', NULL),
(69, 'Rakotonirina', 'Jean Claude', NULL),
(70, 'Rall', 'Johannes L.', NULL),
(71, 'Andriamanamihaja', 'Hasina', NULL),
(72, 'Ravelomanana', 'Tsilavina', NULL),
(73, 'Raheriarisena', 'Martin', NULL),
(74, 'Ralison', 'José M.', NULL),
(75, 'Mass', 'Vanessa', NULL),
(76, 'Rakotondratsimba', 'Gilbert', NULL),
(77, 'Benstead', 'Jonathan P.', NULL),
(78, 'Waeber', '', NULL),
(79, 'Apanaskevich', 'D. A.', NULL),
(80, 'Scherz', 'Mark D.', NULL),
(81, 'Rasolonjatovo', 'Safidy M.', NULL),
(82, 'Köhler', 'J.', NULL),
(83, 'Rancilhac', 'L.', NULL),
(84, 'Rakotoarison', 'Andolalao', NULL),
(85, 'Ohler', 'A.', NULL),
(86, 'Preick', 'M.', NULL),
(87, 'Hofreiter', 'M.', NULL),
(88, 'Glaw', 'F.', NULL),
(89, 'Vences', 'Miguel', NULL),
(90, 'Crottini', 'Angelica', NULL),
(91, 'Andreone', 'F.', NULL),
(92, 'Ratsoavina', 'F. M.', NULL),
(93, 'Vieites', 'David R.', NULL),
(94, 'Haalitschek', 'O.', NULL),
(95, 'Rossi', 'A.', NULL),
(99, 'ANDRIANAIVO', 'Barivelo Tony David', NULL),
(101, 'ANDRIANASOLO', 'Rado Mampionona', NULL),
(102, 'ANDRIANIAINA', 'François Angelo', NULL),
(103, 'ANDRIANOELINA FITIA', 'Lofontsiriniaina', NULL),
(104, 'ANDRINIAINA RANDRENJARISON', 'Hermann Rico', NULL),
(105, 'FALIARIVOLA', 'Manoa Lahatriniaina', NULL),
(106, 'INGADY', 'Malalanirina Zo Léopolla', NULL),
(107, 'KOFOKY', 'Amyot', NULL),
(108, 'MAMINIRINA', 'Claudette Patricia', NULL),
(109, 'NOROALINTSEHENO', 'Lalarivoniaina Olivà Santarni', NULL),
(110, 'RABARISON', 'Hajatiana', NULL),
(111, 'RABEARISOA', 'Pierre Angelo', NULL),
(112, 'RAHARINORO', 'Njaratiana Anick', NULL),
(113, 'RAJEMISON', 'Faneva Iharantsoa', NULL),
(114, 'RAKOTOARIVELO', 'Andrinajoro Rianarivola', NULL),
(115, 'RAKOTOMANGA', 'Malala Nirina', NULL),
(116, 'RAKOTOMANGA', 'Manoa Gaël', NULL),
(117, 'RAKOTONANDRASANA', 'Ravo Eddy Nirina', NULL),
(118, 'RAKOTONDRAMANANA', 'Claude Fabienne', NULL),
(119, 'RAKOTOZAFY', 'Lovasoa Manuelle Sylviane', NULL),
(120, 'RAMAMONJISOA', 'Dina Lydia', NULL),
(121, 'RAMANANA', 'Tojomanana Landryh', NULL),
(122, 'RAMASINATREHINA', 'Nasolo Seheno', NULL),
(123, 'RAMASINDRAZANA', 'Beza', NULL),
(124, 'RANDRIAMAHERIJAONA', 'Sanjiarizaha', NULL),
(125, 'RANDRIAMANDIMBIHAZO', 'Rindra', NULL),
(126, 'RANDRIAMORIA', 'Toky Maheriniaina', NULL),
(127, 'RANDRIANANTOANDRO', 'Njarasoa Claude Aimé', NULL),
(128, 'RAOELINJANAKOLONA', 'Nasandratra Nancia', NULL),
(129, 'RASOANORO', 'Mercia', NULL),
(130, 'RASOMA', 'Juliana', NULL),
(131, 'RATRIMONANARIVO', 'Harimalala Fanja', NULL),
(132, 'RAZAFINDRANAIVO', 'Simplice', NULL),
(133, 'ZAFINDRANORO', 'Harimpitia Haridas', NULL),
(134, 'Rasolobera', 'Fifaliantsoa', NULL),
(135, 'Ranaivoson', 'Tamby Nasaina', NULL),
(136, 'Manana', 'Christian', NULL),
(137, 'Rakotoarimalala', 'Fandresena', NULL),
(138, 'Botosemily', 'Nomenjanahary', NULL),
(140, 'Rakotoarisoa', 'Fanasina Elia', NULL),
(141, 'Rasoarimalala', 'Maminirina Sandra', NULL),
(142, 'Radovimiandrinifarany', 'Todisoa', NULL),
(143, 'Razafimanantsoa', 'Tsiky Mamy', NULL),
(144, 'Razafimandimby', 'Lanjavola', NULL),
(145, 'Rasoarimanana Rajoniaina', 'Tantely', NULL),
(146, 'Radasimalala', 'Vonjisoa', NULL),
(147, 'Tahinarivony', 'Jacquis A.', NULL),
(148, 'Pruvot', 'Yverlin Z. M', NULL),
(149, 'Rene de Roland', 'Lily-Arison', NULL),
(150, 'Rakotondratsima', 'Marius', NULL),
(151, 'Razafimanjato', 'Gilbert', NULL),
(152, 'Andriamalala', 'Tolojanahary', NULL),
(153, 'Randrianjafiniasa', 'Donatien', NULL),
(154, 'Razafindrakoto', 'Yvette', NULL),
(155, 'Rabarisoa', 'Rivo', NULL),
(156, 'Raolihanitrasina', 'Salohy E.', NULL),
(157, 'Raobson', 'Estelle', NULL),
(158, 'Rajemison', 'Balsama', NULL),
(159, 'Todilahy', 'Lomeris J.', NULL),
(161, 'Randrianarivelojosia', 'Milijaona', NULL),
(162, 'Benjara', 'Armand', NULL),
(163, 'Tortosa', 'Pablo', NULL),
(164, 'Douglass', 'Kristina', NULL),
(165, 'Godfrey', 'Laurie R.', NULL),
(166, 'Burney', 'David A.', NULL),
(167, 'Rasolondrainy', 'Tanambelo', NULL),
(168, 'Ramiadantsoa', 'Tanjona', NULL),
(169, 'Solofondranohatra', 'Cédrique L.', NULL),
(170, 'Razanatsoa', 'Estelle', NULL),
(171, 'Virah-Sawmy', 'Malika', NULL),
(172, 'Woodborne', 'Stephan', NULL),
(173, 'Callanan', 'Caitlyn', NULL),
(174, 'Gillson', 'Lindsey', NULL),
(175, 'Voarintsoa', 'Ny Riavo G.', NULL),
(176, 'Ramarolahy', 'Francine Mirya', NULL),
(177, 'Rakotozandry', 'Ravoniaina', NULL),
(178, 'Ranaivosoa', 'Voajanahary', NULL),
(179, 'Rasolofomanana', 'Nadia', NULL),
(180, 'Hekkala', 'Evon', NULL),
(181, 'Samonds', 'Karen E.', NULL),
(182, 'Peterson', 'Faina', NULL),
(183, 'Burns', 'Stephen J.', NULL),
(184, 'Crowley', 'Brooke E.', NULL),
(185, 'Scroxton', 'Nick', NULL),
(186, 'McGee', 'David', NULL),
(187, 'Sutherland', 'Michael R.', NULL),
(188, 'Rasolonjatovo', 'Harimanjaka A. M.', NULL),
(189, 'Muldoon', 'Kathleen', NULL),
(190, 'Rakotoarijaona', 'Mamy', NULL),
(191, 'Rahantaharivao', 'Noromamy J.', NULL),
(192, 'Schwartz', 'Gary T.', NULL),
(193, 'King', 'Stephen', NULL),
(194, 'Nomenjanahary', 'Eva Stela', NULL),
(195, 'Benjamin Z.', 'Freed', NULL),
(196, 'Dollar', 'Luke J.', NULL),
(197, 'Randrianasy', 'Jeannot', NULL),
(198, 'Tovondrazane', 'Camille A.', NULL),
(199, 'Holède', 'Bin I.', NULL),
(200, 'Andriatsiaronandroy', 'Ricardo R.', NULL),
(202, 'Razanakoto', 'Thierry', NULL),
(203, 'Rabemananjara', 'Zo', NULL),
(204, 'Ravaoherinavalona', 'Rota', NULL),
(205, 'Roger', 'Edmond', NULL),
(206, 'Rakouth', 'Bakolimalala', NULL),
(207, 'Ravaomanalina', 'Bako Harisoa', NULL),
(208, 'Walesiak', 'Michał', NULL),
(209, 'Mittermeier', 'John C.', NULL),
(210, 'Wright', 'Dale R.', NULL),
(211, 'Colyn', 'Robin', NULL),
(212, 'Gardner', 'Brett', NULL),
(213, 'Jocque', 'Merlijn', NULL),
(214, 'Kemp', 'Luke', NULL),
(215, 'Rene de Roland', 'Angelinah', NULL),
(216, 'Slootmaekers', 'Dan', NULL),
(217, 'Glos', 'Julian', NULL),
(218, 'Kasola', 'Charles', NULL),
(219, 'Atrefony', 'Florent', NULL),
(220, 'Louis', 'Fisy', NULL),
(221, 'Odilon', 'Germany Nicolas', NULL),
(222, 'Ralahinirina', 'Romialde Gabriel', NULL),
(224, 'Menjanahary', 'Tahina', NULL),
(225, 'Ratovonamana', 'Yedidya R.', NULL),
(226, 'Lobón-Rovira', 'Javier', NULL),
(227, 'Belluardo', 'Francesco', NULL),
(228, 'Rasoazanany', 'Malalatiana', NULL),
(229, 'Rosa', 'Gonçalo M.', NULL),
(231, 'Razafimahatratra', 'Marius', NULL),
(232, 'Vololona', 'Judith', NULL),
(233, 'Ramamonjisoa', 'Ralalaharisoa Z.', NULL),
(234, 'Rasoamanana', 'Elysée N.', NULL),
(235, 'Ramavovololona', 'Perle', NULL),
(236, 'Castillon', 'Jean-Philippe', NULL),
(237, 'Rajaovelona', 'Landy R.', NULL),
(238, 'Rajerison', 'Minoarisoa', NULL),
(240, 'Razarazafy', 'Duvivier', NULL),
(241, 'Razafimanantsoa', 'Tsiresy M.', NULL),
(242, 'Ravelomanantsoa', 'Ny Anjara F.', NULL),
(243, 'Razafimalala', 'Fanomezantsoa', NULL),
(244, 'Ranivo', 'Julie', NULL),
(245, 'Reher', 'Stephanie', NULL),
(246, 'Schoroth', 'Marie', NULL),
(247, 'Dausmann', 'Kathrin', NULL),
(248, 'Randriamanana', 'Jean P.', NULL),
(249, 'Razafindramasy', 'Onjaniaina G.', NULL),
(250, 'Oninjatovo', 'Radonirina H.', NULL),
(251, 'Razakafamantanantsoa', 'Antso', NULL),
(252, 'Randrianarisata', 'Mandaniaina D. M.', NULL),
(253, 'Benjamina', 'Gaëtan S.', NULL),
(254, 'Raharinirina', 'Deborah', NULL),
(256, 'Jao', 'Nantenaina M.', NULL),
(257, 'Raharisoa', 'David M.', NULL),
(258, 'Rakotovao', 'Frasquita', NULL),
(259, 'Rafanoharana', 'James', NULL),
(260, 'Rasolofoniaina', 'Bako', NULL),
(261, 'Razafy', 'Prisca', NULL),
(262, 'Razafimahatratra', 'Emilienne', NULL),
(263, 'Kappeler', 'Peter M.', NULL),
(264, 'Rafilipo', 'Luckah A.', NULL),
(265, 'Fidy', 'Jean François S. N.', NULL),
(266, 'Beny', 'Makboul', NULL),
(267, 'Maeder', 'Muriel N.', NULL),
(268, 'Raherinjafy', 'Rogelin', NULL),
(269, 'Andriamahefa', 'Heritiana', NULL),
(270, 'Rasoanaivo', 'Niry S.', NULL),
(271, 'Ranirison', 'Patrick', NULL),
(272, 'Gautier', 'Laurent', NULL),
(273, 'Rakotomalala', 'J. E.', NULL),
(274, 'Proctor', 'S.', NULL),
(275, 'Rakotondraparany', 'F.', NULL),
(276, 'Raharison', 'J. L.', NULL),
(277, 'Cumberlidge', 'N.', NULL),
(278, 'Rasamy Razanabolana', 'J.', NULL),
(279, 'Ranaivoson', 'C. H.', NULL),
(280, 'Randrianasolo', 'H. H.', NULL),
(281, 'Sayer', 'C.', NULL),
(282, 'Máiz-Tomé', 'L.', NULL),
(283, 'Van Damme', 'D.', NULL),
(284, 'Darwall', 'W. R. T.', NULL),
(285, 'Beaucournu', 'Jean Claude', NULL),
(286, 'Boyer', 'S.', NULL),
(287, 'ANDRINIAINA', 'H. A.', NULL),
(288, 'Gauthier', 'N. E.', NULL),
(289, 'Ravaojanahary', 'F. F.', NULL),
(290, 'Sylvestre', 'M. H.', NULL),
(292, 'Bamford', 'A.', NULL),
(293, 'Rasamimanana', 'Notahinjanahary', NULL),
(294, 'Ramahatratra', 'Edouard', NULL),
(295, 'Ranaivonasy', 'Jeannin', NULL),
(296, 'Richard', 'Alison', NULL),
(297, 'Jaonarisoa', 'Enafa', NULL),
(298, 'Youssouf Jacky', 'Ibrahim A.', NULL),
(299, 'Fiorentino', 'Isabella', NULL),
(300, 'Mahereza', 'Sibien', NULL),
(301, 'Sauther', 'Michelle', NULL),
(302, 'Efitiria', '', NULL),
(303, 'Rahendrimanana', 'José C.', NULL),
(304, 'Randrianandrasana', 'Andry S.', NULL),
(305, 'Efitroarany', '', NULL),
(306, 'Rafarasoa', 'Lala S;', NULL),
(307, 'Ranarilalatiana', 'Tolotra', NULL),
(308, 'Andrianantoandro', 'Aina', NULL),
(309, 'Ravaomanarivo', 'Raveloson', NULL),
(310, 'Razafimahatratra', 'Bertrand', NULL),
(311, 'Bader', 'Elias', NULL),
(312, 'Acácio', 'Marta', NULL),
(313, 'Monadjem', 'Ara', NULL),
(314, 'Le Minter', 'Gildas', NULL),
(315, 'Lagadec', 'Erwan', NULL),
(316, 'Jasper', 'Louise D.', NULL),
(317, 'Tovondrafale', 'Tsimihole', NULL),
(318, 'Razakamanana', 'Théodore', NULL),
(319, 'Hiroko', 'Koike', NULL),
(320, 'Rasoamiaramanana', 'Armand', NULL),
(321, 'Vorontsova', 'Maria S.', NULL),
(322, 'Rakotoarisoa', 'Solofo E.', NULL),
(323, 'Dittmann', 'Marie T.', NULL),
(324, 'Dammhahn', 'Melanie', NULL),
(325, 'Robert', 'Vincent', NULL),
(326, 'Borkent', 'Art', NULL),
(327, 'Ramamonjisoa', 'Juliot', NULL),
(328, 'Cheke', 'Anthony S.', NULL),
(329, 'Rocamora', 'Gérard', NULL),
(330, 'Schoeman', 'Corrie', NULL),
(331, 'Ralisata', 'Mahefatiana', NULL),
(332, 'Wilkinson', 'David A.', NULL),
(333, 'Beral', 'Marina', NULL),
(334, 'Dietrich', 'Muriel', NULL),
(335, 'Andriamamonjy', 'Aldus', NULL),
(336, 'Randalana', 'Roger', NULL),
(337, 'Middleton', 'Gregory J.', NULL),
(338, 'Radimilahy', 'Chantal', NULL),
(339, 'Andrianaivoarivony', 'Rafolo', NULL),
(340, 'Rasoarifetra', 'Bako', NULL),
(341, 'Rakotozafy', 'Lucien M. A.', NULL),
(342, 'Chatelain', 'Cyrille', NULL),
(343, 'Hanitrarivo', 'Mitia R.', NULL),
(344, 'Rakotozafy', 'Brice F. L.', NULL),
(345, 'Bolliger', 'Ralph', NULL),
(346, 'Luino', 'Iacopo', NULL),
(348, 'Hanitrarivo', 'Riambola M.', NULL),
(349, 'Rasolofo', 'Nathalie', NULL),
(350, 'Ravelomanana', 'Andrianjaka', NULL),
(351, 'Fisher', 'Brian L.', NULL),
(352, 'Randriandimbimahazo', 'Rindra', NULL),
(353, 'Markolf', 'Matthias', NULL),
(354, 'Lührs', 'Mia-Lana', NULL),
(355, 'Thalmann', 'Urs', NULL),
(356, 'Andriaharimalala', 'Tahiana', NULL),
(357, 'Rajeriarison', 'Charlotte', NULL),
(358, 'Letsara', 'Rokiman', NULL),
(359, 'Almeda', 'Frank', NULL),
(360, 'Rakotoarison', 'Fenonirina', NULL),
(362, 'Chanu', 'Lalandy', NULL),
(363, 'Goetze', 'Dethardt', NULL),
(364, 'Thorén', 'Sandra', NULL),
(365, 'Porembski', 'Stefan', NULL),
(366, 'Radespiel', 'Ute', NULL),
(367, 'Schnoell', 'Anna V.', NULL),
(368, 'Sam', 'The Seing', NULL),
(369, 'Rakotonavalona', 'Andrilalao M.', NULL),
(370, 'Fatroandrianjafinonjasolomiovazo', 'Tolojanahary N. L.', NULL),
(371, 'Rasoamampionona', 'Noromalala R.', NULL),
(373, 'Parent', 'Sara N.', NULL),
(374, 'Ranarijaona', 'Hery Lisy T.', NULL),
(375, 'Nantenaina', 'Donald A.', NULL),
(376, 'Andrianasetra', 'Georges S.', NULL),
(377, 'Barthélémy', 'Daniel', NULL),
(378, 'Caraglio', 'Yves', NULL),
(379, 'Edelin', 'Claude', NULL),
(380, 'Rasoma', 'Rahantavololona V. J', NULL),
(381, 'Ranivoarivelo', 'Soazara', NULL),
(382, 'Marquard', 'Matthias', NULL),
(383, 'Ramilijaona', 'Olga R.', NULL),
(384, 'Rakotomalala', 'Domoina', NULL),
(385, 'Callmander', 'Martin', NULL),
(386, 'Nusbaumer', 'Louis', NULL),
(387, 'Herbert', 'David G.', NULL),
(388, 'Vincke', 'Xavier', NULL),
(389, 'Rakotondranary', 'Jacques', NULL),
(390, 'steve jobs', 'ss', NULL),
(391, 'Rabenandrasana', 'C.', NULL),
(392, 'Lovanomenjanahary', 'Marline', NULL),
(393, 'scdsd', 'cdsc', NULL),
(395, 'test', 'Testing', NULL),
(396, 'test', 'Tahina', NULL),
(397, 'Wohlhauser', 'Sébastien', NULL),
(398, 'Dijkstra', 'Klaas-Douwe B.', NULL),
(399, 'Cohen', 'Callan', NULL),
(400, 'Peeters', 'Christian', NULL),
(402, 'Jungers', 'William L.', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
CREATE TABLE IF NOT EXISTS `post` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_en` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_fr` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `name`, `name_en`, `name_fr`) VALUES
(1, 'president', 'president', 'président'),
(2, 'professor', 'professor', 'professeur'),
(3, 'scientific member', 'scientific member', 'scientifique'),
(4, 'ornithologist', 'ornithologist', 'ornithologue'),
(5, 'chef editor of Malagasy Nature', 'chef editor of Malagasy Nature', 'rédacteur en chef de Malagasy Nature'),
(6, 'scientific coordinator', 'scientific coordinator', 'coordinateur scientifique'),
(7, 'mammalogist', 'mammalogist', 'mammologue'),
(9, 'head museum curator', 'head museum curator', 'conservateur en chef du musée'),
(10, 'scientific advisor', 'scientific advisor', 'conseiller scientifique'),
(11, 'vice president', 'vice president', 'vice président'),
(12, 'co-editor of Malagasy Nature', 'co-editor of Malagasy Nature', 'co-rédacteur de Malagasy Nature'),
(13, 'docteur honoris causa', 'docteur honoris causa', 'docteur honoris causa'),
(14, 'financial & administration manager', 'financial & administration manager', 'responsable financier et administratif'),
(15, 'logistic coordinator', 'logistic coordinator', 'responsable logistique'),
(16, 'domestic help', 'domestic help', 'femme de ménage'),
(17, 'guardian', 'guardian', 'gardien'),
(18, 'gardener', 'gardener', 'jardinier'),
(19, 'country director', 'country director', 'country director'),
(20, 'général de corps d\'armée', 'général de corps d\'armée', 'général de corps d\'armée'),
(21, 'Center for Diplomatic and Strategic studies', 'Center for Diplomatic and Strategic studies', 'Centre d\'études diplomatiques et stratégiques'),
(22, 'former head of research and biodiversity', 'former head of research and biodiversity', 'responsable de la recherche et de la biodiversité'),
(23, 'technical advisor', 'technical advisor', 'conseiller technique'),
(24, 'ex-vice president', 'ex-vice president', 'ex-vice président'),
(25, 'ex-general director', 'ex-general director', 'ex-directeur général'),
(26, 'principal', 'principal', 'principal'),
(27, 'executive director', 'executive director', 'directeur exécutif'),
(28, 'director', 'director', 'directeur');

-- --------------------------------------------------------

--
-- Table structure for table `publication`
--

DROP TABLE IF EXISTS `publication`;
CREATE TABLE IF NOT EXISTS `publication` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `description_en` longtext COLLATE utf8_unicode_ci,
  `description_fr` longtext COLLATE utf8_unicode_ci,
  `date` date DEFAULT NULL,
  `imagefront` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imageback` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `idtype` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `publication_idtype_701fb9f0_fk_typepublication_id` (`idtype`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `publication`
--

INSERT INTO `publication` (`id`, `title`, `description`, `description_en`, `description_fr`, `date`, `imagefront`, `imageback`, `idtype`) VALUES
(1, 'Volume 1 - Les forêts sèches de Madagascar', 'This first issue of Malagasy Nature is a monograph of 200 pages on Madagascar dry forests, associated with inventories conducted by a group of scientists in Madagascar, which are among the founding members of the Association Vahatra.', 'This first issue of Malagasy Nature is a monograph of 200 pages on Madagascar dry forests, associated with inventories conducted by a group of scientists in Madagascar, which are among the founding members of the Association Vahatra.', 'Ce premier numéro de Malagasy Nature est une monographie de 200 pages sur les forêts sèches de Madagascar, associée à des inventaires réalisés par un groupe de scientifiques malgaches, qui font partie des membres fondateurs de l\'Association Vahatra.', '2009-01-01', 'mn1.webp', NULL, 1),
(2, 'Volume 2', '', '', NULL, '2009-02-01', 'mn2.webp', NULL, 1),
(3, 'Volume 3: Biodiversity, exploration, and conservation of the natural habitats associated with the Ambatovy project', 'Le troisième volume de Malagasy Nature présente une série d\'études entreprises dans les forêts d\'Ambatovy, près de Moramanga. Ces études ont été réalisées dans le cadre d\'une recherche sur la biodiversité des zones forestières partiellement couvertes, exposées à l\'exploitation minière par le projet Ambatovy. Elles ont été réalisées pour soutenir le programme de conservation du projet.\r\n\r\n\r\n\r\nOutre la description des programmes de conservation et de suivi écologique du projet minier, ce volume 3 présente les diverses informations biologiques et écologiques sur différents groupes, notamment les invertébrés, les vertébrés, ainsi que les plantes. Il compile également les résultats des inventaires d\'une zone proche de la région d\'Andasibe qui a été largement étudiée pendant des décennies, en mettant notamment l\'accent sur les nouvelles découvertes sur la flore et la faune de ces 20 dernières années. Les nouvelles données présentées dans ce volume montrent l\'importance biologique des zones étudiées. Elles constitueront des informations de base pour le suivi des changements écologiques et spécifiques de la biodiversité locale dans le temps et dans l\'espace.', 'The third volume of Malagasy Nature presents a series of studies undertaken in the Ambatovy forests, near Moramanga. These studies were made within the framework of a research on the biodiversity partially covered forest zones, exposed to the mining by the Ambatovy Project. They were done to support the project conservation program.\r\n\r\n\r\n\r\nBesides the description of the mining project conservation and ecological monitoring programmes, this Volume 3 shows the diverse biological and ecological information on various groups in particular, the invertebrates, the vertebrates, as well as the plants. It also compiles the results of the inventories of a zone near the region of Andasibe which was extensively studied for decades, in particular emphasizing the new discoveries on the flora and the fauna for these last 20 years. The new data presented in this volume show the biological importance of the studied zones. They will form basic information for the ecological and specific changes monitoring within the local biodiversity in time and in space.', 'Le troisième volume de Malagasy Nature présente une série d\'études entreprises dans les forêts d\'Ambatovy, près de Moramanga. Ces études ont été réalisées dans le cadre d\'une recherche sur la biodiversité des zones forestières partiellement couvertes, exposées à l\'exploitation minière par le projet Ambatovy. Elles ont été réalisées pour soutenir le programme de conservation du projet.\r\n\r\n\r\n\r\nOutre la description des programmes de conservation et de suivi écologique du projet minier, ce volume 3 présente les diverses informations biologiques et écologiques sur différents groupes, notamment les invertébrés, les vertébrés, ainsi que les plantes. Il compile également les résultats des inventaires d\'une zone proche de la région d\'Andasibe qui a été largement étudiée pendant des décennies, en mettant notamment l\'accent sur les nouvelles découvertes sur la flore et la faune de ces 20 dernières années. Les nouvelles données présentées dans ce volume montrent l\'importance biologique des zones étudiées. Elles constitueront des informations de base pour le suivi des changements écologiques et spécifiques de la biodiversité locale dans le temps et dans l\'espace.', '2010-01-01', 'mn3.webp', NULL, 1),
(4, 'Volume 4', '', '', NULL, '2010-02-01', 'mn4.webp', NULL, 1),
(5, 'Volume 5', '', '', NULL, '2011-01-01', 'mn5.webp', NULL, 1),
(6, 'Volume 6', '', '', NULL, '2012-01-01', 'mn6.webp', NULL, 1),
(7, 'Volume 7', '', '', NULL, '2013-01-01', 'mn7.webp', NULL, 1),
(8, 'Volume 8', '', '', NULL, '2014-01-01', 'mn8.webp', NULL, 1),
(9, 'Volume 9', '', '', NULL, '2015-01-01', 'mn9.webp', NULL, 1),
(10, 'Volume 10', '', '', NULL, '2016-01-01', 'mn10.webp', NULL, 1),
(11, 'Volume 11', '', '', NULL, '2017-01-01', 'mn11.webp', NULL, 1),
(12, 'Volume 12', '', '', NULL, '2017-02-01', 'mn12.webp', 'mn12_back.webp', 1),
(13, 'Volume 13', '', '', NULL, '2019-01-01', 'mn13.webp', 'mn13_back.webp', 1),
(14, 'Volume 14', '', '', NULL, '2020-01-01', 'mn14.webp', 'mn14_back.webp', 1),
(15, 'Volume 15', '', '', NULL, '2021-01-01', 'mn15.webp', 'mn15_back.webp', 1),
(16, 'Les chauves-souris de Madagascar', '129 pp and 77 figures.', '129 pp and 77 figures.', '129 pp et 77 figures.', '2011-01-01', 'g1.webp', 'g1_back.webp', 2),
(17, 'Les petits mammifères de Madagascar', '176 pp and 100 figures.', '176 pp and 100 figures.', '176 pp et 100 figures.', '2011-01-01', 'g2.webp', 'g2_back.webp', 2),
(18, 'Histoire naturelle des familles et sous-familles endémiques d\'oiseaux de Madagascar', 'pp 148 and 54 figures.', 'pp 148 and 54 figures.', 'pp 148 et 54 figures.', '2011-01-01', 'g3.webp', 'g3_back.webp', 2),
(19, 'Les Carnivora de Madagascar', 'pp 158 and 73 figures.', 'pp 158 and 73 figures.', 'pp 158 et 73 figures.', '2012-01-01', 'g4.webp', 'g4_back.webp', 2),
(20, 'Les animaux et écosystèmes de l\'Holocène disparus de Madagascar', 'pp 249, 34 figures and 20 plates.', 'pp 249, 34 figures and 20 plates.', 'pp 249, 34 figures et 20 plates.', '2013-01-01', 'g5.webp', 'g5_back.webp', 2),
(21, 'Les amphibiens des zones arides du Sud et de l\'Ouest de Madagascar', 'pp 180 and 129 figures', 'pp 180 and 129 figures', 'pp 180 et129 figures', '2014-01-01', 'g6.webp', 'g6_back.webp', 2),
(22, 'Les amphibiens du Nord de Madagascar', 'pp 354 and 197 figures, with pictograms.', 'pp 354 and 197 figures, with pictograms.', 'pp 354 et 197 figures, avec pictogrammes.', '2018-01-01', 'g7.webp', 'g7_back.webp', 2),
(23, 'Fourmis de Madagascar : un guide pour les 62 genres / Ants of Madagascar: a guide for the 62 genera', 'A bilingual French-English book. 253 pp.', 'A bilingual French-English book. 253 pp.', 'Un livre bilingue français-anglais. 253 pages.', '2019-01-01', 'g8.webp', 'g8_back.webp', 2),
(24, 'Libellules et demoiselles de Madagascar et des Iles de l’Océan Indien occidentale / Dragonflies and damselflies of Madagascar and the western Indian Ocean Islands', 'A bilingual French-English book. 194 pp.', 'A bilingual French-English book. 194 pp.', 'Un livre bilingue français-anglais. 194 pages.', '2021-01-01', 'g9.webp', 'g9_back.webp', 2),
(25, '1990-2014 Publications', '', '', NULL, '2014-12-31', '2014pubs.webp', NULL, 3),
(26, '1990-2014 Memoirs and thesis', '', '', NULL, '2015-01-01', 'memandthesis.webp', NULL, 3),
(27, 'Atlas d\'une selection de vertébrés terrestres de Madagascar', 'While the past few decades have seen numerous publications about the extraordinary and highly endemic terrestrial vertebrate fauna of Madagascar, ranging from technical papers, to species descriptions, and field guides, no detailed mapping exercise has been completed in the form of an atlas. The purpose of this book is that, to bring together information from numerous sources and present distributional maps for a wide range of taxa, descriptive texts to interpret patterns, and, for most, habitat models (Maxent). For the different reptiles, birds, and mammals treated herein, this atlas is intended as a reference for students, researchers, naturalists, and conservationists.', 'While the past few decades have seen numerous publications about the extraordinary and highly endemic terrestrial vertebrate fauna of Madagascar, ranging from technical papers, to species descriptions, and field guides, no detailed mapping exercise has been completed in the form of an atlas. The purpose of this book is that, to bring together information from numerous sources and present distributional maps for a wide range of taxa, descriptive texts to interpret patterns, and, for most, habitat models (Maxent). For the different reptiles, birds, and mammals treated herein, this atlas is intended as a reference for students, researchers, naturalists, and conservationists.', 'Alors que les dernières décennies ont vu de nombreuses publications sur l\'extraordinaire et hautement endémique faune vertébrée terrestre de Madagascar, allant des articles techniques, aux descriptions d\'espèces, et aux guides de terrain, \r\n\r\naucun exercice de cartographie détaillée n\'a été réalisé sous la forme d\'un atlas.\r\n\r\n\r\n\r\nL\'objectif de cet ouvrage est donc de rassembler des informations provenant de nombreuses sources et de présenter des cartes de distribution pour un large éventail de taxons, des textes descriptifs permettant d\'interpréter les modèles et, pour la plupart, des modèles d\'habitat (Maxent). Pour les différents reptiles, oiseaux et mammifères qui y sont traités, cet atlas se veut une référence pour les étudiants, les chercheurs, les naturalistes et les défenseurs de la nature.', '2013-01-01', 'op3.webp', 'op3_back.webp', 3),
(28, 'The terrestrial protected areas of Madagascar: their history, description and biota.', NULL, NULL, NULL, '2021-04-15', '978-2-9570997-1-9-frontcover.webp', 'op4_back.webp', 3),
(29, 'The New Natural History of Madagascar', 'En 2003, Steve Goodman et Jonathan P. Benstead (Université de Géorgie)\r\n\r\nont publié un gros volume (+1700 pages) intitulé The Natural History\r\n\r\nde Madagascar (University of Chicago Press).\r\n\r\n\r\n\r\nSteve était le premier éditeur\r\n\r\net le principal contributeur à ce volume, qui a été largement salué - par exemple, Science l\'a qualifié de  \"jalon scientifique et de loin la plus grande synthèse de la recherche en biologie tropicale jamais réalisée\".\r\n\r\n\r\n\r\nAvance rapide de près de deux décennies\r\n\r\nplus tard, et depuis la parution du livre de 2003, la quantité de nouvelles informations sur l\'histoire naturelle de Madagascar a augmenté à un rythme qui dépasse les attentes les plus enthousiastes.\r\n\r\nLes progrès réalisés sur les fronts de la recherche et de la conservation concernant Madagascar au cours de cette période ont facilement dépassé celles des 20 années précédant la parution de ce volume.\r\n\r\n\r\n\r\nAvec tout cela en tête,\r\n\r\nSteve, en tant qu\'éditeur principal, rejoint par 17 éditeurs spécialisés, dont Achille Raselimanana, ont entièrement retravaillé le livre de 2003.\r\n\r\nIl est important de\r\n\r\nsouligner que le nouveau projet n\'est pas une simple révision de l\'ouvrage de 2003,\r\n\r\nmais d\'un livre entièrement nouveau, sans qu\'aucune contribution antérieure ne soit simplement\r\n\r\nréimprimée.\r\n\r\nPrinceton University Press publiera le nouveau volume à la fin de 2022 ou au début de 2023.\r\n\r\n2022 ou début 2023 sous le titre The New Natural History of Madagascar.\r\n\r\nFin janvier 2022, la plus grande partie du livre en est aux premières\r\n\r\népreuves de première page. Le manuscrit compte un peu moins de 7 000 pages, dont\r\n\r\n553 figures et 243 tableaux, et compte 279 contributions de 539 collaborateurs,\r\n\r\ndont environ un tiers sont malgaches et moins d\'un quart du livre de 2003.\r\n\r\n\r\n\r\nLe livre est publié en deux volumes distincts d\'environ 1250\r\n\r\npages chacun. Princeton University Press a collaboré activement à ce projet et plusieurs centaines d\'exemplaires de l\'ouvrage seront envoyés à Madagascar pour être distribués aux différents collaborateurs gouvernementaux et non gouvernementaux\r\n\r\net partenaires de l\'Association Vahatra', 'In 2003, Steve Goodman and Jonathan P. Benstead (University of Georgia)\r\n\r\npublished a large volume (+1700 pages) entitled The Natural History\r\n\r\nof Madagascar (University of Chicago Press). Steve was first editor\r\n\r\nand principal contributor to the volume, which was widely praised—\r\n\r\ne.g., Science called it “a scientific milestone and by far the largest synthesis\r\n\r\nof tropical biology research ever.” Now fast forward nearly two decades\r\n\r\nlater and since the 2003 book appeared the amount of new information on\r\n\r\nthe natural history of Madagascar has expanded at a rate beyond the most\r\n\r\nenthusiastic expectations. Advances made on research and conservation\r\n\r\nfronts concerning Madagascar during this period easily surpassed that of\r\n\r\nthe 20 years preceding that volume’s publication. With all of this in mind,\r\n\r\nSteve, as the principal editor, joined by 17 subject editors, including Achille\r\n\r\nRaselimanana, have completely reworked the 2003 book. It is important to\r\n\r\nunderline that the new project is not a simple revision of the 2003 volume,\r\n\r\nbut a completely new book, with no previous contribution being simply\r\n\r\nreprinted. Princeton University Press will publish the new volume in late\r\n\r\n2022 or early 2023 under the title The New Natural History of Madagascar.\r\n\r\nAt the time of this writing, late January 2022, most of the book is in first\r\n\r\npage proofs. The manuscript came in at just under 7,000 pages, including\r\n\r\n553 figures and 243 tables, and has 279 contributions from 539 contributors,\r\n\r\nof which about one-third are Malagasy and the 2003 book less than onequarter. The book will appear in two separate volumes of an estimated 1250\r\n\r\npages each. Princeton University Press has been highly collaborative in this\r\n\r\nproject and several hundred copies of the book will be sent to Madagascar for\r\n\r\ndistribution to different governmental and non-governmental collaborators\r\n\r\nand partners of Association Vahatra', 'En 2003, Steve Goodman et Jonathan P. Benstead (Université de Géorgie)\r\n\r\nont publié un gros volume (+1700 pages) intitulé The Natural History\r\n\r\nde Madagascar (University of Chicago Press).\r\n\r\n\r\n\r\nSteve était le premier éditeur\r\n\r\net le principal contributeur à ce volume, qui a été largement salué - par exemple, Science l\'a qualifié de  \"jalon scientifique et de loin la plus grande synthèse de la recherche en biologie tropicale jamais réalisée\".\r\n\r\n\r\n\r\nAvance rapide de près de deux décennies\r\n\r\nplus tard, et depuis la parution du livre de 2003, la quantité de nouvelles informations sur l\'histoire naturelle de Madagascar a augmenté à un rythme qui dépasse les attentes les plus enthousiastes.\r\n\r\nLes progrès réalisés sur les fronts de la recherche et de la conservation concernant Madagascar au cours de cette période ont facilement dépassé celles des 20 années précédant la parution de ce volume.\r\n\r\n\r\n\r\nAvec tout cela en tête,\r\n\r\nSteve, en tant qu\'éditeur principal, rejoint par 17 éditeurs spécialisés, dont Achille Raselimanana, ont entièrement retravaillé le livre de 2003.\r\n\r\nIl est important de\r\n\r\nsouligner que le nouveau projet n\'est pas une simple révision de l\'ouvrage de 2003,\r\n\r\nmais d\'un livre entièrement nouveau, sans qu\'aucune contribution antérieure ne soit simplement\r\n\r\nréimprimée.\r\n\r\nPrinceton University Press publiera le nouveau volume à la fin de 2022 ou au début de 2023.\r\n\r\n2022 ou début 2023 sous le titre The New Natural History of Madagascar.\r\n\r\nFin janvier 2022, la plus grande partie du livre en est aux premières\r\n\r\népreuves de première page. Le manuscrit compte un peu moins de 7 000 pages, dont\r\n\r\n553 figures et 243 tableaux, et compte 279 contributions de 539 collaborateurs,\r\n\r\ndont environ un tiers sont malgaches et moins d\'un quart du livre de 2003.\r\n\r\n\r\n\r\nLe livre est publié en deux volumes distincts d\'environ 1250\r\n\r\npages chacun. Princeton University Press a collaboré activement à ce projet et plusieurs centaines d\'exemplaires de l\'ouvrage seront envoyés à Madagascar pour être distribués aux différents collaborateurs gouvernementaux et non gouvernementaux\r\n\r\net partenaires de l\'Association Vahatra', '2023-01-01', 'nnhm.webp', NULL, 3),
(30, 'The Natural History of Madagascar', 'Séparée du continent africain depuis 160 millions d\'années, Madagascar a développé une incroyable richesse de biodiversité, avec des milliers d\'espèces que l\'on ne trouve nulle part ailleurs sur terre. Par exemple, sur les 12 000 espèces végétales estimées, près de 10 000 sont uniques à Madagascar. Les animaux malgaches sont tout aussi spectaculaires, qu\'il s\'agisse des près de quarante espèces de lémuriens actuellement reconnues - un groupe de primates que l\'on ne trouve qu\'ici - ou des nombreuses espèces de minuscules caméléons nains. Avec une fréquence étonnante, les scientifiques découvrent une espèce jusqu\'alors inconnue à Madagascar - et presque au même rythme, une autre zone d\'habitat naturel est dégradée ou détruite, une combinaison qui a récemment conduit les organisations de conservation à désigner Madagascar comme l\'une des priorités de conservation les plus importantes et les plus menacées de la planète.\r\n\r\n\r\n\r\nL\'Histoire naturelle de Madagascar offre la synthèse la plus complète et la plus récente des trésors biologiques inestimables de cette nation insulaire. Les contributions de près de trois cents experts de renommée mondiale couvrent l\'histoire de l\'exploration scientifique à Madagascar, sa géologie et ses sols, son climat, l\'écologie forestière, l\'écologie humaine, les écosystèmes marins et côtiers, les plantes, les invertébrés, les poissons, les amphibiens, les reptiles, les oiseaux et les mammifères. Des discussions détaillées sur les efforts de conservation à Madagascar mettent en lumière plusieurs programmes de réserve de parc réussis qui pourraient servir de modèles pour d\'autres régions. Magnifiquement illustré tout au long de l\'ouvrage, celui-ci comprend plus de cent illustrations en couleur, dont cinquante photos en couleur du photographe de nature Harald Schütz, ainsi que plus de trois cents photographies en noir et blanc et dessins au trait.\r\n\r\n\r\n\r\nL\'Histoire naturelle de Madagascar sera une référence inestimable pour tous ceux qui s\'intéressent à l\'environnement malgache, qu\'il s\'agisse de biologistes, de défenseurs de l\'environnement, de décideurs politiques ou d\'écotouristes.', ' Separated from the mainland of Africa for 160 million years, Madagascar has evolved an incredible wealth of biodiversity, with thousands of species that can be found nowhere else on earth. For instance, of its estimated 12,000 plant species, nearly 10,000 are unique to Madagascar. Malagasy animals are just as spectacular, from its almost forty currently recognized species of lemurs―a primate group found only here―to the numerous species of tiny dwarf chameleons. With astounding frequency scientists discover a previously unknown species in Madagascar―and at almost the same rate another natural area of habitat is degraded or destroyed, a combination that recently led conservation organizations to name Madagascar one of the most important and threatened conservation priorities on the planet.\r\n\r\n\r\n\r\nThe Natural History of Madagascar provides the most comprehensive, up-to-date synthesis available of this island nation\'s priceless biological treasures. Contributions by nearly three hundred world-renowned experts cover the history of scientific exploration in Madagascar, its geology and soils, climate, forest ecology, human ecology, marine and coastal ecosystems, plants, invertebrates, fishes, amphibians, reptiles, birds, and mammals. Detailed discussions of conservation efforts in Madagascar highlight several successful park reserve programs that could serve as models for other areas. Beautifully illustrated throughout, the book includes over one hundred color illustrations, with fifty color photos by nature photographer Harald Schütz, as well as more than three hundred black-and-white photographs and line drawings.\r\n\r\n\r\n\r\nThe Natural History of Madagascar will be the invaluable reference for anyone interested in the Malagasy environment, from biologists and conservationists to policymakers and ecotourists. ', 'Séparée du continent africain depuis 160 millions d\'années, Madagascar a développé une incroyable richesse de biodiversité, avec des milliers d\'espèces que l\'on ne trouve nulle part ailleurs sur terre. Par exemple, sur les 12 000 espèces végétales estimées, près de 10 000 sont uniques à Madagascar. Les animaux malgaches sont tout aussi spectaculaires, qu\'il s\'agisse des près de quarante espèces de lémuriens actuellement reconnues - un groupe de primates que l\'on ne trouve qu\'ici - ou des nombreuses espèces de minuscules caméléons nains. Avec une fréquence étonnante, les scientifiques découvrent une espèce jusqu\'alors inconnue à Madagascar - et presque au même rythme, une autre zone d\'habitat naturel est dégradée ou détruite, une combinaison qui a récemment conduit les organisations de conservation à désigner Madagascar comme l\'une des priorités de conservation les plus importantes et les plus menacées de la planète.\r\n\r\n\r\n\r\nL\'Histoire naturelle de Madagascar offre la synthèse la plus complète et la plus récente des trésors biologiques inestimables de cette nation insulaire. Les contributions de près de trois cents experts de renommée mondiale couvrent l\'histoire de l\'exploration scientifique à Madagascar, sa géologie et ses sols, son climat, l\'écologie forestière, l\'écologie humaine, les écosystèmes marins et côtiers, les plantes, les invertébrés, les poissons, les amphibiens, les reptiles, les oiseaux et les mammifères. Des discussions détaillées sur les efforts de conservation à Madagascar mettent en lumière plusieurs programmes de réserve de parc réussis qui pourraient servir de modèles pour d\'autres régions. Magnifiquement illustré tout au long de l\'ouvrage, celui-ci comprend plus de cent illustrations en couleur, dont cinquante photos en couleur du photographe de nature Harald Schütz, ainsi que plus de trois cents photographies en noir et blanc et dessins au trait.\r\n\r\n\r\n\r\nL\'Histoire naturelle de Madagascar sera une référence inestimable pour tous ceux qui s\'intéressent à l\'environnement malgache, qu\'il s\'agisse de biologistes, de défenseurs de l\'environnement, de décideurs politiques ou d\'écotouristes.', '2003-01-01', 'nhm.webp', NULL, 3),
(39, 'Volume 16', NULL, NULL, NULL, '2022-10-01', 'covmn16.webp', 'covmn16_back.webp', 1),
(40, '1990-2021 Publications', NULL, NULL, NULL, '2021-12-31', '2021pubs.webp', NULL, 3),
(55, 'The protected areas of Lokombe, Ankarana, and Montagne d\'Ambre in northern Madagascar', 'The three editors of this book were also the co-editors of a three-volume book (2018), The terrestrial protected areas of Madagascar: Their history, description, and biota.', 'The three editors of this book were also the co-editors of a three-volume book (2018), The terrestrial protected areas of Madagascar: Their history, description, and biota.', 'Les trois éditeurs de ce livre étaient également les coéditeurs d\'un livre en trois volumes (2018). Les aires protégées terrestres de Madagascar: Leur histoire, description et biote.', '2022-11-14', 'guide_ecotouristique_1_cover.webp', 'guide_ecotouristique_1_back_cover.webp', 2);

-- --------------------------------------------------------

--
-- Table structure for table `publicationauthor`
--

DROP TABLE IF EXISTS `publicationauthor`;
CREATE TABLE IF NOT EXISTS `publicationauthor` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `idperson` bigint(20) DEFAULT NULL,
  `idpublication` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `publicationauthor_idperson_ceef0fe3_fk_person_id` (`idperson`),
  KEY `publicationauthor_idpublication_fa82b830_fk_publication_id` (`idpublication`)
) ENGINE=InnoDB AUTO_INCREMENT=487 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `publicationauthor`
--

INSERT INTO `publicationauthor` (`id`, `idperson`, `idpublication`) VALUES
(1, 2, 1),
(2, 4, 1),
(3, 1, 1),
(4, 3, 1),
(5, 28, 1),
(6, 29, 1),
(8, 2, 2),
(9, 4, 2),
(10, 3, 2),
(11, 31, 2),
(12, 32, 2),
(13, 33, 2),
(14, 34, 2),
(15, 35, 2),
(16, 36, 2),
(17, 37, 2),
(18, 38, 2),
(19, 39, 2),
(20, 40, 2),
(21, 41, 2),
(22, 42, 2),
(23, 43, 2),
(24, 44, 2),
(25, 45, 2),
(26, 46, 2),
(27, 47, 2),
(28, 48, 2),
(29, 49, 2),
(30, 50, 2),
(33, 53, 2),
(34, 54, 2),
(35, 55, 2),
(36, 56, 2),
(37, 57, 2),
(38, 58, 2),
(39, 59, 2),
(40, 60, 2),
(41, 61, 2),
(42, 20, 2),
(43, 4, 3),
(44, 1, 3),
(45, 2, 3),
(46, 62, 3),
(47, 63, 3),
(48, 64, 3),
(49, 65, 3),
(50, 66, 3),
(51, 67, 3),
(52, 68, 3),
(53, 69, 3),
(54, 70, 3),
(55, 71, 3),
(56, 72, 3),
(57, 73, 3),
(58, 74, 3),
(59, 75, 3),
(60, 76, 3),
(61, 4, 29),
(62, 4, 30),
(63, 77, 30),
(69, 2, 39),
(70, 3, 39),
(71, 1, 39),
(72, 4, 39),
(74, 146, 39),
(75, 147, 39),
(76, 148, 39),
(77, 149, 39),
(78, 150, 39),
(79, 151, 39),
(80, 152, 39),
(81, 153, 39),
(82, 154, 39),
(83, 155, 39),
(84, 156, 39),
(85, 157, 39),
(86, 159, 39),
(87, 129, 39),
(88, 161, 39),
(89, 123, 39),
(90, 24, 15),
(91, 164, 15),
(92, 165, 15),
(93, 166, 15),
(94, 167, 15),
(95, 168, 15),
(96, 169, 15),
(97, 170, 15),
(98, 171, 15),
(99, 172, 15),
(100, 173, 15),
(101, 174, 15),
(102, 175, 15),
(103, 176, 15),
(104, 177, 15),
(105, 22, 15),
(106, 178, 15),
(107, 179, 15),
(108, 180, 15),
(109, 181, 15),
(110, 182, 15),
(111, 183, 15),
(112, 184, 15),
(113, 185, 15),
(114, 186, 15),
(115, 187, 15),
(116, 188, 15),
(117, 189, 15),
(118, 190, 15),
(119, 191, 15),
(120, 192, 15),
(121, 193, 15),
(122, 194, 15),
(123, 195, 15),
(124, 196, 15),
(125, 197, 15),
(126, 20, 14),
(127, 198, 14),
(128, 199, 14),
(129, 200, 14),
(130, 202, 14),
(131, 203, 14),
(132, 204, 14),
(133, 205, 14),
(134, 206, 14),
(135, 207, 14),
(136, 208, 14),
(137, 209, 14),
(138, 210, 14),
(139, 162, 14),
(140, 211, 14),
(141, 212, 14),
(142, 213, 14),
(143, 214, 14),
(144, 215, 14),
(145, 216, 14),
(146, 149, 14),
(147, 81, 14),
(148, 80, 14),
(149, 84, 14),
(150, 217, 14),
(151, 1, 14),
(152, 89, 14),
(153, 218, 14),
(154, 219, 14),
(155, 220, 14),
(156, 221, 14),
(157, 222, 14),
(158, 224, 14),
(159, 225, 14),
(160, 226, 14),
(161, 227, 14),
(162, 228, 14),
(163, 229, 14),
(164, 90, 14),
(165, 151, 14),
(166, 231, 14),
(167, 232, 13),
(168, 233, 13),
(169, 234, 13),
(170, 235, 13),
(171, 4, 13),
(172, 236, 13),
(173, 237, 13),
(174, 129, 13),
(175, 123, 13),
(176, 238, 13),
(177, 161, 13),
(178, 126, 13),
(179, 119, 13),
(180, 240, 13),
(181, 149, 13),
(182, 150, 13),
(183, 143, 13),
(184, 151, 13),
(185, 242, 13),
(186, 243, 13),
(187, 34, 13),
(188, 244, 13),
(189, 118, 13),
(190, 245, 13),
(191, 110, 13),
(192, 246, 13),
(193, 247, 13),
(194, 3, 13),
(195, 248, 13),
(196, 249, 13),
(197, 250, 13),
(198, 251, 13),
(199, 252, 13),
(200, 253, 13),
(201, 254, 13),
(202, 256, 13),
(203, 257, 13),
(204, 258, 13),
(205, 259, 13),
(206, 260, 13),
(207, 261, 13),
(208, 32, 13),
(209, 262, 13),
(210, 263, 13),
(211, 264, 13),
(212, 265, 13),
(213, 266, 13),
(214, 42, 13),
(215, 43, 13),
(216, 267, 13),
(217, 268, 13),
(218, 269, 13),
(219, 147, 12),
(220, 270, 12),
(221, 349, 12),
(222, 271, 12),
(223, 205, 12),
(224, 272, 12),
(225, 273, 12),
(226, 274, 12),
(227, 11, 12),
(228, 275, 12),
(229, 38, 12),
(230, 37, 12),
(231, 277, 12),
(232, 278, 12),
(233, 279, 12),
(234, 280, 12),
(235, 281, 12),
(236, 282, 12),
(237, 283, 12),
(238, 284, 12),
(239, 104, 12),
(240, 285, 12),
(241, 3, 12),
(242, 286, 12),
(243, 4, 12),
(244, 162, 12),
(245, 149, 12),
(246, 150, 12),
(247, 32, 12),
(248, 151, 12),
(249, 115, 12),
(250, 79, 12),
(251, 109, 12),
(252, 113, 12),
(253, 126, 12),
(254, 1, 12),
(255, 287, 12),
(256, 288, 12),
(257, 289, 12),
(258, 290, 12),
(259, 2, 12),
(260, 368, 12),
(261, 292, 12),
(262, 118, 12),
(263, 34, 12),
(264, 123, 12),
(265, 293, 10),
(266, 15, 10),
(267, 294, 10),
(268, 295, 10),
(269, 296, 10),
(270, 297, 10),
(271, 298, 10),
(272, 299, 10),
(273, 300, 10),
(274, 301, 10),
(275, 302, 10),
(276, 303, 10),
(277, 304, 10),
(278, 305, 10),
(279, 270, 9),
(280, 147, 9),
(281, 271, 9),
(282, 205, 9),
(283, 272, 9),
(284, 306, 9),
(285, 307, 9),
(286, 308, 9),
(287, 309, 9),
(288, 285, 9),
(289, 104, 9),
(290, 4, 9),
(291, 151, 9),
(292, 310, 9),
(293, 153, 9),
(294, 152, 9),
(295, 129, 9),
(296, 123, 9),
(297, 158, 9),
(298, 262, 9),
(299, 118, 9),
(300, 311, 9),
(301, 312, 9),
(302, 313, 9),
(303, 126, 9),
(304, 3, 9),
(305, 314, 9),
(306, 315, 9),
(307, 212, 9),
(308, 316, 9),
(309, 317, 8),
(310, 318, 8),
(311, 319, 8),
(312, 320, 8),
(313, 321, 8),
(314, 322, 8),
(315, 323, 8),
(316, 324, 8),
(317, 263, 8),
(318, 325, 8),
(319, 326, 8),
(320, 123, 8),
(321, 4, 8),
(322, 209, 8),
(323, 327, 8),
(324, 149, 8),
(325, 328, 8),
(326, 329, 8),
(327, 118, 8),
(328, 330, 8),
(329, 129, 8),
(330, 331, 8),
(331, 332, 8),
(332, 333, 8),
(333, 334, 8),
(334, 212, 8),
(335, 316, 8),
(336, 272, 7),
(337, 4, 7),
(338, 2, 7),
(339, 335, 7),
(340, 53, 7),
(341, 336, 7),
(342, 337, 7),
(343, 338, 7),
(344, 339, 7),
(345, 340, 7),
(346, 341, 7),
(347, 342, 7),
(348, 343, 7),
(349, 344, 7),
(350, 345, 7),
(351, 346, 7),
(352, 271, 7),
(353, 348, 7),
(354, 147, 7),
(355, 205, 7),
(356, 385, 7),
(357, 64, 7),
(358, 386, 7),
(359, 349, 7),
(360, 350, 7),
(361, 351, 7),
(362, 387, 7),
(363, 352, 7),
(364, 1, 7),
(365, 122, 7),
(366, 3, 7),
(367, 133, 7),
(368, 324, 7),
(369, 353, 7),
(370, 354, 7),
(371, 355, 7),
(372, 263, 7),
(373, 1, 6),
(374, 2, 6),
(375, 3, 6),
(376, 31, 6),
(377, 316, 6),
(378, 330, 6),
(379, 4, 6),
(380, 356, 6),
(381, 205, 6),
(382, 357, 6),
(383, 18, 6),
(384, 358, 6),
(385, 322, 6),
(386, 359, 6),
(387, 360, 6),
(388, 206, 6),
(389, 207, 6),
(390, 293, 6),
(391, 15, 6),
(392, 296, 6),
(393, 362, 6),
(394, 363, 6),
(395, 364, 6),
(396, 365, 6),
(397, 366, 6),
(398, 123, 6),
(399, 158, 6),
(400, 367, 6),
(401, 151, 6),
(402, 368, 6),
(403, 149, 6),
(404, 327, 6),
(405, 22, 5),
(406, 225, 5),
(407, 357, 5),
(408, 205, 5),
(409, 18, 5),
(410, 356, 5),
(411, 207, 5),
(412, 369, 5),
(413, 206, 5),
(414, 370, 5),
(415, 371, 5),
(416, 93, 5),
(417, 89, 5),
(418, 126, 5),
(419, 106, 5),
(420, 4, 5),
(421, 133, 5),
(422, 3, 5),
(423, 118, 5),
(424, 123, 5),
(425, 31, 5),
(426, 316, 5),
(427, 388, 5),
(428, 181, 4),
(429, 373, 4),
(430, 189, 4),
(431, 184, 4),
(432, 165, 4),
(433, 374, 4),
(434, 375, 4),
(435, 376, 4),
(436, 377, 4),
(437, 378, 4),
(438, 379, 4),
(439, 380, 4),
(440, 381, 4),
(441, 382, 4),
(442, 383, 4),
(443, 384, 4),
(444, 1, 4),
(445, 18, 4),
(446, 20, 4),
(447, 4, 4),
(448, 225, 4),
(449, 389, 4),
(450, 149, 4),
(451, 121, 4),
(452, 117, 4),
(455, 4, 55),
(459, 2, 55),
(460, 397, 55),
(461, 399, 24),
(462, 398, 24),
(463, 400, 23),
(464, 351, 23),
(465, 91, 22),
(466, 90, 22),
(467, 229, 22),
(468, 84, 22),
(469, 80, 22),
(470, 1, 22),
(471, 91, 21),
(472, 229, 21),
(473, 1, 21),
(474, 402, 20),
(475, 4, 20),
(476, 4, 19),
(477, 3, 17),
(478, 4, 17),
(479, 2, 18),
(480, 4, 18),
(481, 4, 16),
(482, 4, 28),
(483, 2, 28),
(484, 397, 28),
(485, 4, 27),
(486, 2, 27);

-- --------------------------------------------------------

--
-- Table structure for table `publicationdetail`
--

DROP TABLE IF EXISTS `publicationdetail`;
CREATE TABLE IF NOT EXISTS `publicationdetail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pdf` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `idpublication` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `publicationdetail_idpublication_59d64763_fk_publication_id` (`idpublication`)
) ENGINE=InnoDB AUTO_INCREMENT=237 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `publicationdetail`
--

INSERT INTO `publicationdetail` (`id`, `name`, `pdf`, `idpublication`) VALUES
(1, 'Préface', 'volume1/mn01_preface.pdf', 1),
(2, 'Introduction', 'volume1/mn01_01.pdf', 1),
(3, 'Exploration et connaissance biologique des différents sites inventoriés', 'volume1/mn01_02.pdf', 1),
(4, 'Herpétofaune des forêts sèches malgaches', 'volume1/mn01_03.pdf', 1),
(5, 'L’avifaune des forêts sèches malgaches ', 'volume1/mn01_04.pdf', 1),
(6, 'Les petits mammifères non-volants des forêts sèches malgaches', 'volume1/mn01_05.pdf', 1),
(7, 'Les lémuriens des forêts sèches malgaches', 'volume1/mn01_06.pdf', 1),
(8, 'Pressions et menaces dans la région forestière sèche malgache', 'volume1/mn01_07.pdf', 1),
(9, 'Aspect de la conservation des forêts sèches de Madagascar', NULL, 1),
(10, 'La création des aires protégées dans le sud et sud ouest de Madagascar : approche et méthodologie', 'volume1/mn01_08.pdf', 1),
(11, 'Index', 'volume1/mn01_index.pdf', 1),
(12, 'Format for contribution', 'volume1/mn01_format.pdf', 1),
(13, 'Préface', 'volume2/mn02_00.pdf', 2),
(14, 'A review of the impacts of anthropogenic habitat change on terrestrial biodiversity in Madagascar: Implications for the design and management of new protected areas', 'volume2/mn02_01.pdf', 2),
(15, 'Vertébrés terrestres des fragments forestiers de la Montagne d’Ambatotsirongorongo, site dans le Système des Aires Protégées de Madagascar de la Région Anosy, Tolagnaro', 'volume2/mn02_02.pdf', 2),
(16, 'Reptiles, amphibiens et gradient altitudinal dans la région de Daraina, extrême nord-est de Madagasca', 'volume2/mn02_03.pdf', 2),
(17, 'A review of the endoparasites of the lemurs of Madagascar', 'volume2/mn02_04.pdf', 2),
(18, 'Les populations d’oiseaux aquatiques en périphérie d’une ferme de crevetticulture (OSO Farming)', 'volume2/mn02_05.pdf', 2),
(19, 'Etude ethnobotanique des ignames (Dioscorea sp.) dans la forêt Mikea et le couloir d’Antseva (sud-ouest de Madagascar)', 'volume2/mn02_06.pdf', 2),
(20, 'Variations morphométrique et moléculaire chez Miniopterus majori (Chiroptera : Miniopteridae) de Madagascar', 'volume2/mn02_07.pdf', 2),
(21, 'The species of Grosphus Simon (Scorpiones, Buthidae) distributed in the northern and eastern regions of Madagascar with the description of a new species', 'volume2/mn02_08.pdf', 2),
(22, 'Frugivory and facilitation of seed germination by the Velvet Asity, Philepitta castanea (Muller, 1776), in the rainforest understory of Ranomafana National Park, Madagascar', 'volume2/mn02_notes_01.pdf', 2),
(23, 'The diet of the endemic bat Myzopoda aurita (Myzopodidae) based on fecal analysis', 'volume2/mn02_notes_02.pdf', 2),
(24, 'Notes on the diet of the Barn Owl (Aves: Tytonidae: Tyto alba) from Zohin’Andavaka, Beahitse, extreme southwestern Madagascar', 'volume2/mn02_notes_03.pdf', 2),
(25, 'Urban avian population and possible heavy metal contamination at Parc Tsaratsoatra, Alarobia, Antananarivo, Madagascar', 'volume2/mn02_notes_04.pdf', 2),
(26, 'New distributional record of Appert’s Tetraka (Xanthomixis apperti) from Salary Bay, Mikea Forest, Madagascar', 'volume2/mn02_notes_05.pdf', 2),
(27, 'The Sooty Gull, Larus hemprichii (Aves: Laridae), on Nosy Ve: first records for Madagascar', 'volume2/mn02_notes_06.pdf', 2),
(28, 'Index ', 'volume2/mn02_index.pdf', 2),
(29, 'Notes aux contributeurs dans Malagasy Nature', 'volume2/mn02_contributeurs.pdf', 2),
(30, 'Format for contributions to Malagasy Nature', 'volume2/mn02_contribution.pdf', 2),
(31, 'Préface', 'volume3/mn03_00.pdf', 3),
(32, 'Ambatovy project: Mining in a challenging biodiversity setting in Madagascar', 'volume3/mn03_01.pdf', 3),
(33, 'Biological research conducted in the general Andasibe region of Madagascar with emphasis on enumerating the local biotic diversity', 'volume3/mn03_02.pdf', 3),
(34, 'Introduction to the early 2009 biological inventories conducted by the Association Vahatra in the Ambatovy-Analamay region', 'volume3/mn03_03.pdf', 3),
(35, 'Floristic inventory of the Ambatovy-Analamay mine site and comparison to other sites in Madagascar', 'volume3/mn03_04.pdf', 3),
(36, 'Survey of leaf litter ant species and assessment of invasive ants in the mining sites at Ambatovy, Madagascar', 'volume3/mn03_05.pdf', 3),
(37, 'Watercourse ecological sensitivity classification as a management framework to ameliorate pipeline construction impacts associated with the Ambatovy project', 'volume3/mn03_06.pdf', 3),
(38, 'The amphibians and reptiles of the Ambatovy-Analamay region', 'volume3/mn03_07.pdf', 3),
(39, 'The birds of the Ambatovy-Analamay region', 'volume3/mn03_08.pdf', 3),
(40, 'The non-volant and non-primate mammals of the Ambatovy-Analamay forest ', 'volume3/mn03_09.pdf', 3),
(41, 'The lemurs of the Ambatovy-Analamay region', 'volume3/mn03_10.pdf', 3),
(42, 'The Ambatovy lemur population spatial monitoring program: Summary of primary objectives and methods', 'volume3/mn03_11.pdf', 3),
(43, 'Index', 'volume3/mn03_contributeurs.pdf', 3),
(44, 'Notes aux contributeurs dans Malagasy Nature', 'volume3/mn03_contribution.pdf', 3),
(45, 'Format for contributions to Malagasy Nature', 'volume3/mn03_index.pdf', 3),
(46, 'Rock matrix surrounding subfossil lemur skull yields diverse collection of mammalian subfossils: Implications for reconstructing Madagascar’s paleoenvironments', 'volume4/mn04_01.pdf', 4),
(47, 'Influences des pièges sur la réitération et la sexualité des utriculaires aquatiques : cas d’Utricularia gibba et U. stellaris (Lentibulariaceae)', 'volume4/mn04_02.pdf', 4),
(48, 'Estimation de la densité des populations d’une espèce menacée de tortue terrestre (Astrochelys radiata) dans le Parc National Tsimanampetsotsa au Sud de Madagascar', 'volume4/mn04_03.pdf', 4),
(49, 'Liste des noms vernaculaires en langue française des espèces de chauves - souris de Madagascar', 'volume4/mn04_04.pdf', 4),
(50, 'Distributions et caractéristiques des microhabitats de Microcebus griseorufus (Cheirogaleidae) dans le Parc National de Tsimanampetsotsa (Sud ouest de Madagascar)', 'volume4/mn04_05.pdf', 4),
(51, 'Madagascar Buzzard (Buteo brachypterus) nest in association with the colonial nesting Sakalava Weaver (Ploceus sakalava)', 'volume4/mn04_notes_01.pdf', 4),
(52, 'Petits mammifères (Afrosoricida et Rodentia) nouvellement recensés dans le Parc National d’Andohahela (parcelle 1), Madagascar', 'volume4/mn04_notes_02.pdf', 4),
(53, 'Espèces d’amphibiens et de reptiles nouvellement recensés dans le Parc National d’Andohahela, Madagascar', 'volume4/mn04_notes_03.pdf', 4),
(54, 'Index', 'volume4/mn04_index.pdf', 4),
(55, 'Notes aux contributeurs dans Malagasy Nature', 'volume4/mn04_contributeurs.pdf', 4),
(56, 'Format for contributions to Malagasy Nature', 'volume4/mn04_contribution.pdf', 4),
(57, 'Structure dentaire : Implication pour la paléoécologie des Traversodontidae (Eucynodontia) du Trias de Madagascar', 'volume5/mn05_01.pdf', 5),
(58, 'Phenology of different vegetation types in Tsimanampetsotsa National Park, southwestern Madagascar', 'volume5/mn05_02.pdf', 5),
(59, 'Analyse structurale des formations végétales du Parc National d’Andohahela, habitat de Microcebus spp. (Sud-est de Madagascar)', 'volume5/mn05_03.pdf', 5),
(60, 'Conservation status of some commercialized succulent species of Madagascar', 'volume5/mn05_04.pdf', 5),
(61, 'Diet of the Mascarene grass frog, Ptychadena mascareniensis, in Madagascar', 'volume5/mn05_05.pdf', 5),
(62, 'Un premier aperçu de la diversité herpétofaunique d’un bloc forestier isolé, la forêt sèche de Beanka, dans la partie Ouest de Madagascar', 'volume5/mn05_06.pdf', 5),
(63, 'Habitat préférentiel d’Uroplatus giganteus (Reptilia, Gekkonidae), dans le complexe de la Montagne d’Ambre, Nord de Madagascar', 'volume5/mn05_07.pdf', 5),
(64, 'A case of the sympatric occurrence of Microgale brevicaudata and M. grandidieri (Afrosoricida, Tenrecidae) in the Beanka Forest, Maintirano', 'volume5/mn05_08.pdf', 5),
(65, 'Inventaire de chauves-souris dans la concession forestière de Kirindy CNFEREF, Morondava, Madagascar', 'volume5/mn05_09.pdf', 5),
(66, 'Bats of the Beanka Forest, a limestone karstic zone near Maintirano, central western Madagascar', 'volume5/mn05_10.pdf', 5),
(67, 'Sakalava weaver (Ploceus sakalava) nesting association with raptors: An alternative hypothesis', 'volume5/mn05_notes01.pdf', 5),
(68, 'Des Molossidae dans un arbre gîte de la région de Menabe central : description et biologie', 'volume5/mn05_notes02.pdf', 5),
(69, 'Index ', 'volume5/mn05_index.pdf', 5),
(70, 'Notes aux contributeurs dans Malagasy Nature', 'volume5/mn05_contributeurs.pdf', 5),
(71, 'Format for contributions to Malagasy Nature', 'volume5/mn05_contribution.pdf', 5),
(72, 'Note to readers - Note aux lecteurs', 'volume6/mn06_00.pdf', 6),
(73, 'Un premier aperçu de la faune de vertébrés du bush épineux de Salary-Bekodoy, à l’ouest du Parc National de Mikea, Madagascar', 'volume6/mn06_01.pdf', 6),
(74, 'Phenology of different vegetation types in the dry forest of Andohahela National Park, southeastern Madagascar', 'volume6/mn06_02.pdf', 6),
(75, 'Three new Aloe species from Madagascar', 'volume6/mn06_03.pdf', 6),
(76, 'Etudes dendrométriques et dendrochronologiques de neuf espèces de Commiphora Jacq. (Burseraceae) dans les forêts sèches de l’Ouest de Madagascar', 'volume6/mn06_04.pdf', 6),
(77, 'Influence de la variabilité climatique sur la phénologie de la forêt de la Réserve Spéciale de Bezà Mahafaly', 'volume6/mn06_05.pdf', 6),
(78, 'Can differences in floristic composition explain variation in the abundance of two sympatric mouse lemur species (Microcebus) in the Ankarafantsika National Park, northwestern Madagascar?', 'volume6/mn06_06.pdf', 6),
(79, 'Bio-écologie des chauves-souris du Parc National de Tsimanampetsotsa. 1. Identification bioacoustique et habitat préférentiel', 'volume6/mn06_07.pdf', 6),
(80, 'Bio-écologie des chauves-souris du Parc National de Tsimanampetsotsa. 2. Variation interspécifique et saisonnière du régime alimentaire', 'volume6/mn06_08.pdf', 6),
(81, 'Sighting of a ring-tailed vontsira (Galidia elegans) in the gallery forest of Berenty Private Reserve, southeastern Madagascar', 'volume6/mn06_09.pdf', 6),
(82, 'Two records of albinism in Malagasy birds', 'volume6/mn06_10.pdf', 6),
(83, 'Format for contributions to Malagasy Nature', 'volume6/mn06_11.pdf', 6),
(84, 'Préface et remerciements/Preface and acknowledgements', 'volume7/mn07preface.pdf', 7),
(85, 'La forêt de Beanka, Région Melaky, Ouest de Madagascar : introduction et présentation du milieu', 'volume7/mn07chapter01.pdf', 7),
(86, 'Current conservation trends in the Beanka Reserve', 'volume7/mn07chapter02.pdf', 7),
(87, 'Caves of the Beanka karst, Melaky Region, western Madagascar', 'volume7/mn07chapter03.pdf', 7),
(88, 'Rapport sur une mission archéologique à Beanka, Région Melaky, Ouest de Madagascar', 'volume7/mn07chapter04.pdf', 7),
(89, 'Cartographie de la couverture forestière du massif de Beanka, Région Melaky, Ouest de Madagascar', 'volume7/mn07chapter05.pdf', 7),
(90, 'Structure et composition floristique de la forêt sur faciès karstique de Beanka, Région Melaky, Ouest de Madagascar', 'volume7/mn07chapter06.pdf', 7),
(91, 'Inventaire des plantes vasculaires de la région de Beanka, Région Melaky, Ouest de Madagascar', 'volume7/mn07chapter07.pdf', 7),
(92, 'The non-marine molluscs of Tsingy Beanka, Melaky Region, western Madagascar', 'volume7/mn07chapter08.pdf', 7),
(93, 'Diversity of ants in burned and unburned grassland, and dry deciduous forest in the Beanka Reserve, Melaky Region, western Madagascar', 'volume7/mn07chapter09.pdf', 7),
(94, 'Distribution et diversité des communautés terrestres et fouisseuses de vertébrés et d’invertébrés dans un écotone savane-forêt sèche de Beanka, Région Melaky, Ouest de Madagascar', 'volume7/mn07chapter10.pdf', 7),
(95, 'Faune herpétologique de la forêt de Beanka, Région Melaky : richesse biologique, intérêt biogéographique et importance dans la conservation de la biodiversité malgache', 'volume7/mn07chapter11.pdf', 7),
(96, 'Premier aperçu de la diversité des oiseaux de la forêt sèche sur tsingy de Beanka, Région Melaky, Ouest de Madagascar', 'volume7/mn07chapter12.pdf', 7),
(97, 'Aperçu sur l’écologie de Mentocrex beankaensis (Aves, Rallidae) de la forêt sèche de Beanka, Région Melaky, Ouest de Madagascar', 'volume7/mn07chapter13.pdf', 7),
(98, 'Diversité des petits mammifères sur une formation de tsingy : cas de la forêt de Beanka, Région Melaky, Ouest de Madagascar', 'volume7/mn07chapter14.pdf', 7),
(99, 'Lemurs of the Beanka Forest, Melaky Region, western Madagascar', 'volume7/mn07chapter15.pdf', 7),
(100, 'The importance of field inventories and associated studies to understand biodiversity patterns: The case of the Beanka Forest, Melaky Region, western Madagascar', 'volume7/mn07chapter16.pdf', 7),
(101, 'Index', 'volume7/mn07index.pdf', 7),
(102, 'Notes aux contributeurs/Format for contributions', 'volume7/mn07contributeurs.pdf', 7),
(103, 'Paleoecological analysis of elephant bird (Aepyornithidae) remains from the Late Pleistocene and Holocene formations of southern Madagascar', 'volume8/mn08_chapter01.pdf', 8),
(104, 'Endemic non-bambusoid genera of grasses (Poaceae) in Madagascar: Review of current knowledge', 'volume8/mn08_chapter02.pdf', 8),
(105, 'Investigating behavior and ecology of Aphaenogaster swammerdami (Formicidae) in selectively logged forest: 20 years later – a happy ant?', 'volume8/mn08_chapter03.pdf', 8),
(106, 'First record of Corethrellidae (Diptera), frog-biting midges, in Madagascar', 'volume8/mn08_chapter04.pdf', 8),
(107, 'The species composition and distribution of hematophagous insects collected by light-traps in and near cave systems of Madagascar', 'volume8/mn08_chapter05.pdf', 8),
(108, 'The dietary habits of Barn Owls (Tyto alba) in the spiny bush of southwestern Madagascar', 'volume8/mn08_chapter06.pdf', 8),
(109, 'Duchemin’s ‘Linnet’: Was there a second species of native fody Foudia sp. in the Granitic Seychelles? – with additional evidence for the mid-19th century introduction of F. madagascariensis', 'volume8/mn08_chapter07.pdf', 8),
(110, 'Vocalisations de Pipistrellus spp. sensu lato de Madagascar : Expérience sur l’effet de confinement', 'volume8/mn08_chapter08.pdf', 8),
(111, 'The bats of the Kianjavato-Vatovavy region, lowland eastern central Madagascar', 'volume8/mn08_chapter09.pdf', 8),
(112, 'An albino molossid bat from the southwestern Indian Ocean region', 'volume8/mn08_note01.pdf', 8),
(113, 'A record of vertebrate carnivory by the Crested Drongo (Dicrurus forficatus)', 'volume8/mn08_note02.pdf', 8),
(114, 'Format for contributions to Malagasy Nature', 'volume8/mn08_formatforcontributions.pdf', 8),
(115, 'Dynamique post-culturale de la végétation dans la presqu’île d’Ampasindava, Domaine du Sambirano, Nord-ouest de Madagascar', 'volume9/mn09_00.pdf', 9),
(116, 'Biodiversité de l’entomofaune des rizières de la région de Lac Alaotra (Madagascar)', 'volume9/mn09_01.pdf', 9),
(117, 'Puces (Insecta : Siphonaptera) d’Ambohitantely, Madagascar : Spécificité et phénologie', 'volume9/mn09_02.pdf', 9),
(118, 'Suivi de la communauté aviaire aquatique dans la Nouvelle Aire Protégée Mandrozo, Ouest de Madagascar', 'volume9/mn09_03.pdf', 9),
(119, 'Préférence alimentaire des chauves-souris de Kianjavato, région de Vatovavy-Fitovinany, Madagascar', 'volume9/mn09_04.pdf', 9),
(120, 'Comportement alimentaire des communautés de chauves-souris animalivores de Kirindy (CNFEREF) et d’Antsahabe, Madagascar : répartition, partage et disponibilité de niche alimentaire', 'volume9/mn09_05.pdf', 9),
(121, 'The importance of water bodies for insectivorous bats in a Malagasy dry deciduous forest: A case example from Kirindy (CNFEREF)', 'volume9/mn09_06.pdf', 9),
(122, 'Terrestrial “forest-dwelling” endemic small mammals captured outside of natural habitats in the Moramanga District, central eastern Madagascar', 'volume9/mn09_07.pdf', 9),
(123, 'Remains of an aye-aye (Daubentonia madagascariensis) at the edge of the Parc National d’Ankarana, Région Diana', 'volume9/mn09_08.pdf', 9),
(124, 'Documented occurrence of Taphozous mauritianus (E. Geoffroy, 1818) in Mayotte (Comoros Archipelago)', 'volume9/mn09_09.pdf', 9),
(125, 'Third record of pied avocet (Recurvirostra avosetta) for Madagascar', 'volume9/mn09_10.pdf', 9),
(126, 'Format for contributions to Malagasy Nature', 'volume9/mn09_11.pdf', 9),
(127, 'Notes aux contributeurs dans Malagasy Nature', 'volume9/mn09_12.pdf', 9),
(128, 'Préface et remerciements', 'volume10/mn10_00.pdf', 10),
(129, 'Variabilité et changement du climat à Bezà Mahafaly', 'volume10/mn10_01.pdf', 10),
(130, 'Dynamique de la couverture forestière dans la Réserve Spéciale de Bezà Mahafaly et sesenvirons', 'volume10/mn10_02.pdf', 10),
(131, 'Mammalian biodiversity at Bezà Mahafaly: An update', 'volume10/mn10_03.pdf', 10),
(132, 'Diurnal lemurs at Bezà Mahafaly: Resilience and risk', 'volume10/mn10_04.pdf', 10),
(133, 'Dynamique de l’herpétofaune de Bezà Mahafaly', 'volume10/mn10_05.pdf', 10),
(134, 'Suivi de l’avifaune de Bezà Mahafaly', 'volume10/mn10_06.pdf', 10),
(135, 'Dynamiques socio-économiques et utilisation des ressources naturelles dans la Réserve Spéciale de Bezà Mahafaly et ses environs', 'volume10/mn10_07.pdf', 10),
(136, 'Gouvernance de la Réserve Spéciale de Bezà Mahafaly', 'volume10/mn10_08.pdf', 10),
(137, 'Epilogue : Progrès et perspectives', 'volume10/mn10_09.pdf', 10),
(138, 'Notes aux contributeurs dans Malagasy Nature', 'volume10/mn10_10.pdf', 10),
(139, 'Format for contributions to Malagasy Nature', 'volume10/mn10_11.pdf', 10),
(140, 'Results of a biological inventory of the Nosy Ankao island group, Parc National de Loky-Manambato, northeastern Madagascar', 'volume11/mn11.pdf', 11),
(141, 'Notes aux contributeurs dans Malagasy Nature', 'volume10/mn10_10.pdf', 11),
(142, 'Format for contributions to Malagasy Nature', 'volume10/mn10_11.pdf', 11),
(143, 'Les unités paysagères dela péninsule d’Ampasindava (Nord-ouest de Madagascar), un terroir sous haute pression de déforestation', 'volume12/mn12_00.pdf', 12),
(144, 'Influence des caractéristiques forestières et des perturbations anthropogéniques sur la distribution des lémuriens de la Forêt Classée d’Ankadivory (Tsinjoarivo-Ambatolampy)', 'volume12/mn12_01.pdf', 12),
(145, 'Updated extinction risk assessments of Madagascar’s freshwater decapod crustaceans reveal fewer threatened species but more Data Deficient species', 'volume12/mn12_02.pdf', 12),
(146, 'Sex-ratio chez les puces (Insecta : Siphonaptera) d’Ambohitantely, Hautes Terres Centrales de Madagascar', 'volume12/mn12_03.pdf', 12),
(147, 'Découverte de la construction du nid de l’aigle serpentaire de Madagascar (Eutriorchis astur) dans l’Aire Protégée de Bemanevika, Nord-ouest de Madagascar', 'volume12/mn12_04.pdf', 12),
(148, 'Les tiques dures (Acari : Ixodidae) ectoparasites de micromammifères non-volants dans la forêt d’Ambohitantely, Madagascar', 'volume12/mn12_05.pdf', 12),
(149, 'Survie et variation temporelle de la taille de la population de Rousettus madagascariensis (Chiroptera : Pteropodidae) de la Grotte des Chauves-souris d’Ankarana, Nord de Madagascar', 'volume12/mn12_06.pdf', 12),
(150, 'Diversité et écologie des petits mammifères dans les habitats forestiers et anthropiques du District de Moramanga, Centre-est de Madagascar', 'volume12/mn12_07.pdf', 12),
(151, 'The distribution and ecology of invasive alien vertebrate species in the greater Toamasina region, central eastern Madagascar', 'volume12/mn12_08.pdf', 12),
(152, 'Nest of the Malagasy Pond Heron Ardeola idae in northern Madagascar', 'volume12/mn12_09.pdf', 12),
(153, 'Occurrence of Taphozous mauritianus (Emballonuridae) in Maintirano, western Madagascar', 'volume12/mn12_10.pdf', 12),
(154, 'Format for contributions to Malagasy Nature', 'volume12/mn12_11.pdf', 12),
(155, 'Notes aux contributeurs dans Malagasy Nature', 'volume12/mn12_12.pdf', 12),
(156, 'Morphologie pollinique de la flore de la Réserve Spéciale d’Ankarana, Madagascar', 'volume13/mn13_00.pdf', 13),
(157, 'Morphométrie des fruits et des graines de Ficus (Moraceae) de la forêt sèche de la Réserve Spéciale d’Ankarana, Madagascar', 'volume13/mn13_01.pdf', 13),
(158, 'Euphorbia pseudodidiereoides, une nouvelle euphorbe épineuse du Centre-sud de Madagascar', 'volume13/mn13_02.pdf', 13),
(159, 'A review of Trypanosoma species known from Malagasy vertebrates', 'volume13/mn13_03.pdf', 13),
(160, 'Revue des stratégies nationales sur la biosécurité et perspectives sur la gestion des espèces exotiques envahissantes à Madagascar', 'volume13/mn13_04.pdf', 13),
(161, 'Population structure, activity pattern, and microhabitat use of Phelsuma klemmeri at Mandrozo, Madagascar', 'volume13/mn13_05.pdf', 13),
(162, 'Succès de la reproduction et comportements de Polyboroide rayé (Polyboroides radiatus) dans l’Aire Protégée de Bemanevika, Nord-ouest de Madagascar', 'volume13/mn13_06.pdf', 13),
(163, 'Les chauves-souris du Paysage Harmonieux Protégé du Complexe Tsimembo Manambolomaty, Région Melaky, Madagascar : diversité et biogéographie', 'volume13/mn13_07.pdf', 13),
(164, 'Seasonal movements of insectivorous bat species in southwestern Madagascar', 'volume13/mn13_08.pdf', 13),
(165, 'Les rats dans le monde rural du Centre-est et du Centre-sud de Madagascar : dommages causés et systèmes de contrôle', 'volume13/mn13_09.pdf', 13),
(166, 'Feeding ecology of the bokiboky, Mungotictis decemlineata (family Eupleridae)', 'volume13/mn13_010.pdf', 13),
(167, 'Mise à jour de la distribution du crapaud commun d’Asie (Duttaphrynus melanostictus) dans le sud de Toamasina, Madagascar', 'volume13/mn13_011.pdf', 13),
(168, 'Le bananier aquatique, Typhonodorum madagascariense (famille des Araceae) dans la commune rurale d’Ankililoaka, Sud-ouest de Madagascar', 'volume13/mn13_012.pdf', 13),
(169, 'Absence of Trypanosoma infection among Hoplobatrachus tigerinus (Amphibia: Dicroglossidae) from Boeny, western Madagascar', 'volume13/mn13_013.pdf', 13),
(170, 'Format for contributions to Malagasy Nature', 'volume13/mn13_014.pdf', 13),
(171, 'Notes aux contributeurs dans Malagasy Nature', 'volume13/mn13_015.pdf', 13),
(172, 'Tribute to Martin Edwin Nicoll (1954-2020): Forty years (1980-2020) of a British scientist dedicated to the conservation of Malagasy biodiversity', 'volume14/mn14_00.pdf', 14),
(173, 'Effet de l’exploitation minière sur les facteurs productifs comme l’agriculture et la production de charbon de bois et la dynamique de déforestation dans le Sud-ouest de Madagascar', 'volume14/mn14_01.pdf', 14),
(174, 'Etude dendrométrique et dendrochronologique de trois espèces de Cedrelopsis Baillon, (Rutaceae) dans les forêts sèches de l’Ouest de Madagascar', 'volume14/mn14_02.pdf', 14),
(175, 'Resting site choice depends on age in Opisthacanthus madagascariensis (Scorpiones: Hormuridae) in dry deciduous forest, western Madagascar', 'volume14/mn14_03.pdf', 14),
(176, 'A rapid avifaunal survey of the Mahimborondro Protected Area, northern Madagascar', 'volume14/mn14_04.pdf', 14),
(177, 'Field body temperatures in the rainforest frog Mantidactylus (Brygoomantis) bellyi from northern Madagascar: Variance and predictors', 'volume14/mn14_05.pdf', 14),
(178, 'Population dynamics of Lemur catta at selected sleeping sites of Tsimanampesotse National Park', 'volume14/mn14_06.pdf', 14),
(179, 'Canopy chameleon (Furcifer willsii) consumption by common big-eyed snake (Mimophis mahfalensis) in Fivahona Forest, eastern Madagascar', 'volume14/mn14_07.pdf', 14),
(180, 'First sighting of the House Crow Corvus splendens on Nosy Be', 'volume14/mn14_08.pdf', 14),
(181, 'Format for contributions to Malagasy Nature', 'volume14/mn14_09.pdf', 14),
(182, 'Notes aux contributeurs dans Malagasy Nature', 'volume14/mn14_10.pdf', 14),
(183, 'Foreword', 'volume15/mn15_00.pdf', 15),
(184, 'Introduction: The way of the future — new paleosciences research led by Malagasy scientists', 'volume15/mn15_01.pdf', 15),
(185, 'Applying human niche construction theory to study settlement choice in southwest Madagascar, 16th-19th centuries CE', 'volume15/mn15_02.pdf', 15),
(186, 'Nontrivial responses of vegetation to compound disturbances: A case study of Malagasy grasslands', 'volume15/mn15_03.pdf', 15),
(187, 'Adaptation of subsistence strategies of the southwestern Malagasy in the face of climate change', 'volume15/mn15_04.pdf', 15),
(188, 'The Malagasy monsoon over the Holocene: A review from speleothem δ18Oc records ', 'volume15/mn15_05.pdf', 15),
(189, 'Paleoecological evidence for late Holocene aridification from the Taolambiby subfossil site of southwestern Madagascar', 'volume15/mn15_06.pdf', 15),
(190, 'Description of the subfossil crocodylians from a new Late Pleistocene subfossil site (Tsaramody, Sambaina Basin) in central Madagascar', 'volume15/mn15_07.pdf', 15),
(191, 'Comparing the paleoclimates of northwestern and southwestern Madagascar during the late Holocene: Implications for the role of climate in megafaunal extinction', 'volume15/mn15_08.pdf', 15),
(192, 'Subfossil birds from a submerged cave in southwestern Madagascar', 'volume15/mn15_09.pdf', 15),
(193, 'The growth and development of Pachylemur, a large-bodied Lemuridae', 'volume15/mn15_10.pdf', 15),
(194, 'The stories people tell, and how they can contribute to our understanding of megafaunal decline and extinction in Madagascar', 'volume15/mn15_11.pdf', 15),
(195, 'Format for contributions to Malagasy Nature', 'volume15/mn15_12.pdf', 15),
(196, 'Notes aux contributeurs dans Malagasy Nature', 'volume15/mn15_13.pdf', 15),
(197, NULL, '2014_publicationeng.pdf', 25),
(198, NULL, '2014_memoiresandthesis.pdf', 26),
(199, NULL, 'Atlas.pdf', 27),
(200, 'Tome I: Introduction', 'PA book_t1.pdf', 28),
(201, 'Tome II: Northern and Eastern Madagascar', 'PA book_t2.pdf', 28),
(202, 'Tome III: Western and Southern Madagascar - Synthesis', 'PA book_t3.pdf', 28),
(225, 'Evaluation éco-biologique de la faune et de la flore de l’Aire Protégée d’Ambohitr’Antsingy (Montagne des Français), au Nord de Madagascar', 'MN16_Chapitre_01_Raherilalao.pdf', 39),
(226, 'Suivi de la population et sélection d’habitat du Héron crabier blanc Ardeola idae (Ardeidae) dans dix de ses zones de distribution à Madagascar', 'MN16_Chapitre_02_Pruvot.pdf', 39),
(227, 'Tendance de la population de Passer domesticus (famille des Ploceidae), une espèce d’oiseau envahissant, dans la ville de Toamasina, Madagascar', 'MN16_Chapitre_03_Raolihanitrasina.pdf', 39),
(228, 'Distribution spatiale de trois espèces d’oiseaux envahissants dans les villes portuaires de Madagascar', 'MN16_Chapitre_04_Raobson.pdf', 39),
(229, 'Etude du régime alimentaire du moineau domestique Passer domesticus (famille des Passeridae) dans la ville de Toamasina, Madagascar', 'MN16_Chapitre_05_Raolihanitrasina.pdf', 39),
(230, 'Régime alimentaire de Mops leucostigma (Chiroptera : Molossidae) dans la Station Forestière d’Ivoloina, Centre-est de Madagascar', 'MN16_Chapitre_06_Todilahy.pdf', 39),
(231, 'Trypanosoma infection in terrestrial small mammals from the Central Highlands of Madagascar', 'MN16_Chapitre_07_Rasoanoro.pdf', 39),
(232, 'New distribution record of the House Sparrow Passer domesticus in inland northwestern Madagascar', 'MN16_Note_01_Rene_de_Roland.pdf', 39),
(233, 'The first nest description of Eliurus majori (Rodentia: Nesomyidae), an endemic Malagasy rodent', 'MN16_Note_02_Rakotoarisoa.pdf', 39),
(234, 'Format for contributions to Malagasy Nature ', 'MN16_Format_fo_contributions.pdf', 39),
(235, 'Notes aux contributeurs dans Malagasy Nature ', 'MN16_Notes_aux_contributeurs.pdf', 39),
(236, NULL, '2021_publicationeng.pdf', 40);

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

DROP TABLE IF EXISTS `report`;
CREATE TABLE IF NOT EXISTS `report` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pdf` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `report_pdf_5a8dd1a4_uniq` (`pdf`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`id`, `title`, `pdf`, `year`) VALUES
(1, '2011 Annual Report', '2011_vahatra_annual_report_fin_lr.pdf', 2011),
(2, '2013 Annual Report', 'annual_report_for_2013_final_lr.pdf', 2013),
(3, '2014 Annual Report', 'annual_report_for_2014_fin_lr.pdf', 2014),
(4, '2015 Annual Report', 'annual_report_for_2015_fin_lr.pdf', 2015),
(5, '2016 Annual Report', 'annual_report_for_2016_fin_lr.pdf', 2016),
(6, '2017 Annual Report', '2017_rapport_annuel_lr.pdf', 2017),
(7, '2018 Annual Report', 'annual_report_for_2018_lr.pdf', 2018),
(8, '2019 Annual Report', 'vahatra_annual_report_for_2019.pdf', 2019),
(9, '2020 Annual Report', 'vahatra_annual_report_for_2020.pdf', 2020),
(10, '2021 Annual Report', 'vahatra_annual_report_2021.pdf', 2021),
(11, '2012 Annual Report', 'annual_report_2012.pdf', 2012);

-- --------------------------------------------------------

--
-- Table structure for table `sequences_sequence`
--

DROP TABLE IF EXISTS `sequences_sequence`;
CREATE TABLE IF NOT EXISTS `sequences_sequence` (
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `last` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `typeactivity`
--

DROP TABLE IF EXISTS `typeactivity`;
CREATE TABLE IF NOT EXISTS `typeactivity` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type_en` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type_fr` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `type` (`type`),
  UNIQUE KEY `type_en` (`type_en`),
  UNIQUE KEY `type_fr` (`type_fr`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `typeactivity`
--

INSERT INTO `typeactivity` (`id`, `type`, `type_en`, `type_fr`) VALUES
(1, 'Visit', 'Visit', 'Visite'),
(2, 'Conference', 'Conference', 'Séminaire'),
(3, 'Project', 'Project', 'Projet');

-- --------------------------------------------------------

--
-- Table structure for table `typemember`
--

DROP TABLE IF EXISTS `typemember`;
CREATE TABLE IF NOT EXISTS `typemember` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type_en` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type_fr` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `description_en` longtext COLLATE utf8_unicode_ci,
  `description_fr` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `type` (`type`),
  UNIQUE KEY `type_en` (`type_en`),
  UNIQUE KEY `type_fr` (`type_fr`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `typemember`
--

INSERT INTO `typemember` (`id`, `type`, `type_en`, `type_fr`, `description`, `description_en`, `description_fr`) VALUES
(1, 'board of directors', 'board of directors', 'comité de conseil', 'In the context of providing clear and long-term advice for the development of new programs and the management of the association, Vahatra places considerable importance on the board of directors.', 'In the context of providing clear and long-term advice for the development of new programs and the management of the association, Vahatra places considerable importance on the board of directors.', 'C’est dans le but de viser plus loin, avec plus de prévoyance et une vision claire et pragmatique que Vahatra a mis un accent particulier sur l’importance du comité de Conseil.'),
(2, 'scientists', 'scientists', 'scientifiques', 'They are the founding members of the association.', 'They are the founding members of the association.', 'Ce sont les membres fondateurs de l\'association.'),
(3, 'students', 'students', 'étudiants', 'Students enrolled within the Malagasy university system, particularly in the field of biology and environmental ecology, are the principal focus of the Vahatra program to help with their advancement and capacity building. We aim at having 12-15 students working with us at any given time. Once a student has finished their degree, the place is open for another incoming student.', 'Students enrolled within the Malagasy university system, particularly in the field of biology and environmental ecology, are the principal focus of the Vahatra program to help with their advancement and capacity building. We aim at having 12-15 students working with us at any given time. Once a student has finished their degree, the place is open for another incoming student.', 'Les étudiants inscrits dans le système universitaire malgache, en particulier dans le domaine de la biologie et l\'écologie environnementale, sont les principales cibles du programme de Vahatra, qui vise leur promotion et le renforcement de leur capacité. Notre but est d\'avoir 12 à 15 étudiants qui travaillent avec nous à un moment donné. Une fois que l\'étudiant a eu son diplôme, sa place est disponible pour un autre étudiant.'),
(4, 'staff', 'staff', 'personnels', 'The current staff includes seven individuals', 'The current staff includes seven individuals', 'Le personnel actuel comprend sept personnes');

-- --------------------------------------------------------

--
-- Table structure for table `typememberimage`
--

DROP TABLE IF EXISTS `typememberimage`;
CREATE TABLE IF NOT EXISTS `typememberimage` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `idtypemember` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `typememberimage_idtypemember_525b33c3_fk_typemember_id` (`idtypemember`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `typememberimage`
--

INSERT INTO `typememberimage` (`id`, `image`, `idtypemember`) VALUES
(2, 'BEA_113.webp', 1),
(3, 'cc1.webp', 1),
(4, 'Amena_035.webp', 2),
(5, 'Beman_037.webp', 3),
(6, 'Grop_090.webp', 3),
(7, 'DSC_0126.webp', 3),
(8, 'Etudiants.webp', 3),
(9, 'Groupe.webp', 4),
(10, 'DSC_0587.webp', 4);

-- --------------------------------------------------------

--
-- Table structure for table `typepublication`
--

DROP TABLE IF EXISTS `typepublication`;
CREATE TABLE IF NOT EXISTS `typepublication` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type_en` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type_fr` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `type` (`type`),
  UNIQUE KEY `type_en` (`type_en`),
  UNIQUE KEY `type_fr` (`type_fr`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `typepublication`
--

INSERT INTO `typepublication` (`id`, `type`, `type_en`, `type_fr`) VALUES
(1, 'Malagasy Nature', 'Malagasy Nature', 'Malagasy Nature'),
(2, 'Guides', 'Guides', 'Guides'),
(3, 'Other publications', 'Other publications', 'Autres publications');

-- --------------------------------------------------------

--
-- Table structure for table `typesubactivity`
--

DROP TABLE IF EXISTS `typesubactivity`;
CREATE TABLE IF NOT EXISTS `typesubactivity` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type_en` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type_fr` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `idtypeactivity` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `type` (`type`),
  UNIQUE KEY `type_en` (`type_en`),
  UNIQUE KEY `type_fr` (`type_fr`),
  KEY `typesubactivity_idtypeactivity_b4e8418d_fk_typeactivity_id` (`idtypeactivity`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `typesubactivity`
--

INSERT INTO `typesubactivity` (`id`, `type`, `type_en`, `type_fr`, `idtypeactivity`) VALUES
(1, 'science for the people', 'science for the people', 'sciences pour le peuple', 1),
(2, 'field schools', 'field schools', 'field schools', 1),
(3, 'biological inventories', 'biological inventories', 'inventaires biologiques', 1),
(4, 'Vahatra\'s event', 'Vahatra\'s event', 'événement de Vahatra', 2),
(5, 'Vahatra\'s cooperation', 'Vahatra\'s cooperation', 'collaboration de Vahatra', 2),
(6, 'grant', 'grant', 'subvention', 3),
(7, 'scientific research', 'scientific research', 'recherches scientifique', 3);

-- --------------------------------------------------------

--
-- Table structure for table `visit`
--

DROP TABLE IF EXISTS `visit`;
CREATE TABLE IF NOT EXISTS `visit` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dateend` date DEFAULT NULL,
  `idactivity` bigint(20) NOT NULL,
  `idlocation` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `visit_idactivity_323a22de_fk_activity_id` (`idactivity`),
  KEY `visit_idlocation_9dc07eb8_fk_location_id` (`idlocation`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `visit`
--

INSERT INTO `visit` (`id`, `dateend`, `idactivity`, `idlocation`) VALUES
(1, NULL, 1, 1),
(2, NULL, 2, 2),
(3, NULL, 3, 3),
(4, NULL, 4, 4),
(5, NULL, 5, 5),
(6, NULL, 6, 6),
(7, NULL, 7, 7),
(8, NULL, 8, 8),
(9, NULL, 9, 9),
(10, NULL, 10, 10),
(11, NULL, 11, 11),
(12, NULL, 12, 12),
(13, NULL, 13, 13),
(14, NULL, 14, 14),
(15, NULL, 15, 15),
(16, NULL, 16, 16),
(17, NULL, 17, 17),
(18, NULL, 18, 18),
(19, NULL, 19, 19),
(20, NULL, 20, 20),
(21, NULL, 21, 21),
(22, NULL, 22, 22),
(23, NULL, 23, 23),
(24, NULL, 24, 24),
(25, NULL, 25, 25),
(26, NULL, 26, 26),
(27, NULL, 27, 27),
(28, NULL, 28, 27),
(29, NULL, 29, 14),
(30, NULL, 30, 27),
(31, NULL, 31, 14),
(32, NULL, 32, 27),
(33, NULL, 33, 28),
(34, NULL, 34, 29),
(35, NULL, 35, 30),
(36, NULL, 36, 29),
(37, NULL, 37, 31),
(38, NULL, 38, 41),
(39, NULL, 39, 31),
(40, NULL, 40, 32),
(41, NULL, 41, 33),
(42, NULL, 42, 27),
(43, NULL, 43, 34),
(44, NULL, 44, 35),
(45, NULL, 45, 36),
(46, NULL, 46, 37),
(47, NULL, 47, 38),
(48, NULL, 48, 31),
(49, NULL, 49, 39),
(50, NULL, 50, 32),
(51, NULL, 51, 40),
(52, '2003-03-01', 52, 42),
(53, '2005-10-01', 53, 43),
(54, '2006-02-01', 54, 44),
(55, '2007-03-01', 55, 45),
(56, '2008-03-01', 56, 33),
(57, '2009-02-01', 57, 46),
(58, '2010-04-01', 58, 30),
(59, NULL, 59, 47),
(60, NULL, 60, 28),
(61, NULL, 61, 14),
(62, '2022-12-15', 62, 48);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activity`
--
ALTER TABLE `activity`
  ADD CONSTRAINT `activity_idtypeactivity_8153ff68_fk_typeactivity_id` FOREIGN KEY (`idtypeactivity`) REFERENCES `typeactivity` (`id`),
  ADD CONSTRAINT `activity_idtypesubactivity_edc37fdf_fk_typesubactivity_id` FOREIGN KEY (`idtypesubactivity`) REFERENCES `typesubactivity` (`id`);

--
-- Constraints for table `activityimage`
--
ALTER TABLE `activityimage`
  ADD CONSTRAINT `activityimage_idactivity_76641d8a_fk_activity_id` FOREIGN KEY (`idactivity`) REFERENCES `activity` (`id`);

--
-- Constraints for table `activityinstitution`
--
ALTER TABLE `activityinstitution`
  ADD CONSTRAINT `activityinstitution_idactivity_ef745460_fk_activity_id` FOREIGN KEY (`idactivity`) REFERENCES `activity` (`id`),
  ADD CONSTRAINT `activityinstitution_idinst_d34d2727_fk_institution_id` FOREIGN KEY (`idinst`) REFERENCES `institution` (`id`);

--
-- Constraints for table `activityperson`
--
ALTER TABLE `activityperson`
  ADD CONSTRAINT `activityperson_idactivity_410644dd_fk_activity_id` FOREIGN KEY (`idactivity`) REFERENCES `activity` (`id`),
  ADD CONSTRAINT `activityperson_idperson_9c78d1db_fk_person_id` FOREIGN KEY (`idperson`) REFERENCES `person` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `fieldschool`
--
ALTER TABLE `fieldschool`
  ADD CONSTRAINT `fieldschool_iddept_c231946d_fk_department_id` FOREIGN KEY (`iddept`) REFERENCES `department` (`id`),
  ADD CONSTRAINT `fieldschool_idinst_93831da0_fk_institution_id` FOREIGN KEY (`idinst`) REFERENCES `institution` (`id`),
  ADD CONSTRAINT `fieldschool_idvisit_0fb3b620_fk_visit_id` FOREIGN KEY (`idvisit`) REFERENCES `visit` (`id`);

--
-- Constraints for table `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `image_idtype_9ed792c0_fk_imagetype_id` FOREIGN KEY (`idtype`) REFERENCES `imagetype` (`id`);

--
-- Constraints for table `member`
--
ALTER TABLE `member`
  ADD CONSTRAINT `member_idperson_4b45cdf7_fk_person_id` FOREIGN KEY (`idperson`) REFERENCES `person` (`id`),
  ADD CONSTRAINT `member_idtypemember_a1701687_fk_typemember_id` FOREIGN KEY (`idtypemember`) REFERENCES `typemember` (`id`);

--
-- Constraints for table `memberpostinst`
--
ALTER TABLE `memberpostinst`
  ADD CONSTRAINT `memberpostinst_iddept_130bb226_fk_department_id` FOREIGN KEY (`iddept`) REFERENCES `department` (`id`),
  ADD CONSTRAINT `memberpostinst_idinst_dc6e2b3f_fk_institution_id` FOREIGN KEY (`idinst`) REFERENCES `institution` (`id`),
  ADD CONSTRAINT `memberpostinst_idmember_ec7fad30_fk_member_id` FOREIGN KEY (`idmember`) REFERENCES `member` (`id`),
  ADD CONSTRAINT `memberpostinst_idpost_dfb553ea_fk_post_id` FOREIGN KEY (`idpost`) REFERENCES `post` (`id`);

--
-- Constraints for table `messageofyear`
--
ALTER TABLE `messageofyear`
  ADD CONSTRAINT `messageofyear_idmember_2ab1dbf4_fk_member_id` FOREIGN KEY (`idmember`) REFERENCES `member` (`id`);

--
-- Constraints for table `partner`
--
ALTER TABLE `partner`
  ADD CONSTRAINT `partner_idinst_630ec2e1_fk_institution_id` FOREIGN KEY (`idinst`) REFERENCES `institution` (`id`);

--
-- Constraints for table `publication`
--
ALTER TABLE `publication`
  ADD CONSTRAINT `publication_idtype_701fb9f0_fk_typepublication_id` FOREIGN KEY (`idtype`) REFERENCES `typepublication` (`id`);

--
-- Constraints for table `publicationauthor`
--
ALTER TABLE `publicationauthor`
  ADD CONSTRAINT `publicationauthor_idperson_ceef0fe3_fk_person_id` FOREIGN KEY (`idperson`) REFERENCES `person` (`id`),
  ADD CONSTRAINT `publicationauthor_idpublication_fa82b830_fk_publication_id` FOREIGN KEY (`idpublication`) REFERENCES `publication` (`id`);

--
-- Constraints for table `publicationdetail`
--
ALTER TABLE `publicationdetail`
  ADD CONSTRAINT `publicationdetail_idpublication_59d64763_fk_publication_id` FOREIGN KEY (`idpublication`) REFERENCES `publication` (`id`);

--
-- Constraints for table `typememberimage`
--
ALTER TABLE `typememberimage`
  ADD CONSTRAINT `typememberimage_idtypemember_525b33c3_fk_typemember_id` FOREIGN KEY (`idtypemember`) REFERENCES `typemember` (`id`);

--
-- Constraints for table `typesubactivity`
--
ALTER TABLE `typesubactivity`
  ADD CONSTRAINT `typesubactivity_idtypeactivity_b4e8418d_fk_typeactivity_id` FOREIGN KEY (`idtypeactivity`) REFERENCES `typeactivity` (`id`);

--
-- Constraints for table `visit`
--
ALTER TABLE `visit`
  ADD CONSTRAINT `visit_idactivity_323a22de_fk_activity_id` FOREIGN KEY (`idactivity`) REFERENCES `activity` (`id`),
  ADD CONSTRAINT `visit_idlocation_9dc07eb8_fk_location_id` FOREIGN KEY (`idlocation`) REFERENCES `location` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
