-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 13, 2018 at 04:19 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `medina`
--
CREATE DATABASE IF NOT EXISTS `medina` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `medina`;

-- --------------------------------------------------------

--
-- Table structure for table `categorie`
--

CREATE TABLE `categorie` (
  `id_categorie` int(11) NOT NULL,
  `nom` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `commande`
--

CREATE TABLE `commande` (
  `id_commande` int(11) NOT NULL,
  `datec` date NOT NULL,
  `prix` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `commentaire`
--

CREATE TABLE `commentaire` (
  `id` int(11) NOT NULL,
  `contenu` varchar(50) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dispo`
--

CREATE TABLE `dispo` (
  `id_dispo` int(11) NOT NULL,
  `date` date NOT NULL,
  `local` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `event`
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
-- Dumping data for table `event`
--

INSERT INTO `event` (`id_event`, `nom`, `date`, `description`, `image`, `lieu`, `prix`, `owner`) VALUES
(1, 'a', '2018-01-04', 'des', 'image', 'lieu', 'prix', 1),
(2, 'aaaa', '2018-01-04', 'aaaaa', 'image', 'lieu', 'prix', 1),
(5, 'a', '2018-01-04', 'des', 'image', 'lieu', 'prix', 1),
(10, 'a', '2018-01-04', 'des', 'image', 'lieu', 'prix', 1),
(11, 'chaima', '2018-01-04', 'des', 'image', 'lieu', 'prix', 1);

-- --------------------------------------------------------

--
-- Table structure for table `local`
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
-- Dumping data for table `local`
--

INSERT INTO `local` (`id_local`, `description`, `nom_local`, `prix`, `superficie`, `localisation`, `imgl1`, `type`, `prop`) VALUES
(5, '04745', 'fares', 12, 12, 'pwd', 'fe', 1, 0),
(6, '04745', 'fares', 12, 12, 'pwd', 'fe', 1, 0),
(7, 'des', 'nom_local', 10, 10, 'localisation', 'imgl1', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `locaux_event`
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
-- Table structure for table `produit`
--

CREATE TABLE `produit` (
  `ref` int(11) NOT NULL,
  `nomP` varchar(10) NOT NULL,
  `prix` float NOT NULL,
  `img` varchar(255) NOT NULL,
  `quantit` int(11) DEFAULT NULL,
  `descrip` varchar(255) DEFAULT NULL,
  `nomV` varchar(20) NOT NULL,
  `dateAjout` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reclamation`
--

CREATE TABLE `reclamation` (
  `id` int(11) NOT NULL,
  `reclameur` varchar(20) NOT NULL,
  `reclamee` varchar(20) NOT NULL,
  `nbrreclam` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reclamation`
--

INSERT INTO `reclamation` (`id`, `reclameur`, `reclamee`, `nbrreclam`, `date`) VALUES
(1, 'reclameur', 'reclamee', 2, '2018-03-07');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
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
-- Table structure for table `sous_categorie`
--

CREATE TABLE `sous_categorie` (
  `id_sous` int(11) NOT NULL,
  `nom_sous` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
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
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `cin`, `nom`, `prenom`, `email`, `pwd`, `dateN`, `numTel`, `userName`, `image`, `adress`, `role`) VALUES
(8, 12345678, 'aaa', 'ff', 'ffff', 'fv', '2018-01-05', 2, 'vv', 'vvv', 'vv', 2),
(9, 12345678, 'aaa', 'ff', 'ffff', 'fv', '2018-01-05', 2, 'vv', 'vvv', 'vv', 2),
(10, 4745, 'fares', 'mag', 'fares@luf', 'pwd', '2019-01-05', 25252525, 'username', 'image', 'adresse', 1),
(11, 4745, 'fares', 'mag', 'fares@luf', 'pwd', '2019-01-05', 25252525, 'username', 'image', 'adresse', 1),
(12, 4745, 'fares', 'mag', 'fares@luf', 'pwd', '2019-01-05', 25252525, 'username', 'image', 'adresse', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id_categorie`);

--
-- Indexes for table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`id_commande`);

--
-- Indexes for table `commentaire`
--
ALTER TABLE `commentaire`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dispo`
--
ALTER TABLE `dispo`
  ADD PRIMARY KEY (`id_dispo`),
  ADD KEY `local` (`local`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id_event`),
  ADD KEY `owner` (`owner`);

--
-- Indexes for table `local`
--
ALTER TABLE `local`
  ADD PRIMARY KEY (`id_local`),
  ADD KEY `prop` (`prop`),
  ADD KEY `prop_2` (`prop`),
  ADD KEY `prop_3` (`prop`),
  ADD KEY `prop_4` (`prop`);

--
-- Indexes for table `locaux_event`
--
ALTER TABLE `locaux_event`
  ADD PRIMARY KEY (`id_Local_event`);

--
-- Indexes for table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`ref`);

--
-- Indexes for table `reclamation`
--
ALTER TABLE `reclamation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id_reservation`);

--
-- Indexes for table `sous_categorie`
--
ALTER TABLE `sous_categorie`
  ADD PRIMARY KEY (`id_sous`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id_categorie` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `commande`
--
ALTER TABLE `commande`
  MODIFY `id_commande` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `commentaire`
--
ALTER TABLE `commentaire`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dispo`
--
ALTER TABLE `dispo`
  MODIFY `id_dispo` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id_event` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `local`
--
ALTER TABLE `local`
  MODIFY `id_local` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `locaux_event`
--
ALTER TABLE `locaux_event`
  MODIFY `id_Local_event` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `produit`
--
ALTER TABLE `produit`
  MODIFY `ref` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sous_categorie`
--
ALTER TABLE `sous_categorie`
  MODIFY `id_sous` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `dispo`
--
ALTER TABLE `dispo`
  ADD CONSTRAINT `dispo_ibfk_1` FOREIGN KEY (`id_dispo`) REFERENCES `local` (`id_local`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
