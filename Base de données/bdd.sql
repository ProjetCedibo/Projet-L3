-- phpMyAdmin SQL Dump
-- version 4.2.10
-- http://www.phpmyadmin.net
--
-- Client :  localhost:8889
-- Généré le :  Ven 26 Décembre 2014 à 02:21
-- Version du serveur :  5.5.38
-- Version de PHP :  5.5.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de données :  `UFR_SJEPG`
--

-- --------------------------------------------------------

--
-- Structure de la table `Admin`
--

CREATE TABLE `Admin` (
`AdminId` int(11) NOT NULL,
  `AdminPseudo` varchar(50) CHARACTER SET utf32 NOT NULL,
  `AdminPassWord` varchar(50) CHARACTER SET utf16 NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Admin`
--

INSERT INTO `Admin` (`AdminId`, `AdminPseudo`, `AdminPassWord`) VALUES
(1, 'Admin', '4e7afebcfbae000b22c7c85e5560f89a2a0280b4');

-- --------------------------------------------------------

--
-- Structure de la table `Connection`
--

CREATE TABLE `Connection` (
`ConnectionId` int(11) NOT NULL,
  `ConnectionDate` date DEFAULT NULL,
  `ConnectionHour` time DEFAULT NULL,
  `ConnectionUser` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Connection`
--

INSERT INTO `Connection` (`ConnectionId`, `ConnectionDate`, `ConnectionHour`, `ConnectionUser`) VALUES
(1, '2014-12-03', '11:12:13', 1);

-- --------------------------------------------------------

--
-- Structure de la table `User`
--

CREATE TABLE `User` (
`UserId` int(11) NOT NULL,
  `UserDevice` bigint(20) NOT NULL,
  `UserLogin` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `User`
--

INSERT INTO `User` (`UserId`, `UserDevice`, `UserLogin`) VALUES
(1, 32423523, 0);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `Admin`
--
ALTER TABLE `Admin`
 ADD PRIMARY KEY (`AdminId`);

--
-- Index pour la table `Connection`
--
ALTER TABLE `Connection`
 ADD PRIMARY KEY (`ConnectionId`);

--
-- Index pour la table `User`
--
ALTER TABLE `User`
 ADD PRIMARY KEY (`UserId`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `Admin`
--
ALTER TABLE `Admin`
MODIFY `AdminId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `Connection`
--
ALTER TABLE `Connection`
MODIFY `ConnectionId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `User`
--
ALTER TABLE `User`
MODIFY `UserId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;