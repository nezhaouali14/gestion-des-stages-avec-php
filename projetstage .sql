-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 16 juin 2022 à 01:50
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `projetstage`
--

-- --------------------------------------------------------

--
-- Structure de la table `administrateur`
--

CREATE TABLE `administrateur` (
  `email` varchar(50) DEFAULT NULL,
  `mdp` varchar(61) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `administrateur`
--

INSERT INTO `administrateur` (`email`, `mdp`) VALUES
('admin@uit.ac.ma', 'AZERTY'),
('fadoua.zeroual@uit.ac.ma', 'AZERTY');

-- --------------------------------------------------------

--
-- Structure de la table `enseignant`
--

CREATE TABLE `enseignant` (
  `id_enseignant` int(12) NOT NULL,
  `nomEns` varchar(22) DEFAULT NULL,
  `prenomEns` varchar(13) DEFAULT NULL,
  `email` varchar(33) DEFAULT NULL,
  `mdp` varchar(6) DEFAULT NULL,
  `url` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `enseignant`
--

INSERT INTO `enseignant` (`id_enseignant`, `nomEns`, `prenomEns`, `email`, `mdp`, `url`) VALUES
(1, 'BOUMAZZOU', 'Ibrahim', 'ibrahim.boumazzou@uit.ac.ma', 'AZERTY', NULL),
(2, 'ABOUTAFAIL', 'Moulay Othman', 'moulayothman.aboutafail@uit.ac.ma', 'AZERTY', NULL),
(3, 'HMINA', 'Nabil', 'nabil.hmina@uit.ac.ma', 'AZERTY', NULL),
(4, 'MHARZI', 'Hassan', 'h.mharzi@uit.ac.ma', 'AZERTY', NULL),
(5, 'GRETETE', 'Driss', 'driss.gretete@uit.ac.ma', 'AZERTY', NULL),
(6, 'MASLOUHI', 'Mostafa', 'mostafa.maslouhi@uit.ac.ma', 'AZERTY', NULL),
(7, 'ABOUABDELLAH', 'Abdellah', 'abdellah.abouabdellah@uit.ac.ma', 'AZERTY', NULL),
(8, 'BELGHITI', 'Moulay Taib', 'moulaytaib.belghiti@uit.ac.ma', 'AZERTY', NULL),
(9, 'CHAOUI', 'Habiba', 'habiba.chaoui@uit.ac.ma', 'AZERTY', NULL),
(10, 'ELOUADI', 'Abdelmajid', 'abdelmajid.elouadi@uit.ac.ma', 'AZERTY', NULL),
(11, 'EL HAMI', 'Norelislam', 'norelislam.elhami@uit.ac.ma', 'AZERTY', NULL),
(12, 'BENTALEB', 'Youssef', 'youssef.bentaleb@uit.ac.ma', 'AZERTY', NULL),
(13, 'CHOUGDALI', 'Khalid', 'khalid.chougdali@uit.ac.ma', 'AZERTY', NULL),
(14, 'BELFKIH', 'Samir', 'samir.belfkih@uit.ac.ma', 'AZERTY', NULL),
(15, 'OUMAIRA', 'Ilham', 'ilham.oumaira@uit.ac.ma', 'AZERTY', NULL),
(16, 'AMINE', 'Aouatif', 'aouatif.amine@uit.ac.ma', 'AZERTY', NULL),
(17, 'BOUAYAD', 'Anas', 'anas.bouayad@uit.ac.ma', 'AZERTY', NULL),
(18, 'EL BOUZEKRI EL IDRISSI', 'Younes', 'y.elbouzekri@uit.ac.ma', 'AZERTY', NULL),
(19, 'AIT LAHCEN', 'Ayoub', 'ayoub.aitlahcen@uit.ac.ma', 'AZERTY', NULL),
(20, 'HACHIMI', 'Hanaa', 'hanaa.hachimi@uit.ac.ma', 'AZERTY', NULL),
(21, 'BANNARI', 'Rachid', 'rachid.bannari@uit.ac.ma', 'AZERTY', NULL),
(22, 'MABTOUL', 'Samira', 'samira.mabtoul@uit.ac.ma', 'AZERTY', NULL),
(23, 'EL ABBADI', 'Laila', 'laila.elabbadi@uit.ac.ma', 'AZERTY', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `entreprise`
--

CREATE TABLE `entreprise` (
  `id_entreprise` int(7) NOT NULL,
  `nom` varchar(36) DEFAULT NULL,
  `adresse` varchar(51) DEFAULT NULL,
  `tel` int(14) DEFAULT NULL,
  `ville` varchar(12) DEFAULT NULL,
  `NomPrenomEncadrant` varchar(61) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `entreprise`
--

INSERT INTO `entreprise` (`id_entreprise`, `nom`, `adresse`, `tel`, `ville`, `NomPrenomEncadrant`) VALUES
(1, 'DELPHI', 'TFZ (Zone Franche de Tnager, Gzennaya)', 6, 'Tanger', NULL),
(2, 'TAKATA PETRI', 'TFZ (Zone Franche de Tnager, Gzennaya)', 6, 'Tanger', NULL),
(3, 'PREMO', 'TFZ (Zone Franche de Tnager, Gzennaya)', 6, 'Tanger', NULL),
(4, 'ANTOLIN', 'TFZ (Zone Franche de Tnager, Gzennaya)', 6, 'Tanger', NULL),
(5, 'SEBN', 'TFZ (Zone Franche de Tnager, Gzennaya)', 6, 'Tanger', NULL),
(6, 'SEBN', 'TFZ (Zone Franche de Tnager, Gzennaya)', 6, 'Tanger', NULL),
(7, 'RENAULT TANGER MED', 'TFZ (Zone Franche de Tnager, Gzennaya)', 6, 'Tanger', NULL),
(8, 'TRONICO ATLAS', 'TFZ (Zone Franche de Tnager, Gzennaya)', 6, 'Tanger', NULL),
(9, 'TREROC', 'TFZ (Zone Franche de Tnager, Gzennaya)', 6, 'Tanger', NULL),
(10, 'SOURIAU MAROC', 'TFZ (Zone Franche de Tnager, Gzennaya)', 6, 'Tanger', NULL),
(11, 'COMPONENTES DE AUTOMOCION MARROQUIES', 'TFZ (Zone Franche de Tnager, Gzennaya)', 6, 'Tanger', NULL),
(12, 'DALPER', 'TFZ (Zone Franche de Tnager, Gzennaya)', 6, 'Tanger', NULL),
(13, 'SULIMET MAROC', 'TFZ (Zone Franche de Tnager, Gzennaya)', 6, 'Tanger', NULL),
(14, 'Najat Foulous', 'TFZ (Zone Franche de Tnager, Gzennaya)', 6, 'Tanger', NULL),
(15, 'SIRA MAROC', 'TFZ (Zone Franche de Tnager, Gzennaya)', 6, 'Tanger', NULL),
(16, 'FUJIKURA', 'TFZ (Zone Franche de Tnager, Gzennaya)', 6, 'Tanger', NULL),
(17, 'DL AEROTECHNOLOGIE', 'TFZ (Zone Franche de Tnager, Gzennaya)', 6, 'Tanger', NULL),
(18, 'UNI', 'TFZ (Zone Franche de Tnager, Gzennaya)', 6, 'Tanger', NULL),
(19, 'Omar El Haj', 'TFZ (Zone Franche de Tnager, Gzennaya)', 6, 'Tanger', NULL),
(20, 'TVDB', 'TFZ (Zone Franche de Tnager, Gzennaya)', 6, 'Tanger', NULL),
(21, 'LEAR', 'TFZ (Zone Franche de Tnager, Gzennaya)', 6, 'Tanger', NULL),
(22, 'SEBN', 'TFZ (Zone Franche de Tnager, Gzennaya)', 6, 'Tanger', NULL),
(23, 'ARTOPIEL', 'TFZ (Zone Franche de Tnager, Gzennaya)', 6, 'Tanger', NULL),
(24, 'ARFADEL', 'TFZ (Zone Franche de Tnager, Gzennaya)', 6, 'Tanger', NULL),
(25, 'AL MAGHRIB MARINE PROPELLERS', 'TFZ (Zone Franche de Tnager, Gzennaya)', 6, 'Tanger', NULL),
(26, 'EIREMOR', 'TFZ (Zone Franche de Tnager, Gzennaya)', 6, 'Tanger', NULL),
(27, '', '', NULL, 'Agadir', NULL),
(28, '', '\n', NULL, 'Agadir', NULL),
(29, '', '', NULL, 'Agadir', NULL),
(30, '', '', NULL, 'Agadir', NULL),
(31, '', '', NULL, 'Agadir', NULL),
(32, '', '', NULL, 'Agadir', NULL),
(33, '', '', NULL, 'Agadir', NULL),
(34, '', '\n', NULL, 'Agadir', NULL),
(35, '', '', NULL, 'Aïn Harrouda', NULL),
(36, '', '\n', NULL, 'Aïn Harrouda', NULL),
(37, '', 'zone industrielle - b.p.416 - 80150\nAït Melloul', NULL, 'Aït Melloul', NULL),
(38, '', '', NULL, 'Aït Melloul', NULL),
(39, 'ALUMINIUM DU MAROC', '', 539, 'TANGER', NULL),
(40, 'AMAROC', '', 522, 'CASABLANCA', NULL),
(41, 'ANPME', 'rue ghandi,2011', 537, 'Rabat', NULL),
(42, 'ANPME', 'rue ghandi,2011', 537, 'Rabat', NULL),
(43, 'ANPME', 'rue ghandi,2011', 537, 'Rabat', NULL),
(44, 'ANRT', 'centre affair bd ariad,2939', 537, 'Rabat', NULL),
(45, 'ANRT', 'centre affair bd ariad,2939', 537, 'Rabat', NULL),
(46, 'ANRT', '', 537, 'Rabat', NULL),
(47, 'ARAB BANK', '167 Bd mouhamed V', 522, 'CASABLANCA', NULL),
(48, 'ARAB BANK', '', 522, 'CASABLANCA', NULL),
(49, 'ARAB BANK', '', 522, 'CASABLANCA', NULL),
(50, 'ARCOL S.A.R.L', '', 522, 'CASABLANCA', NULL),
(51, 'ARCOL S.A.R.L', '', 522, 'CASABLANCA', NULL),
(52, 'ARMOR INDUSTRIES', '\n', 522, 'CASABLANCA', NULL),
(53, 'ARVAL', '', 522, 'CASABLANCA', NULL),
(54, 'ASSO MAROCAINE', '\n', 522, 'CASABLANCA', NULL),
(55, '', '', 522, 'CASABLANCA', NULL),
(56, '', '', 522, 'CASABLANCA', NULL),
(57, 'ASSOCIATION DES PILES', '', 522, 'CASABLANCA', NULL),
(58, 'COSUMAR', '96/100 Bd Roudani', 522, 'Casablanca', NULL),
(59, 'CPM', '', 522, 'CASABLANCA', NULL),
(60, 'IFRIQUIA PLASTIQUE', '', 522, 'casablanca', NULL),
(61, 'NESTLE MAROC', 'bd ahl ghlam', 0, 'titmalile', NULL),
(62, 'ONE', '60, rue d\'alger', 522, 'CASABLANCA', NULL),
(63, 'ONEP', 'Ouazzani', 537, 'RABAT', NULL),
(64, 'LARINOR', 'TFZ (Zone Franche de Tnager, Gzennaya)', 6, 'Tanger', NULL),
(65, 'INISHFREE CLOTHING', 'TFZ (Zone Franche de Tnager, Gzennaya)', 6, 'Tanger', NULL),
(66, 'MBP', 'TFZ (Zone Franche de Tnager, Gzennaya)', 6, 'Tanger', NULL),
(67, 'CRANGOMAR', 'TFZ (Zone Franche de Tnager, Gzennaya)', 6, 'Tanger', NULL),
(68, 'Medi 1 TV', 'TFZ (Zone Franche de Tnager, Gzennaya)', 6, 'Tanger', NULL),
(69, 'MK AERO', 'TFZ (Zone Franche de Tnager, Gzennaya)', 6, 'Tanger', NULL),
(70, 'CIB OFFSHORE', 'TFZ (Zone Franche de Tnager, Gzennaya)', 6, 'Tanger', NULL),
(71, 'STIL NUA FASHION', 'TFZ (Zone Franche de Tnager, Gzennaya)', 5, 'Tanger', NULL),
(72, 'TRIAL', 'TFZ (Zone Franche de Tnager, Gzennaya)', 5, 'Tanger', NULL),
(73, 'UNIVERSITE NOMADE', 'TFZ (Zone Franche de Tnager, Gzennaya)', 6, 'Tanger', NULL),
(74, 'GO CENTER', 'TFZ (Zone Franche de Tnager, Gzennaya)', 6, 'Tanger', NULL),
(75, 'SCHLEMMER', 'TFZ (Zone Franche de Tnager, Gzennaya)', 5, 'Tanger', NULL),
(76, 'SNOP', 'TFZ (Zone Franche de Tnager, Gzennaya)', 6, 'Tanger', NULL),
(77, 'HAITAM FISH', 'TFZ (Zone Franche de Tnager, Gzennaya)', 6, 'Tanger', NULL),
(78, 'NOUR CHIKAR TEXTILE', 'TFZ (Zone Franche de Tnager, Gzennaya)', 6, 'Tanger', NULL),
(79, 'FAYA MODA', 'TFZ (Zone Franche de Tnager, Gzennaya)', 6, 'Tanger', NULL),
(80, 'GIM ELECTRONICS', 'TFZ (Zone Franche de Tnager, Gzennaya)', 6, 'Tanger', NULL),
(81, 'MS COMPOSITES', 'TFZ (Zone Franche de Tnager, Gzennaya)', 6, 'Tanger', NULL),
(82, 'AUTOMOTIVE CABLAGE CONTROL', 'TFZ (Zone Franche de Tnager, Gzennaya)', 6, 'Tanger', NULL),
(83, 'SIRA MAROC', 'TFZ (Zone Franche de Tnager, Gzennaya)', 6, 'Tanger', NULL),
(84, 'IMMO FINANCES', 'TFZ (Zone Franche de Tnager, Gzennaya)', 6, 'Tanger', NULL),
(85, 'TRONICO ATLAS', 'TFZ (Zone Franche de Tnager, Gzennaya)', 6, 'Tanger', NULL),
(86, 'POLYDESIGN', 'TFZ (Zone Franche de Tnager, Gzennaya)', 6, 'Tanger', NULL),
(87, 'SEALYNX', 'TFZ (Zone Franche de Tnager, Gzennaya)', 6, 'Tanger', NULL),
(88, 'MOMY CONFORT', 'TFZ (Zone Franche de Tnager, Gzennaya)', 6, 'Tanger', NULL),
(89, 'MOMY CONFORT', 'TFZ (Zone Franche de Tnager, Gzennaya)', 6, 'Tanger', NULL),
(90, 'VENTEC MAROC', 'TFZ (Zone Franche de Tnager, Gzennaya)', 6, 'Tanger', NULL),
(91, 'STERIMAX', 'TFZ (Zone Franche de Tnager, Gzennaya)', 6, 'Tanger', NULL),
(92, 'NUCAIN', 'TFZ (Zone Franche de Tnager, Gzennaya)', 6, 'Tanger', NULL),
(93, 'MMO', 'TFZ (Zone Franche de Tnager, Gzennaya)', 6, 'Tanger', NULL),
(94, 'SMAICO', 'TFZ (Zone Franche de Tnager, Gzennaya)', 6, 'Tanger', NULL),
(95, 'COFICAB', 'TFZ (Zone Franche de Tnager, Gzennaya)', 6, 'Tanger', NULL),
(96, 'DL AEROTECHNOLOGIE', 'TFZ (Zone Franche de Tnager, Gzennaya)', 6, 'Tanger', NULL),
(97, 'YAZAKI', 'TFZ (Zone Franche de Tnager, Gzennaya)', 6, 'Tanger', NULL),
(98, 'EUROFILET', 'TFZ (Zone Franche de Tnager, Gzennaya)', 5, 'Tanger', NULL),
(99, 'FUJIKURA', 'TFZ (Zone Franche de Tnager, Gzennaya)', 6, 'Tanger', NULL),
(100, 'FUJIKURA', 'TFZ (Zone Franche de Tnager, Gzennaya)', 6, 'Tanger', NULL),
(101, 'GMD', 'TFZ (Zone Franche de Tnager, Gzennaya)', 6, 'Tanger', NULL),
(102, '', '\n', NULL, 'Agadir', NULL),
(103, '', '\n', NULL, 'Agadir', NULL),
(104, '', '', NULL, 'Agadir', NULL),
(105, '', '', NULL, 'Agadir', NULL),
(106, '', '', NULL, 'Agadir', NULL),
(107, '', '', NULL, 'Agadir', NULL),
(108, '', '', NULL, 'Agadir', NULL),
(109, '', '', NULL, 'Casablanca', NULL),
(110, '', '\n', NULL, 'Casablanca', NULL),
(111, '', '', NULL, 'Casablanca', NULL),
(112, '', '', NULL, 'Casablanca', NULL),
(113, '', '', NULL, 'Aïn Harrouda', NULL),
(114, '', 'route de Rabat (r.p. 1), km 15 - 20630 Aïn Harrouda', NULL, 'Aïn Harrouda', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

CREATE TABLE `etudiant` (
  `id` int(11) NOT NULL,
  `diplôme` varchar(7) DEFAULT NULL,
  `apogee` int(8) DEFAULT NULL,
  `nom` varchar(25) DEFAULT NULL,
  `prenom` varchar(19) DEFAULT NULL,
  `email` varchar(41) DEFAULT NULL,
  `mdp` varchar(6) DEFAULT NULL,
  `url` text NOT NULL,
  `id_stage` int(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `etudiant`
--

INSERT INTO `etudiant` (`id`, `diplôme`, `apogee`, `nom`, `prenom`, `email`, `mdp`, `url`, `id_stage`) VALUES
(1, 'NDIGEDU', 18007992, 'EL MOUSSAOUI', 'HAIFAE', 'haifae.elmoussaoui@uit.ac.ma', 'AZERTY', '', 400),
(2, 'NDIGEDU', 18010233, 'AIT ABBOU', 'HOUYAME', 'houyame.aitabbou@uit.ac.ma', '500287', 'IMG-6290dfb05608f9.18100243.fffff.png', NULL),
(3, 'NDIGEDU', 17006468, 'EL AAZAOUZI', 'IKRAM', 'ikram.elaazaouzi@uit.ac.ma', 'AZERTY', '', NULL),
(4, 'NDIGEDU', 18008029, 'KHATTABI', 'AMAL', 'amal.khattabi@uit.ac.ma', 'AZERTY', '', NULL),
(5, 'NDIGEDU', 17008796, 'NDIAYE', 'DIOR', 'dior.ndiaye@uit.ac.ma', 'AZERTY', '', NULL),
(6, 'NDIGEDU', 17007548, 'ZAOUI', 'MANAL', 'manal.zaoui@uit.ac.ma', 'AZERTY', '', NULL),
(7, 'NDIGEDU', 17006549, 'FENNIRI', 'JIHAN', 'jihan.fenniri@uit.ac.ma', 'AZERTY', '', NULL),
(8, 'NDIGEDU', 17006953, 'R GUIBI', 'CHAIMAA', 'chaimaa.rguibi@uit.ac.ma', 'AZERTY', '', NULL),
(9, 'NDIGEDU', 19009650, 'BOUOUZM', 'YASSINE', 'yassine.bououzm@uit.ac.ma', 'AZERTY', '', NULL),
(10, 'NDIGEDU', 19000010, 'OUKECHI', 'CHAIMAE', 'chaimae.oukechi@uit.ac.ma', 'AZERTY', '', NULL),
(11, 'NDIGEDU', 18008290, 'SADRAOUI', 'HIBAT ALLAH', 'hibatallah.sadraoui@uit.ac.ma', 'AZERTY', '', NULL),
(12, 'NDIGEDU', 19008634, 'LACHIA', 'SALMA', 'salma.lachia@uit.ac.ma', 'AZERTY', '', NULL),
(13, 'NDIGEDU', 19000078, 'SOUINIA', 'KELTOUM', 'keltoum.souinia@uit.ac.ma', 'AZERTY', '', NULL),
(14, 'NDIGEDU', 17007567, 'BOUTRIG', 'OUMNIA', 'oumnia.boutrig@uit.ac.ma', 'AZERTY', '', NULL),
(15, 'NDIGEDU', 18000037, 'EL HANI', 'MOHAMED ACHRAF', 'mohamedachraf.elhani@uit.ac.ma', 'AZERTY', '', NULL),
(16, 'NDIGEDU', 18009005, 'EL HAOUARI', 'FAHD', 'fahd.elhaouari@uit.ac.ma', 'AZERTY', '', NULL),
(17, 'NDIGEDU', 17006852, 'FRIKICH', 'RANIA', 'rania.frikich@uit.ac.ma', 'AZERTY', '', NULL),
(18, 'NDIGEDU', 18000218, 'LAFDALI', 'HAMZA', 'hamza.lafdali@uit.ac.ma', 'AZERTY', '', NULL),
(19, 'NDIGEDU', 18007854, 'OURAZZOUQ', 'FATIMA EZZAHRA', 'fatimaezzahra.ourazzouq@uit.ac.ma', 'AZERTY', '', NULL),
(20, 'NDIGEDU', 17006965, 'MAATI', 'KENZA', 'kenza.maati@uit.ac.ma', 'AZERTY', '', NULL),
(21, 'NDIGEDU', 18007933, 'SMINA', 'NOUHAILA', 'nouhaila.smina@uit.ac.ma', 'AZERTY', '', NULL),
(22, 'NDIGEDU', 18007936, 'ZOUHRI', 'FARAH', 'farah.zouhri@uit.ac.ma', 'AZERTY', '', NULL),
(23, 'NDIGEDU', 17004960, 'BENAYADA', 'OUSSAMA', 'oussama.benayada@uit.ac.ma', 'AZERTY', '', NULL),
(24, 'NDIGEDU', 19011104, 'BIROUK', 'NOURA', 'noura.birouk@uit.ac.ma', 'AZERTY', '', NULL),
(25, 'NDIGEDU', 17006335, 'EL GHALI', 'RANIA', 'rania.elghali@uit.ac.ma', 'AZERTY', '', NULL),
(26, 'NDIGEDU', 17004329, 'KANDIL', 'YAHIA', 'yahia.kandil@uit.ac.ma', 'AZERTY', '', NULL),
(27, 'NDIGEDU', 18007150, 'MASROUR', 'OUMAYMA', 'oumayma.masrour@uit.ac.ma', 'AZERTY', '', NULL),
(28, 'NDIGEDU', 19008627, 'KOURTAH', 'NADA', 'nada.kourtah@uit.ac.ma', 'AZERTY', '', NULL),
(29, 'NDIGEDU', 19011266, 'ZOUNGRANA YVES ALBAN', 'SOM-BE-WENDE', 'som-be-wende.zoungranayvesalban@uit.ac.ma', 'AZERTY', '', NULL),
(30, 'NDIGEDU', 19008604, 'MOUGTAHIDI', 'SALMA', 'salma.mougtahidi@uit.ac.ma', 'AZERTY', '', NULL),
(31, 'NDIGEDU', 19008679, 'EL AISSI', 'NOUHAILA', 'nouhaila.elaissi@uit.ac.ma', 'AZERTY', '', NULL),
(32, 'NDIGEDU', 19000036, 'OUARDI', 'IKHLASSE', 'ikhlasse.ouardi@uit.ac.ma', 'AZERTY', '', NULL),
(33, 'NDIGEDU', 19000186, 'LAGHDIRI', 'CHAIMAA', 'chaimaa.laghdiri@uit.ac.ma', 'AZERTY', '', NULL),
(34, 'NDIGEDU', 19011115, 'TIZIT', 'MOUAD', 'mouad.tizit@uit.ac.ma', 'AZERTY', '', NULL),
(35, 'NDIGEDU', 19000126, 'ETTAIEK', 'LAMYAE', 'lamyae.ettaiek@uit.ac.ma', 'AZERTY', '', NULL),
(36, 'NDIGEDU', 18009006, 'ESSAOUDI', 'FATIMA', 'fatima.essaoudi@uit.ac.ma', 'AZERTY', '', NULL),
(37, 'NDIGEDU', 21017808, 'GHALLOUDI', 'ADAM', 'adam.ghalloudi@uit.ac.ma', 'AZERTY', '', NULL),
(38, 'NDIGEDU', 21015880, 'ELOMARI', 'ZAKARIAE', 'zakariae.elomari@uit.ac.ma', 'AZERTY', '', NULL),
(39, 'NDIGEDU', 20006692, 'BOUAINE', 'OMAR', 'omar.bouaine@uit.ac.ma', 'AZERTY', '', NULL),
(40, 'NDIGEDU', 18010142, 'PIBA', 'KOKO JEAN HUGUES', 'kokojeanhugues.piba@uit.ac.ma', 'AZERTY', '', NULL),
(41, 'NDIGEDU', 17006732, 'RADI', 'HAJAR', 'hajar.radi@uit.ac.ma', 'AZERTY', '', NULL),
(42, 'NDIGEDU', 18006469, 'FETTOUKH', 'ACHRAF', 'achraf.fettoukh@uit.ac.ma', 'AZERTY', '', NULL),
(43, 'NDIGEDU', 18000087, 'ZALLAFI', 'NADA', 'NADA.ZALLAFI@uit.ac.ma', 'AZERTY', '', NULL),
(44, 'NDIGEDU', 19011053, 'CHIKANDO SINOU', 'EMILIE OLIVE', 'emilieolive.chikandosinou@uit.ac.ma', 'AZERTY', '', NULL),
(45, 'NDIGEDU', 17007639, 'EL MESBAHI', 'AYA', 'aya.elmesbahi@uit.ac.ma', 'AZERTY', '', NULL),
(46, 'NDIGEDU', 20011375, 'KHADDAM', 'CHAIMAE', 'chaimae.khaddam@uit.ac.ma', 'AZERTY', '', NULL),
(47, 'NDIGEDU', 19011064, 'EL HAMZAOUI', 'ABDERRAHIM', 'abderrahim.elhamzaoui@uit.ac.ma', 'AZERTY', '', NULL),
(48, 'NDIGEDU', 19007468, 'RAKNI', 'MOHAMED ABDELBASSET', 'mohamedabdelbasset.rakni@uit.ac.ma', 'AZERTY', '', NULL),
(49, 'NDIGEDU', 19000058, 'DRIAI', 'IMANE', 'imane.driai@uit.ac.ma', 'AZERTY', '', NULL),
(50, 'NDIGEDU', 19000086, 'TAZI', 'HAMZA', 'hamza.tazi@uit.ac.ma', 'AZERTY', '', NULL),
(51, 'NDIGEDU', 19012018, 'JNIHA', 'IMANE', 'imane.jniha@uit.ac.ma', 'AZERTY', '', NULL),
(52, 'NDIGEDU', 19008695, 'DRIOUICH', 'MOHAMMED', 'mohammed.driouich1@uit.ac.ma', 'AZERTY', '', NULL),
(53, 'NDIGEDU', 18007012, 'BENGELOUNE', 'HIBA', 'hiba.bengeloune@uit.ac.ma', 'AZERTY', '', NULL),
(54, 'NDIGEDU', 19000169, 'EL ABASSI', 'MALAK', 'malak.elabassi@uit.ac.ma', 'AZERTY', '', NULL),
(55, 'NDIGEDU', 19000095, 'QANNOUF', 'MUSTAPHA', 'mustapha.qannouf1@uit.ac.ma', 'AZERTY', '', NULL),
(56, 'NDIGEDU', 19008684, 'SINAA', 'HAMZA', 'hamza.sinaa@uit.ac.ma', 'AZERTY', '', NULL),
(57, 'NDIGEDU', 19008663, 'SAMIR', 'TAHA', 'taha.samir@uit.ac.ma', 'AZERTY', '', NULL),
(58, 'NDIGEDU', 17004484, 'ALIOUA', 'SALIM', 'salim.alioua@uit.ac.ma', 'AZERTY', '', NULL),
(59, 'NDIGEDU', 21011657, 'KENBOUCH', 'FATIMA', 'fatima.kenbouch@uit.ac.ma', 'AZERTY', '', NULL),
(60, 'NDIGEDU', 21017206, 'BENAIDA', 'ZINEB', 'zineb.benaida@uit.ac.ma', 'AZERTY', '', NULL),
(61, 'NDIGEDU', 16000360, 'AMARIR', 'ISMAIL', 'ismail.amarir@uit.ac.ma', 'AZERTY', '', NULL),
(62, 'NDIGEDU', 20000844, 'BELHAJ', 'MAJDA', 'majda.belhaj1@uit.ac.ma', 'AZERTY', '', NULL),
(63, 'NDIGEDU', 18000041, 'BENZIANE', 'DOUNIA', 'dounia.benziane@uit.ac.ma', 'AZERTY', '', NULL),
(64, 'NDIGEDU', 18000187, 'EL HAJJI', 'LOUBNA', 'loubna.elhajji@uit.ac.ma', 'AZERTY', '', NULL),
(65, 'NDIGEDU', 18009387, 'GHARBI', 'IHSSANE', 'ihssane.gharbi@uit.ac.ma', 'AZERTY', '', NULL),
(66, 'NDIGEDU', 19011034, 'ATAOUI', 'NIZAR', 'nizar.ataoui@uit.ac.ma', 'AZERTY', '', NULL),
(67, 'NDIGEDU', 17008374, 'BARAKAT', 'ZINEB NOHAILA', 'zinebnohaila.barakat@uit.ac.ma', 'AZERTY', '', NULL),
(68, 'NDIGEDU', 16003987, 'BENGHABRIT', 'MOHAMMED', 'mohammed.benghabrit@uit.ac.ma', 'AZERTY', '', NULL),
(69, 'NDIGEDU', 19000244, 'BENSALIM', 'YOUSRA', 'yousra.bensalim@uit.ac.ma', 'AZERTY', '', NULL),
(70, 'NDIGEDU', 17006986, 'ELAJAJE', 'MALAK', 'malak.elajaje@uit.ac.ma', 'AZERTY', '', NULL),
(71, 'NDIGEDU', 17006654, 'HADIRI', 'SALOUA', 'saloua.hadiri@uit.ac.ma', 'AZERTY', '', NULL),
(72, 'NDIGEDU', 16003897, 'HANSALA', 'SALMA', 'salma.hansala@uit.ac.ma', 'AZERTY', '', NULL),
(73, 'NDIGEDU', 17006221, 'KRAIA', 'ZINEB', 'zineb.kraia@uit.ac.ma', 'AZERTY', '', NULL),
(74, 'NDIGEDU', 16004865, 'LAMSAOURI', 'HAMZA', 'hamza.lamsaouri@uit.ac.ma', 'AZERTY', '', NULL),
(75, 'NDIGEDU', 17006694, 'TADGHOUTI', 'NOUHAILA', 'nouhaila.tadghouti@uit.ac.ma', 'AZERTY', '', NULL),
(76, 'NDIGEDU', 19000076, 'OUAHI', 'KHAOULA', 'khaoula.ouahi@uit.ac.ma', 'AZERTY', '', NULL),
(77, 'NDIGEDU', 18006321, 'ABOURRICHE', 'YOUNESS', 'youness.abourriche@uit.ac.ma', 'AZERTY', '', NULL),
(78, 'NDIGEDU', 17004304, 'ALEM', 'AYOUB', 'ayoub.alem@uit.ac.ma', 'AZERTY', '', NULL),
(79, 'NDIGEDU', 18009968, 'EL GHABI', 'SAFAE', 'safae.elghabi@uit.ac.ma', 'AZERTY', '', NULL),
(80, 'NDIGEDU', 17006800, 'JALAL', 'ACHRAF', 'achraf.jalal@uit.ac.ma', 'AZERTY', '', NULL),
(81, 'NDIGEDU', 18000029, 'LAHLOU', 'HAJAR', 'hajar.lahlou@uit.ac.ma', 'AZERTY', '', NULL),
(82, 'NDIGEDU', 18007916, 'STITOU', 'NARJIS', 'narjis.stitou@uit.ac.ma', 'AZERTY', '', NULL),
(83, 'NDIGEDU', 18000163, 'ELMESSAOUDI', 'KHADIJA', 'KHADIJA.ELMESSAOUDI@uit.ac.ma', 'AZERTY', '', NULL),
(84, 'NDIGEDU', 19002414, 'BAHAMMOU', 'TAHA', 'taha.bahammou@uit.ac.ma', 'AZERTY', '', NULL),
(85, 'NDIGEDU', 17007007, 'BOUDAD', 'LATIFA', 'latifa.boudad@uit.ac.ma', 'AZERTY', '', NULL),
(86, 'NDIGEDU', 19000243, 'CHABANA', 'HAMZA', 'hamza.chabana@uit.ac.ma', 'AZERTY', '', NULL),
(87, 'NDIGEDU', 19011043, 'NOR', 'NAJLAE', 'najlae.nor@uit.ac.ma', 'AZERTY', '', NULL),
(88, 'NDIGEDU', 17006833, 'SAHLI', 'OMAYMA', 'omayma.sahli@uit.ac.ma', 'AZERTY', '', NULL),
(89, 'NDIGEDU', 19011142, 'BAHNIF', 'ILYAS', 'ilyas.bahnif@uit.ac.ma', 'AZERTY', '', NULL),
(90, 'NDIGEDU', 19000081, 'SOFIANE', 'CHARAF EDDINE', 'charafeddine.sofiane@uit.ac.ma', 'AZERTY', '', NULL),
(91, 'NDIGEDU', 19010973, 'RAIHANI', 'YOUSSRA', 'youssra.raihani@uit.ac.ma', 'AZERTY', '', NULL),
(92, 'NDIGEDU', 19010827, 'SAIDNI', 'INASS', 'inass.saidni@uit.ac.ma', 'AZERTY', '', NULL),
(93, 'NDIGEDU', 18000190, 'BENSSABAHIA', 'MANAL', 'manal.benssabahia@uit.ac.ma', 'AZERTY', '', NULL),
(94, 'NDIGEDU', 19000080, 'GAIZI', 'HABIBA', 'habiba.gaizi@uit.ac.ma', 'AZERTY', '', NULL),
(95, 'NDIGEDU', 18006727, 'LAMZALZY', 'ABDELLAH', 'abdellah.lamzalzy@uit.ac.ma', 'AZERTY', '', NULL),
(96, 'NDIGEDU', 21017629, 'ELASSRAOUI', 'HOUSSAM', 'houssam.elassraoui@uit.ac.ma', 'AZERTY', '', NULL),
(97, 'NDIGEDU', 21015881, 'JEBBOUR', 'WIAM', 'wiam.jebbour@uit.ac.ma', 'AZERTY', '', NULL),
(98, 'NDIGEDU', 21015885, 'AGHRAZ', 'OUARDA', 'ouarda.aghraz@uit.ac.ma', 'AZERTY', '', NULL),
(99, 'NDIGEDU', 18006817, 'AGNAOU', 'MINA', 'mina.agnaou@uit.ac.ma', 'AZERTY', '', NULL),
(100, 'NDIGEDU', 20000857, 'CHLAGUE', 'OUMAIMA', 'oumaima.chlague@uit.ac.ma', 'AZERTY', '', NULL),
(101, 'NDIGEDU', 18000103, 'DAHBI', 'HOUDA', 'dahbi.houda@uit.ac.ma', 'AZERTY', '', NULL),
(102, 'NDIGEDU', 18006452, 'EL HASSNAOUI', 'AOUS', 'aous.elhassnaoui@uit.ac.ma', 'AZERTY', '', NULL),
(103, 'NDIGEDU', 18006364, 'BENDEFA', 'AHMED KHALIL', 'ahmedkhalil.bendefa@uit.ac.ma', 'AZERTY', '', NULL),
(104, 'NDIGEDU', 20006852, 'CHTAIBI', 'FATIMA-EZZAHRAE', 'fatima-ezzahrae.chtaibi@uit.ac.ma', 'AZERTY', '', NULL),
(105, 'NDIGEDU', 18006385, 'ED-DARHRI', 'EL HASSAN', 'elhassan.eddarhri@uit.ac.ma', 'AZERTY', '', NULL),
(106, 'NDIGEDU', 18006439, 'EL AMRANI', 'AYMAN', 'ayman.elamrani@uit.ac.ma', 'AZERTY', '', NULL),
(107, 'NDIGEDU', 18000091, 'JIRRARI', 'DOHA', 'DOHA.JIRRARI@uit.ac.ma', 'AZERTY', '', NULL),
(108, 'NDIGEDU', 18009590, 'MARRAKCHI', 'AHMED AYMEN', 'ahmedaymen.marrakchi@uit.ac.ma', 'AZERTY', '', NULL),
(109, 'NDIGEDU', 18000199, 'NAJOUI', 'MOHAMMED', 'mohammed.najoui@uit.ac.ma', 'AZERTY', '', NULL),
(110, 'NDIGEDU', 18000197, 'NASRI', 'ANAS', 'anas.nasri@uit.ac.ma', 'AZERTY', '', NULL),
(111, 'NDIGEDU', 17004061, 'SRAISAH', 'OUMAIMA', 'oumaima.sraisah@uit.ac.ma', 'AZERTY', '', NULL),
(112, 'NDIGEDU', 17007004, 'OUBELKACEM', 'MANAL', 'manal.oubelkacem@uit.ac.ma', 'AZERTY', '', NULL),
(113, 'NDIGEDU', 17007577, 'ABOULHASSANE', 'NIAMA', 'niama.aboulhassane@uit.ac.ma', 'AZERTY', '', NULL),
(114, 'NDIGEDU', 16000109, 'AKIL', 'OMAR', 'omar.akil@uit.ac.ma', 'AZERTY', '', NULL),
(115, 'NDIGEDU', 19000188, 'BENDEROUACH', 'KARIMA', 'karima.benderouach@uit.ac.ma', 'AZERTY', '', NULL),
(116, 'NDIGEDU', 17005721, 'BENKIRANE', 'SOUKAINA', 'soukaina.benkirane@uit.ac.ma', 'AZERTY', '', NULL),
(117, 'NDIGEDU', 17004680, 'BENNANI', 'YASSINE', 'yassine.bennani@uit.ac.ma', 'AZERTY', '', NULL),
(118, 'NDIGEDU', 17006134, 'BENTASSIL', 'ZINEB', 'zineb.bentassil@uit.ac.ma', 'AZERTY', '', NULL),
(119, 'NDIGEDU', 17004423, 'EL GHARBI', 'DOUAA', 'douaa.elgharbi@uit.ac.ma', 'AZERTY', '', NULL),
(120, 'NDIGEDU', 19011252, 'ZOETYANDE', 'NERKIETA NAFISSATOU', 'nerkietanafissatou.zoetyande@uit.ac.ma', 'AZERTY', '', NULL),
(121, 'NDIGEDU', 19008618, 'ZENZOULI', 'IKRAM', 'ikram.zenzouli@uit.ac.ma', 'AZERTY', '', NULL),
(122, 'NDIGEDU', 19007697, 'MOUSSAFI', 'AYOUB', 'ayoub.moussafi@uit.ac.ma', 'AZERTY', '', NULL),
(123, 'NDIGEDU', 19006950, 'RAFILI', 'SALMA', 'salma.rafili@uit.ac.ma', 'AZERTY', '', NULL),
(124, 'NDIGEDU', 19000053, 'BENALI', 'MOUAD', 'mouad.benali1@uit.ac.ma', 'AZERTY', '', NULL),
(125, 'NDIGEDU', 19000168, 'EL FAKER', 'LAMIAE', 'lamiae.elfaker@uit.ac.ma', 'AZERTY', '', NULL),
(126, 'NDIGEDU', 19000066, 'MKADMI', 'OUMKALTOUM', 'oumkaltoum.mkadmi@uit.ac.ma', 'AZERTY', '', NULL),
(127, 'NDIGEDU', 18000212, 'ALLALOU', 'ABDELHAKIM', 'abdelhakim.allalou@uit.ac.ma', 'AZERTY', '', NULL),
(128, 'NDIGEDU', 18010337, 'ATARRACHI', 'HALIMA', 'halima.atarrachi@uit.ac.ma', 'AZERTY', '', NULL),
(129, 'NDIGEDU', 19011086, 'CHEMRIH', 'YASSINE', 'yassine.chemrih@uit.ac.ma', 'AZERTY', '', NULL),
(130, 'NDIGEDU', 18006305, 'LOUDINI', 'ABDELMALEK', 'abdelmalek.loudini@uit.ac.ma', 'AZERTY', '', NULL),
(131, 'NDIGEDU', 21017126, 'ADRAOUI', 'ANAS', 'anas.adraoui1@uit.ac.ma', 'AZERTY', '', NULL),
(132, 'NDIGEDU', 18010404, 'ELAZIZI', 'CHAIMAE', 'elazizi.chaimae@uit.ac.ma', 'AZERTY', '', NULL),
(133, 'NDIGEDU', 18010332, 'AZZI', 'ALAA-EDDINE', 'alaaeddine.azzi@uit.ac.ma', 'AZERTY', '', NULL),
(134, 'NDIGEDU', 17005819, 'BENSAMDI', 'IMANE', 'imane.bensamdi@uit.ac.ma', 'AZERTY', '', NULL),
(135, 'NDIGEDU', 17006149, 'GHAZI', 'NERMINE', 'nermine.ghazi@uit.ac.ma', 'AZERTY', '', NULL),
(136, 'NDIGEDU', 19011200, 'BOUKHSSIBI', 'HIBA', 'hiba.boukhssibi@uit.ac.ma', 'AZERTY', '', NULL),
(137, 'NDIGEDU', 17006314, 'EL JAAOUANI', 'ZAHRA', 'zahra.eljaaouani@uit.ac.ma', 'AZERTY', '', NULL),
(138, 'NDIGEDU', 17006970, 'MELHAOUI', 'RIHAB', 'rihab.melhaoui@uit.ac.ma', 'AZERTY', '', NULL),
(139, 'NDIGEDU', 19011038, 'OUKHRID', 'AMAL', 'amal.oukhrid@uit.ac.ma', 'AZERTY', '', NULL),
(140, 'NDIGEDU', 17006687, 'TAYMOULI', 'ICHRAQ', 'ichraq.taymouli@uit.ac.ma', 'AZERTY', '', NULL),
(141, 'NDIGEDU', 17006870, 'TERFAS', 'CHAIMAE', 'chaimae.terfas@uit.ac.ma', 'AZERTY', '', NULL),
(142, 'NDIGEDU', 15006663, 'ZIAT', 'OUSSAMA', 'oussama.ziat@uit.ac.ma', 'AZERTY', '', NULL),
(143, 'NDIGEDU', 19011141, 'MZALI', 'SALMA', 'salma.mzali@uit.ac.ma', 'AZERTY', '', NULL),
(144, 'NDIGEDU', 19010867, 'LAZHAR', 'NADA', 'nada.lazhar@uit.ac.ma', 'AZERTY', '', NULL),
(145, 'NDIGEDU', 19000192, 'IDRI', 'KHAWLA', 'khawla.idri@uit.ac.ma', 'AZERTY', '', NULL),
(146, 'NDIGEDU', 18009966, 'EL HAJJI', 'HASNAA', 'hasnaa.elhajji@uit.ac.ma', 'AZERTY', '', NULL),
(147, 'NDIGEDU', 18007282, 'FAROUQ', 'SOMIA', 'somia.farouq@uit.ac.ma', 'AZERTY', '', NULL),
(148, 'NDIGEDU', 18000168, 'MEZOIR', 'OUSSAMA', 'oussama.mezoir@uit.ac.ma', 'AZERTY', '', NULL),
(149, 'NDIGEDU', 21015951, 'CHEGDANI', 'SARA', 'sara.chegdani@uit.ac.ma', 'AZERTY', '', NULL),
(150, 'NDIGEDU', 17005812, 'BENADDI', 'OUAFAA', 'ouafaa.benaddi@uit.ac.ma', 'AZERTY', '', NULL),
(151, 'NDIGEDU', 17006955, 'BOUGATTAYA', 'SOUKAINA', 'soukaina.bougattaya@uit.ac.ma', 'AZERTY', '', NULL),
(152, 'NDIGEDU', 18007311, 'HASSINA', 'YOUSRA', 'yousra.hassina@uit.ac.ma', 'AZERTY', '', NULL),
(153, 'NDIGEDU', 17005194, 'MOUNTIJ', 'YASSER', 'yasser.mountij@uit.ac.ma', 'AZERTY', '', NULL),
(154, 'NDIGEDU', 18000155, 'AQUIL', 'ASMAE', 'asmae.aquil@uit.ac.ma', 'AZERTY', '', NULL),
(155, 'NDIGEDU', 17004998, 'LAHMAMI', 'AYOUB', 'ayoub.lahmami@uit.ac.ma', 'AZERTY', '', NULL),
(156, 'NDIGEDU', 17005529, 'TABCHI', 'ISSAM', 'issam.tabchi@uit.ac.ma', 'AZERTY', '', NULL),
(157, 'NDIGEDU', 19011023, 'BOUHADDOU', 'MARWANE', 'marwane.bouhaddou@uit.ac.ma', 'AZERTY', '', NULL),
(158, 'NDIGEDU', 19010961, 'MOUMNI', 'YAHYA', 'yahya.moumni@uit.ac.ma', 'AZERTY', '', NULL),
(159, 'NDIGEDU', 19007233, 'EL FEKAK', 'SALMA', 'salma.elfekak@uit.ac.ma', 'AZERTY', '', NULL),
(160, 'NDIGEDU', 19010041, 'SMINA', 'OUMAIMA', 'oumaima.smina@uit.ac.ma', 'AZERTY', '', NULL),
(161, 'NDIGEDU', 19008652, 'BENKERROUM', 'MARWA', 'marwa.benkerroum@uit.ac.ma', 'AZERTY', '', NULL),
(162, 'NDIGEDU', 19011119, 'ENAGRE', 'FATIMA ZAHRA', 'fatimazahra.enagre@uit.ac.ma', 'AZERTY', '', NULL),
(163, 'NDIGEDU', 19000147, 'BOUTAHLI', 'BILAL', 'bilal.boutahli@uit.ac.ma', 'AZERTY', '', NULL),
(164, 'NDIGEDU', 19000177, 'DAIBAZI', 'ASMAE', 'asmae.daibazi@uit.ac.ma', 'AZERTY', '', NULL),
(165, 'NDIGEDU', 18000161, 'OUETTAS', 'INTISSAR', 'INTISSAR.OUETTAS@uit.ac.ma', 'AZERTY', '', NULL),
(166, 'NDIGEDU', 18005018, 'AMAL', 'AYOUB', 'ayoub.amal@uit.ac.ma', 'AZERTY', '', NULL),
(167, 'NDIGEIN', 18008065, 'EL AZHARY', 'SOUKAINA', 'soukaina.elazhary@uit.ac.ma', 'AZERTY', '', NULL),
(168, 'NDIGEIN', 18006355, 'BARGACH', 'HAMZA', 'hamza.bargach1@uit.ac.ma', 'AZERTY', '', NULL),
(169, 'NDIGEIN', 18000194, 'BENSAID', 'MERYEM', 'MERYEM.BENSAID@uit.ac.ma', 'AZERTY', '', NULL),
(170, 'NDIGEIN', 18000099, 'EL MRHARRAZ', 'SALMA', 'SALMA.ELMRHARRAZ@uit.ac.ma', 'AZERTY', '', NULL),
(171, 'NDIGEIN', 18007427, 'ELAITARI', 'SOUKAINA', 'soukaina.elaitari@uit.ac.ma', 'AZERTY', '', NULL),
(172, 'NDIGEIN', 18007055, 'JARJER', 'FATIMA', 'fatima.jarjer@uit.ac.ma', 'AZERTY', '', NULL),
(173, 'NDIGEIN', 18009963, 'YAHYAOUI', 'ISMAIL', 'ismail.yahyaoui@uit.ac.ma', 'AZERTY', '', NULL),
(174, 'NDIGEIN', 19000043, 'AGGOUR', 'SARAH', 'sarah.aggour@uit.ac.ma', 'AZERTY', '', NULL),
(175, 'NDIGEIN', 18010603, 'ECH-CHOUQI', 'NADA', 'echchouqi.nada@uit.ac.ma', 'AZERTY', '', NULL),
(176, 'NDIGEIN', 19000006, 'GUENDOULA', 'NOUR-EL HOUDA', 'nour-elhouda.guendoula@uit.ac.ma', 'AZERTY', '', NULL),
(177, 'NDIGEIN', 19000099, 'IMANI', 'FADI', 'fadi.imani@uit.ac.ma', 'AZERTY', '', NULL),
(178, 'NDIGEIN', 19000194, 'TOULALI', 'MERYEM', 'meryem.toulali@uit.ac.ma', 'AZERTY', '', NULL),
(179, 'NDIGEIN', 19000097, 'KERCHAOUI', 'OMAR', 'omar.kerchaoui@uit.ac.ma', 'AZERTY', '', NULL),
(180, 'NDIGEIN', 19008615, 'LARROUSSI', 'SARA', 'sara.larroussi@uit.ac.ma', 'AZERTY', '', NULL),
(181, 'NDIGEIN', 17006537, 'EL KHANFRI', 'HAJAR', 'hajar.elkhanfri@uit.ac.ma', 'AZERTY', '', NULL),
(182, 'NDIGEIN', 17006518, 'ES SEBBANI', 'KAWTAR', 'kawtar.essebbani@uit.ac.ma', 'AZERTY', '', NULL),
(183, 'NDIGEIN', 19011072, 'FOUKHAR', 'ILIASS', 'iliass.foukhar@uit.ac.ma', 'AZERTY', '', NULL),
(184, 'NDIGEIN', 17005847, 'JARHNI', 'AMINE', 'amine.jarhni@uit.ac.ma', 'AZERTY', '', NULL),
(185, 'NDIGEIN', 17003784, 'KERDOUD', 'MOUAD', 'mouad.kerdoud@uit.ac.ma', 'AZERTY', '', NULL),
(186, 'NDIGEIN', 17006903, 'RHAZI', 'YASSINE', 'yassine.rhazi1@uit.ac.ma', 'AZERTY', '', NULL),
(187, 'NDIGEIN', 17005468, 'SIDATE', 'EL MAHDI', 'elmahdi.sidate@uit.ac.ma', 'AZERTY', '', NULL),
(188, 'NDIGEIN', 19011156, 'AIT EL KOUCH', 'ANASS', 'anass.aitelkouch@uit.ac.ma', 'AZERTY', '', NULL),
(189, 'NDIGEIN', 16004719, 'ZEKRI', 'AMAL', 'amal.zekri@uit.ac.ma', 'AZERTY', '', NULL),
(190, 'NDIGEIN', 18007996, 'ABOUZBIBA', 'WAFAE', 'wafae.abouzbiba@uit.ac.ma', 'AZERTY', '', NULL),
(191, 'NDIGEIN', 19010618, 'BAHAMAD', 'IMANE', 'imane.bahamad@uit.ac.ma', 'AZERTY', '', NULL),
(192, 'NDIGEIN', 20005731, 'BEKRINE', 'OUSSAMA', 'oussama.bekrine@uit.ac.ma', 'AZERTY', '', NULL),
(193, 'NDIGEIN', 18006909, 'BOUTLANE', 'MERYEM', 'meryem.boutlane@uit.ac.ma', 'AZERTY', '', NULL),
(194, 'NDIGEIN', 18000193, 'EL AMRANI', 'MANAL', 'MANAL.ELAMRANI1@uit.ac.ma', 'AZERTY', '', NULL),
(195, 'NDIGEIN', 18000167, 'EL ATTAOUI', 'MOHAMED', 'mohamed.elattaoui@uit.ac.ma', 'AZERTY', '', NULL),
(196, 'NDIGEIN', 18006816, 'MAZOUZI', 'SAAD', 'saad.mazouzi@uit.ac.ma', 'AZERTY', '', NULL),
(197, 'NDIGEIN', 18007869, 'OUMAMI', 'MARYAM', 'maryam.oumami@uit.ac.ma', 'AZERTY', '', NULL),
(198, 'NDIGEIN', 20005505, 'SAFI', 'EL MEHDI', 'elmehdi.safi@uit.ac.ma', 'AZERTY', '', NULL),
(199, 'NDIGEIN', 16004931, 'TEBAA', 'MOHAMMED SAAD', 'mohammedsaad.tebaa@uit.ac.ma', 'AZERTY', '', NULL),
(200, 'NDIGEIN', 18009404, 'VALL KHEIR', 'ZEINEBOU', 'zeinebou.vallkheir@uit.ac.ma', 'AZERTY', '', NULL),
(201, 'NDIGEIN', 19000141, 'ABOUSAADIA', 'ANAS', 'anas.abousaadia@uit.ac.ma', 'AZERTY', '', NULL),
(202, 'NDIGEIN', 19000170, 'EL OUAHHABY', 'CHAIMAE', 'chaimae.elouahhaby@uit.ac.ma', 'AZERTY', '', NULL),
(203, 'NDIGEIN', 19000033, 'FAHIM', 'AHMED', 'ahmed.fahim@uit.ac.ma', 'AZERTY', '', NULL),
(204, 'NDIGEIN', 19015220, 'DEKPE', 'KOSSI ELOLO BERNARD', 'kossielolobernard.dekpe@uit.ac.ma', 'AZERTY', '', NULL),
(205, 'NDIGEIN', 19003672, 'ZIRARI', 'MOHAMED', 'mohamed.zirari@uit.ac.ma', 'AZERTY', '', NULL),
(206, 'NDIGEIN', 18006997, 'BOUTAIB', 'MOHAMED', 'mohamed.boutaib@uit.ac.ma', 'AZERTY', '', NULL),
(207, 'NDIGEIN', 18009494, 'BENJALLOUL', 'MONTASSIR', 'montassir.benjalloul1@uit.ac.ma', 'AZERTY', '', NULL),
(208, 'NDIGEIN', 19007144, 'OUDADA', 'AYOUB', 'ayoub.oudada@uit.ac.ma', 'AZERTY', '', NULL),
(209, 'NDIGEIN', 19000009, 'SOUKAINI', 'ADIL', 'adil.soukaini@uit.ac.ma', 'AZERTY', '', NULL),
(210, 'NDIGEIN', 19000088, 'TAIB', 'HICHAM', 'hicham.taib@uit.ac.ma', 'AZERTY', '', NULL),
(211, 'NDIGEIN', 19000035, 'ZNIBER', 'ALI', 'ali.zniber@uit.ac.ma', 'AZERTY', '', NULL),
(212, 'NDIGEIN', 17005162, 'EL BADAOUI', 'OMAR', 'omar.elbadaoui@uit.ac.ma', 'AZERTY', '', NULL),
(213, 'NDIGEIN', 17007831, 'EL MOUHTARIM', 'AYMANE', 'aymane.elmouhtarim@uit.ac.ma', 'AZERTY', '', NULL),
(214, 'NDIGEIN', 17005436, 'FAIK', 'ABDELKHALEK', 'abdelkhalek.faik@uit.ac.ma', 'AZERTY', '', NULL),
(215, 'NDIGEIN', 17005893, 'JEBBAR', 'ABDENNOUR', 'abdennour.jebbar@uit.ac.ma', 'AZERTY', '', NULL),
(216, 'NDIGEIN', 17010439, 'LOGMO ADMEO', 'GOLVEN CALIN', 'golvencalin.logmoadmeo@uit.ac.ma', 'AZERTY', '', NULL),
(217, 'NDIGEIN', 17006980, 'MOSSALLI', 'WIAM', 'wiam.mossalli@uit.ac.ma', 'AZERTY', '', NULL),
(218, 'NDIGEIN', 18000158, 'AIT HMADOUCH', 'RANIA', 'RANIA.AITHMADOUCH@uit.ac.ma', 'AZERTY', '', NULL),
(219, 'NDIGEIN', 18000045, 'AIT MANSOUR', 'ZINEB', 'ZINEB.AITMANSOUR@uit.ac.ma', 'AZERTY', '', NULL),
(220, 'NDIGEIN', 18006791, 'AL OUARDI', 'SALMA', 'salma.alouardi@uit.ac.ma', 'AZERTY', '', NULL),
(221, 'NDIGEIN', 18000024, 'DDALLA', 'YOUSRA', 'YOUSRA.DDALLA@uit.ac.ma', 'AZERTY', '', NULL),
(222, 'NDIGEIN', 18006294, 'EL GARAA', 'AYOUB', 'ayoub.elgaraa@uit.ac.ma', 'AZERTY', '', NULL),
(223, 'NDIGEIN', 18000215, 'EL YOUSFI-ALAOUI', 'MOHAMMED', 'MOHAMMED.ELYOUSFI-ALAOUI@uit.ac.ma', 'AZERTY', '', NULL),
(224, 'NDIGEIN', 18000203, 'FADILI', 'AYOUB', 'AYOUB.FADILI@uit.ac.ma', 'AZERTY', '', NULL),
(225, 'NDIGEIN', 17007017, 'IFKIRNE', 'KENZA', 'kenza.ifkirne@uit.ac.ma', 'AZERTY', '', NULL),
(226, 'NDIGEIN', 17000549, 'GOUMIDI', 'ABDERRAZZAK', 'abderrazzak.goumidi@uit.ac.ma', 'AZERTY', '', NULL),
(227, 'NDIGEIN', 20010521, 'SAHMI', 'IHSSAN', 'ihssan.sahmi@uit.ac.ma', 'AZERTY', '', NULL),
(228, 'NDIGEIN', 18000176, 'SARDI', 'IHSSANE', 'IHSSANE.SARDI@uit.ac.ma', 'AZERTY', '', NULL),
(229, 'NDIGEIN', 19008672, 'BENASSER', 'HASSAN AYOUB', 'hassanayoub.benasser@uit.ac.ma', 'AZERTY', '', NULL),
(230, 'NDIGEIN', 19000100, 'BENSAR', 'OUMAIMA', 'oumaima.bensar@uit.ac.ma', 'AZERTY', '', NULL),
(231, 'NDIGEIN', 21015271, 'EL KHCHINE', 'MOHAMED', 'mohamed.elkhchine1@uit.ac.ma', 'AZERTY', '', NULL),
(232, 'NDIGEIN', 21015929, 'HAMMADI', 'MASSINA', 'massina.hammadi@uit.ac.ma', 'AZERTY', '', NULL),
(233, 'NDIGEIN', 19000137, 'LAGHRISSI', 'MOHAMED', 'mohamed.laghrissi@uit.ac.ma', 'AZERTY', '', NULL),
(234, 'NDIGEIN', 19000182, 'LOUADNI', 'CHAIMAA', 'chaimaa.louadni@uit.ac.ma', 'AZERTY', '', NULL),
(235, 'NDIGEIN', 19000077, 'LOUZAOUI', 'SAFAA', 'safaa.louzaoui@uit.ac.ma', 'AZERTY', '', NULL),
(236, 'NDIGEIN', 19000063, 'OUGAAMOU', 'MEHDI', 'mehdi.mehdiougaamou@uit.ac.ma', 'AZERTY', '', NULL),
(237, 'NDIGEIN', 21015770, 'ATIR', 'ZAYNAB', 'zaynab.atir@uit.ac.ma', 'AZERTY', '', NULL),
(238, 'NDIGEIN', 17005778, 'BAKOUR', 'KAWTAR', 'kawtar.bakour@uit.ac.ma', 'AZERTY', '', NULL),
(239, 'NDIGEIN', 17005831, 'JABAR', 'YOUNESS', 'youness.jabar@uit.ac.ma', 'AZERTY', '', NULL),
(240, 'NDIGEIN', 16004718, 'LAMMARI', 'SAFOUANE', 'safouane.lammari@uit.ac.ma', 'AZERTY', '', NULL),
(241, 'NDIGEIN', 18009449, 'M KHAITIR CHIEKH', 'MAMINA', 'mamina.mkhaitirchiekh@uit.ac.ma', 'AZERTY', '', NULL),
(242, 'NDIGEIN', 21015938, 'AIT BELAID', 'IKRAM', 'ikram.aitbelaid@uit.ac.ma', 'AZERTY', '', NULL),
(243, 'NDIGEIN', 20013993, 'BAKHIL', 'AISSA', 'aissa.bakhil@uit.ac.ma', 'AZERTY', '', NULL),
(244, 'NDIGEIN', 18000146, 'ALAOUI', 'ABDELLAH', 'ABDELLAH.ALAOUI@uit.ac.ma', 'AZERTY', '', NULL),
(245, 'NDIGEIN', 18009015, 'BERBACH', 'MALIK', 'malik.berbach@uit.ac.ma', 'AZERTY', '', NULL),
(246, 'NDIGEIN', 18006400, 'ECHTOUKI', 'MOHAMED', 'mohamed.echtouki@uit.ac.ma', 'AZERTY', '', NULL),
(247, 'NDIGEIN', 16000022, 'EL AASSALI', 'IMADEDDINE', 'imadeddine.elaassali@uit.ac.ma', 'AZERTY', '', NULL),
(248, 'NDIGEIN', 18007102, 'EL HAJJI', 'MOUNA', 'mouna.elhajji@uit.ac.ma', 'AZERTY', '', NULL),
(249, 'NDIGEIN', 18000062, 'ELHARTI', 'CHAYMAA', 'chaymaa.elharti@uit.ac.ma', 'AZERTY', '', NULL),
(250, 'NDIGEIN', 18000104, 'ELKORRI', 'OUISSAL', 'OUISSAL.ELKORRI@uit.ac.ma', 'AZERTY', '', NULL),
(251, 'NDIGEIN', 18006665, 'HANYF', 'OTHMANE', 'othmane.hanyf@uit.ac.ma', 'AZERTY', '', NULL),
(252, 'NDIGEIN', 20005536, 'JEMMAL', 'SOUFIANE', 'soufiane.jemmal@uit.ac.ma', 'AZERTY', '', NULL),
(253, 'NDIGEIN', 17004527, 'KADIMI', 'HAMZA', 'hamza.kadimi@uit.ac.ma', 'AZERTY', '', NULL),
(254, 'NDIGEIN', 18009444, 'LAAMARTI', 'AKRAM', 'akram.laamarti@uit.ac.ma', 'AZERTY', '', NULL),
(255, 'NDIGEIN', 17000543, 'LAKTAIBI', 'ANASS', 'anass.laktaibi@uit.ac.ma', 'AZERTY', '', NULL),
(256, 'NDIGEIN', 18000184, 'OUJAA', 'YASSINE', 'yassine.oujaa@uit.ac.ma', 'AZERTY', '', NULL),
(257, 'NDIGEIN', 18007937, 'TIBARI', 'ZINEB', 'zineb.tibari@uit.ac.ma', 'AZERTY', '', NULL),
(258, 'NDIGEIN', 18010184, 'TIOTSOP FOGUE', 'ADRIANO', 'adriano.tiotsopfogue@uit.ac.ma', 'AZERTY', '', NULL),
(259, 'NDIGEIN', 18000054, 'TLEMCANI', 'CHAYMA', 'CHAYMA.TLEMCANI@uit.ac.ma', 'AZERTY', '', NULL),
(260, 'NDIGEIN', 19000157, 'EL-OTHMANI', 'YOUSSEF', 'youssef.el-othmani@uit.ac.ma', 'AZERTY', '', NULL),
(261, 'NDIGEIN', 19000034, 'EL KAABA', 'MOHAMED AMINE', 'mohamedamine.elkaaba@uit.ac.ma', 'AZERTY', '', NULL),
(262, 'NDIGEIN', 19000151, 'BOUNASSEH', 'ABDESSAMAD', 'abdessamad.bounasseh@uit.ac.ma', 'AZERTY', '', NULL),
(263, 'NDIGEIN', 19000102, 'HMOUDAT', 'OUSSAMA', 'oussama.hmoudat@uit.ac.ma', 'AZERTY', '', NULL),
(264, 'NDIGEIN', 19000030, 'KABBA', 'AYMANE', 'aymane.kabba@uit.ac.ma', 'AZERTY', '', NULL),
(265, 'NDIGEIN', 19007217, 'ACHAOUI', 'YOUNES', 'younes.achaoui@uit.ac.ma', 'AZERTY', '', NULL),
(266, 'NDIGEIN', 21017281, 'MOUHAOUIR', 'HAMZA', 'hamza.mouhaouir@uit.ac.ma', 'AZERTY', '', NULL),
(267, 'NDIGEIN', 20000307, 'M\'HIN', 'NIMA', 'nima.mhin@uit.ac.ma', 'AZERTY', '', NULL),
(268, 'NDIGEIN', 21017537, 'TAHER', 'IKRAM', 'ikram.taher@uit.ac.ma', 'AZERTY', '', NULL),
(269, 'NDIGEIN', 21015883, 'LAATITINE', 'KHADIJA', 'khadija.laatitine@uit.ac.ma', 'AZERTY', '', NULL),
(270, 'NDIGEIN', 21015868, 'MEZIANE ZERHOUNI', 'HASSAN', 'hassan.mezianezerhouni@uit.ac.ma', 'AZERTY', '', NULL),
(271, 'NDIGEIN', 19000015, 'OUSSI', 'YASSINE', 'yassine.oussi@uit.ac.ma', 'AZERTY', '', NULL),
(272, 'NDIGEIN', 19000098, 'RIFAY', 'WASSIM', 'wassim.rifay@uit.ac.ma', 'AZERTY', '', NULL),
(273, 'NDIGEIN', 19011102, 'BENJELLOUN', 'HAMZA', 'hamza.benjelloun@uit.ac.ma', 'AZERTY', '', NULL),
(274, 'NDIGEIN', 17005414, 'EL FEKAK', 'ISMAIL', 'ismail.elfekak@uit.ac.ma', 'AZERTY', '', NULL),
(275, 'NDIGEIN', 17006533, 'SAFRAOUI', 'CHAIMAE', 'chaimae.safraoui@uit.ac.ma', 'AZERTY', '', NULL),
(276, 'NDIGEIN', 16000050, 'EL HALABI', 'AYOUB', 'ayoub.elhalabi@uit.ac.ma', 'AZERTY', '', NULL),
(277, 'NDIGEIN', 18000081, 'EL AZZAOUI', 'MAROUA', 'MAROUA.ELAZZAOUI@uit.ac.ma', 'AZERTY', '', NULL),
(278, 'NDIGEIN', 18000047, 'EL BAKKOURI', 'IMANE', 'IMANE.ELBAKKOURI@uit.ac.ma', 'AZERTY', '', NULL),
(279, 'NDIGEIN', 17003110, 'FAIZ', 'HAJAR', 'hajar.faiz@uit.ac.ma', 'AZERTY', '', NULL),
(280, 'NDIGEIN', 17000711, 'GLIOULA', 'HIND', 'hind.glioula@uit.ac.ma', 'AZERTY', '', NULL),
(281, 'NDIGEIN', 18007169, 'MOFAKIR', 'NISRINE', 'nisrine.mofakir@uit.ac.ma', 'AZERTY', '', NULL),
(282, 'NDIGEIN', 19007523, 'ESSALMANI', 'YASMINE', 'yasmine.essalmani@uit.ac.ma', 'AZERTY', '', NULL),
(283, 'NDIGEIN', 19008711, 'EL OURRAT', 'FAYCAL', 'faycal.elourrat@uit.ac.ma', 'AZERTY', '', NULL),
(284, 'NDIGEIN', 21015519, 'BITI', 'AYMANE', 'aymane.biti@uit.ac.ma', 'AZERTY', '', NULL),
(285, 'NDIGEIN', 21011748, 'SAIDI', 'ZAKARIAE', 'zakariae.saidi@uit.ac.ma', 'AZERTY', '', NULL),
(286, 'NDIGEIN', 21017855, 'LAZAAR', 'KHAOULA', 'khaoula.lazaar@uit.ac.ma', 'AZERTY', '', NULL),
(287, 'NDIGEIN', 19000061, 'MOUAD', 'NOUHAILA', 'nouhaila.mouad@uit.ac.ma', 'AZERTY', '', NULL),
(288, 'NDIGEIN', 19006997, 'MOUSSADIK', 'MEHDI', 'mehdi.moussadik@uit.ac.ma', 'AZERTY', '', NULL),
(289, 'NDIGEIN', 19008673, 'OUBENMOH', 'YASSINE', 'yassine.oubenmoh@uit.ac.ma', 'AZERTY', '', NULL),
(290, 'NDIGEIN', 19008915, 'QAFFSSAOUI', 'MAROUANE', 'marouane.qaffssaoui@uit.ac.ma', 'AZERTY', '', NULL),
(291, 'NDIGEIN', 19000127, 'EL HIRECH', 'GHIZLANE', 'ghizlane.elhirech@uit.ac.ma', 'AZERTY', '', NULL),
(292, 'NDIGEIN', 17005227, 'ERRAZGOUNI', 'SAAD', 'saad.errazgouni@uit.ac.ma', 'AZERTY', '', NULL),
(293, 'NDIGEIN', 17005686, 'HILIA', 'ANAS', 'anas.hilia@uit.ac.ma', 'AZERTY', '', NULL),
(294, 'NDIGEIN', 17005624, 'HMADE', 'ABDELLAH', 'abdellah.hmade@uit.ac.ma', 'AZERTY', '', NULL),
(295, 'NDIGEIN', 17005155, 'LAHRIZI', 'TAHA', 'taha.lahrizi@uit.ac.ma', 'AZERTY', '', NULL),
(296, 'NDIGEIN', 17006848, 'MOULAHID', 'KAWTAR', 'kawtar.moulahid@uit.ac.ma', 'AZERTY', '', NULL),
(297, 'NDIGEIN', 17006940, 'MOUSTAHIB', 'OMAR', 'omar.moustahib@uit.ac.ma', 'AZERTY', '', NULL),
(298, 'NDIGEIN', 17006481, 'SAFI', 'OUMAIMA', 'oumaima.safi@uit.ac.ma', 'AZERTY', '', NULL),
(299, 'NDIGEIN', 19008624, 'AIT OUAKRIM', 'MERYEM', 'meryem.aitouakrim@uit.ac.ma', 'AZERTY', '', NULL),
(300, 'NDIGEIN', 18006772, 'ASSMOUGUE', 'ASMAE', 'asmae.assmougue@uit.ac.ma', 'AZERTY', '', NULL),
(301, 'NDIGEIN', 17005975, 'BEKKALI', 'KAWTAR', 'kawtar.bekkali@uit.ac.ma', 'AZERTY', '', NULL),
(302, 'NDIGEIN', 18007440, 'BELLAALA', 'MOHAMED', 'mohamed.bellaala@uit.ac.ma', 'AZERTY', '', NULL),
(303, 'NDIGEIN', 18007124, 'EL GUEROUANI', 'MANAL', 'manal.elguerouani1@uit.ac.ma', 'AZERTY', '', NULL),
(304, 'NDIGEIN', 18000008, 'EL HAOUARI', 'ATIKA', 'ATIKA.ELHAOUARI@uit.ac.ma', 'AZERTY', '', NULL),
(305, 'NDIGEIN', 18006457, 'EL MEKKAOUI', 'OMAR', 'omar.elmekkaoui@uit.ac.ma', 'AZERTY', '', NULL),
(306, 'NDIGEIN', 18007070, 'EL MOUJOUDI', 'OUMAIMA', 'oumaima.elmoujoudi@uit.ac.ma', 'AZERTY', '', NULL),
(307, 'NDIGEIN', 18007304, 'HAYTOM', 'IKRAME', 'ikrame.haytom@uit.ac.ma', 'AZERTY', '', NULL),
(308, 'NDIGEIN', 18000183, 'KASSI', 'AYOUB', 'AYOUB.KASSI@uit.ac.ma', 'AZERTY', '', NULL),
(309, 'NDIGEIN', 18000052, 'TIGRIOUI', 'RHITA', 'rhita.tigrioui@uit.ac.ma', 'AZERTY', '', NULL),
(310, 'NDIGEIN', 18000179, 'ZEROUAL', 'AIMEN', 'aimen.zeroual@uit.ac.ma', 'AZERTY', '', NULL),
(311, 'NDIGEIN', 19008666, 'AHCINE', 'CHAYMAA', 'chaymaa.ahcine@uit.ac.ma', 'AZERTY', '', NULL),
(312, 'NDIGEIN', 19010967, 'BRIBRI', 'HIND', 'hind.bribri@uit.ac.ma', 'AZERTY', '', NULL),
(313, 'NDIGEIN', 19011462, 'BELHAJ-SOULAMI', 'KENZA', 'kenza.belhaj-soulami@uit.ac.ma', 'AZERTY', '', NULL),
(314, 'NDIGEIN', 21017268, 'KAMI', 'YASMINE', 'yasmine.kami@uit.ac.ma', 'AZERTY', '', NULL),
(315, 'NDIGEIN', 19011062, 'MERIZAK', 'HOUSSAM', 'houssam.merizak@uit.ac.ma', 'AZERTY', '', NULL),
(316, 'NDIGEIN', 19000013, 'OHASSAN', 'MOHAMED SAAD', 'mohamedsaad.ohassan@uit.ac.ma', 'AZERTY', '', NULL),
(317, 'NDIGEIN', 17004777, 'BERRAGRAGUI', 'HASSAN', 'hassan.berragragui@uit.ac.ma', 'AZERTY', '', NULL),
(318, 'NDIGEIN', 17008695, 'EBOU EL HASSANI', 'AHMED MAHMOUD', 'ahmedmahmoud.ebouelhassani@uit.ac.ma', 'AZERTY', '', NULL),
(319, 'NDIGEIN', 19000218, 'FRIAIN', 'OMAYMA', 'omayma.friain@uit.ac.ma', 'AZERTY', '', NULL),
(320, 'NDIGEIN', 18009497, 'AZIZ', 'OUSSAMA', 'oussama.aziz@uit.ac.ma', 'AZERTY', '', NULL),
(321, 'NDIGEIN', 19011058, 'BARIK', 'HAYTAM', 'haytam.barik@uit.ac.ma', 'AZERTY', '', NULL),
(322, 'NDIGEIN', 18006624, 'FANNOUCH', 'AYMEN', 'aymen.fannouch@uit.ac.ma', 'AZERTY', '', NULL),
(323, 'NDIGEIN', 18007157, 'MOUMNI', 'CHAIMAE', 'chaimae.moumni@uit.ac.ma', 'AZERTY', '', NULL),
(324, 'NDIGEIN', 18000141, 'OUKASSOU', 'ILHAM', 'ILHAM.OUKASSOU@uit.ac.ma', 'AZERTY', '', NULL),
(325, 'NDIGEIN', 18000111, 'ZAHI', 'ABIR', 'abir.zahi@uit.ac.ma', 'AZERTY', '', NULL),
(326, 'NDIGEIN', 20012111, 'ZEROUALI', 'IBTISSAM', 'ibtissam.zerouali@uit.ac.ma', 'AZERTY', '', NULL),
(327, 'NDIGEIN', 18000025, 'ZIYANE', 'NOUHAILA', 'nouhaila.ziyane@uit.ac.ma', 'AZERTY', '', NULL),
(328, 'NDIGEIN', 18007488, 'ZIZI', 'LINA', 'lina.zizi@uit.ac.ma', 'AZERTY', '', NULL),
(329, 'NDIGEIN', 19000049, 'BERRAS', 'NAJWA', 'najwa.berras@uit.ac.ma', 'AZERTY', '', NULL),
(330, 'NDIGEIN', 19000056, 'DELLALE', 'SOUKAINA', 'soukaina.dellale@uit.ac.ma', 'AZERTY', '', NULL),
(331, 'NDIGEIN', 19000018, 'DEFAOUI', 'OMAR', 'omar.defaoui@uit.ac.ma', 'AZERTY', '', NULL),
(332, 'NDIGEIN', 21017620, 'JALAL', 'MOHAMED', 'mohamed.jalal1@uit.ac.ma', 'AZERTY', '', NULL),
(333, 'NDIGEIN', 21017117, 'GHOUMMAID', 'MOHAMMED', 'mohammed.ghoummaid@uit.ac.ma', 'AZERTY', '', NULL),
(334, 'NDIGEIN', 21017854, 'CHAGRI', 'ANASS', 'anass.chagri@uit.ac.ma', 'AZERTY', '', NULL),
(335, 'NDIGEIN', 17009577, 'ABOU', 'MAWUFEMO JOSUE', 'mawufemo.abou@uit.ac.ma', 'AZERTY', '', NULL),
(336, 'NDIGEIN', 16000234, 'ELHADIOUIA', 'LEILA', 'leila.elhadiouia@uit.ac.ma', 'AZERTY', '', NULL),
(337, 'NDIGEIN', 17005215, 'ELKHDADI', 'AHMED', 'ahmed.elkhdadi@uit.ac.ma', 'AZERTY', '', NULL),
(338, 'NDIGEIN', 19000217, 'FRIAIN', 'IMAN', 'iman.friain@uit.ac.ma', 'AZERTY', '', NULL),
(339, 'NDIGEIN', 17006198, 'GOUZA', 'SALMA', 'salma.gouza@uit.ac.ma', 'AZERTY', '', NULL),
(340, 'NDIGEIN', 17007030, 'NOUMA', 'IBTISSAM', 'ibtissam.nouma@uit.ac.ma', 'AZERTY', '', NULL),
(341, 'NDIGEIN', 17005242, 'OUADRHIRI IDRISSI AZZOUZI', 'ZAKARIA', 'zakaria.ouadrhiriidrissiazzouzi@uit.ac.ma', 'AZERTY', '', NULL),
(342, 'NDIGEIN', 18000157, 'AOUZAL', 'OUMAIMA', 'oumaima.aouzal@uit.ac.ma', 'AZERTY', '', NULL),
(343, 'NDIGEIN', 20012117, 'BOUSSERRHINE', 'ZIYAD', 'ziyad.bousserrhine@uit.ac.ma', 'AZERTY', '', NULL),
(344, 'NDIGEIN', 18000205, 'EL HADY', 'ZAKARIA', 'ZAKARIA.ELHADY@uit.ac.ma', 'AZERTY', '', NULL),
(345, 'NDIGEIN', 18004591, 'STITOU', 'NIZAR', 'nizar.stitou@uit.ac.ma', 'AZERTY', '', NULL),
(346, 'NDIGEIN', 18000173, 'ZAHI', 'YOUSSEF', 'YOUSSEF.ZAHI1@uit.ac.ma', 'AZERTY', '', NULL),
(347, 'NDIGEIN', 19000047, 'FENNIRI', 'ABDELJALIL', 'abdeljalil.fenniri@uit.ac.ma', 'AZERTY', '', NULL),
(348, 'NDIGEIN', 19000167, 'EL HASSOUNI', 'MERYEM', 'meryem.elhassouni1@uit.ac.ma', 'AZERTY', '', NULL),
(349, 'NDIGEIN', 19000145, 'BENOUAHI', 'OMAR', 'omar.benouahi@uit.ac.ma', 'AZERTY', '', NULL),
(350, 'NDIGEIN', 19000191, 'JEBBAR', 'NASSIMA', 'nassima.jebbar@uit.ac.ma', 'AZERTY', '', NULL),
(351, 'NDIGEIN', 19000037, 'BENZEKRI', 'ANAS', 'anas.anasbenzekri@uit.ac.ma', 'AZERTY', '', NULL),
(352, 'NDIGEIN', 20000852, 'LBARRAH', 'YAHYA', 'yahya.lbarrah@uit.ac.ma', 'AZERTY', '', NULL),
(353, 'NDIGEIN', 18010496, 'OUBAHASSOU', 'SANAE', 'oubahassou.sanae@uit.ac.ma', 'AZERTY', '', NULL),
(354, 'NDIGEIN', 21017164, 'ABOU EL HAOUL', 'HOUSSAM EDDINE', 'houssameddine.abouelhaoul@uit.ac.ma', 'AZERTY', '', NULL),
(355, 'NDIGEIN', 16000086, 'ARZIKI', 'ISMAIL', 'ismail.arziki@uit.ac.ma', 'AZERTY', '', 500),
(356, 'NDIGEIN', 17005537, 'ZEAIKOR', 'YOUSSEF', 'youssef.zeaikor@uit.ac.ma', 'AZERTY', '', NULL),
(357, 'NDIGEIN', 19007215, 'MOTASSIM', 'AHMED TAHA', 'ahmedtaha.motassim@uit.ac.ma', 'AZERTY', '', NULL),
(358, 'NDIGEIN', 19000067, 'SAAD', 'OUSSAMA', 'oussama.saad@uit.ac.ma', 'AZERTY', '', NULL),
(359, 'NDIGEIN', 20000861, 'EL MRIHY', 'SOUHAIL', 'souhail.elmrihy@uit.ac.ma', 'AZERTY', '', NULL),
(360, 'NDIGEIN', 18002375, 'FRIHAT', 'TAOUFIK', 'taoufik.frihat@uit.ac.ma', 'AZERTY', '', NULL),
(361, 'NDIGEIN', 17004178, 'AZZOUZI', 'ABDELLAH', 'abdellah.azzouzi@uit.ac.ma', 'AZERTY', '', NULL),
(362, 'NDIGEIN', 17005934, 'BENKADDOUR', 'ASSMA', 'assma.benkaddour@uit.ac.ma', 'AZERTY', '', NULL),
(363, 'NDIGEIN', 17005256, 'EL OUARTITI', 'MOHSINE', 'mohsine.elouartiti@uit.ac.ma', 'AZERTY', '', NULL),
(364, 'NDIGEIN', 17005269, 'ELHARSI', 'HAMZA', 'hamza.elharsi@uit.ac.ma', 'AZERTY', '', NULL),
(365, 'NDIGEIN', 17006391, 'MRABET', 'SALMA', 'salma.mrabet@uit.ac.ma', 'AZERTY', '', NULL),
(366, 'NDIGEIN', 17006550, 'SABER', 'OUMAIMA', 'oumaima.saber@uit.ac.ma', 'AZERTY', '', 600),
(367, 'NDIGEIN', 14000130, 'SAHRAOUI DOUKKALI', 'SAAD', 'saad.sahraouidoukkali@uit.ac.ma', 'AZERTY', '', 401);

-- --------------------------------------------------------

--
-- Structure de la table `stage`
--

CREATE TABLE `stage` (
  `id_stage` int(5) NOT NULL,
  `intituléSujet` varchar(50) DEFAULT NULL,
  `descri` varchar(61) DEFAULT NULL,
  `technologiesUtilisées` varchar(61) DEFAULT NULL,
  `rapportv1` text DEFAULT NULL,
  `rapportv2` text DEFAULT NULL,
  `id_entreprise` int(7) DEFAULT NULL,
  `presentation` text DEFAULT NULL,
  `attestation` text DEFAULT NULL,
  `validation` varchar(30) DEFAULT 'Non Validé',
  `nomEncadrant` varchar(60) DEFAULT NULL,
  `prenomEncadrant` varchar(60) DEFAULT NULL,
  `noteFinal` int(5) DEFAULT NULL,
  `id_enseignant` int(5) DEFAULT NULL,
  `nomBinôme` varchar(100) NOT NULL,
  `prenomBinôme` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `stage`
--

INSERT INTO `stage` (`id_stage`, `intituléSujet`, `descri`, `technologiesUtilisées`, `rapportv1`, `rapportv2`, `id_entreprise`, `presentation`, `attestation`, `validation`, `nomEncadrant`, `prenomEncadrant`, `noteFinal`, `id_enseignant`, `nomBinôme`, `prenomBinôme`) VALUES
(400, 'OPTIMISATION', 'OPTIMISATION DE STOCK', 'DIAGRAMME GANNT', 'RAPPORTt', 'RAPPORT', 56, 'PPTT', 'attes', 'Validé', NULL, NULL, 14, 7, '', ''),
(401, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Validé', NULL, NULL, NULL, 7, '', ''),
(500, 'FGHJS', 'FHFHHSDISKSK', 'FHHSFFSGFGD', 'GHGHHGG', NULL, 54, NULL, NULL, NULL, NULL, NULL, 15, 7, '', ''),
(600, 'AERTY', 'dgakdgd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 7, '', '');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `enseignant`
--
ALTER TABLE `enseignant`
  ADD PRIMARY KEY (`id_enseignant`);

--
-- Index pour la table `entreprise`
--
ALTER TABLE `entreprise`
  ADD PRIMARY KEY (`id_entreprise`);

--
-- Index pour la table `etudiant`
--
ALTER TABLE `etudiant`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_stage` (`id_stage`);

--
-- Index pour la table `stage`
--
ALTER TABLE `stage`
  ADD PRIMARY KEY (`id_stage`),
  ADD KEY `id_entreprise` (`id_entreprise`),
  ADD KEY `id_enseignant` (`id_enseignant`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `stage`
--
ALTER TABLE `stage`
  MODIFY `id_stage` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=601;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `etudiant`
--
ALTER TABLE `etudiant`
  ADD CONSTRAINT `etudiant_ibfk_1` FOREIGN KEY (`id_stage`) REFERENCES `stage` (`id_stage`);

--
-- Contraintes pour la table `stage`
--
ALTER TABLE `stage`
  ADD CONSTRAINT `stage_ibfk_1` FOREIGN KEY (`id_entreprise`) REFERENCES `entreprise` (`id_entreprise`),
  ADD CONSTRAINT `stage_ibfk_2` FOREIGN KEY (`id_enseignant`) REFERENCES `enseignant` (`id_enseignant`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
