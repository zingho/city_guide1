-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 05. Mai 2018 um 20:47
-- Server-Version: 10.1.28-MariaDB
-- PHP-Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
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
  `Beschreibung` varchar(4362) DEFAULT NULL,
  `Maps` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Daten für Tabelle `staedte`
--

INSERT INTO `staedte` (`ID`, `Name`, `Bild`, `Beschreibung`, `Maps`) VALUES
(1, 'Barcelona', 'img/barcelona.jpg', 'Barcelona, die kosmopolitische Hauptstadt der spanischen Region Katalonien, ist für ihre Kunstwerke und Architektur bekannt. Die imposante Kirche Sagrada Família und andere Wahrzeichen der Moderne von der Hand des Künstlers Antoni Gaudí sind überall in der Stadt zu finden. Das Museu Picasso und die Fundació Joan Miró zeigen moderne Kunstwerke ihrer Namenspaten.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d47888.70523689268!2d2.1137486028646544!3d41.394849129617626!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x12a49816718e30e5%3A0x44b0fb3d4f47660a!2sBarcelona%2C+Provinz+Barcelona%2C+Spanien!5e0!3m2!1sde!2sch!4v1525534348664\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>'),
(2, 'Vancouver', 'img/vancouver.jpg', 'Vancouver, ein geschäftiger Seehafen an der Westküste in British Columbia, ist eine von Kanadas am dichtesten besiedelten und ethnisch vielfältigsten Städten. Als beliebte Filmkulisse ist es umgeben von Bergen und bietet auch eine blühende Kunst-, Theater- und Musikszene. Die Vancouver Art Gallery ist bekannt für ihre Werke von regionalen Künstlern, während das Museum of Anthropology einzigartige First Nations-Sammlungen zeigt.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d41663.71276638568!2d-123.15892321331131!3d49.25778617650056!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x548673f143a94fb3%3A0xbb9196ea9b81f38b!2sVancouver%2C+Britisch-Kolumbien%2C+Kanada!5e0!3m2!1sde!2sch!4v1525535267038\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>'),
(3, 'Mailand', 'img/mailand.jpg', 'Mailand, eine Metropole in der norditalienischen Lombardei, ist weltweit als Zentrum für Mode und Design bekannt. Zudem ist die Stadt Sitz der Mailänder Börse und der Finanzindustrie und bietet viele gehobene Restaurants sowie teure Boutiquen. Der gotische Mailänder Dom und das Kloster Santa Maria delle Grazie, in dem sich Leonardo da Vincis Wandgemälde „Das Abendmahl“ befindet, sind Ausdruck für die jahrhundertealte Kunst- und Kulturgeschichte der Stadt.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d44773.57163174013!2d9.142713019633165!3d45.462788699556775!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4786c1493f1275e7%3A0x3cffcd13c6740e8d!2sMailand%2C+Italien!5e0!3m2!1sde!2sch!4v1525535234626\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>'),
(4, 'Marseille', 'img/marseille.jpg', 'Marseille, eine Hafenstadt in Südfrankreich, ist schon seit seiner Gründung um 600 v. Chr. durch griechische Seefahrer ein wichtiges Zentrum für die Einwanderung und den Handel. Das Herz der Stadt ist der alte Hafen Vieux-Port, wo Fischer ihren Fang direkt an der Anlegestelle verkaufen. Die Basilika Notre-Dame de la Garde ist eine neuromanisch-byzantinische Kirche. Zu den modernen Wahrzeichen gehören der richtungsweisende Komplex Cité Radieuse von Le Corbusier und der Büroturm der CMA CGM von Zaha Hadid.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d92947.59869672125!2d5.310457337099229!3d43.2804941571883!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x12c9bf4344da5333%3A0x40819a5fd970220!2sMarseille%2C+Frankreich!5e0!3m2!1sde!2sch!4v1525535302844\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>'),
(5, 'Tokio', 'img/tokio.jpg', 'Tokio (älter auch Tokjo, Tokei, vor 1868 bekannt als Dscheddo, Yeddo, Yedo, Jeddo, Jedo, Edo, jap. 東京, Tōkyō Zum Anhören bitte klicken! [to̞ːkjo̞ː]) ist eine Weltstadt[3] in der Kantō-Region im Osten der japanischen Hauptinsel Honshū. Mit 9.467.490 Einwohnern ist sie nicht nur die bevölkerungsreichste Metropole des Landes, sondern als Sitz der japanischen Regierung und des Tennō auch die Hauptstadt Japans. Sie umfasst die 23 Bezirke auf dem Gebiet der 1943 als Verwaltungseinheit abgeschafften Stadt Tokio und ist damit keine eigene Gebietskörperschaft mehr; stattdessen bilden die Bezirke zusammen mit den Städten und Gemeinden der westlich gelegenen Tama-Region und den südlichen Izu- und Ogasawara-Inseln die Präfektur Tokio. Diese bildet wiederum das Zentrum der Metropolregion Tokio-Yokohama, in der mehr als 37 Millionen Menschen leben (Stand 2014), was die Region zum größten Ballungsraum der Welt macht.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d103716.60014837529!2d139.64034877035272!3d35.67346217260508!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x605d1b87f02e57e7%3A0x2e01618b22571b89!2sPr%C3%A4fektur+Tokio%2C+Japan!5e0!3m2!1sde!2sch!4v1525535331112\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>'),
(6, 'Sydney', 'img/sydney.jpg', 'Sydney ist die Hauptstadt von New South Wales und eine der größten Städte Australiens. Bekannt ist das am Wasser gelegene Opernhaus von Sydney mit seiner segelartigen Bauform. Der ausgedehnte Darling Harbour und der kleinere Hafen Circular Quay sind Zentren des urbanen Lebens am Wasser. Unweit von hier befinden sich die bogenförmige Harbour Bridge und die renommierten Royal Botanic Gardens. Vom Skywalk, der offenen Plattform des Sydney Tower, haben Besucher einen 360-Grad-Panoramablick auf die Stadt und ihre Vororte.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d212071.75340883352!2d150.7918943475723!3d-33.84787959030279!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6b129838f39a743f%3A0x3017d681632a850!2sSydney+New+South+Wales%2C+Australien!5e0!3m2!1sde!2sch!4v1525535357922\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>');

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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=530;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
