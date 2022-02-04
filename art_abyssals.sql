-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 03, 2022 at 02:31 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

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
(1, 36, 'va2021__eastern_tale_by_valzheimer_devuh61-fullview.jpg', 'test 1', 'this is a test', 'friends', 'everyone', 0, 1, '', 'NULL'),
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
(2, 165, '120194683_3241653275953292_1822340385683690078_o.jpg', 'Aesthetic', 'Aesthetic this is a test', 'Traditional Arts', 'everyone', 0, 0, 'January 31, 2022', 'NULL'),
(2, 166, '11.png', 'ButterFly', 'this is a test', 'Digital Art', 'everyone', 0, 0, 'February 1, 2022', 'NULL'),
(2, 167, 'FB_IMG_1620475416247.jpg', 'CAT', 'HSHHAOASDSDFSDF', 'Digital Art', 'everyone', 0, 0, 'February 1, 2022', 'NULL'),
(2, 168, 'groot-minimalistic-wallpaper.jpg', 'GROOT', 'I AM GROOT', 'Adoptables', 'everyone', 0, 0, 'February 1, 2022', NULL),
(2, 170, '173447618_101818625382992_4351907707049621771_n.jpg', 'LAPSY KNOWS', 'BLA BAL BLA BLA', 'Anime and Manga', 'everyone', 0, 0, 'February 1, 2022', NULL),
(2, 173, '6a391e2d188f5c4fe8973c248bb5e805.jpg', 'IU baby', 'IU kyutiiiiii', 'Comics', 'everyone', 0, 0, 'February 1, 2022', 'feat'),
(1, 174, 'arcane_jinx_vi_by_yaminokuni_dev103u.jpg', 'Jinx and VI', 'bla bla bla bla', 'Digital Art', 'everyone', 0, 0, 'February 1, 2022', 'NULL'),
(1, 175, 'visions_by_rossdraws_ddl1im1.jpg', 'sample', 'hey this is sample', '3D', 'everyone', 0, 0, 'February 1, 2022', 'NULL'),
(1, 176, 'com_healing_magic_by_seyumei.png', 'this is ', 'sdsdsds', 'Comics', 'everyone', 0, 0, 'February 1, 2022', 'NULL'),
(1, 177, 'autumn_by_pjacubinas_depeguu-pre.jpg', 'this is ', 'sdsdsds', 'Comics', 'everyone', 0, 0, 'February 1, 2022', 'NULL'),
(1, 178, 'arcane_jinx_vi_by_yaminokuni_dev103u.jpg', 'this is ', 'sdsdsds', 'Comics', 'everyone', 0, 0, 'February 1, 2022', 'NULL'),
(1, 179, 'autum_evening_by_fawnpetals.png', 'dfsdfs', 'sdfsdfsdfs', 'Comics', 'everyone', 0, 0, 'February 1, 2022', 'NULL'),
(142, 180, 'asurf_elementaltw001b13m_by_vanam_deptewc-pre.jpg', 'Asurf elementalTW001B13M', 'Asurf_elementalTW001B13M- Wednesday Challenge-tweak amazing surf parameters \r\nby \"zachmakesart\"-formula used--Amazing Surf,_Rotate in Alternate mode with \r\nJulia on and Bailout at 64 and Max iter at 850;\r\n#MMDailyChallenge', 'Sculpture', 'everyone', 0, 0, 'February 2, 2022', NULL),
(143, 181, 'cloud_antelope_iii_by_fruitbatphoenix_derv1pg-pre.jpg', 'Cloud Antelope III', '14cm (5.5\") ground to shoulder,  28cm (11\") chest to the end of tail. \r\n\r\n\r\nCloud Antelope III has a resin cast head and lower legs, polymer clay armor details, \r\nand a sturdy poseable wire armature, with a bit of weight added to the hip and thigh\r\n area to help balance out her head. Her fluffy coat is made of 2 different lengths of \r\nsynthetic fur that has been hand sewn to the body before getting a haircut and some color. ', 'Sculpture', 'everyone', 0, 0, 'February 2, 2022', NULL),
(144, 182, 'five_coins_by_fixxelious_deq9y7k-fullview.jpg', 'Five Coins', 'My sculpt for \"Sculptember 2021\" challenge - day 1 theme \"spherical face\"\r\n\r\nIt was supposed to be just a quick sculpt without proper rendering but I got carried away\r\n', 'Sculpture', 'everyone', 0, 0, 'February 2, 2022', NULL),
(145, 183, 'godzilla_98_stl_by_dopepope_demj2l3-pre.jpg', 'Godzilla 98 STL', 'Error-free STL file of Godzilla 1998. Available on Gambody Gotta say, it prints very nicely.', 'Sculpture', 'everyone', 0, 0, 'February 2, 2022', NULL),
(146, 184, 'gold_rathian_repaint_by_volvokun_detlt6y-pre.jpg', 'Gold Rathian Repaint', 'The second that I\'m able to post! This is a full touch-up of the Gold Rathian \r\nmini from the Monster Hunter Figure Builder Vol.8 set, with a custom base.\r\n\r\nThe figure was done with acrylics, including several metallic shades and a \r\nmix of matte and semi-gloss finishes as well as gloss for the eyes, mouth and claws. \r\nThe base was modded from the original with milliput epoxy before being decorated.\r\n\r\n(I again neglected to take proper \"before\" photos so the full photo is pulled \r\nfrom the product stock image, which is unfortunately on the small side)\r\n\r\nShe was also sealed and sent across the sea as a surprise gift', 'Sculpture', 'everyone', 0, 0, 'February 2, 2022', NULL),
(147, 185, 'mother_dragon_by_reptangle_deqahax-pre.jpg', 'Mother Dragon', 'Here\'s the Windstone Editions mother dragon again, this \r\ntime she got painted in an accidental mix of violet flame and ice blue. Interesting color combo!', 'Sculpture', 'everyone', 0, 0, 'February 2, 2022', NULL),
(148, 186, 'piscis__by_sugarsad_denm6qd-pre.jpg', 'Piscis', 'This an illustration of piscis', 'Sculpture', 'everyone', 0, 0, 'February 2, 2022', NULL),
(149, 187, 'shadowmask_daemon_vitale_room_guardian_by_anyaboz_denoy29-pre.jpg', 'Shadowmask Daemon Vitale Room Guardian', 'It earned its name because its coat is like a mask of shadows it can use to virtually \r\ndisappear under tree cover.\r\n\r\nThis Daemon has a carnelian crystal heart. Its back stands about 7\" tall and had a coat of \r\nhigh quality faux fur that is very soft. The neck, legs and tail have a fully posable ball \r\nand socket armature inside that will not wear out over time. The ears are attached with a \r\nball joint that can swivel and pose. The head, ears, and feet are all cast in durable resin \r\nfrom my original sculpt and hand painted. Support me on Patreon to see how it was made!', 'Sculpture', 'everyone', 0, 0, 'February 2, 2022', NULL),
(150, 188, 'the_collector_by_frankheilerart_desyq58-pre.jpg', 'The Collector', 'Use code \'SPOOKY\' at check out for 20% off anything in my bigcartel shop!! \r\nFrom now through Halloween! Check it out here!!\r\n\r\n\'The Collector\'\r\nApprox. 4cm x 3cm x 5cm or 1.5\" x 1.25\" x 1.9\"\r\nPolymer Clay, Mixed Media.', 'Sculpture', 'everyone', 0, 0, 'February 2, 2022', NULL),
(151, 189, 'the_spriggan_and_the_butterfly_by_arsynalprops_demqx7o-fullview.jpg', 'The Spriggan and The butterfly', 'It\'s been a while since I posted here. There\'s the final result of a sculpture I\'ve started more than one year ago.\r\nThe size is around 50cm x 25cm.    \r\nI wanted to build my own Spriggan sculpture for a while, creation is an other level of work, I have made a lot of replicas by the past.\r\nHighly inspired by Elder Scrolls universe once again.\r\nMade with Apoxie Clay, single piece.', 'Sculpture', 'everyone', 0, 0, 'February 2, 2022', NULL),
(152, 190, 'commission__twitch_da_stickers__by_saraantonellini_deuwrld-pre.jpg', 'Commission \'Twitch DA stickers\'', 'I had really a lot of fun to draw these three stickers of the characters from \r\nDragon Age Origins! Morrigan, Sten (with horns) and The Doggo (and me as a bonus!).', 'Comics', 'everyone', 0, 0, 'February 2, 2022', NULL),
(153, 191, 'dang542-4942219a-22b3-4784-892b-72d854c72b1c.jpg', 'Doctor Strange', 'I did this fan art after watching the DOCTOR STRANGE, Awesome movie!', 'Comics', 'everyone', 0, 0, 'February 2, 2022', NULL),
(154, 192, 'in_the_surf_by_pascalcampion_demwhhb-pre.jpg', 'In the Surf', 'In the surf\r\n#pascalcampion', 'Comics', 'everyone', 0, 0, 'February 2, 2022', NULL),
(155, 193, 'inktober___bait_by_grace_zed_ddhhrow-fullview.jpg', 'Inktober-Bait', 'Day 3 - Bait. Arthur taking the bait.', 'Comics', 'everyone', 0, 0, 'February 3, 2022', NULL),
(156, 194, 'jake_vs_chucky_by_fausto_giurescu_dey99py-pre.jpg', 'JAKE VS CHUCKY', 'Because sooner or later Everybody\'s got to choose.', 'Comics', 'everyone', 0, 0, 'February 3, 2022', NULL),
(157, 195, 'my_neighbor_doom_by_endofdaysonmars_de58qop-fullview.jpg', 'My Neighbor DOOM', 'A Young girl tries to get her local supervillian to teach her how to be cool.', 'Comics', 'everyone', 0, 0, 'February 3, 2022', NULL),
(158, 196, 'pinchable_by_16bitbiscuit_dev16gf-pre.jpg', 'Pinchable', 'This is what happens when you are pinchable and grandma arrives\r\nTwitter @16bitbicuit gram @kwaltzkyart.', 'Comics', 'everyone', 0, 0, 'February 3, 2022', NULL),
(159, 197, 'supergirl_ii__dark_city__var__signed_comic_print_by_paulsuttonart_d72njr9-fullview.jpg', 'Supergirl II \'Dark City\' Var. Signed Comic Print', 'Paul Sutton\'s DARK CITY Comic Art Prints (Variant Edition)\r\nIndividually Hand Signed by CGI Artist Paul Sutton. OPEN EDITION PRINTS.\r\nIncludes a Visit Dark City Placard & Dollar Style Certificate Print Sticker.', 'Comics', 'everyone', 0, 0, 'February 3, 2022', NULL),
(160, 198, 'velocity___double_page_by_petersheppley_deuiuw6-pre.jpg', 'Velocity - Double Page', 'pencils by Kenneth Rocafort, inks by James Goodwin, fan colours by me.', 'Comics', 'everyone', 0, 0, 'February 3, 2022', NULL),
(161, 199, 'zatanna_by_forty_fathoms_ddis1j5-fullview.jpg', 'Zatanna', 'I promised Zatanna, and you got Zatanna -- finally. Sorry about that, things in my life\r\n have been rather busy but I wanted to make sure I kept my word and provided a Zatanna piece from you. \r\nI got to work with Jimbo\'s lines and it was so much fun. Zatanna is always one of my favorite characters \r\nto paint or draw, because magic is super fun to bring to life. I hope you all like the piece! Feedback and \r\ncomments are always welcome! © Painting and colors by Forty-Fathoms © Lines by Jimbo Salgado', 'Comics', 'everyone', 0, 0, 'February 3, 2022', NULL),
(162, 200, 'a_second_home_for_humans_by_jeiriel_deyj28u-fullview.jpg', 'A Second home for Humans', 'I finally figured out how to make an Earthly planet in photoshop. Though I\'m only about to do it with the right texture image. It\'s still not quite what I wanted but I\'m happy enough with it.\r\nThis image is not for commercial use.', 'Science and Fiction', 'everyone', 0, 0, 'February 3, 2022', NULL),
(163, 201, 'angel_in_town_by_annemaria48_devi1gz-pre.jpg', 'Angel in Town', 'There is a new angel in town', 'Science and Fiction', 'everyone', 0, 0, 'February 3, 2022', NULL),
(164, 202, 'beyond_recall_by_thebakaarts_de527s1-pre.jpg', 'Beyond Recall', 'Check out my Instagram for more: www.instagram.com/bakaarts/\r\nCheck out my Patreon if you want to do what I do: www.patreon.com/bartsy', 'Science and Fiction', 'everyone', 0, 0, 'February 3, 2022', NULL),
(165, 203, 'biotech_bathyscaphe_by_sedeptra_de34leh-pre.jpg', 'Biotech Bathyscaphe', 'Wow! Thaks for DD!', 'Science and Fiction', 'everyone', 0, 0, 'February 3, 2022', NULL),
(166, 204, 'europa_station_by_macrebisz_deupy8x-pre.jpg', 'Europa Station', 'Europa Refueling Station. A quick personal piece that I\'ve finally had a chance to finish recently.', 'Science and Fiction', 'everyone', 0, 0, 'February 3, 2022', NULL),
(167, 205, 'mountain_temple_by_mdiemeer_deh7slm-fullview.jpg', 'Mountain Temple', 'A concept art piece I made after following the tutorial of Eytan Zana, awesome stuff, learned a lot and will definitely use 3D Coat in my future works as well!', 'Science and Fiction', 'everyone', 0, 0, 'February 3, 2022', NULL),
(168, 206, 'parallel_confilict__by_pedraven_den8lbq-pre.jpg', 'Parallel Conflict', 'From personal series painting. by the way you can purchase it as my first NFT Drop at foundation.app that also find my upcoming NFT\'s there :) thank you for your all support', 'Science and Fiction', 'everyone', 0, 0, 'February 3, 2022', NULL),
(169, 207, 'project_nebula__colonization_by_lorddoomhammer_deozyu5-pre.jpg', 'Project Nebula: Colonization', 'I have the great pleasure of working on Project Nebula to create plenty of artworks to fill out the gameworld \r\nand in this case, showcase the core elements of the game. Made with Blender and Photoshop. More to come soon :)\r\nA quick overview of the project from the developers:\r\nProject Nebula puts real-time strategy and space exploration into the hands of NFT owners. \r\nThis generation-based collection of playable tokens uses in-game resources, upgrades, research \r\nand more to offer a wide array of strategic decision making for players. Valuable NFTs can be collected \r\nand traded on the ICON blockchain on the in-game marketplace. The game features high-definition digital artwork, \r\nits own musical scores and an intricate array of lore. An equal mix of gameplay and collection.', 'Science and Fiction', 'everyone', 0, 0, 'February 3, 2022', NULL),
(170, 208, 'tanlon__the_city_of_rock_song_by_seekhim_dd12yl4-fullview.jpg', 'Tanlon: The City of Rock', 'City: Tanlon\r\nTitle: The City of Rock Song, The City of Rock Towers, The Heart of the Canyons\r\nPlanet: Nlia\r\nContinent: Western Continent (Western Land)\r\nRegion: Sunlo Canyons\r\nPopulation: 600,000 (About the size of Baltimore, Maryland)\r\nFounded: Between 8,000-5000 B.C \"Klomin is the most powerful city of the Sunlo Canyons, but Tanlon is its heart.\" Tanlon is a city state that exists on the planet Nlia which exists in my AU Star Trek  ‘New Start’ verse.', 'Science and Fiction', 'everyone', 0, 0, 'February 3, 2022', NULL),
(171, 209, 'the_mad_kings_throne__by_derektora_dey0sye-pre.jpg', 'The Mad King Throne', 'Photoshop 2022 illustrated with a xp pen', 'Science and Fiction', 'everyone', 0, 0, 'February 3, 2022', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `art_abyssals`
--
ALTER TABLE `art_abyssals`
  ADD PRIMARY KEY (`art_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `art_abyssals`
--
ALTER TABLE `art_abyssals`
  MODIFY `art_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
