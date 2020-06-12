-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2020 at 08:01 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `covid19`
--

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `Sno` int(11) NOT NULL,
  `Name_of_Country` varchar(20) NOT NULL,
  `Active_cases` int(11) NOT NULL,
  `Discharged` int(11) NOT NULL,
  `Deaths` int(11) NOT NULL,
  `Total` int(11) NOT NULL,
  `Date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`Sno`, `Name_of_Country`, `Active_cases`, `Discharged`, `Deaths`, `Total`, `Date`) VALUES
(1, 'india', 222222, 16465, 3654, 565478, '2020-06-10 22:48:02');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `Sno` int(20) NOT NULL,
  `Name_of_State` varchar(30) NOT NULL,
  `Active_cases` int(10) NOT NULL,
  `Discharged` int(10) NOT NULL,
  `Deaths` int(10) NOT NULL,
  `Total` int(10) NOT NULL,
  `Date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`Sno`, `Name_of_State`, `Active_cases`, `Discharged`, `Deaths`, `Total`, `Date`) VALUES
(1, 'Andaman and Nicobar ', 0, 33, 0, 33, '2020-06-10 20:37:52'),
(2, 'Andhra Pradesh', 2191, 2802, 77, 5070, '2020-06-10 20:37:52'),
(3, 'Arunachal Pradesh', 56, 1, 0, 56, '2020-06-10 20:41:45'),
(4, 'Assam', 1848, 1085, 4, 2937, '2020-06-10 20:44:32'),
(5, 'Bihar', 2563, 2864, 32, 5459, '2020-06-10 20:44:32'),
(6, 'Chandigarh', 32, 286, 5, 323, '2020-06-10 22:05:07'),
(7, 'Chhattisgarh', 848, 386, 6, 1240, '2020-06-10 22:05:07'),
(8, 'Dadar Nagar Haveli', 20, 2, 0, 22, '2020-06-10 22:06:40'),
(9, 'Delhi', 18543, 11861, 905, 31309, '2020-06-10 22:06:40'),
(10, 'Goa', 292, 67, 0, 359, '2020-06-10 22:07:43'),
(11, 'Gujarat', 5336, 14365, 1313, 21014, '2020-06-10 22:07:43'),
(12, 'Haryana', 3030, 2134, 45, 5209, '2020-06-10 22:08:05'),
(13, 'Himachal Pradesh', 191, 249, 5, 445, '2020-06-10 22:20:47'),
(14, 'Jammu and Kashmir', 2792, 1506, 48, 4346, '2020-06-10 22:20:47'),
(15, 'Jharkhand', 844, 559, 8, 1411, '2020-06-10 22:20:47'),
(16, 'Karnataka', 3251, 2604, 66, 5921, '2020-06-10 22:20:47'),
(17, 'Kerala', 1232, 848, 16, 2096, '2020-06-10 22:20:47'),
(18, 'Ladakh', 55, 52, 1, 108, '2020-06-10 22:20:47'),
(19, 'Madhya Pradesh', 2700, 6729, 420, 9849, '2020-06-10 22:20:47'),
(20, 'Maharashtra', 44860, 42638, 3289, 90787, '2020-06-10 22:20:47'),
(21, 'Manipur', 243, 61, 0, 304, '2020-06-10 22:20:47'),
(22, 'Meghalaya', 29, 13, 1, 43, '2020-06-10 22:20:47'),
(23, 'Mizoram', 87, 1, 0, 88, '2020-06-10 22:20:47'),
(24, 'Nagaland', 117, 10, 0, 127, '2020-06-10 22:20:47'),
(25, 'Odisha', 998, 2133, 9, 3140, '2020-06-10 22:20:47'),
(26, 'Puducherry', 75, 52, 0, 127, '2020-06-10 22:20:47'),
(27, 'Punjab', 497, 2167, 55, 11245, '2020-06-10 22:20:47'),
(28, 'Rajasthan', 2662, 8328, 255, 11245, '2020-06-10 22:20:47'),
(29, 'Sikkim', 13, 0, 0, 13, '2020-06-10 22:20:47'),
(30, 'Tamil Nadu', 16282, 18325, 307, 34914, '2020-06-10 22:20:47'),
(31, 'Telengana', 1963, 18325, 307, 34914, '2020-06-10 22:20:47'),
(32, 'Tripura', 670, 192, 1, 864, '2020-06-10 22:20:47'),
(33, 'Uttarakhand', 769, 755, 13, 1537, '2020-06-10 22:22:23'),
(34, 'Uttar Pradesh', 4365, 6669, 301, 11335, '2020-06-10 22:22:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`Sno`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`Sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `Sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `Sno` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
