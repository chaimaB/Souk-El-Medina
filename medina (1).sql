-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Mar 27 Février 2018 à 20:06
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
-- Structure de la table `annonce`
--

CREATE TABLE `annonce` (
  `id` int(11) NOT NULL,
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `id_local` int(11) NOT NULL,
  `id_prop` int(11) NOT NULL,
  `prix` float NOT NULL,
  `owner` varchar(50) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `annonce`
--

INSERT INTO `annonce` (`id`, `startdate`, `enddate`, `id_local`, `id_prop`, `prix`, `owner`, `image`, `type`) VALUES
(22, NULL, NULL, 22, 8, 22, 'vv', NULL, 1),
(23, '2018-02-22', '2018-03-01', 13, 8, 88, 'vv', NULL, 2),
(24, '2018-02-22', '2018-03-01', 13, 8, 88, 'vv', NULL, 2),
(25, NULL, NULL, 9, 8, 22, 'vv', '26734103_1205200402916243_8851949491831023772_n.jpg', 1);

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `id_categorie` int(11) NOT NULL,
  `nom` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `id_commande` int(11) NOT NULL,
  `date` date NOT NULL,
  `somme` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `commentaire`
--

CREATE TABLE `commentaire` (
  `id` int(11) NOT NULL,
  `contenu` varchar(50) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `dispo`
--

CREATE TABLE `dispo` (
  `id_dispo` int(11) NOT NULL,
  `local` int(11) NOT NULL,
  `stardate` date NOT NULL,
  `enddate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `event`
--

CREATE TABLE `event` (
  `id_event` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `description` varchar(100) NOT NULL,
  `image` varchar(50) NOT NULL,
  `lieu` varchar(50) NOT NULL,
  `prix` varchar(10) NOT NULL,
  `owner` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `event`
--

INSERT INTO `event` (`id_event`, `nom`, `date`, `description`, `image`, `lieu`, `prix`, `owner`) VALUES
(1, 'a', '2018-01-04', 'des', 'image', 'lieu', 'prix', 1),
(2, 'aaaa', '2018-01-04', 'aaaaa', 'image', 'lieu', 'prix', 1),
(5, 'a', '2018-01-04', 'des', 'image', 'lieu', 'prix', 1),
(10, 'a', '2018-01-04', 'des', 'image', 'lieu', 'prix', 1),
(11, 'chaima', '2018-01-04', 'des', 'image', 'lieu', 'prix', 1);

-- --------------------------------------------------------

--
-- Structure de la table `local`
--

CREATE TABLE `local` (
  `id_local` int(11) NOT NULL,
  `description` varchar(50) NOT NULL,
  `nom_local` varchar(10) NOT NULL,
  `superficie` float NOT NULL,
  `localisation` varchar(20) NOT NULL,
  `imgl1` varchar(10) DEFAULT NULL,
  `prop` int(11) DEFAULT NULL,
  `lat` double NOT NULL,
  `lang` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `local`
--

INSERT INTO `local` (`id_local`, `description`, `nom_local`, `superficie`, `localisation`, `imgl1`, `prop`, `lat`, `lang`) VALUES
(9, 'zefer', 'erf', 12, 'erfre', NULL, 8, 0, 0),
(13, 'zefer', 'xxxxx', 12, 'zefez', NULL, 8, 0, 0),
(22, 'jjjj', 'kl,k,k,k', 22, 'lk,lk', NULL, 8, 0, 0),
(23, '', '31', 12, 'kj', NULL, 8, 36.79320276932009, 10.180377960205078),
(24, 'hn', 'zaed', 22, 'skdfjz', NULL, 8, 36.780004815311294, 10.180377960205078);

-- --------------------------------------------------------

--
-- Structure de la table `locaux_event`
--

CREATE TABLE `locaux_event` (
  `id_Local_event` int(11) NOT NULL,
  `description` varchar(50) NOT NULL,
  `nom_local` varchar(20) NOT NULL,
  `prix` float NOT NULL,
  `superficie` float NOT NULL,
  `localisation` varchar(50) NOT NULL,
  `imgl1` varchar(50) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `prop` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `locaux_event`
--

INSERT INTO `locaux_event` (`id_Local_event`, `description`, `nom_local`, `prix`, `superficie`, `localisation`, `imgl1`, `status`, `prop`) VALUES
(1, 'cxv', 'zfze', 12, 100, 'sdfesd', NULL, NULL, 8),
(2, 'dfghjk', 'azertfghjk', 451, 545, 'rrdtfyghjk', NULL, NULL, 8);

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `id_produit` int(11) NOT NULL,
  `nom_produit` varchar(10) NOT NULL,
  `description` varchar(50) NOT NULL,
  `imgp1` varchar(20) NOT NULL,
  `imgp2` varchar(20) NOT NULL,
  `imgp3` varchar(20) NOT NULL,
  `prix` float NOT NULL,
  `disponible` tinyint(1) NOT NULL,
  `qte` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `reclamation`
--

CREATE TABLE `reclamation` (
  `id` int(11) NOT NULL,
  `reclameur` varchar(20) NOT NULL,
  `reclamee` varchar(20) NOT NULL,
  `nbrreclam` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `reclamation`
--

INSERT INTO `reclamation` (`id`, `reclameur`, `reclamee`, `nbrreclam`, `date`) VALUES
(1, 'reclameur', 'reclamee', 2, '2018-03-07');

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

CREATE TABLE `reservation` (
  `id_reservation` int(11) NOT NULL,
  `date_debut` date NOT NULL,
  `date_fin` date NOT NULL,
  `event` varchar(20) NOT NULL,
  `owner` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `sous_categorie`
--

CREATE TABLE `sous_categorie` (
  `id_sous` int(11) NOT NULL,
  `nom_sous` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `cin` int(8) NOT NULL,
  `nom` varchar(10) NOT NULL,
  `prenom` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `pwd` varchar(20) NOT NULL,
  `dateN` date NOT NULL,
  `numTel` int(8) NOT NULL,
  `userName` varchar(20) NOT NULL,
  `image` varchar(30) NOT NULL,
  `adress` varchar(50) NOT NULL,
  `role` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`id`, `cin`, `nom`, `prenom`, `email`, `pwd`, `dateN`, `numTel`, `userName`, `image`, `adress`, `role`) VALUES
(8, 12345678, 'aaa', 'ff', 'ffff', 'fv', '2018-01-05', 2, 'vv', 'vvv', 'vv', 2),
(9, 12345678, 'aaa', 'ff', 'ffff', 'fv', '2018-01-05', 2, 'vv', 'vvv', 'vv', 2);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `annonce`
--
ALTER TABLE `annonce`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_prop` (`id_prop`),
  ADD KEY `id_local` (`id_local`);

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id_categorie`);

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`id_commande`);

--
-- Index pour la table `commentaire`
--
ALTER TABLE `commentaire`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `dispo`
--
ALTER TABLE `dispo`
  ADD PRIMARY KEY (`id_dispo`),
  ADD KEY `local` (`local`);

--
-- Index pour la table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id_event`),
  ADD KEY `owner` (`owner`);

--
-- Index pour la table `local`
--
ALTER TABLE `local`
  ADD PRIMARY KEY (`id_local`),
  ADD KEY `prop` (`prop`),
  ADD KEY `prop_2` (`prop`),
  ADD KEY `prop_3` (`prop`),
  ADD KEY `prop_4` (`prop`);

--
-- Index pour la table `locaux_event`
--
ALTER TABLE `locaux_event`
  ADD PRIMARY KEY (`id_Local_event`),
  ADD KEY `prop` (`prop`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`id_produit`);

--
-- Index pour la table `reclamation`
--
ALTER TABLE `reclamation`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id_reservation`);

--
-- Index pour la table `sous_categorie`
--
ALTER TABLE `sous_categorie`
  ADD PRIMARY KEY (`id_sous`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `annonce`
--
ALTER TABLE `annonce`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id_categorie` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `commande`
--
ALTER TABLE `commande`
  MODIFY `id_commande` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `commentaire`
--
ALTER TABLE `commentaire`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `dispo`
--
ALTER TABLE `dispo`
  MODIFY `id_dispo` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `event`
--
ALTER TABLE `event`
  MODIFY `id_event` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT pour la table `local`
--
ALTER TABLE `local`
  MODIFY `id_local` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT pour la table `locaux_event`
--
ALTER TABLE `locaux_event`
  MODIFY `id_Local_event` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `sous_categorie`
--
ALTER TABLE `sous_categorie`
  MODIFY `id_sous` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `annonce`
--
ALTER TABLE `annonce`
  ADD CONSTRAINT `annonce_ibfk_2` FOREIGN KEY (`id_prop`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `annonce_ibfk_3` FOREIGN KEY (`id_local`) REFERENCES `local` (`id_local`);

--
-- Contraintes pour la table `dispo`
--
ALTER TABLE `dispo`
  ADD CONSTRAINT `dispo_ibfk_1` FOREIGN KEY (`local`) REFERENCES `locaux_event` (`id_Local_event`);

--
-- Contraintes pour la table `local`
--
ALTER TABLE `local`
  ADD CONSTRAINT `local_ibfk_1` FOREIGN KEY (`prop`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `locaux_event`
--
ALTER TABLE `locaux_event`
  ADD CONSTRAINT `locaux_event_ibfk_1` FOREIGN KEY (`prop`) REFERENCES `user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
