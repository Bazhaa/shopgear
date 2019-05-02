-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2017 at 01:21 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopgear`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` bit(1) DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `active`) VALUES
(1, 'Máy Tính', 'Máy tính chơi game', b'1'),
(2, 'Bàn Phím', NULL, b'1'),
(3, 'Chuột', NULL, b'1'),
(4, 'Tai Nghe', NULL, b'1'),
(5, 'Lót chuột', NULL, b'1'),
(6, 'Ghế', NULL, b'1'),
(7, 'Phụ Kiện', NULL, b'1'),
(8, 'Laptop', 'Laptop cấu hình khủng', b'1'),
(10, 'Test tên', 'Test mô tả', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `to` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `to`, `address`, `phone`, `total`) VALUES
(9, '123123', '1231231', '123123', 0),
(10, '123123', 'Face', '4321234', 19200000),
(11, 'Tét', '234zsasdfa', '123123', 38400000);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `cateid` int(11) NOT NULL,
  `subcateid` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `producer` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `remaining` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `cateid`, `subcateid`, `name`, `producer`, `price`, `remaining`, `description`) VALUES
(10, 1, 9, 'GEARVN MaxOFF PC | i7 7700 / 16GB / 1070 / WaterCooling', '', 38700000, 5, ''),
(11, 1, 9, 'GEARVN eSports PC – GPE09 | G4600 / 4G / 1030 / 120G', '', 9600000, 10, ''),
(12, 1, 9, 'GEARVN MaxOFF PC | i7 7700 / 16GB / 1070 / WaterCooling', '', 38700000, 5, ''),
(14, 1, 9, 'GEARVN eSports PC – GPE09 | G4600 / 4G / 1030 / 120G', '', 9600000, 10, ''),
(15, 1, 9, 'GEARVN MaxOFF PC | i7 7700 / 16GB / 1070 / WaterCooling', '', 38700000, 5, ''),
(16, 1, 9, 'GEARVN eSports PC – GPE09 | G4600 / 4G / 1030 / 120G', '', 9600000, 10, ''),
(17, 1, 9, 'GEARVN MaxOFF PC | i7 7700 / 16GB / 1070 / WaterCooling', '', 38700000, 5, ''),
(21, 1, 9, 'GEARVN eSports PC – GPE09 | G4600 / 4G / 1030 / 120G', '', 9600000, 10, ''),
(22, 1, 9, 'GEARVN MaxOFF PC | i7 7700 / 16GB / 1070 / WaterCooling', '', 38700000, 5, ''),
(23, 1, 9, 'GEARVN eSports PC – GPE09 | G4600 / 4G / 1030 / 120G', '', 9600000, 10, ''),
(24, 1, 9, 'GEARVN MaxOFF PC | i7 7700 / 16GB / 1070 / WaterCooling', '', 38700000, 5, ''),
(25, 1, 9, 'GEARVN eSports PC – GPE09 | G4600 / 4G / 1030 / 120G', '', 9600000, 10, ''),
(26, 1, 9, 'GEARVN MaxOFF PC | i7 7700 / 16GB / 1070 / WaterCooling', '', 38700000, 5, ''),
(27, 1, 9, 'GEARVN eSports PC – GPE09 | G4600 / 4G / 1030 / 120G', '', 9600000, 10, ''),
(28, 1, 9, 'GEARVN MaxOFF PC | i7 7700 / 16GB / 1070 / WaterCooling', '', 38700000, 5, ''),
(36, 1, 9, 'GEARVN eSports PC – GPE09 | G4600 / 4G / 1030 / 120G', '', 9600000, 10, ''),
(37, 1, 9, 'GEARVN MaxOFF PC | i7 7700 / 16GB / 1070 / WaterCooling', '', 38700000, 5, ''),
(38, 2, 16, 'GEARVN eSports PC', '', 9600000, 10, '<p>12312312</p>'),
(39, 1, 9, 'GEARVN MaxOFF PC | i7 7700 / 16GB / 1070 / WaterCooling', '', 38700000, 5, ''),
(40, 2, 16, 'GEARVN eSports PC – GPE09 | G4600 / 4G / 1030 / 120G', '', 9600000, 10, ''),
(41, 1, 9, 'GEARVN MaxOFF PC | i7 7700 / 16GB / 1070 / WaterCooling', '', 38700000, 5, ''),
(42, 1, 9, 'GEARVN eSports PC – GPE09 | G4600 / 4G / 1030 / 120G', '', 9600000, 10, ''),
(43, 1, 9, 'GEARVN MaxOFF PC | i7 7700 / 16GB / 1070 / WaterCooling', '', 38700000, 5, ''),
(44, 1, 9, 'GEARVN eSports PC – GPE09 | G4600 / 4G / 1030 / 120G', '', 9600000, 10, ''),
(45, 1, 9, 'GEARVN MaxOFF PC | i7 7700 / 16GB / 1070 / WaterCooling', '', 38700000, 5, ''),
(46, 1, 9, 'GEARVN eSports PC – GPE09 | G4600 / 4G / 1030 / 120G', '', 9600000, 10, ''),
(47, 1, 9, 'GEARVN MaxOFF PC | i7 7700 / 16GB / 1070 / WaterCooling', '', 38700000, 5, ''),
(48, 1, 9, 'GEARVN eSports PC – GPE09 | G4600 / 4G / 1030 / 120G', '', 9600000, 10, ''),
(49, 1, 9, 'GEARVN MaxOFF PC | i7 7700 / 16GB / 1070 / WaterCooling', '', 38700000, 5, ''),
(50, 1, 9, 'GEARVN eSports PC – GPE09 | G4600 / 4G / 1030 / 120G', '', 9600000, 10, ''),
(51, 1, 9, 'GEARVN MaxOFF PC | i7 7700 / 16GB / 1070 / WaterCooling', '', 38700000, 5, ''),
(67, 1, 9, 'GEARVN eSports PC – GPE09 | G4600 / 4G / 1030 / 120G', '', 9600000, 10, ''),
(68, 1, 9, 'GEARVN MaxOFF PC | i7 7700 / 16GB / 1070 / WaterCooling', '', 38700000, 5, ''),
(69, 1, 9, 'GEARVN eSports PC – GPE09 | G4600 / 4G / 1030 / 120G', '', 9600000, 10, ''),
(70, 1, 9, 'GEARVN MaxOFF PC | i7 7700 / 16GB / 1070 / WaterCooling', '', 38700000, 5, ''),
(71, 1, 9, 'GEARVN eSports PC – GPE09 | G4600 / 4G / 1030 / 120G', '', 9600000, 10, ''),
(72, 1, 9, 'GEARVN MaxOFF PC | i7 7700 / 16GB / 1070 / WaterCooling', '', 38700000, 5, ''),
(73, 1, 9, 'GEARVN eSports PC – GPE09 | G4600 / 4G / 1030 / 120G', '', 9600000, 10, ''),
(74, 1, 9, 'GEARVN MaxOFF PC | i7 7700 / 16GB / 1070 / WaterCooling', '', 38700000, 5, ''),
(75, 1, 9, 'GEARVN eSports PC – GPE09 | G4600 / 4G / 1030 / 120G', '', 9600000, 10, ''),
(76, 1, 9, 'GEARVN MaxOFF PC | i7 7700 / 16GB / 1070 / WaterCooling', '', 38700000, 5, ''),
(77, 1, 9, 'GEARVN eSports PC – GPE09 | G4600 / 4G / 1030 / 120G', '', 9600000, 10, ''),
(78, 1, 9, 'GEARVN MaxOFF PC | i7 7700 / 16GB / 1070 / WaterCooling', '', 38700000, 5, ''),
(79, 1, 9, 'GEARVN eSports PC – GPE09 | G4600 / 4G / 1030 / 120G', '', 9600000, 10, ''),
(80, 1, 9, 'GEARVN MaxOFF PC | i7 7700 / 16GB / 1070 / WaterCooling', '', 38700000, 5, ''),
(81, 1, 9, 'GEARVN eSports PC – GPE09 | G4600 / 4G / 1030 / 120G', '', 9600000, 10, ''),
(82, 1, 9, 'GEARVN MaxOFF PC | i7 7700 / 16GB / 1070 / WaterCooling', '', 38700000, 5, ''),
(83, 1, 9, 'GEARVN eSports PC – GPE09 | G4600 / 4G / 1030 / 120G', '', 9600000, 10, ''),
(84, 1, 9, 'GEARVN MaxOFF PC | i7 7700 / 16GB / 1070 / WaterCooling', '', 38700000, 5, ''),
(85, 1, 9, 'GEARVN eSports PC – GPE09 | G4600 / 4G / 1030 / 120G', '', 9600000, 10, ''),
(86, 1, 9, 'GEARVN MaxOFF PC | i7 7700 / 16GB / 1070 / WaterCooling', '', 38700000, 5, ''),
(87, 1, 9, 'GEARVN eSports PC – GPE09 | G4600 / 4G / 1030 / 120G', '', 9600000, 10, ''),
(88, 1, 9, 'GEARVN MaxOFF PC | i7 7700 / 16GB / 1070 / WaterCooling', '', 38700000, 5, ''),
(89, 1, 9, 'GEARVN eSports PC – GPE09 | G4600 / 4G / 1030 / 120G', '', 9600000, 10, ''),
(90, 1, 9, 'GEARVN MaxOFF PC | i7 7700 / 16GB / 1070 / WaterCooling', '', 38700000, 5, ''),
(91, 1, 9, 'GEARVN eSports PC – GPE09 | G4600 / 4G / 1030 / 120G', '', 9600000, 10, ''),
(92, 1, 9, 'GEARVN MaxOFF PC | i7 7700 / 16GB / 1070 / WaterCooling', '', 38700000, 5, ''),
(93, 1, 9, 'GEARVN eSports PC – GPE09 | G4600 / 4G / 1030 / 120G', '', 9600000, 10, ''),
(94, 1, 9, 'GEARVN MaxOFF PC | i7 7700 / 16GB / 1070 / WaterCooling', '', 38700000, 5, ''),
(95, 1, 9, 'GEARVN eSports PC – GPE09 | G4600 / 4G / 1030 / 120G', '', 9600000, 10, ''),
(96, 1, 9, 'GEARVN MaxOFF PC | i7 7700 / 16GB / 1070 / WaterCooling', '', 38700000, 5, ''),
(97, 1, 9, 'GEARVN eSports PC – GPE09 | G4600 / 4G / 1030 / 120G', '', 9600000, 10, ''),
(98, 1, 9, 'GEARVN MaxOFF PC | i7 7700 / 16GB / 1070 / WaterCooling', '', 38700000, 5, ''),
(130, 1, 9, 'May tinh sieu khung', 'Razer', 6, 6, '<p>Test</p>\r\n<p><strong>Mootj hai ba</strong></p>');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` int(11) NOT NULL,
  `cateid` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` bit(1) DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `cateid`, `name`, `description`, `active`) VALUES
