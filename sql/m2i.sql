-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 26 oct. 2023 à 20:38
-- Version du serveur : 8.0.27
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `m2i`
--

-- --------------------------------------------------------

--
-- Structure de la table `apprenants`
--

DROP TABLE IF EXISTS `apprenants`;
CREATE TABLE IF NOT EXISTS `apprenants` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `NOM` varchar(33) NOT NULL,
  `PRENOM` varchar(33) NOT NULL,
  `ROME` varchar(9) NOT NULL DEFAULT 'AAAAA',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `apprenants`
--

INSERT INTO `apprenants` (`ID`, `NOM`, `PRENOM`, `ROME`) VALUES
(5, 'Allard', 'Louis', 'K2111'),
(4, 'Mentel', 'Frederic', 'D1403'),
(7, 'Valjean', 'Jean', 'AAAAA'),
(8, 'Doe', 'John', 'AAAAA'),
(10, 'Lamy', 'Franck', 'L1204'),
(11, 'Meunier', 'Franck', 'M1703'),
(12, 'Bauer', 'Alain', 'AAAAA');

-- --------------------------------------------------------

--
-- Structure de la table `metiers`
--

DROP TABLE IF EXISTS `metiers`;
CREATE TABLE IF NOT EXISTS `metiers` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CODE_ROME` varchar(9) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `LIBELLE_ROME` varchar(95) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=534 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `metiers`
--

INSERT INTO `metiers` (`ID`, `CODE_ROME`, `LIBELLE_ROME`) VALUES
(1, 'A1101', 'Conduite d\'engins agricoles et forestiers'),
(2, 'A1201', 'Bûcheronnage et élagage'),
(3, 'A1205', 'Sylviculture'),
(4, 'A1301', 'Conseil et assistance technique en agriculture et environnement naturel'),
(5, 'A1302', 'Contrôle et diagnostic technique en agriculture'),
(6, 'A1303', 'Ingénierie en agriculture et environnement naturel'),
(7, 'A1401', 'Aide agricole de production fruitière ou viticole'),
(8, 'A1402', 'Aide agricole de production légumière ou végétale'),
(9, 'A1405', 'Arboriculture et viticulture'),
(10, 'A1414', 'Horticulture et maraîchage'),
(11, 'A1417', 'Saliculture'),
(12, 'A1403', 'Aide d\'élevage agricole et aquacole'),
(13, 'A1404', 'Aquaculture'),
(14, 'A1406', 'Encadrement équipage de la pêche'),
(15, 'A1407', 'Élevage bovin ou équin'),
(16, 'A1408', 'Élevage d\'animaux sauvages ou de compagnie'),
(17, 'A1409', 'Élevage de lapins et volailles'),
(18, 'A1410', 'Élevage ovin ou caprin'),
(19, 'A1411', 'Élevage porcin'),
(20, 'A1415', 'Équipage de la pêche'),
(21, 'A1416', 'Polyculture, élevage'),
(22, 'F1101', 'Architecture du BTP et du paysage'),
(23, 'F1102', 'Conception - aménagement d\'espaces intérieurs'),
(24, 'F1103', 'Contrôle et diagnostic technique du bâtiment'),
(25, 'F1104', 'Dessin BTP et paysage'),
(26, 'F1105', 'Études géologiques'),
(27, 'F1106', 'Ingénierie et études du BTP'),
(28, 'F1107', 'Mesures topographiques'),
(29, 'I1101', 'Direction et ingénierie en entretien infrastructure et bâti'),
(30, 'B1101', 'Création en arts plastiques'),
(31, 'B1201', 'Réalisation d\'objets décoratifs et utilitaires en céramique et matériaux de synthèse'),
(32, 'B1301', 'Décoration d\'espaces de vente et d\'exposition'),
(33, 'B1302', 'Décoration d\'objets d\'art et artisanaux'),
(34, 'B1303', 'Gravure - ciselure'),
(35, 'B1401', 'Réalisation d\'objets en lianes, fibres et brins végétaux'),
(36, 'B1402', 'Reliure et restauration de livres et archives'),
(37, 'B1501', 'Fabrication et réparation d\'instruments de musique'),
(38, 'B1601', 'Métallerie d\'art'),
(39, 'B1602', 'Réalisation d\'objets artistiques et fonctionnels en verre'),
(40, 'B1603', 'Réalisation d\'ouvrages en bijouterie, joaillerie et orfèvrerie'),
(41, 'B1604', 'Réparation - montage en systèmes horlogers'),
(42, 'B1806', 'Tapisserie - décoration en ameublement'),
(43, 'E1202', 'Production en laboratoire cinématographique'),
(44, 'E1203', 'Production en laboratoire photographique'),
(45, 'E1204', 'Projection cinéma'),
(46, 'L1304', 'Réalisation cinématographique et audiovisuelle'),
(47, 'L1505', 'Image cinématographique et télévisuelle'),
(48, 'L1507', 'Montage audiovisuel et post-production'),
(49, 'L1508', 'Prise de son et sonorisation'),
(50, 'L1509', 'Régie générale'),
(51, 'L1510', 'Films d\'animation et effets spéciaux'),
(52, 'L1101', 'Animation musicale et scénique'),
(53, 'L1102', 'Mannequinat et pose artistique'),
(54, 'L1103', 'Présentation de spectacles ou d\'émissions'),
(55, 'L1201', 'Danse'),
(56, 'L1202', 'Musique et chant'),
(57, 'L1203', 'Art dramatique'),
(58, 'L1204', 'Arts du cirque et arts visuels'),
(59, 'L1301', 'Mise en scène de spectacles vivants'),
(60, 'L1302', 'Production et administration spectacle, cinéma et audiovisuel'),
(61, 'L1303', 'Promotion d\'artistes et de spectacles'),
(62, 'L1501', 'Coiffure et maquillage spectacle'),
(63, 'L1502', 'Costume et habillage spectacle'),
(64, 'L1503', 'Décor et accessoires spectacle'),
(65, 'L1504', 'Éclairage spectacle'),
(66, 'L1506', 'Machinerie spectacle'),
(67, 'D1204', 'Location de véhicules ou de matériel de loisirs'),
(68, 'D1404', 'Relation commerciale en vente de véhicules'),
(69, 'I1103', 'Supervision d\'entretien et gestion de véhicules'),
(70, 'I1604', 'Mécanique automobile et entretien de véhicules'),
(71, 'I1606', 'Réparation de carrosserie'),
(72, 'I1607', 'Réparation de cycles, motocycles et motoculteurs de loisirs'),
(73, 'F1108', 'Métré de la construction'),
(74, 'F1201', 'Conduite de travaux du BTP et de travaux paysagers'),
(75, 'F1202', 'Direction de chantier du BTP'),
(76, 'F1203', 'Direction et ingénierie d\'exploitation de gisements et de carrières'),
(77, 'F1204', 'Qualité Sécurité Environnement et protection santé du BTP'),
(78, 'F1301', 'Conduite de grue'),
(79, 'F1302', 'Conduite d\'engins de terrassement et de carrière'),
(80, 'F1401', 'Extraction liquide et gazeuse'),
(81, 'F1402', 'Extraction solide'),
(82, 'F1702', 'Construction de routes et voies'),
(83, 'F1704', 'Préparation du gros oeuvre et des travaux publics'),
(84, 'F1705', 'Pose de canalisations'),
(85, 'F1706', 'Préfabrication en béton industriel'),
(86, 'H2802', 'Conduite d\'installation de production de matériaux de construction'),
(87, 'H2804', 'Pilotage de centrale à béton prêt à l\'emploi, ciment, enrobés et granulats'),
(88, 'F1501', 'Montage de structures et de charpentes bois'),
(89, 'F1502', 'Montage de structures métalliques'),
(90, 'F1503', 'Réalisation - installation d\'ossatures bois'),
(91, 'F1701', 'Construction en béton'),
(92, 'F1703', 'Maçonnerie'),
(93, 'F1601', 'Application et décoration en plâtre, stuc et staff'),
(94, 'F1602', 'Électricité bâtiment'),
(95, 'F1603', 'Installation d\'équipements sanitaires et thermiques'),
(96, 'F1604', 'Montage d\'agencements'),
(97, 'F1605', 'Montage de réseaux électriques et télécoms'),
(98, 'F1606', 'Peinture en bâtiment'),
(99, 'F1607', 'Pose de fermetures menuisées'),
(100, 'F1608', 'Pose de revêtements rigides'),
(101, 'F1609', 'Pose de revêtements souples'),
(102, 'F1610', 'Pose et restauration de couvertures'),
(103, 'F1611', 'Réalisation et restauration de façades'),
(104, 'F1612', 'Taille et décoration de pierres'),
(105, 'F1613', 'Travaux d\'étanchéité et d\'isolation'),
(106, 'D1101', 'Boucherie'),
(107, 'D1102', 'Boulangerie - viennoiserie'),
(108, 'D1103', 'Charcuterie - traiteur'),
(109, 'D1104', 'Pâtisserie, confiserie, chocolaterie et glacerie'),
(110, 'D1105', 'Poissonnerie'),
(111, 'D1106', 'Vente en alimentation'),
(112, 'D1205', 'Nettoyage d\'articles textiles ou cuirs'),
(113, 'D1206', 'Réparation d\'articles en cuir et matériaux souples'),
(114, 'D1207', 'Retouches en habillement'),
(115, 'D1209', 'Vente de végétaux'),
(116, 'D1210', 'Vente en animalerie'),
(117, 'D1211', 'Vente en articles de sport et loisirs'),
(118, 'D1212', 'Vente en décoration et équipement du foyer'),
(119, 'D1301', 'Management de magasin de détail'),
(120, 'J1405', 'Optique - lunetterie'),
(121, 'D1107', 'Vente en gros de produits frais'),
(122, 'D1213', 'Vente en gros de matériel et équipement'),
(123, 'M1101', 'Achats'),
(124, 'D1401', 'Assistanat commercial'),
(125, 'D1403', 'Relation commerciale auprès de particuliers'),
(126, 'D1406', 'Management en force de vente'),
(127, 'D1501', 'Animation de vente'),
(128, 'D1502', 'Management/gestion de rayon produits alimentaires'),
(129, 'D1503', 'Management/gestion de rayon produits non alimentaires'),
(130, 'D1504', 'Direction de magasin de grande distribution'),
(131, 'D1505', 'Personnel de caisse'),
(132, 'D1506', 'Marchandisage'),
(133, 'D1507', 'Mise en rayon libre-service'),
(134, 'D1508', 'Encadrement du personnel de caisses'),
(135, 'D1509', 'Management de département en grande distribution'),
(136, 'D1408', 'Téléconseil et télévente'),
(137, 'E1103', 'Communication'),
(138, 'E1401', 'Développement et promotion publicitaire'),
(139, 'E1402', 'Élaboration de plan média'),
(140, 'M1401', 'Conduite d\'enquêtes'),
(141, 'M1702', 'Analyse de tendance'),
(142, 'M1703', 'Management et gestion de produit'),
(143, 'M1704', 'Management relation clientèle'),
(144, 'M1705', 'Marketing'),
(145, 'M1706', 'Promotion des ventes'),
(146, 'M1707', 'Stratégie commerciale'),
(147, 'M1102', 'Direction des achats'),
(148, 'M1203', 'Comptabilité'),
(149, 'M1204', 'Contrôle de gestion'),
(150, 'M1205', 'Direction administrative et financière'),
(151, 'M1206', 'Management de groupe ou de service comptable'),
(152, 'M1207', 'Trésorerie et financement'),
(153, 'M1608', 'Secrétariat comptable'),
(154, 'M1701', 'Administration des ventes'),
(155, 'D1402', 'Relation commerciale grands comptes et entreprises'),
(156, 'D1407', 'Relation technico-commerciale'),
(157, 'H1101', 'Assistance et support technique client'),
(158, 'H1102', 'Management et ingénierie d\'affaires'),
(159, 'M1302', 'Direction de petite ou moyenne entreprise'),
(160, 'M1602', 'Opérations administratives'),
(161, 'M1604', 'Assistanat de direction'),
(162, 'M1605', 'Assistanat technique et administratif'),
(163, 'M1606', 'Saisie de données'),
(164, 'M1607', 'Secrétariat'),
(165, 'M1402', 'Conseil en organisation et management d\'entreprise'),
(166, 'M1501', 'Assistanat en ressources humaines'),
(167, 'M1502', 'Développement des ressources humaines'),
(168, 'M1503', 'Management des ressources humaines'),
(169, 'B1701', 'Conservation et reconstitution d\'espèces animales'),
(170, 'D1201', 'Achat vente d\'objets d\'art, anciens ou d\'occasion'),
(171, 'E1107', 'Organisation d\'évènementiel'),
(172, 'K1602', 'Gestion de patrimoine culturel'),
(173, 'K1701', 'Personnel de la Défense'),
(174, 'K1702', 'Direction de la sécurité civile et des secours'),
(175, 'K1703', 'Direction opérationnelle de la défense'),
(176, 'K1704', 'Management de la sécurité publique'),
(177, 'K1705', 'Sécurité civile et secours'),
(178, 'K1706', 'Sécurité publique'),
(179, 'K1707', 'Surveillance municipale'),
(180, 'K2501', 'Gardiennage de locaux'),
(181, 'K2502', 'Management de sécurité privée'),
(182, 'K2503', 'Sécurité et surveillance privées'),
(183, 'K1102', 'Aide aux bénéficiaires d\'une mesure de protection juridique'),
(184, 'K1901', 'Aide et médiation judiciaire'),
(185, 'K1902', 'Collaboration juridique'),
(186, 'K1903', 'Défense et conseil juridique'),
(187, 'K1904', 'Magistrature'),
(188, 'K1801', 'Conseil en emploi et insertion socioprofessionnelle'),
(189, 'K2101', 'Conseil en formation'),
(190, 'K2112', 'Orientation scolaire et professionnelle'),
(191, 'K2102', 'Coordination pédagogique'),
(192, 'K2103', 'Direction d\'établissement et d\'enseignement'),
(193, 'K2104', 'Éducation et surveillance au sein d\'établissements d\'enseignement'),
(194, 'K2105', 'Enseignement artistique'),
(195, 'K2106', 'Enseignement des écoles'),
(196, 'K2107', 'Enseignement général du second degré'),
(197, 'K2108', 'Enseignement supérieur'),
(198, 'K2109', 'Enseignement technique et professionnel'),
(199, 'K2110', 'Formation en conduite de véhicules'),
(200, 'K2111', 'Formation professionnelle'),
(201, 'A1202', 'Entretien des espaces naturels'),
(202, 'A1204', 'Protection du patrimoine naturel'),
(203, 'K2301', 'Distribution et assainissement d\'eau'),
(204, 'K2302', 'Management et inspection en environnement urbain'),
(205, 'K2304', 'Revalorisation de produits industriels'),
(206, 'K2305', 'Salubrité et traitement de nuisibles'),
(207, 'K2306', 'Supervision d\'exploitation éco-industrielle'),
(208, 'C1101', 'Conception - développement produits d\'assurances'),
(209, 'C1102', 'Conseil clientèle en assurances'),
(210, 'C1103', 'Courtage en assurances'),
(211, 'C1104', 'Direction d\'exploitation en assurances'),
(212, 'C1105', 'Études actuarielles en assurances'),
(213, 'C1106', 'Expertise risques en assurances'),
(214, 'C1107', 'Indemnisations en assurances'),
(215, 'C1108', 'Management de groupe et de service en assurances'),
(216, 'C1109', 'Rédaction et gestion en assurances'),
(217, 'C1110', 'Souscription d\'assurances'),
(218, 'C1401', 'Gestion en banque et assurance'),
(219, 'C1201', 'Accueil et services bancaires'),
(220, 'C1202', 'Analyse de crédits et risques bancaires'),
(221, 'C1206', 'Gestion de clientèle bancaire'),
(222, 'C1207', 'Management en exploitation bancaire'),
(223, 'C1203', 'Relation clients banque/finance'),
(224, 'C1204', 'Conception et expertise produits bancaires et financiers'),
(225, 'C1205', 'Conseil en gestion de patrimoine financier'),
(226, 'C1301', 'Front office marchés financiers'),
(227, 'C1302', 'Gestion back et middle-office marchés financiers'),
(228, 'C1303', 'Gestion de portefeuilles sur les marchés financiers'),
(229, 'M1201', 'Analyse et ingénierie financière'),
(230, 'M1202', 'Audit et contrôle comptables et financiers'),
(231, 'G1401', 'Assistance de direction d\'hôtel-restaurant'),
(232, 'G1402', 'Management d\'hôtel-restaurant'),
(233, 'G1403', 'Gestion de structure de loisirs ou d\'hébergement touristique'),
(234, 'G1404', 'Management d\'établissement de restauration collective'),
(235, 'G1501', 'Personnel d\'étage'),
(236, 'G1502', 'Personnel polyvalent d\'hôtellerie'),
(237, 'G1503', 'Management du personnel d\'étage'),
(238, 'G1701', 'Conciergerie en hôtellerie'),
(239, 'G1702', 'Personnel du hall'),
(240, 'G1703', 'Réception en hôtellerie'),
(241, 'G1601', 'Management du personnel de cuisine'),
(242, 'G1602', 'Personnel de cuisine'),
(243, 'G1603', 'Personnel polyvalent en restauration'),
(244, 'G1604', 'Fabrication de crêpes ou pizzas'),
(245, 'G1605', 'Plonge en restauration'),
(246, 'G1801', 'Café, bar brasserie'),
(247, 'G1802', 'Management du service en restauration'),
(248, 'G1803', 'Service en restauration'),
(249, 'G1804', 'Sommellerie'),
(250, 'C1501', 'Gérance immobilière'),
(251, 'C1502', 'Gestion locative immobilière'),
(252, 'C1503', 'Management de projet immobilier'),
(253, 'C1504', 'Transaction immobilière'),
(254, 'A1412', 'Fabrication et affinage de fromages'),
(255, 'A1413', 'Fermentation de boissons alcoolisées'),
(256, 'H2101', 'Abattage et découpe des viandes'),
(257, 'H2102', 'Conduite d\'équipement de production alimentaire'),
(258, 'H2201', 'Assemblage d\'ouvrages en bois'),
(259, 'H2202', 'Conduite d\'équipement de fabrication de l\'ameublement et du bois'),
(260, 'H2203', 'Conduite d\'installation de production de panneaux bois'),
(261, 'H2204', 'Encadrement des industries de l\'ameublement et du bois'),
(262, 'H2205', 'Première transformation de bois d\'oeuvre'),
(263, 'H2206', 'Réalisation de menuiserie bois et tonnellerie'),
(264, 'H2207', 'Réalisation de meubles en bois'),
(265, 'H2208', 'Réalisation d\'ouvrages décoratifs en bois'),
(266, 'H2209', 'Intervention technique en ameublement et bois'),
(267, 'H3101', 'Conduite d\'équipement de fabrication de papier ou de carton'),
(268, 'H3102', 'Conduite d\'installation de pâte à papier'),
(269, 'H1501', 'Direction de laboratoire d\'analyse industrielle'),
(270, 'H1503', 'Intervention technique en laboratoire d\'analyse industrielle'),
(271, 'H2301', 'Conduite d\'équipement de production chimique ou pharmaceutique'),
(272, 'H2701', 'Pilotage d\'installation énergétique et pétrochimique'),
(273, 'H3201', 'Conduite d\'équipement de formage des plastiques et caoutchoucs'),
(274, 'H3202', 'Réglage d\'équipement de formage des plastiques et caoutchoucs'),
(275, 'H3203', 'Fabrication de pièces en matériaux composites'),
(276, 'H1202', 'Conception et dessin de produits électriques et électroniques'),
(277, 'H1209', 'Intervention technique en études et développement électronique'),
(278, 'H1504', 'Intervention technique en contrôle essai qualité en électricité et électronique'),
(279, 'H2501', 'Encadrement de production de matériel électrique et électronique'),
(280, 'H2601', 'Bobinage électrique'),
(281, 'H2602', 'Câblage électrique et électromécanique'),
(282, 'H2603', 'Conduite d\'installation automatisée de production électrique, électronique et microélectronique'),
(283, 'H2604', 'Montage de produits électriques et électroniques'),
(284, 'H2605', 'Montage et câblage électronique'),
(285, 'E1301', 'Conduite de machines d\'impression'),
(286, 'E1302', 'Conduite de machines de façonnage routage'),
(287, 'E1303', 'Encadrement des industries graphiques'),
(288, 'E1304', 'Façonnage et routage'),
(289, 'E1306', 'Prépresse'),
(290, 'E1307', 'Reprographie'),
(291, 'E1308', 'Intervention technique en industrie graphique'),
(292, 'H1506', 'Intervention technique qualité en mécanique et travail des métaux'),
(293, 'H2503', 'Pilotage d\'unité élémentaire de production mécanique ou de travail des métaux'),
(294, 'H2902', 'Chaudronnerie - tôlerie'),
(295, 'H2904', 'Conduite d\'équipement de déformation des métaux'),
(296, 'H2905', 'Conduite d\'équipement de formage et découpage des matériaux'),
(297, 'H2907', 'Conduite d\'installation de production des métaux'),
(298, 'H2909', 'Montage-assemblage mécanique'),
(299, 'H2911', 'Réalisation de structures métalliques'),
(300, 'H2913', 'Soudage manuel'),
(301, 'H2914', 'Réalisation et montage en tuyauterie'),
(302, 'B1802', 'Réalisation d\'articles en cuir et matériaux souples (hors vêtement)'),
(303, 'H2401', 'Assemblage - montage d\'articles en cuirs, peaux'),
(304, 'H2402', 'Assemblage - montage de vêtements et produits textiles'),
(305, 'H2403', 'Conduite de machine de fabrication de produits textiles'),
(306, 'H2404', 'Conduite de machine de production et transformation des fils'),
(307, 'H2405', 'Conduite de machine de textiles nontissés'),
(308, 'H2406', 'Conduite de machine de traitement textile'),
(309, 'H2407', 'Conduite de machine de transformation et de finition des cuirs et peaux'),
(310, 'H2408', 'Conduite de machine d\'impression textile'),
(311, 'H2409', 'Coupe cuir, textile et matériaux souples'),
(312, 'H2410', 'Mise en forme, repassage et finitions en industrie textile'),
(313, 'H2411', 'Montage de prototype cuir et matériaux souples'),
(314, 'H2412', 'Patronnage - gradation'),
(315, 'H2413', 'Préparation de fils, montage de métiers textiles'),
(316, 'H2414', 'Préparation et finition d\'articles en cuir et matériaux souples'),
(317, 'H2415', 'Contrôle en industrie du cuir et du textile'),
(318, 'H1201', 'Expertise technique couleur en industrie'),
(319, 'H1203', 'Conception et dessin produits mécaniques'),
(320, 'H1204', 'Design industriel'),
(321, 'H1205', 'Études - modèles en industrie des matériaux souples'),
(322, 'H1206', 'Management et ingénierie études, recherche et développement industriel'),
(323, 'H1207', 'Rédaction technique'),
(324, 'H1208', 'Intervention technique en études et conception en automatisme'),
(325, 'H1210', 'Intervention technique en études, recherche et développement'),
(326, 'H1301', 'Inspection de conformité'),
(327, 'H1302', 'Management et ingénierie Hygiène Sécurité Environnement -HSE- industriels'),
(328, 'H1303', 'Intervention technique en Hygiène Sécurité Environnement -HSE- industriel'),
(329, 'H1401', 'Management et ingénierie gestion industrielle et logistique'),
(330, 'H1402', 'Management et ingénierie méthodes et industrialisation'),
(331, 'H1403', 'Intervention technique en gestion industrielle et logistique'),
(332, 'H1404', 'Intervention technique en méthodes et industrialisation'),
(333, 'H1502', 'Management et ingénierie qualité industrielle'),
(334, 'H1505', 'Intervention technique en formulation et analyse sensorielle'),
(335, 'H2502', 'Management et ingénierie de production'),
(336, 'H2504', 'Encadrement d\'équipe en industrie de transformation'),
(337, 'H2505', 'Encadrement d\'équipe ou d\'atelier en matériaux souples'),
(338, 'H2801', 'Conduite d\'équipement de transformation du verre'),
(339, 'H2803', 'Façonnage et émaillage en industrie céramique'),
(340, 'H2805', 'Pilotage d\'installation de production verrière'),
(341, 'H2901', 'Ajustement et montage de fabrication'),
(342, 'H2903', 'Conduite d\'équipement d\'usinage'),
(343, 'H2906', 'Conduite d\'installation automatisée ou robotisée de fabrication mécanique'),
(344, 'H2908', 'Modelage de matériaux non métalliques'),
(345, 'H2910', 'Moulage sable'),
(346, 'H2912', 'Réglage d\'équipement de production industrielle'),
(347, 'H3301', 'Conduite d\'équipement de conditionnement'),
(348, 'H3302', 'Opérations manuelles d\'assemblage, tri ou emballage'),
(349, 'H3303', 'Préparation de matières et produits industriels (broyage, mélange, ...)'),
(350, 'H3401', 'Conduite de traitement d\'abrasion de surface'),
(351, 'H3402', 'Conduite de traitement par dépôt de surface'),
(352, 'H3403', 'Conduite de traitement thermique'),
(353, 'H3404', 'Peinture industrielle'),
(354, 'I1102', 'Management et ingénierie de maintenance industrielle'),
(355, 'M1801', 'Administration de systèmes d\'information'),
(356, 'M1802', 'Expertise et support en systèmes d\'information'),
(357, 'M1803', 'Direction des systèmes d\'information'),
(358, 'M1805', 'Études et développement informatique'),
(359, 'M1806', 'Conseil et maîtrise d\'ouvrage en systèmes d\'information'),
(360, 'M1810', 'Production et exploitation de systèmes d\'information'),
(361, 'E1101', 'Animation de site multimédia'),
(362, 'E1104', 'Conception de contenus multimédias'),
(363, 'E1205', 'Réalisation de contenus multimédias'),
(364, 'M1804', 'Études et développement de réseaux de télécoms'),
(365, 'M1807', 'Exploitation de systèmes de communication et de commandement'),
(366, 'E1102', 'Écriture d\'ouvrages, de livres'),
(367, 'E1105', 'Coordination d\'édition'),
(368, 'E1108', 'Traduction, interprétariat'),
(369, 'E1305', 'Préparation et correction en édition et presse'),
(370, 'K1601', 'Gestion de l\'information et de la documentation'),
(371, 'E1106', 'Journalisme et information média'),
(372, 'E1201', 'Photographie'),
(373, 'N1101', 'Conduite d\'engins de déplacement des charges'),
(374, 'N1103', 'Magasinage et préparation de commandes'),
(375, 'N1104', 'Manoeuvre et conduite d\'engins lourds de manutention'),
(376, 'N1105', 'Manutention manuelle de charges'),
(377, 'N1201', 'Affrètement transport'),
(378, 'N1202', 'Gestion des opérations de circulation internationale des marchandises'),
(379, 'N1301', 'Conception et organisation de la chaîne logistique'),
(380, 'N1302', 'Direction de site logistique'),
(381, 'N1303', 'Intervention technique d\'exploitation logistique'),
(382, 'N2101', 'Navigation commerciale aérienne'),
(383, 'N2102', 'Pilotage et navigation technique aérienne'),
(384, 'N2201', 'Personnel d\'escale aéroportuaire'),
(385, 'N2202', 'Contrôle de la navigation aérienne'),
(386, 'N2203', 'Exploitation des pistes aéroportuaires'),
(387, 'N2204', 'Préparation des vols'),
(388, 'N2205', 'Direction d\'escale et exploitation aéroportuaire'),
(389, 'N4301', 'Conduite sur rails'),
(390, 'N4302', 'Contrôle des transports en commun'),
(391, 'N4401', 'Circulation du réseau ferré'),
(392, 'N4402', 'Exploitation et manoeuvre des remontées mécaniques'),
(393, 'N4403', 'Manoeuvre du réseau ferré'),
(394, 'N3101', 'Encadrement de la navigation maritime'),
(395, 'N3102', 'Équipage de la navigation maritime'),
(396, 'N3103', 'Navigation fluviale'),
(397, 'N3201', 'Exploitation des opérations portuaires et du transport maritime'),
(398, 'N3202', 'Exploitation du transport fluvial'),
(399, 'N3203', 'Manutention portuaire'),
(400, 'M1603', 'Distribution de documents'),
(401, 'N1102', 'Déménagement'),
(402, 'N4101', 'Conduite de transport de marchandises sur longue distance'),
(403, 'N4102', 'Conduite de transport de particuliers'),
(404, 'N4103', 'Conduite de transport en commun sur route'),
(405, 'N4104', 'Courses et livraisons express'),
(406, 'N4105', 'Conduite et livraison par tournées sur courte distance'),
(407, 'N4201', 'Direction d\'exploitation des transports routiers de marchandises'),
(408, 'N4202', 'Direction d\'exploitation des transports routiers de personnes'),
(409, 'N4203', 'Intervention technique d\'exploitation des transports routiers de marchandises'),
(410, 'N4204', 'Intervention technique d\'exploitation des transports routiers de personnes'),
(411, 'I1501', 'Intervention en grande hauteur'),
(412, 'I1502', 'Intervention en milieu subaquatique'),
(413, 'I1503', 'Intervention en milieux et produits nocifs'),
(414, 'I1203', 'Maintenance des bâtiments et des locaux'),
(415, 'I1301', 'Installation et maintenance d\'ascenseurs'),
(416, 'I1302', 'Installation et maintenance d\'automatismes'),
(417, 'I1303', 'Installation et maintenance de distributeurs automatiques'),
(418, 'I1304', 'Installation et maintenance d\'équipements industriels et d\'exploitation'),
(419, 'I1305', 'Installation et maintenance électronique'),
(420, 'I1306', 'Installation et maintenance en froid, conditionnement d\'air'),
(421, 'I1307', 'Installation et maintenance télécoms et courants faibles'),
(422, 'I1308', 'Maintenance d\'installation de chauffage'),
(423, 'I1309', 'Maintenance électrique'),
(424, 'I1310', 'Maintenance mécanique industrielle'),
(425, 'I1401', 'Maintenance informatique et bureautique'),
(426, 'I1402', 'Réparation de biens électrodomestiques et multimédia'),
(427, 'I1601', 'Installation et maintenance en nautisme'),
(428, 'I1602', 'Maintenance d\'aéronefs'),
(429, 'I1603', 'Maintenance d\'engins de chantier, levage, manutention et de machines agricoles'),
(430, 'I1605', 'Mécanique de marine'),
(431, 'K2202', 'Lavage de vitres'),
(432, 'K2203', 'Management et inspection en propreté de locaux'),
(433, 'K2204', 'Nettoyage de locaux'),
(434, 'B1801', 'Réalisation d\'articles de chapellerie'),
(435, 'B1803', 'Réalisation de vêtements sur mesure ou en petite série'),
(436, 'B1804', 'Réalisation d\'ouvrages d\'art en fils'),
(437, 'B1805', 'Stylisme'),
(438, 'D1214', 'Vente en habillement et accessoires de la personne'),
(439, 'K2401', 'Recherche en sciences de l\'homme et de la société'),
(440, 'K2402', 'Recherche en sciences de l\'univers, de la matière et du vivant'),
(441, 'M1403', 'Études et prospectives socio-économiques'),
(442, 'M1404', 'Management et gestion d\'enquêtes'),
(443, 'M1808', 'Information géographique'),
(444, 'M1809', 'Information météorologique'),
(445, 'J1101', 'Médecine de prévention'),
(446, 'J1102', 'Médecine généraliste et spécialisée'),
(447, 'J1103', 'Médecine dentaire'),
(448, 'J1104', 'Suivi de la grossesse et de l\'accouchement'),
(449, 'J1201', 'Biologie médicale'),
(450, 'J1202', 'Pharmacie'),
(451, 'J1301', 'Personnel polyvalent des services hospitaliers'),
(452, 'J1302', 'Analyses médicales'),
(453, 'J1303', 'Assistance médico-technique'),
(454, 'J1304', 'Aide en puériculture'),
(455, 'J1305', 'Conduite de véhicules sanitaires'),
(456, 'J1306', 'Imagerie médicale'),
(457, 'J1307', 'Préparation en pharmacie'),
(458, 'J1401', 'Audioprothèses'),
(459, 'J1402', 'Diététique'),
(460, 'J1403', 'Ergothérapie'),
(461, 'J1404', 'Kinésithérapie'),
(462, 'J1502', 'Coordination de services médicaux ou paramédicaux'),
(463, 'J1503', 'Soins infirmiers spécialisés en anesthésie'),
(464, 'J1504', 'Soins infirmiers spécialisés en bloc opératoire'),
(465, 'J1505', 'Soins infirmiers spécialisés en prévention'),
(466, 'J1506', 'Soins infirmiers généralistes'),
(467, 'J1507', 'Soins infirmiers spécialisés en puériculture'),
(468, 'K1104', 'Psychologie'),
(469, 'D1203', 'Hydrothérapie'),
(470, 'D1208', 'Soins esthétiques et corporels'),
(471, 'D1405', 'Conseil en information médicale'),
(472, 'J1406', 'Orthophonie'),
(473, 'J1407', 'Orthoptique'),
(474, 'J1408', 'Ostéopathie et chiropraxie'),
(475, 'J1409', 'Pédicurie et podologie'),
(476, 'J1410', 'Prothèses dentaires'),
(477, 'J1411', 'Prothèses et orthèses'),
(478, 'J1412', 'Rééducation en psychomotricité'),
(479, 'J1501', 'Soins d\'hygiène, de confort du patient'),
(480, 'M1609', 'Secrétariat et assistanat médical ou médico-social'),
(481, 'A1501', 'Aide aux soins animaux'),
(482, 'A1502', 'Podologie animale'),
(483, 'A1503', 'Toilettage des animaux'),
(484, 'A1504', 'Santé animale'),
(485, 'A1203', 'Aménagement et entretien des espaces verts'),
(486, 'I1201', 'Entretien d\'affichage et mobilier urbain'),
(487, 'I1202', 'Entretien et surveillance du tracé routier'),
(488, 'K1401', 'Conception et pilotage de la politique des pouvoirs publics'),
(489, 'K1402', 'Conseil en Santé Publique'),
(490, 'K1403', 'Management de structure de santé, sociale ou pénitentiaire'),
(491, 'K1404', 'Mise en oeuvre et pilotage de la politique des pouvoirs publics'),
(492, 'K1405', 'Représentation de l\'État sur le territoire national ou international'),
(493, 'K1501', 'Application des règles financières publiques'),
(494, 'K1502', 'Contrôle et inspection des Affaires Sociales'),
(495, 'K1503', 'Contrôle et inspection des impôts'),
(496, 'K1504', 'Contrôle et inspection du Trésor Public'),
(497, 'K1505', 'Protection des consommateurs et contrôle des échanges commerciaux'),
(498, 'K1802', 'Développement local'),
(499, 'K2303', 'Nettoyage des espaces urbains'),
(500, 'M1301', 'Direction de grande entreprise ou d\'établissement public'),
(501, 'D1202', 'Coiffure'),
(502, 'K1103', 'Développement personnel et bien-être de la personne'),
(503, 'K1302', 'Assistance auprès d\'adultes'),
(504, 'K1303', 'Assistance auprès d\'enfants'),
(505, 'K1304', 'Services domestiques'),
(506, 'K2201', 'Blanchisserie industrielle'),
(507, 'K2601', 'Conduite d\'opérations funéraires'),
(508, 'K2602', 'Conseil en services funéraires'),
(509, 'K2603', 'Thanatopraxie'),
(510, 'K1101', 'Accompagnement et médiation familiale'),
(511, 'K1201', 'Action sociale'),
(512, 'K1202', 'Éducation de jeunes enfants'),
(513, 'K1203', 'Encadrement technique en insertion professionnelle'),
(514, 'K1204', 'Médiation sociale et facilitation de la vie en société'),
(515, 'K1205', 'Information sociale'),
(516, 'K1206', 'Intervention socioculturelle'),
(517, 'K1207', 'Intervention socioéducative'),
(518, 'K1301', 'Accompagnement médicosocial'),
(519, 'K1305', 'Intervention sociale et familiale'),
(520, 'G1202', 'Animation d\'activités culturelles ou ludiques'),
(521, 'G1203', 'Animation de loisirs auprès d\'enfants ou d\'adolescents'),
(522, 'G1204', 'Éducation en activités sportives'),
(523, 'L1401', 'Sportif professionnel'),
(524, 'G1101', 'Accueil touristique'),
(525, 'G1102', 'Promotion du tourisme local'),
(526, 'G1201', 'Accompagnement de voyages, d\'activités culturelles ou sportives'),
(527, 'G1205', 'Personnel d\'attractions ou de structures de loisirs'),
(528, 'G1206', 'Personnel technique des jeux'),
(529, 'G1301', 'Conception de produits touristiques'),
(530, 'G1302', 'Optimisation de produits touristiques'),
(531, 'G1303', 'Vente de voyages'),
(532, 'M1601', 'Accueil et renseignements'),
(533, 'AAAAA', 'sans');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
