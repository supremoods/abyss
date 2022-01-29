-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2022 at 07:44 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.5.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
(2, 'b1ngu', 'b1ngu@gmail.com', 'b1nguMachaLover');

-- --------------------------------------------------------

--
-- Table structure for table `art_abyssals`
--

CREATE TABLE `art_abyssals` (
  `id` int(11) NOT NULL,
  `art_id` int(100) NOT NULL,
  `abyssal_art` varchar(255) DEFAULT NULL,
  `title` varchar(60) DEFAULT NULL,
  `description` longtext,
  `category` varchar(60) NOT NULL,
  `privacy` varchar(60) DEFAULT NULL,
  `count_comment` int(11) DEFAULT NULL,
  `count_fav` int(11) DEFAULT NULL,
  `abyssals_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `art_abyssals`
--

INSERT INTO `art_abyssals` (`id`, `art_id`, `abyssal_art`, `title`, `description`, `category`, `privacy`, `count_comment`, `count_fav`, `abyssals_date`) VALUES
(1, 36, 'va2021__eastern_tale_by_valzheimer_devuh61-fullview.jpg', 'test 1', 'this is a test', 'friends', 'everyone', 0, 0, ''),
(1, 37, 'scificorridor_by_oliverbeck_deuz6ak-pre.jpg', 'test 2', 'this is a test', '3D', 'everyone', 0, 0, ''),
(1, 38, 'broken_planet_by_pupiy220_dev1dr6-pre.jpg', 'test 3', 'this is a description', '', 'everyone', 0, 0, ''),
(1, 43, 'denwvpo-7cd12b1b-5ece-413e-882c-5e9b2c169d93.jpg', 'Magical Night Forest', 'The work was done on SM-LT Pro create - Watercolor paper made from 100% cotton. Acid-free, density of 300g / m. And professional watercolors from Rembrandt DeLuxe, which are highly regarded all over the world for their maximum light fastness.\r\n\r\nSignature on the back of the painting. This is original one of a kind hand painted artwork. Painting is not framed, photos with frames are just for example of interior design. All paintings are copyrighted and all rights reserved. Reproduction right of this product do not transfer to the buyer of the artwork. Do not store the painting in the room with high humidity', 'Anthro', 'everyone', 0, 0, ''),
(1, 44, 'blue_eyes_by_mirtrud_depdlhy-fullview.jpg', 'Magic Night  2 Fearless', 'asdajd asdbahsbdahbhasbda   aashbs', 'Anthro', 'everyone', 0, 0, 'January 26, 2022');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `art_abyssals`
--
ALTER TABLE `art_abyssals`
  MODIFY `art_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `test_img`
--
ALTER TABLE `test_img`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
