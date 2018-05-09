-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 09. Mai 2018 um 16:27
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
CREATE DATABASE IF NOT EXISTS `city_guide` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `city_guide`;

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
(1, 'Barcelona', 'img/barcelona.jpg', 'Barcelona ist die Hauptstadt Kataloniens und nach Madrid die zweitgrößte Stadt Spaniens. Sie liegt am Mittelmeer, circa 120 Kilometer südlich der Pyrenäen und der Grenze zu Frankreich. Barcelona ist Verwaltungssitz der gleichnamigen Provinz und der Comarca Barcelonès.\r\nInnerhalb des Stadtgebietes leben etwa 1,6 Millionen Menschen. Damit ist Barcelona die elftgrößte Gemeinde der Europäischen Union, nach Hamburg die zweitgrößte, die nicht die Hauptstadt eines Mitgliedstaates ist, und nach Paris die am zweitdichtesten besiedelte Millionenstadt Europas. Zusammen mit den in der Àrea Metropolitana de Barcelona zusammengeschlossenen Gemeinden der Agglomerationbeträgt die Einwohnerzahl 3,16 Millionen. Im weiteren Einzugsbereich der Metropolregion (Àmbit Metropolità de Barcelona) leben insgesamt 4,86 Millionen Menschen. Mit jährlich mehr als sieben Millionen Touristen aus dem Ausland zählt Barcelona überdies zu den drei meistbesuchten Städten Europas.\r\n', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d47888.70523689268!2d2.1137486028646544!3d41.394849129617626!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x12a49816718e30e5%3A0x44b0fb3d4f47660a!2sBarcelona%2C+Provinz+Barcelona%2C+Spanien!5e0!3m2!1sde!2sch!4v1525534348664\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>'),
(2, 'Vancouver', 'img/vancouver.jpg', 'Vancouver ist eine Stadt im Südwesten von British Columbia an der Westküste Kanadas. Sie liegt zwischen der Straße von Georgia und den Coast Mountains, rund 45 Kilometer nordwestlich der Grenze zu den USA. Die Stadt gehört zum Regionaldistrikt Metro Vancouver, der mit 2.463.431 Einwohnern die größte Metropolregion Westkanadas und die drittgrößte des Landes bildet. Die Bevölkerungszahl der eigentlichen Stadt Vancouver beträgt 631.486. Benannt ist die Stadt nach dem britischen Kapitän George Vancouver, der die Region Ende des 18. Jahrhunderts erforschte und vermaß. Der Name Vancouver selbst stammt vom niederländischen „van Coevorden“, abgeleitet von der Stadt Coevorden.\r\nDie Stadt entstand in den 1860er Jahren als Folge der Einwanderungswelle während des Fraser-Canyon-Goldrauschs und entwickelte sich nach der Eröffnung der transkontinentalen Eisenbahn im Jahr 1887 innerhalb weniger Jahrzehnte von einer kleinen Sägewerkssiedlung zu einer Metropole. Die Wirtschaft basierte zu Beginn auf der Ausbeutung der natürlichen Ressourcen von British Columbia: Forstwirtschaft, Bergbau, Fischereiund Landwirtschaft. Der Hafen Vancouver erlangte nach der Eröffnung des Panamakanals internationale Bedeutung. Er ist heute der größte in Kanada und exportiert mehr Güter als jeder andere Hafen in Nordamerika.\r\nVancouver wandelte sich mit der Zeit zu einem Dienstleistungszentrum und (insbesondere nach der Weltausstellung Expo 86) zu einem Reiseziel für Touristen. Die Stadt ist darüber hinaus hinter Los Angeles und New York der drittwichtigste Standort der nordamerikanischen Filmindustrie und wird daher auch als „Hollywood North“ bezeichnet.\r\nVancouver veranstaltete vom 12. bis 28. Februar 2010 die XXI. Olympischen Winterspiele. Einige Wettbewerbe der Spiele fanden im 125 Kilometer von Vancouver entfernten Whistler statt. Nach Montreal im Jahr 1976 und Calgary im Jahr 1988 war Vancouver die dritte kanadische Stadt, die Olympische Spiele veranstaltet hat.\r\n', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d41663.71276638568!2d-123.15892321331131!3d49.25778617650056!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x548673f143a94fb3%3A0xbb9196ea9b81f38b!2sVancouver%2C+Britisch-Kolumbien%2C+Kanada!5e0!3m2!1sde!2sch!4v1525535267038\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>'),
(3, 'Mailand', 'img/mailand.jpg', 'Mailand ist mit 1,3 Millionen Einwohnern die zweitgrößte Stadt Italiens und Hauptstadt der Region Lombardei sowie der Metropolitanstadt Mailand. Die Metropolregion war 2006 mit 7,4 Millionen Einwohnern der größte italienische Ballungsraum. \r\nEinst eine Gründung keltischer Siedler, erlebte die Stadt im Römischen Reich einen raschen Aufschwung. Mailand unterstand in seiner Geschichte dem Einfluss deutscher, französischer und österreichischer Kaiser und wuchs nach der Einigung Italiens zur größten Industriestadt des Landes. Sie ist heute die führende Kultur-, Medien- und Modemetropole Italiens, eine Universitätsstadt und ein internationaler Finanzplatz als Sitz der Italienischen Börse. Sie beherbergt ein Weltkulturerbe, historisch bedeutsame Bauwerke und vielfältige Kunstschätze, die mehrere Millionen Touristen pro Jahr anziehen. Die Messestadt ist dank ihrer verkehrsgünstigen Lage in der oberitalienischen Po-Ebene ein Knotenpunkt des Schienen- und Autobahnnetzes und zweitgrößtes Luftfahrtdrehkreuz Italiens mit drei internationalen Flughäfen.\r\n', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d44773.57163174013!2d9.142713019633165!3d45.462788699556775!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4786c1493f1275e7%3A0x3cffcd13c6740e8d!2sMailand%2C+Italien!5e0!3m2!1sde!2sch!4v1525535234626\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>'),
(4, 'Marseille', 'img/marseille.jpg', 'Marseille ist die wichtigste französische und eine bedeutende europäische Hafenstadt. Sie liegt am Golfe du Lion, einer Mittelmeerbucht. Die Stadt, deren Einwohner sich Marseillais nennen, ist Hauptstadt des Départements Bouches-du-Rhône in der Region Provence-Alpes-Côte d’Azur. Marseille ist mit 861.635 Einwohnern (Stand 1. Januar 2015) nach Paris die zweitgrößte Stadt Frankreichs. Die Metropolregion zählt nach Eurostat-Definition rund 3,05 Mio. Einwohner. \r\nMarseille war 2013 gemeinsam mit der slowakischen Stadt Košice Kulturhauptstadt Europas.\r\n\r\nMarseille liegt zwischen 0 und 652 m (12 m am offiziellen Zentrum Noailles) hoch. Das 240 km² umfassende Stadtgebiet (mehr als doppelt so groß wie Paris) umfasst neben dem bebauten Gebiet auch weite Naturflächen, vor allem Gebirge. Die Stadt wird im Westen begrenzt durch das Mittelmeer, im Norden durch die Gebirge Chaîne de l’Estaque und Chaîne de l\'Etoile (mit dem Gipfel des l\'Etoile als höchstem Punkt der Stadt), im Osten vom Garlaban-Massiv, im Südosten vom Saint-Cyr-Massiv und im Süden vom Massif des Calanques.\r\nDurch die Lage herrscht in Marseille ein mediterranes Klima, das sehr sonnenreich und regenarm ist. Grund dafür sind auch die oft starken Winde, vor allem der Mistral, weshalb das Klima trotz der südlichen Lage manchmal rau sein kann.\r\n', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d92947.59869672125!2d5.310457337099229!3d43.2804941571883!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x12c9bf4344da5333%3A0x40819a5fd970220!2sMarseille%2C+Frankreich!5e0!3m2!1sde!2sch!4v1525535302844\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>'),
(5, 'Tokio', 'img/tokio.jpg', 'Tokio vor 1868 bekannt als Dscheddo ist eine Weltstadt in der Kantō-Region im Osten der japanischen Hauptinsel Honshū. Mit 9.508.776 Einwohnern ist sie nicht nur die bevölkerungsreichste Metropole des Landes, sondern als Sitz der japanischen Regierung und des Tennō auch die Hauptstadt Japans. Sie umfasst die 23 Bezirke auf dem Gebiet der 1943 als Verwaltungseinheit abgeschafften Stadt Tokio und ist damit keine eigene Gebietskörperschaft mehr; stattdessen bilden die Bezirke zusammen mit den Städten und Gemeinden der westlich gelegenen Tama-Region und den südlichen Izu- und Ogasawara-Inseln die Präfektur Tokio. Diese bildet wiederum das Zentrum der Metropolregion Tokio-Yokohama, in der mehr als 37 Millionen Menschen leben (Stand 2014), was die Region zum größten Ballungsraum der Welt macht.\r\nDie Stadtgeschichte beginnt im Jahr 1446, als Ōta Dōkan in einem Sumpfgebiet am Nordufer der heutigen Bucht von Tokio mit dem Bau der Burg Edo begann, umgeben von einigen Fischerdörfern. 1590 ging diese Burg an Tokugawa Ieyasu, der hier nach seinem Sieg in der Schlacht von Sekigahara sein neues Shōgunat und damit die Edo-Zeit begründete. Edo wurde neben Kyōto zum politischen und kulturellen Zentrum des Landes. Mit der Meiji-Restauration 1868 wurde das Shōgunat abgeschafft und der Sitz des Tennō nach Edo verlegt, die Burg wurde zum Kaiserpalast und Edo bekam seinen neuen Namen Tokio, der „Östliche Hauptstadt“ bedeutet. Von da an wuchs auch die Bevölkerung der Stadt, die bereits um 1910 mit rund zwei Millionen Einwohnern zu den größten der Welt zählte. Im Zweiten Weltkrieg war Tokio zahlreichen Luftangriffen durch die USA ausgesetzt, bei denen rund die Hälfte der Stadtfläche zerstört wurde. Nach dem Ende der amerikanischen Besatzungszeit folgte ein rasanter wirtschaftlicher Aufschwung, einhergehend mit einem erneuten Bevölkerungszuwachs.\r\nTokio ist heute das Industrie-, Handels-, Bildungs- und Kulturzentrum Japans mit zahlreichen Universitäten, Hochschulen, Forschungsinstituten, Theatern und Museen. Mit den Flughäfen Narita und Haneda und als Ausgangspunkt der meisten Shinkansen-Linien ist es auch das Verkehrszentrum des Landes. Der Finanzplatz Tokio ist nicht nur der größte Japans, sondern zählt neben London, New York und Hongkong auch zu den fünf größten der Welt. Zudem weist die Stadt ein hohes Preisniveau auf und lag in einer Studie 2014 auf Platz 9 der teuersten Städte weltweit.[4][5] Neben modernen Sehenswürdigkeiten wie dem Tokyo Tower oder Tokyo Skytreebietet sie auch historische Anlagen wie die Kaiserlichen Gärten in Chiyoda, den Ueno-Park oder den Asakusa-Kannon-Tempel. In den vergangenen Jahren wurde Tokio zu einem zunehmend beliebten Tourismusziel und befindet sich mit jährlich bis zu acht Millionen Besuchern aus dem Ausland unter den 20 meistbesuchten Städten.\r\n', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d103716.60014837529!2d139.64034877035272!3d35.67346217260508!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x605d1b87f02e57e7%3A0x2e01618b22571b89!2sPr%C3%A4fektur+Tokio%2C+Japan!5e0!3m2!1sde!2sch!4v1525535331112\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>'),
(6, 'Sydney', 'img/sydney.jpg', 'Sydney ist die Hauptstadt des australischen Bundesstaates New South Wales und mit 5 Millionen Einwohnern die größte Stadt in Australien.\r\nSydney wurde am 26. Januar 1788 gegründet und ist heute das Industrie-, Handels- und Finanzzentrum Australiens und ein wichtiger Tourismusort. Auch zahlreiche Universitäten, Museen und Galerien befinden sich hier. Sydney ist Sitz des römisch-katholischen Erzbistums Sydney und der Diözese Sydney der Anglican Church of Australia.\r\nDie Stadt liegt an der Ostküste Australiens am Pazifischen Ozean durchschnittlich drei Meter über dem Meeresspiegel. Das Stadtgebiet (Urbanized Area) hat eine Fläche von 1664 Quadratkilometer. Der Port Jackson bildet mit einer Fläche von 50 Quadratkilometern und 19 Kilometer Länge den Hauptarm und zugleich den natürlichen Hafen Sydneys. Von ihm zweigen weitere Meeresarme wie der Middle Harbour ab.\r\nDie Metropolregion (Sydney Metropolitan Area) umfasst eine Fläche von 12.138 Quadratkilometer. Sie reicht vom Hawkesbury River im Norden bis jenseits der Botany Bay im Süden und von den Blue Mountains im Westen bis zum Pazifischen Ozean im Osten.\r\nSydney erstreckt sich über zwei geographische Regionen. Südlich und westlich des Hafens liegt der flache bis leicht hügelige Cumberland Plain. Nördlich des Hafens befindet sich das Hornsby Plateau, ein bis zu 200 Meter hohes Hügelland, das von bewaldeten Tälern durchzogen ist. Auf dem Stadtgebiet befinden sich verschiedene Nationalparks und über 70 verschiedene Strände, darunter die weltbekannten und besonders bei Surfern beliebten Strände Bondi Beach und Manly Beach.\r\n', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d212071.75340883352!2d150.7918943475723!3d-33.84787959030279!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6b129838f39a743f%3A0x3017d681632a850!2sSydney+New+South+Wales%2C+Australien!5e0!3m2!1sde!2sch!4v1525535357922\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>');

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
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
