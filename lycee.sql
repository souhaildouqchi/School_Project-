-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Ven 19 Février 2016 à 12:47
-- Version du serveur :  5.6.15-log
-- Version de PHP :  5.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `lycee`
--

-- --------------------------------------------------------

--
-- Structure de la table `absence`
--

CREATE TABLE IF NOT EXISTS `absence` (
  `date_abscence` date NOT NULL,
  `id_matiere` int(11) NOT NULL,
  `cne` int(11) NOT NULL,
  PRIMARY KEY (`cne`,`id_matiere`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `ID` int(5) NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(30) NOT NULL,
  `password` varchar(10) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `pseudo` (`pseudo`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `admin`
--

INSERT INTO `admin` (`ID`, `pseudo`, `password`) VALUES
(1, 'khalil', 'azerty'),
(2, 'surveillent', 'azerty');

-- --------------------------------------------------------

--
-- Structure de la table `classe`
--

CREATE TABLE IF NOT EXISTS `classe` (
  `Id_classe` int(10) NOT NULL AUTO_INCREMENT,
  `nb_etudiant` int(10) NOT NULL,
  `specialite` text NOT NULL,
  PRIMARY KEY (`Id_classe`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `classe`
--

INSERT INTO `classe` (`Id_classe`, `nb_etudiant`, `specialite`) VALUES
(1, 40, 'Math'),
(2, 14, 'PHYSIQUE');

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

CREATE TABLE IF NOT EXISTS `etudiant` (
  `cin` varchar(10) NOT NULL,
  `cne` varchar(12) NOT NULL,
  `nom_Etud` varchar(50) DEFAULT NULL,
  `prenom_Etud` varchar(50) DEFAULT NULL,
  `Adresse_Etud` varchar(50) DEFAULT NULL,
  `date_naissance_Etud` date DEFAULT NULL,
  `Id_classe` int(11) NOT NULL,
  `code` int(11) NOT NULL,
  PRIMARY KEY (`cin`,`cne`),
  UNIQUE KEY `cin` (`cin`),
  UNIQUE KEY `cne` (`cne`),
  KEY `Id_classe` (`Id_classe`),
  KEY `code` (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `etudiant`
--

INSERT INTO `etudiant` (`cin`, `cne`, `nom_Etud`, `prenom_Etud`, `Adresse_Etud`, `date_naissance_Etud`, `Id_classe`, `code`) VALUES
('z565332', '1311809112', 'Bouramtane', 'Khalil', 'taza', '1994-10-10', 0, 4);

-- --------------------------------------------------------

--
-- Structure de la table `evaluation`
--

CREATE TABLE IF NOT EXISTS `evaluation` (
  `note` int(20) NOT NULL,
  `id_matiere` int(11) NOT NULL,
  `cne` int(11) NOT NULL,
  PRIMARY KEY (`cne`,`id_matiere`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `filiere`
--

CREATE TABLE IF NOT EXISTS `filiere` (
  `code` int(10) NOT NULL AUTO_INCREMENT,
  `Type` text NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `filiere`
--

INSERT INTO `filiere` (`code`, `Type`) VALUES
(4, 'SVT'),
(2, 'SP'),
(3, 'SM');

-- --------------------------------------------------------

--
-- Structure de la table `matiere`
--

CREATE TABLE IF NOT EXISTS `matiere` (
  `id_matiere` int(10) NOT NULL,
  `libelle` varchar(10) NOT NULL,
  `coefficient` int(10) NOT NULL,
  `id_prof` int(11) NOT NULL,
  PRIMARY KEY (`id_matiere`),
  KEY `id_prof` (`id_prof`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `professeur`
--

CREATE TABLE IF NOT EXISTS `professeur` (
  `id_prof` int(10) NOT NULL AUTO_INCREMENT,
  `Nomp` varchar(30) NOT NULL,
  `Prenomp` varchar(30) NOT NULL,
  PRIMARY KEY (`id_prof`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `professeur`
--

INSERT INTO `professeur` (`id_prof`, `Nomp`, `Prenomp`) VALUES
(1, 'ALAMI', 'ALI'),
(2, 'Lakhal', 'Mohammed'),
(3, 'Barkani', 'Youssef');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
