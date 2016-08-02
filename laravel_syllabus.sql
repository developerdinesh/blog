-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 02, 2016 at 07:38 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_syllabus`
--

-- --------------------------------------------------------

--
-- Table structure for table `syllabususer`
--

CREATE TABLE `syllabususer` (
  `id` int(11) NOT NULL,
  `first_name` varchar(60) NOT NULL,
  `last_name` varchar(60) NOT NULL,
  `user_name` varchar(60) NOT NULL,
  `password` varchar(60) NOT NULL,
  `email_address` varchar(60) NOT NULL,
  `contact_no` varchar(60) NOT NULL,
  `user_type` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `syllabususer`
--

INSERT INTO `syllabususer` (`id`, `first_name`, `last_name`, `user_name`, `password`, `email_address`, `contact_no`, `user_type`) VALUES
(1, 'Dinesh ', 'Ghimire', 'dinesh.ghimire', '5f4dcc3b5aa765d61d8327deb882cf99', 'developer.dinesh1@gmail.com', '9813397404', 'admin'),
(2, 'Sagar', 'sapkota', 'sagar_sapkota', 'passowrd', 'sagar@sapkota.com', '9813397404', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `test_mod`
--

CREATE TABLE `test_mod` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `contact` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_mod`
--

INSERT INTO `test_mod` (`id`, `name`, `email`, `contact`) VALUES
(1, 'test name', 'test@name.com', '9813397404');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `contact`) VALUES
(1, 'dinesh', 'test@test.com', '646532'),
(2, 'new name', 'new@email.com', '4645');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `syllabususer`
--
ALTER TABLE `syllabususer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test_mod`
--
ALTER TABLE `test_mod`
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
-- AUTO_INCREMENT for table `syllabususer`
--
ALTER TABLE `syllabususer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `test_mod`
--
ALTER TABLE `test_mod`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
