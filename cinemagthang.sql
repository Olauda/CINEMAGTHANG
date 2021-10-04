-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 04 oct. 2021 à 14:01
-- Version du serveur :  10.4.18-MariaDB
-- Version de PHP : 8.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `cinemagthang`
--

-- --------------------------------------------------------

--
-- Structure de la table `admincinemaone`
--

CREATE TABLE `admincinemaone` (
  `IDAdminCinema1` int(11) NOT NULL,
  `AjoutSéance` varchar(45) DEFAULT NULL,
  `SuppressionSéance` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `admincinemathree`
--

CREATE TABLE `admincinemathree` (
  `IDAdminCinema3` int(11) NOT NULL,
  `AjoutSéance` varchar(45) DEFAULT NULL,
  `SuppressionSéance` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `admincinematwo`
--

CREATE TABLE `admincinematwo` (
  `IDAdminCinema2` int(11) NOT NULL,
  `AjoutSéance` varchar(45) DEFAULT NULL,
  `SuppressionSéance` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `cinemaone`
--

CREATE TABLE `cinemaone` (
  `IDCINEMA1` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `cinemathree`
--

CREATE TABLE `cinemathree` (
  `IDCINEMA3` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `cinematwo`
--

CREATE TABLE `cinematwo` (
  `IDCINEMA2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE `clients` (
  `idClients` int(11) NOT NULL,
  `ADULTE` int(11) NOT NULL,
  `ETUDIANT` int(11) NOT NULL,
  `MOINS_de_14ANS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `clients`
--

INSERT INTO `clients` (`idClients`, `ADULTE`, `ETUDIANT`, `MOINS_de_14ANS`) VALUES
(0, 10, 8, 6);

-- --------------------------------------------------------

--
-- Structure de la table `film`
--

CREATE TABLE `film` (
  `IDFilms` int(11) NOT NULL,
  `HeureSeance` decimal(10,0) DEFAULT NULL,
  `SalleSeance` varchar(45) DEFAULT NULL,
  `NomFilm` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `film`
--

INSERT INTO `film` (`IDFilms`, `HeureSeance`, `SalleSeance`, `NomFilm`) VALUES
(1, '10', 'DressingRoom', 'James Bond 007'),
(2, '12', 'RomanticRoom', 'Harry Meets Sally'),
(3, '14', 'BathRoom', 'Spartacus'),
(4, '16', 'VRoom', 'Gladiator'),
(5, '18', 'ScifiRoom', 'Avatar'),
(6, '20', 'AuthorRoom', 'Crazy KiyaRe'),
(7, '9', 'ActionRoom', 'Nollywood Yoruba Act'),
(8, '11', 'EmotionRoom', 'Titanic'),
(9, '22', 'PanicRoom', 'Saw4');

-- --------------------------------------------------------

--
-- Structure de la table `paiement`
--

CREATE TABLE `paiement` (
  `IDPaiement` int(11) NOT NULL,
  `SurPlace` binary(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `salle`
--

CREATE TABLE `salle` (
  `IDSalle` int(11) NOT NULL,
  `NomFilm` varchar(45) DEFAULT NULL,
  `HeureFilm` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `tarifs_place`
--

CREATE TABLE `tarifs_place` (
  `IDTarif_Place` int(11) NOT NULL,
  `Nom_du_Film` varchar(45) DEFAULT NULL,
  `Nom_du_Cinema` varchar(45) DEFAULT NULL,
  `DateSeance` date DEFAULT NULL,
  `HEURESEANCE` decimal(10,0) DEFAULT NULL,
  `NombrePlace` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `cinemaone`
--
ALTER TABLE `cinemaone`
  ADD PRIMARY KEY (`IDCINEMA1`);

--
-- Index pour la table `cinemathree`
--
ALTER TABLE `cinemathree`
  ADD PRIMARY KEY (`IDCINEMA3`);

--
-- Index pour la table `cinematwo`
--
ALTER TABLE `cinematwo`
  ADD PRIMARY KEY (`IDCINEMA2`);

--
-- Index pour la table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`idClients`);

--
-- Index pour la table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`IDFilms`);

--
-- Index pour la table `salle`
--
ALTER TABLE `salle`
  ADD PRIMARY KEY (`IDSalle`);

--
-- Index pour la table `tarifs_place`
--
ALTER TABLE `tarifs_place`
  ADD PRIMARY KEY (`IDTarif_Place`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
