-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 25 jan. 2022 à 19:48
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `cdn-form-isn`
--

-- --------------------------------------------------------

--
-- Structure de la table `cgnformtable`
--

DROP TABLE IF EXISTS `cgnformtable`;
CREATE TABLE IF NOT EXISTS `cgnformtable` (
  `nom` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `objet` varchar(50) NOT NULL,
  `message` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `cgnformtable`
--

INSERT INTO `cgnformtable` (`nom`, `email`, `objet`, `message`) VALUES
('Karl', 'mabele@gmail.com', 'torche', ',dklfjksflksjdkjksflgj');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
