-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2022 at 12:15 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `AppNumber` varchar(11) NOT NULL,
  `Date` date NOT NULL,
  `DateOfStartOfTreatment` date NOT NULL,
  `DateOfEndOfTreatment` date NOT NULL,
  `Cancellation` text NOT NULL,
  `DentistNumber` varchar(20) NOT NULL,
  `PatNumber` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`AppNumber`, `Date`, `DateOfStartOfTreatment`, `DateOfEndOfTreatment`, `Cancellation`, `DentistNumber`, `PatNumber`) VALUES
('A01', '2022-04-04', '2022-04-04', '2022-04-04', 'Yes', 'D01', 'P01'),
('A02', '2022-04-04', '2022-04-04', '2022-04-04', 'No', 'D01', 'P02'),
('A03', '2022-04-05', '2022-04-05', '2022-04-06', 'No', 'D02', 'P03'),
('A04', '2022-04-05', '2022-04-05', '2022-04-06', 'No', 'D01', 'P04'),
('A05', '2022-04-07', '2022-04-07', '2022-04-07', 'No', 'D03', 'P05'),
('A06', '2022-04-07', '2022-04-07', '2022-04-07', 'No', 'D04', 'P06'),
('A07', '2022-04-07', '2022-04-07', '2022-04-08', 'No', 'D01', 'P07'),
('A08', '2020-04-08', '2022-04-08', '2022-04-08', 'No', 'D02', 'P08'),
('A09', '2022-04-08', '2022-04-08', '2022-04-08', 'No', 'D03', 'P09'),
('A10', '2022-04-08', '2022-04-08', '2022-04-08', 'No', 'D01', 'P10');

-- --------------------------------------------------------

--
-- Table structure for table `appointmentdetail`
--

CREATE TABLE `appointmentdetail` (
  `AppNumber` varchar(11) NOT NULL,
  `ProcedureNumber` varchar(11) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointmentdetail`
--

INSERT INTO `appointmentdetail` (`AppNumber`, `ProcedureNumber`, `Date`) VALUES
('A01', 'Pr01', '2022-04-20'),
('A02', 'Pr02', '2022-03-03'),
('A03', 'Pr03', '2022-04-12'),
('A04', 'Pr04', '2022-03-15'),
('A05', 'Pr05', '2022-03-07'),
('A06', 'Pr06', '2022-01-08'),
('A07', 'Pr07', '2022-08-11'),
('A08', 'Pr08', '2022-04-15'),
('A09', 'Pr09', '2022-02-02'),
('A10', 'Pr10', '2022-01-11');

-- --------------------------------------------------------

--
-- Table structure for table `dentist`
--

CREATE TABLE `dentist` (
  `DentistNumber` varchar(11) NOT NULL,
  `DentistName` varchar(20) NOT NULL,
  `YearsOfService` varchar(11) NOT NULL,
  `Address` varchar(20) NOT NULL,
  `Salary` decimal(7,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dentist`
--

INSERT INTO `dentist` (`DentistNumber`, `DentistName`, `YearsOfService`, `Address`, `Salary`) VALUES
('D01', 'Dr Mary Mulcahy', '5', 'Bandon', '4500.00'),
('D02', 'Dr Matthew Greene', '4', 'Fermoy', '4000.00'),
('D03', 'Dr Eugene O\'Beirne', '6', 'Bandon', '3500.00'),
('D04', 'Dr Stephen Rothwell', '5', 'Mallow', '5000.00');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `PatNumber` varchar(11) NOT NULL,
  `PatFirstName` varchar(11) NOT NULL,
  `PatLastName` varchar(11) NOT NULL,
  `PhoneNumber` varchar(11) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `City` varchar(50) NOT NULL,
  `County` varchar(20) NOT NULL,
  `EirCode` varchar(11) NOT NULL,
  `DateOfBirth` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`PatNumber`, `PatFirstName`, `PatLastName`, `PhoneNumber`, `Address`, `City`, `County`, `EirCode`, `DateOfBirth`) VALUES
