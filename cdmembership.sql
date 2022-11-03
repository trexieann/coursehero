-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 03, 2022 at 05:10 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cdmembership`
--

-- --------------------------------------------------------

--
-- Table structure for table `cd.bookings`
--

CREATE TABLE `cd.bookings` (
  `facid` int(11) NOT NULL,
  `memid` int(11) NOT NULL,
  `startime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `slots` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cd.facilities`
--

CREATE TABLE `cd.facilities` (
  `facid` int(11) NOT NULL,
  `name` char(100) DEFAULT NULL,
  `membercost` bigint(20) DEFAULT NULL,
  `guestcost` bigint(20) DEFAULT NULL,
  `initialoutlay` bigint(20) DEFAULT NULL,
  `monthlymaintenance` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cd.members`
--

CREATE TABLE `cd.members` (
  `memid` int(11) NOT NULL,
  `surname` char(200) DEFAULT NULL,
  `fiirstname` char(200) DEFAULT NULL,
  `address` varchar(300) DEFAULT NULL,
  `zipcode` int(11) DEFAULT NULL,
  `telephone` char(20) DEFAULT NULL,
  `recommendedby` int(11) DEFAULT NULL,
  `joindate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cd.bookings`
--
ALTER TABLE `cd.bookings`
  ADD PRIMARY KEY (`facid`);

--
-- Indexes for table `cd.facilities`
--
ALTER TABLE `cd.facilities`
  ADD PRIMARY KEY (`facid`);

--
-- Indexes for table `cd.members`
--
ALTER TABLE `cd.members`
  ADD PRIMARY KEY (`memid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
