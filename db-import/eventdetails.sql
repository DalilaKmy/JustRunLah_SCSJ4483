-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 18, 2020 at 06:01 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `irun2020`
--

-- --------------------------------------------------------

--
-- Table structure for table `eventdetails`
--

CREATE TABLE `eventdetails` (
  `id` int(11) NOT NULL,
  `eventName` text NOT NULL,
  `eventDate` varchar(15) NOT NULL,
  `eventTime` varchar(15) NOT NULL,
  `eventVenue` text NOT NULL,
  `catDetails1` text NOT NULL,
  `priceCatStudent` varchar(15) NOT NULL,
  `priceCatStudent1` varchar(15) NOT NULL,
  `catDetails2` text NOT NULL,
  `priceCatStaff` varchar(15) NOT NULL,
  `priceCatStaff1` varchar(15) NOT NULL,
  `distance1` int(11) NOT NULL,
  `distance2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eventdetails`
--

INSERT INTO `eventdetails` (`id`, `eventName`, `eventDate`, `eventTime`, `eventVenue`, `catDetails1`, `priceCatStudent`, `priceCatStudent1`, `catDetails2`, `priceCatStaff`, `priceCatStaff1`, `distance1`, `distance2`) VALUES
(1, 'Larian Bersama Bomba', '19 August 2020', '7.30 pm', 'Padang Kawat UTM', 'Student', 'RM 38.00', 'RM 40.00', 'Staff', 'RM 45.00', 'RM 48.00', 5, 10),
(2, 'Larian Negaraku', '3 August 2020', '7.30 am', 'Lingkaran Ilmu UTM', 'Student', 'RM 35.00', 'RM 38.00', 'Staff', 'RM 40.00', 'RM 43.00', 5, 10),
(3, 'Adrenaline Run', '11 April 2020', '6.30 am', 'Stadium Azman Hashim UTM', 'UTM', 'RM 42.00', 'RM 52.00', 'Public', 'RM 48.00', 'RM 58.00', 6, 12),
(4, 'Run For Unity 2020', '17 April 2020', '8.00 pm', 'Stadium Azman Hashim UTM', 'UTM', 'RM 35.00', 'RM 38.00', 'Public', 'RM 42.00', 'RM 45.00', 6, 12);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `eventdetails`
--
ALTER TABLE `eventdetails`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
