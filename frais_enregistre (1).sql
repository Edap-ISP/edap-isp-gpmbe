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
-- Structure de la table `frais_enregistre`
--

CREATE TABLE `frais_enregistre` (
  `id_fr` int(11) NOT NULL,
  `noms_eleve` varchar(35) DEFAULT NULL,
  `promotion` varchar(3) DEFAULT NULL,
  `salle` varchar(3) DEFAULT NULL,
  `tranche` varchar(13) DEFAULT NULL,
  `appli_paie` varchar(25) DEFAULT NULL,
  `mont_fc` varchar(13) DEFAULT NULL,
  `tel` varchar(30) DEFAULT NULL,
  `mont_doll` varchar(5) DEFAULT NULL,
  `section` varchar(15) DEFAULT NULL,
  `email` text DEFAULT NULL,
  `date_fe` varchar(15) DEFAULT NULL,
  `heure` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `frais_enregistre`
--

INSERT INTO `frais_enregistre` (`id_fr`, `noms_eleve`, `promotion`, `salle`, `tranche`, `appli_paie`, `mont_fc`, `tel`, `mont_doll`, `section`, `email`, `date_fe`, `heure`) VALUES
(1, 'Tadia Mboma Jérémie', '1h', 'A', '1', 'M-pesa', '250000', '0813747535', NULL, 'Scientifique', 'elyt@gmail.com', '2024-10-01', '18:10'),
(2, 'Tadia Mboma Jérémie', '1h', 'A', '2', 'Orange money', '150000', '0895641212', NULL, 'Scientifique', 'elyt@gmail.com', '2024-10-01', '18:10');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `frais_enregistre`
--
ALTER TABLE `frais_enregistre`
  ADD PRIMARY KEY (`id_fr`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `frais_enregistre`
--
ALTER TABLE `frais_enregistre`
  MODIFY `id_fr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
