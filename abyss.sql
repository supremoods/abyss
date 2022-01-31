-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 31, 2022 at 12:37 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `abyss`
--

-- --------------------------------------------------------

--
-- Table structure for table `abyss_user`
--

CREATE TABLE `abyss_user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `profileImage` varchar(255) DEFAULT NULL,
  `coverProfile` varchar(255) DEFAULT NULL,
  `checkArtist` varchar(255) DEFAULT NULL,
  `birthDay` varchar(255) DEFAULT NULL,
  `Level` varchar(255) DEFAULT NULL,
  `Location` varchar(255) DEFAULT NULL,
  `Specialty` varchar(255) DEFAULT NULL,
  `Pronouns` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `abyss_user`
--

INSERT INTO `abyss_user` (`id`, `username`, `email`, `password`, `profileImage`, `coverProfile`, `checkArtist`, `birthDay`, `Level`, `Location`, `Specialty`, `Pronouns`) VALUES
(1, 'supremood', 'lappay.john@gmail.com', 'supremo25', '86971185_2680674678717824_4104365190093471744_n.jpg', 'meteor_shower_by_t1na_denymcu-fullview.jpg', '', '', '', '', '', ''),
(2, 'supremood', 'b1ngu@gmail.com', 'b1nguMachaLover', '86971185_2680674678717824_4104365190093471744_n.jpg', 'meteor_shower_by_t1na_denymcu-fullview.jpg', 'Artist', '2000-12-13', 'Student', 'Philippines', 'Artisan Crafts', 'She/Her'),
(3, 'Laghrian', 'Laghrian@gmail.com', 'supremo25', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(4, 'tigaer', 'tigaer@gmail.com', 'tigaertigaer', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(5, 'PSK-Projekt4D', 'PSK-Projekt4D@gmail.com', 'PSK-Projekt4D', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(6, 'pjacubinas', 'pjacubinas@gmail.com', 'pjacubinas', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(7, 'Gwasanee', 'Gwasanee@gmail.com', 'Gwasanee', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(8, 'Siamon89', 'Siamon89@gmail.com', 'Siamon89', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(9, 'SirTancrede', 'SirTancrede@gmail.com', 'SirTancrede', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(10, 'QuantumStarBox', 'QuantumStarBox@gmail.com', 'QuantumStarBox', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(11, 'LadyDeuce', 'LadyDeuce@gmail.com', 'LadyDeuce', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(12, 'zachrobinson', 'zachrobinson@gmail.com', 'zachrobinson', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(13, 'Allagar', 'Allagar@gmail.com', 'Allagar', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(14, 'AlynSpiller', 'AlynSpiller@gmail.com', 'AlynSpiller', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(15, 'Aspidal', 'Aspidal@gmail.com', 'Aspidal', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(16, 'Bullstormparty', 'Bullstormparty@gmail.com', 'Bullstormparty', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(17, 'Chander-lieve', 'Chanderlieve@gmail.com', 'Chander-lieve', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(18, 'chiseshan', 'chiseshan@gmail.com', 'chiseshan', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(19, 'Ereyz', 'Ereyz@gmail.com', 'Ereyz', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(20, 'FawnPetals', 'FawnPetals@gmail.com', 'FawnPetals', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(21, 'gigiEDT', 'gigiEDT@gmail.com', 'gigiEDT', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(22, 'GilSakura', 'GilSakura@gmail.com', 'GilSakura', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(23, 'GoldenDruid', 'GoldenDruid@gmail.com', 'GoldenDruid', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(24, 'JustyNadura', 'JustyNadura@gmail.com', 'JustyNadura', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(25, 'Juukah', 'Juukah@gmail.com', 'Juukah', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(26, 'MizoreBusujima', 'MizoreBusujima@gmail.com', 'MizoreBusujima', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(27, 'nashiepotato', 'nashiepotato@gmail.com', 'nashiepotato', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(28, 'Nat10370', 'Nat10370@gmail.com', 'Nat10370', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(29, 'PersN1ck', 'PersN1ck@gmail.com', 'PersN1ck', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(30, 'Pinlin', 'Pinlin@gmail.com', 'Pinlin', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(31, 'Rakimou', 'Rakimou@gmail.com', 'Rakimou', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(32, 'RoseRedTiger', 'RoseRedTiger@gmail.com', 'RoseRedTiger', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(33, 'RoxsanKleit', 'RoxsanKleit@gmail.com', 'RoxsanKleit', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(34, 'RuberaUnic', 'RuberaUnic@gmail.com', 'RuberaUnic', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(35, 'sandara', 'sandara@gmail.com', 'sandara', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(36, 'Seyumei', 'Seyumei@gmail.com', 'Seyumei', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(37, 'Shwonky', 'Shwonky@gmail.com', 'Shwonky', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(38, 'Solchan', 'Solchan@gmail.com', 'Solchan', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(39, 'TheVictorAdame', 'TheVictorAdame@gmail.com', 'TheVictorAdame', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(40, 'x-Celebril-x', 'xCelebrilx@gmail.com', 'x-Celebril-x', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(41, 'Yesterlove', 'Yesterlove@gmail.com', 'Yesterlove', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(42, 'HaKhalifa', 'HaKhalifa@gmail.com', 'HaKhalifa', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(43, 'Hekkoto', 'Hekkoto@gmail.com', 'Hekkoto', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(44, 'Glasshaus', 'Glasshaus@gmail.com', 'Glasshaus', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(45, 'Mintflakeid', 'Mintflakeid@gmail.com', 'Mintflakeid', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(46, 'ChrisNazgul', 'ChrisNazgul@gmail.com', 'ChrisNazgul', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(47, 'niivu', 'niivu@gmail.com', 'niivu', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(48, 'WatchTheSkiies', 'WatchTheSkiies@gmail.com', 'WatchTheSkiies', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(49, 'Adni18', 'Adni18@gmail.com', 'Adni18', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(50, 'LukePerceptions', 'LukePerceptions@gmail.com', 'LukePerceptions', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(51, 'SaturnineRemnant', 'SaturnineRemnant@gmail.com', 'SaturnineRemnant', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(52, 'peazecy', 'peazecy@gmail.com', 'peazecy', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(53, 'AlbinoFlowers', 'AlbinoFlowers@gmail.com', 'AlbinoFlowers', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(54, 'Amenorium', 'Amenorium@gmail.com', 'Amenorium', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(55, 'WolsealMI', 'WolsealMI@gmail.com', 'WolsealMI', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(56, 'PhloxeButt', 'PhloxeButt@gmail.com', 'PhloxeButt', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(57, 'Rufsam', 'Rufsam@gmail.com', 'Rufsam', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(58, 'Scribblespider', 'Scribblespider@gmail.com', 'Scribblespider', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(59, 'kaashigore', 'kaashigore@gmail.com', 'SaturnineRekaashigoremnant', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(60, 'Fenglingling43Hrs', 'Fenglingling43Hrs@gmail.com', 'Fenglingling43Hrs', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(61, 'Plbike', 'Plbike@gmail.com', 'Plbike', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(62, 'StudioDA', 'StudioDA@gmail.com', 'StudioDA', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(63, 'IllustrativeMagicka', 'IllustrativeMagicka@gmail.com', 'IllustrativeMagicka', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(64, 'savvypalette', 'savvypalette@gmail.com', 'savvypalette', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(65, 'Victorez', 'Victorez@gmail.com', 'Victorez', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(66, 'Novakovskaya', 'Novakovskaya@gmail.com', 'Novakovskaya', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(67, 'Raon19', 'Raon19@gmail.com', 'Raon19', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(68, 'Evangeline40003', 'Evangeline40003@gmail.com', 'Evangeline40003', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(69, 'flavinethylston', 'flavinethylston@gmail.com', 'flavinethylston', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(70, 'BiggyBungalo', 'BiggyBungalo@gmail.com', 'BiggyBungalo', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(71, 'TristanKendell', 'TristanKendell@gmail.com', 'TristanKendell', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(72, 'RosmanPL', 'RosmanPL@gmail.com', 'RosmanPL', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(73, 'sakamina', 'sakamina@gmail.com', 'sakamina', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(74, 'Remarin', 'Remarin@gmail.com', 'Remarin', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(75, 'ArthurBn', 'ArthurBn@gmail.com', 'ArthurBn', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(76, 'Chanderlieve', 'Chanderlieve@gmail.com', 'Chanderlieve', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(77, 'Zarory', 'Zarory@gmail.com', 'Zarory', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(78, 'ATArts', 'ATArts@gmail.com', 'ATArts', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(79, 'empalu', 'empalu@gmail.com', 'empalu', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(80, 'Cutiezor', 'Cutiezor@gmail.com', 'Cutiezor', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(81, 'fooyee', 'fooyee@gmail.com', 'fooyee', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(82, 'donchild', 'donchild@gmail.com', 'donchild', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(83, 'ashpwright', 'ashpwright@gmail.com', 'ashpwright', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(84, 'CulpeoFox', 'CulpeoFox@gmail.com', 'CulpeoFox', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(85, 'Esperoart', 'Esperoart@gmail.com', 'Esperoart', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(86, 'archiwyzard', 'archiwyzard@gmail.com', 'archiwyzard', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(87, 'drachenmagier', 'drachenmagier@gmail.com', 'drachenmagier', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(88, 'Tvonn9', 'Tvonn9@gmail.com', 'Tvonn9', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(89, 'MizukiTA', 'MizukiTA@gmail.com', 'MizukiTA', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(90, 'Swirlything', 'Swirlything@gmail.com', 'Swirlything', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(91, 'ARTISTSpencerDerry', 'ARTISTSpencerDerry@gmail.com', 'ARTISTSpencerDerry', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(92, 'Leonidafremov', 'Leonidafremov@gmail.com', 'Leonidafremov', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(93, 'worldofcreativeart', 'worldofcreativeart@gmail.com', 'worldofcreativeart', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(94, 'KatyLipscomb', 'KatyLipscomb@gmail.com', 'KatyLipscomb', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(95, 'wlop', 'wlop@gmail.com', 'wlop', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(96, 'AtomiccircuS', 'AtomiccircuS@gmail.com', 'AtomiccircuS', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(97, 'TinyTruc', 'TinyTruc@gmail.com', 'TinyTruc', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(98, 'alrun-art', 'alrun-art@gmail.com', 'alrun-art', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(99, 'Kuvshinov-Ilya', 'Kuvshinov-Ilya@gmail.com', 'Kuvshinov-Ilya', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(100, 'yuumei', 'yuumei@gmail.com', 'yuumei', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(101, 'wataboku', 'wataboku@gmail.com', 'wataboku', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(102, 'marvelmania', 'marvelmania@gmail.com', 'marvelmania', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(103, 'MikaelWang', 'MikaelWang@gmail.com', 'MikaelWang', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(104, 'Sa-Dui', 'Sa-Dui@gmail.com', 'Sa-Dui', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(105, 'Nirozozo', 'Nirozozo@gmail.com', 'Nirozozo', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(106, 'ADPong', 'ADPong@gmail.com', 'ADPong', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(107, 'Domax-art', 'Domax-art@gmail.com', 'Domax-art', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(108, 'lukesChillArt666', 'lukesChillArt666@gmail.com', 'lukesChillArt666', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(109, 'r-trigger', 'r-trigger@gmail.com', 'r-trigger', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(110, 'Kaizoku-hime', 'Kaizoku-hime@gmail.com', 'Kaizoku-hime', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(111, 'young-street', 'young-street@gmail.com', 'young-street', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(112, 'Kibbitzer', 'Kibbitzer@gmail.com', 'Kibbitzer', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(113, 'Sellenin', 'Sellenin@gmail.com', 'Sellenin', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(114, 'twin-tail', 'twin-tail@gmail.com', 'twin-tail', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(115, 'ryky', 'ryky@gmail.com', 'ryky', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(116, 'Anastasia-berry', 'Anastasia-berry@gmail.com', 'Anastasia-berry', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(117, '', 'wlop@gmail.com', 'wlop', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(118, 'Kibbitzer', 'Kibbitzer@gmail.com', 'Kibbitzer', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(119, 'rohioart', 'rohioart@gmail.com', 'rohioart', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(120, 'rika-dono', 'rika-dono@gmail.com', 'rika-dono', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(121, 'jiuge', 'jiuge@gmail.com', 'jiuge', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', ''),
(122, 'NinAcTi0N', 'NinAcTi0N@gmail.com', 'NinAcTi0N', 'avatar.png', 'sisu_bg-min.png', NULL, NULL, NULL, NULL, NULL, NULL),
(123, 'queen-of-kinkiness', 'queen-of-kinkiness@gmail.com', 'queen-of-kinkiness', 'avatar.png', 'sisu_bg-min.png', NULL, NULL, NULL, NULL, NULL, NULL),
(124, 'Buba54', 'Buba54@gmail.com', 'Buba54', 'avatar.png', 'sisu_bg-min.png', NULL, NULL, NULL, NULL, NULL, NULL),
(125, 'A-I-K-art', 'A-I-K-art@gmail.com', 'A-I-K-art', 'avatar.png', 'sisu_bg-min.png', NULL, NULL, NULL, NULL, NULL, NULL),
(126, 'dragomaster767', 'dragomaster767@gmail.com', 'dragomaster767', 'avatar.png', 'sisu_bg-min.png', NULL, NULL, NULL, NULL, NULL, NULL),
(127, 'Phyllite', 'Phyllite@gmail.com', 'Phyllite', 'avatar.png', 'sisu_bg-min.png', NULL, NULL, NULL, NULL, NULL, NULL),
(128, 'NKSTUDIODIGITAL', 'NKSTUDIODIGITAL@gmail.com', 'NKSTUDIODIGITAL', 'avatar.png', 'sisu_bg-min.png', NULL, NULL, NULL, NULL, NULL, NULL),
(129, 'Webmegami', 'Webmegami@gmail.com', 'Webmegami', 'avatar.png', 'sisu_bg-min.png', NULL, NULL, NULL, NULL, NULL, NULL),
(130, 'FeatheredRoblox', 'FeatheredRoblox@gmail.com', 'FeatheredRoblox', 'avatar.png', 'sisu_bg-min.png', NULL, NULL, NULL, NULL, NULL, NULL),
(131, 'Cutekitten19', 'Cutekitten19@gmail.com', 'Cutekitten19', 'avatar.png', 'sisu_bg-min.png', NULL, NULL, NULL, NULL, NULL, NULL),
(132, 'RainbowPhilosopher', 'RainbowPhilosopher@gmail.com', 'RainbowPhilosopher', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(133, 'sambeawesome', 'sambeawesome@gmail.com', 'sambeawesome', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(134, 'Nagutagi', 'Nagutagi@gmail.com', 'Nagutagi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(135, 'WesKripsy', 'WesKripsy@gmail.com', 'WesKripsy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(136, 'DeltaCandyFox', 'DeltaCandyFox@gmail.com', 'DeltaCandyFox', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(137, 'Erdbeerstern', 'Erdbeerstern@gmail.com', 'Erdbeerstern', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(138, 'ArtGraph', 'ArtGraph@gmail.com', 'ArtGraph', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(139, 'salvamakoto', 'salvamakoto@gmail.com', 'salvamakoto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(140, 'Artistle', 'Artistle@gmail.com', 'Artistle', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(141, 'NinAcTi0N', 'NinAcTi0N@gmail.com', 'NinAcTi0N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abyss_user`
--
ALTER TABLE `abyss_user`
  ADD PRIMARY KEY (`id`,`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abyss_user`
--
ALTER TABLE `abyss_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
