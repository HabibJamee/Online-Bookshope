-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2018 at 04:51 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `bid` varchar(255) NOT NULL,
  `bookname` varchar(255) NOT NULL,
  `catagory` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `price` int(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`bid`, `bookname`, `catagory`, `author`, `price`) VALUES
('0001', 'Fundamental of Physics', 'science', 'Halliday & Resnick', 250),
('0002', 'Data Structure', 'engineering', 'Seymour Lispchutz', 350),
('0003', 'Introduction of Algorithim', 'enginnering', 'Ronald L. Rivest', 360),
('0004', 'ISC Phisics ', 'science', 'D.K.Banerjee', 260),
('0005', 'Supernatural Business', 'bba', 'Wez Hone', 150),
('0006', 'Medical Microbiology and Immunology', 'medical', 'Waren Jawetz', 220),
('0007', 'Robin Hood', 'story', 'Walt Disney', 250),
('0008', 'Fairey Tales', 'story', 'Unknown', 290);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `uid` varchar(255) NOT NULL,
  `bid` varchar(255) NOT NULL,
  `amount` int(68) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`uid`, `bid`, `amount`) VALUES
('yead', 'yead', 1),
('yead', 'yead', 1),
('yead', '0003', 1),
('yead', '0005', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uid` varchar(255) NOT NULL,
  `uname` varchar(255) NOT NULL,
  `upass` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `mno` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `uname`, `upass`, `address`, `mno`) VALUES
('001', 'zahid', 'yead', 'bashundhara', '01677');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
