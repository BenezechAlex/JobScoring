-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mer. 28 mars 2018 à 06:58
-- Version du serveur :  5.7.21-log
-- Version de PHP :  5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `jobscoring`
--

-- --------------------------------------------------------

--
-- Structure de la table `candidat`
--

DROP TABLE IF EXISTS `candidat`;
CREATE TABLE IF NOT EXISTS `candidat` (
  `id_candidat` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `candidat`
--

INSERT INTO `candidat` (`id_candidat`) VALUES
('ehdueohfir');

-- --------------------------------------------------------

--
-- Structure de la table `catalogue_offre_emploi`
--

DROP TABLE IF EXISTS `catalogue_offre_emploi`;
CREATE TABLE IF NOT EXISTS `catalogue_offre_emploi` (
  `id_offre` varchar(25) NOT NULL,
  `offr_titre` varchar(100) NOT NULL,
  `offre_dec` varchar(100) NOT NULL,
  `dateDebut` date NOT NULL,
  `type_offre` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `competence`
--

DROP TABLE IF EXISTS `competence`;
CREATE TABLE IF NOT EXISTS `competence` (
  `id_competence` varchar(25) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `famille` varchar(100) NOT NULL,
  `parent` varchar(100) NOT NULL,
  `hardskill` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `cv_comp`
--

DROP TABLE IF EXISTS `cv_comp`;
CREATE TABLE IF NOT EXISTS `cv_comp` (
  `num_comp` int(2) NOT NULL,
  `niveau` int(10) NOT NULL,
  `bool_preuve` int(2) NOT NULL,
  `preuve` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `cv_exp`
--

DROP TABLE IF EXISTS `cv_exp`;
CREATE TABLE IF NOT EXISTS `cv_exp` (
  `num_exp` int(2) NOT NULL,
  `titre` varchar(100) NOT NULL,
  `descriptif` varchar(100) NOT NULL,
  `comp1` varchar(100) NOT NULL,
  `comp2` varchar(100) NOT NULL,
  `comp3` varchar(100) NOT NULL,
  `duree` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `entreprise`
--

DROP TABLE IF EXISTS `entreprise`;
CREATE TABLE IF NOT EXISTS `entreprise` (
  `id_entreprise` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `offre_emploi`
--

DROP TABLE IF EXISTS `offre_emploi`;
CREATE TABLE IF NOT EXISTS `offre_emploi` (
  `id_competence` varchar(25) NOT NULL,
  `niveau_min` int(10) NOT NULL,
  `niveau_recom` int(10) NOT NULL,
  `importance` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
