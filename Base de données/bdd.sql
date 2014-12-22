-- phpMyAdmin SQL Dump
-- version 4.2.10
-- http://www.phpmyadmin.net
--
-- Client :  localhost:8889
-- Généré le :  Lun 22 Décembre 2014 à 01:39
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

--
-- Index pour les tables exportées
--

--
-- Index pour la table `Admin`
--
ALTER TABLE `Admin`
 ADD PRIMARY KEY (`AdminId`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `Admin`
--
ALTER TABLE `Admin`
MODIFY `AdminId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;