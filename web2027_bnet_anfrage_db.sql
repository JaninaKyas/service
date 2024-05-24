-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Erstellungszeit: 24. Mai 2024 um 16:36
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
-- Tabellenstruktur für Tabelle `address`
--

CREATE TABLE `address` (
  `id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `street` char(200) NOT NULL DEFAULT '',
  `houseNr` char(5) NOT NULL DEFAULT '',
  `zipcode` char(10) NOT NULL DEFAULT '',
  `street_side` char(200) NOT NULL DEFAULT '',
  `intern_tae` char(200) NOT NULL DEFAULT '',
  `note` char(200) NOT NULL DEFAULT '',
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` char(50) NOT NULL DEFAULT '',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` char(50) NOT NULL DEFAULT '',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `address`
--

INSERT INTO `address` (`id`, `location_id`, `street`, `houseNr`, `zipcode`, `street_side`, `intern_tae`, `note`, `createDate`, `createUser`, `updateDate`, `updateUser`, `isDeleted`) VALUES
(1, 3, 'Goethestraße', '50', '06796', 'links', 'EFH', '1. links von ADL aus', '2024-05-23 09:57:13', 'JANINA', '2024-05-23 09:57:13', 'JANINA', 0),
(2, 3, 'Goethestraße', '52', '06796', 'links', 'EFH', '2. links von ADL aus', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(3, 3, 'Goethestraße', '54', '06796', 'links', 'EFH', '3. links von ADL aus', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(4, 3, 'Goethestraße', '56', '06796', 'links', 'EFH', '4. links von ADL aus', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(5, 3, 'Goethestraße', '58', '06796', 'links', 'EFH', '5. links von ADL aus', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(6, 3, 'Goethestraße', '60', '06796', 'links', 'EFH', '6. links von ADL aus', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(7, 3, 'Goethestraße', '49', '06796', 'rechts', 'DHH rechts/Eckhaus', '1. Haus rechts von Brücke zur Einmündung Gartenstadt (Eckhaus = 1 Haus oder DHH??? -- DHH li)', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(8, 3, 'Goethestraße', '47', '06796', 'rechts', 'DHH rechts', '2. Haus rechts von Brücke zur Einmündung Gartenstadt', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(9, 3, 'Goethestraße', '45', '06796', 'rechts', 'DHH links', '3. Haus rechts von Brücke zur Einmündung Gartenstadt', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(10, 3, 'Goethestraße', '43', '06796', 'rechts', 'DHH rechts', '4. Haus rechts von Brücke zur Einmündung Gartenstadt', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(11, 3, 'Goethestraße', '41', '06796', 'rechts', 'DHH links', '5. Haus rechts von Brücke zur Einmündung Gartenstadt', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(12, 3, 'Goethestraße', '39', '06796', 'rechts', 'DHH rechts', '6. Haus rechts von Brücke zur Einmündung Gartenstadt', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(13, 3, 'Goethestraße', '37', '06796', 'rechts', 'DHH links', '7. Haus rechts von Brücke zur Einmündung Gartenstadt', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(14, 3, 'Goethestraße', '33/35', '06796', 'rechts', 'EFH????', '8. Haus rechts von Brücke zur Einmündung Gartenstadt', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(15, 3, 'Goethestraße', '31', '06796', 'rechts', 'DHH rechts', '9. Haus rechts von Brücke zur Einmündung Gartenstadt', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(16, 3, 'Goethestraße', '29', '06796', 'rechts', 'DHH links', '10. Haus rechts von Brücke zur Einmündung Gartenstadt', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(17, 3, 'Goethestraße', '27', '06796', 'rechts', 'DHH rechts', '11. Haus rechts von Brücke zur Einmündung Gartenstadt', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(18, 3, 'Goethestraße', '25', '06796', 'rechts', 'DHH links/Eckhaus', '12. (Eck)haus zur Gartenstadt (mit zur Goethestraße???)', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(19, 3, 'Goethestraße', '23', '06796', 'rechts', 'DHH rechts', '13. Haus rechts von Einmündung Gartenstadt bis Einmündung Schillerstraße', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(20, 3, 'Goethestraße', '21', '06796', 'rechts', 'DHH links', '14. Haus rechts von Einmündung Gartenstadt bis Einmündung Schillerstraße', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(21, 3, 'Goethestraße', '19', '06796', 'rechts', 'DHH rechts', '15. Haus rechts von Einmündung Gartenstadt bis Einmündung Schillerstraße', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(22, 3, 'Goethestraße', '17', '06796', 'rechts', 'DHH links', '16. Haus rechts von Einmündung Gartenstadt bis Einmündung Schillerstraße', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(23, 3, 'Goethestraße', '15', '06796', 'rechts', 'DHH rechts', '17. Haus rechts von Einmündung Gartenstadt bis Einmündung Schillerstraße', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(24, 3, 'Goethestraße', '13', '06796', 'rechts', 'DHH links', '18. Haus rechts von Einmündung Gartenstadt bis Einmündung Schillerstraße', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(25, 3, 'Goethestraße', '', '06796', 'rechts', 'DHH rechts', '19. Haus rechts von Einmündung Gartenstadt bis Einmündung Schillerstraße', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(26, 3, 'Goethestraße', '11', '06796', 'rechts', 'DHH links', '20. Haus rechts von Einmündung Gartenstadt bis Einmündung Schillerstraße', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(27, 3, 'Goethestraße', '9', '06796', 'rechts', 'DHH rechts', '21. Haus rechts von Einmündung Gartenstadt bis Einmündung Schillerstraße', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(28, 3, 'Goethestraße', '7', '06796', 'rechts', 'DHH links', '22. Haus rechts von Einmündung Gartenstadt bis Einmündung Schillerstraße', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(29, 3, 'Goethestraße', '5', '06796', 'rechts', 'DHH rechts', '23. Haus rechts von Einmündung Gartenstadt bis Einmündung Schillerstraße', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(30, 3, 'Goethestraße', '3A', '06796', 'rechts', 'DHH links', '24. Haus rechts von Einmündung Gartenstadt bis Einmündung Schillerstraße', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(31, 3, 'Goethestraße', '3', '06796', 'rechts', 'EFH/Eckhaus Schillerstr.', '25. (Eck)haus zur Schillerstraße (Mit Hsnr.-Zusatz????)', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(32, 3, 'Goethestraße', '1B', '06796', 'rechts', 'EFH', '26. EFH rechts von Einmündung Schillerstraße bis Nebenstraße FFW', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(33, 3, 'Goethestraße', '1', '06796', 'rechts', 'EFH', '27. EFH rechts von Einmündung Schillerstraße bis Nebenstraße FFW', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(34, 3, 'Goethestraße', '40', '06796', 'links', 'EFH', '1. EFH links von Brücke bis Einmündung Goethestraße', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(35, 3, 'Goethestraße', '36', '06796', 'links', 'EFH', '2. EFH links von Brücke bis Einmündung Goethestraße', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(36, 3, 'Goethestraße', '34', '06796', 'links', 'EFH', '3. EFH links von Brücke bis Einmündung Goethestraße', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(37, 3, 'Goethestraße', '32', '06796', 'links', 'EFH', '4. EFH links von Brücke bis Einmündung Goethestraße', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(38, 3, 'Goethestraße', '30', '06796', 'links', 'EFH', '5. EFH links von Brücke bis Einmündung Goethestraße', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(39, 3, 'Goethestraße', '28', '06796', 'links', 'EFH', '6. EFH links von Brücke bis Einmündung Goethestraße', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(40, 3, 'Goethestraße', '26', '06796', 'links', 'EFH', '7. EFH links von Brücke bis Einmündung Goethestraße', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(41, 3, 'Goethestraße', '24', '06796', 'links', 'EFH', '8. EFH links von Brücke bis Einmündung Goethestraße', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(42, 3, 'Goethestraße', '22', '06796', 'links', 'EFH', '9. EFH links von Brücke bis Einmündung Goethestraße', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(43, 3, 'Goethestraße', '20', '06796', 'links', 'EFH', '10. EFH von Einmündung Goethestraße bis Einmündung Schillerstraße', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(44, 3, 'Goethestraße', '18', '06796', 'links', 'EFH', '11. EFH von Einmündung Goethestraße bis Einmündung Schillerstraße', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(45, 3, 'Goethestraße', '16', '06796', 'links', 'EFH', '12. EFH von Einmündung Goethestraße bis Einmündung Schillerstraße', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(46, 3, 'Goethestraße', '14', '06796', 'links', 'EFH', '13. EFH von Einmündung Goethestraße bis Einmündung Schillerstraße', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(47, 3, 'Goethestraße', '12', '06796', 'links', 'EFH', '14. EFH von Einmündung Goethestraße bis Einmündung Schillerstraße', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(48, 3, 'Goethestraße', '10', '06796', 'links', 'EFH', '15. EFH von Einmündung Goethestraße bis Einmündung Schillerstraße', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(49, 3, 'Goethestraße', '8', '06796', 'links', 'EFH', '16. EFH von Einmündung Goethestraße bis Einmündung Schillerstraße', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(50, 3, 'Goethestraße', '6', '06796', 'links', 'EFH', '17. EFH von Einmündung Goethestraße bis Einmündung Schillerstraße', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(51, 3, 'Goethestraße', '2', '06796', 'links', 'EFH', '18. EFH von Einmündung Goethestraße bis Einmündung Schillerstraße', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(52, 3, 'Goethestraße', '1', '06796', 'links', 'Werkstatt', 'Eckgebäude Goethestraße zur B100', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(53, 3, 'Goethestraße', '4', '06796', '', '', '', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(54, 3, 'Goethestraße', '38', '06796', '', '', '', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(55, 3, 'Goethestraße', '42', '06796', '', '', '', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(56, 3, 'Goethestraße', '44', '06796', '', '', '', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(57, 3, 'Goethestraße', '46', '06796', '', '', '', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(58, 3, 'Goethestraße', '48', '06796', '', '', '', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(59, 3, 'Goethestraße', '51', '06796', '', '', '', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(60, 3, 'Goethestraße', '53', '06796', '', '', '', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(61, 3, 'Goethestraße', '57', '06796', '', '', '', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(62, 3, 'Goethestraße', '59', '06796', '', '', '', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(63, 3, 'Goethestraße', '61', '06796', '', '', '', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(64, 3, 'Goethestraße', '62', '06796', '', '', '', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(65, 3, 'Goethestraße', '63', '06796', '', '', '', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(66, 3, 'Goethestraße', '64', '06796', '', '', '', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(67, 3, 'Goethestraße', '65', '06796', '', '', '', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(68, 3, 'Goethestraße', '66', '06796', '', '', '', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(69, 3, 'Goethestraße', '67', '06796', '', '', '', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(70, 3, 'Goethestraße', '68', '06796', '', '', '', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(71, 3, 'Goethestraße', '69', '06796', '', '', '', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(72, 3, 'Goethestraße', '70', '06796', '', '', '', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(73, 3, 'Goethestraße', '71', '06796', '', '', '', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(74, 3, 'Goethestraße', '72', '06796', '', '', '', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(75, 3, 'Goethestraße', '73', '06796', '', '', '', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(76, 3, 'Goethestraße', '74', '06796', '', '', '', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(77, 3, 'Goethestraße', '75', '06796', '', '', '', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(78, 3, 'Goethestraße', '76', '06796', '', '', '', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(79, 3, 'Goethestraße', '77', '06796', '', '', '', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(80, 3, 'Goethestraße', '78', '06796', '', '', '', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(81, 3, 'Goethestraße', '79', '06796', '', '', '', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(82, 3, 'Goethestraße', '80', '06796', '', '', '', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(83, 3, 'Goethestraße', '81', '06796', '', '', '', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(84, 3, 'Goethestraße', '82', '06796', '', '', '', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(85, 3, 'Goethestraße', '83', '06796', '', '', '', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(86, 3, 'Goethestraße', '84', '06796', '', '', '', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(87, 3, 'Goethestraße', '85', '06796', '', '', '', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(88, 3, 'Goethestraße', '86', '06796', '', '', '', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(89, 3, 'Goethestraße', '87', '06796', '', '', '', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(90, 3, 'Goethestraße', '88', '06796', '', '', '', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(91, 3, 'Goethestraße', '89', '06796', '', '', '', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(92, 3, 'Goethestraße', '90', '06796', '', '', '', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(93, 3, 'Goethestraße', '91', '06796', '', '', '', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(94, 3, 'Goethestraße', '92', '06796', '', '', '', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(95, 3, 'Goethestraße', '93', '06796', '', '', '', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(96, 3, 'Goethestraße', '94', '06796', '', '', '', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(97, 3, 'Goethestraße', '95', '06796', '', '', '', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(98, 3, 'Goethestraße', '96', '06796', '', '', '', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(99, 3, 'Goethestraße', '97', '06796', '', '', '', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(100, 3, 'Goethestraße', '98', '06796', '', '', '', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(101, 3, 'Goethestraße', '99', '06796', '', '', '', '2024-05-23 10:01:17', 'JANINA', '2024-05-23 10:01:17', 'JANINA', 0),
(102, 3, 'muster', '1', '00000', '', '', '', '2024-05-23 15:27:44', 'JANINA', '2024-05-23 15:27:44', 'JANINA', 1),
(103, 3, 'muster', '12', '00000', '', '', '', '2024-05-24 08:20:49', 'JANINA', '2024-05-24 08:20:49', 'JANINA', 1),
(104, 3, 'muster', '15', '00000', '', '', '', '2024-05-24 09:47:55', 'JANINA', '2024-05-24 09:47:55', 'JANINA', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `asb_availability`
--

CREATE TABLE `asb_availability` (
  `id` int(11) NOT NULL,
  `address_id` int(11) NOT NULL DEFAULT '-1',
  `network_node_adress_id` int(11) NOT NULL DEFAULT '-1',
  `technology_id` int(11) NOT NULL DEFAULT '-1',
  `down_stream` decimal(10,2) NOT NULL DEFAULT '0.00',
  `up_stream` decimal(10,2) NOT NULL DEFAULT '0.00',
  `kvz` char(10) NOT NULL DEFAULT '',
  `onkz` char(10) NOT NULL DEFAULT '',
  `asb` int(11) NOT NULL DEFAULT '0',
  `isExpansionFinish` tinyint(1) NOT NULL DEFAULT '1',
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` char(50) NOT NULL DEFAULT '',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` char(50) NOT NULL DEFAULT '',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `asb_availability`
--

INSERT INTO `asb_availability` (`id`, `address_id`, `network_node_adress_id`, `technology_id`, `down_stream`, `up_stream`, `kvz`, `onkz`, `asb`, `isExpansionFinish`, `createDate`, `createUser`, `updateDate`, `updateUser`, `isDeleted`) VALUES
(1, 1, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(2, 2, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(3, 3, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(4, 4, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(5, 5, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(6, 6, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(7, 7, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(8, 8, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(9, 9, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(10, 10, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(11, 11, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(12, 12, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(13, 13, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(14, 14, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(15, 15, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(16, 16, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(17, 17, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(18, 18, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(19, 19, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(20, 20, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(21, 21, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(22, 22, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(23, 23, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(24, 24, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(25, 25, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(26, 26, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(27, 27, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(28, 28, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(29, 29, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(30, 30, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(31, 31, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(32, 32, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(33, 33, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(34, 34, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(35, 35, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(36, 36, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(37, 37, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(38, 38, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(39, 39, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(40, 40, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(41, 41, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(42, 42, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(43, 43, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(44, 44, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(45, 45, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(46, 46, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(47, 47, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(48, 48, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(49, 49, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(50, 50, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(51, 51, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(52, 52, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(53, 53, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(54, 54, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(55, 55, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(56, 56, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(57, 57, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(58, 58, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(59, 59, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(60, 60, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(61, 61, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(62, 62, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(63, 63, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(64, 64, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(65, 65, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(66, 66, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(67, 67, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(68, 68, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(69, 69, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(70, 70, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(71, 71, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(72, 72, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(73, 73, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(74, 74, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(75, 75, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(76, 76, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(77, 77, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(78, 78, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(79, 79, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(80, 80, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(81, 81, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(82, 82, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(83, 83, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(84, 84, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(85, 85, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(86, 86, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(87, 87, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(88, 88, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(89, 89, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(90, 90, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(91, 91, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(92, 92, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(93, 93, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(94, 94, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(95, 95, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(96, 96, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(97, 97, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(98, 98, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(99, 99, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(100, 100, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(101, 101, -1, 2, '1000.00', '200.00', '', '034954', 0, 0, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 0),
(102, 102, 2, 2, '1000.00', '200.00', '2', '030', 30, 1, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 1),
(103, 102, 2, 3, '80.00', '20.00', '2', '030', 30, 1, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 1),
(104, 102, 2, 5, '80.00', '20.00', '2', '030', 30, 1, '2024-05-23 10:36:36', 'JANINA', '2024-05-23 10:36:36', 'JANINA', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `asb_availability_x_customer`
--

CREATE TABLE `asb_availability_x_customer` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '-1',
  `asb_availability_id` int(11) NOT NULL,
  `ext_order_nr` char(11) NOT NULL DEFAULT '',
  `double_wire_nr` char(11) NOT NULL DEFAULT '',
  `switching_nr` char(50) NOT NULL DEFAULT '',
  `line_design_dtag` char(50) NOT NULL DEFAULT '',
  `isConnect` tinyint(1) NOT NULL DEFAULT '0',
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` char(50) NOT NULL DEFAULT '',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` char(50) NOT NULL DEFAULT '',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(1, 'Bundesbank', 'MARKDEF1100', '2024-05-24 16:07:01', 'JANINA', '2024-05-24 16:07:01', 'JANINA', 0),
(2, 'Postbank Ndl der Deutsche Bank', 'PBNKDEFFXXX', '2024-05-24 16:10:13', 'JANINA', '2024-05-24 16:10:13', 'JANINA', 0),
(3, 'OLINDA Zweigniederlassung Deutschland', 'QNTODEB2XXX', '2024-05-24 16:10:13', 'JANINA', '2024-05-24 16:10:13', 'JANINA', 0),
(4, 'Revolut Bank, Zweigniederlassung Deutschland', 'REVODEB2XXX', '2024-05-24 16:10:13', 'JANINA', '2024-05-24 16:10:13', 'JANINA', 0),
(5, 'Treezor, Berlin', 'TRZODEB2XXX', '2024-05-24 16:10:13', 'JANINA', '2024-05-24 16:10:13', 'JANINA', 0),
(6, 'Klarna Bank German Branch', 'KLRNDEBEXXX', '2024-05-24 16:10:13', 'JANINA', '2024-05-24 16:10:13', 'JANINA', 0),
(7, 'Aareal Bank', 'AARBDE5W100', '2024-05-24 16:10:13', 'JANINA', '2024-05-24 16:10:13', 'JANINA', 0),
(8, 'Noelse Pay', 'AFOPDEB2XXX', '2024-05-24 16:10:13', 'JANINA', '2024-05-24 16:10:13', 'JANINA', 0),
(9, 'Financiere des Paiements Electroniques NL Deutschland', 'FPEGDEB2XXX', '2024-05-24 16:10:13', 'JANINA', '2024-05-24 16:10:13', 'JANINA', 0),
(10, 'N26 Bank', 'NTSBDEB1XXX', '2024-05-24 16:10:13', 'JANINA', '2024-05-24 16:10:13', 'JANINA', 0),
(11, 'Trade Republic Bank', 'TRBKDEBBXXX', '2024-05-24 16:13:21', 'JANINA', '2024-05-24 16:13:21', 'JANINA', 0),
(12, 'Swan Zweigniederlassung Deutschland', 'SWNBDEBBXXX', '2024-05-24 16:13:21', 'JANINA', '2024-05-24 16:13:21', 'JANINA', 0),
(13, 'Swan Zweigniederlassung Deutschland (Geschäftsfeld)', 'SWNBDEBBXXX', '2024-05-24 16:13:21', 'JANINA', '2024-05-24 16:13:21', 'JANINA', 0),
(14, 'Holvi Payment Services Zweigniederlassung Deutschland', 'HOLVDEB1XXX', '2024-05-24 16:13:21', 'JANINA', '2024-05-24 16:13:21', 'JANINA', 0),
(15, 'Finom Payments Zweigniederlassung Deutschland', 'FNOMDEB2XXX', '2024-05-24 16:13:21', 'JANINA', '2024-05-24 16:13:21', 'JANINA', 0),
(16, 'Adyen, German Branch', 'ADYBDEB2XXX', '2024-05-24 16:13:21', 'JANINA', '2024-05-24 16:13:21', 'JANINA', 0),
(17, 'BHF-BANK', 'BHFBDEFF100', '2024-05-24 16:13:21', 'JANINA', '2024-05-24 16:13:21', 'JANINA', 0),
(18, 'Bank für Sozialwirtschaft', 'BFSWDE33BER', '2024-05-24 16:13:21', 'JANINA', '2024-05-24 16:13:21', 'JANINA', 0),
(19, 'UniCredit Bank - HypoVereinsbank', 'HYVEDEMM488', '2024-05-24 16:16:48', 'JANINA', '2024-05-24 16:16:48', 'JANINA', 0),
(20, 'Berlin Hyp', 'BHYPDEB2XXX', '2024-05-24 16:16:48', 'JANINA', '2024-05-24 16:16:48', 'JANINA', 0),
(21, 'ABK Allgemeine Beamten Bank', 'ABKBDEB1XXX', '2024-05-24 16:16:48', 'JANINA', '2024-05-24 16:16:48', 'JANINA', 0),
(22, 'M.M. Warburg & Co (vormals Bankhaus Löbbecke)', 'LOEBDEBBXXX', '2024-05-24 16:16:48', 'JANINA', '2024-05-24 16:16:48', 'JANINA', 0),
(23, 'North Channel Bank', 'GENODEF1OGK', '2024-05-24 16:16:48', 'JANINA', '2024-05-24 16:16:48', 'JANINA', 0),
(24, 'Eurocity Bank', 'DLGHDEB1XXX', '2024-05-24 16:16:48', 'JANINA', '2024-05-24 16:16:48', 'JANINA', 0),
(25, 'Santander Consumer Bank', 'SCFBDE33XXX', '2024-05-24 16:16:48', 'JANINA', '2024-05-24 16:16:48', 'JANINA', 0),
(26, '	Commerzbank', 'COBADEBBXXX', '2024-05-24 16:16:48', 'JANINA', '2024-05-24 16:16:48', 'JANINA', 0),
(27, 'Landesbank Berlin - Berliner Sparkasse', 'BELADEBEXXX', '2024-05-24 16:20:39', 'JANINA', '2024-05-24 16:20:39', 'JANINA', 0),
(28, 'S-Kreditpartner, Berlin', 'SKPADEB1XXX', '2024-05-24 16:20:39', 'JANINA', '2024-05-24 16:20:39', 'JANINA', 0),
(29, 'LBS Ost Berlin', 'LBSODEB1BLN', '2024-05-24 16:20:39', 'JANINA', '2024-05-24 16:20:39', 'JANINA', 0),
(30, 'DekaBank', 'DGZFDEFFBER', '2024-05-24 16:20:39', 'JANINA', '2024-05-24 16:20:39', 'JANINA', 0),
(31, 'Pax-Bank', 'GENODED1PA6', '2024-05-24 16:20:39', 'JANINA', '2024-05-24 16:20:39', 'JANINA', 0),
(32, 'Bank für Kirche und Diakonie - KD-Bank Gf Sonder-BLZ', 'GENODED1KDB', '2024-05-24 16:20:39', 'JANINA', '2024-05-24 16:20:39', 'JANINA', 0),
(33, 'Deutsche Bank', 'DEUTDEBBXXX', '2024-05-24 16:20:39', 'JANINA', '2024-05-24 16:20:39', 'JANINA', 0),
(34, 'Deutsche Bank', 'DEUTDEDBBER', '2024-05-24 16:20:39', 'JANINA', '2024-05-24 16:20:39', 'JANINA', 0),
(35, 'Deutsche Bank', 'DEUTDEBB101', '2024-05-24 16:20:39', 'JANINA', '2024-05-24 16:20:39', 'JANINA', 0),
(36, 'Postbank/DSL Ndl der Deutsche Bank', 'DEUTDEDBP30', '2024-05-24 16:20:39', 'JANINA', '2024-05-24 16:20:39', 'JANINA', 0),
(37, 'Postbank/DSL Ndl der Deutsche Bank', 'DEUTDEBBP31', '2024-05-24 16:20:39', 'JANINA', '2024-05-24 16:20:39', 'JANINA', 0),
(38, 'Postbank/DSL Ndl der Deutsche Bank', 'DEUTDEBBP32', '2024-05-24 16:20:39', 'JANINA', '2024-05-24 16:20:39', 'JANINA', 0),
(39, 'Deutsche Bank', 'DEUTDEDB110', '2024-05-24 16:20:39', 'JANINA', '2024-05-24 16:20:39', 'JANINA', 0),
(40, '360 TREASURY SYSTEMS AG', 'TRSYDEFF', '2024-05-24 16:35:38', 'JANINA', '2024-05-24 16:35:38', 'JANINA', 0),
(41, 'AAREAL BANK AG', 'AARBDE5W100', '2024-05-24 16:35:38', 'JANINA', '2024-05-24 16:35:38', 'JANINA', 0),
(42, 'AAREAL BANK AG', 'AARBDE5W360', '2024-05-24 16:35:38', 'JANINA', '2024-05-24 16:35:38', 'JANINA', 0),
(43, 'AAREAL BANK AG', 'AARBDE5W860', '2024-05-24 16:35:38', 'JANINA', '2024-05-24 16:35:38', 'JANINA', 0),
(44, 'AAREAL BANK AG', 'AARBDE5W', '2024-05-24 16:35:38', 'JANINA', '2024-05-24 16:35:38', 'JANINA', 0),
(45, 'AAREAL BANK AG', 'AARBDE5WCLE', '2024-05-24 16:35:38', 'JANINA', '2024-05-24 16:35:38', 'JANINA', 0),
(46, 'AAREAL BANK AG', 'AARBDE5WMTG', '2024-05-24 16:35:38', 'JANINA', '2024-05-24 16:35:38', 'JANINA', 0),
(47, 'AAREAL BANK AG', 'AARBDE5W500', '2024-05-24 16:35:38', 'JANINA', '2024-05-24 16:35:38', 'JANINA', 0),
(48, 'AAREAL BANK AG', 'AARBDE5W200', '2024-05-24 16:35:38', 'JANINA', '2024-05-24 16:35:38', 'JANINA', 0),
(49, 'AAREAL BANK AG', 'AARBDE5W250', '2024-05-24 16:35:38', 'JANINA', '2024-05-24 16:35:38', 'JANINA', 0),
(50, 'AAREAL BANK AG', 'AARBDE5W550', '2024-05-24 16:35:38', 'JANINA', '2024-05-24 16:35:38', 'JANINA', 0),
(51, 'AAREAL BANK AG', 'AARBDE5W700', '2024-05-24 16:35:38', 'JANINA', '2024-05-24 16:35:38', 'JANINA', 0),
(52, 'AAREAL BANK AG', 'AARBDE5W600', '2024-05-24 16:35:38', 'JANINA', '2024-05-24 16:35:38', 'JANINA', 0),
(53, 'AAREAL BANK AG', 'AARBDE5WDOM', '2024-05-24 16:35:38', 'JANINA', '2024-05-24 16:35:38', 'JANINA', 0),
(54, 'AAREAL BANK AG (FORMERLY WESTDEUTSCHE IMMOBILIENBANK AG)', 'IMMODE5M', '2024-05-24 16:35:38', 'JANINA', '2024-05-24 16:35:38', 'JANINA', 0),
(55, 'ABCBANK GMBH', 'WWBADE3A', '2024-05-24 16:35:38', 'JANINA', '2024-05-24 16:35:38', 'JANINA', 0),
(56, 'ABCBANK GMBH', 'WWBADE3ADOT', '2024-05-24 16:35:38', 'JANINA', '2024-05-24 16:35:38', 'JANINA', 0),
(57, 'ABK ALLGEMEINE BEAMTEN BANK AG', 'ABKBDEBB', '2024-05-24 16:35:38', 'JANINA', '2024-05-24 16:35:38', 'JANINA', 0),
(58, 'ABK-SYSTEME GESELLSCHAFT FUER AUSBILDUNG, BERATUNG UND KOMMUNIKATIONSSYSTEME M.B.H.', 'ABKSDEFF', '2024-05-24 16:35:38', 'JANINA', '2024-05-24 16:35:38', 'JANINA', 0),
(59, 'ABN AMRO BANK N.V. FRANKFURT BRANCH', 'FTSBDEFA', '2024-05-24 16:35:38', 'JANINA', '2024-05-24 16:35:38', 'JANINA', 0),
(60, 'ABN AMRO BANK N.V. FRANKFURT BRANCH', 'FTSBDEFASFI', '2024-05-24 16:35:38', 'JANINA', '2024-05-24 16:35:38', 'JANINA', 0),
(61, 'ABN AMRO BANK N.V. FRANKFURT BRANCH', 'DELBDE33', '2024-05-24 16:35:38', 'JANINA', '2024-05-24 16:35:38', 'JANINA', 0),
(62, 'ACCURIDE WHEELS SOLINGEN GMBH', 'AWSGDE3S', '2024-05-24 16:35:38', 'JANINA', '2024-05-24 16:35:38', 'JANINA', 0),
(63, 'ADEUS AKTIENREGISTER-SERVICE-GMBH', 'ADEUDEMM', '2024-05-24 16:35:38', 'JANINA', '2024-05-24 16:35:38', 'JANINA', 0),
(64, 'ADIDAS AG', 'ADDSDE77', '2024-05-24 16:35:38', 'JANINA', '2024-05-24 16:35:38', 'JANINA', 0),
(65, 'ADYEN N.V. - GERMAN BRANCH', 'ADYBDEB2', '2024-05-24 16:35:38', 'JANINA', '2024-05-24 16:35:38', 'JANINA', 0),
(66, 'AFONE PAIEMENT', 'AFOPDEB2', '2024-05-24 16:35:38', 'JANINA', '2024-05-24 16:35:38', 'JANINA', 0),
(67, 'AFONE PAIEMENT', 'AFPNDEB2', '2024-05-24 16:35:38', 'JANINA', '2024-05-24 16:35:38', 'JANINA', 0),
(68, 'AGRARHANDEL SUN GMBH', 'AGSMDE82PRM', '2024-05-24 16:35:38', 'JANINA', '2024-05-24 16:35:38', 'JANINA', 0),
(69, 'AGRARHANDEL SUN GMBH', 'AGSMDE82', '2024-05-24 16:35:38', 'JANINA', '2024-05-24 16:35:38', 'JANINA', 0),
(70, 'AGRICULTURAL BANK OF CHINA FRANKFURT BRANCH', 'ABOCDEFF', '2024-05-24 16:35:38', 'JANINA', '2024-05-24 16:35:38', 'JANINA', 0),
(71, 'AIFINYO PAYMENTS GMBH', 'AIPGDE82', '2024-05-24 16:35:38', 'JANINA', '2024-05-24 16:35:38', 'JANINA', 0),
(72, 'AION BANK GERMAN BRANCH NV', 'BMPBDEF2', '2024-05-24 16:35:38', 'JANINA', '2024-05-24 16:35:38', 'JANINA', 0),
(73, 'AIRBUS BANK GMBH', 'AGBMDEMME22', '2024-05-24 16:35:38', 'JANINA', '2024-05-24 16:35:38', 'JANINA', 0),
(74, 'AIRBUS BANK GMBH', 'AGBMDEMME23', '2024-05-24 16:35:38', 'JANINA', '2024-05-24 16:35:38', 'JANINA', 0),
(75, 'AIRBUS BANK GMBH', 'AGBMDEMME25', '2024-05-24 16:35:38', 'JANINA', '2024-05-24 16:35:38', 'JANINA', 0),
(76, 'AIRBUS BANK GMBH', 'AGBMDEMME24', '2024-05-24 16:35:38', 'JANINA', '2024-05-24 16:35:38', 'JANINA', 0),
(77, 'AIRBUS BANK GMBH', 'AGBMDEMMTGT', '2024-05-24 16:35:38', 'JANINA', '2024-05-24 16:35:38', 'JANINA', 0),
(78, 'AIRBUS BANK GMBH', 'AGBMDEMM', '2024-05-24 16:35:38', 'JANINA', '2024-05-24 16:35:38', 'JANINA', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `commissioned_house_types`
--

CREATE TABLE `commissioned_house_types` (
  `id` int(11) NOT NULL,
  `name` char(150) NOT NULL DEFAULT '',
  `note` char(150) NOT NULL DEFAULT '',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` char(50) NOT NULL DEFAULT '',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` char(50) NOT NULL DEFAULT '',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `commissioned_house_types`
--

INSERT INTO `commissioned_house_types` (`id`, `name`, `note`, `price`, `createDate`, `createUser`, `updateDate`, `updateUser`, `isDeleted`) VALUES
(1, '... bitte auswählen ...', '', '0.00', '2024-04-24 09:42:36', 'JANINA', '2024-04-24 09:42:36', 'JANINA', 0),
(2, 'Vollförderung', 'kostenloser Hausanschluss nur durch Eigenausbau Brehna.net/Bund/Land', '0.00', '2024-04-24 09:42:36', 'JANINA', '2024-04-24 09:42:36', 'JANINA', 0),
(3, 'Teilförderung', 'vergünstigter Anschluss bei vorhandenem Leerrohrsystem', '350.00', '2024-04-24 09:42:36', 'JANINA', '2024-04-24 09:42:36', 'JANINA', 0),
(4, 'Standard', 'kostenpflichtiger Anschluss Ausbaugebiet', '750.00', '2024-04-24 09:42:36', 'JANINA', '2024-04-24 09:42:36', 'JANINA', 0),
(5, 'Plus', 'kostenpflichtiger Anschluss Ausbaugebiet bei Entfernung von +30m', '1500.00', '2024-04-24 09:42:36', 'JANINA', '2024-04-24 09:42:36', 'JANINA', 0),
(6, 'je Meter', 'Kosten je zusätzlicher Meter Tiefbau auf privatem Grund (€/lfdm)', '65.00', '2024-04-24 09:42:36', 'JANINA', '2024-04-24 09:42:36', 'JANINA', 0),
(7, 'je Stunde', 'Kosten je zusätzliche Arbeitsstunde für Kabelinstallation Innenbereich', '75.00', '2024-04-24 09:42:36', 'JANINA', '2024-04-24 09:42:36', 'JANINA', 0),
(8, 'zusätzlich', '', '0.00', '2024-04-24 09:42:36', 'JANINA', '2024-04-24 09:42:36', 'JANINA', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `connection_data_holder`
--

CREATE TABLE `connection_data_holder` (
  `id` int(11) NOT NULL,
  `address_id` int(11) NOT NULL DEFAULT '-1',
  `name_company` char(100) NOT NULL DEFAULT '',
  `fName` char(100) NOT NULL DEFAULT '',
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` char(50) NOT NULL DEFAULT '',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` char(50) NOT NULL DEFAULT '',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `connection_point_types`
--

CREATE TABLE `connection_point_types` (
  `id` int(11) NOT NULL,
  `name` char(150) NOT NULL DEFAULT '',
  `shortName` char(5) NOT NULL DEFAULT '',
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` char(50) NOT NULL DEFAULT '',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` char(50) NOT NULL DEFAULT '',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `connection_point_types`
--

INSERT INTO `connection_point_types` (`id`, `name`, `shortName`, `createDate`, `createUser`, `updateDate`, `updateUser`, `isDeleted`) VALUES
(1, '... bitte auswählen ...', '', '2024-04-24 09:24:06', 'JANINA', '2024-04-24 09:24:06', 'JANINA', 0),
(2, 'Einfamilienhaus', 'EFH', '2024-04-24 09:24:06', 'JANINA', '2024-04-24 09:24:06', 'JANINA', 0),
(3, 'Doppelhaushälfte', 'DHH', '2024-04-24 09:24:06', 'JANINA', '2024-04-24 09:24:06', 'JANINA', 0),
(4, 'Reihenhaus', 'RH', '2024-04-24 09:24:06', 'JANINA', '2024-04-24 09:24:06', 'JANINA', 0),
(5, 'Mehrfamilienhaus', 'MFH', '2024-04-24 09:24:06', 'JANINA', '2024-04-24 09:24:06', 'JANINA', 0),
(6, 'Neubau', '', '2024-04-24 09:24:06', 'JANINA', '2024-04-24 09:24:06', 'JANINA', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `contract`
--

CREATE TABLE `contract` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '-1',
  `postAddress_id` int(11) NOT NULL DEFAULT '-1',
  `techAddress_id` int(11) NOT NULL DEFAULT '-1',
  `contractType_id` int(11) NOT NULL DEFAULT '2',
  `tariff_id` int(11) NOT NULL DEFAULT '-1',
  `contractTerm_id` int(11) NOT NULL DEFAULT '2',
  `debator_id` int(11) NOT NULL DEFAULT '-1',
  `state_id` int(11) NOT NULL DEFAULT '2',
  `contractNr` char(50) NOT NULL DEFAULT '',
  `startDate` date NOT NULL DEFAULT '1000-01-01',
  `endDate` date NOT NULL DEFAULT '1000-01-01',
  `desiredDate` date NOT NULL DEFAULT '1000-01-01',
  `receipt_termination` date NOT NULL DEFAULT '1000-01-01',
  `isInvoicingByMail` tinyint(1) NOT NULL DEFAULT '0',
  `tae` char(50) NOT NULL DEFAULT '',
  `onceTotalPrice` decimal(10,2) NOT NULL DEFAULT '0.00',
  `monthlyTotalPrice` decimal(10,2) NOT NULL DEFAULT '0.00',
  `isConfirmAgb` tinyint(1) NOT NULL DEFAULT '1',
  `isConfirmSafeData` tinyint(1) NOT NULL DEFAULT '1',
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` char(50) NOT NULL DEFAULT '',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` char(50) NOT NULL DEFAULT '',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `contract_categories`
--

CREATE TABLE `contract_categories` (
  `id` int(11) NOT NULL,
  `name` char(150) NOT NULL DEFAULT '',
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` char(50) NOT NULL DEFAULT '',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` char(50) NOT NULL DEFAULT '',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `contract_categories`
--

INSERT INTO `contract_categories` (`id`, `name`, `createDate`, `createUser`, `updateDate`, `updateUser`, `isDeleted`) VALUES
(1, 'Neuanschluss', '2024-04-11 16:05:27', 'JANINA', '2024-04-11 16:05:27', 'JANINA', 0),
(2, 'Anbieterwechsel', '2024-04-11 16:05:27', 'JANINA', '2024-04-11 16:05:27', 'JANINA', 0),
(3, 'Tarifänderung', '2024-04-11 16:05:27', 'JANINA', '2024-04-11 16:05:27', 'JANINA', 0),
(4, 'Umzug', '2024-04-11 16:05:27', 'JANINA', '2024-04-11 16:05:27', 'JANINA', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `contract_state`
--

CREATE TABLE `contract_state` (
  `id` int(11) NOT NULL,
  `name` char(100) NOT NULL DEFAULT '',
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` char(50) NOT NULL DEFAULT '',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` char(50) NOT NULL DEFAULT '',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `contract_state`
--

INSERT INTO `contract_state` (`id`, `name`, `createDate`, `createUser`, `updateDate`, `updateUser`, `isDeleted`) VALUES
(1, '... bitte auswählen ...', '2024-04-08 09:09:53', 'JANINA', '2024-04-08 09:09:53', 'JANINA', 0),
(2, 'neu', '2024-04-08 09:09:53', 'JANINA', '2024-04-08 09:09:53', 'JANINA', 0),
(3, 'in Bearbeitung', '2024-04-08 09:09:53', 'JANINA', '2024-04-08 09:09:53', 'JANINA', 0),
(4, 'aktiv', '2024-04-08 09:09:53', 'JANINA', '2024-04-08 09:09:53', 'JANINA', 0),
(5, 'inaktiv', '2024-04-08 09:09:53', 'JANINA', '2024-04-08 09:09:53', 'JANINA', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `contract_term`
--

CREATE TABLE `contract_term` (
  `id` int(11) NOT NULL,
  `duration` int(2) NOT NULL DEFAULT '0',
  `term_option` char(100) NOT NULL DEFAULT '',
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` char(50) NOT NULL DEFAULT '',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` char(50) NOT NULL DEFAULT '',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `contract_term`
--

INSERT INTO `contract_term` (`id`, `duration`, `term_option`, `createDate`, `createUser`, `updateDate`, `updateUser`, `isDeleted`) VALUES
(1, 0, '', '2024-04-08 09:10:56', 'JANINA', '2024-04-08 09:10:56', 'JANINA', 0),
(2, 12, '', '2024-04-08 09:10:56', 'JANINA', '2024-04-08 09:10:56', 'JANINA', 0),
(3, 24, '(70,00 € Gutschrift Hardware)', '2024-04-08 09:10:56', 'JANINA', '2024-04-08 09:10:56', 'JANINA', 0),
(4, 36, '', '2024-04-08 09:10:56', 'JANINA', '2024-04-08 09:10:56', 'JANINA', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `contract_type`
--

CREATE TABLE `contract_type` (
  `id` int(11) NOT NULL,
  `name` char(150) NOT NULL DEFAULT '',
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` char(50) NOT NULL DEFAULT '',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` char(50) NOT NULL DEFAULT '',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `contract_type`
--

INSERT INTO `contract_type` (`id`, `name`, `createDate`, `createUser`, `updateDate`, `updateUser`, `isDeleted`) VALUES
(1, '... bitte auswählen ...', '2024-04-08 09:11:26', 'JANINA', '2024-04-08 09:11:26', 'JANINA', 0),
(2, 'Vertrag', '2024-04-08 09:11:26', 'JANINA', '2024-04-08 09:11:26', 'JANINA', 0),
(3, 'Änderung', '2024-04-08 09:11:26', 'JANINA', '2024-04-08 09:11:26', 'JANINA', 0),
(4, 'Vertragsverlängerung', '2024-04-08 09:11:26', 'JANINA', '2024-04-08 09:11:26', 'JANINA', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `contract_x_hardware`
--

CREATE TABLE `contract_x_hardware` (
  `id` int(11) NOT NULL,
  `contract_id` int(11) NOT NULL DEFAULT '-1',
  `hardware_id` int(11) NOT NULL DEFAULT '-1',
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` char(50) NOT NULL DEFAULT '''''',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` char(50) NOT NULL DEFAULT '''''',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `contract_x_tariff_option`
--

CREATE TABLE `contract_x_tariff_option` (
  `id` int(11) NOT NULL,
  `contract_id` int(11) NOT NULL DEFAULT '-1',
  `tariff_option_id` int(11) NOT NULL DEFAULT '-1',
  `cnt` int(11) NOT NULL DEFAULT '0',
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` char(50) NOT NULL DEFAULT '',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` char(50) NOT NULL DEFAULT '',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `name` char(150) NOT NULL DEFAULT '',
  `code` char(5) NOT NULL DEFAULT '',
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` char(50) NOT NULL DEFAULT '',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` char(50) NOT NULL DEFAULT '',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `country`
--

INSERT INTO `country` (`id`, `name`, `code`, `createDate`, `createUser`, `updateDate`, `updateUser`, `isDeleted`) VALUES
(1, '... bitte auswählen ...', '', '2024-03-14 21:14:52', 'JANINA', '2024-03-14 21:14:52', 'JANINA', 0),
(2, 'Interne Telefonie', '', '2024-03-14 21:14:52', 'JANINA', '2024-03-14 21:14:52', 'JANINA', 0),
(3, 'Deutschland', 'DE', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(4, 'Afghanistan', 'AFG', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(5, 'Ägypten', 'EGY', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(6, 'Albanien', 'ALB', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(7, 'Algerien', 'DZA', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(8, 'Amerikanisch-Samoa', 'ASM', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(9, 'Amerikanische Jungferninseln', 'VIR', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(10, 'Andorra', 'AND', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(11, 'Angola', 'AGO', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(12, 'Anguilla', 'AIA', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(13, 'Antarktis', 'AQ', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(14, 'Antigua und Barbuda', 'ATG', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(15, 'Äquatorialguniea', 'GNQ', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(16, 'Argetinien', 'ARG', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(17, 'Armenien', 'ARM', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(18, 'Aruba', 'ABW', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(19, 'Ascension', 'AC', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(20, 'Aserbaidschan', 'AZ', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(21, 'Äthopien', 'ETH', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(22, 'Australien', 'AU', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(23, 'Bahamas', 'BHS', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(24, 'Bahrain', 'BHR', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(25, 'Bangladesch', 'BGD', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(26, 'Barbados', 'BRB', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(27, 'Belgien', 'BEL', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(28, 'Belize', 'BLZ', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(29, 'Benin', 'BEN', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(30, 'Bermuda', 'BMU', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(31, 'Bhutan', 'BTN', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(32, 'Bolivien', 'BOL', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(33, 'Bosnien und Herzegowina', 'BIH', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(34, 'Botsuana', 'BWA', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(35, 'Brasilien', 'BRA', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(36, 'Britische Jungferninseln', 'VGB', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(37, 'Brunei', 'BRN', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(38, 'Bulgarien', 'BGR', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(39, 'Burkina Faso', 'BFA', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(40, 'Burundi', 'BDI', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(41, 'Chile', 'CHL', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(42, 'China', 'CHN', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(43, 'Cook Inseln', 'COK', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(44, 'Costa Rica', 'CRI', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(45, 'Dänemark', 'DNK', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(46, 'Demokratische Republik Kongo', 'COD', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(47, 'Demokratische Volksrepublik Korea', 'PRK', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(48, 'Diego Garcia', 'DG', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(49, 'Dominica', 'DMA', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(50, 'Dominikanische Republik', 'DOM', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(51, 'Dschibuti', 'DJI', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(52, 'Ecuador', 'ECU', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(53, 'El Salvador', 'SLV', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(54, 'Elfenbeinküste', 'CIV', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(55, 'Eritrea', 'ERI', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(56, 'Estland', 'EST', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(57, 'Falkland-Inseln', 'FLK', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(58, 'Färöer', 'FRO', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(59, 'Finnland', 'FIN', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(60, 'Frankreich', 'FRA', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(61, 'Französich Guyana', 'GF', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(62, 'Französisch Polynesien', 'PYF', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(63, 'Gabun', 'GAB', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(64, 'Gambia', 'GMB', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(65, 'Georgien', 'GEO', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(66, 'Ghana', 'GHA', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(67, 'Gibraltar', 'GIB', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(68, 'Grenada', 'GRD', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(69, 'Griechenland', 'GRC', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(70, 'Grönland', 'GRL', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(71, 'Großbritanien', 'GBR', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(72, 'Nordirland', 'GB', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(73, 'Guadeloupe', 'GP', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(74, 'Guam', 'GUM', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(75, 'Guatemala', 'GTM', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(76, 'Guinea', 'GIN', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(77, 'Guniea-Bissau', 'GNB', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(78, 'Guyana', 'GUY', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(79, 'Haiti', 'HTI', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(80, 'Honduras', 'HND', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(81, 'Hongkong', 'HKG', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(82, 'Indien', 'IND', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(83, 'Indonesien', 'IDN', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(84, 'International', '', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(85, 'Irak', 'IRQ', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(86, 'Irland', 'IRL', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(87, 'Islamische Republik Iran', 'IRN', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(88, 'Island', 'ISL', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(89, 'Israel', 'ISR', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(90, 'Italien', 'ITA', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(91, 'Jamaika', 'JAM', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(92, 'Japan', 'JPN', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(93, 'Jordanien', 'JOR', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(94, 'Kaimainseln', 'GG', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(95, 'Kambodscha', 'KHM', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(96, 'Kamerun', 'CMR', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(97, 'Kanada', 'CAN', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(98, 'Kap Verde', 'CPV', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(99, 'Katar', 'QAT', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(100, 'Kenia', 'KEN', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(101, 'Kirgisien', 'KGZ', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(102, 'Kiribati', 'KIR', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(103, 'Kolumbien', 'COL', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(104, 'Königreich Saudi-Arabien', 'SAU', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(105, 'Kroatien', 'HRV', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(106, 'Kuba', 'CUB', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(107, 'Kuwait', 'KWT', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(108, 'Laos', 'LAO', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(109, 'Lesotho', 'LSO', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(110, 'Lettland', 'LVA', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(111, 'Libanon', 'LBN', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(112, 'Liberia', 'LBR', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(113, 'Libyen', 'LBY', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(114, 'Liechtenstein', 'LIE', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(115, 'Litauen', 'LTU', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(116, 'Luxemburg', 'LUX', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(117, 'Macao', 'MAC', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(118, 'Madagaskar', 'MDG', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(119, 'Malawi', 'MWI', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(120, 'Malaysia', 'MYS', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(121, 'Malediven', 'MDV', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(122, 'Mali', 'MLI', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(123, 'Malta', 'MLT', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(124, 'Marokko', 'MAR', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(125, 'Marshallinseln', 'MHL', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(126, 'Martinique', 'MTQ', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(127, 'Mauretanien', 'MRT', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(128, 'Mauritius', 'MUS', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(129, 'Mexiko', 'MEX', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(130, 'Mikronesien', 'FSM', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(131, 'Moldawien', 'MDA', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(132, 'Monaco', 'MCO', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(133, 'Mongolei', 'MNG', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(134, 'Montenegro', 'MNE', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(135, 'Montserrat', 'MSR', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(136, 'Mosambik', 'MOZ', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(137, 'Myanmar (Burma)', 'MMR', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(138, 'Namibia', 'NAM', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(139, 'Nauru', 'NRU', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(140, 'Nepal', 'NPL', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(141, 'Neu Caledonia', 'NCL', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(142, 'Neuseeland', 'NZL', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(143, 'Nicaragua', 'NIC', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(144, 'Niederlande', 'NLD', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(145, 'Niederländische Antiellen', 'AN', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(146, 'Niger', 'NER', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(147, 'Nigeria', 'NGA', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(148, 'Niue', 'NIU', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(149, 'Nördliche Marianen-Inseln', 'MP', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(150, 'Norfolkinseln', 'NFK', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(151, 'Norwegen', 'NOR', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(152, 'Oman', 'OMN', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(153, 'Ost Timur', 'TLS', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(154, 'Österreich', 'AUT', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(155, 'Pakistan', 'PAK', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(156, 'Palästina', 'PSE', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(157, 'Palau', 'PLW', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(158, 'Panama', 'PAN', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(159, 'Papua-Neiguinea', 'PNG', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(160, 'Paraguay', 'PRY', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(161, 'Peru', 'PER', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(162, 'Philippinen', 'PHL', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(163, 'Polen', 'POL', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(164, 'Portugal', 'PRT', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(165, 'Puerto Rico', 'PRI', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(166, 'Republik Fidschi-Inseln', 'FJ', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(167, 'Republik Jemen', 'YEM', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(168, 'Republik Kasachstan', 'KAZ', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(169, 'Republik Kongo', 'COD', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(170, 'Republik Korea (Südkorea)', 'KOR', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(171, 'Republik Mazedonien', 'MKD', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(172, 'Republik Serbien', 'SRB', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(173, 'Réunion', 'RE', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(174, 'Ruanda', 'RWA', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(175, 'Rumänien', 'ROU', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(176, 'Russische Föderation', 'RUS', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(177, 'Saint-Pierre und Miquelon', 'SPM', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(178, 'Salomoninseln', 'SLB', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(179, 'Sambia', 'ZMB', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(180, 'San Marino', 'SMR', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(181, 'São Tomé und Príncipe', 'STP', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(182, 'Satellitenverbindung', '', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(183, 'Schweden', 'SWE', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(184, 'Schweiz', 'CHE', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(185, 'Senegal', 'SEN', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(186, 'Seychellen', 'SYC', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(187, 'Sierra Leone', 'SLE', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(188, 'Simbabwe', 'ZWE', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(189, 'Singapur', 'SGB', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(190, 'Sint Maarten', 'SX', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(191, 'Slowakei', 'SVK', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(192, 'Slowenien', 'SVN', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(193, 'Somalia', 'SOM', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(194, 'Spanien', 'ESP', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(195, 'Sri Lanka', 'LKA', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(196, 'St. Helena', 'SH', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(197, 'St. Kitts und Nevis', 'KNA', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(198, 'St. Luca', 'LCA', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(199, 'St. Vincent und Grenadinen', 'VCT', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(200, 'Staat der Vatikanstadt', 'VAT', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(201, 'Südafrika', 'ZAF', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(202, 'Sudan', 'SDN', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(203, 'Südsudan', 'SSD', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(204, 'Surinam', 'SUR', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(205, 'Swasiland', 'SWZ', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(206, 'Syrien', 'SYR', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(207, 'Tadshikistan', 'TJK', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(208, 'Taiwan', 'TWN', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(209, 'Tansania', 'TZA', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(210, 'Thailand', 'THA', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(211, 'Togo', 'TGO', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(212, 'Tokelau', 'TKL', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(213, 'Tonga', 'TON', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(214, 'Trinidad und Tobago', 'TTO', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(215, 'Tschad', 'TCD', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(216, 'Tschechien', 'CZE', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(217, 'Tunesien', 'TUN', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(218, 'Turkei', 'TUR', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(219, 'Turkmenistan', 'TKM', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(220, 'Turks- und Caicosinseln', 'TCA', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(221, 'Tuvalu', 'TUV', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(222, 'Uganda', 'UGA', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(223, 'Ukraine', 'UKR', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(224, 'Unabhängiger Staat Samoa', 'WSM', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(225, 'Ungarn', 'HUN', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(226, 'Union der Komoren', 'COM', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(227, 'Universal Personal Telecommunications Number (UPTN)', '', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(228, 'Uruguay', 'URY', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(229, 'Uzbekistan', 'UZB', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(230, 'Vanuatu', 'VUT', '2024-03-14 21:14:55', 'JANINA', '2024-03-14 21:14:55', 'JANINA', 0),
(231, 'Venezuela', 'VEN', '2024-03-14 21:14:55', 'JANINA', '2024-03-14 21:14:55', 'JANINA', 0),
(232, 'Vereinigte Arabische Emirate', 'ARE', '2024-03-14 21:14:55', 'JANINA', '2024-03-14 21:14:55', 'JANINA', 0),
(233, 'Vereinigte Staaten von Amerika (USA)', 'USA', '2024-03-14 21:14:55', 'JANINA', '2024-03-14 21:14:55', 'JANINA', 0),
(234, 'Vietnam', 'VNM', '2024-03-14 21:14:55', 'JANINA', '2024-03-14 21:14:55', 'JANINA', 0),
(235, 'Wallis und Futuna Inseln', 'WF', '2024-03-14 21:14:55', 'JANINA', '2024-03-14 21:14:55', 'JANINA', 0),
(236, 'Weißrussland', 'BLR', '2024-03-14 21:14:55', 'JANINA', '2024-03-14 21:14:55', 'JANINA', 0),
(237, 'Zentralafrikanische Republik', 'CAF', '2024-03-14 21:14:55', 'JANINA', '2024-03-14 21:14:55', 'JANINA', 0),
(238, 'Zypern', 'CYP', '2024-03-14 21:14:55', 'JANINA', '2024-03-14 21:14:55', 'JANINA', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `legal_form_id` int(11) NOT NULL DEFAULT '-1',
  `customerNr` char(100) NOT NULL DEFAULT '',
  `salut` char(10) NOT NULL DEFAULT '',
  `title` char(20) NOT NULL DEFAULT '''''',
  `fName` char(100) NOT NULL DEFAULT '',
  `lName` char(100) NOT NULL DEFAULT '',
  `company` char(100) NOT NULL DEFAULT '',
  `birthDate` date NOT NULL DEFAULT '1000-01-01',
  `taxNr` char(50) NOT NULL DEFAULT '',
  `appartmentNr` char(50) NOT NULL DEFAULT '',
  `phone` char(20) NOT NULL DEFAULT '',
  `mobil` char(20) NOT NULL DEFAULT '',
  `eMail` char(100) NOT NULL DEFAULT '',
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` char(50) NOT NULL DEFAULT '',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` char(50) NOT NULL DEFAULT '',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `customer_class`
--

CREATE TABLE `customer_class` (
  `id` int(11) NOT NULL,
  `name` char(150) NOT NULL DEFAULT '',
  `shortName` char(5) NOT NULL DEFAULT '',
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` char(50) NOT NULL DEFAULT '',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` char(50) NOT NULL DEFAULT '',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `customer_class`
--

INSERT INTO `customer_class` (`id`, `name`, `shortName`, `createDate`, `createUser`, `updateDate`, `updateUser`, `isDeleted`) VALUES
(1, '... bitte auswählen ...', '', '2024-04-18 11:31:39', 'JANINA', '2024-04-18 11:31:39', 'JANINA', 0),
(2, 'Privatkunden', 'PK', '2024-04-18 11:31:39', 'JANINA', '2024-04-18 11:31:39', 'JANINA', 0),
(3, 'Senioren', 'S-PK', '2024-04-18 11:31:39', 'JANINA', '2024-04-18 11:31:39', 'JANINA', 0),
(4, 'Geschäftskunden', 'GK', '2024-04-18 11:31:39', 'JANINA', '2024-04-18 11:31:39', 'JANINA', 0),
(5, 'Business Complete', 'BC-GK', '2024-04-18 11:31:39', 'JANINA', '2024-04-18 11:31:39', 'JANINA', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `customer_connection_requests`
--

CREATE TABLE `customer_connection_requests` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '-1',
  `address_id` int(11) NOT NULL DEFAULT '-1',
  `cxtech_id` int(11) NOT NULL DEFAULT '-1',
  `conKind_id` int(11) NOT NULL DEFAULT '-1',
  `selTech_id` int(11) NOT NULL DEFAULT '-1',
  `rate_id` int(11) NOT NULL DEFAULT '-1',
  `isWishRecall` tinyint(1) NOT NULL DEFAULT '0',
  `recallTermin` char(150) NOT NULL DEFAULT '',
  `isPhone` tinyint(1) NOT NULL DEFAULT '0',
  `isPorting` tinyint(1) NOT NULL DEFAULT '0',
  `careTermin` char(150) NOT NULL DEFAULT '',
  `message` mediumtext NOT NULL,
  `isConfirmSafeData` tinyint(1) NOT NULL DEFAULT '1',
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` char(50) NOT NULL DEFAULT '',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` char(50) NOT NULL DEFAULT '',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `customer_ftth_request`
--

CREATE TABLE `customer_ftth_request` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '-1',
  `post_address_id` int(11) NOT NULL DEFAULT '-1',
  `tech_address_id` int(11) NOT NULL DEFAULT '-1',
  `debator_id` int(11) NOT NULL DEFAULT '-1',
  `con_kind_id` int(11) NOT NULL DEFAULT '-1',
  `selected_tech_id` int(11) NOT NULL DEFAULT '-1',
  `rate_id` int(11) NOT NULL DEFAULT '-1',
  `house_owner_id` int(11) NOT NULL DEFAULT '-1',
  `intro_house_id` int(11) NOT NULL DEFAULT '-1',
  `kind_point_id` int(11) NOT NULL DEFAULT '-1',
  `main_num_id` int(11) NOT NULL DEFAULT '-1',
  `sub_num_id` int(11) NOT NULL DEFAULT '0',
  `cnt_units` int(11) NOT NULL DEFAULT '0',
  `complete_date` char(50) NOT NULL DEFAULT '',
  `intro_else` char(150) NOT NULL DEFAULT '',
  `isAgbConfirm` tinyint(1) NOT NULL DEFAULT '0',
  `isSafeDataConfirm` tinyint(1) NOT NULL DEFAULT '0',
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` char(50) NOT NULL DEFAULT '',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` char(50) NOT NULL DEFAULT '',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `customer_x_technology`
--

CREATE TABLE `customer_x_technology` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '-1',
  `technology_id` int(11) NOT NULL DEFAULT '-1',
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` char(50) NOT NULL DEFAULT '',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` char(50) NOT NULL DEFAULT '',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `dataholder`
--

CREATE TABLE `dataholder` (
  `id` int(11) NOT NULL,
  `address_id` int(11) NOT NULL DEFAULT '-1',
  `fName` char(150) NOT NULL DEFAULT '',
  `lName` char(150) NOT NULL DEFAULT '',
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` char(50) NOT NULL DEFAULT '',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` char(50) NOT NULL DEFAULT '',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `debator`
--

CREATE TABLE `debator` (
  `id` int(11) NOT NULL,
  `address_id` int(11) NOT NULL DEFAULT '-1',
  `country_id` int(11) NOT NULL DEFAULT '-1',
  `bank_id` int(11) NOT NULL DEFAULT '-1',
  `name` char(200) NOT NULL,
  `iban` char(100) NOT NULL DEFAULT '',
  `isPayRecur` tinyint(1) NOT NULL DEFAULT '1',
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` char(50) NOT NULL DEFAULT '',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` char(50) NOT NULL DEFAULT '',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `expansion_area`
--

CREATE TABLE `expansion_area` (
  `id` int(11) NOT NULL,
  `address_id` int(11) NOT NULL DEFAULT '-1',
  `technology_id` int(11) NOT NULL DEFAULT '2',
  `commission_id` int(11) NOT NULL DEFAULT '-1',
  `state_id` tinyint(1) NOT NULL DEFAULT '1',
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` char(50) NOT NULL DEFAULT '',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` char(50) NOT NULL DEFAULT '',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `expansion_area`
--

INSERT INTO `expansion_area` (`id`, `address_id`, `technology_id`, `commission_id`, `state_id`, `createDate`, `createUser`, `updateDate`, `updateUser`, `isDeleted`) VALUES
(1, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(2, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(3, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(4, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(5, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(6, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(7, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(8, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(9, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(10, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(11, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(12, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(13, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(14, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(15, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(16, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(17, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(18, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(19, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(20, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(21, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(22, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(23, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(24, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(25, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(26, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(27, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(28, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(29, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(30, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(31, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(32, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(33, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(34, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(35, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(36, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(37, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(38, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(39, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(40, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(41, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(42, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(43, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(44, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(45, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(46, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(47, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(48, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(49, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(50, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(51, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(52, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(53, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(54, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(55, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(56, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(57, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(58, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(59, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(60, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(61, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(62, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(63, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(64, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(65, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(66, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(67, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(68, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(69, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(70, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(71, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(72, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(73, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(74, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(75, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(76, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(77, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(78, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(79, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(80, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(81, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(82, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(83, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(84, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(85, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(86, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(87, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(88, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(89, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(90, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(91, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(92, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(93, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(94, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(95, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(96, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(97, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(98, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(99, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(100, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0),
(101, 1, 2, 2, 3, '2024-05-23 10:17:05', 'JANINA', '2024-05-23 10:17:05', 'JANINA', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `expansion_state`
--

CREATE TABLE `expansion_state` (
  `id` int(11) NOT NULL,
  `name` char(150) NOT NULL DEFAULT '',
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` char(50) NOT NULL DEFAULT '',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` char(50) NOT NULL DEFAULT '',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `expansion_state`
--

INSERT INTO `expansion_state` (`id`, `name`, `createDate`, `createUser`, `updateDate`, `updateUser`, `isDeleted`) VALUES
(1, 'neu', '2024-04-24 14:56:05', 'JANINA', '2024-04-24 14:56:05', 'JANINA', 0),
(2, 'geplant', '2024-04-24 14:56:05', 'JANINA', '2024-04-24 14:56:05', 'JANINA', 0),
(3, 'in arbeit', '2024-04-24 14:56:05', 'JANINA', '2024-04-24 14:56:05', 'JANINA', 0),
(4, 'erschlossen', '2024-04-24 14:56:05', 'JANINA', '2024-04-24 14:56:05', 'JANINA', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `hardware`
--

CREATE TABLE `hardware` (
  `id` int(11) NOT NULL,
  `customer_class_id` int(11) NOT NULL DEFAULT '-1',
  `name` char(150) NOT NULL DEFAULT '',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `note` char(150) NOT NULL DEFAULT '',
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` char(50) NOT NULL DEFAULT '',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` char(50) NOT NULL DEFAULT '',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `hardware`
--

INSERT INTO `hardware` (`id`, `customer_class_id`, `name`, `price`, `note`, `createDate`, `createUser`, `updateDate`, `updateUser`, `isDeleted`) VALUES
(1, 1, '... bitte auswählen ...', '70.00', '(WAN/LAN/WLAN)', '2024-04-08 09:10:02', 'JANINA', '2024-04-08 09:10:02', 'JANINA', 0),
(2, 2, 'Brehna.net Standard.Box', '70.00', '(WAN/LAN/WLAN)', '2024-04-08 09:10:02', 'JANINA', '2024-04-08 09:10:02', 'JANINA', 0),
(3, 2, 'AVM Fritz!Box 7590', '150.00', '(WAN, 4x GLAN, WLAN, VoIP-TK, DECT)', '2024-04-08 09:10:02', 'JANINA', '2024-04-08 09:10:02', 'JANINA', 0),
(4, 2, 'AVM Fritz!Fon C6 (DECT)', '75.00', 'einzeln', '2024-04-08 09:10:02', 'JANINA', '2024-04-08 09:10:02', 'JANINA', 0),
(5, 2, 'AVM Fritz!Fon C6 (DECT)', '150.00', 'DuoSet', '2024-04-08 09:10:02', 'JANINA', '2024-04-08 09:10:02', 'JANINA', 0),
(6, 2, 'AVM Fritz!Fon C6 (DECT)', '210.00', 'TrioSet', '2024-04-08 09:10:02', 'JANINA', '2024-04-08 09:10:02', 'JANINA', 0),
(7, 2, 'AVM Fritz!Repeater 1200AX', '90.00', '', '2024-04-08 09:10:02', 'JANINA', '2024-04-08 09:10:02', 'JANINA', 0),
(8, 2, 'AVM Fritz!Powerline 540E WLAN-Set', '150.00', '', '2024-04-08 09:10:02', 'JANINA', '2024-04-08 09:10:02', 'JANINA', 0),
(9, 0, 'Brehna.net Router VoIP', '180.00', '(4x LAN, WLAN, VoIP-TK, ISDN, DECT)', '2024-04-08 09:10:02', 'JANINA', '2024-04-08 09:10:02', 'JANINA', 1),
(10, 0, 'AVM Fritz!Box Fon Standard', '100.00', '(4x LAN, WLAN, DECT, Telefonie)', '2024-04-08 09:10:02', 'JANINA', '2024-04-08 09:10:02', 'JANINA', 1),
(11, 0, 'Tischtelefon mit grossen Tasten', '75.00', '(Doro/ Gigaset)', '2024-04-08 09:10:02', 'JANINA', '2024-04-08 09:10:02', 'JANINA', 1),
(12, 0, 'AVM Fritz Fon C5', '75.00', '(VoIP/ DECT)', '2024-04-08 09:10:02', 'JANINA', '2024-04-08 09:10:02', 'JANINA', 1),
(13, 0, 'Amazon Echo Spot', '180.00', 'inkl. Alex Installation und Einweisung', '2024-04-08 09:10:02', 'JANINA', '2024-04-08 09:10:02', 'JANINA', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `house_intro_types`
--

CREATE TABLE `house_intro_types` (
  `id` int(11) NOT NULL,
  `name` char(150) NOT NULL DEFAULT '',
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` char(50) NOT NULL DEFAULT '',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` char(50) NOT NULL DEFAULT '',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `house_intro_types`
--

INSERT INTO `house_intro_types` (`id`, `name`, `createDate`, `createUser`, `updateDate`, `updateUser`, `isDeleted`) VALUES
(1, '... bitte auswählen ...', '2024-04-24 09:27:09', 'JANINA', '2024-04-24 09:27:09', 'JANINA', 0),
(2, 'Leerrohr zum Hausanschluss vorhanden', '2024-04-24 09:27:09', 'JANINA', '2024-04-24 09:27:09', 'JANINA', 0),
(3, 'Neue Einführung notwendig', '2024-04-24 09:27:09', 'JANINA', '2024-04-24 09:27:09', 'JANINA', 0),
(4, 'Mehrspartenhauseinführung vorhanden', '2024-04-24 09:27:09', 'JANINA', '2024-04-24 09:27:09', 'JANINA', 0),
(5, 'Sonstiges', '2024-04-24 09:27:09', 'JANINA', '2024-04-24 09:27:09', 'JANINA', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `house_owner`
--

CREATE TABLE `house_owner` (
  `id` int(11) NOT NULL,
  `address_id` int(11) NOT NULL DEFAULT '-1',
  `floor_address_id` int(11) NOT NULL DEFAULT '-1',
  `title` char(50) NOT NULL DEFAULT '',
  `fName` char(50) NOT NULL DEFAULT '',
  `lName` char(50) NOT NULL DEFAULT '',
  `company` char(50) NOT NULL DEFAULT '',
  `hr_number` char(25) NOT NULL DEFAULT '',
  `fFloor` char(50) NOT NULL DEFAULT '',
  `fFloorKind` char(50) NOT NULL DEFAULT '',
  `fDFloor` char(50) NOT NULL DEFAULT '',
  `mail` char(50) NOT NULL DEFAULT '',
  `mobil` char(50) NOT NULL DEFAULT '',
  `phone` char(50) NOT NULL DEFAULT '',
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` char(50) NOT NULL DEFAULT '',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` char(50) NOT NULL DEFAULT '',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `legal_form`
--

CREATE TABLE `legal_form` (
  `id` int(11) NOT NULL,
  `name` char(150) NOT NULL DEFAULT '',
  `shortName` char(10) NOT NULL DEFAULT '',
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` char(50) NOT NULL DEFAULT '',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` char(50) NOT NULL DEFAULT '',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `legal_form`
--

INSERT INTO `legal_form` (`id`, `name`, `shortName`, `createDate`, `createUser`, `updateDate`, `updateUser`, `isDeleted`) VALUES
(1, '.... bitte auswählen ...', '', '2024-04-08 09:11:39', 'JANINA', '2024-04-08 09:11:39', 'JANINA', 0),
(2, 'Gesellschaft bürgerlichen Rechts', 'GbR', '2024-04-08 09:11:39', 'JANINA', '2024-04-08 09:11:39', 'JANINA', 0),
(3, 'offene Handelsgesellschaft', 'OHG', '2024-04-08 09:11:39', 'JANINA', '2024-04-08 09:11:39', 'JANINA', 0),
(4, 'Kommanditgesellschaft', 'KG', '2024-04-08 09:11:39', 'JANINA', '2024-04-08 09:11:39', 'JANINA', 0),
(5, 'Gesellschaft mit beschränkter Haftung', 'GmbH', '2024-04-08 09:11:39', 'JANINA', '2024-04-08 09:11:39', 'JANINA', 0),
(6, 'Unternehmergesellschft', 'UG', '2024-04-08 09:11:39', 'JANINA', '2024-04-08 09:11:39', 'JANINA', 0),
(7, 'Aktiengesellschaft', 'AG', '2024-04-08 09:11:39', 'JANINA', '2024-04-08 09:11:39', 'JANINA', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `location`
--

CREATE TABLE `location` (
  `id` int(11) NOT NULL,
  `name` char(150) NOT NULL DEFAULT '',
  `district` char(150) NOT NULL DEFAULT '',
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` char(50) NOT NULL DEFAULT '',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` char(50) NOT NULL DEFAULT '',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `location`
--

INSERT INTO `location` (`id`, `name`, `district`, `createDate`, `createUser`, `updateDate`, `updateUser`, `isDeleted`) VALUES
(1, '... bitte auswählen ...', '', '2024-04-08 09:11:12', 'JANINA', '2024-04-08 09:11:12', 'JANINA', 0),
(2, '(Anderer)', '', '2024-04-08 09:11:12', 'JANINA', '2024-04-08 09:11:12', 'JANINA', 0),
(3, 'Brehna', '', '2024-04-08 09:11:12', 'JANINA', '2024-04-08 09:11:12', 'JANINA', 0),
(4, 'Kabelsketal', '', '2024-04-08 09:11:12', 'JANINA', '2024-04-08 09:11:12', 'JANINA', 0),
(5, 'Landsberg', '', '2024-04-08 09:11:12', 'JANINA', '2024-04-08 09:11:12', 'JANINA', 0),
(6, 'Landsberg', 'Dammendorf', '2024-04-08 09:11:12', 'JANINA', '2024-04-08 09:11:12', 'JANINA', 0),
(7, 'Landsberg', 'Kneipe', '2024-04-08 09:11:12', 'JANINA', '2024-04-08 09:11:12', 'JANINA', 0),
(8, 'Landsberg', 'Oppin', '2024-04-08 09:11:12', 'JANINA', '2024-04-08 09:11:12', 'JANINA', 0),
(9, 'Landsberg', 'Petersdorf', '2024-04-08 09:11:12', 'JANINA', '2024-04-08 09:11:12', 'JANINA', 0),
(10, 'Landsberg', 'Queis', '2024-04-08 09:11:12', 'JANINA', '2024-04-08 09:11:12', 'JANINA', 0),
(11, 'Petersberg', '', '2024-04-08 09:11:12', 'JANINA', '2024-04-08 09:11:12', 'JANINA', 0),
(12, 'Landsberg', 'Brachstedt', '2024-04-08 09:11:12', 'JANINA', '2024-04-08 09:11:12', 'JANINA', 0),
(13, 'Landsberg', 'Hohen', '2024-04-08 09:11:12', 'JANINA', '2024-04-08 09:11:12', 'JANINA', 0),
(14, 'Landsberg', 'Wurp', '2024-04-08 09:11:12', 'JANINA', '2024-04-08 09:11:12', 'JANINA', 0),
(15, 'Sandersdorf-Brehna', 'Glebitzsch', '2024-04-08 09:11:12', 'JANINA', '2024-04-08 09:11:12', 'JANINA', 0),
(16, 'Sandersdorf-Brehna', 'Köckern', '2024-04-08 09:11:12', 'JANINA', '2024-04-08 09:11:12', 'JANINA', 0),
(17, 'Wiedemar', 'Pohritzsch', '2024-04-08 09:11:12', 'JANINA', '2024-04-08 09:11:12', 'JANINA', 0),
(18, 'Zörbig', 'Prussendorf', '2024-04-08 09:11:12', 'JANINA', '2024-04-08 09:11:12', 'JANINA', 0),
(19, 'Zörbig', 'Quetzdölsdorf', '2024-04-08 09:11:12', 'JANINA', '2024-04-08 09:11:12', 'JANINA', 0),
(20, 'Zörbig', 'Rieda', '2024-04-08 09:11:12', 'JANINA', '2024-04-08 09:11:12', 'JANINA', 0),
(21, 'Zörbig', 'Schrenz', '2024-04-08 09:11:12', 'JANINA', '2024-04-08 09:11:12', 'JANINA', 0),
(22, 'Petersberg', 'Wurp', '2024-05-08 12:00:58', 'JANINA', '2024-05-08 12:00:58', 'JANINA', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `location_x_television`
--

CREATE TABLE `location_x_television` (
  `id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `tv_id` int(11) NOT NULL,
  `addCon` char(50) NOT NULL,
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` char(50) NOT NULL DEFAULT '',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` char(50) NOT NULL DEFAULT '',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `numerically`
--

CREATE TABLE `numerically` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '1',
  `name` char(200) NOT NULL DEFAULT '',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` char(50) NOT NULL DEFAULT '',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` char(50) NOT NULL DEFAULT '',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `numerically`
--

INSERT INTO `numerically` (`id`, `parent_id`, `name`, `price`, `createDate`, `createUser`, `updateDate`, `updateUser`, `isDeleted`) VALUES
(1, 1, '... bitte auswählen ...', '0.00', '2024-04-08 09:10:41', 'JANINA', '2024-04-08 09:10:41', 'JANINA', 1),
(2, 1, 'Rechnung monatlich', '0.00', '2024-04-08 09:10:41', 'JANINA', '2024-04-08 09:10:41', 'JANINA', 1),
(3, 1, 'Rechnung per Post', '1.50', '2024-04-08 09:10:41', 'JANINA', '2024-04-08 09:10:41', 'JANINA', 0),
(4, 1, 'Einzugsermächtigung für Lastschriftverfahren', '0.00', '2024-04-08 09:10:41', 'JANINA', '2024-04-08 09:10:41', 'JANINA', 0),
(5, 1, 'Rechnung monatlich im voraus', '0.00', '2024-04-08 09:10:41', 'JANINA', '2024-04-08 09:10:41', 'JANINA', 1),
(6, 1, 'einmalig nach Fertigstellung Hausanschluss', '0.00', '2024-04-08 09:10:41', 'JANINA', '2024-04-08 09:10:41', 'JANINA', 0),
(7, 1, 'Ratenzahlung nach Vereinbarung', '0.00', '2024-04-08 09:10:41', 'JANINA', '2024-04-08 09:10:41', 'JANINA', 0),
(8, 7, '12 Monatsraten', '0.00', '2024-04-24 09:53:24', 'JANINA', '2024-04-24 09:53:24', 'JANINA', 0),
(9, 7, '24 Monatsraten', '0.00', '2024-04-24 09:53:24', 'JANINA', '2024-04-24 09:53:24', 'JANINA', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `pdf_typ`
--

CREATE TABLE `pdf_typ` (
  `id` int(11) NOT NULL,
  `name` char(50) NOT NULL DEFAULT '',
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` char(50) NOT NULL DEFAULT '',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` char(50) NOT NULL DEFAULT '',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `pdf_typ`
--

INSERT INTO `pdf_typ` (`id`, `name`, `createDate`, `createUser`, `updateDate`, `updateUser`, `isDeleted`) VALUES
(1, 'SEPA', '2024-05-16 13:38:09', 'JANINA', '2024-05-16 13:38:09', 'JANINA', 0),
(2, 'GEE', '2024-05-16 13:38:09', 'JANINA', '2024-05-16 13:38:09', 'JANINA', 0),
(3, 'Anbieterwechsel', '2024-05-16 13:38:09', 'JANINA', '2024-05-16 13:38:09', 'JANINA', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `phone_numbers`
--

CREATE TABLE `phone_numbers` (
  `id` int(11) NOT NULL,
  `onkz` char(15) NOT NULL DEFAULT '',
  `phone1` char(25) NOT NULL DEFAULT '',
  `phone2` char(25) NOT NULL DEFAULT '',
  `phone3` char(25) NOT NULL DEFAULT '',
  `phone4` char(25) NOT NULL DEFAULT '',
  `phone5` char(25) NOT NULL DEFAULT '',
  `phone6` char(25) NOT NULL DEFAULT '',
  `phone7` char(25) NOT NULL DEFAULT '',
  `phone8` char(25) NOT NULL DEFAULT '',
  `phone9` char(25) NOT NULL DEFAULT '',
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` char(50) NOT NULL DEFAULT '',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` char(50) NOT NULL DEFAULT '',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `provider_change_order`
--

CREATE TABLE `provider_change_order` (
  `id` int(11) NOT NULL,
  `contractId` int(11) NOT NULL DEFAULT '-1',
  `data_holder_id` int(11) NOT NULL DEFAULT '-1',
  `phone_nr_id` int(11) NOT NULL DEFAULT '-1',
  `tele_system_id` int(11) NOT NULL DEFAULT '-1',
  `currentProvider` char(100) NOT NULL DEFAULT '',
  `executeCancel` tinyint(1) NOT NULL DEFAULT '1',
  `phonePortability` tinyint(1) NOT NULL DEFAULT '1',
  `getAllNr` tinyint(1) NOT NULL DEFAULT '1',
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` char(50) NOT NULL DEFAULT '',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` char(50) NOT NULL DEFAULT '',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `service`
--

CREATE TABLE `service` (
  `id` int(11) NOT NULL,
  `customer_class_id` int(11) NOT NULL DEFAULT '1',
  `name` char(150) NOT NULL DEFAULT '',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `note` char(100) NOT NULL DEFAULT '',
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` char(50) NOT NULL DEFAULT '',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` char(50) NOT NULL DEFAULT '',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `service`
--

INSERT INTO `service` (`id`, `customer_class_id`, `name`, `price`, `note`, `createDate`, `createUser`, `updateDate`, `updateUser`, `isDeleted`) VALUES
(1, 1, '... bitte auswählen ...', '0.00', '', '2024-04-08 09:10:23', 'JANINA', '2024-04-08 09:10:23', 'JANINA', 0),
(2, 1, 'IT-Sicherheitspaket und Updateservice je Endgerät', '9.95', '', '2024-04-08 09:10:23', 'JANINA', '2024-04-08 09:10:23', 'JANINA', 0),
(4, 2, 'Bereitstellungspreis Tarif/Anschluss', '75.00', 'inkl. Techniker für Router/ Telefonie', '2024-04-08 09:10:23', 'JANINA', '2024-04-08 09:10:23', 'JANINA', 0),
(5, 2, 'Einrichtung Komfort', '79.00', 'max. 5 Endgeräte, Telefone und IT-Check AVM', '2024-04-08 09:10:23', 'JANINA', '2024-04-08 09:10:23', 'JANINA', 0),
(6, 1, 'Kabel, Anschluss und Installation nach Kundenwunsch', '0.00', '', '2024-04-08 09:10:23', 'JANINA', '2024-04-08 09:10:23', 'JANINA', 0),
(7, 1, 'Einrichtungsentgelt', '100.00', '(inkl. B.net Routerkonfig)', '2024-04-08 09:10:23', 'JANINA', '2024-04-08 09:10:23', 'JANINA', 0),
(8, 1, 'Einrichtungspauschale', '100.00', '(TAE/ RJ45 Dose, Kabel & Installation, Einweisung)', '2024-04-08 09:10:23', 'JANINA', '2024-04-08 09:10:23', 'JANINA', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `signature`
--

CREATE TABLE `signature` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '-1',
  `contract_id` int(11) NOT NULL DEFAULT '-1',
  `ftth_request_id` int(11) NOT NULL DEFAULT '-1',
  `pdf_typ_id` int(11) NOT NULL DEFAULT '-1',
  `signature` mediumtext NOT NULL,
  `ip_client` char(100) NOT NULL DEFAULT '''''',
  `os` char(50) NOT NULL DEFAULT '',
  `browser` char(50) NOT NULL DEFAULT '',
  `device` char(250) NOT NULL DEFAULT '',
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` char(50) NOT NULL DEFAULT '',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` char(50) NOT NULL DEFAULT '',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `software`
--

CREATE TABLE `software` (
  `id` int(11) NOT NULL,
  `name` char(150) NOT NULL DEFAULT '',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `note` char(100) NOT NULL DEFAULT '',
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` char(50) NOT NULL DEFAULT '',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` char(50) NOT NULL DEFAULT '',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `software`
--

INSERT INTO `software` (`id`, `name`, `price`, `note`, `createDate`, `createUser`, `updateDate`, `updateUser`, `isDeleted`) VALUES
(1, '... bitte auswählen ...', '0.00', '(BSI Zertifiziert bis 25 User, inkl. Service)', '2024-04-08 09:10:13', 'JANINA', '2024-04-08 09:10:13', 'JANINA', 0),
(2, 'B.net NextGen UTM-Firewall Appliance', '95.00', '(BSI Zertifiziert bis 25 User, inkl. Service)', '2024-04-08 09:10:13', 'JANINA', '2024-04-08 09:10:13', 'JANINA', 0),
(3, 'B.net NextGen UTM-Firewall Appliance', '170.00', '(BSI Zertifiziert bis 50 User, inkl. Service)', '2024-04-08 09:10:13', 'JANINA', '2024-04-08 09:10:13', 'JANINA', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tariff`
--

CREATE TABLE `tariff` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL DEFAULT '-1',
  `name` char(150) NOT NULL DEFAULT '',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `note` char(100) NOT NULL DEFAULT '',
  `downstream` int(5) NOT NULL DEFAULT '0',
  `upstream` int(5) NOT NULL DEFAULT '0',
  `cust_class` smallint(3) NOT NULL DEFAULT '0',
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` char(50) NOT NULL DEFAULT '',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` char(50) NOT NULL DEFAULT '',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `tariff`
--

INSERT INTO `tariff` (`id`, `category_id`, `name`, `price`, `note`, `downstream`, `upstream`, `cust_class`, `createDate`, `createUser`, `updateDate`, `updateUser`, `isDeleted`) VALUES
(1, 1, '... bitte auswählen ...', '0.00', '', 0, 0, 0, '2024-04-08 09:12:39', 'JANINA', '2024-04-08 09:12:39', 'JANINA', 0),
(2, 2, 'Brehna.net Home Lite', '20.00', '', 10, 2, 2, '2024-04-08 09:12:39', 'JANINA', '2024-04-08 09:12:39', 'JANINA', 0),
(3, 2, 'Brehna.net Home Standard', '25.00', '', 25, 5, 2, '2024-04-08 09:12:39', 'JANINA', '2024-04-08 09:12:39', 'JANINA', 0),
(4, 2, 'Brehna.net Home Plus', '35.00', '', 40, 10, 2, '2024-04-08 09:12:39', 'JANINA', '2024-04-08 09:12:39', 'JANINA', 0),
(5, 2, 'Brehna.net Home Maxx', '45.00', '', 80, 20, 2, '2024-04-08 09:12:39', 'JANINA', '2024-04-08 09:12:39', 'JANINA', 0),
(6, 2, 'Brehna.net Home 200', '45.00', '', 200, 100, 2, '2024-04-08 09:12:39', 'JANINA', '2024-04-08 09:12:39', 'JANINA', 0),
(7, 2, 'Brehna.net Home 400', '65.00', '', 400, 100, 2, '2024-04-08 09:12:39', 'JANINA', '2024-04-08 09:12:39', 'JANINA', 0),
(8, 2, 'Brehna.net Home 1000', '85.00', '', 1000, 200, 2, '2024-04-08 09:12:39', 'JANINA', '2024-04-08 09:12:39', 'JANINA', 0),
(9, 5, 'Brehna.net Komplett Senior', '19.95', '', 16, 5, 3, '2024-04-08 09:12:39', 'JANINA', '2024-04-08 09:12:39', 'JANINA', 0),
(10, 2, 'B.net Business Comp. Standard 10', '50.00', '', 10, 5, 5, '2024-04-08 09:12:39', 'JANINA', '2024-04-08 09:12:39', 'JANINA', 0),
(11, 2, 'B.net Business Comp. Standard MAXX', '60.00', '', 25, 10, 5, '2024-04-08 09:12:39', 'JANINA', '2024-04-08 09:12:39', 'JANINA', 0),
(12, 5, 'B.net Business Comp. Plus 10', '65.00', '', 10, 5, 5, '2024-04-08 09:12:39', 'JANINA', '2024-04-08 09:12:39', 'JANINA', 0),
(13, 5, 'B.net Business Comp. Plus MAXX', '75.00', '', 25, 10, 5, '2024-04-08 09:12:39', 'JANINA', '2024-04-08 09:12:39', 'JANINA', 0),
(14, 2, 'Brehna.net Home 100', '35.00', '', 100, 50, 2, '2024-04-08 09:12:39', 'JANINA', '2024-04-08 09:12:39', 'JANINA', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tariff_category`
--

CREATE TABLE `tariff_category` (
  `id` int(11) NOT NULL,
  `name` char(150) NOT NULL DEFAULT '',
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` char(50) NOT NULL DEFAULT '',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` char(50) NOT NULL DEFAULT '',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `tariff_category`
--

INSERT INTO `tariff_category` (`id`, `name`, `createDate`, `createUser`, `updateDate`, `updateUser`, `isDeleted`) VALUES
(1, '... bitte auswählen ...', '2024-04-08 09:11:50', 'JANINA', '2024-04-08 09:11:50', 'JANINA', 0),
(2, 'Internet', '2024-04-08 09:11:50', 'JANINA', '2024-04-08 09:11:50', 'JANINA', 0),
(3, 'Telefon', '2024-04-08 09:11:50', 'JANINA', '2024-04-08 09:11:50', 'JANINA', 0),
(4, 'TV', '2024-04-08 09:11:50', 'JANINA', '2024-04-08 09:11:50', 'JANINA', 1),
(5, 'Internet & Telefon', '2024-04-08 09:11:50', 'JANINA', '2024-04-08 09:11:50', 'JANINA', 0),
(6, 'Internet & TV', '2024-04-08 09:11:50', 'JANINA', '2024-04-08 09:11:50', 'JANINA', 1),
(7, 'Telefon & TV', '2024-04-08 09:11:50', 'JANINA', '2024-04-08 09:11:50', 'JANINA', 1),
(8, 'Internet & Telefon & TV', '2024-04-08 09:11:50', 'JANINA', '2024-04-08 09:11:50', 'JANINA', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tariff_option`
--

CREATE TABLE `tariff_option` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '-1',
  `customer_class_id` int(11) NOT NULL DEFAULT '-1',
  `name` char(150) NOT NULL DEFAULT '',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `price_sen` decimal(10,2) NOT NULL DEFAULT '0.00',
  `price_gk` decimal(10,2) NOT NULL DEFAULT '0.00',
  `note` char(150) NOT NULL DEFAULT '',
  `downstream` int(5) NOT NULL DEFAULT '0',
  `upstream` int(5) NOT NULL DEFAULT '0',
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` char(50) NOT NULL DEFAULT '',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` char(50) NOT NULL DEFAULT '',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `tariff_option`
--

INSERT INTO `tariff_option` (`id`, `parent_id`, `customer_class_id`, `name`, `price`, `price_sen`, `price_gk`, `note`, `downstream`, `upstream`, `createDate`, `createUser`, `updateDate`, `updateUser`, `isDeleted`) VALUES
(1, 1, 1, '... bitte auswählen ...', '0.00', '0.00', '0.00', '', 0, 0, '2024-04-08 12:46:51', 'JANINA', '2024-04-08 12:46:51', 'JANINA', 0),
(2, 1, 2, 'IPv4 Adresse dynamisch', '4.95', '0.00', '0.00', '', 0, 0, '2024-04-08 12:46:51', 'JANINA', '2024-04-08 12:46:51', 'JANINA', 0),
(3, 1, 2, 'IPv4 Adresse fix', '14.00', '0.00', '0.00', '', 0, 0, '2024-04-08 12:46:51', 'JANINA', '2024-04-08 12:46:51', 'JANINA', 0),
(4, 1, 2, 'Telefonie Standard', '4.95', '0.00', '0.00', 'inkl. 1 SIP Sprachkanal, 1 Rufnummer, Festnetzflat DE', 0, 0, '2024-04-08 12:46:51', 'JANINA', '2024-04-08 12:46:51', 'JANINA', 0),
(5, 4, 2, 'zusätzlicher SIP Sprachkanal, Rufnummer, inkl. DE Flat', '7.90', '7.90', '9.50', '', 0, 0, '2024-04-08 12:46:51', 'JANINA', '2024-04-08 12:46:51', 'JANINA', 0),
(6, 4, 2, 'Allnetflatrate', '19.00', '19.00', '25.00', 'Alle Fest- und Mobilnetze in Deutschland je Sprachkanal', 0, 0, '2024-04-08 12:46:51', 'JANINA', '2024-04-08 12:46:51', 'JANINA', 0),
(7, 1, 2, 'Leitungsgebühr Fremdnetze (TAL Miete VDSL/ LWL/ Bitstream)', '4.00', '0.00', '0.00', '', 0, 0, '2024-04-08 12:46:51', 'JANINA', '2024-04-08 12:46:51', 'JANINA', 0),
(8, 1, 2, 'TV-Anschluss DVB-S/ C', '4.50', '0.00', '0.00', '(verfügbar in 06188 Landsberg/ Queis)', 0, 0, '2024-04-08 12:46:51', 'JANINA', '2024-04-08 12:46:51', 'JANINA', 1),
(9, 1, 1, 'Fremdnetzgebühr TAL-Miete', '0.00', '4.00', '0.00', '', 0, 0, '2024-04-08 12:46:51', 'JANINA', '2024-04-08 12:46:51', 'JANINA', 0),
(10, 1, 1, 'Fremdnetzgebühr DE/ DTAG/ EXTERN', '0.00', '14.00', '0.00', '', 0, 0, '2024-04-08 12:46:51', 'JANINA', '2024-04-08 12:46:51', 'JANINA', 0),
(11, 1, 1, 'Business Speed 200', '20.00', '0.00', '0.00', '(für MAXX und Glasfaser)', 200, 50, '2024-04-08 12:46:51', 'JANINA', '2024-04-08 12:46:51', 'JANINA', 0),
(12, 1, 1, 'Business Speed 400', '40.00', '0.00', '0.00', '(für MAXX und Glasfaser)', 400, 50, '2024-04-08 12:46:51', 'JANINA', '2024-04-08 12:46:51', 'JANINA', 0),
(13, 1, 1, 'Business Speed 800', '80.00', '0.00', '0.00', '(für MAXX und Glasfaser)', 800, 100, '2024-04-08 12:46:51', 'JANINA', '2024-04-08 12:46:51', 'JANINA', 0),
(14, 1, 1, 'Feste öffentliche IPv4-Adresse', '12.00', '0.00', '0.00', '', 0, 0, '2024-04-08 12:46:51', 'JANINA', '2024-04-08 12:46:51', 'JANINA', 0),
(15, 1, 1, 'Rufnummernmitnahme zu Brehna.net', '0.00', '0.00', '0.00', '', 0, 0, '2024-04-08 12:46:51', 'JANINA', '2024-04-08 12:46:51', 'JANINA', 0),
(16, 1, 2, 'inkl. Internetflatrate', '0.00', '0.00', '0.00', '', 0, 0, '2024-04-08 12:46:51', 'JANINA', '2024-04-08 12:46:51', 'JANINA', 0),
(17, 1, 2, 'keine Volumenbeschränkung', '0.00', '0.00', '0.00', '', 0, 0, '2024-04-08 12:46:51', 'JANINA', '2024-04-08 12:46:51', 'JANINA', 0),
(18, 1, 2, 'Providernetz IPv4/ v6-Adresse', '0.00', '0.00', '0.00', '', 0, 0, '2024-04-08 12:46:51', 'JANINA', '2024-04-08 12:46:51', 'JANINA', 0),
(19, 1, 2, 'VPN fähig', '0.00', '0.00', '0.00', '', 0, 0, '2024-04-08 12:46:51', 'JANINA', '2024-04-08 12:46:51', 'JANINA', 0),
(20, 1, 1, '1 VoIP Sprachkanal', '0.00', '0.00', '0.00', '', 0, 0, '2024-04-08 12:46:51', 'JANINA', '2024-04-08 12:46:51', 'JANINA', 0),
(21, 1, 1, '1 Rufnummer', '0.00', '0.00', '0.00', '', 0, 0, '2024-04-08 12:46:51', 'JANINA', '2024-04-08 12:46:51', 'JANINA', 0),
(22, 1, 1, 'Festnetzflat Deutschland', '0.00', '0.00', '0.00', '', 0, 0, '2024-04-08 12:46:51', 'JANINA', '2024-04-08 12:46:51', 'JANINA', 0),
(23, 1, 1, 'Standard Tarife inkl. Internetflatrate', '0.00', '0.00', '0.00', '', 0, 0, '2024-04-08 12:46:51', 'JANINA', '2024-04-08 12:46:51', 'JANINA', 0),
(24, 1, 1, 'öffentliche IP', '0.00', '0.00', '0.00', '', 0, 0, '2024-04-08 12:46:51', 'JANINA', '2024-04-08 12:46:51', 'JANINA', 0),
(25, 1, 1, '12h Service', '0.00', '0.00', '0.00', '', 0, 0, '2024-04-08 12:46:51', 'JANINA', '2024-04-08 12:46:51', 'JANINA', 0),
(26, 1, 1, 'Tarif max. = bis zu 95 / 35 MBit/s bei VDSL und LWL', '0.00', '0.00', '0.00', '', 0, 0, '2024-04-08 12:46:51', 'JANINA', '2024-04-08 12:46:51', 'JANINA', 0),
(27, 1, 1, 'Plus Tarife inkl. Internetflatrate', '0.00', '0.00', '0.00', '', 0, 0, '2024-04-08 12:46:51', 'JANINA', '2024-04-08 12:46:51', 'JANINA', 0),
(28, 1, 1, '8h Prem. Service', '0.00', '0.00', '0.00', '', 0, 0, '2024-04-08 12:46:51', 'JANINA', '2024-04-08 12:46:51', 'JANINA', 0),
(29, 1, 1, '2 VoIP Sprachkanäle', '0.00', '0.00', '0.00', '', 0, 0, '2024-04-08 12:46:51', 'JANINA', '2024-04-08 12:46:51', 'JANINA', 0),
(30, 1, 1, '3 Rufnummern', '0.00', '0.00', '0.00', '', 0, 0, '2024-04-08 12:46:51', 'JANINA', '2024-04-08 12:46:51', 'JANINA', 0),
(31, 1, 1, 'Telefonie Standard inkl. Internetflatrate, 1 VoIP Sprachkanal, 1 Rufnummer, Festnetzflat Deutschland', '4.95', '0.00', '0.00', '', 0, 0, '2024-04-08 13:00:23', 'JANINA', '2024-04-08 13:00:23', 'JANINA', 0),
(32, 1, 2, 'Bereitstellungspreis Tarif/Anschluss', '75.00', '0.00', '0.00', 'inkl. Techniker für Router/Telefonie', 0, 0, '2024-04-22 17:11:09', 'JANINA', '2024-04-22 17:11:09', 'JANINA', 1),
(33, 1, 2, 'Einrichtung Komfort für max. 5 Endgeräte, Telefone und IT-Check AVM', '79.00', '0.00', '0.00', '', 0, 0, '2024-04-22 17:20:27', 'JANINA', '2024-04-22 17:20:27', 'JANINA', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tariff_x_tariff_option`
--

CREATE TABLE `tariff_x_tariff_option` (
  `id` int(11) NOT NULL,
  `tariff_id` int(11) NOT NULL DEFAULT '-1',
  `tariff_option_id` int(11) NOT NULL DEFAULT '-1',
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` char(50) NOT NULL DEFAULT '',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` char(50) NOT NULL DEFAULT '',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `tariff_x_tariff_option`
--

INSERT INTO `tariff_x_tariff_option` (`id`, `tariff_id`, `tariff_option_id`, `createDate`, `createUser`, `updateDate`, `updateUser`, `isDeleted`) VALUES
(1, 2, 16, '2024-04-08 13:06:15', 'JANINA', '2024-04-08 13:06:15', 'JANINA', 0),
(2, 2, 17, '2024-04-08 13:06:16', 'JANINA', '2024-04-08 13:06:16', 'JANINA', 0),
(3, 2, 18, '2024-04-08 13:06:16', 'JANINA', '2024-04-08 13:06:16', 'JANINA', 0),
(4, 2, 19, '2024-04-08 13:06:16', 'JANINA', '2024-04-08 13:06:16', 'JANINA', 0),
(5, 3, 16, '2024-04-08 13:06:16', 'JANINA', '2024-04-08 13:06:16', 'JANINA', 0),
(6, 3, 17, '2024-04-08 13:06:16', 'JANINA', '2024-04-08 13:06:16', 'JANINA', 0),
(7, 3, 18, '2024-04-08 13:06:16', 'JANINA', '2024-04-08 13:06:16', 'JANINA', 0),
(8, 3, 19, '2024-04-08 13:06:16', 'JANINA', '2024-04-08 13:06:16', 'JANINA', 0),
(9, 4, 16, '2024-04-08 13:06:16', 'JANINA', '2024-04-08 13:06:16', 'JANINA', 0),
(10, 4, 17, '2024-04-08 13:06:16', 'JANINA', '2024-04-08 13:06:16', 'JANINA', 0),
(11, 4, 18, '2024-04-08 13:06:16', 'JANINA', '2024-04-08 13:06:16', 'JANINA', 0),
(12, 4, 19, '2024-04-08 13:06:16', 'JANINA', '2024-04-08 13:06:16', 'JANINA', 0),
(13, 5, 16, '2024-04-08 13:06:16', 'JANINA', '2024-04-08 13:06:16', 'JANINA', 0),
(14, 5, 17, '2024-04-08 13:06:16', 'JANINA', '2024-04-08 13:06:16', 'JANINA', 0),
(15, 5, 18, '2024-04-08 13:06:16', 'JANINA', '2024-04-08 13:06:16', 'JANINA', 0),
(16, 5, 19, '2024-04-08 13:06:16', 'JANINA', '2024-04-08 13:06:16', 'JANINA', 0),
(17, 6, 16, '2024-04-08 13:06:16', 'JANINA', '2024-04-08 13:06:16', 'JANINA', 0),
(18, 6, 17, '2024-04-08 13:06:16', 'JANINA', '2024-04-08 13:06:16', 'JANINA', 0),
(19, 6, 18, '2024-04-08 13:06:16', 'JANINA', '2024-04-08 13:06:16', 'JANINA', 0),
(20, 6, 19, '2024-04-08 13:06:16', 'JANINA', '2024-04-08 13:06:16', 'JANINA', 0),
(21, 7, 16, '2024-04-08 13:06:16', 'JANINA', '2024-04-08 13:06:16', 'JANINA', 0),
(22, 7, 17, '2024-04-08 13:06:16', 'JANINA', '2024-04-08 13:06:16', 'JANINA', 0),
(23, 7, 18, '2024-04-08 13:06:16', 'JANINA', '2024-04-08 13:06:16', 'JANINA', 0),
(24, 7, 19, '2024-04-08 13:06:16', 'JANINA', '2024-04-08 13:06:16', 'JANINA', 0),
(25, 8, 16, '2024-04-08 13:06:16', 'JANINA', '2024-04-08 13:06:16', 'JANINA', 0),
(26, 8, 17, '2024-04-08 13:06:16', 'JANINA', '2024-04-08 13:06:16', 'JANINA', 0),
(27, 8, 18, '2024-04-08 13:06:16', 'JANINA', '2024-04-08 13:06:16', 'JANINA', 0),
(28, 8, 19, '2024-04-08 13:06:16', 'JANINA', '2024-04-08 13:06:16', 'JANINA', 0),
(29, 10, 23, '2024-04-24 13:25:33', 'JANINA', '2024-04-24 13:25:33', 'JANINA', 0),
(30, 10, 24, '2024-04-24 13:25:33', 'JANINA', '2024-04-24 13:25:33', 'JANINA', 0),
(31, 10, 25, '2024-04-24 13:25:33', 'JANINA', '2024-04-24 13:25:33', 'JANINA', 0),
(32, 10, 26, '2024-04-24 13:25:33', 'JANINA', '2024-04-24 13:25:33', 'JANINA', 0),
(33, 11, 23, '2024-04-24 13:25:33', 'JANINA', '2024-04-24 13:25:33', 'JANINA', 0),
(34, 11, 24, '2024-04-24 13:25:33', 'JANINA', '2024-04-24 13:25:33', 'JANINA', 0),
(35, 11, 25, '2024-04-24 13:25:33', 'JANINA', '2024-04-24 13:25:33', 'JANINA', 0),
(36, 11, 26, '2024-04-24 13:25:33', 'JANINA', '2024-04-24 13:25:33', 'JANINA', 0),
(37, 12, 27, '2024-04-24 13:27:18', 'JANINA', '2024-04-24 13:27:18', 'JANINA', 0),
(38, 12, 24, '2024-04-24 13:27:18', 'JANINA', '2024-04-24 13:27:18', 'JANINA', 0),
(39, 12, 28, '2024-04-24 13:27:18', 'JANINA', '2024-04-24 13:27:18', 'JANINA', 0),
(40, 12, 29, '2024-04-24 13:27:18', 'JANINA', '2024-04-24 13:27:18', 'JANINA', 0),
(41, 12, 30, '2024-04-24 13:27:18', 'JANINA', '2024-04-24 13:27:18', 'JANINA', 0),
(42, 12, 22, '2024-04-24 13:27:18', 'JANINA', '2024-04-24 13:27:18', 'JANINA', 0),
(43, 12, 26, '2024-04-24 13:27:18', 'JANINA', '2024-04-24 13:27:18', 'JANINA', 0),
(44, 13, 27, '2024-04-24 13:27:18', 'JANINA', '2024-04-24 13:27:18', 'JANINA', 0),
(45, 13, 24, '2024-04-24 13:27:18', 'JANINA', '2024-04-24 13:27:18', 'JANINA', 0),
(46, 13, 28, '2024-04-24 13:27:18', 'JANINA', '2024-04-24 13:27:18', 'JANINA', 0),
(47, 13, 29, '2024-04-24 13:27:18', 'JANINA', '2024-04-24 13:27:18', 'JANINA', 0),
(48, 13, 30, '2024-04-24 13:27:18', 'JANINA', '2024-04-24 13:27:18', 'JANINA', 0),
(49, 13, 22, '2024-04-24 13:27:18', 'JANINA', '2024-04-24 13:27:18', 'JANINA', 0),
(50, 13, 26, '2024-04-24 13:27:18', 'JANINA', '2024-04-24 13:27:18', 'JANINA', 0),
(51, 9, 16, '2024-04-24 13:33:42', 'JANINA', '2024-04-24 13:33:42', 'JANINA', 0),
(52, 9, 20, '2024-04-24 13:33:42', 'JANINA', '2024-04-24 13:33:42', 'JANINA', 0),
(53, 9, 21, '2024-04-24 13:33:42', 'JANINA', '2024-04-24 13:33:42', 'JANINA', 0),
(54, 9, 22, '2024-04-24 13:33:42', 'JANINA', '2024-04-24 13:33:42', 'JANINA', 0),
(55, 14, 16, '2024-04-08 13:06:15', 'JANINA', '2024-04-08 13:06:15', 'JANINA', 0),
(56, 14, 17, '2024-04-08 13:06:16', 'JANINA', '2024-04-08 13:06:16', 'JANINA', 0),
(57, 14, 18, '2024-04-08 13:06:16', 'JANINA', '2024-04-08 13:06:16', 'JANINA', 0),
(58, 14, 19, '2024-04-08 13:06:16', 'JANINA', '2024-04-08 13:06:16', 'JANINA', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tariff_x_technology`
--

CREATE TABLE `tariff_x_technology` (
  `id` int(11) NOT NULL,
  `tariff_id` int(11) NOT NULL DEFAULT '-1',
  `technology_id` int(11) NOT NULL DEFAULT '-1',
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` char(50) NOT NULL DEFAULT '',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` char(50) NOT NULL DEFAULT '',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `tariff_x_technology`
--

INSERT INTO `tariff_x_technology` (`id`, `tariff_id`, `technology_id`, `createDate`, `createUser`, `updateDate`, `updateUser`, `isDeleted`) VALUES
(1, 2, 2, '2024-04-08 12:54:11', 'JANINA', '2024-04-08 12:54:11', 'JANINA', 0),
(2, 2, 3, '2024-04-08 12:54:11', 'JANINA', '2024-04-08 12:54:11', 'JANINA', 0),
(3, 2, 5, '2024-04-08 12:54:11', 'JANINA', '2024-04-08 12:54:11', 'JANINA', 0),
(4, 3, 2, '2024-04-08 12:54:11', 'JANINA', '2024-04-08 12:54:11', 'JANINA', 0),
(5, 3, 3, '2024-04-08 12:54:11', 'JANINA', '2024-04-08 12:54:11', 'JANINA', 0),
(6, 3, 5, '2024-04-08 12:54:11', 'JANINA', '2024-04-08 12:54:11', 'JANINA', 0),
(7, 4, 2, '2024-04-08 12:54:11', 'JANINA', '2024-04-08 12:54:11', 'JANINA', 0),
(8, 4, 3, '2024-04-08 12:54:11', 'JANINA', '2024-04-08 12:54:11', 'JANINA', 0),
(9, 4, 5, '2024-04-08 12:54:11', 'JANINA', '2024-04-08 12:54:11', 'JANINA', 0),
(10, 5, 2, '2024-04-08 12:54:11', 'JANINA', '2024-04-08 12:54:11', 'JANINA', 0),
(11, 5, 3, '2024-04-08 12:54:11', 'JANINA', '2024-04-08 12:54:11', 'JANINA', 0),
(12, 5, 5, '2024-04-08 12:54:11', 'JANINA', '2024-04-08 12:54:11', 'JANINA', 0),
(13, 6, 2, '2024-04-08 12:54:11', 'JANINA', '2024-04-08 12:54:11', 'JANINA', 0),
(14, 7, 2, '2024-04-08 12:54:11', 'JANINA', '2024-04-08 12:54:11', 'JANINA', 0),
(15, 14, 2, '2024-04-08 12:54:11', 'JANINA', '2024-04-08 12:54:11', 'JANINA', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `technology`
--

CREATE TABLE `technology` (
  `id` int(11) NOT NULL,
  `name` char(150) NOT NULL DEFAULT '',
  `shortName` char(10) NOT NULL DEFAULT '',
  `note` char(150) NOT NULL DEFAULT '',
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` char(50) NOT NULL DEFAULT '',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` char(50) NOT NULL DEFAULT '',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `technology`
--

INSERT INTO `technology` (`id`, `name`, `shortName`, `note`, `createDate`, `createUser`, `updateDate`, `updateUser`, `isDeleted`) VALUES
(1, '... bitte auswählen ...', '', '', '2024-04-08 09:12:03', 'JANINA', '2024-04-08 09:12:03', 'JANINA', 0),
(2, 'Glasfaser', 'FttH', '', '2024-04-08 09:12:03', 'JANINA', '2024-04-08 09:12:03', 'JANINA', 0),
(3, 'Very High Speed Digital Subscriber Line', 'VDSL', 'Telefondose', '2024-04-08 09:12:03', 'JANINA', '2024-04-08 09:12:03', 'JANINA', 0),
(4, 'Ethernet', 'ETH', '', '2024-04-08 09:12:03', 'JANINA', '2024-04-08 09:12:03', 'JANINA', 0),
(5, 'Funk', '', '5G LTU', '2024-04-08 09:12:03', 'JANINA', '2024-04-08 09:12:03', 'JANINA', 0),
(6, 'Lichtwellenleiter', 'LWL', '', '2024-04-08 09:12:03', 'JANINA', '2024-04-08 09:12:03', 'JANINA', 0),
(7, 'Richtfunk Point-to-Point', 'RF PTP', '', '2024-04-08 09:12:03', 'JANINA', '2024-04-08 09:12:03', 'JANINA', 0),
(8, 'Richtfunk Point-to-Multipoint', 'RF PTMP', '', '2024-04-08 09:12:03', 'JANINA', '2024-04-08 09:12:03', 'JANINA', 0),
(9, 'Mobilfunktarif', 'LTE', '', '2024-04-11 16:11:03', 'JANINA', '2024-04-11 16:11:03', 'JANINA', 0),
(10, 'Hybridprodukt', '', 'Telefondose und LTE', '2024-04-11 16:11:03', 'JANINA', '2024-04-11 16:11:03', 'JANINA', 0),
(11, 'Richtfunk', '', '', '2024-04-11 16:11:03', 'JANINA', '2024-04-11 16:11:03', 'JANINA', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `telecommunication_system`
--

CREATE TABLE `telecommunication_system` (
  `id` int(11) NOT NULL,
  `directDialNr` char(50) NOT NULL DEFAULT '',
  `queryPoint` char(50) NOT NULL DEFAULT '',
  `nrBlockFrom` int(11) NOT NULL DEFAULT '0',
  `nrBlockTo` int(11) NOT NULL DEFAULT '0',
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` char(50) NOT NULL DEFAULT '',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` char(50) NOT NULL DEFAULT '',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `television`
--

CREATE TABLE `television` (
  `id` int(11) NOT NULL,
  `name` char(150) NOT NULL DEFAULT '',
  `shortName` char(10) NOT NULL DEFAULT '',
  `note` char(150) NOT NULL DEFAULT '',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` char(50) NOT NULL DEFAULT '',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` char(50) NOT NULL DEFAULT '',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `television`
--

INSERT INTO `television` (`id`, `name`, `shortName`, `note`, `price`, `createDate`, `createUser`, `updateDate`, `updateUser`, `isDeleted`) VALUES
(1, '... bitte auswählen ...', '', '', '0.00', '2024-04-22 09:09:57', 'JANINA', '2024-04-22 09:09:57', 'JANINA', 0),
(2, 'Satellitenrundfunk', 'SAT TV', '', '0.00', '2024-04-22 09:09:57', 'JANINA', '2024-04-22 09:09:57', 'JANINA', 0),
(3, 'Internet Protocol Television', 'IP TV', 'geplant mit Preis 9.95 € pro Monat', '0.00', '2024-04-22 09:09:57', 'JANINA', '2024-04-22 09:09:57', 'JANINA', 1),
(4, 'TV-Anschluss DVB-S/ C', '', '', '4.50', '2024-05-04 14:28:17', 'JANINA', '2024-05-04 14:28:17', 'JANINA', 0);

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `asb_availability`
--
ALTER TABLE `asb_availability`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `asb_availability_x_customer`
--
ALTER TABLE `asb_availability_x_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `commissioned_house_types`
--
ALTER TABLE `commissioned_house_types`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `connection_data_holder`
--
ALTER TABLE `connection_data_holder`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `connection_point_types`
--
ALTER TABLE `connection_point_types`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `contract`
--
ALTER TABLE `contract`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `contract_categories`
--
ALTER TABLE `contract_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `contract_state`
--
ALTER TABLE `contract_state`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `contract_term`
--
ALTER TABLE `contract_term`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `contract_type`
--
ALTER TABLE `contract_type`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `contract_x_hardware`
--
ALTER TABLE `contract_x_hardware`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `contract_x_tariff_option`
--
ALTER TABLE `contract_x_tariff_option`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `customer_class`
--
ALTER TABLE `customer_class`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `customer_connection_requests`
--
ALTER TABLE `customer_connection_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `customer_ftth_request`
--
ALTER TABLE `customer_ftth_request`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `customer_x_technology`
--
ALTER TABLE `customer_x_technology`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `dataholder`
--
ALTER TABLE `dataholder`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `debator`
--
ALTER TABLE `debator`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `expansion_area`
--
ALTER TABLE `expansion_area`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `expansion_state`
--
ALTER TABLE `expansion_state`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `hardware`
--
ALTER TABLE `hardware`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `house_intro_types`
--
ALTER TABLE `house_intro_types`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `house_owner`
--
ALTER TABLE `house_owner`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `legal_form`
--
ALTER TABLE `legal_form`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `location_x_television`
--
ALTER TABLE `location_x_television`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `numerically`
--
ALTER TABLE `numerically`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `pdf_typ`
--
ALTER TABLE `pdf_typ`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `phone_numbers`
--
ALTER TABLE `phone_numbers`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `provider_change_order`
--
ALTER TABLE `provider_change_order`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `signature`
--
ALTER TABLE `signature`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `software`
--
ALTER TABLE `software`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `tariff`
--
ALTER TABLE `tariff`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `tariff_category`
--
ALTER TABLE `tariff_category`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `tariff_option`
--
ALTER TABLE `tariff_option`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `tariff_x_tariff_option`
--
ALTER TABLE `tariff_x_tariff_option`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `tariff_x_technology`
--
ALTER TABLE `tariff_x_technology`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `technology`
--
ALTER TABLE `technology`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `telecommunication_system`
--
ALTER TABLE `telecommunication_system`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `television`
--
ALTER TABLE `television`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT für Tabelle `asb_availability`
--
ALTER TABLE `asb_availability`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT für Tabelle `asb_availability_x_customer`
--
ALTER TABLE `asb_availability_x_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `bank`
--
ALTER TABLE `bank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT für Tabelle `commissioned_house_types`
--
ALTER TABLE `commissioned_house_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT für Tabelle `connection_data_holder`
--
ALTER TABLE `connection_data_holder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `connection_point_types`
--
ALTER TABLE `connection_point_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT für Tabelle `contract`
--
ALTER TABLE `contract`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `contract_categories`
--
ALTER TABLE `contract_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT für Tabelle `contract_state`
--
ALTER TABLE `contract_state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT für Tabelle `contract_term`
--
ALTER TABLE `contract_term`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT für Tabelle `contract_type`
--
ALTER TABLE `contract_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT für Tabelle `contract_x_hardware`
--
ALTER TABLE `contract_x_hardware`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `contract_x_tariff_option`
--
ALTER TABLE `contract_x_tariff_option`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=239;

--
-- AUTO_INCREMENT für Tabelle `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `customer_class`
--
ALTER TABLE `customer_class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT für Tabelle `customer_connection_requests`
--
ALTER TABLE `customer_connection_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `customer_ftth_request`
--
ALTER TABLE `customer_ftth_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `customer_x_technology`
--
ALTER TABLE `customer_x_technology`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `dataholder`
--
ALTER TABLE `dataholder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `debator`
--
ALTER TABLE `debator`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `expansion_area`
--
ALTER TABLE `expansion_area`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT für Tabelle `expansion_state`
--
ALTER TABLE `expansion_state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT für Tabelle `hardware`
--
ALTER TABLE `hardware`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT für Tabelle `house_intro_types`
--
ALTER TABLE `house_intro_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT für Tabelle `house_owner`
--
ALTER TABLE `house_owner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `legal_form`
--
ALTER TABLE `legal_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT für Tabelle `location`
--
ALTER TABLE `location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT für Tabelle `location_x_television`
--
ALTER TABLE `location_x_television`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `numerically`
--
ALTER TABLE `numerically`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT für Tabelle `pdf_typ`
--
ALTER TABLE `pdf_typ`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT für Tabelle `phone_numbers`
--
ALTER TABLE `phone_numbers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `provider_change_order`
--
ALTER TABLE `provider_change_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `service`
--
ALTER TABLE `service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT für Tabelle `signature`
--
ALTER TABLE `signature`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `software`
--
ALTER TABLE `software`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT für Tabelle `tariff`
--
ALTER TABLE `tariff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT für Tabelle `tariff_category`
--
ALTER TABLE `tariff_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT für Tabelle `tariff_option`
--
ALTER TABLE `tariff_option`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT für Tabelle `tariff_x_tariff_option`
--
ALTER TABLE `tariff_x_tariff_option`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT für Tabelle `tariff_x_technology`
--
ALTER TABLE `tariff_x_technology`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT für Tabelle `technology`
--
ALTER TABLE `technology`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT für Tabelle `telecommunication_system`
--
ALTER TABLE `telecommunication_system`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `television`
--
ALTER TABLE `television`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