('P01', 'Carine ', 'Schmitt', '0862368486', '345 View Ridge', 'Mallow', 'Cork', 'H92H561', '1978-04-04'),
('P02', 'Susan', 'Murphy', '0857989555', '9408 Furth Circle', 'Cobh', 'Cork', 'T10T022', '1976-04-18'),
('P03', 'Saoirse', 'Dolan', 'NULL', '14 Main Street', 'Fermoy', 'Cork', 'H44H278', '1977-01-02'),
('P04', 'Peter', 'Ferguson', '0874032255', '2678 Kingston Rd.', 'Cobh', 'Cork', 'G83G030', '1980-04-25'),
('P05', 'Janine', 'Doran', '0865055554', '4097 Douglas Av.', 'Kinsale', 'Cork', 'J97J562', '1985-07-22'),
('P06', 'John', 'Roberts', '0856443341', '972 Hamilton Drive', 'Cork City', 'Cork', 'Y97Y544', '1992-04-03'),
('P07', 'Eva', 'Earles', '0876779312', '3 Hillview Mall', 'Mallow', 'Cork', 'D96D711', '1994-08-30'),
('P08', 'Kate', 'McKenna', '0833769966', '347 Main Street', 'Cork City', 'Cork', 'P55P649', '1995-02-08'),
('P09', 'Julie', 'Doyle', '0874032253', '5557 North Pendale Street', 'Mallow', 'Cork', 'H54H237', '2000-04-02'),
('P10', 'Mary', 'Kenny', '0857989522', '4658 Williamgate Street', 'Mallow', 'Cork', 'C34C567', '1997-03-15');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `PaymentNumber` varchar(11) NOT NULL,
  `PaymentAmount` decimal(7,2) NOT NULL,
  `PaymentDesc` varchar(20) NOT NULL,
  `PaymentDate` date DEFAULT NULL,
  `OutstandingBalance` decimal(7,2) NOT NULL,
  `PatNumber` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`PaymentNumber`, `PaymentAmount`, `PaymentDesc`, `PaymentDate`, `OutstandingBalance`, `PatNumber`) VALUES
('PA01', '600.00', 'Paid by Credit Card', '2022-04-04', '200.00', 'P01'),
('PA02', '600.00', 'Paid by Credit Card', '2022-04-04', '100.00', 'P02'),
('PA03', '550.00', 'Paid by Cash', '2022-04-05', '200.00', 'P03'),
('PA04', '650.00', 'Unpaid', NULL, '650.00', 'P04'),
('PA05', '750.00', 'Paid by Cash', '2022-04-07', '400.00', 'P05'),
('PA06', '450.00', 'Paid by Cash', '2022-04-08', '400.00', 'P06'),
('PA07', '450.00', 'Paid by Credit Card', '2022-04-07', '200.00', 'P07'),
('PA08', '350.00', 'Unpaid', NULL, '200.00', 'P08'),
('PA09', '400.00', 'Paid by Credit Card', '2022-04-08', '350.00', 'P09'),
('PA10', '400.00', 'Paid by Credit Card', '2022-04-08', '200.00', 'P10');

-- --------------------------------------------------------

--
-- Table structure for table `treatment`
--

CREATE TABLE `treatment` (
  `ProcedureNumber` varchar(11) NOT NULL,
  `ProcedureDate` date NOT NULL,
  `description` varchar(20) NOT NULL,
  `Cost` decimal(7,2) NOT NULL,
  `PatNumber` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `treatment`
--

INSERT INTO `treatment` (`ProcedureNumber`, `ProcedureDate`, `description`, `Cost`, `PatNumber`) VALUES
('Pr01', '2022-04-04', 'Root Canal ', '600.00', 'P01'),
('Pr02', '2022-04-04', 'Root Canal', '600.00', 'P02'),
('Pr03', '2022-04-05', 'Veneers', '550.00', 'P03'),
('Pr04', '2022-04-05', 'Crowns', '650.00', 'P04'),
('Pr05', '2022-04-07', 'Extractions', '750.00', 'P05'),
('Pr06', '2022-04-07', 'Teeth Cleanings', '450.00', 'P06'),
('Pr07', '2022-04-07', 'Extractions', '450.00', 'P07'),
('Pr08', '2020-04-08', 'Fillings', '350.00', 'P08'),
('Pr09', '2022-04-08', 'Fillings', '350.00', 'P09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`AppNumber`),
  ADD UNIQUE KEY `PatNumber` (`PatNumber`),
  ADD KEY `PatientID` (`PatNumber`),
  ADD KEY `DentistNumber` (`DentistNumber`),
  ADD KEY `DentistNumber_2` (`DentistNumber`),
  ADD KEY `PatNumber_2` (`PatNumber`);

--
-- Indexes for table `appointmentdetail`
--
ALTER TABLE `appointmentdetail`
  ADD PRIMARY KEY (`AppNumber`),
  ADD KEY `AppointmentID` (`AppNumber`),
  ADD KEY `ProdecureID` (`ProcedureNumber`),
  ADD KEY `AppNumber` (`AppNumber`);

--
-- Indexes for table `dentist`
--
ALTER TABLE `dentist`
  ADD PRIMARY KEY (`DentistNumber`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`PatNumber`),
  ADD KEY `PatNumber` (`PatNumber`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`PaymentNumber`),
  ADD UNIQUE KEY `PatNumber` (`PatNumber`),
  ADD KEY `PatientID` (`PatNumber`),
  ADD KEY `PatNumber_2` (`PatNumber`);

--
-- Indexes for table `treatment`
--
ALTER TABLE `treatment`
  ADD PRIMARY KEY (`ProcedureNumber`),
  ADD KEY `PatNumber` (`PatNumber`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
