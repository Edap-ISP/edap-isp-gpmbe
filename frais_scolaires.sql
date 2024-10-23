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
-- Structure de la table `frais_scolaires`
--

CREATE TABLE `frais_scolaires` (
  `id_fs` int(11) NOT NULL,
  `promotion` varchar(5) DEFAULT NULL,
  `section` varchar(15) DEFAULT NULL,
  `montant` varchar(15) DEFAULT NULL,
  `tranche` varchar(15) DEFAULT NULL,
  `date_fs` varchar(15) DEFAULT NULL,
  `heure_fs` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `frais_scolaires`
--
ALTER TABLE `frais_scolaires`
  ADD PRIMARY KEY (`id_fs`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `frais_scolaires`
--
ALTER TABLE `frais_scolaires`
  MODIFY `id_fs` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
