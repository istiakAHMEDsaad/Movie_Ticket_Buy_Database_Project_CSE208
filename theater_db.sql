-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2024 at 12:09 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `theater_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(30) NOT NULL,
  `movie_id` int(30) NOT NULL,
  `ts_id` int(30) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `contact_no` varchar(15) NOT NULL,
  `qty` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `movie_id`, `ts_id`, `lastname`, `firstname`, `contact_no`, `qty`, `date`, `time`) VALUES
(4, 4, 4, 'Ahmed', 'Istiak', '+8801#########', 2, '2024-04-09', '12:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` int(30) NOT NULL,
  `title` text NOT NULL,
  `cover_img` text NOT NULL,
  `description` text NOT NULL,
  `duration` float NOT NULL,
  `date_showing` date NOT NULL,
  `end_date` date NOT NULL,
  `trailer_yt_link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `title`, `cover_img`, `description`, `duration`, `date_showing`, `end_date`, `trailer_yt_link`) VALUES
(1, 'The Matrix', '1600221180_matrix.jpg', 'Neo, a computer programmer and hacker, has always questioned the reality of the world around him. His suspicions are confirmed when Morpheus, a rebel leader, contacts him and reveals the truth to him.', 2.26, '2024-03-01', '2024-06-01', ''),
(4, 'The Wolf of Wall Street', '1600221240_img 2.jpg', 'Introduced to life in the fast lane through stockbroking, Jordan Belfort takes a hit after a Wall Street crash. He teams up with Donnie Azoff, cheating his way to the top as his relationships slide.', 3, '2024-04-01', '2024-06-15', ''),
(5, 'Greatest Showman', '1600221900_images.jpg', 'P T Barnum becomes a worldwide sensation in the show business. His imagination and innovative ideas take him to the top of his game.', 1.75, '2024-04-20', '2024-07-17', ''),
(6, 'Jaws', '1600221900_download.jpg', 'When a giant white shark fatally attacks swimmers on the shores of Amity Island, Sheriff Martin Brody teams up with a marine biologist and a local fisherman to hunt down the creature.', 2.6, '2024-02-15', '2024-03-30', ''),
(7, 'Extractions', '1600222080_extraction-20200423134825-19294.jpg', 'While battling his own demons, Tyler, a ruthless mercenary, accepts the offer of rescuing an Indian crime lord\'s teenage son from Bangladesh. However, when he arrives, a gruesome blood bath ensues.', 1.56, '2024-04-07', '2024-05-30', ''),
(8, 'Avengers End Game', '1600222200_avengersendgame-20190417122917-18221.jpg', 'After Thanos, an intergalactic warlord, disintegrates half of the universe, the Avengers must reunite and assemble again to reinvigorate their trounced allies and restore balance.', 3.3, '2024-04-15', '2024-05-30', ''),
(9, 'White House Down', '1600237980_download (1).jpg', 'John Cale, a Capitol policeman, gets rejected for a Secret Service job. When he takes his daughter on a tour of the White House, things go south and the president\'s life is jeopardised.', 2.17, '2024-04-01', '2024-05-30', ''),
(10, 'Tenet', '1712480220_Tenet_movie_poster.jpg', 'When a few objects that can be manipulated and used as weapons in the future fall into the wrong hands, a CIA operative, known as the Protagonist, must save the world.', 2.5, '2024-04-07', '2024-06-15', '');

-- --------------------------------------------------------

--
-- Table structure for table `theater`
--

CREATE TABLE `theater` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `theater`
--

INSERT INTO `theater` (`id`, `name`) VALUES
(1, 'Sony Square'),
(2, 'Star Cineplex');

-- --------------------------------------------------------

--
-- Table structure for table `theater_settings`
--

CREATE TABLE `theater_settings` (
  `id` int(30) NOT NULL,
  `theater_id` int(30) NOT NULL,
  `seat_group` varchar(250) NOT NULL,
  `seat_count` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `theater_settings`
--

INSERT INTO `theater_settings` (`id`, `theater_id`, `seat_group`, `seat_count`) VALUES
(2, 2, 'left', 40),
(3, 2, 'Right', 40),
(4, 1, 'Right', 30),
(5, 1, 'Left', 30);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`) VALUES
(1, 'Administrator', 'admin', 'admin123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `theater`
--
ALTER TABLE `theater`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `theater_settings`
--
ALTER TABLE `theater_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `theater`
--
ALTER TABLE `theater`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `theater_settings`
--
ALTER TABLE `theater_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
