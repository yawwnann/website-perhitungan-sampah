-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 29, 2022 at 03:10 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trashbank`
--

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `image_id` int(11) NOT NULL,
  `image_name` varchar(100) NOT NULL,
  `category` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL,
  `messenger` text NOT NULL,
  `messenger_email` varchar(50) NOT NULL,
  `message` varchar(500) NOT NULL,
  `datereceived` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`message_id`, `messenger`, `messenger_email`, `message`, `datereceived`) VALUES
(7, 'tes6', 'tes6@gmail.com', 'tes6', '01/17/2022, 01:19 am'),
(8, 'halo', 'tes@gmail.com', 'saya ingin jadi admin\r\n', '01/20/2022, 01:14 am'),
(9, 'tes', 'tes@gmail.com', 'tes', '01/24/2022, 11:40 am'),
(10, 'tes', 'tes@gmail.com', 'tes', '01/24/2022, 11:17 am'),
(11, 'tes', 'tes@gmail.com', 'tes', '01/24/2022, 02:52 pm'),
(12, 'tes', 'tes@gmail.com', 'tes', '01/24/2022, 02:29 pm'),
(13, 'tes', 'tes@gmail.com', 'tes', '01/24/2022, 02:33 pm'),
(14, 'tes', 'tes@gmail.com', 'tes', '01/24/2022, 02:47 pm'),
(15, 'tes', 'tes@gmail.com', 'tes', '01/27/2022, 01:14 am');

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `task_id` int(11) NOT NULL,
  `task` varchar(150) NOT NULL,
  `status` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`task_id`, `task`, `status`) VALUES
(10, 'buat video', 'Done'),
(12, 'buat website ', ''),
(14, 'ngedit video ', 'Done');

-- --------------------------------------------------------

--
-- Table structure for table `tman`
--

CREATE TABLE `tman` (
  `tman_id` int(11) NOT NULL,
  `tman_name` text NOT NULL,
  `privilege` enum('junior','senior','owner','') NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tman`
--

INSERT INTO `tman` (`tman_id`, `tman_name`, `privilege`, `email`, `password`) VALUES
(1, '1', 'owner', '1@gmail.com', '$2y$10$y50o32yjgy51ZKPhUjQWgupIPigGWo/KBSBYrmi6dvCPrPdaa2d3O'),
(2, 'tes', 'junior', 'tes@gmail.com', '$2y$10$y50o32yjgy51ZKPhUjQWgupIPigGWo/KBSBYrmi6dvCPrPdaa2d3O'),
(5, 'hello', 'senior', 'hello@gmail.com', '$2y$10$lNXxEJu/C20uNcDi3K0fTOJ4eLT.fMIHjmpb.YUd8xZeHIlXGdrjS'),
(6, 'halo', 'junior', 'halo@gmail.com', '$2y$10$OxrHM6wYTH3tA3f/7rCdn.mVd.lr07lHn5iAyxgH5D3NCc8xGkbHK'),
(7, 'aaa', 'senior', 'aaa@gmail.com', '$2y$10$ssIqmgCPXA4PEg2TNl64/e9kou9KM79Suz7MQLSOnqgnc4T4G96um'),
(8, 'a', 'junior', 'a@gmail.com', '$2y$10$xdJFynzc0O1jlPCInMCCPuwlsKiLhbXG6sU8Y8.Ww1qJcCHINQDDK'),
(11, 'seniorforme', 'senior', 'seniorforme@yahoo.com', '$2y$10$UHD759fe.BMeM9YUYzRSKuqHppWpXHXdCcrvsQErYRY7vvnXEcTpS'),
(12, 'indroh', 'junior', 'indroganteng@gmail.com', '$2y$10$1wa9xIQIQKPTTuDpNY7AFu4W/1d8Ddbqlf7Oxj8COhuadt6vKczw6'),
(13, 'indro', 'senior', 'indroh@gmail.com', '$2y$10$BJvwJthdLSDRXVhZ2kg7I.Z1v5WFmCHro.ala8Ao1TOfeEcvVBlte'),
(17, 'iniseniorbos', 'senior', 'bos@gmail.com', '$2y$10$HmyhfObMSI/N7DBFYNWacevoaX1ugU2k97VNDtCVhnMmWOEVFTdCy'),
(18, 'senior', 'senior', 'senior@gmail.com', '$2y$10$jIf0tbxPqn0cHOUct8mOSeB7JBTody8BW2lUa9G3RPKGMVIKi71qW'),
(19, 'tes1', 'junior', 'tes1@gmail.com', '$2y$10$Ix7/gPA7RzxrTCtfOZpafuTvrQluQOxsBqK7i/YkYJyP/FK6ZUiMi'),
(20, 'tes2@gmail.com', 'junior', 'tes2@gmail.com', '$2y$10$jXEbw3PhP/tKtxcPqAtaPukbfKRWp00hNXNF8k1B5qrCwuz7QJxoS'),
(21, 'tes3', 'junior', 'tes3@gmail.com', '$2y$10$2MwLpMEtCaaxl94VNaJc9.z2P/mDSyStXPROdnnpAzJqvrZKkVk.i'),
(22, 'o', 'junior', 'o@gmail.com', '$2y$10$KqihSrjNPsLJ0uGwzEPNsevfDDb./zPkFJnYhbd/PZ4WlRNjbbeEi'),
(23, 'p', 'junior', 'p@gmail.com', '$2y$10$gXOutAunJ0VBZM4kf4Eewe8tTvUuLIXcAervsPFJXa1V.ZVKhsZ3.'),
(24, 'inisenior', 'senior', 'inisenior@gmail.com', '$2y$10$YknL8Lcwu3enMw0j/R6Qce0X6yoolnurP51vdo4LAGMKEMVUw9HWC');

