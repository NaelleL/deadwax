-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : jeu. 30 avr. 2026 à 07:35
-- Version du serveur : 5.7.24
-- Version de PHP : 8.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `mon_site`
--

-- --------------------------------------------------------

--
-- Structure de la table `musiques`
--

CREATE TABLE `musiques` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) DEFAULT NULL,
  `artiste` varchar(255) DEFAULT NULL,
  `youtube_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `musiques`
--

INSERT INTO `musiques` (`id`, `titre`, `artiste`, `youtube_url`) VALUES
(1, 'Blinding Lights', 'The Weeknd', 'https://www.youtube.com/watch?v=4NRXx6U8ABQ'),
(2, 'Numb', 'Linkin Park', 'https://www.youtube.com/watch?v=kXYiU_JCYtU'),
(3, 'Midnight City', 'M83', 'https://www.youtube.com/watch?v=dX3k_QDnzHE'),
(4, 'Do I Wanna Know?', 'Arctic Monkeys', 'https://www.youtube.com/watch?v=bpOSxM0rNPM'),
(5, 'Starboy', 'The Weeknd', 'https://www.youtube.com/watch?v=34Na4j8AVgA');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `musiques`
--
ALTER TABLE `musiques`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `musiques`
--
ALTER TABLE `musiques`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
