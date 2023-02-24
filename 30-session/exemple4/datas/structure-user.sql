-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3307
-- Généré le : ven. 24 fév. 2023 à 11:43
-- Version du serveur : 10.10.2-MariaDB
-- Version de PHP : 8.2.0

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Base de données : `exe4session`
--
DROP DATABASE IF EXISTS `exe4session`;
CREATE DATABASE IF NOT EXISTS `exe4session` DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci;
USE `exe4session`;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
                                      `iduser` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
                                      `username` varchar(16) NOT NULL,
                                      `email` varchar(255) DEFAULT NULL,
                                      `password` varchar(255) NOT NULL,
                                      `create_time` timestamp NULL DEFAULT current_timestamp(),
                                      `uniqid` varchar(64) NOT NULL,
                                      `actif` tinyint(3) UNSIGNED DEFAULT 0,
                                      PRIMARY KEY (`iduser`),
                                      UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`iduser`, `username`, `email`, `password`, `create_time`, `uniqid`, `actif`) VALUES
                                                                                                     (1, 'Mike', 'michael@cf2m.be', '$2y$10$Ci/budSnG6e9XGx/dVPsMujtl.dMVsJo8Sm1RMcJh4pVqNEDAZbDO', '2023-02-24 11:36:16', 'cf63f8a0c05c1250.08872603', 1),
                                                                                                     (2, 'Andre', 'andre@cf2m.be', '$2y$10$e5z7yzTYfsynL8H3p5/Y0.KIOpXpvlCYuU0fuwLPi0JV/K2zxcyCW', '2023-02-24 11:43:17', 'cf63f8a14f5f4767.06543540', 1);
SET FOREIGN_KEY_CHECKS=1;
COMMIT;