-- --------------------------------------------------------

--
-- Table structure for table `trash`
--

CREATE TABLE `trash` (
  `trash_id` int(11) NOT NULL,
  `trash_name` varchar(30) NOT NULL,
  `trash_type` enum('organic','inorganic','toxic','') NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trash`
--

INSERT INTO `trash` (`trash_id`, `trash_name`, `trash_type`, `price`) VALUES
(1, 'botol plastik', 'inorganic', 2000),
(2, 'kotoran binatang', 'organic', 10000),
(3, 'kardus', 'inorganic', 9000),
(4, 'styrofoam', 'inorganic', 2000),
(5, 'kulit buah', 'organic', 1000),
(6, 'sayur basi', 'organic', 3000),
(9, 'buku bekas', 'inorganic', 2000),
(10, 'kaleng makanan', 'inorganic', 5000),
(11, 'kertas', 'inorganic', 2000),
(13, 'sampah belom', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `trasher`
--

CREATE TABLE `trasher` (
  `trasher_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trasher`
--

INSERT INTO `trasher` (`trasher_id`, `name`, `email`) VALUES
(2, 'indra', 'inisiindra@gmail.com'),
(3, 'indri', 'indri@gmail.com'),
(4, 'janice', 'janice@gmail.com'),
(5, 'andro', 'androbukanandroid@gmail.com'),
(18, 'jenos', 'jenos@gmail.com'),
(19, 'sia', 'sia@gmail.com'),
(20, 'sib', 'sib@gmail.com'),
(21, 'sic', 'sic@gmail.com'),
(22, 'sid', 'sid@gmail.com'),
(24, 'pemberi', ''),
(25, 'belum terdata', '');

-- --------------------------------------------------------

--
-- Table structure for table `trashsaction`
--

CREATE TABLE `trashsaction` (
  `transaction_id` int(11) NOT NULL,
  `datentime` datetime NOT NULL,
  `tman_id` int(11) NOT NULL,
  `trasher_id` int(11) NOT NULL,
  `trash_id` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  `descr` varchar(100) NOT NULL,
  `totalprice` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trashsaction`
--

INSERT INTO `trashsaction` (`transaction_id`, `datentime`, `tman_id`, `trasher_id`, `trash_id`, `weight`, `descr`, `totalprice`) VALUES
(2, '2022-01-14 21:36:00', 9, 3, 3, 5, 'no', 30000),
(17, '0000-00-00 00:00:00', 8, 4, 1, 7, 'contoh1', 7000),
(19, '2022-01-16 19:48:00', 1, 15, 6, 10, 'banyak serangga', 10000),
(21, '2022-01-20 06:57:00', 1, 4, 1, 2, 'bekas air bersih', 2000),
(22, '2022-01-20 06:59:00', 1, 3, 2, 7, 'bau bgt', 70000),
(25, '2022-01-24 17:35:00', 1, 4, 4, 9, 'bekas sembako', 10000),
(27, '2022-01-24 20:39:00', 23, 24, 12, 2, 'cuman buat coba', 0),
(28, '2022-01-27 08:02:00', 1, 25, 13, 2, 'salah data', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ttype`
--

CREATE TABLE `ttype` (
  `type_id` int(11) NOT NULL,
  `trash_type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ttype`
--

INSERT INTO `ttype` (`type_id`, `trash_type`) VALUES
(1, 'organic'),
(2, 'Inorganic'),
(3, 'toxic');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`image_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`task_id`);

--
-- Indexes for table `tman`
--
ALTER TABLE `tman`
  ADD PRIMARY KEY (`tman_id`);

--
-- Indexes for table `trash`
--
ALTER TABLE `trash`
  ADD PRIMARY KEY (`trash_id`);

--
-- Indexes for table `trasher`
--
ALTER TABLE `trasher`
  ADD PRIMARY KEY (`trasher_id`);

--
-- Indexes for table `trashsaction`
--
ALTER TABLE `trashsaction`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `ttype`
--
ALTER TABLE `ttype`
  ADD PRIMARY KEY (`type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
  MODIFY `task_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tman`
--
ALTER TABLE `tman`
  MODIFY `tman_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `trash`
--
ALTER TABLE `trash`
  MODIFY `trash_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `trasher`
--
ALTER TABLE `trasher`
  MODIFY `trasher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `trashsaction`
--
ALTER TABLE `trashsaction`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `ttype`
--
ALTER TABLE `ttype`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
