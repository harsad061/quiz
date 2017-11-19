-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 19, 2017 at 02:51 PM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `quizdb`
--
CREATE DATABASE `quizdb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `quizdb`;

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE IF NOT EXISTS `answer` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `answer` varchar(255) NOT NULL,
  `question_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKABCA3FBEE4F62393` (`question_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`id`, `version`, `answer`, `question_id`) VALUES
(1, 0, 'Floppy Disk', 6),
(2, 0, 'Bubble Memories', 6),
(3, 0, 'CD–ROM', 6),
(4, 0, 'Core Memories', 6),
(5, 0, 'Data Number Sequence', 7),
(6, 0, 'Digital Network Service', 7),
(7, 0, 'Domain Name System', 7),
(8, 0, 'Disk Numbering System', 7),
(9, 0, 'Oracle', 8),
(10, 0, 'Microsoft', 8),
(11, 0, 'Novell', 8),
(12, 0, 'Sun', 8),
(13, 0, 'Abacus', 9),
(14, 0, 'Analytical Engine', 9),
(15, 0, 'Calculator', 9),
(16, 0, 'Processor', 9),
(17, 0, 'Super–micro', 10),
(18, 0, 'Super conductor', 10),
(19, 0, 'Super computer', 10),
(20, 0, 'Megaframe', 10),
(21, 0, 'FTP', 11),
(22, 0, 'HTTP', 11),
(23, 0, 'HTML', 11),
(24, 0, 'URL', 11);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `roll` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `version`, `password`, `roll`, `status`, `username`) VALUES
(1, 0, 'jenish', 'admin', '1', 'jenish'),
(2, 0, 'raya', 'admin', '1', 'raya'),
(3, 8, 'test', 'student', '1', 'test'),
(4, 0, '1', 'admin', '0', 'manish');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE IF NOT EXISTS `question` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `answer` int(255) NOT NULL,
  `question` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `version`, `answer`, `question`) VALUES
(6, 1, 3, 'Which of the following memories is an optical memory'),
(7, 1, 6, 'DNS refers to'),
(8, 1, 12, 'Java was originally invented by'),
(9, 1, 14, 'The first mechanical computer designed by Charles Babbage was called'),
(10, 1, 19, 'Which of the following is the most powerful type of computer'),
(11, 1, 23, 'Web pages are written using');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answer`
--
ALTER TABLE `answer`
  ADD CONSTRAINT `FKABCA3FBEE4F62393` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`);
