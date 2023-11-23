-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 17 juin 2022 à 23:17
-- Version du serveur :  10.4.17-MariaDB
-- Version de PHP : 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `pfe`
--

-- --------------------------------------------------------

--
-- Structure de la table `administrateur`
--

CREATE TABLE `administrateur` (
  `id_adm` int(10) NOT NULL,
  `nom_complet` varchar(60) NOT NULL,
  `email_adm` varchar(40) NOT NULL,
  `mdp_adm` varchar(15) NOT NULL,
  `nom_fil` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `administrateur`
--

INSERT INTO `administrateur` (`id_adm`, `nom_complet`, `email_adm`, `mdp_adm`, `nom_fil`) VALUES
(9, 'aya chebbab', 'aya@adm.com', 'aya', 'giia'),
(10, 'monir el ouarroudi', 'monir@gmail.com', 'monir', 'gtr'),
(11, 'najwa nemli', 'najwa@gmail.com', 'najwa', 'gat');

-- --------------------------------------------------------

--
-- Structure de la table `comment`
--

CREATE TABLE `comment` (
  `comment` varchar(255) NOT NULL,
  `id_commenter` int(11) NOT NULL,
  `id_document` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `comment`
--

INSERT INTO `comment` (`comment`, `id_commenter`, `id_document`) VALUES
('trés bien', 7, 90);

-- --------------------------------------------------------

--
-- Structure de la table `document`
--

CREATE TABLE `document` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `size` int(255) NOT NULL,
  `id_pfe` int(11) NOT NULL,
  `type_doc` int(5) NOT NULL,
  `n_flag` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `document`
--

INSERT INTO `document` (`id`, `name`, `size`, `id_pfe`, `type_doc`, `n_flag`) VALUES
(90, 'DL', 591259, 1, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `encadrant`
--

CREATE TABLE `encadrant` (
  `id_enc` int(10) NOT NULL,
  `nom_complet` varchar(60) NOT NULL,
  `email_enc` varchar(30) NOT NULL,
  `password` varchar(15) NOT NULL,
  `id_jury` int(11) NOT NULL,
  `nom_fil` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `encadrant`
--

INSERT INTO `encadrant` (`id_enc`, `nom_complet`, `email_enc`, `password`, `id_jury`, `nom_fil`) VALUES
(1, 'encadrant_giia1', 'encadrant_giia1@gmail.com', 'encadrant_giia1', 1, 'giia'),
(2, 'encadrant_giia2', 'encadrant_giia2@gmail.com', 'encadrant_giia2', 1, 'giia'),
(3, 'encadrant_giia3', 'encadrant_giia3@gmail.com', 'encadrant_giia3', 2, 'giia'),
(4, 'encadrant_giia4', 'encadrant_giia4@gmail.com', 'encadrant_giia4', 2, 'giia'),
(7, 'encadrant1', 'encadrant1@gmail.com', 'encadrant1', 3, 'giia'),
(8, 'encadrant2', 'encadrant2@gmail.com', 'encadrant2', 3, 'giia');

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

CREATE TABLE `etudiant` (
  `id_etu` int(10) NOT NULL,
  `nom_complet` varchar(60) NOT NULL,
  `email_etu` varchar(30) NOT NULL,
  `password` varchar(15) NOT NULL,
  `id_groupe` int(10) NOT NULL,
  `id_pfe` int(10) NOT NULL,
  `nom_filliere` varchar(25) NOT NULL,
  `annee` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `etudiant`
--

INSERT INTO `etudiant` (`id_etu`, `nom_complet`, `email_etu`, `password`, `id_groupe`, `id_pfe`, `nom_filliere`, `annee`) VALUES
(2, 'etudiant_giia2', 'etudiant_giia2@email.com', 'etudiant_giia2', 1, 1, 'giia', 2022),
(3, 'etudiant_giia3', 'etudiant_giia3@gmail.com', 'etudiant_giia3', 1, 1, 'giia', 2022),
(4, 'etudiant_giia4', 'etudiant_giia4@gmail.com', 'etudiant_giia4', 2, 2, 'giia', 2022),
(5, 'etudiant_giia5', 'etudiant_giia5@gmail.com', 'etudiant_giia5', 2, 2, 'giia', 2022),
(6, 'etudiant_giia6', 'etudiant_giia6@gmail.com', 'etudiant_giia6', 3, 3, 'giia', 2022),
(7, 'etudiant_gtr1', 'etudiant_gtr1@gmail.com', 'etudiant_gtr1', 0, 0, 'gtr', 2022),
(8, 'etudiant_gtr2', 'etudiant_gtr2@gmail.com', 'etudiant_gtr2', 0, 0, 'gtr', 2022),
(9, 'etudiant_gat1', 'etudiant_gat1@gmail.com', 'etudiant_gat1', 0, 0, 'gat', 2021),
(10, 'etudiant_gat2', 'etudiant_gat2@gmail.com', 'etudiant_gat2', 0, 0, 'gat', 2021),
(11, 'etudiant_giia7', 'etudiant_giia7@email.com', 'etudiant_giia7', 3, 3, 'giia', 2022);

-- --------------------------------------------------------

--
-- Structure de la table `inter_ex`
--

CREATE TABLE `inter_ex` (
  `id_ex` int(11) NOT NULL DEFAULT 0,
  `nom_complet` varchar(100) NOT NULL,
  `statut` varchar(100) NOT NULL,
  `nom_entr` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `year` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `inter_ex`
--

INSERT INTO `inter_ex` (`id_ex`, `nom_complet`, `statut`, `nom_entr`, `email`, `year`) VALUES
(1, 'inter1', 'statut1', 'entre1', 'inter1@gmail.com', 2021),
(3, 'intervenant2', 'statut2', 'entreprise2', 'intervenant2@gmail.com', 2022),
(4, 'intervenant3', 'statut3', 'entreprise3', 'intervenant3@gmail.com', 2022),
(5, 'jidj,did,d', 'jkv vn', 'jdikd,fd', 'ayachebbab13@gmail.com', 2022),
(6, 'intervenant externe  2', 'statut1', 'entreprise1', 'intervenant@gmail.com', 2022),
(7, 'intervenant3', 'jfkfofo', 'jkf,flfvl', 'ayachebbab13@gmail.com', 2022);

-- --------------------------------------------------------

--
-- Structure de la table `jury`
--

CREATE TABLE `jury` (
  `id_jury` int(11) NOT NULL DEFAULT 0,
  `mail_jury` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `jury`
--

INSERT INTO `jury` (`id_jury`, `mail_jury`, `password`) VALUES
(1, 'jury1@gmail.com', 'jury1'),
(2, 'jury2@gmail.com', 'jury2'),
(3, 'jury3@gmail.com', 'jury3');

-- --------------------------------------------------------

--
-- Structure de la table `pfes`
--

CREATE TABLE `pfes` (
  `id_pfe` int(10) NOT NULL,
  `suj_pfe` varchar(25) NOT NULL,
  `des_pfe` varchar(60) NOT NULL,
  `id_enc` int(10) NOT NULL DEFAULT 0,
  `annee` year(4) NOT NULL,
  `nom_fil` varchar(25) NOT NULL,
  `id_groupe` int(11) NOT NULL DEFAULT 0,
  `note_rapport` float NOT NULL DEFAULT 0,
  `date` date NOT NULL,
  `heure` time NOT NULL,
  `classe` char(11) DEFAULT '0',
  `id_proposeur` int(30) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `pfes`
--

INSERT INTO `pfes` (`id_pfe`, `suj_pfe`, `des_pfe`, `id_enc`, `annee`, `nom_fil`, `id_groupe`, `note_rapport`, `date`, `heure`, `classe`, `id_proposeur`) VALUES
(1, 'sujet1 giia', 'description', 7, 2022, 'giia', 1, 15, '2022-05-10', '00:09:00', '10', 0),
(2, 'sujet 2 giia', 'description2', 7, 2022, 'giia', 2, 0, '2022-06-08', '13:15:00', 'salle1', 0),
(3, 'sujet 8', 'descrrip', 7, 2022, 'giia', 3, 0, '0000-00-00', '00:00:00', '0', 0),
(24, 'sujet externe9', 'description&nbsp;9', 1, 2022, 'giia', 0, 0, '0000-00-00', '00:00:00', '0', 6),
(25, 'juxklcc', 'id,ddpo', 7, 2022, 'giia', 0, 0, '0000-00-00', '00:00:00', '0', 0),
(26, 'jifnvjfik', 'kckdndodk', 1, 2022, 'giia', 0, 0, '0000-00-00', '00:00:00', '0', 7);

-- --------------------------------------------------------

--
-- Structure de la table `suj_ex`
--

CREATE TABLE `suj_ex` (
  `id_suj` int(11) NOT NULL,
  `sujet` varchar(100) NOT NULL,
  `des_suj` varchar(250) NOT NULL,
  `annee` year(4) NOT NULL,
  `fil_suj` varchar(11) NOT NULL,
  `id_ex` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `administrateur`
--
ALTER TABLE `administrateur`
  ADD PRIMARY KEY (`id_adm`);

--
-- Index pour la table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id_commenter`,`id_document`),
  ADD KEY `foreign key` (`id_commenter`),
  ADD KEY `foreign key 2` (`id_document`);

--
-- Index pour la table `document`
--
ALTER TABLE `document`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `encadrant`
--
ALTER TABLE `encadrant`
  ADD PRIMARY KEY (`id_enc`);

--
-- Index pour la table `etudiant`
--
ALTER TABLE `etudiant`
  ADD PRIMARY KEY (`id_etu`),
  ADD KEY `id_pfe` (`id_pfe`);

--
-- Index pour la table `inter_ex`
--
ALTER TABLE `inter_ex`
  ADD PRIMARY KEY (`id_ex`);

--
-- Index pour la table `jury`
--
ALTER TABLE `jury`
  ADD PRIMARY KEY (`id_jury`);

--
-- Index pour la table `pfes`
--
ALTER TABLE `pfes`
  ADD PRIMARY KEY (`id_pfe`),
  ADD KEY `id_enc` (`id_enc`),
  ADD KEY `FOREIGN KEY` (`id_proposeur`);

--
-- Index pour la table `suj_ex`
--
ALTER TABLE `suj_ex`
  ADD PRIMARY KEY (`id_suj`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `administrateur`
--
ALTER TABLE `administrateur`
  MODIFY `id_adm` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `document`
--
ALTER TABLE `document`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT pour la table `encadrant`
--
ALTER TABLE `encadrant`
  MODIFY `id_enc` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `etudiant`
--
ALTER TABLE `etudiant`
  MODIFY `id_etu` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `pfes`
--
ALTER TABLE `pfes`
  MODIFY `id_pfe` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT pour la table `suj_ex`
--
ALTER TABLE `suj_ex`
  MODIFY `id_suj` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `FOREIGN KEY` FOREIGN KEY (`id_commenter`) REFERENCES `encadrant` (`id_enc`),
  ADD CONSTRAINT `FOREIGN KEY1` FOREIGN KEY (`id_document`) REFERENCES `document` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
