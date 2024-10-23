-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 23 oct. 2024 à 23:42
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
-- Structure de la table `admin2`
--

CREATE TABLE `admin2` (
  `id` int(11) NOT NULL,
  `nom` varchar(25) DEFAULT NULL,
  `postnom` varchar(25) DEFAULT NULL,
  `prenom` varchar(25) DEFAULT NULL,
  `sexe` varchar(3) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `tel` int(15) DEFAULT NULL,
  `pss` varchar(10) DEFAULT NULL,
  `priv` varchar(25) DEFAULT NULL,
  `date1` varchar(15) DEFAULT NULL,
  `heure` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `admin2`
--

INSERT INTO `admin2` (`id`, `nom`, `postnom`, `prenom`, `sexe`, `email`, `tel`, `pss`, `priv`, `date1`, `heure`) VALUES
(1, 'Bolimo', 'Luzolo', 'Christian', 'M', 'narcissemenge@gmail.com', 2147483647, 'esprit', 'user', '2024-09-04', '17:09');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admin2`
--
ALTER TABLE `admin2`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admin2`
--
ALTER TABLE `admin2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
