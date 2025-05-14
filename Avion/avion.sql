-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 14 mai 2025 à 12:41
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `aeroport`
--

-- --------------------------------------------------------

--
-- Structure de la table `avion`
--

CREATE TABLE `avion` (
  `NumVol` varchar(100) DEFAULT NULL,
  `HeureDepart` varchar(100) DEFAULT NULL,
  `HeureArrivee` varchar(100) DEFAULT NULL,
  `EtatCorrect` tinyint(100) DEFAULT NULL,
  `NumPorte` varchar(100) DEFAULT NULL,
  `NumAvion` varchar(100) DEFAULT NULL,
  `NumCompagnie` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `avion`
--

INSERT INTO `avion` (`NumVol`, `HeureDepart`, `HeureArrivee`, `EtatCorrect`, `NumPorte`, `NumAvion`, `NumCompagnie`) VALUES
('AF1023', '06:15:00', '08:45:00', 1, 'A12', 'F-GZNE', 'AF'),
('BA2047', '07:20:00', '09:55:00', 1, 'B14', 'G-EUYC', 'BA'),
('LH3310', '09:00:00', '11:30:00', 1, 'C03', 'D-AIPT', 'LH'),
('DL3045', '10:45:00', '13:15:00', 0, 'D07', 'N3743H', 'DL'),
('UA1239', '12:10:00', '14:50:00', 1, 'E18', 'N782UA', 'UA'),
('KL1765', '14:25:00', '17:00:00', 1, 'F04', 'PH-BXM', 'KL'),
('AZ6142', '16:30:00', '18:45:00', 1, 'G12', 'I-DISA', 'AZ'),
('IB3752', '18:15:00', '20:40:00', 0, 'H09', 'EC-LXQ', 'IB'),
('AF1421', '20:00:00', '22:30:00', 1, 'A01', 'F-GSPP', 'AF'),
('BA2091', '22:45:00', '01:15:00', 1, 'B20', 'G-EUOH', 'BA'),
('LH4208', '06:30:00', '09:05:00', 1, 'C10', 'D-AIPK', 'LH'),
('DL1920', '08:00:00', '10:30:00', 0, 'D03', 'N393DN', 'DL'),
('UA8723', '10:25:00', '13:10:00', 1, 'E01', 'N542UA', 'UA'),
('KL1870', '12:50:00', '15:15:00', 1, 'F07', 'PH-BXO', 'KL'),
('AZ7023', '15:10:00', '17:50:00', 1, 'G03', 'I-DISB', 'AZ'),
('IB4981', '17:35:00', '20:05:00', 1, 'H02', 'EC-MXQ', 'IB'),
('AF1657', '19:00:00', '21:25:00', 1, 'A14', 'F-GSQN', 'AF'),
('BA2210', '21:20:00', '23:45:00', 1, 'B11', 'G-EUPW', 'BA'),
('LH3090', '23:55:00', '02:20:00', 0, 'C17', 'D-AIPA', 'LH'),
('DL2285', '05:40:00', '08:05:00', 1, 'D15', 'N349NB', 'DL'),
('UA1742', '07:10:00', '09:35:00', 1, 'E13', 'N789UA', 'UA'),
('KL1583', '09:30:00', '12:10:00', 0, 'F12', 'PH-BXZ', 'KL'),
('AZ6104', '11:45:00', '14:20:00', 1, 'G11', 'I-DISC', 'AZ'),
('IB3844', '13:15:00', '15:40:00', 1, 'H06', 'EC-JXQ', 'IB'),
('AF1182', '15:50:00', '18:25:00', 1, 'A16', 'F-GTAL', 'AF'),
('BA2375', '18:10:00', '20:40:00', 0, 'B09', 'G-EUYK', 'BA'),
('LH3904', '20:30:00', '22:55:00', 1, 'C20', 'D-AIPL', 'LH'),
('DL1743', '22:10:00', '00:30:00', 1, 'D18', 'N324DL', 'DL'),
('UA2384', '00:45:00', '03:15:00', 1, 'E06', 'N376UA', 'UA'),
('KL1991', '03:30:00', '06:00:00', 1, 'F20', 'PH-BXA', 'KL'),
('AZ6541', '05:25:00', '07:55:00', 1, 'G01', 'I-DISD', 'AZ'),
('IB4239', '07:40:00', '10:10:00', 1, 'H12', 'EC-MXM', 'IB'),
('AF1348', '09:50:00', '12:20:00', 0, 'A06', 'F-GSPB', 'AF'),
('BA2164', '12:05:00', '14:30:00', 1, 'B02', 'G-EUXD', 'BA'),
('LH3510', '14:25:00', '17:00:00', 1, 'C13', 'D-AIPN', 'LH'),
('DL3039', '16:50:00', '19:15:00', 1, 'D06', 'N372DA', 'DL'),
('UA1395', '18:30:00', '21:05:00', 1, 'E17', 'N372UA', 'UA'),
('KL1432', '20:00:00', '22:30:00', 1, 'F02', 'PH-BXR', 'KL'),
('AZ6823', '22:20:00', '00:50:00', 0, 'G09', 'I-DISE', 'AZ'),
('IB4158', '01:15:00', '03:40:00', 1, 'H04', 'EC-LZQ', 'IB'),
('AF1734', '03:35:00', '06:05:00', 1, 'A18', 'F-GSPF', 'AF'),
('BA2094', '06:10:00', '08:35:00', 1, 'B17', 'G-EUYN', 'BA'),
('LH3270', '08:30:00', '11:00:00', 0, 'C07', 'D-AIPC', 'LH'),
('DL1192', '10:15:00', '12:40:00', 1, 'D01', 'N3748Y', 'DL'),
('UA2941', '12:35:00', '15:05:00', 1, 'E03', 'N765UA', 'UA'),
('KL1853', '14:10:00', '16:45:00', 1, 'F14', 'PH-BXP', 'KL'),
('AZ6124', '16:25:00', '18:55:00', 1, 'G17', 'I-DISF', 'AZ'),
('IB4349', '18:45:00', '21:10:00', 1, 'H11', 'EC-NXQ', 'IB'),
('AF1056', '21:05:00', '23:30:00', 0, 'A05', 'F-GSPL', 'AF'),
('BA2021', '23:40:00', '02:10:00', 1, 'B19', 'G-EUYN', 'BA');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
