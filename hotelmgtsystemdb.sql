-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2018 at 12:35 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotelmgtsystemdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `availability`
--

CREATE TABLE `availability` (
  `room_number` varchar(3) NOT NULL,
  `available` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `availability`
--

INSERT INTO `availability` (`room_number`, `available`) VALUES
('001', 'Unavailable'),
('002', 'Unavailable');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Customer_ID` int(10) NOT NULL,
  `First_Name` varchar(20) NOT NULL,
  `Last_Name` varchar(30) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Customer_Mobile` varchar(10) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Nationality` varchar(10) NOT NULL,
  `National_ID` varchar(20) NOT NULL,
  `AC_or_Not` varchar(10) NOT NULL,
  `Room_Type` varchar(10) NOT NULL,
  `Num_of_People` int(2) NOT NULL,
  `Room_Number` varchar(3) NOT NULL,
  `hours` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Customer_ID`, `First_Name`, `Last_Name`, `Address`, `Customer_Mobile`, `Email`, `Nationality`, `National_ID`, `AC_or_Not`, `Room_Type`, `Num_of_People`, `Room_Number`, `hours`) VALUES
(2, 'dd', 'ff', 'gg', 'gg', 'gg', 'Srilankan', 'gg', 'NonA/C', 'Single', 1, '1', 12),
(3, 'dd', 'gg', 'gg', 'gg', 'gg', 'Srilankan', 'gg', 'A/c', 'Single', 1, '23', 23),
(4, 'dd', 'gg', 'gg', 'gg', 'gg', 'Srilankan', 'gg', 'A/c', 'Single', 1, '56', 23);

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `Customer_ID` varchar(10) NOT NULL,
  `Break_Po` varchar(2) NOT NULL,
  `Lunch_Po` varchar(2) NOT NULL,
  `Dinner_po` varchar(2) NOT NULL,
  `Evening_Te` varchar(2) NOT NULL,
  `Num_People` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`Customer_ID`, `Break_Po`, `Lunch_Po`, `Dinner_po`, `Evening_Te`, `Num_People`) VALUES
('1', '1', '2', '1', '3', 4);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `adminuname` varchar(30) NOT NULL,
  `adminpword` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `question` varchar(50) NOT NULL,
  `answer` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`adminuname`, `adminpword`, `name`, `question`, `answer`) VALUES
('kalana123', '1234', 'kalana', 'what is your birth place?', 'colombo');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Customer_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `Customer_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
