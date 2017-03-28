-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 28, 2017 at 10:35 AM
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
-- Table structure for table `file_paths`
--

CREATE TABLE `file_paths` (
  `taskId` mediumint(9) NOT NULL,
  `filePath` varchar(255) NOT NULL,
  `sampleFilePath` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `file_paths`
--

INSERT INTO `file_paths` (`taskId`, `filePath`, `sampleFilePath`) VALUES
(1, 'uploads/tasks/1/group20.sql', ''),
(2, 'uploads/tasks/2/group20.sql', ''),
(3, 'uploads/tasks/3/', ''),
(4, 'uploads/tasks/4/', ''),
(6, 'uploads/tasks/6/Design Deliverable.docx', 'uploads/tasks/6/sample/Database Tables 2-2.docx'),
(7, 'uploads/tasks/7/Database Tables 2-2.docx', 'uploads/tasks/7/sample/Design Deliverable.docx'),
(8, 'uploads/tasks/8/Database Tables 2-2.docx', 'uploads/tasks/8/sample/Design Deliverable.docx'),
(9, 'uploads/tasks/9/Database Tables 2-2.docx', 'uploads/tasks/9/sample/Design Deliverable.docx'),
(10, 'uploads/tasks/10/Design Deliverable.docx', 'uploads/tasks/10/sample/Database Tables 2-2.docx'),
(11, 'uploads/tasks/11/20170130-0340_CS4416_-_Tutorial_1.pdf', 'uploads/tasks/11/sample/20170130-0340_CS4416_-_Tutorial_1.pdf'),
(12, 'uploads/tasks/12/Design Deliverable.docx', 'uploads/tasks/12/sample/Database Tables 2-2.docx');

-- --------------------------------------------------------

--
-- Table structure for table `subject_streams`
--

CREATE TABLE `subject_streams` (
  `userId` mediumint(9) NOT NULL,
  `subjectStream` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `subject_streams`
--

INSERT INTO `subject_streams` (`userId`, `subjectStream`) VALUES
(1, 'Computer Science'),
(5, 'Computer Systems');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `tag` text NOT NULL,
  `tagId` mediumint(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`tag`, `tagId`) VALUES
('html', 2),
('css', 3),
('php', 4),
('PHP', 6),
('SQL', 7),
('HTML', 8),
('PHP', 9),
('SQL', 10),
('project', 11),
('cs4014', 12),
('java', 13),
('android', 14);

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `taskId` mediumint(9) NOT NULL,
  `userId` mediumint(9) NOT NULL,
  `taskTitle` varchar(32) NOT NULL,
  `taskDate` date NOT NULL,
  `taskType` varchar(32) NOT NULL,
  `taskDesc` text NOT NULL,
  `taskSubject` varchar(32) NOT NULL,
  `pageCount` mediumint(9) NOT NULL,
  `wordCount` mediumint(9) NOT NULL,
  `taskClaimDeadline` date NOT NULL,
  `taskCompletionDeadline` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`taskId`, `userId`, `taskTitle`, `taskDate`, `taskType`, `taskDesc`, `taskSubject`, `pageCount`, `wordCount`, `taskClaimDeadline`, `taskCompletionDeadline`) VALUES
(1, 5, 'MA-4410', '2017-03-23', 'sfdsdf', 'Maths', 'Education and Health Sciences', 100, 100, '2017-03-24', '2017-03-31'),
(2, 5, 'CS-4012', '2017-03-23', '', 'Representation and modelling', 'Education and Health Sciences', 100, 200, '2017-03-24', '2017-03-31'),
(3, 7, 'CS-4027', '2017-03-27', 'Project', 'Information and computer knowledge retrieval', 'Science and Engineering', 100, 10000, '2017-03-29', '2017-04-05'),
(4, 7, 'CS4014 Project', '2017-03-27', 'Project', 'Design and create a functional website', 'Science and Engineering', 100, 10000, '2017-03-29', '2017-04-05'),
(5, 7, 'CS-4051', '2017-03-27', 'Project', 'Medical support systems', 'Education and Health Sciences', 100, 10000, '2017-03-29', '2017-04-05'),
(6, 5, 'Web Project', '2017-03-27', 'Project', 'Cs4014 Web project', 'Science and Engineering', 10, 100, '2017-03-30', '2017-04-02'),
(7, 5, 'CS-4052', '2017-03-27', 'thrth', 'Interaction Design', 'Education and Health Sciences', 100, 100, '2017-03-30', '2017-04-02'),
(8, 5, 'CS-2911', '2017-03-27', 'thrth', 'Introduction to IT', 'Education and Health Sciences', 100, 100, '2017-03-30', '2017-04-02'),
(9, 5, 'CS-4061', '2017-03-27', 'thrth', 'Media Programming', 'Education and Health Sciences', 100, 100, '2017-03-30', '2017-04-02'),
(10, 5, 'CS-4031', '2017-03-27', 'gfhfgh', 'Introduction to digital media', 'Education and Health Sciences', 10, 100, '2017-03-30', '2017-04-02'),
(11, 7, 'testing', '2017-03-27', 'project', 'software testing', 'Science and Engineering', 5, 500, '2017-05-05', '2017-06-07'),
(12, 11, 'CS4084 App Development Project', '2017-03-27', 'Project', 'Create an android app.', 'Science and Engineering', 10, 1000, '2017-03-31', '2017-04-02');

-- --------------------------------------------------------

--
-- Table structure for table `task_claimed`
--

CREATE TABLE `task_claimed` (
  `taskId` mediumint(9) NOT NULL,
  `userId` mediumint(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `task_claimed`
--

INSERT INTO `task_claimed` (`taskId`, `userId`) VALUES
(1, 5);

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

--
-- Dumping data for table `task_tags`
--

INSERT INTO `task_tags` (`taskId`, `tagId`) VALUES
(5, 2),
(5, 4),
(5, 7),
(6, 2),
(6, 11),
(6, 12),
(7, 13),
(8, 13),
(9, 13),
(10, 3),
(10, 4),
(10, 13),
(11, 3),
(11, 4),
(11, 13),
(12, 13),
(12, 14);

-- --------------------------------------------------------

--
-- Table structure for table `unpublished_tasks`
--

CREATE TABLE `unpublished_tasks` (
  `taskId` mediumint(9) NOT NULL,
  `userId` mediumint(9) NOT NULL,
  `moderatorId` mediumint(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `unpublished_tasks`
--

INSERT INTO `unpublished_tasks` (`taskId`, `userId`, `moderatorId`) VALUES
(12, 11, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userId` mediumint(9) NOT NULL,
  `firstName` varchar(32) NOT NULL,
  `lastName` varchar(32) NOT NULL,
  `studentId` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `repScore` mediumint(9) NOT NULL DEFAULT '0',
  `dateJoined` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `firstName`, `lastName`, `studentId`, `email`, `password`, `repScore`, `dateJoined`) VALUES
(11, 'Colm', 'Le Gear', 15148823, '15148823@studentmail.ul.ie', '8bb0cf6eb9b17d0f7d22b456f121257dc1254e1f01665370476383ea776df414', 0, '2017-03-27'),
(13, 'ryan', 'harris', 13150154, '13150154@studentmail.ul.ie', 'a0e64640593ea157387b9fccccc7a31e54e9ecc382381011c8a1b9bbf2e958c5', 0, '2017-03-27'),
(15, 'Liam', 'Horgan', 14164736, '14164736@studentmail.ul.ie', '67c71e1abdad9713c147b2c36d12f2af2e36e63a4c02602a6d35c747967b838b', 0, '2017-03-27');

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
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`tagId`);

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`taskId`);

--
-- Indexes for table `task_claimed`
--
ALTER TABLE `task_claimed`
  ADD UNIQUE KEY `taskId` (`taskId`);

--
-- Indexes for table `task_completed`
--
ALTER TABLE `task_completed`
  ADD UNIQUE KEY `taskId` (`taskId`);

--
-- Indexes for table `task_flagged`
--
ALTER TABLE `task_flagged`
  ADD UNIQUE KEY `taskId` (`taskId`);

--
-- Indexes for table `unpublished_tasks`
--
ALTER TABLE `unpublished_tasks`
  ADD UNIQUE KEY `taskId` (`taskId`);

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
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `tagId` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
  MODIFY `taskId` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userId` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
