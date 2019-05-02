-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  jeu. 02 mai 2019 à 09:02
-- Version du serveur :  10.1.28-MariaDB
-- Version de PHP :  7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `filrouge`
--

-- --------------------------------------------------------

--
-- Structure de la table `authentification`
--

CREATE TABLE `authentification` (
  `id` int(11) NOT NULL,
  `user` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `fonction` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `aventure`
--

CREATE TABLE `aventure` (
  `id` int(11) NOT NULL,
  `miniature` text NOT NULL,
  `titre` varchar(50) NOT NULL,
  `mini_descri` text NOT NULL,
  `description` text NOT NULL,
  `date` date NOT NULL,
  `espece` varchar(40) NOT NULL,
  `categorie` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `aventure`
--

INSERT INTO `aventure` (`id`, `miniature`, `titre`, `mini_descri`, `description`, `date`, `espece`, `categorie`) VALUES
(1, 'https://www.safaris-intanzania.com/wp-content/uploads/2016/08/east-africa-safari-zanzibar.jpg', 'Le guépard', 'Le guépard, l\'animal terrestre le plus rapide au monde, courrait \"tout droit vers son extinction\" ? ', 'L’animal le plus rapide au monde serait-il en voie de disparition ? Selon une étude d’une revue américaine, Proceedings of the National Academy of Sciences (PNAS), le guépard, célèbre félidé vivant principalement en Afrique, \"court tout droit vers son extinction\".\r\n\r\n\r\nMoins de 7100 spécimens subsistent actuellement en liberté dans le monde, à 99% en Afrique, n\'occupant plus que 9% de la surface qu\'ils ont un temps occupé. Selon de précédentes estimations, non citées dans l\'étude menée par la Société zoologique de Londres (ZSL) et l\'organisation de défense de l\'environnement Wildlife Conservation Society (WCS), la population mondiale de guépards s\'élevait à environ 100.000 individus au début du XXe siècle.', '0000-00-00', 'Guépard', 'félin'),
(2, 'https://www.francetelevisions.fr/sites/default/files/images/2018/02/27/rsz_ourspolaireoperationsurvi-11_1_0.jpg', 'Ours polaire', 'Créature majestueuse du Grand Nord', '0', '2019-03-28', 'Ours Polaire', 'ursidé'),
(3, 'http://www.ompe.org/wp-content/uploads/2016/10/sauver-tigre.jpg', 'Le tigre du Bengale', 'Il y a 100 ans, on pouvait rencontrer le tigre du Bengale dans toute la péninsule indienne. Aujourd’hui, il ne subsiste qu\'environ 2 500 individus', '0', '2019-03-30', 'Tigre du Bengale', 'félin');

-- --------------------------------------------------------

--
-- Structure de la table `inscription`
--

CREATE TABLE `inscription` (
  `id` int(11) NOT NULL,
  `nom` varchar(20) NOT NULL,
  `prenom` varchar(20) NOT NULL,
  `age` int(11) NOT NULL,
  `adresse` varchar(500) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `raison` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `salarie`
--

CREATE TABLE `salarie` (
  `id` int(11) NOT NULL,
  `nom` varchar(20) NOT NULL,
  `prenom` varchar(20) NOT NULL,
  `metier` varchar(50) NOT NULL,
  `site` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `authentification`
--
ALTER TABLE `authentification`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `aventure`
--
ALTER TABLE `aventure`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `inscription`
--
ALTER TABLE `inscription`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `salarie`
--
ALTER TABLE `salarie`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `authentification`
--
ALTER TABLE `authentification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `aventure`
--
ALTER TABLE `aventure`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `inscription`
--
ALTER TABLE `inscription`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `salarie`
--
ALTER TABLE `salarie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
