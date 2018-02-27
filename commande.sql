-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Mar 27 Février 2018 à 01:54
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `medina`
--

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `id_commande` int(11) NOT NULL,
  `datec` date NOT NULL,
  `prix` float NOT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `commande`
--

INSERT INTO `commande` (`id_commande`, `datec`, `prix`, `username`) VALUES
(27, '2018-03-14', 250, '0'),
(28, '2018-03-14', 500, '0'),
(29, '2018-03-14', 250, '0'),
(30, '2018-03-14', 750, '0'),
(31, '2018-03-14', 0, '0'),
(32, '2018-03-14', 2050, '0'),
(33, '2018-03-14', 0, '0'),
(34, '2018-03-14', 0, '0'),
(35, '2018-03-14', 0, '0'),
(36, '2018-03-14', 3150, '0'),
(37, '2018-03-14', 3300, '0'),
(38, '2018-03-14', 3400, '0'),
(39, '2018-03-14', 100, '0'),
(40, '2018-03-14', 3650, '0'),
(41, '2018-03-14', 0, '0'),
(42, '2018-03-14', 3700, '0'),
(43, '2018-03-14', 3900, '0'),
(44, '2018-03-14', 0, '0'),
(45, '2018-03-14', 4500, '0'),
(46, '2018-03-14', 4600, '0'),
(47, '2018-03-14', 4650, '0'),
(48, '2018-03-14', 300, '0'),
(49, '2018-03-14', 350, '0'),
(50, '2018-03-14', 450, '0'),
(51, '2018-03-14', 550, '0'),
(52, '2018-03-14', 50, '0'),
(53, '2018-03-14', 100, '0'),
(54, '2018-03-14', 150, '0'),
(55, '2018-03-14', 300, '0'),
(56, '2018-03-14', 150, '0'),
(57, '2018-03-14', 50, '0'),
(58, '2018-03-14', 100, '0'),
(59, '2018-03-14', 50, '0'),
(60, '2018-03-14', 50, '0'),
(61, '2018-03-14', 50, '0'),
(62, '2018-03-14', 200, 'fares.maghzaoui@esprit.tn');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`id_commande`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `commande`
--
ALTER TABLE `commande`
  MODIFY `id_commande` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
