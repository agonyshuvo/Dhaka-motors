-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 08, 2022 at 10:57 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dhaka_motors`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cID` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `nid` varchar(15) DEFAULT NULL,
  `userName` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cID`, `name`, `phone`, `email`, `nid`, `userName`, `password`) VALUES
(33, 'Shuvo ', '01612', 'mr.khan@gmail.com', '12354657686789', 'agony.khan\n', '1234'),
(34, 'Sajid khan', '01716849089', '', '', '', ''),
(39, '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `dealers`
--

CREATE TABLE `dealers` (
  `ID` int(11) NOT NULL,
  `dealerName` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dealers`
--

INSERT INTO `dealers` (`ID`, `dealerName`) VALUES
(1, 'Dhaka'),
(2, 'Chittagong'),
(3, 'Comilla'),
(4, 'Rajshahi'),
(5, 'Khulna');

-- --------------------------------------------------------

--
-- Table structure for table `discount`
--

CREATE TABLE `discount` (
  `discount_id` int(11) NOT NULL,
  `d_from` date NOT NULL,
  `d_to` date NOT NULL,
  `percentage` int(11) NOT NULL,
  `status` varchar(30) NOT NULL,
  `staffID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `discount`
--

INSERT INTO `discount` (`discount_id`, `d_from`, `d_to`, `percentage`, `status`, `staffID`) VALUES
(7, '2018-05-03', '2018-05-10', 4, 'Active', 2);

-- --------------------------------------------------------

--
-- Table structure for table `distribution`
--

CREATE TABLE `distribution` (
  `distribution_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `dealer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `distribution`
--

INSERT INTO `distribution` (`distribution_id`, `date`, `dealer_id`) VALUES
(2, '2018-05-07', 2),
(3, '2018-05-07', 3),
(4, '2018-05-07', 5);

-- --------------------------------------------------------

--
-- Table structure for table `motorcycle_info`
--

CREATE TABLE `motorcycle_info` (
  `mID` int(11) NOT NULL,
  `mType` varchar(30) NOT NULL,
  `mName` varchar(30) NOT NULL,
  `model` varchar(100) NOT NULL,
  `engineNo` varchar(30) NOT NULL,
  `chassisNo` varchar(30) NOT NULL,
  `cc` int(10) NOT NULL,
  `color` varchar(30) NOT NULL,
  `price` varchar(30) NOT NULL,
  `sID` int(11) DEFAULT NULL,
  `saleID` int(11) DEFAULT NULL,
  `cID` int(11) DEFAULT NULL,
  `warranty` date NOT NULL,
  `reg` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `motorcycle_info`
--

INSERT INTO `motorcycle_info` (`mID`, `mType`, `mName`, `model`, `engineNo`, `chassisNo`, `cc`, `color`, `price`, `sID`, `saleID`, `cID`, `warranty`, `reg`) VALUES
(36, 'Sports', 'FZS V1', '2015', 'AFDFFFG', 'NINBIFNF', 150, 'GREEN', '200000', 47, 0, 0, '2020-05-04', ''),
(37, 'Classic', 'R15 V3', '2018', 'AFDFFFG', 'ODSNBFPODSNB F', 150, 'GREEN', '', 0, 0, 34, '0000-00-00', 'Dhaka metro 17-6888'),
(38, 'Cruising', 'FZS V2', '2017', 'AER7643TH4', '123BURTHBV90', 165, 'Ninja Green', '255000', 48, 0, 0, '2020-05-07', ''),
(39, 'Sports', 'FZS SE', '2018', 'AER7643TH4', '123BURTHBV90', 150, 'Red', '265000', 49, 0, 0, '2020-05-07', ''),
(40, 'Sports', 'R15 V1', '2018', 'A4R7643TH4', '123BU453HBV90', 165, 'White', '555000', 50, 0, 0, '2020-05-07', ''),
(41, 'Sports', 'R15 V2', '2018', 'AER7643TH4', '123BURTHBV90', 165, 'Black ', '500000', 51, 0, 0, '0000-00-00', ''),
(42, 'Sports', 'R15 V3', '2018', 'AER7643TH4', '123BU453HBV90', 150, 'Red', '490000', 52, 0, 0, '0000-00-00', ''),
(43, 'Classic', 'Fazar V1', '2017', 'AFDFFFG4345', '234DGRFFRFVF', 150, 'Green', '275000', 53, 0, 0, '2020-05-07', ''),
(44, 'Sports', 'Fazer V2', '2018', 'AER7643TH4', '123BURTHBV90', 150, 'Black & Red', '265000', 54, 0, 0, '2020-05-07', ''),
(45, 'Sports', 'FZS V1', '2017', 'AER7643TH4', '123BU453HBV90', 150, 'Green & Black', '245000', 55, 0, 0, '0000-00-00', ''),
(46, 'Sports', 'FZS V1', '2018', 'AER7643TH4', 'ODSNBFPODSNB F', 150, 'Green', '240000', 56, 0, 0, '0000-00-00', ''),
(47, 'Cruising', 'Fazer V2', '2018', 'AER7643TH4', '123BU453HBV90', 165, 'Ninja Green', '235000', 57, 0, 0, '0000-00-00', ''),
(48, 'Sports', 'R15 V2', '2018', 'AER7643TH4', '234DGRFFRFVF', 165, 'White', '520000', 58, 0, 0, '0000-00-00', ''),
(49, 'Sports', 'R15 V2', '2018', 'AER7643TH6', '234DGRFFRFVF', 165, 'White', '520000', 59, 0, 0, '0000-00-00', ''),
(59, 'Sports', 'FZS V1', '2015', 'KAJSBFJO65', '123BURTHBV', 150, 'White', '550000', 74, 0, 0, '0000-00-00', ''),
(60, 'Classic', 'R15 V3', '2018', 'ABCD123456', 'ABC09876FR', 150, 'Black ', '540000', 75, 0, 0, '0000-00-00', '');

-- --------------------------------------------------------

--
-- Table structure for table `motorcycle_model`
--

CREATE TABLE `motorcycle_model` (
  `ID` int(11) NOT NULL,
  `miModel` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `motorcycle_model`
--

INSERT INTO `motorcycle_model` (`ID`, `miModel`) VALUES
(1, '2015'),
(2, '2016'),
(3, '2017'),
(4, '2018'),
(5, '2019');

-- --------------------------------------------------------

--
-- Table structure for table `motorcycle_name`
--

CREATE TABLE `motorcycle_name` (
  `ID` int(11) NOT NULL,
  `miName` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `motorcycle_name`
--

INSERT INTO `motorcycle_name` (`ID`, `miName`) VALUES
(1, 'FZS V1'),
(2, 'FZS V2'),
(3, 'FZS SE'),
(4, 'R15 V1'),
(5, 'R15 V2'),
(6, 'R15 V3'),
(7, 'Fazar V1'),
(8, 'Fazer V2');

-- --------------------------------------------------------

--
-- Table structure for table `motorcycle_type`
--

CREATE TABLE `motorcycle_type` (
  `ID` int(11) NOT NULL,
  `miType` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `motorcycle_type`
--

INSERT INTO `motorcycle_type` (`ID`, `miType`) VALUES
(1, 'Sports'),
(2, 'Classic'),
(3, 'Cruising');

-- --------------------------------------------------------

--
-- Table structure for table `parts_info`
--

CREATE TABLE `parts_info` (
  `parts_id` int(11) NOT NULL,
  `parts_type` varchar(20) NOT NULL,
  `parts_name` varchar(30) NOT NULL,
  `price` double NOT NULL,
  `quantity` int(5) NOT NULL,
  `stock_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parts_info`
--

INSERT INTO `parts_info` (`parts_id`, `parts_type`, `parts_name`, `price`, `quantity`, `stock_id`, `staff_id`) VALUES
(8, 'Engine', 'Timming Chain', 500, 99, 43, 1),
(9, 'Engine', 'Roker', 1400, 98, 44, 1);

-- --------------------------------------------------------

--
-- Table structure for table `parts_sale`
--

CREATE TABLE `parts_sale` (
  `id` int(11) NOT NULL,
  `parts_id` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL,
  `qnt` int(100) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parts_sale`
--

INSERT INTO `parts_sale` (`id`, `parts_id`, `sale_id`, `qnt`, `customer_id`, `service_id`) VALUES
(199, 8, 203, 1, 39, 0),
(200, 9, 203, 3, 39, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pre_booking`
--

CREATE TABLE `pre_booking` (
  `id` int(11) NOT NULL,
  `m_name` varchar(20) NOT NULL,
  `model` varchar(10) NOT NULL,
  `book_date` date NOT NULL,
  `book_time` time NOT NULL,
  `h_date` varchar(11) NOT NULL,
  `cID` int(11) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sale_info`
--

CREATE TABLE `sale_info` (
  `saleID` int(11) NOT NULL,
  `sale_date` date DEFAULT NULL,
  `sale_time` time DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `staff_ID` int(11) DEFAULT NULL,
  `pre_book_status` int(11) NOT NULL,
  `dID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sale_info`
--

INSERT INTO `sale_info` (`saleID`, `sale_date`, `sale_time`, `amount`, `staff_ID`, `pre_book_status`, `dID`) VALUES
(203, '2018-05-08', '05:47:06', 4700, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `service_id` int(11) NOT NULL,
  `s_date` date NOT NULL,
  `s_time` date NOT NULL,
  `type_id` int(11) NOT NULL,
  `mID` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`service_id`, `s_date`, `s_time`, `type_id`, `mID`, `staff_id`, `sale_id`) VALUES
(43, '2018-05-05', '2018-05-05', 1, 36, 1, 0),
(44, '2018-05-05', '2018-05-05', 1, 36, 1, 0),
(45, '2018-05-05', '2018-05-05', 3, 37, 1, 185),
(46, '2018-05-05', '2018-05-05', 3, 37, 1, 186),
(47, '2018-05-05', '2018-05-05', 2, 37, 1, 187);

-- --------------------------------------------------------

--
-- Table structure for table `service_type`
--

CREATE TABLE `service_type` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(20) NOT NULL,
  `fee` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `service_type`
--

INSERT INTO `service_type` (`type_id`, `type_name`, `fee`) VALUES
(1, 'Free', 0),
(2, 'Full', 1000),
(3, 'Regular', 600);

-- --------------------------------------------------------

--
-- Table structure for table `staff_info`
--

CREATE TABLE `staff_info` (
  `staff_ID` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `userName` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `level` varchar(15) NOT NULL,
  `branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_info`
--

INSERT INTO `staff_info` (`staff_ID`, `name`, `phone`, `email`, `userName`, `password`, `level`, `branch_id`) VALUES
(1, 'Shuvo khan', '01716095046', 'agonysuvo@gmail.com', 'Mr Khan', '1234', 'manager', 1),
(2, 'Shuvo khan', '01612291229', 'shuvo.m.khan@gmail.com', 'Khan', '1234', 'admin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `stock_info`
--

CREATE TABLE `stock_info` (
  `sID` int(11) NOT NULL,
  `stock_date` date NOT NULL,
  `stock_time` time NOT NULL,
  `dealer_id` int(11) NOT NULL,
  `staff_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock_info`
--

INSERT INTO `stock_info` (`sID`, `stock_date`, `stock_time`, `dealer_id`, `staff_id`) VALUES
(47, '2018-05-05', '00:26:25', 2, 2),
(48, '2018-05-06', '21:41:01', 2, 2),
(49, '2018-05-06', '21:41:48', 2, 2),
(50, '2018-05-06', '21:42:33', 3, 2),
(51, '2018-05-06', '21:43:30', 5, 2),
(52, '2018-05-06', '21:44:00', 5, 2),
(53, '2018-05-06', '21:44:42', 1, 2),
(54, '2018-05-06', '21:45:33', 1, 2),
(55, '2018-05-06', '21:47:18', 1, 2),
(56, '2018-05-06', '21:59:19', 1, 2),
(57, '2018-05-06', '21:59:44', 1, 2),
(58, '2018-05-06', '22:01:52', 1, 2),
(59, '2018-05-06', '22:01:55', 1, 2),
(60, '2018-05-07', '18:24:37', 1, 2),
(61, '2018-05-07', '18:25:09', 1, 2),
(62, '2018-05-07', '18:25:52', 1, 2),
(63, '2018-05-07', '18:26:14', 1, 2),
(64, '2018-05-07', '18:28:02', 1, 2),
(65, '2018-05-07', '18:33:35', 1, 2),
(66, '2018-05-07', '18:59:33', 1, 2),
(67, '2018-05-07', '19:12:24', 1, 2),
(73, '2018-05-07', '19:38:27', 1, 2),
(74, '2018-05-07', '19:46:02', 1, 2),
(75, '2018-05-07', '19:48:59', 1, 2),
(76, '2018-05-07', '23:39:25', 1, 2),
(77, '2018-05-08', '00:41:38', 1, 2),
(78, '2018-05-08', '00:51:13', 0, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cID`);

--
-- Indexes for table `dealers`
--
ALTER TABLE `dealers`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `discount`
--
ALTER TABLE `discount`
  ADD PRIMARY KEY (`discount_id`);

--
-- Indexes for table `distribution`
--
ALTER TABLE `distribution`
  ADD PRIMARY KEY (`distribution_id`);

--
-- Indexes for table `motorcycle_info`
--
ALTER TABLE `motorcycle_info`
  ADD PRIMARY KEY (`mID`),
  ADD KEY `stock` (`sID`),
  ADD KEY `sale` (`saleID`),
  ADD KEY `customer` (`cID`);

--
-- Indexes for table `motorcycle_model`
--
ALTER TABLE `motorcycle_model`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `motorcycle_name`
--
ALTER TABLE `motorcycle_name`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `motorcycle_type`
--
ALTER TABLE `motorcycle_type`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `parts_info`
--
ALTER TABLE `parts_info`
  ADD PRIMARY KEY (`parts_id`);

--
-- Indexes for table `parts_sale`
--
ALTER TABLE `parts_sale`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pre_booking`
--
ALTER TABLE `pre_booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sale_info`
--
ALTER TABLE `sale_info`
  ADD PRIMARY KEY (`saleID`),
  ADD KEY `stafftosale` (`staff_ID`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`service_id`);

--
-- Indexes for table `service_type`
--
ALTER TABLE `service_type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `staff_info`
--
ALTER TABLE `staff_info`
  ADD PRIMARY KEY (`staff_ID`);

--
-- Indexes for table `stock_info`
--
ALTER TABLE `stock_info`
  ADD PRIMARY KEY (`sID`),
  ADD KEY `staffID` (`staff_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `dealers`
--
ALTER TABLE `dealers`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `discount`
--
ALTER TABLE `discount`
  MODIFY `discount_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `distribution`
--
ALTER TABLE `distribution`
  MODIFY `distribution_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `motorcycle_info`
--
ALTER TABLE `motorcycle_info`
  MODIFY `mID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `motorcycle_model`
--
ALTER TABLE `motorcycle_model`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `motorcycle_name`
--
ALTER TABLE `motorcycle_name`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `motorcycle_type`
--
ALTER TABLE `motorcycle_type`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `parts_info`
--
ALTER TABLE `parts_info`
  MODIFY `parts_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `parts_sale`
--
ALTER TABLE `parts_sale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `pre_booking`
--
ALTER TABLE `pre_booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sale_info`
--
ALTER TABLE `sale_info`
  MODIFY `saleID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=204;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `service_type`
--
ALTER TABLE `service_type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `staff_info`
--
ALTER TABLE `staff_info`
  MODIFY `staff_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `stock_info`
--
ALTER TABLE `stock_info`
  MODIFY `sID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
