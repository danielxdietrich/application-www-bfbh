-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 28, 2021 at 10:54 AM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bfbh`
--

-- --------------------------------------------------------

--
-- Table structure for table `Dieta`
--

CREATE TABLE `Dieta` (
  `idDieta` int(11) NOT NULL,
  `kalorie` int(11) NOT NULL,
  `poniedzialek` int(11) NOT NULL,
  `wtorek` int(11) NOT NULL,
  `sroda` int(11) NOT NULL,
  `czwartek` int(11) NOT NULL,
  `piatek` int(11) NOT NULL,
  `sobota` int(11) NOT NULL,
  `niedziela` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `Dieta`
--

INSERT INTO `Dieta` (`idDieta`, `kalorie`, `poniedzialek`, `wtorek`, `sroda`, `czwartek`, `piatek`, `sobota`, `niedziela`) VALUES
(1, 1600, 1, 2, 3, 4, 5, 6, 7);

-- --------------------------------------------------------

--
-- Table structure for table `DietaDzien`
--

CREATE TABLE `DietaDzien` (
  `idDzien` int(11) NOT NULL,
  `sniadanie` int(11) NOT NULL,
  `lunch` int(11) NOT NULL,
  `obiad` int(11) NOT NULL,
  `kolacja` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `DietaDzien`
--

INSERT INTO `DietaDzien` (`idDzien`, `sniadanie`, `lunch`, `obiad`, `kolacja`) VALUES
(1, 1, 2, 3, 4),
(2, 5, 6, 7, 8),
(3, 9, 10, 11, 12),
(4, 9, 2, 7, 8),
(5, 1, 2, 3, 4),
(6, 5, 6, 7, 8),
(7, 9, 10, 11, 12);

-- --------------------------------------------------------

--
-- Table structure for table `Posilek`
--

CREATE TABLE `Posilek` (
  `idPosilek` int(11) NOT NULL,
  `nazwa` varchar(64) COLLATE utf8_polish_ci NOT NULL,
  `poraDnia` varchar(32) COLLATE utf8_polish_ci NOT NULL,
  `produkty` varchar(512) COLLATE utf8_polish_ci NOT NULL,
  `kalorie` int(11) NOT NULL,
  `bialko` int(11) NOT NULL,
  `tluszcze` int(11) NOT NULL,
  `weglowodany` int(11) NOT NULL,
  `przepis` varchar(1512) COLLATE utf8_polish_ci NOT NULL,
  `czas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `Posilek`
--

