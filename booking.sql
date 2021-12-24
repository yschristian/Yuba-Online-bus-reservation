-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2021 at 01:38 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `booking`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `username` varchar(60) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `fullname`, `username`, `password`, `created_at`) VALUES
(6, 'Arsene Merci', 'eich', '202cb962ac59075b964b07152d234b70', '2021-08-05 09:44:12'),
(13, 'Yubahwe', 'chris', '123', '2021-11-20 18:49:01');

-- --------------------------------------------------------

--
-- Table structure for table `buses`
--

CREATE TABLE `buses` (
  `bus_id` int(11) NOT NULL,
  `plate_no` varchar(255) NOT NULL,
  `seats` int(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buses`
--

INSERT INTO `buses` (`bus_id`, `plate_no`, `seats`, `created_at`) VALUES
(1, 'RAB 455', 12, '2021-11-20 15:54:09');

-- --------------------------------------------------------

--
-- Table structure for table `ligne`
--

CREATE TABLE `ligne` (
  `ligne_id` int(11) NOT NULL,
  `departure` varchar(255) NOT NULL,
  `destination` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ligne`
--

INSERT INTO `ligne` (`ligne_id`, `departure`, `destination`, `price`, `created_at`) VALUES
(1, 'muhanga', 'kigali', 2500, '2021-08-16 16:09:22'),
(2, 'kigali', 'huye', 5000, '2021-08-16 16:09:48'),
(4, 'Ruhango', 'Nyanza', 1000, '2021-11-23 07:42:49'),
(5, 'Nyamata', 'rusizi', 10000, '2021-11-23 07:54:37');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL,
  `fname` varchar(70) NOT NULL,
  `email` varchar(70) NOT NULL,
  `subject` varchar(90) NOT NULL,
  `message` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`message_id`, `fname`, `email`, `subject`, `message`, `created_at`) VALUES
(1, 'Bazambanza', 'bz@ur.com', 'Salutes', '          Hello people on the internet:)', '2021-11-23 06:02:40'),
(2, 'Bazambanza', 'bz@ur.com', 'Salutes', '          Hello people on the Internet :)', '2021-11-23 06:03:15'),
(3, 'Christian', 'chris@ur.com', 'Salutes', '          Hello cute people on the network :)', '2021-11-23 06:04:42'),
(4, 'Bazambanza', 'bz@ur.com', 'Salutes', '          hahhhhhh', '2021-11-23 07:53:00');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `ticket_id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `ligne` int(11) NOT NULL,
  `ticket_time` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`ticket_id`, `user`, `ligne`, `ticket_time`, `created_at`) VALUES
(26, 4, 2, '2022-01-02 09:41:00', '2021-11-22 20:01:31'),
(29, 4, 2, '2021-11-01 09:38:00', '2021-11-23 07:38:52'),
(30, 4, 2, '2021-11-03 09:39:00', '2021-11-23 07:39:09'),
(31, 4, 2, '2021-11-11 09:54:00', '2021-11-23 07:54:19'),
(32, 4, 1, '2021-11-24 13:00:00', '2021-11-23 07:56:31'),
(34, 4, 1, '2021-11-18 09:57:00', '2021-11-23 07:57:16');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `fname` varchar(70) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(90) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `fname`, `username`, `email`, `password`, `phone`, `created_at`) VALUES
(4, 'Arsene Merci', 'eich', 'arsenedeveloper250@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '078', '2021-08-05 08:45:00'),
(5, 'dfxgfhj', 'ewfewrewr', 'dsf@dfg.gfdf', 'asrtewsdfetg', 'ewewewr', '2021-11-20 14:15:29'),
(6, 'yubahwe', 'sc', 'yuba@gmail.com', '233243244', '12345', '2021-11-20 14:44:45'),
(7, 'rex', 'tyt', 'y@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '6776', '2021-11-20 15:03:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `buses`
--
ALTER TABLE `buses`
  ADD PRIMARY KEY (`bus_id`);

--
-- Indexes for table `ligne`
--
ALTER TABLE `ligne`
  ADD PRIMARY KEY (`ligne_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`ticket_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `buses`
--
ALTER TABLE `buses`
  MODIFY `bus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ligne`
--
ALTER TABLE `ligne`
  MODIFY `ligne_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `ticket_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
