-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 23 oct. 2024 à 23:43
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `edap_isp_gombe`
--

-- --------------------------------------------------------

--
-- Structure de la table `frais_trim`
--

CREATE TABLE `frais_trim` (
  `id_ft` int(11) NOT NULL,
  `promotion` varchar(5) DEFAULT NULL,
  `section` varchar(20) DEFAULT NULL,
  `montant` varchar(15) DEFAULT NULL,
  `tranche` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `frais_trim`
--

INSERT INTO `frais_trim` (`id_ft`, `promotion`, `section`, `montant`, `tranche`) VALUES
(1, '1h', 'Scientifique', '250000', '1'),
(2, '1h', 'Scientifique', '150000', '2');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `frais_trim`
--
ALTER TABLE `frais_trim`
  ADD PRIMARY KEY (`id_ft`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `frais_trim`
--
ALTER TABLE `frais_trim`
  MODIFY `id_ft` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
