-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Sep 13, 2020 at 05:09 AM
-- Server version: 8.0.18
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mychar`
--

-- --------------------------------------------------------

--
-- Table structure for table `friends`
--

DROP TABLE IF EXISTS `friends`;
CREATE TABLE IF NOT EXISTS `friends` (
  `FrndShpID` int(4) NOT NULL,
  `PersonOne` int(4) NOT NULL,
  `PersonTwo` int(4) NOT NULL,
  `FrndFlag` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`FrndShpID`),
  KEY `PersonOne` (`PersonOne`),
  KEY `PersonTwo` (`PersonTwo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `groupmessages`
--

DROP TABLE IF EXISTS `groupmessages`;
CREATE TABLE IF NOT EXISTS `groupmessages` (
  `GrpMsgID` int(4) NOT NULL,
  `SendersID` int(4) NOT NULL,
  `ReceivingMembers` varchar(255) NOT NULL,
  `Content` varchar(255) NOT NULL,
  `TimeSent` timestamp NULL DEFAULT NULL,
  `Delivered` tinyint(1) DEFAULT '0',
  `DltAll` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`GrpMsgID`),
  KEY `SendersID` (`SendersID`),
  KEY `ReceivingMembers` (`ReceivingMembers`(250))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `groupstable`
--

DROP TABLE IF EXISTS `groupstable`;
CREATE TABLE IF NOT EXISTS `groupstable` (
  `GroupID` int(4) NOT NULL,
  `GroupName` varchar(20) DEFAULT NULL,
  `GroupMembers` varchar(255) DEFAULT NULL,
  `TotMembers` int(4) NOT NULL,
  `TotMsgs` int(4) DEFAULT '0',
  PRIMARY KEY (`GroupID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
CREATE TABLE IF NOT EXISTS `messages` (
  `MsgID` int(4) NOT NULL,
  `SendersID` int(4) NOT NULL,
  `ReceiversID` int(4) NOT NULL,
  `Content` varchar(255) NOT NULL,
  `TimeWhenSent` timestamp NULL DEFAULT NULL,
  `Delivered` tinyint(1) DEFAULT '0',
  `DltAll` tinyint(1) DEFAULT '0',
  `DltSndr` tinyint(1) DEFAULT '0',
  `DltRcvr` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`MsgID`),
  KEY `SendersID` (`SendersID`),
  KEY `ReceiversID` (`ReceiversID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `UserID` int(4) NOT NULL,
  `FirstName` varchar(30) DEFAULT NULL,
  `LastName` varchar(30) DEFAULT NULL,
  `emailID` varchar(30) NOT NULL,
  `MailPassword` varchar(30) NOT NULL,
  `DateOfBirth` date DEFAULT NULL,
  `ProfilePic` varchar(30) DEFAULT NULL,
  `TotMsgSnt` int(4) DEFAULT '0',
  `TotMsgRcvd` int(4) DEFAULT '0',
  PRIMARY KEY (`UserID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