(9, 1, 'Gaming PC', 'Chơi được game cấu hình cao', b'1'),
(10, 1, 'Monitor - Màn hình máy tính', 'Màn hình cong, màn hình 32:9, màn hình LCD', b'1'),
(11, 1, 'Mainboard - Bo mạch chủ', NULL, b'1'),
(12, 1, 'VGA - Card màn hình', NULL, b'1'),
(13, 1, 'Cooling - Tản nhiệt', NULL, b'1'),
(14, 1, 'PSU - Nguồn máy tính', NULL, b'1'),
(15, 2, 'Razer', NULL, b'1'),
(16, 2, 'Steelseries', NULL, b'1'),
(17, 2, 'G.Skill', NULL, b'1'),
(18, 2, 'Logitech', NULL, b'1'),
(19, 2, 'Ducky', NULL, b'1'),
(20, 2, 'DARE-U', NULL, b'1'),
(22, 5, 'Lot chuot', 'Chuot lot', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(150) DEFAULT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `active` bit(1) DEFAULT NULL,
  `isadmin` bit(1) DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `firstname`, `lastname`, `email`, `phone`, `active`, `isadmin`) VALUES
('admin', '123456', 'Admin', 'Tuan Anh', 'tuna@st.neu.edu.vn', '', b'1', b'1'),
('test', '123', 'Thanh', 'Nguyen', NULL, '123123123123', b'1', b'0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
