-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Lun 18 Septembre 2017 à 17:08
-- Version du serveur :  5.6.12-log
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `gestionent`
--

-- --------------------------------------------------------

--
-- Structure de la table `commentaires`
--

CREATE TABLE IF NOT EXISTS `commentaires` (
  `c_code` tinyint(4) NOT NULL AUTO_INCREMENT,
  `c_login` varchar(20) NOT NULL,
  `c_dateheure` datetime DEFAULT NULL,
  `c_texte` varchar(80) NOT NULL,
  `c_type` varchar(10) DEFAULT NULL,
  `e_code` int(11) DEFAULT NULL,
  PRIMARY KEY (`c_code`),
  KEY `fk_commentaires_e_code` (`e_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Contenu de la table `commentaires`
--

INSERT INTO `commentaires` (`c_code`, `c_login`, `c_dateheure`, `c_texte`, `c_type`, `e_code`) VALUES
(2, 'etu', '2017-09-11 14:56:27', '        ', 'Couriel', 5),
(3, 'etu', '2017-09-11 14:56:52', '        un coup de téléphone pour un stage', 'Téléphone', 5),
(4, 'etu', '2017-09-11 14:58:02', '        un coup de téléphone pour un stage', 'Téléphone', 5),
(5, 'claude', '2017-09-18 11:40:36', '        ', 'Couriel', 19);

-- --------------------------------------------------------

--
-- Structure de la table `entreprises`
--

CREATE TABLE IF NOT EXISTS `entreprises` (
  `e_code` int(11) NOT NULL AUTO_INCREMENT,
  `e_nom` varchar(30) DEFAULT NULL,
  `e_adresse1` varchar(120) DEFAULT NULL,
  `e_adresse2` varchar(120) DEFAULT NULL,
  `e_ville` varchar(30) DEFAULT NULL,
  `e_codpostal` char(5) DEFAULT NULL,
  `e_nom_contact` varchar(150) DEFAULT NULL,
  `e_tel` varchar(150) DEFAULT NULL,
  `e_mail` varchar(30) DEFAULT NULL,
  `te_code` int(11) DEFAULT NULL,
  `e_login` varchar(20) NOT NULL,
  PRIMARY KEY (`e_code`),
  KEY `fk_entreprise_te_code` (`te_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=171 ;

--
-- Contenu de la table `entreprises`
--

INSERT INTO `entreprises` (`e_code`, `e_nom`, `e_adresse1`, `e_adresse2`, `e_ville`, `e_codpostal`, `e_nom_contact`, `e_tel`, `e_mail`, `te_code`, `e_login`) VALUES
(1, 'Aerazur', '58 Rue de Segonzac', NULL, 'COGNAC', '16100', ' Aurélien BOUILLON', '05 45 83 20 84', 'aurelien.bouillon@zodiacaerosp', 1, ''),
(2, 'AT INTERNET', 'Parc d''activités La devèze - 8 impasse Rudolf Diesel', NULL, 'Merignac', '33700', 'Nicolas Boineau', '01 56 54 14 30', 'nicolas.boineau@atinternet.com', 1, ''),
(3, 'Auto-école du Littoral', '17, Rue Pujos,', NULL, 'ROCHEFORT', '17300', 'Fourchaud Stéphane', '05 46 87 69 69', 'aedulittoral@laposte.net', 1, ''),
(4, 'Base aérienne 721', '', NULL, 'Rochefort AIR', '17', 'Sébastien Bédouet', '0699724594 0546888095', 'Sebastien.bedouet@intradef.gou', 1, ''),
(5, ' IDK Stratégie Multimédia', 'Hotel d''entreprise, local n°3 ', '1 Rue de la Trinquette', 'La Rochelle (Minnimes) ', '17000', 'Borgia Bafounta ', '06 50 34 61 07 -05 46 27 00 79', 'Bbafounta@gmail.com', 4, ''),
(6, 'Léa Nature', '23Avenue Paul Langevin,', NULL, 'Perigny Cedex', '17183', 'Jean-Marc BOURREAU', '05 46 52 00 81', 'jm.bourreau@leanature.com', 1, ''),
(7, 'Novatique', '17 place Joffre', NULL, '', '0', '', '', '', 1, ''),
(8, 'Novatique', '', 'Frédéric RAULT', 'AURAY', '56400', 'frederic.rault@novatique.com', '06 45 60 95 13', 'frederic.rault@novatique.com', 1, ''),
(9, 'Pays Rochefortais', '3 avenue Maurice Chupin Parc des Fouriers', NULL, 'Rochefort', '17300', 'Paticat François', '05 46 82 40 57', 'f.paticat@cda-paysrochefortais', 1, ''),
(10, 'Sacrée Com', '15 rue Renouleau', NULL, 'Tonnay-Charente', '17430', 'Jean-Philippe PETIT', '06 86 21 50 51', 'jppetit@sacreecom.org', 1, ''),
(11, 'TESSI TECHNOLOGIES', '1-3 Avenue des Satellites', NULL, 'Le Haillan', '33185', 'Schmitt Nicola', '05 57 22 20 61', 'nicolas.schmitt@tessi.fr', 1, ''),
(12, '4DConcept', '41-43 Avenue du centre MONTIGNY LE BRETONNEUX ', 'Mr BALCERAK Mathieu ', 'MONTIGNY LE BRETONNEUX ', '78180', 'Mr BALCERAK Mathieu ', '01 61 08 50 20 ', 'mathieu.balcerak@4dconcept.fr ', 4, ''),
(13, '6 TEM'' INFORMATIQUE', '2 RD 734 ', '', 'Dolus ', '17550', 'Cyril DURAND  ', '05 46 36 70 70 ', 'durand.cyril@wanadoo.fr ', 5, ''),
(14, 'A2I Informatique ', 'Rue Augustin Fresnel –', 'Vincent PACOMME Directeur serv', 'PERIGNY ', '17183', 'Vincent PACOMME Directeur serv', '05 46 57 69 71 ', 'vpacomme@novenci.fr ', 1, ''),
(15, 'A2I INFORMATIQUE', ' ZAC Les Montagnes BP5 ', '', 'CHAMPNIERS ', '16430', 'Vincent PACOMME', '05 43 37 18 08 ', 'vpacomme@novenci.fr ', 5, ''),
(16, 'ACT Service', '18 rue de la Bonnette Les minimes', '', 'La Rochelle ', '17000', 'Mr Maudet ', '05 46 44 44 59 ', '', 5, ''),
(17, 'Adequat Systeme', '14 avenue Jean de Vivonne  ', '', 'Pisany', '17600', 'Adam Julien', '08-11-09-24-60', 'adequat@adequat-systeme.fr', 4, ''),
(18, 'ALPMS', '3, Rue J.B. Charcot ', NULL, 'La Rochelle ', '17000', 'Louis LE BLEVEC  ', '05 46 41 32 32 ', 'louis.leblevec@wanadoo.fr ', 1, ''),
(19, 'Alstom', 'Avenue Commdt Lysiack', 'Stephane Petit ', 'Aytré ', '17440', 'Stephane Petit ', '05-46-', 'stephane.petit@itc.alstom.com ', 3, ''),
(20, 'Archipel', '', NULL, 'ROCHEFORT ', '17300', 'Philippe Raad ', '', 'support@archipelweb.fr ', 1, ''),
(21, 'Astron Associate SA', 'Ch du grand Puits 38 CP 339 CH – 1217 Meyrin - 1 ', NULL, 'Meyrin- Suisse ', '0', 'Heger Jean-Christophe ', '0041 76 324 05 25 ', 'jean-christophe@astron-assoc.c', 1, ''),
(22, 'CARA', '107 avenue de ROCHEFORT ', NULL, 'Royan ', '17200', 'François PINET ', '05 46 22 19 14 ', 'f.pinet@agglo-royan,fr ', 1, ''),
(23, 'Caserne Renaudin', 'av Porte Dauphine ', NULL, 'LA ROCHELLE ', '17000', 'M. Naudet ', '05 46 51 45 70 ', 'pierre.naudet@base-transit.com', 1, ''),
(24, 'CC17', '37 rue du Dr Peltier ', NULL, 'ROCHEFORT ', '17300', 'PROUX ', '546875608', '', 1, ''),
(25, 'CCI Rochefort et Saintonges', 'Corderie Royale Rue Audebert  ', NULL, 'ROCHEFORT ', '17300', 'M. André Jonathan ', '05-46-84-70-95', 'j.andre@rochefort-cci.fr', 1, ''),
(26, 'Centre hospitalier de Rochefor', '16, Rue du Docteur Peltier', NULL, 'ROCHEFORT ', '17300', 'Thierry MOSCATO Chef du centre', '05 46 82 20 36 ', 'thierry.moscato@ch-rochefort.f', 1, ''),
(27, 'Centre hospitalier de Royan', '', NULL, 'Royan ', '17205', 'Thierry PETITGIRARD', '', '', 1, ''),
(28, 'Directeur adjoint ', '05 46 39 52 43 ', NULL, '', '0', '', '', '', 1, ''),
(29, 'Centre Hospitalier De Saintong', '11 Bd Ambroise Paré BP326', NULL, 'SAINTES ', '17108', 'Vincent MAHAU ', '05-46-95-12-70 ', 'v.mahau@saintonge.fr ', 1, ''),
(30, 'Cetios', 'Allée de la Baucette', NULL, 'Surgères', '17700', '', '05 46 07 68 00', '', 1, ''),
(31, 'CH Jonzac', ' Av, Winston churchild, BP 109 ', NULL, 'Jonzac ', '17503', 'Mme PESNEL ', '05 46 48 75 68 ', 'c,pesnel@ch-jonzac.fr ', 1, ''),
(32, 'cipecma', '', NULL, 'Chatelaillon ', '17340', 'MALISZKIEWICZ ', '', '', 1, ''),
(33, 'Clinique Pasteur ', '', NULL, 'Royan ', '17200', 'M.Péchereau ', '05 46 22 22 33 ', 'epechereau@clinique-pasteur-ro', 1, ''),
(34, 'CMAF ', '', NULL, 'LA ROCHELLE ', '17000', 'GARZIANO ', '', '', 1, ''),
(35, 'Communauté d''agglomération de ', '', NULL, 'PERIGNY ', '17180', 'Laurent Cagna ', '06-84-53-23-70 05-46-30-34-32 ', 'laurent.cagna@agglo-larochelle', 1, ''),
(36, 'Commune Château-Larcher', '4, Rue de la Mairie ', NULL, 'CHATEAU LARCHER ', '86370', 'Francis GARGOUIL Maire ', '05 49 43 40 56 ', 'château-larcher@cg86.fr ', 1, ''),
(37, 'CYBERNET COPY 17', ' 37, rue du Docteur Peltier ', NULL, 'ROCHEFORT ', '17300', 'Frédéric PROUX Chef d''entrepri', '05 46 87 56 08 ', 'cc17@wanadoo.fr ', 1, ''),
(38, 'CYBERTEK', 'Avenue Fourneaux ', NULL, 'ANGOULINS SUR MER ', '17690', 'Cyril MICHAUD Resp. point de v', '05 46 42 46 33 ', 'angoulins@cybertek.fr ', 1, ''),
(39, 'DATACLIC ', '47, Rue Pierre de Campet', NULL, 'SAUJON ', '17600', 'Alexandre OZON Gérant ', '05 46 06 65 45 ', 'contact@dataclic.fr Alexandre.', 1, ''),
(40, 'DDAF- ', '', NULL, 'LA ROCHELLE ', '17000', 'LELANN ', '05 46 68 61 18 ', '', 1, ''),
(41, 'DDSV ', '', NULL, 'LA ROCHELLE ', '17000', 'MME MAZEREAU ', '05 46 68 61 44 ', '', 1, ''),
(42, 'DELAMET SAS ', '16, Rue Gambetta ', NULL, 'Saint Aigulin ', '17360', 'Thomas HUCHET Directeur Généra', '05 46 04 08 08 ', 't.huchet@delamet.com ', 1, ''),
(43, 'DIGITAL', '751 rue de la Génoise,Parc d''activité Les Montagnes ', NULL, 'CHAMPNIERS ', '16430', 'Sébastien CARVAJAL Resp. SAV ', '05 45 37 15 30 ', 'contact@cardinaud-hall.com ', 1, ''),
(44, 'EIGSI - ', '', NULL, 'La Rochelle ', '17000', 'Mr Nerrand ', '', 'olivier.nerrand@eigsi.fr ', 1, ''),
(45, 'ENILIA – ENSMIC', 'Avenue François Mitterand BP 49 ', NULL, 'SURGERES ', '17700', 'Julien COUTANT Resp. service i', '05 46 27 69 09 ', 'julien.coutant@educagri.fr ', 1, ''),
(46, 'ERDF', 'rue Chauvin', NULL, 'ROCHEFORT ', '17300', '', '', '', 1, ''),
(47, 'exedra', '29 avenue des martyrs de la liberation', NULL, 'merignac ', '33700', 'Ronald LALOUE Thibaud Mori', '05 56 13 86 44 ', 'ronald.laloue@exedra.fr thibau', 1, ''),
(48, 'Foyer départemental Lannelongu', 'Etablissement public départemental', NULL, 'Saint Trojan Les Bains ', '17370', 'Emmanuel PROUST Informaticien ', '05 46 76 22 29 ', '', 1, ''),
(49, 'GARANDEAU FRERES Chamblanc ', '', NULL, 'Cherves-Richemont ', '16370', 'Christian Gourinel ', '05.45.83.24.11 ', '', 1, ''),
(50, 'Groupe Coop Atlantique', '3 rue du docteur jean ', NULL, 'SAINTES ', '17100', 'Mr Roy Jannick ', '681482711', 'jroy@coop-atlantique.fr ', 1, ''),
(51, 'Groupe Gibaud', '15 rue de l''ormeau du Pied Saintes ', NULL, 'SAINTES ', '17100', 'Jean-Sebastien BONCOUR ', '', 'js.boncour@barns.fr ', 1, ''),
(52, 'Groupe Léa Nature', 'Avenue Paul Langevin', NULL, 'Périgny', '17180', '', '', '', 1, ''),
(53, 'Groupe SUP DE CO', '102, Rue de Coureilles ', NULL, 'La Rochelle ', '17000', 'Mr Pierre Laurent ', '05 46 51 77 42 ', 'pierrel@esc-larochelle.fr ', 1, ''),
(54, 'Groupe SUP DE CO', '102, Rue de Coureilles ', NULL, 'La Rochelle ', '17000', 'Aurélien MARTY Resp. Système d', '05 46 51 77 68 ', 'sig@esc-larochelle.fr ', 1, ''),
(55, 'Hano-communication ', ' place Charles De Gaulle  ', NULL, 'Aulnay', '17450', 'Billaud Mickaël', '05 46 33 39 66', 'm.billaud@hano-communication.f', 1, ''),
(56, 'IN TECH', ' 2bis rue Ferdinand Gateau', NULL, 'Tonnay Charente ', '17430', 'Alain RUISI Gérant ', '05 46 87 35 10 ', 'in-tech.fr ', 1, ''),
(57, 'IUT La Rochelle ', '', NULL, 'La Rochelle ', '17000', 'Degenne Charly ', '05 46 51 39 26 ', 'charly@univ-lr.fr ', 1, ''),
(58, 'IUT La Rochelle ', '15 rue François De Vaux Foletier ', NULL, ' LA ROCHELE cedex 01 ', '17026', 'SAUZET Olivier ', '546513900', 'olivier,sauzet@univ-lr,fr ', 1, ''),
(59, 'Groupe Michel', ' 163 Avenue Jean-Paul SARTRE ', NULL, 'La Rochelle ', '17000', 'Jean PRAILLE Coordinateur info', '05 46 44 01 00 ', 'jean.praille.larochelle@reseau', 1, ''),
(60, 'Jean-Noël Informatique', '37 avenue d''aunis ', NULL, 'tonnay-charente ', '17430', 'BENOIST Julien ', '05 46 88 06 93 ', 'jni17@orange.fr ', 1, ''),
(61, 'KUEHNE+NAGEL DSIA', '16 rue de la petite sensive ', NULL, 'Nantes ', '44323', 'Mr Huteau ', '02 51 81 85 85 ', 'patrice.huteau@kuehne-nagel.co', 1, ''),
(62, 'Leroy Somer', 'Boulevard Marcelin Leroy', NULL, 'Angoulème', '0', 'Copin Damien', '05 45 64 49 72', 'Damien.COPIN@Emerson.com ', 1, ''),
(63, 'LP Jean Rostand louise lériget', '', NULL, 'Angouleme ', '16000', 'M. Bosseli ', '05 45 97 45 42 ', '', 1, ''),
(64, 'Lycée ?', '66 Boulevard de châtenay ', NULL, 'Cognac ', '16100', 'GARNIER Gilles ', '05 45 36 83 94 ', 'gilles.garnier@ac-poitiers.fr ', 1, ''),
(65, 'Lycée agricole', 'Site de l''oisellerie ', NULL, 'Angouleme ', '16000', 'Fortin Eric ', '0545 67 10 04 ', 'eric,fortin@educagri.fr ', 1, ''),
(66, 'Lycée Agricole Bordeaux ', '', NULL, 'Blanquefort ', '33290', 'M. BEINCHET Olivier ', '06 84 61 31 23 ', 'olivier.beinchet@educagri.fr ', 1, ''),
(67, 'Lycee bellevue ', '', NULL, 'SAINTES ', '17100', 'mallawe ', '', '', 1, ''),
(68, 'Lycée Bernard Palissy', '1, Rue de Gascogne', NULL, 'SAINTES ', '17100', 'Yannick DRIEUX ATPR ', '05 46 92 08 15 ', 'ce.0170060y@ac-poitiers.fr ', 1, ''),
(69, 'lycée Georges Desclaude', 'rue Georges Desclaude', '', 'Saintes', '17100', 'Manuel Deveaud', '546933122', 'manuel.deveaud@educagri.fr', 1, ''),
(70, 'Lycée georges Leygues ', '', NULL, 'Villeneuve\\lot ', '47300', 'M..Certain ', '', '', 1, ''),
(71, 'Lycée Jamain', '2A Boulevard Pouzet ', NULL, 'ROCHEFORT ', '17300', 'M.Celerier Sébastien ', '05 46 99 06 68 ', 'sebastien.celerier@ac-poitiers', 1, ''),
(72, 'Lycée Jean DAUTET ', '', NULL, 'La Rochelle ', '17000', 'Philippe PETIT ATPR ', 'non donné ', 'ph.petit@cr-poitou-charnentes.', 1, ''),
(73, 'Lycée Léonce Vieljeux ', 'Rue des Gonthières ', NULL, 'La Rochelle ', '17000', 'REGEON Cédric ', '546347932', 'cedric.regeon@ac-poitiers.fr ', 1, ''),
(74, 'Lycée Marcel Dassault - ', '', NULL, 'ROCHEFORT ', '17300', 'M. WOJCIECHOWSKI ', '05 46 88 13 09 ', 'nicolas.wojciechowski@ac-poiti', 1, ''),
(75, 'lycée Professionnel Régional I', '', NULL, 'COGNAC ', '16100', 'M.Renard ', '05 45 35 86 70 ', '', 1, ''),
(76, 'Lycée Professionnel Rompsay', ' Rue de Périgny ', NULL, 'La Rochelle', '17025', 'Stephane Arcade', '', 'atp-rompsay@ac-poitiers.fr', 1, ''),
(77, 'Lycée Victor hugo ', '', NULL, 'Poitiers ', '86000', 'Mickaël GUERIN ', '05 49 41 91 04 ', 'mickael.guerin@lyc-victorhugo.', 1, ''),
(78, 'MAAF Assurances', 'SA Chauray ', NULL, 'Niort ', '79036', 'Mr Caquineau ', '05 49 34 35 36 ', 'antonino.cacace@maaf.fr ', 1, ''),
(79, 'Maiano Informatique', ' 17 rue de l''électricité 17200 Royan ', NULL, 'Royan ', '17200', 'Dominique Maiano ', '05 46 49 48 68 ', 'contact@maianoinfo.com ', 1, ''),
(80, 'Mairie de Saintes', 'Square Andre Maudet ', NULL, 'SAINTES ', '17100', 'Bialowas ', '05 46 92 34 29 ', '', 1, ''),
(81, 'Mairie de Chatelaillon ', '', NULL, 'Chatelaillon ', '17340', 'Claude MARLIENGEAS ', '', '', 1, ''),
(82, 'Mairie de Meschers', '8 rue Paul Massy ', NULL, 'MESCHERS SUR GIRONDE', '17132', 'RAT Jean-Luc', '05 46 39 71 13', 'informatique@meschers.com', 1, ''),
(83, 'Mairie de Poitiers Informatiqu', 'Rue du Dolmen', NULL, 'Poitiers', '86000', '', '05 49 30 81 55', '', 1, ''),
(84, 'Mairie de Pont l''Abbé d''Arnoul', 'Place du général de Gaulle', NULL, 'Pont l''Abbé d''Arnoult ', '17250', 'M. Yannick DIEU ', '06 80 07 12 21 ', 'yannick.dieu@wanadoo.fr ', 1, ''),
(85, 'MAIRIE DE ROYAN', ' 80, avenue de Pontaillac ', NULL, 'Royan ', '17200', 'François CHAUVEAU Responsable ', '05 46 39 56 56 ', 'f.chauveau@mairie-royan.fr ', 1, ''),
(86, 'MAIRIE DE SAUJON', ' Hotel de ville BP 108 ', NULL, 'SAUJON ', '17600', 'Stéphane MOINARD Animateur mul', '05 46 02 94 71 ', 'mediatheque_saujon@hotmail.com', 1, ''),
(87, 'Maison de l''emploi', 'Parc des Fourriers', NULL, 'ROCHEFORT ', '17300', 'Emmanuel Ecale', '546998000', 'e.ecale@mde-paysrochefortais.f', 1, ''),
(88, 'Malichaud atlantique', '13 rue Hubert Pennevert', NULL, 'ROCHEFORT ', '17300', 'David Carré ', '05 46 84 79 19 ', 'david.carre@malichaudatlantiqu', 1, ''),
(89, 'MAPA Mutuelle d''Assurance', 'Rue Anatole Contré ', NULL, 'Saint Jean d''Angély ', '17400', 'Christophe MAROQUESNE Resp. ex', '05 46 59 54 16 ', 'service.informatique@mapa-assu', 1, ''),
(90, 'Metal Néo', 'ZI des Soeurs, 21 Boulevard du vercors', '', 'Rochefort', '17300', 'Jean François Pailler', '', '', 1, ''),
(91, 'MSA ', '', NULL, 'Angouleme ', '16000', 'Mr. Nicoine ', '05 45 97 81 60 ', 'nicoine.pascal@msa16.msa.fr ', 1, ''),
(92, 'NEOPC', 'ZI OUEST voie C ', NULL, 'SURGERES ', '17700', 'Michel SUIRE Gérant ', '05 46 30 09 71 ', 'neopc1@orange.fr ', 1, ''),
(93, 'NEVA technologies', '40 Rue de Marignan', '', 'Cognac', '16', 'Bruno Klapita', '545352725', 'bklapita@nevatec.fr', 1, ''),
(94, 'ORECO S.A. ', '44 bd Oscar Planat ', NULL, 'COGNAC ', '16100', 'Daniel de SAINT-OURS directeur', '05 45 35 13 83 ', 'daniel.desaintours@oreco.fr ch', 1, ''),
(95, 'Orix Informatique', '6 rue pape', NULL, 'SAINTES ', '17100', 'DEGABRIEL Ludovic ', '', 'support@orixinfo.fr ', 1, ''),
(96, 'Boutique?', 'Parc d''activité Les Montagnes ', NULL, 'ROCHEFORT ', '17300', 'Nicolas SIGNORELLO Technicien ', '05 46 99 15 54 ', 'nicolas.s@easy-ordi.com ', 1, ''),
(97, 'PRODWARE', '9 rue jacques cartier ', NULL, 'AYTRE ', '17440', 'Jean Philippe ROBBE ', '06 76 48 28 35 ', 'jprobbe@prodware.fr ', 1, ''),
(98, 'Romain Informatique', '20 rue de saint-vivien', NULL, ' Bords', '17430', 'Galin Romain', '05-46-84-00-14', 'contact@romain-informatique.fr', 1, ''),
(99, 'Saint jean d''Y / Val de Sainto', ' rue texier ', NULL, 'Saint Jean d''Angély ', '17400', 'Jean-Philipe BIGOIS ', '', 'jean-philipe,bigois@valsdesain', 1, ''),
(100, 'SAINTRONIC', ' parc atlantique, l''ormeau de pied ', NULL, 'SAINTES ', '17101', 'Jean Jacques PAILLE ', '546927152', 'jean-jacques,paille@saintronic', 1, ''),
(101, 'SARL A.I.P.C. ', '18, route de Frontenay RUFFIGNY', NULL, 'LA CRECHE ', '79260', 'Eric CARLET Gérant ', '05 49 75 19 19 ', 'eric.carlet@aipc-info.fr ', 1, ''),
(102, 'SARL Concept Joueur Cité Joueu', '15, rue Jean Fougerat ', NULL, 'Angouleme ', '16000', 'Nicolas VIROULAUD Gérant ', '06 68 91 71 88 ', 'n.viroulaud@citejoueur.com ', 1, ''),
(103, 'SARL DIF Informatique', 'ZA de chez Bernard 25 route de Cognac', NULL, 'Archiac', '17520', 'Roda Teddy', '', 'teddy@dif-informatique.com', 1, ''),
(104, 'SARL LE MONDE DU PC ', '16,rue G. Claude ', NULL, 'Vaux Sur Mer ', '17640', 'Fabrice ERB Gérant ', '05 46 22 06 57 ', '', 1, ''),
(105, 'Satti informatique ', 'rue Augustin Fresnel ZI ', NULL, 'PERIGNY ', '17183', 'M.Thoulon ', '05 46 51 65 65 ', 'vthoulon@novenci,fr ', 1, ''),
(106, 'Services-emedia', '12 rue de la boulangerie ', NULL, 'Bernay Saint-Martin ', '17330', 'Christian FREBUTTE ', '05 16 51 70 43 ', 'contact@services-emedia,fr ', 1, ''),
(107, 'Simair', '17 avenue André Dublin', NULL, 'ROCHEFORT', '17300', 'Jaunas Jérôme', '05 46 99 87 73', 'j.jaunas@simair.com', 1, ''),
(108, 'SOGEMAP', '40, Rue de Marignan', NULL, 'COGNAC ', '16100', 'Bertrand MACHEFERT Technicien ', '05 45 35 27 25 ', 'bmachefert@nevatec.fr ', 1, ''),
(109, 'SS2i-services', '1 rue Alexandre Fleming', NULL, 'LA ROCHELLE ', '17000', 'Jean-Charles Briatte', '05 46 42 02 77', 'Jean-charles.briatte@ss2i-serv', 1, ''),
(110, 'STEF INFORMATIX ', '61, av. Lafayette ', NULL, 'ROCHEFORT ', '17300', 'M. LOMBARD Chef d''entreprise ', '06 80 07 19 16 / 05 46 87 13 4', 'contact@stefinformatix.com ', 1, ''),
(111, 'Soluris', '', NULL, 'SAINTES ', '17100', 'M. Piekarek lienard', '05 46 92 39 05 ', 'j.piekarek@si17.fr ', 1, ''),
(112, 'SYSTEL SA', '17 Rue Leverrien', NULL, 'AYTRE', '17440', 'F. Baudoux', '06.30.52.50.07', 'f.baudoux@systel-sa.com', 1, ''),
(113, 'URANIE ', 'Zone d''activité des docks maritimes Bat A Quai Carriet ', NULL, 'Lormont ', '33310', 'Sylvain BERGER Ingénieur infor', '05 56 39 79 08 ', 'sylvain.berger@uranie-conseil.', 1, ''),
(114, 'Zolux', '141 cours Paul Doumer', NULL, 'Saintes', '17100', 'BERTIN Romain', '05 46 97 90 24', 'romain.bertin@zolux.com', 1, ''),
(156, 'Mairie Ecurat', 'route de ', '', 'Ecurat', '17560', '', '', '', 1, '');

-- --------------------------------------------------------

--
-- Structure de la table `type_entreprise`
--

CREATE TABLE IF NOT EXISTS `type_entreprise` (
  `te_code` int(11) NOT NULL AUTO_INCREMENT,
  `te_libelle` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`te_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Contenu de la table `type_entreprise`
--

INSERT INTO `type_entreprise` (`te_code`, `te_libelle`) VALUES
(1, 'Mairie'),
(2, 'Hopital'),
(3, 'Industrie'),
(4, 'Société de communication'),
(5, 'SSII/ESN'),
(6, 'Boutique informatique'),
(7, 'Association'),
(8, 'Armée'),
(9, 'Administration'),
(10, 'Hopital/clinique'),
(11, 'Mairie'),
(12, 'Lycée/Ecole/CFA'),
(13, 'Service/Conseil'),
(14, 'Assurance');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `u_code` tinyint(4) NOT NULL AUTO_INCREMENT,
  `u_login` varchar(20) NOT NULL,
  `u_password` varchar(100) NOT NULL,
  `u_nom` varchar(80) NOT NULL,
  `u_prenom` varchar(50) NOT NULL,
  `u_role` char(5) NOT NULL,
  PRIMARY KEY (`u_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`u_code`, `u_login`, `u_password`, `u_nom`, `u_prenom`, `u_role`) VALUES
(1, 'etu', '9cf95dacd226dcf43da376cdb6cbba7035218921', 'Diant', 'Etu', 'etu'),
(2, 'prof', '9cf95dacd226dcf43da376cdb6cbba7035218921', 'Pédagogique', 'Equipe', 'admin');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `commentaires`
--
ALTER TABLE `commentaires`
  ADD CONSTRAINT `fk_commentaires_e_code` FOREIGN KEY (`e_code`) REFERENCES `entreprises` (`e_code`);

--
-- Contraintes pour la table `entreprises`
--
ALTER TABLE `entreprises`
  ADD CONSTRAINT `fk_entreprise_te_code` FOREIGN KEY (`te_code`) REFERENCES `type_entreprise` (`te_code`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
