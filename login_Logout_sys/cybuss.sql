-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 10, 2023 at 11:16 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cybuss`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(122) NOT NULL,
  `name` varchar(211) NOT NULL,
  `email` varchar(211) NOT NULL,
  `password` varchar(211) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`) VALUES
(1, 'amit', 'amit@gmail.com', 'amit');

-- --------------------------------------------------------

--
-- Table structure for table `main_slider`
--

CREATE TABLE `main_slider` (
  `id` int(122) NOT NULL,
  `name` varchar(33) NOT NULL,
  `link` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_slider`
--

INSERT INTO `main_slider` (`id`, `name`, `link`, `img`, `content`, `status`) VALUES
(1, 'abc', 'https://www.w3schools.com/js/tryit.asp?filename=tryjs_variables_let', 'images/vocal-for-local.webp', 'hdhdhdhdhdhh', 'Active'),
(2, 'admin', 'https://meet.google.com/kss-funk-ucx', 'images/GST-Registration.webp', 'content', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `menu_content`
--

CREATE TABLE `menu_content` (
  `id` int(122) NOT NULL,
  `cat_name` varchar(111) NOT NULL,
  `link` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu_content`
--

INSERT INTO `menu_content` (`id`, `cat_name`, `link`, `content`) VALUES
(11, 'Business Setup', 'aergaer', 'aerga'),
(12, 'SPECIAL ENTITES', 'eragfae', 'abvadfvsd'),
(13, 'Rejisteration', 'aergfeqrf', 'qwrfwqfe'),
(14, 'GST Services', 'earfegeg', 'eagevsd'),
(15, 'Income Tax', 'egsevs', 'fvsfvsv'),
(16, 'Tax Filing', 'egwaf', 'vwsergfs'),
(17, 'Accounting', 'erqgwefvs', 'werafsd'),
(18, 'CORPORATE FILINGS', 'AGDFGFDS', 'AVSDFADVASV');

-- --------------------------------------------------------

--
-- Table structure for table `product_slider`
--

CREATE TABLE `product_slider` (
  `id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `price` varchar(150) NOT NULL,
  `content` varchar(255) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_slider`
--

INSERT INTO `product_slider` (`id`, `link`, `img`, `price`, `content`, `status`) VALUES
(1, 'https://meet.google.com/sho-vohm-mab', 'images/GST-Registration.webp', '5000', 'dghdggdgg', 'Active'),
(2, 'https://meet.google.com/sho-vohm-mab', 'images/CompanyRegistration.webp', '5000', 'dghdggdgg', 'Active'),
(3, 'https://meet.google.com/sho-vohm-mab', 'images/File-Tax-Return.webp', '2000', 'dghdggdgg', 'Active'),
(4, 'https://meet.google.com/sho-vohm-mab', 'images/Protect-your-brand.webp', '5000', 'dghdggdgg', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(122) NOT NULL,
  `name` varchar(122) NOT NULL,
  `email` varchar(122) NOT NULL,
  `password` varchar(121) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`) VALUES
(1, 'suraj', 'suraj@gmail.com', 'suraj'),
(2, 'admin', 'admin@gmail.com', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_slider`
--
ALTER TABLE `main_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_content`
--
ALTER TABLE `menu_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_slider`
--
ALTER TABLE `product_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(122) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `main_slider`
--
ALTER TABLE `main_slider`
  MODIFY `id` int(122) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menu_content`
--
ALTER TABLE `menu_content`
  MODIFY `id` int(122) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `product_slider`
--
ALTER TABLE `product_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(122) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
