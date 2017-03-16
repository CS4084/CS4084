-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 16, 2017 at 12:24 PM
-- Server version: 10.1.20-MariaDB
-- PHP Version: 5.6.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `group20`
--

-- --------------------------------------------------------

--
-- Table structure for table `subject_streams`
--

CREATE TABLE `subject_streams` (
  `userId` mediumint(9) NOT NULL,
  `subjectStream` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `tag` text NOT NULL,
  `tagId` mediumint(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `taskId` varchar(32) NOT NULL,
  `userId` mediumint(9) NOT NULL,
  `taskTitle` varchar(32) NOT NULL,
  `taskType` varchar(32) NOT NULL,
  `taskDesc` varchar(32) NOT NULL,
  `taskSubject` varchar(32) NOT NULL,
  `pageCount` mediumint(9) NOT NULL,
  `wordCount` mediumint(9) NOT NULL,
  `taskTags` varchar(32) NOT NULL,
  `taskClaimDeadline` date NOT NULL,
  `taskCompletionDeadline` date NOT NULL,
  `samplePic1` varchar(255) NOT NULL,
  `samplePic2` varchar(255) NOT NULL,
  `samplePic3` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `task_claimed`
--

CREATE TABLE `task_claimed` (
  `taskId` mediumint(9) NOT NULL,
  `userId` mediumint(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `task_completed`
--

CREATE TABLE `task_completed` (
  `taskId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `feedback` tinyint(1) NOT NULL,
  `review` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `task_flagged`
--

CREATE TABLE `task_flagged` (
  `taskId` int(11) NOT NULL,
  `userId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `task_tags`
--

CREATE TABLE `task_tags` (
  `taskId` mediumint(9) NOT NULL,
  `tagId` mediumint(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `unpublished_tasks`
--

CREATE TABLE `unpublished_tasks` (
  `taskId` mediumint(9) NOT NULL,
  `userId` mediumint(9) NOT NULL,
  `moderatorId` mediumint(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userId` mediumint(9) NOT NULL,
  `firstName` varchar(32) NOT NULL,
  `lastName` varchar(32) NOT NULL,
  `studentId` mediumint(9) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(32) NOT NULL,
  `repScore` mediumint(9) NOT NULL,
  `dateJoined` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `user_banned`
--

CREATE TABLE `user_banned` (
  `moderatorId` mediumint(9) NOT NULL,
  `bannedUserId` mediumint(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_favourite_tags`
--

CREATE TABLE `user_favourite_tags` (
  `userId` mediumint(9) NOT NULL,
  `tagId` mediumint(9) NOT NULL,
  `viewCount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_subscribed_tags`
--

CREATE TABLE `user_subscribed_tags` (
  `userId` mediumint(9) NOT NULL,
  `tagId` mediumint(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`),
  ADD UNIQUE KEY `userId` (`userId`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user_banned`
--
ALTER TABLE `user_banned`
  ADD PRIMARY KEY (`bannedUserId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userId` mediumint(9) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
