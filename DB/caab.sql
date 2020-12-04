-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2020 at 08:23 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `caab`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `v_id` int(222) NOT NULL,
  `cimage` varchar(222) NOT NULL,
  `cname` varchar(222) NOT NULL,
  `seat` varchar(222) NOT NULL,
  `price` varchar(222) NOT NULL,
  `ctext` text NOT NULL,
  `location` varchar(222) NOT NULL,
  `comfort` varchar(222) NOT NULL,
  `air_c` varchar(222) NOT NULL,
  `fuel` varchar(222) NOT NULL,
  `gps` varchar(222) NOT NULL,
  `safety` varchar(222) NOT NULL,
  `km` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`v_id`, `cimage`, `cname`, `seat`, `price`, `ctext`, `location`, `comfort`, `air_c`, `fuel`, `gps`, `safety`, `km`) VALUES
(4, '59c934e86b13a.jpg', 'indica', '5', '15000', 'Oneway Taxi, 24x7 Customer Support On Time Service, Book Now!\r\n24/7 Customer Support · Transparent Pricing · AC, Safe & Secure Cabs · Pay Oneside Fare', 'MOGA', 'lux', '0', '0', '0', '0', '0'),
(5, '59c9352338765.png', 'swift dezire', '5', '50000', 'Status and other details of all the flights arriving and departing from the International and Domestic - CSIA Mumbai Airport - Passenger Flights.Status and other details of all the flights arriving and departing from the International and Domestic - CSIA Mumbai Airport - Passenger Flights.', 'MOGA', 'lux', '0', '0', '0', '0', '0'),
(30, '5ef59ae5805b7.jpg', 'enova ', '8', '12000', 'safty', 'kankavli', 'eco', 'Yes', 'pertrol', 'yes', 'Yes', '4');

-- --------------------------------------------------------

--
-- Table structure for table `admin_dir`
--

CREATE TABLE `admin_dir` (
  `a_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_dir`
--

INSERT INTO `admin_dir` (`a_id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(222) NOT NULL,
  `name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `Message` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `phone`, `Message`) VALUES
(5, 'mandy ghadigavkar', 'mandyghadi@gmail.com', '+919763695806', 'good'),
(6, 'mayur', 'mghadigavkar@yahoo.com', '+919763695806', 'good service');

-- --------------------------------------------------------

--
-- Table structure for table `personal`
--

CREATE TABLE `personal` (
  `p_id` int(11) NOT NULL,
  `pickup` varchar(222) NOT NULL,
  `dropoff` varchar(222) NOT NULL,
  `phone` int(222) NOT NULL,
  `first` varchar(222) NOT NULL,
  `mid` varchar(222) NOT NULL,
  `last` varchar(222) NOT NULL,
  `cod` int(222) NOT NULL,
  `address` varchar(222) NOT NULL,
  `cardno` int(222) NOT NULL,
  `cardbrand` varchar(222) NOT NULL,
  `ed` int(222) NOT NULL,
  `ey` int(222) NOT NULL,
  `em` int(222) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `personal`
--

INSERT INTO `personal` (`p_id`, `pickup`, `dropoff`, `phone`, `first`, `mid`, `last`, `cod`, `address`, `cardno`, `cardbrand`, `ed`, `ey`, `em`, `message`) VALUES
(24, 'MOGA', 'JALANDHAR', 2147483647, 'himanshu', 'singh', 'crivatva', 144002, 'badri colony phase 2 danishmandhan, phase 2', 2147483647, 'Master Card', 14, 2016, 5, 'good!'),
(25, '', '', 0, '', '', '', 0, '', 0, '', 0, 0, 0, ''),
(26, 'JALANDHAR', 'MOGA', 2147483647, 'GAJEN', '', '', 496001, 'Raigarh', 2147483647, 'Visa', 14, 2018, 3, ''),
(27, 'MOGA', 'FARIDKOT', 2147483647, 'raj', '', '', 496001, 'Raigarh', 2147483647, 'Visa', 17, 2018, 10, ''),
(28, 'MOGA', 'FARIDKOT', 2147483647, 'mayur', 'prasad', 'ghadi', 416602, 'vidyanagar tal-kankavli', 2147483647, 'Master Card', 23, 2018, 2, ''),
(29, 'FARIDKOT', 'JALANDHAR', 2147483647, 'manali', 'ramkrushna', 'kajari', 416602, 'vidyanagar tal-kankavli', 2147483647, 'Visa', 16, 2018, 7, '');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `id` int(222) NOT NULL,
  `name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `Dfrom` varchar(222) NOT NULL,
  `Dto` varchar(222) NOT NULL,
  `date` varchar(222) NOT NULL,
  `time` varchar(222) NOT NULL,
  `adult` varchar(222) NOT NULL,
  `child` varchar(222) NOT NULL,
  `text` text NOT NULL,
  `pack` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`id`, `name`, `email`, `Dfrom`, `Dto`, `date`, `time`, `adult`, `child`, `text`, `pack`) VALUES
(10, 'GAJEN PRADHAN', 'gajenpradhan18@gmail.com', '', 'home', '30/11/2019', '9:30', '1', '0', '', 'Eco'),
(11, 'RAM KUMAR', 'gajenpradhan18@gmail.com', '', 'bhilai', '30/11/2019', 'raipur', '3', '0', '', 'standard'),
(12, 'mayur ghadigaonkar', 'mandyghadi@gmail.com', 'kankavli ', 'kankavli ', '23/02/2020', '12:30 pm', '1', '1', '', 'Eco'),
(13, 'mandy ghadigavkar', 'mandyghadi@gmail.com', 'kalva', 'kalva', '23/02/2020', '12:30 pm', '1', '0', 'come early as posiable', 'Eco'),
(14, 'manali', 'mandyghadi@gmail.com', 'kudal', 'kalva', '26/06/2020', '12:30 pm', '1', '2', '', 'lux');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`v_id`);

--
-- Indexes for table `admin_dir`
--
ALTER TABLE `admin_dir`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal`
--
ALTER TABLE `personal`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `v_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `admin_dir`
--
ALTER TABLE `admin_dir`
  MODIFY `a_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `personal`
--
ALTER TABLE `personal`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