INSERT INTO `Posilek` (`idPosilek`, `nazwa`, `poraDnia`, `produkty`, `kalorie`, `bialko`, `tluszcze`, `weglowodany`, `przepis`, `czas`) VALUES
(1, 'Owsianka Chia', '??niadanie', '1 szklanka p??atk??w owsianych,</br>\r\n1 ??y??ka nasion chia,</br>\r\n??y??eczka syropu klonowego,</br>\r\nmleko,</br>\r\n1-2 owoce (jab??ko, ??liwka, gruszka).', 495, 20, 16, 50, 'Wszystkie sk??adniki wymiesza?? i odstawi??. Umyte i pokrojone na kawa??ki jab??ko posypa?? cynamonem i pola?? drug?? ??y??eczk?? . Sma??y?? na rozgrzanej patelni bez dodatku t??uszczu, mieszaj??c co jaki?? czas, a?? jab??ka zmi??kn?? (mo??na te?? ugotowa?? w rondelku z ma???? ilo??ci?? wody)Do owsianki prze??o??y?? jab??ka i ca??o???? umie??ci?? w lod??wce na noc.', 15),
(2, 'Wiosenna kanapka', 'Lunch', '2 kromki chleba razowego,</br>\r\nsa??ata rzymska,</br>\r\n2 opakowanie sera (bia??y/wiejski),</br>\r\npomidory koktajlowe,</br>\r\npapryka, rzodkiewka,</br>\r\nmas??o (opcjonalnie),</br>\r\ns??l i pieprz.', 237, 20, 16, 50, 'Wymieszaj serek z drobno pokrojonymi warzywami i po?????? na kanapce.', 5),
(3, 'Kotlecik z indyka', 'Obiad', '500g mi??sa z indyka,</br>\r\nprzyprawy (s??l, pieprz czarny, pieprz bia??y),</br>\r\n1 cukinia,</br>\r\n1 s??oik suszonych pomidor??w,</br>\r\n2 szklanki wody, p???? cebuli,</br>\r\n3 z??bki czosnku, oliwa, pietruszka.', 530, 40, 23, 38, 'Filet z indyka zmieli?? (mo??na kupi?? gotowe zmielone chude mi??so), doda?? odrobin?? soli, wla?? dwie ??y??ki bardzo zimnej wody i wyrobi?? mi??so. Cebul?? i czosnek obra??, posieka??. Cukini?? zetrze?? na tarce o grubych oczkach. Na patelni rozgrza?? oliw??, zeszkli?? cebul?? z czosnkiem (ale nie przypala??), po 2-3 minutach doda?? cukini??, ca??o???? poddusi?? 3 minuty, zdj???? z ognia, wystudzi??, doda?? do mi??sa razem z pokrojonymi drobno suszonymi pomidorami, doda?? posiekan?? natk??, doprawi?? pieprzem do smaku, ponownie mas?? wyrobi??. D??onie zwil??y?? i formowa?? kotleciki. Patelni?? posmarowa?? oliw??, rozgrza??. Sma??y?? na wolnym ogniu z ka??dej strony po kilka minut, przed spo??yciem upewni?? si??, ??e kotlety wewn??trz nie s?? surowe. Mo??na podawa?? z ziemniakami lub ry??em.', 50),
(4, 'Jajecznica', 'Kolacja', '2 jajka,</br>\r\nszczypiorek,</br>\r\ns??l,</br>\r\npieprz,</br>\r\nmas??o.', 320, 20, 9, 20, 'Szczypiorek posieka??. Jajka wbi?? do miseczki i wymiesza?? z sol??, pieprzem i ewentualnie suszonymi zio??ami.Na patelni rozpu??ci?? mas??o, wla?? mas?? jajeczn?? i sma??y?? do uzyskania ulubionej konsystencji.', 15),
(5, 'Placuszki z owocami', '??niadanie', 'M??ka pszenna pe??noziarnista 60g,</br>\r\nmleko 1,5% 100g,</br>\r\njajko 1 szt.</br>\r\nkakao 10g,</br>\r\nproszek do pieczenia 2g,</br>\r\noliwa 5g,</br>\r\nowoce jagodowe 150g.', 469, 20, 16, 50, 'Zmiksowa?? jajko, mleko, m??k?? i proszek. Odstawi?? na 15 minut. Sprawdzi?? konsystencj?? ciasta, w razie potrzeby rozrzedzi?? wod??. Sma??y?? niewielkie placuszki na oliwie. Podawa?? z owocami.', 45),
(6, 'Twar??g z owocami', 'Lunch', 'Twar??g chudy 100g,</br>\r\npomara??cza,</br>\r\nowoce jagodowe 250g.', 274, 23, 2, 27, 'Wymiesza?? wszystkie sk??adniki.', 3),
(7, 'Makaron z kurczakiem, bobem i pomidorkami', 'Obiad', 'Makaron 50g,</br>\r\nb??b 100g,</br>\r\npier?? z kurczaka 100g,</br>\r\npomidorki koktajlowe 200g,</br>\r\nczosnek 1 z??bek,</br>\r\nsk??rka z po??owy cytryny,</br>\r\noliwa 5g,</br>\r\np??atki dro??d??owe 10g.', 588, 41, 9, 61, 'Makaron ugotowa?? al dente. Posieka?? czosnek i podsma??y?? na oliwie ze sk??rk?? cytrynow??. Doda?? b??b oraz pokrojone pomidorki. Mi??so przyprawi?? i podsma??y?? pokrojone w kawa??ki. Wymiesza?? wszystkie sk??adniki. Posypa?? p??atkami i ponownie wymiesza??.', 60),
(8, 'Krem ze ??wie??ych pomidor??w', 'Kolacja', 'Pomidory ??wie??e 400g,</br>\r\ncebula 50g,</br>\r\nczosnek 1 z??bek,</br>\r\noliwa 10g,</br>\r\nmozzarella light 60g,</br>\r\nchleb ??ytni 30g (1 kromka),</br>\r\nnatka pietruszki 15g (opcjonalnie).', 360, 19, 17, 30, 'Pomidory przekroi?? i z cebul?? pola?? oliw??-piec piekarniku przez ok. 15 min. Pod koniec do??o??y?? czosnek. Po wyj??ciu warzyw ??? zblendowa?? ca??o???? na g??adki krem. Doprawi?? pieprzem, odrobin?? soli oraz ostr?? papryk??. Prze??o??y?? do miseczki, na wierzchu u??o??y?? plastry mozzarelli oraz bazyli?? lub natk?? pietruszki.', 35),
(9, 'Owsianka z jagodami', '??niadanie', 'Woda 1 szklanka Owoce 50g,</br>\r\nwi??rki kokosowe ??y??eczka,</br>\r\np??atki owsiane  5 ??y??ek.', 420, 10, 12, 52, '1. P??atki owsiane zalej wod??. Dodaj wi??rki kokosowe i wymieszaj.</br>\r\n2. Owsiank?? wylej do miseczki, posyp owocami. ', 15),
(10, 'Czerwone smoothie', 'Lunch', 'Truskawki, mro??one - 100g,</br>\r\nmaliny, mro??one - 60g,</br>\r\nbanan 1 sztuka,</br>\r\norzechy nerkowca 15g,</br>\r\nwoda 1/2 szklanki.', 380, 10, 12, 52, 'Zblenduj sk??adniki. Posyp ulubionymi owocami.', 10),
(11, 'Makaron penne z awokado i indykiem', 'Obiad', 'Makaron penne 1 szklanka,</br>\r\nawokado po??owa,</br>\r\npol??dwiczka z indyka,</br>\r\nbazylia,</br>\r\npietruszka', 530, 27, 47, 92, '1. Rozdrobnij dojrza??e awokado widelcem na g??adk?? mas??. Dopraw sol?? i przyprawami wg uznania.</br>\r\n2. Ugotuj makaron.</br>\r\n3. Pokrojone mi??so obtocz w przyprawie curry i usma?? na patelni grillowej.</br>\r\n4. Makaron wymieszaj z awokado, mi??sem. Posyp posiekan?? pietruszk??.</br>\r\n5. Udekoruj bazyli??. ', 60),
(12, 'Bak??a??an zapiekany z pomidorem', 'Kolacja', 'Pomidory z puszki (krojone) - 200g,</br>\r\noliwa z oliwek ??y??ka,</br>\r\nbak??a??an,</br>\r\npomidor 2 sztuki.', 588, 41, 9, 61, '1. Warzywa pokr??j w plastry.</br>\r\n2. U?????? wie??yczki z warzyw w naczyniu ??aroodpornym.</br>\r\n3. Pomidory z puszki zmiksuj i zalej nimi wie??yczki.</br>\r\n4. Piecz w piekarniku oko??o 20-30 minut w 180 stopniach C. ', 45);

