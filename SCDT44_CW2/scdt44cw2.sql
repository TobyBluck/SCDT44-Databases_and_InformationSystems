-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 19, 2020 at 11:49 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `scdt44cw2`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `appointment_No` int(11) NOT NULL,
  `staff_ID` int(11) DEFAULT NULL,
  `staff_ID2` int(11) DEFAULT NULL,
  `patient_ID` int(11) NOT NULL,
  `room_No` int(11) NOT NULL,
  `medication_ID` int(11) DEFAULT NULL,
  `appointment_Date` date NOT NULL,
  `startTime` time NOT NULL,
  `endTime` time NOT NULL,
  `duration` int(11) NOT NULL,
  `procedures` set('Minor Surgery','Major Surgery') NOT NULL,
  `cost` int(11) NOT NULL COMMENT 'cost in £'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`appointment_No`, `staff_ID`, `staff_ID2`, `patient_ID`, `room_No`, `medication_ID`, `appointment_Date`, `startTime`, `endTime`, `duration`, `procedures`, `cost`) VALUES
(1, 3, 1, 1, 1, 2, '2020-12-14', '10:00:00', '12:00:00', 2, 'Minor Surgery', 600),
(2, 2, 0, 2, 2, 1, '2020-04-20', '12:00:00', '14:00:00', 2, 'Minor Surgery', 600),
(3, 4, 7, 3, 3, 3, '2020-04-20', '11:00:00', '13:00:00', 2, 'Minor Surgery', 800),
(4, 5, 8, 4, 4, 4, '2020-12-14', '15:00:00', '16:00:00', 1, 'Minor Surgery', 900),
(5, 6, 9, 5, 5, 1, '2020-03-15', '09:00:00', '11:00:00', 2, 'Minor Surgery', 600),
(6, 0, 0, 6, 6, 3, '2020-12-14', '17:00:00', '18:00:00', 1, 'Minor Surgery', 600),
(7, 0, 0, 7, 7, 2, '2020-03-15', '18:00:00', '20:00:00', 2, 'Major Surgery', 1000),
(8, 0, 0, 8, 8, 1, '2020-12-14', '15:00:00', '15:30:00', 1, 'Minor Surgery', 250),
(9, 0, 0, 9, 9, 3, '2020-12-14', '18:00:00', '20:00:00', 2, 'Major Surgery', 1000),
(10, 15, 0, 15, 10, 2, '2020-03-15', '10:00:00', '16:00:00', 6, 'Major Surgery', 2000),
(11, 3, 1, 1, 1, 2, '2020-12-14', '10:00:00', '12:00:00', 2, 'Minor Surgery', 600),
(12, 2, 0, 2, 2, 1, '2020-04-20', '12:00:00', '14:00:00', 2, 'Minor Surgery', 600),
(13, 4, 7, 3, 3, 3, '2020-04-20', '11:00:00', '13:00:00', 2, 'Minor Surgery', 800),
(14, 0, 0, 8, 8, 1, '2020-12-16', '15:00:00', '15:30:00', 1, 'Minor Surgery', 750),
(15, 0, 0, 9, 9, 3, '2020-12-16', '18:00:00', '20:00:00', 2, 'Major Surgery', 1250);

-- --------------------------------------------------------

--
-- Table structure for table `medication`
--

