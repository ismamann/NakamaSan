-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : dim. 08 mai 2022 à 17:40
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `nakamasan`
--

-- --------------------------------------------------------

--
-- Structure de la table `animes`
--

CREATE TABLE `animes` (
  `id` int(11) NOT NULL,
  `synopsis` text NOT NULL,
  `video` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `titre` varchar(255) NOT NULL,
  `note` decimal(3,2) NOT NULL DEFAULT -1.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `animes`
--

INSERT INTO `animes` (`id`, `synopsis`, `video`, `image`, `titre`, `note`) VALUES
(1, 'Dans un monde ravagé par des titans mangeurs d\'homme depuis plus d\'un siècle, les rares survivants de l\'Humanité n\'ont d\'autre choix pour survivre que de se barricader dans une cité-forteresse.', 'MGRm4IzK1SQ', 'https://fr.web.img6.acsta.net/pictures/20/12/28/10/24/5603983.jpg', 'L\'attaque des titans', '4.20'),
(2, 'Le groupe de Tanjirô a terminé son entraînement de récupération au domaine des papillons et embarque à présent en vue de sa prochaine mission à bord du train de l\'infini, d\'où quarante personnes ont disparu en peu de temps. Tanjirô et Nezuko, accompagnés de Zen\'itsu et Inosuke, s\'allient à l\'un des plus puissants épéistes de l\'armée des pourfendeurs de démons, le Pilier de la Flamme Kyôjurô Rengoku, afin de contrer le démon qui a engagé le train de l\'Infini sur une voie funeste.', 'sh-TMLKMf8M', 'https://fr.web.img6.acsta.net/pictures/19/09/18/13/46/0198270.jpg', 'Demon Slayer', '4.20'),
(6, 'Chaque année au Japon, on recense plus de 10 000 morts inexpliquées et portés disparus.\r\n\r\nDans la majorité des cas, ce sont les sentiments négatifs des êtres humains qui sont en cause. Souffrance, regrets, humiliation : leur accumulation dans un même endroit provoque des malédictions souvent fatales...\r\n\r\nC&#039;est ce que va découvrir à ses dépens Yuji Itadori, lycéen et membre du club de spiritisme. Il ne croit pas aux fantômes, mais sa force physique hors du commun est un précieux atout pour les missions du groupe... jusqu&#039;à ce que l&#039;une d&#039;elles tourne mal. La relique qu&#039;ils dénichent, le doigt sectionné d&#039;une créature millénaire, attire les monstres ! Le jeune homme n&#039;hésite pas une seconde : il avale la relique pour conjurer le mauvais sort !\r\n\r\nLe voilà possédé par Ryomen Sukuna, le célèbre démon à deux visages. Contre toute attente, Yuji réussit à reprendre le contrôle de son corps. C&#039;est du jamais vu ! Malgré tout, il est condamné à mort par l&#039;organisation des exorcistes... Une sentence qui ne pourra être repoussée qu&#039;à une seule condition : trouver et ingérer tous les doigts de Sukuna afin d&#039;éliminer la menace une fois pour toutes. Et pour ça, l&#039;adolescent va devoir s&#039;initier à l&#039;art occulte et mystérieux de l&#039;exorcisme !', 'eUTtCcHVVOA', 'https://fr.web.img3.acsta.net/pictures/20/09/14/10/31/4875617.jpg', 'Jujutsu Kaisen', '3.60'),
(7, 'Monkey D. Luffy rêve de retrouver ce trésor légendaire et de devenir le nouveau &quot;Roi des Pirates&quot;. Après avoir mangé un fruit du démon, il possède un pouvoir lui permettant de réaliser son rêve. Il lui faut maintenant trouver un équipage pour partir à l&#039;aventure !', 'HRaoYuRKBaA', 'https://image.animedigitalnetwork.fr/license/onepiece/tv/web/affiche_370x0.jpg', 'One Piece', '3.40'),
(8, 'En 2022, l&#039;humanité a réussi à créer une réalité virtuelle. Grâce à un casque, les humains peuvent se plonger entièrement dans le monde virtuel en étant comme déconnectés de la réalité, et Sword Art Online est le premier MMORPG a utiliser ce système.', '6ohYYtxfDCg', 'https://fr.web.img6.acsta.net/pictures/19/07/09/11/08/2827992.jpg', 'Sword Art Online', '4.20');

-- --------------------------------------------------------

--
-- Structure de la table `commentaires`
--

CREATE TABLE `commentaires` (
  `user_id` int(11) NOT NULL,
  `anime_id` int(11) NOT NULL,
  `avis` text NOT NULL,
  `note` tinyint(4) NOT NULL,
  `commentaire_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `commentaires`
--

INSERT INTO `commentaires` (`user_id`, `anime_id`, `avis`, `note`, `commentaire_id`) VALUES
(18, 1, 'Un anime cool, vous allez passer un très bon moment !', 4, 28),
(18, 2, 'Un anime cool, vous allez passer un très bon moment !', 4, 29),
(18, 6, 'Un anime cool, vous allez passer un très bon moment !', 4, 30),
(18, 7, 'Un anime cool, vous allez passer un très bon moment !', 4, 31),
(18, 8, 'Un anime cool, vous allez passer un très bon moment !', 4, 32),
(16, 1, 'Honnêtement, j&#039;ai pas trop accroché à l&#039;oeuvre.', 2, 33),
(16, 2, 'Honnêtement, j&#039;ai pas trop accroché à l&#039;oeuvre.', 2, 34),
(16, 6, 'Honnêtement, j&#039;ai pas trop accroché à l&#039;oeuvre.', 2, 35),
(16, 7, 'Honnêtement, j&#039;ai pas trop accroché à l&#039;oeuvre.', 1, 36),
(16, 8, 'Honnêtement, j&#039;ai pas trop accroché à l&#039;oeuvre.', 2, 37),
(19, 1, 'Anime vraiment bon, pour passer du très bon temps, je vous le recommande fortement !', 5, 38),
(19, 2, 'Anime vraiment bon, pour passer du très bon temps, je vous le recommande fortement !', 5, 39),
(19, 6, 'Anime vraiment bon, pour passer du très bon temps, je vous le recommande fortement !', 5, 40),
(19, 7, 'Anime vraiment bon, pour passer du très bon temps, je vous le recommande fortement !', 5, 41),
(19, 8, 'Anime vraiment bon, pour passer du très bon temps, je vous le recommande fortement !', 5, 42),
(20, 1, 'Animé incroyable ! Animation de qualité !', 5, 43),
(20, 2, 'Animé incroyable ! Animation de qualité !', 5, 44),
(20, 6, 'J&#039;ai pas trop accroché', 2, 45),
(20, 7, 'L&#039;anime est assez long mais ça commence très bien !', 4, 46),
(20, 8, 'Un anime original qui fait rêver !', 5, 47),
(17, 1, 'Histoire beaucoup trop bien développée, l&#039;auteur et les animateurs sont très forts !', 5, 48),
(17, 2, 'Cet anime a juste l&#039;une des meilleures animations, tout confondu !', 5, 49),
(17, 6, 'Un anime new gen cool, animation très bonne', 5, 50),
(17, 7, 'J&#039;ai bien aimé étant enfant, mais maintenant, cela m&#039;attire moins', 3, 51),
(17, 8, 'Un animé original, qui parle d&#039;une technologie qui pourrait devenir réalité, c&#039;est ce qui fait rêver !', 5, 52);

-- --------------------------------------------------------

--
-- Structure de la table `commentaires_mangas`
--

CREATE TABLE `commentaires_mangas` (
  `user_id` int(11) NOT NULL,
  `manga_id` int(11) NOT NULL,
  `avis` text NOT NULL,
  `note` tinyint(4) NOT NULL,
  `commentaire_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `commentaires_mangas`
--

INSERT INTO `commentaires_mangas` (`user_id`, `manga_id`, `avis`, `note`, `commentaire_id`) VALUES
(18, 6, 'Manga qui pourrait plaire à un grand nombre de personnes !', 4, 5),
(18, 1, 'Manga qui pourrait plaire à un grand nombre de personnes !', 4, 6),
(18, 3, 'Manga qui pourrait plaire à un grand nombre de personnes !', 4, 7),
(18, 4, 'Manga qui pourrait plaire à un grand nombre de personnes !', 4, 8),
(18, 5, 'Manga qui pourrait plaire à un grand nombre de personnes !', 4, 9),
(16, 1, 'J&#039;ai pas trop aimé ni accroché à ce manga.', 2, 10),
(16, 3, 'J&#039;ai pas trop aimé ni accroché à ce manga.', 1, 11),
(16, 4, 'J&#039;ai pas trop aimé ni accroché à ce manga.', 1, 12),
(16, 5, 'J&#039;ai pas trop aimé ni accroché à ce manga.', 2, 13),
(16, 6, 'J&#039;ai pas trop aimé ni accroché à ce manga.', 2, 14),
(19, 1, 'Il est vraiment pas mal ce manga, j&#039;apprécie l&#039;univers', 4, 15),
(19, 3, 'Il est vraiment pas mal ce manga, j&#039;apprécie l&#039;univers', 4, 16),
(19, 4, 'Il est vraiment pas mal ce manga, j&#039;apprécie l&#039;univers', 4, 17),
(19, 5, 'Il est vraiment pas mal ce manga, j&#039;apprécie l&#039;univers', 4, 18),
(19, 6, 'Il est vraiment pas mal ce manga, j&#039;apprécie l&#039;univers', 4, 19),
(20, 1, 'J&#039;ai bien aimé la lecture de ce manga, je recommande pour certain !', 4, 20),
(20, 3, 'J&#039;ai bien aimé la lecture de ce manga, je recommande pour certain !', 4, 21),
(20, 4, 'J&#039;ai bien aimé la lecture de ce manga, je recommande pour certain !', 4, 22),
(20, 5, 'J&#039;ai bien aimé la lecture de ce manga, je recommande pour certain !', 4, 23),
(20, 6, 'J&#039;ai bien aimé la lecture de ce manga, je recommande pour certain !', 4, 24),
(17, 1, 'J&#039;ai pas trop accroché à la lecture de ce manga.', 2, 25),
(17, 3, 'J&#039;ai bien aimé cet univers fantastique, retour à l&#039;enfance', 4, 26),
(17, 4, 'J&#039;ai pas trop accroché à la lecture de ce manga.', 2, 27),
(17, 5, 'J&#039;ai pas trop accroché à la lecture de ce manga.', 2, 28),
(17, 6, 'J&#039;ai bien kiffé le scénario !', 4, 29);

-- --------------------------------------------------------

--
-- Structure de la table `mangas`
--

CREATE TABLE `mangas` (
  `id` int(11) NOT NULL,
  `synopsis` text NOT NULL,
  `titre` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `note` decimal(3,2) NOT NULL DEFAULT -1.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `mangas`
--

INSERT INTO `mangas` (`id`, `synopsis`, `titre`, `image`, `note`) VALUES
(1, 'Adolescent de quinze ans, Ichigo Kurosaki possède un don particulier : celui de voir les esprits. Un jour, il croise la route d\'une belle shinigami (un être spirituel) en train de pourchasser une “âme perdue”, un esprit maléfique qui hante notre monde et n\'arrive pas à trouver le repos.', 'Bleach', 'data:image/jpeg;base64,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', '3.50'),
(3, 'Depuis la disparition de tous les dragons le 7 juillet 777, c’est la première fois qu’un dragon refait son apparition au vu de tous (excepté lors de l’arc Daphné exclusif à l’anime).\r\n\r\nQuant à la biostasie des membres de Fairy Tail, elle a été causée par l’attaque de l’île Tenrô par le dragon Acnologia. Son attaque est assez puissante pour détruire l’intégralité de l’île ainsi que tous les membres de Fairy Tail présents sur place. Pour protéger l’île et les membres de l’attaque, Mavis Vermillion, premier maître de Fairy Tail, a lancé un des trois sorts légendaires de la guilde, Fairy Sphere, pour créer un bouclier protecteur autour de l’île. Malgré la disparition de l’île, l’utilisation de ce sort a plongé l’île et ses occupants dans un sommeil prolongé de sept ans sans subir la vieillesse, tandis que les autres membres de la guilde et le reste de la population ont continué de vivre normalement.', 'Fairy Tail', 'https://fr.web.img5.acsta.net/pictures/19/07/16/17/41/1894644.jpg', '3.40'),
(4, 'Izuku Midoriya, fanboy de super-héros, est né sans don. Après une rencontre fortuite avec le plus grand super-héros du monde, All Might, il jure de travailler aussi dur que possible pour devenir un symbole de paix et une lueur d&#039;espoir pour le monde.', 'My Hero Academia', 'https://fr.web.img5.acsta.net/pictures/21/02/16/12/45/5319199.jpg', '3.00'),
(5, 'Saitama est un jeune homme sans emploi et sans réelle perspective d&#039;avenir, jusqu&#039;au jour où il décide de prendre sa vie en main. Son nouvel objectif : devenir un super-héros. Il s&#039;entraîne alors sans relâche pendant trois ans et devient si puissant qu&#039;il est capable d&#039;éliminer ses adversaires d&#039;un seul coup de poing.', 'One Punch', 'https://fr.web.img4.acsta.net/c_310_420/pictures/17/02/27/17/41/046707.jpg', '3.20'),
(6, 'Emma, Norman et Ray coulent des jours heureux à l&#039;orphelinat Grace Field House. Entourés de leurs petits frères et soeurs, ils s&#039;épanouissent sous l&#039;attention pleine de tendresse de « Maman », qu&#039;ils considèrent comme leur véritable mère.', 'The Promised Neverland', 'https://fr.web.img4.acsta.net/pictures/20/02/26/09/12/3483516.jpg', '3.60');

-- --------------------------------------------------------

--
-- Structure de la table `signalements`
--

CREATE TABLE `signalements` (
  `user_id` int(11) NOT NULL,
  `commentaire_id` int(11) NOT NULL,
  `motif` text NOT NULL,
  `commentaire` text NOT NULL,
  `signalement_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `signalements`
--

INSERT INTO `signalements` (`user_id`, `commentaire_id`, `motif`, `commentaire`, `signalement_id`) VALUES
(16, 35, 'Autre', 'Honnêtement, j&#039;ai pas trop accroché à l&#039;oeuvre.', 13),
(17, 49, 'Commentaire à but commercial', 'Cet anime a juste l&#039;une des meilleures animations, tout confondu !', 14);

-- --------------------------------------------------------

--
-- Structure de la table `signalements_mangas`
--

CREATE TABLE `signalements_mangas` (
  `user_id` int(11) NOT NULL,
  `commentaire_id` int(11) NOT NULL,
  `motif` text NOT NULL,
  `commentaire` text NOT NULL,
  `signalement_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `signalements_mangas`
--

INSERT INTO `signalements_mangas` (`user_id`, `commentaire_id`, `motif`, `commentaire`, `signalement_id`) VALUES
(18, 8, 'Autre', 'Manga qui pourrait plaire à un grand nombre de personnes !', 3);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pseudo` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `admin` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `email`, `pseudo`, `password`, `admin`) VALUES
(16, 'alfistoo@gmail.com', 'alfistoo', '$2y$12$3GaAn7K3Hh0tMn6xd7A7TuPktIVMGpQe48svDfsG6.pwdVF/.AG7q', 1),
(17, 'badouuu@gmail.com', 'badouuu93', '$2y$12$GnVNC2ufFj9NEaZXP/tHhu8aJ.g.O2L5OSbbIhkcctgzkRyOcOuYe', 0),
(18, 'superuser@gmail.com', 'SuperUser', '$2y$12$eSMMMognxISi9cEABWAvFOQhQzq9WE7XGqRZVyxBllV4dhub8FYcm', 2),
(19, 'jeremito@gmail.com', 'jeremito', '$2y$12$o7iF361V35osePuziFV9huz18bFI1QvikvIySrHV4QzvUYCbYLa6O', 0),
(20, 'ismasmous@gmail.com', 'ismasmous', '$2y$12$7G0TK0yXzpK1Cog/Burnk.jsw35GSm0tnWKZS2wtOKI8.9YF6znWW', 0);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `animes`
--
ALTER TABLE `animes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `commentaires`
--
ALTER TABLE `commentaires`
  ADD PRIMARY KEY (`commentaire_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `anime_id` (`anime_id`);

--
-- Index pour la table `commentaires_mangas`
--
ALTER TABLE `commentaires_mangas`
  ADD PRIMARY KEY (`commentaire_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `manga_id` (`manga_id`);

--
-- Index pour la table `mangas`
--
ALTER TABLE `mangas`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `signalements`
--
ALTER TABLE `signalements`
  ADD PRIMARY KEY (`signalement_id`),
  ADD UNIQUE KEY `commentaire_id` (`commentaire_id`) USING BTREE,
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `signalements_mangas`
--
ALTER TABLE `signalements_mangas`
  ADD PRIMARY KEY (`signalement_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `commentaire_id` (`commentaire_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `pseudo` (`pseudo`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `animes`
--
ALTER TABLE `animes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `commentaires`
--
ALTER TABLE `commentaires`
  MODIFY `commentaire_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT pour la table `commentaires_mangas`
--
ALTER TABLE `commentaires_mangas`
  MODIFY `commentaire_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT pour la table `mangas`
--
ALTER TABLE `mangas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `signalements`
--
ALTER TABLE `signalements`
  MODIFY `signalement_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `signalements_mangas`
--
ALTER TABLE `signalements_mangas`
  MODIFY `signalement_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `commentaires`
--
ALTER TABLE `commentaires`
  ADD CONSTRAINT `commentaires_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `commentaires_ibfk_2` FOREIGN KEY (`anime_id`) REFERENCES `animes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `commentaires_mangas`
--
ALTER TABLE `commentaires_mangas`
  ADD CONSTRAINT `commentaires_mangas_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `commentaires_mangas_ibfk_2` FOREIGN KEY (`manga_id`) REFERENCES `mangas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `signalements`
--
ALTER TABLE `signalements`
  ADD CONSTRAINT `signalements_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `signalements_ibfk_2` FOREIGN KEY (`commentaire_id`) REFERENCES `commentaires` (`commentaire_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `signalements_mangas`
--
ALTER TABLE `signalements_mangas`
  ADD CONSTRAINT `signalements_mangas_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `signalements_mangas_ibfk_2` FOREIGN KEY (`commentaire_id`) REFERENCES `commentaires_mangas` (`commentaire_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
