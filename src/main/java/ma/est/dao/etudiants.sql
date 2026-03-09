-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 09 mars 2026 à 09:53
-- Version du serveur : 9.1.0
-- Version de PHP : 8.4.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `etudiants`
--

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

DROP TABLE IF EXISTS `etudiant`;
CREATE TABLE IF NOT EXISTS `etudiant` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8mb4_general_ci NOT NULL,
  `surname` text COLLATE utf8mb4_general_ci NOT NULL,
  `telephone` text COLLATE utf8mb4_general_ci,
  `adresse` text COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `etudiant`
--

INSERT INTO `etudiant` (`ID`, `name`, `surname`, `telephone`, `adresse`) VALUES
(1, 'Youssef', 'El Amrani', '0612345678', 'Rabat'),
(2, 'Sara', 'Bennani', '0623456789', 'Salé'),
(3, 'Omar', 'Alaoui', '0634567890', 'Témara'),
(4, 'Hind', 'Chraibi', '0645678901', 'Casablanca'),
(5, 'Mehdi', 'Fassi', '0656789012', 'Fès'),
(6, 'Imane', 'Zahraoui', '0667890123', 'Meknès'),
(7, 'Hamza', 'El Idrissi', '0678901234', 'Rabat'),
(8, 'Nour', 'Lahlou', '0689012345', 'Salé'),
(9, 'Anas', 'Berrada', '0690123456', 'Kénitra'),
(10, 'Khadija', 'El Khatib', '0601234567', 'Agadir'),
(11, 'Rachid', 'Toumi', '0611111111', 'Oujda'),
(12, 'Salma', 'Rahmani', '0622222222', 'Nador'),
(13, 'Ayoub', 'Zerhouni', '0633333333', 'Tanger'),
(14, 'Meryem', 'Sbai', '0644444444', 'Chefchaouen'),
(15, 'Adil', 'Karimi', '0655555555', 'Ifrane'),
(19, 'BRONDON JORES', 'HOUAKEU KAMGUIA', '0635264352', 'SALE la poste'),
(20, 'BRONDON', 'KAMGUIA', '0635264352', 'LOT ERAC '),
(21, 'Test', 'Jores', '0635264352', 'Rabat, Maroc');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
