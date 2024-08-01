-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2024 at 08:24 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `is_admin` int(255) NOT NULL,
  `payment_id` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `company_name`, `is_admin`, `payment_id`) VALUES
(12, 'ahmed', 'ahmed@example.com', '$2a$12$HDdNpL6JqVqXkjqLRqBT0OVBKETTlFdrQvULKuCpiwumYFPANYGGi', 'company6', 1, 'cus_Q1Wf33earZCx1i'),
(14, 'maya', 'maya@email.com', '$2a$12$YoKpMrA5AkLfcwL1NHRpjOIzPEdYjt2/Wt/vEZYDlKb0nF3PtnFNO', 'company8', 1, 'cus_Q1hBS7onPzyQpb'),
(15, 'zyad', 'zyad@gmail.com', '$2a$12$xxY9EnRPrXJRdcVBG/kkwOymajCxDPzTuRRplNjm3oT2/ZcGbuFf.', 'REease', 1, 'cus_Q7QejoiSQTYhkC'),
(16, 'ali mohamed', 'ali@gmail.com', '$2a$12$nBLapbd25FnC9dooF6FlWerpqPdcNxc2eEGeUjmUt/YH7DWfoKhKO', 'pheniox', 1, 'cus_QLJI6QtIR3RAlF'),
(18, 'mohsen', 'm@gmail.com', '$2a$12$meZYQTwqi0kk7QrAmSUhyusfVCzfcBkbmdfg22D2uQQGMXO4KvzXO', 'google', 1, NULL),
(19, 'mahmoud mohamed', 'mahmoud@gmail.com', '$2a$12$RW1O2eVJmal/LefGgZ5aOOBFPkALIucKFeWBWt1xDIUy27VWYXOD.', 'company5555', 1, NULL),
(20, 'omar ahmed', 'omar@gmail.com', '$2a$12$bCBQvyHW0qANUtuFwZQJce.jX9WVg3DDBXX4PhGO3GFimbxeRVbFS', 'company99999999', 1, NULL),
(22, 'ayman', 'ayman@gmail.com', '$2a$12$RtDh5mRAuNqCKqkQmL67tukQkTBaegKbRj2a.tr1xsvANNkLNhavy', 'company55555', 1, NULL),
(23, 'mohamed ashraf', 'mohamedashraf@gmail.com', '$2a$12$BVI4d1V7ovUKKxFAcMw.q.yCX1iy0rrI.oc3EsfFKG4ctr.wEbbwe', 'Medicare.com', 1, NULL),
(24, 'mahmoud', 'm2@gmail.com', '$2a$12$Q63uW3kI6UxOdlV4FRFM.u.VAFh7WhF2JZiH40jz9pRjhGz.y3ERe', 'it is company', 1, 'cus_QEyUTnhR7HxnYm'),
(25, 'shahd', 'shahd@gmail.com', '$2a$12$oQ.hTu6ETo5q6FBnY3oTW.tXEZ/HPO9UEE8Qo87gJ9uB/Jpz0xKkq', 'puppyvet', 1, 'cus_QFDPMtt9G87jzS'),
(32, 'kaya1', 'kaya1@gmail.com', '$2a$12$yE7BQeZMqAszhWqeQfXnAOphAwSZTlZecVmsCXLDWqJAv7dqWkrjO', 'company555', 1, 'cus_QFguX7Au5YELtd'),
(33, 'shawky', 'shawky@gmail.com', '$2a$12$bEWTIme6CSbU2NdJf8GMgOXHSmoih5JQKD.OEAhFoFwq4FNBSkeO.', 'xxx', 1, 'cus_QHBgn9Y5wkV4z3'),
(34, 'mamad', 'mamad@gmail.com', '$2a$12$gsY.2LJVxyLwbfFhlWj/buiMNztGhKGvT55tW.gNhB3XhLv2Ny/Gq', 'safasfafa', 1, 'cus_QKbH45fWEobhNg'),
(35, 'ramy', 'ramy@gmail.com', '$2a$12$SWV/HtoaAXQp9RK70arFbebGM82d.1LzSQCa3ROywY5VLIwYvAit.', 'ramysssssss', 1, 'cus_QKcvGDHzzGfYRF'),
(36, 'ahmed ali', 'ahmedali@gmail.com', '$2a$12$r0HKwG3JvqmNtAY4QzJG/uLLAfZxLm9R2eg.qJVvr/TP2HAkG3J.i', 'elhamd', 1, 'cus_QKpbQqm07zNFrT'),
(37, 'Dina Sobhy', 'dinasobhy20@gmail.com', '$2a$12$2eS19/5DCn.e.jgRQg8GDOxx7nseQOQNy9I9s.n0MfsML5VrliP5q', 'RE', 1, 'cus_QOdFFHB45WPjet'),
(38, 'marry', 'marry@gmail.com', '$2a$12$2jAquujtndApsWRB/yNKbu2/pQLpVf9ospkNy0INtOQNqlfx3Osyy', 'asasasaasas', 1, 'cus_QLquL2vAmvGLsD'),
(39, 'yasmeensamuel', 'yasmeen20@gmail.com', '$2a$12$g6lTPr77l83Jpp5OeTXO.uzoJRCik0VYWyWyZ4e.ZWGTe.tyFaSR.', 'RE', 1, 'cus_QLr0rvHAYVztEW'),
(40, 'marawan', 'marawan@gmail.com', '$2a$12$MUP8Wiwsrs.PkIeKrFc8VeFWDukKG/5ZEeFoT1uD5z.dGYhj6D0YC', 'company999', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `date` text NOT NULL,
  `clock_in` text NOT NULL,
  `in_status` varchar(255) NOT NULL,
  `clock_out` text DEFAULT NULL,
  `out_status` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `email`, `date`, `clock_in`, `in_status`, `clock_out`, `out_status`, `company_name`) VALUES
