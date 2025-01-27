-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3307
-- Généré le : mar. 07 fév. 2023 à 13:33
-- Version du serveur : 10.3.35-MariaDB
-- Version de PHP : 8.1.7

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Base de données : `basecrud`
--
DROP DATABASE IF EXISTS `basecrud`;
CREATE DATABASE IF NOT EXISTS `basecrud` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `basecrud`;

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `articles` (
                                          `idarticles` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
                                          `art_title` varchar(200) NOT NULL,
                                          `art_text` text NOT NULL,
                                          `art_date` datetime DEFAULT current_timestamp(),
                                          `users_idusers` int(10) UNSIGNED DEFAULT NULL,
                                          PRIMARY KEY (`idarticles`),
                                          KEY `fk_articles_users1_idx` (`users_idusers`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`idarticles`, `art_title`, `art_text`, `art_date`, `users_idusers`) VALUES
                                                                                                (1, 'Insolite: quand Lionel Messi se fait surprendre par... sa maman', 'Lionel Messi était le centre du monde dimanche soir vers 18h50. L\'Argentine venait de décrocher son premier titre mondial depuis 1986 et Lionel Andrés Messi remportait le dernier trophée qui manquait à sa brillante carrière.\n\nLe natif de Rosario a paradé fièrement sur la pelouse, porté en triomphe par son ami Sergio Aguero, avec la Coupe du monde en main. \n\nMais après avoir reçu tant d\'attention de tant de personnes différentes, le nouveau champion du monde a d\'abord été surpris avant de reconnaître le visage de sa mère. Un large sourire apparaît alors sur le visage de Léo. Mère et fils tombent dans les bras l\'un de l\'autre pour un moment de communion intime. \n\n35 ans après l\'avoir mis au monde, Celia Maria Cuccittini peut être fière de son fiston. ', '2022-12-19 14:38:36', 3),
                                                                                                (2, 'Arrestation du mafieux le plus recherché d\'Italie, Matteo Messina Denaro, après 30 ans de cavale', 'Le mafieux le plus recherché d\'Italie, le Sicilien Matteo Messina Denaro, en cavale depuis 30 ans, a été arrêté à Palerme, en Sicile, ont indiqué lundi les médias italiens. Condamné à la réclusion à perpétuité pour des dizaines de meurtres, dont celui du petit Giuseppe Di Matteo, fils d\'un repenti mafieux, étranglé et dissous dans l\'acide après presque deux ans de séquestration.\r\n\r\nMatteo Messina Denaro est le dernier chef historique de la Cosa Nostra. Une arrestation qui survient presque 30 ans jour pour jour après l\'arrestation d\'un autre chef historique sanguinaire de la Mafia, Toto Riina. \r\n\r\n\"Aujourd\'hui, 16 janvier, les carabiniers (...) ont arrêté le fugitif Matteo Messina Denaro à l\'intérieur d\'une structure sanitaire à Palerme où il s\'était rendu pour suivre des thérapies cliniques\", a indiqué le général des carabiniers Pasquale Angelosanto à l\'agence AGI.', '2023-01-16 14:04:11', NULL),
                                                                                                (3, 'Australian Open  : Daniil Medvedev ne perd que trois jeux contre Marcos Giron', 'Le Russe Daniil Medvedev, 8e mondial, a lancé lundi son Open d\'Australie par une victoire expéditive 6-0, 6-1, 6-2 contre l\'Américain Marcos Giron (56e) sur le court Rod Laver, quitté dans le plus grand désarroi l\'an dernier à l\'issue de la finale perdue face à Rafael Nadal.\r\n\r\n\"Je suis très content de ce match. Marcos est un adversaire très difficile à jouer et le battre sur ce score en tournoi du Grand Chelem, ce n\'est pas rien\", a déclaré Medvedev après avoir aplati son adversaire en 1h36 avec ses grandes gifles en coup droit et au service (29 coups gagnants et 9 aces).\r\n\r\nSous le coup de la déception après sa seconde finale d\'affilée perdue à Melbourne, Medvedev avait affirmé l\'année dernière, de façon assez énigmatique, que \"le petit garçon avait cessé de rêver\". Lundi, c\'est lui qui n\'a pas laissé la moindre chance à son adversaire de rêver à une victoire.\r\n\r\n\"J\'ai de bons souvenirs de l\'année dernière, mais j\'en veux de meilleurs cette année\", a prévenu le Russe qui fêtera ses 27 ans le 11 février, moins de deux semaines après le dénouement du Majeur australien.\r\n\r\nAu prochain tour, le vainqueur de l\'US Open 2021, qui était devenu N.1 mondial pour la première fois en février 2022, affrontera le vétéran australien John Millman (140e, à 33 ans).', '2023-01-16 14:08:07', 1),
                                                                                                (4, 'Biopic Amy Winehouse : première image de Marisa Abela qui l\'incarne dans \"Back To Black\"', 'Voici la première image de l’actrice espagnole Marisa Abela dans la peau d’Amy Winehouse, chanteuse anglaise légendaire décédée en 2011 à l’âge de 27 ans d’une intoxication à l’alcool.\r\n\r\nChoucroute 60’s bien laquée, piercing au-dessus de la lèvre et tatouage apparent, voici Marisa Abela adoptant le look pin-up qu’arborait la chanteuse qu’elle incarne dans le biopic \"Back to Black\", Amy Winehouse.\r\n\r\nSur Instagram, l’actrice révélée dans la série \"Industry\" a posté une série de photos complétée d’une légende faisant référence au discours d’Amy lors des Grammy Awards 2008 : \"And for London. This is for London. Cause Camden Town ain’t burnin down.\" (\"Et pour Londres. C’est pour Londres. Parce que Camden Town ne brûle pas.\")', '2023-01-16 14:23:48', 2),
                                                                                                (5, 'coucou', 'coucou', '2023-01-19 11:09:54', NULL),
                                                                                                (6, 'Microsoft prévoit de licencier 10 000 personnes, soit près de 5 % de ses effectifs', 'Le grand groupe informatique américain a justifié sa décision par l’incertitude économique et les changements de priorités de ses clients. Microsoft avait déjà procédé à deux séries de licenciements, en juillet et en octobre 2022.\r\n\r\nMicrosoft va licencier 10 000 employés d’ici à la fin de mars, invoquant l’incertitude économique et les changements de priorités de ses clients. Une décision qui ébranle un peu plus le secteur de la tech, déjà touché par plusieurs plans sociaux d’ampleur. Le grand groupe informatique américain, qui se sépare ainsi d’un peu moins de 5 % de ses effectifs, prévoit aussi de modifier son portefeuille d’équipements informatiques et de réduire le nombre d’espaces de travail.\r\n\r\n« Ce sont le genre de choix difficiles que nous avons faits tout au long de nos quarante-sept ans d’existence pour rester une entreprise importante dans un secteur qui ne pardonne pas à ceux qui ne s’adaptent pas aux changements de plate-forme », a déclaré le patron de Microsoft, Satya Nadella, dans une lettre aux employés.\r\n\r\nCes mesures d’économies représenteront 1,2 milliard de dollars dans les comptes du deuxième trimestre décalé, que le groupe doit dévoiler le 24 janvier. Son chiffre d’affaires est attendu en progression de seulement 2,7 % sur un an, un rythme très faible pour le groupe informatique habitué à une croissance à deux chiffres.', '2023-01-19 11:10:32', 2),
                                                                                                (7, 'école', 'retyrtdu(yu', '2023-01-23 13:24:17', 3),
                                                                                                (8, 'L&#039;école 2', 'tryt(y rgthytyuy\r\n\r\ntruyhtyu\r\n\r\ntyuhtyu', '2023-02-06 13:25:20', 3),
                                                                                                (9, 'Sergueï Lavrov arrive au Mali au plus haut des relations entre Bamako et Moscou', 'Le ministre russe des Affaires étrangères Sergueï Lavrov doit rencontrer mardi le colonel Assimi Goïta, chef de la junte malienne, lors d\'une visite au Mali visant à \"impulser une nouvelle dynamique\" à la coopération grandissante entre Bamako et Moscou.\r\n\r\nLe ministre russe des Affaires étrangères Sergueï Lavrov est arrivé tôt mardi 7 février au Mali, en pleine idylle sécuritaire et politique entre Moscou et la junte au pouvoir à Bamako.\r\n\r\nSergueï Lavrov, qui se trouvait lundi en Irak, a été accueilli à sa descente d\'avion vers 1 h 30 (locales et GMT) par son homologue Abdoulaye Diop. Les deux hommes n\'ont pas fait de déclaration aux journalistes. Sergueï Lavrov sera reçu mardi par le chef de la junte, le colonel Assimi Goïta. Des discussions avec Abdoulaye Diop et une conférence de presse sont également programmées.\r\n\r\nLa visite de Sergueï Lavrov dans ce pays en proie à la violence jihadiste et à une profonde crise multidimensionnelle doit durer moins de 24 heures et concrétise le rapprochement opéré par les colonels maliens depuis 2021, en même temps qu\'ils rompaient l\'alliance militaire avec la France et ses partenaires.', '2023-02-07 13:30:35', 4);

-- --------------------------------------------------------

--
-- Structure de la table `articles_has_rubriques`
--

DROP TABLE IF EXISTS `articles_has_rubriques`;
CREATE TABLE IF NOT EXISTS `articles_has_rubriques` (
                                                        `articles_idarticles` int(10) UNSIGNED NOT NULL,
                                                        `rubriques_idrubriques` int(10) UNSIGNED NOT NULL,
                                                        PRIMARY KEY (`articles_idarticles`,`rubriques_idrubriques`),
                                                        KEY `fk_articles_has_rubriques_rubriques1_idx` (`rubriques_idrubriques`),
                                                        KEY `fk_articles_has_rubriques_articles_idx` (`articles_idarticles`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `articles_has_rubriques`
--

INSERT INTO `articles_has_rubriques` (`articles_idarticles`, `rubriques_idrubriques`) VALUES
                                                                                          (1, 4),
                                                                                          (1, 5),
                                                                                          (1, 6),
                                                                                          (2, 2),
                                                                                          (4, 2),
                                                                                          (4, 6),
                                                                                          (6, 1),
                                                                                          (6, 2),
                                                                                          (9, 2),
                                                                                          (9, 3);

-- --------------------------------------------------------

--
-- Structure de la table `rubriques`
--

DROP TABLE IF EXISTS `rubriques`;
CREATE TABLE IF NOT EXISTS `rubriques` (
                                           `idrubriques` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
                                           `rub_title` varchar(200) NOT NULL,
                                           `rub_text` varchar(800) DEFAULT NULL,
                                           PRIMARY KEY (`idrubriques`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `rubriques`
--

INSERT INTO `rubriques` (`idrubriques`, `rub_title`, `rub_text`) VALUES
                                                                     (1, 'Belgique', 'La Belgique est un pays de l\'Europe de l\'Ouest réputé pour ses villes médiévales, son architecture Renaissance et pour accueillir le siège de l\'Union européenne et de l\'OTAN. Le pays comprend des régions distinctes, notamment la Flandre néerlandophone au nord, la Wallonie francophone au sud et une communauté germanophone à l\'est. Bruxelles, la capitale bilingue, offre des maisons des corporations richement ornées sur la Grand-Place et d\'élégants bâtiments art nouveau.'),
                                                                     (2, 'Monde', 'Le Monde est un journal français fondé par Hubert Beuve-Méry en 1944. Se voulant journal « de référence », régulièrement considéré comme tel, y compris à l\'étranger, il est le quotidien national payant le plus lu en France et le plus diffusé.'),
                                                                     (3, 'Région', 'Territoire possédant des caractères particuliers qui lui donnent une unité.\r\nRégion naturelle.'),
                                                                     (4, 'Sport', 'Le sport, d\'usage récent ( XIX e siècle) dans la langue française, est un ensemble d\'exercices physiques se pratiquant sous forme de jeux individuels'),
                                                                     (5, 'Football', NULL),
                                                                     (6, 'People', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
                                       `idusers` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
                                       `user_login` varchar(80) NOT NULL,
                                       `user_pwd` varchar(255) NOT NULL,
                                       `user_name` varchar(180) NOT NULL,
                                       PRIMARY KEY (`idusers`),
                                       UNIQUE KEY `user_login_UNIQUE` (`user_login`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`idusers`, `user_login`, `user_pwd`, `user_name`) VALUES
                                                                           (1, 'Jaouad', 'Jaouad', 'Jaouad'),
                                                                           (2, 'Pierre', 'Pierre', 'Pierre'),
                                                                           (3, 'Fred', 'Fred', 'Fred'),
                                                                           (4, 'Mike', 'Mike', 'Michaël');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `articles`
--
ALTER TABLE `articles`
    ADD CONSTRAINT `fk_articles_users1` FOREIGN KEY (`users_idusers`) REFERENCES `users` (`idusers`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `articles_has_rubriques`
--
ALTER TABLE `articles_has_rubriques`
    ADD CONSTRAINT `fk_articles_has_rubriques_articles` FOREIGN KEY (`articles_idarticles`) REFERENCES `articles` (`idarticles`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    ADD CONSTRAINT `fk_articles_has_rubriques_rubriques1` FOREIGN KEY (`rubriques_idrubriques`) REFERENCES `rubriques` (`idrubriques`) ON DELETE NO ACTION ON UPDATE NO ACTION;
SET FOREIGN_KEY_CHECKS=1;
COMMIT;
