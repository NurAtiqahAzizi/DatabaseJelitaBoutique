-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 02, 2022 at 07:05 AM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jelitaboutique`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `Appointment_ID` int(11) NOT NULL,
  `Appointment_Date` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Appointment_Time` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Customer_ID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`Appointment_ID`, `Appointment_Date`, `Appointment_Time`, `Customer_ID`) VALUES
(210, '6/3/2021', '10 a.m.', 1),
(211, '10/4/2021', '11 a.m.', 2),
(212, '13/6/2021', '3 p.m.', 3),
(213, '2/8/2021', '4 p.m.', 4),
(214, '1/10/2021', '9 a.m.', 5),
(215, '4/11/2021', '10.30 a.m.', 6),
(216, '9/12/2021', '2 p.m.', 7),
(217, '7/1/2021', '4 p.m.', 8),
(218, '15/1/2022', '3 p.m.', 9),
(219, '20/1/2022', '10 a.m.', 10);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Customer_ID` int(11) NOT NULL,
  `Customer_Gender` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Customer_Name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Customer_Contactnumber` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Customer_ID`, `Customer_Gender`, `Customer_Name`, `Customer_Contactnumber`) VALUES
(1, 'FEMALE', 'NUR ANIS BINTI DAN', '011-19508140'),
(2, 'FEMALE', 'NUR IZYAN BINTI MOHD', '011-12318039'),
(3, 'FEMALE', 'UMAIRAH BINTI ULOL', '018-2964115'),
(4, 'FEMALE', 'AINA BINTI NAZRI', '017-5824831'),
(5, 'FEMALE', 'NURUL BINTI AZMI', '013-2001916'),
(6, 'FEMALE', 'ATIYAH BINTI KAMAL', '019-4562076'),
(7, 'MALE', 'YUSOF BIN BAKAR', '012-3918257'),
(8, 'FEMALE', 'NURIZZATI BINTI ZAIM', '012-4782466'),
(9, 'MALE', 'ABU BIN AHMAD', '018-4751680'),
(10, 'MALE', 'KARIM BIN ABDULLAH', '013-3847621');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `Payment_ID` int(50) NOT NULL,
  `Payment_Total` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Payment_Type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`Payment_ID`, `Payment_Total`, `Payment_Type`) VALUES
(111, 'RM 300', 'Cash'),
(112, 'RM 500', 'Online'),
(113, 'RM 700', 'Online'),
(114, 'RM 800', 'Online'),
(115, 'RM 200', 'Cash'),
(116, 'RM 1200', 'Online'),
(117, 'RM 1500', 'Online'),
(118, 'RM 800', 'Online'),
(119, 'RM 2000', 'Online'),
(120, 'RM 350', 'Cash');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `Service_ID` int(11) NOT NULL,
  `Service_Type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Staff_ID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`Service_ID`, `Service_Type`, `Staff_ID`) VALUES
(301, 'Rent', 101),
(302, 'Custom Design', 102),
(303, 'Buy', 103);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `Staff_ID` int(50) NOT NULL,
  `Staff_Name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Staff_Gender` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Staff_ContactNo` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`Staff_ID`, `Staff_Name`, `Staff_Gender`, `Staff_ContactNo`) VALUES
(101, 'NABIHAH BINTI BUDI', 'FEMALE', '018-7854919'),
(102, 'NUR ATIQAH BINTI AZIZI', 'FEMALE', '011-36177937'),
(103, 'NUR MASTURA BINTI ZAINIZAM', 'FEMALE', '017-4704810'),
(104, 'NURUL SYAFIQAH ASYIKIN BINTI FIRDAUS', 'FEMALE', '011-24021474');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`Appointment_ID`),
  ADD KEY `FK_appointment_customer` (`Customer_ID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Customer_ID`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`Payment_ID`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`Service_ID`),
  ADD KEY `FK_service_staff` (`Staff_ID`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`Staff_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `FK_appointment_customer` FOREIGN KEY (`Customer_ID`) REFERENCES `customer` (`Customer_ID`);

--
-- Constraints for table `service`
--
ALTER TABLE `service`
  ADD CONSTRAINT `FK_service_staff` FOREIGN KEY (`Staff_ID`) REFERENCES `staff` (`Staff_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;