CREATE TABLE `medication` (
  `medication_ID` int(11) NOT NULL,
  `medication_Name` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `description` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `medication`
--

INSERT INTO `medication` (`medication_ID`, `medication_Name`, `brand`, `description`) VALUES
(1, ' Ibruprofen', ' HeartRelief', ' Heart Burn'),
(2, ' Paracetamol', ' PainResolve', ' Pain Killer'),
(3, ' Zapain', ' Zap!', ' Pain Killer'),
(4, ' Paracetamol', ' Payne!', ' Pain Killer');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `patient_ID` int(11) NOT NULL,
  `patient_Name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `patient_Phone` int(11) NOT NULL,
  `insurance_No` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`patient_ID`, `patient_Name`, `address`, `patient_Phone`, `insurance_No`) VALUES
(1, 'Barry Gates', '66 Rockingham Street, Barnsley, S71 1JR', 1743887228, 'BAZ12342'),
(2, 'Stanislaw Bassett', '53 Queen Street, Rushden, NN10 0AY', 1743887223, 'STA12545'),
(3, 'Kalvin Dickens', '1 Goudhurst Close, Maidstone, ME16 8QT', 1743833228, 'KAL12342'),
(4, 'Kaydee Stuart', '9 Siskin Close, Horsham, RH12 5YR', 1743882328, 'KAY13345'),
(5, 'Hazel Mcneil', '21 Doric Road, Liverpool, L13 3DS', 1743187222, 'HAZ14355'),
(6, 'Sanaya Mendoza', 'Flat 10, Pine Lodge, Leigh Corner, Cobham, KT11 2RB', 1743837428, 'SAN12645'),
(7, 'Yehuda Allan', '18 Waterside Lodges, Elland Road, Elland, HX5 9AQ', 1743227226, 'YEH12345'),
(8, 'Patricia Mccarthy', '5 Crabtree Close, Danesmoor, S45 9BH', 1743887255, 'PAT12345'),
(9, 'Kaan Landry', '2 Larchcroft, Chatham, ME5 0NL', 1743667228, 'KAA12342'),
(10, 'River Gale', '7 Prospect Place, South Brent, TQ10 9AH', 1743882311, 'GAL12345'),
(11, 'Sky Rooney', '24 Merrimans Hill Road, Worcester, WR3 8LW', 1743127222, 'ROO12345'),
(12, 'Hallam Shields', '2 - 3 Sunny Bank, Cragg Vale, HX7 5SL', 1743835528, 'SHI15545'),
(13, 'Chantal Page', 'Pytte Cottage, Clyst St George, EX3 0NU', 1743226626, 'PAG12645'),
(14, 'Kurtis Rivera', 'Park House, Church Street, Talgarth, LD3 0DW', 1743887233, 'RIV17345'),
(15, 'Dru Battle', 'Flat 6, Aperture House, 6 Honduras Street, London, EC1Y 0TH', 1743667265, 'BAT12345');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `room_No` int(11) NOT NULL,
  `avaliable` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`room_No`, `avaliable`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(5, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staff_ID` int(11) NOT NULL,
  `staff_Name` varchar(255) NOT NULL,
  `position` set('Physician','Nurse','Doctor') NOT NULL,
  `staff_Trained` set('Boneology','Jamology','Kingstology','Lineology','Popology') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staff_ID`, `staff_Name`, `position`, `staff_Trained`) VALUES
(1, 'Bob Harris', 'Physician', 'Kingstology'),
(2, 'Allan Cross', 'Physician', 'Lineology'),
(3, 'Edwin Huff', 'Nurse', 'Boneology'),
(4, 'Zayyan Saunders', 'Nurse', 'Lineology'),
(5, 'Isobelle Hinton', 'Nurse', 'Boneology'),
(6, 'Bobby Phelps', 'Nurse', 'Jamology'),
(7, 'Rachel Mathis', 'Doctor', 'Lineology'),
(8, 'Chester Bains', 'Doctor', 'Jamology'),
(9, 'Aditi Wainwright', 'Doctor', 'Boneology'),
(10, 'Mia-Rose Espinosa', 'Doctor', 'Popology'),
(11, 'Jeremy Shipton', 'Physician', 'Popology'),
(12, 'Charles Ulter', 'Physician', 'Jamology'),
(13, 'Christina Bishop', 'Physician', 'Popology'),
(14, 'Sarah Smith', 'Physician', 'Popology'),
(15, 'William. B Hampton', 'Physician', 'Kingstology');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`appointment_No`),
  ADD KEY `medication_ID` (`medication_ID`),
  ADD KEY `patient_ID` (`patient_ID`),
  ADD KEY `room_No` (`room_No`),
  ADD KEY `staff_ID` (`staff_ID`),
  ADD KEY `staff_ID2` (`staff_ID2`);

--
-- Indexes for table `medication`
--
ALTER TABLE `medication`
  ADD PRIMARY KEY (`medication_ID`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`patient_ID`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`room_No`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `appointment_No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `medication`
--
ALTER TABLE `medication`
  MODIFY `medication_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `patient_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `staff_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `appointment_ibfk_1` FOREIGN KEY (`medication_ID`) REFERENCES `medication` (`medication_ID`),
  ADD CONSTRAINT `appointment_ibfk_2` FOREIGN KEY (`patient_ID`) REFERENCES `patient` (`patient_ID`),
  ADD CONSTRAINT `appointment_ibfk_3` FOREIGN KEY (`room_No`) REFERENCES `rooms` (`room_No`),
  ADD CONSTRAINT `appointment_ibfk_4` FOREIGN KEY (`staff_ID`) REFERENCES `staff` (`staff_ID`),
  ADD CONSTRAINT `appointment_ibfk_5` FOREIGN KEY (`staff_ID2`) REFERENCES `staff` (`staff_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
