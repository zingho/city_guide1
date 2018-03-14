-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 14. Mrz 2018 um 16:46
-- Server-Version: 10.1.21-MariaDB
-- PHP-Version: 7.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `city_guide`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `staedte`
--

CREATE TABLE `staedte` (
  `ID` int(11) NOT NULL,
  `Name` varchar(49) DEFAULT NULL,
  `Bild` varchar(141) DEFAULT NULL,
  `Beschreibung` varchar(4362) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Daten für Tabelle `staedte`
--

INSERT INTO `staedte` (`ID`, `Name`, `Bild`, `Beschreibung`) VALUES
(1, 'Barcelona', '', 'Barcelona, die kosmopolitische Hauptstadt der spanischen Region Katalonien, ist für ihre Kunstwerke und Architektur bekannt. Die imposante Kirche Sagrada Família und andere Wahrzeichen der Moderne von der Hand des Künstlers Antoni Gaudí sind überall in der Stadt zu finden. Das Museu Picasso und die Fundació Joan Miró zeigen moderne Kunstwerke ihrer Namenspaten.'),
(2, 'Vancouver', '', 'Vancouver, ein geschäftiger Seehafen an der Westküste in British Columbia, ist eine von Kanadas am dichtesten besiedelten und ethnisch vielfältigsten Städten. Als beliebte Filmkulisse ist es umgeben von Bergen und bietet auch eine blühende Kunst-, Theater- und Musikszene. Die Vancouver Art Gallery ist bekannt für ihre Werke von regionalen Künstlern, während das Museum of Anthropology einzigartige First Nations-Sammlungen zeigt.');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `staedte`
--
ALTER TABLE `staedte`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `staedte`
--
ALTER TABLE `staedte`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=529;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
