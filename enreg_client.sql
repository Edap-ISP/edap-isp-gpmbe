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
-- Structure de la table `enreg_client`
--

CREATE TABLE `enreg_client` (
  `id_client` int(11) NOT NULL,
  `nom_eleve` varchar(25) DEFAULT NULL,
  `postnom_eleve` varchar(25) DEFAULT NULL,
  `prenom_eleve` varchar(25) DEFAULT NULL,
  `sexe_eleve` varchar(3) DEFAULT NULL,
  `dt_naiss_eleve` varchar(11) DEFAULT NULL,
  `promotion_eleve` varchar(5) DEFAULT NULL,
  `section_eleve` varchar(20) DEFAULT NULL,
  `adresse_tut` text DEFAULT NULL,
  `email_parent` varchar(25) DEFAULT NULL,
  `tel` varchar(19) DEFAULT NULL,
  `user_name` varchar(10) DEFAULT NULL,
  `pssw` varchar(15) DEFAULT NULL,
  `noms_parent` varchar(35) DEFAULT NULL,
  `salle` varchar(2) DEFAULT NULL,
  `date_c` varchar(10) DEFAULT NULL,
  `heure` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `enreg_client`
--

INSERT INTO `enreg_client` (`id_client`, `nom_eleve`, `postnom_eleve`, `prenom_eleve`, `sexe_eleve`, `dt_naiss_eleve`, `promotion_eleve`, `section_eleve`, `adresse_tut`, `email_parent`, `tel`, `user_name`, `pssw`, `noms_parent`, `salle`, `date_c`, `heure`) VALUES
(1, 'Tadia', 'Mboma', 'Jérémie', 'M', '2010-03-10', '1h', 'Scientifique', '46 Beni righini lemba', 'elyt@gmail.com', '+243811906132', 'ely', 'ely1212', 'Tadia Ely', 'A', '2024-10-01', '18:10'),
(2, 'MUTEBE', 'HOLS', 'PAUL', 'M', '2004-12-012', '2h', 'Péda Générale', 'BEAUVENT', 'emenge@gmail.com', '090786534', 'MUTEBE', '1212', 'EMENGE', '--', '2024-10-05', '15:10');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `enreg_client`
--
ALTER TABLE `enreg_client`
  ADD PRIMARY KEY (`id_client`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `enreg_client`
--
ALTER TABLE `enreg_client`
  MODIFY `id_client` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
