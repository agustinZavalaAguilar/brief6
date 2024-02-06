-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 06 fév. 2024 à 11:48
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `favoris`
--
CREATE DATABASE IF NOT EXISTS `favoris` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `favoris`;

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `id_categorie` int(11) NOT NULL,
  `nom_cat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`id_categorie`, `nom_cat`) VALUES
(1, 'e-learning'),
(2, 'HTML'),
(3, 'CSS'),
(4, 'Maquette'),
(5, 'Site/blog'),
(6, 'e-project'),
(7, 'Cheatsheet'),
(8, 'Bootstrap'),
(9, 'Support-pdf'),
(10, 'Ressources/aides'),
(11, 'Javascript'),
(12, 'Wordpress'),
(13, 'Outil'),
(14, 'Video'),
(15, 'API');

-- --------------------------------------------------------

--
-- Structure de la table `cat_fav`
--

CREATE TABLE `cat_fav` (
  `id_favori` int(11) NOT NULL,
  `id_categorie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `cat_fav`
--

INSERT INTO `cat_fav` (`id_favori`, `id_categorie`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(2, 2),
(2, 3),
(2, 5),
(3, 2),
(3, 3),
(3, 5),
(4, 2),
(4, 3),
(4, 5),
(4, 6),
(5, 5),
(6, 1),
(6, 2),
(6, 3),
(7, 2),
(7, 7),
(8, 3),
(8, 7),
(9, 5),
(9, 8),
(10, 1),
(10, 8),
(11, 7),
(11, 8),
(12, 9),
(12, 11),
(13, 1),
(13, 11),
(14, 5),
(14, 11),
(15, 5),
(15, 11),
(16, 5),
(16, 11),
(17, 7),
(17, 11),
(18, 1),
(18, 11),
(19, 1),
(19, 11),
(20, 10),
(20, 12),
(21, 6),
(21, 10),
(21, 12),
(22, 10),
(22, 12),
(23, 10),
(23, 12),
(78, 1),
(79, 1);

-- --------------------------------------------------------

--
-- Structure de la table `domaine`
--

CREATE TABLE `domaine` (
  `id_domaine` int(11) NOT NULL,
  `nom_domaine` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `domaine`
--

INSERT INTO `domaine` (`id_domaine`, `nom_domaine`) VALUES
(1, 'Maquettage/Figma'),
(2, 'HTML_CSS'),
(3, 'Javascript'),
(4, 'Wordpress'),
(5, 'API'),
(6, 'Bootstrap');

-- --------------------------------------------------------

--
-- Structure de la table `favoris`
--

CREATE TABLE `favoris` (
  `id_favori` int(11) NOT NULL,
  `libelle` varchar(200) NOT NULL,
  `date_creation` date NOT NULL,
  `url` varchar(1000) NOT NULL,
  `id_domaine` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `favoris`
--

INSERT INTO `favoris` (`id_favori`, `libelle`, `date_creation`, `url`, `id_domaine`) VALUES
(1, 'OpenClassRoom Maquette figma', '2024-01-17', 'https://openclassrooms.com/fr/courses/8242681-integrez-une-maquette-figma-en-html-css', 1),
(2, 'MSDN Début', '2024-01-17', '', 2),
(3, 'MSDN Première étape CSS', '2024-01-18', 'https://developer.mozilla.org/fr/docs/Learn/CSS/First_steps', 2),
(4, 'Introduction HTML eprojet', '2024-01-19', 'https://www.eprojet.fr/cours/html_css/01-html_css-introduction-html-css', 2),
(5, 'W3Shool intro', '2024-01-20', 'https://www.w3schools.com/html/html_intro.asp', 2),
(6, 'OpenClassRoom Créer son site WEB', '2024-01-20', 'https://openclassrooms.com/fr/courses/1603881-creez-votre-site-web-avec-html5-et-css3', 2),
(7, 'htmlcheatsheet HTML', '2024-01-22', 'https://htmlcheatsheet.com', 2),
(8, 'htmlcheatsheet CSS', '2024-01-21', 'https://htmlcheatsheet.com/css/', 2),
(9, 'Bootstrap introduction', '2024-01-24', 'https://getbootstrap.com/docs/5.3/getting-started/introduction/', 3),
(10, 'OpenClassRoom Bootstrap', '2024-01-25', 'https://openclassrooms.com/fr/courses/7542506-creez-des-sites-web-responsives-avec-bootstrap-5', 3),
(11, 'Bootstrap Cheatsheet', '2024-01-26', 'https://getbootstrap.com/docs/5.0/examples/cheatsheet/', 3),
(12, 'Support Javascript Initiation', '2024-01-27', 'https://drive.google.com/file/d/1zzIx9aD4pfkR1nn2UATRo8qRs6MZbxW4/view?usp=drive_link', 4),
(13, 'OpenClassRoom Javascript', '2024-01-28', 'https://openclassrooms.com/fr/courses/7696886-apprenez-a-programmer-avec-javascript?archived-source=6175841 ', 4),
(14, 'MSDN Introduction Javascript', '2024-01-29', 'https://developer.mozilla.org/fr/docs/Web/JavaScript ', 4),
(15, 'MSDN Première étape Javascript', '2024-01-30', 'https://developer.mozilla.org/fr/docs/Learn/JavaScript/First_steps', 4),
(16, 'MSDN Les bases en Javascript', '2024-01-30', 'https://developer.mozilla.org/fr/docs/Learn/Getting_started_with_the_web/JavaScript_basics ', 4),
(17, 'htmlcheatsheet Javascript', '2024-02-01', 'https://htmlcheatsheet.com/js/', 4),
(18, 'OpenClassRoom Apprenez à développer avec JS', '2024-02-01', 'https://openclassrooms.com/fr/courses/7696886-apprenez-a-programmer-avec-javascript', 4),
(19, 'Cours complet JS Pierre-Giraud', '2024-02-03', 'ttps://www.pierre-giraud.com/javascript-apprendre-coder-cours/', 4),
(20, 'CODEX Démarrer avec WordPress', '2024-02-04', 'https://codex.wordpress.org/fr:Demarrer_avec_WordPress', 5),
(21, 'Eprojet Installer WordPress', '2024-02-05', 'https://www.eprojet.fr/cours/wordpress/01-wordpress-installation-et-configuration-de-wordpress', 5),
(22, 'Thème Enfant WordPress Developer', '2024-02-06', 'https://developer.wordpress.org/themes/advanced-topics/child-themes/', 5),
(23, 'Thème Enfant WPFormation', '2024-02-07', 'https://wpformation.com/theme-enfant-wordpress/', 5),
(27, 'XMLHttpRequest – Doc officielle ', '2024-02-11', 'https://developer.mozilla.org/fr/docs/Web/API/XMLHttpRequest#constructeur', 6),
(28, 'Fetch API  Pierre Giraud', '2024-02-12', 'https://www.pierre-giraud.com/javascript-apprendre-coder-cours/api-fetch/', 6),
(40, 'Test N', '0000-00-00', 'test', 1),
(41, 'Test 41', '0000-00-00', 'test', 1),
(43, 'test42', '0000-00-00', 'https://www.lopia.fr/', 1),
(44, 'test 44', '0000-00-00', 'https://www.lopia.fr/', 2),
(45, 'Salut', '0000-00-00', 'https://www.lopia.fr/', 1),
(46, 'Salut', '2024-01-30', 'https://www.lopia.fr/', 1),
(47, 'test 47', '2024-01-30', 'https://www.lopia.fr/', 1),
(48, 'id surprise (49)', '2024-01-30', 'https://www.lopia.fr/', 1),
(49, 'id surprise (49)', '2024-01-30', 'https://www.lopia.fr/', 1),
(50, 'id surprise (50)', '2024-01-30', 'https://www.lopia.fr/', 1),
(51, 'test 51', '2024-01-31', 'https://www.lopia.fr/', 1),
(52, 'test 52', '2024-01-31', 'https://www.lopia.fr/', 1),
(53, 'test 53', '2024-01-31', 'https://www.lopia.fr/', 1),
(54, 'Salut', '2024-01-31', 'https://www.lopia.fr/', 1),
(55, 'test3', '2024-01-31', 'test3', 3),
(78, 'Salut', '2024-02-05', '<script>alert(\'ha ha ha encore!\');</script>', 1),
(79, 'Salut', '2024-02-06', 'https://www.lopia.fr/', 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id_categorie`);

--
-- Index pour la table `cat_fav`
--
ALTER TABLE `cat_fav`
  ADD PRIMARY KEY (`id_favori`,`id_categorie`),
  ADD KEY `fk_id_categorie` (`id_categorie`);

--
-- Index pour la table `domaine`
--
ALTER TABLE `domaine`
  ADD PRIMARY KEY (`id_domaine`);

--
-- Index pour la table `favoris`
--
ALTER TABLE `favoris`
  ADD PRIMARY KEY (`id_favori`),
  ADD KEY `fk_id_dom` (`id_domaine`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id_categorie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `domaine`
--
ALTER TABLE `domaine`
  MODIFY `id_domaine` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `favoris`
--
ALTER TABLE `favoris`
  MODIFY `id_favori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `cat_fav`
--
ALTER TABLE `cat_fav`
  ADD CONSTRAINT `fk_id_categorie` FOREIGN KEY (`id_categorie`) REFERENCES `categorie` (`id_categorie`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_favori` FOREIGN KEY (`id_favori`) REFERENCES `favoris` (`id_favori`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `favoris`
--
ALTER TABLE `favoris`
  ADD CONSTRAINT `fk_id_dom` FOREIGN KEY (`id_domaine`) REFERENCES `domaine` (`id_domaine`) ON UPDATE CASCADE;
--
-- Base de données : `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Structure de la table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Structure de la table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Structure de la table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Structure de la table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Structure de la table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Structure de la table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Structure de la table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

-- --------------------------------------------------------

--
-- Structure de la table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Structure de la table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Structure de la table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Structure de la table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Structure de la table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Déchargement des données de la table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2019-10-21 13:37:09', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Structure de la table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Structure de la table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Index pour la table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Index pour la table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Index pour la table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Index pour la table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Index pour la table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Index pour la table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Index pour la table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Index pour la table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Index pour la table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Index pour la table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Index pour la table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Index pour la table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Index pour la table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Index pour la table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Index pour la table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Index pour la table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Index pour la table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Base de données : `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Base de données : `tp_depart_region`
--
CREATE DATABASE IF NOT EXISTS `tp_depart_region` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `tp_depart_region`;

-- --------------------------------------------------------

--
-- Structure de la table `departement`
--

CREATE TABLE `departement` (
  `id_dep` int(11) NOT NULL,
  `code_dep` varchar(3) NOT NULL,
  `nom_dep` varchar(255) NOT NULL,
  `nb_communes_dep` int(11) NOT NULL,
  `pop_2017` int(11) NOT NULL,
  `id_region` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `departement`
--

INSERT INTO `departement` (`id_dep`, `code_dep`, `nom_dep`, `nb_communes_dep`, `pop_2017`, `id_region`) VALUES
(1, '01', 'Ain', 393, 659180, 1),
(2, '02', 'Aisne', 800, 546527, 7),
(3, '03', 'Allier', 317, 347035, 1),
(4, '04', 'Alpes-de-Haute-Provence', 198, 168381, 13),
(5, '05', 'Hautes-Alpes', 162, 145883, 13),
(6, '06', 'Alpes-Maritimes', 163, 1097496, 13),
(7, '07', 'Ardèche', 335, 334688, 1),
(8, '08', 'Ardennes', 449, 280032, 6),
(9, '09', 'Ariège', 327, 157210, 11),
(10, '10', 'Aube', 431, 317118, 6),
(11, '11', 'Aude', 433, 379094, 11),
(12, '12', 'Aveyron', 285, 289488, 11),
(13, '13', 'Bouches-du-Rhône', 119, 2048504, 13),
(14, '14', 'Calvados', 527, 708344, 9),
(15, '15', 'Cantal', 246, 150185, 1),
(16, '16', 'Charente', 366, 361539, 10),
(17, '17', 'Charente-Maritime', 463, 659968, 10),
(18, '18', 'Cher', 287, 311456, 4),
(19, '19', 'Corrèze', 280, 249135, 10),
(20, '2a', 'Corse-du-sud', 124, 159768, 5),
(21, '2b', 'Haute-corse', 236, 180465, 5),
(22, '21', 'Côte-d\'or', 700, 545798, 2),
(23, '22', 'Côtes-d\'armor', 348, 617107, 3),
(24, '23', 'Creuse', 256, 122133, 10),
(25, '24', 'Dordogne', 505, 424095, 10),
(26, '25', 'Doubs', 573, 552643, 2),
(27, '26', 'Drôme', 364, 524574, 1),
(28, '27', 'Eure', 585, 614926, 9),
(29, '28', 'Eure-et-Loir', 365, 443538, 4),
(30, '29', 'Finistère', 277, 933992, 3),
(31, '30', 'Gard', 351, 757764, 11),
(32, '31', 'Haute-Garonne', 11, 586, 1385122),
(33, '32', 'Gers', 461, 197953, 11),
(34, '33', 'Gironde', 535, 1607545, 10),
(35, '34', 'Hérault', 342, 1162867, 11),
(36, '35', 'Ile-et-Vilaine', 333, 1084554, 3),
(37, '36', 'Indre', 241, 227999, 4),
(38, '37', 'Indre-et-Loire', 272, 618820, 4),
(39, '38', 'Isère', 512, 1283384, 1),
(40, '39', 'Jura', 494, 269344, 2),
(41, '40', 'Landes', 327, 419709, 10),
(42, '41', 'Loir-et-Cher', 267, 340499, 4),
(43, '42', 'Loire', 323, 777328, 1),
(44, '43', 'Haute-Loire', 257, 234190, 1),
(45, '44', 'Loire-Atlantique', 12, 207, 1423152),
(46, '45', 'Loiret', 326, 692540, 4),
(47, '46', 'Lot', 313, 179556, 11),
(48, '47', 'Lot-et-Garonne', 319, 341270, 10),
(49, '48', 'Lozère', 152, 80240, 11),
(50, '49', 'Maine-et-Loire', 12, 177, 833154),
(51, '50', 'Manche', 446, 512923, 9),
(52, '51', 'Marne', 613, 580671, 6),
(53, '52', 'Haute-Marne', 426, 180753, 6),
(54, '53', 'Mayenne', 242, 316750, 12),
(55, '54', 'Meurthe-et-Moselle', 591, 745300, 6),
(56, '55', 'Meuse', 499, 192588, 6),
(57, '56', 'Morbihan', 250, 771911, 3),
(58, '57', 'Moselle', 725, 1062217, 6),
(59, '58', 'Nièvre', 309, 212742, 2),
(60, '59', 'Nord', 648, 2635255, 7),
(61, '60', 'Oise', 679, 841948, 7),
(62, '61', 'Orne', 385, 291557, 9),
(63, '62', 'Pas-de-Calais', 890, 1489983, 7),
(64, '63', 'Puy-de-Dôme', 464, 668301, 1),
(65, '64', 'Pyrénées-Atlantiques', 546, 695965, 10),
(66, '65', 'Hautes-Pyrénées', 469, 234591, 11),
(67, '66', 'Pyrénées-Orientales', 226, 482368, 11),
(68, '67', 'Bas-Rhin', 514, 1141511, 6),
(69, '68', 'Haut-Rhin', 366, 777917, 6),
(70, '69', 'Rhône', 267, 1869599, 1),
(71, '70', 'Haute-Saône', 539, 243264, 2),
(72, '71', 'Saône-et-Loire', 565, 569531, 2),
(73, '72', 'Sarthe', 354, 579650, 12),
(74, '73', 'Savoie', 273, 443787, 1),
(75, '74', 'Haute-Savoie', 279, 828417, 1),
(76, '75', 'Paris', 1, 2204773, 8),
(77, '76', 'Seine-Maritime', 708, 1275559, 9),
(78, '77', 'Seine-et-Marne', 507, 1420469, 8),
(79, '78', 'Yvelines', 259, 1463091, 8),
(80, '79', 'Deux-Sèvres', 256, 384479, 10),
(81, '80', 'Somme', 772, 582464, 7),
(82, '81', 'Tarn', 314, 398412, 11),
(83, '82', 'Tarn-et-Garonne', 195, 264130, 11),
(84, '83', 'Var', 153, 1075653, 13),
(85, '84', 'Vaucluse', 151, 570762, 13),
(86, '85', 'Vendée', 258, 693455, 12),
(87, '86', 'Vienne', 266, 447150, 10),
(88, '87', 'Haute-Vienne', 195, 381379, 10),
(89, '88', 'Vosges', 507, 378986, 6),
(90, '89', 'Yonne', 423, 346902, 2),
(91, '90', 'Territoire de Belfort', 101, 145640, 2),
(92, '91', 'Essonne', 194, 1310599, 8),
(93, '92', 'Hauts-de-Seine', 36, 1625917, 8),
(94, '93', 'Seine-Saint-Denis', 40, 1630133, 8),
(95, '94', 'Val-de-Marne', 47, 1397035, 8),
(96, '95', 'Val-d\'oise', 184, 1239262, 8),
(97, '976', 'Mayotte', 0, 270372, 18),
(98, '971', 'Guadeloupe', 32, 396153, 14),
(99, '973', 'Guyane', 22, 271124, 16),
(100, '972', 'Martinique', 34, 377711, 15),
(101, '974', 'Réunion', 24, 863063, 17);

-- --------------------------------------------------------

--
-- Structure de la table `region`
--

CREATE TABLE `region` (
  `id_reg` int(11) NOT NULL,
  `nom_region` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `region`
--

INSERT INTO `region` (`id_reg`, `nom_region`) VALUES
(1, 'Auvergne Rhônes Alpes'),
(2, 'Bourgogne Franche Comté'),
(3, 'Bretagne'),
(4, 'Centre Val de Loire'),
(5, 'Corse'),
(6, 'Grand Est'),
(7, 'Hauts de France'),
(8, 'Ile de France'),
(9, 'Normandie'),
(10, 'Nouvelle Aquitaine'),
(11, 'Occitanie'),
(12, 'Pays de la Loire'),
(13, 'Provencce Alpes Côte d\'Azur'),
(14, 'Guadeloupe'),
(15, 'Martinique'),
(16, 'Guyane'),
(17, 'La Réunion'),
(18, 'Mayotte');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `departement`
--
ALTER TABLE `departement`
  ADD PRIMARY KEY (`id_dep`),
  ADD KEY `fk_id_region` (`id_region`);

--
-- Index pour la table `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`id_reg`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `departement`
--
ALTER TABLE `departement`
  MODIFY `id_dep` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT pour la table `region`
--
ALTER TABLE `region`
  MODIFY `id_reg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `departement`
--
ALTER TABLE `departement`
  ADD CONSTRAINT `fk_id_region` FOREIGN KEY (`id_region`) REFERENCES `region` (`id_reg`);
--
-- Base de données : `user1_wp`
--
CREATE DATABASE IF NOT EXISTS `user1_wp` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `user1_wp`;

-- --------------------------------------------------------

--
-- Structure de la table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un commentateur ou commentatrice WordPress', 'wapuu@wordpress.example', 'https://fr.wordpress.org/', '', '2023-11-27 14:10:45', '2023-11-27 13:10:45', 'Bonjour, ceci est un commentaire.\nPour débuter avec la modération, la modification et la suppression de commentaires, veuillez visiter l’écran des Commentaires dans le Tableau de bord.\nLes avatars des personnes qui commentent arrivent depuis <a href=\"https://fr.gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wordpress', 'yes'),
(2, 'home', 'http://localhost/wordpress', 'yes'),
(3, 'blogname', 'Portefolio', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'agustin.wdwm48@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G\\hi', 'yes'),
(25, 'links_updated_date_format', 'd F Y G\\hi', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:171:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:50:\"promotion/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?promotion=$matches[1]&feed=$matches[2]\";s:45:\"promotion/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?promotion=$matches[1]&feed=$matches[2]\";s:26:\"promotion/([^/]+)/embed/?$\";s:42:\"index.php?promotion=$matches[1]&embed=true\";s:38:\"promotion/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?promotion=$matches[1]&paged=$matches[2]\";s:20:\"promotion/([^/]+)/?$\";s:31:\"index.php?promotion=$matches[1]\";s:50:\"categorie/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?categorie=$matches[1]&feed=$matches[2]\";s:45:\"categorie/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?categorie=$matches[1]&feed=$matches[2]\";s:26:\"categorie/([^/]+)/embed/?$\";s:42:\"index.php?categorie=$matches[1]&embed=true\";s:38:\"categorie/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?categorie=$matches[1]&paged=$matches[2]\";s:20:\"categorie/([^/]+)/?$\";s:31:\"index.php?categorie=$matches[1]\";s:51:\"competence/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?competence=$matches[1]&feed=$matches[2]\";s:46:\"competence/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?competence=$matches[1]&feed=$matches[2]\";s:27:\"competence/([^/]+)/embed/?$\";s:43:\"index.php?competence=$matches[1]&embed=true\";s:39:\"competence/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?competence=$matches[1]&paged=$matches[2]\";s:21:\"competence/([^/]+)/?$\";s:32:\"index.php?competence=$matches[1]\";s:37:\"apprenant/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"apprenant/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"apprenant/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"apprenant/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"apprenant/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"apprenant/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"apprenant/([^/]+)/embed/?$\";s:42:\"index.php?apprenant=$matches[1]&embed=true\";s:30:\"apprenant/([^/]+)/trackback/?$\";s:36:\"index.php?apprenant=$matches[1]&tb=1\";s:38:\"apprenant/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?apprenant=$matches[1]&paged=$matches[2]\";s:45:\"apprenant/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?apprenant=$matches[1]&cpage=$matches[2]\";s:34:\"apprenant/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?apprenant=$matches[1]&page=$matches[2]\";s:26:\"apprenant/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"apprenant/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"apprenant/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"apprenant/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"apprenant/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"apprenant/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:35:\"voiture/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"voiture/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"voiture/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"voiture/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"voiture/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"voiture/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"voiture/([^/]+)/embed/?$\";s:40:\"index.php?voiture=$matches[1]&embed=true\";s:28:\"voiture/([^/]+)/trackback/?$\";s:34:\"index.php?voiture=$matches[1]&tb=1\";s:36:\"voiture/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?voiture=$matches[1]&paged=$matches[2]\";s:43:\"voiture/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?voiture=$matches[1]&cpage=$matches[2]\";s:32:\"voiture/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?voiture=$matches[1]&page=$matches[2]\";s:24:\"voiture/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"voiture/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"voiture/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"voiture/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"voiture/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"voiture/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:39:\"apprenants2/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:49:\"apprenants2/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:69:\"apprenants2/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"apprenants2/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"apprenants2/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:45:\"apprenants2/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:28:\"apprenants2/([^/]+)/embed/?$\";s:44:\"index.php?apprenants2=$matches[1]&embed=true\";s:32:\"apprenants2/([^/]+)/trackback/?$\";s:38:\"index.php?apprenants2=$matches[1]&tb=1\";s:40:\"apprenants2/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?apprenants2=$matches[1]&paged=$matches[2]\";s:47:\"apprenants2/([^/]+)/comment-page-([0-9]{1,})/?$\";s:51:\"index.php?apprenants2=$matches[1]&cpage=$matches[2]\";s:36:\"apprenants2/([^/]+)(?:/([0-9]+))?/?$\";s:50:\"index.php?apprenants2=$matches[1]&page=$matches[2]\";s:28:\"apprenants2/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:38:\"apprenants2/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:58:\"apprenants2/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"apprenants2/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"apprenants2/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:34:\"apprenants2/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:46:\"annee/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?annee=$matches[1]&feed=$matches[2]\";s:41:\"annee/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?annee=$matches[1]&feed=$matches[2]\";s:22:\"annee/([^/]+)/embed/?$\";s:38:\"index.php?annee=$matches[1]&embed=true\";s:34:\"annee/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?annee=$matches[1]&paged=$matches[2]\";s:16:\"annee/([^/]+)/?$\";s:27:\"index.php?annee=$matches[1]\";s:53:\"categorie-15/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?categorie-15=$matches[1]&feed=$matches[2]\";s:48:\"categorie-15/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?categorie-15=$matches[1]&feed=$matches[2]\";s:29:\"categorie-15/([^/]+)/embed/?$\";s:45:\"index.php?categorie-15=$matches[1]&embed=true\";s:41:\"categorie-15/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?categorie-15=$matches[1]&paged=$matches[2]\";s:23:\"categorie-15/([^/]+)/?$\";s:34:\"index.php?categorie-15=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=11&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:23:\"gutenberg/gutenberg.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'portfolio3-wp', 'yes'),
(41, 'stylesheet', 'portfolio3-wp', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '56657', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:1:{s:24:\"wordpress-seo/wp-seo.php\";s:14:\"__return_false\";}', 'no'),
(80, 'timezone_string', 'Europe/Paris', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '11', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1716642645', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'wp_attachment_pages_enabled', '0', 'yes'),
(100, 'initial_db_version', '56657', 'yes'),
(101, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:10:\"copy_posts\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:35:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:10:\"copy_posts\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(102, 'fresh_site', '0', 'yes'),
(103, 'WPLANG', 'fr_FR', 'yes'),
(104, 'user_count', '2', 'no'),
(105, 'widget_block', 'a:7:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:159:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Articles récents</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:233:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Commentaires récents</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:151:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Catégories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;i:9;a:1:{s:7:\"content\";s:267:\"<!-- wp:image {\"id\":23,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/wordpress/wp-content/uploads/2023/11/pexels-roman-odintsov-6898854.jpg\" alt=\"\" class=\"wp-image-23\"/></figure>\n<!-- /wp:image -->\";}}', 'yes'),
(106, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";i:5;s:7:\"block-9\";}s:13:\"array_version\";i:3;}', 'yes'),
(107, 'cron', 'a:10:{i:1706112646;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1706145046;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1706145063;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1706172273;a:1:{s:13:\"wpseo-reindex\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1706188245;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1706188263;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1706188266;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1706533851;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1706620245;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(108, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(120, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(121, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(122, '_transient_wp_core_block_css_files', 'a:2:{s:7:\"version\";s:5:\"6.4.1\";s:5:\"files\";a:500:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:20:\"block/editor-rtl.css\";i:29;s:24:\"block/editor-rtl.min.css\";i:30;s:16:\"block/editor.css\";i:31;s:20:\"block/editor.min.css\";i:32;s:21:\"button/editor-rtl.css\";i:33;s:25:\"button/editor-rtl.min.css\";i:34;s:17:\"button/editor.css\";i:35;s:21:\"button/editor.min.css\";i:36;s:20:\"button/style-rtl.css\";i:37;s:24:\"button/style-rtl.min.css\";i:38;s:16:\"button/style.css\";i:39;s:20:\"button/style.min.css\";i:40;s:22:\"buttons/editor-rtl.css\";i:41;s:26:\"buttons/editor-rtl.min.css\";i:42;s:18:\"buttons/editor.css\";i:43;s:22:\"buttons/editor.min.css\";i:44;s:21:\"buttons/style-rtl.css\";i:45;s:25:\"buttons/style-rtl.min.css\";i:46;s:17:\"buttons/style.css\";i:47;s:21:\"buttons/style.min.css\";i:48;s:22:\"calendar/style-rtl.css\";i:49;s:26:\"calendar/style-rtl.min.css\";i:50;s:18:\"calendar/style.css\";i:51;s:22:\"calendar/style.min.css\";i:52;s:25:\"categories/editor-rtl.css\";i:53;s:29:\"categories/editor-rtl.min.css\";i:54;s:21:\"categories/editor.css\";i:55;s:25:\"categories/editor.min.css\";i:56;s:24:\"categories/style-rtl.css\";i:57;s:28:\"categories/style-rtl.min.css\";i:58;s:20:\"categories/style.css\";i:59;s:24:\"categories/style.min.css\";i:60;s:19:\"code/editor-rtl.css\";i:61;s:23:\"code/editor-rtl.min.css\";i:62;s:15:\"code/editor.css\";i:63;s:19:\"code/editor.min.css\";i:64;s:18:\"code/style-rtl.css\";i:65;s:22:\"code/style-rtl.min.css\";i:66;s:14:\"code/style.css\";i:67;s:18:\"code/style.min.css\";i:68;s:18:\"code/theme-rtl.css\";i:69;s:22:\"code/theme-rtl.min.css\";i:70;s:14:\"code/theme.css\";i:71;s:18:\"code/theme.min.css\";i:72;s:22:\"columns/editor-rtl.css\";i:73;s:26:\"columns/editor-rtl.min.css\";i:74;s:18:\"columns/editor.css\";i:75;s:22:\"columns/editor.min.css\";i:76;s:21:\"columns/style-rtl.css\";i:77;s:25:\"columns/style-rtl.min.css\";i:78;s:17:\"columns/style.css\";i:79;s:21:\"columns/style.min.css\";i:80;s:29:\"comment-content/style-rtl.css\";i:81;s:33:\"comment-content/style-rtl.min.css\";i:82;s:25:\"comment-content/style.css\";i:83;s:29:\"comment-content/style.min.css\";i:84;s:30:\"comment-template/style-rtl.css\";i:85;s:34:\"comment-template/style-rtl.min.css\";i:86;s:26:\"comment-template/style.css\";i:87;s:30:\"comment-template/style.min.css\";i:88;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:89;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:90;s:38:\"comments-pagination-numbers/editor.css\";i:91;s:42:\"comments-pagination-numbers/editor.min.css\";i:92;s:34:\"comments-pagination/editor-rtl.css\";i:93;s:38:\"comments-pagination/editor-rtl.min.css\";i:94;s:30:\"comments-pagination/editor.css\";i:95;s:34:\"comments-pagination/editor.min.css\";i:96;s:33:\"comments-pagination/style-rtl.css\";i:97;s:37:\"comments-pagination/style-rtl.min.css\";i:98;s:29:\"comments-pagination/style.css\";i:99;s:33:\"comments-pagination/style.min.css\";i:100;s:29:\"comments-title/editor-rtl.css\";i:101;s:33:\"comments-title/editor-rtl.min.css\";i:102;s:25:\"comments-title/editor.css\";i:103;s:29:\"comments-title/editor.min.css\";i:104;s:23:\"comments/editor-rtl.css\";i:105;s:27:\"comments/editor-rtl.min.css\";i:106;s:19:\"comments/editor.css\";i:107;s:23:\"comments/editor.min.css\";i:108;s:22:\"comments/style-rtl.css\";i:109;s:26:\"comments/style-rtl.min.css\";i:110;s:18:\"comments/style.css\";i:111;s:22:\"comments/style.min.css\";i:112;s:20:\"cover/editor-rtl.css\";i:113;s:24:\"cover/editor-rtl.min.css\";i:114;s:16:\"cover/editor.css\";i:115;s:20:\"cover/editor.min.css\";i:116;s:19:\"cover/style-rtl.css\";i:117;s:23:\"cover/style-rtl.min.css\";i:118;s:15:\"cover/style.css\";i:119;s:19:\"cover/style.min.css\";i:120;s:22:\"details/editor-rtl.css\";i:121;s:26:\"details/editor-rtl.min.css\";i:122;s:18:\"details/editor.css\";i:123;s:22:\"details/editor.min.css\";i:124;s:21:\"details/style-rtl.css\";i:125;s:25:\"details/style-rtl.min.css\";i:126;s:17:\"details/style.css\";i:127;s:21:\"details/style.min.css\";i:128;s:20:\"embed/editor-rtl.css\";i:129;s:24:\"embed/editor-rtl.min.css\";i:130;s:16:\"embed/editor.css\";i:131;s:20:\"embed/editor.min.css\";i:132;s:19:\"embed/style-rtl.css\";i:133;s:23:\"embed/style-rtl.min.css\";i:134;s:15:\"embed/style.css\";i:135;s:19:\"embed/style.min.css\";i:136;s:19:\"embed/theme-rtl.css\";i:137;s:23:\"embed/theme-rtl.min.css\";i:138;s:15:\"embed/theme.css\";i:139;s:19:\"embed/theme.min.css\";i:140;s:19:\"file/editor-rtl.css\";i:141;s:23:\"file/editor-rtl.min.css\";i:142;s:15:\"file/editor.css\";i:143;s:19:\"file/editor.min.css\";i:144;s:18:\"file/style-rtl.css\";i:145;s:22:\"file/style-rtl.min.css\";i:146;s:14:\"file/style.css\";i:147;s:18:\"file/style.min.css\";i:148;s:23:\"footnotes/style-rtl.css\";i:149;s:27:\"footnotes/style-rtl.min.css\";i:150;s:19:\"footnotes/style.css\";i:151;s:23:\"footnotes/style.min.css\";i:152;s:23:\"freeform/editor-rtl.css\";i:153;s:27:\"freeform/editor-rtl.min.css\";i:154;s:19:\"freeform/editor.css\";i:155;s:23:\"freeform/editor.min.css\";i:156;s:22:\"gallery/editor-rtl.css\";i:157;s:26:\"gallery/editor-rtl.min.css\";i:158;s:18:\"gallery/editor.css\";i:159;s:22:\"gallery/editor.min.css\";i:160;s:21:\"gallery/style-rtl.css\";i:161;s:25:\"gallery/style-rtl.min.css\";i:162;s:17:\"gallery/style.css\";i:163;s:21:\"gallery/style.min.css\";i:164;s:21:\"gallery/theme-rtl.css\";i:165;s:25:\"gallery/theme-rtl.min.css\";i:166;s:17:\"gallery/theme.css\";i:167;s:21:\"gallery/theme.min.css\";i:168;s:20:\"group/editor-rtl.css\";i:169;s:24:\"group/editor-rtl.min.css\";i:170;s:16:\"group/editor.css\";i:171;s:20:\"group/editor.min.css\";i:172;s:19:\"group/style-rtl.css\";i:173;s:23:\"group/style-rtl.min.css\";i:174;s:15:\"group/style.css\";i:175;s:19:\"group/style.min.css\";i:176;s:19:\"group/theme-rtl.css\";i:177;s:23:\"group/theme-rtl.min.css\";i:178;s:15:\"group/theme.css\";i:179;s:19:\"group/theme.min.css\";i:180;s:21:\"heading/style-rtl.css\";i:181;s:25:\"heading/style-rtl.min.css\";i:182;s:17:\"heading/style.css\";i:183;s:21:\"heading/style.min.css\";i:184;s:19:\"html/editor-rtl.css\";i:185;s:23:\"html/editor-rtl.min.css\";i:186;s:15:\"html/editor.css\";i:187;s:19:\"html/editor.min.css\";i:188;s:20:\"image/editor-rtl.css\";i:189;s:24:\"image/editor-rtl.min.css\";i:190;s:16:\"image/editor.css\";i:191;s:20:\"image/editor.min.css\";i:192;s:19:\"image/style-rtl.css\";i:193;s:23:\"image/style-rtl.min.css\";i:194;s:15:\"image/style.css\";i:195;s:19:\"image/style.min.css\";i:196;s:19:\"image/theme-rtl.css\";i:197;s:23:\"image/theme-rtl.min.css\";i:198;s:15:\"image/theme.css\";i:199;s:19:\"image/theme.min.css\";i:200;s:29:\"latest-comments/style-rtl.css\";i:201;s:33:\"latest-comments/style-rtl.min.css\";i:202;s:25:\"latest-comments/style.css\";i:203;s:29:\"latest-comments/style.min.css\";i:204;s:27:\"latest-posts/editor-rtl.css\";i:205;s:31:\"latest-posts/editor-rtl.min.css\";i:206;s:23:\"latest-posts/editor.css\";i:207;s:27:\"latest-posts/editor.min.css\";i:208;s:26:\"latest-posts/style-rtl.css\";i:209;s:30:\"latest-posts/style-rtl.min.css\";i:210;s:22:\"latest-posts/style.css\";i:211;s:26:\"latest-posts/style.min.css\";i:212;s:18:\"list/style-rtl.css\";i:213;s:22:\"list/style-rtl.min.css\";i:214;s:14:\"list/style.css\";i:215;s:18:\"list/style.min.css\";i:216;s:25:\"media-text/editor-rtl.css\";i:217;s:29:\"media-text/editor-rtl.min.css\";i:218;s:21:\"media-text/editor.css\";i:219;s:25:\"media-text/editor.min.css\";i:220;s:24:\"media-text/style-rtl.css\";i:221;s:28:\"media-text/style-rtl.min.css\";i:222;s:20:\"media-text/style.css\";i:223;s:24:\"media-text/style.min.css\";i:224;s:19:\"more/editor-rtl.css\";i:225;s:23:\"more/editor-rtl.min.css\";i:226;s:15:\"more/editor.css\";i:227;s:19:\"more/editor.min.css\";i:228;s:30:\"navigation-link/editor-rtl.css\";i:229;s:34:\"navigation-link/editor-rtl.min.css\";i:230;s:26:\"navigation-link/editor.css\";i:231;s:30:\"navigation-link/editor.min.css\";i:232;s:29:\"navigation-link/style-rtl.css\";i:233;s:33:\"navigation-link/style-rtl.min.css\";i:234;s:25:\"navigation-link/style.css\";i:235;s:29:\"navigation-link/style.min.css\";i:236;s:33:\"navigation-submenu/editor-rtl.css\";i:237;s:37:\"navigation-submenu/editor-rtl.min.css\";i:238;s:29:\"navigation-submenu/editor.css\";i:239;s:33:\"navigation-submenu/editor.min.css\";i:240;s:25:\"navigation/editor-rtl.css\";i:241;s:29:\"navigation/editor-rtl.min.css\";i:242;s:21:\"navigation/editor.css\";i:243;s:25:\"navigation/editor.min.css\";i:244;s:24:\"navigation/style-rtl.css\";i:245;s:28:\"navigation/style-rtl.min.css\";i:246;s:20:\"navigation/style.css\";i:247;s:24:\"navigation/style.min.css\";i:248;s:23:\"nextpage/editor-rtl.css\";i:249;s:27:\"nextpage/editor-rtl.min.css\";i:250;s:19:\"nextpage/editor.css\";i:251;s:23:\"nextpage/editor.min.css\";i:252;s:24:\"page-list/editor-rtl.css\";i:253;s:28:\"page-list/editor-rtl.min.css\";i:254;s:20:\"page-list/editor.css\";i:255;s:24:\"page-list/editor.min.css\";i:256;s:23:\"page-list/style-rtl.css\";i:257;s:27:\"page-list/style-rtl.min.css\";i:258;s:19:\"page-list/style.css\";i:259;s:23:\"page-list/style.min.css\";i:260;s:24:\"paragraph/editor-rtl.css\";i:261;s:28:\"paragraph/editor-rtl.min.css\";i:262;s:20:\"paragraph/editor.css\";i:263;s:24:\"paragraph/editor.min.css\";i:264;s:23:\"paragraph/style-rtl.css\";i:265;s:27:\"paragraph/style-rtl.min.css\";i:266;s:19:\"paragraph/style.css\";i:267;s:23:\"paragraph/style.min.css\";i:268;s:25:\"post-author/style-rtl.css\";i:269;s:29:\"post-author/style-rtl.min.css\";i:270;s:21:\"post-author/style.css\";i:271;s:25:\"post-author/style.min.css\";i:272;s:33:\"post-comments-form/editor-rtl.css\";i:273;s:37:\"post-comments-form/editor-rtl.min.css\";i:274;s:29:\"post-comments-form/editor.css\";i:275;s:33:\"post-comments-form/editor.min.css\";i:276;s:32:\"post-comments-form/style-rtl.css\";i:277;s:36:\"post-comments-form/style-rtl.min.css\";i:278;s:28:\"post-comments-form/style.css\";i:279;s:32:\"post-comments-form/style.min.css\";i:280;s:23:\"post-date/style-rtl.css\";i:281;s:27:\"post-date/style-rtl.min.css\";i:282;s:19:\"post-date/style.css\";i:283;s:23:\"post-date/style.min.css\";i:284;s:27:\"post-excerpt/editor-rtl.css\";i:285;s:31:\"post-excerpt/editor-rtl.min.css\";i:286;s:23:\"post-excerpt/editor.css\";i:287;s:27:\"post-excerpt/editor.min.css\";i:288;s:26:\"post-excerpt/style-rtl.css\";i:289;s:30:\"post-excerpt/style-rtl.min.css\";i:290;s:22:\"post-excerpt/style.css\";i:291;s:26:\"post-excerpt/style.min.css\";i:292;s:34:\"post-featured-image/editor-rtl.css\";i:293;s:38:\"post-featured-image/editor-rtl.min.css\";i:294;s:30:\"post-featured-image/editor.css\";i:295;s:34:\"post-featured-image/editor.min.css\";i:296;s:33:\"post-featured-image/style-rtl.css\";i:297;s:37:\"post-featured-image/style-rtl.min.css\";i:298;s:29:\"post-featured-image/style.css\";i:299;s:33:\"post-featured-image/style.min.css\";i:300;s:34:\"post-navigation-link/style-rtl.css\";i:301;s:38:\"post-navigation-link/style-rtl.min.css\";i:302;s:30:\"post-navigation-link/style.css\";i:303;s:34:\"post-navigation-link/style.min.css\";i:304;s:28:\"post-template/editor-rtl.css\";i:305;s:32:\"post-template/editor-rtl.min.css\";i:306;s:24:\"post-template/editor.css\";i:307;s:28:\"post-template/editor.min.css\";i:308;s:27:\"post-template/style-rtl.css\";i:309;s:31:\"post-template/style-rtl.min.css\";i:310;s:23:\"post-template/style.css\";i:311;s:27:\"post-template/style.min.css\";i:312;s:24:\"post-terms/style-rtl.css\";i:313;s:28:\"post-terms/style-rtl.min.css\";i:314;s:20:\"post-terms/style.css\";i:315;s:24:\"post-terms/style.min.css\";i:316;s:24:\"post-title/style-rtl.css\";i:317;s:28:\"post-title/style-rtl.min.css\";i:318;s:20:\"post-title/style.css\";i:319;s:24:\"post-title/style.min.css\";i:320;s:26:\"preformatted/style-rtl.css\";i:321;s:30:\"preformatted/style-rtl.min.css\";i:322;s:22:\"preformatted/style.css\";i:323;s:26:\"preformatted/style.min.css\";i:324;s:24:\"pullquote/editor-rtl.css\";i:325;s:28:\"pullquote/editor-rtl.min.css\";i:326;s:20:\"pullquote/editor.css\";i:327;s:24:\"pullquote/editor.min.css\";i:328;s:23:\"pullquote/style-rtl.css\";i:329;s:27:\"pullquote/style-rtl.min.css\";i:330;s:19:\"pullquote/style.css\";i:331;s:23:\"pullquote/style.min.css\";i:332;s:23:\"pullquote/theme-rtl.css\";i:333;s:27:\"pullquote/theme-rtl.min.css\";i:334;s:19:\"pullquote/theme.css\";i:335;s:23:\"pullquote/theme.min.css\";i:336;s:39:\"query-pagination-numbers/editor-rtl.css\";i:337;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:338;s:35:\"query-pagination-numbers/editor.css\";i:339;s:39:\"query-pagination-numbers/editor.min.css\";i:340;s:31:\"query-pagination/editor-rtl.css\";i:341;s:35:\"query-pagination/editor-rtl.min.css\";i:342;s:27:\"query-pagination/editor.css\";i:343;s:31:\"query-pagination/editor.min.css\";i:344;s:30:\"query-pagination/style-rtl.css\";i:345;s:34:\"query-pagination/style-rtl.min.css\";i:346;s:26:\"query-pagination/style.css\";i:347;s:30:\"query-pagination/style.min.css\";i:348;s:25:\"query-title/style-rtl.css\";i:349;s:29:\"query-title/style-rtl.min.css\";i:350;s:21:\"query-title/style.css\";i:351;s:25:\"query-title/style.min.css\";i:352;s:20:\"query/editor-rtl.css\";i:353;s:24:\"query/editor-rtl.min.css\";i:354;s:16:\"query/editor.css\";i:355;s:20:\"query/editor.min.css\";i:356;s:19:\"query/style-rtl.css\";i:357;s:23:\"query/style-rtl.min.css\";i:358;s:15:\"query/style.css\";i:359;s:19:\"query/style.min.css\";i:360;s:19:\"quote/style-rtl.css\";i:361;s:23:\"quote/style-rtl.min.css\";i:362;s:15:\"quote/style.css\";i:363;s:19:\"quote/style.min.css\";i:364;s:19:\"quote/theme-rtl.css\";i:365;s:23:\"quote/theme-rtl.min.css\";i:366;s:15:\"quote/theme.css\";i:367;s:19:\"quote/theme.min.css\";i:368;s:23:\"read-more/style-rtl.css\";i:369;s:27:\"read-more/style-rtl.min.css\";i:370;s:19:\"read-more/style.css\";i:371;s:23:\"read-more/style.min.css\";i:372;s:18:\"rss/editor-rtl.css\";i:373;s:22:\"rss/editor-rtl.min.css\";i:374;s:14:\"rss/editor.css\";i:375;s:18:\"rss/editor.min.css\";i:376;s:17:\"rss/style-rtl.css\";i:377;s:21:\"rss/style-rtl.min.css\";i:378;s:13:\"rss/style.css\";i:379;s:17:\"rss/style.min.css\";i:380;s:21:\"search/editor-rtl.css\";i:381;s:25:\"search/editor-rtl.min.css\";i:382;s:17:\"search/editor.css\";i:383;s:21:\"search/editor.min.css\";i:384;s:20:\"search/style-rtl.css\";i:385;s:24:\"search/style-rtl.min.css\";i:386;s:16:\"search/style.css\";i:387;s:20:\"search/style.min.css\";i:388;s:20:\"search/theme-rtl.css\";i:389;s:24:\"search/theme-rtl.min.css\";i:390;s:16:\"search/theme.css\";i:391;s:20:\"search/theme.min.css\";i:392;s:24:\"separator/editor-rtl.css\";i:393;s:28:\"separator/editor-rtl.min.css\";i:394;s:20:\"separator/editor.css\";i:395;s:24:\"separator/editor.min.css\";i:396;s:23:\"separator/style-rtl.css\";i:397;s:27:\"separator/style-rtl.min.css\";i:398;s:19:\"separator/style.css\";i:399;s:23:\"separator/style.min.css\";i:400;s:23:\"separator/theme-rtl.css\";i:401;s:27:\"separator/theme-rtl.min.css\";i:402;s:19:\"separator/theme.css\";i:403;s:23:\"separator/theme.min.css\";i:404;s:24:\"shortcode/editor-rtl.css\";i:405;s:28:\"shortcode/editor-rtl.min.css\";i:406;s:20:\"shortcode/editor.css\";i:407;s:24:\"shortcode/editor.min.css\";i:408;s:24:\"site-logo/editor-rtl.css\";i:409;s:28:\"site-logo/editor-rtl.min.css\";i:410;s:20:\"site-logo/editor.css\";i:411;s:24:\"site-logo/editor.min.css\";i:412;s:23:\"site-logo/style-rtl.css\";i:413;s:27:\"site-logo/style-rtl.min.css\";i:414;s:19:\"site-logo/style.css\";i:415;s:23:\"site-logo/style.min.css\";i:416;s:27:\"site-tagline/editor-rtl.css\";i:417;s:31:\"site-tagline/editor-rtl.min.css\";i:418;s:23:\"site-tagline/editor.css\";i:419;s:27:\"site-tagline/editor.min.css\";i:420;s:25:\"site-title/editor-rtl.css\";i:421;s:29:\"site-title/editor-rtl.min.css\";i:422;s:21:\"site-title/editor.css\";i:423;s:25:\"site-title/editor.min.css\";i:424;s:24:\"site-title/style-rtl.css\";i:425;s:28:\"site-title/style-rtl.min.css\";i:426;s:20:\"site-title/style.css\";i:427;s:24:\"site-title/style.min.css\";i:428;s:26:\"social-link/editor-rtl.css\";i:429;s:30:\"social-link/editor-rtl.min.css\";i:430;s:22:\"social-link/editor.css\";i:431;s:26:\"social-link/editor.min.css\";i:432;s:27:\"social-links/editor-rtl.css\";i:433;s:31:\"social-links/editor-rtl.min.css\";i:434;s:23:\"social-links/editor.css\";i:435;s:27:\"social-links/editor.min.css\";i:436;s:26:\"social-links/style-rtl.css\";i:437;s:30:\"social-links/style-rtl.min.css\";i:438;s:22:\"social-links/style.css\";i:439;s:26:\"social-links/style.min.css\";i:440;s:21:\"spacer/editor-rtl.css\";i:441;s:25:\"spacer/editor-rtl.min.css\";i:442;s:17:\"spacer/editor.css\";i:443;s:21:\"spacer/editor.min.css\";i:444;s:20:\"spacer/style-rtl.css\";i:445;s:24:\"spacer/style-rtl.min.css\";i:446;s:16:\"spacer/style.css\";i:447;s:20:\"spacer/style.min.css\";i:448;s:20:\"table/editor-rtl.css\";i:449;s:24:\"table/editor-rtl.min.css\";i:450;s:16:\"table/editor.css\";i:451;s:20:\"table/editor.min.css\";i:452;s:19:\"table/style-rtl.css\";i:453;s:23:\"table/style-rtl.min.css\";i:454;s:15:\"table/style.css\";i:455;s:19:\"table/style.min.css\";i:456;s:19:\"table/theme-rtl.css\";i:457;s:23:\"table/theme-rtl.min.css\";i:458;s:15:\"table/theme.css\";i:459;s:19:\"table/theme.min.css\";i:460;s:23:\"tag-cloud/style-rtl.css\";i:461;s:27:\"tag-cloud/style-rtl.min.css\";i:462;s:19:\"tag-cloud/style.css\";i:463;s:23:\"tag-cloud/style.min.css\";i:464;s:28:\"template-part/editor-rtl.css\";i:465;s:32:\"template-part/editor-rtl.min.css\";i:466;s:24:\"template-part/editor.css\";i:467;s:28:\"template-part/editor.min.css\";i:468;s:27:\"template-part/theme-rtl.css\";i:469;s:31:\"template-part/theme-rtl.min.css\";i:470;s:23:\"template-part/theme.css\";i:471;s:27:\"template-part/theme.min.css\";i:472;s:30:\"term-description/style-rtl.css\";i:473;s:34:\"term-description/style-rtl.min.css\";i:474;s:26:\"term-description/style.css\";i:475;s:30:\"term-description/style.min.css\";i:476;s:27:\"text-columns/editor-rtl.css\";i:477;s:31:\"text-columns/editor-rtl.min.css\";i:478;s:23:\"text-columns/editor.css\";i:479;s:27:\"text-columns/editor.min.css\";i:480;s:26:\"text-columns/style-rtl.css\";i:481;s:30:\"text-columns/style-rtl.min.css\";i:482;s:22:\"text-columns/style.css\";i:483;s:26:\"text-columns/style.min.css\";i:484;s:19:\"verse/style-rtl.css\";i:485;s:23:\"verse/style-rtl.min.css\";i:486;s:15:\"verse/style.css\";i:487;s:19:\"verse/style.min.css\";i:488;s:20:\"video/editor-rtl.css\";i:489;s:24:\"video/editor-rtl.min.css\";i:490;s:16:\"video/editor.css\";i:491;s:20:\"video/editor.min.css\";i:492;s:19:\"video/style-rtl.css\";i:493;s:23:\"video/style-rtl.min.css\";i:494;s:15:\"video/style.css\";i:495;s:19:\"video/style.min.css\";i:496;s:19:\"video/theme-rtl.css\";i:497;s:23:\"video/theme-rtl.min.css\";i:498;s:15:\"video/theme.css\";i:499;s:19:\"video/theme.min.css\";}}', 'yes'),
(124, 'recovery_keys', 'a:0:{}', 'yes'),
(126, 'theme_mods_twentytwentyfour', 'a:4:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1701255822;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";i:5;s:7:\"block-9\";}}}s:19:\"wp_classic_sidebars\";a:0:{}s:18:\"nav_menu_locations\";a:0:{}}', 'yes'),
(145, 'can_compress_scripts', '1', 'yes'),
(158, 'finished_updating_comment_type', '1', 'yes'),
(185, 'current_theme', '', 'yes'),
(186, 'theme_mods_perfect-portfolio', 'a:5:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1701253097;s:4:\"data\";a:9:{s:19:\"wp_inactive_widgets\";a:0:{}s:7:\"sidebar\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:5:\"about\";a:0:{}s:3:\"cta\";a:0:{}s:8:\"services\";a:1:{i:0;s:7:\"block-9\";}s:10:\"cta-footer\";a:0:{}s:10:\"footer-one\";a:0:{}s:10:\"footer-two\";a:0:{}s:12:\"footer-three\";a:0:{}}}s:12:\"social_links\";a:0:{}}', 'yes'),
(187, 'theme_switched', '', 'yes'),
(190, 'rtc_queue_flush_rewrite_rules', 'yes', 'yes'),
(191, 'recently_activated', 'a:2:{s:33:\"duplicate-post/duplicate-post.php\";i:1701786071;s:24:\"wordpress-seo/wp-seo.php\";i:1701786054;}', 'yes'),
(192, 'widget_raratheme_companion_cta_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(193, 'widget_rtc_contact_social_links', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(194, 'widget_raratheme_featured_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(195, 'widget_rrtc_icon_text_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(196, 'widget_raratheme_image_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(197, 'widget_raratheme_companion_stat_counter_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(198, 'widget_raratheme_popular_post', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(199, 'widget_raratheme_recent_post', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(200, 'widget_rtc_social_links', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(201, 'widget_rrtc_testimonial_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(202, 'widget_rrtc_description_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(203, 'widget_raratheme_client_logo_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(204, 'widget_raratheme_companion_faqs_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(205, 'widget_raratheme_featured_page_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(206, 'widget_rtc_pro_twitter_feeds_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(207, 'widget_rara_posts_category_slider_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(208, 'widget_raratheme_advertisement_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(209, 'widget_raratheme_author_bio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(210, 'widget_raratheme_custom_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(211, 'widget_raratheme_facebook_page_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(212, 'widget_raratheme_snapcode_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(213, 'widget_raratheme_pinterest_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(214, 'widget_raratheme_image_text_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(221, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.8.4\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1701116397;s:7:\"version\";s:5:\"5.8.3\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(242, 'theme_mods_fichier-enfant', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1701165973;s:4:\"data\";a:9:{s:19:\"wp_inactive_widgets\";a:0:{}s:7:\"sidebar\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:5:\"about\";a:0:{}s:3:\"cta\";a:0:{}s:8:\"services\";a:0:{}s:10:\"cta-footer\";a:0:{}s:10:\"footer-one\";a:0:{}s:10:\"footer-two\";a:0:{}s:12:\"footer-three\";a:0:{}}}}', 'yes'),
(259, 'theme_mods_perfect-porfolio-child', 'a:6:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:23;s:12:\"social_links\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1701180634;s:4:\"data\";a:9:{s:19:\"wp_inactive_widgets\";a:0:{}s:7:\"sidebar\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:5:\"about\";a:0:{}s:3:\"cta\";a:0:{}s:8:\"services\";a:0:{}s:10:\"cta-footer\";a:0:{}s:10:\"footer-one\";a:0:{}s:10:\"footer-two\";a:0:{}s:12:\"footer-three\";a:0:{}}}}', 'yes'),
(273, 'site_logo', '23', 'yes'),
(279, 'https_detection_errors', 'a:2:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:32:\"La vérification SSL a échoué.\";}s:17:\"bad_response_code\";a:1:{i:0;s:21:\"Internal Server Error\";}}', 'yes'),
(280, '_transient_health-check-site-status-result', '{\"good\":18,\"recommended\":4,\"critical\":1}', 'yes'),
(296, 'wp_calendar_block_has_published_posts', '1', 'yes'),
(310, 'perfect_portfolio_admin_notice', '1', 'yes'),
(316, 'theme_mods_elegant-portfolio', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1701252964;s:4:\"data\";a:10:{s:19:\"wp_inactive_widgets\";a:0:{}s:7:\"sidebar\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:5:\"about\";a:0:{}s:3:\"cta\";a:0:{}s:8:\"services\";a:1:{i:0;s:7:\"block-9\";}s:10:\"cta-footer\";a:0:{}s:10:\"footer-one\";a:0:{}s:10:\"footer-two\";a:0:{}s:12:\"footer-three\";a:0:{}s:7:\"contact\";a:0:{}}}}', 'yes'),
(361, 'duplicate_post_show_notice', '1', 'yes'),
(362, 'duplicate_post_copytitle', '1', 'yes'),
(363, 'duplicate_post_copydate', '0', 'yes'),
(364, 'duplicate_post_copystatus', '0', 'yes'),
(365, 'duplicate_post_copyslug', '0', 'yes'),
(366, 'duplicate_post_copyexcerpt', '1', 'yes'),
(367, 'duplicate_post_copycontent', '1', 'yes'),
(368, 'duplicate_post_copythumbnail', '1', 'yes'),
(369, 'duplicate_post_copytemplate', '1', 'yes'),
(370, 'duplicate_post_copyformat', '1', 'yes'),
(371, 'duplicate_post_copyauthor', '0', 'yes'),
(372, 'duplicate_post_copypassword', '0', 'yes'),
(373, 'duplicate_post_copyattachments', '0', 'yes'),
(374, 'duplicate_post_copychildren', '0', 'yes'),
(375, 'duplicate_post_copycomments', '0', 'yes'),
(376, 'duplicate_post_copymenuorder', '1', 'yes'),
(377, 'duplicate_post_taxonomies_blacklist', 'a:0:{}', 'yes'),
(378, 'duplicate_post_blacklist', '', 'yes'),
(379, 'duplicate_post_types_enabled', 'a:2:{i:0;s:4:\"post\";i:1;s:4:\"page\";}', 'yes'),
(380, 'duplicate_post_show_original_column', '0', 'yes'),
(381, 'duplicate_post_show_original_in_post_states', '0', 'yes'),
(382, 'duplicate_post_show_original_meta_box', '0', 'yes'),
(383, 'duplicate_post_show_link', 'a:3:{s:9:\"new_draft\";s:1:\"1\";s:5:\"clone\";s:1:\"1\";s:17:\"rewrite_republish\";s:1:\"1\";}', 'yes'),
(384, 'duplicate_post_show_link_in', 'a:4:{s:3:\"row\";s:1:\"1\";s:8:\"adminbar\";s:1:\"1\";s:9:\"submitbox\";s:1:\"1\";s:11:\"bulkactions\";s:1:\"1\";}', 'yes'),
(385, 'duplicate_post_version', '4.5', 'yes'),
(386, 'yoast_migrations_free', 'a:1:{s:7:\"version\";s:4:\"21.6\";}', 'yes'),
(387, 'wpseo', 'a:110:{s:8:\"tracking\";b:0;s:16:\"toggled_tracking\";b:0;s:22:\"license_server_version\";b:0;s:15:\"ms_defaults_set\";b:0;s:40:\"ignore_search_engines_discouraged_notice\";b:0;s:19:\"indexing_first_time\";b:1;s:16:\"indexing_started\";b:0;s:15:\"indexing_reason\";s:20:\"taxonomy_made_public\";s:29:\"indexables_indexing_completed\";b:1;s:13:\"index_now_key\";s:0:\"\";s:7:\"version\";s:4:\"21.6\";s:16:\"previous_version\";s:0:\"\";s:20:\"disableadvanced_meta\";b:1;s:30:\"enable_headless_rest_endpoints\";b:1;s:17:\"ryte_indexability\";b:0;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";s:0:\"\";s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:34:\"inclusive_language_analysis_active\";b:0;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:16:\"enable_index_now\";b:1;s:19:\"enable_ai_generator\";b:1;s:22:\"ai_enabled_pre_default\";b:0;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";i:1701247473;s:13:\"myyoast-oauth\";b:0;s:26:\"semrush_integration_active\";b:1;s:14:\"semrush_tokens\";a:0:{}s:20:\"semrush_country_code\";s:2:\"us\";s:19:\"permalink_structure\";s:36:\"/%year%/%monthnum%/%day%/%postname%/\";s:8:\"home_url\";s:26:\"http://localhost/wordpress\";s:18:\"dynamic_permalinks\";b:0;s:17:\"category_base_url\";s:0:\"\";s:12:\"tag_base_url\";s:0:\"\";s:21:\"custom_taxonomy_slugs\";a:0:{}s:29:\"enable_enhanced_slack_sharing\";b:1;s:25:\"zapier_integration_active\";b:0;s:19:\"zapier_subscription\";a:0:{}s:14:\"zapier_api_key\";s:0:\"\";s:23:\"enable_metabox_insights\";b:1;s:23:\"enable_link_suggestions\";b:1;s:26:\"algolia_integration_active\";b:0;s:14:\"import_cursors\";a:0:{}s:13:\"workouts_data\";a:1:{s:13:\"configuration\";a:1:{s:13:\"finishedSteps\";a:0:{}}}s:28:\"configuration_finished_steps\";a:0:{}s:36:\"dismiss_configuration_workout_notice\";b:0;s:34:\"dismiss_premium_deactivated_notice\";b:0;s:19:\"importing_completed\";a:0:{}s:26:\"wincher_integration_active\";b:1;s:14:\"wincher_tokens\";a:0:{}s:36:\"wincher_automatically_add_keyphrases\";b:0;s:18:\"wincher_website_id\";s:0:\"\";s:28:\"wordproof_integration_active\";b:0;s:29:\"wordproof_integration_changed\";b:0;s:18:\"first_time_install\";b:1;s:34:\"should_redirect_after_install_free\";b:0;s:34:\"activation_redirect_timestamp_free\";i:1701247474;s:18:\"remove_feed_global\";b:0;s:27:\"remove_feed_global_comments\";b:0;s:25:\"remove_feed_post_comments\";b:0;s:19:\"remove_feed_authors\";b:0;s:22:\"remove_feed_categories\";b:0;s:16:\"remove_feed_tags\";b:0;s:29:\"remove_feed_custom_taxonomies\";b:0;s:22:\"remove_feed_post_types\";b:0;s:18:\"remove_feed_search\";b:0;s:21:\"remove_atom_rdf_feeds\";b:0;s:17:\"remove_shortlinks\";b:0;s:21:\"remove_rest_api_links\";b:0;s:20:\"remove_rsd_wlw_links\";b:0;s:19:\"remove_oembed_links\";b:0;s:16:\"remove_generator\";b:0;s:20:\"remove_emoji_scripts\";b:0;s:24:\"remove_powered_by_header\";b:0;s:22:\"remove_pingback_header\";b:0;s:28:\"clean_campaign_tracking_urls\";b:0;s:16:\"clean_permalinks\";b:0;s:32:\"clean_permalinks_extra_variables\";s:0:\"\";s:14:\"search_cleanup\";b:0;s:20:\"search_cleanup_emoji\";b:0;s:23:\"search_cleanup_patterns\";b:0;s:22:\"search_character_limit\";i:50;s:20:\"deny_search_crawling\";b:0;s:21:\"deny_wp_json_crawling\";b:0;s:20:\"deny_adsbot_crawling\";b:0;s:19:\"deny_ccbot_crawling\";b:0;s:29:\"deny_google_extended_crawling\";b:0;s:20:\"deny_gptbot_crawling\";b:0;s:27:\"redirect_search_pretty_urls\";b:0;s:29:\"least_readability_ignore_list\";a:0:{}s:27:\"least_seo_score_ignore_list\";a:0:{}s:23:\"most_linked_ignore_list\";a:0:{}s:24:\"least_linked_ignore_list\";a:0:{}s:28:\"indexables_page_reading_list\";a:5:{i:0;b:0;i:1;b:0;i:2;b:0;i:3;b:0;i:4;b:0;}s:25:\"indexables_overview_state\";s:21:\"dashboard-not-visited\";s:28:\"last_known_public_post_types\";a:3:{i:0;s:4:\"post\";i:1;s:4:\"page\";i:2;s:7:\"voiture\";}s:28:\"last_known_public_taxonomies\";a:4:{i:0;s:8:\"category\";i:1;s:8:\"post_tag\";i:2;s:11:\"post_format\";i:3;s:6:\"marque\";}s:23:\"last_known_no_unindexed\";a:6:{s:40:\"wpseo_total_unindexed_post_type_archives\";i:1701764885;s:31:\"wpseo_unindexed_term_link_count\";i:1701780478;s:31:\"wpseo_unindexed_post_link_count\";i:1701764885;s:35:\"wpseo_total_unindexed_general_items\";i:1701764885;s:27:\"wpseo_total_unindexed_posts\";i:1701786044;s:27:\"wpseo_total_unindexed_terms\";i:1701786044;}s:14:\"new_post_types\";a:1:{i:2;s:7:\"voiture\";}s:14:\"new_taxonomies\";a:1:{i:3;s:6:\"marque\";}s:34:\"show_new_content_type_notification\";b:1;}', 'yes'),
(388, 'wpseo_titles', 'a:137:{s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:50:\"%%name%%, auteur/autrice sur %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:65:\"Vous avez cherché %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:38:\"Page non trouvée %%sep%% %%sitename%%\";s:25:\"social-title-author-wpseo\";s:8:\"%%name%%\";s:26:\"social-title-archive-wpseo\";s:8:\"%%date%%\";s:31:\"social-description-author-wpseo\";s:0:\"\";s:32:\"social-description-archive-wpseo\";s:0:\"\";s:29:\"social-image-url-author-wpseo\";s:0:\"\";s:30:\"social-image-url-archive-wpseo\";s:0:\"\";s:28:\"social-image-id-author-wpseo\";i:0;s:29:\"social-image-id-archive-wpseo\";i:0;s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:64:\"L’article %%POSTLINK%% est apparu en premier sur %%BLOGLINK%%.\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:1;s:20:\"breadcrumbs-404crumb\";s:30:\"Erreur 404 : Page introuvable\";s:29:\"breadcrumbs-display-blog-page\";b:1;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:13:\"Archives pour\";s:18:\"breadcrumbs-enable\";b:1;s:16:\"breadcrumbs-home\";s:7:\"Accueil\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:18:\"Vous avez cherché\";s:15:\"breadcrumbs-sep\";s:2:\"»\";s:12:\"website_name\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:11:\"person_logo\";s:0:\"\";s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:0:\"\";s:12:\"company_name\";s:0:\"\";s:22:\"company_alternate_name\";s:0:\"\";s:17:\"company_or_person\";s:7:\"company\";s:25:\"company_or_person_user_id\";b:0;s:17:\"stripcategorybase\";b:0;s:26:\"open_graph_frontpage_title\";s:12:\"%%sitename%%\";s:25:\"open_graph_frontpage_desc\";s:0:\"\";s:26:\"open_graph_frontpage_image\";s:0:\"\";s:24:\"publishing_principles_id\";i:0;s:25:\"ownership_funding_info_id\";i:0;s:29:\"actionable_feedback_policy_id\";i:0;s:21:\"corrections_policy_id\";i:0;s:16:\"ethics_policy_id\";i:0;s:19:\"diversity_policy_id\";i:0;s:28:\"diversity_staffing_report_id\";i:0;s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:23:\"display-metabox-pt-post\";b:1;s:23:\"post_types-post-maintax\";i:0;s:21:\"schema-page-type-post\";s:7:\"WebPage\";s:24:\"schema-article-type-post\";s:7:\"Article\";s:17:\"social-title-post\";s:9:\"%%title%%\";s:23:\"social-description-post\";s:0:\"\";s:21:\"social-image-url-post\";s:0:\"\";s:20:\"social-image-id-post\";i:0;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:23:\"post_types-page-maintax\";i:0;s:21:\"schema-page-type-page\";s:7:\"WebPage\";s:24:\"schema-article-type-page\";s:4:\"None\";s:17:\"social-title-page\";s:9:\"%%title%%\";s:23:\"social-description-page\";s:0:\"\";s:21:\"social-image-url-page\";s:0:\"\";s:20:\"social-image-id-page\";i:0;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:29:\"post_types-attachment-maintax\";i:0;s:27:\"schema-page-type-attachment\";s:7:\"WebPage\";s:30:\"schema-article-type-attachment\";s:4:\"None\";s:20:\"title-rara-portfolio\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:23:\"metadesc-rara-portfolio\";s:0:\"\";s:22:\"noindex-rara-portfolio\";b:0;s:33:\"display-metabox-pt-rara-portfolio\";b:1;s:33:\"post_types-rara-portfolio-maintax\";i:0;s:31:\"schema-page-type-rara-portfolio\";s:7:\"WebPage\";s:34:\"schema-article-type-rara-portfolio\";s:4:\"None\";s:27:\"social-title-rara-portfolio\";s:9:\"%%title%%\";s:33:\"social-description-rara-portfolio\";s:0:\"\";s:31:\"social-image-url-rara-portfolio\";s:0:\"\";s:30:\"social-image-id-rara-portfolio\";i:0;s:18:\"title-tax-category\";s:57:\"Archives des %%term_title%% %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:25:\"social-title-tax-category\";s:27:\"Archives des %%term_title%%\";s:31:\"social-description-tax-category\";s:0:\"\";s:29:\"social-image-url-tax-category\";s:0:\"\";s:28:\"social-image-id-tax-category\";i:0;s:26:\"taxonomy-category-ptparent\";i:0;s:18:\"title-tax-post_tag\";s:57:\"Archives des %%term_title%% %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:25:\"social-title-tax-post_tag\";s:27:\"Archives des %%term_title%%\";s:31:\"social-description-tax-post_tag\";s:0:\"\";s:29:\"social-image-url-tax-post_tag\";s:0:\"\";s:28:\"social-image-id-tax-post_tag\";i:0;s:26:\"taxonomy-post_tag-ptparent\";i:0;s:21:\"title-tax-post_format\";s:57:\"Archives des %%term_title%% %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:1;s:23:\"noindex-tax-post_format\";b:1;s:28:\"social-title-tax-post_format\";s:27:\"Archives des %%term_title%%\";s:34:\"social-description-tax-post_format\";s:0:\"\";s:32:\"social-image-url-tax-post_format\";s:0:\"\";s:31:\"social-image-id-tax-post_format\";i:0;s:29:\"taxonomy-post_format-ptparent\";i:0;s:35:\"title-tax-rara_portfolio_categories\";s:57:\"Archives des %%term_title%% %%page%% %%sep%% %%sitename%%\";s:38:\"metadesc-tax-rara_portfolio_categories\";s:0:\"\";s:45:\"display-metabox-tax-rara_portfolio_categories\";b:1;s:37:\"noindex-tax-rara_portfolio_categories\";b:0;s:42:\"social-title-tax-rara_portfolio_categories\";s:27:\"Archives des %%term_title%%\";s:48:\"social-description-tax-rara_portfolio_categories\";s:0:\"\";s:46:\"social-image-url-tax-rara_portfolio_categories\";s:0:\"\";s:45:\"social-image-id-tax-rara_portfolio_categories\";i:0;s:43:\"taxonomy-rara_portfolio_categories-ptparent\";i:0;s:14:\"person_logo_id\";i:0;s:15:\"company_logo_id\";i:0;s:17:\"company_logo_meta\";b:0;s:16:\"person_logo_meta\";b:0;s:29:\"open_graph_frontpage_image_id\";i:0;}', 'yes'),
(389, 'wpseo_social', 'a:20:{s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:19:\"og_default_image_id\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:21:\"og_frontpage_image_id\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:13:\"wikipedia_url\";s:0:\"\";s:17:\"other_social_urls\";a:0:{}s:12:\"mastodon_url\";s:0:\"\";}', 'yes'),
(413, 'theme_mods_twentytwentytwo', 'a:4:{i:0;b:0;s:19:\"wp_classic_sidebars\";a:1:{s:7:\"contact\";a:11:{s:4:\"name\";s:15:\"Section Contact\";s:2:\"id\";s:7:\"contact\";s:11:\"description\";s:113:\"Ajouter un widget texte pour le formulaire de contact et « Rara : Widget de contact » pour les coordonnées.\";s:5:\"class\";s:0:\"\";s:13:\"before_widget\";s:39:\"<section id=\"%1$s\" class=\"widget %2$s\">\";s:12:\"after_widget\";s:10:\"</section>\";s:12:\"before_title\";s:41:\"<h2 class=\"widget-title\" itemprop=\"name\">\";s:11:\"after_title\";s:5:\"</h2>\";s:14:\"before_sidebar\";s:0:\"\";s:13:\"after_sidebar\";s:0:\"\";s:12:\"show_in_rest\";b:0;}}s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1701249108;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:7:\"block-9\";i:1;s:7:\"block-2\";i:2;s:7:\"block-3\";i:3;s:7:\"block-4\";i:4;s:7:\"block-5\";i:5;s:7:\"block-6\";}s:7:\"contact\";a:0:{}}}}', 'yes'),
(450, 'theme_mods_jaxon', 'a:5:{i:0;b:0;s:19:\"wp_classic_sidebars\";a:8:{s:7:\"sidebar\";a:11:{s:4:\"name\";s:5:\"Barre\";s:2:\"id\";s:7:\"sidebar\";s:11:\"description\";s:17:\"Barre par défaut\";s:5:\"class\";s:0:\"\";s:13:\"before_widget\";s:39:\"<section id=\"%1$s\" class=\"widget %2$s\">\";s:12:\"after_widget\";s:10:\"</section>\";s:12:\"before_title\";s:41:\"<h2 class=\"widget-title\" itemprop=\"name\">\";s:11:\"after_title\";s:5:\"</h2>\";s:14:\"before_sidebar\";s:0:\"\";s:13:\"after_sidebar\";s:0:\"\";s:12:\"show_in_rest\";b:0;}s:5:\"about\";a:11:{s:4:\"name\";s:17:\"Section à propos\";s:2:\"id\";s:5:\"about\";s:11:\"description\";s:77:\"Ajoutez le widget « Rara : Texte d’icône » pour la section à propos.\";s:5:\"class\";s:0:\"\";s:13:\"before_widget\";s:39:\"<section id=\"%1$s\" class=\"widget %2$s\">\";s:12:\"after_widget\";s:10:\"</section>\";s:12:\"before_title\";s:41:\"<h2 class=\"widget-title\" itemprop=\"name\">\";s:11:\"after_title\";s:5:\"</h2>\";s:14:\"before_sidebar\";s:0:\"\";s:13:\"after_sidebar\";s:0:\"\";s:12:\"show_in_rest\";b:0;}s:3:\"cta\";a:11:{s:4:\"name\";s:27:\"Section d’appel à action\";s:2:\"id\";s:3:\"cta\";s:11:\"description\";s:84:\"Ajoutez le widget « Rara : Appel à action» pour la section d’appel à action.\";s:5:\"class\";s:0:\"\";s:13:\"before_widget\";s:39:\"<section id=\"%1$s\" class=\"widget %2$s\">\";s:12:\"after_widget\";s:10:\"</section>\";s:12:\"before_title\";s:41:\"<h2 class=\"widget-title\" itemprop=\"name\">\";s:11:\"after_title\";s:5:\"</h2>\";s:14:\"before_sidebar\";s:0:\"\";s:13:\"after_sidebar\";s:0:\"\";s:12:\"show_in_rest\";b:0;}s:8:\"services\";a:11:{s:4:\"name\";s:18:\"Section de service\";s:2:\"id\";s:8:\"services\";s:11:\"description\";s:80:\"Ajoutez le widget « Rara : Texte d’icône » pour la section des services.\";s:5:\"class\";s:0:\"\";s:13:\"before_widget\";s:39:\"<section id=\"%1$s\" class=\"widget %2$s\">\";s:12:\"after_widget\";s:10:\"</section>\";s:12:\"before_title\";s:41:\"<h2 class=\"widget-title\" itemprop=\"name\">\";s:11:\"after_title\";s:5:\"</h2>\";s:14:\"before_sidebar\";s:0:\"\";s:13:\"after_sidebar\";s:0:\"\";s:12:\"show_in_rest\";b:0;}s:10:\"cta-footer\";a:11:{s:4:\"name\";s:23:\"Appel à action du pied\";s:2:\"id\";s:10:\"cta-footer\";s:11:\"description\";s:85:\"Ajoutez le widget « Rara : Appel à action » dans le pied de pages spécifiques.\";s:5:\"class\";s:0:\"\";s:13:\"before_widget\";s:39:\"<section id=\"%1$s\" class=\"widget %2$s\">\";s:12:\"after_widget\";s:10:\"</section>\";s:12:\"before_title\";s:41:\"<h2 class=\"widget-title\" itemprop=\"name\">\";s:11:\"after_title\";s:5:\"</h2>\";s:14:\"before_sidebar\";s:0:\"\";s:13:\"after_sidebar\";s:0:\"\";s:12:\"show_in_rest\";b:0;}s:10:\"footer-one\";a:11:{s:4:\"name\";s:6:\"Pied 1\";s:2:\"id\";s:10:\"footer-one\";s:11:\"description\";s:34:\"Ajoutez des widgets de pied 1 ici.\";s:5:\"class\";s:0:\"\";s:13:\"before_widget\";s:39:\"<section id=\"%1$s\" class=\"widget %2$s\">\";s:12:\"after_widget\";s:10:\"</section>\";s:12:\"before_title\";s:41:\"<h2 class=\"widget-title\" itemprop=\"name\">\";s:11:\"after_title\";s:5:\"</h2>\";s:14:\"before_sidebar\";s:0:\"\";s:13:\"after_sidebar\";s:0:\"\";s:12:\"show_in_rest\";b:0;}s:10:\"footer-two\";a:11:{s:4:\"name\";s:6:\"Pied 2\";s:2:\"id\";s:10:\"footer-two\";s:11:\"description\";s:34:\"Ajoutez des widgets de pied 2 ici.\";s:5:\"class\";s:0:\"\";s:13:\"before_widget\";s:39:\"<section id=\"%1$s\" class=\"widget %2$s\">\";s:12:\"after_widget\";s:10:\"</section>\";s:12:\"before_title\";s:41:\"<h2 class=\"widget-title\" itemprop=\"name\">\";s:11:\"after_title\";s:5:\"</h2>\";s:14:\"before_sidebar\";s:0:\"\";s:13:\"after_sidebar\";s:0:\"\";s:12:\"show_in_rest\";b:0;}s:12:\"footer-three\";a:11:{s:4:\"name\";s:6:\"Pied 3\";s:2:\"id\";s:12:\"footer-three\";s:11:\"description\";s:34:\"Ajoutez des widgets de pied 3 ici.\";s:5:\"class\";s:0:\"\";s:13:\"before_widget\";s:39:\"<section id=\"%1$s\" class=\"widget %2$s\">\";s:12:\"after_widget\";s:10:\"</section>\";s:12:\"before_title\";s:41:\"<h2 class=\"widget-title\" itemprop=\"name\">\";s:11:\"after_title\";s:5:\"</h2>\";s:14:\"before_sidebar\";s:0:\"\";s:13:\"after_sidebar\";s:0:\"\";s:12:\"show_in_rest\";b:0;}}s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1701255670;s:4:\"data\";a:9:{s:19:\"wp_inactive_widgets\";a:0:{}s:7:\"sidebar\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:5:\"about\";a:0:{}s:3:\"cta\";a:0:{}s:8:\"services\";a:1:{i:0;s:7:\"block-9\";}s:10:\"cta-footer\";a:0:{}s:10:\"footer-one\";a:0:{}s:10:\"footer-two\";a:0:{}s:12:\"footer-three\";a:0:{}}}}', 'yes'),
(451, 'jaxon_install', '1701253098', 'yes'),
(469, 'theme_mods_portfolio3-wp/wordpress', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(472, 'theme_mods_portfolio3-wp', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(624, 'gutenberg_version_migration', '9.8.0', 'yes'),
(760, 'acf_version', '6.2.4', 'yes'),
(818, 'recovery_mode_email_last_sent', '1701857689', 'yes'),
(819, 'Marque_children', 'a:0:{}', 'yes'),
(838, 'competence_children', 'a:0:{}', 'yes'),
(869, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:24:\"agustin.wdwm48@gmail.com\";s:7:\"version\";s:5:\"6.4.2\";s:9:\"timestamp\";i:1702114910;}', 'no'),
(886, '_site_transient_timeout_theme_roots', '1706112426', 'no'),
(887, '_site_transient_theme_roots', 'a:7:{s:17:\"elegant-portfolio\";s:7:\"/themes\";s:5:\"jaxon\";s:7:\"/themes\";s:17:\"perfect-portfolio\";s:7:\"/themes\";s:13:\"portfolio3-wp\";s:7:\"/themes\";s:16:\"twentytwentyfour\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'no'),
(889, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-6.4.2.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-6.4.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.4.2\";s:7:\"version\";s:5:\"6.4.2\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.4\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1706110634;s:15:\"version_checked\";s:5:\"6.4.2\";s:12:\"translations\";a:0:{}}', 'no'),
(890, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1706110634;s:7:\"checked\";a:7:{s:17:\"elegant-portfolio\";s:5:\"1.0.5\";s:5:\"jaxon\";s:5:\"1.0.2\";s:17:\"perfect-portfolio\";s:5:\"1.2.0\";s:13:\"portfolio3-wp\";s:0:\"\";s:16:\"twentytwentyfour\";s:3:\"1.0\";s:17:\"twentytwentythree\";s:3:\"1.3\";s:15:\"twentytwentytwo\";s:3:\"1.6\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:6:{s:17:\"elegant-portfolio\";a:6:{s:5:\"theme\";s:17:\"elegant-portfolio\";s:11:\"new_version\";s:5:\"1.0.5\";s:3:\"url\";s:47:\"https://wordpress.org/themes/elegant-portfolio/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/theme/elegant-portfolio.1.0.5.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:3:\"5.6\";}s:5:\"jaxon\";a:6:{s:5:\"theme\";s:5:\"jaxon\";s:11:\"new_version\";s:5:\"1.0.2\";s:3:\"url\";s:35:\"https://wordpress.org/themes/jaxon/\";s:7:\"package\";s:53:\"https://downloads.wordpress.org/theme/jaxon.1.0.2.zip\";s:8:\"requires\";s:3:\"5.5\";s:12:\"requires_php\";s:3:\"7.0\";}s:17:\"perfect-portfolio\";a:6:{s:5:\"theme\";s:17:\"perfect-portfolio\";s:11:\"new_version\";s:5:\"1.2.0\";s:3:\"url\";s:47:\"https://wordpress.org/themes/perfect-portfolio/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/theme/perfect-portfolio.1.2.0.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:3:\"5.6\";}s:16:\"twentytwentyfour\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfour\";s:11:\"new_version\";s:3:\"1.0\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfour/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfour.1.0.zip\";s:8:\"requires\";s:3:\"6.4\";s:12:\"requires_php\";s:3:\"7.0\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.3.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.6.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(891, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1706110635;s:8:\"response\";a:5:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"6.2.5\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.6.2.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=2892919\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=2892919\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";s:6:\"tested\";s:5:\"6.4.2\";s:12:\"requires_php\";s:3:\"7.0\";s:14:\"upgrade_notice\";s:245:\"<p>From ACF 6.2.5, the shortcode will now escape unsafe HTML automatically. This may be a breaking change. Please view <a href=\"https://www.advancedcustomfields.com/blog/acf-6-2-5-security-release/\">our release blog</a> for more information.</p>\";}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"5.3.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.5.3.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/akismet/assets/banner-1544x500.png?rev=2900731\";s:2:\"1x\";s:62:\"https://ps.w.org/akismet/assets/banner-772x250.png?rev=2900731\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";s:6:\"tested\";s:5:\"6.4.2\";s:12:\"requires_php\";s:6:\"5.6.20\";}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.8.6\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.8.6.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.2\";s:6:\"tested\";s:5:\"6.4.2\";s:12:\"requires_php\";s:3:\"7.4\";}s:23:\"gutenberg/gutenberg.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:23:\"w.org/plugins/gutenberg\";s:4:\"slug\";s:9:\"gutenberg\";s:6:\"plugin\";s:23:\"gutenberg/gutenberg.php\";s:11:\"new_version\";s:6:\"17.5.1\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/gutenberg/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/gutenberg.17.5.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:62:\"https://ps.w.org/gutenberg/assets/icon-256x256.jpg?rev=1776042\";s:2:\"1x\";s:62:\"https://ps.w.org/gutenberg/assets/icon-128x128.jpg?rev=1776042\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/gutenberg/assets/banner-1544x500.jpg?rev=1718710\";s:2:\"1x\";s:64:\"https://ps.w.org/gutenberg/assets/banner-772x250.jpg?rev=1718710\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.3\";s:6:\"tested\";s:5:\"6.4.2\";s:12:\"requires_php\";s:3:\"7.0\";}s:24:\"wordpress-seo/wp-seo.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:27:\"w.org/plugins/wordpress-seo\";s:4:\"slug\";s:13:\"wordpress-seo\";s:6:\"plugin\";s:24:\"wordpress-seo/wp-seo.php\";s:11:\"new_version\";s:4:\"21.9\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wordpress-seo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wordpress-seo.21.9.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";s:3:\"svg\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=2643727\";s:2:\"1x\";s:68:\"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=2643727\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=2643727\";s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=2643727\";}s:8:\"requires\";s:3:\"6.3\";s:6:\"tested\";s:5:\"6.4.2\";s:12:\"requires_php\";s:5:\"7.2.5\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}s:57:\"rara-one-click-demo-import/rara-one-click-demo-import.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:40:\"w.org/plugins/rara-one-click-demo-import\";s:4:\"slug\";s:26:\"rara-one-click-demo-import\";s:6:\"plugin\";s:57:\"rara-one-click-demo-import/rara-one-click-demo-import.php\";s:11:\"new_version\";s:5:\"1.3.3\";s:3:\"url\";s:57:\"https://wordpress.org/plugins/rara-one-click-demo-import/\";s:7:\"package\";s:75:\"https://downloads.wordpress.org/plugin/rara-one-click-demo-import.1.3.3.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:79:\"https://ps.w.org/rara-one-click-demo-import/assets/icon-128x128.png?rev=1939066\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:81:\"https://ps.w.org/rara-one-click-demo-import/assets/banner-772x250.png?rev=1939071\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:5:\"4.4.0\";}s:43:\"raratheme-companion/raratheme-companion.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:33:\"w.org/plugins/raratheme-companion\";s:4:\"slug\";s:19:\"raratheme-companion\";s:6:\"plugin\";s:43:\"raratheme-companion/raratheme-companion.php\";s:11:\"new_version\";s:5:\"1.4.2\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/raratheme-companion/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/raratheme-companion.1.4.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/raratheme-companion/assets/icon-256x256.png?rev=1858916\";s:2:\"1x\";s:72:\"https://ps.w.org/raratheme-companion/assets/icon-128x128.png?rev=1858915\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/raratheme-companion/assets/banner-1544x500.png?rev=1858912\";s:2:\"1x\";s:74:\"https://ps.w.org/raratheme-companion/assets/banner-772x250.png?rev=1858911\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:5:\"4.4.0\";}s:33:\"duplicate-post/duplicate-post.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/duplicate-post\";s:4:\"slug\";s:14:\"duplicate-post\";s:6:\"plugin\";s:33:\"duplicate-post/duplicate-post.php\";s:11:\"new_version\";s:3:\"4.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/duplicate-post/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/duplicate-post.4.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/duplicate-post/assets/icon-256x256.png?rev=2336666\";s:2:\"1x\";s:67:\"https://ps.w.org/duplicate-post/assets/icon-128x128.png?rev=2336666\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/duplicate-post/assets/banner-1544x500.png?rev=2336666\";s:2:\"1x\";s:69:\"https://ps.w.org/duplicate-post/assets/banner-772x250.png?rev=2336666\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.3\";}}s:7:\"checked\";a:9:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"6.2.4\";s:19:\"akismet/akismet.php\";s:3:\"5.3\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.8.4\";s:23:\"gutenberg/gutenberg.php\";s:6:\"17.1.3\";s:9:\"hello.php\";s:5:\"1.7.2\";s:57:\"rara-one-click-demo-import/rara-one-click-demo-import.php\";s:5:\"1.3.3\";s:43:\"raratheme-companion/raratheme-companion.php\";s:5:\"1.4.2\";s:33:\"duplicate-post/duplicate-post.php\";s:3:\"4.5\";s:24:\"wordpress-seo/wp-seo.php\";s:4:\"21.6\";}}', 'no'),
(892, '_site_transient_timeout_php_check_f9b25a35946393ab2b3328e72e3e778a', '1706715436', 'no'),
(893, '_site_transient_php_check_f9b25a35946393ab2b3328e72e3e778a', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:3:\"7.0\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no');

-- --------------------------------------------------------

--
-- Structure de la table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 6, '_edit_lock', '1701099779:1'),
(5, 10, '_form', '<label> Votre nom\n    [text* your-name autocomplete:name] </label>\n\n<label> Votre e-mail\n    [email* your-email autocomplete:email] </label>\n\n<label> Objet\n    [text* your-subject] </label>\n\n<label> Votre message (facultatif)\n    [textarea your-message] </label>\n\n[submit \"Envoyer\"]'),
(6, 10, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:40:\"[_site_title] <agustin.wdwm48@gmail.com>\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:4:\"body\";s:197:\"De : [your-name] [your-email]\nObjet : [your-subject]\n\nCorps du message :\n[your-message]\n\n-- \nThis is a notification that a contact form was submitted on your website ([_site_title] [_site_url]).\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(7, 10, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:40:\"[_site_title] <agustin.wdwm48@gmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:226:\"Corps du message :\n[your-message]\n\n-- \nThis email is a receipt for your contact form submission on our website ([_site_title] [_site_url]) in which your email address was used. If that was not you, please ignore this message.\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(8, 10, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:45:\"Merci pour votre message. Il a été envoyé.\";s:12:\"mail_sent_ng\";s:102:\"Une erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.\";s:16:\"validation_error\";s:88:\"Un ou plusieurs champs contiennent une erreur. Veuillez vérifier et essayer à nouveau.\";s:4:\"spam\";s:102:\"Une erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.\";s:12:\"accept_terms\";s:77:\"Vous devez accepter les termes et conditions avant d’envoyer votre message.\";s:16:\"invalid_required\";s:29:\"Veuillez renseigner ce champ.\";s:16:\"invalid_too_long\";s:34:\"Ce champ a une saisie trop longue.\";s:17:\"invalid_too_short\";s:34:\"Ce champ a une saisie trop courte.\";s:13:\"upload_failed\";s:72:\"Une erreur inconnue s’est produite lors du téléversement du fichier.\";s:24:\"upload_file_type_invalid\";s:79:\"Vous n’avez pas les droits nécessaires pour téléverser ce type de fichier.\";s:21:\"upload_file_too_large\";s:44:\"Le fichier téléversé est trop volumineux.\";s:23:\"upload_failed_php_error\";s:63:\"Une erreur s’est produite lors du téléversement du fichier.\";s:12:\"invalid_date\";s:46:\"Veuillez saisir une date au format AAAA-MM-JJ.\";s:14:\"date_too_early\";s:34:\"La date de ce champ est trop tôt.\";s:13:\"date_too_late\";s:37:\"La date de ce champ est trop tardive.\";s:14:\"invalid_number\";s:27:\"Veuillez saisir un numéro.\";s:16:\"number_too_small\";s:38:\"Le chiffre de ce champ est trop petit.\";s:16:\"number_too_large\";s:32:\"Ce champ a un numéro trop long.\";s:23:\"quiz_answer_not_correct\";s:42:\"La réponse à la question est incorrecte.\";s:13:\"invalid_email\";s:37:\"Veuillez saisir votre adresse e-mail.\";s:11:\"invalid_url\";s:24:\"Veuillez saisisr une URL\";s:11:\"invalid_tel\";s:42:\"Veuillez saisir un numéro de téléphone.\";}'),
(9, 10, '_additional_settings', ''),
(10, 10, '_locale', 'fr_FR'),
(11, 10, '_hash', '2eaffae7c8e247ced377dc474f2c9488bdc8c433'),
(12, 11, '_edit_lock', '1701184619:1'),
(13, 11, '_edit_last', '1'),
(14, 11, '_perfect_portfolio_sidebar_layout', 'left-sidebar'),
(18, 15, '_edit_lock', '1701180136:1'),
(19, 15, '_edit_last', '1'),
(20, 15, '_perfect_portfolio_sidebar_layout', 'default-sidebar'),
(21, 17, '_edit_lock', '1701359907:2'),
(22, 17, '_edit_last', '2'),
(23, 17, '_perfect_portfolio_sidebar_layout', 'default-sidebar'),
(25, 15, 'footnotes', ''),
(26, 23, '_wp_attached_file', '2023/11/pexels-roman-odintsov-6898854.jpg'),
(27, 23, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:4230;s:6:\"height\";i:4480;s:4:\"file\";s:41:\"2023/11/pexels-roman-odintsov-6898854.jpg\";s:8:\"filesize\";i:4618044;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(28, 1, '_raratheme_view_count', '4'),
(42, 35, '_wp_attached_file', '2023/11/pexels-willo-m-953457.jpg'),
(43, 35, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2985;s:6:\"height\";i:3731;s:4:\"file\";s:33:\"2023/11/pexels-willo-m-953457.jpg\";s:8:\"filesize\";i:913834;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(44, 36, '_wp_attached_file', '2023/11/pexels-picography-4776.jpg'),
(45, 36, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:3000;s:6:\"height\";i:2123;s:4:\"file\";s:34:\"2023/11/pexels-picography-4776.jpg\";s:8:\"filesize\";i:383316;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(46, 38, '_dp_original', '6'),
(47, 38, '_edit_lock', '1701247641:1'),
(48, 38, '_raratheme_view_count', '1'),
(49, 41, '_wp_attached_file', '2023/11/avatar_Agustin.png'),
(50, 41, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:900;s:6:\"height\";i:960;s:4:\"file\";s:26:\"2023/11/avatar_Agustin.png\";s:8:\"filesize\";i:77568;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(52, 43, '_wp_attached_file', '2023/11/avatar_Agustin-1.png'),
(53, 43, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:900;s:6:\"height\";i:960;s:4:\"file\";s:28:\"2023/11/avatar_Agustin-1.png\";s:8:\"filesize\";i:77568;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(54, 44, '_edit_lock', '1701352975:2'),
(55, 44, '_edit_last', '2'),
(56, 44, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(57, 44, '_yoast_wpseo_wordproof_timestamp', ''),
(58, 46, '_edit_lock', '1701273418:2'),
(59, 46, '_edit_last', '2'),
(60, 46, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(61, 46, '_yoast_wpseo_wordproof_timestamp', ''),
(62, 48, '_wp_attached_file', '2023/11/signature.png'),
(63, 48, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:428;s:6:\"height\";i:703;s:4:\"file\";s:21:\"2023/11/signature.png\";s:8:\"filesize\";i:10681;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(64, 49, '_wp_attached_file', '2023/11/signature-favicon.jpg'),
(65, 49, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:432;s:6:\"height\";i:432;s:4:\"file\";s:29:\"2023/11/signature-favicon.jpg\";s:8:\"filesize\";i:6267;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(66, 50, '_wp_attached_file', '2023/11/portfolio-draw.png'),
(67, 50, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2412;s:6:\"height\";i:2549;s:4:\"file\";s:26:\"2023/11/portfolio-draw.png\";s:8:\"filesize\";i:1471665;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(69, 17, '_yoast_wpseo_estimated-reading-time-minutes', '1'),
(70, 17, '_yoast_wpseo_wordproof_timestamp', ''),
(71, 17, '_yoast_wpseo_content_score', '90'),
(73, 56, '_edit_lock', '1701783089:2'),
(74, 56, '_edit_last', '2'),
(76, 62, '_edit_lock', '1701785446:2'),
(77, 62, '_edit_last', '2'),
(79, 64, '_edit_lock', '1701786273:2'),
(80, 64, '_edit_last', '2'),
(97, 82, '_edit_lock', '1701786371:2'),
(98, 82, '_edit_last', '2'),
(99, 82, 'prix', '1000000'),
(100, 82, '_prix', 'field_656f29b98690f'),
(103, 85, '_edit_lock', '1701879302:2'),
(104, 85, '_edit_last', '2'),
(107, 88, '_edit_lock', '1701879113:2'),
(108, 88, '_edit_last', '2'),
(110, 98, '_edit_lock', '1701858209:2'),
(111, 98, '_edit_last', '2'),
(112, 100, '_edit_lock', '1701788837:2'),
(113, 100, '_edit_last', '2'),
(114, 102, '_edit_lock', '1701789661:2'),
(115, 103, '_edit_lock', '1701880452:2'),
(116, 104, '_wp_attached_file', '2023/12/photo1.png'),
(117, 104, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:159;s:6:\"height\";i:174;s:4:\"file\";s:18:\"2023/12/photo1.png\";s:8:\"filesize\";i:60069;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(118, 105, '_wp_attached_file', '2023/12/TEST.txt'),
(119, 105, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:55;}'),
(120, 103, '_edit_last', '2'),
(121, 103, 'nom', 'Sanchez Pérez'),
(122, 103, '_nom', 'field_656f3ab7ac00f'),
(123, 103, 'prenom', 'Juan'),
(124, 103, '_prenom', 'field_656f3b02084fa'),
(125, 103, 'extrait', 'jeune, courageux, en pleine force de l\'age'),
(126, 103, '_extrait', 'field_656f3b19857a1'),
(127, 103, 'lien_vers_linkedin', 'https://linkedin.com/apprenant_fictif_1'),
(128, 103, '_lien_vers_linkedin', 'field_656f3b42c8066'),
(129, 103, 'photo', '104'),
(130, 103, '_photo', 'field_656f3b8d3511a'),
(131, 103, 'lien_vers_le_portfolio', 'https://github.com/apprenant_fictif_1'),
(132, 103, '_lien_vers_le_portfolio', 'field_656f3bb3ae92b'),
(133, 103, 'cv', '105'),
(134, 103, '_cv', 'field_656f3bc4ae92c'),
(135, 103, 'annee_de_promotion', 'XXX'),
(136, 103, '_annee_de_promotion', 'field_656f3bedae92d'),
(137, 103, 'competences', 'XXX'),
(138, 103, '_competences', 'field_656f3c6c454e2'),
(139, 103, 'formation', 'XXX'),
(140, 103, '_formation', 'field_656f3d3caffe6'),
(141, 106, '_edit_lock', '1701880571:2'),
(142, 107, '_wp_attached_file', '2023/12/photo2.png'),
(143, 107, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:154;s:6:\"height\";i:167;s:4:\"file\";s:18:\"2023/12/photo2.png\";s:8:\"filesize\";i:59303;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(144, 106, '_edit_last', '2'),
(145, 106, 'nom', 'Venegas'),
(146, 106, '_nom', 'field_656f3ab7ac00f'),
(147, 106, 'prenom', 'Julieta'),
(148, 106, '_prenom', 'field_656f3b02084fa'),
(149, 106, 'extrait', 'Cui cui cui'),
(150, 106, '_extrait', 'field_656f3b19857a1'),
(151, 106, 'lien_vers_linkedin', 'https://apprenant_fictif_2'),
(152, 106, '_lien_vers_linkedin', 'field_656f3b42c8066'),
(153, 106, 'photo', '107'),
(154, 106, '_photo', 'field_656f3b8d3511a'),
(155, 106, 'lien_vers_le_portfolio', 'https://github.com/apprenant_fictif_2'),
(156, 106, '_lien_vers_le_portfolio', 'field_656f3bb3ae92b'),
(157, 106, 'cv', '105'),
(158, 106, '_cv', 'field_656f3bc4ae92c'),
(159, 108, '_edit_lock', '1701880415:2'),
(160, 109, '_wp_attached_file', '2023/12/photo3.png'),
(161, 109, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:301;s:6:\"height\";i:294;s:4:\"file\";s:18:\"2023/12/photo3.png\";s:8:\"filesize\";i:214279;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(162, 108, '_edit_last', '2'),
(163, 108, 'nom', 'Ramirez'),
(164, 108, '_nom', 'field_656f3ab7ac00f'),
(165, 108, 'prenom', 'Raul'),
(166, 108, '_prenom', 'field_656f3b02084fa'),
(167, 108, 'extrait', 'Une description sucinte, mais pas trop hein'),
(168, 108, '_extrait', 'field_656f3b19857a1'),
(169, 108, 'lien_vers_linkedin', 'https://linkedin.com/apprenant_fictif_3'),
(170, 108, '_lien_vers_linkedin', 'field_656f3b42c8066'),
(171, 108, 'photo', '109'),
(172, 108, '_photo', 'field_656f3b8d3511a'),
(173, 108, 'lien_vers_le_portfolio', 'https://github.com/apprenant_fictif_3'),
(174, 108, '_lien_vers_le_portfolio', 'field_656f3bb3ae92b'),
(175, 108, 'cv', '105'),
(176, 108, '_cv', 'field_656f3bc4ae92c'),
(183, 110, '_edit_lock', '1701879864:2'),
(184, 110, '_edit_last', '2'),
(188, 114, '_edit_lock', '1701878954:2'),
(195, 114, '_edit_last', '2'),
(197, 123, '_edit_lock', '1701879055:2'),
(198, 123, '_edit_last', '2'),
(199, 123, 'nom', 'Zavala Aguilar'),
(200, 123, '_nom', 'field_657088a8b3bfc'),
(201, 123, 'prenom', 'Agustin'),
(202, 123, '_prenom', 'field_657088a8b77a4'),
(203, 123, 'extrait', 'Jeune, courageux, en pleine force de l\'age'),
(204, 123, '_extrait', 'field_657088a8bb360'),
(205, 123, 'lien_vers_linkedin', 'https://linkedin.com/agustinzavalaaguilar'),
(206, 123, '_lien_vers_linkedin', 'field_657088a8bef5a'),
(207, 123, 'photo', '50'),
(208, 123, '_photo', 'field_657088a8c2df2'),
(209, 123, 'lien_vers_le_portfolio', 'https://github.com/agustin-zavala-aguilar'),
(210, 123, '_lien_vers_le_portfolio', 'field_657088a8c65da'),
(211, 123, 'cv', '105'),
(212, 123, '_cv', 'field_657088a8ca3cf');

-- --------------------------------------------------------

--
-- Structure de la table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2023-11-27 14:10:45', '2023-11-27 13:10:45', '<!-- wp:paragraph -->\n<p>Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis commencez à écrire !</p>\n<!-- /wp:paragraph -->', 'Bonjour tout le monde !', '', 'publish', 'open', 'open', '', 'bonjour-tout-le-monde', '', '', '2023-11-27 14:10:45', '2023-11-27 13:10:45', '', 0, 'http://localhost/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2023-11-27 14:10:45', '2023-11-27 13:10:45', '<!-- wp:paragraph -->\n<p>Ceci est une page d’exemple. C’est différent d’un article de blog parce qu’elle restera au même endroit et apparaîtra dans la navigation de votre site (dans la plupart des thèmes). La plupart des gens commencent par une page « À propos » qui les présente aux personnes visitant le site. Cela pourrait ressembler à quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Bonjour ! Je suis un mécanicien qui aspire à devenir acteur, et voici mon site. J’habite à Bordeaux, j’ai un super chien baptisé Russell, et j’aime la vodka (ainsi qu’être surpris par la pluie soudaine lors de longues balades sur la plage au coucher du soleil).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>…ou quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules supers pour la communauté bouzemontoise.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>En tant que nouvel utilisateur ou utilisatrice de WordPress, vous devriez vous rendre sur <a href=\"http://localhost/wordpress/wp-admin/\">votre tableau de bord</a> pour supprimer cette page et créer de nouvelles pages pour votre contenu. Amusez-vous bien !</p>\n<!-- /wp:paragraph -->', 'Page d’exemple', '', 'publish', 'closed', 'open', '', 'page-d-exemple', '', '', '2023-11-27 14:10:45', '2023-11-27 13:10:45', '', 0, 'http://localhost/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2023-11-27 14:10:45', '2023-11-27 13:10:45', '<!-- wp:heading --><h2>Qui sommes-nous ?</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>L’adresse de notre site est : http://localhost/wordpress.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Commentaires</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Quand vous laissez un commentaire sur notre site, les données inscrites dans le formulaire de commentaire, ainsi que votre adresse IP et l’agent utilisateur de votre navigateur sont collectés pour nous aider à la détection des commentaires indésirables.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Une chaîne anonymisée créée à partir de votre adresse e-mail (également appelée hash) peut être envoyée au service Gravatar pour vérifier si vous utilisez ce dernier. Les clauses de confidentialité du service Gravatar sont disponibles ici : https://automattic.com/privacy/. Après validation de votre commentaire, votre photo de profil sera visible publiquement à coté de votre commentaire.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Médias</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous téléversez des images sur le site, nous vous conseillons d’éviter de téléverser des images contenant des données EXIF de coordonnées GPS. Les personnes visitant votre site peuvent télécharger et extraire des données de localisation depuis ces images.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous déposez un commentaire sur notre site, il vous sera proposé d’enregistrer votre nom, adresse e-mail et site dans des cookies. C’est uniquement pour votre confort afin de ne pas avoir à saisir ces informations si vous déposez un autre commentaire plus tard. Ces cookies expirent au bout d’un an.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si vous vous rendez sur la page de connexion, un cookie temporaire sera créé afin de déterminer si votre navigateur accepte les cookies. Il ne contient pas de données personnelles et sera supprimé automatiquement à la fermeture de votre navigateur.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Lorsque vous vous connecterez, nous mettrons en place un certain nombre de cookies pour enregistrer vos informations de connexion et vos préférences d’écran. La durée de vie d’un cookie de connexion est de deux jours, celle d’un cookie d’option d’écran est d’un an. Si vous cochez « Se souvenir de moi », votre cookie de connexion sera conservé pendant deux semaines. Si vous vous déconnectez de votre compte, le cookie de connexion sera effacé.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>En modifiant ou en publiant une publication, un cookie supplémentaire sera enregistré dans votre navigateur. Ce cookie ne comprend aucune donnée personnelle. Il indique simplement l’ID de la publication que vous venez de modifier. Il expire au bout d’un jour.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Contenu embarqué depuis d’autres sites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Les articles de ce site peuvent inclure des contenus intégrés (par exemple des vidéos, images, articles…). Le contenu intégré depuis d’autres sites se comporte de la même manière que si le visiteur se rendait sur cet autre site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Ces sites web pourraient collecter des données sur vous, utiliser des cookies, embarquer des outils de suivis tiers, suivre vos interactions avec ces contenus embarqués si vous disposez d’un compte connecté sur leur site web.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Utilisation et transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous demandez une réinitialisation de votre mot de passe, votre adresse IP sera incluse dans l’e-mail de réinitialisation.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Durées de stockage de vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous laissez un commentaire, le commentaire et ses métadonnées sont conservés indéfiniment. Cela permet de reconnaître et approuver automatiquement les commentaires suivants au lieu de les laisser dans la file de modération.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Pour les comptes qui s’inscrivent sur notre site (le cas échéant), nous stockons également les données personnelles indiquées dans leur profil. Tous les comptes peuvent voir, modifier ou supprimer leurs informations personnelles à tout moment (à l’exception de leur identifiant). Les gestionnaires du site peuvent aussi voir et modifier ces informations.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Les droits que vous avez sur vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous avez un compte ou si vous avez laissé des commentaires sur le site, vous pouvez demander à recevoir un fichier contenant toutes les données personnelles que nous possédons à votre sujet, incluant celles que vous nous avez fournies. Vous pouvez également demander la suppression des données personnelles vous concernant. Cela ne prend pas en compte les données stockées à des fins administratives, légales ou pour des raisons de sécurité.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Où vos données sont envoyées</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Les commentaires des visiteurs peuvent être vérifiés à l’aide d’un service automatisé de détection des commentaires indésirables.</p><!-- /wp:paragraph -->', 'Politique de confidentialité', '', 'draft', 'closed', 'open', '', 'politique-de-confidentialite', '', '', '2023-11-27 14:10:45', '2023-11-27 13:10:45', '', 0, 'http://localhost/wordpress/?page_id=3', 0, 'page', '', 0),
(4, 0, '2023-11-27 14:10:48', '2023-11-27 13:10:48', '<!-- wp:page-list /-->', 'Navigation', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2023-11-27 14:10:48', '2023-11-27 13:10:48', '', 0, 'http://localhost/wordpress/2023/11/27/navigation/', 0, 'wp_navigation', '', 0),
(6, 1, '2023-11-27 15:50:57', '0000-00-00 00:00:00', '<!-- wp:paragraph -->\n<p>Le chien des pharaons est une créature surprenante et largement inconnue.</p>\n<!-- /wp:paragraph -->', 'Le chien des pharaons', '', 'draft', 'open', 'open', '', '', '', '', '2023-11-27 15:50:57', '2023-11-27 14:50:57', '', 0, 'http://localhost/wordpress/?p=6', 0, 'post', '', 0),
(7, 1, '2023-11-27 15:47:35', '2023-11-27 14:47:35', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-twentytwentyfour', '', '', '2023-11-27 15:47:35', '2023-11-27 14:47:35', '', 0, 'http://localhost/wordpress/2023/11/27/wp-global-styles-twentytwentyfour/', 0, 'wp_global_styles', '', 0),
(8, 1, '2023-11-27 15:50:57', '2023-11-27 14:50:57', '<!-- wp:paragraph -->\n<p>Le chien des pharaons est une créature surprenante et largement inconnue.</p>\n<!-- /wp:paragraph -->', 'Le chien des pharaons', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2023-11-27 15:50:57', '2023-11-27 14:50:57', '', 6, 'http://localhost/wordpress/?p=8', 0, 'revision', '', 0),
(10, 1, '2023-11-27 21:19:57', '2023-11-27 20:19:57', '<label> Votre nom\r\n    [text* your-name autocomplete:name] </label>\r\n\r\n<label> Votre e-mail\r\n    [email* your-email autocomplete:email] </label>\r\n\r\n<label> Objet\r\n    [text* your-subject] </label>\r\n\r\n<label> Votre message (facultatif)\r\n    [textarea your-message] </label>\r\n\r\n[submit \"Envoyer\"]\n1\n[_site_title] \"[your-subject]\"\n[_site_title] <agustin.wdwm48@gmail.com>\n[_site_admin_email]\nDe : [your-name] [your-email]\r\nObjet : [your-subject]\r\n\r\nCorps du message :\r\n[your-message]\r\n\r\n-- \r\nThis is a notification that a contact form was submitted on your website ([_site_title] [_site_url]).\nReply-To: [your-email]\n\n\n\n\n[_site_title] \"[your-subject]\"\n[_site_title] <agustin.wdwm48@gmail.com>\n[your-email]\nCorps du message :\r\n[your-message]\r\n\r\n-- \r\nThis email is a receipt for your contact form submission on our website ([_site_title] [_site_url]) in which your email address was used. If that was not you, please ignore this message.\nReply-To: [_site_admin_email]\n\n\n\nMerci pour votre message. Il a été envoyé.\nUne erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.\nUn ou plusieurs champs contiennent une erreur. Veuillez vérifier et essayer à nouveau.\nUne erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.\nVous devez accepter les termes et conditions avant d’envoyer votre message.\nVeuillez renseigner ce champ.\nCe champ a une saisie trop longue.\nCe champ a une saisie trop courte.\nUne erreur inconnue s’est produite lors du téléversement du fichier.\nVous n’avez pas les droits nécessaires pour téléverser ce type de fichier.\nLe fichier téléversé est trop volumineux.\nUne erreur s’est produite lors du téléversement du fichier.\nVeuillez saisir une date au format AAAA-MM-JJ.\nLa date de ce champ est trop tôt.\nLa date de ce champ est trop tardive.\nVeuillez saisir un numéro.\nLe chiffre de ce champ est trop petit.\nCe champ a un numéro trop long.\nLa réponse à la question est incorrecte.\nVeuillez saisir votre adresse e-mail.\nVeuillez saisisr une URL\nVeuillez saisir un numéro de téléphone.', 'Formulaire de contact 1', '', 'publish', 'closed', 'closed', '', 'formulaire-de-contact-1', '', '', '2023-11-30 16:29:59', '2023-11-30 15:29:59', '', 0, 'http://localhost/wordpress/?post_type=wpcf7_contact_form&#038;p=10', 0, 'wpcf7_contact_form', '', 0),
(11, 1, '2023-11-28 12:19:08', '2023-11-28 11:19:08', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Portfolio</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Bonjour, je suis un passionné du développement web avec plusieurs années d\'expérience dans le domaine de la gestion. Ma capacité d\'écoute me permet de comprendre les besoins des clients pour y répondre de manière efficace. Je vous invite chaleureusement à parcourir mon portfolio où je partage quelques projets qui me tiennent à cœur. N\'hésitez pas à me contacter pour discuter de la manière dont nous pourrions collaborer sur votre prochain projet</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image -->\n<figure class=\"wp-block-image\"><img alt=\"\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image -->\n<figure class=\"wp-block-image\"><img alt=\"\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image -->\n<figure class=\"wp-block-image\"><img alt=\"\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'Agustín Zavala Aguilar', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2023-11-28 16:16:58', '2023-11-28 15:16:58', '', 0, 'http://localhost/wordpress/?page_id=11', 0, 'page', '', 0),
(12, 1, '2023-11-27 21:22:35', '2023-11-27 20:22:35', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2023-11-27 21:22:35', '2023-11-27 20:22:35', '', 11, 'http://localhost/wordpress/?p=12', 0, 'revision', '', 0),
(15, 1, '2023-11-28 10:59:16', '2023-11-28 09:59:16', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Agustin\'s Portfolio', '', 'publish', 'closed', 'closed', '', 'agustins-portfolio', '', '', '2023-11-28 11:00:44', '2023-11-28 10:00:44', '', 0, 'http://localhost/wordpress/?page_id=15', 0, 'page', '', 0),
(16, 1, '2023-11-27 21:23:35', '2023-11-27 20:23:35', '', 'Portfolio', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2023-11-27 21:23:35', '2023-11-27 20:23:35', '', 15, 'http://localhost/wordpress/?p=16', 0, 'revision', '', 0),
(17, 1, '2023-11-30 16:30:22', '2023-11-30 15:30:22', '<!-- wp:paragraph -->\n<p>I am actively looking to join value-driven projects. I believe in the power of doing well by doing good. It is my goal to join a mature and performing team or to participate in developing such a team where we may channel our collective energies towards solving challenging problems while keeping ego friction to the minimum possible. If this is also your goal, I would love to have a chat with you!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Feel free to send an email to&nbsp;movil82@gmail.com&nbsp;or to contact me through Linkedin or Github.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:shortcode -->\n[contact-form-7 id=\"2eaffae\" title=\"Formulaire de contact 1\"]\n<!-- /wp:shortcode -->', 'Contacts', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2023-11-30 16:45:24', '2023-11-30 15:45:24', '', 0, 'http://localhost/wordpress/?page_id=17', 0, 'page', '', 0),
(18, 1, '2023-11-27 21:23:55', '2023-11-27 20:23:55', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2023-11-27 21:23:55', '2023-11-27 20:23:55', '', 17, 'http://localhost/wordpress/?p=18', 0, 'revision', '', 0),
(20, 1, '2023-11-28 10:57:06', '2023-11-28 09:57:06', '', 'Agustin\'s Portfolio', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2023-11-28 10:57:06', '2023-11-28 09:57:06', '', 15, 'http://localhost/wordpress/?p=20', 0, 'revision', '', 0),
(22, 1, '2023-11-28 11:00:44', '2023-11-28 10:00:44', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Agustin\'s Portfolio', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2023-11-28 11:00:44', '2023-11-28 10:00:44', '', 15, 'http://localhost/wordpress/?p=22', 0, 'revision', '', 0),
(23, 1, '2023-11-28 12:14:11', '2023-11-28 11:14:11', '', 'pexels-roman-odintsov-6898854', '', 'inherit', 'open', 'closed', '', 'pexels-roman-odintsov-6898854', '', '', '2023-11-28 12:14:11', '2023-11-28 11:14:11', '', 0, 'http://localhost/wordpress/wp-content/uploads/2023/11/pexels-roman-odintsov-6898854.jpg', 0, 'attachment', 'image/jpeg', 0),
(24, 1, '2023-11-28 12:20:09', '2023-11-28 11:20:09', '<!-- wp:image {\"id\":23,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/wordpress/wp-content/uploads/2023/11/pexels-roman-odintsov-6898854.jpg\" alt=\"\" class=\"wp-image-23\"/></figure>\n<!-- /wp:image -->', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2023-11-28 12:20:09', '2023-11-28 11:20:09', '', 11, 'http://localhost/wordpress/?p=24', 0, 'revision', '', 0),
(29, 1, '2023-11-28 15:32:20', '2023-11-28 14:32:20', '<!-- wp:image {\"id\":23,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/wordpress/wp-content/uploads/2023/11/pexels-roman-odintsov-6898854.jpg\" alt=\"\" class=\"wp-image-23\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\"></h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\"></h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\"></h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\"></h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\"></h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\"></h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\"></h2>\n<!-- /wp:heading -->', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2023-11-28 15:32:20', '2023-11-28 14:32:20', '', 11, 'http://localhost/wordpress/?p=29', 0, 'revision', '', 0),
(31, 1, '2023-11-28 15:43:46', '2023-11-28 14:43:46', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Portfolio</h2>\n<!-- /wp:heading -->\n\n<!-- wp:group {\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group\"><!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"100%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:100%\"></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div>\n<!-- /wp:group -->\n\n<!-- wp:paragraph -->\n<p>Bonjour, je suis un passionné du développement web avec plusieurs années d\'expérience dans le domaine de la gestion. Ma capacité d\'écoute me permet de comprendre les besoins des clients pour y répondre de manière efficace. Je vous invite chaleureusement à parcourir mon portfolio où je partage quelques projets qui me tiennent à cœur. N\'hésitez pas à me contacter pour discuter de la manière dont nous pourrions collaborer sur votre prochain projet</p>\n<!-- /wp:paragraph -->', 'Agustin Zavala Aguilar', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2023-11-28 15:43:46', '2023-11-28 14:43:46', '', 11, 'http://localhost/wordpress/?p=31', 0, 'revision', '', 0),
(33, 1, '2023-11-28 15:44:31', '2023-11-28 14:44:31', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Portfolio</h2>\n<!-- /wp:heading -->\n\n<!-- wp:group {\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group\"><!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"100%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:100%\"></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div>\n<!-- /wp:group -->\n\n<!-- wp:paragraph -->\n<p>Bonjour, je suis un passionné du développement web avec plusieurs années d\'expérience dans le domaine de la gestion. Ma capacité d\'écoute me permet de comprendre les besoins des clients pour y répondre de manière efficace. Je vous invite chaleureusement à parcourir mon portfolio où je partage quelques projets qui me tiennent à cœur. N\'hésitez pas à me contacter pour discuter de la manière dont nous pourrions collaborer sur votre prochain projet</p>\n<!-- /wp:paragraph -->', 'Agustín Zavala Aguilar', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2023-11-28 15:44:31', '2023-11-28 14:44:31', '', 11, 'http://localhost/wordpress/?p=33', 0, 'revision', '', 0),
(35, 1, '2023-11-28 15:52:14', '2023-11-28 14:52:14', '', 'pexels-willo-m-953457', '', 'inherit', 'open', 'closed', '', 'pexels-willo-m-953457', '', '', '2023-11-28 15:52:14', '2023-11-28 14:52:14', '', 11, 'http://localhost/wordpress/wp-content/uploads/2023/11/pexels-willo-m-953457.jpg', 0, 'attachment', 'image/jpeg', 0),
(36, 1, '2023-11-28 15:52:48', '2023-11-28 14:52:48', '', 'pexels-picography-4776', '', 'inherit', 'open', 'closed', '', 'pexels-picography-4776', '', '', '2023-11-28 15:52:48', '2023-11-28 14:52:48', '', 11, 'http://localhost/wordpress/wp-content/uploads/2023/11/pexels-picography-4776.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2023-11-28 16:16:58', '2023-11-28 15:16:58', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Portfolio</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Bonjour, je suis un passionné du développement web avec plusieurs années d\'expérience dans le domaine de la gestion. Ma capacité d\'écoute me permet de comprendre les besoins des clients pour y répondre de manière efficace. Je vous invite chaleureusement à parcourir mon portfolio où je partage quelques projets qui me tiennent à cœur. N\'hésitez pas à me contacter pour discuter de la manière dont nous pourrions collaborer sur votre prochain projet</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image -->\n<figure class=\"wp-block-image\"><img alt=\"\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image -->\n<figure class=\"wp-block-image\"><img alt=\"\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image -->\n<figure class=\"wp-block-image\"><img alt=\"\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'Agustín Zavala Aguilar', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2023-11-28 16:16:58', '2023-11-28 15:16:58', '', 11, 'http://localhost/wordpress/?p=37', 0, 'revision', '', 0),
(38, 1, '2023-11-29 09:44:53', '0000-00-00 00:00:00', '<!-- wp:paragraph -->\n<p>Le chien des pharaons est une créature surprenante et largement inconnue.</p>\n<!-- /wp:paragraph -->', 'Le chien des pharaons', '', 'draft', 'open', 'open', '', '', '', '', '2023-11-29 09:44:53', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=38', 0, 'post', '', 0),
(40, 2, '2023-11-29 10:11:27', '2023-11-29 09:11:27', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-twentytwentytwo', '', '', '2023-11-29 10:11:27', '2023-11-29 09:11:27', '', 0, 'http://localhost/wordpress/2023/11/29/wp-global-styles-twentytwentytwo/', 0, 'wp_global_styles', '', 0),
(41, 2, '2023-11-29 14:02:57', '2023-11-29 13:02:57', '', 'avatar_Agustin', '', 'inherit', 'open', 'closed', '', 'avatar_agustin', '', '', '2023-11-29 14:02:57', '2023-11-29 13:02:57', '', 0, 'http://localhost/wordpress/wp-content/uploads/2023/11/avatar_Agustin.png', 0, 'attachment', 'image/png', 0),
(43, 2, '2023-11-29 14:04:47', '2023-11-29 13:04:47', '', 'avatar_Agustin', '', 'inherit', 'open', 'closed', '', 'avatar_agustin-2', '', '', '2023-11-29 14:04:47', '2023-11-29 13:04:47', '', 0, 'http://localhost/wordpress/wp-content/uploads/2023/11/avatar_Agustin-1.png', 0, 'attachment', 'image/png', 0),
(44, 2, '2023-11-29 16:40:48', '2023-11-29 15:40:48', '', 'Work', '', 'publish', 'closed', 'closed', '', 'work', '', '', '2023-11-29 16:40:48', '2023-11-29 15:40:48', '', 0, 'http://localhost/wordpress/?page_id=44', 0, 'page', '', 0),
(45, 2, '2023-11-29 16:40:48', '2023-11-29 15:40:48', '', 'Work', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2023-11-29 16:40:48', '2023-11-29 15:40:48', '', 44, 'http://localhost/wordpress/?p=45', 0, 'revision', '', 0),
(46, 2, '2023-11-29 16:50:52', '2023-11-29 15:50:52', '', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2023-11-29 16:50:53', '2023-11-29 15:50:53', '', 0, 'http://localhost/wordpress/?page_id=46', 0, 'page', '', 0),
(47, 2, '2023-11-29 16:50:52', '2023-11-29 15:50:52', '', 'About', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2023-11-29 16:50:52', '2023-11-29 15:50:52', '', 46, 'http://localhost/wordpress/?p=47', 0, 'revision', '', 0),
(48, 2, '2023-11-30 16:25:36', '2023-11-30 15:25:36', '', 'signature', '', 'inherit', 'open', 'closed', '', 'signature', '', '', '2023-11-30 16:25:36', '2023-11-30 15:25:36', '', 0, 'http://localhost/wordpress/wp-content/uploads/2023/11/signature.png', 0, 'attachment', 'image/png', 0),
(49, 2, '2023-11-30 16:26:14', '2023-11-30 15:26:14', '', 'signature-favicon', '', 'inherit', 'open', 'closed', '', 'signature-favicon', '', '', '2023-11-30 16:26:14', '2023-11-30 15:26:14', '', 0, 'http://localhost/wordpress/wp-content/uploads/2023/11/signature-favicon.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 2, '2023-11-30 16:27:10', '2023-11-30 15:27:10', '', 'portfolio draw', '', 'inherit', 'open', 'closed', '', 'portfolio-draw', '', '', '2023-12-06 16:06:20', '2023-12-06 15:06:20', '', 123, 'http://localhost/wordpress/wp-content/uploads/2023/11/portfolio-draw.png', 0, 'attachment', 'image/png', 0),
(51, 2, '2023-11-30 16:30:22', '2023-11-30 15:30:22', '<!-- wp:shortcode -->\n[contact-form-7 id=\"2eaffae\" title=\"Formulaire de contact 1\"]\n<!-- /wp:shortcode -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2023-11-30 16:30:22', '2023-11-30 15:30:22', '', 17, 'http://localhost/wordpress/?p=51', 0, 'revision', '', 0),
(52, 2, '2023-11-30 16:36:23', '2023-11-30 15:36:23', '<!-- wp:shortcode -->\n[contact-form-7 id=\"2eaffae\" title=\"Formulaire de contact 1\"]\n<!-- /wp:shortcode -->', 'Contacts', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2023-11-30 16:36:23', '2023-11-30 15:36:23', '', 17, 'http://localhost/wordpress/?p=52', 0, 'revision', '', 0),
(53, 2, '2023-11-30 16:42:34', '2023-11-30 15:42:34', '<!-- wp:shortcode -->\n[contact-form-7 id=\"2eaffae\" title=\"Formulaire de contact 1\"]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p>I am actively looking to join value-driven projects. I believe in the power of doing well by doing good. It is my goal to join a mature and performing team or to participate in developing such a team where we may channel our collective energies towards solving challenging problems while keeping ego friction to the minimum possible. If this is also your goal, I would love to have a chat with you!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Feel free to send an email to&nbsp;movil82@gmail.com&nbsp;or to contact me through Linkedin or Github.</p>\n<!-- /wp:paragraph -->', 'Contacts', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2023-11-30 16:42:34', '2023-11-30 15:42:34', '', 17, 'http://localhost/wordpress/?p=53', 0, 'revision', '', 0),
(55, 2, '2023-11-30 16:45:23', '2023-11-30 15:45:23', '<!-- wp:paragraph -->\n<p>I am actively looking to join value-driven projects. I believe in the power of doing well by doing good. It is my goal to join a mature and performing team or to participate in developing such a team where we may channel our collective energies towards solving challenging problems while keeping ego friction to the minimum possible. If this is also your goal, I would love to have a chat with you!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Feel free to send an email to&nbsp;movil82@gmail.com&nbsp;or to contact me through Linkedin or Github.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:shortcode -->\n[contact-form-7 id=\"2eaffae\" title=\"Formulaire de contact 1\"]\n<!-- /wp:shortcode -->', 'Contacts', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2023-11-30 16:45:23', '2023-11-30 15:45:23', '', 17, 'http://localhost/wordpress/?p=55', 0, 'revision', '', 0),
(56, 2, '2023-12-05 14:13:49', '2023-12-05 13:13:49', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"user_role\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:3:\"all\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Complément de champs', 'complement-de-champs', 'publish', 'closed', 'closed', '', 'group_656f21bfa20ed', '', '', '2023-12-05 14:33:43', '2023-12-05 13:33:43', '', 0, 'http://localhost/wordpress/?post_type=acf-field-group&#038;p=56', 0, 'acf-field-group', '', 0),
(57, 2, '2023-12-05 14:13:49', '2023-12-05 13:13:49', 'a:9:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"d/m/Y\";s:13:\"return_format\";s:5:\"d/m/Y\";s:9:\"first_day\";i:1;}', 'Date de naissance', 'date_de_naissance', 'publish', 'closed', 'closed', '', 'field_656f21c00403f', '', '', '2023-12-05 14:19:18', '2023-12-05 13:19:18', '', 56, 'http://localhost/wordpress/?post_type=acf-field&#038;p=57', 0, 'acf-field', '', 0),
(58, 2, '2023-12-05 14:23:01', '2023-12-05 13:23:01', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"radio\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:2:{s:2:\"Mr\";s:2:\"Mr\";s:3:\"Mme\";s:3:\"Mme\";}s:13:\"default_value\";s:0:\"\";s:13:\"return_format\";s:5:\"value\";s:10:\"allow_null\";i:0;s:12:\"other_choice\";i:0;s:6:\"layout\";s:8:\"vertical\";s:17:\"save_other_choice\";i:0;}', 'Civilité', 'civilite', 'publish', 'closed', 'closed', '', 'field_656f23a5df58f', '', '', '2023-12-05 14:28:07', '2023-12-05 13:28:07', '', 56, 'http://localhost/wordpress/?post_type=acf-field&#038;p=58', 1, 'acf-field', '', 0),
(60, 2, '2023-12-05 14:30:18', '2023-12-05 13:30:18', 'a:14:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:4:{s:12:\"célibataire\";s:12:\"célibataire\";s:9:\"marié(e)\";s:9:\"marié(e)\";s:11:\"divorcé(e)\";s:11:\"divorcé(e)\";s:10:\"veuf/veuve\";s:10:\"veuf/veuve\";}s:13:\"default_value\";b:0;s:13:\"return_format\";s:5:\"value\";s:8:\"multiple\";i:0;s:10:\"allow_null\";i:0;s:2:\"ui\";i:0;s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";}', 'état civil', 'etat_civil', 'publish', 'closed', 'closed', '', 'field_656f2592cdbd7', '', '', '2023-12-05 14:30:18', '2023-12-05 13:30:18', '', 56, 'http://localhost/wordpress/?post_type=acf-field&p=60', 2, 'acf-field', '', 0),
(61, 2, '2023-12-05 14:33:43', '2023-12-05 13:33:43', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"radio\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:4:{s:9:\"mexicaine\";s:9:\"mexicaine\";s:10:\"française\";s:10:\"française\";s:5:\"autre\";s:5:\"autre\";s:8:\"apatride\";s:8:\"apatride\";}s:13:\"default_value\";s:0:\"\";s:13:\"return_format\";s:5:\"value\";s:10:\"allow_null\";i:0;s:12:\"other_choice\";i:0;s:6:\"layout\";s:8:\"vertical\";s:17:\"save_other_choice\";i:0;}', 'nationalité', 'nationalite', 'publish', 'closed', 'closed', '', 'field_656f266f7e8de', '', '', '2023-12-05 14:33:43', '2023-12-05 13:33:43', '', 56, 'http://localhost/wordpress/?post_type=acf-field&p=61', 3, 'acf-field', '', 0),
(62, 2, '2023-12-05 14:44:27', '2023-12-05 13:44:27', 'a:35:{s:9:\"post_type\";s:7:\"voiture\";s:22:\"advanced_configuration\";b:1;s:13:\"import_source\";s:0:\"\";s:11:\"import_date\";s:0:\"\";s:6:\"labels\";a:33:{s:4:\"name\";s:8:\"voitures\";s:13:\"singular_name\";s:7:\"voiture\";s:9:\"menu_name\";s:8:\"voitures\";s:9:\"all_items\";s:17:\"Tout les voitures\";s:9:\"edit_item\";s:16:\"Modifier voiture\";s:9:\"view_item\";s:12:\"Voir voiture\";s:10:\"view_items\";s:13:\"Voir voitures\";s:12:\"add_new_item\";s:15:\"Ajouter voiture\";s:7:\"add_new\";s:15:\"Ajouter voiture\";s:8:\"new_item\";s:15:\"Nouveau voiture\";s:17:\"parent_item_colon\";s:17:\"voiture parent :\";s:12:\"search_items\";s:19:\"Rechercher voitures\";s:9:\"not_found\";s:22:\"Aucun voitures trouvé\";s:18:\"not_found_in_trash\";s:26:\"No voitures found in Trash\";s:8:\"archives\";s:20:\"Archives des voiture\";s:10:\"attributes\";s:21:\"Attributs des voiture\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:16:\"insert_into_item\";s:21:\"Insérer dans voiture\";s:21:\"uploaded_to_this_item\";s:27:\"Téléversé sur ce voiture\";s:17:\"filter_items_list\";s:25:\"Filtrer la liste voitures\";s:14:\"filter_by_date\";s:25:\"Filtrer voitures par date\";s:21:\"items_list_navigation\";s:33:\"Navigation dans la liste voitures\";s:10:\"items_list\";s:14:\"Liste voitures\";s:14:\"item_published\";s:16:\"voiture publié.\";s:24:\"item_published_privately\";s:26:\"voiture publié en privé.\";s:22:\"item_reverted_to_draft\";s:30:\"voiture repassé en brouillon.\";s:14:\"item_scheduled\";s:18:\"voiture planifié.\";s:12:\"item_updated\";s:20:\"voiture mis à jour.\";s:9:\"item_link\";s:12:\"Lien voiture\";s:21:\"item_link_description\";s:24:\"Un lien vers un voiture.\";}s:11:\"description\";s:0:\"\";s:6:\"public\";b:1;s:12:\"hierarchical\";b:0;s:19:\"exclude_from_search\";b:0;s:18:\"publicly_queryable\";b:1;s:7:\"show_ui\";b:1;s:12:\"show_in_menu\";b:1;s:17:\"admin_menu_parent\";s:0:\"\";s:17:\"show_in_admin_bar\";b:1;s:17:\"show_in_nav_menus\";b:1;s:12:\"show_in_rest\";b:1;s:9:\"rest_base\";s:8:\"voitures\";s:14:\"rest_namespace\";s:5:\"wp/v2\";s:21:\"rest_controller_class\";s:24:\"WP_REST_Posts_Controller\";s:13:\"menu_position\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:19:\"rename_capabilities\";b:0;s:24:\"singular_capability_name\";s:4:\"post\";s:22:\"plural_capability_name\";s:5:\"posts\";s:8:\"supports\";a:4:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";i:3;s:0:\"\";}s:10:\"taxonomies\";s:0:\"\";s:11:\"has_archive\";b:0;s:16:\"has_archive_slug\";s:0:\"\";s:7:\"rewrite\";a:4:{s:17:\"permalink_rewrite\";s:13:\"post_type_key\";s:10:\"with_front\";s:1:\"1\";s:5:\"feeds\";s:1:\"0\";s:5:\"pages\";s:1:\"1\";}s:9:\"query_var\";s:13:\"post_type_key\";s:14:\"query_var_name\";s:0:\"\";s:10:\"can_export\";b:1;s:16:\"delete_with_user\";b:0;s:20:\"register_meta_box_cb\";s:0:\"\";s:16:\"enter_title_here\";s:0:\"\";}', 'voitures', 'voitures', 'publish', 'closed', 'closed', '', 'post_type_656f27b78b166', '', '', '2023-12-05 14:44:27', '2023-12-05 13:44:27', '', 0, 'http://localhost/wordpress/?post_type=acf-post-type&#038;p=62', 0, 'acf-post-type', '', 0),
(64, 2, '2023-12-05 14:46:47', '2023-12-05 13:46:47', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"voiture\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Voitures', 'voitures', 'publish', 'closed', 'closed', '', 'group_656f29b9bc9d3', '', '', '2023-12-05 15:26:50', '2023-12-05 14:26:50', '', 0, 'http://localhost/wordpress/?post_type=acf-field-group&#038;p=64', 0, 'acf-field-group', '', 0),
(65, 2, '2023-12-05 14:46:47', '2023-12-05 13:46:47', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:4:\"step\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'prix', 'prix', 'publish', 'closed', 'closed', '', 'field_656f29b98690f', '', '', '2023-12-05 14:48:00', '2023-12-05 13:48:00', '', 64, 'http://localhost/wordpress/?post_type=acf-field&#038;p=65', 0, 'acf-field', '', 0),
(69, 2, '2023-12-05 15:06:53', '2023-12-05 14:06:53', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"radio\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:4:{s:2:\"2p\";s:2:\"2p\";s:2:\"4p\";s:2:\"4p\";s:2:\"6p\";s:2:\"6p\";s:2:\"8p\";s:2:\"8p\";}s:13:\"default_value\";s:0:\"\";s:13:\"return_format\";s:5:\"value\";s:10:\"allow_null\";i:0;s:12:\"other_choice\";i:0;s:6:\"layout\";s:8:\"vertical\";s:17:\"save_other_choice\";i:0;}', 'nombre de places', 'nombre_de_places', 'publish', 'closed', 'closed', '', 'field_656f2e2d84ac9', '', '', '2023-12-05 15:26:50', '2023-12-05 14:26:50', '', 64, 'http://localhost/wordpress/?post_type=acf-field&#038;p=69', 1, 'acf-field', '', 0),
(82, 2, '2023-12-05 15:26:08', '2023-12-05 14:26:08', '', 'Kit the incredible car', '', 'publish', 'closed', 'closed', '', 'kit-the-incredible-car', '', '', '2023-12-05 15:26:09', '2023-12-05 14:26:09', '', 0, 'http://localhost/wordpress/?post_type=voiture&#038;p=82', 0, 'voiture', '', 0),
(85, 2, '2023-12-05 15:54:32', '2023-12-05 14:54:32', 'a:8:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"apprenant\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:11:\"apprenants2\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:1;}', 'Apprenants', 'apprenants', 'publish', 'closed', 'closed', '', 'group_656f397ac8e14', '', '', '2023-12-06 17:14:58', '2023-12-06 16:14:58', '', 0, 'http://localhost/wordpress/?post_type=acf-field-group&#038;p=85', 0, 'acf-field-group', '', 0),
(88, 2, '2023-12-05 15:58:14', '2023-12-05 14:58:14', 'a:35:{s:9:\"post_type\";s:9:\"apprenant\";s:22:\"advanced_configuration\";b:1;s:13:\"import_source\";s:0:\"\";s:11:\"import_date\";s:0:\"\";s:6:\"labels\";a:33:{s:4:\"name\";s:10:\"apprenants\";s:13:\"singular_name\";s:9:\"apprenant\";s:9:\"menu_name\";s:10:\"apprenants\";s:9:\"all_items\";s:19:\"Tout les apprenants\";s:9:\"edit_item\";s:18:\"Modifier apprenant\";s:9:\"view_item\";s:14:\"Voir apprenant\";s:10:\"view_items\";s:15:\"Voir apprenants\";s:12:\"add_new_item\";s:17:\"Ajouter apprenant\";s:7:\"add_new\";s:17:\"Ajouter apprenant\";s:8:\"new_item\";s:17:\"Nouveau apprenant\";s:17:\"parent_item_colon\";s:19:\"apprenant parent :\";s:12:\"search_items\";s:21:\"Rechercher apprenants\";s:9:\"not_found\";s:24:\"Aucun apprenants trouvé\";s:18:\"not_found_in_trash\";s:28:\"No apprenants found in Trash\";s:8:\"archives\";s:22:\"Archives des apprenant\";s:10:\"attributes\";s:23:\"Attributs des apprenant\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:16:\"insert_into_item\";s:23:\"Insérer dans apprenant\";s:21:\"uploaded_to_this_item\";s:29:\"Téléversé sur ce apprenant\";s:17:\"filter_items_list\";s:27:\"Filtrer la liste apprenants\";s:14:\"filter_by_date\";s:27:\"Filtrer apprenants par date\";s:21:\"items_list_navigation\";s:35:\"Navigation dans la liste apprenants\";s:10:\"items_list\";s:16:\"Liste apprenants\";s:14:\"item_published\";s:18:\"apprenant publié.\";s:24:\"item_published_privately\";s:28:\"apprenant publié en privé.\";s:22:\"item_reverted_to_draft\";s:32:\"apprenant repassé en brouillon.\";s:14:\"item_scheduled\";s:20:\"apprenant planifié.\";s:12:\"item_updated\";s:22:\"apprenant mis à jour.\";s:9:\"item_link\";s:14:\"Lien apprenant\";s:21:\"item_link_description\";s:26:\"Un lien vers un apprenant.\";}s:11:\"description\";s:0:\"\";s:6:\"public\";b:1;s:12:\"hierarchical\";b:0;s:19:\"exclude_from_search\";b:0;s:18:\"publicly_queryable\";b:1;s:7:\"show_ui\";b:1;s:12:\"show_in_menu\";b:1;s:17:\"admin_menu_parent\";s:0:\"\";s:17:\"show_in_admin_bar\";b:1;s:17:\"show_in_nav_menus\";b:1;s:12:\"show_in_rest\";b:1;s:9:\"rest_base\";s:10:\"apprenants\";s:14:\"rest_namespace\";s:5:\"wp/v2\";s:21:\"rest_controller_class\";s:24:\"WP_REST_Posts_Controller\";s:13:\"menu_position\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:19:\"rename_capabilities\";b:0;s:24:\"singular_capability_name\";s:4:\"post\";s:22:\"plural_capability_name\";s:5:\"posts\";s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:1:{i:0;s:9:\"apprenant\";}s:11:\"has_archive\";b:0;s:16:\"has_archive_slug\";s:0:\"\";s:7:\"rewrite\";a:4:{s:17:\"permalink_rewrite\";s:13:\"post_type_key\";s:10:\"with_front\";s:1:\"1\";s:5:\"feeds\";s:1:\"0\";s:5:\"pages\";s:1:\"1\";}s:9:\"query_var\";s:13:\"post_type_key\";s:14:\"query_var_name\";s:0:\"\";s:10:\"can_export\";b:1;s:16:\"delete_with_user\";b:0;s:20:\"register_meta_box_cb\";s:0:\"\";s:16:\"enter_title_here\";s:0:\"\";}', 'apprenants', 'apprenants', 'publish', 'closed', 'closed', '', 'post_type_656f3a66256c6', '', '', '2023-12-05 15:58:14', '2023-12-05 14:58:14', '', 0, 'http://localhost/wordpress/?post_type=acf-post-type&#038;p=88', 0, 'acf-post-type', '', 0),
(89, 2, '2023-12-05 15:59:46', '2023-12-05 14:59:46', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Nom', 'nom', 'publish', 'closed', 'closed', '', 'field_656f3ab7ac00f', '', '', '2023-12-05 16:00:39', '2023-12-05 15:00:39', '', 85, 'http://localhost/wordpress/?post_type=acf-field&#038;p=89', 0, 'acf-field', '', 0),
(91, 2, '2023-12-05 16:00:39', '2023-12-05 15:00:39', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Prénom', 'prenom', 'publish', 'closed', 'closed', '', 'field_656f3b02084fa', '', '', '2023-12-05 16:00:39', '2023-12-05 15:00:39', '', 85, 'http://localhost/wordpress/?post_type=acf-field&p=91', 1, 'acf-field', '', 0),
(92, 2, '2023-12-05 16:01:20', '2023-12-05 15:01:20', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:23:\"Une description sucinte\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Extrait', 'extrait', 'publish', 'closed', 'closed', '', 'field_656f3b19857a1', '', '', '2023-12-05 16:01:20', '2023-12-05 15:01:20', '', 85, 'http://localhost/wordpress/?post_type=acf-field&p=92', 2, 'acf-field', '', 0),
(93, 2, '2023-12-05 16:02:35', '2023-12-05 15:02:35', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Lien vers Linkedin', 'lien_vers_linkedin', 'publish', 'closed', 'closed', '', 'field_656f3b42c8066', '', '', '2023-12-05 16:02:35', '2023-12-05 15:02:35', '', 85, 'http://localhost/wordpress/?post_type=acf-field&p=93', 3, 'acf-field', '', 0),
(94, 2, '2023-12-05 16:03:13', '2023-12-05 15:03:13', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Photo', 'photo', 'publish', 'closed', 'closed', '', 'field_656f3b8d3511a', '', '', '2023-12-05 16:03:13', '2023-12-05 15:03:13', '', 85, 'http://localhost/wordpress/?post_type=acf-field&p=94', 4, 'acf-field', '', 0),
(95, 2, '2023-12-05 16:04:48', '2023-12-05 15:04:48', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Lien vers le portfolio', 'lien_vers_le_portfolio', 'publish', 'closed', 'closed', '', 'field_656f3bb3ae92b', '', '', '2023-12-05 16:04:48', '2023-12-05 15:04:48', '', 85, 'http://localhost/wordpress/?post_type=acf-field&p=95', 5, 'acf-field', '', 0),
(96, 2, '2023-12-05 16:04:48', '2023-12-05 15:04:48', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"file\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:8:\"min_size\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'CV', 'cv', 'publish', 'closed', 'closed', '', 'field_656f3bc4ae92c', '', '', '2023-12-05 16:04:48', '2023-12-05 15:04:48', '', 85, 'http://localhost/wordpress/?post_type=acf-field&p=96', 6, 'acf-field', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(98, 2, '2023-12-05 16:06:04', '2023-12-05 15:06:04', 'a:29:{s:8:\"taxonomy\";s:9:\"promotion\";s:11:\"object_type\";a:1:{i:0;s:9:\"apprenant\";}s:22:\"advanced_configuration\";i:1;s:13:\"import_source\";s:0:\"\";s:11:\"import_date\";s:0:\"\";s:6:\"labels\";a:25:{s:4:\"name\";s:20:\"Années de promotion\";s:13:\"singular_name\";s:19:\"année de promotion\";s:9:\"menu_name\";s:6:\"Année\";s:9:\"all_items\";s:15:\"Tout les Année\";s:9:\"edit_item\";s:15:\"Modifier année\";s:9:\"view_item\";s:11:\"Voir année\";s:11:\"update_item\";s:21:\"Mettre à jour année\";s:12:\"add_new_item\";s:14:\"Ajouter année\";s:13:\"new_item_name\";s:21:\"Nom du nouveau année\";s:12:\"search_items\";s:17:\"Rechercher Année\";s:13:\"popular_items\";s:16:\"Année populaire\";s:26:\"separate_items_with_commas\";s:36:\"Séparer les année avec une virgule\";s:19:\"add_or_remove_items\";s:25:\"Ajouter ou retirer année\";s:21:\"choose_from_most_used\";s:43:\"Choisir parmi les année les plus utilisés\";s:9:\"most_used\";s:0:\"\";s:9:\"not_found\";s:20:\"Aucun année trouvé\";s:8:\"no_terms\";s:12:\"Aucun année\";s:22:\"name_field_description\";s:0:\"\";s:22:\"slug_field_description\";s:0:\"\";s:22:\"desc_field_description\";s:0:\"\";s:21:\"items_list_navigation\";s:31:\"Navigation dans la liste Année\";s:10:\"items_list\";s:12:\"Liste Année\";s:13:\"back_to_items\";s:25:\"← Aller à « année »\";s:9:\"item_link\";s:11:\"Lien année\";s:21:\"item_link_description\";s:22:\"Un lien vers un année\";}s:11:\"description\";s:0:\"\";s:12:\"capabilities\";a:4:{s:12:\"manage_terms\";s:17:\"manage_categories\";s:10:\"edit_terms\";s:17:\"manage_categories\";s:12:\"delete_terms\";s:17:\"manage_categories\";s:12:\"assign_terms\";s:10:\"edit_posts\";}s:6:\"public\";i:1;s:18:\"publicly_queryable\";i:1;s:12:\"hierarchical\";i:0;s:7:\"show_ui\";i:1;s:12:\"show_in_menu\";i:1;s:17:\"show_in_nav_menus\";i:1;s:12:\"show_in_rest\";i:1;s:9:\"rest_base\";s:9:\"promotion\";s:14:\"rest_namespace\";s:5:\"wp/v2\";s:21:\"rest_controller_class\";s:24:\"WP_REST_Terms_Controller\";s:13:\"show_tagcloud\";i:1;s:18:\"show_in_quick_edit\";i:1;s:17:\"show_admin_column\";i:0;s:7:\"rewrite\";a:3:{s:17:\"permalink_rewrite\";s:12:\"taxonomy_key\";s:10:\"with_front\";s:1:\"1\";s:20:\"rewrite_hierarchical\";s:1:\"0\";}s:9:\"query_var\";s:13:\"post_type_key\";s:14:\"query_var_name\";s:0:\"\";s:12:\"default_term\";a:1:{s:20:\"default_term_enabled\";s:1:\"0\";}s:4:\"sort\";i:0;s:8:\"meta_box\";s:7:\"default\";s:11:\"meta_box_cb\";s:0:\"\";s:20:\"meta_box_sanitize_cb\";s:0:\"\";}', 'Années de promotion', 'annees-de-promotion', 'publish', 'closed', 'closed', '', 'taxonomy_656f3c1604adf', '', '', '2023-12-05 16:06:04', '2023-12-05 15:06:04', '', 0, 'http://localhost/wordpress/?post_type=acf-taxonomy&#038;p=98', 0, 'acf-taxonomy', '', 0),
(100, 2, '2023-12-05 16:09:30', '2023-12-05 15:09:30', 'a:29:{s:8:\"taxonomy\";s:10:\"competence\";s:11:\"object_type\";a:1:{i:0;s:9:\"apprenant\";}s:22:\"advanced_configuration\";i:1;s:13:\"import_source\";s:0:\"\";s:11:\"import_date\";s:0:\"\";s:6:\"labels\";a:25:{s:4:\"name\";s:11:\"competences\";s:13:\"singular_name\";s:11:\"compétence\";s:9:\"menu_name\";s:11:\"competences\";s:9:\"all_items\";s:20:\"Tout les competences\";s:9:\"edit_item\";s:20:\"Modifier compétence\";s:9:\"view_item\";s:16:\"Voir compétence\";s:11:\"update_item\";s:26:\"Mettre à jour compétence\";s:12:\"add_new_item\";s:19:\"Ajouter compétence\";s:13:\"new_item_name\";s:26:\"Nom du nouveau compétence\";s:12:\"search_items\";s:22:\"Rechercher competences\";s:13:\"popular_items\";s:21:\"competences populaire\";s:26:\"separate_items_with_commas\";s:41:\"Séparer les competences avec une virgule\";s:19:\"add_or_remove_items\";s:30:\"Ajouter ou retirer competences\";s:21:\"choose_from_most_used\";s:48:\"Choisir parmi les competences les plus utilisés\";s:9:\"most_used\";s:0:\"\";s:9:\"not_found\";s:25:\"Aucun competences trouvé\";s:8:\"no_terms\";s:17:\"Aucun competences\";s:22:\"name_field_description\";s:0:\"\";s:22:\"slug_field_description\";s:0:\"\";s:22:\"desc_field_description\";s:0:\"\";s:21:\"items_list_navigation\";s:36:\"Navigation dans la liste competences\";s:10:\"items_list\";s:17:\"Liste competences\";s:13:\"back_to_items\";s:30:\"← Aller à « competences »\";s:9:\"item_link\";s:16:\"Lien compétence\";s:21:\"item_link_description\";s:27:\"Un lien vers un compétence\";}s:11:\"description\";s:0:\"\";s:12:\"capabilities\";a:4:{s:12:\"manage_terms\";s:17:\"manage_categories\";s:10:\"edit_terms\";s:17:\"manage_categories\";s:12:\"delete_terms\";s:17:\"manage_categories\";s:12:\"assign_terms\";s:10:\"edit_posts\";}s:6:\"public\";i:1;s:18:\"publicly_queryable\";i:1;s:12:\"hierarchical\";i:0;s:7:\"show_ui\";i:1;s:12:\"show_in_menu\";i:1;s:17:\"show_in_nav_menus\";i:1;s:12:\"show_in_rest\";i:1;s:9:\"rest_base\";s:10:\"competence\";s:14:\"rest_namespace\";s:5:\"wp/v2\";s:21:\"rest_controller_class\";s:24:\"WP_REST_Terms_Controller\";s:13:\"show_tagcloud\";i:1;s:18:\"show_in_quick_edit\";i:1;s:17:\"show_admin_column\";i:0;s:7:\"rewrite\";a:3:{s:17:\"permalink_rewrite\";s:12:\"taxonomy_key\";s:10:\"with_front\";s:1:\"1\";s:20:\"rewrite_hierarchical\";s:1:\"0\";}s:9:\"query_var\";s:13:\"post_type_key\";s:14:\"query_var_name\";s:0:\"\";s:12:\"default_term\";a:1:{s:20:\"default_term_enabled\";s:1:\"0\";}s:4:\"sort\";i:0;s:8:\"meta_box\";s:7:\"default\";s:11:\"meta_box_cb\";s:0:\"\";s:20:\"meta_box_sanitize_cb\";s:0:\"\";}', 'competences', 'competences', 'publish', 'closed', 'closed', '', 'taxonomy_656f3cf0338d8', '', '', '2023-12-05 16:09:30', '2023-12-05 15:09:30', '', 0, 'http://localhost/wordpress/?post_type=acf-taxonomy&#038;p=100', 0, 'acf-taxonomy', '', 0),
(102, 2, '2023-12-05 16:17:35', '0000-00-00 00:00:00', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2023-12-05 16:17:35', '2023-12-05 15:17:35', '', 0, 'http://localhost/wordpress/?post_type=apprenant&#038;p=102', 0, 'apprenant', '', 0),
(103, 2, '2023-12-05 16:40:48', '2023-12-05 15:40:48', '', 'Apprenant test 1', '', 'publish', 'closed', 'closed', '', 'apprenant-test-1', '', '', '2023-12-06 17:34:12', '2023-12-06 16:34:12', '', 0, 'http://localhost/wordpress/?post_type=apprenant&#038;p=103', 0, 'apprenant', '', 0),
(104, 2, '2023-12-05 16:35:28', '2023-12-05 15:35:28', '', 'photo1', '', 'inherit', 'open', 'closed', '', 'photo1', '', '', '2023-12-05 16:35:28', '2023-12-05 15:35:28', '', 103, 'http://localhost/wordpress/wp-content/uploads/2023/12/photo1.png', 0, 'attachment', 'image/png', 0),
(105, 2, '2023-12-05 16:38:14', '2023-12-05 15:38:14', '', 'TEST', '', 'inherit', 'open', 'closed', '', 'test', '', '', '2023-12-05 16:38:14', '2023-12-05 15:38:14', '', 103, 'http://localhost/wordpress/wp-content/uploads/2023/12/TEST.txt', 0, 'attachment', 'text/plain', 0),
(106, 2, '2023-12-05 16:48:31', '2023-12-05 15:48:31', '', 'Apprenant test 2', '', 'publish', 'closed', 'closed', '', 'apprenant-test-2', '', '', '2023-12-06 17:36:11', '2023-12-06 16:36:11', '', 0, 'http://localhost/wordpress/?post_type=apprenant&#038;p=106', 0, 'apprenant', '', 0),
(107, 2, '2023-12-05 16:43:45', '2023-12-05 15:43:45', '', 'photo2', '', 'inherit', 'open', 'closed', '', 'photo2', '', '', '2023-12-05 16:43:45', '2023-12-05 15:43:45', '', 106, 'http://localhost/wordpress/wp-content/uploads/2023/12/photo2.png', 0, 'attachment', 'image/png', 0),
(108, 2, '2023-12-05 16:52:29', '2023-12-05 15:52:29', '', 'Apprenant test 3', '', 'publish', 'closed', 'closed', '', 'apprenant-test-3', '', '', '2023-12-06 17:33:35', '2023-12-06 16:33:35', '', 0, 'http://localhost/wordpress/?post_type=apprenant&#038;p=108', 0, 'apprenant', '', 0),
(109, 2, '2023-12-05 16:50:56', '2023-12-05 15:50:56', '', 'photo3', '', 'inherit', 'open', 'closed', '', 'photo3', '', '', '2023-12-05 16:50:56', '2023-12-05 15:50:56', '', 108, 'http://localhost/wordpress/wp-content/uploads/2023/12/photo3.png', 0, 'attachment', 'image/png', 0),
(110, 2, '2023-12-05 16:56:17', '2023-12-05 15:56:17', 'a:29:{s:8:\"taxonomy\";s:12:\"categorie-15\";s:11:\"object_type\";a:2:{i:0;s:9:\"apprenant\";i:1;s:11:\"apprenants2\";}s:22:\"advanced_configuration\";i:1;s:13:\"import_source\";s:0:\"\";s:11:\"import_date\";s:0:\"\";s:6:\"labels\";a:25:{s:4:\"name\";s:14:\"catégories15 \";s:13:\"singular_name\";s:12:\"catégorie15\";s:9:\"menu_name\";s:10:\"catégorie\";s:9:\"all_items\";s:19:\"Tout les catégorie\";s:9:\"edit_item\";s:19:\"Modifier catégorie\";s:9:\"view_item\";s:15:\"Voir catégorie\";s:11:\"update_item\";s:25:\"Mettre à jour catégorie\";s:12:\"add_new_item\";s:18:\"Ajouter catégorie\";s:13:\"new_item_name\";s:25:\"Nom du nouveau catégorie\";s:12:\"search_items\";s:21:\"Rechercher catégorie\";s:13:\"popular_items\";s:20:\"catégorie populaire\";s:26:\"separate_items_with_commas\";s:40:\"Séparer les catégorie avec une virgule\";s:19:\"add_or_remove_items\";s:29:\"Ajouter ou retirer catégorie\";s:21:\"choose_from_most_used\";s:47:\"Choisir parmi les catégorie les plus utilisés\";s:9:\"most_used\";s:0:\"\";s:9:\"not_found\";s:24:\"Aucun catégorie trouvé\";s:8:\"no_terms\";s:16:\"Aucun catégorie\";s:22:\"name_field_description\";s:0:\"\";s:22:\"slug_field_description\";s:0:\"\";s:22:\"desc_field_description\";s:0:\"\";s:21:\"items_list_navigation\";s:35:\"Navigation dans la liste catégorie\";s:10:\"items_list\";s:16:\"Liste catégorie\";s:13:\"back_to_items\";s:29:\"← Aller à « catégorie »\";s:9:\"item_link\";s:15:\"Lien catégorie\";s:21:\"item_link_description\";s:26:\"Un lien vers un catégorie\";}s:11:\"description\";s:0:\"\";s:12:\"capabilities\";a:4:{s:12:\"manage_terms\";s:17:\"manage_categories\";s:10:\"edit_terms\";s:17:\"manage_categories\";s:12:\"delete_terms\";s:17:\"manage_categories\";s:12:\"assign_terms\";s:10:\"edit_posts\";}s:6:\"public\";i:1;s:18:\"publicly_queryable\";i:1;s:12:\"hierarchical\";i:0;s:7:\"show_ui\";i:1;s:12:\"show_in_menu\";i:1;s:17:\"show_in_nav_menus\";i:1;s:12:\"show_in_rest\";i:1;s:9:\"rest_base\";s:9:\"categorie\";s:14:\"rest_namespace\";s:5:\"wp/v2\";s:21:\"rest_controller_class\";s:24:\"WP_REST_Terms_Controller\";s:13:\"show_tagcloud\";i:1;s:18:\"show_in_quick_edit\";i:1;s:17:\"show_admin_column\";i:0;s:7:\"rewrite\";a:3:{s:17:\"permalink_rewrite\";s:12:\"taxonomy_key\";s:10:\"with_front\";s:1:\"1\";s:20:\"rewrite_hierarchical\";s:1:\"0\";}s:9:\"query_var\";s:13:\"post_type_key\";s:14:\"query_var_name\";s:0:\"\";s:12:\"default_term\";a:1:{s:20:\"default_term_enabled\";s:1:\"0\";}s:4:\"sort\";i:0;s:8:\"meta_box\";s:7:\"default\";s:11:\"meta_box_cb\";s:0:\"\";s:20:\"meta_box_sanitize_cb\";s:0:\"\";}', 'catégories15', 'categories15', 'publish', 'closed', 'closed', '', 'taxonomy_656f47f834de2', '', '', '2023-12-06 17:26:40', '2023-12-06 16:26:40', '', 0, 'http://localhost/wordpress/?post_type=acf-taxonomy&#038;p=110', 0, 'acf-taxonomy', '', 0),
(114, 2, '2023-12-06 15:43:52', '2023-12-06 14:43:52', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:11:\"apprenants2\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Apprenants2', 'apprenants2', 'acf-disabled', 'closed', 'closed', '', 'group_657088a8adbb2', '', '', '2023-12-06 17:12:57', '2023-12-06 16:12:57', '', 0, 'http://localhost/wordpress/?p=114', 0, 'acf-field-group', '', 0),
(115, 2, '2023-12-06 15:43:52', '2023-12-06 14:43:52', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Nom', 'nom', 'publish', 'closed', 'closed', '', 'field_657088a8b3bfc', '', '', '2023-12-06 15:43:52', '2023-12-06 14:43:52', '', 114, 'http://localhost/wordpress/?post_type=acf-field&p=115', 0, 'acf-field', '', 0),
(116, 2, '2023-12-06 15:43:52', '2023-12-06 14:43:52', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Prénom', 'prenom', 'publish', 'closed', 'closed', '', 'field_657088a8b77a4', '', '', '2023-12-06 15:43:52', '2023-12-06 14:43:52', '', 114, 'http://localhost/wordpress/?post_type=acf-field&p=116', 1, 'acf-field', '', 0),
(117, 2, '2023-12-06 15:43:52', '2023-12-06 14:43:52', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:23:\"Une description sucinte\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Extrait', 'extrait', 'publish', 'closed', 'closed', '', 'field_657088a8bb360', '', '', '2023-12-06 15:43:52', '2023-12-06 14:43:52', '', 114, 'http://localhost/wordpress/?post_type=acf-field&p=117', 2, 'acf-field', '', 0),
(118, 2, '2023-12-06 15:43:52', '2023-12-06 14:43:52', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Lien vers Linkedin', 'lien_vers_linkedin', 'publish', 'closed', 'closed', '', 'field_657088a8bef5a', '', '', '2023-12-06 15:43:52', '2023-12-06 14:43:52', '', 114, 'http://localhost/wordpress/?post_type=acf-field&p=118', 3, 'acf-field', '', 0),
(119, 2, '2023-12-06 15:43:52', '2023-12-06 14:43:52', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Photo', 'photo', 'publish', 'closed', 'closed', '', 'field_657088a8c2df2', '', '', '2023-12-06 15:43:52', '2023-12-06 14:43:52', '', 114, 'http://localhost/wordpress/?post_type=acf-field&p=119', 4, 'acf-field', '', 0),
(120, 2, '2023-12-06 15:43:52', '2023-12-06 14:43:52', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Lien vers le portfolio', 'lien_vers_le_portfolio', 'publish', 'closed', 'closed', '', 'field_657088a8c65da', '', '', '2023-12-06 15:43:52', '2023-12-06 14:43:52', '', 114, 'http://localhost/wordpress/?post_type=acf-field&p=120', 5, 'acf-field', '', 0),
(121, 2, '2023-12-06 15:43:52', '2023-12-06 14:43:52', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"file\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:8:\"min_size\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'CV', 'cv', 'publish', 'closed', 'closed', '', 'field_657088a8ca3cf', '', '', '2023-12-06 15:43:52', '2023-12-06 14:43:52', '', 114, 'http://localhost/wordpress/?post_type=acf-field&p=121', 6, 'acf-field', '', 0),
(123, 2, '2023-12-06 16:06:20', '2023-12-06 15:06:20', '', 'Agustin', '', 'publish', 'closed', 'closed', '', 'agustin', '', '', '2023-12-06 16:07:04', '2023-12-06 15:07:04', '', 0, 'http://localhost/wordpress/?post_type=apprenants2&#038;p=123', 0, 'apprenants2', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'twentytwentyfour', 'twentytwentyfour', 0),
(3, 'twentytwentytwo', 'twentytwentytwo', 0),
(4, 'Peugot', 'peugot', 0),
(5, 'Ferrari', 'ferrari', 0),
(6, 'Kit', 'kit', 0),
(7, '2023-2024', '2023-2024', 0),
(8, '2022-2023', '2022-2023', 0),
(9, 'Front end', 'front-end', 0),
(10, 'Back end', 'back-end', 0),
(11, 'formation dwwm', 'formation-dwwm', 0),
(12, 'cuisine', 'cuisine', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(6, 1, 0),
(7, 2, 0),
(38, 1, 0),
(40, 3, 0),
(82, 6, 0),
(103, 7, 0),
(103, 9, 0),
(103, 11, 0),
(106, 7, 0),
(106, 10, 0),
(106, 11, 0),
(108, 8, 0),
(108, 10, 0),
(108, 12, 0),
(114, 1, 0),
(123, 9, 0),
(123, 10, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'wp_theme', '', 0, 1),
(3, 3, 'wp_theme', '', 0, 1),
(4, 4, 'marque', '', 0, 0),
(5, 5, 'marque', '', 0, 0),
(6, 6, 'marque', '', 0, 1),
(7, 7, 'promotion', '', 0, 2),
(8, 8, 'promotion', '', 0, 1),
(9, 9, 'competence', '', 0, 1),
(10, 10, 'competence', '', 0, 1),
(11, 11, 'categorie-15', '', 0, 2),
(12, 12, 'categorie-15', '', 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Agustin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"fb7b0ac79481f46d7c7a43094fbacef5d5179fee29141fd11fe6085eb85f50f1\";a:4:{s:10:\"expiration\";i:1702300263;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36\";s:5:\"login\";i:1701090663;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '5'),
(18, 1, 'wp_persisted_preferences', 'a:4:{s:14:\"core/edit-post\";a:6:{s:26:\"isComplementaryAreaVisible\";b:0;s:12:\"welcomeGuide\";b:0;s:9:\"focusMode\";b:0;s:12:\"fixedToolbar\";b:0;s:15:\"distractionFree\";b:0;s:10:\"openPanels\";a:2:{i:0;s:11:\"post-status\";i:1;s:24:\"yoast-seo/document-panel\";}}s:9:\"_modified\";s:24:\"2023-11-29T08:45:20.818Z\";s:22:\"core/customize-widgets\";a:1:{s:12:\"welcomeGuide\";b:0;}s:17:\"core/edit-widgets\";a:2:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;}}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse'),
(20, 1, 'wp_user-settings-time', '1701170405'),
(21, 1, 'wp_yoast_notifications', 'a:2:{i:0;a:2:{s:7:\"message\";s:397:\"<p>Vous pouvez accélérer votre site et obtenir des statistiques de maillage interne en nous autorisant à procéder à quelques optimisations sur le stockage des données SEO.</p><p>Nous estimons que cela prendra moins d’une minute.</p><a class=\"button\" href=\"http://localhost/wordpress/wp-admin/admin.php?page=wpseo_tools&start-indexation=true\">Démarrer l’optimisation des données SEO</a>\";s:7:\"options\";a:10:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:13:\"wpseo-reindex\";s:4:\"user\";O:7:\"WP_User\":8:{s:4:\"data\";O:8:\"stdClass\":10:{s:2:\"ID\";s:1:\"1\";s:10:\"user_login\";s:7:\"Agustin\";s:9:\"user_pass\";s:34:\"$P$Bh5etpudhQ0xcLAnDU3u7n7k9uX1Hh/\";s:13:\"user_nicename\";s:7:\"agustin\";s:10:\"user_email\";s:24:\"agustin.wdwm48@gmail.com\";s:8:\"user_url\";s:26:\"http://localhost/wordpress\";s:15:\"user_registered\";s:19:\"2023-11-27 13:10:45\";s:19:\"user_activation_key\";s:0:\"\";s:11:\"user_status\";s:1:\"0\";s:12:\"display_name\";s:7:\"Agustin\";}s:2:\"ID\";i:1;s:4:\"caps\";a:1:{s:13:\"administrator\";b:1;}s:7:\"cap_key\";s:15:\"wp_capabilities\";s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:7:\"allcaps\";a:64:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:10:\"copy_posts\";b:1;s:20:\"wpseo_manage_options\";b:1;s:13:\"administrator\";b:1;}s:6:\"filter\";N;s:16:\"\0WP_User\0site_id\";i:1;}s:5:\"nonce\";N;s:8:\"priority\";d:0.8;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}i:1;a:2:{s:7:\"message\";s:613:\"<p><strong>Important problème SEO : Vous bloquez actuellement l’accès aux robots des moteurs de recherche.</strong> Si vous souhaitez que les moteurs de recherche affichent votre site dans leurs résultats, vous devez <a href=\"http://localhost/wordpress/wp-admin/options-reading.php\">aller dans les réglages de Lecture</a> et décocher la case de l’option « Visibilité pour les moteurs de recherche ». <button type=\"button\" id=\"robotsmessage-dismiss-button\" class=\"button-link hide-if-no-js\" data-nonce=\"a166c052f2\">Je ne veux pas que ce site apparaisse dans les résultats de recherche.</button></p>\";s:7:\"options\";a:10:{s:4:\"type\";s:5:\"error\";s:2:\"id\";s:32:\"wpseo-search-engines-discouraged\";s:4:\"user\";O:7:\"WP_User\":8:{s:4:\"data\";O:8:\"stdClass\":10:{s:2:\"ID\";s:1:\"1\";s:10:\"user_login\";s:7:\"Agustin\";s:9:\"user_pass\";s:34:\"$P$Bh5etpudhQ0xcLAnDU3u7n7k9uX1Hh/\";s:13:\"user_nicename\";s:7:\"agustin\";s:10:\"user_email\";s:24:\"agustin.wdwm48@gmail.com\";s:8:\"user_url\";s:26:\"http://localhost/wordpress\";s:15:\"user_registered\";s:19:\"2023-11-27 13:10:45\";s:19:\"user_activation_key\";s:0:\"\";s:11:\"user_status\";s:1:\"0\";s:12:\"display_name\";s:7:\"Agustin\";}s:2:\"ID\";i:1;s:4:\"caps\";a:1:{s:13:\"administrator\";b:1;}s:7:\"cap_key\";s:15:\"wp_capabilities\";s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:7:\"allcaps\";a:64:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:10:\"copy_posts\";b:1;s:20:\"wpseo_manage_options\";b:1;s:13:\"administrator\";b:1;}s:6:\"filter\";N;s:16:\"\0WP_User\0site_id\";i:1;}s:5:\"nonce\";N;s:8:\"priority\";i:1;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}}'),
(22, 2, 'nickname', 'Agus2'),
(23, 2, 'first_name', 'Agustin'),
(24, 2, 'last_name', 'Zavala Aguilar'),
(25, 2, 'description', ''),
(26, 2, 'rich_editing', 'true'),
(27, 2, 'syntax_highlighting', 'true'),
(28, 2, 'comment_shortcuts', 'false'),
(29, 2, 'admin_color', 'fresh'),
(30, 2, 'use_ssl', '0'),
(31, 2, 'show_admin_bar_front', 'true'),
(32, 2, 'locale', ''),
(33, 2, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(34, 2, 'wp_user_level', '10'),
(35, 2, '_yoast_wpseo_profile_updated', '1701255823'),
(36, 2, 'dismissed_wp_pointers', ''),
(37, 2, 'facebook', ''),
(38, 2, 'instagram', ''),
(39, 2, 'linkedin', ''),
(40, 2, 'myspace', ''),
(41, 2, 'pinterest', ''),
(42, 2, 'soundcloud', ''),
(43, 2, 'tumblr', ''),
(44, 2, 'twitter', ''),
(45, 2, 'youtube', ''),
(46, 2, 'wikipedia', ''),
(47, 2, 'session_tokens', 'a:2:{s:64:\"4f037ef42a0df89bbd7f44f4720e55348877c3a2975d34ed880cccbf9bc82141\";a:4:{s:10:\"expiration\";i:1702887792;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36\";s:5:\"login\";i:1701678192;}s:64:\"0ea3eb7e5f234aa0951a9b3498c1455883170b2b24f5c9441d4268cf87f64cc7\";a:4:{s:10:\"expiration\";i:1701953331;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36\";s:5:\"login\";i:1701780531;}}'),
(48, 2, 'wp_dashboard_quick_press_last_post_id', '39'),
(50, 1, '_yoast_wpseo_profile_updated', '1701255823'),
(52, 2, 'wp_user-settings', 'libraryContent=browse'),
(53, 2, 'wp_user-settings-time', '1701263021'),
(54, 2, 'wp_persisted_preferences', 'a:2:{s:14:\"core/edit-post\";a:3:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;s:10:\"openPanels\";a:6:{i:0;s:11:\"post-status\";i:1;s:24:\"yoast-seo/document-panel\";i:2;s:15:\"page-attributes\";i:3;s:21:\"taxonomy-panel-marque\";i:4;s:24:\"taxonomy-panel-apprenant\";i:5;s:25:\"taxonomy-panel-competence\";}}s:9:\"_modified\";s:24:\"2023-12-06T16:23:38.133Z\";}'),
(55, 2, 'manageedit-acf-taxonomycolumnshidden', 'a:1:{i:0;s:7:\"acf-key\";}'),
(56, 2, 'acf_user_settings', 'a:2:{s:20:\"taxonomies-first-run\";b:1;s:19:\"post-type-first-run\";b:1;}'),
(57, 2, 'closedpostboxes_acf-taxonomy', 'a:0:{}'),
(58, 2, 'metaboxhidden_acf-taxonomy', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(59, 2, 'manageedit-acf-post-typecolumnshidden', 'a:1:{i:0;s:7:\"acf-key\";}'),
(60, 2, 'closedpostboxes_acf-post-type', 'a:0:{}'),
(61, 2, 'metaboxhidden_acf-post-type', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(62, 2, 'closedpostboxes_voiture', 'a:0:{}'),
(63, 2, 'metaboxhidden_voiture', 'a:0:{}'),
(64, 2, 'meta-box-order_voiture', 'a:4:{s:6:\"normal\";s:23:\"acf-group_656f29b9bc9d3\";s:8:\"advanced\";s:0:\"\";s:4:\"side\";s:10:\"wpseo_meta\";s:15:\"acf_after_title\";s:0:\"\";}'),
(65, 2, 'closedpostboxes_page', 'a:1:{i:0;s:10:\"wpseo_meta\";}'),
(66, 2, 'metaboxhidden_page', 'a:0:{}'),
(67, 2, 'closedpostboxes_apprenants2', 'a:0:{}'),
(68, 2, 'metaboxhidden_apprenants2', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(69, 2, 'closedpostboxes_apprenant', 'a:0:{}'),
(70, 2, 'metaboxhidden_apprenant', 'a:0:{}'),
(71, 2, 'meta-box-order_apprenant', 'a:4:{s:6:\"normal\";s:0:\"\";s:8:\"advanced\";s:0:\"\";s:4:\"side\";s:23:\"acf-group_656f397ac8e14\";s:15:\"acf_after_title\";s:0:\"\";}');

-- --------------------------------------------------------

--
-- Structure de la table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'Agustin', '$P$Bh5etpudhQ0xcLAnDU3u7n7k9uX1Hh/', 'agustin', 'agustin.wdwm48@gmail.com', 'http://localhost/wordpress', '2023-11-27 13:10:45', '', 0, 'Agustin'),
(2, 'Agus2', '$P$BtJtqByjXrlemp/2M1WvEmhtV0XbYO0', 'agus2', 'movil82@gmail.com', '', '2023-11-29 09:09:05', '1701248945:$P$BOlhvNXMxhbBN/ITzG0F1i21iOdM.00', 0, 'Agustin Zavala Aguilar');

-- --------------------------------------------------------

--
-- Structure de la table `wp_yoast_indexable`
--

CREATE TABLE `wp_yoast_indexable` (
  `id` int(11) UNSIGNED NOT NULL,
  `permalink` longtext DEFAULT NULL,
  `permalink_hash` varchar(40) DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_type` varchar(32) NOT NULL,
  `object_sub_type` varchar(32) DEFAULT NULL,
  `author_id` bigint(20) DEFAULT NULL,
  `post_parent` bigint(20) DEFAULT NULL,
  `title` text DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `breadcrumb_title` text DEFAULT NULL,
  `post_status` varchar(20) DEFAULT NULL,
  `is_public` tinyint(1) DEFAULT NULL,
  `is_protected` tinyint(1) DEFAULT 0,
  `has_public_posts` tinyint(1) DEFAULT NULL,
  `number_of_pages` int(11) UNSIGNED DEFAULT NULL,
  `canonical` longtext DEFAULT NULL,
  `primary_focus_keyword` varchar(191) DEFAULT NULL,
  `primary_focus_keyword_score` int(3) DEFAULT NULL,
  `readability_score` int(3) DEFAULT NULL,
  `is_cornerstone` tinyint(1) DEFAULT 0,
  `is_robots_noindex` tinyint(1) DEFAULT 0,
  `is_robots_nofollow` tinyint(1) DEFAULT 0,
  `is_robots_noarchive` tinyint(1) DEFAULT 0,
  `is_robots_noimageindex` tinyint(1) DEFAULT 0,
  `is_robots_nosnippet` tinyint(1) DEFAULT 0,
  `twitter_title` text DEFAULT NULL,
  `twitter_image` longtext DEFAULT NULL,
  `twitter_description` longtext DEFAULT NULL,
  `twitter_image_id` varchar(191) DEFAULT NULL,
  `twitter_image_source` text DEFAULT NULL,
  `open_graph_title` text DEFAULT NULL,
  `open_graph_description` longtext DEFAULT NULL,
  `open_graph_image` longtext DEFAULT NULL,
  `open_graph_image_id` varchar(191) DEFAULT NULL,
  `open_graph_image_source` text DEFAULT NULL,
  `open_graph_image_meta` mediumtext DEFAULT NULL,
  `link_count` int(11) DEFAULT NULL,
  `incoming_link_count` int(11) DEFAULT NULL,
  `prominent_words_version` int(11) UNSIGNED DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `blog_id` bigint(20) NOT NULL DEFAULT 1,
  `language` varchar(32) DEFAULT NULL,
  `region` varchar(32) DEFAULT NULL,
  `schema_page_type` varchar(64) DEFAULT NULL,
  `schema_article_type` varchar(64) DEFAULT NULL,
  `has_ancestors` tinyint(1) DEFAULT 0,
  `estimated_reading_time_minutes` int(11) DEFAULT NULL,
  `version` int(11) DEFAULT 1,
  `object_last_modified` datetime DEFAULT NULL,
  `object_published_at` datetime DEFAULT NULL,
  `inclusive_language_score` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_yoast_indexable`
--

INSERT INTO `wp_yoast_indexable` (`id`, `permalink`, `permalink_hash`, `object_id`, `object_type`, `object_sub_type`, `author_id`, `post_parent`, `title`, `description`, `breadcrumb_title`, `post_status`, `is_public`, `is_protected`, `has_public_posts`, `number_of_pages`, `canonical`, `primary_focus_keyword`, `primary_focus_keyword_score`, `readability_score`, `is_cornerstone`, `is_robots_noindex`, `is_robots_nofollow`, `is_robots_noarchive`, `is_robots_noimageindex`, `is_robots_nosnippet`, `twitter_title`, `twitter_image`, `twitter_description`, `twitter_image_id`, `twitter_image_source`, `open_graph_title`, `open_graph_description`, `open_graph_image`, `open_graph_image_id`, `open_graph_image_source`, `open_graph_image_meta`, `link_count`, `incoming_link_count`, `prominent_words_version`, `created_at`, `updated_at`, `blog_id`, `language`, `region`, `schema_page_type`, `schema_article_type`, `has_ancestors`, `estimated_reading_time_minutes`, `version`, `object_last_modified`, `object_published_at`, `inclusive_language_score`) VALUES
(1, 'http://localhost/wordpress/?p=6', '31:1ec59681bfc6ec85473dea1a8cf8f78c', 6, 'post', 'post', 1, 0, NULL, NULL, 'Le chien des pharaons', 'draft', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-29 08:44:47', '2023-11-29 07:44:47', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-11-27 14:50:57', '0000-00-00 00:00:00', 0),
(2, 'http://localhost/wordpress/author/agustin/', '42:d57c9a4554f2ccba637cd6f652536d76', 1, 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'https://2.gravatar.com/avatar/e12354740803d1f41e95b9395316ec38?s=500&d=mm&r=g', NULL, NULL, 'gravatar-image', NULL, NULL, 'https://2.gravatar.com/avatar/e12354740803d1f41e95b9395316ec38?s=500&d=mm&r=g', NULL, 'gravatar-image', NULL, NULL, NULL, NULL, '2023-11-29 08:44:47', '2023-11-30 14:45:24', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-11-30 15:45:24', '2023-11-27 13:10:45', NULL),
(3, 'http://localhost/wordpress/2023/11/27/bonjour-tout-le-monde/', '60:a5d147cf68ac55fb4f9c0b3e01c8b6fe', 1, 'post', 'post', 1, 0, NULL, NULL, 'Bonjour tout le monde !', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-11-29 08:44:47', '2023-11-29 09:14:45', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-11-27 13:10:45', '2023-11-27 13:10:45', 0),
(4, 'http://localhost/wordpress/?p=38', '32:8c69943a1e469bc740c848531417d94e', 38, 'post', 'post', 1, 0, NULL, NULL, 'Le chien des pharaons', 'draft', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-29 08:44:53', '2023-11-29 07:44:53', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(5, 'http://localhost/wordpress/', '27:f6ce664b63cd5429c9dfe0e29670b4df', NULL, 'home-page', NULL, NULL, NULL, '%%sitename%% %%page%% %%sep%% %%sitedesc%%', '', 'Accueil', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '%%sitename%%', '', '', '0', NULL, NULL, NULL, NULL, NULL, '2023-11-29 08:45:19', '2023-11-30 14:45:24', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-11-30 15:45:24', '2023-11-27 13:10:45', NULL),
(6, 'http://localhost/wordpress/', '27:f6ce664b63cd5429c9dfe0e29670b4df', 11, 'post', 'page', 1, 0, NULL, NULL, 'Agustín Zavala Aguilar', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-11-29 08:45:19', '2023-11-29 09:02:20', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-11-28 15:16:58', '2023-11-28 11:19:08', 0),
(7, NULL, NULL, NULL, 'system-page', '404', NULL, NULL, 'Page non trouvée %%sep%% %%sitename%%', NULL, 'Erreur 404 : Page introuvable', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-29 09:11:28', '2023-11-29 08:11:28', 1, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL),
(8, 'http://localhost/wordpress/?page_id=3', '37:8974cd9472d7efb35f574c376af4e91c', 3, 'post', 'page', 1, 0, NULL, NULL, 'Politique de confidentialité', 'draft', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-29 10:02:19', '2023-11-29 09:02:19', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-11-27 13:10:45', '2023-11-27 13:10:45', 0),
(9, 'http://localhost/wordpress/contact/', '35:3e364b5c34fe8177d3e29861deb1d936', 17, 'post', 'page', 1, 0, NULL, NULL, 'Contacts', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-11-29 10:02:19', '2023-11-30 14:45:24', 1, NULL, NULL, NULL, NULL, 0, 1, 2, '2023-11-30 15:45:24', '2023-11-30 15:30:22', 0),
(10, 'http://localhost/wordpress/page-d-exemple/', '42:cfcff77316ab02eca55306f092982e8d', 2, 'post', 'page', 1, 0, NULL, NULL, 'Page d’exemple', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2023-11-29 10:02:19', '2023-11-29 09:02:19', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-11-27 13:10:45', '2023-11-27 13:10:45', 0),
(11, 'http://localhost/wordpress/agustins-portfolio/', '46:8ccfe36875e17c7a9dc43d34632802ba', 15, 'post', 'page', 1, 0, NULL, NULL, 'Agustin&rsquo;s Portfolio', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-11-29 10:02:19', '2023-11-29 09:02:19', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-11-28 10:00:44', '2023-11-28 09:59:16', 0),
(12, 'http://localhost/wordpress/?page_id=13', '38:ccfc190b72f8a7d8b6ee9837b0e06a89', 13, 'post', 'page', 1, 0, NULL, NULL, 'About me', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-29 10:02:19', '2023-11-29 09:02:19', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-11-28 14:47:25', '2023-11-28 14:47:25', 0),
(13, 'http://localhost/wordpress/category/non-classe/', '47:39edea5f0b2ad45789593dc5f8f35cfc', 1, 'term', 'category', NULL, NULL, NULL, NULL, 'Non classé', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-11-29 10:02:19', '2023-11-29 09:02:20', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-11-27 13:10:45', '2023-11-27 13:10:45', NULL),
(14, NULL, NULL, NULL, 'system-page', 'search-result', NULL, NULL, 'Vous avez cherché %%searchphrase%% %%page%% %%sep%% %%sitename%%', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-29 10:02:19', '2023-11-29 09:02:19', 1, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL),
(15, NULL, NULL, NULL, 'date-archive', NULL, NULL, NULL, '%%date%% %%page%% %%sep%% %%sitename%%', '', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-29 10:02:19', '2023-11-29 09:02:19', 1, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL),
(16, 'http://localhost/wordpress/work/', '32:5e2384865a0d84551ddf0ce205f0c3b2', 44, 'post', 'page', 2, 0, NULL, NULL, 'Work', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-11-29 15:40:48', '2023-11-29 14:40:48', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2023-11-29 15:40:48', '2023-11-29 15:40:48', 0),
(17, 'http://localhost/wordpress/about/', '33:e4aafb1a1dec8f9e3103fa554b9100fd', 46, 'post', 'page', 2, 0, NULL, NULL, 'About', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-11-29 15:50:52', '2023-11-29 14:50:53', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2023-11-29 15:50:53', '2023-11-29 15:50:52', 0),
(18, 'http://localhost/wordpress/marque/peugot/', '41:3fa957766650003d1d3860c8e1f21b26', 4, 'term', 'marque', NULL, NULL, NULL, NULL, 'Peugot', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-12-05 14:20:06', '2023-12-05 13:20:06', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-12-05 15:20:06', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `wp_yoast_indexable_hierarchy`
--

CREATE TABLE `wp_yoast_indexable_hierarchy` (
  `indexable_id` int(11) UNSIGNED NOT NULL,
  `ancestor_id` int(11) UNSIGNED NOT NULL,
  `depth` int(11) UNSIGNED DEFAULT NULL,
  `blog_id` bigint(20) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_yoast_indexable_hierarchy`
--

INSERT INTO `wp_yoast_indexable_hierarchy` (`indexable_id`, `ancestor_id`, `depth`, `blog_id`) VALUES
(1, 0, 0, 1),
(2, 0, 0, 1),
(3, 0, 0, 1),
(4, 0, 0, 1),
(5, 0, 0, 1),
(6, 0, 0, 1),
(8, 0, 0, 1),
(9, 0, 0, 1),
(10, 0, 0, 1),
(11, 0, 0, 1),
(12, 0, 0, 1),
(13, 0, 0, 1),
(16, 0, 0, 1),
(17, 0, 0, 1),
(18, 0, 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `wp_yoast_migrations`
--

CREATE TABLE `wp_yoast_migrations` (
  `id` int(11) UNSIGNED NOT NULL,
  `version` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_yoast_migrations`
--

INSERT INTO `wp_yoast_migrations` (`id`, `version`) VALUES
(1, '20171228151840'),
(2, '20171228151841'),
(3, '20190529075038'),
(4, '20191011111109'),
(5, '20200408101900'),
(6, '20200420073606'),
(7, '20200428123747'),
(8, '20200428194858'),
(9, '20200429105310'),
(10, '20200430075614'),
(11, '20200430150130'),
(12, '20200507054848'),
(13, '20200513133401'),
(14, '20200609154515'),
(15, '20200616130143'),
(16, '20200617122511'),
(17, '20200702141921'),
(18, '20200728095334'),
(19, '20201202144329'),
(20, '20201216124002'),
(21, '20201216141134'),
(22, '20210817092415'),
(23, '20211020091404'),
(24, '20230417083836');

-- --------------------------------------------------------

--
-- Structure de la table `wp_yoast_primary_term`
--

CREATE TABLE `wp_yoast_primary_term` (
  `id` int(11) UNSIGNED NOT NULL,
  `post_id` bigint(20) DEFAULT NULL,
  `term_id` bigint(20) DEFAULT NULL,
  `taxonomy` varchar(32) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `blog_id` bigint(20) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_yoast_seo_links`
--

CREATE TABLE `wp_yoast_seo_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `target_post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` varchar(8) DEFAULT NULL,
  `indexable_id` int(11) UNSIGNED DEFAULT NULL,
  `target_indexable_id` int(11) UNSIGNED DEFAULT NULL,
  `height` int(11) UNSIGNED DEFAULT NULL,
  `width` int(11) UNSIGNED DEFAULT NULL,
  `size` int(11) UNSIGNED DEFAULT NULL,
  `language` varchar(32) DEFAULT NULL,
  `region` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `wp_yoast_seo_links`
--

INSERT INTO `wp_yoast_seo_links` (`id`, `url`, `post_id`, `target_post_id`, `type`, `indexable_id`, `target_indexable_id`, `height`, `width`, `size`, `language`, `region`) VALUES
(1, 'http://localhost/wordpress/wp-admin/', 2, NULL, 'internal', 10, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Index pour la table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Index pour la table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Index pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Index pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Index pour la table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Index pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Index pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Index pour la table `wp_yoast_indexable`
--
ALTER TABLE `wp_yoast_indexable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_type_and_sub_type` (`object_type`,`object_sub_type`),
  ADD KEY `object_id_and_type` (`object_id`,`object_type`),
  ADD KEY `permalink_hash_and_object_type` (`permalink_hash`,`object_type`),
  ADD KEY `subpages` (`post_parent`,`object_type`,`post_status`,`object_id`),
  ADD KEY `prominent_words` (`prominent_words_version`,`object_type`,`object_sub_type`,`post_status`),
  ADD KEY `published_sitemap_index` (`object_published_at`,`is_robots_noindex`,`object_type`,`object_sub_type`);

--
-- Index pour la table `wp_yoast_indexable_hierarchy`
--
ALTER TABLE `wp_yoast_indexable_hierarchy`
  ADD PRIMARY KEY (`indexable_id`,`ancestor_id`),
  ADD KEY `indexable_id` (`indexable_id`),
  ADD KEY `ancestor_id` (`ancestor_id`),
  ADD KEY `depth` (`depth`);

--
-- Index pour la table `wp_yoast_migrations`
--
ALTER TABLE `wp_yoast_migrations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wp_yoast_migrations_version` (`version`);

--
-- Index pour la table `wp_yoast_primary_term`
--
ALTER TABLE `wp_yoast_primary_term`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_taxonomy` (`post_id`,`taxonomy`),
  ADD KEY `post_term` (`post_id`,`term_id`);

--
-- Index pour la table `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_direction` (`post_id`,`type`),
  ADD KEY `indexable_link_direction` (`indexable_id`,`type`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=894;

--
-- AUTO_INCREMENT pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=214;

--
-- AUTO_INCREMENT pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT pour la table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `wp_yoast_indexable`
--
ALTER TABLE `wp_yoast_indexable`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `wp_yoast_migrations`
--
ALTER TABLE `wp_yoast_migrations`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT pour la table `wp_yoast_primary_term`
--
ALTER TABLE `wp_yoast_primary_term`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
