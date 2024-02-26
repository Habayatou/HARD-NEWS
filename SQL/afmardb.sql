-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 15 jan. 2024 à 13:08
-- Version du serveur : 8.2.0
-- Version de PHP : 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `afmar`
--

-- --------------------------------------------------------

--
-- Structure de la table `country`
--

DROP TABLE IF EXISTS `country`;
CREATE TABLE IF NOT EXISTS `country` (
  `id` int NOT NULL,
  `country_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `flag` varchar(2) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `country`
--

INSERT INTO `country` (`id`, `country_name`, `email`, `flag`, `password`) VALUES
(1, 'Algeria', 'ubourthoumieux0@ucoz.ru', 'dz', 'Algeria'),
(2, 'Angola', 'nohern1@apache.org', 'AO', 'Angola'),
(3, 'Benin', 'tniven2@admin.ch', 'BJ', 'Benin'),
(4, 'Botswana', 'ccolcutt3@cafepress.com', 'BW', 'Botswana'),
(5, 'Burkina Faso', 'bbootyman4@histats.com', 'BF', 'Burkina Faso'),
(6, 'Burundi', 'soland5@yale.edu', 'BI', 'Burundi'),
(7, 'Cabo Verde', 'jmaccheyne6@eepurl.com', 'CV', 'Cabo Verde'),
(8, 'Cameroon', 'obland7@wisc.edu', 'CM', 'Cameroon'),
(9, 'Central African Republic', 'cquantick8@wisc.edu', 'CF', 'Central African Republic (CAR)'),
(10, 'Chad', 'friccioppo9@loc.gov', 'TD', 'Chad'),
(11, 'Comoros', 'amurrigana@delicious.com', 'KM', 'Comoros'),
(12, 'DR Congo', 'cfiermanb@wikispaces.com', 'CD', 'Congo, Democratic Republic of the'),
(13, 'Congo Republic', 'twigginc@histats.com', 'CG', 'Congo, Republic of the'),
(14, 'Cote d’Ivoire', 'cconsidined@sakura.ne.jp', 'CI', 'Cote d’Ivoire'),
(15, 'Djibouti', 'toglethorpee@howstuffworks.com', 'DJ', 'Djibouti'),
(16, 'Egypt', 'kponterf@bloglovin.com', 'EG', 'Egypt'),
(17, 'Equatorial Guinea', 'dglasscoeg@rakuten.co.jp', 'GQ', 'Equatorial Guinea'),
(18, 'Eritrea', 'hbickardikeh@hubpages.com', 'ER', 'Eritrea'),
(19, 'Eswatini', 'sattridei@hc360.com', 'SZ', 'Eswatini'),
(20, 'Ethiopia', 'fmongerj@dagondesign.com', 'ET', 'Ethiopia'),
(21, 'Gabon', 'bhewkink@tinyurl.com', 'GA', 'Gabon'),
(22, 'Gambia', 'gkaindll@wordpress.org', 'GM', 'Gambia'),
(23, 'Ghana', 'rfinnism@telegraph.co.uk', 'GH', 'Ghana'),
(24, 'Guinea', 'rallotn@skyrock.com', 'GN', 'Guinea'),
(25, 'Guinea-Bissau', 'gbenneo@surveymonkey.com', 'GW', 'Guinea-Bissau'),
(26, 'Kenya', 'ocrinionp@list-manage.com', 'KE', 'Kenya'),
(27, 'Lesotho', 'eglisaneq@soup.io', 'LS', 'Lesotho'),
(28, 'Liberia', 'acobboldr@miitbeian.gov.cn', 'LR', 'Liberia'),
(29, 'Libya', 'bsollimes@vimeo.com', 'LY', 'Libya'),
(30, 'Madagascar', 'pschuckt@goo.gl', 'MG', 'Madagascar'),
(31, 'Malawi', 'cvandaalenu@github.com', 'MW', 'Malawi'),
(32, 'Mali', 'dlearnedv@wordpress.org', 'ML', 'Mali'),
(33, 'Mauritania', 'battocw@exblog.jp', 'MR', 'Mauritania'),
(34, 'Mauritius', 'kboicex@engadget.com', 'MU', 'Mauritius'),
(35, 'Morocco', 'wvannozziiy@wufoo.com', 'MA', 'Morocco'),
(36, 'Mozambique', 'csnailhamz@prweb.com', 'MZ', 'Mozambique'),
(37, 'Namibia', 'rmccarrell10@ed.gov', 'NA', 'Namibia'),
(38, 'Niger', 'adenis11@bloglovin.com', 'NE', 'Niger'),
(39, 'Nigeria', 'bsibbert12@si.edu', 'NG', 'Nigeria'),
(40, 'Rwanda', 'lschukert13@etsy.com', 'RW', 'Rwanda'),
(41, 'Sao Tome and Principe', 'aingman14@edublogs.org', 'ST', 'Sao Tome and Principe'),
(42, 'Senegal', 'dwalsham15@privacy.gov.au', 'SN', 'Senegal'),
(43, 'Seychelles', 'tcansdill16@mapy.cz', 'SC', 'Seychelles'),
(44, 'Sierra Leone', 'mkender17@unesco.org', 'SL', 'Sierra Leone'),
(45, 'Somalia', 'lfaltskog18@parallels.com', 'SO', 'Somalia'),
(46, 'South Africa', 'rdaguanno19@ask.com', 'ZA', 'South Africa'),
(47, 'South Sudan', 'tunwins1a@globo.com', 'SS', 'South Sudan'),
(48, 'Sudan', 'idahlman1b@opensource.org', 'SD', 'Sudan'),
(49, 'Tanzania', 'hmanders1c@squidoo.com', 'TZ', 'Tanzania'),
(50, 'Togo', 'emulroy1d@indiatimes.com', 'TG', 'Togo'),
(51, 'Tunisia', 'ldalgetty1e@webs.com', 'TN', 'Tunisia'),
(52, 'Uganda', 'mrobens1f@reddit.com', 'UG', 'Uganda'),
(53, 'Zambia', 'tallingham1g@pagesperso-orange.fr', 'ZM', 'Zambia'),
(54, 'Zimbabwe', 'eslewcock1h@goodreads.com', 'ZW', 'Zimbabwe'),
(55, 'Sahrawi Republic', 'sahrawi@ucoz.ru', 'ra', 'Sahrawi');

-- --------------------------------------------------------

--
-- Structure de la table `economic_resilience`
--

DROP TABLE IF EXISTS `economic_resilience`;
CREATE TABLE IF NOT EXISTS `economic_resilience` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Agricultural_share` varchar(250) DEFAULT NULL,
  `Export_diversification` varchar(250) DEFAULT NULL,
  `Input_RCC` varchar(250) DEFAULT NULL,
  `country_name` varchar(120) DEFAULT NULL,
  `country_id` bigint DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `economic_resilience`
--

INSERT INTO `economic_resilience` (`ID`, `Agricultural_share`, `Export_diversification`, `Input_RCC`, `country_name`, `country_id`) VALUES
(1, NULL, NULL, NULL, 'Algeria', 1);

-- --------------------------------------------------------

--
-- Structure de la table `ecosystem_resilience`
--

DROP TABLE IF EXISTS `ecosystem_resilience`;
CREATE TABLE IF NOT EXISTS `ecosystem_resilience` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Forest_change` varchar(250) DEFAULT NULL,
  `Vegetation_cover` varchar(250) DEFAULT NULL,
  `Cultivated_area_share` varchar(250) DEFAULT NULL,
  `country_name` varchar(120) DEFAULT NULL,
  `country_id` bigint DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `ecosystem_resilience`
--

INSERT INTO `ecosystem_resilience` (`ID`, `Forest_change`, `Vegetation_cover`, `Cultivated_area_share`, `country_name`, `country_id`) VALUES
(1, NULL, NULL, NULL, 'Algeria', 1);

-- --------------------------------------------------------

--
-- Structure de la table `ghg_emission_reduction`
--

DROP TABLE IF EXISTS `ghg_emission_reduction`;
CREATE TABLE IF NOT EXISTS `ghg_emission_reduction` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `african_share` varchar(250) DEFAULT NULL,
  `methane_share` varchar(250) DEFAULT NULL,
  `CO2_share` varchar(250) DEFAULT NULL,
  `country_share` varchar(250) DEFAULT NULL,
  `AFoLU_share` varchar(120) DEFAULT NULL,
  `Energy_share` varchar(120) DEFAULT NULL,
  `country_name` varchar(120) DEFAULT NULL,
  `country_id` bigint DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `ghg_emission_reduction`
--

INSERT INTO `ghg_emission_reduction` (`ID`, `african_share`, `methane_share`, `CO2_share`, `country_share`, `AFoLU_share`, `Energy_share`, `country_name`, `country_id`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, 'Algeria', 1);

-- --------------------------------------------------------

--
-- Structure de la table `green_growth`
--

DROP TABLE IF EXISTS `green_growth`;
CREATE TABLE IF NOT EXISTS `green_growth` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `GHG_emission` varchar(250) DEFAULT NULL,
  `Emission_from_AFoLU` varchar(250) DEFAULT NULL,
  `Bioeconomy_share` varchar(250) DEFAULT NULL,
  `country_name` varchar(120) DEFAULT NULL,
  `country_id` bigint DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `green_growth`
--

INSERT INTO `green_growth` (`ID`, `GHG_emission`, `Emission_from_AFoLU`, `Bioeconomy_share`, `country_name`, `country_id`) VALUES
(1, 'emission', 'AFoLU', 'bioeconomy', 'Algeria', 1);

-- --------------------------------------------------------

--
-- Structure de la table `tracking_climate_risk`
--

DROP TABLE IF EXISTS `tracking_climate_risk`;
CREATE TABLE IF NOT EXISTS `tracking_climate_risk` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ground_surface_temperature` varchar(250) DEFAULT NULL,
  `drought_index` varchar(250) DEFAULT NULL,
  `incidence_floods` varchar(250) DEFAULT NULL,
  `incidence_landslides` varchar(250) DEFAULT NULL,
  `country_name` varchar(120) DEFAULT NULL,
  `country_id` bigint DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tracking_climate_risk`
--

INSERT INTO `tracking_climate_risk` (`ID`, `ground_surface_temperature`, `drought_index`, `incidence_floods`, `incidence_landslides`, `country_name`, `country_id`) VALUES
(1, NULL, NULL, '', '', 'Algeria', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
