-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 02. Mai 2018 um 16:40
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
(1, 'Barcelona', 'http://ararattour.com/images/tour_gallery/Mediterranean12/barcelona.jpg', 'Barcelona, die kosmopolitische Hauptstadt der spanischen Region Katalonien, ist für ihre Kunstwerke und Architektur bekannt. Die imposante Kirche Sagrada Família und andere Wahrzeichen der Moderne von der Hand des Künstlers Antoni Gaudí sind überall in der Stadt zu finden. Das Museu Picasso und die Fundació Joan Miró zeigen moderne Kunstwerke ihrer Namenspaten.'),
(2, 'Vancouver', 'http://financingforum.com/wp-content/uploads/2017/10/03-1_737x426_acf_cropped.jpg', 'Vancouver, ein geschäftiger Seehafen an der Westküste in British Columbia, ist eine von Kanadas am dichtesten besiedelten und ethnisch vielfältigsten Städten. Als beliebte Filmkulisse ist es umgeben von Bergen und bietet auch eine blühende Kunst-, Theater- und Musikszene. Die Vancouver Art Gallery ist bekannt für ihre Werke von regionalen Künstlern, während das Museum of Anthropology einzigartige First Nations-Sammlungen zeigt.'),
(3, 'Mailand', 'https://c1.staticflickr.com/2/1443/25561979415_048507580d_b.jpg', 'Mailand, eine Metropole in der norditalienischen Lombardei, ist weltweit als Zentrum für Mode und Design bekannt. Zudem ist die Stadt Sitz der Mailänder Börse und der Finanzindustrie und bietet viele gehobene Restaurants sowie teure Boutiquen. Der gotische Mailänder Dom und das Kloster Santa Maria delle Grazie, in dem sich Leonardo da Vincis Wandgemälde „Das Abendmahl“ befindet, sind Ausdruck für die jahrhundertealte Kunst- und Kulturgeschichte der Stadt.'),
(4, 'Marseille', 'http://www.rblinternational.de/wp-content/uploads/2018/04/marseille2.jpg', 'Marseille, eine Hafenstadt in Südfrankreich, ist schon seit seiner Gründung um 600 v. Chr. durch griechische Seefahrer ein wichtiges Zentrum für die Einwanderung und den Handel. Das Herz der Stadt ist der alte Hafen Vieux-Port, wo Fischer ihren Fang direkt an der Anlegestelle verkaufen. Die Basilika Notre-Dame de la Garde ist eine neuromanisch-byzantinische Kirche. Zu den modernen Wahrzeichen gehören der richtungsweisende Komplex Cité Radieuse von Le Corbusier und der Büroturm der CMA CGM von Zaha Hadid.'),
(5, 'Tokyo', 'https://usa-news-headlines.com/wp-content/uploads/2017/12/TIME-Magazine-Top-Stories-1500x800.jpg', 'Tokio (älter auch Tokjo, Tokei, vor 1868 bekannt als Dscheddo, Yeddo, Yedo, Jeddo, Jedo, Edo, jap. 東京, Tōkyō Zum Anhören bitte klicken! [to̞ːkjo̞ː]) ist eine Weltstadt[3] in der Kantō-Region im Osten der japanischen Hauptinsel Honshū. Mit 9.467.490 Einwohnern ist sie nicht nur die bevölkerungsreichste Metropole des Landes, sondern als Sitz der japanischen Regierung und des Tennō auch die Hauptstadt Japans. Sie umfasst die 23 Bezirke auf dem Gebiet der 1943 als Verwaltungseinheit abgeschafften Stadt Tokio und ist damit keine eigene Gebietskörperschaft mehr; stattdessen bilden die Bezirke zusammen mit den Städten und Gemeinden der westlich gelegenen Tama-Region und den südlichen Izu- und Ogasawara-Inseln die Präfektur Tokio. Diese bildet wiederum das Zentrum der Metropolregion Tokio-Yokohama, in der mehr als 37 Millionen Menschen leben (Stand 2014), was die Region zum größten Ballungsraum der Welt macht.'),
(6, 'Sydney', 'http://www.bu.edu/abroad/files/2016/05/banner-sydney3.jpg', 'Sydney ist die Hauptstadt von New South Wales und eine der größten Städte Australiens. Bekannt ist das am Wasser gelegene Opernhaus von Sydney mit seiner segelartigen Bauform. Der ausgedehnte Darling Harbour und der kleinere Hafen Circular Quay sind Zentren des urbanen Lebens am Wasser. Unweit von hier befinden sich die bogenförmige Harbour Bridge und die renommierten Royal Botanic Gardens. Vom Skywalk, der offenen Plattform des Sydney Tower, haben Besucher einen 360-Grad-Panoramablick auf die Stadt und ihre Vororte.');

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
