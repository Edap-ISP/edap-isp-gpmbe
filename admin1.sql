-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 23 oct. 2024 à 23:41
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
-- Structure de la table `admin1`
--

CREATE TABLE `admin1` (
  `id` int(11) NOT NULL,
  `nom` varchar(25) DEFAULT NULL,
  `postnom` varchar(25) DEFAULT NULL,
  `prenom` varchar(25) DEFAULT NULL,
  `sexe` varchar(3) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `pss` varchar(10) DEFAULT NULL,
  `priv` varchar(20) DEFAULT NULL,
  `signature` varchar(25) DEFAULT NULL,
  `date1` varchar(15) DEFAULT NULL,
  `heure` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `admin1`
--

INSERT INTO `admin1` (`id`, `nom`, `postnom`, `prenom`, `sexe`, `email`, `tel`, `pss`, `priv`, `signature`, `date1`, `heure`) VALUES
(2, 'Tadia', 'Mboma', 'Ely', 'M', 'elytadia@gmail.com', '+243811906132', 'ely1', 'full_access', 'ambongovuavu@gmail.com', '2024-08-30', '19:08'),
(3, 'Ilunga', 'Heradi', 'Henry', 'M', 'ilus12@gmail.com', '+243813747535', 'ilushera', 'user', NULL, '2024-08-30', '19:08'),
(6, 'Ambongo', 'Vuavu', 'Syntyche', 'F', 'ambongovuavu@gmail.com', '+243828786360', 'oracle', 'full_access', NULL, '2024-09-03', '18:09'),
(7, 'Bitulu', 'Mongu', 'Abigael', 'F', 'bituluabigael@gmail.com', '+243891678633', 'faveur', 'semi_full', NULL, '2024-09-03', '18:09'),
(10, 'Bolimo', 'Emenge', 'Narcisse', 'M', 'narcissemenge@gmail.com', '+243814457814', 'espoir', 'user', NULL, '2024-09-04', '17:09');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admin1`
--
ALTER TABLE `admin1`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admin1`
--
ALTER TABLE `admin1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
