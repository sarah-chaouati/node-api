-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 05 nov. 2021 à 15:09
-- Version du serveur :  8.0.21
-- Version de PHP : 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `node_api`
--
CREATE DATABASE IF NOT EXISTS `node_api` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `node_api`;

-- --------------------------------------------------------

--
-- Structure de la table `classe`
--

DROP TABLE IF EXISTS `classe`;
CREATE TABLE IF NOT EXISTS `classe` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `icone` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `stat_pv` int NOT NULL DEFAULT '0',
  `stat_force` int NOT NULL DEFAULT '0',
  `stat_endu` int NOT NULL DEFAULT '0',
  `stat_magie` int NOT NULL DEFAULT '0',
  `stat_pm` int NOT NULL DEFAULT '0',
  `stat_rage` int NOT NULL DEFAULT '0',
  `id_equipement` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `classe`
--

INSERT INTO `classe` (`id`, `nom`, `img`, `icone`, `description`, `stat_pv`, `stat_force`, `stat_endu`, `stat_magie`, `stat_pm`, `stat_rage`, `id_equipement`) VALUES
(1, 'War', 'img/war.png', 'img/waricon.png', 'Classe du war', 10, 5, 5, 0, 0, 10, 1),
(2, 'Sorcier', 'img/sorcier.png', 'img/sorciericon.png', 'Classe du sorcier', 5, 0, 1, 10, 10, 0, 2);

-- --------------------------------------------------------

--
-- Structure de la table `perso`
--

DROP TABLE IF EXISTS `perso`;
CREATE TABLE IF NOT EXISTS `perso` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_user` int NOT NULL,
  `id_classe` int NOT NULL,
  `id_inventaire` int NOT NULL,
  `lvl` int NOT NULL,
  `xp` int NOT NULL,
  `gold` int NOT NULL,
  `pv` int NOT NULL,
  `pm` int NOT NULL,
  `pr` int NOT NULL,
  `pe` int NOT NULL,
  `pf` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_perso` int NOT NULL,
  `pseudo` varchar(30) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mdp` int NOT NULL,
  `date_inscri` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
