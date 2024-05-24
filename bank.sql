-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Erstellungszeit: 24. Mai 2024 um 16:05
-- Server-Version: 5.7.33-0ubuntu0.16.04.1
-- PHP-Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `web2027_bnet_anfrage_db`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `bank`
--

CREATE TABLE `bank` (
  `id` int(11) NOT NULL,
  `name` char(100) NOT NULL DEFAULT '',
  `bic` char(25) NOT NULL DEFAULT '',
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` char(50) NOT NULL DEFAULT '',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` char(50) NOT NULL DEFAULT '',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `bank`
--

INSERT INTO `bank` (`id`, `name`, `bic`, `createDate`, `createUser`, `updateDate`, `updateUser`, `isDeleted`) VALUES
(1, 'ABN AMRO Bank', 'FTSBDEFAMYO', '2024-05-04 16:10:15', 'JANINA', '2024-05-04 16:10:15', 'JANINA', 0),
(2, 'Airbus Bank', 'AGBMDEMMXXX', '2024-05-04 16:10:16', 'JANINA', '2024-05-04 16:10:16', 'JANINA', 0),
(3, 'Aktivbank', 'AKBADES1XXX', '2024-05-04 16:10:16', 'JANINA', '2024-05-04 16:10:16', 'JANINA', 0),
(4, 'Bank 1 Saar', 'SABADE5SXXX', '2024-05-04 16:10:16', 'JANINA', '2024-05-04 16:10:16', 'JANINA', 0),
(5, 'Bank 11', 'CUABDED1XXX', '2024-05-04 16:10:16', 'JANINA', '2024-05-04 16:10:16', 'JANINA', 0),
(6, 'Bank fuer Sozialwirtschaft', 'BFSWDE33HAN', '2024-05-04 16:10:16', 'JANINA', '2024-05-04 16:10:16', 'JANINA', 0),
(7, 'Bank Im Bistum Essen', 'GENODED1BBE', '2024-05-04 16:10:16', 'JANINA', '2024-05-04 16:10:16', 'JANINA', 0),
(8, 'Bankhaus Anton Hafner', 'ANHODE77XXX', '2024-05-04 16:10:16', 'JANINA', '2024-05-04 16:10:16', 'JANINA', 0),
(9, 'Bankhaus Bauer', 'BHBADES1XXX', '2024-05-04 16:10:16', 'JANINA', '2024-05-04 16:10:16', 'JANINA', 0),
(10, 'Bankhaus E. Mayer', 'BKMADE61XXX', '2024-05-04 16:10:16', 'JANINA', '2024-05-04 16:10:16', 'JANINA', 0),
(11, 'Bankhaus Ellwanger and Geiger', 'ELGEDES1XXX', '2024-05-04 16:10:16', 'JANINA', '2024-05-04 16:10:16', 'JANINA', 0),
(12, 'Bankhaus Gebr. Martin', 'MARBDE6GXXX', '2024-05-04 16:10:16', 'JANINA', '2024-05-04 16:10:16', 'JANINA', 0),
(13, 'Bankhaus Rautenschlein', 'GENODEF1RTS', '2024-05-04 16:10:16', 'JANINA', '2024-05-04 16:10:16', 'JANINA', 0),
(14, 'Bankhaus Werhahn', 'WERHDED1XXX', '2024-05-04 16:10:16', 'JANINA', '2024-05-04 16:10:16', 'JANINA', 0),
(15, 'BBBank', 'GENODE61BBB', '2024-05-04 16:10:16', 'JANINA', '2024-05-04 16:10:16', 'JANINA', 0),
(16, 'Bensberger Bank', 'GENODED1BGL', '2024-05-04 16:10:16', 'JANINA', '2024-05-04 16:10:16', 'JANINA', 0),
(17, 'Comdirect bank', 'COBADEHDXXX', '2024-05-04 16:10:16', 'JANINA', '2024-05-04 16:10:16', 'JANINA', 0),
(18, 'Commerzbank', 'COBADEFFXXX', '2024-05-04 16:10:16', 'JANINA', '2024-05-04 16:10:16', 'JANINA', 0),
(19, 'Consorsbank by BNP Paribas', 'CSDBDE7NXXX', '2024-05-04 16:10:16', 'JANINA', '2024-05-04 16:10:16', 'JANINA', 0),
(20, 'Cronbank', 'GENODE51CRO', '2024-05-04 16:10:16', 'JANINA', '2024-05-04 16:10:16', 'JANINA', 0),
(21, 'Deutsche Bank', 'DEUTDEBBXXX', '2024-05-04 16:10:16', 'JANINA', '2024-05-04 16:10:16', 'JANINA', 0),
(22, 'DKM Darlehnskasse Muenster', 'GENODEM1DKM', '2024-05-04 16:10:16', 'JANINA', '2024-05-04 16:10:16', 'JANINA', 0),
(23, 'Donner and Reuschel', 'CHDBDEHHXXX', '2024-05-04 16:10:16', 'JANINA', '2024-05-04 16:10:16', 'JANINA', 0),
(24, 'Edekabank', 'EDEKDEHHXXX', '2024-05-04 16:10:16', 'JANINA', '2024-05-04 16:10:16', 'JANINA', 0),
(25, 'Ethikbank', 'GENODEF1ETK', '2024-05-04 16:10:16', 'JANINA', '2024-05-04 16:10:16', 'JANINA', 0),
(26, 'Eurocity Bank', 'DLGHDEB1XXX', '2024-05-04 16:10:16', 'JANINA', '2024-05-04 16:10:16', 'JANINA', 0),
(27, 'Evangelische Bank', 'GENODEF1EK1', '2024-05-04 16:10:16', 'JANINA', '2024-05-04 16:10:16', 'JANINA', 0),
(28, 'Evenord-Bank', 'GENODEF1N03', '2024-05-04 16:10:16', 'JANINA', '2024-05-04 16:10:16', 'JANINA', 0),
(29, 'Flessabank', 'FLESDEMMXXX', '2024-05-04 16:10:17', 'JANINA', '2024-05-04 16:10:17', 'JANINA', 0),
(30, 'Frankfurter Bankgesellschaft', 'FBGADEF1XXX', '2024-05-04 16:10:17', 'JANINA', '2024-05-04 16:10:17', 'JANINA', 0),
(31, 'Fuerstlich Castell’sche Bank Credit Casse', 'FUCEDE77XXX', '2024-05-04 16:10:17', 'JANINA', '2024-05-04 16:10:17', 'JANINA', 0),
(32, 'Furst Fugger Privatbank', 'FUBKDE71XXX', '2024-05-04 16:10:17', 'JANINA', '2024-05-04 16:10:17', 'JANINA', 0),
(33, 'Gabler-Saliter-Bank', 'GABLDE71XXX', '2024-05-04 16:10:17', 'JANINA', '2024-05-04 16:10:17', 'JANINA', 0),
(34, 'GLS Gemeinschaftsbank', 'GENODEM1GLS', '2024-05-04 16:10:17', 'JANINA', '2024-05-04 16:10:17', 'JANINA', 0),
(35, 'Hoerner Bank', 'HOEBDE61XXX', '2024-05-04 16:10:17', 'JANINA', '2024-05-04 16:10:17', 'JANINA', 0),
(36, 'IBM Deutschland Kreditbank', 'IBKBDES1XXX', '2024-05-04 16:10:17', 'JANINA', '2024-05-04 16:10:17', 'JANINA', 0),
(37, 'Ikano Bank', 'PLFGDE5AIKB', '2024-05-04 16:10:17', 'JANINA', '2024-05-04 16:10:17', 'JANINA', 0),
(38, 'ING', 'INGBDEFFXXX', '2024-05-04 16:10:17', 'JANINA', '2024-05-04 16:10:17', 'JANINA', 0),
(39, 'Internationales Bankhaus Bodensee', 'IBBFDE81XXX', '2024-05-04 16:10:17', 'JANINA', '2024-05-04 16:10:17', 'JANINA', 0),
(40, 'KD Bank', 'GENODED1DKD', '2024-05-04 16:10:17', 'JANINA', '2024-05-04 16:10:17', 'JANINA', 0),
(41, 'Landwirtschaftliche Rentenbank', 'LAREDEFFXXX', '2024-05-04 16:10:17', 'JANINA', '2024-05-04 16:10:17', 'JANINA', 0),
(42, 'LBBW', 'SOLADEST428', '2024-05-04 16:10:17', 'JANINA', '2024-05-04 16:10:17', 'JANINA', 0),
(43, 'MLP', 'MLPBDE61XXX', '2024-05-04 16:10:17', 'JANINA', '2024-05-04 16:10:17', 'JANINA', 0),
(44, 'Muensterlandische Bank Thie and Co.', 'MLBKDEH1MUE', '2024-05-04 16:10:17', 'JANINA', '2024-05-04 16:10:17', 'JANINA', 0),
(45, 'N26', 'NTSBDEB1XXX', '2024-05-04 16:10:32', 'JANINA', '2024-05-04 16:10:32', 'JANINA', 0),
(46, 'NORD/LB Bremen', 'BRLADE22OLD', '2024-05-04 16:10:32', 'JANINA', '2024-05-04 16:10:32', 'JANINA', 0),
(47, 'Norddeutsche Landesbank (NORD/LB)', 'NOLADE2HXXX', '2024-05-04 16:10:32', 'JANINA', '2024-05-04 16:10:32', 'JANINA', 0),
(48, 'Norisbank', 'NORSDE51XXX', '2024-05-04 16:25:19', 'JANINA', '2024-05-04 16:25:19', 'JANINA', 0),
(49, 'Pax Bank Koeln', '	GENODED1PAX', '2024-05-04 16:25:19', 'JANINA', '2024-05-04 16:25:19', 'JANINA', 0),
(50, 'Postbank', 'PBNKDEFFXXX', '2024-05-04 16:25:19', 'JANINA', '2024-05-04 16:25:19', 'JANINA', 0),
(51, 'Revolut', 'REVOLT21XXX', '2024-05-04 16:25:19', 'JANINA', '2024-05-04 16:25:19', 'JANINA', 0),
(52, 'RSB Retail+Service Bank', 'SABUDES1XXX', '2024-05-04 16:25:19', 'JANINA', '2024-05-04 16:25:19', 'JANINA', 0),
(53, 'Santander Consumer Bank', 'SCFBDE33XXX', '2024-05-04 16:25:19', 'JANINA', '2024-05-04 16:25:19', 'JANINA', 0),
(54, 'St. Galler Kantonalbank', 'GAKDDEM1XXX', '2024-05-04 16:25:19', 'JANINA', '2024-05-04 16:25:19', 'JANINA', 0),
(55, 'Steyler Bank', 'GENODED1STB', '2024-05-04 16:25:19', 'JANINA', '2024-05-04 16:25:19', 'JANINA', 0),
(56, 'Suedwestbank', '	SWBSDESSXXX', '2024-05-04 16:25:19', 'JANINA', '2024-05-04 16:25:19', 'JANINA', 0),
(57, 'TEN31 Bank Real Estate', 'WEGBDE77XXX', '2024-05-04 16:25:19', 'JANINA', '2024-05-04 16:25:19', 'JANINA', 0),
(58, 'Triodos Bank', 'TRODDEF1XXX', '2024-05-04 16:25:19', 'JANINA', '2024-05-04 16:25:19', 'JANINA', 0),
(59, 'UBS Europe', 'SMHBDEFFXXX', '2024-05-04 16:25:19', 'JANINA', '2024-05-04 16:25:19', 'JANINA', 0),
(60, 'UniCredit (HypoVereinsbank)', 'HYVEDEMMXXX', '2024-05-04 16:25:19', 'JANINA', '2024-05-04 16:25:19', 'JANINA', 0),
(61, 'Union Bank', 'UNBNDE21XXX', '2024-05-04 16:27:46', 'JANINA', '2024-05-04 16:27:46', 'JANINA', 0),
(62, 'VakifBank International', 'TVBADEFFXXX', '2024-05-04 16:27:46', 'JANINA', '2024-05-04 16:27:46', 'JANINA', 0),
(63, 'Vietinbank', 'ICBVDEFFXXX', '2024-05-04 16:27:46', 'JANINA', '2024-05-04 16:27:46', 'JANINA', 0),
(64, 'Volks-, Raiffeisen-, Sparda- and Genossenschaftsbanks (all branches)', 'GENODEXXXXX', '2024-05-04 16:27:46', 'JANINA', '2024-05-04 16:27:46', 'JANINA', 0),
(65, 'Weberbank', 'WELADED1WBB', '2024-05-04 16:27:46', 'JANINA', '2024-05-04 16:27:46', 'JANINA', 0),


--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `bank`
--
ALTER TABLE `bank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


INSERT INTO `bank` VALUES (null, 'Postbank Ndl der Deutsche Bank', 'PBNKDEFFXXX', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `bank` VALUES (null, 'OLINDA Zweigniederlassung Deutschland', 'QNTODEB2XXX', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `bank` VALUES (null, 'Revolut Bank, Zweigniederlassung Deutschland', 'REVODEB2XXX', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `bank` VALUES (null, 'Treezor, Berlin', 'TRZODEB2XXX', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `bank` VALUES (null, 'Klarna Bank German Branch', 'KLRNDEBEXXX', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `bank` VALUES (null, 'Aareal Bank', 'AARBDE5W100', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `bank` VALUES (null, 'Noelse Pay', 'AFOPDEB2XXX', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `bank` VALUES (null, 'Financiere des Paiements Electroniques NL Deutschland', 'FPEGDEB2XXX', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `bank` VALUES (null, 'N26 Bank', 'NTSBDEB1XXX', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `bank` VALUES (null, 'Trade Republic Bank', 'TRBKDEBBXXX', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `bank` VALUES (null, 'Swan Zweigniederlassung Deutschland', 'SWNBDEBBXXX', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `bank` VALUES (null, 'Swan Zweigniederlassung Deutschland (Geschäftsfeld)', 'SWNBDEBBXXX', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `bank` VALUES (null, 'Holvi Payment Services Zweigniederlassung Deutschland', 'HOLVDEB1XXX', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `bank` VALUES (null, 'Finom Payments Zweigniederlassung Deutschland', 'FNOMDEB2XXX', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `bank` VALUES (null, 'Adyen, German Branch', 'ADYBDEB2XXX', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `bank` VALUES (null, 'BHF-BANK', 'BHFBDEFF100', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `bank` VALUES (null, 'Bank für Sozialwirtschaft', 'BFSWDE33BER', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `bank` VALUES (null, 'UniCredit Bank - HypoVereinsbank', 'HYVEDEMM488', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `bank` VALUES (null, 'Berlin Hyp', 'BHYPDEB2XXX', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `bank` VALUES (null, 'ABK Allgemeine Beamten Bank', 'ABKBDEB1XXX', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `bank` VALUES (null, 'M.M. Warburg & Co (vormals Bankhaus Löbbecke)', 'LOEBDEBBXXX', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `bank` VALUES (null, 'North Channel Bank', 'GENODEF1OGK', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `bank` VALUES (null, 'Eurocity Bank', 'DLGHDEB1XXX', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `bank` VALUES (null, 'Santander Consumer Bank', 'SCFBDE33XXX', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `bank` VALUES (null, '	Commerzbank', 'COBADEBBXXX', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `bank` VALUES (null, 'Landesbank Berlin - Berliner Sparkasse', 'BELADEBEXXX', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `bank` VALUES (null, 'S-Kreditpartner, Berlin', 'SKPADEB1XXX', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `bank` VALUES (null, 'LBS Ost Berlin', 'LBSODEB1BLN', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `bank` VALUES (null, 'DekaBank', 'DGZFDEFFBER', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `bank` VALUES (null, 'Pax-Bank', 'GENODED1PA6', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `bank` VALUES (null, 'Bank für Kirche und Diakonie - KD-Bank Gf Sonder-BLZ', 'GENODED1KDB', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `bank` VALUES (null, 'Deutsche Bank', 'DEUTDEBBXXX', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `bank` VALUES (null, 'Deutsche Bank', 'DEUTDEDBBER', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `bank` VALUES (null, 'Deutsche Bank', 'DEUTDEBB101', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `bank` VALUES (null, 'Postbank/DSL Ndl der Deutsche Bank', 'DEUTDEDBP30', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `bank` VALUES (null, 'Postbank/DSL Ndl der Deutsche Bank', 'DEUTDEBBP31', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `bank` VALUES (null, 'Postbank/DSL Ndl der Deutsche Bank', 'DEUTDEBBP32', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `bank` VALUES (null, 'Deutsche Bank', 'DEUTDEDB110', NOW(), 'JANINA', NOW(), 'JANINA', 0);

INSERT INTO `bank` VALUES (null, '360 TREASURY SYSTEMS AG', 'TRSYDEFF', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `bank` VALUES (null, 'AAREAL BANK AG', 'AARBDE5W100', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `bank` VALUES (null, 'AAREAL BANK AG', 'AARBDE5W360', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `bank` VALUES (null, 'AAREAL BANK AG', 'AARBDE5W860', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `bank` VALUES (null, 'AAREAL BANK AG', 'AARBDE5W', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `bank` VALUES (null, 'AAREAL BANK AG', 'AARBDE5WCLE', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `bank` VALUES (null, 'AAREAL BANK AG', 'AARBDE5WMTG', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `bank` VALUES (null, 'AAREAL BANK AG', 'AARBDE5W500', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `bank` VALUES (null, 'AAREAL BANK AG', 'AARBDE5W200', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `bank` VALUES (null, 'AAREAL BANK AG', 'AARBDE5W250', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `bank` VALUES (null, 'AAREAL BANK AG', 'AARBDE5W550', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `bank` VALUES (null, 'AAREAL BANK AG', 'AARBDE5W700', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `bank` VALUES (null, 'AAREAL BANK AG', 'AARBDE5W600', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `bank` VALUES (null, 'AAREAL BANK AG', 'AARBDE5WDOM', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `bank` VALUES (null, 'AAREAL BANK AG (FORMERLY WESTDEUTSCHE IMMOBILIENBANK AG)', 'IMMODE5M', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `bank` VALUES (null, 'ABCBANK GMBH', 'WWBADE3A', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `bank` VALUES (null, 'ABCBANK GMBH', 'WWBADE3ADOT', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `bank` VALUES (null, 'ABK ALLGEMEINE BEAMTEN BANK AG', 'ABKBDEBB', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `bank` VALUES (null, 'ABK-SYSTEME GESELLSCHAFT FUER AUSBILDUNG, BERATUNG UND KOMMUNIKATIONSSYSTEME M.B.H.', 'ABKSDEFF', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `bank` VALUES (null, 'ABN AMRO BANK N.V. FRANKFURT BRANCH', 'FTSBDEFA', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `bank` VALUES (null, 'ABN AMRO BANK N.V. FRANKFURT BRANCH', 'FTSBDEFASFI', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `bank` VALUES (null, 'ABN AMRO BANK N.V. FRANKFURT BRANCH', 'DELBDE33', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `bank` VALUES (null, 'ACCURIDE WHEELS SOLINGEN GMBH', 'AWSGDE3S', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `bank` VALUES (null, 'ADEUS AKTIENREGISTER-SERVICE-GMBH', 'ADEUDEMM', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `bank` VALUES (null, 'ADIDAS AG', 'ADDSDE77', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `bank` VALUES (null, 'ADYEN N.V. - GERMAN BRANCH', 'ADYBDEB2', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `bank` VALUES (null, 'AFONE PAIEMENT', 'AFOPDEB2', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `bank` VALUES (null, 'AFONE PAIEMENT', 'AFPNDEB2', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `bank` VALUES (null, 'AGRARHANDEL SUN GMBH', 'AGSMDE82PRM', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `bank` VALUES (null, 'AGRARHANDEL SUN GMBH', 'AGSMDE82', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `bank` VALUES (null, 'AGRICULTURAL BANK OF CHINA FRANKFURT BRANCH', 'ABOCDEFF', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `bank` VALUES (null, 'AIFINYO PAYMENTS GMBH', 'AIPGDE82', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `bank` VALUES (null, 'AION BANK GERMAN BRANCH NV', 'BMPBDEF2', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `bank` VALUES (null, 'AIRBUS BANK GMBH', 'AGBMDEMME22', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `bank` VALUES (null, 'AIRBUS BANK GMBH', 'AGBMDEMME23', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `bank` VALUES (null, 'AIRBUS BANK GMBH', 'AGBMDEMME25', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `bank` VALUES (null, 'AIRBUS BANK GMBH', 'AGBMDEMME24', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `bank` VALUES (null, 'AIRBUS BANK GMBH', 'AGBMDEMMTGT', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `bank` VALUES (null, 'AIRBUS BANK GMBH', 'AGBMDEMM', NOW(), 'JANINA', NOW(), 'JANINA', 0);