(1, 'mahdy@gmail.com', '4-6-2024', '9:0', 'on time', '17:0', 'late', 'REease'),
(2, 'mahdy@gmail.com', '11-6-2024', '9:0', 'on time', '17:0', 'on time', 'REease'),
(6, 'khaled@gmail.com', '17-6-2024', '8:0', 'on time', '17:0', 'extra', 'REease'),
(7, 'khaled@gmail.com', '11-6-2024', '10:0', 'absent', '20:0', 'extra', 'REease'),
(8, 'khaled@gmail.com', '19-6-2024', '8:0', 'on time', '17:0', 'on time', 'REease'),
(9, 'khaled@gmail.com', '21-6-2024', '8:0', 'on time', '17:0', 'on time', 'REease'),
(13, 'khaled@gmail.com', '1-7-2024', '8:0', 'on time', '17:0', 'on time', 'REease');

-- --------------------------------------------------------

--
-- Table structure for table `leaves`
--

CREATE TABLE `leaves` (
  `id` int(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `leave_type` varchar(255) DEFAULT NULL,
  `start_date` text DEFAULT NULL,
  `end_date` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `leaves`
--

INSERT INTO `leaves` (`id`, `name`, `leave_type`, `start_date`, `end_date`, `description`, `status`, `company_name`) VALUES
(6, 'mahdy', 'other', '3-6-2024', '5-6-2024', 'iam very sick and i cant come to work', 'approved', 'REease'),
(7, 'mahdy', 'othersssssssss', '3-6-2024', '5-6-2024', 'iam very sick and i cant come to work', 'approved', 'REease'),
(10, 'khaled', 'medical leave', '12-6-2024', '15-6-2024', 'iam very sick and i cant come to work', 'approved', 'REease'),
(12, 'khaled', 'Distinctio Culpa re', '2017-07-12', '1992-09-21', 'Quo voluptatum odit ', 'approved', 'REease');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(255) NOT NULL,
  `payment_amount` int(255) NOT NULL,
  `payment_date` date NOT NULL,
  `payment_email` varchar(255) NOT NULL,
  `canrd_number` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payroll`
--

CREATE TABLE `payroll` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `basic` int(255) NOT NULL,
  `absent_attendance` int(255) NOT NULL,
  `extra_attendance` int(255) NOT NULL,
  `done_RE` int(255) NOT NULL,
  `allowance` int(255) DEFAULT NULL,
  `deduction` int(255) DEFAULT NULL,
  `total` int(255) NOT NULL,
  `month` int(255) NOT NULL,
  `year` int(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payroll`
--

INSERT INTO `payroll` (`id`, `name`, `position`, `company_name`, `basic`, `absent_attendance`, `extra_attendance`, `done_RE`, `allowance`, `deduction`, `total`, `month`, `year`, `status`) VALUES
(5, 'khaled', 'frontend developer', 'REease', 15000, 750, 188, 1000, 300, 550, 15188, 6, 2024, 'paid'),
(6, 'khaled', 'frontend developer', 'REease', 15000, 750, 188, 1500, 300, 550, 15688, 6, 2024, 'paid'),
(11, 'khaled', 'frontend developer', 'REease', 15000, 750, 188, 1500, 0, 0, 15938, 6, 2024, 'paid'),
(27, 'khaled', 'frontend developer', 'REease', 15000, 0, 0, 0, 300, 550, 14750, 7, 2024, 'paid'),
(30, 'khaled', 'real estate agent', 'REease', 30000, 0, 0, 0, 300, 550, 29750, 7, 2024, 'not paid'),
(31, 'khaled', 'realestate agent', 'REease', 30000, 0, 0, 0, 300, 550, 29750, 7, 2024, 'not paid'),
(38, 'Laura Meadows', 'Ipsum porro praesen', 'REease', 30000, 30000, 0, 0, 0, 0, 0, 8, 2024, 'paid'),
(39, 'Laura Meadows', 'Ipsum porro praesen', 'REease', 30000, 30000, 0, 0, 100, 0, 100, 8, 2024, 'not paid'),
(40, 'Laura Meadows', 'Ipsum porro praesen', 'REease', 30000, 30000, 0, 0, 100, 200, -100, 8, 2024, 'not paid'),
(41, 'Rana Kamal', 'system analyst', 'REease', 40000, 40000, 0, 0, 700, 200, 500, 6, 2024, 'not paid');

-- --------------------------------------------------------

--
-- Table structure for table `re`
--

CREATE TABLE `re` (
  `id` int(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `size` int(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `done_date` text DEFAULT NULL,
  `price` int(255) NOT NULL,
  `assigned_to` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `document` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `re`
--

INSERT INTO `re` (`id`, `owner`, `type`, `address`, `size`, `status`, `done_date`, `price`, `assigned_to`, `company_name`, `document`) VALUES
(19, 'john', 'appartment', 'cairo,egypt', 180, 'sold out', '1-7-2024', 1500000, 'khaled', 'REease', 'https://esign.com/wp-content/uploads/Apartment-Lease-Agreement-Template.png'),
(20, 'mostafa', 'villa', 'zamalk', 700, 'sold out', '22-6-2024', 30000000, 'khaled', 'REease', 'https://esign.com/wp-content/uploads/Apartment-Lease-Agreement-Template.png'),
(21, 'lila', 'house', 'cairo', 110, 'for sale', NULL, 200000, 'khaled', 'REease', 'https://images.unsplash.com/photo-1562240020-ce31ccb0fa7d?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
(22, 'lila', 'house', 'cairo', 110, 'for sale', NULL, 200000, 'khaled', 'REease', 'https://images.unsplash.com/photo-1562240020-ce31ccb0fa7d?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(255) NOT NULL,
  `company_name` varchar(200) NOT NULL,
  `position` varchar(200) NOT NULL,
  `salary` int(200) NOT NULL,
  `is_admin` int(200) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `company_name`, `position`, `salary`, `is_admin`) VALUES
(77, 'mohamed', 'mohamed@gmail.com', '$2a$12$QsyyTVP0afW9XxIUeSfAJeSeFxoR9vjnZ0F/uZDaHf8n7BlxKAIAK', 'REease', 'backend developer', 15000, 0),
(78, 'lina', 'lina@gmail.com', '$2a$12$DZnGxDeKVGU0W0cQgJP9POikGjsO5UqNTNVsn9Z0BwOTGoxjej2g6', 'REease', 'realestate agent', 30000, 0),
(87, 'khaled', 'khaled@gmail.com', '$2a$12$8Lun5ppYJag/89yYlavhHu17zjKMwvH8.Kpf1O5M9P.SzgWVljJ8O', 'REease', 'realestate agent', 30000, 0),
(91, 'Rana Kamal', 'ranakamal@gmail.com', '$2a$12$ac16qAS0nWtfAVpMn0M3DePnlIqELskQtcPiphixYJEPDZYUQ1kuS', 'REease', 'system analyst', 40000, 0),
(94, 'khaled23', 'khaled23@gmail.com', '$2a$12$RqcQE05.cMikxjIjd3J7Fe1uWKMCh6.lpDe3jXRh5lDQlyExQXPaC', 'REease', 'frontend developer', 15000, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leaves`
--
ALTER TABLE `leaves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `payroll`
--
ALTER TABLE `payroll`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re`
--
ALTER TABLE `re`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `leaves`
--
ALTER TABLE `leaves`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payroll`
--
ALTER TABLE `payroll`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `re`
--
ALTER TABLE `re`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
