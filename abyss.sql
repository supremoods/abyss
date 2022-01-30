-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2022 at 09:24 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

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
  `id` int(11) NOT NULL,
  `art_id` int(11) NOT NULL,
  `comment` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `abyssal_favorite`
--

CREATE TABLE `abyssal_favorite` (
  `id` int(11) NOT NULL,
  `art_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(1, 27, 'terrorize_by_archerey_deg59lu-pre.jpg', 'fuck off', 'cute ko NGL, FR FR FR FR ', 0, 0, 'everyone');

-- --------------------------------------------------------

--
-- Table structure for table `abyss_post_comment`
--

CREATE TABLE `abyss_post_comment` (
  `id` int(100) NOT NULL,
  `post_id` int(100) NOT NULL,
  `comment` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `abyss_user`
--

CREATE TABLE `abyss_user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `abyss_user`
--

INSERT INTO `abyss_user` (`id`, `username`, `email`, `password`) VALUES
(1, 'supremood', 'lappay.john@gmail.com', 'supremo25'),
(2, 'b1ngu', 'b1ngu@gmail.com', 'b1nguMachaLover'),
(3, 'Laghrian', 'Laghrian@gmail.com', 'supremo25'),
(4, 'tigaer', 'tigaer@gmail.com', 'tigaertigaer'),
(5, 'PSK-Projekt4D', 'PSK-Projekt4D@gmail.com', 'PSK-Projekt4D'),
(6, 'pjacubinas', 'pjacubinas@gmail.com', 'pjacubinas'),
(7, 'Gwasanee', 'Gwasanee@gmail.com', 'Gwasanee'),
(8, 'Siamon89', 'Siamon89@gmail.com', 'Siamon89'),
(9, 'SirTancrede', 'SirTancrede@gmail.com', 'SirTancrede'),
(10, 'QuantumStarBox', 'QuantumStarBox@gmail.com', 'QuantumStarBox'),
(11, 'LadyDeuce', 'LadyDeuce@gmail.com', 'LadyDeuce'),
(12, 'zachrobinson', 'zachrobinson@gmail.com', 'zachrobinson'),
(13, 'Allagar', 'Allagar@gmail.com', 'Allagar'),
(14, 'AlynSpiller', 'AlynSpiller@gmail.com', 'AlynSpiller'),
(15, 'Aspidal', 'Aspidal@gmail.com', 'Aspidal'),
(16, 'Bullstormparty', 'Bullstormparty@gmail.com', 'Bullstormparty'),
(17, 'Chander-lieve', 'Chanderlieve@gmail.com', 'Chander-lieve'),
(18, 'chiseshan', 'chiseshan@gmail.com', 'chiseshan'),
(19, 'Ereyz', 'Ereyz@gmail.com', 'Ereyz'),
(20, 'FawnPetals', 'FawnPetals@gmail.com', 'FawnPetals'),
(21, 'gigiEDT', 'gigiEDT@gmail.com', 'gigiEDT'),
(22, 'GilSakura', 'GilSakura@gmail.com', 'GilSakura'),
(23, 'GoldenDruid', 'GoldenDruid@gmail.com', 'GoldenDruid'),
(24, 'JustyNadura', 'JustyNadura@gmail.com', 'JustyNadura'),
(25, 'Juukah', 'Juukah@gmail.com', 'Juukah'),
(26, 'MizoreBusujima', 'MizoreBusujima@gmail.com', 'MizoreBusujima'),
(27, 'nashiepotato', 'nashiepotato@gmail.com', 'nashiepotato'),
(28, 'Nat10370', 'Nat10370@gmail.com', 'Nat10370'),
(29, 'PersN1ck', 'PersN1ck@gmail.com', 'PersN1ck'),
(30, 'Pinlin', 'Pinlin@gmail.com', 'Pinlin'),
(31, 'Rakimou', 'Rakimou@gmail.com', 'Rakimou'),
(32, 'RoseRedTiger', 'RoseRedTiger@gmail.com', 'RoseRedTiger'),
(33, 'RoxsanKleit', 'RoxsanKleit@gmail.com', 'RoxsanKleit'),
(34, 'RuberaUnic', 'RuberaUnic@gmail.com', 'RuberaUnic'),
(35, 'sandara', 'sandara@gmail.com', 'sandara'),
(36, 'Seyumei', 'Seyumei@gmail.com', 'Seyumei'),
(37, 'Shwonky', 'Shwonky@gmail.com', 'Shwonky'),
(38, 'Solchan', 'Solchan@gmail.com', 'Solchan'),
(39, 'TheVictorAdame', 'TheVictorAdame@gmail.com', 'TheVictorAdame'),
(40, 'x-Celebril-x', 'xCelebrilx@gmail.com', 'x-Celebril-x'),
(41, 'Yesterlove', 'Yesterlove@gmail.com', 'Yesterlove'),
(42, 'HaKhalifa', 'HaKhalifa@gmail.com', 'HaKhalifa'),
(43, 'Hekkoto', 'Hekkoto@gmail.com', 'Hekkoto'),
(44, 'Glasshaus', 'Glasshaus@gmail.com', 'Glasshaus'),
(45, 'Mintflakeid', 'Mintflakeid@gmail.com', 'Mintflakeid'),
(46, 'ChrisNazgul', 'ChrisNazgul@gmail.com', 'ChrisNazgul'),
(47, 'niivu', 'niivu@gmail.com', 'niivu'),
(48, 'WatchTheSkiies', 'WatchTheSkiies@gmail.com', 'WatchTheSkiies'),
(49, 'Adni18', 'Adni18@gmail.com', 'Adni18'),
(50, 'LukePerceptions', 'LukePerceptions@gmail.com', 'LukePerceptions'),
(51, 'SaturnineRemnant', 'SaturnineRemnant@gmail.com', 'SaturnineRemnant'),
(52, 'peazecy', 'peazecy@gmail.com', 'peazecy'),
(53, 'AlbinoFlowers', 'AlbinoFlowers@gmail.com', 'AlbinoFlowers'),
(54, 'Amenorium', 'Amenorium@gmail.com', 'Amenorium'),
(55, 'WolsealMI', 'WolsealMI@gmail.com', 'WolsealMI'),
(56, 'PhloxeButt', 'PhloxeButt@gmail.com', 'PhloxeButt'),
(57, 'Rufsam', 'Rufsam@gmail.com', 'Rufsam'),
(58, 'Scribblespider', 'Scribblespider@gmail.com', 'Scribblespider'),
(59, 'kaashigore', 'kaashigore@gmail.com', 'SaturnineRekaashigoremnant'),
(60, 'Fenglingling43Hrs', 'Fenglingling43Hrs@gmail.com', 'Fenglingling43Hrs'),
(61, 'Plbike', 'Plbike@gmail.com', 'Plbike'),
(62, 'StudioDA', 'StudioDA@gmail.com', 'StudioDA'),
(63, 'IllustrativeMagicka', 'IllustrativeMagicka@gmail.com', 'IllustrativeMagicka'),
(64, 'savvypalette', 'savvypalette@gmail.com', 'savvypalette'),
(65, 'Victorez', 'Victorez@gmail.com', 'Victorez'),
(66, 'Novakovskaya', 'Novakovskaya@gmail.com', 'Novakovskaya'),
(67, 'Raon19', 'Raon19@gmail.com', 'Raon19'),
(68, 'Evangeline40003', 'Evangeline40003@gmail.com', 'Evangeline40003'),
(69, 'flavinethylston', 'flavinethylston@gmail.com', 'flavinethylston'),
(70, 'BiggyBungalo', 'BiggyBungalo@gmail.com', 'BiggyBungalo'),
(71, 'TristanKendell', 'TristanKendell@gmail.com', 'TristanKendell'),
(72, 'RosmanPL', 'RosmanPL@gmail.com', 'RosmanPL'),
(73, 'sakamina', 'sakamina@gmail.com', 'sakamina'),
(74, 'Remarin', 'Remarin@gmail.com', 'Remarin'),
(75, 'ArthurBn', 'ArthurBn@gmail.com', 'ArthurBn'),
(76, 'Chanderlieve', 'Chanderlieve@gmail.com', 'Chanderlieve'),
(77, 'Zarory', 'Zarory@gmail.com', 'Zarory'),
(78, 'ATArts', 'ATArts@gmail.com', 'ATArts'),
(79, 'empalu', 'empalu@gmail.com', 'empalu'),
(80, 'Cutiezor', 'Cutiezor@gmail.com', 'Cutiezor'),
(81, 'fooyee', 'fooyee@gmail.com', 'fooyee'),
(82, 'donchild', 'donchild@gmail.com', 'donchild'),
(83, 'ashpwright', 'ashpwright@gmail.com', 'ashpwright'),
(84, 'CulpeoFox', 'CulpeoFox@gmail.com', 'CulpeoFox'),
(85, 'Esperoart', 'Esperoart@gmail.com', 'Esperoart'),
(86, 'archiwyzard', 'archiwyzard@gmail.com', 'archiwyzard'),
(87, 'drachenmagier', 'drachenmagier@gmail.com', 'drachenmagier'),
(88, 'Tvonn9', 'Tvonn9@gmail.com', 'Tvonn9'),
(89, 'MizukiTA', 'MizukiTA@gmail.com', 'MizukiTA'),
(90, 'Swirlything', 'Swirlything@gmail.com', 'Swirlything'),
(91, 'ARTISTSpencerDerry', 'ARTISTSpencerDerry@gmail.com', 'ARTISTSpencerDerry'),
(92, 'Leonidafremov', 'Leonidafremov@gmail.com', 'Leonidafremov'),
(93, 'worldofcreativeart', 'worldofcreativeart@gmail.com', 'worldofcreativeart'),
(94, 'KatyLipscomb', 'KatyLipscomb@gmail.com', 'KatyLipscomb'),
(95, 'wlop', 'wlop@gmail.com', 'wlop'),
(96, 'AtomiccircuS', 'AtomiccircuS@gmail.com', 'AtomiccircuS'),
(97, 'TinyTruc', 'TinyTruc@gmail.com', 'TinyTruc'),
(98, 'alrun-art', 'alrun-art@gmail.com', 'alrun-art'),
(99, 'Kuvshinov-Ilya', 'Kuvshinov-Ilya@gmail.com', 'Kuvshinov-Ilya'),
(100, 'yuumei', 'yuumei@gmail.com', 'yuumei'),
(101, 'wataboku', 'wataboku@gmail.com', 'wataboku'),
(102, 'marvelmania', 'marvelmania@gmail.com', 'marvelmania'),
(103, 'MikaelWang', 'MikaelWang@gmail.com', 'MikaelWang'),
(104, 'Sa-Dui', 'Sa-Dui@gmail.com', 'Sa-Dui'),
(105, 'Nirozozo', 'Nirozozo@gmail.com', 'Nirozozo'),
(106, 'ADPong', 'ADPong@gmail.com', 'ADPong'),
(107, 'Domax-art', 'Domax-art@gmail.com', 'Domax-art'),
(108, 'lukesChillArt666', 'lukesChillArt666@gmail.com', 'lukesChillArt666'),
(109, 'r-trigger', 'r-trigger@gmail.com', 'r-trigger'),
(110, 'Kaizoku-hime', 'Kaizoku-hime@gmail.com', 'Kaizoku-hime'),
(111, 'young-street', 'young-street@gmail.com', 'young-street'),
(112, 'Kibbitzer', 'Kibbitzer@gmail.com', 'Kibbitzer'),
(113, 'Sellenin', 'Sellenin@gmail.com', 'Sellenin'),
(114, 'twin-tail', 'twin-tail@gmail.com', 'twin-tail'),
(115, 'ryky', 'ryky@gmail.com', 'ryky'),
(116, 'Anastasia-berry', 'Anastasia-berry@gmail.com', 'Anastasia-berry'),
(117, '', 'wlop@gmail.com', 'wlop'),
(118, 'Kibbitzer', 'Kibbitzer@gmail.com', 'Kibbitzer'),
(119, 'rohioart', 'rohioart@gmail.com', 'rohioart'),
(120, 'rika-dono', 'rika-dono@gmail.com', 'rika-dono'),
(121, 'jiuge', 'jiuge@gmail.com', 'jiuge');

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
  `abyssals_date` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `art_abyssals`
--

INSERT INTO `art_abyssals` (`id`, `art_id`, `abyssal_art`, `title`, `description`, `category`, `privacy`, `count_comment`, `count_fav`, `abyssals_date`) VALUES
(1, 36, 'va2021__eastern_tale_by_valzheimer_devuh61-fullview.jpg', 'test 1', 'this is a test', 'friends', 'everyone', 0, 0, ''),
(1, 37, 'scificorridor_by_oliverbeck_deuz6ak-pre.jpg', 'test 2', 'this is a test', '3D', 'everyone', 0, 0, ''),
(1, 38, 'broken_planet_by_pupiy220_dev1dr6-pre.jpg', 'test 3', 'this is a description', '', 'everyone', 0, 0, ''),
(1, 43, 'denwvpo-7cd12b1b-5ece-413e-882c-5e9b2c169d93.jpg', 'Magical Night Forest', 'The work was done on SM-LT Pro create - Watercolor paper made from 100% cotton. Acid-free, density of 300g / m. And professional watercolors from Rembrandt DeLuxe, which are highly regarded all over the world for their maximum light fastness.\r\n\r\nSignature on the back of the painting. This is original one of a kind hand painted artwork. Painting is not framed, photos with frames are just for example of interior design. All paintings are copyrighted and all rights reserved. Reproduction right of this product do not transfer to the buyer of the artwork. Do not store the painting in the room with high humidity', 'Anthro', 'everyone', 0, 0, ''),
(1, 44, 'blue_eyes_by_mirtrud_depdlhy-fullview.jpg', 'Magic Night  2 Fearless', 'asdajd asdbahsbdahbhasbda   aashbs', 'Anthro', 'everyone', 0, 0, 'January 26, 2022'),
(3, 45, 'flooded_and_forgotten___speedpaint_by_laghrian_derss1k-pre.jpg', 'Flooded and forgotten', 'Flooded and forgotten idols made in a honor of a god, represented as hare rabbit. Personal idea.\r\nProject for my portfolio. Has taken me a lot more time, because Ive made these stone statues in 3D in Blender Let me know what do you think!', '3D', 'everyone', 0, 0, 'January 29, 2022'),
(4, 46, 'another_morning_in_the_trenches_by_tigaer_depdyyv-pre.jpg', 'Another Morning in the Trenches', 'The only thing making me do graveyard shifts are these incredible sunrises in the Trenches and Calvin and Hobbes waiting for me. Jennas Diary  Calista  2733\r\n\r\nAfter getting inspired a decade ago I managed to turn said inspiration into a scene finally. Learning Blender on the way and ending up very happy with a result Im very happy with! Specific Info ', '3D', 'everyone', 0, 0, 'January 29, 2022'),
(5, 47, '_daz3d____cyberpunk_by_psk_projekt4d_detrnxj-pre.jpg', '[DAZ3D]- Cyberpunk', 'Finally, after many months I have a new wallpaper on my smartphone, that looks really cool on it. :happybounce: \r\nOtherwise, I didn\'t think much of it, just wanted to combine the lady with the bike and somehow it came out.Sweating a little...  In the background is a police operation to bring more lights and life into the picture. Actually there was a police robot, but then I removed it again. The same is true for the light cone of the drone, which you can\'t really see anymore.:| (Blank Stare)', '3D', 'Everyone', 0, 0, 'January 29, 2022'),
(6, 48, 'autumn_by_pjacubinas_depeguu-pre.jpg', 'Autumn', 'I personally can\'t wait to have some cooler weather again. This 100+ degrees is getting on my nerves....\r\n\r\nSet up and rendered in Daz3D, Composited and Color Corrected in PS CC\r\n\r\nI hope you enjoy it and thanks for looking!', '3D', 'Everyone', 0, 0, 'January 29, 2022'),
(7, 49, 'dercj9a-dc0772fe-48b4-4030-a88a-e4b59d24a847.png', 'Sine', 'Commission for Xtreme3D Artist Group d\r\nAngela3Ds Illuminati Portrait Probes', '3D', 'Everyone', 0, 0, 'January 29, 2022'),
(97, 50, 'portrait_jisoo_blackpink_by_tinytruc_dc5edj6-fullview.jpg', 'Portrait Jisoo Blackpink', '\"My page:\r\nDevianart: tinytruc.deviantart.com/\r\nIG: www.instagram.com/tinytruc_art\r\nArtStation: www.artstation.com/tinytruc\r\nFB: www.fb.com/tinytrucART/\r\nBehance: www.behance.net/tinytruc\r\nTwitter: twitter.com/TinyThanhTruc\r\nYoutube: www.youtube.com/tinytrucart\r\nEmail: TinyTrucART@gmail.com\"', 'Digital art', 'Everyone', 0, 0, 'January 30, 2022'),
(22, 55, 'lily_demon_oc_ayame_by_gisakura.jpg', 'Lily Demon - OC Ayame', '\r\nCOMMISSIONS OPEN \r\n\r\n\r\nTwitter  Instagram \r\n\r\n\r\n First drawing made with the ipad! Half done in procreate and the other half in clip studio xd And as a model my precious Ayame ', 'Anime and Manga', 'Everyone', 0, 0, 'January 30, 2022'),
(25, 57, '_prize__art_raffle_by_juukah.png', '[Prize] Art raffle', '\r\nArt raffle prize in my twitter ! \r\n\r\n\r\n─────────────────────────────────────────────\r\nCommission info (open)\r\n\r\nJuukah\'s Pixiv / twitter / Youtube  / Toy House ', 'Anime and Manga', 'Everyone', 0, 0, 'January 30, 2022'),
(21, 59, 'sakura_kinomoto_and_kerberos_by_gigiedt.jpg', 'Sakura Kinomomoto and Kerberos', '\r\nFanart from Card Captor Sakura I made on twitch as twitch subgoal\r\n\r\nIf you want to watch me when I\'m live subscribe to my channel:\r\nwww.twitch.tv/eudetenis', 'Anime and Manga', 'Everyone', 0, 0, 'January 30, 2022'),
(20, 62, 'autum_evening_by_fawnpetals.png', 'Autumn Evening', 'Gift for Fangeddoe on Twitter!', 'Anthro', 'Everyone', 0, 0, 'January 30, 2022'),
(26, 92, 'megumi_by_mizorebusujima.jpg', 'Megumi', '\r\nCharacter  Megumi \r\nArt © @Lau._.Art / MizoreBusujima \r\nTools:   Tablet Wacom Cintiq 16 | CLIP STUDIO PAINT\r\nTime taken: ??\r\n\r\nDrawing of my OC and Live2d Megumi! \r\n\r\nwww.teepublic.com/user/lau_art\r\n\r\n\r\nThank you so much for all the support! It means a lot to me! <3\r\n\r\nFeel free to follow me! ♪\r\n\r\nTwitter:  twitter.com/Lau_Art01\r\nInstagram:  www.instagram.com/lau._.art/\r\nPixiv: www.pixiv.net/member.php?id=33…\r\nTwitch: www.twitch.tv/lauart \r\n\r\nPlease do not use, trace, alter, copy, claim, reupload as your own without my permission.\r\n', 'Anime and Manga', 'Everyone', 0, 0, 'January 30, 2022'),
(38, 99, '_cm__kristal_by_solchan.jpg', '[CM] Kristal', 'Commission for :iconshadastorm120: \r\nHer OC Kristal Heart \r\n\r\n---------------------------------------------------\r\nMy other art sites:\r\n\r\n Twitter\r\n Instagram\r\n Facebook', 'Anime and Manga', 'Everyone', 0, 0, 'January 30, 2022'),
(19, 100, 'zhong_li_by_ereyz.jpg', 'Zhong Li', 'Sun    \r\n--------------------------------------------------\r\nAttention (deviantart icon) DO NOT REPOST\r\n\r\nDiluc - Genshin Impact by Ereyz Childe - Genshin Impact by Ereyz Kaeya - Genshin by Ereyz Zhongli - Genshin by Ereyz\r\n\r\n:fire:  High-res PNG, steps tutorial and layered PSD on my Patreon.com/Ereyz\r\n:fire:  PRINTS Redbubble\r\n:fire:  Old Patreon rewards on Gumroad\r\n\r\nPatreon (2017, round) Icon mid  PATREON REWARDS \r\n\r\nlittle star Exclusive Sketches & WIPs little star High quality Images little star Step by Step Shots little star\r\nlittle star Photoshop PSDs with layers  little star Different variations of some illustrations little star', 'Anime and Manga', 'Everyone', 0, 0, 'January 30, 2022'),
(27, 101, 'commission__nightwind87_by_nashiepotato.jpg', 'COMMISSION: NightWind87', '\r\n[  I l l u s t r a t i o n  ]\r\nR A O U L\r\n\r\n\r\n        It felt like I was speedrunning the rendering of this one --- it was a such a bliss to color him that I don\'t even notice the time pass :iconureshiiplz:. another bishie for NightWind87~ thanks so much for this opportunity to draw your wonderful bois :iconlazepoolplz  \r\n\r\n\r\n\r\n[ credits ]\r\nart © :iconnashiepotato:\r\ncharacter belongs to © :iconnightwind87:\r\n\r\n█ Regular Commissions [OPEN] \r\n\r\nI am open for anime-styled illustrations ~ If the slots are once again filled \'ve put up a waitlist for those who still want to order: trello.com/b/WY2cL53W \r\n \r\ncommission journal: \r\nwww.deviantart.com/nashiepotat…\r\n\r\nthanks for the interest! ≧◠‿◠≦\r\n\r\n█ Prices :\r\n\r\n● chibi = 18 USD\r\n● halfbody = 30 USD\r\n● fullbody = 60 USD \r\n\r\n▨ prices for character sheets and full illustrations will be discussed separately.\r\n\r\n█ Commission Info & Samples : commission info & TOS: nashiepotato.carrd.co/', 'Anime and Manga', 'Everyone', 0, 0, 'January 30, 2022'),
(30, 102, 'koi_in_sword_by_pinlin_.jpg', 'Koi In Sword', '\r\nMy OC Sachiro with Koi fish and his katana. I planned to animate the fish but it turns harder than I thought in Blender. Maybe switching back to after effects.\r\nI had this idea for a while with glass swords. It would be cool if something is moving inside.\r\n\r\nHe is from my visual novel \"Dark Nights\" pinlin.itch.io/darknights\r\n\r\nArt & Character Pinlin \r\nFind me on:@ Facebook @ Youtube @ Twitter @ Pixiv @ Instagram \r\n', 'Anime and Manga', 'Everyone', 0, 0, 'January 30, 2022'),
(39, 109, 'ajani__the_greathearted_by_thevictoradame.jpg', 'Ajani, The Greathearted', '\r\n\r\nAjani, the Greathearted\r\nAD: Taylor Ingvarsson. Magic the Gathering, copyright WOTC 2021\r\n\r\nThis was another fun and challenging art to work on, especially me being colorblind and all the greens/reds in the image. \r\nI think the white and green palette works really well so I wanted to try it out here, especially with Ajani being white-green mana aligned.', 'Anthro', 'Everyone', 0, 0, 'January 30, 2022'),
(30, 126, 'reflection_by_pinlin.jpg', 'Reflection', '\r\nGojo because he is bae😎 I gave him blue glasses with reflections of Geto. Its a bit small to see here though. I went a bit bold with colors, just to try out.\r\n\r\nI plan to share the process of this on my Class101 course later (en.class101.net/products/pinli…)\r\n\r\n\r\nArt Pinlin \r\nFind me on:@ Facebook @ Youtube @ Twitter @ Pixiv @ Instagram', 'Anime and Manga', 'Everyone', 0, 0, 'January 30, 2022'),
(33, 128, 'shaman_king_jeanne_x_shamash_by_roxsankleit.jpg', 'Shaman King Jeanne x Shamash', '\r\nSpeed Paint: www.youtube.com/watch?v=u-MuMN1jQg4&t=5s\r\nNetworks: linktr.ee/RoxsanKleit\r\n', 'Anime and Manga', 'Everyone', 0, 0, 'January 30, 2022'),
(36, 132, 'com_healing_magic_by_seyumei.png', ' Com: Healing Magic', '\r\n7-8 hr experimental commission for Flitchee (FA) of her velociraptor DnD character L\'triya! The theme given was \"the power of water and nature\"\r\n\r\nL\'triya\'s abilities are plant/nature/healing based, so I thought showing them saving some wildlife would be a good fit for the theme. ^^\r\n\r\nTwitter post: twitter.com/seyumei/status/140…', 'Anthro', 'Everyone', 0, 0, 'January 30, 2022'),
(16, 133, 'dangerous_encounter_by_bullstromparty.jpg', 'Dangerous Encounter', '\r\n\"Dangerous Encounter\"\r\n\r\nPainterly commission for @pbjamsandwich\r\nAgain, one more paint with this great werewolf!', 'Anthro', 'Everyone', 0, 0, 'January 30, 2022'),
(15, 134, 'eldridge_by_aspidal.png', 'Eldridge', 'commission', 'Anthro', 'Everyone', 0, 0, 'January 30, 2022'),
(37, 135, 'present_by_shwonky.jpg', 'Present', 'Older raffle prize for Echo_Sounding on Twitter. This character was (and is) truly lovely.', 'Anthro', 'Everyone', 0, 0, 'January 30, 2022'),
(31, 136, 'streets_of_mondstadt_by_rakimou.jpg', 'Streets of Mondstadt [COMM 20062021]', 'Commission for  pasterz, their fursona as Bennet (Genshin Impact) (＾▽＾)', 'Anthro', 'Everyone', 0, 0, 'January 30, 2022'),
(28, 137, 'ten_kodori_by_nat10730.jpg', 'Ten Kodori', 'Commission for rock_storage', 'Anthro', 'Everyone', 0, 0, 'January 30, 2022'),
(41, 138, 'the_bartender_com_by_yesterlove.jpg', 'the bartender', 'recent commission!', 'Anthro', 'Everyone', 0, 0, 'January 30, 2022'),
(23, 139, 'white_mage_by_goldendruid.jpg', 'White Mage', '✨Limited edition canvas-mounted prints: goldendruid.com/shop/canvas-wh…\r\n✨Prints Available: goldendruid.com/shop/print-whi…\r\n\r\nAnother mage added to the collection!\r\nThis portrait painting was commissioned by Kyree.\r\n\r\n©GoldenDruid2021', 'Anthro', 'Everyone', 0, 0, 'January 30, 2022'),
(92, 150, 'blue_lights_at_night_by_leonid_afremov_by_leonidafremov_d80ddu6-pre.jpg', 'Blue lights at Nighttumn', '\"We would like to present hand painted oil on canvas painting of Afremovs artwork mentioned in the title. This art piece made by Leonid Afremov Studio with the same amount of soul and emotion just like the first original painting. The piece is created with oil paint on artistic canvas using Afremovs unique technique of a palette knife.\"\r\n', 'Digital art', 'Everyone', 0, 0, 'January 30, 2022'),
(93, 151, 'djdgxo-cefa282e-90b5-49ac-ba33-765dc251bd04.jpg', 'Digital Art Painting', '\"Digital Art Painting\"', 'Digital art', 'Everyone', 0, 0, 'January 30, 2022'),
(94, 152, 'foxicorn_by_katylipscomb_dcfvjh4-fullview.jpg', 'Foxicorn', '\"A little Foxicorn that I drew in honor of Junicorn hehe <3 \"', 'Digital art', 'Everyone', 0, 0, 'January 30, 2022'),
(95, 153, 'jade_by_wlop_d9n5wvp-pre.jpg', 'Jade', '\"My original character Jade in Ghostblade, oriental girl, short hair, tatoo, kongfu! and what else?\r\n\r\nI\'ll provide full normal speed video process on my patreon:www.patreon.com/wlop\r\n\r\nYou can also support me on creating my own comic Ghostblade on my patreon: www.patreon.com/wlop\r\n\r\nAs rewards, you will get: \r\n> full size image \r\n> PSD file with steps in different layer, and brush set \r\n> HD, normal speed process video\"', 'Digital art', 'Everyone', 0, 0, 'January 30, 2022'),
(96, 154, 'large_scale_dots_painting___close_up___by_atomiccircus_d8fhc69-fullview.jpg', 'Large scale Dots Painting ( close up )', '\"Large scale Dots Painting ( close up )\r\n\r\n    I just remembered that i have never uploaded a close up of this painting. \"', 'Digital art', 'Everyone', 0, 0, 'January 30, 2022'),
(98, 156, 'priscila__commission__by_alrun_art_dcxu0l8-fullview.jpg', 'Priscila [Commission]', '\"This is a portrait commission I did for a very lovely client. Capturing likeness is not that easy for me, but I think I did quite well here. Hope you like it, too!\"', 'Digital art', 'Everyone', 0, 0, 'January 30, 2022'),
(99, 157, 'd97g1xu-764c3729-b6a8-4748-bdac-e9b5471450e7.jpg', 'Red', '\"You can support me and get access for process steps, videos, PSDs, brushes, etc. here:\r\n\r\nwww.patreon.com/KR0NPR1NZ\r\n\r\nMore art on:\r\n\r\nFacebook www.facebook.com/kr0npr1nz\r\n\r\nTwitter twitter.com/KR0NPR1NZ\r\n\r\nInstagram instagram.com/kr0npr1nz\r\n\r\ntumblr kr0npr1nz.tumblr.com/\"', 'Digital art', 'Everyone', 0, 0, 'January 30, 2022'),
(100, 158, 'sprinkles_of_stars_by_yuumei_d9eolhq-fullview.jpg', 'Sprinkles of Stars', '\"Freckles are like sprinkles of stars~\r\n\r\n1 hour speed paint I did with the intention of recording the process, but after I finished drawing, I realized that OBS had glitched and didn\'t record anything orz You can still check out my other video tutorials on my Youtube channel!\r\n\r\nOh well, back to drawing Fisheye for meeeee~\"', 'Digital art', 'Everyone', 0, 0, 'January 30, 2022'),
(101, 159, 'under_the_skin_by_wataboku_dcmo2ec-fullview.jpg', 'under the skin', '\" ■Instagram : instagram.com/wataboku__/\r\n■Facebook : www.facebook.com/watashibokuor…\r\n■Twitter : twitter.com/wataboku_\r\n■pixiv : pixiv.me/wataboku\r\n■Tumblr : wataboku.tumblr.com/\"\r\n', 'Digital art', 'Everyone', 0, 0, 'January 30, 2022'),
(102, 160, 'luffy_vs_doflamingo_colored_by_marvelmania_d8tkpp0-fullview.jpg', 'Luffy vs Doflamingo Colored', 'MONKEY D. LUFFY kicking DOFLAMINGO ASS, on his Gear4th mode!!! \r\nFrom the great ONE PIECE, and now as I promised, COLORED\r\nMy favorite character nowadays! The only Show/anime that made me cry and twice! Nothing can beat this story, its just way too good!\r\nJust for fun\r\nI hope you like it! Your comments are priceless\r\n\r\nFlats by: :iconMiles-ProwerX:\r\nA LOT MORE ON my new Facebook Page: www.facebook.com/luisgfigueire… CHECK IT OUT AND SHARE IT!!! :D (Big Grin)\r\n\r\nTake care ;) (Wink)\r\n', 'Fan art', 'Everyone', 0, 0, 'January 30, 2022'),
(118, 161, 'running_reference_sheet_by_kibbitzer_d8xtvrs-fullview.jpg', 'Running Reference Sheet', 'This is a little preview!\r\nI looked at maaaaaany photos to understand how this shit works..\r\nI hate to draw running people..REALLY, but I tried to make it look \"easy\"  for you and  I hope you\'ll find it useful!\r\nThanks for the support!!! :\'D\r\n\r\nIf you are interested you can find the complete series on patreon!\r\nBTW I don\'t consider it a \"special\" reference sheet so you can see it for 1$ per month with the other classic series!', 'Tutorail', 'Everyone', 0, 0, 'January 30, 2022'),
(119, 162, 'sbs__leg_and_thighs_by_rohioart_da90k19-fullview.jpg', 'SBS Leg And Thighs', 'I hope my terrible explaining helps\r\n\r\n\r\nDone in: Paint Tool Sai\r\nWith: Brush, Water Color, Luminosity', 'Tutorial', 'Everyone', 0, 0, 'January 30, 2022'),
(120, 163, 'sitting_poses_by_rika_dono_d95vtd2-fullview.jpg', 'Sitting Poses', 'There was an empty space so I\'ve put a portrait xD\r\n\r\nNo, I can\'t give you a bigger resolution file. This is the size I used to draw.\r\nNo idea which category this belong to.', 'Tutorial', 'Everyone', 0, 0, 'January 30, 2022'),
(121, 164, 'd9aw85c-1bb923ae-2a60-4927-8fe5-d902333b7395.jpg', 'Tutorial male torso', 'This is part of the Term 4\'s Tutorial for male turso, including progress video as well!\r\n\r\nTerm 4 will end by 9-30-2015, so act quick if you want this', '3D', 'Everyone', 0, 0, 'January 30, 2022');

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

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `category` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`category`, `img`, `description`) VALUES
('3D', '3d.jpg', 'Art made using 3D software like Maya, Cinema 4D, 3ds Max, and more.'),
('Adoptables', 'adoptables.jpg', 'Explore the possibilities of character and species bases, adopted and brought to life here..'),
('Anime and Manga', 'anime.jpg', 'Cartoons, graphic novels, and videos created in the popular Japanese style'),
('Anthro', 'anthro.jpg', 'Your home for furry-related art and fiction. Fur, tails, scales, and wings are all welcome here.'),
('Comics', 'comics.jpg', 'From superheroes to graphic novels, original characters to fan art, comics are both a style and a story.'),
('Digital Art', 'digital art.jpg', 'Where talent meets tech. Using digital tools to create dazzling art: photographs, drawings, paintings, and 3D.'),
('Drawings and Paintings', 'drawing and paintings.jpg', 'Hand drawn or digital, these drawings and paintings cover every style and genre.'),
('Fan Art', 'fan art.jpg', 'Art inspired by movies, characters, books, comics, and more.'),
('Game Art', 'game art.jpg', 'Concept art for video game worlds: immersive environments, characters, and objects'),
('Science Fiction', 'science fiction.jpg', 'Visions of the future and technology taken to the extreme: space travel, mecha, dystopian cities, and more.'),
('Sculpture', 'sculpture.jpg', 'Sculpted from clay, carved from wood, welded from metal—this is art in physical form.'),
('Traditional Arts', 'traditional art.jpg', 'No computers allowed! Traditional, hand-made art in a wide range of mediums and genres.'),
('Tutorials', 'tutorials.jpg', 'Step-by-step guides to help you become a better artist.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abyss_post`
--
ALTER TABLE `abyss_post`
  ADD PRIMARY KEY (`post_id`);

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
-- AUTO_INCREMENT for table `abyss_post`
--
ALTER TABLE `abyss_post`
  MODIFY `post_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `abyss_user`
--
ALTER TABLE `abyss_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `art_abyssals`
--
ALTER TABLE `art_abyssals`
  MODIFY `art_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `test_img`
--
ALTER TABLE `test_img`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