-- --------------------------------------------------------

--
-- Table structure for table `Trening`
--

CREATE TABLE `Trening` (
  `idTrening` int(11) NOT NULL,
  `cel` tinyint(1) NOT NULL COMMENT '1: +, 0: -',
  `poniedzialek` varchar(512) COLLATE utf8_polish_ci NOT NULL,
  `wtorek` varchar(512) COLLATE utf8_polish_ci NOT NULL,
  `sroda` varchar(512) COLLATE utf8_polish_ci NOT NULL,
  `czwartek` varchar(512) COLLATE utf8_polish_ci NOT NULL,
  `piatek` varchar(512) COLLATE utf8_polish_ci NOT NULL,
  `sobota` varchar(512) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `Trening`
--

INSERT INTO `Trening` (`idTrening`, `cel`, `poniedzialek`, `wtorek`, `sroda`, `czwartek`, `piatek`, `sobota`) VALUES
(1, 1, '3x6 Standing biceps curl,</br>\r\n3x6 Standing hammer curl,</br>\r\n3x6 Incline dumbbell press,</br>\r\n3x6 Dip.\r\n', '6x10 Lateral raises,</br>\r\n6x10 Shrug,</br>\r\n3x8 Forearm curls,</br>\r\n3x8 Squat,</br>\r\n3x8 Calf raises', '6x8 Dumbbell rows,</br>\r\n3x8 Pullups,</br>\r\n6x8 Skull crushers', '6x10 Lateral raises,</br>\r\n6x10 Shrug,</br>\r\n3x8 Forearm curls,</br>\r\n3x8 Squat,</br>\r\n3x8 Calf raises,</br>', '3x6 Standing biceps curl,</br>\r\n3x6 Standing hammer curl,</br>\r\n3x6 Incline dumbbell press,</br>\r\n3x6 Dip\r\n', '6x8 Dumbbell rows,</br>\r\n3x8 Pullups,</br>\r\n6x8 Skull crushers');

-- --------------------------------------------------------

--
-- Table structure for table `Uzytkownik`
--

CREATE TABLE `Uzytkownik` (
  `idUzytkownik` int(11) NOT NULL,
  `imieNazwisko` varchar(128) COLLATE utf8_polish_ci NOT NULL,
  `email` varchar(32) COLLATE utf8_polish_ci NOT NULL,
  `haslo` varchar(256) COLLATE utf8_polish_ci NOT NULL,
  `waga` int(11) NOT NULL,
  `wzrost` int(11) NOT NULL,
  `bmi` int(11) NOT NULL,
  `dieta` int(3) NOT NULL COMMENT '1/2/3',
  `trening` int(11) NOT NULL COMMENT '1: +, 0: -'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `Uzytkownik`
--

INSERT INTO `Uzytkownik` (`idUzytkownik`, `imieNazwisko`, `email`, `haslo`, `waga`, `wzrost`, `bmi`, `dieta`, `trening`) VALUES
(1, 'Jan Kowalski', 'jan@mail.com', '$2y$10$6534zquCLww6tBSHLk9uWuIvoEUG2dWwzCMQqp4YbAf6OIyh7u9qq', 52, 156, 21, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Dieta`
--
ALTER TABLE `Dieta`
  ADD PRIMARY KEY (`idDieta`),
  ADD KEY `poniedzialek` (`poniedzialek`),
  ADD KEY `wtorek` (`wtorek`),
  ADD KEY `sroda` (`sroda`),
  ADD KEY `czwartek` (`czwartek`),
  ADD KEY `piatek` (`piatek`),
  ADD KEY `sobota` (`sobota`),
  ADD KEY `niedziela` (`niedziela`);

--
-- Indexes for table `DietaDzien`
--
ALTER TABLE `DietaDzien`
  ADD PRIMARY KEY (`idDzien`),
  ADD KEY `kolacja` (`kolacja`),
  ADD KEY `lunch` (`lunch`),
  ADD KEY `obiad` (`obiad`),
  ADD KEY `sniadanie` (`sniadanie`);

--
-- Indexes for table `Posilek`
--
ALTER TABLE `Posilek`
  ADD PRIMARY KEY (`idPosilek`);

--
-- Indexes for table `Trening`
--
ALTER TABLE `Trening`
  ADD PRIMARY KEY (`idTrening`);

--
-- Indexes for table `Uzytkownik`
--
ALTER TABLE `Uzytkownik`
  ADD PRIMARY KEY (`idUzytkownik`),
  ADD KEY `dieta` (`dieta`),
  ADD KEY `trening` (`trening`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Dieta`
--
ALTER TABLE `Dieta`
  MODIFY `idDieta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `DietaDzien`
--
ALTER TABLE `DietaDzien`
  MODIFY `idDzien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `Posilek`
--
ALTER TABLE `Posilek`
  MODIFY `idPosilek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `Trening`
--
ALTER TABLE `Trening`
  MODIFY `idTrening` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `Uzytkownik`
--
ALTER TABLE `Uzytkownik`
  MODIFY `idUzytkownik` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Dieta`
--
ALTER TABLE `Dieta`
  ADD CONSTRAINT `Dieta_ibfk_1` FOREIGN KEY (`poniedzialek`) REFERENCES `DietaDzien` (`idDzien`),
  ADD CONSTRAINT `Dieta_ibfk_2` FOREIGN KEY (`wtorek`) REFERENCES `DietaDzien` (`idDzien`),
  ADD CONSTRAINT `Dieta_ibfk_3` FOREIGN KEY (`sroda`) REFERENCES `DietaDzien` (`idDzien`),
  ADD CONSTRAINT `Dieta_ibfk_4` FOREIGN KEY (`czwartek`) REFERENCES `DietaDzien` (`idDzien`),
  ADD CONSTRAINT `Dieta_ibfk_5` FOREIGN KEY (`piatek`) REFERENCES `DietaDzien` (`idDzien`),
  ADD CONSTRAINT `Dieta_ibfk_6` FOREIGN KEY (`sobota`) REFERENCES `DietaDzien` (`idDzien`),
  ADD CONSTRAINT `Dieta_ibfk_7` FOREIGN KEY (`niedziela`) REFERENCES `DietaDzien` (`idDzien`);

--
-- Constraints for table `DietaDzien`
--
ALTER TABLE `DietaDzien`
  ADD CONSTRAINT `DietaDzien_ibfk_1` FOREIGN KEY (`kolacja`) REFERENCES `Posilek` (`idPosilek`),
  ADD CONSTRAINT `DietaDzien_ibfk_2` FOREIGN KEY (`lunch`) REFERENCES `Posilek` (`idPosilek`),
  ADD CONSTRAINT `DietaDzien_ibfk_3` FOREIGN KEY (`obiad`) REFERENCES `Posilek` (`idPosilek`),
  ADD CONSTRAINT `DietaDzien_ibfk_4` FOREIGN KEY (`sniadanie`) REFERENCES `Posilek` (`idPosilek`);

--
-- Constraints for table `Uzytkownik`
--
ALTER TABLE `Uzytkownik`
  ADD CONSTRAINT `Uzytkownik_ibfk_1` FOREIGN KEY (`dieta`) REFERENCES `Dieta` (`idDieta`),
  ADD CONSTRAINT `Uzytkownik_ibfk_2` FOREIGN KEY (`trening`) REFERENCES `Trening` (`idTrening`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
