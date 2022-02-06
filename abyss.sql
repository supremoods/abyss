-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 06, 2022 at 06:55 AM
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
-- Table structure for table `abyssal_comment`
--

CREATE TABLE `abyssal_comment` (
  `comment_ID` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `art_id` int(11) NOT NULL,
  `comment` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `abyssal_comment`
--

INSERT INTO `abyssal_comment` (`comment_ID`, `id`, `art_id`, `comment`) VALUES
(48, 2, 100, 'sdasdas\n'),
(68, 2, 92, 'dfs\n'),
(69, 2, 92, 'asasa\n'),
(70, 1, 46, 'asdasdas\n'),
(71, 1, 46, 'asddasdas\n'),
(72, 1, 46, 'asdasda\n3'),
(73, 1, 46, 'asas\n'),
(74, 1, 46, 'asdas\n'),
(75, 1, 46, 'sdsds\n'),
(76, 1, 46, 's\n'),
(77, 1, 46, 's\n'),
(78, 1, 46, '\'\n');

-- --------------------------------------------------------

--
-- Table structure for table `abyssal_favorite`
--

CREATE TABLE `abyssal_favorite` (
  `favID` int(255) NOT NULL,
  `id` int(11) NOT NULL,
  `art_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `abyssal_favorite`
--

INSERT INTO `abyssal_favorite` (`favID`, `id`, `art_id`) VALUES
(2686, 2, 137),
(2706, 2, 62),
(2712, 2, 57),
(2714, 2, 92),
(2716, 2, 47),
(2718, 2, 45),
(2719, 2, 48),
(2723, 2, 100);

-- --------------------------------------------------------

--
-- Table structure for table `abyss_post`
--

CREATE TABLE `abyss_post` (
  `id` int(100) NOT NULL,
  `post_id` int(100) NOT NULL,
  `cover_image` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `post_description` longtext NOT NULL,
  `count_fav` int(100) NOT NULL,
  `count_comment` int(100) NOT NULL,
  `privacy` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `abyss_post`
--

INSERT INTO `abyss_post` (`id`, `post_id`, `cover_image`, `title`, `post_description`, `count_fav`, `count_comment`, `privacy`) VALUES
(123, 29, 'commission_price_list__updated_20_01_22__by_queen_of_kinkiness_dexib3f-fullview(COVER PHOTO).jpg', 'Commissions Prices Update', 'I was taught in school that I should gift someone a present on my Birthday as others do the same to me. \r\n\r\n\r\nSo, since on February 2 I\'ll turned 22, here\'s my present for you folks: I\'ve lowered the Commissions Prices by 20$. \r\n\r\n\r\nCheck it out on my profile!', 0, 0, 'everyone'),
(125, 35, 'demochibi_by_a_i_k_art_deyi22c-fullview(cover photo).png', 'DEMO', 'Hey~!\r\n\r\nWe are releasing a free demo of our game so you can try it~ \r\n\r\n\r\nThis is just a fraction of the game, you can find the latest version in our Patreon! 💗', 0, 2, 'everyone'),
(129, 40, 'deuqyj1-bbea172e-768f-428a-a949-416d41f5cf84 (COVER).png', 'NFT theft - Zelda artists', 'EDIT: Looks like we did it! 😄\r\nWhen clicking on the link there\'s no picture on display in this os account anymore! Nice work everyone!\r\n\r\nOld post:\r\n\r\nHello everyone!\r\n\r\nI don\'t know if it has been shared already, but we got this account selling a bunch of stolen Zelda art as NFTs: \r\n\r\nhttps://opensea.io/0xcfa655727c17607ac84e35d26805f2cc30e45213\r\n\r\nFeel free to spread the word and to report this opensea account. I\'m trying to gather a list of the artists that have been stolen too.\r\n\r\nStay safe and take care. ', 0, 0, 'everyone'),
(128, 41, 'elvira_by_nkstudiodigital_dewualq-pre (COVER).jpg', 'CommissionIsNowOpen', '\r\nHi guys,\r\n\r\nIf u want to have your dream heroes, original characters, NFTs come true in high-quality with a good price! Don\'t hesitate to contact us via email: nkstudiodigital@gmail.com\r\n\r\nThe link below contains all information about our prices and rules of taking commission:\r\n\r\n    https://www.artstation.com/blogs/nk_art/6L0V/nk-studio-digital-commission-and-status-2022\r\n\r\nWe\'re opening for commission, there are some references of our commission pieces below:\r\n\r\n    https://www.deviantart.com/nkstudiodigital/art/Grandessa-Shantalla-Karinor-874656017\r\n\r\n    https://www.deviantart.com/nkstudiodigital/art/Glorious-836880199\r\n\r\n    https://www.deviantart.com/nkstudiodigital/art/Thorn-897618046\r\n\r\nIf you like my style, you can look for more of my illustrations in here:\r\n\r\n    https://www.deviantart.com/nkstudiodigital\r\n\r\n    https://www.artstation.com/nk_art\r\n\r\n    https://www.instagram.com/nk.studiodigital/\r\n\r\nThanks a lot for passing by and have a good day!', 0, 0, 'everyone'),
(1, 45, 'kalachuchi.png', 'kalachuchi', 'NVM', 0, 2, 'everyone'),
(1, 48, 'luna.png', 'Luna', 'this artwork is special for me', 0, 0, 'everyone'),
(2, 51, '106794623_969803723473386_304610471820742651_n.jpg', 'Kaori', 'just a test', 0, 2, 'everyone');

-- --------------------------------------------------------

--
-- Table structure for table `abyss_post_comment`
--

CREATE TABLE `abyss_post_comment` (
  `commentId` int(255) NOT NULL,
  `id` int(100) NOT NULL,
  `post_id` int(100) NOT NULL,
  `comment` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `abyss_post_comment`
--

INSERT INTO `abyss_post_comment` (`commentId`, `id`, `post_id`, `comment`) VALUES
(69, 1, 45, 'hi\n'),
(70, 1, 45, 'nice\n'),
(71, 1, 51, 'hello\n'),
(72, 2, 51, 'hi\n'),
(73, 2, 35, 'nice \n'),
(74, 1, 35, 'nice too\n');

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
  `Pronouns` varchar(255) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `abyss_user`
--

INSERT INTO `abyss_user` (`id`, `username`, `email`, `password`, `profileImage`, `coverProfile`, `checkArtist`, `birthDay`, `Level`, `Location`, `Specialty`, `Pronouns`, `Status`) VALUES
(1, 'supremood', 'lappay.john@gmail.com', 'supremo25', '86971185_2680674678717824_4104365190093471744_n.jpg', 'meteor_shower_by_t1na_denymcu-fullview.jpg', 'Artist', '2001-10-25', 'Student', 'Philippines', 'Artisan Crafts', 'He/Him', 'offline'),
(2, 'b1ngu', 'b1ngu@gmail.com', 'b1nguMachaLover', '6a391e2d188f5c4fe8973c248bb5e805.jpg', 'meteor_shower_by_t1na_denymcu-fullview.jpg', 'Artist', '2001-10-25', 'Student', 'Philippines', 'Traditional Art', 'She/Her', 'online'),
(3, 'Laghrian', 'Laghrian@gmail.com', 'supremo25', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(4, 'tigaer', 'tigaer@gmail.com', 'tigaertigaer', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(5, 'PSK-Projekt4D', 'PSK-Projekt4D@gmail.com', 'PSK-Projekt4D', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(6, 'pjacubinas', 'pjacubinas@gmail.com', 'pjacubinas', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(7, 'Gwasanee', 'Gwasanee@gmail.com', 'Gwasanee', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(8, 'Siamon89', 'Siamon89@gmail.com', 'Siamon89', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(9, 'SirTancrede', 'SirTancrede@gmail.com', 'SirTancrede', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(10, 'QuantumStarBox', 'QuantumStarBox@gmail.com', 'QuantumStarBox', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(11, 'LadyDeuce', 'LadyDeuce@gmail.com', 'LadyDeuce', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(12, 'zachrobinson', 'zachrobinson@gmail.com', 'zachrobinson', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(13, 'Allagar', 'Allagar@gmail.com', 'Allagar', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(14, 'AlynSpiller', 'AlynSpiller@gmail.com', 'AlynSpiller', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(15, 'Aspidal', 'Aspidal@gmail.com', 'Aspidal', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(16, 'Bullstormparty', 'Bullstormparty@gmail.com', 'Bullstormparty', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(17, 'Chander-lieve', 'Chanderlieve@gmail.com', 'Chander-lieve', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(18, 'chiseshan', 'chiseshan@gmail.com', 'chiseshan', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(19, 'Ereyz', 'Ereyz@gmail.com', 'Ereyz', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(20, 'FawnPetals', 'FawnPetals@gmail.com', 'FawnPetals', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(21, 'gigiEDT', 'gigiEDT@gmail.com', 'gigiEDT', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(22, 'GilSakura', 'GilSakura@gmail.com', 'GilSakura', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(23, 'GoldenDruid', 'GoldenDruid@gmail.com', 'GoldenDruid', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(24, 'JustyNadura', 'JustyNadura@gmail.com', 'JustyNadura', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(25, 'Juukah', 'Juukah@gmail.com', 'Juukah', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(26, 'MizoreBusujima', 'MizoreBusujima@gmail.com', 'MizoreBusujima', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(27, 'nashiepotato', 'nashiepotato@gmail.com', 'nashiepotato', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(28, 'Nat10370', 'Nat10370@gmail.com', 'Nat10370', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(29, 'PersN1ck', 'PersN1ck@gmail.com', 'PersN1ck', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(30, 'Pinlin', 'Pinlin@gmail.com', 'Pinlin', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(31, 'Rakimou', 'Rakimou@gmail.com', 'Rakimou', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(32, 'RoseRedTiger', 'RoseRedTiger@gmail.com', 'RoseRedTiger', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(33, 'RoxsanKleit', 'RoxsanKleit@gmail.com', 'RoxsanKleit', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(34, 'RuberaUnic', 'RuberaUnic@gmail.com', 'RuberaUnic', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(35, 'sandara', 'sandara@gmail.com', 'sandara', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(36, 'Seyumei', 'Seyumei@gmail.com', 'Seyumei', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(37, 'Shwonky', 'Shwonky@gmail.com', 'Shwonky', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(38, 'Solchan', 'Solchan@gmail.com', 'Solchan', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(39, 'TheVictorAdame', 'TheVictorAdame@gmail.com', 'TheVictorAdame', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(40, 'x-Celebril-x', 'xCelebrilx@gmail.com', 'x-Celebril-x', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(41, 'Yesterlove', 'Yesterlove@gmail.com', 'Yesterlove', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(42, 'HaKhalifa', 'HaKhalifa@gmail.com', 'HaKhalifa', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(43, 'Hekkoto', 'Hekkoto@gmail.com', 'Hekkoto', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(44, 'Glasshaus', 'Glasshaus@gmail.com', 'Glasshaus', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(45, 'Mintflakeid', 'Mintflakeid@gmail.com', 'Mintflakeid', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(46, 'ChrisNazgul', 'ChrisNazgul@gmail.com', 'ChrisNazgul', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(47, 'niivu', 'niivu@gmail.com', 'niivu', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(48, 'WatchTheSkiies', 'WatchTheSkiies@gmail.com', 'WatchTheSkiies', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(49, 'Adni18', 'Adni18@gmail.com', 'Adni18', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(50, 'LukePerceptions', 'LukePerceptions@gmail.com', 'LukePerceptions', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(51, 'SaturnineRemnant', 'SaturnineRemnant@gmail.com', 'SaturnineRemnant', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(52, 'peazecy', 'peazecy@gmail.com', 'peazecy', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(53, 'AlbinoFlowers', 'AlbinoFlowers@gmail.com', 'AlbinoFlowers', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(54, 'Amenorium', 'Amenorium@gmail.com', 'Amenorium', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(55, 'WolsealMI', 'WolsealMI@gmail.com', 'WolsealMI', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(56, 'PhloxeButt', 'PhloxeButt@gmail.com', 'PhloxeButt', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(57, 'Rufsam', 'Rufsam@gmail.com', 'Rufsam', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(58, 'Scribblespider', 'Scribblespider@gmail.com', 'Scribblespider', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(59, 'kaashigore', 'kaashigore@gmail.com', 'SaturnineRekaashigoremnant', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(60, 'Fenglingling43Hrs', 'Fenglingling43Hrs@gmail.com', 'Fenglingling43Hrs', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(61, 'Plbike', 'Plbike@gmail.com', 'Plbike', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(62, 'StudioDA', 'StudioDA@gmail.com', 'StudioDA', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(63, 'IllustrativeMagicka', 'IllustrativeMagicka@gmail.com', 'IllustrativeMagicka', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(64, 'savvypalette', 'savvypalette@gmail.com', 'savvypalette', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(65, 'Victorez', 'Victorez@gmail.com', 'Victorez', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(66, 'Novakovskaya', 'Novakovskaya@gmail.com', 'Novakovskaya', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(67, 'Raon19', 'Raon19@gmail.com', 'Raon19', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(68, 'Evangeline40003', 'Evangeline40003@gmail.com', 'Evangeline40003', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(69, 'flavinethylston', 'flavinethylston@gmail.com', 'flavinethylston', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(70, 'BiggyBungalo', 'BiggyBungalo@gmail.com', 'BiggyBungalo', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(71, 'TristanKendell', 'TristanKendell@gmail.com', 'TristanKendell', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(72, 'RosmanPL', 'RosmanPL@gmail.com', 'RosmanPL', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(73, 'sakamina', 'sakamina@gmail.com', 'sakamina', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(74, 'Remarin', 'Remarin@gmail.com', 'Remarin', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(75, 'ArthurBn', 'ArthurBn@gmail.com', 'ArthurBn', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(76, 'Chanderlieve', 'Chanderlieve@gmail.com', 'Chanderlieve', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(77, 'Zarory', 'Zarory@gmail.com', 'Zarory', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(78, 'ATArts', 'ATArts@gmail.com', 'ATArts', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(79, 'empalu', 'empalu@gmail.com', 'empalu', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(80, 'Cutiezor', 'Cutiezor@gmail.com', 'Cutiezor', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(81, 'fooyee', 'fooyee@gmail.com', 'fooyee', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(82, 'donchild', 'donchild@gmail.com', 'donchild', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(83, 'ashpwright', 'ashpwright@gmail.com', 'ashpwright', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(84, 'CulpeoFox', 'CulpeoFox@gmail.com', 'CulpeoFox', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(85, 'Esperoart', 'Esperoart@gmail.com', 'Esperoart', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(86, 'archiwyzard', 'archiwyzard@gmail.com', 'archiwyzard', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(87, 'drachenmagier', 'drachenmagier@gmail.com', 'drachenmagier', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(88, 'Tvonn9', 'Tvonn9@gmail.com', 'Tvonn9', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(89, 'MizukiTA', 'MizukiTA@gmail.com', 'MizukiTA', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(90, 'Swirlything', 'Swirlything@gmail.com', 'Swirlything', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(91, 'ARTISTSpencerDerry', 'ARTISTSpencerDerry@gmail.com', 'ARTISTSpencerDerry', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(92, 'Leonidafremov', 'Leonidafremov@gmail.com', 'Leonidafremov', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(93, 'worldofcreativeart', 'worldofcreativeart@gmail.com', 'worldofcreativeart', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(94, 'KatyLipscomb', 'KatyLipscomb@gmail.com', 'KatyLipscomb', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(95, 'wlop', 'wlop@gmail.com', 'wlop', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(96, 'AtomiccircuS', 'AtomiccircuS@gmail.com', 'AtomiccircuS', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(97, 'TinyTruc', 'TinyTruc@gmail.com', 'TinyTruc', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(98, 'alrun-art', 'alrun-art@gmail.com', 'alrun-art', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(99, 'Kuvshinov-Ilya', 'Kuvshinov-Ilya@gmail.com', 'Kuvshinov-Ilya', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(100, 'yuumei', 'yuumei@gmail.com', 'yuumei', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(101, 'wataboku', 'wataboku@gmail.com', 'wataboku', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(102, 'marvelmania', 'marvelmania@gmail.com', 'marvelmania', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(103, 'MikaelWang', 'MikaelWang@gmail.com', 'MikaelWang', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(104, 'Sa-Dui', 'Sa-Dui@gmail.com', 'Sa-Dui', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(105, 'Nirozozo', 'Nirozozo@gmail.com', 'Nirozozo', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(106, 'ADPong', 'ADPong@gmail.com', 'ADPong', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(107, 'Domax-art', 'Domax-art@gmail.com', 'Domax-art', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(108, 'lukesChillArt666', 'lukesChillArt666@gmail.com', 'lukesChillArt666', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(109, 'r-trigger', 'r-trigger@gmail.com', 'r-trigger', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(110, 'Kaizoku-hime', 'Kaizoku-hime@gmail.com', 'Kaizoku-hime', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(111, 'young-street', 'young-street@gmail.com', 'young-street', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(112, 'Kibbitzer', 'Kibbitzer@gmail.com', 'Kibbitzer', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(113, 'Sellenin', 'Sellenin@gmail.com', 'Sellenin', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(114, 'twin-tail', 'twin-tail@gmail.com', 'twin-tail', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(115, 'ryky', 'ryky@gmail.com', 'ryky', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(116, 'Anastasia-berry', 'Anastasia-berry@gmail.com', 'Anastasia-berry', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(117, '', 'wlop@gmail.com', 'wlop', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(118, 'Kibbitzer', 'Kibbitzer@gmail.com', 'Kibbitzer', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(119, 'rohioart', 'rohioart@gmail.com', 'rohioart', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(120, 'rika-dono', 'rika-dono@gmail.com', 'rika-dono', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(121, 'jiuge', 'jiuge@gmail.com', 'jiuge', 'avatar.png', 'sisu_bg-min.png', '', '', '', '', '', '', NULL),
(122, 'NinAcTi0N', 'NinAcTi0N@gmail.com', 'NinAcTi0N', 'avatar.png', 'sisu_bg-min.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(123, 'queen-of-kinkiness', 'queen-of-kinkiness@gmail.com', 'queen-of-kinkiness', 'avatar.png', 'sisu_bg-min.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(124, 'Buba54', 'Buba54@gmail.com', 'Buba54', 'avatar.png', 'sisu_bg-min.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(125, 'A-I-K-art', 'A-I-K-art@gmail.com', 'A-I-K-art', 'avatar.png', 'sisu_bg-min.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(126, 'dragomaster767', 'dragomaster767@gmail.com', 'dragomaster767', 'avatar.png', 'sisu_bg-min.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(127, 'Phyllite', 'Phyllite@gmail.com', 'Phyllite', 'avatar.png', 'sisu_bg-min.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(128, 'NKSTUDIODIGITAL', 'NKSTUDIODIGITAL@gmail.com', 'NKSTUDIODIGITAL', 'avatar.png', 'sisu_bg-min.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(129, 'Webmegami', 'Webmegami@gmail.com', 'Webmegami', 'avatar.png', 'sisu_bg-min.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(130, 'FeatheredRoblox', 'FeatheredRoblox@gmail.com', 'FeatheredRoblox', 'avatar.png', 'sisu_bg-min.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(131, 'Cutekitten19', 'Cutekitten19@gmail.com', 'Cutekitten19', 'avatar.png', 'sisu_bg-min.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(132, 'RainbowPhilosopher', 'RainbowPhilosopher@gmail.com', 'RainbowPhilosopher', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(133, 'sambeawesome', 'sambeawesome@gmail.com', 'sambeawesome', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(134, 'Nagutagi', 'Nagutagi@gmail.com', 'Nagutagi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(135, 'WesKripsy', 'WesKripsy@gmail.com', 'WesKripsy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(136, 'DeltaCandyFox', 'DeltaCandyFox@gmail.com', 'DeltaCandyFox', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(137, 'Erdbeerstern', 'Erdbeerstern@gmail.com', 'Erdbeerstern', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(138, 'ArtGraph', 'ArtGraph@gmail.com', 'ArtGraph', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(139, 'salvamakoto', 'salvamakoto@gmail.com', 'salvamakoto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(140, 'Artistle', 'Artistle@gmail.com', 'Artistle', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(141, 'NinAcTi0N', 'NinAcTi0N@gmail.com', 'NinAcTi0N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `art_abyssals`
--

CREATE TABLE `art_abyssals` (
  `id` int(11) DEFAULT NULL,
  `art_id` int(100) NOT NULL,
  `abyssal_art` varchar(255) DEFAULT NULL,
  `title` varchar(60) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `category` varchar(60) DEFAULT NULL,
  `privacy` varchar(60) DEFAULT NULL,
  `count_comment` int(11) DEFAULT NULL,
  `count_fav` int(11) DEFAULT NULL,
  `abyssals_date` varchar(255) DEFAULT NULL,
  `featured_gallery` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `art_abyssals`
--

INSERT INTO `art_abyssals` (`id`, `art_id`, `abyssal_art`, `title`, `description`, `category`, `privacy`, `count_comment`, `count_fav`, `abyssals_date`, `featured_gallery`) VALUES
(3, 45, 'flooded_and_forgotten___speedpaint_by_laghrian_derss1k-pre.jpg', 'Flooded and forgotten', 'Flooded and forgotten idols made in a honor of a god, represented as hare rabbit. Personal idea.\r\nProject for my portfolio. Has taken me a lot more time, because Ive made these stone statues in 3D in Blender Let me know what do you think!', '3D', 'everyone', 0, 2, 'January 29, 2022', NULL),
(4, 46, 'another_morning_in_the_trenches_by_tigaer_depdyyv-pre.jpg', 'Another Morning in the Trenches', 'The only thing making me do graveyard shifts are these incredible sunrises in the Trenches and Calvin and Hobbes waiting for me. Jennas Diary  Calista  2733\r\n\r\nAfter getting inspired a decade ago I managed to turn said inspiration into a scene finally. Learning Blender on the way and ending up very happy with a result Im very happy with! Specific Info ', '3D', 'everyone', 9, 1, 'January 29, 2022', NULL),
(5, 47, '_daz3d____cyberpunk_by_psk_projekt4d_detrnxj-pre.jpg', '[DAZ3D]- Cyberpunk', 'Finally, after many months I have a new wallpaper on my smartphone, that looks really cool on it. :happybounce: \r\nOtherwise, I didn\'t think much of it, just wanted to combine the lady with the bike and somehow it came out.Sweating a little...  In the background is a police operation to bring more lights and life into the picture. Actually there was a police robot, but then I removed it again. The same is true for the light cone of the drone, which you can\'t really see anymore.:| (Blank Stare)', '3D', 'Everyone', 0, 2, 'January 29, 2022', NULL),
(6, 48, 'autumn_by_pjacubinas_depeguu-pre.jpg', 'Autumn', 'I personally can\'t wait to have some cooler weather again. This 100+ degrees is getting on my nerves....\r\n\r\nSet up and rendered in Daz3D, Composited and Color Corrected in PS CC\r\n\r\nI hope you enjoy it and thanks for looking!', '3D', 'Everyone', 0, 2, 'January 29, 2022', NULL),
(97, 50, 'portrait_jisoo_blackpink_by_tinytruc_dc5edj6-fullview.jpg', 'Portrait Jisoo Blackpink', '\"My page:\r\nDevianart: tinytruc.deviantart.com/\r\nIG: www.instagram.com/tinytruc_art\r\nArtStation: www.artstation.com/tinytruc\r\nFB: www.fb.com/tinytrucART/\r\nBehance: www.behance.net/tinytruc\r\nTwitter: twitter.com/TinyThanhTruc\r\nYoutube: www.youtube.com/tinytrucart\r\nEmail: TinyTrucART@gmail.com\"', 'Digital art', 'Everyone', 0, 0, 'January 30, 2022', NULL),
(22, 55, 'lily_demon_oc_ayame_by_gisakura.jpg', 'Lily Demon - OC Ayame', '\r\nCOMMISSIONS OPEN \r\n\r\n\r\nTwitter  Instagram \r\n\r\n\r\n First drawing made with the ipad! Half done in procreate and the other half in clip studio xd And as a model my precious Ayame ', 'Anime and Manga', 'Everyone', 0, 1, 'January 30, 2022', NULL),
(25, 57, '_prize__art_raffle_by_juukah.png', '[Prize] Art raffle', '\r\nArt raffle prize in my twitter ! \r\n\r\n\r\n─────────────────────────────────────────────\r\nCommission info (open)\r\n\r\nJuukah\'s Pixiv / twitter / Youtube  / Toy House ', 'Anime and Manga', 'Everyone', 0, 1, 'January 30, 2022', NULL),
(21, 59, 'sakura_kinomoto_and_kerberos_by_gigiedt.jpg', 'Sakura Kinomomoto and Kerberos', '\r\nFanart from Card Captor Sakura I made on twitch as twitch subgoal\r\n\r\nIf you want to watch me when I\'m live subscribe to my channel:\r\nwww.twitch.tv/eudetenis', 'Anime and Manga', 'Everyone', 9, 1, 'January 30, 2022', NULL),
(20, 62, 'autum_evening_by_fawnpetals.png', 'Autumn Evening', 'Gift for Fangeddoe on Twitter!', 'Anthro', 'Everyone', 4, 2, 'January 30, 2022', NULL),
(26, 92, 'megumi_by_mizorebusujima.jpg', 'Megumi', '\r\nCharacter  Megumi \r\nArt © @Lau._.Art / MizoreBusujima \r\nTools:   Tablet Wacom Cintiq 16 | CLIP STUDIO PAINT\r\nTime taken: ??\r\n\r\nDrawing of my OC and Live2d Megumi! \r\n\r\nwww.teepublic.com/user/lau_art\r\n\r\n\r\nThank you so much for all the support! It means a lot to me! <3\r\n\r\nFeel free to follow me! ♪\r\n\r\nTwitter:  twitter.com/Lau_Art01\r\nInstagram:  www.instagram.com/lau._.art/\r\nPixiv: www.pixiv.net/member.php?id=33…\r\nTwitch: www.twitch.tv/lauart \r\n\r\nPlease do not use, trace, alter, copy, claim, reupload as your own without my permission.\r\n', 'Anime and Manga', 'Everyone', 14, 2, 'January 30, 2022', NULL),
(38, 99, '_cm__kristal_by_solchan.jpg', '[CM] Kristal', 'Commission for :iconshadastorm120: \r\nHer OC Kristal Heart \r\n\r\n---------------------------------------------------\r\nMy other art sites:\r\n\r\n Twitter\r\n Instagram\r\n Facebook', 'Anime and Manga', 'Everyone', 0, 1, 'January 30, 2022', NULL),
(19, 100, 'zhong_li_by_ereyz.jpg', 'Zhong Li', 'Sun    \r\n--------------------------------------------------\r\nAttention (deviantart icon) DO NOT REPOST\r\n\r\nDiluc - Genshin Impact by Ereyz Childe - Genshin Impact by Ereyz Kaeya - Genshin by Ereyz Zhongli - Genshin by Ereyz\r\n\r\n:fire:  High-res PNG, steps tutorial and layered PSD on my Patreon.com/Ereyz\r\n:fire:  PRINTS Redbubble\r\n:fire:  Old Patreon rewards on Gumroad\r\n\r\nPatreon (2017, round) Icon mid  PATREON REWARDS \r\n\r\nlittle star Exclusive Sketches & WIPs little star High quality Images little star Step by Step Shots little star\r\nlittle star Photoshop PSDs with layers  little star Different variations of some illustrations little star', 'Anime and Manga', 'Everyone', 1, 1, 'January 30, 2022', NULL),
(27, 101, 'commission__nightwind87_by_nashiepotato.jpg', 'COMMISSION: NightWind87', '\r\n[  I l l u s t r a t i o n  ]\r\nR A O U L\r\n\r\n\r\n        It felt like I was speedrunning the rendering of this one --- it was a such a bliss to color him that I don\'t even notice the time pass :iconureshiiplz:. another bishie for NightWind87~ thanks so much for this opportunity to draw your wonderful bois :iconlazepoolplz  \r\n\r\n\r\n\r\n[ credits ]\r\nart © :iconnashiepotato:\r\ncharacter belongs to © :iconnightwind87:\r\n\r\n█ Regular Commissions [OPEN] \r\n\r\nI am open for anime-styled illustrations ~ If the slots are once again filled \'ve put up a waitlist for those who still want to order: trello.com/b/WY2cL53W \r\n \r\ncommission journal: \r\nwww.deviantart.com/nashiepotat…\r\n\r\nthanks for the interest! ≧◠‿◠≦\r\n\r\n█ Prices :\r\n\r\n● chibi = 18 USD\r\n● halfbody = 30 USD\r\n● fullbody = 60 USD \r\n\r\n▨ prices for character sheets and full illustrations will be discussed separately.\r\n\r\n█ Commission Info & Samples : commission info & TOS: nashiepotato.carrd.co/', 'Anime and Manga', 'Everyone', 0, 0, 'January 30, 2022', NULL),
(30, 102, 'koi_in_sword_by_pinlin_.jpg', 'Koi In Sword', '\r\nMy OC Sachiro with Koi fish and his katana. I planned to animate the fish but it turns harder than I thought in Blender. Maybe switching back to after effects.\r\nI had this idea for a while with glass swords. It would be cool if something is moving inside.\r\n\r\nHe is from my visual novel \"Dark Nights\" pinlin.itch.io/darknights\r\n\r\nArt & Character Pinlin \r\nFind me on:@ Facebook @ Youtube @ Twitter @ Pixiv @ Instagram \r\n', 'Anime and Manga', 'Everyone', 0, 0, 'January 30, 2022', NULL),
(39, 109, 'ajani__the_greathearted_by_thevictoradame.jpg', 'Ajani, The Greathearted', '\r\n\r\nAjani, the Greathearted\r\nAD: Taylor Ingvarsson. Magic the Gathering, copyright WOTC 2021\r\n\r\nThis was another fun and challenging art to work on, especially me being colorblind and all the greens/reds in the image. \r\nI think the white and green palette works really well so I wanted to try it out here, especially with Ajani being white-green mana aligned.', 'Anthro', 'Everyone', 0, 0, 'January 30, 2022', NULL),
(30, 126, 'reflection_by_pinlin.jpg', 'Reflection', '\r\nGojo because he is bae😎 I gave him blue glasses with reflections of Geto. Its a bit small to see here though. I went a bit bold with colors, just to try out.\r\n\r\nI plan to share the process of this on my Class101 course later (en.class101.net/products/pinli…)\r\n\r\n\r\nArt Pinlin \r\nFind me on:@ Facebook @ Youtube @ Twitter @ Pixiv @ Instagram', 'Anime and Manga', 'Everyone', 0, 0, 'January 30, 2022', NULL),
(33, 128, 'shaman_king_jeanne_x_shamash_by_roxsankleit.jpg', 'Shaman King Jeanne x Shamash', '\r\nSpeed Paint: www.youtube.com/watch?v=u-MuMN1jQg4&t=5s\r\nNetworks: linktr.ee/RoxsanKleit\r\n', 'Anime and Manga', 'Everyone', 0, 0, 'January 30, 2022', NULL),
(36, 132, 'com_healing_magic_by_seyumei.png', ' Com: Healing Magic', '\r\n7-8 hr experimental commission for Flitchee (FA) of her velociraptor DnD character L\'triya! The theme given was \"the power of water and nature\"\r\n\r\nL\'triya\'s abilities are plant/nature/healing based, so I thought showing them saving some wildlife would be a good fit for the theme. ^^\r\n\r\nTwitter post: twitter.com/seyumei/status/140…', 'Anthro', 'Everyone', 0, 1, 'January 30, 2022', NULL),
(16, 133, 'dangerous_encounter_by_bullstromparty.jpg', 'Dangerous Encounter', '\r\n\"Dangerous Encounter\"\r\n\r\nPainterly commission for @pbjamsandwich\r\nAgain, one more paint with this great werewolf!', 'Anthro', 'Everyone', 0, 1, 'January 30, 2022', NULL),
(15, 134, 'eldridge_by_aspidal.png', 'Eldridge', 'commission', 'Anthro', 'Everyone', 0, 0, 'January 30, 2022', NULL),
(37, 135, 'present_by_shwonky.jpg', 'Present', 'Older raffle prize for Echo_Sounding on Twitter. This character was (and is) truly lovely.', 'Anthro', 'Everyone', 0, 1, 'January 30, 2022', NULL),
(31, 136, 'streets_of_mondstadt_by_rakimou.jpg', 'Streets of Mondstadt [COMM 20062021]', 'Commission for  pasterz, their fursona as Bennet (Genshin Impact) (＾▽＾)', 'Anthro', 'Everyone', 0, 2, 'January 30, 2022', NULL),
(28, 137, 'ten_kodori_by_nat10730.jpg', 'Ten Kodori', 'Commission for rock_storage', 'Anthro', 'Everyone', 0, 3, 'January 30, 2022', NULL),
(41, 138, 'the_bartender_com_by_yesterlove.jpg', 'the bartender', 'recent commission!', 'Anthro', 'Everyone', 0, 0, 'January 30, 2022', NULL),
(23, 139, 'white_mage_by_goldendruid.jpg', 'White Mage', '✨Limited edition canvas-mounted prints: goldendruid.com/shop/canvas-wh…\r\n✨Prints Available: goldendruid.com/shop/print-whi…\r\n\r\nAnother mage added to the collection!\r\nThis portrait painting was commissioned by Kyree.\r\n\r\n©GoldenDruid2021', 'Anthro', 'Everyone', 0, 0, 'January 30, 2022', NULL),
(93, 151, 'djdgxo-cefa282e-90b5-49ac-ba33-765dc251bd04.jpg', 'Digital Art Painting', '\"Digital Art Painting\"', 'Digital art', 'Everyone', 0, 2, 'January 30, 2022', NULL),
(94, 152, 'foxicorn_by_katylipscomb_dcfvjh4-fullview.jpg', 'Foxicorn', '\"A little Foxicorn that I drew in honor of Junicorn hehe <3 \"', 'Digital art', 'Everyone', 0, 0, 'January 30, 2022', NULL),
(95, 153, 'jade_by_wlop_d9n5wvp-pre.jpg', 'Jade', '\"My original character Jade in Ghostblade, oriental girl, short hair, tatoo, kongfu! and what else?\r\n\r\nI\'ll provide full normal speed video process on my patreon:www.patreon.com/wlop\r\n\r\nYou can also support me on creating my own comic Ghostblade on my patreon: www.patreon.com/wlop\r\n\r\nAs rewards, you will get: \r\n> full size image \r\n> PSD file with steps in different layer, and brush set \r\n> HD, normal speed process video\"', 'Digital art', 'Everyone', 0, 1, 'January 30, 2022', NULL),
(96, 154, 'large_scale_dots_painting___close_up___by_atomiccircus_d8fhc69-fullview.jpg', 'Large scale Dots Painting ( close up )', '\"Large scale Dots Painting ( close up )\r\n\r\n    I just remembered that i have never uploaded a close up of this painting. \"', 'Digital art', 'Everyone', 0, 1, 'January 30, 2022', NULL),
(98, 156, 'priscila__commission__by_alrun_art_dcxu0l8-fullview.jpg', 'Priscila [Commission]', '\"This is a portrait commission I did for a very lovely client. Capturing likeness is not that easy for me, but I think I did quite well here. Hope you like it, too!\"', 'Digital art', 'Everyone', 0, 0, 'January 30, 2022', NULL),
(99, 157, 'd97g1xu-764c3729-b6a8-4748-bdac-e9b5471450e7.jpg', 'Red', '\"You can support me and get access for process steps, videos, PSDs, brushes, etc. here:\r\n\r\nwww.patreon.com/KR0NPR1NZ\r\n\r\nMore art on:\r\n\r\nFacebook www.facebook.com/kr0npr1nz\r\n\r\nTwitter twitter.com/KR0NPR1NZ\r\n\r\nInstagram instagram.com/kr0npr1nz\r\n\r\ntumblr kr0npr1nz.tumblr.com/\"', 'Digital art', 'Everyone', 0, 0, 'January 30, 2022', NULL),
(100, 158, 'sprinkles_of_stars_by_yuumei_d9eolhq-fullview.jpg', 'Sprinkles of Stars', '\"Freckles are like sprinkles of stars~\r\n\r\n1 hour speed paint I did with the intention of recording the process, but after I finished drawing, I realized that OBS had glitched and didn\'t record anything orz You can still check out my other video tutorials on my Youtube channel!\r\n\r\nOh well, back to drawing Fisheye for meeeee~\"', 'Digital art', 'Everyone', 0, 1, 'January 30, 2022', NULL),
(101, 159, 'under_the_skin_by_wataboku_dcmo2ec-fullview.jpg', 'under the skin', '\" ■Instagram : instagram.com/wataboku__/\r\n■Facebook : www.facebook.com/watashibokuor…\r\n■Twitter : twitter.com/wataboku_\r\n■pixiv : pixiv.me/wataboku\r\n■Tumblr : wataboku.tumblr.com/\"\r\n', 'Digital art', 'Everyone', 0, 2, 'January 30, 2022', NULL),
(102, 160, 'luffy_vs_doflamingo_colored_by_marvelmania_d8tkpp0-fullview.jpg', 'Luffy vs Doflamingo Colored', 'MONKEY D. LUFFY kicking DOFLAMINGO ASS, on his Gear4th mode!!! \r\nFrom the great ONE PIECE, and now as I promised, COLORED\r\nMy favorite character nowadays! The only Show/anime that made me cry and twice! Nothing can beat this story, its just way too good!\r\nJust for fun\r\nI hope you like it! Your comments are priceless\r\n\r\nFlats by: :iconMiles-ProwerX:\r\nA LOT MORE ON my new Facebook Page: www.facebook.com/luisgfigueire… CHECK IT OUT AND SHARE IT!!! :D (Big Grin)\r\n\r\nTake care ;) (Wink)\r\n', 'Fan art', 'Everyone', 0, 0, 'January 30, 2022', NULL),
(118, 161, 'running_reference_sheet_by_kibbitzer_d8xtvrs-fullview.jpg', 'Running Reference Sheet', 'This is a little preview!\r\nI looked at maaaaaany photos to understand how this shit works..\r\nI hate to draw running people..REALLY, but I tried to make it look \"easy\"  for you and  I hope you\'ll find it useful!\r\nThanks for the support!!! :\'D\r\n\r\nIf you are interested you can find the complete series on patreon!\r\nBTW I don\'t consider it a \"special\" reference sheet so you can see it for 1$ per month with the other classic series!', 'Tutorail', 'Everyone', 0, 0, 'January 30, 2022', NULL),
(119, 162, 'sbs__leg_and_thighs_by_rohioart_da90k19-fullview.jpg', 'SBS Leg And Thighs', 'I hope my terrible explaining helps\r\n\r\n\r\nDone in: Paint Tool Sai\r\nWith: Brush, Water Color, Luminosity', 'Tutorial', 'Everyone', 0, 2, 'January 30, 2022', NULL),
(120, 163, 'sitting_poses_by_rika_dono_d95vtd2-fullview.jpg', 'Sitting Poses', 'There was an empty space so I\'ve put a portrait xD\r\n\r\nNo, I can\'t give you a bigger resolution file. This is the size I used to draw.\r\nNo idea which category this belong to.', 'Tutorial', 'Everyone', 0, 0, 'January 30, 2022', NULL),
(121, 164, 'd9aw85c-1bb923ae-2a60-4927-8fe5-d902333b7395.jpg', 'Tutorial male torso', 'This is part of the Term 4\'s Tutorial for male turso, including progress video as well!\r\n\r\nTerm 4 will end by 9-30-2015, so act quick if you want this', 'Tutorial', 'Everyone', 0, 0, 'January 30, 2022', NULL),
(2, 165, '120194683_3241653275953292_1822340385683690078_o.jpg', 'Aesthetic', 'Aesthetic this is a test', 'Traditional Arts', 'everyone', 0, 1, 'January 31, 2022', 'NULL'),
(2, 166, '11.png', 'ButterFly', 'this is a test', 'Digital Art', 'everyone', 0, 0, 'February 1, 2022', 'NULL'),
(2, 167, 'FB_IMG_1620475416247.jpg', 'CAT', 'HSHHAOASDSDFSDF', 'Digital Art', 'everyone', 0, 0, 'February 1, 2022', 'NULL'),
(2, 170, '173447618_101818625382992_4351907707049621771_n.jpg', 'LAPSY KNOWS', 'BLA BAL BLA BLA', 'Anime and Manga', 'everyone', 0, 1, 'February 1, 2022', NULL),
(2, 173, '6a391e2d188f5c4fe8973c248bb5e805.jpg', 'IU baby', 'IU kyutiiiiii', 'Comics', 'everyone', 0, 0, 'February 1, 2022', 'feat'),
(1, 222, '106794623_969803723473386_304610471820742651_n.jpg', 'KAORI OINUMA', 'CHARCOAL X GRAPHITE PAINTING', 'Traditional Arts', 'everyone', 0, 0, 'February 4, 2022', '');

-- --------------------------------------------------------

--
-- Table structure for table `test_img`
--

CREATE TABLE `test_img` (
  `id` int(100) NOT NULL,
  `img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `test_img`
--

INSERT INTO `test_img` (`id`, `img`) VALUES
(12, ''),
(13, 'arcane_jinx_vi_by_yaminokuni_dev103u.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abyssal_comment`
--
ALTER TABLE `abyssal_comment`
  ADD PRIMARY KEY (`comment_ID`);

--
-- Indexes for table `abyssal_favorite`
--
ALTER TABLE `abyssal_favorite`
  ADD PRIMARY KEY (`favID`);

--
-- Indexes for table `abyss_post`
--
ALTER TABLE `abyss_post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `abyss_post_comment`
--
ALTER TABLE `abyss_post_comment`
  ADD PRIMARY KEY (`commentId`);

--
-- Indexes for table `abyss_user`
--
ALTER TABLE `abyss_user`
  ADD PRIMARY KEY (`id`,`username`);

--
-- Indexes for table `art_abyssals`
--
ALTER TABLE `art_abyssals`
  ADD PRIMARY KEY (`art_id`);

--
-- Indexes for table `test_img`
--
ALTER TABLE `test_img`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abyssal_comment`
--
ALTER TABLE `abyssal_comment`
  MODIFY `comment_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `abyssal_favorite`
--
ALTER TABLE `abyssal_favorite`
  MODIFY `favID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2730;

--
-- AUTO_INCREMENT for table `abyss_post`
--
ALTER TABLE `abyss_post`
  MODIFY `post_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `abyss_post_comment`
--
ALTER TABLE `abyss_post_comment`
  MODIFY `commentId` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `abyss_user`
--
ALTER TABLE `abyss_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `art_abyssals`
--
ALTER TABLE `art_abyssals`
  MODIFY `art_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=223;

--
-- AUTO_INCREMENT for table `test_img`
--
ALTER TABLE `test_img`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
