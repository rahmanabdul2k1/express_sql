-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2023 at 11:23 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mern_crud`
--

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `token` varchar(1000) NOT NULL,
  `name` varchar(40) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `dob` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(500) NOT NULL,
  `picture` varchar(500) NOT NULL,
  `expiry` varchar(500) NOT NULL,
  `ip` varchar(500) NOT NULL,
  `login_device` varchar(100) DEFAULT NULL,
  `video` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `token`, `name`, `designation`, `dob`, `phone`, `email`, `password`, `picture`, `expiry`, `ip`, `login_device`, `video`) VALUES
(14, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJsb2NhbGhvc3QiLCJhdWQiOiJsb2NhbGhvc3QiLCJpYXQiOjE2NzkxMjA2MjgsIm5iZiI6MTY3OTEyMDYzOCwiZXhwIjoxNjc5MTI0MjI4LCJkYXRhIjp7ImlkIjoiMTQiLCJlbWFpbCI6InN3ZXRoYUBnbWFpbC5jb20iLCJwYXNzd29yZCI6IlN3ZXRoYUAxMjM0NSJ9fQ.bT6dA30gNVYpK71_LOL52ml7P9v-VNyX3Y23wgBuYE0', 'Swetha', '', '', '2142542543', 'swetha@gmail.com', 'Swetha@12345', '1678969116jee.jpg', '2022-09-16 06:26:03 AM', '::1', 'Chrome 106.0.0.0 Windows 10', NULL),
(21, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJsb2NhbGhvc3QiLCJhdWQiOiJsb2NhbGhvc3QiLCJpYXQiOjE2NzA0NzI4ODEsIm5iZiI6MTY3MDQ3Mjg5MSwiZXhwIjoxNjcwNDc2NDgxLCJkYXRhIjp7ImlkIjoiMjEiLCJlbWFpbCI6ImFiZHVsQGdtYWlsLmNvbSIsInBhc3N3b3JkIjoiMTIxMjEyIn19.p0dWMFtd8cd1cjmzju8PZcW0r02MmacBmnRgvpncpok', 'Abdul Rahman', 'Software Engineer', '2001-01-06', '6383950502', 'abdul@gmail.com', '121212', 'rise.jpg', '2022-10-07 05:59:42 AM', '::1', 'Chrome 109.0.0.0 Windows 10', 'vtk.mp4'),
(27, '', 'demo', '', '', '4525452436', 'demo@gmail.com', '121212', 'hill.webp', '', '', '', NULL),
(33, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJsb2NhbGhvc3QiLCJhdWQiOiJsb2NhbGhvc3QiLCJpYXQiOjE2Nzk5MDM2MjcsIm5iZiI6MTY3OTkwMzYzNywiZXhwIjoxNjc5OTA3MjI3LCJkYXRhIjp7ImlkIjoiMzMiLCJlbWFpbCI6InN1cGVybWFuQGdtYWlsLmNvbSIsInBhc3N3b3JkIjoiU3VwZXJAMTIzIn19.aSViO-Z3sxJQCs1pUgxEUZpdHo8jFXbkjomADfxmyHA', 'superman', '', '', '9632587410', 'superman@gmail.com', 'Super@123', 'rise.jpg', '', '', '', NULL),
(62, '1d23338d9ac0c97f2ef72253ee2d4dc8b988de3c5d88d767f4e103e97b4a8df9', 'Abdul Rahman', 'Php Developer', '2001-01-06', '6383950501', 'rahman@gmail.com', '121212', 'roe.jpg', '', '::1', 'Chrome 107.0.0.0 Windows 10', NULL),
(65, '', 'Abdhul', '', '', '9874512546', 'abdhul@geniies.com', 'Abdul@12345', 'profile.jpg', '', '', NULL, NULL),
(113, '', 'Abdul Rahman', '', '', '6383950502', 'test0@gmail.com', 'Ttest897o968@7863496', 'profile.jpg', '', '', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
