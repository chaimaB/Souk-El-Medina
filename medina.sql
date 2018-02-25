-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Dim 25 Février 2018 à 22:03
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
  `datec` date NOT NULL,
  `prix` float NOT NULL
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
  `date` date NOT NULL,
  `local` int(11) NOT NULL
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
  `image` varchar(255) NOT NULL,
  `lieu` varchar(50) NOT NULL,
  `prix` varchar(10) NOT NULL,
  `owner` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `event`
--

INSERT INTO `event` (`id_event`, `nom`, `date`, `description`, `image`, `lieu`, `prix`, `owner`) VALUES
(34, 'narimenN', '2018-02-14', 'blabla', 'sticker5.jpg', 'dar', '1dt', 0),
(35, 'medina', '2018-03-05', 'hhhhh', 'foire-salon-artisanat-milan-tunisie.jpg', 'medina', '12dt', 17),
(36, 'medina1', '2018-03-05', 'hhhhhhhhhh', '1.PNG', 'medina2', '12dt', 18),
(37, 'medina3', '2018-03-05', 'hhhhhhhhhh', '7620040c5ef46295f990d5706e99b364--vintage-backgrounds-background-designs.jpg', 'medina3', '12dt', 20),
(38, 'event', '2018-03-09', 'evenement', 'sticker2.jpg', 'dar', '15dt', 17),
(39, 'eve', '2018-02-02', 'gfe', '11118382_826768697358144_8922210270999519973_n.jpg', 'eee', '12', 8);

-- --------------------------------------------------------

--
-- Structure de la table `local`
--

CREATE TABLE `local` (
  `id_local` int(11) NOT NULL,
  `description` varchar(50) NOT NULL,
  `nom_local` varchar(10) NOT NULL,
  `prix` float NOT NULL,
  `superficie` float NOT NULL,
  `localisation` varchar(20) NOT NULL,
  `imgl1` varchar(10) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `prop` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `local`
--

INSERT INTO `local` (`id_local`, `description`, `nom_local`, `prix`, `superficie`, `localisation`, `imgl1`, `type`, `prop`) VALUES
(5, '04745', 'fares', 12, 12, 'pwd', 'fe', 1, 0),
(6, '04745', 'fares', 12, 12, 'pwd', 'fe', 1, 0),
(7, 'des', 'nom_local', 10, 10, 'localisation', 'imgl1', 0, 0);

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
  `imgl1` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `ref` int(11) NOT NULL,
  `nomP` varchar(10) NOT NULL,
  `prix` float NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `quantit` int(11) NOT NULL DEFAULT '1',
  `descrip` varchar(255) NOT NULL,
  `nomV` varchar(20) DEFAULT NULL,
  `dateAjout` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `produit`
--

INSERT INTO `produit` (`ref`, `nomP`, `prix`, `img`, `quantit`, `descrip`, `nomV`, `dateAjout`) VALUES
(1, 'azerty', 14, NULL, 7, 'azertyui', NULL, NULL),
(2, 'testtest', 12, NULL, 11, 'dfghbnjk', NULL, '1970-01-01'),
(3, 'aaaaaa', 1, NULL, 7, 'dcfvghbj', NULL, '1970-01-01'),
(4, 'aaaaaa', 1, NULL, 7, 'dcfvghbj', NULL, '1970-01-01'),
(5, 'loool', 15, NULL, 11, 'here w we', NULL, '1970-01-01');

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
  `cin` varchar(8) NOT NULL,
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
(8, '12345678', 'aaa', 'ff', 'ffff', 'fv', '2018-01-05', 2, 'vv', 'vvv', 'vv', 2),
(9, '12345678', 'aaa', 'ff', 'ffff', 'fv', '2018-01-05', 2, 'vv', 'vvv', 'vv', 2),
(10, '4745', 'fares', 'mag', 'fares@luf', 'pwd', '2019-01-05', 25252525, 'username', 'image', 'adresse', 1),
(11, '4745', 'fares', 'mag', 'fares@luf', 'pwd', '2019-01-05', 25252525, 'username', 'image', 'adresse', 1),
(12, '4745', 'fares', 'mag', 'fares@luf', 'pwd', '2019-01-05', 25252525, 'username', 'image', 'adresse', 1),
(13, '12345678', 'test', 'test', 'test', 'test', '1970-01-01', 12345678, 'test', 'test', 'test', 1),
(14, '12345678', 'tyuhij', 'ftgh', 'ftgyhjk', 'dfghj', '2018-02-08', 4563, 'dfgh', 'sdfghjk', 'dfghj', 2),
(15, '1', 'test2', 'test2', 'test2', 'test2', '2018-02-27', 1, 'test2', 'test2', 'test2', 1),
(16, '1536486', 'test4', 'test4', 'test4', 'test4', '2018-02-06', 123465, 'test4', 'test4', 'test4', 1),
(17, '1', 'aaaaaa', 'aaa', 'aaa', 'aa', '2018-02-07', 1, 'aaa', 'aaa', 'aaaa', 1);

--
-- Index pour les tables exportées
--

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
  ADD PRIMARY KEY (`id_Local_event`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`ref`);

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
  MODIFY `id_event` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT pour la table `local`
--
ALTER TABLE `local`
  MODIFY `id_local` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `locaux_event`
--
ALTER TABLE `locaux_event`
  MODIFY `id_Local_event` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `produit`
--
ALTER TABLE `produit`
  MODIFY `ref` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `sous_categorie`
--
ALTER TABLE `sous_categorie`
  MODIFY `id_sous` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `dispo`
--
ALTER TABLE `dispo`
  ADD CONSTRAINT `dispo_ibfk_1` FOREIGN KEY (`id_dispo`) REFERENCES `local` (`id_local`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
