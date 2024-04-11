-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2024 at 11:51 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `genshin`
--

-- --------------------------------------------------------

--
-- Table structure for table `artifacts`
--

CREATE TABLE `artifacts` (
  `name` varchar(50) NOT NULL,
  `R` char(1) DEFAULT NULL,
  `flower` varchar(50) DEFAULT NULL,
  `feather` varchar(50) DEFAULT NULL,
  `sands` varchar(50) DEFAULT NULL,
  `goblet` varchar(50) DEFAULT NULL,
  `circlet` varchar(50) DEFAULT NULL,
  `2set` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `artifacts`
--

INSERT INTO `artifacts` (`name`, `R`, `flower`, `feather`, `sands`, `goblet`, `circlet`, `2set`) VALUES
('Archaic Petra', '5', 'Flower of Creviced Cliff', 'Feather of Jagged Peaks', 'Sundial of Enduring Jade', 'Goblet of Chiseled Crag', 'Mask of Solitude Basalt', 'Geo DMG Bonus +15%'),
('Bloodstained Chivalry', '5', 'Bloodstained Flower of Iron', 'Bloodstained Black Plume', 'Bloodstained Final Hour', 'Bloodstained Chevalier\'s Goblet', 'Bloodstained Iron Mask', 'Physical DMG Bonus +25%'),
('Gladiator\'s Finale', '5', 'Gladiator\'s Nostalgia', 'Gladiator\'s Destiny', 'Gladiator\'s Longing', 'Gladiator\'s Intoxication', 'Gladiator\'s Triumphus', 'ATK +18%'),
('Maiden Beloved', '5', 'Maiden\'s Distant Love', 'Maiden\'s Heart-Stricken Infatuation ', 'Maiden\'s Passing Youth', 'Maiden\'s Fleeting Leisure', 'Maiden\'s Fading Beauty', 'Heal Effectiveness +15%'),
('Noblesse Oblige', '5', 'Royal Flora', 'Royal Plume', 'Royal Pocket Watch', 'Royal Silver Urn', 'Royal Masque', 'Elemental Burst DMG +20%'),
('Viridescent Venerer ', '5', 'In Remembrance of Viridescent Fields', 'Viridescent Arrow Feather', 'Viridescent Venerer\'s Determination', 'Viridescent Venerer\'s Vessel', 'Viridescent Venerer\'s Diadem', 'Anemo DMG Bonus +15%'),
('Wanderer\'s Troupe', '5', 'Troupe\'s Dawnlight', 'Bard\'s Arrow Feather', 'Concert\'s Final Hour', 'Wanderer\'s String-Kettle', 'Conductor\'s Top Hat', 'Elemental Mastery +80');

-- --------------------------------------------------------

--
-- Table structure for table `characters`
--

CREATE TABLE `characters` (
  `name` varchar(20) NOT NULL,
  `vision` varchar(8) DEFAULT NULL,
  `weapon` varchar(8) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `region` varchar(10) DEFAULT NULL,
  `ver` varchar(3) DEFAULT NULL,
  `rarity` char(1) DEFAULT '4',
  `constellation` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `characters`
--

INSERT INTO `characters` (`name`, `vision`, `weapon`, `gender`, `region`, `ver`, `rarity`, `constellation`) VALUES
('Albedo', 'Geo', 'Sword', 'Female', 'Mondstadt', '1.2', '5', 'Princeps Cretaceus'),
('Alhaitham', 'Dendro', 'Sword', 'Male', 'Sumeru', '3.4', '5', 'Vultur Volans'),
('Aloy', 'Cryo', 'Bow', 'Female', '-', '2.2', '4', 'Nora Fortis'),
('Amber', 'Pyro', 'Bow', 'Female', 'Mondstadt', '1.0', '4', 'Lepus'),
('Arataki Itto', 'Geo', 'Claymore', 'Male', 'Inazuma', '2.3', '5', 'Taurus Iracundus'),
('Arlecchino', 'Pyro', 'Polearm', 'Female', 'Snezhnaya', '4.6', '5', 'Ignis Purgatorius'),
('Baizhu', 'Dendro', 'Catalyst', 'Male', 'Liyue', '3.6', '5', 'Lagenaria'),
('Barbara', 'Hydro', 'Catalyst', 'Female', 'Mondstadt', '1.0', '4', 'Crater'),
('Beidou', 'Electro', 'Claymore', 'Female', 'Liyue', '1.0', '4', 'Victor Mare'),
('Bennett', 'Pyro', 'Sword', 'Male', 'Mondstadt', '1.0', '4', 'Rota Calamitas'),
('Candace', 'Hydro', 'Polearm', 'Female', 'Sumeru', '3.1', '4', 'Sagitta Scutum'),
('Charlotte', 'Cryo', 'Catalyst', 'Female', 'Fontaine', '4.2', '4', 'Hualina Veritas'),
('Chevreuse', 'Pyro', 'Polearm', 'Female', 'Fontaine', '4.3', '4', 'Sclopetum Ensiferum'),
('Chiori', 'Geo', 'Sword', 'Female', 'Fontaine', '4.5', '5', 'Cisoria'),
('Chongyun', 'Cryo', 'Claymore', 'Male', 'Liyue', '1.0', '4', 'Nubis Caesor'),
('Collei', 'Dendro', 'Bow', 'Female', 'Sumeru', '3.0', '4', 'Leptailurus Cervarius'),
('Cyno', 'Electro', 'Polearm', 'Male', 'Sumeru', '3.1', '5', 'Lupus Aureus'),
('Dehya', 'Pyro', 'Claymore', 'Female', 'Sumeru', '3.5', '5', 'Mantichora'),
('Diluc', 'Pyro', 'Claymore', 'Male', 'Mondstadt', '1.0', '5', 'Noctua'),
('Diona', 'Cryo', 'Bow', 'Female', 'Mondstadt', '1.1', '4', 'Feles'),
('Dori', 'Electro', 'Catalyst', 'Female', '', '3.0', '4', 'Magicae Lucerna'),
('Eula', 'Cryo', 'Claymore', 'Female', 'Mondstadt', '1.5', '5', 'Aphros Delos'),
('Faruzan', 'Anemo', 'Bow', 'Female', 'Sumeru', '3.3', '4', 'Flosculi Implexi'),
('Fischl', 'Electro', 'Bow', 'Female', 'Mondstadt', '1.0', '4', 'Corvus'),
('Freminet', 'Cryo', 'Claymore', 'Male', 'Fontaine', '4.0', '4', 'Automaton'),
('Furina', 'Hydro', 'Sword', 'Female', 'Fontaine', '4.2', '5', 'Animula Choragi'),
('Gaming', 'Pyro', 'Claymore', 'Male', 'Liyue', '4.4', '4', 'Leo Expergiscens'),
('Ganyu', 'Cryo', 'Bow', 'Female', 'Liyue', '1.2', '5', 'Sinae Unicornis'),
('Gorou', 'Geo', 'Bow', 'Male', 'Inazuma', '2.3', '4', 'Canis Bellatoris'),
('Hu Tao', 'Pyro', 'Polearm', 'Female', 'Liyue', '1.3', '5', 'Papilio Charontis'),
('Jean', 'Anemo', 'Sword', 'Female', 'Mondstadt', '1.0', '5', 'Leo Minor'),
('Kaedehara Kazuha', 'Anemo', 'Sword', 'Male', 'Inazuma', '1.6', '5', 'Acer Palmatum'),
('Kaeya', 'Cryo', 'Sword', 'Male', 'Mondstadt', '1.0', '4', 'Pavo Ocellus'),
('Kamisato Ayaka', 'Cryo', 'Sword', 'Female', 'Inazuma', '2.0', '5', 'Grus Nivis'),
('Kamisato Ayato', 'Hydro', 'Sword', 'Male', 'Inazuma', '2.6', '5', 'Cypressus Custos'),
('Kaveh', 'Dendro', 'Claymore', 'Male', 'Sumeru', '3.6', '4', 'Paradisaea'),
('Keqing', 'Electro', 'Sword', 'Female', 'Liyue', '1.0', '5', 'Trulla Cementarii'),
('Kirara', 'Dendro', 'Claymore', 'Female', 'Inazuma', '3.7', '4', 'Arcella'),
('Klee', 'Pyro', 'Catalyst', 'Female', 'Mondstadt', '1.0', '5', 'Trifolium'),
('Kujou Sara', 'Electro', 'Bow', 'Female', 'Inazuma', '2.1', '4', 'Flabellum'),
('Kuki Shinobu', 'Electro', 'Sword', 'Female', 'Inazuma', '2.7', '4', 'Tribulatio Demptio'),
('Layla', 'Cryo', 'Sword', 'Female', 'Sumeru', '3.2', '4', 'Luscinia'),
('Lisa', 'Electro', 'Catalyst', 'Female', 'Mondstadt', '1.0', '4', 'Tempus Fugit'),
('Lynette', 'Anemo', 'Sword', 'Female', 'Fontaine', '4.0', '4', 'Felis Alba'),
('Lyney', 'Pyro', 'Bow', 'Male', 'Fontaine', '4.0', '5', 'Felis Fuscus'),
('Mika', 'Cryo', 'Polearm', 'Male', 'Mondstadt', '3.5', '4', 'Palumbus'),
('Mona', 'Hydro', 'Catalyst', 'Female', 'Mondstadt', '1.0', '5', 'Astrolabos'),
('Nahida', 'Dendro', 'Catalyst', 'Female', 'Sumeru', '3.2', '5', 'Sapientia Oromasdis'),
('Navia', 'Geo', 'Claymore', 'Female', 'Fontaine', '4.3', '5', 'Rosa Multiflora'),
('Neuvilette', 'Hydro', 'Catalyst', 'Male', 'Fontaine', '4.1', '5', 'Leviathan Judicator'),
('Nilou', 'Hydro', 'Sword', 'Female', 'Sumeru', '3.1', '5', 'Lotos Somno'),
('Ningguang', 'Geo', 'Catalyst', 'Female', 'Liyue', '1.0', '4', 'Opus Aequilibrium'),
('Noelle', 'Geo', 'Claymore', 'Female', 'Mondstadt', '1.0', '4', 'Parma Cordis'),
('Qiqi', 'Cryo', 'Sword', 'Female', 'Liyue', '1.0', '5', 'Pristina Nola'),
('Raiden Shogun', 'Electro', 'Polearm', 'Female', 'Inazuma', '2.1', '5', 'Imperatrix Umbrosa'),
('Razor', 'Electro', 'Claymore', 'Male', 'Mondstadt', '1.0', '4', 'Lupus Minor'),
('Rosaria', 'Cryo', 'Polearm', 'Female', 'Mondstadt', '1.4', '4', 'Spinea Corona'),
('Sangonomiya Kokomi', 'Hydro', 'Catalyst', 'Female', 'Inazuma', '2.1', '5', 'Dracaena Somnolenta'),
('Sayu', 'Anemo', 'Claymore', 'Female', 'Inazuma', '2.0', '4', 'Nyctereutes Minor'),
('Shenhe', 'Cryo', 'Polearm', 'Female', 'Liyue', '2.4', '5', 'Crista Doloris'),
('Shikanoin Heizou', 'Anemo', 'Catalyst', 'Male', 'Inazuma', '2.8', '4', 'Cervus Minor'),
('Sucrose', 'Anemo', 'Catalyst', 'Female', 'Mondstadt', '1.0', '4', 'Ampulla'),
('Tartaglia', 'Hydro', 'Bow', 'Male', 'Snezhnaya', '1.1', '5', 'Monoceros Caeli'),
('Thoma', 'Pyro', 'Polearm', 'Male', 'Inazuma', '2.2', '4', 'Rubeum Scutum'),
('Tighnari', 'Dendro', 'Bow', 'Male', 'Sumeru', '3.0', '5', 'Vulpes Zerda'),
('Traveler', '-', 'Sword', 'Male/Female', '-', '1.0', '5', 'Viator/Viatrix'),
('Venti', 'Anemo', 'Bow', 'Male', 'Mondstadt', '1.0', '5', 'Carmen Dei'),
('Wanderer', 'Anemo', 'Catalyst', 'Male', 'Sumeru', '3.3', '5', 'Peregrinus'),
('Wriothesley', 'Cryo', 'Catalyst', 'Male', 'Fontaine', '4.1', '5', 'Cerberus'),
('Xiangling', 'Pyro', 'Polearm', 'Female', 'Liyue', '1.0', '4', 'Trulla'),
('Xianyun', 'Anemo', 'Catalyst', 'Female', 'Liyue', '4.4', '5', 'Grus Serena'),
('Xiao', 'Anemo', 'Polearm', 'Male', 'Liyue', '1.3', '5', 'Alatus Nemeseos'),
('Xingqiu', 'Hydro', 'Sword', 'Male', 'Liyue', '1.0', '4', 'Fabulae Textile'),
('Xinyan', 'Pyro', 'Claymore', 'Female', 'Liyue', '1.1', '4', 'Fila Ignium'),
('Yae Miko', 'Electro', 'Catalyst', 'Female', 'Inazuma', '2.5', '5', 'Divina Vulpes'),
('Yanfei', 'Pyro', 'Catalyst', 'Female', 'Liyue', '1.5', '4', 'Bestia Iustitia'),
('Yaoyao', 'Dendro', 'Polearm', 'Female', 'Liyue', '3.4', '4', 'Osmanthus'),
('Yelan', 'Hydro', 'Bow', 'Female', 'Liyue', '2.7', '5', 'Umbrabilis Orchis'),
('Yoimiya', 'Pyro', 'Bow', 'Female', 'Inazuma', '2.0', '5', 'Carassius Auratus'),
('Yun Jin', 'Geo', 'Polearm', 'Female', 'Liyue', '2.4', '4', 'Opera Grandis'),
('Zhongli', 'Geo', 'Polearm', 'Male', 'Liyue', '1.1', '5', 'Lapis Dei');

-- --------------------------------------------------------

--
-- Table structure for table `weapons`
--

CREATE TABLE `weapons` (
  `wp_name` varchar(50) NOT NULL,
  `type` varchar(8) DEFAULT NULL,
  `rarity` char(1) DEFAULT '5',
  `base_atk` varchar(5) DEFAULT NULL,
  `stat_type` varchar(40) DEFAULT NULL,
  `stat` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `weapons`
--

INSERT INTO `weapons` (`wp_name`, `type`, `rarity`, `base_atk`, `stat_type`, `stat`) VALUES
('Ballad of the Boundless Blue', 'Catalyst', '4', '565', 'Energy Recharge', '30.6%'),
('Song of Broken Pines', 'Claymore', '5', '741', 'Physical DMG Bonus', '20.7%'),
('Staff of Homa', 'Polearm', '5', '608', 'Crit Damage', '66.2%'),
('Summit Shaper', 'Sword', '5', '608', 'ATK', '49.6%'),
('Thundering Pulse', 'Bow', '5', '608', 'Crit Damage', '66.2%'),
('Verdict', 'Claymore', '5', '674', 'Crit Rate', '22.1%'),
('Wolf Gravestone', 'Claymore', '5', '608', 'ATK', '49.6%');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artifacts`
--
ALTER TABLE `artifacts`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `weapons`
--
ALTER TABLE `weapons`
  ADD PRIMARY KEY (`wp_name`),
  ADD UNIQUE KEY `wp_name` (`wp_name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
