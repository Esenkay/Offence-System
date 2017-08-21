-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 21, 2017 at 02:00 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `off_code_fine`
--

CREATE TABLE `off_code_fine` (
  `off_id` int(20) NOT NULL,
  `off_name` varchar(255) NOT NULL,
  `off_code` varchar(50) NOT NULL,
  `penalty` int(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `off_code_fine`
--

INSERT INTO `off_code_fine` (`off_id`, `off_name`, `off_code`, `penalty`) VALUES
(1, 'Late', 'lt', 100),
(2, 'Monitor On', 'mo', 100),
(3, 'Trush', 'tr', 100),
(4, 'Lights On', 'lo', 100),
(5, 'Untidy', 'ut', 100);

-- --------------------------------------------------------

--
-- Table structure for table `off_details`
--

CREATE TABLE `off_details` (
  `rp_id` int(20) NOT NULL,
  `o_fname` varchar(70) NOT NULL,
  `o_lname` varchar(50) NOT NULL,
  `offence` varchar(70) NOT NULL,
  `offence_code` varchar(20) NOT NULL,
  `penalty` int(20) NOT NULL,
  `officer_reporting` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `off_details`
--

INSERT INTO `off_details` (`rp_id`, `o_fname`, `o_lname`, `offence`, `offence_code`, `penalty`, `officer_reporting`) VALUES
(1, 'new', 'offence', 'Trush', 'tr', 100, 'test'),
(2, 'Linet', 'Morgan', 'Lights On', 'lo', 100, 'test');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `username` varchar(225) DEFAULT NULL,
  `password` varchar(225) DEFAULT NULL,
  `c_password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `fname`, `lname`, `username`, `password`, `c_password`, `email`) VALUES
(1, 'deep', 'Africa', 'root', '63a9f0ea7bb98050796b649e85481845', '63a9f0ea7bb98050796b649e85481845', 'admin@gmail.com'),
(20, 'test', 'test', 'test', '098f6bcd4621d373cade4e832627b4f6', '098f6bcd4621d373cade4e832627b4f6', 'test@gmail.com'),
(19, 'Shadrack', 'Kube', 'esenkay', '5b3818c4266b1ccb05ad9868007cb12f', '5b3818c4266b1ccb05ad9868007cb12f', 'shadykube@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(20) NOT NULL,
  `password` varchar(225) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`) VALUES
('bimbo', 'c9c3ea8acf0eeeec518a0c3ffaf01eba'),
('#dffdfd', 'gsgff'),
('bas', 'bas'),
('aaa', 'aaa');

-- --------------------------------------------------------

--
-- Table structure for table `userss`
--

CREATE TABLE `userss` (
  `forename` varchar(20) NOT NULL,
  `surname` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `off_code_fine`
--
ALTER TABLE `off_code_fine`
  ADD PRIMARY KEY (`off_id`);

--
-- Indexes for table `off_details`
--
ALTER TABLE `off_details`
  ADD PRIMARY KEY (`rp_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `off_code_fine`
--
ALTER TABLE `off_code_fine`
  MODIFY `off_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `off_details`
--
ALTER TABLE `off_details`
  MODIFY `rp_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
