-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 01, 2022 at 09:46 AM
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
  `id` int(11) NOT NULL,
  `art_id` int(11) NOT NULL,
  `comment` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(61, 2, 43),
(62, 2, 38),
(63, 2, 36),
(65, 1, 43),
(66, 1, 38),
(76, 1, 49),
(80, 1, 45),
(82, 1, 47),
(83, 1, 37),
(84, 1, 134),
(85, 1, 135),
(86, 1, 138),
(87, 2, 37),
(88, 2, 47);

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
(1, 27, 'terrorize_by_archerey_deg59lu-pre.jpg', 'fuck off', 'cute ko NGL, FR FR FR FR ', 0, 0, 'everyone'),
(122, 28, 'ddulghx-4a11ffd2-e804-4849-9067-36768b079765(Cover photo).png', 'ART FEATURE - Hidden Gems', 'Hello guys! How are you doing? wave remake \r\n\r\n\r\nI\'ve been wanting to do a feature like this one since last year, but 2021 was hectic in its entirety and I didn\'t get enough motivation nor time to do it... \r\n\r\nBut today, I got myself ready and managed to finally prepare a big showcase with more than 90 pieces! (yep, you read that right). \r\n\r\n\r\nMost artists in this showcase have less than 100 or 200 watchers, and are really talented in their own craft, whether it\'s traditional or digital. Go give them appreciation and support if you enjoyed their style or what type of art they\'re into! Tiny Pixel Sparkle \r\n\r\n\r\nSo now, without further ado, let\'s dive into the feature! :D', 0, 0, 'everyone'),
(123, 29, 'commission_price_list__updated_20_01_22__by_queen_of_kinkiness_dexib3f-fullview(COVER PHOTO).jpg', 'Commissions Prices Update', 'I was taught in school that I should gift someone a present on my Birthday as others do the same to me. \r\n\r\n\r\nSo, since on February 2 I\'ll turned 22, here\'s my present for you folks: I\'ve lowered the Commissions Prices by 20$. \r\n\r\n\r\nCheck it out on my profile!', 0, 0, 'everyone'),
(124, 34, 'hmmmm_by_buba54_deyccnm-fullview(cover photo).jpg', 'Commission Art (open)', 'Hi! Now I\'m open to commissions!\r\n\r\nHere are some details about it:\r\n\r\n-Please prepare a reference or descriptions\r\n\r\n-I will prepare a sketch and send it to you for approval (2 major edits are allowed at this stage)\r\n\r\n-After approval, line and color follow (2 major edits at this stage)\r\n\r\n\r\n\r\n\r\nPayment 50% after sketch approval and 50% upon completion. WebMoney or Points.\r\n\r\n\r\n\r\n\r\nWill draw:\r\n\r\n-Anime art\r\n\r\n-Anime fan art\r\n\r\n-Character art\r\n\r\n-Stickers\r\n\r\n-And more (after discussing the details)\r\n\r\n\r\n\r\n\r\nPrice:\r\n\r\nHeadshot (B/W):- $3.00/300da Points\r\n\r\nHeadshot (Colour):- $5.00/5000da Points Waist Up (B/W):- $14.00/1400da Points\r\n\r\nWaist Up (Colour):- $8.00/800da Points Full Body (B/W):- $27.00/5300da Points\r\n\r\nFull Body (Colour):- $10.00/1000da Points\r\n\r\nAdd Ons:-\r\n\r\n+Person (fullprise)\r\n\r\n+Background/ Scene - B/W = $4.00/400da Points\r\n\r\nCouler = $8.00/800da Points\r\n\r\n\r\n\r\n\r\nDeadlines:\r\n\r\nFrom 3 to 7 days per commission\r\n\r\n\r\n\r\n\r\nTo learn more and ask questions, see my work or place an order, write to my deviant profile.', 0, 0, 'everyone'),
(125, 35, 'demochibi_by_a_i_k_art_deyi22c-fullview(cover photo).png', 'DEMO', 'Hey~!\r\n\r\nWe are releasing a free demo of our game so you can try it~ \r\n\r\n\r\nThis is just a fraction of the game, you can find the latest version in our Patreon! 💗', 0, 0, 'everyone'),
(126, 37, 'bleach_matsumoto_rangiku_valentines_day_hitsugaya__by_dragomaster767_deyp3m5-pre(cover photo).jpg', 'Finally Opening Commissions!', 'As you are all well aware, Valentine\'s Day is coming up soon! But rather be a scrooge about it, I\'ve decided to do something productive.  I\'ve finally decided to start writing commissions to help me raise some money to  get commissioned art for my fanfiction and to help pay some bills on  the side.\r\n\r\n\r\nAt first, I didn\'t have anything that came to mind about  what I could do, but then I remembered the songfics I did a while back,  which gave me an idea. So instead of having people vote on what  characters I should focus on, I\'ll let them decide what they want.\r\n\r\nI\'ll call them Valentine\'s Songfics!\r\n\r\n\r\nNow,  here\'s how it\'s going to work. I will write songfics based on what you  choose for the song and the couple you want it to go out to; however, I  would like to keep a couple of rules in mind.\r\n\r\n\r\n- Pick a Disney song you would like me to use for the songfic as well as a synopsis.\r\n\r\n- Tell me which anime pairing you would like me to use. \r\n- I will not write songfics for historical figures, real-life people, animals, etc. Make sure to ask me if you\'re not sure.\r\n\r\n- If you wish to commission me, be sure to send me a note labeled: COMMISSION, PLEASE. or comment on this journal!\r\n\r\n- For the price, I don	 have a list per word, but for now, I\'ll stick to 15 dollars per songfic.\r\n\r\n- As far as my payment goes, I expect to be paid upfront, and I\'ll be using Paypal for the method.\r\n\r\n- I also have the right to refuse a commission if I don\'t like the idea or it is outside of my skill.\r\n\r\n- No refunds! \r\n\r\n\r\nI have some posts if you want to see some examples, so please check them out!\r\n\r\nCandle On The Water Gray x Juvia\r\n\r\n\r\nA Whole New World Natsu x Lucy \r\n\r\n\r\nThere really isn\'t limited slots right now, so if you want to, then go for it! I look forward to hearing from you! ^^', 0, 0, 'everyone'),
(131, 38, 'manyadraws_ditys_entry___speedpaint_by_cutekitten19 (COVER).jpg', 'REQUEST BOX [Open]', 'NOTE: requests are going to be my hobby from time to time. I will use them to improve and play around with my style. If you are very serious about getting art from me, I recommend commissioning me.\r\n\r\nMUST READ\r\n\r\n-Please only request me though here.\r\n-I will not be drawing any NSFW art.\r\n\r\n-I will not be drawing fanart or gifts (commission of those are fine just not requests)\r\n-I only draw human-like species.\r\n\r\n-I won\'t reply to you telling that you\'ve been denied or accepted.\r\n\r\n-I will not be doing any specific style or such for you. \r\n\r\n-You must tag at least 3 people and share this via journal/status!\r\n\r\nNow if you\'ve read all that. Congratulations, drop your OCS down!', 0, 0, 'everyone'),
(130, 39, 'closed_by_featheredroblox_deyqb9d (COVER).jpg', 'Request', '\r\nHey guys, just a quick message here.\r\n\r\nRecently there\'s been a big influx of requests, about 2-3 per day, and I only do about 1 per day, (sometimes 2 based on the complexity of the request). The reason is because 1 request takes 1-2 hours, and I have a life to live other than deviantart. \r\n\r\nI choose which request to do based on a few factors which I won\'t say, but if you just comment and tell me to do something, chances are I won\'t do your request.\r\n\r\nI\'m just closing requests for a little because I need some chill time, that\'s all. See you guys later!\r\nClosed', 0, 0, 'everyone'),
(129, 40, 'deuqyj1-bbea172e-768f-428a-a949-416d41f5cf84 (COVER).png', 'NFT theft - Zelda artists', 'EDIT: Looks like we did it! 😄\r\nWhen clicking on the link there\'s no picture on display in this os account anymore! Nice work everyone!\r\n\r\nOld post:\r\n\r\nHello everyone!\r\n\r\nI don\'t know if it has been shared already, but we got this account selling a bunch of stolen Zelda art as NFTs: \r\n\r\nhttps://opensea.io/0xcfa655727c17607ac84e35d26805f2cc30e45213\r\n\r\nFeel free to spread the word and to report this opensea account. I\'m trying to gather a list of the artists that have been stolen too.\r\n\r\nStay safe and take care. ', 0, 0, 'everyone'),
(128, 41, 'elvira_by_nkstudiodigital_dewualq-pre (COVER).jpg', 'CommissionIsNowOpen', '\r\nHi guys,\r\n\r\nIf u want to have your dream heroes, original characters, NFTs come true in high-quality with a good price! Don\'t hesitate to contact us via email: nkstudiodigital@gmail.com\r\n\r\nThe link below contains all information about our prices and rules of taking commission:\r\n\r\n    https://www.artstation.com/blogs/nk_art/6L0V/nk-studio-digital-commission-and-status-2022\r\n\r\nWe\'re opening for commission, there are some references of our commission pieces below:\r\n\r\n    https://www.deviantart.com/nkstudiodigital/art/Grandessa-Shantalla-Karinor-874656017\r\n\r\n    https://www.deviantart.com/nkstudiodigital/art/Glorious-836880199\r\n\r\n    https://www.deviantart.com/nkstudiodigital/art/Thorn-897618046\r\n\r\nIf you like my style, you can look for more of my illustrations in here:\r\n\r\n    https://www.deviantart.com/nkstudiodigital\r\n\r\n    https://www.artstation.com/nk_art\r\n\r\n    https://www.instagram.com/nk.studiodigital/\r\n\r\nThanks a lot for passing by and have a good day!', 0, 0, 'everyone'),
(127, 42, 'by_the_creek_by_phyllitecreek_dexrda9-pre (COVER).jpg', 'anyone be interested helping an animated series', '\r\nsrry for lack of posts, i took a break from drawing (yes 4 days is a break to me i draw a lot everyday so thatsa big deal >:VVV) ill finish up comms today and tmr !\r\n\r\nanyways would anyone be interested in helping with a (roughly) animated series? Ive been planning it for almost 2 years now, it should be in production by the end of the year or possibly sooner, perhaps the summer of this year.\r\n\r\nand ik trying to make an animated series is a pretty big stretch but thats why im limiting the animation, it wont be fully animated. Imagine an animation with just the keyframes, no in-betweens, thats basically how it\'d be.\r\nI\'d need others to help on the animation as well if i want it finished which is also why im making this post.\r\n\r\nid need help with lots of things such as storyboarding, voice acting, coloring, backgrounds, sound effects, music, editing, character designing etc. maybe some other things i haven\'t thought of but thats about it\r\n\r\nfor now its plot is still being developed and nothing is happening with it currently, i just wanted to make this to see if anyone here would be interested in helping.\r\nI can go more in detail if anyone has any questions about it but thats all for now !\r\n\r\n(i may be making more frequent updates about the series here as well!)\r\n\r\nits called Villedelune :DD \r\n\r\n- plot summary -\r\n\r\nbasically its abt foxes bc smh who knows how to draw humans /s\r\n\r\n\r\nTheres a main cast of the 7 main characters, one of them being the main protagonist (Skyta) \r\n\r\nThe main story is Skyta searching through different worlds (basically theres different worlds that they can travel to, but they have to have this special item to be able to do that and if they have the item then they\'re known as world-jumpers and they\'re rlly rare, but one of the main cast is a world-jumper so thats how they\'re able to travel everywhere)\r\n\r\nSo Skyta\'s goal is to find her lost friend throughout the worlds but the story isnt entirely focused around her\r\n\r\nbc then basically what im thinking is that the series is split up into different sections each focusing on one character of the main cast and their backstory and life and each of them struggle with a main problem and learn how to cope with what they\'re dealing with\r\n\r\nim still finishing up everything that happens in the plot but thats the shortest summary i can get\r\n\r\nuwu\r\n\r\n\r\nCharacters/toyhouse \r\n\r\nif u want info on the characters ^^\r\n© 2022 PhylliteCreek', 0, 0, 'everyone');

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
(2, 'b1ngu', 'b1ngu@gmail.com', 'b1nguMachaLover', '6a391e2d188f5c4fe8973c248bb5e805.jpg', 'meteor_shower_by_t1na_denymcu-fullview.jpg', 'Artist', '2001-10-25', 'Student', 'Philippines', 'Traditional Art', 'He/Him'),
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
(1, 36, 'va2021__eastern_tale_by_valzheimer_devuh61-fullview.jpg', 'test 1', 'this is a test', 'friends', 'everyone', 0, 1, '', NULL),
(1, 37, 'scificorridor_by_oliverbeck_deuz6ak-pre.jpg', 'test 2', 'this is a test', '3D', 'everyone', 0, 2, '', NULL),
(1, 38, 'broken_planet_by_pupiy220_dev1dr6-pre.jpg', 'test 3', 'this is a description', '', 'everyone', 0, 2, '', NULL),
(1, 43, 'denwvpo-7cd12b1b-5ece-413e-882c-5e9b2c169d93.jpg', 'Magical Night Forest', 'The work was done on SM-LT Pro create - Watercolor paper made from 100% cotton. Acid-free, density of 300g / m. And professional watercolors from Rembrandt DeLuxe, which are highly regarded all over the world for their maximum light fastness.\r\n\r\nSignature on the back of the painting. This is original one of a kind hand painted artwork. Painting is not framed, photos with frames are just for example of interior design. All paintings are copyrighted and all rights reserved. Reproduction right of this product do not transfer to the buyer of the artwork. Do not store the painting in the room with high humidity', 'Anthro', 'everyone', 0, 2, '', NULL),
(1, 44, 'blue_eyes_by_mirtrud_depdlhy-fullview.jpg', 'Magic Night  2 Fearless', 'asdajd asdbahsbdahbhasbda   aashbs', 'Anthro', 'everyone', 0, 0, 'January 26, 2022', NULL),
(3, 45, 'flooded_and_forgotten___speedpaint_by_laghrian_derss1k-pre.jpg', 'Flooded and forgotten', 'Flooded and forgotten idols made in a honor of a god, represented as hare rabbit. Personal idea.\r\nProject for my portfolio. Has taken me a lot more time, because Ive made these stone statues in 3D in Blender Let me know what do you think!', '3D', 'everyone', 0, 1, 'January 29, 2022', NULL),
(4, 46, 'another_morning_in_the_trenches_by_tigaer_depdyyv-pre.jpg', 'Another Morning in the Trenches', 'The only thing making me do graveyard shifts are these incredible sunrises in the Trenches and Calvin and Hobbes waiting for me. Jennas Diary  Calista  2733\r\n\r\nAfter getting inspired a decade ago I managed to turn said inspiration into a scene finally. Learning Blender on the way and ending up very happy with a result Im very happy with! Specific Info ', '3D', 'everyone', 0, 0, 'January 29, 2022', NULL),
(5, 47, '_daz3d____cyberpunk_by_psk_projekt4d_detrnxj-pre.jpg', '[DAZ3D]- Cyberpunk', 'Finally, after many months I have a new wallpaper on my smartphone, that looks really cool on it. :happybounce: \r\nOtherwise, I didn\'t think much of it, just wanted to combine the lady with the bike and somehow it came out.Sweating a little...  In the background is a police operation to bring more lights and life into the picture. Actually there was a police robot, but then I removed it again. The same is true for the light cone of the drone, which you can\'t really see anymore.:| (Blank Stare)', '3D', 'Everyone', 0, 2, 'January 29, 2022', NULL),
(6, 48, 'autumn_by_pjacubinas_depeguu-pre.jpg', 'Autumn', 'I personally can\'t wait to have some cooler weather again. This 100+ degrees is getting on my nerves....\r\n\r\nSet up and rendered in Daz3D, Composited and Color Corrected in PS CC\r\n\r\nI hope you enjoy it and thanks for looking!', '3D', 'Everyone', 0, 0, 'January 29, 2022', NULL),
(7, 49, 'dercj9a-dc0772fe-48b4-4030-a88a-e4b59d24a847.png', 'Sine', 'Commission for Xtreme3D Artist Group d\r\nAngela3Ds Illuminati Portrait Probes', '3D', 'Everyone', 0, 1, 'January 29, 2022', NULL),
(97, 50, 'portrait_jisoo_blackpink_by_tinytruc_dc5edj6-fullview.jpg', 'Portrait Jisoo Blackpink', '\"My page:\r\nDevianart: tinytruc.deviantart.com/\r\nIG: www.instagram.com/tinytruc_art\r\nArtStation: www.artstation.com/tinytruc\r\nFB: www.fb.com/tinytrucART/\r\nBehance: www.behance.net/tinytruc\r\nTwitter: twitter.com/TinyThanhTruc\r\nYoutube: www.youtube.com/tinytrucart\r\nEmail: TinyTrucART@gmail.com\"', 'Digital art', 'Everyone', 0, 0, 'January 30, 2022', NULL),
(22, 55, 'lily_demon_oc_ayame_by_gisakura.jpg', 'Lily Demon - OC Ayame', '\r\nCOMMISSIONS OPEN \r\n\r\n\r\nTwitter  Instagram \r\n\r\n\r\n First drawing made with the ipad! Half done in procreate and the other half in clip studio xd And as a model my precious Ayame ', 'Anime and Manga', 'Everyone', 0, 0, 'January 30, 2022', NULL),
(25, 57, '_prize__art_raffle_by_juukah.png', '[Prize] Art raffle', '\r\nArt raffle prize in my twitter ! \r\n\r\n\r\n─────────────────────────────────────────────\r\nCommission info (open)\r\n\r\nJuukah\'s Pixiv / twitter / Youtube  / Toy House ', 'Anime and Manga', 'Everyone', 0, 0, 'January 30, 2022', NULL),
(21, 59, 'sakura_kinomoto_and_kerberos_by_gigiedt.jpg', 'Sakura Kinomomoto and Kerberos', '\r\nFanart from Card Captor Sakura I made on twitch as twitch subgoal\r\n\r\nIf you want to watch me when I\'m live subscribe to my channel:\r\nwww.twitch.tv/eudetenis', 'Anime and Manga', 'Everyone', 0, 0, 'January 30, 2022', NULL),
(20, 62, 'autum_evening_by_fawnpetals.png', 'Autumn Evening', 'Gift for Fangeddoe on Twitter!', 'Anthro', 'Everyone', 0, 0, 'January 30, 2022', NULL),
(26, 92, 'megumi_by_mizorebusujima.jpg', 'Megumi', '\r\nCharacter  Megumi \r\nArt © @Lau._.Art / MizoreBusujima \r\nTools:   Tablet Wacom Cintiq 16 | CLIP STUDIO PAINT\r\nTime taken: ??\r\n\r\nDrawing of my OC and Live2d Megumi! \r\n\r\nwww.teepublic.com/user/lau_art\r\n\r\n\r\nThank you so much for all the support! It means a lot to me! <3\r\n\r\nFeel free to follow me! ♪\r\n\r\nTwitter:  twitter.com/Lau_Art01\r\nInstagram:  www.instagram.com/lau._.art/\r\nPixiv: www.pixiv.net/member.php?id=33…\r\nTwitch: www.twitch.tv/lauart \r\n\r\nPlease do not use, trace, alter, copy, claim, reupload as your own without my permission.\r\n', 'Anime and Manga', 'Everyone', 0, 0, 'January 30, 2022', NULL),
(38, 99, '_cm__kristal_by_solchan.jpg', '[CM] Kristal', 'Commission for :iconshadastorm120: \r\nHer OC Kristal Heart \r\n\r\n---------------------------------------------------\r\nMy other art sites:\r\n\r\n Twitter\r\n Instagram\r\n Facebook', 'Anime and Manga', 'Everyone', 0, 0, 'January 30, 2022', NULL),
(19, 100, 'zhong_li_by_ereyz.jpg', 'Zhong Li', 'Sun    \r\n--------------------------------------------------\r\nAttention (deviantart icon) DO NOT REPOST\r\n\r\nDiluc - Genshin Impact by Ereyz Childe - Genshin Impact by Ereyz Kaeya - Genshin by Ereyz Zhongli - Genshin by Ereyz\r\n\r\n:fire:  High-res PNG, steps tutorial and layered PSD on my Patreon.com/Ereyz\r\n:fire:  PRINTS Redbubble\r\n:fire:  Old Patreon rewards on Gumroad\r\n\r\nPatreon (2017, round) Icon mid  PATREON REWARDS \r\n\r\nlittle star Exclusive Sketches & WIPs little star High quality Images little star Step by Step Shots little star\r\nlittle star Photoshop PSDs with layers  little star Different variations of some illustrations little star', 'Anime and Manga', 'Everyone', 0, 0, 'January 30, 2022', NULL),
(27, 101, 'commission__nightwind87_by_nashiepotato.jpg', 'COMMISSION: NightWind87', '\r\n[  I l l u s t r a t i o n  ]\r\nR A O U L\r\n\r\n\r\n        It felt like I was speedrunning the rendering of this one --- it was a such a bliss to color him that I don\'t even notice the time pass :iconureshiiplz:. another bishie for NightWind87~ thanks so much for this opportunity to draw your wonderful bois :iconlazepoolplz  \r\n\r\n\r\n\r\n[ credits ]\r\nart © :iconnashiepotato:\r\ncharacter belongs to © :iconnightwind87:\r\n\r\n█ Regular Commissions [OPEN] \r\n\r\nI am open for anime-styled illustrations ~ If the slots are once again filled \'ve put up a waitlist for those who still want to order: trello.com/b/WY2cL53W \r\n \r\ncommission journal: \r\nwww.deviantart.com/nashiepotat…\r\n\r\nthanks for the interest! ≧◠‿◠≦\r\n\r\n█ Prices :\r\n\r\n● chibi = 18 USD\r\n● halfbody = 30 USD\r\n● fullbody = 60 USD \r\n\r\n▨ prices for character sheets and full illustrations will be discussed separately.\r\n\r\n█ Commission Info & Samples : commission info & TOS: nashiepotato.carrd.co/', 'Anime and Manga', 'Everyone', 0, 0, 'January 30, 2022', NULL),
(30, 102, 'koi_in_sword_by_pinlin_.jpg', 'Koi In Sword', '\r\nMy OC Sachiro with Koi fish and his katana. I planned to animate the fish but it turns harder than I thought in Blender. Maybe switching back to after effects.\r\nI had this idea for a while with glass swords. It would be cool if something is moving inside.\r\n\r\nHe is from my visual novel \"Dark Nights\" pinlin.itch.io/darknights\r\n\r\nArt & Character Pinlin \r\nFind me on:@ Facebook @ Youtube @ Twitter @ Pixiv @ Instagram \r\n', 'Anime and Manga', 'Everyone', 0, 0, 'January 30, 2022', NULL),
(39, 109, 'ajani__the_greathearted_by_thevictoradame.jpg', 'Ajani, The Greathearted', '\r\n\r\nAjani, the Greathearted\r\nAD: Taylor Ingvarsson. Magic the Gathering, copyright WOTC 2021\r\n\r\nThis was another fun and challenging art to work on, especially me being colorblind and all the greens/reds in the image. \r\nI think the white and green palette works really well so I wanted to try it out here, especially with Ajani being white-green mana aligned.', 'Anthro', 'Everyone', 0, 0, 'January 30, 2022', NULL),
(30, 126, 'reflection_by_pinlin.jpg', 'Reflection', '\r\nGojo because he is bae😎 I gave him blue glasses with reflections of Geto. Its a bit small to see here though. I went a bit bold with colors, just to try out.\r\n\r\nI plan to share the process of this on my Class101 course later (en.class101.net/products/pinli…)\r\n\r\n\r\nArt Pinlin \r\nFind me on:@ Facebook @ Youtube @ Twitter @ Pixiv @ Instagram', 'Anime and Manga', 'Everyone', 0, 0, 'January 30, 2022', NULL),
(33, 128, 'shaman_king_jeanne_x_shamash_by_roxsankleit.jpg', 'Shaman King Jeanne x Shamash', '\r\nSpeed Paint: www.youtube.com/watch?v=u-MuMN1jQg4&t=5s\r\nNetworks: linktr.ee/RoxsanKleit\r\n', 'Anime and Manga', 'Everyone', 0, 0, 'January 30, 2022', NULL),
(36, 132, 'com_healing_magic_by_seyumei.png', ' Com: Healing Magic', '\r\n7-8 hr experimental commission for Flitchee (FA) of her velociraptor DnD character L\'triya! The theme given was \"the power of water and nature\"\r\n\r\nL\'triya\'s abilities are plant/nature/healing based, so I thought showing them saving some wildlife would be a good fit for the theme. ^^\r\n\r\nTwitter post: twitter.com/seyumei/status/140…', 'Anthro', 'Everyone', 0, 0, 'January 30, 2022', NULL),
(16, 133, 'dangerous_encounter_by_bullstromparty.jpg', 'Dangerous Encounter', '\r\n\"Dangerous Encounter\"\r\n\r\nPainterly commission for @pbjamsandwich\r\nAgain, one more paint with this great werewolf!', 'Anthro', 'Everyone', 0, 0, 'January 30, 2022', NULL),
(15, 134, 'eldridge_by_aspidal.png', 'Eldridge', 'commission', 'Anthro', 'Everyone', 0, 1, 'January 30, 2022', NULL),
(37, 135, 'present_by_shwonky.jpg', 'Present', 'Older raffle prize for Echo_Sounding on Twitter. This character was (and is) truly lovely.', 'Anthro', 'Everyone', 0, 1, 'January 30, 2022', NULL),
(31, 136, 'streets_of_mondstadt_by_rakimou.jpg', 'Streets of Mondstadt [COMM 20062021]', 'Commission for  pasterz, their fursona as Bennet (Genshin Impact) (＾▽＾)', 'Anthro', 'Everyone', 0, 0, 'January 30, 2022', NULL),
(28, 137, 'ten_kodori_by_nat10730.jpg', 'Ten Kodori', 'Commission for rock_storage', 'Anthro', 'Everyone', 0, 0, 'January 30, 2022', NULL),
(41, 138, 'the_bartender_com_by_yesterlove.jpg', 'the bartender', 'recent commission!', 'Anthro', 'Everyone', 0, 1, 'January 30, 2022', NULL),
(23, 139, 'white_mage_by_goldendruid.jpg', 'White Mage', '✨Limited edition canvas-mounted prints: goldendruid.com/shop/canvas-wh…\r\n✨Prints Available: goldendruid.com/shop/print-whi…\r\n\r\nAnother mage added to the collection!\r\nThis portrait painting was commissioned by Kyree.\r\n\r\n©GoldenDruid2021', 'Anthro', 'Everyone', 0, 0, 'January 30, 2022', NULL),
(92, 150, 'blue_lights_at_night_by_leonid_afremov_by_leonidafremov_d80ddu6-pre.jpg', 'Blue lights at Nighttumn', '\"We would like to present hand painted oil on canvas painting of Afremovs artwork mentioned in the title. This art piece made by Leonid Afremov Studio with the same amount of soul and emotion just like the first original painting. The piece is created with oil paint on artistic canvas using Afremovs unique technique of a palette knife.\"\r\n', 'Digital art', 'Everyone', 0, 0, 'January 30, 2022', NULL),
(93, 151, 'djdgxo-cefa282e-90b5-49ac-ba33-765dc251bd04.jpg', 'Digital Art Painting', '\"Digital Art Painting\"', 'Digital art', 'Everyone', 0, 0, 'January 30, 2022', NULL),
(94, 152, 'foxicorn_by_katylipscomb_dcfvjh4-fullview.jpg', 'Foxicorn', '\"A little Foxicorn that I drew in honor of Junicorn hehe <3 \"', 'Digital art', 'Everyone', 0, 0, 'January 30, 2022', NULL),
(95, 153, 'jade_by_wlop_d9n5wvp-pre.jpg', 'Jade', '\"My original character Jade in Ghostblade, oriental girl, short hair, tatoo, kongfu! and what else?\r\n\r\nI\'ll provide full normal speed video process on my patreon:www.patreon.com/wlop\r\n\r\nYou can also support me on creating my own comic Ghostblade on my patreon: www.patreon.com/wlop\r\n\r\nAs rewards, you will get: \r\n> full size image \r\n> PSD file with steps in different layer, and brush set \r\n> HD, normal speed process video\"', 'Digital art', 'Everyone', 0, 0, 'January 30, 2022', NULL),
(96, 154, 'large_scale_dots_painting___close_up___by_atomiccircus_d8fhc69-fullview.jpg', 'Large scale Dots Painting ( close up )', '\"Large scale Dots Painting ( close up )\r\n\r\n    I just remembered that i have never uploaded a close up of this painting. \"', 'Digital art', 'Everyone', 0, 0, 'January 30, 2022', NULL),
(98, 156, 'priscila__commission__by_alrun_art_dcxu0l8-fullview.jpg', 'Priscila [Commission]', '\"This is a portrait commission I did for a very lovely client. Capturing likeness is not that easy for me, but I think I did quite well here. Hope you like it, too!\"', 'Digital art', 'Everyone', 0, 0, 'January 30, 2022', NULL),
(99, 157, 'd97g1xu-764c3729-b6a8-4748-bdac-e9b5471450e7.jpg', 'Red', '\"You can support me and get access for process steps, videos, PSDs, brushes, etc. here:\r\n\r\nwww.patreon.com/KR0NPR1NZ\r\n\r\nMore art on:\r\n\r\nFacebook www.facebook.com/kr0npr1nz\r\n\r\nTwitter twitter.com/KR0NPR1NZ\r\n\r\nInstagram instagram.com/kr0npr1nz\r\n\r\ntumblr kr0npr1nz.tumblr.com/\"', 'Digital art', 'Everyone', 0, 0, 'January 30, 2022', NULL),
(100, 158, 'sprinkles_of_stars_by_yuumei_d9eolhq-fullview.jpg', 'Sprinkles of Stars', '\"Freckles are like sprinkles of stars~\r\n\r\n1 hour speed paint I did with the intention of recording the process, but after I finished drawing, I realized that OBS had glitched and didn\'t record anything orz You can still check out my other video tutorials on my Youtube channel!\r\n\r\nOh well, back to drawing Fisheye for meeeee~\"', 'Digital art', 'Everyone', 0, 1, 'January 30, 2022', NULL),
(101, 159, 'under_the_skin_by_wataboku_dcmo2ec-fullview.jpg', 'under the skin', '\" ■Instagram : instagram.com/wataboku__/\r\n■Facebook : www.facebook.com/watashibokuor…\r\n■Twitter : twitter.com/wataboku_\r\n■pixiv : pixiv.me/wataboku\r\n■Tumblr : wataboku.tumblr.com/\"\r\n', 'Digital art', 'Everyone', 0, 0, 'January 30, 2022', NULL),
(102, 160, 'luffy_vs_doflamingo_colored_by_marvelmania_d8tkpp0-fullview.jpg', 'Luffy vs Doflamingo Colored', 'MONKEY D. LUFFY kicking DOFLAMINGO ASS, on his Gear4th mode!!! \r\nFrom the great ONE PIECE, and now as I promised, COLORED\r\nMy favorite character nowadays! The only Show/anime that made me cry and twice! Nothing can beat this story, its just way too good!\r\nJust for fun\r\nI hope you like it! Your comments are priceless\r\n\r\nFlats by: :iconMiles-ProwerX:\r\nA LOT MORE ON my new Facebook Page: www.facebook.com/luisgfigueire… CHECK IT OUT AND SHARE IT!!! :D (Big Grin)\r\n\r\nTake care ;) (Wink)\r\n', 'Fan art', 'Everyone', 0, 0, 'January 30, 2022', NULL),
(118, 161, 'running_reference_sheet_by_kibbitzer_d8xtvrs-fullview.jpg', 'Running Reference Sheet', 'This is a little preview!\r\nI looked at maaaaaany photos to understand how this shit works..\r\nI hate to draw running people..REALLY, but I tried to make it look \"easy\"  for you and  I hope you\'ll find it useful!\r\nThanks for the support!!! :\'D\r\n\r\nIf you are interested you can find the complete series on patreon!\r\nBTW I don\'t consider it a \"special\" reference sheet so you can see it for 1$ per month with the other classic series!', 'Tutorail', 'Everyone', 0, 0, 'January 30, 2022', NULL),
(119, 162, 'sbs__leg_and_thighs_by_rohioart_da90k19-fullview.jpg', 'SBS Leg And Thighs', 'I hope my terrible explaining helps\r\n\r\n\r\nDone in: Paint Tool Sai\r\nWith: Brush, Water Color, Luminosity', 'Tutorial', 'Everyone', 0, 0, 'January 30, 2022', NULL),
(120, 163, 'sitting_poses_by_rika_dono_d95vtd2-fullview.jpg', 'Sitting Poses', 'There was an empty space so I\'ve put a portrait xD\r\n\r\nNo, I can\'t give you a bigger resolution file. This is the size I used to draw.\r\nNo idea which category this belong to.', 'Tutorial', 'Everyone', 0, 0, 'January 30, 2022', NULL),
(121, 164, 'd9aw85c-1bb923ae-2a60-4927-8fe5-d902333b7395.jpg', 'Tutorial male torso', 'This is part of the Term 4\'s Tutorial for male turso, including progress video as well!\r\n\r\nTerm 4 will end by 9-30-2015, so act quick if you want this', 'Tutorial', 'Everyone', 0, 0, 'January 30, 2022', NULL),
(2, 165, '120194683_3241653275953292_1822340385683690078_o.jpg', 'Aesthetic', 'Aesthetic this is a test', 'Traditional Arts', 'everyone', 0, 0, 'January 31, 2022', 'feat'),
(2, 166, '11.png', 'ButterFly', 'this is a test', 'Digital Art', 'everyone', 0, 0, 'February 1, 2022', 'feat');

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
-- AUTO_INCREMENT for table `abyssal_favorite`
--
ALTER TABLE `abyssal_favorite`
  MODIFY `favID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `abyss_post`
--
ALTER TABLE `abyss_post`
  MODIFY `post_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `abyss_user`
--
ALTER TABLE `abyss_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `art_abyssals`
--
ALTER TABLE `art_abyssals`
  MODIFY `art_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT for table `test_img`
--
ALTER TABLE `test_img`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
